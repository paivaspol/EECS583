; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/Cactus/CactusDefaultShutdown.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.cGH = type { i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, double, double*, double*, i32*, i32*, i32, i32*, double, i8***, i8**, %struct.cGHGroupData* }
%struct.cGHGroupData = type { i8, i8 }
%struct.tFleshConfig = type { i8*, %struct.cGH**, i32 }

@CCTK_MyProc = external global i32 (%struct.cGH*)*
@.str = private unnamed_addr constant [15 x i8] c"CCTK_TERMINATE\00", align 1
@.str1 = private unnamed_addr constant [14 x i8] c"CCTK_SHUTDOWN\00", align 1
@.str4 = private unnamed_addr constant [97 x i8] c"$Header: /cactus/Cactus/src/main/CactusDefaultShutdown.c,v 1.17 2001/11/05 14:58:53 tradke Exp $\00", align 1
@str = private unnamed_addr constant [81 x i8] c"--------------------------------------------------------------------------------\00"
@str5 = private unnamed_addr constant [6 x i8] c"Done.\00"

; Function Attrs: nounwind optsize readnone ssp uwtable
define i8* @CCTKi_version_main_CactusDefaultShutdown_c() #0 {
  ret i8* getelementptr inbounds ([97 x i8]* @.str4, i64 0, i64 0)
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CactusDefaultShutdown(%struct.tFleshConfig* nocapture readonly %config) #1 {
  %1 = load i32 (%struct.cGH*)** @CCTK_MyProc, align 8, !tbaa !2
  %2 = getelementptr inbounds %struct.tFleshConfig* %config, i64 0, i32 1
  %3 = load %struct.cGH*** %2, align 8, !tbaa !6
  %4 = load %struct.cGH** %3, align 8, !tbaa !2
  %5 = tail call i32 %1(%struct.cGH* %4) #4
  %6 = getelementptr inbounds %struct.tFleshConfig* %config, i64 0, i32 2
  %7 = load i32* %6, align 4, !tbaa !9
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %._crit_edge, label %.lr.ph5

.preheader:                                       ; preds = %.lr.ph5
  %phitmp = icmp eq i32 %15, 0
  br i1 %phitmp, label %._crit_edge, label %.lr.ph

.lr.ph5:                                          ; preds = %0, %.lr.ph5
  %conv_level.03 = phi i32 [ %14, %.lr.ph5 ], [ 0, %0 ]
  %9 = zext i32 %conv_level.03 to i64
  %10 = load %struct.cGH*** %2, align 8, !tbaa !6
  %11 = getelementptr inbounds %struct.cGH** %10, i64 %9
  %12 = load %struct.cGH** %11, align 8, !tbaa !2
  %13 = tail call i32 @CCTK_Traverse(%struct.cGH* %12, i8* getelementptr inbounds ([15 x i8]* @.str, i64 0, i64 0)) #4
  %14 = add nuw i32 %conv_level.03, 1
  %15 = load i32* %6, align 4, !tbaa !9
  %16 = icmp ult i32 %14, %15
  br i1 %16, label %.lr.ph5, label %.preheader

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %conv_level.12 = phi i32 [ %22, %.lr.ph ], [ 0, %.preheader ]
  %17 = zext i32 %conv_level.12 to i64
  %18 = load %struct.cGH*** %2, align 8, !tbaa !6
  %19 = getelementptr inbounds %struct.cGH** %18, i64 %17
  %20 = load %struct.cGH** %19, align 8, !tbaa !2
  %21 = tail call i32 @CCTK_Traverse(%struct.cGH* %20, i8* getelementptr inbounds ([14 x i8]* @.str1, i64 0, i64 0)) #4
  %22 = add nuw i32 %conv_level.12, 1
  %23 = load i32* %6, align 4, !tbaa !9
  %24 = icmp ult i32 %22, %23
  br i1 %24, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %0, %.preheader
  %25 = icmp eq i32 %5, 0
  br i1 %25, label %26, label %27

; <label>:26                                      ; preds = %._crit_edge
  %puts = tail call i32 @puts(i8* getelementptr inbounds ([81 x i8]* @str, i64 0, i64 0))
  %puts1 = tail call i32 @puts(i8* getelementptr inbounds ([6 x i8]* @str5, i64 0, i64 0))
  br label %27

; <label>:27                                      ; preds = %26, %._crit_edge
  ret i32 0
}

; Function Attrs: optsize
declare i32 @CCTK_Traverse(%struct.cGH*, i8*) #2

; Function Attrs: nounwind
declare i32 @puts(i8* nocapture readonly) #3

attributes #0 = { nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { nounwind optsize }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!2 = !{!3, !3, i64 0}
!3 = !{!"any pointer", !4, i64 0}
!4 = !{!"omnipotent char", !5, i64 0}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!7, !3, i64 8}
!7 = !{!"", !3, i64 0, !3, i64 8, !8, i64 16}
!8 = !{!"int", !4, i64 0}
!9 = !{!7, !8, i64 16}
