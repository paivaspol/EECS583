; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/Cactus/StoreHandledData.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.cHandledData = type { %struct.cHandleStorage*, i32, i32 }
%struct.cHandleStorage = type { i32, i8*, i8* }

@.str = private unnamed_addr constant [92 x i8] c"$Header: /cactus/Cactus/src/util/StoreHandledData.c,v 1.13 2001/07/03 21:49:41 tradke Exp $\00", align 1

; Function Attrs: nounwind optsize readnone ssp uwtable
define i8* @CCTKi_version_util_StoreHandledData_c() #0 {
  ret i8* getelementptr inbounds ([92 x i8]* @.str, i64 0, i64 0)
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @Util_NewHandle(%struct.cHandledData** nocapture %storage, i8* %name, i8* %data) #1 {
  %1 = load %struct.cHandledData** %storage, align 8, !tbaa !2
  %2 = icmp eq %struct.cHandledData* %1, null
  br i1 %2, label %3, label %.thread

; <label>:3                                       ; preds = %0
  %4 = tail call i8* @malloc(i64 16) #6
  %5 = bitcast %struct.cHandledData** %storage to i8**
  store i8* %4, i8** %5, align 8, !tbaa !2
  %6 = icmp eq i8* %4, null
  br i1 %6, label %13, label %.thread2

.thread2:                                         ; preds = %3
  %7 = bitcast i8* %4 to %struct.cHandledData*
  %8 = bitcast i8* %4 to %struct.cHandleStorage**
  store %struct.cHandleStorage* null, %struct.cHandleStorage** %8, align 8, !tbaa !6
  %9 = getelementptr inbounds i8* %4, i64 8
  %10 = bitcast i8* %9 to i32*
  store i32 0, i32* %10, align 4, !tbaa !9
  %11 = getelementptr inbounds i8* %4, i64 12
  %12 = bitcast i8* %11 to i32*
  store i32 0, i32* %12, align 4, !tbaa !10
  br label %.thread

; <label>:13                                      ; preds = %3
  br label %95

.thread:                                          ; preds = %.thread2, %0
  %14 = phi %struct.cHandledData* [ %1, %0 ], [ %7, %.thread2 ]
  %15 = getelementptr inbounds %struct.cHandledData* %14, i64 0, i32 2
  %16 = load i32* %15, align 4, !tbaa !10
  %17 = getelementptr inbounds %struct.cHandledData* %14, i64 0, i32 1
  %18 = load i32* %17, align 4, !tbaa !9
  %19 = icmp ugt i32 %16, %18
  br i1 %19, label %67, label %20

; <label>:20                                      ; preds = %.thread
  %21 = bitcast %struct.cHandledData* %14 to i8**
  %22 = load i8** %21, align 8, !tbaa !6
  %23 = add i32 %18, 1
  %24 = zext i32 %23 to i64
  %25 = mul nuw nsw i64 %24, 24
  %26 = tail call i8* @realloc(i8* %22, i64 %25) #6
  %27 = icmp eq i8* %26, null
  br i1 %27, label %95, label %28

; <label>:28                                      ; preds = %20
  %29 = bitcast %struct.cHandledData** %storage to i8***
  %30 = load i8*** %29, align 8, !tbaa !2
  store i8* %26, i8** %30, align 8, !tbaa !6
  %31 = load %struct.cHandledData** %storage, align 8, !tbaa !2
  %32 = getelementptr inbounds %struct.cHandledData* %31, i64 0, i32 1
  %33 = load i32* %32, align 4, !tbaa !9
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds %struct.cHandledData* %31, i64 0, i32 0
  %36 = load %struct.cHandleStorage** %35, align 8, !tbaa !6
  %37 = getelementptr inbounds %struct.cHandleStorage* %36, i64 %34, i32 0
  store i32 1, i32* %37, align 4, !tbaa !11
  %38 = getelementptr inbounds %struct.cHandleStorage* %36, i64 %34, i32 2
  store i8* %data, i8** %38, align 8, !tbaa !13
  %39 = tail call i64 @strlen(i8* %name) #6
  %40 = add i64 %39, 1
  %41 = tail call i8* @malloc(i64 %40) #6
  %42 = load %struct.cHandledData** %storage, align 8, !tbaa !2
  %43 = getelementptr inbounds %struct.cHandledData* %42, i64 0, i32 1
  %44 = load i32* %43, align 4, !tbaa !9
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds %struct.cHandledData* %42, i64 0, i32 0
  %47 = load %struct.cHandleStorage** %46, align 8, !tbaa !6
  %48 = getelementptr inbounds %struct.cHandleStorage* %47, i64 %45, i32 1
  store i8* %41, i8** %48, align 8, !tbaa !14
  %49 = load %struct.cHandledData** %storage, align 8, !tbaa !2
  %50 = getelementptr inbounds %struct.cHandledData* %49, i64 0, i32 1
  %51 = load i32* %50, align 4, !tbaa !9
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds %struct.cHandledData* %49, i64 0, i32 0
  %54 = load %struct.cHandleStorage** %53, align 8, !tbaa !6
  %55 = getelementptr inbounds %struct.cHandleStorage* %54, i64 %52, i32 1
  %56 = load i8** %55, align 8, !tbaa !14
  %57 = icmp eq i8* %56, null
  br i1 %57, label %61, label %58

