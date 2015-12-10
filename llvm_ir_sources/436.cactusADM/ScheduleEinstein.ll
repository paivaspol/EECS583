; ModuleID = '../../SPEC/benchspec/CPU2006/436.cactusADM/src/CactusBindings/ScheduleEinstein.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

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

; Function Attrs: nounwind optsize uwtable
define void @CCTKi_BindingsSchedule_Einstein() #0 {
entry:
  %0 = load i8** getelementptr inbounds (%struct.anon* @einsteinrest_, i64 0, i32 7), align 8, !dbg !47, !tbaa !48
  tail call void @llvm.dbg.value(metadata !{i8* %0}, i64 0, metadata !21), !dbg !47
  %1 = load i8** getelementptr inbounds (%struct.anon* @einsteinrest_, i64 0, i32 8), align 8, !dbg !47, !tbaa !48
  tail call void @llvm.dbg.value(metadata !{i8* %1}, i64 0, metadata !22), !dbg !47
  %2 = load i8** getelementptr inbounds (%struct.anon* @einsteinrest_, i64 0, i32 9), align 8, !dbg !47, !tbaa !48
  tail call void @llvm.dbg.value(metadata !{i8* %2}, i64 0, metadata !23), !dbg !47
  %3 = load i8** getelementptr inbounds (%struct.anon* @einsteinrest_, i64 0, i32 11), align 8, !dbg !47, !tbaa !48
  tail call void @llvm.dbg.value(metadata !{i8* %3}, i64 0, metadata !25), !dbg !47
  %4 = load i8** getelementptr inbounds (%struct.anon* @einsteinrest_, i64 0, i32 12), align 8, !dbg !47, !tbaa !48
  tail call void @llvm.dbg.value(metadata !{i8* %4}, i64 0, metadata !26), !dbg !47
  %5 = load i32* getelementptr inbounds (%struct.anon* @einsteinrest_, i64 0, i32 14), align 8, !dbg !47, !tbaa !51
  tail call void @llvm.dbg.value(metadata !{i32 %5}, i64 0, metadata !28), !dbg !47
  %6 = load i64* bitcast (i32* getelementptr inbounds (%struct.anon* @einsteinrest_, i64 0, i32 18) to i64*), align 8, !dbg !47
  %7 = trunc i64 %6 to i32, !dbg !47
  tail call void @llvm.dbg.value(metadata !{i32 %7}, i64 0, metadata !34), !dbg !47
  %8 = load i32* getelementptr inbounds (%struct.anon* @einsteinrest_, i64 0, i32 20), align 8, !dbg !47, !tbaa !51
  tail call void @llvm.dbg.value(metadata !{i32 %8}, i64 0, metadata !36), !dbg !47
  %9 = load i8** getelementptr inbounds (%struct.anon.2* @timerest_, i64 0, i32 0), align 8, !dbg !47, !tbaa !48
  tail call void @llvm.dbg.value(metadata !{i8* %9}, i64 0, metadata !43), !dbg !47
  %call = tail call i32 @CCTKi_ScheduleGroupStorage(i8* getelementptr inbounds ([17 x i8]* @.str, i64 0, i64 0)) #3, !dbg !52
  %call1 = tail call i32 @CCTKi_ScheduleGroupStorage(i8* getelementptr inbounds ([15 x i8]* @.str1, i64 0, i64 0)) #3, !dbg !53
  %call2 = tail call i32 @CCTKi_ScheduleGroupStorage(i8* getelementptr inbounds ([16 x i8]* @.str2, i64 0, i64 0)) #3, !dbg !54
  %call3 = tail call i32 @CCTKi_ScheduleGroupStorage(i8* getelementptr inbounds ([16 x i8]* @.str3, i64 0, i64 0)) #3, !dbg !55
  %call4 = tail call i32 @CCTKi_ScheduleGroupStorage(i8* getelementptr inbounds ([24 x i8]* @.str4, i64 0, i64 0)) #3, !dbg !56
  %call5 = tail call i32 @CCTKi_ScheduleGroupComm(i8* getelementptr inbounds ([17 x i8]* @.str, i64 0, i64 0)) #3, !dbg !57
  %call6 = tail call i32 @CCTKi_ScheduleGroupComm(i8* getelementptr inbounds ([15 x i8]* @.str1, i64 0, i64 0)) #3, !dbg !58
  %call7 = tail call i32 @CCTKi_ScheduleGroupComm(i8* getelementptr inbounds ([16 x i8]* @.str2, i64 0, i64 0)) #3, !dbg !59
  %call8 = tail call i32 @CCTKi_ScheduleGroupComm(i8* getelementptr inbounds ([16 x i8]* @.str3, i64 0, i64 0)) #3, !dbg !60
  %call9 = tail call i32 @CCTKi_ScheduleGroupComm(i8* getelementptr inbounds ([24 x i8]* @.str4, i64 0, i64 0)) #3, !dbg !61
  %call10 = tail call i32 @CCTK_Equals(i8* %3, i8* getelementptr inbounds ([5 x i8]* @.str5, i64 0, i64 0)) #3, !dbg !62
  %tobool = icmp eq i32 %call10, 0, !dbg !62
  br i1 %tobool, label %if.then, label %if.end, !dbg !62

