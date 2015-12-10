; ModuleID = '../../SPEC/benchspec/CPU2006/436.cactusADM/src/CactusBindings/IDLinearWaves_FortranWrapper.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cGH = type { i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, double, double*, double*, i32*, i32*, i32, i32*, double, i8***, i8**, %struct.cGHGroupData* }
%struct.cGHGroupData = type { i8, i8 }

@CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_active_slicing_handle = internal unnamed_addr global i32 -1, align 4
@CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKGROUPNUM_slicing_flags = internal unnamed_addr global i32 -1, align 4
@CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_alp = internal unnamed_addr global i32 -1, align 4
@CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKGROUPNUM_lapse = internal unnamed_addr global i32 -1, align 4
@CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_betax = internal unnamed_addr global i32 -1, align 4
@CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKGROUPNUM_shift = internal unnamed_addr global i32 -1, align 4
@CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_betay = internal unnamed_addr global i32 -1, align 4
@CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_betaz = internal unnamed_addr global i32 -1, align 4
@CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_coarse_dx = internal unnamed_addr global i32 -1, align 4
@CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKGROUPNUM_gridspacings = internal unnamed_addr global i32 -1, align 4
@CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_coarse_dy = internal unnamed_addr global i32 -1, align 4
@CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_coarse_dz = internal unnamed_addr global i32 -1, align 4
@CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_conformal_state = internal unnamed_addr global i32 -1, align 4
@CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKGROUPNUM_flags = internal unnamed_addr global i32 -1, align 4
@CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_courant_min_time = internal unnamed_addr global i32 -1, align 4
@CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKGROUPNUM_speedvars = internal unnamed_addr global i32 -1, align 4
@CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_courant_wave_speed = internal unnamed_addr global i32 -1, align 4
@CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_emask = internal unnamed_addr global i32 -1, align 4
@CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKGROUPNUM_mask = internal unnamed_addr global i32 -1, align 4
@CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_gxx = internal unnamed_addr global i32 -1, align 4
@CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKGROUPNUM_metric = internal unnamed_addr global i32 -1, align 4
@CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_gxy = internal unnamed_addr global i32 -1, align 4
@CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_gxz = internal unnamed_addr global i32 -1, align 4
@CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_gyy = internal unnamed_addr global i32 -1, align 4
@CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_gyz = internal unnamed_addr global i32 -1, align 4
@CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_gzz = internal unnamed_addr global i32 -1, align 4
@CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_kxx = internal unnamed_addr global i32 -1, align 4
@CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKGROUPNUM_curv = internal unnamed_addr global i32 -1, align 4
@CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_kxy = internal unnamed_addr global i32 -1, align 4
@CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_kxz = internal unnamed_addr global i32 -1, align 4
@CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_kyy = internal unnamed_addr global i32 -1, align 4
@CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_kyz = internal unnamed_addr global i32 -1, align 4
@CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_kzz = internal unnamed_addr global i32 -1, align 4
@CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_psi = internal unnamed_addr global i32 -1, align 4
@CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKGROUPNUM_confac = internal unnamed_addr global i32 -1, align 4
@CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_psix = internal unnamed_addr global i32 -1, align 4
@CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKGROUPNUM_confac_1derivs = internal unnamed_addr global i32 -1, align 4
@CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_psixx = internal unnamed_addr global i32 -1, align 4
@CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKGROUPNUM_confac_2derivs = internal unnamed_addr global i32 -1, align 4
@CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_psixy = internal unnamed_addr global i32 -1, align 4
@CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_psixz = internal unnamed_addr global i32 -1, align 4
@CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_psiy = internal unnamed_addr global i32 -1, align 4
@CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_psiyy = internal unnamed_addr global i32 -1, align 4
@CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_psiyz = internal unnamed_addr global i32 -1, align 4
@CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_psiz = internal unnamed_addr global i32 -1, align 4
@CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_psizz = internal unnamed_addr global i32 -1, align 4
@CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_r = internal unnamed_addr global i32 -1, align 4
@CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKGROUPNUM_coordinates = internal unnamed_addr global i32 -1, align 4
@CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_shift_state = internal unnamed_addr global i32 -1, align 4
@CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_x = internal unnamed_addr global i32 -1, align 4
@CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_y = internal unnamed_addr global i32 -1, align 4
@CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_z = internal unnamed_addr global i32 -1, align 4
@.str = private unnamed_addr constant [32 x i8] c"EINSTEIN::active_slicing_handle\00", align 1
@.str1 = private unnamed_addr constant [24 x i8] c"EINSTEIN::slicing_flags\00", align 1
@.str2 = private unnamed_addr constant [14 x i8] c"EINSTEIN::alp\00", align 1
@.str3 = private unnamed_addr constant [16 x i8] c"EINSTEIN::lapse\00", align 1
@.str4 = private unnamed_addr constant [16 x i8] c"EINSTEIN::betax\00", align 1
@.str5 = private unnamed_addr constant [16 x i8] c"EINSTEIN::shift\00", align 1
@.str6 = private unnamed_addr constant [16 x i8] c"EINSTEIN::betay\00", align 1
@.str7 = private unnamed_addr constant [16 x i8] c"EINSTEIN::betaz\00", align 1
@.str8 = private unnamed_addr constant [16 x i8] c"GRID::coarse_dx\00", align 1
@.str9 = private unnamed_addr constant [19 x i8] c"GRID::gridspacings\00", align 1
@.str10 = private unnamed_addr constant [16 x i8] c"GRID::coarse_dy\00", align 1
@.str11 = private unnamed_addr constant [16 x i8] c"GRID::coarse_dz\00", align 1
@.str12 = private unnamed_addr constant [26 x i8] c"EINSTEIN::conformal_state\00", align 1
@.str13 = private unnamed_addr constant [16 x i8] c"EINSTEIN::flags\00", align 1
@.str14 = private unnamed_addr constant [23 x i8] c"TIME::courant_min_time\00", align 1
@.str15 = private unnamed_addr constant [16 x i8] c"TIME::speedvars\00", align 1
@.str16 = private unnamed_addr constant [25 x i8] c"TIME::courant_wave_speed\00", align 1
@.str17 = private unnamed_addr constant [16 x i8] c"EINSTEIN::emask\00", align 1
@.str18 = private unnamed_addr constant [15 x i8] c"EINSTEIN::mask\00", align 1
@.str19 = private unnamed_addr constant [14 x i8] c"EINSTEIN::gxx\00", align 1
@.str20 = private unnamed_addr constant [17 x i8] c"EINSTEIN::metric\00", align 1
@.str21 = private unnamed_addr constant [14 x i8] c"EINSTEIN::gxy\00", align 1
@.str22 = private unnamed_addr constant [14 x i8] c"EINSTEIN::gxz\00", align 1
@.str23 = private unnamed_addr constant [14 x i8] c"EINSTEIN::gyy\00", align 1
@.str24 = private unnamed_addr constant [14 x i8] c"EINSTEIN::gyz\00", align 1
@.str25 = private unnamed_addr constant [14 x i8] c"EINSTEIN::gzz\00", align 1
@.str26 = private unnamed_addr constant [14 x i8] c"EINSTEIN::kxx\00", align 1
@.str27 = private unnamed_addr constant [15 x i8] c"EINSTEIN::curv\00", align 1
@.str28 = private unnamed_addr constant [14 x i8] c"EINSTEIN::kxy\00", align 1
@.str29 = private unnamed_addr constant [14 x i8] c"EINSTEIN::kxz\00", align 1
@.str30 = private unnamed_addr constant [14 x i8] c"EINSTEIN::kyy\00", align 1
@.str31 = private unnamed_addr constant [14 x i8] c"EINSTEIN::kyz\00", align 1
@.str32 = private unnamed_addr constant [14 x i8] c"EINSTEIN::kzz\00", align 1
@.str33 = private unnamed_addr constant [14 x i8] c"EINSTEIN::psi\00", align 1
@.str34 = private unnamed_addr constant [17 x i8] c"EINSTEIN::confac\00", align 1
@.str35 = private unnamed_addr constant [15 x i8] c"EINSTEIN::psix\00", align 1
@.str36 = private unnamed_addr constant [25 x i8] c"EINSTEIN::confac_1derivs\00", align 1
@.str37 = private unnamed_addr constant [16 x i8] c"EINSTEIN::psixx\00", align 1
@.str38 = private unnamed_addr constant [25 x i8] c"EINSTEIN::confac_2derivs\00", align 1
@.str39 = private unnamed_addr constant [16 x i8] c"EINSTEIN::psixy\00", align 1
@.str40 = private unnamed_addr constant [16 x i8] c"EINSTEIN::psixz\00", align 1
@.str41 = private unnamed_addr constant [15 x i8] c"EINSTEIN::psiy\00", align 1
@.str42 = private unnamed_addr constant [16 x i8] c"EINSTEIN::psiyy\00", align 1
@.str43 = private unnamed_addr constant [16 x i8] c"EINSTEIN::psiyz\00", align 1
@.str44 = private unnamed_addr constant [15 x i8] c"EINSTEIN::psiz\00", align 1
@.str45 = private unnamed_addr constant [16 x i8] c"EINSTEIN::psizz\00", align 1
@.str46 = private unnamed_addr constant [8 x i8] c"GRID::r\00", align 1
@.str47 = private unnamed_addr constant [18 x i8] c"GRID::coordinates\00", align 1
@.str48 = private unnamed_addr constant [22 x i8] c"EINSTEIN::shift_state\00", align 1
@.str49 = private unnamed_addr constant [8 x i8] c"GRID::x\00", align 1
@.str50 = private unnamed_addr constant [8 x i8] c"GRID::y\00", align 1
@.str51 = private unnamed_addr constant [8 x i8] c"GRID::z\00", align 1
@_cctk_one = external global i32

; Function Attrs: nounwind optsize uwtable
define i32 @CCTKi_BindingsFortranWrapperIDLinearWaves(%struct.cGH* %GH, i8* nocapture %fpointer) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.cGH* %GH}, i64 0, metadata !48), !dbg !109
  tail call void @llvm.dbg.value(metadata !{i8* %fpointer}, i64 0, metadata !49), !dbg !109
  %0 = load i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_active_slicing_handle, align 4, !dbg !110, !tbaa !111
  %cmp = icmp eq i32 %0, -1, !dbg !110
  br i1 %cmp, label %if.then, label %if.end, !dbg !110

if.then:                                          ; preds = %entry
  %call = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([32 x i8]* @.str, i64 0, i64 0)) #3, !dbg !110
  store i32 %call, i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_active_slicing_handle, align 4, !dbg !110, !tbaa !111
  br label %if.end, !dbg !110

if.end:                                           ; preds = %if.then, %entry
  %1 = load i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKGROUPNUM_slicing_flags, align 4, !dbg !110, !tbaa !111
  %cmp1 = icmp eq i32 %1, -1, !dbg !110
  br i1 %cmp1, label %if.then2, label %if.end4, !dbg !110

if.then2:                                         ; preds = %if.end
  %call3 = tail call i32 @CCTK_GroupIndex(i8* getelementptr inbounds ([24 x i8]* @.str1, i64 0, i64 0)) #3, !dbg !110
  store i32 %call3, i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKGROUPNUM_slicing_flags, align 4, !dbg !110, !tbaa !111
  br label %if.end4, !dbg !110

if.end4:                                          ; preds = %if.then2, %if.end
  %2 = load i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_alp, align 4, !dbg !110, !tbaa !111
  %cmp5 = icmp eq i32 %2, -1, !dbg !110
  br i1 %cmp5, label %if.then6, label %if.end8, !dbg !110

if.then6:                                         ; preds = %if.end4
  %call7 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str2, i64 0, i64 0)) #3, !dbg !110
  store i32 %call7, i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_alp, align 4, !dbg !110, !tbaa !111
  br label %if.end8, !dbg !110

if.end8:                                          ; preds = %if.then6, %if.end4
  %3 = load i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKGROUPNUM_lapse, align 4, !dbg !110, !tbaa !111
  %cmp9 = icmp eq i32 %3, -1, !dbg !110
  br i1 %cmp9, label %if.then10, label %if.end12, !dbg !110

if.then10:                                        ; preds = %if.end8
  %call11 = tail call i32 @CCTK_GroupIndex(i8* getelementptr inbounds ([16 x i8]* @.str3, i64 0, i64 0)) #3, !dbg !110
  store i32 %call11, i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKGROUPNUM_lapse, align 4, !dbg !110, !tbaa !111
  br label %if.end12, !dbg !110

if.end12:                                         ; preds = %if.then10, %if.end8
  %4 = load i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_betax, align 4, !dbg !110, !tbaa !111
  %cmp13 = icmp eq i32 %4, -1, !dbg !110
  br i1 %cmp13, label %if.then14, label %if.end16, !dbg !110

if.then14:                                        ; preds = %if.end12
  %call15 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str4, i64 0, i64 0)) #3, !dbg !110
  store i32 %call15, i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_betax, align 4, !dbg !110, !tbaa !111
  br label %if.end16, !dbg !110

if.end16:                                         ; preds = %if.then14, %if.end12
  %5 = load i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKGROUPNUM_shift, align 4, !dbg !110, !tbaa !111
  %cmp17 = icmp eq i32 %5, -1, !dbg !110
  br i1 %cmp17, label %if.then18, label %if.end20, !dbg !110

if.then18:                                        ; preds = %if.end16
  %call19 = tail call i32 @CCTK_GroupIndex(i8* getelementptr inbounds ([16 x i8]* @.str5, i64 0, i64 0)) #3, !dbg !110
  store i32 %call19, i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKGROUPNUM_shift, align 4, !dbg !110, !tbaa !111
  br label %if.end20, !dbg !110

if.end20:                                         ; preds = %if.then18, %if.end16
  %6 = load i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_betay, align 4, !dbg !110, !tbaa !111
  %cmp21 = icmp eq i32 %6, -1, !dbg !110
  br i1 %cmp21, label %if.then22, label %if.end24, !dbg !110

if.then22:                                        ; preds = %if.end20
  %call23 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str6, i64 0, i64 0)) #3, !dbg !110
  store i32 %call23, i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_betay, align 4, !dbg !110, !tbaa !111
  br label %if.end24, !dbg !110

if.end24:                                         ; preds = %if.then22, %if.end20
  %7 = load i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_betaz, align 4, !dbg !110, !tbaa !111
  %cmp25 = icmp eq i32 %7, -1, !dbg !110
  br i1 %cmp25, label %if.then26, label %if.end28, !dbg !110

if.then26:                                        ; preds = %if.end24
  %call27 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str7, i64 0, i64 0)) #3, !dbg !110
  store i32 %call27, i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_betaz, align 4, !dbg !110, !tbaa !111
  br label %if.end28, !dbg !110

if.end28:                                         ; preds = %if.then26, %if.end24
  %8 = load i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_coarse_dx, align 4, !dbg !110, !tbaa !111
  %cmp29 = icmp eq i32 %8, -1, !dbg !110
  br i1 %cmp29, label %if.then30, label %if.end32, !dbg !110

if.then30:                                        ; preds = %if.end28
  %call31 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str8, i64 0, i64 0)) #3, !dbg !110
  store i32 %call31, i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_coarse_dx, align 4, !dbg !110, !tbaa !111
  br label %if.end32, !dbg !110

if.end32:                                         ; preds = %if.then30, %if.end28
  %9 = load i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKGROUPNUM_gridspacings, align 4, !dbg !110, !tbaa !111
  %cmp33 = icmp eq i32 %9, -1, !dbg !110
  br i1 %cmp33, label %if.then34, label %if.end36, !dbg !110

if.then34:                                        ; preds = %if.end32
  %call35 = tail call i32 @CCTK_GroupIndex(i8* getelementptr inbounds ([19 x i8]* @.str9, i64 0, i64 0)) #3, !dbg !110
  store i32 %call35, i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKGROUPNUM_gridspacings, align 4, !dbg !110, !tbaa !111
  br label %if.end36, !dbg !110

if.end36:                                         ; preds = %if.then34, %if.end32
  %10 = load i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_coarse_dy, align 4, !dbg !110, !tbaa !111
  %cmp37 = icmp eq i32 %10, -1, !dbg !110
  br i1 %cmp37, label %if.then38, label %if.end40, !dbg !110

if.then38:                                        ; preds = %if.end36
  %call39 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str10, i64 0, i64 0)) #3, !dbg !110
  store i32 %call39, i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_coarse_dy, align 4, !dbg !110, !tbaa !111
  br label %if.end40, !dbg !110

if.end40:                                         ; preds = %if.then38, %if.end36
  %11 = load i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_coarse_dz, align 4, !dbg !110, !tbaa !111
  %cmp41 = icmp eq i32 %11, -1, !dbg !110
  br i1 %cmp41, label %if.then42, label %if.end44, !dbg !110

if.then42:                                        ; preds = %if.end40
  %call43 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str11, i64 0, i64 0)) #3, !dbg !110
  store i32 %call43, i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_coarse_dz, align 4, !dbg !110, !tbaa !111
  br label %if.end44, !dbg !110

if.end44:                                         ; preds = %if.then42, %if.end40
  %12 = load i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_conformal_state, align 4, !dbg !110, !tbaa !111
  %cmp45 = icmp eq i32 %12, -1, !dbg !110
  br i1 %cmp45, label %if.then46, label %if.end48, !dbg !110

if.then46:                                        ; preds = %if.end44
  %call47 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([26 x i8]* @.str12, i64 0, i64 0)) #3, !dbg !110
  store i32 %call47, i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_conformal_state, align 4, !dbg !110, !tbaa !111
  br label %if.end48, !dbg !110

if.end48:                                         ; preds = %if.then46, %if.end44
  %13 = load i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKGROUPNUM_flags, align 4, !dbg !110, !tbaa !111
  %cmp49 = icmp eq i32 %13, -1, !dbg !110
  br i1 %cmp49, label %if.then50, label %if.end52, !dbg !110

if.then50:                                        ; preds = %if.end48
  %call51 = tail call i32 @CCTK_GroupIndex(i8* getelementptr inbounds ([16 x i8]* @.str13, i64 0, i64 0)) #3, !dbg !110
  store i32 %call51, i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKGROUPNUM_flags, align 4, !dbg !110, !tbaa !111
  br label %if.end52, !dbg !110

