; ModuleID = '../../SPEC/benchspec/CPU2006/403.gcc/src/xstrerror.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@xstrerror_buf = internal global [43 x i8] zeroinitializer, align 16
@.str = private unnamed_addr constant [23 x i8] c"undocumented error #%d\00", align 1

; Function Attrs: nounwind optsize uwtable
define i8* @xstrerror(i32 %errnum) #0 {
entry:
  %call = tail call i8* @strerror(i32 %errnum) #3
  %tobool = icmp eq i8* %call, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = tail call i32 (i8*, i8*, ...)* @sprintf(i8* getelementptr inbounds ([43 x i8]* @xstrerror_buf, i64 0, i64 0), i8* getelementptr inbounds ([23 x i8]* @.str, i64 0, i64 0), i32 %errnum) #3
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %errstr.0 = phi i8* [ %call, %entry ], [ getelementptr inbounds ([43 x i8]* @xstrerror_buf, i64 0, i64 0), %if.then ]
  ret i8* %errstr.0
}

; Function Attrs: optsize
declare i8* @strerror(i32) #1

; Function Attrs: nounwind optsize
declare i32 @sprintf(i8* nocapture, i8* nocapture, ...) #2

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize }
