; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/PUGH/SetupPGH.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.anon.0 = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.PGH = type { i8*, i32, i32, i32, i32, i32, i32, i8***, i32, i32*, i32, i32, double, double, double, double, i32, i32, i32, i32, i32, %struct.PGExtras**, %struct.PConnectivity**, i8* }
%struct.PGExtras = type { i32, i32*, double, i32**, i32**, i32*, i32*, i32, i32*, i32**, i32*, i32*, i32*, [4 x [2 x i32*]], [4 x [2 x i32**]], [4 x [2 x i32**]] }
%struct.PConnectivity = type { i32, i32*, i32**, i32* }
%struct.cGH = type { i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, double, double*, double*, i32*, i32*, i32, i32*, double, i8***, i8**, %struct.cGHGroupData* }
%struct.cGHGroupData = type { i8, i8 }
%struct.cGroup = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.PGA = type { i8*, i32, i32, i8*, i8*, i32, i32, i8*, i32, i32, %struct.PGExtras*, %struct.PConnectivity*, %struct.PComm*, %struct.PComm*, i32, i32, %struct.PGA* }
%struct.PComm = type { i32*, i8**, i8**, i32, i32*, i32, i32, i32 }

@pughpriv_ = external global %struct.anon.0
@.str = private unnamed_addr constant [88 x i8] c"$Header: /cactus/CactusPUGH/PUGH/src/SetupPGH.c,v 1.75 2001/10/31 12:05:00 tradke Exp $\00", align 1

; Function Attrs: nounwind optsize readnone ssp uwtable
define i8* @CCTKi_version_CactusPUGH_PUGH_SetupPGH_c() #0 {
  ret i8* getelementptr inbounds ([88 x i8]* @.str, i64 0, i64 0)
}

; Function Attrs: nounwind optsize ssp uwtable
define noalias %struct.PGH* @PUGH_SetupPGH(i8* %callerid, i32 %dim, i32* %nsize, i32* %nghostzones, i32 %staggertype, i32* %perme) #1 {
  %1 = load i32* getelementptr inbounds (%struct.anon.0* @pughpriv_, i64 0, i32 43), align 8, !tbaa !2
  %2 = tail call i8* @malloc(i64 144) #8
  %3 = bitcast i8* %2 to %struct.PGH*
  %4 = bitcast i8* %2 to i8**
  store i8* %callerid, i8** %4, align 8, !tbaa !8
  %5 = sext i32 %dim to i64
  %6 = shl nsw i64 %5, 3
  %7 = tail call i8* @malloc(i64 %6) #8
  %8 = getelementptr inbounds i8* %2, i64 120
  %9 = bitcast i8* %8 to i8**
  store i8* %7, i8** %9, align 8, !tbaa !11
  %10 = tail call i8* @malloc(i64 %6) #8
  %11 = getelementptr inbounds i8* %2, i64 128
  %12 = bitcast i8* %11 to i8**
  store i8* %10, i8** %12, align 8, !tbaa !12
  %13 = getelementptr inbounds i8* %2, i64 12
  %14 = bitcast i8* %13 to i32*
  store i32 1, i32* %14, align 4, !tbaa !13
  %15 = getelementptr inbounds i8* %2, i64 16
  %16 = bitcast i8* %15 to i32*
  store i32 0, i32* %16, align 4, !tbaa !14
  %17 = getelementptr inbounds i8* %2, i64 8
  %18 = bitcast i8* %17 to i32*
  store i32 %dim, i32* %18, align 4, !tbaa !15
  %19 = icmp slt i32 %dim, 1
  %20 = bitcast i8* %10 to %struct.PConnectivity**
  %21 = bitcast i8* %7 to %struct.PGExtras**
  br i1 %19, label %._crit_edge5, label %.lr.ph

.lr.ph:                                           ; preds = %0, %._crit_edge
  %indvars.iv8 = phi i64 [ %indvars.iv.next9, %._crit_edge ], [ 1, %0 ]
  %indvars.iv6 = phi i32 [ %indvars.iv.next7, %._crit_edge ], [ 1, %0 ]
  %22 = shl nsw i64 %indvars.iv8, 2
  %23 = tail call i8* @malloc(i64 %22) #8
  %24 = bitcast i8* %23 to i32*
  %25 = trunc i64 %indvars.iv8 to i32
  %26 = tail call i32 @PUGH_SetupDefaultTopology(i32 %25, i32* %24) #9
  br label %27

