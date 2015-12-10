; ModuleID = '../../SPEC/benchspec/CPU2006/436.cactusADM/src/CactusBindings/BenchADM_FortranWrapper.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

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

; Function Attrs: nounwind optsize uwtable
define i32 @CCTKi_BindingsFortranWrapperBenchADM(%struct.cGH* %GH, i8* nocapture %fpointer) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.cGH* %GH}, i64 0, metadata !48), !dbg !136
  tail call void @llvm.dbg.value(metadata !{i8* %fpointer}, i64 0, metadata !49), !dbg !136
  %0 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_ADM_gxx, align 4, !dbg !137, !tbaa !138
  %cmp = icmp eq i32 %0, -1, !dbg !137
  br i1 %cmp, label %if.then, label %if.end, !dbg !137

if.then:                                          ; preds = %entry
  %call = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([18 x i8]* @.str, i64 0, i64 0)) #3, !dbg !137
  store i32 %call, i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_ADM_gxx, align 4, !dbg !137, !tbaa !138
  br label %if.end, !dbg !137

if.end:                                           ; preds = %if.then, %entry
  %1 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKGROUPNUM_ADM_metric_prev, align 4, !dbg !137, !tbaa !138
  %cmp1 = icmp eq i32 %1, -1, !dbg !137
  br i1 %cmp1, label %if.then2, label %if.end4, !dbg !137

if.then2:                                         ; preds = %if.end
  %call3 = tail call i32 @CCTK_GroupIndex(i8* getelementptr inbounds ([26 x i8]* @.str1, i64 0, i64 0)) #3, !dbg !137
  store i32 %call3, i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKGROUPNUM_ADM_metric_prev, align 4, !dbg !137, !tbaa !138
  br label %if.end4, !dbg !137

if.end4:                                          ; preds = %if.then2, %if.end
  %2 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_ADM_gxy, align 4, !dbg !137, !tbaa !138
  %cmp5 = icmp eq i32 %2, -1, !dbg !137
  br i1 %cmp5, label %if.then6, label %if.end8, !dbg !137

if.then6:                                         ; preds = %if.end4
  %call7 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([18 x i8]* @.str2, i64 0, i64 0)) #3, !dbg !137
  store i32 %call7, i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_ADM_gxy, align 4, !dbg !137, !tbaa !138
  br label %if.end8, !dbg !137

if.end8:                                          ; preds = %if.then6, %if.end4
  %3 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_ADM_gxz, align 4, !dbg !137, !tbaa !138
  %cmp9 = icmp eq i32 %3, -1, !dbg !137
  br i1 %cmp9, label %if.then10, label %if.end12, !dbg !137

if.then10:                                        ; preds = %if.end8
  %call11 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([18 x i8]* @.str3, i64 0, i64 0)) #3, !dbg !137
  store i32 %call11, i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_ADM_gxz, align 4, !dbg !137, !tbaa !138
  br label %if.end12, !dbg !137

if.end12:                                         ; preds = %if.then10, %if.end8
  %4 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_ADM_gyy, align 4, !dbg !137, !tbaa !138
  %cmp13 = icmp eq i32 %4, -1, !dbg !137
  br i1 %cmp13, label %if.then14, label %if.end16, !dbg !137

if.then14:                                        ; preds = %if.end12
  %call15 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([18 x i8]* @.str4, i64 0, i64 0)) #3, !dbg !137
  store i32 %call15, i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_ADM_gyy, align 4, !dbg !137, !tbaa !138
  br label %if.end16, !dbg !137

if.end16:                                         ; preds = %if.then14, %if.end12
  %5 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_ADM_gyz, align 4, !dbg !137, !tbaa !138
  %cmp17 = icmp eq i32 %5, -1, !dbg !137
  br i1 %cmp17, label %if.then18, label %if.end20, !dbg !137

if.then18:                                        ; preds = %if.end16
  %call19 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([18 x i8]* @.str5, i64 0, i64 0)) #3, !dbg !137
  store i32 %call19, i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_ADM_gyz, align 4, !dbg !137, !tbaa !138
  br label %if.end20, !dbg !137

if.end20:                                         ; preds = %if.then18, %if.end16
  %6 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_ADM_gzz, align 4, !dbg !137, !tbaa !138
  %cmp21 = icmp eq i32 %6, -1, !dbg !137
  br i1 %cmp21, label %if.then22, label %if.end24, !dbg !137

if.then22:                                        ; preds = %if.end20
  %call23 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([18 x i8]* @.str6, i64 0, i64 0)) #3, !dbg !137
  store i32 %call23, i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_ADM_gzz, align 4, !dbg !137, !tbaa !138
  br label %if.end24, !dbg !137

if.end24:                                         ; preds = %if.then22, %if.end20
  %7 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_ADM_kxx_stag, align 4, !dbg !137, !tbaa !138
  %cmp25 = icmp eq i32 %7, -1, !dbg !137
  br i1 %cmp25, label %if.then26, label %if.end28, !dbg !137

if.then26:                                        ; preds = %if.end24
  %call27 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([23 x i8]* @.str7, i64 0, i64 0)) #3, !dbg !137
  store i32 %call27, i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_ADM_kxx_stag, align 4, !dbg !137, !tbaa !138
  br label %if.end28, !dbg !137

if.end28:                                         ; preds = %if.then26, %if.end24
  %8 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKGROUPNUM_ADM_curv_stag, align 4, !dbg !137, !tbaa !138
  %cmp29 = icmp eq i32 %8, -1, !dbg !137
  br i1 %cmp29, label %if.then30, label %if.end32, !dbg !137

if.then30:                                        ; preds = %if.end28
  %call31 = tail call i32 @CCTK_GroupIndex(i8* getelementptr inbounds ([24 x i8]* @.str8, i64 0, i64 0)) #3, !dbg !137
  store i32 %call31, i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKGROUPNUM_ADM_curv_stag, align 4, !dbg !137, !tbaa !138
  br label %if.end32, !dbg !137

if.end32:                                         ; preds = %if.then30, %if.end28
  %9 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_ADM_kxy_stag, align 4, !dbg !137, !tbaa !138
  %cmp33 = icmp eq i32 %9, -1, !dbg !137
  br i1 %cmp33, label %if.then34, label %if.end36, !dbg !137

if.then34:                                        ; preds = %if.end32
  %call35 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([23 x i8]* @.str9, i64 0, i64 0)) #3, !dbg !137
  store i32 %call35, i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_ADM_kxy_stag, align 4, !dbg !137, !tbaa !138
  br label %if.end36, !dbg !137

if.end36:                                         ; preds = %if.then34, %if.end32
  %10 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_ADM_kxz_stag, align 4, !dbg !137, !tbaa !138
  %cmp37 = icmp eq i32 %10, -1, !dbg !137
  br i1 %cmp37, label %if.then38, label %if.end40, !dbg !137

if.then38:                                        ; preds = %if.end36
  %call39 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([23 x i8]* @.str10, i64 0, i64 0)) #3, !dbg !137
  store i32 %call39, i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_ADM_kxz_stag, align 4, !dbg !137, !tbaa !138
  br label %if.end40, !dbg !137

if.end40:                                         ; preds = %if.then38, %if.end36
  %11 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_ADM_kyy_stag, align 4, !dbg !137, !tbaa !138
  %cmp41 = icmp eq i32 %11, -1, !dbg !137
  br i1 %cmp41, label %if.then42, label %if.end44, !dbg !137

if.then42:                                        ; preds = %if.end40
  %call43 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([23 x i8]* @.str11, i64 0, i64 0)) #3, !dbg !137
  store i32 %call43, i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_ADM_kyy_stag, align 4, !dbg !137, !tbaa !138
  br label %if.end44, !dbg !137

if.end44:                                         ; preds = %if.then42, %if.end40
  %12 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_ADM_kyz_stag, align 4, !dbg !137, !tbaa !138
  %cmp45 = icmp eq i32 %12, -1, !dbg !137
  br i1 %cmp45, label %if.then46, label %if.end48, !dbg !137

if.then46:                                        ; preds = %if.end44
  %call47 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([23 x i8]* @.str12, i64 0, i64 0)) #3, !dbg !137
  store i32 %call47, i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_ADM_kyz_stag, align 4, !dbg !137, !tbaa !138
  br label %if.end48, !dbg !137

if.end48:                                         ; preds = %if.then46, %if.end44
  %13 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_ADM_kzz_stag, align 4, !dbg !137, !tbaa !138
  %cmp49 = icmp eq i32 %13, -1, !dbg !137
  br i1 %cmp49, label %if.then50, label %if.end52, !dbg !137

if.then50:                                        ; preds = %if.end48
  %call51 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([23 x i8]* @.str13, i64 0, i64 0)) #3, !dbg !137
  store i32 %call51, i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_ADM_kzz_stag, align 4, !dbg !137, !tbaa !138
  br label %if.end52, !dbg !137

if.end52:                                         ; preds = %if.then50, %if.end48
  %14 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_adms_gxx, align 4, !dbg !137, !tbaa !138
  %cmp53 = icmp eq i32 %14, -1, !dbg !137
  br i1 %cmp53, label %if.then54, label %if.end56, !dbg !137

if.then54:                                        ; preds = %if.end52
  %call55 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([19 x i8]* @.str14, i64 0, i64 0)) #3, !dbg !137
  store i32 %call55, i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_adms_gxx, align 4, !dbg !137, !tbaa !138
  br label %if.end56, !dbg !137

if.end56:                                         ; preds = %if.then54, %if.end52
  %15 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKGROUPNUM_ADM_sources, align 4, !dbg !137, !tbaa !138
  %cmp57 = icmp eq i32 %15, -1, !dbg !137
  br i1 %cmp57, label %if.then58, label %if.end60, !dbg !137

if.then58:                                        ; preds = %if.end56
  %call59 = tail call i32 @CCTK_GroupIndex(i8* getelementptr inbounds ([22 x i8]* @.str15, i64 0, i64 0)) #3, !dbg !137
  store i32 %call59, i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKGROUPNUM_ADM_sources, align 4, !dbg !137, !tbaa !138
  br label %if.end60, !dbg !137

if.end60:                                         ; preds = %if.then58, %if.end56
  %16 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_adms_gxy, align 4, !dbg !137, !tbaa !138
  %cmp61 = icmp eq i32 %16, -1, !dbg !137
  br i1 %cmp61, label %if.then62, label %if.end64, !dbg !137

if.then62:                                        ; preds = %if.end60
  %call63 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([19 x i8]* @.str16, i64 0, i64 0)) #3, !dbg !137
  store i32 %call63, i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_adms_gxy, align 4, !dbg !137, !tbaa !138
  br label %if.end64, !dbg !137

if.end64:                                         ; preds = %if.then62, %if.end60
  %17 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_adms_gxz, align 4, !dbg !137, !tbaa !138
  %cmp65 = icmp eq i32 %17, -1, !dbg !137
  br i1 %cmp65, label %if.then66, label %if.end68, !dbg !137

if.then66:                                        ; preds = %if.end64
  %call67 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([19 x i8]* @.str17, i64 0, i64 0)) #3, !dbg !137
  store i32 %call67, i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_adms_gxz, align 4, !dbg !137, !tbaa !138
  br label %if.end68, !dbg !137

if.end68:                                         ; preds = %if.then66, %if.end64
  %18 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_adms_gyy, align 4, !dbg !137, !tbaa !138
  %cmp69 = icmp eq i32 %18, -1, !dbg !137
  br i1 %cmp69, label %if.then70, label %if.end72, !dbg !137

if.then70:                                        ; preds = %if.end68
  %call71 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([19 x i8]* @.str18, i64 0, i64 0)) #3, !dbg !137
  store i32 %call71, i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_adms_gyy, align 4, !dbg !137, !tbaa !138
  br label %if.end72, !dbg !137

if.end72:                                         ; preds = %if.then70, %if.end68
  %19 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_adms_gyz, align 4, !dbg !137, !tbaa !138
  %cmp73 = icmp eq i32 %19, -1, !dbg !137
  br i1 %cmp73, label %if.then74, label %if.end76, !dbg !137

if.then74:                                        ; preds = %if.end72
  %call75 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([19 x i8]* @.str19, i64 0, i64 0)) #3, !dbg !137
  store i32 %call75, i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_adms_gyz, align 4, !dbg !137, !tbaa !138
  br label %if.end76, !dbg !137

if.end76:                                         ; preds = %if.then74, %if.end72
  %20 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_adms_gzz, align 4, !dbg !137, !tbaa !138
  %cmp77 = icmp eq i32 %20, -1, !dbg !137
  br i1 %cmp77, label %if.then78, label %if.end80, !dbg !137

if.then78:                                        ; preds = %if.end76
  %call79 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([19 x i8]* @.str20, i64 0, i64 0)) #3, !dbg !137
  store i32 %call79, i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_adms_gzz, align 4, !dbg !137, !tbaa !138
  br label %if.end80, !dbg !137

if.end80:                                         ; preds = %if.then78, %if.end76
  %21 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_adms_kxx, align 4, !dbg !137, !tbaa !138
  %cmp81 = icmp eq i32 %21, -1, !dbg !137
  br i1 %cmp81, label %if.then82, label %if.end84, !dbg !137

if.then82:                                        ; preds = %if.end80
  %call83 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([19 x i8]* @.str21, i64 0, i64 0)) #3, !dbg !137
  store i32 %call83, i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_adms_kxx, align 4, !dbg !137, !tbaa !138
  br label %if.end84, !dbg !137

if.end84:                                         ; preds = %if.then82, %if.end80
  %22 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_adms_kxy, align 4, !dbg !137, !tbaa !138
  %cmp85 = icmp eq i32 %22, -1, !dbg !137
  br i1 %cmp85, label %if.then86, label %if.end88, !dbg !137

if.then86:                                        ; preds = %if.end84
  %call87 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([19 x i8]* @.str22, i64 0, i64 0)) #3, !dbg !137
  store i32 %call87, i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_adms_kxy, align 4, !dbg !137, !tbaa !138
  br label %if.end88, !dbg !137

if.end88:                                         ; preds = %if.then86, %if.end84
  %23 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_adms_kxz, align 4, !dbg !137, !tbaa !138
  %cmp89 = icmp eq i32 %23, -1, !dbg !137
  br i1 %cmp89, label %if.then90, label %if.end92, !dbg !137

if.then90:                                        ; preds = %if.end88
  %call91 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([19 x i8]* @.str23, i64 0, i64 0)) #3, !dbg !137
  store i32 %call91, i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_adms_kxz, align 4, !dbg !137, !tbaa !138
  br label %if.end92, !dbg !137

if.end92:                                         ; preds = %if.then90, %if.end88
  %24 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_adms_kyy, align 4, !dbg !137, !tbaa !138
  %cmp93 = icmp eq i32 %24, -1, !dbg !137
  br i1 %cmp93, label %if.then94, label %if.end96, !dbg !137

if.then94:                                        ; preds = %if.end92
  %call95 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([19 x i8]* @.str24, i64 0, i64 0)) #3, !dbg !137
  store i32 %call95, i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_adms_kyy, align 4, !dbg !137, !tbaa !138
  br label %if.end96, !dbg !137

if.end96:                                         ; preds = %if.then94, %if.end92
  %25 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_adms_kyz, align 4, !dbg !137, !tbaa !138
  %cmp97 = icmp eq i32 %25, -1, !dbg !137
  br i1 %cmp97, label %if.then98, label %if.end100, !dbg !137

if.then98:                                        ; preds = %if.end96
  %call99 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([19 x i8]* @.str25, i64 0, i64 0)) #3, !dbg !137
  store i32 %call99, i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_adms_kyz, align 4, !dbg !137, !tbaa !138
  br label %if.end100, !dbg !137

if.end100:                                        ; preds = %if.then98, %if.end96
  %26 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_adms_kzz, align 4, !dbg !137, !tbaa !138
  %cmp101 = icmp eq i32 %26, -1, !dbg !137
  br i1 %cmp101, label %if.then102, label %if.end104, !dbg !137

if.then102:                                       ; preds = %if.end100
  %call103 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([19 x i8]* @.str26, i64 0, i64 0)) #3, !dbg !137
  store i32 %call103, i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_adms_kzz, align 4, !dbg !137, !tbaa !138
  br label %if.end104, !dbg !137

if.end104:                                        ; preds = %if.then102, %if.end100
  %27 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_active_slicing_handle, align 4, !dbg !137, !tbaa !138
  %cmp105 = icmp eq i32 %27, -1, !dbg !137
  br i1 %cmp105, label %if.then106, label %if.end108, !dbg !137

if.then106:                                       ; preds = %if.end104
  %call107 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([32 x i8]* @.str27, i64 0, i64 0)) #3, !dbg !137
  store i32 %call107, i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_active_slicing_handle, align 4, !dbg !137, !tbaa !138
  br label %if.end108, !dbg !137

if.end108:                                        ; preds = %if.then106, %if.end104
  %28 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKGROUPNUM_slicing_flags, align 4, !dbg !137, !tbaa !138
  %cmp109 = icmp eq i32 %28, -1, !dbg !137
  br i1 %cmp109, label %if.then110, label %if.end112, !dbg !137

if.then110:                                       ; preds = %if.end108
  %call111 = tail call i32 @CCTK_GroupIndex(i8* getelementptr inbounds ([24 x i8]* @.str28, i64 0, i64 0)) #3, !dbg !137
  store i32 %call111, i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKGROUPNUM_slicing_flags, align 4, !dbg !137, !tbaa !138
  br label %if.end112, !dbg !137

if.end112:                                        ; preds = %if.then110, %if.end108
  %29 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_alp, align 4, !dbg !137, !tbaa !138
  %cmp113 = icmp eq i32 %29, -1, !dbg !137
  br i1 %cmp113, label %if.then114, label %if.end116, !dbg !137

if.then114:                                       ; preds = %if.end112
  %call115 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str29, i64 0, i64 0)) #3, !dbg !137
  store i32 %call115, i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_alp, align 4, !dbg !137, !tbaa !138
  br label %if.end116, !dbg !137

if.end116:                                        ; preds = %if.then114, %if.end112
  %30 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKGROUPNUM_lapse, align 4, !dbg !137, !tbaa !138
  %cmp117 = icmp eq i32 %30, -1, !dbg !137
  br i1 %cmp117, label %if.then118, label %if.end120, !dbg !137

if.then118:                                       ; preds = %if.end116
  %call119 = tail call i32 @CCTK_GroupIndex(i8* getelementptr inbounds ([16 x i8]* @.str30, i64 0, i64 0)) #3, !dbg !137
  store i32 %call119, i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKGROUPNUM_lapse, align 4, !dbg !137, !tbaa !138
  br label %if.end120, !dbg !137

if.end120:                                        ; preds = %if.then118, %if.end116
  %31 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_betax, align 4, !dbg !137, !tbaa !138
  %cmp121 = icmp eq i32 %31, -1, !dbg !137
  br i1 %cmp121, label %if.then122, label %if.end124, !dbg !137

if.then122:                                       ; preds = %if.end120
  %call123 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str31, i64 0, i64 0)) #3, !dbg !137
  store i32 %call123, i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_betax, align 4, !dbg !137, !tbaa !138
  br label %if.end124, !dbg !137

if.end124:                                        ; preds = %if.then122, %if.end120
  %32 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKGROUPNUM_shift, align 4, !dbg !137, !tbaa !138
  %cmp125 = icmp eq i32 %32, -1, !dbg !137
  br i1 %cmp125, label %if.then126, label %if.end128, !dbg !137

if.then126:                                       ; preds = %if.end124
  %call127 = tail call i32 @CCTK_GroupIndex(i8* getelementptr inbounds ([16 x i8]* @.str32, i64 0, i64 0)) #3, !dbg !137
  store i32 %call127, i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKGROUPNUM_shift, align 4, !dbg !137, !tbaa !138
  br label %if.end128, !dbg !137

if.end128:                                        ; preds = %if.then126, %if.end124
  %33 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_betay, align 4, !dbg !137, !tbaa !138
  %cmp129 = icmp eq i32 %33, -1, !dbg !137
  br i1 %cmp129, label %if.then130, label %if.end132, !dbg !137

if.then130:                                       ; preds = %if.end128
  %call131 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str33, i64 0, i64 0)) #3, !dbg !137
  store i32 %call131, i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_betay, align 4, !dbg !137, !tbaa !138
  br label %if.end132, !dbg !137

if.end132:                                        ; preds = %if.then130, %if.end128
  %34 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_betaz, align 4, !dbg !137, !tbaa !138
  %cmp133 = icmp eq i32 %34, -1, !dbg !137
  br i1 %cmp133, label %if.then134, label %if.end136, !dbg !137

if.then134:                                       ; preds = %if.end132
  %call135 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str34, i64 0, i64 0)) #3, !dbg !137
  store i32 %call135, i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_betaz, align 4, !dbg !137, !tbaa !138
  br label %if.end136, !dbg !137

if.end136:                                        ; preds = %if.then134, %if.end132
  %35 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_coarse_dx, align 4, !dbg !137, !tbaa !138
  %cmp137 = icmp eq i32 %35, -1, !dbg !137
  br i1 %cmp137, label %if.then138, label %if.end140, !dbg !137

if.then138:                                       ; preds = %if.end136
  %call139 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str35, i64 0, i64 0)) #3, !dbg !137
  store i32 %call139, i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_coarse_dx, align 4, !dbg !137, !tbaa !138
  br label %if.end140, !dbg !137

if.end140:                                        ; preds = %if.then138, %if.end136
  %36 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKGROUPNUM_gridspacings, align 4, !dbg !137, !tbaa !138
  %cmp141 = icmp eq i32 %36, -1, !dbg !137
  br i1 %cmp141, label %if.then142, label %if.end144, !dbg !137

if.then142:                                       ; preds = %if.end140
  %call143 = tail call i32 @CCTK_GroupIndex(i8* getelementptr inbounds ([19 x i8]* @.str36, i64 0, i64 0)) #3, !dbg !137
  store i32 %call143, i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKGROUPNUM_gridspacings, align 4, !dbg !137, !tbaa !138
  br label %if.end144, !dbg !137

if.end144:                                        ; preds = %if.then142, %if.end140
  %37 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_coarse_dy, align 4, !dbg !137, !tbaa !138
  %cmp145 = icmp eq i32 %37, -1, !dbg !137
  br i1 %cmp145, label %if.then146, label %if.end148, !dbg !137

if.then146:                                       ; preds = %if.end144
  %call147 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str37, i64 0, i64 0)) #3, !dbg !137
  store i32 %call147, i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_coarse_dy, align 4, !dbg !137, !tbaa !138
  br label %if.end148, !dbg !137

if.end148:                                        ; preds = %if.then146, %if.end144
  %38 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_coarse_dz, align 4, !dbg !137, !tbaa !138
  %cmp149 = icmp eq i32 %38, -1, !dbg !137
  br i1 %cmp149, label %if.then150, label %if.end152, !dbg !137

if.then150:                                       ; preds = %if.end148
  %call151 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str38, i64 0, i64 0)) #3, !dbg !137
  store i32 %call151, i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_coarse_dz, align 4, !dbg !137, !tbaa !138
  br label %if.end152, !dbg !137

if.end152:                                        ; preds = %if.then150, %if.end148
  %39 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_conformal_state, align 4, !dbg !137, !tbaa !138
  %cmp153 = icmp eq i32 %39, -1, !dbg !137
  br i1 %cmp153, label %if.then154, label %if.end156, !dbg !137

if.then154:                                       ; preds = %if.end152
  %call155 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([26 x i8]* @.str39, i64 0, i64 0)) #3, !dbg !137
  store i32 %call155, i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_conformal_state, align 4, !dbg !137, !tbaa !138
  br label %if.end156, !dbg !137

if.end156:                                        ; preds = %if.then154, %if.end152
  %40 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKGROUPNUM_flags, align 4, !dbg !137, !tbaa !138
  %cmp157 = icmp eq i32 %40, -1, !dbg !137
  br i1 %cmp157, label %if.then158, label %if.end160, !dbg !137

if.then158:                                       ; preds = %if.end156
  %call159 = tail call i32 @CCTK_GroupIndex(i8* getelementptr inbounds ([16 x i8]* @.str40, i64 0, i64 0)) #3, !dbg !137
  store i32 %call159, i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKGROUPNUM_flags, align 4, !dbg !137, !tbaa !138
  br label %if.end160, !dbg !137

if.end160:                                        ; preds = %if.then158, %if.end156
  %41 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_courant_min_time, align 4, !dbg !137, !tbaa !138
  %cmp161 = icmp eq i32 %41, -1, !dbg !137
  br i1 %cmp161, label %if.then162, label %if.end164, !dbg !137

if.then162:                                       ; preds = %if.end160
  %call163 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([23 x i8]* @.str41, i64 0, i64 0)) #3, !dbg !137
  store i32 %call163, i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_courant_min_time, align 4, !dbg !137, !tbaa !138
  br label %if.end164, !dbg !137

if.end164:                                        ; preds = %if.then162, %if.end160
  %42 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKGROUPNUM_speedvars, align 4, !dbg !137, !tbaa !138
  %cmp165 = icmp eq i32 %42, -1, !dbg !137
  br i1 %cmp165, label %if.then166, label %if.end168, !dbg !137

if.then166:                                       ; preds = %if.end164
  %call167 = tail call i32 @CCTK_GroupIndex(i8* getelementptr inbounds ([16 x i8]* @.str42, i64 0, i64 0)) #3, !dbg !137
  store i32 %call167, i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKGROUPNUM_speedvars, align 4, !dbg !137, !tbaa !138
  br label %if.end168, !dbg !137

if.end168:                                        ; preds = %if.then166, %if.end164
  %43 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_courant_wave_speed, align 4, !dbg !137, !tbaa !138
  %cmp169 = icmp eq i32 %43, -1, !dbg !137
  br i1 %cmp169, label %if.then170, label %if.end172, !dbg !137

if.then170:                                       ; preds = %if.end168
  %call171 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([25 x i8]* @.str43, i64 0, i64 0)) #3, !dbg !137
  store i32 %call171, i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_courant_wave_speed, align 4, !dbg !137, !tbaa !138
  br label %if.end172, !dbg !137

if.end172:                                        ; preds = %if.then170, %if.end168
  %44 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_emask, align 4, !dbg !137, !tbaa !138
  %cmp173 = icmp eq i32 %44, -1, !dbg !137
  br i1 %cmp173, label %if.then174, label %if.end176, !dbg !137

if.then174:                                       ; preds = %if.end172
  %call175 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str44, i64 0, i64 0)) #3, !dbg !137
  store i32 %call175, i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_emask, align 4, !dbg !137, !tbaa !138
  br label %if.end176, !dbg !137

if.end176:                                        ; preds = %if.then174, %if.end172
  %45 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKGROUPNUM_mask, align 4, !dbg !137, !tbaa !138
  %cmp177 = icmp eq i32 %45, -1, !dbg !137
  br i1 %cmp177, label %if.then178, label %if.end180, !dbg !137

if.then178:                                       ; preds = %if.end176
  %call179 = tail call i32 @CCTK_GroupIndex(i8* getelementptr inbounds ([15 x i8]* @.str45, i64 0, i64 0)) #3, !dbg !137
  store i32 %call179, i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKGROUPNUM_mask, align 4, !dbg !137, !tbaa !138
  br label %if.end180, !dbg !137

