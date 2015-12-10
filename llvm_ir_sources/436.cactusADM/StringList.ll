; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/Cactus/StringList.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.uStringList = type { i32, %struct.iInternalStringList*, %struct.iInternalStringList*, %struct.iInternalStringList* }
%struct.iInternalStringList = type { %struct.iInternalStringList*, i8* }

@.str = private unnamed_addr constant [85 x i8] c"$Header: /cactus/Cactus/src/util/StringList.c,v 1.3 2001/09/01 10:48:39 tradke Exp $\00", align 1

; Function Attrs: nounwind optsize readnone ssp uwtable
define i8* @CCTKi_version_util_StringList_c() #0 {
  ret i8* getelementptr inbounds ([85 x i8]* @.str, i64 0, i64 0)
}

; Function Attrs: nounwind optsize ssp uwtable
define noalias %struct.uStringList* @Util_StringListCreate(i32 %size) #1 {
  %1 = tail call i8* @malloc(i64 32) #4
  %2 = bitcast i8* %1 to %struct.uStringList*
  %3 = icmp eq i8* %1, null
  br i1 %3, label %13, label %4

; <label>:4                                       ; preds = %0
  %5 = add nsw i32 %size, 1
  %6 = sext i32 %5 to i64
  %7 = tail call i8* @calloc(i64 %6, i64 16) #4
  %8 = getelementptr inbounds i8* %1, i64 8
  %9 = bitcast i8* %8 to i8**
  store i8* %7, i8** %9, align 8, !tbaa !2
  %10 = getelementptr inbounds i8* %1, i64 24
  %11 = bitcast i8* %10 to %struct.iInternalStringList**
  store %struct.iInternalStringList* null, %struct.iInternalStringList** %11, align 8, !tbaa !8
  %12 = bitcast i8* %1 to i32*
  store i32 0, i32* %12, align 4, !tbaa !9
  br label %13

; <label>:13                                      ; preds = %0, %4
  ret %struct.uStringList* %2
}

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i64) #2

; Function Attrs: nounwind optsize
declare noalias i8* @calloc(i64, i64) #2

; Function Attrs: nounwind optsize ssp uwtable
define i32 @Util_StringListAdd(%struct.uStringList* nocapture %list, i8* %item) #1 {
  %1 = getelementptr inbounds %struct.uStringList* %list, i64 0, i32 0
  %2 = load i32* %1, align 4, !tbaa !9
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %16

; <label>:4                                       ; preds = %0
  %5 = getelementptr inbounds %struct.uStringList* %list, i64 0, i32 1
  %6 = bitcast %struct.iInternalStringList** %5 to i64*
  %7 = load i64* %6, align 8, !tbaa !2
  %8 = getelementptr inbounds %struct.uStringList* %list, i64 0, i32 2
  %9 = bitcast %struct.iInternalStringList** %8 to i64*
  store i64 %7, i64* %9, align 8, !tbaa !10
  %10 = tail call i8* @Util_Strdup(i8* %item) #4
  %11 = load %struct.iInternalStringList** %8, align 8, !tbaa !10
  %12 = getelementptr inbounds %struct.iInternalStringList* %11, i64 0, i32 1
  store i8* %10, i8** %12, align 8, !tbaa !11
  %13 = getelementptr inbounds %struct.iInternalStringList* %11, i64 0, i32 0
  store %struct.iInternalStringList* null, %struct.iInternalStringList** %13, align 8, !tbaa !13
  %14 = load i32* %1, align 4, !tbaa !9
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %1, align 4, !tbaa !9
  br label %.thread

; <label>:16                                      ; preds = %0
  %17 = getelementptr inbounds %struct.uStringList* %list, i64 0, i32 2
  %this.05 = load %struct.iInternalStringList** %17, align 8
  %18 = icmp eq %struct.iInternalStringList* %this.05, null
  br i1 %18, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %16, %40
  %this.07 = phi %struct.iInternalStringList* [ %this.0, %40 ], [ %this.05, %16 ]
  %prev.06 = phi %struct.iInternalStringList* [ %this.07, %40 ], [ null, %16 ]
  %19 = getelementptr inbounds %struct.iInternalStringList* %this.07, i64 0, i32 1
  %20 = load i8** %19, align 8, !tbaa !11
  %21 = tail call i32 @Util_StrCmpi(i8* %item, i8* %20) #4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %38