; <label>:27                                      ; preds = %41, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %41 ]
  %28 = getelementptr inbounds i32* %24, i64 %indvars.iv
  %29 = load i32* %28, align 4, !tbaa !16
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %41

; <label>:31                                      ; preds = %27
  %32 = getelementptr inbounds i32* %nsize, i64 %indvars.iv
  %33 = load i32* %32, align 4, !tbaa !16
  %ispos = icmp sgt i32 %33, -1
  %neg = sub i32 0, %33
  %34 = select i1 %ispos, i32 %33, i32 %neg
  %35 = getelementptr inbounds i32* %nghostzones, i64 %indvars.iv
  %36 = load i32* %35, align 4, !tbaa !16
  %37 = shl nsw i32 %36, 1
  %38 = or i32 %37, 1
  %39 = icmp sgt i32 %34, %38
  br i1 %39, label %41, label %40

; <label>:40                                      ; preds = %31
  store i32 1, i32* %28, align 4, !tbaa !16
  br label %41

; <label>:41                                      ; preds = %31, %27, %40
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %indvars.iv6
  br i1 %exitcond, label %._crit_edge, label %27

._crit_edge:                                      ; preds = %41
  %42 = tail call %struct.PConnectivity* @PUGH_SetupConnectivity(i32 %25, i32 1, i32* %24, i32* %perme) #8
  %43 = add nsw i64 %indvars.iv8, -1
  %44 = getelementptr inbounds %struct.PConnectivity** %20, i64 %43
  store %struct.PConnectivity* %42, %struct.PConnectivity** %44, align 8, !tbaa !17
  tail call void @free(i8* %23) #9
  %45 = load %struct.PConnectivity** %44, align 8, !tbaa !17
  %46 = getelementptr inbounds %struct.PConnectivity* %45, i64 0, i32 1
  %47 = load i32** %46, align 8, !tbaa !18
  %48 = tail call %struct.PGExtras* @PUGH_SetupPGExtras(i32 %25, i32* %perme, i32 %staggertype, i32* %nsize, i32* %nghostzones, i32 1, i32* %47, i32 0) #8
  %49 = getelementptr inbounds %struct.PGExtras** %21, i64 %43
  store %struct.PGExtras* %48, %struct.PGExtras** %49, align 8, !tbaa !17
  %indvars.iv.next9 = add nuw nsw i64 %indvars.iv8, 1
  %indvars.iv.next7 = add nuw nsw i32 %indvars.iv6, 1
  %exitcond11 = icmp eq i32 %25, %dim
  br i1 %exitcond11, label %._crit_edge5, label %.lr.ph

._crit_edge5:                                     ; preds = %._crit_edge, %0
  %50 = icmp eq i32 %1, 0
  br i1 %50, label %53, label %51

; <label>:51                                      ; preds = %._crit_edge5
  %52 = tail call i32 @CCTK_TimerCreateI() #8
  br label %53

; <label>:53                                      ; preds = %._crit_edge5, %51
  %54 = phi i32 [ %52, %51 ], [ -1, %._crit_edge5 ]
  %55 = getelementptr inbounds i8* %2, i64 112
  %56 = bitcast i8* %55 to i32*
  store i32 %54, i32* %56, align 4, !tbaa !20
  %57 = getelementptr inbounds i8* %2, i64 108
  %58 = bitcast i8* %57 to i32*
  store i32 1, i32* %58, align 4, !tbaa !21
  %59 = getelementptr inbounds i8* %2, i64 20
  %60 = bitcast i8* %59 to i32*
  store i32 1, i32* %60, align 4, !tbaa !22
  %61 = getelementptr inbounds i8* %2, i64 136
  %62 = bitcast i8* %61 to i8**
  store i8* null, i8** %62, align 8, !tbaa !23
  %63 = getelementptr inbounds i8* %2, i64 96
  %64 = bitcast i8* %63 to i32*
  store i32 0, i32* %64, align 4, !tbaa !24
  %65 = getelementptr inbounds i8* %2, i64 100
  %66 = bitcast i8* %65 to i32*
  store i32 0, i32* %66, align 4, !tbaa !25
  %67 = getelementptr inbounds i8* %2, i64 104
  %68 = bitcast i8* %67 to i32*
  store i32 0, i32* %68, align 4, !tbaa !26
  %69 = getelementptr inbounds i8* %2, i64 60
  %70 = bitcast i8* %69 to i32*
  store i32 0, i32* %70, align 4, !tbaa !27
  %71 = getelementptr inbounds i8* %2, i64 24
  call void @llvm.memset.p0i8.i64(i8* %71, i8 0, i64 16, i32 4, i1 false)
  ret %struct.PGH* %3
}

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i64) #2

