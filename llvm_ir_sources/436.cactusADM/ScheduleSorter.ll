; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/Cactus/ScheduleSorter.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

@.str = private unnamed_addr constant [93 x i8] c"$Header: /cactus/Cactus/src/schedule/ScheduleSorter.c,v 1.8 2001/11/05 14:58:55 tradke Exp $\00", align 1

; Function Attrs: nounwind optsize readnone ssp uwtable
define i8* @CCTKi_version_schedule_ScheduleSorter_c() #0 {
  ret i8* getelementptr inbounds ([93 x i8]* @.str, i64 0, i64 0)
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTKi_ScheduleSort(i32 %size, i8** nocapture %array, i32* nocapture %order) #1 {
  %1 = add i32 %size, -1
  %2 = mul nsw i32 %1, %size
  %3 = sdiv i32 %2, 2
  %4 = icmp sgt i32 %2, 1
  br i1 %4, label %.critedge.preheader.lr.ph, label %.thread.preheader

.critedge.preheader.lr.ph:                        ; preds = %0
  %5 = icmp sgt i32 %size, 0
  br i1 %5, label %.critedge.preheader.lr.ph..critedge.preheader.lr.ph.split_crit_edge, label %.thread._crit_edge

.critedge.preheader.lr.ph..critedge.preheader.lr.ph.split_crit_edge: ; preds = %.critedge.preheader.lr.ph
  %6 = sext i32 %size to i64
  br label %.lr.ph14

.lr.ph14:                                         ; preds = %ScheduleSwap.exit, %.critedge.preheader.lr.ph..critedge.preheader.lr.ph.split_crit_edge
  %iter.015 = phi i32 [ 0, %.critedge.preheader.lr.ph..critedge.preheader.lr.ph.split_crit_edge ], [ %42, %ScheduleSwap.exit ]
  br label %9

.critedge.loopexit:                               ; preds = %18
  %indvars.iv.next27 = add nuw nsw i64 %indvars.iv26, 1
  br i1 %10, label %9, label %.thread.preheader

.thread.preheader:                                ; preds = %ScheduleSwap.exit, %9, %.critedge.loopexit, %0
  %7 = icmp sgt i32 %size, 0
  br i1 %7, label %.lr.ph9, label %.thread._crit_edge

.lr.ph9:                                          ; preds = %.thread.preheader
  %8 = sext i32 %size to i64
  br label %44

; <label>:9                                       ; preds = %.lr.ph14, %.critedge.loopexit
  %indvars.iv30 = phi i64 [ 0, %.lr.ph14 ], [ %indvars.iv.next31, %.critedge.loopexit ]
  %indvars.iv26 = phi i64 [ 1, %.lr.ph14 ], [ %indvars.iv.next27, %.critedge.loopexit ]
  %indvars.iv.next31 = add nuw nsw i64 %indvars.iv30, 1
  %10 = icmp slt i64 %indvars.iv.next31, %6
  br i1 %10, label %.lr.ph12, label %.thread.preheader

.lr.ph12:                                         ; preds = %9
  %11 = getelementptr inbounds i8** %array, i64 %indvars.iv30
  %12 = load i8** %11, align 8, !tbaa !2
  %13 = trunc i64 %indvars.iv.next31 to i32
  br label %14

; <label>:14                                      ; preds = %.lr.ph12, %18
  %indvars.iv28 = phi i64 [ %indvars.iv26, %.lr.ph12 ], [ %indvars.iv.next29, %18 ]
  %column.211 = phi i32 [ %13, %.lr.ph12 ], [ %19, %18 ]
  %15 = getelementptr inbounds i8* %12, i64 %indvars.iv28
  %16 = load i8* %15, align 1, !tbaa !6
  %17 = icmp sgt i8 %16, 0
  br i1 %17, label %.lr.ph.i, label %18

; <label>:18                                      ; preds = %14
  %19 = add nuw nsw i32 %column.211, 1
  %20 = icmp slt i32 %19, %size
  %indvars.iv.next29 = add nuw nsw i64 %indvars.iv28, 1
  br i1 %20, label %14, label %.critedge.loopexit

.lr.ph.i:                                         ; preds = %14
  %sext = shl i64 %indvars.iv30, 32
  %21 = ashr exact i64 %sext, 32
  %22 = getelementptr inbounds i8** %array, i64 %21
  %23 = bitcast i8** %22 to i64*
  %24 = load i64* %23, align 8, !tbaa !2
  %sext34 = shl i64 %indvars.iv28, 32
  %25 = ashr exact i64 %sext34, 32
  %26 = getelementptr inbounds i8** %array, i64 %25
  %27 = bitcast i8** %26 to i64*
  %28 = load i64* %27, align 8, !tbaa !2
  store i64 %28, i64* %23, align 8, !tbaa !2
  store i64 %24, i64* %27, align 8, !tbaa !2
  br label %29

