; ModuleID = '../../SPEC/benchspec/CPU2006/482.sphinx3/src/beam.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.beam_t = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [52 x i8] c"../../SPEC/benchspec/CPU2006/482.sphinx3/src/beam.c\00", align 1

; Function Attrs: nounwind optsize uwtable
define %struct.beam_t* @beam_init(double %svq, double %hmm, double %ptr, double %wd) #0 {
entry:
  %call = tail call i8* @__ckd_calloc__(i64 1, i64 16, i8* getelementptr inbounds ([52 x i8]* @.str, i64 0, i64 0), i32 61) #2
  %0 = bitcast i8* %call to %struct.beam_t*
  %call1 = tail call i32 @logs3(double %svq) #2
  %subvq = bitcast i8* %call to i32*
  store i32 %call1, i32* %subvq, align 4, !tbaa !0
  %call2 = tail call i32 @logs3(double %hmm) #2
  %hmm3 = getelementptr inbounds i8* %call, i64 4
  %1 = bitcast i8* %hmm3 to i32*
  store i32 %call2, i32* %1, align 4, !tbaa !0
  %call4 = tail call i32 @logs3(double %ptr) #2
  %ptrans = getelementptr inbounds i8* %call, i64 8
  %2 = bitcast i8* %ptrans to i32*
  store i32 %call4, i32* %2, align 4, !tbaa !0
  %call5 = tail call i32 @logs3(double %wd) #2
  %word = getelementptr inbounds i8* %call, i64 12
  %3 = bitcast i8* %word to i32*
  store i32 %call5, i32* %3, align 4, !tbaa !0
  ret %struct.beam_t* %0
}

; Function Attrs: optsize
declare i8* @__ckd_calloc__(i64, i64, i8*, i32) #1

; Function Attrs: optsize
declare i32 @logs3(double) #1

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize }

!0 = metadata !{metadata !"int", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
