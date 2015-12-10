; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/CartGrid3D/SetSymmetry.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.cGH = type { i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, double, double*, double*, i32*, i32*, i32, i32*, double, i8***, i8**, %struct.cGHGroupData* }
%struct.cGHGroupData = type { i8, i8 }
%struct.Symmetry = type { i32** }

@.str = private unnamed_addr constant [9 x i8] c"Symmetry\00", align 1
@.str1 = private unnamed_addr constant [84 x i8] c"../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/CartGrid3D/SetSymmetry.c\00", align 1
@.str2 = private unnamed_addr constant [11 x i8] c"CartGrid3D\00", align 1
@.str3 = private unnamed_addr constant [40 x i8] c"Cannot find variable %s in SetCartSymVN\00", align 1
@.str4 = private unnamed_addr constant [53 x i8] c"Cannot find group %s (grp.index: %d) in SetCartSymGI\00", align 1
@.str5 = private unnamed_addr constant [37 x i8] c"Cannot find group %s in SetCartSymGN\00", align 1
@.str6 = private unnamed_addr constant [97 x i8] c"$Header: /cactus/CactusBase/CartGrid3D/src/SetSymmetry.c,v 1.7 2001/05/10 12:35:37 goodale Exp $\00", align 1

; Function Attrs: nounwind optsize readnone ssp uwtable
define i8* @CCTKi_version_CactusBase_CartGrid3D_SetSymmetry_c() #0 {
  ret i8* getelementptr inbounds ([97 x i8]* @.str6, i64 0, i64 0)
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @SetCartSymVI(%struct.cGH* nocapture readonly %GH, i32* nocapture readonly %sym, i32 %vi) #1 {
  %domainsym = alloca [6 x i32], align 16
  %1 = tail call i32 @CCTK_GHExtensionHandle(i8* getelementptr inbounds ([9 x i8]* @.str, i64 0, i64 0)) #4
  %2 = sext i32 %1 to i64
  %3 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 18
  %4 = load i8*** %3, align 8, !tbaa !2
  %5 = getelementptr inbounds i8** %4, i64 %2
  %6 = bitcast i8** %5 to %struct.Symmetry**
  %7 = load %struct.Symmetry** %6, align 8, !tbaa !9
  %8 = getelementptr inbounds [6 x i32]* %domainsym, i64 0, i64 0
  call void @DecodeSymParameters3D(i32* %8) #4
  %9 = sext i32 %vi to i64
  %10 = getelementptr inbounds %struct.Symmetry* %7, i64 0, i32 0
  br label %11

; <label>:11                                      ; preds = %30, %0
  %indvars.iv = phi i64 [ 0, %0 ], [ %indvars.iv.next, %30 ]
  %12 = getelementptr inbounds [6 x i32]* %domainsym, i64 0, i64 %indvars.iv
  %13 = load i32* %12, align 4, !tbaa !10
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %25, label %15

; <label>:15                                      ; preds = %11
  %16 = trunc i64 %indvars.iv to i32
  %17 = sdiv i32 %16, 2
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32* %sym, i64 %18
  %20 = load i32* %19, align 4, !tbaa !10
  %21 = load i32*** %10, align 8, !tbaa !11
  %22 = getelementptr inbounds i32** %21, i64 %9
  %23 = load i32** %22, align 8, !tbaa !9
  %24 = getelementptr inbounds i32* %23, i64 %indvars.iv
  store i32 %20, i32* %24, align 4, !tbaa !10
  br label %30

; <label>:25                                      ; preds = %11
  %26 = load i32*** %10, align 8, !tbaa !11
  %27 = getelementptr inbounds i32** %26, i64 %9
  %28 = load i32** %27, align 8, !tbaa !9
  %29 = getelementptr inbounds i32* %28, i64 %indvars.iv
  store i32 -41, i32* %29, align 4, !tbaa !10
  br label %30

; <label>:30                                      ; preds = %15, %25
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 6
  br i1 %exitcond, label %31, label %11

; <label>:31                                      ; preds = %30
  ret i32 0
}

; Function Attrs: optsize
declare i32 @CCTK_GHExtensionHandle(i8*) #2

; Function Attrs: optsize
declare void @DecodeSymParameters3D(i32*) #2

