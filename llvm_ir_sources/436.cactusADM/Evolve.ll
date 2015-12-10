; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/PUGH/Evolve.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.cGH = type { i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, double, double*, double*, i32*, i32*, i32, i32*, double, i8***, i8**, %struct.cGHGroupData* }
%struct.cGHGroupData = type { i8, i8 }
%struct.anon.1 = type { double, double, i8*, i32, i32 }
%struct.tFleshConfig = type { i8*, %struct.cGH**, i32 }
%struct.PGH = type { i8*, i32, i32, i32, i32, i32, i32, i8***, i32, i32*, i32, i32, double, double, double, double, i32, i32, i32, i32, i32, %struct.PGExtras**, %struct.PConnectivity**, i8* }
%struct.PGExtras = type { i32, i32*, double, i32**, i32**, i32*, i32*, i32, i32*, i32**, i32*, i32*, i32*, [4 x [2 x i32*]], [4 x [2 x i32**]], [4 x [2 x i32**]] }
%struct.PConnectivity = type { i32, i32*, i32**, i32* }

@CCTK_MainLoopIndex = external global i32 ()*
@.str = private unnamed_addr constant [14 x i8] c"CCTK_ANALYSIS\00", align 1
@CCTK_OutputGH = external global i32 (%struct.cGH*)*
@CCTK_SetMainLoopIndex = external global i32 (i32)*
@.str1 = private unnamed_addr constant [16 x i8] c"CCTK_CHECKPOINT\00", align 1
@.str2 = private unnamed_addr constant [86 x i8] c"$Header: /cactus/CactusPUGH/PUGH/src/Evolve.c,v 1.16 2001/10/31 12:04:59 tradke Exp $\00", align 1
@cactusrest_ = external global %struct.anon.1
@.str3 = private unnamed_addr constant [6 x i8] c"never\00", align 1
@.str4 = private unnamed_addr constant [10 x i8] c"iteration\00", align 1
@.str5 = private unnamed_addr constant [7 x i8] c"either\00", align 1
@.str6 = private unnamed_addr constant [5 x i8] c"both\00", align 1
@.str7 = private unnamed_addr constant [13 x i8] c"CCTK_PRESTEP\00", align 1
@.str8 = private unnamed_addr constant [10 x i8] c"CCTK_EVOL\00", align 1
@.str9 = private unnamed_addr constant [14 x i8] c"CCTK_POSTSTEP\00", align 1

; Function Attrs: nounwind optsize readnone ssp uwtable
define i8* @CCTKi_version_CactusPUGH_PUGH_Evolve_c() #0 {
  ret i8* getelementptr inbounds ([86 x i8]* @.str2, i64 0, i64 0)
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @PUGH_Evolve(%struct.tFleshConfig* nocapture readonly %config) #1 {
  %1 = load i32 ()** @CCTK_MainLoopIndex, align 8, !tbaa !2
  %2 = tail call i32 %1() #3
  %3 = getelementptr inbounds %struct.tFleshConfig* %config, i64 0, i32 2
  %4 = load i32* %3, align 4, !tbaa !6
  %5 = icmp eq i32 %4, 0
  %.pre40 = getelementptr inbounds %struct.tFleshConfig* %config, i64 0, i32 1
  br i1 %5, label %.preheader7, label %.lr.ph32

.preheader7:                                      ; preds = %22, %0
  %6 = load i64* bitcast (i32* getelementptr inbounds (%struct.anon.1* @cactusrest_, i64 0, i32 3) to i64*), align 8
  %7 = icmp ult i64 %6, 4294967296
  br i1 %7, label %.lr.ph28, label %DoneMainLoop.exit.thread5

.lr.ph32:                                         ; preds = %0, %22
  %8 = phi i32 [ %23, %22 ], [ %4, %0 ]
  %factor.030 = phi i32 [ %24, %22 ], [ 1, %0 ]
  %convergence_level.029 = phi i32 [ %25, %22 ], [ 0, %0 ]
  %9 = urem i32 %2, %factor.030
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %22