if.end180:                                        ; preds = %if.then178, %if.end176
  %46 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_gxx, align 4, !dbg !137, !tbaa !138
  %cmp181 = icmp eq i32 %46, -1, !dbg !137
  br i1 %cmp181, label %if.then182, label %if.end184, !dbg !137

if.then182:                                       ; preds = %if.end180
  %call183 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str46, i64 0, i64 0)) #3, !dbg !137
  store i32 %call183, i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_gxx, align 4, !dbg !137, !tbaa !138
  br label %if.end184, !dbg !137

if.end184:                                        ; preds = %if.then182, %if.end180
  %47 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKGROUPNUM_metric, align 4, !dbg !137, !tbaa !138
  %cmp185 = icmp eq i32 %47, -1, !dbg !137
  br i1 %cmp185, label %if.then186, label %if.end188, !dbg !137

if.then186:                                       ; preds = %if.end184
  %call187 = tail call i32 @CCTK_GroupIndex(i8* getelementptr inbounds ([17 x i8]* @.str47, i64 0, i64 0)) #3, !dbg !137
  store i32 %call187, i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKGROUPNUM_metric, align 4, !dbg !137, !tbaa !138
  br label %if.end188, !dbg !137

if.end188:                                        ; preds = %if.then186, %if.end184
  %48 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_gxy, align 4, !dbg !137, !tbaa !138
  %cmp189 = icmp eq i32 %48, -1, !dbg !137
  br i1 %cmp189, label %if.then190, label %if.end192, !dbg !137

if.then190:                                       ; preds = %if.end188
  %call191 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str48, i64 0, i64 0)) #3, !dbg !137
  store i32 %call191, i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_gxy, align 4, !dbg !137, !tbaa !138
  br label %if.end192, !dbg !137

if.end192:                                        ; preds = %if.then190, %if.end188
  %49 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_gxz, align 4, !dbg !137, !tbaa !138
  %cmp193 = icmp eq i32 %49, -1, !dbg !137
  br i1 %cmp193, label %if.then194, label %if.end196, !dbg !137

if.then194:                                       ; preds = %if.end192
  %call195 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str49, i64 0, i64 0)) #3, !dbg !137
  store i32 %call195, i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_gxz, align 4, !dbg !137, !tbaa !138
  br label %if.end196, !dbg !137

if.end196:                                        ; preds = %if.then194, %if.end192
  %50 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_gyy, align 4, !dbg !137, !tbaa !138
  %cmp197 = icmp eq i32 %50, -1, !dbg !137
  br i1 %cmp197, label %if.then198, label %if.end200, !dbg !137

if.then198:                                       ; preds = %if.end196
  %call199 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str50, i64 0, i64 0)) #3, !dbg !137
  store i32 %call199, i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_gyy, align 4, !dbg !137, !tbaa !138
  br label %if.end200, !dbg !137

if.end200:                                        ; preds = %if.then198, %if.end196
  %51 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_gyz, align 4, !dbg !137, !tbaa !138
  %cmp201 = icmp eq i32 %51, -1, !dbg !137
  br i1 %cmp201, label %if.then202, label %if.end204, !dbg !137

if.then202:                                       ; preds = %if.end200
  %call203 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str51, i64 0, i64 0)) #3, !dbg !137
  store i32 %call203, i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_gyz, align 4, !dbg !137, !tbaa !138
  br label %if.end204, !dbg !137

if.end204:                                        ; preds = %if.then202, %if.end200
  %52 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_gzz, align 4, !dbg !137, !tbaa !138
  %cmp205 = icmp eq i32 %52, -1, !dbg !137
  br i1 %cmp205, label %if.then206, label %if.end208, !dbg !137

if.then206:                                       ; preds = %if.end204
  %call207 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str52, i64 0, i64 0)) #3, !dbg !137
  store i32 %call207, i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_gzz, align 4, !dbg !137, !tbaa !138
  br label %if.end208, !dbg !137

if.end208:                                        ; preds = %if.then206, %if.end204
  %53 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_kxx, align 4, !dbg !137, !tbaa !138
  %cmp209 = icmp eq i32 %53, -1, !dbg !137
  br i1 %cmp209, label %if.then210, label %if.end212, !dbg !137

if.then210:                                       ; preds = %if.end208
  %call211 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str53, i64 0, i64 0)) #3, !dbg !137
  store i32 %call211, i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_kxx, align 4, !dbg !137, !tbaa !138
  br label %if.end212, !dbg !137

if.end212:                                        ; preds = %if.then210, %if.end208
  %54 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKGROUPNUM_curv, align 4, !dbg !137, !tbaa !138
  %cmp213 = icmp eq i32 %54, -1, !dbg !137
  br i1 %cmp213, label %if.then214, label %if.end216, !dbg !137

if.then214:                                       ; preds = %if.end212
  %call215 = tail call i32 @CCTK_GroupIndex(i8* getelementptr inbounds ([15 x i8]* @.str54, i64 0, i64 0)) #3, !dbg !137
  store i32 %call215, i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKGROUPNUM_curv, align 4, !dbg !137, !tbaa !138
  br label %if.end216, !dbg !137

if.end216:                                        ; preds = %if.then214, %if.end212
  %55 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_kxy, align 4, !dbg !137, !tbaa !138
  %cmp217 = icmp eq i32 %55, -1, !dbg !137
  br i1 %cmp217, label %if.then218, label %if.end220, !dbg !137

if.then218:                                       ; preds = %if.end216
  %call219 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str55, i64 0, i64 0)) #3, !dbg !137
  store i32 %call219, i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_kxy, align 4, !dbg !137, !tbaa !138
  br label %if.end220, !dbg !137

if.end220:                                        ; preds = %if.then218, %if.end216
  %56 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_kxz, align 4, !dbg !137, !tbaa !138
  %cmp221 = icmp eq i32 %56, -1, !dbg !137
  br i1 %cmp221, label %if.then222, label %if.end224, !dbg !137

if.then222:                                       ; preds = %if.end220
  %call223 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str56, i64 0, i64 0)) #3, !dbg !137
  store i32 %call223, i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_kxz, align 4, !dbg !137, !tbaa !138
  br label %if.end224, !dbg !137

if.end224:                                        ; preds = %if.then222, %if.end220
  %57 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_kyy, align 4, !dbg !137, !tbaa !138
  %cmp225 = icmp eq i32 %57, -1, !dbg !137
  br i1 %cmp225, label %if.then226, label %if.end228, !dbg !137

if.then226:                                       ; preds = %if.end224
  %call227 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str57, i64 0, i64 0)) #3, !dbg !137
  store i32 %call227, i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_kyy, align 4, !dbg !137, !tbaa !138
  br label %if.end228, !dbg !137

if.end228:                                        ; preds = %if.then226, %if.end224
  %58 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_kyz, align 4, !dbg !137, !tbaa !138
  %cmp229 = icmp eq i32 %58, -1, !dbg !137
  br i1 %cmp229, label %if.then230, label %if.end232, !dbg !137

if.then230:                                       ; preds = %if.end228
  %call231 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str58, i64 0, i64 0)) #3, !dbg !137
  store i32 %call231, i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_kyz, align 4, !dbg !137, !tbaa !138
  br label %if.end232, !dbg !137

if.end232:                                        ; preds = %if.then230, %if.end228
  %59 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_kzz, align 4, !dbg !137, !tbaa !138
  %cmp233 = icmp eq i32 %59, -1, !dbg !137
  br i1 %cmp233, label %if.then234, label %if.end236, !dbg !137

if.then234:                                       ; preds = %if.end232
  %call235 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str59, i64 0, i64 0)) #3, !dbg !137
  store i32 %call235, i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_kzz, align 4, !dbg !137, !tbaa !138
  br label %if.end236, !dbg !137

if.end236:                                        ; preds = %if.then234, %if.end232
  %60 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_psi, align 4, !dbg !137, !tbaa !138
  %cmp237 = icmp eq i32 %60, -1, !dbg !137
  br i1 %cmp237, label %if.then238, label %if.end240, !dbg !137

if.then238:                                       ; preds = %if.end236
  %call239 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str60, i64 0, i64 0)) #3, !dbg !137
  store i32 %call239, i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_psi, align 4, !dbg !137, !tbaa !138
  br label %if.end240, !dbg !137

if.end240:                                        ; preds = %if.then238, %if.end236
  %61 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKGROUPNUM_confac, align 4, !dbg !137, !tbaa !138
  %cmp241 = icmp eq i32 %61, -1, !dbg !137
  br i1 %cmp241, label %if.then242, label %if.end244, !dbg !137

if.then242:                                       ; preds = %if.end240
  %call243 = tail call i32 @CCTK_GroupIndex(i8* getelementptr inbounds ([17 x i8]* @.str61, i64 0, i64 0)) #3, !dbg !137
  store i32 %call243, i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKGROUPNUM_confac, align 4, !dbg !137, !tbaa !138
  br label %if.end244, !dbg !137

if.end244:                                        ; preds = %if.then242, %if.end240
  %62 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_psix, align 4, !dbg !137, !tbaa !138
  %cmp245 = icmp eq i32 %62, -1, !dbg !137
  br i1 %cmp245, label %if.then246, label %if.end248, !dbg !137

if.then246:                                       ; preds = %if.end244
  %call247 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([15 x i8]* @.str62, i64 0, i64 0)) #3, !dbg !137
  store i32 %call247, i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_psix, align 4, !dbg !137, !tbaa !138
  br label %if.end248, !dbg !137

if.end248:                                        ; preds = %if.then246, %if.end244
  %63 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKGROUPNUM_confac_1derivs, align 4, !dbg !137, !tbaa !138
  %cmp249 = icmp eq i32 %63, -1, !dbg !137
  br i1 %cmp249, label %if.then250, label %if.end252, !dbg !137

if.then250:                                       ; preds = %if.end248
  %call251 = tail call i32 @CCTK_GroupIndex(i8* getelementptr inbounds ([25 x i8]* @.str63, i64 0, i64 0)) #3, !dbg !137
  store i32 %call251, i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKGROUPNUM_confac_1derivs, align 4, !dbg !137, !tbaa !138
  br label %if.end252, !dbg !137

if.end252:                                        ; preds = %if.then250, %if.end248
  %64 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_psixx, align 4, !dbg !137, !tbaa !138
  %cmp253 = icmp eq i32 %64, -1, !dbg !137
  br i1 %cmp253, label %if.then254, label %if.end256, !dbg !137

if.then254:                                       ; preds = %if.end252
  %call255 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str64, i64 0, i64 0)) #3, !dbg !137
  store i32 %call255, i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_psixx, align 4, !dbg !137, !tbaa !138
  br label %if.end256, !dbg !137

if.end256:                                        ; preds = %if.then254, %if.end252
  %65 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKGROUPNUM_confac_2derivs, align 4, !dbg !137, !tbaa !138
  %cmp257 = icmp eq i32 %65, -1, !dbg !137
  br i1 %cmp257, label %if.then258, label %if.end260, !dbg !137

if.then258:                                       ; preds = %if.end256
  %call259 = tail call i32 @CCTK_GroupIndex(i8* getelementptr inbounds ([25 x i8]* @.str65, i64 0, i64 0)) #3, !dbg !137
  store i32 %call259, i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKGROUPNUM_confac_2derivs, align 4, !dbg !137, !tbaa !138
  br label %if.end260, !dbg !137

if.end260:                                        ; preds = %if.then258, %if.end256
  %66 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_psixy, align 4, !dbg !137, !tbaa !138
  %cmp261 = icmp eq i32 %66, -1, !dbg !137
  br i1 %cmp261, label %if.then262, label %if.end264, !dbg !137

if.then262:                                       ; preds = %if.end260
  %call263 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str66, i64 0, i64 0)) #3, !dbg !137
  store i32 %call263, i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_psixy, align 4, !dbg !137, !tbaa !138
  br label %if.end264, !dbg !137

if.end264:                                        ; preds = %if.then262, %if.end260
  %67 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_psixz, align 4, !dbg !137, !tbaa !138
  %cmp265 = icmp eq i32 %67, -1, !dbg !137
  br i1 %cmp265, label %if.then266, label %if.end268, !dbg !137

if.then266:                                       ; preds = %if.end264
  %call267 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str67, i64 0, i64 0)) #3, !dbg !137
  store i32 %call267, i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_psixz, align 4, !dbg !137, !tbaa !138
  br label %if.end268, !dbg !137

if.end268:                                        ; preds = %if.then266, %if.end264
  %68 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_psiy, align 4, !dbg !137, !tbaa !138
  %cmp269 = icmp eq i32 %68, -1, !dbg !137
  br i1 %cmp269, label %if.then270, label %if.end272, !dbg !137

if.then270:                                       ; preds = %if.end268
  %call271 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([15 x i8]* @.str68, i64 0, i64 0)) #3, !dbg !137
  store i32 %call271, i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_psiy, align 4, !dbg !137, !tbaa !138
  br label %if.end272, !dbg !137

if.end272:                                        ; preds = %if.then270, %if.end268
  %69 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_psiyy, align 4, !dbg !137, !tbaa !138
  %cmp273 = icmp eq i32 %69, -1, !dbg !137
  br i1 %cmp273, label %if.then274, label %if.end276, !dbg !137

if.then274:                                       ; preds = %if.end272
  %call275 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str69, i64 0, i64 0)) #3, !dbg !137
  store i32 %call275, i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_psiyy, align 4, !dbg !137, !tbaa !138
  br label %if.end276, !dbg !137

if.end276:                                        ; preds = %if.then274, %if.end272
  %70 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_psiyz, align 4, !dbg !137, !tbaa !138
  %cmp277 = icmp eq i32 %70, -1, !dbg !137
  br i1 %cmp277, label %if.then278, label %if.end280, !dbg !137

if.then278:                                       ; preds = %if.end276
  %call279 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str70, i64 0, i64 0)) #3, !dbg !137
  store i32 %call279, i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_psiyz, align 4, !dbg !137, !tbaa !138
  br label %if.end280, !dbg !137

if.end280:                                        ; preds = %if.then278, %if.end276
  %71 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_psiz, align 4, !dbg !137, !tbaa !138
  %cmp281 = icmp eq i32 %71, -1, !dbg !137
  br i1 %cmp281, label %if.then282, label %if.end284, !dbg !137

if.then282:                                       ; preds = %if.end280
  %call283 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([15 x i8]* @.str71, i64 0, i64 0)) #3, !dbg !137
  store i32 %call283, i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_psiz, align 4, !dbg !137, !tbaa !138
  br label %if.end284, !dbg !137

if.end284:                                        ; preds = %if.then282, %if.end280
  %72 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_psizz, align 4, !dbg !137, !tbaa !138
  %cmp285 = icmp eq i32 %72, -1, !dbg !137
  br i1 %cmp285, label %if.then286, label %if.end288, !dbg !137

if.then286:                                       ; preds = %if.end284
  %call287 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str72, i64 0, i64 0)) #3, !dbg !137
  store i32 %call287, i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_psizz, align 4, !dbg !137, !tbaa !138
  br label %if.end288, !dbg !137

if.end288:                                        ; preds = %if.then286, %if.end284
  %73 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_r, align 4, !dbg !137, !tbaa !138
  %cmp289 = icmp eq i32 %73, -1, !dbg !137
  br i1 %cmp289, label %if.then290, label %if.end292, !dbg !137

if.then290:                                       ; preds = %if.end288
  %call291 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([8 x i8]* @.str73, i64 0, i64 0)) #3, !dbg !137
  store i32 %call291, i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_r, align 4, !dbg !137, !tbaa !138
  br label %if.end292, !dbg !137

if.end292:                                        ; preds = %if.then290, %if.end288
  %74 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKGROUPNUM_coordinates, align 4, !dbg !137, !tbaa !138
  %cmp293 = icmp eq i32 %74, -1, !dbg !137
  br i1 %cmp293, label %if.then294, label %if.end296, !dbg !137

if.then294:                                       ; preds = %if.end292
  %call295 = tail call i32 @CCTK_GroupIndex(i8* getelementptr inbounds ([18 x i8]* @.str74, i64 0, i64 0)) #3, !dbg !137
  store i32 %call295, i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKGROUPNUM_coordinates, align 4, !dbg !137, !tbaa !138
  br label %if.end296, !dbg !137

if.end296:                                        ; preds = %if.then294, %if.end292
  %75 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_shift_state, align 4, !dbg !137, !tbaa !138
  %cmp297 = icmp eq i32 %75, -1, !dbg !137
  br i1 %cmp297, label %if.then298, label %if.end300, !dbg !137

if.then298:                                       ; preds = %if.end296
  %call299 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([22 x i8]* @.str75, i64 0, i64 0)) #3, !dbg !137
  store i32 %call299, i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_shift_state, align 4, !dbg !137, !tbaa !138
  br label %if.end300, !dbg !137

if.end300:                                        ; preds = %if.then298, %if.end296
  %76 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_x, align 4, !dbg !137, !tbaa !138
  %cmp301 = icmp eq i32 %76, -1, !dbg !137
  br i1 %cmp301, label %if.then302, label %if.end304, !dbg !137

if.then302:                                       ; preds = %if.end300
  %call303 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([8 x i8]* @.str76, i64 0, i64 0)) #3, !dbg !137
  store i32 %call303, i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_x, align 4, !dbg !137, !tbaa !138
  br label %if.end304, !dbg !137

if.end304:                                        ; preds = %if.then302, %if.end300
  %77 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_y, align 4, !dbg !137, !tbaa !138
  %cmp305 = icmp eq i32 %77, -1, !dbg !137
  br i1 %cmp305, label %if.then306, label %if.end308, !dbg !137

if.then306:                                       ; preds = %if.end304
  %call307 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([8 x i8]* @.str77, i64 0, i64 0)) #3, !dbg !137
  store i32 %call307, i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_y, align 4, !dbg !137, !tbaa !138
  br label %if.end308, !dbg !137

if.end308:                                        ; preds = %if.then306, %if.end304
  %78 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_z, align 4, !dbg !137, !tbaa !138
  %cmp309 = icmp eq i32 %78, -1, !dbg !137
  br i1 %cmp309, label %if.then310, label %if.end312, !dbg !137

if.then310:                                       ; preds = %if.end308
  %call311 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([8 x i8]* @.str78, i64 0, i64 0)) #3, !dbg !137
  store i32 %call311, i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_z, align 4, !dbg !137, !tbaa !138
  br label %if.end312, !dbg !137

if.end312:                                        ; preds = %if.end308, %if.then310
  %79 = bitcast i8* %fpointer to void (i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, double*, double*, double*, double*, i32*, i32*, i32*, i32*, %struct.cGH*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, double*, double*, double*, double*, double*, double*, double*, i32*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, i32*, double*, double*, double*)*, !dbg !141
  tail call void @llvm.dbg.value(metadata !{void (i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, double*, double*, double*, double*, i32*, i32*, i32*, i32*, %struct.cGH*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, double*, double*, double*, double*, double*, double*, double*, i32*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, i32*, double*, double*, double*)* %79}, i64 0, metadata !50), !dbg !141
  %cctk_dim = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 0, !dbg !142
  %cctk_gsh = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 2, !dbg !142
  %80 = load i32** %cctk_gsh, align 8, !dbg !142, !tbaa !143
  %cctk_lsh = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 3, !dbg !142
  %81 = load i32** %cctk_lsh, align 8, !dbg !142, !tbaa !143
  %cctk_lbnd = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 4, !dbg !142
  %82 = load i32** %cctk_lbnd, align 8, !dbg !142, !tbaa !143
  %cctk_ubnd = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 5, !dbg !142
  %83 = load i32** %cctk_ubnd, align 8, !dbg !142, !tbaa !143
  %cctk_lssh = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 6, !dbg !142
  %84 = load i32** %cctk_lssh, align 8, !dbg !142, !tbaa !143
  %cctk_from = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 8, !dbg !142
  %85 = load i32** %cctk_from, align 8, !dbg !142, !tbaa !143
  %cctk_to = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 7, !dbg !142
  %86 = load i32** %cctk_to, align 8, !dbg !142, !tbaa !143
  %cctk_bbox = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 12, !dbg !142
  %87 = load i32** %cctk_bbox, align 8, !dbg !142, !tbaa !143
  %cctk_delta_time = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 9, !dbg !142
  %cctk_time = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 16, !dbg !142
  %cctk_delta_space = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 10, !dbg !142
  %88 = load double** %cctk_delta_space, align 8, !dbg !142, !tbaa !143
  %cctk_origin_space = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 11, !dbg !142
  %89 = load double** %cctk_origin_space, align 8, !dbg !142, !tbaa !143
  %cctk_levfac = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 13, !dbg !142
  %90 = load i32** %cctk_levfac, align 8, !dbg !142, !tbaa !143
  %cctk_convlevel = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 14, !dbg !142
  %cctk_nghostzones = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 15, !dbg !142
  %91 = load i32** %cctk_nghostzones, align 8, !dbg !142, !tbaa !143
  %cctk_iteration = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 1, !dbg !142
  %92 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKGROUPNUM_ADM_curv_stag, align 4, !dbg !142, !tbaa !138
  %cmp313 = icmp slt i32 %92, 0, !dbg !142
  br i1 %cmp313, label %cond.end342, label %cond.false, !dbg !142

cond.false:                                       ; preds = %if.end312
  %call314 = tail call i32 @CCTK_QueryGroupStorage(%struct.cGH* %GH, i8* getelementptr inbounds ([24 x i8]* @.str8, i64 0, i64 0)) #3, !dbg !142
  %tobool = icmp eq i32 %call314, 0, !dbg !142
  br i1 %tobool, label %cond.end318, label %cond.true315, !dbg !142

cond.true315:                                     ; preds = %cond.false
  %call316 = tail call i32* @CCTK_ArrayGroupSize(%struct.cGH* %GH, i32 0, i8* getelementptr inbounds ([24 x i8]* @.str8, i64 0, i64 0)) #3, !dbg !142
  br label %cond.end318, !dbg !142

cond.end318:                                      ; preds = %cond.false, %cond.true315
  %cond319.ph = phi i32* [ @_cctk_one, %cond.false ], [ %call316, %cond.true315 ]
  %.pr = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKGROUPNUM_ADM_curv_stag, align 4, !dbg !142, !tbaa !138
  %cmp320 = icmp slt i32 %.pr, 0, !dbg !142
  br i1 %cmp320, label %cond.end342, label %cond.false322, !dbg !142

cond.false322:                                    ; preds = %cond.end318
  %call323 = tail call i32 @CCTK_QueryGroupStorage(%struct.cGH* %GH, i8* getelementptr inbounds ([24 x i8]* @.str8, i64 0, i64 0)) #3, !dbg !142
  %tobool324 = icmp eq i32 %call323, 0, !dbg !142
  br i1 %tobool324, label %cond.end330, label %cond.true325, !dbg !142

cond.true325:                                     ; preds = %cond.false322
  %call326 = tail call i32* @CCTK_ArrayGroupSize(%struct.cGH* %GH, i32 1, i8* getelementptr inbounds ([24 x i8]* @.str8, i64 0, i64 0)) #3, !dbg !142
  br label %cond.end330, !dbg !142

cond.end330:                                      ; preds = %cond.false322, %cond.true325
  %cond331.ph.ph = phi i32* [ @_cctk_one, %cond.false322 ], [ %call326, %cond.true325 ]
  %.pr1718.pr = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKGROUPNUM_ADM_curv_stag, align 4, !dbg !142, !tbaa !138
  %cmp332 = icmp slt i32 %.pr1718.pr, 0, !dbg !142
  br i1 %cmp332, label %cond.end342, label %cond.false334, !dbg !142

cond.false334:                                    ; preds = %cond.end330
  %call335 = tail call i32 @CCTK_QueryGroupStorage(%struct.cGH* %GH, i8* getelementptr inbounds ([24 x i8]* @.str8, i64 0, i64 0)) #3, !dbg !142
  %tobool336 = icmp eq i32 %call335, 0, !dbg !142
  br i1 %tobool336, label %cond.end342, label %cond.true337, !dbg !142

cond.true337:                                     ; preds = %cond.false334
  %call338 = tail call i32* @CCTK_ArrayGroupSize(%struct.cGH* %GH, i32 2, i8* getelementptr inbounds ([24 x i8]* @.str8, i64 0, i64 0)) #3, !dbg !142
  br label %cond.end342, !dbg !142

cond.end342:                                      ; preds = %cond.false334, %cond.end330, %cond.end318, %if.end312, %cond.true337
  %cond3311721 = phi i32* [ %cond331.ph.ph, %cond.true337 ], [ @_cctk_one, %if.end312 ], [ @_cctk_one, %cond.end318 ], [ %cond331.ph.ph, %cond.end330 ], [ %cond331.ph.ph, %cond.false334 ]
  %cond31917171720 = phi i32* [ %cond319.ph, %cond.true337 ], [ @_cctk_one, %if.end312 ], [ %cond319.ph, %cond.end318 ], [ %cond319.ph, %cond.end330 ], [ %cond319.ph, %cond.false334 ]
  %cond343 = phi i32* [ %call338, %cond.true337 ], [ @_cctk_one, %if.end312 ], [ @_cctk_one, %cond.end318 ], [ @_cctk_one, %cond.end330 ], [ @_cctk_one, %cond.false334 ], !dbg !142
  %93 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKGROUPNUM_ADM_metric_prev, align 4, !dbg !142, !tbaa !138
  %cmp344 = icmp slt i32 %93, 0, !dbg !142
  br i1 %cmp344, label %cond.end378, label %cond.false346, !dbg !142

cond.false346:                                    ; preds = %cond.end342
  %call347 = tail call i32 @CCTK_QueryGroupStorage(%struct.cGH* %GH, i8* getelementptr inbounds ([26 x i8]* @.str1, i64 0, i64 0)) #3, !dbg !142
  %tobool348 = icmp eq i32 %call347, 0, !dbg !142
  br i1 %tobool348, label %cond.end354, label %cond.true349, !dbg !142

cond.true349:                                     ; preds = %cond.false346
  %call350 = tail call i32* @CCTK_ArrayGroupSize(%struct.cGH* %GH, i32 0, i8* getelementptr inbounds ([26 x i8]* @.str1, i64 0, i64 0)) #3, !dbg !142
  br label %cond.end354, !dbg !142

cond.end354:                                      ; preds = %cond.false346, %cond.true349
  %cond355.ph = phi i32* [ @_cctk_one, %cond.false346 ], [ %call350, %cond.true349 ]
  %.pr1722 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKGROUPNUM_ADM_metric_prev, align 4, !dbg !142, !tbaa !138
  %cmp356 = icmp slt i32 %.pr1722, 0, !dbg !142
  br i1 %cmp356, label %cond.end378, label %cond.false358, !dbg !142

cond.false358:                                    ; preds = %cond.end354
  %call359 = tail call i32 @CCTK_QueryGroupStorage(%struct.cGH* %GH, i8* getelementptr inbounds ([26 x i8]* @.str1, i64 0, i64 0)) #3, !dbg !142
  %tobool360 = icmp eq i32 %call359, 0, !dbg !142
  br i1 %tobool360, label %cond.end366, label %cond.true361, !dbg !142

cond.true361:                                     ; preds = %cond.false358
  %call362 = tail call i32* @CCTK_ArrayGroupSize(%struct.cGH* %GH, i32 1, i8* getelementptr inbounds ([26 x i8]* @.str1, i64 0, i64 0)) #3, !dbg !142
  br label %cond.end366, !dbg !142