if.end52:                                         ; preds = %if.then50, %if.end48
  %14 = load i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_courant_min_time, align 4, !dbg !110, !tbaa !111
  %cmp53 = icmp eq i32 %14, -1, !dbg !110
  br i1 %cmp53, label %if.then54, label %if.end56, !dbg !110

if.then54:                                        ; preds = %if.end52
  %call55 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([23 x i8]* @.str14, i64 0, i64 0)) #3, !dbg !110
  store i32 %call55, i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_courant_min_time, align 4, !dbg !110, !tbaa !111
  br label %if.end56, !dbg !110

if.end56:                                         ; preds = %if.then54, %if.end52
  %15 = load i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKGROUPNUM_speedvars, align 4, !dbg !110, !tbaa !111
  %cmp57 = icmp eq i32 %15, -1, !dbg !110
  br i1 %cmp57, label %if.then58, label %if.end60, !dbg !110

if.then58:                                        ; preds = %if.end56
  %call59 = tail call i32 @CCTK_GroupIndex(i8* getelementptr inbounds ([16 x i8]* @.str15, i64 0, i64 0)) #3, !dbg !110
  store i32 %call59, i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKGROUPNUM_speedvars, align 4, !dbg !110, !tbaa !111
  br label %if.end60, !dbg !110

if.end60:                                         ; preds = %if.then58, %if.end56
  %16 = load i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_courant_wave_speed, align 4, !dbg !110, !tbaa !111
  %cmp61 = icmp eq i32 %16, -1, !dbg !110
  br i1 %cmp61, label %if.then62, label %if.end64, !dbg !110

if.then62:                                        ; preds = %if.end60
  %call63 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([25 x i8]* @.str16, i64 0, i64 0)) #3, !dbg !110
  store i32 %call63, i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_courant_wave_speed, align 4, !dbg !110, !tbaa !111
  br label %if.end64, !dbg !110

if.end64:                                         ; preds = %if.then62, %if.end60
  %17 = load i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_emask, align 4, !dbg !110, !tbaa !111
  %cmp65 = icmp eq i32 %17, -1, !dbg !110
  br i1 %cmp65, label %if.then66, label %if.end68, !dbg !110

if.then66:                                        ; preds = %if.end64
  %call67 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str17, i64 0, i64 0)) #3, !dbg !110
  store i32 %call67, i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_emask, align 4, !dbg !110, !tbaa !111
  br label %if.end68, !dbg !110

if.end68:                                         ; preds = %if.then66, %if.end64
  %18 = load i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKGROUPNUM_mask, align 4, !dbg !110, !tbaa !111
  %cmp69 = icmp eq i32 %18, -1, !dbg !110
  br i1 %cmp69, label %if.then70, label %if.end72, !dbg !110

if.then70:                                        ; preds = %if.end68
  %call71 = tail call i32 @CCTK_GroupIndex(i8* getelementptr inbounds ([15 x i8]* @.str18, i64 0, i64 0)) #3, !dbg !110
  store i32 %call71, i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKGROUPNUM_mask, align 4, !dbg !110, !tbaa !111
  br label %if.end72, !dbg !110

if.end72:                                         ; preds = %if.then70, %if.end68
  %19 = load i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_gxx, align 4, !dbg !110, !tbaa !111
  %cmp73 = icmp eq i32 %19, -1, !dbg !110
  br i1 %cmp73, label %if.then74, label %if.end76, !dbg !110

if.then74:                                        ; preds = %if.end72
  %call75 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str19, i64 0, i64 0)) #3, !dbg !110
  store i32 %call75, i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_gxx, align 4, !dbg !110, !tbaa !111
  br label %if.end76, !dbg !110

if.end76:                                         ; preds = %if.then74, %if.end72
  %20 = load i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKGROUPNUM_metric, align 4, !dbg !110, !tbaa !111
  %cmp77 = icmp eq i32 %20, -1, !dbg !110
  br i1 %cmp77, label %if.then78, label %if.end80, !dbg !110

if.then78:                                        ; preds = %if.end76
  %call79 = tail call i32 @CCTK_GroupIndex(i8* getelementptr inbounds ([17 x i8]* @.str20, i64 0, i64 0)) #3, !dbg !110
  store i32 %call79, i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKGROUPNUM_metric, align 4, !dbg !110, !tbaa !111
  br label %if.end80, !dbg !110

if.end80:                                         ; preds = %if.then78, %if.end76
  %21 = load i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_gxy, align 4, !dbg !110, !tbaa !111
  %cmp81 = icmp eq i32 %21, -1, !dbg !110
  br i1 %cmp81, label %if.then82, label %if.end84, !dbg !110

if.then82:                                        ; preds = %if.end80
  %call83 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str21, i64 0, i64 0)) #3, !dbg !110
  store i32 %call83, i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_gxy, align 4, !dbg !110, !tbaa !111
  br label %if.end84, !dbg !110

if.end84:                                         ; preds = %if.then82, %if.end80
  %22 = load i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_gxz, align 4, !dbg !110, !tbaa !111
  %cmp85 = icmp eq i32 %22, -1, !dbg !110
  br i1 %cmp85, label %if.then86, label %if.end88, !dbg !110

if.then86:                                        ; preds = %if.end84
  %call87 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str22, i64 0, i64 0)) #3, !dbg !110
  store i32 %call87, i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_gxz, align 4, !dbg !110, !tbaa !111
  br label %if.end88, !dbg !110

if.end88:                                         ; preds = %if.then86, %if.end84
  %23 = load i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_gyy, align 4, !dbg !110, !tbaa !111
  %cmp89 = icmp eq i32 %23, -1, !dbg !110
  br i1 %cmp89, label %if.then90, label %if.end92, !dbg !110

if.then90:                                        ; preds = %if.end88
  %call91 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str23, i64 0, i64 0)) #3, !dbg !110
  store i32 %call91, i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_gyy, align 4, !dbg !110, !tbaa !111
  br label %if.end92, !dbg !110

if.end92:                                         ; preds = %if.then90, %if.end88
  %24 = load i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_gyz, align 4, !dbg !110, !tbaa !111
  %cmp93 = icmp eq i32 %24, -1, !dbg !110
  br i1 %cmp93, label %if.then94, label %if.end96, !dbg !110

if.then94:                                        ; preds = %if.end92
  %call95 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str24, i64 0, i64 0)) #3, !dbg !110
  store i32 %call95, i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_gyz, align 4, !dbg !110, !tbaa !111
  br label %if.end96, !dbg !110

if.end96:                                         ; preds = %if.then94, %if.end92
  %25 = load i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_gzz, align 4, !dbg !110, !tbaa !111
  %cmp97 = icmp eq i32 %25, -1, !dbg !110
  br i1 %cmp97, label %if.then98, label %if.end100, !dbg !110

if.then98:                                        ; preds = %if.end96
  %call99 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str25, i64 0, i64 0)) #3, !dbg !110
  store i32 %call99, i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_gzz, align 4, !dbg !110, !tbaa !111
  br label %if.end100, !dbg !110

if.end100:                                        ; preds = %if.then98, %if.end96
  %26 = load i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_kxx, align 4, !dbg !110, !tbaa !111
  %cmp101 = icmp eq i32 %26, -1, !dbg !110
  br i1 %cmp101, label %if.then102, label %if.end104, !dbg !110

if.then102:                                       ; preds = %if.end100
  %call103 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str26, i64 0, i64 0)) #3, !dbg !110
  store i32 %call103, i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_kxx, align 4, !dbg !110, !tbaa !111
  br label %if.end104, !dbg !110

if.end104:                                        ; preds = %if.then102, %if.end100
  %27 = load i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKGROUPNUM_curv, align 4, !dbg !110, !tbaa !111
  %cmp105 = icmp eq i32 %27, -1, !dbg !110
  br i1 %cmp105, label %if.then106, label %if.end108, !dbg !110

if.then106:                                       ; preds = %if.end104
  %call107 = tail call i32 @CCTK_GroupIndex(i8* getelementptr inbounds ([15 x i8]* @.str27, i64 0, i64 0)) #3, !dbg !110
  store i32 %call107, i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKGROUPNUM_curv, align 4, !dbg !110, !tbaa !111
  br label %if.end108, !dbg !110

if.end108:                                        ; preds = %if.then106, %if.end104
  %28 = load i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_kxy, align 4, !dbg !110, !tbaa !111
  %cmp109 = icmp eq i32 %28, -1, !dbg !110
  br i1 %cmp109, label %if.then110, label %if.end112, !dbg !110

if.then110:                                       ; preds = %if.end108
  %call111 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str28, i64 0, i64 0)) #3, !dbg !110
  store i32 %call111, i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_kxy, align 4, !dbg !110, !tbaa !111
  br label %if.end112, !dbg !110

if.end112:                                        ; preds = %if.then110, %if.end108
  %29 = load i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_kxz, align 4, !dbg !110, !tbaa !111
  %cmp113 = icmp eq i32 %29, -1, !dbg !110
  br i1 %cmp113, label %if.then114, label %if.end116, !dbg !110

if.then114:                                       ; preds = %if.end112
  %call115 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str29, i64 0, i64 0)) #3, !dbg !110
  store i32 %call115, i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_kxz, align 4, !dbg !110, !tbaa !111
  br label %if.end116, !dbg !110

if.end116:                                        ; preds = %if.then114, %if.end112
  %30 = load i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_kyy, align 4, !dbg !110, !tbaa !111
  %cmp117 = icmp eq i32 %30, -1, !dbg !110
  br i1 %cmp117, label %if.then118, label %if.end120, !dbg !110

if.then118:                                       ; preds = %if.end116
  %call119 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str30, i64 0, i64 0)) #3, !dbg !110
  store i32 %call119, i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_kyy, align 4, !dbg !110, !tbaa !111
  br label %if.end120, !dbg !110

if.end120:                                        ; preds = %if.then118, %if.end116
  %31 = load i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_kyz, align 4, !dbg !110, !tbaa !111
  %cmp121 = icmp eq i32 %31, -1, !dbg !110
  br i1 %cmp121, label %if.then122, label %if.end124, !dbg !110

if.then122:                                       ; preds = %if.end120
  %call123 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str31, i64 0, i64 0)) #3, !dbg !110
  store i32 %call123, i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_kyz, align 4, !dbg !110, !tbaa !111
  br label %if.end124, !dbg !110

if.end124:                                        ; preds = %if.then122, %if.end120
  %32 = load i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_kzz, align 4, !dbg !110, !tbaa !111
  %cmp125 = icmp eq i32 %32, -1, !dbg !110
  br i1 %cmp125, label %if.then126, label %if.end128, !dbg !110

if.then126:                                       ; preds = %if.end124
  %call127 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str32, i64 0, i64 0)) #3, !dbg !110
  store i32 %call127, i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_kzz, align 4, !dbg !110, !tbaa !111
  br label %if.end128, !dbg !110

if.end128:                                        ; preds = %if.then126, %if.end124
  %33 = load i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_psi, align 4, !dbg !110, !tbaa !111
  %cmp129 = icmp eq i32 %33, -1, !dbg !110
  br i1 %cmp129, label %if.then130, label %if.end132, !dbg !110

if.then130:                                       ; preds = %if.end128
  %call131 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str33, i64 0, i64 0)) #3, !dbg !110
  store i32 %call131, i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_psi, align 4, !dbg !110, !tbaa !111
  br label %if.end132, !dbg !110

if.end132:                                        ; preds = %if.then130, %if.end128
  %34 = load i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKGROUPNUM_confac, align 4, !dbg !110, !tbaa !111
  %cmp133 = icmp eq i32 %34, -1, !dbg !110
  br i1 %cmp133, label %if.then134, label %if.end136, !dbg !110

if.then134:                                       ; preds = %if.end132
  %call135 = tail call i32 @CCTK_GroupIndex(i8* getelementptr inbounds ([17 x i8]* @.str34, i64 0, i64 0)) #3, !dbg !110
  store i32 %call135, i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKGROUPNUM_confac, align 4, !dbg !110, !tbaa !111
  br label %if.end136, !dbg !110

if.end136:                                        ; preds = %if.then134, %if.end132
  %35 = load i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_psix, align 4, !dbg !110, !tbaa !111
  %cmp137 = icmp eq i32 %35, -1, !dbg !110
  br i1 %cmp137, label %if.then138, label %if.end140, !dbg !110

if.then138:                                       ; preds = %if.end136
  %call139 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([15 x i8]* @.str35, i64 0, i64 0)) #3, !dbg !110
  store i32 %call139, i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_psix, align 4, !dbg !110, !tbaa !111
  br label %if.end140, !dbg !110

if.end140:                                        ; preds = %if.then138, %if.end136
  %36 = load i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKGROUPNUM_confac_1derivs, align 4, !dbg !110, !tbaa !111
  %cmp141 = icmp eq i32 %36, -1, !dbg !110
  br i1 %cmp141, label %if.then142, label %if.end144, !dbg !110

if.then142:                                       ; preds = %if.end140
  %call143 = tail call i32 @CCTK_GroupIndex(i8* getelementptr inbounds ([25 x i8]* @.str36, i64 0, i64 0)) #3, !dbg !110
  store i32 %call143, i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKGROUPNUM_confac_1derivs, align 4, !dbg !110, !tbaa !111
  br label %if.end144, !dbg !110

if.end144:                                        ; preds = %if.then142, %if.end140
  %37 = load i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_psixx, align 4, !dbg !110, !tbaa !111
  %cmp145 = icmp eq i32 %37, -1, !dbg !110
  br i1 %cmp145, label %if.then146, label %if.end148, !dbg !110

if.then146:                                       ; preds = %if.end144
  %call147 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str37, i64 0, i64 0)) #3, !dbg !110
  store i32 %call147, i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_psixx, align 4, !dbg !110, !tbaa !111
  br label %if.end148, !dbg !110

if.end148:                                        ; preds = %if.then146, %if.end144
  %38 = load i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKGROUPNUM_confac_2derivs, align 4, !dbg !110, !tbaa !111
  %cmp149 = icmp eq i32 %38, -1, !dbg !110
  br i1 %cmp149, label %if.then150, label %if.end152, !dbg !110

if.then150:                                       ; preds = %if.end148
  %call151 = tail call i32 @CCTK_GroupIndex(i8* getelementptr inbounds ([25 x i8]* @.str38, i64 0, i64 0)) #3, !dbg !110
  store i32 %call151, i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKGROUPNUM_confac_2derivs, align 4, !dbg !110, !tbaa !111
  br label %if.end152, !dbg !110

if.end152:                                        ; preds = %if.then150, %if.end148
  %39 = load i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_psixy, align 4, !dbg !110, !tbaa !111
  %cmp153 = icmp eq i32 %39, -1, !dbg !110
  br i1 %cmp153, label %if.then154, label %if.end156, !dbg !110

if.then154:                                       ; preds = %if.end152
  %call155 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str39, i64 0, i64 0)) #3, !dbg !110
  store i32 %call155, i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_psixy, align 4, !dbg !110, !tbaa !111
  br label %if.end156, !dbg !110

if.end156:                                        ; preds = %if.then154, %if.end152
  %40 = load i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_psixz, align 4, !dbg !110, !tbaa !111
  %cmp157 = icmp eq i32 %40, -1, !dbg !110
  br i1 %cmp157, label %if.then158, label %if.end160, !dbg !110

if.then158:                                       ; preds = %if.end156
  %call159 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str40, i64 0, i64 0)) #3, !dbg !110
  store i32 %call159, i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_psixz, align 4, !dbg !110, !tbaa !111
  br label %if.end160, !dbg !110

if.end160:                                        ; preds = %if.then158, %if.end156
  %41 = load i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_psiy, align 4, !dbg !110, !tbaa !111
  %cmp161 = icmp eq i32 %41, -1, !dbg !110
  br i1 %cmp161, label %if.then162, label %if.end164, !dbg !110

if.then162:                                       ; preds = %if.end160
  %call163 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([15 x i8]* @.str41, i64 0, i64 0)) #3, !dbg !110
  store i32 %call163, i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_psiy, align 4, !dbg !110, !tbaa !111
  br label %if.end164, !dbg !110

if.end164:                                        ; preds = %if.then162, %if.end160
  %42 = load i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_psiyy, align 4, !dbg !110, !tbaa !111
  %cmp165 = icmp eq i32 %42, -1, !dbg !110
  br i1 %cmp165, label %if.then166, label %if.end168, !dbg !110

if.then166:                                       ; preds = %if.end164
  %call167 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str42, i64 0, i64 0)) #3, !dbg !110
  store i32 %call167, i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_psiyy, align 4, !dbg !110, !tbaa !111
  br label %if.end168, !dbg !110

if.end168:                                        ; preds = %if.then166, %if.end164
  %43 = load i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_psiyz, align 4, !dbg !110, !tbaa !111
  %cmp169 = icmp eq i32 %43, -1, !dbg !110
  br i1 %cmp169, label %if.then170, label %if.end172, !dbg !110

if.then170:                                       ; preds = %if.end168
  %call171 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str43, i64 0, i64 0)) #3, !dbg !110
  store i32 %call171, i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_psiyz, align 4, !dbg !110, !tbaa !111
  br label %if.end172, !dbg !110

if.end172:                                        ; preds = %if.then170, %if.end168
  %44 = load i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_psiz, align 4, !dbg !110, !tbaa !111
  %cmp173 = icmp eq i32 %44, -1, !dbg !110
  br i1 %cmp173, label %if.then174, label %if.end176, !dbg !110

if.then174:                                       ; preds = %if.end172
  %call175 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([15 x i8]* @.str44, i64 0, i64 0)) #3, !dbg !110
  store i32 %call175, i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_psiz, align 4, !dbg !110, !tbaa !111
  br label %if.end176, !dbg !110

if.end176:                                        ; preds = %if.then174, %if.end172
  %45 = load i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_psizz, align 4, !dbg !110, !tbaa !111
  %cmp177 = icmp eq i32 %45, -1, !dbg !110
  br i1 %cmp177, label %if.then178, label %if.end180, !dbg !110

if.then178:                                       ; preds = %if.end176
  %call179 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str45, i64 0, i64 0)) #3, !dbg !110
  store i32 %call179, i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_psizz, align 4, !dbg !110, !tbaa !111
  br label %if.end180, !dbg !110

if.end180:                                        ; preds = %if.then178, %if.end176
  %46 = load i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_r, align 4, !dbg !110, !tbaa !111
  %cmp181 = icmp eq i32 %46, -1, !dbg !110
  br i1 %cmp181, label %if.then182, label %if.end184, !dbg !110

if.then182:                                       ; preds = %if.end180
  %call183 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([8 x i8]* @.str46, i64 0, i64 0)) #3, !dbg !110
  store i32 %call183, i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_r, align 4, !dbg !110, !tbaa !111
  br label %if.end184, !dbg !110

if.end184:                                        ; preds = %if.then182, %if.end180
  %47 = load i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKGROUPNUM_coordinates, align 4, !dbg !110, !tbaa !111
  %cmp185 = icmp eq i32 %47, -1, !dbg !110
  br i1 %cmp185, label %if.then186, label %if.end188, !dbg !110

if.then186:                                       ; preds = %if.end184
  %call187 = tail call i32 @CCTK_GroupIndex(i8* getelementptr inbounds ([18 x i8]* @.str47, i64 0, i64 0)) #3, !dbg !110
  store i32 %call187, i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKGROUPNUM_coordinates, align 4, !dbg !110, !tbaa !111
  br label %if.end188, !dbg !110

if.end188:                                        ; preds = %if.then186, %if.end184
  %48 = load i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_shift_state, align 4, !dbg !110, !tbaa !111
  %cmp189 = icmp eq i32 %48, -1, !dbg !110
  br i1 %cmp189, label %if.then190, label %if.end192, !dbg !110

if.then190:                                       ; preds = %if.end188
  %call191 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([22 x i8]* @.str48, i64 0, i64 0)) #3, !dbg !110
  store i32 %call191, i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_shift_state, align 4, !dbg !110, !tbaa !111
  br label %if.end192, !dbg !110

if.end192:                                        ; preds = %if.then190, %if.end188
  %49 = load i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_x, align 4, !dbg !110, !tbaa !111
  %cmp193 = icmp eq i32 %49, -1, !dbg !110
  br i1 %cmp193, label %if.then194, label %if.end196, !dbg !110

if.then194:                                       ; preds = %if.end192
  %call195 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([8 x i8]* @.str49, i64 0, i64 0)) #3, !dbg !110
  store i32 %call195, i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_x, align 4, !dbg !110, !tbaa !111
  br label %if.end196, !dbg !110

if.end196:                                        ; preds = %if.then194, %if.end192
  %50 = load i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_y, align 4, !dbg !110, !tbaa !111
  %cmp197 = icmp eq i32 %50, -1, !dbg !110
  br i1 %cmp197, label %if.then198, label %if.end200, !dbg !110

if.then198:                                       ; preds = %if.end196
  %call199 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([8 x i8]* @.str50, i64 0, i64 0)) #3, !dbg !110
  store i32 %call199, i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_y, align 4, !dbg !110, !tbaa !111
  br label %if.end200, !dbg !110

if.end200:                                        ; preds = %if.then198, %if.end196
  %51 = load i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_z, align 4, !dbg !110, !tbaa !111
  %cmp201 = icmp eq i32 %51, -1, !dbg !110
  br i1 %cmp201, label %if.then202, label %if.end204, !dbg !110

if.then202:                                       ; preds = %if.end200
  %call203 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([8 x i8]* @.str51, i64 0, i64 0)) #3, !dbg !110
  store i32 %call203, i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_z, align 4, !dbg !110, !tbaa !111
  br label %if.end204, !dbg !110

if.end204:                                        ; preds = %if.end200, %if.then202
  %52 = bitcast i8* %fpointer to void (i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, double*, double*, double*, double*, i32*, i32*, i32*, i32*, %struct.cGH*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, double*, double*, double*, double*, double*, double*, double*, i32*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, i32*, double*, double*, double*)*, !dbg !114
  tail call void @llvm.dbg.value(metadata !{void (i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, double*, double*, double*, double*, i32*, i32*, i32*, i32*, %struct.cGH*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, double*, double*, double*, double*, double*, double*, double*, i32*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, i32*, double*, double*, double*)* %52}, i64 0, metadata !50), !dbg !114
  %cctk_dim = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 0, !dbg !115
  %cctk_gsh = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 2, !dbg !115
  %53 = load i32** %cctk_gsh, align 8, !dbg !115, !tbaa !116
  %cctk_lsh = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 3, !dbg !115
  %54 = load i32** %cctk_lsh, align 8, !dbg !115, !tbaa !116
  %cctk_lbnd = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 4, !dbg !115
  %55 = load i32** %cctk_lbnd, align 8, !dbg !115, !tbaa !116
  %cctk_ubnd = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 5, !dbg !115
  %56 = load i32** %cctk_ubnd, align 8, !dbg !115, !tbaa !116
  %cctk_lssh = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 6, !dbg !115
  %57 = load i32** %cctk_lssh, align 8, !dbg !115, !tbaa !116
  %cctk_from = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 8, !dbg !115
  %58 = load i32** %cctk_from, align 8, !dbg !115, !tbaa !116
  %cctk_to = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 7, !dbg !115
  %59 = load i32** %cctk_to, align 8, !dbg !115, !tbaa !116
  %cctk_bbox = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 12, !dbg !115
  %60 = load i32** %cctk_bbox, align 8, !dbg !115, !tbaa !116
  %cctk_delta_time = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 9, !dbg !115
  %cctk_time = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 16, !dbg !115
  %cctk_delta_space = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 10, !dbg !115
  %61 = load double** %cctk_delta_space, align 8, !dbg !115, !tbaa !116
  %cctk_origin_space = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 11, !dbg !115
  %62 = load double** %cctk_origin_space, align 8, !dbg !115, !tbaa !116
  %cctk_levfac = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 13, !dbg !115
  %63 = load i32** %cctk_levfac, align 8, !dbg !115, !tbaa !116
  %cctk_convlevel = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 14, !dbg !115
  %cctk_nghostzones = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 15, !dbg !115
  %64 = load i32** %cctk_nghostzones, align 8, !dbg !115, !tbaa !116
  %cctk_iteration = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 1, !dbg !115
  %65 = load i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKGROUPNUM_confac, align 4, !dbg !115, !tbaa !111
  %cmp205 = icmp slt i32 %65, 0, !dbg !115
  br i1 %cmp205, label %cond.end234, label %cond.false, !dbg !115

cond.false:                                       ; preds = %if.end204
  %call206 = tail call i32 @CCTK_QueryGroupStorage(%struct.cGH* %GH, i8* getelementptr inbounds ([17 x i8]* @.str34, i64 0, i64 0)) #3, !dbg !115
  %tobool = icmp eq i32 %call206, 0, !dbg !115
  br i1 %tobool, label %cond.end210, label %cond.true207, !dbg !115

cond.true207:                                     ; preds = %cond.false
  %call208 = tail call i32* @CCTK_ArrayGroupSize(%struct.cGH* %GH, i32 0, i8* getelementptr inbounds ([17 x i8]* @.str34, i64 0, i64 0)) #3, !dbg !115
  br label %cond.end210, !dbg !115

cond.end210:                                      ; preds = %cond.false, %cond.true207
  %cond211.ph = phi i32* [ @_cctk_one, %cond.false ], [ %call208, %cond.true207 ]
  %.pr = load i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKGROUPNUM_confac, align 4, !dbg !115, !tbaa !111
  %cmp212 = icmp slt i32 %.pr, 0, !dbg !115
  br i1 %cmp212, label %cond.end234, label %cond.false214, !dbg !115

cond.false214:                                    ; preds = %cond.end210
  %call215 = tail call i32 @CCTK_QueryGroupStorage(%struct.cGH* %GH, i8* getelementptr inbounds ([17 x i8]* @.str34, i64 0, i64 0)) #3, !dbg !115
  %tobool216 = icmp eq i32 %call215, 0, !dbg !115
  br i1 %tobool216, label %cond.end222, label %cond.true217, !dbg !115

cond.true217:                                     ; preds = %cond.false214
  %call218 = tail call i32* @CCTK_ArrayGroupSize(%struct.cGH* %GH, i32 1, i8* getelementptr inbounds ([17 x i8]* @.str34, i64 0, i64 0)) #3, !dbg !115
  br label %cond.end222, !dbg !115

cond.end222:                                      ; preds = %cond.false214, %cond.true217
  %cond223.ph.ph = phi i32* [ @_cctk_one, %cond.false214 ], [ %call218, %cond.true217 ]
  %.pr1022.pr = load i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKGROUPNUM_confac, align 4, !dbg !115, !tbaa !111
  %cmp224 = icmp slt i32 %.pr1022.pr, 0, !dbg !115
  br i1 %cmp224, label %cond.end234, label %cond.false226, !dbg !115

cond.false226:                                    ; preds = %cond.end222
  %call227 = tail call i32 @CCTK_QueryGroupStorage(%struct.cGH* %GH, i8* getelementptr inbounds ([17 x i8]* @.str34, i64 0, i64 0)) #3, !dbg !115
  %tobool228 = icmp eq i32 %call227, 0, !dbg !115
  br i1 %tobool228, label %cond.end234, label %cond.true229, !dbg !115

cond.true229:                                     ; preds = %cond.false226
  %call230 = tail call i32* @CCTK_ArrayGroupSize(%struct.cGH* %GH, i32 2, i8* getelementptr inbounds ([17 x i8]* @.str34, i64 0, i64 0)) #3, !dbg !115
  br label %cond.end234, !dbg !115

cond.end234:                                      ; preds = %cond.false226, %cond.end222, %cond.end210, %if.end204, %cond.true229
  %cond2231025 = phi i32* [ %cond223.ph.ph, %cond.true229 ], [ @_cctk_one, %if.end204 ], [ @_cctk_one, %cond.end210 ], [ %cond223.ph.ph, %cond.end222 ], [ %cond223.ph.ph, %cond.false226 ]
  %cond21110211024 = phi i32* [ %cond211.ph, %cond.true229 ], [ @_cctk_one, %if.end204 ], [ %cond211.ph, %cond.end210 ], [ %cond211.ph, %cond.end222 ], [ %cond211.ph, %cond.false226 ]
  %cond235 = phi i32* [ %call230, %cond.true229 ], [ @_cctk_one, %if.end204 ], [ @_cctk_one, %cond.end210 ], [ @_cctk_one, %cond.end222 ], [ @_cctk_one, %cond.false226 ], !dbg !115
  %66 = load i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKGROUPNUM_confac_1derivs, align 4, !dbg !115, !tbaa !111
  %cmp236 = icmp slt i32 %66, 0, !dbg !115
  br i1 %cmp236, label %cond.end270, label %cond.false238, !dbg !115

cond.false238:                                    ; preds = %cond.end234
  %call239 = tail call i32 @CCTK_QueryGroupStorage(%struct.cGH* %GH, i8* getelementptr inbounds ([25 x i8]* @.str36, i64 0, i64 0)) #3, !dbg !115
  %tobool240 = icmp eq i32 %call239, 0, !dbg !115
  br i1 %tobool240, label %cond.end246, label %cond.true241, !dbg !115

cond.true241:                                     ; preds = %cond.false238
  %call242 = tail call i32* @CCTK_ArrayGroupSize(%struct.cGH* %GH, i32 0, i8* getelementptr inbounds ([25 x i8]* @.str36, i64 0, i64 0)) #3, !dbg !115
  br label %cond.end246, !dbg !115

cond.end246:                                      ; preds = %cond.false238, %cond.true241
  %cond247.ph = phi i32* [ @_cctk_one, %cond.false238 ], [ %call242, %cond.true241 ]
  %.pr1026 = load i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKGROUPNUM_confac_1derivs, align 4, !dbg !115, !tbaa !111
  %cmp248 = icmp slt i32 %.pr1026, 0, !dbg !115
  br i1 %cmp248, label %cond.end270, label %cond.false250, !dbg !115

cond.false250:                                    ; preds = %cond.end246
  %call251 = tail call i32 @CCTK_QueryGroupStorage(%struct.cGH* %GH, i8* getelementptr inbounds ([25 x i8]* @.str36, i64 0, i64 0)) #3, !dbg !115
  %tobool252 = icmp eq i32 %call251, 0, !dbg !115
  br i1 %tobool252, label %cond.end258, label %cond.true253, !dbg !115

cond.true253:                                     ; preds = %cond.false250
  %call254 = tail call i32* @CCTK_ArrayGroupSize(%struct.cGH* %GH, i32 1, i8* getelementptr inbounds ([25 x i8]* @.str36, i64 0, i64 0)) #3, !dbg !115
  br label %cond.end258, !dbg !115

cond.end258:                                      ; preds = %cond.false250, %cond.true253
  %cond259.ph.ph = phi i32* [ @_cctk_one, %cond.false250 ], [ %call254, %cond.true253 ]
  %.pr1029.pr = load i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKGROUPNUM_confac_1derivs, align 4, !dbg !115, !tbaa !111
  %cmp260 = icmp slt i32 %.pr1029.pr, 0, !dbg !115
  br i1 %cmp260, label %cond.end270, label %cond.false262, !dbg !115

cond.false262:                                    ; preds = %cond.end258
  %call263 = tail call i32 @CCTK_QueryGroupStorage(%struct.cGH* %GH, i8* getelementptr inbounds ([25 x i8]* @.str36, i64 0, i64 0)) #3, !dbg !115
  %tobool264 = icmp eq i32 %call263, 0, !dbg !115
  br i1 %tobool264, label %cond.end270, label %cond.true265, !dbg !115

cond.true265:                                     ; preds = %cond.false262
  %call266 = tail call i32* @CCTK_ArrayGroupSize(%struct.cGH* %GH, i32 2, i8* getelementptr inbounds ([25 x i8]* @.str36, i64 0, i64 0)) #3, !dbg !115
  br label %cond.end270, !dbg !115

cond.end270:                                      ; preds = %cond.false262, %cond.end258, %cond.end246, %cond.end234, %cond.true265
  %cond2591032 = phi i32* [ %cond259.ph.ph, %cond.true265 ], [ @_cctk_one, %cond.end234 ], [ @_cctk_one, %cond.end246 ], [ %cond259.ph.ph, %cond.end258 ], [ %cond259.ph.ph, %cond.false262 ]
  %cond24710281031 = phi i32* [ %cond247.ph, %cond.true265 ], [ @_cctk_one, %cond.end234 ], [ %cond247.ph, %cond.end246 ], [ %cond247.ph, %cond.end258 ], [ %cond247.ph, %cond.false262 ]
  %cond271 = phi i32* [ %call266, %cond.true265 ], [ @_cctk_one, %cond.end234 ], [ @_cctk_one, %cond.end246 ], [ @_cctk_one, %cond.end258 ], [ @_cctk_one, %cond.false262 ], !dbg !115
  %67 = load i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKGROUPNUM_confac_2derivs, align 4, !dbg !115, !tbaa !111
  %cmp272 = icmp slt i32 %67, 0, !dbg !115
  br i1 %cmp272, label %cond.end306, label %cond.false274, !dbg !115

cond.false274:                                    ; preds = %cond.end270
  %call275 = tail call i32 @CCTK_QueryGroupStorage(%struct.cGH* %GH, i8* getelementptr inbounds ([25 x i8]* @.str38, i64 0, i64 0)) #3, !dbg !115
  %tobool276 = icmp eq i32 %call275, 0, !dbg !115
  br i1 %tobool276, label %cond.end282, label %cond.true277, !dbg !115

cond.true277:                                     ; preds = %cond.false274
  %call278 = tail call i32* @CCTK_ArrayGroupSize(%struct.cGH* %GH, i32 0, i8* getelementptr inbounds ([25 x i8]* @.str38, i64 0, i64 0)) #3, !dbg !115
  br label %cond.end282, !dbg !115

cond.end282:                                      ; preds = %cond.false274, %cond.true277
  %cond283.ph = phi i32* [ @_cctk_one, %cond.false274 ], [ %call278, %cond.true277 ]
  %.pr1033 = load i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKGROUPNUM_confac_2derivs, align 4, !dbg !115, !tbaa !111
  %cmp284 = icmp slt i32 %.pr1033, 0, !dbg !115
  br i1 %cmp284, label %cond.end306, label %cond.false286, !dbg !115

cond.false286:                                    ; preds = %cond.end282
  %call287 = tail call i32 @CCTK_QueryGroupStorage(%struct.cGH* %GH, i8* getelementptr inbounds ([25 x i8]* @.str38, i64 0, i64 0)) #3, !dbg !115
  %tobool288 = icmp eq i32 %call287, 0, !dbg !115
  br i1 %tobool288, label %cond.end294, label %cond.true289, !dbg !115

cond.true289:                                     ; preds = %cond.false286
  %call290 = tail call i32* @CCTK_ArrayGroupSize(%struct.cGH* %GH, i32 1, i8* getelementptr inbounds ([25 x i8]* @.str38, i64 0, i64 0)) #3, !dbg !115
  br label %cond.end294, !dbg !115

cond.end294:                                      ; preds = %cond.false286, %cond.true289
  %cond295.ph.ph = phi i32* [ @_cctk_one, %cond.false286 ], [ %call290, %cond.true289 ]
  %.pr1036.pr = load i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKGROUPNUM_confac_2derivs, align 4, !dbg !115, !tbaa !111
  %cmp296 = icmp slt i32 %.pr1036.pr, 0, !dbg !115
  br i1 %cmp296, label %cond.end306, label %cond.false298, !dbg !115

cond.false298:                                    ; preds = %cond.end294
  %call299 = tail call i32 @CCTK_QueryGroupStorage(%struct.cGH* %GH, i8* getelementptr inbounds ([25 x i8]* @.str38, i64 0, i64 0)) #3, !dbg !115
  %tobool300 = icmp eq i32 %call299, 0, !dbg !115
  br i1 %tobool300, label %cond.end306, label %cond.true301, !dbg !115

cond.true301:                                     ; preds = %cond.false298
  %call302 = tail call i32* @CCTK_ArrayGroupSize(%struct.cGH* %GH, i32 2, i8* getelementptr inbounds ([25 x i8]* @.str38, i64 0, i64 0)) #3, !dbg !115
  br label %cond.end306, !dbg !115

cond.end306:                                      ; preds = %cond.false298, %cond.end294, %cond.end282, %cond.end270, %cond.true301
  %cond2951039 = phi i32* [ %cond295.ph.ph, %cond.true301 ], [ @_cctk_one, %cond.end270 ], [ @_cctk_one, %cond.end282 ], [ %cond295.ph.ph, %cond.end294 ], [ %cond295.ph.ph, %cond.false298 ]
  %cond28310351038 = phi i32* [ %cond283.ph, %cond.true301 ], [ @_cctk_one, %cond.end270 ], [ %cond283.ph, %cond.end282 ], [ %cond283.ph, %cond.end294 ], [ %cond283.ph, %cond.false298 ]
  %cond307 = phi i32* [ %call302, %cond.true301 ], [ @_cctk_one, %cond.end270 ], [ @_cctk_one, %cond.end282 ], [ @_cctk_one, %cond.end294 ], [ @_cctk_one, %cond.false298 ], !dbg !115
  %68 = load i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKGROUPNUM_coordinates, align 4, !dbg !115, !tbaa !111
  %cmp308 = icmp slt i32 %68, 0, !dbg !115
  br i1 %cmp308, label %cond.end342, label %cond.false310, !dbg !115

cond.false310:                                    ; preds = %cond.end306
  %call311 = tail call i32 @CCTK_QueryGroupStorage(%struct.cGH* %GH, i8* getelementptr inbounds ([18 x i8]* @.str47, i64 0, i64 0)) #3, !dbg !115
  %tobool312 = icmp eq i32 %call311, 0, !dbg !115
  br i1 %tobool312, label %cond.end318, label %cond.true313, !dbg !115

cond.true313:                                     ; preds = %cond.false310
  %call314 = tail call i32* @CCTK_ArrayGroupSize(%struct.cGH* %GH, i32 0, i8* getelementptr inbounds ([18 x i8]* @.str47, i64 0, i64 0)) #3, !dbg !115
  br label %cond.end318, !dbg !115

cond.end318:                                      ; preds = %cond.false310, %cond.true313
  %cond319.ph = phi i32* [ @_cctk_one, %cond.false310 ], [ %call314, %cond.true313 ]
  %.pr1040 = load i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKGROUPNUM_coordinates, align 4, !dbg !115, !tbaa !111
  %cmp320 = icmp slt i32 %.pr1040, 0, !dbg !115
  br i1 %cmp320, label %cond.end342, label %cond.false322, !dbg !115

cond.false322:                                    ; preds = %cond.end318
  %call323 = tail call i32 @CCTK_QueryGroupStorage(%struct.cGH* %GH, i8* getelementptr inbounds ([18 x i8]* @.str47, i64 0, i64 0)) #3, !dbg !115
  %tobool324 = icmp eq i32 %call323, 0, !dbg !115
  br i1 %tobool324, label %cond.end330, label %cond.true325, !dbg !115

cond.true325:                                     ; preds = %cond.false322
  %call326 = tail call i32* @CCTK_ArrayGroupSize(%struct.cGH* %GH, i32 1, i8* getelementptr inbounds ([18 x i8]* @.str47, i64 0, i64 0)) #3, !dbg !115
  br label %cond.end330, !dbg !115

cond.end330:                                      ; preds = %cond.false322, %cond.true325
  %cond331.ph.ph = phi i32* [ @_cctk_one, %cond.false322 ], [ %call326, %cond.true325 ]
  %.pr1043.pr = load i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKGROUPNUM_coordinates, align 4, !dbg !115, !tbaa !111
  %cmp332 = icmp slt i32 %.pr1043.pr, 0, !dbg !115
  br i1 %cmp332, label %cond.end342, label %cond.false334, !dbg !115

cond.false334:                                    ; preds = %cond.end330
  %call335 = tail call i32 @CCTK_QueryGroupStorage(%struct.cGH* %GH, i8* getelementptr inbounds ([18 x i8]* @.str47, i64 0, i64 0)) #3, !dbg !115
  %tobool336 = icmp eq i32 %call335, 0, !dbg !115
  br i1 %tobool336, label %cond.end342, label %cond.true337, !dbg !115

cond.true337:                                     ; preds = %cond.false334
  %call338 = tail call i32* @CCTK_ArrayGroupSize(%struct.cGH* %GH, i32 2, i8* getelementptr inbounds ([18 x i8]* @.str47, i64 0, i64 0)) #3, !dbg !115
  br label %cond.end342, !dbg !115

cond.end342:                                      ; preds = %cond.false334, %cond.end330, %cond.end318, %cond.end306, %cond.true337
  %cond3311046 = phi i32* [ %cond331.ph.ph, %cond.true337 ], [ @_cctk_one, %cond.end306 ], [ @_cctk_one, %cond.end318 ], [ %cond331.ph.ph, %cond.end330 ], [ %cond331.ph.ph, %cond.false334 ]
  %cond31910421045 = phi i32* [ %cond319.ph, %cond.true337 ], [ @_cctk_one, %cond.end306 ], [ %cond319.ph, %cond.end318 ], [ %cond319.ph, %cond.end330 ], [ %cond319.ph, %cond.false334 ]
  %cond343 = phi i32* [ %call338, %cond.true337 ], [ @_cctk_one, %cond.end306 ], [ @_cctk_one, %cond.end318 ], [ @_cctk_one, %cond.end330 ], [ @_cctk_one, %cond.false334 ], !dbg !115
  %69 = load i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKGROUPNUM_curv, align 4, !dbg !115, !tbaa !111
  %cmp344 = icmp slt i32 %69, 0, !dbg !115
  br i1 %cmp344, label %cond.end378, label %cond.false346, !dbg !115

cond.false346:                                    ; preds = %cond.end342
  %call347 = tail call i32 @CCTK_QueryGroupStorage(%struct.cGH* %GH, i8* getelementptr inbounds ([15 x i8]* @.str27, i64 0, i64 0)) #3, !dbg !115
  %tobool348 = icmp eq i32 %call347, 0, !dbg !115
  br i1 %tobool348, label %cond.end354, label %cond.true349, !dbg !115

cond.true349:                                     ; preds = %cond.false346
  %call350 = tail call i32* @CCTK_ArrayGroupSize(%struct.cGH* %GH, i32 0, i8* getelementptr inbounds ([15 x i8]* @.str27, i64 0, i64 0)) #3, !dbg !115
  br label %cond.end354, !dbg !115

cond.end354:                                      ; preds = %cond.false346, %cond.true349
  %cond355.ph = phi i32* [ @_cctk_one, %cond.false346 ], [ %call350, %cond.true349 ]
  %.pr1047 = load i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKGROUPNUM_curv, align 4, !dbg !115, !tbaa !111
  %cmp356 = icmp slt i32 %.pr1047, 0, !dbg !115
  br i1 %cmp356, label %cond.end378, label %cond.false358, !dbg !115

cond.false358:                                    ; preds = %cond.end354
  %call359 = tail call i32 @CCTK_QueryGroupStorage(%struct.cGH* %GH, i8* getelementptr inbounds ([15 x i8]* @.str27, i64 0, i64 0)) #3, !dbg !115
  %tobool360 = icmp eq i32 %call359, 0, !dbg !115
  br i1 %tobool360, label %cond.end366, label %cond.true361, !dbg !115

cond.true361:                                     ; preds = %cond.false358
  %call362 = tail call i32* @CCTK_ArrayGroupSize(%struct.cGH* %GH, i32 1, i8* getelementptr inbounds ([15 x i8]* @.str27, i64 0, i64 0)) #3, !dbg !115
  br label %cond.end366, !dbg !115

cond.end366:                                      ; preds = %cond.false358, %cond.true361
  %cond367.ph.ph = phi i32* [ @_cctk_one, %cond.false358 ], [ %call362, %cond.true361 ]
  %.pr1050.pr = load i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKGROUPNUM_curv, align 4, !dbg !115, !tbaa !111
  %cmp368 = icmp slt i32 %.pr1050.pr, 0, !dbg !115
  br i1 %cmp368, label %cond.end378, label %cond.false370, !dbg !115

cond.false370:                                    ; preds = %cond.end366
  %call371 = tail call i32 @CCTK_QueryGroupStorage(%struct.cGH* %GH, i8* getelementptr inbounds ([15 x i8]* @.str27, i64 0, i64 0)) #3, !dbg !115
  %tobool372 = icmp eq i32 %call371, 0, !dbg !115
  br i1 %tobool372, label %cond.end378, label %cond.true373, !dbg !115

cond.true373:                                     ; preds = %cond.false370
  %call374 = tail call i32* @CCTK_ArrayGroupSize(%struct.cGH* %GH, i32 2, i8* getelementptr inbounds ([15 x i8]* @.str27, i64 0, i64 0)) #3, !dbg !115
  br label %cond.end378, !dbg !115

cond.end378:                                      ; preds = %cond.false370, %cond.end366, %cond.end354, %cond.end342, %cond.true373
  %cond3671053 = phi i32* [ %cond367.ph.ph, %cond.true373 ], [ @_cctk_one, %cond.end342 ], [ @_cctk_one, %cond.end354 ], [ %cond367.ph.ph, %cond.end366 ], [ %cond367.ph.ph, %cond.false370 ]
  %cond35510491052 = phi i32* [ %cond355.ph, %cond.true373 ], [ @_cctk_one, %cond.end342 ], [ %cond355.ph, %cond.end354 ], [ %cond355.ph, %cond.end366 ], [ %cond355.ph, %cond.false370 ]
  %cond379 = phi i32* [ %call374, %cond.true373 ], [ @_cctk_one, %cond.end342 ], [ @_cctk_one, %cond.end354 ], [ @_cctk_one, %cond.end366 ], [ @_cctk_one, %cond.false370 ], !dbg !115
  %70 = load i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKGROUPNUM_lapse, align 4, !dbg !115, !tbaa !111
  %cmp380 = icmp slt i32 %70, 0, !dbg !115
  br i1 %cmp380, label %cond.end414, label %cond.false382, !dbg !115

cond.false382:                                    ; preds = %cond.end378
  %call383 = tail call i32 @CCTK_QueryGroupStorage(%struct.cGH* %GH, i8* getelementptr inbounds ([16 x i8]* @.str3, i64 0, i64 0)) #3, !dbg !115
  %tobool384 = icmp eq i32 %call383, 0, !dbg !115
  br i1 %tobool384, label %cond.end390, label %cond.true385, !dbg !115

cond.true385:                                     ; preds = %cond.false382
  %call386 = tail call i32* @CCTK_ArrayGroupSize(%struct.cGH* %GH, i32 0, i8* getelementptr inbounds ([16 x i8]* @.str3, i64 0, i64 0)) #3, !dbg !115
  br label %cond.end390, !dbg !115

cond.end390:                                      ; preds = %cond.false382, %cond.true385
  %cond391.ph = phi i32* [ @_cctk_one, %cond.false382 ], [ %call386, %cond.true385 ]
  %.pr1054 = load i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKGROUPNUM_lapse, align 4, !dbg !115, !tbaa !111
  %cmp392 = icmp slt i32 %.pr1054, 0, !dbg !115
  br i1 %cmp392, label %cond.end414, label %cond.false394, !dbg !115

cond.false394:                                    ; preds = %cond.end390
  %call395 = tail call i32 @CCTK_QueryGroupStorage(%struct.cGH* %GH, i8* getelementptr inbounds ([16 x i8]* @.str3, i64 0, i64 0)) #3, !dbg !115
  %tobool396 = icmp eq i32 %call395, 0, !dbg !115
  br i1 %tobool396, label %cond.end402, label %cond.true397, !dbg !115

cond.true397:                                     ; preds = %cond.false394
  %call398 = tail call i32* @CCTK_ArrayGroupSize(%struct.cGH* %GH, i32 1, i8* getelementptr inbounds ([16 x i8]* @.str3, i64 0, i64 0)) #3, !dbg !115
  br label %cond.end402, !dbg !115

cond.end402:                                      ; preds = %cond.false394, %cond.true397
  %cond403.ph.ph = phi i32* [ @_cctk_one, %cond.false394 ], [ %call398, %cond.true397 ]
  %.pr1057.pr = load i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKGROUPNUM_lapse, align 4, !dbg !115, !tbaa !111
  %cmp404 = icmp slt i32 %.pr1057.pr, 0, !dbg !115
  br i1 %cmp404, label %cond.end414, label %cond.false406, !dbg !115

cond.false406:                                    ; preds = %cond.end402
  %call407 = tail call i32 @CCTK_QueryGroupStorage(%struct.cGH* %GH, i8* getelementptr inbounds ([16 x i8]* @.str3, i64 0, i64 0)) #3, !dbg !115
  %tobool408 = icmp eq i32 %call407, 0, !dbg !115
  br i1 %tobool408, label %cond.end414, label %cond.true409, !dbg !115

cond.true409:                                     ; preds = %cond.false406
  %call410 = tail call i32* @CCTK_ArrayGroupSize(%struct.cGH* %GH, i32 2, i8* getelementptr inbounds ([16 x i8]* @.str3, i64 0, i64 0)) #3, !dbg !115
  br label %cond.end414, !dbg !115

cond.end414:                                      ; preds = %cond.false406, %cond.end402, %cond.end390, %cond.end378, %cond.true409
  %cond4031060 = phi i32* [ %cond403.ph.ph, %cond.true409 ], [ @_cctk_one, %cond.end378 ], [ @_cctk_one, %cond.end390 ], [ %cond403.ph.ph, %cond.end402 ], [ %cond403.ph.ph, %cond.false406 ]
  %cond39110561059 = phi i32* [ %cond391.ph, %cond.true409 ], [ @_cctk_one, %cond.end378 ], [ %cond391.ph, %cond.end390 ], [ %cond391.ph, %cond.end402 ], [ %cond391.ph, %cond.false406 ]
  %cond415 = phi i32* [ %call410, %cond.true409 ], [ @_cctk_one, %cond.end378 ], [ @_cctk_one, %cond.end390 ], [ @_cctk_one, %cond.end402 ], [ @_cctk_one, %cond.false406 ], !dbg !115
  %71 = load i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKGROUPNUM_mask, align 4, !dbg !115, !tbaa !111
  %cmp416 = icmp slt i32 %71, 0, !dbg !115
  br i1 %cmp416, label %cond.end450, label %cond.false418, !dbg !115

cond.false418:                                    ; preds = %cond.end414
  %call419 = tail call i32 @CCTK_QueryGroupStorage(%struct.cGH* %GH, i8* getelementptr inbounds ([15 x i8]* @.str18, i64 0, i64 0)) #3, !dbg !115
  %tobool420 = icmp eq i32 %call419, 0, !dbg !115
  br i1 %tobool420, label %cond.end426, label %cond.true421, !dbg !115

cond.true421:                                     ; preds = %cond.false418
  %call422 = tail call i32* @CCTK_ArrayGroupSize(%struct.cGH* %GH, i32 0, i8* getelementptr inbounds ([15 x i8]* @.str18, i64 0, i64 0)) #3, !dbg !115
  br label %cond.end426, !dbg !115

cond.end426:                                      ; preds = %cond.false418, %cond.true421
  %cond427.ph = phi i32* [ @_cctk_one, %cond.false418 ], [ %call422, %cond.true421 ]
  %.pr1061 = load i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKGROUPNUM_mask, align 4, !dbg !115, !tbaa !111
  %cmp428 = icmp slt i32 %.pr1061, 0, !dbg !115
  br i1 %cmp428, label %cond.end450, label %cond.false430, !dbg !115

cond.false430:                                    ; preds = %cond.end426
  %call431 = tail call i32 @CCTK_QueryGroupStorage(%struct.cGH* %GH, i8* getelementptr inbounds ([15 x i8]* @.str18, i64 0, i64 0)) #3, !dbg !115
  %tobool432 = icmp eq i32 %call431, 0, !dbg !115
  br i1 %tobool432, label %cond.end438, label %cond.true433, !dbg !115

cond.true433:                                     ; preds = %cond.false430
  %call434 = tail call i32* @CCTK_ArrayGroupSize(%struct.cGH* %GH, i32 1, i8* getelementptr inbounds ([15 x i8]* @.str18, i64 0, i64 0)) #3, !dbg !115
  br label %cond.end438, !dbg !115

cond.end438:                                      ; preds = %cond.false430, %cond.true433
  %cond439.ph.ph = phi i32* [ @_cctk_one, %cond.false430 ], [ %call434, %cond.true433 ]
  %.pr1064.pr = load i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKGROUPNUM_mask, align 4, !dbg !115, !tbaa !111
  %cmp440 = icmp slt i32 %.pr1064.pr, 0, !dbg !115
  br i1 %cmp440, label %cond.end450, label %cond.false442, !dbg !115

cond.false442:                                    ; preds = %cond.end438
  %call443 = tail call i32 @CCTK_QueryGroupStorage(%struct.cGH* %GH, i8* getelementptr inbounds ([15 x i8]* @.str18, i64 0, i64 0)) #3, !dbg !115
  %tobool444 = icmp eq i32 %call443, 0, !dbg !115
  br i1 %tobool444, label %cond.end450, label %cond.true445, !dbg !115

cond.true445:                                     ; preds = %cond.false442
  %call446 = tail call i32* @CCTK_ArrayGroupSize(%struct.cGH* %GH, i32 2, i8* getelementptr inbounds ([15 x i8]* @.str18, i64 0, i64 0)) #3, !dbg !115
  br label %cond.end450, !dbg !115

cond.end450:                                      ; preds = %cond.false442, %cond.end438, %cond.end426, %cond.end414, %cond.true445
  %cond4391067 = phi i32* [ %cond439.ph.ph, %cond.true445 ], [ @_cctk_one, %cond.end414 ], [ @_cctk_one, %cond.end426 ], [ %cond439.ph.ph, %cond.end438 ], [ %cond439.ph.ph, %cond.false442 ]
  %cond42710631066 = phi i32* [ %cond427.ph, %cond.true445 ], [ @_cctk_one, %cond.end414 ], [ %cond427.ph, %cond.end426 ], [ %cond427.ph, %cond.end438 ], [ %cond427.ph, %cond.false442 ]
  %cond451 = phi i32* [ %call446, %cond.true445 ], [ @_cctk_one, %cond.end414 ], [ @_cctk_one, %cond.end426 ], [ @_cctk_one, %cond.end438 ], [ @_cctk_one, %cond.false442 ], !dbg !115
  %72 = load i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKGROUPNUM_metric, align 4, !dbg !115, !tbaa !111
  %cmp452 = icmp slt i32 %72, 0, !dbg !115
  br i1 %cmp452, label %cond.end486, label %cond.false454, !dbg !115

cond.false454:                                    ; preds = %cond.end450
  %call455 = tail call i32 @CCTK_QueryGroupStorage(%struct.cGH* %GH, i8* getelementptr inbounds ([17 x i8]* @.str20, i64 0, i64 0)) #3, !dbg !115
  %tobool456 = icmp eq i32 %call455, 0, !dbg !115
  br i1 %tobool456, label %cond.end462, label %cond.true457, !dbg !115

cond.true457:                                     ; preds = %cond.false454
  %call458 = tail call i32* @CCTK_ArrayGroupSize(%struct.cGH* %GH, i32 0, i8* getelementptr inbounds ([17 x i8]* @.str20, i64 0, i64 0)) #3, !dbg !115
  br label %cond.end462, !dbg !115

cond.end462:                                      ; preds = %cond.false454, %cond.true457
  %cond463.ph = phi i32* [ @_cctk_one, %cond.false454 ], [ %call458, %cond.true457 ]
  %.pr1068 = load i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKGROUPNUM_metric, align 4, !dbg !115, !tbaa !111
  %cmp464 = icmp slt i32 %.pr1068, 0, !dbg !115
  br i1 %cmp464, label %cond.end486, label %cond.false466, !dbg !115

cond.false466:                                    ; preds = %cond.end462
  %call467 = tail call i32 @CCTK_QueryGroupStorage(%struct.cGH* %GH, i8* getelementptr inbounds ([17 x i8]* @.str20, i64 0, i64 0)) #3, !dbg !115
  %tobool468 = icmp eq i32 %call467, 0, !dbg !115
  br i1 %tobool468, label %cond.end474, label %cond.true469, !dbg !115

cond.true469:                                     ; preds = %cond.false466
  %call470 = tail call i32* @CCTK_ArrayGroupSize(%struct.cGH* %GH, i32 1, i8* getelementptr inbounds ([17 x i8]* @.str20, i64 0, i64 0)) #3, !dbg !115
  br label %cond.end474, !dbg !115

cond.end474:                                      ; preds = %cond.false466, %cond.true469
  %cond475.ph.ph = phi i32* [ @_cctk_one, %cond.false466 ], [ %call470, %cond.true469 ]
  %.pr1071.pr = load i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKGROUPNUM_metric, align 4, !dbg !115, !tbaa !111
  %cmp476 = icmp slt i32 %.pr1071.pr, 0, !dbg !115
  br i1 %cmp476, label %cond.end486, label %cond.false478, !dbg !115

cond.false478:                                    ; preds = %cond.end474
  %call479 = tail call i32 @CCTK_QueryGroupStorage(%struct.cGH* %GH, i8* getelementptr inbounds ([17 x i8]* @.str20, i64 0, i64 0)) #3, !dbg !115
  %tobool480 = icmp eq i32 %call479, 0, !dbg !115
  br i1 %tobool480, label %cond.end486, label %cond.true481, !dbg !115

cond.true481:                                     ; preds = %cond.false478
  %call482 = tail call i32* @CCTK_ArrayGroupSize(%struct.cGH* %GH, i32 2, i8* getelementptr inbounds ([17 x i8]* @.str20, i64 0, i64 0)) #3, !dbg !115
  br label %cond.end486, !dbg !115

cond.end486:                                      ; preds = %cond.false478, %cond.end474, %cond.end462, %cond.end450, %cond.true481
  %cond4751074 = phi i32* [ %cond475.ph.ph, %cond.true481 ], [ @_cctk_one, %cond.end450 ], [ @_cctk_one, %cond.end462 ], [ %cond475.ph.ph, %cond.end474 ], [ %cond475.ph.ph, %cond.false478 ]
  %cond46310701073 = phi i32* [ %cond463.ph, %cond.true481 ], [ @_cctk_one, %cond.end450 ], [ %cond463.ph, %cond.end462 ], [ %cond463.ph, %cond.end474 ], [ %cond463.ph, %cond.false478 ]
  %cond487 = phi i32* [ %call482, %cond.true481 ], [ @_cctk_one, %cond.end450 ], [ @_cctk_one, %cond.end462 ], [ @_cctk_one, %cond.end474 ], [ @_cctk_one, %cond.false478 ], !dbg !115
  %73 = load i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKGROUPNUM_shift, align 4, !dbg !115, !tbaa !111
  %cmp488 = icmp slt i32 %73, 0, !dbg !115
  br i1 %cmp488, label %cond.end522, label %cond.false490, !dbg !115

cond.false490:                                    ; preds = %cond.end486
  %call491 = tail call i32 @CCTK_QueryGroupStorage(%struct.cGH* %GH, i8* getelementptr inbounds ([16 x i8]* @.str5, i64 0, i64 0)) #3, !dbg !115
  %tobool492 = icmp eq i32 %call491, 0, !dbg !115
  br i1 %tobool492, label %cond.end498, label %cond.true493, !dbg !115

cond.true493:                                     ; preds = %cond.false490
  %call494 = tail call i32* @CCTK_ArrayGroupSize(%struct.cGH* %GH, i32 0, i8* getelementptr inbounds ([16 x i8]* @.str5, i64 0, i64 0)) #3, !dbg !115
  br label %cond.end498, !dbg !115

cond.end498:                                      ; preds = %cond.false490, %cond.true493
  %cond499.ph = phi i32* [ @_cctk_one, %cond.false490 ], [ %call494, %cond.true493 ]
  %.pr1075 = load i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKGROUPNUM_shift, align 4, !dbg !115, !tbaa !111
  %cmp500 = icmp slt i32 %.pr1075, 0, !dbg !115
  br i1 %cmp500, label %cond.end522, label %cond.false502, !dbg !115

cond.false502:                                    ; preds = %cond.end498
  %call503 = tail call i32 @CCTK_QueryGroupStorage(%struct.cGH* %GH, i8* getelementptr inbounds ([16 x i8]* @.str5, i64 0, i64 0)) #3, !dbg !115
  %tobool504 = icmp eq i32 %call503, 0, !dbg !115
  br i1 %tobool504, label %cond.end510, label %cond.true505, !dbg !115

cond.true505:                                     ; preds = %cond.false502
  %call506 = tail call i32* @CCTK_ArrayGroupSize(%struct.cGH* %GH, i32 1, i8* getelementptr inbounds ([16 x i8]* @.str5, i64 0, i64 0)) #3, !dbg !115
  br label %cond.end510, !dbg !115

cond.end510:                                      ; preds = %cond.false502, %cond.true505
  %cond511.ph.ph = phi i32* [ @_cctk_one, %cond.false502 ], [ %call506, %cond.true505 ]
  %.pr1078.pr = load i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKGROUPNUM_shift, align 4, !dbg !115, !tbaa !111
  %cmp512 = icmp slt i32 %.pr1078.pr, 0, !dbg !115
  br i1 %cmp512, label %cond.end522, label %cond.false514, !dbg !115

cond.false514:                                    ; preds = %cond.end510
  %call515 = tail call i32 @CCTK_QueryGroupStorage(%struct.cGH* %GH, i8* getelementptr inbounds ([16 x i8]* @.str5, i64 0, i64 0)) #3, !dbg !115
  %tobool516 = icmp eq i32 %call515, 0, !dbg !115
  br i1 %tobool516, label %cond.end522, label %cond.true517, !dbg !115

cond.true517:                                     ; preds = %cond.false514
  %call518 = tail call i32* @CCTK_ArrayGroupSize(%struct.cGH* %GH, i32 2, i8* getelementptr inbounds ([16 x i8]* @.str5, i64 0, i64 0)) #3, !dbg !115
  br label %cond.end522, !dbg !115

cond.end522:                                      ; preds = %cond.end486, %cond.end498, %cond.false514, %cond.true517, %cond.end510
  %cond5111081 = phi i32* [ %cond511.ph.ph, %cond.end510 ], [ %cond511.ph.ph, %cond.true517 ], [ %cond511.ph.ph, %cond.false514 ], [ @_cctk_one, %cond.end498 ], [ @_cctk_one, %cond.end486 ]
  %cond49910771080 = phi i32* [ %cond499.ph, %cond.end510 ], [ %cond499.ph, %cond.true517 ], [ %cond499.ph, %cond.false514 ], [ %cond499.ph, %cond.end498 ], [ @_cctk_one, %cond.end486 ]
  %cond523 = phi i32* [ @_cctk_one, %cond.end510 ], [ %call518, %cond.true517 ], [ @_cctk_one, %cond.false514 ], [ @_cctk_one, %cond.end498 ], [ @_cctk_one, %cond.end486 ], !dbg !115
  %74 = load i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_active_slicing_handle, align 4, !dbg !115, !tbaa !111
  %cmp524 = icmp slt i32 %74, 0, !dbg !115
  br i1 %cmp524, label %cond.end528, label %cond.false526, !dbg !115

cond.false526:                                    ; preds = %cond.end522
  %idxprom = sext i32 %74 to i64, !dbg !115
  %data = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17, !dbg !115
  %75 = load i8**** %data, align 8, !dbg !115, !tbaa !116
  %arrayidx = getelementptr inbounds i8*** %75, i64 %idxprom, !dbg !115
  %76 = load i8*** %arrayidx, align 8, !dbg !115, !tbaa !116
  %77 = load i8** %76, align 8, !dbg !115, !tbaa !116
  %phitmp = bitcast i8* %77 to i32*, !dbg !115
  br label %cond.end528, !dbg !115

cond.end528:                                      ; preds = %cond.end522, %cond.false526
  %cond529 = phi i32* [ %phitmp, %cond.false526 ], [ null, %cond.end522 ]
  %78 = load i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_alp, align 4, !dbg !115, !tbaa !111
  %cmp530 = icmp slt i32 %78, 0, !dbg !115
  br i1 %cmp530, label %cond.end537, label %cond.false532, !dbg !115

cond.false532:                                    ; preds = %cond.end528
  %idxprom533 = sext i32 %78 to i64, !dbg !115
  %data534 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17, !dbg !115
  %79 = load i8**** %data534, align 8, !dbg !115, !tbaa !116
  %arrayidx535 = getelementptr inbounds i8*** %79, i64 %idxprom533, !dbg !115
  %80 = load i8*** %arrayidx535, align 8, !dbg !115, !tbaa !116
  %81 = load i8** %80, align 8, !dbg !115, !tbaa !116
  %phitmp982 = bitcast i8* %81 to double*, !dbg !115
  br label %cond.end537, !dbg !115

cond.end537:                                      ; preds = %cond.end528, %cond.false532
  %cond538 = phi double* [ %phitmp982, %cond.false532 ], [ null, %cond.end528 ]
  %82 = load i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_betax, align 4, !dbg !115, !tbaa !111
  %cmp539 = icmp slt i32 %82, 0, !dbg !115
  br i1 %cmp539, label %cond.end546, label %cond.false541, !dbg !115

cond.false541:                                    ; preds = %cond.end537
  %idxprom542 = sext i32 %82 to i64, !dbg !115
  %data543 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17, !dbg !115
  %83 = load i8**** %data543, align 8, !dbg !115, !tbaa !116
  %arrayidx544 = getelementptr inbounds i8*** %83, i64 %idxprom542, !dbg !115
  %84 = load i8*** %arrayidx544, align 8, !dbg !115, !tbaa !116
  %85 = load i8** %84, align 8, !dbg !115, !tbaa !116
  %phitmp983 = bitcast i8* %85 to double*, !dbg !115
  br label %cond.end546, !dbg !115

cond.end546:                                      ; preds = %cond.end537, %cond.false541
  %cond547 = phi double* [ %phitmp983, %cond.false541 ], [ null, %cond.end537 ]
  %86 = load i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_betay, align 4, !dbg !115, !tbaa !111
  %cmp548 = icmp slt i32 %86, 0, !dbg !115
  br i1 %cmp548, label %cond.end555, label %cond.false550, !dbg !115

cond.false550:                                    ; preds = %cond.end546
  %idxprom551 = sext i32 %86 to i64, !dbg !115
  %data552 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17, !dbg !115
  %87 = load i8**** %data552, align 8, !dbg !115, !tbaa !116
  %arrayidx553 = getelementptr inbounds i8*** %87, i64 %idxprom551, !dbg !115
  %88 = load i8*** %arrayidx553, align 8, !dbg !115, !tbaa !116
  %89 = load i8** %88, align 8, !dbg !115, !tbaa !116
  %phitmp984 = bitcast i8* %89 to double*, !dbg !115
  br label %cond.end555, !dbg !115

cond.end555:                                      ; preds = %cond.end546, %cond.false550
  %cond556 = phi double* [ %phitmp984, %cond.false550 ], [ null, %cond.end546 ]
  %90 = load i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_betaz, align 4, !dbg !115, !tbaa !111
  %cmp557 = icmp slt i32 %90, 0, !dbg !115
  br i1 %cmp557, label %cond.end564, label %cond.false559, !dbg !115

cond.false559:                                    ; preds = %cond.end555
  %idxprom560 = sext i32 %90 to i64, !dbg !115
  %data561 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17, !dbg !115
  %91 = load i8**** %data561, align 8, !dbg !115, !tbaa !116
  %arrayidx562 = getelementptr inbounds i8*** %91, i64 %idxprom560, !dbg !115
  %92 = load i8*** %arrayidx562, align 8, !dbg !115, !tbaa !116
  %93 = load i8** %92, align 8, !dbg !115, !tbaa !116
  %phitmp985 = bitcast i8* %93 to double*, !dbg !115
  br label %cond.end564, !dbg !115

cond.end564:                                      ; preds = %cond.end555, %cond.false559
  %cond565 = phi double* [ %phitmp985, %cond.false559 ], [ null, %cond.end555 ]
  %94 = load i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_coarse_dx, align 4, !dbg !115, !tbaa !111
  %cmp566 = icmp slt i32 %94, 0, !dbg !115
  br i1 %cmp566, label %cond.end573, label %cond.false568, !dbg !115

cond.false568:                                    ; preds = %cond.end564
  %idxprom569 = sext i32 %94 to i64, !dbg !115
  %data570 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17, !dbg !115
  %95 = load i8**** %data570, align 8, !dbg !115, !tbaa !116
  %arrayidx571 = getelementptr inbounds i8*** %95, i64 %idxprom569, !dbg !115
  %96 = load i8*** %arrayidx571, align 8, !dbg !115, !tbaa !116
  %97 = load i8** %96, align 8, !dbg !115, !tbaa !116
  %phitmp986 = bitcast i8* %97 to double*, !dbg !115
  br label %cond.end573, !dbg !115

cond.end573:                                      ; preds = %cond.end564, %cond.false568
  %cond574 = phi double* [ %phitmp986, %cond.false568 ], [ null, %cond.end564 ]
  %98 = load i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_coarse_dy, align 4, !dbg !115, !tbaa !111
  %cmp575 = icmp slt i32 %98, 0, !dbg !115
  br i1 %cmp575, label %cond.end582, label %cond.false577, !dbg !115

cond.false577:                                    ; preds = %cond.end573
  %idxprom578 = sext i32 %98 to i64, !dbg !115
  %data579 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17, !dbg !115
  %99 = load i8**** %data579, align 8, !dbg !115, !tbaa !116
  %arrayidx580 = getelementptr inbounds i8*** %99, i64 %idxprom578, !dbg !115
  %100 = load i8*** %arrayidx580, align 8, !dbg !115, !tbaa !116
  %101 = load i8** %100, align 8, !dbg !115, !tbaa !116
  %phitmp987 = bitcast i8* %101 to double*, !dbg !115
  br label %cond.end582, !dbg !115

cond.end582:                                      ; preds = %cond.end573, %cond.false577
  %cond583 = phi double* [ %phitmp987, %cond.false577 ], [ null, %cond.end573 ]
  %102 = load i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_coarse_dz, align 4, !dbg !115, !tbaa !111
  %cmp584 = icmp slt i32 %102, 0, !dbg !115
  br i1 %cmp584, label %cond.end591, label %cond.false586, !dbg !115

cond.false586:                                    ; preds = %cond.end582
  %idxprom587 = sext i32 %102 to i64, !dbg !115
  %data588 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17, !dbg !115
  %103 = load i8**** %data588, align 8, !dbg !115, !tbaa !116
  %arrayidx589 = getelementptr inbounds i8*** %103, i64 %idxprom587, !dbg !115
  %104 = load i8*** %arrayidx589, align 8, !dbg !115, !tbaa !116
  %105 = load i8** %104, align 8, !dbg !115, !tbaa !116
  %phitmp988 = bitcast i8* %105 to double*, !dbg !115
  br label %cond.end591, !dbg !115

cond.end591:                                      ; preds = %cond.end582, %cond.false586
  %cond592 = phi double* [ %phitmp988, %cond.false586 ], [ null, %cond.end582 ]
  %106 = load i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_conformal_state, align 4, !dbg !115, !tbaa !111
  %cmp593 = icmp slt i32 %106, 0, !dbg !115
  br i1 %cmp593, label %cond.end600, label %cond.false595, !dbg !115

cond.false595:                                    ; preds = %cond.end591
  %idxprom596 = sext i32 %106 to i64, !dbg !115
  %data597 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17, !dbg !115
  %107 = load i8**** %data597, align 8, !dbg !115, !tbaa !116
  %arrayidx598 = getelementptr inbounds i8*** %107, i64 %idxprom596, !dbg !115
  %108 = load i8*** %arrayidx598, align 8, !dbg !115, !tbaa !116
  %109 = load i8** %108, align 8, !dbg !115, !tbaa !116
  %phitmp989 = bitcast i8* %109 to i32*, !dbg !115
  br label %cond.end600, !dbg !115

cond.end600:                                      ; preds = %cond.end591, %cond.false595
  %cond601 = phi i32* [ %phitmp989, %cond.false595 ], [ null, %cond.end591 ]
  %110 = load i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_courant_min_time, align 4, !dbg !115, !tbaa !111
  %cmp602 = icmp slt i32 %110, 0, !dbg !115
  br i1 %cmp602, label %cond.end609, label %cond.false604, !dbg !115

cond.false604:                                    ; preds = %cond.end600
  %idxprom605 = sext i32 %110 to i64, !dbg !115
  %data606 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17, !dbg !115
  %111 = load i8**** %data606, align 8, !dbg !115, !tbaa !116
  %arrayidx607 = getelementptr inbounds i8*** %111, i64 %idxprom605, !dbg !115
  %112 = load i8*** %arrayidx607, align 8, !dbg !115, !tbaa !116
  %113 = load i8** %112, align 8, !dbg !115, !tbaa !116
  %phitmp990 = bitcast i8* %113 to double*, !dbg !115
  br label %cond.end609, !dbg !115

cond.end609:                                      ; preds = %cond.end600, %cond.false604
  %cond610 = phi double* [ %phitmp990, %cond.false604 ], [ null, %cond.end600 ]
  %114 = load i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_courant_wave_speed, align 4, !dbg !115, !tbaa !111
  %cmp611 = icmp slt i32 %114, 0, !dbg !115
  br i1 %cmp611, label %cond.end618, label %cond.false613, !dbg !115

cond.false613:                                    ; preds = %cond.end609
  %idxprom614 = sext i32 %114 to i64, !dbg !115
  %data615 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17, !dbg !115
  %115 = load i8**** %data615, align 8, !dbg !115, !tbaa !116
  %arrayidx616 = getelementptr inbounds i8*** %115, i64 %idxprom614, !dbg !115
  %116 = load i8*** %arrayidx616, align 8, !dbg !115, !tbaa !116
  %117 = load i8** %116, align 8, !dbg !115, !tbaa !116
  %phitmp991 = bitcast i8* %117 to double*, !dbg !115
  br label %cond.end618, !dbg !115

cond.end618:                                      ; preds = %cond.end609, %cond.false613
  %cond619 = phi double* [ %phitmp991, %cond.false613 ], [ null, %cond.end609 ]
  %118 = load i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_emask, align 4, !dbg !115, !tbaa !111
  %cmp620 = icmp slt i32 %118, 0, !dbg !115
  br i1 %cmp620, label %cond.end627, label %cond.false622, !dbg !115

cond.false622:                                    ; preds = %cond.end618
  %idxprom623 = sext i32 %118 to i64, !dbg !115
  %data624 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17, !dbg !115
  %119 = load i8**** %data624, align 8, !dbg !115, !tbaa !116
  %arrayidx625 = getelementptr inbounds i8*** %119, i64 %idxprom623, !dbg !115
  %120 = load i8*** %arrayidx625, align 8, !dbg !115, !tbaa !116
  %121 = load i8** %120, align 8, !dbg !115, !tbaa !116
  %phitmp992 = bitcast i8* %121 to double*, !dbg !115
  br label %cond.end627, !dbg !115

cond.end627:                                      ; preds = %cond.end618, %cond.false622
  %cond628 = phi double* [ %phitmp992, %cond.false622 ], [ null, %cond.end618 ]
  %122 = load i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_gxx, align 4, !dbg !115, !tbaa !111
  %cmp629 = icmp slt i32 %122, 0, !dbg !115
  br i1 %cmp629, label %cond.end636, label %cond.false631, !dbg !115

cond.false631:                                    ; preds = %cond.end627
  %idxprom632 = sext i32 %122 to i64, !dbg !115
  %data633 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17, !dbg !115
  %123 = load i8**** %data633, align 8, !dbg !115, !tbaa !116
  %arrayidx634 = getelementptr inbounds i8*** %123, i64 %idxprom632, !dbg !115
  %124 = load i8*** %arrayidx634, align 8, !dbg !115, !tbaa !116
  %125 = load i8** %124, align 8, !dbg !115, !tbaa !116
  %phitmp993 = bitcast i8* %125 to double*, !dbg !115
  br label %cond.end636, !dbg !115

cond.end636:                                      ; preds = %cond.end627, %cond.false631
  %cond637 = phi double* [ %phitmp993, %cond.false631 ], [ null, %cond.end627 ]
  %126 = load i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_gxy, align 4, !dbg !115, !tbaa !111
  %cmp638 = icmp slt i32 %126, 0, !dbg !115
  br i1 %cmp638, label %cond.end645, label %cond.false640, !dbg !115

cond.false640:                                    ; preds = %cond.end636
  %idxprom641 = sext i32 %126 to i64, !dbg !115
  %data642 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17, !dbg !115
  %127 = load i8**** %data642, align 8, !dbg !115, !tbaa !116
  %arrayidx643 = getelementptr inbounds i8*** %127, i64 %idxprom641, !dbg !115
  %128 = load i8*** %arrayidx643, align 8, !dbg !115, !tbaa !116
  %129 = load i8** %128, align 8, !dbg !115, !tbaa !116
  %phitmp994 = bitcast i8* %129 to double*, !dbg !115
  br label %cond.end645, !dbg !115

cond.end645:                                      ; preds = %cond.end636, %cond.false640
  %cond646 = phi double* [ %phitmp994, %cond.false640 ], [ null, %cond.end636 ]
  %130 = load i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_gxz, align 4, !dbg !115, !tbaa !111
  %cmp647 = icmp slt i32 %130, 0, !dbg !115
  br i1 %cmp647, label %cond.end654, label %cond.false649, !dbg !115

cond.false649:                                    ; preds = %cond.end645
  %idxprom650 = sext i32 %130 to i64, !dbg !115
  %data651 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17, !dbg !115
  %131 = load i8**** %data651, align 8, !dbg !115, !tbaa !116
  %arrayidx652 = getelementptr inbounds i8*** %131, i64 %idxprom650, !dbg !115
  %132 = load i8*** %arrayidx652, align 8, !dbg !115, !tbaa !116
  %133 = load i8** %132, align 8, !dbg !115, !tbaa !116
  %phitmp995 = bitcast i8* %133 to double*, !dbg !115
  br label %cond.end654, !dbg !115

cond.end654:                                      ; preds = %cond.end645, %cond.false649
  %cond655 = phi double* [ %phitmp995, %cond.false649 ], [ null, %cond.end645 ]
  %134 = load i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_gyy, align 4, !dbg !115, !tbaa !111
  %cmp656 = icmp slt i32 %134, 0, !dbg !115
  br i1 %cmp656, label %cond.end663, label %cond.false658, !dbg !115

cond.false658:                                    ; preds = %cond.end654
  %idxprom659 = sext i32 %134 to i64, !dbg !115
  %data660 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17, !dbg !115
  %135 = load i8**** %data660, align 8, !dbg !115, !tbaa !116
  %arrayidx661 = getelementptr inbounds i8*** %135, i64 %idxprom659, !dbg !115
  %136 = load i8*** %arrayidx661, align 8, !dbg !115, !tbaa !116
  %137 = load i8** %136, align 8, !dbg !115, !tbaa !116
  %phitmp996 = bitcast i8* %137 to double*, !dbg !115
  br label %cond.end663, !dbg !115

cond.end663:                                      ; preds = %cond.end654, %cond.false658
  %cond664 = phi double* [ %phitmp996, %cond.false658 ], [ null, %cond.end654 ]
  %138 = load i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_gyz, align 4, !dbg !115, !tbaa !111
  %cmp665 = icmp slt i32 %138, 0, !dbg !115
  br i1 %cmp665, label %cond.end672, label %cond.false667, !dbg !115

cond.false667:                                    ; preds = %cond.end663
  %idxprom668 = sext i32 %138 to i64, !dbg !115
  %data669 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17, !dbg !115
  %139 = load i8**** %data669, align 8, !dbg !115, !tbaa !116
  %arrayidx670 = getelementptr inbounds i8*** %139, i64 %idxprom668, !dbg !115
  %140 = load i8*** %arrayidx670, align 8, !dbg !115, !tbaa !116
  %141 = load i8** %140, align 8, !dbg !115, !tbaa !116
  %phitmp997 = bitcast i8* %141 to double*, !dbg !115
  br label %cond.end672, !dbg !115

cond.end672:                                      ; preds = %cond.end663, %cond.false667
  %cond673 = phi double* [ %phitmp997, %cond.false667 ], [ null, %cond.end663 ]
  %142 = load i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_gzz, align 4, !dbg !115, !tbaa !111
  %cmp674 = icmp slt i32 %142, 0, !dbg !115
  br i1 %cmp674, label %cond.end681, label %cond.false676, !dbg !115

cond.false676:                                    ; preds = %cond.end672
  %idxprom677 = sext i32 %142 to i64, !dbg !115
  %data678 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17, !dbg !115
  %143 = load i8**** %data678, align 8, !dbg !115, !tbaa !116
  %arrayidx679 = getelementptr inbounds i8*** %143, i64 %idxprom677, !dbg !115
  %144 = load i8*** %arrayidx679, align 8, !dbg !115, !tbaa !116
  %145 = load i8** %144, align 8, !dbg !115, !tbaa !116
  %phitmp998 = bitcast i8* %145 to double*, !dbg !115
  br label %cond.end681, !dbg !115

cond.end681:                                      ; preds = %cond.end672, %cond.false676
  %cond682 = phi double* [ %phitmp998, %cond.false676 ], [ null, %cond.end672 ]
  %146 = load i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_kxx, align 4, !dbg !115, !tbaa !111
  %cmp683 = icmp slt i32 %146, 0, !dbg !115
  br i1 %cmp683, label %cond.end690, label %cond.false685, !dbg !115

cond.false685:                                    ; preds = %cond.end681
  %idxprom686 = sext i32 %146 to i64, !dbg !115
  %data687 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17, !dbg !115
  %147 = load i8**** %data687, align 8, !dbg !115, !tbaa !116
  %arrayidx688 = getelementptr inbounds i8*** %147, i64 %idxprom686, !dbg !115
  %148 = load i8*** %arrayidx688, align 8, !dbg !115, !tbaa !116
  %149 = load i8** %148, align 8, !dbg !115, !tbaa !116
  %phitmp999 = bitcast i8* %149 to double*, !dbg !115
  br label %cond.end690, !dbg !115

cond.end690:                                      ; preds = %cond.end681, %cond.false685
  %cond691 = phi double* [ %phitmp999, %cond.false685 ], [ null, %cond.end681 ]
  %150 = load i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_kxy, align 4, !dbg !115, !tbaa !111
  %cmp692 = icmp slt i32 %150, 0, !dbg !115
  br i1 %cmp692, label %cond.end699, label %cond.false694, !dbg !115

cond.false694:                                    ; preds = %cond.end690
  %idxprom695 = sext i32 %150 to i64, !dbg !115
  %data696 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17, !dbg !115
  %151 = load i8**** %data696, align 8, !dbg !115, !tbaa !116
  %arrayidx697 = getelementptr inbounds i8*** %151, i64 %idxprom695, !dbg !115
  %152 = load i8*** %arrayidx697, align 8, !dbg !115, !tbaa !116
  %153 = load i8** %152, align 8, !dbg !115, !tbaa !116
  %phitmp1000 = bitcast i8* %153 to double*, !dbg !115
  br label %cond.end699, !dbg !115

cond.end699:                                      ; preds = %cond.end690, %cond.false694
  %cond700 = phi double* [ %phitmp1000, %cond.false694 ], [ null, %cond.end690 ]
  %154 = load i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_kxz, align 4, !dbg !115, !tbaa !111
  %cmp701 = icmp slt i32 %154, 0, !dbg !115
  br i1 %cmp701, label %cond.end708, label %cond.false703, !dbg !115

cond.false703:                                    ; preds = %cond.end699
  %idxprom704 = sext i32 %154 to i64, !dbg !115
  %data705 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17, !dbg !115
  %155 = load i8**** %data705, align 8, !dbg !115, !tbaa !116
  %arrayidx706 = getelementptr inbounds i8*** %155, i64 %idxprom704, !dbg !115
  %156 = load i8*** %arrayidx706, align 8, !dbg !115, !tbaa !116
  %157 = load i8** %156, align 8, !dbg !115, !tbaa !116
  %phitmp1001 = bitcast i8* %157 to double*, !dbg !115
  br label %cond.end708, !dbg !115

cond.end708:                                      ; preds = %cond.end699, %cond.false703
  %cond709 = phi double* [ %phitmp1001, %cond.false703 ], [ null, %cond.end699 ]
  %158 = load i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_kyy, align 4, !dbg !115, !tbaa !111
  %cmp710 = icmp slt i32 %158, 0, !dbg !115
  br i1 %cmp710, label %cond.end717, label %cond.false712, !dbg !115

cond.false712:                                    ; preds = %cond.end708
  %idxprom713 = sext i32 %158 to i64, !dbg !115
  %data714 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17, !dbg !115
  %159 = load i8**** %data714, align 8, !dbg !115, !tbaa !116
  %arrayidx715 = getelementptr inbounds i8*** %159, i64 %idxprom713, !dbg !115
  %160 = load i8*** %arrayidx715, align 8, !dbg !115, !tbaa !116
  %161 = load i8** %160, align 8, !dbg !115, !tbaa !116
  %phitmp1002 = bitcast i8* %161 to double*, !dbg !115
  br label %cond.end717, !dbg !115

cond.end717:                                      ; preds = %cond.end708, %cond.false712
  %cond718 = phi double* [ %phitmp1002, %cond.false712 ], [ null, %cond.end708 ]
  %162 = load i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_kyz, align 4, !dbg !115, !tbaa !111
  %cmp719 = icmp slt i32 %162, 0, !dbg !115
  br i1 %cmp719, label %cond.end726, label %cond.false721, !dbg !115

cond.false721:                                    ; preds = %cond.end717
  %idxprom722 = sext i32 %162 to i64, !dbg !115
  %data723 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17, !dbg !115
  %163 = load i8**** %data723, align 8, !dbg !115, !tbaa !116
  %arrayidx724 = getelementptr inbounds i8*** %163, i64 %idxprom722, !dbg !115
  %164 = load i8*** %arrayidx724, align 8, !dbg !115, !tbaa !116
  %165 = load i8** %164, align 8, !dbg !115, !tbaa !116
  %phitmp1003 = bitcast i8* %165 to double*, !dbg !115
  br label %cond.end726, !dbg !115

cond.end726:                                      ; preds = %cond.end717, %cond.false721
  %cond727 = phi double* [ %phitmp1003, %cond.false721 ], [ null, %cond.end717 ]
  %166 = load i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_kzz, align 4, !dbg !115, !tbaa !111
  %cmp728 = icmp slt i32 %166, 0, !dbg !115
  br i1 %cmp728, label %cond.end735, label %cond.false730, !dbg !115

cond.false730:                                    ; preds = %cond.end726
  %idxprom731 = sext i32 %166 to i64, !dbg !115
  %data732 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17, !dbg !115
  %167 = load i8**** %data732, align 8, !dbg !115, !tbaa !116
  %arrayidx733 = getelementptr inbounds i8*** %167, i64 %idxprom731, !dbg !115
  %168 = load i8*** %arrayidx733, align 8, !dbg !115, !tbaa !116
  %169 = load i8** %168, align 8, !dbg !115, !tbaa !116
  %phitmp1004 = bitcast i8* %169 to double*, !dbg !115
  br label %cond.end735, !dbg !115

cond.end735:                                      ; preds = %cond.end726, %cond.false730
  %cond736 = phi double* [ %phitmp1004, %cond.false730 ], [ null, %cond.end726 ]
  %170 = load i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_psi, align 4, !dbg !115, !tbaa !111
  %cmp737 = icmp slt i32 %170, 0, !dbg !115
  br i1 %cmp737, label %cond.end744, label %cond.false739, !dbg !115

cond.false739:                                    ; preds = %cond.end735
  %idxprom740 = sext i32 %170 to i64, !dbg !115
  %data741 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17, !dbg !115
  %171 = load i8**** %data741, align 8, !dbg !115, !tbaa !116
  %arrayidx742 = getelementptr inbounds i8*** %171, i64 %idxprom740, !dbg !115
  %172 = load i8*** %arrayidx742, align 8, !dbg !115, !tbaa !116
  %173 = load i8** %172, align 8, !dbg !115, !tbaa !116
  %phitmp1005 = bitcast i8* %173 to double*, !dbg !115
  br label %cond.end744, !dbg !115

cond.end744:                                      ; preds = %cond.end735, %cond.false739
  %cond745 = phi double* [ %phitmp1005, %cond.false739 ], [ null, %cond.end735 ]
  %174 = load i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_psix, align 4, !dbg !115, !tbaa !111
  %cmp746 = icmp slt i32 %174, 0, !dbg !115
  br i1 %cmp746, label %cond.end753, label %cond.false748, !dbg !115

cond.false748:                                    ; preds = %cond.end744
  %idxprom749 = sext i32 %174 to i64, !dbg !115
  %data750 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17, !dbg !115
  %175 = load i8**** %data750, align 8, !dbg !115, !tbaa !116
  %arrayidx751 = getelementptr inbounds i8*** %175, i64 %idxprom749, !dbg !115
  %176 = load i8*** %arrayidx751, align 8, !dbg !115, !tbaa !116
  %177 = load i8** %176, align 8, !dbg !115, !tbaa !116
  %phitmp1006 = bitcast i8* %177 to double*, !dbg !115
  br label %cond.end753, !dbg !115

cond.end753:                                      ; preds = %cond.end744, %cond.false748
  %cond754 = phi double* [ %phitmp1006, %cond.false748 ], [ null, %cond.end744 ]
  %178 = load i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_psixx, align 4, !dbg !115, !tbaa !111
  %cmp755 = icmp slt i32 %178, 0, !dbg !115
  br i1 %cmp755, label %cond.end762, label %cond.false757, !dbg !115

cond.false757:                                    ; preds = %cond.end753
  %idxprom758 = sext i32 %178 to i64, !dbg !115
  %data759 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17, !dbg !115
  %179 = load i8**** %data759, align 8, !dbg !115, !tbaa !116
  %arrayidx760 = getelementptr inbounds i8*** %179, i64 %idxprom758, !dbg !115
  %180 = load i8*** %arrayidx760, align 8, !dbg !115, !tbaa !116
  %181 = load i8** %180, align 8, !dbg !115, !tbaa !116
  %phitmp1007 = bitcast i8* %181 to double*, !dbg !115
  br label %cond.end762, !dbg !115

cond.end762:                                      ; preds = %cond.end753, %cond.false757
  %cond763 = phi double* [ %phitmp1007, %cond.false757 ], [ null, %cond.end753 ]
  %182 = load i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_psixy, align 4, !dbg !115, !tbaa !111
  %cmp764 = icmp slt i32 %182, 0, !dbg !115
  br i1 %cmp764, label %cond.end771, label %cond.false766, !dbg !115