; <label>:11                                      ; preds = %.lr.ph32
  %12 = zext i32 %convergence_level.029 to i64
  %13 = load %struct.cGH*** %.pre40, align 8, !tbaa !9
  %14 = getelementptr inbounds %struct.cGH** %13, i64 %12
  %15 = load %struct.cGH** %14, align 8, !tbaa !2
  %16 = tail call i32 @CCTK_Traverse(%struct.cGH* %15, i8* getelementptr inbounds ([14 x i8]* @.str, i64 0, i64 0)) #3
  %17 = load i32 (%struct.cGH*)** @CCTK_OutputGH, align 8, !tbaa !2
  %18 = load %struct.cGH*** %.pre40, align 8, !tbaa !9
  %19 = getelementptr inbounds %struct.cGH** %18, i64 %12
  %20 = load %struct.cGH** %19, align 8, !tbaa !2
  %21 = tail call i32 %17(%struct.cGH* %20) #3
  %.pre = load i32* %3, align 4, !tbaa !6
  br label %22

; <label>:22                                      ; preds = %11, %.lr.ph32
  %23 = phi i32 [ %.pre, %11 ], [ %8, %.lr.ph32 ]
  %24 = shl nsw i32 %factor.030, 1
  %25 = add nuw i32 %convergence_level.029, 1
  %26 = icmp ult i32 %25, %23
  br i1 %26, label %.lr.ph32, label %.preheader7

.loopexit:                                        ; preds = %179, %DoneMainLoop.exit.thread._crit_edge, %.preheader6, %.preheader
  %27 = load i64* bitcast (i32* getelementptr inbounds (%struct.anon.1* @cactusrest_, i64 0, i32 3) to i64*), align 8
  %28 = icmp ult i64 %27, 4294967296
  br i1 %28, label %.lr.ph28, label %DoneMainLoop.exit.thread5

.lr.ph28:                                         ; preds = %.preheader7, %.loopexit
  %.in = phi i64 [ %27, %.loopexit ], [ %6, %.preheader7 ]
  %iteration.025 = phi i32 [ %122, %.loopexit ], [ %2, %.preheader7 ]
  %.pn.in = load %struct.cGH*** %.pre40, align 8
  %.pn = load %struct.cGH** %.pn.in, align 8
  %.in34 = getelementptr inbounds %struct.cGH* %.pn, i64 0, i32 16
  %29 = load double* %.in34, align 8
  %30 = load i8** getelementptr inbounds (%struct.anon.1* @cactusrest_, i64 0, i32 2), align 8
  %31 = load double* getelementptr inbounds (%struct.anon.1* @cactusrest_, i64 0, i32 1), align 8
  %32 = load double* getelementptr inbounds (%struct.anon.1* @cactusrest_, i64 0, i32 0), align 8
  %33 = trunc i64 %.in to i32
  %34 = tail call i32 @CCTK_TerminationReached(%struct.cGH* %.pn) #3
  %35 = icmp ne i32 %34, 0
  %36 = zext i1 %35 to i32
  br i1 %35, label %DoneMainLoop.exit, label %37

; <label>:37                                      ; preds = %.lr.ph28
  %38 = tail call i32 @CCTK_Equals(i8* %30, i8* getelementptr inbounds ([6 x i8]* @.str3, i64 0, i64 0)) #3
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %DoneMainLoop.exit.thread.preheader

; <label>:40                                      ; preds = %37
  %41 = tail call i32 @CCTK_Equals(i8* %30, i8* getelementptr inbounds ([10 x i8]* @.str4, i64 0, i64 0)) #3
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %46, label %43

; <label>:43                                      ; preds = %40
  %44 = icmp sle i32 %33, %iteration.025
  %45 = zext i1 %44 to i32
  br label %DoneMainLoop.exit

; <label>:46                                      ; preds = %40
  %47 = fcmp olt double %31, %32
  br i1 %47, label %48, label %50

; <label>:48                                      ; preds = %46
  %49 = fcmp ole double %32, %29
  br label %52

; <label>:50                                      ; preds = %46
  %51 = fcmp oge double %32, %29
  br label %52

