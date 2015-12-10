; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/PUGH/GHExtension.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.anon = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.anon.0 = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.cGH = type { i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, double, double*, double*, i32*, i32*, i32, i32*, double, i8***, i8**, %struct.cGHGroupData* }
%struct.cGHGroupData = type { i8, i8 }
%struct.cFunctionData = type { i32, i32 (%struct.cGH*, i8*)*, i32, i32, i32*, i32, i32, i32*, i8*, i8*, i8* }
%struct.tFleshConfig = type { i8*, %struct.cGH**, i32 }
%struct.cGroup = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.PGH = type { i8*, i32, i32, i32, i32, i32, i32, i8***, i32, i32*, i32, i32, double, double, double, double, i32, i32, i32, i32, i32, %struct.PGExtras**, %struct.PConnectivity**, i8* }
%struct.PGExtras = type { i32, i32*, double, i32**, i32**, i32*, i32*, i32, i32*, i32**, i32*, i32*, i32*, [4 x [2 x i32*]], [4 x [2 x i32**]], [4 x [2 x i32**]] }
%struct.PConnectivity = type { i32, i32*, i32**, i32* }
%struct.PGA = type { i8*, i32, i32, i8*, i8*, i32, i32, i8*, i32, i32, %struct.PGExtras*, %struct.PConnectivity*, %struct.PComm*, %struct.PComm*, i32, i32, %struct.PGA* }
%struct.PComm = type { i32*, i8**, i8**, i32, i32*, i32, i32, i32 }
%struct.cTimerData = type { i32, %struct.cTimerVal* }
%struct.cTimerVal = type { i32, i8*, i8*, %union.anon }
%union.anon = type { i64 }

@driverrest_ = external global %struct.anon
@pughpriv_ = external global %struct.anon.0
@.str = private unnamed_addr constant [78 x i8] c"../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/PUGH/GHExtension.c\00", align 1
@.str1 = private unnamed_addr constant [5 x i8] c"PUGH\00", align 1
@.str2 = private unnamed_addr constant [36 x i8] c"Failed to allocate memory for a pGH\00", align 1
@CCTK_EnableGroupStorage = external global i32 (%struct.cGH*, i8*)*
@.str3 = private unnamed_addr constant [14 x i8] c"CCTK_SHUTDOWN\00", align 1
@PUGHCallFunc = internal unnamed_addr global i32 (i8*, %struct.cFunctionData*, i8*)* null, align 8
@.str4 = private unnamed_addr constant [37 x i8] c"Elapsed time spent in communication:\00", align 1
@.str5 = private unnamed_addr constant [12 x i8] c"  %s: %d %s\00", align 1
@.str6 = private unnamed_addr constant [14 x i8] c"  %s: %.3f %s\00", align 1
@.str7 = private unnamed_addr constant [33 x i8] c"Unknown data type for timer info\00", align 1
@.str8 = private unnamed_addr constant [67 x i8] c"Couldn't create timer info structure ! No timing output available.\00", align 1
@.str9 = private unnamed_addr constant [91 x i8] c"$Header: /cactus/CactusPUGH/PUGH/src/GHExtension.c,v 1.59 2001/11/05 15:01:46 tradke Exp $\00", align 1
@.str10 = private unnamed_addr constant [41 x i8] c"PUGH_InitGHVariables: Unknown group type\00", align 1

; Function Attrs: nounwind optsize readnone ssp uwtable
define i8* @CCTKi_version_CactusPUGH_pugh_GHExtension_c() #0 {
  ret i8* getelementptr inbounds ([91 x i8]* @.str9, i64 0, i64 0), !dbg !632
}

; Function Attrs: nounwind optsize ssp uwtable
define i8* @PUGH_SetupGH(%struct.tFleshConfig* nocapture readnone %config, i32 %convergence_level, %struct.cGH* %GH) #1 {
  %pgroup = alloca %struct.cGroup, align 4
  tail call void @llvm.dbg.value(metadata %struct.tFleshConfig* %config, i64 0, metadata !152, metadata !633), !dbg !634
  tail call void @llvm.dbg.value(metadata i32 %convergence_level, i64 0, metadata !153, metadata !633), !dbg !635
  tail call void @llvm.dbg.value(metadata %struct.cGH* %GH, i64 0, metadata !154, metadata !633), !dbg !636
  tail call void @llvm.dbg.value(metadata %struct.tFleshConfig* %config, i64 0, metadata !152, metadata !633), !dbg !634
  tail call void @llvm.dbg.value(metadata i32 %convergence_level, i64 0, metadata !153, metadata !633), !dbg !635
  %1 = tail call i32 @CCTK_MaxDim() #6, !dbg !637
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !157, metadata !633), !dbg !638
  %2 = mul nsw i32 %1, 5, !dbg !639
  %3 = sext i32 %2 to i64, !dbg !640
  %4 = shl nsw i64 %3, 2, !dbg !641
  %5 = tail call i8* @malloc(i64 %4) #6, !dbg !642
  %6 = bitcast i8* %5 to i32*, !dbg !643
  tail call void @llvm.dbg.value(metadata i32* %6, i64 0, metadata !204, metadata !633), !dbg !644
  %7 = sext i32 %1 to i64, !dbg !645
  %8 = getelementptr inbounds i32* %6, i64 %7, !dbg !645
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !205, metadata !633), !dbg !646
  %9 = shl nsw i32 %1, 1, !dbg !647
  %10 = sext i32 %9 to i64, !dbg !648
  %11 = getelementptr inbounds i32* %6, i64 %10, !dbg !648
  tail call void @llvm.dbg.value(metadata i32* %11, i64 0, metadata !206, metadata !633), !dbg !649
  tail call void @PUGH_GFSize(i32 %1, i32* %6) #7, !dbg !650
  tail call void @PUGH_GFGhostsize(i32 %1, i32* %8) #7, !dbg !651
  tail call void @PUGH_GFPeriodic(i32 %1, i32* %11) #7, !dbg !652
  %12 = bitcast %struct.cGH* %GH to i8*, !dbg !653
  %13 = tail call i32 @CCTK_StaggerVars() #6, !dbg !654
  %14 = icmp ne i32 %13, 0, !dbg !654
  %15 = zext i1 %14 to i32, !dbg !654
  %16 = tail call %struct.PGH* @PUGH_SetupPGH(i8* %12, i32 %1, i32* %6, i32* %8, i32 %15, i32* %11) #6, !dbg !655
  tail call void @llvm.dbg.value(metadata %struct.PGH* %16, i64 0, metadata !158, metadata !633), !dbg !656
  %17 = icmp eq %struct.PGH* %16, null, !dbg !657
  br i1 %17, label %18, label %20, !dbg !659

; <label>:18                                      ; preds = %0
  %19 = tail call i32 @CCTK_Warn(i32 0, i32 108, i8* getelementptr inbounds ([78 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([36 x i8]* @.str2, i64 0, i64 0)) #6, !dbg !660
  br label %20, !dbg !662

; <label>:20                                      ; preds = %0, %18
  %21 = tail call i8* @calloc(i64 1, i64 1) #6, !dbg !663
  %22 = getelementptr inbounds %struct.PGH* %16, i64 0, i32 23, !dbg !664
  store i8* %21, i8** %22, align 8, !dbg !665, !tbaa !666
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !156, metadata !633), !dbg !673
  %23 = call i32 @CCTK_NumGroups() #6, !dbg !674
  %24 = icmp sgt i32 %23, 0, !dbg !677
  br i1 %24, label %.lr.ph8, label %._crit_edge, !dbg !678

.lr.ph8:                                          ; preds = %20
  %25 = mul nsw i32 %1, 3, !dbg !679
  %26 = sext i32 %25 to i64, !dbg !681
  %27 = getelementptr inbounds i32* %6, i64 %26, !dbg !681
  %28 = shl nsw i32 %1, 2, !dbg !682
  %29 = sext i32 %28 to i64, !dbg !683
  %30 = getelementptr inbounds i32* %6, i64 %29, !dbg !683
  %31 = getelementptr inbounds %struct.cGroup* %pgroup, i64 0, i32 0, !dbg !684
  %32 = bitcast i32* %30 to i8*, !dbg !687
  %33 = getelementptr inbounds %struct.cGroup* %pgroup, i64 0, i32 4, !dbg !687
  %34 = call i64 @llvm.objectsize.i64.p0i8(i8* %32, i1 false), !dbg !687
  %35 = getelementptr inbounds %struct.cGroup* %pgroup, i64 0, i32 1, !dbg !689
  %36 = getelementptr inbounds %struct.cGroup* %pgroup, i64 0, i32 5, !dbg !690
  %37 = getelementptr inbounds %struct.cGroup* %pgroup, i64 0, i32 3, !dbg !691
  %38 = getelementptr inbounds %struct.cGroup* %pgroup, i64 0, i32 6, !dbg !692
  %39 = getelementptr inbounds %struct.cGroup* %pgroup, i64 0, i32 7, !dbg !693
  %40 = getelementptr inbounds %struct.cGroup* %pgroup, i64 0, i32 2, !dbg !694
  br label %41, !dbg !678

; <label>:41                                      ; preds = %.lr.ph8, %.loopexit
  %group.07 = phi i32 [ 0, %.lr.ph8 ], [ %82, %.loopexit ]
  call void @llvm.dbg.value(metadata %struct.cGroup* %pgroup, i64 0, metadata !190, metadata !633), !dbg !701
  %42 = call i32 @CCTK_GroupData(i32 %group.07, %struct.cGroup* %pgroup) #6, !dbg !702
  call void @llvm.dbg.value(metadata i32* %27, i64 0, metadata !208, metadata !633), !dbg !703
  call void @llvm.dbg.value(metadata i32* %30, i64 0, metadata !207, metadata !633), !dbg !704
  %43 = call i32** @CCTK_GroupSizesI(i32 %group.07) #6, !dbg !705
  call void @llvm.dbg.value(metadata i32** %43, i64 0, metadata !203, metadata !633), !dbg !706
  %44 = icmp eq i32** %43, null, !dbg !707
  br i1 %44, label %.loopexit3, label %.preheader2, !dbg !708

.preheader2:                                      ; preds = %41
  %45 = load i32* %33, align 4, !dbg !709, !tbaa !710
  %46 = icmp sgt i32 %45, 0, !dbg !712
  br i1 %46, label %.lr.ph, label %.loopexit3, !dbg !713

.lr.ph:                                           ; preds = %.preheader2
  %.pre = load i32* %40, align 4, !dbg !694, !tbaa !714
  br label %47, !dbg !713

; <label>:47                                      ; preds = %.lr.ph, %47
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %47 ]
  %48 = getelementptr inbounds i32** %43, i64 %indvars.iv, !dbg !715
  %49 = load i32** %48, align 8, !dbg !715, !tbaa !716
  %50 = load i32* %49, align 4, !dbg !717, !tbaa !718
  %.sum1 = add nsw i64 %indvars.iv, %26, !dbg !719
  %51 = getelementptr inbounds i32* %6, i64 %.sum1, !dbg !719
  %52 = icmp eq i32 %.pre, 1, !dbg !720
  %53 = sub nsw i32 0, %50, !dbg !721
  %. = select i1 %52, i32 %53, i32 %50, !dbg !723
  store i32 %., i32* %51, align 4, !dbg !724, !tbaa !718
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !713
  %54 = sext i32 %45 to i64, !dbg !712
  %55 = icmp slt i64 %indvars.iv.next, %54, !dbg !712
  br i1 %55, label %47, label %.loopexit3, !dbg !713

.loopexit3:                                       ; preds = %47, %.preheader2, %41
  %groupsize.0 = phi i32* [ null, %41 ], [ %27, %.preheader2 ], [ %27, %47 ]
  %56 = call i32** @CCTK_GroupGhostsizesI(i32 %group.07) #6, !dbg !725
  call void @llvm.dbg.value(metadata i32** %56, i64 0, metadata !203, metadata !633), !dbg !706
  %57 = icmp eq i32** %56, null, !dbg !726
  br i1 %57, label %66, label %.preheader, !dbg !727

.preheader:                                       ; preds = %.loopexit3
  %58 = load i32* %33, align 4, !dbg !728, !tbaa !710
  %59 = icmp sgt i32 %58, 0, !dbg !732
  br i1 %59, label %.lr.ph6, label %.loopexit, !dbg !733

.lr.ph6:                                          ; preds = %.preheader, %.lr.ph6
  %indvars.iv9 = phi i64 [ %indvars.iv.next10, %.lr.ph6 ], [ 0, %.preheader ]
  %60 = getelementptr inbounds i32** %56, i64 %indvars.iv9, !dbg !734
  %61 = load i32** %60, align 8, !dbg !734, !tbaa !716
  %62 = load i32* %61, align 4, !dbg !736, !tbaa !718
  %.sum = add nsw i64 %indvars.iv9, %29, !dbg !737
  %63 = getelementptr inbounds i32* %6, i64 %.sum, !dbg !737
  store i32 %62, i32* %63, align 4, !dbg !738, !tbaa !718
  %indvars.iv.next10 = add nuw nsw i64 %indvars.iv9, 1, !dbg !733
  %64 = sext i32 %58 to i64, !dbg !732
  %65 = icmp slt i64 %indvars.iv.next10, %64, !dbg !732
  br i1 %65, label %.lr.ph6, label %.loopexit, !dbg !733

; <label>:66                                      ; preds = %.loopexit3
  %67 = load i32* %31, align 4, !dbg !684, !tbaa !739
  %68 = icmp eq i32 %67, 3, !dbg !740
  br i1 %68, label %69, label %.loopexit, !dbg !741

; <label>:69                                      ; preds = %66
  %70 = load i32* %33, align 4, !dbg !687, !tbaa !710
  %71 = sext i32 %70 to i64, !dbg !687
  %72 = shl nsw i64 %71, 2, !dbg !687
  %73 = call i8* @__memset_chk(i8* %32, i32 0, i64 %72, i64 %34) #6, !dbg !687
  br label %.loopexit, !dbg !742

.loopexit:                                        ; preds = %.lr.ph6, %.preheader, %66, %69
  %groupghostsize.0 = phi i32* [ %30, %69 ], [ null, %66 ], [ %30, %.preheader ], [ %30, %.lr.ph6 ]
  %74 = load i32* %31, align 4, !dbg !743, !tbaa !739
  %75 = load i32* %35, align 4, !dbg !689, !tbaa !744
  %76 = load i32* %33, align 4, !dbg !745, !tbaa !710
  %77 = load i32* %36, align 4, !dbg !690, !tbaa !746
  %78 = load i32* %37, align 4, !dbg !691, !tbaa !747
  %79 = load i32* %38, align 4, !dbg !692, !tbaa !748
  %80 = load i32* %39, align 4, !dbg !693, !tbaa !749
  %81 = call i32 @PUGH_SetupGroup(%struct.PGH* %16, i32* %groupsize.0, i32* %groupghostsize.0, i32 %74, i32 %75, i32 %76, i32 %77, i32 %78, i32 %79, i32 %80) #6, !dbg !750
  %82 = add nuw nsw i32 %group.07, 1, !dbg !751
  call void @llvm.dbg.value(metadata i32 %82, i64 0, metadata !156, metadata !633), !dbg !673
  %83 = call i32 @CCTK_NumGroups() #6, !dbg !674
  %84 = icmp slt i32 %82, %83, !dbg !677
  br i1 %84, label %41, label %._crit_edge, !dbg !678

._crit_edge:                                      ; preds = %.loopexit, %20
  call void @free(i8* %5) #7, !dbg !752
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !272, metadata !633), !dbg !753
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !272, metadata !633), !dbg !753
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !272, metadata !633), !dbg !753
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !272, metadata !633), !dbg !753
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !272, metadata !633), !dbg !753
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !272, metadata !633), !dbg !753
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !272, metadata !633), !dbg !753
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !272, metadata !633), !dbg !753
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !272, metadata !633), !dbg !753
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !272, metadata !633), !dbg !753
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !272, metadata !633), !dbg !753
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !272, metadata !633), !dbg !753
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !272, metadata !633), !dbg !753
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !272, metadata !633), !dbg !753
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !272, metadata !633), !dbg !753
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !272, metadata !633), !dbg !753
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !272, metadata !633), !dbg !753
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !272, metadata !633), !dbg !753
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !272, metadata !633), !dbg !753
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !272, metadata !633), !dbg !753
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !272, metadata !633), !dbg !753
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !272, metadata !633), !dbg !753
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !272, metadata !633), !dbg !753
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !272, metadata !633), !dbg !753
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !272, metadata !633), !dbg !753
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !272, metadata !633), !dbg !753
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !272, metadata !633), !dbg !753
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !272, metadata !633), !dbg !753
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !272, metadata !633), !dbg !753
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !272, metadata !633), !dbg !753
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !272, metadata !633), !dbg !753
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !272, metadata !633), !dbg !753
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !272, metadata !633), !dbg !753
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !272, metadata !633), !dbg !753
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !272, metadata !633), !dbg !753
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !272, metadata !633), !dbg !753
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !272, metadata !633), !dbg !753
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !272, metadata !633), !dbg !753
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !272, metadata !633), !dbg !753
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !272, metadata !633), !dbg !753
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !272, metadata !633), !dbg !753
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !272, metadata !633), !dbg !753
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !272, metadata !633), !dbg !753
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !272, metadata !633), !dbg !753
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !272, metadata !633), !dbg !753
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !272, metadata !633), !dbg !753
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !272, metadata !633), !dbg !753
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !272, metadata !633), !dbg !753
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !272, metadata !633), !dbg !753
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !272, metadata !633), !dbg !753
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !272, metadata !633), !dbg !753
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !272, metadata !633), !dbg !753
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !272, metadata !633), !dbg !753
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !272, metadata !633), !dbg !753
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !272, metadata !633), !dbg !753
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !272, metadata !633), !dbg !753
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !272, metadata !633), !dbg !753
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !272, metadata !633), !dbg !753
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !272, metadata !633), !dbg !753
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !272, metadata !633), !dbg !753
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !272, metadata !633), !dbg !753
  call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !272, metadata !633), !dbg !753
  %85 = bitcast %struct.PGH* %16 to i8*, !dbg !754
  ret i8* %85, !dbg !755
}

; Function Attrs: optsize
declare i32 @CCTK_MaxDim() #2

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i64) #3

; Function Attrs: nounwind optsize ssp uwtable
define void @PUGH_GFSize(i32 %dim, i32* nocapture %nsize) #1 {
  tail call void @llvm.dbg.value(metadata i32 %dim, i64 0, metadata !382, metadata !633), !dbg !756
  tail call void @llvm.dbg.value(metadata i32* %nsize, i64 0, metadata !383, metadata !633), !dbg !757
  %1 = load i32* getelementptr inbounds (%struct.anon* @driverrest_, i64 0, i32 4), align 4, !dbg !758, !tbaa !759
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !390, metadata !633), !dbg !758
  %2 = load i32* getelementptr inbounds (%struct.anon* @driverrest_, i64 0, i32 5), align 4, !dbg !758, !tbaa !761
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !391, metadata !633), !dbg !758
  %3 = load i32* getelementptr inbounds (%struct.anon* @driverrest_, i64 0, i32 6), align 4, !dbg !758, !tbaa !762
  tail call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !392, metadata !633), !dbg !758
  %4 = load i32* getelementptr inbounds (%struct.anon* @driverrest_, i64 0, i32 7), align 4, !dbg !758, !tbaa !763
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !393, metadata !633), !dbg !758
  %5 = load i64* bitcast (i32* getelementptr inbounds (%struct.anon.0* @pughpriv_, i64 0, i32 13) to i64*), align 8, !dbg !758
  %6 = trunc i64 %5 to i32, !dbg !758
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !411, metadata !633), !dbg !758
  %7 = lshr i64 %5, 32
  %8 = trunc i64 %7 to i32
  tail call void @llvm.dbg.value(metadata i32 %8, i64 0, metadata !412, metadata !633), !dbg !758
  %9 = load i64* bitcast (i32* getelementptr inbounds (%struct.anon.0* @pughpriv_, i64 0, i32 15) to i64*), align 8, !dbg !758
  %10 = trunc i64 %9 to i32, !dbg !758
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !413, metadata !633), !dbg !758
  %11 = lshr i64 %9, 32
  %12 = trunc i64 %11 to i32
  tail call void @llvm.dbg.value(metadata i32 %12, i64 0, metadata !414, metadata !633), !dbg !758
  %13 = icmp sgt i32 %1, 0, !dbg !764
  %14 = icmp sgt i32 %6, 0, !dbg !766
  %or.cond = or i1 %13, %14, !dbg !767
  br i1 %or.cond, label %15, label %22, !dbg !767

