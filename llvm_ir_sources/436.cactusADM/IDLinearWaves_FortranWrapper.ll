; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/CactusBindings/IDLinearWaves_FortranWrapper.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

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

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTKi_BindingsFortranWrapperIDLinearWaves(%struct.cGH* %GH, i8* nocapture %fpointer) #0 {
  tail call void @llvm.dbg.value(metadata %struct.cGH* %GH, i64 0, metadata !53, metadata !113), !dbg !114
  tail call void @llvm.dbg.value(metadata i8* %fpointer, i64 0, metadata !54, metadata !113), !dbg !115
  %1 = load i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_active_slicing_handle, align 4, !dbg !116, !tbaa !118
  %2 = icmp eq i32 %1, -1, !dbg !116
  br i1 %2, label %3, label %5, !dbg !122

; <label>:3                                       ; preds = %0
  %4 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([32 x i8]* @.str, i64 0, i64 0)) #3, !dbg !116
  store i32 %4, i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_active_slicing_handle, align 4, !dbg !116, !tbaa !118
  br label %5, !dbg !116

; <label>:5                                       ; preds = %3, %0
  %6 = load i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKGROUPNUM_slicing_flags, align 4, !dbg !123, !tbaa !118
  %7 = icmp eq i32 %6, -1, !dbg !123
  br i1 %7, label %8, label %10, !dbg !122

; <label>:8                                       ; preds = %5
  %9 = tail call i32 @CCTK_GroupIndex(i8* getelementptr inbounds ([24 x i8]* @.str1, i64 0, i64 0)) #3, !dbg !123
  store i32 %9, i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKGROUPNUM_slicing_flags, align 4, !dbg !123, !tbaa !118
  br label %10, !dbg !123

; <label>:10                                      ; preds = %8, %5
  %11 = load i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_alp, align 4, !dbg !125, !tbaa !118
  %12 = icmp eq i32 %11, -1, !dbg !125
  br i1 %12, label %13, label %15, !dbg !122

; <label>:13                                      ; preds = %10
  %14 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str2, i64 0, i64 0)) #3, !dbg !125
  store i32 %14, i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_alp, align 4, !dbg !125, !tbaa !118
  br label %15, !dbg !125

; <label>:15                                      ; preds = %13, %10
  %16 = load i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKGROUPNUM_lapse, align 4, !dbg !127, !tbaa !118
  %17 = icmp eq i32 %16, -1, !dbg !127
  br i1 %17, label %18, label %20, !dbg !122

; <label>:18                                      ; preds = %15
  %19 = tail call i32 @CCTK_GroupIndex(i8* getelementptr inbounds ([16 x i8]* @.str3, i64 0, i64 0)) #3, !dbg !127
  store i32 %19, i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKGROUPNUM_lapse, align 4, !dbg !127, !tbaa !118
  br label %20, !dbg !127

; <label>:20                                      ; preds = %18, %15
  %21 = load i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_betax, align 4, !dbg !129, !tbaa !118
  %22 = icmp eq i32 %21, -1, !dbg !129
  br i1 %22, label %23, label %25, !dbg !122

; <label>:23                                      ; preds = %20
  %24 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str4, i64 0, i64 0)) #3, !dbg !129
  store i32 %24, i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_betax, align 4, !dbg !129, !tbaa !118
  br label %25, !dbg !129

; <label>:25                                      ; preds = %23, %20
  %26 = load i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKGROUPNUM_shift, align 4, !dbg !131, !tbaa !118
  %27 = icmp eq i32 %26, -1, !dbg !131
  br i1 %27, label %28, label %30, !dbg !122

; <label>:28                                      ; preds = %25
  %29 = tail call i32 @CCTK_GroupIndex(i8* getelementptr inbounds ([16 x i8]* @.str5, i64 0, i64 0)) #3, !dbg !131
  store i32 %29, i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKGROUPNUM_shift, align 4, !dbg !131, !tbaa !118
  br label %30, !dbg !131

; <label>:30                                      ; preds = %28, %25
  %31 = load i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_betay, align 4, !dbg !133, !tbaa !118
  %32 = icmp eq i32 %31, -1, !dbg !133
  br i1 %32, label %33, label %35, !dbg !122

; <label>:33                                      ; preds = %30
  %34 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str6, i64 0, i64 0)) #3, !dbg !133
  store i32 %34, i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_betay, align 4, !dbg !133, !tbaa !118
  br label %35, !dbg !133

; <label>:35                                      ; preds = %33, %30
  %36 = load i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_betaz, align 4, !dbg !135, !tbaa !118
  %37 = icmp eq i32 %36, -1, !dbg !135
  br i1 %37, label %38, label %40, !dbg !122

; <label>:38                                      ; preds = %35
  %39 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str7, i64 0, i64 0)) #3, !dbg !135
  store i32 %39, i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_betaz, align 4, !dbg !135, !tbaa !118
  br label %40, !dbg !135

; <label>:40                                      ; preds = %38, %35
  %41 = load i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_coarse_dx, align 4, !dbg !137, !tbaa !118
  %42 = icmp eq i32 %41, -1, !dbg !137
  br i1 %42, label %43, label %45, !dbg !122

; <label>:43                                      ; preds = %40
  %44 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str8, i64 0, i64 0)) #3, !dbg !137
  store i32 %44, i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_coarse_dx, align 4, !dbg !137, !tbaa !118
  br label %45, !dbg !137

; <label>:45                                      ; preds = %43, %40
  %46 = load i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKGROUPNUM_gridspacings, align 4, !dbg !139, !tbaa !118
  %47 = icmp eq i32 %46, -1, !dbg !139
  br i1 %47, label %48, label %50, !dbg !122

; <label>:48                                      ; preds = %45
  %49 = tail call i32 @CCTK_GroupIndex(i8* getelementptr inbounds ([19 x i8]* @.str9, i64 0, i64 0)) #3, !dbg !139
  store i32 %49, i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKGROUPNUM_gridspacings, align 4, !dbg !139, !tbaa !118
  br label %50, !dbg !139

; <label>:50                                      ; preds = %48, %45
  %51 = load i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_coarse_dy, align 4, !dbg !141, !tbaa !118
  %52 = icmp eq i32 %51, -1, !dbg !141
  br i1 %52, label %53, label %55, !dbg !122

; <label>:53                                      ; preds = %50
  %54 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str10, i64 0, i64 0)) #3, !dbg !141
  store i32 %54, i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_coarse_dy, align 4, !dbg !141, !tbaa !118
  br label %55, !dbg !141

; <label>:55                                      ; preds = %53, %50
  %56 = load i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_coarse_dz, align 4, !dbg !143, !tbaa !118
  %57 = icmp eq i32 %56, -1, !dbg !143
  br i1 %57, label %58, label %60, !dbg !122

; <label>:58                                      ; preds = %55
  %59 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str11, i64 0, i64 0)) #3, !dbg !143
  store i32 %59, i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_coarse_dz, align 4, !dbg !143, !tbaa !118
  br label %60, !dbg !143

; <label>:60                                      ; preds = %58, %55
  %61 = load i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_conformal_state, align 4, !dbg !145, !tbaa !118
  %62 = icmp eq i32 %61, -1, !dbg !145
  br i1 %62, label %63, label %65, !dbg !122

; <label>:63                                      ; preds = %60
  %64 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([26 x i8]* @.str12, i64 0, i64 0)) #3, !dbg !145
  store i32 %64, i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_conformal_state, align 4, !dbg !145, !tbaa !118
  br label %65, !dbg !145

; <label>:65                                      ; preds = %63, %60
  %66 = load i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKGROUPNUM_flags, align 4, !dbg !147, !tbaa !118
  %67 = icmp eq i32 %66, -1, !dbg !147
  br i1 %67, label %68, label %70, !dbg !122

; <label>:68                                      ; preds = %65
  %69 = tail call i32 @CCTK_GroupIndex(i8* getelementptr inbounds ([16 x i8]* @.str13, i64 0, i64 0)) #3, !dbg !147
  store i32 %69, i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKGROUPNUM_flags, align 4, !dbg !147, !tbaa !118
  br label %70, !dbg !147

; <label>:70                                      ; preds = %68, %65
  %71 = load i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_courant_min_time, align 4, !dbg !149, !tbaa !118
  %72 = icmp eq i32 %71, -1, !dbg !149
  br i1 %72, label %73, label %75, !dbg !122

; <label>:73                                      ; preds = %70
  %74 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([23 x i8]* @.str14, i64 0, i64 0)) #3, !dbg !149
  store i32 %74, i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_courant_min_time, align 4, !dbg !149, !tbaa !118
  br label %75, !dbg !149

; <label>:75                                      ; preds = %73, %70
  %76 = load i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKGROUPNUM_speedvars, align 4, !dbg !151, !tbaa !118
  %77 = icmp eq i32 %76, -1, !dbg !151
  br i1 %77, label %78, label %80, !dbg !122

; <label>:78                                      ; preds = %75
  %79 = tail call i32 @CCTK_GroupIndex(i8* getelementptr inbounds ([16 x i8]* @.str15, i64 0, i64 0)) #3, !dbg !151
  store i32 %79, i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKGROUPNUM_speedvars, align 4, !dbg !151, !tbaa !118
  br label %80, !dbg !151

; <label>:80                                      ; preds = %78, %75
  %81 = load i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_courant_wave_speed, align 4, !dbg !153, !tbaa !118
  %82 = icmp eq i32 %81, -1, !dbg !153
  br i1 %82, label %83, label %85, !dbg !122

; <label>:83                                      ; preds = %80
  %84 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([25 x i8]* @.str16, i64 0, i64 0)) #3, !dbg !153
  store i32 %84, i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_courant_wave_speed, align 4, !dbg !153, !tbaa !118
  br label %85, !dbg !153

; <label>:85                                      ; preds = %83, %80
  %86 = load i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_emask, align 4, !dbg !155, !tbaa !118
  %87 = icmp eq i32 %86, -1, !dbg !155
  br i1 %87, label %88, label %90, !dbg !122

; <label>:88                                      ; preds = %85
  %89 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str17, i64 0, i64 0)) #3, !dbg !155
  store i32 %89, i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_emask, align 4, !dbg !155, !tbaa !118
  br label %90, !dbg !155

; <label>:90                                      ; preds = %88, %85
  %91 = load i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKGROUPNUM_mask, align 4, !dbg !157, !tbaa !118
  %92 = icmp eq i32 %91, -1, !dbg !157
  br i1 %92, label %93, label %95, !dbg !122

; <label>:93                                      ; preds = %90
  %94 = tail call i32 @CCTK_GroupIndex(i8* getelementptr inbounds ([15 x i8]* @.str18, i64 0, i64 0)) #3, !dbg !157
  store i32 %94, i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKGROUPNUM_mask, align 4, !dbg !157, !tbaa !118
  br label %95, !dbg !157

; <label>:95                                      ; preds = %93, %90
  %96 = load i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_gxx, align 4, !dbg !159, !tbaa !118
  %97 = icmp eq i32 %96, -1, !dbg !159
  br i1 %97, label %98, label %100, !dbg !122

; <label>:98                                      ; preds = %95
  %99 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str19, i64 0, i64 0)) #3, !dbg !159
  store i32 %99, i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_gxx, align 4, !dbg !159, !tbaa !118
  br label %100, !dbg !159

; <label>:100                                     ; preds = %98, %95
  %101 = load i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKGROUPNUM_metric, align 4, !dbg !161, !tbaa !118
  %102 = icmp eq i32 %101, -1, !dbg !161
  br i1 %102, label %103, label %105, !dbg !122

; <label>:103                                     ; preds = %100
  %104 = tail call i32 @CCTK_GroupIndex(i8* getelementptr inbounds ([17 x i8]* @.str20, i64 0, i64 0)) #3, !dbg !161
  store i32 %104, i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKGROUPNUM_metric, align 4, !dbg !161, !tbaa !118
  br label %105, !dbg !161

; <label>:105                                     ; preds = %103, %100
  %106 = load i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_gxy, align 4, !dbg !163, !tbaa !118
  %107 = icmp eq i32 %106, -1, !dbg !163
  br i1 %107, label %108, label %110, !dbg !122

; <label>:108                                     ; preds = %105
  %109 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str21, i64 0, i64 0)) #3, !dbg !163
  store i32 %109, i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_gxy, align 4, !dbg !163, !tbaa !118
  br label %110, !dbg !163

; <label>:110                                     ; preds = %108, %105
  %111 = load i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_gxz, align 4, !dbg !165, !tbaa !118
  %112 = icmp eq i32 %111, -1, !dbg !165
  br i1 %112, label %113, label %115, !dbg !122

; <label>:113                                     ; preds = %110
  %114 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str22, i64 0, i64 0)) #3, !dbg !165
  store i32 %114, i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_gxz, align 4, !dbg !165, !tbaa !118
  br label %115, !dbg !165

; <label>:115                                     ; preds = %113, %110
  %116 = load i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_gyy, align 4, !dbg !167, !tbaa !118
  %117 = icmp eq i32 %116, -1, !dbg !167
  br i1 %117, label %118, label %120, !dbg !122

; <label>:118                                     ; preds = %115
  %119 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str23, i64 0, i64 0)) #3, !dbg !167
  store i32 %119, i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_gyy, align 4, !dbg !167, !tbaa !118
  br label %120, !dbg !167

; <label>:120                                     ; preds = %118, %115
  %121 = load i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_gyz, align 4, !dbg !169, !tbaa !118
  %122 = icmp eq i32 %121, -1, !dbg !169
  br i1 %122, label %123, label %125, !dbg !122

; <label>:123                                     ; preds = %120
  %124 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str24, i64 0, i64 0)) #3, !dbg !169
  store i32 %124, i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_gyz, align 4, !dbg !169, !tbaa !118
  br label %125, !dbg !169

; <label>:125                                     ; preds = %123, %120
  %126 = load i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_gzz, align 4, !dbg !171, !tbaa !118
  %127 = icmp eq i32 %126, -1, !dbg !171
  br i1 %127, label %128, label %130, !dbg !122

; <label>:128                                     ; preds = %125
  %129 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str25, i64 0, i64 0)) #3, !dbg !171
  store i32 %129, i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_gzz, align 4, !dbg !171, !tbaa !118
  br label %130, !dbg !171

; <label>:130                                     ; preds = %128, %125
  %131 = load i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_kxx, align 4, !dbg !173, !tbaa !118
  %132 = icmp eq i32 %131, -1, !dbg !173
  br i1 %132, label %133, label %135, !dbg !122

; <label>:133                                     ; preds = %130
  %134 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str26, i64 0, i64 0)) #3, !dbg !173
  store i32 %134, i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_kxx, align 4, !dbg !173, !tbaa !118
  br label %135, !dbg !173

; <label>:135                                     ; preds = %133, %130
  %136 = load i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKGROUPNUM_curv, align 4, !dbg !175, !tbaa !118
  %137 = icmp eq i32 %136, -1, !dbg !175
  br i1 %137, label %138, label %140, !dbg !122

; <label>:138                                     ; preds = %135
  %139 = tail call i32 @CCTK_GroupIndex(i8* getelementptr inbounds ([15 x i8]* @.str27, i64 0, i64 0)) #3, !dbg !175
  store i32 %139, i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKGROUPNUM_curv, align 4, !dbg !175, !tbaa !118
  br label %140, !dbg !175

; <label>:140                                     ; preds = %138, %135
  %141 = load i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_kxy, align 4, !dbg !177, !tbaa !118
  %142 = icmp eq i32 %141, -1, !dbg !177
  br i1 %142, label %143, label %145, !dbg !122

; <label>:143                                     ; preds = %140
  %144 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str28, i64 0, i64 0)) #3, !dbg !177
  store i32 %144, i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_kxy, align 4, !dbg !177, !tbaa !118
  br label %145, !dbg !177

; <label>:145                                     ; preds = %143, %140
  %146 = load i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_kxz, align 4, !dbg !179, !tbaa !118
  %147 = icmp eq i32 %146, -1, !dbg !179
  br i1 %147, label %148, label %150, !dbg !122

; <label>:148                                     ; preds = %145
  %149 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str29, i64 0, i64 0)) #3, !dbg !179
  store i32 %149, i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_kxz, align 4, !dbg !179, !tbaa !118
  br label %150, !dbg !179

; <label>:150                                     ; preds = %148, %145
  %151 = load i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_kyy, align 4, !dbg !181, !tbaa !118
  %152 = icmp eq i32 %151, -1, !dbg !181
  br i1 %152, label %153, label %155, !dbg !122

; <label>:153                                     ; preds = %150
  %154 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str30, i64 0, i64 0)) #3, !dbg !181
  store i32 %154, i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_kyy, align 4, !dbg !181, !tbaa !118
  br label %155, !dbg !181

; <label>:155                                     ; preds = %153, %150
  %156 = load i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_kyz, align 4, !dbg !183, !tbaa !118
  %157 = icmp eq i32 %156, -1, !dbg !183
  br i1 %157, label %158, label %160, !dbg !122

; <label>:158                                     ; preds = %155
  %159 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str31, i64 0, i64 0)) #3, !dbg !183
  store i32 %159, i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_kyz, align 4, !dbg !183, !tbaa !118
  br label %160, !dbg !183

; <label>:160                                     ; preds = %158, %155
  %161 = load i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_kzz, align 4, !dbg !185, !tbaa !118
  %162 = icmp eq i32 %161, -1, !dbg !185
  br i1 %162, label %163, label %165, !dbg !122

; <label>:163                                     ; preds = %160
  %164 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str32, i64 0, i64 0)) #3, !dbg !185
  store i32 %164, i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_kzz, align 4, !dbg !185, !tbaa !118
  br label %165, !dbg !185

; <label>:165                                     ; preds = %163, %160
  %166 = load i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_psi, align 4, !dbg !187, !tbaa !118
  %167 = icmp eq i32 %166, -1, !dbg !187
  br i1 %167, label %168, label %170, !dbg !122

; <label>:168                                     ; preds = %165
  %169 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str33, i64 0, i64 0)) #3, !dbg !187
  store i32 %169, i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_psi, align 4, !dbg !187, !tbaa !118
  br label %170, !dbg !187

; <label>:170                                     ; preds = %168, %165
  %171 = load i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKGROUPNUM_confac, align 4, !dbg !189, !tbaa !118
  %172 = icmp eq i32 %171, -1, !dbg !189
  br i1 %172, label %173, label %175, !dbg !122

; <label>:173                                     ; preds = %170
  %174 = tail call i32 @CCTK_GroupIndex(i8* getelementptr inbounds ([17 x i8]* @.str34, i64 0, i64 0)) #3, !dbg !189
  store i32 %174, i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKGROUPNUM_confac, align 4, !dbg !189, !tbaa !118
  br label %175, !dbg !189

; <label>:175                                     ; preds = %173, %170
  %176 = load i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_psix, align 4, !dbg !191, !tbaa !118
  %177 = icmp eq i32 %176, -1, !dbg !191
  br i1 %177, label %178, label %180, !dbg !122

; <label>:178                                     ; preds = %175
  %179 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([15 x i8]* @.str35, i64 0, i64 0)) #3, !dbg !191
  store i32 %179, i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_psix, align 4, !dbg !191, !tbaa !118
  br label %180, !dbg !191

; <label>:180                                     ; preds = %178, %175
  %181 = load i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKGROUPNUM_confac_1derivs, align 4, !dbg !193, !tbaa !118
  %182 = icmp eq i32 %181, -1, !dbg !193
  br i1 %182, label %183, label %185, !dbg !122

; <label>:183                                     ; preds = %180
  %184 = tail call i32 @CCTK_GroupIndex(i8* getelementptr inbounds ([25 x i8]* @.str36, i64 0, i64 0)) #3, !dbg !193
  store i32 %184, i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKGROUPNUM_confac_1derivs, align 4, !dbg !193, !tbaa !118
  br label %185, !dbg !193

; <label>:185                                     ; preds = %183, %180
  %186 = load i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_psixx, align 4, !dbg !195, !tbaa !118
  %187 = icmp eq i32 %186, -1, !dbg !195
  br i1 %187, label %188, label %190, !dbg !122

; <label>:188                                     ; preds = %185
  %189 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str37, i64 0, i64 0)) #3, !dbg !195
  store i32 %189, i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_psixx, align 4, !dbg !195, !tbaa !118
  br label %190, !dbg !195

; <label>:190                                     ; preds = %188, %185
  %191 = load i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKGROUPNUM_confac_2derivs, align 4, !dbg !197, !tbaa !118
  %192 = icmp eq i32 %191, -1, !dbg !197
  br i1 %192, label %193, label %195, !dbg !122

; <label>:193                                     ; preds = %190
  %194 = tail call i32 @CCTK_GroupIndex(i8* getelementptr inbounds ([25 x i8]* @.str38, i64 0, i64 0)) #3, !dbg !197
  store i32 %194, i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKGROUPNUM_confac_2derivs, align 4, !dbg !197, !tbaa !118
  br label %195, !dbg !197

; <label>:195                                     ; preds = %193, %190
  %196 = load i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_psixy, align 4, !dbg !199, !tbaa !118
  %197 = icmp eq i32 %196, -1, !dbg !199
  br i1 %197, label %198, label %200, !dbg !122

; <label>:198                                     ; preds = %195
  %199 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str39, i64 0, i64 0)) #3, !dbg !199
  store i32 %199, i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_psixy, align 4, !dbg !199, !tbaa !118
  br label %200, !dbg !199

; <label>:200                                     ; preds = %198, %195
  %201 = load i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_psixz, align 4, !dbg !201, !tbaa !118
  %202 = icmp eq i32 %201, -1, !dbg !201
  br i1 %202, label %203, label %205, !dbg !122

; <label>:203                                     ; preds = %200
  %204 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str40, i64 0, i64 0)) #3, !dbg !201
  store i32 %204, i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_psixz, align 4, !dbg !201, !tbaa !118
  br label %205, !dbg !201

; <label>:205                                     ; preds = %203, %200
  %206 = load i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_psiy, align 4, !dbg !203, !tbaa !118
  %207 = icmp eq i32 %206, -1, !dbg !203
  br i1 %207, label %208, label %210, !dbg !122

; <label>:208                                     ; preds = %205
  %209 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([15 x i8]* @.str41, i64 0, i64 0)) #3, !dbg !203
  store i32 %209, i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_psiy, align 4, !dbg !203, !tbaa !118
  br label %210, !dbg !203

; <label>:210                                     ; preds = %208, %205
  %211 = load i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_psiyy, align 4, !dbg !205, !tbaa !118
  %212 = icmp eq i32 %211, -1, !dbg !205
  br i1 %212, label %213, label %215, !dbg !122

; <label>:213                                     ; preds = %210
  %214 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str42, i64 0, i64 0)) #3, !dbg !205
  store i32 %214, i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_psiyy, align 4, !dbg !205, !tbaa !118
  br label %215, !dbg !205

; <label>:215                                     ; preds = %213, %210
  %216 = load i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_psiyz, align 4, !dbg !207, !tbaa !118
  %217 = icmp eq i32 %216, -1, !dbg !207
  br i1 %217, label %218, label %220, !dbg !122

; <label>:218                                     ; preds = %215
  %219 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str43, i64 0, i64 0)) #3, !dbg !207
  store i32 %219, i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_psiyz, align 4, !dbg !207, !tbaa !118
  br label %220, !dbg !207

; <label>:220                                     ; preds = %218, %215
  %221 = load i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_psiz, align 4, !dbg !209, !tbaa !118
  %222 = icmp eq i32 %221, -1, !dbg !209
  br i1 %222, label %223, label %225, !dbg !122

; <label>:223                                     ; preds = %220
  %224 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([15 x i8]* @.str44, i64 0, i64 0)) #3, !dbg !209
  store i32 %224, i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_psiz, align 4, !dbg !209, !tbaa !118
  br label %225, !dbg !209

; <label>:225                                     ; preds = %223, %220
  %226 = load i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_psizz, align 4, !dbg !211, !tbaa !118
  %227 = icmp eq i32 %226, -1, !dbg !211
  br i1 %227, label %228, label %230, !dbg !122

; <label>:228                                     ; preds = %225
  %229 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str45, i64 0, i64 0)) #3, !dbg !211
  store i32 %229, i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_psizz, align 4, !dbg !211, !tbaa !118
  br label %230, !dbg !211

; <label>:230                                     ; preds = %228, %225
  %231 = load i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_r, align 4, !dbg !213, !tbaa !118
  %232 = icmp eq i32 %231, -1, !dbg !213
  br i1 %232, label %233, label %235, !dbg !122

; <label>:233                                     ; preds = %230
  %234 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([8 x i8]* @.str46, i64 0, i64 0)) #3, !dbg !213
  store i32 %234, i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_r, align 4, !dbg !213, !tbaa !118
  br label %235, !dbg !213

; <label>:235                                     ; preds = %233, %230
  %236 = load i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKGROUPNUM_coordinates, align 4, !dbg !215, !tbaa !118
  %237 = icmp eq i32 %236, -1, !dbg !215
  br i1 %237, label %238, label %240, !dbg !122

; <label>:238                                     ; preds = %235
  %239 = tail call i32 @CCTK_GroupIndex(i8* getelementptr inbounds ([18 x i8]* @.str47, i64 0, i64 0)) #3, !dbg !215
  store i32 %239, i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKGROUPNUM_coordinates, align 4, !dbg !215, !tbaa !118
  br label %240, !dbg !215

; <label>:240                                     ; preds = %238, %235
  %241 = load i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_shift_state, align 4, !dbg !217, !tbaa !118
  %242 = icmp eq i32 %241, -1, !dbg !217
  br i1 %242, label %243, label %245, !dbg !122

; <label>:243                                     ; preds = %240
  %244 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([22 x i8]* @.str48, i64 0, i64 0)) #3, !dbg !217
  store i32 %244, i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_shift_state, align 4, !dbg !217, !tbaa !118
  br label %245, !dbg !217

; <label>:245                                     ; preds = %243, %240
  %246 = load i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_x, align 4, !dbg !219, !tbaa !118
  %247 = icmp eq i32 %246, -1, !dbg !219
  br i1 %247, label %248, label %250, !dbg !122

; <label>:248                                     ; preds = %245
  %249 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([8 x i8]* @.str49, i64 0, i64 0)) #3, !dbg !219
  store i32 %249, i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_x, align 4, !dbg !219, !tbaa !118
  br label %250, !dbg !219

; <label>:250                                     ; preds = %248, %245
  %251 = load i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_y, align 4, !dbg !221, !tbaa !118
  %252 = icmp eq i32 %251, -1, !dbg !221
  br i1 %252, label %253, label %255, !dbg !122

; <label>:253                                     ; preds = %250
  %254 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([8 x i8]* @.str50, i64 0, i64 0)) #3, !dbg !221
  store i32 %254, i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_y, align 4, !dbg !221, !tbaa !118
  br label %255, !dbg !221

; <label>:255                                     ; preds = %253, %250
  %256 = load i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_z, align 4, !dbg !223, !tbaa !118
  %257 = icmp eq i32 %256, -1, !dbg !223
  br i1 %257, label %258, label %260, !dbg !122

; <label>:258                                     ; preds = %255
  %259 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([8 x i8]* @.str51, i64 0, i64 0)) #3, !dbg !223
  store i32 %259, i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_z, align 4, !dbg !223, !tbaa !118
  br label %260, !dbg !223

; <label>:260                                     ; preds = %258, %255
  %261 = bitcast i8* %fpointer to void (i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, double*, double*, double*, double*, i32*, i32*, i32*, i32*, %struct.cGH*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, double*, double*, double*, double*, double*, double*, double*, i32*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, i32*, double*, double*, double*)*, !dbg !225
  tail call void @llvm.dbg.value(metadata void (i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, double*, double*, double*, double*, i32*, i32*, i32*, i32*, %struct.cGH*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, double*, double*, double*, double*, double*, double*, double*, i32*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, i32*, double*, double*, double*)* %261, i64 0, metadata !55, metadata !113), !dbg !226
  %262 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 0, !dbg !227
  %263 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 2, !dbg !227
  %264 = load i32** %263, align 8, !dbg !227, !tbaa !228
  %265 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 3, !dbg !227
  %266 = load i32** %265, align 8, !dbg !227, !tbaa !232
  %267 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 4, !dbg !227
  %268 = load i32** %267, align 8, !dbg !227, !tbaa !233
  %269 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 5, !dbg !227
  %270 = load i32** %269, align 8, !dbg !227, !tbaa !234
  %271 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 6, !dbg !227
  %272 = load i32** %271, align 8, !dbg !227, !tbaa !235
  %273 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 8, !dbg !227
  %274 = load i32** %273, align 8, !dbg !227, !tbaa !236
  %275 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 7, !dbg !227
  %276 = load i32** %275, align 8, !dbg !227, !tbaa !237
  %277 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 12, !dbg !227
  %278 = load i32** %277, align 8, !dbg !227, !tbaa !238
  %279 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 9, !dbg !227
  %280 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 16, !dbg !227
  %281 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 10, !dbg !227
  %282 = load double** %281, align 8, !dbg !227, !tbaa !239
  %283 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 11, !dbg !227
  %284 = load double** %283, align 8, !dbg !227, !tbaa !240
  %285 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 13, !dbg !227
  %286 = load i32** %285, align 8, !dbg !227, !tbaa !241
  %287 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 14, !dbg !227
  %288 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 15, !dbg !227
  %289 = load i32** %288, align 8, !dbg !227, !tbaa !242
  %290 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 1, !dbg !227
  %291 = load i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKGROUPNUM_confac, align 4, !dbg !227, !tbaa !118
  %292 = icmp slt i32 %291, 0, !dbg !227
  br i1 %292, label %.thread4, label %293, !dbg !227

; <label>:293                                     ; preds = %260
  %294 = tail call i32 @CCTK_QueryGroupStorage(%struct.cGH* %GH, i8* getelementptr inbounds ([17 x i8]* @.str34, i64 0, i64 0)) #3, !dbg !227
  %295 = icmp eq i32 %294, 0, !dbg !227
  br i1 %295, label %298, label %296, !dbg !227

; <label>:296                                     ; preds = %293
  %297 = tail call i32* @CCTK_ArrayGroupSize(%struct.cGH* %GH, i32 0, i8* getelementptr inbounds ([17 x i8]* @.str34, i64 0, i64 0)) #3, !dbg !227
  br label %298, !dbg !227

; <label>:298                                     ; preds = %293, %296
  %.ph = phi i32* [ @_cctk_one, %293 ], [ %297, %296 ]
  %.pr = load i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKGROUPNUM_confac, align 4, !dbg !227, !tbaa !118
  %299 = icmp slt i32 %.pr, 0, !dbg !227
  br i1 %299, label %.thread4, label %300, !dbg !227

; <label>:300                                     ; preds = %298
  %301 = tail call i32 @CCTK_QueryGroupStorage(%struct.cGH* %GH, i8* getelementptr inbounds ([17 x i8]* @.str34, i64 0, i64 0)) #3, !dbg !227
  %302 = icmp eq i32 %301, 0, !dbg !227
  br i1 %302, label %.thread, label %303, !dbg !227

