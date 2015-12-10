; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/IOBasic/WriteInfo.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.cGH = type { i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, double, double*, double*, i32*, i32*, i32, i32*, double, i8***, i8**, %struct.cGHGroupData* }
%struct.cGHGroupData = type { i8, i8 }
%struct.IOBASIC_REDUCTIONLIST = type { i32, %struct.IOBASIC_REDUCTION* }
%struct.IOBASIC_REDUCTION = type { i32, i8*, i8, double, %struct.IOBASIC_REDUCTION* }

@.str = private unnamed_addr constant [8 x i8] c"IOBasic\00", align 1
@.str1 = private unnamed_addr constant [79 x i8] c"../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/IOBasic/WriteInfo.c\00", align 1
@.str2 = private unnamed_addr constant [56 x i8] c"IOBasic_WriteInfo: No info output for '%s' (no storage)\00", align 1
@.str3 = private unnamed_addr constant [41 x i8] c"IOBasic_WriteInfo: Unsupported data type\00", align 1
@.str4 = private unnamed_addr constant [52 x i8] c"IOBasic_WriteInfo: Internal error in reduction '%s'\00", align 1
@.str5 = private unnamed_addr constant [92 x i8] c"$Header: /cactus/CactusBase/IOBasic/src/WriteInfo.c,v 1.16 2001/12/28 21:22:52 tradke Exp $\00", align 1

; Function Attrs: nounwind optsize readnone ssp uwtable
define i8* @CCTKi_version_CactusBase_IOBasic_WriteInfo_c() #0 {
  ret i8* getelementptr inbounds ([92 x i8]* @.str5, i64 0, i64 0)
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @IOBasic_WriteInfo(%struct.cGH* %GH, i32 %vindex) #1 {
  %1 = tail call i8* @CCTK_GHExtension(%struct.cGH* %GH, i8* getelementptr inbounds ([8 x i8]* @.str, i64 0, i64 0)) #4
  %2 = sext i32 %vindex to i64
  %3 = getelementptr inbounds i8* %1, i64 48
  %4 = bitcast i8* %3 to %struct.IOBASIC_REDUCTIONLIST**
  %5 = load %struct.IOBASIC_REDUCTIONLIST** %4, align 8, !tbaa !2
  %6 = getelementptr inbounds %struct.IOBASIC_REDUCTIONLIST* %5, i64 %2, i32 1
  %7 = load %struct.IOBASIC_REDUCTION** %6, align 8, !tbaa !8
  %8 = tail call i32 @CCTK_GroupIndexFromVarI(i32 %vindex) #4
  %9 = tail call i32 @CCTK_QueryGroupStorageI(%struct.cGH* %GH, i32 %8) #4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %19

