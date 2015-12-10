; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/PUGH/Comm.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.cGH = type { i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, double, double*, double*, i32*, i32*, i32, i32*, double, i8***, i8**, %struct.cGHGroupData* }
%struct.cGHGroupData = type { i8, i8 }
%struct.cGroup = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.PGH = type { i8*, i32, i32, i32, i32, i32, i32, i8***, i32, i32*, i32, i32, double, double, double, double, i32, i32, i32, i32, i32, %struct.PGExtras**, %struct.PConnectivity**, i8* }
%struct.PGExtras = type { i32, i32*, double, i32**, i32**, i32*, i32*, i32, i32*, i32**, i32*, i32*, i32*, [4 x [2 x i32*]], [4 x [2 x i32**]], [4 x [2 x i32**]] }
%struct.PConnectivity = type { i32, i32*, i32**, i32* }
%struct.PGA = type { i8*, i32, i32, i8*, i8*, i32, i32, i8*, i32, i32, %struct.PGExtras*, %struct.PConnectivity*, %struct.PComm*, %struct.PComm*, i32, i32, %struct.PGA* }
%struct.PComm = type { i32*, i8**, i8**, i32, i32*, i32, i32, i32 }

@.str = private unnamed_addr constant [71 x i8] c"../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/PUGH/Comm.c\00", align 1
@.str1 = private unnamed_addr constant [5 x i8] c"PUGH\00", align 1
@.str2 = private unnamed_addr constant [34 x i8] c"PUGH_SyncGroup: Unknown group: %s\00", align 1
@.str3 = private unnamed_addr constant [47 x i8] c"PUGH_SyncGroup: Synchronising scalar group: %s\00", align 1
@.str4 = private unnamed_addr constant [35 x i8] c"PUGH_SyncGroup: Unknown group type\00", align 1
@.str5 = private unnamed_addr constant [43 x i8] c"Unknown group type in PUGH_EnableGroupComm\00", align 1
@.str6 = private unnamed_addr constant [44 x i8] c"Unknown group type in PUGH_DisableGroupComm\00", align 1
@.str7 = private unnamed_addr constant [84 x i8] c"$Header: /cactus/CactusPUGH/PUGH/src/Comm.c,v 1.59 2001/10/31 12:04:59 tradke Exp $\00", align 1

; Function Attrs: nounwind optsize readnone ssp uwtable
define i8* @CCTKi_version_CactusPUGH_PUGH_Comm_c() #0 {
  ret i8* getelementptr inbounds ([84 x i8]* @.str7, i64 0, i64 0)
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @PUGH_SyncGroup(%struct.cGH* %GH, i8* %groupname) #1 {
  %pgroup = alloca %struct.cGroup, align 4
  %1 = tail call i32 @CCTK_GroupIndex(i8* %groupname) #5
  %2 = icmp slt i32 %1, 0
  br i1 %2, label %3, label %5

