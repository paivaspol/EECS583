; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/CactusBindings/Einstein_FortranWrapper.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.cGH = type { i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, double, double*, double*, i32*, i32*, i32, i32*, double, i8***, i8**, %struct.cGHGroupData* }
%struct.cGHGroupData = type { i8, i8 }

@CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_detg = internal unnamed_addr global i32 -1, align 4
@CCTKi_BindingsFortranWrapperEinstein.CCTKGROUPNUM_detofg = internal unnamed_addr global i32 -1, align 4
@CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_gpp = internal unnamed_addr global i32 -1, align 4
@CCTKi_BindingsFortranWrapperEinstein.CCTKGROUPNUM_spherical_metric = internal unnamed_addr global i32 -1, align 4
@CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_gqp = internal unnamed_addr global i32 -1, align 4
@CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_gqq = internal unnamed_addr global i32 -1, align 4
@CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_grp = internal unnamed_addr global i32 -1, align 4
@CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_grq = internal unnamed_addr global i32 -1, align 4
@CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_grr = internal unnamed_addr global i32 -1, align 4
@CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_kpp = internal unnamed_addr global i32 -1, align 4
@CCTKi_BindingsFortranWrapperEinstein.CCTKGROUPNUM_spherical_curv = internal unnamed_addr global i32 -1, align 4
@CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_kqp = internal unnamed_addr global i32 -1, align 4
@CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_kqq = internal unnamed_addr global i32 -1, align 4
@CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_krp = internal unnamed_addr global i32 -1, align 4
@CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_krq = internal unnamed_addr global i32 -1, align 4
@CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_krr = internal unnamed_addr global i32 -1, align 4
@CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_trK = internal unnamed_addr global i32 -1, align 4
@CCTKi_BindingsFortranWrapperEinstein.CCTKGROUPNUM_trace_of_K = internal unnamed_addr global i32 -1, align 4
@CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_active_slicing_handle = internal unnamed_addr global i32 -1, align 4
@CCTKi_BindingsFortranWrapperEinstein.CCTKGROUPNUM_slicing_flags = internal unnamed_addr global i32 -1, align 4
@CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_alp = internal unnamed_addr global i32 -1, align 4
@CCTKi_BindingsFortranWrapperEinstein.CCTKGROUPNUM_lapse = internal unnamed_addr global i32 -1, align 4
@CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_betax = internal unnamed_addr global i32 -1, align 4
@CCTKi_BindingsFortranWrapperEinstein.CCTKGROUPNUM_shift = internal unnamed_addr global i32 -1, align 4
@CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_betay = internal unnamed_addr global i32 -1, align 4
@CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_betaz = internal unnamed_addr global i32 -1, align 4
@CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_coarse_dx = internal unnamed_addr global i32 -1, align 4
@CCTKi_BindingsFortranWrapperEinstein.CCTKGROUPNUM_gridspacings = internal unnamed_addr global i32 -1, align 4
@CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_coarse_dy = internal unnamed_addr global i32 -1, align 4
@CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_coarse_dz = internal unnamed_addr global i32 -1, align 4
@CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_conformal_state = internal unnamed_addr global i32 -1, align 4
@CCTKi_BindingsFortranWrapperEinstein.CCTKGROUPNUM_flags = internal unnamed_addr global i32 -1, align 4
@CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_courant_min_time = internal unnamed_addr global i32 -1, align 4
@CCTKi_BindingsFortranWrapperEinstein.CCTKGROUPNUM_speedvars = internal unnamed_addr global i32 -1, align 4
@CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_courant_wave_speed = internal unnamed_addr global i32 -1, align 4
@CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_emask = internal unnamed_addr global i32 -1, align 4
@CCTKi_BindingsFortranWrapperEinstein.CCTKGROUPNUM_mask = internal unnamed_addr global i32 -1, align 4
@CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_gxx = internal unnamed_addr global i32 -1, align 4
@CCTKi_BindingsFortranWrapperEinstein.CCTKGROUPNUM_metric = internal unnamed_addr global i32 -1, align 4
@CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_gxy = internal unnamed_addr global i32 -1, align 4
@CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_gxz = internal unnamed_addr global i32 -1, align 4
@CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_gyy = internal unnamed_addr global i32 -1, align 4
@CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_gyz = internal unnamed_addr global i32 -1, align 4
@CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_gzz = internal unnamed_addr global i32 -1, align 4
@CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_kxx = internal unnamed_addr global i32 -1, align 4
@CCTKi_BindingsFortranWrapperEinstein.CCTKGROUPNUM_curv = internal unnamed_addr global i32 -1, align 4
@CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_kxy = internal unnamed_addr global i32 -1, align 4
@CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_kxz = internal unnamed_addr global i32 -1, align 4
@CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_kyy = internal unnamed_addr global i32 -1, align 4
@CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_kyz = internal unnamed_addr global i32 -1, align 4
@CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_kzz = internal unnamed_addr global i32 -1, align 4
@CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_psi = internal unnamed_addr global i32 -1, align 4
@CCTKi_BindingsFortranWrapperEinstein.CCTKGROUPNUM_confac = internal unnamed_addr global i32 -1, align 4
@CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_psix = internal unnamed_addr global i32 -1, align 4
@CCTKi_BindingsFortranWrapperEinstein.CCTKGROUPNUM_confac_1derivs = internal unnamed_addr global i32 -1, align 4
@CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_psixx = internal unnamed_addr global i32 -1, align 4
@CCTKi_BindingsFortranWrapperEinstein.CCTKGROUPNUM_confac_2derivs = internal unnamed_addr global i32 -1, align 4
@CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_psixy = internal unnamed_addr global i32 -1, align 4
@CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_psixz = internal unnamed_addr global i32 -1, align 4
@CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_psiy = internal unnamed_addr global i32 -1, align 4
@CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_psiyy = internal unnamed_addr global i32 -1, align 4
@CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_psiyz = internal unnamed_addr global i32 -1, align 4
@CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_psiz = internal unnamed_addr global i32 -1, align 4
@CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_psizz = internal unnamed_addr global i32 -1, align 4
@CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_r = internal unnamed_addr global i32 -1, align 4
@CCTKi_BindingsFortranWrapperEinstein.CCTKGROUPNUM_coordinates = internal unnamed_addr global i32 -1, align 4
@CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_shift_state = internal unnamed_addr global i32 -1, align 4
@CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_x = internal unnamed_addr global i32 -1, align 4
@CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_y = internal unnamed_addr global i32 -1, align 4
@CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_z = internal unnamed_addr global i32 -1, align 4
@.str = private unnamed_addr constant [15 x i8] c"Einstein::detg\00", align 1
@.str1 = private unnamed_addr constant [17 x i8] c"Einstein::detofg\00", align 1
@.str2 = private unnamed_addr constant [14 x i8] c"Einstein::gpp\00", align 1
@.str3 = private unnamed_addr constant [27 x i8] c"Einstein::spherical_metric\00", align 1
@.str4 = private unnamed_addr constant [14 x i8] c"Einstein::gqp\00", align 1
@.str5 = private unnamed_addr constant [14 x i8] c"Einstein::gqq\00", align 1
@.str6 = private unnamed_addr constant [14 x i8] c"Einstein::grp\00", align 1
@.str7 = private unnamed_addr constant [14 x i8] c"Einstein::grq\00", align 1
@.str8 = private unnamed_addr constant [14 x i8] c"Einstein::grr\00", align 1
@.str9 = private unnamed_addr constant [14 x i8] c"Einstein::kpp\00", align 1
@.str10 = private unnamed_addr constant [25 x i8] c"Einstein::spherical_curv\00", align 1
@.str11 = private unnamed_addr constant [14 x i8] c"Einstein::kqp\00", align 1
@.str12 = private unnamed_addr constant [14 x i8] c"Einstein::kqq\00", align 1
@.str13 = private unnamed_addr constant [14 x i8] c"Einstein::krp\00", align 1
@.str14 = private unnamed_addr constant [14 x i8] c"Einstein::krq\00", align 1
@.str15 = private unnamed_addr constant [14 x i8] c"Einstein::krr\00", align 1
@.str16 = private unnamed_addr constant [14 x i8] c"Einstein::trK\00", align 1
@.str17 = private unnamed_addr constant [21 x i8] c"Einstein::trace_of_K\00", align 1
@.str18 = private unnamed_addr constant [32 x i8] c"einstein::active_slicing_handle\00", align 1
@.str19 = private unnamed_addr constant [24 x i8] c"einstein::slicing_flags\00", align 1
@.str20 = private unnamed_addr constant [14 x i8] c"einstein::alp\00", align 1
@.str21 = private unnamed_addr constant [16 x i8] c"einstein::lapse\00", align 1
@.str22 = private unnamed_addr constant [16 x i8] c"einstein::betax\00", align 1
@.str23 = private unnamed_addr constant [16 x i8] c"einstein::shift\00", align 1
@.str24 = private unnamed_addr constant [16 x i8] c"einstein::betay\00", align 1
@.str25 = private unnamed_addr constant [16 x i8] c"einstein::betaz\00", align 1
@.str26 = private unnamed_addr constant [16 x i8] c"GRID::coarse_dx\00", align 1
@.str27 = private unnamed_addr constant [19 x i8] c"GRID::gridspacings\00", align 1
@.str28 = private unnamed_addr constant [16 x i8] c"GRID::coarse_dy\00", align 1
@.str29 = private unnamed_addr constant [16 x i8] c"GRID::coarse_dz\00", align 1
@.str30 = private unnamed_addr constant [26 x i8] c"einstein::conformal_state\00", align 1
@.str31 = private unnamed_addr constant [16 x i8] c"einstein::flags\00", align 1
@.str32 = private unnamed_addr constant [23 x i8] c"TIME::courant_min_time\00", align 1
@.str33 = private unnamed_addr constant [16 x i8] c"TIME::speedvars\00", align 1
@.str34 = private unnamed_addr constant [25 x i8] c"TIME::courant_wave_speed\00", align 1
@.str35 = private unnamed_addr constant [16 x i8] c"einstein::emask\00", align 1
@.str36 = private unnamed_addr constant [15 x i8] c"einstein::mask\00", align 1
@.str37 = private unnamed_addr constant [14 x i8] c"einstein::gxx\00", align 1
@.str38 = private unnamed_addr constant [17 x i8] c"einstein::metric\00", align 1
@.str39 = private unnamed_addr constant [14 x i8] c"einstein::gxy\00", align 1
@.str40 = private unnamed_addr constant [14 x i8] c"einstein::gxz\00", align 1
@.str41 = private unnamed_addr constant [14 x i8] c"einstein::gyy\00", align 1
@.str42 = private unnamed_addr constant [14 x i8] c"einstein::gyz\00", align 1
@.str43 = private unnamed_addr constant [14 x i8] c"einstein::gzz\00", align 1
@.str44 = private unnamed_addr constant [14 x i8] c"einstein::kxx\00", align 1
@.str45 = private unnamed_addr constant [15 x i8] c"einstein::curv\00", align 1
@.str46 = private unnamed_addr constant [14 x i8] c"einstein::kxy\00", align 1
@.str47 = private unnamed_addr constant [14 x i8] c"einstein::kxz\00", align 1
@.str48 = private unnamed_addr constant [14 x i8] c"einstein::kyy\00", align 1
@.str49 = private unnamed_addr constant [14 x i8] c"einstein::kyz\00", align 1
@.str50 = private unnamed_addr constant [14 x i8] c"einstein::kzz\00", align 1
@.str51 = private unnamed_addr constant [14 x i8] c"einstein::psi\00", align 1
@.str52 = private unnamed_addr constant [17 x i8] c"einstein::confac\00", align 1
@.str53 = private unnamed_addr constant [15 x i8] c"einstein::psix\00", align 1
@.str54 = private unnamed_addr constant [25 x i8] c"einstein::confac_1derivs\00", align 1
@.str55 = private unnamed_addr constant [16 x i8] c"einstein::psixx\00", align 1
@.str56 = private unnamed_addr constant [25 x i8] c"einstein::confac_2derivs\00", align 1
@.str57 = private unnamed_addr constant [16 x i8] c"einstein::psixy\00", align 1
@.str58 = private unnamed_addr constant [16 x i8] c"einstein::psixz\00", align 1
@.str59 = private unnamed_addr constant [15 x i8] c"einstein::psiy\00", align 1
@.str60 = private unnamed_addr constant [16 x i8] c"einstein::psiyy\00", align 1
@.str61 = private unnamed_addr constant [16 x i8] c"einstein::psiyz\00", align 1
@.str62 = private unnamed_addr constant [15 x i8] c"einstein::psiz\00", align 1
@.str63 = private unnamed_addr constant [16 x i8] c"einstein::psizz\00", align 1
@.str64 = private unnamed_addr constant [8 x i8] c"GRID::r\00", align 1
@.str65 = private unnamed_addr constant [18 x i8] c"GRID::coordinates\00", align 1
@.str66 = private unnamed_addr constant [22 x i8] c"einstein::shift_state\00", align 1
@.str67 = private unnamed_addr constant [8 x i8] c"GRID::x\00", align 1
@.str68 = private unnamed_addr constant [8 x i8] c"GRID::y\00", align 1
@.str69 = private unnamed_addr constant [8 x i8] c"GRID::z\00", align 1
@_cctk_one = external global i32

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTKi_BindingsFortranWrapperEinstein(%struct.cGH* %GH, i8* nocapture %fpointer) #0 {
  %1 = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_detg, align 4, !tbaa !2
  %2 = icmp eq i32 %1, -1
  br i1 %2, label %3, label %5

; <label>:3                                       ; preds = %0
  %4 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([15 x i8]* @.str, i64 0, i64 0)) #2
  store i32 %4, i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_detg, align 4, !tbaa !2
  br label %5

; <label>:5                                       ; preds = %3, %0
  %6 = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKGROUPNUM_detofg, align 4, !tbaa !2
  %7 = icmp eq i32 %6, -1
  br i1 %7, label %8, label %10

; <label>:8                                       ; preds = %5
  %9 = tail call i32 @CCTK_GroupIndex(i8* getelementptr inbounds ([17 x i8]* @.str1, i64 0, i64 0)) #2
  store i32 %9, i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKGROUPNUM_detofg, align 4, !tbaa !2
  br label %10

; <label>:10                                      ; preds = %8, %5
  %11 = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_gpp, align 4, !tbaa !2
  %12 = icmp eq i32 %11, -1
  br i1 %12, label %13, label %15

; <label>:13                                      ; preds = %10
  %14 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str2, i64 0, i64 0)) #2
  store i32 %14, i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_gpp, align 4, !tbaa !2
  br label %15

; <label>:15                                      ; preds = %13, %10
  %16 = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKGROUPNUM_spherical_metric, align 4, !tbaa !2
  %17 = icmp eq i32 %16, -1
  br i1 %17, label %18, label %20

; <label>:18                                      ; preds = %15
  %19 = tail call i32 @CCTK_GroupIndex(i8* getelementptr inbounds ([27 x i8]* @.str3, i64 0, i64 0)) #2
  store i32 %19, i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKGROUPNUM_spherical_metric, align 4, !tbaa !2
  br label %20

; <label>:20                                      ; preds = %18, %15
  %21 = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_gqp, align 4, !tbaa !2
  %22 = icmp eq i32 %21, -1
  br i1 %22, label %23, label %25

; <label>:23                                      ; preds = %20
  %24 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str4, i64 0, i64 0)) #2
  store i32 %24, i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_gqp, align 4, !tbaa !2
  br label %25

; <label>:25                                      ; preds = %23, %20
  %26 = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_gqq, align 4, !tbaa !2
  %27 = icmp eq i32 %26, -1
  br i1 %27, label %28, label %30

; <label>:28                                      ; preds = %25
  %29 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str5, i64 0, i64 0)) #2
  store i32 %29, i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_gqq, align 4, !tbaa !2
  br label %30