; <label>:58                                      ; preds = %28
  %59 = tail call i64 @llvm.objectsize.i64.p0i8(i8* %56, i1 false)
  %60 = tail call i8* @__strcpy_chk(i8* %56, i8* %name, i64 %59) #6
  %.pre = load %struct.cHandledData** %storage, align 8, !tbaa !2
  %.phi.trans.insert = getelementptr inbounds %struct.cHandledData* %.pre, i64 0, i32 1
  %.pre1 = load i32* %.phi.trans.insert, align 4, !tbaa !9
  br label %61

; <label>:61                                      ; preds = %28, %58
  %62 = phi i32 [ %51, %28 ], [ %.pre1, %58 ]
  %63 = phi %struct.cHandledData* [ %49, %28 ], [ %.pre, %58 ]
  %64 = getelementptr inbounds %struct.cHandledData* %63, i64 0, i32 1
  %65 = add i32 %62, 1
  store i32 %65, i32* %64, align 4, !tbaa !9
  %66 = getelementptr inbounds %struct.cHandledData* %63, i64 0, i32 2
  store i32 %65, i32* %66, align 4, !tbaa !10
  br label %95

; <label>:67                                      ; preds = %.thread
  %68 = zext i32 %16 to i64
  %69 = getelementptr inbounds %struct.cHandledData* %14, i64 0, i32 0
  %70 = load %struct.cHandleStorage** %69, align 8, !tbaa !6
  %71 = getelementptr inbounds %struct.cHandleStorage* %70, i64 %68, i32 0
  %72 = load i32* %71, align 4, !tbaa !11
  %73 = icmp eq i32 %72, 1
  br i1 %73, label %95, label %74

; <label>:74                                      ; preds = %67
  store i32 1, i32* %71, align 4, !tbaa !11
  %75 = getelementptr inbounds %struct.cHandledData* %14, i64 0, i32 2
  %76 = load i32* %75, align 4, !tbaa !10
  %77 = zext i32 %76 to i64
  %78 = getelementptr inbounds %struct.cHandledData* %14, i64 0, i32 0
  %79 = load %struct.cHandleStorage** %78, align 8, !tbaa !6
  %80 = getelementptr inbounds %struct.cHandleStorage* %79, i64 %77, i32 2
  store i8* %data, i8** %80, align 8, !tbaa !13
  %81 = load %struct.cHandledData** %storage, align 8, !tbaa !2
  %82 = getelementptr inbounds %struct.cHandledData* %81, i64 0, i32 2
  %83 = load i32* %82, align 4, !tbaa !10
  %84 = getelementptr inbounds %struct.cHandledData* %81, i64 0, i32 1
  %85 = load i32* %84, align 4, !tbaa !9
  %86 = getelementptr inbounds %struct.cHandledData* %81, i64 0, i32 0
  br label %87

; <label>:87                                      ; preds = %89, %74
  %current.0.in.i = phi i32 [ %83, %74 ], [ %current.0.i, %89 ]
  %current.0.i = add i32 %current.0.in.i, 1
  %88 = icmp ult i32 %current.0.i, %85
  br i1 %88, label %89, label %FindNextUnused.exit

; <label>:89                                      ; preds = %87
  %90 = zext i32 %current.0.i to i64
  %91 = load %struct.cHandleStorage** %86, align 8, !tbaa !6
  %92 = getelementptr inbounds %struct.cHandleStorage* %91, i64 %90, i32 0
  %93 = load i32* %92, align 4, !tbaa !11
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %FindNextUnused.exit, label %87

FindNextUnused.exit:                              ; preds = %87, %89
  store i32 %current.0.i, i32* %82, align 4, !tbaa !10
  br label %95

; <label>:95                                      ; preds = %13, %67, %20, %61, %FindNextUnused.exit
  %return_code.0 = phi i32 [ %62, %61 ], [ %83, %FindNextUnused.exit ], [ -2, %20 ], [ -2, %67 ], [ -1, %13 ]
  ret i32 %return_code.0
}

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i64) #2

; Function Attrs: nounwind optsize
declare noalias i8* @realloc(i8* nocapture, i64) #2

; Function Attrs: nounwind optsize readonly
declare i64 @strlen(i8* nocapture) #3

; Function Attrs: nounwind optsize
declare i8* @__strcpy_chk(i8*, i8*, i64) #2

; Function Attrs: nounwind readnone
declare i64 @llvm.objectsize.i64.p0i8(i8*, i1) #4

; Function Attrs: nounwind optsize ssp uwtable
define i32 @Util_DeleteHandle(%struct.cHandledData* nocapture %storage, i32 %handle) #1 {
  %1 = icmp sgt i32 %handle, -1
  br i1 %1, label %2, label %20

; <label>:2                                       ; preds = %0
  %3 = getelementptr inbounds %struct.cHandledData* %storage, i64 0, i32 1
  %4 = load i32* %3, align 4, !tbaa !9
  %5 = icmp ugt i32 %4, %handle
  br i1 %5, label %6, label %20

; <label>:6                                       ; preds = %2
  %7 = sext i32 %handle to i64
  %8 = getelementptr inbounds %struct.cHandledData* %storage, i64 0, i32 0
  %9 = load %struct.cHandleStorage** %8, align 8, !tbaa !6
  %10 = getelementptr inbounds %struct.cHandleStorage* %9, i64 %7, i32 0
  store i32 0, i32* %10, align 4, !tbaa !11
  %11 = getelementptr inbounds %struct.cHandleStorage* %9, i64 %7, i32 2
  store i8* null, i8** %11, align 8, !tbaa !13
  %12 = getelementptr inbounds %struct.cHandleStorage* %9, i64 %7, i32 1
  %13 = load i8** %12, align 8, !tbaa !14
  tail call void @free(i8* %13) #7
  %14 = load %struct.cHandleStorage** %8, align 8, !tbaa !6
  %15 = getelementptr inbounds %struct.cHandleStorage* %14, i64 %7, i32 1
  store i8* null, i8** %15, align 8, !tbaa !14
  %16 = getelementptr inbounds %struct.cHandledData* %storage, i64 0, i32 2
  %17 = load i32* %16, align 4, !tbaa !10
  %18 = icmp ugt i32 %17, %handle
  br i1 %18, label %19, label %20

; <label>:19                                      ; preds = %6
  store i32 %handle, i32* %16, align 4, !tbaa !10
  br label %20

; <label>:20                                      ; preds = %0, %2, %6, %19
  %return_code.0 = phi i32 [ 0, %19 ], [ 0, %6 ], [ 1, %2 ], [ 1, %0 ]
  ret i32 %return_code.0
}

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #2

; Function Attrs: nounwind optsize readonly ssp uwtable
define i8* @Util_GetHandledData(%struct.cHandledData* readonly %storage, i32 %handle) #5 {
  %1 = icmp ne %struct.cHandledData* %storage, null
  %2 = icmp sgt i32 %handle, -1
  %or.cond = and i1 %1, %2
  br i1 %or.cond, label %3, label %17

; <label>:3                                       ; preds = %0
  %4 = getelementptr inbounds %struct.cHandledData* %storage, i64 0, i32 1
  %5 = load i32* %4, align 4, !tbaa !9
  %6 = icmp ugt i32 %5, %handle
  br i1 %6, label %7, label %17

; <label>:7                                       ; preds = %3
  %8 = sext i32 %handle to i64
  %9 = getelementptr inbounds %struct.cHandledData* %storage, i64 0, i32 0
  %10 = load %struct.cHandleStorage** %9, align 8, !tbaa !6
  %11 = getelementptr inbounds %struct.cHandleStorage* %10, i64 %8, i32 0
  %12 = load i32* %11, align 4, !tbaa !11
  %13 = icmp eq i32 %12, 1
  br i1 %13, label %14, label %17

; <label>:14                                      ; preds = %7
  %15 = getelementptr inbounds %struct.cHandleStorage* %10, i64 %8, i32 2
  %16 = load i8** %15, align 8, !tbaa !13
  br label %17

; <label>:17                                      ; preds = %0, %3, %7, %14
  %data.0 = phi i8* [ %16, %14 ], [ null, %7 ], [ null, %3 ], [ null, %0 ]
  ret i8* %data.0
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @Util_GetHandle(%struct.cHandledData* readonly %storage, i8* nocapture readonly %name, i8** %data) #1 {
  %1 = icmp ne i8** %data, null
  br i1 %1, label %2, label %3

; <label>:2                                       ; preds = %0
  store i8* null, i8** %data, align 8, !tbaa !2
  br label %3

