; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/CactusBindings/CreateEinsteinParameters.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.anon = type { double, double, double, double, double, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32 }
%struct.anon.0 = type { double, double, i8*, i32, i32 }

@.str = private unnamed_addr constant [10 x i8] c"advection\00", align 1
@.str1 = private unnamed_addr constant [9 x i8] c"Einstein\00", align 1
@.str2 = private unnamed_addr constant [8 x i8] c"KEYWORD\00", align 1
@.str3 = private unnamed_addr constant [11 x i8] c"RESTRICTED\00", align 1
@.str4 = private unnamed_addr constant [54 x i8] c"How to finite difference advection terms on the shift\00", align 1
@.str5 = private unnamed_addr constant [7 x i8] c"center\00", align 1
@einsteinrest_ = external global %struct.anon
@.str6 = private unnamed_addr constant [8 x i8] c"upwind1\00", align 1
@.str7 = private unnamed_addr constant [19 x i8] c"First order upwind\00", align 1
@.str8 = private unnamed_addr constant [8 x i8] c"upwind2\00", align 1
@.str9 = private unnamed_addr constant [20 x i8] c"Second order upwind\00", align 1
@.str10 = private unnamed_addr constant [22 x i8] c"Second order centered\00", align 1
@.str11 = private unnamed_addr constant [26 x i8] c"einstein_register_slicing\00", align 1
@.str12 = private unnamed_addr constant [8 x i8] c"BOOLEAN\00", align 1
@.str13 = private unnamed_addr constant [37 x i8] c"Register slicing management routines\00", align 1
@.str14 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str15 = private unnamed_addr constant [17 x i8] c"evolution_system\00", align 1
@.str16 = private unnamed_addr constant [27 x i8] c"Spacetime system to evolve\00", align 1
@.str17 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str18 = private unnamed_addr constant [23 x i8] c"Do not use a spacetime\00", align 1
@.str19 = private unnamed_addr constant [19 x i8] c"gaussian_amplitude\00", align 1
@.str20 = private unnamed_addr constant [5 x i8] c"REAL\00", align 1
@.str21 = private unnamed_addr constant [44 x i8] c"Amplitude of gaussian bump in initial lapse\00", align 1
@.str22 = private unnamed_addr constant [5 x i8] c"0.05\00", align 1
@.str23 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str24 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str25 = private unnamed_addr constant [16 x i8] c"gaussian_sigma2\00", align 1
@.str26 = private unnamed_addr constant [43 x i8] c"Sigma**2 of gaussian bump in initial lapse\00", align 1
@.str27 = private unnamed_addr constant [13 x i8] c"initial_data\00", align 1
@.str28 = private unnamed_addr constant [35 x i8] c"Physical spacetime model to evolve\00", align 1
@.str29 = private unnamed_addr constant [5 x i8] c"flat\00", align 1
@.str30 = private unnamed_addr constant [21 x i8] c"Flat Minkowski space\00", align 1
@.str31 = private unnamed_addr constant [14 x i8] c"initial_lapse\00", align 1
@.str32 = private unnamed_addr constant [28 x i8] c"How to initialise the lapse\00", align 1
@.str33 = private unnamed_addr constant [4 x i8] c"one\00", align 1
@.str34 = private unnamed_addr constant [13 x i8] c"Set to unity\00", align 1
@.str35 = private unnamed_addr constant [9 x i8] c"gaussian\00", align 1
@.str36 = private unnamed_addr constant [32 x i8] c"Set to a gaussian bump (flatty)\00", align 1
@.str37 = private unnamed_addr constant [10 x i8] c"isotropic\00", align 1
@.str38 = private unnamed_addr constant [23 x i8] c"Set to isotropic lapse\00", align 1
@.str39 = private unnamed_addr constant [12 x i8] c"psiminustwo\00", align 1
@.str40 = private unnamed_addr constant [28 x i8] c"Set to psi to the minus two\00", align 1
@.str41 = private unnamed_addr constant [14 x i8] c"initial_shift\00", align 1
@.str42 = private unnamed_addr constant [28 x i8] c"How to initialise the shift\00", align 1
@.str43 = private unnamed_addr constant [5 x i8] c"zero\00", align 1
@.str44 = private unnamed_addr constant [12 x i8] c"Set to zero\00", align 1
@.str45 = private unnamed_addr constant [9 x i8] c"rotation\00", align 1
@.str46 = private unnamed_addr constant [36 x i8] c"Set initial shift to rigid rotation\00", align 1
@.str47 = private unnamed_addr constant [14 x i8] c"mixed_slicing\00", align 1
@.str48 = private unnamed_addr constant [7 x i8] c"STRING\00", align 1
@.str49 = private unnamed_addr constant [72 x i8] c"Mixed slicing conditions, space separated, with *decreasing* importance\00", align 1
@.str50 = private unnamed_addr constant [3 x i8] c".*\00", align 1
@.str51 = private unnamed_addr constant [19 x i8] c"No default slicing\00", align 1
@.str52 = private unnamed_addr constant [16 x i8] c"psiminustwo_cut\00", align 1
@.str53 = private unnamed_addr constant [38 x i8] c"Cut off for psiminustwo initial lapse\00", align 1
@.str54 = private unnamed_addr constant [4 x i8] c"0.0\00", align 1
@.str55 = private unnamed_addr constant [8 x i8] c"0.0:1.0\00", align 1
@.str56 = private unnamed_addr constant [43 x i8] c"0 means no cut off, 1 means a full cut off\00", align 1
@.str57 = private unnamed_addr constant [14 x i8] c"rot_shift_att\00", align 1
@.str58 = private unnamed_addr constant [56 x i8] c"Use attenuation to zero the rotation shift at punctures\00", align 1
@.str59 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@.str60 = private unnamed_addr constant [18 x i8] c"rot_shift_att_pow\00", align 1
@.str61 = private unnamed_addr constant [4 x i8] c"INT\00", align 1
@.str62 = private unnamed_addr constant [57 x i8] c"Half of the power to be used in the attenuation function\00", align 1
@.str63 = private unnamed_addr constant [3 x i8] c"1 \00", align 1
@.str64 = private unnamed_addr constant [3 x i8] c"1:\00", align 1
@.str65 = private unnamed_addr constant [18 x i8] c" Larger than zero\00", align 1
@.str66 = private unnamed_addr constant [20 x i8] c"rot_shift_att_sigma\00", align 1
@.str67 = private unnamed_addr constant [34 x i8] c"Width of the attenuation function\00", align 1
@.str68 = private unnamed_addr constant [4 x i8] c"0.2\00", align 1
@.str69 = private unnamed_addr constant [3 x i8] c"0:\00", align 1
@.str70 = private unnamed_addr constant [25 x i8] c" Larger than zero please\00", align 1
@.str71 = private unnamed_addr constant [15 x i8] c"rotation_omega\00", align 1
@.str72 = private unnamed_addr constant [44 x i8] c"Angular velocity for initial rotation shift\00", align 1
@.str73 = private unnamed_addr constant [14 x i8] c"Anything goes\00", align 1
@.str74 = private unnamed_addr constant [18 x i8] c"rotation_psipower\00", align 1
@.str75 = private unnamed_addr constant [40 x i8] c"Power of psi for initial rotation shift\00", align 1
@.str76 = private unnamed_addr constant [2 x i8] c"2\00", align 1
@.str77 = private unnamed_addr constant [16 x i8] c"Positive please\00", align 1
@.str78 = private unnamed_addr constant [6 x i8] c"shift\00", align 1
@.str79 = private unnamed_addr constant [29 x i8] c"Which shift condition to use\00", align 1
@.str80 = private unnamed_addr constant [17 x i8] c"No shift is used\00", align 1
@.str81 = private unnamed_addr constant [19 x i8] c"Zero shift is used\00", align 1
@.str82 = private unnamed_addr constant [7 x i8] c"static\00", align 1
@.str83 = private unnamed_addr constant [21 x i8] c"Shift remains static\00", align 1
@.str84 = private unnamed_addr constant [8 x i8] c"slicing\00", align 1
@.str85 = private unnamed_addr constant [31 x i8] c"Slicing condition to implement\00", align 1
@.str86 = private unnamed_addr constant [9 x i8] c"geodesic\00", align 1
@.str87 = private unnamed_addr constant [22 x i8] c"Lapse is set to unity\00", align 1
@.str88 = private unnamed_addr constant [21 x i8] c"Lapse is not evolved\00", align 1
@.str89 = private unnamed_addr constant [6 x i8] c"mixed\00", align 1
@.str90 = private unnamed_addr constant [58 x i8] c"Allow mixed slicing, specified in parameter mixed_slicing\00", align 1
@.str91 = private unnamed_addr constant [16 x i8] c"slicing_verbose\00", align 1
@.str92 = private unnamed_addr constant [37 x i8] c"Print information on current slicing\00", align 1
@.str93 = private unnamed_addr constant [19 x i8] c"print slicing info\00", align 1
@.str94 = private unnamed_addr constant [26 x i8] c"do not print slicing info\00", align 1
@.str95 = private unnamed_addr constant [14 x i8] c"use_conformal\00", align 1
@.str96 = private unnamed_addr constant [22 x i8] c"Use conformal metric?\00", align 1
@.str97 = private unnamed_addr constant [21 x i8] c"use_conformal_derivs\00", align 1
@.str98 = private unnamed_addr constant [37 x i8] c"Use derivatives of conformal metric?\00", align 1
@.str99 = private unnamed_addr constant [9 x i8] c"use_mask\00", align 1
@.str100 = private unnamed_addr constant [26 x i8] c"Turn on storage for mask?\00", align 1
@.str101 = private unnamed_addr constant [22 x i8] c"conformal_storage_all\00", align 1
@.str102 = private unnamed_addr constant [8 x i8] c"PRIVATE\00", align 1
@.str103 = private unnamed_addr constant [39 x i8] c"Assign storage for psi and derivatives\00", align 1
@einsteinpriv_ = external global %struct.anon.0
@.str104 = private unnamed_addr constant [6 x i8] c"dtfac\00", align 1
@.str105 = private unnamed_addr constant [29 x i8] c"Courant factor for evolution\00", align 1
@.str106 = private unnamed_addr constant [4 x i8] c"0.5\00", align 1
@.str107 = private unnamed_addr constant [66 x i8] c"Can  in principle be anything, although negative would be strange\00", align 1
@.str108 = private unnamed_addr constant [12 x i8] c"gauge_speed\00", align 1
@.str109 = private unnamed_addr constant [36 x i8] c"Gauge speed for Courant calculation\00", align 1
@.str110 = private unnamed_addr constant [4 x i8] c"1.0\00", align 1
@.str111 = private unnamed_addr constant [4 x i8] c"*:*\00", align 1
@.str112 = private unnamed_addr constant [17 x i8] c"rsquared_in_sphm\00", align 1
@.str113 = private unnamed_addr constant [42 x i8] c"Parameter in carttosphere, what does it ?\00", align 1
@.str114 = private unnamed_addr constant [9 x i8] c"wavecalc\00", align 1
@.str115 = private unnamed_addr constant [43 x i8] c"How to calculate the wavespeed for Courant\00", align 1
@.str116 = private unnamed_addr constant [20 x i8] c"three_point_inverse\00", align 1
@.str117 = private unnamed_addr constant [12 x i8] c"seven_point\00", align 1

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTKi_BindingsCreateEinsteinParameters() #0 {
  %1 = tail call i32 (i8*, i8*, i8*, i8*, i32, i8*, i8*, i8*, i32, ...)* @CCTKi_ParameterCreate(i8* getelementptr inbounds ([10 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8]* @.str3, i64 0, i64 0), i32 0, i8* getelementptr inbounds ([54 x i8]* @.str4, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str5, i64 0, i64 0), i8* bitcast (i8** getelementptr inbounds (%struct.anon* @einsteinrest_, i64 0, i32 5) to i8*), i32 3, i8* getelementptr inbounds ([8 x i8]* @.str6, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8]* @.str7, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str8, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8]* @.str9, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str5, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8]* @.str10, i64 0, i64 0)) #3, !dbg !13
  %2 = tail call i32 (i8*, i8*, i8*, i8*, i32, i8*, i8*, i8*, i32, ...)* @CCTKi_ParameterCreate(i8* getelementptr inbounds ([26 x i8]* @.str11, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str12, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8]* @.str3, i64 0, i64 0), i32 0, i8* getelementptr inbounds ([37 x i8]* @.str13, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8]* @.str14, i64 0, i64 0), i8* bitcast (i32* getelementptr inbounds (%struct.anon* @einsteinrest_, i64 0, i32 14) to i8*), i32 0) #3, !dbg !14
  %3 = tail call i32 (i8*, i8*, i8*, i8*, i32, i8*, i8*, i8*, i32, ...)* @CCTKi_ParameterCreate(i8* getelementptr inbounds ([17 x i8]* @.str15, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8]* @.str3, i64 0, i64 0), i32 0, i8* getelementptr inbounds ([27 x i8]* @.str16, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str17, i64 0, i64 0), i8* bitcast (i8** getelementptr inbounds (%struct.anon* @einsteinrest_, i64 0, i32 6) to i8*), i32 1, i8* getelementptr inbounds ([5 x i8]* @.str17, i64 0, i64 0), i8* getelementptr inbounds ([23 x i8]* @.str18, i64 0, i64 0)) #3, !dbg !15
  %4 = tail call i32 (i8*, i8*, i8*, i8*, i32, i8*, i8*, i8*, i32, ...)* @CCTKi_ParameterCreate(i8* getelementptr inbounds ([19 x i8]* @.str19, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str20, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8]* @.str3, i64 0, i64 0), i32 0, i8* getelementptr inbounds ([44 x i8]* @.str21, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str22, i64 0, i64 0), i8* bitcast (%struct.anon* @einsteinrest_ to i8*), i32 1, i8* getelementptr inbounds ([2 x i8]* @.str23, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str24, i64 0, i64 0)) #3, !dbg !16
  %5 = tail call i32 (i8*, i8*, i8*, i8*, i32, i8*, i8*, i8*, i32, ...)* @CCTKi_ParameterCreate(i8* getelementptr inbounds ([16 x i8]* @.str25, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str20, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8]* @.str3, i64 0, i64 0), i32 0, i8* getelementptr inbounds ([43 x i8]* @.str26, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str22, i64 0, i64 0), i8* bitcast (double* getelementptr inbounds (%struct.anon* @einsteinrest_, i64 0, i32 1) to i8*), i32 1, i8* getelementptr inbounds ([2 x i8]* @.str23, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str24, i64 0, i64 0)) #3, !dbg !17
  %6 = tail call i32 (i8*, i8*, i8*, i8*, i32, i8*, i8*, i8*, i32, ...)* @CCTKi_ParameterCreate(i8* getelementptr inbounds ([13 x i8]* @.str27, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8]* @.str3, i64 0, i64 0), i32 0, i8* getelementptr inbounds ([35 x i8]* @.str28, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str29, i64 0, i64 0), i8* bitcast (i8** getelementptr inbounds (%struct.anon* @einsteinrest_, i64 0, i32 7) to i8*), i32 1, i8* getelementptr inbounds ([5 x i8]* @.str29, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8]* @.str30, i64 0, i64 0)) #3, !dbg !18
  %7 = tail call i32 (i8*, i8*, i8*, i8*, i32, i8*, i8*, i8*, i32, ...)* @CCTKi_ParameterCreate(i8* getelementptr inbounds ([14 x i8]* @.str31, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8]* @.str3, i64 0, i64 0), i32 0, i8* getelementptr inbounds ([28 x i8]* @.str32, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8]* @.str33, i64 0, i64 0), i8* bitcast (i8** getelementptr inbounds (%struct.anon* @einsteinrest_, i64 0, i32 8) to i8*), i32 4, i8* getelementptr inbounds ([4 x i8]* @.str33, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8]* @.str34, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str35, i64 0, i64 0), i8* getelementptr inbounds ([32 x i8]* @.str36, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8]* @.str37, i64 0, i64 0), i8* getelementptr inbounds ([23 x i8]* @.str38, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8]* @.str39, i64 0, i64 0), i8* getelementptr inbounds ([28 x i8]* @.str40, i64 0, i64 0)) #3, !dbg !19
  %8 = tail call i32 (i8*, i8*, i8*, i8*, i32, i8*, i8*, i8*, i32, ...)* @CCTKi_ParameterCreate(i8* getelementptr inbounds ([14 x i8]* @.str41, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8]* @.str3, i64 0, i64 0), i32 0, i8* getelementptr inbounds ([28 x i8]* @.str42, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str43, i64 0, i64 0), i8* bitcast (i8** getelementptr inbounds (%struct.anon* @einsteinrest_, i64 0, i32 9) to i8*), i32 2, i8* getelementptr inbounds ([5 x i8]* @.str43, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8]* @.str44, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str45, i64 0, i64 0), i8* getelementptr inbounds ([36 x i8]* @.str46, i64 0, i64 0)) #3, !dbg !20
  %9 = tail call i32 (i8*, i8*, i8*, i8*, i32, i8*, i8*, i8*, i32, ...)* @CCTKi_ParameterCreate(i8* getelementptr inbounds ([14 x i8]* @.str47, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str48, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8]* @.str3, i64 0, i64 0), i32 0, i8* getelementptr inbounds ([72 x i8]* @.str49, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str17, i64 0, i64 0), i8* bitcast (i8** getelementptr inbounds (%struct.anon* @einsteinrest_, i64 0, i32 10) to i8*), i32 1, i8* getelementptr inbounds ([3 x i8]* @.str50, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8]* @.str51, i64 0, i64 0)) #3, !dbg !21
  %10 = tail call i32 (i8*, i8*, i8*, i8*, i32, i8*, i8*, i8*, i32, ...)* @CCTKi_ParameterCreate(i8* getelementptr inbounds ([16 x i8]* @.str52, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str20, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8]* @.str3, i64 0, i64 0), i32 0, i8* getelementptr inbounds ([38 x i8]* @.str53, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8]* @.str54, i64 0, i64 0), i8* bitcast (double* getelementptr inbounds (%struct.anon* @einsteinrest_, i64 0, i32 2) to i8*), i32 1, i8* getelementptr inbounds ([8 x i8]* @.str55, i64 0, i64 0), i8* getelementptr inbounds ([43 x i8]* @.str56, i64 0, i64 0)) #3, !dbg !22
  %11 = tail call i32 (i8*, i8*, i8*, i8*, i32, i8*, i8*, i8*, i32, ...)* @CCTKi_ParameterCreate(i8* getelementptr inbounds ([14 x i8]* @.str57, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str12, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8]* @.str3, i64 0, i64 0), i32 0, i8* getelementptr inbounds ([56 x i8]* @.str58, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8]* @.str59, i64 0, i64 0), i8* bitcast (i32* getelementptr inbounds (%struct.anon* @einsteinrest_, i64 0, i32 15) to i8*), i32 0) #3, !dbg !23
  %12 = tail call i32 (i8*, i8*, i8*, i8*, i32, i8*, i8*, i8*, i32, ...)* @CCTKi_ParameterCreate(i8* getelementptr inbounds ([18 x i8]* @.str60, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8]* @.str61, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8]* @.str3, i64 0, i64 0), i32 0, i8* getelementptr inbounds ([57 x i8]* @.str62, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8]* @.str63, i64 0, i64 0), i8* bitcast (i32* getelementptr inbounds (%struct.anon* @einsteinrest_, i64 0, i32 16) to i8*), i32 1, i8* getelementptr inbounds ([3 x i8]* @.str64, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8]* @.str65, i64 0, i64 0)) #3, !dbg !24
  %13 = tail call i32 (i8*, i8*, i8*, i8*, i32, i8*, i8*, i8*, i32, ...)* @CCTKi_ParameterCreate(i8* getelementptr inbounds ([20 x i8]* @.str66, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str20, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8]* @.str3, i64 0, i64 0), i32 0, i8* getelementptr inbounds ([34 x i8]* @.str67, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8]* @.str68, i64 0, i64 0), i8* bitcast (double* getelementptr inbounds (%struct.anon* @einsteinrest_, i64 0, i32 3) to i8*), i32 1, i8* getelementptr inbounds ([3 x i8]* @.str69, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8]* @.str70, i64 0, i64 0)) #3, !dbg !25
  %14 = tail call i32 (i8*, i8*, i8*, i8*, i32, i8*, i8*, i8*, i32, ...)* @CCTKi_ParameterCreate(i8* getelementptr inbounds ([15 x i8]* @.str71, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str20, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8]* @.str3, i64 0, i64 0), i32 1, i8* getelementptr inbounds ([44 x i8]* @.str72, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8]* @.str54, i64 0, i64 0), i8* bitcast (double* getelementptr inbounds (%struct.anon* @einsteinrest_, i64 0, i32 4) to i8*), i32 1, i8* getelementptr inbounds ([2 x i8]* @.str23, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8]* @.str73, i64 0, i64 0)) #3, !dbg !26
  %15 = tail call i32 (i8*, i8*, i8*, i8*, i32, i8*, i8*, i8*, i32, ...)* @CCTKi_ParameterCreate(i8* getelementptr inbounds ([18 x i8]* @.str74, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8]* @.str61, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8]* @.str3, i64 0, i64 0), i32 0, i8* getelementptr inbounds ([40 x i8]* @.str75, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8]* @.str76, i64 0, i64 0), i8* bitcast (i32* getelementptr inbounds (%struct.anon* @einsteinrest_, i64 0, i32 17) to i8*), i32 1, i8* getelementptr inbounds ([3 x i8]* @.str69, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8]* @.str77, i64 0, i64 0)) #3, !dbg !27
  %16 = tail call i32 (i8*, i8*, i8*, i8*, i32, i8*, i8*, i8*, i32, ...)* @CCTKi_ParameterCreate(i8* getelementptr inbounds ([6 x i8]* @.str78, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8]* @.str3, i64 0, i64 0), i32 0, i8* getelementptr inbounds ([29 x i8]* @.str79, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str17, i64 0, i64 0), i8* bitcast (i8** getelementptr inbounds (%struct.anon* @einsteinrest_, i64 0, i32 11) to i8*), i32 3, i8* getelementptr inbounds ([5 x i8]* @.str17, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8]* @.str80, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str43, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8]* @.str81, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str82, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8]* @.str83, i64 0, i64 0)) #3, !dbg !28
  %17 = tail call i32 (i8*, i8*, i8*, i8*, i32, i8*, i8*, i8*, i32, ...)* @CCTKi_ParameterCreate(i8* getelementptr inbounds ([8 x i8]* @.str84, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8]* @.str3, i64 0, i64 0), i32 0, i8* getelementptr inbounds ([31 x i8]* @.str85, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str86, i64 0, i64 0), i8* bitcast (i8** getelementptr inbounds (%struct.anon* @einsteinrest_, i64 0, i32 12) to i8*), i32 3, i8* getelementptr inbounds ([9 x i8]* @.str86, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8]* @.str87, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str82, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8]* @.str88, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8]* @.str89, i64 0, i64 0), i8* getelementptr inbounds ([58 x i8]* @.str90, i64 0, i64 0)) #3, !dbg !29
  %18 = tail call i32 (i8*, i8*, i8*, i8*, i32, i8*, i8*, i8*, i32, ...)* @CCTKi_ParameterCreate(i8* getelementptr inbounds ([16 x i8]* @.str91, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8]* @.str3, i64 0, i64 0), i32 0, i8* getelementptr inbounds ([37 x i8]* @.str92, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8]* @.str59, i64 0, i64 0), i8* bitcast (i8** getelementptr inbounds (%struct.anon* @einsteinrest_, i64 0, i32 13) to i8*), i32 2, i8* getelementptr inbounds ([4 x i8]* @.str14, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8]* @.str93, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8]* @.str59, i64 0, i64 0), i8* getelementptr inbounds ([26 x i8]* @.str94, i64 0, i64 0)) #3, !dbg !30
  %19 = tail call i32 (i8*, i8*, i8*, i8*, i32, i8*, i8*, i8*, i32, ...)* @CCTKi_ParameterCreate(i8* getelementptr inbounds ([14 x i8]* @.str95, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str12, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8]* @.str3, i64 0, i64 0), i32 0, i8* getelementptr inbounds ([22 x i8]* @.str96, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8]* @.str14, i64 0, i64 0), i8* bitcast (i32* getelementptr inbounds (%struct.anon* @einsteinrest_, i64 0, i32 18) to i8*), i32 0) #3, !dbg !31
  %20 = tail call i32 (i8*, i8*, i8*, i8*, i32, i8*, i8*, i8*, i32, ...)* @CCTKi_ParameterCreate(i8* getelementptr inbounds ([21 x i8]* @.str97, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str12, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8]* @.str3, i64 0, i64 0), i32 0, i8* getelementptr inbounds ([37 x i8]* @.str98, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8]* @.str14, i64 0, i64 0), i8* bitcast (i32* getelementptr inbounds (%struct.anon* @einsteinrest_, i64 0, i32 19) to i8*), i32 0) #3, !dbg !32
  %21 = tail call i32 (i8*, i8*, i8*, i8*, i32, i8*, i8*, i8*, i32, ...)* @CCTKi_ParameterCreate(i8* getelementptr inbounds ([9 x i8]* @.str99, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str12, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8]* @.str3, i64 0, i64 0), i32 0, i8* getelementptr inbounds ([26 x i8]* @.str100, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8]* @.str59, i64 0, i64 0), i8* bitcast (i32* getelementptr inbounds (%struct.anon* @einsteinrest_, i64 0, i32 20) to i8*), i32 0) #3, !dbg !33
  %22 = tail call i32 (i8*, i8*, i8*, i8*, i32, i8*, i8*, i8*, i32, ...)* @CCTKi_ParameterCreate(i8* getelementptr inbounds ([22 x i8]* @.str101, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str12, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str102, i64 0, i64 0), i32 0, i8* getelementptr inbounds ([39 x i8]* @.str103, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8]* @.str14, i64 0, i64 0), i8* bitcast (i32* getelementptr inbounds (%struct.anon.0* @einsteinpriv_, i64 0, i32 3) to i8*), i32 0) #3, !dbg !34
  %23 = tail call i32 (i8*, i8*, i8*, i8*, i32, i8*, i8*, i8*, i32, ...)* @CCTKi_ParameterCreate(i8* getelementptr inbounds ([6 x i8]* @.str104, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str20, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str102, i64 0, i64 0), i32 0, i8* getelementptr inbounds ([29 x i8]* @.str105, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8]* @.str106, i64 0, i64 0), i8* bitcast (%struct.anon.0* @einsteinpriv_ to i8*), i32 1, i8* getelementptr inbounds ([2 x i8]* @.str23, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str107, i64 0, i64 0)) #3, !dbg !35
  %24 = tail call i32 (i8*, i8*, i8*, i8*, i32, i8*, i8*, i8*, i32, ...)* @CCTKi_ParameterCreate(i8* getelementptr inbounds ([12 x i8]* @.str108, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str20, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str102, i64 0, i64 0), i32 0, i8* getelementptr inbounds ([36 x i8]* @.str109, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8]* @.str110, i64 0, i64 0), i8* bitcast (double* getelementptr inbounds (%struct.anon.0* @einsteinpriv_, i64 0, i32 1) to i8*), i32 1, i8* getelementptr inbounds ([4 x i8]* @.str111, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str24, i64 0, i64 0)) #3, !dbg !36
  %25 = tail call i32 (i8*, i8*, i8*, i8*, i32, i8*, i8*, i8*, i32, ...)* @CCTKi_ParameterCreate(i8* getelementptr inbounds ([17 x i8]* @.str112, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str12, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str102, i64 0, i64 0), i32 0, i8* getelementptr inbounds ([42 x i8]* @.str113, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8]* @.str59, i64 0, i64 0), i8* bitcast (i32* getelementptr inbounds (%struct.anon.0* @einsteinpriv_, i64 0, i32 4) to i8*), i32 0) #3, !dbg !37
  %26 = tail call i32 (i8*, i8*, i8*, i8*, i32, i8*, i8*, i8*, i32, ...)* @CCTKi_ParameterCreate(i8* getelementptr inbounds ([9 x i8]* @.str114, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str102, i64 0, i64 0), i32 0, i8* getelementptr inbounds ([43 x i8]* @.str115, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8]* @.str116, i64 0, i64 0), i8* bitcast (i8** getelementptr inbounds (%struct.anon.0* @einsteinpriv_, i64 0, i32 2) to i8*), i32 2, i8* getelementptr inbounds ([20 x i8]* @.str116, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str24, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8]* @.str117, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str24, i64 0, i64 0)) #3, !dbg !38
  ret i32 0, !dbg !39
}

