; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/CartGrid3D/SymmetryWrappers.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.anon = type { double, double, double, double, double, double, double, double, double, double, double, double, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32 }
%struct.anon.0 = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.cGH = type { i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, double, double*, double*, i32*, i32*, i32, i32*, double, i8***, i8**, %struct.cGHGroupData* }
%struct.cGHGroupData = type { i8, i8 }
%struct.Symmetry = type { i32** }

@gridrest_ = external global %struct.anon
@cartgrid3dpriv_ = external global %struct.anon.0
@.str = private unnamed_addr constant [89 x i8] c"../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/CartGrid3D/SymmetryWrappers.c\00", align 1
@.str1 = private unnamed_addr constant [11 x i8] c"CartGrid3D\00", align 1
@.str2 = private unnamed_addr constant [37 x i8] c"CartSymGI: Cannot find group %d (%s)\00", align 1
@.str3 = private unnamed_addr constant [9 x i8] c"Symmetry\00", align 1
@.str4 = private unnamed_addr constant [30 x i8] c"Symmetries unspecified for %s\00", align 1
@.str5 = private unnamed_addr constant [30 x i8] c"No Symmetries for GF of dim>3\00", align 1
@.str6 = private unnamed_addr constant [32 x i8] c"CartSymGN: Cannot find group %s\00", align 1
@.str7 = private unnamed_addr constant [5 x i8] c"full\00", align 1
@.str8 = private unnamed_addr constant [48 x i8] c"Cannot find variable index %d (%s) in CartSymVI\00", align 1
@.str9 = private unnamed_addr constant [27 x i8] c"No Symmetries for GF dim>3\00", align 1
@.str10 = private unnamed_addr constant [37 x i8] c"Cannot find variable %s in CartSymVN\00", align 1
@.str11 = private unnamed_addr constant [101 x i8] c"$Header: /cactus/CactusBase/CartGrid3D/src/SymmetryWrappers.c,v 1.15 2001/08/18 21:40:41 allen Exp $\00", align 1

; Function Attrs: nounwind optsize readnone ssp uwtable
define i8* @CCTKi_version_CactusBase_CartGrid3D_SymmetryWrappers_c() #0 {
  ret i8* getelementptr inbounds ([101 x i8]* @.str11, i64 0, i64 0)
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CartSymGI(%struct.cGH* %GH, i32 %gi) #1 {
  %1 = load i32* getelementptr inbounds (%struct.anon.0* @cartgrid3dpriv_, i64 0, i32 0), align 4, !tbaa !2
  %2 = load i32* getelementptr inbounds (%struct.anon.0* @cartgrid3dpriv_, i64 0, i32 1), align 4, !tbaa !7
  %3 = load i32* getelementptr inbounds (%struct.anon.0* @cartgrid3dpriv_, i64 0, i32 2), align 4, !tbaa !8
  %4 = load i32* getelementptr inbounds (%struct.anon.0* @cartgrid3dpriv_, i64 0, i32 3), align 4, !tbaa !9
  %5 = load i32* getelementptr inbounds (%struct.anon.0* @cartgrid3dpriv_, i64 0, i32 4), align 4, !tbaa !10
  %6 = load i32* getelementptr inbounds (%struct.anon.0* @cartgrid3dpriv_, i64 0, i32 5), align 4, !tbaa !11
  %7 = load i32* getelementptr inbounds (%struct.anon.0* @cartgrid3dpriv_, i64 0, i32 6), align 4, !tbaa !12
  %8 = load i32* getelementptr inbounds (%struct.anon.0* @cartgrid3dpriv_, i64 0, i32 7), align 4, !tbaa !13
  %9 = tail call i32 @CCTK_FirstVarIndexI(i32 %gi) #4
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %14

