; ModuleID = '../../SPEC/benchspec/CPU2006/436.cactusADM/src/CactusBindings/Einstein_FortranWrapper.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

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

; Function Attrs: nounwind optsize uwtable
define i32 @CCTKi_BindingsFortranWrapperEinstein(%struct.cGH* %GH, i8* nocapture %fpointer) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.cGH* %GH}, i64 0, metadata !48), !dbg !127
  tail call void @llvm.dbg.value(metadata !{i8* %fpointer}, i64 0, metadata !49), !dbg !127
  %0 = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_detg, align 4, !dbg !128, !tbaa !129
  %cmp = icmp eq i32 %0, -1, !dbg !128
  br i1 %cmp, label %if.then, label %if.end, !dbg !128

if.then:                                          ; preds = %entry
  %call = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([15 x i8]* @.str, i64 0, i64 0)) #3, !dbg !128
  store i32 %call, i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_detg, align 4, !dbg !128, !tbaa !129
  br label %if.end, !dbg !128

if.end:                                           ; preds = %if.then, %entry
  %1 = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKGROUPNUM_detofg, align 4, !dbg !128, !tbaa !129
  %cmp1 = icmp eq i32 %1, -1, !dbg !128
  br i1 %cmp1, label %if.then2, label %if.end4, !dbg !128

if.then2:                                         ; preds = %if.end
  %call3 = tail call i32 @CCTK_GroupIndex(i8* getelementptr inbounds ([17 x i8]* @.str1, i64 0, i64 0)) #3, !dbg !128
  store i32 %call3, i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKGROUPNUM_detofg, align 4, !dbg !128, !tbaa !129
  br label %if.end4, !dbg !128

if.end4:                                          ; preds = %if.then2, %if.end
  %2 = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_gpp, align 4, !dbg !128, !tbaa !129
  %cmp5 = icmp eq i32 %2, -1, !dbg !128
  br i1 %cmp5, label %if.then6, label %if.end8, !dbg !128

if.then6:                                         ; preds = %if.end4
  %call7 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str2, i64 0, i64 0)) #3, !dbg !128
  store i32 %call7, i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_gpp, align 4, !dbg !128, !tbaa !129
  br label %if.end8, !dbg !128

if.end8:                                          ; preds = %if.then6, %if.end4
  %3 = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKGROUPNUM_spherical_metric, align 4, !dbg !128, !tbaa !129
  %cmp9 = icmp eq i32 %3, -1, !dbg !128
  br i1 %cmp9, label %if.then10, label %if.end12, !dbg !128

if.then10:                                        ; preds = %if.end8
  %call11 = tail call i32 @CCTK_GroupIndex(i8* getelementptr inbounds ([27 x i8]* @.str3, i64 0, i64 0)) #3, !dbg !128
  store i32 %call11, i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKGROUPNUM_spherical_metric, align 4, !dbg !128, !tbaa !129
  br label %if.end12, !dbg !128

if.end12:                                         ; preds = %if.then10, %if.end8
  %4 = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_gqp, align 4, !dbg !128, !tbaa !129
  %cmp13 = icmp eq i32 %4, -1, !dbg !128
  br i1 %cmp13, label %if.then14, label %if.end16, !dbg !128

if.then14:                                        ; preds = %if.end12
  %call15 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str4, i64 0, i64 0)) #3, !dbg !128
  store i32 %call15, i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_gqp, align 4, !dbg !128, !tbaa !129
  br label %if.end16, !dbg !128

if.end16:                                         ; preds = %if.then14, %if.end12
  %5 = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_gqq, align 4, !dbg !128, !tbaa !129
  %cmp17 = icmp eq i32 %5, -1, !dbg !128
  br i1 %cmp17, label %if.then18, label %if.end20, !dbg !128

if.then18:                                        ; preds = %if.end16
  %call19 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str5, i64 0, i64 0)) #3, !dbg !128
  store i32 %call19, i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_gqq, align 4, !dbg !128, !tbaa !129
  br label %if.end20, !dbg !128

if.end20:                                         ; preds = %if.then18, %if.end16
  %6 = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_grp, align 4, !dbg !128, !tbaa !129
  %cmp21 = icmp eq i32 %6, -1, !dbg !128
  br i1 %cmp21, label %if.then22, label %if.end24, !dbg !128

if.then22:                                        ; preds = %if.end20
  %call23 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str6, i64 0, i64 0)) #3, !dbg !128
  store i32 %call23, i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_grp, align 4, !dbg !128, !tbaa !129
  br label %if.end24, !dbg !128

if.end24:                                         ; preds = %if.then22, %if.end20
  %7 = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_grq, align 4, !dbg !128, !tbaa !129
  %cmp25 = icmp eq i32 %7, -1, !dbg !128
  br i1 %cmp25, label %if.then26, label %if.end28, !dbg !128

if.then26:                                        ; preds = %if.end24
  %call27 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str7, i64 0, i64 0)) #3, !dbg !128
  store i32 %call27, i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_grq, align 4, !dbg !128, !tbaa !129
  br label %if.end28, !dbg !128

if.end28:                                         ; preds = %if.then26, %if.end24
  %8 = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_grr, align 4, !dbg !128, !tbaa !129
  %cmp29 = icmp eq i32 %8, -1, !dbg !128
  br i1 %cmp29, label %if.then30, label %if.end32, !dbg !128

if.then30:                                        ; preds = %if.end28
  %call31 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str8, i64 0, i64 0)) #3, !dbg !128
  store i32 %call31, i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_grr, align 4, !dbg !128, !tbaa !129
  br label %if.end32, !dbg !128

if.end32:                                         ; preds = %if.then30, %if.end28
  %9 = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_kpp, align 4, !dbg !128, !tbaa !129
  %cmp33 = icmp eq i32 %9, -1, !dbg !128
  br i1 %cmp33, label %if.then34, label %if.end36, !dbg !128

if.then34:                                        ; preds = %if.end32
  %call35 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str9, i64 0, i64 0)) #3, !dbg !128
  store i32 %call35, i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_kpp, align 4, !dbg !128, !tbaa !129
  br label %if.end36, !dbg !128

if.end36:                                         ; preds = %if.then34, %if.end32
  %10 = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKGROUPNUM_spherical_curv, align 4, !dbg !128, !tbaa !129
  %cmp37 = icmp eq i32 %10, -1, !dbg !128
  br i1 %cmp37, label %if.then38, label %if.end40, !dbg !128

if.then38:                                        ; preds = %if.end36
  %call39 = tail call i32 @CCTK_GroupIndex(i8* getelementptr inbounds ([25 x i8]* @.str10, i64 0, i64 0)) #3, !dbg !128
  store i32 %call39, i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKGROUPNUM_spherical_curv, align 4, !dbg !128, !tbaa !129
  br label %if.end40, !dbg !128

if.end40:                                         ; preds = %if.then38, %if.end36
  %11 = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_kqp, align 4, !dbg !128, !tbaa !129
  %cmp41 = icmp eq i32 %11, -1, !dbg !128
  br i1 %cmp41, label %if.then42, label %if.end44, !dbg !128

if.then42:                                        ; preds = %if.end40
  %call43 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str11, i64 0, i64 0)) #3, !dbg !128
  store i32 %call43, i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_kqp, align 4, !dbg !128, !tbaa !129
  br label %if.end44, !dbg !128

if.end44:                                         ; preds = %if.then42, %if.end40
  %12 = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_kqq, align 4, !dbg !128, !tbaa !129
  %cmp45 = icmp eq i32 %12, -1, !dbg !128
  br i1 %cmp45, label %if.then46, label %if.end48, !dbg !128

if.then46:                                        ; preds = %if.end44
  %call47 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str12, i64 0, i64 0)) #3, !dbg !128
  store i32 %call47, i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_kqq, align 4, !dbg !128, !tbaa !129
  br label %if.end48, !dbg !128

if.end48:                                         ; preds = %if.then46, %if.end44
  %13 = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_krp, align 4, !dbg !128, !tbaa !129
  %cmp49 = icmp eq i32 %13, -1, !dbg !128
  br i1 %cmp49, label %if.then50, label %if.end52, !dbg !128

if.then50:                                        ; preds = %if.end48
  %call51 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str13, i64 0, i64 0)) #3, !dbg !128
  store i32 %call51, i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_krp, align 4, !dbg !128, !tbaa !129
  br label %if.end52, !dbg !128

if.end52:                                         ; preds = %if.then50, %if.end48
  %14 = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_krq, align 4, !dbg !128, !tbaa !129
  %cmp53 = icmp eq i32 %14, -1, !dbg !128
  br i1 %cmp53, label %if.then54, label %if.end56, !dbg !128

if.then54:                                        ; preds = %if.end52
  %call55 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str14, i64 0, i64 0)) #3, !dbg !128
  store i32 %call55, i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_krq, align 4, !dbg !128, !tbaa !129
  br label %if.end56, !dbg !128

if.end56:                                         ; preds = %if.then54, %if.end52
  %15 = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_krr, align 4, !dbg !128, !tbaa !129
  %cmp57 = icmp eq i32 %15, -1, !dbg !128
  br i1 %cmp57, label %if.then58, label %if.end60, !dbg !128

if.then58:                                        ; preds = %if.end56
  %call59 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str15, i64 0, i64 0)) #3, !dbg !128
  store i32 %call59, i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_krr, align 4, !dbg !128, !tbaa !129
  br label %if.end60, !dbg !128

if.end60:                                         ; preds = %if.then58, %if.end56
  %16 = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_trK, align 4, !dbg !128, !tbaa !129
  %cmp61 = icmp eq i32 %16, -1, !dbg !128
  br i1 %cmp61, label %if.then62, label %if.end64, !dbg !128

if.then62:                                        ; preds = %if.end60
  %call63 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str16, i64 0, i64 0)) #3, !dbg !128
  store i32 %call63, i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_trK, align 4, !dbg !128, !tbaa !129
  br label %if.end64, !dbg !128

if.end64:                                         ; preds = %if.then62, %if.end60
  %17 = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKGROUPNUM_trace_of_K, align 4, !dbg !128, !tbaa !129
  %cmp65 = icmp eq i32 %17, -1, !dbg !128
  br i1 %cmp65, label %if.then66, label %if.end68, !dbg !128

if.then66:                                        ; preds = %if.end64
  %call67 = tail call i32 @CCTK_GroupIndex(i8* getelementptr inbounds ([21 x i8]* @.str17, i64 0, i64 0)) #3, !dbg !128
  store i32 %call67, i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKGROUPNUM_trace_of_K, align 4, !dbg !128, !tbaa !129
  br label %if.end68, !dbg !128

if.end68:                                         ; preds = %if.then66, %if.end64
  %18 = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_active_slicing_handle, align 4, !dbg !128, !tbaa !129
  %cmp69 = icmp eq i32 %18, -1, !dbg !128
  br i1 %cmp69, label %if.then70, label %if.end72, !dbg !128

if.then70:                                        ; preds = %if.end68
  %call71 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([32 x i8]* @.str18, i64 0, i64 0)) #3, !dbg !128
  store i32 %call71, i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_active_slicing_handle, align 4, !dbg !128, !tbaa !129
  br label %if.end72, !dbg !128

if.end72:                                         ; preds = %if.then70, %if.end68
  %19 = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKGROUPNUM_slicing_flags, align 4, !dbg !128, !tbaa !129
  %cmp73 = icmp eq i32 %19, -1, !dbg !128
  br i1 %cmp73, label %if.then74, label %if.end76, !dbg !128

if.then74:                                        ; preds = %if.end72
  %call75 = tail call i32 @CCTK_GroupIndex(i8* getelementptr inbounds ([24 x i8]* @.str19, i64 0, i64 0)) #3, !dbg !128
  store i32 %call75, i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKGROUPNUM_slicing_flags, align 4, !dbg !128, !tbaa !129
  br label %if.end76, !dbg !128

if.end76:                                         ; preds = %if.then74, %if.end72
  %20 = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_alp, align 4, !dbg !128, !tbaa !129
  %cmp77 = icmp eq i32 %20, -1, !dbg !128
  br i1 %cmp77, label %if.then78, label %if.end80, !dbg !128

if.then78:                                        ; preds = %if.end76
  %call79 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str20, i64 0, i64 0)) #3, !dbg !128
  store i32 %call79, i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_alp, align 4, !dbg !128, !tbaa !129
  br label %if.end80, !dbg !128

if.end80:                                         ; preds = %if.then78, %if.end76
  %21 = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKGROUPNUM_lapse, align 4, !dbg !128, !tbaa !129
  %cmp81 = icmp eq i32 %21, -1, !dbg !128
  br i1 %cmp81, label %if.then82, label %if.end84, !dbg !128

if.then82:                                        ; preds = %if.end80
  %call83 = tail call i32 @CCTK_GroupIndex(i8* getelementptr inbounds ([16 x i8]* @.str21, i64 0, i64 0)) #3, !dbg !128
  store i32 %call83, i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKGROUPNUM_lapse, align 4, !dbg !128, !tbaa !129
  br label %if.end84, !dbg !128

if.end84:                                         ; preds = %if.then82, %if.end80
  %22 = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_betax, align 4, !dbg !128, !tbaa !129
  %cmp85 = icmp eq i32 %22, -1, !dbg !128
  br i1 %cmp85, label %if.then86, label %if.end88, !dbg !128

if.then86:                                        ; preds = %if.end84
  %call87 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str22, i64 0, i64 0)) #3, !dbg !128
  store i32 %call87, i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_betax, align 4, !dbg !128, !tbaa !129
  br label %if.end88, !dbg !128

if.end88:                                         ; preds = %if.then86, %if.end84
  %23 = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKGROUPNUM_shift, align 4, !dbg !128, !tbaa !129
  %cmp89 = icmp eq i32 %23, -1, !dbg !128
  br i1 %cmp89, label %if.then90, label %if.end92, !dbg !128

if.then90:                                        ; preds = %if.end88
  %call91 = tail call i32 @CCTK_GroupIndex(i8* getelementptr inbounds ([16 x i8]* @.str23, i64 0, i64 0)) #3, !dbg !128
  store i32 %call91, i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKGROUPNUM_shift, align 4, !dbg !128, !tbaa !129
  br label %if.end92, !dbg !128

if.end92:                                         ; preds = %if.then90, %if.end88
  %24 = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_betay, align 4, !dbg !128, !tbaa !129
  %cmp93 = icmp eq i32 %24, -1, !dbg !128
  br i1 %cmp93, label %if.then94, label %if.end96, !dbg !128

if.then94:                                        ; preds = %if.end92
  %call95 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str24, i64 0, i64 0)) #3, !dbg !128
  store i32 %call95, i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_betay, align 4, !dbg !128, !tbaa !129
  br label %if.end96, !dbg !128

if.end96:                                         ; preds = %if.then94, %if.end92
  %25 = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_betaz, align 4, !dbg !128, !tbaa !129
  %cmp97 = icmp eq i32 %25, -1, !dbg !128
  br i1 %cmp97, label %if.then98, label %if.end100, !dbg !128

if.then98:                                        ; preds = %if.end96
  %call99 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str25, i64 0, i64 0)) #3, !dbg !128
  store i32 %call99, i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_betaz, align 4, !dbg !128, !tbaa !129
  br label %if.end100, !dbg !128

if.end100:                                        ; preds = %if.then98, %if.end96
  %26 = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_coarse_dx, align 4, !dbg !128, !tbaa !129
  %cmp101 = icmp eq i32 %26, -1, !dbg !128
  br i1 %cmp101, label %if.then102, label %if.end104, !dbg !128

if.then102:                                       ; preds = %if.end100
  %call103 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str26, i64 0, i64 0)) #3, !dbg !128
  store i32 %call103, i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_coarse_dx, align 4, !dbg !128, !tbaa !129
  br label %if.end104, !dbg !128

if.end104:                                        ; preds = %if.then102, %if.end100
  %27 = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKGROUPNUM_gridspacings, align 4, !dbg !128, !tbaa !129
  %cmp105 = icmp eq i32 %27, -1, !dbg !128
  br i1 %cmp105, label %if.then106, label %if.end108, !dbg !128

if.then106:                                       ; preds = %if.end104
  %call107 = tail call i32 @CCTK_GroupIndex(i8* getelementptr inbounds ([19 x i8]* @.str27, i64 0, i64 0)) #3, !dbg !128
  store i32 %call107, i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKGROUPNUM_gridspacings, align 4, !dbg !128, !tbaa !129
  br label %if.end108, !dbg !128

if.end108:                                        ; preds = %if.then106, %if.end104
  %28 = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_coarse_dy, align 4, !dbg !128, !tbaa !129
  %cmp109 = icmp eq i32 %28, -1, !dbg !128
  br i1 %cmp109, label %if.then110, label %if.end112, !dbg !128

if.then110:                                       ; preds = %if.end108
  %call111 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str28, i64 0, i64 0)) #3, !dbg !128
  store i32 %call111, i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_coarse_dy, align 4, !dbg !128, !tbaa !129
  br label %if.end112, !dbg !128

if.end112:                                        ; preds = %if.then110, %if.end108
  %29 = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_coarse_dz, align 4, !dbg !128, !tbaa !129
  %cmp113 = icmp eq i32 %29, -1, !dbg !128
  br i1 %cmp113, label %if.then114, label %if.end116, !dbg !128

if.then114:                                       ; preds = %if.end112
  %call115 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str29, i64 0, i64 0)) #3, !dbg !128
  store i32 %call115, i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_coarse_dz, align 4, !dbg !128, !tbaa !129
  br label %if.end116, !dbg !128

if.end116:                                        ; preds = %if.then114, %if.end112
  %30 = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_conformal_state, align 4, !dbg !128, !tbaa !129
  %cmp117 = icmp eq i32 %30, -1, !dbg !128
  br i1 %cmp117, label %if.then118, label %if.end120, !dbg !128

if.then118:                                       ; preds = %if.end116
  %call119 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([26 x i8]* @.str30, i64 0, i64 0)) #3, !dbg !128
  store i32 %call119, i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_conformal_state, align 4, !dbg !128, !tbaa !129
  br label %if.end120, !dbg !128

if.end120:                                        ; preds = %if.then118, %if.end116
  %31 = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKGROUPNUM_flags, align 4, !dbg !128, !tbaa !129
  %cmp121 = icmp eq i32 %31, -1, !dbg !128
  br i1 %cmp121, label %if.then122, label %if.end124, !dbg !128

if.then122:                                       ; preds = %if.end120
  %call123 = tail call i32 @CCTK_GroupIndex(i8* getelementptr inbounds ([16 x i8]* @.str31, i64 0, i64 0)) #3, !dbg !128
  store i32 %call123, i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKGROUPNUM_flags, align 4, !dbg !128, !tbaa !129
  br label %if.end124, !dbg !128

if.end124:                                        ; preds = %if.then122, %if.end120
  %32 = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_courant_min_time, align 4, !dbg !128, !tbaa !129
  %cmp125 = icmp eq i32 %32, -1, !dbg !128
  br i1 %cmp125, label %if.then126, label %if.end128, !dbg !128

if.then126:                                       ; preds = %if.end124
  %call127 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([23 x i8]* @.str32, i64 0, i64 0)) #3, !dbg !128
  store i32 %call127, i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_courant_min_time, align 4, !dbg !128, !tbaa !129
  br label %if.end128, !dbg !128

if.end128:                                        ; preds = %if.then126, %if.end124
  %33 = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKGROUPNUM_speedvars, align 4, !dbg !128, !tbaa !129
  %cmp129 = icmp eq i32 %33, -1, !dbg !128
  br i1 %cmp129, label %if.then130, label %if.end132, !dbg !128

if.then130:                                       ; preds = %if.end128
  %call131 = tail call i32 @CCTK_GroupIndex(i8* getelementptr inbounds ([16 x i8]* @.str33, i64 0, i64 0)) #3, !dbg !128
  store i32 %call131, i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKGROUPNUM_speedvars, align 4, !dbg !128, !tbaa !129
  br label %if.end132, !dbg !128

if.end132:                                        ; preds = %if.then130, %if.end128
  %34 = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_courant_wave_speed, align 4, !dbg !128, !tbaa !129
  %cmp133 = icmp eq i32 %34, -1, !dbg !128
  br i1 %cmp133, label %if.then134, label %if.end136, !dbg !128

if.then134:                                       ; preds = %if.end132
  %call135 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([25 x i8]* @.str34, i64 0, i64 0)) #3, !dbg !128
  store i32 %call135, i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_courant_wave_speed, align 4, !dbg !128, !tbaa !129
  br label %if.end136, !dbg !128

if.end136:                                        ; preds = %if.then134, %if.end132
  %35 = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_emask, align 4, !dbg !128, !tbaa !129
  %cmp137 = icmp eq i32 %35, -1, !dbg !128
  br i1 %cmp137, label %if.then138, label %if.end140, !dbg !128

if.then138:                                       ; preds = %if.end136
  %call139 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str35, i64 0, i64 0)) #3, !dbg !128
  store i32 %call139, i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_emask, align 4, !dbg !128, !tbaa !129
  br label %if.end140, !dbg !128

if.end140:                                        ; preds = %if.then138, %if.end136
  %36 = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKGROUPNUM_mask, align 4, !dbg !128, !tbaa !129
  %cmp141 = icmp eq i32 %36, -1, !dbg !128
  br i1 %cmp141, label %if.then142, label %if.end144, !dbg !128

if.then142:                                       ; preds = %if.end140
  %call143 = tail call i32 @CCTK_GroupIndex(i8* getelementptr inbounds ([15 x i8]* @.str36, i64 0, i64 0)) #3, !dbg !128
  store i32 %call143, i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKGROUPNUM_mask, align 4, !dbg !128, !tbaa !129
  br label %if.end144, !dbg !128

if.end144:                                        ; preds = %if.then142, %if.end140
  %37 = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_gxx, align 4, !dbg !128, !tbaa !129
  %cmp145 = icmp eq i32 %37, -1, !dbg !128
  br i1 %cmp145, label %if.then146, label %if.end148, !dbg !128

if.then146:                                       ; preds = %if.end144
  %call147 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str37, i64 0, i64 0)) #3, !dbg !128
  store i32 %call147, i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_gxx, align 4, !dbg !128, !tbaa !129
  br label %if.end148, !dbg !128

if.end148:                                        ; preds = %if.then146, %if.end144
  %38 = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKGROUPNUM_metric, align 4, !dbg !128, !tbaa !129
  %cmp149 = icmp eq i32 %38, -1, !dbg !128
  br i1 %cmp149, label %if.then150, label %if.end152, !dbg !128

if.then150:                                       ; preds = %if.end148
  %call151 = tail call i32 @CCTK_GroupIndex(i8* getelementptr inbounds ([17 x i8]* @.str38, i64 0, i64 0)) #3, !dbg !128
  store i32 %call151, i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKGROUPNUM_metric, align 4, !dbg !128, !tbaa !129
  br label %if.end152, !dbg !128

if.end152:                                        ; preds = %if.then150, %if.end148
  %39 = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_gxy, align 4, !dbg !128, !tbaa !129
  %cmp153 = icmp eq i32 %39, -1, !dbg !128
  br i1 %cmp153, label %if.then154, label %if.end156, !dbg !128

if.then154:                                       ; preds = %if.end152
  %call155 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str39, i64 0, i64 0)) #3, !dbg !128
  store i32 %call155, i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_gxy, align 4, !dbg !128, !tbaa !129
  br label %if.end156, !dbg !128

if.end156:                                        ; preds = %if.then154, %if.end152
  %40 = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_gxz, align 4, !dbg !128, !tbaa !129
  %cmp157 = icmp eq i32 %40, -1, !dbg !128
  br i1 %cmp157, label %if.then158, label %if.end160, !dbg !128

if.then158:                                       ; preds = %if.end156
  %call159 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str40, i64 0, i64 0)) #3, !dbg !128
  store i32 %call159, i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_gxz, align 4, !dbg !128, !tbaa !129
  br label %if.end160, !dbg !128

if.end160:                                        ; preds = %if.then158, %if.end156
  %41 = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_gyy, align 4, !dbg !128, !tbaa !129
  %cmp161 = icmp eq i32 %41, -1, !dbg !128
  br i1 %cmp161, label %if.then162, label %if.end164, !dbg !128

if.then162:                                       ; preds = %if.end160
  %call163 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str41, i64 0, i64 0)) #3, !dbg !128
  store i32 %call163, i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_gyy, align 4, !dbg !128, !tbaa !129
  br label %if.end164, !dbg !128

if.end164:                                        ; preds = %if.then162, %if.end160
  %42 = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_gyz, align 4, !dbg !128, !tbaa !129
  %cmp165 = icmp eq i32 %42, -1, !dbg !128
  br i1 %cmp165, label %if.then166, label %if.end168, !dbg !128

if.then166:                                       ; preds = %if.end164
  %call167 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str42, i64 0, i64 0)) #3, !dbg !128
  store i32 %call167, i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_gyz, align 4, !dbg !128, !tbaa !129
  br label %if.end168, !dbg !128

if.end168:                                        ; preds = %if.then166, %if.end164
  %43 = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_gzz, align 4, !dbg !128, !tbaa !129
  %cmp169 = icmp eq i32 %43, -1, !dbg !128
  br i1 %cmp169, label %if.then170, label %if.end172, !dbg !128

if.then170:                                       ; preds = %if.end168
  %call171 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str43, i64 0, i64 0)) #3, !dbg !128
  store i32 %call171, i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_gzz, align 4, !dbg !128, !tbaa !129
  br label %if.end172, !dbg !128

if.end172:                                        ; preds = %if.then170, %if.end168
  %44 = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_kxx, align 4, !dbg !128, !tbaa !129
  %cmp173 = icmp eq i32 %44, -1, !dbg !128
  br i1 %cmp173, label %if.then174, label %if.end176, !dbg !128

if.then174:                                       ; preds = %if.end172
  %call175 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str44, i64 0, i64 0)) #3, !dbg !128
  store i32 %call175, i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_kxx, align 4, !dbg !128, !tbaa !129
  br label %if.end176, !dbg !128

if.end176:                                        ; preds = %if.then174, %if.end172
  %45 = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKGROUPNUM_curv, align 4, !dbg !128, !tbaa !129
  %cmp177 = icmp eq i32 %45, -1, !dbg !128
  br i1 %cmp177, label %if.then178, label %if.end180, !dbg !128

if.then178:                                       ; preds = %if.end176
  %call179 = tail call i32 @CCTK_GroupIndex(i8* getelementptr inbounds ([15 x i8]* @.str45, i64 0, i64 0)) #3, !dbg !128
  store i32 %call179, i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKGROUPNUM_curv, align 4, !dbg !128, !tbaa !129
  br label %if.end180, !dbg !128

if.end180:                                        ; preds = %if.then178, %if.end176
  %46 = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_kxy, align 4, !dbg !128, !tbaa !129
  %cmp181 = icmp eq i32 %46, -1, !dbg !128
  br i1 %cmp181, label %if.then182, label %if.end184, !dbg !128

if.then182:                                       ; preds = %if.end180
  %call183 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str46, i64 0, i64 0)) #3, !dbg !128
  store i32 %call183, i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_kxy, align 4, !dbg !128, !tbaa !129
  br label %if.end184, !dbg !128

if.end184:                                        ; preds = %if.then182, %if.end180
  %47 = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_kxz, align 4, !dbg !128, !tbaa !129
  %cmp185 = icmp eq i32 %47, -1, !dbg !128
  br i1 %cmp185, label %if.then186, label %if.end188, !dbg !128

if.then186:                                       ; preds = %if.end184
  %call187 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str47, i64 0, i64 0)) #3, !dbg !128
  store i32 %call187, i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_kxz, align 4, !dbg !128, !tbaa !129
  br label %if.end188, !dbg !128

if.end188:                                        ; preds = %if.then186, %if.end184
  %48 = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_kyy, align 4, !dbg !128, !tbaa !129
  %cmp189 = icmp eq i32 %48, -1, !dbg !128
  br i1 %cmp189, label %if.then190, label %if.end192, !dbg !128

if.then190:                                       ; preds = %if.end188
  %call191 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str48, i64 0, i64 0)) #3, !dbg !128
  store i32 %call191, i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_kyy, align 4, !dbg !128, !tbaa !129
  br label %if.end192, !dbg !128

if.end192:                                        ; preds = %if.then190, %if.end188
  %49 = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_kyz, align 4, !dbg !128, !tbaa !129
  %cmp193 = icmp eq i32 %49, -1, !dbg !128
  br i1 %cmp193, label %if.then194, label %if.end196, !dbg !128

if.then194:                                       ; preds = %if.end192
  %call195 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str49, i64 0, i64 0)) #3, !dbg !128
  store i32 %call195, i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_kyz, align 4, !dbg !128, !tbaa !129
  br label %if.end196, !dbg !128

if.end196:                                        ; preds = %if.then194, %if.end192
  %50 = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_kzz, align 4, !dbg !128, !tbaa !129
  %cmp197 = icmp eq i32 %50, -1, !dbg !128
  br i1 %cmp197, label %if.then198, label %if.end200, !dbg !128

if.then198:                                       ; preds = %if.end196
  %call199 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str50, i64 0, i64 0)) #3, !dbg !128
  store i32 %call199, i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_kzz, align 4, !dbg !128, !tbaa !129
  br label %if.end200, !dbg !128

if.end200:                                        ; preds = %if.then198, %if.end196
  %51 = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_psi, align 4, !dbg !128, !tbaa !129
  %cmp201 = icmp eq i32 %51, -1, !dbg !128
  br i1 %cmp201, label %if.then202, label %if.end204, !dbg !128

if.then202:                                       ; preds = %if.end200
  %call203 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str51, i64 0, i64 0)) #3, !dbg !128
  store i32 %call203, i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_psi, align 4, !dbg !128, !tbaa !129
  br label %if.end204, !dbg !128

if.end204:                                        ; preds = %if.then202, %if.end200
  %52 = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKGROUPNUM_confac, align 4, !dbg !128, !tbaa !129
  %cmp205 = icmp eq i32 %52, -1, !dbg !128
  br i1 %cmp205, label %if.then206, label %if.end208, !dbg !128

if.then206:                                       ; preds = %if.end204
  %call207 = tail call i32 @CCTK_GroupIndex(i8* getelementptr inbounds ([17 x i8]* @.str52, i64 0, i64 0)) #3, !dbg !128
  store i32 %call207, i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKGROUPNUM_confac, align 4, !dbg !128, !tbaa !129
  br label %if.end208, !dbg !128

if.end208:                                        ; preds = %if.then206, %if.end204
  %53 = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_psix, align 4, !dbg !128, !tbaa !129
  %cmp209 = icmp eq i32 %53, -1, !dbg !128
  br i1 %cmp209, label %if.then210, label %if.end212, !dbg !128

if.then210:                                       ; preds = %if.end208
  %call211 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([15 x i8]* @.str53, i64 0, i64 0)) #3, !dbg !128
  store i32 %call211, i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_psix, align 4, !dbg !128, !tbaa !129
  br label %if.end212, !dbg !128

if.end212:                                        ; preds = %if.then210, %if.end208
  %54 = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKGROUPNUM_confac_1derivs, align 4, !dbg !128, !tbaa !129
  %cmp213 = icmp eq i32 %54, -1, !dbg !128
  br i1 %cmp213, label %if.then214, label %if.end216, !dbg !128

if.then214:                                       ; preds = %if.end212
  %call215 = tail call i32 @CCTK_GroupIndex(i8* getelementptr inbounds ([25 x i8]* @.str54, i64 0, i64 0)) #3, !dbg !128
  store i32 %call215, i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKGROUPNUM_confac_1derivs, align 4, !dbg !128, !tbaa !129
  br label %if.end216, !dbg !128

if.end216:                                        ; preds = %if.then214, %if.end212
  %55 = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_psixx, align 4, !dbg !128, !tbaa !129
  %cmp217 = icmp eq i32 %55, -1, !dbg !128
  br i1 %cmp217, label %if.then218, label %if.end220, !dbg !128

if.then218:                                       ; preds = %if.end216
  %call219 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str55, i64 0, i64 0)) #3, !dbg !128
  store i32 %call219, i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_psixx, align 4, !dbg !128, !tbaa !129
  br label %if.end220, !dbg !128

if.end220:                                        ; preds = %if.then218, %if.end216
  %56 = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKGROUPNUM_confac_2derivs, align 4, !dbg !128, !tbaa !129
  %cmp221 = icmp eq i32 %56, -1, !dbg !128
  br i1 %cmp221, label %if.then222, label %if.end224, !dbg !128

if.then222:                                       ; preds = %if.end220
  %call223 = tail call i32 @CCTK_GroupIndex(i8* getelementptr inbounds ([25 x i8]* @.str56, i64 0, i64 0)) #3, !dbg !128
  store i32 %call223, i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKGROUPNUM_confac_2derivs, align 4, !dbg !128, !tbaa !129
  br label %if.end224, !dbg !128

if.end224:                                        ; preds = %if.then222, %if.end220
  %57 = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_psixy, align 4, !dbg !128, !tbaa !129
  %cmp225 = icmp eq i32 %57, -1, !dbg !128
  br i1 %cmp225, label %if.then226, label %if.end228, !dbg !128

if.then226:                                       ; preds = %if.end224
  %call227 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str57, i64 0, i64 0)) #3, !dbg !128
  store i32 %call227, i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_psixy, align 4, !dbg !128, !tbaa !129
  br label %if.end228, !dbg !128

if.end228:                                        ; preds = %if.then226, %if.end224
  %58 = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_psixz, align 4, !dbg !128, !tbaa !129
  %cmp229 = icmp eq i32 %58, -1, !dbg !128
  br i1 %cmp229, label %if.then230, label %if.end232, !dbg !128

if.then230:                                       ; preds = %if.end228
  %call231 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str58, i64 0, i64 0)) #3, !dbg !128
  store i32 %call231, i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_psixz, align 4, !dbg !128, !tbaa !129
  br label %if.end232, !dbg !128

if.end232:                                        ; preds = %if.then230, %if.end228
  %59 = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_psiy, align 4, !dbg !128, !tbaa !129
  %cmp233 = icmp eq i32 %59, -1, !dbg !128
  br i1 %cmp233, label %if.then234, label %if.end236, !dbg !128

if.then234:                                       ; preds = %if.end232
  %call235 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([15 x i8]* @.str59, i64 0, i64 0)) #3, !dbg !128
  store i32 %call235, i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_psiy, align 4, !dbg !128, !tbaa !129
  br label %if.end236, !dbg !128

if.end236:                                        ; preds = %if.then234, %if.end232
  %60 = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_psiyy, align 4, !dbg !128, !tbaa !129
  %cmp237 = icmp eq i32 %60, -1, !dbg !128
  br i1 %cmp237, label %if.then238, label %if.end240, !dbg !128

if.then238:                                       ; preds = %if.end236
  %call239 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str60, i64 0, i64 0)) #3, !dbg !128
  store i32 %call239, i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_psiyy, align 4, !dbg !128, !tbaa !129
  br label %if.end240, !dbg !128

if.end240:                                        ; preds = %if.then238, %if.end236
  %61 = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_psiyz, align 4, !dbg !128, !tbaa !129
  %cmp241 = icmp eq i32 %61, -1, !dbg !128
  br i1 %cmp241, label %if.then242, label %if.end244, !dbg !128

if.then242:                                       ; preds = %if.end240
  %call243 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str61, i64 0, i64 0)) #3, !dbg !128
  store i32 %call243, i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_psiyz, align 4, !dbg !128, !tbaa !129
  br label %if.end244, !dbg !128

if.end244:                                        ; preds = %if.then242, %if.end240
  %62 = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_psiz, align 4, !dbg !128, !tbaa !129
  %cmp245 = icmp eq i32 %62, -1, !dbg !128
  br i1 %cmp245, label %if.then246, label %if.end248, !dbg !128

if.then246:                                       ; preds = %if.end244
  %call247 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([15 x i8]* @.str62, i64 0, i64 0)) #3, !dbg !128
  store i32 %call247, i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_psiz, align 4, !dbg !128, !tbaa !129
  br label %if.end248, !dbg !128

if.end248:                                        ; preds = %if.then246, %if.end244
  %63 = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_psizz, align 4, !dbg !128, !tbaa !129
  %cmp249 = icmp eq i32 %63, -1, !dbg !128
  br i1 %cmp249, label %if.then250, label %if.end252, !dbg !128

if.then250:                                       ; preds = %if.end248
  %call251 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str63, i64 0, i64 0)) #3, !dbg !128
  store i32 %call251, i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_psizz, align 4, !dbg !128, !tbaa !129
  br label %if.end252, !dbg !128

if.end252:                                        ; preds = %if.then250, %if.end248
  %64 = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_r, align 4, !dbg !128, !tbaa !129
  %cmp253 = icmp eq i32 %64, -1, !dbg !128
  br i1 %cmp253, label %if.then254, label %if.end256, !dbg !128

if.then254:                                       ; preds = %if.end252
  %call255 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([8 x i8]* @.str64, i64 0, i64 0)) #3, !dbg !128
  store i32 %call255, i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_r, align 4, !dbg !128, !tbaa !129
  br label %if.end256, !dbg !128

if.end256:                                        ; preds = %if.then254, %if.end252
  %65 = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKGROUPNUM_coordinates, align 4, !dbg !128, !tbaa !129
  %cmp257 = icmp eq i32 %65, -1, !dbg !128
  br i1 %cmp257, label %if.then258, label %if.end260, !dbg !128

if.then258:                                       ; preds = %if.end256
  %call259 = tail call i32 @CCTK_GroupIndex(i8* getelementptr inbounds ([18 x i8]* @.str65, i64 0, i64 0)) #3, !dbg !128
  store i32 %call259, i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKGROUPNUM_coordinates, align 4, !dbg !128, !tbaa !129
  br label %if.end260, !dbg !128

if.end260:                                        ; preds = %if.then258, %if.end256
  %66 = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_shift_state, align 4, !dbg !128, !tbaa !129
  %cmp261 = icmp eq i32 %66, -1, !dbg !128
  br i1 %cmp261, label %if.then262, label %if.end264, !dbg !128

if.then262:                                       ; preds = %if.end260
  %call263 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([22 x i8]* @.str66, i64 0, i64 0)) #3, !dbg !128
  store i32 %call263, i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_shift_state, align 4, !dbg !128, !tbaa !129
  br label %if.end264, !dbg !128

if.end264:                                        ; preds = %if.then262, %if.end260
  %67 = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_x, align 4, !dbg !128, !tbaa !129
  %cmp265 = icmp eq i32 %67, -1, !dbg !128
  br i1 %cmp265, label %if.then266, label %if.end268, !dbg !128

if.then266:                                       ; preds = %if.end264
  %call267 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([8 x i8]* @.str67, i64 0, i64 0)) #3, !dbg !128
  store i32 %call267, i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_x, align 4, !dbg !128, !tbaa !129
  br label %if.end268, !dbg !128

if.end268:                                        ; preds = %if.then266, %if.end264
  %68 = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_y, align 4, !dbg !128, !tbaa !129
  %cmp269 = icmp eq i32 %68, -1, !dbg !128
  br i1 %cmp269, label %if.then270, label %if.end272, !dbg !128

if.then270:                                       ; preds = %if.end268
  %call271 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([8 x i8]* @.str68, i64 0, i64 0)) #3, !dbg !128
  store i32 %call271, i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_y, align 4, !dbg !128, !tbaa !129
  br label %if.end272, !dbg !128

if.end272:                                        ; preds = %if.then270, %if.end268
  %69 = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_z, align 4, !dbg !128, !tbaa !129
  %cmp273 = icmp eq i32 %69, -1, !dbg !128
  br i1 %cmp273, label %if.then274, label %if.end276, !dbg !128

if.then274:                                       ; preds = %if.end272
  %call275 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([8 x i8]* @.str69, i64 0, i64 0)) #3, !dbg !128
  store i32 %call275, i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_z, align 4, !dbg !128, !tbaa !129
  br label %if.end276, !dbg !128

if.end276:                                        ; preds = %if.end272, %if.then274
  %70 = bitcast i8* %fpointer to void (i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, double*, double*, double*, double*, i32*, i32*, i32*, i32*, %struct.cGH*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, double*, double*, double*, double*, double*, double*, double*, i32*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, i32*, double*, double*, double*)*, !dbg !132
  tail call void @llvm.dbg.value(metadata !{void (i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, double*, double*, double*, double*, i32*, i32*, i32*, i32*, %struct.cGH*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, double*, double*, double*, double*, double*, double*, double*, i32*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, i32*, double*, double*, double*)* %70}, i64 0, metadata !50), !dbg !132
  %cctk_dim = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 0, !dbg !133
  %cctk_gsh = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 2, !dbg !133
  %71 = load i32** %cctk_gsh, align 8, !dbg !133, !tbaa !134
  %cctk_lsh = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 3, !dbg !133
  %72 = load i32** %cctk_lsh, align 8, !dbg !133, !tbaa !134
  %cctk_lbnd = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 4, !dbg !133
  %73 = load i32** %cctk_lbnd, align 8, !dbg !133, !tbaa !134
  %cctk_ubnd = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 5, !dbg !133
  %74 = load i32** %cctk_ubnd, align 8, !dbg !133, !tbaa !134
  %cctk_lssh = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 6, !dbg !133
  %75 = load i32** %cctk_lssh, align 8, !dbg !133, !tbaa !134
  %cctk_from = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 8, !dbg !133
  %76 = load i32** %cctk_from, align 8, !dbg !133, !tbaa !134
  %cctk_to = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 7, !dbg !133
  %77 = load i32** %cctk_to, align 8, !dbg !133, !tbaa !134
  %cctk_bbox = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 12, !dbg !133
  %78 = load i32** %cctk_bbox, align 8, !dbg !133, !tbaa !134
  %cctk_delta_time = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 9, !dbg !133
  %cctk_time = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 16, !dbg !133
  %cctk_delta_space = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 10, !dbg !133
  %79 = load double** %cctk_delta_space, align 8, !dbg !133, !tbaa !134
  %cctk_origin_space = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 11, !dbg !133
  %80 = load double** %cctk_origin_space, align 8, !dbg !133, !tbaa !134
  %cctk_levfac = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 13, !dbg !133
  %81 = load i32** %cctk_levfac, align 8, !dbg !133, !tbaa !134
  %cctk_convlevel = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 14, !dbg !133
  %cctk_nghostzones = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 15, !dbg !133
  %82 = load i32** %cctk_nghostzones, align 8, !dbg !133, !tbaa !134
  %cctk_iteration = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 1, !dbg !133
  %83 = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKGROUPNUM_detofg, align 4, !dbg !133, !tbaa !129
  %cmp277 = icmp slt i32 %83, 0, !dbg !133
  br i1 %cmp277, label %cond.end306, label %cond.false, !dbg !133

cond.false:                                       ; preds = %if.end276
  %call278 = tail call i32 @CCTK_QueryGroupStorage(%struct.cGH* %GH, i8* getelementptr inbounds ([17 x i8]* @.str1, i64 0, i64 0)) #3, !dbg !133
  %tobool = icmp eq i32 %call278, 0, !dbg !133
  br i1 %tobool, label %cond.end282, label %cond.true279, !dbg !133

cond.true279:                                     ; preds = %cond.false
  %call280 = tail call i32* @CCTK_ArrayGroupSize(%struct.cGH* %GH, i32 0, i8* getelementptr inbounds ([17 x i8]* @.str1, i64 0, i64 0)) #3, !dbg !133
  br label %cond.end282, !dbg !133

cond.end282:                                      ; preds = %cond.false, %cond.true279
  %cond283.ph = phi i32* [ @_cctk_one, %cond.false ], [ %call280, %cond.true279 ]
  %.pr = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKGROUPNUM_detofg, align 4, !dbg !133, !tbaa !129
  %cmp284 = icmp slt i32 %.pr, 0, !dbg !133
  br i1 %cmp284, label %cond.end306, label %cond.false286, !dbg !133

cond.false286:                                    ; preds = %cond.end282
  %call287 = tail call i32 @CCTK_QueryGroupStorage(%struct.cGH* %GH, i8* getelementptr inbounds ([17 x i8]* @.str1, i64 0, i64 0)) #3, !dbg !133
  %tobool288 = icmp eq i32 %call287, 0, !dbg !133
  br i1 %tobool288, label %cond.end294, label %cond.true289, !dbg !133

cond.true289:                                     ; preds = %cond.false286
  %call290 = tail call i32* @CCTK_ArrayGroupSize(%struct.cGH* %GH, i32 1, i8* getelementptr inbounds ([17 x i8]* @.str1, i64 0, i64 0)) #3, !dbg !133
  br label %cond.end294, !dbg !133

cond.end294:                                      ; preds = %cond.false286, %cond.true289
  %cond295.ph.ph = phi i32* [ @_cctk_one, %cond.false286 ], [ %call290, %cond.true289 ]
  %.pr1416.pr = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKGROUPNUM_detofg, align 4, !dbg !133, !tbaa !129
  %cmp296 = icmp slt i32 %.pr1416.pr, 0, !dbg !133
  br i1 %cmp296, label %cond.end306, label %cond.false298, !dbg !133

cond.false298:                                    ; preds = %cond.end294
  %call299 = tail call i32 @CCTK_QueryGroupStorage(%struct.cGH* %GH, i8* getelementptr inbounds ([17 x i8]* @.str1, i64 0, i64 0)) #3, !dbg !133
  %tobool300 = icmp eq i32 %call299, 0, !dbg !133
  br i1 %tobool300, label %cond.end306, label %cond.true301, !dbg !133

cond.true301:                                     ; preds = %cond.false298
  %call302 = tail call i32* @CCTK_ArrayGroupSize(%struct.cGH* %GH, i32 2, i8* getelementptr inbounds ([17 x i8]* @.str1, i64 0, i64 0)) #3, !dbg !133
  br label %cond.end306, !dbg !133

cond.end306:                                      ; preds = %cond.false298, %cond.end294, %cond.end282, %if.end276, %cond.true301
  %cond2951419 = phi i32* [ %cond295.ph.ph, %cond.true301 ], [ @_cctk_one, %if.end276 ], [ @_cctk_one, %cond.end282 ], [ %cond295.ph.ph, %cond.end294 ], [ %cond295.ph.ph, %cond.false298 ]
  %cond28314151418 = phi i32* [ %cond283.ph, %cond.true301 ], [ @_cctk_one, %if.end276 ], [ %cond283.ph, %cond.end282 ], [ %cond283.ph, %cond.end294 ], [ %cond283.ph, %cond.false298 ]
  %cond307 = phi i32* [ %call302, %cond.true301 ], [ @_cctk_one, %if.end276 ], [ @_cctk_one, %cond.end282 ], [ @_cctk_one, %cond.end294 ], [ @_cctk_one, %cond.false298 ], !dbg !133
  %84 = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKGROUPNUM_spherical_curv, align 4, !dbg !133, !tbaa !129
  %cmp308 = icmp slt i32 %84, 0, !dbg !133
  br i1 %cmp308, label %cond.end342, label %cond.false310, !dbg !133

