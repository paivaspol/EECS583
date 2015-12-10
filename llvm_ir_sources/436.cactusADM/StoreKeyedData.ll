; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/Cactus/StoreKeyedData.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.PKeyedData = type { %struct.PKeyedData*, %struct.PKeyedData*, i32, i8* }

@.str = private unnamed_addr constant [90 x i8] c"$Header: /cactus/Cactus/src/util/StoreKeyedData.c,v 1.4 2001/05/10 12:35:22 goodale Exp $\00", align 1

; Function Attrs: nounwind optsize readnone ssp uwtable
define i8* @CCTKi_version_util_StoreKeyedData_c() #0 {
  ret i8* getelementptr inbounds ([90 x i8]* @.str, i64 0, i64 0)
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @StoreKeyedData(%struct.PKeyedData** nocapture %storage, i32 %key, i8* %data) #1 {
  %1 = tail call i8* @malloc(i64 32) #4
  %2 = icmp eq i8* %1, null
  br i1 %2, label %18, label %3

; <label>:3                                       ; preds = %0
  %4 = getelementptr inbounds i8* %1, i64 16
  %5 = bitcast i8* %4 to i32*
  store i32 %key, i32* %5, align 4, !tbaa !2
  %6 = getelementptr inbounds i8* %1, i64 24
  %7 = bitcast i8* %6 to i8**
  store i8* %data, i8** %7, align 8, !tbaa !8
  %8 = bitcast %struct.PKeyedData** %storage to i64*
  %9 = load i64* %8, align 8, !tbaa !9
  %10 = getelementptr inbounds i8* %1, i64 8
  %11 = bitcast i8* %10 to i64*
  store i64 %9, i64* %11, align 8, !tbaa !10
  %12 = bitcast i8* %1 to %struct.PKeyedData**
  store %struct.PKeyedData* null, %struct.PKeyedData** %12, align 8, !tbaa !11
  %13 = icmp eq i64 %9, 0
  br i1 %13, label %16, label %14

; <label>:14                                      ; preds = %3
  %15 = inttoptr i64 %9 to i8**
  store i8* %1, i8** %15, align 8, !tbaa !11
  br label %16

; <label>:16                                      ; preds = %3, %14
  %17 = bitcast %struct.PKeyedData** %storage to i8**
  store i8* %1, i8** %17, align 8, !tbaa !9
  br label %18

; <label>:18                                      ; preds = %0, %16
  %return_code.0 = phi i32 [ 0, %16 ], [ 1, %0 ]
  ret i32 %return_code.0
}

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i64) #2

; Function Attrs: nounwind optsize readonly ssp uwtable
define i8* @GetKeyedData(%struct.PKeyedData* readonly %storage, i32 %key) #3 {
  %1 = icmp eq %struct.PKeyedData* %storage, null
  br i1 %1, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %0, %8
  %current.02 = phi %struct.PKeyedData* [ %10, %8 ], [ %storage, %0 ]
  %2 = getelementptr inbounds %struct.PKeyedData* %current.02, i64 0, i32 2
  %3 = load i32* %2, align 4, !tbaa !2
  %4 = icmp eq i32 %3, %key
  br i1 %4, label %5, label %8

; <label>:5                                       ; preds = %.lr.ph
  %6 = getelementptr inbounds %struct.PKeyedData* %current.02, i64 0, i32 3
  %7 = load i8** %6, align 8, !tbaa !8
  br label %.loopexit

; <label>:8                                       ; preds = %.lr.ph
  %9 = getelementptr inbounds %struct.PKeyedData* %current.02, i64 0, i32 1
  %10 = load %struct.PKeyedData** %9, align 8, !tbaa !10
  %11 = icmp eq %struct.PKeyedData* %10, null
  br i1 %11, label %.loopexit, label %.lr.ph

.loopexit:                                        ; preds = %8, %0, %5
  %return_val.0 = phi i8* [ %7, %5 ], [ null, %0 ], [ null, %8 ]
  ret i8* %return_val.0
}

; Function Attrs: nounwind optsize ssp uwtable
define void @DestroyKeyedData(%struct.PKeyedData* %storage) #1 {
  %1 = icmp eq %struct.PKeyedData* %storage, null
  br i1 %1, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %0, %.lr.ph
  %current.01 = phi %struct.PKeyedData* [ %3, %.lr.ph ], [ %storage, %0 ]
  %2 = getelementptr inbounds %struct.PKeyedData* %current.01, i64 0, i32 1
  %3 = load %struct.PKeyedData** %2, align 8, !tbaa !10
  %4 = bitcast %struct.PKeyedData* %current.01 to i8*
  tail call void @free(i8* %4) #5
  %5 = icmp eq %struct.PKeyedData* %3, null
  br i1 %5, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %0
  ret void
}

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #2

attributes #0 = { nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize readonly ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize }
attributes #5 = { optsize }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!2 = !{!3, !7, i64 16}
!3 = !{!"PKeyedData", !4, i64 0, !4, i64 8, !7, i64 16, !4, i64 24}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!"int", !5, i64 0}
!8 = !{!3, !4, i64 24}
!9 = !{!4, !4, i64 0}
!10 = !{!3, !4, i64 8}
!11 = !{!3, !4, i64 0}
