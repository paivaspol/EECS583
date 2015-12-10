; ModuleID = '../../SPEC/benchspec/CPU2006/436.cactusADM/src/CactusBindings/Einstein.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

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
@.str12 = private unnamed_addr constant [73 x i8] c"../../SPEC/benchspec/CPU2006/436.cactusADM/src/CactusBindings/Einstein.c\00", align 1
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

; Function Attrs: nounwind optsize uwtable
define i32 @CactusBindingsVariables_Einstein_Initialise() #0 {
entry:
  %param_type = alloca i32, align 4
  %param_type9 = alloca i32, align 4
  %param_type22 = alloca i32, align 4
  %param_type35 = alloca i32, align 4
  %param_type48 = alloca i32, align 4
  %param_type61 = alloca i32, align 4
  %param_type74 = alloca i32, align 4
  %param_type87 = alloca i32, align 4
  %param_type100 = alloca i32, align 4
  %param_type113 = alloca i32, align 4
  %param_type126 = alloca i32, align 4
  %param_type139 = alloca i32, align 4
  %param_type152 = alloca i32, align 4
  %param_type165 = alloca i32, align 4
  %call = call i32 (i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i8*, i8*, i8*, i8*, i32, ...)* @CCTKi_CreateGroup(i8* getelementptr inbounds ([6 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str4, i64 0, i64 0), i32 1, i32 1, i8* getelementptr inbounds ([5 x i8]* @.str5, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str6, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str7, i64 0, i64 0), i32 2, i8* getelementptr inbounds ([12 x i8]* @.str8, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8]* @.str9, i64 0, i64 0)) #3, !dbg !54
  %cmp = icmp eq i32 %call, 1, !dbg !54
  br i1 %cmp, label %if.then, label %if.end5, !dbg !54

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata !{i32* %param_type}, metadata !10), !dbg !55
  %call1 = call i8* @CCTK_ParameterGet(i8* getelementptr inbounds ([19 x i8]* @.str10, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str11, i64 0, i64 0), i32* %param_type) #3, !dbg !56
  %0 = bitcast i8* %call1 to i32*, !dbg !56
  call void @llvm.dbg.value(metadata !{i32* %0}, i64 0, metadata !12), !dbg !56
  %1 = load i32* %0, align 4, !dbg !57, !tbaa !58
  %tobool = icmp eq i32 %1, 0, !dbg !57
  br i1 %tobool, label %if.else, label %if.then2, !dbg !57

if.then2:                                         ; preds = %if.then
  %call3 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 2, i32 32, i8* getelementptr inbounds ([73 x i8]* @.str12, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str11, i64 0, i64 0), i8* getelementptr inbounds ([101 x i8]* @.str13, i64 0, i64 0)) #3, !dbg !61
  br label %if.end5, !dbg !63

if.else:                                          ; preds = %if.then
  %call4 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 0, i32 38, i8* getelementptr inbounds ([73 x i8]* @.str12, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str11, i64 0, i64 0), i8* getelementptr inbounds ([96 x i8]* @.str14, i64 0, i64 0)) #3, !dbg !64
  br label %if.end5

if.end5:                                          ; preds = %if.then2, %if.else, %entry
  %call6 = call i32 (i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i8*, i8*, i8*, i8*, i32, ...)* @CCTKi_CreateGroup(i8* getelementptr inbounds ([14 x i8]* @.str15, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str4, i64 0, i64 0), i32 1, i32 1, i8* getelementptr inbounds ([5 x i8]* @.str5, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str6, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str7, i64 0, i64 0), i32 1, i8* getelementptr inbounds ([22 x i8]* @.str16, i64 0, i64 0)) #3, !dbg !66
  %cmp7 = icmp eq i32 %call6, 1, !dbg !66
  br i1 %cmp7, label %if.then8, label %if.end18, !dbg !66

if.then8:                                         ; preds = %if.end5
  call void @llvm.dbg.declare(metadata !{i32* %param_type9}, metadata !15), !dbg !67
  %call11 = call i8* @CCTK_ParameterGet(i8* getelementptr inbounds ([19 x i8]* @.str10, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str11, i64 0, i64 0), i32* %param_type9) #3, !dbg !68
  %2 = bitcast i8* %call11 to i32*, !dbg !68
  call void @llvm.dbg.value(metadata !{i32* %2}, i64 0, metadata !17), !dbg !68
  %3 = load i32* %2, align 4, !dbg !69, !tbaa !58
  %tobool12 = icmp eq i32 %3, 0, !dbg !69
  br i1 %tobool12, label %if.else15, label %if.then13, !dbg !69

if.then13:                                        ; preds = %if.then8
  %call14 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 2, i32 63, i8* getelementptr inbounds ([73 x i8]* @.str12, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str11, i64 0, i64 0), i8* getelementptr inbounds ([109 x i8]* @.str17, i64 0, i64 0)) #3, !dbg !70
  br label %if.end18, !dbg !72

if.else15:                                        ; preds = %if.then8
  %call16 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 0, i32 69, i8* getelementptr inbounds ([73 x i8]* @.str12, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str11, i64 0, i64 0), i8* getelementptr inbounds ([104 x i8]* @.str18, i64 0, i64 0)) #3, !dbg !73
  br label %if.end18

if.end18:                                         ; preds = %if.then13, %if.else15, %if.end5
  %call19 = call i32 (i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i8*, i8*, i8*, i8*, i32, ...)* @CCTKi_CreateGroup(i8* getelementptr inbounds ([7 x i8]* @.str19, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8]* @.str20, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str21, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str4, i64 0, i64 0), i32 3, i32 1, i8* getelementptr inbounds ([5 x i8]* @.str5, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str6, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str7, i64 0, i64 0), i32 6, i8* getelementptr inbounds ([4 x i8]* @.str22, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8]* @.str23, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8]* @.str24, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8]* @.str25, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8]* @.str26, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8]* @.str27, i64 0, i64 0)) #3, !dbg !75
  %cmp20 = icmp eq i32 %call19, 1, !dbg !75
  br i1 %cmp20, label %if.then21, label %if.end31, !dbg !75

