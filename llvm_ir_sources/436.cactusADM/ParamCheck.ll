; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/CartGrid3D/ParamCheck.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.anon = type { double, double, double, double, double, double, double, double, double, double, double, double, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32 }
%struct.cGH = type { i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, double, double*, double*, i32*, i32*, i32, i32*, double, i8***, i8**, %struct.cGHGroupData* }
%struct.cGHGroupData = type { i8, i8 }

@.str = private unnamed_addr constant [16 x i8] c"grid::coarse_dx\00", align 1
@.str1 = private unnamed_addr constant [16 x i8] c"grid::coarse_dy\00", align 1
@.str2 = private unnamed_addr constant [16 x i8] c"grid::coarse_dz\00", align 1
@.str3 = private unnamed_addr constant [8 x i8] c"grid::r\00", align 1
@.str4 = private unnamed_addr constant [8 x i8] c"grid::x\00", align 1
@.str5 = private unnamed_addr constant [8 x i8] c"grid::y\00", align 1
@.str6 = private unnamed_addr constant [8 x i8] c"grid::z\00", align 1
@gridrest_ = external global %struct.anon
@.str7 = private unnamed_addr constant [8 x i8] c"byrange\00", align 1
@.str8 = private unnamed_addr constant [7 x i8] c"octant\00", align 1
@.str9 = private unnamed_addr constant [9 x i8] c"quadrant\00", align 1
@.str10 = private unnamed_addr constant [7 x i8] c"bitant\00", align 1
@.str11 = private unnamed_addr constant [5 x i8] c"full\00", align 1
@.str12 = private unnamed_addr constant [10 x i8] c"byspacing\00", align 1
@.str13 = private unnamed_addr constant [4 x i8] c"box\00", align 1
@.str14 = private unnamed_addr constant [11 x i8] c"CartGrid3D\00", align 1
@.str15 = private unnamed_addr constant [40 x i8] c"No symmetries can be used with box grid\00", align 1
@.str16 = private unnamed_addr constant [29 x i8] c"No grid set up in CartGrid3D\00", align 1
@.str17 = private unnamed_addr constant [97 x i8] c"$Header: /cactus/CactusBase/CartGrid3D/src/ParamCheck.c,v 1.10 2001/05/10 12:35:37 goodale Exp $\00", align 1

; Function Attrs: nounwind optsize readnone ssp uwtable
define i8* @CCTKi_version_CactusBase_CartGrid3D_ParamCheck_c() #0 {
  ret i8* getelementptr inbounds ([97 x i8]* @.str17, i64 0, i64 0)
}

; Function Attrs: nounwind optsize ssp uwtable
define void @ParamCheck_CartGrid3D(%struct.cGH* nocapture readnone %cctkGH) #1 {
  %1 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str, i64 0, i64 0)) #3
  %2 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str1, i64 0, i64 0)) #3
  %3 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str2, i64 0, i64 0)) #3
  %4 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([8 x i8]* @.str3, i64 0, i64 0)) #3
  %5 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([8 x i8]* @.str4, i64 0, i64 0)) #3
  %6 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([8 x i8]* @.str5, i64 0, i64 0)) #3
  %7 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([8 x i8]* @.str6, i64 0, i64 0)) #3
  %8 = load i8** getelementptr inbounds (%struct.anon* @gridrest_, i64 0, i32 13), align 8, !tbaa !2
  %9 = load i8** getelementptr inbounds (%struct.anon* @gridrest_, i64 0, i32 15), align 8, !tbaa !9
  %10 = tail call i32 @CCTK_Equals(i8* %9, i8* getelementptr inbounds ([8 x i8]* @.str7, i64 0, i64 0)) #3
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %23, label %12

; <label>:12                                      ; preds = %0
  %13 = tail call i32 @CCTK_Equals(i8* %8, i8* getelementptr inbounds ([7 x i8]* @.str8, i64 0, i64 0)) #3
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %.critedge

; <label>:15                                      ; preds = %12
  %16 = tail call i32 @CCTK_Equals(i8* %8, i8* getelementptr inbounds ([9 x i8]* @.str9, i64 0, i64 0)) #3
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %.critedge