cond.end366:                                      ; preds = %cond.false358, %cond.true361
  %cond367.ph.ph = phi i32* [ @_cctk_one, %cond.false358 ], [ %call362, %cond.true361 ]
  %.pr1725.pr = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKGROUPNUM_ADM_metric_prev, align 4, !dbg !142, !tbaa !138
  %cmp368 = icmp slt i32 %.pr1725.pr, 0, !dbg !142
  br i1 %cmp368, label %cond.end378, label %cond.false370, !dbg !142

cond.false370:                                    ; preds = %cond.end366
  %call371 = tail call i32 @CCTK_QueryGroupStorage(%struct.cGH* %GH, i8* getelementptr inbounds ([26 x i8]* @.str1, i64 0, i64 0)) #3, !dbg !142
  %tobool372 = icmp eq i32 %call371, 0, !dbg !142
  br i1 %tobool372, label %cond.end378, label %cond.true373, !dbg !142

cond.true373:                                     ; preds = %cond.false370
  %call374 = tail call i32* @CCTK_ArrayGroupSize(%struct.cGH* %GH, i32 2, i8* getelementptr inbounds ([26 x i8]* @.str1, i64 0, i64 0)) #3, !dbg !142
  br label %cond.end378, !dbg !142

cond.end378:                                      ; preds = %cond.false370, %cond.end366, %cond.end354, %cond.end342, %cond.true373
  %cond3671728 = phi i32* [ %cond367.ph.ph, %cond.true373 ], [ @_cctk_one, %cond.end342 ], [ @_cctk_one, %cond.end354 ], [ %cond367.ph.ph, %cond.end366 ], [ %cond367.ph.ph, %cond.false370 ]
  %cond35517241727 = phi i32* [ %cond355.ph, %cond.true373 ], [ @_cctk_one, %cond.end342 ], [ %cond355.ph, %cond.end354 ], [ %cond355.ph, %cond.end366 ], [ %cond355.ph, %cond.false370 ]
  %cond379 = phi i32* [ %call374, %cond.true373 ], [ @_cctk_one, %cond.end342 ], [ @_cctk_one, %cond.end354 ], [ @_cctk_one, %cond.end366 ], [ @_cctk_one, %cond.false370 ], !dbg !142
  %94 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKGROUPNUM_ADM_sources, align 4, !dbg !142, !tbaa !138
  %cmp380 = icmp slt i32 %94, 0, !dbg !142
  br i1 %cmp380, label %cond.end414, label %cond.false382, !dbg !142

cond.false382:                                    ; preds = %cond.end378
  %call383 = tail call i32 @CCTK_QueryGroupStorage(%struct.cGH* %GH, i8* getelementptr inbounds ([22 x i8]* @.str15, i64 0, i64 0)) #3, !dbg !142
  %tobool384 = icmp eq i32 %call383, 0, !dbg !142
  br i1 %tobool384, label %cond.end390, label %cond.true385, !dbg !142

cond.true385:                                     ; preds = %cond.false382
  %call386 = tail call i32* @CCTK_ArrayGroupSize(%struct.cGH* %GH, i32 0, i8* getelementptr inbounds ([22 x i8]* @.str15, i64 0, i64 0)) #3, !dbg !142
  br label %cond.end390, !dbg !142

cond.end390:                                      ; preds = %cond.false382, %cond.true385
  %cond391.ph = phi i32* [ @_cctk_one, %cond.false382 ], [ %call386, %cond.true385 ]
  %.pr1729 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKGROUPNUM_ADM_sources, align 4, !dbg !142, !tbaa !138
  %cmp392 = icmp slt i32 %.pr1729, 0, !dbg !142
  br i1 %cmp392, label %cond.end414, label %cond.false394, !dbg !142

cond.false394:                                    ; preds = %cond.end390
  %call395 = tail call i32 @CCTK_QueryGroupStorage(%struct.cGH* %GH, i8* getelementptr inbounds ([22 x i8]* @.str15, i64 0, i64 0)) #3, !dbg !142
  %tobool396 = icmp eq i32 %call395, 0, !dbg !142
  br i1 %tobool396, label %cond.end402, label %cond.true397, !dbg !142

cond.true397:                                     ; preds = %cond.false394
  %call398 = tail call i32* @CCTK_ArrayGroupSize(%struct.cGH* %GH, i32 1, i8* getelementptr inbounds ([22 x i8]* @.str15, i64 0, i64 0)) #3, !dbg !142
  br label %cond.end402, !dbg !142

cond.end402:                                      ; preds = %cond.false394, %cond.true397
  %cond403.ph.ph = phi i32* [ @_cctk_one, %cond.false394 ], [ %call398, %cond.true397 ]
  %.pr1732.pr = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKGROUPNUM_ADM_sources, align 4, !dbg !142, !tbaa !138
  %cmp404 = icmp slt i32 %.pr1732.pr, 0, !dbg !142
  br i1 %cmp404, label %cond.end414, label %cond.false406, !dbg !142

cond.false406:                                    ; preds = %cond.end402
  %call407 = tail call i32 @CCTK_QueryGroupStorage(%struct.cGH* %GH, i8* getelementptr inbounds ([22 x i8]* @.str15, i64 0, i64 0)) #3, !dbg !142
  %tobool408 = icmp eq i32 %call407, 0, !dbg !142
  br i1 %tobool408, label %cond.end414, label %cond.true409, !dbg !142

cond.true409:                                     ; preds = %cond.false406
  %call410 = tail call i32* @CCTK_ArrayGroupSize(%struct.cGH* %GH, i32 2, i8* getelementptr inbounds ([22 x i8]* @.str15, i64 0, i64 0)) #3, !dbg !142
  br label %cond.end414, !dbg !142

cond.end414:                                      ; preds = %cond.false406, %cond.end402, %cond.end390, %cond.end378, %cond.true409
  %cond4031735 = phi i32* [ %cond403.ph.ph, %cond.true409 ], [ @_cctk_one, %cond.end378 ], [ @_cctk_one, %cond.end390 ], [ %cond403.ph.ph, %cond.end402 ], [ %cond403.ph.ph, %cond.false406 ]
  %cond39117311734 = phi i32* [ %cond391.ph, %cond.true409 ], [ @_cctk_one, %cond.end378 ], [ %cond391.ph, %cond.end390 ], [ %cond391.ph, %cond.end402 ], [ %cond391.ph, %cond.false406 ]
  %cond415 = phi i32* [ %call410, %cond.true409 ], [ @_cctk_one, %cond.end378 ], [ @_cctk_one, %cond.end390 ], [ @_cctk_one, %cond.end402 ], [ @_cctk_one, %cond.false406 ], !dbg !142
  %95 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_ADM_gxx, align 4, !dbg !142, !tbaa !138
  %cmp416 = icmp slt i32 %95, 0, !dbg !142
  br i1 %cmp416, label %cond.end429, label %cond.false424, !dbg !142

cond.false424:                                    ; preds = %cond.end414
  %idxprom = sext i32 %95 to i64, !dbg !142
  %data = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17, !dbg !142
  %96 = load i8**** %data, align 8, !dbg !142, !tbaa !143
  %arrayidx = getelementptr inbounds i8*** %96, i64 %idxprom, !dbg !142
  %97 = load i8*** %arrayidx, align 8, !dbg !142, !tbaa !143
  %98 = load i8** %97, align 8, !dbg !142, !tbaa !143
  %phitmp = bitcast i8* %98 to double*, !dbg !142
  %arrayidx428 = getelementptr inbounds i8** %97, i64 1, !dbg !142
  %99 = load i8** %arrayidx428, align 8, !dbg !142, !tbaa !143
  %phitmp1636 = bitcast i8* %99 to double*, !dbg !142
  br label %cond.end429, !dbg !142

cond.end429:                                      ; preds = %cond.end414, %cond.false424
  %cond4211738 = phi double* [ %phitmp, %cond.false424 ], [ null, %cond.end414 ]
  %cond430 = phi double* [ %phitmp1636, %cond.false424 ], [ null, %cond.end414 ]
  %100 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_ADM_gxy, align 4, !dbg !142, !tbaa !138
  %cmp431 = icmp slt i32 %100, 0, !dbg !142
  br i1 %cmp431, label %cond.end447, label %cond.false442, !dbg !142

cond.false442:                                    ; preds = %cond.end429
  %idxprom434 = sext i32 %100 to i64, !dbg !142
  %data435 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17, !dbg !142
  %101 = load i8**** %data435, align 8, !dbg !142, !tbaa !143
  %arrayidx436 = getelementptr inbounds i8*** %101, i64 %idxprom434, !dbg !142
  %102 = load i8*** %arrayidx436, align 8, !dbg !142, !tbaa !143
  %103 = load i8** %102, align 8, !dbg !142, !tbaa !143
  %phitmp1637 = bitcast i8* %103 to double*, !dbg !142
  %arrayidx446 = getelementptr inbounds i8** %102, i64 1, !dbg !142
  %104 = load i8** %arrayidx446, align 8, !dbg !142, !tbaa !143
  %phitmp1638 = bitcast i8* %104 to double*, !dbg !142
  br label %cond.end447, !dbg !142

cond.end447:                                      ; preds = %cond.end429, %cond.false442
  %cond4391741 = phi double* [ %phitmp1637, %cond.false442 ], [ null, %cond.end429 ]
  %cond448 = phi double* [ %phitmp1638, %cond.false442 ], [ null, %cond.end429 ]
  %105 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_ADM_gxz, align 4, !dbg !142, !tbaa !138
  %cmp449 = icmp slt i32 %105, 0, !dbg !142
  br i1 %cmp449, label %cond.end465, label %cond.false460, !dbg !142

cond.false460:                                    ; preds = %cond.end447
  %idxprom452 = sext i32 %105 to i64, !dbg !142
  %data453 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17, !dbg !142
  %106 = load i8**** %data453, align 8, !dbg !142, !tbaa !143
  %arrayidx454 = getelementptr inbounds i8*** %106, i64 %idxprom452, !dbg !142
  %107 = load i8*** %arrayidx454, align 8, !dbg !142, !tbaa !143
  %108 = load i8** %107, align 8, !dbg !142, !tbaa !143
  %phitmp1639 = bitcast i8* %108 to double*, !dbg !142
  %arrayidx464 = getelementptr inbounds i8** %107, i64 1, !dbg !142
  %109 = load i8** %arrayidx464, align 8, !dbg !142, !tbaa !143
  %phitmp1640 = bitcast i8* %109 to double*, !dbg !142
  br label %cond.end465, !dbg !142

cond.end465:                                      ; preds = %cond.end447, %cond.false460
  %cond4571744 = phi double* [ %phitmp1639, %cond.false460 ], [ null, %cond.end447 ]
  %cond466 = phi double* [ %phitmp1640, %cond.false460 ], [ null, %cond.end447 ]
  %110 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_ADM_gyy, align 4, !dbg !142, !tbaa !138
  %cmp467 = icmp slt i32 %110, 0, !dbg !142
  br i1 %cmp467, label %cond.end483, label %cond.false478, !dbg !142

cond.false478:                                    ; preds = %cond.end465
  %idxprom470 = sext i32 %110 to i64, !dbg !142
  %data471 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17, !dbg !142
  %111 = load i8**** %data471, align 8, !dbg !142, !tbaa !143
  %arrayidx472 = getelementptr inbounds i8*** %111, i64 %idxprom470, !dbg !142
  %112 = load i8*** %arrayidx472, align 8, !dbg !142, !tbaa !143
  %113 = load i8** %112, align 8, !dbg !142, !tbaa !143
  %phitmp1641 = bitcast i8* %113 to double*, !dbg !142
  %arrayidx482 = getelementptr inbounds i8** %112, i64 1, !dbg !142
  %114 = load i8** %arrayidx482, align 8, !dbg !142, !tbaa !143
  %phitmp1642 = bitcast i8* %114 to double*, !dbg !142
  br label %cond.end483, !dbg !142

cond.end483:                                      ; preds = %cond.end465, %cond.false478
  %cond4751747 = phi double* [ %phitmp1641, %cond.false478 ], [ null, %cond.end465 ]
  %cond484 = phi double* [ %phitmp1642, %cond.false478 ], [ null, %cond.end465 ]
  %115 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_ADM_gyz, align 4, !dbg !142, !tbaa !138
  %cmp485 = icmp slt i32 %115, 0, !dbg !142
  br i1 %cmp485, label %cond.end501, label %cond.false496, !dbg !142

cond.false496:                                    ; preds = %cond.end483
  %idxprom488 = sext i32 %115 to i64, !dbg !142
  %data489 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17, !dbg !142
  %116 = load i8**** %data489, align 8, !dbg !142, !tbaa !143
  %arrayidx490 = getelementptr inbounds i8*** %116, i64 %idxprom488, !dbg !142
  %117 = load i8*** %arrayidx490, align 8, !dbg !142, !tbaa !143
  %118 = load i8** %117, align 8, !dbg !142, !tbaa !143
  %phitmp1643 = bitcast i8* %118 to double*, !dbg !142
  %arrayidx500 = getelementptr inbounds i8** %117, i64 1, !dbg !142
  %119 = load i8** %arrayidx500, align 8, !dbg !142, !tbaa !143
  %phitmp1644 = bitcast i8* %119 to double*, !dbg !142
  br label %cond.end501, !dbg !142

cond.end501:                                      ; preds = %cond.end483, %cond.false496
  %cond4931750 = phi double* [ %phitmp1643, %cond.false496 ], [ null, %cond.end483 ]
  %cond502 = phi double* [ %phitmp1644, %cond.false496 ], [ null, %cond.end483 ]
  %120 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_ADM_gzz, align 4, !dbg !142, !tbaa !138
  %cmp503 = icmp slt i32 %120, 0, !dbg !142
  br i1 %cmp503, label %cond.end519, label %cond.false514, !dbg !142

cond.false514:                                    ; preds = %cond.end501
  %idxprom506 = sext i32 %120 to i64, !dbg !142
  %data507 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17, !dbg !142
  %121 = load i8**** %data507, align 8, !dbg !142, !tbaa !143
  %arrayidx508 = getelementptr inbounds i8*** %121, i64 %idxprom506, !dbg !142
  %122 = load i8*** %arrayidx508, align 8, !dbg !142, !tbaa !143
  %123 = load i8** %122, align 8, !dbg !142, !tbaa !143
  %phitmp1645 = bitcast i8* %123 to double*, !dbg !142
  %arrayidx518 = getelementptr inbounds i8** %122, i64 1, !dbg !142
  %124 = load i8** %arrayidx518, align 8, !dbg !142, !tbaa !143
  %phitmp1646 = bitcast i8* %124 to double*, !dbg !142
  br label %cond.end519, !dbg !142

cond.end519:                                      ; preds = %cond.end501, %cond.false514
  %cond5111753 = phi double* [ %phitmp1645, %cond.false514 ], [ null, %cond.end501 ]
  %cond520 = phi double* [ %phitmp1646, %cond.false514 ], [ null, %cond.end501 ]
  %125 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_ADM_kxx_stag, align 4, !dbg !142, !tbaa !138
  %cmp521 = icmp slt i32 %125, 0, !dbg !142
  br i1 %cmp521, label %cond.end546, label %cond.false541, !dbg !142

cond.false541:                                    ; preds = %cond.end519
  %idxprom524 = sext i32 %125 to i64, !dbg !142
  %data525 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17, !dbg !142
  %126 = load i8**** %data525, align 8, !dbg !142, !tbaa !143
  %arrayidx526 = getelementptr inbounds i8*** %126, i64 %idxprom524, !dbg !142
  %127 = load i8*** %arrayidx526, align 8, !dbg !142, !tbaa !143
  %128 = load i8** %127, align 8, !dbg !142, !tbaa !143
  %phitmp1647 = bitcast i8* %128 to double*, !dbg !142
  %arrayidx536 = getelementptr inbounds i8** %127, i64 1, !dbg !142
  %129 = load i8** %arrayidx536, align 8, !dbg !142, !tbaa !143
  %phitmp1648 = bitcast i8* %129 to double*, !dbg !142
  %arrayidx545 = getelementptr inbounds i8** %127, i64 2, !dbg !142
  %130 = load i8** %arrayidx545, align 8, !dbg !142, !tbaa !143
  %phitmp1649 = bitcast i8* %130 to double*, !dbg !142
  br label %cond.end546, !dbg !142

cond.end546:                                      ; preds = %cond.end519, %cond.false541
  %cond5381760 = phi double* [ %phitmp1648, %cond.false541 ], [ null, %cond.end519 ]
  %cond52917561759 = phi double* [ %phitmp1647, %cond.false541 ], [ null, %cond.end519 ]
  %cond547 = phi double* [ %phitmp1649, %cond.false541 ], [ null, %cond.end519 ]
  %131 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_ADM_kxy_stag, align 4, !dbg !142, !tbaa !138
  %cmp548 = icmp slt i32 %131, 0, !dbg !142
  br i1 %cmp548, label %cond.end573, label %cond.false568, !dbg !142

cond.false568:                                    ; preds = %cond.end546
  %idxprom551 = sext i32 %131 to i64, !dbg !142
  %data552 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17, !dbg !142
  %132 = load i8**** %data552, align 8, !dbg !142, !tbaa !143
  %arrayidx553 = getelementptr inbounds i8*** %132, i64 %idxprom551, !dbg !142
  %133 = load i8*** %arrayidx553, align 8, !dbg !142, !tbaa !143
  %134 = load i8** %133, align 8, !dbg !142, !tbaa !143
  %phitmp1650 = bitcast i8* %134 to double*, !dbg !142
  %arrayidx563 = getelementptr inbounds i8** %133, i64 1, !dbg !142
  %135 = load i8** %arrayidx563, align 8, !dbg !142, !tbaa !143
  %phitmp1651 = bitcast i8* %135 to double*, !dbg !142
  %arrayidx572 = getelementptr inbounds i8** %133, i64 2, !dbg !142
  %136 = load i8** %arrayidx572, align 8, !dbg !142, !tbaa !143
  %phitmp1652 = bitcast i8* %136 to double*, !dbg !142
  br label %cond.end573, !dbg !142

cond.end573:                                      ; preds = %cond.end546, %cond.false568
  %cond5651767 = phi double* [ %phitmp1651, %cond.false568 ], [ null, %cond.end546 ]
  %cond55617631766 = phi double* [ %phitmp1650, %cond.false568 ], [ null, %cond.end546 ]
  %cond574 = phi double* [ %phitmp1652, %cond.false568 ], [ null, %cond.end546 ]
  %137 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_ADM_kxz_stag, align 4, !dbg !142, !tbaa !138
  %cmp575 = icmp slt i32 %137, 0, !dbg !142
  br i1 %cmp575, label %cond.end600, label %cond.false595, !dbg !142

cond.false595:                                    ; preds = %cond.end573
  %idxprom578 = sext i32 %137 to i64, !dbg !142
  %data579 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17, !dbg !142
  %138 = load i8**** %data579, align 8, !dbg !142, !tbaa !143
  %arrayidx580 = getelementptr inbounds i8*** %138, i64 %idxprom578, !dbg !142
  %139 = load i8*** %arrayidx580, align 8, !dbg !142, !tbaa !143
  %140 = load i8** %139, align 8, !dbg !142, !tbaa !143
  %phitmp1653 = bitcast i8* %140 to double*, !dbg !142
  %arrayidx590 = getelementptr inbounds i8** %139, i64 1, !dbg !142
  %141 = load i8** %arrayidx590, align 8, !dbg !142, !tbaa !143
  %phitmp1654 = bitcast i8* %141 to double*, !dbg !142
  %arrayidx599 = getelementptr inbounds i8** %139, i64 2, !dbg !142
  %142 = load i8** %arrayidx599, align 8, !dbg !142, !tbaa !143
  %phitmp1655 = bitcast i8* %142 to double*, !dbg !142
  br label %cond.end600, !dbg !142

cond.end600:                                      ; preds = %cond.end573, %cond.false595
  %cond5921774 = phi double* [ %phitmp1654, %cond.false595 ], [ null, %cond.end573 ]
  %cond58317701773 = phi double* [ %phitmp1653, %cond.false595 ], [ null, %cond.end573 ]
  %cond601 = phi double* [ %phitmp1655, %cond.false595 ], [ null, %cond.end573 ]
  %143 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_ADM_kyy_stag, align 4, !dbg !142, !tbaa !138
  %cmp602 = icmp slt i32 %143, 0, !dbg !142
  br i1 %cmp602, label %cond.end627, label %cond.false622, !dbg !142

cond.false622:                                    ; preds = %cond.end600
  %idxprom605 = sext i32 %143 to i64, !dbg !142
  %data606 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17, !dbg !142
  %144 = load i8**** %data606, align 8, !dbg !142, !tbaa !143
  %arrayidx607 = getelementptr inbounds i8*** %144, i64 %idxprom605, !dbg !142
  %145 = load i8*** %arrayidx607, align 8, !dbg !142, !tbaa !143
  %146 = load i8** %145, align 8, !dbg !142, !tbaa !143
  %phitmp1656 = bitcast i8* %146 to double*, !dbg !142
  %arrayidx617 = getelementptr inbounds i8** %145, i64 1, !dbg !142
  %147 = load i8** %arrayidx617, align 8, !dbg !142, !tbaa !143
  %phitmp1657 = bitcast i8* %147 to double*, !dbg !142
  %arrayidx626 = getelementptr inbounds i8** %145, i64 2, !dbg !142
  %148 = load i8** %arrayidx626, align 8, !dbg !142, !tbaa !143
  %phitmp1658 = bitcast i8* %148 to double*, !dbg !142
  br label %cond.end627, !dbg !142

cond.end627:                                      ; preds = %cond.end600, %cond.false622
  %cond6191781 = phi double* [ %phitmp1657, %cond.false622 ], [ null, %cond.end600 ]
  %cond61017771780 = phi double* [ %phitmp1656, %cond.false622 ], [ null, %cond.end600 ]
  %cond628 = phi double* [ %phitmp1658, %cond.false622 ], [ null, %cond.end600 ]
  %149 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_ADM_kyz_stag, align 4, !dbg !142, !tbaa !138
  %cmp629 = icmp slt i32 %149, 0, !dbg !142
  br i1 %cmp629, label %cond.end654, label %cond.false649, !dbg !142

cond.false649:                                    ; preds = %cond.end627
  %idxprom632 = sext i32 %149 to i64, !dbg !142
  %data633 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17, !dbg !142
  %150 = load i8**** %data633, align 8, !dbg !142, !tbaa !143
  %arrayidx634 = getelementptr inbounds i8*** %150, i64 %idxprom632, !dbg !142
  %151 = load i8*** %arrayidx634, align 8, !dbg !142, !tbaa !143
  %152 = load i8** %151, align 8, !dbg !142, !tbaa !143
  %phitmp1659 = bitcast i8* %152 to double*, !dbg !142
  %arrayidx644 = getelementptr inbounds i8** %151, i64 1, !dbg !142
  %153 = load i8** %arrayidx644, align 8, !dbg !142, !tbaa !143
  %phitmp1660 = bitcast i8* %153 to double*, !dbg !142
  %arrayidx653 = getelementptr inbounds i8** %151, i64 2, !dbg !142
  %154 = load i8** %arrayidx653, align 8, !dbg !142, !tbaa !143
  %phitmp1661 = bitcast i8* %154 to double*, !dbg !142
  br label %cond.end654, !dbg !142

cond.end654:                                      ; preds = %cond.end627, %cond.false649
  %cond6461788 = phi double* [ %phitmp1660, %cond.false649 ], [ null, %cond.end627 ]
  %cond63717841787 = phi double* [ %phitmp1659, %cond.false649 ], [ null, %cond.end627 ]
  %cond655 = phi double* [ %phitmp1661, %cond.false649 ], [ null, %cond.end627 ]
  %155 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_ADM_kzz_stag, align 4, !dbg !142, !tbaa !138
  %cmp656 = icmp slt i32 %155, 0, !dbg !142
  br i1 %cmp656, label %cond.end681, label %cond.false676, !dbg !142

cond.false676:                                    ; preds = %cond.end654
  %idxprom659 = sext i32 %155 to i64, !dbg !142
  %data660 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17, !dbg !142
  %156 = load i8**** %data660, align 8, !dbg !142, !tbaa !143
  %arrayidx661 = getelementptr inbounds i8*** %156, i64 %idxprom659, !dbg !142
  %157 = load i8*** %arrayidx661, align 8, !dbg !142, !tbaa !143
  %158 = load i8** %157, align 8, !dbg !142, !tbaa !143
  %phitmp1662 = bitcast i8* %158 to double*, !dbg !142
  %arrayidx671 = getelementptr inbounds i8** %157, i64 1, !dbg !142
  %159 = load i8** %arrayidx671, align 8, !dbg !142, !tbaa !143
  %phitmp1663 = bitcast i8* %159 to double*, !dbg !142
  %arrayidx680 = getelementptr inbounds i8** %157, i64 2, !dbg !142
  %160 = load i8** %arrayidx680, align 8, !dbg !142, !tbaa !143
  %phitmp1664 = bitcast i8* %160 to double*, !dbg !142
  br label %cond.end681, !dbg !142

cond.end681:                                      ; preds = %cond.end654, %cond.false676
  %cond6731795 = phi double* [ %phitmp1663, %cond.false676 ], [ null, %cond.end654 ]
  %cond66417911794 = phi double* [ %phitmp1662, %cond.false676 ], [ null, %cond.end654 ]
  %cond682 = phi double* [ %phitmp1664, %cond.false676 ], [ null, %cond.end654 ]
  %161 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_adms_gxx, align 4, !dbg !142, !tbaa !138
  %cmp683 = icmp slt i32 %161, 0, !dbg !142
  br i1 %cmp683, label %cond.end690, label %cond.false685, !dbg !142

cond.false685:                                    ; preds = %cond.end681
  %idxprom686 = sext i32 %161 to i64, !dbg !142
  %data687 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17, !dbg !142
  %162 = load i8**** %data687, align 8, !dbg !142, !tbaa !143
  %arrayidx688 = getelementptr inbounds i8*** %162, i64 %idxprom686, !dbg !142
  %163 = load i8*** %arrayidx688, align 8, !dbg !142, !tbaa !143
  %164 = load i8** %163, align 8, !dbg !142, !tbaa !143
  %phitmp1665 = bitcast i8* %164 to double*, !dbg !142
  br label %cond.end690, !dbg !142

cond.end690:                                      ; preds = %cond.end681, %cond.false685
  %cond691 = phi double* [ %phitmp1665, %cond.false685 ], [ null, %cond.end681 ]
  %165 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_adms_gxy, align 4, !dbg !142, !tbaa !138
  %cmp692 = icmp slt i32 %165, 0, !dbg !142
  br i1 %cmp692, label %cond.end699, label %cond.false694, !dbg !142

cond.false694:                                    ; preds = %cond.end690
  %idxprom695 = sext i32 %165 to i64, !dbg !142
  %data696 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17, !dbg !142
  %166 = load i8**** %data696, align 8, !dbg !142, !tbaa !143
  %arrayidx697 = getelementptr inbounds i8*** %166, i64 %idxprom695, !dbg !142
  %167 = load i8*** %arrayidx697, align 8, !dbg !142, !tbaa !143
  %168 = load i8** %167, align 8, !dbg !142, !tbaa !143
  %phitmp1666 = bitcast i8* %168 to double*, !dbg !142
  br label %cond.end699, !dbg !142