if.then21:                                        ; preds = %if.end18
  call void @llvm.dbg.declare(metadata !{i32* %param_type22}, metadata !18), !dbg !76
  %call24 = call i8* @CCTK_ParameterGet(i8* getelementptr inbounds ([19 x i8]* @.str10, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str11, i64 0, i64 0), i32* %param_type22) #3, !dbg !77
  %4 = bitcast i8* %call24 to i32*, !dbg !77
  call void @llvm.dbg.value(metadata !{i32* %4}, i64 0, metadata !20), !dbg !77
  %5 = load i32* %4, align 4, !dbg !78, !tbaa !58
  %tobool25 = icmp eq i32 %5, 0, !dbg !78
  br i1 %tobool25, label %if.else28, label %if.then26, !dbg !78

if.then26:                                        ; preds = %if.then21
  %call27 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 2, i32 99, i8* getelementptr inbounds ([73 x i8]* @.str12, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str11, i64 0, i64 0), i8* getelementptr inbounds ([102 x i8]* @.str28, i64 0, i64 0)) #3, !dbg !79
  br label %if.end31, !dbg !81

if.else28:                                        ; preds = %if.then21
  %call29 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 0, i32 105, i8* getelementptr inbounds ([73 x i8]* @.str12, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str11, i64 0, i64 0), i8* getelementptr inbounds ([97 x i8]* @.str29, i64 0, i64 0)) #3, !dbg !82
  br label %if.end31

if.end31:                                         ; preds = %if.then26, %if.else28, %if.end18
  %call32 = call i32 (i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i8*, i8*, i8*, i8*, i32, ...)* @CCTKi_CreateGroup(i8* getelementptr inbounds ([5 x i8]* @.str30, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8]* @.str20, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str21, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str4, i64 0, i64 0), i32 3, i32 1, i8* getelementptr inbounds ([5 x i8]* @.str5, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str6, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str7, i64 0, i64 0), i32 6, i8* getelementptr inbounds ([4 x i8]* @.str31, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8]* @.str32, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8]* @.str33, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8]* @.str34, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8]* @.str35, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8]* @.str36, i64 0, i64 0)) #3, !dbg !84
  %cmp33 = icmp eq i32 %call32, 1, !dbg !84
  br i1 %cmp33, label %if.then34, label %if.end44, !dbg !84

if.then34:                                        ; preds = %if.end31
  call void @llvm.dbg.declare(metadata !{i32* %param_type35}, metadata !21), !dbg !85
  %call37 = call i8* @CCTK_ParameterGet(i8* getelementptr inbounds ([19 x i8]* @.str10, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str11, i64 0, i64 0), i32* %param_type35) #3, !dbg !86
  %6 = bitcast i8* %call37 to i32*, !dbg !86
  call void @llvm.dbg.value(metadata !{i32* %6}, i64 0, metadata !23), !dbg !86
  %7 = load i32* %6, align 4, !dbg !87, !tbaa !58
  %tobool38 = icmp eq i32 %7, 0, !dbg !87
  br i1 %tobool38, label %if.else41, label %if.then39, !dbg !87

if.then39:                                        ; preds = %if.then34
  %call40 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 2, i32 135, i8* getelementptr inbounds ([73 x i8]* @.str12, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str11, i64 0, i64 0), i8* getelementptr inbounds ([100 x i8]* @.str37, i64 0, i64 0)) #3, !dbg !88
  br label %if.end44, !dbg !90

if.else41:                                        ; preds = %if.then34
  %call42 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 0, i32 141, i8* getelementptr inbounds ([73 x i8]* @.str12, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str11, i64 0, i64 0), i8* getelementptr inbounds ([95 x i8]* @.str38, i64 0, i64 0)) #3, !dbg !91
  br label %if.end44

if.end44:                                         ; preds = %if.then39, %if.else41, %if.end31
  %call45 = call i32 (i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i8*, i8*, i8*, i8*, i32, ...)* @CCTKi_CreateGroup(i8* getelementptr inbounds ([6 x i8]* @.str39, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8]* @.str20, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str21, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str4, i64 0, i64 0), i32 3, i32 1, i8* getelementptr inbounds ([5 x i8]* @.str5, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str6, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str7, i64 0, i64 0), i32 1, i8* getelementptr inbounds ([4 x i8]* @.str40, i64 0, i64 0)) #3, !dbg !93
  %cmp46 = icmp eq i32 %call45, 1, !dbg !93
  br i1 %cmp46, label %if.then47, label %if.end57, !dbg !93

if.then47:                                        ; preds = %if.end44
  call void @llvm.dbg.declare(metadata !{i32* %param_type48}, metadata !24), !dbg !94
  %call50 = call i8* @CCTK_ParameterGet(i8* getelementptr inbounds ([19 x i8]* @.str10, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str11, i64 0, i64 0), i32* %param_type48) #3, !dbg !95
  %8 = bitcast i8* %call50 to i32*, !dbg !95
  call void @llvm.dbg.value(metadata !{i32* %8}, i64 0, metadata !26), !dbg !95
  %9 = load i32* %8, align 4, !dbg !96, !tbaa !58
  %tobool51 = icmp eq i32 %9, 0, !dbg !96
  br i1 %tobool51, label %if.else54, label %if.then52, !dbg !96

if.then52:                                        ; preds = %if.then47
  %call53 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 2, i32 166, i8* getelementptr inbounds ([73 x i8]* @.str12, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str11, i64 0, i64 0), i8* getelementptr inbounds ([101 x i8]* @.str41, i64 0, i64 0)) #3, !dbg !97
  br label %if.end57, !dbg !99

if.else54:                                        ; preds = %if.then47
  %call55 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 0, i32 172, i8* getelementptr inbounds ([73 x i8]* @.str12, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str11, i64 0, i64 0), i8* getelementptr inbounds ([96 x i8]* @.str42, i64 0, i64 0)) #3, !dbg !100
  br label %if.end57

if.end57:                                         ; preds = %if.then52, %if.else54, %if.end44
  %call58 = call i32 (i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i8*, i8*, i8*, i8*, i32, ...)* @CCTKi_CreateGroup(i8* getelementptr inbounds ([6 x i8]* @.str43, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8]* @.str20, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str21, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str4, i64 0, i64 0), i32 3, i32 1, i8* getelementptr inbounds ([5 x i8]* @.str5, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str6, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str7, i64 0, i64 0), i32 3, i8* getelementptr inbounds ([6 x i8]* @.str44, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8]* @.str45, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8]* @.str46, i64 0, i64 0)) #3, !dbg !102
  %cmp59 = icmp eq i32 %call58, 1, !dbg !102
  br i1 %cmp59, label %if.then60, label %if.end70, !dbg !102

if.then60:                                        ; preds = %if.end57
  call void @llvm.dbg.declare(metadata !{i32* %param_type61}, metadata !27), !dbg !103
  %call63 = call i8* @CCTK_ParameterGet(i8* getelementptr inbounds ([19 x i8]* @.str10, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str11, i64 0, i64 0), i32* %param_type61) #3, !dbg !104
  %10 = bitcast i8* %call63 to i32*, !dbg !104
  call void @llvm.dbg.value(metadata !{i32* %10}, i64 0, metadata !29), !dbg !104
  %11 = load i32* %10, align 4, !dbg !105, !tbaa !58
  %tobool64 = icmp eq i32 %11, 0, !dbg !105
  br i1 %tobool64, label %if.else67, label %if.then65, !dbg !105

if.then65:                                        ; preds = %if.then60
  %call66 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 2, i32 199, i8* getelementptr inbounds ([73 x i8]* @.str12, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str11, i64 0, i64 0), i8* getelementptr inbounds ([101 x i8]* @.str47, i64 0, i64 0)) #3, !dbg !106
  br label %if.end70, !dbg !108

if.else67:                                        ; preds = %if.then60
  %call68 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 0, i32 205, i8* getelementptr inbounds ([73 x i8]* @.str12, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str11, i64 0, i64 0), i8* getelementptr inbounds ([96 x i8]* @.str48, i64 0, i64 0)) #3, !dbg !109
  br label %if.end70

if.end70:                                         ; preds = %if.then65, %if.else67, %if.end57
  %call71 = call i32 (i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i8*, i8*, i8*, i8*, i32, ...)* @CCTKi_CreateGroup(i8* getelementptr inbounds ([7 x i8]* @.str49, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8]* @.str20, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str21, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str4, i64 0, i64 0), i32 3, i32 1, i8* getelementptr inbounds ([5 x i8]* @.str5, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str6, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str7, i64 0, i64 0), i32 1, i8* getelementptr inbounds ([4 x i8]* @.str50, i64 0, i64 0)) #3, !dbg !111
  %cmp72 = icmp eq i32 %call71, 1, !dbg !111
  br i1 %cmp72, label %if.then73, label %if.end83, !dbg !111

if.then73:                                        ; preds = %if.end70
  call void @llvm.dbg.declare(metadata !{i32* %param_type74}, metadata !30), !dbg !112
  %call76 = call i8* @CCTK_ParameterGet(i8* getelementptr inbounds ([19 x i8]* @.str10, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str11, i64 0, i64 0), i32* %param_type74) #3, !dbg !113
  %12 = bitcast i8* %call76 to i32*, !dbg !113
  call void @llvm.dbg.value(metadata !{i32* %12}, i64 0, metadata !32), !dbg !113
  %13 = load i32* %12, align 4, !dbg !114, !tbaa !58
  %tobool77 = icmp eq i32 %13, 0, !dbg !114
  br i1 %tobool77, label %if.else80, label %if.then78, !dbg !114

if.then78:                                        ; preds = %if.then73
  %call79 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 2, i32 230, i8* getelementptr inbounds ([73 x i8]* @.str12, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str11, i64 0, i64 0), i8* getelementptr inbounds ([102 x i8]* @.str51, i64 0, i64 0)) #3, !dbg !115
  br label %if.end83, !dbg !117

if.else80:                                        ; preds = %if.then73
  %call81 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 0, i32 236, i8* getelementptr inbounds ([73 x i8]* @.str12, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str11, i64 0, i64 0), i8* getelementptr inbounds ([97 x i8]* @.str52, i64 0, i64 0)) #3, !dbg !118
  br label %if.end83

if.end83:                                         ; preds = %if.then78, %if.else80, %if.end70
  %call84 = call i32 (i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i8*, i8*, i8*, i8*, i32, ...)* @CCTKi_CreateGroup(i8* getelementptr inbounds ([15 x i8]* @.str53, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8]* @.str20, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str21, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str4, i64 0, i64 0), i32 3, i32 1, i8* getelementptr inbounds ([5 x i8]* @.str5, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str6, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str7, i64 0, i64 0), i32 3, i8* getelementptr inbounds ([5 x i8]* @.str54, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str55, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str56, i64 0, i64 0)) #3, !dbg !120
  %cmp85 = icmp eq i32 %call84, 1, !dbg !120
  br i1 %cmp85, label %if.then86, label %if.end96, !dbg !120

if.then86:                                        ; preds = %if.end83
  call void @llvm.dbg.declare(metadata !{i32* %param_type87}, metadata !33), !dbg !121
  %call89 = call i8* @CCTK_ParameterGet(i8* getelementptr inbounds ([19 x i8]* @.str10, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str11, i64 0, i64 0), i32* %param_type87) #3, !dbg !122
  %14 = bitcast i8* %call89 to i32*, !dbg !122
  call void @llvm.dbg.value(metadata !{i32* %14}, i64 0, metadata !35), !dbg !122
  %15 = load i32* %14, align 4, !dbg !123, !tbaa !58
  %tobool90 = icmp eq i32 %15, 0, !dbg !123
  br i1 %tobool90, label %if.else93, label %if.then91, !dbg !123

if.then91:                                        ; preds = %if.then86
  %call92 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 2, i32 263, i8* getelementptr inbounds ([73 x i8]* @.str12, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str11, i64 0, i64 0), i8* getelementptr inbounds ([110 x i8]* @.str57, i64 0, i64 0)) #3, !dbg !124
  br label %if.end96, !dbg !126

if.else93:                                        ; preds = %if.then86
  %call94 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 0, i32 269, i8* getelementptr inbounds ([73 x i8]* @.str12, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str11, i64 0, i64 0), i8* getelementptr inbounds ([105 x i8]* @.str58, i64 0, i64 0)) #3, !dbg !127
  br label %if.end96

if.end96:                                         ; preds = %if.then91, %if.else93, %if.end83
  %call97 = call i32 (i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i8*, i8*, i8*, i8*, i32, ...)* @CCTKi_CreateGroup(i8* getelementptr inbounds ([15 x i8]* @.str59, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8]* @.str20, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str21, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str4, i64 0, i64 0), i32 3, i32 1, i8* getelementptr inbounds ([5 x i8]* @.str5, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str6, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str7, i64 0, i64 0), i32 6, i8* getelementptr inbounds ([6 x i8]* @.str60, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8]* @.str61, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8]* @.str62, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8]* @.str63, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8]* @.str64, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8]* @.str65, i64 0, i64 0)) #3, !dbg !129
  %cmp98 = icmp eq i32 %call97, 1, !dbg !129
  br i1 %cmp98, label %if.then99, label %if.end109, !dbg !129

if.then99:                                        ; preds = %if.end96
  call void @llvm.dbg.declare(metadata !{i32* %param_type100}, metadata !36), !dbg !130
  %call102 = call i8* @CCTK_ParameterGet(i8* getelementptr inbounds ([19 x i8]* @.str10, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str11, i64 0, i64 0), i32* %param_type100) #3, !dbg !131
  %16 = bitcast i8* %call102 to i32*, !dbg !131
  call void @llvm.dbg.value(metadata !{i32* %16}, i64 0, metadata !38), !dbg !131
  %17 = load i32* %16, align 4, !dbg !132, !tbaa !58
  %tobool103 = icmp eq i32 %17, 0, !dbg !132
  br i1 %tobool103, label %if.else106, label %if.then104, !dbg !132

if.then104:                                       ; preds = %if.then99
  %call105 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 2, i32 299, i8* getelementptr inbounds ([73 x i8]* @.str12, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str11, i64 0, i64 0), i8* getelementptr inbounds ([110 x i8]* @.str66, i64 0, i64 0)) #3, !dbg !133
  br label %if.end109, !dbg !135

if.else106:                                       ; preds = %if.then99
  %call107 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 0, i32 305, i8* getelementptr inbounds ([73 x i8]* @.str12, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str11, i64 0, i64 0), i8* getelementptr inbounds ([105 x i8]* @.str67, i64 0, i64 0)) #3, !dbg !136
  br label %if.end109

if.end109:                                        ; preds = %if.then104, %if.else106, %if.end96
  %call110 = call i32 (i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i8*, i8*, i8*, i8*, i32, ...)* @CCTKi_CreateGroup(i8* getelementptr inbounds ([5 x i8]* @.str68, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8]* @.str20, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str21, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str4, i64 0, i64 0), i32 3, i32 1, i8* getelementptr inbounds ([5 x i8]* @.str5, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str6, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str7, i64 0, i64 0), i32 1, i8* getelementptr inbounds ([6 x i8]* @.str69, i64 0, i64 0)) #3, !dbg !138
  %cmp111 = icmp eq i32 %call110, 1, !dbg !138
  br i1 %cmp111, label %if.then112, label %if.end122, !dbg !138

if.then112:                                       ; preds = %if.end109
  call void @llvm.dbg.declare(metadata !{i32* %param_type113}, metadata !39), !dbg !139
  %call115 = call i8* @CCTK_ParameterGet(i8* getelementptr inbounds ([19 x i8]* @.str10, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str11, i64 0, i64 0), i32* %param_type113) #3, !dbg !140
  %18 = bitcast i8* %call115 to i32*, !dbg !140
  call void @llvm.dbg.value(metadata !{i32* %18}, i64 0, metadata !41), !dbg !140
  %19 = load i32* %18, align 4, !dbg !141, !tbaa !58
  %tobool116 = icmp eq i32 %19, 0, !dbg !141
  br i1 %tobool116, label %if.else119, label %if.then117, !dbg !141

if.then117:                                       ; preds = %if.then112
  %call118 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 2, i32 330, i8* getelementptr inbounds ([73 x i8]* @.str12, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str11, i64 0, i64 0), i8* getelementptr inbounds ([100 x i8]* @.str70, i64 0, i64 0)) #3, !dbg !142
  br label %if.end122, !dbg !144

if.else119:                                       ; preds = %if.then112
  %call120 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 0, i32 336, i8* getelementptr inbounds ([73 x i8]* @.str12, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str11, i64 0, i64 0), i8* getelementptr inbounds ([95 x i8]* @.str71, i64 0, i64 0)) #3, !dbg !145
  br label %if.end122

if.end122:                                        ; preds = %if.then117, %if.else119, %if.end109
  %call123 = call i32 (i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i8*, i8*, i8*, i8*, i32, ...)* @CCTKi_CreateGroup(i8* getelementptr inbounds ([11 x i8]* @.str72, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8]* @.str20, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str21, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str73, i64 0, i64 0), i32 3, i32 1, i8* getelementptr inbounds ([5 x i8]* @.str5, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str6, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str7, i64 0, i64 0), i32 1, i8* getelementptr inbounds ([4 x i8]* @.str74, i64 0, i64 0)) #3, !dbg !147
  %cmp124 = icmp eq i32 %call123, 1, !dbg !147
  br i1 %cmp124, label %if.then125, label %if.end135, !dbg !147

if.then125:                                       ; preds = %if.end122
  call void @llvm.dbg.declare(metadata !{i32* %param_type126}, metadata !42), !dbg !148
  %call128 = call i8* @CCTK_ParameterGet(i8* getelementptr inbounds ([19 x i8]* @.str10, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str11, i64 0, i64 0), i32* %param_type126) #3, !dbg !149
  %20 = bitcast i8* %call128 to i32*, !dbg !149
  call void @llvm.dbg.value(metadata !{i32* %20}, i64 0, metadata !44), !dbg !149
  %21 = load i32* %20, align 4, !dbg !150, !tbaa !58
  %tobool129 = icmp eq i32 %21, 0, !dbg !150
  br i1 %tobool129, label %if.else132, label %if.then130, !dbg !150

if.then130:                                       ; preds = %if.then125
  %call131 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 2, i32 361, i8* getelementptr inbounds ([73 x i8]* @.str12, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str11, i64 0, i64 0), i8* getelementptr inbounds ([106 x i8]* @.str75, i64 0, i64 0)) #3, !dbg !151
  br label %if.end135, !dbg !153

if.else132:                                       ; preds = %if.then125
  %call133 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 0, i32 367, i8* getelementptr inbounds ([73 x i8]* @.str12, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str11, i64 0, i64 0), i8* getelementptr inbounds ([101 x i8]* @.str76, i64 0, i64 0)) #3, !dbg !154
  br label %if.end135

if.end135:                                        ; preds = %if.then130, %if.else132, %if.end122
  %call136 = call i32 (i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i8*, i8*, i8*, i8*, i32, ...)* @CCTKi_CreateGroup(i8* getelementptr inbounds ([7 x i8]* @.str77, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8]* @.str20, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str21, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str73, i64 0, i64 0), i32 3, i32 1, i8* getelementptr inbounds ([5 x i8]* @.str5, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str6, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str7, i64 0, i64 0), i32 1, i8* getelementptr inbounds ([5 x i8]* @.str78, i64 0, i64 0)) #3, !dbg !156
  %cmp137 = icmp eq i32 %call136, 1, !dbg !156
  br i1 %cmp137, label %if.then138, label %if.end148, !dbg !156

