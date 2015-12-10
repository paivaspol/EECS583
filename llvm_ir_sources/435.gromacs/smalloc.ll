; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/smalloc.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

@.str = private unnamed_addr constant [43 x i8] c"malloc for %s (%d bytes, file %s, line %d)\00", align 1
@.str1 = private unnamed_addr constant [54 x i8] c"calloc for %s (nelem=%d, elsize=%d, file %s, line %d)\00", align 1
@.str2 = private unnamed_addr constant [54 x i8] c"realloc for %s (%d bytes, file %s, line %d, %s=0x%8x)\00", align 1

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
define i8* @save_malloc(i8* %name, i8* %file, i32 %line, i32 %size) #1 {
  %1 = icmp eq i32 %size, 0
  br i1 %1, label %12, label %2

; <label>:2                                       ; preds = %0
  %3 = sext i32 %size to i64
  %4 = tail call i8* @malloc(i64 %3) #6
  %5 = icmp eq i8* %4, null
  br i1 %5, label %6, label %9

; <label>:6                                       ; preds = %2
  %7 = tail call i32* @__error() #6
  %8 = load i32* %7, align 4, !tbaa !2
  tail call void (i32, i8*, ...)* @fatal_error(i32 %8, i8* getelementptr inbounds ([43 x i8]* @.str, i64 0, i64 0), i8* %name, i32 %size, i8* %file, i32 %line) #6
  br label %9

; <label>:9                                       ; preds = %6, %2
  %10 = tail call i64 @llvm.objectsize.i64.p0i8(i8* %4, i1 false)
  %11 = tail call i8* @__memset_chk(i8* %4, i32 0, i64 %3, i64 %10) #6
  br label %12

; <label>:12                                      ; preds = %0, %9
  %p.0 = phi i8* [ %4, %9 ], [ null, %0 ]
  ret i8* %p.0
}

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i64) #2

; Function Attrs: optsize
declare void @fatal_error(i32, i8*, ...) #3

; Function Attrs: optsize
declare i32* @__error() #3

; Function Attrs: nounwind optsize
declare i8* @__memset_chk(i8*, i32, i64, i64) #2

; Function Attrs: nounwind readnone
declare i64 @llvm.objectsize.i64.p0i8(i8*, i1) #4

; Function Attrs: nounwind optsize ssp uwtable
define noalias i8* @save_calloc(i8* %name, i8* %file, i32 %line, i32 %nelem, i32 %elsize) #1 {
  %1 = icmp eq i32 %nelem, 0
  %2 = icmp eq i32 %elsize, 0
  %or.cond = or i1 %1, %2
  br i1 %or.cond, label %11, label %3

; <label>:3                                       ; preds = %0
  %4 = zext i32 %nelem to i64
  %5 = zext i32 %elsize to i64
  %6 = tail call i8* @calloc(i64 %4, i64 %5) #6
  %7 = icmp eq i8* %6, null
  br i1 %7, label %8, label %11

; <label>:8                                       ; preds = %3
  %9 = tail call i32* @__error() #6
  %10 = load i32* %9, align 4, !tbaa !2
  tail call void (i32, i8*, ...)* @fatal_error(i32 %10, i8* getelementptr inbounds ([54 x i8]* @.str1, i64 0, i64 0), i8* %name, i32 %nelem, i32 %elsize, i8* %file, i32 %line) #6
  br label %11

; <label>:11                                      ; preds = %0, %3, %8
  %p.0 = phi i8* [ null, %8 ], [ %6, %3 ], [ null, %0 ]
  ret i8* %p.0
}

; Function Attrs: nounwind optsize
declare noalias i8* @calloc(i64, i64) #2

; Function Attrs: nounwind optsize ssp uwtable
define i8* @save_realloc(i8* %name, i8* %file, i32 %line, i8* %ptr, i32 %size) #1 {
  %1 = icmp eq i32 %size, 0
  br i1 %1, label %14, label %2

; <label>:2                                       ; preds = %0
  %3 = icmp eq i8* %ptr, null
  %4 = zext i32 %size to i64
  br i1 %3, label %5, label %7

; <label>:5                                       ; preds = %2
  %6 = tail call i8* @malloc(i64 %4) #6
  br label %9

; <label>:7                                       ; preds = %2
  %8 = tail call i8* @realloc(i8* %ptr, i64 %4) #6
  br label %9

; <label>:9                                       ; preds = %7, %5
  %p.0 = phi i8* [ %6, %5 ], [ %8, %7 ]
  %10 = icmp eq i8* %p.0, null
  br i1 %10, label %11, label %14

; <label>:11                                      ; preds = %9
  %12 = tail call i32* @__error() #6
  %13 = load i32* %12, align 4, !tbaa !2
  tail call void (i32, i8*, ...)* @fatal_error(i32 %13, i8* getelementptr inbounds ([54 x i8]* @.str2, i64 0, i64 0), i8* %name, i32 %size, i8* %file, i32 %line, i8* %name, i8* %ptr) #6
  br label %14

; <label>:14                                      ; preds = %0, %9, %11
  %p.1 = phi i8* [ null, %11 ], [ %p.0, %9 ], [ null, %0 ]
  ret i8* %p.1
}

; Function Attrs: nounwind optsize
declare noalias i8* @realloc(i8* nocapture, i64) #2

; Function Attrs: nounwind optsize ssp uwtable
define void @save_free(i8* nocapture readnone %name, i8* nocapture readnone %file, i32 %line, i8* %ptr) #1 {
  %1 = icmp eq i8* %ptr, null
  br i1 %1, label %3, label %2

; <label>:2                                       ; preds = %0
  tail call void @free(i8* %ptr) #7
  br label %3

; <label>:3                                       ; preds = %0, %2
  ret void
}

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #2

; Function Attrs: nounwind optsize readnone ssp uwtable
define i32 @maxavail() #5 {
  ret i32 255999996
}

; Function Attrs: nounwind optsize readnone ssp uwtable
define i32 @memavail() #5 {
  %1 = tail call i32 @memavail() #7
  %2 = add i32 %1, 255999996
  ret i32 %2
}

attributes #0 = { alwaysinline nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind optsize }
attributes #7 = { optsize }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!2 = !{!3, !3, i64 0}
!3 = !{!"int", !4, i64 0}
!4 = !{!"omnipotent char", !5, i64 0}
!5 = !{!"Simple C/C++ TBAA"}