; <label>:11                                      ; preds = %0
  %12 = tail call i8* @CCTK_GroupName(i32 %gi) #4
  %13 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 92, i8* getelementptr inbounds ([89 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([37 x i8]* @.str2, i64 0, i64 0), i32 %gi, i8* %12) #4
  br label %141

; <label>:14                                      ; preds = %0
  %15 = tail call i32 @CCTK_NumVarsInGroupI(i32 %gi) #4
  %16 = tail call i32 @CCTK_GroupDimI(i32 %gi) #4
  %17 = tail call i32 @CCTK_GHExtensionHandle(i8* getelementptr inbounds ([9 x i8]* @.str3, i64 0, i64 0)) #4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 18
  %20 = load i8*** %19, align 8, !tbaa !14
  %21 = getelementptr inbounds i8** %20, i64 %18
  %22 = bitcast i8** %21 to %struct.Symmetry**
  %23 = load %struct.Symmetry** %22, align 8, !tbaa !18
  %24 = shl nsw i32 %16, 1
  %25 = sext i32 %24 to i64
  %26 = shl nsw i64 %25, 2
  %27 = tail call i8* @malloc(i64 %26) #4
  %28 = bitcast i8* %27 to i32*
  %29 = sext i32 %16 to i64
  %30 = shl nsw i64 %29, 2
  %31 = tail call i8* @malloc(i64 %30) #4
  %32 = bitcast i8* %31 to i32*
  %33 = tail call i8* @malloc(i64 %30) #4
  %34 = bitcast i8* %33 to i32*
  %35 = tail call i8* @malloc(i64 %30) #4
  %36 = bitcast i8* %35 to i32*
  %37 = tail call i32 @CCTK_GroupStaggerDirArrayGI(i32* %32, i32 %16, i32 %gi) #4
  %38 = icmp ne i32 %5, 0
  %39 = icmp ne i32 %6, 0
  %or.cond = and i1 %38, %39
  %40 = icmp ne i32 %1, 0
  %or.cond3 = and i1 %40, %or.cond
  %41 = icmp ne i32 %2, 0
  %. = and i1 %41, %or.cond3
  %42 = zext i1 %. to i32
  store i32 %42, i32* %36, align 4, !tbaa !19
  %43 = icmp ne i32 %7, 0
  %or.cond5 = and i1 %38, %43
  %or.cond7 = and i1 %40, %or.cond5
  %44 = icmp ne i32 %3, 0
  %.13 = and i1 %44, %or.cond7
  %45 = zext i1 %.13 to i32
  %46 = getelementptr inbounds i8* %35, i64 4
  %47 = bitcast i8* %46 to i32*
  store i32 %45, i32* %47, align 4, !tbaa !19
  %48 = icmp ne i32 %8, 0
  %or.cond9 = and i1 %38, %48
  %or.cond11 = and i1 %40, %or.cond9
  %49 = icmp ne i32 %4, 0
  %.12 = and i1 %49, %or.cond11
  %50 = zext i1 %.12 to i32
  %51 = getelementptr inbounds i8* %35, i64 8
  %52 = bitcast i8* %51 to i32*
  store i32 %50, i32* %52, align 4, !tbaa !19
  %53 = icmp sgt i32 %15, 0
  br i1 %53, label %.preheader.lr.ph, label %._crit_edge17

.preheader.lr.ph:                                 ; preds = %14
  %54 = add nsw i32 %15, %9
  %55 = icmp sgt i32 %16, 0
  %56 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 15
  %57 = getelementptr inbounds %struct.Symmetry* %23, i64 0, i32 0
  %58 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17
  %59 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 6
  %60 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 12
  %61 = add i32 %16, -1
  %62 = sext i32 %9 to i64
  %63 = sext i32 %54 to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %139
  %indvars.iv18 = phi i64 [ %62, %.preheader.lr.ph ], [ %indvars.iv.next19, %139 ]
  br i1 %55, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %.pre = load i32*** %57, align 8, !tbaa !20
  %.phi.trans.insert = getelementptr inbounds i32** %.pre, i64 %indvars.iv18
  %.pre20 = load i32** %.phi.trans.insert, align 8, !tbaa !18
  br label %64

; <label>:64                                      ; preds = %97, %.lr.ph
  %65 = phi i32* [ %.pre20, %.lr.ph ], [ %77, %97 ]
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %97 ]
  %66 = trunc i64 %indvars.iv to i32
  %67 = shl nsw i32 %66, 1
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32* %65, i64 %68
  %70 = load i32* %69, align 4, !tbaa !19
  %71 = icmp eq i32 %70, -42
  br i1 %71, label %72, label %76