; <label>:23                                      ; preds = %.lr.ph
  %24 = tail call i8* @Util_Strdup(i8* %item) #4
  %25 = load i32* %1, align 4, !tbaa !9
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.uStringList* %list, i64 0, i32 1
  %28 = load %struct.iInternalStringList** %27, align 8, !tbaa !2
  %29 = getelementptr inbounds %struct.iInternalStringList* %28, i64 %26, i32 1
  store i8* %24, i8** %29, align 8, !tbaa !11
  %30 = getelementptr inbounds %struct.iInternalStringList* %28, i64 %26, i32 0
  store %struct.iInternalStringList* %this.07, %struct.iInternalStringList** %30, align 8, !tbaa !13
  %31 = icmp eq %struct.iInternalStringList* %prev.06, null
  %32 = getelementptr inbounds %struct.iInternalStringList* %28, i64 %26
  br i1 %31, label %35, label %33

; <label>:33                                      ; preds = %23
  %34 = getelementptr inbounds %struct.iInternalStringList* %prev.06, i64 0, i32 0
  store %struct.iInternalStringList* %32, %struct.iInternalStringList** %34, align 8, !tbaa !13
  br label %36

; <label>:35                                      ; preds = %23
  store %struct.iInternalStringList* %32, %struct.iInternalStringList** %17, align 8, !tbaa !10
  br label %36

; <label>:36                                      ; preds = %35, %33
  %37 = add nsw i32 %25, 1
  store i32 %37, i32* %1, align 4, !tbaa !9
  br label %.thread

; <label>:38                                      ; preds = %.lr.ph
  %39 = icmp eq i32 %21, 0
  br i1 %39, label %.thread, label %40

; <label>:40                                      ; preds = %38
  %41 = getelementptr inbounds %struct.iInternalStringList* %this.07, i64 0, i32 0
  %this.0 = load %struct.iInternalStringList** %41, align 8
  %42 = icmp eq %struct.iInternalStringList* %this.0, null
  br i1 %42, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %40, %16
  %prev.0.lcssa = phi %struct.iInternalStringList* [ null, %16 ], [ %this.07, %40 ]
  %43 = tail call i8* @Util_Strdup(i8* %item) #4
  %44 = load i32* %1, align 4, !tbaa !9
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.uStringList* %list, i64 0, i32 1
  %47 = load %struct.iInternalStringList** %46, align 8, !tbaa !2
  %48 = getelementptr inbounds %struct.iInternalStringList* %47, i64 %45, i32 1
  store i8* %43, i8** %48, align 8, !tbaa !11
  %49 = getelementptr inbounds %struct.iInternalStringList* %47, i64 %45, i32 0
  store %struct.iInternalStringList* null, %struct.iInternalStringList** %49, align 8, !tbaa !13
  %50 = getelementptr inbounds %struct.iInternalStringList* %47, i64 %45
  %51 = getelementptr inbounds %struct.iInternalStringList* %prev.0.lcssa, i64 0, i32 0
  store %struct.iInternalStringList* %50, %struct.iInternalStringList** %51, align 8, !tbaa !13
  %52 = add nsw i32 %44, 1
  store i32 %52, i32* %1, align 4, !tbaa !9
  br label %.thread

.thread:                                          ; preds = %38, %36, %._crit_edge, %4
  %retval.1 = phi i32 [ 1, %4 ], [ 1, %._crit_edge ], [ 1, %36 ], [ 0, %38 ]
  ret i32 %retval.1
}

; Function Attrs: optsize
declare i8* @Util_Strdup(i8*) #3

; Function Attrs: optsize
declare i32 @Util_StrCmpi(i8*, i8*) #3

