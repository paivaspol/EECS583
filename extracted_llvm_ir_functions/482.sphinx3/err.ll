; ModuleID = '../../SPEC/benchspec/CPU2006/482.sphinx3/src/err.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@stderr = external global %struct._IO_FILE*
@.str = private unnamed_addr constant [21 x i8] c"%s: \22%s\22, line %ld: \00", align 1
@stdout = external global %struct._IO_FILE*
@.str1 = private unnamed_addr constant [14 x i8] c"%s: %s(%ld): \00", align 1
@.str2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: nounwind optsize uwtable
define void @_E__pr_header(i8* %f, i64 %ln, i8* %msg) #0 {
entry:
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 @fflush(%struct._IO_FILE* %0) #6
  %1 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call1 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([21 x i8]* @.str, i64 0, i64 0), i8* %msg, i8* %f, i64 %ln) #6
  ret void
}

; Function Attrs: nounwind optsize
declare i32 @fflush(%struct._IO_FILE* nocapture) #1

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #1

; Function Attrs: nounwind optsize uwtable
define void @_E__pr_info_header(i8* %f, i64 %ln, i8* %msg) #0 {
entry:
  %0 = load %struct._IO_FILE** @stdout, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([14 x i8]* @.str1, i64 0, i64 0), i8* %msg, i8* %f, i64 %ln) #6
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @_E__pr_warn(i8* nocapture %fmt, ...) #0 {
entry:
  %pvar = alloca [1 x %struct.__va_list_tag], align 16
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag]* %pvar, i64 0, i64 0
  %arraydecay1 = bitcast [1 x %struct.__va_list_tag]* %pvar to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = call i32 @vfprintf(%struct._IO_FILE* %0, i8* %fmt, %struct.__va_list_tag* %arraydecay) #6
  call void @llvm.va_end(i8* %arraydecay1)
  %1 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call5 = call i32 @fflush(%struct._IO_FILE* %1) #6
  ret void
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #2

; Function Attrs: nounwind optsize
declare i32 @vfprintf(%struct._IO_FILE* nocapture, i8* nocapture, %struct.__va_list_tag*) #1

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #2

; Function Attrs: nounwind optsize uwtable
define void @_E__pr_info(i8* nocapture %fmt, ...) #0 {
entry:
  %pvar = alloca [1 x %struct.__va_list_tag], align 16
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag]* %pvar, i64 0, i64 0
  %arraydecay1 = bitcast [1 x %struct.__va_list_tag]* %pvar to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %0 = load %struct._IO_FILE** @stdout, align 8, !tbaa !0
  %call = call i32 @vfprintf(%struct._IO_FILE* %0, i8* %fmt, %struct.__va_list_tag* %arraydecay) #6
  call void @llvm.va_end(i8* %arraydecay1)
  ret void
}

; Function Attrs: noreturn nounwind optsize uwtable
define void @_E__die_error(i8* nocapture %fmt, ...) #3 {
entry:
  %pvar = alloca [1 x %struct.__va_list_tag], align 16
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag]* %pvar, i64 0, i64 0
  %arraydecay1 = bitcast [1 x %struct.__va_list_tag]* %pvar to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = call i32 @vfprintf(%struct._IO_FILE* %0, i8* %fmt, %struct.__va_list_tag* %arraydecay) #6
  %1 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call3 = call i32 @fflush(%struct._IO_FILE* %1) #6
  call void @llvm.va_end(i8* %arraydecay1)
  %2 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call6 = call i32 @fflush(%struct._IO_FILE* %2) #6
  call void @exit(i32 -1) #7
  unreachable
}

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #4

; Function Attrs: noreturn nounwind optsize uwtable
define void @_E__fatal_sys_error(i8* nocapture %fmt, ...) #3 {
entry:
  %pvar = alloca [1 x %struct.__va_list_tag], align 16
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag]* %pvar, i64 0, i64 0
  %arraydecay1 = bitcast [1 x %struct.__va_list_tag]* %pvar to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = call i32 @vfprintf(%struct._IO_FILE* %0, i8* %fmt, %struct.__va_list_tag* %arraydecay) #6
  call void @llvm.va_end(i8* %arraydecay1)
  %1 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call5 = call i32 @_IO_putc(i32 59, %struct._IO_FILE* %1) #6
  %2 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call6 = call i32 @_IO_putc(i32 32, %struct._IO_FILE* %2) #6
  call void @perror(i8* getelementptr inbounds ([1 x i8]* @.str2, i64 0, i64 0)) #6
  %3 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call7 = call i32 @fflush(%struct._IO_FILE* %3) #6
  %call8 = call i32* @__errno_location() #8
  %4 = load i32* %call8, align 4, !tbaa !3
  call void @exit(i32 %4) #7
  unreachable
}

; Function Attrs: nounwind optsize
declare i32 @_IO_putc(i32, %struct._IO_FILE* nocapture) #1

; Function Attrs: nounwind optsize
declare void @perror(i8* nocapture) #1

; Function Attrs: nounwind optsize readnone
declare i32* @__errno_location() #5

; Function Attrs: nounwind optsize uwtable
define void @_E__sys_error(i8* nocapture %fmt, ...) #0 {
entry:
  %pvar = alloca [1 x %struct.__va_list_tag], align 16
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag]* %pvar, i64 0, i64 0
  %arraydecay1 = bitcast [1 x %struct.__va_list_tag]* %pvar to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = call i32 @vfprintf(%struct._IO_FILE* %0, i8* %fmt, %struct.__va_list_tag* %arraydecay) #6
  call void @llvm.va_end(i8* %arraydecay1)
  %1 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call5 = call i32 @_IO_putc(i32 59, %struct._IO_FILE* %1) #6
  %2 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call6 = call i32 @_IO_putc(i32 32, %struct._IO_FILE* %2) #6
  call void @perror(i8* getelementptr inbounds ([1 x i8]* @.str2, i64 0, i64 0)) #6
  %3 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call7 = call i32 @fflush(%struct._IO_FILE* %3) #6
  ret void
}

; Function Attrs: noreturn nounwind optsize uwtable
define void @_E__abort_error(i8* nocapture %fmt, ...) #3 {
entry:
  %pvar = alloca [1 x %struct.__va_list_tag], align 16
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag]* %pvar, i64 0, i64 0
  %arraydecay1 = bitcast [1 x %struct.__va_list_tag]* %pvar to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = call i32 @vfprintf(%struct._IO_FILE* %0, i8* %fmt, %struct.__va_list_tag* %arraydecay) #6
  call void @llvm.va_end(i8* %arraydecay1)
  %1 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call5 = call i32 @fflush(%struct._IO_FILE* %1) #6
  call void @abort() #7
  unreachable
}

; Function Attrs: noreturn nounwind optsize
declare void @abort() #4

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { noreturn nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind optsize }
attributes #7 = { noreturn nounwind optsize }
attributes #8 = { nounwind optsize readnone }

!0 = metadata !{metadata !"any pointer", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"int", metadata !1}