; <label>:3                                       ; preds = %2, %0
  %4 = icmp eq %struct.cHandledData* %storage, null
  br i1 %4, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %3
  %5 = getelementptr inbounds %struct.cHandledData* %storage, i64 0, i32 1
  %6 = load i32* %5, align 4, !tbaa !9
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %8 = getelementptr inbounds %struct.cHandledData* %storage, i64 0, i32 0
  %9 = load %struct.cHandleStorage** %8, align 8, !tbaa !6
  br label %10

; <label>:10                                      ; preds = %.lr.ph, %26
  %current.03 = phi i32 [ 0, %.lr.ph ], [ %27, %26 ]
  %11 = zext i32 %current.03 to i64
  %12 = getelementptr inbounds %struct.cHandleStorage* %9, i64 %11, i32 0
  %13 = load i32* %12, align 4, !tbaa !11
  %14 = icmp eq i32 %13, 1
  br i1 %14, label %15, label %26

; <label>:15                                      ; preds = %10
  %16 = getelementptr inbounds %struct.cHandleStorage* %9, i64 %11, i32 1
  %17 = load i8** %16, align 8, !tbaa !14
  %18 = tail call i32 @strcmp(i8* %name, i8* %17) #6
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %26

; <label>:20                                      ; preds = %15
  br i1 %1, label %21, label %.loopexit

; <label>:21                                      ; preds = %20
  %22 = getelementptr inbounds %struct.cHandleStorage* %9, i64 %11, i32 2
  %23 = bitcast i8** %22 to i64*
  %24 = load i64* %23, align 8, !tbaa !13
  %25 = bitcast i8** %data to i64*
  store i64 %24, i64* %25, align 8, !tbaa !2
  br label %.loopexit

; <label>:26                                      ; preds = %15, %10
  %27 = add nuw i32 %current.03, 1
  %28 = icmp ult i32 %27, %6
  br i1 %28, label %10, label %.loopexit

.loopexit:                                        ; preds = %26, %.preheader, %3, %21, %20
  %handle.0 = phi i32 [ %current.03, %21 ], [ %current.03, %20 ], [ -2, %3 ], [ -1, %.preheader ], [ -1, %26 ]
  ret i32 %handle.0
}

; Function Attrs: nounwind optsize readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) #3

; Function Attrs: nounwind optsize readonly ssp uwtable
define i8* @Util_GetHandleName(%struct.cHandledData* readonly %storage, i32 %handle) #5 {
  %1 = icmp ne %struct.cHandledData* %storage, null
  %2 = icmp sgt i32 %handle, -1
  %or.cond = and i1 %1, %2
  br i1 %or.cond, label %3, label %17

; <label>:3                                       ; preds = %0
  %4 = getelementptr inbounds %struct.cHandledData* %storage, i64 0, i32 1
  %5 = load i32* %4, align 4, !tbaa !9
  %6 = icmp ugt i32 %5, %handle
  br i1 %6, label %7, label %17

; <label>:7                                       ; preds = %3
  %8 = sext i32 %handle to i64
  %9 = getelementptr inbounds %struct.cHandledData* %storage, i64 0, i32 0
  %10 = load %struct.cHandleStorage** %9, align 8, !tbaa !6
  %11 = getelementptr inbounds %struct.cHandleStorage* %10, i64 %8, i32 0
  %12 = load i32* %11, align 4, !tbaa !11
  %13 = icmp eq i32 %12, 1
  br i1 %13, label %14, label %17

; <label>:14                                      ; preds = %7
  %15 = getelementptr inbounds %struct.cHandleStorage* %10, i64 %8, i32 1
  %16 = load i8** %15, align 8, !tbaa !14
  br label %17

; <label>:17                                      ; preds = %0, %3, %7, %14
  %name.0 = phi i8* [ %16, %14 ], [ null, %7 ], [ null, %3 ], [ null, %0 ]
  ret i8* %name.0
}

attributes #0 = { nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind optsize readonly ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind optsize }
attributes #7 = { optsize }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!2 = !{!3, !3, i64 0}
!3 = !{!"any pointer", !4, i64 0}
!4 = !{!"omnipotent char", !5, i64 0}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!7, !3, i64 0}
!7 = !{!"", !3, i64 0, !8, i64 8, !8, i64 12}
!8 = !{!"int", !4, i64 0}
!9 = !{!7, !8, i64 8}
!10 = !{!7, !8, i64 12}
!11 = !{!12, !8, i64 0}
!12 = !{!"", !8, i64 0, !3, i64 8, !3, i64 16}
!13 = !{!12, !3, i64 16}
!14 = !{!12, !3, i64 8}
