; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/CactusBindings/BenchADM_FortranWrapper.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.cGH = type { i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, double, double*, double*, i32*, i32*, i32, i32*, double, i8***, i8**, %struct.cGHGroupData* }
%struct.cGHGroupData = type { i8, i8 }

@CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_ADM_gxx = internal unnamed_addr global i32 -1, align 4
@CCTKi_BindingsFortranWrapperBenchADM.CCTKGROUPNUM_ADM_metric_prev = internal unnamed_addr global i32 -1, align 4
@CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_ADM_gxy = internal unnamed_addr global i32 -1, align 4
@CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_ADM_gxz = internal unnamed_addr global i32 -1, align 4
@CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_ADM_gyy = internal unnamed_addr global i32 -1, align 4
@CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_ADM_gyz = internal unnamed_addr global i32 -1, align 4
@CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_ADM_gzz = internal unnamed_addr global i32 -1, align 4
@CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_ADM_kxx_stag = internal unnamed_addr global i32 -1, align 4
@CCTKi_BindingsFortranWrapperBenchADM.CCTKGROUPNUM_ADM_curv_stag = internal unnamed_addr global i32 -1, align 4
@CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_ADM_kxy_stag = internal unnamed_addr global i32 -1, align 4
@CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_ADM_kxz_stag = internal unnamed_addr global i32 -1, align 4
@CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_ADM_kyy_stag = internal unnamed_addr global i32 -1, align 4
@CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_ADM_kyz_stag = internal unnamed_addr global i32 -1, align 4
@CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_ADM_kzz_stag = internal unnamed_addr global i32 -1, align 4
@CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_adms_gxx = internal unnamed_addr global i32 -1, align 4
@CCTKi_BindingsFortranWrapperBenchADM.CCTKGROUPNUM_ADM_sources = internal unnamed_addr global i32 -1, align 4
@CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_adms_gxy = internal unnamed_addr global i32 -1, align 4
@CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_adms_gxz = internal unnamed_addr global i32 -1, align 4
@CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_adms_gyy = internal unnamed_addr global i32 -1, align 4
@CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_adms_gyz = internal unnamed_addr global i32 -1, align 4
@CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_adms_gzz = internal unnamed_addr global i32 -1, align 4
@CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_adms_kxx = internal unnamed_addr global i32 -1, align 4
@CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_adms_kxy = internal unnamed_addr global i32 -1, align 4
@CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_adms_kxz = internal unnamed_addr global i32 -1, align 4
@CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_adms_kyy = internal unnamed_addr global i32 -1, align 4
@CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_adms_kyz = internal unnamed_addr global i32 -1, align 4
@CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_adms_kzz = internal unnamed_addr global i32 -1, align 4
@CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_active_slicing_handle = internal unnamed_addr global i32 -1, align 4
@CCTKi_BindingsFortranWrapperBenchADM.CCTKGROUPNUM_slicing_flags = internal unnamed_addr global i32 -1, align 4
@CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_alp = internal unnamed_addr global i32 -1, align 4
@CCTKi_BindingsFortranWrapperBenchADM.CCTKGROUPNUM_lapse = internal unnamed_addr global i32 -1, align 4
@CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_betax = internal unnamed_addr global i32 -1, align 4
@CCTKi_BindingsFortranWrapperBenchADM.CCTKGROUPNUM_shift = internal unnamed_addr global i32 -1, align 4
@CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_betay = internal unnamed_addr global i32 -1, align 4
@CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_betaz = internal unnamed_addr global i32 -1, align 4
@CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_coarse_dx = internal unnamed_addr global i32 -1, align 4
@CCTKi_BindingsFortranWrapperBenchADM.CCTKGROUPNUM_gridspacings = internal unnamed_addr global i32 -1, align 4
@CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_coarse_dy = internal unnamed_addr global i32 -1, align 4
@CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_coarse_dz = internal unnamed_addr global i32 -1, align 4
@CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_conformal_state = internal unnamed_addr global i32 -1, align 4
@CCTKi_BindingsFortranWrapperBenchADM.CCTKGROUPNUM_flags = internal unnamed_addr global i32 -1, align 4
@CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_courant_min_time = internal unnamed_addr global i32 -1, align 4
@CCTKi_BindingsFortranWrapperBenchADM.CCTKGROUPNUM_speedvars = internal unnamed_addr global i32 -1, align 4
@CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_courant_wave_speed = internal unnamed_addr global i32 -1, align 4
@CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_emask = internal unnamed_addr global i32 -1, align 4
@CCTKi_BindingsFortranWrapperBenchADM.CCTKGROUPNUM_mask = internal unnamed_addr global i32 -1, align 4
@CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_gxx = internal unnamed_addr global i32 -1, align 4
@CCTKi_BindingsFortranWrapperBenchADM.CCTKGROUPNUM_metric = internal unnamed_addr global i32 -1, align 4
@CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_gxy = internal unnamed_addr global i32 -1, align 4
@CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_gxz = internal unnamed_addr global i32 -1, align 4
@CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_gyy = internal unnamed_addr global i32 -1, align 4
@CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_gyz = internal unnamed_addr global i32 -1, align 4
@CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_gzz = internal unnamed_addr global i32 -1, align 4
@CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_kxx = internal unnamed_addr global i32 -1, align 4
@CCTKi_BindingsFortranWrapperBenchADM.CCTKGROUPNUM_curv = internal unnamed_addr global i32 -1, align 4
@CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_kxy = internal unnamed_addr global i32 -1, align 4
@CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_kxz = internal unnamed_addr global i32 -1, align 4
@CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_kyy = internal unnamed_addr global i32 -1, align 4
@CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_kyz = internal unnamed_addr global i32 -1, align 4
@CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_kzz = internal unnamed_addr global i32 -1, align 4
@CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_psi = internal unnamed_addr global i32 -1, align 4
@CCTKi_BindingsFortranWrapperBenchADM.CCTKGROUPNUM_confac = internal unnamed_addr global i32 -1, align 4
@CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_psix = internal unnamed_addr global i32 -1, align 4
@CCTKi_BindingsFortranWrapperBenchADM.CCTKGROUPNUM_confac_1derivs = internal unnamed_addr global i32 -1, align 4
@CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_psixx = internal unnamed_addr global i32 -1, align 4
@CCTKi_BindingsFortranWrapperBenchADM.CCTKGROUPNUM_confac_2derivs = internal unnamed_addr global i32 -1, align 4
@CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_psixy = internal unnamed_addr global i32 -1, align 4
@CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_psixz = internal unnamed_addr global i32 -1, align 4
@CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_psiy = internal unnamed_addr global i32 -1, align 4
@CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_psiyy = internal unnamed_addr global i32 -1, align 4
@CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_psiyz = internal unnamed_addr global i32 -1, align 4
@CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_psiz = internal unnamed_addr global i32 -1, align 4
@CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_psizz = internal unnamed_addr global i32 -1, align 4
@CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_r = internal unnamed_addr global i32 -1, align 4
@CCTKi_BindingsFortranWrapperBenchADM.CCTKGROUPNUM_coordinates = internal unnamed_addr global i32 -1, align 4
@CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_shift_state = internal unnamed_addr global i32 -1, align 4
@CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_x = internal unnamed_addr global i32 -1, align 4
@CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_y = internal unnamed_addr global i32 -1, align 4
@CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_z = internal unnamed_addr global i32 -1, align 4
@.str = private unnamed_addr constant [18 x i8] c"BenchADM::ADM_gxx\00", align 1
@.str1 = private unnamed_addr constant [26 x i8] c"BenchADM::ADM_metric_prev\00", align 1
@.str2 = private unnamed_addr constant [18 x i8] c"BenchADM::ADM_gxy\00", align 1
@.str3 = private unnamed_addr constant [18 x i8] c"BenchADM::ADM_gxz\00", align 1
@.str4 = private unnamed_addr constant [18 x i8] c"BenchADM::ADM_gyy\00", align 1
@.str5 = private unnamed_addr constant [18 x i8] c"BenchADM::ADM_gyz\00", align 1
@.str6 = private unnamed_addr constant [18 x i8] c"BenchADM::ADM_gzz\00", align 1
@.str7 = private unnamed_addr constant [23 x i8] c"BenchADM::ADM_kxx_stag\00", align 1
@.str8 = private unnamed_addr constant [24 x i8] c"BenchADM::ADM_curv_stag\00", align 1
@.str9 = private unnamed_addr constant [23 x i8] c"BenchADM::ADM_kxy_stag\00", align 1
@.str10 = private unnamed_addr constant [23 x i8] c"BenchADM::ADM_kxz_stag\00", align 1
@.str11 = private unnamed_addr constant [23 x i8] c"BenchADM::ADM_kyy_stag\00", align 1
@.str12 = private unnamed_addr constant [23 x i8] c"BenchADM::ADM_kyz_stag\00", align 1
@.str13 = private unnamed_addr constant [23 x i8] c"BenchADM::ADM_kzz_stag\00", align 1
@.str14 = private unnamed_addr constant [19 x i8] c"BenchADM::adms_gxx\00", align 1
@.str15 = private unnamed_addr constant [22 x i8] c"BenchADM::ADM_sources\00", align 1
@.str16 = private unnamed_addr constant [19 x i8] c"BenchADM::adms_gxy\00", align 1
@.str17 = private unnamed_addr constant [19 x i8] c"BenchADM::adms_gxz\00", align 1
@.str18 = private unnamed_addr constant [19 x i8] c"BenchADM::adms_gyy\00", align 1
@.str19 = private unnamed_addr constant [19 x i8] c"BenchADM::adms_gyz\00", align 1
@.str20 = private unnamed_addr constant [19 x i8] c"BenchADM::adms_gzz\00", align 1
@.str21 = private unnamed_addr constant [19 x i8] c"BenchADM::adms_kxx\00", align 1
@.str22 = private unnamed_addr constant [19 x i8] c"BenchADM::adms_kxy\00", align 1
@.str23 = private unnamed_addr constant [19 x i8] c"BenchADM::adms_kxz\00", align 1
@.str24 = private unnamed_addr constant [19 x i8] c"BenchADM::adms_kyy\00", align 1
@.str25 = private unnamed_addr constant [19 x i8] c"BenchADM::adms_kyz\00", align 1
@.str26 = private unnamed_addr constant [19 x i8] c"BenchADM::adms_kzz\00", align 1
@.str27 = private unnamed_addr constant [32 x i8] c"EINSTEIN::active_slicing_handle\00", align 1
@.str28 = private unnamed_addr constant [24 x i8] c"EINSTEIN::slicing_flags\00", align 1
@.str29 = private unnamed_addr constant [14 x i8] c"EINSTEIN::alp\00", align 1
@.str30 = private unnamed_addr constant [16 x i8] c"EINSTEIN::lapse\00", align 1
@.str31 = private unnamed_addr constant [16 x i8] c"EINSTEIN::betax\00", align 1
@.str32 = private unnamed_addr constant [16 x i8] c"EINSTEIN::shift\00", align 1
@.str33 = private unnamed_addr constant [16 x i8] c"EINSTEIN::betay\00", align 1
@.str34 = private unnamed_addr constant [16 x i8] c"EINSTEIN::betaz\00", align 1
@.str35 = private unnamed_addr constant [16 x i8] c"GRID::coarse_dx\00", align 1
@.str36 = private unnamed_addr constant [19 x i8] c"GRID::gridspacings\00", align 1
@.str37 = private unnamed_addr constant [16 x i8] c"GRID::coarse_dy\00", align 1
@.str38 = private unnamed_addr constant [16 x i8] c"GRID::coarse_dz\00", align 1
@.str39 = private unnamed_addr constant [26 x i8] c"EINSTEIN::conformal_state\00", align 1
@.str40 = private unnamed_addr constant [16 x i8] c"EINSTEIN::flags\00", align 1
@.str41 = private unnamed_addr constant [23 x i8] c"TIME::courant_min_time\00", align 1
@.str42 = private unnamed_addr constant [16 x i8] c"TIME::speedvars\00", align 1
@.str43 = private unnamed_addr constant [25 x i8] c"TIME::courant_wave_speed\00", align 1
@.str44 = private unnamed_addr constant [16 x i8] c"EINSTEIN::emask\00", align 1
@.str45 = private unnamed_addr constant [15 x i8] c"EINSTEIN::mask\00", align 1
@.str46 = private unnamed_addr constant [14 x i8] c"EINSTEIN::gxx\00", align 1
@.str47 = private unnamed_addr constant [17 x i8] c"EINSTEIN::metric\00", align 1
@.str48 = private unnamed_addr constant [14 x i8] c"EINSTEIN::gxy\00", align 1
@.str49 = private unnamed_addr constant [14 x i8] c"EINSTEIN::gxz\00", align 1
@.str50 = private unnamed_addr constant [14 x i8] c"EINSTEIN::gyy\00", align 1
@.str51 = private unnamed_addr constant [14 x i8] c"EINSTEIN::gyz\00", align 1
@.str52 = private unnamed_addr constant [14 x i8] c"EINSTEIN::gzz\00", align 1
@.str53 = private unnamed_addr constant [14 x i8] c"EINSTEIN::kxx\00", align 1
@.str54 = private unnamed_addr constant [15 x i8] c"EINSTEIN::curv\00", align 1
@.str55 = private unnamed_addr constant [14 x i8] c"EINSTEIN::kxy\00", align 1
@.str56 = private unnamed_addr constant [14 x i8] c"EINSTEIN::kxz\00", align 1
@.str57 = private unnamed_addr constant [14 x i8] c"EINSTEIN::kyy\00", align 1
@.str58 = private unnamed_addr constant [14 x i8] c"EINSTEIN::kyz\00", align 1
@.str59 = private unnamed_addr constant [14 x i8] c"EINSTEIN::kzz\00", align 1
@.str60 = private unnamed_addr constant [14 x i8] c"EINSTEIN::psi\00", align 1
@.str61 = private unnamed_addr constant [17 x i8] c"EINSTEIN::confac\00", align 1
@.str62 = private unnamed_addr constant [15 x i8] c"EINSTEIN::psix\00", align 1
@.str63 = private unnamed_addr constant [25 x i8] c"EINSTEIN::confac_1derivs\00", align 1
@.str64 = private unnamed_addr constant [16 x i8] c"EINSTEIN::psixx\00", align 1
@.str65 = private unnamed_addr constant [25 x i8] c"EINSTEIN::confac_2derivs\00", align 1
@.str66 = private unnamed_addr constant [16 x i8] c"EINSTEIN::psixy\00", align 1
@.str67 = private unnamed_addr constant [16 x i8] c"EINSTEIN::psixz\00", align 1
@.str68 = private unnamed_addr constant [15 x i8] c"EINSTEIN::psiy\00", align 1
@.str69 = private unnamed_addr constant [16 x i8] c"EINSTEIN::psiyy\00", align 1
@.str70 = private unnamed_addr constant [16 x i8] c"EINSTEIN::psiyz\00", align 1
@.str71 = private unnamed_addr constant [15 x i8] c"EINSTEIN::psiz\00", align 1
@.str72 = private unnamed_addr constant [16 x i8] c"EINSTEIN::psizz\00", align 1
@.str73 = private unnamed_addr constant [8 x i8] c"GRID::r\00", align 1
@.str74 = private unnamed_addr constant [18 x i8] c"GRID::coordinates\00", align 1
@.str75 = private unnamed_addr constant [22 x i8] c"EINSTEIN::shift_state\00", align 1
@.str76 = private unnamed_addr constant [8 x i8] c"GRID::x\00", align 1
@.str77 = private unnamed_addr constant [8 x i8] c"GRID::y\00", align 1
@.str78 = private unnamed_addr constant [8 x i8] c"GRID::z\00", align 1
@_cctk_one = external global i32

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTKi_BindingsFortranWrapperBenchADM(%struct.cGH* %GH, i8* nocapture %fpointer) #0 {
  %1 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_ADM_gxx, align 4, !tbaa !2
  %2 = icmp eq i32 %1, -1
  br i1 %2, label %3, label %5

; <label>:3                                       ; preds = %0
  %4 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([18 x i8]* @.str, i64 0, i64 0)) #2
  store i32 %4, i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_ADM_gxx, align 4, !tbaa !2
  br label %5

; <label>:5                                       ; preds = %3, %0
  %6 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKGROUPNUM_ADM_metric_prev, align 4, !tbaa !2
  %7 = icmp eq i32 %6, -1
  br i1 %7, label %8, label %10

; <label>:8                                       ; preds = %5
  %9 = tail call i32 @CCTK_GroupIndex(i8* getelementptr inbounds ([26 x i8]* @.str1, i64 0, i64 0)) #2
  store i32 %9, i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKGROUPNUM_ADM_metric_prev, align 4, !tbaa !2
  br label %10

; <label>:10                                      ; preds = %8, %5
  %11 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_ADM_gxy, align 4, !tbaa !2
  %12 = icmp eq i32 %11, -1
  br i1 %12, label %13, label %15

; <label>:13                                      ; preds = %10
  %14 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([18 x i8]* @.str2, i64 0, i64 0)) #2
  store i32 %14, i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_ADM_gxy, align 4, !tbaa !2
  br label %15

; <label>:15                                      ; preds = %13, %10
  %16 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_ADM_gxz, align 4, !tbaa !2
  %17 = icmp eq i32 %16, -1
  br i1 %17, label %18, label %20

; <label>:18                                      ; preds = %15
  %19 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([18 x i8]* @.str3, i64 0, i64 0)) #2
  store i32 %19, i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_ADM_gxz, align 4, !tbaa !2
  br label %20

; <label>:20                                      ; preds = %18, %15
  %21 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_ADM_gyy, align 4, !tbaa !2
  %22 = icmp eq i32 %21, -1
  br i1 %22, label %23, label %25

; <label>:23                                      ; preds = %20
  %24 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([18 x i8]* @.str4, i64 0, i64 0)) #2
  store i32 %24, i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_ADM_gyy, align 4, !tbaa !2
  br label %25

; <label>:25                                      ; preds = %23, %20
  %26 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_ADM_gyz, align 4, !tbaa !2
  %27 = icmp eq i32 %26, -1
  br i1 %27, label %28, label %30