; <label>:15                                      ; preds = %0
  %16 = sub nsw i32 0, %6, !dbg !768
  %17 = select i1 %13, i32 %1, i32 %16, !dbg !770
  %18 = icmp sgt i32 %dim, 0, !dbg !771
  br i1 %18, label %.lr.ph, label %.loopexit, !dbg !774

.lr.ph:                                           ; preds = %15
  %19 = add i32 %dim, -1, !dbg !774
  br label %20, !dbg !774

; <label>:20                                      ; preds = %20, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %20 ]
  %21 = getelementptr inbounds i32* %nsize, i64 %indvars.iv, !dbg !775
  store i32 %17, i32* %21, align 4, !dbg !777, !tbaa !718
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !774
  %lftr.wideiv = trunc i64 %indvars.iv to i32, !dbg !774
  %exitcond = icmp eq i32 %lftr.wideiv, %19, !dbg !774
  br i1 %exitcond, label %.loopexit, label %20, !dbg !774

; <label>:22                                      ; preds = %0
  switch i32 %dim, label %.loopexit [
    i32 3, label %23
    i32 2, label %28
    i32 1, label %33
  ], !dbg !778

; <label>:23                                      ; preds = %22
  %24 = icmp sgt i32 %12, 0, !dbg !780
  %25 = sub nsw i32 0, %12, !dbg !782
  %26 = select i1 %24, i32 %25, i32 %4, !dbg !783
  %27 = getelementptr inbounds i32* %nsize, i64 2, !dbg !784
  store i32 %26, i32* %27, align 4, !dbg !785, !tbaa !718
  br label %28, !dbg !784

; <label>:28                                      ; preds = %22, %23
  %29 = icmp sgt i32 %10, 0, !dbg !786
  %30 = sub nsw i32 0, %10, !dbg !787
  %31 = select i1 %29, i32 %30, i32 %3, !dbg !788
  %32 = getelementptr inbounds i32* %nsize, i64 1, !dbg !789
  store i32 %31, i32* %32, align 4, !dbg !790, !tbaa !718
  br label %33, !dbg !789

; <label>:33                                      ; preds = %22, %28
  %34 = icmp sgt i32 %8, 0, !dbg !791
  %35 = sub nsw i32 0, %8, !dbg !792
  %36 = select i1 %34, i32 %35, i32 %2, !dbg !793
  store i32 %36, i32* %nsize, align 4, !dbg !794, !tbaa !718
  br label %.loopexit, !dbg !795

.loopexit:                                        ; preds = %20, %15, %22, %33
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !447, metadata !633), !dbg !758
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !447, metadata !633), !dbg !758
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !447, metadata !633), !dbg !758
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !447, metadata !633), !dbg !758
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !447, metadata !633), !dbg !758
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !447, metadata !633), !dbg !758
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !447, metadata !633), !dbg !758
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !447, metadata !633), !dbg !758
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !447, metadata !633), !dbg !758
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !447, metadata !633), !dbg !758
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !447, metadata !633), !dbg !758
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !447, metadata !633), !dbg !758
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !447, metadata !633), !dbg !758
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !447, metadata !633), !dbg !758
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !447, metadata !633), !dbg !758
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !447, metadata !633), !dbg !758
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !447, metadata !633), !dbg !758
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !447, metadata !633), !dbg !758
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !447, metadata !633), !dbg !758
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !447, metadata !633), !dbg !758
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !447, metadata !633), !dbg !758
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !447, metadata !633), !dbg !758
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !447, metadata !633), !dbg !758
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !447, metadata !633), !dbg !758
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !447, metadata !633), !dbg !758
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !447, metadata !633), !dbg !758
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !447, metadata !633), !dbg !758
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !447, metadata !633), !dbg !758
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !447, metadata !633), !dbg !758
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !447, metadata !633), !dbg !758
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !447, metadata !633), !dbg !758
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !447, metadata !633), !dbg !758
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !447, metadata !633), !dbg !758
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !447, metadata !633), !dbg !758
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !447, metadata !633), !dbg !758
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !447, metadata !633), !dbg !758
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !447, metadata !633), !dbg !758
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !447, metadata !633), !dbg !758
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !447, metadata !633), !dbg !758
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !447, metadata !633), !dbg !758
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !447, metadata !633), !dbg !758
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !447, metadata !633), !dbg !758
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !447, metadata !633), !dbg !758
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !447, metadata !633), !dbg !758
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !447, metadata !633), !dbg !758
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !447, metadata !633), !dbg !758
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !447, metadata !633), !dbg !758
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !447, metadata !633), !dbg !758
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !447, metadata !633), !dbg !758
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !447, metadata !633), !dbg !758
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !447, metadata !633), !dbg !758
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !447, metadata !633), !dbg !758
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !447, metadata !633), !dbg !758
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !447, metadata !633), !dbg !758
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !447, metadata !633), !dbg !758
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !447, metadata !633), !dbg !758
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !447, metadata !633), !dbg !758
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !447, metadata !633), !dbg !758
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !447, metadata !633), !dbg !758
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !447, metadata !633), !dbg !758
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !447, metadata !633), !dbg !758
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !447, metadata !633), !dbg !758
  ret void, !dbg !796
}

; Function Attrs: nounwind optsize ssp uwtable
define void @PUGH_GFGhostsize(i32 %dim, i32* %ghostsize) #1 {
  tail call void @llvm.dbg.value(metadata i32 %dim, i64 0, metadata !450, metadata !633), !dbg !797
  tail call void @llvm.dbg.value(metadata i32* %ghostsize, i64 0, metadata !451, metadata !633), !dbg !798
  %1 = load i32* getelementptr inbounds (%struct.anon* @driverrest_, i64 0, i32 0), align 4, !dbg !799, !tbaa !800
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !453, metadata !633), !dbg !799
  %2 = load i32* getelementptr inbounds (%struct.anon* @driverrest_, i64 0, i32 1), align 4, !dbg !799, !tbaa !801
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !454, metadata !633), !dbg !799
  %3 = load i32* getelementptr inbounds (%struct.anon* @driverrest_, i64 0, i32 2), align 4, !dbg !799, !tbaa !802
  tail call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !455, metadata !633), !dbg !799
  %4 = load i32* getelementptr inbounds (%struct.anon* @driverrest_, i64 0, i32 3), align 4, !dbg !799, !tbaa !803
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !456, metadata !633), !dbg !799
  %5 = icmp sgt i32 %1, -1, !dbg !804
  br i1 %5, label %.preheader, label %10, !dbg !806

.preheader:                                       ; preds = %0
  %6 = icmp sgt i32 %dim, 0, !dbg !807
  br i1 %6, label %.lr.ph, label %.loopexit, !dbg !811

.lr.ph:                                           ; preds = %.preheader
  %7 = add i32 %dim, -1, !dbg !811
  br label %8, !dbg !811

; <label>:8                                       ; preds = %8, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %8 ]
  %9 = getelementptr inbounds i32* %ghostsize, i64 %indvars.iv, !dbg !812
  store i32 %1, i32* %9, align 4, !dbg !814, !tbaa !718
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !811
  %lftr.wideiv = trunc i64 %indvars.iv to i32, !dbg !811
  %exitcond = icmp eq i32 %lftr.wideiv, %7, !dbg !811
  br i1 %exitcond, label %.loopexit, label %8, !dbg !811

; <label>:10                                      ; preds = %0
  %11 = bitcast i32* %ghostsize to i8*, !dbg !815
  %12 = sext i32 %dim to i64, !dbg !815
  %13 = tail call i64 @llvm.objectsize.i64.p0i8(i8* %11, i1 false), !dbg !815
  %14 = tail call i8* @__memset_chk(i8* %11, i32 0, i64 %12, i64 %13) #6, !dbg !815
  switch i32 %dim, label %.loopexit [
    i32 3, label %15
    i32 2, label %17
    i32 1, label %19
  ], !dbg !817

; <label>:15                                      ; preds = %10
  %16 = getelementptr inbounds i32* %ghostsize, i64 2, !dbg !818
  store i32 %4, i32* %16, align 4, !dbg !820, !tbaa !718
  br label %17, !dbg !818

; <label>:17                                      ; preds = %10, %15
  %18 = getelementptr inbounds i32* %ghostsize, i64 1, !dbg !821
  store i32 %3, i32* %18, align 4, !dbg !822, !tbaa !718
  br label %19, !dbg !821

; <label>:19                                      ; preds = %10, %17
  store i32 %2, i32* %ghostsize, align 4, !dbg !823, !tbaa !718
  br label %.loopexit, !dbg !824

.loopexit:                                        ; preds = %8, %.preheader, %10, %19
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !514, metadata !633), !dbg !799
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !514, metadata !633), !dbg !799
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !514, metadata !633), !dbg !799
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !514, metadata !633), !dbg !799
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !514, metadata !633), !dbg !799
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !514, metadata !633), !dbg !799
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !514, metadata !633), !dbg !799
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !514, metadata !633), !dbg !799
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !514, metadata !633), !dbg !799
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !514, metadata !633), !dbg !799
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !514, metadata !633), !dbg !799
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !514, metadata !633), !dbg !799
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !514, metadata !633), !dbg !799
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !514, metadata !633), !dbg !799
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !514, metadata !633), !dbg !799
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !514, metadata !633), !dbg !799
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !514, metadata !633), !dbg !799
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !514, metadata !633), !dbg !799
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !514, metadata !633), !dbg !799
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !514, metadata !633), !dbg !799
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !514, metadata !633), !dbg !799
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !514, metadata !633), !dbg !799
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !514, metadata !633), !dbg !799
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !514, metadata !633), !dbg !799
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !514, metadata !633), !dbg !799
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !514, metadata !633), !dbg !799
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !514, metadata !633), !dbg !799
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !514, metadata !633), !dbg !799
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !514, metadata !633), !dbg !799
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !514, metadata !633), !dbg !799
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !514, metadata !633), !dbg !799
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !514, metadata !633), !dbg !799
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !514, metadata !633), !dbg !799
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !514, metadata !633), !dbg !799
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !514, metadata !633), !dbg !799
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !514, metadata !633), !dbg !799
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !514, metadata !633), !dbg !799
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !514, metadata !633), !dbg !799
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !514, metadata !633), !dbg !799
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !514, metadata !633), !dbg !799
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !514, metadata !633), !dbg !799
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !514, metadata !633), !dbg !799
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !514, metadata !633), !dbg !799
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !514, metadata !633), !dbg !799
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !514, metadata !633), !dbg !799
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !514, metadata !633), !dbg !799
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !514, metadata !633), !dbg !799
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !514, metadata !633), !dbg !799
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !514, metadata !633), !dbg !799
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !514, metadata !633), !dbg !799
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !514, metadata !633), !dbg !799
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !514, metadata !633), !dbg !799
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !514, metadata !633), !dbg !799
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !514, metadata !633), !dbg !799
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !514, metadata !633), !dbg !799
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !514, metadata !633), !dbg !799
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !514, metadata !633), !dbg !799
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !514, metadata !633), !dbg !799
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !514, metadata !633), !dbg !799
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !514, metadata !633), !dbg !799
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !514, metadata !633), !dbg !799
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !514, metadata !633), !dbg !799
  ret void, !dbg !825
}

; Function Attrs: nounwind optsize ssp uwtable
define void @PUGH_GFPeriodic(i32 %dim, i32* %perme) #1 {
  tail call void @llvm.dbg.value(metadata i32 %dim, i64 0, metadata !517, metadata !633), !dbg !826
  tail call void @llvm.dbg.value(metadata i32* %perme, i64 0, metadata !518, metadata !633), !dbg !827
  %1 = load i32* getelementptr inbounds (%struct.anon* @driverrest_, i64 0, i32 8), align 4, !dbg !828, !tbaa !829
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !527, metadata !633), !dbg !828
  %2 = load i32* getelementptr inbounds (%struct.anon* @driverrest_, i64 0, i32 9), align 4, !dbg !828, !tbaa !830
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !528, metadata !633), !dbg !828
  %3 = load i32* getelementptr inbounds (%struct.anon* @driverrest_, i64 0, i32 10), align 4, !dbg !828, !tbaa !831
  tail call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !529, metadata !633), !dbg !828
  %4 = load i32* getelementptr inbounds (%struct.anon* @driverrest_, i64 0, i32 11), align 4, !dbg !828, !tbaa !832
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !530, metadata !633), !dbg !828
  %5 = icmp eq i32 %1, 0, !dbg !833
  br i1 %5, label %12, label %6, !dbg !835

; <label>:6                                       ; preds = %0
  switch i32 %dim, label %18 [
    i32 3, label %7
    i32 2, label %9
    i32 1, label %11
  ], !dbg !836

; <label>:7                                       ; preds = %6
  %8 = getelementptr inbounds i32* %perme, i64 2, !dbg !838
  store i32 %4, i32* %8, align 4, !dbg !840, !tbaa !718
  br label %9, !dbg !838

; <label>:9                                       ; preds = %6, %7
  %10 = getelementptr inbounds i32* %perme, i64 1, !dbg !841
  store i32 %3, i32* %10, align 4, !dbg !842, !tbaa !718
  br label %11, !dbg !841

; <label>:11                                      ; preds = %6, %9
  store i32 %2, i32* %perme, align 4, !dbg !843, !tbaa !718
  br label %18, !dbg !844

; <label>:12                                      ; preds = %0
  %13 = bitcast i32* %perme to i8*, !dbg !845
  %14 = sext i32 %dim to i64, !dbg !845
  %15 = shl nsw i64 %14, 2, !dbg !845
  %16 = tail call i64 @llvm.objectsize.i64.p0i8(i8* %13, i1 false), !dbg !845
  %17 = tail call i8* @__memset_chk(i8* %13, i32 0, i64 %15, i64 %16) #6, !dbg !845
  br label %18

; <label>:18                                      ; preds = %6, %11, %12
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !580, metadata !633), !dbg !828
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !580, metadata !633), !dbg !828
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !580, metadata !633), !dbg !828
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !580, metadata !633), !dbg !828
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !580, metadata !633), !dbg !828
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !580, metadata !633), !dbg !828
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !580, metadata !633), !dbg !828
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !580, metadata !633), !dbg !828
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !580, metadata !633), !dbg !828
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !580, metadata !633), !dbg !828
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !580, metadata !633), !dbg !828
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !580, metadata !633), !dbg !828
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !580, metadata !633), !dbg !828
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !580, metadata !633), !dbg !828
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !580, metadata !633), !dbg !828
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !580, metadata !633), !dbg !828
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !580, metadata !633), !dbg !828
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !580, metadata !633), !dbg !828
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !580, metadata !633), !dbg !828
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !580, metadata !633), !dbg !828
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !580, metadata !633), !dbg !828
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !580, metadata !633), !dbg !828
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !580, metadata !633), !dbg !828
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !580, metadata !633), !dbg !828
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !580, metadata !633), !dbg !828
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !580, metadata !633), !dbg !828
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !580, metadata !633), !dbg !828
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !580, metadata !633), !dbg !828
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !580, metadata !633), !dbg !828
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !580, metadata !633), !dbg !828
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !580, metadata !633), !dbg !828
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !580, metadata !633), !dbg !828
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !580, metadata !633), !dbg !828
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !580, metadata !633), !dbg !828
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !580, metadata !633), !dbg !828
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !580, metadata !633), !dbg !828
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !580, metadata !633), !dbg !828
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !580, metadata !633), !dbg !828
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !580, metadata !633), !dbg !828
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !580, metadata !633), !dbg !828
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !580, metadata !633), !dbg !828
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !580, metadata !633), !dbg !828
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !580, metadata !633), !dbg !828
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !580, metadata !633), !dbg !828
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !580, metadata !633), !dbg !828
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !580, metadata !633), !dbg !828
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !580, metadata !633), !dbg !828
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !580, metadata !633), !dbg !828
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !580, metadata !633), !dbg !828
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !580, metadata !633), !dbg !828
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !580, metadata !633), !dbg !828
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !580, metadata !633), !dbg !828
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !580, metadata !633), !dbg !828
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !580, metadata !633), !dbg !828
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !580, metadata !633), !dbg !828
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !580, metadata !633), !dbg !828
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !580, metadata !633), !dbg !828
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !580, metadata !633), !dbg !828
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !580, metadata !633), !dbg !828
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !580, metadata !633), !dbg !828
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !580, metadata !633), !dbg !828
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !580, metadata !633), !dbg !828
  ret void, !dbg !847
}

; Function Attrs: optsize
declare %struct.PGH* @PUGH_SetupPGH(i8*, i32, i32*, i32*, i32, i32*) #2

; Function Attrs: optsize
declare i32 @CCTK_StaggerVars() #2

; Function Attrs: optsize
declare i32 @CCTK_Warn(i32, i32, i8*, i8*, i8*) #2

; Function Attrs: nounwind optsize
declare noalias i8* @calloc(i64, i64) #3

; Function Attrs: optsize
declare i32 @CCTK_NumGroups() #2

; Function Attrs: optsize
declare i32 @CCTK_GroupData(i32, %struct.cGroup*) #2

; Function Attrs: optsize
declare i32** @CCTK_GroupSizesI(i32) #2

; Function Attrs: optsize
declare i32** @CCTK_GroupGhostsizesI(i32) #2

; Function Attrs: nounwind optsize
declare i8* @__memset_chk(i8*, i32, i64, i64) #3

; Function Attrs: nounwind readnone
declare i64 @llvm.objectsize.i64.p0i8(i8*, i1) #4

; Function Attrs: optsize
declare i32 @PUGH_SetupGroup(%struct.PGH*, i32*, i32*, i32, i32, i32, i32, i32, i32, i32) #2

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #3

; Function Attrs: nounwind optsize ssp uwtable
define i32 @PUGH_InitGH(%struct.cGH* %GH) #1 {
  tail call void @llvm.dbg.value(metadata %struct.cGH* %GH, i64 0, metadata !279, metadata !633), !dbg !848
  %1 = load i32* getelementptr inbounds (%struct.anon.0* @pughpriv_, i64 0, i32 12), align 4, !dbg !849, !tbaa !850
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !305, metadata !633), !dbg !849
  tail call fastcc void @PUGH_InitGHBasics(%struct.cGH* %GH) #7, !dbg !852
  %2 = icmp eq i32 %1, 0, !dbg !853
  br i1 %2, label %.loopexit, label %.preheader, !dbg !855

.preheader:                                       ; preds = %0
  %3 = tail call i32 @CCTK_NumGroups() #6, !dbg !856
  %4 = icmp sgt i32 %3, 0, !dbg !860
  br i1 %4, label %.lr.ph, label %.loopexit, !dbg !861

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %i.01 = phi i32 [ %8, %.lr.ph ], [ 0, %.preheader ]
  %5 = load i32 (%struct.cGH*, i8*)** @CCTK_EnableGroupStorage, align 8, !dbg !862, !tbaa !716
  %6 = tail call i8* @CCTK_GroupName(i32 %i.01) #6, !dbg !864
  %7 = tail call i32 %5(%struct.cGH* %GH, i8* %6) #6, !dbg !862
  %8 = add nuw nsw i32 %i.01, 1, !dbg !865
  tail call void @llvm.dbg.value(metadata i32 %8, i64 0, metadata !280, metadata !633), !dbg !866
  %9 = tail call i32 @CCTK_NumGroups() #6, !dbg !856
  %10 = icmp slt i32 %8, %9, !dbg !860
  br i1 %10, label %.lr.ph, label %.loopexit, !dbg !861

