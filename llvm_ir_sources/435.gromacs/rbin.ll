; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/rbin.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct.t_bin = type { i32, i32, double* }
%struct.t_commrec = type { i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [2 x i8] c"b\00", align 1
@.str1 = private unnamed_addr constant [64 x i8] c"../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/rbin.c\00", align 1
@.str2 = private unnamed_addr constant [8 x i8] c"b->rbuf\00", align 1

; Function Attrs: alwaysinline nounwind optsize ssp uwtable
define i32 @__sputc(i32 %_c, %struct.__sFILE* %_p) #0 {
  %1 = getelementptr inbounds %struct.__sFILE* %_p, i64 0, i32 2
  %2 = load i32* %1, align 4, !tbaa !2
  %3 = add nsw i32 %2, -1
  store i32 %3, i32* %1, align 4, !tbaa !2
  %4 = icmp sgt i32 %2, 0
  br i1 %4, label %._crit_edge, label %5

._crit_edge:                                      ; preds = %0
  %.pre = and i32 %_c, 255
  br label %10

; <label>:5                                       ; preds = %0
  %6 = getelementptr inbounds %struct.__sFILE* %_p, i64 0, i32 6
  %7 = load i32* %6, align 4, !tbaa !11
  %8 = icmp sle i32 %2, %7
  %sext.mask = and i32 %_c, 255
  %9 = icmp eq i32 %sext.mask, 10
  %or.cond = or i1 %9, %8
  br i1 %or.cond, label %15, label %10

; <label>:10                                      ; preds = %._crit_edge, %5
  %.pre-phi = phi i32 [ %.pre, %._crit_edge ], [ %sext.mask, %5 ]
  %11 = trunc i32 %_c to i8
  %12 = getelementptr inbounds %struct.__sFILE* %_p, i64 0, i32 0
  %13 = load i8** %12, align 8, !tbaa !12
  %14 = getelementptr inbounds i8* %13, i64 1
  store i8* %14, i8** %12, align 8, !tbaa !12
  store i8 %11, i8* %13, align 1, !tbaa !13
  br label %17

; <label>:15                                      ; preds = %5
  %16 = tail call i32 @__swbuf(i32 %_c, %struct.__sFILE* %_p) #5
  br label %17

; <label>:17                                      ; preds = %15, %10
  %.0 = phi i32 [ %.pre-phi, %10 ], [ %16, %15 ]
  ret i32 %.0
}

; Function Attrs: optsize
declare i32 @__swbuf(i32, %struct.__sFILE*) #1

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__sigbits(i32 %__signo) #2 {
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
define %struct.t_bin* @mk_bin() #3 {
  %1 = tail call i8* @save_calloc(i8* getelementptr inbounds ([2 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([64 x i8]* @.str1, i64 0, i64 0), i32 43, i32 1, i32 16) #5
  %2 = bitcast i8* %1 to %struct.t_bin*
  ret %struct.t_bin* %2
}

; Function Attrs: optsize
declare i8* @save_calloc(i8*, i8*, i32, i32, i32) #1

; Function Attrs: nounwind optsize ssp uwtable
define void @reset_bin(%struct.t_bin* nocapture %b) #3 {
  %1 = getelementptr inbounds %struct.t_bin* %b, i64 0, i32 0
  store i32 0, i32* %1, align 4, !tbaa !14
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @add_binr(%struct.__sFILE* nocapture readnone %log, %struct.t_bin* nocapture %b, i32 %nr, float* nocapture readonly %r) #3 {
  %1 = getelementptr inbounds %struct.t_bin* %b, i64 0, i32 0
  %2 = load i32* %1, align 4, !tbaa !14
  %3 = add nsw i32 %2, %nr
  %4 = getelementptr inbounds %struct.t_bin* %b, i64 0, i32 1
  %5 = load i32* %4, align 4, !tbaa !16
  %6 = icmp sgt i32 %3, %5
  br i1 %6, label %7, label %._crit_edge2

._crit_edge2:                                     ; preds = %0
  %.phi.trans.insert = getelementptr inbounds %struct.t_bin* %b, i64 0, i32 2
  %.pre = load double** %.phi.trans.insert, align 8, !tbaa !17
  br label %20

; <label>:7                                       ; preds = %0
  %8 = srem i32 %3, 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %13, label %10

; <label>:10                                      ; preds = %7
  %11 = add i32 %3, 4
  %12 = sub i32 %11, %8
  br label %13

; <label>:13                                      ; preds = %7, %10
  %storemerge = phi i32 [ %12, %10 ], [ %3, %7 ]
  store i32 %storemerge, i32* %4, align 4, !tbaa !16
  %14 = getelementptr inbounds %struct.t_bin* %b, i64 0, i32 2
  %15 = bitcast double** %14 to i8**
  %16 = load i8** %15, align 8, !tbaa !17
  %17 = shl i32 %storemerge, 3
  %18 = tail call i8* @save_realloc(i8* getelementptr inbounds ([8 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([64 x i8]* @.str1, i64 0, i64 0), i32 68, i8* %16, i32 %17) #5
  store i8* %18, i8** %15, align 8, !tbaa !17
  %19 = bitcast i8* %18 to double*
  %.pre3 = load i32* %1, align 4, !tbaa !14
  br label %20

; <label>:20                                      ; preds = %._crit_edge2, %13
  %21 = phi i32 [ %2, %._crit_edge2 ], [ %.pre3, %13 ]
  %22 = phi double* [ %.pre, %._crit_edge2 ], [ %19, %13 ]
  %23 = sext i32 %21 to i64
  %24 = icmp sgt i32 %nr, 0
  br i1 %24, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %20
  %25 = add i32 %nr, -1
  br label %26

; <label>:26                                      ; preds = %26, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %26 ]
  %27 = getelementptr inbounds float* %r, i64 %indvars.iv
  %28 = load float* %27, align 4, !tbaa !18
  %29 = fpext float %28 to double
  %.sum = add nsw i64 %indvars.iv, %23
  %30 = getelementptr inbounds double* %22, i64 %.sum
  store double %29, double* %30, align 8, !tbaa !20
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %25
  br i1 %exitcond, label %._crit_edge, label %26

._crit_edge:                                      ; preds = %26, %20
  %31 = add nsw i32 %21, %nr
  store i32 %31, i32* %1, align 4, !tbaa !14
  ret i32 %21
}

; Function Attrs: optsize
declare i8* @save_realloc(i8*, i8*, i32, i8*, i32) #1

; Function Attrs: nounwind optsize ssp uwtable
define i32 @add_bind(%struct.__sFILE* nocapture readnone %log, %struct.t_bin* nocapture %b, i32 %nr, double* nocapture readonly %r) #3 {
  %1 = getelementptr inbounds %struct.t_bin* %b, i64 0, i32 0
  %2 = load i32* %1, align 4, !tbaa !14
  %3 = add nsw i32 %2, %nr
  %4 = getelementptr inbounds %struct.t_bin* %b, i64 0, i32 1
  %5 = load i32* %4, align 4, !tbaa !16
  %6 = icmp sgt i32 %3, %5
  br i1 %6, label %7, label %._crit_edge3

._crit_edge3:                                     ; preds = %0
  %.phi.trans.insert = getelementptr inbounds %struct.t_bin* %b, i64 0, i32 2
  %.pre = load double** %.phi.trans.insert, align 8, !tbaa !17
  br label %20

; <label>:7                                       ; preds = %0
  %8 = srem i32 %3, 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %13, label %10

; <label>:10                                      ; preds = %7
  %11 = add i32 %3, 4
  %12 = sub i32 %11, %8
  br label %13

; <label>:13                                      ; preds = %7, %10
  %storemerge = phi i32 [ %12, %10 ], [ %3, %7 ]
  store i32 %storemerge, i32* %4, align 4, !tbaa !16
  %14 = getelementptr inbounds %struct.t_bin* %b, i64 0, i32 2
  %15 = bitcast double** %14 to i8**
  %16 = load i8** %15, align 8, !tbaa !17
  %17 = shl i32 %storemerge, 3
  %18 = tail call i8* @save_realloc(i8* getelementptr inbounds ([8 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([64 x i8]* @.str1, i64 0, i64 0), i32 100, i8* %16, i32 %17) #5
  store i8* %18, i8** %15, align 8, !tbaa !17
  %19 = bitcast i8* %18 to double*
  %.pre4 = load i32* %1, align 4, !tbaa !14
  br label %20

; <label>:20                                      ; preds = %._crit_edge3, %13
  %21 = phi i32 [ %2, %._crit_edge3 ], [ %.pre4, %13 ]
  %22 = phi double* [ %.pre, %._crit_edge3 ], [ %19, %13 ]
  %23 = sext i32 %21 to i64
  %24 = icmp sgt i32 %nr, 0
  br i1 %24, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %20
  %25 = add i32 %nr, -1
  br label %26

; <label>:26                                      ; preds = %26, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %26 ]
  %27 = getelementptr inbounds double* %r, i64 %indvars.iv
  %28 = bitcast double* %27 to i64*
  %29 = load i64* %28, align 8, !tbaa !20
  %.sum = add nsw i64 %indvars.iv, %23
  %30 = getelementptr inbounds double* %22, i64 %.sum
  %31 = bitcast double* %30 to i64*
  store i64 %29, i64* %31, align 8, !tbaa !20
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %25
  br i1 %exitcond, label %._crit_edge, label %26

._crit_edge:                                      ; preds = %26, %20
  %32 = add nsw i32 %21, %nr
  store i32 %32, i32* %1, align 4, !tbaa !14
  ret i32 %21
}

; Function Attrs: nounwind optsize ssp uwtable
define void @sum_bin(%struct.t_bin* nocapture readonly %b, %struct.t_commrec* %cr) #3 {
  %1 = getelementptr inbounds %struct.t_bin* %b, i64 0, i32 0
  %2 = load i32* %1, align 4, !tbaa !14
  %3 = getelementptr inbounds %struct.t_bin* %b, i64 0, i32 1
  %4 = load i32* %3, align 4, !tbaa !16
  %5 = icmp slt i32 %2, %4
  %6 = getelementptr inbounds %struct.t_bin* %b, i64 0, i32 2
  br i1 %5, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %0
  %7 = load double** %6, align 8, !tbaa !17
  %8 = sext i32 %2 to i64
  %scevgep = getelementptr double* %7, i64 %8
  %scevgep2 = bitcast double* %scevgep to i8*
  %9 = add i32 %2, 1
  %10 = icmp sgt i32 %4, %9
  %smax = select i1 %10, i32 %4, i32 %9
  %11 = add i32 %smax, -1
  %12 = sub i32 %11, %2
  %13 = zext i32 %12 to i64
  %14 = shl nuw nsw i64 %13, 3
  %15 = add nuw nsw i64 %14, 8
  call void @llvm.memset.p0i8.i64(i8* %scevgep2, i8 0, i64 %15, i32 8, i1 false)
  br label %._crit_edge

._crit_edge:                                      ; preds = %0, %.lr.ph
  %16 = load double** %6, align 8, !tbaa !17
  tail call void @gmx_sumd(i32 %4, double* %16, %struct.t_commrec* %cr) #5
  ret void
}