; Function Attrs: nounwind optsize ssp uwtable
define i32 @PUGH_SetupDefaultTopology(i32 %dim, i32* %nprocs) #1 {
  switch i32 %dim, label %13 [
    i32 1, label %1
    i32 2, label %3
    i32 3, label %7
  ]

; <label>:1                                       ; preds = %0
  %2 = load i32* getelementptr inbounds (%struct.anon.0* @pughpriv_, i64 0, i32 36), align 4, !tbaa !28
  store i32 %2, i32* %nprocs, align 4, !tbaa !16
  br label %19

; <label>:3                                       ; preds = %0
  %4 = load i32* getelementptr inbounds (%struct.anon.0* @pughpriv_, i64 0, i32 38), align 4, !tbaa !29
  %5 = load i32* getelementptr inbounds (%struct.anon.0* @pughpriv_, i64 0, i32 37), align 8, !tbaa !30
  store i32 %5, i32* %nprocs, align 4, !tbaa !16
  %6 = getelementptr inbounds i32* %nprocs, i64 1
  store i32 %4, i32* %6, align 4, !tbaa !16
  br label %19

; <label>:7                                       ; preds = %0
  %8 = load i32* getelementptr inbounds (%struct.anon.0* @pughpriv_, i64 0, i32 41), align 8, !tbaa !31
  %9 = load i32* getelementptr inbounds (%struct.anon.0* @pughpriv_, i64 0, i32 40), align 4, !tbaa !32
  %10 = load i32* getelementptr inbounds (%struct.anon.0* @pughpriv_, i64 0, i32 39), align 8, !tbaa !33
  store i32 %10, i32* %nprocs, align 4, !tbaa !16
  %11 = getelementptr inbounds i32* %nprocs, i64 1
  store i32 %9, i32* %11, align 4, !tbaa !16
  %12 = getelementptr inbounds i32* %nprocs, i64 2
  store i32 %8, i32* %12, align 4, !tbaa !16
  br label %19

; <label>:13                                      ; preds = %0
  %14 = bitcast i32* %nprocs to i8*
  %15 = sext i32 %dim to i64
  %16 = shl nsw i64 %15, 2
  %17 = tail call i64 @llvm.objectsize.i64.p0i8(i8* %14, i1 false)
  %18 = tail call i8* @__memset_chk(i8* %14, i32 0, i64 %16, i64 %17) #8
  br label %19

; <label>:19                                      ; preds = %13, %7, %3, %1
  %retval.0 = phi i32 [ -1, %13 ], [ 0, %7 ], [ 0, %3 ], [ 0, %1 ]
  ret i32 %retval.0
}

; Function Attrs: optsize
declare %struct.PConnectivity* @PUGH_SetupConnectivity(i32, i32, i32*, i32*) #3

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #2

; Function Attrs: optsize
declare %struct.PGExtras* @PUGH_SetupPGExtras(i32, i32*, i32, i32*, i32*, i32, i32*, i32) #3

; Function Attrs: optsize
declare i32 @CCTK_TimerCreateI() #3

; Function Attrs: nounwind optsize ssp uwtable
define i32 @PUGH_Terminate(%struct.cGH* %GH) #1 {
  %pughGH = alloca %struct.PGH*, align 8
  %1 = tail call %struct.PGH* @PUGH_pGH(%struct.cGH* %GH) #8
  store %struct.PGH* %1, %struct.PGH** %pughGH, align 8, !tbaa !17
  call void @PUGH_DestroyPGH(%struct.PGH** %pughGH) #9
  ret i32 0
}

; Function Attrs: optsize
declare %struct.PGH* @PUGH_pGH(%struct.cGH*) #3

; Function Attrs: nounwind optsize ssp uwtable
define void @PUGH_DestroyPGH(%struct.PGH** nocapture %GHin) #1 {
  %pgroup = alloca %struct.cGroup, align 4
  %1 = load %struct.PGH** %GHin, align 8, !tbaa !17
  %2 = call i32 @CCTK_NumGroups() #8
  %3 = icmp sgt i32 %2, 0
  br i1 %3, label %.lr.ph14, label %.preheader

.lr.ph14:                                         ; preds = %0
  %4 = getelementptr inbounds %struct.cGroup* %pgroup, i64 0, i32 0
  %5 = getelementptr inbounds %struct.PGH* %1, i64 0, i32 7
  %6 = getelementptr inbounds %struct.cGroup* %pgroup, i64 0, i32 4
  %7 = getelementptr inbounds %struct.PGH* %1, i64 0, i32 22
  %8 = getelementptr inbounds %struct.PGH* %1, i64 0, i32 21
  %9 = getelementptr inbounds %struct.cGroup* %pgroup, i64 0, i32 5
  %10 = getelementptr inbounds %struct.cGroup* %pgroup, i64 0, i32 6
  %11 = bitcast i8**** %5 to %struct.PGA****
  br label %17

.preheader:                                       ; preds = %91, %0
  %12 = getelementptr inbounds %struct.PGH* %1, i64 0, i32 1
  %13 = load i32* %12, align 4, !tbaa !15
  %14 = icmp slt i32 %13, 1
  br i1 %14, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %15 = getelementptr inbounds %struct.PGH* %1, i64 0, i32 22
  %16 = getelementptr inbounds %struct.PGH* %1, i64 0, i32 21
  br label %95

; <label>:17                                      ; preds = %.lr.ph14, %91
  %group.012 = phi i32 [ 0, %.lr.ph14 ], [ %92, %91 ]
  %variable.011 = phi i32 [ 0, %.lr.ph14 ], [ %variable.1.lcssa, %91 ]
  %18 = call i32 @CCTK_GroupData(i32 %group.012, %struct.cGroup* %pgroup) #8
  %19 = load i32* %4, align 4, !tbaa !34
  %20 = and i32 %19, -2
  %switch = icmp eq i32 %20, 2
  br i1 %switch, label %21, label %.preheader2

; <label>:21                                      ; preds = %17
  %22 = sext i32 %variable.011 to i64
  %23 = load i8**** %5, align 8, !tbaa !36
  %24 = getelementptr inbounds i8*** %23, i64 %22
  %25 = bitcast i8*** %24 to %struct.PGA***
  %26 = load %struct.PGA*** %25, align 8, !tbaa !17
  %27 = load %struct.PGA** %26, align 8, !tbaa !17
  %28 = getelementptr inbounds %struct.PGA* %27, i64 0, i32 13
  %29 = load %struct.PComm** %28, align 8, !tbaa !37
  %30 = icmp eq %struct.PComm* %29, null
  br i1 %30, label %38, label %31

; <label>:31                                      ; preds = %21
  %32 = getelementptr inbounds %struct.PComm* %29, i64 0, i32 3
  %33 = load i32* %32, align 4, !tbaa !39
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %37, label %35

; <label>:35                                      ; preds = %31
  %36 = call i32 @PUGH_DisableGArrayGroupComm(%struct.PGH* %1, i32 %variable.011, %struct.PComm* %29) #8
  br label %37

; <label>:37                                      ; preds = %31, %35
  call void @PUGH_DestroyComm(%struct.PComm** %28) #8
  br label %38

; <label>:38                                      ; preds = %21, %37
  %39 = getelementptr inbounds %struct.PGA* %27, i64 0, i32 11
  %40 = load %struct.PConnectivity** %39, align 8, !tbaa !41
  %41 = load i32* %6, align 4, !tbaa !42
  %42 = add nsw i32 %41, -1
  %43 = sext i32 %42 to i64
  %44 = load %struct.PConnectivity*** %7, align 8, !tbaa !12
  %45 = getelementptr inbounds %struct.PConnectivity** %44, i64 %43
  %46 = load %struct.PConnectivity** %45, align 8, !tbaa !17
  %47 = icmp eq %struct.PConnectivity* %40, %46
  br i1 %47, label %49, label %48

; <label>:48                                      ; preds = %38
  call void @PUGH_DestroyConnectivity(%struct.PConnectivity** %39) #8
  %.pre = load i32* %6, align 4, !tbaa !42
  br label %49