cond.false766:                                    ; preds = %cond.end762
  %idxprom767 = sext i32 %182 to i64, !dbg !115
  %data768 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17, !dbg !115
  %183 = load i8**** %data768, align 8, !dbg !115, !tbaa !116
  %arrayidx769 = getelementptr inbounds i8*** %183, i64 %idxprom767, !dbg !115
  %184 = load i8*** %arrayidx769, align 8, !dbg !115, !tbaa !116
  %185 = load i8** %184, align 8, !dbg !115, !tbaa !116
  %phitmp1008 = bitcast i8* %185 to double*, !dbg !115
  br label %cond.end771, !dbg !115

cond.end771:                                      ; preds = %cond.end762, %cond.false766
  %cond772 = phi double* [ %phitmp1008, %cond.false766 ], [ null, %cond.end762 ]
  %186 = load i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_psixz, align 4, !dbg !115, !tbaa !111
  %cmp773 = icmp slt i32 %186, 0, !dbg !115
  br i1 %cmp773, label %cond.end780, label %cond.false775, !dbg !115

cond.false775:                                    ; preds = %cond.end771
  %idxprom776 = sext i32 %186 to i64, !dbg !115
  %data777 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17, !dbg !115
  %187 = load i8**** %data777, align 8, !dbg !115, !tbaa !116
  %arrayidx778 = getelementptr inbounds i8*** %187, i64 %idxprom776, !dbg !115
  %188 = load i8*** %arrayidx778, align 8, !dbg !115, !tbaa !116
  %189 = load i8** %188, align 8, !dbg !115, !tbaa !116
  %phitmp1009 = bitcast i8* %189 to double*, !dbg !115
  br label %cond.end780, !dbg !115

cond.end780:                                      ; preds = %cond.end771, %cond.false775
  %cond781 = phi double* [ %phitmp1009, %cond.false775 ], [ null, %cond.end771 ]
  %190 = load i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_psiy, align 4, !dbg !115, !tbaa !111
  %cmp782 = icmp slt i32 %190, 0, !dbg !115
  br i1 %cmp782, label %cond.end789, label %cond.false784, !dbg !115

cond.false784:                                    ; preds = %cond.end780
  %idxprom785 = sext i32 %190 to i64, !dbg !115
  %data786 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17, !dbg !115
  %191 = load i8**** %data786, align 8, !dbg !115, !tbaa !116
  %arrayidx787 = getelementptr inbounds i8*** %191, i64 %idxprom785, !dbg !115
  %192 = load i8*** %arrayidx787, align 8, !dbg !115, !tbaa !116
  %193 = load i8** %192, align 8, !dbg !115, !tbaa !116
  %phitmp1010 = bitcast i8* %193 to double*, !dbg !115
  br label %cond.end789, !dbg !115

cond.end789:                                      ; preds = %cond.end780, %cond.false784
  %cond790 = phi double* [ %phitmp1010, %cond.false784 ], [ null, %cond.end780 ]
  %194 = load i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_psiyy, align 4, !dbg !115, !tbaa !111
  %cmp791 = icmp slt i32 %194, 0, !dbg !115
  br i1 %cmp791, label %cond.end798, label %cond.false793, !dbg !115

cond.false793:                                    ; preds = %cond.end789
  %idxprom794 = sext i32 %194 to i64, !dbg !115
  %data795 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17, !dbg !115
  %195 = load i8**** %data795, align 8, !dbg !115, !tbaa !116
  %arrayidx796 = getelementptr inbounds i8*** %195, i64 %idxprom794, !dbg !115
  %196 = load i8*** %arrayidx796, align 8, !dbg !115, !tbaa !116
  %197 = load i8** %196, align 8, !dbg !115, !tbaa !116
  %phitmp1011 = bitcast i8* %197 to double*, !dbg !115
  br label %cond.end798, !dbg !115

cond.end798:                                      ; preds = %cond.end789, %cond.false793
  %cond799 = phi double* [ %phitmp1011, %cond.false793 ], [ null, %cond.end789 ]
  %198 = load i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_psiyz, align 4, !dbg !115, !tbaa !111
  %cmp800 = icmp slt i32 %198, 0, !dbg !115
  br i1 %cmp800, label %cond.end807, label %cond.false802, !dbg !115

cond.false802:                                    ; preds = %cond.end798
  %idxprom803 = sext i32 %198 to i64, !dbg !115
  %data804 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17, !dbg !115
  %199 = load i8**** %data804, align 8, !dbg !115, !tbaa !116
  %arrayidx805 = getelementptr inbounds i8*** %199, i64 %idxprom803, !dbg !115
  %200 = load i8*** %arrayidx805, align 8, !dbg !115, !tbaa !116
  %201 = load i8** %200, align 8, !dbg !115, !tbaa !116
  %phitmp1012 = bitcast i8* %201 to double*, !dbg !115
  br label %cond.end807, !dbg !115

cond.end807:                                      ; preds = %cond.end798, %cond.false802
  %cond808 = phi double* [ %phitmp1012, %cond.false802 ], [ null, %cond.end798 ]
  %202 = load i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_psiz, align 4, !dbg !115, !tbaa !111
  %cmp809 = icmp slt i32 %202, 0, !dbg !115
  br i1 %cmp809, label %cond.end816, label %cond.false811, !dbg !115

cond.false811:                                    ; preds = %cond.end807
  %idxprom812 = sext i32 %202 to i64, !dbg !115
  %data813 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17, !dbg !115
  %203 = load i8**** %data813, align 8, !dbg !115, !tbaa !116
  %arrayidx814 = getelementptr inbounds i8*** %203, i64 %idxprom812, !dbg !115
  %204 = load i8*** %arrayidx814, align 8, !dbg !115, !tbaa !116
  %205 = load i8** %204, align 8, !dbg !115, !tbaa !116
  %phitmp1013 = bitcast i8* %205 to double*, !dbg !115
  br label %cond.end816, !dbg !115

cond.end816:                                      ; preds = %cond.end807, %cond.false811
  %cond817 = phi double* [ %phitmp1013, %cond.false811 ], [ null, %cond.end807 ]
  %206 = load i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_psizz, align 4, !dbg !115, !tbaa !111
  %cmp818 = icmp slt i32 %206, 0, !dbg !115
  br i1 %cmp818, label %cond.end825, label %cond.false820, !dbg !115

cond.false820:                                    ; preds = %cond.end816
  %idxprom821 = sext i32 %206 to i64, !dbg !115
  %data822 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17, !dbg !115
  %207 = load i8**** %data822, align 8, !dbg !115, !tbaa !116
  %arrayidx823 = getelementptr inbounds i8*** %207, i64 %idxprom821, !dbg !115
  %208 = load i8*** %arrayidx823, align 8, !dbg !115, !tbaa !116
  %209 = load i8** %208, align 8, !dbg !115, !tbaa !116
  %phitmp1014 = bitcast i8* %209 to double*, !dbg !115
  br label %cond.end825, !dbg !115

cond.end825:                                      ; preds = %cond.end816, %cond.false820
  %cond826 = phi double* [ %phitmp1014, %cond.false820 ], [ null, %cond.end816 ]
  %210 = load i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_r, align 4, !dbg !115, !tbaa !111
  %cmp827 = icmp slt i32 %210, 0, !dbg !115
  br i1 %cmp827, label %cond.end834, label %cond.false829, !dbg !115

cond.false829:                                    ; preds = %cond.end825
  %idxprom830 = sext i32 %210 to i64, !dbg !115
  %data831 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17, !dbg !115
  %211 = load i8**** %data831, align 8, !dbg !115, !tbaa !116
  %arrayidx832 = getelementptr inbounds i8*** %211, i64 %idxprom830, !dbg !115
  %212 = load i8*** %arrayidx832, align 8, !dbg !115, !tbaa !116
  %213 = load i8** %212, align 8, !dbg !115, !tbaa !116
  %phitmp1015 = bitcast i8* %213 to double*, !dbg !115
  br label %cond.end834, !dbg !115

cond.end834:                                      ; preds = %cond.end825, %cond.false829
  %cond835 = phi double* [ %phitmp1015, %cond.false829 ], [ null, %cond.end825 ]
  %214 = load i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_shift_state, align 4, !dbg !115, !tbaa !111
  %cmp836 = icmp slt i32 %214, 0, !dbg !115
  br i1 %cmp836, label %cond.end843, label %cond.false838, !dbg !115

cond.false838:                                    ; preds = %cond.end834
  %idxprom839 = sext i32 %214 to i64, !dbg !115
  %data840 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17, !dbg !115
  %215 = load i8**** %data840, align 8, !dbg !115, !tbaa !116
  %arrayidx841 = getelementptr inbounds i8*** %215, i64 %idxprom839, !dbg !115
  %216 = load i8*** %arrayidx841, align 8, !dbg !115, !tbaa !116
  %217 = load i8** %216, align 8, !dbg !115, !tbaa !116
  %phitmp1016 = bitcast i8* %217 to i32*, !dbg !115
  br label %cond.end843, !dbg !115

cond.end843:                                      ; preds = %cond.end834, %cond.false838
  %cond844 = phi i32* [ %phitmp1016, %cond.false838 ], [ null, %cond.end834 ]
  %218 = load i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_x, align 4, !dbg !115, !tbaa !111
  %cmp845 = icmp slt i32 %218, 0, !dbg !115
  br i1 %cmp845, label %cond.end852, label %cond.false847, !dbg !115

cond.false847:                                    ; preds = %cond.end843
  %idxprom848 = sext i32 %218 to i64, !dbg !115
  %data849 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17, !dbg !115
  %219 = load i8**** %data849, align 8, !dbg !115, !tbaa !116
  %arrayidx850 = getelementptr inbounds i8*** %219, i64 %idxprom848, !dbg !115
  %220 = load i8*** %arrayidx850, align 8, !dbg !115, !tbaa !116
  %221 = load i8** %220, align 8, !dbg !115, !tbaa !116
  %phitmp1017 = bitcast i8* %221 to double*, !dbg !115
  br label %cond.end852, !dbg !115

cond.end852:                                      ; preds = %cond.end843, %cond.false847
  %cond853 = phi double* [ %phitmp1017, %cond.false847 ], [ null, %cond.end843 ]
  %222 = load i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_y, align 4, !dbg !115, !tbaa !111
  %cmp854 = icmp slt i32 %222, 0, !dbg !115
  br i1 %cmp854, label %cond.end861, label %cond.false856, !dbg !115

cond.false856:                                    ; preds = %cond.end852
  %idxprom857 = sext i32 %222 to i64, !dbg !115
  %data858 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17, !dbg !115
  %223 = load i8**** %data858, align 8, !dbg !115, !tbaa !116
  %arrayidx859 = getelementptr inbounds i8*** %223, i64 %idxprom857, !dbg !115
  %224 = load i8*** %arrayidx859, align 8, !dbg !115, !tbaa !116
  %225 = load i8** %224, align 8, !dbg !115, !tbaa !116
  %phitmp1018 = bitcast i8* %225 to double*, !dbg !115
  br label %cond.end861, !dbg !115

cond.end861:                                      ; preds = %cond.end852, %cond.false856
  %cond862 = phi double* [ %phitmp1018, %cond.false856 ], [ null, %cond.end852 ]
  %226 = load i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_z, align 4, !dbg !115, !tbaa !111
  %cmp863 = icmp slt i32 %226, 0, !dbg !115
  br i1 %cmp863, label %cond.end870, label %cond.false865, !dbg !115

cond.false865:                                    ; preds = %cond.end861
  %idxprom866 = sext i32 %226 to i64, !dbg !115
  %data867 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17, !dbg !115
  %227 = load i8**** %data867, align 8, !dbg !115, !tbaa !116
  %arrayidx868 = getelementptr inbounds i8*** %227, i64 %idxprom866, !dbg !115
  %228 = load i8*** %arrayidx868, align 8, !dbg !115, !tbaa !116
  %229 = load i8** %228, align 8, !dbg !115, !tbaa !116
  %phitmp1019 = bitcast i8* %229 to double*, !dbg !115
  br label %cond.end870, !dbg !115

