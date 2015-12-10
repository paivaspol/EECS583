; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/Cactus/String.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@Util_StrSep.retval = internal unnamed_addr global i8* null, align 8
@.str = private unnamed_addr constant [82 x i8] c"$Header: /cactus/Cactus/src/util/String.c,v 1.10 2002/01/28 19:45:20 tradke Exp $\00", align 1

; Function Attrs: nounwind optsize readnone ssp uwtable
define i8* @CCTKi_version_util_String_c() #0 {
  ret i8* getelementptr inbounds ([82 x i8]* @.str, i64 0, i64 0)
}

; Function Attrs: nounwind optsize ssp uwtable
define i8* @Util_StrSep(i8** nocapture %stringp, i8* nocapture readonly %delim) #1 {
  %1 = load i8** %stringp, align 8, !tbaa !2
  %2 = tail call i8* @strstr(i8* %1, i8* %delim) #7
  %3 = icmp eq i8* %2, null
  br i1 %3, label %25, label %4

; <label>:4                                       ; preds = %0
  %5 = ptrtoint i8* %2 to i64
  %6 = ptrtoint i8* %1 to i64
  %7 = sub i64 %5, %6
  %8 = icmp sgt i64 %7, -1
  br i1 %8, label %9, label %15

; <label>:9                                       ; preds = %4
  %10 = add nsw i64 %7, 1
  %11 = load i8** @Util_StrSep.retval, align 8, !tbaa !2
  %12 = tail call i8* @realloc(i8* %11, i64 %10) #7
  %13 = icmp eq i8* %12, null
  br i1 %13, label %.thread, label %.thread1

.thread1:                                         ; preds = %9
  store i8* %12, i8** @Util_StrSep.retval, align 8, !tbaa !2
  br label %17

.thread:                                          ; preds = %9
  %14 = load i8** @Util_StrSep.retval, align 8, !tbaa !2
  tail call void @free(i8* %14) #8
  store i8* null, i8** @Util_StrSep.retval, align 8, !tbaa !2
  br label %27

; <label>:15                                      ; preds = %4
  %.pr = load i8** @Util_StrSep.retval, align 8, !tbaa !2
  %16 = icmp eq i8* %.pr, null
  br i1 %16, label %27, label %17

; <label>:17                                      ; preds = %.thread1, %15
  %18 = phi i8* [ %12, %.thread1 ], [ %.pr, %15 ]
  %19 = tail call i64 @llvm.objectsize.i64.p0i8(i8* %18, i1 false)
  %20 = tail call i8* @__strncpy_chk(i8* %18, i8* %1, i64 %7, i64 %19) #7
  %21 = load i8** @Util_StrSep.retval, align 8, !tbaa !2
  %22 = getelementptr inbounds i8* %21, i64 %7
  store i8 0, i8* %22, align 1, !tbaa !6
  %23 = tail call i64 @strlen(i8* %delim) #7
  %24 = getelementptr inbounds i8* %2, i64 %23
  store i8* %24, i8** %stringp, align 8, !tbaa !2
  %.pre = load i8** @Util_StrSep.retval, align 8, !tbaa !2
  br label %27

; <label>:25                                      ; preds = %0
  %26 = load i8** @Util_StrSep.retval, align 8, !tbaa !2
  tail call void @free(i8* %26) #8
  store i8* null, i8** @Util_StrSep.retval, align 8, !tbaa !2
  br label %27

; <label>:27                                      ; preds = %.thread, %15, %17, %25
  %28 = phi i8* [ null, %.thread ], [ null, %15 ], [ %.pre, %17 ], [ null, %25 ]
  ret i8* %28
}

; Function Attrs: nounwind optsize readonly
declare i8* @strstr(i8*, i8* nocapture) #2

; Function Attrs: nounwind optsize
declare noalias i8* @realloc(i8* nocapture, i64) #3

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #3

; Function Attrs: nounwind optsize
declare i8* @__strncpy_chk(i8*, i8*, i64, i64) #3

; Function Attrs: nounwind readnone
declare i64 @llvm.objectsize.i64.p0i8(i8*, i1) #4

; Function Attrs: nounwind optsize readonly
declare i64 @strlen(i8* nocapture) #2

; Function Attrs: nounwind optsize ssp uwtable
define i32 @Util_SplitString(i8** nocapture %before, i8** nocapture %after, i8* %string, i8* nocapture readonly %sep) #1 {
  %1 = tail call i8* @strstr(i8* %string, i8* %sep) #7
  %2 = icmp eq i8* %1, null
  br i1 %2, label %20, label %3

; <label>:3                                       ; preds = %0
  %4 = ptrtoint i8* %1 to i64
  %5 = ptrtoint i8* %string to i64
  %6 = sub i64 %4, %5
  %7 = add nsw i64 %6, 1
  %8 = tail call i8* @malloc(i64 %7) #7
  store i8* %8, i8** %before, align 8, !tbaa !2
  %9 = tail call i64 @strlen(i8* %string) #7
  %10 = tail call i64 @strlen(i8* %sep) #7
  %11 = sub i64 1, %6
  %12 = add i64 %11, %9
  %13 = sub i64 %12, %10
  %14 = tail call i8* @malloc(i64 %13) #7
  store i8* %14, i8** %after, align 8, !tbaa !2
  %15 = load i8** %before, align 8, !tbaa !2
  %16 = icmp eq i8* %15, null
  %17 = icmp eq i8* %14, null
  %or.cond = or i1 %17, %16
  br i1 %or.cond, label %18, label %21

; <label>:18                                      ; preds = %3
  tail call void @free(i8* %15) #8
  store i8* null, i8** %before, align 8, !tbaa !2
  %19 = load i8** %after, align 8, !tbaa !2
  tail call void @free(i8* %19) #8
  store i8* null, i8** %after, align 8, !tbaa !2
  %.pr = load i8** %before, align 8, !tbaa !2
  br label %21

; <label>:20                                      ; preds = %0
  store i8* null, i8** %before, align 8, !tbaa !2
  store i8* null, i8** %after, align 8, !tbaa !2
  br label %45

; <label>:21                                      ; preds = %3, %18
  %22 = phi i8* [ %14, %3 ], [ null, %18 ]
  %23 = phi i8* [ %15, %3 ], [ %.pr, %18 ]
  %retval.0.ph = phi i32 [ 3, %3 ], [ 2, %18 ]
  %24 = icmp eq i8* %23, null
  %25 = icmp eq i8* %22, null
  %or.cond7 = or i1 %24, %25
  br i1 %or.cond7, label %45, label %26

; <label>:26                                      ; preds = %21
  %sext = shl i64 %6, 32
  %27 = ashr exact i64 %sext, 32
  %28 = tail call i64 @llvm.objectsize.i64.p0i8(i8* %23, i1 false)
  %29 = tail call i8* @__strncpy_chk(i8* %23, i8* %string, i64 %27, i64 %28) #7
  %30 = load i8** %before, align 8, !tbaa !2
  %31 = getelementptr inbounds i8* %30, i64 %27
  store i8 0, i8* %31, align 1, !tbaa !6
  %32 = load i8** %after, align 8, !tbaa !2
  %33 = tail call i64 @strlen(i8* %sep) #7
  %34 = getelementptr inbounds i8* %1, i64 %33
  %35 = tail call i64 @strlen(i8* %string) #7
  %sum = add i64 %33, %27
  %36 = sub i64 %35, %sum
  %37 = tail call i64 @llvm.objectsize.i64.p0i8(i8* %32, i1 false)
  %38 = tail call i8* @__strncpy_chk(i8* %32, i8* %34, i64 %36, i64 %37) #7
  %39 = tail call i64 @strlen(i8* %string) #7
  %40 = sub i64 %39, %6
  %41 = tail call i64 @strlen(i8* %sep) #7
  %42 = sub i64 %40, %41
  %43 = load i8** %after, align 8, !tbaa !2
  %44 = getelementptr inbounds i8* %43, i64 %42
  store i8 0, i8* %44, align 1, !tbaa !6
  br label %45