; Function Attrs: nounwind optsize ssp uwtable
define void @setcartsymvi_(i32* nocapture %ierr, %struct.cGH* nocapture readonly %GH, i32* nocapture readonly %sym, i32* nocapture readonly %vi) #1 {
  %1 = load i32* %vi, align 4, !tbaa !10
  %2 = tail call i32 @SetCartSymVI(%struct.cGH* %GH, i32* %sym, i32 %1) #5
  store i32 0, i32* %ierr, align 4, !tbaa !10
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @SetCartSymVN(%struct.cGH* nocapture readonly %GH, i32* nocapture readonly %sym, i8* %vn) #1 {
  %1 = tail call i32 @CCTK_VarIndex(i8* %vn) #4
  %2 = icmp sgt i32 %1, -1
  br i1 %2, label %3, label %5

; <label>:3                                       ; preds = %0
  %4 = tail call i32 @SetCartSymVI(%struct.cGH* %GH, i32* %sym, i32 %1) #5
  br label %7

; <label>:5                                       ; preds = %0
  %6 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 151, i8* getelementptr inbounds ([84 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8]* @.str3, i64 0, i64 0), i8* %vn) #4
  br label %7

; <label>:7                                       ; preds = %5, %3
  %.0 = phi i32 [ 0, %3 ], [ -1, %5 ]
  ret i32 %.0
}

; Function Attrs: optsize
declare i32 @CCTK_VarIndex(i8*) #2

; Function Attrs: optsize
declare i32 @CCTK_VWarn(i32, i32, i8*, i8*, i8*, ...) #2

; Function Attrs: nounwind optsize ssp uwtable
define void @setcartsymvn_(i32* nocapture %ierr, %struct.cGH* nocapture readonly %GH, i32* nocapture readonly %sym, i8* %cctk_str1, i32 %cctk_strlen1) #1 {
  %1 = tail call i8* @Util_NullTerminateString(i8* %cctk_str1, i32 %cctk_strlen1) #4
  %2 = tail call i32 @SetCartSymVN(%struct.cGH* %GH, i32* %sym, i8* %1) #5
  store i32 %2, i32* %ierr, align 4, !tbaa !10
  tail call void @free(i8* %1) #5
  ret void
}

; Function Attrs: optsize
declare i8* @Util_NullTerminateString(i8*, i32) #2

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #3

; Function Attrs: nounwind optsize ssp uwtable
define i32 @SetCartSymGI(%struct.cGH* nocapture readonly %GH, i32* nocapture readonly %sym, i32 %gi) #1 {
  %domainsym = alloca [6 x i32], align 16
  %1 = tail call i32 @CCTK_GHExtensionHandle(i8* getelementptr inbounds ([9 x i8]* @.str, i64 0, i64 0)) #4
  %2 = sext i32 %1 to i64
  %3 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 18
  %4 = load i8*** %3, align 8, !tbaa !2
  %5 = getelementptr inbounds i8** %4, i64 %2
  %6 = bitcast i8** %5 to %struct.Symmetry**
  %7 = load %struct.Symmetry** %6, align 8, !tbaa !9
  %8 = tail call i32 @CCTK_FirstVarIndexI(i32 %gi) #4
  %9 = tail call i32 @CCTK_NumVarsInGroupI(i32 %gi) #4
  %10 = icmp slt i32 %8, 0
  br i1 %10, label %17, label %.preheader

.preheader:                                       ; preds = %0
  %11 = icmp sgt i32 %9, 0
  br i1 %11, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader
  %12 = add nsw i32 %9, %8
  %13 = getelementptr inbounds [6 x i32]* %domainsym, i64 0, i64 0
  %14 = getelementptr inbounds %struct.Symmetry* %7, i64 0, i32 0
  %15 = sext i32 %8 to i64
  %16 = sext i32 %12 to i64
  br label %20

; <label>:17                                      ; preds = %0
  %18 = tail call i8* @CCTK_GroupName(i32 %gi) #4
  %19 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 200, i8* getelementptr inbounds ([84 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str4, i64 0, i64 0), i8* %18, i32 %8) #4
  br label %.loopexit

; <label>:20                                      ; preds = %.lr.ph, %41
  %indvars.iv3 = phi i64 [ %15, %.lr.ph ], [ %indvars.iv.next4, %41 ]
  call void @DecodeSymParameters3D(i32* %13) #4
  br label %21

; <label>:21                                      ; preds = %40, %20
  %indvars.iv = phi i64 [ 0, %20 ], [ %indvars.iv.next, %40 ]
  %22 = getelementptr inbounds [6 x i32]* %domainsym, i64 0, i64 %indvars.iv
  %23 = load i32* %22, align 4, !tbaa !10
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %35, label %25

