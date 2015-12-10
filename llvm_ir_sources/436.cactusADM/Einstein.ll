; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/CactusBindings/Einstein.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

@.str = private unnamed_addr constant [6 x i8] c"FLAGS\00", align 1
@.str1 = private unnamed_addr constant [9 x i8] c"EINSTEIN\00", align 1
@.str2 = private unnamed_addr constant [7 x i8] c"SCALAR\00", align 1
@.str3 = private unnamed_addr constant [4 x i8] c"INT\00", align 1
@.str4 = private unnamed_addr constant [7 x i8] c"PUBLIC\00", align 1
@.str5 = private unnamed_addr constant [5 x i8] c"NONE\00", align 1
@.str6 = private unnamed_addr constant [8 x i8] c"DEFAULT\00", align 1
@.str7 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str8 = private unnamed_addr constant [12 x i8] c"shift_state\00", align 1
@.str9 = private unnamed_addr constant [16 x i8] c"conformal_state\00", align 1
@.str10 = private unnamed_addr constant [19 x i8] c"allow_mixeddim_gfs\00", align 1
@.str11 = private unnamed_addr constant [7 x i8] c"Cactus\00", align 1
@.str12 = private unnamed_addr constant [85 x i8] c"../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/CactusBindings/Einstein.c\00", align 1
@.str13 = private unnamed_addr constant [101 x i8] c"CCTKi_CreateGroup: Working dimension already set, creating GF group flags with different dimension 1\00", align 1
@.str14 = private unnamed_addr constant [96 x i8] c"CCTKi_CreateGroup: Working dimension already set, cannot create GF group flags with dimension 1\00", align 1
@.str15 = private unnamed_addr constant [14 x i8] c"SLICING_FLAGS\00", align 1
@.str16 = private unnamed_addr constant [22 x i8] c"active_slicing_handle\00", align 1
@.str17 = private unnamed_addr constant [109 x i8] c"CCTKi_CreateGroup: Working dimension already set, creating GF group slicing_flags with different dimension 1\00", align 1
@.str18 = private unnamed_addr constant [104 x i8] c"CCTKi_CreateGroup: Working dimension already set, cannot create GF group slicing_flags with dimension 1\00", align 1
@.str19 = private unnamed_addr constant [7 x i8] c"METRIC\00", align 1
@.str20 = private unnamed_addr constant [3 x i8] c"GF\00", align 1
@.str21 = private unnamed_addr constant [5 x i8] c"REAL\00", align 1
@.str22 = private unnamed_addr constant [4 x i8] c"gxx\00", align 1
@.str23 = private unnamed_addr constant [4 x i8] c"gxy\00", align 1
@.str24 = private unnamed_addr constant [4 x i8] c"gxz\00", align 1
@.str25 = private unnamed_addr constant [4 x i8] c"gyy\00", align 1
@.str26 = private unnamed_addr constant [4 x i8] c"gyz\00", align 1
@.str27 = private unnamed_addr constant [4 x i8] c"gzz\00", align 1
@.str28 = private unnamed_addr constant [102 x i8] c"CCTKi_CreateGroup: Working dimension already set, creating GF group metric with different dimension 3\00", align 1
@.str29 = private unnamed_addr constant [97 x i8] c"CCTKi_CreateGroup: Working dimension already set, cannot create GF group metric with dimension 3\00", align 1
@.str30 = private unnamed_addr constant [5 x i8] c"CURV\00", align 1
@.str31 = private unnamed_addr constant [4 x i8] c"kxx\00", align 1
@.str32 = private unnamed_addr constant [4 x i8] c"kxy\00", align 1
@.str33 = private unnamed_addr constant [4 x i8] c"kxz\00", align 1
@.str34 = private unnamed_addr constant [4 x i8] c"kyy\00", align 1
@.str35 = private unnamed_addr constant [4 x i8] c"kyz\00", align 1
@.str36 = private unnamed_addr constant [4 x i8] c"kzz\00", align 1
@.str37 = private unnamed_addr constant [100 x i8] c"CCTKi_CreateGroup: Working dimension already set, creating GF group curv with different dimension 3\00", align 1
@.str38 = private unnamed_addr constant [95 x i8] c"CCTKi_CreateGroup: Working dimension already set, cannot create GF group curv with dimension 3\00", align 1
@.str39 = private unnamed_addr constant [6 x i8] c"LAPSE\00", align 1
@.str40 = private unnamed_addr constant [4 x i8] c"alp\00", align 1
@.str41 = private unnamed_addr constant [101 x i8] c"CCTKi_CreateGroup: Working dimension already set, creating GF group lapse with different dimension 3\00", align 1
@.str42 = private unnamed_addr constant [96 x i8] c"CCTKi_CreateGroup: Working dimension already set, cannot create GF group lapse with dimension 3\00", align 1
@.str43 = private unnamed_addr constant [6 x i8] c"SHIFT\00", align 1
@.str44 = private unnamed_addr constant [6 x i8] c"betax\00", align 1
@.str45 = private unnamed_addr constant [6 x i8] c"betay\00", align 1
@.str46 = private unnamed_addr constant [6 x i8] c"betaz\00", align 1
@.str47 = private unnamed_addr constant [101 x i8] c"CCTKi_CreateGroup: Working dimension already set, creating GF group shift with different dimension 3\00", align 1
@.str48 = private unnamed_addr constant [96 x i8] c"CCTKi_CreateGroup: Working dimension already set, cannot create GF group shift with dimension 3\00", align 1
@.str49 = private unnamed_addr constant [7 x i8] c"CONFAC\00", align 1
@.str50 = private unnamed_addr constant [4 x i8] c"psi\00", align 1
@.str51 = private unnamed_addr constant [102 x i8] c"CCTKi_CreateGroup: Working dimension already set, creating GF group confac with different dimension 3\00", align 1
@.str52 = private unnamed_addr constant [97 x i8] c"CCTKi_CreateGroup: Working dimension already set, cannot create GF group confac with dimension 3\00", align 1
@.str53 = private unnamed_addr constant [15 x i8] c"CONFAC_1DERIVS\00", align 1
@.str54 = private unnamed_addr constant [5 x i8] c"psix\00", align 1
@.str55 = private unnamed_addr constant [5 x i8] c"psiy\00", align 1
@.str56 = private unnamed_addr constant [5 x i8] c"psiz\00", align 1
@.str57 = private unnamed_addr constant [110 x i8] c"CCTKi_CreateGroup: Working dimension already set, creating GF group confac_1derivs with different dimension 3\00", align 1
@.str58 = private unnamed_addr constant [105 x i8] c"CCTKi_CreateGroup: Working dimension already set, cannot create GF group confac_1derivs with dimension 3\00", align 1
@.str59 = private unnamed_addr constant [15 x i8] c"CONFAC_2DERIVS\00", align 1
@.str60 = private unnamed_addr constant [6 x i8] c"psixx\00", align 1
@.str61 = private unnamed_addr constant [6 x i8] c"psixy\00", align 1
@.str62 = private unnamed_addr constant [6 x i8] c"psixz\00", align 1
@.str63 = private unnamed_addr constant [6 x i8] c"psiyy\00", align 1
@.str64 = private unnamed_addr constant [6 x i8] c"psiyz\00", align 1
@.str65 = private unnamed_addr constant [6 x i8] c"psizz\00", align 1
@.str66 = private unnamed_addr constant [110 x i8] c"CCTKi_CreateGroup: Working dimension already set, creating GF group confac_2derivs with different dimension 3\00", align 1
@.str67 = private unnamed_addr constant [105 x i8] c"CCTKi_CreateGroup: Working dimension already set, cannot create GF group confac_2derivs with dimension 3\00", align 1
@.str68 = private unnamed_addr constant [5 x i8] c"MASK\00", align 1
@.str69 = private unnamed_addr constant [6 x i8] c"emask\00", align 1
@.str70 = private unnamed_addr constant [100 x i8] c"CCTKi_CreateGroup: Working dimension already set, creating GF group mask with different dimension 3\00", align 1
@.str71 = private unnamed_addr constant [95 x i8] c"CCTKi_CreateGroup: Working dimension already set, cannot create GF group mask with dimension 3\00", align 1
@.str72 = private unnamed_addr constant [11 x i8] c"TRACE_OF_K\00", align 1
@.str73 = private unnamed_addr constant [8 x i8] c"PRIVATE\00", align 1
@.str74 = private unnamed_addr constant [4 x i8] c"trK\00", align 1
@.str75 = private unnamed_addr constant [106 x i8] c"CCTKi_CreateGroup: Working dimension already set, creating GF group trace_of_K with different dimension 3\00", align 1
@.str76 = private unnamed_addr constant [101 x i8] c"CCTKi_CreateGroup: Working dimension already set, cannot create GF group trace_of_K with dimension 3\00", align 1
@.str77 = private unnamed_addr constant [7 x i8] c"DETOFG\00", align 1
@.str78 = private unnamed_addr constant [5 x i8] c"detg\00", align 1
@.str79 = private unnamed_addr constant [102 x i8] c"CCTKi_CreateGroup: Working dimension already set, creating GF group detofg with different dimension 3\00", align 1
@.str80 = private unnamed_addr constant [97 x i8] c"CCTKi_CreateGroup: Working dimension already set, cannot create GF group detofg with dimension 3\00", align 1
@.str81 = private unnamed_addr constant [17 x i8] c"SPHERICAL_METRIC\00", align 1
@.str82 = private unnamed_addr constant [4 x i8] c"grr\00", align 1
@.str83 = private unnamed_addr constant [4 x i8] c"gqq\00", align 1
@.str84 = private unnamed_addr constant [4 x i8] c"gpp\00", align 1
@.str85 = private unnamed_addr constant [4 x i8] c"grq\00", align 1
@.str86 = private unnamed_addr constant [4 x i8] c"grp\00", align 1
@.str87 = private unnamed_addr constant [4 x i8] c"gqp\00", align 1
@.str88 = private unnamed_addr constant [112 x i8] c"CCTKi_CreateGroup: Working dimension already set, creating GF group spherical_metric with different dimension 3\00", align 1
@.str89 = private unnamed_addr constant [107 x i8] c"CCTKi_CreateGroup: Working dimension already set, cannot create GF group spherical_metric with dimension 3\00", align 1
@.str90 = private unnamed_addr constant [15 x i8] c"SPHERICAL_CURV\00", align 1
@.str91 = private unnamed_addr constant [4 x i8] c"krr\00", align 1
@.str92 = private unnamed_addr constant [4 x i8] c"kqq\00", align 1
@.str93 = private unnamed_addr constant [4 x i8] c"kpp\00", align 1
@.str94 = private unnamed_addr constant [4 x i8] c"krq\00", align 1
@.str95 = private unnamed_addr constant [4 x i8] c"krp\00", align 1
@.str96 = private unnamed_addr constant [4 x i8] c"kqp\00", align 1
@.str97 = private unnamed_addr constant [110 x i8] c"CCTKi_CreateGroup: Working dimension already set, creating GF group spherical_curv with different dimension 3\00", align 1
@.str98 = private unnamed_addr constant [105 x i8] c"CCTKi_CreateGroup: Working dimension already set, cannot create GF group spherical_curv with dimension 3\00", align 1
@.str99 = private unnamed_addr constant [9 x i8] c"Einstein\00", align 1

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CactusBindingsVariables_Einstein_Initialise() #0 {
  %param_type = alloca i32, align 4
  %param_type1 = alloca i32, align 4
  %param_type3 = alloca i32, align 4
  %param_type5 = alloca i32, align 4
  %param_type7 = alloca i32, align 4
  %param_type9 = alloca i32, align 4
  %param_type11 = alloca i32, align 4
  %param_type13 = alloca i32, align 4
  %param_type15 = alloca i32, align 4
  %param_type17 = alloca i32, align 4
  %param_type19 = alloca i32, align 4
  %param_type21 = alloca i32, align 4
  %param_type23 = alloca i32, align 4
  %param_type25 = alloca i32, align 4
  %1 = tail call i32 (i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i8*, i8*, i8*, i8*, i32, ...)* @CCTKi_CreateGroup(i8* getelementptr inbounds ([6 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str4, i64 0, i64 0), i32 1, i32 1, i8* getelementptr inbounds ([5 x i8]* @.str5, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str6, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str7, i64 0, i64 0), i32 2, i8* getelementptr inbounds ([12 x i8]* @.str8, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8]* @.str9, i64 0, i64 0)) #2
  %2 = icmp eq i32 %1, 1
  br i1 %2, label %3, label %12

