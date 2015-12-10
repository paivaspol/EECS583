; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/Cactus/Cache.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

@cache_data.0 = internal unnamed_addr global i64 0
@cache_data.1 = internal unnamed_addr global i64 0
@cache_set = internal unnamed_addr global i32 0, align 4
@.str = private unnamed_addr constant [81 x i8] c"$Header: /cactus/Cactus/src/util/Cache.c,v 1.7 2001/05/10 12:35:19 goodale Exp $\00", align 1

; Function Attrs: nounwind optsize readnone ssp uwtable
define i8* @CCTKi_version_util_Cache_c() #0 {
  ret i8* getelementptr inbounds ([81 x i8]* @.str, i64 0, i64 0)
}

; Function Attrs: nounwind optsize ssp uwtable
define i8* @Util_CacheMalloc(i32 %index, i64 %size, i8** nocapture %realstart) #1 {
  %1 = load i32* @cache_set, align 4, !tbaa !2
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %5, label %Utili_CacheDataGet.exit.thread

Utili_CacheDataGet.exit.thread:                   ; preds = %0
  %3 = load i64* @cache_data.0, align 8, !tbaa !6
  %4 = load i64* @cache_data.1, align 8, !tbaa !9
  br label %5

; <label>:5                                       ; preds = %0, %Utili_CacheDataGet.exit.thread
  %6 = phi i64 [ %3, %Utili_CacheDataGet.exit.thread ], [ 0, %0 ]
  %7 = phi i64 [ %4, %Utili_CacheDataGet.exit.thread ], [ 0, %0 ]
  %8 = add i64 %7, %size
  %9 = tail call i8* @malloc(i64 %8) #3
  %10 = icmp eq i8* %9, null
  br i1 %10, label %26, label %11

; <label>:11                                      ; preds = %5
  %12 = icmp eq i64 %7, 0
  br i1 %12, label %24, label %13

; <label>:13                                      ; preds = %11
  %14 = ptrtoint i8* %9 to i64
  %15 = urem i64 %14, %7
  %16 = urem i64 %15, %6
  %17 = udiv i64 %15, %6
  %18 = zext i32 %index to i64
  %19 = sub i64 %18, %17
  %20 = mul i64 %19, %6
  %21 = sub i64 %6, %16
  %22 = add i64 %21, %20
  %23 = urem i64 %22, %7
  br label %24

; <label>:24                                      ; preds = %11, %13
  %pad.0 = phi i64 [ %23, %13 ], [ 0, %11 ]
  %25 = getelementptr inbounds i8* %9, i64 %pad.0
  br label %26

; <label>:26                                      ; preds = %5, %24
  %retval.0 = phi i8* [ %25, %24 ], [ null, %5 ]
  store i8* %9, i8** %realstart, align 8, !tbaa !10
  ret i8* %retval.0
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @Utili_CacheDataGet(i64* nocapture %cacheline_bytes, i64* nocapture %cache_size) #1 {
  %1 = load i32* @cache_set, align 4, !tbaa !2
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %6, label %3

; <label>:3                                       ; preds = %0
  %4 = load i64* @cache_data.0, align 8, !tbaa !6
  store i64 %4, i64* %cacheline_bytes, align 8, !tbaa !12
  %5 = load i64* @cache_data.1, align 8, !tbaa !9
  store i64 %5, i64* %cache_size, align 8, !tbaa !12
  br label %6

; <label>:6                                       ; preds = %0, %3
  %retcode.0 = phi i32 [ 0, %3 ], [ -1, %0 ]
  ret i32 %retcode.0
}

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i64) #2

; Function Attrs: nounwind optsize ssp uwtable
define i32 @Utili_CacheDataSet(i64 %cacheline_bytes, i64 %cache_size) #1 {
  store i64 %cacheline_bytes, i64* @cache_data.0, align 8, !tbaa !6
  store i64 %cache_size, i64* @cache_data.1, align 8, !tbaa !9
  %1 = load i32* @cache_set, align 4, !tbaa !2
  %2 = add nsw i32 %1, 1
  store i32 %2, i32* @cache_set, align 4, !tbaa !2
  ret i32 %1
}

attributes #0 = { nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!2 = !{!3, !3, i64 0}
!3 = !{!"int", !4, i64 0}
!4 = !{!"omnipotent char", !5, i64 0}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!7, !8, i64 0}
!7 = !{!"s_cache_data", !8, i64 0, !8, i64 8}
!8 = !{!"long", !4, i64 0}
!9 = !{!7, !8, i64 8}
!10 = !{!11, !11, i64 0}
!11 = !{!"any pointer", !4, i64 0}
!12 = !{!8, !8, i64 0}
