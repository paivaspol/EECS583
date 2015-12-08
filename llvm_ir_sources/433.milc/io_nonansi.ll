; ModuleID = '../../SPEC/benchspec/CPU2006/433.milc/src/io_nonansi.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@.str = private unnamed_addr constant [48 x i8] c"g_open: Node %d. Append not supported in PIOFS\0A\00", align 1
@this_node = external global i32
@.str1 = private unnamed_addr constant [41 x i8] c"g_open: Node %d. mode %s not recognized\0A\00", align 1
@.str2 = private unnamed_addr constant [37 x i8] c"g_open: Node %d error %d opening %s\0A\00", align 1
@.str3 = private unnamed_addr constant [33 x i8] c"g_open: Node %d can't malloc fp\0A\00", align 1
@stdout = external global %struct._IO_FILE*

; Function Attrs: nounwind optsize uwtable
define noalias %struct._IO_FILE* @g_open(i8* %filename, i8* %mode) #0 {
entry:
  %0 = load i8* %mode, align 1, !tbaa !0
  switch i8 %0, label %if.else17 [
    i8 97, label %if.then
    i8 119, label %if.end21
    i8 114, label %if.then12
  ]

if.then:                                          ; preds = %entry
  %1 = load i32* @this_node, align 4, !tbaa !2
  %call = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([48 x i8]* @.str, i64 0, i64 0), i32 %1) #5
  br label %return

if.then12:                                        ; preds = %entry
  %call13 = tail call i8* @strchr(i8* %mode, i32 43) #6
  %cmp14 = icmp ne i8* %call13, null
  %. = select i1 %cmp14, i32 2, i32 0
  br label %if.end21

if.else17:                                        ; preds = %entry
  %2 = load i32* @this_node, align 4, !tbaa !2
  %call18 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([41 x i8]* @.str1, i64 0, i64 0), i32 %2, i8* %mode) #5
  br label %return

if.end21:                                         ; preds = %entry, %if.then12
  %oflg.0 = phi i32 [ %., %if.then12 ], [ 65, %entry ]
  %call22 = tail call i32 (i8*, i32, ...)* @open(i8* %filename, i32 %oflg.0, i32 420) #5
  %cmp23 = icmp eq i32 %call22, -1
  br i1 %cmp23, label %if.then25, label %if.end28

if.then25:                                        ; preds = %if.end21
  %3 = load i32* @this_node, align 4, !tbaa !2
  %call26 = tail call i32* @__errno_location() #7
  %4 = load i32* %call26, align 4, !tbaa !2
  %call27 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([37 x i8]* @.str2, i64 0, i64 0), i32 %3, i32 %4, i8* %filename) #5
  br label %return

if.end28:                                         ; preds = %if.end21
  %call29 = tail call noalias i8* @calloc(i64 1, i64 4) #5
  %5 = bitcast i8* %call29 to i32*
  %cmp30 = icmp eq i8* %call29, null
  br i1 %cmp30, label %if.then32, label %if.end35

if.then32:                                        ; preds = %if.end28
  %6 = load i32* @this_node, align 4, !tbaa !2
  %call33 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([33 x i8]* @.str3, i64 0, i64 0), i32 %6) #5
  %7 = load %struct._IO_FILE** @stdout, align 8, !tbaa !3
  %call34 = tail call i32 @fflush(%struct._IO_FILE* %7) #5
  tail call void @terminate(i32 1) #5
  br label %if.end35

if.end35:                                         ; preds = %if.then32, %if.end28
  store i32 %call22, i32* %5, align 4, !tbaa !2
  %8 = bitcast i8* %call29 to %struct._IO_FILE*
  br label %return

return:                                           ; preds = %if.end35, %if.then25, %if.else17, %if.then
  %retval.0 = phi %struct._IO_FILE* [ null, %if.then ], [ null, %if.then25 ], [ %8, %if.end35 ], [ null, %if.else17 ]
  ret %struct._IO_FILE* %retval.0
}

; Function Attrs: nounwind optsize
declare i32 @printf(i8* nocapture, ...) #1

; Function Attrs: nounwind optsize readonly
declare i8* @strchr(i8*, i32) #2

; Function Attrs: optsize
declare i32 @open(i8* nocapture, i32, ...) #3

; Function Attrs: nounwind optsize readnone
declare i32* @__errno_location() #4

; Function Attrs: nounwind optsize
declare noalias i8* @calloc(i64, i64) #1

; Function Attrs: nounwind optsize
declare i32 @fflush(%struct._IO_FILE* nocapture) #1

; Function Attrs: optsize
declare void @terminate(i32) #3

; Function Attrs: nounwind optsize uwtable
define i32 @g_seek(%struct._IO_FILE* nocapture %stream, i64 %offset, i32 %whence) #0 {
entry:
  %0 = getelementptr inbounds %struct._IO_FILE* %stream, i64 0, i32 0
  %1 = load i32* %0, align 4, !tbaa !2
  %call = tail call i64 @lseek(i32 %1, i64 %offset, i32 %whence) #5
  %conv = trunc i64 %call to i32
  ret i32 %conv
}

; Function Attrs: nounwind optsize
declare i64 @lseek(i32, i64, i32) #1

; Function Attrs: nounwind optsize uwtable
define i64 @g_write(i8* nocapture %ptr, i64 %size, i64 %nmemb, %struct._IO_FILE* nocapture %stream) #0 {
entry:
  %0 = getelementptr inbounds %struct._IO_FILE* %stream, i64 0, i32 0
  %1 = load i32* %0, align 4, !tbaa !2
  %mul = shl i64 %size, 32
  %sext = mul i64 %mul, %nmemb
  %conv1 = ashr exact i64 %sext, 32
  %call = tail call i64 @write(i32 %1, i8* %ptr, i64 %conv1) #5
  %div = udiv i64 %call, %size
  ret i64 %div
}

; Function Attrs: optsize
declare i64 @write(i32, i8* nocapture, i64) #3

; Function Attrs: nounwind optsize uwtable
define i64 @g_read(i8* nocapture %ptr, i64 %size, i64 %nmemb, %struct._IO_FILE* nocapture %stream) #0 {
entry:
  %0 = getelementptr inbounds %struct._IO_FILE* %stream, i64 0, i32 0
  %1 = load i32* %0, align 4, !tbaa !2
  %mul = shl i64 %size, 32
  %sext = mul i64 %mul, %nmemb
  %conv1 = ashr exact i64 %sext, 32
  %call = tail call i64 @read(i32 %1, i8* %ptr, i64 %conv1) #5
  %div = udiv i64 %call, %size
  ret i64 %div
}

; Function Attrs: optsize
declare i64 @read(i32, i8* nocapture, i64) #3

; Function Attrs: nounwind optsize uwtable
define i32 @g_close(%struct._IO_FILE* nocapture %stream) #0 {
entry:
  %0 = getelementptr inbounds %struct._IO_FILE* %stream, i64 0, i32 0
  %1 = load i32* %0, align 4, !tbaa !2
  %call = tail call i32 @close(i32 %1) #5
  %2 = bitcast %struct._IO_FILE* %stream to i8*
  tail call void @free(i8* %2) #5
  ret i32 %call
}

; Function Attrs: optsize
declare i32 @close(i32) #3

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #1

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize }
attributes #6 = { nounwind optsize readonly }
attributes #7 = { nounwind optsize readnone }

!0 = metadata !{metadata !"omnipotent char", metadata !1}
!1 = metadata !{metadata !"Simple C/C++ TBAA"}
!2 = metadata !{metadata !"int", metadata !0}
!3 = metadata !{metadata !"any pointer", metadata !0}