; <label>:72                                      ; preds = %64
  %73 = trunc i64 %indvars.iv18 to i32
  %74 = tail call i8* @CCTK_FullName(i32 %73) #4
  %75 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 0, i32 140, i8* getelementptr inbounds ([89 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([30 x i8]* @.str4, i64 0, i64 0), i8* %74) #4
  %.pre21 = load i32*** %57, align 8, !tbaa !20
  %.phi.trans.insert22 = getelementptr inbounds i32** %.pre21, i64 %indvars.iv18
  %.pre23 = load i32** %.phi.trans.insert22, align 8, !tbaa !18
  br label %76

; <label>:76                                      ; preds = %72, %64
  %77 = phi i32* [ %.pre23, %72 ], [ %65, %64 ]
  %78 = getelementptr inbounds i32* %32, i64 %indvars.iv
  %79 = load i32* %78, align 4, !tbaa !19
  %80 = mul nsw i64 %indvars.iv, 3
  %81 = trunc i64 %80 to i32
  %82 = add nsw i32 %79, %81
  %83 = sext i32 %82 to i64
  %84 = load i32** %59, align 8, !tbaa !22
  %85 = getelementptr inbounds i32* %84, i64 %83
  %86 = load i32* %85, align 4, !tbaa !19
  %87 = getelementptr inbounds i32* %34, i64 %indvars.iv
  store i32 %86, i32* %87, align 4, !tbaa !19
  %88 = getelementptr inbounds i32* %77, i64 %68
  %89 = load i32* %88, align 4, !tbaa !19
  %90 = and i32 %89, -2
  %switch = icmp ne i32 %90, -42
  %91 = icmp sgt i32 %86, 1
  %or.cond14 = and i1 %91, %switch
  br i1 %or.cond14, label %92, label %97

; <label>:92                                      ; preds = %76
  %93 = load i32** %60, align 8, !tbaa !23
  %94 = getelementptr inbounds i32* %93, i64 %68
  %95 = load i32* %94, align 4, !tbaa !19
  %96 = icmp eq i32 %95, 1
  br label %97

; <label>:97                                      ; preds = %76, %92
  %98 = phi i1 [ %96, %92 ], [ false, %76 ]
  %99 = zext i1 %98 to i32
  %100 = getelementptr inbounds i32* %28, i64 %68
  store i32 %99, i32* %100, align 4, !tbaa !19
  %101 = or i32 %67, 1
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32* %28, i64 %102
  store i32 0, i32* %103, align 4, !tbaa !19
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i32 %66, %61
  br i1 %exitcond, label %._crit_edge, label %64

._crit_edge:                                      ; preds = %97, %.preheader
  switch i32 %16, label %137 [
    i32 1, label %104
    i32 2, label %115
    i32 3, label %126
  ]

; <label>:104                                     ; preds = %._crit_edge
  %105 = load i32** %56, align 8, !tbaa !24
  %106 = load i32*** %57, align 8, !tbaa !20
  %107 = getelementptr inbounds i32** %106, i64 %indvars.iv18
  %108 = load i32** %107, align 8, !tbaa !18
  %109 = load i8**** %58, align 8, !tbaa !25
  %110 = getelementptr inbounds i8*** %109, i64 %indvars.iv18
  %111 = bitcast i8*** %110 to double***
  %112 = load double*** %111, align 8, !tbaa !18
  %113 = load double** %112, align 8, !tbaa !18
  %114 = tail call i32 @CartApplySym1Di(%struct.cGH* %GH, i32* %28, i32* %36, i32* %34, i32* %105, i32* %108, double* %113) #4
  br label %139

; <label>:115                                     ; preds = %._crit_edge
  %116 = load i32** %56, align 8, !tbaa !24
  %117 = load i32*** %57, align 8, !tbaa !20
  %118 = getelementptr inbounds i32** %117, i64 %indvars.iv18
  %119 = load i32** %118, align 8, !tbaa !18
  %120 = load i8**** %58, align 8, !tbaa !25
  %121 = getelementptr inbounds i8*** %120, i64 %indvars.iv18
  %122 = bitcast i8*** %121 to double***
  %123 = load double*** %122, align 8, !tbaa !18
  %124 = load double** %123, align 8, !tbaa !18
  %125 = tail call i32 @CartApplySym2Di(%struct.cGH* %GH, i32* %28, i32* %36, i32* %34, i32* %116, i32* %119, double* %124) #4
  br label %139

; <label>:126                                     ; preds = %._crit_edge
  %127 = load i32** %56, align 8, !tbaa !24
  %128 = load i32*** %57, align 8, !tbaa !20
  %129 = getelementptr inbounds i32** %128, i64 %indvars.iv18
  %130 = load i32** %129, align 8, !tbaa !18
  %131 = load i8**** %58, align 8, !tbaa !25
  %132 = getelementptr inbounds i8*** %131, i64 %indvars.iv18
  %133 = bitcast i8*** %132 to double***
  %134 = load double*** %133, align 8, !tbaa !18
  %135 = load double** %134, align 8, !tbaa !18
  %136 = tail call i32 @CartApplySym3Di(%struct.cGH* %GH, i32* %28, i32* %36, i32* %34, i32* %127, i32* %130, double* %135) #4
  br label %139

; <label>:137                                     ; preds = %._crit_edge
  %138 = tail call i32 @CCTK_Warn(i32 1, i32 187, i8* getelementptr inbounds ([89 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([30 x i8]* @.str5, i64 0, i64 0)) #4
  br label %139

; <label>:139                                     ; preds = %137, %126, %115, %104
  %indvars.iv.next19 = add nsw i64 %indvars.iv18, 1
  %140 = icmp slt i64 %indvars.iv.next19, %63
  br i1 %140, label %.preheader, label %._crit_edge17

._crit_edge17:                                    ; preds = %139, %14
  tail call void @free(i8* %31) #5
  tail call void @free(i8* %27) #5
  tail call void @free(i8* %33) #5
  tail call void @free(i8* %35) #5
  br label %141

; <label>:141                                     ; preds = %._crit_edge17, %11
  %.0 = phi i32 [ -1, %11 ], [ %37, %._crit_edge17 ]
  ret i32 %.0
}

; Function Attrs: optsize
declare i32 @CCTK_FirstVarIndexI(i32) #2

; Function Attrs: optsize
declare i32 @CCTK_VWarn(i32, i32, i8*, i8*, i8*, ...) #2

; Function Attrs: optsize
declare i8* @CCTK_GroupName(i32) #2

; Function Attrs: optsize
declare i32 @CCTK_NumVarsInGroupI(i32) #2

; Function Attrs: optsize
declare i32 @CCTK_GroupDimI(i32) #2

; Function Attrs: optsize
declare i32 @CCTK_GHExtensionHandle(i8*) #2

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i64) #3

; Function Attrs: optsize
declare i32 @CCTK_GroupStaggerDirArrayGI(i32*, i32, i32) #2

; Function Attrs: optsize
declare i8* @CCTK_FullName(i32) #2

; Function Attrs: optsize
declare i32 @CartApplySym1Di(%struct.cGH*, i32*, i32*, i32*, i32*, i32*, double*) #2

; Function Attrs: optsize
declare i32 @CartApplySym2Di(%struct.cGH*, i32*, i32*, i32*, i32*, i32*, double*) #2

; Function Attrs: optsize
declare i32 @CartApplySym3Di(%struct.cGH*, i32*, i32*, i32*, i32*, i32*, double*) #2

; Function Attrs: optsize
declare i32 @CCTK_Warn(i32, i32, i8*, i8*, i8*) #2

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #3

; Function Attrs: nounwind optsize ssp uwtable
define void @cartsymgi_(i32* nocapture %ierr, %struct.cGH* %GH, i32* nocapture readonly %gi) #1 {
  %1 = load i32* %gi, align 4, !tbaa !19
  %2 = tail call i32 @CartSymGI(%struct.cGH* %GH, i32 %1) #5
  store i32 %2, i32* %ierr, align 4, !tbaa !19
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CartSymGN(%struct.cGH* %GH, i8* %gn) #1 {
  %1 = tail call i32 @CCTK_GroupIndex(i8* %gn) #4
  %2 = icmp sgt i32 %1, -1
  br i1 %2, label %3, label %5

; <label>:3                                       ; preds = %0
  %4 = tail call i32 @CartSymGI(%struct.cGH* %GH, i32 %1) #5
  br label %7

; <label>:5                                       ; preds = %0
  %6 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 233, i8* getelementptr inbounds ([89 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([32 x i8]* @.str6, i64 0, i64 0), i8* %gn) #4
  br label %7

; <label>:7                                       ; preds = %5, %3
  %retval.0 = phi i32 [ %4, %3 ], [ -1, %5 ]
  ret i32 %retval.0
}

; Function Attrs: optsize
declare i32 @CCTK_GroupIndex(i8*) #2

; Function Attrs: nounwind optsize ssp uwtable
define void @cartsymgn_(i32* nocapture %ierr, %struct.cGH* %GH, i8* %cctk_str1, i32 %cctk_strlen1) #1 {
  %1 = tail call i8* @Util_NullTerminateString(i8* %cctk_str1, i32 %cctk_strlen1) #4
  %2 = tail call i32 @CartSymGN(%struct.cGH* %GH, i8* %1) #5
  store i32 %2, i32* %ierr, align 4, !tbaa !19
  tail call void @free(i8* %1) #5
  ret void
}

