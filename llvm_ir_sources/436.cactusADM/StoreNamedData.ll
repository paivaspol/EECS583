; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/Cactus/StoreNamedData.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.PNamedData = type { %struct.PNamedData*, %struct.PNamedData*, i8*, i8* }

@.str = private unnamed_addr constant [90 x i8] c"$Header: /cactus/Cactus/src/util/StoreNamedData.c,v 1.5 2001/05/10 12:35:22 goodale Exp $\00", align 1

; Function Attrs: nounwind optsize readnone ssp uwtable
define i8* @CCTKi_version_util_StoreNamedData_c() #0 {
  ret i8* getelementptr inbounds ([90 x i8]* @.str, i64 0, i64 0)
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @StoreNamedData(%struct.PNamedData** nocapture %list, i8* %name, i8* %data) #1 {
  %1 = tail call i8* @malloc(i64 32) #6
  %2 = icmp eq i8* %1, null
  br i1 %2, label %26, label %3

; <label>:3                                       ; preds = %0
  %4 = tail call i64 @strlen(i8* %name) #6
  %5 = add i64 %4, 1
  %6 = tail call i8* @malloc(i64 %5) #6
  %7 = getelementptr inbounds i8* %1, i64 16
  %8 = bitcast i8* %7 to i8**
  store i8* %6, i8** %8, align 8, !tbaa !2
  %9 = icmp eq i8* %6, null
  br i1 %9, label %25, label %10

; <label>:10                                      ; preds = %3
  %11 = tail call i64 @llvm.objectsize.i64.p0i8(i8* %6, i1 false)
  %12 = tail call i8* @__strcpy_chk(i8* %6, i8* %name, i64 %11) #6
  %13 = getelementptr inbounds i8* %1, i64 24
  %14 = bitcast i8* %13 to i8**
  store i8* %data, i8** %14, align 8, !tbaa !7
  %15 = bitcast %struct.PNamedData** %list to i64*
  %16 = load i64* %15, align 8, !tbaa !8
  %17 = getelementptr inbounds i8* %1, i64 8
  %18 = bitcast i8* %17 to i64*
  store i64 %16, i64* %18, align 8, !tbaa !9
  %19 = bitcast i8* %1 to %struct.PNamedData**
  store %struct.PNamedData* null, %struct.PNamedData** %19, align 8, !tbaa !10
  %20 = icmp eq i64 %16, 0
  br i1 %20, label %23, label %21

; <label>:21                                      ; preds = %10
  %22 = inttoptr i64 %16 to i8**
  store i8* %1, i8** %22, align 8, !tbaa !10
  br label %23

; <label>:23                                      ; preds = %10, %21
  %24 = bitcast %struct.PNamedData** %list to i8**
  store i8* %1, i8** %24, align 8, !tbaa !8
  br label %26

; <label>:25                                      ; preds = %3
  tail call void @free(i8* %1) #7
  br label %26

; <label>:26                                      ; preds = %0, %23, %25
  %return_code.0 = phi i32 [ 0, %23 ], [ 1, %25 ], [ 1, %0 ]
  ret i32 %return_code.0
}

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i64) #2

; Function Attrs: nounwind optsize readonly
declare i64 @strlen(i8* nocapture) #3

; Function Attrs: nounwind optsize
declare i8* @__strcpy_chk(i8*, i8*, i64) #2

; Function Attrs: nounwind readnone
declare i64 @llvm.objectsize.i64.p0i8(i8*, i1) #4

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #2

; Function Attrs: nounwind optsize readonly ssp uwtable
define i8* @GetNamedData(%struct.PNamedData* readonly %list, i8* nocapture readonly %name) #5 {
  %1 = icmp eq %struct.PNamedData* %list, null
  br i1 %1, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %0, %9
  %current.02 = phi %struct.PNamedData* [ %11, %9 ], [ %list, %0 ]
  %2 = getelementptr inbounds %struct.PNamedData* %current.02, i64 0, i32 2
  %3 = load i8** %2, align 8, !tbaa !2
  %4 = tail call i32 @strcmp(i8* %3, i8* %name) #6
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %9

; <label>:6                                       ; preds = %.lr.ph
  %7 = getelementptr inbounds %struct.PNamedData* %current.02, i64 0, i32 3
  %8 = load i8** %7, align 8, !tbaa !7
  br label %.loopexit

; <label>:9                                       ; preds = %.lr.ph
  %10 = getelementptr inbounds %struct.PNamedData* %current.02, i64 0, i32 1
  %11 = load %struct.PNamedData** %10, align 8, !tbaa !9
  %12 = icmp eq %struct.PNamedData* %11, null
  br i1 %12, label %.loopexit, label %.lr.ph

.loopexit:                                        ; preds = %9, %0, %6
  %return_val.0 = phi i8* [ %8, %6 ], [ null, %0 ], [ null, %9 ]
  ret i8* %return_val.0
}

; Function Attrs: nounwind optsize readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) #3

; Function Attrs: nounwind optsize ssp uwtable
define void @DestroyNamedDataList(%struct.PNamedData* %list) #1 {
  %1 = icmp eq %struct.PNamedData* %list, null
  br i1 %1, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %0, %.lr.ph
  %current.01 = phi %struct.PNamedData* [ %3, %.lr.ph ], [ %list, %0 ]
  %2 = getelementptr inbounds %struct.PNamedData* %current.01, i64 0, i32 1
  %3 = load %struct.PNamedData** %2, align 8, !tbaa !9
  %4 = bitcast %struct.PNamedData* %current.01 to i8*
  tail call void @free(i8* %4) #7
  %5 = icmp eq %struct.PNamedData* %3, null
  br i1 %5, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %0
  ret void
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
!2 = !{!3, !4, i64 16}
!3 = !{!"PNamedData", !4, i64 0, !4, i64 8, !4, i64 16, !4, i64 24}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!3, !4, i64 24}
!8 = !{!4, !4, i64 0}
!9 = !{!3, !4, i64 8}
!10 = !{!3, !4, i64 0}