; <label>:28                                      ; preds = %25
  %29 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([18 x i8]* @.str5, i64 0, i64 0)) #2
  store i32 %29, i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_ADM_gyz, align 4, !tbaa !2
  br label %30

; <label>:30                                      ; preds = %28, %25
  %31 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_ADM_gzz, align 4, !tbaa !2
  %32 = icmp eq i32 %31, -1
  br i1 %32, label %33, label %35

; <label>:33                                      ; preds = %30
  %34 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([18 x i8]* @.str6, i64 0, i64 0)) #2
  store i32 %34, i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_ADM_gzz, align 4, !tbaa !2
  br label %35

; <label>:35                                      ; preds = %33, %30
  %36 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_ADM_kxx_stag, align 4, !tbaa !2
  %37 = icmp eq i32 %36, -1
  br i1 %37, label %38, label %40

; <label>:38                                      ; preds = %35
  %39 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([23 x i8]* @.str7, i64 0, i64 0)) #2
  store i32 %39, i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_ADM_kxx_stag, align 4, !tbaa !2
  br label %40

; <label>:40                                      ; preds = %38, %35
  %41 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKGROUPNUM_ADM_curv_stag, align 4, !tbaa !2
  %42 = icmp eq i32 %41, -1
  br i1 %42, label %43, label %45

; <label>:43                                      ; preds = %40
  %44 = tail call i32 @CCTK_GroupIndex(i8* getelementptr inbounds ([24 x i8]* @.str8, i64 0, i64 0)) #2
  store i32 %44, i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKGROUPNUM_ADM_curv_stag, align 4, !tbaa !2
  br label %45

; <label>:45                                      ; preds = %43, %40
  %46 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_ADM_kxy_stag, align 4, !tbaa !2
  %47 = icmp eq i32 %46, -1
  br i1 %47, label %48, label %50

; <label>:48                                      ; preds = %45
  %49 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([23 x i8]* @.str9, i64 0, i64 0)) #2
  store i32 %49, i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_ADM_kxy_stag, align 4, !tbaa !2
  br label %50

; <label>:50                                      ; preds = %48, %45
  %51 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_ADM_kxz_stag, align 4, !tbaa !2
  %52 = icmp eq i32 %51, -1
  br i1 %52, label %53, label %55

; <label>:53                                      ; preds = %50
  %54 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([23 x i8]* @.str10, i64 0, i64 0)) #2
  store i32 %54, i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_ADM_kxz_stag, align 4, !tbaa !2
  br label %55

; <label>:55                                      ; preds = %53, %50
  %56 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_ADM_kyy_stag, align 4, !tbaa !2
  %57 = icmp eq i32 %56, -1
  br i1 %57, label %58, label %60

; <label>:58                                      ; preds = %55
  %59 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([23 x i8]* @.str11, i64 0, i64 0)) #2
  store i32 %59, i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_ADM_kyy_stag, align 4, !tbaa !2
  br label %60

; <label>:60                                      ; preds = %58, %55
  %61 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_ADM_kyz_stag, align 4, !tbaa !2
  %62 = icmp eq i32 %61, -1
  br i1 %62, label %63, label %65

; <label>:63                                      ; preds = %60
  %64 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([23 x i8]* @.str12, i64 0, i64 0)) #2
  store i32 %64, i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_ADM_kyz_stag, align 4, !tbaa !2
  br label %65

; <label>:65                                      ; preds = %63, %60
  %66 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_ADM_kzz_stag, align 4, !tbaa !2
  %67 = icmp eq i32 %66, -1
  br i1 %67, label %68, label %70

; <label>:68                                      ; preds = %65
  %69 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([23 x i8]* @.str13, i64 0, i64 0)) #2
  store i32 %69, i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_ADM_kzz_stag, align 4, !tbaa !2
  br label %70

; <label>:70                                      ; preds = %68, %65
  %71 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_adms_gxx, align 4, !tbaa !2
  %72 = icmp eq i32 %71, -1
  br i1 %72, label %73, label %75

; <label>:73                                      ; preds = %70
  %74 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([19 x i8]* @.str14, i64 0, i64 0)) #2
  store i32 %74, i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_adms_gxx, align 4, !tbaa !2
  br label %75

; <label>:75                                      ; preds = %73, %70
  %76 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKGROUPNUM_ADM_sources, align 4, !tbaa !2
  %77 = icmp eq i32 %76, -1
  br i1 %77, label %78, label %80

; <label>:78                                      ; preds = %75
  %79 = tail call i32 @CCTK_GroupIndex(i8* getelementptr inbounds ([22 x i8]* @.str15, i64 0, i64 0)) #2
  store i32 %79, i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKGROUPNUM_ADM_sources, align 4, !tbaa !2
  br label %80

; <label>:80                                      ; preds = %78, %75
  %81 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_adms_gxy, align 4, !tbaa !2
  %82 = icmp eq i32 %81, -1
  br i1 %82, label %83, label %85

; <label>:83                                      ; preds = %80
  %84 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([19 x i8]* @.str16, i64 0, i64 0)) #2
  store i32 %84, i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_adms_gxy, align 4, !tbaa !2
  br label %85

; <label>:85                                      ; preds = %83, %80
  %86 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_adms_gxz, align 4, !tbaa !2
  %87 = icmp eq i32 %86, -1
  br i1 %87, label %88, label %90

; <label>:88                                      ; preds = %85
  %89 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([19 x i8]* @.str17, i64 0, i64 0)) #2
  store i32 %89, i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_adms_gxz, align 4, !tbaa !2
  br label %90

; <label>:90                                      ; preds = %88, %85
  %91 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_adms_gyy, align 4, !tbaa !2
  %92 = icmp eq i32 %91, -1
  br i1 %92, label %93, label %95

; <label>:93                                      ; preds = %90
  %94 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([19 x i8]* @.str18, i64 0, i64 0)) #2
  store i32 %94, i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_adms_gyy, align 4, !tbaa !2
  br label %95

; <label>:95                                      ; preds = %93, %90
  %96 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_adms_gyz, align 4, !tbaa !2
  %97 = icmp eq i32 %96, -1
  br i1 %97, label %98, label %100

; <label>:98                                      ; preds = %95
  %99 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([19 x i8]* @.str19, i64 0, i64 0)) #2
  store i32 %99, i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_adms_gyz, align 4, !tbaa !2
  br label %100

; <label>:100                                     ; preds = %98, %95
  %101 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_adms_gzz, align 4, !tbaa !2
  %102 = icmp eq i32 %101, -1
  br i1 %102, label %103, label %105

; <label>:103                                     ; preds = %100
  %104 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([19 x i8]* @.str20, i64 0, i64 0)) #2
  store i32 %104, i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_adms_gzz, align 4, !tbaa !2
  br label %105

; <label>:105                                     ; preds = %103, %100
  %106 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_adms_kxx, align 4, !tbaa !2
  %107 = icmp eq i32 %106, -1
  br i1 %107, label %108, label %110

; <label>:108                                     ; preds = %105
  %109 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([19 x i8]* @.str21, i64 0, i64 0)) #2
  store i32 %109, i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_adms_kxx, align 4, !tbaa !2
  br label %110

; <label>:110                                     ; preds = %108, %105
  %111 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_adms_kxy, align 4, !tbaa !2
  %112 = icmp eq i32 %111, -1
  br i1 %112, label %113, label %115

; <label>:113                                     ; preds = %110
  %114 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([19 x i8]* @.str22, i64 0, i64 0)) #2
  store i32 %114, i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_adms_kxy, align 4, !tbaa !2
  br label %115

; <label>:115                                     ; preds = %113, %110
  %116 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_adms_kxz, align 4, !tbaa !2
  %117 = icmp eq i32 %116, -1
  br i1 %117, label %118, label %120

; <label>:118                                     ; preds = %115
  %119 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([19 x i8]* @.str23, i64 0, i64 0)) #2
  store i32 %119, i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_adms_kxz, align 4, !tbaa !2
  br label %120

; <label>:120                                     ; preds = %118, %115
  %121 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_adms_kyy, align 4, !tbaa !2
  %122 = icmp eq i32 %121, -1
  br i1 %122, label %123, label %125

; <label>:123                                     ; preds = %120
  %124 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([19 x i8]* @.str24, i64 0, i64 0)) #2
  store i32 %124, i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_adms_kyy, align 4, !tbaa !2
  br label %125

; <label>:125                                     ; preds = %123, %120
  %126 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_adms_kyz, align 4, !tbaa !2
  %127 = icmp eq i32 %126, -1
  br i1 %127, label %128, label %130

; <label>:128                                     ; preds = %125
  %129 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([19 x i8]* @.str25, i64 0, i64 0)) #2
  store i32 %129, i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_adms_kyz, align 4, !tbaa !2
  br label %130

; <label>:130                                     ; preds = %128, %125
  %131 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_adms_kzz, align 4, !tbaa !2
  %132 = icmp eq i32 %131, -1
  br i1 %132, label %133, label %135

; <label>:133                                     ; preds = %130
  %134 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([19 x i8]* @.str26, i64 0, i64 0)) #2
  store i32 %134, i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_adms_kzz, align 4, !tbaa !2
  br label %135

; <label>:135                                     ; preds = %133, %130
  %136 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_active_slicing_handle, align 4, !tbaa !2
  %137 = icmp eq i32 %136, -1
  br i1 %137, label %138, label %140

; <label>:138                                     ; preds = %135
  %139 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([32 x i8]* @.str27, i64 0, i64 0)) #2
  store i32 %139, i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_active_slicing_handle, align 4, !tbaa !2
  br label %140

; <label>:140                                     ; preds = %138, %135
  %141 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKGROUPNUM_slicing_flags, align 4, !tbaa !2
  %142 = icmp eq i32 %141, -1
  br i1 %142, label %143, label %145

; <label>:143                                     ; preds = %140
  %144 = tail call i32 @CCTK_GroupIndex(i8* getelementptr inbounds ([24 x i8]* @.str28, i64 0, i64 0)) #2
  store i32 %144, i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKGROUPNUM_slicing_flags, align 4, !tbaa !2
  br label %145

; <label>:145                                     ; preds = %143, %140
  %146 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_alp, align 4, !tbaa !2
  %147 = icmp eq i32 %146, -1
  br i1 %147, label %148, label %150

; <label>:148                                     ; preds = %145
  %149 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str29, i64 0, i64 0)) #2
  store i32 %149, i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_alp, align 4, !tbaa !2
  br label %150

; <label>:150                                     ; preds = %148, %145
  %151 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKGROUPNUM_lapse, align 4, !tbaa !2
  %152 = icmp eq i32 %151, -1
  br i1 %152, label %153, label %155

; <label>:153                                     ; preds = %150
  %154 = tail call i32 @CCTK_GroupIndex(i8* getelementptr inbounds ([16 x i8]* @.str30, i64 0, i64 0)) #2
  store i32 %154, i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKGROUPNUM_lapse, align 4, !tbaa !2
  br label %155

; <label>:155                                     ; preds = %153, %150
  %156 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_betax, align 4, !tbaa !2
  %157 = icmp eq i32 %156, -1
  br i1 %157, label %158, label %160

; <label>:158                                     ; preds = %155
  %159 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str31, i64 0, i64 0)) #2
  store i32 %159, i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_betax, align 4, !tbaa !2
  br label %160

; <label>:160                                     ; preds = %158, %155
  %161 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKGROUPNUM_shift, align 4, !tbaa !2
  %162 = icmp eq i32 %161, -1
  br i1 %162, label %163, label %165

; <label>:163                                     ; preds = %160
  %164 = tail call i32 @CCTK_GroupIndex(i8* getelementptr inbounds ([16 x i8]* @.str32, i64 0, i64 0)) #2
  store i32 %164, i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKGROUPNUM_shift, align 4, !tbaa !2
  br label %165

; <label>:165                                     ; preds = %163, %160
  %166 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_betay, align 4, !tbaa !2
  %167 = icmp eq i32 %166, -1
  br i1 %167, label %168, label %170

; <label>:168                                     ; preds = %165
  %169 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str33, i64 0, i64 0)) #2
  store i32 %169, i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_betay, align 4, !tbaa !2
  br label %170

; <label>:170                                     ; preds = %168, %165
  %171 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_betaz, align 4, !tbaa !2
  %172 = icmp eq i32 %171, -1
  br i1 %172, label %173, label %175

; <label>:173                                     ; preds = %170
  %174 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str34, i64 0, i64 0)) #2
  store i32 %174, i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_betaz, align 4, !tbaa !2
  br label %175

; <label>:175                                     ; preds = %173, %170
  %176 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_coarse_dx, align 4, !tbaa !2
  %177 = icmp eq i32 %176, -1
  br i1 %177, label %178, label %180

; <label>:178                                     ; preds = %175
  %179 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str35, i64 0, i64 0)) #2
  store i32 %179, i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_coarse_dx, align 4, !tbaa !2
  br label %180

; <label>:180                                     ; preds = %178, %175
  %181 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKGROUPNUM_gridspacings, align 4, !tbaa !2
  %182 = icmp eq i32 %181, -1
  br i1 %182, label %183, label %185

; <label>:183                                     ; preds = %180
  %184 = tail call i32 @CCTK_GroupIndex(i8* getelementptr inbounds ([19 x i8]* @.str36, i64 0, i64 0)) #2
  store i32 %184, i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKGROUPNUM_gridspacings, align 4, !tbaa !2
  br label %185

; <label>:185                                     ; preds = %183, %180
  %186 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_coarse_dy, align 4, !tbaa !2
  %187 = icmp eq i32 %186, -1
  br i1 %187, label %188, label %190

; <label>:188                                     ; preds = %185
  %189 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str37, i64 0, i64 0)) #2
  store i32 %189, i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_coarse_dy, align 4, !tbaa !2
  br label %190

; <label>:190                                     ; preds = %188, %185
  %191 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_coarse_dz, align 4, !tbaa !2
  %192 = icmp eq i32 %191, -1
  br i1 %192, label %193, label %195

; <label>:193                                     ; preds = %190
  %194 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str38, i64 0, i64 0)) #2
  store i32 %194, i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_coarse_dz, align 4, !tbaa !2
  br label %195

; <label>:195                                     ; preds = %193, %190
  %196 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_conformal_state, align 4, !tbaa !2
  %197 = icmp eq i32 %196, -1
  br i1 %197, label %198, label %200

; <label>:198                                     ; preds = %195
  %199 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([26 x i8]* @.str39, i64 0, i64 0)) #2
  store i32 %199, i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_conformal_state, align 4, !tbaa !2
  br label %200

; <label>:200                                     ; preds = %198, %195
  %201 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKGROUPNUM_flags, align 4, !tbaa !2
  %202 = icmp eq i32 %201, -1
  br i1 %202, label %203, label %205

; <label>:203                                     ; preds = %200
  %204 = tail call i32 @CCTK_GroupIndex(i8* getelementptr inbounds ([16 x i8]* @.str40, i64 0, i64 0)) #2
  store i32 %204, i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKGROUPNUM_flags, align 4, !tbaa !2
  br label %205

; <label>:205                                     ; preds = %203, %200
  %206 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_courant_min_time, align 4, !tbaa !2
  %207 = icmp eq i32 %206, -1
  br i1 %207, label %208, label %210

; <label>:208                                     ; preds = %205
  %209 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([23 x i8]* @.str41, i64 0, i64 0)) #2
  store i32 %209, i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_courant_min_time, align 4, !tbaa !2
  br label %210

; <label>:210                                     ; preds = %208, %205
  %211 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKGROUPNUM_speedvars, align 4, !tbaa !2
  %212 = icmp eq i32 %211, -1
  br i1 %212, label %213, label %215

; <label>:213                                     ; preds = %210
  %214 = tail call i32 @CCTK_GroupIndex(i8* getelementptr inbounds ([16 x i8]* @.str42, i64 0, i64 0)) #2
  store i32 %214, i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKGROUPNUM_speedvars, align 4, !tbaa !2
  br label %215

; <label>:215                                     ; preds = %213, %210
  %216 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_courant_wave_speed, align 4, !tbaa !2
  %217 = icmp eq i32 %216, -1
  br i1 %217, label %218, label %220

; <label>:218                                     ; preds = %215
  %219 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([25 x i8]* @.str43, i64 0, i64 0)) #2
  store i32 %219, i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_courant_wave_speed, align 4, !tbaa !2
  br label %220

; <label>:220                                     ; preds = %218, %215
  %221 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_emask, align 4, !tbaa !2
  %222 = icmp eq i32 %221, -1
  br i1 %222, label %223, label %225

; <label>:223                                     ; preds = %220
  %224 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str44, i64 0, i64 0)) #2
  store i32 %224, i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_emask, align 4, !tbaa !2
  br label %225

; <label>:225                                     ; preds = %223, %220
  %226 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKGROUPNUM_mask, align 4, !tbaa !2
  %227 = icmp eq i32 %226, -1
  br i1 %227, label %228, label %230

; <label>:228                                     ; preds = %225
  %229 = tail call i32 @CCTK_GroupIndex(i8* getelementptr inbounds ([15 x i8]* @.str45, i64 0, i64 0)) #2
  store i32 %229, i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKGROUPNUM_mask, align 4, !tbaa !2
  br label %230

; <label>:230                                     ; preds = %228, %225
  %231 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_gxx, align 4, !tbaa !2
  %232 = icmp eq i32 %231, -1
  br i1 %232, label %233, label %235

; <label>:233                                     ; preds = %230
  %234 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str46, i64 0, i64 0)) #2
  store i32 %234, i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_gxx, align 4, !tbaa !2
  br label %235

; <label>:235                                     ; preds = %233, %230
  %236 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKGROUPNUM_metric, align 4, !tbaa !2
  %237 = icmp eq i32 %236, -1
  br i1 %237, label %238, label %240

; <label>:238                                     ; preds = %235
  %239 = tail call i32 @CCTK_GroupIndex(i8* getelementptr inbounds ([17 x i8]* @.str47, i64 0, i64 0)) #2
  store i32 %239, i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKGROUPNUM_metric, align 4, !tbaa !2
  br label %240