; <label>:45                                      ; preds = %20, %21, %26
  %retval.1 = phi i32 [ 0, %26 ], [ %retval.0.ph, %21 ], [ 1, %20 ]
  ret i32 %retval.1
}

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i64) #3

; Function Attrs: nounwind optsize ssp uwtable
define i8* @Util_Strdup(i8* %s) #1 {
  %1 = tail call i64 @strlen(i8* %s) #7
  %2 = add i64 %1, 1
  %3 = tail call i8* @malloc(i64 %2) #7
  %4 = icmp eq i8* %3, null
  br i1 %4, label %8, label %5

; <label>:5                                       ; preds = %0
  %6 = tail call i64 @llvm.objectsize.i64.p0i8(i8* %3, i1 false)
  %7 = tail call i8* @__strcpy_chk(i8* %3, i8* %s, i64 %6) #7
  br label %8

; <label>:8                                       ; preds = %0, %5
  ret i8* %3
}

; Function Attrs: nounwind optsize
declare i8* @__strcpy_chk(i8*, i8*, i64) #3

; Function Attrs: nounwind optsize ssp uwtable
define i32 @Util_StrCmpi(i8* nocapture readonly %string1, i8* nocapture readonly %string2) #1 {
  br label %1

; <label>:1                                       ; preds = %12, %0
  %.02 = phi i8* [ %string2, %0 ], [ %14, %12 ]
  %.0 = phi i8* [ %string1, %0 ], [ %13, %12 ]
  %2 = load i8* %.0, align 1, !tbaa !6
  %3 = sext i8 %2 to i32
  %4 = tail call i32 @__tolower(i32 %3) #7
  %5 = load i8* %.02, align 1, !tbaa !6
  %6 = sext i8 %5 to i32
  %7 = tail call i32 @__tolower(i32 %6) #7
  %8 = icmp eq i32 %4, %7
  br i1 %8, label %9, label %.critedge

; <label>:9                                       ; preds = %1
  %10 = load i8* %.0, align 1, !tbaa !6
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %.critedge, label %12

; <label>:12                                      ; preds = %9
  %13 = getelementptr inbounds i8* %.0, i64 1
  %14 = getelementptr inbounds i8* %.02, i64 1
  %15 = load i8* %.02, align 1, !tbaa !6
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %.critedge, label %1

.critedge:                                        ; preds = %12, %9, %1
  %.lcssa5 = phi i32 [ %4, %12 ], [ %4, %9 ], [ %7, %1 ]
  %17 = sub nsw i32 %4, %.lcssa5
  ret i32 %17
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @Util_SplitFilename(i8** nocapture %dir, i8** nocapture %file, i8* %string) #1 {
  %1 = tail call i8* @Util_Strdup(i8* %string) #8
  store i8* %1, i8** %file, align 8, !tbaa !2
  %2 = icmp eq i8* %1, null
  %3 = ptrtoint i8* %1 to i64
  br i1 %2, label %12, label %4

; <label>:4                                       ; preds = %0
  %5 = tail call i8* @strrchr(i8* %1, i32 47) #7
  %6 = icmp eq i8* %5, null
  br i1 %6, label %11, label %7

; <label>:7                                       ; preds = %4
  %8 = bitcast i8** %dir to i64*
  store i64 %3, i64* %8, align 8, !tbaa !2
  store i8 0, i8* %5, align 1, !tbaa !6
  %9 = getelementptr inbounds i8* %5, i64 1
  %10 = tail call i8* @Util_Strdup(i8* %9) #8
  store i8* %10, i8** %file, align 8, !tbaa !2
  br label %12

; <label>:11                                      ; preds = %4
  store i8* null, i8** %dir, align 8, !tbaa !2
  %.pre = load i8** %file, align 8, !tbaa !2
  br label %12

; <label>:12                                      ; preds = %0, %7, %11
  %13 = phi i8* [ null, %0 ], [ %10, %7 ], [ %.pre, %11 ]
  %not. = icmp eq i8* %13, null
  %14 = sext i1 %not. to i32
  ret i32 %14
}