if.then138:                                       ; preds = %if.end135
  call void @llvm.dbg.declare(metadata !{i32* %param_type139}, metadata !45), !dbg !157
  %call141 = call i8* @CCTK_ParameterGet(i8* getelementptr inbounds ([19 x i8]* @.str10, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str11, i64 0, i64 0), i32* %param_type139) #3, !dbg !158
  %22 = bitcast i8* %call141 to i32*, !dbg !158
  call void @llvm.dbg.value(metadata !{i32* %22}, i64 0, metadata !47), !dbg !158
  %23 = load i32* %22, align 4, !dbg !159, !tbaa !58
  %tobool142 = icmp eq i32 %23, 0, !dbg !159
  br i1 %tobool142, label %if.else145, label %if.then143, !dbg !159

if.then143:                                       ; preds = %if.then138
  %call144 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 2, i32 392, i8* getelementptr inbounds ([73 x i8]* @.str12, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str11, i64 0, i64 0), i8* getelementptr inbounds ([102 x i8]* @.str79, i64 0, i64 0)) #3, !dbg !160
  br label %if.end148, !dbg !162

if.else145:                                       ; preds = %if.then138
  %call146 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 0, i32 398, i8* getelementptr inbounds ([73 x i8]* @.str12, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str11, i64 0, i64 0), i8* getelementptr inbounds ([97 x i8]* @.str80, i64 0, i64 0)) #3, !dbg !163
  br label %if.end148

if.end148:                                        ; preds = %if.then143, %if.else145, %if.end135
  %call149 = call i32 (i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i8*, i8*, i8*, i8*, i32, ...)* @CCTKi_CreateGroup(i8* getelementptr inbounds ([17 x i8]* @.str81, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8]* @.str20, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str21, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str73, i64 0, i64 0), i32 3, i32 1, i8* getelementptr inbounds ([5 x i8]* @.str5, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str6, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str7, i64 0, i64 0), i32 6, i8* getelementptr inbounds ([4 x i8]* @.str82, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8]* @.str83, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8]* @.str84, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8]* @.str85, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8]* @.str86, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8]* @.str87, i64 0, i64 0)) #3, !dbg !165
  %cmp150 = icmp eq i32 %call149, 1, !dbg !165
  br i1 %cmp150, label %if.then151, label %if.end161, !dbg !165

if.then151:                                       ; preds = %if.end148
  call void @llvm.dbg.declare(metadata !{i32* %param_type152}, metadata !48), !dbg !166
  %call154 = call i8* @CCTK_ParameterGet(i8* getelementptr inbounds ([19 x i8]* @.str10, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str11, i64 0, i64 0), i32* %param_type152) #3, !dbg !167
  %24 = bitcast i8* %call154 to i32*, !dbg !167
  call void @llvm.dbg.value(metadata !{i32* %24}, i64 0, metadata !50), !dbg !167
  %25 = load i32* %24, align 4, !dbg !168, !tbaa !58
  %tobool155 = icmp eq i32 %25, 0, !dbg !168
  br i1 %tobool155, label %if.else158, label %if.then156, !dbg !168

if.then156:                                       ; preds = %if.then151
  %call157 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 2, i32 428, i8* getelementptr inbounds ([73 x i8]* @.str12, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str11, i64 0, i64 0), i8* getelementptr inbounds ([112 x i8]* @.str88, i64 0, i64 0)) #3, !dbg !169
  br label %if.end161, !dbg !171

if.else158:                                       ; preds = %if.then151
  %call159 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 0, i32 434, i8* getelementptr inbounds ([73 x i8]* @.str12, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str11, i64 0, i64 0), i8* getelementptr inbounds ([107 x i8]* @.str89, i64 0, i64 0)) #3, !dbg !172
  br label %if.end161

if.end161:                                        ; preds = %if.then156, %if.else158, %if.end148
  %call162 = call i32 (i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i8*, i8*, i8*, i8*, i32, ...)* @CCTKi_CreateGroup(i8* getelementptr inbounds ([15 x i8]* @.str90, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8]* @.str20, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str21, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str73, i64 0, i64 0), i32 3, i32 1, i8* getelementptr inbounds ([5 x i8]* @.str5, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str6, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str7, i64 0, i64 0), i32 6, i8* getelementptr inbounds ([4 x i8]* @.str91, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8]* @.str92, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8]* @.str93, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8]* @.str94, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8]* @.str95, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8]* @.str96, i64 0, i64 0)) #3, !dbg !174
  %cmp163 = icmp eq i32 %call162, 1, !dbg !174
  br i1 %cmp163, label %if.then164, label %if.end174, !dbg !174

if.then164:                                       ; preds = %if.end161
  call void @llvm.dbg.declare(metadata !{i32* %param_type165}, metadata !51), !dbg !175
  %call167 = call i8* @CCTK_ParameterGet(i8* getelementptr inbounds ([19 x i8]* @.str10, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str11, i64 0, i64 0), i32* %param_type165) #3, !dbg !176
  %26 = bitcast i8* %call167 to i32*, !dbg !176
  call void @llvm.dbg.value(metadata !{i32* %26}, i64 0, metadata !53), !dbg !176
  %27 = load i32* %26, align 4, !dbg !177, !tbaa !58
  %tobool168 = icmp eq i32 %27, 0, !dbg !177
  br i1 %tobool168, label %if.else171, label %if.then169, !dbg !177

if.then169:                                       ; preds = %if.then164
  %call170 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 2, i32 464, i8* getelementptr inbounds ([73 x i8]* @.str12, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str11, i64 0, i64 0), i8* getelementptr inbounds ([110 x i8]* @.str97, i64 0, i64 0)) #3, !dbg !178
  br label %if.end174, !dbg !180

if.else171:                                       ; preds = %if.then164
  %call172 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 0, i32 470, i8* getelementptr inbounds ([73 x i8]* @.str12, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str11, i64 0, i64 0), i8* getelementptr inbounds ([105 x i8]* @.str98, i64 0, i64 0)) #3, !dbg !181
  br label %if.end174

