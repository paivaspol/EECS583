; ModuleID = '../../SPEC/benchspec/CPU2006/464.h264ref/src/annexb.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.NALU_t = type { i32, i32, i32, i32, i32, i32, i8* }

@.str = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@f = internal unnamed_addr global %struct._IO_FILE* null, align 8
@.str1 = private unnamed_addr constant [60 x i8] c"Fatal: cannot open Annex B bytestream file '%s', exit (-1)\0A\00", align 1
@str = private unnamed_addr constant [55 x i8] c"Fatal: cannot close Annex B bytestream file, exit (-1)\00"

; Function Attrs: nounwind optsize uwtable
define i32 @WriteAnnexbNALU(%struct.NALU_t* nocapture %n) #0 {
entry:
  %startcodeprefix_len = getelementptr inbounds %struct.NALU_t* %n, i64 0, i32 0
  %0 = load i32* %startcodeprefix_len, align 4, !tbaa !0
  %cmp = icmp sgt i32 %0, 3
  %add = select i1 %cmp, i32 32, i32 24
  %forbidden_bit = getelementptr inbounds %struct.NALU_t* %n, i64 0, i32 5
  %1 = load i32* %forbidden_bit, align 4, !tbaa !0
  %shl = shl i32 %1, 7
  %nal_reference_idc = getelementptr inbounds %struct.NALU_t* %n, i64 0, i32 4
  %2 = load i32* %nal_reference_idc, align 4, !tbaa !0
  %shl1 = shl i32 %2, 5
  %or = or i32 %shl1, %shl
  %nal_unit_type = getelementptr inbounds %struct.NALU_t* %n, i64 0, i32 3
  %3 = load i32* %nal_unit_type, align 4, !tbaa !0
  %or2 = or i32 %or, %3
  %conv = trunc i32 %or2 to i8
  %buf = getelementptr inbounds %struct.NALU_t* %n, i64 0, i32 6
  %4 = load i8** %buf, align 8, !tbaa !3
  store i8 %conv, i8* %4, align 1, !tbaa !1
  %len = getelementptr inbounds %struct.NALU_t* %n, i64 0, i32 1
  %5 = load i32* %len, align 4, !tbaa !0
  %mul = shl i32 %5, 3
  %add3 = add i32 %mul, %add
  ret i32 %add3
}

; Function Attrs: nounwind optsize uwtable
define void @OpenAnnexbFile(i8* %Filename) #0 {
entry:
  %call = tail call %struct._IO_FILE* @fopen(i8* %Filename, i8* getelementptr inbounds ([3 x i8]* @.str, i64 0, i64 0)) #4
  store %struct._IO_FILE* %call, %struct._IO_FILE** @f, align 8, !tbaa !3
  %cmp = icmp eq %struct._IO_FILE* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([60 x i8]* @.str1, i64 0, i64 0), i8* %Filename) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %entry
  ret void
}

; Function Attrs: nounwind optsize
declare noalias %struct._IO_FILE* @fopen(i8* nocapture, i8* nocapture) #1

; Function Attrs: nounwind optsize
declare i32 @printf(i8* nocapture, ...) #1

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #2

; Function Attrs: nounwind optsize uwtable
define void @CloseAnnexbFile() #0 {
entry:
  %0 = load %struct._IO_FILE** @f, align 8, !tbaa !3
  %call = tail call i32 @fclose(%struct._IO_FILE* %0) #4
  %tobool = icmp eq i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %puts = tail call i32 @puts(i8* getelementptr inbounds ([55 x i8]* @str, i64 0, i64 0))
  tail call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %entry
  ret void
}

; Function Attrs: nounwind optsize
declare i32 @fclose(%struct._IO_FILE* nocapture) #1

; Function Attrs: nounwind
declare i32 @puts(i8* nocapture) #3

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { nounwind optsize }
attributes #5 = { noreturn nounwind optsize }

!0 = metadata !{metadata !"int", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"any pointer", metadata !1}