; <label>:303                                     ; preds = %300
  %304 = tail call i32* @CCTK_ArrayGroupSize(%struct.cGH* %GH, i32 1, i8* getelementptr inbounds ([17 x i8]* @.str34, i64 0, i64 0)) #3, !dbg !227
  br label %.thread, !dbg !227

.thread:                                          ; preds = %300, %303
  %.ph2.ph = phi i32* [ %304, %303 ], [ @_cctk_one, %300 ]
  %.pr3.pr = load i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKGROUPNUM_confac, align 4, !dbg !227, !tbaa !118
  %305 = icmp slt i32 %.pr3.pr, 0, !dbg !227
  br i1 %305, label %.thread4, label %306, !dbg !227

; <label>:306                                     ; preds = %.thread
  %307 = tail call i32 @CCTK_QueryGroupStorage(%struct.cGH* %GH, i8* getelementptr inbounds ([17 x i8]* @.str34, i64 0, i64 0)) #3, !dbg !227
  %308 = icmp eq i32 %307, 0, !dbg !227
  br i1 %308, label %.thread4, label %309, !dbg !227

; <label>:309                                     ; preds = %306
  %310 = tail call i32* @CCTK_ArrayGroupSize(%struct.cGH* %GH, i32 2, i8* getelementptr inbounds ([17 x i8]* @.str34, i64 0, i64 0)) #3, !dbg !227
  br label %.thread4, !dbg !227

.thread4:                                         ; preds = %260, %298, %306, %309, %.thread
  %311 = phi i32* [ %.ph2.ph, %.thread ], [ %.ph2.ph, %309 ], [ %.ph2.ph, %306 ], [ @_cctk_one, %298 ], [ @_cctk_one, %260 ]
  %312 = phi i32* [ %.ph, %.thread ], [ %.ph, %309 ], [ %.ph, %306 ], [ %.ph, %298 ], [ @_cctk_one, %260 ]
  %313 = phi i32* [ @_cctk_one, %.thread ], [ %310, %309 ], [ @_cctk_one, %306 ], [ @_cctk_one, %298 ], [ @_cctk_one, %260 ], !dbg !227
  %314 = load i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKGROUPNUM_confac_1derivs, align 4, !dbg !227, !tbaa !118
  %315 = icmp slt i32 %314, 0, !dbg !227
  br i1 %315, label %.thread11, label %316, !dbg !227

; <label>:316                                     ; preds = %.thread4
  %317 = tail call i32 @CCTK_QueryGroupStorage(%struct.cGH* %GH, i8* getelementptr inbounds ([25 x i8]* @.str36, i64 0, i64 0)) #3, !dbg !227
  %318 = icmp eq i32 %317, 0, !dbg !227
  br i1 %318, label %321, label %319, !dbg !227

; <label>:319                                     ; preds = %316
  %320 = tail call i32* @CCTK_ArrayGroupSize(%struct.cGH* %GH, i32 0, i8* getelementptr inbounds ([25 x i8]* @.str36, i64 0, i64 0)) #3, !dbg !227
  br label %321, !dbg !227

; <label>:321                                     ; preds = %316, %319
  %.ph5 = phi i32* [ @_cctk_one, %316 ], [ %320, %319 ]
  %.pr6 = load i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKGROUPNUM_confac_1derivs, align 4, !dbg !227, !tbaa !118
  %322 = icmp slt i32 %.pr6, 0, !dbg !227
  br i1 %322, label %.thread11, label %323, !dbg !227

; <label>:323                                     ; preds = %321
  %324 = tail call i32 @CCTK_QueryGroupStorage(%struct.cGH* %GH, i8* getelementptr inbounds ([25 x i8]* @.str36, i64 0, i64 0)) #3, !dbg !227
  %325 = icmp eq i32 %324, 0, !dbg !227
  br i1 %325, label %.thread7, label %326, !dbg !227

; <label>:326                                     ; preds = %323
  %327 = tail call i32* @CCTK_ArrayGroupSize(%struct.cGH* %GH, i32 1, i8* getelementptr inbounds ([25 x i8]* @.str36, i64 0, i64 0)) #3, !dbg !227
  br label %.thread7, !dbg !227

.thread7:                                         ; preds = %323, %326
  %.ph9.ph = phi i32* [ %327, %326 ], [ @_cctk_one, %323 ]
  %.pr10.pr = load i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKGROUPNUM_confac_1derivs, align 4, !dbg !227, !tbaa !118
  %328 = icmp slt i32 %.pr10.pr, 0, !dbg !227
  br i1 %328, label %.thread11, label %329, !dbg !227

; <label>:329                                     ; preds = %.thread7
  %330 = tail call i32 @CCTK_QueryGroupStorage(%struct.cGH* %GH, i8* getelementptr inbounds ([25 x i8]* @.str36, i64 0, i64 0)) #3, !dbg !227
  %331 = icmp eq i32 %330, 0, !dbg !227
  br i1 %331, label %.thread11, label %332, !dbg !227

; <label>:332                                     ; preds = %329
  %333 = tail call i32* @CCTK_ArrayGroupSize(%struct.cGH* %GH, i32 2, i8* getelementptr inbounds ([25 x i8]* @.str36, i64 0, i64 0)) #3, !dbg !227
  br label %.thread11, !dbg !227

.thread11:                                        ; preds = %.thread4, %321, %329, %332, %.thread7
  %334 = phi i32* [ %.ph9.ph, %.thread7 ], [ %.ph9.ph, %332 ], [ %.ph9.ph, %329 ], [ @_cctk_one, %321 ], [ @_cctk_one, %.thread4 ]
  %335 = phi i32* [ %.ph5, %.thread7 ], [ %.ph5, %332 ], [ %.ph5, %329 ], [ %.ph5, %321 ], [ @_cctk_one, %.thread4 ]
  %336 = phi i32* [ @_cctk_one, %.thread7 ], [ %333, %332 ], [ @_cctk_one, %329 ], [ @_cctk_one, %321 ], [ @_cctk_one, %.thread4 ], !dbg !227
  %337 = load i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKGROUPNUM_confac_2derivs, align 4, !dbg !227, !tbaa !118
  %338 = icmp slt i32 %337, 0, !dbg !227
  br i1 %338, label %.thread18, label %339, !dbg !227

; <label>:339                                     ; preds = %.thread11
  %340 = tail call i32 @CCTK_QueryGroupStorage(%struct.cGH* %GH, i8* getelementptr inbounds ([25 x i8]* @.str38, i64 0, i64 0)) #3, !dbg !227
  %341 = icmp eq i32 %340, 0, !dbg !227
  br i1 %341, label %344, label %342, !dbg !227

; <label>:342                                     ; preds = %339
  %343 = tail call i32* @CCTK_ArrayGroupSize(%struct.cGH* %GH, i32 0, i8* getelementptr inbounds ([25 x i8]* @.str38, i64 0, i64 0)) #3, !dbg !227
  br label %344, !dbg !227

; <label>:344                                     ; preds = %339, %342
  %.ph12 = phi i32* [ @_cctk_one, %339 ], [ %343, %342 ]
  %.pr13 = load i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKGROUPNUM_confac_2derivs, align 4, !dbg !227, !tbaa !118
  %345 = icmp slt i32 %.pr13, 0, !dbg !227
  br i1 %345, label %.thread18, label %346, !dbg !227

; <label>:346                                     ; preds = %344
  %347 = tail call i32 @CCTK_QueryGroupStorage(%struct.cGH* %GH, i8* getelementptr inbounds ([25 x i8]* @.str38, i64 0, i64 0)) #3, !dbg !227
  %348 = icmp eq i32 %347, 0, !dbg !227
  br i1 %348, label %.thread14, label %349, !dbg !227

; <label>:349                                     ; preds = %346
  %350 = tail call i32* @CCTK_ArrayGroupSize(%struct.cGH* %GH, i32 1, i8* getelementptr inbounds ([25 x i8]* @.str38, i64 0, i64 0)) #3, !dbg !227
  br label %.thread14, !dbg !227

.thread14:                                        ; preds = %346, %349
  %.ph16.ph = phi i32* [ %350, %349 ], [ @_cctk_one, %346 ]
  %.pr17.pr = load i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKGROUPNUM_confac_2derivs, align 4, !dbg !227, !tbaa !118
  %351 = icmp slt i32 %.pr17.pr, 0, !dbg !227
  br i1 %351, label %.thread18, label %352, !dbg !227

; <label>:352                                     ; preds = %.thread14
  %353 = tail call i32 @CCTK_QueryGroupStorage(%struct.cGH* %GH, i8* getelementptr inbounds ([25 x i8]* @.str38, i64 0, i64 0)) #3, !dbg !227
  %354 = icmp eq i32 %353, 0, !dbg !227
  br i1 %354, label %.thread18, label %355, !dbg !227

; <label>:355                                     ; preds = %352
  %356 = tail call i32* @CCTK_ArrayGroupSize(%struct.cGH* %GH, i32 2, i8* getelementptr inbounds ([25 x i8]* @.str38, i64 0, i64 0)) #3, !dbg !227
  br label %.thread18, !dbg !227

.thread18:                                        ; preds = %.thread11, %344, %352, %355, %.thread14
  %357 = phi i32* [ %.ph16.ph, %.thread14 ], [ %.ph16.ph, %355 ], [ %.ph16.ph, %352 ], [ @_cctk_one, %344 ], [ @_cctk_one, %.thread11 ]
  %358 = phi i32* [ %.ph12, %.thread14 ], [ %.ph12, %355 ], [ %.ph12, %352 ], [ %.ph12, %344 ], [ @_cctk_one, %.thread11 ]
  %359 = phi i32* [ @_cctk_one, %.thread14 ], [ %356, %355 ], [ @_cctk_one, %352 ], [ @_cctk_one, %344 ], [ @_cctk_one, %.thread11 ], !dbg !227
  %360 = load i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKGROUPNUM_coordinates, align 4, !dbg !227, !tbaa !118
  %361 = icmp slt i32 %360, 0, !dbg !227
  br i1 %361, label %.thread25, label %362, !dbg !227

; <label>:362                                     ; preds = %.thread18
  %363 = tail call i32 @CCTK_QueryGroupStorage(%struct.cGH* %GH, i8* getelementptr inbounds ([18 x i8]* @.str47, i64 0, i64 0)) #3, !dbg !227
  %364 = icmp eq i32 %363, 0, !dbg !227
  br i1 %364, label %367, label %365, !dbg !227

; <label>:365                                     ; preds = %362
  %366 = tail call i32* @CCTK_ArrayGroupSize(%struct.cGH* %GH, i32 0, i8* getelementptr inbounds ([18 x i8]* @.str47, i64 0, i64 0)) #3, !dbg !227
  br label %367, !dbg !227

; <label>:367                                     ; preds = %362, %365
  %.ph19 = phi i32* [ @_cctk_one, %362 ], [ %366, %365 ]
  %.pr20 = load i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKGROUPNUM_coordinates, align 4, !dbg !227, !tbaa !118
  %368 = icmp slt i32 %.pr20, 0, !dbg !227
  br i1 %368, label %.thread25, label %369, !dbg !227

; <label>:369                                     ; preds = %367
  %370 = tail call i32 @CCTK_QueryGroupStorage(%struct.cGH* %GH, i8* getelementptr inbounds ([18 x i8]* @.str47, i64 0, i64 0)) #3, !dbg !227
  %371 = icmp eq i32 %370, 0, !dbg !227
  br i1 %371, label %.thread21, label %372, !dbg !227

; <label>:372                                     ; preds = %369
  %373 = tail call i32* @CCTK_ArrayGroupSize(%struct.cGH* %GH, i32 1, i8* getelementptr inbounds ([18 x i8]* @.str47, i64 0, i64 0)) #3, !dbg !227
  br label %.thread21, !dbg !227

.thread21:                                        ; preds = %369, %372
  %.ph23.ph = phi i32* [ %373, %372 ], [ @_cctk_one, %369 ]
  %.pr24.pr = load i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKGROUPNUM_coordinates, align 4, !dbg !227, !tbaa !118
  %374 = icmp slt i32 %.pr24.pr, 0, !dbg !227
  br i1 %374, label %.thread25, label %375, !dbg !227

; <label>:375                                     ; preds = %.thread21
  %376 = tail call i32 @CCTK_QueryGroupStorage(%struct.cGH* %GH, i8* getelementptr inbounds ([18 x i8]* @.str47, i64 0, i64 0)) #3, !dbg !227
  %377 = icmp eq i32 %376, 0, !dbg !227
  br i1 %377, label %.thread25, label %378, !dbg !227

; <label>:378                                     ; preds = %375
  %379 = tail call i32* @CCTK_ArrayGroupSize(%struct.cGH* %GH, i32 2, i8* getelementptr inbounds ([18 x i8]* @.str47, i64 0, i64 0)) #3, !dbg !227
  br label %.thread25, !dbg !227

.thread25:                                        ; preds = %.thread18, %367, %375, %378, %.thread21
  %380 = phi i32* [ %.ph23.ph, %.thread21 ], [ %.ph23.ph, %378 ], [ %.ph23.ph, %375 ], [ @_cctk_one, %367 ], [ @_cctk_one, %.thread18 ]
  %381 = phi i32* [ %.ph19, %.thread21 ], [ %.ph19, %378 ], [ %.ph19, %375 ], [ %.ph19, %367 ], [ @_cctk_one, %.thread18 ]
  %382 = phi i32* [ @_cctk_one, %.thread21 ], [ %379, %378 ], [ @_cctk_one, %375 ], [ @_cctk_one, %367 ], [ @_cctk_one, %.thread18 ], !dbg !227
  %383 = load i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKGROUPNUM_curv, align 4, !dbg !227, !tbaa !118
  %384 = icmp slt i32 %383, 0, !dbg !227
  br i1 %384, label %.thread32, label %385, !dbg !227

; <label>:385                                     ; preds = %.thread25
  %386 = tail call i32 @CCTK_QueryGroupStorage(%struct.cGH* %GH, i8* getelementptr inbounds ([15 x i8]* @.str27, i64 0, i64 0)) #3, !dbg !227
  %387 = icmp eq i32 %386, 0, !dbg !227
  br i1 %387, label %390, label %388, !dbg !227

; <label>:388                                     ; preds = %385
  %389 = tail call i32* @CCTK_ArrayGroupSize(%struct.cGH* %GH, i32 0, i8* getelementptr inbounds ([15 x i8]* @.str27, i64 0, i64 0)) #3, !dbg !227
  br label %390, !dbg !227

; <label>:390                                     ; preds = %385, %388
  %.ph26 = phi i32* [ @_cctk_one, %385 ], [ %389, %388 ]
  %.pr27 = load i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKGROUPNUM_curv, align 4, !dbg !227, !tbaa !118
  %391 = icmp slt i32 %.pr27, 0, !dbg !227
  br i1 %391, label %.thread32, label %392, !dbg !227

; <label>:392                                     ; preds = %390
  %393 = tail call i32 @CCTK_QueryGroupStorage(%struct.cGH* %GH, i8* getelementptr inbounds ([15 x i8]* @.str27, i64 0, i64 0)) #3, !dbg !227
  %394 = icmp eq i32 %393, 0, !dbg !227
  br i1 %394, label %.thread28, label %395, !dbg !227

; <label>:395                                     ; preds = %392
  %396 = tail call i32* @CCTK_ArrayGroupSize(%struct.cGH* %GH, i32 1, i8* getelementptr inbounds ([15 x i8]* @.str27, i64 0, i64 0)) #3, !dbg !227
  br label %.thread28, !dbg !227