cond.false310:                                    ; preds = %cond.end306
  %call311 = tail call i32 @CCTK_QueryGroupStorage(%struct.cGH* %GH, i8* getelementptr inbounds ([25 x i8]* @.str10, i64 0, i64 0)) #3, !dbg !133
  %tobool312 = icmp eq i32 %call311, 0, !dbg !133
  br i1 %tobool312, label %cond.end318, label %cond.true313, !dbg !133

cond.true313:                                     ; preds = %cond.false310
  %call314 = tail call i32* @CCTK_ArrayGroupSize(%struct.cGH* %GH, i32 0, i8* getelementptr inbounds ([25 x i8]* @.str10, i64 0, i64 0)) #3, !dbg !133
  br label %cond.end318, !dbg !133

cond.end318:                                      ; preds = %cond.false310, %cond.true313
  %cond319.ph = phi i32* [ @_cctk_one, %cond.false310 ], [ %call314, %cond.true313 ]
  %.pr1420 = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKGROUPNUM_spherical_curv, align 4, !dbg !133, !tbaa !129
  %cmp320 = icmp slt i32 %.pr1420, 0, !dbg !133
  br i1 %cmp320, label %cond.end342, label %cond.false322, !dbg !133

cond.false322:                                    ; preds = %cond.end318
  %call323 = tail call i32 @CCTK_QueryGroupStorage(%struct.cGH* %GH, i8* getelementptr inbounds ([25 x i8]* @.str10, i64 0, i64 0)) #3, !dbg !133
  %tobool324 = icmp eq i32 %call323, 0, !dbg !133
  br i1 %tobool324, label %cond.end330, label %cond.true325, !dbg !133

cond.true325:                                     ; preds = %cond.false322
  %call326 = tail call i32* @CCTK_ArrayGroupSize(%struct.cGH* %GH, i32 1, i8* getelementptr inbounds ([25 x i8]* @.str10, i64 0, i64 0)) #3, !dbg !133
  br label %cond.end330, !dbg !133

cond.end330:                                      ; preds = %cond.false322, %cond.true325
  %cond331.ph.ph = phi i32* [ @_cctk_one, %cond.false322 ], [ %call326, %cond.true325 ]
  %.pr1423.pr = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKGROUPNUM_spherical_curv, align 4, !dbg !133, !tbaa !129
  %cmp332 = icmp slt i32 %.pr1423.pr, 0, !dbg !133
  br i1 %cmp332, label %cond.end342, label %cond.false334, !dbg !133

cond.false334:                                    ; preds = %cond.end330
  %call335 = tail call i32 @CCTK_QueryGroupStorage(%struct.cGH* %GH, i8* getelementptr inbounds ([25 x i8]* @.str10, i64 0, i64 0)) #3, !dbg !133
  %tobool336 = icmp eq i32 %call335, 0, !dbg !133
  br i1 %tobool336, label %cond.end342, label %cond.true337, !dbg !133

cond.true337:                                     ; preds = %cond.false334
  %call338 = tail call i32* @CCTK_ArrayGroupSize(%struct.cGH* %GH, i32 2, i8* getelementptr inbounds ([25 x i8]* @.str10, i64 0, i64 0)) #3, !dbg !133
  br label %cond.end342, !dbg !133

cond.end342:                                      ; preds = %cond.false334, %cond.end330, %cond.end318, %cond.end306, %cond.true337
  %cond3311426 = phi i32* [ %cond331.ph.ph, %cond.true337 ], [ @_cctk_one, %cond.end306 ], [ @_cctk_one, %cond.end318 ], [ %cond331.ph.ph, %cond.end330 ], [ %cond331.ph.ph, %cond.false334 ]
  %cond31914221425 = phi i32* [ %cond319.ph, %cond.true337 ], [ @_cctk_one, %cond.end306 ], [ %cond319.ph, %cond.end318 ], [ %cond319.ph, %cond.end330 ], [ %cond319.ph, %cond.false334 ]
  %cond343 = phi i32* [ %call338, %cond.true337 ], [ @_cctk_one, %cond.end306 ], [ @_cctk_one, %cond.end318 ], [ @_cctk_one, %cond.end330 ], [ @_cctk_one, %cond.false334 ], !dbg !133
  %85 = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKGROUPNUM_spherical_metric, align 4, !dbg !133, !tbaa !129
  %cmp344 = icmp slt i32 %85, 0, !dbg !133
  br i1 %cmp344, label %cond.end378, label %cond.false346, !dbg !133

cond.false346:                                    ; preds = %cond.end342
  %call347 = tail call i32 @CCTK_QueryGroupStorage(%struct.cGH* %GH, i8* getelementptr inbounds ([27 x i8]* @.str3, i64 0, i64 0)) #3, !dbg !133
  %tobool348 = icmp eq i32 %call347, 0, !dbg !133
  br i1 %tobool348, label %cond.end354, label %cond.true349, !dbg !133

cond.true349:                                     ; preds = %cond.false346
  %call350 = tail call i32* @CCTK_ArrayGroupSize(%struct.cGH* %GH, i32 0, i8* getelementptr inbounds ([27 x i8]* @.str3, i64 0, i64 0)) #3, !dbg !133
  br label %cond.end354, !dbg !133

cond.end354:                                      ; preds = %cond.false346, %cond.true349
  %cond355.ph = phi i32* [ @_cctk_one, %cond.false346 ], [ %call350, %cond.true349 ]
  %.pr1427 = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKGROUPNUM_spherical_metric, align 4, !dbg !133, !tbaa !129
  %cmp356 = icmp slt i32 %.pr1427, 0, !dbg !133
  br i1 %cmp356, label %cond.end378, label %cond.false358, !dbg !133

cond.false358:                                    ; preds = %cond.end354
  %call359 = tail call i32 @CCTK_QueryGroupStorage(%struct.cGH* %GH, i8* getelementptr inbounds ([27 x i8]* @.str3, i64 0, i64 0)) #3, !dbg !133
  %tobool360 = icmp eq i32 %call359, 0, !dbg !133
  br i1 %tobool360, label %cond.end366, label %cond.true361, !dbg !133

cond.true361:                                     ; preds = %cond.false358
  %call362 = tail call i32* @CCTK_ArrayGroupSize(%struct.cGH* %GH, i32 1, i8* getelementptr inbounds ([27 x i8]* @.str3, i64 0, i64 0)) #3, !dbg !133
  br label %cond.end366, !dbg !133

cond.end366:                                      ; preds = %cond.false358, %cond.true361
  %cond367.ph.ph = phi i32* [ @_cctk_one, %cond.false358 ], [ %call362, %cond.true361 ]
  %.pr1430.pr = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKGROUPNUM_spherical_metric, align 4, !dbg !133, !tbaa !129
  %cmp368 = icmp slt i32 %.pr1430.pr, 0, !dbg !133
  br i1 %cmp368, label %cond.end378, label %cond.false370, !dbg !133

cond.false370:                                    ; preds = %cond.end366
  %call371 = tail call i32 @CCTK_QueryGroupStorage(%struct.cGH* %GH, i8* getelementptr inbounds ([27 x i8]* @.str3, i64 0, i64 0)) #3, !dbg !133
  %tobool372 = icmp eq i32 %call371, 0, !dbg !133
  br i1 %tobool372, label %cond.end378, label %cond.true373, !dbg !133

cond.true373:                                     ; preds = %cond.false370
  %call374 = tail call i32* @CCTK_ArrayGroupSize(%struct.cGH* %GH, i32 2, i8* getelementptr inbounds ([27 x i8]* @.str3, i64 0, i64 0)) #3, !dbg !133
  br label %cond.end378, !dbg !133

cond.end378:                                      ; preds = %cond.false370, %cond.end366, %cond.end354, %cond.end342, %cond.true373
  %cond3671433 = phi i32* [ %cond367.ph.ph, %cond.true373 ], [ @_cctk_one, %cond.end342 ], [ @_cctk_one, %cond.end354 ], [ %cond367.ph.ph, %cond.end366 ], [ %cond367.ph.ph, %cond.false370 ]
  %cond35514291432 = phi i32* [ %cond355.ph, %cond.true373 ], [ @_cctk_one, %cond.end342 ], [ %cond355.ph, %cond.end354 ], [ %cond355.ph, %cond.end366 ], [ %cond355.ph, %cond.false370 ]
  %cond379 = phi i32* [ %call374, %cond.true373 ], [ @_cctk_one, %cond.end342 ], [ @_cctk_one, %cond.end354 ], [ @_cctk_one, %cond.end366 ], [ @_cctk_one, %cond.false370 ], !dbg !133
  %86 = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKGROUPNUM_trace_of_K, align 4, !dbg !133, !tbaa !129
  %cmp380 = icmp slt i32 %86, 0, !dbg !133
  br i1 %cmp380, label %cond.end414, label %cond.false382, !dbg !133

cond.false382:                                    ; preds = %cond.end378
  %call383 = tail call i32 @CCTK_QueryGroupStorage(%struct.cGH* %GH, i8* getelementptr inbounds ([21 x i8]* @.str17, i64 0, i64 0)) #3, !dbg !133
  %tobool384 = icmp eq i32 %call383, 0, !dbg !133
  br i1 %tobool384, label %cond.end390, label %cond.true385, !dbg !133

cond.true385:                                     ; preds = %cond.false382
  %call386 = tail call i32* @CCTK_ArrayGroupSize(%struct.cGH* %GH, i32 0, i8* getelementptr inbounds ([21 x i8]* @.str17, i64 0, i64 0)) #3, !dbg !133
  br label %cond.end390, !dbg !133

cond.end390:                                      ; preds = %cond.false382, %cond.true385
  %cond391.ph = phi i32* [ @_cctk_one, %cond.false382 ], [ %call386, %cond.true385 ]
  %.pr1434 = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKGROUPNUM_trace_of_K, align 4, !dbg !133, !tbaa !129
  %cmp392 = icmp slt i32 %.pr1434, 0, !dbg !133
  br i1 %cmp392, label %cond.end414, label %cond.false394, !dbg !133

cond.false394:                                    ; preds = %cond.end390
  %call395 = tail call i32 @CCTK_QueryGroupStorage(%struct.cGH* %GH, i8* getelementptr inbounds ([21 x i8]* @.str17, i64 0, i64 0)) #3, !dbg !133
  %tobool396 = icmp eq i32 %call395, 0, !dbg !133
  br i1 %tobool396, label %cond.end402, label %cond.true397, !dbg !133

cond.true397:                                     ; preds = %cond.false394
  %call398 = tail call i32* @CCTK_ArrayGroupSize(%struct.cGH* %GH, i32 1, i8* getelementptr inbounds ([21 x i8]* @.str17, i64 0, i64 0)) #3, !dbg !133
  br label %cond.end402, !dbg !133

cond.end402:                                      ; preds = %cond.false394, %cond.true397
  %cond403.ph.ph = phi i32* [ @_cctk_one, %cond.false394 ], [ %call398, %cond.true397 ]
  %.pr1437.pr = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKGROUPNUM_trace_of_K, align 4, !dbg !133, !tbaa !129
  %cmp404 = icmp slt i32 %.pr1437.pr, 0, !dbg !133
  br i1 %cmp404, label %cond.end414, label %cond.false406, !dbg !133

cond.false406:                                    ; preds = %cond.end402
  %call407 = tail call i32 @CCTK_QueryGroupStorage(%struct.cGH* %GH, i8* getelementptr inbounds ([21 x i8]* @.str17, i64 0, i64 0)) #3, !dbg !133
  %tobool408 = icmp eq i32 %call407, 0, !dbg !133
  br i1 %tobool408, label %cond.end414, label %cond.true409, !dbg !133

cond.true409:                                     ; preds = %cond.false406
  %call410 = tail call i32* @CCTK_ArrayGroupSize(%struct.cGH* %GH, i32 2, i8* getelementptr inbounds ([21 x i8]* @.str17, i64 0, i64 0)) #3, !dbg !133
  br label %cond.end414, !dbg !133

cond.end414:                                      ; preds = %cond.false406, %cond.end402, %cond.end390, %cond.end378, %cond.true409
  %cond4031440 = phi i32* [ %cond403.ph.ph, %cond.true409 ], [ @_cctk_one, %cond.end378 ], [ @_cctk_one, %cond.end390 ], [ %cond403.ph.ph, %cond.end402 ], [ %cond403.ph.ph, %cond.false406 ]
  %cond39114361439 = phi i32* [ %cond391.ph, %cond.true409 ], [ @_cctk_one, %cond.end378 ], [ %cond391.ph, %cond.end390 ], [ %cond391.ph, %cond.end402 ], [ %cond391.ph, %cond.false406 ]
  %cond415 = phi i32* [ %call410, %cond.true409 ], [ @_cctk_one, %cond.end378 ], [ @_cctk_one, %cond.end390 ], [ @_cctk_one, %cond.end402 ], [ @_cctk_one, %cond.false406 ], !dbg !133
  %87 = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_detg, align 4, !dbg !133, !tbaa !129
  %cmp416 = icmp slt i32 %87, 0, !dbg !133
  br i1 %cmp416, label %cond.end420, label %cond.false418, !dbg !133

cond.false418:                                    ; preds = %cond.end414
  %idxprom = sext i32 %87 to i64, !dbg !133
  %data = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17, !dbg !133
  %88 = load i8**** %data, align 8, !dbg !133, !tbaa !134
  %arrayidx = getelementptr inbounds i8*** %88, i64 %idxprom, !dbg !133
  %89 = load i8*** %arrayidx, align 8, !dbg !133, !tbaa !134
  %90 = load i8** %89, align 8, !dbg !133, !tbaa !134
  %phitmp = bitcast i8* %90 to double*, !dbg !133
  br label %cond.end420, !dbg !133

cond.end420:                                      ; preds = %cond.end414, %cond.false418
  %cond421 = phi double* [ %phitmp, %cond.false418 ], [ null, %cond.end414 ]
  %91 = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_gpp, align 4, !dbg !133, !tbaa !129
  %cmp422 = icmp slt i32 %91, 0, !dbg !133
  br i1 %cmp422, label %cond.end429, label %cond.false424, !dbg !133

cond.false424:                                    ; preds = %cond.end420
  %idxprom425 = sext i32 %91 to i64, !dbg !133
  %data426 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17, !dbg !133
  %92 = load i8**** %data426, align 8, !dbg !133, !tbaa !134
  %arrayidx427 = getelementptr inbounds i8*** %92, i64 %idxprom425, !dbg !133
  %93 = load i8*** %arrayidx427, align 8, !dbg !133, !tbaa !134
  %94 = load i8** %93, align 8, !dbg !133, !tbaa !134
  %phitmp1362 = bitcast i8* %94 to double*, !dbg !133
  br label %cond.end429, !dbg !133

cond.end429:                                      ; preds = %cond.end420, %cond.false424
  %cond430 = phi double* [ %phitmp1362, %cond.false424 ], [ null, %cond.end420 ]
  %95 = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_gqp, align 4, !dbg !133, !tbaa !129
  %cmp431 = icmp slt i32 %95, 0, !dbg !133
  br i1 %cmp431, label %cond.end438, label %cond.false433, !dbg !133

cond.false433:                                    ; preds = %cond.end429
  %idxprom434 = sext i32 %95 to i64, !dbg !133
  %data435 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17, !dbg !133
  %96 = load i8**** %data435, align 8, !dbg !133, !tbaa !134
  %arrayidx436 = getelementptr inbounds i8*** %96, i64 %idxprom434, !dbg !133
  %97 = load i8*** %arrayidx436, align 8, !dbg !133, !tbaa !134
  %98 = load i8** %97, align 8, !dbg !133, !tbaa !134
  %phitmp1363 = bitcast i8* %98 to double*, !dbg !133
  br label %cond.end438, !dbg !133

cond.end438:                                      ; preds = %cond.end429, %cond.false433
  %cond439 = phi double* [ %phitmp1363, %cond.false433 ], [ null, %cond.end429 ]
  %99 = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_gqq, align 4, !dbg !133, !tbaa !129
  %cmp440 = icmp slt i32 %99, 0, !dbg !133
  br i1 %cmp440, label %cond.end447, label %cond.false442, !dbg !133

cond.false442:                                    ; preds = %cond.end438
  %idxprom443 = sext i32 %99 to i64, !dbg !133
  %data444 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17, !dbg !133
  %100 = load i8**** %data444, align 8, !dbg !133, !tbaa !134
  %arrayidx445 = getelementptr inbounds i8*** %100, i64 %idxprom443, !dbg !133
  %101 = load i8*** %arrayidx445, align 8, !dbg !133, !tbaa !134
  %102 = load i8** %101, align 8, !dbg !133, !tbaa !134
  %phitmp1364 = bitcast i8* %102 to double*, !dbg !133
  br label %cond.end447, !dbg !133

cond.end447:                                      ; preds = %cond.end438, %cond.false442
  %cond448 = phi double* [ %phitmp1364, %cond.false442 ], [ null, %cond.end438 ]
  %103 = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_grp, align 4, !dbg !133, !tbaa !129
  %cmp449 = icmp slt i32 %103, 0, !dbg !133
  br i1 %cmp449, label %cond.end456, label %cond.false451, !dbg !133

cond.false451:                                    ; preds = %cond.end447
  %idxprom452 = sext i32 %103 to i64, !dbg !133
  %data453 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17, !dbg !133
  %104 = load i8**** %data453, align 8, !dbg !133, !tbaa !134
  %arrayidx454 = getelementptr inbounds i8*** %104, i64 %idxprom452, !dbg !133
  %105 = load i8*** %arrayidx454, align 8, !dbg !133, !tbaa !134
  %106 = load i8** %105, align 8, !dbg !133, !tbaa !134
  %phitmp1365 = bitcast i8* %106 to double*, !dbg !133
  br label %cond.end456, !dbg !133

cond.end456:                                      ; preds = %cond.end447, %cond.false451
  %cond457 = phi double* [ %phitmp1365, %cond.false451 ], [ null, %cond.end447 ]
  %107 = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_grq, align 4, !dbg !133, !tbaa !129
  %cmp458 = icmp slt i32 %107, 0, !dbg !133
  br i1 %cmp458, label %cond.end465, label %cond.false460, !dbg !133

cond.false460:                                    ; preds = %cond.end456
  %idxprom461 = sext i32 %107 to i64, !dbg !133
  %data462 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17, !dbg !133
  %108 = load i8**** %data462, align 8, !dbg !133, !tbaa !134
  %arrayidx463 = getelementptr inbounds i8*** %108, i64 %idxprom461, !dbg !133
  %109 = load i8*** %arrayidx463, align 8, !dbg !133, !tbaa !134
  %110 = load i8** %109, align 8, !dbg !133, !tbaa !134
  %phitmp1366 = bitcast i8* %110 to double*, !dbg !133
  br label %cond.end465, !dbg !133

cond.end465:                                      ; preds = %cond.end456, %cond.false460
  %cond466 = phi double* [ %phitmp1366, %cond.false460 ], [ null, %cond.end456 ]
  %111 = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_grr, align 4, !dbg !133, !tbaa !129
  %cmp467 = icmp slt i32 %111, 0, !dbg !133
  br i1 %cmp467, label %cond.end474, label %cond.false469, !dbg !133

cond.false469:                                    ; preds = %cond.end465
  %idxprom470 = sext i32 %111 to i64, !dbg !133
  %data471 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17, !dbg !133
  %112 = load i8**** %data471, align 8, !dbg !133, !tbaa !134
  %arrayidx472 = getelementptr inbounds i8*** %112, i64 %idxprom470, !dbg !133
  %113 = load i8*** %arrayidx472, align 8, !dbg !133, !tbaa !134
  %114 = load i8** %113, align 8, !dbg !133, !tbaa !134
  %phitmp1367 = bitcast i8* %114 to double*, !dbg !133
  br label %cond.end474, !dbg !133

cond.end474:                                      ; preds = %cond.end465, %cond.false469
  %cond475 = phi double* [ %phitmp1367, %cond.false469 ], [ null, %cond.end465 ]
  %115 = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_kpp, align 4, !dbg !133, !tbaa !129
  %cmp476 = icmp slt i32 %115, 0, !dbg !133
  br i1 %cmp476, label %cond.end483, label %cond.false478, !dbg !133

cond.false478:                                    ; preds = %cond.end474
  %idxprom479 = sext i32 %115 to i64, !dbg !133
  %data480 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17, !dbg !133
  %116 = load i8**** %data480, align 8, !dbg !133, !tbaa !134
  %arrayidx481 = getelementptr inbounds i8*** %116, i64 %idxprom479, !dbg !133
  %117 = load i8*** %arrayidx481, align 8, !dbg !133, !tbaa !134
  %118 = load i8** %117, align 8, !dbg !133, !tbaa !134
  %phitmp1368 = bitcast i8* %118 to double*, !dbg !133
  br label %cond.end483, !dbg !133

cond.end483:                                      ; preds = %cond.end474, %cond.false478
  %cond484 = phi double* [ %phitmp1368, %cond.false478 ], [ null, %cond.end474 ]
  %119 = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_kqp, align 4, !dbg !133, !tbaa !129
  %cmp485 = icmp slt i32 %119, 0, !dbg !133
  br i1 %cmp485, label %cond.end492, label %cond.false487, !dbg !133

cond.false487:                                    ; preds = %cond.end483
  %idxprom488 = sext i32 %119 to i64, !dbg !133
  %data489 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17, !dbg !133
  %120 = load i8**** %data489, align 8, !dbg !133, !tbaa !134
  %arrayidx490 = getelementptr inbounds i8*** %120, i64 %idxprom488, !dbg !133
  %121 = load i8*** %arrayidx490, align 8, !dbg !133, !tbaa !134
  %122 = load i8** %121, align 8, !dbg !133, !tbaa !134
  %phitmp1369 = bitcast i8* %122 to double*, !dbg !133
  br label %cond.end492, !dbg !133

cond.end492:                                      ; preds = %cond.end483, %cond.false487
  %cond493 = phi double* [ %phitmp1369, %cond.false487 ], [ null, %cond.end483 ]
  %123 = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_kqq, align 4, !dbg !133, !tbaa !129
  %cmp494 = icmp slt i32 %123, 0, !dbg !133
  br i1 %cmp494, label %cond.end501, label %cond.false496, !dbg !133

cond.false496:                                    ; preds = %cond.end492
  %idxprom497 = sext i32 %123 to i64, !dbg !133
  %data498 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17, !dbg !133
  %124 = load i8**** %data498, align 8, !dbg !133, !tbaa !134
  %arrayidx499 = getelementptr inbounds i8*** %124, i64 %idxprom497, !dbg !133
  %125 = load i8*** %arrayidx499, align 8, !dbg !133, !tbaa !134
  %126 = load i8** %125, align 8, !dbg !133, !tbaa !134
  %phitmp1370 = bitcast i8* %126 to double*, !dbg !133
  br label %cond.end501, !dbg !133

cond.end501:                                      ; preds = %cond.end492, %cond.false496
  %cond502 = phi double* [ %phitmp1370, %cond.false496 ], [ null, %cond.end492 ]
  %127 = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_krp, align 4, !dbg !133, !tbaa !129
  %cmp503 = icmp slt i32 %127, 0, !dbg !133
  br i1 %cmp503, label %cond.end510, label %cond.false505, !dbg !133

cond.false505:                                    ; preds = %cond.end501
  %idxprom506 = sext i32 %127 to i64, !dbg !133
  %data507 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17, !dbg !133
  %128 = load i8**** %data507, align 8, !dbg !133, !tbaa !134
  %arrayidx508 = getelementptr inbounds i8*** %128, i64 %idxprom506, !dbg !133
  %129 = load i8*** %arrayidx508, align 8, !dbg !133, !tbaa !134
  %130 = load i8** %129, align 8, !dbg !133, !tbaa !134
  %phitmp1371 = bitcast i8* %130 to double*, !dbg !133
  br label %cond.end510, !dbg !133

cond.end510:                                      ; preds = %cond.end501, %cond.false505
  %cond511 = phi double* [ %phitmp1371, %cond.false505 ], [ null, %cond.end501 ]
  %131 = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_krq, align 4, !dbg !133, !tbaa !129
  %cmp512 = icmp slt i32 %131, 0, !dbg !133
  br i1 %cmp512, label %cond.end519, label %cond.false514, !dbg !133

cond.false514:                                    ; preds = %cond.end510
  %idxprom515 = sext i32 %131 to i64, !dbg !133
  %data516 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17, !dbg !133
  %132 = load i8**** %data516, align 8, !dbg !133, !tbaa !134
  %arrayidx517 = getelementptr inbounds i8*** %132, i64 %idxprom515, !dbg !133
  %133 = load i8*** %arrayidx517, align 8, !dbg !133, !tbaa !134
  %134 = load i8** %133, align 8, !dbg !133, !tbaa !134
  %phitmp1372 = bitcast i8* %134 to double*, !dbg !133
  br label %cond.end519, !dbg !133

cond.end519:                                      ; preds = %cond.end510, %cond.false514
  %cond520 = phi double* [ %phitmp1372, %cond.false514 ], [ null, %cond.end510 ]
  %135 = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_krr, align 4, !dbg !133, !tbaa !129
  %cmp521 = icmp slt i32 %135, 0, !dbg !133
  br i1 %cmp521, label %cond.end528, label %cond.false523, !dbg !133

cond.false523:                                    ; preds = %cond.end519
  %idxprom524 = sext i32 %135 to i64, !dbg !133
  %data525 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17, !dbg !133
  %136 = load i8**** %data525, align 8, !dbg !133, !tbaa !134
  %arrayidx526 = getelementptr inbounds i8*** %136, i64 %idxprom524, !dbg !133
  %137 = load i8*** %arrayidx526, align 8, !dbg !133, !tbaa !134
  %138 = load i8** %137, align 8, !dbg !133, !tbaa !134
  %phitmp1373 = bitcast i8* %138 to double*, !dbg !133
  br label %cond.end528, !dbg !133

cond.end528:                                      ; preds = %cond.end519, %cond.false523
  %cond529 = phi double* [ %phitmp1373, %cond.false523 ], [ null, %cond.end519 ]
  %139 = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_trK, align 4, !dbg !133, !tbaa !129
  %cmp530 = icmp slt i32 %139, 0, !dbg !133
  br i1 %cmp530, label %cond.end537, label %cond.false532, !dbg !133

cond.false532:                                    ; preds = %cond.end528
  %idxprom533 = sext i32 %139 to i64, !dbg !133
  %data534 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17, !dbg !133
  %140 = load i8**** %data534, align 8, !dbg !133, !tbaa !134
  %arrayidx535 = getelementptr inbounds i8*** %140, i64 %idxprom533, !dbg !133
  %141 = load i8*** %arrayidx535, align 8, !dbg !133, !tbaa !134
  %142 = load i8** %141, align 8, !dbg !133, !tbaa !134
  %phitmp1374 = bitcast i8* %142 to double*, !dbg !133
  br label %cond.end537, !dbg !133

cond.end537:                                      ; preds = %cond.end528, %cond.false532
  %cond538 = phi double* [ %phitmp1374, %cond.false532 ], [ null, %cond.end528 ]
  %143 = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKGROUPNUM_confac, align 4, !dbg !133, !tbaa !129
  %cmp539 = icmp slt i32 %143, 0, !dbg !133
  br i1 %cmp539, label %cond.end573, label %cond.false541, !dbg !133

cond.false541:                                    ; preds = %cond.end537
  %call542 = tail call i32 @CCTK_QueryGroupStorage(%struct.cGH* %GH, i8* getelementptr inbounds ([17 x i8]* @.str52, i64 0, i64 0)) #3, !dbg !133
  %tobool543 = icmp eq i32 %call542, 0, !dbg !133
  br i1 %tobool543, label %cond.end549, label %cond.true544, !dbg !133

cond.true544:                                     ; preds = %cond.false541
  %call545 = tail call i32* @CCTK_ArrayGroupSize(%struct.cGH* %GH, i32 0, i8* getelementptr inbounds ([17 x i8]* @.str52, i64 0, i64 0)) #3, !dbg !133
  br label %cond.end549, !dbg !133

cond.end549:                                      ; preds = %cond.false541, %cond.true544
  %cond550.ph = phi i32* [ @_cctk_one, %cond.false541 ], [ %call545, %cond.true544 ]
  %.pr1441 = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKGROUPNUM_confac, align 4, !dbg !133, !tbaa !129
  %cmp551 = icmp slt i32 %.pr1441, 0, !dbg !133
  br i1 %cmp551, label %cond.end573, label %cond.false553, !dbg !133

cond.false553:                                    ; preds = %cond.end549
  %call554 = tail call i32 @CCTK_QueryGroupStorage(%struct.cGH* %GH, i8* getelementptr inbounds ([17 x i8]* @.str52, i64 0, i64 0)) #3, !dbg !133
  %tobool555 = icmp eq i32 %call554, 0, !dbg !133
  br i1 %tobool555, label %cond.end561, label %cond.true556, !dbg !133

cond.true556:                                     ; preds = %cond.false553
  %call557 = tail call i32* @CCTK_ArrayGroupSize(%struct.cGH* %GH, i32 1, i8* getelementptr inbounds ([17 x i8]* @.str52, i64 0, i64 0)) #3, !dbg !133
  br label %cond.end561, !dbg !133

cond.end561:                                      ; preds = %cond.false553, %cond.true556
  %cond562.ph.ph = phi i32* [ @_cctk_one, %cond.false553 ], [ %call557, %cond.true556 ]
  %.pr1444.pr = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKGROUPNUM_confac, align 4, !dbg !133, !tbaa !129
  %cmp563 = icmp slt i32 %.pr1444.pr, 0, !dbg !133
  br i1 %cmp563, label %cond.end573, label %cond.false565, !dbg !133

cond.false565:                                    ; preds = %cond.end561
  %call566 = tail call i32 @CCTK_QueryGroupStorage(%struct.cGH* %GH, i8* getelementptr inbounds ([17 x i8]* @.str52, i64 0, i64 0)) #3, !dbg !133
  %tobool567 = icmp eq i32 %call566, 0, !dbg !133
  br i1 %tobool567, label %cond.end573, label %cond.true568, !dbg !133

cond.true568:                                     ; preds = %cond.false565
  %call569 = tail call i32* @CCTK_ArrayGroupSize(%struct.cGH* %GH, i32 2, i8* getelementptr inbounds ([17 x i8]* @.str52, i64 0, i64 0)) #3, !dbg !133
  br label %cond.end573, !dbg !133

cond.end573:                                      ; preds = %cond.false565, %cond.end561, %cond.end549, %cond.end537, %cond.true568
  %cond5621447 = phi i32* [ %cond562.ph.ph, %cond.true568 ], [ @_cctk_one, %cond.end537 ], [ @_cctk_one, %cond.end549 ], [ %cond562.ph.ph, %cond.end561 ], [ %cond562.ph.ph, %cond.false565 ]
  %cond55014431446 = phi i32* [ %cond550.ph, %cond.true568 ], [ @_cctk_one, %cond.end537 ], [ %cond550.ph, %cond.end549 ], [ %cond550.ph, %cond.end561 ], [ %cond550.ph, %cond.false565 ]
  %cond574 = phi i32* [ %call569, %cond.true568 ], [ @_cctk_one, %cond.end537 ], [ @_cctk_one, %cond.end549 ], [ @_cctk_one, %cond.end561 ], [ @_cctk_one, %cond.false565 ], !dbg !133
  %144 = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKGROUPNUM_confac_1derivs, align 4, !dbg !133, !tbaa !129
  %cmp575 = icmp slt i32 %144, 0, !dbg !133
  br i1 %cmp575, label %cond.end609, label %cond.false577, !dbg !133

cond.false577:                                    ; preds = %cond.end573
  %call578 = tail call i32 @CCTK_QueryGroupStorage(%struct.cGH* %GH, i8* getelementptr inbounds ([25 x i8]* @.str54, i64 0, i64 0)) #3, !dbg !133
  %tobool579 = icmp eq i32 %call578, 0, !dbg !133
  br i1 %tobool579, label %cond.end585, label %cond.true580, !dbg !133

cond.true580:                                     ; preds = %cond.false577
  %call581 = tail call i32* @CCTK_ArrayGroupSize(%struct.cGH* %GH, i32 0, i8* getelementptr inbounds ([25 x i8]* @.str54, i64 0, i64 0)) #3, !dbg !133
  br label %cond.end585, !dbg !133

cond.end585:                                      ; preds = %cond.false577, %cond.true580
  %cond586.ph = phi i32* [ @_cctk_one, %cond.false577 ], [ %call581, %cond.true580 ]
  %.pr1448 = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKGROUPNUM_confac_1derivs, align 4, !dbg !133, !tbaa !129
  %cmp587 = icmp slt i32 %.pr1448, 0, !dbg !133
  br i1 %cmp587, label %cond.end609, label %cond.false589, !dbg !133

cond.false589:                                    ; preds = %cond.end585
  %call590 = tail call i32 @CCTK_QueryGroupStorage(%struct.cGH* %GH, i8* getelementptr inbounds ([25 x i8]* @.str54, i64 0, i64 0)) #3, !dbg !133
  %tobool591 = icmp eq i32 %call590, 0, !dbg !133
  br i1 %tobool591, label %cond.end597, label %cond.true592, !dbg !133

cond.true592:                                     ; preds = %cond.false589
  %call593 = tail call i32* @CCTK_ArrayGroupSize(%struct.cGH* %GH, i32 1, i8* getelementptr inbounds ([25 x i8]* @.str54, i64 0, i64 0)) #3, !dbg !133
  br label %cond.end597, !dbg !133

cond.end597:                                      ; preds = %cond.false589, %cond.true592
  %cond598.ph.ph = phi i32* [ @_cctk_one, %cond.false589 ], [ %call593, %cond.true592 ]
  %.pr1451.pr = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKGROUPNUM_confac_1derivs, align 4, !dbg !133, !tbaa !129
  %cmp599 = icmp slt i32 %.pr1451.pr, 0, !dbg !133
  br i1 %cmp599, label %cond.end609, label %cond.false601, !dbg !133

cond.false601:                                    ; preds = %cond.end597
  %call602 = tail call i32 @CCTK_QueryGroupStorage(%struct.cGH* %GH, i8* getelementptr inbounds ([25 x i8]* @.str54, i64 0, i64 0)) #3, !dbg !133
  %tobool603 = icmp eq i32 %call602, 0, !dbg !133
  br i1 %tobool603, label %cond.end609, label %cond.true604, !dbg !133

cond.true604:                                     ; preds = %cond.false601
  %call605 = tail call i32* @CCTK_ArrayGroupSize(%struct.cGH* %GH, i32 2, i8* getelementptr inbounds ([25 x i8]* @.str54, i64 0, i64 0)) #3, !dbg !133
  br label %cond.end609, !dbg !133

cond.end609:                                      ; preds = %cond.false601, %cond.end597, %cond.end585, %cond.end573, %cond.true604
  %cond5981454 = phi i32* [ %cond598.ph.ph, %cond.true604 ], [ @_cctk_one, %cond.end573 ], [ @_cctk_one, %cond.end585 ], [ %cond598.ph.ph, %cond.end597 ], [ %cond598.ph.ph, %cond.false601 ]
  %cond58614501453 = phi i32* [ %cond586.ph, %cond.true604 ], [ @_cctk_one, %cond.end573 ], [ %cond586.ph, %cond.end585 ], [ %cond586.ph, %cond.end597 ], [ %cond586.ph, %cond.false601 ]
  %cond610 = phi i32* [ %call605, %cond.true604 ], [ @_cctk_one, %cond.end573 ], [ @_cctk_one, %cond.end585 ], [ @_cctk_one, %cond.end597 ], [ @_cctk_one, %cond.false601 ], !dbg !133
  %145 = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKGROUPNUM_confac_2derivs, align 4, !dbg !133, !tbaa !129
  %cmp611 = icmp slt i32 %145, 0, !dbg !133
  br i1 %cmp611, label %cond.end645, label %cond.false613, !dbg !133

cond.false613:                                    ; preds = %cond.end609
  %call614 = tail call i32 @CCTK_QueryGroupStorage(%struct.cGH* %GH, i8* getelementptr inbounds ([25 x i8]* @.str56, i64 0, i64 0)) #3, !dbg !133
  %tobool615 = icmp eq i32 %call614, 0, !dbg !133
  br i1 %tobool615, label %cond.end621, label %cond.true616, !dbg !133

cond.true616:                                     ; preds = %cond.false613
  %call617 = tail call i32* @CCTK_ArrayGroupSize(%struct.cGH* %GH, i32 0, i8* getelementptr inbounds ([25 x i8]* @.str56, i64 0, i64 0)) #3, !dbg !133
  br label %cond.end621, !dbg !133

cond.end621:                                      ; preds = %cond.false613, %cond.true616
  %cond622.ph = phi i32* [ @_cctk_one, %cond.false613 ], [ %call617, %cond.true616 ]
  %.pr1455 = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKGROUPNUM_confac_2derivs, align 4, !dbg !133, !tbaa !129
  %cmp623 = icmp slt i32 %.pr1455, 0, !dbg !133
  br i1 %cmp623, label %cond.end645, label %cond.false625, !dbg !133

cond.false625:                                    ; preds = %cond.end621
  %call626 = tail call i32 @CCTK_QueryGroupStorage(%struct.cGH* %GH, i8* getelementptr inbounds ([25 x i8]* @.str56, i64 0, i64 0)) #3, !dbg !133
  %tobool627 = icmp eq i32 %call626, 0, !dbg !133
  br i1 %tobool627, label %cond.end633, label %cond.true628, !dbg !133

cond.true628:                                     ; preds = %cond.false625
  %call629 = tail call i32* @CCTK_ArrayGroupSize(%struct.cGH* %GH, i32 1, i8* getelementptr inbounds ([25 x i8]* @.str56, i64 0, i64 0)) #3, !dbg !133
  br label %cond.end633, !dbg !133

cond.end633:                                      ; preds = %cond.false625, %cond.true628
  %cond634.ph.ph = phi i32* [ @_cctk_one, %cond.false625 ], [ %call629, %cond.true628 ]
  %.pr1458.pr = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKGROUPNUM_confac_2derivs, align 4, !dbg !133, !tbaa !129
  %cmp635 = icmp slt i32 %.pr1458.pr, 0, !dbg !133
  br i1 %cmp635, label %cond.end645, label %cond.false637, !dbg !133

cond.false637:                                    ; preds = %cond.end633
  %call638 = tail call i32 @CCTK_QueryGroupStorage(%struct.cGH* %GH, i8* getelementptr inbounds ([25 x i8]* @.str56, i64 0, i64 0)) #3, !dbg !133
  %tobool639 = icmp eq i32 %call638, 0, !dbg !133
  br i1 %tobool639, label %cond.end645, label %cond.true640, !dbg !133

cond.true640:                                     ; preds = %cond.false637
  %call641 = tail call i32* @CCTK_ArrayGroupSize(%struct.cGH* %GH, i32 2, i8* getelementptr inbounds ([25 x i8]* @.str56, i64 0, i64 0)) #3, !dbg !133
  br label %cond.end645, !dbg !133

cond.end645:                                      ; preds = %cond.false637, %cond.end633, %cond.end621, %cond.end609, %cond.true640
  %cond6341461 = phi i32* [ %cond634.ph.ph, %cond.true640 ], [ @_cctk_one, %cond.end609 ], [ @_cctk_one, %cond.end621 ], [ %cond634.ph.ph, %cond.end633 ], [ %cond634.ph.ph, %cond.false637 ]
  %cond62214571460 = phi i32* [ %cond622.ph, %cond.true640 ], [ @_cctk_one, %cond.end609 ], [ %cond622.ph, %cond.end621 ], [ %cond622.ph, %cond.end633 ], [ %cond622.ph, %cond.false637 ]
  %cond646 = phi i32* [ %call641, %cond.true640 ], [ @_cctk_one, %cond.end609 ], [ @_cctk_one, %cond.end621 ], [ @_cctk_one, %cond.end633 ], [ @_cctk_one, %cond.false637 ], !dbg !133
  %146 = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKGROUPNUM_coordinates, align 4, !dbg !133, !tbaa !129
  %cmp647 = icmp slt i32 %146, 0, !dbg !133
  br i1 %cmp647, label %cond.end681, label %cond.false649, !dbg !133

cond.false649:                                    ; preds = %cond.end645
  %call650 = tail call i32 @CCTK_QueryGroupStorage(%struct.cGH* %GH, i8* getelementptr inbounds ([18 x i8]* @.str65, i64 0, i64 0)) #3, !dbg !133
  %tobool651 = icmp eq i32 %call650, 0, !dbg !133
  br i1 %tobool651, label %cond.end657, label %cond.true652, !dbg !133

cond.true652:                                     ; preds = %cond.false649
  %call653 = tail call i32* @CCTK_ArrayGroupSize(%struct.cGH* %GH, i32 0, i8* getelementptr inbounds ([18 x i8]* @.str65, i64 0, i64 0)) #3, !dbg !133
  br label %cond.end657, !dbg !133

cond.end657:                                      ; preds = %cond.false649, %cond.true652
  %cond658.ph = phi i32* [ @_cctk_one, %cond.false649 ], [ %call653, %cond.true652 ]
  %.pr1462 = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKGROUPNUM_coordinates, align 4, !dbg !133, !tbaa !129
  %cmp659 = icmp slt i32 %.pr1462, 0, !dbg !133
  br i1 %cmp659, label %cond.end681, label %cond.false661, !dbg !133

cond.false661:                                    ; preds = %cond.end657
  %call662 = tail call i32 @CCTK_QueryGroupStorage(%struct.cGH* %GH, i8* getelementptr inbounds ([18 x i8]* @.str65, i64 0, i64 0)) #3, !dbg !133
  %tobool663 = icmp eq i32 %call662, 0, !dbg !133
  br i1 %tobool663, label %cond.end669, label %cond.true664, !dbg !133

cond.true664:                                     ; preds = %cond.false661
  %call665 = tail call i32* @CCTK_ArrayGroupSize(%struct.cGH* %GH, i32 1, i8* getelementptr inbounds ([18 x i8]* @.str65, i64 0, i64 0)) #3, !dbg !133
  br label %cond.end669, !dbg !133

cond.end669:                                      ; preds = %cond.false661, %cond.true664
  %cond670.ph.ph = phi i32* [ @_cctk_one, %cond.false661 ], [ %call665, %cond.true664 ]
  %.pr1465.pr = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKGROUPNUM_coordinates, align 4, !dbg !133, !tbaa !129
  %cmp671 = icmp slt i32 %.pr1465.pr, 0, !dbg !133
  br i1 %cmp671, label %cond.end681, label %cond.false673, !dbg !133

cond.false673:                                    ; preds = %cond.end669
  %call674 = tail call i32 @CCTK_QueryGroupStorage(%struct.cGH* %GH, i8* getelementptr inbounds ([18 x i8]* @.str65, i64 0, i64 0)) #3, !dbg !133
  %tobool675 = icmp eq i32 %call674, 0, !dbg !133
  br i1 %tobool675, label %cond.end681, label %cond.true676, !dbg !133

cond.true676:                                     ; preds = %cond.false673
  %call677 = tail call i32* @CCTK_ArrayGroupSize(%struct.cGH* %GH, i32 2, i8* getelementptr inbounds ([18 x i8]* @.str65, i64 0, i64 0)) #3, !dbg !133
  br label %cond.end681, !dbg !133

cond.end681:                                      ; preds = %cond.false673, %cond.end669, %cond.end657, %cond.end645, %cond.true676
  %cond6701468 = phi i32* [ %cond670.ph.ph, %cond.true676 ], [ @_cctk_one, %cond.end645 ], [ @_cctk_one, %cond.end657 ], [ %cond670.ph.ph, %cond.end669 ], [ %cond670.ph.ph, %cond.false673 ]
  %cond65814641467 = phi i32* [ %cond658.ph, %cond.true676 ], [ @_cctk_one, %cond.end645 ], [ %cond658.ph, %cond.end657 ], [ %cond658.ph, %cond.end669 ], [ %cond658.ph, %cond.false673 ]
  %cond682 = phi i32* [ %call677, %cond.true676 ], [ @_cctk_one, %cond.end645 ], [ @_cctk_one, %cond.end657 ], [ @_cctk_one, %cond.end669 ], [ @_cctk_one, %cond.false673 ], !dbg !133
  %147 = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKGROUPNUM_curv, align 4, !dbg !133, !tbaa !129
  %cmp683 = icmp slt i32 %147, 0, !dbg !133
  br i1 %cmp683, label %cond.end717, label %cond.false685, !dbg !133

cond.false685:                                    ; preds = %cond.end681
  %call686 = tail call i32 @CCTK_QueryGroupStorage(%struct.cGH* %GH, i8* getelementptr inbounds ([15 x i8]* @.str45, i64 0, i64 0)) #3, !dbg !133
  %tobool687 = icmp eq i32 %call686, 0, !dbg !133
  br i1 %tobool687, label %cond.end693, label %cond.true688, !dbg !133

cond.true688:                                     ; preds = %cond.false685
  %call689 = tail call i32* @CCTK_ArrayGroupSize(%struct.cGH* %GH, i32 0, i8* getelementptr inbounds ([15 x i8]* @.str45, i64 0, i64 0)) #3, !dbg !133
  br label %cond.end693, !dbg !133

cond.end693:                                      ; preds = %cond.false685, %cond.true688
  %cond694.ph = phi i32* [ @_cctk_one, %cond.false685 ], [ %call689, %cond.true688 ]
  %.pr1469 = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKGROUPNUM_curv, align 4, !dbg !133, !tbaa !129
  %cmp695 = icmp slt i32 %.pr1469, 0, !dbg !133
  br i1 %cmp695, label %cond.end717, label %cond.false697, !dbg !133

cond.false697:                                    ; preds = %cond.end693
  %call698 = tail call i32 @CCTK_QueryGroupStorage(%struct.cGH* %GH, i8* getelementptr inbounds ([15 x i8]* @.str45, i64 0, i64 0)) #3, !dbg !133
  %tobool699 = icmp eq i32 %call698, 0, !dbg !133
  br i1 %tobool699, label %cond.end705, label %cond.true700, !dbg !133

cond.true700:                                     ; preds = %cond.false697
  %call701 = tail call i32* @CCTK_ArrayGroupSize(%struct.cGH* %GH, i32 1, i8* getelementptr inbounds ([15 x i8]* @.str45, i64 0, i64 0)) #3, !dbg !133
  br label %cond.end705, !dbg !133

cond.end705:                                      ; preds = %cond.false697, %cond.true700
  %cond706.ph.ph = phi i32* [ @_cctk_one, %cond.false697 ], [ %call701, %cond.true700 ]
  %.pr1472.pr = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKGROUPNUM_curv, align 4, !dbg !133, !tbaa !129
  %cmp707 = icmp slt i32 %.pr1472.pr, 0, !dbg !133
  br i1 %cmp707, label %cond.end717, label %cond.false709, !dbg !133

cond.false709:                                    ; preds = %cond.end705
  %call710 = tail call i32 @CCTK_QueryGroupStorage(%struct.cGH* %GH, i8* getelementptr inbounds ([15 x i8]* @.str45, i64 0, i64 0)) #3, !dbg !133
  %tobool711 = icmp eq i32 %call710, 0, !dbg !133
  br i1 %tobool711, label %cond.end717, label %cond.true712, !dbg !133

cond.true712:                                     ; preds = %cond.false709
  %call713 = tail call i32* @CCTK_ArrayGroupSize(%struct.cGH* %GH, i32 2, i8* getelementptr inbounds ([15 x i8]* @.str45, i64 0, i64 0)) #3, !dbg !133
  br label %cond.end717, !dbg !133

cond.end717:                                      ; preds = %cond.end681, %cond.end693, %cond.false709, %cond.true712, %cond.end705
  %cond7061475 = phi i32* [ %cond706.ph.ph, %cond.end705 ], [ %cond706.ph.ph, %cond.true712 ], [ %cond706.ph.ph, %cond.false709 ], [ @_cctk_one, %cond.end693 ], [ @_cctk_one, %cond.end681 ]
  %cond69414711474 = phi i32* [ %cond694.ph, %cond.end705 ], [ %cond694.ph, %cond.true712 ], [ %cond694.ph, %cond.false709 ], [ %cond694.ph, %cond.end693 ], [ @_cctk_one, %cond.end681 ]
  %cond718 = phi i32* [ @_cctk_one, %cond.end705 ], [ %call713, %cond.true712 ], [ @_cctk_one, %cond.false709 ], [ @_cctk_one, %cond.end693 ], [ @_cctk_one, %cond.end681 ], !dbg !133
  %148 = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKGROUPNUM_lapse, align 4, !dbg !133, !tbaa !129
  %cmp719 = icmp slt i32 %148, 0, !dbg !133
  br i1 %cmp719, label %cond.end753, label %cond.false721, !dbg !133

cond.false721:                                    ; preds = %cond.end717
  %call722 = tail call i32 @CCTK_QueryGroupStorage(%struct.cGH* %GH, i8* getelementptr inbounds ([16 x i8]* @.str21, i64 0, i64 0)) #3, !dbg !133
  %tobool723 = icmp eq i32 %call722, 0, !dbg !133
  br i1 %tobool723, label %cond.end729, label %cond.true724, !dbg !133

cond.true724:                                     ; preds = %cond.false721
  %call725 = tail call i32* @CCTK_ArrayGroupSize(%struct.cGH* %GH, i32 0, i8* getelementptr inbounds ([16 x i8]* @.str21, i64 0, i64 0)) #3, !dbg !133
  br label %cond.end729, !dbg !133

cond.end729:                                      ; preds = %cond.false721, %cond.true724
  %cond730.ph = phi i32* [ @_cctk_one, %cond.false721 ], [ %call725, %cond.true724 ]
  %.pr1476 = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKGROUPNUM_lapse, align 4, !dbg !133, !tbaa !129
  %cmp731 = icmp slt i32 %.pr1476, 0, !dbg !133
  br i1 %cmp731, label %cond.end753, label %cond.false733, !dbg !133

cond.false733:                                    ; preds = %cond.end729
  %call734 = tail call i32 @CCTK_QueryGroupStorage(%struct.cGH* %GH, i8* getelementptr inbounds ([16 x i8]* @.str21, i64 0, i64 0)) #3, !dbg !133
  %tobool735 = icmp eq i32 %call734, 0, !dbg !133
  br i1 %tobool735, label %cond.end741, label %cond.true736, !dbg !133

cond.true736:                                     ; preds = %cond.false733
  %call737 = tail call i32* @CCTK_ArrayGroupSize(%struct.cGH* %GH, i32 1, i8* getelementptr inbounds ([16 x i8]* @.str21, i64 0, i64 0)) #3, !dbg !133
  br label %cond.end741, !dbg !133

cond.end741:                                      ; preds = %cond.false733, %cond.true736
  %cond742.ph.ph = phi i32* [ @_cctk_one, %cond.false733 ], [ %call737, %cond.true736 ]
  %.pr1479.pr = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKGROUPNUM_lapse, align 4, !dbg !133, !tbaa !129
  %cmp743 = icmp slt i32 %.pr1479.pr, 0, !dbg !133
  br i1 %cmp743, label %cond.end753, label %cond.false745, !dbg !133

cond.false745:                                    ; preds = %cond.end741
  %call746 = tail call i32 @CCTK_QueryGroupStorage(%struct.cGH* %GH, i8* getelementptr inbounds ([16 x i8]* @.str21, i64 0, i64 0)) #3, !dbg !133
  %tobool747 = icmp eq i32 %call746, 0, !dbg !133
  br i1 %tobool747, label %cond.end753, label %cond.true748, !dbg !133

cond.true748:                                     ; preds = %cond.false745
  %call749 = tail call i32* @CCTK_ArrayGroupSize(%struct.cGH* %GH, i32 2, i8* getelementptr inbounds ([16 x i8]* @.str21, i64 0, i64 0)) #3, !dbg !133
  br label %cond.end753, !dbg !133

cond.end753:                                      ; preds = %cond.false745, %cond.end741, %cond.end729, %cond.end717, %cond.true748
  %cond7421482 = phi i32* [ %cond742.ph.ph, %cond.true748 ], [ @_cctk_one, %cond.end717 ], [ @_cctk_one, %cond.end729 ], [ %cond742.ph.ph, %cond.end741 ], [ %cond742.ph.ph, %cond.false745 ]
  %cond73014781481 = phi i32* [ %cond730.ph, %cond.true748 ], [ @_cctk_one, %cond.end717 ], [ %cond730.ph, %cond.end729 ], [ %cond730.ph, %cond.end741 ], [ %cond730.ph, %cond.false745 ]
  %cond754 = phi i32* [ %call749, %cond.true748 ], [ @_cctk_one, %cond.end717 ], [ @_cctk_one, %cond.end729 ], [ @_cctk_one, %cond.end741 ], [ @_cctk_one, %cond.false745 ], !dbg !133
  %149 = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKGROUPNUM_mask, align 4, !dbg !133, !tbaa !129
  %cmp755 = icmp slt i32 %149, 0, !dbg !133
  br i1 %cmp755, label %cond.end789, label %cond.false757, !dbg !133

cond.false757:                                    ; preds = %cond.end753
  %call758 = tail call i32 @CCTK_QueryGroupStorage(%struct.cGH* %GH, i8* getelementptr inbounds ([15 x i8]* @.str36, i64 0, i64 0)) #3, !dbg !133
  %tobool759 = icmp eq i32 %call758, 0, !dbg !133
  br i1 %tobool759, label %cond.end765, label %cond.true760, !dbg !133

cond.true760:                                     ; preds = %cond.false757
  %call761 = tail call i32* @CCTK_ArrayGroupSize(%struct.cGH* %GH, i32 0, i8* getelementptr inbounds ([15 x i8]* @.str36, i64 0, i64 0)) #3, !dbg !133
  br label %cond.end765, !dbg !133

cond.end765:                                      ; preds = %cond.false757, %cond.true760
  %cond766.ph = phi i32* [ @_cctk_one, %cond.false757 ], [ %call761, %cond.true760 ]
  %.pr1483 = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKGROUPNUM_mask, align 4, !dbg !133, !tbaa !129
  %cmp767 = icmp slt i32 %.pr1483, 0, !dbg !133
  br i1 %cmp767, label %cond.end789, label %cond.false769, !dbg !133

cond.false769:                                    ; preds = %cond.end765
  %call770 = tail call i32 @CCTK_QueryGroupStorage(%struct.cGH* %GH, i8* getelementptr inbounds ([15 x i8]* @.str36, i64 0, i64 0)) #3, !dbg !133
  %tobool771 = icmp eq i32 %call770, 0, !dbg !133
  br i1 %tobool771, label %cond.end777, label %cond.true772, !dbg !133

cond.true772:                                     ; preds = %cond.false769
  %call773 = tail call i32* @CCTK_ArrayGroupSize(%struct.cGH* %GH, i32 1, i8* getelementptr inbounds ([15 x i8]* @.str36, i64 0, i64 0)) #3, !dbg !133
  br label %cond.end777, !dbg !133

cond.end777:                                      ; preds = %cond.false769, %cond.true772
  %cond778.ph.ph = phi i32* [ @_cctk_one, %cond.false769 ], [ %call773, %cond.true772 ]
  %.pr1486.pr = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKGROUPNUM_mask, align 4, !dbg !133, !tbaa !129
  %cmp779 = icmp slt i32 %.pr1486.pr, 0, !dbg !133
  br i1 %cmp779, label %cond.end789, label %cond.false781, !dbg !133

cond.false781:                                    ; preds = %cond.end777
  %call782 = tail call i32 @CCTK_QueryGroupStorage(%struct.cGH* %GH, i8* getelementptr inbounds ([15 x i8]* @.str36, i64 0, i64 0)) #3, !dbg !133
  %tobool783 = icmp eq i32 %call782, 0, !dbg !133
  br i1 %tobool783, label %cond.end789, label %cond.true784, !dbg !133

cond.true784:                                     ; preds = %cond.false781
  %call785 = tail call i32* @CCTK_ArrayGroupSize(%struct.cGH* %GH, i32 2, i8* getelementptr inbounds ([15 x i8]* @.str36, i64 0, i64 0)) #3, !dbg !133
  br label %cond.end789, !dbg !133

cond.end789:                                      ; preds = %cond.false781, %cond.end777, %cond.end765, %cond.end753, %cond.true784
  %cond7781489 = phi i32* [ %cond778.ph.ph, %cond.true784 ], [ @_cctk_one, %cond.end753 ], [ @_cctk_one, %cond.end765 ], [ %cond778.ph.ph, %cond.end777 ], [ %cond778.ph.ph, %cond.false781 ]
  %cond76614851488 = phi i32* [ %cond766.ph, %cond.true784 ], [ @_cctk_one, %cond.end753 ], [ %cond766.ph, %cond.end765 ], [ %cond766.ph, %cond.end777 ], [ %cond766.ph, %cond.false781 ]
  %cond790 = phi i32* [ %call785, %cond.true784 ], [ @_cctk_one, %cond.end753 ], [ @_cctk_one, %cond.end765 ], [ @_cctk_one, %cond.end777 ], [ @_cctk_one, %cond.false781 ], !dbg !133
  %150 = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKGROUPNUM_metric, align 4, !dbg !133, !tbaa !129
  %cmp791 = icmp slt i32 %150, 0, !dbg !133
  br i1 %cmp791, label %cond.end825, label %cond.false793, !dbg !133

cond.false793:                                    ; preds = %cond.end789
  %call794 = tail call i32 @CCTK_QueryGroupStorage(%struct.cGH* %GH, i8* getelementptr inbounds ([17 x i8]* @.str38, i64 0, i64 0)) #3, !dbg !133
  %tobool795 = icmp eq i32 %call794, 0, !dbg !133
  br i1 %tobool795, label %cond.end801, label %cond.true796, !dbg !133

cond.true796:                                     ; preds = %cond.false793
  %call797 = tail call i32* @CCTK_ArrayGroupSize(%struct.cGH* %GH, i32 0, i8* getelementptr inbounds ([17 x i8]* @.str38, i64 0, i64 0)) #3, !dbg !133
  br label %cond.end801, !dbg !133

cond.end801:                                      ; preds = %cond.false793, %cond.true796
  %cond802.ph = phi i32* [ @_cctk_one, %cond.false793 ], [ %call797, %cond.true796 ]
  %.pr1490 = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKGROUPNUM_metric, align 4, !dbg !133, !tbaa !129
  %cmp803 = icmp slt i32 %.pr1490, 0, !dbg !133
  br i1 %cmp803, label %cond.end825, label %cond.false805, !dbg !133

cond.false805:                                    ; preds = %cond.end801
  %call806 = tail call i32 @CCTK_QueryGroupStorage(%struct.cGH* %GH, i8* getelementptr inbounds ([17 x i8]* @.str38, i64 0, i64 0)) #3, !dbg !133
  %tobool807 = icmp eq i32 %call806, 0, !dbg !133
  br i1 %tobool807, label %cond.end813, label %cond.true808, !dbg !133

cond.true808:                                     ; preds = %cond.false805
  %call809 = tail call i32* @CCTK_ArrayGroupSize(%struct.cGH* %GH, i32 1, i8* getelementptr inbounds ([17 x i8]* @.str38, i64 0, i64 0)) #3, !dbg !133
  br label %cond.end813, !dbg !133

cond.end813:                                      ; preds = %cond.false805, %cond.true808
  %cond814.ph.ph = phi i32* [ @_cctk_one, %cond.false805 ], [ %call809, %cond.true808 ]
  %.pr1493.pr = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKGROUPNUM_metric, align 4, !dbg !133, !tbaa !129
  %cmp815 = icmp slt i32 %.pr1493.pr, 0, !dbg !133
  br i1 %cmp815, label %cond.end825, label %cond.false817, !dbg !133

cond.false817:                                    ; preds = %cond.end813
  %call818 = tail call i32 @CCTK_QueryGroupStorage(%struct.cGH* %GH, i8* getelementptr inbounds ([17 x i8]* @.str38, i64 0, i64 0)) #3, !dbg !133
  %tobool819 = icmp eq i32 %call818, 0, !dbg !133
  br i1 %tobool819, label %cond.end825, label %cond.true820, !dbg !133

cond.true820:                                     ; preds = %cond.false817
  %call821 = tail call i32* @CCTK_ArrayGroupSize(%struct.cGH* %GH, i32 2, i8* getelementptr inbounds ([17 x i8]* @.str38, i64 0, i64 0)) #3, !dbg !133
  br label %cond.end825, !dbg !133

cond.end825:                                      ; preds = %cond.end789, %cond.end801, %cond.false817, %cond.true820, %cond.end813
  %cond8141496 = phi i32* [ %cond814.ph.ph, %cond.end813 ], [ %cond814.ph.ph, %cond.true820 ], [ %cond814.ph.ph, %cond.false817 ], [ @_cctk_one, %cond.end801 ], [ @_cctk_one, %cond.end789 ]
  %cond80214921495 = phi i32* [ %cond802.ph, %cond.end813 ], [ %cond802.ph, %cond.true820 ], [ %cond802.ph, %cond.false817 ], [ %cond802.ph, %cond.end801 ], [ @_cctk_one, %cond.end789 ]
  %cond826 = phi i32* [ @_cctk_one, %cond.end813 ], [ %call821, %cond.true820 ], [ @_cctk_one, %cond.false817 ], [ @_cctk_one, %cond.end801 ], [ @_cctk_one, %cond.end789 ], !dbg !133
  %151 = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKGROUPNUM_shift, align 4, !dbg !133, !tbaa !129
  %cmp827 = icmp slt i32 %151, 0, !dbg !133
  br i1 %cmp827, label %cond.end861, label %cond.false829, !dbg !133

cond.false829:                                    ; preds = %cond.end825
  %call830 = tail call i32 @CCTK_QueryGroupStorage(%struct.cGH* %GH, i8* getelementptr inbounds ([16 x i8]* @.str23, i64 0, i64 0)) #3, !dbg !133
  %tobool831 = icmp eq i32 %call830, 0, !dbg !133
  br i1 %tobool831, label %cond.end837, label %cond.true832, !dbg !133

cond.true832:                                     ; preds = %cond.false829
  %call833 = tail call i32* @CCTK_ArrayGroupSize(%struct.cGH* %GH, i32 0, i8* getelementptr inbounds ([16 x i8]* @.str23, i64 0, i64 0)) #3, !dbg !133
  br label %cond.end837, !dbg !133

cond.end837:                                      ; preds = %cond.false829, %cond.true832
  %cond838.ph = phi i32* [ @_cctk_one, %cond.false829 ], [ %call833, %cond.true832 ]
  %.pr1497 = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKGROUPNUM_shift, align 4, !dbg !133, !tbaa !129
  %cmp839 = icmp slt i32 %.pr1497, 0, !dbg !133
  br i1 %cmp839, label %cond.end861, label %cond.false841, !dbg !133

cond.false841:                                    ; preds = %cond.end837
  %call842 = tail call i32 @CCTK_QueryGroupStorage(%struct.cGH* %GH, i8* getelementptr inbounds ([16 x i8]* @.str23, i64 0, i64 0)) #3, !dbg !133
  %tobool843 = icmp eq i32 %call842, 0, !dbg !133
  br i1 %tobool843, label %cond.end849, label %cond.true844, !dbg !133

cond.true844:                                     ; preds = %cond.false841
  %call845 = tail call i32* @CCTK_ArrayGroupSize(%struct.cGH* %GH, i32 1, i8* getelementptr inbounds ([16 x i8]* @.str23, i64 0, i64 0)) #3, !dbg !133
  br label %cond.end849, !dbg !133

cond.end849:                                      ; preds = %cond.false841, %cond.true844
  %cond850.ph.ph = phi i32* [ @_cctk_one, %cond.false841 ], [ %call845, %cond.true844 ]
  %.pr1500.pr = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKGROUPNUM_shift, align 4, !dbg !133, !tbaa !129
  %cmp851 = icmp slt i32 %.pr1500.pr, 0, !dbg !133
  br i1 %cmp851, label %cond.end861, label %cond.false853, !dbg !133

cond.false853:                                    ; preds = %cond.end849
  %call854 = tail call i32 @CCTK_QueryGroupStorage(%struct.cGH* %GH, i8* getelementptr inbounds ([16 x i8]* @.str23, i64 0, i64 0)) #3, !dbg !133
  %tobool855 = icmp eq i32 %call854, 0, !dbg !133
  br i1 %tobool855, label %cond.end861, label %cond.true856, !dbg !133

cond.true856:                                     ; preds = %cond.false853
  %call857 = tail call i32* @CCTK_ArrayGroupSize(%struct.cGH* %GH, i32 2, i8* getelementptr inbounds ([16 x i8]* @.str23, i64 0, i64 0)) #3, !dbg !133
  br label %cond.end861, !dbg !133

cond.end861:                                      ; preds = %cond.end825, %cond.end837, %cond.false853, %cond.true856, %cond.end849
  %cond8501503 = phi i32* [ %cond850.ph.ph, %cond.end849 ], [ %cond850.ph.ph, %cond.true856 ], [ %cond850.ph.ph, %cond.false853 ], [ @_cctk_one, %cond.end837 ], [ @_cctk_one, %cond.end825 ]
  %cond83814991502 = phi i32* [ %cond838.ph, %cond.end849 ], [ %cond838.ph, %cond.true856 ], [ %cond838.ph, %cond.false853 ], [ %cond838.ph, %cond.end837 ], [ @_cctk_one, %cond.end825 ]
  %cond862 = phi i32* [ @_cctk_one, %cond.end849 ], [ %call857, %cond.true856 ], [ @_cctk_one, %cond.false853 ], [ @_cctk_one, %cond.end837 ], [ @_cctk_one, %cond.end825 ], !dbg !133
  %152 = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_active_slicing_handle, align 4, !dbg !133, !tbaa !129
  %cmp863 = icmp slt i32 %152, 0, !dbg !133
  br i1 %cmp863, label %cond.end870, label %cond.false865, !dbg !133

cond.false865:                                    ; preds = %cond.end861
  %idxprom866 = sext i32 %152 to i64, !dbg !133
  %data867 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17, !dbg !133
  %153 = load i8**** %data867, align 8, !dbg !133, !tbaa !134
  %arrayidx868 = getelementptr inbounds i8*** %153, i64 %idxprom866, !dbg !133
  %154 = load i8*** %arrayidx868, align 8, !dbg !133, !tbaa !134
  %155 = load i8** %154, align 8, !dbg !133, !tbaa !134
  %phitmp1375 = bitcast i8* %155 to i32*, !dbg !133
  br label %cond.end870, !dbg !133

cond.end870:                                      ; preds = %cond.end861, %cond.false865
  %cond871 = phi i32* [ %phitmp1375, %cond.false865 ], [ null, %cond.end861 ]
  %156 = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_alp, align 4, !dbg !133, !tbaa !129
  %cmp872 = icmp slt i32 %156, 0, !dbg !133
  br i1 %cmp872, label %cond.end879, label %cond.false874, !dbg !133

cond.false874:                                    ; preds = %cond.end870
  %idxprom875 = sext i32 %156 to i64, !dbg !133
  %data876 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17, !dbg !133
  %157 = load i8**** %data876, align 8, !dbg !133, !tbaa !134
  %arrayidx877 = getelementptr inbounds i8*** %157, i64 %idxprom875, !dbg !133
  %158 = load i8*** %arrayidx877, align 8, !dbg !133, !tbaa !134
  %159 = load i8** %158, align 8, !dbg !133, !tbaa !134
  %phitmp1376 = bitcast i8* %159 to double*, !dbg !133
  br label %cond.end879, !dbg !133

cond.end879:                                      ; preds = %cond.end870, %cond.false874
  %cond880 = phi double* [ %phitmp1376, %cond.false874 ], [ null, %cond.end870 ]
  %160 = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_betax, align 4, !dbg !133, !tbaa !129
  %cmp881 = icmp slt i32 %160, 0, !dbg !133
  br i1 %cmp881, label %cond.end888, label %cond.false883, !dbg !133

cond.false883:                                    ; preds = %cond.end879
  %idxprom884 = sext i32 %160 to i64, !dbg !133
  %data885 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17, !dbg !133
  %161 = load i8**** %data885, align 8, !dbg !133, !tbaa !134
  %arrayidx886 = getelementptr inbounds i8*** %161, i64 %idxprom884, !dbg !133
  %162 = load i8*** %arrayidx886, align 8, !dbg !133, !tbaa !134
  %163 = load i8** %162, align 8, !dbg !133, !tbaa !134
  %phitmp1377 = bitcast i8* %163 to double*, !dbg !133
  br label %cond.end888, !dbg !133

cond.end888:                                      ; preds = %cond.end879, %cond.false883
  %cond889 = phi double* [ %phitmp1377, %cond.false883 ], [ null, %cond.end879 ]
  %164 = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_betay, align 4, !dbg !133, !tbaa !129
  %cmp890 = icmp slt i32 %164, 0, !dbg !133
  br i1 %cmp890, label %cond.end897, label %cond.false892, !dbg !133

