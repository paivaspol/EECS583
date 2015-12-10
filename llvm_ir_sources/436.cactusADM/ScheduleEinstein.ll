; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/CactusBindings/ScheduleEinstein.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.anon = type { double, double, double, double, double, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32 }
%struct.anon.2 = type { i8*, i32 }

@einsteinrest_ = external global %struct.anon
@timerest_ = external global %struct.anon.2
@.str = private unnamed_addr constant [17 x i8] c"einstein::metric\00", align 1
@.str1 = private unnamed_addr constant [15 x i8] c"einstein::curv\00", align 1
@.str2 = private unnamed_addr constant [16 x i8] c"einstein::lapse\00", align 1
@.str3 = private unnamed_addr constant [16 x i8] c"einstein::flags\00", align 1
@.str4 = private unnamed_addr constant [24 x i8] c"einstein::slicing_flags\00", align 1
@.str5 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str6 = private unnamed_addr constant [16 x i8] c"einstein::shift\00", align 1
@.str7 = private unnamed_addr constant [17 x i8] c"einstein::confac\00", align 1
@.str8 = private unnamed_addr constant [25 x i8] c"einstein::confac_1derivs\00", align 1
@.str9 = private unnamed_addr constant [25 x i8] c"einstein::confac_2derivs\00", align 1
@.str10 = private unnamed_addr constant [15 x i8] c"einstein::mask\00", align 1
@.str11 = private unnamed_addr constant [8 x i8] c"MaskOne\00", align 1
@.str12 = private unnamed_addr constant [9 x i8] c"Einstein\00", align 1
@.str13 = private unnamed_addr constant [9 x i8] c"einstein\00", align 1
@.str14 = private unnamed_addr constant [16 x i8] c"Set mask to one\00", align 1
@.str15 = private unnamed_addr constant [13 x i8] c"CCTK_INITIAL\00", align 1
@.str16 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str17 = private unnamed_addr constant [22 x i8] c"Einstein_InitSymBound\00", align 1
@.str18 = private unnamed_addr constant [21 x i8] c"Set up GF symmetries\00", align 1
@.str19 = private unnamed_addr constant [14 x i8] c"CCTK_BASEGRID\00", align 1
@.str20 = private unnamed_addr constant [25 x i8] c"Einstein_ActivateSlicing\00", align 1
@.str21 = private unnamed_addr constant [56 x i8] c"Initialize slicing, setup priorities for mixed slicings\00", align 1
@.str22 = private unnamed_addr constant [16 x i8] c"InitialEinstein\00", align 1
@.str23 = private unnamed_addr constant [36 x i8] c"Initialisation for Einstein methods\00", align 1
@.str24 = private unnamed_addr constant [5 x i8] c"flat\00", align 1
@.str25 = private unnamed_addr constant [12 x i8] c"InitialFlat\00", align 1
@.str26 = private unnamed_addr constant [18 x i8] c"Flat initial data\00", align 1
@.str27 = private unnamed_addr constant [4 x i8] c"one\00", align 1
@.str28 = private unnamed_addr constant [9 x i8] c"geodesic\00", align 1
@.str29 = private unnamed_addr constant [9 x i8] c"LapseOne\00", align 1
@.str30 = private unnamed_addr constant [25 x i8] c"Set initial lapse to one\00", align 1
@.str31 = private unnamed_addr constant [9 x i8] c"gaussian\00", align 1
@.str32 = private unnamed_addr constant [14 x i8] c"LapseGaussian\00", align 1
@.str33 = private unnamed_addr constant [32 x i8] c"Set initial lapse to a gaussian\00", align 1
@.str34 = private unnamed_addr constant [12 x i8] c"psiminustwo\00", align 1
@.str35 = private unnamed_addr constant [17 x i8] c"LapsePsiMinusTwo\00", align 1
@.str36 = private unnamed_addr constant [42 x i8] c"Set initial lapse to psi to the minus two\00", align 1
@.str37 = private unnamed_addr constant [22 x i8] c"BiBBAM_InitialWrapper\00", align 1
@.str38 = private unnamed_addr constant [13 x i8] c"IDAxiBrillBH\00", align 1
@.str39 = private unnamed_addr constant [14 x i8] c"Schwarzschild\00", align 1
@.str40 = private unnamed_addr constant [10 x i8] c"isotropic\00", align 1
@.str41 = private unnamed_addr constant [15 x i8] c"LapseIsotropic\00", align 1
@.str42 = private unnamed_addr constant [37 x i8] c"Set initial lapse to isotropic lapse\00", align 1
@.str43 = private unnamed_addr constant [5 x i8] c"zero\00", align 1
@.str44 = private unnamed_addr constant [10 x i8] c"ShiftZero\00", align 1
@.str45 = private unnamed_addr constant [26 x i8] c"Set initial shift to zero\00", align 1
@.str46 = private unnamed_addr constant [9 x i8] c"rotation\00", align 1
@.str47 = private unnamed_addr constant [14 x i8] c"ShiftRotation\00", align 1
@.str48 = private unnamed_addr constant [36 x i8] c"Set initial shift to rigid rotation\00", align 1
@.str49 = private unnamed_addr constant [24 x i8] c"Einstein_SetNextSlicing\00", align 1
@.str50 = private unnamed_addr constant [44 x i8] c"Identify the slicing for the next iteration\00", align 1
@.str51 = private unnamed_addr constant [13 x i8] c"CCTK_PRESTEP\00", align 1
@.str52 = private unnamed_addr constant [8 x i8] c"evaltrK\00", align 1
@.str53 = private unnamed_addr constant [45 x i8] c"Compute the trace of the extrinsic curvature\00", align 1
@.str54 = private unnamed_addr constant [14 x i8] c"CCTK_ANALYSIS\00", align 1
@.str55 = private unnamed_addr constant [21 x i8] c"Einstein::trace_of_K\00", align 1
@.str56 = private unnamed_addr constant [17 x i8] c"Einstein::detofg\00", align 1
@.str57 = private unnamed_addr constant [20 x i8] c"metric_carttosphere\00", align 1
@.str58 = private unnamed_addr constant [53 x i8] c"Calculate the spherical metric in r,theta(q), phi(p)\00", align 1
@.str59 = private unnamed_addr constant [27 x i8] c"Einstein::spherical_metric\00", align 1
@.str60 = private unnamed_addr constant [18 x i8] c"curv_carttosphere\00", align 1
@.str61 = private unnamed_addr constant [61 x i8] c"Calculate the spherical ex. curvature in r, theta(q), phi(p)\00", align 1
@.str62 = private unnamed_addr constant [25 x i8] c"Einstein::spherical_curv\00", align 1
@.str63 = private unnamed_addr constant [8 x i8] c"courant\00", align 1
@.str64 = private unnamed_addr constant [13 x i8] c"courant_time\00", align 1
@.str65 = private unnamed_addr constant [12 x i8] c"CalcCourant\00", align 1
@.str66 = private unnamed_addr constant [50 x i8] c"Calculate the wavespeed for the Courant condition\00", align 1
@.str67 = private unnamed_addr constant [12 x i8] c"Time_Simple\00", align 1