; Function Attrs: optsize
declare i8* @Util_NullTerminateString(i8*, i32) #2

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CartSymVI(%struct.cGH* %GH, i32 %vi) #1 {
  %1 = load i8** getelementptr inbounds (%struct.anon* @gridrest_, i64 0, i32 13), align 8, !tbaa !26
  %2 = load i32* getelementptr inbounds (%struct.anon.0* @cartgrid3dpriv_, i64 0, i32 0), align 4, !tbaa !2
  %3 = load i32* getelementptr inbounds (%struct.anon.0* @cartgrid3dpriv_, i64 0, i32 1), align 4, !tbaa !7
  %4 = load i32* getelementptr inbounds (%struct.anon.0* @cartgrid3dpriv_, i64 0, i32 2), align 4, !tbaa !8
  %5 = load i32* getelementptr inbounds (%struct.anon.0* @cartgrid3dpriv_, i64 0, i32 3), align 4, !tbaa !9
  %6 = load i32* getelementptr inbounds (%struct.anon.0* @cartgrid3dpriv_, i64 0, i32 4), align 4, !tbaa !10
  %7 = load i32* getelementptr inbounds (%struct.anon.0* @cartgrid3dpriv_, i64 0, i32 5), align 4, !tbaa !11
  %8 = load i32* getelementptr inbounds (%struct.anon.0* @cartgrid3dpriv_, i64 0, i32 6), align 4, !tbaa !12
  %9 = load i32* getelementptr inbounds (%struct.anon.0* @cartgrid3dpriv_, i64 0, i32 7), align 4, !tbaa !13
  %10 = tail call i32 @CCTK_Equals(i8* %1, i8* getelementptr inbounds ([5 x i8]* @.str7, i64 0, i64 0)) #4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %149

