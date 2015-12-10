; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/Cactus/File.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.stat = type { i32, i16, i16, i64, i32, i32, i32, %struct.timespec, %struct.timespec, %struct.timespec, %struct.timespec, i64, i64, i32, i32, i32, i32, [2 x i64] }
%struct.timespec = type { i64, i64 }

@.str = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str1 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@.str2 = private unnamed_addr constant [80 x i8] c"$Header: /cactus/Cactus/src/util/File.c,v 1.27 2002/01/18 16:29:01 tradke Exp $\00", align 1

; Function Attrs: nounwind optsize readnone ssp uwtable
define i8* @CCTKi_version_util_File_c() #0 {
  ret i8* getelementptr inbounds ([80 x i8]* @.str2, i64 0, i64 0)
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTK_CreateDirectory(i32 %mode, i8* %pathname) #1 {
  %path = alloca i8*, align 8
  %statbuf = alloca %struct.stat, align 8
  %1 = bitcast %struct.stat* %statbuf to i8*
  call void @llvm.lifetime.start(i64 144, i8* %1) #2
  %2 = tail call i64 @strlen(i8* %pathname) #7
  %3 = add i64 %2, 1
  %4 = tail call i8* @malloc(i64 %3) #7
  %5 = icmp eq i8* %4, null
  br i1 %5, label %58, label %6

; <label>:6                                       ; preds = %0
  store i8 0, i8* %4, align 1, !tbaa !2
  store i8* %pathname, i8** %path, align 8, !tbaa !5
  %7 = call i64 @llvm.objectsize.i64.p0i8(i8* %4, i1 false)
  %8 = trunc i32 %mode to i16
  %9 = getelementptr inbounds %struct.stat* %statbuf, i64 0, i32 1
  br label %.thread.outer

.thread.outer:                                    ; preds = %32, %28, %6
  %retval.0.ph = phi i32 [ 0, %6 ], [ 1, %28 ], [ 1, %32 ]
  br label %.thread

.thread:                                          ; preds = %.thread.outer, %25
  %10 = call i8* @Util_StrSep(i8** %path, i8* getelementptr inbounds ([2 x i8]* @.str, i64 0, i64 0)) #7
  %11 = icmp eq i8* %10, null
  br i1 %11, label %36, label %12

; <label>:12                                      ; preds = %.thread
  %13 = load i8* %4, align 1, !tbaa !2
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %17, label %15

; <label>:15                                      ; preds = %12
  %16 = call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* %4, i32 0, i64 %7, i8* getelementptr inbounds ([6 x i8]* @.str1, i64 0, i64 0), i8* %4, i8* %10) #7
  br label %22

; <label>:17                                      ; preds = %12
  %18 = load i8* %10, align 1, !tbaa !2
  %19 = icmp ne i8 %18, 0
  %20 = select i1 %19, i8* %10, i8* getelementptr inbounds ([2 x i8]* @.str, i64 0, i64 0)
  %21 = call i8* @__strcpy_chk(i8* %4, i8* %20, i64 %7) #7
  br label %22

; <label>:22                                      ; preds = %17, %15
  %23 = call i32 @"\01_stat$INODE64"(i8* %4, %struct.stat* %statbuf) #7
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %32, label %25

; <label>:25                                      ; preds = %22
  %26 = call i32 @mkdir(i8* %4, i16 zeroext %8) #7
  %27 = icmp eq i32 %26, -1
  br i1 %27, label %28, label %.thread

; <label>:28                                      ; preds = %25
  %29 = call i32* @__error() #7
  %30 = load i32* %29, align 4, !tbaa !7
  %31 = icmp eq i32 %30, 17
  br i1 %31, label %.thread.outer, label %.thread9

; <label>:32                                      ; preds = %22
  %33 = load i16* %9, align 4, !tbaa !9
  %34 = and i16 %33, -4096
  %35 = icmp eq i16 %34, 16384
  br i1 %35, label %.thread.outer, label %.thread9

; <label>:36                                      ; preds = %.thread
  %37 = load i8** %path, align 8, !tbaa !5
  %38 = ptrtoint i8* %37 to i64
  %39 = ptrtoint i8* %pathname to i64
  %40 = sub i64 %38, %39
  %41 = call i64 @strlen(i8* %pathname) #7
  %42 = icmp ult i64 %40, %41
  br i1 %42, label %43, label %.thread9

