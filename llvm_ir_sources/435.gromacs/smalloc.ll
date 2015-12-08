; ModuleID = '../../SPEC/benchspec/CPU2006/435.gromacs/src/smalloc.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [43 x i8] c"malloc for %s (%d bytes, file %s, line %d)\00", align 1
@.str1 = private unnamed_addr constant [54 x i8] c"calloc for %s (nelem=%d, elsize=%d, file %s, line %d)\00", align 1
@.str2 = private unnamed_addr constant [54 x i8] c"realloc for %s (%d bytes, file %s, line %d, %s=0x%8x)\00", align 1

; Function Attrs: nounwind optsize uwtable
define noalias i8* @save_malloc(i8* %name, i8* %file, i32 %line, i32 %size) #0 {
entry:
  %cmp = icmp eq i32 %size, 0
  br i1 %cmp, label %if.end6, label %if.else

if.else:                                          ; preds = %entry
  %conv = sext i32 %size to i64
  %call = tail call noalias i8* @malloc(i64 %conv) #6
  %cmp1 = icmp eq i8* %call, null
  br i1 %cmp1, label %if.then3, label %if.end

if.then3:                                         ; preds = %if.else
  %call4 = tail call i32* @__errno_location() #7
  %0 = load i32* %call4, align 4, !tbaa !0
  tail call void (i32, i8*, ...)* @fatal_error(i32 %0, i8* getelementptr inbounds ([43 x i8]* @.str, i64 0, i64 0), i8* %name, i32 %size, i8* %file, i32 %line) #6
  br label %if.end

if.end:                                           ; preds = %if.then3, %if.else
  tail call void @llvm.memset.p0i8.i64(i8* %call, i8 0, i64 %conv, i32 1, i1 false)
  br label %if.end6

if.end6:                                          ; preds = %entry, %if.end
  %p.0 = phi i8* [ %call, %if.end ], [ null, %entry ]
  ret i8* %p.0
}

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i64) #1

; Function Attrs: optsize
declare void @fatal_error(i32, i8*, ...) #2

; Function Attrs: nounwind optsize readnone
declare i32* @__errno_location() #3

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #4

; Function Attrs: nounwind optsize uwtable
define noalias i8* @save_calloc(i8* %name, i8* %file, i32 %line, i32 %nelem, i32 %elsize) #0 {
entry:
  %cmp = icmp eq i32 %nelem, 0
  %cmp1 = icmp eq i32 %elsize, 0
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %if.end7, label %if.else

if.else:                                          ; preds = %entry
  %conv = zext i32 %nelem to i64
  %conv2 = zext i32 %elsize to i64
  %call = tail call noalias i8* @calloc(i64 %conv, i64 %conv2) #6
  %cmp3 = icmp eq i8* %call, null
  br i1 %cmp3, label %if.then5, label %if.end7

if.then5:                                         ; preds = %if.else
  %call6 = tail call i32* @__errno_location() #7
  %0 = load i32* %call6, align 4, !tbaa !0
  tail call void (i32, i8*, ...)* @fatal_error(i32 %0, i8* getelementptr inbounds ([54 x i8]* @.str1, i64 0, i64 0), i8* %name, i32 %nelem, i32 %elsize, i8* %file, i32 %line) #6
  br label %if.end7

if.end7:                                          ; preds = %entry, %if.else, %if.then5
  %p.0 = phi i8* [ null, %if.then5 ], [ %call, %if.else ], [ null, %entry ]
  ret i8* %p.0
}

; Function Attrs: nounwind optsize
declare noalias i8* @calloc(i64, i64) #1

; Function Attrs: nounwind optsize uwtable
define i8* @save_realloc(i8* %name, i8* %file, i32 %line, i8* %ptr, i32 %size) #0 {
entry:
  %cmp = icmp eq i32 %size, 0
  br i1 %cmp, label %if.end11, label %if.else

if.else:                                          ; preds = %entry
  %cmp1 = icmp eq i8* %ptr, null
  %conv = zext i32 %size to i64
  br i1 %cmp1, label %if.then2, label %if.else3

if.then2:                                         ; preds = %if.else
  %call = tail call noalias i8* @malloc(i64 %conv) #6
  br label %if.end

if.else3:                                         ; preds = %if.else
  %call5 = tail call i8* @realloc(i8* %ptr, i64 %conv) #6
  br label %if.end

if.end:                                           ; preds = %if.else3, %if.then2
  %p.0 = phi i8* [ %call, %if.then2 ], [ %call5, %if.else3 ]
  %cmp6 = icmp eq i8* %p.0, null
  br i1 %cmp6, label %if.then8, label %if.end11

if.then8:                                         ; preds = %if.end
  %call9 = tail call i32* @__errno_location() #7
  %0 = load i32* %call9, align 4, !tbaa !0
  tail call void (i32, i8*, ...)* @fatal_error(i32 %0, i8* getelementptr inbounds ([54 x i8]* @.str2, i64 0, i64 0), i8* %name, i32 %size, i8* %file, i32 %line, i8* %name, i8* %ptr) #6
  br label %if.end11

if.end11:                                         ; preds = %entry, %if.end, %if.then8
  %p.1 = phi i8* [ null, %if.then8 ], [ %p.0, %if.end ], [ null, %entry ]
  ret i8* %p.1
}

; Function Attrs: nounwind optsize
declare noalias i8* @realloc(i8* nocapture, i64) #1

; Function Attrs: nounwind optsize uwtable
define void @save_free(i8* nocapture %name, i8* nocapture %file, i32 %line, i8* %ptr) #0 {
entry:
  %cmp = icmp eq i8* %ptr, null
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call void @free(i8* %ptr) #6
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  ret void
}

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #1

; Function Attrs: nounwind optsize readnone uwtable
define i32 @maxavail() #5 {
entry:
  ret i32 255999996
}

; Function Attrs: nounwind optsize readnone uwtable
define i32 @memavail() #5 {
if.end6:
  %call5 = tail call i32 @memavail() #8
  %add = add i32 %call5, 255999996
  ret i32 %add
}

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind optsize readnone uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind optsize }
attributes #7 = { nounwind optsize readnone }
attributes #8 = { optsize }

!0 = metadata !{metadata !"int", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
