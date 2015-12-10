; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/DatatypeConversion.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.CCTK_COMPLEX16 = type { double, double }
%struct.CCTK_COMPLEX8 = type { float, float }
%struct.CCTK_COMPLEX32 = type { x86_fp80, x86_fp80 }

@.str = private unnamed_addr constant [65 x i8] c"$Id: DatatypeConversion.c,v 1.7 2001/12/03 22:10:04 tradke Exp $\00", align 1

; Function Attrs: nounwind optsize readnone ssp uwtable
define i8* @CCTKi_version_CactusPUGH_PUGHSlab_DatatypeConversion_c() #0 {
  ret i8* getelementptr inbounds ([65 x i8]* @.str, i64 0, i64 0)
}

; Function Attrs: nounwind optsize readnone ssp uwtable
define void (i8*, i8*, i32, i32, i32)* @PUGHSlabi_GetDatatypeConversionFn(i32 %src_type, i32 %dst_type) #0 {
  switch i32 %src_type, label %2 [
    i32 2, label %PUGHSlabi_PrecisionVarType.exit
    i32 6, label %1
  ]

; <label>:1                                       ; preds = %0
  br label %PUGHSlabi_PrecisionVarType.exit

; <label>:2                                       ; preds = %0
  %3 = icmp eq i32 %src_type, 10
  %.type.i = select i1 %3, i32 12, i32 %src_type
  br label %PUGHSlabi_PrecisionVarType.exit

PUGHSlabi_PrecisionVarType.exit:                  ; preds = %0, %1, %2
  %4 = phi i32 [ %.type.i, %2 ], [ 8, %1 ], [ 4, %0 ]
  switch i32 %dst_type, label %PUGHSlabi_PrecisionVarType.exit20 [
    i32 2, label %.thread
    i32 6, label %5
  ]

; <label>:5                                       ; preds = %PUGHSlabi_PrecisionVarType.exit
  br label %.thread

.thread:                                          ; preds = %PUGHSlabi_PrecisionVarType.exit, %5
  %.ph = phi i32 [ 4, %PUGHSlabi_PrecisionVarType.exit ], [ 8, %5 ]
  %6 = icmp eq i32 %4, 5
  br label %12

PUGHSlabi_PrecisionVarType.exit20:                ; preds = %PUGHSlabi_PrecisionVarType.exit
  %7 = icmp eq i32 %dst_type, 10
  %.type.i18 = select i1 %7, i32 12, i32 %dst_type
  %8 = icmp eq i32 %4, 4
  %9 = icmp eq i32 %.type.i18, 3
  %or.cond = and i1 %9, %8
  br i1 %or.cond, label %30, label %10

; <label>:10                                      ; preds = %PUGHSlabi_PrecisionVarType.exit20
  %11 = icmp eq i32 %4, 5
  %or.cond3 = and i1 %9, %11
  br i1 %or.cond3, label %30, label %12

; <label>:12                                      ; preds = %.thread, %10
  %13 = phi i1 [ %6, %.thread ], [ %11, %10 ]
  %14 = phi i32 [ %.ph, %.thread ], [ %.type.i18, %10 ]
  %15 = icmp eq i32 %14, 4
  %or.cond5 = and i1 %13, %15
  br i1 %or.cond5, label %30, label %16

; <label>:16                                      ; preds = %12
  %17 = icmp eq i32 %4, 8
  %18 = icmp eq i32 %14, 7
  %or.cond7 = and i1 %17, %18
  br i1 %or.cond7, label %30, label %19

; <label>:19                                      ; preds = %16
  %20 = icmp eq i32 %4, 9
  %or.cond9 = and i1 %20, %18
  br i1 %or.cond9, label %30, label %21

; <label>:21                                      ; preds = %19
  %22 = icmp eq i32 %14, 8
  %or.cond11 = and i1 %20, %22
  br i1 %or.cond11, label %30, label %23

; <label>:23                                      ; preds = %21
  %24 = icmp eq i32 %4, 12
  %25 = icmp eq i32 %14, 11
  %or.cond13 = and i1 %24, %25
  br i1 %or.cond13, label %30, label %26

; <label>:26                                      ; preds = %23
  %27 = icmp eq i32 %4, 13
  %or.cond15 = and i1 %27, %25
  br i1 %or.cond15, label %30, label %28