; Function Attrs: nounwind optsize readonly
declare i8* @strrchr(i8*, i32) #2

; Function Attrs: nounwind optsize ssp uwtable
define i32 @Util_asprintf(i8** nocapture %buffer, i8* %fmt, ...) #1 {
  %args = alloca [1 x %struct.__va_list_tag], align 16
  %1 = getelementptr inbounds [1 x %struct.__va_list_tag]* %args, i64 0, i64 0
  %2 = bitcast [1 x %struct.__va_list_tag]* %args to i8*
  call void @llvm.va_start(i8* %2)
  %3 = call i32 @Util_vsnprintf(i8* null, i64 0, i8* %fmt, %struct.__va_list_tag* %1) #7
  %4 = add nsw i32 %3, 1
  %5 = sext i32 %4 to i64
  %6 = call i8* @malloc(i64 %5) #7
  store i8* %6, i8** %buffer, align 8, !tbaa !2
  %7 = icmp eq i8* %6, null
  br i1 %7, label %11, label %8

; <label>:8                                       ; preds = %0
  call void @llvm.va_start(i8* %2)
  %9 = load i8** %buffer, align 8, !tbaa !2
  %10 = call i32 @Util_vsnprintf(i8* %9, i64 %5, i8* %fmt, %struct.__va_list_tag* %1) #7
  call void @llvm.va_end(i8* %2)
  br label %11

; <label>:11                                      ; preds = %0, %8
  %count.0 = phi i32 [ %3, %8 ], [ 0, %0 ]
  ret i32 %count.0
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #5

; Function Attrs: optsize
declare i32 @Util_vsnprintf(i8*, i64, i8*, %struct.__va_list_tag*) #6

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #5

; Function Attrs: nounwind optsize ssp uwtable
define i32 @Util_asnprintf(i8** nocapture %buffer, i64 %size, i8* %fmt, ...) #1 {
  %args = alloca [1 x %struct.__va_list_tag], align 16
  %1 = getelementptr inbounds [1 x %struct.__va_list_tag]* %args, i64 0, i64 0
  %2 = bitcast [1 x %struct.__va_list_tag]* %args to i8*
  call void @llvm.va_start(i8* %2)
  %3 = call i32 @Util_vsnprintf(i8* null, i64 0, i8* %fmt, %struct.__va_list_tag* %1) #7
  %4 = sext i32 %3 to i64
  %5 = add nsw i64 %4, 1
  %6 = icmp ugt i64 %5, %size
  %7 = load i8** %buffer, align 8, !tbaa !2
  br i1 %6, label %8, label %thread-pre-split

; <label>:8                                       ; preds = %0
  call void @free(i8* %7) #8
  %9 = call i8* @malloc(i64 %5) #7
  store i8* %9, i8** %buffer, align 8, !tbaa !2
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %0, %8
  %10 = phi i8* [ %9, %8 ], [ %7, %0 ]
  %11 = icmp eq i8* %10, null
  br i1 %11, label %15, label %12

; <label>:12                                      ; preds = %thread-pre-split
  call void @llvm.va_start(i8* %2)
  %13 = load i8** %buffer, align 8, !tbaa !2
  %14 = call i32 @Util_vsnprintf(i8* %13, i64 %5, i8* %fmt, %struct.__va_list_tag* %1) #7
  call void @llvm.va_end(i8* %2)
  br label %15

; <label>:15                                      ; preds = %thread-pre-split, %12
  %count.0 = phi i32 [ %3, %12 ], [ 0, %thread-pre-split ]
  ret i32 %count.0
}

; Function Attrs: optsize
declare i32 @__tolower(i32) #6

attributes #0 = { nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind }
attributes #6 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind optsize }
attributes #8 = { optsize }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!2 = !{!3, !3, i64 0}
!3 = !{!"any pointer", !4, i64 0}
!4 = !{!"omnipotent char", !5, i64 0}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!4, !4, i64 0}
