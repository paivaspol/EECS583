; ModuleID = '../../SPEC/benchspec/CPU2006/435.gromacs/src/binio.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@.str = private unnamed_addr constant [57 x i8] c"writing %s (%dx%d, len=%d, pos=%d) from file %s, line %d\00", align 1
@.str1 = private unnamed_addr constant [57 x i8] c"reading %s (%dx%d, len=%d, pos=%d) from file %s, line %d\00", align 1

; Function Attrs: nounwind optsize uwtable
define void @_blockwrite(%struct._IO_FILE* nocapture %fp, i32 %nelem, i32 %size, i8* nocapture %data, i8* %what, i8* %file, i32 %line) #0 {
entry:
  %conv = sext i32 %size to i64
  %conv1 = sext i32 %nelem to i64
  %call = tail call i64 @fwrite(i8* %data, i64 %conv, i64 %conv1, %struct._IO_FILE* %fp) #4
  %conv2 = trunc i64 %call to i32
  %cmp = icmp eq i32 %conv2, %nelem
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call4 = tail call i32* @__errno_location() #5
  %0 = load i32* %call4, align 4, !tbaa !0
  %call5 = tail call i64 @ftell(%struct._IO_FILE* %fp) #4
  tail call void (i32, i8*, ...)* @fatal_error(i32 %0, i8* getelementptr inbounds ([57 x i8]* @.str, i64 0, i64 0), i8* %what, i32 %nelem, i32 %size, i32 %conv2, i64 %call5, i8* %file, i32 %line) #4
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  ret void
}

; Function Attrs: nounwind optsize
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #1

; Function Attrs: optsize
declare void @fatal_error(i32, i8*, ...) #2

; Function Attrs: nounwind optsize readnone
declare i32* @__errno_location() #3

; Function Attrs: nounwind optsize
declare i64 @ftell(%struct._IO_FILE* nocapture) #1

; Function Attrs: nounwind optsize uwtable
define void @_blockread(%struct._IO_FILE* nocapture %fp, i32 %nelem, i32 %size, i8* nocapture %data, i8* %what, i8* %file, i32 %line) #0 {
entry:
  %conv = sext i32 %size to i64
  %conv1 = sext i32 %nelem to i64
  %call = tail call i64 @fread(i8* %data, i64 %conv, i64 %conv1, %struct._IO_FILE* %fp) #4
  %conv2 = trunc i64 %call to i32
  %cmp = icmp eq i32 %conv2, %nelem
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call4 = tail call i32* @__errno_location() #5
  %0 = load i32* %call4, align 4, !tbaa !0
  %call5 = tail call i64 @ftell(%struct._IO_FILE* %fp) #4
  tail call void (i32, i8*, ...)* @fatal_error(i32 %0, i8* getelementptr inbounds ([57 x i8]* @.str1, i64 0, i64 0), i8* %what, i32 %nelem, i32 %size, i32 %conv2, i64 %call5, i8* %file, i32 %line) #4
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  ret void
}

; Function Attrs: nounwind optsize
declare i64 @fread(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #1

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize }
attributes #5 = { nounwind optsize readnone }

!0 = metadata !{metadata !"int", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