.loopexit:                                        ; preds = %.lr.ph, %.preheader, %0
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !342, metadata !633), !dbg !849
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !342, metadata !633), !dbg !849
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !342, metadata !633), !dbg !849
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !342, metadata !633), !dbg !849
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !342, metadata !633), !dbg !849
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !342, metadata !633), !dbg !849
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !342, metadata !633), !dbg !849
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !342, metadata !633), !dbg !849
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !342, metadata !633), !dbg !849
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !342, metadata !633), !dbg !849
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !342, metadata !633), !dbg !849
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !342, metadata !633), !dbg !849
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !342, metadata !633), !dbg !849
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !342, metadata !633), !dbg !849
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !342, metadata !633), !dbg !849
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !342, metadata !633), !dbg !849
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !342, metadata !633), !dbg !849
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !342, metadata !633), !dbg !849
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !342, metadata !633), !dbg !849
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !342, metadata !633), !dbg !849
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !342, metadata !633), !dbg !849
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !342, metadata !633), !dbg !849
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !342, metadata !633), !dbg !849
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !342, metadata !633), !dbg !849
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !342, metadata !633), !dbg !849
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !342, metadata !633), !dbg !849
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !342, metadata !633), !dbg !849
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !342, metadata !633), !dbg !849
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !342, metadata !633), !dbg !849
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !342, metadata !633), !dbg !849
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !342, metadata !633), !dbg !849
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !342, metadata !633), !dbg !849
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !342, metadata !633), !dbg !849
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !342, metadata !633), !dbg !849
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !342, metadata !633), !dbg !849
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !342, metadata !633), !dbg !849
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !342, metadata !633), !dbg !849
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !342, metadata !633), !dbg !849
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !342, metadata !633), !dbg !849
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !342, metadata !633), !dbg !849
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !342, metadata !633), !dbg !849
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !342, metadata !633), !dbg !849
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !342, metadata !633), !dbg !849
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !342, metadata !633), !dbg !849
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !342, metadata !633), !dbg !849
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !342, metadata !633), !dbg !849
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !342, metadata !633), !dbg !849
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !342, metadata !633), !dbg !849
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !342, metadata !633), !dbg !849
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !342, metadata !633), !dbg !849
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !342, metadata !633), !dbg !849
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !342, metadata !633), !dbg !849
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !342, metadata !633), !dbg !849
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !342, metadata !633), !dbg !849
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !342, metadata !633), !dbg !849
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !342, metadata !633), !dbg !849
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !342, metadata !633), !dbg !849
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !342, metadata !633), !dbg !849
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !342, metadata !633), !dbg !849
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !342, metadata !633), !dbg !849
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !342, metadata !633), !dbg !849
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !342, metadata !633), !dbg !849
  ret i32 0, !dbg !867
}

; Function Attrs: nounwind optsize ssp uwtable
define internal fastcc void @PUGH_InitGHBasics(%struct.cGH* %GH) #1 {
  tail call void @llvm.dbg.value(metadata %struct.cGH* %GH, i64 0, metadata !612, metadata !633), !dbg !868
  %1 = tail call %struct.PGH* @PUGH_pGH(%struct.cGH* %GH) #6, !dbg !869
  tail call void @llvm.dbg.value(metadata %struct.PGH* %1, i64 0, metadata !615, metadata !633), !dbg !870
  %2 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 0, !dbg !871
  %3 = load i32* %2, align 4, !dbg !871, !tbaa !873
  %4 = icmp sgt i32 %3, 0, !dbg !875
  br i1 %4, label %.lr.ph, label %5, !dbg !876

; <label>:5                                       ; preds = %0
  %6 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 14, !dbg !877
  store i32 0, i32* %6, align 4, !dbg !878, !tbaa !879
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !613, metadata !633), !dbg !880
  br label %._crit_edge

.lr.ph:                                           ; preds = %0
  %7 = add nsw i32 %3, -1, !dbg !881
  %8 = sext i32 %7 to i64, !dbg !883
  %9 = getelementptr inbounds %struct.PGH* %1, i64 0, i32 21, !dbg !884
  %10 = load %struct.PGExtras*** %9, align 8, !dbg !884, !tbaa !885
  %11 = getelementptr inbounds %struct.PGExtras** %10, i64 %8, !dbg !883
  %12 = load %struct.PGExtras** %11, align 8, !dbg !883, !tbaa !716
  tail call void @llvm.dbg.value(metadata %struct.PGExtras* %12, i64 0, metadata !616, metadata !633), !dbg !886
  %13 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 14, !dbg !877
  store i32 0, i32* %13, align 4, !dbg !878, !tbaa !879
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !613, metadata !633), !dbg !880
  %14 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 13, !dbg !887
  %15 = load i32** %14, align 8, !dbg !887, !tbaa !891
  %16 = getelementptr inbounds %struct.PGExtras* %12, i64 0, i32 12, !dbg !892
  %17 = load i32** %16, align 8, !dbg !892, !tbaa !893
  %18 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 15, !dbg !895
  %19 = load i32** %18, align 8, !dbg !895, !tbaa !896
  %20 = getelementptr inbounds %struct.PGExtras* %12, i64 0, i32 6, !dbg !897
  %21 = load i32** %20, align 8, !dbg !897, !tbaa !898
  %22 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 3, !dbg !899
  %23 = load i32** %22, align 8, !dbg !899, !tbaa !900
  %24 = getelementptr inbounds %struct.PGExtras* %12, i64 0, i32 1, !dbg !901
  %25 = load i32** %24, align 8, !dbg !901, !tbaa !902
  %26 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 2, !dbg !903
  %27 = load i32** %26, align 8, !dbg !903, !tbaa !904
  %28 = getelementptr inbounds %struct.PGExtras* %12, i64 0, i32 5, !dbg !905
  %29 = load i32** %28, align 8, !dbg !905, !tbaa !906
  %30 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 12, !dbg !907
  %31 = load i32** %30, align 8, !dbg !907, !tbaa !908
  %32 = getelementptr inbounds %struct.PGH* %1, i64 0, i32 3, !dbg !909
  %33 = getelementptr inbounds %struct.PGExtras* %12, i64 0, i32 3, !dbg !910
  %34 = load i32*** %33, align 8, !dbg !910, !tbaa !911
  %35 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 4, !dbg !912
  %36 = load i32** %35, align 8, !dbg !912, !tbaa !913
  %37 = getelementptr inbounds %struct.PGExtras* %12, i64 0, i32 4, !dbg !914
  %38 = load i32*** %37, align 8, !dbg !914, !tbaa !915
  %39 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 5, !dbg !916
  %40 = load i32** %39, align 8, !dbg !916, !tbaa !917
  %41 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 6, !dbg !918
  %42 = load i32** %41, align 8, !dbg !918, !tbaa !922
  br label %43, !dbg !923

; <label>:43                                      ; preds = %.lr.ph, %90
  %indvars.iv4 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next5, %90 ]
  %44 = getelementptr inbounds i32* %15, i64 %indvars.iv4, !dbg !924
  store i32 1, i32* %44, align 4, !dbg !925, !tbaa !718
  %45 = getelementptr inbounds i32* %17, i64 %indvars.iv4, !dbg !926
  %46 = load i32* %45, align 4, !dbg !926, !tbaa !718
  %47 = getelementptr inbounds i32* %19, i64 %indvars.iv4, !dbg !927
  store i32 %46, i32* %47, align 4, !dbg !928, !tbaa !718
  %48 = getelementptr inbounds i32* %21, i64 %indvars.iv4, !dbg !929
  %49 = load i32* %48, align 4, !dbg !929, !tbaa !718
  %50 = getelementptr inbounds i32* %23, i64 %indvars.iv4, !dbg !930
  store i32 %49, i32* %50, align 4, !dbg !931, !tbaa !718
  %51 = getelementptr inbounds i32* %25, i64 %indvars.iv4, !dbg !932
  %52 = load i32* %51, align 4, !dbg !932, !tbaa !718
  %53 = getelementptr inbounds i32* %27, i64 %indvars.iv4, !dbg !933
  store i32 %52, i32* %53, align 4, !dbg !934, !tbaa !718
  %54 = trunc i64 %indvars.iv4 to i32, !dbg !935
  %55 = shl nsw i32 %54, 1, !dbg !935
  %56 = sext i32 %55 to i64, !dbg !936
  %57 = getelementptr inbounds i32* %29, i64 %56, !dbg !936
  %58 = load i32* %57, align 4, !dbg !936, !tbaa !718
  %59 = getelementptr inbounds i32* %31, i64 %56, !dbg !937
  store i32 %58, i32* %59, align 4, !dbg !938, !tbaa !718
  %60 = or i32 %55, 1, !dbg !939
  %61 = sext i32 %60 to i64, !dbg !940
  %62 = getelementptr inbounds i32* %29, i64 %61, !dbg !940
  %63 = load i32* %62, align 4, !dbg !940, !tbaa !718
  %64 = getelementptr inbounds i32* %31, i64 %61, !dbg !941
  store i32 %63, i32* %64, align 4, !dbg !942, !tbaa !718
  %65 = load i32* %32, align 4, !dbg !909, !tbaa !943
  %66 = sext i32 %65 to i64, !dbg !944
  %67 = getelementptr inbounds i32** %34, i64 %66, !dbg !944
  %68 = load i32** %67, align 8, !dbg !944, !tbaa !716
  %69 = getelementptr inbounds i32* %68, i64 %indvars.iv4, !dbg !944
  %70 = load i32* %69, align 4, !dbg !944, !tbaa !718
  %71 = getelementptr inbounds i32* %36, i64 %indvars.iv4, !dbg !945
  store i32 %70, i32* %71, align 4, !dbg !946, !tbaa !718
  %72 = load i32* %32, align 4, !dbg !947, !tbaa !943
  %73 = sext i32 %72 to i64, !dbg !948
  %74 = getelementptr inbounds i32** %38, i64 %73, !dbg !948
  %75 = load i32** %74, align 8, !dbg !948, !tbaa !716
  %76 = getelementptr inbounds i32* %75, i64 %indvars.iv4, !dbg !948
  %77 = load i32* %76, align 4, !dbg !948, !tbaa !718
  %78 = getelementptr inbounds i32* %40, i64 %indvars.iv4, !dbg !949
  store i32 %77, i32* %78, align 4, !dbg !950, !tbaa !718
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !614, metadata !633), !dbg !951
  %79 = mul nsw i64 %indvars.iv4, 3, !dbg !952
  br label %80, !dbg !953

; <label>:80                                      ; preds = %89, %43
  %indvars.iv = phi i64 [ 0, %43 ], [ %indvars.iv.next, %89 ]
  %81 = load i32* %50, align 4, !dbg !954, !tbaa !718
  %82 = add nsw i64 %indvars.iv, %79, !dbg !952
  %83 = getelementptr inbounds i32* %42, i64 %82, !dbg !955
  store i32 %81, i32* %83, align 4, !dbg !956, !tbaa !718
  %84 = load i32* %64, align 4, !dbg !957, !tbaa !718
  %85 = icmp eq i32 %84, 1, !dbg !959
  %86 = icmp sgt i64 %indvars.iv, 0, !dbg !960
  %or.cond = and i1 %86, %85, !dbg !961
  br i1 %or.cond, label %87, label %89, !dbg !961

; <label>:87                                      ; preds = %80
  %88 = add nsw i32 %81, -1, !dbg !962
  store i32 %88, i32* %83, align 4, !dbg !962, !tbaa !718
  br label %89, !dbg !964

; <label>:89                                      ; preds = %80, %87
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !953
  %exitcond = icmp eq i64 %indvars.iv.next, 3, !dbg !953
  br i1 %exitcond, label %90, label %80, !dbg !953

; <label>:90                                      ; preds = %89
  %indvars.iv.next5 = add nuw nsw i64 %indvars.iv4, 1, !dbg !923
  %91 = load i32* %2, align 4, !dbg !965, !tbaa !873
  %92 = sext i32 %91 to i64, !dbg !966
  %93 = icmp slt i64 %indvars.iv.next5, %92, !dbg !966
  br i1 %93, label %43, label %._crit_edge, !dbg !923

._crit_edge:                                      ; preds = %90, %5
  ret void, !dbg !967
}

; Function Attrs: optsize
declare i8* @CCTK_GroupName(i32) #2

; Function Attrs: nounwind optsize ssp uwtable
define i32 @PUGH_ScheduleTraverseGH(%struct.cGH* %GH, i8* %where) #1 {
  tail call void @llvm.dbg.value(metadata %struct.cGH* %GH, i64 0, metadata !347, metadata !633), !dbg !968
  tail call void @llvm.dbg.value(metadata i8* %where, i64 0, metadata !348, metadata !633), !dbg !969
  %1 = tail call i32 @strcmp(i8* getelementptr inbounds ([14 x i8]* @.str3, i64 0, i64 0), i8* %where) #6, !dbg !970
  %2 = icmp eq i32 %1, 0, !dbg !970
  br i1 %2, label %PUGH_InitGHVariables.exit, label %3, !dbg !972

; <label>:3                                       ; preds = %0
  tail call fastcc void @PUGH_InitGHBasics(%struct.cGH* %GH) #7, !dbg !973
  tail call void @llvm.dbg.value(metadata %struct.cGH* %GH, i64 0, metadata !619, metadata !633) #8, !dbg !975
  %4 = tail call %struct.PGH* @PUGH_pGH(%struct.cGH* %GH) #6, !dbg !977
  tail call void @llvm.dbg.value(metadata %struct.PGH* %4, i64 0, metadata !624, metadata !633) #8, !dbg !978
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !620, metadata !633) #8, !dbg !979
  %5 = getelementptr inbounds %struct.PGH* %4, i64 0, i32 5, !dbg !980
  %6 = load i32* %5, align 4, !dbg !980, !tbaa !983
  %7 = icmp sgt i32 %6, 0, !dbg !984
  br i1 %7, label %.lr.ph5.i, label %PUGH_InitGHVariables.exit, !dbg !985

.lr.ph5.i:                                        ; preds = %3
  %8 = getelementptr inbounds %struct.PGH* %4, i64 0, i32 7, !dbg !986
  %9 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17, !dbg !992
  br label %10, !dbg !985

; <label>:10                                      ; preds = %._crit_edge.i, %.lr.ph5.i
  %indvars.iv7.i = phi i64 [ 0, %.lr.ph5.i ], [ %indvars.iv.next8.i, %._crit_edge.i ], !dbg !993
  %11 = trunc i64 %indvars.iv7.i to i32, !dbg !994
  %12 = tail call i32 @CCTK_GroupTypeFromVarI(i32 %11) #6, !dbg !994
  tail call void @llvm.dbg.value(metadata i32 %12, i64 0, metadata !621, metadata !633) #8, !dbg !995
  %13 = tail call i32 @CCTK_NumTimeLevelsFromVarI(i32 %11) #6, !dbg !996
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !623, metadata !633) #8, !dbg !997
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !622, metadata !633) #8, !dbg !998
  %14 = icmp sgt i32 %13, 0, !dbg !999
  br i1 %14, label %.lr.ph.i, label %._crit_edge.i, !dbg !1000

.lr.ph.i:                                         ; preds = %10
  %15 = add i32 %13, -1, !dbg !1000
  br label %16, !dbg !1000

; <label>:16                                      ; preds = %46, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %46 ], !dbg !993
  switch i32 %12, label %44 [
    i32 1, label %17
    i32 2, label %29
    i32 3, label %29
  ], !dbg !1001

; <label>:17                                      ; preds = %16
  %18 = load i8**** %8, align 8, !dbg !986, !tbaa !1002
  %19 = getelementptr inbounds i8*** %18, i64 %indvars.iv7.i, !dbg !1003
  %20 = load i8*** %19, align 8, !dbg !1003, !tbaa !716
  %21 = getelementptr inbounds i8** %20, i64 %indvars.iv.i, !dbg !1003
  %22 = bitcast i8** %21 to i64*, !dbg !1003
  %23 = load i64* %22, align 8, !dbg !1003, !tbaa !716
  %24 = load i8**** %9, align 8, !dbg !992, !tbaa !1004
  %25 = getelementptr inbounds i8*** %24, i64 %indvars.iv7.i, !dbg !1005
  %26 = load i8*** %25, align 8, !dbg !1005, !tbaa !716
  %27 = getelementptr inbounds i8** %26, i64 %indvars.iv.i, !dbg !1005
  %28 = bitcast i8** %27 to i64*, !dbg !1006
  store i64 %23, i64* %28, align 8, !dbg !1006, !tbaa !716
  br label %46, !dbg !1007

; <label>:29                                      ; preds = %16, %16
  %30 = load i8**** %8, align 8, !dbg !1008, !tbaa !1002
  %31 = getelementptr inbounds i8*** %30, i64 %indvars.iv7.i, !dbg !1009
  %32 = load i8*** %31, align 8, !dbg !1009, !tbaa !716
  %33 = getelementptr inbounds i8** %32, i64 %indvars.iv.i, !dbg !1009
  %34 = bitcast i8** %33 to %struct.PGA**, !dbg !1009
  %35 = load %struct.PGA** %34, align 8, !dbg !1009, !tbaa !716
  %36 = getelementptr inbounds %struct.PGA* %35, i64 0, i32 4, !dbg !1010
  %37 = bitcast i8** %36 to i64*, !dbg !1010
  %38 = load i64* %37, align 8, !dbg !1010, !tbaa !1011
  %39 = load i8**** %9, align 8, !dbg !1013, !tbaa !1004
  %40 = getelementptr inbounds i8*** %39, i64 %indvars.iv7.i, !dbg !1014
  %41 = load i8*** %40, align 8, !dbg !1014, !tbaa !716
  %42 = getelementptr inbounds i8** %41, i64 %indvars.iv.i, !dbg !1014
  %43 = bitcast i8** %42 to i64*, !dbg !1015
  store i64 %38, i64* %43, align 8, !dbg !1015, !tbaa !716
  br label %46, !dbg !1016

; <label>:44                                      ; preds = %16
  %45 = tail call i32 @CCTK_Warn(i32 1, i32 266, i8* getelementptr inbounds ([78 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([41 x i8]* @.str10, i64 0, i64 0)) #6, !dbg !1017
  br label %46, !dbg !1018

; <label>:46                                      ; preds = %44, %29, %17
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1, !dbg !1000
  %lftr.wideiv = trunc i64 %indvars.iv.i to i32, !dbg !1000
  %exitcond = icmp eq i32 %lftr.wideiv, %15, !dbg !1000
  br i1 %exitcond, label %._crit_edge.i, label %16, !dbg !1000

._crit_edge.i:                                    ; preds = %46, %10
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1, !dbg !985
  %47 = load i32* %5, align 4, !dbg !980, !tbaa !983
  %48 = sext i32 %47 to i64, !dbg !984
  %49 = icmp slt i64 %indvars.iv.next8.i, %48, !dbg !984
  br i1 %49, label %10, label %PUGH_InitGHVariables.exit, !dbg !985

PUGH_InitGHVariables.exit:                        ; preds = %._crit_edge.i, %3, %0
  %50 = bitcast %struct.cGH* %GH to i8*, !dbg !1019
  %51 = load i32 (i8*, %struct.cFunctionData*, i8*)** @PUGHCallFunc, align 8, !dbg !1020, !tbaa !716
  %52 = tail call i32 @CCTK_ScheduleTraverse(i8* %where, i8* %50, i32 (i8*, %struct.cFunctionData*, i8*)* %51) #6, !dbg !1021
  tail call void @llvm.dbg.value(metadata i32 %52, i64 0, metadata !349, metadata !633), !dbg !1022
  ret i32 %52, !dbg !1023
}

; Function Attrs: nounwind optsize readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) #5