; <label>:3                                       ; preds = %0
  %4 = call i8* @CCTK_ParameterGet(i8* getelementptr inbounds ([19 x i8]* @.str10, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str11, i64 0, i64 0), i32* %param_type) #2
  %5 = bitcast i8* %4 to i32*
  %6 = load i32* %5, align 4, !tbaa !2
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

; <label>:8                                       ; preds = %3
  %9 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 2, i32 32, i8* getelementptr inbounds ([85 x i8]* @.str12, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str11, i64 0, i64 0), i8* getelementptr inbounds ([101 x i8]* @.str13, i64 0, i64 0)) #2
  br label %12

; <label>:10                                      ; preds = %3
  %11 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 0, i32 38, i8* getelementptr inbounds ([85 x i8]* @.str12, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str11, i64 0, i64 0), i8* getelementptr inbounds ([96 x i8]* @.str14, i64 0, i64 0)) #2
  br label %12

; <label>:12                                      ; preds = %8, %10, %0
  %13 = call i32 (i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i8*, i8*, i8*, i8*, i32, ...)* @CCTKi_CreateGroup(i8* getelementptr inbounds ([14 x i8]* @.str15, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str4, i64 0, i64 0), i32 1, i32 1, i8* getelementptr inbounds ([5 x i8]* @.str5, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str6, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str7, i64 0, i64 0), i32 1, i8* getelementptr inbounds ([22 x i8]* @.str16, i64 0, i64 0)) #2
  %14 = icmp eq i32 %13, 1
  br i1 %14, label %15, label %24