; <label>:240                                     ; preds = %238, %235
  %241 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_gxy, align 4, !tbaa !2
  %242 = icmp eq i32 %241, -1
  br i1 %242, label %243, label %245

; <label>:243                                     ; preds = %240
  %244 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str48, i64 0, i64 0)) #2
  store i32 %244, i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_gxy, align 4, !tbaa !2
  br label %245

; <label>:245                                     ; preds = %243, %240
  %246 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_gxz, align 4, !tbaa !2
  %247 = icmp eq i32 %246, -1
  br i1 %247, label %248, label %250

; <label>:248                                     ; preds = %245
  %249 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str49, i64 0, i64 0)) #2
  store i32 %249, i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_gxz, align 4, !tbaa !2
  br label %250

; <label>:250                                     ; preds = %248, %245
  %251 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_gyy, align 4, !tbaa !2
  %252 = icmp eq i32 %251, -1
  br i1 %252, label %253, label %255

; <label>:253                                     ; preds = %250
  %254 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str50, i64 0, i64 0)) #2
  store i32 %254, i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_gyy, align 4, !tbaa !2
  br label %255

; <label>:255                                     ; preds = %253, %250
  %256 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_gyz, align 4, !tbaa !2
  %257 = icmp eq i32 %256, -1
  br i1 %257, label %258, label %260

; <label>:258                                     ; preds = %255
  %259 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str51, i64 0, i64 0)) #2
  store i32 %259, i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_gyz, align 4, !tbaa !2
  br label %260

; <label>:260                                     ; preds = %258, %255
  %261 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_gzz, align 4, !tbaa !2
  %262 = icmp eq i32 %261, -1
  br i1 %262, label %263, label %265

; <label>:263                                     ; preds = %260
  %264 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str52, i64 0, i64 0)) #2
  store i32 %264, i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_gzz, align 4, !tbaa !2
  br label %265

; <label>:265                                     ; preds = %263, %260
  %266 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_kxx, align 4, !tbaa !2
  %267 = icmp eq i32 %266, -1
  br i1 %267, label %268, label %270

; <label>:268                                     ; preds = %265
  %269 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str53, i64 0, i64 0)) #2
  store i32 %269, i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_kxx, align 4, !tbaa !2
  br label %270

; <label>:270                                     ; preds = %268, %265
  %271 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKGROUPNUM_curv, align 4, !tbaa !2
  %272 = icmp eq i32 %271, -1
  br i1 %272, label %273, label %275

; <label>:273                                     ; preds = %270
  %274 = tail call i32 @CCTK_GroupIndex(i8* getelementptr inbounds ([15 x i8]* @.str54, i64 0, i64 0)) #2
  store i32 %274, i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKGROUPNUM_curv, align 4, !tbaa !2
  br label %275

; <label>:275                                     ; preds = %273, %270
  %276 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_kxy, align 4, !tbaa !2
  %277 = icmp eq i32 %276, -1
  br i1 %277, label %278, label %280

; <label>:278                                     ; preds = %275
  %279 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str55, i64 0, i64 0)) #2
  store i32 %279, i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_kxy, align 4, !tbaa !2
  br label %280

; <label>:280                                     ; preds = %278, %275
  %281 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_kxz, align 4, !tbaa !2
  %282 = icmp eq i32 %281, -1
  br i1 %282, label %283, label %285

; <label>:283                                     ; preds = %280
  %284 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str56, i64 0, i64 0)) #2
  store i32 %284, i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_kxz, align 4, !tbaa !2
  br label %285

; <label>:285                                     ; preds = %283, %280
  %286 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_kyy, align 4, !tbaa !2
  %287 = icmp eq i32 %286, -1
  br i1 %287, label %288, label %290

; <label>:288                                     ; preds = %285
  %289 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str57, i64 0, i64 0)) #2
  store i32 %289, i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_kyy, align 4, !tbaa !2
  br label %290

; <label>:290                                     ; preds = %288, %285
  %291 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_kyz, align 4, !tbaa !2
  %292 = icmp eq i32 %291, -1
  br i1 %292, label %293, label %295

; <label>:293                                     ; preds = %290
  %294 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str58, i64 0, i64 0)) #2
  store i32 %294, i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_kyz, align 4, !tbaa !2
  br label %295

; <label>:295                                     ; preds = %293, %290
  %296 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_kzz, align 4, !tbaa !2
  %297 = icmp eq i32 %296, -1
  br i1 %297, label %298, label %300

; <label>:298                                     ; preds = %295
  %299 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str59, i64 0, i64 0)) #2
  store i32 %299, i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_kzz, align 4, !tbaa !2
  br label %300

; <label>:300                                     ; preds = %298, %295
  %301 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_psi, align 4, !tbaa !2
  %302 = icmp eq i32 %301, -1
  br i1 %302, label %303, label %305

; <label>:303                                     ; preds = %300
  %304 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str60, i64 0, i64 0)) #2
  store i32 %304, i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_psi, align 4, !tbaa !2
  br label %305

; <label>:305                                     ; preds = %303, %300
  %306 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKGROUPNUM_confac, align 4, !tbaa !2
  %307 = icmp eq i32 %306, -1
  br i1 %307, label %308, label %310

; <label>:308                                     ; preds = %305
  %309 = tail call i32 @CCTK_GroupIndex(i8* getelementptr inbounds ([17 x i8]* @.str61, i64 0, i64 0)) #2
  store i32 %309, i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKGROUPNUM_confac, align 4, !tbaa !2
  br label %310

; <label>:310                                     ; preds = %308, %305
  %311 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_psix, align 4, !tbaa !2
  %312 = icmp eq i32 %311, -1
  br i1 %312, label %313, label %315

; <label>:313                                     ; preds = %310
  %314 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([15 x i8]* @.str62, i64 0, i64 0)) #2
  store i32 %314, i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_psix, align 4, !tbaa !2
  br label %315

; <label>:315                                     ; preds = %313, %310
  %316 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKGROUPNUM_confac_1derivs, align 4, !tbaa !2
  %317 = icmp eq i32 %316, -1
  br i1 %317, label %318, label %320

; <label>:318                                     ; preds = %315
  %319 = tail call i32 @CCTK_GroupIndex(i8* getelementptr inbounds ([25 x i8]* @.str63, i64 0, i64 0)) #2
  store i32 %319, i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKGROUPNUM_confac_1derivs, align 4, !tbaa !2
  br label %320

; <label>:320                                     ; preds = %318, %315
  %321 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_psixx, align 4, !tbaa !2
  %322 = icmp eq i32 %321, -1
  br i1 %322, label %323, label %325

; <label>:323                                     ; preds = %320
  %324 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str64, i64 0, i64 0)) #2
  store i32 %324, i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_psixx, align 4, !tbaa !2
  br label %325

; <label>:325                                     ; preds = %323, %320
  %326 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKGROUPNUM_confac_2derivs, align 4, !tbaa !2
  %327 = icmp eq i32 %326, -1
  br i1 %327, label %328, label %330

; <label>:328                                     ; preds = %325
  %329 = tail call i32 @CCTK_GroupIndex(i8* getelementptr inbounds ([25 x i8]* @.str65, i64 0, i64 0)) #2
  store i32 %329, i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKGROUPNUM_confac_2derivs, align 4, !tbaa !2
  br label %330

; <label>:330                                     ; preds = %328, %325
  %331 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_psixy, align 4, !tbaa !2
  %332 = icmp eq i32 %331, -1
  br i1 %332, label %333, label %335

; <label>:333                                     ; preds = %330
  %334 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str66, i64 0, i64 0)) #2
  store i32 %334, i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_psixy, align 4, !tbaa !2
  br label %335

; <label>:335                                     ; preds = %333, %330
  %336 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_psixz, align 4, !tbaa !2
  %337 = icmp eq i32 %336, -1
  br i1 %337, label %338, label %340

; <label>:338                                     ; preds = %335
  %339 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str67, i64 0, i64 0)) #2
  store i32 %339, i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_psixz, align 4, !tbaa !2
  br label %340

; <label>:340                                     ; preds = %338, %335
  %341 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_psiy, align 4, !tbaa !2
  %342 = icmp eq i32 %341, -1
  br i1 %342, label %343, label %345

; <label>:343                                     ; preds = %340
  %344 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([15 x i8]* @.str68, i64 0, i64 0)) #2
  store i32 %344, i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_psiy, align 4, !tbaa !2
  br label %345

; <label>:345                                     ; preds = %343, %340
  %346 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_psiyy, align 4, !tbaa !2
  %347 = icmp eq i32 %346, -1
  br i1 %347, label %348, label %350

; <label>:348                                     ; preds = %345
  %349 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str69, i64 0, i64 0)) #2
  store i32 %349, i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_psiyy, align 4, !tbaa !2
  br label %350

; <label>:350                                     ; preds = %348, %345
  %351 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_psiyz, align 4, !tbaa !2
  %352 = icmp eq i32 %351, -1
  br i1 %352, label %353, label %355

; <label>:353                                     ; preds = %350
  %354 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str70, i64 0, i64 0)) #2
  store i32 %354, i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_psiyz, align 4, !tbaa !2
  br label %355

; <label>:355                                     ; preds = %353, %350
  %356 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_psiz, align 4, !tbaa !2
  %357 = icmp eq i32 %356, -1
  br i1 %357, label %358, label %360

; <label>:358                                     ; preds = %355
  %359 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([15 x i8]* @.str71, i64 0, i64 0)) #2
  store i32 %359, i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_psiz, align 4, !tbaa !2
  br label %360

; <label>:360                                     ; preds = %358, %355
  %361 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_psizz, align 4, !tbaa !2
  %362 = icmp eq i32 %361, -1
  br i1 %362, label %363, label %365

; <label>:363                                     ; preds = %360
  %364 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str72, i64 0, i64 0)) #2
  store i32 %364, i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_psizz, align 4, !tbaa !2
  br label %365

; <label>:365                                     ; preds = %363, %360
  %366 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_r, align 4, !tbaa !2
  %367 = icmp eq i32 %366, -1
  br i1 %367, label %368, label %370

; <label>:368                                     ; preds = %365
  %369 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([8 x i8]* @.str73, i64 0, i64 0)) #2
  store i32 %369, i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_r, align 4, !tbaa !2
  br label %370

; <label>:370                                     ; preds = %368, %365
  %371 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKGROUPNUM_coordinates, align 4, !tbaa !2
  %372 = icmp eq i32 %371, -1
  br i1 %372, label %373, label %375

; <label>:373                                     ; preds = %370
  %374 = tail call i32 @CCTK_GroupIndex(i8* getelementptr inbounds ([18 x i8]* @.str74, i64 0, i64 0)) #2
  store i32 %374, i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKGROUPNUM_coordinates, align 4, !tbaa !2
  br label %375

; <label>:375                                     ; preds = %373, %370
  %376 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_shift_state, align 4, !tbaa !2
  %377 = icmp eq i32 %376, -1
  br i1 %377, label %378, label %380

; <label>:378                                     ; preds = %375
  %379 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([22 x i8]* @.str75, i64 0, i64 0)) #2
  store i32 %379, i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_shift_state, align 4, !tbaa !2
  br label %380

; <label>:380                                     ; preds = %378, %375
  %381 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_x, align 4, !tbaa !2
  %382 = icmp eq i32 %381, -1
  br i1 %382, label %383, label %385

; <label>:383                                     ; preds = %380
  %384 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([8 x i8]* @.str76, i64 0, i64 0)) #2
  store i32 %384, i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_x, align 4, !tbaa !2
  br label %385

; <label>:385                                     ; preds = %383, %380
  %386 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_y, align 4, !tbaa !2
  %387 = icmp eq i32 %386, -1
  br i1 %387, label %388, label %390

; <label>:388                                     ; preds = %385
  %389 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([8 x i8]* @.str77, i64 0, i64 0)) #2
  store i32 %389, i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_y, align 4, !tbaa !2
  br label %390

; <label>:390                                     ; preds = %388, %385
  %391 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_z, align 4, !tbaa !2
  %392 = icmp eq i32 %391, -1
  br i1 %392, label %393, label %395

; <label>:393                                     ; preds = %390
  %394 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([8 x i8]* @.str78, i64 0, i64 0)) #2
  store i32 %394, i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_z, align 4, !tbaa !2
  br label %395

; <label>:395                                     ; preds = %393, %390
  %396 = bitcast i8* %fpointer to void (i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, double*, double*, double*, double*, i32*, i32*, i32*, i32*, %struct.cGH*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, double*, double*, double*, double*, double*, double*, double*, i32*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, i32*, double*, double*, double*)*
  %397 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 0
  %398 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 2
  %399 = load i32** %398, align 8, !tbaa !6
  %400 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 3
  %401 = load i32** %400, align 8, !tbaa !10
  %402 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 4
  %403 = load i32** %402, align 8, !tbaa !11
  %404 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 5
  %405 = load i32** %404, align 8, !tbaa !12
  %406 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 6
  %407 = load i32** %406, align 8, !tbaa !13
  %408 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 8
  %409 = load i32** %408, align 8, !tbaa !14
  %410 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 7
  %411 = load i32** %410, align 8, !tbaa !15
  %412 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 12
  %413 = load i32** %412, align 8, !tbaa !16
  %414 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 9
  %415 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 16
  %416 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 10
  %417 = load double** %416, align 8, !tbaa !17
  %418 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 11
  %419 = load double** %418, align 8, !tbaa !18
  %420 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 13
  %421 = load i32** %420, align 8, !tbaa !19
  %422 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 14
  %423 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 15
  %424 = load i32** %423, align 8, !tbaa !20
  %425 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 1
  %426 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKGROUPNUM_ADM_curv_stag, align 4, !tbaa !2
  %427 = icmp slt i32 %426, 0
  br i1 %427, label %.thread4, label %428

; <label>:428                                     ; preds = %395
  %429 = tail call i32 @CCTK_QueryGroupStorage(%struct.cGH* %GH, i8* getelementptr inbounds ([24 x i8]* @.str8, i64 0, i64 0)) #2
  %430 = icmp eq i32 %429, 0
  br i1 %430, label %433, label %431

; <label>:431                                     ; preds = %428
  %432 = tail call i32* @CCTK_ArrayGroupSize(%struct.cGH* %GH, i32 0, i8* getelementptr inbounds ([24 x i8]* @.str8, i64 0, i64 0)) #2
  br label %433

; <label>:433                                     ; preds = %428, %431
  %.ph = phi i32* [ @_cctk_one, %428 ], [ %432, %431 ]
  %.pr = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKGROUPNUM_ADM_curv_stag, align 4, !tbaa !2
  %434 = icmp slt i32 %.pr, 0
  br i1 %434, label %.thread4, label %435

; <label>:435                                     ; preds = %433
  %436 = tail call i32 @CCTK_QueryGroupStorage(%struct.cGH* %GH, i8* getelementptr inbounds ([24 x i8]* @.str8, i64 0, i64 0)) #2
  %437 = icmp eq i32 %436, 0
  br i1 %437, label %.thread, label %438

; <label>:438                                     ; preds = %435
  %439 = tail call i32* @CCTK_ArrayGroupSize(%struct.cGH* %GH, i32 1, i8* getelementptr inbounds ([24 x i8]* @.str8, i64 0, i64 0)) #2
  br label %.thread

.thread:                                          ; preds = %435, %438
  %.ph2.ph = phi i32* [ %439, %438 ], [ @_cctk_one, %435 ]
  %.pr3.pr = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKGROUPNUM_ADM_curv_stag, align 4, !tbaa !2
  %440 = icmp slt i32 %.pr3.pr, 0
  br i1 %440, label %.thread4, label %441

; <label>:441                                     ; preds = %.thread
  %442 = tail call i32 @CCTK_QueryGroupStorage(%struct.cGH* %GH, i8* getelementptr inbounds ([24 x i8]* @.str8, i64 0, i64 0)) #2
  %443 = icmp eq i32 %442, 0
  br i1 %443, label %.thread4, label %444

; <label>:444                                     ; preds = %441
  %445 = tail call i32* @CCTK_ArrayGroupSize(%struct.cGH* %GH, i32 2, i8* getelementptr inbounds ([24 x i8]* @.str8, i64 0, i64 0)) #2
  br label %.thread4

.thread4:                                         ; preds = %395, %433, %441, %444, %.thread
  %446 = phi i32* [ %.ph2.ph, %.thread ], [ %.ph2.ph, %444 ], [ %.ph2.ph, %441 ], [ @_cctk_one, %433 ], [ @_cctk_one, %395 ]
  %447 = phi i32* [ %.ph, %.thread ], [ %.ph, %444 ], [ %.ph, %441 ], [ %.ph, %433 ], [ @_cctk_one, %395 ]
  %448 = phi i32* [ @_cctk_one, %.thread ], [ %445, %444 ], [ @_cctk_one, %441 ], [ @_cctk_one, %433 ], [ @_cctk_one, %395 ]
  %449 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKGROUPNUM_ADM_metric_prev, align 4, !tbaa !2
  %450 = icmp slt i32 %449, 0
  br i1 %450, label %.thread11, label %451

; <label>:451                                     ; preds = %.thread4
  %452 = tail call i32 @CCTK_QueryGroupStorage(%struct.cGH* %GH, i8* getelementptr inbounds ([26 x i8]* @.str1, i64 0, i64 0)) #2
  %453 = icmp eq i32 %452, 0
  br i1 %453, label %456, label %454

; <label>:454                                     ; preds = %451
  %455 = tail call i32* @CCTK_ArrayGroupSize(%struct.cGH* %GH, i32 0, i8* getelementptr inbounds ([26 x i8]* @.str1, i64 0, i64 0)) #2
  br label %456

; <label>:456                                     ; preds = %451, %454
  %.ph5 = phi i32* [ @_cctk_one, %451 ], [ %455, %454 ]
  %.pr6 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKGROUPNUM_ADM_metric_prev, align 4, !tbaa !2
  %457 = icmp slt i32 %.pr6, 0
  br i1 %457, label %.thread11, label %458

