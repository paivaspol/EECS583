; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/wgms.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }

@n = internal unnamed_addr global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%8.3f\00", align 1
@.str2 = private unnamed_addr constant [17 x i8] c"%8.3f%8.3f%8.3f\0A\00", align 1

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__sigbits(i32 %__signo) #0 {
  %1 = icmp sgt i32 %__signo, 32
  br i1 %1, label %5, label %2

; <label>:2                                       ; preds = %0
  %3 = add nsw i32 %__signo, -1
  %4 = shl i32 1, %3
  br label %5

; <label>:5                                       ; preds = %0, %2
  %6 = phi i32 [ %4, %2 ], [ 0, %0 ]
  ret i32 %6
}

; Function Attrs: nounwind optsize ssp uwtable
define void @write_gms(%struct.__sFILE* nocapture %fp, i32 %natoms, [3 x float]* nocapture readonly %x, [3 x float]* readonly %box) #1 {
  store i32 0, i32* @n, align 4, !tbaa !2
  %1 = icmp sgt i32 %natoms, 0
  br i1 %1, label %.preheader.lr.ph, label %._crit_edge.thread

.preheader.lr.ph:                                 ; preds = %0
  %2 = add i32 %natoms, -1
  br label %.preheader

.preheader:                                       ; preds = %14, %.preheader.lr.ph
  %indvars.iv6 = phi i64 [ 0, %.preheader.lr.ph ], [ %indvars.iv.next7, %14 ]
  br label %3

; <label>:3                                       ; preds = %12, %.preheader
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %12 ]
  %4 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv6, i64 %indvars.iv
  %5 = load float* %4, align 4, !tbaa !6
  %6 = fpext float %5 to double
  %7 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([6 x i8]* @.str, i64 0, i64 0), double %6) #4
  %8 = load i32* @n, align 4, !tbaa !2
  %9 = add nsw i32 %8, 1
  store i32 %9, i32* @n, align 4, !tbaa !2
  %10 = icmp eq i32 %9, 10
  br i1 %10, label %11, label %12

; <label>:11                                      ; preds = %3
  %fputc3 = tail call i32 @fputc(i32 10, %struct.__sFILE* %fp)
  store i32 0, i32* @n, align 4, !tbaa !2
  br label %12

; <label>:12                                      ; preds = %3, %11
  %13 = phi i32 [ %9, %3 ], [ 0, %11 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 3
  br i1 %exitcond, label %14, label %3

; <label>:14                                      ; preds = %12
  %indvars.iv.next7 = add nuw nsw i64 %indvars.iv6, 1
  %lftr.wideiv = trunc i64 %indvars.iv6 to i32
  %exitcond8 = icmp eq i32 %lftr.wideiv, %2
  br i1 %exitcond8, label %._crit_edge, label %.preheader

._crit_edge:                                      ; preds = %14
  %15 = icmp eq i32 %13, 0
  br i1 %15, label %._crit_edge.thread, label %16

; <label>:16                                      ; preds = %._crit_edge
  %fputc = tail call i32 @fputc(i32 10, %struct.__sFILE* %fp)
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %0, %._crit_edge, %16
  %17 = icmp eq [3 x float]* %box, null
  br i1 %17, label %29, label %18

; <label>:18                                      ; preds = %._crit_edge.thread
  %19 = getelementptr inbounds [3 x float]* %box, i64 0, i64 0
  %20 = load float* %19, align 4, !tbaa !6
  %21 = fpext float %20 to double
  %22 = getelementptr inbounds [3 x float]* %box, i64 1, i64 1
  %23 = load float* %22, align 4, !tbaa !6
  %24 = fpext float %23 to double
  %25 = getelementptr inbounds [3 x float]* %box, i64 2, i64 2
  %26 = load float* %25, align 4, !tbaa !6
  %27 = fpext float %26 to double
  %28 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([17 x i8]* @.str2, i64 0, i64 0), double %21, double %24, double %27) #4
  br label %29

; <label>:29                                      ; preds = %._crit_edge.thread, %18
  ret void
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct.__sFILE* nocapture, i8* nocapture readonly, ...) #2