; <label>:52                                      ; preds = %50, %48
  %.sink.i = phi i1 [ %49, %48 ], [ %51, %50 ]
  %53 = tail call i32 @CCTK_Equals(i8* %30, i8* getelementptr inbounds ([7 x i8]* @.str5, i64 0, i64 0)) #3
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %59, label %55

; <label>:55                                      ; preds = %52
  %56 = icmp sle i32 %33, %iteration.025
  %57 = or i1 %56, %.sink.i
  %58 = zext i1 %57 to i32
  br label %DoneMainLoop.exit

; <label>:59                                      ; preds = %52
  %60 = zext i1 %.sink.i to i32
  %61 = tail call i32 @CCTK_Equals(i8* %30, i8* getelementptr inbounds ([5 x i8]* @.str6, i64 0, i64 0)) #3
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %DoneMainLoop.exit, label %63

; <label>:63                                      ; preds = %59
  %64 = icmp sle i32 %33, %iteration.025
  %65 = and i1 %64, %.sink.i
  %66 = zext i1 %65 to i32
  br label %DoneMainLoop.exit

DoneMainLoop.exit:                                ; preds = %.lr.ph28, %43, %55, %59, %63
  %retval.1.i = phi i32 [ %36, %.lr.ph28 ], [ %45, %43 ], [ %58, %55 ], [ %66, %63 ], [ %60, %59 ]
  %67 = icmp eq i32 %retval.1.i, 0
  br i1 %67, label %DoneMainLoop.exit.thread.preheader, label %DoneMainLoop.exit.thread5

DoneMainLoop.exit.thread.preheader:               ; preds = %DoneMainLoop.exit, %37
  %68 = load i32* %3, align 4, !tbaa !6
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %DoneMainLoop.exit.thread._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %DoneMainLoop.exit.thread.preheader, %RotateTimeLevelsGH.exit
  %factor1.014 = phi i32 [ %116, %RotateTimeLevelsGH.exit ], [ 1, %DoneMainLoop.exit.thread.preheader ]
  %convergence_level.113 = phi i32 [ %117, %RotateTimeLevelsGH.exit ], [ 0, %DoneMainLoop.exit.thread.preheader ]
  %70 = urem i32 %iteration.025, %factor1.014
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %RotateTimeLevelsGH.exit

; <label>:72                                      ; preds = %.lr.ph
  %73 = zext i32 %convergence_level.113 to i64
  %74 = load %struct.cGH*** %.pre40, align 8, !tbaa !9
  %75 = getelementptr inbounds %struct.cGH** %74, i64 %73
  %76 = load %struct.cGH** %75, align 8, !tbaa !2
  %77 = tail call %struct.PGH* @PUGH_pGH(%struct.cGH* %76) #3
  %78 = getelementptr inbounds %struct.PGH* %77, i64 0, i32 5
  %79 = load i32* %78, align 4, !tbaa !10
  %80 = icmp sgt i32 %79, 0
  br i1 %80, label %.lr.ph4.i, label %RotateTimeLevelsGH.exit

.lr.ph4.i:                                        ; preds = %72
  %81 = getelementptr inbounds %struct.PGH* %77, i64 0, i32 7
  br label %82

; <label>:82                                      ; preds = %112, %.lr.ph4.i
  %indvars.iv6.i = phi i64 [ 0, %.lr.ph4.i ], [ %indvars.iv.next7.i, %112 ]
  %83 = trunc i64 %indvars.iv6.i to i32
  %84 = tail call i32 @CCTK_NumTimeLevelsFromVarI(i32 %83) #3
  %85 = icmp sgt i32 %84, 1
  br i1 %85, label %.lr.ph.i, label %112

.lr.ph.i:                                         ; preds = %82
  %86 = add nsw i32 %84, -1
  %87 = sext i32 %86 to i64
  %88 = load i8**** %81, align 8, !tbaa !13
  %89 = getelementptr inbounds i8*** %88, i64 %indvars.iv6.i
  %90 = load i8*** %89, align 8, !tbaa !2
  %91 = getelementptr inbounds i8** %90, i64 %87
  %92 = bitcast i8** %91 to i64*
  %93 = load i64* %92, align 8, !tbaa !2
  %94 = sext i32 %84 to i64
  %indvars.iv.i8 = add nsw i64 %94, -1
  %95 = add nsw i32 %84, -2
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i8** %90, i64 %96
  %98 = bitcast i8** %97 to i64*
  %99 = load i64* %98, align 8, !tbaa !2
  %100 = getelementptr inbounds i8** %90, i64 %indvars.iv.i8
  %101 = bitcast i8** %100 to i64*
  store i64 %99, i64* %101, align 8, !tbaa !2
  %102 = icmp sgt i64 %indvars.iv.i8, 1
  %.pre.i9 = load i8**** %81, align 8, !tbaa !13
  %.phi.trans.insert.i10 = getelementptr inbounds i8*** %.pre.i9, i64 %indvars.iv6.i
  br i1 %102, label %._crit_edge9.i, label %._crit_edge

._crit_edge9.i:                                   ; preds = %.lr.ph.i, %._crit_edge9.i
  %.phi.trans.insert.i12 = phi i8*** [ %.phi.trans.insert.i, %._crit_edge9.i ], [ %.phi.trans.insert.i10, %.lr.ph.i ]
  %103 = phi i32 [ %104, %._crit_edge9.i ], [ %95, %.lr.ph.i ]
  %indvars.iv.i11 = phi i64 [ %indvars.iv.i, %._crit_edge9.i ], [ %indvars.iv.i8, %.lr.ph.i ]
  %.pre10.i = load i8*** %.phi.trans.insert.i12, align 8, !tbaa !2
  %indvars.iv.i = add nsw i64 %indvars.iv.i11, -1
  %104 = add nsw i32 %103, -1
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i8** %.pre10.i, i64 %105
  %107 = bitcast i8** %106 to i64*
  %108 = load i64* %107, align 8, !tbaa !2
  %109 = getelementptr inbounds i8** %.pre10.i, i64 %indvars.iv.i
  %110 = bitcast i8** %109 to i64*
  store i64 %108, i64* %110, align 8, !tbaa !2
  %111 = icmp sgt i64 %indvars.iv.i, 1
  %.pre.i = load i8**** %81, align 8, !tbaa !13
  %.phi.trans.insert.i = getelementptr inbounds i8*** %.pre.i, i64 %indvars.iv6.i
  br i1 %111, label %._crit_edge9.i, label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge9.i, %.lr.ph.i
  %.phi.trans.insert.i.lcssa = phi i8*** [ %.phi.trans.insert.i10, %.lr.ph.i ], [ %.phi.trans.insert.i, %._crit_edge9.i ]
  %.phi.trans.insert13.i = bitcast i8*** %.phi.trans.insert.i.lcssa to i64**
  %.pre14.i = load i64** %.phi.trans.insert13.i, align 8, !tbaa !2
  store i64 %93, i64* %.pre14.i, align 8, !tbaa !2
  br label %112

; <label>:112                                     ; preds = %._crit_edge, %82
  %indvars.iv.next7.i = add nuw nsw i64 %indvars.iv6.i, 1
  %113 = load i32* %78, align 4, !tbaa !10
  %114 = sext i32 %113 to i64
  %115 = icmp slt i64 %indvars.iv.next7.i, %114
  br i1 %115, label %82, label %RotateTimeLevelsGH.exit

RotateTimeLevelsGH.exit:                          ; preds = %112, %72, %.lr.ph
  %116 = shl nsw i32 %factor1.014, 1
  %117 = add nuw i32 %convergence_level.113, 1
  %118 = load i32* %3, align 4, !tbaa !6
  %119 = icmp ult i32 %117, %118
  br i1 %119, label %.lr.ph, label %DoneMainLoop.exit.thread._crit_edge

DoneMainLoop.exit.thread._crit_edge:              ; preds = %RotateTimeLevelsGH.exit, %DoneMainLoop.exit.thread.preheader
  %120 = load i32 (i32)** @CCTK_SetMainLoopIndex, align 8, !tbaa !2
  %121 = add i32 %iteration.025, 1
  %122 = tail call i32 %120(i32 %121) #3
  %123 = load i32* %3, align 4, !tbaa !6
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %.loopexit, label %.lr.ph18

