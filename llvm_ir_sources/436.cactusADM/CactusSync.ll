; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/Cactus/CactusSync.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.cGH = type { i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, double, double*, double*, i32*, i32*, i32, i32*, double, i8***, i8**, %struct.cGHGroupData* }
%struct.cGHGroupData = type { i8, i8 }

@CCTK_SyncGroup = external global i32 (%struct.cGH*, i8*)*
@.str = private unnamed_addr constant [86 x i8] c"$Header: /cactus/Cactus/src/comm/CactusSync.c,v 1.10 2001/12/09 23:34:54 tradke Exp $\00", align 1

; Function Attrs: nounwind optsize readnone ssp uwtable
define i8* @CCTKi_version_comm_CactusSync_c() #0 {
  ret i8* getelementptr inbounds ([86 x i8]* @.str, i64 0, i64 0)
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTK_SyncGroupI(%struct.cGH* %GH, i32 %group) #1 {
  %1 = tail call i8* @CCTK_GroupName(i32 %group) #4
  %2 = icmp eq i8* %1, null
  br i1 %2, label %7, label %3

; <label>:3                                       ; preds = %0
  %4 = load i32 (%struct.cGH*, i8*)** @CCTK_SyncGroup, align 8, !tbaa !2
  %5 = tail call i32 %4(%struct.cGH* %GH, i8* %1) #4
  %6 = icmp ne i32 %5, 0
  %. = select i1 %6, i32 -2, i32 0
  tail call void @free(i8* %1) #5
  br label %7

; <label>:7                                       ; preds = %0, %3
  %retval.0 = phi i32 [ %., %3 ], [ -1, %0 ]
  ret i32 %retval.0
}

; Function Attrs: optsize
declare i8* @CCTK_GroupName(i32) #2

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #3

; Function Attrs: nounwind optsize ssp uwtable
define void @cctk_syncgroupi_(i32* nocapture %ierror, %struct.cGH* %GH, i32* nocapture readonly %group) #1 {
  %1 = load i32* %group, align 4, !tbaa !6
  %2 = tail call i32 @CCTK_SyncGroupI(%struct.cGH* %GH, i32 %1) #5
  store i32 0, i32* %ierror, align 4, !tbaa !6
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTK_SyncGroupWithVar(%struct.cGH* %GH, i8* %varname) #1 {
  %1 = tail call i32 @CCTK_VarIndex(i8* %varname) #4
  %2 = tail call i32 @CCTK_GroupIndexFromVarI(i32 %1) #4
  %3 = tail call i32 @CCTK_SyncGroupI(%struct.cGH* %GH, i32 %2) #5
  ret i32 %3
}

; Function Attrs: optsize
declare i32 @CCTK_VarIndex(i8*) #2

; Function Attrs: optsize
declare i32 @CCTK_GroupIndexFromVarI(i32) #2

; Function Attrs: nounwind optsize ssp uwtable
define void @cctk_syncgroupwithvar_(i32* nocapture %ierror, %struct.cGH* %GH, i8* %cctk_str1, i32 %cctk_strlen1) #1 {
  %1 = tail call i8* @Util_NullTerminateString(i8* %cctk_str1, i32 %cctk_strlen1) #4
  %2 = tail call i32 @CCTK_VarIndex(i8* %1) #4
  %3 = tail call i32 @CCTK_GroupIndexFromVarI(i32 %2) #4
  %4 = tail call i32 @CCTK_SyncGroupI(%struct.cGH* %GH, i32 %3) #4
  store i32 %4, i32* %ierror, align 4, !tbaa !6
  tail call void @free(i8* %1) #5
  ret void
}

; Function Attrs: optsize
declare i8* @Util_NullTerminateString(i8*, i32) #2

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTK_SyncGroupWithVarI(%struct.cGH* %GH, i32 %var) #1 {
  %1 = tail call i32 @CCTK_GroupIndexFromVarI(i32 %var) #4
  %2 = tail call i32 @CCTK_SyncGroupI(%struct.cGH* %GH, i32 %1) #5
  ret i32 %2
}

; Function Attrs: nounwind optsize ssp uwtable
define void @cctk_syncgroupwithvari_(i32* nocapture %ierror, %struct.cGH* %GH, i32* nocapture readonly %var) #1 {
  %1 = load i32* %var, align 4, !tbaa !6
  %2 = tail call i32 @CCTK_GroupIndexFromVarI(i32 %1) #4
  %3 = tail call i32 @CCTK_SyncGroupI(%struct.cGH* %GH, i32 %2) #4
  store i32 %3, i32* %ierror, align 4, !tbaa !6
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTK_SyncGroupsI(%struct.cGH* %GH, i32 %n_groups, i32* nocapture readonly %groups) #1 {
  %1 = icmp sgt i32 %n_groups, 0
  br i1 %1, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %0
  %2 = add i32 %n_groups, -1
  br label %3

; <label>:3                                       ; preds = %3, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %3 ]
  %retval.02 = phi i32 [ 0, %.lr.ph ], [ %.retval.0, %3 ]
  %4 = getelementptr inbounds i32* %groups, i64 %indvars.iv
  %5 = load i32* %4, align 4, !tbaa !6
  %6 = tail call i32 @CCTK_SyncGroupI(%struct.cGH* %GH, i32 %5) #5
  %7 = icmp eq i32 %6, 0
  %8 = zext i1 %7 to i32
  %.retval.0 = add nsw i32 %8, %retval.02
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %2
  br i1 %exitcond, label %._crit_edge, label %3

._crit_edge:                                      ; preds = %3, %0
  %retval.0.lcssa = phi i32 [ 0, %0 ], [ %.retval.0, %3 ]
  ret i32 %retval.0.lcssa
}

attributes #0 = { nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize }
attributes #5 = { optsize }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!2 = !{!3, !3, i64 0}
!3 = !{!"any pointer", !4, i64 0}
!4 = !{!"omnipotent char", !5, i64 0}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!7, !7, i64 0}
!7 = !{!"int", !4, i64 0}
