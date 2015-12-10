; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/memdump.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }

@.str = private unnamed_addr constant [16 x i8] c"memdump of %s:\0A\00", align 1
@.str1 = private unnamed_addr constant [7 x i8] c"%.8X :\00", align 1
@.str2 = private unnamed_addr constant [6 x i8] c" %.2X\00", align 1
@.str3 = private unnamed_addr constant [4 x i8] c"   \00", align 1
@.str4 = private unnamed_addr constant [7 x i8] c" | %s\0A\00", align 1

; Function Attrs: nounwind optsize ssp uwtable
define void @mem_dump(%struct.__sFILE* %log, i8* %title, i8* nocapture readonly %mem, i32 %len) #0 {
  %s = alloca [17 x i8], align 16
  %1 = getelementptr inbounds [17 x i8]* %s, i64 0, i64 0
  store i8 0, i8* %1, align 16, !tbaa !2
  %2 = icmp ne i32 %len, 0
  %3 = icmp ne %struct.__sFILE* %log, null
  %or.cond = and i1 %3, %2
  br i1 %or.cond, label %4, label %.preheader

; <label>:4                                       ; preds = %0
  %5 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %log, i8* getelementptr inbounds ([16 x i8]* @.str, i64 0, i64 0), i8* %title) #3
  br label %.preheader

.preheader:                                       ; preds = %4, %0
  %6 = icmp sgt i32 %len, 0
  br i1 %6, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %7 = add i32 %len, -1
  br label %8

; <label>:8                                       ; preds = %.thread6, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %.thread6 ]
  %index.07 = phi i32 [ 0, %.lr.ph ], [ %21, %.thread6 ]
  %9 = getelementptr inbounds i8* %mem, i64 %indvars.iv
  %10 = load i8* %9, align 1, !tbaa !2
  %11 = and i32 %index.07, -17
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %16

; <label>:13                                      ; preds = %8
  call fastcc void @print_chars(%struct.__sFILE* %log, i8* %1, i32 %index.07) #4
  br i1 %3, label %.thread, label %.thread6

.thread:                                          ; preds = %13
  %14 = trunc i64 %indvars.iv to i32
  %15 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %log, i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i32 %14) #3
  br label %17

; <label>:16                                      ; preds = %8
  br i1 %3, label %17, label %.thread6

; <label>:17                                      ; preds = %.thread, %16
  %index.15 = phi i32 [ 0, %.thread ], [ %index.07, %16 ]
  %18 = zext i8 %10 to i32
  %19 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %log, i8* getelementptr inbounds ([6 x i8]* @.str2, i64 0, i64 0), i32 %18) #3
  br label %.thread6

.thread6:                                         ; preds = %13, %17, %16
  %index.14 = phi i32 [ %index.15, %17 ], [ %index.07, %16 ], [ 0, %13 ]
  %b.off.i = add i8 %10, -32
  %20 = icmp ugt i8 %b.off.i, 94
  %.0.i = select i1 %20, i8 46, i8 %10
  %21 = add nsw i32 %index.14, 1
  %22 = sext i32 %index.14 to i64
  %23 = getelementptr inbounds [17 x i8]* %s, i64 0, i64 %22
  store i8 %.0.i, i8* %23, align 1, !tbaa !2
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %7
  br i1 %exitcond, label %._crit_edge, label %8

._crit_edge:                                      ; preds = %.thread6, %.preheader
  %index.0.lcssa = phi i32 [ 0, %.preheader ], [ %21, %.thread6 ]
  call fastcc void @print_chars(%struct.__sFILE* %log, i8* %1, i32 %index.0.lcssa) #4
  %24 = call i32 @fflush(%struct.__sFILE* %log) #3
  ret void
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct.__sFILE* nocapture, i8* nocapture readonly, ...) #1

; Function Attrs: nounwind optsize ssp uwtable
define internal fastcc void @print_chars(%struct.__sFILE* %fp, i8* %s, i32 %len) #0 {
  %1 = icmp eq i32 %len, 0
  br i1 %1, label %12, label %2

; <label>:2                                       ; preds = %0
  %3 = icmp eq %struct.__sFILE* %fp, null
  br i1 %3, label %.critedge, label %.preheader

.preheader:                                       ; preds = %2
  %4 = icmp slt i32 %len, 16
  br i1 %4, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %i.01 = phi i32 [ %6, %.lr.ph ], [ %len, %.preheader ]
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([4 x i8]* @.str3, i64 0, i64 0), i64 3, i64 1, %struct.__sFILE* %fp)
  %6 = add nsw i32 %i.01, 1
  %exitcond = icmp eq i32 %i.01, 15
  br i1 %exitcond, label %.loopexit, label %.lr.ph

.loopexit:                                        ; preds = %.lr.ph, %.preheader
  %7 = sext i32 %len to i64
  %8 = getelementptr inbounds i8* %s, i64 %7
  store i8 0, i8* %8, align 1, !tbaa !2
  %9 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([7 x i8]* @.str4, i64 0, i64 0), i8* %s) #3
  br label %12

.critedge:                                        ; preds = %2
  %10 = sext i32 %len to i64
  %11 = getelementptr inbounds i8* %s, i64 %10
  store i8 0, i8* %11, align 1, !tbaa !2
  br label %12

; <label>:12                                      ; preds = %.critedge, %0, %.loopexit
  ret void
}

; Function Attrs: nounwind optsize
declare i32 @fflush(%struct.__sFILE* nocapture) #1

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct.__sFILE* nocapture) #2

attributes #0 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nounwind optsize }
attributes #4 = { optsize }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!2 = !{!3, !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