cond.end870:                                      ; preds = %cond.end861, %cond.false865
  %cond871 = phi double* [ %phitmp1019, %cond.false865 ], [ null, %cond.end861 ]
  tail call void %52(i32* %cctk_dim, i32* %53, i32* %54, i32* %55, i32* %56, i32* %57, i32* %58, i32* %59, i32* %60, double* %cctk_delta_time, double* %cctk_time, double* %61, double* %62, i32* %63, i32* %cctk_convlevel, i32* %64, i32* %cctk_iteration, %struct.cGH* %GH, i32* %cond21110211024, i32* %cond2231025, i32* %cond235, i32* %cond24710281031, i32* %cond2591032, i32* %cond271, i32* %cond28310351038, i32* %cond2951039, i32* %cond307, i32* %cond31910421045, i32* %cond3311046, i32* %cond343, i32* %cond35510491052, i32* %cond3671053, i32* %cond379, i32* %cond39110561059, i32* %cond4031060, i32* %cond415, i32* %cond42710631066, i32* %cond4391067, i32* %cond451, i32* %cond46310701073, i32* %cond4751074, i32* %cond487, i32* %cond49910771080, i32* %cond5111081, i32* %cond523, i32* %cond529, double* %cond538, double* %cond547, double* %cond556, double* %cond565, double* %cond574, double* %cond583, double* %cond592, i32* %cond601, double* %cond610, double* %cond619, double* %cond628, double* %cond637, double* %cond646, double* %cond655, double* %cond664, double* %cond673, double* %cond682, double* %cond691, double* %cond700, double* %cond709, double* %cond718, double* %cond727, double* %cond736, double* %cond745, double* %cond754, double* %cond763, double* %cond772, double* %cond781, double* %cond790, double* %cond799, double* %cond808, double* %cond817, double* %cond826, double* %cond835, i32* %cond844, double* %cond853, double* %cond862, double* %cond871) #3, !dbg !115
  ret i32 0, !dbg !117
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

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !56, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CactusBindings/IDLinearWaves_FortranWrapper.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/436.cactusADM/src/CactusBindings/IDLinearWaves_FortranWrapper.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CCTKi_BindingsFortranWrapperIDLinearWaves", metadata !"CCTKi_BindingsFortranWrapperIDLinearWaves", metadata !"", i32 13, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.cGH*, i8*)* @CCTKi_BindingsFortranWrapperIDLinearWaves, null, null, metadata !47, i32 14} ; [ DW_TAG_subprogram ] [line 13] [def] [scope 14] [CCTKi_BindingsFortranWrapperIDLinearWaves]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CactusBindings/IDLinearWaves_FortranWrapper.c]
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
!53 = metadata !{null, metadata !17, metadata !17, metadata !17, metadata !17, metadata !17, metadata !17, metadata !17, metadata !17, metadata !17, metadata !27, metadata !27, metadata !27, metadata !27, metadata !17, metadata !17, metadata !17, metadata !17, metadata !9, metadata !54, metadata !54, metadata !54, metadata !54, metadata !54, metadata !54, metadata !54, metadata !54, metadata !54, metadata !54, metadata !54, metadata !54, metadata !54, metadata !54, metadata !54, metadata !54, metadata !54, metadata !54, metadata !54, metadata !54, metadata !54, metadata !54, metadata !54, metadata !54, metadata !54, metadata !54, metadata !54, metadata !17, metadata !27, metadata !27, metadata !27, metadata !27, metadata !27, metadata !27, metadata !27, metadata !17, metadata !27, metadata !27, metadata !27, metadata !27, metadata !27, metadata !27, metadata !27, metadata !27, metadata !27, metadata !27, metadata !27, metadata !27, metadata !27, metadata !27, metadata !27, metadata !27, metadata !27, metadata !27, metadata !27, metadata !27, metadata !27, metadata !27, metadata !27, metadata !27, metadata !27, metadata !27, metadata !17, metadata !27, metadata !27, metadata !27}
!54 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !55} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!55 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !8} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from int]
!56 = metadata !{metadata !57, metadata !58, metadata !59, metadata !60, metadata !61, metadata !62, metadata !63, metadata !64, metadata !65, metadata !66, metadata !67, metadata !68, metadata !69, metadata !70, metadata !71, metadata !72, metadata !73, metadata !74, metadata !75, metadata !76, metadata !77, metadata !78, metadata !79, metadata !80, metadata !81, metadata !82, metadata !83, metadata !84, metadata !85, metadata !86, metadata !87, metadata !88, metadata !89, metadata !90, metadata !91, metadata !92, metadata !93, metadata !94, metadata !95, metadata !96, metadata !97, metadata !98, metadata !99, metadata !100, metadata !101, metadata !102, metadata !103, metadata !104, metadata !105, metadata !106, metadata !107, metadata !108}
!57 = metadata !{i32 786484, i32 0, metadata !4, metadata !"CCTKARGNUM_active_slicing_handle", metadata !"CCTKARGNUM_active_slicing_handle", metadata !"", metadata !5, i32 17, metadata !8, i32 1, i32 1, i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_active_slicing_handle, null} ; [ DW_TAG_variable ] [CCTKARGNUM_active_slicing_handle] [line 17] [local] [def]
!58 = metadata !{i32 786484, i32 0, metadata !4, metadata !"CCTKGROUPNUM_slicing_flags", metadata !"CCTKGROUPNUM_slicing_flags", metadata !"", metadata !5, i32 17, metadata !8, i32 1, i32 1, i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKGROUPNUM_slicing_flags, null} ; [ DW_TAG_variable ] [CCTKGROUPNUM_slicing_flags] [line 17] [local] [def]
!59 = metadata !{i32 786484, i32 0, metadata !4, metadata !"CCTKARGNUM_alp", metadata !"CCTKARGNUM_alp", metadata !"", metadata !5, i32 17, metadata !8, i32 1, i32 1, i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_alp, null} ; [ DW_TAG_variable ] [CCTKARGNUM_alp] [line 17] [local] [def]
!60 = metadata !{i32 786484, i32 0, metadata !4, metadata !"CCTKGROUPNUM_lapse", metadata !"CCTKGROUPNUM_lapse", metadata !"", metadata !5, i32 17, metadata !8, i32 1, i32 1, i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKGROUPNUM_lapse, null} ; [ DW_TAG_variable ] [CCTKGROUPNUM_lapse] [line 17] [local] [def]
!61 = metadata !{i32 786484, i32 0, metadata !4, metadata !"CCTKARGNUM_betax", metadata !"CCTKARGNUM_betax", metadata !"", metadata !5, i32 17, metadata !8, i32 1, i32 1, i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_betax, null} ; [ DW_TAG_variable ] [CCTKARGNUM_betax] [line 17] [local] [def]
!62 = metadata !{i32 786484, i32 0, metadata !4, metadata !"CCTKGROUPNUM_shift", metadata !"CCTKGROUPNUM_shift", metadata !"", metadata !5, i32 17, metadata !8, i32 1, i32 1, i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKGROUPNUM_shift, null} ; [ DW_TAG_variable ] [CCTKGROUPNUM_shift] [line 17] [local] [def]
!63 = metadata !{i32 786484, i32 0, metadata !4, metadata !"CCTKARGNUM_betay", metadata !"CCTKARGNUM_betay", metadata !"", metadata !5, i32 17, metadata !8, i32 1, i32 1, i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_betay, null} ; [ DW_TAG_variable ] [CCTKARGNUM_betay] [line 17] [local] [def]
!64 = metadata !{i32 786484, i32 0, metadata !4, metadata !"CCTKARGNUM_betaz", metadata !"CCTKARGNUM_betaz", metadata !"", metadata !5, i32 17, metadata !8, i32 1, i32 1, i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_betaz, null} ; [ DW_TAG_variable ] [CCTKARGNUM_betaz] [line 17] [local] [def]
!65 = metadata !{i32 786484, i32 0, metadata !4, metadata !"CCTKARGNUM_coarse_dx", metadata !"CCTKARGNUM_coarse_dx", metadata !"", metadata !5, i32 17, metadata !8, i32 1, i32 1, i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_coarse_dx, null} ; [ DW_TAG_variable ] [CCTKARGNUM_coarse_dx] [line 17] [local] [def]
!66 = metadata !{i32 786484, i32 0, metadata !4, metadata !"CCTKGROUPNUM_gridspacings", metadata !"CCTKGROUPNUM_gridspacings", metadata !"", metadata !5, i32 17, metadata !8, i32 1, i32 1, i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKGROUPNUM_gridspacings, null} ; [ DW_TAG_variable ] [CCTKGROUPNUM_gridspacings] [line 17] [local] [def]
!67 = metadata !{i32 786484, i32 0, metadata !4, metadata !"CCTKARGNUM_coarse_dy", metadata !"CCTKARGNUM_coarse_dy", metadata !"", metadata !5, i32 17, metadata !8, i32 1, i32 1, i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_coarse_dy, null} ; [ DW_TAG_variable ] [CCTKARGNUM_coarse_dy] [line 17] [local] [def]
!68 = metadata !{i32 786484, i32 0, metadata !4, metadata !"CCTKARGNUM_coarse_dz", metadata !"CCTKARGNUM_coarse_dz", metadata !"", metadata !5, i32 17, metadata !8, i32 1, i32 1, i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_coarse_dz, null} ; [ DW_TAG_variable ] [CCTKARGNUM_coarse_dz] [line 17] [local] [def]
!69 = metadata !{i32 786484, i32 0, metadata !4, metadata !"CCTKARGNUM_conformal_state", metadata !"CCTKARGNUM_conformal_state", metadata !"", metadata !5, i32 17, metadata !8, i32 1, i32 1, i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_conformal_state, null} ; [ DW_TAG_variable ] [CCTKARGNUM_conformal_state] [line 17] [local] [def]
!70 = metadata !{i32 786484, i32 0, metadata !4, metadata !"CCTKGROUPNUM_flags", metadata !"CCTKGROUPNUM_flags", metadata !"", metadata !5, i32 17, metadata !8, i32 1, i32 1, i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKGROUPNUM_flags, null} ; [ DW_TAG_variable ] [CCTKGROUPNUM_flags] [line 17] [local] [def]
!71 = metadata !{i32 786484, i32 0, metadata !4, metadata !"CCTKARGNUM_courant_min_time", metadata !"CCTKARGNUM_courant_min_time", metadata !"", metadata !5, i32 17, metadata !8, i32 1, i32 1, i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_courant_min_time, null} ; [ DW_TAG_variable ] [CCTKARGNUM_courant_min_time] [line 17] [local] [def]
!72 = metadata !{i32 786484, i32 0, metadata !4, metadata !"CCTKGROUPNUM_speedvars", metadata !"CCTKGROUPNUM_speedvars", metadata !"", metadata !5, i32 17, metadata !8, i32 1, i32 1, i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKGROUPNUM_speedvars, null} ; [ DW_TAG_variable ] [CCTKGROUPNUM_speedvars] [line 17] [local] [def]
!73 = metadata !{i32 786484, i32 0, metadata !4, metadata !"CCTKARGNUM_courant_wave_speed", metadata !"CCTKARGNUM_courant_wave_speed", metadata !"", metadata !5, i32 17, metadata !8, i32 1, i32 1, i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_courant_wave_speed, null} ; [ DW_TAG_variable ] [CCTKARGNUM_courant_wave_speed] [line 17] [local] [def]
!74 = metadata !{i32 786484, i32 0, metadata !4, metadata !"CCTKARGNUM_emask", metadata !"CCTKARGNUM_emask", metadata !"", metadata !5, i32 17, metadata !8, i32 1, i32 1, i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_emask, null} ; [ DW_TAG_variable ] [CCTKARGNUM_emask] [line 17] [local] [def]
!75 = metadata !{i32 786484, i32 0, metadata !4, metadata !"CCTKGROUPNUM_mask", metadata !"CCTKGROUPNUM_mask", metadata !"", metadata !5, i32 17, metadata !8, i32 1, i32 1, i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKGROUPNUM_mask, null} ; [ DW_TAG_variable ] [CCTKGROUPNUM_mask] [line 17] [local] [def]
!76 = metadata !{i32 786484, i32 0, metadata !4, metadata !"CCTKARGNUM_gxx", metadata !"CCTKARGNUM_gxx", metadata !"", metadata !5, i32 17, metadata !8, i32 1, i32 1, i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_gxx, null} ; [ DW_TAG_variable ] [CCTKARGNUM_gxx] [line 17] [local] [def]
!77 = metadata !{i32 786484, i32 0, metadata !4, metadata !"CCTKGROUPNUM_metric", metadata !"CCTKGROUPNUM_metric", metadata !"", metadata !5, i32 17, metadata !8, i32 1, i32 1, i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKGROUPNUM_metric, null} ; [ DW_TAG_variable ] [CCTKGROUPNUM_metric] [line 17] [local] [def]
!78 = metadata !{i32 786484, i32 0, metadata !4, metadata !"CCTKARGNUM_gxy", metadata !"CCTKARGNUM_gxy", metadata !"", metadata !5, i32 17, metadata !8, i32 1, i32 1, i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_gxy, null} ; [ DW_TAG_variable ] [CCTKARGNUM_gxy] [line 17] [local] [def]
!79 = metadata !{i32 786484, i32 0, metadata !4, metadata !"CCTKARGNUM_gxz", metadata !"CCTKARGNUM_gxz", metadata !"", metadata !5, i32 17, metadata !8, i32 1, i32 1, i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_gxz, null} ; [ DW_TAG_variable ] [CCTKARGNUM_gxz] [line 17] [local] [def]
!80 = metadata !{i32 786484, i32 0, metadata !4, metadata !"CCTKARGNUM_gyy", metadata !"CCTKARGNUM_gyy", metadata !"", metadata !5, i32 17, metadata !8, i32 1, i32 1, i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_gyy, null} ; [ DW_TAG_variable ] [CCTKARGNUM_gyy] [line 17] [local] [def]
!81 = metadata !{i32 786484, i32 0, metadata !4, metadata !"CCTKARGNUM_gyz", metadata !"CCTKARGNUM_gyz", metadata !"", metadata !5, i32 17, metadata !8, i32 1, i32 1, i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_gyz, null} ; [ DW_TAG_variable ] [CCTKARGNUM_gyz] [line 17] [local] [def]
!82 = metadata !{i32 786484, i32 0, metadata !4, metadata !"CCTKARGNUM_gzz", metadata !"CCTKARGNUM_gzz", metadata !"", metadata !5, i32 17, metadata !8, i32 1, i32 1, i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_gzz, null} ; [ DW_TAG_variable ] [CCTKARGNUM_gzz] [line 17] [local] [def]
!83 = metadata !{i32 786484, i32 0, metadata !4, metadata !"CCTKARGNUM_kxx", metadata !"CCTKARGNUM_kxx", metadata !"", metadata !5, i32 17, metadata !8, i32 1, i32 1, i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_kxx, null} ; [ DW_TAG_variable ] [CCTKARGNUM_kxx] [line 17] [local] [def]
!84 = metadata !{i32 786484, i32 0, metadata !4, metadata !"CCTKGROUPNUM_curv", metadata !"CCTKGROUPNUM_curv", metadata !"", metadata !5, i32 17, metadata !8, i32 1, i32 1, i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKGROUPNUM_curv, null} ; [ DW_TAG_variable ] [CCTKGROUPNUM_curv] [line 17] [local] [def]
!85 = metadata !{i32 786484, i32 0, metadata !4, metadata !"CCTKARGNUM_kxy", metadata !"CCTKARGNUM_kxy", metadata !"", metadata !5, i32 17, metadata !8, i32 1, i32 1, i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_kxy, null} ; [ DW_TAG_variable ] [CCTKARGNUM_kxy] [line 17] [local] [def]
!86 = metadata !{i32 786484, i32 0, metadata !4, metadata !"CCTKARGNUM_kxz", metadata !"CCTKARGNUM_kxz", metadata !"", metadata !5, i32 17, metadata !8, i32 1, i32 1, i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_kxz, null} ; [ DW_TAG_variable ] [CCTKARGNUM_kxz] [line 17] [local] [def]
!87 = metadata !{i32 786484, i32 0, metadata !4, metadata !"CCTKARGNUM_kyy", metadata !"CCTKARGNUM_kyy", metadata !"", metadata !5, i32 17, metadata !8, i32 1, i32 1, i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_kyy, null} ; [ DW_TAG_variable ] [CCTKARGNUM_kyy] [line 17] [local] [def]
!88 = metadata !{i32 786484, i32 0, metadata !4, metadata !"CCTKARGNUM_kyz", metadata !"CCTKARGNUM_kyz", metadata !"", metadata !5, i32 17, metadata !8, i32 1, i32 1, i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_kyz, null} ; [ DW_TAG_variable ] [CCTKARGNUM_kyz] [line 17] [local] [def]
!89 = metadata !{i32 786484, i32 0, metadata !4, metadata !"CCTKARGNUM_kzz", metadata !"CCTKARGNUM_kzz", metadata !"", metadata !5, i32 17, metadata !8, i32 1, i32 1, i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_kzz, null} ; [ DW_TAG_variable ] [CCTKARGNUM_kzz] [line 17] [local] [def]
!90 = metadata !{i32 786484, i32 0, metadata !4, metadata !"CCTKARGNUM_psi", metadata !"CCTKARGNUM_psi", metadata !"", metadata !5, i32 17, metadata !8, i32 1, i32 1, i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_psi, null} ; [ DW_TAG_variable ] [CCTKARGNUM_psi] [line 17] [local] [def]
!91 = metadata !{i32 786484, i32 0, metadata !4, metadata !"CCTKGROUPNUM_confac", metadata !"CCTKGROUPNUM_confac", metadata !"", metadata !5, i32 17, metadata !8, i32 1, i32 1, i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKGROUPNUM_confac, null} ; [ DW_TAG_variable ] [CCTKGROUPNUM_confac] [line 17] [local] [def]
!92 = metadata !{i32 786484, i32 0, metadata !4, metadata !"CCTKARGNUM_psix", metadata !"CCTKARGNUM_psix", metadata !"", metadata !5, i32 17, metadata !8, i32 1, i32 1, i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_psix, null} ; [ DW_TAG_variable ] [CCTKARGNUM_psix] [line 17] [local] [def]
!93 = metadata !{i32 786484, i32 0, metadata !4, metadata !"CCTKGROUPNUM_confac_1derivs", metadata !"CCTKGROUPNUM_confac_1derivs", metadata !"", metadata !5, i32 17, metadata !8, i32 1, i32 1, i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKGROUPNUM_confac_1derivs, null} ; [ DW_TAG_variable ] [CCTKGROUPNUM_confac_1derivs] [line 17] [local] [def]
!94 = metadata !{i32 786484, i32 0, metadata !4, metadata !"CCTKARGNUM_psixx", metadata !"CCTKARGNUM_psixx", metadata !"", metadata !5, i32 17, metadata !8, i32 1, i32 1, i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_psixx, null} ; [ DW_TAG_variable ] [CCTKARGNUM_psixx] [line 17] [local] [def]
!95 = metadata !{i32 786484, i32 0, metadata !4, metadata !"CCTKGROUPNUM_confac_2derivs", metadata !"CCTKGROUPNUM_confac_2derivs", metadata !"", metadata !5, i32 17, metadata !8, i32 1, i32 1, i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKGROUPNUM_confac_2derivs, null} ; [ DW_TAG_variable ] [CCTKGROUPNUM_confac_2derivs] [line 17] [local] [def]
!96 = metadata !{i32 786484, i32 0, metadata !4, metadata !"CCTKARGNUM_psixy", metadata !"CCTKARGNUM_psixy", metadata !"", metadata !5, i32 17, metadata !8, i32 1, i32 1, i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_psixy, null} ; [ DW_TAG_variable ] [CCTKARGNUM_psixy] [line 17] [local] [def]
!97 = metadata !{i32 786484, i32 0, metadata !4, metadata !"CCTKARGNUM_psixz", metadata !"CCTKARGNUM_psixz", metadata !"", metadata !5, i32 17, metadata !8, i32 1, i32 1, i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_psixz, null} ; [ DW_TAG_variable ] [CCTKARGNUM_psixz] [line 17] [local] [def]
!98 = metadata !{i32 786484, i32 0, metadata !4, metadata !"CCTKARGNUM_psiy", metadata !"CCTKARGNUM_psiy", metadata !"", metadata !5, i32 17, metadata !8, i32 1, i32 1, i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_psiy, null} ; [ DW_TAG_variable ] [CCTKARGNUM_psiy] [line 17] [local] [def]
!99 = metadata !{i32 786484, i32 0, metadata !4, metadata !"CCTKARGNUM_psiyy", metadata !"CCTKARGNUM_psiyy", metadata !"", metadata !5, i32 17, metadata !8, i32 1, i32 1, i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_psiyy, null} ; [ DW_TAG_variable ] [CCTKARGNUM_psiyy] [line 17] [local] [def]
!100 = metadata !{i32 786484, i32 0, metadata !4, metadata !"CCTKARGNUM_psiyz", metadata !"CCTKARGNUM_psiyz", metadata !"", metadata !5, i32 17, metadata !8, i32 1, i32 1, i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_psiyz, null} ; [ DW_TAG_variable ] [CCTKARGNUM_psiyz] [line 17] [local] [def]
!101 = metadata !{i32 786484, i32 0, metadata !4, metadata !"CCTKARGNUM_psiz", metadata !"CCTKARGNUM_psiz", metadata !"", metadata !5, i32 17, metadata !8, i32 1, i32 1, i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_psiz, null} ; [ DW_TAG_variable ] [CCTKARGNUM_psiz] [line 17] [local] [def]
!102 = metadata !{i32 786484, i32 0, metadata !4, metadata !"CCTKARGNUM_psizz", metadata !"CCTKARGNUM_psizz", metadata !"", metadata !5, i32 17, metadata !8, i32 1, i32 1, i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_psizz, null} ; [ DW_TAG_variable ] [CCTKARGNUM_psizz] [line 17] [local] [def]
!103 = metadata !{i32 786484, i32 0, metadata !4, metadata !"CCTKARGNUM_r", metadata !"CCTKARGNUM_r", metadata !"", metadata !5, i32 17, metadata !8, i32 1, i32 1, i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_r, null} ; [ DW_TAG_variable ] [CCTKARGNUM_r] [line 17] [local] [def]
!104 = metadata !{i32 786484, i32 0, metadata !4, metadata !"CCTKGROUPNUM_coordinates", metadata !"CCTKGROUPNUM_coordinates", metadata !"", metadata !5, i32 17, metadata !8, i32 1, i32 1, i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKGROUPNUM_coordinates, null} ; [ DW_TAG_variable ] [CCTKGROUPNUM_coordinates] [line 17] [local] [def]
!105 = metadata !{i32 786484, i32 0, metadata !4, metadata !"CCTKARGNUM_shift_state", metadata !"CCTKARGNUM_shift_state", metadata !"", metadata !5, i32 17, metadata !8, i32 1, i32 1, i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_shift_state, null} ; [ DW_TAG_variable ] [CCTKARGNUM_shift_state] [line 17] [local] [def]
!106 = metadata !{i32 786484, i32 0, metadata !4, metadata !"CCTKARGNUM_x", metadata !"CCTKARGNUM_x", metadata !"", metadata !5, i32 17, metadata !8, i32 1, i32 1, i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_x, null} ; [ DW_TAG_variable ] [CCTKARGNUM_x] [line 17] [local] [def]
!107 = metadata !{i32 786484, i32 0, metadata !4, metadata !"CCTKARGNUM_y", metadata !"CCTKARGNUM_y", metadata !"", metadata !5, i32 17, metadata !8, i32 1, i32 1, i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_y, null} ; [ DW_TAG_variable ] [CCTKARGNUM_y] [line 17] [local] [def]
!108 = metadata !{i32 786484, i32 0, metadata !4, metadata !"CCTKARGNUM_z", metadata !"CCTKARGNUM_z", metadata !"", metadata !5, i32 17, metadata !8, i32 1, i32 1, i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_z, null} ; [ DW_TAG_variable ] [CCTKARGNUM_z] [line 17] [local] [def]
!109 = metadata !{i32 13, i32 0, metadata !4, null}
!110 = metadata !{i32 18, i32 0, metadata !4, null}
!111 = metadata !{metadata !"int", metadata !112}
!112 = metadata !{metadata !"omnipotent char", metadata !113}
!113 = metadata !{metadata !"Simple C/C++ TBAA"}
!114 = metadata !{i32 20, i32 0, metadata !4, null}
!115 = metadata !{i32 22, i32 0, metadata !4, null}
!116 = metadata !{metadata !"any pointer", metadata !112}
!117 = metadata !{i32 24, i32 0, metadata !4, null}
