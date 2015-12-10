; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/CactusBindings/ImplementationBindings.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTKi_BindingsImplementationsInitialise() #0 {
  %1 = tail call i32 @CCTKi_BindingsThorn_BenchADM() #2
  %2 = tail call i32 @CCTKi_BindingsThorn_Boundary() #2
  %3 = tail call i32 @CCTKi_BindingsThorn_Cactus() #2
  %4 = tail call i32 @CCTKi_BindingsThorn_CartGrid3D() #2
  %5 = tail call i32 @CCTKi_BindingsThorn_Einstein() #2
  %6 = tail call i32 @CCTKi_BindingsThorn_IDLinearWaves() #2
  %7 = tail call i32 @CCTKi_BindingsThorn_IOASCII() #2
  %8 = tail call i32 @CCTKi_BindingsThorn_IOBasic() #2
  %9 = tail call i32 @CCTKi_BindingsThorn_IOUtil() #2
  %10 = tail call i32 @CCTKi_BindingsThorn_PUGH() #2
  %11 = tail call i32 @CCTKi_BindingsThorn_PUGHReduce() #2
  %12 = tail call i32 @CCTKi_BindingsThorn_PUGHSlab() #2
  %13 = tail call i32 @CCTKi_BindingsThorn_Time() #2
  ret i32 0
}

; Function Attrs: optsize
declare i32 @CCTKi_BindingsThorn_BenchADM() #1

; Function Attrs: optsize
declare i32 @CCTKi_BindingsThorn_Boundary() #1

; Function Attrs: optsize
declare i32 @CCTKi_BindingsThorn_Cactus() #1

; Function Attrs: optsize
declare i32 @CCTKi_BindingsThorn_CartGrid3D() #1

; Function Attrs: optsize
declare i32 @CCTKi_BindingsThorn_Einstein() #1

; Function Attrs: optsize
declare i32 @CCTKi_BindingsThorn_IDLinearWaves() #1

; Function Attrs: optsize
declare i32 @CCTKi_BindingsThorn_IOASCII() #1

; Function Attrs: optsize
declare i32 @CCTKi_BindingsThorn_IOBasic() #1

; Function Attrs: optsize
declare i32 @CCTKi_BindingsThorn_IOUtil() #1

; Function Attrs: optsize
declare i32 @CCTKi_BindingsThorn_PUGH() #1

; Function Attrs: optsize
declare i32 @CCTKi_BindingsThorn_PUGHReduce() #1

; Function Attrs: optsize
declare i32 @CCTKi_BindingsThorn_PUGHSlab() #1

; Function Attrs: optsize
declare i32 @CCTKi_BindingsThorn_Time() #1

attributes #0 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