; <label>:3                                       ; preds = %0
  %4 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 90, i8* getelementptr inbounds ([71 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([34 x i8]* @.str2, i64 0, i64 0), i8* %groupname) #5
  br label %25

; <label>:5                                       ; preds = %0
  %6 = call i32 @CCTK_GroupData(i32 %1, %struct.cGroup* %pgroup) #5
  %7 = getelementptr inbounds %struct.cGroup* %pgroup, i64 0, i32 0
  %8 = load i32* %7, align 4, !tbaa !2
  switch i32 %8, label %23 [
    i32 1, label %9
    i32 2, label %11
    i32 3, label %11
  ]

; <label>:9                                       ; preds = %5
  %10 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 4, i32 101, i8* getelementptr inbounds ([71 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([47 x i8]* @.str3, i64 0, i64 0), i8* %groupname) #5
  br label %25

; <label>:11                                      ; preds = %5, %5
  %12 = call %struct.PGH* @PUGH_pGH(%struct.cGH* %GH) #5
  %13 = call i32 @CCTK_FirstVarIndexI(i32 %1) #5
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.PGH* %12, i64 0, i32 7
  %16 = load i8**** %15, align 8, !tbaa !7
  %17 = getelementptr inbounds i8*** %16, i64 %14
  %18 = bitcast i8*** %17 to %struct.PGA***
  %19 = load %struct.PGA*** %18, align 8, !tbaa !11
  %20 = load %struct.PGA** %19, align 8, !tbaa !11
  %21 = getelementptr inbounds %struct.PGA* %20, i64 0, i32 13
  %22 = load %struct.PComm** %21, align 8, !tbaa !12
  call fastcc void @PUGH_Sync(%struct.PGH* %12, %struct.PComm* %22) #5
  br label %25

; <label>:23                                      ; preds = %5
  %24 = call i32 @CCTK_Warn(i32 1, i32 110, i8* getelementptr inbounds ([71 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([35 x i8]* @.str4, i64 0, i64 0)) #5
  br label %25

; <label>:25                                      ; preds = %9, %23, %11, %3
  %rc.0 = phi i32 [ -1, %3 ], [ 0, %9 ], [ 0, %11 ], [ 0, %23 ]
  ret i32 %rc.0
}

; Function Attrs: optsize
declare i32 @CCTK_GroupIndex(i8*) #2

; Function Attrs: optsize
declare i32 @CCTK_VWarn(i32, i32, i8*, i8*, i8*, ...) #2

; Function Attrs: optsize
declare i32 @CCTK_GroupData(i32, %struct.cGroup*) #2

; Function Attrs: optsize
declare %struct.PGH* @PUGH_pGH(%struct.cGH*) #2

; Function Attrs: optsize
declare i32 @CCTK_FirstVarIndexI(i32) #2

; Function Attrs: optsize
declare i32 @CCTK_Warn(i32, i32, i8*, i8*, i8*) #2

; Function Attrs: nounwind optsize ssp uwtable
define i32 @PUGH_EnableGroupComm(%struct.cGH* %GH, i8* %groupname) #1 {
  %pgroup = alloca %struct.cGroup, align 4
  %1 = tail call i32 @CCTK_GroupIndex(i8* %groupname) #5
  %2 = call i32 @CCTK_GroupData(i32 %1, %struct.cGroup* %pgroup) #5
  %3 = getelementptr inbounds %struct.cGroup* %pgroup, i64 0, i32 0
  %4 = load i32* %3, align 4, !tbaa !2
  switch i32 %4, label %8 [
    i32 1, label %10
    i32 2, label %5
    i32 3, label %5
  ]

; <label>:5                                       ; preds = %0, %0
  %6 = call %struct.PGH* @PUGH_pGH(%struct.cGH* %GH) #5
  %7 = call i32 @CCTK_FirstVarIndexI(i32 %1) #5
  br label %10

; <label>:8                                       ; preds = %0
  %9 = call i32 @CCTK_Warn(i32 1, i32 169, i8* getelementptr inbounds ([71 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([43 x i8]* @.str5, i64 0, i64 0)) #5
  br label %10

; <label>:10                                      ; preds = %0, %5, %8
  %rc.0 = phi i32 [ 1, %5 ], [ 0, %8 ], [ 1, %0 ]
  ret i32 %rc.0
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @PUGH_DisableGroupComm(%struct.cGH* %GH, i8* %groupname) #1 {
  %pgroup = alloca %struct.cGroup, align 4
  %1 = tail call i32 @CCTK_GroupIndex(i8* %groupname) #5
  %2 = call i32 @CCTK_GroupData(i32 %1, %struct.cGroup* %pgroup) #5
  %3 = getelementptr inbounds %struct.cGroup* %pgroup, i64 0, i32 0
  %4 = load i32* %3, align 4, !tbaa !2
  switch i32 %4, label %8 [
    i32 1, label %10
    i32 2, label %5
    i32 3, label %5
  ]

; <label>:5                                       ; preds = %0, %0
  %6 = call %struct.PGH* @PUGH_pGH(%struct.cGH* %GH) #5
  %7 = call i32 @CCTK_FirstVarIndexI(i32 %1) #5
  br label %10

; <label>:8                                       ; preds = %0
  %9 = call i32 @CCTK_Warn(i32 1, i32 232, i8* getelementptr inbounds ([71 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([44 x i8]* @.str6, i64 0, i64 0)) #5
  br label %10

; <label>:10                                      ; preds = %0, %5, %8
  %rc.0 = phi i32 [ 1, %5 ], [ 0, %8 ], [ 1, %0 ]
  ret i32 %rc.0
}

; Function Attrs: nounwind optsize readnone ssp uwtable
define i32 @PUGH_DisableGArrayGroupComm(%struct.PGH* nocapture readnone %pughGH, i32 %first_var, %struct.PComm* nocapture readnone %groupcomm) #0 {
  ret i32 1
}

; Function Attrs: nounwind optsize readnone ssp uwtable
define i32 @PUGH_EnableGArrayComm(%struct.PGA* nocapture readnone %GA, i32 %commflag) #0 {
  ret i32 1
}

; Function Attrs: nounwind optsize readnone ssp uwtable
define i32 @PUGH_DisableGArrayComm(%struct.PGA* nocapture readnone %GA) #0 {
  ret i32 1
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @PUGH_SyncGArray(%struct.PGA* nocapture readonly %GA) #1 {
  %1 = getelementptr inbounds %struct.PGA* %GA, i64 0, i32 7
  %2 = bitcast i8** %1 to %struct.PGH**
  %3 = load %struct.PGH** %2, align 8, !tbaa !14
  %4 = getelementptr inbounds %struct.PGA* %GA, i64 0, i32 12
  %5 = load %struct.PComm** %4, align 8, !tbaa !15
  tail call fastcc void @PUGH_Sync(%struct.PGH* %3, %struct.PComm* %5) #6
  ret i32 0
}

; Function Attrs: nounwind optsize ssp uwtable
define internal fastcc void @PUGH_Sync(%struct.PGH* nocapture readonly %pughGH, %struct.PComm* nocapture readonly %comm) #1 {
  %1 = getelementptr inbounds %struct.PGH* %pughGH, i64 0, i32 2
  %2 = load i32* %1, align 4, !tbaa !16
  %3 = icmp eq i32 %2, 1
  br i1 %3, label %4, label %188

; <label>:4                                       ; preds = %0
  %5 = getelementptr inbounds %struct.PComm* %comm, i64 0, i32 7
  %6 = load i32* %5, align 4, !tbaa !17
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds %struct.PComm* %comm, i64 0, i32 5
  %9 = load i32* %8, align 4, !tbaa !19
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds %struct.PGH* %pughGH, i64 0, i32 7
  %12 = load i8**** %11, align 8, !tbaa !7
  %13 = getelementptr inbounds i8*** %12, i64 %10
  %14 = load i8*** %13, align 8, !tbaa !11
  %15 = getelementptr inbounds i8** %14, i64 %7
  %16 = bitcast i8** %15 to %struct.PGA**
  %17 = load %struct.PGA** %16, align 8, !tbaa !11
  %18 = getelementptr inbounds %struct.PGA* %17, i64 0, i32 10
  %19 = load %struct.PGExtras** %18, align 8, !tbaa !20
  %20 = getelementptr inbounds %struct.PGExtras* %19, i64 0, i32 10
  %21 = load i32** %20, align 8, !tbaa !21
  %22 = getelementptr inbounds %struct.PGExtras* %19, i64 0, i32 0
  %23 = load i32* %22, align 4, !tbaa !23
  %24 = sext i32 %23 to i64
  %25 = shl nsw i64 %24, 2
  %26 = tail call i8* @malloc(i64 %25) #5
  %27 = bitcast i8* %26 to i32*
  %28 = icmp sgt i32 %23, 0
  br i1 %28, label %.lr.ph26.i, label %PUGH_SyncSingleProc.exit

.lr.ph26.i:                                       ; preds = %4
  %29 = getelementptr inbounds %struct.PGA* %17, i64 0, i32 11
  %30 = getelementptr inbounds %struct.PGA* %17, i64 0, i32 6
  %31 = getelementptr inbounds %struct.PGA* %17, i64 0, i32 8
  %32 = getelementptr inbounds i32* %21, i64 1
  %33 = getelementptr inbounds %struct.PComm* %comm, i64 0, i32 6
  %34 = getelementptr inbounds i8* %26, i64 4
  %35 = bitcast i8* %34 to i32*
  br label %36

; <label>:36                                      ; preds = %.loopexit2.i, %.lr.ph26.i
  %37 = phi i32 [ %23, %.lr.ph26.i ], [ %183, %.loopexit2.i ]
  %indvars.iv39.i = phi i64 [ 0, %.lr.ph26.i ], [ %indvars.iv.next40.i, %.loopexit2.i ]
  %38 = phi %struct.PGExtras* [ %19, %.lr.ph26.i ], [ %184, %.loopexit2.i ]
  %39 = trunc i64 %indvars.iv39.i to i32
  %40 = sdiv i32 %39, 2
  %41 = sext i32 %40 to i64
  %42 = load %struct.PConnectivity** %29, align 8, !tbaa !24
  %43 = getelementptr inbounds %struct.PConnectivity* %42, i64 0, i32 3
  %44 = load i32** %43, align 8, !tbaa !25
  %45 = getelementptr inbounds i32* %44, i64 %41
  %46 = load i32* %45, align 4, !tbaa !27
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %.loopexit2.i, label %48

; <label>:48                                      ; preds = %36
  %49 = load i32* %30, align 4, !tbaa !28
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.PGExtras* %38, i64 0, i32 15, i64 %50, i64 0
  %52 = load i32*** %51, align 8, !tbaa !11
  %53 = getelementptr inbounds i32** %52, i64 %indvars.iv39.i
  %54 = load i32** %53, align 8, !tbaa !11
  %55 = getelementptr inbounds %struct.PGExtras* %38, i64 0, i32 15, i64 %50, i64 1
  %56 = load i32*** %55, align 8, !tbaa !11
  %57 = getelementptr inbounds i32** %56, i64 %indvars.iv39.i
  %58 = load i32** %57, align 8, !tbaa !11
  %59 = getelementptr inbounds %struct.PGExtras* %38, i64 0, i32 14, i64 %50, i64 0
  %60 = load i32*** %59, align 8
  %61 = shl i64 %indvars.iv39.i, 1
  %62 = and i64 %61, 2
  %63 = xor i64 %62, 2
  %64 = add nsw i64 %indvars.iv39.i, -1
  %.pn.i = add i64 %64, %63
  %istart_to.0.in.i = getelementptr inbounds i32** %60, i64 %.pn.i
  %istart_to.0.i = load i32** %istart_to.0.in.i, align 8
  %65 = getelementptr inbounds %struct.PGExtras* %38, i64 0, i32 0
  %66 = icmp sgt i32 %37, 0
  br i1 %66, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %48, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ 0, %48 ]
  %67 = getelementptr inbounds i32* %54, i64 %indvars.iv.i
  %68 = load i32* %67, align 4, !tbaa !27
  %69 = getelementptr inbounds i32* %21, i64 %indvars.iv.i
  store i32 %68, i32* %69, align 4, !tbaa !27
  %70 = getelementptr inbounds i32* %istart_to.0.i, i64 %indvars.iv.i
  %71 = load i32* %70, align 4, !tbaa !27
  %72 = getelementptr inbounds i32* %27, i64 %indvars.iv.i
  store i32 %71, i32* %72, align 4, !tbaa !27
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %73 = load i32* %65, align 4, !tbaa !23
  %74 = sext i32 %73 to i64
  %75 = icmp slt i64 %indvars.iv.next.i, %74
  br i1 %75, label %.lr.ph.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %48
  %76 = phi i32 [ %37, %48 ], [ %73, %.lr.ph.i ]
  %77 = load i32* %58, align 4, !tbaa !27
  %78 = load i32* %54, align 4, !tbaa !27
  %79 = sub nsw i32 %77, %78
  %80 = load i32* %31, align 4, !tbaa !29
  %81 = mul nsw i32 %79, %80
  %82 = getelementptr inbounds i32* %58, i64 1
  %83 = sext i32 %81 to i64
  br label %84

; <label>:84                                      ; preds = %177, %._crit_edge.i
  %85 = phi i32 [ %76, %._crit_edge.i ], [ %.pre.i, %177 ]
  %86 = phi %struct.PGExtras* [ %38, %._crit_edge.i ], [ %175, %177 ]
  %87 = getelementptr inbounds %struct.PGExtras* %86, i64 0, i32 0
  %88 = icmp sgt i32 %85, 1
  br i1 %88, label %91, label %.loopexit.thread51.i

.loopexit.thread51.i:                             ; preds = %84
  %89 = load i32* %54, align 4, !tbaa !27
  %90 = load i32* %istart_to.0.i, align 4, !tbaa !27
  br label %._crit_edge17.i

; <label>:91                                      ; preds = %84
  %92 = load i32* %32, align 4, !tbaa !27
  %93 = load i32* %82, align 4, !tbaa !27
  %94 = icmp slt i32 %92, %93
  br i1 %94, label %.loopexit.thread.i, label %.preheader1.i

.loopexit.thread.i:                               ; preds = %91
  %95 = load i32* %54, align 4, !tbaa !27
  %96 = load i32* %istart_to.0.i, align 4, !tbaa !27
  br label %.lr.ph16.i

.preheader1.i:                                    ; preds = %91
  %97 = icmp sgt i32 %85, 2
  br i1 %97, label %.lr.ph5.i, label %.loopexit2.i

.lr.ph5.i:                                        ; preds = %.preheader1.i, %107
  %indvars.iv31.i = phi i64 [ %indvars.iv.next32.i, %107 ], [ 2, %.preheader1.i ]
  %98 = getelementptr inbounds i32* %21, i64 %indvars.iv31.i
  %99 = load i32* %98, align 4, !tbaa !27
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %98, align 4, !tbaa !27
  %101 = getelementptr inbounds i32* %27, i64 %indvars.iv31.i
  %102 = load i32* %101, align 4, !tbaa !27
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %101, align 4, !tbaa !27
  %104 = getelementptr inbounds i32* %58, i64 %indvars.iv31.i
  %105 = load i32* %104, align 4, !tbaa !27
  %106 = icmp slt i32 %100, %105
  br i1 %106, label %._crit_edge6.i, label %107

; <label>:107                                     ; preds = %.lr.ph5.i
  %indvars.iv.next32.i = add nuw nsw i64 %indvars.iv31.i, 1
  %108 = load i32* %87, align 4, !tbaa !23
  %109 = sext i32 %108 to i64
  %110 = icmp slt i64 %indvars.iv.next32.i, %109
  br i1 %110, label %.lr.ph5.i, label %._crit_edge7.i

._crit_edge6.i:                                   ; preds = %.lr.ph5.i
  %.pre48.i = load i32* %87, align 4, !tbaa !23
  br label %._crit_edge7.i

._crit_edge7.i:                                   ; preds = %107, %._crit_edge6.i
  %111 = phi i32 [ %.pre48.i, %._crit_edge6.i ], [ %108, %107 ]
  %dim.2.lcssa.i.in = phi i64 [ %indvars.iv31.i, %._crit_edge6.i ], [ %indvars.iv.next32.i, %107 ]
  %dim.2.lcssa.i = trunc i64 %dim.2.lcssa.i.in to i32
  %112 = icmp slt i32 %dim.2.lcssa.i, %111
  br i1 %112, label %.preheader.i, label %.loopexit2.i

.preheader.i:                                     ; preds = %._crit_edge7.i
  %113 = icmp sgt i32 %dim.2.lcssa.i, 1
  br i1 %113, label %.lr.ph11.i, label %.loopexit.i

.lr.ph11.i:                                       ; preds = %.preheader.i
  %sext = shl i64 %dim.2.lcssa.i.in, 32
  %114 = ashr exact i64 %sext, 32
  br label %115

; <label>:115                                     ; preds = %115, %.lr.ph11.i
  %indvars.iv33.i = phi i64 [ %114, %.lr.ph11.i ], [ %indvars.iv.next34.i, %115 ]
  %indvars.iv.next34.i = add nsw i64 %indvars.iv33.i, -1
  %116 = getelementptr inbounds i32* %54, i64 %indvars.iv.next34.i
  %117 = load i32* %116, align 4, !tbaa !27
  %118 = getelementptr inbounds i32* %21, i64 %indvars.iv.next34.i
  store i32 %117, i32* %118, align 4, !tbaa !27
  %119 = getelementptr inbounds i32* %istart_to.0.i, i64 %indvars.iv.next34.i
  %120 = load i32* %119, align 4, !tbaa !27
  %121 = getelementptr inbounds i32* %27, i64 %indvars.iv.next34.i
  store i32 %120, i32* %121, align 4, !tbaa !27
  %122 = icmp sgt i64 %indvars.iv.next34.i, 1
  br i1 %122, label %115, label %..loopexit_crit_edge.i

..loopexit_crit_edge.i:                           ; preds = %115
  %.pre41.pre.i = load i32* %87, align 4, !tbaa !23
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %..loopexit_crit_edge.i, %.preheader.i
  %123 = phi i32 [ %.pre41.pre.i, %..loopexit_crit_edge.i ], [ %111, %.preheader.i ]
  %124 = load i32* %54, align 4, !tbaa !27
  %125 = load i32* %istart_to.0.i, align 4, !tbaa !27
  %126 = icmp sgt i32 %123, 1
  br i1 %126, label %.lr.ph16.i, label %._crit_edge17.i

.lr.ph16.i:                                       ; preds = %.loopexit.i, %.loopexit.thread.i
  %127 = phi i32 [ %96, %.loopexit.thread.i ], [ %125, %.loopexit.i ]
  %128 = phi i32 [ %95, %.loopexit.thread.i ], [ %124, %.loopexit.i ]
  %129 = phi i32 [ %85, %.loopexit.thread.i ], [ %123, %.loopexit.i ]
  %130 = sext i32 %129 to i64
  %.phi.trans.insert.i = getelementptr inbounds %struct.PGExtras* %86, i64 0, i32 11
  %.pre42.i = load i32** %.phi.trans.insert.i, align 8, !tbaa !30
  br label %131

; <label>:131                                     ; preds = %131, %.lr.ph16.i
  %indvars.iv35.i = phi i64 [ 1, %.lr.ph16.i ], [ %indvars.iv.next36.i, %131 ]
  %offset_from.013.i = phi i32 [ %128, %.lr.ph16.i ], [ %137, %131 ]
  %offset_to.012.i = phi i32 [ %127, %.lr.ph16.i ], [ %141, %131 ]
  %132 = getelementptr inbounds i32* %21, i64 %indvars.iv35.i
  %133 = load i32* %132, align 4, !tbaa !27
  %134 = getelementptr inbounds i32* %.pre42.i, i64 %indvars.iv35.i
  %135 = load i32* %134, align 4, !tbaa !27
  %136 = mul nsw i32 %135, %133
  %137 = add nsw i32 %136, %offset_from.013.i
  %138 = getelementptr inbounds i32* %27, i64 %indvars.iv35.i
  %139 = load i32* %138, align 4, !tbaa !27
  %140 = mul nsw i32 %139, %135
  %141 = add nsw i32 %140, %offset_to.012.i
  %indvars.iv.next36.i = add nuw nsw i64 %indvars.iv35.i, 1
  %142 = icmp slt i64 %indvars.iv.next36.i, %130
  br i1 %142, label %131, label %._crit_edge17.i

._crit_edge17.i:                                  ; preds = %131, %.loopexit.i, %.loopexit.thread51.i
  %143 = phi i32 [ %123, %.loopexit.i ], [ %85, %.loopexit.thread51.i ], [ %129, %131 ]
  %offset_from.0.lcssa.i = phi i32 [ %124, %.loopexit.i ], [ %89, %.loopexit.thread51.i ], [ %137, %131 ]
  %offset_to.0.lcssa.i = phi i32 [ %125, %.loopexit.i ], [ %90, %.loopexit.thread51.i ], [ %141, %131 ]
  %144 = load i32* %31, align 4, !tbaa !29
  %145 = load i32* %33, align 4, !tbaa !31
  %146 = icmp sgt i32 %145, 0
  br i1 %146, label %.lr.ph22.i, label %173

.lr.ph22.i:                                       ; preds = %._crit_edge17.i
  %147 = load i32* %8, align 4, !tbaa !19
  %148 = mul nsw i32 %144, %offset_to.0.lcssa.i
  %149 = mul nsw i32 %144, %offset_from.0.lcssa.i
  %150 = sext i32 %148 to i64
  %151 = sext i32 %149 to i64
  %152 = sext i32 %147 to i64
  br label %153

; <label>:153                                     ; preds = %153, %.lr.ph22.i
  %indvars.iv37.i = phi i64 [ %152, %.lr.ph22.i ], [ %indvars.iv.next38.i, %153 ]
  %154 = load i32* %5, align 4, !tbaa !17
  %155 = sext i32 %154 to i64
  %156 = load i8**** %11, align 8, !tbaa !7
  %157 = getelementptr inbounds i8*** %156, i64 %indvars.iv37.i
  %158 = load i8*** %157, align 8, !tbaa !11
  %159 = getelementptr inbounds i8** %158, i64 %155
  %160 = bitcast i8** %159 to %struct.PGA**
  %161 = load %struct.PGA** %160, align 8, !tbaa !11
  %162 = getelementptr inbounds %struct.PGA* %161, i64 0, i32 4
  %163 = load i8** %162, align 8, !tbaa !32
  %164 = getelementptr inbounds i8* %163, i64 %150
  %165 = getelementptr inbounds i8* %163, i64 %151
  %166 = tail call i64 @llvm.objectsize.i64.p0i8(i8* %164, i1 false) #7
  %167 = tail call i8* @__memcpy_chk(i8* %164, i8* %165, i64 %83, i64 %166) #5
  %indvars.iv.next38.i = add nsw i64 %indvars.iv37.i, 1
  %168 = load i32* %8, align 4, !tbaa !19
  %169 = load i32* %33, align 4, !tbaa !31
  %170 = add nsw i32 %169, %168
  %171 = sext i32 %170 to i64
  %172 = icmp slt i64 %indvars.iv.next38.i, %171
  br i1 %172, label %153, label %._crit_edge23.i

._crit_edge23.i:                                  ; preds = %153
  %.pre43.i = load %struct.PGExtras** %18, align 8, !tbaa !20
  %.phi.trans.insert44.i = getelementptr inbounds %struct.PGExtras* %.pre43.i, i64 0, i32 0
  %.pre45.i = load i32* %.phi.trans.insert44.i, align 4, !tbaa !23
  br label %173

; <label>:173                                     ; preds = %._crit_edge23.i, %._crit_edge17.i
  %174 = phi i32 [ %.pre45.i, %._crit_edge23.i ], [ %143, %._crit_edge17.i ]
  %175 = phi %struct.PGExtras* [ %.pre43.i, %._crit_edge23.i ], [ %86, %._crit_edge17.i ]
  %176 = icmp sgt i32 %174, 1
  br i1 %176, label %177, label %.loopexit2.i

; <label>:177                                     ; preds = %173
  %178 = getelementptr inbounds %struct.PGExtras* %175, i64 0, i32 0
  %179 = load i32* %32, align 4, !tbaa !27
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* %32, align 4, !tbaa !27
  %181 = load i32* %35, align 4, !tbaa !27
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* %35, align 4, !tbaa !27
  %.pre.i = load i32* %178, align 4, !tbaa !23
  br label %84

.loopexit2.i:                                     ; preds = %.preheader1.i, %173, %._crit_edge7.i, %36
  %183 = phi i32 [ %37, %36 ], [ %174, %173 ], [ %111, %._crit_edge7.i ], [ 2, %.preheader1.i ]
  %184 = phi %struct.PGExtras* [ %38, %36 ], [ %175, %173 ], [ %86, %._crit_edge7.i ], [ %86, %.preheader1.i ]
  %indvars.iv.next40.i = add nuw nsw i64 %indvars.iv39.i, 1
  %185 = shl nsw i32 %183, 1
  %186 = sext i32 %185 to i64
  %187 = icmp slt i64 %indvars.iv.next40.i, %186
  br i1 %187, label %36, label %PUGH_SyncSingleProc.exit

PUGH_SyncSingleProc.exit:                         ; preds = %.loopexit2.i, %4
  tail call void @free(i8* %26) #5
  br label %188

; <label>:188                                     ; preds = %0, %PUGH_SyncSingleProc.exit
  ret void
}

; Function Attrs: nounwind optsize readnone ssp uwtable
define i32 @PUGH_Barrier(%struct.cGH* nocapture readnone %GH) #0 {
  ret i32 0
}

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i64) #3