; <label>:28                                      ; preds = %26
  %29 = icmp eq i32 %14, 12
  %or.cond17 = and i1 %27, %29
  %Convert_CCTK_COMPLEX32_to_CCTK_COMPLEX16. = select i1 %or.cond17, void (i8*, i8*, i32, i32, i32)* @Convert_CCTK_COMPLEX32_to_CCTK_COMPLEX16, void (i8*, i8*, i32, i32, i32)* null
  br label %30

; <label>:30                                      ; preds = %28, %26, %23, %21, %19, %16, %12, %10, %PUGHSlabi_PrecisionVarType.exit20
  %retval.0 = phi void (i8*, i8*, i32, i32, i32)* [ @Convert_CCTK_INT4_to_CCTK_INT2, %PUGHSlabi_PrecisionVarType.exit20 ], [ @Convert_CCTK_INT8_to_CCTK_INT2, %10 ], [ @Convert_CCTK_INT8_to_CCTK_INT4, %12 ], [ @Convert_CCTK_REAL8_to_CCTK_REAL4, %16 ], [ @Convert_CCTK_REAL16_to_CCTK_REAL4, %19 ], [ @Convert_CCTK_REAL16_to_CCTK_REAL8, %21 ], [ @Convert_CCTK_COMPLEX16_to_CCTK_COMPLEX8, %23 ], [ @Convert_CCTK_COMPLEX32_to_CCTK_COMPLEX8, %26 ], [ %Convert_CCTK_COMPLEX32_to_CCTK_COMPLEX16., %28 ]
  ret void (i8*, i8*, i32, i32, i32)* %retval.0
}

; Function Attrs: nounwind optsize ssp uwtable
define internal void @Convert_CCTK_INT4_to_CCTK_INT2(i8* nocapture readonly %src, i8* nocapture %dst, i32 %nelems, i32 %src_stride, i32 %dst_stride) #1 {
  %1 = icmp eq i32 %nelems, 0
  br i1 %1, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %0
  %2 = bitcast i8* %src to i32*
  %3 = bitcast i8* %dst to i16*
  %4 = sext i32 %src_stride to i64
  %5 = sext i32 %dst_stride to i64
  br label %6

; <label>:6                                       ; preds = %.lr.ph, %6
  %_src.03 = phi i32* [ %2, %.lr.ph ], [ %10, %6 ]
  %_dst.02 = phi i16* [ %3, %.lr.ph ], [ %11, %6 ]
  %.01 = phi i32 [ %nelems, %.lr.ph ], [ %7, %6 ]
  %7 = add nsw i32 %.01, -1
  %8 = load i32* %_src.03, align 4, !tbaa !2
  %9 = trunc i32 %8 to i16
  store i16 %9, i16* %_dst.02, align 2, !tbaa !6
  %10 = getelementptr inbounds i32* %_src.03, i64 %4
  %11 = getelementptr inbounds i16* %_dst.02, i64 %5
  %12 = icmp eq i32 %7, 0
  br i1 %12, label %._crit_edge, label %6

._crit_edge:                                      ; preds = %6, %0
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define internal void @Convert_CCTK_INT8_to_CCTK_INT2(i8* nocapture readonly %src, i8* nocapture %dst, i32 %nelems, i32 %src_stride, i32 %dst_stride) #1 {
  %1 = icmp eq i32 %nelems, 0
  br i1 %1, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %0
  %2 = bitcast i8* %src to i64*
  %3 = bitcast i8* %dst to i16*
  %4 = sext i32 %src_stride to i64
  %5 = sext i32 %dst_stride to i64
  br label %6

; <label>:6                                       ; preds = %.lr.ph, %6
  %_src.03 = phi i64* [ %2, %.lr.ph ], [ %10, %6 ]
  %_dst.02 = phi i16* [ %3, %.lr.ph ], [ %11, %6 ]
  %.01 = phi i32 [ %nelems, %.lr.ph ], [ %7, %6 ]
  %7 = add nsw i32 %.01, -1
  %8 = load i64* %_src.03, align 8, !tbaa !8
  %9 = trunc i64 %8 to i16
  store i16 %9, i16* %_dst.02, align 2, !tbaa !6
  %10 = getelementptr inbounds i64* %_src.03, i64 %4
  %11 = getelementptr inbounds i16* %_dst.02, i64 %5
  %12 = icmp eq i32 %7, 0
  br i1 %12, label %._crit_edge, label %6