; Function Attrs: optsize
declare i32 @CCTKi_ParameterCreate(i8*, i8*, i8*, i8*, i32, i8*, i8*, i8*, i32, ...) #1

; Function Attrs: nounwind optsize readnone ssp uwtable
define i32 @CCTKi_BindingsEinsteinParameterExtensions() #2 {
  ret i32 0, !dbg !40
}

attributes #0 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!9, !10, !11}
!llvm.ident = !{!12}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !2, subprograms: !3, globals: !2, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/CactusBindings/CreateEinsteinParameters.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4, !8}
!4 = !DISubprogram(name: "CCTKi_BindingsCreateEinsteinParameters", scope: !1, file: !1, line: 17, type: !5, isLocal: false, isDefinition: true, scopeLine: 18, flags: DIFlagPrototyped, isOptimized: true, function: i32 ()* @CCTKi_BindingsCreateEinsteinParameters, variables: !2)
!5 = !DISubroutineType(types: !6)
!6 = !{!7}
!7 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!8 = !DISubprogram(name: "CCTKi_BindingsEinsteinParameterExtensions", scope: !1, file: !1, line: 315, type: !5, isLocal: false, isDefinition: true, scopeLine: 316, flags: DIFlagPrototyped, isOptimized: true, function: i32 ()* @CCTKi_BindingsEinsteinParameterExtensions, variables: !2)
!9 = !{i32 2, !"Dwarf Version", i32 2}
!10 = !{i32 2, !"Debug Info Version", i32 700000003}
!11 = !{i32 1, !"PIC Level", i32 2}
!12 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!13 = !DILocation(line: 19, column: 3, scope: !4)
!14 = !DILocation(line: 32, column: 3, scope: !4)
!15 = !DILocation(line: 42, column: 3, scope: !4)
!16 = !DILocation(line: 53, column: 3, scope: !4)
!17 = !DILocation(line: 64, column: 3, scope: !4)
!18 = !DILocation(line: 75, column: 3, scope: !4)
!19 = !DILocation(line: 86, column: 3, scope: !4)
!20 = !DILocation(line: 100, column: 3, scope: !4)
!21 = !DILocation(line: 112, column: 3, scope: !4)
!22 = !DILocation(line: 123, column: 3, scope: !4)
!23 = !DILocation(line: 134, column: 3, scope: !4)
!24 = !DILocation(line: 144, column: 3, scope: !4)
!25 = !DILocation(line: 155, column: 3, scope: !4)
!26 = !DILocation(line: 166, column: 3, scope: !4)
!27 = !DILocation(line: 177, column: 3, scope: !4)
!28 = !DILocation(line: 188, column: 3, scope: !4)
!29 = !DILocation(line: 201, column: 3, scope: !4)
!30 = !DILocation(line: 214, column: 3, scope: !4)
!31 = !DILocation(line: 226, column: 3, scope: !4)
!32 = !DILocation(line: 236, column: 3, scope: !4)
!33 = !DILocation(line: 246, column: 3, scope: !4)
!34 = !DILocation(line: 256, column: 3, scope: !4)
!35 = !DILocation(line: 266, column: 3, scope: !4)
!36 = !DILocation(line: 277, column: 3, scope: !4)
!37 = !DILocation(line: 288, column: 3, scope: !4)
!38 = !DILocation(line: 298, column: 3, scope: !4)
!39 = !DILocation(line: 310, column: 3, scope: !4)
!40 = !DILocation(line: 317, column: 3, scope: !8)
