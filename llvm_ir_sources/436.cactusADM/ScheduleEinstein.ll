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
  %1 = load i8** getelementptr inbounds (%struct.anon* @einsteinrest_, i64 0, i32 7), align 8, !dbg !52, !tbaa !53
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !22, metadata !60), !dbg !52
  %2 = load i8** getelementptr inbounds (%struct.anon* @einsteinrest_, i64 0, i32 8), align 8, !dbg !52, !tbaa !61
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !23, metadata !60), !dbg !52
  %3 = load i8** getelementptr inbounds (%struct.anon* @einsteinrest_, i64 0, i32 9), align 8, !dbg !52, !tbaa !62
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !24, metadata !60), !dbg !52
  %4 = load i8** getelementptr inbounds (%struct.anon* @einsteinrest_, i64 0, i32 11), align 8, !dbg !52, !tbaa !63
  tail call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !26, metadata !60), !dbg !52
  %5 = load i8** getelementptr inbounds (%struct.anon* @einsteinrest_, i64 0, i32 12), align 8, !dbg !52, !tbaa !64
  tail call void @llvm.dbg.value(metadata i8* %5, i64 0, metadata !27, metadata !60), !dbg !52
  %6 = load i32* getelementptr inbounds (%struct.anon* @einsteinrest_, i64 0, i32 14), align 8, !dbg !52, !tbaa !65
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !29, metadata !60), !dbg !52
  %7 = load i64* bitcast (i32* getelementptr inbounds (%struct.anon* @einsteinrest_, i64 0, i32 18) to i64*), align 8, !dbg !52
  %8 = trunc i64 %7 to i32, !dbg !52
  tail call void @llvm.dbg.value(metadata i32 %8, i64 0, metadata !35, metadata !60), !dbg !52
  %9 = load i32* getelementptr inbounds (%struct.anon* @einsteinrest_, i64 0, i32 20), align 8, !dbg !52, !tbaa !66
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !37, metadata !60), !dbg !52
  %10 = load i8** getelementptr inbounds (%struct.anon.2* @timerest_, i64 0, i32 0), align 8, !dbg !52, !tbaa !67
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !44, metadata !60), !dbg !52
  %11 = tail call i32 @CCTKi_ScheduleGroupStorage(i8* getelementptr inbounds ([17 x i8]* @.str, i64 0, i64 0)) #3, !dbg !69
  %12 = tail call i32 @CCTKi_ScheduleGroupStorage(i8* getelementptr inbounds ([15 x i8]* @.str1, i64 0, i64 0)) #3, !dbg !70
  %13 = tail call i32 @CCTKi_ScheduleGroupStorage(i8* getelementptr inbounds ([16 x i8]* @.str2, i64 0, i64 0)) #3, !dbg !71
  %14 = tail call i32 @CCTKi_ScheduleGroupStorage(i8* getelementptr inbounds ([16 x i8]* @.str3, i64 0, i64 0)) #3, !dbg !72
  %15 = tail call i32 @CCTKi_ScheduleGroupStorage(i8* getelementptr inbounds ([24 x i8]* @.str4, i64 0, i64 0)) #3, !dbg !73
  %16 = tail call i32 @CCTKi_ScheduleGroupComm(i8* getelementptr inbounds ([17 x i8]* @.str, i64 0, i64 0)) #3, !dbg !74
  %17 = tail call i32 @CCTKi_ScheduleGroupComm(i8* getelementptr inbounds ([15 x i8]* @.str1, i64 0, i64 0)) #3, !dbg !75
  %18 = tail call i32 @CCTKi_ScheduleGroupComm(i8* getelementptr inbounds ([16 x i8]* @.str2, i64 0, i64 0)) #3, !dbg !76
  %19 = tail call i32 @CCTKi_ScheduleGroupComm(i8* getelementptr inbounds ([16 x i8]* @.str3, i64 0, i64 0)) #3, !dbg !77
  %20 = tail call i32 @CCTKi_ScheduleGroupComm(i8* getelementptr inbounds ([24 x i8]* @.str4, i64 0, i64 0)) #3, !dbg !78
  %21 = tail call i32 @CCTK_Equals(i8* %4, i8* getelementptr inbounds ([5 x i8]* @.str5, i64 0, i64 0)) #3, !dbg !79
  %22 = icmp eq i32 %21, 0, !dbg !79
  br i1 %22, label %23, label %26, !dbg !81

