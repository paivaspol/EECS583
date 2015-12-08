; ModuleID = '../../SPEC/benchspec/CPU2006/482.sphinx3/src/ascr.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ascr_t = type { i32*, i32* }

@.str = private unnamed_addr constant [52 x i8] c"../../SPEC/benchspec/CPU2006/482.sphinx3/src/ascr.c\00", align 1

; Function Attrs: nounwind optsize uwtable
define %struct.ascr_t* @ascr_init(i32 %n_sen, i32 %n_comsen) #0 {
entry:
  %call = tail call i8* @__ckd_calloc__(i64 1, i64 16, i8* getelementptr inbounds ([52 x i8]* @.str, i64 0, i64 0), i32 60) #2
  %0 = bitcast i8* %call to %struct.ascr_t*
  %add = add nsw i32 %n_comsen, %n_sen
  %conv = sext i32 %add to i64
  %call1 = tail call i8* @__ckd_calloc__(i64 %conv, i64 4, i8* getelementptr inbounds ([52 x i8]* @.str, i64 0, i64 0), i32 61) #2
  %1 = bitcast i8* %call1 to i32*
  %sen = bitcast i8* %call to i32**
  store i32* %1, i32** %sen, align 8, !tbaa !0
  %idx.ext = sext i32 %n_sen to i64
  %add.ptr = getelementptr inbounds i32* %1, i64 %idx.ext
  %comsen = getelementptr inbounds i8* %call, i64 8
  %2 = bitcast i8* %comsen to i32**
  store i32* %add.ptr, i32** %2, align 8, !tbaa !0
  ret %struct.ascr_t* %0
}

; Function Attrs: optsize
declare i8* @__ckd_calloc__(i64, i64, i8*, i32) #1

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize }

!0 = metadata !{metadata !"any pointer", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