; Function Attrs: nounwind optsize ssp uwtable
define void @CCTKi_BindingsSchedule_Einstein() #0 {
  %1 = load i8** getelementptr inbounds (%struct.anon* @einsteinrest_, i64 0, i32 7), align 8, !tbaa !2
  %2 = load i8** getelementptr inbounds (%struct.anon* @einsteinrest_, i64 0, i32 8), align 8, !tbaa !9
  %3 = load i8** getelementptr inbounds (%struct.anon* @einsteinrest_, i64 0, i32 9), align 8, !tbaa !10
  %4 = load i8** getelementptr inbounds (%struct.anon* @einsteinrest_, i64 0, i32 11), align 8, !tbaa !11
  %5 = load i8** getelementptr inbounds (%struct.anon* @einsteinrest_, i64 0, i32 12), align 8, !tbaa !12
  %6 = load i32* getelementptr inbounds (%struct.anon* @einsteinrest_, i64 0, i32 14), align 8, !tbaa !13
  %7 = load i64* bitcast (i32* getelementptr inbounds (%struct.anon* @einsteinrest_, i64 0, i32 18) to i64*), align 8
  %8 = trunc i64 %7 to i32
  %9 = load i32* getelementptr inbounds (%struct.anon* @einsteinrest_, i64 0, i32 20), align 8, !tbaa !14
  %10 = load i8** getelementptr inbounds (%struct.anon.2* @timerest_, i64 0, i32 0), align 8, !tbaa !15
  %11 = tail call i32 @CCTKi_ScheduleGroupStorage(i8* getelementptr inbounds ([17 x i8]* @.str, i64 0, i64 0)) #2
  %12 = tail call i32 @CCTKi_ScheduleGroupStorage(i8* getelementptr inbounds ([15 x i8]* @.str1, i64 0, i64 0)) #2
  %13 = tail call i32 @CCTKi_ScheduleGroupStorage(i8* getelementptr inbounds ([16 x i8]* @.str2, i64 0, i64 0)) #2
  %14 = tail call i32 @CCTKi_ScheduleGroupStorage(i8* getelementptr inbounds ([16 x i8]* @.str3, i64 0, i64 0)) #2
  %15 = tail call i32 @CCTKi_ScheduleGroupStorage(i8* getelementptr inbounds ([24 x i8]* @.str4, i64 0, i64 0)) #2
  %16 = tail call i32 @CCTKi_ScheduleGroupComm(i8* getelementptr inbounds ([17 x i8]* @.str, i64 0, i64 0)) #2
  %17 = tail call i32 @CCTKi_ScheduleGroupComm(i8* getelementptr inbounds ([15 x i8]* @.str1, i64 0, i64 0)) #2
  %18 = tail call i32 @CCTKi_ScheduleGroupComm(i8* getelementptr inbounds ([16 x i8]* @.str2, i64 0, i64 0)) #2
  %19 = tail call i32 @CCTKi_ScheduleGroupComm(i8* getelementptr inbounds ([16 x i8]* @.str3, i64 0, i64 0)) #2
  %20 = tail call i32 @CCTKi_ScheduleGroupComm(i8* getelementptr inbounds ([24 x i8]* @.str4, i64 0, i64 0)) #2
  %21 = tail call i32 @CCTK_Equals(i8* %4, i8* getelementptr inbounds ([5 x i8]* @.str5, i64 0, i64 0)) #2
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %26