.thread28:                                        ; preds = %392, %395
  %.ph30.ph = phi i32* [ %396, %395 ], [ @_cctk_one, %392 ]
  %.pr31.pr = load i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKGROUPNUM_curv, align 4, !dbg !227, !tbaa !118
  %397 = icmp slt i32 %.pr31.pr, 0, !dbg !227
  br i1 %397, label %.thread32, label %398, !dbg !227

; <label>:398                                     ; preds = %.thread28
  %399 = tail call i32 @CCTK_QueryGroupStorage(%struct.cGH* %GH, i8* getelementptr inbounds ([15 x i8]* @.str27, i64 0, i64 0)) #3, !dbg !227
  %400 = icmp eq i32 %399, 0, !dbg !227
  br i1 %400, label %.thread32, label %401, !dbg !227

; <label>:401                                     ; preds = %398
  %402 = tail call i32* @CCTK_ArrayGroupSize(%struct.cGH* %GH, i32 2, i8* getelementptr inbounds ([15 x i8]* @.str27, i64 0, i64 0)) #3, !dbg !227
  br label %.thread32, !dbg !227

.thread32:                                        ; preds = %.thread25, %390, %398, %401, %.thread28
  %403 = phi i32* [ %.ph30.ph, %.thread28 ], [ %.ph30.ph, %401 ], [ %.ph30.ph, %398 ], [ @_cctk_one, %390 ], [ @_cctk_one, %.thread25 ]
  %404 = phi i32* [ %.ph26, %.thread28 ], [ %.ph26, %401 ], [ %.ph26, %398 ], [ %.ph26, %390 ], [ @_cctk_one, %.thread25 ]
  %405 = phi i32* [ @_cctk_one, %.thread28 ], [ %402, %401 ], [ @_cctk_one, %398 ], [ @_cctk_one, %390 ], [ @_cctk_one, %.thread25 ], !dbg !227
  %406 = load i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKGROUPNUM_lapse, align 4, !dbg !227, !tbaa !118
  %407 = icmp slt i32 %406, 0, !dbg !227
  br i1 %407, label %.thread39, label %408, !dbg !227

; <label>:408                                     ; preds = %.thread32
  %409 = tail call i32 @CCTK_QueryGroupStorage(%struct.cGH* %GH, i8* getelementptr inbounds ([16 x i8]* @.str3, i64 0, i64 0)) #3, !dbg !227
  %410 = icmp eq i32 %409, 0, !dbg !227
  br i1 %410, label %413, label %411, !dbg !227

; <label>:411                                     ; preds = %408
  %412 = tail call i32* @CCTK_ArrayGroupSize(%struct.cGH* %GH, i32 0, i8* getelementptr inbounds ([16 x i8]* @.str3, i64 0, i64 0)) #3, !dbg !227
  br label %413, !dbg !227

; <label>:413                                     ; preds = %408, %411
  %.ph33 = phi i32* [ @_cctk_one, %408 ], [ %412, %411 ]
  %.pr34 = load i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKGROUPNUM_lapse, align 4, !dbg !227, !tbaa !118
  %414 = icmp slt i32 %.pr34, 0, !dbg !227
  br i1 %414, label %.thread39, label %415, !dbg !227

; <label>:415                                     ; preds = %413
  %416 = tail call i32 @CCTK_QueryGroupStorage(%struct.cGH* %GH, i8* getelementptr inbounds ([16 x i8]* @.str3, i64 0, i64 0)) #3, !dbg !227
  %417 = icmp eq i32 %416, 0, !dbg !227
  br i1 %417, label %.thread35, label %418, !dbg !227

; <label>:418                                     ; preds = %415
  %419 = tail call i32* @CCTK_ArrayGroupSize(%struct.cGH* %GH, i32 1, i8* getelementptr inbounds ([16 x i8]* @.str3, i64 0, i64 0)) #3, !dbg !227
  br label %.thread35, !dbg !227

.thread35:                                        ; preds = %415, %418
  %.ph37.ph = phi i32* [ %419, %418 ], [ @_cctk_one, %415 ]
  %.pr38.pr = load i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKGROUPNUM_lapse, align 4, !dbg !227, !tbaa !118
  %420 = icmp slt i32 %.pr38.pr, 0, !dbg !227
  br i1 %420, label %.thread39, label %421, !dbg !227

; <label>:421                                     ; preds = %.thread35
  %422 = tail call i32 @CCTK_QueryGroupStorage(%struct.cGH* %GH, i8* getelementptr inbounds ([16 x i8]* @.str3, i64 0, i64 0)) #3, !dbg !227
  %423 = icmp eq i32 %422, 0, !dbg !227
  br i1 %423, label %.thread39, label %424, !dbg !227

; <label>:424                                     ; preds = %421
  %425 = tail call i32* @CCTK_ArrayGroupSize(%struct.cGH* %GH, i32 2, i8* getelementptr inbounds ([16 x i8]* @.str3, i64 0, i64 0)) #3, !dbg !227
  br label %.thread39, !dbg !227

.thread39:                                        ; preds = %.thread32, %413, %421, %424, %.thread35
  %426 = phi i32* [ %.ph37.ph, %.thread35 ], [ %.ph37.ph, %424 ], [ %.ph37.ph, %421 ], [ @_cctk_one, %413 ], [ @_cctk_one, %.thread32 ]
  %427 = phi i32* [ %.ph33, %.thread35 ], [ %.ph33, %424 ], [ %.ph33, %421 ], [ %.ph33, %413 ], [ @_cctk_one, %.thread32 ]
  %428 = phi i32* [ @_cctk_one, %.thread35 ], [ %425, %424 ], [ @_cctk_one, %421 ], [ @_cctk_one, %413 ], [ @_cctk_one, %.thread32 ], !dbg !227
  %429 = load i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKGROUPNUM_mask, align 4, !dbg !227, !tbaa !118
  %430 = icmp slt i32 %429, 0, !dbg !227
  br i1 %430, label %.thread46, label %431, !dbg !227

; <label>:431                                     ; preds = %.thread39
  %432 = tail call i32 @CCTK_QueryGroupStorage(%struct.cGH* %GH, i8* getelementptr inbounds ([15 x i8]* @.str18, i64 0, i64 0)) #3, !dbg !227
  %433 = icmp eq i32 %432, 0, !dbg !227
  br i1 %433, label %436, label %434, !dbg !227

; <label>:434                                     ; preds = %431
  %435 = tail call i32* @CCTK_ArrayGroupSize(%struct.cGH* %GH, i32 0, i8* getelementptr inbounds ([15 x i8]* @.str18, i64 0, i64 0)) #3, !dbg !227
  br label %436, !dbg !227

; <label>:436                                     ; preds = %431, %434
  %.ph40 = phi i32* [ @_cctk_one, %431 ], [ %435, %434 ]
  %.pr41 = load i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKGROUPNUM_mask, align 4, !dbg !227, !tbaa !118
  %437 = icmp slt i32 %.pr41, 0, !dbg !227
  br i1 %437, label %.thread46, label %438, !dbg !227

; <label>:438                                     ; preds = %436
  %439 = tail call i32 @CCTK_QueryGroupStorage(%struct.cGH* %GH, i8* getelementptr inbounds ([15 x i8]* @.str18, i64 0, i64 0)) #3, !dbg !227
  %440 = icmp eq i32 %439, 0, !dbg !227
  br i1 %440, label %.thread42, label %441, !dbg !227

; <label>:441                                     ; preds = %438
  %442 = tail call i32* @CCTK_ArrayGroupSize(%struct.cGH* %GH, i32 1, i8* getelementptr inbounds ([15 x i8]* @.str18, i64 0, i64 0)) #3, !dbg !227
  br label %.thread42, !dbg !227

.thread42:                                        ; preds = %438, %441
  %.ph44.ph = phi i32* [ %442, %441 ], [ @_cctk_one, %438 ]
  %.pr45.pr = load i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKGROUPNUM_mask, align 4, !dbg !227, !tbaa !118
  %443 = icmp slt i32 %.pr45.pr, 0, !dbg !227
  br i1 %443, label %.thread46, label %444, !dbg !227

; <label>:444                                     ; preds = %.thread42
  %445 = tail call i32 @CCTK_QueryGroupStorage(%struct.cGH* %GH, i8* getelementptr inbounds ([15 x i8]* @.str18, i64 0, i64 0)) #3, !dbg !227
  %446 = icmp eq i32 %445, 0, !dbg !227
  br i1 %446, label %.thread46, label %447, !dbg !227

; <label>:447                                     ; preds = %444
  %448 = tail call i32* @CCTK_ArrayGroupSize(%struct.cGH* %GH, i32 2, i8* getelementptr inbounds ([15 x i8]* @.str18, i64 0, i64 0)) #3, !dbg !227
  br label %.thread46, !dbg !227

.thread46:                                        ; preds = %.thread39, %436, %444, %447, %.thread42
  %449 = phi i32* [ %.ph44.ph, %.thread42 ], [ %.ph44.ph, %447 ], [ %.ph44.ph, %444 ], [ @_cctk_one, %436 ], [ @_cctk_one, %.thread39 ]
  %450 = phi i32* [ %.ph40, %.thread42 ], [ %.ph40, %447 ], [ %.ph40, %444 ], [ %.ph40, %436 ], [ @_cctk_one, %.thread39 ]
  %451 = phi i32* [ @_cctk_one, %.thread42 ], [ %448, %447 ], [ @_cctk_one, %444 ], [ @_cctk_one, %436 ], [ @_cctk_one, %.thread39 ], !dbg !227
  %452 = load i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKGROUPNUM_metric, align 4, !dbg !227, !tbaa !118
  %453 = icmp slt i32 %452, 0, !dbg !227
  br i1 %453, label %.thread53, label %454, !dbg !227

; <label>:454                                     ; preds = %.thread46
  %455 = tail call i32 @CCTK_QueryGroupStorage(%struct.cGH* %GH, i8* getelementptr inbounds ([17 x i8]* @.str20, i64 0, i64 0)) #3, !dbg !227
  %456 = icmp eq i32 %455, 0, !dbg !227
  br i1 %456, label %459, label %457, !dbg !227

; <label>:457                                     ; preds = %454
  %458 = tail call i32* @CCTK_ArrayGroupSize(%struct.cGH* %GH, i32 0, i8* getelementptr inbounds ([17 x i8]* @.str20, i64 0, i64 0)) #3, !dbg !227
  br label %459, !dbg !227

; <label>:459                                     ; preds = %454, %457
  %.ph47 = phi i32* [ @_cctk_one, %454 ], [ %458, %457 ]
  %.pr48 = load i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKGROUPNUM_metric, align 4, !dbg !227, !tbaa !118
  %460 = icmp slt i32 %.pr48, 0, !dbg !227
  br i1 %460, label %.thread53, label %461, !dbg !227

; <label>:461                                     ; preds = %459
  %462 = tail call i32 @CCTK_QueryGroupStorage(%struct.cGH* %GH, i8* getelementptr inbounds ([17 x i8]* @.str20, i64 0, i64 0)) #3, !dbg !227
  %463 = icmp eq i32 %462, 0, !dbg !227
  br i1 %463, label %.thread49, label %464, !dbg !227

; <label>:464                                     ; preds = %461
  %465 = tail call i32* @CCTK_ArrayGroupSize(%struct.cGH* %GH, i32 1, i8* getelementptr inbounds ([17 x i8]* @.str20, i64 0, i64 0)) #3, !dbg !227
  br label %.thread49, !dbg !227

.thread49:                                        ; preds = %461, %464
  %.ph51.ph = phi i32* [ %465, %464 ], [ @_cctk_one, %461 ]
  %.pr52.pr = load i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKGROUPNUM_metric, align 4, !dbg !227, !tbaa !118
  %466 = icmp slt i32 %.pr52.pr, 0, !dbg !227
  br i1 %466, label %.thread53, label %467, !dbg !227

; <label>:467                                     ; preds = %.thread49
  %468 = tail call i32 @CCTK_QueryGroupStorage(%struct.cGH* %GH, i8* getelementptr inbounds ([17 x i8]* @.str20, i64 0, i64 0)) #3, !dbg !227
  %469 = icmp eq i32 %468, 0, !dbg !227
  br i1 %469, label %.thread53, label %470, !dbg !227

; <label>:470                                     ; preds = %467
  %471 = tail call i32* @CCTK_ArrayGroupSize(%struct.cGH* %GH, i32 2, i8* getelementptr inbounds ([17 x i8]* @.str20, i64 0, i64 0)) #3, !dbg !227
  br label %.thread53, !dbg !227

.thread53:                                        ; preds = %.thread46, %459, %467, %470, %.thread49
  %472 = phi i32* [ %.ph51.ph, %.thread49 ], [ %.ph51.ph, %470 ], [ %.ph51.ph, %467 ], [ @_cctk_one, %459 ], [ @_cctk_one, %.thread46 ]
  %473 = phi i32* [ %.ph47, %.thread49 ], [ %.ph47, %470 ], [ %.ph47, %467 ], [ %.ph47, %459 ], [ @_cctk_one, %.thread46 ]
  %474 = phi i32* [ @_cctk_one, %.thread49 ], [ %471, %470 ], [ @_cctk_one, %467 ], [ @_cctk_one, %459 ], [ @_cctk_one, %.thread46 ], !dbg !227
  %475 = load i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKGROUPNUM_shift, align 4, !dbg !227, !tbaa !118
  %476 = icmp slt i32 %475, 0, !dbg !227
  br i1 %476, label %.thread60, label %477, !dbg !227

; <label>:477                                     ; preds = %.thread53
  %478 = tail call i32 @CCTK_QueryGroupStorage(%struct.cGH* %GH, i8* getelementptr inbounds ([16 x i8]* @.str5, i64 0, i64 0)) #3, !dbg !227
  %479 = icmp eq i32 %478, 0, !dbg !227
  br i1 %479, label %482, label %480, !dbg !227

; <label>:480                                     ; preds = %477
  %481 = tail call i32* @CCTK_ArrayGroupSize(%struct.cGH* %GH, i32 0, i8* getelementptr inbounds ([16 x i8]* @.str5, i64 0, i64 0)) #3, !dbg !227
  br label %482, !dbg !227

; <label>:482                                     ; preds = %477, %480
  %.ph54 = phi i32* [ @_cctk_one, %477 ], [ %481, %480 ]
  %.pr55 = load i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKGROUPNUM_shift, align 4, !dbg !227, !tbaa !118
  %483 = icmp slt i32 %.pr55, 0, !dbg !227
  br i1 %483, label %.thread60, label %484, !dbg !227

; <label>:484                                     ; preds = %482
  %485 = tail call i32 @CCTK_QueryGroupStorage(%struct.cGH* %GH, i8* getelementptr inbounds ([16 x i8]* @.str5, i64 0, i64 0)) #3, !dbg !227
  %486 = icmp eq i32 %485, 0, !dbg !227
  br i1 %486, label %.thread56, label %487, !dbg !227

; <label>:487                                     ; preds = %484
  %488 = tail call i32* @CCTK_ArrayGroupSize(%struct.cGH* %GH, i32 1, i8* getelementptr inbounds ([16 x i8]* @.str5, i64 0, i64 0)) #3, !dbg !227
  br label %.thread56, !dbg !227

.thread56:                                        ; preds = %484, %487
  %.ph58.ph = phi i32* [ %488, %487 ], [ @_cctk_one, %484 ]
  %.pr59.pr = load i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKGROUPNUM_shift, align 4, !dbg !227, !tbaa !118
  %489 = icmp slt i32 %.pr59.pr, 0, !dbg !227
  br i1 %489, label %.thread60, label %490, !dbg !227

; <label>:490                                     ; preds = %.thread56
  %491 = tail call i32 @CCTK_QueryGroupStorage(%struct.cGH* %GH, i8* getelementptr inbounds ([16 x i8]* @.str5, i64 0, i64 0)) #3, !dbg !227
  %492 = icmp eq i32 %491, 0, !dbg !227
  br i1 %492, label %.thread60, label %493, !dbg !227