; <label>:23                                      ; preds = %0
  %24 = tail call i32 @CCTKi_ScheduleGroupStorage(i8* getelementptr inbounds ([16 x i8]* @.str6, i64 0, i64 0)) #3, !dbg !82
  %25 = tail call i32 @CCTKi_ScheduleGroupComm(i8* getelementptr inbounds ([16 x i8]* @.str6, i64 0, i64 0)) #3, !dbg !84
  br label %26, !dbg !85

; <label>:26                                      ; preds = %0, %23
  %27 = icmp eq i32 %8, 0, !dbg !86
  br i1 %27, label %31, label %28, !dbg !88

; <label>:28                                      ; preds = %26
  %29 = tail call i32 @CCTKi_ScheduleGroupStorage(i8* getelementptr inbounds ([17 x i8]* @.str7, i64 0, i64 0)) #3, !dbg !89
  %30 = tail call i32 @CCTKi_ScheduleGroupComm(i8* getelementptr inbounds ([17 x i8]* @.str7, i64 0, i64 0)) #3, !dbg !91
  br label %31, !dbg !92

; <label>:31                                      ; preds = %26, %28
  %32 = icmp ult i64 %7, 4294967296, !dbg !93
  br i1 %32, label %38, label %33, !dbg !95

; <label>:33                                      ; preds = %31
  %34 = tail call i32 @CCTKi_ScheduleGroupStorage(i8* getelementptr inbounds ([25 x i8]* @.str8, i64 0, i64 0)) #3, !dbg !96
  %35 = tail call i32 @CCTKi_ScheduleGroupStorage(i8* getelementptr inbounds ([25 x i8]* @.str9, i64 0, i64 0)) #3, !dbg !98
  %36 = tail call i32 @CCTKi_ScheduleGroupComm(i8* getelementptr inbounds ([25 x i8]* @.str8, i64 0, i64 0)) #3, !dbg !99
  %37 = tail call i32 @CCTKi_ScheduleGroupComm(i8* getelementptr inbounds ([25 x i8]* @.str9, i64 0, i64 0)) #3, !dbg !100
  br label %38, !dbg !101

; <label>:38                                      ; preds = %31, %33
  %39 = icmp eq i32 %9, 0, !dbg !102
  br i1 %39, label %44, label %40, !dbg !104

; <label>:40                                      ; preds = %38
  %41 = tail call i32 @CCTKi_ScheduleGroupStorage(i8* getelementptr inbounds ([15 x i8]* @.str10, i64 0, i64 0)) #3, !dbg !105
  %42 = tail call i32 @CCTKi_ScheduleGroupComm(i8* getelementptr inbounds ([15 x i8]* @.str10, i64 0, i64 0)) #3, !dbg !107
  %43 = tail call i32 (i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, ...)* @CCTKi_ScheduleFunction(i8* bitcast (i32 ()* @MaskOne to i8*), i8* getelementptr inbounds ([8 x i8]* @.str11, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str12, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str13, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8]* @.str14, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8]* @.str15, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8]* @.str16, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0) #3, !dbg !108
  br label %44, !dbg !109

; <label>:44                                      ; preds = %38, %40
  %45 = tail call i32 (i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, ...)* @CCTKi_ScheduleFunction(i8* bitcast (i32 ()* @Einstein_InitSymBound to i8*), i8* getelementptr inbounds ([22 x i8]* @.str17, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str12, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str13, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8]* @.str18, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8]* @.str19, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8]* @.str16, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0) #3, !dbg !110
  %46 = icmp ne i32 %6, 0, !dbg !111
  br i1 %46, label %47, label %49, !dbg !113

; <label>:47                                      ; preds = %44
  %48 = tail call i32 (i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, ...)* @CCTKi_ScheduleFunction(i8* bitcast (i32 ()* @Einstein_ActivateSlicing to i8*), i8* getelementptr inbounds ([25 x i8]* @.str20, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str12, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str13, i64 0, i64 0), i8* getelementptr inbounds ([56 x i8]* @.str21, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8]* @.str19, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8]* @.str16, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0) #3, !dbg !114
  br label %49, !dbg !116