; <label>:12                                      ; preds = %0
  %13 = tail call i32 @CCTK_GroupIndexFromVarI(i32 %vi) #4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %18

; <label>:15                                      ; preds = %12
  %16 = tail call i8* @CCTK_FullName(i32 %vi) #4
  %17 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 284, i8* getelementptr inbounds ([89 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([48 x i8]* @.str8, i64 0, i64 0), i32 %vi, i8* %16) #4
  br label %149

; <label>:18                                      ; preds = %12
  %19 = tail call i32 @CCTK_GroupDimI(i32 %13) #4
  %20 = tail call i32 @CCTK_GHExtensionHandle(i8* getelementptr inbounds ([9 x i8]* @.str3, i64 0, i64 0)) #4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 18
  %23 = load i8*** %22, align 8, !tbaa !14
  %24 = getelementptr inbounds i8** %23, i64 %21
  %25 = bitcast i8** %24 to %struct.Symmetry**
  %26 = load %struct.Symmetry** %25, align 8, !tbaa !18
  %27 = shl nsw i32 %19, 1
  %28 = sext i32 %27 to i64
  %29 = shl nsw i64 %28, 2
  %30 = tail call i8* @malloc(i64 %29) #4
  %31 = bitcast i8* %30 to i32*
  %32 = sext i32 %19 to i64
  %33 = shl nsw i64 %32, 2
  %34 = tail call i8* @malloc(i64 %33) #4
  %35 = bitcast i8* %34 to i32*
  %36 = tail call i8* @malloc(i64 %33) #4
  %37 = bitcast i8* %36 to i32*
  %38 = tail call i8* @malloc(i64 %33) #4
  %39 = bitcast i8* %38 to i32*
  %40 = tail call i32 @CCTK_GroupStaggerDirArrayGI(i32* %35, i32 %19, i32 %13) #4
  %41 = icmp ne i32 %6, 0
  %42 = icmp ne i32 %7, 0
  %or.cond = and i1 %41, %42
  %43 = icmp ne i32 %2, 0
  %or.cond3 = and i1 %43, %or.cond
  %44 = icmp ne i32 %3, 0
  %. = and i1 %44, %or.cond3
  %45 = zext i1 %. to i32
  store i32 %45, i32* %39, align 4, !tbaa !19
  %46 = icmp ne i32 %8, 0
  %or.cond5 = and i1 %41, %46
  %or.cond7 = and i1 %43, %or.cond5
  %47 = icmp ne i32 %4, 0
  %.13 = and i1 %47, %or.cond7
  %48 = zext i1 %.13 to i32
  %49 = getelementptr inbounds i8* %38, i64 4
  %50 = bitcast i8* %49 to i32*
  store i32 %48, i32* %50, align 4, !tbaa !19
  %51 = icmp ne i32 %9, 0
  %or.cond9 = and i1 %41, %51
  %or.cond11 = and i1 %43, %or.cond9
  %52 = icmp ne i32 %5, 0
  %.12 = and i1 %52, %or.cond11
  %53 = zext i1 %.12 to i32
  %54 = getelementptr inbounds i8* %38, i64 8
  %55 = bitcast i8* %54 to i32*
  store i32 %53, i32* %55, align 4, !tbaa !19
  %56 = icmp sgt i32 %19, 0
  br i1 %56, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %18
  %57 = sext i32 %vi to i64
  %58 = getelementptr inbounds %struct.Symmetry* %26, i64 0, i32 0
  %59 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 6
  %60 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 12
  %61 = add i32 %19, -1
  %.pre = load i32*** %58, align 8, !tbaa !20
  %.phi.trans.insert = getelementptr inbounds i32** %.pre, i64 %57
  %.pre16 = load i32** %.phi.trans.insert, align 8, !tbaa !18
  br label %62

; <label>:62                                      ; preds = %94, %.lr.ph
  %63 = phi i32* [ %.pre16, %.lr.ph ], [ %74, %94 ]
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %94 ]
  %64 = trunc i64 %indvars.iv to i32
  %65 = shl nsw i32 %64, 1
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32* %63, i64 %66
  %68 = load i32* %67, align 4, !tbaa !19
  %69 = icmp eq i32 %68, -42
  br i1 %69, label %70, label %73