; <label>:30                                      ; preds = %28, %25
  %31 = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_grp, align 4, !tbaa !2
  %32 = icmp eq i32 %31, -1
  br i1 %32, label %33, label %35

; <label>:33                                      ; preds = %30
  %34 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str6, i64 0, i64 0)) #2
  store i32 %34, i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_grp, align 4, !tbaa !2
  br label %35

; <label>:35                                      ; preds = %33, %30
  %36 = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_grq, align 4, !tbaa !2
  %37 = icmp eq i32 %36, -1
  br i1 %37, label %38, label %40

; <label>:38                                      ; preds = %35
  %39 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str7, i64 0, i64 0)) #2
  store i32 %39, i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_grq, align 4, !tbaa !2
  br label %40

; <label>:40                                      ; preds = %38, %35
  %41 = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_grr, align 4, !tbaa !2
  %42 = icmp eq i32 %41, -1
  br i1 %42, label %43, label %45

; <label>:43                                      ; preds = %40
  %44 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str8, i64 0, i64 0)) #2
  store i32 %44, i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_grr, align 4, !tbaa !2
  br label %45

; <label>:45                                      ; preds = %43, %40
  %46 = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_kpp, align 4, !tbaa !2
  %47 = icmp eq i32 %46, -1
  br i1 %47, label %48, label %50

; <label>:48                                      ; preds = %45
  %49 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str9, i64 0, i64 0)) #2
  store i32 %49, i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_kpp, align 4, !tbaa !2
  br label %50

; <label>:50                                      ; preds = %48, %45
  %51 = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKGROUPNUM_spherical_curv, align 4, !tbaa !2
  %52 = icmp eq i32 %51, -1
  br i1 %52, label %53, label %55

; <label>:53                                      ; preds = %50
  %54 = tail call i32 @CCTK_GroupIndex(i8* getelementptr inbounds ([25 x i8]* @.str10, i64 0, i64 0)) #2
  store i32 %54, i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKGROUPNUM_spherical_curv, align 4, !tbaa !2
  br label %55

; <label>:55                                      ; preds = %53, %50
  %56 = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_kqp, align 4, !tbaa !2
  %57 = icmp eq i32 %56, -1
  br i1 %57, label %58, label %60

; <label>:58                                      ; preds = %55
  %59 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str11, i64 0, i64 0)) #2
  store i32 %59, i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_kqp, align 4, !tbaa !2
  br label %60

; <label>:60                                      ; preds = %58, %55
  %61 = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_kqq, align 4, !tbaa !2
  %62 = icmp eq i32 %61, -1
  br i1 %62, label %63, label %65

; <label>:63                                      ; preds = %60
  %64 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str12, i64 0, i64 0)) #2
  store i32 %64, i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_kqq, align 4, !tbaa !2
  br label %65

; <label>:65                                      ; preds = %63, %60
  %66 = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_krp, align 4, !tbaa !2
  %67 = icmp eq i32 %66, -1
  br i1 %67, label %68, label %70

; <label>:68                                      ; preds = %65
  %69 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str13, i64 0, i64 0)) #2
  store i32 %69, i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_krp, align 4, !tbaa !2
  br label %70

; <label>:70                                      ; preds = %68, %65
  %71 = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_krq, align 4, !tbaa !2
  %72 = icmp eq i32 %71, -1
  br i1 %72, label %73, label %75

; <label>:73                                      ; preds = %70
  %74 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str14, i64 0, i64 0)) #2
  store i32 %74, i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_krq, align 4, !tbaa !2
  br label %75

; <label>:75                                      ; preds = %73, %70
  %76 = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_krr, align 4, !tbaa !2
  %77 = icmp eq i32 %76, -1
  br i1 %77, label %78, label %80

; <label>:78                                      ; preds = %75
  %79 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str15, i64 0, i64 0)) #2
  store i32 %79, i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_krr, align 4, !tbaa !2
  br label %80

; <label>:80                                      ; preds = %78, %75
  %81 = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_trK, align 4, !tbaa !2
  %82 = icmp eq i32 %81, -1
  br i1 %82, label %83, label %85

; <label>:83                                      ; preds = %80
  %84 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str16, i64 0, i64 0)) #2
  store i32 %84, i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_trK, align 4, !tbaa !2
  br label %85

; <label>:85                                      ; preds = %83, %80
  %86 = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKGROUPNUM_trace_of_K, align 4, !tbaa !2
  %87 = icmp eq i32 %86, -1
  br i1 %87, label %88, label %90

; <label>:88                                      ; preds = %85
  %89 = tail call i32 @CCTK_GroupIndex(i8* getelementptr inbounds ([21 x i8]* @.str17, i64 0, i64 0)) #2
  store i32 %89, i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKGROUPNUM_trace_of_K, align 4, !tbaa !2
  br label %90

; <label>:90                                      ; preds = %88, %85
  %91 = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_active_slicing_handle, align 4, !tbaa !2
  %92 = icmp eq i32 %91, -1
  br i1 %92, label %93, label %95

; <label>:93                                      ; preds = %90
  %94 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([32 x i8]* @.str18, i64 0, i64 0)) #2
  store i32 %94, i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_active_slicing_handle, align 4, !tbaa !2
  br label %95

; <label>:95                                      ; preds = %93, %90
  %96 = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKGROUPNUM_slicing_flags, align 4, !tbaa !2
  %97 = icmp eq i32 %96, -1
  br i1 %97, label %98, label %100

; <label>:98                                      ; preds = %95
  %99 = tail call i32 @CCTK_GroupIndex(i8* getelementptr inbounds ([24 x i8]* @.str19, i64 0, i64 0)) #2
  store i32 %99, i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKGROUPNUM_slicing_flags, align 4, !tbaa !2
  br label %100

; <label>:100                                     ; preds = %98, %95
  %101 = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_alp, align 4, !tbaa !2
  %102 = icmp eq i32 %101, -1
  br i1 %102, label %103, label %105

; <label>:103                                     ; preds = %100
  %104 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str20, i64 0, i64 0)) #2
  store i32 %104, i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_alp, align 4, !tbaa !2
  br label %105

; <label>:105                                     ; preds = %103, %100
  %106 = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKGROUPNUM_lapse, align 4, !tbaa !2
  %107 = icmp eq i32 %106, -1
  br i1 %107, label %108, label %110

; <label>:108                                     ; preds = %105
  %109 = tail call i32 @CCTK_GroupIndex(i8* getelementptr inbounds ([16 x i8]* @.str21, i64 0, i64 0)) #2
  store i32 %109, i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKGROUPNUM_lapse, align 4, !tbaa !2
  br label %110

; <label>:110                                     ; preds = %108, %105
  %111 = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_betax, align 4, !tbaa !2
  %112 = icmp eq i32 %111, -1
  br i1 %112, label %113, label %115

; <label>:113                                     ; preds = %110
  %114 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str22, i64 0, i64 0)) #2
  store i32 %114, i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_betax, align 4, !tbaa !2
  br label %115

; <label>:115                                     ; preds = %113, %110
  %116 = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKGROUPNUM_shift, align 4, !tbaa !2
  %117 = icmp eq i32 %116, -1
  br i1 %117, label %118, label %120

; <label>:118                                     ; preds = %115
  %119 = tail call i32 @CCTK_GroupIndex(i8* getelementptr inbounds ([16 x i8]* @.str23, i64 0, i64 0)) #2
  store i32 %119, i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKGROUPNUM_shift, align 4, !tbaa !2
  br label %120

; <label>:120                                     ; preds = %118, %115
  %121 = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_betay, align 4, !tbaa !2
  %122 = icmp eq i32 %121, -1
  br i1 %122, label %123, label %125

; <label>:123                                     ; preds = %120
  %124 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str24, i64 0, i64 0)) #2
  store i32 %124, i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_betay, align 4, !tbaa !2
  br label %125

; <label>:125                                     ; preds = %123, %120
  %126 = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_betaz, align 4, !tbaa !2
  %127 = icmp eq i32 %126, -1
  br i1 %127, label %128, label %130

; <label>:128                                     ; preds = %125
  %129 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str25, i64 0, i64 0)) #2
  store i32 %129, i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_betaz, align 4, !tbaa !2
  br label %130

; <label>:130                                     ; preds = %128, %125
  %131 = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_coarse_dx, align 4, !tbaa !2
  %132 = icmp eq i32 %131, -1
  br i1 %132, label %133, label %135

; <label>:133                                     ; preds = %130
  %134 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str26, i64 0, i64 0)) #2
  store i32 %134, i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_coarse_dx, align 4, !tbaa !2
  br label %135

; <label>:135                                     ; preds = %133, %130
  %136 = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKGROUPNUM_gridspacings, align 4, !tbaa !2
  %137 = icmp eq i32 %136, -1
  br i1 %137, label %138, label %140

; <label>:138                                     ; preds = %135
  %139 = tail call i32 @CCTK_GroupIndex(i8* getelementptr inbounds ([19 x i8]* @.str27, i64 0, i64 0)) #2
  store i32 %139, i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKGROUPNUM_gridspacings, align 4, !tbaa !2
  br label %140

; <label>:140                                     ; preds = %138, %135
  %141 = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_coarse_dy, align 4, !tbaa !2
  %142 = icmp eq i32 %141, -1
  br i1 %142, label %143, label %145

; <label>:143                                     ; preds = %140
  %144 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str28, i64 0, i64 0)) #2
  store i32 %144, i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_coarse_dy, align 4, !tbaa !2
  br label %145

; <label>:145                                     ; preds = %143, %140
  %146 = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_coarse_dz, align 4, !tbaa !2
  %147 = icmp eq i32 %146, -1
  br i1 %147, label %148, label %150

; <label>:148                                     ; preds = %145
  %149 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str29, i64 0, i64 0)) #2
  store i32 %149, i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_coarse_dz, align 4, !tbaa !2
  br label %150

; <label>:150                                     ; preds = %148, %145
  %151 = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_conformal_state, align 4, !tbaa !2
  %152 = icmp eq i32 %151, -1
  br i1 %152, label %153, label %155

; <label>:153                                     ; preds = %150
  %154 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([26 x i8]* @.str30, i64 0, i64 0)) #2
  store i32 %154, i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_conformal_state, align 4, !tbaa !2
  br label %155

; <label>:155                                     ; preds = %153, %150
  %156 = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKGROUPNUM_flags, align 4, !tbaa !2
  %157 = icmp eq i32 %156, -1
  br i1 %157, label %158, label %160

; <label>:158                                     ; preds = %155
  %159 = tail call i32 @CCTK_GroupIndex(i8* getelementptr inbounds ([16 x i8]* @.str31, i64 0, i64 0)) #2
  store i32 %159, i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKGROUPNUM_flags, align 4, !tbaa !2
  br label %160

; <label>:160                                     ; preds = %158, %155
  %161 = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_courant_min_time, align 4, !tbaa !2
  %162 = icmp eq i32 %161, -1
  br i1 %162, label %163, label %165

; <label>:163                                     ; preds = %160
  %164 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([23 x i8]* @.str32, i64 0, i64 0)) #2
  store i32 %164, i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_courant_min_time, align 4, !tbaa !2
  br label %165

; <label>:165                                     ; preds = %163, %160
  %166 = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKGROUPNUM_speedvars, align 4, !tbaa !2
  %167 = icmp eq i32 %166, -1
  br i1 %167, label %168, label %170

; <label>:168                                     ; preds = %165
  %169 = tail call i32 @CCTK_GroupIndex(i8* getelementptr inbounds ([16 x i8]* @.str33, i64 0, i64 0)) #2
  store i32 %169, i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKGROUPNUM_speedvars, align 4, !tbaa !2
  br label %170

; <label>:170                                     ; preds = %168, %165
  %171 = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_courant_wave_speed, align 4, !tbaa !2
  %172 = icmp eq i32 %171, -1
  br i1 %172, label %173, label %175

; <label>:173                                     ; preds = %170
  %174 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([25 x i8]* @.str34, i64 0, i64 0)) #2
  store i32 %174, i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_courant_wave_speed, align 4, !tbaa !2
  br label %175

; <label>:175                                     ; preds = %173, %170
  %176 = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_emask, align 4, !tbaa !2
  %177 = icmp eq i32 %176, -1
  br i1 %177, label %178, label %180

; <label>:178                                     ; preds = %175
  %179 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str35, i64 0, i64 0)) #2
  store i32 %179, i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_emask, align 4, !tbaa !2
  br label %180

; <label>:180                                     ; preds = %178, %175
  %181 = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKGROUPNUM_mask, align 4, !tbaa !2
  %182 = icmp eq i32 %181, -1
  br i1 %182, label %183, label %185

; <label>:183                                     ; preds = %180
  %184 = tail call i32 @CCTK_GroupIndex(i8* getelementptr inbounds ([15 x i8]* @.str36, i64 0, i64 0)) #2
  store i32 %184, i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKGROUPNUM_mask, align 4, !tbaa !2
  br label %185

; <label>:185                                     ; preds = %183, %180
  %186 = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_gxx, align 4, !tbaa !2
  %187 = icmp eq i32 %186, -1
  br i1 %187, label %188, label %190

; <label>:188                                     ; preds = %185
  %189 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str37, i64 0, i64 0)) #2
  store i32 %189, i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_gxx, align 4, !tbaa !2
  br label %190

; <label>:190                                     ; preds = %188, %185
  %191 = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKGROUPNUM_metric, align 4, !tbaa !2
  %192 = icmp eq i32 %191, -1
  br i1 %192, label %193, label %195

; <label>:193                                     ; preds = %190
  %194 = tail call i32 @CCTK_GroupIndex(i8* getelementptr inbounds ([17 x i8]* @.str38, i64 0, i64 0)) #2
  store i32 %194, i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKGROUPNUM_metric, align 4, !tbaa !2
  br label %195

; <label>:195                                     ; preds = %193, %190
  %196 = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_gxy, align 4, !tbaa !2
  %197 = icmp eq i32 %196, -1
  br i1 %197, label %198, label %200

; <label>:198                                     ; preds = %195
  %199 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str39, i64 0, i64 0)) #2
  store i32 %199, i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_gxy, align 4, !tbaa !2
  br label %200

; <label>:200                                     ; preds = %198, %195
  %201 = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_gxz, align 4, !tbaa !2
  %202 = icmp eq i32 %201, -1
  br i1 %202, label %203, label %205

; <label>:203                                     ; preds = %200
  %204 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str40, i64 0, i64 0)) #2
  store i32 %204, i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_gxz, align 4, !tbaa !2
  br label %205

; <label>:205                                     ; preds = %203, %200
  %206 = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_gyy, align 4, !tbaa !2
  %207 = icmp eq i32 %206, -1
  br i1 %207, label %208, label %210

; <label>:208                                     ; preds = %205
  %209 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str41, i64 0, i64 0)) #2
  store i32 %209, i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_gyy, align 4, !tbaa !2
  br label %210

; <label>:210                                     ; preds = %208, %205
  %211 = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_gyz, align 4, !tbaa !2
  %212 = icmp eq i32 %211, -1
  br i1 %212, label %213, label %215

; <label>:213                                     ; preds = %210
  %214 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str42, i64 0, i64 0)) #2
  store i32 %214, i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_gyz, align 4, !tbaa !2
  br label %215

; <label>:215                                     ; preds = %213, %210
  %216 = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_gzz, align 4, !tbaa !2
  %217 = icmp eq i32 %216, -1
  br i1 %217, label %218, label %220

; <label>:218                                     ; preds = %215
  %219 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str43, i64 0, i64 0)) #2
  store i32 %219, i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_gzz, align 4, !tbaa !2
  br label %220

; <label>:220                                     ; preds = %218, %215
  %221 = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_kxx, align 4, !tbaa !2
  %222 = icmp eq i32 %221, -1
  br i1 %222, label %223, label %225

; <label>:223                                     ; preds = %220
  %224 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str44, i64 0, i64 0)) #2
  store i32 %224, i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_kxx, align 4, !tbaa !2
  br label %225

; <label>:225                                     ; preds = %223, %220
  %226 = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKGROUPNUM_curv, align 4, !tbaa !2
  %227 = icmp eq i32 %226, -1
  br i1 %227, label %228, label %230

; <label>:228                                     ; preds = %225
  %229 = tail call i32 @CCTK_GroupIndex(i8* getelementptr inbounds ([15 x i8]* @.str45, i64 0, i64 0)) #2
  store i32 %229, i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKGROUPNUM_curv, align 4, !tbaa !2
  br label %230

; <label>:230                                     ; preds = %228, %225
  %231 = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_kxy, align 4, !tbaa !2
  %232 = icmp eq i32 %231, -1
  br i1 %232, label %233, label %235

; <label>:233                                     ; preds = %230
  %234 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str46, i64 0, i64 0)) #2
  store i32 %234, i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_kxy, align 4, !tbaa !2
  br label %235

; <label>:235                                     ; preds = %233, %230
  %236 = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_kxz, align 4, !tbaa !2
  %237 = icmp eq i32 %236, -1
  br i1 %237, label %238, label %240

; <label>:238                                     ; preds = %235
  %239 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str47, i64 0, i64 0)) #2
  store i32 %239, i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_kxz, align 4, !tbaa !2
  br label %240

; <label>:240                                     ; preds = %238, %235
  %241 = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_kyy, align 4, !tbaa !2
  %242 = icmp eq i32 %241, -1
  br i1 %242, label %243, label %245

; <label>:243                                     ; preds = %240
  %244 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str48, i64 0, i64 0)) #2
  store i32 %244, i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_kyy, align 4, !tbaa !2
  br label %245

; <label>:245                                     ; preds = %243, %240
  %246 = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_kyz, align 4, !tbaa !2
  %247 = icmp eq i32 %246, -1
  br i1 %247, label %248, label %250

; <label>:248                                     ; preds = %245
  %249 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str49, i64 0, i64 0)) #2
  store i32 %249, i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_kyz, align 4, !tbaa !2
  br label %250

; <label>:250                                     ; preds = %248, %245
  %251 = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_kzz, align 4, !tbaa !2
  %252 = icmp eq i32 %251, -1
  br i1 %252, label %253, label %255

; <label>:253                                     ; preds = %250
  %254 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str50, i64 0, i64 0)) #2
  store i32 %254, i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_kzz, align 4, !tbaa !2
  br label %255

; <label>:255                                     ; preds = %253, %250
  %256 = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_psi, align 4, !tbaa !2
  %257 = icmp eq i32 %256, -1
  br i1 %257, label %258, label %260

; <label>:258                                     ; preds = %255
  %259 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str51, i64 0, i64 0)) #2
  store i32 %259, i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_psi, align 4, !tbaa !2
  br label %260

; <label>:260                                     ; preds = %258, %255
  %261 = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKGROUPNUM_confac, align 4, !tbaa !2
  %262 = icmp eq i32 %261, -1
  br i1 %262, label %263, label %265

; <label>:263                                     ; preds = %260
  %264 = tail call i32 @CCTK_GroupIndex(i8* getelementptr inbounds ([17 x i8]* @.str52, i64 0, i64 0)) #2
  store i32 %264, i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKGROUPNUM_confac, align 4, !tbaa !2
  br label %265

; <label>:265                                     ; preds = %263, %260
  %266 = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_psix, align 4, !tbaa !2
  %267 = icmp eq i32 %266, -1
  br i1 %267, label %268, label %270

; <label>:268                                     ; preds = %265
  %269 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([15 x i8]* @.str53, i64 0, i64 0)) #2
  store i32 %269, i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_psix, align 4, !tbaa !2
  br label %270

; <label>:270                                     ; preds = %268, %265
  %271 = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKGROUPNUM_confac_1derivs, align 4, !tbaa !2
  %272 = icmp eq i32 %271, -1
  br i1 %272, label %273, label %275

; <label>:273                                     ; preds = %270
  %274 = tail call i32 @CCTK_GroupIndex(i8* getelementptr inbounds ([25 x i8]* @.str54, i64 0, i64 0)) #2
  store i32 %274, i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKGROUPNUM_confac_1derivs, align 4, !tbaa !2
  br label %275

; <label>:275                                     ; preds = %273, %270
  %276 = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_psixx, align 4, !tbaa !2
  %277 = icmp eq i32 %276, -1
  br i1 %277, label %278, label %280

; <label>:278                                     ; preds = %275
  %279 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str55, i64 0, i64 0)) #2
  store i32 %279, i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_psixx, align 4, !tbaa !2
  br label %280

; <label>:280                                     ; preds = %278, %275
  %281 = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKGROUPNUM_confac_2derivs, align 4, !tbaa !2
  %282 = icmp eq i32 %281, -1
  br i1 %282, label %283, label %285

; <label>:283                                     ; preds = %280
  %284 = tail call i32 @CCTK_GroupIndex(i8* getelementptr inbounds ([25 x i8]* @.str56, i64 0, i64 0)) #2
  store i32 %284, i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKGROUPNUM_confac_2derivs, align 4, !tbaa !2
  br label %285

; <label>:285                                     ; preds = %283, %280
  %286 = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_psixy, align 4, !tbaa !2
  %287 = icmp eq i32 %286, -1
  br i1 %287, label %288, label %290

; <label>:288                                     ; preds = %285
  %289 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str57, i64 0, i64 0)) #2
  store i32 %289, i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_psixy, align 4, !tbaa !2
  br label %290

; <label>:290                                     ; preds = %288, %285
  %291 = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_psixz, align 4, !tbaa !2
  %292 = icmp eq i32 %291, -1
  br i1 %292, label %293, label %295

; <label>:293                                     ; preds = %290
  %294 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str58, i64 0, i64 0)) #2
  store i32 %294, i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_psixz, align 4, !tbaa !2
  br label %295

; <label>:295                                     ; preds = %293, %290
  %296 = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_psiy, align 4, !tbaa !2
  %297 = icmp eq i32 %296, -1
  br i1 %297, label %298, label %300

; <label>:298                                     ; preds = %295
  %299 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([15 x i8]* @.str59, i64 0, i64 0)) #2
  store i32 %299, i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_psiy, align 4, !tbaa !2
  br label %300

; <label>:300                                     ; preds = %298, %295
  %301 = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_psiyy, align 4, !tbaa !2
  %302 = icmp eq i32 %301, -1
  br i1 %302, label %303, label %305

; <label>:303                                     ; preds = %300
  %304 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str60, i64 0, i64 0)) #2
  store i32 %304, i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_psiyy, align 4, !tbaa !2
  br label %305

; <label>:305                                     ; preds = %303, %300
  %306 = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_psiyz, align 4, !tbaa !2
  %307 = icmp eq i32 %306, -1
  br i1 %307, label %308, label %310

; <label>:308                                     ; preds = %305
  %309 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str61, i64 0, i64 0)) #2
  store i32 %309, i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_psiyz, align 4, !tbaa !2
  br label %310

; <label>:310                                     ; preds = %308, %305
  %311 = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_psiz, align 4, !tbaa !2
  %312 = icmp eq i32 %311, -1
  br i1 %312, label %313, label %315

; <label>:313                                     ; preds = %310
  %314 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([15 x i8]* @.str62, i64 0, i64 0)) #2
  store i32 %314, i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_psiz, align 4, !tbaa !2
  br label %315

; <label>:315                                     ; preds = %313, %310
  %316 = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_psizz, align 4, !tbaa !2
  %317 = icmp eq i32 %316, -1
  br i1 %317, label %318, label %320

; <label>:318                                     ; preds = %315
  %319 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str63, i64 0, i64 0)) #2
  store i32 %319, i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_psizz, align 4, !tbaa !2
  br label %320

; <label>:320                                     ; preds = %318, %315
  %321 = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_r, align 4, !tbaa !2
  %322 = icmp eq i32 %321, -1
  br i1 %322, label %323, label %325

; <label>:323                                     ; preds = %320
  %324 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([8 x i8]* @.str64, i64 0, i64 0)) #2
  store i32 %324, i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_r, align 4, !tbaa !2
  br label %325

; <label>:325                                     ; preds = %323, %320
  %326 = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKGROUPNUM_coordinates, align 4, !tbaa !2
  %327 = icmp eq i32 %326, -1
  br i1 %327, label %328, label %330

; <label>:328                                     ; preds = %325
  %329 = tail call i32 @CCTK_GroupIndex(i8* getelementptr inbounds ([18 x i8]* @.str65, i64 0, i64 0)) #2
  store i32 %329, i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKGROUPNUM_coordinates, align 4, !tbaa !2
  br label %330

; <label>:330                                     ; preds = %328, %325
  %331 = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_shift_state, align 4, !tbaa !2
  %332 = icmp eq i32 %331, -1
  br i1 %332, label %333, label %335

; <label>:333                                     ; preds = %330
  %334 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([22 x i8]* @.str66, i64 0, i64 0)) #2
  store i32 %334, i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_shift_state, align 4, !tbaa !2
  br label %335

; <label>:335                                     ; preds = %333, %330
  %336 = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_x, align 4, !tbaa !2
  %337 = icmp eq i32 %336, -1
  br i1 %337, label %338, label %340

; <label>:338                                     ; preds = %335
  %339 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([8 x i8]* @.str67, i64 0, i64 0)) #2
  store i32 %339, i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_x, align 4, !tbaa !2
  br label %340

; <label>:340                                     ; preds = %338, %335
  %341 = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_y, align 4, !tbaa !2
  %342 = icmp eq i32 %341, -1
  br i1 %342, label %343, label %345

; <label>:343                                     ; preds = %340
  %344 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([8 x i8]* @.str68, i64 0, i64 0)) #2
  store i32 %344, i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_y, align 4, !tbaa !2
  br label %345

; <label>:345                                     ; preds = %343, %340
  %346 = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_z, align 4, !tbaa !2
  %347 = icmp eq i32 %346, -1
  br i1 %347, label %348, label %350

; <label>:348                                     ; preds = %345
  %349 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([8 x i8]* @.str69, i64 0, i64 0)) #2
  store i32 %349, i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_z, align 4, !tbaa !2
  br label %350

; <label>:350                                     ; preds = %348, %345
  %351 = bitcast i8* %fpointer to void (i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, double*, double*, double*, double*, i32*, i32*, i32*, i32*, %struct.cGH*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, double*, double*, double*, double*, double*, double*, double*, i32*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, i32*, double*, double*, double*)*
  %352 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 0
  %353 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 2
  %354 = load i32** %353, align 8, !tbaa !6
  %355 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 3
  %356 = load i32** %355, align 8, !tbaa !10
  %357 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 4
  %358 = load i32** %357, align 8, !tbaa !11
  %359 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 5
  %360 = load i32** %359, align 8, !tbaa !12
  %361 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 6
  %362 = load i32** %361, align 8, !tbaa !13
  %363 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 8
  %364 = load i32** %363, align 8, !tbaa !14
  %365 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 7
  %366 = load i32** %365, align 8, !tbaa !15
  %367 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 12
  %368 = load i32** %367, align 8, !tbaa !16
  %369 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 9
  %370 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 16
  %371 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 10
  %372 = load double** %371, align 8, !tbaa !17
  %373 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 11
  %374 = load double** %373, align 8, !tbaa !18
  %375 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 13
  %376 = load i32** %375, align 8, !tbaa !19
  %377 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 14
  %378 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 15
  %379 = load i32** %378, align 8, !tbaa !20
  %380 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 1
  %381 = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKGROUPNUM_detofg, align 4, !tbaa !2
  %382 = icmp slt i32 %381, 0
  br i1 %382, label %.thread4, label %383

; <label>:383                                     ; preds = %350
  %384 = tail call i32 @CCTK_QueryGroupStorage(%struct.cGH* %GH, i8* getelementptr inbounds ([17 x i8]* @.str1, i64 0, i64 0)) #2
  %385 = icmp eq i32 %384, 0
  br i1 %385, label %388, label %386

; <label>:386                                     ; preds = %383
  %387 = tail call i32* @CCTK_ArrayGroupSize(%struct.cGH* %GH, i32 0, i8* getelementptr inbounds ([17 x i8]* @.str1, i64 0, i64 0)) #2
  br label %388

; <label>:388                                     ; preds = %383, %386
  %.ph = phi i32* [ @_cctk_one, %383 ], [ %387, %386 ]
  %.pr = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKGROUPNUM_detofg, align 4, !tbaa !2
  %389 = icmp slt i32 %.pr, 0
  br i1 %389, label %.thread4, label %390

; <label>:390                                     ; preds = %388
  %391 = tail call i32 @CCTK_QueryGroupStorage(%struct.cGH* %GH, i8* getelementptr inbounds ([17 x i8]* @.str1, i64 0, i64 0)) #2
  %392 = icmp eq i32 %391, 0
  br i1 %392, label %.thread, label %393

; <label>:393                                     ; preds = %390
  %394 = tail call i32* @CCTK_ArrayGroupSize(%struct.cGH* %GH, i32 1, i8* getelementptr inbounds ([17 x i8]* @.str1, i64 0, i64 0)) #2
  br label %.thread

.thread:                                          ; preds = %390, %393
  %.ph2.ph = phi i32* [ %394, %393 ], [ @_cctk_one, %390 ]
  %.pr3.pr = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKGROUPNUM_detofg, align 4, !tbaa !2
  %395 = icmp slt i32 %.pr3.pr, 0
  br i1 %395, label %.thread4, label %396

; <label>:396                                     ; preds = %.thread
  %397 = tail call i32 @CCTK_QueryGroupStorage(%struct.cGH* %GH, i8* getelementptr inbounds ([17 x i8]* @.str1, i64 0, i64 0)) #2
  %398 = icmp eq i32 %397, 0
  br i1 %398, label %.thread4, label %399

; <label>:399                                     ; preds = %396
  %400 = tail call i32* @CCTK_ArrayGroupSize(%struct.cGH* %GH, i32 2, i8* getelementptr inbounds ([17 x i8]* @.str1, i64 0, i64 0)) #2
  br label %.thread4

.thread4:                                         ; preds = %350, %388, %396, %399, %.thread
  %401 = phi i32* [ %.ph2.ph, %.thread ], [ %.ph2.ph, %399 ], [ %.ph2.ph, %396 ], [ @_cctk_one, %388 ], [ @_cctk_one, %350 ]
  %402 = phi i32* [ %.ph, %.thread ], [ %.ph, %399 ], [ %.ph, %396 ], [ %.ph, %388 ], [ @_cctk_one, %350 ]
  %403 = phi i32* [ @_cctk_one, %.thread ], [ %400, %399 ], [ @_cctk_one, %396 ], [ @_cctk_one, %388 ], [ @_cctk_one, %350 ]
  %404 = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKGROUPNUM_spherical_curv, align 4, !tbaa !2
  %405 = icmp slt i32 %404, 0
  br i1 %405, label %.thread11, label %406

; <label>:406                                     ; preds = %.thread4
  %407 = tail call i32 @CCTK_QueryGroupStorage(%struct.cGH* %GH, i8* getelementptr inbounds ([25 x i8]* @.str10, i64 0, i64 0)) #2
  %408 = icmp eq i32 %407, 0
  br i1 %408, label %411, label %409

; <label>:409                                     ; preds = %406
  %410 = tail call i32* @CCTK_ArrayGroupSize(%struct.cGH* %GH, i32 0, i8* getelementptr inbounds ([25 x i8]* @.str10, i64 0, i64 0)) #2
  br label %411

; <label>:411                                     ; preds = %406, %409
  %.ph5 = phi i32* [ @_cctk_one, %406 ], [ %410, %409 ]
  %.pr6 = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKGROUPNUM_spherical_curv, align 4, !tbaa !2
  %412 = icmp slt i32 %.pr6, 0
  br i1 %412, label %.thread11, label %413

; <label>:413                                     ; preds = %411
  %414 = tail call i32 @CCTK_QueryGroupStorage(%struct.cGH* %GH, i8* getelementptr inbounds ([25 x i8]* @.str10, i64 0, i64 0)) #2
  %415 = icmp eq i32 %414, 0
  br i1 %415, label %.thread7, label %416

; <label>:416                                     ; preds = %413
  %417 = tail call i32* @CCTK_ArrayGroupSize(%struct.cGH* %GH, i32 1, i8* getelementptr inbounds ([25 x i8]* @.str10, i64 0, i64 0)) #2
  br label %.thread7

.thread7:                                         ; preds = %413, %416
  %.ph9.ph = phi i32* [ %417, %416 ], [ @_cctk_one, %413 ]
  %.pr10.pr = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKGROUPNUM_spherical_curv, align 4, !tbaa !2
  %418 = icmp slt i32 %.pr10.pr, 0
  br i1 %418, label %.thread11, label %419

; <label>:419                                     ; preds = %.thread7
  %420 = tail call i32 @CCTK_QueryGroupStorage(%struct.cGH* %GH, i8* getelementptr inbounds ([25 x i8]* @.str10, i64 0, i64 0)) #2
  %421 = icmp eq i32 %420, 0
  br i1 %421, label %.thread11, label %422

; <label>:422                                     ; preds = %419
  %423 = tail call i32* @CCTK_ArrayGroupSize(%struct.cGH* %GH, i32 2, i8* getelementptr inbounds ([25 x i8]* @.str10, i64 0, i64 0)) #2
  br label %.thread11

.thread11:                                        ; preds = %.thread4, %411, %419, %422, %.thread7
  %424 = phi i32* [ %.ph9.ph, %.thread7 ], [ %.ph9.ph, %422 ], [ %.ph9.ph, %419 ], [ @_cctk_one, %411 ], [ @_cctk_one, %.thread4 ]
  %425 = phi i32* [ %.ph5, %.thread7 ], [ %.ph5, %422 ], [ %.ph5, %419 ], [ %.ph5, %411 ], [ @_cctk_one, %.thread4 ]
  %426 = phi i32* [ @_cctk_one, %.thread7 ], [ %423, %422 ], [ @_cctk_one, %419 ], [ @_cctk_one, %411 ], [ @_cctk_one, %.thread4 ]
  %427 = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKGROUPNUM_spherical_metric, align 4, !tbaa !2
  %428 = icmp slt i32 %427, 0
  br i1 %428, label %.thread18, label %429

; <label>:429                                     ; preds = %.thread11
  %430 = tail call i32 @CCTK_QueryGroupStorage(%struct.cGH* %GH, i8* getelementptr inbounds ([27 x i8]* @.str3, i64 0, i64 0)) #2
  %431 = icmp eq i32 %430, 0
  br i1 %431, label %434, label %432

; <label>:432                                     ; preds = %429
  %433 = tail call i32* @CCTK_ArrayGroupSize(%struct.cGH* %GH, i32 0, i8* getelementptr inbounds ([27 x i8]* @.str3, i64 0, i64 0)) #2
  br label %434

; <label>:434                                     ; preds = %429, %432
  %.ph12 = phi i32* [ @_cctk_one, %429 ], [ %433, %432 ]
  %.pr13 = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKGROUPNUM_spherical_metric, align 4, !tbaa !2
  %435 = icmp slt i32 %.pr13, 0
  br i1 %435, label %.thread18, label %436

; <label>:436                                     ; preds = %434
  %437 = tail call i32 @CCTK_QueryGroupStorage(%struct.cGH* %GH, i8* getelementptr inbounds ([27 x i8]* @.str3, i64 0, i64 0)) #2
  %438 = icmp eq i32 %437, 0
  br i1 %438, label %.thread14, label %439

; <label>:439                                     ; preds = %436
  %440 = tail call i32* @CCTK_ArrayGroupSize(%struct.cGH* %GH, i32 1, i8* getelementptr inbounds ([27 x i8]* @.str3, i64 0, i64 0)) #2
  br label %.thread14

.thread14:                                        ; preds = %436, %439
  %.ph16.ph = phi i32* [ %440, %439 ], [ @_cctk_one, %436 ]
  %.pr17.pr = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKGROUPNUM_spherical_metric, align 4, !tbaa !2
  %441 = icmp slt i32 %.pr17.pr, 0
  br i1 %441, label %.thread18, label %442

; <label>:442                                     ; preds = %.thread14
  %443 = tail call i32 @CCTK_QueryGroupStorage(%struct.cGH* %GH, i8* getelementptr inbounds ([27 x i8]* @.str3, i64 0, i64 0)) #2
  %444 = icmp eq i32 %443, 0
  br i1 %444, label %.thread18, label %445

; <label>:445                                     ; preds = %442
  %446 = tail call i32* @CCTK_ArrayGroupSize(%struct.cGH* %GH, i32 2, i8* getelementptr inbounds ([27 x i8]* @.str3, i64 0, i64 0)) #2
  br label %.thread18

.thread18:                                        ; preds = %.thread11, %434, %442, %445, %.thread14
  %447 = phi i32* [ %.ph16.ph, %.thread14 ], [ %.ph16.ph, %445 ], [ %.ph16.ph, %442 ], [ @_cctk_one, %434 ], [ @_cctk_one, %.thread11 ]
  %448 = phi i32* [ %.ph12, %.thread14 ], [ %.ph12, %445 ], [ %.ph12, %442 ], [ %.ph12, %434 ], [ @_cctk_one, %.thread11 ]
  %449 = phi i32* [ @_cctk_one, %.thread14 ], [ %446, %445 ], [ @_cctk_one, %442 ], [ @_cctk_one, %434 ], [ @_cctk_one, %.thread11 ]
  %450 = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKGROUPNUM_trace_of_K, align 4, !tbaa !2
  %451 = icmp slt i32 %450, 0
  br i1 %451, label %.thread25, label %452

; <label>:452                                     ; preds = %.thread18
  %453 = tail call i32 @CCTK_QueryGroupStorage(%struct.cGH* %GH, i8* getelementptr inbounds ([21 x i8]* @.str17, i64 0, i64 0)) #2
  %454 = icmp eq i32 %453, 0
  br i1 %454, label %457, label %455

; <label>:455                                     ; preds = %452
  %456 = tail call i32* @CCTK_ArrayGroupSize(%struct.cGH* %GH, i32 0, i8* getelementptr inbounds ([21 x i8]* @.str17, i64 0, i64 0)) #2
  br label %457

; <label>:457                                     ; preds = %452, %455
  %.ph19 = phi i32* [ @_cctk_one, %452 ], [ %456, %455 ]
  %.pr20 = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKGROUPNUM_trace_of_K, align 4, !tbaa !2
  %458 = icmp slt i32 %.pr20, 0
  br i1 %458, label %.thread25, label %459

; <label>:459                                     ; preds = %457
  %460 = tail call i32 @CCTK_QueryGroupStorage(%struct.cGH* %GH, i8* getelementptr inbounds ([21 x i8]* @.str17, i64 0, i64 0)) #2
  %461 = icmp eq i32 %460, 0
  br i1 %461, label %.thread21, label %462

; <label>:462                                     ; preds = %459
  %463 = tail call i32* @CCTK_ArrayGroupSize(%struct.cGH* %GH, i32 1, i8* getelementptr inbounds ([21 x i8]* @.str17, i64 0, i64 0)) #2
  br label %.thread21

.thread21:                                        ; preds = %459, %462
  %.ph23.ph = phi i32* [ %463, %462 ], [ @_cctk_one, %459 ]
  %.pr24.pr = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKGROUPNUM_trace_of_K, align 4, !tbaa !2
  %464 = icmp slt i32 %.pr24.pr, 0
  br i1 %464, label %.thread25, label %465

; <label>:465                                     ; preds = %.thread21
  %466 = tail call i32 @CCTK_QueryGroupStorage(%struct.cGH* %GH, i8* getelementptr inbounds ([21 x i8]* @.str17, i64 0, i64 0)) #2
  %467 = icmp eq i32 %466, 0
  br i1 %467, label %.thread25, label %468

; <label>:468                                     ; preds = %465
  %469 = tail call i32* @CCTK_ArrayGroupSize(%struct.cGH* %GH, i32 2, i8* getelementptr inbounds ([21 x i8]* @.str17, i64 0, i64 0)) #2
  br label %.thread25

.thread25:                                        ; preds = %.thread18, %457, %465, %468, %.thread21
  %470 = phi i32* [ %.ph23.ph, %.thread21 ], [ %.ph23.ph, %468 ], [ %.ph23.ph, %465 ], [ @_cctk_one, %457 ], [ @_cctk_one, %.thread18 ]
  %471 = phi i32* [ %.ph19, %.thread21 ], [ %.ph19, %468 ], [ %.ph19, %465 ], [ %.ph19, %457 ], [ @_cctk_one, %.thread18 ]
  %472 = phi i32* [ @_cctk_one, %.thread21 ], [ %469, %468 ], [ @_cctk_one, %465 ], [ @_cctk_one, %457 ], [ @_cctk_one, %.thread18 ]
  %473 = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_detg, align 4, !tbaa !2
  %474 = icmp slt i32 %473, 0
  br i1 %474, label %482, label %475

; <label>:475                                     ; preds = %.thread25
  %476 = sext i32 %473 to i64
  %477 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17
  %478 = load i8**** %477, align 8, !tbaa !21
  %479 = getelementptr inbounds i8*** %478, i64 %476
  %480 = load i8*** %479, align 8, !tbaa !22
  %481 = load i8** %480, align 8, !tbaa !22
  br label %482

; <label>:482                                     ; preds = %.thread25, %475
  %483 = phi i8* [ %481, %475 ], [ null, %.thread25 ]
  %484 = bitcast i8* %483 to double*
  %485 = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_gpp, align 4, !tbaa !2
  %486 = icmp slt i32 %485, 0
  br i1 %486, label %494, label %487

; <label>:487                                     ; preds = %482
  %488 = sext i32 %485 to i64
  %489 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17
  %490 = load i8**** %489, align 8, !tbaa !21
  %491 = getelementptr inbounds i8*** %490, i64 %488
  %492 = load i8*** %491, align 8, !tbaa !22
  %493 = load i8** %492, align 8, !tbaa !22
  br label %494

; <label>:494                                     ; preds = %482, %487
  %495 = phi i8* [ %493, %487 ], [ null, %482 ]
  %496 = bitcast i8* %495 to double*
  %497 = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_gqp, align 4, !tbaa !2
  %498 = icmp slt i32 %497, 0
  br i1 %498, label %506, label %499

; <label>:499                                     ; preds = %494
  %500 = sext i32 %497 to i64
  %501 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17
  %502 = load i8**** %501, align 8, !tbaa !21
  %503 = getelementptr inbounds i8*** %502, i64 %500
  %504 = load i8*** %503, align 8, !tbaa !22
  %505 = load i8** %504, align 8, !tbaa !22
  br label %506

; <label>:506                                     ; preds = %494, %499
  %507 = phi i8* [ %505, %499 ], [ null, %494 ]
  %508 = bitcast i8* %507 to double*
  %509 = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_gqq, align 4, !tbaa !2
  %510 = icmp slt i32 %509, 0
  br i1 %510, label %518, label %511

; <label>:511                                     ; preds = %506
  %512 = sext i32 %509 to i64
  %513 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17
  %514 = load i8**** %513, align 8, !tbaa !21
  %515 = getelementptr inbounds i8*** %514, i64 %512
  %516 = load i8*** %515, align 8, !tbaa !22
  %517 = load i8** %516, align 8, !tbaa !22
  br label %518

; <label>:518                                     ; preds = %506, %511
  %519 = phi i8* [ %517, %511 ], [ null, %506 ]
  %520 = bitcast i8* %519 to double*
  %521 = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_grp, align 4, !tbaa !2
  %522 = icmp slt i32 %521, 0
  br i1 %522, label %530, label %523

; <label>:523                                     ; preds = %518
  %524 = sext i32 %521 to i64
  %525 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17
  %526 = load i8**** %525, align 8, !tbaa !21
  %527 = getelementptr inbounds i8*** %526, i64 %524
  %528 = load i8*** %527, align 8, !tbaa !22
  %529 = load i8** %528, align 8, !tbaa !22
  br label %530

; <label>:530                                     ; preds = %518, %523
  %531 = phi i8* [ %529, %523 ], [ null, %518 ]
  %532 = bitcast i8* %531 to double*
  %533 = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_grq, align 4, !tbaa !2
  %534 = icmp slt i32 %533, 0
  br i1 %534, label %542, label %535

; <label>:535                                     ; preds = %530
  %536 = sext i32 %533 to i64
  %537 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17
  %538 = load i8**** %537, align 8, !tbaa !21
  %539 = getelementptr inbounds i8*** %538, i64 %536
  %540 = load i8*** %539, align 8, !tbaa !22
  %541 = load i8** %540, align 8, !tbaa !22
  br label %542

; <label>:542                                     ; preds = %530, %535
  %543 = phi i8* [ %541, %535 ], [ null, %530 ]
  %544 = bitcast i8* %543 to double*
  %545 = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_grr, align 4, !tbaa !2
  %546 = icmp slt i32 %545, 0
  br i1 %546, label %554, label %547

; <label>:547                                     ; preds = %542
  %548 = sext i32 %545 to i64
  %549 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17
  %550 = load i8**** %549, align 8, !tbaa !21
  %551 = getelementptr inbounds i8*** %550, i64 %548
  %552 = load i8*** %551, align 8, !tbaa !22
  %553 = load i8** %552, align 8, !tbaa !22
  br label %554

; <label>:554                                     ; preds = %542, %547
  %555 = phi i8* [ %553, %547 ], [ null, %542 ]
  %556 = bitcast i8* %555 to double*
  %557 = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_kpp, align 4, !tbaa !2
  %558 = icmp slt i32 %557, 0
  br i1 %558, label %566, label %559

; <label>:559                                     ; preds = %554
  %560 = sext i32 %557 to i64
  %561 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17
  %562 = load i8**** %561, align 8, !tbaa !21
  %563 = getelementptr inbounds i8*** %562, i64 %560
  %564 = load i8*** %563, align 8, !tbaa !22
  %565 = load i8** %564, align 8, !tbaa !22
  br label %566

; <label>:566                                     ; preds = %554, %559
  %567 = phi i8* [ %565, %559 ], [ null, %554 ]
  %568 = bitcast i8* %567 to double*
  %569 = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_kqp, align 4, !tbaa !2
  %570 = icmp slt i32 %569, 0
  br i1 %570, label %578, label %571

; <label>:571                                     ; preds = %566
  %572 = sext i32 %569 to i64
  %573 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17
  %574 = load i8**** %573, align 8, !tbaa !21
  %575 = getelementptr inbounds i8*** %574, i64 %572
  %576 = load i8*** %575, align 8, !tbaa !22
  %577 = load i8** %576, align 8, !tbaa !22
  br label %578

; <label>:578                                     ; preds = %566, %571
  %579 = phi i8* [ %577, %571 ], [ null, %566 ]
  %580 = bitcast i8* %579 to double*
  %581 = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_kqq, align 4, !tbaa !2
  %582 = icmp slt i32 %581, 0
  br i1 %582, label %590, label %583

; <label>:583                                     ; preds = %578
  %584 = sext i32 %581 to i64
  %585 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17
  %586 = load i8**** %585, align 8, !tbaa !21
  %587 = getelementptr inbounds i8*** %586, i64 %584
  %588 = load i8*** %587, align 8, !tbaa !22
  %589 = load i8** %588, align 8, !tbaa !22
  br label %590

; <label>:590                                     ; preds = %578, %583
  %591 = phi i8* [ %589, %583 ], [ null, %578 ]
  %592 = bitcast i8* %591 to double*
  %593 = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_krp, align 4, !tbaa !2
  %594 = icmp slt i32 %593, 0
  br i1 %594, label %602, label %595

; <label>:595                                     ; preds = %590
  %596 = sext i32 %593 to i64
  %597 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17
  %598 = load i8**** %597, align 8, !tbaa !21
  %599 = getelementptr inbounds i8*** %598, i64 %596
  %600 = load i8*** %599, align 8, !tbaa !22
  %601 = load i8** %600, align 8, !tbaa !22
  br label %602

; <label>:602                                     ; preds = %590, %595
  %603 = phi i8* [ %601, %595 ], [ null, %590 ]
  %604 = bitcast i8* %603 to double*
  %605 = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_krq, align 4, !tbaa !2
  %606 = icmp slt i32 %605, 0
  br i1 %606, label %614, label %607

; <label>:607                                     ; preds = %602
  %608 = sext i32 %605 to i64
  %609 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17
  %610 = load i8**** %609, align 8, !tbaa !21
  %611 = getelementptr inbounds i8*** %610, i64 %608
  %612 = load i8*** %611, align 8, !tbaa !22
  %613 = load i8** %612, align 8, !tbaa !22
  br label %614

; <label>:614                                     ; preds = %602, %607
  %615 = phi i8* [ %613, %607 ], [ null, %602 ]
  %616 = bitcast i8* %615 to double*
  %617 = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_krr, align 4, !tbaa !2
  %618 = icmp slt i32 %617, 0
  br i1 %618, label %626, label %619

; <label>:619                                     ; preds = %614
  %620 = sext i32 %617 to i64
  %621 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17
  %622 = load i8**** %621, align 8, !tbaa !21
  %623 = getelementptr inbounds i8*** %622, i64 %620
  %624 = load i8*** %623, align 8, !tbaa !22
  %625 = load i8** %624, align 8, !tbaa !22
  br label %626

; <label>:626                                     ; preds = %614, %619
  %627 = phi i8* [ %625, %619 ], [ null, %614 ]
  %628 = bitcast i8* %627 to double*
  %629 = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_trK, align 4, !tbaa !2
  %630 = icmp slt i32 %629, 0
  br i1 %630, label %638, label %631

; <label>:631                                     ; preds = %626
  %632 = sext i32 %629 to i64
  %633 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17
  %634 = load i8**** %633, align 8, !tbaa !21
  %635 = getelementptr inbounds i8*** %634, i64 %632
  %636 = load i8*** %635, align 8, !tbaa !22
  %637 = load i8** %636, align 8, !tbaa !22
  br label %638

; <label>:638                                     ; preds = %626, %631
  %639 = phi i8* [ %637, %631 ], [ null, %626 ]
  %640 = bitcast i8* %639 to double*
  %641 = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKGROUPNUM_confac, align 4, !tbaa !2
  %642 = icmp slt i32 %641, 0
  br i1 %642, label %.thread32, label %643

; <label>:643                                     ; preds = %638
  %644 = tail call i32 @CCTK_QueryGroupStorage(%struct.cGH* %GH, i8* getelementptr inbounds ([17 x i8]* @.str52, i64 0, i64 0)) #2
  %645 = icmp eq i32 %644, 0
  br i1 %645, label %648, label %646

; <label>:646                                     ; preds = %643
  %647 = tail call i32* @CCTK_ArrayGroupSize(%struct.cGH* %GH, i32 0, i8* getelementptr inbounds ([17 x i8]* @.str52, i64 0, i64 0)) #2
  br label %648

; <label>:648                                     ; preds = %643, %646
  %.ph26 = phi i32* [ @_cctk_one, %643 ], [ %647, %646 ]
  %.pr27 = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKGROUPNUM_confac, align 4, !tbaa !2
  %649 = icmp slt i32 %.pr27, 0
  br i1 %649, label %.thread32, label %650

; <label>:650                                     ; preds = %648
  %651 = tail call i32 @CCTK_QueryGroupStorage(%struct.cGH* %GH, i8* getelementptr inbounds ([17 x i8]* @.str52, i64 0, i64 0)) #2
  %652 = icmp eq i32 %651, 0
  br i1 %652, label %.thread28, label %653

; <label>:653                                     ; preds = %650
  %654 = tail call i32* @CCTK_ArrayGroupSize(%struct.cGH* %GH, i32 1, i8* getelementptr inbounds ([17 x i8]* @.str52, i64 0, i64 0)) #2
  br label %.thread28

.thread28:                                        ; preds = %650, %653
  %.ph30.ph = phi i32* [ %654, %653 ], [ @_cctk_one, %650 ]
  %.pr31.pr = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKGROUPNUM_confac, align 4, !tbaa !2
  %655 = icmp slt i32 %.pr31.pr, 0
  br i1 %655, label %.thread32, label %656

; <label>:656                                     ; preds = %.thread28
  %657 = tail call i32 @CCTK_QueryGroupStorage(%struct.cGH* %GH, i8* getelementptr inbounds ([17 x i8]* @.str52, i64 0, i64 0)) #2
  %658 = icmp eq i32 %657, 0
  br i1 %658, label %.thread32, label %659

; <label>:659                                     ; preds = %656
  %660 = tail call i32* @CCTK_ArrayGroupSize(%struct.cGH* %GH, i32 2, i8* getelementptr inbounds ([17 x i8]* @.str52, i64 0, i64 0)) #2
  br label %.thread32

.thread32:                                        ; preds = %638, %648, %656, %659, %.thread28
  %661 = phi i32* [ %.ph30.ph, %.thread28 ], [ %.ph30.ph, %659 ], [ %.ph30.ph, %656 ], [ @_cctk_one, %648 ], [ @_cctk_one, %638 ]
  %662 = phi i32* [ %.ph26, %.thread28 ], [ %.ph26, %659 ], [ %.ph26, %656 ], [ %.ph26, %648 ], [ @_cctk_one, %638 ]
  %663 = phi i32* [ @_cctk_one, %.thread28 ], [ %660, %659 ], [ @_cctk_one, %656 ], [ @_cctk_one, %648 ], [ @_cctk_one, %638 ]
  %664 = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKGROUPNUM_confac_1derivs, align 4, !tbaa !2
  %665 = icmp slt i32 %664, 0
  br i1 %665, label %.thread39, label %666

; <label>:666                                     ; preds = %.thread32
  %667 = tail call i32 @CCTK_QueryGroupStorage(%struct.cGH* %GH, i8* getelementptr inbounds ([25 x i8]* @.str54, i64 0, i64 0)) #2
  %668 = icmp eq i32 %667, 0
  br i1 %668, label %671, label %669

; <label>:669                                     ; preds = %666
  %670 = tail call i32* @CCTK_ArrayGroupSize(%struct.cGH* %GH, i32 0, i8* getelementptr inbounds ([25 x i8]* @.str54, i64 0, i64 0)) #2
  br label %671

; <label>:671                                     ; preds = %666, %669
  %.ph33 = phi i32* [ @_cctk_one, %666 ], [ %670, %669 ]
  %.pr34 = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKGROUPNUM_confac_1derivs, align 4, !tbaa !2
  %672 = icmp slt i32 %.pr34, 0
  br i1 %672, label %.thread39, label %673

; <label>:673                                     ; preds = %671
  %674 = tail call i32 @CCTK_QueryGroupStorage(%struct.cGH* %GH, i8* getelementptr inbounds ([25 x i8]* @.str54, i64 0, i64 0)) #2
  %675 = icmp eq i32 %674, 0
  br i1 %675, label %.thread35, label %676

; <label>:676                                     ; preds = %673
  %677 = tail call i32* @CCTK_ArrayGroupSize(%struct.cGH* %GH, i32 1, i8* getelementptr inbounds ([25 x i8]* @.str54, i64 0, i64 0)) #2
  br label %.thread35

.thread35:                                        ; preds = %673, %676
  %.ph37.ph = phi i32* [ %677, %676 ], [ @_cctk_one, %673 ]
  %.pr38.pr = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKGROUPNUM_confac_1derivs, align 4, !tbaa !2
  %678 = icmp slt i32 %.pr38.pr, 0
  br i1 %678, label %.thread39, label %679

; <label>:679                                     ; preds = %.thread35
  %680 = tail call i32 @CCTK_QueryGroupStorage(%struct.cGH* %GH, i8* getelementptr inbounds ([25 x i8]* @.str54, i64 0, i64 0)) #2
  %681 = icmp eq i32 %680, 0
  br i1 %681, label %.thread39, label %682

; <label>:682                                     ; preds = %679
  %683 = tail call i32* @CCTK_ArrayGroupSize(%struct.cGH* %GH, i32 2, i8* getelementptr inbounds ([25 x i8]* @.str54, i64 0, i64 0)) #2
  br label %.thread39

.thread39:                                        ; preds = %.thread32, %671, %679, %682, %.thread35
  %684 = phi i32* [ %.ph37.ph, %.thread35 ], [ %.ph37.ph, %682 ], [ %.ph37.ph, %679 ], [ @_cctk_one, %671 ], [ @_cctk_one, %.thread32 ]
  %685 = phi i32* [ %.ph33, %.thread35 ], [ %.ph33, %682 ], [ %.ph33, %679 ], [ %.ph33, %671 ], [ @_cctk_one, %.thread32 ]
  %686 = phi i32* [ @_cctk_one, %.thread35 ], [ %683, %682 ], [ @_cctk_one, %679 ], [ @_cctk_one, %671 ], [ @_cctk_one, %.thread32 ]
  %687 = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKGROUPNUM_confac_2derivs, align 4, !tbaa !2
  %688 = icmp slt i32 %687, 0
  br i1 %688, label %.thread46, label %689

; <label>:689                                     ; preds = %.thread39
  %690 = tail call i32 @CCTK_QueryGroupStorage(%struct.cGH* %GH, i8* getelementptr inbounds ([25 x i8]* @.str56, i64 0, i64 0)) #2
  %691 = icmp eq i32 %690, 0
  br i1 %691, label %694, label %692

; <label>:692                                     ; preds = %689
  %693 = tail call i32* @CCTK_ArrayGroupSize(%struct.cGH* %GH, i32 0, i8* getelementptr inbounds ([25 x i8]* @.str56, i64 0, i64 0)) #2
  br label %694

; <label>:694                                     ; preds = %689, %692
  %.ph40 = phi i32* [ @_cctk_one, %689 ], [ %693, %692 ]
  %.pr41 = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKGROUPNUM_confac_2derivs, align 4, !tbaa !2
  %695 = icmp slt i32 %.pr41, 0
  br i1 %695, label %.thread46, label %696

; <label>:696                                     ; preds = %694
  %697 = tail call i32 @CCTK_QueryGroupStorage(%struct.cGH* %GH, i8* getelementptr inbounds ([25 x i8]* @.str56, i64 0, i64 0)) #2
  %698 = icmp eq i32 %697, 0
  br i1 %698, label %.thread42, label %699

; <label>:699                                     ; preds = %696
  %700 = tail call i32* @CCTK_ArrayGroupSize(%struct.cGH* %GH, i32 1, i8* getelementptr inbounds ([25 x i8]* @.str56, i64 0, i64 0)) #2
  br label %.thread42

.thread42:                                        ; preds = %696, %699
  %.ph44.ph = phi i32* [ %700, %699 ], [ @_cctk_one, %696 ]
  %.pr45.pr = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKGROUPNUM_confac_2derivs, align 4, !tbaa !2
  %701 = icmp slt i32 %.pr45.pr, 0
  br i1 %701, label %.thread46, label %702

; <label>:702                                     ; preds = %.thread42
  %703 = tail call i32 @CCTK_QueryGroupStorage(%struct.cGH* %GH, i8* getelementptr inbounds ([25 x i8]* @.str56, i64 0, i64 0)) #2
  %704 = icmp eq i32 %703, 0
  br i1 %704, label %.thread46, label %705

; <label>:705                                     ; preds = %702
  %706 = tail call i32* @CCTK_ArrayGroupSize(%struct.cGH* %GH, i32 2, i8* getelementptr inbounds ([25 x i8]* @.str56, i64 0, i64 0)) #2
  br label %.thread46

.thread46:                                        ; preds = %.thread39, %694, %702, %705, %.thread42
  %707 = phi i32* [ %.ph44.ph, %.thread42 ], [ %.ph44.ph, %705 ], [ %.ph44.ph, %702 ], [ @_cctk_one, %694 ], [ @_cctk_one, %.thread39 ]
  %708 = phi i32* [ %.ph40, %.thread42 ], [ %.ph40, %705 ], [ %.ph40, %702 ], [ %.ph40, %694 ], [ @_cctk_one, %.thread39 ]
  %709 = phi i32* [ @_cctk_one, %.thread42 ], [ %706, %705 ], [ @_cctk_one, %702 ], [ @_cctk_one, %694 ], [ @_cctk_one, %.thread39 ]
  %710 = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKGROUPNUM_coordinates, align 4, !tbaa !2
  %711 = icmp slt i32 %710, 0
  br i1 %711, label %.thread53, label %712

; <label>:712                                     ; preds = %.thread46
  %713 = tail call i32 @CCTK_QueryGroupStorage(%struct.cGH* %GH, i8* getelementptr inbounds ([18 x i8]* @.str65, i64 0, i64 0)) #2
  %714 = icmp eq i32 %713, 0
  br i1 %714, label %717, label %715

; <label>:715                                     ; preds = %712
  %716 = tail call i32* @CCTK_ArrayGroupSize(%struct.cGH* %GH, i32 0, i8* getelementptr inbounds ([18 x i8]* @.str65, i64 0, i64 0)) #2
  br label %717

; <label>:717                                     ; preds = %712, %715
  %.ph47 = phi i32* [ @_cctk_one, %712 ], [ %716, %715 ]
  %.pr48 = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKGROUPNUM_coordinates, align 4, !tbaa !2
  %718 = icmp slt i32 %.pr48, 0
  br i1 %718, label %.thread53, label %719

; <label>:719                                     ; preds = %717
  %720 = tail call i32 @CCTK_QueryGroupStorage(%struct.cGH* %GH, i8* getelementptr inbounds ([18 x i8]* @.str65, i64 0, i64 0)) #2
  %721 = icmp eq i32 %720, 0
  br i1 %721, label %.thread49, label %722

; <label>:722                                     ; preds = %719
  %723 = tail call i32* @CCTK_ArrayGroupSize(%struct.cGH* %GH, i32 1, i8* getelementptr inbounds ([18 x i8]* @.str65, i64 0, i64 0)) #2
  br label %.thread49

.thread49:                                        ; preds = %719, %722
  %.ph51.ph = phi i32* [ %723, %722 ], [ @_cctk_one, %719 ]
  %.pr52.pr = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKGROUPNUM_coordinates, align 4, !tbaa !2
  %724 = icmp slt i32 %.pr52.pr, 0
  br i1 %724, label %.thread53, label %725

; <label>:725                                     ; preds = %.thread49
  %726 = tail call i32 @CCTK_QueryGroupStorage(%struct.cGH* %GH, i8* getelementptr inbounds ([18 x i8]* @.str65, i64 0, i64 0)) #2
  %727 = icmp eq i32 %726, 0
  br i1 %727, label %.thread53, label %728

; <label>:728                                     ; preds = %725
  %729 = tail call i32* @CCTK_ArrayGroupSize(%struct.cGH* %GH, i32 2, i8* getelementptr inbounds ([18 x i8]* @.str65, i64 0, i64 0)) #2
  br label %.thread53