; <label>:15                                      ; preds = %12
  %16 = call i8* @CCTK_ParameterGet(i8* getelementptr inbounds ([19 x i8]* @.str10, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str11, i64 0, i64 0), i32* %param_type1) #2
  %17 = bitcast i8* %16 to i32*
  %18 = load i32* %17, align 4, !tbaa !2
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %22, label %20

; <label>:20                                      ; preds = %15
  %21 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 2, i32 63, i8* getelementptr inbounds ([85 x i8]* @.str12, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str11, i64 0, i64 0), i8* getelementptr inbounds ([109 x i8]* @.str17, i64 0, i64 0)) #2
  br label %24

; <label>:22                                      ; preds = %15
  %23 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 0, i32 69, i8* getelementptr inbounds ([85 x i8]* @.str12, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str11, i64 0, i64 0), i8* getelementptr inbounds ([104 x i8]* @.str18, i64 0, i64 0)) #2
  br label %24

; <label>:24                                      ; preds = %20, %22, %12
  %25 = call i32 (i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i8*, i8*, i8*, i8*, i32, ...)* @CCTKi_CreateGroup(i8* getelementptr inbounds ([7 x i8]* @.str19, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8]* @.str20, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str21, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str4, i64 0, i64 0), i32 3, i32 1, i8* getelementptr inbounds ([5 x i8]* @.str5, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str6, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str7, i64 0, i64 0), i32 6, i8* getelementptr inbounds ([4 x i8]* @.str22, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8]* @.str23, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8]* @.str24, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8]* @.str25, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8]* @.str26, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8]* @.str27, i64 0, i64 0)) #2
  %26 = icmp eq i32 %25, 1
  br i1 %26, label %27, label %36