; <label>:43                                      ; preds = %36
  %44 = call i32 @"\01_stat$INODE64"(i8* %pathname, %struct.stat* %statbuf) #7
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %54, label %46

; <label>:46                                      ; preds = %43
  %47 = call i32 @mkdir(i8* %pathname, i16 zeroext %8) #7
  %48 = icmp eq i32 %47, -1
  br i1 %48, label %49, label %.thread9

; <label>:49                                      ; preds = %46
  %50 = call i32* @__error() #7
  %51 = load i32* %50, align 4, !tbaa !7
  %52 = icmp eq i32 %51, 17
  %53 = select i1 %52, i32 1, i32 -2
  br label %.thread9

; <label>:54                                      ; preds = %43
  %55 = load i16* %9, align 4, !tbaa !9
  %56 = and i16 %55, -4096
  %57 = icmp eq i16 %56, 16384
  %.1 = select i1 %57, i32 1, i32 -3
  br label %.thread9

.thread9:                                         ; preds = %28, %32, %54, %36, %46, %49
  %retval.3 = phi i32 [ %53, %49 ], [ %retval.0.ph, %46 ], [ %retval.0.ph, %36 ], [ %.1, %54 ], [ -2, %28 ], [ -3, %32 ]
  call void @free(i8* %4) #8
  br label %58

; <label>:58                                      ; preds = %0, %.thread9
  %retval.4 = phi i32 [ %retval.3, %.thread9 ], [ -1, %0 ]
  call void @llvm.lifetime.end(i64 144, i8* %1) #2
  ret i32 %retval.4
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i64) #3

; Function Attrs: nounwind optsize readonly
declare i64 @strlen(i8* nocapture) #4

; Function Attrs: optsize
declare i8* @Util_StrSep(i8**, i8*) #5

; Function Attrs: optsize
declare i32 @__sprintf_chk(i8*, i32, i64, i8*, ...) #5

; Function Attrs: nounwind readnone
declare i64 @llvm.objectsize.i64.p0i8(i8*, i1) #6

; Function Attrs: nounwind optsize
declare i8* @__strcpy_chk(i8*, i8*, i64) #3

; Function Attrs: optsize
declare i32 @"\01_stat$INODE64"(i8*, %struct.stat*) #5

; Function Attrs: nounwind optsize
declare i32 @mkdir(i8* nocapture readonly, i16 zeroext) #3

; Function Attrs: optsize
declare i32* @__error() #5

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #3

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

; Function Attrs: nounwind optsize ssp uwtable
define void @cctk_createdirectory_(i32* nocapture %ierr, i32* nocapture readonly %mode, i8* %cctk_str1, i32 %cctk_strlen1) #1 {
  %1 = tail call i8* @Util_NullTerminateString(i8* %cctk_str1, i32 %cctk_strlen1) #7
  %2 = load i32* %mode, align 4, !tbaa !7
  %3 = tail call i32 @CCTK_CreateDirectory(i32 %2, i8* %1) #8
  store i32 %3, i32* %ierr, align 4, !tbaa !7
  tail call void @free(i8* %1) #8
  ret void
}

; Function Attrs: optsize
declare i8* @Util_NullTerminateString(i8*, i32) #5

attributes #0 = { nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone }
attributes #7 = { nounwind optsize }
attributes #8 = { optsize }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!2 = !{!3, !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !6, i64 0}
!6 = !{!"any pointer", !3, i64 0}
!7 = !{!8, !8, i64 0}
!8 = !{!"int", !3, i64 0}
!9 = !{!10, !11, i64 4}
!10 = !{!"stat", !8, i64 0, !11, i64 4, !11, i64 6, !12, i64 8, !8, i64 16, !8, i64 20, !8, i64 24, !13, i64 32, !13, i64 48, !13, i64 64, !13, i64 80, !12, i64 96, !12, i64 104, !8, i64 112, !8, i64 116, !8, i64 120, !8, i64 124, !3, i64 128}
!11 = !{!"short", !3, i64 0}
!12 = !{!"long long", !3, i64 0}
!13 = !{!"timespec", !14, i64 0, !14, i64 8}
!14 = !{!"long", !3, i64 0}
