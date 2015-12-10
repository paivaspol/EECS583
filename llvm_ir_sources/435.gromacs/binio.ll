; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/binio.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }

@.str = private unnamed_addr constant [57 x i8] c"writing %s (%dx%d, len=%d, pos=%d) from file %s, line %d\00", align 1
@.str1 = private unnamed_addr constant [57 x i8] c"reading %s (%dx%d, len=%d, pos=%d) from file %s, line %d\00", align 1

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
define void @_blockwrite(%struct.__sFILE* %fp, i32 %nelem, i32 %size, i8* %data, i8* %what, i8* %file, i32 %line) #1 {
  %1 = sext i32 %size to i64
  %2 = sext i32 %nelem to i64
  %3 = tail call i64 @"\01_fwrite"(i8* %data, i64 %1, i64 %2, %struct.__sFILE* %fp) #4
  %4 = trunc i64 %3 to i32
  %5 = icmp eq i32 %4, %nelem
  br i1 %5, label %10, label %6

; <label>:6                                       ; preds = %0
  %7 = tail call i32* @__error() #4
  %8 = load i32* %7, align 4, !tbaa !2
  %9 = tail call i64 @ftell(%struct.__sFILE* %fp) #4
  tail call void (i32, i8*, ...)* @fatal_error(i32 %8, i8* getelementptr inbounds ([57 x i8]* @.str, i64 0, i64 0), i8* %what, i32 %nelem, i32 %size, i32 %4, i64 %9, i8* %file, i32 %line) #4
  br label %10

; <label>:10                                      ; preds = %0, %6
  ret void
}

; Function Attrs: optsize
declare i64 @"\01_fwrite"(i8*, i64, i64, %struct.__sFILE*) #2

; Function Attrs: optsize
declare void @fatal_error(i32, i8*, ...) #2

; Function Attrs: optsize
declare i32* @__error() #2

; Function Attrs: nounwind optsize
declare i64 @ftell(%struct.__sFILE* nocapture) #3

; Function Attrs: nounwind optsize ssp uwtable
define void @_blockread(%struct.__sFILE* nocapture %fp, i32 %nelem, i32 %size, i8* nocapture %data, i8* %what, i8* %file, i32 %line) #1 {
  %1 = sext i32 %size to i64
  %2 = sext i32 %nelem to i64
  %3 = tail call i64 @fread(i8* %data, i64 %1, i64 %2, %struct.__sFILE* %fp) #4
  %4 = trunc i64 %3 to i32
  %5 = icmp eq i32 %4, %nelem
  br i1 %5, label %10, label %6

; <label>:6                                       ; preds = %0
  %7 = tail call i32* @__error() #4
  %8 = load i32* %7, align 4, !tbaa !2
  %9 = tail call i64 @ftell(%struct.__sFILE* %fp) #4
  tail call void (i32, i8*, ...)* @fatal_error(i32 %8, i8* getelementptr inbounds ([57 x i8]* @.str1, i64 0, i64 0), i8* %what, i32 %nelem, i32 %size, i32 %4, i64 %9, i8* %file, i32 %line) #4
  br label %10

; <label>:10                                      ; preds = %0, %6
  ret void
}

; Function Attrs: nounwind optsize
declare i64 @fread(i8* nocapture, i64, i64, %struct.__sFILE* nocapture) #3

attributes #0 = { alwaysinline nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!2 = !{!3, !3, i64 0}
!3 = !{!"int", !4, i64 0}
!4 = !{!"omnipotent char", !5, i64 0}
!5 = !{!"Simple C/C++ TBAA"}
