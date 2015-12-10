; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/PUGH/Overloadables.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.cGH = type { i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, double, double*, double*, i32*, i32*, i32, i32*, double, i8***, i8**, %struct.cGHGroupData* }
%struct.cGHGroupData = type { i8, i8 }
%struct.GROUPDYNAMICDATA = type { i32, i32*, i32*, i32*, i32*, i32*, i32* }
%struct.PGH = type { i8*, i32, i32, i32, i32, i32, i32, i8***, i32, i32*, i32, i32, double, double, double, double, i32, i32, i32, i32, i32, %struct.PGExtras**, %struct.PConnectivity**, i8* }
%struct.PGExtras = type { i32, i32*, double, i32**, i32**, i32*, i32*, i32, i32*, i32**, i32*, i32*, i32*, [4 x [2 x i32*]], [4 x [2 x i32**]], [4 x [2 x i32**]] }
%struct.PConnectivity = type { i32, i32*, i32**, i32* }
%struct.PGA = type { i8*, i32, i32, i8*, i8*, i32, i32, i8*, i32, i32, %struct.PGExtras*, %struct.PConnectivity*, %struct.PComm*, %struct.PComm*, i32, i32, %struct.PGA* }
%struct.PComm = type { i32*, i8**, i8**, i32, i32*, i32, i32, i32 }

@.str = private unnamed_addr constant [92 x i8] c"$Header: /cactus/CactusPUGH/PUGH/src/Overloadables.c,v 1.5 2001/11/05 15:01:46 tradke Exp $\00", align 1

; Function Attrs: nounwind optsize readnone ssp uwtable
define i8* @CCTKi_version_CactusPUGH_PUGH_Overloadables_c() #0 {
  ret i8* getelementptr inbounds ([92 x i8]* @.str, i64 0, i64 0)
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @PUGH_GroupDynamicData(%struct.cGH* %GH, i32 %group, %struct.GROUPDYNAMICDATA* %data) #1 {
  %1 = icmp eq %struct.GROUPDYNAMICDATA* %data, null
  br i1 %1, label %60, label %2

; <label>:2                                       ; preds = %0
  %3 = tail call i32 @CCTK_GroupTypeI(i32 %group) #3
  %4 = and i32 %3, -2
  %5 = icmp eq i32 %4, 2
  br i1 %5, label %6, label %60

; <label>:6                                       ; preds = %2
  %7 = tail call i32 @CCTK_FirstVarIndexI(i32 %group) #3
  %8 = tail call %struct.PGH* @PUGH_pGH(%struct.cGH* %GH) #3
  %9 = icmp eq %struct.PGH* %8, null
  br i1 %9, label %60, label %10

; <label>:10                                      ; preds = %6
  %11 = sext i32 %7 to i64
  %12 = getelementptr inbounds %struct.PGH* %8, i64 0, i32 7
  %13 = bitcast i8**** %12 to %struct.PGA****
  %14 = load %struct.PGA**** %13, align 8, !tbaa !2
  %15 = getelementptr inbounds %struct.PGA*** %14, i64 %11
  %16 = load %struct.PGA*** %15, align 8, !tbaa !9
  %17 = load %struct.PGA** %16, align 8, !tbaa !9
  %18 = getelementptr inbounds %struct.PGA* %17, i64 0, i32 10
  %19 = load %struct.PGExtras** %18, align 8, !tbaa !10
  %20 = getelementptr inbounds %struct.PGExtras* %19, i64 0, i32 0
  %21 = load i32* %20, align 4, !tbaa !12
  %22 = getelementptr inbounds %struct.GROUPDYNAMICDATA* %data, i64 0, i32 0
  store i32 %21, i32* %22, align 4, !tbaa !14
  %23 = getelementptr inbounds %struct.PGExtras* %19, i64 0, i32 6
  %24 = bitcast i32** %23 to i64*
  %25 = load i64* %24, align 8, !tbaa !16
  %26 = getelementptr inbounds %struct.GROUPDYNAMICDATA* %data, i64 0, i32 2
  %27 = bitcast i32** %26 to i64*
  store i64 %25, i64* %27, align 8, !tbaa !17
  %28 = getelementptr inbounds %struct.PGExtras* %19, i64 0, i32 1
  %29 = bitcast i32** %28 to i64*
  %30 = load i64* %29, align 8, !tbaa !18
  %31 = getelementptr inbounds %struct.GROUPDYNAMICDATA* %data, i64 0, i32 1
  %32 = bitcast i32** %31 to i64*
  store i64 %30, i64* %32, align 8, !tbaa !19
  %33 = getelementptr inbounds %struct.PGH* %8, i64 0, i32 3
  %34 = load i32* %33, align 4, !tbaa !20
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.PGExtras* %19, i64 0, i32 3
  %37 = load i32*** %36, align 8, !tbaa !21
  %38 = getelementptr inbounds i32** %37, i64 %35
  %39 = bitcast i32** %38 to i64*
  %40 = load i64* %39, align 8, !tbaa !9
  %41 = getelementptr inbounds %struct.GROUPDYNAMICDATA* %data, i64 0, i32 3
  %42 = bitcast i32** %41 to i64*
  store i64 %40, i64* %42, align 8, !tbaa !22
  %43 = getelementptr inbounds %struct.PGExtras* %19, i64 0, i32 4
  %44 = load i32*** %43, align 8, !tbaa !23
  %45 = getelementptr inbounds i32** %44, i64 %35
  %46 = bitcast i32** %45 to i64*
  %47 = load i64* %46, align 8, !tbaa !9
  %48 = getelementptr inbounds %struct.GROUPDYNAMICDATA* %data, i64 0, i32 4
  %49 = bitcast i32** %48 to i64*
  store i64 %47, i64* %49, align 8, !tbaa !24
  %50 = getelementptr inbounds %struct.PGExtras* %19, i64 0, i32 12
  %51 = bitcast i32** %50 to i64*
  %52 = load i64* %51, align 8, !tbaa !25
  %53 = getelementptr inbounds %struct.GROUPDYNAMICDATA* %data, i64 0, i32 6
  %54 = bitcast i32** %53 to i64*
  store i64 %52, i64* %54, align 8, !tbaa !26
  %55 = getelementptr inbounds %struct.PGExtras* %19, i64 0, i32 5
  %56 = bitcast i32** %55 to i64*
  %57 = load i64* %56, align 8, !tbaa !27
  %58 = getelementptr inbounds %struct.GROUPDYNAMICDATA* %data, i64 0, i32 5
  %59 = bitcast i32** %58 to i64*
  store i64 %57, i64* %59, align 8, !tbaa !28
  br label %60

