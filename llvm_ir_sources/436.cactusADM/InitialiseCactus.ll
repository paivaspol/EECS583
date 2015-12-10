; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/Cactus/InitialiseCactus.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.tFleshConfig = type { i8*, %struct.cGH**, i32 }
%struct.cGH = type { i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, double, double*, double*, i32*, i32*, i32, i32*, double, i8***, i8**, %struct.cGHGroupData* }
%struct.cGHGroupData = type { i8, i8 }

@startuptime = internal unnamed_addr global i64 0, align 8
@.str = private unnamed_addr constant [92 x i8] c"$Header: /cactus/Cactus/src/main/InitialiseCactus.c,v 1.28 2001/11/05 14:58:53 tradke Exp $\00", align 1
@.str1 = private unnamed_addr constant [85 x i8] c"../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/Cactus/InitialiseCactus.c\00", align 1
@.str2 = private unnamed_addr constant [7 x i8] c"Cactus\00", align 1
@.str3 = private unnamed_addr constant [29 x i8] c"Failed to recover parameters\00", align 1
@.str4 = private unnamed_addr constant [19 x i8] c"cctk_show_schedule\00", align 1
@str6 = private unnamed_addr constant [81 x i8] c"--------------------------------------------------------------------------------\00"

; Function Attrs: nounwind optsize readnone ssp uwtable
define i8* @CCTKi_version_main_InitialiseCactus_c() #0 {
  ret i8* getelementptr inbounds ([92 x i8]* @.str, i64 0, i64 0)
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTKi_InitialiseCactus(i32* %argc, i8*** %argv, %struct.tFleshConfig* %ConfigData) #1 {
  %i.i = alloca i32, align 4
  %1 = tail call i64 @time(i64* null) #4
  store i64 %1, i64* @startuptime, align 8, !tbaa !2
  %2 = tail call i32 @CCTKi_InitialiseSubsystemDefaults() #4
  %3 = tail call i32 @CCTKi_ProcessEnvironment(i32* %argc, i8*** %argv, %struct.tFleshConfig* %ConfigData) #4
  %4 = tail call i32 @CCTKi_ProcessCommandLine(i32* %argc, i8*** %argv, %struct.tFleshConfig* %ConfigData) #4
  tail call void @CCTKi_CactusBanner() #4
  %5 = tail call i32 @CCTKi_InitialiseDataStructures(%struct.tFleshConfig* %ConfigData) #4
  %6 = tail call i32 @CCTKi_ProcessParameterDatabase(%struct.tFleshConfig* %ConfigData) #4
  %7 = tail call i32 @CCTKi_BindingsVariablesInitialise() #4
  %8 = tail call i32 @CCTKBindings_RegisterThornFunctions() #4
  %9 = bitcast i32* %i.i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9)
  tail call void @CCTKi_SetParameterSetMask(i32 1) #4
  %10 = tail call i32 @CCTKi_BindingsParameterRecoveryInitialise() #4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %14

; <label>:12                                      ; preds = %0
  %13 = tail call i32 @CCTK_Warn(i32 0, i32 178, i8* getelementptr inbounds ([85 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([29 x i8]* @.str3, i64 0, i64 0)) #4
  br label %14

; <label>:14                                      ; preds = %12, %0
  tail call void @CCTKi_SetParameterSetMask(i32 2) #4
  %15 = tail call i32 @CCTKi_BindingsScheduleInitialise() #4
  %16 = tail call i32 @CCTKi_DoScheduleSortAllGroups() #4
  %17 = call i8* @CCTK_ParameterGet(i8* getelementptr inbounds ([19 x i8]* @.str4, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str2, i64 0, i64 0), i32* %i.i) #4
  %18 = bitcast i8* %17 to i32*
  %19 = load i32* %18, align 4, !tbaa !6
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %CCTKi_InitialiseScheduler.exit, label %21

; <label>:21                                      ; preds = %14
  %puts.i = call i32 @puts(i8* getelementptr inbounds ([81 x i8]* @str6, i64 0, i64 0)) #3
  %22 = call i32 @CCTK_SchedulePrint(i8* null) #4
  %puts1.i = call i32 @puts(i8* getelementptr inbounds ([81 x i8]* @str6, i64 0, i64 0)) #3
  br label %CCTKi_InitialiseScheduler.exit

CCTKi_InitialiseScheduler.exit:                   ; preds = %14, %21
  call void @llvm.lifetime.end(i64 4, i8* %9)
  %23 = call i32 @CCTKi_CallStartupFunctions(%struct.tFleshConfig* %ConfigData) #4
  %24 = call i32 @CCTKi_PrintBanners() #4
  ret i32 0
}

; Function Attrs: optsize
declare i64 @time(i64*) #2

; Function Attrs: optsize
declare i32 @CCTKi_InitialiseSubsystemDefaults() #2

; Function Attrs: optsize
declare i32 @CCTKi_ProcessEnvironment(i32*, i8***, %struct.tFleshConfig*) #2

; Function Attrs: optsize
declare i32 @CCTKi_ProcessCommandLine(i32*, i8***, %struct.tFleshConfig*) #2

; Function Attrs: optsize
declare void @CCTKi_CactusBanner() #2

; Function Attrs: optsize
declare i32 @CCTKi_InitialiseDataStructures(%struct.tFleshConfig*) #2

; Function Attrs: optsize
declare i32 @CCTKi_ProcessParameterDatabase(%struct.tFleshConfig*) #2

; Function Attrs: optsize
declare i32 @CCTKi_BindingsVariablesInitialise() #2

; Function Attrs: optsize
declare i32 @CCTKBindings_RegisterThornFunctions() #2

; Function Attrs: optsize
declare i32 @CCTKi_CallStartupFunctions(%struct.tFleshConfig*) #2

; Function Attrs: optsize
declare i32 @CCTKi_PrintBanners() #2

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTK_RunTime() #1 {
  %1 = tail call i64 @time(i64* null) #4
  %2 = load i64* @startuptime, align 8, !tbaa !2
  %3 = sub nsw i64 %1, %2
  %4 = trunc i64 %3 to i32
  ret i32 %4
}

; Function Attrs: optsize
declare void @CCTKi_SetParameterSetMask(i32) #2

; Function Attrs: optsize
declare i32 @CCTKi_BindingsParameterRecoveryInitialise() #2

; Function Attrs: optsize
declare i32 @CCTK_Warn(i32, i32, i8*, i8*, i8*) #2

; Function Attrs: optsize
declare i32 @CCTKi_BindingsScheduleInitialise() #2

; Function Attrs: optsize
declare i32 @CCTKi_DoScheduleSortAllGroups() #2

; Function Attrs: optsize
declare i8* @CCTK_ParameterGet(i8*, i8*, i32*) #2

; Function Attrs: optsize
declare i32 @CCTK_SchedulePrint(i8*) #2

; Function Attrs: nounwind
declare i32 @puts(i8* nocapture readonly) #3

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #3

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #3

attributes #0 = { nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { nounwind optsize }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!2 = !{!3, !3, i64 0}
!3 = !{!"long", !4, i64 0}
!4 = !{!"omnipotent char", !5, i64 0}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!7, !7, i64 0}
!7 = !{!"int", !4, i64 0}