; Function Attrs: nounwind optsize
declare i8* @__memcpy_chk(i8*, i8*, i64, i64) #3

; Function Attrs: nounwind readnone
declare i64 @llvm.objectsize.i64.p0i8(i8*, i1) #4

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #3

attributes #0 = { nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind optsize }
attributes #6 = { optsize }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!2 = !{!3, !4, i64 0}
!3 = !{!"", !4, i64 0, !4, i64 4, !4, i64 8, !4, i64 12, !4, i64 16, !4, i64 20, !4, i64 24, !4, i64 28}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !9, i64 32}
!8 = !{!"PGH", !9, i64 0, !4, i64 8, !4, i64 12, !4, i64 16, !4, i64 20, !4, i64 24, !4, i64 28, !9, i64 32, !4, i64 40, !9, i64 48, !4, i64 56, !4, i64 60, !10, i64 64, !10, i64 72, !10, i64 80, !10, i64 88, !4, i64 96, !4, i64 100, !4, i64 104, !4, i64 108, !4, i64 112, !9, i64 120, !9, i64 128, !9, i64 136}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"double", !5, i64 0}
!11 = !{!9, !9, i64 0}
!12 = !{!13, !9, i64 80}
!13 = !{!"PGA", !9, i64 0, !4, i64 8, !4, i64 12, !9, i64 16, !9, i64 24, !4, i64 32, !4, i64 36, !9, i64 40, !4, i64 48, !4, i64 52, !9, i64 56, !9, i64 64, !9, i64 72, !9, i64 80, !4, i64 88, !4, i64 92, !9, i64 96}
!14 = !{!13, !9, i64 40}
!15 = !{!13, !9, i64 72}
!16 = !{!8, !4, i64 12}
!17 = !{!18, !4, i64 48}
!18 = !{!"PComm", !9, i64 0, !9, i64 8, !9, i64 16, !4, i64 24, !9, i64 32, !4, i64 40, !4, i64 44, !4, i64 48}
!19 = !{!18, !4, i64 40}
!20 = !{!13, !9, i64 56}
!21 = !{!22, !9, i64 80}
!22 = !{!"PGExtras", !4, i64 0, !9, i64 8, !10, i64 16, !9, i64 24, !9, i64 32, !9, i64 40, !9, i64 48, !4, i64 56, !9, i64 64, !9, i64 72, !9, i64 80, !9, i64 88, !9, i64 96, !5, i64 104, !5, i64 168, !5, i64 232}
!23 = !{!22, !4, i64 0}
!24 = !{!13, !9, i64 64}
!25 = !{!26, !9, i64 24}
!26 = !{!"PConnectivity", !4, i64 0, !9, i64 8, !9, i64 16, !9, i64 24}
!27 = !{!4, !4, i64 0}
!28 = !{!13, !4, i64 36}
!29 = !{!13, !4, i64 48}
!30 = !{!22, !9, i64 88}
!31 = !{!18, !4, i64 44}
!32 = !{!13, !9, i64 24}
