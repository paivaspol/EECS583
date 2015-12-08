; ModuleID = '../../SPEC/benchspec/CPU2006/435.gromacs/src/synclib.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind optsize uwtable
define void @syncall() #0 {
entry:
  tail call void @put_serverbyte(i8 zeroext 17) #2
  tail call void @put_serverbyte(i8 zeroext 19) #2
  %call = tail call zeroext i8 (...)* @get_serverbyte() #2
  ret void
}

; Function Attrs: optsize
declare void @put_serverbyte(i8 zeroext) #1

; Function Attrs: optsize
declare zeroext i8 @get_serverbyte(...) #1

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize }
