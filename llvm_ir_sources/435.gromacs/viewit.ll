; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/viewit.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct.t_filenm = type { i32, i8*, i8*, i64 }

@can_view_ftp = internal unnamed_addr constant [5 x i32] [i32 0, i32 36, i32 45, i32 19, i32 15], align 16
@__stderrp = external global %struct.__sFILE*
@.str = private unnamed_addr constant [51 x i8] c"Can not view %s, no DISPLAY environment variable.\0A\00", align 1

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

; Function Attrs: nounwind optsize readnone ssp uwtable
define i32 @can_view(i32 %ftp) #3 {
  br label %1

; <label>:1                                       ; preds = %0, %6
  %indvars.iv = phi i64 [ 1, %0 ], [ %indvars.iv.next, %6 ]
  %2 = getelementptr inbounds [5 x i32]* @can_view_ftp, i64 0, i64 %indvars.iv
  %3 = load i32* %2, align 4, !tbaa !14
  %4 = icmp eq i32 %3, %ftp
  %5 = trunc i64 %indvars.iv to i32
  br i1 %4, label %9, label %6

; <label>:6                                       ; preds = %1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %7 = trunc i64 %indvars.iv.next to i32
  %8 = icmp ult i32 %7, 5
  br i1 %8, label %1, label %9

; <label>:9                                       ; preds = %6, %1
  %.0 = phi i32 [ %5, %1 ], [ 0, %6 ]
  ret i32 %.0
}

; Function Attrs: nounwind optsize ssp uwtable
define void @do_view(i8* %fn, i8* nocapture readnone %opts) #4 {
  %1 = tail call i32 @bDoView() #6
  %2 = icmp ne i32 %1, 0
  %3 = icmp ne i8* %fn, null
  %or.cond = and i1 %3, %2
  br i1 %or.cond, label %4, label %7

; <label>:4                                       ; preds = %0
  %5 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !15
  %6 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %5, i8* getelementptr inbounds ([51 x i8]* @.str, i64 0, i64 0), i8* %fn) #6
  br label %7

; <label>:7                                       ; preds = %0, %4
  ret void
}

; Function Attrs: optsize
declare i32 @bDoView() #1

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct.__sFILE* nocapture, i8* nocapture readonly, ...) #5

; Function Attrs: nounwind optsize ssp uwtable
define void @view_all(i32 %nf, %struct.t_filenm* %fnm) #4 {
  %1 = icmp sgt i32 %nf, 0
  br i1 %1, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %0
  %2 = add i32 %nf, -1
  br label %3

; <label>:3                                       ; preds = %can_view.exit.thread, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %can_view.exit.thread ]
  %4 = getelementptr inbounds %struct.t_filenm* %fnm, i64 %indvars.iv
  %5 = getelementptr inbounds %struct.t_filenm* %4, i64 0, i32 0
  %6 = load i32* %5, align 4, !tbaa !16
  br label %7

; <label>:7                                       ; preds = %11, %3
  %indvars.iv.i = phi i64 [ 1, %3 ], [ %indvars.iv.next.i, %11 ]
  %8 = getelementptr inbounds [5 x i32]* @can_view_ftp, i64 0, i64 %indvars.iv.i
  %9 = load i32* %8, align 4, !tbaa !14
  %10 = icmp eq i32 %9, %6
  br i1 %10, label %can_view.exit, label %11

; <label>:11                                      ; preds = %7
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %12 = trunc i64 %indvars.iv.next.i to i32
  %13 = icmp ult i32 %12, 5
  br i1 %13, label %7, label %can_view.exit.thread

can_view.exit:                                    ; preds = %7
  %14 = trunc i64 %indvars.iv.i to i32
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %can_view.exit.thread, label %16

; <label>:16                                      ; preds = %can_view.exit
  %17 = tail call i32 @is_output(%struct.t_filenm* %4) #6
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %can_view.exit.thread, label %19

; <label>:19                                      ; preds = %16
  %20 = tail call i32 @is_optional(%struct.t_filenm* %4) #6
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %25, label %22

; <label>:22                                      ; preds = %19
  %23 = tail call i32 @is_set(%struct.t_filenm* %4) #6
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %can_view.exit.thread, label %25

; <label>:25                                      ; preds = %22, %19
  %26 = getelementptr inbounds %struct.t_filenm* %fnm, i64 %indvars.iv, i32 2
  %27 = load i8** %26, align 8, !tbaa !19
  tail call void @do_view(i8* %27, i8* undef) #7
  br label %can_view.exit.thread

can_view.exit.thread:                             ; preds = %11, %22, %16, %can_view.exit, %25
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %2
  br i1 %exitcond, label %._crit_edge, label %3

._crit_edge:                                      ; preds = %can_view.exit.thread, %0
  ret void
}

; Function Attrs: optsize
declare i32 @is_output(%struct.t_filenm*) #1

; Function Attrs: optsize
declare i32 @is_optional(%struct.t_filenm*) #1

; Function Attrs: optsize
declare i32 @is_set(%struct.t_filenm*) #1

attributes #0 = { alwaysinline nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { alwaysinline nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind optsize }
attributes #7 = { optsize }

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
!15 = !{!4, !4, i64 0}
!16 = !{!17, !7, i64 0}
!17 = !{!"", !7, i64 0, !4, i64 8, !4, i64 16, !18, i64 24}
!18 = !{!"long", !5, i64 0}
!19 = !{!17, !4, i64 16}
