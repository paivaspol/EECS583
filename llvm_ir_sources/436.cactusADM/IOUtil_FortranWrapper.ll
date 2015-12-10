; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/CactusBindings/IOUtil_FortranWrapper.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.cGH = type { i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, double, double*, double*, i32*, i32*, i32, i32*, double, i8***, i8**, %struct.cGHGroupData* }
%struct.cGHGroupData = type { i8, i8 }

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTKi_BindingsFortranWrapperIOUtil(%struct.cGH* %GH, i8* nocapture %fpointer) #0 {
  %1 = bitcast i8* %fpointer to void (i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, double*, double*, double*, double*, i32*, i32*, i32*, i32*, %struct.cGH*)*
  %2 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 0
  %3 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 2
  %4 = load i32** %3, align 8, !tbaa !2
  %5 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 3
  %6 = load i32** %5, align 8, !tbaa !9
  %7 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 4
  %8 = load i32** %7, align 8, !tbaa !10
  %9 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 5
  %10 = load i32** %9, align 8, !tbaa !11
  %11 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 6
  %12 = load i32** %11, align 8, !tbaa !12
  %13 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 8
  %14 = load i32** %13, align 8, !tbaa !13
  %15 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 7
  %16 = load i32** %15, align 8, !tbaa !14
  %17 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 12
  %18 = load i32** %17, align 8, !tbaa !15
  %19 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 9
  %20 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 16
  %21 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 10
  %22 = load double** %21, align 8, !tbaa !16
  %23 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 11
  %24 = load double** %23, align 8, !tbaa !17
  %25 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 13
  %26 = load i32** %25, align 8, !tbaa !18
  %27 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 14
  %28 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 15
  %29 = load i32** %28, align 8, !tbaa !19
  %30 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 1
  tail call void %1(i32* %2, i32* %4, i32* %6, i32* %8, i32* %10, i32* %12, i32* %14, i32* %16, i32* %18, double* %19, double* %20, double* %22, double* %24, i32* %26, i32* %27, i32* %29, i32* %30, %struct.cGH* %GH) #1
  ret i32 0
}

attributes #0 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!2 = !{!3, !7, i64 8}
!3 = !{!"", !4, i64 0, !4, i64 4, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !8, i64 64, !7, i64 72, !7, i64 80, !7, i64 88, !7, i64 96, !4, i64 104, !7, i64 112, !8, i64 120, !7, i64 128, !7, i64 136, !7, i64 144}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!"any pointer", !5, i64 0}
!8 = !{!"double", !5, i64 0}
!9 = !{!3, !7, i64 16}
!10 = !{!3, !7, i64 24}
!11 = !{!3, !7, i64 32}
!12 = !{!3, !7, i64 40}
!13 = !{!3, !7, i64 56}
!14 = !{!3, !7, i64 48}
!15 = !{!3, !7, i64 88}
!16 = !{!3, !7, i64 72}
!17 = !{!3, !7, i64 80}
!18 = !{!3, !7, i64 96}
!19 = !{!3, !7, i64 112}