; <label>:458                                     ; preds = %456
  %459 = tail call i32 @CCTK_QueryGroupStorage(%struct.cGH* %GH, i8* getelementptr inbounds ([26 x i8]* @.str1, i64 0, i64 0)) #2
  %460 = icmp eq i32 %459, 0
  br i1 %460, label %.thread7, label %461

; <label>:461                                     ; preds = %458
  %462 = tail call i32* @CCTK_ArrayGroupSize(%struct.cGH* %GH, i32 1, i8* getelementptr inbounds ([26 x i8]* @.str1, i64 0, i64 0)) #2
  br label %.thread7

.thread7:                                         ; preds = %458, %461
  %.ph9.ph = phi i32* [ %462, %461 ], [ @_cctk_one, %458 ]
  %.pr10.pr = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKGROUPNUM_ADM_metric_prev, align 4, !tbaa !2
  %463 = icmp slt i32 %.pr10.pr, 0
  br i1 %463, label %.thread11, label %464

; <label>:464                                     ; preds = %.thread7
  %465 = tail call i32 @CCTK_QueryGroupStorage(%struct.cGH* %GH, i8* getelementptr inbounds ([26 x i8]* @.str1, i64 0, i64 0)) #2
  %466 = icmp eq i32 %465, 0
  br i1 %466, label %.thread11, label %467

; <label>:467                                     ; preds = %464
  %468 = tail call i32* @CCTK_ArrayGroupSize(%struct.cGH* %GH, i32 2, i8* getelementptr inbounds ([26 x i8]* @.str1, i64 0, i64 0)) #2
  br label %.thread11

.thread11:                                        ; preds = %.thread4, %456, %464, %467, %.thread7
  %469 = phi i32* [ %.ph9.ph, %.thread7 ], [ %.ph9.ph, %467 ], [ %.ph9.ph, %464 ], [ @_cctk_one, %456 ], [ @_cctk_one, %.thread4 ]
  %470 = phi i32* [ %.ph5, %.thread7 ], [ %.ph5, %467 ], [ %.ph5, %464 ], [ %.ph5, %456 ], [ @_cctk_one, %.thread4 ]
  %471 = phi i32* [ @_cctk_one, %.thread7 ], [ %468, %467 ], [ @_cctk_one, %464 ], [ @_cctk_one, %456 ], [ @_cctk_one, %.thread4 ]
  %472 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKGROUPNUM_ADM_sources, align 4, !tbaa !2
  %473 = icmp slt i32 %472, 0
  br i1 %473, label %.thread18, label %474

; <label>:474                                     ; preds = %.thread11
  %475 = tail call i32 @CCTK_QueryGroupStorage(%struct.cGH* %GH, i8* getelementptr inbounds ([22 x i8]* @.str15, i64 0, i64 0)) #2
  %476 = icmp eq i32 %475, 0
  br i1 %476, label %479, label %477

; <label>:477                                     ; preds = %474
  %478 = tail call i32* @CCTK_ArrayGroupSize(%struct.cGH* %GH, i32 0, i8* getelementptr inbounds ([22 x i8]* @.str15, i64 0, i64 0)) #2
  br label %479

; <label>:479                                     ; preds = %474, %477
  %.ph12 = phi i32* [ @_cctk_one, %474 ], [ %478, %477 ]
  %.pr13 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKGROUPNUM_ADM_sources, align 4, !tbaa !2
  %480 = icmp slt i32 %.pr13, 0
  br i1 %480, label %.thread18, label %481

; <label>:481                                     ; preds = %479
  %482 = tail call i32 @CCTK_QueryGroupStorage(%struct.cGH* %GH, i8* getelementptr inbounds ([22 x i8]* @.str15, i64 0, i64 0)) #2
  %483 = icmp eq i32 %482, 0
  br i1 %483, label %.thread14, label %484

; <label>:484                                     ; preds = %481
  %485 = tail call i32* @CCTK_ArrayGroupSize(%struct.cGH* %GH, i32 1, i8* getelementptr inbounds ([22 x i8]* @.str15, i64 0, i64 0)) #2
  br label %.thread14

.thread14:                                        ; preds = %481, %484
  %.ph16.ph = phi i32* [ %485, %484 ], [ @_cctk_one, %481 ]
  %.pr17.pr = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKGROUPNUM_ADM_sources, align 4, !tbaa !2
  %486 = icmp slt i32 %.pr17.pr, 0
  br i1 %486, label %.thread18, label %487

; <label>:487                                     ; preds = %.thread14
  %488 = tail call i32 @CCTK_QueryGroupStorage(%struct.cGH* %GH, i8* getelementptr inbounds ([22 x i8]* @.str15, i64 0, i64 0)) #2
  %489 = icmp eq i32 %488, 0
  br i1 %489, label %.thread18, label %490

; <label>:490                                     ; preds = %487
  %491 = tail call i32* @CCTK_ArrayGroupSize(%struct.cGH* %GH, i32 2, i8* getelementptr inbounds ([22 x i8]* @.str15, i64 0, i64 0)) #2
  br label %.thread18

.thread18:                                        ; preds = %.thread11, %479, %487, %490, %.thread14
  %492 = phi i32* [ %.ph16.ph, %.thread14 ], [ %.ph16.ph, %490 ], [ %.ph16.ph, %487 ], [ @_cctk_one, %479 ], [ @_cctk_one, %.thread11 ]
  %493 = phi i32* [ %.ph12, %.thread14 ], [ %.ph12, %490 ], [ %.ph12, %487 ], [ %.ph12, %479 ], [ @_cctk_one, %.thread11 ]
  %494 = phi i32* [ @_cctk_one, %.thread14 ], [ %491, %490 ], [ @_cctk_one, %487 ], [ @_cctk_one, %479 ], [ @_cctk_one, %.thread11 ]
  %495 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_ADM_gxx, align 4, !tbaa !2
  %496 = icmp slt i32 %495, 0
  br i1 %496, label %.thread20, label %497

; <label>:497                                     ; preds = %.thread18
  %498 = sext i32 %495 to i64
  %499 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17
  %500 = load i8**** %499, align 8, !tbaa !21
  %501 = getelementptr inbounds i8*** %500, i64 %498
  %502 = bitcast i8*** %501 to double***
  %503 = load double*** %502, align 8, !tbaa !22
  %504 = load double** %503, align 8, !tbaa !22
  %505 = getelementptr inbounds double** %503, i64 1
  %506 = bitcast double** %505 to i8**
  %507 = load i8** %506, align 8, !tbaa !22
  br label %.thread20

.thread20:                                        ; preds = %.thread18, %497
  %508 = phi double* [ %504, %497 ], [ null, %.thread18 ]
  %509 = phi i8* [ %507, %497 ], [ null, %.thread18 ]
  %510 = bitcast i8* %509 to double*
  %511 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_ADM_gxy, align 4, !tbaa !2
  %512 = icmp slt i32 %511, 0
  br i1 %512, label %.thread22, label %513

; <label>:513                                     ; preds = %.thread20
  %514 = sext i32 %511 to i64
  %515 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17
  %516 = load i8**** %515, align 8, !tbaa !21
  %517 = getelementptr inbounds i8*** %516, i64 %514
  %518 = bitcast i8*** %517 to double***
  %519 = load double*** %518, align 8, !tbaa !22
  %520 = load double** %519, align 8, !tbaa !22
  %521 = getelementptr inbounds double** %519, i64 1
  %522 = bitcast double** %521 to i8**
  %523 = load i8** %522, align 8, !tbaa !22
  br label %.thread22

.thread22:                                        ; preds = %.thread20, %513
  %524 = phi double* [ %520, %513 ], [ null, %.thread20 ]
  %525 = phi i8* [ %523, %513 ], [ null, %.thread20 ]
  %526 = bitcast i8* %525 to double*
  %527 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_ADM_gxz, align 4, !tbaa !2
  %528 = icmp slt i32 %527, 0
  br i1 %528, label %.thread24, label %529

; <label>:529                                     ; preds = %.thread22
  %530 = sext i32 %527 to i64
  %531 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17
  %532 = load i8**** %531, align 8, !tbaa !21
  %533 = getelementptr inbounds i8*** %532, i64 %530
  %534 = bitcast i8*** %533 to double***
  %535 = load double*** %534, align 8, !tbaa !22
  %536 = load double** %535, align 8, !tbaa !22
  %537 = getelementptr inbounds double** %535, i64 1
  %538 = bitcast double** %537 to i8**
  %539 = load i8** %538, align 8, !tbaa !22
  br label %.thread24

.thread24:                                        ; preds = %.thread22, %529
  %540 = phi double* [ %536, %529 ], [ null, %.thread22 ]
  %541 = phi i8* [ %539, %529 ], [ null, %.thread22 ]
  %542 = bitcast i8* %541 to double*
  %543 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_ADM_gyy, align 4, !tbaa !2
  %544 = icmp slt i32 %543, 0
  br i1 %544, label %.thread26, label %545

; <label>:545                                     ; preds = %.thread24
  %546 = sext i32 %543 to i64
  %547 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17
  %548 = load i8**** %547, align 8, !tbaa !21
  %549 = getelementptr inbounds i8*** %548, i64 %546
  %550 = bitcast i8*** %549 to double***
  %551 = load double*** %550, align 8, !tbaa !22
  %552 = load double** %551, align 8, !tbaa !22
  %553 = getelementptr inbounds double** %551, i64 1
  %554 = bitcast double** %553 to i8**
  %555 = load i8** %554, align 8, !tbaa !22
  br label %.thread26

.thread26:                                        ; preds = %.thread24, %545
  %556 = phi double* [ %552, %545 ], [ null, %.thread24 ]
  %557 = phi i8* [ %555, %545 ], [ null, %.thread24 ]
  %558 = bitcast i8* %557 to double*
  %559 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_ADM_gyz, align 4, !tbaa !2
  %560 = icmp slt i32 %559, 0
  br i1 %560, label %.thread28, label %561

; <label>:561                                     ; preds = %.thread26
  %562 = sext i32 %559 to i64
  %563 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17
  %564 = load i8**** %563, align 8, !tbaa !21
  %565 = getelementptr inbounds i8*** %564, i64 %562
  %566 = bitcast i8*** %565 to double***
  %567 = load double*** %566, align 8, !tbaa !22
  %568 = load double** %567, align 8, !tbaa !22
  %569 = getelementptr inbounds double** %567, i64 1
  %570 = bitcast double** %569 to i8**
  %571 = load i8** %570, align 8, !tbaa !22
  br label %.thread28

.thread28:                                        ; preds = %.thread26, %561
  %572 = phi double* [ %568, %561 ], [ null, %.thread26 ]
  %573 = phi i8* [ %571, %561 ], [ null, %.thread26 ]
  %574 = bitcast i8* %573 to double*
  %575 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_ADM_gzz, align 4, !tbaa !2
  %576 = icmp slt i32 %575, 0
  br i1 %576, label %.thread30, label %577

; <label>:577                                     ; preds = %.thread28
  %578 = sext i32 %575 to i64
  %579 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17
  %580 = load i8**** %579, align 8, !tbaa !21
  %581 = getelementptr inbounds i8*** %580, i64 %578
  %582 = bitcast i8*** %581 to double***
  %583 = load double*** %582, align 8, !tbaa !22
  %584 = load double** %583, align 8, !tbaa !22
  %585 = getelementptr inbounds double** %583, i64 1
  %586 = bitcast double** %585 to i8**
  %587 = load i8** %586, align 8, !tbaa !22
  br label %.thread30

.thread30:                                        ; preds = %.thread28, %577
  %588 = phi double* [ %584, %577 ], [ null, %.thread28 ]
  %589 = phi i8* [ %587, %577 ], [ null, %.thread28 ]
  %590 = bitcast i8* %589 to double*
  %591 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_ADM_kxx_stag, align 4, !tbaa !2
  %592 = icmp slt i32 %591, 0
  br i1 %592, label %.thread36, label %593

; <label>:593                                     ; preds = %.thread30
  %594 = sext i32 %591 to i64
  %595 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17
  %596 = load i8**** %595, align 8, !tbaa !21
  %597 = getelementptr inbounds i8*** %596, i64 %594
  %598 = bitcast i8*** %597 to double***
  %599 = load double*** %598, align 8, !tbaa !22
  %600 = load double** %599, align 8, !tbaa !22
  %601 = getelementptr inbounds double** %599, i64 1
  %602 = load double** %601, align 8, !tbaa !22
  %603 = getelementptr inbounds double** %599, i64 2
  %604 = bitcast double** %603 to i8**
  %605 = load i8** %604, align 8, !tbaa !22
  br label %.thread36

.thread36:                                        ; preds = %.thread30, %593
  %606 = phi double* [ %602, %593 ], [ null, %.thread30 ]
  %607 = phi double* [ %600, %593 ], [ null, %.thread30 ]
  %608 = phi i8* [ %605, %593 ], [ null, %.thread30 ]
  %609 = bitcast i8* %608 to double*
  %610 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_ADM_kxy_stag, align 4, !tbaa !2
  %611 = icmp slt i32 %610, 0
  br i1 %611, label %.thread42, label %612

; <label>:612                                     ; preds = %.thread36
  %613 = sext i32 %610 to i64
  %614 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17
  %615 = load i8**** %614, align 8, !tbaa !21
  %616 = getelementptr inbounds i8*** %615, i64 %613
  %617 = bitcast i8*** %616 to double***
  %618 = load double*** %617, align 8, !tbaa !22
  %619 = load double** %618, align 8, !tbaa !22
  %620 = getelementptr inbounds double** %618, i64 1
  %621 = load double** %620, align 8, !tbaa !22
  %622 = getelementptr inbounds double** %618, i64 2
  %623 = bitcast double** %622 to i8**
  %624 = load i8** %623, align 8, !tbaa !22
  br label %.thread42

.thread42:                                        ; preds = %.thread36, %612
  %625 = phi double* [ %621, %612 ], [ null, %.thread36 ]
  %626 = phi double* [ %619, %612 ], [ null, %.thread36 ]
  %627 = phi i8* [ %624, %612 ], [ null, %.thread36 ]
  %628 = bitcast i8* %627 to double*
  %629 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_ADM_kxz_stag, align 4, !tbaa !2
  %630 = icmp slt i32 %629, 0
  br i1 %630, label %.thread48, label %631

; <label>:631                                     ; preds = %.thread42
  %632 = sext i32 %629 to i64
  %633 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17
  %634 = load i8**** %633, align 8, !tbaa !21
  %635 = getelementptr inbounds i8*** %634, i64 %632
  %636 = bitcast i8*** %635 to double***
  %637 = load double*** %636, align 8, !tbaa !22
  %638 = load double** %637, align 8, !tbaa !22
  %639 = getelementptr inbounds double** %637, i64 1
  %640 = load double** %639, align 8, !tbaa !22
  %641 = getelementptr inbounds double** %637, i64 2
  %642 = bitcast double** %641 to i8**
  %643 = load i8** %642, align 8, !tbaa !22
  br label %.thread48

.thread48:                                        ; preds = %.thread42, %631
  %644 = phi double* [ %640, %631 ], [ null, %.thread42 ]
  %645 = phi double* [ %638, %631 ], [ null, %.thread42 ]
  %646 = phi i8* [ %643, %631 ], [ null, %.thread42 ]
  %647 = bitcast i8* %646 to double*
  %648 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_ADM_kyy_stag, align 4, !tbaa !2
  %649 = icmp slt i32 %648, 0
  br i1 %649, label %.thread54, label %650

; <label>:650                                     ; preds = %.thread48
  %651 = sext i32 %648 to i64
  %652 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17
  %653 = load i8**** %652, align 8, !tbaa !21
  %654 = getelementptr inbounds i8*** %653, i64 %651
  %655 = bitcast i8*** %654 to double***
  %656 = load double*** %655, align 8, !tbaa !22
  %657 = load double** %656, align 8, !tbaa !22
  %658 = getelementptr inbounds double** %656, i64 1
  %659 = load double** %658, align 8, !tbaa !22
  %660 = getelementptr inbounds double** %656, i64 2
  %661 = bitcast double** %660 to i8**
  %662 = load i8** %661, align 8, !tbaa !22
  br label %.thread54

.thread54:                                        ; preds = %.thread48, %650
  %663 = phi double* [ %659, %650 ], [ null, %.thread48 ]
  %664 = phi double* [ %657, %650 ], [ null, %.thread48 ]
  %665 = phi i8* [ %662, %650 ], [ null, %.thread48 ]
  %666 = bitcast i8* %665 to double*
  %667 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_ADM_kyz_stag, align 4, !tbaa !2
  %668 = icmp slt i32 %667, 0
  br i1 %668, label %.thread60, label %669

; <label>:669                                     ; preds = %.thread54
  %670 = sext i32 %667 to i64
  %671 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17
  %672 = load i8**** %671, align 8, !tbaa !21
  %673 = getelementptr inbounds i8*** %672, i64 %670
  %674 = bitcast i8*** %673 to double***
  %675 = load double*** %674, align 8, !tbaa !22
  %676 = load double** %675, align 8, !tbaa !22
  %677 = getelementptr inbounds double** %675, i64 1
  %678 = load double** %677, align 8, !tbaa !22
  %679 = getelementptr inbounds double** %675, i64 2
  %680 = bitcast double** %679 to i8**
  %681 = load i8** %680, align 8, !tbaa !22
  br label %.thread60

.thread60:                                        ; preds = %.thread54, %669
  %682 = phi double* [ %678, %669 ], [ null, %.thread54 ]
  %683 = phi double* [ %676, %669 ], [ null, %.thread54 ]
  %684 = phi i8* [ %681, %669 ], [ null, %.thread54 ]
  %685 = bitcast i8* %684 to double*
  %686 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_ADM_kzz_stag, align 4, !tbaa !2
  %687 = icmp slt i32 %686, 0
  br i1 %687, label %.thread66, label %688