; <label>:18                                      ; preds = %15
  %19 = tail call i32 @CCTK_Equals(i8* %8, i8* getelementptr inbounds ([7 x i8]* @.str10, i64 0, i64 0)) #3
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %.critedge

; <label>:21                                      ; preds = %18
  %22 = tail call i32 @CCTK_Equals(i8* %8, i8* getelementptr inbounds ([5 x i8]* @.str11, i64 0, i64 0)) #3
  br label %44

; <label>:23                                      ; preds = %0
  %24 = tail call i32 @CCTK_Equals(i8* %9, i8* getelementptr inbounds ([10 x i8]* @.str12, i64 0, i64 0)) #3
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %37, label %26

; <label>:26                                      ; preds = %23
  %27 = tail call i32 @CCTK_Equals(i8* %8, i8* getelementptr inbounds ([7 x i8]* @.str10, i64 0, i64 0)) #3
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %.critedge

; <label>:29                                      ; preds = %26
  %30 = tail call i32 @CCTK_Equals(i8* %8, i8* getelementptr inbounds ([9 x i8]* @.str9, i64 0, i64 0)) #3
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %.critedge

; <label>:32                                      ; preds = %29
  %33 = tail call i32 @CCTK_Equals(i8* %8, i8* getelementptr inbounds ([7 x i8]* @.str8, i64 0, i64 0)) #3
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %.critedge

; <label>:35                                      ; preds = %32
  %36 = tail call i32 @CCTK_Equals(i8* %8, i8* getelementptr inbounds ([5 x i8]* @.str11, i64 0, i64 0)) #3
  br label %44

; <label>:37                                      ; preds = %23
  %38 = tail call i32 @CCTK_Equals(i8* %9, i8* getelementptr inbounds ([4 x i8]* @.str13, i64 0, i64 0)) #3
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %.critedge3, label %40

; <label>:40                                      ; preds = %37
  %41 = tail call i32 @CCTK_Equals(i8* %8, i8* getelementptr inbounds ([5 x i8]* @.str11, i64 0, i64 0)) #3
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %.critedge2, label %.critedge

.critedge2:                                       ; preds = %40
  %43 = tail call i32 @CCTK_ParamWarn(i8* getelementptr inbounds ([11 x i8]* @.str14, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8]* @.str15, i64 0, i64 0)) #3
  br label %.critedge

; <label>:44                                      ; preds = %35, %21
  %.sink10 = phi i32 [ %36, %35 ], [ %22, %21 ]
  %45 = icmp eq i32 %.sink10, 0
  br i1 %45, label %.critedge3, label %.critedge

.critedge3:                                       ; preds = %37, %44
  %46 = tail call i32 @CCTK_ParamWarn(i8* getelementptr inbounds ([11 x i8]* @.str14, i64 0, i64 0), i8* getelementptr inbounds ([29 x i8]* @.str16, i64 0, i64 0)) #3
  br label %.critedge

.critedge:                                        ; preds = %32, %29, %26, %18, %15, %12, %40, %.critedge2, %.critedge3, %44
  ret void
}

; Function Attrs: optsize
declare i32 @CCTK_VarIndex(i8*) #2

; Function Attrs: optsize
declare i32 @CCTK_Equals(i8*, i8*) #2

; Function Attrs: optsize
declare i32 @CCTK_ParamWarn(i8*, i8*) #2

attributes #0 = { nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!2 = !{!3, !7, i64 104}
!3 = !{!"", !4, i64 0, !4, i64 8, !4, i64 16, !4, i64 24, !4, i64 32, !4, i64 40, !4, i64 48, !4, i64 56, !4, i64 64, !4, i64 72, !4, i64 80, !4, i64 88, !7, i64 96, !7, i64 104, !7, i64 112, !7, i64 120, !8, i64 128, !8, i64 132, !8, i64 136, !8, i64 140, !8, i64 144, !8, i64 148}
!4 = !{!"double", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!"any pointer", !5, i64 0}
!8 = !{!"int", !5, i64 0}
!9 = !{!3, !7, i64 120}
