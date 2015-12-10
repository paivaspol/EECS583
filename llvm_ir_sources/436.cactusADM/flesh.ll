; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/Cactus/flesh.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.tFleshConfig = type { i8*, %struct.cGH**, i32 }
%struct.cGH = type { i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, double, double*, double*, i32*, i32*, i32, i32*, double, i8***, i8**, %struct.cGHGroupData* }
%struct.cGHGroupData = type { i8, i8 }

@CCTK_Initialise = external global i32 (%struct.tFleshConfig*)*
@CCTK_Evolve = external global i32 (%struct.tFleshConfig*)*
@CCTK_Shutdown = external global i32 (%struct.tFleshConfig*)*
@.str = private unnamed_addr constant [83 x i8] c"$Header: /cactus/Cactus/src/main/flesh.cc,v 1.10 2000/10/05 00:06:58 goodale Exp $\00", align 1

; Function Attrs: nounwind optsize readnone ssp uwtable
define i8* @CCTKi_version_main_flesh_cc() #0 {
  ret i8* getelementptr inbounds ([83 x i8]* @.str, i64 0, i64 0)
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @main(i32 %argc, i8** %argv) #1 {
  %1 = alloca i32, align 4
  %2 = alloca i8**, align 8
  %ConfigData = alloca %struct.tFleshConfig, align 8
  store i32 %argc, i32* %1, align 4, !tbaa !2
  store i8** %argv, i8*** %2, align 8, !tbaa !6
  %3 = call i32 @CCTKi_InitialiseCactus(i32* %1, i8*** %2, %struct.tFleshConfig* %ConfigData) #3
  %4 = load i32 (%struct.tFleshConfig*)** @CCTK_Initialise, align 8, !tbaa !6
  %5 = call i32 %4(%struct.tFleshConfig* %ConfigData) #3
  %6 = load i32 (%struct.tFleshConfig*)** @CCTK_Evolve, align 8, !tbaa !6
  %7 = call i32 %6(%struct.tFleshConfig* %ConfigData) #3
  %8 = load i32 (%struct.tFleshConfig*)** @CCTK_Shutdown, align 8, !tbaa !6
  %9 = call i32 %8(%struct.tFleshConfig* %ConfigData) #3
  %10 = call i32 @CCTKi_ShutdownCactus(%struct.tFleshConfig* %ConfigData) #3
  ret i32 0
}

; Function Attrs: optsize
declare i32 @CCTKi_InitialiseCactus(i32*, i8***, %struct.tFleshConfig*) #2

; Function Attrs: optsize
declare i32 @CCTKi_ShutdownCactus(%struct.tFleshConfig*) #2

attributes #0 = { nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!2 = !{!3, !3, i64 0}
!3 = !{!"int", !4, i64 0}
!4 = !{!"omnipotent char", !5, i64 0}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!7, !7, i64 0}
!7 = !{!"any pointer", !4, i64 0}