.preheader6:                                      ; preds = %145
  %125 = icmp eq i32 %146, 0
  br i1 %125, label %.loopexit, label %.lr.ph21

.lr.ph18:                                         ; preds = %DoneMainLoop.exit.thread._crit_edge, %145
  %126 = phi i32 [ %146, %145 ], [ %123, %DoneMainLoop.exit.thread._crit_edge ]
  %factor2.016 = phi i32 [ %147, %145 ], [ 1, %DoneMainLoop.exit.thread._crit_edge ]
  %convergence_level.215 = phi i32 [ %148, %145 ], [ 0, %DoneMainLoop.exit.thread._crit_edge ]
  %127 = urem i32 %122, %factor2.016
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %129, label %145

; <label>:129                                     ; preds = %.lr.ph18
  %130 = zext i32 %convergence_level.215 to i64
  %131 = load %struct.cGH*** %.pre40, align 8, !tbaa !9
  %132 = getelementptr inbounds %struct.cGH** %131, i64 %130
  %133 = load %struct.cGH** %132, align 8, !tbaa !2
  %134 = getelementptr inbounds %struct.cGH* %133, i64 0, i32 16
  %135 = load double* %134, align 8, !tbaa !14
  %136 = getelementptr inbounds %struct.cGH* %133, i64 0, i32 9
  %137 = load double* %136, align 8, !tbaa !16
  %138 = fadd double %135, %137
  store double %138, double* %134, align 8, !tbaa !14
  %139 = getelementptr inbounds %struct.cGH* %133, i64 0, i32 1
  %140 = load i32* %139, align 4, !tbaa !17
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %139, align 4, !tbaa !17
  %142 = tail call i32 @CCTK_Traverse(%struct.cGH* %133, i8* getelementptr inbounds ([13 x i8]* @.str7, i64 0, i64 0)) #3
  %143 = tail call i32 @CCTK_Traverse(%struct.cGH* %133, i8* getelementptr inbounds ([10 x i8]* @.str8, i64 0, i64 0)) #3
  %144 = tail call i32 @CCTK_Traverse(%struct.cGH* %133, i8* getelementptr inbounds ([14 x i8]* @.str9, i64 0, i64 0)) #3
  %.pre36 = load i32* %3, align 4, !tbaa !6
  br label %145

; <label>:145                                     ; preds = %129, %.lr.ph18
  %146 = phi i32 [ %.pre36, %129 ], [ %126, %.lr.ph18 ]
  %147 = shl nsw i32 %factor2.016, 1
  %148 = add nuw i32 %convergence_level.215, 1
  %149 = icmp ult i32 %148, %146
  br i1 %149, label %.lr.ph18, label %.preheader6

.preheader:                                       ; preds = %160
  %150 = icmp eq i32 %161, 0
  br i1 %150, label %.loopexit, label %.lr.ph24

.lr.ph21:                                         ; preds = %.preheader6, %160
  %151 = phi i32 [ %161, %160 ], [ %146, %.preheader6 ]
  %factor3.020 = phi i32 [ %162, %160 ], [ 1, %.preheader6 ]
  %convergence_level.319 = phi i32 [ %163, %160 ], [ 0, %.preheader6 ]
  %152 = urem i32 %122, %factor3.020
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %154, label %160

; <label>:154                                     ; preds = %.lr.ph21
  %155 = zext i32 %convergence_level.319 to i64
  %156 = load %struct.cGH*** %.pre40, align 8, !tbaa !9
  %157 = getelementptr inbounds %struct.cGH** %156, i64 %155
  %158 = load %struct.cGH** %157, align 8, !tbaa !2
  %159 = tail call i32 @CCTK_Traverse(%struct.cGH* %158, i8* getelementptr inbounds ([16 x i8]* @.str1, i64 0, i64 0)) #3
  %.pre37 = load i32* %3, align 4, !tbaa !6
  br label %160

