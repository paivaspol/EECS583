; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/Cactus/CactusDefaultInitialise.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.cGH = type { i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, double, double*, double*, i32*, i32*, i32, i32*, double, i8***, i8**, %struct.cGHGroupData* }
%struct.cGHGroupData = type { i8, i8 }
%struct.tFleshConfig = type { i8*, %struct.cGH**, i32 }

@CCTK_SetupGH = external global %struct.cGH* (%struct.tFleshConfig*, i32)*
@.str = private unnamed_addr constant [18 x i8] c"cctk_initial_time\00", align 1
@.str1 = private unnamed_addr constant [7 x i8] c"Cactus\00", align 1
@.str2 = private unnamed_addr constant [16 x i8] c"CCTK_PARAMCHECK\00", align 1
@.str3 = private unnamed_addr constant [14 x i8] c"CCTK_BASEGRID\00", align 1
@.str4 = private unnamed_addr constant [13 x i8] c"CCTK_INITIAL\00", align 1
@.str5 = private unnamed_addr constant [17 x i8] c"CCTK_POSTINITIAL\00", align 1
@.str6 = private unnamed_addr constant [14 x i8] c"CCTK_POSTSTEP\00", align 1
@.str7 = private unnamed_addr constant [23 x i8] c"CCTK_RECOVER_VARIABLES\00", align 1
@.str8 = private unnamed_addr constant [15 x i8] c"CCTK_CPINITIAL\00", align 1
@.str9 = private unnamed_addr constant [71 x i8] c"$Id: CactusDefaultInitialise.c,v 1.51 2001/12/17 22:31:27 tradke Exp $\00", align 1

; Function Attrs: nounwind optsize readnone ssp uwtable
define i8* @CCTKi_version_main_CactusDefaultInitialise_c() #0 {
  ret i8* getelementptr inbounds ([71 x i8]* @.str9, i64 0, i64 0)
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CactusDefaultInitialise(%struct.tFleshConfig* %config) #1 {
  %1 = load %struct.cGH* (%struct.tFleshConfig*, i32)** @CCTK_SetupGH, align 8, !tbaa !2
  %2 = tail call %struct.cGH* %1(%struct.tFleshConfig* %config, i32 0) #3
  %3 = icmp eq %struct.cGH* %2, null
  br i1 %3, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %0, %.lr.ph
  %4 = phi %struct.cGH* [ %9, %.lr.ph ], [ %2, %0 ]
  %convergence_level.01 = phi i32 [ %7, %.lr.ph ], [ 0, %0 ]
  %5 = tail call i32 @CCTKi_AddGH(%struct.tFleshConfig* %config, i32 %convergence_level.01, %struct.cGH* %4) #3
  %6 = tail call i32 @CactusInitialiseGH(%struct.cGH* %4) #4
  %7 = add nuw nsw i32 %convergence_level.01, 1
  %8 = load %struct.cGH* (%struct.tFleshConfig*, i32)** @CCTK_SetupGH, align 8, !tbaa !2
  %9 = tail call %struct.cGH* %8(%struct.tFleshConfig* %config, i32 %7) #3
  %10 = icmp eq %struct.cGH* %9, null
  br i1 %10, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %0
  ret i32 0
}

; Function Attrs: optsize
declare i32 @CCTKi_AddGH(%struct.tFleshConfig*, i32, %struct.cGH*) #2

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CactusInitialiseGH(%struct.cGH* %GH) #1 {
  %param_type = alloca i32, align 4
  %1 = call i8* @CCTK_ParameterGet(i8* getelementptr inbounds ([18 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i32* %param_type) #3
  %2 = bitcast i8* %1 to i64*
  %3 = load i64* %2, align 8, !tbaa !6
  %4 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 16
  %5 = bitcast double* %4 to i64*
  store i64 %3, i64* %5, align 8, !tbaa !8
  %6 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 1
  store i32 0, i32* %6, align 4, !tbaa !11
  %7 = bitcast %struct.cGH* %GH to i8*
  %8 = call i32 @CCTKi_ScheduleGHInit(i8* %7) #3
  %9 = call i32 @CCTKi_InitGHExtensions(%struct.cGH* %GH) #3
  %10 = call i32 @CCTK_Traverse(%struct.cGH* %GH, i8* getelementptr inbounds ([16 x i8]* @.str2, i64 0, i64 0)) #3
  call void @CCTKi_FinaliseParamWarn() #3
  %11 = call i32 @CCTK_Traverse(%struct.cGH* %GH, i8* getelementptr inbounds ([14 x i8]* @.str3, i64 0, i64 0)) #3
  %12 = call i32 @CCTK_Traverse(%struct.cGH* %GH, i8* getelementptr inbounds ([13 x i8]* @.str4, i64 0, i64 0)) #3
  %13 = call i32 @CCTK_Traverse(%struct.cGH* %GH, i8* getelementptr inbounds ([17 x i8]* @.str5, i64 0, i64 0)) #3
  %14 = call i32 @CCTK_Traverse(%struct.cGH* %GH, i8* getelementptr inbounds ([14 x i8]* @.str6, i64 0, i64 0)) #3
  %15 = call i32 @CCTK_Traverse(%struct.cGH* %GH, i8* getelementptr inbounds ([23 x i8]* @.str7, i64 0, i64 0)) #3
  %16 = call i32 @CCTK_Traverse(%struct.cGH* %GH, i8* getelementptr inbounds ([15 x i8]* @.str8, i64 0, i64 0)) #3
  ret i32 1
}

; Function Attrs: optsize
declare i8* @CCTK_ParameterGet(i8*, i8*, i32*) #2

; Function Attrs: optsize
declare i32 @CCTKi_ScheduleGHInit(i8*) #2

; Function Attrs: optsize
declare i32 @CCTKi_InitGHExtensions(%struct.cGH*) #2

; Function Attrs: optsize
declare i32 @CCTK_Traverse(%struct.cGH*, i8*) #2

; Function Attrs: optsize
declare void @CCTKi_FinaliseParamWarn() #2

attributes #0 = { nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize }
attributes #4 = { optsize }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!2 = !{!3, !3, i64 0}
!3 = !{!"any pointer", !4, i64 0}
!4 = !{!"omnipotent char", !5, i64 0}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!7, !7, i64 0}
!7 = !{!"double", !4, i64 0}
!8 = !{!9, !7, i64 120}
!9 = !{!"", !10, i64 0, !10, i64 4, !3, i64 8, !3, i64 16, !3, i64 24, !3, i64 32, !3, i64 40, !3, i64 48, !3, i64 56, !7, i64 64, !3, i64 72, !3, i64 80, !3, i64 88, !3, i64 96, !10, i64 104, !3, i64 112, !7, i64 120, !3, i64 128, !3, i64 136, !3, i64 144}
!10 = !{!"int", !4, i64 0}
!11 = !{!9, !10, i64 4}