; <label>:49                                      ; preds = %38, %48
  %50 = phi i32 [ %41, %38 ], [ %.pre, %48 ]
  %51 = getelementptr inbounds %struct.PGA* %27, i64 0, i32 10
  %52 = load %struct.PGExtras** %51, align 8, !tbaa !43
  %53 = add nsw i32 %50, -1
  %54 = sext i32 %53 to i64
  %55 = load %struct.PGExtras*** %8, align 8, !tbaa !11
  %56 = getelementptr inbounds %struct.PGExtras** %55, i64 %54
  %57 = load %struct.PGExtras** %56, align 8, !tbaa !17
  %58 = icmp eq %struct.PGExtras* %52, %57
  br i1 %58, label %.preheader2, label %59

; <label>:59                                      ; preds = %49
  call void @PUGH_DestroyPGExtras(%struct.PGExtras** %51) #8
  br label %.preheader2

.preheader2:                                      ; preds = %49, %59, %17
  %60 = load i32* %9, align 4, !tbaa !44
  %61 = icmp sgt i32 %60, 0
  br i1 %61, label %.preheader1.lr.ph, label %91

.preheader1.lr.ph:                                ; preds = %.preheader2
  %62 = sext i32 %variable.011 to i64
  br label %.preheader1

.preheader1:                                      ; preds = %.preheader1.lr.ph, %._crit_edge7
  %indvars.iv17 = phi i64 [ %62, %.preheader1.lr.ph ], [ %indvars.iv.next18, %._crit_edge7 ]
  %this_var.09 = phi i32 [ 0, %.preheader1.lr.ph ], [ %87, %._crit_edge7 ]
  %63 = load i32* %10, align 4, !tbaa !45
  %64 = icmp sgt i32 %63, 0
  br i1 %64, label %.lr.ph6, label %._crit_edge7

.lr.ph6:                                          ; preds = %.preheader1, %79
  %indvars.iv15 = phi i64 [ %indvars.iv.next16, %79 ], [ 0, %.preheader1 ]
  %65 = load i32* %4, align 4, !tbaa !34
  switch i32 %65, label %79 [
    i32 2, label %66
    i32 3, label %66
    i32 1, label %71
  ]

; <label>:66                                      ; preds = %.lr.ph6, %.lr.ph6
  %67 = load %struct.PGA**** %11, align 8, !tbaa !36
  %68 = getelementptr inbounds %struct.PGA*** %67, i64 %indvars.iv17
  %69 = load %struct.PGA*** %68, align 8, !tbaa !17
  %70 = getelementptr inbounds %struct.PGA** %69, i64 %indvars.iv15
  call void @PUGH_DestroyGArray(%struct.PGA** %70) #8
  br label %79

; <label>:71                                      ; preds = %.lr.ph6
  %72 = load i8**** %5, align 8, !tbaa !36
  %73 = getelementptr inbounds i8*** %72, i64 %indvars.iv17
  %74 = load i8*** %73, align 8, !tbaa !17
  %75 = getelementptr inbounds i8** %74, i64 %indvars.iv15
  %76 = load i8** %75, align 8, !tbaa !17
  %77 = icmp eq i8* %76, null
  br i1 %77, label %79, label %78

; <label>:78                                      ; preds = %71
  call void @free(i8* %76) #9
  br label %79

; <label>:79                                      ; preds = %71, %66, %.lr.ph6, %78
  %indvars.iv.next16 = add nuw nsw i64 %indvars.iv15, 1
  %80 = load i32* %10, align 4, !tbaa !45
  %81 = sext i32 %80 to i64
  %82 = icmp slt i64 %indvars.iv.next16, %81
  br i1 %82, label %.lr.ph6, label %._crit_edge7

._crit_edge7:                                     ; preds = %79, %.preheader1
  %83 = load i8**** %5, align 8, !tbaa !36
  %84 = getelementptr inbounds i8*** %83, i64 %indvars.iv17
  %85 = bitcast i8*** %84 to i8**
  %86 = load i8** %85, align 8, !tbaa !17
  call void @free(i8* %86) #9
  %87 = add nuw nsw i32 %this_var.09, 1
  %indvars.iv.next18 = add i64 %indvars.iv17, 1
  %88 = load i32* %9, align 4, !tbaa !44
  %89 = icmp slt i32 %87, %88
  br i1 %89, label %.preheader1, label %._crit_edge10

._crit_edge10:                                    ; preds = %._crit_edge7
  %90 = trunc i64 %indvars.iv.next18 to i32
  br label %91