; Function Attrs: optsize
declare void @gmx_sumd(i32, double*, %struct.t_commrec*) #1

; Function Attrs: nounwind optsize ssp uwtable
define void @extract_binr(%struct.t_bin* nocapture readonly %b, i32 %index, i32 %nr, float* nocapture %r) #3 {
  %1 = getelementptr inbounds %struct.t_bin* %b, i64 0, i32 2
  %2 = load double** %1, align 8, !tbaa !17
  %3 = sext i32 %index to i64
  %4 = icmp sgt i32 %nr, 0
  br i1 %4, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %0
  %5 = add i32 %nr, -1
  br label %6

; <label>:6                                       ; preds = %6, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %6 ]
  %.sum = add nsw i64 %indvars.iv, %3
  %7 = getelementptr inbounds double* %2, i64 %.sum
  %8 = load double* %7, align 8, !tbaa !20
  %9 = fptrunc double %8 to float
  %10 = getelementptr inbounds float* %r, i64 %indvars.iv
  store float %9, float* %10, align 4, !tbaa !18
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %5
  br i1 %exitcond, label %._crit_edge, label %6

._crit_edge:                                      ; preds = %6, %0
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define void @extract_bind(%struct.t_bin* nocapture readonly %b, i32 %index, i32 %nr, double* nocapture %r) #3 {
  %1 = getelementptr inbounds %struct.t_bin* %b, i64 0, i32 2
  %2 = load double** %1, align 8, !tbaa !17
  %3 = sext i32 %index to i64
  %4 = icmp sgt i32 %nr, 0
  br i1 %4, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %0
  %5 = add i32 %nr, -1
  br label %6

; <label>:6                                       ; preds = %6, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %6 ]
  %.sum = add nsw i64 %indvars.iv, %3
  %7 = getelementptr inbounds double* %2, i64 %.sum
  %8 = bitcast double* %7 to i64*
  %9 = load i64* %8, align 8, !tbaa !20
  %10 = getelementptr inbounds double* %r, i64 %indvars.iv
  %11 = bitcast double* %10 to i64*
  store i64 %9, i64* %11, align 8, !tbaa !20
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %5
  br i1 %exitcond, label %._crit_edge, label %6

._crit_edge:                                      ; preds = %6, %0
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #4

attributes #0 = { alwaysinline nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { alwaysinline nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind optsize }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!2 = !{!3, !7, i64 12}
!3 = !{!"__sFILE", !4, i64 0, !7, i64 8, !7, i64 12, !8, i64 16, !8, i64 18, !9, i64 24, !7, i64 40, !4, i64 48, !4, i64 56, !4, i64 64, !4, i64 72, !4, i64 80, !9, i64 88, !4, i64 104, !7, i64 112, !5, i64 116, !5, i64 119, !9, i64 120, !7, i64 136, !10, i64 144}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!"int", !5, i64 0}
!8 = !{!"short", !5, i64 0}
!9 = !{!"__sbuf", !4, i64 0, !7, i64 8}
!10 = !{!"long long", !5, i64 0}
!11 = !{!3, !7, i64 40}
!12 = !{!3, !4, i64 0}
!13 = !{!5, !5, i64 0}
!14 = !{!15, !7, i64 0}
!15 = !{!"", !7, i64 0, !7, i64 4, !4, i64 8}
!16 = !{!15, !7, i64 4}
!17 = !{!15, !4, i64 8}
!18 = !{!19, !19, i64 0}
!19 = !{!"float", !5, i64 0}
!20 = !{!21, !21, i64 0}
!21 = !{!"double", !5, i64 0}