; <label>:49                                      ; preds = %47, %44
  %50 = tail call i32 (i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, ...)* @CCTKi_ScheduleFunction(i8* bitcast (i32 ()* @InitialEinstein to i8*), i8* getelementptr inbounds ([16 x i8]* @.str22, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str12, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str13, i64 0, i64 0), i8* getelementptr inbounds ([36 x i8]* @.str23, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8]* @.str15, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8]* @.str16, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0) #3, !dbg !117
  %51 = tail call i32 @CCTK_Equals(i8* %1, i8* getelementptr inbounds ([5 x i8]* @.str24, i64 0, i64 0)) #3, !dbg !118
  %52 = icmp eq i32 %51, 0, !dbg !118
  br i1 %52, label %55, label %53, !dbg !120

; <label>:53                                      ; preds = %49
  %54 = tail call i32 (i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, ...)* @CCTKi_ScheduleFunction(i8* bitcast (i32 ()* @InitialFlat to i8*), i8* getelementptr inbounds ([12 x i8]* @.str25, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str12, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str13, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8]* @.str26, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8]* @.str15, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8]* @.str16, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([16 x i8]* @.str22, i64 0, i64 0)) #3, !dbg !121
  br label %55, !dbg !123

; <label>:55                                      ; preds = %49, %53
  %56 = tail call i32 @CCTK_Equals(i8* %2, i8* getelementptr inbounds ([4 x i8]* @.str27, i64 0, i64 0)) #3, !dbg !124
  %57 = icmp eq i32 %56, 0, !dbg !124
  br i1 %57, label %58, label %61, !dbg !126

; <label>:58                                      ; preds = %55
  %59 = tail call i32 @CCTK_Equals(i8* %5, i8* getelementptr inbounds ([9 x i8]* @.str28, i64 0, i64 0)) #3, !dbg !127
  %60 = icmp eq i32 %59, 0, !dbg !127
  br i1 %60, label %63, label %61, !dbg !128

; <label>:61                                      ; preds = %58, %55
  %62 = tail call i32 (i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, ...)* @CCTKi_ScheduleFunction(i8* bitcast (i32 ()* @LapseOne to i8*), i8* getelementptr inbounds ([9 x i8]* @.str29, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str12, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str13, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8]* @.str30, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8]* @.str15, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8]* @.str16, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0) #3, !dbg !129
  br label %63, !dbg !131

; <label>:63                                      ; preds = %58, %61
  %64 = tail call i32 @CCTK_Equals(i8* %2, i8* getelementptr inbounds ([9 x i8]* @.str31, i64 0, i64 0)) #3, !dbg !132
  %65 = icmp eq i32 %64, 0, !dbg !132
  br i1 %65, label %68, label %66, !dbg !134

; <label>:66                                      ; preds = %63
  %67 = tail call i32 (i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, ...)* @CCTKi_ScheduleFunction(i8* bitcast (i32 ()* @LapseGaussian to i8*), i8* getelementptr inbounds ([14 x i8]* @.str32, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str12, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str13, i64 0, i64 0), i8* getelementptr inbounds ([32 x i8]* @.str33, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8]* @.str15, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8]* @.str16, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0) #3, !dbg !135
  br label %68, !dbg !137

; <label>:68                                      ; preds = %63, %66
  %69 = tail call i32 @CCTK_Equals(i8* %2, i8* getelementptr inbounds ([12 x i8]* @.str34, i64 0, i64 0)) #3, !dbg !138
  %70 = icmp eq i32 %69, 0, !dbg !138
  br i1 %70, label %73, label %71, !dbg !140

; <label>:71                                      ; preds = %68
  %72 = tail call i32 (i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, ...)* @CCTKi_ScheduleFunction(i8* bitcast (i32 ()* @LapsePsiMinusTwo to i8*), i8* getelementptr inbounds ([17 x i8]* @.str35, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str12, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str13, i64 0, i64 0), i8* getelementptr inbounds ([42 x i8]* @.str36, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8]* @.str15, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8]* @.str16, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3, i32 0, i8* getelementptr inbounds ([22 x i8]* @.str37, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8]* @.str38, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8]* @.str39, i64 0, i64 0)) #3, !dbg !141
  br label %73, !dbg !143

; <label>:73                                      ; preds = %68, %71
  %74 = tail call i32 @CCTK_Equals(i8* %2, i8* getelementptr inbounds ([10 x i8]* @.str40, i64 0, i64 0)) #3, !dbg !144
  %75 = icmp eq i32 %74, 0, !dbg !144
  br i1 %75, label %78, label %76, !dbg !146