; <label>:27                                      ; preds = %24
  %28 = call i8* @CCTK_ParameterGet(i8* getelementptr inbounds ([19 x i8]* @.str10, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str11, i64 0, i64 0), i32* %param_type3) #2
  %29 = bitcast i8* %28 to i32*
  %30 = load i32* %29, align 4, !tbaa !2
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %34, label %32

; <label>:32                                      ; preds = %27
  %33 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 2, i32 99, i8* getelementptr inbounds ([85 x i8]* @.str12, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str11, i64 0, i64 0), i8* getelementptr inbounds ([102 x i8]* @.str28, i64 0, i64 0)) #2
  br label %36

; <label>:34                                      ; preds = %27
  %35 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 0, i32 105, i8* getelementptr inbounds ([85 x i8]* @.str12, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str11, i64 0, i64 0), i8* getelementptr inbounds ([97 x i8]* @.str29, i64 0, i64 0)) #2
  br label %36

; <label>:36                                      ; preds = %32, %34, %24
  %37 = call i32 (i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i8*, i8*, i8*, i8*, i32, ...)* @CCTKi_CreateGroup(i8* getelementptr inbounds ([5 x i8]* @.str30, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8]* @.str20, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str21, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str4, i64 0, i64 0), i32 3, i32 1, i8* getelementptr inbounds ([5 x i8]* @.str5, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str6, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str7, i64 0, i64 0), i32 6, i8* getelementptr inbounds ([4 x i8]* @.str31, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8]* @.str32, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8]* @.str33, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8]* @.str34, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8]* @.str35, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8]* @.str36, i64 0, i64 0)) #2
  %38 = icmp eq i32 %37, 1
  br i1 %38, label %39, label %48

; <label>:39                                      ; preds = %36
  %40 = call i8* @CCTK_ParameterGet(i8* getelementptr inbounds ([19 x i8]* @.str10, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str11, i64 0, i64 0), i32* %param_type5) #2
  %41 = bitcast i8* %40 to i32*
  %42 = load i32* %41, align 4, !tbaa !2
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %46, label %44