if.then:                                          ; preds = %entry
  %call11 = tail call i32 @CCTKi_ScheduleGroupStorage(i8* getelementptr inbounds ([16 x i8]* @.str6, i64 0, i64 0)) #3, !dbg !63
  %call12 = tail call i32 @CCTKi_ScheduleGroupComm(i8* getelementptr inbounds ([16 x i8]* @.str6, i64 0, i64 0)) #3, !dbg !65
  br label %if.end, !dbg !66

if.end:                                           ; preds = %entry, %if.then
  %tobool13 = icmp eq i32 %7, 0, !dbg !67
  br i1 %tobool13, label %if.end17, label %if.then14, !dbg !67

if.then14:                                        ; preds = %if.end
  %call15 = tail call i32 @CCTKi_ScheduleGroupStorage(i8* getelementptr inbounds ([17 x i8]* @.str7, i64 0, i64 0)) #3, !dbg !68
  %call16 = tail call i32 @CCTKi_ScheduleGroupComm(i8* getelementptr inbounds ([17 x i8]* @.str7, i64 0, i64 0)) #3, !dbg !70
  br label %if.end17, !dbg !71

if.end17:                                         ; preds = %if.end, %if.then14
  %tobool18 = icmp ult i64 %6, 4294967296, !dbg !72
  br i1 %tobool18, label %if.end24, label %if.then19, !dbg !72

if.then19:                                        ; preds = %if.end17
  %call20 = tail call i32 @CCTKi_ScheduleGroupStorage(i8* getelementptr inbounds ([25 x i8]* @.str8, i64 0, i64 0)) #3, !dbg !73
  %call21 = tail call i32 @CCTKi_ScheduleGroupStorage(i8* getelementptr inbounds ([25 x i8]* @.str9, i64 0, i64 0)) #3, !dbg !75
  %call22 = tail call i32 @CCTKi_ScheduleGroupComm(i8* getelementptr inbounds ([25 x i8]* @.str8, i64 0, i64 0)) #3, !dbg !76
  %call23 = tail call i32 @CCTKi_ScheduleGroupComm(i8* getelementptr inbounds ([25 x i8]* @.str9, i64 0, i64 0)) #3, !dbg !77
  br label %if.end24, !dbg !78

if.end24:                                         ; preds = %if.end17, %if.then19
  %tobool25 = icmp eq i32 %8, 0, !dbg !79
  br i1 %tobool25, label %if.end30, label %if.then26, !dbg !79

if.then26:                                        ; preds = %if.end24
  %call27 = tail call i32 @CCTKi_ScheduleGroupStorage(i8* getelementptr inbounds ([15 x i8]* @.str10, i64 0, i64 0)) #3, !dbg !80
  %call28 = tail call i32 @CCTKi_ScheduleGroupComm(i8* getelementptr inbounds ([15 x i8]* @.str10, i64 0, i64 0)) #3, !dbg !82
  %call29 = tail call i32 (i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, ...)* @CCTKi_ScheduleFunction(i8* bitcast (i32 ()* @MaskOne to i8*), i8* getelementptr inbounds ([8 x i8]* @.str11, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str12, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str13, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8]* @.str14, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8]* @.str15, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8]* @.str16, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0) #3, !dbg !83
  br label %if.end30, !dbg !84

if.end30:                                         ; preds = %if.end24, %if.then26
  %call31 = tail call i32 (i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, ...)* @CCTKi_ScheduleFunction(i8* bitcast (i32 ()* @Einstein_InitSymBound to i8*), i8* getelementptr inbounds ([22 x i8]* @.str17, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str12, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str13, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8]* @.str18, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8]* @.str19, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8]* @.str16, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0) #3, !dbg !85
  %tobool32 = icmp ne i32 %5, 0, !dbg !86
  br i1 %tobool32, label %if.then33, label %if.end35, !dbg !86

if.then33:                                        ; preds = %if.end30
  %call34 = tail call i32 (i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, ...)* @CCTKi_ScheduleFunction(i8* bitcast (i32 ()* @Einstein_ActivateSlicing to i8*), i8* getelementptr inbounds ([25 x i8]* @.str20, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str12, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str13, i64 0, i64 0), i8* getelementptr inbounds ([56 x i8]* @.str21, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8]* @.str19, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8]* @.str16, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0) #3, !dbg !87
  br label %if.end35, !dbg !89

if.end35:                                         ; preds = %if.then33, %if.end30
  %call36 = tail call i32 (i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, ...)* @CCTKi_ScheduleFunction(i8* bitcast (i32 ()* @InitialEinstein to i8*), i8* getelementptr inbounds ([16 x i8]* @.str22, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str12, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str13, i64 0, i64 0), i8* getelementptr inbounds ([36 x i8]* @.str23, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8]* @.str15, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8]* @.str16, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0) #3, !dbg !90
  %call37 = tail call i32 @CCTK_Equals(i8* %0, i8* getelementptr inbounds ([5 x i8]* @.str24, i64 0, i64 0)) #3, !dbg !91
  %tobool38 = icmp eq i32 %call37, 0, !dbg !91
  br i1 %tobool38, label %if.end41, label %if.then39, !dbg !91

if.then39:                                        ; preds = %if.end35
  %call40 = tail call i32 (i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, ...)* @CCTKi_ScheduleFunction(i8* bitcast (i32 ()* @InitialFlat to i8*), i8* getelementptr inbounds ([12 x i8]* @.str25, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str12, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str13, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8]* @.str26, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8]* @.str15, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8]* @.str16, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([16 x i8]* @.str22, i64 0, i64 0)) #3, !dbg !92
  br label %if.end41, !dbg !94

if.end41:                                         ; preds = %if.end35, %if.then39
  %call42 = tail call i32 @CCTK_Equals(i8* %1, i8* getelementptr inbounds ([4 x i8]* @.str27, i64 0, i64 0)) #3, !dbg !95
  %tobool43 = icmp eq i32 %call42, 0, !dbg !95
  br i1 %tobool43, label %lor.lhs.false, label %if.then46, !dbg !95

lor.lhs.false:                                    ; preds = %if.end41
  %call44 = tail call i32 @CCTK_Equals(i8* %4, i8* getelementptr inbounds ([9 x i8]* @.str28, i64 0, i64 0)) #3, !dbg !95
  %tobool45 = icmp eq i32 %call44, 0, !dbg !95
  br i1 %tobool45, label %if.end48, label %if.then46, !dbg !95

if.then46:                                        ; preds = %lor.lhs.false, %if.end41
  %call47 = tail call i32 (i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, ...)* @CCTKi_ScheduleFunction(i8* bitcast (i32 ()* @LapseOne to i8*), i8* getelementptr inbounds ([9 x i8]* @.str29, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str12, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str13, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8]* @.str30, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8]* @.str15, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8]* @.str16, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0) #3, !dbg !96
  br label %if.end48, !dbg !98

if.end48:                                         ; preds = %lor.lhs.false, %if.then46
  %call49 = tail call i32 @CCTK_Equals(i8* %1, i8* getelementptr inbounds ([9 x i8]* @.str31, i64 0, i64 0)) #3, !dbg !99
  %tobool50 = icmp eq i32 %call49, 0, !dbg !99
  br i1 %tobool50, label %if.end53, label %if.then51, !dbg !99

if.then51:                                        ; preds = %if.end48
  %call52 = tail call i32 (i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, ...)* @CCTKi_ScheduleFunction(i8* bitcast (i32 ()* @LapseGaussian to i8*), i8* getelementptr inbounds ([14 x i8]* @.str32, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str12, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str13, i64 0, i64 0), i8* getelementptr inbounds ([32 x i8]* @.str33, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8]* @.str15, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8]* @.str16, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0) #3, !dbg !100
  br label %if.end53, !dbg !102

if.end53:                                         ; preds = %if.end48, %if.then51
  %call54 = tail call i32 @CCTK_Equals(i8* %1, i8* getelementptr inbounds ([12 x i8]* @.str34, i64 0, i64 0)) #3, !dbg !103
  %tobool55 = icmp eq i32 %call54, 0, !dbg !103
  br i1 %tobool55, label %if.end58, label %if.then56, !dbg !103

if.then56:                                        ; preds = %if.end53
  %call57 = tail call i32 (i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, ...)* @CCTKi_ScheduleFunction(i8* bitcast (i32 ()* @LapsePsiMinusTwo to i8*), i8* getelementptr inbounds ([17 x i8]* @.str35, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str12, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str13, i64 0, i64 0), i8* getelementptr inbounds ([42 x i8]* @.str36, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8]* @.str15, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8]* @.str16, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3, i32 0, i8* getelementptr inbounds ([22 x i8]* @.str37, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8]* @.str38, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8]* @.str39, i64 0, i64 0)) #3, !dbg !104
  br label %if.end58, !dbg !106

