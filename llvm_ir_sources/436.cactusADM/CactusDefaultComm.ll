; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/Cactus/CactusDefaultComm.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.cGH = type { i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, double, double*, double*, i32*, i32*, i32, i32*, double, i8***, i8**, %struct.cGHGroupData* }
%struct.cGHGroupData = type { i8, i8 }
%struct.tFleshConfig = type { i8*, %struct.cGH**, i32 }

@cctki_paramchecking = external global i32
@cctki_paramcheck_nprocs = external global i32
@.str = private unnamed_addr constant [93 x i8] c"$Header: /cactus/Cactus/src/comm/CactusDefaultComm.c,v 1.48 2001/10/31 11:45:31 tradke Exp $\00", align 1

; Function Attrs: nounwind optsize readnone ssp uwtable
define i8* @CCTKi_version_comm_CactusDefaultComm_c() #0 {
  ret i8* getelementptr inbounds ([93 x i8]* @.str, i64 0, i64 0)
}

; Function Attrs: nounwind optsize ssp uwtable
define %struct.cGH* @CactusDefaultSetupGH(%struct.tFleshConfig* %config, i32 %convergence_level) #1 {
  %1 = icmp sgt i32 %convergence_level, 0
  br i1 %1, label %.thread, label %2

; <label>:2                                       ; preds = %0
  %3 = tail call i8* @malloc(i64 152) #7
  %4 = bitcast i8* %3 to %struct.cGH*
  %5 = icmp eq i8* %3, null
  br i1 %5, label %.thread, label %6

; <label>:6                                       ; preds = %2
  %7 = tail call i32 @CCTK_MaxDim() #7
  %8 = bitcast i8* %3 to i32*
  store i32 %7, i32* %8, align 4, !tbaa !2
  %9 = icmp eq i32 %7, 0
  %. = select i1 %9, i32 1, i32 %7
  %10 = getelementptr inbounds i8* %3, i64 4
  %11 = bitcast i8* %10 to i32*
  store i32 0, i32* %11, align 4, !tbaa !9
  %12 = sext i32 %. to i64
  %13 = shl nsw i64 %12, 2
  %14 = tail call i8* @malloc(i64 %13) #7
  %15 = getelementptr inbounds i8* %3, i64 8
  %16 = bitcast i8* %15 to i8**
  store i8* %14, i8** %16, align 8, !tbaa !10
  %17 = tail call i8* @malloc(i64 %13) #7
  %18 = getelementptr inbounds i8* %3, i64 16
  %19 = bitcast i8* %18 to i8**
  store i8* %17, i8** %19, align 8, !tbaa !11
  %20 = tail call i8* @malloc(i64 %13) #7
  %21 = getelementptr inbounds i8* %3, i64 24
  %22 = bitcast i8* %21 to i8**
  store i8* %20, i8** %22, align 8, !tbaa !12
  %23 = tail call i8* @malloc(i64 %13) #7
  %24 = getelementptr inbounds i8* %3, i64 32
  %25 = bitcast i8* %24 to i8**
  store i8* %23, i8** %25, align 8, !tbaa !13
  %26 = mul nsw i32 %., 3
  %27 = sext i32 %26 to i64
  %28 = shl nsw i64 %27, 2
  %29 = tail call i8* @malloc(i64 %28) #7
  %30 = getelementptr inbounds i8* %3, i64 40
  %31 = bitcast i8* %30 to i8**
  store i8* %29, i8** %31, align 8, !tbaa !14
  %32 = tail call i8* @malloc(i64 %13) #7
  %33 = getelementptr inbounds i8* %3, i64 48
  %34 = bitcast i8* %33 to i8**
  store i8* %32, i8** %34, align 8, !tbaa !15
  %35 = tail call i8* @malloc(i64 %13) #7
  %36 = getelementptr inbounds i8* %3, i64 56
  %37 = bitcast i8* %36 to i8**
  store i8* %35, i8** %37, align 8, !tbaa !16
  %38 = shl nsw i32 %., 1
  %39 = sext i32 %38 to i64
  %40 = shl nsw i64 %39, 2
  %41 = tail call i8* @malloc(i64 %40) #7
  %42 = getelementptr inbounds i8* %3, i64 88
  %43 = bitcast i8* %42 to i8**
  store i8* %41, i8** %43, align 8, !tbaa !17
  %44 = tail call i8* @malloc(i64 %40) #7
  %45 = getelementptr inbounds i8* %3, i64 112
  %46 = bitcast i8* %45 to i8**
  store i8* %44, i8** %46, align 8, !tbaa !18
  %47 = tail call i8* @malloc(i64 %13) #7
  %48 = getelementptr inbounds i8* %3, i64 96
  %49 = bitcast i8* %48 to i8**
  store i8* %47, i8** %49, align 8, !tbaa !19
  %50 = shl nsw i64 %12, 3
  %51 = tail call i8* @malloc(i64 %50) #7
  %52 = getelementptr inbounds i8* %3, i64 72
  %53 = bitcast i8* %52 to i8**
  store i8* %51, i8** %53, align 8, !tbaa !20
  %54 = tail call i8* @malloc(i64 %50) #7
  %55 = getelementptr inbounds i8* %3, i64 80
  %56 = bitcast i8* %55 to i8**
  store i8* %54, i8** %56, align 8, !tbaa !21
  %57 = getelementptr inbounds i8* %3, i64 64
  %58 = bitcast i8* %57 to double*
  store double 1.000000e+00, double* %58, align 8, !tbaa !22
  %59 = getelementptr inbounds i8* %3, i64 104
  %60 = bitcast i8* %59 to i32*
  store i32 0, i32* %60, align 4, !tbaa !23
  %61 = tail call i32 @CCTK_NumVars() #7
  %62 = icmp ne i32 %61, 0
  %63 = sext i32 %61 to i64
  %.op = shl nsw i64 %63, 3
  %64 = select i1 %62, i64 %.op, i64 8
  %65 = tail call i8* @malloc(i64 %64) #7
  %66 = getelementptr inbounds i8* %3, i64 128
  %67 = bitcast i8* %66 to i8****
  %68 = bitcast i8* %66 to i8**
  store i8* %65, i8** %68, align 8, !tbaa !24
  %69 = icmp eq i8* %65, null
  br i1 %69, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %6
  %70 = icmp sgt i32 %61, 0
  br i1 %70, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader, %82
  %indvars.iv = phi i64 [ %indvars.iv.next, %82 ], [ 0, %.preheader ]
  %71 = trunc i64 %indvars.iv to i32
  %72 = tail call i32 @CCTK_NumTimeLevelsFromVarI(i32 %71) #7
  %73 = sext i32 %72 to i64
  %74 = tail call i8* @calloc(i64 %73, i64 8) #7
  %75 = load i8**** %67, align 8, !tbaa !24
  %76 = getelementptr inbounds i8*** %75, i64 %indvars.iv
  %77 = bitcast i8*** %76 to i8**
  store i8* %74, i8** %77, align 8, !tbaa !25
  %78 = load i8**** %67, align 8, !tbaa !24
  %79 = getelementptr inbounds i8*** %78, i64 %indvars.iv
  %80 = load i8*** %79, align 8, !tbaa !25
  %81 = icmp eq i8** %80, null
  br i1 %81, label %.loopexit, label %82

; <label>:82                                      ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %83 = icmp slt i64 %indvars.iv.next, %63
  br i1 %83, label %.lr.ph, label %..loopexit_crit_edge

..loopexit_crit_edge:                             ; preds = %82
  %84 = trunc i64 %indvars.iv.next to i32
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %6, %..loopexit_crit_edge, %.preheader
  %variable.1 = phi i32 [ -1, %6 ], [ %84, %..loopexit_crit_edge ], [ 0, %.preheader ], [ %71, %.lr.ph ]
  %85 = getelementptr inbounds i8* %3, i64 136
  %86 = bitcast i8* %85 to i8***
  store i8** null, i8*** %86, align 8, !tbaa !26
  %87 = tail call i32 @CCTK_NumGroups() #7
  %88 = icmp ne i32 %87, 0
  %89 = sext i32 %87 to i64
  %.op1 = shl nsw i64 %89, 1
  %90 = select i1 %88, i64 %.op1, i64 2
  %91 = tail call i8* @malloc(i64 %90) #7
  %92 = getelementptr inbounds i8* %3, i64 144
  %93 = bitcast i8* %92 to i8**
  store i8* %91, i8** %93, align 8, !tbaa !27
  %94 = bitcast i8* %15 to i32**
  %95 = load i32** %94, align 8, !tbaa !10
  %96 = icmp eq i32* %95, null
  br i1 %96, label %.thread, label %97

; <label>:97                                      ; preds = %.loopexit
  %98 = bitcast i8* %18 to i32**
  %99 = load i32** %98, align 8, !tbaa !11
  %100 = icmp eq i32* %99, null
  br i1 %100, label %.thread, label %101

; <label>:101                                     ; preds = %97
  %102 = bitcast i8* %21 to i32**
  %103 = load i32** %102, align 8, !tbaa !12
  %104 = icmp eq i32* %103, null
  br i1 %104, label %.thread, label %105

; <label>:105                                     ; preds = %101
  %106 = bitcast i8* %24 to i32**
  %107 = load i32** %106, align 8, !tbaa !13
  %108 = icmp eq i32* %107, null
  br i1 %108, label %.thread, label %109

; <label>:109                                     ; preds = %105
  %110 = bitcast i8* %30 to i32**
  %111 = load i32** %110, align 8, !tbaa !14
  %112 = icmp eq i32* %111, null
  br i1 %112, label %.thread, label %113

; <label>:113                                     ; preds = %109
  %114 = bitcast i8* %36 to i32**
  %115 = load i32** %114, align 8, !tbaa !16
  %116 = icmp eq i32* %115, null
  br i1 %116, label %.thread, label %117

; <label>:117                                     ; preds = %113
  %118 = bitcast i8* %33 to i32**
  %119 = load i32** %118, align 8, !tbaa !15
  %120 = icmp eq i32* %119, null
  br i1 %120, label %.thread, label %121

; <label>:121                                     ; preds = %117
  %122 = bitcast i8* %42 to i32**
  %123 = load i32** %122, align 8, !tbaa !17
  %124 = icmp eq i32* %123, null
  br i1 %124, label %.thread, label %125

; <label>:125                                     ; preds = %121
  %126 = bitcast i8* %45 to i32**
  %127 = load i32** %126, align 8, !tbaa !18
  %128 = icmp eq i32* %127, null
  br i1 %128, label %.thread, label %129

; <label>:129                                     ; preds = %125
  %130 = bitcast i8* %48 to i32**
  %131 = load i32** %130, align 8, !tbaa !19
  %132 = icmp eq i32* %131, null
  br i1 %132, label %.thread, label %133

; <label>:133                                     ; preds = %129
  %134 = bitcast i8* %52 to double**
  %135 = load double** %134, align 8, !tbaa !20
  %136 = icmp eq double* %135, null
  br i1 %136, label %.thread, label %137

; <label>:137                                     ; preds = %133
  %138 = bitcast i8* %55 to double**
  %139 = load double** %138, align 8, !tbaa !21
  %140 = icmp eq double* %139, null
  br i1 %140, label %.thread, label %141

; <label>:141                                     ; preds = %137
  %142 = load i8**** %67, align 8, !tbaa !24
  %notlhs = icmp ne i32 %variable.1, %61
  %notrhs = icmp eq i8*** %142, null
  %or.cond.not = or i1 %notrhs, %notlhs
  %143 = icmp eq i8* %91, null
  %or.cond6 = or i1 %or.cond.not, %143
  br i1 %or.cond6, label %.thread, label %144

; <label>:144                                     ; preds = %141
  %145 = tail call i32 @CCTKi_SetupGHExtensions(%struct.tFleshConfig* %config, i32 %convergence_level, %struct.cGH* %4) #7
  br label %.thread

