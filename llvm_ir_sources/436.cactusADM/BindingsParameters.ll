; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/CactusBindings/BindingsParameters.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTKi_BindingsParametersInitialise() #0 {
  %1 = tail call i32 @CCTKi_BindingsCreateIOASCIIParameters() #2
  %2 = tail call i32 @CCTKi_BindingsCreateBenchADMParameters() #2
  %3 = tail call i32 @CCTKi_BindingsCreateCactusParameters() #2
  %4 = tail call i32 @CCTKi_BindingsCreateBoundaryParameters() #2
  %5 = tail call i32 @CCTKi_BindingsCreatePUGHParameters() #2
  %6 = tail call i32 @CCTKi_BindingsCreateIOUtilParameters() #2
  %7 = tail call i32 @CCTKi_BindingsCreatePUGHSlabParameters() #2
  %8 = tail call i32 @CCTKi_BindingsCreateCartGrid3DParameters() #2
  %9 = tail call i32 @CCTKi_BindingsCreateIOBasicParameters() #2
  %10 = tail call i32 @CCTKi_BindingsCreatePUGHReduceParameters() #2
  %11 = tail call i32 @CCTKi_BindingsCreateIDLinearWavesParameters() #2
  %12 = tail call i32 @CCTKi_BindingsCreateTimeParameters() #2
  %13 = tail call i32 @CCTKi_BindingsCreateEinsteinParameters() #2
  %14 = tail call i32 @CCTKi_BindingsIOASCIIParameterExtensions() #2
  %15 = tail call i32 @CCTKi_BindingsBenchADMParameterExtensions() #2
  %16 = tail call i32 @CCTKi_BindingsCactusParameterExtensions() #2
  %17 = tail call i32 @CCTKi_BindingsBoundaryParameterExtensions() #2
  %18 = tail call i32 @CCTKi_BindingsPUGHParameterExtensions() #2
  %19 = tail call i32 @CCTKi_BindingsIOUtilParameterExtensions() #2
  %20 = tail call i32 @CCTKi_BindingsPUGHSlabParameterExtensions() #2
  %21 = tail call i32 @CCTKi_BindingsCartGrid3DParameterExtensions() #2
  %22 = tail call i32 @CCTKi_BindingsIOBasicParameterExtensions() #2
  %23 = tail call i32 @CCTKi_BindingsPUGHReduceParameterExtensions() #2
  %24 = tail call i32 @CCTKi_BindingsIDLinearWavesParameterExtensions() #2
  %25 = tail call i32 @CCTKi_BindingsTimeParameterExtensions() #2
  %26 = tail call i32 @CCTKi_BindingsEinsteinParameterExtensions() #2
  ret i32 0
}

; Function Attrs: optsize
declare i32 @CCTKi_BindingsCreateIOASCIIParameters() #1

; Function Attrs: optsize
declare i32 @CCTKi_BindingsCreateBenchADMParameters() #1

; Function Attrs: optsize
declare i32 @CCTKi_BindingsCreateCactusParameters() #1

; Function Attrs: optsize
declare i32 @CCTKi_BindingsCreateBoundaryParameters() #1

; Function Attrs: optsize
declare i32 @CCTKi_BindingsCreatePUGHParameters() #1

; Function Attrs: optsize
declare i32 @CCTKi_BindingsCreateIOUtilParameters() #1

; Function Attrs: optsize
declare i32 @CCTKi_BindingsCreatePUGHSlabParameters() #1

; Function Attrs: optsize
declare i32 @CCTKi_BindingsCreateCartGrid3DParameters() #1

; Function Attrs: optsize
declare i32 @CCTKi_BindingsCreateIOBasicParameters() #1

; Function Attrs: optsize
declare i32 @CCTKi_BindingsCreatePUGHReduceParameters() #1

; Function Attrs: optsize
declare i32 @CCTKi_BindingsCreateIDLinearWavesParameters() #1

; Function Attrs: optsize
declare i32 @CCTKi_BindingsCreateTimeParameters() #1

; Function Attrs: optsize
declare i32 @CCTKi_BindingsCreateEinsteinParameters() #1

; Function Attrs: optsize
declare i32 @CCTKi_BindingsIOASCIIParameterExtensions() #1

; Function Attrs: optsize
declare i32 @CCTKi_BindingsBenchADMParameterExtensions() #1

; Function Attrs: optsize
declare i32 @CCTKi_BindingsCactusParameterExtensions() #1

; Function Attrs: optsize
declare i32 @CCTKi_BindingsBoundaryParameterExtensions() #1

; Function Attrs: optsize
declare i32 @CCTKi_BindingsPUGHParameterExtensions() #1

; Function Attrs: optsize
declare i32 @CCTKi_BindingsIOUtilParameterExtensions() #1

; Function Attrs: optsize
declare i32 @CCTKi_BindingsPUGHSlabParameterExtensions() #1

; Function Attrs: optsize
declare i32 @CCTKi_BindingsCartGrid3DParameterExtensions() #1

; Function Attrs: optsize
declare i32 @CCTKi_BindingsIOBasicParameterExtensions() #1

; Function Attrs: optsize
declare i32 @CCTKi_BindingsPUGHReduceParameterExtensions() #1

; Function Attrs: optsize
declare i32 @CCTKi_BindingsIDLinearWavesParameterExtensions() #1

; Function Attrs: optsize
declare i32 @CCTKi_BindingsTimeParameterExtensions() #1

; Function Attrs: optsize
declare i32 @CCTKi_BindingsEinsteinParameterExtensions() #1

attributes #0 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