.thread53:                                        ; preds = %.thread46, %717, %725, %728, %.thread49
  %730 = phi i32* [ %.ph51.ph, %.thread49 ], [ %.ph51.ph, %728 ], [ %.ph51.ph, %725 ], [ @_cctk_one, %717 ], [ @_cctk_one, %.thread46 ]
  %731 = phi i32* [ %.ph47, %.thread49 ], [ %.ph47, %728 ], [ %.ph47, %725 ], [ %.ph47, %717 ], [ @_cctk_one, %.thread46 ]
  %732 = phi i32* [ @_cctk_one, %.thread49 ], [ %729, %728 ], [ @_cctk_one, %725 ], [ @_cctk_one, %717 ], [ @_cctk_one, %.thread46 ]
  %733 = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKGROUPNUM_curv, align 4, !tbaa !2
  %734 = icmp slt i32 %733, 0
  br i1 %734, label %.thread60, label %735

; <label>:735                                     ; preds = %.thread53
  %736 = tail call i32 @CCTK_QueryGroupStorage(%struct.cGH* %GH, i8* getelementptr inbounds ([15 x i8]* @.str45, i64 0, i64 0)) #2
  %737 = icmp eq i32 %736, 0
  br i1 %737, label %740, label %738

; <label>:738                                     ; preds = %735
  %739 = tail call i32* @CCTK_ArrayGroupSize(%struct.cGH* %GH, i32 0, i8* getelementptr inbounds ([15 x i8]* @.str45, i64 0, i64 0)) #2
  br label %740

; <label>:740                                     ; preds = %735, %738
  %.ph54 = phi i32* [ @_cctk_one, %735 ], [ %739, %738 ]
  %.pr55 = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKGROUPNUM_curv, align 4, !tbaa !2
  %741 = icmp slt i32 %.pr55, 0
  br i1 %741, label %.thread60, label %742

; <label>:742                                     ; preds = %740
  %743 = tail call i32 @CCTK_QueryGroupStorage(%struct.cGH* %GH, i8* getelementptr inbounds ([15 x i8]* @.str45, i64 0, i64 0)) #2
  %744 = icmp eq i32 %743, 0
  br i1 %744, label %.thread56, label %745

; <label>:745                                     ; preds = %742
  %746 = tail call i32* @CCTK_ArrayGroupSize(%struct.cGH* %GH, i32 1, i8* getelementptr inbounds ([15 x i8]* @.str45, i64 0, i64 0)) #2
  br label %.thread56

.thread56:                                        ; preds = %742, %745
  %.ph58.ph = phi i32* [ %746, %745 ], [ @_cctk_one, %742 ]
  %.pr59.pr = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKGROUPNUM_curv, align 4, !tbaa !2
  %747 = icmp slt i32 %.pr59.pr, 0
  br i1 %747, label %.thread60, label %748

; <label>:748                                     ; preds = %.thread56
  %749 = tail call i32 @CCTK_QueryGroupStorage(%struct.cGH* %GH, i8* getelementptr inbounds ([15 x i8]* @.str45, i64 0, i64 0)) #2
  %750 = icmp eq i32 %749, 0
  br i1 %750, label %.thread60, label %751

; <label>:751                                     ; preds = %748
  %752 = tail call i32* @CCTK_ArrayGroupSize(%struct.cGH* %GH, i32 2, i8* getelementptr inbounds ([15 x i8]* @.str45, i64 0, i64 0)) #2
  br label %.thread60

.thread60:                                        ; preds = %.thread53, %740, %748, %751, %.thread56
  %753 = phi i32* [ %.ph58.ph, %.thread56 ], [ %.ph58.ph, %751 ], [ %.ph58.ph, %748 ], [ @_cctk_one, %740 ], [ @_cctk_one, %.thread53 ]
  %754 = phi i32* [ %.ph54, %.thread56 ], [ %.ph54, %751 ], [ %.ph54, %748 ], [ %.ph54, %740 ], [ @_cctk_one, %.thread53 ]
  %755 = phi i32* [ @_cctk_one, %.thread56 ], [ %752, %751 ], [ @_cctk_one, %748 ], [ @_cctk_one, %740 ], [ @_cctk_one, %.thread53 ]
  %756 = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKGROUPNUM_lapse, align 4, !tbaa !2
  %757 = icmp slt i32 %756, 0
  br i1 %757, label %.thread67, label %758

; <label>:758                                     ; preds = %.thread60
  %759 = tail call i32 @CCTK_QueryGroupStorage(%struct.cGH* %GH, i8* getelementptr inbounds ([16 x i8]* @.str21, i64 0, i64 0)) #2
  %760 = icmp eq i32 %759, 0
  br i1 %760, label %763, label %761

; <label>:761                                     ; preds = %758
  %762 = tail call i32* @CCTK_ArrayGroupSize(%struct.cGH* %GH, i32 0, i8* getelementptr inbounds ([16 x i8]* @.str21, i64 0, i64 0)) #2
  br label %763

; <label>:763                                     ; preds = %758, %761
  %.ph61 = phi i32* [ @_cctk_one, %758 ], [ %762, %761 ]
  %.pr62 = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKGROUPNUM_lapse, align 4, !tbaa !2
  %764 = icmp slt i32 %.pr62, 0
  br i1 %764, label %.thread67, label %765

; <label>:765                                     ; preds = %763
  %766 = tail call i32 @CCTK_QueryGroupStorage(%struct.cGH* %GH, i8* getelementptr inbounds ([16 x i8]* @.str21, i64 0, i64 0)) #2
  %767 = icmp eq i32 %766, 0
  br i1 %767, label %.thread63, label %768

; <label>:768                                     ; preds = %765
  %769 = tail call i32* @CCTK_ArrayGroupSize(%struct.cGH* %GH, i32 1, i8* getelementptr inbounds ([16 x i8]* @.str21, i64 0, i64 0)) #2
  br label %.thread63

.thread63:                                        ; preds = %765, %768
  %.ph65.ph = phi i32* [ %769, %768 ], [ @_cctk_one, %765 ]
  %.pr66.pr = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKGROUPNUM_lapse, align 4, !tbaa !2
  %770 = icmp slt i32 %.pr66.pr, 0
  br i1 %770, label %.thread67, label %771

; <label>:771                                     ; preds = %.thread63
  %772 = tail call i32 @CCTK_QueryGroupStorage(%struct.cGH* %GH, i8* getelementptr inbounds ([16 x i8]* @.str21, i64 0, i64 0)) #2
  %773 = icmp eq i32 %772, 0
  br i1 %773, label %.thread67, label %774

; <label>:774                                     ; preds = %771
  %775 = tail call i32* @CCTK_ArrayGroupSize(%struct.cGH* %GH, i32 2, i8* getelementptr inbounds ([16 x i8]* @.str21, i64 0, i64 0)) #2
  br label %.thread67

.thread67:                                        ; preds = %.thread60, %763, %771, %774, %.thread63
  %776 = phi i32* [ %.ph65.ph, %.thread63 ], [ %.ph65.ph, %774 ], [ %.ph65.ph, %771 ], [ @_cctk_one, %763 ], [ @_cctk_one, %.thread60 ]
  %777 = phi i32* [ %.ph61, %.thread63 ], [ %.ph61, %774 ], [ %.ph61, %771 ], [ %.ph61, %763 ], [ @_cctk_one, %.thread60 ]
  %778 = phi i32* [ @_cctk_one, %.thread63 ], [ %775, %774 ], [ @_cctk_one, %771 ], [ @_cctk_one, %763 ], [ @_cctk_one, %.thread60 ]
  %779 = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKGROUPNUM_mask, align 4, !tbaa !2
  %780 = icmp slt i32 %779, 0
  br i1 %780, label %.thread74, label %781

; <label>:781                                     ; preds = %.thread67
  %782 = tail call i32 @CCTK_QueryGroupStorage(%struct.cGH* %GH, i8* getelementptr inbounds ([15 x i8]* @.str36, i64 0, i64 0)) #2
  %783 = icmp eq i32 %782, 0
  br i1 %783, label %786, label %784

; <label>:784                                     ; preds = %781
  %785 = tail call i32* @CCTK_ArrayGroupSize(%struct.cGH* %GH, i32 0, i8* getelementptr inbounds ([15 x i8]* @.str36, i64 0, i64 0)) #2
  br label %786

; <label>:786                                     ; preds = %781, %784
  %.ph68 = phi i32* [ @_cctk_one, %781 ], [ %785, %784 ]
  %.pr69 = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKGROUPNUM_mask, align 4, !tbaa !2
  %787 = icmp slt i32 %.pr69, 0
  br i1 %787, label %.thread74, label %788

; <label>:788                                     ; preds = %786
  %789 = tail call i32 @CCTK_QueryGroupStorage(%struct.cGH* %GH, i8* getelementptr inbounds ([15 x i8]* @.str36, i64 0, i64 0)) #2
  %790 = icmp eq i32 %789, 0
  br i1 %790, label %.thread70, label %791

; <label>:791                                     ; preds = %788
  %792 = tail call i32* @CCTK_ArrayGroupSize(%struct.cGH* %GH, i32 1, i8* getelementptr inbounds ([15 x i8]* @.str36, i64 0, i64 0)) #2
  br label %.thread70

.thread70:                                        ; preds = %788, %791
  %.ph72.ph = phi i32* [ %792, %791 ], [ @_cctk_one, %788 ]
  %.pr73.pr = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKGROUPNUM_mask, align 4, !tbaa !2
  %793 = icmp slt i32 %.pr73.pr, 0
  br i1 %793, label %.thread74, label %794

; <label>:794                                     ; preds = %.thread70
  %795 = tail call i32 @CCTK_QueryGroupStorage(%struct.cGH* %GH, i8* getelementptr inbounds ([15 x i8]* @.str36, i64 0, i64 0)) #2
  %796 = icmp eq i32 %795, 0
  br i1 %796, label %.thread74, label %797

; <label>:797                                     ; preds = %794
  %798 = tail call i32* @CCTK_ArrayGroupSize(%struct.cGH* %GH, i32 2, i8* getelementptr inbounds ([15 x i8]* @.str36, i64 0, i64 0)) #2
  br label %.thread74

.thread74:                                        ; preds = %.thread67, %786, %794, %797, %.thread70
  %799 = phi i32* [ %.ph72.ph, %.thread70 ], [ %.ph72.ph, %797 ], [ %.ph72.ph, %794 ], [ @_cctk_one, %786 ], [ @_cctk_one, %.thread67 ]
  %800 = phi i32* [ %.ph68, %.thread70 ], [ %.ph68, %797 ], [ %.ph68, %794 ], [ %.ph68, %786 ], [ @_cctk_one, %.thread67 ]
  %801 = phi i32* [ @_cctk_one, %.thread70 ], [ %798, %797 ], [ @_cctk_one, %794 ], [ @_cctk_one, %786 ], [ @_cctk_one, %.thread67 ]
  %802 = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKGROUPNUM_metric, align 4, !tbaa !2
  %803 = icmp slt i32 %802, 0
  br i1 %803, label %.thread81, label %804

; <label>:804                                     ; preds = %.thread74
  %805 = tail call i32 @CCTK_QueryGroupStorage(%struct.cGH* %GH, i8* getelementptr inbounds ([17 x i8]* @.str38, i64 0, i64 0)) #2
  %806 = icmp eq i32 %805, 0
  br i1 %806, label %809, label %807

; <label>:807                                     ; preds = %804
  %808 = tail call i32* @CCTK_ArrayGroupSize(%struct.cGH* %GH, i32 0, i8* getelementptr inbounds ([17 x i8]* @.str38, i64 0, i64 0)) #2
  br label %809

; <label>:809                                     ; preds = %804, %807
  %.ph75 = phi i32* [ @_cctk_one, %804 ], [ %808, %807 ]
  %.pr76 = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKGROUPNUM_metric, align 4, !tbaa !2
  %810 = icmp slt i32 %.pr76, 0
  br i1 %810, label %.thread81, label %811

; <label>:811                                     ; preds = %809
  %812 = tail call i32 @CCTK_QueryGroupStorage(%struct.cGH* %GH, i8* getelementptr inbounds ([17 x i8]* @.str38, i64 0, i64 0)) #2
  %813 = icmp eq i32 %812, 0
  br i1 %813, label %.thread77, label %814

; <label>:814                                     ; preds = %811
  %815 = tail call i32* @CCTK_ArrayGroupSize(%struct.cGH* %GH, i32 1, i8* getelementptr inbounds ([17 x i8]* @.str38, i64 0, i64 0)) #2
  br label %.thread77

.thread77:                                        ; preds = %811, %814
  %.ph79.ph = phi i32* [ %815, %814 ], [ @_cctk_one, %811 ]
  %.pr80.pr = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKGROUPNUM_metric, align 4, !tbaa !2
  %816 = icmp slt i32 %.pr80.pr, 0
  br i1 %816, label %.thread81, label %817

; <label>:817                                     ; preds = %.thread77
  %818 = tail call i32 @CCTK_QueryGroupStorage(%struct.cGH* %GH, i8* getelementptr inbounds ([17 x i8]* @.str38, i64 0, i64 0)) #2
  %819 = icmp eq i32 %818, 0
  br i1 %819, label %.thread81, label %820

; <label>:820                                     ; preds = %817
  %821 = tail call i32* @CCTK_ArrayGroupSize(%struct.cGH* %GH, i32 2, i8* getelementptr inbounds ([17 x i8]* @.str38, i64 0, i64 0)) #2
  br label %.thread81

.thread81:                                        ; preds = %.thread74, %809, %817, %820, %.thread77
  %822 = phi i32* [ %.ph79.ph, %.thread77 ], [ %.ph79.ph, %820 ], [ %.ph79.ph, %817 ], [ @_cctk_one, %809 ], [ @_cctk_one, %.thread74 ]
  %823 = phi i32* [ %.ph75, %.thread77 ], [ %.ph75, %820 ], [ %.ph75, %817 ], [ %.ph75, %809 ], [ @_cctk_one, %.thread74 ]
  %824 = phi i32* [ @_cctk_one, %.thread77 ], [ %821, %820 ], [ @_cctk_one, %817 ], [ @_cctk_one, %809 ], [ @_cctk_one, %.thread74 ]
  %825 = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKGROUPNUM_shift, align 4, !tbaa !2
  %826 = icmp slt i32 %825, 0
  br i1 %826, label %.thread88, label %827

; <label>:827                                     ; preds = %.thread81
  %828 = tail call i32 @CCTK_QueryGroupStorage(%struct.cGH* %GH, i8* getelementptr inbounds ([16 x i8]* @.str23, i64 0, i64 0)) #2
  %829 = icmp eq i32 %828, 0
  br i1 %829, label %832, label %830

; <label>:830                                     ; preds = %827
  %831 = tail call i32* @CCTK_ArrayGroupSize(%struct.cGH* %GH, i32 0, i8* getelementptr inbounds ([16 x i8]* @.str23, i64 0, i64 0)) #2
  br label %832

; <label>:832                                     ; preds = %827, %830
  %.ph82 = phi i32* [ @_cctk_one, %827 ], [ %831, %830 ]
  %.pr83 = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKGROUPNUM_shift, align 4, !tbaa !2
  %833 = icmp slt i32 %.pr83, 0
  br i1 %833, label %.thread88, label %834

; <label>:834                                     ; preds = %832
  %835 = tail call i32 @CCTK_QueryGroupStorage(%struct.cGH* %GH, i8* getelementptr inbounds ([16 x i8]* @.str23, i64 0, i64 0)) #2
  %836 = icmp eq i32 %835, 0
  br i1 %836, label %.thread84, label %837

; <label>:837                                     ; preds = %834
  %838 = tail call i32* @CCTK_ArrayGroupSize(%struct.cGH* %GH, i32 1, i8* getelementptr inbounds ([16 x i8]* @.str23, i64 0, i64 0)) #2
  br label %.thread84

.thread84:                                        ; preds = %834, %837
  %.ph86.ph = phi i32* [ %838, %837 ], [ @_cctk_one, %834 ]
  %.pr87.pr = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKGROUPNUM_shift, align 4, !tbaa !2
  %839 = icmp slt i32 %.pr87.pr, 0
  br i1 %839, label %.thread88, label %840

; <label>:840                                     ; preds = %.thread84
  %841 = tail call i32 @CCTK_QueryGroupStorage(%struct.cGH* %GH, i8* getelementptr inbounds ([16 x i8]* @.str23, i64 0, i64 0)) #2
  %842 = icmp eq i32 %841, 0
  br i1 %842, label %.thread88, label %843

; <label>:843                                     ; preds = %840
  %844 = tail call i32* @CCTK_ArrayGroupSize(%struct.cGH* %GH, i32 2, i8* getelementptr inbounds ([16 x i8]* @.str23, i64 0, i64 0)) #2
  br label %.thread88

.thread88:                                        ; preds = %.thread81, %832, %840, %843, %.thread84
  %845 = phi i32* [ %.ph86.ph, %.thread84 ], [ %.ph86.ph, %843 ], [ %.ph86.ph, %840 ], [ @_cctk_one, %832 ], [ @_cctk_one, %.thread81 ]
  %846 = phi i32* [ %.ph82, %.thread84 ], [ %.ph82, %843 ], [ %.ph82, %840 ], [ %.ph82, %832 ], [ @_cctk_one, %.thread81 ]
  %847 = phi i32* [ @_cctk_one, %.thread84 ], [ %844, %843 ], [ @_cctk_one, %840 ], [ @_cctk_one, %832 ], [ @_cctk_one, %.thread81 ]
  %848 = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_active_slicing_handle, align 4, !tbaa !2
  %849 = icmp slt i32 %848, 0
  br i1 %849, label %857, label %850

; <label>:850                                     ; preds = %.thread88
  %851 = sext i32 %848 to i64
  %852 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17
  %853 = load i8**** %852, align 8, !tbaa !21
  %854 = getelementptr inbounds i8*** %853, i64 %851
  %855 = load i8*** %854, align 8, !tbaa !22
  %856 = load i8** %855, align 8, !tbaa !22
  br label %857

; <label>:857                                     ; preds = %.thread88, %850
  %858 = phi i8* [ %856, %850 ], [ null, %.thread88 ]
  %859 = bitcast i8* %858 to i32*
  %860 = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_alp, align 4, !tbaa !2
  %861 = icmp slt i32 %860, 0
  br i1 %861, label %869, label %862

; <label>:862                                     ; preds = %857
  %863 = sext i32 %860 to i64
  %864 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17
  %865 = load i8**** %864, align 8, !tbaa !21
  %866 = getelementptr inbounds i8*** %865, i64 %863
  %867 = load i8*** %866, align 8, !tbaa !22
  %868 = load i8** %867, align 8, !tbaa !22
  br label %869

; <label>:869                                     ; preds = %857, %862
  %870 = phi i8* [ %868, %862 ], [ null, %857 ]
  %871 = bitcast i8* %870 to double*
  %872 = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_betax, align 4, !tbaa !2
  %873 = icmp slt i32 %872, 0
  br i1 %873, label %881, label %874

; <label>:874                                     ; preds = %869
  %875 = sext i32 %872 to i64
  %876 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17
  %877 = load i8**** %876, align 8, !tbaa !21
  %878 = getelementptr inbounds i8*** %877, i64 %875
  %879 = load i8*** %878, align 8, !tbaa !22
  %880 = load i8** %879, align 8, !tbaa !22
  br label %881

; <label>:881                                     ; preds = %869, %874
  %882 = phi i8* [ %880, %874 ], [ null, %869 ]
  %883 = bitcast i8* %882 to double*
  %884 = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_betay, align 4, !tbaa !2
  %885 = icmp slt i32 %884, 0
  br i1 %885, label %893, label %886

; <label>:886                                     ; preds = %881
  %887 = sext i32 %884 to i64
  %888 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17
  %889 = load i8**** %888, align 8, !tbaa !21
  %890 = getelementptr inbounds i8*** %889, i64 %887
  %891 = load i8*** %890, align 8, !tbaa !22
  %892 = load i8** %891, align 8, !tbaa !22
  br label %893

; <label>:893                                     ; preds = %881, %886
  %894 = phi i8* [ %892, %886 ], [ null, %881 ]
  %895 = bitcast i8* %894 to double*
  %896 = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_betaz, align 4, !tbaa !2
  %897 = icmp slt i32 %896, 0
  br i1 %897, label %905, label %898

; <label>:898                                     ; preds = %893
  %899 = sext i32 %896 to i64
  %900 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17
  %901 = load i8**** %900, align 8, !tbaa !21
  %902 = getelementptr inbounds i8*** %901, i64 %899
  %903 = load i8*** %902, align 8, !tbaa !22
  %904 = load i8** %903, align 8, !tbaa !22
  br label %905

; <label>:905                                     ; preds = %893, %898
  %906 = phi i8* [ %904, %898 ], [ null, %893 ]
  %907 = bitcast i8* %906 to double*
  %908 = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_coarse_dx, align 4, !tbaa !2
  %909 = icmp slt i32 %908, 0
  br i1 %909, label %917, label %910

; <label>:910                                     ; preds = %905
  %911 = sext i32 %908 to i64
  %912 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17
  %913 = load i8**** %912, align 8, !tbaa !21
  %914 = getelementptr inbounds i8*** %913, i64 %911
  %915 = load i8*** %914, align 8, !tbaa !22
  %916 = load i8** %915, align 8, !tbaa !22
  br label %917

; <label>:917                                     ; preds = %905, %910
  %918 = phi i8* [ %916, %910 ], [ null, %905 ]
  %919 = bitcast i8* %918 to double*
  %920 = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_coarse_dy, align 4, !tbaa !2
  %921 = icmp slt i32 %920, 0
  br i1 %921, label %929, label %922

; <label>:922                                     ; preds = %917
  %923 = sext i32 %920 to i64
  %924 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17
  %925 = load i8**** %924, align 8, !tbaa !21
  %926 = getelementptr inbounds i8*** %925, i64 %923
  %927 = load i8*** %926, align 8, !tbaa !22
  %928 = load i8** %927, align 8, !tbaa !22
  br label %929

; <label>:929                                     ; preds = %917, %922
  %930 = phi i8* [ %928, %922 ], [ null, %917 ]
  %931 = bitcast i8* %930 to double*
  %932 = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_coarse_dz, align 4, !tbaa !2
  %933 = icmp slt i32 %932, 0
  br i1 %933, label %941, label %934

; <label>:934                                     ; preds = %929
  %935 = sext i32 %932 to i64
  %936 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17
  %937 = load i8**** %936, align 8, !tbaa !21
  %938 = getelementptr inbounds i8*** %937, i64 %935
  %939 = load i8*** %938, align 8, !tbaa !22
  %940 = load i8** %939, align 8, !tbaa !22
  br label %941

; <label>:941                                     ; preds = %929, %934
  %942 = phi i8* [ %940, %934 ], [ null, %929 ]
  %943 = bitcast i8* %942 to double*
  %944 = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_conformal_state, align 4, !tbaa !2
  %945 = icmp slt i32 %944, 0
  br i1 %945, label %953, label %946

; <label>:946                                     ; preds = %941
  %947 = sext i32 %944 to i64
  %948 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17
  %949 = load i8**** %948, align 8, !tbaa !21
  %950 = getelementptr inbounds i8*** %949, i64 %947
  %951 = load i8*** %950, align 8, !tbaa !22
  %952 = load i8** %951, align 8, !tbaa !22
  br label %953

; <label>:953                                     ; preds = %941, %946
  %954 = phi i8* [ %952, %946 ], [ null, %941 ]
  %955 = bitcast i8* %954 to i32*
  %956 = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_courant_min_time, align 4, !tbaa !2
  %957 = icmp slt i32 %956, 0
  br i1 %957, label %965, label %958

; <label>:958                                     ; preds = %953
  %959 = sext i32 %956 to i64
  %960 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17
  %961 = load i8**** %960, align 8, !tbaa !21
  %962 = getelementptr inbounds i8*** %961, i64 %959
  %963 = load i8*** %962, align 8, !tbaa !22
  %964 = load i8** %963, align 8, !tbaa !22
  br label %965

; <label>:965                                     ; preds = %953, %958
  %966 = phi i8* [ %964, %958 ], [ null, %953 ]
  %967 = bitcast i8* %966 to double*
  %968 = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_courant_wave_speed, align 4, !tbaa !2
  %969 = icmp slt i32 %968, 0
  br i1 %969, label %977, label %970

; <label>:970                                     ; preds = %965
  %971 = sext i32 %968 to i64
  %972 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17
  %973 = load i8**** %972, align 8, !tbaa !21
  %974 = getelementptr inbounds i8*** %973, i64 %971
  %975 = load i8*** %974, align 8, !tbaa !22
  %976 = load i8** %975, align 8, !tbaa !22
  br label %977

; <label>:977                                     ; preds = %965, %970
  %978 = phi i8* [ %976, %970 ], [ null, %965 ]
  %979 = bitcast i8* %978 to double*
  %980 = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_emask, align 4, !tbaa !2
  %981 = icmp slt i32 %980, 0
  br i1 %981, label %989, label %982

; <label>:982                                     ; preds = %977
  %983 = sext i32 %980 to i64
  %984 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17
  %985 = load i8**** %984, align 8, !tbaa !21
  %986 = getelementptr inbounds i8*** %985, i64 %983
  %987 = load i8*** %986, align 8, !tbaa !22
  %988 = load i8** %987, align 8, !tbaa !22
  br label %989

; <label>:989                                     ; preds = %977, %982
  %990 = phi i8* [ %988, %982 ], [ null, %977 ]
  %991 = bitcast i8* %990 to double*
  %992 = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_gxx, align 4, !tbaa !2
  %993 = icmp slt i32 %992, 0
  br i1 %993, label %1001, label %994

; <label>:994                                     ; preds = %989
  %995 = sext i32 %992 to i64
  %996 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17
  %997 = load i8**** %996, align 8, !tbaa !21
  %998 = getelementptr inbounds i8*** %997, i64 %995
  %999 = load i8*** %998, align 8, !tbaa !22
  %1000 = load i8** %999, align 8, !tbaa !22
  br label %1001

; <label>:1001                                    ; preds = %989, %994
  %1002 = phi i8* [ %1000, %994 ], [ null, %989 ]
  %1003 = bitcast i8* %1002 to double*
  %1004 = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_gxy, align 4, !tbaa !2
  %1005 = icmp slt i32 %1004, 0
  br i1 %1005, label %1013, label %1006

; <label>:1006                                    ; preds = %1001
  %1007 = sext i32 %1004 to i64
  %1008 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17
  %1009 = load i8**** %1008, align 8, !tbaa !21
  %1010 = getelementptr inbounds i8*** %1009, i64 %1007
  %1011 = load i8*** %1010, align 8, !tbaa !22
  %1012 = load i8** %1011, align 8, !tbaa !22
  br label %1013

; <label>:1013                                    ; preds = %1001, %1006
  %1014 = phi i8* [ %1012, %1006 ], [ null, %1001 ]
  %1015 = bitcast i8* %1014 to double*
  %1016 = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_gxz, align 4, !tbaa !2
  %1017 = icmp slt i32 %1016, 0
  br i1 %1017, label %1025, label %1018

; <label>:1018                                    ; preds = %1013
  %1019 = sext i32 %1016 to i64
  %1020 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17
  %1021 = load i8**** %1020, align 8, !tbaa !21
  %1022 = getelementptr inbounds i8*** %1021, i64 %1019
  %1023 = load i8*** %1022, align 8, !tbaa !22
  %1024 = load i8** %1023, align 8, !tbaa !22
  br label %1025

; <label>:1025                                    ; preds = %1013, %1018
  %1026 = phi i8* [ %1024, %1018 ], [ null, %1013 ]
  %1027 = bitcast i8* %1026 to double*
  %1028 = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_gyy, align 4, !tbaa !2
  %1029 = icmp slt i32 %1028, 0
  br i1 %1029, label %1037, label %1030

; <label>:1030                                    ; preds = %1025
  %1031 = sext i32 %1028 to i64
  %1032 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17
  %1033 = load i8**** %1032, align 8, !tbaa !21
  %1034 = getelementptr inbounds i8*** %1033, i64 %1031
  %1035 = load i8*** %1034, align 8, !tbaa !22
  %1036 = load i8** %1035, align 8, !tbaa !22
  br label %1037

; <label>:1037                                    ; preds = %1025, %1030
  %1038 = phi i8* [ %1036, %1030 ], [ null, %1025 ]
  %1039 = bitcast i8* %1038 to double*
  %1040 = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_gyz, align 4, !tbaa !2
  %1041 = icmp slt i32 %1040, 0
  br i1 %1041, label %1049, label %1042

; <label>:1042                                    ; preds = %1037
  %1043 = sext i32 %1040 to i64
  %1044 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17
  %1045 = load i8**** %1044, align 8, !tbaa !21
  %1046 = getelementptr inbounds i8*** %1045, i64 %1043
  %1047 = load i8*** %1046, align 8, !tbaa !22
  %1048 = load i8** %1047, align 8, !tbaa !22
  br label %1049

; <label>:1049                                    ; preds = %1037, %1042
  %1050 = phi i8* [ %1048, %1042 ], [ null, %1037 ]
  %1051 = bitcast i8* %1050 to double*
  %1052 = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_gzz, align 4, !tbaa !2
  %1053 = icmp slt i32 %1052, 0
  br i1 %1053, label %1061, label %1054

; <label>:1054                                    ; preds = %1049
  %1055 = sext i32 %1052 to i64
  %1056 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17
  %1057 = load i8**** %1056, align 8, !tbaa !21
  %1058 = getelementptr inbounds i8*** %1057, i64 %1055
  %1059 = load i8*** %1058, align 8, !tbaa !22
  %1060 = load i8** %1059, align 8, !tbaa !22
  br label %1061

; <label>:1061                                    ; preds = %1049, %1054
  %1062 = phi i8* [ %1060, %1054 ], [ null, %1049 ]
  %1063 = bitcast i8* %1062 to double*
  %1064 = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_kxx, align 4, !tbaa !2
  %1065 = icmp slt i32 %1064, 0
  br i1 %1065, label %1073, label %1066

; <label>:1066                                    ; preds = %1061
  %1067 = sext i32 %1064 to i64
  %1068 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17
  %1069 = load i8**** %1068, align 8, !tbaa !21
  %1070 = getelementptr inbounds i8*** %1069, i64 %1067
  %1071 = load i8*** %1070, align 8, !tbaa !22
  %1072 = load i8** %1071, align 8, !tbaa !22
  br label %1073

; <label>:1073                                    ; preds = %1061, %1066
  %1074 = phi i8* [ %1072, %1066 ], [ null, %1061 ]
  %1075 = bitcast i8* %1074 to double*
  %1076 = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_kxy, align 4, !tbaa !2
  %1077 = icmp slt i32 %1076, 0
  br i1 %1077, label %1085, label %1078

; <label>:1078                                    ; preds = %1073
  %1079 = sext i32 %1076 to i64
  %1080 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17
  %1081 = load i8**** %1080, align 8, !tbaa !21
  %1082 = getelementptr inbounds i8*** %1081, i64 %1079
  %1083 = load i8*** %1082, align 8, !tbaa !22
  %1084 = load i8** %1083, align 8, !tbaa !22
  br label %1085