; <label>:688                                     ; preds = %.thread60
  %689 = sext i32 %686 to i64
  %690 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17
  %691 = load i8**** %690, align 8, !tbaa !21
  %692 = getelementptr inbounds i8*** %691, i64 %689
  %693 = bitcast i8*** %692 to double***
  %694 = load double*** %693, align 8, !tbaa !22
  %695 = load double** %694, align 8, !tbaa !22
  %696 = getelementptr inbounds double** %694, i64 1
  %697 = load double** %696, align 8, !tbaa !22
  %698 = getelementptr inbounds double** %694, i64 2
  %699 = bitcast double** %698 to i8**
  %700 = load i8** %699, align 8, !tbaa !22
  br label %.thread66

.thread66:                                        ; preds = %.thread60, %688
  %701 = phi double* [ %697, %688 ], [ null, %.thread60 ]
  %702 = phi double* [ %695, %688 ], [ null, %.thread60 ]
  %703 = phi i8* [ %700, %688 ], [ null, %.thread60 ]
  %704 = bitcast i8* %703 to double*
  %705 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_adms_gxx, align 4, !tbaa !2
  %706 = icmp slt i32 %705, 0
  br i1 %706, label %714, label %707

; <label>:707                                     ; preds = %.thread66
  %708 = sext i32 %705 to i64
  %709 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17
  %710 = load i8**** %709, align 8, !tbaa !21
  %711 = getelementptr inbounds i8*** %710, i64 %708
  %712 = load i8*** %711, align 8, !tbaa !22
  %713 = load i8** %712, align 8, !tbaa !22
  br label %714

; <label>:714                                     ; preds = %.thread66, %707
  %715 = phi i8* [ %713, %707 ], [ null, %.thread66 ]
  %716 = bitcast i8* %715 to double*
  %717 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_adms_gxy, align 4, !tbaa !2
  %718 = icmp slt i32 %717, 0
  br i1 %718, label %726, label %719

; <label>:719                                     ; preds = %714
  %720 = sext i32 %717 to i64
  %721 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17
  %722 = load i8**** %721, align 8, !tbaa !21
  %723 = getelementptr inbounds i8*** %722, i64 %720
  %724 = load i8*** %723, align 8, !tbaa !22
  %725 = load i8** %724, align 8, !tbaa !22
  br label %726

; <label>:726                                     ; preds = %714, %719
  %727 = phi i8* [ %725, %719 ], [ null, %714 ]
  %728 = bitcast i8* %727 to double*
  %729 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_adms_gxz, align 4, !tbaa !2
  %730 = icmp slt i32 %729, 0
  br i1 %730, label %738, label %731

; <label>:731                                     ; preds = %726
  %732 = sext i32 %729 to i64
  %733 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17
  %734 = load i8**** %733, align 8, !tbaa !21
  %735 = getelementptr inbounds i8*** %734, i64 %732
  %736 = load i8*** %735, align 8, !tbaa !22
  %737 = load i8** %736, align 8, !tbaa !22
  br label %738

; <label>:738                                     ; preds = %726, %731
  %739 = phi i8* [ %737, %731 ], [ null, %726 ]
  %740 = bitcast i8* %739 to double*
  %741 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_adms_gyy, align 4, !tbaa !2
  %742 = icmp slt i32 %741, 0
  br i1 %742, label %750, label %743

; <label>:743                                     ; preds = %738
  %744 = sext i32 %741 to i64
  %745 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17
  %746 = load i8**** %745, align 8, !tbaa !21
  %747 = getelementptr inbounds i8*** %746, i64 %744
  %748 = load i8*** %747, align 8, !tbaa !22
  %749 = load i8** %748, align 8, !tbaa !22
  br label %750

; <label>:750                                     ; preds = %738, %743
  %751 = phi i8* [ %749, %743 ], [ null, %738 ]
  %752 = bitcast i8* %751 to double*
  %753 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_adms_gyz, align 4, !tbaa !2
  %754 = icmp slt i32 %753, 0
  br i1 %754, label %762, label %755

; <label>:755                                     ; preds = %750
  %756 = sext i32 %753 to i64
  %757 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17
  %758 = load i8**** %757, align 8, !tbaa !21
  %759 = getelementptr inbounds i8*** %758, i64 %756
  %760 = load i8*** %759, align 8, !tbaa !22
  %761 = load i8** %760, align 8, !tbaa !22
  br label %762

; <label>:762                                     ; preds = %750, %755
  %763 = phi i8* [ %761, %755 ], [ null, %750 ]
  %764 = bitcast i8* %763 to double*
  %765 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_adms_gzz, align 4, !tbaa !2
  %766 = icmp slt i32 %765, 0
  br i1 %766, label %774, label %767

; <label>:767                                     ; preds = %762
  %768 = sext i32 %765 to i64
  %769 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17
  %770 = load i8**** %769, align 8, !tbaa !21
  %771 = getelementptr inbounds i8*** %770, i64 %768
  %772 = load i8*** %771, align 8, !tbaa !22
  %773 = load i8** %772, align 8, !tbaa !22
  br label %774

; <label>:774                                     ; preds = %762, %767
  %775 = phi i8* [ %773, %767 ], [ null, %762 ]
  %776 = bitcast i8* %775 to double*
  %777 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_adms_kxx, align 4, !tbaa !2
  %778 = icmp slt i32 %777, 0
  br i1 %778, label %786, label %779

; <label>:779                                     ; preds = %774
  %780 = sext i32 %777 to i64
  %781 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17
  %782 = load i8**** %781, align 8, !tbaa !21
  %783 = getelementptr inbounds i8*** %782, i64 %780
  %784 = load i8*** %783, align 8, !tbaa !22
  %785 = load i8** %784, align 8, !tbaa !22
  br label %786

; <label>:786                                     ; preds = %774, %779
  %787 = phi i8* [ %785, %779 ], [ null, %774 ]
  %788 = bitcast i8* %787 to double*
  %789 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_adms_kxy, align 4, !tbaa !2
  %790 = icmp slt i32 %789, 0
  br i1 %790, label %798, label %791

; <label>:791                                     ; preds = %786
  %792 = sext i32 %789 to i64
  %793 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17
  %794 = load i8**** %793, align 8, !tbaa !21
  %795 = getelementptr inbounds i8*** %794, i64 %792
  %796 = load i8*** %795, align 8, !tbaa !22
  %797 = load i8** %796, align 8, !tbaa !22
  br label %798

; <label>:798                                     ; preds = %786, %791
  %799 = phi i8* [ %797, %791 ], [ null, %786 ]
  %800 = bitcast i8* %799 to double*
  %801 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_adms_kxz, align 4, !tbaa !2
  %802 = icmp slt i32 %801, 0
  br i1 %802, label %810, label %803

; <label>:803                                     ; preds = %798
  %804 = sext i32 %801 to i64
  %805 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17
  %806 = load i8**** %805, align 8, !tbaa !21
  %807 = getelementptr inbounds i8*** %806, i64 %804
  %808 = load i8*** %807, align 8, !tbaa !22
  %809 = load i8** %808, align 8, !tbaa !22
  br label %810

; <label>:810                                     ; preds = %798, %803
  %811 = phi i8* [ %809, %803 ], [ null, %798 ]
  %812 = bitcast i8* %811 to double*
  %813 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_adms_kyy, align 4, !tbaa !2
  %814 = icmp slt i32 %813, 0
  br i1 %814, label %822, label %815

; <label>:815                                     ; preds = %810
  %816 = sext i32 %813 to i64
  %817 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17
  %818 = load i8**** %817, align 8, !tbaa !21
  %819 = getelementptr inbounds i8*** %818, i64 %816
  %820 = load i8*** %819, align 8, !tbaa !22
  %821 = load i8** %820, align 8, !tbaa !22
  br label %822

; <label>:822                                     ; preds = %810, %815
  %823 = phi i8* [ %821, %815 ], [ null, %810 ]
  %824 = bitcast i8* %823 to double*
  %825 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_adms_kyz, align 4, !tbaa !2
  %826 = icmp slt i32 %825, 0
  br i1 %826, label %834, label %827

; <label>:827                                     ; preds = %822
  %828 = sext i32 %825 to i64
  %829 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17
  %830 = load i8**** %829, align 8, !tbaa !21
  %831 = getelementptr inbounds i8*** %830, i64 %828
  %832 = load i8*** %831, align 8, !tbaa !22
  %833 = load i8** %832, align 8, !tbaa !22
  br label %834

; <label>:834                                     ; preds = %822, %827
  %835 = phi i8* [ %833, %827 ], [ null, %822 ]
  %836 = bitcast i8* %835 to double*
  %837 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_adms_kzz, align 4, !tbaa !2
  %838 = icmp slt i32 %837, 0
  br i1 %838, label %846, label %839

; <label>:839                                     ; preds = %834
  %840 = sext i32 %837 to i64
  %841 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17
  %842 = load i8**** %841, align 8, !tbaa !21
  %843 = getelementptr inbounds i8*** %842, i64 %840
  %844 = load i8*** %843, align 8, !tbaa !22
  %845 = load i8** %844, align 8, !tbaa !22
  br label %846

; <label>:846                                     ; preds = %834, %839
  %847 = phi i8* [ %845, %839 ], [ null, %834 ]
  %848 = bitcast i8* %847 to double*
  %849 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKGROUPNUM_confac, align 4, !tbaa !2
  %850 = icmp slt i32 %849, 0
  br i1 %850, label %.thread73, label %851

; <label>:851                                     ; preds = %846
  %852 = tail call i32 @CCTK_QueryGroupStorage(%struct.cGH* %GH, i8* getelementptr inbounds ([17 x i8]* @.str61, i64 0, i64 0)) #2
  %853 = icmp eq i32 %852, 0
  br i1 %853, label %856, label %854

; <label>:854                                     ; preds = %851
  %855 = tail call i32* @CCTK_ArrayGroupSize(%struct.cGH* %GH, i32 0, i8* getelementptr inbounds ([17 x i8]* @.str61, i64 0, i64 0)) #2
  br label %856

; <label>:856                                     ; preds = %851, %854
  %.ph67 = phi i32* [ @_cctk_one, %851 ], [ %855, %854 ]
  %.pr68 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKGROUPNUM_confac, align 4, !tbaa !2
  %857 = icmp slt i32 %.pr68, 0
  br i1 %857, label %.thread73, label %858

; <label>:858                                     ; preds = %856
  %859 = tail call i32 @CCTK_QueryGroupStorage(%struct.cGH* %GH, i8* getelementptr inbounds ([17 x i8]* @.str61, i64 0, i64 0)) #2
  %860 = icmp eq i32 %859, 0
  br i1 %860, label %.thread69, label %861

; <label>:861                                     ; preds = %858
  %862 = tail call i32* @CCTK_ArrayGroupSize(%struct.cGH* %GH, i32 1, i8* getelementptr inbounds ([17 x i8]* @.str61, i64 0, i64 0)) #2
  br label %.thread69

.thread69:                                        ; preds = %858, %861
  %.ph71.ph = phi i32* [ %862, %861 ], [ @_cctk_one, %858 ]
  %.pr72.pr = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKGROUPNUM_confac, align 4, !tbaa !2
  %863 = icmp slt i32 %.pr72.pr, 0
  br i1 %863, label %.thread73, label %864

; <label>:864                                     ; preds = %.thread69
  %865 = tail call i32 @CCTK_QueryGroupStorage(%struct.cGH* %GH, i8* getelementptr inbounds ([17 x i8]* @.str61, i64 0, i64 0)) #2
  %866 = icmp eq i32 %865, 0
  br i1 %866, label %.thread73, label %867

; <label>:867                                     ; preds = %864
  %868 = tail call i32* @CCTK_ArrayGroupSize(%struct.cGH* %GH, i32 2, i8* getelementptr inbounds ([17 x i8]* @.str61, i64 0, i64 0)) #2
  br label %.thread73

.thread73:                                        ; preds = %846, %856, %864, %867, %.thread69
  %869 = phi i32* [ %.ph71.ph, %.thread69 ], [ %.ph71.ph, %867 ], [ %.ph71.ph, %864 ], [ @_cctk_one, %856 ], [ @_cctk_one, %846 ]
  %870 = phi i32* [ %.ph67, %.thread69 ], [ %.ph67, %867 ], [ %.ph67, %864 ], [ %.ph67, %856 ], [ @_cctk_one, %846 ]
  %871 = phi i32* [ @_cctk_one, %.thread69 ], [ %868, %867 ], [ @_cctk_one, %864 ], [ @_cctk_one, %856 ], [ @_cctk_one, %846 ]
  %872 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKGROUPNUM_confac_1derivs, align 4, !tbaa !2
  %873 = icmp slt i32 %872, 0
  br i1 %873, label %.thread80, label %874

; <label>:874                                     ; preds = %.thread73
  %875 = tail call i32 @CCTK_QueryGroupStorage(%struct.cGH* %GH, i8* getelementptr inbounds ([25 x i8]* @.str63, i64 0, i64 0)) #2
  %876 = icmp eq i32 %875, 0
  br i1 %876, label %879, label %877

; <label>:877                                     ; preds = %874
  %878 = tail call i32* @CCTK_ArrayGroupSize(%struct.cGH* %GH, i32 0, i8* getelementptr inbounds ([25 x i8]* @.str63, i64 0, i64 0)) #2
  br label %879

; <label>:879                                     ; preds = %874, %877
  %.ph74 = phi i32* [ @_cctk_one, %874 ], [ %878, %877 ]
  %.pr75 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKGROUPNUM_confac_1derivs, align 4, !tbaa !2
  %880 = icmp slt i32 %.pr75, 0
  br i1 %880, label %.thread80, label %881

; <label>:881                                     ; preds = %879
  %882 = tail call i32 @CCTK_QueryGroupStorage(%struct.cGH* %GH, i8* getelementptr inbounds ([25 x i8]* @.str63, i64 0, i64 0)) #2
  %883 = icmp eq i32 %882, 0
  br i1 %883, label %.thread76, label %884

; <label>:884                                     ; preds = %881
  %885 = tail call i32* @CCTK_ArrayGroupSize(%struct.cGH* %GH, i32 1, i8* getelementptr inbounds ([25 x i8]* @.str63, i64 0, i64 0)) #2
  br label %.thread76

.thread76:                                        ; preds = %881, %884
  %.ph78.ph = phi i32* [ %885, %884 ], [ @_cctk_one, %881 ]
  %.pr79.pr = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKGROUPNUM_confac_1derivs, align 4, !tbaa !2
  %886 = icmp slt i32 %.pr79.pr, 0
  br i1 %886, label %.thread80, label %887

; <label>:887                                     ; preds = %.thread76
  %888 = tail call i32 @CCTK_QueryGroupStorage(%struct.cGH* %GH, i8* getelementptr inbounds ([25 x i8]* @.str63, i64 0, i64 0)) #2
  %889 = icmp eq i32 %888, 0
  br i1 %889, label %.thread80, label %890

; <label>:890                                     ; preds = %887
  %891 = tail call i32* @CCTK_ArrayGroupSize(%struct.cGH* %GH, i32 2, i8* getelementptr inbounds ([25 x i8]* @.str63, i64 0, i64 0)) #2
  br label %.thread80

.thread80:                                        ; preds = %.thread73, %879, %887, %890, %.thread76
  %892 = phi i32* [ %.ph78.ph, %.thread76 ], [ %.ph78.ph, %890 ], [ %.ph78.ph, %887 ], [ @_cctk_one, %879 ], [ @_cctk_one, %.thread73 ]
  %893 = phi i32* [ %.ph74, %.thread76 ], [ %.ph74, %890 ], [ %.ph74, %887 ], [ %.ph74, %879 ], [ @_cctk_one, %.thread73 ]
  %894 = phi i32* [ @_cctk_one, %.thread76 ], [ %891, %890 ], [ @_cctk_one, %887 ], [ @_cctk_one, %879 ], [ @_cctk_one, %.thread73 ]
  %895 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKGROUPNUM_confac_2derivs, align 4, !tbaa !2
  %896 = icmp slt i32 %895, 0
  br i1 %896, label %.thread87, label %897

; <label>:897                                     ; preds = %.thread80
  %898 = tail call i32 @CCTK_QueryGroupStorage(%struct.cGH* %GH, i8* getelementptr inbounds ([25 x i8]* @.str65, i64 0, i64 0)) #2
  %899 = icmp eq i32 %898, 0
  br i1 %899, label %902, label %900

; <label>:900                                     ; preds = %897
  %901 = tail call i32* @CCTK_ArrayGroupSize(%struct.cGH* %GH, i32 0, i8* getelementptr inbounds ([25 x i8]* @.str65, i64 0, i64 0)) #2
  br label %902

; <label>:902                                     ; preds = %897, %900
  %.ph81 = phi i32* [ @_cctk_one, %897 ], [ %901, %900 ]
  %.pr82 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKGROUPNUM_confac_2derivs, align 4, !tbaa !2
  %903 = icmp slt i32 %.pr82, 0
  br i1 %903, label %.thread87, label %904

; <label>:904                                     ; preds = %902
  %905 = tail call i32 @CCTK_QueryGroupStorage(%struct.cGH* %GH, i8* getelementptr inbounds ([25 x i8]* @.str65, i64 0, i64 0)) #2
  %906 = icmp eq i32 %905, 0
  br i1 %906, label %.thread83, label %907

; <label>:907                                     ; preds = %904
  %908 = tail call i32* @CCTK_ArrayGroupSize(%struct.cGH* %GH, i32 1, i8* getelementptr inbounds ([25 x i8]* @.str65, i64 0, i64 0)) #2
  br label %.thread83

.thread83:                                        ; preds = %904, %907
  %.ph85.ph = phi i32* [ %908, %907 ], [ @_cctk_one, %904 ]
  %.pr86.pr = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKGROUPNUM_confac_2derivs, align 4, !tbaa !2
  %909 = icmp slt i32 %.pr86.pr, 0
  br i1 %909, label %.thread87, label %910

; <label>:910                                     ; preds = %.thread83
  %911 = tail call i32 @CCTK_QueryGroupStorage(%struct.cGH* %GH, i8* getelementptr inbounds ([25 x i8]* @.str65, i64 0, i64 0)) #2
  %912 = icmp eq i32 %911, 0
  br i1 %912, label %.thread87, label %913

