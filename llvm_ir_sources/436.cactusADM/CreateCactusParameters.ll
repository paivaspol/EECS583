; ModuleID = '../../SPEC/benchspec/CPU2006/436.cactusADM/src/CactusBindings/CreateCactusParameters.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { double, double, i8*, i32, i32 }
%struct.anon.0 = type { i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [16 x i8] c"cctk_final_time\00", align 1
@.str1 = private unnamed_addr constant [7 x i8] c"Cactus\00", align 1
@.str2 = private unnamed_addr constant [5 x i8] c"REAL\00", align 1
@.str3 = private unnamed_addr constant [11 x i8] c"RESTRICTED\00", align 1
@.str4 = private unnamed_addr constant [25 x i8] c"Final time for evolution\00", align 1
@.str5 = private unnamed_addr constant [5 x i8] c"-1.0\00", align 1
@cactusrest_ = external global %struct.anon
@.str6 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str7 = private unnamed_addr constant [9 x i8] c"Anything\00", align 1
@.str8 = private unnamed_addr constant [18 x i8] c"cctk_initial_time\00", align 1
@.str9 = private unnamed_addr constant [27 x i8] c"Initial time for evolution\00", align 1
@.str10 = private unnamed_addr constant [4 x i8] c"0.0\00", align 1
@.str11 = private unnamed_addr constant [12 x i8] c"cctk_itlast\00", align 1
@.str12 = private unnamed_addr constant [4 x i8] c"INT\00", align 1
@.str13 = private unnamed_addr constant [23 x i8] c"Final iteration number\00", align 1
@.str14 = private unnamed_addr constant [3 x i8] c"10\00", align 1
@.str15 = private unnamed_addr constant [12 x i8] c"Any integer\00", align 1
@.str16 = private unnamed_addr constant [10 x i8] c"terminate\00", align 1
@.str17 = private unnamed_addr constant [8 x i8] c"KEYWORD\00", align 1
@.str18 = private unnamed_addr constant [47 x i8] c"Condition on which to terminate evolution loop\00", align 1
@.str19 = private unnamed_addr constant [10 x i8] c"iteration\00", align 1
@.str20 = private unnamed_addr constant [6 x i8] c"never\00", align 1
@.str21 = private unnamed_addr constant [16 x i8] c"Never terminate\00", align 1
@.str22 = private unnamed_addr constant [49 x i8] c"Take termination condition from iteration number\00", align 1
@.str23 = private unnamed_addr constant [5 x i8] c"time\00", align 1
@.str24 = private unnamed_addr constant [48 x i8] c"Take termination condition from coordinate time\00", align 1
@.str25 = private unnamed_addr constant [7 x i8] c"either\00", align 1
@.str26 = private unnamed_addr constant [75 x i8] c"Take termination condition from either iteration number or coordinate time\00", align 1
@.str27 = private unnamed_addr constant [5 x i8] c"both\00", align 1
@.str28 = private unnamed_addr constant [74 x i8] c"Take termination condition from both iteration number and coordinate time\00", align 1
@.str29 = private unnamed_addr constant [15 x i8] c"terminate_next\00", align 1
@.str30 = private unnamed_addr constant [8 x i8] c"BOOLEAN\00", align 1
@.str31 = private unnamed_addr constant [29 x i8] c"Terminate on next iteration?\00", align 1
@.str32 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@.str33 = private unnamed_addr constant [19 x i8] c"allow_mixeddim_gfs\00", align 1
@.str34 = private unnamed_addr constant [8 x i8] c"PRIVATE\00", align 1
@.str35 = private unnamed_addr constant [43 x i8] c"Allow use of GFs from different dimensions\00", align 1
@cactuspriv_ = external global %struct.anon.0
@.str36 = private unnamed_addr constant [18 x i8] c"cctk_brief_output\00", align 1
@.str37 = private unnamed_addr constant [23 x i8] c"Give only brief output\00", align 1
@.str38 = private unnamed_addr constant [19 x i8] c"cctk_full_warnings\00", align 1
@.str39 = private unnamed_addr constant [53 x i8] c"Give detailed information for each warning statement\00", align 1
@.str40 = private unnamed_addr constant [15 x i8] c"cctk_run_title\00", align 1
@.str41 = private unnamed_addr constant [7 x i8] c"STRING\00", align 1
@.str42 = private unnamed_addr constant [31 x i8] c"Description of this simulation\00", align 1
@.str43 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str44 = private unnamed_addr constant [3 x i8] c".*\00", align 1
@.str45 = private unnamed_addr constant [11 x i8] c"Any string\00", align 1
@.str46 = private unnamed_addr constant [18 x i8] c"cctk_show_banners\00", align 1
@.str47 = private unnamed_addr constant [53 x i8] c"Show any registered banners for the different thorns\00", align 1
@.str48 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str49 = private unnamed_addr constant [19 x i8] c"cctk_show_schedule\00", align 1
@.str50 = private unnamed_addr constant [45 x i8] c"Print the scheduling tree to standard output\00", align 1
@.str51 = private unnamed_addr constant [24 x i8] c"cctk_strong_param_check\00", align 1
@.str52 = private unnamed_addr constant [43 x i8] c"Die on parameter errors in CCTK_PARAMCHECK\00", align 1
@.str53 = private unnamed_addr constant [18 x i8] c"cctk_timer_output\00", align 1
@.str54 = private unnamed_addr constant [27 x i8] c"Provide output from timers\00", align 1
@.str55 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@.str56 = private unnamed_addr constant [16 x i8] c"No timer output\00", align 1
@.str57 = private unnamed_addr constant [5 x i8] c"full\00", align 1
@.str58 = private unnamed_addr constant [22 x i8] c"Detailed timer output\00", align 1
@.str59 = private unnamed_addr constant [19 x i8] c"manual_cache_setup\00", align 1
@.str60 = private unnamed_addr constant [28 x i8] c"Set the cache size manually\00", align 1
@.str61 = private unnamed_addr constant [18 x i8] c"manual_cache_size\00", align 1
@.str62 = private unnamed_addr constant [63 x i8] c"The size to set the cache to if not done automatically (bytes)\00", align 1
@.str63 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str64 = private unnamed_addr constant [3 x i8] c"0:\00", align 1
@.str65 = private unnamed_addr constant [17 x i8] c"Any whole number\00", align 1
@.str66 = private unnamed_addr constant [23 x i8] c"manual_cacheline_bytes\00", align 1
@.str67 = private unnamed_addr constant [57 x i8] c"The size of a cacheline if not set automatically (bytes)\00", align 1

; Function Attrs: nounwind optsize uwtable
define i32 @CCTKi_BindingsCreateCactusParameters() #0 {
entry:
  %call = tail call i32 (i8*, i8*, i8*, i8*, i32, i8*, i8*, i8*, i32, ...)* @CCTKi_ParameterCreate(i8* getelementptr inbounds ([16 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8]* @.str3, i64 0, i64 0), i32 1, i8* getelementptr inbounds ([25 x i8]* @.str4, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str5, i64 0, i64 0), i8* bitcast (%struct.anon* @cactusrest_ to i8*), i32 1, i8* getelementptr inbounds ([2 x i8]* @.str6, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str7, i64 0, i64 0)) #3, !dbg !10
  %call1 = tail call i32 (i8*, i8*, i8*, i8*, i32, i8*, i8*, i8*, i32, ...)* @CCTKi_ParameterCreate(i8* getelementptr inbounds ([18 x i8]* @.str8, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8]* @.str3, i64 0, i64 0), i32 0, i8* getelementptr inbounds ([27 x i8]* @.str9, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8]* @.str10, i64 0, i64 0), i8* bitcast (double* getelementptr inbounds (%struct.anon* @cactusrest_, i64 0, i32 1) to i8*), i32 1, i8* getelementptr inbounds ([2 x i8]* @.str6, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str7, i64 0, i64 0)) #3, !dbg !11
  %call2 = tail call i32 (i8*, i8*, i8*, i8*, i32, i8*, i8*, i8*, i32, ...)* @CCTKi_ParameterCreate(i8* getelementptr inbounds ([12 x i8]* @.str11, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8]* @.str12, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8]* @.str3, i64 0, i64 0), i32 1, i8* getelementptr inbounds ([23 x i8]* @.str13, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8]* @.str14, i64 0, i64 0), i8* bitcast (i32* getelementptr inbounds (%struct.anon* @cactusrest_, i64 0, i32 3) to i8*), i32 1, i8* getelementptr inbounds ([2 x i8]* @.str6, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8]* @.str15, i64 0, i64 0)) #3, !dbg !12
  %call3 = tail call i32 (i8*, i8*, i8*, i8*, i32, i8*, i8*, i8*, i32, ...)* @CCTKi_ParameterCreate(i8* getelementptr inbounds ([10 x i8]* @.str16, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str17, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8]* @.str3, i64 0, i64 0), i32 1, i8* getelementptr inbounds ([47 x i8]* @.str18, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8]* @.str19, i64 0, i64 0), i8* bitcast (i8** getelementptr inbounds (%struct.anon* @cactusrest_, i64 0, i32 2) to i8*), i32 5, i8* getelementptr inbounds ([6 x i8]* @.str20, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8]* @.str21, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8]* @.str19, i64 0, i64 0), i8* getelementptr inbounds ([49 x i8]* @.str22, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str23, i64 0, i64 0), i8* getelementptr inbounds ([48 x i8]* @.str24, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str25, i64 0, i64 0), i8* getelementptr inbounds ([75 x i8]* @.str26, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str27, i64 0, i64 0), i8* getelementptr inbounds ([74 x i8]* @.str28, i64 0, i64 0)) #3, !dbg !13
  %call4 = tail call i32 (i8*, i8*, i8*, i8*, i32, i8*, i8*, i8*, i32, ...)* @CCTKi_ParameterCreate(i8* getelementptr inbounds ([15 x i8]* @.str29, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str30, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8]* @.str3, i64 0, i64 0), i32 1, i8* getelementptr inbounds ([29 x i8]* @.str31, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8]* @.str32, i64 0, i64 0), i8* bitcast (i32* getelementptr inbounds (%struct.anon* @cactusrest_, i64 0, i32 4) to i8*), i32 0) #3, !dbg !14
  %call5 = tail call i32 (i8*, i8*, i8*, i8*, i32, i8*, i8*, i8*, i32, ...)* @CCTKi_ParameterCreate(i8* getelementptr inbounds ([19 x i8]* @.str33, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str30, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str34, i64 0, i64 0), i32 0, i8* getelementptr inbounds ([43 x i8]* @.str35, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8]* @.str32, i64 0, i64 0), i8* bitcast (i32* getelementptr inbounds (%struct.anon.0* @cactuspriv_, i64 0, i32 2) to i8*), i32 0) #3, !dbg !15
  %call6 = tail call i32 (i8*, i8*, i8*, i8*, i32, i8*, i8*, i8*, i32, ...)* @CCTKi_ParameterCreate(i8* getelementptr inbounds ([18 x i8]* @.str36, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str30, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str34, i64 0, i64 0), i32 0, i8* getelementptr inbounds ([23 x i8]* @.str37, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8]* @.str32, i64 0, i64 0), i8* bitcast (i32* getelementptr inbounds (%struct.anon.0* @cactuspriv_, i64 0, i32 3) to i8*), i32 0) #3, !dbg !16
  %call7 = tail call i32 (i8*, i8*, i8*, i8*, i32, i8*, i8*, i8*, i32, ...)* @CCTKi_ParameterCreate(i8* getelementptr inbounds ([19 x i8]* @.str38, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str30, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str34, i64 0, i64 0), i32 1, i8* getelementptr inbounds ([53 x i8]* @.str39, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8]* @.str32, i64 0, i64 0), i8* bitcast (i32* getelementptr inbounds (%struct.anon.0* @cactuspriv_, i64 0, i32 4) to i8*), i32 0) #3, !dbg !17
  %call8 = tail call i32 (i8*, i8*, i8*, i8*, i32, i8*, i8*, i8*, i32, ...)* @CCTKi_ParameterCreate(i8* getelementptr inbounds ([15 x i8]* @.str40, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str41, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str34, i64 0, i64 0), i32 0, i8* getelementptr inbounds ([31 x i8]* @.str42, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str43, i64 0, i64 0), i8* bitcast (%struct.anon.0* @cactuspriv_ to i8*), i32 1, i8* getelementptr inbounds ([3 x i8]* @.str44, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8]* @.str45, i64 0, i64 0)) #3, !dbg !18
  %call9 = tail call i32 (i8*, i8*, i8*, i8*, i32, i8*, i8*, i8*, i32, ...)* @CCTKi_ParameterCreate(i8* getelementptr inbounds ([18 x i8]* @.str46, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str30, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str34, i64 0, i64 0), i32 0, i8* getelementptr inbounds ([53 x i8]* @.str47, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8]* @.str48, i64 0, i64 0), i8* bitcast (i32* getelementptr inbounds (%struct.anon.0* @cactuspriv_, i64 0, i32 5) to i8*), i32 0) #3, !dbg !19
  %call10 = tail call i32 (i8*, i8*, i8*, i8*, i32, i8*, i8*, i8*, i32, ...)* @CCTKi_ParameterCreate(i8* getelementptr inbounds ([19 x i8]* @.str49, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str30, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str34, i64 0, i64 0), i32 0, i8* getelementptr inbounds ([45 x i8]* @.str50, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8]* @.str48, i64 0, i64 0), i8* bitcast (i32* getelementptr inbounds (%struct.anon.0* @cactuspriv_, i64 0, i32 6) to i8*), i32 0) #3, !dbg !20
  %call11 = tail call i32 (i8*, i8*, i8*, i8*, i32, i8*, i8*, i8*, i32, ...)* @CCTKi_ParameterCreate(i8* getelementptr inbounds ([24 x i8]* @.str51, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str30, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str34, i64 0, i64 0), i32 0, i8* getelementptr inbounds ([43 x i8]* @.str52, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8]* @.str48, i64 0, i64 0), i8* bitcast (i32* getelementptr inbounds (%struct.anon.0* @cactuspriv_, i64 0, i32 7) to i8*), i32 0) #3, !dbg !21
  %call12 = tail call i32 (i8*, i8*, i8*, i8*, i32, i8*, i8*, i8*, i32, ...)* @CCTKi_ParameterCreate(i8* getelementptr inbounds ([18 x i8]* @.str53, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str17, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str34, i64 0, i64 0), i32 0, i8* getelementptr inbounds ([27 x i8]* @.str54, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8]* @.str55, i64 0, i64 0), i8* bitcast (i8** getelementptr inbounds (%struct.anon.0* @cactuspriv_, i64 0, i32 1) to i8*), i32 2, i8* getelementptr inbounds ([4 x i8]* @.str55, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8]* @.str56, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str57, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8]* @.str58, i64 0, i64 0)) #3, !dbg !22
  %call13 = tail call i32 (i8*, i8*, i8*, i8*, i32, i8*, i8*, i8*, i32, ...)* @CCTKi_ParameterCreate(i8* getelementptr inbounds ([19 x i8]* @.str59, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str30, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str34, i64 0, i64 0), i32 0, i8* getelementptr inbounds ([28 x i8]* @.str60, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8]* @.str32, i64 0, i64 0), i8* bitcast (i32* getelementptr inbounds (%struct.anon.0* @cactuspriv_, i64 0, i32 8) to i8*), i32 0) #3, !dbg !23
  %call14 = tail call i32 (i8*, i8*, i8*, i8*, i32, i8*, i8*, i8*, i32, ...)* @CCTKi_ParameterCreate(i8* getelementptr inbounds ([18 x i8]* @.str61, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8]* @.str12, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str34, i64 0, i64 0), i32 0, i8* getelementptr inbounds ([63 x i8]* @.str62, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8]* @.str63, i64 0, i64 0), i8* bitcast (i32* getelementptr inbounds (%struct.anon.0* @cactuspriv_, i64 0, i32 9) to i8*), i32 1, i8* getelementptr inbounds ([3 x i8]* @.str64, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8]* @.str65, i64 0, i64 0)) #3, !dbg !24
  %call15 = tail call i32 (i8*, i8*, i8*, i8*, i32, i8*, i8*, i8*, i32, ...)* @CCTKi_ParameterCreate(i8* getelementptr inbounds ([23 x i8]* @.str66, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8]* @.str12, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str34, i64 0, i64 0), i32 0, i8* getelementptr inbounds ([57 x i8]* @.str67, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8]* @.str63, i64 0, i64 0), i8* bitcast (i32* getelementptr inbounds (%struct.anon.0* @cactuspriv_, i64 0, i32 10) to i8*), i32 1, i8* getelementptr inbounds ([3 x i8]* @.str64, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8]* @.str65, i64 0, i64 0)) #3, !dbg !25
  ret i32 0, !dbg !26
}

; Function Attrs: optsize
declare i32 @CCTKi_ParameterCreate(i8*, i8*, i8*, i8*, i32, i8*, i8*, i8*, i32, ...) #1

; Function Attrs: nounwind optsize readnone uwtable
define i32 @CCTKi_BindingsCactusParameterExtensions() #2 {
entry:
  ret i32 0, !dbg !27
}

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize readnone uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CactusBindings/CreateCactusParameters.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/436.cactusADM/src/CactusBindings/CreateCactusParameters.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !9}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CCTKi_BindingsCreateCactusParameters", metadata !"CCTKi_BindingsCreateCactusParameters", metadata !"", i32 15, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 ()* @CCTKi_BindingsCreateCactusParameters, null, null, metadata !2, i32 16} ; [ DW_TAG_subprogram ] [line 15] [def] [scope 16] [CCTKi_BindingsCreateCactusParameters]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CactusBindings/CreateCactusParameters.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8}
!8 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!9 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CCTKi_BindingsCactusParameterExtensions", metadata !"CCTKi_BindingsCactusParameterExtensions", metadata !"", i32 195, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 ()* @CCTKi_BindingsCactusParameterExtensions, null, null, metadata !2, i32 196} ; [ DW_TAG_subprogram ] [line 195] [def] [scope 196] [CCTKi_BindingsCactusParameterExtensions]
!10 = metadata !{i32 17, i32 0, metadata !4, null}
!11 = metadata !{i32 28, i32 0, metadata !4, null}
!12 = metadata !{i32 39, i32 0, metadata !4, null}
!13 = metadata !{i32 50, i32 0, metadata !4, null}
!14 = metadata !{i32 65, i32 0, metadata !4, null}
!15 = metadata !{i32 75, i32 0, metadata !4, null}
!16 = metadata !{i32 85, i32 0, metadata !4, null}
!17 = metadata !{i32 95, i32 0, metadata !4, null}
!18 = metadata !{i32 105, i32 0, metadata !4, null}
!19 = metadata !{i32 116, i32 0, metadata !4, null}
!20 = metadata !{i32 126, i32 0, metadata !4, null}
!21 = metadata !{i32 136, i32 0, metadata !4, null}
!22 = metadata !{i32 146, i32 0, metadata !4, null}
!23 = metadata !{i32 158, i32 0, metadata !4, null}
!24 = metadata !{i32 168, i32 0, metadata !4, null}
!25 = metadata !{i32 179, i32 0, metadata !4, null}
!26 = metadata !{i32 190, i32 0, metadata !4, null}
!27 = metadata !{i32 197, i32 0, metadata !9, null}