; Function Attrs: nounwind optsize ssp uwtable
define void @write_gms_ndx(%struct.__sFILE* nocapture %fp, i32 %isize, i32* nocapture readonly %index, [3 x float]* nocapture readonly %x, [3 x float]* readonly %box) #1 {
  store i32 0, i32* @n, align 4, !tbaa !2
  %1 = icmp sgt i32 %isize, 0
  br i1 %1, label %.preheader.lr.ph, label %._crit_edge.thread

.preheader.lr.ph:                                 ; preds = %0
  %2 = add i32 %isize, -1
  br label %.preheader

.preheader:                                       ; preds = %17, %.preheader.lr.ph
  %indvars.iv6 = phi i64 [ 0, %.preheader.lr.ph ], [ %indvars.iv.next7, %17 ]
  %3 = getelementptr inbounds i32* %index, i64 %indvars.iv6
  br label %4

; <label>:4                                       ; preds = %15, %.preheader
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %15 ]
  %5 = load i32* %3, align 4, !tbaa !2
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds [3 x float]* %x, i64 %6, i64 %indvars.iv
  %8 = load float* %7, align 4, !tbaa !6
  %9 = fpext float %8 to double
  %10 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([6 x i8]* @.str, i64 0, i64 0), double %9) #4
  %11 = load i32* @n, align 4, !tbaa !2
  %12 = add nsw i32 %11, 1
  store i32 %12, i32* @n, align 4, !tbaa !2
  %13 = icmp eq i32 %12, 10
  br i1 %13, label %14, label %15

; <label>:14                                      ; preds = %4
  %fputc3 = tail call i32 @fputc(i32 10, %struct.__sFILE* %fp)
  store i32 0, i32* @n, align 4, !tbaa !2
  br label %15

; <label>:15                                      ; preds = %4, %14
  %16 = phi i32 [ %12, %4 ], [ 0, %14 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 3
  br i1 %exitcond, label %17, label %4

; <label>:17                                      ; preds = %15
  %indvars.iv.next7 = add nuw nsw i64 %indvars.iv6, 1
  %lftr.wideiv = trunc i64 %indvars.iv6 to i32
  %exitcond8 = icmp eq i32 %lftr.wideiv, %2
  br i1 %exitcond8, label %._crit_edge, label %.preheader

._crit_edge:                                      ; preds = %17
  %18 = icmp eq i32 %16, 0
  br i1 %18, label %._crit_edge.thread, label %19

; <label>:19                                      ; preds = %._crit_edge
  %fputc = tail call i32 @fputc(i32 10, %struct.__sFILE* %fp)
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %0, %._crit_edge, %19
  %20 = icmp eq [3 x float]* %box, null
  br i1 %20, label %32, label %21

; <label>:21                                      ; preds = %._crit_edge.thread
  %22 = getelementptr inbounds [3 x float]* %box, i64 0, i64 0
  %23 = load float* %22, align 4, !tbaa !6
  %24 = fpext float %23 to double
  %25 = getelementptr inbounds [3 x float]* %box, i64 1, i64 1
  %26 = load float* %25, align 4, !tbaa !6
  %27 = fpext float %26 to double
  %28 = getelementptr inbounds [3 x float]* %box, i64 2, i64 2
  %29 = load float* %28, align 4, !tbaa !6
  %30 = fpext float %29 to double
  %31 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([17 x i8]* @.str2, i64 0, i64 0), double %24, double %27, double %30) #4
  br label %32

; <label>:32                                      ; preds = %._crit_edge.thread, %21
  ret void
}

; Function Attrs: nounwind
declare i32 @fputc(i32, %struct.__sFILE* nocapture) #3

attributes #0 = { alwaysinline nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { nounwind optsize }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!2 = !{!3, !3, i64 0}
!3 = !{!"int", !4, i64 0}
!4 = !{!"omnipotent char", !5, i64 0}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!7, !7, i64 0}
!7 = !{!"float", !4, i64 0}