._crit_edge:                                      ; preds = %6, %0
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define internal void @Convert_CCTK_INT8_to_CCTK_INT4(i8* nocapture readonly %src, i8* nocapture %dst, i32 %nelems, i32 %src_stride, i32 %dst_stride) #1 {
  %1 = icmp eq i32 %nelems, 0
  br i1 %1, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %0
  %2 = bitcast i8* %src to i64*
  %3 = bitcast i8* %dst to i32*
  %4 = sext i32 %src_stride to i64
  %5 = sext i32 %dst_stride to i64
  br label %6

; <label>:6                                       ; preds = %.lr.ph, %6
  %_src.03 = phi i64* [ %2, %.lr.ph ], [ %10, %6 ]
  %_dst.02 = phi i32* [ %3, %.lr.ph ], [ %11, %6 ]
  %.01 = phi i32 [ %nelems, %.lr.ph ], [ %7, %6 ]
  %7 = add nsw i32 %.01, -1
  %8 = load i64* %_src.03, align 8, !tbaa !8
  %9 = trunc i64 %8 to i32
  store i32 %9, i32* %_dst.02, align 4, !tbaa !2
  %10 = getelementptr inbounds i64* %_src.03, i64 %4
  %11 = getelementptr inbounds i32* %_dst.02, i64 %5
  %12 = icmp eq i32 %7, 0
  br i1 %12, label %._crit_edge, label %6

._crit_edge:                                      ; preds = %6, %0
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define internal void @Convert_CCTK_REAL8_to_CCTK_REAL4(i8* nocapture readonly %src, i8* nocapture %dst, i32 %nelems, i32 %src_stride, i32 %dst_stride) #1 {
  %1 = icmp eq i32 %nelems, 0
  br i1 %1, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %0
  %2 = bitcast i8* %src to double*
  %3 = bitcast i8* %dst to float*
  %4 = sext i32 %src_stride to i64
  %5 = sext i32 %dst_stride to i64
  br label %6

; <label>:6                                       ; preds = %.lr.ph, %6
  %_src.03 = phi double* [ %2, %.lr.ph ], [ %10, %6 ]
  %_dst.02 = phi float* [ %3, %.lr.ph ], [ %11, %6 ]
  %.01 = phi i32 [ %nelems, %.lr.ph ], [ %7, %6 ]
  %7 = add nsw i32 %.01, -1
  %8 = load double* %_src.03, align 8, !tbaa !10
  %9 = fptrunc double %8 to float
  store float %9, float* %_dst.02, align 4, !tbaa !12
  %10 = getelementptr inbounds double* %_src.03, i64 %4
  %11 = getelementptr inbounds float* %_dst.02, i64 %5
  %12 = icmp eq i32 %7, 0
  br i1 %12, label %._crit_edge, label %6

._crit_edge:                                      ; preds = %6, %0
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define internal void @Convert_CCTK_REAL16_to_CCTK_REAL4(i8* nocapture readonly %src, i8* nocapture %dst, i32 %nelems, i32 %src_stride, i32 %dst_stride) #1 {
  %1 = icmp eq i32 %nelems, 0
  br i1 %1, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %0
  %2 = bitcast i8* %src to x86_fp80*
  %3 = bitcast i8* %dst to float*
  %4 = sext i32 %src_stride to i64
  %5 = sext i32 %dst_stride to i64
  br label %6

; <label>:6                                       ; preds = %.lr.ph, %6
  %_src.03 = phi x86_fp80* [ %2, %.lr.ph ], [ %10, %6 ]
  %_dst.02 = phi float* [ %3, %.lr.ph ], [ %11, %6 ]
  %.01 = phi i32 [ %nelems, %.lr.ph ], [ %7, %6 ]
  %7 = add nsw i32 %.01, -1
  %8 = load x86_fp80* %_src.03, align 16, !tbaa !14
  %9 = fptrunc x86_fp80 %8 to float
  store float %9, float* %_dst.02, align 4, !tbaa !12
  %10 = getelementptr inbounds x86_fp80* %_src.03, i64 %4
  %11 = getelementptr inbounds float* %_dst.02, i64 %5
  %12 = icmp eq i32 %7, 0
  br i1 %12, label %._crit_edge, label %6

._crit_edge:                                      ; preds = %6, %0
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define internal void @Convert_CCTK_REAL16_to_CCTK_REAL8(i8* nocapture readonly %src, i8* nocapture %dst, i32 %nelems, i32 %src_stride, i32 %dst_stride) #1 {
  %1 = icmp eq i32 %nelems, 0
  br i1 %1, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %0
  %2 = bitcast i8* %src to x86_fp80*
  %3 = bitcast i8* %dst to double*
  %4 = sext i32 %src_stride to i64
  %5 = sext i32 %dst_stride to i64
  br label %6