cond.false892:                                    ; preds = %cond.end888
  %idxprom893 = sext i32 %164 to i64, !dbg !133
  %data894 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17, !dbg !133
  %165 = load i8**** %data894, align 8, !dbg !133, !tbaa !134
  %arrayidx895 = getelementptr inbounds i8*** %165, i64 %idxprom893, !dbg !133
  %166 = load i8*** %arrayidx895, align 8, !dbg !133, !tbaa !134
  %167 = load i8** %166, align 8, !dbg !133, !tbaa !134
  %phitmp1378 = bitcast i8* %167 to double*, !dbg !133
  br label %cond.end897, !dbg !133

cond.end897:                                      ; preds = %cond.end888, %cond.false892
  %cond898 = phi double* [ %phitmp1378, %cond.false892 ], [ null, %cond.end888 ]
  %168 = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_betaz, align 4, !dbg !133, !tbaa !129
  %cmp899 = icmp slt i32 %168, 0, !dbg !133
  br i1 %cmp899, label %cond.end906, label %cond.false901, !dbg !133

cond.false901:                                    ; preds = %cond.end897
  %idxprom902 = sext i32 %168 to i64, !dbg !133
  %data903 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17, !dbg !133
  %169 = load i8**** %data903, align 8, !dbg !133, !tbaa !134
  %arrayidx904 = getelementptr inbounds i8*** %169, i64 %idxprom902, !dbg !133
  %170 = load i8*** %arrayidx904, align 8, !dbg !133, !tbaa !134
  %171 = load i8** %170, align 8, !dbg !133, !tbaa !134
  %phitmp1379 = bitcast i8* %171 to double*, !dbg !133
  br label %cond.end906, !dbg !133

cond.end906:                                      ; preds = %cond.end897, %cond.false901
  %cond907 = phi double* [ %phitmp1379, %cond.false901 ], [ null, %cond.end897 ]
  %172 = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_coarse_dx, align 4, !dbg !133, !tbaa !129
  %cmp908 = icmp slt i32 %172, 0, !dbg !133
  br i1 %cmp908, label %cond.end915, label %cond.false910, !dbg !133

cond.false910:                                    ; preds = %cond.end906
  %idxprom911 = sext i32 %172 to i64, !dbg !133
  %data912 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17, !dbg !133
  %173 = load i8**** %data912, align 8, !dbg !133, !tbaa !134
  %arrayidx913 = getelementptr inbounds i8*** %173, i64 %idxprom911, !dbg !133
  %174 = load i8*** %arrayidx913, align 8, !dbg !133, !tbaa !134
  %175 = load i8** %174, align 8, !dbg !133, !tbaa !134
  %phitmp1380 = bitcast i8* %175 to double*, !dbg !133
  br label %cond.end915, !dbg !133

cond.end915:                                      ; preds = %cond.end906, %cond.false910
  %cond916 = phi double* [ %phitmp1380, %cond.false910 ], [ null, %cond.end906 ]
  %176 = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_coarse_dy, align 4, !dbg !133, !tbaa !129
  %cmp917 = icmp slt i32 %176, 0, !dbg !133
  br i1 %cmp917, label %cond.end924, label %cond.false919, !dbg !133

cond.false919:                                    ; preds = %cond.end915
  %idxprom920 = sext i32 %176 to i64, !dbg !133
  %data921 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17, !dbg !133
  %177 = load i8**** %data921, align 8, !dbg !133, !tbaa !134
  %arrayidx922 = getelementptr inbounds i8*** %177, i64 %idxprom920, !dbg !133
  %178 = load i8*** %arrayidx922, align 8, !dbg !133, !tbaa !134
  %179 = load i8** %178, align 8, !dbg !133, !tbaa !134
  %phitmp1381 = bitcast i8* %179 to double*, !dbg !133
  br label %cond.end924, !dbg !133

cond.end924:                                      ; preds = %cond.end915, %cond.false919
  %cond925 = phi double* [ %phitmp1381, %cond.false919 ], [ null, %cond.end915 ]
  %180 = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_coarse_dz, align 4, !dbg !133, !tbaa !129
  %cmp926 = icmp slt i32 %180, 0, !dbg !133
  br i1 %cmp926, label %cond.end933, label %cond.false928, !dbg !133

cond.false928:                                    ; preds = %cond.end924
  %idxprom929 = sext i32 %180 to i64, !dbg !133
  %data930 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17, !dbg !133
  %181 = load i8**** %data930, align 8, !dbg !133, !tbaa !134
  %arrayidx931 = getelementptr inbounds i8*** %181, i64 %idxprom929, !dbg !133
  %182 = load i8*** %arrayidx931, align 8, !dbg !133, !tbaa !134
  %183 = load i8** %182, align 8, !dbg !133, !tbaa !134
  %phitmp1382 = bitcast i8* %183 to double*, !dbg !133
  br label %cond.end933, !dbg !133

cond.end933:                                      ; preds = %cond.end924, %cond.false928
  %cond934 = phi double* [ %phitmp1382, %cond.false928 ], [ null, %cond.end924 ]
  %184 = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_conformal_state, align 4, !dbg !133, !tbaa !129
  %cmp935 = icmp slt i32 %184, 0, !dbg !133
  br i1 %cmp935, label %cond.end942, label %cond.false937, !dbg !133

cond.false937:                                    ; preds = %cond.end933
  %idxprom938 = sext i32 %184 to i64, !dbg !133
  %data939 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17, !dbg !133
  %185 = load i8**** %data939, align 8, !dbg !133, !tbaa !134
  %arrayidx940 = getelementptr inbounds i8*** %185, i64 %idxprom938, !dbg !133
  %186 = load i8*** %arrayidx940, align 8, !dbg !133, !tbaa !134
  %187 = load i8** %186, align 8, !dbg !133, !tbaa !134
  %phitmp1383 = bitcast i8* %187 to i32*, !dbg !133
  br label %cond.end942, !dbg !133

cond.end942:                                      ; preds = %cond.end933, %cond.false937
  %cond943 = phi i32* [ %phitmp1383, %cond.false937 ], [ null, %cond.end933 ]
  %188 = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_courant_min_time, align 4, !dbg !133, !tbaa !129
  %cmp944 = icmp slt i32 %188, 0, !dbg !133
  br i1 %cmp944, label %cond.end951, label %cond.false946, !dbg !133

cond.false946:                                    ; preds = %cond.end942
  %idxprom947 = sext i32 %188 to i64, !dbg !133
  %data948 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17, !dbg !133
  %189 = load i8**** %data948, align 8, !dbg !133, !tbaa !134
  %arrayidx949 = getelementptr inbounds i8*** %189, i64 %idxprom947, !dbg !133
  %190 = load i8*** %arrayidx949, align 8, !dbg !133, !tbaa !134
  %191 = load i8** %190, align 8, !dbg !133, !tbaa !134
  %phitmp1384 = bitcast i8* %191 to double*, !dbg !133
  br label %cond.end951, !dbg !133

cond.end951:                                      ; preds = %cond.end942, %cond.false946
  %cond952 = phi double* [ %phitmp1384, %cond.false946 ], [ null, %cond.end942 ]
  %192 = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_courant_wave_speed, align 4, !dbg !133, !tbaa !129
  %cmp953 = icmp slt i32 %192, 0, !dbg !133
  br i1 %cmp953, label %cond.end960, label %cond.false955, !dbg !133

cond.false955:                                    ; preds = %cond.end951
  %idxprom956 = sext i32 %192 to i64, !dbg !133
  %data957 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17, !dbg !133
  %193 = load i8**** %data957, align 8, !dbg !133, !tbaa !134
  %arrayidx958 = getelementptr inbounds i8*** %193, i64 %idxprom956, !dbg !133
  %194 = load i8*** %arrayidx958, align 8, !dbg !133, !tbaa !134
  %195 = load i8** %194, align 8, !dbg !133, !tbaa !134
  %phitmp1385 = bitcast i8* %195 to double*, !dbg !133
  br label %cond.end960, !dbg !133

cond.end960:                                      ; preds = %cond.end951, %cond.false955
  %cond961 = phi double* [ %phitmp1385, %cond.false955 ], [ null, %cond.end951 ]
  %196 = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_emask, align 4, !dbg !133, !tbaa !129
  %cmp962 = icmp slt i32 %196, 0, !dbg !133
  br i1 %cmp962, label %cond.end969, label %cond.false964, !dbg !133

cond.false964:                                    ; preds = %cond.end960
  %idxprom965 = sext i32 %196 to i64, !dbg !133
  %data966 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17, !dbg !133
  %197 = load i8**** %data966, align 8, !dbg !133, !tbaa !134
  %arrayidx967 = getelementptr inbounds i8*** %197, i64 %idxprom965, !dbg !133
  %198 = load i8*** %arrayidx967, align 8, !dbg !133, !tbaa !134
  %199 = load i8** %198, align 8, !dbg !133, !tbaa !134
  %phitmp1386 = bitcast i8* %199 to double*, !dbg !133
  br label %cond.end969, !dbg !133

cond.end969:                                      ; preds = %cond.end960, %cond.false964
  %cond970 = phi double* [ %phitmp1386, %cond.false964 ], [ null, %cond.end960 ]
  %200 = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_gxx, align 4, !dbg !133, !tbaa !129
  %cmp971 = icmp slt i32 %200, 0, !dbg !133
  br i1 %cmp971, label %cond.end978, label %cond.false973, !dbg !133

cond.false973:                                    ; preds = %cond.end969
  %idxprom974 = sext i32 %200 to i64, !dbg !133
  %data975 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17, !dbg !133
  %201 = load i8**** %data975, align 8, !dbg !133, !tbaa !134
  %arrayidx976 = getelementptr inbounds i8*** %201, i64 %idxprom974, !dbg !133
  %202 = load i8*** %arrayidx976, align 8, !dbg !133, !tbaa !134
  %203 = load i8** %202, align 8, !dbg !133, !tbaa !134
  %phitmp1387 = bitcast i8* %203 to double*, !dbg !133
  br label %cond.end978, !dbg !133

cond.end978:                                      ; preds = %cond.end969, %cond.false973
  %cond979 = phi double* [ %phitmp1387, %cond.false973 ], [ null, %cond.end969 ]
  %204 = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_gxy, align 4, !dbg !133, !tbaa !129
  %cmp980 = icmp slt i32 %204, 0, !dbg !133
  br i1 %cmp980, label %cond.end987, label %cond.false982, !dbg !133

cond.false982:                                    ; preds = %cond.end978
  %idxprom983 = sext i32 %204 to i64, !dbg !133
  %data984 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17, !dbg !133
  %205 = load i8**** %data984, align 8, !dbg !133, !tbaa !134
  %arrayidx985 = getelementptr inbounds i8*** %205, i64 %idxprom983, !dbg !133
  %206 = load i8*** %arrayidx985, align 8, !dbg !133, !tbaa !134
  %207 = load i8** %206, align 8, !dbg !133, !tbaa !134
  %phitmp1388 = bitcast i8* %207 to double*, !dbg !133
  br label %cond.end987, !dbg !133

cond.end987:                                      ; preds = %cond.end978, %cond.false982
  %cond988 = phi double* [ %phitmp1388, %cond.false982 ], [ null, %cond.end978 ]
  %208 = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_gxz, align 4, !dbg !133, !tbaa !129
  %cmp989 = icmp slt i32 %208, 0, !dbg !133
  br i1 %cmp989, label %cond.end996, label %cond.false991, !dbg !133

cond.false991:                                    ; preds = %cond.end987
  %idxprom992 = sext i32 %208 to i64, !dbg !133
  %data993 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17, !dbg !133
  %209 = load i8**** %data993, align 8, !dbg !133, !tbaa !134
  %arrayidx994 = getelementptr inbounds i8*** %209, i64 %idxprom992, !dbg !133
  %210 = load i8*** %arrayidx994, align 8, !dbg !133, !tbaa !134
  %211 = load i8** %210, align 8, !dbg !133, !tbaa !134
  %phitmp1389 = bitcast i8* %211 to double*, !dbg !133
  br label %cond.end996, !dbg !133

cond.end996:                                      ; preds = %cond.end987, %cond.false991
  %cond997 = phi double* [ %phitmp1389, %cond.false991 ], [ null, %cond.end987 ]
  %212 = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_gyy, align 4, !dbg !133, !tbaa !129
  %cmp998 = icmp slt i32 %212, 0, !dbg !133
  br i1 %cmp998, label %cond.end1005, label %cond.false1000, !dbg !133

cond.false1000:                                   ; preds = %cond.end996
  %idxprom1001 = sext i32 %212 to i64, !dbg !133
  %data1002 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17, !dbg !133
  %213 = load i8**** %data1002, align 8, !dbg !133, !tbaa !134
  %arrayidx1003 = getelementptr inbounds i8*** %213, i64 %idxprom1001, !dbg !133
  %214 = load i8*** %arrayidx1003, align 8, !dbg !133, !tbaa !134
  %215 = load i8** %214, align 8, !dbg !133, !tbaa !134
  %phitmp1390 = bitcast i8* %215 to double*, !dbg !133
  br label %cond.end1005, !dbg !133

cond.end1005:                                     ; preds = %cond.end996, %cond.false1000
  %cond1006 = phi double* [ %phitmp1390, %cond.false1000 ], [ null, %cond.end996 ]
  %216 = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_gyz, align 4, !dbg !133, !tbaa !129
  %cmp1007 = icmp slt i32 %216, 0, !dbg !133
  br i1 %cmp1007, label %cond.end1014, label %cond.false1009, !dbg !133

cond.false1009:                                   ; preds = %cond.end1005
  %idxprom1010 = sext i32 %216 to i64, !dbg !133
  %data1011 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17, !dbg !133
  %217 = load i8**** %data1011, align 8, !dbg !133, !tbaa !134
  %arrayidx1012 = getelementptr inbounds i8*** %217, i64 %idxprom1010, !dbg !133
  %218 = load i8*** %arrayidx1012, align 8, !dbg !133, !tbaa !134
  %219 = load i8** %218, align 8, !dbg !133, !tbaa !134
  %phitmp1391 = bitcast i8* %219 to double*, !dbg !133
  br label %cond.end1014, !dbg !133

cond.end1014:                                     ; preds = %cond.end1005, %cond.false1009
  %cond1015 = phi double* [ %phitmp1391, %cond.false1009 ], [ null, %cond.end1005 ]
  %220 = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_gzz, align 4, !dbg !133, !tbaa !129
  %cmp1016 = icmp slt i32 %220, 0, !dbg !133
  br i1 %cmp1016, label %cond.end1023, label %cond.false1018, !dbg !133

cond.false1018:                                   ; preds = %cond.end1014
  %idxprom1019 = sext i32 %220 to i64, !dbg !133
  %data1020 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17, !dbg !133
  %221 = load i8**** %data1020, align 8, !dbg !133, !tbaa !134
  %arrayidx1021 = getelementptr inbounds i8*** %221, i64 %idxprom1019, !dbg !133
  %222 = load i8*** %arrayidx1021, align 8, !dbg !133, !tbaa !134
  %223 = load i8** %222, align 8, !dbg !133, !tbaa !134
  %phitmp1392 = bitcast i8* %223 to double*, !dbg !133
  br label %cond.end1023, !dbg !133

cond.end1023:                                     ; preds = %cond.end1014, %cond.false1018
  %cond1024 = phi double* [ %phitmp1392, %cond.false1018 ], [ null, %cond.end1014 ]
  %224 = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_kxx, align 4, !dbg !133, !tbaa !129
  %cmp1025 = icmp slt i32 %224, 0, !dbg !133
  br i1 %cmp1025, label %cond.end1032, label %cond.false1027, !dbg !133

cond.false1027:                                   ; preds = %cond.end1023
  %idxprom1028 = sext i32 %224 to i64, !dbg !133
  %data1029 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17, !dbg !133
  %225 = load i8**** %data1029, align 8, !dbg !133, !tbaa !134
  %arrayidx1030 = getelementptr inbounds i8*** %225, i64 %idxprom1028, !dbg !133
  %226 = load i8*** %arrayidx1030, align 8, !dbg !133, !tbaa !134
  %227 = load i8** %226, align 8, !dbg !133, !tbaa !134
  %phitmp1393 = bitcast i8* %227 to double*, !dbg !133
  br label %cond.end1032, !dbg !133

cond.end1032:                                     ; preds = %cond.end1023, %cond.false1027
  %cond1033 = phi double* [ %phitmp1393, %cond.false1027 ], [ null, %cond.end1023 ]
  %228 = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_kxy, align 4, !dbg !133, !tbaa !129
  %cmp1034 = icmp slt i32 %228, 0, !dbg !133
  br i1 %cmp1034, label %cond.end1041, label %cond.false1036, !dbg !133

cond.false1036:                                   ; preds = %cond.end1032
  %idxprom1037 = sext i32 %228 to i64, !dbg !133
  %data1038 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17, !dbg !133
  %229 = load i8**** %data1038, align 8, !dbg !133, !tbaa !134
  %arrayidx1039 = getelementptr inbounds i8*** %229, i64 %idxprom1037, !dbg !133
  %230 = load i8*** %arrayidx1039, align 8, !dbg !133, !tbaa !134
  %231 = load i8** %230, align 8, !dbg !133, !tbaa !134
  %phitmp1394 = bitcast i8* %231 to double*, !dbg !133
  br label %cond.end1041, !dbg !133

cond.end1041:                                     ; preds = %cond.end1032, %cond.false1036
  %cond1042 = phi double* [ %phitmp1394, %cond.false1036 ], [ null, %cond.end1032 ]
  %232 = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_kxz, align 4, !dbg !133, !tbaa !129
  %cmp1043 = icmp slt i32 %232, 0, !dbg !133
  br i1 %cmp1043, label %cond.end1050, label %cond.false1045, !dbg !133

cond.false1045:                                   ; preds = %cond.end1041
  %idxprom1046 = sext i32 %232 to i64, !dbg !133
  %data1047 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17, !dbg !133
  %233 = load i8**** %data1047, align 8, !dbg !133, !tbaa !134
  %arrayidx1048 = getelementptr inbounds i8*** %233, i64 %idxprom1046, !dbg !133
  %234 = load i8*** %arrayidx1048, align 8, !dbg !133, !tbaa !134
  %235 = load i8** %234, align 8, !dbg !133, !tbaa !134
  %phitmp1395 = bitcast i8* %235 to double*, !dbg !133
  br label %cond.end1050, !dbg !133

cond.end1050:                                     ; preds = %cond.end1041, %cond.false1045
  %cond1051 = phi double* [ %phitmp1395, %cond.false1045 ], [ null, %cond.end1041 ]
  %236 = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_kyy, align 4, !dbg !133, !tbaa !129
  %cmp1052 = icmp slt i32 %236, 0, !dbg !133
  br i1 %cmp1052, label %cond.end1059, label %cond.false1054, !dbg !133

cond.false1054:                                   ; preds = %cond.end1050
  %idxprom1055 = sext i32 %236 to i64, !dbg !133
  %data1056 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17, !dbg !133
  %237 = load i8**** %data1056, align 8, !dbg !133, !tbaa !134
  %arrayidx1057 = getelementptr inbounds i8*** %237, i64 %idxprom1055, !dbg !133
  %238 = load i8*** %arrayidx1057, align 8, !dbg !133, !tbaa !134
  %239 = load i8** %238, align 8, !dbg !133, !tbaa !134
  %phitmp1396 = bitcast i8* %239 to double*, !dbg !133
  br label %cond.end1059, !dbg !133

cond.end1059:                                     ; preds = %cond.end1050, %cond.false1054
  %cond1060 = phi double* [ %phitmp1396, %cond.false1054 ], [ null, %cond.end1050 ]
  %240 = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_kyz, align 4, !dbg !133, !tbaa !129
  %cmp1061 = icmp slt i32 %240, 0, !dbg !133
  br i1 %cmp1061, label %cond.end1068, label %cond.false1063, !dbg !133

cond.false1063:                                   ; preds = %cond.end1059
  %idxprom1064 = sext i32 %240 to i64, !dbg !133
  %data1065 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17, !dbg !133
  %241 = load i8**** %data1065, align 8, !dbg !133, !tbaa !134
  %arrayidx1066 = getelementptr inbounds i8*** %241, i64 %idxprom1064, !dbg !133
  %242 = load i8*** %arrayidx1066, align 8, !dbg !133, !tbaa !134
  %243 = load i8** %242, align 8, !dbg !133, !tbaa !134
  %phitmp1397 = bitcast i8* %243 to double*, !dbg !133
  br label %cond.end1068, !dbg !133

cond.end1068:                                     ; preds = %cond.end1059, %cond.false1063
  %cond1069 = phi double* [ %phitmp1397, %cond.false1063 ], [ null, %cond.end1059 ]
  %244 = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_kzz, align 4, !dbg !133, !tbaa !129
  %cmp1070 = icmp slt i32 %244, 0, !dbg !133
  br i1 %cmp1070, label %cond.end1077, label %cond.false1072, !dbg !133

cond.false1072:                                   ; preds = %cond.end1068
  %idxprom1073 = sext i32 %244 to i64, !dbg !133
  %data1074 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17, !dbg !133
  %245 = load i8**** %data1074, align 8, !dbg !133, !tbaa !134
  %arrayidx1075 = getelementptr inbounds i8*** %245, i64 %idxprom1073, !dbg !133
  %246 = load i8*** %arrayidx1075, align 8, !dbg !133, !tbaa !134
  %247 = load i8** %246, align 8, !dbg !133, !tbaa !134
  %phitmp1398 = bitcast i8* %247 to double*, !dbg !133
  br label %cond.end1077, !dbg !133

cond.end1077:                                     ; preds = %cond.end1068, %cond.false1072
  %cond1078 = phi double* [ %phitmp1398, %cond.false1072 ], [ null, %cond.end1068 ]
  %248 = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_psi, align 4, !dbg !133, !tbaa !129
  %cmp1079 = icmp slt i32 %248, 0, !dbg !133
  br i1 %cmp1079, label %cond.end1086, label %cond.false1081, !dbg !133

cond.false1081:                                   ; preds = %cond.end1077
  %idxprom1082 = sext i32 %248 to i64, !dbg !133
  %data1083 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17, !dbg !133
  %249 = load i8**** %data1083, align 8, !dbg !133, !tbaa !134
  %arrayidx1084 = getelementptr inbounds i8*** %249, i64 %idxprom1082, !dbg !133
  %250 = load i8*** %arrayidx1084, align 8, !dbg !133, !tbaa !134
  %251 = load i8** %250, align 8, !dbg !133, !tbaa !134
  %phitmp1399 = bitcast i8* %251 to double*, !dbg !133
  br label %cond.end1086, !dbg !133

cond.end1086:                                     ; preds = %cond.end1077, %cond.false1081
  %cond1087 = phi double* [ %phitmp1399, %cond.false1081 ], [ null, %cond.end1077 ]
  %252 = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_psix, align 4, !dbg !133, !tbaa !129
  %cmp1088 = icmp slt i32 %252, 0, !dbg !133
  br i1 %cmp1088, label %cond.end1095, label %cond.false1090, !dbg !133

cond.false1090:                                   ; preds = %cond.end1086
  %idxprom1091 = sext i32 %252 to i64, !dbg !133
  %data1092 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17, !dbg !133
  %253 = load i8**** %data1092, align 8, !dbg !133, !tbaa !134
  %arrayidx1093 = getelementptr inbounds i8*** %253, i64 %idxprom1091, !dbg !133
  %254 = load i8*** %arrayidx1093, align 8, !dbg !133, !tbaa !134
  %255 = load i8** %254, align 8, !dbg !133, !tbaa !134
  %phitmp1400 = bitcast i8* %255 to double*, !dbg !133
  br label %cond.end1095, !dbg !133