; <label>:25                                      ; preds = %21
  %26 = trunc i64 %indvars.iv to i32
  %27 = sdiv i32 %26, 2
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32* %sym, i64 %28
  %30 = load i32* %29, align 4, !tbaa !10
  %31 = load i32*** %14, align 8, !tbaa !11
  %32 = getelementptr inbounds i32** %31, i64 %indvars.iv3
  %33 = load i32** %32, align 8, !tbaa !9
  %34 = getelementptr inbounds i32* %33, i64 %indvars.iv
  store i32 %30, i32* %34, align 4, !tbaa !10
  br label %40

; <label>:35                                      ; preds = %21
  %36 = load i32*** %14, align 8, !tbaa !11
  %37 = getelementptr inbounds i32** %36, i64 %indvars.iv3
  %38 = load i32** %37, align 8, !tbaa !9
  %39 = getelementptr inbounds i32* %38, i64 %indvars.iv
  store i32 -41, i32* %39, align 4, !tbaa !10
  br label %40

; <label>:40                                      ; preds = %25, %35
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 6
  br i1 %exitcond, label %41, label %21

; <label>:41                                      ; preds = %40
  %indvars.iv.next4 = add nsw i64 %indvars.iv3, 1
  %42 = icmp slt i64 %indvars.iv.next4, %16
  br i1 %42, label %20, label %.loopexit

.loopexit:                                        ; preds = %41, %.preheader, %17
  %.0 = phi i32 [ -1, %17 ], [ 0, %.preheader ], [ 0, %41 ]
  ret i32 %.0
}

; Function Attrs: optsize
declare i32 @CCTK_FirstVarIndexI(i32) #2

; Function Attrs: optsize
declare i32 @CCTK_NumVarsInGroupI(i32) #2

; Function Attrs: optsize
declare i8* @CCTK_GroupName(i32) #2

; Function Attrs: nounwind optsize ssp uwtable
define void @setcartsymgi_(i32* nocapture %ierr, %struct.cGH* nocapture readonly %GH, i32* nocapture readonly %sym, i32* nocapture readonly %gi) #1 {
  %1 = load i32* %gi, align 4, !tbaa !10
  %2 = tail call i32 @SetCartSymGI(%struct.cGH* %GH, i32* %sym, i32 %1) #5
  store i32 %2, i32* %ierr, align 4, !tbaa !10
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @SetCartSymGN(%struct.cGH* nocapture readonly %GH, i32* nocapture readonly %sym, i8* %gn) #1 {
  %1 = tail call i32 @CCTK_GroupIndex(i8* %gn) #4
  %2 = icmp sgt i32 %1, -1
  br i1 %2, label %3, label %5

; <label>:3                                       ; preds = %0
  %4 = tail call i32 @SetCartSymGI(%struct.cGH* %GH, i32* %sym, i32 %1) #5
  br label %7

; <label>:5                                       ; preds = %0
  %6 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 277, i8* getelementptr inbounds ([84 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([37 x i8]* @.str5, i64 0, i64 0), i8* %gn) #4
  br label %7

; <label>:7                                       ; preds = %5, %3
  %.0 = phi i32 [ %4, %3 ], [ -1, %5 ]
  ret i32 %.0
}

; Function Attrs: optsize
declare i32 @CCTK_GroupIndex(i8*) #2

; Function Attrs: nounwind optsize ssp uwtable
define void @setcartsymgn_(i32* nocapture %ierr, %struct.cGH* nocapture readonly %GH, i32* nocapture readonly %sym, i8* %cctk_str1, i32 %cctk_strlen1) #1 {
  %1 = tail call i8* @Util_NullTerminateString(i8* %cctk_str1, i32 %cctk_strlen1) #4
  %2 = tail call i32 @SetCartSymGN(%struct.cGH* %GH, i32* %sym, i8* %1) #5
  store i32 %2, i32* %ierr, align 4, !tbaa !10
  tail call void @free(i8* %1) #5
  ret void
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
!2 = !{!3, !7, i64 136}
!3 = !{!"", !4, i64 0, !4, i64 4, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !8, i64 64, !7, i64 72, !7, i64 80, !7, i64 88, !7, i64 96, !4, i64 104, !7, i64 112, !8, i64 120, !7, i64 128, !7, i64 136, !7, i64 144}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!"any pointer", !5, i64 0}
!8 = !{!"double", !5, i64 0}
!9 = !{!7, !7, i64 0}
!10 = !{!4, !4, i64 0}
!11 = !{!12, !7, i64 0}
!12 = !{!"Symmetry", !7, i64 0}