; Function Attrs: nounwind optsize ssp uwtable
define i8* @Util_StringListNext(%struct.uStringList* nocapture %this, i32 %flag) #1 {
  %1 = icmp eq i32 %flag, 0
  br i1 %1, label %._crit_edge, label %2

._crit_edge:                                      ; preds = %0
  %.phi.trans.insert = getelementptr inbounds %struct.uStringList* %this, i64 0, i32 3
  %.pre = load %struct.iInternalStringList** %.phi.trans.insert, align 8, !tbaa !8
  br label %9

; <label>:2                                       ; preds = %0
  %3 = getelementptr inbounds %struct.uStringList* %this, i64 0, i32 2
  %4 = bitcast %struct.iInternalStringList** %3 to i64*
  %5 = load i64* %4, align 8, !tbaa !10
  %6 = getelementptr inbounds %struct.uStringList* %this, i64 0, i32 3
  %7 = bitcast %struct.iInternalStringList** %6 to i64*
  store i64 %5, i64* %7, align 8, !tbaa !8
  %8 = inttoptr i64 %5 to %struct.iInternalStringList*
  br label %9

; <label>:9                                       ; preds = %._crit_edge, %2
  %.pre-phi = phi %struct.iInternalStringList** [ %.phi.trans.insert, %._crit_edge ], [ %6, %2 ]
  %10 = phi %struct.iInternalStringList* [ %.pre, %._crit_edge ], [ %8, %2 ]
  %11 = icmp eq %struct.iInternalStringList* %10, null
  br i1 %11, label %18, label %12

; <label>:12                                      ; preds = %9
  %13 = getelementptr inbounds %struct.iInternalStringList* %10, i64 0, i32 1
  %14 = load i8** %13, align 8, !tbaa !11
  %15 = bitcast %struct.iInternalStringList* %10 to i64*
  %16 = load i64* %15, align 8, !tbaa !13
  %17 = bitcast %struct.iInternalStringList** %.pre-phi to i64*
  store i64 %16, i64* %17, align 8, !tbaa !8
  br label %18

; <label>:18                                      ; preds = %9, %12
  %retval.0 = phi i8* [ %14, %12 ], [ null, %9 ]
  ret i8* %retval.0
}

; Function Attrs: nounwind optsize ssp uwtable
define void @Util_StringListDestroy(%struct.uStringList* nocapture %this) #1 {
  %1 = getelementptr inbounds %struct.uStringList* %this, i64 0, i32 0
  %2 = load i32* %1, align 4, !tbaa !9
  %3 = icmp sgt i32 %2, 0
  %4 = getelementptr inbounds %struct.uStringList* %this, i64 0, i32 1
  br i1 %3, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %0, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %0 ]
  %5 = load %struct.iInternalStringList** %4, align 8, !tbaa !2
  %6 = getelementptr inbounds %struct.iInternalStringList* %5, i64 %indvars.iv, i32 1
  %7 = load i8** %6, align 8, !tbaa !11
  tail call void @free(i8* %7) #5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %8 = load i32* %1, align 4, !tbaa !9
  %9 = sext i32 %8 to i64
  %10 = icmp slt i64 %indvars.iv.next, %9
  br i1 %10, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %0
  %11 = bitcast %struct.iInternalStringList** %4 to i8**
  %12 = load i8** %11, align 8, !tbaa !2
  tail call void @free(i8* %12) #5
  %13 = bitcast %struct.uStringList* %this to i8*
  tail call void @free(i8* %13) #5
  ret void
}

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #2

attributes #0 = { nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize }
attributes #5 = { optsize }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!2 = !{!3, !7, i64 8}
!3 = !{!"", !4, i64 0, !7, i64 8, !7, i64 16, !7, i64 24}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!"any pointer", !5, i64 0}
!8 = !{!3, !7, i64 24}
!9 = !{!3, !4, i64 0}
!10 = !{!3, !7, i64 16}
!11 = !{!12, !7, i64 8}
!12 = !{!"iInternalStringList", !7, i64 0, !7, i64 8}
!13 = !{!12, !7, i64 0}