; Function Attrs: optsize
declare i32 @CCTK_ScheduleTraverse(i8*, i8*, i32 (i8*, %struct.cFunctionData*, i8*)*) #2

; Function Attrs: nounwind optsize ssp uwtable
define void @PUGH_RegisterCallFunc(i32 (i8*, %struct.cFunctionData*, i8*)* %func) #1 {
  tail call void @llvm.dbg.value(metadata i32 (i8*, %struct.cFunctionData*, i8*)* %func, i64 0, metadata !377, metadata !633), !dbg !1024
  store i32 (i8*, %struct.cFunctionData*, i8*)* %func, i32 (i8*, %struct.cFunctionData*, i8*)** @PUGHCallFunc, align 8, !dbg !1025, !tbaa !716
  ret void, !dbg !1026
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @PUGH_PrintTimingInfo(%struct.cGH* %GH) #1 {
  tail call void @llvm.dbg.value(metadata %struct.cGH* %GH, i64 0, metadata !583, metadata !633), !dbg !1027
  %1 = tail call %struct.PGH* @PUGH_pGH(%struct.cGH* %GH) #6, !dbg !1028
  tail call void @llvm.dbg.value(metadata %struct.PGH* %1, i64 0, metadata !607, metadata !633), !dbg !1029
  %2 = getelementptr inbounds %struct.PGH* %1, i64 0, i32 20, !dbg !1030
  %3 = load i32* %2, align 4, !dbg !1030, !tbaa !1032
  %4 = icmp slt i32 %3, 0, !dbg !1033
  br i1 %4, label %56, label %5, !dbg !1034

; <label>:5                                       ; preds = %0
  %6 = tail call %struct.cTimerData* @CCTK_TimerCreateData() #6, !dbg !1035
  tail call void @llvm.dbg.value(metadata %struct.cTimerData* %6, i64 0, metadata !585, metadata !633), !dbg !1036
  %7 = icmp eq %struct.cTimerData* %6, null, !dbg !1037
  br i1 %7, label %54, label %8, !dbg !1039

; <label>:8                                       ; preds = %5
  %9 = tail call i32 @CCTK_Info(i8* getelementptr inbounds ([5 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([37 x i8]* @.str4, i64 0, i64 0)) #6, !dbg !1040
  %10 = load i32* %2, align 4, !dbg !1042, !tbaa !1032
  %11 = tail call i32 @CCTK_TimerI(i32 %10, %struct.cTimerData* %6) #6, !dbg !1043
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !584, metadata !633), !dbg !1044
  %12 = getelementptr inbounds %struct.cTimerData* %6, i64 0, i32 0, !dbg !1045
  %13 = load i32* %12, align 4, !dbg !1045, !tbaa !1048
  %14 = icmp sgt i32 %13, 0, !dbg !1050
  br i1 %14, label %.lr.ph, label %._crit_edge, !dbg !1051

.lr.ph:                                           ; preds = %8
  %15 = getelementptr inbounds %struct.cTimerData* %6, i64 0, i32 1, !dbg !1052
  br label %16, !dbg !1051

; <label>:16                                      ; preds = %.lr.ph, %49
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %49 ]
  %17 = load %struct.cTimerVal** %15, align 8, !dbg !1052, !tbaa !1054
  %18 = getelementptr inbounds %struct.cTimerVal* %17, i64 %indvars.iv, i32 0, !dbg !1055
  %19 = load i32* %18, align 4, !dbg !1055, !tbaa !1056
  switch i32 %19, label %47 [
    i32 1, label %20
    i32 2, label %29
    i32 3, label %38
  ], !dbg !1058

; <label>:20                                      ; preds = %16
  %21 = getelementptr inbounds %struct.cTimerVal* %17, i64 %indvars.iv, i32 1, !dbg !1059
  %22 = load i8** %21, align 8, !dbg !1059, !tbaa !1061
  %23 = getelementptr inbounds %struct.cTimerVal* %17, i64 %indvars.iv, i32 3, !dbg !1062
  %24 = bitcast %union.anon* %23 to i32*, !dbg !1063
  %25 = load i32* %24, align 4, !dbg !1063, !tbaa !718
  %26 = getelementptr inbounds %struct.cTimerVal* %17, i64 %indvars.iv, i32 2, !dbg !1064
  %27 = load i8** %26, align 8, !dbg !1064, !tbaa !1065
  %28 = tail call i32 (i8*, i8*, ...)* @CCTK_VInfo(i8* getelementptr inbounds ([5 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8]* @.str5, i64 0, i64 0), i8* %22, i32 %25, i8* %27) #6, !dbg !1066
  br label %49, !dbg !1067

; <label>:29                                      ; preds = %16
  %30 = getelementptr inbounds %struct.cTimerVal* %17, i64 %indvars.iv, i32 1, !dbg !1068
  %31 = load i8** %30, align 8, !dbg !1068, !tbaa !1061
  %32 = getelementptr inbounds %struct.cTimerVal* %17, i64 %indvars.iv, i32 3, i32 0, !dbg !1069
  %33 = load i64* %32, align 8, !dbg !1069, !tbaa !1070
  %34 = trunc i64 %33 to i32, !dbg !1072
  %35 = getelementptr inbounds %struct.cTimerVal* %17, i64 %indvars.iv, i32 2, !dbg !1073
  %36 = load i8** %35, align 8, !dbg !1073, !tbaa !1065
  %37 = tail call i32 (i8*, i8*, ...)* @CCTK_VInfo(i8* getelementptr inbounds ([5 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8]* @.str5, i64 0, i64 0), i8* %31, i32 %34, i8* %36) #6, !dbg !1074
  br label %49, !dbg !1075

; <label>:38                                      ; preds = %16
  %39 = getelementptr inbounds %struct.cTimerVal* %17, i64 %indvars.iv, i32 1, !dbg !1076
  %40 = load i8** %39, align 8, !dbg !1076, !tbaa !1061
  %41 = getelementptr inbounds %struct.cTimerVal* %17, i64 %indvars.iv, i32 3, !dbg !1077
  %42 = bitcast %union.anon* %41 to double*, !dbg !1078
  %43 = load double* %42, align 8, !dbg !1078, !tbaa !1079
  %44 = getelementptr inbounds %struct.cTimerVal* %17, i64 %indvars.iv, i32 2, !dbg !1080
  %45 = load i8** %44, align 8, !dbg !1080, !tbaa !1065
  %46 = tail call i32 (i8*, i8*, ...)* @CCTK_VInfo(i8* getelementptr inbounds ([5 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8]* @.str6, i64 0, i64 0), i8* %40, double %43, i8* %45) #6, !dbg !1081
  br label %49, !dbg !1082