if.end58:                                         ; preds = %if.end53, %if.then56
  %call59 = tail call i32 @CCTK_Equals(i8* %1, i8* getelementptr inbounds ([10 x i8]* @.str40, i64 0, i64 0)) #3, !dbg !107
  %tobool60 = icmp eq i32 %call59, 0, !dbg !107
  br i1 %tobool60, label %if.end63, label %if.then61, !dbg !107

if.then61:                                        ; preds = %if.end58
  %call62 = tail call i32 (i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, ...)* @CCTKi_ScheduleFunction(i8* bitcast (i32 ()* @LapseIsotropic to i8*), i8* getelementptr inbounds ([15 x i8]* @.str41, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str12, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str13, i64 0, i64 0), i8* getelementptr inbounds ([37 x i8]* @.str42, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8]* @.str15, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8]* @.str16, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3, i32 0, i8* getelementptr inbounds ([22 x i8]* @.str37, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8]* @.str38, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8]* @.str39, i64 0, i64 0)) #3, !dbg !108
  br label %if.end63, !dbg !110

if.end63:                                         ; preds = %if.end58, %if.then61
  %call64 = tail call i32 @CCTK_Equals(i8* %3, i8* getelementptr inbounds ([5 x i8]* @.str5, i64 0, i64 0)) #3, !dbg !111
  %tobool65 = icmp eq i32 %call64, 0, !dbg !111
  br i1 %tobool65, label %if.then66, label %if.end77, !dbg !111

if.then66:                                        ; preds = %if.end63
  %call67 = tail call i32 @CCTK_Equals(i8* %2, i8* getelementptr inbounds ([5 x i8]* @.str43, i64 0, i64 0)) #3, !dbg !112
  %tobool68 = icmp eq i32 %call67, 0, !dbg !112
  br i1 %tobool68, label %if.end71, label %if.then69, !dbg !112

if.then69:                                        ; preds = %if.then66
  %call70 = tail call i32 (i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, ...)* @CCTKi_ScheduleFunction(i8* bitcast (i32 ()* @ShiftZero to i8*), i8* getelementptr inbounds ([10 x i8]* @.str44, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str12, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str13, i64 0, i64 0), i8* getelementptr inbounds ([26 x i8]* @.str45, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8]* @.str15, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8]* @.str16, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0) #3, !dbg !114
  br label %if.end71, !dbg !116

if.end71:                                         ; preds = %if.then66, %if.then69
  %call72 = tail call i32 @CCTK_Equals(i8* %2, i8* getelementptr inbounds ([9 x i8]* @.str46, i64 0, i64 0)) #3, !dbg !117
  %tobool73 = icmp eq i32 %call72, 0, !dbg !117
  br i1 %tobool73, label %if.end77, label %if.then74, !dbg !117

if.then74:                                        ; preds = %if.end71
  %call75 = tail call i32 (i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, ...)* @CCTKi_ScheduleFunction(i8* bitcast (i32 ()* @ShiftRotation to i8*), i8* getelementptr inbounds ([14 x i8]* @.str47, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str12, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str13, i64 0, i64 0), i8* getelementptr inbounds ([36 x i8]* @.str48, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8]* @.str15, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8]* @.str16, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3, i32 0, i8* getelementptr inbounds ([22 x i8]* @.str37, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8]* @.str38, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8]* @.str39, i64 0, i64 0)) #3, !dbg !118
  br label %if.end77, !dbg !120

if.end77:                                         ; preds = %if.end71, %if.end63, %if.then74
  br i1 %tobool32, label %if.then79, label %if.end81, !dbg !121

if.then79:                                        ; preds = %if.end77
  %call80 = tail call i32 (i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, ...)* @CCTKi_ScheduleFunction(i8* bitcast (i32 ()* @Einstein_SetNextSlicing to i8*), i8* getelementptr inbounds ([24 x i8]* @.str49, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str12, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str13, i64 0, i64 0), i8* getelementptr inbounds ([44 x i8]* @.str50, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8]* @.str51, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8]* @.str16, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0) #3, !dbg !122
  br label %if.end81, !dbg !124