; <label>:44                                      ; preds = %39
  %45 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 2, i32 135, i8* getelementptr inbounds ([85 x i8]* @.str12, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str11, i64 0, i64 0), i8* getelementptr inbounds ([100 x i8]* @.str37, i64 0, i64 0)) #2
  br label %48

; <label>:46                                      ; preds = %39
  %47 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 0, i32 141, i8* getelementptr inbounds ([85 x i8]* @.str12, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str11, i64 0, i64 0), i8* getelementptr inbounds ([95 x i8]* @.str38, i64 0, i64 0)) #2
  br label %48

; <label>:48                                      ; preds = %44, %46, %36
  %49 = call i32 (i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i8*, i8*, i8*, i8*, i32, ...)* @CCTKi_CreateGroup(i8* getelementptr inbounds ([6 x i8]* @.str39, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8]* @.str20, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str21, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str4, i64 0, i64 0), i32 3, i32 1, i8* getelementptr inbounds ([5 x i8]* @.str5, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str6, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str7, i64 0, i64 0), i32 1, i8* getelementptr inbounds ([4 x i8]* @.str40, i64 0, i64 0)) #2
  %50 = icmp eq i32 %49, 1
  br i1 %50, label %51, label %60

; <label>:51                                      ; preds = %48
  %52 = call i8* @CCTK_ParameterGet(i8* getelementptr inbounds ([19 x i8]* @.str10, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str11, i64 0, i64 0), i32* %param_type7) #2
  %53 = bitcast i8* %52 to i32*
  %54 = load i32* %53, align 4, !tbaa !2
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %58, label %56

; <label>:56                                      ; preds = %51
  %57 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 2, i32 166, i8* getelementptr inbounds ([85 x i8]* @.str12, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str11, i64 0, i64 0), i8* getelementptr inbounds ([101 x i8]* @.str41, i64 0, i64 0)) #2
  br label %60

; <label>:58                                      ; preds = %51
  %59 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 0, i32 172, i8* getelementptr inbounds ([85 x i8]* @.str12, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str11, i64 0, i64 0), i8* getelementptr inbounds ([96 x i8]* @.str42, i64 0, i64 0)) #2
  br label %60

; <label>:60                                      ; preds = %56, %58, %48
  %61 = call i32 (i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i8*, i8*, i8*, i8*, i32, ...)* @CCTKi_CreateGroup(i8* getelementptr inbounds ([6 x i8]* @.str43, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8]* @.str20, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str21, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str4, i64 0, i64 0), i32 3, i32 1, i8* getelementptr inbounds ([5 x i8]* @.str5, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str6, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str7, i64 0, i64 0), i32 3, i8* getelementptr inbounds ([6 x i8]* @.str44, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8]* @.str45, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8]* @.str46, i64 0, i64 0)) #2
  %62 = icmp eq i32 %61, 1
  br i1 %62, label %63, label %72

; <label>:63                                      ; preds = %60
  %64 = call i8* @CCTK_ParameterGet(i8* getelementptr inbounds ([19 x i8]* @.str10, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str11, i64 0, i64 0), i32* %param_type9) #2
  %65 = bitcast i8* %64 to i32*
  %66 = load i32* %65, align 4, !tbaa !2
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %70, label %68

; <label>:68                                      ; preds = %63
  %69 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 2, i32 199, i8* getelementptr inbounds ([85 x i8]* @.str12, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str11, i64 0, i64 0), i8* getelementptr inbounds ([101 x i8]* @.str47, i64 0, i64 0)) #2
  br label %72

; <label>:70                                      ; preds = %63
  %71 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 0, i32 205, i8* getelementptr inbounds ([85 x i8]* @.str12, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str11, i64 0, i64 0), i8* getelementptr inbounds ([96 x i8]* @.str48, i64 0, i64 0)) #2
  br label %72

; <label>:72                                      ; preds = %68, %70, %60
  %73 = call i32 (i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i8*, i8*, i8*, i8*, i32, ...)* @CCTKi_CreateGroup(i8* getelementptr inbounds ([7 x i8]* @.str49, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8]* @.str20, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str21, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str4, i64 0, i64 0), i32 3, i32 1, i8* getelementptr inbounds ([5 x i8]* @.str5, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str6, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str7, i64 0, i64 0), i32 1, i8* getelementptr inbounds ([4 x i8]* @.str50, i64 0, i64 0)) #2
  %74 = icmp eq i32 %73, 1
  br i1 %74, label %75, label %84