cond.end699:                                      ; preds = %cond.end690, %cond.false694
  %cond700 = phi double* [ %phitmp1666, %cond.false694 ], [ null, %cond.end690 ]
  %169 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_adms_gxz, align 4, !dbg !142, !tbaa !138
  %cmp701 = icmp slt i32 %169, 0, !dbg !142
  br i1 %cmp701, label %cond.end708, label %cond.false703, !dbg !142

cond.false703:                                    ; preds = %cond.end699
  %idxprom704 = sext i32 %169 to i64, !dbg !142
  %data705 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17, !dbg !142
  %170 = load i8**** %data705, align 8, !dbg !142, !tbaa !143
  %arrayidx706 = getelementptr inbounds i8*** %170, i64 %idxprom704, !dbg !142
  %171 = load i8*** %arrayidx706, align 8, !dbg !142, !tbaa !143
  %172 = load i8** %171, align 8, !dbg !142, !tbaa !143
  %phitmp1667 = bitcast i8* %172 to double*, !dbg !142
  br label %cond.end708, !dbg !142

cond.end708:                                      ; preds = %cond.end699, %cond.false703
  %cond709 = phi double* [ %phitmp1667, %cond.false703 ], [ null, %cond.end699 ]
  %173 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_adms_gyy, align 4, !dbg !142, !tbaa !138
  %cmp710 = icmp slt i32 %173, 0, !dbg !142
  br i1 %cmp710, label %cond.end717, label %cond.false712, !dbg !142

cond.false712:                                    ; preds = %cond.end708
  %idxprom713 = sext i32 %173 to i64, !dbg !142
  %data714 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17, !dbg !142
  %174 = load i8**** %data714, align 8, !dbg !142, !tbaa !143
  %arrayidx715 = getelementptr inbounds i8*** %174, i64 %idxprom713, !dbg !142
  %175 = load i8*** %arrayidx715, align 8, !dbg !142, !tbaa !143
  %176 = load i8** %175, align 8, !dbg !142, !tbaa !143
  %phitmp1668 = bitcast i8* %176 to double*, !dbg !142
  br label %cond.end717, !dbg !142

cond.end717:                                      ; preds = %cond.end708, %cond.false712
  %cond718 = phi double* [ %phitmp1668, %cond.false712 ], [ null, %cond.end708 ]
  %177 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_adms_gyz, align 4, !dbg !142, !tbaa !138
  %cmp719 = icmp slt i32 %177, 0, !dbg !142
  br i1 %cmp719, label %cond.end726, label %cond.false721, !dbg !142

cond.false721:                                    ; preds = %cond.end717
  %idxprom722 = sext i32 %177 to i64, !dbg !142
  %data723 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17, !dbg !142
  %178 = load i8**** %data723, align 8, !dbg !142, !tbaa !143
  %arrayidx724 = getelementptr inbounds i8*** %178, i64 %idxprom722, !dbg !142
  %179 = load i8*** %arrayidx724, align 8, !dbg !142, !tbaa !143
  %180 = load i8** %179, align 8, !dbg !142, !tbaa !143
  %phitmp1669 = bitcast i8* %180 to double*, !dbg !142
  br label %cond.end726, !dbg !142

cond.end726:                                      ; preds = %cond.end717, %cond.false721
  %cond727 = phi double* [ %phitmp1669, %cond.false721 ], [ null, %cond.end717 ]
  %181 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_adms_gzz, align 4, !dbg !142, !tbaa !138
  %cmp728 = icmp slt i32 %181, 0, !dbg !142
  br i1 %cmp728, label %cond.end735, label %cond.false730, !dbg !142

cond.false730:                                    ; preds = %cond.end726
  %idxprom731 = sext i32 %181 to i64, !dbg !142
  %data732 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17, !dbg !142
  %182 = load i8**** %data732, align 8, !dbg !142, !tbaa !143
  %arrayidx733 = getelementptr inbounds i8*** %182, i64 %idxprom731, !dbg !142
  %183 = load i8*** %arrayidx733, align 8, !dbg !142, !tbaa !143
  %184 = load i8** %183, align 8, !dbg !142, !tbaa !143
  %phitmp1670 = bitcast i8* %184 to double*, !dbg !142
  br label %cond.end735, !dbg !142

cond.end735:                                      ; preds = %cond.end726, %cond.false730
  %cond736 = phi double* [ %phitmp1670, %cond.false730 ], [ null, %cond.end726 ]
  %185 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_adms_kxx, align 4, !dbg !142, !tbaa !138
  %cmp737 = icmp slt i32 %185, 0, !dbg !142
  br i1 %cmp737, label %cond.end744, label %cond.false739, !dbg !142

cond.false739:                                    ; preds = %cond.end735
  %idxprom740 = sext i32 %185 to i64, !dbg !142
  %data741 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17, !dbg !142
  %186 = load i8**** %data741, align 8, !dbg !142, !tbaa !143
  %arrayidx742 = getelementptr inbounds i8*** %186, i64 %idxprom740, !dbg !142
  %187 = load i8*** %arrayidx742, align 8, !dbg !142, !tbaa !143
  %188 = load i8** %187, align 8, !dbg !142, !tbaa !143
  %phitmp1671 = bitcast i8* %188 to double*, !dbg !142
  br label %cond.end744, !dbg !142

cond.end744:                                      ; preds = %cond.end735, %cond.false739
  %cond745 = phi double* [ %phitmp1671, %cond.false739 ], [ null, %cond.end735 ]
  %189 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_adms_kxy, align 4, !dbg !142, !tbaa !138
  %cmp746 = icmp slt i32 %189, 0, !dbg !142
  br i1 %cmp746, label %cond.end753, label %cond.false748, !dbg !142

cond.false748:                                    ; preds = %cond.end744
  %idxprom749 = sext i32 %189 to i64, !dbg !142
  %data750 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17, !dbg !142
  %190 = load i8**** %data750, align 8, !dbg !142, !tbaa !143
  %arrayidx751 = getelementptr inbounds i8*** %190, i64 %idxprom749, !dbg !142
  %191 = load i8*** %arrayidx751, align 8, !dbg !142, !tbaa !143
  %192 = load i8** %191, align 8, !dbg !142, !tbaa !143
  %phitmp1672 = bitcast i8* %192 to double*, !dbg !142
  br label %cond.end753, !dbg !142

cond.end753:                                      ; preds = %cond.end744, %cond.false748
  %cond754 = phi double* [ %phitmp1672, %cond.false748 ], [ null, %cond.end744 ]
  %193 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_adms_kxz, align 4, !dbg !142, !tbaa !138
  %cmp755 = icmp slt i32 %193, 0, !dbg !142
  br i1 %cmp755, label %cond.end762, label %cond.false757, !dbg !142

cond.false757:                                    ; preds = %cond.end753
  %idxprom758 = sext i32 %193 to i64, !dbg !142
  %data759 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17, !dbg !142
  %194 = load i8**** %data759, align 8, !dbg !142, !tbaa !143
  %arrayidx760 = getelementptr inbounds i8*** %194, i64 %idxprom758, !dbg !142
  %195 = load i8*** %arrayidx760, align 8, !dbg !142, !tbaa !143
  %196 = load i8** %195, align 8, !dbg !142, !tbaa !143
  %phitmp1673 = bitcast i8* %196 to double*, !dbg !142
  br label %cond.end762, !dbg !142

cond.end762:                                      ; preds = %cond.end753, %cond.false757
  %cond763 = phi double* [ %phitmp1673, %cond.false757 ], [ null, %cond.end753 ]
  %197 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_adms_kyy, align 4, !dbg !142, !tbaa !138
  %cmp764 = icmp slt i32 %197, 0, !dbg !142
  br i1 %cmp764, label %cond.end771, label %cond.false766, !dbg !142

cond.false766:                                    ; preds = %cond.end762
  %idxprom767 = sext i32 %197 to i64, !dbg !142
  %data768 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17, !dbg !142
  %198 = load i8**** %data768, align 8, !dbg !142, !tbaa !143
  %arrayidx769 = getelementptr inbounds i8*** %198, i64 %idxprom767, !dbg !142
  %199 = load i8*** %arrayidx769, align 8, !dbg !142, !tbaa !143
  %200 = load i8** %199, align 8, !dbg !142, !tbaa !143
  %phitmp1674 = bitcast i8* %200 to double*, !dbg !142
  br label %cond.end771, !dbg !142

cond.end771:                                      ; preds = %cond.end762, %cond.false766
  %cond772 = phi double* [ %phitmp1674, %cond.false766 ], [ null, %cond.end762 ]
  %201 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_adms_kyz, align 4, !dbg !142, !tbaa !138
  %cmp773 = icmp slt i32 %201, 0, !dbg !142
  br i1 %cmp773, label %cond.end780, label %cond.false775, !dbg !142

cond.false775:                                    ; preds = %cond.end771
  %idxprom776 = sext i32 %201 to i64, !dbg !142
  %data777 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17, !dbg !142
  %202 = load i8**** %data777, align 8, !dbg !142, !tbaa !143
  %arrayidx778 = getelementptr inbounds i8*** %202, i64 %idxprom776, !dbg !142
  %203 = load i8*** %arrayidx778, align 8, !dbg !142, !tbaa !143
  %204 = load i8** %203, align 8, !dbg !142, !tbaa !143
  %phitmp1675 = bitcast i8* %204 to double*, !dbg !142
  br label %cond.end780, !dbg !142

cond.end780:                                      ; preds = %cond.end771, %cond.false775
  %cond781 = phi double* [ %phitmp1675, %cond.false775 ], [ null, %cond.end771 ]
  %205 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_adms_kzz, align 4, !dbg !142, !tbaa !138
  %cmp782 = icmp slt i32 %205, 0, !dbg !142
  br i1 %cmp782, label %cond.end789, label %cond.false784, !dbg !142

cond.false784:                                    ; preds = %cond.end780
  %idxprom785 = sext i32 %205 to i64, !dbg !142
  %data786 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17, !dbg !142
  %206 = load i8**** %data786, align 8, !dbg !142, !tbaa !143
  %arrayidx787 = getelementptr inbounds i8*** %206, i64 %idxprom785, !dbg !142
  %207 = load i8*** %arrayidx787, align 8, !dbg !142, !tbaa !143
  %208 = load i8** %207, align 8, !dbg !142, !tbaa !143
  %phitmp1676 = bitcast i8* %208 to double*, !dbg !142
  br label %cond.end789, !dbg !142

cond.end789:                                      ; preds = %cond.end780, %cond.false784
  %cond790 = phi double* [ %phitmp1676, %cond.false784 ], [ null, %cond.end780 ]
  %209 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKGROUPNUM_confac, align 4, !dbg !142, !tbaa !138
  %cmp791 = icmp slt i32 %209, 0, !dbg !142
  br i1 %cmp791, label %cond.end825, label %cond.false793, !dbg !142

cond.false793:                                    ; preds = %cond.end789
  %call794 = tail call i32 @CCTK_QueryGroupStorage(%struct.cGH* %GH, i8* getelementptr inbounds ([17 x i8]* @.str61, i64 0, i64 0)) #3, !dbg !142
  %tobool795 = icmp eq i32 %call794, 0, !dbg !142
  br i1 %tobool795, label %cond.end801, label %cond.true796, !dbg !142

cond.true796:                                     ; preds = %cond.false793
  %call797 = tail call i32* @CCTK_ArrayGroupSize(%struct.cGH* %GH, i32 0, i8* getelementptr inbounds ([17 x i8]* @.str61, i64 0, i64 0)) #3, !dbg !142
  br label %cond.end801, !dbg !142

cond.end801:                                      ; preds = %cond.false793, %cond.true796
  %cond802.ph = phi i32* [ @_cctk_one, %cond.false793 ], [ %call797, %cond.true796 ]
  %.pr1796 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKGROUPNUM_confac, align 4, !dbg !142, !tbaa !138
  %cmp803 = icmp slt i32 %.pr1796, 0, !dbg !142
  br i1 %cmp803, label %cond.end825, label %cond.false805, !dbg !142

cond.false805:                                    ; preds = %cond.end801
  %call806 = tail call i32 @CCTK_QueryGroupStorage(%struct.cGH* %GH, i8* getelementptr inbounds ([17 x i8]* @.str61, i64 0, i64 0)) #3, !dbg !142
  %tobool807 = icmp eq i32 %call806, 0, !dbg !142
  br i1 %tobool807, label %cond.end813, label %cond.true808, !dbg !142

cond.true808:                                     ; preds = %cond.false805
  %call809 = tail call i32* @CCTK_ArrayGroupSize(%struct.cGH* %GH, i32 1, i8* getelementptr inbounds ([17 x i8]* @.str61, i64 0, i64 0)) #3, !dbg !142
  br label %cond.end813, !dbg !142

cond.end813:                                      ; preds = %cond.false805, %cond.true808
  %cond814.ph.ph = phi i32* [ @_cctk_one, %cond.false805 ], [ %call809, %cond.true808 ]
  %.pr1799.pr = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKGROUPNUM_confac, align 4, !dbg !142, !tbaa !138
  %cmp815 = icmp slt i32 %.pr1799.pr, 0, !dbg !142
  br i1 %cmp815, label %cond.end825, label %cond.false817, !dbg !142

cond.false817:                                    ; preds = %cond.end813
  %call818 = tail call i32 @CCTK_QueryGroupStorage(%struct.cGH* %GH, i8* getelementptr inbounds ([17 x i8]* @.str61, i64 0, i64 0)) #3, !dbg !142
  %tobool819 = icmp eq i32 %call818, 0, !dbg !142
  br i1 %tobool819, label %cond.end825, label %cond.true820, !dbg !142

cond.true820:                                     ; preds = %cond.false817
  %call821 = tail call i32* @CCTK_ArrayGroupSize(%struct.cGH* %GH, i32 2, i8* getelementptr inbounds ([17 x i8]* @.str61, i64 0, i64 0)) #3, !dbg !142
  br label %cond.end825, !dbg !142

cond.end825:                                      ; preds = %cond.false817, %cond.end813, %cond.end801, %cond.end789, %cond.true820
  %cond8141802 = phi i32* [ %cond814.ph.ph, %cond.true820 ], [ @_cctk_one, %cond.end789 ], [ @_cctk_one, %cond.end801 ], [ %cond814.ph.ph, %cond.end813 ], [ %cond814.ph.ph, %cond.false817 ]
  %cond80217981801 = phi i32* [ %cond802.ph, %cond.true820 ], [ @_cctk_one, %cond.end789 ], [ %cond802.ph, %cond.end801 ], [ %cond802.ph, %cond.end813 ], [ %cond802.ph, %cond.false817 ]
  %cond826 = phi i32* [ %call821, %cond.true820 ], [ @_cctk_one, %cond.end789 ], [ @_cctk_one, %cond.end801 ], [ @_cctk_one, %cond.end813 ], [ @_cctk_one, %cond.false817 ], !dbg !142
  %210 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKGROUPNUM_confac_1derivs, align 4, !dbg !142, !tbaa !138
  %cmp827 = icmp slt i32 %210, 0, !dbg !142
  br i1 %cmp827, label %cond.end861, label %cond.false829, !dbg !142

cond.false829:                                    ; preds = %cond.end825
  %call830 = tail call i32 @CCTK_QueryGroupStorage(%struct.cGH* %GH, i8* getelementptr inbounds ([25 x i8]* @.str63, i64 0, i64 0)) #3, !dbg !142
  %tobool831 = icmp eq i32 %call830, 0, !dbg !142
  br i1 %tobool831, label %cond.end837, label %cond.true832, !dbg !142

cond.true832:                                     ; preds = %cond.false829
  %call833 = tail call i32* @CCTK_ArrayGroupSize(%struct.cGH* %GH, i32 0, i8* getelementptr inbounds ([25 x i8]* @.str63, i64 0, i64 0)) #3, !dbg !142
  br label %cond.end837, !dbg !142

cond.end837:                                      ; preds = %cond.false829, %cond.true832
  %cond838.ph = phi i32* [ @_cctk_one, %cond.false829 ], [ %call833, %cond.true832 ]
  %.pr1803 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKGROUPNUM_confac_1derivs, align 4, !dbg !142, !tbaa !138
  %cmp839 = icmp slt i32 %.pr1803, 0, !dbg !142
  br i1 %cmp839, label %cond.end861, label %cond.false841, !dbg !142

cond.false841:                                    ; preds = %cond.end837
  %call842 = tail call i32 @CCTK_QueryGroupStorage(%struct.cGH* %GH, i8* getelementptr inbounds ([25 x i8]* @.str63, i64 0, i64 0)) #3, !dbg !142
  %tobool843 = icmp eq i32 %call842, 0, !dbg !142
  br i1 %tobool843, label %cond.end849, label %cond.true844, !dbg !142

cond.true844:                                     ; preds = %cond.false841
  %call845 = tail call i32* @CCTK_ArrayGroupSize(%struct.cGH* %GH, i32 1, i8* getelementptr inbounds ([25 x i8]* @.str63, i64 0, i64 0)) #3, !dbg !142
  br label %cond.end849, !dbg !142

cond.end849:                                      ; preds = %cond.false841, %cond.true844
  %cond850.ph.ph = phi i32* [ @_cctk_one, %cond.false841 ], [ %call845, %cond.true844 ]
  %.pr1806.pr = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKGROUPNUM_confac_1derivs, align 4, !dbg !142, !tbaa !138
  %cmp851 = icmp slt i32 %.pr1806.pr, 0, !dbg !142
  br i1 %cmp851, label %cond.end861, label %cond.false853, !dbg !142

cond.false853:                                    ; preds = %cond.end849
  %call854 = tail call i32 @CCTK_QueryGroupStorage(%struct.cGH* %GH, i8* getelementptr inbounds ([25 x i8]* @.str63, i64 0, i64 0)) #3, !dbg !142
  %tobool855 = icmp eq i32 %call854, 0, !dbg !142
  br i1 %tobool855, label %cond.end861, label %cond.true856, !dbg !142

cond.true856:                                     ; preds = %cond.false853
  %call857 = tail call i32* @CCTK_ArrayGroupSize(%struct.cGH* %GH, i32 2, i8* getelementptr inbounds ([25 x i8]* @.str63, i64 0, i64 0)) #3, !dbg !142
  br label %cond.end861, !dbg !142

cond.end861:                                      ; preds = %cond.false853, %cond.end849, %cond.end837, %cond.end825, %cond.true856
  %cond8501809 = phi i32* [ %cond850.ph.ph, %cond.true856 ], [ @_cctk_one, %cond.end825 ], [ @_cctk_one, %cond.end837 ], [ %cond850.ph.ph, %cond.end849 ], [ %cond850.ph.ph, %cond.false853 ]
  %cond83818051808 = phi i32* [ %cond838.ph, %cond.true856 ], [ @_cctk_one, %cond.end825 ], [ %cond838.ph, %cond.end837 ], [ %cond838.ph, %cond.end849 ], [ %cond838.ph, %cond.false853 ]
  %cond862 = phi i32* [ %call857, %cond.true856 ], [ @_cctk_one, %cond.end825 ], [ @_cctk_one, %cond.end837 ], [ @_cctk_one, %cond.end849 ], [ @_cctk_one, %cond.false853 ], !dbg !142
  %211 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKGROUPNUM_confac_2derivs, align 4, !dbg !142, !tbaa !138
  %cmp863 = icmp slt i32 %211, 0, !dbg !142
  br i1 %cmp863, label %cond.end897, label %cond.false865, !dbg !142

cond.false865:                                    ; preds = %cond.end861
  %call866 = tail call i32 @CCTK_QueryGroupStorage(%struct.cGH* %GH, i8* getelementptr inbounds ([25 x i8]* @.str65, i64 0, i64 0)) #3, !dbg !142
  %tobool867 = icmp eq i32 %call866, 0, !dbg !142
  br i1 %tobool867, label %cond.end873, label %cond.true868, !dbg !142

cond.true868:                                     ; preds = %cond.false865
  %call869 = tail call i32* @CCTK_ArrayGroupSize(%struct.cGH* %GH, i32 0, i8* getelementptr inbounds ([25 x i8]* @.str65, i64 0, i64 0)) #3, !dbg !142
  br label %cond.end873, !dbg !142

cond.end873:                                      ; preds = %cond.false865, %cond.true868
  %cond874.ph = phi i32* [ @_cctk_one, %cond.false865 ], [ %call869, %cond.true868 ]
  %.pr1810 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKGROUPNUM_confac_2derivs, align 4, !dbg !142, !tbaa !138
  %cmp875 = icmp slt i32 %.pr1810, 0, !dbg !142
  br i1 %cmp875, label %cond.end897, label %cond.false877, !dbg !142

cond.false877:                                    ; preds = %cond.end873
  %call878 = tail call i32 @CCTK_QueryGroupStorage(%struct.cGH* %GH, i8* getelementptr inbounds ([25 x i8]* @.str65, i64 0, i64 0)) #3, !dbg !142
  %tobool879 = icmp eq i32 %call878, 0, !dbg !142
  br i1 %tobool879, label %cond.end885, label %cond.true880, !dbg !142

cond.true880:                                     ; preds = %cond.false877
  %call881 = tail call i32* @CCTK_ArrayGroupSize(%struct.cGH* %GH, i32 1, i8* getelementptr inbounds ([25 x i8]* @.str65, i64 0, i64 0)) #3, !dbg !142
  br label %cond.end885, !dbg !142

cond.end885:                                      ; preds = %cond.false877, %cond.true880
  %cond886.ph.ph = phi i32* [ @_cctk_one, %cond.false877 ], [ %call881, %cond.true880 ]
  %.pr1813.pr = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKGROUPNUM_confac_2derivs, align 4, !dbg !142, !tbaa !138
  %cmp887 = icmp slt i32 %.pr1813.pr, 0, !dbg !142
  br i1 %cmp887, label %cond.end897, label %cond.false889, !dbg !142

cond.false889:                                    ; preds = %cond.end885
  %call890 = tail call i32 @CCTK_QueryGroupStorage(%struct.cGH* %GH, i8* getelementptr inbounds ([25 x i8]* @.str65, i64 0, i64 0)) #3, !dbg !142
  %tobool891 = icmp eq i32 %call890, 0, !dbg !142
  br i1 %tobool891, label %cond.end897, label %cond.true892, !dbg !142

cond.true892:                                     ; preds = %cond.false889
  %call893 = tail call i32* @CCTK_ArrayGroupSize(%struct.cGH* %GH, i32 2, i8* getelementptr inbounds ([25 x i8]* @.str65, i64 0, i64 0)) #3, !dbg !142
  br label %cond.end897, !dbg !142

cond.end897:                                      ; preds = %cond.false889, %cond.end885, %cond.end873, %cond.end861, %cond.true892
  %cond8861816 = phi i32* [ %cond886.ph.ph, %cond.true892 ], [ @_cctk_one, %cond.end861 ], [ @_cctk_one, %cond.end873 ], [ %cond886.ph.ph, %cond.end885 ], [ %cond886.ph.ph, %cond.false889 ]
  %cond87418121815 = phi i32* [ %cond874.ph, %cond.true892 ], [ @_cctk_one, %cond.end861 ], [ %cond874.ph, %cond.end873 ], [ %cond874.ph, %cond.end885 ], [ %cond874.ph, %cond.false889 ]
  %cond898 = phi i32* [ %call893, %cond.true892 ], [ @_cctk_one, %cond.end861 ], [ @_cctk_one, %cond.end873 ], [ @_cctk_one, %cond.end885 ], [ @_cctk_one, %cond.false889 ], !dbg !142
  %212 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKGROUPNUM_coordinates, align 4, !dbg !142, !tbaa !138
  %cmp899 = icmp slt i32 %212, 0, !dbg !142
  br i1 %cmp899, label %cond.end933, label %cond.false901, !dbg !142

cond.false901:                                    ; preds = %cond.end897
  %call902 = tail call i32 @CCTK_QueryGroupStorage(%struct.cGH* %GH, i8* getelementptr inbounds ([18 x i8]* @.str74, i64 0, i64 0)) #3, !dbg !142
  %tobool903 = icmp eq i32 %call902, 0, !dbg !142
  br i1 %tobool903, label %cond.end909, label %cond.true904, !dbg !142

cond.true904:                                     ; preds = %cond.false901
  %call905 = tail call i32* @CCTK_ArrayGroupSize(%struct.cGH* %GH, i32 0, i8* getelementptr inbounds ([18 x i8]* @.str74, i64 0, i64 0)) #3, !dbg !142
  br label %cond.end909, !dbg !142

cond.end909:                                      ; preds = %cond.false901, %cond.true904
  %cond910.ph = phi i32* [ @_cctk_one, %cond.false901 ], [ %call905, %cond.true904 ]
  %.pr1817 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKGROUPNUM_coordinates, align 4, !dbg !142, !tbaa !138
  %cmp911 = icmp slt i32 %.pr1817, 0, !dbg !142
  br i1 %cmp911, label %cond.end933, label %cond.false913, !dbg !142

cond.false913:                                    ; preds = %cond.end909
  %call914 = tail call i32 @CCTK_QueryGroupStorage(%struct.cGH* %GH, i8* getelementptr inbounds ([18 x i8]* @.str74, i64 0, i64 0)) #3, !dbg !142
  %tobool915 = icmp eq i32 %call914, 0, !dbg !142
  br i1 %tobool915, label %cond.end921, label %cond.true916, !dbg !142

cond.true916:                                     ; preds = %cond.false913
  %call917 = tail call i32* @CCTK_ArrayGroupSize(%struct.cGH* %GH, i32 1, i8* getelementptr inbounds ([18 x i8]* @.str74, i64 0, i64 0)) #3, !dbg !142
  br label %cond.end921, !dbg !142

cond.end921:                                      ; preds = %cond.false913, %cond.true916
  %cond922.ph.ph = phi i32* [ @_cctk_one, %cond.false913 ], [ %call917, %cond.true916 ]
  %.pr1820.pr = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKGROUPNUM_coordinates, align 4, !dbg !142, !tbaa !138
  %cmp923 = icmp slt i32 %.pr1820.pr, 0, !dbg !142
  br i1 %cmp923, label %cond.end933, label %cond.false925, !dbg !142

cond.false925:                                    ; preds = %cond.end921
  %call926 = tail call i32 @CCTK_QueryGroupStorage(%struct.cGH* %GH, i8* getelementptr inbounds ([18 x i8]* @.str74, i64 0, i64 0)) #3, !dbg !142
  %tobool927 = icmp eq i32 %call926, 0, !dbg !142
  br i1 %tobool927, label %cond.end933, label %cond.true928, !dbg !142

cond.true928:                                     ; preds = %cond.false925
  %call929 = tail call i32* @CCTK_ArrayGroupSize(%struct.cGH* %GH, i32 2, i8* getelementptr inbounds ([18 x i8]* @.str74, i64 0, i64 0)) #3, !dbg !142
  br label %cond.end933, !dbg !142

cond.end933:                                      ; preds = %cond.false925, %cond.end921, %cond.end909, %cond.end897, %cond.true928
  %cond9221823 = phi i32* [ %cond922.ph.ph, %cond.true928 ], [ @_cctk_one, %cond.end897 ], [ @_cctk_one, %cond.end909 ], [ %cond922.ph.ph, %cond.end921 ], [ %cond922.ph.ph, %cond.false925 ]
  %cond91018191822 = phi i32* [ %cond910.ph, %cond.true928 ], [ @_cctk_one, %cond.end897 ], [ %cond910.ph, %cond.end909 ], [ %cond910.ph, %cond.end921 ], [ %cond910.ph, %cond.false925 ]
  %cond934 = phi i32* [ %call929, %cond.true928 ], [ @_cctk_one, %cond.end897 ], [ @_cctk_one, %cond.end909 ], [ @_cctk_one, %cond.end921 ], [ @_cctk_one, %cond.false925 ], !dbg !142
  %213 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKGROUPNUM_curv, align 4, !dbg !142, !tbaa !138
  %cmp935 = icmp slt i32 %213, 0, !dbg !142
  br i1 %cmp935, label %cond.end969, label %cond.false937, !dbg !142

cond.false937:                                    ; preds = %cond.end933
  %call938 = tail call i32 @CCTK_QueryGroupStorage(%struct.cGH* %GH, i8* getelementptr inbounds ([15 x i8]* @.str54, i64 0, i64 0)) #3, !dbg !142
  %tobool939 = icmp eq i32 %call938, 0, !dbg !142
  br i1 %tobool939, label %cond.end945, label %cond.true940, !dbg !142

cond.true940:                                     ; preds = %cond.false937
  %call941 = tail call i32* @CCTK_ArrayGroupSize(%struct.cGH* %GH, i32 0, i8* getelementptr inbounds ([15 x i8]* @.str54, i64 0, i64 0)) #3, !dbg !142
  br label %cond.end945, !dbg !142

cond.end945:                                      ; preds = %cond.false937, %cond.true940
  %cond946.ph = phi i32* [ @_cctk_one, %cond.false937 ], [ %call941, %cond.true940 ]
  %.pr1824 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKGROUPNUM_curv, align 4, !dbg !142, !tbaa !138
  %cmp947 = icmp slt i32 %.pr1824, 0, !dbg !142
  br i1 %cmp947, label %cond.end969, label %cond.false949, !dbg !142

cond.false949:                                    ; preds = %cond.end945
  %call950 = tail call i32 @CCTK_QueryGroupStorage(%struct.cGH* %GH, i8* getelementptr inbounds ([15 x i8]* @.str54, i64 0, i64 0)) #3, !dbg !142
  %tobool951 = icmp eq i32 %call950, 0, !dbg !142
  br i1 %tobool951, label %cond.end957, label %cond.true952, !dbg !142

cond.true952:                                     ; preds = %cond.false949
  %call953 = tail call i32* @CCTK_ArrayGroupSize(%struct.cGH* %GH, i32 1, i8* getelementptr inbounds ([15 x i8]* @.str54, i64 0, i64 0)) #3, !dbg !142
  br label %cond.end957, !dbg !142

cond.end957:                                      ; preds = %cond.false949, %cond.true952
  %cond958.ph.ph = phi i32* [ @_cctk_one, %cond.false949 ], [ %call953, %cond.true952 ]
  %.pr1827.pr = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKGROUPNUM_curv, align 4, !dbg !142, !tbaa !138
  %cmp959 = icmp slt i32 %.pr1827.pr, 0, !dbg !142
  br i1 %cmp959, label %cond.end969, label %cond.false961, !dbg !142

cond.false961:                                    ; preds = %cond.end957
  %call962 = tail call i32 @CCTK_QueryGroupStorage(%struct.cGH* %GH, i8* getelementptr inbounds ([15 x i8]* @.str54, i64 0, i64 0)) #3, !dbg !142
  %tobool963 = icmp eq i32 %call962, 0, !dbg !142
  br i1 %tobool963, label %cond.end969, label %cond.true964, !dbg !142

cond.true964:                                     ; preds = %cond.false961
  %call965 = tail call i32* @CCTK_ArrayGroupSize(%struct.cGH* %GH, i32 2, i8* getelementptr inbounds ([15 x i8]* @.str54, i64 0, i64 0)) #3, !dbg !142
  br label %cond.end969, !dbg !142

cond.end969:                                      ; preds = %cond.false961, %cond.end957, %cond.end945, %cond.end933, %cond.true964
  %cond9581830 = phi i32* [ %cond958.ph.ph, %cond.true964 ], [ @_cctk_one, %cond.end933 ], [ @_cctk_one, %cond.end945 ], [ %cond958.ph.ph, %cond.end957 ], [ %cond958.ph.ph, %cond.false961 ]
  %cond94618261829 = phi i32* [ %cond946.ph, %cond.true964 ], [ @_cctk_one, %cond.end933 ], [ %cond946.ph, %cond.end945 ], [ %cond946.ph, %cond.end957 ], [ %cond946.ph, %cond.false961 ]
  %cond970 = phi i32* [ %call965, %cond.true964 ], [ @_cctk_one, %cond.end933 ], [ @_cctk_one, %cond.end945 ], [ @_cctk_one, %cond.end957 ], [ @_cctk_one, %cond.false961 ], !dbg !142
  %214 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKGROUPNUM_lapse, align 4, !dbg !142, !tbaa !138
  %cmp971 = icmp slt i32 %214, 0, !dbg !142
  br i1 %cmp971, label %cond.end1005, label %cond.false973, !dbg !142

cond.false973:                                    ; preds = %cond.end969
  %call974 = tail call i32 @CCTK_QueryGroupStorage(%struct.cGH* %GH, i8* getelementptr inbounds ([16 x i8]* @.str30, i64 0, i64 0)) #3, !dbg !142
  %tobool975 = icmp eq i32 %call974, 0, !dbg !142
  br i1 %tobool975, label %cond.end981, label %cond.true976, !dbg !142

cond.true976:                                     ; preds = %cond.false973
  %call977 = tail call i32* @CCTK_ArrayGroupSize(%struct.cGH* %GH, i32 0, i8* getelementptr inbounds ([16 x i8]* @.str30, i64 0, i64 0)) #3, !dbg !142
  br label %cond.end981, !dbg !142

cond.end981:                                      ; preds = %cond.false973, %cond.true976
  %cond982.ph = phi i32* [ @_cctk_one, %cond.false973 ], [ %call977, %cond.true976 ]
  %.pr1831 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKGROUPNUM_lapse, align 4, !dbg !142, !tbaa !138
  %cmp983 = icmp slt i32 %.pr1831, 0, !dbg !142
  br i1 %cmp983, label %cond.end1005, label %cond.false985, !dbg !142

cond.false985:                                    ; preds = %cond.end981
  %call986 = tail call i32 @CCTK_QueryGroupStorage(%struct.cGH* %GH, i8* getelementptr inbounds ([16 x i8]* @.str30, i64 0, i64 0)) #3, !dbg !142
  %tobool987 = icmp eq i32 %call986, 0, !dbg !142
  br i1 %tobool987, label %cond.end993, label %cond.true988, !dbg !142

cond.true988:                                     ; preds = %cond.false985
  %call989 = tail call i32* @CCTK_ArrayGroupSize(%struct.cGH* %GH, i32 1, i8* getelementptr inbounds ([16 x i8]* @.str30, i64 0, i64 0)) #3, !dbg !142
  br label %cond.end993, !dbg !142

cond.end993:                                      ; preds = %cond.false985, %cond.true988
  %cond994.ph.ph = phi i32* [ @_cctk_one, %cond.false985 ], [ %call989, %cond.true988 ]
  %.pr1834.pr = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKGROUPNUM_lapse, align 4, !dbg !142, !tbaa !138
  %cmp995 = icmp slt i32 %.pr1834.pr, 0, !dbg !142
  br i1 %cmp995, label %cond.end1005, label %cond.false997, !dbg !142

cond.false997:                                    ; preds = %cond.end993
  %call998 = tail call i32 @CCTK_QueryGroupStorage(%struct.cGH* %GH, i8* getelementptr inbounds ([16 x i8]* @.str30, i64 0, i64 0)) #3, !dbg !142
  %tobool999 = icmp eq i32 %call998, 0, !dbg !142
  br i1 %tobool999, label %cond.end1005, label %cond.true1000, !dbg !142

cond.true1000:                                    ; preds = %cond.false997
  %call1001 = tail call i32* @CCTK_ArrayGroupSize(%struct.cGH* %GH, i32 2, i8* getelementptr inbounds ([16 x i8]* @.str30, i64 0, i64 0)) #3, !dbg !142
  br label %cond.end1005, !dbg !142

cond.end1005:                                     ; preds = %cond.false997, %cond.end993, %cond.end981, %cond.end969, %cond.true1000
  %cond9941837 = phi i32* [ %cond994.ph.ph, %cond.true1000 ], [ @_cctk_one, %cond.end969 ], [ @_cctk_one, %cond.end981 ], [ %cond994.ph.ph, %cond.end993 ], [ %cond994.ph.ph, %cond.false997 ]
  %cond98218331836 = phi i32* [ %cond982.ph, %cond.true1000 ], [ @_cctk_one, %cond.end969 ], [ %cond982.ph, %cond.end981 ], [ %cond982.ph, %cond.end993 ], [ %cond982.ph, %cond.false997 ]
  %cond1006 = phi i32* [ %call1001, %cond.true1000 ], [ @_cctk_one, %cond.end969 ], [ @_cctk_one, %cond.end981 ], [ @_cctk_one, %cond.end993 ], [ @_cctk_one, %cond.false997 ], !dbg !142
  %215 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKGROUPNUM_mask, align 4, !dbg !142, !tbaa !138
  %cmp1007 = icmp slt i32 %215, 0, !dbg !142
  br i1 %cmp1007, label %cond.end1041, label %cond.false1009, !dbg !142

cond.false1009:                                   ; preds = %cond.end1005
  %call1010 = tail call i32 @CCTK_QueryGroupStorage(%struct.cGH* %GH, i8* getelementptr inbounds ([15 x i8]* @.str45, i64 0, i64 0)) #3, !dbg !142
  %tobool1011 = icmp eq i32 %call1010, 0, !dbg !142
  br i1 %tobool1011, label %cond.end1017, label %cond.true1012, !dbg !142

cond.true1012:                                    ; preds = %cond.false1009
  %call1013 = tail call i32* @CCTK_ArrayGroupSize(%struct.cGH* %GH, i32 0, i8* getelementptr inbounds ([15 x i8]* @.str45, i64 0, i64 0)) #3, !dbg !142
  br label %cond.end1017, !dbg !142

cond.end1017:                                     ; preds = %cond.false1009, %cond.true1012
  %cond1018.ph = phi i32* [ @_cctk_one, %cond.false1009 ], [ %call1013, %cond.true1012 ]
  %.pr1838 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKGROUPNUM_mask, align 4, !dbg !142, !tbaa !138
  %cmp1019 = icmp slt i32 %.pr1838, 0, !dbg !142
  br i1 %cmp1019, label %cond.end1041, label %cond.false1021, !dbg !142

cond.false1021:                                   ; preds = %cond.end1017
  %call1022 = tail call i32 @CCTK_QueryGroupStorage(%struct.cGH* %GH, i8* getelementptr inbounds ([15 x i8]* @.str45, i64 0, i64 0)) #3, !dbg !142
  %tobool1023 = icmp eq i32 %call1022, 0, !dbg !142
  br i1 %tobool1023, label %cond.end1029, label %cond.true1024, !dbg !142

cond.true1024:                                    ; preds = %cond.false1021
  %call1025 = tail call i32* @CCTK_ArrayGroupSize(%struct.cGH* %GH, i32 1, i8* getelementptr inbounds ([15 x i8]* @.str45, i64 0, i64 0)) #3, !dbg !142
  br label %cond.end1029, !dbg !142

cond.end1029:                                     ; preds = %cond.false1021, %cond.true1024
  %cond1030.ph.ph = phi i32* [ @_cctk_one, %cond.false1021 ], [ %call1025, %cond.true1024 ]
  %.pr1841.pr = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKGROUPNUM_mask, align 4, !dbg !142, !tbaa !138
  %cmp1031 = icmp slt i32 %.pr1841.pr, 0, !dbg !142
  br i1 %cmp1031, label %cond.end1041, label %cond.false1033, !dbg !142

cond.false1033:                                   ; preds = %cond.end1029
  %call1034 = tail call i32 @CCTK_QueryGroupStorage(%struct.cGH* %GH, i8* getelementptr inbounds ([15 x i8]* @.str45, i64 0, i64 0)) #3, !dbg !142
  %tobool1035 = icmp eq i32 %call1034, 0, !dbg !142
  br i1 %tobool1035, label %cond.end1041, label %cond.true1036, !dbg !142

cond.true1036:                                    ; preds = %cond.false1033
  %call1037 = tail call i32* @CCTK_ArrayGroupSize(%struct.cGH* %GH, i32 2, i8* getelementptr inbounds ([15 x i8]* @.str45, i64 0, i64 0)) #3, !dbg !142
  br label %cond.end1041, !dbg !142

cond.end1041:                                     ; preds = %cond.false1033, %cond.end1029, %cond.end1017, %cond.end1005, %cond.true1036
  %cond10301844 = phi i32* [ %cond1030.ph.ph, %cond.true1036 ], [ @_cctk_one, %cond.end1005 ], [ @_cctk_one, %cond.end1017 ], [ %cond1030.ph.ph, %cond.end1029 ], [ %cond1030.ph.ph, %cond.false1033 ]
  %cond101818401843 = phi i32* [ %cond1018.ph, %cond.true1036 ], [ @_cctk_one, %cond.end1005 ], [ %cond1018.ph, %cond.end1017 ], [ %cond1018.ph, %cond.end1029 ], [ %cond1018.ph, %cond.false1033 ]
  %cond1042 = phi i32* [ %call1037, %cond.true1036 ], [ @_cctk_one, %cond.end1005 ], [ @_cctk_one, %cond.end1017 ], [ @_cctk_one, %cond.end1029 ], [ @_cctk_one, %cond.false1033 ], !dbg !142
  %216 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKGROUPNUM_metric, align 4, !dbg !142, !tbaa !138
  %cmp1043 = icmp slt i32 %216, 0, !dbg !142
  br i1 %cmp1043, label %cond.end1077, label %cond.false1045, !dbg !142

cond.false1045:                                   ; preds = %cond.end1041
  %call1046 = tail call i32 @CCTK_QueryGroupStorage(%struct.cGH* %GH, i8* getelementptr inbounds ([17 x i8]* @.str47, i64 0, i64 0)) #3, !dbg !142
  %tobool1047 = icmp eq i32 %call1046, 0, !dbg !142
  br i1 %tobool1047, label %cond.end1053, label %cond.true1048, !dbg !142

cond.true1048:                                    ; preds = %cond.false1045
  %call1049 = tail call i32* @CCTK_ArrayGroupSize(%struct.cGH* %GH, i32 0, i8* getelementptr inbounds ([17 x i8]* @.str47, i64 0, i64 0)) #3, !dbg !142
  br label %cond.end1053, !dbg !142

cond.end1053:                                     ; preds = %cond.false1045, %cond.true1048
  %cond1054.ph = phi i32* [ @_cctk_one, %cond.false1045 ], [ %call1049, %cond.true1048 ]
  %.pr1845 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKGROUPNUM_metric, align 4, !dbg !142, !tbaa !138
  %cmp1055 = icmp slt i32 %.pr1845, 0, !dbg !142
  br i1 %cmp1055, label %cond.end1077, label %cond.false1057, !dbg !142

cond.false1057:                                   ; preds = %cond.end1053
  %call1058 = tail call i32 @CCTK_QueryGroupStorage(%struct.cGH* %GH, i8* getelementptr inbounds ([17 x i8]* @.str47, i64 0, i64 0)) #3, !dbg !142
  %tobool1059 = icmp eq i32 %call1058, 0, !dbg !142
  br i1 %tobool1059, label %cond.end1065, label %cond.true1060, !dbg !142

cond.true1060:                                    ; preds = %cond.false1057
  %call1061 = tail call i32* @CCTK_ArrayGroupSize(%struct.cGH* %GH, i32 1, i8* getelementptr inbounds ([17 x i8]* @.str47, i64 0, i64 0)) #3, !dbg !142
  br label %cond.end1065, !dbg !142

cond.end1065:                                     ; preds = %cond.false1057, %cond.true1060
  %cond1066.ph.ph = phi i32* [ @_cctk_one, %cond.false1057 ], [ %call1061, %cond.true1060 ]
  %.pr1848.pr = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKGROUPNUM_metric, align 4, !dbg !142, !tbaa !138
  %cmp1067 = icmp slt i32 %.pr1848.pr, 0, !dbg !142
  br i1 %cmp1067, label %cond.end1077, label %cond.false1069, !dbg !142

cond.false1069:                                   ; preds = %cond.end1065
  %call1070 = tail call i32 @CCTK_QueryGroupStorage(%struct.cGH* %GH, i8* getelementptr inbounds ([17 x i8]* @.str47, i64 0, i64 0)) #3, !dbg !142
  %tobool1071 = icmp eq i32 %call1070, 0, !dbg !142
  br i1 %tobool1071, label %cond.end1077, label %cond.true1072, !dbg !142

cond.true1072:                                    ; preds = %cond.false1069
  %call1073 = tail call i32* @CCTK_ArrayGroupSize(%struct.cGH* %GH, i32 2, i8* getelementptr inbounds ([17 x i8]* @.str47, i64 0, i64 0)) #3, !dbg !142
  br label %cond.end1077, !dbg !142

cond.end1077:                                     ; preds = %cond.end1041, %cond.end1053, %cond.false1069, %cond.true1072, %cond.end1065
  %cond10661851 = phi i32* [ %cond1066.ph.ph, %cond.end1065 ], [ %cond1066.ph.ph, %cond.true1072 ], [ %cond1066.ph.ph, %cond.false1069 ], [ @_cctk_one, %cond.end1053 ], [ @_cctk_one, %cond.end1041 ]
  %cond105418471850 = phi i32* [ %cond1054.ph, %cond.end1065 ], [ %cond1054.ph, %cond.true1072 ], [ %cond1054.ph, %cond.false1069 ], [ %cond1054.ph, %cond.end1053 ], [ @_cctk_one, %cond.end1041 ]
  %cond1078 = phi i32* [ @_cctk_one, %cond.end1065 ], [ %call1073, %cond.true1072 ], [ @_cctk_one, %cond.false1069 ], [ @_cctk_one, %cond.end1053 ], [ @_cctk_one, %cond.end1041 ], !dbg !142
  %217 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKGROUPNUM_shift, align 4, !dbg !142, !tbaa !138
  %cmp1079 = icmp slt i32 %217, 0, !dbg !142
  br i1 %cmp1079, label %cond.end1113, label %cond.false1081, !dbg !142

cond.false1081:                                   ; preds = %cond.end1077
  %call1082 = tail call i32 @CCTK_QueryGroupStorage(%struct.cGH* %GH, i8* getelementptr inbounds ([16 x i8]* @.str32, i64 0, i64 0)) #3, !dbg !142
  %tobool1083 = icmp eq i32 %call1082, 0, !dbg !142
  br i1 %tobool1083, label %cond.end1089, label %cond.true1084, !dbg !142

cond.true1084:                                    ; preds = %cond.false1081
  %call1085 = tail call i32* @CCTK_ArrayGroupSize(%struct.cGH* %GH, i32 0, i8* getelementptr inbounds ([16 x i8]* @.str32, i64 0, i64 0)) #3, !dbg !142
  br label %cond.end1089, !dbg !142

cond.end1089:                                     ; preds = %cond.false1081, %cond.true1084
  %cond1090.ph = phi i32* [ @_cctk_one, %cond.false1081 ], [ %call1085, %cond.true1084 ]
  %.pr1852 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKGROUPNUM_shift, align 4, !dbg !142, !tbaa !138
  %cmp1091 = icmp slt i32 %.pr1852, 0, !dbg !142
  br i1 %cmp1091, label %cond.end1113, label %cond.false1093, !dbg !142

cond.false1093:                                   ; preds = %cond.end1089
  %call1094 = tail call i32 @CCTK_QueryGroupStorage(%struct.cGH* %GH, i8* getelementptr inbounds ([16 x i8]* @.str32, i64 0, i64 0)) #3, !dbg !142
  %tobool1095 = icmp eq i32 %call1094, 0, !dbg !142
  br i1 %tobool1095, label %cond.end1101, label %cond.true1096, !dbg !142

cond.true1096:                                    ; preds = %cond.false1093
  %call1097 = tail call i32* @CCTK_ArrayGroupSize(%struct.cGH* %GH, i32 1, i8* getelementptr inbounds ([16 x i8]* @.str32, i64 0, i64 0)) #3, !dbg !142
  br label %cond.end1101, !dbg !142

cond.end1101:                                     ; preds = %cond.false1093, %cond.true1096
  %cond1102.ph.ph = phi i32* [ @_cctk_one, %cond.false1093 ], [ %call1097, %cond.true1096 ]
  %.pr1855.pr = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKGROUPNUM_shift, align 4, !dbg !142, !tbaa !138
  %cmp1103 = icmp slt i32 %.pr1855.pr, 0, !dbg !142
  br i1 %cmp1103, label %cond.end1113, label %cond.false1105, !dbg !142

cond.false1105:                                   ; preds = %cond.end1101
  %call1106 = tail call i32 @CCTK_QueryGroupStorage(%struct.cGH* %GH, i8* getelementptr inbounds ([16 x i8]* @.str32, i64 0, i64 0)) #3, !dbg !142
  %tobool1107 = icmp eq i32 %call1106, 0, !dbg !142
  br i1 %tobool1107, label %cond.end1113, label %cond.true1108, !dbg !142

cond.true1108:                                    ; preds = %cond.false1105
  %call1109 = tail call i32* @CCTK_ArrayGroupSize(%struct.cGH* %GH, i32 2, i8* getelementptr inbounds ([16 x i8]* @.str32, i64 0, i64 0)) #3, !dbg !142
  br label %cond.end1113, !dbg !142

cond.end1113:                                     ; preds = %cond.end1077, %cond.end1089, %cond.false1105, %cond.true1108, %cond.end1101
  %cond11021858 = phi i32* [ %cond1102.ph.ph, %cond.end1101 ], [ %cond1102.ph.ph, %cond.true1108 ], [ %cond1102.ph.ph, %cond.false1105 ], [ @_cctk_one, %cond.end1089 ], [ @_cctk_one, %cond.end1077 ]
  %cond109018541857 = phi i32* [ %cond1090.ph, %cond.end1101 ], [ %cond1090.ph, %cond.true1108 ], [ %cond1090.ph, %cond.false1105 ], [ %cond1090.ph, %cond.end1089 ], [ @_cctk_one, %cond.end1077 ]
  %cond1114 = phi i32* [ @_cctk_one, %cond.end1101 ], [ %call1109, %cond.true1108 ], [ @_cctk_one, %cond.false1105 ], [ @_cctk_one, %cond.end1089 ], [ @_cctk_one, %cond.end1077 ], !dbg !142
  %218 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_active_slicing_handle, align 4, !dbg !142, !tbaa !138
  %cmp1115 = icmp slt i32 %218, 0, !dbg !142
  br i1 %cmp1115, label %cond.end1122, label %cond.false1117, !dbg !142

cond.false1117:                                   ; preds = %cond.end1113
  %idxprom1118 = sext i32 %218 to i64, !dbg !142
  %data1119 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17, !dbg !142
  %219 = load i8**** %data1119, align 8, !dbg !142, !tbaa !143
  %arrayidx1120 = getelementptr inbounds i8*** %219, i64 %idxprom1118, !dbg !142
  %220 = load i8*** %arrayidx1120, align 8, !dbg !142, !tbaa !143
  %221 = load i8** %220, align 8, !dbg !142, !tbaa !143
  %phitmp1677 = bitcast i8* %221 to i32*, !dbg !142
  br label %cond.end1122, !dbg !142

cond.end1122:                                     ; preds = %cond.end1113, %cond.false1117
  %cond1123 = phi i32* [ %phitmp1677, %cond.false1117 ], [ null, %cond.end1113 ]
  %222 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_alp, align 4, !dbg !142, !tbaa !138
  %cmp1124 = icmp slt i32 %222, 0, !dbg !142
  br i1 %cmp1124, label %cond.end1131, label %cond.false1126, !dbg !142

cond.false1126:                                   ; preds = %cond.end1122
  %idxprom1127 = sext i32 %222 to i64, !dbg !142
  %data1128 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17, !dbg !142
  %223 = load i8**** %data1128, align 8, !dbg !142, !tbaa !143
  %arrayidx1129 = getelementptr inbounds i8*** %223, i64 %idxprom1127, !dbg !142
  %224 = load i8*** %arrayidx1129, align 8, !dbg !142, !tbaa !143
  %225 = load i8** %224, align 8, !dbg !142, !tbaa !143
  %phitmp1678 = bitcast i8* %225 to double*, !dbg !142
  br label %cond.end1131, !dbg !142

cond.end1131:                                     ; preds = %cond.end1122, %cond.false1126
  %cond1132 = phi double* [ %phitmp1678, %cond.false1126 ], [ null, %cond.end1122 ]
  %226 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_betax, align 4, !dbg !142, !tbaa !138
  %cmp1133 = icmp slt i32 %226, 0, !dbg !142
  br i1 %cmp1133, label %cond.end1140, label %cond.false1135, !dbg !142

cond.false1135:                                   ; preds = %cond.end1131
  %idxprom1136 = sext i32 %226 to i64, !dbg !142
  %data1137 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17, !dbg !142
  %227 = load i8**** %data1137, align 8, !dbg !142, !tbaa !143
  %arrayidx1138 = getelementptr inbounds i8*** %227, i64 %idxprom1136, !dbg !142
  %228 = load i8*** %arrayidx1138, align 8, !dbg !142, !tbaa !143
  %229 = load i8** %228, align 8, !dbg !142, !tbaa !143
  %phitmp1679 = bitcast i8* %229 to double*, !dbg !142
  br label %cond.end1140, !dbg !142

cond.end1140:                                     ; preds = %cond.end1131, %cond.false1135
  %cond1141 = phi double* [ %phitmp1679, %cond.false1135 ], [ null, %cond.end1131 ]
  %230 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_betay, align 4, !dbg !142, !tbaa !138
  %cmp1142 = icmp slt i32 %230, 0, !dbg !142
  br i1 %cmp1142, label %cond.end1149, label %cond.false1144, !dbg !142

cond.false1144:                                   ; preds = %cond.end1140
  %idxprom1145 = sext i32 %230 to i64, !dbg !142
  %data1146 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17, !dbg !142
  %231 = load i8**** %data1146, align 8, !dbg !142, !tbaa !143
  %arrayidx1147 = getelementptr inbounds i8*** %231, i64 %idxprom1145, !dbg !142
  %232 = load i8*** %arrayidx1147, align 8, !dbg !142, !tbaa !143
  %233 = load i8** %232, align 8, !dbg !142, !tbaa !143
  %phitmp1680 = bitcast i8* %233 to double*, !dbg !142
  br label %cond.end1149, !dbg !142

cond.end1149:                                     ; preds = %cond.end1140, %cond.false1144
  %cond1150 = phi double* [ %phitmp1680, %cond.false1144 ], [ null, %cond.end1140 ]
  %234 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_betaz, align 4, !dbg !142, !tbaa !138
  %cmp1151 = icmp slt i32 %234, 0, !dbg !142
  br i1 %cmp1151, label %cond.end1158, label %cond.false1153, !dbg !142

cond.false1153:                                   ; preds = %cond.end1149
  %idxprom1154 = sext i32 %234 to i64, !dbg !142
  %data1155 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17, !dbg !142
  %235 = load i8**** %data1155, align 8, !dbg !142, !tbaa !143
  %arrayidx1156 = getelementptr inbounds i8*** %235, i64 %idxprom1154, !dbg !142
  %236 = load i8*** %arrayidx1156, align 8, !dbg !142, !tbaa !143
  %237 = load i8** %236, align 8, !dbg !142, !tbaa !143
  %phitmp1681 = bitcast i8* %237 to double*, !dbg !142
  br label %cond.end1158, !dbg !142