if.end81:                                         ; preds = %if.then79, %if.end77
  %call82 = tail call i32 (i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, ...)* @CCTKi_ScheduleFunction(i8* bitcast (i32 ()* @evaltrK to i8*), i8* getelementptr inbounds ([8 x i8]* @.str52, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str12, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str13, i64 0, i64 0), i8* getelementptr inbounds ([45 x i8]* @.str53, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8]* @.str54, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8]* @.str16, i64 0, i64 0), i32 2, i32 2, i32 2, i32 0, i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([21 x i8]* @.str55, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8]* @.str56, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8]* @.str55, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8]* @.str56, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8]* @.str55, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8]* @.str56, i64 0, i64 0)) #3, !dbg !125
  %call83 = tail call i32 (i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, ...)* @CCTKi_ScheduleFunction(i8* bitcast (i32 ()* @metric_carttosphere to i8*), i8* getelementptr inbounds ([20 x i8]* @.str57, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str12, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str13, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str58, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8]* @.str54, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8]* @.str16, i64 0, i64 0), i32 1, i32 1, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([27 x i8]* @.str59, i64 0, i64 0), i8* getelementptr inbounds ([27 x i8]* @.str59, i64 0, i64 0), i8* getelementptr inbounds ([27 x i8]* @.str59, i64 0, i64 0)) #3, !dbg !126
  %call84 = tail call i32 (i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, ...)* @CCTKi_ScheduleFunction(i8* bitcast (i32 ()* @curv_carttosphere to i8*), i8* getelementptr inbounds ([18 x i8]* @.str60, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str12, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str13, i64 0, i64 0), i8* getelementptr inbounds ([61 x i8]* @.str61, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8]* @.str54, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8]* @.str16, i64 0, i64 0), i32 1, i32 1, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([25 x i8]* @.str62, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8]* @.str62, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8]* @.str62, i64 0, i64 0)) #3, !dbg !127
  %call85 = tail call i32 @CCTK_Equals(i8* %9, i8* getelementptr inbounds ([8 x i8]* @.str63, i64 0, i64 0)) #3, !dbg !128
  %tobool86 = icmp eq i32 %call85, 0, !dbg !128
  br i1 %tobool86, label %lor.lhs.false87, label %if.then90, !dbg !128

lor.lhs.false87:                                  ; preds = %if.end81
  %call88 = tail call i32 @CCTK_Equals(i8* %9, i8* getelementptr inbounds ([13 x i8]* @.str64, i64 0, i64 0)) #3, !dbg !128
  %tobool89 = icmp eq i32 %call88, 0, !dbg !128
  br i1 %tobool89, label %if.end92, label %if.then90, !dbg !128

if.then90:                                        ; preds = %lor.lhs.false87, %if.end81
  %call91 = tail call i32 (i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, ...)* @CCTKi_ScheduleFunction(i8* bitcast (i32 ()* @CalcCourant to i8*), i8* getelementptr inbounds ([12 x i8]* @.str65, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str12, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str13, i64 0, i64 0), i8* getelementptr inbounds ([50 x i8]* @.str66, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8]* @.str51, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8]* @.str16, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 0, i32 0, i8* getelementptr inbounds ([12 x i8]* @.str67, i64 0, i64 0)) #3, !dbg !129
  br label %if.end92, !dbg !131

if.end92:                                         ; preds = %lor.lhs.false87, %if.then90
  tail call void @llvm.dbg.value(metadata !132, i64 0, metadata !44), !dbg !133
  tail call void @llvm.dbg.value(metadata !132, i64 0, metadata !44), !dbg !133
  tail call void @llvm.dbg.value(metadata !132, i64 0, metadata !44), !dbg !133
  tail call void @llvm.dbg.value(metadata !132, i64 0, metadata !44), !dbg !133
  tail call void @llvm.dbg.value(metadata !132, i64 0, metadata !44), !dbg !133
  tail call void @llvm.dbg.value(metadata !132, i64 0, metadata !44), !dbg !133
  tail call void @llvm.dbg.value(metadata !132, i64 0, metadata !44), !dbg !133
  tail call void @llvm.dbg.value(metadata !132, i64 0, metadata !44), !dbg !133
  tail call void @llvm.dbg.value(metadata !132, i64 0, metadata !44), !dbg !133
  tail call void @llvm.dbg.value(metadata !132, i64 0, metadata !44), !dbg !133
  tail call void @llvm.dbg.value(metadata !132, i64 0, metadata !44), !dbg !133
  tail call void @llvm.dbg.value(metadata !132, i64 0, metadata !44), !dbg !133
  tail call void @llvm.dbg.value(metadata !132, i64 0, metadata !44), !dbg !133
  tail call void @llvm.dbg.value(metadata !132, i64 0, metadata !44), !dbg !133
  tail call void @llvm.dbg.value(metadata !132, i64 0, metadata !44), !dbg !133
  tail call void @llvm.dbg.value(metadata !132, i64 0, metadata !44), !dbg !133
  tail call void @llvm.dbg.value(metadata !132, i64 0, metadata !44), !dbg !133
  tail call void @llvm.dbg.value(metadata !132, i64 0, metadata !44), !dbg !133
  tail call void @llvm.dbg.value(metadata !132, i64 0, metadata !44), !dbg !133
  tail call void @llvm.dbg.value(metadata !132, i64 0, metadata !44), !dbg !133
  tail call void @llvm.dbg.value(metadata !132, i64 0, metadata !44), !dbg !133
  tail call void @llvm.dbg.value(metadata !132, i64 0, metadata !44), !dbg !133
  tail call void @llvm.dbg.value(metadata !132, i64 0, metadata !44), !dbg !133
  tail call void @llvm.dbg.value(metadata !132, i64 0, metadata !44), !dbg !133
  tail call void @llvm.dbg.value(metadata !132, i64 0, metadata !44), !dbg !133
  tail call void @llvm.dbg.value(metadata !132, i64 0, metadata !44), !dbg !133
  tail call void @llvm.dbg.value(metadata !132, i64 0, metadata !44), !dbg !133
  tail call void @llvm.dbg.value(metadata !132, i64 0, metadata !44), !dbg !133
  tail call void @llvm.dbg.value(metadata !132, i64 0, metadata !44), !dbg !133
  ret void, !dbg !133
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
declare void @llvm.dbg.value(metadata, i64, metadata) #2

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }
attributes #3 = { nounwind optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CactusBindings/ScheduleEinstein.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/436.cactusADM/src/CactusBindings/ScheduleEinstein.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CCTKi_BindingsSchedule_Einstein", metadata !"CCTKi_BindingsSchedule_Einstein", metadata !"", i32 46, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void ()* @CCTKi_BindingsSchedule_Einstein, null, null, metadata !8, i32 47} ; [ DW_TAG_subprogram ] [line 46] [def] [scope 47] [CCTKi_BindingsSchedule_Einstein]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CactusBindings/ScheduleEinstein.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{null}
!8 = metadata !{metadata !9, metadata !12, metadata !13, metadata !14, metadata !15, metadata !16, metadata !20, metadata !21, metadata !22, metadata !23, metadata !24, metadata !25, metadata !26, metadata !27, metadata !28, metadata !31, metadata !32, metadata !33, metadata !34, metadata !35, metadata !36, metadata !37, metadata !38, metadata !39, metadata !40, metadata !41, metadata !42, metadata !43, metadata !44}
!9 = metadata !{i32 786688, metadata !4, metadata !"gaussian_amplitude", metadata !5, i32 48, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [gaussian_amplitude] [line 48]
!10 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !11} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from double]
!11 = metadata !{i32 786468, null, null, metadata !"double", i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [double] [line 0, size 64, align 64, offset 0, enc DW_ATE_float]
!12 = metadata !{i32 786688, metadata !4, metadata !"gaussian_sigma2", metadata !5, i32 48, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [gaussian_sigma2] [line 48]
!13 = metadata !{i32 786688, metadata !4, metadata !"psiminustwo_cut", metadata !5, i32 48, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [psiminustwo_cut] [line 48]
!14 = metadata !{i32 786688, metadata !4, metadata !"rot_shift_att_sigma", metadata !5, i32 48, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rot_shift_att_sigma] [line 48]
!15 = metadata !{i32 786688, metadata !4, metadata !"rotation_omega", metadata !5, i32 48, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rotation_omega] [line 48]
!16 = metadata !{i32 786688, metadata !4, metadata !"advection", metadata !5, i32 48, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [advection] [line 48]
!17 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !18} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!18 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !19} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from char]
!19 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!20 = metadata !{i32 786688, metadata !4, metadata !"evolution_system", metadata !5, i32 48, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [evolution_system] [line 48]
!21 = metadata !{i32 786688, metadata !4, metadata !"initial_data", metadata !5, i32 48, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [initial_data] [line 48]
!22 = metadata !{i32 786688, metadata !4, metadata !"initial_lapse", metadata !5, i32 48, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [initial_lapse] [line 48]
!23 = metadata !{i32 786688, metadata !4, metadata !"initial_shift", metadata !5, i32 48, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [initial_shift] [line 48]
!24 = metadata !{i32 786688, metadata !4, metadata !"mixed_slicing", metadata !5, i32 48, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [mixed_slicing] [line 48]
!25 = metadata !{i32 786688, metadata !4, metadata !"shift", metadata !5, i32 48, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [shift] [line 48]
!26 = metadata !{i32 786688, metadata !4, metadata !"slicing", metadata !5, i32 48, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [slicing] [line 48]
!27 = metadata !{i32 786688, metadata !4, metadata !"slicing_verbose", metadata !5, i32 48, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [slicing_verbose] [line 48]
!28 = metadata !{i32 786688, metadata !4, metadata !"einstein_register_slicing", metadata !5, i32 48, metadata !29, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [einstein_register_slicing] [line 48]
!29 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !30} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from int]
!30 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!31 = metadata !{i32 786688, metadata !4, metadata !"rot_shift_att", metadata !5, i32 48, metadata !29, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rot_shift_att] [line 48]
!32 = metadata !{i32 786688, metadata !4, metadata !"rot_shift_att_pow", metadata !5, i32 48, metadata !29, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rot_shift_att_pow] [line 48]
!33 = metadata !{i32 786688, metadata !4, metadata !"rotation_psipower", metadata !5, i32 48, metadata !29, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rotation_psipower] [line 48]
!34 = metadata !{i32 786688, metadata !4, metadata !"use_conformal", metadata !5, i32 48, metadata !29, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [use_conformal] [line 48]
!35 = metadata !{i32 786688, metadata !4, metadata !"use_conformal_derivs", metadata !5, i32 48, metadata !29, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [use_conformal_derivs] [line 48]
!36 = metadata !{i32 786688, metadata !4, metadata !"use_mask", metadata !5, i32 48, metadata !29, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [use_mask] [line 48]
!37 = metadata !{i32 786688, metadata !4, metadata !"dtfac", metadata !5, i32 48, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dtfac] [line 48]
!38 = metadata !{i32 786688, metadata !4, metadata !"gauge_speed", metadata !5, i32 48, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [gauge_speed] [line 48]
!39 = metadata !{i32 786688, metadata !4, metadata !"wavecalc", metadata !5, i32 48, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [wavecalc] [line 48]
!40 = metadata !{i32 786688, metadata !4, metadata !"conformal_storage_all", metadata !5, i32 48, metadata !29, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [conformal_storage_all] [line 48]
!41 = metadata !{i32 786688, metadata !4, metadata !"rsquared_in_sphm", metadata !5, i32 48, metadata !29, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rsquared_in_sphm] [line 48]
!42 = metadata !{i32 786688, metadata !4, metadata !"domain", metadata !5, i32 48, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [domain] [line 48]
!43 = metadata !{i32 786688, metadata !4, metadata !"timestep_method", metadata !5, i32 48, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [timestep_method] [line 48]
!44 = metadata !{i32 786688, metadata !4, metadata !"cctk_pdummy_pointer", metadata !5, i32 48, metadata !45, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cctk_pdummy_pointer] [line 48]
!45 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !46} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!46 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from ]
!47 = metadata !{i32 48, i32 0, metadata !4, null}
!48 = metadata !{metadata !"any pointer", metadata !49}
!49 = metadata !{metadata !"omnipotent char", metadata !50}
!50 = metadata !{metadata !"Simple C/C++ TBAA"}
!51 = metadata !{metadata !"int", metadata !49}
!52 = metadata !{i32 49, i32 0, metadata !4, null}
!53 = metadata !{i32 50, i32 0, metadata !4, null}
!54 = metadata !{i32 51, i32 0, metadata !4, null}
!55 = metadata !{i32 52, i32 0, metadata !4, null}
!56 = metadata !{i32 53, i32 0, metadata !4, null}
!57 = metadata !{i32 54, i32 0, metadata !4, null}
!58 = metadata !{i32 55, i32 0, metadata !4, null}
!59 = metadata !{i32 56, i32 0, metadata !4, null}
!60 = metadata !{i32 57, i32 0, metadata !4, null}
!61 = metadata !{i32 58, i32 0, metadata !4, null} ; [ DW_TAG_imported_module ]
!62 = metadata !{i32 60, i32 0, metadata !4, null}
!63 = metadata !{i32 64, i32 0, metadata !64, null}
!64 = metadata !{i32 786443, metadata !1, metadata !4, i32 62, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CactusBindings/ScheduleEinstein.c]
!65 = metadata !{i32 65, i32 0, metadata !64, null}
!66 = metadata !{i32 67, i32 0, metadata !64, null}
!67 = metadata !{i32 69, i32 0, metadata !4, null}
!68 = metadata !{i32 71, i32 0, metadata !69, null}
!69 = metadata !{i32 786443, metadata !1, metadata !4, i32 69, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CactusBindings/ScheduleEinstein.c]
!70 = metadata !{i32 72, i32 0, metadata !69, null}
!71 = metadata !{i32 74, i32 0, metadata !69, null}
!72 = metadata !{i32 76, i32 0, metadata !4, null}
!73 = metadata !{i32 78, i32 0, metadata !74, null}
!74 = metadata !{i32 786443, metadata !1, metadata !4, i32 76, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CactusBindings/ScheduleEinstein.c]
!75 = metadata !{i32 79, i32 0, metadata !74, null}
!76 = metadata !{i32 80, i32 0, metadata !74, null}
!77 = metadata !{i32 81, i32 0, metadata !74, null}
!78 = metadata !{i32 83, i32 0, metadata !74, null}
!79 = metadata !{i32 85, i32 0, metadata !4, null}
!80 = metadata !{i32 87, i32 0, metadata !81, null}
!81 = metadata !{i32 786443, metadata !1, metadata !4, i32 85, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CactusBindings/ScheduleEinstein.c]
!82 = metadata !{i32 88, i32 0, metadata !81, null}
!83 = metadata !{i32 90, i32 0, metadata !81, null}
!84 = metadata !{i32 107, i32 0, metadata !81, null}
!85 = metadata !{i32 109, i32 0, metadata !4, null}
!86 = metadata !{i32 126, i32 0, metadata !4, null}
!87 = metadata !{i32 130, i32 0, metadata !88, null}
!88 = metadata !{i32 786443, metadata !1, metadata !4, i32 128, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CactusBindings/ScheduleEinstein.c]
!89 = metadata !{i32 147, i32 0, metadata !88, null}
!90 = metadata !{i32 149, i32 0, metadata !4, null}
!91 = metadata !{i32 166, i32 0, metadata !4, null}
!92 = metadata !{i32 170, i32 0, metadata !93, null}
!93 = metadata !{i32 786443, metadata !1, metadata !4, i32 168, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CactusBindings/ScheduleEinstein.c]
!94 = metadata !{i32 188, i32 0, metadata !93, null}
!95 = metadata !{i32 190, i32 0, metadata !4, null}
!96 = metadata !{i32 194, i32 0, metadata !97, null}
!97 = metadata !{i32 786443, metadata !1, metadata !4, i32 192, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CactusBindings/ScheduleEinstein.c]
!98 = metadata !{i32 211, i32 0, metadata !97, null}
!99 = metadata !{i32 213, i32 0, metadata !4, null}
!100 = metadata !{i32 217, i32 0, metadata !101, null}
!101 = metadata !{i32 786443, metadata !1, metadata !4, i32 215, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CactusBindings/ScheduleEinstein.c]
!102 = metadata !{i32 234, i32 0, metadata !101, null}
!103 = metadata !{i32 236, i32 0, metadata !4, null}
!104 = metadata !{i32 240, i32 0, metadata !105, null}
!105 = metadata !{i32 786443, metadata !1, metadata !4, i32 238, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CactusBindings/ScheduleEinstein.c]
!106 = metadata !{i32 260, i32 0, metadata !105, null}
!107 = metadata !{i32 262, i32 0, metadata !4, null}
!108 = metadata !{i32 266, i32 0, metadata !109, null}
!109 = metadata !{i32 786443, metadata !1, metadata !4, i32 264, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CactusBindings/ScheduleEinstein.c]
!110 = metadata !{i32 286, i32 0, metadata !109, null}
!111 = metadata !{i32 288, i32 0, metadata !4, null}
!112 = metadata !{i32 292, i32 0, metadata !113, null}
!113 = metadata !{i32 786443, metadata !1, metadata !4, i32 290, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CactusBindings/ScheduleEinstein.c]
!114 = metadata !{i32 296, i32 0, metadata !115, null}
!115 = metadata !{i32 786443, metadata !1, metadata !113, i32 294, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CactusBindings/ScheduleEinstein.c]
!116 = metadata !{i32 313, i32 0, metadata !115, null}
!117 = metadata !{i32 315, i32 0, metadata !113, null}
!118 = metadata !{i32 319, i32 0, metadata !119, null}
!119 = metadata !{i32 786443, metadata !1, metadata !113, i32 317, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CactusBindings/ScheduleEinstein.c]
!120 = metadata !{i32 339, i32 0, metadata !119, null}
!121 = metadata !{i32 343, i32 0, metadata !4, null}
!122 = metadata !{i32 347, i32 0, metadata !123, null}
!123 = metadata !{i32 786443, metadata !1, metadata !4, i32 345, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CactusBindings/ScheduleEinstein.c]
!124 = metadata !{i32 364, i32 0, metadata !123, null}
!125 = metadata !{i32 366, i32 0, metadata !4, null}
!126 = metadata !{i32 389, i32 0, metadata !4, null}
!127 = metadata !{i32 409, i32 0, metadata !4, null}
!128 = metadata !{i32 429, i32 0, metadata !4, null}
!129 = metadata !{i32 433, i32 0, metadata !130, null}
!130 = metadata !{i32 786443, metadata !1, metadata !4, i32 431, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CactusBindings/ScheduleEinstein.c]
!131 = metadata !{i32 451, i32 0, metadata !130, null}
!132 = metadata !{i8* undef}
!133 = metadata !{i32 454, i32 0, metadata !4, null}