cond.end1095:                                     ; preds = %cond.end1086, %cond.false1090
  %cond1096 = phi double* [ %phitmp1400, %cond.false1090 ], [ null, %cond.end1086 ]
  %256 = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_psixx, align 4, !dbg !133, !tbaa !129
  %cmp1097 = icmp slt i32 %256, 0, !dbg !133
  br i1 %cmp1097, label %cond.end1104, label %cond.false1099, !dbg !133

cond.false1099:                                   ; preds = %cond.end1095
  %idxprom1100 = sext i32 %256 to i64, !dbg !133
  %data1101 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17, !dbg !133
  %257 = load i8**** %data1101, align 8, !dbg !133, !tbaa !134
  %arrayidx1102 = getelementptr inbounds i8*** %257, i64 %idxprom1100, !dbg !133
  %258 = load i8*** %arrayidx1102, align 8, !dbg !133, !tbaa !134
  %259 = load i8** %258, align 8, !dbg !133, !tbaa !134
  %phitmp1401 = bitcast i8* %259 to double*, !dbg !133
  br label %cond.end1104, !dbg !133

cond.end1104:                                     ; preds = %cond.end1095, %cond.false1099
  %cond1105 = phi double* [ %phitmp1401, %cond.false1099 ], [ null, %cond.end1095 ]
  %260 = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_psixy, align 4, !dbg !133, !tbaa !129
  %cmp1106 = icmp slt i32 %260, 0, !dbg !133
  br i1 %cmp1106, label %cond.end1113, label %cond.false1108, !dbg !133

cond.false1108:                                   ; preds = %cond.end1104
  %idxprom1109 = sext i32 %260 to i64, !dbg !133
  %data1110 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17, !dbg !133
  %261 = load i8**** %data1110, align 8, !dbg !133, !tbaa !134
  %arrayidx1111 = getelementptr inbounds i8*** %261, i64 %idxprom1109, !dbg !133
  %262 = load i8*** %arrayidx1111, align 8, !dbg !133, !tbaa !134
  %263 = load i8** %262, align 8, !dbg !133, !tbaa !134
  %phitmp1402 = bitcast i8* %263 to double*, !dbg !133
  br label %cond.end1113, !dbg !133

cond.end1113:                                     ; preds = %cond.end1104, %cond.false1108
  %cond1114 = phi double* [ %phitmp1402, %cond.false1108 ], [ null, %cond.end1104 ]
  %264 = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_psixz, align 4, !dbg !133, !tbaa !129
  %cmp1115 = icmp slt i32 %264, 0, !dbg !133
  br i1 %cmp1115, label %cond.end1122, label %cond.false1117, !dbg !133

cond.false1117:                                   ; preds = %cond.end1113
  %idxprom1118 = sext i32 %264 to i64, !dbg !133
  %data1119 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17, !dbg !133
  %265 = load i8**** %data1119, align 8, !dbg !133, !tbaa !134
  %arrayidx1120 = getelementptr inbounds i8*** %265, i64 %idxprom1118, !dbg !133
  %266 = load i8*** %arrayidx1120, align 8, !dbg !133, !tbaa !134
  %267 = load i8** %266, align 8, !dbg !133, !tbaa !134
  %phitmp1403 = bitcast i8* %267 to double*, !dbg !133
  br label %cond.end1122, !dbg !133

cond.end1122:                                     ; preds = %cond.end1113, %cond.false1117
  %cond1123 = phi double* [ %phitmp1403, %cond.false1117 ], [ null, %cond.end1113 ]
  %268 = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_psiy, align 4, !dbg !133, !tbaa !129
  %cmp1124 = icmp slt i32 %268, 0, !dbg !133
  br i1 %cmp1124, label %cond.end1131, label %cond.false1126, !dbg !133

cond.false1126:                                   ; preds = %cond.end1122
  %idxprom1127 = sext i32 %268 to i64, !dbg !133
  %data1128 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17, !dbg !133
  %269 = load i8**** %data1128, align 8, !dbg !133, !tbaa !134
  %arrayidx1129 = getelementptr inbounds i8*** %269, i64 %idxprom1127, !dbg !133
  %270 = load i8*** %arrayidx1129, align 8, !dbg !133, !tbaa !134
  %271 = load i8** %270, align 8, !dbg !133, !tbaa !134
  %phitmp1404 = bitcast i8* %271 to double*, !dbg !133
  br label %cond.end1131, !dbg !133

cond.end1131:                                     ; preds = %cond.end1122, %cond.false1126
  %cond1132 = phi double* [ %phitmp1404, %cond.false1126 ], [ null, %cond.end1122 ]
  %272 = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_psiyy, align 4, !dbg !133, !tbaa !129
  %cmp1133 = icmp slt i32 %272, 0, !dbg !133
  br i1 %cmp1133, label %cond.end1140, label %cond.false1135, !dbg !133

cond.false1135:                                   ; preds = %cond.end1131
  %idxprom1136 = sext i32 %272 to i64, !dbg !133
  %data1137 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17, !dbg !133
  %273 = load i8**** %data1137, align 8, !dbg !133, !tbaa !134
  %arrayidx1138 = getelementptr inbounds i8*** %273, i64 %idxprom1136, !dbg !133
  %274 = load i8*** %arrayidx1138, align 8, !dbg !133, !tbaa !134
  %275 = load i8** %274, align 8, !dbg !133, !tbaa !134
  %phitmp1405 = bitcast i8* %275 to double*, !dbg !133
  br label %cond.end1140, !dbg !133

cond.end1140:                                     ; preds = %cond.end1131, %cond.false1135
  %cond1141 = phi double* [ %phitmp1405, %cond.false1135 ], [ null, %cond.end1131 ]
  %276 = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_psiyz, align 4, !dbg !133, !tbaa !129
  %cmp1142 = icmp slt i32 %276, 0, !dbg !133
  br i1 %cmp1142, label %cond.end1149, label %cond.false1144, !dbg !133

cond.false1144:                                   ; preds = %cond.end1140
  %idxprom1145 = sext i32 %276 to i64, !dbg !133
  %data1146 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17, !dbg !133
  %277 = load i8**** %data1146, align 8, !dbg !133, !tbaa !134
  %arrayidx1147 = getelementptr inbounds i8*** %277, i64 %idxprom1145, !dbg !133
  %278 = load i8*** %arrayidx1147, align 8, !dbg !133, !tbaa !134
  %279 = load i8** %278, align 8, !dbg !133, !tbaa !134
  %phitmp1406 = bitcast i8* %279 to double*, !dbg !133
  br label %cond.end1149, !dbg !133

cond.end1149:                                     ; preds = %cond.end1140, %cond.false1144
  %cond1150 = phi double* [ %phitmp1406, %cond.false1144 ], [ null, %cond.end1140 ]
  %280 = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_psiz, align 4, !dbg !133, !tbaa !129
  %cmp1151 = icmp slt i32 %280, 0, !dbg !133
  br i1 %cmp1151, label %cond.end1158, label %cond.false1153, !dbg !133

cond.false1153:                                   ; preds = %cond.end1149
  %idxprom1154 = sext i32 %280 to i64, !dbg !133
  %data1155 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17, !dbg !133
  %281 = load i8**** %data1155, align 8, !dbg !133, !tbaa !134
  %arrayidx1156 = getelementptr inbounds i8*** %281, i64 %idxprom1154, !dbg !133
  %282 = load i8*** %arrayidx1156, align 8, !dbg !133, !tbaa !134
  %283 = load i8** %282, align 8, !dbg !133, !tbaa !134
  %phitmp1407 = bitcast i8* %283 to double*, !dbg !133
  br label %cond.end1158, !dbg !133

cond.end1158:                                     ; preds = %cond.end1149, %cond.false1153
  %cond1159 = phi double* [ %phitmp1407, %cond.false1153 ], [ null, %cond.end1149 ]
  %284 = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_psizz, align 4, !dbg !133, !tbaa !129
  %cmp1160 = icmp slt i32 %284, 0, !dbg !133
  br i1 %cmp1160, label %cond.end1167, label %cond.false1162, !dbg !133

cond.false1162:                                   ; preds = %cond.end1158
  %idxprom1163 = sext i32 %284 to i64, !dbg !133
  %data1164 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17, !dbg !133
  %285 = load i8**** %data1164, align 8, !dbg !133, !tbaa !134
  %arrayidx1165 = getelementptr inbounds i8*** %285, i64 %idxprom1163, !dbg !133
  %286 = load i8*** %arrayidx1165, align 8, !dbg !133, !tbaa !134
  %287 = load i8** %286, align 8, !dbg !133, !tbaa !134
  %phitmp1408 = bitcast i8* %287 to double*, !dbg !133
  br label %cond.end1167, !dbg !133

cond.end1167:                                     ; preds = %cond.end1158, %cond.false1162
  %cond1168 = phi double* [ %phitmp1408, %cond.false1162 ], [ null, %cond.end1158 ]
  %288 = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_r, align 4, !dbg !133, !tbaa !129
  %cmp1169 = icmp slt i32 %288, 0, !dbg !133
  br i1 %cmp1169, label %cond.end1176, label %cond.false1171, !dbg !133

cond.false1171:                                   ; preds = %cond.end1167
  %idxprom1172 = sext i32 %288 to i64, !dbg !133
  %data1173 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17, !dbg !133
  %289 = load i8**** %data1173, align 8, !dbg !133, !tbaa !134
  %arrayidx1174 = getelementptr inbounds i8*** %289, i64 %idxprom1172, !dbg !133
  %290 = load i8*** %arrayidx1174, align 8, !dbg !133, !tbaa !134
  %291 = load i8** %290, align 8, !dbg !133, !tbaa !134
  %phitmp1409 = bitcast i8* %291 to double*, !dbg !133
  br label %cond.end1176, !dbg !133

cond.end1176:                                     ; preds = %cond.end1167, %cond.false1171
  %cond1177 = phi double* [ %phitmp1409, %cond.false1171 ], [ null, %cond.end1167 ]
  %292 = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_shift_state, align 4, !dbg !133, !tbaa !129
  %cmp1178 = icmp slt i32 %292, 0, !dbg !133
  br i1 %cmp1178, label %cond.end1185, label %cond.false1180, !dbg !133

cond.false1180:                                   ; preds = %cond.end1176
  %idxprom1181 = sext i32 %292 to i64, !dbg !133
  %data1182 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17, !dbg !133
  %293 = load i8**** %data1182, align 8, !dbg !133, !tbaa !134
  %arrayidx1183 = getelementptr inbounds i8*** %293, i64 %idxprom1181, !dbg !133
  %294 = load i8*** %arrayidx1183, align 8, !dbg !133, !tbaa !134
  %295 = load i8** %294, align 8, !dbg !133, !tbaa !134
  %phitmp1410 = bitcast i8* %295 to i32*, !dbg !133
  br label %cond.end1185, !dbg !133

cond.end1185:                                     ; preds = %cond.end1176, %cond.false1180
  %cond1186 = phi i32* [ %phitmp1410, %cond.false1180 ], [ null, %cond.end1176 ]
  %296 = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_x, align 4, !dbg !133, !tbaa !129
  %cmp1187 = icmp slt i32 %296, 0, !dbg !133
  br i1 %cmp1187, label %cond.end1194, label %cond.false1189, !dbg !133

cond.false1189:                                   ; preds = %cond.end1185
  %idxprom1190 = sext i32 %296 to i64, !dbg !133
  %data1191 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17, !dbg !133
  %297 = load i8**** %data1191, align 8, !dbg !133, !tbaa !134
  %arrayidx1192 = getelementptr inbounds i8*** %297, i64 %idxprom1190, !dbg !133
  %298 = load i8*** %arrayidx1192, align 8, !dbg !133, !tbaa !134
  %299 = load i8** %298, align 8, !dbg !133, !tbaa !134
  %phitmp1411 = bitcast i8* %299 to double*, !dbg !133
  br label %cond.end1194, !dbg !133

cond.end1194:                                     ; preds = %cond.end1185, %cond.false1189
  %cond1195 = phi double* [ %phitmp1411, %cond.false1189 ], [ null, %cond.end1185 ]
  %300 = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_y, align 4, !dbg !133, !tbaa !129
  %cmp1196 = icmp slt i32 %300, 0, !dbg !133
  br i1 %cmp1196, label %cond.end1203, label %cond.false1198, !dbg !133

cond.false1198:                                   ; preds = %cond.end1194
  %idxprom1199 = sext i32 %300 to i64, !dbg !133
  %data1200 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17, !dbg !133
  %301 = load i8**** %data1200, align 8, !dbg !133, !tbaa !134
  %arrayidx1201 = getelementptr inbounds i8*** %301, i64 %idxprom1199, !dbg !133
  %302 = load i8*** %arrayidx1201, align 8, !dbg !133, !tbaa !134
  %303 = load i8** %302, align 8, !dbg !133, !tbaa !134
  %phitmp1412 = bitcast i8* %303 to double*, !dbg !133
  br label %cond.end1203, !dbg !133

cond.end1203:                                     ; preds = %cond.end1194, %cond.false1198
  %cond1204 = phi double* [ %phitmp1412, %cond.false1198 ], [ null, %cond.end1194 ]
  %304 = load i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_z, align 4, !dbg !133, !tbaa !129
  %cmp1205 = icmp slt i32 %304, 0, !dbg !133
  br i1 %cmp1205, label %cond.end1212, label %cond.false1207, !dbg !133

cond.false1207:                                   ; preds = %cond.end1203
  %idxprom1208 = sext i32 %304 to i64, !dbg !133
  %data1209 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17, !dbg !133
  %305 = load i8**** %data1209, align 8, !dbg !133, !tbaa !134
  %arrayidx1210 = getelementptr inbounds i8*** %305, i64 %idxprom1208, !dbg !133
  %306 = load i8*** %arrayidx1210, align 8, !dbg !133, !tbaa !134
  %307 = load i8** %306, align 8, !dbg !133, !tbaa !134
  %phitmp1413 = bitcast i8* %307 to double*, !dbg !133
  br label %cond.end1212, !dbg !133