; <label>:913                                     ; preds = %910
  %914 = tail call i32* @CCTK_ArrayGroupSize(%struct.cGH* %GH, i32 2, i8* getelementptr inbounds ([25 x i8]* @.str65, i64 0, i64 0)) #2
  br label %.thread87

.thread87:                                        ; preds = %.thread80, %902, %910, %913, %.thread83
  %915 = phi i32* [ %.ph85.ph, %.thread83 ], [ %.ph85.ph, %913 ], [ %.ph85.ph, %910 ], [ @_cctk_one, %902 ], [ @_cctk_one, %.thread80 ]
  %916 = phi i32* [ %.ph81, %.thread83 ], [ %.ph81, %913 ], [ %.ph81, %910 ], [ %.ph81, %902 ], [ @_cctk_one, %.thread80 ]
  %917 = phi i32* [ @_cctk_one, %.thread83 ], [ %914, %913 ], [ @_cctk_one, %910 ], [ @_cctk_one, %902 ], [ @_cctk_one, %.thread80 ]
  %918 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKGROUPNUM_coordinates, align 4, !tbaa !2
  %919 = icmp slt i32 %918, 0
  br i1 %919, label %.thread94, label %920

; <label>:920                                     ; preds = %.thread87
  %921 = tail call i32 @CCTK_QueryGroupStorage(%struct.cGH* %GH, i8* getelementptr inbounds ([18 x i8]* @.str74, i64 0, i64 0)) #2
  %922 = icmp eq i32 %921, 0
  br i1 %922, label %925, label %923

; <label>:923                                     ; preds = %920
  %924 = tail call i32* @CCTK_ArrayGroupSize(%struct.cGH* %GH, i32 0, i8* getelementptr inbounds ([18 x i8]* @.str74, i64 0, i64 0)) #2
  br label %925

; <label>:925                                     ; preds = %920, %923
  %.ph88 = phi i32* [ @_cctk_one, %920 ], [ %924, %923 ]
  %.pr89 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKGROUPNUM_coordinates, align 4, !tbaa !2
  %926 = icmp slt i32 %.pr89, 0
  br i1 %926, label %.thread94, label %927

; <label>:927                                     ; preds = %925
  %928 = tail call i32 @CCTK_QueryGroupStorage(%struct.cGH* %GH, i8* getelementptr inbounds ([18 x i8]* @.str74, i64 0, i64 0)) #2
  %929 = icmp eq i32 %928, 0
  br i1 %929, label %.thread90, label %930

; <label>:930                                     ; preds = %927
  %931 = tail call i32* @CCTK_ArrayGroupSize(%struct.cGH* %GH, i32 1, i8* getelementptr inbounds ([18 x i8]* @.str74, i64 0, i64 0)) #2
  br label %.thread90

.thread90:                                        ; preds = %927, %930
  %.ph92.ph = phi i32* [ %931, %930 ], [ @_cctk_one, %927 ]
  %.pr93.pr = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKGROUPNUM_coordinates, align 4, !tbaa !2
  %932 = icmp slt i32 %.pr93.pr, 0
  br i1 %932, label %.thread94, label %933

; <label>:933                                     ; preds = %.thread90
  %934 = tail call i32 @CCTK_QueryGroupStorage(%struct.cGH* %GH, i8* getelementptr inbounds ([18 x i8]* @.str74, i64 0, i64 0)) #2
  %935 = icmp eq i32 %934, 0
  br i1 %935, label %.thread94, label %936

; <label>:936                                     ; preds = %933
  %937 = tail call i32* @CCTK_ArrayGroupSize(%struct.cGH* %GH, i32 2, i8* getelementptr inbounds ([18 x i8]* @.str74, i64 0, i64 0)) #2
  br label %.thread94

.thread94:                                        ; preds = %.thread87, %925, %933, %936, %.thread90
  %938 = phi i32* [ %.ph92.ph, %.thread90 ], [ %.ph92.ph, %936 ], [ %.ph92.ph, %933 ], [ @_cctk_one, %925 ], [ @_cctk_one, %.thread87 ]
  %939 = phi i32* [ %.ph88, %.thread90 ], [ %.ph88, %936 ], [ %.ph88, %933 ], [ %.ph88, %925 ], [ @_cctk_one, %.thread87 ]
  %940 = phi i32* [ @_cctk_one, %.thread90 ], [ %937, %936 ], [ @_cctk_one, %933 ], [ @_cctk_one, %925 ], [ @_cctk_one, %.thread87 ]
  %941 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKGROUPNUM_curv, align 4, !tbaa !2
  %942 = icmp slt i32 %941, 0
  br i1 %942, label %.thread101, label %943

; <label>:943                                     ; preds = %.thread94
  %944 = tail call i32 @CCTK_QueryGroupStorage(%struct.cGH* %GH, i8* getelementptr inbounds ([15 x i8]* @.str54, i64 0, i64 0)) #2
  %945 = icmp eq i32 %944, 0
  br i1 %945, label %948, label %946

; <label>:946                                     ; preds = %943
  %947 = tail call i32* @CCTK_ArrayGroupSize(%struct.cGH* %GH, i32 0, i8* getelementptr inbounds ([15 x i8]* @.str54, i64 0, i64 0)) #2
  br label %948

; <label>:948                                     ; preds = %943, %946
  %.ph95 = phi i32* [ @_cctk_one, %943 ], [ %947, %946 ]
  %.pr96 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKGROUPNUM_curv, align 4, !tbaa !2
  %949 = icmp slt i32 %.pr96, 0
  br i1 %949, label %.thread101, label %950

; <label>:950                                     ; preds = %948
  %951 = tail call i32 @CCTK_QueryGroupStorage(%struct.cGH* %GH, i8* getelementptr inbounds ([15 x i8]* @.str54, i64 0, i64 0)) #2
  %952 = icmp eq i32 %951, 0
  br i1 %952, label %.thread97, label %953

; <label>:953                                     ; preds = %950
  %954 = tail call i32* @CCTK_ArrayGroupSize(%struct.cGH* %GH, i32 1, i8* getelementptr inbounds ([15 x i8]* @.str54, i64 0, i64 0)) #2
  br label %.thread97

.thread97:                                        ; preds = %950, %953
  %.ph99.ph = phi i32* [ %954, %953 ], [ @_cctk_one, %950 ]
  %.pr100.pr = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKGROUPNUM_curv, align 4, !tbaa !2
  %955 = icmp slt i32 %.pr100.pr, 0
  br i1 %955, label %.thread101, label %956

; <label>:956                                     ; preds = %.thread97
  %957 = tail call i32 @CCTK_QueryGroupStorage(%struct.cGH* %GH, i8* getelementptr inbounds ([15 x i8]* @.str54, i64 0, i64 0)) #2
  %958 = icmp eq i32 %957, 0
  br i1 %958, label %.thread101, label %959

; <label>:959                                     ; preds = %956
  %960 = tail call i32* @CCTK_ArrayGroupSize(%struct.cGH* %GH, i32 2, i8* getelementptr inbounds ([15 x i8]* @.str54, i64 0, i64 0)) #2
  br label %.thread101

.thread101:                                       ; preds = %.thread94, %948, %956, %959, %.thread97
  %961 = phi i32* [ %.ph99.ph, %.thread97 ], [ %.ph99.ph, %959 ], [ %.ph99.ph, %956 ], [ @_cctk_one, %948 ], [ @_cctk_one, %.thread94 ]
  %962 = phi i32* [ %.ph95, %.thread97 ], [ %.ph95, %959 ], [ %.ph95, %956 ], [ %.ph95, %948 ], [ @_cctk_one, %.thread94 ]
  %963 = phi i32* [ @_cctk_one, %.thread97 ], [ %960, %959 ], [ @_cctk_one, %956 ], [ @_cctk_one, %948 ], [ @_cctk_one, %.thread94 ]
  %964 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKGROUPNUM_lapse, align 4, !tbaa !2
  %965 = icmp slt i32 %964, 0
  br i1 %965, label %.thread108, label %966

; <label>:966                                     ; preds = %.thread101
  %967 = tail call i32 @CCTK_QueryGroupStorage(%struct.cGH* %GH, i8* getelementptr inbounds ([16 x i8]* @.str30, i64 0, i64 0)) #2
  %968 = icmp eq i32 %967, 0
  br i1 %968, label %971, label %969

; <label>:969                                     ; preds = %966
  %970 = tail call i32* @CCTK_ArrayGroupSize(%struct.cGH* %GH, i32 0, i8* getelementptr inbounds ([16 x i8]* @.str30, i64 0, i64 0)) #2
  br label %971

; <label>:971                                     ; preds = %966, %969
  %.ph102 = phi i32* [ @_cctk_one, %966 ], [ %970, %969 ]
  %.pr103 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKGROUPNUM_lapse, align 4, !tbaa !2
  %972 = icmp slt i32 %.pr103, 0
  br i1 %972, label %.thread108, label %973

; <label>:973                                     ; preds = %971
  %974 = tail call i32 @CCTK_QueryGroupStorage(%struct.cGH* %GH, i8* getelementptr inbounds ([16 x i8]* @.str30, i64 0, i64 0)) #2
  %975 = icmp eq i32 %974, 0
  br i1 %975, label %.thread104, label %976

; <label>:976                                     ; preds = %973
  %977 = tail call i32* @CCTK_ArrayGroupSize(%struct.cGH* %GH, i32 1, i8* getelementptr inbounds ([16 x i8]* @.str30, i64 0, i64 0)) #2
  br label %.thread104

.thread104:                                       ; preds = %973, %976
  %.ph106.ph = phi i32* [ %977, %976 ], [ @_cctk_one, %973 ]
  %.pr107.pr = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKGROUPNUM_lapse, align 4, !tbaa !2
  %978 = icmp slt i32 %.pr107.pr, 0
  br i1 %978, label %.thread108, label %979

; <label>:979                                     ; preds = %.thread104
  %980 = tail call i32 @CCTK_QueryGroupStorage(%struct.cGH* %GH, i8* getelementptr inbounds ([16 x i8]* @.str30, i64 0, i64 0)) #2
  %981 = icmp eq i32 %980, 0
  br i1 %981, label %.thread108, label %982

; <label>:982                                     ; preds = %979
  %983 = tail call i32* @CCTK_ArrayGroupSize(%struct.cGH* %GH, i32 2, i8* getelementptr inbounds ([16 x i8]* @.str30, i64 0, i64 0)) #2
  br label %.thread108

.thread108:                                       ; preds = %.thread101, %971, %979, %982, %.thread104
  %984 = phi i32* [ %.ph106.ph, %.thread104 ], [ %.ph106.ph, %982 ], [ %.ph106.ph, %979 ], [ @_cctk_one, %971 ], [ @_cctk_one, %.thread101 ]
  %985 = phi i32* [ %.ph102, %.thread104 ], [ %.ph102, %982 ], [ %.ph102, %979 ], [ %.ph102, %971 ], [ @_cctk_one, %.thread101 ]
  %986 = phi i32* [ @_cctk_one, %.thread104 ], [ %983, %982 ], [ @_cctk_one, %979 ], [ @_cctk_one, %971 ], [ @_cctk_one, %.thread101 ]
  %987 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKGROUPNUM_mask, align 4, !tbaa !2
  %988 = icmp slt i32 %987, 0
  br i1 %988, label %.thread115, label %989

; <label>:989                                     ; preds = %.thread108
  %990 = tail call i32 @CCTK_QueryGroupStorage(%struct.cGH* %GH, i8* getelementptr inbounds ([15 x i8]* @.str45, i64 0, i64 0)) #2
  %991 = icmp eq i32 %990, 0
  br i1 %991, label %994, label %992

; <label>:992                                     ; preds = %989
  %993 = tail call i32* @CCTK_ArrayGroupSize(%struct.cGH* %GH, i32 0, i8* getelementptr inbounds ([15 x i8]* @.str45, i64 0, i64 0)) #2
  br label %994

; <label>:994                                     ; preds = %989, %992
  %.ph109 = phi i32* [ @_cctk_one, %989 ], [ %993, %992 ]
  %.pr110 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKGROUPNUM_mask, align 4, !tbaa !2
  %995 = icmp slt i32 %.pr110, 0
  br i1 %995, label %.thread115, label %996

; <label>:996                                     ; preds = %994
  %997 = tail call i32 @CCTK_QueryGroupStorage(%struct.cGH* %GH, i8* getelementptr inbounds ([15 x i8]* @.str45, i64 0, i64 0)) #2
  %998 = icmp eq i32 %997, 0
  br i1 %998, label %.thread111, label %999

; <label>:999                                     ; preds = %996
  %1000 = tail call i32* @CCTK_ArrayGroupSize(%struct.cGH* %GH, i32 1, i8* getelementptr inbounds ([15 x i8]* @.str45, i64 0, i64 0)) #2
  br label %.thread111

.thread111:                                       ; preds = %996, %999
  %.ph113.ph = phi i32* [ %1000, %999 ], [ @_cctk_one, %996 ]
  %.pr114.pr = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKGROUPNUM_mask, align 4, !tbaa !2
  %1001 = icmp slt i32 %.pr114.pr, 0
  br i1 %1001, label %.thread115, label %1002

; <label>:1002                                    ; preds = %.thread111
  %1003 = tail call i32 @CCTK_QueryGroupStorage(%struct.cGH* %GH, i8* getelementptr inbounds ([15 x i8]* @.str45, i64 0, i64 0)) #2
  %1004 = icmp eq i32 %1003, 0
  br i1 %1004, label %.thread115, label %1005

; <label>:1005                                    ; preds = %1002
  %1006 = tail call i32* @CCTK_ArrayGroupSize(%struct.cGH* %GH, i32 2, i8* getelementptr inbounds ([15 x i8]* @.str45, i64 0, i64 0)) #2
  br label %.thread115

.thread115:                                       ; preds = %.thread108, %994, %1002, %1005, %.thread111
  %1007 = phi i32* [ %.ph113.ph, %.thread111 ], [ %.ph113.ph, %1005 ], [ %.ph113.ph, %1002 ], [ @_cctk_one, %994 ], [ @_cctk_one, %.thread108 ]
  %1008 = phi i32* [ %.ph109, %.thread111 ], [ %.ph109, %1005 ], [ %.ph109, %1002 ], [ %.ph109, %994 ], [ @_cctk_one, %.thread108 ]
  %1009 = phi i32* [ @_cctk_one, %.thread111 ], [ %1006, %1005 ], [ @_cctk_one, %1002 ], [ @_cctk_one, %994 ], [ @_cctk_one, %.thread108 ]
  %1010 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKGROUPNUM_metric, align 4, !tbaa !2
  %1011 = icmp slt i32 %1010, 0
  br i1 %1011, label %.thread122, label %1012

; <label>:1012                                    ; preds = %.thread115
  %1013 = tail call i32 @CCTK_QueryGroupStorage(%struct.cGH* %GH, i8* getelementptr inbounds ([17 x i8]* @.str47, i64 0, i64 0)) #2
  %1014 = icmp eq i32 %1013, 0
  br i1 %1014, label %1017, label %1015

; <label>:1015                                    ; preds = %1012
  %1016 = tail call i32* @CCTK_ArrayGroupSize(%struct.cGH* %GH, i32 0, i8* getelementptr inbounds ([17 x i8]* @.str47, i64 0, i64 0)) #2
  br label %1017

; <label>:1017                                    ; preds = %1012, %1015
  %.ph116 = phi i32* [ @_cctk_one, %1012 ], [ %1016, %1015 ]
  %.pr117 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKGROUPNUM_metric, align 4, !tbaa !2
  %1018 = icmp slt i32 %.pr117, 0
  br i1 %1018, label %.thread122, label %1019

; <label>:1019                                    ; preds = %1017
  %1020 = tail call i32 @CCTK_QueryGroupStorage(%struct.cGH* %GH, i8* getelementptr inbounds ([17 x i8]* @.str47, i64 0, i64 0)) #2
  %1021 = icmp eq i32 %1020, 0
  br i1 %1021, label %.thread118, label %1022

; <label>:1022                                    ; preds = %1019
  %1023 = tail call i32* @CCTK_ArrayGroupSize(%struct.cGH* %GH, i32 1, i8* getelementptr inbounds ([17 x i8]* @.str47, i64 0, i64 0)) #2
  br label %.thread118

.thread118:                                       ; preds = %1019, %1022
  %.ph120.ph = phi i32* [ %1023, %1022 ], [ @_cctk_one, %1019 ]
  %.pr121.pr = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKGROUPNUM_metric, align 4, !tbaa !2
  %1024 = icmp slt i32 %.pr121.pr, 0
  br i1 %1024, label %.thread122, label %1025

; <label>:1025                                    ; preds = %.thread118
  %1026 = tail call i32 @CCTK_QueryGroupStorage(%struct.cGH* %GH, i8* getelementptr inbounds ([17 x i8]* @.str47, i64 0, i64 0)) #2
  %1027 = icmp eq i32 %1026, 0
  br i1 %1027, label %.thread122, label %1028

; <label>:1028                                    ; preds = %1025
  %1029 = tail call i32* @CCTK_ArrayGroupSize(%struct.cGH* %GH, i32 2, i8* getelementptr inbounds ([17 x i8]* @.str47, i64 0, i64 0)) #2
  br label %.thread122

.thread122:                                       ; preds = %.thread115, %1017, %1025, %1028, %.thread118
  %1030 = phi i32* [ %.ph120.ph, %.thread118 ], [ %.ph120.ph, %1028 ], [ %.ph120.ph, %1025 ], [ @_cctk_one, %1017 ], [ @_cctk_one, %.thread115 ]
  %1031 = phi i32* [ %.ph116, %.thread118 ], [ %.ph116, %1028 ], [ %.ph116, %1025 ], [ %.ph116, %1017 ], [ @_cctk_one, %.thread115 ]
  %1032 = phi i32* [ @_cctk_one, %.thread118 ], [ %1029, %1028 ], [ @_cctk_one, %1025 ], [ @_cctk_one, %1017 ], [ @_cctk_one, %.thread115 ]
  %1033 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKGROUPNUM_shift, align 4, !tbaa !2
  %1034 = icmp slt i32 %1033, 0
  br i1 %1034, label %.thread129, label %1035