; <label>:6                                       ; preds = %.lr.ph, %6
  %_src.03 = phi x86_fp80* [ %2, %.lr.ph ], [ %10, %6 ]
  %_dst.02 = phi double* [ %3, %.lr.ph ], [ %11, %6 ]
  %.01 = phi i32 [ %nelems, %.lr.ph ], [ %7, %6 ]
  %7 = add nsw i32 %.01, -1
  %8 = load x86_fp80* %_src.03, align 16, !tbaa !14
  %9 = fptrunc x86_fp80 %8 to double
  store double %9, double* %_dst.02, align 8, !tbaa !10
  %10 = getelementptr inbounds x86_fp80* %_src.03, i64 %4
  %11 = getelementptr inbounds double* %_dst.02, i64 %5
  %12 = icmp eq i32 %7, 0
  br i1 %12, label %._crit_edge, label %6

._crit_edge:                                      ; preds = %6, %0
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define internal void @Convert_CCTK_COMPLEX16_to_CCTK_COMPLEX8(i8* nocapture readonly %src, i8* nocapture %dst, i32 %nelems, i32 %src_stride, i32 %dst_stride) #1 {
  %1 = icmp eq i32 %nelems, 0
  br i1 %1, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %0
  %2 = bitcast i8* %src to %struct.CCTK_COMPLEX16*
  %3 = bitcast i8* %dst to %struct.CCTK_COMPLEX8*
  %4 = sext i32 %src_stride to i64
  %5 = sext i32 %dst_stride to i64
  br label %6

; <label>:6                                       ; preds = %.lr.ph, %6
  %_src.03 = phi %struct.CCTK_COMPLEX16* [ %2, %.lr.ph ], [ %16, %6 ]
  %_dst.02 = phi %struct.CCTK_COMPLEX8* [ %3, %.lr.ph ], [ %17, %6 ]
  %.01 = phi i32 [ %nelems, %.lr.ph ], [ %7, %6 ]
  %7 = add nsw i32 %.01, -1
  %8 = getelementptr inbounds %struct.CCTK_COMPLEX16* %_src.03, i64 0, i32 0
  %9 = load double* %8, align 8, !tbaa !16
  %10 = fptrunc double %9 to float
  %11 = getelementptr inbounds %struct.CCTK_COMPLEX8* %_dst.02, i64 0, i32 0
  store float %10, float* %11, align 4, !tbaa !18
  %12 = getelementptr inbounds %struct.CCTK_COMPLEX16* %_src.03, i64 0, i32 1
  %13 = load double* %12, align 8, !tbaa !20
  %14 = fptrunc double %13 to float
  %15 = getelementptr inbounds %struct.CCTK_COMPLEX8* %_dst.02, i64 0, i32 1
  store float %14, float* %15, align 4, !tbaa !21
  %16 = getelementptr inbounds %struct.CCTK_COMPLEX16* %_src.03, i64 %4
  %17 = getelementptr inbounds %struct.CCTK_COMPLEX8* %_dst.02, i64 %5
  %18 = icmp eq i32 %7, 0
  br i1 %18, label %._crit_edge, label %6

._crit_edge:                                      ; preds = %6, %0
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define internal void @Convert_CCTK_COMPLEX32_to_CCTK_COMPLEX8(i8* nocapture readonly %src, i8* nocapture %dst, i32 %nelems, i32 %src_stride, i32 %dst_stride) #1 {
  %1 = icmp eq i32 %nelems, 0
  br i1 %1, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %0
  %2 = bitcast i8* %src to %struct.CCTK_COMPLEX32*
  %3 = bitcast i8* %dst to %struct.CCTK_COMPLEX8*
  %4 = sext i32 %src_stride to i64
  %5 = sext i32 %dst_stride to i64
  br label %6