cond.end1212:                                     ; preds = %cond.end1203, %cond.false1207
  %cond1213 = phi double* [ %phitmp1413, %cond.false1207 ], [ null, %cond.end1203 ]
  tail call void %70(i32* %cctk_dim, i32* %71, i32* %72, i32* %73, i32* %74, i32* %75, i32* %76, i32* %77, i32* %78, double* %cctk_delta_time, double* %cctk_time, double* %79, double* %80, i32* %81, i32* %cctk_convlevel, i32* %82, i32* %cctk_iteration, %struct.cGH* %GH, i32* %cond28314151418, i32* %cond2951419, i32* %cond307, i32* %cond31914221425, i32* %cond3311426, i32* %cond343, i32* %cond35514291432, i32* %cond3671433, i32* %cond379, i32* %cond39114361439, i32* %cond4031440, i32* %cond415, double* %cond421, double* %cond430, double* %cond439, double* %cond448, double* %cond457, double* %cond466, double* %cond475, double* %cond484, double* %cond493, double* %cond502, double* %cond511, double* %cond520, double* %cond529, double* %cond538, i32* %cond55014431446, i32* %cond5621447, i32* %cond574, i32* %cond58614501453, i32* %cond5981454, i32* %cond610, i32* %cond62214571460, i32* %cond6341461, i32* %cond646, i32* %cond65814641467, i32* %cond6701468, i32* %cond682, i32* %cond69414711474, i32* %cond7061475, i32* %cond718, i32* %cond73014781481, i32* %cond7421482, i32* %cond754, i32* %cond76614851488, i32* %cond7781489, i32* %cond790, i32* %cond80214921495, i32* %cond8141496, i32* %cond826, i32* %cond83814991502, i32* %cond8501503, i32* %cond862, i32* %cond871, double* %cond880, double* %cond889, double* %cond898, double* %cond907, double* %cond916, double* %cond925, double* %cond934, i32* %cond943, double* %cond952, double* %cond961, double* %cond970, double* %cond979, double* %cond988, double* %cond997, double* %cond1006, double* %cond1015, double* %cond1024, double* %cond1033, double* %cond1042, double* %cond1051, double* %cond1060, double* %cond1069, double* %cond1078, double* %cond1087, double* %cond1096, double* %cond1105, double* %cond1114, double* %cond1123, double* %cond1132, double* %cond1141, double* %cond1150, double* %cond1159, double* %cond1168, double* %cond1177, i32* %cond1186, double* %cond1195, double* %cond1204, double* %cond1213) #3, !dbg !133
  ret i32 0, !dbg !135
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

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !56, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CactusBindings/Einstein_FortranWrapper.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/436.cactusADM/src/CactusBindings/Einstein_FortranWrapper.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CCTKi_BindingsFortranWrapperEinstein", metadata !"CCTKi_BindingsFortranWrapperEinstein", metadata !"", i32 13, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.cGH*, i8*)* @CCTKi_BindingsFortranWrapperEinstein, null, null, metadata !47, i32 14} ; [ DW_TAG_subprogram ] [line 13] [def] [scope 14] [CCTKi_BindingsFortranWrapperEinstein]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CactusBindings/Einstein_FortranWrapper.c]
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
!53 = metadata !{null, metadata !17, metadata !17, metadata !17, metadata !17, metadata !17, metadata !17, metadata !17, metadata !17, metadata !17, metadata !27, metadata !27, metadata !27, metadata !27, metadata !17, metadata !17, metadata !17, metadata !17, metadata !9, metadata !54, metadata !54, metadata !54, metadata !54, metadata !54, metadata !54, metadata !54, metadata !54, metadata !54, metadata !54, metadata !54, metadata !54, metadata !27, metadata !27, metadata !27, metadata !27, metadata !27, metadata !27, metadata !27, metadata !27, metadata !27, metadata !27, metadata !27, metadata !27, metadata !27, metadata !27, metadata !54, metadata !54, metadata !54, metadata !54, metadata !54, metadata !54, metadata !54, metadata !54, metadata !54, metadata !54, metadata !54, metadata !54, metadata !54, metadata !54, metadata !54, metadata !54, metadata !54, metadata !54, metadata !54, metadata !54, metadata !54, metadata !54, metadata !54, metadata !54, metadata !54, metadata !54, metadata !54, metadata !17, metadata !27, metadata !27, metadata !27, metadata !27, metadata !27, metadata !27, metadata !27, metadata !17, metadata !27, metadata !27, metadata !27, metadata !27, metadata !27, metadata !27, metadata !27, metadata !27, metadata !27, metadata !27, metadata !27, metadata !27, metadata !27, metadata !27, metadata !27, metadata !27, metadata !27, metadata !27, metadata !27, metadata !27, metadata !27, metadata !27, metadata !27, metadata !27, metadata !27, metadata !27, metadata !17, metadata !27, metadata !27, metadata !27}
!54 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !55} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!55 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !8} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from int]
!56 = metadata !{metadata !57, metadata !58, metadata !59, metadata !60, metadata !61, metadata !62, metadata !63, metadata !64, metadata !65, metadata !66, metadata !67, metadata !68, metadata !69, metadata !70, metadata !71, metadata !72, metadata !73, metadata !74, metadata !75, metadata !76, metadata !77, metadata !78, metadata !79, metadata !80, metadata !81, metadata !82, metadata !83, metadata !84, metadata !85, metadata !86, metadata !87, metadata !88, metadata !89, metadata !90, metadata !91, metadata !92, metadata !93, metadata !94, metadata !95, metadata !96, metadata !97, metadata !98, metadata !99, metadata !100, metadata !101, metadata !102, metadata !103, metadata !104, metadata !105, metadata !106, metadata !107, metadata !108, metadata !109, metadata !110, metadata !111, metadata !112, metadata !113, metadata !114, metadata !115, metadata !116, metadata !117, metadata !118, metadata !119, metadata !120, metadata !121, metadata !122, metadata !123, metadata !124, metadata !125, metadata !126}
!57 = metadata !{i32 786484, i32 0, metadata !4, metadata !"CCTKARGNUM_detg", metadata !"CCTKARGNUM_detg", metadata !"", metadata !5, i32 17, metadata !8, i32 1, i32 1, i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_detg, null} ; [ DW_TAG_variable ] [CCTKARGNUM_detg] [line 17] [local] [def]
!58 = metadata !{i32 786484, i32 0, metadata !4, metadata !"CCTKGROUPNUM_detofg", metadata !"CCTKGROUPNUM_detofg", metadata !"", metadata !5, i32 17, metadata !8, i32 1, i32 1, i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKGROUPNUM_detofg, null} ; [ DW_TAG_variable ] [CCTKGROUPNUM_detofg] [line 17] [local] [def]
!59 = metadata !{i32 786484, i32 0, metadata !4, metadata !"CCTKARGNUM_gpp", metadata !"CCTKARGNUM_gpp", metadata !"", metadata !5, i32 17, metadata !8, i32 1, i32 1, i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_gpp, null} ; [ DW_TAG_variable ] [CCTKARGNUM_gpp] [line 17] [local] [def]
!60 = metadata !{i32 786484, i32 0, metadata !4, metadata !"CCTKGROUPNUM_spherical_metric", metadata !"CCTKGROUPNUM_spherical_metric", metadata !"", metadata !5, i32 17, metadata !8, i32 1, i32 1, i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKGROUPNUM_spherical_metric, null} ; [ DW_TAG_variable ] [CCTKGROUPNUM_spherical_metric] [line 17] [local] [def]
!61 = metadata !{i32 786484, i32 0, metadata !4, metadata !"CCTKARGNUM_gqp", metadata !"CCTKARGNUM_gqp", metadata !"", metadata !5, i32 17, metadata !8, i32 1, i32 1, i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_gqp, null} ; [ DW_TAG_variable ] [CCTKARGNUM_gqp] [line 17] [local] [def]
!62 = metadata !{i32 786484, i32 0, metadata !4, metadata !"CCTKARGNUM_gqq", metadata !"CCTKARGNUM_gqq", metadata !"", metadata !5, i32 17, metadata !8, i32 1, i32 1, i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_gqq, null} ; [ DW_TAG_variable ] [CCTKARGNUM_gqq] [line 17] [local] [def]
!63 = metadata !{i32 786484, i32 0, metadata !4, metadata !"CCTKARGNUM_grp", metadata !"CCTKARGNUM_grp", metadata !"", metadata !5, i32 17, metadata !8, i32 1, i32 1, i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_grp, null} ; [ DW_TAG_variable ] [CCTKARGNUM_grp] [line 17] [local] [def]
!64 = metadata !{i32 786484, i32 0, metadata !4, metadata !"CCTKARGNUM_grq", metadata !"CCTKARGNUM_grq", metadata !"", metadata !5, i32 17, metadata !8, i32 1, i32 1, i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_grq, null} ; [ DW_TAG_variable ] [CCTKARGNUM_grq] [line 17] [local] [def]
!65 = metadata !{i32 786484, i32 0, metadata !4, metadata !"CCTKARGNUM_grr", metadata !"CCTKARGNUM_grr", metadata !"", metadata !5, i32 17, metadata !8, i32 1, i32 1, i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_grr, null} ; [ DW_TAG_variable ] [CCTKARGNUM_grr] [line 17] [local] [def]
!66 = metadata !{i32 786484, i32 0, metadata !4, metadata !"CCTKARGNUM_kpp", metadata !"CCTKARGNUM_kpp", metadata !"", metadata !5, i32 17, metadata !8, i32 1, i32 1, i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_kpp, null} ; [ DW_TAG_variable ] [CCTKARGNUM_kpp] [line 17] [local] [def]
!67 = metadata !{i32 786484, i32 0, metadata !4, metadata !"CCTKGROUPNUM_spherical_curv", metadata !"CCTKGROUPNUM_spherical_curv", metadata !"", metadata !5, i32 17, metadata !8, i32 1, i32 1, i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKGROUPNUM_spherical_curv, null} ; [ DW_TAG_variable ] [CCTKGROUPNUM_spherical_curv] [line 17] [local] [def]
!68 = metadata !{i32 786484, i32 0, metadata !4, metadata !"CCTKARGNUM_kqp", metadata !"CCTKARGNUM_kqp", metadata !"", metadata !5, i32 17, metadata !8, i32 1, i32 1, i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_kqp, null} ; [ DW_TAG_variable ] [CCTKARGNUM_kqp] [line 17] [local] [def]
!69 = metadata !{i32 786484, i32 0, metadata !4, metadata !"CCTKARGNUM_kqq", metadata !"CCTKARGNUM_kqq", metadata !"", metadata !5, i32 17, metadata !8, i32 1, i32 1, i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_kqq, null} ; [ DW_TAG_variable ] [CCTKARGNUM_kqq] [line 17] [local] [def]
!70 = metadata !{i32 786484, i32 0, metadata !4, metadata !"CCTKARGNUM_krp", metadata !"CCTKARGNUM_krp", metadata !"", metadata !5, i32 17, metadata !8, i32 1, i32 1, i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_krp, null} ; [ DW_TAG_variable ] [CCTKARGNUM_krp] [line 17] [local] [def]
!71 = metadata !{i32 786484, i32 0, metadata !4, metadata !"CCTKARGNUM_krq", metadata !"CCTKARGNUM_krq", metadata !"", metadata !5, i32 17, metadata !8, i32 1, i32 1, i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_krq, null} ; [ DW_TAG_variable ] [CCTKARGNUM_krq] [line 17] [local] [def]
!72 = metadata !{i32 786484, i32 0, metadata !4, metadata !"CCTKARGNUM_krr", metadata !"CCTKARGNUM_krr", metadata !"", metadata !5, i32 17, metadata !8, i32 1, i32 1, i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_krr, null} ; [ DW_TAG_variable ] [CCTKARGNUM_krr] [line 17] [local] [def]
!73 = metadata !{i32 786484, i32 0, metadata !4, metadata !"CCTKARGNUM_trK", metadata !"CCTKARGNUM_trK", metadata !"", metadata !5, i32 17, metadata !8, i32 1, i32 1, i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_trK, null} ; [ DW_TAG_variable ] [CCTKARGNUM_trK] [line 17] [local] [def]
!74 = metadata !{i32 786484, i32 0, metadata !4, metadata !"CCTKGROUPNUM_trace_of_K", metadata !"CCTKGROUPNUM_trace_of_K", metadata !"", metadata !5, i32 17, metadata !8, i32 1, i32 1, i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKGROUPNUM_trace_of_K, null} ; [ DW_TAG_variable ] [CCTKGROUPNUM_trace_of_K] [line 17] [local] [def]
!75 = metadata !{i32 786484, i32 0, metadata !4, metadata !"CCTKARGNUM_active_slicing_handle", metadata !"CCTKARGNUM_active_slicing_handle", metadata !"", metadata !5, i32 17, metadata !8, i32 1, i32 1, i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_active_slicing_handle, null} ; [ DW_TAG_variable ] [CCTKARGNUM_active_slicing_handle] [line 17] [local] [def]
!76 = metadata !{i32 786484, i32 0, metadata !4, metadata !"CCTKGROUPNUM_slicing_flags", metadata !"CCTKGROUPNUM_slicing_flags", metadata !"", metadata !5, i32 17, metadata !8, i32 1, i32 1, i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKGROUPNUM_slicing_flags, null} ; [ DW_TAG_variable ] [CCTKGROUPNUM_slicing_flags] [line 17] [local] [def]
!77 = metadata !{i32 786484, i32 0, metadata !4, metadata !"CCTKARGNUM_alp", metadata !"CCTKARGNUM_alp", metadata !"", metadata !5, i32 17, metadata !8, i32 1, i32 1, i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_alp, null} ; [ DW_TAG_variable ] [CCTKARGNUM_alp] [line 17] [local] [def]
!78 = metadata !{i32 786484, i32 0, metadata !4, metadata !"CCTKGROUPNUM_lapse", metadata !"CCTKGROUPNUM_lapse", metadata !"", metadata !5, i32 17, metadata !8, i32 1, i32 1, i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKGROUPNUM_lapse, null} ; [ DW_TAG_variable ] [CCTKGROUPNUM_lapse] [line 17] [local] [def]
!79 = metadata !{i32 786484, i32 0, metadata !4, metadata !"CCTKARGNUM_betax", metadata !"CCTKARGNUM_betax", metadata !"", metadata !5, i32 17, metadata !8, i32 1, i32 1, i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_betax, null} ; [ DW_TAG_variable ] [CCTKARGNUM_betax] [line 17] [local] [def]
!80 = metadata !{i32 786484, i32 0, metadata !4, metadata !"CCTKGROUPNUM_shift", metadata !"CCTKGROUPNUM_shift", metadata !"", metadata !5, i32 17, metadata !8, i32 1, i32 1, i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKGROUPNUM_shift, null} ; [ DW_TAG_variable ] [CCTKGROUPNUM_shift] [line 17] [local] [def]
!81 = metadata !{i32 786484, i32 0, metadata !4, metadata !"CCTKARGNUM_betay", metadata !"CCTKARGNUM_betay", metadata !"", metadata !5, i32 17, metadata !8, i32 1, i32 1, i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_betay, null} ; [ DW_TAG_variable ] [CCTKARGNUM_betay] [line 17] [local] [def]
!82 = metadata !{i32 786484, i32 0, metadata !4, metadata !"CCTKARGNUM_betaz", metadata !"CCTKARGNUM_betaz", metadata !"", metadata !5, i32 17, metadata !8, i32 1, i32 1, i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_betaz, null} ; [ DW_TAG_variable ] [CCTKARGNUM_betaz] [line 17] [local] [def]
!83 = metadata !{i32 786484, i32 0, metadata !4, metadata !"CCTKARGNUM_coarse_dx", metadata !"CCTKARGNUM_coarse_dx", metadata !"", metadata !5, i32 17, metadata !8, i32 1, i32 1, i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_coarse_dx, null} ; [ DW_TAG_variable ] [CCTKARGNUM_coarse_dx] [line 17] [local] [def]
!84 = metadata !{i32 786484, i32 0, metadata !4, metadata !"CCTKGROUPNUM_gridspacings", metadata !"CCTKGROUPNUM_gridspacings", metadata !"", metadata !5, i32 17, metadata !8, i32 1, i32 1, i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKGROUPNUM_gridspacings, null} ; [ DW_TAG_variable ] [CCTKGROUPNUM_gridspacings] [line 17] [local] [def]
!85 = metadata !{i32 786484, i32 0, metadata !4, metadata !"CCTKARGNUM_coarse_dy", metadata !"CCTKARGNUM_coarse_dy", metadata !"", metadata !5, i32 17, metadata !8, i32 1, i32 1, i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_coarse_dy, null} ; [ DW_TAG_variable ] [CCTKARGNUM_coarse_dy] [line 17] [local] [def]
!86 = metadata !{i32 786484, i32 0, metadata !4, metadata !"CCTKARGNUM_coarse_dz", metadata !"CCTKARGNUM_coarse_dz", metadata !"", metadata !5, i32 17, metadata !8, i32 1, i32 1, i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_coarse_dz, null} ; [ DW_TAG_variable ] [CCTKARGNUM_coarse_dz] [line 17] [local] [def]
!87 = metadata !{i32 786484, i32 0, metadata !4, metadata !"CCTKARGNUM_conformal_state", metadata !"CCTKARGNUM_conformal_state", metadata !"", metadata !5, i32 17, metadata !8, i32 1, i32 1, i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_conformal_state, null} ; [ DW_TAG_variable ] [CCTKARGNUM_conformal_state] [line 17] [local] [def]
!88 = metadata !{i32 786484, i32 0, metadata !4, metadata !"CCTKGROUPNUM_flags", metadata !"CCTKGROUPNUM_flags", metadata !"", metadata !5, i32 17, metadata !8, i32 1, i32 1, i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKGROUPNUM_flags, null} ; [ DW_TAG_variable ] [CCTKGROUPNUM_flags] [line 17] [local] [def]
!89 = metadata !{i32 786484, i32 0, metadata !4, metadata !"CCTKARGNUM_courant_min_time", metadata !"CCTKARGNUM_courant_min_time", metadata !"", metadata !5, i32 17, metadata !8, i32 1, i32 1, i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_courant_min_time, null} ; [ DW_TAG_variable ] [CCTKARGNUM_courant_min_time] [line 17] [local] [def]
!90 = metadata !{i32 786484, i32 0, metadata !4, metadata !"CCTKGROUPNUM_speedvars", metadata !"CCTKGROUPNUM_speedvars", metadata !"", metadata !5, i32 17, metadata !8, i32 1, i32 1, i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKGROUPNUM_speedvars, null} ; [ DW_TAG_variable ] [CCTKGROUPNUM_speedvars] [line 17] [local] [def]
!91 = metadata !{i32 786484, i32 0, metadata !4, metadata !"CCTKARGNUM_courant_wave_speed", metadata !"CCTKARGNUM_courant_wave_speed", metadata !"", metadata !5, i32 17, metadata !8, i32 1, i32 1, i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_courant_wave_speed, null} ; [ DW_TAG_variable ] [CCTKARGNUM_courant_wave_speed] [line 17] [local] [def]
!92 = metadata !{i32 786484, i32 0, metadata !4, metadata !"CCTKARGNUM_emask", metadata !"CCTKARGNUM_emask", metadata !"", metadata !5, i32 17, metadata !8, i32 1, i32 1, i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_emask, null} ; [ DW_TAG_variable ] [CCTKARGNUM_emask] [line 17] [local] [def]
!93 = metadata !{i32 786484, i32 0, metadata !4, metadata !"CCTKGROUPNUM_mask", metadata !"CCTKGROUPNUM_mask", metadata !"", metadata !5, i32 17, metadata !8, i32 1, i32 1, i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKGROUPNUM_mask, null} ; [ DW_TAG_variable ] [CCTKGROUPNUM_mask] [line 17] [local] [def]
!94 = metadata !{i32 786484, i32 0, metadata !4, metadata !"CCTKARGNUM_gxx", metadata !"CCTKARGNUM_gxx", metadata !"", metadata !5, i32 17, metadata !8, i32 1, i32 1, i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_gxx, null} ; [ DW_TAG_variable ] [CCTKARGNUM_gxx] [line 17] [local] [def]
!95 = metadata !{i32 786484, i32 0, metadata !4, metadata !"CCTKGROUPNUM_metric", metadata !"CCTKGROUPNUM_metric", metadata !"", metadata !5, i32 17, metadata !8, i32 1, i32 1, i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKGROUPNUM_metric, null} ; [ DW_TAG_variable ] [CCTKGROUPNUM_metric] [line 17] [local] [def]
!96 = metadata !{i32 786484, i32 0, metadata !4, metadata !"CCTKARGNUM_gxy", metadata !"CCTKARGNUM_gxy", metadata !"", metadata !5, i32 17, metadata !8, i32 1, i32 1, i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_gxy, null} ; [ DW_TAG_variable ] [CCTKARGNUM_gxy] [line 17] [local] [def]
!97 = metadata !{i32 786484, i32 0, metadata !4, metadata !"CCTKARGNUM_gxz", metadata !"CCTKARGNUM_gxz", metadata !"", metadata !5, i32 17, metadata !8, i32 1, i32 1, i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_gxz, null} ; [ DW_TAG_variable ] [CCTKARGNUM_gxz] [line 17] [local] [def]
!98 = metadata !{i32 786484, i32 0, metadata !4, metadata !"CCTKARGNUM_gyy", metadata !"CCTKARGNUM_gyy", metadata !"", metadata !5, i32 17, metadata !8, i32 1, i32 1, i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_gyy, null} ; [ DW_TAG_variable ] [CCTKARGNUM_gyy] [line 17] [local] [def]
!99 = metadata !{i32 786484, i32 0, metadata !4, metadata !"CCTKARGNUM_gyz", metadata !"CCTKARGNUM_gyz", metadata !"", metadata !5, i32 17, metadata !8, i32 1, i32 1, i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_gyz, null} ; [ DW_TAG_variable ] [CCTKARGNUM_gyz] [line 17] [local] [def]
!100 = metadata !{i32 786484, i32 0, metadata !4, metadata !"CCTKARGNUM_gzz", metadata !"CCTKARGNUM_gzz", metadata !"", metadata !5, i32 17, metadata !8, i32 1, i32 1, i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_gzz, null} ; [ DW_TAG_variable ] [CCTKARGNUM_gzz] [line 17] [local] [def]
!101 = metadata !{i32 786484, i32 0, metadata !4, metadata !"CCTKARGNUM_kxx", metadata !"CCTKARGNUM_kxx", metadata !"", metadata !5, i32 17, metadata !8, i32 1, i32 1, i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_kxx, null} ; [ DW_TAG_variable ] [CCTKARGNUM_kxx] [line 17] [local] [def]
!102 = metadata !{i32 786484, i32 0, metadata !4, metadata !"CCTKGROUPNUM_curv", metadata !"CCTKGROUPNUM_curv", metadata !"", metadata !5, i32 17, metadata !8, i32 1, i32 1, i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKGROUPNUM_curv, null} ; [ DW_TAG_variable ] [CCTKGROUPNUM_curv] [line 17] [local] [def]
!103 = metadata !{i32 786484, i32 0, metadata !4, metadata !"CCTKARGNUM_kxy", metadata !"CCTKARGNUM_kxy", metadata !"", metadata !5, i32 17, metadata !8, i32 1, i32 1, i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_kxy, null} ; [ DW_TAG_variable ] [CCTKARGNUM_kxy] [line 17] [local] [def]
!104 = metadata !{i32 786484, i32 0, metadata !4, metadata !"CCTKARGNUM_kxz", metadata !"CCTKARGNUM_kxz", metadata !"", metadata !5, i32 17, metadata !8, i32 1, i32 1, i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_kxz, null} ; [ DW_TAG_variable ] [CCTKARGNUM_kxz] [line 17] [local] [def]
!105 = metadata !{i32 786484, i32 0, metadata !4, metadata !"CCTKARGNUM_kyy", metadata !"CCTKARGNUM_kyy", metadata !"", metadata !5, i32 17, metadata !8, i32 1, i32 1, i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_kyy, null} ; [ DW_TAG_variable ] [CCTKARGNUM_kyy] [line 17] [local] [def]
!106 = metadata !{i32 786484, i32 0, metadata !4, metadata !"CCTKARGNUM_kyz", metadata !"CCTKARGNUM_kyz", metadata !"", metadata !5, i32 17, metadata !8, i32 1, i32 1, i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_kyz, null} ; [ DW_TAG_variable ] [CCTKARGNUM_kyz] [line 17] [local] [def]
!107 = metadata !{i32 786484, i32 0, metadata !4, metadata !"CCTKARGNUM_kzz", metadata !"CCTKARGNUM_kzz", metadata !"", metadata !5, i32 17, metadata !8, i32 1, i32 1, i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_kzz, null} ; [ DW_TAG_variable ] [CCTKARGNUM_kzz] [line 17] [local] [def]
!108 = metadata !{i32 786484, i32 0, metadata !4, metadata !"CCTKARGNUM_psi", metadata !"CCTKARGNUM_psi", metadata !"", metadata !5, i32 17, metadata !8, i32 1, i32 1, i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_psi, null} ; [ DW_TAG_variable ] [CCTKARGNUM_psi] [line 17] [local] [def]
!109 = metadata !{i32 786484, i32 0, metadata !4, metadata !"CCTKGROUPNUM_confac", metadata !"CCTKGROUPNUM_confac", metadata !"", metadata !5, i32 17, metadata !8, i32 1, i32 1, i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKGROUPNUM_confac, null} ; [ DW_TAG_variable ] [CCTKGROUPNUM_confac] [line 17] [local] [def]
!110 = metadata !{i32 786484, i32 0, metadata !4, metadata !"CCTKARGNUM_psix", metadata !"CCTKARGNUM_psix", metadata !"", metadata !5, i32 17, metadata !8, i32 1, i32 1, i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_psix, null} ; [ DW_TAG_variable ] [CCTKARGNUM_psix] [line 17] [local] [def]
!111 = metadata !{i32 786484, i32 0, metadata !4, metadata !"CCTKGROUPNUM_confac_1derivs", metadata !"CCTKGROUPNUM_confac_1derivs", metadata !"", metadata !5, i32 17, metadata !8, i32 1, i32 1, i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKGROUPNUM_confac_1derivs, null} ; [ DW_TAG_variable ] [CCTKGROUPNUM_confac_1derivs] [line 17] [local] [def]
!112 = metadata !{i32 786484, i32 0, metadata !4, metadata !"CCTKARGNUM_psixx", metadata !"CCTKARGNUM_psixx", metadata !"", metadata !5, i32 17, metadata !8, i32 1, i32 1, i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_psixx, null} ; [ DW_TAG_variable ] [CCTKARGNUM_psixx] [line 17] [local] [def]
!113 = metadata !{i32 786484, i32 0, metadata !4, metadata !"CCTKGROUPNUM_confac_2derivs", metadata !"CCTKGROUPNUM_confac_2derivs", metadata !"", metadata !5, i32 17, metadata !8, i32 1, i32 1, i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKGROUPNUM_confac_2derivs, null} ; [ DW_TAG_variable ] [CCTKGROUPNUM_confac_2derivs] [line 17] [local] [def]
!114 = metadata !{i32 786484, i32 0, metadata !4, metadata !"CCTKARGNUM_psixy", metadata !"CCTKARGNUM_psixy", metadata !"", metadata !5, i32 17, metadata !8, i32 1, i32 1, i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_psixy, null} ; [ DW_TAG_variable ] [CCTKARGNUM_psixy] [line 17] [local] [def]
!115 = metadata !{i32 786484, i32 0, metadata !4, metadata !"CCTKARGNUM_psixz", metadata !"CCTKARGNUM_psixz", metadata !"", metadata !5, i32 17, metadata !8, i32 1, i32 1, i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_psixz, null} ; [ DW_TAG_variable ] [CCTKARGNUM_psixz] [line 17] [local] [def]
!116 = metadata !{i32 786484, i32 0, metadata !4, metadata !"CCTKARGNUM_psiy", metadata !"CCTKARGNUM_psiy", metadata !"", metadata !5, i32 17, metadata !8, i32 1, i32 1, i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_psiy, null} ; [ DW_TAG_variable ] [CCTKARGNUM_psiy] [line 17] [local] [def]
!117 = metadata !{i32 786484, i32 0, metadata !4, metadata !"CCTKARGNUM_psiyy", metadata !"CCTKARGNUM_psiyy", metadata !"", metadata !5, i32 17, metadata !8, i32 1, i32 1, i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_psiyy, null} ; [ DW_TAG_variable ] [CCTKARGNUM_psiyy] [line 17] [local] [def]
!118 = metadata !{i32 786484, i32 0, metadata !4, metadata !"CCTKARGNUM_psiyz", metadata !"CCTKARGNUM_psiyz", metadata !"", metadata !5, i32 17, metadata !8, i32 1, i32 1, i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_psiyz, null} ; [ DW_TAG_variable ] [CCTKARGNUM_psiyz] [line 17] [local] [def]
!119 = metadata !{i32 786484, i32 0, metadata !4, metadata !"CCTKARGNUM_psiz", metadata !"CCTKARGNUM_psiz", metadata !"", metadata !5, i32 17, metadata !8, i32 1, i32 1, i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_psiz, null} ; [ DW_TAG_variable ] [CCTKARGNUM_psiz] [line 17] [local] [def]
!120 = metadata !{i32 786484, i32 0, metadata !4, metadata !"CCTKARGNUM_psizz", metadata !"CCTKARGNUM_psizz", metadata !"", metadata !5, i32 17, metadata !8, i32 1, i32 1, i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_psizz, null} ; [ DW_TAG_variable ] [CCTKARGNUM_psizz] [line 17] [local] [def]
!121 = metadata !{i32 786484, i32 0, metadata !4, metadata !"CCTKARGNUM_r", metadata !"CCTKARGNUM_r", metadata !"", metadata !5, i32 17, metadata !8, i32 1, i32 1, i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_r, null} ; [ DW_TAG_variable ] [CCTKARGNUM_r] [line 17] [local] [def]
!122 = metadata !{i32 786484, i32 0, metadata !4, metadata !"CCTKGROUPNUM_coordinates", metadata !"CCTKGROUPNUM_coordinates", metadata !"", metadata !5, i32 17, metadata !8, i32 1, i32 1, i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKGROUPNUM_coordinates, null} ; [ DW_TAG_variable ] [CCTKGROUPNUM_coordinates] [line 17] [local] [def]
!123 = metadata !{i32 786484, i32 0, metadata !4, metadata !"CCTKARGNUM_shift_state", metadata !"CCTKARGNUM_shift_state", metadata !"", metadata !5, i32 17, metadata !8, i32 1, i32 1, i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_shift_state, null} ; [ DW_TAG_variable ] [CCTKARGNUM_shift_state] [line 17] [local] [def]
!124 = metadata !{i32 786484, i32 0, metadata !4, metadata !"CCTKARGNUM_x", metadata !"CCTKARGNUM_x", metadata !"", metadata !5, i32 17, metadata !8, i32 1, i32 1, i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_x, null} ; [ DW_TAG_variable ] [CCTKARGNUM_x] [line 17] [local] [def]
!125 = metadata !{i32 786484, i32 0, metadata !4, metadata !"CCTKARGNUM_y", metadata !"CCTKARGNUM_y", metadata !"", metadata !5, i32 17, metadata !8, i32 1, i32 1, i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_y, null} ; [ DW_TAG_variable ] [CCTKARGNUM_y] [line 17] [local] [def]
!126 = metadata !{i32 786484, i32 0, metadata !4, metadata !"CCTKARGNUM_z", metadata !"CCTKARGNUM_z", metadata !"", metadata !5, i32 17, metadata !8, i32 1, i32 1, i32* @CCTKi_BindingsFortranWrapperEinstein.CCTKARGNUM_z, null} ; [ DW_TAG_variable ] [CCTKARGNUM_z] [line 17] [local] [def]
!127 = metadata !{i32 13, i32 0, metadata !4, null}
!128 = metadata !{i32 18, i32 0, metadata !4, null}
!129 = metadata !{metadata !"int", metadata !130}
!130 = metadata !{metadata !"omnipotent char", metadata !131}
!131 = metadata !{metadata !"Simple C/C++ TBAA"}
!132 = metadata !{i32 20, i32 0, metadata !4, null}
!133 = metadata !{i32 22, i32 0, metadata !4, null}
!134 = metadata !{metadata !"any pointer", metadata !130}
!135 = metadata !{i32 24, i32 0, metadata !4, null}