; <label>:75                                      ; preds = %72
  %76 = call i8* @CCTK_ParameterGet(i8* getelementptr inbounds ([19 x i8]* @.str10, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str11, i64 0, i64 0), i32* %param_type11) #2
  %77 = bitcast i8* %76 to i32*
  %78 = load i32* %77, align 4, !tbaa !2
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %82, label %80

; <label>:80                                      ; preds = %75
  %81 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 2, i32 230, i8* getelementptr inbounds ([85 x i8]* @.str12, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str11, i64 0, i64 0), i8* getelementptr inbounds ([102 x i8]* @.str51, i64 0, i64 0)) #2
  br label %84

; <label>:82                                      ; preds = %75
  %83 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 0, i32 236, i8* getelementptr inbounds ([85 x i8]* @.str12, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str11, i64 0, i64 0), i8* getelementptr inbounds ([97 x i8]* @.str52, i64 0, i64 0)) #2
  br label %84

; <label>:84                                      ; preds = %80, %82, %72
  %85 = call i32 (i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i8*, i8*, i8*, i8*, i32, ...)* @CCTKi_CreateGroup(i8* getelementptr inbounds ([15 x i8]* @.str53, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8]* @.str20, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str21, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str4, i64 0, i64 0), i32 3, i32 1, i8* getelementptr inbounds ([5 x i8]* @.str5, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str6, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str7, i64 0, i64 0), i32 3, i8* getelementptr inbounds ([5 x i8]* @.str54, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str55, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str56, i64 0, i64 0)) #2
  %86 = icmp eq i32 %85, 1
  br i1 %86, label %87, label %96

; <label>:87                                      ; preds = %84
  %88 = call i8* @CCTK_ParameterGet(i8* getelementptr inbounds ([19 x i8]* @.str10, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str11, i64 0, i64 0), i32* %param_type13) #2
  %89 = bitcast i8* %88 to i32*
  %90 = load i32* %89, align 4, !tbaa !2
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %94, label %92

; <label>:92                                      ; preds = %87
  %93 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 2, i32 263, i8* getelementptr inbounds ([85 x i8]* @.str12, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str11, i64 0, i64 0), i8* getelementptr inbounds ([110 x i8]* @.str57, i64 0, i64 0)) #2
  br label %96

; <label>:94                                      ; preds = %87
  %95 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 0, i32 269, i8* getelementptr inbounds ([85 x i8]* @.str12, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str11, i64 0, i64 0), i8* getelementptr inbounds ([105 x i8]* @.str58, i64 0, i64 0)) #2
  br label %96

; <label>:96                                      ; preds = %92, %94, %84
  %97 = call i32 (i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i8*, i8*, i8*, i8*, i32, ...)* @CCTKi_CreateGroup(i8* getelementptr inbounds ([15 x i8]* @.str59, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8]* @.str20, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str21, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str4, i64 0, i64 0), i32 3, i32 1, i8* getelementptr inbounds ([5 x i8]* @.str5, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str6, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str7, i64 0, i64 0), i32 6, i8* getelementptr inbounds ([6 x i8]* @.str60, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8]* @.str61, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8]* @.str62, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8]* @.str63, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8]* @.str64, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8]* @.str65, i64 0, i64 0)) #2
  %98 = icmp eq i32 %97, 1
  br i1 %98, label %99, label %108

; <label>:99                                      ; preds = %96
  %100 = call i8* @CCTK_ParameterGet(i8* getelementptr inbounds ([19 x i8]* @.str10, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str11, i64 0, i64 0), i32* %param_type15) #2
  %101 = bitcast i8* %100 to i32*
  %102 = load i32* %101, align 4, !tbaa !2
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %106, label %104

; <label>:104                                     ; preds = %99
  %105 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 2, i32 299, i8* getelementptr inbounds ([85 x i8]* @.str12, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str11, i64 0, i64 0), i8* getelementptr inbounds ([110 x i8]* @.str66, i64 0, i64 0)) #2
  br label %108

; <label>:106                                     ; preds = %99
  %107 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 0, i32 305, i8* getelementptr inbounds ([85 x i8]* @.str12, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str11, i64 0, i64 0), i8* getelementptr inbounds ([105 x i8]* @.str67, i64 0, i64 0)) #2
  br label %108

