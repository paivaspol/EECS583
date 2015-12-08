; ModuleID = '../../SPEC/benchspec/CPU2006/999.specrand/src/main.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str1 = private unnamed_addr constant [22 x i8] c"seed = %d\0Acount = %d\0A\00", align 1
@.str2 = private unnamed_addr constant [15 x i8] c"%%f sequence:\0A\00", align 1
@.str3 = private unnamed_addr constant [4 x i8] c"%f\0A\00", align 1
@.str4 = private unnamed_addr constant [27 x i8] c"%%d sequence (1-2048000):\0A\00", align 1
@.str5 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@str = private unnamed_addr constant [29 x i8] c"Please supply seed and count\00"

; Function Attrs: nounwind optsize uwtable
define i32 @main(i32 %argc, i8** nocapture %argv) #0 {
entry:
  %cmp = icmp slt i32 %argc, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %puts = tail call i32 @puts(i8* getelementptr inbounds ([29 x i8]* @str, i64 0, i64 0))
  br label %return

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr inbounds i8** %argv, i64 1
  %0 = load i8** %arrayidx, align 8, !tbaa !0
  %call1 = tail call i32 @atoi(i8* %0) #5
  %arrayidx2 = getelementptr inbounds i8** %argv, i64 2
  %1 = load i8** %arrayidx2, align 8, !tbaa !0
  %call3 = tail call i32 @atoi(i8* %1) #5
  %call4 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([22 x i8]* @.str1, i64 0, i64 0), i32 %call1, i32 %call3) #6
  %call5 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([15 x i8]* @.str2, i64 0, i64 0)) #6
  tail call void @spec_srand(i32 %call1) #6
  %cmp627 = icmp sgt i32 %call3, 0
  br i1 %cmp627, label %for.body, label %for.end.thread

for.end.thread:                                   ; preds = %if.end
  %call930 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([27 x i8]* @.str4, i64 0, i64 0)) #6
  br label %return

for.body:                                         ; preds = %if.end, %for.body
  %i.028 = phi i32 [ %inc, %for.body ], [ 0, %if.end ]
  %call7 = tail call double @spec_rand() #6
  %call8 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str3, i64 0, i64 0), double %call7) #6
  %inc = add nsw i32 %i.028, 1
  %exitcond29 = icmp eq i32 %inc, %call3
  br i1 %exitcond29, label %for.end, label %for.body

for.end:                                          ; preds = %for.body
  %call9 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([27 x i8]* @.str4, i64 0, i64 0)) #6
  br i1 %cmp627, label %for.body12, label %return

for.body12:                                       ; preds = %for.end, %for.body12
  %i.126 = phi i32 [ %inc16, %for.body12 ], [ 0, %for.end ]
  %call13 = tail call double @spec_rand() #6
  %mul = fmul double %call13, 2.048000e+06
  %add = fadd double %mul, 1.000000e+00
  %conv = fptosi double %add to i32
  %call14 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str5, i64 0, i64 0), i32 %conv) #6
  %inc16 = add nsw i32 %i.126, 1
  %exitcond = icmp eq i32 %inc16, %call3
  br i1 %exitcond, label %return, label %for.body12

return:                                           ; preds = %for.end, %for.end.thread, %for.body12, %if.then
  %retval.0 = phi i32 [ 1, %if.then ], [ 0, %for.body12 ], [ 0, %for.end.thread ], [ 0, %for.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize
declare i32 @printf(i8* nocapture, ...) #1

; Function Attrs: nounwind optsize readonly
declare i32 @atoi(i8* nocapture) #2

; Function Attrs: optsize
declare void @spec_srand(i32) #3

; Function Attrs: optsize
declare double @spec_rand() #3

; Function Attrs: nounwind
declare i32 @puts(i8* nocapture) #4

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind optsize readonly }
attributes #6 = { nounwind optsize }

!0 = metadata !{metadata !"any pointer", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
