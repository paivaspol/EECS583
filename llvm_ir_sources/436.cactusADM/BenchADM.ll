; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/CactusBindings/BenchADM.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

@.str = private unnamed_addr constant [16 x i8] c"ADM_METRIC_PREV\00", align 1
@.str1 = private unnamed_addr constant [9 x i8] c"BENCHADM\00", align 1
@.str2 = private unnamed_addr constant [3 x i8] c"GF\00", align 1
@.str3 = private unnamed_addr constant [5 x i8] c"REAL\00", align 1
@.str4 = private unnamed_addr constant [8 x i8] c"PRIVATE\00", align 1
@.str5 = private unnamed_addr constant [5 x i8] c"NONE\00", align 1
@.str6 = private unnamed_addr constant [8 x i8] c"DEFAULT\00", align 1
@.str7 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str8 = private unnamed_addr constant [8 x i8] c"ADM_gxx\00", align 1
@.str9 = private unnamed_addr constant [8 x i8] c"ADM_gxy\00", align 1
@.str10 = private unnamed_addr constant [8 x i8] c"ADM_gxz\00", align 1
@.str11 = private unnamed_addr constant [8 x i8] c"ADM_gyy\00", align 1
@.str12 = private unnamed_addr constant [8 x i8] c"ADM_gyz\00", align 1
@.str13 = private unnamed_addr constant [8 x i8] c"ADM_gzz\00", align 1
@.str14 = private unnamed_addr constant [19 x i8] c"allow_mixeddim_gfs\00", align 1
@.str15 = private unnamed_addr constant [7 x i8] c"Cactus\00", align 1
@.str16 = private unnamed_addr constant [85 x i8] c"../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/CactusBindings/BenchADM.c\00", align 1
@.str17 = private unnamed_addr constant [111 x i8] c"CCTKi_CreateGroup: Working dimension already set, creating GF group ADM_metric_prev with different dimension 3\00", align 1
@.str18 = private unnamed_addr constant [106 x i8] c"CCTKi_CreateGroup: Working dimension already set, cannot create GF group ADM_metric_prev with dimension 3\00", align 1
@.str19 = private unnamed_addr constant [14 x i8] c"ADM_CURV_STAG\00", align 1
@.str20 = private unnamed_addr constant [13 x i8] c"ADM_kxx_stag\00", align 1
@.str21 = private unnamed_addr constant [13 x i8] c"ADM_kxy_stag\00", align 1
@.str22 = private unnamed_addr constant [13 x i8] c"ADM_kxz_stag\00", align 1
@.str23 = private unnamed_addr constant [13 x i8] c"ADM_kyy_stag\00", align 1
@.str24 = private unnamed_addr constant [13 x i8] c"ADM_kyz_stag\00", align 1
@.str25 = private unnamed_addr constant [13 x i8] c"ADM_kzz_stag\00", align 1
@.str26 = private unnamed_addr constant [109 x i8] c"CCTKi_CreateGroup: Working dimension already set, creating GF group ADM_curv_stag with different dimension 3\00", align 1
@.str27 = private unnamed_addr constant [104 x i8] c"CCTKi_CreateGroup: Working dimension already set, cannot create GF group ADM_curv_stag with dimension 3\00", align 1
@.str28 = private unnamed_addr constant [12 x i8] c"ADM_SOURCES\00", align 1
@.str29 = private unnamed_addr constant [9 x i8] c"adms_kxx\00", align 1
@.str30 = private unnamed_addr constant [9 x i8] c"adms_kxy\00", align 1
@.str31 = private unnamed_addr constant [9 x i8] c"adms_kxz\00", align 1
@.str32 = private unnamed_addr constant [9 x i8] c"adms_kyy\00", align 1
@.str33 = private unnamed_addr constant [9 x i8] c"adms_kyz\00", align 1
@.str34 = private unnamed_addr constant [9 x i8] c"adms_kzz\00", align 1
@.str35 = private unnamed_addr constant [9 x i8] c"adms_gxx\00", align 1
@.str36 = private unnamed_addr constant [9 x i8] c"adms_gxy\00", align 1
@.str37 = private unnamed_addr constant [9 x i8] c"adms_gxz\00", align 1
@.str38 = private unnamed_addr constant [9 x i8] c"adms_gyy\00", align 1
@.str39 = private unnamed_addr constant [9 x i8] c"adms_gyz\00", align 1
@.str40 = private unnamed_addr constant [9 x i8] c"adms_gzz\00", align 1
@.str41 = private unnamed_addr constant [107 x i8] c"CCTKi_CreateGroup: Working dimension already set, creating GF group ADM_sources with different dimension 3\00", align 1
@.str42 = private unnamed_addr constant [102 x i8] c"CCTKi_CreateGroup: Working dimension already set, cannot create GF group ADM_sources with dimension 3\00", align 1
@.str43 = private unnamed_addr constant [9 x i8] c"BenchADM\00", align 1

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CactusBindingsVariables_BenchADM_Initialise() #0 {
  %param_type = alloca i32, align 4
  %param_type1 = alloca i32, align 4
  %param_type3 = alloca i32, align 4
  %1 = tail call i32 (i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i8*, i8*, i8*, i8*, i32, ...)* @CCTKi_CreateGroup(i8* getelementptr inbounds ([16 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str4, i64 0, i64 0), i32 3, i32 2, i8* getelementptr inbounds ([5 x i8]* @.str5, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str6, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str7, i64 0, i64 0), i32 6, i8* getelementptr inbounds ([8 x i8]* @.str8, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str9, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str10, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str11, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str12, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str13, i64 0, i64 0)) #2
  %2 = icmp eq i32 %1, 1
  br i1 %2, label %3, label %12

; <label>:3                                       ; preds = %0
  %4 = call i8* @CCTK_ParameterGet(i8* getelementptr inbounds ([19 x i8]* @.str14, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str15, i64 0, i64 0), i32* %param_type) #2
  %5 = bitcast i8* %4 to i32*
  %6 = load i32* %5, align 4, !tbaa !2
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

; <label>:8                                       ; preds = %3
  %9 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 2, i32 36, i8* getelementptr inbounds ([85 x i8]* @.str16, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str15, i64 0, i64 0), i8* getelementptr inbounds ([111 x i8]* @.str17, i64 0, i64 0)) #2
  br label %12

; <label>:10                                      ; preds = %3
  %11 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 0, i32 42, i8* getelementptr inbounds ([85 x i8]* @.str16, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str15, i64 0, i64 0), i8* getelementptr inbounds ([106 x i8]* @.str18, i64 0, i64 0)) #2
  br label %12

; <label>:12                                      ; preds = %8, %10, %0
  %13 = call i32 (i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i8*, i8*, i8*, i8*, i32, ...)* @CCTKi_CreateGroup(i8* getelementptr inbounds ([14 x i8]* @.str19, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str4, i64 0, i64 0), i32 3, i32 3, i8* getelementptr inbounds ([5 x i8]* @.str5, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str6, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str7, i64 0, i64 0), i32 6, i8* getelementptr inbounds ([13 x i8]* @.str20, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8]* @.str21, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8]* @.str22, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8]* @.str23, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8]* @.str24, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8]* @.str25, i64 0, i64 0)) #2
  %14 = icmp eq i32 %13, 1
  br i1 %14, label %15, label %24

; <label>:15                                      ; preds = %12
  %16 = call i8* @CCTK_ParameterGet(i8* getelementptr inbounds ([19 x i8]* @.str14, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str15, i64 0, i64 0), i32* %param_type1) #2
  %17 = bitcast i8* %16 to i32*
  %18 = load i32* %17, align 4, !tbaa !2
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %22, label %20

; <label>:20                                      ; preds = %15
  %21 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 2, i32 72, i8* getelementptr inbounds ([85 x i8]* @.str16, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str15, i64 0, i64 0), i8* getelementptr inbounds ([109 x i8]* @.str26, i64 0, i64 0)) #2
  br label %24

; <label>:22                                      ; preds = %15
  %23 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 0, i32 78, i8* getelementptr inbounds ([85 x i8]* @.str16, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str15, i64 0, i64 0), i8* getelementptr inbounds ([104 x i8]* @.str27, i64 0, i64 0)) #2
  br label %24

; <label>:24                                      ; preds = %20, %22, %12
  %25 = call i32 (i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i8*, i8*, i8*, i8*, i32, ...)* @CCTKi_CreateGroup(i8* getelementptr inbounds ([12 x i8]* @.str28, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str4, i64 0, i64 0), i32 3, i32 1, i8* getelementptr inbounds ([5 x i8]* @.str5, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str6, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str7, i64 0, i64 0), i32 12, i8* getelementptr inbounds ([9 x i8]* @.str29, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str30, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str31, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str32, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str33, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str34, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str35, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str36, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str37, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str38, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str39, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str40, i64 0, i64 0)) #2
  %26 = icmp eq i32 %25, 1
  br i1 %26, label %27, label %36

; <label>:27                                      ; preds = %24
  %28 = call i8* @CCTK_ParameterGet(i8* getelementptr inbounds ([19 x i8]* @.str14, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str15, i64 0, i64 0), i32* %param_type3) #2
  %29 = bitcast i8* %28 to i32*
  %30 = load i32* %29, align 4, !tbaa !2
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %34, label %32

; <label>:32                                      ; preds = %27
  %33 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 2, i32 114, i8* getelementptr inbounds ([85 x i8]* @.str16, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str15, i64 0, i64 0), i8* getelementptr inbounds ([107 x i8]* @.str41, i64 0, i64 0)) #2
  br label %36

; <label>:34                                      ; preds = %27
  %35 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 0, i32 120, i8* getelementptr inbounds ([85 x i8]* @.str16, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str15, i64 0, i64 0), i8* getelementptr inbounds ([102 x i8]* @.str42, i64 0, i64 0)) #2
  br label %36

; <label>:36                                      ; preds = %32, %34, %24
  %37 = call i32 @CCTKi_RegisterFortranWrapper(i8* getelementptr inbounds ([9 x i8]* @.str43, i64 0, i64 0), i32 (i8*, i8*)* @CCTKi_BindingsFortranWrapperBenchADM) #2
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
declare i32 @CCTKi_BindingsFortranWrapperBenchADM(i8*, i8*) #1

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