; <label>:160                                     ; preds = %154, %.lr.ph21
  %161 = phi i32 [ %.pre37, %154 ], [ %151, %.lr.ph21 ]
  %162 = shl nsw i32 %factor3.020, 1
  %163 = add nuw i32 %convergence_level.319, 1
  %164 = icmp ult i32 %163, %161
  br i1 %164, label %.lr.ph21, label %.preheader

.lr.ph24:                                         ; preds = %.preheader, %179
  %165 = phi i32 [ %180, %179 ], [ %161, %.preheader ]
  %factor4.023 = phi i32 [ %181, %179 ], [ 1, %.preheader ]
  %convergence_level.422 = phi i32 [ %182, %179 ], [ 0, %.preheader ]
  %166 = urem i32 %122, %factor4.023
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %168, label %179

; <label>:168                                     ; preds = %.lr.ph24
  %169 = zext i32 %convergence_level.422 to i64
  %170 = load %struct.cGH*** %.pre40, align 8, !tbaa !9
  %171 = getelementptr inbounds %struct.cGH** %170, i64 %169
  %172 = load %struct.cGH** %171, align 8, !tbaa !2
  %173 = tail call i32 @CCTK_Traverse(%struct.cGH* %172, i8* getelementptr inbounds ([14 x i8]* @.str, i64 0, i64 0)) #3
  %174 = load i32 (%struct.cGH*)** @CCTK_OutputGH, align 8, !tbaa !2
  %175 = load %struct.cGH*** %.pre40, align 8, !tbaa !9
  %176 = getelementptr inbounds %struct.cGH** %175, i64 %169
  %177 = load %struct.cGH** %176, align 8, !tbaa !2
  %178 = tail call i32 %174(%struct.cGH* %177) #3
  %.pre38 = load i32* %3, align 4, !tbaa !6
  br label %179

; <label>:179                                     ; preds = %168, %.lr.ph24
  %180 = phi i32 [ %.pre38, %168 ], [ %165, %.lr.ph24 ]
  %181 = shl nsw i32 %factor4.023, 1
  %182 = add nuw i32 %convergence_level.422, 1
  %183 = icmp ult i32 %182, %180
  br i1 %183, label %.lr.ph24, label %.loopexit

DoneMainLoop.exit.thread5:                        ; preds = %DoneMainLoop.exit, %.loopexit, %.preheader7
  ret i32 0
}

; Function Attrs: optsize
declare i32 @CCTK_Traverse(%struct.cGH*, i8*) #2

; Function Attrs: optsize
declare i32 @CCTK_TerminationReached(%struct.cGH*) #2

; Function Attrs: optsize
declare i32 @CCTK_Equals(i8*, i8*) #2

; Function Attrs: optsize
declare %struct.PGH* @PUGH_pGH(%struct.cGH*) #2

; Function Attrs: optsize
declare i32 @CCTK_NumTimeLevelsFromVarI(i32) #2

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
!10 = !{!11, !8, i64 24}
!11 = !{!"PGH", !3, i64 0, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !8, i64 24, !8, i64 28, !3, i64 32, !8, i64 40, !3, i64 48, !8, i64 56, !8, i64 60, !12, i64 64, !12, i64 72, !12, i64 80, !12, i64 88, !8, i64 96, !8, i64 100, !8, i64 104, !8, i64 108, !8, i64 112, !3, i64 120, !3, i64 128, !3, i64 136}
!12 = !{!"double", !4, i64 0}
!13 = !{!11, !3, i64 32}
!14 = !{!15, !12, i64 120}
!15 = !{!"", !8, i64 0, !8, i64 4, !3, i64 8, !3, i64 16, !3, i64 24, !3, i64 32, !3, i64 40, !3, i64 48, !3, i64 56, !12, i64 64, !3, i64 72, !3, i64 80, !3, i64 88, !3, i64 96, !8, i64 104, !3, i64 112, !12, i64 120, !3, i64 128, !3, i64 136, !3, i64 144}
!16 = !{!15, !12, i64 64}
!17 = !{!15, !8, i64 4}