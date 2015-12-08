; ModuleID = '../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Lock/src/Lock_util.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._Lock = type { i8*, i32, i32 }

@stderr = external global %struct._IO_FILE*
@.str = private unnamed_addr constant [43 x i8] c"\0A fatal error in Lock_lock(%p)\0A bad input\0A\00", align 1
@.str1 = private unnamed_addr constant [45 x i8] c"\0A fatal error in Lock_unlock(%p)\0A bad input\0A\00", align 1

; Function Attrs: nounwind optsize uwtable
define void @Lock_lock(%struct._Lock* %lock) #0 {
entry:
  %cmp = icmp eq %struct._Lock* %lock, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([43 x i8]* @.str, i64 0, i64 0), %struct._Lock* null) #3
  tail call void @exit(i32 -1) #4
  unreachable

if.end:                                           ; preds = %entry
  %nlocks = getelementptr inbounds %struct._Lock* %lock, i64 0, i32 1
  %1 = load i32* %nlocks, align 4, !tbaa !3
  %inc = add nsw i32 %1, 1
  store i32 %inc, i32* %nlocks, align 4, !tbaa !3
  ret void
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #1

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #2

; Function Attrs: nounwind optsize uwtable
define void @Lock_unlock(%struct._Lock* %lock) #0 {
entry:
  %cmp = icmp eq %struct._Lock* %lock, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([45 x i8]* @.str1, i64 0, i64 0), %struct._Lock* null) #3
  tail call void @exit(i32 -1) #4
  unreachable

if.end:                                           ; preds = %entry
  %nunlocks = getelementptr inbounds %struct._Lock* %lock, i64 0, i32 2
  %1 = load i32* %nunlocks, align 4, !tbaa !3
  %inc = add nsw i32 %1, 1
  store i32 %inc, i32* %nunlocks, align 4, !tbaa !3
  ret void
}

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize }
attributes #4 = { noreturn nounwind optsize }

!0 = metadata !{metadata !"any pointer", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"int", metadata !1}