; <label>:29                                      ; preds = %29, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %29 ]
  %30 = getelementptr inbounds i8** %array, i64 %indvars.iv.i
  %31 = load i8** %30, align 8, !tbaa !2
  %32 = getelementptr inbounds i8* %31, i64 %25
  %33 = load i8* %32, align 1, !tbaa !6
  %34 = getelementptr inbounds i8* %31, i64 %21
  %35 = load i8* %34, align 1, !tbaa !6
  store i8 %35, i8* %32, align 1, !tbaa !6
  %36 = load i8** %30, align 8, !tbaa !2
  %37 = getelementptr inbounds i8* %36, i64 %21
  store i8 %33, i8* %37, align 1, !tbaa !6
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %lftr.wideiv32 = trunc i64 %indvars.iv.i to i32
  %exitcond33 = icmp eq i32 %lftr.wideiv32, %1
  br i1 %exitcond33, label %ScheduleSwap.exit, label %29

ScheduleSwap.exit:                                ; preds = %29
  %38 = getelementptr inbounds i32* %order, i64 %25
  %39 = load i32* %38, align 4, !tbaa !7
  %40 = getelementptr inbounds i32* %order, i64 %21
  %41 = load i32* %40, align 4, !tbaa !7
  store i32 %41, i32* %38, align 4, !tbaa !7
  store i32 %39, i32* %40, align 4, !tbaa !7
  %42 = add nuw nsw i32 %iter.015, 1
  %43 = icmp slt i32 %42, %3
  br i1 %43, label %.lr.ph14, label %.thread.preheader

.thread.loopexit:                                 ; preds = %48, %44
  %retval.1.lcssa = phi i32 [ %retval.08, %44 ], [ %.retval.1, %48 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %lftr.wideiv24 = trunc i64 %indvars.iv22 to i32
  %exitcond25 = icmp eq i32 %lftr.wideiv24, %1
  br i1 %exitcond25, label %.thread._crit_edge, label %44

; <label>:44                                      ; preds = %.thread.loopexit, %.lr.ph9
  %indvars.iv22 = phi i64 [ 0, %.lr.ph9 ], [ %indvars.iv.next23, %.thread.loopexit ]
  %indvars.iv = phi i64 [ 1, %.lr.ph9 ], [ %indvars.iv.next, %.thread.loopexit ]
  %retval.08 = phi i32 [ 0, %.lr.ph9 ], [ %retval.1.lcssa, %.thread.loopexit ]
  %indvars.iv.next23 = add nuw nsw i64 %indvars.iv22, 1
  %45 = icmp slt i64 %indvars.iv.next23, %8
  br i1 %45, label %.lr.ph, label %.thread.loopexit

.lr.ph:                                           ; preds = %44
  %46 = getelementptr inbounds i8** %array, i64 %indvars.iv22
  %47 = load i8** %46, align 8, !tbaa !2
  br label %48

; <label>:48                                      ; preds = %48, %.lr.ph
  %indvars.iv20 = phi i64 [ %indvars.iv, %.lr.ph ], [ %indvars.iv.next21, %48 ]
  %retval.16 = phi i32 [ %retval.08, %.lr.ph ], [ %.retval.1, %48 ]
  %49 = getelementptr inbounds i8* %47, i64 %indvars.iv20
  %50 = load i8* %49, align 1, !tbaa !6
  %51 = icmp sgt i8 %50, 0
  %52 = sext i1 %51 to i32
  %.retval.1 = add nsw i32 %52, %retval.16
  %indvars.iv.next21 = add nuw nsw i64 %indvars.iv20, 1
  %lftr.wideiv = trunc i64 %indvars.iv20 to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %1
  br i1 %exitcond, label %.thread.loopexit, label %48

.thread._crit_edge:                               ; preds = %.thread.loopexit, %.critedge.preheader.lr.ph, %.thread.preheader
  %retval.0.lcssa = phi i32 [ 0, %.thread.preheader ], [ 0, %.critedge.preheader.lr.ph ], [ %retval.1.lcssa, %.thread.loopexit ]
  ret i32 %retval.0.lcssa
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTKi_ScheduleAddRow(i32 %size, i8** nocapture readonly %array, i32* nocapture %order, i32 %item, i32* nocapture readonly %thisorders) #1 {
  %1 = sext i32 %item to i64
  %2 = getelementptr inbounds i32* %order, i64 %1
  store i32 %item, i32* %2, align 4, !tbaa !7
  %3 = icmp sgt i32 %size, 0
  br i1 %3, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %0
  %4 = getelementptr inbounds i8** %array, i64 %1
  %5 = add i32 %size, -1
  br label %6

; <label>:6                                       ; preds = %23, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %23 ]
  %retval.02 = phi i32 [ 0, %.lr.ph ], [ %retval.2, %23 ]
  %7 = getelementptr inbounds i32* %thisorders, i64 %indvars.iv
  %8 = load i32* %7, align 4, !tbaa !7
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %23, label %10

