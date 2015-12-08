; ModuleID = '../../SPEC/benchspec/CPU2006/436.cactusADM/src/CactusBindings/ImplementationBindings.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind optsize uwtable
define i32 @CCTKi_BindingsImplementationsInitialise() #0 {
entry:
  %call = tail call i32 @CCTKi_BindingsThorn_BenchADM() #2
  %call1 = tail call i32 @CCTKi_BindingsThorn_Boundary() #2
  %call2 = tail call i32 @CCTKi_BindingsThorn_Cactus() #2
  %call3 = tail call i32 @CCTKi_BindingsThorn_CartGrid3D() #2
  %call4 = tail call i32 @CCTKi_BindingsThorn_Einstein() #2
  %call5 = tail call i32 @CCTKi_BindingsThorn_IDLinearWaves() #2
  %call6 = tail call i32 @CCTKi_BindingsThorn_IOASCII() #2
  %call7 = tail call i32 @CCTKi_BindingsThorn_IOBasic() #2
  %call8 = tail call i32 @CCTKi_BindingsThorn_IOUtil() #2
  %call9 = tail call i32 @CCTKi_BindingsThorn_PUGH() #2
  %call10 = tail call i32 @CCTKi_BindingsThorn_PUGHReduce() #2
  %call11 = tail call i32 @CCTKi_BindingsThorn_PUGHSlab() #2
  %call12 = tail call i32 @CCTKi_BindingsThorn_Time() #2
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

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize }
