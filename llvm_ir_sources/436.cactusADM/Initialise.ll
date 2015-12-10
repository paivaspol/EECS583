; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/Time/Initialise.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.cGH = type { i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, double, double*, double*, i32*, i32*, i32, i32*, double, i8***, i8**, %struct.cGHGroupData* }
%struct.cGHGroupData = type { i8, i8 }

@.str = private unnamed_addr constant [17 x i8] c"Time::courant_dt\00", align 1
@.str1 = private unnamed_addr constant [23 x i8] c"time::courant_min_time\00", align 1
@.str2 = private unnamed_addr constant [25 x i8] c"time::courant_wave_speed\00", align 1
@.str3 = private unnamed_addr constant [88 x i8] c"$Header: /cactus/CactusBase/Time/src/Initialise.c,v 1.1 2001/06/04 18:20:15 allen Exp $\00", align 1

; Function Attrs: nounwind optsize readnone ssp uwtable
define i8* @CCTKi_version_CactusBase_Time_Initialise_c() #0 {
  ret i8* getelementptr inbounds ([88 x i8]* @.str3, i64 0, i64 0)
}

; Function Attrs: nounwind optsize ssp uwtable
define void @Time_Initialise(%struct.cGH* nocapture readonly %cctkGH) #1 {
  %1 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([17 x i8]* @.str, i64 0, i64 0)) #3
  %2 = sext i32 %1 to i64
  %3 = getelementptr inbounds %struct.cGH* %cctkGH, i64 0, i32 17
  %4 = load i8**** %3, align 8, !tbaa !2
  %5 = getelementptr inbounds i8*** %4, i64 %2
  %6 = bitcast i8*** %5 to double***
  %7 = load double*** %6, align 8, !tbaa !9
  %8 = load double** %7, align 8, !tbaa !9
  %9 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([23 x i8]* @.str1, i64 0, i64 0)) #3
  %10 = sext i32 %9 to i64
  %11 = load i8**** %3, align 8, !tbaa !2
  %12 = getelementptr inbounds i8*** %11, i64 %10
  %13 = bitcast i8*** %12 to double***
  %14 = load double*** %13, align 8, !tbaa !9
  %15 = load double** %14, align 8, !tbaa !9
  %16 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([25 x i8]* @.str2, i64 0, i64 0)) #3
  %17 = sext i32 %16 to i64
  %18 = load i8**** %3, align 8, !tbaa !2
  %19 = getelementptr inbounds i8*** %18, i64 %17
  %20 = bitcast i8*** %19 to double***
  %21 = load double*** %20, align 8, !tbaa !9
  %22 = load double** %21, align 8, !tbaa !9
  store double 0.000000e+00, double* %22, align 8, !tbaa !10
  store double 0.000000e+00, double* %15, align 8, !tbaa !10
  store double 0.000000e+00, double* %8, align 8, !tbaa !10
  ret void
}

; Function Attrs: optsize
declare i32 @CCTK_VarIndex(i8*) #2

attributes #0 = { nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!2 = !{!3, !7, i64 128}
!3 = !{!"", !4, i64 0, !4, i64 4, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !8, i64 64, !7, i64 72, !7, i64 80, !7, i64 88, !7, i64 96, !4, i64 104, !7, i64 112, !8, i64 120, !7, i64 128, !7, i64 136, !7, i64 144}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!"any pointer", !5, i64 0}
!8 = !{!"double", !5, i64 0}
!9 = !{!7, !7, i64 0}
!10 = !{!8, !8, i64 0}