if.end174:                                        ; preds = %if.then169, %if.else171, %if.end161
  %call175 = call i32 @CCTKi_RegisterFortranWrapper(i8* getelementptr inbounds ([9 x i8]* @.str99, i64 0, i64 0), i32 (i8*, i8*)* @CCTKi_BindingsFortranWrapperEinstein) #3, !dbg !183
  ret i32 0, !dbg !184
}

; Function Attrs: optsize
declare i32 @CCTKi_CreateGroup(i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i8*, i8*, i8*, i8*, i32, ...) #1

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #2

; Function Attrs: optsize
declare i8* @CCTK_ParameterGet(i8*, i8*, i32*) #1

; Function Attrs: optsize
declare i32 @CCTK_VWarn(i32, i32, i8*, i8*, i8*, ...) #1

; Function Attrs: optsize
declare i32 @CCTKi_RegisterFortranWrapper(i8*, i32 (i8*, i8*)*) #1

; Function Attrs: optsize
declare i32 @CCTKi_BindingsFortranWrapperEinstein(i8*, i8*) #1

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #2

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }
attributes #3 = { nounwind optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CactusBindings/Einstein.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/436.cactusADM/src/CactusBindings/Einstein.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CactusBindingsVariables_Einstein_Initialise", metadata !"CactusBindingsVariables_Einstein_Initialise", metadata !"", i32 11, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 ()* @CactusBindingsVariables_Einstein_Initialise, null, null, metadata !9, i32 12} ; [ DW_TAG_subprogram ] [line 11] [def] [scope 12] [CactusBindingsVariables_Einstein_Initialise]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CactusBindings/Einstein.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8}
!8 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!9 = metadata !{metadata !10, metadata !12, metadata !15, metadata !17, metadata !18, metadata !20, metadata !21, metadata !23, metadata !24, metadata !26, metadata !27, metadata !29, metadata !30, metadata !32, metadata !33, metadata !35, metadata !36, metadata !38, metadata !39, metadata !41, metadata !42, metadata !44, metadata !45, metadata !47, metadata !48, metadata !50, metadata !51, metadata !53}
!10 = metadata !{i32 786688, metadata !11, metadata !"param_type", metadata !5, i32 27, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [param_type] [line 27]
!11 = metadata !{i32 786443, metadata !1, metadata !4, i32 26, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CactusBindings/Einstein.c]
!12 = metadata !{i32 786688, metadata !11, metadata !"allow_mixeddim_gfs", metadata !5, i32 28, metadata !13, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [allow_mixeddim_gfs] [line 28]
!13 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !14} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!14 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !8} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from int]
!15 = metadata !{i32 786688, metadata !16, metadata !"param_type", metadata !5, i32 58, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [param_type] [line 58]
!16 = metadata !{i32 786443, metadata !1, metadata !4, i32 57, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CactusBindings/Einstein.c]
!17 = metadata !{i32 786688, metadata !16, metadata !"allow_mixeddim_gfs", metadata !5, i32 59, metadata !13, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [allow_mixeddim_gfs] [line 59]
!18 = metadata !{i32 786688, metadata !19, metadata !"param_type", metadata !5, i32 94, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [param_type] [line 94]
!19 = metadata !{i32 786443, metadata !1, metadata !4, i32 93, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CactusBindings/Einstein.c]
!20 = metadata !{i32 786688, metadata !19, metadata !"allow_mixeddim_gfs", metadata !5, i32 95, metadata !13, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [allow_mixeddim_gfs] [line 95]
!21 = metadata !{i32 786688, metadata !22, metadata !"param_type", metadata !5, i32 130, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [param_type] [line 130]
!22 = metadata !{i32 786443, metadata !1, metadata !4, i32 129, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CactusBindings/Einstein.c]
!23 = metadata !{i32 786688, metadata !22, metadata !"allow_mixeddim_gfs", metadata !5, i32 131, metadata !13, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [allow_mixeddim_gfs] [line 131]
!24 = metadata !{i32 786688, metadata !25, metadata !"param_type", metadata !5, i32 161, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [param_type] [line 161]
!25 = metadata !{i32 786443, metadata !1, metadata !4, i32 160, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CactusBindings/Einstein.c]
!26 = metadata !{i32 786688, metadata !25, metadata !"allow_mixeddim_gfs", metadata !5, i32 162, metadata !13, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [allow_mixeddim_gfs] [line 162]
!27 = metadata !{i32 786688, metadata !28, metadata !"param_type", metadata !5, i32 194, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [param_type] [line 194]
!28 = metadata !{i32 786443, metadata !1, metadata !4, i32 193, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CactusBindings/Einstein.c]
!29 = metadata !{i32 786688, metadata !28, metadata !"allow_mixeddim_gfs", metadata !5, i32 195, metadata !13, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [allow_mixeddim_gfs] [line 195]
!30 = metadata !{i32 786688, metadata !31, metadata !"param_type", metadata !5, i32 225, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [param_type] [line 225]
!31 = metadata !{i32 786443, metadata !1, metadata !4, i32 224, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CactusBindings/Einstein.c]
!32 = metadata !{i32 786688, metadata !31, metadata !"allow_mixeddim_gfs", metadata !5, i32 226, metadata !13, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [allow_mixeddim_gfs] [line 226]
!33 = metadata !{i32 786688, metadata !34, metadata !"param_type", metadata !5, i32 258, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [param_type] [line 258]
!34 = metadata !{i32 786443, metadata !1, metadata !4, i32 257, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CactusBindings/Einstein.c]
!35 = metadata !{i32 786688, metadata !34, metadata !"allow_mixeddim_gfs", metadata !5, i32 259, metadata !13, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [allow_mixeddim_gfs] [line 259]
!36 = metadata !{i32 786688, metadata !37, metadata !"param_type", metadata !5, i32 294, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [param_type] [line 294]
!37 = metadata !{i32 786443, metadata !1, metadata !4, i32 293, i32 0, i32 24} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CactusBindings/Einstein.c]
!38 = metadata !{i32 786688, metadata !37, metadata !"allow_mixeddim_gfs", metadata !5, i32 295, metadata !13, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [allow_mixeddim_gfs] [line 295]
!39 = metadata !{i32 786688, metadata !40, metadata !"param_type", metadata !5, i32 325, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [param_type] [line 325]
!40 = metadata !{i32 786443, metadata !1, metadata !4, i32 324, i32 0, i32 27} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CactusBindings/Einstein.c]
!41 = metadata !{i32 786688, metadata !40, metadata !"allow_mixeddim_gfs", metadata !5, i32 326, metadata !13, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [allow_mixeddim_gfs] [line 326]
!42 = metadata !{i32 786688, metadata !43, metadata !"param_type", metadata !5, i32 356, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [param_type] [line 356]
!43 = metadata !{i32 786443, metadata !1, metadata !4, i32 355, i32 0, i32 30} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CactusBindings/Einstein.c]
!44 = metadata !{i32 786688, metadata !43, metadata !"allow_mixeddim_gfs", metadata !5, i32 357, metadata !13, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [allow_mixeddim_gfs] [line 357]
!45 = metadata !{i32 786688, metadata !46, metadata !"param_type", metadata !5, i32 387, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [param_type] [line 387]
!46 = metadata !{i32 786443, metadata !1, metadata !4, i32 386, i32 0, i32 33} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CactusBindings/Einstein.c]
!47 = metadata !{i32 786688, metadata !46, metadata !"allow_mixeddim_gfs", metadata !5, i32 388, metadata !13, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [allow_mixeddim_gfs] [line 388]
!48 = metadata !{i32 786688, metadata !49, metadata !"param_type", metadata !5, i32 423, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [param_type] [line 423]
!49 = metadata !{i32 786443, metadata !1, metadata !4, i32 422, i32 0, i32 36} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CactusBindings/Einstein.c]
!50 = metadata !{i32 786688, metadata !49, metadata !"allow_mixeddim_gfs", metadata !5, i32 424, metadata !13, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [allow_mixeddim_gfs] [line 424]
!51 = metadata !{i32 786688, metadata !52, metadata !"param_type", metadata !5, i32 459, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [param_type] [line 459]
!52 = metadata !{i32 786443, metadata !1, metadata !4, i32 458, i32 0, i32 39} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CactusBindings/Einstein.c]
!53 = metadata !{i32 786688, metadata !52, metadata !"allow_mixeddim_gfs", metadata !5, i32 460, metadata !13, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [allow_mixeddim_gfs] [line 460]
!54 = metadata !{i32 13, i32 0, metadata !4, null}
!55 = metadata !{i32 27, i32 0, metadata !11, null}
!56 = metadata !{i32 29, i32 0, metadata !11, null}
!57 = metadata !{i32 30, i32 0, metadata !11, null}
!58 = metadata !{metadata !"int", metadata !59}
!59 = metadata !{metadata !"omnipotent char", metadata !60}
!60 = metadata !{metadata !"Simple C/C++ TBAA"}
!61 = metadata !{i32 32, i32 0, metadata !62, null}
!62 = metadata !{i32 786443, metadata !1, metadata !11, i32 31, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CactusBindings/Einstein.c]
!63 = metadata !{i32 35, i32 0, metadata !62, null}
!64 = metadata !{i32 38, i32 0, metadata !65, null}
!65 = metadata !{i32 786443, metadata !1, metadata !11, i32 37, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CactusBindings/Einstein.c]
!66 = metadata !{i32 45, i32 0, metadata !4, null}
!67 = metadata !{i32 58, i32 0, metadata !16, null} ; [ DW_TAG_imported_module ]
!68 = metadata !{i32 60, i32 0, metadata !16, null}
!69 = metadata !{i32 61, i32 0, metadata !16, null}
!70 = metadata !{i32 63, i32 0, metadata !71, null}
!71 = metadata !{i32 786443, metadata !1, metadata !16, i32 62, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CactusBindings/Einstein.c]
!72 = metadata !{i32 66, i32 0, metadata !71, null}
!73 = metadata !{i32 69, i32 0, metadata !74, null}
!74 = metadata !{i32 786443, metadata !1, metadata !16, i32 68, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CactusBindings/Einstein.c]
!75 = metadata !{i32 76, i32 0, metadata !4, null}
!76 = metadata !{i32 94, i32 0, metadata !19, null}
!77 = metadata !{i32 96, i32 0, metadata !19, null}
!78 = metadata !{i32 97, i32 0, metadata !19, null}
!79 = metadata !{i32 99, i32 0, metadata !80, null}
!80 = metadata !{i32 786443, metadata !1, metadata !19, i32 98, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CactusBindings/Einstein.c]
!81 = metadata !{i32 102, i32 0, metadata !80, null}
!82 = metadata !{i32 105, i32 0, metadata !83, null}
!83 = metadata !{i32 786443, metadata !1, metadata !19, i32 104, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CactusBindings/Einstein.c]
!84 = metadata !{i32 112, i32 0, metadata !4, null}
!85 = metadata !{i32 130, i32 0, metadata !22, null}
!86 = metadata !{i32 132, i32 0, metadata !22, null}
!87 = metadata !{i32 133, i32 0, metadata !22, null}
!88 = metadata !{i32 135, i32 0, metadata !89, null}
!89 = metadata !{i32 786443, metadata !1, metadata !22, i32 134, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CactusBindings/Einstein.c]
!90 = metadata !{i32 138, i32 0, metadata !89, null}
!91 = metadata !{i32 141, i32 0, metadata !92, null}
!92 = metadata !{i32 786443, metadata !1, metadata !22, i32 140, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CactusBindings/Einstein.c]
!93 = metadata !{i32 148, i32 0, metadata !4, null}
!94 = metadata !{i32 161, i32 0, metadata !25, null}
!95 = metadata !{i32 163, i32 0, metadata !25, null}
!96 = metadata !{i32 164, i32 0, metadata !25, null}
!97 = metadata !{i32 166, i32 0, metadata !98, null}
!98 = metadata !{i32 786443, metadata !1, metadata !25, i32 165, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CactusBindings/Einstein.c]
!99 = metadata !{i32 169, i32 0, metadata !98, null}
!100 = metadata !{i32 172, i32 0, metadata !101, null}
!101 = metadata !{i32 786443, metadata !1, metadata !25, i32 171, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CactusBindings/Einstein.c]
!102 = metadata !{i32 179, i32 0, metadata !4, null}
!103 = metadata !{i32 194, i32 0, metadata !28, null}
!104 = metadata !{i32 196, i32 0, metadata !28, null}
!105 = metadata !{i32 197, i32 0, metadata !28, null}
!106 = metadata !{i32 199, i32 0, metadata !107, null}
!107 = metadata !{i32 786443, metadata !1, metadata !28, i32 198, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CactusBindings/Einstein.c]
!108 = metadata !{i32 202, i32 0, metadata !107, null}
!109 = metadata !{i32 205, i32 0, metadata !110, null}
!110 = metadata !{i32 786443, metadata !1, metadata !28, i32 204, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CactusBindings/Einstein.c]
!111 = metadata !{i32 212, i32 0, metadata !4, null}
!112 = metadata !{i32 225, i32 0, metadata !31, null}
!113 = metadata !{i32 227, i32 0, metadata !31, null}
!114 = metadata !{i32 228, i32 0, metadata !31, null}
!115 = metadata !{i32 230, i32 0, metadata !116, null}
!116 = metadata !{i32 786443, metadata !1, metadata !31, i32 229, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CactusBindings/Einstein.c]
!117 = metadata !{i32 233, i32 0, metadata !116, null}
!118 = metadata !{i32 236, i32 0, metadata !119, null}
!119 = metadata !{i32 786443, metadata !1, metadata !31, i32 235, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CactusBindings/Einstein.c]
!120 = metadata !{i32 243, i32 0, metadata !4, null}
!121 = metadata !{i32 258, i32 0, metadata !34, null}
!122 = metadata !{i32 260, i32 0, metadata !34, null}
!123 = metadata !{i32 261, i32 0, metadata !34, null}
!124 = metadata !{i32 263, i32 0, metadata !125, null}
!125 = metadata !{i32 786443, metadata !1, metadata !34, i32 262, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CactusBindings/Einstein.c]
!126 = metadata !{i32 266, i32 0, metadata !125, null}
!127 = metadata !{i32 269, i32 0, metadata !128, null}
!128 = metadata !{i32 786443, metadata !1, metadata !34, i32 268, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CactusBindings/Einstein.c]
!129 = metadata !{i32 276, i32 0, metadata !4, null}
!130 = metadata !{i32 294, i32 0, metadata !37, null}
!131 = metadata !{i32 296, i32 0, metadata !37, null}
!132 = metadata !{i32 297, i32 0, metadata !37, null}
!133 = metadata !{i32 299, i32 0, metadata !134, null}
!134 = metadata !{i32 786443, metadata !1, metadata !37, i32 298, i32 0, i32 25} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CactusBindings/Einstein.c]
!135 = metadata !{i32 302, i32 0, metadata !134, null}
!136 = metadata !{i32 305, i32 0, metadata !137, null}
!137 = metadata !{i32 786443, metadata !1, metadata !37, i32 304, i32 0, i32 26} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CactusBindings/Einstein.c]
!138 = metadata !{i32 312, i32 0, metadata !4, null}
!139 = metadata !{i32 325, i32 0, metadata !40, null}
!140 = metadata !{i32 327, i32 0, metadata !40, null}
!141 = metadata !{i32 328, i32 0, metadata !40, null}
!142 = metadata !{i32 330, i32 0, metadata !143, null}
!143 = metadata !{i32 786443, metadata !1, metadata !40, i32 329, i32 0, i32 28} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CactusBindings/Einstein.c]
!144 = metadata !{i32 333, i32 0, metadata !143, null}
!145 = metadata !{i32 336, i32 0, metadata !146, null}
!146 = metadata !{i32 786443, metadata !1, metadata !40, i32 335, i32 0, i32 29} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CactusBindings/Einstein.c]
!147 = metadata !{i32 343, i32 0, metadata !4, null}
!148 = metadata !{i32 356, i32 0, metadata !43, null}
!149 = metadata !{i32 358, i32 0, metadata !43, null}
!150 = metadata !{i32 359, i32 0, metadata !43, null}
!151 = metadata !{i32 361, i32 0, metadata !152, null}
!152 = metadata !{i32 786443, metadata !1, metadata !43, i32 360, i32 0, i32 31} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CactusBindings/Einstein.c]
!153 = metadata !{i32 364, i32 0, metadata !152, null}
!154 = metadata !{i32 367, i32 0, metadata !155, null}
!155 = metadata !{i32 786443, metadata !1, metadata !43, i32 366, i32 0, i32 32} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CactusBindings/Einstein.c]
!156 = metadata !{i32 374, i32 0, metadata !4, null}
!157 = metadata !{i32 387, i32 0, metadata !46, null}
!158 = metadata !{i32 389, i32 0, metadata !46, null}
!159 = metadata !{i32 390, i32 0, metadata !46, null}
!160 = metadata !{i32 392, i32 0, metadata !161, null}
!161 = metadata !{i32 786443, metadata !1, metadata !46, i32 391, i32 0, i32 34} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CactusBindings/Einstein.c]
!162 = metadata !{i32 395, i32 0, metadata !161, null}
!163 = metadata !{i32 398, i32 0, metadata !164, null}
!164 = metadata !{i32 786443, metadata !1, metadata !46, i32 397, i32 0, i32 35} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CactusBindings/Einstein.c]
!165 = metadata !{i32 405, i32 0, metadata !4, null}
!166 = metadata !{i32 423, i32 0, metadata !49, null}
!167 = metadata !{i32 425, i32 0, metadata !49, null}
!168 = metadata !{i32 426, i32 0, metadata !49, null}
!169 = metadata !{i32 428, i32 0, metadata !170, null}
!170 = metadata !{i32 786443, metadata !1, metadata !49, i32 427, i32 0, i32 37} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CactusBindings/Einstein.c]
!171 = metadata !{i32 431, i32 0, metadata !170, null}
!172 = metadata !{i32 434, i32 0, metadata !173, null}
!173 = metadata !{i32 786443, metadata !1, metadata !49, i32 433, i32 0, i32 38} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CactusBindings/Einstein.c]
!174 = metadata !{i32 441, i32 0, metadata !4, null}
!175 = metadata !{i32 459, i32 0, metadata !52, null}
!176 = metadata !{i32 461, i32 0, metadata !52, null}
!177 = metadata !{i32 462, i32 0, metadata !52, null}
!178 = metadata !{i32 464, i32 0, metadata !179, null}
!179 = metadata !{i32 786443, metadata !1, metadata !52, i32 463, i32 0, i32 40} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CactusBindings/Einstein.c]
!180 = metadata !{i32 467, i32 0, metadata !179, null}
!181 = metadata !{i32 470, i32 0, metadata !182, null}
!182 = metadata !{i32 786443, metadata !1, metadata !52, i32 469, i32 0, i32 41} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CactusBindings/Einstein.c]
!183 = metadata !{i32 477, i32 0, metadata !4, null}
!184 = metadata !{i32 479, i32 0, metadata !4, null}