; <label>:493                                     ; preds = %490
  %494 = tail call i32* @CCTK_ArrayGroupSize(%struct.cGH* %GH, i32 2, i8* getelementptr inbounds ([16 x i8]* @.str5, i64 0, i64 0)) #3, !dbg !227
  br label %.thread60, !dbg !227

.thread60:                                        ; preds = %.thread53, %482, %490, %493, %.thread56
  %495 = phi i32* [ %.ph58.ph, %.thread56 ], [ %.ph58.ph, %493 ], [ %.ph58.ph, %490 ], [ @_cctk_one, %482 ], [ @_cctk_one, %.thread53 ]
  %496 = phi i32* [ %.ph54, %.thread56 ], [ %.ph54, %493 ], [ %.ph54, %490 ], [ %.ph54, %482 ], [ @_cctk_one, %.thread53 ]
  %497 = phi i32* [ @_cctk_one, %.thread56 ], [ %494, %493 ], [ @_cctk_one, %490 ], [ @_cctk_one, %482 ], [ @_cctk_one, %.thread53 ], !dbg !227
  %498 = load i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_active_slicing_handle, align 4, !dbg !227, !tbaa !118
  %499 = icmp slt i32 %498, 0, !dbg !227
  br i1 %499, label %507, label %500, !dbg !227

; <label>:500                                     ; preds = %.thread60
  %501 = sext i32 %498 to i64, !dbg !227
  %502 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17, !dbg !227
  %503 = load i8**** %502, align 8, !dbg !227, !tbaa !243
  %504 = getelementptr inbounds i8*** %503, i64 %501, !dbg !227
  %505 = load i8*** %504, align 8, !dbg !227, !tbaa !244
  %506 = load i8** %505, align 8, !dbg !227, !tbaa !244
  br label %507, !dbg !227

; <label>:507                                     ; preds = %.thread60, %500
  %508 = phi i8* [ %506, %500 ], [ null, %.thread60 ], !dbg !227
  %509 = bitcast i8* %508 to i32*, !dbg !227
  %510 = load i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_alp, align 4, !dbg !227, !tbaa !118
  %511 = icmp slt i32 %510, 0, !dbg !227
  br i1 %511, label %519, label %512, !dbg !227

; <label>:512                                     ; preds = %507
  %513 = sext i32 %510 to i64, !dbg !227
  %514 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17, !dbg !227
  %515 = load i8**** %514, align 8, !dbg !227, !tbaa !243
  %516 = getelementptr inbounds i8*** %515, i64 %513, !dbg !227
  %517 = load i8*** %516, align 8, !dbg !227, !tbaa !244
  %518 = load i8** %517, align 8, !dbg !227, !tbaa !244
  br label %519, !dbg !227

; <label>:519                                     ; preds = %507, %512
  %520 = phi i8* [ %518, %512 ], [ null, %507 ], !dbg !227
  %521 = bitcast i8* %520 to double*, !dbg !227
  %522 = load i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_betax, align 4, !dbg !227, !tbaa !118
  %523 = icmp slt i32 %522, 0, !dbg !227
  br i1 %523, label %531, label %524, !dbg !227

; <label>:524                                     ; preds = %519
  %525 = sext i32 %522 to i64, !dbg !227
  %526 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17, !dbg !227
  %527 = load i8**** %526, align 8, !dbg !227, !tbaa !243
  %528 = getelementptr inbounds i8*** %527, i64 %525, !dbg !227
  %529 = load i8*** %528, align 8, !dbg !227, !tbaa !244
  %530 = load i8** %529, align 8, !dbg !227, !tbaa !244
  br label %531, !dbg !227

; <label>:531                                     ; preds = %519, %524
  %532 = phi i8* [ %530, %524 ], [ null, %519 ], !dbg !227
  %533 = bitcast i8* %532 to double*, !dbg !227
  %534 = load i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_betay, align 4, !dbg !227, !tbaa !118
  %535 = icmp slt i32 %534, 0, !dbg !227
  br i1 %535, label %543, label %536, !dbg !227

; <label>:536                                     ; preds = %531
  %537 = sext i32 %534 to i64, !dbg !227
  %538 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17, !dbg !227
  %539 = load i8**** %538, align 8, !dbg !227, !tbaa !243
  %540 = getelementptr inbounds i8*** %539, i64 %537, !dbg !227
  %541 = load i8*** %540, align 8, !dbg !227, !tbaa !244
  %542 = load i8** %541, align 8, !dbg !227, !tbaa !244
  br label %543, !dbg !227

; <label>:543                                     ; preds = %531, %536
  %544 = phi i8* [ %542, %536 ], [ null, %531 ], !dbg !227
  %545 = bitcast i8* %544 to double*, !dbg !227
  %546 = load i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_betaz, align 4, !dbg !227, !tbaa !118
  %547 = icmp slt i32 %546, 0, !dbg !227
  br i1 %547, label %555, label %548, !dbg !227

; <label>:548                                     ; preds = %543
  %549 = sext i32 %546 to i64, !dbg !227
  %550 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17, !dbg !227
  %551 = load i8**** %550, align 8, !dbg !227, !tbaa !243
  %552 = getelementptr inbounds i8*** %551, i64 %549, !dbg !227
  %553 = load i8*** %552, align 8, !dbg !227, !tbaa !244
  %554 = load i8** %553, align 8, !dbg !227, !tbaa !244
  br label %555, !dbg !227

; <label>:555                                     ; preds = %543, %548
  %556 = phi i8* [ %554, %548 ], [ null, %543 ], !dbg !227
  %557 = bitcast i8* %556 to double*, !dbg !227
  %558 = load i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_coarse_dx, align 4, !dbg !227, !tbaa !118
  %559 = icmp slt i32 %558, 0, !dbg !227
  br i1 %559, label %567, label %560, !dbg !227

; <label>:560                                     ; preds = %555
  %561 = sext i32 %558 to i64, !dbg !227
  %562 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17, !dbg !227
  %563 = load i8**** %562, align 8, !dbg !227, !tbaa !243
  %564 = getelementptr inbounds i8*** %563, i64 %561, !dbg !227
  %565 = load i8*** %564, align 8, !dbg !227, !tbaa !244
  %566 = load i8** %565, align 8, !dbg !227, !tbaa !244
  br label %567, !dbg !227

; <label>:567                                     ; preds = %555, %560
  %568 = phi i8* [ %566, %560 ], [ null, %555 ], !dbg !227
  %569 = bitcast i8* %568 to double*, !dbg !227
  %570 = load i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_coarse_dy, align 4, !dbg !227, !tbaa !118
  %571 = icmp slt i32 %570, 0, !dbg !227
  br i1 %571, label %579, label %572, !dbg !227

; <label>:572                                     ; preds = %567
  %573 = sext i32 %570 to i64, !dbg !227
  %574 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17, !dbg !227
  %575 = load i8**** %574, align 8, !dbg !227, !tbaa !243
  %576 = getelementptr inbounds i8*** %575, i64 %573, !dbg !227
  %577 = load i8*** %576, align 8, !dbg !227, !tbaa !244
  %578 = load i8** %577, align 8, !dbg !227, !tbaa !244
  br label %579, !dbg !227

; <label>:579                                     ; preds = %567, %572
  %580 = phi i8* [ %578, %572 ], [ null, %567 ], !dbg !227
  %581 = bitcast i8* %580 to double*, !dbg !227
  %582 = load i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_coarse_dz, align 4, !dbg !227, !tbaa !118
  %583 = icmp slt i32 %582, 0, !dbg !227
  br i1 %583, label %591, label %584, !dbg !227

; <label>:584                                     ; preds = %579
  %585 = sext i32 %582 to i64, !dbg !227
  %586 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17, !dbg !227
  %587 = load i8**** %586, align 8, !dbg !227, !tbaa !243
  %588 = getelementptr inbounds i8*** %587, i64 %585, !dbg !227
  %589 = load i8*** %588, align 8, !dbg !227, !tbaa !244
  %590 = load i8** %589, align 8, !dbg !227, !tbaa !244
  br label %591, !dbg !227

; <label>:591                                     ; preds = %579, %584
  %592 = phi i8* [ %590, %584 ], [ null, %579 ], !dbg !227
  %593 = bitcast i8* %592 to double*, !dbg !227
  %594 = load i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_conformal_state, align 4, !dbg !227, !tbaa !118
  %595 = icmp slt i32 %594, 0, !dbg !227
  br i1 %595, label %603, label %596, !dbg !227

; <label>:596                                     ; preds = %591
  %597 = sext i32 %594 to i64, !dbg !227
  %598 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17, !dbg !227
  %599 = load i8**** %598, align 8, !dbg !227, !tbaa !243
  %600 = getelementptr inbounds i8*** %599, i64 %597, !dbg !227
  %601 = load i8*** %600, align 8, !dbg !227, !tbaa !244
  %602 = load i8** %601, align 8, !dbg !227, !tbaa !244
  br label %603, !dbg !227

; <label>:603                                     ; preds = %591, %596
  %604 = phi i8* [ %602, %596 ], [ null, %591 ], !dbg !227
  %605 = bitcast i8* %604 to i32*, !dbg !227
  %606 = load i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_courant_min_time, align 4, !dbg !227, !tbaa !118
  %607 = icmp slt i32 %606, 0, !dbg !227
  br i1 %607, label %615, label %608, !dbg !227

; <label>:608                                     ; preds = %603
  %609 = sext i32 %606 to i64, !dbg !227
  %610 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17, !dbg !227
  %611 = load i8**** %610, align 8, !dbg !227, !tbaa !243
  %612 = getelementptr inbounds i8*** %611, i64 %609, !dbg !227
  %613 = load i8*** %612, align 8, !dbg !227, !tbaa !244
  %614 = load i8** %613, align 8, !dbg !227, !tbaa !244
  br label %615, !dbg !227

; <label>:615                                     ; preds = %603, %608
  %616 = phi i8* [ %614, %608 ], [ null, %603 ], !dbg !227
  %617 = bitcast i8* %616 to double*, !dbg !227
  %618 = load i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_courant_wave_speed, align 4, !dbg !227, !tbaa !118
  %619 = icmp slt i32 %618, 0, !dbg !227
  br i1 %619, label %627, label %620, !dbg !227

; <label>:620                                     ; preds = %615
  %621 = sext i32 %618 to i64, !dbg !227
  %622 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17, !dbg !227
  %623 = load i8**** %622, align 8, !dbg !227, !tbaa !243
  %624 = getelementptr inbounds i8*** %623, i64 %621, !dbg !227
  %625 = load i8*** %624, align 8, !dbg !227, !tbaa !244
  %626 = load i8** %625, align 8, !dbg !227, !tbaa !244
  br label %627, !dbg !227

; <label>:627                                     ; preds = %615, %620
  %628 = phi i8* [ %626, %620 ], [ null, %615 ], !dbg !227
  %629 = bitcast i8* %628 to double*, !dbg !227
  %630 = load i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_emask, align 4, !dbg !227, !tbaa !118
  %631 = icmp slt i32 %630, 0, !dbg !227
  br i1 %631, label %639, label %632, !dbg !227

; <label>:632                                     ; preds = %627
  %633 = sext i32 %630 to i64, !dbg !227
  %634 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17, !dbg !227
  %635 = load i8**** %634, align 8, !dbg !227, !tbaa !243
  %636 = getelementptr inbounds i8*** %635, i64 %633, !dbg !227
  %637 = load i8*** %636, align 8, !dbg !227, !tbaa !244
  %638 = load i8** %637, align 8, !dbg !227, !tbaa !244
  br label %639, !dbg !227

; <label>:639                                     ; preds = %627, %632
  %640 = phi i8* [ %638, %632 ], [ null, %627 ], !dbg !227
  %641 = bitcast i8* %640 to double*, !dbg !227
  %642 = load i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_gxx, align 4, !dbg !227, !tbaa !118
  %643 = icmp slt i32 %642, 0, !dbg !227
  br i1 %643, label %651, label %644, !dbg !227

; <label>:644                                     ; preds = %639
  %645 = sext i32 %642 to i64, !dbg !227
  %646 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17, !dbg !227
  %647 = load i8**** %646, align 8, !dbg !227, !tbaa !243
  %648 = getelementptr inbounds i8*** %647, i64 %645, !dbg !227
  %649 = load i8*** %648, align 8, !dbg !227, !tbaa !244
  %650 = load i8** %649, align 8, !dbg !227, !tbaa !244
  br label %651, !dbg !227

; <label>:651                                     ; preds = %639, %644
  %652 = phi i8* [ %650, %644 ], [ null, %639 ], !dbg !227
  %653 = bitcast i8* %652 to double*, !dbg !227
  %654 = load i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_gxy, align 4, !dbg !227, !tbaa !118
  %655 = icmp slt i32 %654, 0, !dbg !227
  br i1 %655, label %663, label %656, !dbg !227

; <label>:656                                     ; preds = %651
  %657 = sext i32 %654 to i64, !dbg !227
  %658 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17, !dbg !227
  %659 = load i8**** %658, align 8, !dbg !227, !tbaa !243
  %660 = getelementptr inbounds i8*** %659, i64 %657, !dbg !227
  %661 = load i8*** %660, align 8, !dbg !227, !tbaa !244
  %662 = load i8** %661, align 8, !dbg !227, !tbaa !244
  br label %663, !dbg !227

; <label>:663                                     ; preds = %651, %656
  %664 = phi i8* [ %662, %656 ], [ null, %651 ], !dbg !227
  %665 = bitcast i8* %664 to double*, !dbg !227
  %666 = load i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_gxz, align 4, !dbg !227, !tbaa !118
  %667 = icmp slt i32 %666, 0, !dbg !227
  br i1 %667, label %675, label %668, !dbg !227

; <label>:668                                     ; preds = %663
  %669 = sext i32 %666 to i64, !dbg !227
  %670 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17, !dbg !227
  %671 = load i8**** %670, align 8, !dbg !227, !tbaa !243
  %672 = getelementptr inbounds i8*** %671, i64 %669, !dbg !227
  %673 = load i8*** %672, align 8, !dbg !227, !tbaa !244
  %674 = load i8** %673, align 8, !dbg !227, !tbaa !244
  br label %675, !dbg !227

; <label>:675                                     ; preds = %663, %668
  %676 = phi i8* [ %674, %668 ], [ null, %663 ], !dbg !227
  %677 = bitcast i8* %676 to double*, !dbg !227
  %678 = load i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_gyy, align 4, !dbg !227, !tbaa !118
  %679 = icmp slt i32 %678, 0, !dbg !227
  br i1 %679, label %687, label %680, !dbg !227

; <label>:680                                     ; preds = %675
  %681 = sext i32 %678 to i64, !dbg !227
  %682 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17, !dbg !227
  %683 = load i8**** %682, align 8, !dbg !227, !tbaa !243
  %684 = getelementptr inbounds i8*** %683, i64 %681, !dbg !227
  %685 = load i8*** %684, align 8, !dbg !227, !tbaa !244
  %686 = load i8** %685, align 8, !dbg !227, !tbaa !244
  br label %687, !dbg !227

; <label>:687                                     ; preds = %675, %680
  %688 = phi i8* [ %686, %680 ], [ null, %675 ], !dbg !227
  %689 = bitcast i8* %688 to double*, !dbg !227
  %690 = load i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_gyz, align 4, !dbg !227, !tbaa !118
  %691 = icmp slt i32 %690, 0, !dbg !227
  br i1 %691, label %699, label %692, !dbg !227