; <label>:108                                     ; preds = %104, %106, %96
  %109 = call i32 (i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i8*, i8*, i8*, i8*, i32, ...)* @CCTKi_CreateGroup(i8* getelementptr inbounds ([5 x i8]* @.str68, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8]* @.str20, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str21, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str4, i64 0, i64 0), i32 3, i32 1, i8* getelementptr inbounds ([5 x i8]* @.str5, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str6, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str7, i64 0, i64 0), i32 1, i8* getelementptr inbounds ([6 x i8]* @.str69, i64 0, i64 0)) #2
  %110 = icmp eq i32 %109, 1
  br i1 %110, label %111, label %120

; <label>:111                                     ; preds = %108
  %112 = call i8* @CCTK_ParameterGet(i8* getelementptr inbounds ([19 x i8]* @.str10, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str11, i64 0, i64 0), i32* %param_type17) #2
  %113 = bitcast i8* %112 to i32*
  %114 = load i32* %113, align 4, !tbaa !2
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %118, label %116

; <label>:116                                     ; preds = %111
  %117 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 2, i32 330, i8* getelementptr inbounds ([85 x i8]* @.str12, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str11, i64 0, i64 0), i8* getelementptr inbounds ([100 x i8]* @.str70, i64 0, i64 0)) #2
  br label %120

; <label>:118                                     ; preds = %111
  %119 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 0, i32 336, i8* getelementptr inbounds ([85 x i8]* @.str12, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str11, i64 0, i64 0), i8* getelementptr inbounds ([95 x i8]* @.str71, i64 0, i64 0)) #2
  br label %120

; <label>:120                                     ; preds = %116, %118, %108
  %121 = call i32 (i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i8*, i8*, i8*, i8*, i32, ...)* @CCTKi_CreateGroup(i8* getelementptr inbounds ([11 x i8]* @.str72, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8]* @.str20, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str21, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str73, i64 0, i64 0), i32 3, i32 1, i8* getelementptr inbounds ([5 x i8]* @.str5, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str6, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str7, i64 0, i64 0), i32 1, i8* getelementptr inbounds ([4 x i8]* @.str74, i64 0, i64 0)) #2
  %122 = icmp eq i32 %121, 1
  br i1 %122, label %123, label %132

; <label>:123                                     ; preds = %120
  %124 = call i8* @CCTK_ParameterGet(i8* getelementptr inbounds ([19 x i8]* @.str10, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str11, i64 0, i64 0), i32* %param_type19) #2
  %125 = bitcast i8* %124 to i32*
  %126 = load i32* %125, align 4, !tbaa !2
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %130, label %128

; <label>:128                                     ; preds = %123
  %129 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 2, i32 361, i8* getelementptr inbounds ([85 x i8]* @.str12, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str11, i64 0, i64 0), i8* getelementptr inbounds ([106 x i8]* @.str75, i64 0, i64 0)) #2
  br label %132

; <label>:130                                     ; preds = %123
  %131 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 0, i32 367, i8* getelementptr inbounds ([85 x i8]* @.str12, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str11, i64 0, i64 0), i8* getelementptr inbounds ([101 x i8]* @.str76, i64 0, i64 0)) #2
  br label %132

; <label>:132                                     ; preds = %128, %130, %120
  %133 = call i32 (i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i8*, i8*, i8*, i8*, i32, ...)* @CCTKi_CreateGroup(i8* getelementptr inbounds ([7 x i8]* @.str77, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8]* @.str20, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str21, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str73, i64 0, i64 0), i32 3, i32 1, i8* getelementptr inbounds ([5 x i8]* @.str5, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str6, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str7, i64 0, i64 0), i32 1, i8* getelementptr inbounds ([5 x i8]* @.str78, i64 0, i64 0)) #2
  %134 = icmp eq i32 %133, 1
  br i1 %134, label %135, label %144

; <label>:135                                     ; preds = %132
  %136 = call i8* @CCTK_ParameterGet(i8* getelementptr inbounds ([19 x i8]* @.str10, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str11, i64 0, i64 0), i32* %param_type21) #2
  %137 = bitcast i8* %136 to i32*
  %138 = load i32* %137, align 4, !tbaa !2
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %142, label %140

; <label>:140                                     ; preds = %135
  %141 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 2, i32 392, i8* getelementptr inbounds ([85 x i8]* @.str12, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str11, i64 0, i64 0), i8* getelementptr inbounds ([102 x i8]* @.str79, i64 0, i64 0)) #2
  br label %144

; <label>:142                                     ; preds = %135
  %143 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 0, i32 398, i8* getelementptr inbounds ([85 x i8]* @.str12, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str11, i64 0, i64 0), i8* getelementptr inbounds ([97 x i8]* @.str80, i64 0, i64 0)) #2
  br label %144