; <label>:10                                      ; preds = %6
  %11 = load i8** %4, align 8, !tbaa !2
  %12 = getelementptr inbounds i8* %11, i64 %indvars.iv
  %13 = load i8* %12, align 1, !tbaa !6
  %14 = sext i8 %13 to i32
  %notlhs = icmp ne i8 %13, 0
  %notrhs = icmp ne i32 %14, %8
  %not.or.cond = and i1 %notlhs, %notrhs
  %15 = sext i1 %not.or.cond to i32
  %retval.1 = add nsw i32 %15, %retval.02
  %16 = trunc i32 %8 to i8
  store i8 %16, i8* %12, align 1, !tbaa !6
  %17 = load i32* %7, align 4, !tbaa !7
  %18 = sub nsw i32 0, %17
  %19 = trunc i32 %18 to i8
  %20 = getelementptr inbounds i8** %array, i64 %indvars.iv
  %21 = load i8** %20, align 8, !tbaa !2
  %22 = getelementptr inbounds i8* %21, i64 %1
  store i8 %19, i8* %22, align 1, !tbaa !6
  br label %23

; <label>:23                                      ; preds = %6, %10
  %retval.2 = phi i32 [ %retval.1, %10 ], [ %retval.02, %6 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %5
  br i1 %exitcond, label %._crit_edge, label %6

._crit_edge:                                      ; preds = %23, %0
  %retval.0.lcssa = phi i32 [ 0, %0 ], [ %retval.2, %23 ]
  ret i32 %retval.0.lcssa
}

; Function Attrs: nounwind optsize ssp uwtable
define i8** @CCTKi_ScheduleCreateArray(i32 %size) #1 {
  %1 = sext i32 %size to i64
  %2 = shl nsw i64 %1, 3
  %3 = tail call i8* @malloc(i64 %2) #4
  %4 = bitcast i8* %3 to i8**
  %cond = icmp eq i8* %3, null
  br i1 %cond, label %.loopexit, label %.preheader3

.preheader3:                                      ; preds = %0
  %5 = icmp sgt i32 %size, 0
  br i1 %5, label %.lr.ph11, label %.loopexit

.lr.ph11:                                         ; preds = %.preheader3, %12
  %indvars.iv19 = phi i64 [ %indvars.iv.next20, %12 ], [ 0, %.preheader3 ]
  %6 = tail call i8* @malloc(i64 %1) #4
  %7 = getelementptr inbounds i8** %4, i64 %indvars.iv19
  store i8* %6, i8** %7, align 8, !tbaa !2
  %8 = icmp eq i8* %6, null
  br i1 %8, label %.thread.preheader, label %12

.thread.preheader:                                ; preds = %.lr.ph11
  %9 = trunc i64 %indvars.iv19 to i32
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %.lr.ph, label %.critedge.thread

.lr.ph:                                           ; preds = %.thread.preheader
  %sext = shl i64 %indvars.iv19, 32
  %11 = ashr exact i64 %sext, 32
  br label %.thread

; <label>:12                                      ; preds = %.lr.ph11
  %indvars.iv.next20 = add nuw nsw i64 %indvars.iv19, 1
  %13 = icmp slt i64 %indvars.iv.next20, %1
  br i1 %13, label %.lr.ph11, label %.preheader2

.thread:                                          ; preds = %.lr.ph, %.thread
  %indvars.iv = phi i64 [ %11, %.lr.ph ], [ %indvars.iv.next, %.thread ]
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %14 = getelementptr inbounds i8** %4, i64 %indvars.iv.next
  %15 = load i8** %14, align 8, !tbaa !2
  tail call void @free(i8* %15) #5
  %16 = icmp sgt i64 %indvars.iv, 1
  br i1 %16, label %.thread, label %.critedge.thread

.critedge.thread:                                 ; preds = %.thread, %.thread.preheader
  tail call void @free(i8* %3) #5
  br label %.loopexit