cond.end1158:                                     ; preds = %cond.end1149, %cond.false1153
  %cond1159 = phi double* [ %phitmp1681, %cond.false1153 ], [ null, %cond.end1149 ]
  %238 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_coarse_dx, align 4, !dbg !142, !tbaa !138
  %cmp1160 = icmp slt i32 %238, 0, !dbg !142
  br i1 %cmp1160, label %cond.end1167, label %cond.false1162, !dbg !142

cond.false1162:                                   ; preds = %cond.end1158
  %idxprom1163 = sext i32 %238 to i64, !dbg !142
  %data1164 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17, !dbg !142
  %239 = load i8**** %data1164, align 8, !dbg !142, !tbaa !143
  %arrayidx1165 = getelementptr inbounds i8*** %239, i64 %idxprom1163, !dbg !142
  %240 = load i8*** %arrayidx1165, align 8, !dbg !142, !tbaa !143
  %241 = load i8** %240, align 8, !dbg !142, !tbaa !143
  %phitmp1682 = bitcast i8* %241 to double*, !dbg !142
  br label %cond.end1167, !dbg !142

cond.end1167:                                     ; preds = %cond.end1158, %cond.false1162
  %cond1168 = phi double* [ %phitmp1682, %cond.false1162 ], [ null, %cond.end1158 ]
  %242 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_coarse_dy, align 4, !dbg !142, !tbaa !138
  %cmp1169 = icmp slt i32 %242, 0, !dbg !142
  br i1 %cmp1169, label %cond.end1176, label %cond.false1171, !dbg !142

cond.false1171:                                   ; preds = %cond.end1167
  %idxprom1172 = sext i32 %242 to i64, !dbg !142
  %data1173 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17, !dbg !142
  %243 = load i8**** %data1173, align 8, !dbg !142, !tbaa !143
  %arrayidx1174 = getelementptr inbounds i8*** %243, i64 %idxprom1172, !dbg !142
  %244 = load i8*** %arrayidx1174, align 8, !dbg !142, !tbaa !143
  %245 = load i8** %244, align 8, !dbg !142, !tbaa !143
  %phitmp1683 = bitcast i8* %245 to double*, !dbg !142
  br label %cond.end1176, !dbg !142

cond.end1176:                                     ; preds = %cond.end1167, %cond.false1171
  %cond1177 = phi double* [ %phitmp1683, %cond.false1171 ], [ null, %cond.end1167 ]
  %246 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_coarse_dz, align 4, !dbg !142, !tbaa !138
  %cmp1178 = icmp slt i32 %246, 0, !dbg !142
  br i1 %cmp1178, label %cond.end1185, label %cond.false1180, !dbg !142

cond.false1180:                                   ; preds = %cond.end1176
  %idxprom1181 = sext i32 %246 to i64, !dbg !142
  %data1182 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17, !dbg !142
  %247 = load i8**** %data1182, align 8, !dbg !142, !tbaa !143
  %arrayidx1183 = getelementptr inbounds i8*** %247, i64 %idxprom1181, !dbg !142
  %248 = load i8*** %arrayidx1183, align 8, !dbg !142, !tbaa !143
  %249 = load i8** %248, align 8, !dbg !142, !tbaa !143
  %phitmp1684 = bitcast i8* %249 to double*, !dbg !142
  br label %cond.end1185, !dbg !142

cond.end1185:                                     ; preds = %cond.end1176, %cond.false1180
  %cond1186 = phi double* [ %phitmp1684, %cond.false1180 ], [ null, %cond.end1176 ]
  %250 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_conformal_state, align 4, !dbg !142, !tbaa !138
  %cmp1187 = icmp slt i32 %250, 0, !dbg !142
  br i1 %cmp1187, label %cond.end1194, label %cond.false1189, !dbg !142

cond.false1189:                                   ; preds = %cond.end1185
  %idxprom1190 = sext i32 %250 to i64, !dbg !142
  %data1191 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17, !dbg !142
  %251 = load i8**** %data1191, align 8, !dbg !142, !tbaa !143
  %arrayidx1192 = getelementptr inbounds i8*** %251, i64 %idxprom1190, !dbg !142
  %252 = load i8*** %arrayidx1192, align 8, !dbg !142, !tbaa !143
  %253 = load i8** %252, align 8, !dbg !142, !tbaa !143
  %phitmp1685 = bitcast i8* %253 to i32*, !dbg !142
  br label %cond.end1194, !dbg !142

cond.end1194:                                     ; preds = %cond.end1185, %cond.false1189
  %cond1195 = phi i32* [ %phitmp1685, %cond.false1189 ], [ null, %cond.end1185 ]
  %254 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_courant_min_time, align 4, !dbg !142, !tbaa !138
  %cmp1196 = icmp slt i32 %254, 0, !dbg !142
  br i1 %cmp1196, label %cond.end1203, label %cond.false1198, !dbg !142

cond.false1198:                                   ; preds = %cond.end1194
  %idxprom1199 = sext i32 %254 to i64, !dbg !142
  %data1200 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17, !dbg !142
  %255 = load i8**** %data1200, align 8, !dbg !142, !tbaa !143
  %arrayidx1201 = getelementptr inbounds i8*** %255, i64 %idxprom1199, !dbg !142
  %256 = load i8*** %arrayidx1201, align 8, !dbg !142, !tbaa !143
  %257 = load i8** %256, align 8, !dbg !142, !tbaa !143
  %phitmp1686 = bitcast i8* %257 to double*, !dbg !142
  br label %cond.end1203, !dbg !142

cond.end1203:                                     ; preds = %cond.end1194, %cond.false1198
  %cond1204 = phi double* [ %phitmp1686, %cond.false1198 ], [ null, %cond.end1194 ]
  %258 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_courant_wave_speed, align 4, !dbg !142, !tbaa !138
  %cmp1205 = icmp slt i32 %258, 0, !dbg !142
  br i1 %cmp1205, label %cond.end1212, label %cond.false1207, !dbg !142

cond.false1207:                                   ; preds = %cond.end1203
  %idxprom1208 = sext i32 %258 to i64, !dbg !142
  %data1209 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17, !dbg !142
  %259 = load i8**** %data1209, align 8, !dbg !142, !tbaa !143
  %arrayidx1210 = getelementptr inbounds i8*** %259, i64 %idxprom1208, !dbg !142
  %260 = load i8*** %arrayidx1210, align 8, !dbg !142, !tbaa !143
  %261 = load i8** %260, align 8, !dbg !142, !tbaa !143
  %phitmp1687 = bitcast i8* %261 to double*, !dbg !142
  br label %cond.end1212, !dbg !142

cond.end1212:                                     ; preds = %cond.end1203, %cond.false1207
  %cond1213 = phi double* [ %phitmp1687, %cond.false1207 ], [ null, %cond.end1203 ]
  %262 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_emask, align 4, !dbg !142, !tbaa !138
  %cmp1214 = icmp slt i32 %262, 0, !dbg !142
  br i1 %cmp1214, label %cond.end1221, label %cond.false1216, !dbg !142

cond.false1216:                                   ; preds = %cond.end1212
  %idxprom1217 = sext i32 %262 to i64, !dbg !142
  %data1218 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17, !dbg !142
  %263 = load i8**** %data1218, align 8, !dbg !142, !tbaa !143
  %arrayidx1219 = getelementptr inbounds i8*** %263, i64 %idxprom1217, !dbg !142
  %264 = load i8*** %arrayidx1219, align 8, !dbg !142, !tbaa !143
  %265 = load i8** %264, align 8, !dbg !142, !tbaa !143
  %phitmp1688 = bitcast i8* %265 to double*, !dbg !142
  br label %cond.end1221, !dbg !142

cond.end1221:                                     ; preds = %cond.end1212, %cond.false1216
  %cond1222 = phi double* [ %phitmp1688, %cond.false1216 ], [ null, %cond.end1212 ]
  %266 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_gxx, align 4, !dbg !142, !tbaa !138
  %cmp1223 = icmp slt i32 %266, 0, !dbg !142
  br i1 %cmp1223, label %cond.end1230, label %cond.false1225, !dbg !142

cond.false1225:                                   ; preds = %cond.end1221
  %idxprom1226 = sext i32 %266 to i64, !dbg !142
  %data1227 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17, !dbg !142
  %267 = load i8**** %data1227, align 8, !dbg !142, !tbaa !143
  %arrayidx1228 = getelementptr inbounds i8*** %267, i64 %idxprom1226, !dbg !142
  %268 = load i8*** %arrayidx1228, align 8, !dbg !142, !tbaa !143
  %269 = load i8** %268, align 8, !dbg !142, !tbaa !143
  %phitmp1689 = bitcast i8* %269 to double*, !dbg !142
  br label %cond.end1230, !dbg !142

cond.end1230:                                     ; preds = %cond.end1221, %cond.false1225
  %cond1231 = phi double* [ %phitmp1689, %cond.false1225 ], [ null, %cond.end1221 ]
  %270 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_gxy, align 4, !dbg !142, !tbaa !138
  %cmp1232 = icmp slt i32 %270, 0, !dbg !142
  br i1 %cmp1232, label %cond.end1239, label %cond.false1234, !dbg !142

cond.false1234:                                   ; preds = %cond.end1230
  %idxprom1235 = sext i32 %270 to i64, !dbg !142
  %data1236 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17, !dbg !142
  %271 = load i8**** %data1236, align 8, !dbg !142, !tbaa !143
  %arrayidx1237 = getelementptr inbounds i8*** %271, i64 %idxprom1235, !dbg !142
  %272 = load i8*** %arrayidx1237, align 8, !dbg !142, !tbaa !143
  %273 = load i8** %272, align 8, !dbg !142, !tbaa !143
  %phitmp1690 = bitcast i8* %273 to double*, !dbg !142
  br label %cond.end1239, !dbg !142

cond.end1239:                                     ; preds = %cond.end1230, %cond.false1234
  %cond1240 = phi double* [ %phitmp1690, %cond.false1234 ], [ null, %cond.end1230 ]
  %274 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_gxz, align 4, !dbg !142, !tbaa !138
  %cmp1241 = icmp slt i32 %274, 0, !dbg !142
  br i1 %cmp1241, label %cond.end1248, label %cond.false1243, !dbg !142

cond.false1243:                                   ; preds = %cond.end1239
  %idxprom1244 = sext i32 %274 to i64, !dbg !142
  %data1245 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17, !dbg !142
  %275 = load i8**** %data1245, align 8, !dbg !142, !tbaa !143
  %arrayidx1246 = getelementptr inbounds i8*** %275, i64 %idxprom1244, !dbg !142
  %276 = load i8*** %arrayidx1246, align 8, !dbg !142, !tbaa !143
  %277 = load i8** %276, align 8, !dbg !142, !tbaa !143
  %phitmp1691 = bitcast i8* %277 to double*, !dbg !142
  br label %cond.end1248, !dbg !142

cond.end1248:                                     ; preds = %cond.end1239, %cond.false1243
  %cond1249 = phi double* [ %phitmp1691, %cond.false1243 ], [ null, %cond.end1239 ]
  %278 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_gyy, align 4, !dbg !142, !tbaa !138
  %cmp1250 = icmp slt i32 %278, 0, !dbg !142
  br i1 %cmp1250, label %cond.end1257, label %cond.false1252, !dbg !142

cond.false1252:                                   ; preds = %cond.end1248
  %idxprom1253 = sext i32 %278 to i64, !dbg !142
  %data1254 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17, !dbg !142
  %279 = load i8**** %data1254, align 8, !dbg !142, !tbaa !143
  %arrayidx1255 = getelementptr inbounds i8*** %279, i64 %idxprom1253, !dbg !142
  %280 = load i8*** %arrayidx1255, align 8, !dbg !142, !tbaa !143
  %281 = load i8** %280, align 8, !dbg !142, !tbaa !143
  %phitmp1692 = bitcast i8* %281 to double*, !dbg !142
  br label %cond.end1257, !dbg !142

cond.end1257:                                     ; preds = %cond.end1248, %cond.false1252
  %cond1258 = phi double* [ %phitmp1692, %cond.false1252 ], [ null, %cond.end1248 ]
  %282 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_gyz, align 4, !dbg !142, !tbaa !138
  %cmp1259 = icmp slt i32 %282, 0, !dbg !142
  br i1 %cmp1259, label %cond.end1266, label %cond.false1261, !dbg !142

cond.false1261:                                   ; preds = %cond.end1257
  %idxprom1262 = sext i32 %282 to i64, !dbg !142
  %data1263 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17, !dbg !142
  %283 = load i8**** %data1263, align 8, !dbg !142, !tbaa !143
  %arrayidx1264 = getelementptr inbounds i8*** %283, i64 %idxprom1262, !dbg !142
  %284 = load i8*** %arrayidx1264, align 8, !dbg !142, !tbaa !143
  %285 = load i8** %284, align 8, !dbg !142, !tbaa !143
  %phitmp1693 = bitcast i8* %285 to double*, !dbg !142
  br label %cond.end1266, !dbg !142

cond.end1266:                                     ; preds = %cond.end1257, %cond.false1261
  %cond1267 = phi double* [ %phitmp1693, %cond.false1261 ], [ null, %cond.end1257 ]
  %286 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_gzz, align 4, !dbg !142, !tbaa !138
  %cmp1268 = icmp slt i32 %286, 0, !dbg !142
  br i1 %cmp1268, label %cond.end1275, label %cond.false1270, !dbg !142

cond.false1270:                                   ; preds = %cond.end1266
  %idxprom1271 = sext i32 %286 to i64, !dbg !142
  %data1272 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17, !dbg !142
  %287 = load i8**** %data1272, align 8, !dbg !142, !tbaa !143
  %arrayidx1273 = getelementptr inbounds i8*** %287, i64 %idxprom1271, !dbg !142
  %288 = load i8*** %arrayidx1273, align 8, !dbg !142, !tbaa !143
  %289 = load i8** %288, align 8, !dbg !142, !tbaa !143
  %phitmp1694 = bitcast i8* %289 to double*, !dbg !142
  br label %cond.end1275, !dbg !142

cond.end1275:                                     ; preds = %cond.end1266, %cond.false1270
  %cond1276 = phi double* [ %phitmp1694, %cond.false1270 ], [ null, %cond.end1266 ]
  %290 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_kxx, align 4, !dbg !142, !tbaa !138
  %cmp1277 = icmp slt i32 %290, 0, !dbg !142
  br i1 %cmp1277, label %cond.end1284, label %cond.false1279, !dbg !142

cond.false1279:                                   ; preds = %cond.end1275
  %idxprom1280 = sext i32 %290 to i64, !dbg !142
  %data1281 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17, !dbg !142
  %291 = load i8**** %data1281, align 8, !dbg !142, !tbaa !143
  %arrayidx1282 = getelementptr inbounds i8*** %291, i64 %idxprom1280, !dbg !142
  %292 = load i8*** %arrayidx1282, align 8, !dbg !142, !tbaa !143
  %293 = load i8** %292, align 8, !dbg !142, !tbaa !143
  %phitmp1695 = bitcast i8* %293 to double*, !dbg !142
  br label %cond.end1284, !dbg !142

cond.end1284:                                     ; preds = %cond.end1275, %cond.false1279
  %cond1285 = phi double* [ %phitmp1695, %cond.false1279 ], [ null, %cond.end1275 ]
  %294 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_kxy, align 4, !dbg !142, !tbaa !138
  %cmp1286 = icmp slt i32 %294, 0, !dbg !142
  br i1 %cmp1286, label %cond.end1293, label %cond.false1288, !dbg !142

cond.false1288:                                   ; preds = %cond.end1284
  %idxprom1289 = sext i32 %294 to i64, !dbg !142
  %data1290 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17, !dbg !142
  %295 = load i8**** %data1290, align 8, !dbg !142, !tbaa !143
  %arrayidx1291 = getelementptr inbounds i8*** %295, i64 %idxprom1289, !dbg !142
  %296 = load i8*** %arrayidx1291, align 8, !dbg !142, !tbaa !143
  %297 = load i8** %296, align 8, !dbg !142, !tbaa !143
  %phitmp1696 = bitcast i8* %297 to double*, !dbg !142
  br label %cond.end1293, !dbg !142

cond.end1293:                                     ; preds = %cond.end1284, %cond.false1288
  %cond1294 = phi double* [ %phitmp1696, %cond.false1288 ], [ null, %cond.end1284 ]
  %298 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_kxz, align 4, !dbg !142, !tbaa !138
  %cmp1295 = icmp slt i32 %298, 0, !dbg !142
  br i1 %cmp1295, label %cond.end1302, label %cond.false1297, !dbg !142

cond.false1297:                                   ; preds = %cond.end1293
  %idxprom1298 = sext i32 %298 to i64, !dbg !142
  %data1299 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17, !dbg !142
  %299 = load i8**** %data1299, align 8, !dbg !142, !tbaa !143
  %arrayidx1300 = getelementptr inbounds i8*** %299, i64 %idxprom1298, !dbg !142
  %300 = load i8*** %arrayidx1300, align 8, !dbg !142, !tbaa !143
  %301 = load i8** %300, align 8, !dbg !142, !tbaa !143
  %phitmp1697 = bitcast i8* %301 to double*, !dbg !142
  br label %cond.end1302, !dbg !142

cond.end1302:                                     ; preds = %cond.end1293, %cond.false1297
  %cond1303 = phi double* [ %phitmp1697, %cond.false1297 ], [ null, %cond.end1293 ]
  %302 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_kyy, align 4, !dbg !142, !tbaa !138
  %cmp1304 = icmp slt i32 %302, 0, !dbg !142
  br i1 %cmp1304, label %cond.end1311, label %cond.false1306, !dbg !142

cond.false1306:                                   ; preds = %cond.end1302
  %idxprom1307 = sext i32 %302 to i64, !dbg !142
  %data1308 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17, !dbg !142
  %303 = load i8**** %data1308, align 8, !dbg !142, !tbaa !143
  %arrayidx1309 = getelementptr inbounds i8*** %303, i64 %idxprom1307, !dbg !142
  %304 = load i8*** %arrayidx1309, align 8, !dbg !142, !tbaa !143
  %305 = load i8** %304, align 8, !dbg !142, !tbaa !143
  %phitmp1698 = bitcast i8* %305 to double*, !dbg !142
  br label %cond.end1311, !dbg !142

cond.end1311:                                     ; preds = %cond.end1302, %cond.false1306
  %cond1312 = phi double* [ %phitmp1698, %cond.false1306 ], [ null, %cond.end1302 ]
  %306 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_kyz, align 4, !dbg !142, !tbaa !138
  %cmp1313 = icmp slt i32 %306, 0, !dbg !142
  br i1 %cmp1313, label %cond.end1320, label %cond.false1315, !dbg !142

cond.false1315:                                   ; preds = %cond.end1311
  %idxprom1316 = sext i32 %306 to i64, !dbg !142
  %data1317 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17, !dbg !142
  %307 = load i8**** %data1317, align 8, !dbg !142, !tbaa !143
  %arrayidx1318 = getelementptr inbounds i8*** %307, i64 %idxprom1316, !dbg !142
  %308 = load i8*** %arrayidx1318, align 8, !dbg !142, !tbaa !143
  %309 = load i8** %308, align 8, !dbg !142, !tbaa !143
  %phitmp1699 = bitcast i8* %309 to double*, !dbg !142
  br label %cond.end1320, !dbg !142

cond.end1320:                                     ; preds = %cond.end1311, %cond.false1315
  %cond1321 = phi double* [ %phitmp1699, %cond.false1315 ], [ null, %cond.end1311 ]
  %310 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_kzz, align 4, !dbg !142, !tbaa !138
  %cmp1322 = icmp slt i32 %310, 0, !dbg !142
  br i1 %cmp1322, label %cond.end1329, label %cond.false1324, !dbg !142

cond.false1324:                                   ; preds = %cond.end1320
  %idxprom1325 = sext i32 %310 to i64, !dbg !142
  %data1326 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17, !dbg !142
  %311 = load i8**** %data1326, align 8, !dbg !142, !tbaa !143
  %arrayidx1327 = getelementptr inbounds i8*** %311, i64 %idxprom1325, !dbg !142
  %312 = load i8*** %arrayidx1327, align 8, !dbg !142, !tbaa !143
  %313 = load i8** %312, align 8, !dbg !142, !tbaa !143
  %phitmp1700 = bitcast i8* %313 to double*, !dbg !142
  br label %cond.end1329, !dbg !142

cond.end1329:                                     ; preds = %cond.end1320, %cond.false1324
  %cond1330 = phi double* [ %phitmp1700, %cond.false1324 ], [ null, %cond.end1320 ]
  %314 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_psi, align 4, !dbg !142, !tbaa !138
  %cmp1331 = icmp slt i32 %314, 0, !dbg !142
  br i1 %cmp1331, label %cond.end1338, label %cond.false1333, !dbg !142

cond.false1333:                                   ; preds = %cond.end1329
  %idxprom1334 = sext i32 %314 to i64, !dbg !142
  %data1335 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17, !dbg !142
  %315 = load i8**** %data1335, align 8, !dbg !142, !tbaa !143
  %arrayidx1336 = getelementptr inbounds i8*** %315, i64 %idxprom1334, !dbg !142
  %316 = load i8*** %arrayidx1336, align 8, !dbg !142, !tbaa !143
  %317 = load i8** %316, align 8, !dbg !142, !tbaa !143
  %phitmp1701 = bitcast i8* %317 to double*, !dbg !142
  br label %cond.end1338, !dbg !142

cond.end1338:                                     ; preds = %cond.end1329, %cond.false1333
  %cond1339 = phi double* [ %phitmp1701, %cond.false1333 ], [ null, %cond.end1329 ]
  %318 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_psix, align 4, !dbg !142, !tbaa !138
  %cmp1340 = icmp slt i32 %318, 0, !dbg !142
  br i1 %cmp1340, label %cond.end1347, label %cond.false1342, !dbg !142

cond.false1342:                                   ; preds = %cond.end1338
  %idxprom1343 = sext i32 %318 to i64, !dbg !142
  %data1344 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17, !dbg !142
  %319 = load i8**** %data1344, align 8, !dbg !142, !tbaa !143
  %arrayidx1345 = getelementptr inbounds i8*** %319, i64 %idxprom1343, !dbg !142
  %320 = load i8*** %arrayidx1345, align 8, !dbg !142, !tbaa !143
  %321 = load i8** %320, align 8, !dbg !142, !tbaa !143
  %phitmp1702 = bitcast i8* %321 to double*, !dbg !142
  br label %cond.end1347, !dbg !142

cond.end1347:                                     ; preds = %cond.end1338, %cond.false1342
  %cond1348 = phi double* [ %phitmp1702, %cond.false1342 ], [ null, %cond.end1338 ]
  %322 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_psixx, align 4, !dbg !142, !tbaa !138
  %cmp1349 = icmp slt i32 %322, 0, !dbg !142
  br i1 %cmp1349, label %cond.end1356, label %cond.false1351, !dbg !142

cond.false1351:                                   ; preds = %cond.end1347
  %idxprom1352 = sext i32 %322 to i64, !dbg !142
  %data1353 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17, !dbg !142
  %323 = load i8**** %data1353, align 8, !dbg !142, !tbaa !143
  %arrayidx1354 = getelementptr inbounds i8*** %323, i64 %idxprom1352, !dbg !142
  %324 = load i8*** %arrayidx1354, align 8, !dbg !142, !tbaa !143
  %325 = load i8** %324, align 8, !dbg !142, !tbaa !143
  %phitmp1703 = bitcast i8* %325 to double*, !dbg !142
  br label %cond.end1356, !dbg !142

cond.end1356:                                     ; preds = %cond.end1347, %cond.false1351
  %cond1357 = phi double* [ %phitmp1703, %cond.false1351 ], [ null, %cond.end1347 ]
  %326 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_psixy, align 4, !dbg !142, !tbaa !138
  %cmp1358 = icmp slt i32 %326, 0, !dbg !142
  br i1 %cmp1358, label %cond.end1365, label %cond.false1360, !dbg !142

cond.false1360:                                   ; preds = %cond.end1356
  %idxprom1361 = sext i32 %326 to i64, !dbg !142
  %data1362 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17, !dbg !142
  %327 = load i8**** %data1362, align 8, !dbg !142, !tbaa !143
  %arrayidx1363 = getelementptr inbounds i8*** %327, i64 %idxprom1361, !dbg !142
  %328 = load i8*** %arrayidx1363, align 8, !dbg !142, !tbaa !143
  %329 = load i8** %328, align 8, !dbg !142, !tbaa !143
  %phitmp1704 = bitcast i8* %329 to double*, !dbg !142
  br label %cond.end1365, !dbg !142

cond.end1365:                                     ; preds = %cond.end1356, %cond.false1360
  %cond1366 = phi double* [ %phitmp1704, %cond.false1360 ], [ null, %cond.end1356 ]
  %330 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_psixz, align 4, !dbg !142, !tbaa !138
  %cmp1367 = icmp slt i32 %330, 0, !dbg !142
  br i1 %cmp1367, label %cond.end1374, label %cond.false1369, !dbg !142

cond.false1369:                                   ; preds = %cond.end1365
  %idxprom1370 = sext i32 %330 to i64, !dbg !142
  %data1371 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17, !dbg !142
  %331 = load i8**** %data1371, align 8, !dbg !142, !tbaa !143
  %arrayidx1372 = getelementptr inbounds i8*** %331, i64 %idxprom1370, !dbg !142
  %332 = load i8*** %arrayidx1372, align 8, !dbg !142, !tbaa !143
  %333 = load i8** %332, align 8, !dbg !142, !tbaa !143
  %phitmp1705 = bitcast i8* %333 to double*, !dbg !142
  br label %cond.end1374, !dbg !142

cond.end1374:                                     ; preds = %cond.end1365, %cond.false1369
  %cond1375 = phi double* [ %phitmp1705, %cond.false1369 ], [ null, %cond.end1365 ]
  %334 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_psiy, align 4, !dbg !142, !tbaa !138
  %cmp1376 = icmp slt i32 %334, 0, !dbg !142
  br i1 %cmp1376, label %cond.end1383, label %cond.false1378, !dbg !142

cond.false1378:                                   ; preds = %cond.end1374
  %idxprom1379 = sext i32 %334 to i64, !dbg !142
  %data1380 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17, !dbg !142
  %335 = load i8**** %data1380, align 8, !dbg !142, !tbaa !143
  %arrayidx1381 = getelementptr inbounds i8*** %335, i64 %idxprom1379, !dbg !142
  %336 = load i8*** %arrayidx1381, align 8, !dbg !142, !tbaa !143
  %337 = load i8** %336, align 8, !dbg !142, !tbaa !143
  %phitmp1706 = bitcast i8* %337 to double*, !dbg !142
  br label %cond.end1383, !dbg !142

cond.end1383:                                     ; preds = %cond.end1374, %cond.false1378
  %cond1384 = phi double* [ %phitmp1706, %cond.false1378 ], [ null, %cond.end1374 ]
  %338 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_psiyy, align 4, !dbg !142, !tbaa !138
  %cmp1385 = icmp slt i32 %338, 0, !dbg !142
  br i1 %cmp1385, label %cond.end1392, label %cond.false1387, !dbg !142

