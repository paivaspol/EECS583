; ModuleID = '../../SPEC/benchspec/CPU2006/454.calculix/src/u_calloc.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str1 = private unnamed_addr constant [18 x i8] c"num=%zd,size=%zd\0A\00", align 1
@str = private unnamed_addr constant [44 x i8] c"*ERROR in u_calloc: error allocating memory\00"

; Function Attrs: nounwind optsize uwtable
define noalias i8* @u_calloc(i64 %num, i64 %size) #0 {
entry:
  %cmp = icmp eq i64 %num, 0
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %call = tail call noalias i8* @calloc(i64 %num, i64 %size) #4
  %cmp1 = icmp eq i8* %call, null
  br i1 %cmp1, label %if.then2, label %return

if.then2:                                         ; preds = %if.end
  %puts = tail call i32 @puts(i8* getelementptr inbounds ([44 x i8]* @str, i64 0, i64 0))
  %call4 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([18 x i8]* @.str1, i64 0, i64 0), i64 %num, i64 %size) #4
  tail call void @exit(i32 16) #5
  unreachable

return:                                           ; preds = %if.end, %entry
  %retval.0 = phi i8* [ null, %entry ], [ %call, %if.end ]
  ret i8* %retval.0
}

; Function Attrs: nounwind optsize
declare noalias i8* @calloc(i64, i64) #1

; Function Attrs: nounwind optsize
declare i32 @printf(i8* nocapture, ...) #1

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #2

; Function Attrs: nounwind
declare i32 @puts(i8* nocapture) #3

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { nounwind optsize }
attributes #5 = { noreturn nounwind optsize }
