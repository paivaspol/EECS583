; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/comlib.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

; Function Attrs: nounwind optsize ssp uwtable
define void @put_serverbyte(i8 zeroext %data) #0 {
  store volatile i8 %data, i8* inttoptr (i64 2952794328 to i8*), align 8, !tbaa !2
  store volatile i8 1, i8* inttoptr (i64 2952794312 to i8*), align 8, !tbaa !2
  br label %1

; <label>:1                                       ; preds = %1, %0
  %2 = load volatile i8* inttoptr (i64 2952794312 to i8*), align 8, !tbaa !2
  %3 = and i8 %2, 1
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %1

; <label>:5                                       ; preds = %1
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define zeroext i8 @get_serverbyte() #0 {
  br label %1

; <label>:1                                       ; preds = %1, %0
  %2 = load volatile i8* inttoptr (i64 2952794304 to i8*), align 64, !tbaa !2
  %3 = and i8 %2, 1
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %1, label %5

; <label>:5                                       ; preds = %1
  %6 = load volatile i8* inttoptr (i64 2952794320 to i8*), align 16, !tbaa !2
  store volatile i8 0, i8* inttoptr (i64 2952794304 to i8*), align 64, !tbaa !2
  ret i8 %6
}

; Function Attrs: nounwind optsize ssp uwtable
define void @get_serverdata(i8* nocapture %data, i32 %size) #0 {
  %1 = icmp sgt i32 %size, 0
  br i1 %1, label %.preheader, label %._crit_edge

.preheader:                                       ; preds = %0, %get_serverbyte.exit
  %p.02 = phi i8* [ %7, %get_serverbyte.exit ], [ %data, %0 ]
  %.01 = phi i32 [ %8, %get_serverbyte.exit ], [ %size, %0 ]
  br label %2

; <label>:2                                       ; preds = %.preheader, %2
  %3 = load volatile i8* inttoptr (i64 2952794304 to i8*), align 64, !tbaa !2
  %4 = and i8 %3, 1
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %2, label %get_serverbyte.exit

get_serverbyte.exit:                              ; preds = %2
  %6 = load volatile i8* inttoptr (i64 2952794320 to i8*), align 16, !tbaa !2
  store volatile i8 0, i8* inttoptr (i64 2952794304 to i8*), align 64, !tbaa !2
  %7 = getelementptr inbounds i8* %p.02, i64 1
  store i8 %6, i8* %p.02, align 1, !tbaa !2
  %8 = add nsw i32 %.01, -1
  %9 = icmp sgt i32 %.01, 1
  br i1 %9, label %.preheader, label %._crit_edge

._crit_edge:                                      ; preds = %get_serverbyte.exit, %0
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define void @put_serverdata(i8* nocapture readonly %data, i32 %size) #0 {
  %1 = icmp sgt i32 %size, 0
  br i1 %1, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %0, %put_serverbyte.exit
  %p.02 = phi i8* [ %7, %put_serverbyte.exit ], [ %data, %0 ]
  %.01 = phi i32 [ %8, %put_serverbyte.exit ], [ %size, %0 ]
  %2 = load i8* %p.02, align 1, !tbaa !2
  store volatile i8 %2, i8* inttoptr (i64 2952794328 to i8*), align 8, !tbaa !2
  store volatile i8 1, i8* inttoptr (i64 2952794312 to i8*), align 8, !tbaa !2
  br label %3

; <label>:3                                       ; preds = %3, %.lr.ph
  %4 = load volatile i8* inttoptr (i64 2952794312 to i8*), align 8, !tbaa !2
  %5 = and i8 %4, 1
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %put_serverbyte.exit, label %3

put_serverbyte.exit:                              ; preds = %3
  %7 = getelementptr inbounds i8* %p.02, i64 1
  %8 = add nsw i32 %.01, -1
  %9 = icmp sgt i32 %.01, 1
  br i1 %9, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %put_serverbyte.exit, %0
  ret void
}

attributes #0 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!2 = !{!3, !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