; <label>:91                                      ; preds = %._crit_edge10, %.preheader2
  %variable.1.lcssa = phi i32 [ %90, %._crit_edge10 ], [ %variable.011, %.preheader2 ]
  %92 = add nuw nsw i32 %group.012, 1
  %93 = call i32 @CCTK_NumGroups() #8
  %94 = icmp slt i32 %92, %93
  br i1 %94, label %17, label %.preheader

; <label>:95                                      ; preds = %95, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %95 ], [ 1, %.lr.ph ]
  %96 = add nsw i64 %indvars.iv, -1
  %97 = load %struct.PConnectivity*** %15, align 8, !tbaa !12
  %98 = getelementptr inbounds %struct.PConnectivity** %97, i64 %96
  call void @PUGH_DestroyConnectivity(%struct.PConnectivity** %98) #8
  %99 = load %struct.PGExtras*** %16, align 8, !tbaa !11
  %100 = getelementptr inbounds %struct.PGExtras** %99, i64 %96
  call void @PUGH_DestroyPGExtras(%struct.PGExtras** %100) #8
  %indvars.iv.next = add nuw i64 %indvars.iv, 1
  %101 = load i32* %12, align 4, !tbaa !15
  %102 = sext i32 %101 to i64
  %103 = icmp slt i64 %indvars.iv, %102
  br i1 %103, label %95, label %._crit_edge

._crit_edge:                                      ; preds = %95, %.preheader
  %104 = getelementptr inbounds %struct.PGH* %1, i64 0, i32 23
  %105 = load i8** %104, align 8, !tbaa !23
  %106 = icmp eq i8* %105, null
  br i1 %106, label %108, label %107

; <label>:107                                     ; preds = %._crit_edge
  call void @free(i8* %105) #9
  br label %108

; <label>:108                                     ; preds = %._crit_edge, %107
  %109 = getelementptr inbounds %struct.PGH* %1, i64 0, i32 22
  %110 = bitcast %struct.PConnectivity*** %109 to i8**
  %111 = load i8** %110, align 8, !tbaa !12
  call void @free(i8* %111) #9
  %112 = getelementptr inbounds %struct.PGH* %1, i64 0, i32 21
  %113 = bitcast %struct.PGExtras*** %112 to i8**
  %114 = load i8** %113, align 8, !tbaa !11
  call void @free(i8* %114) #9
  %115 = getelementptr inbounds %struct.PGH* %1, i64 0, i32 7
  %116 = bitcast i8**** %115 to i8**
  %117 = load i8** %116, align 8, !tbaa !36
  call void @free(i8* %117) #9
  %118 = bitcast %struct.PGH* %1 to i8*
  call void @free(i8* %118) #9
  store %struct.PGH* null, %struct.PGH** %GHin, align 8, !tbaa !17
  ret void
}

; Function Attrs: optsize
declare i32 @CCTK_NumGroups() #3

; Function Attrs: optsize
declare i32 @CCTK_GroupData(i32, %struct.cGroup*) #3

; Function Attrs: optsize
declare i32 @PUGH_DisableGArrayGroupComm(%struct.PGH*, i32, %struct.PComm*) #3

; Function Attrs: optsize
declare void @PUGH_DestroyComm(%struct.PComm**) #3

; Function Attrs: optsize
declare void @PUGH_DestroyConnectivity(%struct.PConnectivity**) #3

; Function Attrs: optsize
declare void @PUGH_DestroyPGExtras(%struct.PGExtras**) #3

; Function Attrs: optsize
declare void @PUGH_DestroyGArray(%struct.PGA**) #3

; Function Attrs: nounwind optsize
declare i8* @__memset_chk(i8*, i32, i64, i64) #2

; Function Attrs: nounwind readnone
declare i64 @llvm.objectsize.i64.p0i8(i8*, i1) #4

; Function Attrs: nounwind optsize readnone ssp uwtable
define i32 @PUGH_ParallelInit(%struct.cGH* nocapture readnone %GH) #0 {
  ret i32 0
}

; Function Attrs: noreturn nounwind optsize ssp uwtable
define i32 @PUGH_Exit(%struct.cGH* nocapture readnone %GH, i32 %retval) #5 {
  tail call void @exit(i32 %retval) #10
  unreachable
}

; Function Attrs: noreturn optsize
declare void @exit(i32) #6