; <label>:23                                      ; preds = %0
  %24 = tail call i32 @CCTKi_ScheduleGroupStorage(i8* getelementptr inbounds ([16 x i8]* @.str6, i64 0, i64 0)) #2
  %25 = tail call i32 @CCTKi_ScheduleGroupComm(i8* getelementptr inbounds ([16 x i8]* @.str6, i64 0, i64 0)) #2
  br label %26

; <label>:26                                      ; preds = %0, %23
  %27 = icmp eq i32 %8, 0
  br i1 %27, label %31, label %28

; <label>:28                                      ; preds = %26
  %29 = tail call i32 @CCTKi_ScheduleGroupStorage(i8* getelementptr inbounds ([17 x i8]* @.str7, i64 0, i64 0)) #2
  %30 = tail call i32 @CCTKi_ScheduleGroupComm(i8* getelementptr inbounds ([17 x i8]* @.str7, i64 0, i64 0)) #2
  br label %31

; <label>:31                                      ; preds = %26, %28
  %32 = icmp ult i64 %7, 4294967296
  br i1 %32, label %38, label %33

; <label>:33                                      ; preds = %31
  %34 = tail call i32 @CCTKi_ScheduleGroupStorage(i8* getelementptr inbounds ([25 x i8]* @.str8, i64 0, i64 0)) #2
  %35 = tail call i32 @CCTKi_ScheduleGroupStorage(i8* getelementptr inbounds ([25 x i8]* @.str9, i64 0, i64 0)) #2
  %36 = tail call i32 @CCTKi_ScheduleGroupComm(i8* getelementptr inbounds ([25 x i8]* @.str8, i64 0, i64 0)) #2
  %37 = tail call i32 @CCTKi_ScheduleGroupComm(i8* getelementptr inbounds ([25 x i8]* @.str9, i64 0, i64 0)) #2
  br label %38

; <label>:38                                      ; preds = %31, %33
  %39 = icmp eq i32 %9, 0
  br i1 %39, label %44, label %40

; <label>:40                                      ; preds = %38
  %41 = tail call i32 @CCTKi_ScheduleGroupStorage(i8* getelementptr inbounds ([15 x i8]* @.str10, i64 0, i64 0)) #2
  %42 = tail call i32 @CCTKi_ScheduleGroupComm(i8* getelementptr inbounds ([15 x i8]* @.str10, i64 0, i64 0)) #2
  %43 = tail call i32 (i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, ...)* @CCTKi_ScheduleFunction(i8* bitcast (i32 ()* @MaskOne to i8*), i8* getelementptr inbounds ([8 x i8]* @.str11, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str12, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str13, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8]* @.str14, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8]* @.str15, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8]* @.str16, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0) #2
  br label %44