; <label>:70                                      ; preds = %62
  %71 = tail call i8* @CCTK_FullName(i32 %vi) #4
  %72 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 0, i32 328, i8* getelementptr inbounds ([89 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([30 x i8]* @.str4, i64 0, i64 0), i8* %71) #4
  %.pre17 = load i32*** %58, align 8, !tbaa !20
  %.phi.trans.insert18 = getelementptr inbounds i32** %.pre17, i64 %57
  %.pre19 = load i32** %.phi.trans.insert18, align 8, !tbaa !18
  br label %73

; <label>:73                                      ; preds = %70, %62
  %74 = phi i32* [ %.pre19, %70 ], [ %63, %62 ]
  %75 = getelementptr inbounds i32* %35, i64 %indvars.iv
  %76 = load i32* %75, align 4, !tbaa !19
  %77 = mul nsw i64 %indvars.iv, 3
  %78 = trunc i64 %77 to i32
  %79 = add nsw i32 %76, %78
  %80 = sext i32 %79 to i64
  %81 = load i32** %59, align 8, !tbaa !22
  %82 = getelementptr inbounds i32* %81, i64 %80
  %83 = load i32* %82, align 4, !tbaa !19
  %84 = getelementptr inbounds i32* %37, i64 %indvars.iv
  store i32 %83, i32* %84, align 4, !tbaa !19
  %85 = getelementptr inbounds i32* %74, i64 %66
  %86 = load i32* %85, align 4, !tbaa !19
  %87 = and i32 %86, -2
  %switch = icmp ne i32 %87, -42
  %88 = icmp sgt i32 %83, 1
  %or.cond14 = and i1 %88, %switch
  br i1 %or.cond14, label %89, label %94

; <label>:89                                      ; preds = %73
  %90 = load i32** %60, align 8, !tbaa !23
  %91 = getelementptr inbounds i32* %90, i64 %66
  %92 = load i32* %91, align 4, !tbaa !19
  %93 = icmp ne i32 %92, 0
  br label %94

; <label>:94                                      ; preds = %73, %89
  %95 = phi i1 [ %93, %89 ], [ false, %73 ]
  %96 = zext i1 %95 to i32
  %97 = getelementptr inbounds i32* %31, i64 %66
  store i32 %96, i32* %97, align 4, !tbaa !19
  %98 = or i32 %65, 1
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32* %31, i64 %99
  store i32 0, i32* %100, align 4, !tbaa !19
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i32 %64, %61
  br i1 %exitcond, label %._crit_edge, label %62

._crit_edge:                                      ; preds = %94, %18
  switch i32 %19, label %146 [
    i32 1, label %101
    i32 2, label %116
    i32 3, label %131
  ]

; <label>:101                                     ; preds = %._crit_edge
  %102 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 15
  %103 = load i32** %102, align 8, !tbaa !24
  %104 = sext i32 %vi to i64
  %105 = getelementptr inbounds %struct.Symmetry* %26, i64 0, i32 0
  %106 = load i32*** %105, align 8, !tbaa !20
  %107 = getelementptr inbounds i32** %106, i64 %104
  %108 = load i32** %107, align 8, !tbaa !18
  %109 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17
  %110 = load i8**** %109, align 8, !tbaa !25
  %111 = getelementptr inbounds i8*** %110, i64 %104
  %112 = bitcast i8*** %111 to double***
  %113 = load double*** %112, align 8, !tbaa !18
  %114 = load double** %113, align 8, !tbaa !18
  %115 = tail call i32 @CartApplySym1Di(%struct.cGH* %GH, i32* %31, i32* %39, i32* %37, i32* %103, i32* %108, double* %114) #4
  br label %148

; <label>:116                                     ; preds = %._crit_edge
  %117 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 15
  %118 = load i32** %117, align 8, !tbaa !24
  %119 = sext i32 %vi to i64
  %120 = getelementptr inbounds %struct.Symmetry* %26, i64 0, i32 0
  %121 = load i32*** %120, align 8, !tbaa !20
  %122 = getelementptr inbounds i32** %121, i64 %119
  %123 = load i32** %122, align 8, !tbaa !18
  %124 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17
  %125 = load i8**** %124, align 8, !tbaa !25
  %126 = getelementptr inbounds i8*** %125, i64 %119
  %127 = bitcast i8*** %126 to double***
  %128 = load double*** %127, align 8, !tbaa !18
  %129 = load double** %128, align 8, !tbaa !18
  %130 = tail call i32 @CartApplySym2Di(%struct.cGH* %GH, i32* %31, i32* %39, i32* %37, i32* %118, i32* %123, double* %129) #4
  br label %148

; <label>:131                                     ; preds = %._crit_edge
  %132 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 15
  %133 = load i32** %132, align 8, !tbaa !24
  %134 = sext i32 %vi to i64
  %135 = getelementptr inbounds %struct.Symmetry* %26, i64 0, i32 0
  %136 = load i32*** %135, align 8, !tbaa !20
  %137 = getelementptr inbounds i32** %136, i64 %134
  %138 = load i32** %137, align 8, !tbaa !18
  %139 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17
  %140 = load i8**** %139, align 8, !tbaa !25
  %141 = getelementptr inbounds i8*** %140, i64 %134
  %142 = bitcast i8*** %141 to double***
  %143 = load double*** %142, align 8, !tbaa !18
  %144 = load double** %143, align 8, !tbaa !18
  %145 = tail call i32 @CartApplySym3Di(%struct.cGH* %GH, i32* %31, i32* %39, i32* %37, i32* %133, i32* %138, double* %144) #4
  br label %148

; <label>:146                                     ; preds = %._crit_edge
  %147 = tail call i32 @CCTK_Warn(i32 1, i32 376, i8* getelementptr inbounds ([89 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([27 x i8]* @.str9, i64 0, i64 0)) #4
  br label %148

; <label>:148                                     ; preds = %146, %131, %116, %101
  %berr.0 = phi i32 [ -1, %146 ], [ %145, %131 ], [ %130, %116 ], [ %115, %101 ]
  tail call void @free(i8* %36) #5
  tail call void @free(i8* %34) #5
  tail call void @free(i8* %30) #5
  tail call void @free(i8* %38) #5
  br label %149

; <label>:149                                     ; preds = %0, %148, %15
  %.0 = phi i32 [ -1, %15 ], [ %berr.0, %148 ], [ 0, %0 ]
  ret i32 %.0
}

; Function Attrs: optsize
declare i32 @CCTK_Equals(i8*, i8*) #2

; Function Attrs: optsize
declare i32 @CCTK_GroupIndexFromVarI(i32) #2

; Function Attrs: nounwind optsize ssp uwtable
define void @cartsymvi_(i32* nocapture %ierr, %struct.cGH* %GH, i32* nocapture readonly %vi) #1 {
  %1 = load i32* %vi, align 4, !tbaa !19
  %2 = tail call i32 @CartSymVI(%struct.cGH* %GH, i32 %1) #5
  store i32 %2, i32* %ierr, align 4, !tbaa !19
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CartSymVN(%struct.cGH* %GH, i8* %vn) #1 {
  %1 = tail call i32 @CCTK_VarIndex(i8* %vn) #4
  %2 = icmp sgt i32 %1, -1
  br i1 %2, label %3, label %5

; <label>:3                                       ; preds = %0
  %4 = tail call i32 @CartSymVI(%struct.cGH* %GH, i32 %1) #5
  br label %7

; <label>:5                                       ; preds = %0
  %6 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 421, i8* getelementptr inbounds ([89 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([37 x i8]* @.str10, i64 0, i64 0), i8* %vn) #4
  br label %7

; <label>:7                                       ; preds = %5, %3
  %retval.0 = phi i32 [ %4, %3 ], [ -1, %5 ]
  ret i32 %retval.0
}

; Function Attrs: optsize
declare i32 @CCTK_VarIndex(i8*) #2

; Function Attrs: nounwind optsize ssp uwtable
define void @cartsymvn_(i32* nocapture %ierr, %struct.cGH* %GH, i8* %cctk_str1, i32 %cctk_strlen1) #1 {
  %1 = tail call i8* @Util_NullTerminateString(i8* %cctk_str1, i32 %cctk_strlen1) #4
  %2 = tail call i32 @CartSymVN(%struct.cGH* %GH, i8* %1) #5
  store i32 %2, i32* %ierr, align 4, !tbaa !19
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
!2 = !{!3, !4, i64 0}
!3 = !{!"", !4, i64 0, !4, i64 4, !4, i64 8, !4, i64 12, !4, i64 16, !4, i64 20, !4, i64 24, !4, i64 28}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!3, !4, i64 4}
!8 = !{!3, !4, i64 8}
!9 = !{!3, !4, i64 12}
!10 = !{!3, !4, i64 16}
!11 = !{!3, !4, i64 20}
!12 = !{!3, !4, i64 24}
!13 = !{!3, !4, i64 28}
!14 = !{!15, !16, i64 136}
!15 = !{!"", !4, i64 0, !4, i64 4, !16, i64 8, !16, i64 16, !16, i64 24, !16, i64 32, !16, i64 40, !16, i64 48, !16, i64 56, !17, i64 64, !16, i64 72, !16, i64 80, !16, i64 88, !16, i64 96, !4, i64 104, !16, i64 112, !17, i64 120, !16, i64 128, !16, i64 136, !16, i64 144}
!16 = !{!"any pointer", !5, i64 0}
!17 = !{!"double", !5, i64 0}
!18 = !{!16, !16, i64 0}
!19 = !{!4, !4, i64 0}
!20 = !{!21, !16, i64 0}
!21 = !{!"Symmetry", !16, i64 0}
!22 = !{!15, !16, i64 40}
!23 = !{!15, !16, i64 88}
!24 = !{!15, !16, i64 112}
!25 = !{!15, !16, i64 128}
!26 = !{!27, !16, i64 104}
!27 = !{!"", !17, i64 0, !17, i64 8, !17, i64 16, !17, i64 24, !17, i64 32, !17, i64 40, !17, i64 48, !17, i64 56, !17, i64 64, !17, i64 72, !17, i64 80, !17, i64 88, !16, i64 96, !16, i64 104, !16, i64 112, !16, i64 120, !4, i64 128, !4, i64 132, !4, i64 136, !4, i64 140, !4, i64 144, !4, i64 148}
