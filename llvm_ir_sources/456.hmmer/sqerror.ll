; ModuleID = '../../SPEC/benchspec/CPU2006/456.hmmer/src/sqerror.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@stderr = external global %struct._IO_FILE*
@.str = private unnamed_addr constant [9 x i8] c"\0AFATAL: \00", align 1
@.str2 = private unnamed_addr constant [10 x i8] c"WARNING: \00", align 1
@.str3 = private unnamed_addr constant [21 x i8] c"\0APANIC [%s line %d] \00", align 1
@.str4 = private unnamed_addr constant [14 x i8] c"Unusual error\00", align 1
@squid_errno = common global i32 0, align 4

; Function Attrs: noreturn nounwind optsize uwtable
define void @Die(i8* nocapture %format, ...) #0 {
entry:
  %argp = alloca [1 x %struct.__va_list_tag], align 16
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %1 = call i64 @fwrite(i8* getelementptr inbounds ([9 x i8]* @.str, i64 0, i64 0), i64 8, i64 1, %struct._IO_FILE* %0)
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag]* %argp, i64 0, i64 0
  %arraydecay1 = bitcast [1 x %struct.__va_list_tag]* %argp to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %2 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call3 = call i32 @vfprintf(%struct._IO_FILE* %2, i8* %format, %struct.__va_list_tag* %arraydecay) #5
  call void @llvm.va_end(i8* %arraydecay1)
  %3 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %fputc = call i32 @fputc(i32 10, %struct._IO_FILE* %3)
  %4 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call7 = call i32 @fflush(%struct._IO_FILE* %4) #5
  call void @exit(i32 1) #6
  unreachable
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #1

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #2

; Function Attrs: nounwind optsize
declare i32 @vfprintf(%struct._IO_FILE* nocapture, i8* nocapture, %struct.__va_list_tag*) #1

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #2

; Function Attrs: nounwind optsize
declare i32 @fflush(%struct._IO_FILE* nocapture) #1

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #3

; Function Attrs: nounwind optsize uwtable
define void @Warn(i8* nocapture %format, ...) #4 {
entry:
  %argp = alloca [1 x %struct.__va_list_tag], align 16
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %1 = call i64 @fwrite(i8* getelementptr inbounds ([10 x i8]* @.str2, i64 0, i64 0), i64 9, i64 1, %struct._IO_FILE* %0)
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag]* %argp, i64 0, i64 0
  %arraydecay1 = bitcast [1 x %struct.__va_list_tag]* %argp to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %2 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call3 = call i32 @vfprintf(%struct._IO_FILE* %2, i8* %format, %struct.__va_list_tag* %arraydecay) #5
  call void @llvm.va_end(i8* %arraydecay1)
  %3 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %fputc = call i32 @fputc(i32 10, %struct._IO_FILE* %3)
  %4 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call7 = call i32 @fflush(%struct._IO_FILE* %4) #5
  ret void
}

; Function Attrs: noreturn nounwind optsize uwtable
define void @Panic(i8* %file, i32 %line) #0 {
entry:
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([21 x i8]* @.str3, i64 0, i64 0), i8* %file, i32 %line) #5
  tail call void @perror(i8* getelementptr inbounds ([14 x i8]* @.str4, i64 0, i64 0)) #5
  tail call void @exit(i32 1) #6
  unreachable
}

; Function Attrs: nounwind optsize
declare void @perror(i8* nocapture) #1

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #2

; Function Attrs: nounwind
declare i32 @fputc(i32, %struct._IO_FILE* nocapture) #2

attributes #0 = { noreturn nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { noreturn nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize }
attributes #6 = { noreturn nounwind optsize }

!0 = metadata !{metadata !"any pointer", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
