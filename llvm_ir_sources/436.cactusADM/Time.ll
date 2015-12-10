; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/CactusBindings/Time.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

@.str = private unnamed_addr constant [10 x i8] c"SPEEDVARS\00", align 1
@.str1 = private unnamed_addr constant [5 x i8] c"TIME\00", align 1
@.str2 = private unnamed_addr constant [7 x i8] c"SCALAR\00", align 1
@.str3 = private unnamed_addr constant [5 x i8] c"REAL\00", align 1
@.str4 = private unnamed_addr constant [7 x i8] c"PUBLIC\00", align 1
@.str5 = private unnamed_addr constant [5 x i8] c"NONE\00", align 1
@.str6 = private unnamed_addr constant [8 x i8] c"DEFAULT\00", align 1
@.str7 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str8 = private unnamed_addr constant [19 x i8] c"courant_wave_speed\00", align 1
@.str9 = private unnamed_addr constant [17 x i8] c"courant_min_time\00", align 1
@.str10 = private unnamed_addr constant [19 x i8] c"allow_mixeddim_gfs\00", align 1
@.str11 = private unnamed_addr constant [7 x i8] c"Cactus\00", align 1
@.str12 = private unnamed_addr constant [81 x i8] c"../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/CactusBindings/Time.c\00", align 1
@.str13 = private unnamed_addr constant [105 x i8] c"CCTKi_CreateGroup: Working dimension already set, creating GF group speedvars with different dimension 1\00", align 1
@.str14 = private unnamed_addr constant [100 x i8] c"CCTKi_CreateGroup: Working dimension already set, cannot create GF group speedvars with dimension 1\00", align 1
@.str15 = private unnamed_addr constant [13 x i8] c"COURANTTEMPS\00", align 1
@.str16 = private unnamed_addr constant [8 x i8] c"PRIVATE\00", align 1
@.str17 = private unnamed_addr constant [11 x i8] c"courant_dt\00", align 1
@.str18 = private unnamed_addr constant [108 x i8] c"CCTKi_CreateGroup: Working dimension already set, creating GF group couranttemps with different dimension 1\00", align 1
@.str19 = private unnamed_addr constant [103 x i8] c"CCTKi_CreateGroup: Working dimension already set, cannot create GF group couranttemps with dimension 1\00", align 1
@.str20 = private unnamed_addr constant [5 x i8] c"Time\00", align 1

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CactusBindingsVariables_Time_Initialise() #0 {
  %param_type = alloca i32, align 4
  %param_type1 = alloca i32, align 4
  %1 = tail call i32 (i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i8*, i8*, i8*, i8*, i32, ...)* @CCTKi_CreateGroup(i8* getelementptr inbounds ([10 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str4, i64 0, i64 0), i32 1, i32 1, i8* getelementptr inbounds ([5 x i8]* @.str5, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str6, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str7, i64 0, i64 0), i32 2, i8* getelementptr inbounds ([19 x i8]* @.str8, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8]* @.str9, i64 0, i64 0)) #2
  %2 = icmp eq i32 %1, 1
  br i1 %2, label %3, label %12

; <label>:3                                       ; preds = %0
  %4 = call i8* @CCTK_ParameterGet(i8* getelementptr inbounds ([19 x i8]* @.str10, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str11, i64 0, i64 0), i32* %param_type) #2
  %5 = bitcast i8* %4 to i32*
  %6 = load i32* %5, align 4, !tbaa !2
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

; <label>:8                                       ; preds = %3
  %9 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 2, i32 32, i8* getelementptr inbounds ([81 x i8]* @.str12, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str11, i64 0, i64 0), i8* getelementptr inbounds ([105 x i8]* @.str13, i64 0, i64 0)) #2
  br label %12

; <label>:10                                      ; preds = %3
  %11 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 0, i32 38, i8* getelementptr inbounds ([81 x i8]* @.str12, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str11, i64 0, i64 0), i8* getelementptr inbounds ([100 x i8]* @.str14, i64 0, i64 0)) #2
  br label %12

; <label>:12                                      ; preds = %8, %10, %0
  %13 = call i32 (i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i8*, i8*, i8*, i8*, i32, ...)* @CCTKi_CreateGroup(i8* getelementptr inbounds ([13 x i8]* @.str15, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str16, i64 0, i64 0), i32 1, i32 1, i8* getelementptr inbounds ([5 x i8]* @.str5, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str6, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str7, i64 0, i64 0), i32 1, i8* getelementptr inbounds ([11 x i8]* @.str17, i64 0, i64 0)) #2
  %14 = icmp eq i32 %13, 1
  br i1 %14, label %15, label %24

; <label>:15                                      ; preds = %12
  %16 = call i8* @CCTK_ParameterGet(i8* getelementptr inbounds ([19 x i8]* @.str10, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str11, i64 0, i64 0), i32* %param_type1) #2
  %17 = bitcast i8* %16 to i32*
  %18 = load i32* %17, align 4, !tbaa !2
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %22, label %20

; <label>:20                                      ; preds = %15
  %21 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 2, i32 63, i8* getelementptr inbounds ([81 x i8]* @.str12, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str11, i64 0, i64 0), i8* getelementptr inbounds ([108 x i8]* @.str18, i64 0, i64 0)) #2
  br label %24

; <label>:22                                      ; preds = %15
  %23 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 0, i32 69, i8* getelementptr inbounds ([81 x i8]* @.str12, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str11, i64 0, i64 0), i8* getelementptr inbounds ([103 x i8]* @.str19, i64 0, i64 0)) #2
  br label %24

; <label>:24                                      ; preds = %20, %22, %12
  %25 = call i32 @CCTKi_RegisterFortranWrapper(i8* getelementptr inbounds ([5 x i8]* @.str20, i64 0, i64 0), i32 (i8*, i8*)* @CCTKi_BindingsFortranWrapperTime) #2
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
declare i32 @CCTKi_BindingsFortranWrapperTime(i8*, i8*) #1

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
