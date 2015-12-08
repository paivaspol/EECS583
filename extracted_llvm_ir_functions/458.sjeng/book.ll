; ModuleID = '../../SPEC/benchspec/CPU2006/458.sjeng/src/book.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.move_s = type { i32, i32, i32, i32, i32, i32 }

@dummy = external global %struct.move_s

; Function Attrs: nounwind optsize readnone uwtable
define i32 @init_book() #0 {
entry:
  ret i32 1
}

; Function Attrs: nounwind optsize uwtable
define void @choose_book_move(%struct.move_s* noalias nocapture sret %agg.result) #1 {
entry:
  %0 = bitcast %struct.move_s* %agg.result to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* bitcast (%struct.move_s* @dummy to i8*), i64 24, i32 4, i1 false), !tbaa.struct !0
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture, i64, i32, i1) #2

attributes #0 = { nounwind optsize readnone uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!0 = metadata !{i64 0, i64 4, metadata !1, i64 4, i64 4, metadata !1, i64 8, i64 4, metadata !1, i64 12, i64 4, metadata !1, i64 16, i64 4, metadata !1, i64 20, i64 4, metadata !1}
!1 = metadata !{metadata !"int", metadata !2}
!2 = metadata !{metadata !"omnipotent char", metadata !3}
!3 = metadata !{metadata !"Simple C/C++ TBAA"}