; <label>:76                                      ; preds = %73
  %77 = tail call i32 (i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, ...)* @CCTKi_ScheduleFunction(i8* bitcast (i32 ()* @LapseIsotropic to i8*), i8* getelementptr inbounds ([15 x i8]* @.str41, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str12, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str13, i64 0, i64 0), i8* getelementptr inbounds ([37 x i8]* @.str42, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8]* @.str15, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8]* @.str16, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3, i32 0, i8* getelementptr inbounds ([22 x i8]* @.str37, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8]* @.str38, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8]* @.str39, i64 0, i64 0)) #3, !dbg !147
  br label %78, !dbg !149

; <label>:78                                      ; preds = %73, %76
  %79 = tail call i32 @CCTK_Equals(i8* %4, i8* getelementptr inbounds ([5 x i8]* @.str5, i64 0, i64 0)) #3, !dbg !150
  %80 = icmp eq i32 %79, 0, !dbg !150
  br i1 %80, label %81, label %91, !dbg !152

; <label>:81                                      ; preds = %78
  %82 = tail call i32 @CCTK_Equals(i8* %3, i8* getelementptr inbounds ([5 x i8]* @.str43, i64 0, i64 0)) #3, !dbg !153
  %83 = icmp eq i32 %82, 0, !dbg !153
  br i1 %83, label %86, label %84, !dbg !156

; <label>:84                                      ; preds = %81
  %85 = tail call i32 (i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, ...)* @CCTKi_ScheduleFunction(i8* bitcast (i32 ()* @ShiftZero to i8*), i8* getelementptr inbounds ([10 x i8]* @.str44, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str12, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str13, i64 0, i64 0), i8* getelementptr inbounds ([26 x i8]* @.str45, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8]* @.str15, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8]* @.str16, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0) #3, !dbg !157
  br label %86, !dbg !159

; <label>:86                                      ; preds = %81, %84
  %87 = tail call i32 @CCTK_Equals(i8* %3, i8* getelementptr inbounds ([9 x i8]* @.str46, i64 0, i64 0)) #3, !dbg !160
  %88 = icmp eq i32 %87, 0, !dbg !160
  br i1 %88, label %91, label %89, !dbg !162

; <label>:89                                      ; preds = %86
  %90 = tail call i32 (i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, ...)* @CCTKi_ScheduleFunction(i8* bitcast (i32 ()* @ShiftRotation to i8*), i8* getelementptr inbounds ([14 x i8]* @.str47, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str12, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str13, i64 0, i64 0), i8* getelementptr inbounds ([36 x i8]* @.str48, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8]* @.str15, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8]* @.str16, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3, i32 0, i8* getelementptr inbounds ([22 x i8]* @.str37, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8]* @.str38, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8]* @.str39, i64 0, i64 0)) #3, !dbg !163
  br label %91, !dbg !165

; <label>:91                                      ; preds = %86, %78, %89
  br i1 %46, label %92, label %94, !dbg !166

; <label>:92                                      ; preds = %91
  %93 = tail call i32 (i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, ...)* @CCTKi_ScheduleFunction(i8* bitcast (i32 ()* @Einstein_SetNextSlicing to i8*), i8* getelementptr inbounds ([24 x i8]* @.str49, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str12, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str13, i64 0, i64 0), i8* getelementptr inbounds ([44 x i8]* @.str50, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8]* @.str51, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8]* @.str16, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0) #3, !dbg !167
  br label %94, !dbg !170

; <label>:94                                      ; preds = %92, %91
  %95 = tail call i32 (i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, ...)* @CCTKi_ScheduleFunction(i8* bitcast (i32 ()* @evaltrK to i8*), i8* getelementptr inbounds ([8 x i8]* @.str52, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str12, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str13, i64 0, i64 0), i8* getelementptr inbounds ([45 x i8]* @.str53, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8]* @.str54, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8]* @.str16, i64 0, i64 0), i32 2, i32 2, i32 2, i32 0, i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([21 x i8]* @.str55, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8]* @.str56, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8]* @.str55, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8]* @.str56, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8]* @.str55, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8]* @.str56, i64 0, i64 0)) #3, !dbg !171
  %96 = tail call i32 (i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, ...)* @CCTKi_ScheduleFunction(i8* bitcast (i32 ()* @metric_carttosphere to i8*), i8* getelementptr inbounds ([20 x i8]* @.str57, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str12, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str13, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str58, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8]* @.str54, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8]* @.str16, i64 0, i64 0), i32 1, i32 1, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([27 x i8]* @.str59, i64 0, i64 0), i8* getelementptr inbounds ([27 x i8]* @.str59, i64 0, i64 0), i8* getelementptr inbounds ([27 x i8]* @.str59, i64 0, i64 0)) #3, !dbg !172
  %97 = tail call i32 (i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, ...)* @CCTKi_ScheduleFunction(i8* bitcast (i32 ()* @curv_carttosphere to i8*), i8* getelementptr inbounds ([18 x i8]* @.str60, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str12, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str13, i64 0, i64 0), i8* getelementptr inbounds ([61 x i8]* @.str61, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8]* @.str54, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8]* @.str16, i64 0, i64 0), i32 1, i32 1, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([25 x i8]* @.str62, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8]* @.str62, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8]* @.str62, i64 0, i64 0)) #3, !dbg !173
  %98 = tail call i32 @CCTK_Equals(i8* %10, i8* getelementptr inbounds ([8 x i8]* @.str63, i64 0, i64 0)) #3, !dbg !174
  %99 = icmp eq i32 %98, 0, !dbg !174
  br i1 %99, label %100, label %103, !dbg !176

; <label>:100                                     ; preds = %94
  %101 = tail call i32 @CCTK_Equals(i8* %10, i8* getelementptr inbounds ([13 x i8]* @.str64, i64 0, i64 0)) #3, !dbg !177
  %102 = icmp eq i32 %101, 0, !dbg !177
  br i1 %102, label %105, label %103, !dbg !178

; <label>:103                                     ; preds = %100, %94
  %104 = tail call i32 (i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, ...)* @CCTKi_ScheduleFunction(i8* bitcast (i32 ()* @CalcCourant to i8*), i8* getelementptr inbounds ([12 x i8]* @.str65, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str12, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str13, i64 0, i64 0), i8* getelementptr inbounds ([50 x i8]* @.str66, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8]* @.str51, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8]* @.str16, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 0, i32 0, i8* getelementptr inbounds ([12 x i8]* @.str67, i64 0, i64 0)) #3, !dbg !179
  br label %105, !dbg !181

; <label>:105                                     ; preds = %100, %103
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !45, metadata !60), !dbg !52
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !45, metadata !60), !dbg !52
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !45, metadata !60), !dbg !52
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !45, metadata !60), !dbg !52
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !45, metadata !60), !dbg !52
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !45, metadata !60), !dbg !52
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !45, metadata !60), !dbg !52
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !45, metadata !60), !dbg !52
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !45, metadata !60), !dbg !52
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !45, metadata !60), !dbg !52
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !45, metadata !60), !dbg !52
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !45, metadata !60), !dbg !52
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !45, metadata !60), !dbg !52
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !45, metadata !60), !dbg !52
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !45, metadata !60), !dbg !52
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !45, metadata !60), !dbg !52
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !45, metadata !60), !dbg !52
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !45, metadata !60), !dbg !52
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !45, metadata !60), !dbg !52
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !45, metadata !60), !dbg !52
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !45, metadata !60), !dbg !52
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !45, metadata !60), !dbg !52
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !45, metadata !60), !dbg !52
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !45, metadata !60), !dbg !52
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !45, metadata !60), !dbg !52
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !45, metadata !60), !dbg !52
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !45, metadata !60), !dbg !52
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !45, metadata !60), !dbg !52
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !45, metadata !60), !dbg !52
  ret void, !dbg !182
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

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #2