.thread:                                          ; preds = %141, %2, %144, %137, %133, %129, %125, %121, %117, %113, %109, %105, %101, %97, %.loopexit, %0
  %.0 = phi %struct.cGH* [ null, %0 ], [ %4, %144 ], [ null, %141 ], [ null, %137 ], [ null, %133 ], [ null, %129 ], [ null, %125 ], [ null, %121 ], [ null, %117 ], [ null, %113 ], [ null, %109 ], [ null, %105 ], [ null, %101 ], [ null, %97 ], [ null, %.loopexit ], [ null, %2 ]
  ret %struct.cGH* %.0
}

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i64) #2

; Function Attrs: optsize
declare i32 @CCTK_MaxDim() #3

; Function Attrs: optsize
declare i32 @CCTK_NumVars() #3

; Function Attrs: optsize
declare i32 @CCTK_NumTimeLevelsFromVarI(i32) #3

; Function Attrs: nounwind optsize
declare noalias i8* @calloc(i64, i64) #2

; Function Attrs: optsize
declare i32 @CCTK_NumGroups() #3

; Function Attrs: optsize
declare i32 @CCTKi_SetupGHExtensions(%struct.tFleshConfig*, i32, %struct.cGH*) #3

; Function Attrs: nounwind optsize readnone ssp uwtable
define i32 @CactusDefaultMyProc(%struct.cGH* nocapture readnone %GH) #0 {
  ret i32 0
}

; Function Attrs: nounwind optsize readonly ssp uwtable
define i32 @CactusDefaultnProcs(%struct.cGH* nocapture readnone %GH) #4 {
  %1 = load i32* @cctki_paramchecking, align 4, !tbaa !28
  %2 = icmp eq i32 %1, 0
  %3 = load i32* @cctki_paramcheck_nprocs, align 4, !tbaa !28
  %nprocs.0 = select i1 %2, i32 1, i32 %3
  ret i32 %nprocs.0
}

; Function Attrs: noreturn nounwind optsize ssp uwtable
define i32 @CactusDefaultExit(%struct.cGH* nocapture readnone %GH, i32 %retval) #5 {
  tail call void @exit(i32 %retval) #8
  unreachable
}

; Function Attrs: noreturn optsize
declare void @exit(i32) #6

; Function Attrs: noreturn nounwind optsize ssp uwtable
define i32 @CactusDefaultAbort(%struct.cGH* nocapture readnone %GH, i32 %retval) #5 {
  tail call void @exit(i32 0) #8
  unreachable
}

; Function Attrs: nounwind optsize readnone ssp uwtable
define i32 @CactusDefaultBarrier(%struct.cGH* nocapture readnone %GH) #0 {
  ret i32 0
}

attributes #0 = { nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize readonly ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noreturn optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind optsize }
attributes #8 = { noreturn nounwind optsize }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!2 = !{!3, !4, i64 0}
!3 = !{!"", !4, i64 0, !4, i64 4, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !8, i64 64, !7, i64 72, !7, i64 80, !7, i64 88, !7, i64 96, !4, i64 104, !7, i64 112, !8, i64 120, !7, i64 128, !7, i64 136, !7, i64 144}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!"any pointer", !5, i64 0}
!8 = !{!"double", !5, i64 0}
!9 = !{!3, !4, i64 4}
!10 = !{!3, !7, i64 8}
!11 = !{!3, !7, i64 16}
!12 = !{!3, !7, i64 24}
!13 = !{!3, !7, i64 32}
!14 = !{!3, !7, i64 40}
!15 = !{!3, !7, i64 48}
!16 = !{!3, !7, i64 56}
!17 = !{!3, !7, i64 88}
!18 = !{!3, !7, i64 112}
!19 = !{!3, !7, i64 96}
!20 = !{!3, !7, i64 72}
!21 = !{!3, !7, i64 80}
!22 = !{!3, !8, i64 64}
!23 = !{!3, !4, i64 104}
!24 = !{!3, !7, i64 128}
!25 = !{!7, !7, i64 0}
!26 = !{!3, !7, i64 136}
!27 = !{!3, !7, i64 144}
!28 = !{!4, !4, i64 0}