; Function Attrs: noreturn nounwind optsize ssp uwtable
define i32 @PUGH_Abort(%struct.cGH* nocapture readnone %GH, i32 %retval) #5 {
  tail call void @exit(i32 0) #10
  unreachable
}

; Function Attrs: nounwind optsize readnone ssp uwtable
define i32 @PUGH_MyProc(%struct.cGH* nocapture readnone %GH) #0 {
  ret i32 0
}

; Function Attrs: nounwind optsize readnone ssp uwtable
define i32 @PUGH_nProcs(%struct.cGH* nocapture readnone %GH) #0 {
  ret i32 1
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #7

attributes #0 = { nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { noreturn nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noreturn optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind }
attributes #8 = { nounwind optsize }
attributes #9 = { optsize }
attributes #10 = { noreturn nounwind optsize }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!2 = !{!3, !7, i64 216}
!3 = !{!"", !4, i64 0, !4, i64 8, !4, i64 16, !4, i64 24, !4, i64 32, !4, i64 40, !4, i64 48, !4, i64 56, !4, i64 64, !4, i64 72, !4, i64 80, !7, i64 88, !7, i64 92, !7, i64 96, !7, i64 100, !7, i64 104, !7, i64 108, !7, i64 112, !7, i64 116, !7, i64 120, !7, i64 124, !7, i64 128, !7, i64 132, !7, i64 136, !7, i64 140, !7, i64 144, !7, i64 148, !7, i64 152, !7, i64 156, !7, i64 160, !7, i64 164, !7, i64 168, !7, i64 172, !7, i64 176, !7, i64 180, !7, i64 184, !7, i64 188, !7, i64 192, !7, i64 196, !7, i64 200, !7, i64 204, !7, i64 208, !7, i64 212, !7, i64 216}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!"int", !5, i64 0}
!8 = !{!9, !4, i64 0}
!9 = !{!"PGH", !4, i64 0, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !7, i64 24, !7, i64 28, !4, i64 32, !7, i64 40, !4, i64 48, !7, i64 56, !7, i64 60, !10, i64 64, !10, i64 72, !10, i64 80, !10, i64 88, !7, i64 96, !7, i64 100, !7, i64 104, !7, i64 108, !7, i64 112, !4, i64 120, !4, i64 128, !4, i64 136}
!10 = !{!"double", !5, i64 0}
!11 = !{!9, !4, i64 120}
!12 = !{!9, !4, i64 128}
!13 = !{!9, !7, i64 12}
!14 = !{!9, !7, i64 16}
!15 = !{!9, !7, i64 8}
!16 = !{!7, !7, i64 0}
!17 = !{!4, !4, i64 0}
!18 = !{!19, !4, i64 8}
!19 = !{!"PConnectivity", !7, i64 0, !4, i64 8, !4, i64 16, !4, i64 24}
!20 = !{!9, !7, i64 112}
!21 = !{!9, !7, i64 108}
!22 = !{!9, !7, i64 20}
!23 = !{!9, !4, i64 136}
!24 = !{!9, !7, i64 96}
!25 = !{!9, !7, i64 100}
!26 = !{!9, !7, i64 104}
!27 = !{!9, !7, i64 60}
!28 = !{!3, !7, i64 188}
!29 = !{!3, !7, i64 196}
!30 = !{!3, !7, i64 192}
!31 = !{!3, !7, i64 208}
!32 = !{!3, !7, i64 204}
!33 = !{!3, !7, i64 200}
!34 = !{!35, !7, i64 0}
!35 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !7, i64 24, !7, i64 28}
!36 = !{!9, !4, i64 32}
!37 = !{!38, !4, i64 80}
!38 = !{!"PGA", !4, i64 0, !7, i64 8, !7, i64 12, !4, i64 16, !4, i64 24, !7, i64 32, !7, i64 36, !4, i64 40, !7, i64 48, !7, i64 52, !4, i64 56, !4, i64 64, !4, i64 72, !4, i64 80, !7, i64 88, !7, i64 92, !4, i64 96}
!39 = !{!40, !7, i64 24}
!40 = !{!"PComm", !4, i64 0, !4, i64 8, !4, i64 16, !7, i64 24, !4, i64 32, !7, i64 40, !7, i64 44, !7, i64 48}
!41 = !{!38, !4, i64 64}
!42 = !{!35, !7, i64 16}
!43 = !{!38, !4, i64 56}
!44 = !{!35, !7, i64 20}
!45 = !{!35, !7, i64 24}