; <label>:47                                      ; preds = %16
  %48 = tail call i32 @CCTK_Warn(i32 1, i32 561, i8* getelementptr inbounds ([78 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([33 x i8]* @.str7, i64 0, i64 0)) #6, !dbg !1083
  br label %49, !dbg !1084

; <label>:49                                      ; preds = %20, %29, %38, %47
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !1051
  %50 = load i32* %12, align 4, !dbg !1045, !tbaa !1048
  %51 = sext i32 %50 to i64, !dbg !1050
  %52 = icmp slt i64 %indvars.iv.next, %51, !dbg !1050
  br i1 %52, label %16, label %._crit_edge, !dbg !1051

._crit_edge:                                      ; preds = %49, %8
  %53 = tail call i32 @CCTK_TimerDestroyData(%struct.cTimerData* %6) #6, !dbg !1085
  br label %56, !dbg !1086

; <label>:54                                      ; preds = %5
  %55 = tail call i32 @CCTK_Warn(i32 1, i32 571, i8* getelementptr inbounds ([78 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([67 x i8]* @.str8, i64 0, i64 0)) #6, !dbg !1087
  br label %56

; <label>:56                                      ; preds = %._crit_edge, %54, %0
  ret i32 0, !dbg !1089
}

; Function Attrs: optsize
declare %struct.PGH* @PUGH_pGH(%struct.cGH*) #2

; Function Attrs: optsize
declare %struct.cTimerData* @CCTK_TimerCreateData() #2

; Function Attrs: optsize
declare i32 @CCTK_Info(i8*, i8*) #2

; Function Attrs: optsize
declare i32 @CCTK_TimerI(i32, %struct.cTimerData*) #2

; Function Attrs: optsize
declare i32 @CCTK_VInfo(i8*, i8*, ...) #2

; Function Attrs: optsize
declare i32 @CCTK_TimerDestroyData(%struct.cTimerData*) #2

; Function Attrs: optsize
declare i32 @CCTK_GroupTypeFromVarI(i32) #2

; Function Attrs: optsize
declare i32 @CCTK_NumTimeLevelsFromVarI(i32) #2

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #4

attributes #0 = { nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind optsize }
attributes #7 = { optsize }
attributes #8 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!628, !629, !630}
!llvm.ident = !{!631}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !21, subprograms: !98, globals: !625, imports: !104)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/PUGH/GHExtension.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{!3, !9, !14}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 14, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/PUGH/../include/cctk_Schedule.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!5 = !{!6, !7, !8}
!6 = !DIEnumerator(name: "LangNone", value: 0)
!7 = !DIEnumerator(name: "LangC", value: 1)
!8 = !DIEnumerator(name: "LangFortran", value: 2)
!9 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 16, size: 32, align: 32, elements: !10)
!10 = !{!11, !12, !13}
!11 = !DIEnumerator(name: "FunctionNoArgs", value: 0)
!12 = !DIEnumerator(name: "FunctionOneArg", value: 1)
!13 = !DIEnumerator(name: "FunctionStandard", value: 2)
!14 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !15, line: 16, size: 32, align: 32, elements: !16)
!15 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/PUGH/../include/cctk_Timers.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!16 = !{!17, !18, !19, !20}
!17 = !DIEnumerator(name: "val_none", value: 0)
!18 = !DIEnumerator(name: "val_int", value: 1)
!19 = !DIEnumerator(name: "val_long", value: 2)
!20 = !DIEnumerator(name: "val_double", value: 3)
!21 = !{!22, !24, !23, !26}
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64, align: 64)
!23 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64, align: 64)
!25 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64, align: 64)
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "pGA", file: !28, line: 126, baseType: !29)
!28 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/PUGH/../include/pGV.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!29 = !DICompositeType(tag: DW_TAG_structure_type, name: "PGA", file: !28, line: 96, size: 832, align: 64, elements: !30)
!30 = !{!31, !32, !33, !34, !36, !37, !38, !39, !40, !41, !42, !70, !79, !93, !94, !95, !96}
!31 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !29, file: !28, line: 98, baseType: !24, size: 64, align: 64)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !29, file: !28, line: 99, baseType: !23, size: 32, align: 32, offset: 64)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "arrayid", scope: !29, file: !28, line: 100, baseType: !23, size: 32, align: 32, offset: 96)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "padddata", scope: !29, file: !28, line: 101, baseType: !35, size: 64, align: 64, offset: 128)
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !29, file: !28, line: 102, baseType: !35, size: 64, align: 64, offset: 192)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "storage", scope: !29, file: !28, line: 103, baseType: !23, size: 32, align: 32, offset: 256)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "stagger", scope: !29, file: !28, line: 104, baseType: !23, size: 32, align: 32, offset: 288)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !29, file: !28, line: 106, baseType: !35, size: 64, align: 64, offset: 320)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "varsize", scope: !29, file: !28, line: 114, baseType: !23, size: 32, align: 32, offset: 384)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "vtype", scope: !29, file: !28, line: 115, baseType: !23, size: 32, align: 32, offset: 416)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "extras", scope: !29, file: !28, line: 117, baseType: !43, size: 64, align: 64, offset: 448)
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64, align: 64)
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "pGExtras", file: !28, line: 72, baseType: !45)
!45 = !DICompositeType(tag: DW_TAG_structure_type, name: "PGExtras", file: !28, line: 37, size: 2368, align: 64, elements: !46)
!46 = !{!47, !48, !49, !51, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !67, !69}
!47 = !DIDerivedType(tag: DW_TAG_member, name: "dim", scope: !45, file: !28, line: 39, baseType: !23, size: 32, align: 32)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "nsize", scope: !45, file: !28, line: 41, baseType: !22, size: 64, align: 64, offset: 64)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "maxskew", scope: !45, file: !28, line: 44, baseType: !50, size: 64, align: 64, offset: 128)
!50 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "lb", scope: !45, file: !28, line: 45, baseType: !52, size: 64, align: 64, offset: 192)
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64, align: 64)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "ub", scope: !45, file: !28, line: 46, baseType: !52, size: 64, align: 64, offset: 256)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "bbox", scope: !45, file: !28, line: 47, baseType: !22, size: 64, align: 64, offset: 320)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "lnsize", scope: !45, file: !28, line: 49, baseType: !22, size: 64, align: 64, offset: 384)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "npoints", scope: !45, file: !28, line: 50, baseType: !23, size: 32, align: 32, offset: 448)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "rnpoints", scope: !45, file: !28, line: 51, baseType: !22, size: 64, align: 64, offset: 512)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "rnsize", scope: !45, file: !28, line: 52, baseType: !52, size: 64, align: 64, offset: 576)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "iterator", scope: !45, file: !28, line: 55, baseType: !22, size: 64, align: 64, offset: 640)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "hyper_volume", scope: !45, file: !28, line: 56, baseType: !22, size: 64, align: 64, offset: 704)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "nghostzones", scope: !45, file: !28, line: 59, baseType: !22, size: 64, align: 64, offset: 768)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "ownership", scope: !45, file: !28, line: 60, baseType: !63, size: 512, align: 64, offset: 832)
!63 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 512, align: 64, elements: !64)
!64 = !{!65, !66}
!65 = !DISubrange(count: 4)
!66 = !DISubrange(count: 2)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "ghosts", scope: !45, file: !28, line: 64, baseType: !68, size: 512, align: 64, offset: 1344)
!68 = !DICompositeType(tag: DW_TAG_array_type, baseType: !52, size: 512, align: 64, elements: !64)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "overlap", scope: !45, file: !28, line: 68, baseType: !68, size: 512, align: 64, offset: 1856)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "connectivity", scope: !29, file: !28, line: 118, baseType: !71, size: 64, align: 64, offset: 512)
!71 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 64, align: 64)
!72 = !DIDerivedType(tag: DW_TAG_typedef, name: "pConnectivity", file: !28, line: 29, baseType: !73)
!73 = !DICompositeType(tag: DW_TAG_structure_type, name: "PConnectivity", file: !28, line: 23, size: 256, align: 64, elements: !74)
!74 = !{!75, !76, !77, !78}
!75 = !DIDerivedType(tag: DW_TAG_member, name: "dim", scope: !73, file: !28, line: 25, baseType: !23, size: 32, align: 32)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "nprocs", scope: !73, file: !28, line: 26, baseType: !22, size: 64, align: 64, offset: 64)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "neighbours", scope: !73, file: !28, line: 27, baseType: !52, size: 64, align: 64, offset: 128)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "perme", scope: !73, file: !28, line: 28, baseType: !22, size: 64, align: 64, offset: 192)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !29, file: !28, line: 120, baseType: !80, size: 64, align: 64, offset: 576)
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64, align: 64)
!81 = !DIDerivedType(tag: DW_TAG_typedef, name: "pComm", file: !28, line: 94, baseType: !82)
!82 = !DICompositeType(tag: DW_TAG_structure_type, name: "PComm", file: !28, line: 74, size: 448, align: 64, elements: !83)
!83 = !{!84, !85, !87, !88, !89, !90, !91, !92}
!84 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_sz", scope: !82, file: !28, line: 77, baseType: !22, size: 64, align: 64)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "send_buffer", scope: !82, file: !28, line: 78, baseType: !86, size: 64, align: 64, offset: 64)
!86 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64, align: 64)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "recv_buffer", scope: !82, file: !28, line: 79, baseType: !86, size: 64, align: 64, offset: 128)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "commflag", scope: !82, file: !28, line: 80, baseType: !23, size: 32, align: 32, offset: 192)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "docomm", scope: !82, file: !28, line: 82, baseType: !22, size: 64, align: 64, offset: 256)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "first_var", scope: !82, file: !28, line: 84, baseType: !23, size: 32, align: 32, offset: 320)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "n_vars", scope: !82, file: !28, line: 85, baseType: !23, size: 32, align: 32, offset: 352)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "sync_timelevel", scope: !82, file: !28, line: 86, baseType: !23, size: 32, align: 32, offset: 384)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "groupcomm", scope: !29, file: !28, line: 121, baseType: !80, size: 64, align: 64, offset: 640)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "vector_size", scope: !29, file: !28, line: 123, baseType: !23, size: 32, align: 32, offset: 704)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "vector_entry", scope: !29, file: !28, line: 124, baseType: !23, size: 32, align: 32, offset: 736)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "vector_base", scope: !29, file: !28, line: 125, baseType: !97, size: 64, align: 64, offset: 768)
!97 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64, align: 64)
!98 = !{!99, !105, !275, !343, !350, !378, !448, !515, !581, !608, !617}
!99 = !DISubprogram(name: "CCTKi_version_CactusPUGH_pugh_GHExtension_c", scope: !1, file: !1, line: 29, type: !100, isLocal: false, isDefinition: true, scopeLine: 29, flags: DIFlagPrototyped, isOptimized: true, function: i8* ()* @CCTKi_version_CactusPUGH_pugh_GHExtension_c, variables: !104)
!100 = !DISubroutineType(types: !101)
!101 = !{!102}
!102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 64, align: 64)
!103 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !25)
!104 = !{}
!105 = !DISubprogram(name: "PUGH_SetupGH", scope: !1, file: !1, line: 76, type: !106, isLocal: false, isDefinition: true, scopeLine: 79, flags: DIFlagPrototyped, isOptimized: true, function: i8* (%struct.tFleshConfig*, i32, %struct.cGH*)* @PUGH_SetupGH, variables: !151)
!106 = !DISubroutineType(types: !107)
!107 = !{!35, !108, !23, !116}
!108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64, align: 64)
!109 = !DIDerivedType(tag: DW_TAG_typedef, name: "tFleshConfig", file: !110, line: 28, baseType: !111)
!110 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/PUGH/../include/cctk_Flesh.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!111 = !DICompositeType(tag: DW_TAG_structure_type, file: !110, line: 19, size: 192, align: 64, elements: !112)
!112 = !{!113, !114, !149}
!113 = !DIDerivedType(tag: DW_TAG_member, name: "parameter_file_name", scope: !111, file: !110, line: 21, baseType: !24, size: 64, align: 64)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "GH", scope: !111, file: !110, line: 24, baseType: !115, size: 64, align: 64, offset: 64)
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64, align: 64)
!116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !117, size: 64, align: 64)
!117 = !DIDerivedType(tag: DW_TAG_typedef, name: "cGH", file: !118, line: 75, baseType: !119)
!118 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/PUGH/../include/cGH.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!119 = !DICompositeType(tag: DW_TAG_structure_type, file: !118, line: 24, size: 1216, align: 64, elements: !120)
!120 = !{!121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !133, !134, !135, !136, !137, !138, !139, !141, !142}
!121 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_dim", scope: !119, file: !118, line: 26, baseType: !23, size: 32, align: 32)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_iteration", scope: !119, file: !118, line: 27, baseType: !23, size: 32, align: 32, offset: 32)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_gsh", scope: !119, file: !118, line: 30, baseType: !22, size: 64, align: 64, offset: 64)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_lsh", scope: !119, file: !118, line: 31, baseType: !22, size: 64, align: 64, offset: 128)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_lbnd", scope: !119, file: !118, line: 32, baseType: !22, size: 64, align: 64, offset: 192)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_ubnd", scope: !119, file: !118, line: 33, baseType: !22, size: 64, align: 64, offset: 256)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_lssh", scope: !119, file: !118, line: 36, baseType: !22, size: 64, align: 64, offset: 320)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_to", scope: !119, file: !118, line: 39, baseType: !22, size: 64, align: 64, offset: 384)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_from", scope: !119, file: !118, line: 40, baseType: !22, size: 64, align: 64, offset: 448)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_delta_time", scope: !119, file: !118, line: 43, baseType: !50, size: 64, align: 64, offset: 512)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_delta_space", scope: !119, file: !118, line: 44, baseType: !132, size: 64, align: 64, offset: 576)
!132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64, align: 64)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_origin_space", scope: !119, file: !118, line: 47, baseType: !132, size: 64, align: 64, offset: 640)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_bbox", scope: !119, file: !118, line: 51, baseType: !22, size: 64, align: 64, offset: 704)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_levfac", scope: !119, file: !118, line: 54, baseType: !22, size: 64, align: 64, offset: 768)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_convlevel", scope: !119, file: !118, line: 57, baseType: !23, size: 32, align: 32, offset: 832)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_nghostzones", scope: !119, file: !118, line: 60, baseType: !22, size: 64, align: 64, offset: 896)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_time", scope: !119, file: !118, line: 63, baseType: !50, size: 64, align: 64, offset: 960)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !119, file: !118, line: 67, baseType: !140, size: 64, align: 64, offset: 1024)
!140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !86, size: 64, align: 64)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "extensions", scope: !119, file: !118, line: 70, baseType: !86, size: 64, align: 64, offset: 1088)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "GroupData", scope: !119, file: !118, line: 73, baseType: !143, size: 64, align: 64, offset: 1152)
!143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !144, size: 64, align: 64)
!144 = !DIDerivedType(tag: DW_TAG_typedef, name: "cGHGroupData", file: !118, line: 22, baseType: !145)
!145 = !DICompositeType(tag: DW_TAG_structure_type, file: !118, line: 18, size: 16, align: 8, elements: !146)
!146 = !{!147, !148}
!147 = !DIDerivedType(tag: DW_TAG_member, name: "storage", scope: !145, file: !118, line: 20, baseType: !25, size: 8, align: 8)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !145, file: !118, line: 21, baseType: !25, size: 8, align: 8, offset: 8)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "nGHs", scope: !111, file: !110, line: 25, baseType: !150, size: 32, align: 32, offset: 128)
!150 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!151 = !{!152, !153, !154, !155, !156, !157, !158, !190, !203, !204, !205, !206, !207, !208, !209, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !269, !270, !271, !272}
!152 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "config", arg: 1, scope: !105, file: !1, line: 76, type: !108)
!153 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "convergence_level", arg: 2, scope: !105, file: !1, line: 77, type: !23)
!154 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "GH", arg: 3, scope: !105, file: !1, line: 78, type: !116)
!155 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !105, file: !1, line: 80, type: !23)
!156 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "group", scope: !105, file: !1, line: 80, type: !23)
!157 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "maxdim", scope: !105, file: !1, line: 80, type: !23)
!158 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "newGH", scope: !105, file: !1, line: 81, type: !159)
!159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !160, size: 64, align: 64)
!160 = !DIDerivedType(tag: DW_TAG_typedef, name: "pGH", file: !161, line: 81, baseType: !162)
!161 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/PUGH/../include/pGH.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!162 = !DICompositeType(tag: DW_TAG_structure_type, name: "PGH", file: !161, line: 13, size: 1152, align: 64, elements: !163)
!163 = !{!164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !187, !189}
!164 = !DIDerivedType(tag: DW_TAG_member, name: "callerid", scope: !162, file: !161, line: 17, baseType: !35, size: 64, align: 64)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "dim", scope: !162, file: !161, line: 18, baseType: !23, size: 32, align: 32, offset: 64)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "nprocs", scope: !162, file: !161, line: 21, baseType: !23, size: 32, align: 32, offset: 96)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "myproc", scope: !162, file: !161, line: 22, baseType: !23, size: 32, align: 32, offset: 128)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "commmodel", scope: !162, file: !161, line: 23, baseType: !23, size: 32, align: 32, offset: 160)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "nvariables", scope: !162, file: !161, line: 27, baseType: !23, size: 32, align: 32, offset: 192)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "narrays", scope: !162, file: !161, line: 28, baseType: !23, size: 32, align: 32, offset: 224)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "variables", scope: !162, file: !161, line: 29, baseType: !140, size: 64, align: 64, offset: 256)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "timelevel", scope: !162, file: !161, line: 32, baseType: !23, size: 32, align: 32, offset: 320)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "perme", scope: !162, file: !161, line: 34, baseType: !22, size: 64, align: 64, offset: 384)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "periodic", scope: !162, file: !161, line: 35, baseType: !23, size: 32, align: 32, offset: 448)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "forceSync", scope: !162, file: !161, line: 37, baseType: !23, size: 32, align: 32, offset: 480)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "dx0", scope: !162, file: !161, line: 41, baseType: !50, size: 64, align: 64, offset: 512)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "dy0", scope: !162, file: !161, line: 41, baseType: !50, size: 64, align: 64, offset: 576)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "dz0", scope: !162, file: !161, line: 41, baseType: !50, size: 64, align: 64, offset: 640)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "dt0", scope: !162, file: !161, line: 41, baseType: !50, size: 64, align: 64, offset: 704)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !162, file: !161, line: 44, baseType: !23, size: 32, align: 32, offset: 768)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "mglevel", scope: !162, file: !161, line: 45, baseType: !23, size: 32, align: 32, offset: 800)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "convlevel", scope: !162, file: !161, line: 46, baseType: !23, size: 32, align: 32, offset: 832)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !162, file: !161, line: 49, baseType: !23, size: 32, align: 32, offset: 864)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "comm_time", scope: !162, file: !161, line: 53, baseType: !23, size: 32, align: 32, offset: 896)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "GFExtras", scope: !162, file: !161, line: 76, baseType: !186, size: 64, align: 64, offset: 960)
!186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64, align: 64)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "Connectivity", scope: !162, file: !161, line: 77, baseType: !188, size: 64, align: 64, offset: 1024)
!188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64, align: 64)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "identity_string", scope: !162, file: !161, line: 79, baseType: !24, size: 64, align: 64, offset: 1088)
!190 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "pgroup", scope: !105, file: !1, line: 82, type: !191)
!191 = !DIDerivedType(tag: DW_TAG_typedef, name: "cGroup", file: !192, line: 24, baseType: !193)
!192 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/PUGH/../include/cctk_Groups.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!193 = !DICompositeType(tag: DW_TAG_structure_type, file: !192, line: 14, size: 256, align: 32, elements: !194)
!194 = !{!195, !196, !197, !198, !199, !200, !201, !202}
!195 = !DIDerivedType(tag: DW_TAG_member, name: "grouptype", scope: !193, file: !192, line: 16, baseType: !23, size: 32, align: 32)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "vartype", scope: !193, file: !192, line: 17, baseType: !23, size: 32, align: 32, offset: 32)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "disttype", scope: !193, file: !192, line: 18, baseType: !23, size: 32, align: 32, offset: 64)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "stagtype", scope: !193, file: !192, line: 19, baseType: !23, size: 32, align: 32, offset: 96)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "dim", scope: !193, file: !192, line: 20, baseType: !23, size: 32, align: 32, offset: 128)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "numvars", scope: !193, file: !192, line: 21, baseType: !23, size: 32, align: 32, offset: 160)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "numtimelevels", scope: !193, file: !192, line: 22, baseType: !23, size: 32, align: 32, offset: 192)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "vectorgroup", scope: !193, file: !192, line: 23, baseType: !23, size: 32, align: 32, offset: 224)
!203 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "size", scope: !105, file: !1, line: 83, type: !52)
!204 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nsize", scope: !105, file: !1, line: 84, type: !22)
!205 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ghostsize", scope: !105, file: !1, line: 84, type: !22)
!206 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "perme", scope: !105, file: !1, line: 84, type: !22)
!207 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "groupghostsize", scope: !105, file: !1, line: 84, type: !22)
!208 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "groupsize", scope: !105, file: !1, line: 84, type: !22)
!209 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ghost_size", scope: !105, file: !1, line: 85, type: !210)
!210 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !23)
!211 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ghost_size_x", scope: !105, file: !1, line: 85, type: !210)
!212 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ghost_size_y", scope: !105, file: !1, line: 85, type: !210)
!213 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ghost_size_z", scope: !105, file: !1, line: 85, type: !210)
!214 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "global_nsize", scope: !105, file: !1, line: 85, type: !210)
!215 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "global_nx", scope: !105, file: !1, line: 85, type: !210)
!216 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "global_ny", scope: !105, file: !1, line: 85, type: !210)
!217 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "global_nz", scope: !105, file: !1, line: 85, type: !210)
!218 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "periodic", scope: !105, file: !1, line: 85, type: !210)
!219 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "periodic_x", scope: !105, file: !1, line: 85, type: !210)
!220 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "periodic_y", scope: !105, file: !1, line: 85, type: !210)
!221 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "periodic_z", scope: !105, file: !1, line: 85, type: !210)
!222 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "info", scope: !105, file: !1, line: 85, type: !102)
!223 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "initialize_memory", scope: !105, file: !1, line: 85, type: !102)
!224 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "partition", scope: !105, file: !1, line: 85, type: !102)
!225 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "partition_1d_x", scope: !105, file: !1, line: 85, type: !102)
!226 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "partition_2d_x", scope: !105, file: !1, line: 85, type: !102)
!227 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "partition_2d_y", scope: !105, file: !1, line: 85, type: !102)
!228 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "partition_3d_x", scope: !105, file: !1, line: 85, type: !102)
!229 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "partition_3d_y", scope: !105, file: !1, line: 85, type: !102)
!230 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "partition_3d_z", scope: !105, file: !1, line: 85, type: !102)
!231 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "processor_topology", scope: !105, file: !1, line: 85, type: !102)
!232 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "storage_verbose", scope: !105, file: !1, line: 85, type: !102)
!233 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cacheline_mult", scope: !105, file: !1, line: 85, type: !210)
!234 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "enable_all_storage", scope: !105, file: !1, line: 85, type: !210)
!235 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "local_nsize", scope: !105, file: !1, line: 85, type: !210)
!236 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "local_nx", scope: !105, file: !1, line: 85, type: !210)
!237 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "local_ny", scope: !105, file: !1, line: 85, type: !210)
!238 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "local_nz", scope: !105, file: !1, line: 85, type: !210)
!239 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "overloadabort", scope: !105, file: !1, line: 85, type: !210)
!240 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "overloadarraygroupsizeb", scope: !105, file: !1, line: 85, type: !210)
!241 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "overloadbarrier", scope: !105, file: !1, line: 85, type: !210)
!242 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "overloaddisablegroupcomm", scope: !105, file: !1, line: 85, type: !210)
!243 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "overloaddisablegroupstorage", scope: !105, file: !1, line: 85, type: !210)
!244 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "overloadenablegroupcomm", scope: !105, file: !1, line: 85, type: !210)
!245 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "overloadenablegroupstorage", scope: !105, file: !1, line: 85, type: !210)
!246 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "overloadevolve", scope: !105, file: !1, line: 85, type: !210)
!247 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "overloadexit", scope: !105, file: !1, line: 85, type: !210)
!248 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "overloadgroupdynamicdata", scope: !105, file: !1, line: 85, type: !210)
!249 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "overloadmyproc", scope: !105, file: !1, line: 85, type: !210)
!250 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "overloadnprocs", scope: !105, file: !1, line: 85, type: !210)
!251 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "overloadparallelinit", scope: !105, file: !1, line: 85, type: !210)
!252 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "overloadquerygroupstorageb", scope: !105, file: !1, line: 85, type: !210)
!253 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "overloadsyncgroup", scope: !105, file: !1, line: 85, type: !210)
!254 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "padding_active", scope: !105, file: !1, line: 85, type: !210)
!255 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "padding_address_spacing", scope: !105, file: !1, line: 85, type: !210)
!256 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "padding_cacheline_bits", scope: !105, file: !1, line: 85, type: !210)
!257 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "padding_size", scope: !105, file: !1, line: 85, type: !210)
!258 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "processor_topology_1d_x", scope: !105, file: !1, line: 85, type: !210)
!259 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "processor_topology_2d_x", scope: !105, file: !1, line: 85, type: !210)
!260 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "processor_topology_2d_y", scope: !105, file: !1, line: 85, type: !210)
!261 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "processor_topology_3d_x", scope: !105, file: !1, line: 85, type: !210)
!262 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "processor_topology_3d_y", scope: !105, file: !1, line: 85, type: !210)
!263 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "processor_topology_3d_z", scope: !105, file: !1, line: 85, type: !210)
!264 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "storage_report_every", scope: !105, file: !1, line: 85, type: !210)
!265 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "timer_output", scope: !105, file: !1, line: 85, type: !210)
!266 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "terminate", scope: !105, file: !1, line: 85, type: !102)
!267 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_initial_time", scope: !105, file: !1, line: 85, type: !268)
!268 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !50)
!269 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_final_time", scope: !105, file: !1, line: 85, type: !268)
!270 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_itlast", scope: !105, file: !1, line: 85, type: !210)
!271 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "terminate_next", scope: !105, file: !1, line: 85, type: !210)
!272 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_pdummy_pointer", scope: !105, file: !1, line: 85, type: !273)
!273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !274, size: 64, align: 64)
!274 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!275 = !DISubprogram(name: "PUGH_InitGH", scope: !1, file: !1, line: 294, type: !276, isLocal: false, isDefinition: true, scopeLine: 295, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.cGH*)* @PUGH_InitGH, variables: !278)
!276 = !DISubroutineType(types: !277)
!277 = !{!23, !116}
!278 = !{!279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342}
!279 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "GH", arg: 1, scope: !275, file: !1, line: 294, type: !116)
!280 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !275, file: !1, line: 296, type: !23)
!281 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ghost_size", scope: !275, file: !1, line: 297, type: !210)
!282 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ghost_size_x", scope: !275, file: !1, line: 297, type: !210)
!283 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ghost_size_y", scope: !275, file: !1, line: 297, type: !210)
!284 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ghost_size_z", scope: !275, file: !1, line: 297, type: !210)
!285 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "global_nsize", scope: !275, file: !1, line: 297, type: !210)
!286 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "global_nx", scope: !275, file: !1, line: 297, type: !210)
!287 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "global_ny", scope: !275, file: !1, line: 297, type: !210)
!288 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "global_nz", scope: !275, file: !1, line: 297, type: !210)
!289 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "periodic", scope: !275, file: !1, line: 297, type: !210)
!290 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "periodic_x", scope: !275, file: !1, line: 297, type: !210)
!291 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "periodic_y", scope: !275, file: !1, line: 297, type: !210)
!292 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "periodic_z", scope: !275, file: !1, line: 297, type: !210)
!293 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "info", scope: !275, file: !1, line: 297, type: !102)
!294 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "initialize_memory", scope: !275, file: !1, line: 297, type: !102)
!295 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "partition", scope: !275, file: !1, line: 297, type: !102)
!296 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "partition_1d_x", scope: !275, file: !1, line: 297, type: !102)
!297 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "partition_2d_x", scope: !275, file: !1, line: 297, type: !102)
!298 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "partition_2d_y", scope: !275, file: !1, line: 297, type: !102)
!299 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "partition_3d_x", scope: !275, file: !1, line: 297, type: !102)
!300 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "partition_3d_y", scope: !275, file: !1, line: 297, type: !102)
!301 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "partition_3d_z", scope: !275, file: !1, line: 297, type: !102)
!302 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "processor_topology", scope: !275, file: !1, line: 297, type: !102)
!303 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "storage_verbose", scope: !275, file: !1, line: 297, type: !102)
!304 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cacheline_mult", scope: !275, file: !1, line: 297, type: !210)
!305 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "enable_all_storage", scope: !275, file: !1, line: 297, type: !210)
!306 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "local_nsize", scope: !275, file: !1, line: 297, type: !210)
!307 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "local_nx", scope: !275, file: !1, line: 297, type: !210)
!308 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "local_ny", scope: !275, file: !1, line: 297, type: !210)
!309 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "local_nz", scope: !275, file: !1, line: 297, type: !210)
!310 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "overloadabort", scope: !275, file: !1, line: 297, type: !210)
!311 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "overloadarraygroupsizeb", scope: !275, file: !1, line: 297, type: !210)
!312 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "overloadbarrier", scope: !275, file: !1, line: 297, type: !210)
!313 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "overloaddisablegroupcomm", scope: !275, file: !1, line: 297, type: !210)
!314 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "overloaddisablegroupstorage", scope: !275, file: !1, line: 297, type: !210)
!315 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "overloadenablegroupcomm", scope: !275, file: !1, line: 297, type: !210)
!316 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "overloadenablegroupstorage", scope: !275, file: !1, line: 297, type: !210)
!317 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "overloadevolve", scope: !275, file: !1, line: 297, type: !210)
!318 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "overloadexit", scope: !275, file: !1, line: 297, type: !210)
!319 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "overloadgroupdynamicdata", scope: !275, file: !1, line: 297, type: !210)
!320 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "overloadmyproc", scope: !275, file: !1, line: 297, type: !210)
!321 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "overloadnprocs", scope: !275, file: !1, line: 297, type: !210)
!322 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "overloadparallelinit", scope: !275, file: !1, line: 297, type: !210)
!323 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "overloadquerygroupstorageb", scope: !275, file: !1, line: 297, type: !210)
!324 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "overloadsyncgroup", scope: !275, file: !1, line: 297, type: !210)
!325 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "padding_active", scope: !275, file: !1, line: 297, type: !210)
!326 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "padding_address_spacing", scope: !275, file: !1, line: 297, type: !210)
!327 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "padding_cacheline_bits", scope: !275, file: !1, line: 297, type: !210)
!328 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "padding_size", scope: !275, file: !1, line: 297, type: !210)
!329 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "processor_topology_1d_x", scope: !275, file: !1, line: 297, type: !210)
!330 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "processor_topology_2d_x", scope: !275, file: !1, line: 297, type: !210)
!331 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "processor_topology_2d_y", scope: !275, file: !1, line: 297, type: !210)
!332 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "processor_topology_3d_x", scope: !275, file: !1, line: 297, type: !210)
!333 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "processor_topology_3d_y", scope: !275, file: !1, line: 297, type: !210)
!334 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "processor_topology_3d_z", scope: !275, file: !1, line: 297, type: !210)
!335 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "storage_report_every", scope: !275, file: !1, line: 297, type: !210)
!336 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "timer_output", scope: !275, file: !1, line: 297, type: !210)
!337 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "terminate", scope: !275, file: !1, line: 297, type: !102)
!338 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_initial_time", scope: !275, file: !1, line: 297, type: !268)
!339 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_final_time", scope: !275, file: !1, line: 297, type: !268)
!340 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_itlast", scope: !275, file: !1, line: 297, type: !210)
!341 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "terminate_next", scope: !275, file: !1, line: 297, type: !210)
!342 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_pdummy_pointer", scope: !275, file: !1, line: 297, type: !273)
!343 = !DISubprogram(name: "PUGH_ScheduleTraverseGH", scope: !1, file: !1, line: 349, type: !344, isLocal: false, isDefinition: true, scopeLine: 351, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.cGH*, i8*)* @PUGH_ScheduleTraverseGH, variables: !346)
!344 = !DISubroutineType(types: !345)
!345 = !{!23, !116, !102}
!346 = !{!347, !348, !349}
!347 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "GH", arg: 1, scope: !343, file: !1, line: 349, type: !116)
!348 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "where", arg: 2, scope: !343, file: !1, line: 350, type: !102)
!349 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "retval", scope: !343, file: !1, line: 352, type: !23)
!350 = !DISubprogram(name: "PUGH_RegisterCallFunc", scope: !1, file: !1, line: 366, type: !351, isLocal: false, isDefinition: true, scopeLine: 369, flags: DIFlagPrototyped, isOptimized: true, function: void (i32 (i8*, %struct.cFunctionData*, i8*)*)* @PUGH_RegisterCallFunc, variables: !376)
!351 = !DISubroutineType(types: !352)
!352 = !{null, !353}
!353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !354, size: 64, align: 64)
!354 = !DISubroutineType(types: !355)
!355 = !{!23, !35, !356, !35}
!356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !357, size: 64, align: 64)
!357 = !DIDerivedType(tag: DW_TAG_typedef, name: "cFunctionData", file: !4, line: 43, baseType: !358)
!358 = !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 18, size: 576, align: 64, elements: !359)
!359 = !{!360, !362, !366, !368, !369, !370, !371, !372, !373, !374, !375}
!360 = !DIDerivedType(tag: DW_TAG_member, name: "language", scope: !358, file: !4, line: 20, baseType: !361, size: 32, align: 32)
!361 = !DIDerivedType(tag: DW_TAG_typedef, name: "cLanguage", file: !4, line: 14, baseType: !3)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "FortranCaller", scope: !358, file: !4, line: 22, baseType: !363, size: 64, align: 64, offset: 64)
!363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !364, size: 64, align: 64)
!364 = !DISubroutineType(types: !365)
!365 = !{!23, !116, !35}
!366 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !358, file: !4, line: 24, baseType: !367, size: 32, align: 32, offset: 128)
!367 = !DIDerivedType(tag: DW_TAG_typedef, name: "cFunctionType", file: !4, line: 16, baseType: !9)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "n_SyncGroups", scope: !358, file: !4, line: 26, baseType: !23, size: 32, align: 32, offset: 160)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "SyncGroups", scope: !358, file: !4, line: 28, baseType: !22, size: 64, align: 64, offset: 192)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "global", scope: !358, file: !4, line: 32, baseType: !23, size: 32, align: 32, offset: 256)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "n_TriggerGroups", scope: !358, file: !4, line: 37, baseType: !23, size: 32, align: 32, offset: 288)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "TriggerGroups", scope: !358, file: !4, line: 38, baseType: !22, size: 64, align: 64, offset: 320)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "where", scope: !358, file: !4, line: 39, baseType: !24, size: 64, align: 64, offset: 384)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "routine", scope: !358, file: !4, line: 40, baseType: !24, size: 64, align: 64, offset: 448)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "thorn", scope: !358, file: !4, line: 41, baseType: !24, size: 64, align: 64, offset: 512)
!376 = !{!377}
!377 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "func", arg: 1, scope: !350, file: !1, line: 366, type: !353)
!378 = !DISubprogram(name: "PUGH_GFSize", scope: !1, file: !1, line: 393, type: !379, isLocal: false, isDefinition: true, scopeLine: 394, flags: DIFlagPrototyped, isOptimized: true, function: void (i32, i32*)* @PUGH_GFSize, variables: !381)
!379 = !DISubroutineType(types: !380)
!380 = !{null, !23, !22}
!381 = !{!382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447}
!382 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "dim", arg: 1, scope: !378, file: !1, line: 393, type: !23)
!383 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nsize", arg: 2, scope: !378, file: !1, line: 393, type: !22)
!384 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "dir", scope: !378, file: !1, line: 395, type: !23)
!385 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "size", scope: !378, file: !1, line: 395, type: !23)
!386 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ghost_size", scope: !378, file: !1, line: 396, type: !210)
!387 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ghost_size_x", scope: !378, file: !1, line: 396, type: !210)
!388 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ghost_size_y", scope: !378, file: !1, line: 396, type: !210)
!389 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ghost_size_z", scope: !378, file: !1, line: 396, type: !210)
!390 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "global_nsize", scope: !378, file: !1, line: 396, type: !210)
!391 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "global_nx", scope: !378, file: !1, line: 396, type: !210)
!392 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "global_ny", scope: !378, file: !1, line: 396, type: !210)
!393 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "global_nz", scope: !378, file: !1, line: 396, type: !210)
!394 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "periodic", scope: !378, file: !1, line: 396, type: !210)
!395 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "periodic_x", scope: !378, file: !1, line: 396, type: !210)
!396 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "periodic_y", scope: !378, file: !1, line: 396, type: !210)
!397 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "periodic_z", scope: !378, file: !1, line: 396, type: !210)
!398 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "info", scope: !378, file: !1, line: 396, type: !102)
!399 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "initialize_memory", scope: !378, file: !1, line: 396, type: !102)
!400 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "partition", scope: !378, file: !1, line: 396, type: !102)
!401 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "partition_1d_x", scope: !378, file: !1, line: 396, type: !102)
!402 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "partition_2d_x", scope: !378, file: !1, line: 396, type: !102)
!403 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "partition_2d_y", scope: !378, file: !1, line: 396, type: !102)
!404 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "partition_3d_x", scope: !378, file: !1, line: 396, type: !102)
!405 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "partition_3d_y", scope: !378, file: !1, line: 396, type: !102)
!406 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "partition_3d_z", scope: !378, file: !1, line: 396, type: !102)
!407 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "processor_topology", scope: !378, file: !1, line: 396, type: !102)
!408 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "storage_verbose", scope: !378, file: !1, line: 396, type: !102)
!409 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cacheline_mult", scope: !378, file: !1, line: 396, type: !210)
!410 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "enable_all_storage", scope: !378, file: !1, line: 396, type: !210)
!411 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "local_nsize", scope: !378, file: !1, line: 396, type: !210)
!412 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "local_nx", scope: !378, file: !1, line: 396, type: !210)
!413 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "local_ny", scope: !378, file: !1, line: 396, type: !210)
!414 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "local_nz", scope: !378, file: !1, line: 396, type: !210)
!415 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "overloadabort", scope: !378, file: !1, line: 396, type: !210)
!416 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "overloadarraygroupsizeb", scope: !378, file: !1, line: 396, type: !210)
!417 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "overloadbarrier", scope: !378, file: !1, line: 396, type: !210)
!418 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "overloaddisablegroupcomm", scope: !378, file: !1, line: 396, type: !210)
!419 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "overloaddisablegroupstorage", scope: !378, file: !1, line: 396, type: !210)
!420 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "overloadenablegroupcomm", scope: !378, file: !1, line: 396, type: !210)
!421 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "overloadenablegroupstorage", scope: !378, file: !1, line: 396, type: !210)
!422 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "overloadevolve", scope: !378, file: !1, line: 396, type: !210)
!423 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "overloadexit", scope: !378, file: !1, line: 396, type: !210)
!424 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "overloadgroupdynamicdata", scope: !378, file: !1, line: 396, type: !210)
!425 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "overloadmyproc", scope: !378, file: !1, line: 396, type: !210)
!426 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "overloadnprocs", scope: !378, file: !1, line: 396, type: !210)
!427 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "overloadparallelinit", scope: !378, file: !1, line: 396, type: !210)
!428 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "overloadquerygroupstorageb", scope: !378, file: !1, line: 396, type: !210)
!429 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "overloadsyncgroup", scope: !378, file: !1, line: 396, type: !210)
!430 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "padding_active", scope: !378, file: !1, line: 396, type: !210)
!431 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "padding_address_spacing", scope: !378, file: !1, line: 396, type: !210)
!432 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "padding_cacheline_bits", scope: !378, file: !1, line: 396, type: !210)
!433 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "padding_size", scope: !378, file: !1, line: 396, type: !210)
!434 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "processor_topology_1d_x", scope: !378, file: !1, line: 396, type: !210)
!435 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "processor_topology_2d_x", scope: !378, file: !1, line: 396, type: !210)
!436 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "processor_topology_2d_y", scope: !378, file: !1, line: 396, type: !210)
!437 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "processor_topology_3d_x", scope: !378, file: !1, line: 396, type: !210)
!438 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "processor_topology_3d_y", scope: !378, file: !1, line: 396, type: !210)
!439 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "processor_topology_3d_z", scope: !378, file: !1, line: 396, type: !210)
!440 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "storage_report_every", scope: !378, file: !1, line: 396, type: !210)
!441 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "timer_output", scope: !378, file: !1, line: 396, type: !210)
!442 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "terminate", scope: !378, file: !1, line: 396, type: !102)
!443 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_initial_time", scope: !378, file: !1, line: 396, type: !268)
!444 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_final_time", scope: !378, file: !1, line: 396, type: !268)
!445 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_itlast", scope: !378, file: !1, line: 396, type: !210)
!446 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "terminate_next", scope: !378, file: !1, line: 396, type: !210)
!447 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_pdummy_pointer", scope: !378, file: !1, line: 396, type: !273)
!448 = !DISubprogram(name: "PUGH_GFGhostsize", scope: !1, file: !1, line: 439, type: !379, isLocal: false, isDefinition: true, scopeLine: 440, flags: DIFlagPrototyped, isOptimized: true, function: void (i32, i32*)* @PUGH_GFGhostsize, variables: !449)
!449 = !{!450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514}
!450 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "dim", arg: 1, scope: !448, file: !1, line: 439, type: !23)
!451 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ghostsize", arg: 2, scope: !448, file: !1, line: 439, type: !22)
!452 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "dir", scope: !448, file: !1, line: 441, type: !23)
!453 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ghost_size", scope: !448, file: !1, line: 442, type: !210)
!454 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ghost_size_x", scope: !448, file: !1, line: 442, type: !210)
!455 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ghost_size_y", scope: !448, file: !1, line: 442, type: !210)
!456 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ghost_size_z", scope: !448, file: !1, line: 442, type: !210)
!457 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "global_nsize", scope: !448, file: !1, line: 442, type: !210)
!458 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "global_nx", scope: !448, file: !1, line: 442, type: !210)
!459 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "global_ny", scope: !448, file: !1, line: 442, type: !210)
!460 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "global_nz", scope: !448, file: !1, line: 442, type: !210)
!461 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "periodic", scope: !448, file: !1, line: 442, type: !210)
!462 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "periodic_x", scope: !448, file: !1, line: 442, type: !210)
!463 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "periodic_y", scope: !448, file: !1, line: 442, type: !210)
!464 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "periodic_z", scope: !448, file: !1, line: 442, type: !210)
!465 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "info", scope: !448, file: !1, line: 442, type: !102)
!466 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "initialize_memory", scope: !448, file: !1, line: 442, type: !102)
!467 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "partition", scope: !448, file: !1, line: 442, type: !102)
!468 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "partition_1d_x", scope: !448, file: !1, line: 442, type: !102)
!469 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "partition_2d_x", scope: !448, file: !1, line: 442, type: !102)
!470 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "partition_2d_y", scope: !448, file: !1, line: 442, type: !102)
!471 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "partition_3d_x", scope: !448, file: !1, line: 442, type: !102)
!472 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "partition_3d_y", scope: !448, file: !1, line: 442, type: !102)
!473 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "partition_3d_z", scope: !448, file: !1, line: 442, type: !102)
!474 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "processor_topology", scope: !448, file: !1, line: 442, type: !102)
!475 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "storage_verbose", scope: !448, file: !1, line: 442, type: !102)
!476 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cacheline_mult", scope: !448, file: !1, line: 442, type: !210)
!477 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "enable_all_storage", scope: !448, file: !1, line: 442, type: !210)
!478 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "local_nsize", scope: !448, file: !1, line: 442, type: !210)
!479 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "local_nx", scope: !448, file: !1, line: 442, type: !210)
!480 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "local_ny", scope: !448, file: !1, line: 442, type: !210)
!481 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "local_nz", scope: !448, file: !1, line: 442, type: !210)
!482 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "overloadabort", scope: !448, file: !1, line: 442, type: !210)
!483 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "overloadarraygroupsizeb", scope: !448, file: !1, line: 442, type: !210)
!484 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "overloadbarrier", scope: !448, file: !1, line: 442, type: !210)
!485 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "overloaddisablegroupcomm", scope: !448, file: !1, line: 442, type: !210)
!486 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "overloaddisablegroupstorage", scope: !448, file: !1, line: 442, type: !210)
!487 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "overloadenablegroupcomm", scope: !448, file: !1, line: 442, type: !210)
!488 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "overloadenablegroupstorage", scope: !448, file: !1, line: 442, type: !210)
!489 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "overloadevolve", scope: !448, file: !1, line: 442, type: !210)
!490 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "overloadexit", scope: !448, file: !1, line: 442, type: !210)
!491 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "overloadgroupdynamicdata", scope: !448, file: !1, line: 442, type: !210)
!492 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "overloadmyproc", scope: !448, file: !1, line: 442, type: !210)
!493 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "overloadnprocs", scope: !448, file: !1, line: 442, type: !210)
!494 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "overloadparallelinit", scope: !448, file: !1, line: 442, type: !210)
!495 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "overloadquerygroupstorageb", scope: !448, file: !1, line: 442, type: !210)
!496 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "overloadsyncgroup", scope: !448, file: !1, line: 442, type: !210)
!497 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "padding_active", scope: !448, file: !1, line: 442, type: !210)
!498 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "padding_address_spacing", scope: !448, file: !1, line: 442, type: !210)
!499 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "padding_cacheline_bits", scope: !448, file: !1, line: 442, type: !210)
!500 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "padding_size", scope: !448, file: !1, line: 442, type: !210)
!501 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "processor_topology_1d_x", scope: !448, file: !1, line: 442, type: !210)
!502 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "processor_topology_2d_x", scope: !448, file: !1, line: 442, type: !210)
!503 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "processor_topology_2d_y", scope: !448, file: !1, line: 442, type: !210)
!504 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "processor_topology_3d_x", scope: !448, file: !1, line: 442, type: !210)
!505 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "processor_topology_3d_y", scope: !448, file: !1, line: 442, type: !210)
!506 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "processor_topology_3d_z", scope: !448, file: !1, line: 442, type: !210)
!507 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "storage_report_every", scope: !448, file: !1, line: 442, type: !210)
!508 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "timer_output", scope: !448, file: !1, line: 442, type: !210)
!509 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "terminate", scope: !448, file: !1, line: 442, type: !102)
!510 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_initial_time", scope: !448, file: !1, line: 442, type: !268)
!511 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_final_time", scope: !448, file: !1, line: 442, type: !268)
!512 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_itlast", scope: !448, file: !1, line: 442, type: !210)
!513 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "terminate_next", scope: !448, file: !1, line: 442, type: !210)
!514 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_pdummy_pointer", scope: !448, file: !1, line: 442, type: !273)
!515 = !DISubprogram(name: "PUGH_GFPeriodic", scope: !1, file: !1, line: 485, type: !379, isLocal: false, isDefinition: true, scopeLine: 486, flags: DIFlagPrototyped, isOptimized: true, function: void (i32, i32*)* @PUGH_GFPeriodic, variables: !516)
!516 = !{!517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580}
!517 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "dim", arg: 1, scope: !515, file: !1, line: 485, type: !23)
!518 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "perme", arg: 2, scope: !515, file: !1, line: 485, type: !22)
!519 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ghost_size", scope: !515, file: !1, line: 487, type: !210)
!520 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ghost_size_x", scope: !515, file: !1, line: 487, type: !210)
!521 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ghost_size_y", scope: !515, file: !1, line: 487, type: !210)
!522 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ghost_size_z", scope: !515, file: !1, line: 487, type: !210)
!523 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "global_nsize", scope: !515, file: !1, line: 487, type: !210)
!524 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "global_nx", scope: !515, file: !1, line: 487, type: !210)
!525 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "global_ny", scope: !515, file: !1, line: 487, type: !210)
!526 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "global_nz", scope: !515, file: !1, line: 487, type: !210)
!527 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "periodic", scope: !515, file: !1, line: 487, type: !210)
!528 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "periodic_x", scope: !515, file: !1, line: 487, type: !210)
!529 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "periodic_y", scope: !515, file: !1, line: 487, type: !210)
!530 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "periodic_z", scope: !515, file: !1, line: 487, type: !210)
!531 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "info", scope: !515, file: !1, line: 487, type: !102)
!532 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "initialize_memory", scope: !515, file: !1, line: 487, type: !102)
!533 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "partition", scope: !515, file: !1, line: 487, type: !102)
!534 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "partition_1d_x", scope: !515, file: !1, line: 487, type: !102)
!535 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "partition_2d_x", scope: !515, file: !1, line: 487, type: !102)
!536 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "partition_2d_y", scope: !515, file: !1, line: 487, type: !102)
!537 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "partition_3d_x", scope: !515, file: !1, line: 487, type: !102)
!538 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "partition_3d_y", scope: !515, file: !1, line: 487, type: !102)
!539 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "partition_3d_z", scope: !515, file: !1, line: 487, type: !102)
!540 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "processor_topology", scope: !515, file: !1, line: 487, type: !102)
!541 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "storage_verbose", scope: !515, file: !1, line: 487, type: !102)
!542 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cacheline_mult", scope: !515, file: !1, line: 487, type: !210)
!543 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "enable_all_storage", scope: !515, file: !1, line: 487, type: !210)
!544 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "local_nsize", scope: !515, file: !1, line: 487, type: !210)
!545 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "local_nx", scope: !515, file: !1, line: 487, type: !210)
!546 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "local_ny", scope: !515, file: !1, line: 487, type: !210)
!547 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "local_nz", scope: !515, file: !1, line: 487, type: !210)
!548 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "overloadabort", scope: !515, file: !1, line: 487, type: !210)
!549 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "overloadarraygroupsizeb", scope: !515, file: !1, line: 487, type: !210)
!550 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "overloadbarrier", scope: !515, file: !1, line: 487, type: !210)
!551 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "overloaddisablegroupcomm", scope: !515, file: !1, line: 487, type: !210)
!552 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "overloaddisablegroupstorage", scope: !515, file: !1, line: 487, type: !210)
!553 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "overloadenablegroupcomm", scope: !515, file: !1, line: 487, type: !210)
!554 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "overloadenablegroupstorage", scope: !515, file: !1, line: 487, type: !210)
!555 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "overloadevolve", scope: !515, file: !1, line: 487, type: !210)
!556 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "overloadexit", scope: !515, file: !1, line: 487, type: !210)
!557 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "overloadgroupdynamicdata", scope: !515, file: !1, line: 487, type: !210)
!558 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "overloadmyproc", scope: !515, file: !1, line: 487, type: !210)
!559 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "overloadnprocs", scope: !515, file: !1, line: 487, type: !210)
!560 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "overloadparallelinit", scope: !515, file: !1, line: 487, type: !210)
!561 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "overloadquerygroupstorageb", scope: !515, file: !1, line: 487, type: !210)
!562 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "overloadsyncgroup", scope: !515, file: !1, line: 487, type: !210)
!563 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "padding_active", scope: !515, file: !1, line: 487, type: !210)
!564 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "padding_address_spacing", scope: !515, file: !1, line: 487, type: !210)
!565 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "padding_cacheline_bits", scope: !515, file: !1, line: 487, type: !210)
!566 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "padding_size", scope: !515, file: !1, line: 487, type: !210)
!567 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "processor_topology_1d_x", scope: !515, file: !1, line: 487, type: !210)
!568 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "processor_topology_2d_x", scope: !515, file: !1, line: 487, type: !210)
!569 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "processor_topology_2d_y", scope: !515, file: !1, line: 487, type: !210)
!570 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "processor_topology_3d_x", scope: !515, file: !1, line: 487, type: !210)
!571 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "processor_topology_3d_y", scope: !515, file: !1, line: 487, type: !210)
!572 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "processor_topology_3d_z", scope: !515, file: !1, line: 487, type: !210)
!573 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "storage_report_every", scope: !515, file: !1, line: 487, type: !210)
!574 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "timer_output", scope: !515, file: !1, line: 487, type: !210)
!575 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "terminate", scope: !515, file: !1, line: 487, type: !102)
!576 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_initial_time", scope: !515, file: !1, line: 487, type: !268)
!577 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_final_time", scope: !515, file: !1, line: 487, type: !268)
!578 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_itlast", scope: !515, file: !1, line: 487, type: !210)
!579 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "terminate_next", scope: !515, file: !1, line: 487, type: !210)
!580 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_pdummy_pointer", scope: !515, file: !1, line: 487, type: !273)
!581 = !DISubprogram(name: "PUGH_PrintTimingInfo", scope: !1, file: !1, line: 524, type: !276, isLocal: false, isDefinition: true, scopeLine: 525, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.cGH*)* @PUGH_PrintTimingInfo, variables: !582)
!582 = !{!583, !584, !585, !607}
!583 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "GH", arg: 1, scope: !581, file: !1, line: 524, type: !116)
!584 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !581, file: !1, line: 526, type: !23)
!585 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "info", scope: !581, file: !1, line: 527, type: !586)
!586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !587, size: 64, align: 64)
!587 = !DIDerivedType(tag: DW_TAG_typedef, name: "cTimerData", file: !15, line: 35, baseType: !588)
!588 = !DICompositeType(tag: DW_TAG_structure_type, file: !15, line: 31, size: 128, align: 64, elements: !589)
!589 = !{!590, !591}
!590 = !DIDerivedType(tag: DW_TAG_member, name: "n_vals", scope: !588, file: !15, line: 33, baseType: !23, size: 32, align: 32)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "vals", scope: !588, file: !15, line: 34, baseType: !592, size: 64, align: 64, offset: 64)
!592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !593, size: 64, align: 64)
!593 = !DIDerivedType(tag: DW_TAG_typedef, name: "cTimerVal", file: !15, line: 29, baseType: !594)
!594 = !DICompositeType(tag: DW_TAG_structure_type, file: !15, line: 18, size: 256, align: 64, elements: !595)
!595 = !{!596, !598, !599, !600}
!596 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !594, file: !15, line: 20, baseType: !597, size: 32, align: 32)
!597 = !DIDerivedType(tag: DW_TAG_typedef, name: "cTimerValType", file: !15, line: 16, baseType: !14)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "heading", scope: !594, file: !15, line: 21, baseType: !102, size: 64, align: 64, offset: 64)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !594, file: !15, line: 22, baseType: !102, size: 64, align: 64, offset: 128)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !594, file: !15, line: 28, baseType: !601, size: 64, align: 64, offset: 192)
!601 = !DICompositeType(tag: DW_TAG_union_type, scope: !594, file: !15, line: 23, size: 64, align: 64, elements: !602)
!602 = !{!603, !604, !606}
!603 = !DIDerivedType(tag: DW_TAG_member, name: "i", scope: !601, file: !15, line: 25, baseType: !23, size: 32, align: 32)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !601, file: !15, line: 26, baseType: !605, size: 64, align: 64)
!605 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !601, file: !15, line: 27, baseType: !50, size: 64, align: 64)
!607 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "pughGH", scope: !581, file: !1, line: 528, type: !159)
!608 = !DISubprogram(name: "PUGH_InitGHBasics", scope: !1, file: !1, line: 183, type: !609, isLocal: true, isDefinition: true, scopeLine: 184, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.cGH*)* @PUGH_InitGHBasics, variables: !611)
!609 = !DISubroutineType(types: !610)
!610 = !{null, !116}
!611 = !{!612, !613, !614, !615, !616}
!612 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "GH", arg: 1, scope: !608, file: !1, line: 183, type: !116)
!613 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "dim", scope: !608, file: !1, line: 185, type: !23)
!614 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "stagger", scope: !608, file: !1, line: 185, type: !23)
!615 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "mypGH", scope: !608, file: !1, line: 186, type: !159)
!616 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "GFExtras", scope: !608, file: !1, line: 187, type: !43)
!617 = !DISubprogram(name: "PUGH_InitGHVariables", scope: !1, file: !1, line: 241, type: !609, isLocal: true, isDefinition: true, scopeLine: 242, flags: DIFlagPrototyped, isOptimized: true, variables: !618)
!618 = !{!619, !620, !621, !622, !623, !624}
!619 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "GH", arg: 1, scope: !617, file: !1, line: 241, type: !116)
!620 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "var", scope: !617, file: !1, line: 243, type: !23)
!621 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "gtype", scope: !617, file: !1, line: 243, type: !23)
!622 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "level", scope: !617, file: !1, line: 243, type: !23)
!623 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ntimelevels", scope: !617, file: !1, line: 243, type: !23)
!624 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "mypGH", scope: !617, file: !1, line: 244, type: !159)
!625 = !{!626, !627}
!626 = !DIGlobalVariable(name: "rcsid", scope: !0, file: !1, line: 27, type: !102, isLocal: true, isDefinition: true)
!627 = !DIGlobalVariable(name: "PUGHCallFunc", scope: !0, file: !1, line: 38, type: !353, isLocal: true, isDefinition: true, variable: i32 (i8*, %struct.cFunctionData*, i8*)** @PUGHCallFunc)
!628 = !{i32 2, !"Dwarf Version", i32 2}
!629 = !{i32 2, !"Debug Info Version", i32 700000003}
!630 = !{i32 1, !"PIC Level", i32 2}
!631 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!632 = !DILocation(line: 29, column: 1, scope: !99)
!633 = !DIExpression()
!634 = !DILocation(line: 76, column: 35, scope: !105)
!635 = !DILocation(line: 77, column: 35, scope: !105)
!636 = !DILocation(line: 78, column: 35, scope: !105)
!637 = !DILocation(line: 93, column: 12, scope: !105)
!638 = !DILocation(line: 80, column: 17, scope: !105)
!639 = !DILocation(line: 95, column: 38, scope: !105)
!640 = !DILocation(line: 95, column: 36, scope: !105)
!641 = !DILocation(line: 95, column: 47, scope: !105)
!642 = !DILocation(line: 95, column: 28, scope: !105)
!643 = !DILocation(line: 95, column: 20, scope: !105)
!644 = !DILocation(line: 84, column: 8, scope: !105)
!645 = !DILocation(line: 96, column: 26, scope: !105)
!646 = !DILocation(line: 84, column: 16, scope: !105)
!647 = !DILocation(line: 97, column: 29, scope: !105)
!648 = !DILocation(line: 97, column: 26, scope: !105)
!649 = !DILocation(line: 84, column: 28, scope: !105)
!650 = !DILocation(line: 99, column: 3, scope: !105)
!651 = !DILocation(line: 100, column: 3, scope: !105)
!652 = !DILocation(line: 101, column: 3, scope: !105)
!653 = !DILocation(line: 103, column: 26, scope: !105)
!654 = !DILocation(line: 104, column: 26, scope: !105)
!655 = !DILocation(line: 103, column: 11, scope: !105)
!656 = !DILocation(line: 81, column: 8, scope: !105)
!657 = !DILocation(line: 106, column: 8, scope: !658)
!658 = distinct !DILexicalBlock(scope: !105, file: !1, line: 106, column: 7)
!659 = !DILocation(line: 106, column: 7, scope: !105)
!660 = !DILocation(line: 108, column: 5, scope: !661)
!661 = distinct !DILexicalBlock(scope: !658, file: !1, line: 107, column: 3)
!662 = !DILocation(line: 109, column: 3, scope: !661)
!663 = !DILocation(line: 112, column: 37, scope: !105)
!664 = !DILocation(line: 112, column: 10, scope: !105)
!665 = !DILocation(line: 112, column: 26, scope: !105)
!666 = !{!667, !668, i64 136}
!667 = !{!"PGH", !668, i64 0, !671, i64 8, !671, i64 12, !671, i64 16, !671, i64 20, !671, i64 24, !671, i64 28, !668, i64 32, !671, i64 40, !668, i64 48, !671, i64 56, !671, i64 60, !672, i64 64, !672, i64 72, !672, i64 80, !672, i64 88, !671, i64 96, !671, i64 100, !671, i64 104, !671, i64 108, !671, i64 112, !668, i64 120, !668, i64 128, !668, i64 136}
!668 = !{!"any pointer", !669, i64 0}
!669 = !{!"omnipotent char", !670, i64 0}
!670 = !{!"Simple C/C++ TBAA"}
!671 = !{!"int", !669, i64 0}
!672 = !{!"double", !669, i64 0}
!673 = !DILocation(line: 80, column: 10, scope: !105)
!674 = !DILocation(line: 115, column: 27, scope: !675)
!675 = distinct !DILexicalBlock(scope: !676, file: !1, line: 115, column: 3)
!676 = distinct !DILexicalBlock(scope: !105, file: !1, line: 115, column: 3)
!677 = !DILocation(line: 115, column: 25, scope: !675)
!678 = !DILocation(line: 115, column: 3, scope: !676)
!679 = !DILocation(line: 118, column: 31, scope: !680)
!680 = distinct !DILexicalBlock(scope: !675, file: !1, line: 116, column: 3)
!681 = !DILocation(line: 118, column: 28, scope: !680)
!682 = !DILocation(line: 119, column: 31, scope: !680)
!683 = !DILocation(line: 119, column: 28, scope: !680)
!684 = !DILocation(line: 149, column: 21, scope: !685)
!685 = distinct !DILexicalBlock(scope: !686, file: !1, line: 149, column: 14)
!686 = distinct !DILexicalBlock(scope: !680, file: !1, line: 142, column: 9)
!687 = !DILocation(line: 151, column: 7, scope: !688)
!688 = distinct !DILexicalBlock(scope: !685, file: !1, line: 150, column: 5)
!689 = !DILocation(line: 159, column: 29, scope: !680)
!690 = !DILocation(line: 159, column: 57, scope: !680)
!691 = !DILocation(line: 160, column: 29, scope: !680)
!692 = !DILocation(line: 160, column: 46, scope: !680)
!693 = !DILocation(line: 160, column: 67, scope: !680)
!694 = !DILocation(line: 129, column: 20, scope: !695)
!695 = distinct !DILexicalBlock(scope: !696, file: !1, line: 129, column: 13)
!696 = distinct !DILexicalBlock(scope: !697, file: !1, line: 126, column: 7)
!697 = distinct !DILexicalBlock(scope: !698, file: !1, line: 125, column: 7)
!698 = distinct !DILexicalBlock(scope: !699, file: !1, line: 125, column: 7)
!699 = distinct !DILexicalBlock(scope: !700, file: !1, line: 124, column: 5)
!700 = distinct !DILexicalBlock(scope: !680, file: !1, line: 123, column: 9)
!701 = !DILocation(line: 82, column: 10, scope: !105)
!702 = !DILocation(line: 117, column: 5, scope: !680)
!703 = !DILocation(line: 84, column: 53, scope: !105)
!704 = !DILocation(line: 84, column: 36, scope: !105)
!705 = !DILocation(line: 122, column: 12, scope: !680)
!706 = !DILocation(line: 83, column: 14, scope: !105)
!707 = !DILocation(line: 123, column: 9, scope: !700)
!708 = !DILocation(line: 123, column: 9, scope: !680)
!709 = !DILocation(line: 125, column: 30, scope: !697)
!710 = !{!711, !671, i64 16}
!711 = !{!"", !671, i64 0, !671, i64 4, !671, i64 8, !671, i64 12, !671, i64 16, !671, i64 20, !671, i64 24, !671, i64 28}
!712 = !DILocation(line: 125, column: 21, scope: !697)
!713 = !DILocation(line: 125, column: 7, scope: !698)
!714 = !{!711, !671, i64 8}
!715 = !DILocation(line: 127, column: 25, scope: !696)
!716 = !{!668, !668, i64 0}
!717 = !DILocation(line: 127, column: 24, scope: !696)
!718 = !{!671, !671, i64 0}
!719 = !DILocation(line: 127, column: 9, scope: !696)
!720 = !DILocation(line: 129, column: 29, scope: !695)
!721 = !DILocation(line: 131, column: 26, scope: !722)
!722 = distinct !DILexicalBlock(scope: !695, file: !1, line: 130, column: 9)
!723 = !DILocation(line: 129, column: 13, scope: !696)
!724 = !DILocation(line: 127, column: 22, scope: !696)
!725 = !DILocation(line: 141, column: 12, scope: !680)
!726 = !DILocation(line: 142, column: 9, scope: !686)
!727 = !DILocation(line: 142, column: 9, scope: !680)
!728 = !DILocation(line: 144, column: 30, scope: !729)
!729 = distinct !DILexicalBlock(scope: !730, file: !1, line: 144, column: 7)
!730 = distinct !DILexicalBlock(scope: !731, file: !1, line: 144, column: 7)
!731 = distinct !DILexicalBlock(scope: !686, file: !1, line: 143, column: 5)
!732 = !DILocation(line: 144, column: 21, scope: !729)
!733 = !DILocation(line: 144, column: 7, scope: !730)
!734 = !DILocation(line: 146, column: 30, scope: !735)
!735 = distinct !DILexicalBlock(scope: !729, file: !1, line: 145, column: 7)
!736 = !DILocation(line: 146, column: 29, scope: !735)
!737 = !DILocation(line: 146, column: 9, scope: !735)
!738 = !DILocation(line: 146, column: 27, scope: !735)
!739 = !{!711, !671, i64 0}
!740 = !DILocation(line: 149, column: 31, scope: !685)
!741 = !DILocation(line: 149, column: 14, scope: !686)
!742 = !DILocation(line: 152, column: 5, scope: !688)
!743 = !DILocation(line: 158, column: 63, scope: !680)
!744 = !{!711, !671, i64 4}
!745 = !DILocation(line: 159, column: 45, scope: !680)
!746 = !{!711, !671, i64 20}
!747 = !{!711, !671, i64 12}
!748 = !{!711, !671, i64 24}
!749 = !{!711, !671, i64 28}
!750 = !DILocation(line: 158, column: 5, scope: !680)
!751 = !DILocation(line: 115, column: 51, scope: !675)
!752 = !DILocation(line: 164, column: 3, scope: !105)
!753 = !DILocation(line: 85, column: 3, scope: !105)
!754 = !DILocation(line: 166, column: 33, scope: !105)
!755 = !DILocation(line: 166, column: 26, scope: !105)
!756 = !DILocation(line: 393, column: 36, scope: !378)
!757 = !DILocation(line: 393, column: 46, scope: !378)
!758 = !DILocation(line: 396, column: 3, scope: !378)
!759 = !{!760, !671, i64 16}
!760 = !{!"", !671, i64 0, !671, i64 4, !671, i64 8, !671, i64 12, !671, i64 16, !671, i64 20, !671, i64 24, !671, i64 28, !671, i64 32, !671, i64 36, !671, i64 40, !671, i64 44}
!761 = !{!760, !671, i64 20}
!762 = !{!760, !671, i64 24}
!763 = !{!760, !671, i64 28}
!764 = !DILocation(line: 399, column: 20, scope: !765)
!765 = distinct !DILexicalBlock(scope: !378, file: !1, line: 399, column: 7)
!766 = !DILocation(line: 399, column: 39, scope: !765)
!767 = !DILocation(line: 399, column: 24, scope: !765)
!768 = !DILocation(line: 401, column: 46, scope: !769)
!769 = distinct !DILexicalBlock(scope: !765, file: !1, line: 400, column: 3)
!770 = !DILocation(line: 401, column: 12, scope: !769)
!771 = !DILocation(line: 402, column: 23, scope: !772)
!772 = distinct !DILexicalBlock(scope: !773, file: !1, line: 402, column: 5)
!773 = distinct !DILexicalBlock(scope: !769, file: !1, line: 402, column: 5)
!774 = !DILocation(line: 402, column: 5, scope: !773)
!775 = !DILocation(line: 404, column: 7, scope: !776)
!776 = distinct !DILexicalBlock(scope: !772, file: !1, line: 403, column: 5)
!777 = !DILocation(line: 404, column: 18, scope: !776)
!778 = !DILocation(line: 409, column: 5, scope: !779)
!779 = distinct !DILexicalBlock(scope: !765, file: !1, line: 408, column: 3)
!780 = !DILocation(line: 411, column: 35, scope: !781)
!781 = distinct !DILexicalBlock(scope: !779, file: !1, line: 410, column: 5)
!782 = !DILocation(line: 411, column: 41, scope: !781)
!783 = !DILocation(line: 411, column: 26, scope: !781)
!784 = !DILocation(line: 411, column: 15, scope: !781)
!785 = !DILocation(line: 411, column: 24, scope: !781)
!786 = !DILocation(line: 412, column: 35, scope: !781)
!787 = !DILocation(line: 412, column: 41, scope: !781)
!788 = !DILocation(line: 412, column: 26, scope: !781)
!789 = !DILocation(line: 412, column: 15, scope: !781)
!790 = !DILocation(line: 412, column: 24, scope: !781)
!791 = !DILocation(line: 413, column: 35, scope: !781)
!792 = !DILocation(line: 413, column: 41, scope: !781)
!793 = !DILocation(line: 413, column: 26, scope: !781)
!794 = !DILocation(line: 413, column: 24, scope: !781)
!795 = !DILocation(line: 414, column: 5, scope: !781)
!796 = !DILocation(line: 416, column: 24, scope: !378)
!797 = !DILocation(line: 439, column: 41, scope: !448)
!798 = !DILocation(line: 439, column: 51, scope: !448)
!799 = !DILocation(line: 442, column: 3, scope: !448)
!800 = !{!760, !671, i64 0}
!801 = !{!760, !671, i64 4}
!802 = !{!760, !671, i64 8}
!803 = !{!760, !671, i64 12}
!804 = !DILocation(line: 445, column: 18, scope: !805)
!805 = distinct !DILexicalBlock(scope: !448, file: !1, line: 445, column: 7)
!806 = !DILocation(line: 445, column: 7, scope: !448)
!807 = !DILocation(line: 447, column: 23, scope: !808)
!808 = distinct !DILexicalBlock(scope: !809, file: !1, line: 447, column: 5)
!809 = distinct !DILexicalBlock(scope: !810, file: !1, line: 447, column: 5)
!810 = distinct !DILexicalBlock(scope: !805, file: !1, line: 446, column: 3)
!811 = !DILocation(line: 447, column: 5, scope: !809)
!812 = !DILocation(line: 449, column: 7, scope: !813)
!813 = distinct !DILexicalBlock(scope: !808, file: !1, line: 448, column: 5)
!814 = !DILocation(line: 449, column: 22, scope: !813)
!815 = !DILocation(line: 454, column: 5, scope: !816)
!816 = distinct !DILexicalBlock(scope: !805, file: !1, line: 453, column: 3)
!817 = !DILocation(line: 455, column: 5, scope: !816)
!818 = !DILocation(line: 457, column: 15, scope: !819)
!819 = distinct !DILexicalBlock(scope: !816, file: !1, line: 456, column: 5)
!820 = !DILocation(line: 457, column: 28, scope: !819)
!821 = !DILocation(line: 458, column: 15, scope: !819)
!822 = !DILocation(line: 458, column: 28, scope: !819)
!823 = !DILocation(line: 459, column: 28, scope: !819)
!824 = !DILocation(line: 460, column: 5, scope: !819)
!825 = !DILocation(line: 462, column: 24, scope: !448)
!826 = !DILocation(line: 485, column: 40, scope: !515)
!827 = !DILocation(line: 485, column: 50, scope: !515)
!828 = !DILocation(line: 487, column: 3, scope: !515)
!829 = !{!760, !671, i64 32}
!830 = !{!760, !671, i64 36}
!831 = !{!760, !671, i64 40}
!832 = !{!760, !671, i64 44}
!833 = !DILocation(line: 490, column: 7, scope: !834)
!834 = distinct !DILexicalBlock(scope: !515, file: !1, line: 490, column: 7)
!835 = !DILocation(line: 490, column: 7, scope: !515)
!836 = !DILocation(line: 492, column: 5, scope: !837)
!837 = distinct !DILexicalBlock(scope: !834, file: !1, line: 491, column: 3)
!838 = !DILocation(line: 494, column: 15, scope: !839)
!839 = distinct !DILexicalBlock(scope: !837, file: !1, line: 493, column: 5)
!840 = !DILocation(line: 494, column: 24, scope: !839)
!841 = !DILocation(line: 495, column: 15, scope: !839)
!842 = !DILocation(line: 495, column: 24, scope: !839)
!843 = !DILocation(line: 496, column: 24, scope: !839)
!844 = !DILocation(line: 497, column: 5, scope: !839)
!845 = !DILocation(line: 501, column: 5, scope: !846)
!846 = distinct !DILexicalBlock(scope: !834, file: !1, line: 500, column: 3)
!847 = !DILocation(line: 503, column: 24, scope: !515)
!848 = !DILocation(line: 294, column: 23, scope: !275)
!849 = !DILocation(line: 297, column: 3, scope: !275)
!850 = !{!851, !671, i64 92}
!851 = !{!"", !668, i64 0, !668, i64 8, !668, i64 16, !668, i64 24, !668, i64 32, !668, i64 40, !668, i64 48, !668, i64 56, !668, i64 64, !668, i64 72, !668, i64 80, !671, i64 88, !671, i64 92, !671, i64 96, !671, i64 100, !671, i64 104, !671, i64 108, !671, i64 112, !671, i64 116, !671, i64 120, !671, i64 124, !671, i64 128, !671, i64 132, !671, i64 136, !671, i64 140, !671, i64 144, !671, i64 148, !671, i64 152, !671, i64 156, !671, i64 160, !671, i64 164, !671, i64 168, !671, i64 172, !671, i64 176, !671, i64 180, !671, i64 184, !671, i64 188, !671, i64 192, !671, i64 196, !671, i64 200, !671, i64 204, !671, i64 208, !671, i64 212, !671, i64 216}
!852 = !DILocation(line: 300, column: 3, scope: !275)
!853 = !DILocation(line: 303, column: 7, scope: !854)
!854 = distinct !DILexicalBlock(scope: !275, file: !1, line: 303, column: 7)
!855 = !DILocation(line: 303, column: 7, scope: !275)
!856 = !DILocation(line: 305, column: 21, scope: !857)
!857 = distinct !DILexicalBlock(scope: !858, file: !1, line: 305, column: 5)
!858 = distinct !DILexicalBlock(scope: !859, file: !1, line: 305, column: 5)
!859 = distinct !DILexicalBlock(scope: !854, file: !1, line: 304, column: 3)
!860 = !DILocation(line: 305, column: 19, scope: !857)
!861 = !DILocation(line: 305, column: 5, scope: !858)
!862 = !DILocation(line: 307, column: 7, scope: !863)
!863 = distinct !DILexicalBlock(scope: !857, file: !1, line: 306, column: 5)
!864 = !DILocation(line: 307, column: 36, scope: !863)
!865 = !DILocation(line: 305, column: 41, scope: !857)
!866 = !DILocation(line: 296, column: 7, scope: !275)
!867 = !DILocation(line: 311, column: 26, scope: !275)
!868 = !DILocation(line: 183, column: 37, scope: !608)
!869 = !DILocation(line: 190, column: 11, scope: !608)
!870 = !DILocation(line: 186, column: 8, scope: !608)
!871 = !DILocation(line: 192, column: 11, scope: !872)
!872 = distinct !DILexicalBlock(scope: !608, file: !1, line: 192, column: 7)
!873 = !{!874, !671, i64 0}
!874 = !{!"", !671, i64 0, !671, i64 4, !668, i64 8, !668, i64 16, !668, i64 24, !668, i64 32, !668, i64 40, !668, i64 48, !668, i64 56, !672, i64 64, !668, i64 72, !668, i64 80, !668, i64 88, !668, i64 96, !671, i64 104, !668, i64 112, !672, i64 120, !668, i64 128, !668, i64 136, !668, i64 144}
!875 = !DILocation(line: 192, column: 20, scope: !872)
!876 = !DILocation(line: 192, column: 7, scope: !608)
!877 = !DILocation(line: 201, column: 7, scope: !608)
!878 = !DILocation(line: 201, column: 22, scope: !608)
!879 = !{!874, !671, i64 104}
!880 = !DILocation(line: 185, column: 8, scope: !608)
!881 = !DILocation(line: 194, column: 45, scope: !882)
!882 = distinct !DILexicalBlock(scope: !872, file: !1, line: 193, column: 3)
!883 = !DILocation(line: 194, column: 16, scope: !882)
!884 = !DILocation(line: 194, column: 23, scope: !882)
!885 = !{!667, !668, i64 120}
!886 = !DILocation(line: 187, column: 13, scope: !608)
!887 = !DILocation(line: 205, column: 9, scope: !888)
!888 = distinct !DILexicalBlock(scope: !889, file: !1, line: 204, column: 3)
!889 = distinct !DILexicalBlock(scope: !890, file: !1, line: 203, column: 3)
!890 = distinct !DILexicalBlock(scope: !608, file: !1, line: 203, column: 3)
!891 = !{!874, !668, i64 96}
!892 = !DILocation(line: 206, column: 43, scope: !888)
!893 = !{!894, !668, i64 96}
!894 = !{!"PGExtras", !671, i64 0, !668, i64 8, !672, i64 16, !668, i64 24, !668, i64 32, !668, i64 40, !668, i64 48, !671, i64 56, !668, i64 64, !668, i64 72, !668, i64 80, !668, i64 88, !668, i64 96, !669, i64 104, !669, i64 168, !669, i64 232}
!895 = !DILocation(line: 206, column: 9, scope: !888)
!896 = !{!874, !668, i64 112}
!897 = !DILocation(line: 207, column: 43, scope: !888)
!898 = !{!894, !668, i64 48}
!899 = !DILocation(line: 207, column: 9, scope: !888)
!900 = !{!874, !668, i64 16}
!901 = !DILocation(line: 208, column: 43, scope: !888)
!902 = !{!894, !668, i64 8}
!903 = !DILocation(line: 208, column: 9, scope: !888)
!904 = !{!874, !668, i64 8}
!905 = !DILocation(line: 209, column: 43, scope: !888)
!906 = !{!894, !668, i64 40}
!907 = !DILocation(line: 209, column: 9, scope: !888)
!908 = !{!874, !668, i64 88}
!909 = !DILocation(line: 211, column: 53, scope: !888)
!910 = !DILocation(line: 211, column: 43, scope: !888)
!911 = !{!894, !668, i64 24}
!912 = !DILocation(line: 211, column: 9, scope: !888)
!913 = !{!874, !668, i64 24}
!914 = !DILocation(line: 212, column: 43, scope: !888)
!915 = !{!894, !668, i64 32}
!916 = !DILocation(line: 212, column: 9, scope: !888)
!917 = !{!874, !668, i64 32}
!918 = !DILocation(line: 216, column: 11, scope: !919)
!919 = distinct !DILexicalBlock(scope: !920, file: !1, line: 215, column: 5)
!920 = distinct !DILexicalBlock(scope: !921, file: !1, line: 214, column: 5)
!921 = distinct !DILexicalBlock(scope: !888, file: !1, line: 214, column: 5)
!922 = !{!874, !668, i64 40}
!923 = !DILocation(line: 203, column: 3, scope: !890)
!924 = !DILocation(line: 205, column: 5, scope: !888)
!925 = !DILocation(line: 205, column: 31, scope: !888)
!926 = !DILocation(line: 206, column: 33, scope: !888)
!927 = !DILocation(line: 206, column: 5, scope: !888)
!928 = !DILocation(line: 206, column: 31, scope: !888)
!929 = !DILocation(line: 207, column: 33, scope: !888)
!930 = !DILocation(line: 207, column: 5, scope: !888)
!931 = !DILocation(line: 207, column: 31, scope: !888)
!932 = !DILocation(line: 208, column: 33, scope: !888)
!933 = !DILocation(line: 208, column: 5, scope: !888)
!934 = !DILocation(line: 208, column: 31, scope: !888)
!935 = !DILocation(line: 209, column: 49, scope: !888)
!936 = !DILocation(line: 209, column: 33, scope: !888)
!937 = !DILocation(line: 209, column: 5, scope: !888)
!938 = !DILocation(line: 209, column: 31, scope: !888)
!939 = !DILocation(line: 210, column: 53, scope: !888)
!940 = !DILocation(line: 210, column: 33, scope: !888)
!941 = !DILocation(line: 210, column: 5, scope: !888)
!942 = !DILocation(line: 210, column: 31, scope: !888)
!943 = !{!667, !671, i64 16}
!944 = !DILocation(line: 211, column: 33, scope: !888)
!945 = !DILocation(line: 211, column: 5, scope: !888)
!946 = !DILocation(line: 211, column: 31, scope: !888)
!947 = !DILocation(line: 212, column: 53, scope: !888)
!948 = !DILocation(line: 212, column: 33, scope: !888)
!949 = !DILocation(line: 212, column: 5, scope: !888)
!950 = !DILocation(line: 212, column: 31, scope: !888)
!951 = !DILocation(line: 185, column: 13, scope: !608)
!952 = !DILocation(line: 216, column: 21, scope: !919)
!953 = !DILocation(line: 214, column: 5, scope: !921)
!954 = !DILocation(line: 216, column: 53, scope: !919)
!955 = !DILocation(line: 216, column: 7, scope: !919)
!956 = !DILocation(line: 216, column: 51, scope: !919)
!957 = !DILocation(line: 217, column: 11, scope: !958)
!958 = distinct !DILexicalBlock(scope: !919, file: !1, line: 217, column: 11)
!959 = !DILocation(line: 217, column: 36, scope: !958)
!960 = !DILocation(line: 217, column: 52, scope: !958)
!961 = !DILocation(line: 217, column: 41, scope: !958)
!962 = !DILocation(line: 219, column: 52, scope: !963)
!963 = distinct !DILexicalBlock(scope: !958, file: !1, line: 218, column: 7)
!964 = !DILocation(line: 220, column: 7, scope: !963)
!965 = !DILocation(line: 203, column: 27, scope: !889)
!966 = !DILocation(line: 203, column: 21, scope: !889)
!967 = !DILocation(line: 223, column: 1, scope: !608)
!968 = !DILocation(line: 349, column: 35, scope: !343)
!969 = !DILocation(line: 350, column: 42, scope: !343)
!970 = !DILocation(line: 355, column: 7, scope: !971)
!971 = distinct !DILexicalBlock(scope: !343, file: !1, line: 355, column: 7)
!972 = !DILocation(line: 355, column: 7, scope: !343)
!973 = !DILocation(line: 357, column: 5, scope: !974)
!974 = distinct !DILexicalBlock(scope: !971, file: !1, line: 356, column: 3)
!975 = !DILocation(line: 241, column: 40, scope: !617, inlinedAt: !976)
!976 = distinct !DILocation(line: 358, column: 5, scope: !974)
!977 = !DILocation(line: 247, column: 11, scope: !617, inlinedAt: !976)
!978 = !DILocation(line: 244, column: 8, scope: !617, inlinedAt: !976)
!979 = !DILocation(line: 243, column: 8, scope: !617, inlinedAt: !976)
!980 = !DILocation(line: 249, column: 30, scope: !981, inlinedAt: !976)
!981 = distinct !DILexicalBlock(scope: !982, file: !1, line: 249, column: 3)
!982 = distinct !DILexicalBlock(scope: !617, file: !1, line: 249, column: 3)
!983 = !{!667, !671, i64 24}
!984 = !DILocation(line: 249, column: 21, scope: !981, inlinedAt: !976)
!985 = !DILocation(line: 249, column: 3, scope: !982, inlinedAt: !976)
!986 = !DILocation(line: 259, column: 41, scope: !987, inlinedAt: !976)
!987 = distinct !DILexicalBlock(scope: !988, file: !1, line: 257, column: 7)
!988 = distinct !DILexicalBlock(scope: !989, file: !1, line: 255, column: 5)
!989 = distinct !DILexicalBlock(scope: !990, file: !1, line: 254, column: 5)
!990 = distinct !DILexicalBlock(scope: !991, file: !1, line: 254, column: 5)
!991 = distinct !DILexicalBlock(scope: !981, file: !1, line: 250, column: 3)
!992 = !DILocation(line: 259, column: 15, scope: !987, inlinedAt: !976)
!993 = !DILocation(line: 358, column: 5, scope: !974)
!994 = !DILocation(line: 251, column: 13, scope: !991, inlinedAt: !976)
!995 = !DILocation(line: 243, column: 13, scope: !617, inlinedAt: !976)
!996 = !DILocation(line: 252, column: 19, scope: !991, inlinedAt: !976)
!997 = !DILocation(line: 243, column: 27, scope: !617, inlinedAt: !976)
!998 = !DILocation(line: 243, column: 20, scope: !617, inlinedAt: !976)
!999 = !DILocation(line: 254, column: 27, scope: !989, inlinedAt: !976)
!1000 = !DILocation(line: 254, column: 5, scope: !990, inlinedAt: !976)
!1001 = !DILocation(line: 256, column: 7, scope: !988, inlinedAt: !976)
!1002 = !{!667, !668, i64 32}
!1003 = !DILocation(line: 259, column: 34, scope: !987, inlinedAt: !976)
!1004 = !{!874, !668, i64 128}
!1005 = !DILocation(line: 259, column: 11, scope: !987, inlinedAt: !976)
!1006 = !DILocation(line: 259, column: 32, scope: !987, inlinedAt: !976)
!1007 = !DILocation(line: 260, column: 11, scope: !987, inlinedAt: !976)
!1008 = !DILocation(line: 263, column: 50, scope: !987, inlinedAt: !976)
!1009 = !DILocation(line: 263, column: 43, scope: !987, inlinedAt: !976)
!1010 = !DILocation(line: 263, column: 74, scope: !987, inlinedAt: !976)
!1011 = !{!1012, !668, i64 24}
!1012 = !{!"PGA", !668, i64 0, !671, i64 8, !671, i64 12, !668, i64 16, !668, i64 24, !671, i64 32, !671, i64 36, !668, i64 40, !671, i64 48, !671, i64 52, !668, i64 56, !668, i64 64, !668, i64 72, !668, i64 80, !671, i64 88, !671, i64 92, !668, i64 96}
!1013 = !DILocation(line: 263, column: 15, scope: !987, inlinedAt: !976)
!1014 = !DILocation(line: 263, column: 11, scope: !987, inlinedAt: !976)
!1015 = !DILocation(line: 263, column: 32, scope: !987, inlinedAt: !976)
!1016 = !DILocation(line: 264, column: 11, scope: !987, inlinedAt: !976)
!1017 = !DILocation(line: 266, column: 11, scope: !987, inlinedAt: !976)
!1018 = !DILocation(line: 267, column: 7, scope: !987, inlinedAt: !976)
!1019 = !DILocation(line: 361, column: 42, scope: !343)
!1020 = !DILocation(line: 361, column: 46, scope: !343)
!1021 = !DILocation(line: 361, column: 12, scope: !343)
!1022 = !DILocation(line: 352, column: 7, scope: !343)
!1023 = !DILocation(line: 363, column: 3, scope: !343)
!1024 = !DILocation(line: 366, column: 36, scope: !350)
!1025 = !DILocation(line: 370, column: 16, scope: !350)
!1026 = !DILocation(line: 371, column: 1, scope: !350)
!1027 = !DILocation(line: 524, column: 32, scope: !581)
!1028 = !DILocation(line: 528, column: 17, scope: !581)
!1029 = !DILocation(line: 528, column: 8, scope: !581)
!1030 = !DILocation(line: 531, column: 15, scope: !1031)
!1031 = distinct !DILexicalBlock(scope: !581, file: !1, line: 531, column: 7)
!1032 = !{!667, !671, i64 112}
!1033 = !DILocation(line: 531, column: 25, scope: !1031)
!1034 = !DILocation(line: 531, column: 7, scope: !581)
!1035 = !DILocation(line: 536, column: 10, scope: !581)
!1036 = !DILocation(line: 527, column: 15, scope: !581)
!1037 = !DILocation(line: 537, column: 7, scope: !1038)
!1038 = distinct !DILexicalBlock(scope: !581, file: !1, line: 537, column: 7)
!1039 = !DILocation(line: 537, column: 7, scope: !581)
!1040 = !DILocation(line: 539, column: 5, scope: !1041)
!1041 = distinct !DILexicalBlock(scope: !1038, file: !1, line: 538, column: 3)
!1042 = !DILocation(line: 540, column: 26, scope: !1041)
!1043 = !DILocation(line: 540, column: 5, scope: !1041)
!1044 = !DILocation(line: 526, column: 7, scope: !581)
!1045 = !DILocation(line: 541, column: 27, scope: !1046)
!1046 = distinct !DILexicalBlock(scope: !1047, file: !1, line: 541, column: 5)
!1047 = distinct !DILexicalBlock(scope: !1041, file: !1, line: 541, column: 5)
!1048 = !{!1049, !671, i64 0}
!1049 = !{!"", !671, i64 0, !668, i64 8}
!1050 = !DILocation(line: 541, column: 19, scope: !1046)
!1051 = !DILocation(line: 541, column: 5, scope: !1047)
!1052 = !DILocation(line: 543, column: 21, scope: !1053)
!1053 = distinct !DILexicalBlock(scope: !1046, file: !1, line: 542, column: 5)
!1054 = !{!1049, !668, i64 8}
!1055 = !DILocation(line: 543, column: 29, scope: !1053)
!1056 = !{!1057, !669, i64 0}
!1057 = !{!"", !669, i64 0, !668, i64 8, !668, i64 16, !669, i64 24}
!1058 = !DILocation(line: 543, column: 7, scope: !1053)
!1059 = !DILocation(line: 546, column: 70, scope: !1060)
!1060 = distinct !DILexicalBlock(scope: !1053, file: !1, line: 544, column: 7)
!1061 = !{!1057, !668, i64 8}
!1062 = !DILocation(line: 547, column: 37, scope: !1060)
!1063 = !DILocation(line: 547, column: 41, scope: !1060)
!1064 = !DILocation(line: 547, column: 58, scope: !1060)
!1065 = !{!1057, !668, i64 16}
!1066 = !DILocation(line: 546, column: 11, scope: !1060)
!1067 = !DILocation(line: 548, column: 11, scope: !1060)
!1068 = !DILocation(line: 551, column: 70, scope: !1060)
!1069 = !DILocation(line: 552, column: 47, scope: !1060)
!1070 = !{!1071, !1071, i64 0}
!1071 = !{!"long", !669, i64 0}
!1072 = !DILocation(line: 552, column: 23, scope: !1060)
!1073 = !DILocation(line: 552, column: 64, scope: !1060)
!1074 = !DILocation(line: 551, column: 11, scope: !1060)
!1075 = !DILocation(line: 553, column: 11, scope: !1060)
!1076 = !DILocation(line: 556, column: 72, scope: !1060)
!1077 = !DILocation(line: 557, column: 37, scope: !1060)
!1078 = !DILocation(line: 557, column: 41, scope: !1060)
!1079 = !{!672, !672, i64 0}
!1080 = !DILocation(line: 557, column: 58, scope: !1060)
!1081 = !DILocation(line: 556, column: 11, scope: !1060)
!1082 = !DILocation(line: 558, column: 11, scope: !1060)
!1083 = !DILocation(line: 561, column: 11, scope: !1060)
!1084 = !DILocation(line: 562, column: 11, scope: !1060)
!1085 = !DILocation(line: 566, column: 5, scope: !1041)
!1086 = !DILocation(line: 567, column: 3, scope: !1041)
!1087 = !DILocation(line: 570, column: 5, scope: !1088)
!1088 = distinct !DILexicalBlock(scope: !1038, file: !1, line: 569, column: 3)
!1089 = !DILocation(line: 575, column: 1, scope: !581)
