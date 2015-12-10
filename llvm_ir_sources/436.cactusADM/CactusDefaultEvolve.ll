; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/Cactus/CactusDefaultEvolve.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.cGH = type { i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, double, double*, double*, i32*, i32*, i32, i32*, double, i8***, i8**, %struct.cGHGroupData* }
%struct.cGHGroupData = type { i8, i8 }
%struct.anon = type { double, double, i8*, i32, i32 }
%struct.tFleshConfig = type { i8*, %struct.cGH**, i32 }

@CCTK_MainLoopIndex = external global i32 ()*
@.str = private unnamed_addr constant [14 x i8] c"CCTK_ANALYSIS\00", align 1
@CCTK_OutputGH = external global i32 (%struct.cGH*)*
@.str1 = private unnamed_addr constant [88 x i8] c"../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/Cactus/CactusDefaultEvolve.c\00", align 1
@.str2 = private unnamed_addr constant [7 x i8] c"Cactus\00", align 1
@.str3 = private unnamed_addr constant [83 x i8] c"Variable '%s' has multiple timelevels, default Cactus evolve routine cannot rotate\00", align 1
@CCTK_SetMainLoopIndex = external global i32 (i32)*
@.str4 = private unnamed_addr constant [16 x i8] c"CCTK_CHECKPOINT\00", align 1
@cactus_terminate = common global i32 0, align 4
@.str5 = private unnamed_addr constant [95 x i8] c"$Header: /cactus/Cactus/src/main/CactusDefaultEvolve.c,v 1.55 2001/09/20 21:46:18 tradke Exp $\00", align 1
@cactusrest_ = external global %struct.anon
@.str6 = private unnamed_addr constant [6 x i8] c"never\00", align 1
@.str7 = private unnamed_addr constant [10 x i8] c"iteration\00", align 1
@.str8 = private unnamed_addr constant [7 x i8] c"either\00", align 1
@.str9 = private unnamed_addr constant [5 x i8] c"both\00", align 1
@.str10 = private unnamed_addr constant [13 x i8] c"CCTK_PRESTEP\00", align 1
@.str11 = private unnamed_addr constant [10 x i8] c"CCTK_EVOL\00", align 1
@.str12 = private unnamed_addr constant [14 x i8] c"CCTK_POSTSTEP\00", align 1

; Function Attrs: nounwind optsize readnone ssp uwtable
define i8* @CCTKi_version_main_CactusDefaultEvolve_c() #0 {
  ret i8* getelementptr inbounds ([95 x i8]* @.str5, i64 0, i64 0)
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CactusDefaultEvolve(%struct.tFleshConfig* nocapture readonly %config) #1 {
  %1 = load i32 ()** @CCTK_MainLoopIndex, align 8, !tbaa !2
  %2 = tail call i32 %1() #3
  %3 = getelementptr inbounds %struct.tFleshConfig* %config, i64 0, i32 2
  %4 = load i32* %3, align 4, !tbaa !6
  %5 = icmp eq i32 %4, 0
  %.pre25 = getelementptr inbounds %struct.tFleshConfig* %config, i64 0, i32 1
  br i1 %5, label %.preheader6, label %.lr.ph21

.lr.ph21:                                         ; preds = %0, %20
  %6 = phi i32 [ %21, %20 ], [ %4, %0 ]
  %factor.019 = phi i32 [ %22, %20 ], [ 1, %0 ]
  %convergence_level.018 = phi i32 [ %23, %20 ], [ 0, %0 ]
  %7 = urem i32 %2, %factor.019
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %20

; <label>:9                                       ; preds = %.lr.ph21
  %10 = zext i32 %convergence_level.018 to i64
  %11 = load %struct.cGH*** %.pre25, align 8, !tbaa !9
  %12 = getelementptr inbounds %struct.cGH** %11, i64 %10
  %13 = load %struct.cGH** %12, align 8, !tbaa !2
  %14 = tail call i32 @CCTK_Traverse(%struct.cGH* %13, i8* getelementptr inbounds ([14 x i8]* @.str, i64 0, i64 0)) #3
  %15 = load i32 (%struct.cGH*)** @CCTK_OutputGH, align 8, !tbaa !2
  %16 = load %struct.cGH*** %.pre25, align 8, !tbaa !9
  %17 = getelementptr inbounds %struct.cGH** %16, i64 %10
  %18 = load %struct.cGH** %17, align 8, !tbaa !2
  %19 = tail call i32 %15(%struct.cGH* %18) #3
  %.pre = load i32* %3, align 4, !tbaa !6
  br label %20

; <label>:20                                      ; preds = %9, %.lr.ph21
  %21 = phi i32 [ %.pre, %9 ], [ %6, %.lr.ph21 ]
  %22 = shl nsw i32 %factor.019, 1
  %23 = add nuw i32 %convergence_level.018, 1
  %24 = icmp ult i32 %23, %21
  br i1 %24, label %.lr.ph21, label %.preheader6

.preheader6:                                      ; preds = %0, %20, %._crit_edge
  %iteration.0 = phi i32 [ %82, %._crit_edge ], [ %2, %20 ], [ %2, %0 ]
  %25 = load %struct.cGH*** %.pre25, align 8, !tbaa !9
  %26 = load %struct.cGH** %25, align 8, !tbaa !2
  %27 = getelementptr inbounds %struct.cGH* %26, i64 0, i32 16
  %28 = load double* %27, align 8, !tbaa !10
  %29 = load double* getelementptr inbounds (%struct.anon* @cactusrest_, i64 0, i32 0), align 8, !tbaa !13
  %30 = load double* getelementptr inbounds (%struct.anon* @cactusrest_, i64 0, i32 1), align 8, !tbaa !15
  %31 = load i8** getelementptr inbounds (%struct.anon* @cactusrest_, i64 0, i32 2), align 8, !tbaa !16
  %32 = load i64* bitcast (i32* getelementptr inbounds (%struct.anon* @cactusrest_, i64 0, i32 3) to i64*), align 8
  %33 = trunc i64 %32 to i32
  %34 = icmp ult i64 %32, 4294967296
  br i1 %34, label %35, label %DoneMainLoop.exit.thread4

; <label>:35                                      ; preds = %.preheader6
  %36 = tail call i32 @CCTK_TerminationReached(%struct.cGH* %26) #3
  %37 = icmp ne i32 %36, 0
  %38 = zext i1 %37 to i32
  br i1 %37, label %DoneMainLoop.exit, label %39

; <label>:39                                      ; preds = %35
  %40 = tail call i32 @CCTK_Equals(i8* %31, i8* getelementptr inbounds ([6 x i8]* @.str6, i64 0, i64 0)) #3
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %DoneMainLoop.exit.thread

; <label>:42                                      ; preds = %39
  %43 = tail call i32 @CCTK_Equals(i8* %31, i8* getelementptr inbounds ([10 x i8]* @.str7, i64 0, i64 0)) #3
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %48, label %45

; <label>:45                                      ; preds = %42
  %46 = icmp sle i32 %33, %iteration.0
  %47 = zext i1 %46 to i32
  br label %DoneMainLoop.exit

; <label>:48                                      ; preds = %42
  %49 = fcmp olt double %30, %29
  br i1 %49, label %50, label %52

; <label>:50                                      ; preds = %48
  %51 = fcmp ole double %29, %28
  br label %54

; <label>:52                                      ; preds = %48
  %53 = fcmp oge double %29, %28
  br label %54

; <label>:54                                      ; preds = %52, %50
  %.sink.i = phi i1 [ %51, %50 ], [ %53, %52 ]
  %55 = tail call i32 @CCTK_Equals(i8* %31, i8* getelementptr inbounds ([7 x i8]* @.str8, i64 0, i64 0)) #3
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %61, label %57

; <label>:57                                      ; preds = %54
  %58 = icmp sle i32 %33, %iteration.0
  %59 = or i1 %58, %.sink.i
  %60 = zext i1 %59 to i32
  br label %DoneMainLoop.exit

; <label>:61                                      ; preds = %54
  %62 = zext i1 %.sink.i to i32
  %63 = tail call i32 @CCTK_Equals(i8* %31, i8* getelementptr inbounds ([5 x i8]* @.str9, i64 0, i64 0)) #3
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %DoneMainLoop.exit, label %65

; <label>:65                                      ; preds = %61
  %66 = icmp sle i32 %33, %iteration.0
  %67 = and i1 %66, %.sink.i
  %68 = zext i1 %67 to i32
  br label %DoneMainLoop.exit

DoneMainLoop.exit:                                ; preds = %35, %45, %57, %61, %65
  %retval.1.i = phi i32 [ %38, %35 ], [ %47, %45 ], [ %60, %57 ], [ %68, %65 ], [ %62, %61 ]
  %69 = icmp eq i32 %retval.1.i, 0
  br i1 %69, label %DoneMainLoop.exit.thread, label %DoneMainLoop.exit.thread4

DoneMainLoop.exit.thread:                         ; preds = %39, %DoneMainLoop.exit
  %70 = icmp eq i32 %iteration.0, 0
  br i1 %70, label %71, label %.loopexit

; <label>:71                                      ; preds = %DoneMainLoop.exit.thread
  %72 = tail call i32 @CCTK_NumVars() #3
  %73 = icmp sgt i32 %72, 0
  br i1 %73, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %71, %.backedge
  %var.08.in = phi i32 [ %var.08, %.backedge ], [ %72, %71 ]
  %var.08 = add nsw i32 %var.08.in, -1
  %74 = tail call i32 @CCTK_NumTimeLevelsFromVarI(i32 %var.08) #3
  %75 = icmp sgt i32 %74, 1
  br i1 %75, label %77, label %.backedge

.backedge:                                        ; preds = %.lr.ph, %77
  %76 = icmp sgt i32 %var.08.in, 1
  br i1 %76, label %.lr.ph, label %.loopexit

; <label>:77                                      ; preds = %.lr.ph
  %78 = tail call i8* @CCTK_VarName(i32 %var.08) #3
  %79 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 0, i32 140, i8* getelementptr inbounds ([88 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([83 x i8]* @.str3, i64 0, i64 0), i8* %78) #3
  br label %.backedge

.loopexit:                                        ; preds = %.backedge, %71, %DoneMainLoop.exit.thread
  %80 = load i32 (i32)** @CCTK_SetMainLoopIndex, align 8, !tbaa !2
  %81 = add i32 %iteration.0, 1
  %82 = tail call i32 %80(i32 %81) #3
  %83 = load i32* %3, align 4, !tbaa !6
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %._crit_edge, label %.lr.ph11

.preheader5:                                      ; preds = %106
  %85 = icmp eq i32 %109, 0
  br i1 %85, label %._crit_edge, label %.lr.ph14

.lr.ph11:                                         ; preds = %.loopexit, %106
  %factor1.010 = phi i32 [ %107, %106 ], [ 1, %.loopexit ]
  %convergence_level.19 = phi i32 [ %108, %106 ], [ 0, %.loopexit ]
  %86 = load i32 ()** @CCTK_MainLoopIndex, align 8, !tbaa !2
  %87 = tail call i32 %86() #3
  %88 = srem i32 %87, %factor1.010
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %106

; <label>:90                                      ; preds = %.lr.ph11
  %91 = zext i32 %convergence_level.19 to i64
  %92 = load %struct.cGH*** %.pre25, align 8, !tbaa !9
  %93 = getelementptr inbounds %struct.cGH** %92, i64 %91
  %94 = load %struct.cGH** %93, align 8, !tbaa !2
  %95 = getelementptr inbounds %struct.cGH* %94, i64 0, i32 16
  %96 = load double* %95, align 8, !tbaa !10
  %97 = getelementptr inbounds %struct.cGH* %94, i64 0, i32 9
  %98 = load double* %97, align 8, !tbaa !17
  %99 = fadd double %96, %98
  store double %99, double* %95, align 8, !tbaa !10
  %100 = getelementptr inbounds %struct.cGH* %94, i64 0, i32 1
  %101 = load i32* %100, align 4, !tbaa !18
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %100, align 4, !tbaa !18
  %103 = tail call i32 @CCTK_Traverse(%struct.cGH* %94, i8* getelementptr inbounds ([13 x i8]* @.str10, i64 0, i64 0)) #3
  %104 = tail call i32 @CCTK_Traverse(%struct.cGH* %94, i8* getelementptr inbounds ([10 x i8]* @.str11, i64 0, i64 0)) #3
  %105 = tail call i32 @CCTK_Traverse(%struct.cGH* %94, i8* getelementptr inbounds ([14 x i8]* @.str12, i64 0, i64 0)) #3
  br label %106

; <label>:106                                     ; preds = %90, %.lr.ph11
  %107 = shl nsw i32 %factor1.010, 1
  %108 = add nuw i32 %convergence_level.19, 1
  %109 = load i32* %3, align 4, !tbaa !6
  %110 = icmp ult i32 %108, %109
  br i1 %110, label %.lr.ph11, label %.preheader5

.preheader:                                       ; preds = %121
  %111 = icmp eq i32 %122, 0
  br i1 %111, label %._crit_edge, label %.lr.ph17

.lr.ph14:                                         ; preds = %.preheader5, %121
  %112 = phi i32 [ %122, %121 ], [ %109, %.preheader5 ]
  %factor2.013 = phi i32 [ %123, %121 ], [ 1, %.preheader5 ]
  %convergence_level.212 = phi i32 [ %124, %121 ], [ 0, %.preheader5 ]
  %113 = urem i32 %82, %factor2.013
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %121

; <label>:115                                     ; preds = %.lr.ph14
  %116 = zext i32 %convergence_level.212 to i64
  %117 = load %struct.cGH*** %.pre25, align 8, !tbaa !9
  %118 = getelementptr inbounds %struct.cGH** %117, i64 %116
  %119 = load %struct.cGH** %118, align 8, !tbaa !2
  %120 = tail call i32 @CCTK_Traverse(%struct.cGH* %119, i8* getelementptr inbounds ([16 x i8]* @.str4, i64 0, i64 0)) #3
  %.pre22 = load i32* %3, align 4, !tbaa !6
  br label %121

; <label>:121                                     ; preds = %115, %.lr.ph14
  %122 = phi i32 [ %.pre22, %115 ], [ %112, %.lr.ph14 ]
  %123 = shl nsw i32 %factor2.013, 1
  %124 = add nuw i32 %convergence_level.212, 1
  %125 = icmp ult i32 %124, %122
  br i1 %125, label %.lr.ph14, label %.preheader

.lr.ph17:                                         ; preds = %.preheader, %140
  %126 = phi i32 [ %141, %140 ], [ %122, %.preheader ]
  %factor3.016 = phi i32 [ %142, %140 ], [ 1, %.preheader ]
  %convergence_level.315 = phi i32 [ %143, %140 ], [ 0, %.preheader ]
  %127 = urem i32 %82, %factor3.016
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %129, label %140

; <label>:129                                     ; preds = %.lr.ph17
  %130 = zext i32 %convergence_level.315 to i64
  %131 = load %struct.cGH*** %.pre25, align 8, !tbaa !9
  %132 = getelementptr inbounds %struct.cGH** %131, i64 %130
  %133 = load %struct.cGH** %132, align 8, !tbaa !2
  %134 = tail call i32 @CCTK_Traverse(%struct.cGH* %133, i8* getelementptr inbounds ([14 x i8]* @.str, i64 0, i64 0)) #3
  %135 = load i32 (%struct.cGH*)** @CCTK_OutputGH, align 8, !tbaa !2
  %136 = load %struct.cGH*** %.pre25, align 8, !tbaa !9
  %137 = getelementptr inbounds %struct.cGH** %136, i64 %130
  %138 = load %struct.cGH** %137, align 8, !tbaa !2
  %139 = tail call i32 %135(%struct.cGH* %138) #3
  %.pre23 = load i32* %3, align 4, !tbaa !6
  br label %140

; <label>:140                                     ; preds = %129, %.lr.ph17
  %141 = phi i32 [ %.pre23, %129 ], [ %126, %.lr.ph17 ]
  %142 = shl nsw i32 %factor3.016, 1
  %143 = add nuw i32 %convergence_level.315, 1
  %144 = icmp ult i32 %143, %141
  br i1 %144, label %.lr.ph17, label %._crit_edge

._crit_edge:                                      ; preds = %140, %.loopexit, %.preheader5, %.preheader
  %145 = load i32* @cactus_terminate, align 4, !tbaa !19
  %146 = icmp eq i32 %145, 4
  br i1 %146, label %DoneMainLoop.exit.thread4, label %.preheader6

DoneMainLoop.exit.thread4:                        ; preds = %.preheader6, %._crit_edge, %DoneMainLoop.exit
  ret i32 0
}

; Function Attrs: optsize
declare i32 @CCTK_Traverse(%struct.cGH*, i8*) #2

; Function Attrs: optsize
declare i32 @CCTK_NumVars() #2

; Function Attrs: optsize
declare i32 @CCTK_NumTimeLevelsFromVarI(i32) #2

; Function Attrs: optsize
declare i32 @CCTK_VWarn(i32, i32, i8*, i8*, i8*, ...) #2

; Function Attrs: optsize
declare i8* @CCTK_VarName(i32) #2

; Function Attrs: optsize
declare i32 @CCTK_TerminationReached(%struct.cGH*) #2

; Function Attrs: optsize
declare i32 @CCTK_Equals(i8*, i8*) #2

attributes #0 = { nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!2 = !{!3, !3, i64 0}
!3 = !{!"any pointer", !4, i64 0}
!4 = !{!"omnipotent char", !5, i64 0}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!7, !8, i64 16}
!7 = !{!"", !3, i64 0, !3, i64 8, !8, i64 16}
!8 = !{!"int", !4, i64 0}
!9 = !{!7, !3, i64 8}
!10 = !{!11, !12, i64 120}
!11 = !{!"", !8, i64 0, !8, i64 4, !3, i64 8, !3, i64 16, !3, i64 24, !3, i64 32, !3, i64 40, !3, i64 48, !3, i64 56, !12, i64 64, !3, i64 72, !3, i64 80, !3, i64 88, !3, i64 96, !8, i64 104, !3, i64 112, !12, i64 120, !3, i64 128, !3, i64 136, !3, i64 144}
!12 = !{!"double", !4, i64 0}
!13 = !{!14, !12, i64 0}
!14 = !{!"", !12, i64 0, !12, i64 8, !3, i64 16, !8, i64 24, !8, i64 28}
!15 = !{!14, !12, i64 8}
!16 = !{!14, !3, i64 16}
!17 = !{!11, !12, i64 64}
!18 = !{!11, !8, i64 4}
!19 = !{!8, !8, i64 0}
