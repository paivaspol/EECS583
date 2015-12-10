; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/Einstein/ConfPhys.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

@.str = private unnamed_addr constant [79 x i8] c"../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/Einstein/ConfPhys.c\00", align 1
@.str1 = private unnamed_addr constant [9 x i8] c"Einstein\00", align 1
@.str2 = private unnamed_addr constant [41 x i8] c"Converting metric: conformal -> physical\00", align 1
@.str3 = private unnamed_addr constant [41 x i8] c"Converting metric: physical -> conformal\00", align 1
@.str4 = private unnamed_addr constant [94 x i8] c"$Header: /cactus/CactusEinstein/Einstein/src/ConfPhys.c,v 1.7 2002/01/04 10:00:01 allen Exp $\00", align 1

; Function Attrs: nounwind optsize readnone ssp uwtable
define i8* @CCTKi_version_CactusEinstein_Einstein_ConfPhys_c() #0 {
  ret i8* getelementptr inbounds ([94 x i8]* @.str4, i64 0, i64 0)
}

; Function Attrs: nounwind optsize ssp uwtable
define void @ConfToPhys(i32 %nx, i32 %ny, i32 %nz, double* nocapture readonly %psi, double* nocapture %gxx, double* nocapture %gxy, double* nocapture %gxz, double* nocapture %gyy, double* nocapture %gyz, double* nocapture %gzz) #1 {
  %1 = tail call i32 @CCTK_Warn(i32 4, i32 66, i8* getelementptr inbounds ([79 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([41 x i8]* @.str2, i64 0, i64 0)) #3
  %2 = mul nsw i32 %ny, %nx
  %3 = mul nsw i32 %2, %nz
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %0
  %5 = mul i32 %nz, %ny
  %6 = mul i32 %5, %nx
  %7 = sext i32 %6 to i64
  br label %8

; <label>:8                                       ; preds = %.lr.ph, %8
  %indvars.iv = phi i64 [ %7, %.lr.ph ], [ %indvars.iv.next, %8 ]
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %9 = getelementptr inbounds double* %psi, i64 %indvars.iv.next
  %10 = load double* %9, align 8, !tbaa !2
  %11 = fmul double %10, %10
  %12 = fmul double %11, %11
  %13 = getelementptr inbounds double* %gxx, i64 %indvars.iv.next
  %14 = load double* %13, align 8, !tbaa !2
  %15 = fmul double %14, %12
  store double %15, double* %13, align 8, !tbaa !2
  %16 = getelementptr inbounds double* %gxy, i64 %indvars.iv.next
  %17 = load double* %16, align 8, !tbaa !2
  %18 = fmul double %17, %12
  store double %18, double* %16, align 8, !tbaa !2
  %19 = getelementptr inbounds double* %gxz, i64 %indvars.iv.next
  %20 = load double* %19, align 8, !tbaa !2
  %21 = fmul double %12, %20
  store double %21, double* %19, align 8, !tbaa !2
  %22 = getelementptr inbounds double* %gyy, i64 %indvars.iv.next
  %23 = load double* %22, align 8, !tbaa !2
  %24 = fmul double %12, %23
  store double %24, double* %22, align 8, !tbaa !2
  %25 = getelementptr inbounds double* %gyz, i64 %indvars.iv.next
  %26 = load double* %25, align 8, !tbaa !2
  %27 = fmul double %12, %26
  store double %27, double* %25, align 8, !tbaa !2
  %28 = getelementptr inbounds double* %gzz, i64 %indvars.iv.next
  %29 = load double* %28, align 8, !tbaa !2
  %30 = fmul double %12, %29
  store double %30, double* %28, align 8, !tbaa !2
  %31 = icmp sgt i64 %indvars.iv, 1
  br i1 %31, label %8, label %._crit_edge

._crit_edge:                                      ; preds = %8, %0
  ret void
}

; Function Attrs: optsize
declare i32 @CCTK_Warn(i32, i32, i8*, i8*, i8*) #2

; Function Attrs: nounwind optsize ssp uwtable
define void @conftophys_(i32* nocapture readonly %nx, i32* nocapture readonly %ny, i32* nocapture readonly %nz, double* nocapture readonly %psi, double* nocapture %gxx, double* nocapture %gxy, double* nocapture %gxz, double* nocapture %gyy, double* nocapture %gyz, double* nocapture %gzz) #1 {
  %1 = load i32* %nx, align 4, !tbaa !6
  %2 = load i32* %ny, align 4, !tbaa !6
  %3 = load i32* %nz, align 4, !tbaa !6
  tail call void @ConfToPhys(i32 %1, i32 %2, i32 %3, double* %psi, double* %gxx, double* %gxy, double* %gxz, double* %gyy, double* %gyz, double* %gzz) #4
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define void @PhysToConf(i32 %nx, i32 %ny, i32 %nz, double* nocapture readonly %psi, double* nocapture %gxx, double* nocapture %gxy, double* nocapture %gxz, double* nocapture %gyy, double* nocapture %gyz, double* nocapture %gzz) #1 {
  %1 = tail call i32 @CCTK_Warn(i32 4, i32 115, i8* getelementptr inbounds ([79 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([41 x i8]* @.str3, i64 0, i64 0)) #3
  %2 = mul nsw i32 %ny, %nx
  %3 = mul nsw i32 %2, %nz
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %0
  %5 = mul i32 %nz, %ny
  %6 = mul i32 %5, %nx
  %7 = sext i32 %6 to i64
  br label %8

; <label>:8                                       ; preds = %.lr.ph, %8
  %indvars.iv = phi i64 [ %7, %.lr.ph ], [ %indvars.iv.next, %8 ]
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %9 = getelementptr inbounds double* %psi, i64 %indvars.iv.next
  %10 = load double* %9, align 8, !tbaa !2
  %11 = fmul double %10, %10
  %12 = fmul double %11, %11
  %13 = fdiv double 1.000000e+00, %12
  %14 = getelementptr inbounds double* %gxx, i64 %indvars.iv.next
  %15 = load double* %14, align 8, !tbaa !2
  %16 = fmul double %13, %15
  store double %16, double* %14, align 8, !tbaa !2
  %17 = getelementptr inbounds double* %gxy, i64 %indvars.iv.next
  %18 = load double* %17, align 8, !tbaa !2
  %19 = fmul double %13, %18
  store double %19, double* %17, align 8, !tbaa !2
  %20 = getelementptr inbounds double* %gxz, i64 %indvars.iv.next
  %21 = load double* %20, align 8, !tbaa !2
  %22 = fmul double %13, %21
  store double %22, double* %20, align 8, !tbaa !2
  %23 = getelementptr inbounds double* %gyy, i64 %indvars.iv.next
  %24 = load double* %23, align 8, !tbaa !2
  %25 = fmul double %13, %24
  store double %25, double* %23, align 8, !tbaa !2
  %26 = getelementptr inbounds double* %gyz, i64 %indvars.iv.next
  %27 = load double* %26, align 8, !tbaa !2
  %28 = fmul double %13, %27
  store double %28, double* %26, align 8, !tbaa !2
  %29 = getelementptr inbounds double* %gzz, i64 %indvars.iv.next
  %30 = load double* %29, align 8, !tbaa !2
  %31 = fmul double %13, %30
  store double %31, double* %29, align 8, !tbaa !2
  %32 = icmp sgt i64 %indvars.iv, 1
  br i1 %32, label %8, label %._crit_edge

._crit_edge:                                      ; preds = %8, %0
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define void @phystoconf_(i32* nocapture readonly %nx, i32* nocapture readonly %ny, i32* nocapture readonly %nz, double* nocapture readonly %psi, double* nocapture %gxx, double* nocapture %gxy, double* nocapture %gxz, double* nocapture %gyy, double* nocapture %gyz, double* nocapture %gzz) #1 {
  %1 = load i32* %nx, align 4, !tbaa !6
  %2 = load i32* %ny, align 4, !tbaa !6
  %3 = load i32* %nz, align 4, !tbaa !6
  tail call void @PhysToConf(i32 %1, i32 %2, i32 %3, double* %psi, double* %gxx, double* %gxy, double* %gxz, double* %gyy, double* %gyz, double* %gzz) #4
  ret void
}

attributes #0 = { nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize }
attributes #4 = { optsize }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!2 = !{!3, !3, i64 0}
!3 = !{!"double", !4, i64 0}
!4 = !{!"omnipotent char", !5, i64 0}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!7, !7, i64 0}
!7 = !{!"int", !4, i64 0}
