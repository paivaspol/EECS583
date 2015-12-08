; ModuleID = '../../SPEC/benchspec/CPU2006/435.gromacs/src/xdrd.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.XDR = type { i32, %struct.xdr_ops*, i8*, i8*, i8*, i32 }
%struct.xdr_ops = type { i32 (%struct.XDR*, i64*)*, i32 (%struct.XDR*, i64*)*, i32 (%struct.XDR*, i8*, i32)*, i32 (%struct.XDR*, i8*, i32)*, i32 (%struct.XDR*)*, i32 (%struct.XDR*, i32)*, i32* (%struct.XDR*, i32)*, void (%struct.XDR*)*, i32 (%struct.XDR*, i32*)*, i32 (%struct.XDR*, i32*)* }

; Function Attrs: nounwind optsize uwtable
define i32 @xdr_real(%struct.XDR* %xdrs, float* %r) #0 {
entry:
  %call = tail call i32 @xdr_float(%struct.XDR* %xdrs, float* %r) #3
  ret i32 %call
}

; Function Attrs: nounwind optsize
declare i32 @xdr_float(%struct.XDR*, float*) #1

; Function Attrs: nounwind optsize uwtable
define i32 @xdr3drcoord(%struct.XDR* %xdrs, float* %fp, i32* %size, float* %precision) #0 {
entry:
  %call = tail call i32 @xdr3dfcoord(%struct.XDR* %xdrs, float* %fp, i32* %size, float* %precision) #3
  ret i32 %call
}

; Function Attrs: optsize
declare i32 @xdr3dfcoord(%struct.XDR*, float*, i32*, float*) #2

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize }
