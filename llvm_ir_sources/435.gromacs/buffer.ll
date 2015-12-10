; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/buffer.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }

@.str = private unnamed_addr constant [44 x i8] c"error: (%s) data: 0x%.8x, expected: 0x%.8x\0A\00", align 1

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
  %16 = tail call i32 @__swbuf(i32 %_c, %struct.__sFILE* %_p) #6
  br label %17

; <label>:17                                      ; preds = %15, %10
  %.0 = phi i32 [ %.pre-phi, %10 ], [ %16, %15 ]
  ret i32 %.0
}

; Function Attrs: optsize
declare i32 @__swbuf(i32, %struct.__sFILE*) #1

; Function Attrs: nounwind optsize readnone ssp uwtable
define i32 @mask(i32 %i) #2 {
  %1 = and i32 %i, 255
  %2 = shl i32 %i, 8
  %3 = add i32 %2, 256
  %4 = and i32 %3, 65280
  %5 = shl i32 %i, 16
  %6 = add i32 %5, 131072
  %7 = and i32 %6, 16711680
  %8 = shl i32 %i, 24
  %9 = add i32 %8, 50331648
  %10 = or i32 %9, %1
  %11 = or i32 %10, %4
  %12 = or i32 %11, %7
  ret i32 %12
}

; Function Attrs: nounwind optsize ssp uwtable
define void @clear_buff(i32* nocapture %data, i32 %items) #3 {
  %1 = icmp sgt i32 %items, 0
  br i1 %1, label %.lr.ph, label %6

.lr.ph:                                           ; preds = %0
  %data2 = bitcast i32* %data to i8*
  %2 = add i32 %items, -1
  %3 = zext i32 %2 to i64
  %4 = shl nuw nsw i64 %3, 2
  %5 = add nuw nsw i64 %4, 4
  call void @llvm.memset.p0i8.i64(i8* %data2, i8 0, i64 %5, i32 4, i1 false)
  br label %6

; <label>:6                                       ; preds = %.lr.ph, %0
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define void @fill_buff(i32* nocapture %data, i32 %items) #3 {
  %1 = icmp sgt i32 %items, 0
  br i1 %1, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %0
  %2 = add i32 %items, -1
  br label %3

; <label>:3                                       ; preds = %3, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %3 ]
  %4 = trunc i64 %indvars.iv to i32
  %5 = and i32 %4, 255
  %6 = shl i32 %4, 8
  %7 = add i32 %6, 256
  %8 = and i32 %7, 65280
  %9 = shl i32 %4, 16
  %10 = add i32 %9, 131072
  %11 = and i32 %10, 16711680
  %12 = shl i32 %4, 24
  %13 = add i32 %12, 50331648
  %14 = or i32 %13, %5
  %15 = or i32 %14, %8
  %16 = or i32 %15, %11
  %17 = getelementptr inbounds i32* %data, i64 %indvars.iv
  store i32 %16, i32* %17, align 4, !tbaa !14
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i32 %4, %2
  br i1 %exitcond, label %._crit_edge, label %3

._crit_edge:                                      ; preds = %3, %0
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @check_buff(%struct.__sFILE* %fp, i8* %title, i32* nocapture readonly %data, i32 %items, i32 %verbose) #3 {
  %1 = icmp eq i32 %verbose, 0
  %2 = icmp sgt i32 %items, 0
  br i1 %1, label %.preheader, label %.preheader1

.preheader1:                                      ; preds = %0
  br i1 %2, label %.lr.ph7, label %.loopexit

.lr.ph7:                                          ; preds = %.preheader1
  %3 = icmp eq %struct.__sFILE* %fp, null
  %4 = add i32 %items, -1
  br label %23

.preheader:                                       ; preds = %0
  br i1 %2, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader
  %5 = add i32 %items, -1
  br label %6

; <label>:6                                       ; preds = %6, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %6 ]
  %errs.03 = phi i32 [ 0, %.lr.ph ], [ %errs.0., %6 ]
  %7 = getelementptr inbounds i32* %data, i64 %indvars.iv
  %8 = load i32* %7, align 4, !tbaa !14
  %9 = trunc i64 %indvars.iv to i32
  %10 = and i32 %9, 255
  %11 = shl i32 %9, 8
  %12 = add i32 %11, 256
  %13 = and i32 %12, 65280
  %14 = shl i32 %9, 16
  %15 = add i32 %14, 131072
  %16 = and i32 %15, 16711680
  %17 = shl i32 %9, 24
  %18 = add i32 %17, 50331648
  %19 = or i32 %18, %10
  %20 = or i32 %19, %13
  %21 = or i32 %20, %16
  %not. = icmp ne i32 %8, %21
  %22 = zext i1 %not. to i32
  %errs.0. = add nsw i32 %22, %errs.03
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i32 %9, %5
  br i1 %exitcond, label %.loopexit, label %6

; <label>:23                                      ; preds = %45, %.lr.ph7
  %indvars.iv9 = phi i64 [ 0, %.lr.ph7 ], [ %indvars.iv.next10, %45 ]
  %errs.25 = phi i32 [ 0, %.lr.ph7 ], [ %errs.3, %45 ]
  %24 = getelementptr inbounds i32* %data, i64 %indvars.iv9
  %25 = load i32* %24, align 4, !tbaa !14
  %26 = trunc i64 %indvars.iv9 to i32
  %27 = and i32 %26, 255
  %28 = shl i32 %26, 8
  %29 = add i32 %28, 256
  %30 = and i32 %29, 65280
  %31 = shl i32 %26, 16
  %32 = add i32 %31, 131072
  %33 = and i32 %32, 16711680
  %34 = shl i32 %26, 24
  %35 = add i32 %34, 50331648
  %36 = or i32 %35, %27
  %37 = or i32 %36, %30
  %38 = or i32 %37, %33
  %39 = icmp eq i32 %25, %38
  br i1 %39, label %45, label %40

; <label>:40                                      ; preds = %23
  br i1 %3, label %43, label %41

; <label>:41                                      ; preds = %40
  %42 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([44 x i8]* @.str, i64 0, i64 0), i8* %title, i32 %25, i32 %38) #6
  br label %43

; <label>:43                                      ; preds = %40, %41
  %44 = add nsw i32 %errs.25, 1
  br label %45

; <label>:45                                      ; preds = %23, %43
  %errs.3 = phi i32 [ %44, %43 ], [ %errs.25, %23 ]
  %indvars.iv.next10 = add nuw nsw i64 %indvars.iv9, 1
  %exitcond12 = icmp eq i32 %26, %4
  br i1 %exitcond12, label %.loopexit, label %23

.loopexit:                                        ; preds = %45, %6, %.preheader1, %.preheader
  %errs.4 = phi i32 [ 0, %.preheader ], [ 0, %.preheader1 ], [ %errs.0., %6 ], [ %errs.3, %45 ]
  ret i32 %errs.4
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct.__sFILE* nocapture, i8* nocapture readonly, ...) #4

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #5

attributes #0 = { alwaysinline nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind optsize }

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
!14 = !{!7, !7, i64 0}