cond.false1387:                                   ; preds = %cond.end1383
  %idxprom1388 = sext i32 %338 to i64, !dbg !142
  %data1389 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17, !dbg !142
  %339 = load i8**** %data1389, align 8, !dbg !142, !tbaa !143
  %arrayidx1390 = getelementptr inbounds i8*** %339, i64 %idxprom1388, !dbg !142
  %340 = load i8*** %arrayidx1390, align 8, !dbg !142, !tbaa !143
  %341 = load i8** %340, align 8, !dbg !142, !tbaa !143
  %phitmp1707 = bitcast i8* %341 to double*, !dbg !142
  br label %cond.end1392, !dbg !142

cond.end1392:                                     ; preds = %cond.end1383, %cond.false1387
  %cond1393 = phi double* [ %phitmp1707, %cond.false1387 ], [ null, %cond.end1383 ]
  %342 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_psiyz, align 4, !dbg !142, !tbaa !138
  %cmp1394 = icmp slt i32 %342, 0, !dbg !142
  br i1 %cmp1394, label %cond.end1401, label %cond.false1396, !dbg !142

cond.false1396:                                   ; preds = %cond.end1392
  %idxprom1397 = sext i32 %342 to i64, !dbg !142
  %data1398 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17, !dbg !142
  %343 = load i8**** %data1398, align 8, !dbg !142, !tbaa !143
  %arrayidx1399 = getelementptr inbounds i8*** %343, i64 %idxprom1397, !dbg !142
  %344 = load i8*** %arrayidx1399, align 8, !dbg !142, !tbaa !143
  %345 = load i8** %344, align 8, !dbg !142, !tbaa !143
  %phitmp1708 = bitcast i8* %345 to double*, !dbg !142
  br label %cond.end1401, !dbg !142

cond.end1401:                                     ; preds = %cond.end1392, %cond.false1396
  %cond1402 = phi double* [ %phitmp1708, %cond.false1396 ], [ null, %cond.end1392 ]
  %346 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_psiz, align 4, !dbg !142, !tbaa !138
  %cmp1403 = icmp slt i32 %346, 0, !dbg !142
  br i1 %cmp1403, label %cond.end1410, label %cond.false1405, !dbg !142

cond.false1405:                                   ; preds = %cond.end1401
  %idxprom1406 = sext i32 %346 to i64, !dbg !142
  %data1407 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17, !dbg !142
  %347 = load i8**** %data1407, align 8, !dbg !142, !tbaa !143
  %arrayidx1408 = getelementptr inbounds i8*** %347, i64 %idxprom1406, !dbg !142
  %348 = load i8*** %arrayidx1408, align 8, !dbg !142, !tbaa !143
  %349 = load i8** %348, align 8, !dbg !142, !tbaa !143
  %phitmp1709 = bitcast i8* %349 to double*, !dbg !142
  br label %cond.end1410, !dbg !142

cond.end1410:                                     ; preds = %cond.end1401, %cond.false1405
  %cond1411 = phi double* [ %phitmp1709, %cond.false1405 ], [ null, %cond.end1401 ]
  %350 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_psizz, align 4, !dbg !142, !tbaa !138
  %cmp1412 = icmp slt i32 %350, 0, !dbg !142
  br i1 %cmp1412, label %cond.end1419, label %cond.false1414, !dbg !142

cond.false1414:                                   ; preds = %cond.end1410
  %idxprom1415 = sext i32 %350 to i64, !dbg !142
  %data1416 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17, !dbg !142
  %351 = load i8**** %data1416, align 8, !dbg !142, !tbaa !143
  %arrayidx1417 = getelementptr inbounds i8*** %351, i64 %idxprom1415, !dbg !142
  %352 = load i8*** %arrayidx1417, align 8, !dbg !142, !tbaa !143
  %353 = load i8** %352, align 8, !dbg !142, !tbaa !143
  %phitmp1710 = bitcast i8* %353 to double*, !dbg !142
  br label %cond.end1419, !dbg !142

cond.end1419:                                     ; preds = %cond.end1410, %cond.false1414
  %cond1420 = phi double* [ %phitmp1710, %cond.false1414 ], [ null, %cond.end1410 ]
  %354 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_r, align 4, !dbg !142, !tbaa !138
  %cmp1421 = icmp slt i32 %354, 0, !dbg !142
  br i1 %cmp1421, label %cond.end1428, label %cond.false1423, !dbg !142

cond.false1423:                                   ; preds = %cond.end1419
  %idxprom1424 = sext i32 %354 to i64, !dbg !142
  %data1425 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17, !dbg !142
  %355 = load i8**** %data1425, align 8, !dbg !142, !tbaa !143
  %arrayidx1426 = getelementptr inbounds i8*** %355, i64 %idxprom1424, !dbg !142
  %356 = load i8*** %arrayidx1426, align 8, !dbg !142, !tbaa !143
  %357 = load i8** %356, align 8, !dbg !142, !tbaa !143
  %phitmp1711 = bitcast i8* %357 to double*, !dbg !142
  br label %cond.end1428, !dbg !142

cond.end1428:                                     ; preds = %cond.end1419, %cond.false1423
  %cond1429 = phi double* [ %phitmp1711, %cond.false1423 ], [ null, %cond.end1419 ]
  %358 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_shift_state, align 4, !dbg !142, !tbaa !138
  %cmp1430 = icmp slt i32 %358, 0, !dbg !142
  br i1 %cmp1430, label %cond.end1437, label %cond.false1432, !dbg !142

cond.false1432:                                   ; preds = %cond.end1428
  %idxprom1433 = sext i32 %358 to i64, !dbg !142
  %data1434 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17, !dbg !142
  %359 = load i8**** %data1434, align 8, !dbg !142, !tbaa !143
  %arrayidx1435 = getelementptr inbounds i8*** %359, i64 %idxprom1433, !dbg !142
  %360 = load i8*** %arrayidx1435, align 8, !dbg !142, !tbaa !143
  %361 = load i8** %360, align 8, !dbg !142, !tbaa !143
  %phitmp1712 = bitcast i8* %361 to i32*, !dbg !142
  br label %cond.end1437, !dbg !142

cond.end1437:                                     ; preds = %cond.end1428, %cond.false1432
  %cond1438 = phi i32* [ %phitmp1712, %cond.false1432 ], [ null, %cond.end1428 ]
  %362 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_x, align 4, !dbg !142, !tbaa !138
  %cmp1439 = icmp slt i32 %362, 0, !dbg !142
  br i1 %cmp1439, label %cond.end1446, label %cond.false1441, !dbg !142

cond.false1441:                                   ; preds = %cond.end1437
  %idxprom1442 = sext i32 %362 to i64, !dbg !142
  %data1443 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17, !dbg !142
  %363 = load i8**** %data1443, align 8, !dbg !142, !tbaa !143
  %arrayidx1444 = getelementptr inbounds i8*** %363, i64 %idxprom1442, !dbg !142
  %364 = load i8*** %arrayidx1444, align 8, !dbg !142, !tbaa !143
  %365 = load i8** %364, align 8, !dbg !142, !tbaa !143
  %phitmp1713 = bitcast i8* %365 to double*, !dbg !142
  br label %cond.end1446, !dbg !142

cond.end1446:                                     ; preds = %cond.end1437, %cond.false1441
  %cond1447 = phi double* [ %phitmp1713, %cond.false1441 ], [ null, %cond.end1437 ]
  %366 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_y, align 4, !dbg !142, !tbaa !138
  %cmp1448 = icmp slt i32 %366, 0, !dbg !142
  br i1 %cmp1448, label %cond.end1455, label %cond.false1450, !dbg !142

cond.false1450:                                   ; preds = %cond.end1446
  %idxprom1451 = sext i32 %366 to i64, !dbg !142
  %data1452 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17, !dbg !142
  %367 = load i8**** %data1452, align 8, !dbg !142, !tbaa !143
  %arrayidx1453 = getelementptr inbounds i8*** %367, i64 %idxprom1451, !dbg !142
  %368 = load i8*** %arrayidx1453, align 8, !dbg !142, !tbaa !143
  %369 = load i8** %368, align 8, !dbg !142, !tbaa !143
  %phitmp1714 = bitcast i8* %369 to double*, !dbg !142
  br label %cond.end1455, !dbg !142

cond.end1455:                                     ; preds = %cond.end1446, %cond.false1450
  %cond1456 = phi double* [ %phitmp1714, %cond.false1450 ], [ null, %cond.end1446 ]
  %370 = load i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_z, align 4, !dbg !142, !tbaa !138
  %cmp1457 = icmp slt i32 %370, 0, !dbg !142
  br i1 %cmp1457, label %cond.end1464, label %cond.false1459, !dbg !142

cond.false1459:                                   ; preds = %cond.end1455
  %idxprom1460 = sext i32 %370 to i64, !dbg !142
  %data1461 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17, !dbg !142
  %371 = load i8**** %data1461, align 8, !dbg !142, !tbaa !143
  %arrayidx1462 = getelementptr inbounds i8*** %371, i64 %idxprom1460, !dbg !142
  %372 = load i8*** %arrayidx1462, align 8, !dbg !142, !tbaa !143
  %373 = load i8** %372, align 8, !dbg !142, !tbaa !143
  %phitmp1715 = bitcast i8* %373 to double*, !dbg !142
  br label %cond.end1464, !dbg !142

cond.end1464:                                     ; preds = %cond.end1455, %cond.false1459
  %cond1465 = phi double* [ %phitmp1715, %cond.false1459 ], [ null, %cond.end1455 ]
  tail call void %79(i32* %cctk_dim, i32* %80, i32* %81, i32* %82, i32* %83, i32* %84, i32* %85, i32* %86, i32* %87, double* %cctk_delta_time, double* %cctk_time, double* %88, double* %89, i32* %90, i32* %cctk_convlevel, i32* %91, i32* %cctk_iteration, %struct.cGH* %GH, i32* %cond31917171720, i32* %cond3311721, i32* %cond343, i32* %cond35517241727, i32* %cond3671728, i32* %cond379, i32* %cond39117311734, i32* %cond4031735, i32* %cond415, double* %cond4211738, double* %cond430, double* %cond4391741, double* %cond448, double* %cond4571744, double* %cond466, double* %cond4751747, double* %cond484, double* %cond4931750, double* %cond502, double* %cond5111753, double* %cond520, double* %cond52917561759, double* %cond5381760, double* %cond547, double* %cond55617631766, double* %cond5651767, double* %cond574, double* %cond58317701773, double* %cond5921774, double* %cond601, double* %cond61017771780, double* %cond6191781, double* %cond628, double* %cond63717841787, double* %cond6461788, double* %cond655, double* %cond66417911794, double* %cond6731795, double* %cond682, double* %cond691, double* %cond700, double* %cond709, double* %cond718, double* %cond727, double* %cond736, double* %cond745, double* %cond754, double* %cond763, double* %cond772, double* %cond781, double* %cond790, i32* %cond80217981801, i32* %cond8141802, i32* %cond826, i32* %cond83818051808, i32* %cond8501809, i32* %cond862, i32* %cond87418121815, i32* %cond8861816, i32* %cond898, i32* %cond91018191822, i32* %cond9221823, i32* %cond934, i32* %cond94618261829, i32* %cond9581830, i32* %cond970, i32* %cond98218331836, i32* %cond9941837, i32* %cond1006, i32* %cond101818401843, i32* %cond10301844, i32* %cond1042, i32* %cond105418471850, i32* %cond10661851, i32* %cond1078, i32* %cond109018541857, i32* %cond11021858, i32* %cond1114, i32* %cond1123, double* %cond1132, double* %cond1141, double* %cond1150, double* %cond1159, double* %cond1168, double* %cond1177, double* %cond1186, i32* %cond1195, double* %cond1204, double* %cond1213, double* %cond1222, double* %cond1231, double* %cond1240, double* %cond1249, double* %cond1258, double* %cond1267, double* %cond1276, double* %cond1285, double* %cond1294, double* %cond1303, double* %cond1312, double* %cond1321, double* %cond1330, double* %cond1339, double* %cond1348, double* %cond1357, double* %cond1366, double* %cond1375, double* %cond1384, double* %cond1393, double* %cond1402, double* %cond1411, double* %cond1420, double* %cond1429, i32* %cond1438, double* %cond1447, double* %cond1456, double* %cond1465) #3, !dbg !142
  ret i32 0, !dbg !144
}

; Function Attrs: optsize
declare i32 @CCTK_VarIndex(i8*) #1

; Function Attrs: optsize
declare i32 @CCTK_GroupIndex(i8*) #1

; Function Attrs: optsize
declare i32 @CCTK_QueryGroupStorage(%struct.cGH*, i8*) #1