; <label>:44                                      ; preds = %38, %40
  %45 = tail call i32 (i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, ...)* @CCTKi_ScheduleFunction(i8* bitcast (i32 ()* @Einstein_InitSymBound to i8*), i8* getelementptr inbounds ([22 x i8]* @.str17, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str12, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str13, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8]* @.str18, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8]* @.str19, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8]* @.str16, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0) #2
  %46 = icmp ne i32 %6, 0
  br i1 %46, label %47, label %49

; <label>:47                                      ; preds = %44
  %48 = tail call i32 (i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, ...)* @CCTKi_ScheduleFunction(i8* bitcast (i32 ()* @Einstein_ActivateSlicing to i8*), i8* getelementptr inbounds ([25 x i8]* @.str20, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str12, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str13, i64 0, i64 0), i8* getelementptr inbounds ([56 x i8]* @.str21, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8]* @.str19, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8]* @.str16, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0) #2
  br label %49

; <label>:49                                      ; preds = %47, %44
  %50 = tail call i32 (i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, ...)* @CCTKi_ScheduleFunction(i8* bitcast (i32 ()* @InitialEinstein to i8*), i8* getelementptr inbounds ([16 x i8]* @.str22, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str12, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str13, i64 0, i64 0), i8* getelementptr inbounds ([36 x i8]* @.str23, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8]* @.str15, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8]* @.str16, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0) #2
  %51 = tail call i32 @CCTK_Equals(i8* %1, i8* getelementptr inbounds ([5 x i8]* @.str24, i64 0, i64 0)) #2
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %55, label %53

; <label>:53                                      ; preds = %49
  %54 = tail call i32 (i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, ...)* @CCTKi_ScheduleFunction(i8* bitcast (i32 ()* @InitialFlat to i8*), i8* getelementptr inbounds ([12 x i8]* @.str25, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str12, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str13, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8]* @.str26, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8]* @.str15, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8]* @.str16, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([16 x i8]* @.str22, i64 0, i64 0)) #2
  br label %55

; <label>:55                                      ; preds = %49, %53
  %56 = tail call i32 @CCTK_Equals(i8* %2, i8* getelementptr inbounds ([4 x i8]* @.str27, i64 0, i64 0)) #2
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %61

; <label>:58                                      ; preds = %55
  %59 = tail call i32 @CCTK_Equals(i8* %5, i8* getelementptr inbounds ([9 x i8]* @.str28, i64 0, i64 0)) #2
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %63, label %61

; <label>:61                                      ; preds = %58, %55
  %62 = tail call i32 (i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, ...)* @CCTKi_ScheduleFunction(i8* bitcast (i32 ()* @LapseOne to i8*), i8* getelementptr inbounds ([9 x i8]* @.str29, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str12, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str13, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8]* @.str30, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8]* @.str15, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8]* @.str16, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0) #2
  br label %63

; <label>:63                                      ; preds = %58, %61
  %64 = tail call i32 @CCTK_Equals(i8* %2, i8* getelementptr inbounds ([9 x i8]* @.str31, i64 0, i64 0)) #2
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %68, label %66

; <label>:66                                      ; preds = %63
  %67 = tail call i32 (i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, ...)* @CCTKi_ScheduleFunction(i8* bitcast (i32 ()* @LapseGaussian to i8*), i8* getelementptr inbounds ([14 x i8]* @.str32, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str12, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str13, i64 0, i64 0), i8* getelementptr inbounds ([32 x i8]* @.str33, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8]* @.str15, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8]* @.str16, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0) #2
  br label %68

; <label>:68                                      ; preds = %63, %66
  %69 = tail call i32 @CCTK_Equals(i8* %2, i8* getelementptr inbounds ([12 x i8]* @.str34, i64 0, i64 0)) #2
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %73, label %71

; <label>:71                                      ; preds = %68
  %72 = tail call i32 (i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, ...)* @CCTKi_ScheduleFunction(i8* bitcast (i32 ()* @LapsePsiMinusTwo to i8*), i8* getelementptr inbounds ([17 x i8]* @.str35, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str12, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str13, i64 0, i64 0), i8* getelementptr inbounds ([42 x i8]* @.str36, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8]* @.str15, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8]* @.str16, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3, i32 0, i8* getelementptr inbounds ([22 x i8]* @.str37, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8]* @.str38, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8]* @.str39, i64 0, i64 0)) #2
  br label %73

; <label>:73                                      ; preds = %68, %71
  %74 = tail call i32 @CCTK_Equals(i8* %2, i8* getelementptr inbounds ([10 x i8]* @.str40, i64 0, i64 0)) #2
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %78, label %76

; <label>:76                                      ; preds = %73
  %77 = tail call i32 (i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, ...)* @CCTKi_ScheduleFunction(i8* bitcast (i32 ()* @LapseIsotropic to i8*), i8* getelementptr inbounds ([15 x i8]* @.str41, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str12, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str13, i64 0, i64 0), i8* getelementptr inbounds ([37 x i8]* @.str42, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8]* @.str15, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8]* @.str16, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3, i32 0, i8* getelementptr inbounds ([22 x i8]* @.str37, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8]* @.str38, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8]* @.str39, i64 0, i64 0)) #2
  br label %78

; <label>:78                                      ; preds = %73, %76
  %79 = tail call i32 @CCTK_Equals(i8* %4, i8* getelementptr inbounds ([5 x i8]* @.str5, i64 0, i64 0)) #2
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %91

; <label>:81                                      ; preds = %78
  %82 = tail call i32 @CCTK_Equals(i8* %3, i8* getelementptr inbounds ([5 x i8]* @.str43, i64 0, i64 0)) #2
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %86, label %84

; <label>:84                                      ; preds = %81
  %85 = tail call i32 (i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, ...)* @CCTKi_ScheduleFunction(i8* bitcast (i32 ()* @ShiftZero to i8*), i8* getelementptr inbounds ([10 x i8]* @.str44, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str12, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str13, i64 0, i64 0), i8* getelementptr inbounds ([26 x i8]* @.str45, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8]* @.str15, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8]* @.str16, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0) #2
  br label %86

; <label>:86                                      ; preds = %81, %84
  %87 = tail call i32 @CCTK_Equals(i8* %3, i8* getelementptr inbounds ([9 x i8]* @.str46, i64 0, i64 0)) #2
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %91, label %89

; <label>:89                                      ; preds = %86
  %90 = tail call i32 (i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, ...)* @CCTKi_ScheduleFunction(i8* bitcast (i32 ()* @ShiftRotation to i8*), i8* getelementptr inbounds ([14 x i8]* @.str47, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str12, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str13, i64 0, i64 0), i8* getelementptr inbounds ([36 x i8]* @.str48, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8]* @.str15, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8]* @.str16, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3, i32 0, i8* getelementptr inbounds ([22 x i8]* @.str37, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8]* @.str38, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8]* @.str39, i64 0, i64 0)) #2
  br label %91

; <label>:91                                      ; preds = %86, %78, %89
  br i1 %46, label %92, label %94

; <label>:92                                      ; preds = %91
  %93 = tail call i32 (i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, ...)* @CCTKi_ScheduleFunction(i8* bitcast (i32 ()* @Einstein_SetNextSlicing to i8*), i8* getelementptr inbounds ([24 x i8]* @.str49, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str12, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str13, i64 0, i64 0), i8* getelementptr inbounds ([44 x i8]* @.str50, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8]* @.str51, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8]* @.str16, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0) #2
  br label %94