; <label>:11                                      ; preds = %0
  %12 = tail call i8* @CCTK_FullName(i32 %vindex) #4
  %13 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 2, i32 85, i8* getelementptr inbounds ([79 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([56 x i8]* @.str2, i64 0, i64 0), i8* %12) #4
  tail call void @free(i8* %12) #5
  %14 = icmp eq %struct.IOBASIC_REDUCTION* %7, null
  br i1 %14, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %11, %.lr.ph
  %reduction.02 = phi %struct.IOBASIC_REDUCTION* [ %17, %.lr.ph ], [ %7, %11 ]
  %15 = getelementptr inbounds %struct.IOBASIC_REDUCTION* %reduction.02, i64 0, i32 2
  store i8 0, i8* %15, align 1, !tbaa !10
  %16 = getelementptr inbounds %struct.IOBASIC_REDUCTION* %reduction.02, i64 0, i32 4
  %17 = load %struct.IOBASIC_REDUCTION** %16, align 8, !tbaa !13
  %18 = icmp eq %struct.IOBASIC_REDUCTION* %17, null
  br i1 %18, label %.loopexit, label %.lr.ph

; <label>:19                                      ; preds = %0
  %20 = tail call i32 @CCTK_GroupTypeFromVarI(i32 %vindex) #4
  %21 = icmp eq i32 %20, 1
  br i1 %21, label %23, label %.preheader

.preheader:                                       ; preds = %19
  %22 = icmp eq %struct.IOBASIC_REDUCTION* %7, null
  br i1 %22, label %.loopexit, label %.lr.ph4

; <label>:23                                      ; preds = %19
  %24 = getelementptr inbounds %struct.IOBASIC_REDUCTION* %7, i64 0, i32 2
  store i8 1, i8* %24, align 1, !tbaa !10
  %25 = tail call i8* @CCTK_VarDataPtrI(%struct.cGH* %GH, i32 0, i32 %vindex) #4
  %26 = tail call i32 @CCTK_VarTypeI(i32 %vindex) #4
  switch i32 %26, label %123 [
    i32 1, label %27
    i32 2, label %31
    i32 6, label %36
    i32 10, label %41
    i32 3, label %54
    i32 4, label %59
    i32 5, label %64
    i32 7, label %69
    i32 11, label %74
    i32 8, label %87
    i32 12, label %92
    i32 9, label %105
    i32 13, label %110
  ]

; <label>:27                                      ; preds = %23
  %28 = load i8* %25, align 1, !tbaa !14
  %29 = uitofp i8 %28 to double
  %30 = getelementptr inbounds %struct.IOBASIC_REDUCTION* %7, i64 0, i32 3
  store double %29, double* %30, align 8, !tbaa !15
  br label %.loopexit

; <label>:31                                      ; preds = %23
  %32 = bitcast i8* %25 to i32*
  %33 = load i32* %32, align 4, !tbaa !16
  %34 = sitofp i32 %33 to double
  %35 = getelementptr inbounds %struct.IOBASIC_REDUCTION* %7, i64 0, i32 3
  store double %34, double* %35, align 8, !tbaa !15
  br label %.loopexit

; <label>:36                                      ; preds = %23
  %37 = bitcast i8* %25 to i64*
  %38 = load i64* %37, align 8, !tbaa !17
  %39 = getelementptr inbounds %struct.IOBASIC_REDUCTION* %7, i64 0, i32 3
  %40 = bitcast double* %39 to i64*
  store i64 %38, i64* %40, align 8, !tbaa !15
  br label %.loopexit

; <label>:41                                      ; preds = %23
  %42 = bitcast i8* %25 to i64*
  %43 = load i64* %42, align 8, !tbaa !17
  %44 = getelementptr inbounds %struct.IOBASIC_REDUCTION* %7, i64 0, i32 3
  %45 = bitcast double* %44 to i64*
  store i64 %43, i64* %45, align 8, !tbaa !15
  %46 = getelementptr inbounds i8* %25, i64 8
  %47 = bitcast i8* %46 to i64*
  %48 = load i64* %47, align 8, !tbaa !17
  %49 = getelementptr inbounds %struct.IOBASIC_REDUCTION* %7, i64 0, i32 4
  %50 = load %struct.IOBASIC_REDUCTION** %49, align 8, !tbaa !13
  %51 = getelementptr inbounds %struct.IOBASIC_REDUCTION* %50, i64 0, i32 3
  %52 = bitcast double* %51 to i64*
  store i64 %48, i64* %52, align 8, !tbaa !15
  %53 = getelementptr inbounds %struct.IOBASIC_REDUCTION* %50, i64 0, i32 2
  store i8 1, i8* %53, align 1, !tbaa !10
  br label %.loopexit

; <label>:54                                      ; preds = %23
  %55 = bitcast i8* %25 to i16*
  %56 = load i16* %55, align 2, !tbaa !18
  %57 = sitofp i16 %56 to double
  %58 = getelementptr inbounds %struct.IOBASIC_REDUCTION* %7, i64 0, i32 3
  store double %57, double* %58, align 8, !tbaa !15
  br label %.loopexit

; <label>:59                                      ; preds = %23
  %60 = bitcast i8* %25 to i32*
  %61 = load i32* %60, align 4, !tbaa !16
  %62 = sitofp i32 %61 to double
  %63 = getelementptr inbounds %struct.IOBASIC_REDUCTION* %7, i64 0, i32 3
  store double %62, double* %63, align 8, !tbaa !15
  br label %.loopexit

; <label>:64                                      ; preds = %23
  %65 = bitcast i8* %25 to i64*
  %66 = load i64* %65, align 8, !tbaa !20
  %67 = sitofp i64 %66 to double
  %68 = getelementptr inbounds %struct.IOBASIC_REDUCTION* %7, i64 0, i32 3
  store double %67, double* %68, align 8, !tbaa !15
  br label %.loopexit

; <label>:69                                      ; preds = %23
  %70 = bitcast i8* %25 to float*
  %71 = load float* %70, align 4, !tbaa !22
  %72 = fpext float %71 to double
  %73 = getelementptr inbounds %struct.IOBASIC_REDUCTION* %7, i64 0, i32 3
  store double %72, double* %73, align 8, !tbaa !15
  br label %.loopexit

; <label>:74                                      ; preds = %23
  %75 = bitcast i8* %25 to float*
  %76 = load float* %75, align 4, !tbaa !22
  %77 = fpext float %76 to double
  %78 = getelementptr inbounds %struct.IOBASIC_REDUCTION* %7, i64 0, i32 3
  store double %77, double* %78, align 8, !tbaa !15
  %79 = getelementptr inbounds i8* %25, i64 4
  %80 = bitcast i8* %79 to float*
  %81 = load float* %80, align 4, !tbaa !22
  %82 = fpext float %81 to double
  %83 = getelementptr inbounds %struct.IOBASIC_REDUCTION* %7, i64 0, i32 4
  %84 = load %struct.IOBASIC_REDUCTION** %83, align 8, !tbaa !13
  %85 = getelementptr inbounds %struct.IOBASIC_REDUCTION* %84, i64 0, i32 3
  store double %82, double* %85, align 8, !tbaa !15
  %86 = getelementptr inbounds %struct.IOBASIC_REDUCTION* %84, i64 0, i32 2
  store i8 1, i8* %86, align 1, !tbaa !10
  br label %.loopexit

; <label>:87                                      ; preds = %23
  %88 = bitcast i8* %25 to i64*
  %89 = load i64* %88, align 8, !tbaa !17
  %90 = getelementptr inbounds %struct.IOBASIC_REDUCTION* %7, i64 0, i32 3
  %91 = bitcast double* %90 to i64*
  store i64 %89, i64* %91, align 8, !tbaa !15
  br label %.loopexit

; <label>:92                                      ; preds = %23
  %93 = bitcast i8* %25 to i64*
  %94 = load i64* %93, align 8, !tbaa !17
  %95 = getelementptr inbounds %struct.IOBASIC_REDUCTION* %7, i64 0, i32 3
  %96 = bitcast double* %95 to i64*
  store i64 %94, i64* %96, align 8, !tbaa !15
  %97 = getelementptr inbounds i8* %25, i64 8
  %98 = bitcast i8* %97 to i64*
  %99 = load i64* %98, align 8, !tbaa !17
  %100 = getelementptr inbounds %struct.IOBASIC_REDUCTION* %7, i64 0, i32 4
  %101 = load %struct.IOBASIC_REDUCTION** %100, align 8, !tbaa !13
  %102 = getelementptr inbounds %struct.IOBASIC_REDUCTION* %101, i64 0, i32 3
  %103 = bitcast double* %102 to i64*
  store i64 %99, i64* %103, align 8, !tbaa !15
  %104 = getelementptr inbounds %struct.IOBASIC_REDUCTION* %101, i64 0, i32 2
  store i8 1, i8* %104, align 1, !tbaa !10
  br label %.loopexit

; <label>:105                                     ; preds = %23
  %106 = bitcast i8* %25 to x86_fp80*
  %107 = load x86_fp80* %106, align 16, !tbaa !24
  %108 = fptrunc x86_fp80 %107 to double
  %109 = getelementptr inbounds %struct.IOBASIC_REDUCTION* %7, i64 0, i32 3
  store double %108, double* %109, align 8, !tbaa !15
  br label %.loopexit

; <label>:110                                     ; preds = %23
  %111 = bitcast i8* %25 to x86_fp80*
  %112 = load x86_fp80* %111, align 16, !tbaa !24
  %113 = fptrunc x86_fp80 %112 to double
  %114 = getelementptr inbounds %struct.IOBASIC_REDUCTION* %7, i64 0, i32 3
  store double %113, double* %114, align 8, !tbaa !15
  %115 = getelementptr inbounds i8* %25, i64 16
  %116 = bitcast i8* %115 to x86_fp80*
  %117 = load x86_fp80* %116, align 16, !tbaa !24
  %118 = fptrunc x86_fp80 %117 to double
  %119 = getelementptr inbounds %struct.IOBASIC_REDUCTION* %7, i64 0, i32 4
  %120 = load %struct.IOBASIC_REDUCTION** %119, align 8, !tbaa !13
  %121 = getelementptr inbounds %struct.IOBASIC_REDUCTION* %120, i64 0, i32 3
  store double %118, double* %121, align 8, !tbaa !15
  %122 = getelementptr inbounds %struct.IOBASIC_REDUCTION* %120, i64 0, i32 2
  store i8 1, i8* %122, align 1, !tbaa !10
  br label %.loopexit

; <label>:123                                     ; preds = %23
  %124 = tail call i32 @CCTK_Warn(i32 3, i32 180, i8* getelementptr inbounds ([79 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([41 x i8]* @.str3, i64 0, i64 0)) #4
  store i8 0, i8* %24, align 1, !tbaa !10
  br label %.loopexit

.lr.ph4:                                          ; preds = %.preheader, %137
  %reduction.13 = phi %struct.IOBASIC_REDUCTION* [ %139, %137 ], [ %7, %.preheader ]
  %125 = getelementptr inbounds %struct.IOBASIC_REDUCTION* %reduction.13, i64 0, i32 0
  %126 = load i32* %125, align 4, !tbaa !26
  %127 = getelementptr inbounds %struct.IOBASIC_REDUCTION* %reduction.13, i64 0, i32 3
  %128 = bitcast double* %127 to i8*
  %129 = tail call i32 (%struct.cGH*, i32, i32, i32, i32, i8*, i32, ...)* @CCTK_Reduce(%struct.cGH* %GH, i32 0, i32 %126, i32 1, i32 6, i8* %128, i32 1, i32 %vindex) #4
  %130 = icmp eq i32 %129, 0
  %131 = zext i1 %130 to i8
  %132 = getelementptr inbounds %struct.IOBASIC_REDUCTION* %reduction.13, i64 0, i32 2
  store i8 %131, i8* %132, align 1, !tbaa !10
  br i1 %130, label %137, label %133

; <label>:133                                     ; preds = %.lr.ph4
  %134 = getelementptr inbounds %struct.IOBASIC_REDUCTION* %reduction.13, i64 0, i32 1
  %135 = load i8** %134, align 8, !tbaa !27
  %136 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 195, i8* getelementptr inbounds ([79 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([52 x i8]* @.str4, i64 0, i64 0), i8* %135) #4
  br label %137

; <label>:137                                     ; preds = %133, %.lr.ph4
  %138 = getelementptr inbounds %struct.IOBASIC_REDUCTION* %reduction.13, i64 0, i32 4
  %139 = load %struct.IOBASIC_REDUCTION** %138, align 8, !tbaa !13
  %140 = icmp eq %struct.IOBASIC_REDUCTION* %139, null
  br i1 %140, label %.loopexit, label %.lr.ph4

.loopexit:                                        ; preds = %137, %.lr.ph, %.preheader, %11, %31, %41, %59, %69, %87, %105, %123, %110, %92, %74, %64, %54, %36, %27
  %.0 = phi i32 [ 0, %27 ], [ 0, %36 ], [ 0, %54 ], [ 0, %64 ], [ 0, %74 ], [ 0, %92 ], [ 0, %110 ], [ 0, %123 ], [ 0, %105 ], [ 0, %87 ], [ 0, %69 ], [ 0, %59 ], [ 0, %41 ], [ 0, %31 ], [ -1, %11 ], [ 0, %.preheader ], [ -1, %.lr.ph ], [ 0, %137 ]
  ret i32 %.0
}

; Function Attrs: optsize
declare i8* @CCTK_GHExtension(%struct.cGH*, i8*) #2

; Function Attrs: optsize
declare i32 @CCTK_QueryGroupStorageI(%struct.cGH*, i32) #2

; Function Attrs: optsize
declare i32 @CCTK_GroupIndexFromVarI(i32) #2

; Function Attrs: optsize
declare i8* @CCTK_FullName(i32) #2

; Function Attrs: optsize
declare i32 @CCTK_VWarn(i32, i32, i8*, i8*, i8*, ...) #2

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #3

; Function Attrs: optsize
declare i32 @CCTK_GroupTypeFromVarI(i32) #2

; Function Attrs: optsize
declare i8* @CCTK_VarDataPtrI(%struct.cGH*, i32, i32) #2

; Function Attrs: optsize
declare i32 @CCTK_VarTypeI(i32) #2

; Function Attrs: optsize
declare i32 @CCTK_Warn(i32, i32, i8*, i8*, i8*) #2

; Function Attrs: optsize
declare i32 @CCTK_Reduce(%struct.cGH*, i32, i32, i32, i32, i8*, i32, ...) #2

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
!2 = !{!3, !7, i64 48}
!3 = !{!"IOBASIC_GH", !4, i64 0, !4, i64 4, !5, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!"any pointer", !5, i64 0}
!8 = !{!9, !7, i64 8}
!9 = !{!"IOBASIC_REDUCTIONLIST", !4, i64 0, !7, i64 8}
!10 = !{!11, !5, i64 16}
!11 = !{!"IOBASIC_REDUCTION", !4, i64 0, !7, i64 8, !5, i64 16, !12, i64 24, !7, i64 32}
!12 = !{!"double", !5, i64 0}
!13 = !{!11, !7, i64 32}
!14 = !{!5, !5, i64 0}
!15 = !{!11, !12, i64 24}
!16 = !{!4, !4, i64 0}
!17 = !{!12, !12, i64 0}
!18 = !{!19, !19, i64 0}
!19 = !{!"short", !5, i64 0}
!20 = !{!21, !21, i64 0}
!21 = !{!"long", !5, i64 0}
!22 = !{!23, !23, i64 0}
!23 = !{!"float", !5, i64 0}
!24 = !{!25, !25, i64 0}
!25 = !{!"long double", !5, i64 0}
!26 = !{!11, !4, i64 0}
!27 = !{!11, !7, i64 8}