attributes #0 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }
attributes #3 = { nounwind optsize }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!48, !49, !50}
!llvm.ident = !{!51}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !5, globals: !2, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/CactusBindings/ScheduleEinstein.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!5 = !{!6}
!6 = !DISubprogram(name: "CCTKi_BindingsSchedule_Einstein", scope: !1, file: !1, line: 46, type: !7, isLocal: false, isDefinition: true, scopeLine: 47, flags: DIFlagPrototyped, isOptimized: true, function: void ()* @CCTKi_BindingsSchedule_Einstein, variables: !9)
!7 = !DISubroutineType(types: !8)
!8 = !{null}
!9 = !{!10, !13, !14, !15, !16, !17, !21, !22, !23, !24, !25, !26, !27, !28, !29, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45}
!10 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "gaussian_amplitude", scope: !6, file: !1, line: 48, type: !11)
!11 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !12)
!12 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!13 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "gaussian_sigma2", scope: !6, file: !1, line: 48, type: !11)
!14 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "psiminustwo_cut", scope: !6, file: !1, line: 48, type: !11)
!15 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "rot_shift_att_sigma", scope: !6, file: !1, line: 48, type: !11)
!16 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "rotation_omega", scope: !6, file: !1, line: 48, type: !11)
!17 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "advection", scope: !6, file: !1, line: 48, type: !18)
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64, align: 64)
!19 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !20)
!20 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!21 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "evolution_system", scope: !6, file: !1, line: 48, type: !18)
!22 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "initial_data", scope: !6, file: !1, line: 48, type: !18)
!23 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "initial_lapse", scope: !6, file: !1, line: 48, type: !18)
!24 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "initial_shift", scope: !6, file: !1, line: 48, type: !18)
!25 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "mixed_slicing", scope: !6, file: !1, line: 48, type: !18)
!26 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "shift", scope: !6, file: !1, line: 48, type: !18)
!27 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "slicing", scope: !6, file: !1, line: 48, type: !18)
!28 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "slicing_verbose", scope: !6, file: !1, line: 48, type: !18)
!29 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "einstein_register_slicing", scope: !6, file: !1, line: 48, type: !30)
!30 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !31)
!31 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!32 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "rot_shift_att", scope: !6, file: !1, line: 48, type: !30)
!33 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "rot_shift_att_pow", scope: !6, file: !1, line: 48, type: !30)
!34 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "rotation_psipower", scope: !6, file: !1, line: 48, type: !30)
!35 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "use_conformal", scope: !6, file: !1, line: 48, type: !30)
!36 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "use_conformal_derivs", scope: !6, file: !1, line: 48, type: !30)
!37 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "use_mask", scope: !6, file: !1, line: 48, type: !30)
!38 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "dtfac", scope: !6, file: !1, line: 48, type: !11)
!39 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "gauge_speed", scope: !6, file: !1, line: 48, type: !11)
!40 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "wavecalc", scope: !6, file: !1, line: 48, type: !18)
!41 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "conformal_storage_all", scope: !6, file: !1, line: 48, type: !30)
!42 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "rsquared_in_sphm", scope: !6, file: !1, line: 48, type: !30)
!43 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "domain", scope: !6, file: !1, line: 48, type: !18)
!44 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "timestep_method", scope: !6, file: !1, line: 48, type: !18)
!45 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_pdummy_pointer", scope: !6, file: !1, line: 48, type: !46)
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64, align: 64)
!47 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!48 = !{i32 2, !"Dwarf Version", i32 2}
!49 = !{i32 2, !"Debug Info Version", i32 700000003}
!50 = !{i32 1, !"PIC Level", i32 2}
!51 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!52 = !DILocation(line: 48, column: 3, scope: !6)
!53 = !{!54, !58, i64 56}
!54 = !{!"", !55, i64 0, !55, i64 8, !55, i64 16, !55, i64 24, !55, i64 32, !58, i64 40, !58, i64 48, !58, i64 56, !58, i64 64, !58, i64 72, !58, i64 80, !58, i64 88, !58, i64 96, !58, i64 104, !59, i64 112, !59, i64 116, !59, i64 120, !59, i64 124, !59, i64 128, !59, i64 132, !59, i64 136}
!55 = !{!"double", !56, i64 0}
!56 = !{!"omnipotent char", !57, i64 0}
!57 = !{!"Simple C/C++ TBAA"}
!58 = !{!"any pointer", !56, i64 0}
!59 = !{!"int", !56, i64 0}
!60 = !DIExpression()
!61 = !{!54, !58, i64 64}
!62 = !{!54, !58, i64 72}
!63 = !{!54, !58, i64 88}
!64 = !{!54, !58, i64 96}
!65 = !{!54, !59, i64 112}
!66 = !{!54, !59, i64 136}
!67 = !{!68, !58, i64 0}
!68 = !{!"", !58, i64 0, !59, i64 8}
!69 = !DILocation(line: 49, column: 3, scope: !6)
!70 = !DILocation(line: 50, column: 3, scope: !6)
!71 = !DILocation(line: 51, column: 3, scope: !6)
!72 = !DILocation(line: 52, column: 3, scope: !6)
!73 = !DILocation(line: 53, column: 3, scope: !6)
!74 = !DILocation(line: 54, column: 3, scope: !6)
!75 = !DILocation(line: 55, column: 3, scope: !6)
!76 = !DILocation(line: 56, column: 3, scope: !6)
!77 = !DILocation(line: 57, column: 3, scope: !6)
!78 = !DILocation(line: 58, column: 3, scope: !6)
!79 = !DILocation(line: 60, column: 6, scope: !80)
!80 = distinct !DILexicalBlock(scope: !6, file: !1, line: 60, column: 5)
!81 = !DILocation(line: 60, column: 5, scope: !6)
!82 = !DILocation(line: 64, column: 3, scope: !83)
!83 = distinct !DILexicalBlock(scope: !80, file: !1, line: 62, column: 1)
!84 = !DILocation(line: 65, column: 3, scope: !83)
!85 = !DILocation(line: 67, column: 1, scope: !83)
!86 = !DILocation(line: 69, column: 5, scope: !87)
!87 = distinct !DILexicalBlock(scope: !6, file: !1, line: 69, column: 5)
!88 = !DILocation(line: 69, column: 5, scope: !6)
!89 = !DILocation(line: 71, column: 3, scope: !90)
!90 = distinct !DILexicalBlock(scope: !87, file: !1, line: 69, column: 20)
!91 = !DILocation(line: 72, column: 3, scope: !90)
!92 = !DILocation(line: 74, column: 1, scope: !90)
!93 = !DILocation(line: 76, column: 5, scope: !94)
!94 = distinct !DILexicalBlock(scope: !6, file: !1, line: 76, column: 5)
!95 = !DILocation(line: 76, column: 5, scope: !6)
!96 = !DILocation(line: 78, column: 3, scope: !97)
!97 = distinct !DILexicalBlock(scope: !94, file: !1, line: 76, column: 27)
!98 = !DILocation(line: 79, column: 3, scope: !97)
!99 = !DILocation(line: 80, column: 3, scope: !97)
!100 = !DILocation(line: 81, column: 3, scope: !97)
!101 = !DILocation(line: 83, column: 1, scope: !97)
!102 = !DILocation(line: 85, column: 5, scope: !103)
!103 = distinct !DILexicalBlock(scope: !6, file: !1, line: 85, column: 5)
!104 = !DILocation(line: 85, column: 5, scope: !6)
!105 = !DILocation(line: 87, column: 3, scope: !106)
!106 = distinct !DILexicalBlock(scope: !103, file: !1, line: 85, column: 15)
!107 = !DILocation(line: 88, column: 3, scope: !106)
!108 = !DILocation(line: 90, column: 3, scope: !106)
!109 = !DILocation(line: 107, column: 1, scope: !106)
!110 = !DILocation(line: 109, column: 3, scope: !6)
!111 = !DILocation(line: 126, column: 5, scope: !112)
!112 = distinct !DILexicalBlock(scope: !6, file: !1, line: 126, column: 5)
!113 = !DILocation(line: 126, column: 5, scope: !6)
!114 = !DILocation(line: 130, column: 3, scope: !115)
!115 = distinct !DILexicalBlock(scope: !112, file: !1, line: 128, column: 1)
!116 = !DILocation(line: 147, column: 1, scope: !115)
!117 = !DILocation(line: 149, column: 3, scope: !6)
!118 = !DILocation(line: 166, column: 5, scope: !119)
!119 = distinct !DILexicalBlock(scope: !6, file: !1, line: 166, column: 5)
!120 = !DILocation(line: 166, column: 5, scope: !6)
!121 = !DILocation(line: 170, column: 3, scope: !122)
!122 = distinct !DILexicalBlock(scope: !119, file: !1, line: 168, column: 1)
!123 = !DILocation(line: 188, column: 1, scope: !122)
!124 = !DILocation(line: 190, column: 5, scope: !125)
!125 = distinct !DILexicalBlock(scope: !6, file: !1, line: 190, column: 5)
!126 = !DILocation(line: 190, column: 38, scope: !125)
!127 = !DILocation(line: 190, column: 41, scope: !125)
!128 = !DILocation(line: 190, column: 5, scope: !6)
!129 = !DILocation(line: 194, column: 3, scope: !130)
!130 = distinct !DILexicalBlock(scope: !125, file: !1, line: 192, column: 1)
!131 = !DILocation(line: 211, column: 1, scope: !130)
!132 = !DILocation(line: 213, column: 5, scope: !133)
!133 = distinct !DILexicalBlock(scope: !6, file: !1, line: 213, column: 5)
!134 = !DILocation(line: 213, column: 5, scope: !6)
!135 = !DILocation(line: 217, column: 3, scope: !136)
!136 = distinct !DILexicalBlock(scope: !133, file: !1, line: 215, column: 1)
!137 = !DILocation(line: 234, column: 1, scope: !136)
!138 = !DILocation(line: 236, column: 5, scope: !139)
!139 = distinct !DILexicalBlock(scope: !6, file: !1, line: 236, column: 5)
!140 = !DILocation(line: 236, column: 5, scope: !6)
!141 = !DILocation(line: 240, column: 3, scope: !142)
!142 = distinct !DILexicalBlock(scope: !139, file: !1, line: 238, column: 1)
!143 = !DILocation(line: 260, column: 1, scope: !142)
!144 = !DILocation(line: 262, column: 5, scope: !145)
!145 = distinct !DILexicalBlock(scope: !6, file: !1, line: 262, column: 5)
!146 = !DILocation(line: 262, column: 5, scope: !6)
!147 = !DILocation(line: 266, column: 3, scope: !148)
!148 = distinct !DILexicalBlock(scope: !145, file: !1, line: 264, column: 1)
!149 = !DILocation(line: 286, column: 1, scope: !148)
!150 = !DILocation(line: 288, column: 6, scope: !151)
!151 = distinct !DILexicalBlock(scope: !6, file: !1, line: 288, column: 5)
!152 = !DILocation(line: 288, column: 5, scope: !6)
!153 = !DILocation(line: 292, column: 8, scope: !154)
!154 = distinct !DILexicalBlock(scope: !155, file: !1, line: 292, column: 8)
!155 = distinct !DILexicalBlock(scope: !151, file: !1, line: 290, column: 1)
!156 = !DILocation(line: 292, column: 8, scope: !155)
!157 = !DILocation(line: 296, column: 3, scope: !158)
!158 = distinct !DILexicalBlock(scope: !154, file: !1, line: 294, column: 4)
!159 = !DILocation(line: 313, column: 4, scope: !158)
!160 = !DILocation(line: 315, column: 8, scope: !161)
!161 = distinct !DILexicalBlock(scope: !155, file: !1, line: 315, column: 8)
!162 = !DILocation(line: 315, column: 8, scope: !155)
!163 = !DILocation(line: 319, column: 3, scope: !164)
!164 = distinct !DILexicalBlock(scope: !161, file: !1, line: 317, column: 4)
!165 = !DILocation(line: 339, column: 4, scope: !164)
!166 = !DILocation(line: 343, column: 5, scope: !6)
!167 = !DILocation(line: 347, column: 3, scope: !168)
!168 = distinct !DILexicalBlock(scope: !169, file: !1, line: 345, column: 1)
!169 = distinct !DILexicalBlock(scope: !6, file: !1, line: 343, column: 5)
!170 = !DILocation(line: 364, column: 1, scope: !168)
!171 = !DILocation(line: 366, column: 3, scope: !6)
!172 = !DILocation(line: 389, column: 3, scope: !6)
!173 = !DILocation(line: 409, column: 3, scope: !6)
!174 = !DILocation(line: 429, column: 5, scope: !175)
!175 = distinct !DILexicalBlock(scope: !6, file: !1, line: 429, column: 5)
!176 = !DILocation(line: 429, column: 44, scope: !175)
!177 = !DILocation(line: 429, column: 47, scope: !175)
!178 = !DILocation(line: 429, column: 5, scope: !6)
!179 = !DILocation(line: 433, column: 3, scope: !180)
!180 = distinct !DILexicalBlock(scope: !175, file: !1, line: 431, column: 1)
!181 = !DILocation(line: 451, column: 1, scope: !180)
!182 = !DILocation(line: 454, column: 22, scope: !6)
