; ModuleID = '../../SPEC/benchspec/CPU2006/458.sjeng/src/rcfile.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@TTSize = common global i32 0, align 4
@ECacheSize = common global i32 0, align 4
@PBSize = common global i32 0, align 4
@cfg_devscale = common global i32 0, align 4
@cfg_scalefac = common global float 0.000000e+00, align 4
@cfg_razordrop = common global i32 0, align 4
@cfg_cutdrop = common global i32 0, align 4
@cfg_futprune = common global i32 0, align 4
@cfg_smarteval = common global i32 0, align 4
@cfg_attackeval = common global i32 0, align 4
@cfg_onerep = common global i32 0, align 4
@cfg_recap = common global i32 0, align 4
@havercfile = common global i32 0, align 4
@setcode = external global [30 x i8]
@.str = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@rcfile = common global %struct._IO_FILE* null, align 8
@line = common global [256 x i8] zeroinitializer, align 16
@cfg_booklearn = common global i32 0, align 4
@cfg_ksafety = common global [15 x [9 x i32]] zeroinitializer, align 16
@cfg_tropism = common global [5 x [7 x i32]] zeroinitializer, align 16

; Function Attrs: nounwind optsize uwtable
define void @read_rcfile() #0 {
entry:
  store i32 3000000, i32* @TTSize, align 4, !tbaa !0
  store i32 1000000, i32* @ECacheSize, align 4, !tbaa !0
  store i32 200000, i32* @PBSize, align 4, !tbaa !0
  store i32 1, i32* @cfg_devscale, align 4, !tbaa !0
  store float 1.000000e+00, float* @cfg_scalefac, align 4, !tbaa !3
  store i32 1, i32* @cfg_razordrop, align 4, !tbaa !0
  store i32 0, i32* @cfg_cutdrop, align 4, !tbaa !0
  store i32 1, i32* @cfg_futprune, align 4, !tbaa !0
  store i32 1, i32* @cfg_smarteval, align 4, !tbaa !0
  store i32 0, i32* @cfg_attackeval, align 4, !tbaa !0
  store i32 1, i32* @cfg_onerep, align 4, !tbaa !0
  store i32 0, i32* @cfg_recap, align 4, !tbaa !0
  store i32 0, i32* @havercfile, align 4, !tbaa !0
  %call = tail call i32 (i8*, i8*, ...)* @sprintf(i8* getelementptr inbounds ([30 x i8]* @setcode, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8]* @.str, i64 0, i64 0), i32 110) #3
  tail call void @initialize_eval() #3
  tail call void @alloc_hash() #3
  tail call void @alloc_ecache() #3
  ret void
}

; Function Attrs: nounwind optsize
declare i32 @sprintf(i8* nocapture, i8* nocapture, ...) #1

; Function Attrs: optsize
declare void @initialize_eval() #2

; Function Attrs: optsize
declare void @alloc_hash() #2

; Function Attrs: optsize
declare void @alloc_ecache() #2

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize }

!0 = metadata !{metadata !"int", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"float", metadata !1}