; <label>:692                                     ; preds = %687
  %693 = sext i32 %690 to i64, !dbg !227
  %694 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17, !dbg !227
  %695 = load i8**** %694, align 8, !dbg !227, !tbaa !243
  %696 = getelementptr inbounds i8*** %695, i64 %693, !dbg !227
  %697 = load i8*** %696, align 8, !dbg !227, !tbaa !244
  %698 = load i8** %697, align 8, !dbg !227, !tbaa !244
  br label %699, !dbg !227

; <label>:699                                     ; preds = %687, %692
  %700 = phi i8* [ %698, %692 ], [ null, %687 ], !dbg !227
  %701 = bitcast i8* %700 to double*, !dbg !227
  %702 = load i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_gzz, align 4, !dbg !227, !tbaa !118
  %703 = icmp slt i32 %702, 0, !dbg !227
  br i1 %703, label %711, label %704, !dbg !227

; <label>:704                                     ; preds = %699
  %705 = sext i32 %702 to i64, !dbg !227
  %706 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17, !dbg !227
  %707 = load i8**** %706, align 8, !dbg !227, !tbaa !243
  %708 = getelementptr inbounds i8*** %707, i64 %705, !dbg !227
  %709 = load i8*** %708, align 8, !dbg !227, !tbaa !244
  %710 = load i8** %709, align 8, !dbg !227, !tbaa !244
  br label %711, !dbg !227

; <label>:711                                     ; preds = %699, %704
  %712 = phi i8* [ %710, %704 ], [ null, %699 ], !dbg !227
  %713 = bitcast i8* %712 to double*, !dbg !227
  %714 = load i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_kxx, align 4, !dbg !227, !tbaa !118
  %715 = icmp slt i32 %714, 0, !dbg !227
  br i1 %715, label %723, label %716, !dbg !227

; <label>:716                                     ; preds = %711
  %717 = sext i32 %714 to i64, !dbg !227
  %718 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17, !dbg !227
  %719 = load i8**** %718, align 8, !dbg !227, !tbaa !243
  %720 = getelementptr inbounds i8*** %719, i64 %717, !dbg !227
  %721 = load i8*** %720, align 8, !dbg !227, !tbaa !244
  %722 = load i8** %721, align 8, !dbg !227, !tbaa !244
  br label %723, !dbg !227

; <label>:723                                     ; preds = %711, %716
  %724 = phi i8* [ %722, %716 ], [ null, %711 ], !dbg !227
  %725 = bitcast i8* %724 to double*, !dbg !227
  %726 = load i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_kxy, align 4, !dbg !227, !tbaa !118
  %727 = icmp slt i32 %726, 0, !dbg !227
  br i1 %727, label %735, label %728, !dbg !227

; <label>:728                                     ; preds = %723
  %729 = sext i32 %726 to i64, !dbg !227
  %730 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17, !dbg !227
  %731 = load i8**** %730, align 8, !dbg !227, !tbaa !243
  %732 = getelementptr inbounds i8*** %731, i64 %729, !dbg !227
  %733 = load i8*** %732, align 8, !dbg !227, !tbaa !244
  %734 = load i8** %733, align 8, !dbg !227, !tbaa !244
  br label %735, !dbg !227

; <label>:735                                     ; preds = %723, %728
  %736 = phi i8* [ %734, %728 ], [ null, %723 ], !dbg !227
  %737 = bitcast i8* %736 to double*, !dbg !227
  %738 = load i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_kxz, align 4, !dbg !227, !tbaa !118
  %739 = icmp slt i32 %738, 0, !dbg !227
  br i1 %739, label %747, label %740, !dbg !227

; <label>:740                                     ; preds = %735
  %741 = sext i32 %738 to i64, !dbg !227
  %742 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17, !dbg !227
  %743 = load i8**** %742, align 8, !dbg !227, !tbaa !243
  %744 = getelementptr inbounds i8*** %743, i64 %741, !dbg !227
  %745 = load i8*** %744, align 8, !dbg !227, !tbaa !244
  %746 = load i8** %745, align 8, !dbg !227, !tbaa !244
  br label %747, !dbg !227

; <label>:747                                     ; preds = %735, %740
  %748 = phi i8* [ %746, %740 ], [ null, %735 ], !dbg !227
  %749 = bitcast i8* %748 to double*, !dbg !227
  %750 = load i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_kyy, align 4, !dbg !227, !tbaa !118
  %751 = icmp slt i32 %750, 0, !dbg !227
  br i1 %751, label %759, label %752, !dbg !227

; <label>:752                                     ; preds = %747
  %753 = sext i32 %750 to i64, !dbg !227
  %754 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17, !dbg !227
  %755 = load i8**** %754, align 8, !dbg !227, !tbaa !243
  %756 = getelementptr inbounds i8*** %755, i64 %753, !dbg !227
  %757 = load i8*** %756, align 8, !dbg !227, !tbaa !244
  %758 = load i8** %757, align 8, !dbg !227, !tbaa !244
  br label %759, !dbg !227

; <label>:759                                     ; preds = %747, %752
  %760 = phi i8* [ %758, %752 ], [ null, %747 ], !dbg !227
  %761 = bitcast i8* %760 to double*, !dbg !227
  %762 = load i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_kyz, align 4, !dbg !227, !tbaa !118
  %763 = icmp slt i32 %762, 0, !dbg !227
  br i1 %763, label %771, label %764, !dbg !227

; <label>:764                                     ; preds = %759
  %765 = sext i32 %762 to i64, !dbg !227
  %766 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17, !dbg !227
  %767 = load i8**** %766, align 8, !dbg !227, !tbaa !243
  %768 = getelementptr inbounds i8*** %767, i64 %765, !dbg !227
  %769 = load i8*** %768, align 8, !dbg !227, !tbaa !244
  %770 = load i8** %769, align 8, !dbg !227, !tbaa !244
  br label %771, !dbg !227

; <label>:771                                     ; preds = %759, %764
  %772 = phi i8* [ %770, %764 ], [ null, %759 ], !dbg !227
  %773 = bitcast i8* %772 to double*, !dbg !227
  %774 = load i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_kzz, align 4, !dbg !227, !tbaa !118
  %775 = icmp slt i32 %774, 0, !dbg !227
  br i1 %775, label %784, label %776, !dbg !227

; <label>:776                                     ; preds = %771
  %777 = sext i32 %774 to i64, !dbg !227
  %778 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17, !dbg !227
  %779 = load i8**** %778, align 8, !dbg !227, !tbaa !243
  %780 = getelementptr inbounds i8*** %779, i64 %777, !dbg !227
  %781 = bitcast i8*** %780 to double***, !dbg !227
  %782 = load double*** %781, align 8, !dbg !227, !tbaa !244
  %783 = load double** %782, align 8, !dbg !227, !tbaa !244
  br label %784, !dbg !227

; <label>:784                                     ; preds = %771, %776
  %785 = phi double* [ %783, %776 ], [ null, %771 ]
  %786 = load i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_psi, align 4, !dbg !227, !tbaa !118
  %787 = icmp slt i32 %786, 0, !dbg !227
  br i1 %787, label %796, label %788, !dbg !227

; <label>:788                                     ; preds = %784
  %789 = sext i32 %786 to i64, !dbg !227
  %790 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17, !dbg !227
  %791 = load i8**** %790, align 8, !dbg !227, !tbaa !243
  %792 = getelementptr inbounds i8*** %791, i64 %789, !dbg !227
  %793 = bitcast i8*** %792 to double***, !dbg !227
  %794 = load double*** %793, align 8, !dbg !227, !tbaa !244
  %795 = load double** %794, align 8, !dbg !227, !tbaa !244
  br label %796, !dbg !227

; <label>:796                                     ; preds = %784, %788
  %797 = phi double* [ %795, %788 ], [ null, %784 ]
  %798 = load i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_psix, align 4, !dbg !227, !tbaa !118
  %799 = icmp slt i32 %798, 0, !dbg !227
  br i1 %799, label %808, label %800, !dbg !227

; <label>:800                                     ; preds = %796
  %801 = sext i32 %798 to i64, !dbg !227
  %802 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17, !dbg !227
  %803 = load i8**** %802, align 8, !dbg !227, !tbaa !243
  %804 = getelementptr inbounds i8*** %803, i64 %801, !dbg !227
  %805 = bitcast i8*** %804 to double***, !dbg !227
  %806 = load double*** %805, align 8, !dbg !227, !tbaa !244
  %807 = load double** %806, align 8, !dbg !227, !tbaa !244
  br label %808, !dbg !227

; <label>:808                                     ; preds = %796, %800
  %809 = phi double* [ %807, %800 ], [ null, %796 ]
  %810 = load i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_psixx, align 4, !dbg !227, !tbaa !118
  %811 = icmp slt i32 %810, 0, !dbg !227
  br i1 %811, label %820, label %812, !dbg !227

; <label>:812                                     ; preds = %808
  %813 = sext i32 %810 to i64, !dbg !227
  %814 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17, !dbg !227
  %815 = load i8**** %814, align 8, !dbg !227, !tbaa !243
  %816 = getelementptr inbounds i8*** %815, i64 %813, !dbg !227
  %817 = bitcast i8*** %816 to double***, !dbg !227
  %818 = load double*** %817, align 8, !dbg !227, !tbaa !244
  %819 = load double** %818, align 8, !dbg !227, !tbaa !244
  br label %820, !dbg !227

; <label>:820                                     ; preds = %808, %812
  %821 = phi double* [ %819, %812 ], [ null, %808 ]
  %822 = load i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_psixy, align 4, !dbg !227, !tbaa !118
  %823 = icmp slt i32 %822, 0, !dbg !227
  br i1 %823, label %832, label %824, !dbg !227

; <label>:824                                     ; preds = %820
  %825 = sext i32 %822 to i64, !dbg !227
  %826 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17, !dbg !227
  %827 = load i8**** %826, align 8, !dbg !227, !tbaa !243
  %828 = getelementptr inbounds i8*** %827, i64 %825, !dbg !227
  %829 = bitcast i8*** %828 to double***, !dbg !227
  %830 = load double*** %829, align 8, !dbg !227, !tbaa !244
  %831 = load double** %830, align 8, !dbg !227, !tbaa !244
  br label %832, !dbg !227

; <label>:832                                     ; preds = %820, %824
  %833 = phi double* [ %831, %824 ], [ null, %820 ]
  %834 = load i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_psixz, align 4, !dbg !227, !tbaa !118
  %835 = icmp slt i32 %834, 0, !dbg !227
  br i1 %835, label %844, label %836, !dbg !227

; <label>:836                                     ; preds = %832
  %837 = sext i32 %834 to i64, !dbg !227
  %838 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17, !dbg !227
  %839 = load i8**** %838, align 8, !dbg !227, !tbaa !243
  %840 = getelementptr inbounds i8*** %839, i64 %837, !dbg !227
  %841 = bitcast i8*** %840 to double***, !dbg !227
  %842 = load double*** %841, align 8, !dbg !227, !tbaa !244
  %843 = load double** %842, align 8, !dbg !227, !tbaa !244
  br label %844, !dbg !227

; <label>:844                                     ; preds = %832, %836
  %845 = phi double* [ %843, %836 ], [ null, %832 ]
  %846 = load i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_psiy, align 4, !dbg !227, !tbaa !118
  %847 = icmp slt i32 %846, 0, !dbg !227
  br i1 %847, label %856, label %848, !dbg !227

; <label>:848                                     ; preds = %844
  %849 = sext i32 %846 to i64, !dbg !227
  %850 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17, !dbg !227
  %851 = load i8**** %850, align 8, !dbg !227, !tbaa !243
  %852 = getelementptr inbounds i8*** %851, i64 %849, !dbg !227
  %853 = bitcast i8*** %852 to double***, !dbg !227
  %854 = load double*** %853, align 8, !dbg !227, !tbaa !244
  %855 = load double** %854, align 8, !dbg !227, !tbaa !244
  br label %856, !dbg !227

; <label>:856                                     ; preds = %844, %848
  %857 = phi double* [ %855, %848 ], [ null, %844 ]
  %858 = load i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_psiyy, align 4, !dbg !227, !tbaa !118
  %859 = icmp slt i32 %858, 0, !dbg !227
  br i1 %859, label %868, label %860, !dbg !227

; <label>:860                                     ; preds = %856
  %861 = sext i32 %858 to i64, !dbg !227
  %862 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17, !dbg !227
  %863 = load i8**** %862, align 8, !dbg !227, !tbaa !243
  %864 = getelementptr inbounds i8*** %863, i64 %861, !dbg !227
  %865 = bitcast i8*** %864 to double***, !dbg !227
  %866 = load double*** %865, align 8, !dbg !227, !tbaa !244
  %867 = load double** %866, align 8, !dbg !227, !tbaa !244
  br label %868, !dbg !227

; <label>:868                                     ; preds = %856, %860
  %869 = phi double* [ %867, %860 ], [ null, %856 ]
  %870 = load i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_psiyz, align 4, !dbg !227, !tbaa !118
  %871 = icmp slt i32 %870, 0, !dbg !227
  br i1 %871, label %880, label %872, !dbg !227

; <label>:872                                     ; preds = %868
  %873 = sext i32 %870 to i64, !dbg !227
  %874 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17, !dbg !227
  %875 = load i8**** %874, align 8, !dbg !227, !tbaa !243
  %876 = getelementptr inbounds i8*** %875, i64 %873, !dbg !227
  %877 = bitcast i8*** %876 to double***, !dbg !227
  %878 = load double*** %877, align 8, !dbg !227, !tbaa !244
  %879 = load double** %878, align 8, !dbg !227, !tbaa !244
  br label %880, !dbg !227

; <label>:880                                     ; preds = %868, %872
  %881 = phi double* [ %879, %872 ], [ null, %868 ]
  %882 = load i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_psiz, align 4, !dbg !227, !tbaa !118
  %883 = icmp slt i32 %882, 0, !dbg !227
  br i1 %883, label %892, label %884, !dbg !227

; <label>:884                                     ; preds = %880
  %885 = sext i32 %882 to i64, !dbg !227
  %886 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17, !dbg !227
  %887 = load i8**** %886, align 8, !dbg !227, !tbaa !243
  %888 = getelementptr inbounds i8*** %887, i64 %885, !dbg !227
  %889 = bitcast i8*** %888 to double***, !dbg !227
  %890 = load double*** %889, align 8, !dbg !227, !tbaa !244
  %891 = load double** %890, align 8, !dbg !227, !tbaa !244
  br label %892, !dbg !227

; <label>:892                                     ; preds = %880, %884
  %893 = phi double* [ %891, %884 ], [ null, %880 ]
  %894 = load i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_psizz, align 4, !dbg !227, !tbaa !118
  %895 = icmp slt i32 %894, 0, !dbg !227
  br i1 %895, label %904, label %896, !dbg !227

; <label>:896                                     ; preds = %892
  %897 = sext i32 %894 to i64, !dbg !227
  %898 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17, !dbg !227
  %899 = load i8**** %898, align 8, !dbg !227, !tbaa !243
  %900 = getelementptr inbounds i8*** %899, i64 %897, !dbg !227
  %901 = bitcast i8*** %900 to double***, !dbg !227
  %902 = load double*** %901, align 8, !dbg !227, !tbaa !244
  %903 = load double** %902, align 8, !dbg !227, !tbaa !244
  br label %904, !dbg !227

; <label>:904                                     ; preds = %892, %896
  %905 = phi double* [ %903, %896 ], [ null, %892 ]
  %906 = load i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_r, align 4, !dbg !227, !tbaa !118
  %907 = icmp slt i32 %906, 0, !dbg !227
  br i1 %907, label %916, label %908, !dbg !227

; <label>:908                                     ; preds = %904
  %909 = sext i32 %906 to i64, !dbg !227
  %910 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17, !dbg !227
  %911 = load i8**** %910, align 8, !dbg !227, !tbaa !243
  %912 = getelementptr inbounds i8*** %911, i64 %909, !dbg !227
  %913 = bitcast i8*** %912 to double***, !dbg !227
  %914 = load double*** %913, align 8, !dbg !227, !tbaa !244
  %915 = load double** %914, align 8, !dbg !227, !tbaa !244
  br label %916, !dbg !227

; <label>:916                                     ; preds = %904, %908
  %917 = phi double* [ %915, %908 ], [ null, %904 ]
  %918 = load i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_shift_state, align 4, !dbg !227, !tbaa !118
  %919 = icmp slt i32 %918, 0, !dbg !227
  br i1 %919, label %928, label %920, !dbg !227

; <label>:920                                     ; preds = %916
  %921 = sext i32 %918 to i64, !dbg !227
  %922 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17, !dbg !227
  %923 = load i8**** %922, align 8, !dbg !227, !tbaa !243
  %924 = getelementptr inbounds i8*** %923, i64 %921, !dbg !227
  %925 = bitcast i8*** %924 to i32***, !dbg !227
  %926 = load i32*** %925, align 8, !dbg !227, !tbaa !244
  %927 = load i32** %926, align 8, !dbg !227, !tbaa !244
  br label %928, !dbg !227

; <label>:928                                     ; preds = %916, %920
  %929 = phi i32* [ %927, %920 ], [ null, %916 ]
  %930 = load i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_x, align 4, !dbg !227, !tbaa !118
  %931 = icmp slt i32 %930, 0, !dbg !227
  br i1 %931, label %940, label %932, !dbg !227

; <label>:932                                     ; preds = %928
  %933 = sext i32 %930 to i64, !dbg !227
  %934 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17, !dbg !227
  %935 = load i8**** %934, align 8, !dbg !227, !tbaa !243
  %936 = getelementptr inbounds i8*** %935, i64 %933, !dbg !227
  %937 = bitcast i8*** %936 to double***, !dbg !227
  %938 = load double*** %937, align 8, !dbg !227, !tbaa !244
  %939 = load double** %938, align 8, !dbg !227, !tbaa !244
  br label %940, !dbg !227

; <label>:940                                     ; preds = %928, %932
  %941 = phi double* [ %939, %932 ], [ null, %928 ]
  %942 = load i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_y, align 4, !dbg !227, !tbaa !118
  %943 = icmp slt i32 %942, 0, !dbg !227
  br i1 %943, label %952, label %944, !dbg !227

; <label>:944                                     ; preds = %940
  %945 = sext i32 %942 to i64, !dbg !227
  %946 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17, !dbg !227
  %947 = load i8**** %946, align 8, !dbg !227, !tbaa !243
  %948 = getelementptr inbounds i8*** %947, i64 %945, !dbg !227
  %949 = bitcast i8*** %948 to double***, !dbg !227
  %950 = load double*** %949, align 8, !dbg !227, !tbaa !244
  %951 = load double** %950, align 8, !dbg !227, !tbaa !244
  br label %952, !dbg !227

; <label>:952                                     ; preds = %940, %944
  %953 = phi double* [ %951, %944 ], [ null, %940 ]
  %954 = load i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_z, align 4, !dbg !227, !tbaa !118
  %955 = icmp slt i32 %954, 0, !dbg !227
  br i1 %955, label %964, label %956, !dbg !227

; <label>:956                                     ; preds = %952
  %957 = sext i32 %954 to i64, !dbg !227
  %958 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17, !dbg !227
  %959 = load i8**** %958, align 8, !dbg !227, !tbaa !243
  %960 = getelementptr inbounds i8*** %959, i64 %957, !dbg !227
  %961 = bitcast i8*** %960 to double***, !dbg !227
  %962 = load double*** %961, align 8, !dbg !227, !tbaa !244
  %963 = load double** %962, align 8, !dbg !227, !tbaa !244
  br label %964, !dbg !227

; <label>:964                                     ; preds = %952, %956
  %965 = phi double* [ %963, %956 ], [ null, %952 ]
  tail call void %261(i32* %262, i32* %264, i32* %266, i32* %268, i32* %270, i32* %272, i32* %274, i32* %276, i32* %278, double* %279, double* %280, double* %282, double* %284, i32* %286, i32* %287, i32* %289, i32* %290, %struct.cGH* %GH, i32* %312, i32* %311, i32* %313, i32* %335, i32* %334, i32* %336, i32* %358, i32* %357, i32* %359, i32* %381, i32* %380, i32* %382, i32* %404, i32* %403, i32* %405, i32* %427, i32* %426, i32* %428, i32* %450, i32* %449, i32* %451, i32* %473, i32* %472, i32* %474, i32* %496, i32* %495, i32* %497, i32* %509, double* %521, double* %533, double* %545, double* %557, double* %569, double* %581, double* %593, i32* %605, double* %617, double* %629, double* %641, double* %653, double* %665, double* %677, double* %689, double* %701, double* %713, double* %725, double* %737, double* %749, double* %761, double* %773, double* %785, double* %797, double* %809, double* %821, double* %833, double* %845, double* %857, double* %869, double* %881, double* %893, double* %905, double* %917, i32* %929, double* %941, double* %953, double* %965) #3, !dbg !245
  ret i32 0, !dbg !246
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
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #2

attributes #0 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }
attributes #3 = { nounwind optsize }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!109, !110, !111}
!llvm.ident = !{!112}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !48, globals: !56, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/CactusBindings/IDLinearWaves_FortranWrapper.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4, !46, !7, !36, !9}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64, align: 64)
!5 = !DISubroutineType(types: !6)
!6 = !{null, !7, !7, !7, !7, !7, !7, !7, !7, !7, !9, !9, !9, !9, !7, !7, !7, !7, !11, !46, !46, !46, !46, !46, !46, !46, !46, !46, !46, !46, !46, !46, !46, !46, !46, !46, !46, !46, !46, !46, !46, !46, !46, !46, !46, !46, !7, !9, !9, !9, !9, !9, !9, !9, !7, !9, !9, !9, !9, !9, !9, !9, !9, !9, !9, !9, !9, !9, !9, !9, !9, !9, !9, !9, !9, !9, !9, !9, !9, !9, !9, !7, !9, !9, !9}
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64, align: 64)
!8 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64, align: 64)
!10 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64, align: 64)
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "cGH", file: !13, line: 75, baseType: !14)
!13 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/CactusBindings/../include/cGH.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!14 = !DICompositeType(tag: DW_TAG_structure_type, file: !13, line: 24, size: 1216, align: 64, elements: !15)
!15 = !{!16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !37, !38}
!16 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_dim", scope: !14, file: !13, line: 26, baseType: !8, size: 32, align: 32)
!17 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_iteration", scope: !14, file: !13, line: 27, baseType: !8, size: 32, align: 32, offset: 32)
!18 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_gsh", scope: !14, file: !13, line: 30, baseType: !7, size: 64, align: 64, offset: 64)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_lsh", scope: !14, file: !13, line: 31, baseType: !7, size: 64, align: 64, offset: 128)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_lbnd", scope: !14, file: !13, line: 32, baseType: !7, size: 64, align: 64, offset: 192)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_ubnd", scope: !14, file: !13, line: 33, baseType: !7, size: 64, align: 64, offset: 256)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_lssh", scope: !14, file: !13, line: 36, baseType: !7, size: 64, align: 64, offset: 320)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_to", scope: !14, file: !13, line: 39, baseType: !7, size: 64, align: 64, offset: 384)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_from", scope: !14, file: !13, line: 40, baseType: !7, size: 64, align: 64, offset: 448)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_delta_time", scope: !14, file: !13, line: 43, baseType: !10, size: 64, align: 64, offset: 512)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_delta_space", scope: !14, file: !13, line: 44, baseType: !9, size: 64, align: 64, offset: 576)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_origin_space", scope: !14, file: !13, line: 47, baseType: !9, size: 64, align: 64, offset: 640)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_bbox", scope: !14, file: !13, line: 51, baseType: !7, size: 64, align: 64, offset: 704)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_levfac", scope: !14, file: !13, line: 54, baseType: !7, size: 64, align: 64, offset: 768)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_convlevel", scope: !14, file: !13, line: 57, baseType: !8, size: 32, align: 32, offset: 832)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_nghostzones", scope: !14, file: !13, line: 60, baseType: !7, size: 64, align: 64, offset: 896)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_time", scope: !14, file: !13, line: 63, baseType: !10, size: 64, align: 64, offset: 960)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !14, file: !13, line: 67, baseType: !34, size: 64, align: 64, offset: 1024)
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64, align: 64)
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64, align: 64)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "extensions", scope: !14, file: !13, line: 70, baseType: !35, size: 64, align: 64, offset: 1088)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "GroupData", scope: !14, file: !13, line: 73, baseType: !39, size: 64, align: 64, offset: 1152)
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64, align: 64)
!40 = !DIDerivedType(tag: DW_TAG_typedef, name: "cGHGroupData", file: !13, line: 22, baseType: !41)
!41 = !DICompositeType(tag: DW_TAG_structure_type, file: !13, line: 18, size: 16, align: 8, elements: !42)
!42 = !{!43, !45}
!43 = !DIDerivedType(tag: DW_TAG_member, name: "storage", scope: !41, file: !13, line: 20, baseType: !44, size: 8, align: 8)
!44 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !41, file: !13, line: 21, baseType: !44, size: 8, align: 8, offset: 8)
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64, align: 64)
!47 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !8)
!48 = !{!49}
!49 = !DISubprogram(name: "CCTKi_BindingsFortranWrapperIDLinearWaves", scope: !1, file: !1, line: 13, type: !50, isLocal: false, isDefinition: true, scopeLine: 14, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.cGH*, i8*)* @CCTKi_BindingsFortranWrapperIDLinearWaves, variables: !52)
!50 = !DISubroutineType(types: !51)
!51 = !{!8, !11, !36}
!52 = !{!53, !54, !55}
!53 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "GH", arg: 1, scope: !49, file: !1, line: 13, type: !11)
!54 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fpointer", arg: 2, scope: !49, file: !1, line: 13, type: !36)
!55 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "function", scope: !49, file: !1, line: 15, type: !4)
!56 = !{!57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108}
!57 = !DIGlobalVariable(name: "CCTKARGNUM_active_slicing_handle", scope: !49, file: !1, line: 17, type: !8, isLocal: true, isDefinition: true, variable: i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_active_slicing_handle)
!58 = !DIGlobalVariable(name: "CCTKGROUPNUM_slicing_flags", scope: !49, file: !1, line: 17, type: !8, isLocal: true, isDefinition: true, variable: i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKGROUPNUM_slicing_flags)
!59 = !DIGlobalVariable(name: "CCTKARGNUM_alp", scope: !49, file: !1, line: 17, type: !8, isLocal: true, isDefinition: true, variable: i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_alp)
!60 = !DIGlobalVariable(name: "CCTKGROUPNUM_lapse", scope: !49, file: !1, line: 17, type: !8, isLocal: true, isDefinition: true, variable: i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKGROUPNUM_lapse)
!61 = !DIGlobalVariable(name: "CCTKARGNUM_betax", scope: !49, file: !1, line: 17, type: !8, isLocal: true, isDefinition: true, variable: i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_betax)
!62 = !DIGlobalVariable(name: "CCTKGROUPNUM_shift", scope: !49, file: !1, line: 17, type: !8, isLocal: true, isDefinition: true, variable: i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKGROUPNUM_shift)
!63 = !DIGlobalVariable(name: "CCTKARGNUM_betay", scope: !49, file: !1, line: 17, type: !8, isLocal: true, isDefinition: true, variable: i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_betay)
!64 = !DIGlobalVariable(name: "CCTKARGNUM_betaz", scope: !49, file: !1, line: 17, type: !8, isLocal: true, isDefinition: true, variable: i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_betaz)
!65 = !DIGlobalVariable(name: "CCTKARGNUM_coarse_dx", scope: !49, file: !1, line: 17, type: !8, isLocal: true, isDefinition: true, variable: i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_coarse_dx)
!66 = !DIGlobalVariable(name: "CCTKGROUPNUM_gridspacings", scope: !49, file: !1, line: 17, type: !8, isLocal: true, isDefinition: true, variable: i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKGROUPNUM_gridspacings)
!67 = !DIGlobalVariable(name: "CCTKARGNUM_coarse_dy", scope: !49, file: !1, line: 17, type: !8, isLocal: true, isDefinition: true, variable: i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_coarse_dy)
!68 = !DIGlobalVariable(name: "CCTKARGNUM_coarse_dz", scope: !49, file: !1, line: 17, type: !8, isLocal: true, isDefinition: true, variable: i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_coarse_dz)
!69 = !DIGlobalVariable(name: "CCTKARGNUM_conformal_state", scope: !49, file: !1, line: 17, type: !8, isLocal: true, isDefinition: true, variable: i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_conformal_state)
!70 = !DIGlobalVariable(name: "CCTKGROUPNUM_flags", scope: !49, file: !1, line: 17, type: !8, isLocal: true, isDefinition: true, variable: i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKGROUPNUM_flags)
!71 = !DIGlobalVariable(name: "CCTKARGNUM_courant_min_time", scope: !49, file: !1, line: 17, type: !8, isLocal: true, isDefinition: true, variable: i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_courant_min_time)
!72 = !DIGlobalVariable(name: "CCTKGROUPNUM_speedvars", scope: !49, file: !1, line: 17, type: !8, isLocal: true, isDefinition: true, variable: i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKGROUPNUM_speedvars)
!73 = !DIGlobalVariable(name: "CCTKARGNUM_courant_wave_speed", scope: !49, file: !1, line: 17, type: !8, isLocal: true, isDefinition: true, variable: i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_courant_wave_speed)
!74 = !DIGlobalVariable(name: "CCTKARGNUM_emask", scope: !49, file: !1, line: 17, type: !8, isLocal: true, isDefinition: true, variable: i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_emask)
!75 = !DIGlobalVariable(name: "CCTKGROUPNUM_mask", scope: !49, file: !1, line: 17, type: !8, isLocal: true, isDefinition: true, variable: i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKGROUPNUM_mask)
!76 = !DIGlobalVariable(name: "CCTKARGNUM_gxx", scope: !49, file: !1, line: 17, type: !8, isLocal: true, isDefinition: true, variable: i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_gxx)
!77 = !DIGlobalVariable(name: "CCTKGROUPNUM_metric", scope: !49, file: !1, line: 17, type: !8, isLocal: true, isDefinition: true, variable: i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKGROUPNUM_metric)
!78 = !DIGlobalVariable(name: "CCTKARGNUM_gxy", scope: !49, file: !1, line: 17, type: !8, isLocal: true, isDefinition: true, variable: i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_gxy)
!79 = !DIGlobalVariable(name: "CCTKARGNUM_gxz", scope: !49, file: !1, line: 17, type: !8, isLocal: true, isDefinition: true, variable: i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_gxz)
!80 = !DIGlobalVariable(name: "CCTKARGNUM_gyy", scope: !49, file: !1, line: 17, type: !8, isLocal: true, isDefinition: true, variable: i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_gyy)
!81 = !DIGlobalVariable(name: "CCTKARGNUM_gyz", scope: !49, file: !1, line: 17, type: !8, isLocal: true, isDefinition: true, variable: i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_gyz)
!82 = !DIGlobalVariable(name: "CCTKARGNUM_gzz", scope: !49, file: !1, line: 17, type: !8, isLocal: true, isDefinition: true, variable: i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_gzz)
!83 = !DIGlobalVariable(name: "CCTKARGNUM_kxx", scope: !49, file: !1, line: 17, type: !8, isLocal: true, isDefinition: true, variable: i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_kxx)
!84 = !DIGlobalVariable(name: "CCTKGROUPNUM_curv", scope: !49, file: !1, line: 17, type: !8, isLocal: true, isDefinition: true, variable: i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKGROUPNUM_curv)
!85 = !DIGlobalVariable(name: "CCTKARGNUM_kxy", scope: !49, file: !1, line: 17, type: !8, isLocal: true, isDefinition: true, variable: i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_kxy)
!86 = !DIGlobalVariable(name: "CCTKARGNUM_kxz", scope: !49, file: !1, line: 17, type: !8, isLocal: true, isDefinition: true, variable: i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_kxz)
!87 = !DIGlobalVariable(name: "CCTKARGNUM_kyy", scope: !49, file: !1, line: 17, type: !8, isLocal: true, isDefinition: true, variable: i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_kyy)
!88 = !DIGlobalVariable(name: "CCTKARGNUM_kyz", scope: !49, file: !1, line: 17, type: !8, isLocal: true, isDefinition: true, variable: i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_kyz)
!89 = !DIGlobalVariable(name: "CCTKARGNUM_kzz", scope: !49, file: !1, line: 17, type: !8, isLocal: true, isDefinition: true, variable: i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_kzz)
!90 = !DIGlobalVariable(name: "CCTKARGNUM_psi", scope: !49, file: !1, line: 17, type: !8, isLocal: true, isDefinition: true, variable: i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_psi)
!91 = !DIGlobalVariable(name: "CCTKGROUPNUM_confac", scope: !49, file: !1, line: 17, type: !8, isLocal: true, isDefinition: true, variable: i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKGROUPNUM_confac)
!92 = !DIGlobalVariable(name: "CCTKARGNUM_psix", scope: !49, file: !1, line: 17, type: !8, isLocal: true, isDefinition: true, variable: i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_psix)
!93 = !DIGlobalVariable(name: "CCTKGROUPNUM_confac_1derivs", scope: !49, file: !1, line: 17, type: !8, isLocal: true, isDefinition: true, variable: i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKGROUPNUM_confac_1derivs)
!94 = !DIGlobalVariable(name: "CCTKARGNUM_psixx", scope: !49, file: !1, line: 17, type: !8, isLocal: true, isDefinition: true, variable: i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_psixx)
!95 = !DIGlobalVariable(name: "CCTKGROUPNUM_confac_2derivs", scope: !49, file: !1, line: 17, type: !8, isLocal: true, isDefinition: true, variable: i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKGROUPNUM_confac_2derivs)
!96 = !DIGlobalVariable(name: "CCTKARGNUM_psixy", scope: !49, file: !1, line: 17, type: !8, isLocal: true, isDefinition: true, variable: i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_psixy)
!97 = !DIGlobalVariable(name: "CCTKARGNUM_psixz", scope: !49, file: !1, line: 17, type: !8, isLocal: true, isDefinition: true, variable: i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_psixz)
!98 = !DIGlobalVariable(name: "CCTKARGNUM_psiy", scope: !49, file: !1, line: 17, type: !8, isLocal: true, isDefinition: true, variable: i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_psiy)
!99 = !DIGlobalVariable(name: "CCTKARGNUM_psiyy", scope: !49, file: !1, line: 17, type: !8, isLocal: true, isDefinition: true, variable: i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_psiyy)
!100 = !DIGlobalVariable(name: "CCTKARGNUM_psiyz", scope: !49, file: !1, line: 17, type: !8, isLocal: true, isDefinition: true, variable: i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_psiyz)
!101 = !DIGlobalVariable(name: "CCTKARGNUM_psiz", scope: !49, file: !1, line: 17, type: !8, isLocal: true, isDefinition: true, variable: i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_psiz)
!102 = !DIGlobalVariable(name: "CCTKARGNUM_psizz", scope: !49, file: !1, line: 17, type: !8, isLocal: true, isDefinition: true, variable: i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_psizz)
!103 = !DIGlobalVariable(name: "CCTKARGNUM_r", scope: !49, file: !1, line: 17, type: !8, isLocal: true, isDefinition: true, variable: i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_r)
!104 = !DIGlobalVariable(name: "CCTKGROUPNUM_coordinates", scope: !49, file: !1, line: 17, type: !8, isLocal: true, isDefinition: true, variable: i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKGROUPNUM_coordinates)
!105 = !DIGlobalVariable(name: "CCTKARGNUM_shift_state", scope: !49, file: !1, line: 17, type: !8, isLocal: true, isDefinition: true, variable: i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_shift_state)
!106 = !DIGlobalVariable(name: "CCTKARGNUM_x", scope: !49, file: !1, line: 17, type: !8, isLocal: true, isDefinition: true, variable: i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_x)
!107 = !DIGlobalVariable(name: "CCTKARGNUM_y", scope: !49, file: !1, line: 17, type: !8, isLocal: true, isDefinition: true, variable: i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_y)
!108 = !DIGlobalVariable(name: "CCTKARGNUM_z", scope: !49, file: !1, line: 17, type: !8, isLocal: true, isDefinition: true, variable: i32* @CCTKi_BindingsFortranWrapperIDLinearWaves.CCTKARGNUM_z)
!109 = !{i32 2, !"Dwarf Version", i32 2}
!110 = !{i32 2, !"Debug Info Version", i32 700000003}
!111 = !{i32 1, !"PIC Level", i32 2}
!112 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!113 = !DIExpression()
!114 = !DILocation(line: 13, column: 52, scope: !49)
!115 = !DILocation(line: 13, column: 62, scope: !49)
!116 = !DILocation(line: 18, column: 3, scope: !117)
!117 = distinct !DILexicalBlock(scope: !49, file: !1, line: 18, column: 3)
!118 = !{!119, !119, i64 0}
!119 = !{!"int", !120, i64 0}
!120 = !{!"omnipotent char", !121, i64 0}
!121 = !{!"Simple C/C++ TBAA"}
!122 = !DILocation(line: 18, column: 3, scope: !49)
!123 = !DILocation(line: 18, column: 3, scope: !124)
!124 = distinct !DILexicalBlock(scope: !49, file: !1, line: 18, column: 3)
!125 = !DILocation(line: 18, column: 3, scope: !126)
!126 = distinct !DILexicalBlock(scope: !49, file: !1, line: 18, column: 3)
!127 = !DILocation(line: 18, column: 3, scope: !128)
!128 = distinct !DILexicalBlock(scope: !49, file: !1, line: 18, column: 3)
!129 = !DILocation(line: 18, column: 3, scope: !130)
!130 = distinct !DILexicalBlock(scope: !49, file: !1, line: 18, column: 3)
!131 = !DILocation(line: 18, column: 3, scope: !132)
!132 = distinct !DILexicalBlock(scope: !49, file: !1, line: 18, column: 3)
!133 = !DILocation(line: 18, column: 3, scope: !134)
!134 = distinct !DILexicalBlock(scope: !49, file: !1, line: 18, column: 3)
!135 = !DILocation(line: 18, column: 3, scope: !136)
!136 = distinct !DILexicalBlock(scope: !49, file: !1, line: 18, column: 3)
!137 = !DILocation(line: 18, column: 3, scope: !138)
!138 = distinct !DILexicalBlock(scope: !49, file: !1, line: 18, column: 3)
!139 = !DILocation(line: 18, column: 3, scope: !140)
!140 = distinct !DILexicalBlock(scope: !49, file: !1, line: 18, column: 3)
!141 = !DILocation(line: 18, column: 3, scope: !142)
!142 = distinct !DILexicalBlock(scope: !49, file: !1, line: 18, column: 3)
!143 = !DILocation(line: 18, column: 3, scope: !144)
!144 = distinct !DILexicalBlock(scope: !49, file: !1, line: 18, column: 3)
!145 = !DILocation(line: 18, column: 3, scope: !146)
!146 = distinct !DILexicalBlock(scope: !49, file: !1, line: 18, column: 3)
!147 = !DILocation(line: 18, column: 3, scope: !148)
!148 = distinct !DILexicalBlock(scope: !49, file: !1, line: 18, column: 3)
!149 = !DILocation(line: 18, column: 3, scope: !150)
!150 = distinct !DILexicalBlock(scope: !49, file: !1, line: 18, column: 3)
!151 = !DILocation(line: 18, column: 3, scope: !152)
!152 = distinct !DILexicalBlock(scope: !49, file: !1, line: 18, column: 3)
!153 = !DILocation(line: 18, column: 3, scope: !154)
!154 = distinct !DILexicalBlock(scope: !49, file: !1, line: 18, column: 3)
!155 = !DILocation(line: 18, column: 3, scope: !156)
!156 = distinct !DILexicalBlock(scope: !49, file: !1, line: 18, column: 3)
!157 = !DILocation(line: 18, column: 3, scope: !158)
!158 = distinct !DILexicalBlock(scope: !49, file: !1, line: 18, column: 3)
!159 = !DILocation(line: 18, column: 3, scope: !160)
!160 = distinct !DILexicalBlock(scope: !49, file: !1, line: 18, column: 3)
!161 = !DILocation(line: 18, column: 3, scope: !162)
!162 = distinct !DILexicalBlock(scope: !49, file: !1, line: 18, column: 3)
!163 = !DILocation(line: 18, column: 3, scope: !164)
!164 = distinct !DILexicalBlock(scope: !49, file: !1, line: 18, column: 3)
!165 = !DILocation(line: 18, column: 3, scope: !166)
!166 = distinct !DILexicalBlock(scope: !49, file: !1, line: 18, column: 3)
!167 = !DILocation(line: 18, column: 3, scope: !168)
!168 = distinct !DILexicalBlock(scope: !49, file: !1, line: 18, column: 3)
!169 = !DILocation(line: 18, column: 3, scope: !170)
!170 = distinct !DILexicalBlock(scope: !49, file: !1, line: 18, column: 3)
!171 = !DILocation(line: 18, column: 3, scope: !172)
!172 = distinct !DILexicalBlock(scope: !49, file: !1, line: 18, column: 3)
!173 = !DILocation(line: 18, column: 3, scope: !174)
!174 = distinct !DILexicalBlock(scope: !49, file: !1, line: 18, column: 3)
!175 = !DILocation(line: 18, column: 3, scope: !176)
!176 = distinct !DILexicalBlock(scope: !49, file: !1, line: 18, column: 3)
!177 = !DILocation(line: 18, column: 3, scope: !178)
!178 = distinct !DILexicalBlock(scope: !49, file: !1, line: 18, column: 3)
!179 = !DILocation(line: 18, column: 3, scope: !180)
!180 = distinct !DILexicalBlock(scope: !49, file: !1, line: 18, column: 3)
!181 = !DILocation(line: 18, column: 3, scope: !182)
!182 = distinct !DILexicalBlock(scope: !49, file: !1, line: 18, column: 3)
!183 = !DILocation(line: 18, column: 3, scope: !184)
!184 = distinct !DILexicalBlock(scope: !49, file: !1, line: 18, column: 3)
!185 = !DILocation(line: 18, column: 3, scope: !186)
!186 = distinct !DILexicalBlock(scope: !49, file: !1, line: 18, column: 3)
!187 = !DILocation(line: 18, column: 3, scope: !188)
!188 = distinct !DILexicalBlock(scope: !49, file: !1, line: 18, column: 3)
!189 = !DILocation(line: 18, column: 3, scope: !190)
!190 = distinct !DILexicalBlock(scope: !49, file: !1, line: 18, column: 3)
!191 = !DILocation(line: 18, column: 3, scope: !192)
!192 = distinct !DILexicalBlock(scope: !49, file: !1, line: 18, column: 3)
!193 = !DILocation(line: 18, column: 3, scope: !194)
!194 = distinct !DILexicalBlock(scope: !49, file: !1, line: 18, column: 3)
!195 = !DILocation(line: 18, column: 3, scope: !196)
!196 = distinct !DILexicalBlock(scope: !49, file: !1, line: 18, column: 3)
!197 = !DILocation(line: 18, column: 3, scope: !198)
!198 = distinct !DILexicalBlock(scope: !49, file: !1, line: 18, column: 3)
!199 = !DILocation(line: 18, column: 3, scope: !200)
!200 = distinct !DILexicalBlock(scope: !49, file: !1, line: 18, column: 3)
!201 = !DILocation(line: 18, column: 3, scope: !202)
!202 = distinct !DILexicalBlock(scope: !49, file: !1, line: 18, column: 3)
!203 = !DILocation(line: 18, column: 3, scope: !204)
!204 = distinct !DILexicalBlock(scope: !49, file: !1, line: 18, column: 3)
!205 = !DILocation(line: 18, column: 3, scope: !206)
!206 = distinct !DILexicalBlock(scope: !49, file: !1, line: 18, column: 3)
!207 = !DILocation(line: 18, column: 3, scope: !208)
!208 = distinct !DILexicalBlock(scope: !49, file: !1, line: 18, column: 3)
!209 = !DILocation(line: 18, column: 3, scope: !210)
!210 = distinct !DILexicalBlock(scope: !49, file: !1, line: 18, column: 3)
!211 = !DILocation(line: 18, column: 3, scope: !212)
!212 = distinct !DILexicalBlock(scope: !49, file: !1, line: 18, column: 3)
!213 = !DILocation(line: 18, column: 3, scope: !214)
!214 = distinct !DILexicalBlock(scope: !49, file: !1, line: 18, column: 3)
!215 = !DILocation(line: 18, column: 3, scope: !216)
!216 = distinct !DILexicalBlock(scope: !49, file: !1, line: 18, column: 3)
!217 = !DILocation(line: 18, column: 3, scope: !218)
!218 = distinct !DILexicalBlock(scope: !49, file: !1, line: 18, column: 3)
!219 = !DILocation(line: 18, column: 3, scope: !220)
!220 = distinct !DILexicalBlock(scope: !49, file: !1, line: 18, column: 3)
!221 = !DILocation(line: 18, column: 3, scope: !222)
!222 = distinct !DILexicalBlock(scope: !49, file: !1, line: 18, column: 3)
!223 = !DILocation(line: 18, column: 3, scope: !224)
!224 = distinct !DILexicalBlock(scope: !49, file: !1, line: 18, column: 3)
!225 = !DILocation(line: 20, column: 14, scope: !49)
!226 = !DILocation(line: 15, column: 10, scope: !49)
!227 = !DILocation(line: 22, column: 12, scope: !49)
!228 = !{!229, !230, i64 8}
!229 = !{!"", !119, i64 0, !119, i64 4, !230, i64 8, !230, i64 16, !230, i64 24, !230, i64 32, !230, i64 40, !230, i64 48, !230, i64 56, !231, i64 64, !230, i64 72, !230, i64 80, !230, i64 88, !230, i64 96, !119, i64 104, !230, i64 112, !231, i64 120, !230, i64 128, !230, i64 136, !230, i64 144}
!230 = !{!"any pointer", !120, i64 0}
!231 = !{!"double", !120, i64 0}
!232 = !{!229, !230, i64 16}
!233 = !{!229, !230, i64 24}
!234 = !{!229, !230, i64 32}
!235 = !{!229, !230, i64 40}
!236 = !{!229, !230, i64 56}
!237 = !{!229, !230, i64 48}
!238 = !{!229, !230, i64 88}
!239 = !{!229, !230, i64 72}
!240 = !{!229, !230, i64 80}
!241 = !{!229, !230, i64 96}
!242 = !{!229, !230, i64 112}
!243 = !{!229, !230, i64 128}
!244 = !{!230, !230, i64 0}
!245 = !DILocation(line: 22, column: 3, scope: !49)
!246 = !DILocation(line: 24, column: 3, scope: !49)