; <label>:1035                                    ; preds = %.thread122
  %1036 = tail call i32 @CCTK_QueryGroupStorage(%struct.cGH* %GH, i8* getelementptr inbounds ([16 x i8]* @.str32, i64 0, i64 0)) #2
  %1037 = icmp eq i32 %1036, 0
  br i1 %1037, label %1040, label %1038

; <label>:1038                                    ; preds = %1035
  %1039 = tail call i32* @CCTK_ArrayGroupSize(%struct.cGH* %GH, i32 0, i8* getelementptr inbounds ([16 x i8]* @.str32, i64 0, i64 0)) #2
  br label %1040

; <label>:1040                                    ; preds = %1035, %1038
  %.ph123 = phi i32* [ @_cctk_one, %1035 ], [ %1039, %1038 ]
  %.pr124 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKGROUPNUM_shift, align 4, !tbaa !2
  %1041 = icmp slt i32 %.pr124, 0
  br i1 %1041, label %.thread129, label %1042

; <label>:1042                                    ; preds = %1040
  %1043 = tail call i32 @CCTK_QueryGroupStorage(%struct.cGH* %GH, i8* getelementptr inbounds ([16 x i8]* @.str32, i64 0, i64 0)) #2
  %1044 = icmp eq i32 %1043, 0
  br i1 %1044, label %.thread125, label %1045

; <label>:1045                                    ; preds = %1042
  %1046 = tail call i32* @CCTK_ArrayGroupSize(%struct.cGH* %GH, i32 1, i8* getelementptr inbounds ([16 x i8]* @.str32, i64 0, i64 0)) #2
  br label %.thread125

.thread125:                                       ; preds = %1042, %1045
  %.ph127.ph = phi i32* [ %1046, %1045 ], [ @_cctk_one, %1042 ]
  %.pr128.pr = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKGROUPNUM_shift, align 4, !tbaa !2
  %1047 = icmp slt i32 %.pr128.pr, 0
  br i1 %1047, label %.thread129, label %1048

; <label>:1048                                    ; preds = %.thread125
  %1049 = tail call i32 @CCTK_QueryGroupStorage(%struct.cGH* %GH, i8* getelementptr inbounds ([16 x i8]* @.str32, i64 0, i64 0)) #2
  %1050 = icmp eq i32 %1049, 0
  br i1 %1050, label %.thread129, label %1051

; <label>:1051                                    ; preds = %1048
  %1052 = tail call i32* @CCTK_ArrayGroupSize(%struct.cGH* %GH, i32 2, i8* getelementptr inbounds ([16 x i8]* @.str32, i64 0, i64 0)) #2
  br label %.thread129

.thread129:                                       ; preds = %.thread122, %1040, %1048, %1051, %.thread125
  %1053 = phi i32* [ %.ph127.ph, %.thread125 ], [ %.ph127.ph, %1051 ], [ %.ph127.ph, %1048 ], [ @_cctk_one, %1040 ], [ @_cctk_one, %.thread122 ]
  %1054 = phi i32* [ %.ph123, %.thread125 ], [ %.ph123, %1051 ], [ %.ph123, %1048 ], [ %.ph123, %1040 ], [ @_cctk_one, %.thread122 ]
  %1055 = phi i32* [ @_cctk_one, %.thread125 ], [ %1052, %1051 ], [ @_cctk_one, %1048 ], [ @_cctk_one, %1040 ], [ @_cctk_one, %.thread122 ]
  %1056 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_active_slicing_handle, align 4, !tbaa !2
  %1057 = icmp slt i32 %1056, 0
  br i1 %1057, label %1065, label %1058

; <label>:1058                                    ; preds = %.thread129
  %1059 = sext i32 %1056 to i64
  %1060 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17
  %1061 = load i8**** %1060, align 8, !tbaa !21
  %1062 = getelementptr inbounds i8*** %1061, i64 %1059
  %1063 = load i8*** %1062, align 8, !tbaa !22
  %1064 = load i8** %1063, align 8, !tbaa !22
  br label %1065

; <label>:1065                                    ; preds = %.thread129, %1058
  %1066 = phi i8* [ %1064, %1058 ], [ null, %.thread129 ]
  %1067 = bitcast i8* %1066 to i32*
  %1068 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_alp, align 4, !tbaa !2
  %1069 = icmp slt i32 %1068, 0
  br i1 %1069, label %1077, label %1070

; <label>:1070                                    ; preds = %1065
  %1071 = sext i32 %1068 to i64
  %1072 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17
  %1073 = load i8**** %1072, align 8, !tbaa !21
  %1074 = getelementptr inbounds i8*** %1073, i64 %1071
  %1075 = load i8*** %1074, align 8, !tbaa !22
  %1076 = load i8** %1075, align 8, !tbaa !22
  br label %1077

; <label>:1077                                    ; preds = %1065, %1070
  %1078 = phi i8* [ %1076, %1070 ], [ null, %1065 ]
  %1079 = bitcast i8* %1078 to double*
  %1080 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_betax, align 4, !tbaa !2
  %1081 = icmp slt i32 %1080, 0
  br i1 %1081, label %1089, label %1082

; <label>:1082                                    ; preds = %1077
  %1083 = sext i32 %1080 to i64
  %1084 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17
  %1085 = load i8**** %1084, align 8, !tbaa !21
  %1086 = getelementptr inbounds i8*** %1085, i64 %1083
  %1087 = load i8*** %1086, align 8, !tbaa !22
  %1088 = load i8** %1087, align 8, !tbaa !22
  br label %1089

; <label>:1089                                    ; preds = %1077, %1082
  %1090 = phi i8* [ %1088, %1082 ], [ null, %1077 ]
  %1091 = bitcast i8* %1090 to double*
  %1092 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_betay, align 4, !tbaa !2
  %1093 = icmp slt i32 %1092, 0
  br i1 %1093, label %1101, label %1094

; <label>:1094                                    ; preds = %1089
  %1095 = sext i32 %1092 to i64
  %1096 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17
  %1097 = load i8**** %1096, align 8, !tbaa !21
  %1098 = getelementptr inbounds i8*** %1097, i64 %1095
  %1099 = load i8*** %1098, align 8, !tbaa !22
  %1100 = load i8** %1099, align 8, !tbaa !22
  br label %1101

; <label>:1101                                    ; preds = %1089, %1094
  %1102 = phi i8* [ %1100, %1094 ], [ null, %1089 ]
  %1103 = bitcast i8* %1102 to double*
  %1104 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_betaz, align 4, !tbaa !2
  %1105 = icmp slt i32 %1104, 0
  br i1 %1105, label %1113, label %1106

; <label>:1106                                    ; preds = %1101
  %1107 = sext i32 %1104 to i64
  %1108 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17
  %1109 = load i8**** %1108, align 8, !tbaa !21
  %1110 = getelementptr inbounds i8*** %1109, i64 %1107
  %1111 = load i8*** %1110, align 8, !tbaa !22
  %1112 = load i8** %1111, align 8, !tbaa !22
  br label %1113

; <label>:1113                                    ; preds = %1101, %1106
  %1114 = phi i8* [ %1112, %1106 ], [ null, %1101 ]
  %1115 = bitcast i8* %1114 to double*
  %1116 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_coarse_dx, align 4, !tbaa !2
  %1117 = icmp slt i32 %1116, 0
  br i1 %1117, label %1125, label %1118

; <label>:1118                                    ; preds = %1113
  %1119 = sext i32 %1116 to i64
  %1120 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17
  %1121 = load i8**** %1120, align 8, !tbaa !21
  %1122 = getelementptr inbounds i8*** %1121, i64 %1119
  %1123 = load i8*** %1122, align 8, !tbaa !22
  %1124 = load i8** %1123, align 8, !tbaa !22
  br label %1125

; <label>:1125                                    ; preds = %1113, %1118
  %1126 = phi i8* [ %1124, %1118 ], [ null, %1113 ]
  %1127 = bitcast i8* %1126 to double*
  %1128 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_coarse_dy, align 4, !tbaa !2
  %1129 = icmp slt i32 %1128, 0
  br i1 %1129, label %1137, label %1130

; <label>:1130                                    ; preds = %1125
  %1131 = sext i32 %1128 to i64
  %1132 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17
  %1133 = load i8**** %1132, align 8, !tbaa !21
  %1134 = getelementptr inbounds i8*** %1133, i64 %1131
  %1135 = load i8*** %1134, align 8, !tbaa !22
  %1136 = load i8** %1135, align 8, !tbaa !22
  br label %1137

; <label>:1137                                    ; preds = %1125, %1130
  %1138 = phi i8* [ %1136, %1130 ], [ null, %1125 ]
  %1139 = bitcast i8* %1138 to double*
  %1140 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_coarse_dz, align 4, !tbaa !2
  %1141 = icmp slt i32 %1140, 0
  br i1 %1141, label %1149, label %1142

; <label>:1142                                    ; preds = %1137
  %1143 = sext i32 %1140 to i64
  %1144 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17
  %1145 = load i8**** %1144, align 8, !tbaa !21
  %1146 = getelementptr inbounds i8*** %1145, i64 %1143
  %1147 = load i8*** %1146, align 8, !tbaa !22
  %1148 = load i8** %1147, align 8, !tbaa !22
  br label %1149

; <label>:1149                                    ; preds = %1137, %1142
  %1150 = phi i8* [ %1148, %1142 ], [ null, %1137 ]
  %1151 = bitcast i8* %1150 to double*
  %1152 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_conformal_state, align 4, !tbaa !2
  %1153 = icmp slt i32 %1152, 0
  br i1 %1153, label %1161, label %1154

; <label>:1154                                    ; preds = %1149
  %1155 = sext i32 %1152 to i64
  %1156 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17
  %1157 = load i8**** %1156, align 8, !tbaa !21
  %1158 = getelementptr inbounds i8*** %1157, i64 %1155
  %1159 = load i8*** %1158, align 8, !tbaa !22
  %1160 = load i8** %1159, align 8, !tbaa !22
  br label %1161

; <label>:1161                                    ; preds = %1149, %1154
  %1162 = phi i8* [ %1160, %1154 ], [ null, %1149 ]
  %1163 = bitcast i8* %1162 to i32*
  %1164 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_courant_min_time, align 4, !tbaa !2
  %1165 = icmp slt i32 %1164, 0
  br i1 %1165, label %1173, label %1166

; <label>:1166                                    ; preds = %1161
  %1167 = sext i32 %1164 to i64
  %1168 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17
  %1169 = load i8**** %1168, align 8, !tbaa !21
  %1170 = getelementptr inbounds i8*** %1169, i64 %1167
  %1171 = load i8*** %1170, align 8, !tbaa !22
  %1172 = load i8** %1171, align 8, !tbaa !22
  br label %1173

; <label>:1173                                    ; preds = %1161, %1166
  %1174 = phi i8* [ %1172, %1166 ], [ null, %1161 ]
  %1175 = bitcast i8* %1174 to double*
  %1176 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_courant_wave_speed, align 4, !tbaa !2
  %1177 = icmp slt i32 %1176, 0
  br i1 %1177, label %1185, label %1178

; <label>:1178                                    ; preds = %1173
  %1179 = sext i32 %1176 to i64
  %1180 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17
  %1181 = load i8**** %1180, align 8, !tbaa !21
  %1182 = getelementptr inbounds i8*** %1181, i64 %1179
  %1183 = load i8*** %1182, align 8, !tbaa !22
  %1184 = load i8** %1183, align 8, !tbaa !22
  br label %1185

; <label>:1185                                    ; preds = %1173, %1178
  %1186 = phi i8* [ %1184, %1178 ], [ null, %1173 ]
  %1187 = bitcast i8* %1186 to double*
  %1188 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_emask, align 4, !tbaa !2
  %1189 = icmp slt i32 %1188, 0
  br i1 %1189, label %1197, label %1190

; <label>:1190                                    ; preds = %1185
  %1191 = sext i32 %1188 to i64
  %1192 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17
  %1193 = load i8**** %1192, align 8, !tbaa !21
  %1194 = getelementptr inbounds i8*** %1193, i64 %1191
  %1195 = load i8*** %1194, align 8, !tbaa !22
  %1196 = load i8** %1195, align 8, !tbaa !22
  br label %1197

; <label>:1197                                    ; preds = %1185, %1190
  %1198 = phi i8* [ %1196, %1190 ], [ null, %1185 ]
  %1199 = bitcast i8* %1198 to double*
  %1200 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_gxx, align 4, !tbaa !2
  %1201 = icmp slt i32 %1200, 0
  br i1 %1201, label %1209, label %1202

; <label>:1202                                    ; preds = %1197
  %1203 = sext i32 %1200 to i64
  %1204 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17
  %1205 = load i8**** %1204, align 8, !tbaa !21
  %1206 = getelementptr inbounds i8*** %1205, i64 %1203
  %1207 = load i8*** %1206, align 8, !tbaa !22
  %1208 = load i8** %1207, align 8, !tbaa !22
  br label %1209

; <label>:1209                                    ; preds = %1197, %1202
  %1210 = phi i8* [ %1208, %1202 ], [ null, %1197 ]
  %1211 = bitcast i8* %1210 to double*
  %1212 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_gxy, align 4, !tbaa !2
  %1213 = icmp slt i32 %1212, 0
  br i1 %1213, label %1221, label %1214

; <label>:1214                                    ; preds = %1209
  %1215 = sext i32 %1212 to i64
  %1216 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17
  %1217 = load i8**** %1216, align 8, !tbaa !21
  %1218 = getelementptr inbounds i8*** %1217, i64 %1215
  %1219 = load i8*** %1218, align 8, !tbaa !22
  %1220 = load i8** %1219, align 8, !tbaa !22
  br label %1221

; <label>:1221                                    ; preds = %1209, %1214
  %1222 = phi i8* [ %1220, %1214 ], [ null, %1209 ]
  %1223 = bitcast i8* %1222 to double*
  %1224 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_gxz, align 4, !tbaa !2
  %1225 = icmp slt i32 %1224, 0
  br i1 %1225, label %1233, label %1226

; <label>:1226                                    ; preds = %1221
  %1227 = sext i32 %1224 to i64
  %1228 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17
  %1229 = load i8**** %1228, align 8, !tbaa !21
  %1230 = getelementptr inbounds i8*** %1229, i64 %1227
  %1231 = load i8*** %1230, align 8, !tbaa !22
  %1232 = load i8** %1231, align 8, !tbaa !22
  br label %1233

; <label>:1233                                    ; preds = %1221, %1226
  %1234 = phi i8* [ %1232, %1226 ], [ null, %1221 ]
  %1235 = bitcast i8* %1234 to double*
  %1236 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_gyy, align 4, !tbaa !2
  %1237 = icmp slt i32 %1236, 0
  br i1 %1237, label %1245, label %1238

; <label>:1238                                    ; preds = %1233
  %1239 = sext i32 %1236 to i64
  %1240 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17
  %1241 = load i8**** %1240, align 8, !tbaa !21
  %1242 = getelementptr inbounds i8*** %1241, i64 %1239
  %1243 = load i8*** %1242, align 8, !tbaa !22
  %1244 = load i8** %1243, align 8, !tbaa !22
  br label %1245

; <label>:1245                                    ; preds = %1233, %1238
  %1246 = phi i8* [ %1244, %1238 ], [ null, %1233 ]
  %1247 = bitcast i8* %1246 to double*
  %1248 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_gyz, align 4, !tbaa !2
  %1249 = icmp slt i32 %1248, 0
  br i1 %1249, label %1257, label %1250

; <label>:1250                                    ; preds = %1245
  %1251 = sext i32 %1248 to i64
  %1252 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17
  %1253 = load i8**** %1252, align 8, !tbaa !21
  %1254 = getelementptr inbounds i8*** %1253, i64 %1251
  %1255 = load i8*** %1254, align 8, !tbaa !22
  %1256 = load i8** %1255, align 8, !tbaa !22
  br label %1257

; <label>:1257                                    ; preds = %1245, %1250
  %1258 = phi i8* [ %1256, %1250 ], [ null, %1245 ]
  %1259 = bitcast i8* %1258 to double*
  %1260 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_gzz, align 4, !tbaa !2
  %1261 = icmp slt i32 %1260, 0
  br i1 %1261, label %1269, label %1262

; <label>:1262                                    ; preds = %1257
  %1263 = sext i32 %1260 to i64
  %1264 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17
  %1265 = load i8**** %1264, align 8, !tbaa !21
  %1266 = getelementptr inbounds i8*** %1265, i64 %1263
  %1267 = load i8*** %1266, align 8, !tbaa !22
  %1268 = load i8** %1267, align 8, !tbaa !22
  br label %1269

; <label>:1269                                    ; preds = %1257, %1262
  %1270 = phi i8* [ %1268, %1262 ], [ null, %1257 ]
  %1271 = bitcast i8* %1270 to double*
  %1272 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_kxx, align 4, !tbaa !2
  %1273 = icmp slt i32 %1272, 0
  br i1 %1273, label %1281, label %1274

; <label>:1274                                    ; preds = %1269
  %1275 = sext i32 %1272 to i64
  %1276 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17
  %1277 = load i8**** %1276, align 8, !tbaa !21
  %1278 = getelementptr inbounds i8*** %1277, i64 %1275
  %1279 = load i8*** %1278, align 8, !tbaa !22
  %1280 = load i8** %1279, align 8, !tbaa !22
  br label %1281

; <label>:1281                                    ; preds = %1269, %1274
  %1282 = phi i8* [ %1280, %1274 ], [ null, %1269 ]
  %1283 = bitcast i8* %1282 to double*
  %1284 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_kxy, align 4, !tbaa !2
  %1285 = icmp slt i32 %1284, 0
  br i1 %1285, label %1293, label %1286

; <label>:1286                                    ; preds = %1281
  %1287 = sext i32 %1284 to i64
  %1288 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17
  %1289 = load i8**** %1288, align 8, !tbaa !21
  %1290 = getelementptr inbounds i8*** %1289, i64 %1287
  %1291 = load i8*** %1290, align 8, !tbaa !22
  %1292 = load i8** %1291, align 8, !tbaa !22
  br label %1293

; <label>:1293                                    ; preds = %1281, %1286
  %1294 = phi i8* [ %1292, %1286 ], [ null, %1281 ]
  %1295 = bitcast i8* %1294 to double*
  %1296 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_kxz, align 4, !tbaa !2
  %1297 = icmp slt i32 %1296, 0
  br i1 %1297, label %1305, label %1298

; <label>:1298                                    ; preds = %1293
  %1299 = sext i32 %1296 to i64
  %1300 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17
  %1301 = load i8**** %1300, align 8, !tbaa !21
  %1302 = getelementptr inbounds i8*** %1301, i64 %1299
  %1303 = load i8*** %1302, align 8, !tbaa !22
  %1304 = load i8** %1303, align 8, !tbaa !22
  br label %1305

; <label>:1305                                    ; preds = %1293, %1298
  %1306 = phi i8* [ %1304, %1298 ], [ null, %1293 ]
  %1307 = bitcast i8* %1306 to double*
  %1308 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_kyy, align 4, !tbaa !2
  %1309 = icmp slt i32 %1308, 0
  br i1 %1309, label %1317, label %1310

; <label>:1310                                    ; preds = %1305
  %1311 = sext i32 %1308 to i64
  %1312 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17
  %1313 = load i8**** %1312, align 8, !tbaa !21
  %1314 = getelementptr inbounds i8*** %1313, i64 %1311
  %1315 = load i8*** %1314, align 8, !tbaa !22
  %1316 = load i8** %1315, align 8, !tbaa !22
  br label %1317

; <label>:1317                                    ; preds = %1305, %1310
  %1318 = phi i8* [ %1316, %1310 ], [ null, %1305 ]
  %1319 = bitcast i8* %1318 to double*
  %1320 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_kyz, align 4, !tbaa !2
  %1321 = icmp slt i32 %1320, 0
  br i1 %1321, label %1329, label %1322

; <label>:1322                                    ; preds = %1317
  %1323 = sext i32 %1320 to i64
  %1324 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17
  %1325 = load i8**** %1324, align 8, !tbaa !21
  %1326 = getelementptr inbounds i8*** %1325, i64 %1323
  %1327 = load i8*** %1326, align 8, !tbaa !22
  %1328 = load i8** %1327, align 8, !tbaa !22
  br label %1329

; <label>:1329                                    ; preds = %1317, %1322
  %1330 = phi i8* [ %1328, %1322 ], [ null, %1317 ]
  %1331 = bitcast i8* %1330 to double*
  %1332 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_kzz, align 4, !tbaa !2
  %1333 = icmp slt i32 %1332, 0
  br i1 %1333, label %1342, label %1334

; <label>:1334                                    ; preds = %1329
  %1335 = sext i32 %1332 to i64
  %1336 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17
  %1337 = load i8**** %1336, align 8, !tbaa !21
  %1338 = getelementptr inbounds i8*** %1337, i64 %1335
  %1339 = bitcast i8*** %1338 to double***
  %1340 = load double*** %1339, align 8, !tbaa !22
  %1341 = load double** %1340, align 8, !tbaa !22
  br label %1342

; <label>:1342                                    ; preds = %1329, %1334
  %1343 = phi double* [ %1341, %1334 ], [ null, %1329 ]
  %1344 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_psi, align 4, !tbaa !2
  %1345 = icmp slt i32 %1344, 0
  br i1 %1345, label %1354, label %1346

; <label>:1346                                    ; preds = %1342
  %1347 = sext i32 %1344 to i64
  %1348 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17
  %1349 = load i8**** %1348, align 8, !tbaa !21
  %1350 = getelementptr inbounds i8*** %1349, i64 %1347
  %1351 = bitcast i8*** %1350 to double***
  %1352 = load double*** %1351, align 8, !tbaa !22
  %1353 = load double** %1352, align 8, !tbaa !22
  br label %1354

; <label>:1354                                    ; preds = %1342, %1346
  %1355 = phi double* [ %1353, %1346 ], [ null, %1342 ]
  %1356 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_psix, align 4, !tbaa !2
  %1357 = icmp slt i32 %1356, 0
  br i1 %1357, label %1366, label %1358

; <label>:1358                                    ; preds = %1354
  %1359 = sext i32 %1356 to i64
  %1360 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17
  %1361 = load i8**** %1360, align 8, !tbaa !21
  %1362 = getelementptr inbounds i8*** %1361, i64 %1359
  %1363 = bitcast i8*** %1362 to double***
  %1364 = load double*** %1363, align 8, !tbaa !22
  %1365 = load double** %1364, align 8, !tbaa !22
  br label %1366

; <label>:1366                                    ; preds = %1354, %1358
  %1367 = phi double* [ %1365, %1358 ], [ null, %1354 ]
  %1368 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_psixx, align 4, !tbaa !2
  %1369 = icmp slt i32 %1368, 0
  br i1 %1369, label %1378, label %1370

; <label>:1370                                    ; preds = %1366
  %1371 = sext i32 %1368 to i64
  %1372 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17
  %1373 = load i8**** %1372, align 8, !tbaa !21
  %1374 = getelementptr inbounds i8*** %1373, i64 %1371
  %1375 = bitcast i8*** %1374 to double***
  %1376 = load double*** %1375, align 8, !tbaa !22
  %1377 = load double** %1376, align 8, !tbaa !22
  br label %1378

; <label>:1378                                    ; preds = %1366, %1370
  %1379 = phi double* [ %1377, %1370 ], [ null, %1366 ]
  %1380 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_psixy, align 4, !tbaa !2
  %1381 = icmp slt i32 %1380, 0
  br i1 %1381, label %1390, label %1382

; <label>:1382                                    ; preds = %1378
  %1383 = sext i32 %1380 to i64
  %1384 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17
  %1385 = load i8**** %1384, align 8, !tbaa !21
  %1386 = getelementptr inbounds i8*** %1385, i64 %1383
  %1387 = bitcast i8*** %1386 to double***
  %1388 = load double*** %1387, align 8, !tbaa !22
  %1389 = load double** %1388, align 8, !tbaa !22
  br label %1390

; <label>:1390                                    ; preds = %1378, %1382
  %1391 = phi double* [ %1389, %1382 ], [ null, %1378 ]
  %1392 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_psixz, align 4, !tbaa !2
  %1393 = icmp slt i32 %1392, 0
  br i1 %1393, label %1402, label %1394

; <label>:1394                                    ; preds = %1390
  %1395 = sext i32 %1392 to i64
  %1396 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17
  %1397 = load i8**** %1396, align 8, !tbaa !21
  %1398 = getelementptr inbounds i8*** %1397, i64 %1395
  %1399 = bitcast i8*** %1398 to double***
  %1400 = load double*** %1399, align 8, !tbaa !22
  %1401 = load double** %1400, align 8, !tbaa !22
  br label %1402

; <label>:1402                                    ; preds = %1390, %1394
  %1403 = phi double* [ %1401, %1394 ], [ null, %1390 ]
  %1404 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_psiy, align 4, !tbaa !2
  %1405 = icmp slt i32 %1404, 0
  br i1 %1405, label %1414, label %1406

; <label>:1406                                    ; preds = %1402
  %1407 = sext i32 %1404 to i64
  %1408 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17
  %1409 = load i8**** %1408, align 8, !tbaa !21
  %1410 = getelementptr inbounds i8*** %1409, i64 %1407
  %1411 = bitcast i8*** %1410 to double***
  %1412 = load double*** %1411, align 8, !tbaa !22
  %1413 = load double** %1412, align 8, !tbaa !22
  br label %1414

; <label>:1414                                    ; preds = %1402, %1406
  %1415 = phi double* [ %1413, %1406 ], [ null, %1402 ]
  %1416 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_psiyy, align 4, !tbaa !2
  %1417 = icmp slt i32 %1416, 0
  br i1 %1417, label %1426, label %1418

; <label>:1418                                    ; preds = %1414
  %1419 = sext i32 %1416 to i64
  %1420 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17
  %1421 = load i8**** %1420, align 8, !tbaa !21
  %1422 = getelementptr inbounds i8*** %1421, i64 %1419
  %1423 = bitcast i8*** %1422 to double***
  %1424 = load double*** %1423, align 8, !tbaa !22
  %1425 = load double** %1424, align 8, !tbaa !22
  br label %1426

; <label>:1426                                    ; preds = %1414, %1418
  %1427 = phi double* [ %1425, %1418 ], [ null, %1414 ]
  %1428 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_psiyz, align 4, !tbaa !2
  %1429 = icmp slt i32 %1428, 0
  br i1 %1429, label %1438, label %1430

; <label>:1430                                    ; preds = %1426
  %1431 = sext i32 %1428 to i64
  %1432 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17
  %1433 = load i8**** %1432, align 8, !tbaa !21
  %1434 = getelementptr inbounds i8*** %1433, i64 %1431
  %1435 = bitcast i8*** %1434 to double***
  %1436 = load double*** %1435, align 8, !tbaa !22
  %1437 = load double** %1436, align 8, !tbaa !22
  br label %1438

; <label>:1438                                    ; preds = %1426, %1430
  %1439 = phi double* [ %1437, %1430 ], [ null, %1426 ]
  %1440 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_psiz, align 4, !tbaa !2
  %1441 = icmp slt i32 %1440, 0
  br i1 %1441, label %1450, label %1442

; <label>:1442                                    ; preds = %1438
  %1443 = sext i32 %1440 to i64
  %1444 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17
  %1445 = load i8**** %1444, align 8, !tbaa !21
  %1446 = getelementptr inbounds i8*** %1445, i64 %1443
  %1447 = bitcast i8*** %1446 to double***
  %1448 = load double*** %1447, align 8, !tbaa !22
  %1449 = load double** %1448, align 8, !tbaa !22
  br label %1450

; <label>:1450                                    ; preds = %1438, %1442
  %1451 = phi double* [ %1449, %1442 ], [ null, %1438 ]
  %1452 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_psizz, align 4, !tbaa !2
  %1453 = icmp slt i32 %1452, 0
  br i1 %1453, label %1462, label %1454

; <label>:1454                                    ; preds = %1450
  %1455 = sext i32 %1452 to i64
  %1456 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17
  %1457 = load i8**** %1456, align 8, !tbaa !21
  %1458 = getelementptr inbounds i8*** %1457, i64 %1455
  %1459 = bitcast i8*** %1458 to double***
  %1460 = load double*** %1459, align 8, !tbaa !22
  %1461 = load double** %1460, align 8, !tbaa !22
  br label %1462

; <label>:1462                                    ; preds = %1450, %1454
  %1463 = phi double* [ %1461, %1454 ], [ null, %1450 ]
  %1464 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_r, align 4, !tbaa !2
  %1465 = icmp slt i32 %1464, 0
  br i1 %1465, label %1474, label %1466

; <label>:1466                                    ; preds = %1462
  %1467 = sext i32 %1464 to i64
  %1468 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17
  %1469 = load i8**** %1468, align 8, !tbaa !21
  %1470 = getelementptr inbounds i8*** %1469, i64 %1467
  %1471 = bitcast i8*** %1470 to double***
  %1472 = load double*** %1471, align 8, !tbaa !22
  %1473 = load double** %1472, align 8, !tbaa !22
  br label %1474

; <label>:1474                                    ; preds = %1462, %1466
  %1475 = phi double* [ %1473, %1466 ], [ null, %1462 ]
  %1476 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_shift_state, align 4, !tbaa !2
  %1477 = icmp slt i32 %1476, 0
  br i1 %1477, label %1486, label %1478

; <label>:1478                                    ; preds = %1474
  %1479 = sext i32 %1476 to i64
  %1480 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17
  %1481 = load i8**** %1480, align 8, !tbaa !21
  %1482 = getelementptr inbounds i8*** %1481, i64 %1479
  %1483 = bitcast i8*** %1482 to i32***
  %1484 = load i32*** %1483, align 8, !tbaa !22
  %1485 = load i32** %1484, align 8, !tbaa !22
  br label %1486

; <label>:1486                                    ; preds = %1474, %1478
  %1487 = phi i32* [ %1485, %1478 ], [ null, %1474 ]
  %1488 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_x, align 4, !tbaa !2
  %1489 = icmp slt i32 %1488, 0
  br i1 %1489, label %1498, label %1490

; <label>:1490                                    ; preds = %1486
  %1491 = sext i32 %1488 to i64
  %1492 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17
  %1493 = load i8**** %1492, align 8, !tbaa !21
  %1494 = getelementptr inbounds i8*** %1493, i64 %1491
  %1495 = bitcast i8*** %1494 to double***
  %1496 = load double*** %1495, align 8, !tbaa !22
  %1497 = load double** %1496, align 8, !tbaa !22
  br label %1498

; <label>:1498                                    ; preds = %1486, %1490
  %1499 = phi double* [ %1497, %1490 ], [ null, %1486 ]
  %1500 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_y, align 4, !tbaa !2
  %1501 = icmp slt i32 %1500, 0
  br i1 %1501, label %1510, label %1502

; <label>:1502                                    ; preds = %1498
  %1503 = sext i32 %1500 to i64
  %1504 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17
  %1505 = load i8**** %1504, align 8, !tbaa !21
  %1506 = getelementptr inbounds i8*** %1505, i64 %1503
  %1507 = bitcast i8*** %1506 to double***
  %1508 = load double*** %1507, align 8, !tbaa !22
  %1509 = load double** %1508, align 8, !tbaa !22
  br label %1510

; <label>:1510                                    ; preds = %1498, %1502
  %1511 = phi double* [ %1509, %1502 ], [ null, %1498 ]
  %1512 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_z, align 4, !tbaa !2
  %1513 = icmp slt i32 %1512, 0
  br i1 %1513, label %1522, label %1514

; <label>:1514                                    ; preds = %1510
  %1515 = sext i32 %1512 to i64
  %1516 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17
  %1517 = load i8**** %1516, align 8, !tbaa !21
  %1518 = getelementptr inbounds i8*** %1517, i64 %1515
  %1519 = bitcast i8*** %1518 to double***
  %1520 = load double*** %1519, align 8, !tbaa !22
  %1521 = load double** %1520, align 8, !tbaa !22
  br label %1522

; <label>:1522                                    ; preds = %1510, %1514
  %1523 = phi double* [ %1521, %1514 ], [ null, %1510 ]
  tail call void %396(i32* %397, i32* %399, i32* %401, i32* %403, i32* %405, i32* %407, i32* %409, i32* %411, i32* %413, double* %414, double* %415, double* %417, double* %419, i32* %421, i32* %422, i32* %424, i32* %425, %struct.cGH* %GH, i32* %447, i32* %446, i32* %448, i32* %470, i32* %469, i32* %471, i32* %493, i32* %492, i32* %494, double* %508, double* %510, double* %524, double* %526, double* %540, double* %542, double* %556, double* %558, double* %572, double* %574, double* %588, double* %590, double* %607, double* %606, double* %609, double* %626, double* %625, double* %628, double* %645, double* %644, double* %647, double* %664, double* %663, double* %666, double* %683, double* %682, double* %685, double* %702, double* %701, double* %704, double* %716, double* %728, double* %740, double* %752, double* %764, double* %776, double* %788, double* %800, double* %812, double* %824, double* %836, double* %848, i32* %870, i32* %869, i32* %871, i32* %893, i32* %892, i32* %894, i32* %916, i32* %915, i32* %917, i32* %939, i32* %938, i32* %940, i32* %962, i32* %961, i32* %963, i32* %985, i32* %984, i32* %986, i32* %1008, i32* %1007, i32* %1009, i32* %1031, i32* %1030, i32* %1032, i32* %1054, i32* %1053, i32* %1055, i32* %1067, double* %1079, double* %1091, double* %1103, double* %1115, double* %1127, double* %1139, double* %1151, i32* %1163, double* %1175, double* %1187, double* %1199, double* %1211, double* %1223, double* %1235, double* %1247, double* %1259, double* %1271, double* %1283, double* %1295, double* %1307, double* %1319, double* %1331, double* %1343, double* %1355, double* %1367, double* %1379, double* %1391, double* %1403, double* %1415, double* %1427, double* %1439, double* %1451, double* %1463, double* %1475, i32* %1487, double* %1499, double* %1511, double* %1523) #2
  ret i32 0
}

; Function Attrs: optsize
declare i32 @CCTK_VarIndex(i8*) #1

; Function Attrs: optsize
declare i32 @CCTK_GroupIndex(i8*) #1

; Function Attrs: optsize
declare i32 @CCTK_QueryGroupStorage(%struct.cGH*, i8*) #1

; Function Attrs: optsize
declare i32* @CCTK_ArrayGroupSize(%struct.cGH*, i32, i8*) #1

attributes #0 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!2 = !{!3, !3, i64 0}
!3 = !{!"int", !4, i64 0}
!4 = !{!"omnipotent char", !5, i64 0}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!7, !8, i64 8}
!7 = !{!"", !3, i64 0, !3, i64 4, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !8, i64 40, !8, i64 48, !8, i64 56, !9, i64 64, !8, i64 72, !8, i64 80, !8, i64 88, !8, i64 96, !3, i64 104, !8, i64 112, !9, i64 120, !8, i64 128, !8, i64 136, !8, i64 144}
!8 = !{!"any pointer", !4, i64 0}
!9 = !{!"double", !4, i64 0}
!10 = !{!7, !8, i64 16}
!11 = !{!7, !8, i64 24}
!12 = !{!7, !8, i64 32}
!13 = !{!7, !8, i64 40}
!14 = !{!7, !8, i64 56}
!15 = !{!7, !8, i64 48}
!16 = !{!7, !8, i64 88}
!17 = !{!7, !8, i64 72}
!18 = !{!7, !8, i64 80}
!19 = !{!7, !8, i64 96}
!20 = !{!7, !8, i64 112}
!21 = !{!7, !8, i64 128}
!22 = !{!8, !8, i64 0}