; <label>:94                                      ; preds = %92, %91
  %95 = tail call i32 (i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, ...)* @CCTKi_ScheduleFunction(i8* bitcast (i32 ()* @evaltrK to i8*), i8* getelementptr inbounds ([8 x i8]* @.str52, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str12, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str13, i64 0, i64 0), i8* getelementptr inbounds ([45 x i8]* @.str53, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8]* @.str54, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8]* @.str16, i64 0, i64 0), i32 2, i32 2, i32 2, i32 0, i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([21 x i8]* @.str55, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8]* @.str56, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8]* @.str55, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8]* @.str56, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8]* @.str55, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8]* @.str56, i64 0, i64 0)) #2
  %96 = tail call i32 (i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, ...)* @CCTKi_ScheduleFunction(i8* bitcast (i32 ()* @metric_carttosphere to i8*), i8* getelementptr inbounds ([20 x i8]* @.str57, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str12, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str13, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str58, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8]* @.str54, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8]* @.str16, i64 0, i64 0), i32 1, i32 1, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([27 x i8]* @.str59, i64 0, i64 0), i8* getelementptr inbounds ([27 x i8]* @.str59, i64 0, i64 0), i8* getelementptr inbounds ([27 x i8]* @.str59, i64 0, i64 0)) #2
  %97 = tail call i32 (i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, ...)* @CCTKi_ScheduleFunction(i8* bitcast (i32 ()* @curv_carttosphere to i8*), i8* getelementptr inbounds ([18 x i8]* @.str60, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str12, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str13, i64 0, i64 0), i8* getelementptr inbounds ([61 x i8]* @.str61, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8]* @.str54, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8]* @.str16, i64 0, i64 0), i32 1, i32 1, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([25 x i8]* @.str62, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8]* @.str62, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8]* @.str62, i64 0, i64 0)) #2
  %98 = tail call i32 @CCTK_Equals(i8* %10, i8* getelementptr inbounds ([8 x i8]* @.str63, i64 0, i64 0)) #2
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %103

; <label>:100                                     ; preds = %94
  %101 = tail call i32 @CCTK_Equals(i8* %10, i8* getelementptr inbounds ([13 x i8]* @.str64, i64 0, i64 0)) #2
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %105, label %103

; <label>:103                                     ; preds = %100, %94
  %104 = tail call i32 (i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, ...)* @CCTKi_ScheduleFunction(i8* bitcast (i32 ()* @CalcCourant to i8*), i8* getelementptr inbounds ([12 x i8]* @.str65, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str12, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str13, i64 0, i64 0), i8* getelementptr inbounds ([50 x i8]* @.str66, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8]* @.str51, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8]* @.str16, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 0, i32 0, i8* getelementptr inbounds ([12 x i8]* @.str67, i64 0, i64 0)) #2
  br label %105

; <label>:105                                     ; preds = %100, %103
  ret void
}

; Function Attrs: optsize
declare i32 @CCTKi_ScheduleGroupStorage(i8*) #1

; Function Attrs: optsize
declare i32 @CCTKi_ScheduleGroupComm(i8*) #1

; Function Attrs: optsize
declare i32 @CCTK_Equals(i8*, i8*) #1

; Function Attrs: optsize
declare i32 @CCTKi_ScheduleFunction(i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, ...) #1

; Function Attrs: optsize
declare i32 @MaskOne() #1

; Function Attrs: optsize
declare i32 @Einstein_InitSymBound() #1

; Function Attrs: optsize
declare i32 @Einstein_ActivateSlicing() #1

; Function Attrs: optsize
declare i32 @InitialEinstein() #1

; Function Attrs: optsize
declare i32 @InitialFlat() #1

; Function Attrs: optsize
declare i32 @LapseOne() #1

; Function Attrs: optsize
declare i32 @LapseGaussian() #1

; Function Attrs: optsize
declare i32 @LapsePsiMinusTwo() #1

; Function Attrs: optsize
declare i32 @LapseIsotropic() #1

; Function Attrs: optsize
declare i32 @ShiftZero() #1

; Function Attrs: optsize
declare i32 @ShiftRotation() #1

; Function Attrs: optsize
declare i32 @Einstein_SetNextSlicing() #1

; Function Attrs: optsize
declare i32 @evaltrK() #1

; Function Attrs: optsize
declare i32 @metric_carttosphere() #1

; Function Attrs: optsize
declare i32 @curv_carttosphere() #1

; Function Attrs: optsize
declare i32 @CalcCourant() #1

attributes #0 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!2 = !{!3, !7, i64 56}
!3 = !{!"", !4, i64 0, !4, i64 8, !4, i64 16, !4, i64 24, !4, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !7, i64 88, !7, i64 96, !7, i64 104, !8, i64 112, !8, i64 116, !8, i64 120, !8, i64 124, !8, i64 128, !8, i64 132, !8, i64 136}
!4 = !{!"double", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!"any pointer", !5, i64 0}
!8 = !{!"int", !5, i64 0}
!9 = !{!3, !7, i64 64}
!10 = !{!3, !7, i64 72}
!11 = !{!3, !7, i64 88}
!12 = !{!3, !7, i64 96}
!13 = !{!3, !8, i64 112}
!14 = !{!3, !8, i64 136}
!15 = !{!16, !7, i64 0}
!16 = !{!"", !7, i64 0, !8, i64 8}