; <label>:60                                      ; preds = %0, %2, %6, %10
  %retval.0 = phi i32 [ 0, %10 ], [ -3, %6 ], [ -2, %2 ], [ -1, %0 ]
  ret i32 %retval.0
}

; Function Attrs: optsize
declare i32 @CCTK_GroupTypeI(i32) #2

; Function Attrs: optsize
declare i32 @CCTK_FirstVarIndexI(i32) #2

; Function Attrs: optsize
declare %struct.PGH* @PUGH_pGH(%struct.cGH*) #2

attributes #0 = { nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!2 = !{!3, !4, i64 32}
!3 = !{!"PGH", !4, i64 0, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !7, i64 24, !7, i64 28, !4, i64 32, !7, i64 40, !4, i64 48, !7, i64 56, !7, i64 60, !8, i64 64, !8, i64 72, !8, i64 80, !8, i64 88, !7, i64 96, !7, i64 100, !7, i64 104, !7, i64 108, !7, i64 112, !4, i64 120, !4, i64 128, !4, i64 136}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!"int", !5, i64 0}
!8 = !{!"double", !5, i64 0}
!9 = !{!4, !4, i64 0}
!10 = !{!11, !4, i64 56}
!11 = !{!"PGA", !4, i64 0, !7, i64 8, !7, i64 12, !4, i64 16, !4, i64 24, !7, i64 32, !7, i64 36, !4, i64 40, !7, i64 48, !7, i64 52, !4, i64 56, !4, i64 64, !4, i64 72, !4, i64 80, !7, i64 88, !7, i64 92, !4, i64 96}
!12 = !{!13, !7, i64 0}
!13 = !{!"PGExtras", !7, i64 0, !4, i64 8, !8, i64 16, !4, i64 24, !4, i64 32, !4, i64 40, !4, i64 48, !7, i64 56, !4, i64 64, !4, i64 72, !4, i64 80, !4, i64 88, !4, i64 96, !5, i64 104, !5, i64 168, !5, i64 232}
!14 = !{!15, !7, i64 0}
!15 = !{!"GROUPDYNAMICDATA", !7, i64 0, !4, i64 8, !4, i64 16, !4, i64 24, !4, i64 32, !4, i64 40, !4, i64 48}
!16 = !{!13, !4, i64 48}
!17 = !{!15, !4, i64 16}
!18 = !{!13, !4, i64 8}
!19 = !{!15, !4, i64 8}
!20 = !{!3, !7, i64 16}
!21 = !{!13, !4, i64 24}
!22 = !{!15, !4, i64 24}
!23 = !{!13, !4, i64 32}
!24 = !{!15, !4, i64 32}
!25 = !{!13, !4, i64 96}
!26 = !{!15, !4, i64 48}
!27 = !{!13, !4, i64 40}
!28 = !{!15, !4, i64 40}