; Function Attrs: optsize
declare i32* @CCTK_ArrayGroupSize(%struct.cGH*, i32, i8*) #1

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #2

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }
attributes #3 = { nounwind optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !56, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CactusBindings/BenchADM_FortranWrapper.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/436.cactusADM/src/CactusBindings/BenchADM_FortranWrapper.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CCTKi_BindingsFortranWrapperBenchADM", metadata !"CCTKi_BindingsFortranWrapperBenchADM", metadata !"", i32 13, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.cGH*, i8*)* @CCTKi_BindingsFortranWrapperBenchADM, null, null, metadata !47, i32 14} ; [ DW_TAG_subprogram ] [line 13] [def] [scope 14] [CCTKi_BindingsFortranWrapperBenchADM]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CactusBindings/BenchADM_FortranWrapper.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8, metadata !9, metadata !37}
!8 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!9 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from cGH]
!10 = metadata !{i32 786454, metadata !1, null, metadata !"cGH", i32 75, i64 0, i64 0, i64 0, i32 0, metadata !11} ; [ DW_TAG_typedef ] [cGH] [line 75, size 0, align 0, offset 0] [from ]
!11 = metadata !{i32 786451, metadata !12, null, metadata !"", i32 24, i64 1216, i64 64, i32 0, i32 0, null, metadata !13, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 24, size 1216, align 64, offset 0] [from ]
!12 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/436.cactusADM/src/CactusBindings/../include/cGH.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!13 = metadata !{metadata !14, metadata !15, metadata !16, metadata !18, metadata !19, metadata !20, metadata !21, metadata !22, metadata !23, metadata !24, metadata !26, metadata !28, metadata !29, metadata !30, metadata !31, metadata !32, metadata !33, metadata !34, metadata !38, metadata !39}
!14 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"cctk_dim", i32 26, i64 32, i64 32, i64 0, i32 0, metadata !8} ; [ DW_TAG_member ] [cctk_dim] [line 26, size 32, align 32, offset 0] [from int]
!15 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"cctk_iteration", i32 27, i64 32, i64 32, i64 32, i32 0, metadata !8} ; [ DW_TAG_member ] [cctk_iteration] [line 27, size 32, align 32, offset 32] [from int]
!16 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"cctk_gsh", i32 30, i64 64, i64 64, i64 64, i32 0, metadata !17} ; [ DW_TAG_member ] [cctk_gsh] [line 30, size 64, align 64, offset 64] [from ]
!17 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !8} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!18 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"cctk_lsh", i32 31, i64 64, i64 64, i64 128, i32 0, metadata !17} ; [ DW_TAG_member ] [cctk_lsh] [line 31, size 64, align 64, offset 128] [from ]
!19 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"cctk_lbnd", i32 32, i64 64, i64 64, i64 192, i32 0, metadata !17} ; [ DW_TAG_member ] [cctk_lbnd] [line 32, size 64, align 64, offset 192] [from ]
!20 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"cctk_ubnd", i32 33, i64 64, i64 64, i64 256, i32 0, metadata !17} ; [ DW_TAG_member ] [cctk_ubnd] [line 33, size 64, align 64, offset 256] [from ]
!21 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"cctk_lssh", i32 36, i64 64, i64 64, i64 320, i32 0, metadata !17} ; [ DW_TAG_member ] [cctk_lssh] [line 36, size 64, align 64, offset 320] [from ]
!22 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"cctk_to", i32 39, i64 64, i64 64, i64 384, i32 0, metadata !17} ; [ DW_TAG_member ] [cctk_to] [line 39, size 64, align 64, offset 384] [from ]
!23 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"cctk_from", i32 40, i64 64, i64 64, i64 448, i32 0, metadata !17} ; [ DW_TAG_member ] [cctk_from] [line 40, size 64, align 64, offset 448] [from ]
!24 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"cctk_delta_time", i32 43, i64 64, i64 64, i64 512, i32 0, metadata !25} ; [ DW_TAG_member ] [cctk_delta_time] [line 43, size 64, align 64, offset 512] [from double]
!25 = metadata !{i32 786468, null, null, metadata !"double", i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [double] [line 0, size 64, align 64, offset 0, enc DW_ATE_float]
!26 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"cctk_delta_space", i32 44, i64 64, i64 64, i64 576, i32 0, metadata !27} ; [ DW_TAG_member ] [cctk_delta_space] [line 44, size 64, align 64, offset 576] [from ]
!27 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !25} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from double]
!28 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"cctk_origin_space", i32 47, i64 64, i64 64, i64 640, i32 0, metadata !27} ; [ DW_TAG_member ] [cctk_origin_space] [line 47, size 64, align 64, offset 640] [from ]
!29 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"cctk_bbox", i32 51, i64 64, i64 64, i64 704, i32 0, metadata !17} ; [ DW_TAG_member ] [cctk_bbox] [line 51, size 64, align 64, offset 704] [from ]
!30 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"cctk_levfac", i32 54, i64 64, i64 64, i64 768, i32 0, metadata !17} ; [ DW_TAG_member ] [cctk_levfac] [line 54, size 64, align 64, offset 768] [from ]
!31 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"cctk_convlevel", i32 57, i64 32, i64 32, i64 832, i32 0, metadata !8} ; [ DW_TAG_member ] [cctk_convlevel] [line 57, size 32, align 32, offset 832] [from int]
!32 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"cctk_nghostzones", i32 60, i64 64, i64 64, i64 896, i32 0, metadata !17} ; [ DW_TAG_member ] [cctk_nghostzones] [line 60, size 64, align 64, offset 896] [from ]
!33 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"cctk_time", i32 63, i64 64, i64 64, i64 960, i32 0, metadata !25} ; [ DW_TAG_member ] [cctk_time] [line 63, size 64, align 64, offset 960] [from double]
!34 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"data", i32 67, i64 64, i64 64, i64 1024, i32 0, metadata !35} ; [ DW_TAG_member ] [data] [line 67, size 64, align 64, offset 1024] [from ]
!35 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !36} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!36 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !37} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!37 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!38 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"extensions", i32 70, i64 64, i64 64, i64 1088, i32 0, metadata !36} ; [ DW_TAG_member ] [extensions] [line 70, size 64, align 64, offset 1088] [from ]
!39 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"GroupData", i32 73, i64 64, i64 64, i64 1152, i32 0, metadata !40} ; [ DW_TAG_member ] [GroupData] [line 73, size 64, align 64, offset 1152] [from ]
!40 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !41} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from cGHGroupData]
!41 = metadata !{i32 786454, metadata !12, null, metadata !"cGHGroupData", i32 22, i64 0, i64 0, i64 0, i32 0, metadata !42} ; [ DW_TAG_typedef ] [cGHGroupData] [line 22, size 0, align 0, offset 0] [from ]
!42 = metadata !{i32 786451, metadata !12, null, metadata !"", i32 18, i64 16, i64 8, i32 0, i32 0, null, metadata !43, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 18, size 16, align 8, offset 0] [from ]
!43 = metadata !{metadata !44, metadata !46}
!44 = metadata !{i32 786445, metadata !12, metadata !42, metadata !"storage", i32 20, i64 8, i64 8, i64 0, i32 0, metadata !45} ; [ DW_TAG_member ] [storage] [line 20, size 8, align 8, offset 0] [from char]
!45 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!46 = metadata !{i32 786445, metadata !12, metadata !42, metadata !"comm", i32 21, i64 8, i64 8, i64 8, i32 0, metadata !45} ; [ DW_TAG_member ] [comm] [line 21, size 8, align 8, offset 8] [from char]
!47 = metadata !{metadata !48, metadata !49, metadata !50}
!48 = metadata !{i32 786689, metadata !4, metadata !"GH", metadata !5, i32 16777229, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [GH] [line 13]
!49 = metadata !{i32 786689, metadata !4, metadata !"fpointer", metadata !5, i32 33554445, metadata !37, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fpointer] [line 13]
!50 = metadata !{i32 786688, metadata !4, metadata !"function", metadata !5, i32 15, metadata !51, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [function] [line 15]
!51 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !52} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!52 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !53, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!53 = metadata !{null, metadata !17, metadata !17, metadata !17, metadata !17, metadata !17, metadata !17, metadata !17, metadata !17, metadata !17, metadata !27, metadata !27, metadata !27, metadata !27, metadata !17, metadata !17, metadata !17, metadata !17, metadata !9, metadata !54, metadata !54, metadata !54, metadata !54, metadata !54, metadata !54, metadata !54, metadata !54, metadata !54, metadata !27, metadata !27, metadata !27, metadata !27, metadata !27, metadata !27, metadata !27, metadata !27, metadata !27, metadata !27, metadata !27, metadata !27, metadata !27, metadata !27, metadata !27, metadata !27, metadata !27, metadata !27, metadata !27, metadata !27, metadata !27, metadata !27, metadata !27, metadata !27, metadata !27, metadata !27, metadata !27, metadata !27, metadata !27, metadata !27, metadata !27, metadata !27, metadata !27, metadata !27, metadata !27, metadata !27, metadata !27, metadata !27, metadata !27, metadata !27, metadata !27, metadata !27, metadata !54, metadata !54, metadata !54, metadata !54, metadata !54, metadata !54, metadata !54, metadata !54, metadata !54, metadata !54, metadata !54, metadata !54, metadata !54, metadata !54, metadata !54, metadata !54, metadata !54, metadata !54, metadata !54, metadata !54, metadata !54, metadata !54, metadata !54, metadata !54, metadata !54, metadata !54, metadata !54, metadata !17, metadata !27, metadata !27, metadata !27, metadata !27, metadata !27, metadata !27, metadata !27, metadata !17, metadata !27, metadata !27, metadata !27, metadata !27, metadata !27, metadata !27, metadata !27, metadata !27, metadata !27, metadata !27, metadata !27, metadata !27, metadata !27, metadata !27, metadata !27, metadata !27, metadata !27, metadata !27, metadata !27, metadata !27, metadata !27, metadata !27, metadata !27, metadata !27, metadata !27, metadata !27, metadata !17, metadata !27, metadata !27, metadata !27}
!54 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !55} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!55 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !8} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from int]
!56 = metadata !{metadata !57, metadata !58, metadata !59, metadata !60, metadata !61, metadata !62, metadata !63, metadata !64, metadata !65, metadata !66, metadata !67, metadata !68, metadata !69, metadata !70, metadata !71, metadata !72, metadata !73, metadata !74, metadata !75, metadata !76, metadata !77, metadata !78, metadata !79, metadata !80, metadata !81, metadata !82, metadata !83, metadata !84, metadata !85, metadata !86, metadata !87, metadata !88, metadata !89, metadata !90, metadata !91, metadata !92, metadata !93, metadata !94, metadata !95, metadata !96, metadata !97, metadata !98, metadata !99, metadata !100, metadata !101, metadata !102, metadata !103, metadata !104, metadata !105, metadata !106, metadata !107, metadata !108, metadata !109, metadata !110, metadata !111, metadata !112, metadata !113, metadata !114, metadata !115, metadata !116, metadata !117, metadata !118, metadata !119, metadata !120, metadata !121, metadata !122, metadata !123, metadata !124, metadata !125, metadata !126, metadata !127, metadata !128, metadata !129, metadata !130, metadata !131, metadata !132, metadata !133, metadata !134, metadata !135}
!57 = metadata !{i32 786484, i32 0, metadata !4, metadata !"CCTKARGNUM_ADM_gxx", metadata !"CCTKARGNUM_ADM_gxx", metadata !"", metadata !5, i32 17, metadata !8, i32 1, i32 1, i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_ADM_gxx, null} ; [ DW_TAG_variable ] [CCTKARGNUM_ADM_gxx] [line 17] [local] [def]
!58 = metadata !{i32 786484, i32 0, metadata !4, metadata !"CCTKGROUPNUM_ADM_metric_prev", metadata !"CCTKGROUPNUM_ADM_metric_prev", metadata !"", metadata !5, i32 17, metadata !8, i32 1, i32 1, i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKGROUPNUM_ADM_metric_prev, null} ; [ DW_TAG_variable ] [CCTKGROUPNUM_ADM_metric_prev] [line 17] [local] [def]
!59 = metadata !{i32 786484, i32 0, metadata !4, metadata !"CCTKARGNUM_ADM_gxy", metadata !"CCTKARGNUM_ADM_gxy", metadata !"", metadata !5, i32 17, metadata !8, i32 1, i32 1, i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_ADM_gxy, null} ; [ DW_TAG_variable ] [CCTKARGNUM_ADM_gxy] [line 17] [local] [def]
!60 = metadata !{i32 786484, i32 0, metadata !4, metadata !"CCTKARGNUM_ADM_gxz", metadata !"CCTKARGNUM_ADM_gxz", metadata !"", metadata !5, i32 17, metadata !8, i32 1, i32 1, i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_ADM_gxz, null} ; [ DW_TAG_variable ] [CCTKARGNUM_ADM_gxz] [line 17] [local] [def]
!61 = metadata !{i32 786484, i32 0, metadata !4, metadata !"CCTKARGNUM_ADM_gyy", metadata !"CCTKARGNUM_ADM_gyy", metadata !"", metadata !5, i32 17, metadata !8, i32 1, i32 1, i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_ADM_gyy, null} ; [ DW_TAG_variable ] [CCTKARGNUM_ADM_gyy] [line 17] [local] [def]
!62 = metadata !{i32 786484, i32 0, metadata !4, metadata !"CCTKARGNUM_ADM_gyz", metadata !"CCTKARGNUM_ADM_gyz", metadata !"", metadata !5, i32 17, metadata !8, i32 1, i32 1, i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_ADM_gyz, null} ; [ DW_TAG_variable ] [CCTKARGNUM_ADM_gyz] [line 17] [local] [def]
!63 = metadata !{i32 786484, i32 0, metadata !4, metadata !"CCTKARGNUM_ADM_gzz", metadata !"CCTKARGNUM_ADM_gzz", metadata !"", metadata !5, i32 17, metadata !8, i32 1, i32 1, i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_ADM_gzz, null} ; [ DW_TAG_variable ] [CCTKARGNUM_ADM_gzz] [line 17] [local] [def]
!64 = metadata !{i32 786484, i32 0, metadata !4, metadata !"CCTKARGNUM_ADM_kxx_stag", metadata !"CCTKARGNUM_ADM_kxx_stag", metadata !"", metadata !5, i32 17, metadata !8, i32 1, i32 1, i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_ADM_kxx_stag, null} ; [ DW_TAG_variable ] [CCTKARGNUM_ADM_kxx_stag] [line 17] [local] [def]
!65 = metadata !{i32 786484, i32 0, metadata !4, metadata !"CCTKGROUPNUM_ADM_curv_stag", metadata !"CCTKGROUPNUM_ADM_curv_stag", metadata !"", metadata !5, i32 17, metadata !8, i32 1, i32 1, i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKGROUPNUM_ADM_curv_stag, null} ; [ DW_TAG_variable ] [CCTKGROUPNUM_ADM_curv_stag] [line 17] [local] [def]
!66 = metadata !{i32 786484, i32 0, metadata !4, metadata !"CCTKARGNUM_ADM_kxy_stag", metadata !"CCTKARGNUM_ADM_kxy_stag", metadata !"", metadata !5, i32 17, metadata !8, i32 1, i32 1, i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_ADM_kxy_stag, null} ; [ DW_TAG_variable ] [CCTKARGNUM_ADM_kxy_stag] [line 17] [local] [def]
!67 = metadata !{i32 786484, i32 0, metadata !4, metadata !"CCTKARGNUM_ADM_kxz_stag", metadata !"CCTKARGNUM_ADM_kxz_stag", metadata !"", metadata !5, i32 17, metadata !8, i32 1, i32 1, i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_ADM_kxz_stag, null} ; [ DW_TAG_variable ] [CCTKARGNUM_ADM_kxz_stag] [line 17] [local] [def]
!68 = metadata !{i32 786484, i32 0, metadata !4, metadata !"CCTKARGNUM_ADM_kyy_stag", metadata !"CCTKARGNUM_ADM_kyy_stag", metadata !"", metadata !5, i32 17, metadata !8, i32 1, i32 1, i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_ADM_kyy_stag, null} ; [ DW_TAG_variable ] [CCTKARGNUM_ADM_kyy_stag] [line 17] [local] [def]
!69 = metadata !{i32 786484, i32 0, metadata !4, metadata !"CCTKARGNUM_ADM_kyz_stag", metadata !"CCTKARGNUM_ADM_kyz_stag", metadata !"", metadata !5, i32 17, metadata !8, i32 1, i32 1, i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_ADM_kyz_stag, null} ; [ DW_TAG_variable ] [CCTKARGNUM_ADM_kyz_stag] [line 17] [local] [def]
!70 = metadata !{i32 786484, i32 0, metadata !4, metadata !"CCTKARGNUM_ADM_kzz_stag", metadata !"CCTKARGNUM_ADM_kzz_stag", metadata !"", metadata !5, i32 17, metadata !8, i32 1, i32 1, i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_ADM_kzz_stag, null} ; [ DW_TAG_variable ] [CCTKARGNUM_ADM_kzz_stag] [line 17] [local] [def]
!71 = metadata !{i32 786484, i32 0, metadata !4, metadata !"CCTKARGNUM_adms_gxx", metadata !"CCTKARGNUM_adms_gxx", metadata !"", metadata !5, i32 17, metadata !8, i32 1, i32 1, i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_adms_gxx, null} ; [ DW_TAG_variable ] [CCTKARGNUM_adms_gxx] [line 17] [local] [def]
!72 = metadata !{i32 786484, i32 0, metadata !4, metadata !"CCTKGROUPNUM_ADM_sources", metadata !"CCTKGROUPNUM_ADM_sources", metadata !"", metadata !5, i32 17, metadata !8, i32 1, i32 1, i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKGROUPNUM_ADM_sources, null} ; [ DW_TAG_variable ] [CCTKGROUPNUM_ADM_sources] [line 17] [local] [def]
!73 = metadata !{i32 786484, i32 0, metadata !4, metadata !"CCTKARGNUM_adms_gxy", metadata !"CCTKARGNUM_adms_gxy", metadata !"", metadata !5, i32 17, metadata !8, i32 1, i32 1, i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_adms_gxy, null} ; [ DW_TAG_variable ] [CCTKARGNUM_adms_gxy] [line 17] [local] [def]
!74 = metadata !{i32 786484, i32 0, metadata !4, metadata !"CCTKARGNUM_adms_gxz", metadata !"CCTKARGNUM_adms_gxz", metadata !"", metadata !5, i32 17, metadata !8, i32 1, i32 1, i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_adms_gxz, null} ; [ DW_TAG_variable ] [CCTKARGNUM_adms_gxz] [line 17] [local] [def]
!75 = metadata !{i32 786484, i32 0, metadata !4, metadata !"CCTKARGNUM_adms_gyy", metadata !"CCTKARGNUM_adms_gyy", metadata !"", metadata !5, i32 17, metadata !8, i32 1, i32 1, i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_adms_gyy, null} ; [ DW_TAG_variable ] [CCTKARGNUM_adms_gyy] [line 17] [local] [def]
!76 = metadata !{i32 786484, i32 0, metadata !4, metadata !"CCTKARGNUM_adms_gyz", metadata !"CCTKARGNUM_adms_gyz", metadata !"", metadata !5, i32 17, metadata !8, i32 1, i32 1, i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_adms_gyz, null} ; [ DW_TAG_variable ] [CCTKARGNUM_adms_gyz] [line 17] [local] [def]
!77 = metadata !{i32 786484, i32 0, metadata !4, metadata !"CCTKARGNUM_adms_gzz", metadata !"CCTKARGNUM_adms_gzz", metadata !"", metadata !5, i32 17, metadata !8, i32 1, i32 1, i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_adms_gzz, null} ; [ DW_TAG_variable ] [CCTKARGNUM_adms_gzz] [line 17] [local] [def]
!78 = metadata !{i32 786484, i32 0, metadata !4, metadata !"CCTKARGNUM_adms_kxx", metadata !"CCTKARGNUM_adms_kxx", metadata !"", metadata !5, i32 17, metadata !8, i32 1, i32 1, i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_adms_kxx, null} ; [ DW_TAG_variable ] [CCTKARGNUM_adms_kxx] [line 17] [local] [def]
!79 = metadata !{i32 786484, i32 0, metadata !4, metadata !"CCTKARGNUM_adms_kxy", metadata !"CCTKARGNUM_adms_kxy", metadata !"", metadata !5, i32 17, metadata !8, i32 1, i32 1, i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_adms_kxy, null} ; [ DW_TAG_variable ] [CCTKARGNUM_adms_kxy] [line 17] [local] [def]
!80 = metadata !{i32 786484, i32 0, metadata !4, metadata !"CCTKARGNUM_adms_kxz", metadata !"CCTKARGNUM_adms_kxz", metadata !"", metadata !5, i32 17, metadata !8, i32 1, i32 1, i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_adms_kxz, null} ; [ DW_TAG_variable ] [CCTKARGNUM_adms_kxz] [line 17] [local] [def]
!81 = metadata !{i32 786484, i32 0, metadata !4, metadata !"CCTKARGNUM_adms_kyy", metadata !"CCTKARGNUM_adms_kyy", metadata !"", metadata !5, i32 17, metadata !8, i32 1, i32 1, i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_adms_kyy, null} ; [ DW_TAG_variable ] [CCTKARGNUM_adms_kyy] [line 17] [local] [def]
!82 = metadata !{i32 786484, i32 0, metadata !4, metadata !"CCTKARGNUM_adms_kyz", metadata !"CCTKARGNUM_adms_kyz", metadata !"", metadata !5, i32 17, metadata !8, i32 1, i32 1, i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_adms_kyz, null} ; [ DW_TAG_variable ] [CCTKARGNUM_adms_kyz] [line 17] [local] [def]
!83 = metadata !{i32 786484, i32 0, metadata !4, metadata !"CCTKARGNUM_adms_kzz", metadata !"CCTKARGNUM_adms_kzz", metadata !"", metadata !5, i32 17, metadata !8, i32 1, i32 1, i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_adms_kzz, null} ; [ DW_TAG_variable ] [CCTKARGNUM_adms_kzz] [line 17] [local] [def]
!84 = metadata !{i32 786484, i32 0, metadata !4, metadata !"CCTKARGNUM_active_slicing_handle", metadata !"CCTKARGNUM_active_slicing_handle", metadata !"", metadata !5, i32 17, metadata !8, i32 1, i32 1, i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_active_slicing_handle, null} ; [ DW_TAG_variable ] [CCTKARGNUM_active_slicing_handle] [line 17] [local] [def]
!85 = metadata !{i32 786484, i32 0, metadata !4, metadata !"CCTKGROUPNUM_slicing_flags", metadata !"CCTKGROUPNUM_slicing_flags", metadata !"", metadata !5, i32 17, metadata !8, i32 1, i32 1, i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKGROUPNUM_slicing_flags, null} ; [ DW_TAG_variable ] [CCTKGROUPNUM_slicing_flags] [line 17] [local] [def]
!86 = metadata !{i32 786484, i32 0, metadata !4, metadata !"CCTKARGNUM_alp", metadata !"CCTKARGNUM_alp", metadata !"", metadata !5, i32 17, metadata !8, i32 1, i32 1, i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_alp, null} ; [ DW_TAG_variable ] [CCTKARGNUM_alp] [line 17] [local] [def]
!87 = metadata !{i32 786484, i32 0, metadata !4, metadata !"CCTKGROUPNUM_lapse", metadata !"CCTKGROUPNUM_lapse", metadata !"", metadata !5, i32 17, metadata !8, i32 1, i32 1, i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKGROUPNUM_lapse, null} ; [ DW_TAG_variable ] [CCTKGROUPNUM_lapse] [line 17] [local] [def]
!88 = metadata !{i32 786484, i32 0, metadata !4, metadata !"CCTKARGNUM_betax", metadata !"CCTKARGNUM_betax", metadata !"", metadata !5, i32 17, metadata !8, i32 1, i32 1, i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_betax, null} ; [ DW_TAG_variable ] [CCTKARGNUM_betax] [line 17] [local] [def]
!89 = metadata !{i32 786484, i32 0, metadata !4, metadata !"CCTKGROUPNUM_shift", metadata !"CCTKGROUPNUM_shift", metadata !"", metadata !5, i32 17, metadata !8, i32 1, i32 1, i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKGROUPNUM_shift, null} ; [ DW_TAG_variable ] [CCTKGROUPNUM_shift] [line 17] [local] [def]
!90 = metadata !{i32 786484, i32 0, metadata !4, metadata !"CCTKARGNUM_betay", metadata !"CCTKARGNUM_betay", metadata !"", metadata !5, i32 17, metadata !8, i32 1, i32 1, i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_betay, null} ; [ DW_TAG_variable ] [CCTKARGNUM_betay] [line 17] [local] [def]
!91 = metadata !{i32 786484, i32 0, metadata !4, metadata !"CCTKARGNUM_betaz", metadata !"CCTKARGNUM_betaz", metadata !"", metadata !5, i32 17, metadata !8, i32 1, i32 1, i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_betaz, null} ; [ DW_TAG_variable ] [CCTKARGNUM_betaz] [line 17] [local] [def]
!92 = metadata !{i32 786484, i32 0, metadata !4, metadata !"CCTKARGNUM_coarse_dx", metadata !"CCTKARGNUM_coarse_dx", metadata !"", metadata !5, i32 17, metadata !8, i32 1, i32 1, i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_coarse_dx, null} ; [ DW_TAG_variable ] [CCTKARGNUM_coarse_dx] [line 17] [local] [def]
!93 = metadata !{i32 786484, i32 0, metadata !4, metadata !"CCTKGROUPNUM_gridspacings", metadata !"CCTKGROUPNUM_gridspacings", metadata !"", metadata !5, i32 17, metadata !8, i32 1, i32 1, i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKGROUPNUM_gridspacings, null} ; [ DW_TAG_variable ] [CCTKGROUPNUM_gridspacings] [line 17] [local] [def]
!94 = metadata !{i32 786484, i32 0, metadata !4, metadata !"CCTKARGNUM_coarse_dy", metadata !"CCTKARGNUM_coarse_dy", metadata !"", metadata !5, i32 17, metadata !8, i32 1, i32 1, i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_coarse_dy, null} ; [ DW_TAG_variable ] [CCTKARGNUM_coarse_dy] [line 17] [local] [def]
!95 = metadata !{i32 786484, i32 0, metadata !4, metadata !"CCTKARGNUM_coarse_dz", metadata !"CCTKARGNUM_coarse_dz", metadata !"", metadata !5, i32 17, metadata !8, i32 1, i32 1, i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_coarse_dz, null} ; [ DW_TAG_variable ] [CCTKARGNUM_coarse_dz] [line 17] [local] [def]
!96 = metadata !{i32 786484, i32 0, metadata !4, metadata !"CCTKARGNUM_conformal_state", metadata !"CCTKARGNUM_conformal_state", metadata !"", metadata !5, i32 17, metadata !8, i32 1, i32 1, i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_conformal_state, null} ; [ DW_TAG_variable ] [CCTKARGNUM_conformal_state] [line 17] [local] [def]
!97 = metadata !{i32 786484, i32 0, metadata !4, metadata !"CCTKGROUPNUM_flags", metadata !"CCTKGROUPNUM_flags", metadata !"", metadata !5, i32 17, metadata !8, i32 1, i32 1, i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKGROUPNUM_flags, null} ; [ DW_TAG_variable ] [CCTKGROUPNUM_flags] [line 17] [local] [def]
!98 = metadata !{i32 786484, i32 0, metadata !4, metadata !"CCTKARGNUM_courant_min_time", metadata !"CCTKARGNUM_courant_min_time", metadata !"", metadata !5, i32 17, metadata !8, i32 1, i32 1, i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_courant_min_time, null} ; [ DW_TAG_variable ] [CCTKARGNUM_courant_min_time] [line 17] [local] [def]
!99 = metadata !{i32 786484, i32 0, metadata !4, metadata !"CCTKGROUPNUM_speedvars", metadata !"CCTKGROUPNUM_speedvars", metadata !"", metadata !5, i32 17, metadata !8, i32 1, i32 1, i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKGROUPNUM_speedvars, null} ; [ DW_TAG_variable ] [CCTKGROUPNUM_speedvars] [line 17] [local] [def]
!100 = metadata !{i32 786484, i32 0, metadata !4, metadata !"CCTKARGNUM_courant_wave_speed", metadata !"CCTKARGNUM_courant_wave_speed", metadata !"", metadata !5, i32 17, metadata !8, i32 1, i32 1, i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_courant_wave_speed, null} ; [ DW_TAG_variable ] [CCTKARGNUM_courant_wave_speed] [line 17] [local] [def]
!101 = metadata !{i32 786484, i32 0, metadata !4, metadata !"CCTKARGNUM_emask", metadata !"CCTKARGNUM_emask", metadata !"", metadata !5, i32 17, metadata !8, i32 1, i32 1, i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_emask, null} ; [ DW_TAG_variable ] [CCTKARGNUM_emask] [line 17] [local] [def]
!102 = metadata !{i32 786484, i32 0, metadata !4, metadata !"CCTKGROUPNUM_mask", metadata !"CCTKGROUPNUM_mask", metadata !"", metadata !5, i32 17, metadata !8, i32 1, i32 1, i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKGROUPNUM_mask, null} ; [ DW_TAG_variable ] [CCTKGROUPNUM_mask] [line 17] [local] [def]
!103 = metadata !{i32 786484, i32 0, metadata !4, metadata !"CCTKARGNUM_gxx", metadata !"CCTKARGNUM_gxx", metadata !"", metadata !5, i32 17, metadata !8, i32 1, i32 1, i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_gxx, null} ; [ DW_TAG_variable ] [CCTKARGNUM_gxx] [line 17] [local] [def]
!104 = metadata !{i32 786484, i32 0, metadata !4, metadata !"CCTKGROUPNUM_metric", metadata !"CCTKGROUPNUM_metric", metadata !"", metadata !5, i32 17, metadata !8, i32 1, i32 1, i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKGROUPNUM_metric, null} ; [ DW_TAG_variable ] [CCTKGROUPNUM_metric] [line 17] [local] [def]
!105 = metadata !{i32 786484, i32 0, metadata !4, metadata !"CCTKARGNUM_gxy", metadata !"CCTKARGNUM_gxy", metadata !"", metadata !5, i32 17, metadata !8, i32 1, i32 1, i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_gxy, null} ; [ DW_TAG_variable ] [CCTKARGNUM_gxy] [line 17] [local] [def]
!106 = metadata !{i32 786484, i32 0, metadata !4, metadata !"CCTKARGNUM_gxz", metadata !"CCTKARGNUM_gxz", metadata !"", metadata !5, i32 17, metadata !8, i32 1, i32 1, i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_gxz, null} ; [ DW_TAG_variable ] [CCTKARGNUM_gxz] [line 17] [local] [def]
!107 = metadata !{i32 786484, i32 0, metadata !4, metadata !"CCTKARGNUM_gyy", metadata !"CCTKARGNUM_gyy", metadata !"", metadata !5, i32 17, metadata !8, i32 1, i32 1, i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_gyy, null} ; [ DW_TAG_variable ] [CCTKARGNUM_gyy] [line 17] [local] [def]
!108 = metadata !{i32 786484, i32 0, metadata !4, metadata !"CCTKARGNUM_gyz", metadata !"CCTKARGNUM_gyz", metadata !"", metadata !5, i32 17, metadata !8, i32 1, i32 1, i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_gyz, null} ; [ DW_TAG_variable ] [CCTKARGNUM_gyz] [line 17] [local] [def]
!109 = metadata !{i32 786484, i32 0, metadata !4, metadata !"CCTKARGNUM_gzz", metadata !"CCTKARGNUM_gzz", metadata !"", metadata !5, i32 17, metadata !8, i32 1, i32 1, i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_gzz, null} ; [ DW_TAG_variable ] [CCTKARGNUM_gzz] [line 17] [local] [def]
!110 = metadata !{i32 786484, i32 0, metadata !4, metadata !"CCTKARGNUM_kxx", metadata !"CCTKARGNUM_kxx", metadata !"", metadata !5, i32 17, metadata !8, i32 1, i32 1, i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_kxx, null} ; [ DW_TAG_variable ] [CCTKARGNUM_kxx] [line 17] [local] [def]
!111 = metadata !{i32 786484, i32 0, metadata !4, metadata !"CCTKGROUPNUM_curv", metadata !"CCTKGROUPNUM_curv", metadata !"", metadata !5, i32 17, metadata !8, i32 1, i32 1, i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKGROUPNUM_curv, null} ; [ DW_TAG_variable ] [CCTKGROUPNUM_curv] [line 17] [local] [def]
!112 = metadata !{i32 786484, i32 0, metadata !4, metadata !"CCTKARGNUM_kxy", metadata !"CCTKARGNUM_kxy", metadata !"", metadata !5, i32 17, metadata !8, i32 1, i32 1, i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_kxy, null} ; [ DW_TAG_variable ] [CCTKARGNUM_kxy] [line 17] [local] [def]
!113 = metadata !{i32 786484, i32 0, metadata !4, metadata !"CCTKARGNUM_kxz", metadata !"CCTKARGNUM_kxz", metadata !"", metadata !5, i32 17, metadata !8, i32 1, i32 1, i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_kxz, null} ; [ DW_TAG_variable ] [CCTKARGNUM_kxz] [line 17] [local] [def]
!114 = metadata !{i32 786484, i32 0, metadata !4, metadata !"CCTKARGNUM_kyy", metadata !"CCTKARGNUM_kyy", metadata !"", metadata !5, i32 17, metadata !8, i32 1, i32 1, i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_kyy, null} ; [ DW_TAG_variable ] [CCTKARGNUM_kyy] [line 17] [local] [def]
!115 = metadata !{i32 786484, i32 0, metadata !4, metadata !"CCTKARGNUM_kyz", metadata !"CCTKARGNUM_kyz", metadata !"", metadata !5, i32 17, metadata !8, i32 1, i32 1, i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_kyz, null} ; [ DW_TAG_variable ] [CCTKARGNUM_kyz] [line 17] [local] [def]
!116 = metadata !{i32 786484, i32 0, metadata !4, metadata !"CCTKARGNUM_kzz", metadata !"CCTKARGNUM_kzz", metadata !"", metadata !5, i32 17, metadata !8, i32 1, i32 1, i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_kzz, null} ; [ DW_TAG_variable ] [CCTKARGNUM_kzz] [line 17] [local] [def]
!117 = metadata !{i32 786484, i32 0, metadata !4, metadata !"CCTKARGNUM_psi", metadata !"CCTKARGNUM_psi", metadata !"", metadata !5, i32 17, metadata !8, i32 1, i32 1, i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_psi, null} ; [ DW_TAG_variable ] [CCTKARGNUM_psi] [line 17] [local] [def]
!118 = metadata !{i32 786484, i32 0, metadata !4, metadata !"CCTKGROUPNUM_confac", metadata !"CCTKGROUPNUM_confac", metadata !"", metadata !5, i32 17, metadata !8, i32 1, i32 1, i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKGROUPNUM_confac, null} ; [ DW_TAG_variable ] [CCTKGROUPNUM_confac] [line 17] [local] [def]
!119 = metadata !{i32 786484, i32 0, metadata !4, metadata !"CCTKARGNUM_psix", metadata !"CCTKARGNUM_psix", metadata !"", metadata !5, i32 17, metadata !8, i32 1, i32 1, i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_psix, null} ; [ DW_TAG_variable ] [CCTKARGNUM_psix] [line 17] [local] [def]
!120 = metadata !{i32 786484, i32 0, metadata !4, metadata !"CCTKGROUPNUM_confac_1derivs", metadata !"CCTKGROUPNUM_confac_1derivs", metadata !"", metadata !5, i32 17, metadata !8, i32 1, i32 1, i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKGROUPNUM_confac_1derivs, null} ; [ DW_TAG_variable ] [CCTKGROUPNUM_confac_1derivs] [line 17] [local] [def]
!121 = metadata !{i32 786484, i32 0, metadata !4, metadata !"CCTKARGNUM_psixx", metadata !"CCTKARGNUM_psixx", metadata !"", metadata !5, i32 17, metadata !8, i32 1, i32 1, i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_psixx, null} ; [ DW_TAG_variable ] [CCTKARGNUM_psixx] [line 17] [local] [def]
!122 = metadata !{i32 786484, i32 0, metadata !4, metadata !"CCTKGROUPNUM_confac_2derivs", metadata !"CCTKGROUPNUM_confac_2derivs", metadata !"", metadata !5, i32 17, metadata !8, i32 1, i32 1, i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKGROUPNUM_confac_2derivs, null} ; [ DW_TAG_variable ] [CCTKGROUPNUM_confac_2derivs] [line 17] [local] [def]
!123 = metadata !{i32 786484, i32 0, metadata !4, metadata !"CCTKARGNUM_psixy", metadata !"CCTKARGNUM_psixy", metadata !"", metadata !5, i32 17, metadata !8, i32 1, i32 1, i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_psixy, null} ; [ DW_TAG_variable ] [CCTKARGNUM_psixy] [line 17] [local] [def]
!124 = metadata !{i32 786484, i32 0, metadata !4, metadata !"CCTKARGNUM_psixz", metadata !"CCTKARGNUM_psixz", metadata !"", metadata !5, i32 17, metadata !8, i32 1, i32 1, i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_psixz, null} ; [ DW_TAG_variable ] [CCTKARGNUM_psixz] [line 17] [local] [def]
!125 = metadata !{i32 786484, i32 0, metadata !4, metadata !"CCTKARGNUM_psiy", metadata !"CCTKARGNUM_psiy", metadata !"", metadata !5, i32 17, metadata !8, i32 1, i32 1, i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_psiy, null} ; [ DW_TAG_variable ] [CCTKARGNUM_psiy] [line 17] [local] [def]
!126 = metadata !{i32 786484, i32 0, metadata !4, metadata !"CCTKARGNUM_psiyy", metadata !"CCTKARGNUM_psiyy", metadata !"", metadata !5, i32 17, metadata !8, i32 1, i32 1, i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_psiyy, null} ; [ DW_TAG_variable ] [CCTKARGNUM_psiyy] [line 17] [local] [def]
!127 = metadata !{i32 786484, i32 0, metadata !4, metadata !"CCTKARGNUM_psiyz", metadata !"CCTKARGNUM_psiyz", metadata !"", metadata !5, i32 17, metadata !8, i32 1, i32 1, i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_psiyz, null} ; [ DW_TAG_variable ] [CCTKARGNUM_psiyz] [line 17] [local] [def]
!128 = metadata !{i32 786484, i32 0, metadata !4, metadata !"CCTKARGNUM_psiz", metadata !"CCTKARGNUM_psiz", metadata !"", metadata !5, i32 17, metadata !8, i32 1, i32 1, i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_psiz, null} ; [ DW_TAG_variable ] [CCTKARGNUM_psiz] [line 17] [local] [def]
!129 = metadata !{i32 786484, i32 0, metadata !4, metadata !"CCTKARGNUM_psizz", metadata !"CCTKARGNUM_psizz", metadata !"", metadata !5, i32 17, metadata !8, i32 1, i32 1, i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_psizz, null} ; [ DW_TAG_variable ] [CCTKARGNUM_psizz] [line 17] [local] [def]
!130 = metadata !{i32 786484, i32 0, metadata !4, metadata !"CCTKARGNUM_r", metadata !"CCTKARGNUM_r", metadata !"", metadata !5, i32 17, metadata !8, i32 1, i32 1, i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_r, null} ; [ DW_TAG_variable ] [CCTKARGNUM_r] [line 17] [local] [def]
!131 = metadata !{i32 786484, i32 0, metadata !4, metadata !"CCTKGROUPNUM_coordinates", metadata !"CCTKGROUPNUM_coordinates", metadata !"", metadata !5, i32 17, metadata !8, i32 1, i32 1, i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKGROUPNUM_coordinates, null} ; [ DW_TAG_variable ] [CCTKGROUPNUM_coordinates] [line 17] [local] [def]
!132 = metadata !{i32 786484, i32 0, metadata !4, metadata !"CCTKARGNUM_shift_state", metadata !"CCTKARGNUM_shift_state", metadata !"", metadata !5, i32 17, metadata !8, i32 1, i32 1, i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_shift_state, null} ; [ DW_TAG_variable ] [CCTKARGNUM_shift_state] [line 17] [local] [def]
!133 = metadata !{i32 786484, i32 0, metadata !4, metadata !"CCTKARGNUM_x", metadata !"CCTKARGNUM_x", metadata !"", metadata !5, i32 17, metadata !8, i32 1, i32 1, i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_x, null} ; [ DW_TAG_variable ] [CCTKARGNUM_x] [line 17] [local] [def]
!134 = metadata !{i32 786484, i32 0, metadata !4, metadata !"CCTKARGNUM_y", metadata !"CCTKARGNUM_y", metadata !"", metadata !5, i32 17, metadata !8, i32 1, i32 1, i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_y, null} ; [ DW_TAG_variable ] [CCTKARGNUM_y] [line 17] [local] [def]
!135 = metadata !{i32 786484, i32 0, metadata !4, metadata !"CCTKARGNUM_z", metadata !"CCTKARGNUM_z", metadata !"", metadata !5, i32 17, metadata !8, i32 1, i32 1, i32* @CCTKi_BindingsFortranWrapperBenchADM.CCTKARGNUM_z, null} ; [ DW_TAG_variable ] [CCTKARGNUM_z] [line 17] [local] [def]
!136 = metadata !{i32 13, i32 0, metadata !4, null}
!137 = metadata !{i32 18, i32 0, metadata !4, null}
!138 = metadata !{metadata !"int", metadata !139}
!139 = metadata !{metadata !"omnipotent char", metadata !140}
!140 = metadata !{metadata !"Simple C/C++ TBAA"}
!141 = metadata !{i32 20, i32 0, metadata !4, null}
!142 = metadata !{i32 22, i32 0, metadata !4, null}
!143 = metadata !{metadata !"any pointer", metadata !139}
!144 = metadata !{i32 24, i32 0, metadata !4, null}