; <label>:144                                     ; preds = %140, %142, %132
  %145 = call i32 (i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i8*, i8*, i8*, i8*, i32, ...)* @CCTKi_CreateGroup(i8* getelementptr inbounds ([17 x i8]* @.str81, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8]* @.str20, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str21, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str73, i64 0, i64 0), i32 3, i32 1, i8* getelementptr inbounds ([5 x i8]* @.str5, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str6, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str7, i64 0, i64 0), i32 6, i8* getelementptr inbounds ([4 x i8]* @.str82, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8]* @.str83, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8]* @.str84, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8]* @.str85, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8]* @.str86, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8]* @.str87, i64 0, i64 0)) #2
  %146 = icmp eq i32 %145, 1
  br i1 %146, label %147, label %156

; <label>:147                                     ; preds = %144
  %148 = call i8* @CCTK_ParameterGet(i8* getelementptr inbounds ([19 x i8]* @.str10, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str11, i64 0, i64 0), i32* %param_type23) #2
  %149 = bitcast i8* %148 to i32*
  %150 = load i32* %149, align 4, !tbaa !2
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %154, label %152

; <label>:152                                     ; preds = %147
  %153 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 2, i32 428, i8* getelementptr inbounds ([85 x i8]* @.str12, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str11, i64 0, i64 0), i8* getelementptr inbounds ([112 x i8]* @.str88, i64 0, i64 0)) #2
  br label %156

; <label>:154                                     ; preds = %147
  %155 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 0, i32 434, i8* getelementptr inbounds ([85 x i8]* @.str12, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str11, i64 0, i64 0), i8* getelementptr inbounds ([107 x i8]* @.str89, i64 0, i64 0)) #2
  br label %156

; <label>:156                                     ; preds = %152, %154, %144
  %157 = call i32 (i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i8*, i8*, i8*, i8*, i32, ...)* @CCTKi_CreateGroup(i8* getelementptr inbounds ([15 x i8]* @.str90, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8]* @.str20, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str21, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str73, i64 0, i64 0), i32 3, i32 1, i8* getelementptr inbounds ([5 x i8]* @.str5, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str6, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str7, i64 0, i64 0), i32 6, i8* getelementptr inbounds ([4 x i8]* @.str91, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8]* @.str92, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8]* @.str93, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8]* @.str94, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8]* @.str95, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8]* @.str96, i64 0, i64 0)) #2
  %158 = icmp eq i32 %157, 1
  br i1 %158, label %159, label %168

; <label>:159                                     ; preds = %156
  %160 = call i8* @CCTK_ParameterGet(i8* getelementptr inbounds ([19 x i8]* @.str10, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str11, i64 0, i64 0), i32* %param_type25) #2
  %161 = bitcast i8* %160 to i32*
  %162 = load i32* %161, align 4, !tbaa !2
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %166, label %164

; <label>:164                                     ; preds = %159
  %165 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 2, i32 464, i8* getelementptr inbounds ([85 x i8]* @.str12, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str11, i64 0, i64 0), i8* getelementptr inbounds ([110 x i8]* @.str97, i64 0, i64 0)) #2
  br label %168

; <label>:166                                     ; preds = %159
  %167 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 0, i32 470, i8* getelementptr inbounds ([85 x i8]* @.str12, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str11, i64 0, i64 0), i8* getelementptr inbounds ([105 x i8]* @.str98, i64 0, i64 0)) #2
  br label %168

; <label>:168                                     ; preds = %164, %166, %156
  %169 = call i32 @CCTKi_RegisterFortranWrapper(i8* getelementptr inbounds ([9 x i8]* @.str99, i64 0, i64 0), i32 (i8*, i8*)* @CCTKi_BindingsFortranWrapperEinstein) #2
  ret i32 0
}

; Function Attrs: optsize
declare i32 @CCTKi_CreateGroup(i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i8*, i8*, i8*, i8*, i32, ...) #1

; Function Attrs: optsize
declare i8* @CCTK_ParameterGet(i8*, i8*, i32*) #1

; Function Attrs: optsize
declare i32 @CCTK_VWarn(i32, i32, i8*, i8*, i8*, ...) #1

; Function Attrs: optsize
declare i32 @CCTKi_RegisterFortranWrapper(i8*, i32 (i8*, i8*)*) #1

; Function Attrs: optsize
declare i32 @CCTKi_BindingsFortranWrapperEinstein(i8*, i8*) #1

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