.preheader2:                                      ; preds = %12
  br i1 %5, label %.preheader.lr.ph, label %.loopexit

.preheader.lr.ph:                                 ; preds = %.preheader2
  %17 = add i32 %size, -1
  br label %.lr.ph8

.lr.ph8:                                          ; preds = %.preheader.lr.ph, %._crit_edge
  %indvars.iv15 = phi i64 [ 0, %.preheader.lr.ph ], [ %indvars.iv.next16, %._crit_edge ]
  %18 = getelementptr inbounds i8** %4, i64 %indvars.iv15
  %.pre = load i8** %18, align 8, !tbaa !2
  br label %19

; <label>:19                                      ; preds = %19, %.lr.ph8
  %indvars.iv13 = phi i64 [ 0, %.lr.ph8 ], [ %indvars.iv.next14, %19 ]
  %20 = getelementptr inbounds i8* %.pre, i64 %indvars.iv13
  store i8 0, i8* %20, align 1, !tbaa !6
  %indvars.iv.next14 = add nuw nsw i64 %indvars.iv13, 1
  %lftr.wideiv = trunc i64 %indvars.iv13 to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %17
  br i1 %exitcond, label %._crit_edge, label %19

._crit_edge:                                      ; preds = %19
  %indvars.iv.next16 = add nuw nsw i64 %indvars.iv15, 1
  %lftr.wideiv17 = trunc i64 %indvars.iv15 to i32
  %exitcond18 = icmp eq i32 %lftr.wideiv17, %17
  br i1 %exitcond18, label %.loopexit, label %.lr.ph8

.loopexit:                                        ; preds = %._crit_edge, %.preheader3, %.preheader2, %0, %.critedge.thread
  %array.01 = phi i8** [ null, %.critedge.thread ], [ null, %0 ], [ %4, %.preheader2 ], [ %4, %.preheader3 ], [ %4, %._crit_edge ]
  ret i8** %array.01
}

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i64) #2

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #2

; Function Attrs: nounwind optsize ssp uwtable
define void @CCTKi_ScheduleDestroyArray(i32 %size, i8** %array) #1 {
  %1 = icmp eq i8** %array, null
  br i1 %1, label %9, label %.preheader

.preheader:                                       ; preds = %0
  %2 = icmp sgt i32 %size, 0
  br i1 %2, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %3 = sext i32 %size to i64
  br label %4

; <label>:4                                       ; preds = %.lr.ph, %4
  %indvars.iv = phi i64 [ %3, %.lr.ph ], [ %indvars.iv.next, %4 ]
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %5 = getelementptr inbounds i8** %array, i64 %indvars.iv.next
  %6 = load i8** %5, align 8, !tbaa !2
  tail call void @free(i8* %6) #5
  %7 = icmp sgt i64 %indvars.iv, 1
  br i1 %7, label %4, label %._crit_edge

._crit_edge:                                      ; preds = %4, %.preheader
  %8 = bitcast i8** %array to i8*
  tail call void @free(i8* %8) #5
  br label %9

; <label>:9                                       ; preds = %0, %._crit_edge
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define noalias i32* @CCTKi_ScheduleCreateIVec(i32 %size) #1 {
  %1 = sext i32 %size to i64
  %2 = shl nsw i64 %1, 2
  %3 = tail call i8* @malloc(i64 %2) #4
  %4 = bitcast i8* %3 to i32*
  %5 = icmp ne i8* %3, null
  %6 = icmp sgt i32 %size, 0
  %or.cond = and i1 %5, %6
  br i1 %or.cond, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %0
  %7 = add i32 %size, -1
  %8 = zext i32 %7 to i64
  %9 = shl nuw nsw i64 %8, 2
  %10 = add nuw nsw i64 %9, 4
  call void @llvm.memset.p0i8.i64(i8* %3, i8 0, i64 %10, i32 4, i1 false)
  br label %.loopexit

.loopexit:                                        ; preds = %0, %.lr.ph
  ret i32* %4
}

; Function Attrs: nounwind optsize ssp uwtable
define void @CCTKi_ScheduleDestroyIVec(i32 %size, i32* nocapture %vector) #1 {
  %1 = bitcast i32* %vector to i8*
  tail call void @free(i8* %1) #5
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #3

attributes #0 = { nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { nounwind optsize }
attributes #5 = { optsize }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!2 = !{!3, !3, i64 0}
!3 = !{!"any pointer", !4, i64 0}
!4 = !{!"omnipotent char", !5, i64 0}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!4, !4, i64 0}
!7 = !{!8, !8, i64 0}
!8 = !{!"int", !4, i64 0}