; <label>:6                                       ; preds = %.lr.ph, %6
  %_src.03 = phi %struct.CCTK_COMPLEX32* [ %2, %.lr.ph ], [ %16, %6 ]
  %_dst.02 = phi %struct.CCTK_COMPLEX8* [ %3, %.lr.ph ], [ %17, %6 ]
  %.01 = phi i32 [ %nelems, %.lr.ph ], [ %7, %6 ]
  %7 = add nsw i32 %.01, -1
  %8 = getelementptr inbounds %struct.CCTK_COMPLEX32* %_src.03, i64 0, i32 0
  %9 = load x86_fp80* %8, align 16, !tbaa !22
  %10 = fptrunc x86_fp80 %9 to float
  %11 = getelementptr inbounds %struct.CCTK_COMPLEX8* %_dst.02, i64 0, i32 0
  store float %10, float* %11, align 4, !tbaa !18
  %12 = getelementptr inbounds %struct.CCTK_COMPLEX32* %_src.03, i64 0, i32 1
  %13 = load x86_fp80* %12, align 16, !tbaa !24
  %14 = fptrunc x86_fp80 %13 to float
  %15 = getelementptr inbounds %struct.CCTK_COMPLEX8* %_dst.02, i64 0, i32 1
  store float %14, float* %15, align 4, !tbaa !21
  %16 = getelementptr inbounds %struct.CCTK_COMPLEX32* %_src.03, i64 %4
  %17 = getelementptr inbounds %struct.CCTK_COMPLEX8* %_dst.02, i64 %5
  %18 = icmp eq i32 %7, 0
  br i1 %18, label %._crit_edge, label %6

._crit_edge:                                      ; preds = %6, %0
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define internal void @Convert_CCTK_COMPLEX32_to_CCTK_COMPLEX16(i8* nocapture readonly %src, i8* nocapture %dst, i32 %nelems, i32 %src_stride, i32 %dst_stride) #1 {
  %1 = icmp eq i32 %nelems, 0
  br i1 %1, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %0
  %2 = bitcast i8* %src to %struct.CCTK_COMPLEX32*
  %3 = bitcast i8* %dst to %struct.CCTK_COMPLEX16*
  %4 = sext i32 %src_stride to i64
  %5 = sext i32 %dst_stride to i64
  br label %6

; <label>:6                                       ; preds = %.lr.ph, %6
  %_src.03 = phi %struct.CCTK_COMPLEX32* [ %2, %.lr.ph ], [ %16, %6 ]
  %_dst.02 = phi %struct.CCTK_COMPLEX16* [ %3, %.lr.ph ], [ %17, %6 ]
  %.01 = phi i32 [ %nelems, %.lr.ph ], [ %7, %6 ]
  %7 = add nsw i32 %.01, -1
  %8 = getelementptr inbounds %struct.CCTK_COMPLEX32* %_src.03, i64 0, i32 0
  %9 = load x86_fp80* %8, align 16, !tbaa !22
  %10 = fptrunc x86_fp80 %9 to double
  %11 = getelementptr inbounds %struct.CCTK_COMPLEX16* %_dst.02, i64 0, i32 0
  store double %10, double* %11, align 8, !tbaa !16
  %12 = getelementptr inbounds %struct.CCTK_COMPLEX32* %_src.03, i64 0, i32 1
  %13 = load x86_fp80* %12, align 16, !tbaa !24
  %14 = fptrunc x86_fp80 %13 to double
  %15 = getelementptr inbounds %struct.CCTK_COMPLEX16* %_dst.02, i64 0, i32 1
  store double %14, double* %15, align 8, !tbaa !20
  %16 = getelementptr inbounds %struct.CCTK_COMPLEX32* %_src.03, i64 %4
  %17 = getelementptr inbounds %struct.CCTK_COMPLEX16* %_dst.02, i64 %5
  %18 = icmp eq i32 %7, 0
  br i1 %18, label %._crit_edge, label %6

._crit_edge:                                      ; preds = %6, %0
  ret void
}

attributes #0 = { nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!2 = !{!3, !3, i64 0}
!3 = !{!"int", !4, i64 0}
!4 = !{!"omnipotent char", !5, i64 0}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!7, !7, i64 0}
!7 = !{!"short", !4, i64 0}
!8 = !{!9, !9, i64 0}
!9 = !{!"long", !4, i64 0}
!10 = !{!11, !11, i64 0}
!11 = !{!"double", !4, i64 0}
!12 = !{!13, !13, i64 0}
!13 = !{!"float", !4, i64 0}
!14 = !{!15, !15, i64 0}
!15 = !{!"long double", !4, i64 0}
!16 = !{!17, !11, i64 0}
!17 = !{!"", !11, i64 0, !11, i64 8}
!18 = !{!19, !13, i64 0}
!19 = !{!"", !13, i64 0, !13, i64 4}
!20 = !{!17, !11, i64 8}
!21 = !{!19, !13, i64 4}
!22 = !{!23, !15, i64 0}
!23 = !{!"", !15, i64 0, !15, i64 16}
!24 = !{!23, !15, i64 16}