; <label>:1085                                    ; preds = %1073, %1078
  %1086 = phi i8* [ %1084, %1078 ], [ null, %1073 ]
  %1087 = bitcast i8* %1086 to double*
  %1088 = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_kxz, align 4, !tbaa !2
  %1089 = icmp slt i32 %1088, 0
  br i1 %1089, label %1097, label %1090

; <label>:1090                                    ; preds = %1085
  %1091 = sext i32 %1088 to i64
  %1092 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17
  %1093 = load i8**** %1092, align 8, !tbaa !21
  %1094 = getelementptr inbounds i8*** %1093, i64 %1091
  %1095 = load i8*** %1094, align 8, !tbaa !22
  %1096 = load i8** %1095, align 8, !tbaa !22
  br label %1097

; <label>:1097                                    ; preds = %1085, %1090
  %1098 = phi i8* [ %1096, %1090 ], [ null, %1085 ]
  %1099 = bitcast i8* %1098 to double*
  %1100 = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_kyy, align 4, !tbaa !2
  %1101 = icmp slt i32 %1100, 0
  br i1 %1101, label %1109, label %1102

; <label>:1102                                    ; preds = %1097
  %1103 = sext i32 %1100 to i64
  %1104 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17
  %1105 = load i8**** %1104, align 8, !tbaa !21
  %1106 = getelementptr inbounds i8*** %1105, i64 %1103
  %1107 = load i8*** %1106, align 8, !tbaa !22
  %1108 = load i8** %1107, align 8, !tbaa !22
  br label %1109

; <label>:1109                                    ; preds = %1097, %1102
  %1110 = phi i8* [ %1108, %1102 ], [ null, %1097 ]
  %1111 = bitcast i8* %1110 to double*
  %1112 = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_kyz, align 4, !tbaa !2
  %1113 = icmp slt i32 %1112, 0
  br i1 %1113, label %1121, label %1114

; <label>:1114                                    ; preds = %1109
  %1115 = sext i32 %1112 to i64
  %1116 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17
  %1117 = load i8**** %1116, align 8, !tbaa !21
  %1118 = getelementptr inbounds i8*** %1117, i64 %1115
  %1119 = load i8*** %1118, align 8, !tbaa !22
  %1120 = load i8** %1119, align 8, !tbaa !22
  br label %1121

; <label>:1121                                    ; preds = %1109, %1114
  %1122 = phi i8* [ %1120, %1114 ], [ null, %1109 ]
  %1123 = bitcast i8* %1122 to double*
  %1124 = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_kzz, align 4, !tbaa !2
  %1125 = icmp slt i32 %1124, 0
  br i1 %1125, label %1134, label %1126

; <label>:1126                                    ; preds = %1121
  %1127 = sext i32 %1124 to i64
  %1128 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17
  %1129 = load i8**** %1128, align 8, !tbaa !21
  %1130 = getelementptr inbounds i8*** %1129, i64 %1127
  %1131 = bitcast i8*** %1130 to double***
  %1132 = load double*** %1131, align 8, !tbaa !22
  %1133 = load double** %1132, align 8, !tbaa !22
  br label %1134

; <label>:1134                                    ; preds = %1121, %1126
  %1135 = phi double* [ %1133, %1126 ], [ null, %1121 ]
  %1136 = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_psi, align 4, !tbaa !2
  %1137 = icmp slt i32 %1136, 0
  br i1 %1137, label %1146, label %1138

; <label>:1138                                    ; preds = %1134
  %1139 = sext i32 %1136 to i64
  %1140 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17
  %1141 = load i8**** %1140, align 8, !tbaa !21
  %1142 = getelementptr inbounds i8*** %1141, i64 %1139
  %1143 = bitcast i8*** %1142 to double***
  %1144 = load double*** %1143, align 8, !tbaa !22
  %1145 = load double** %1144, align 8, !tbaa !22
  br label %1146

; <label>:1146                                    ; preds = %1134, %1138
  %1147 = phi double* [ %1145, %1138 ], [ null, %1134 ]
  %1148 = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_psix, align 4, !tbaa !2
  %1149 = icmp slt i32 %1148, 0
  br i1 %1149, label %1158, label %1150

; <label>:1150                                    ; preds = %1146
  %1151 = sext i32 %1148 to i64
  %1152 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17
  %1153 = load i8**** %1152, align 8, !tbaa !21
  %1154 = getelementptr inbounds i8*** %1153, i64 %1151
  %1155 = bitcast i8*** %1154 to double***
  %1156 = load double*** %1155, align 8, !tbaa !22
  %1157 = load double** %1156, align 8, !tbaa !22
  br label %1158

; <label>:1158                                    ; preds = %1146, %1150
  %1159 = phi double* [ %1157, %1150 ], [ null, %1146 ]
  %1160 = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_psixx, align 4, !tbaa !2
  %1161 = icmp slt i32 %1160, 0
  br i1 %1161, label %1170, label %1162

; <label>:1162                                    ; preds = %1158
  %1163 = sext i32 %1160 to i64
  %1164 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17
  %1165 = load i8**** %1164, align 8, !tbaa !21
  %1166 = getelementptr inbounds i8*** %1165, i64 %1163
  %1167 = bitcast i8*** %1166 to double***
  %1168 = load double*** %1167, align 8, !tbaa !22
  %1169 = load double** %1168, align 8, !tbaa !22
  br label %1170

; <label>:1170                                    ; preds = %1158, %1162
  %1171 = phi double* [ %1169, %1162 ], [ null, %1158 ]
  %1172 = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_psixy, align 4, !tbaa !2
  %1173 = icmp slt i32 %1172, 0
  br i1 %1173, label %1182, label %1174

; <label>:1174                                    ; preds = %1170
  %1175 = sext i32 %1172 to i64
  %1176 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17
  %1177 = load i8**** %1176, align 8, !tbaa !21
  %1178 = getelementptr inbounds i8*** %1177, i64 %1175
  %1179 = bitcast i8*** %1178 to double***
  %1180 = load double*** %1179, align 8, !tbaa !22
  %1181 = load double** %1180, align 8, !tbaa !22
  br label %1182

; <label>:1182                                    ; preds = %1170, %1174
  %1183 = phi double* [ %1181, %1174 ], [ null, %1170 ]
  %1184 = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_psixz, align 4, !tbaa !2
  %1185 = icmp slt i32 %1184, 0
  br i1 %1185, label %1194, label %1186

; <label>:1186                                    ; preds = %1182
  %1187 = sext i32 %1184 to i64
  %1188 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17
  %1189 = load i8**** %1188, align 8, !tbaa !21
  %1190 = getelementptr inbounds i8*** %1189, i64 %1187
  %1191 = bitcast i8*** %1190 to double***
  %1192 = load double*** %1191, align 8, !tbaa !22
  %1193 = load double** %1192, align 8, !tbaa !22
  br label %1194

; <label>:1194                                    ; preds = %1182, %1186
  %1195 = phi double* [ %1193, %1186 ], [ null, %1182 ]
  %1196 = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_psiy, align 4, !tbaa !2
  %1197 = icmp slt i32 %1196, 0
  br i1 %1197, label %1206, label %1198

; <label>:1198                                    ; preds = %1194
  %1199 = sext i32 %1196 to i64
  %1200 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17
  %1201 = load i8**** %1200, align 8, !tbaa !21
  %1202 = getelementptr inbounds i8*** %1201, i64 %1199
  %1203 = bitcast i8*** %1202 to double***
  %1204 = load double*** %1203, align 8, !tbaa !22
  %1205 = load double** %1204, align 8, !tbaa !22
  br label %1206

; <label>:1206                                    ; preds = %1194, %1198
  %1207 = phi double* [ %1205, %1198 ], [ null, %1194 ]
  %1208 = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_psiyy, align 4, !tbaa !2
  %1209 = icmp slt i32 %1208, 0
  br i1 %1209, label %1218, label %1210

; <label>:1210                                    ; preds = %1206
  %1211 = sext i32 %1208 to i64
  %1212 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17
  %1213 = load i8**** %1212, align 8, !tbaa !21
  %1214 = getelementptr inbounds i8*** %1213, i64 %1211
  %1215 = bitcast i8*** %1214 to double***
  %1216 = load double*** %1215, align 8, !tbaa !22
  %1217 = load double** %1216, align 8, !tbaa !22
  br label %1218

; <label>:1218                                    ; preds = %1206, %1210
  %1219 = phi double* [ %1217, %1210 ], [ null, %1206 ]
  %1220 = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_psiyz, align 4, !tbaa !2
  %1221 = icmp slt i32 %1220, 0
  br i1 %1221, label %1230, label %1222

; <label>:1222                                    ; preds = %1218
  %1223 = sext i32 %1220 to i64
  %1224 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17
  %1225 = load i8**** %1224, align 8, !tbaa !21
  %1226 = getelementptr inbounds i8*** %1225, i64 %1223
  %1227 = bitcast i8*** %1226 to double***
  %1228 = load double*** %1227, align 8, !tbaa !22
  %1229 = load double** %1228, align 8, !tbaa !22
  br label %1230

; <label>:1230                                    ; preds = %1218, %1222
  %1231 = phi double* [ %1229, %1222 ], [ null, %1218 ]
  %1232 = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_psiz, align 4, !tbaa !2
  %1233 = icmp slt i32 %1232, 0
  br i1 %1233, label %1242, label %1234

; <label>:1234                                    ; preds = %1230
  %1235 = sext i32 %1232 to i64
  %1236 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17
  %1237 = load i8**** %1236, align 8, !tbaa !21
  %1238 = getelementptr inbounds i8*** %1237, i64 %1235
  %1239 = bitcast i8*** %1238 to double***
  %1240 = load double*** %1239, align 8, !tbaa !22
  %1241 = load double** %1240, align 8, !tbaa !22
  br label %1242

; <label>:1242                                    ; preds = %1230, %1234
  %1243 = phi double* [ %1241, %1234 ], [ null, %1230 ]
  %1244 = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_psizz, align 4, !tbaa !2
  %1245 = icmp slt i32 %1244, 0
  br i1 %1245, label %1254, label %1246

; <label>:1246                                    ; preds = %1242
  %1247 = sext i32 %1244 to i64
  %1248 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17
  %1249 = load i8**** %1248, align 8, !tbaa !21
  %1250 = getelementptr inbounds i8*** %1249, i64 %1247
  %1251 = bitcast i8*** %1250 to double***
  %1252 = load double*** %1251, align 8, !tbaa !22
  %1253 = load double** %1252, align 8, !tbaa !22
  br label %1254

; <label>:1254                                    ; preds = %1242, %1246
  %1255 = phi double* [ %1253, %1246 ], [ null, %1242 ]
  %1256 = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_r, align 4, !tbaa !2
  %1257 = icmp slt i32 %1256, 0
  br i1 %1257, label %1266, label %1258

; <label>:1258                                    ; preds = %1254
  %1259 = sext i32 %1256 to i64
  %1260 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17
  %1261 = load i8**** %1260, align 8, !tbaa !21
  %1262 = getelementptr inbounds i8*** %1261, i64 %1259
  %1263 = bitcast i8*** %1262 to double***
  %1264 = load double*** %1263, align 8, !tbaa !22
  %1265 = load double** %1264, align 8, !tbaa !22
  br label %1266

; <label>:1266                                    ; preds = %1254, %1258
  %1267 = phi double* [ %1265, %1258 ], [ null, %1254 ]
  %1268 = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_shift_state, align 4, !tbaa !2
  %1269 = icmp slt i32 %1268, 0
  br i1 %1269, label %1278, label %1270

; <label>:1270                                    ; preds = %1266
  %1271 = sext i32 %1268 to i64
  %1272 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17
  %1273 = load i8**** %1272, align 8, !tbaa !21
  %1274 = getelementptr inbounds i8*** %1273, i64 %1271
  %1275 = bitcast i8*** %1274 to i32***
  %1276 = load i32*** %1275, align 8, !tbaa !22
  %1277 = load i32** %1276, align 8, !tbaa !22
  br label %1278

; <label>:1278                                    ; preds = %1266, %1270
  %1279 = phi i32* [ %1277, %1270 ], [ null, %1266 ]
  %1280 = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_x, align 4, !tbaa !2
  %1281 = icmp slt i32 %1280, 0
  br i1 %1281, label %1290, label %1282

; <label>:1282                                    ; preds = %1278
  %1283 = sext i32 %1280 to i64
  %1284 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17
  %1285 = load i8**** %1284, align 8, !tbaa !21
  %1286 = getelementptr inbounds i8*** %1285, i64 %1283
  %1287 = bitcast i8*** %1286 to double***
  %1288 = load double*** %1287, align 8, !tbaa !22
  %1289 = load double** %1288, align 8, !tbaa !22
  br label %1290

; <label>:1290                                    ; preds = %1278, %1282
  %1291 = phi double* [ %1289, %1282 ], [ null, %1278 ]
  %1292 = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_y, align 4, !tbaa !2
  %1293 = icmp slt i32 %1292, 0
  br i1 %1293, label %1302, label %1294

; <label>:1294                                    ; preds = %1290
  %1295 = sext i32 %1292 to i64
  %1296 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17
  %1297 = load i8**** %1296, align 8, !tbaa !21
  %1298 = getelementptr inbounds i8*** %1297, i64 %1295
  %1299 = bitcast i8*** %1298 to double***
  %1300 = load double*** %1299, align 8, !tbaa !22
  %1301 = load double** %1300, align 8, !tbaa !22
  br label %1302

; <label>:1302                                    ; preds = %1290, %1294
  %1303 = phi double* [ %1301, %1294 ], [ null, %1290 ]
  %1304 = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_z, align 4, !tbaa !2
  %1305 = icmp slt i32 %1304, 0
  br i1 %1305, label %1314, label %1306

; <label>:1306                                    ; preds = %1302
  %1307 = sext i32 %1304 to i64
  %1308 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17
  %1309 = load i8**** %1308, align 8, !tbaa !21
  %1310 = getelementptr inbounds i8*** %1309, i64 %1307
  %1311 = bitcast i8*** %1310 to double***
  %1312 = load double*** %1311, align 8, !tbaa !22
  %1313 = load double** %1312, align 8, !tbaa !22
  br label %1314

; <label>:1314                                    ; preds = %1302, %1306
  %1315 = phi double* [ %1313, %1306 ], [ null, %1302 ]
  tail call void %351(i32* %352, i32* %354, i32* %356, i32* %358, i32* %360, i32* %362, i32* %364, i32* %366, i32* %368, double* %369, double* %370, double* %372, double* %374, i32* %376, i32* %377, i32* %379, i32* %380, %struct.cGH* %GH, i32* %402, i32* %401, i32* %403, i32* %425, i32* %424, i32* %426, i32* %448, i32* %447, i32* %449, i32* %471, i32* %470, i32* %472, double* %484, double* %496, double* %508, double* %520, double* %532, double* %544, double* %556, double* %568, double* %580, double* %592, double* %604, double* %616, double* %628, double* %640, i32* %662, i32* %661, i32* %663, i32* %685, i32* %684, i32* %686, i32* %708, i32* %707, i32* %709, i32* %731, i32* %730, i32* %732, i32* %754, i32* %753, i32* %755, i32* %777, i32* %776, i32* %778, i32* %800, i32* %799, i32* %801, i32* %823, i32* %822, i32* %824, i32* %846, i32* %845, i32* %847, i32* %859, double* %871, double* %883, double* %895, double* %907, double* %919, double* %931, double* %943, i32* %955, double* %967, double* %979, double* %991, double* %1003, double* %1015, double* %1027, double* %1039, double* %1051, double* %1063, double* %1075, double* %1087, double* %1099, double* %1111, double* %1123, double* %1135, double* %1147, double* %1159, double* %1171, double* %1183, double* %1195, double* %1207, double* %1219, double* %1231, double* %1243, double* %1255, double* %1267, i32* %1279, double* %1291, double* %1303, double* %1315) #2
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