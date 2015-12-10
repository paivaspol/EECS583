; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/NewHyperslab.c'
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

@.str = private unnamed_addr constant [83 x i8] c"../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/NewHyperslab.c\00", align 1
@.str1 = private unnamed_addr constant [9 x i8] c"PUGHSlab\00", align 1
@.str2 = private unnamed_addr constant [67 x i8] c"No predefined PUGHSlab routine available to convert '%s' into '%s'\00", align 1
@.str3 = private unnamed_addr constant [106 x i8] c"Datatype conversion routine supplied but no datatype conversion requested. Ignoring conversion routine...\00", align 1
@CCTK_MyProc = external global i32 (%struct.cGH*)*
@.str4 = private unnamed_addr constant [96 x i8] c"$Header: /cactus/CactusPUGH/PUGHSlab/src/NewHyperslab.c,v 1.11 2001/12/03 22:10:04 tradke Exp $\00", align 1
@.str5 = private unnamed_addr constant [23 x i8] c"Invalid variable index\00", align 1
@.str6 = private unnamed_addr constant [18 x i8] c"Invalid timelevel\00", align 1
@.str7 = private unnamed_addr constant [37 x i8] c"NULL pointer(s) passed as parameters\00", align 1
@.str8 = private unnamed_addr constant [36 x i8] c"Invalid hyperslab extent parameters\00", align 1
@.str9 = private unnamed_addr constant [40 x i8] c"Invalid hyperslab downsample parameters\00", align 1
@.str10 = private unnamed_addr constant [24 x i8] c"Couldn't get group info\00", align 1
@.str11 = private unnamed_addr constant [28 x i8] c"Invalid variable group type\00", align 1
@.str12 = private unnamed_addr constant [28 x i8] c"Invalid hyperslab dimension\00", align 1
@.str13 = private unnamed_addr constant [40 x i8] c"Given direction vector is a null vector\00", align 1
@.str14 = private unnamed_addr constant [40 x i8] c"Given direction vector isn't orthogonal\00", align 1
@.str15 = private unnamed_addr constant [62 x i8] c"No GH extension for PUGH found. Did you activate thorn PUGH ?\00", align 1

; Function Attrs: nounwind optsize readnone ssp uwtable
define i8* @CCTKi_version_CactusPUGH_PUGHSlab_NewHyperslab_c() #0 {
  ret i8* getelementptr inbounds ([96 x i8]* @.str4, i64 0, i64 0)
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @NewHyperslab_GetLocalHyperslab(%struct.cGH* %GH, i32 %vindex, i32 %vtimelvl, i32 %hdim, i32 %htype, void (i8*, i8*, i32, i32, i32)* %conversion_fn, i32* readonly %global_startpoint, i32* %directions, i32* readonly %extents, i32* %downsample_, i8** %hdata, i32* %free_hdata, i32* %hsize, i32* %hsize_global, i32* %hoffset_global) #1 {
  %vinfo.i = alloca %struct.cGroup, align 4
  %vinfo = alloca %struct.cGroup, align 4
  %1 = icmp eq i8** %hdata, null
  br i1 %1, label %3, label %2

; <label>:2                                       ; preds = %0
  store i8* null, i8** %hdata, align 8, !tbaa !2
  br label %3

; <label>:3                                       ; preds = %0, %2
  %4 = icmp eq i32* %free_hdata, null
  br i1 %4, label %6, label %5

; <label>:5                                       ; preds = %3
  store i32 0, i32* %free_hdata, align 4, !tbaa !6
  br label %6

; <label>:6                                       ; preds = %3, %5
  %7 = bitcast %struct.cGroup* %vinfo.i to i8*
  call void @llvm.lifetime.start(i64 32, i8* %7)
  %8 = icmp slt i32 %vindex, 0
  br i1 %8, label %select.unfold, label %9

; <label>:9                                       ; preds = %6
  %10 = tail call i32 @CCTK_NumVars() #6
  %11 = icmp sgt i32 %10, %vindex
  br i1 %11, label %12, label %select.unfold

; <label>:12                                      ; preds = %9
  %13 = icmp slt i32 %vtimelvl, 0
  br i1 %13, label %select.unfold, label %14

; <label>:14                                      ; preds = %12
  %15 = tail call i32 @CCTK_NumTimeLevelsFromVarI(i32 %vindex) #6
  %16 = icmp sgt i32 %15, %vtimelvl
  br i1 %16, label %17, label %select.unfold

; <label>:17                                      ; preds = %14
  %18 = icmp ne i32* %global_startpoint, null
  %19 = icmp ne i32* %directions, null
  %or.cond.i = and i1 %18, %19
  %20 = icmp ne i32* %extents, null
  %or.cond3.i = and i1 %or.cond.i, %20
  %21 = icmp ne i32* %downsample_, null
  %or.cond5.i = and i1 %or.cond3.i, %21
  %22 = icmp ne i8** %hdata, null
  %or.cond7.i = and i1 %or.cond5.i, %22
  %23 = icmp ne i32* %hsize, null
  %or.cond9.i = and i1 %or.cond7.i, %23
  br i1 %or.cond9.i, label %.preheader11.i, label %select.unfold

.preheader11.i:                                   ; preds = %17
  %24 = icmp sgt i32 %hdim, 0
  br i1 %24, label %.lr.ph19.i, label %._crit_edge20.i

.lr.ph19.i:                                       ; preds = %.preheader11.i
  %25 = sext i32 %hdim to i64
  br label %28

; <label>:26                                      ; preds = %32
  %27 = icmp slt i64 %indvars.iv.next24.i, %25
  br i1 %27, label %28, label %._crit_edge20.i

; <label>:28                                      ; preds = %26, %.lr.ph19.i
  %indvars.iv23.i = phi i64 [ 0, %.lr.ph19.i ], [ %indvars.iv.next24.i, %26 ]
  %29 = getelementptr inbounds i32* %extents, i64 %indvars.iv23.i
  %30 = load i32* %29, align 4, !tbaa !6
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %select.unfold, label %32

; <label>:32                                      ; preds = %28
  %33 = getelementptr inbounds i32* %downsample_, i64 %indvars.iv23.i
  %34 = load i32* %33, align 4, !tbaa !6
  %35 = icmp slt i32 %34, 1
  %indvars.iv.next24.i = add nuw nsw i64 %indvars.iv23.i, 1
  br i1 %35, label %select.unfold, label %26

._crit_edge20.i:                                  ; preds = %26, %.preheader11.i
  %36 = tail call i32 @CCTK_GroupIndexFromVarI(i32 %vindex) #6
  %37 = call i32 @CCTK_GroupData(i32 %36, %struct.cGroup* %vinfo.i) #6
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %select.unfold, label %39

; <label>:39                                      ; preds = %._crit_edge20.i
  %40 = getelementptr inbounds %struct.cGroup* %vinfo.i, i64 0, i32 0
  %41 = load i32* %40, align 4, !tbaa !8
  %42 = and i32 %41, -2
  %switch.i = icmp eq i32 %42, 2
  br i1 %switch.i, label %43, label %select.unfold

; <label>:43                                      ; preds = %39
  %44 = icmp slt i32 %hdim, 1
  br i1 %44, label %select.unfold, label %45

; <label>:45                                      ; preds = %43
  %46 = getelementptr inbounds %struct.cGroup* %vinfo.i, i64 0, i32 4
  %47 = load i32* %46, align 4, !tbaa !10
  %48 = icmp slt i32 %47, %hdim
  br i1 %48, label %select.unfold, label %.preheader.lr.ph.i

.preheader.lr.ph.i:                               ; preds = %45
  %49 = icmp sgt i32 %47, 0
  %50 = sext i32 %47 to i64
  %51 = sext i32 %hdim to i64
  br i1 %49, label %.preheader.lr.ph.i..preheader.lr.ph.i.split_crit_edge, label %select.unfold

.preheader.lr.ph.i..preheader.lr.ph.i.split_crit_edge: ; preds = %.preheader.lr.ph.i
  %52 = add i32 %47, -1
  br label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.preheader.lr.ph.i..preheader.lr.ph.i.split_crit_edge, %58
  %indvars.iv21.i = phi i64 [ 0, %.preheader.lr.ph.i..preheader.lr.ph.i.split_crit_edge ], [ %indvars.iv.next22.i, %58 ]
  %53 = mul nsw i64 %indvars.iv21.i, %50
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ 0, %.lr.ph.i.preheader ]
  %num_directions.014.i = phi i32 [ %num_directions.0..i, %.lr.ph.i ], [ 0, %.lr.ph.i.preheader ]
  %54 = add nsw i64 %indvars.iv.i, %53
  %55 = getelementptr inbounds i32* %directions, i64 %54
  %56 = load i32* %55, align 4, !tbaa !6
  %not..i = icmp ne i32 %56, 0
  %57 = zext i1 %not..i to i32
  %num_directions.0..i = add nsw i32 %57, %num_directions.014.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %lftr.wideiv136 = trunc i64 %indvars.iv.i to i32
  %exitcond137 = icmp eq i32 %lftr.wideiv136, %52
  br i1 %exitcond137, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i
  switch i32 %num_directions.0..i, label %select.unfold [
    i32 0, label %select.unfold.loopexit159
    i32 1, label %58
  ]

; <label>:58                                      ; preds = %._crit_edge.i
  %indvars.iv.next22.i = add nuw nsw i64 %indvars.iv21.i, 1
  %59 = icmp slt i64 %indvars.iv.next22.i, %51
  br i1 %59, label %.lr.ph.i.preheader, label %._crit_edge17.i

._crit_edge17.i:                                  ; preds = %58
  %60 = call %struct.PGH* @PUGH_pGH(%struct.cGH* %GH) #6
  %61 = icmp eq %struct.PGH* %60, null
  br i1 %61, label %select.unfold, label %63

select.unfold.loopexit159:                        ; preds = %._crit_edge.i
  br label %select.unfold

select.unfold:                                    ; preds = %32, %28, %._crit_edge.i, %select.unfold.loopexit159, %.preheader.lr.ph.i, %._crit_edge17.i, %9, %6, %14, %12, %17, %._crit_edge20.i, %39, %45, %43
  %.0.i.ph = phi i8* [ getelementptr inbounds ([28 x i8]* @.str12, i64 0, i64 0), %43 ], [ getelementptr inbounds ([28 x i8]* @.str12, i64 0, i64 0), %45 ], [ getelementptr inbounds ([28 x i8]* @.str11, i64 0, i64 0), %39 ], [ getelementptr inbounds ([24 x i8]* @.str10, i64 0, i64 0), %._crit_edge20.i ], [ getelementptr inbounds ([37 x i8]* @.str7, i64 0, i64 0), %17 ], [ getelementptr inbounds ([18 x i8]* @.str6, i64 0, i64 0), %12 ], [ getelementptr inbounds ([18 x i8]* @.str6, i64 0, i64 0), %14 ], [ getelementptr inbounds ([23 x i8]* @.str5, i64 0, i64 0), %6 ], [ getelementptr inbounds ([23 x i8]* @.str5, i64 0, i64 0), %9 ], [ getelementptr inbounds ([62 x i8]* @.str15, i64 0, i64 0), %._crit_edge17.i ], [ getelementptr inbounds ([40 x i8]* @.str13, i64 0, i64 0), %.preheader.lr.ph.i ], [ getelementptr inbounds ([40 x i8]* @.str13, i64 0, i64 0), %select.unfold.loopexit159 ], [ getelementptr inbounds ([40 x i8]* @.str14, i64 0, i64 0), %._crit_edge.i ], [ getelementptr inbounds ([36 x i8]* @.str8, i64 0, i64 0), %28 ], [ getelementptr inbounds ([40 x i8]* @.str9, i64 0, i64 0), %32 ]
  call void @llvm.lifetime.end(i64 32, i8* %7)
  %62 = call i32 @CCTK_Warn(i32 1, i32 270, i8* getelementptr inbounds ([83 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* %.0.i.ph) #6
  br label %606

; <label>:63                                      ; preds = %._crit_edge17.i
  call void @llvm.lifetime.end(i64 32, i8* %7)
  %64 = call i32 @CCTK_GroupIndexFromVarI(i32 %vindex) #6
  %65 = call i32 @CCTK_GroupData(i32 %64, %struct.cGroup* %vinfo) #6
  %66 = getelementptr inbounds %struct.cGroup* %vinfo, i64 0, i32 1
  %67 = load i32* %66, align 4, !tbaa !11
  %68 = icmp eq i32 %67, %htype
  %69 = icmp eq void (i8*, i8*, i32, i32, i32)* %conversion_fn, null
  br i1 %68, label %79, label %70

; <label>:70                                      ; preds = %63
  br i1 %69, label %71, label %82

; <label>:71                                      ; preds = %70
  %72 = call void (i8*, i8*, i32, i32, i32)* (i32, i32)* @PUGHSlabi_GetDatatypeConversionFn(i32 %67, i32 %htype) #6
  %73 = icmp eq void (i8*, i8*, i32, i32, i32)* %72, null
  br i1 %73, label %74, label %82

; <label>:74                                      ; preds = %71
  %75 = load i32* %66, align 4, !tbaa !11
  %76 = call i8* @CCTK_VarTypeName(i32 %75) #6
  %77 = call i8* @CCTK_VarTypeName(i32 %htype) #6
  %78 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 287, i8* getelementptr inbounds ([83 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([67 x i8]* @.str2, i64 0, i64 0), i8* %76, i8* %77) #6
  br label %606

; <label>:79                                      ; preds = %63
  br i1 %69, label %82, label %80

; <label>:80                                      ; preds = %79
  %81 = call i32 @CCTK_Warn(i32 8, i32 298, i8* getelementptr inbounds ([83 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([106 x i8]* @.str3, i64 0, i64 0)) #6
  br label %82

; <label>:82                                      ; preds = %71, %79, %80, %70
  %.03 = phi void (i8*, i8*, i32, i32, i32)* [ %72, %71 ], [ %conversion_fn, %70 ], [ null, %80 ], [ null, %79 ]
  %83 = getelementptr inbounds %struct.cGroup* %vinfo, i64 0, i32 4
  %84 = load i32* %83, align 4, !tbaa !10
  %85 = shl nsw i32 %84, 3
  %86 = sext i32 %85 to i64
  %87 = shl nsw i64 %86, 2
  %88 = call i8* @malloc(i64 %87) #6
  %89 = bitcast i8* %88 to i32*
  %90 = sext i32 %84 to i64
  %91 = getelementptr inbounds i32* %89, i64 %90
  %92 = shl nsw i32 %84, 1
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32* %89, i64 %93
  %95 = mul nsw i32 %84, 3
  %96 = sext i32 %95 to i64
  %97 = shl nsw i32 %84, 2
  %98 = sext i32 %97 to i64
  %99 = mul nsw i32 %84, 5
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32* %89, i64 %100
  %102 = mul nsw i32 %84, 6
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32* %89, i64 %103
  %105 = mul nsw i32 %84, 7
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32* %89, i64 %106
  %108 = bitcast i32* %104 to i8*
  %109 = bitcast i32* %directions to i8*
  %110 = shl nsw i64 %90, 2
  %111 = call i64 @llvm.objectsize.i64.p0i8(i8* %108, i1 false)
  %112 = call i8* @__memcpy_chk(i8* %108, i8* %109, i64 %110, i64 %111) #6
  %113 = icmp sgt i32 %hdim, 1
  br i1 %113, label %.preheader60.lr.ph, label %._crit_edge106

.preheader60.lr.ph:                               ; preds = %82
  %114 = load i32* %83, align 4, !tbaa !10
  %115 = icmp sgt i32 %114, 0
  %116 = add i32 %114, -1
  %117 = sext i32 %114 to i64
  %118 = add i32 %hdim, -1
  br label %.preheader60

.preheader60:                                     ; preds = %._crit_edge103, %.preheader60.lr.ph
  %indvars.iv132 = phi i64 [ 1, %.preheader60.lr.ph ], [ %indvars.iv.next133, %._crit_edge103 ]
  br i1 %115, label %.lr.ph102, label %._crit_edge103

.lr.ph102:                                        ; preds = %.preheader60, %.lr.ph102
  %indvars.iv129 = phi i64 [ %indvars.iv.next130, %.lr.ph102 ], [ 0, %.preheader60 ]
  %119 = mul nsw i64 %117, %indvars.iv132
  %120 = add nsw i64 %119, %indvars.iv129
  %121 = getelementptr inbounds i32* %directions, i64 %120
  %122 = load i32* %121, align 4, !tbaa !6
  %.sum38 = add nsw i64 %indvars.iv129, %103
  %123 = getelementptr inbounds i32* %89, i64 %.sum38
  %124 = load i32* %123, align 4, !tbaa !6
  %125 = or i32 %124, %122
  store i32 %125, i32* %123, align 4, !tbaa !6
  %indvars.iv.next130 = add nuw nsw i64 %indvars.iv129, 1
  %lftr.wideiv = trunc i64 %indvars.iv129 to i32
  %exitcond131 = icmp eq i32 %lftr.wideiv, %116
  br i1 %exitcond131, label %._crit_edge103, label %.lr.ph102

._crit_edge103:                                   ; preds = %.lr.ph102, %.preheader60
  %indvars.iv.next133 = add nuw nsw i64 %indvars.iv132, 1
  %lftr.wideiv134 = trunc i64 %indvars.iv132 to i32
  %exitcond135 = icmp eq i32 %lftr.wideiv134, %118
  br i1 %exitcond135, label %._crit_edge106, label %.preheader60

._crit_edge106:                                   ; preds = %._crit_edge103, %82
  %126 = call %struct.PGH* @PUGH_pGH(%struct.cGH* %GH) #6
  %127 = sext i32 %vtimelvl to i64
  %128 = sext i32 %vindex to i64
  %129 = getelementptr inbounds %struct.PGH* %126, i64 0, i32 7
  %130 = load i8**** %129, align 8, !tbaa !12
  %131 = getelementptr inbounds i8*** %130, i64 %128
  %132 = load i8*** %131, align 8, !tbaa !2
  %133 = getelementptr inbounds i8** %132, i64 %127
  %134 = bitcast i8** %133 to %struct.PGA**
  %135 = load %struct.PGA** %134, align 8, !tbaa !2
  %136 = load i32 (%struct.cGH*)** @CCTK_MyProc, align 8, !tbaa !2
  %137 = call i32 %136(%struct.cGH* %GH) #6
  %138 = getelementptr inbounds %struct.PGA* %135, i64 0, i32 10
  %139 = load %struct.PGExtras** %138, align 8, !tbaa !15
  %140 = getelementptr inbounds %struct.PGExtras* %139, i64 0, i32 0
  %141 = load i32* %140, align 4, !tbaa !17
  %142 = icmp eq i32 %141, %hdim
  %143 = zext i1 %142 to i32
  %or.cond.i42 = and i1 %24, %142
  br i1 %or.cond.i42, label %.lr.ph.i43, label %checkFullHyperslab.exit

.lr.ph.i43:                                       ; preds = %._crit_edge106
  %144 = getelementptr inbounds %struct.PGA* %135, i64 0, i32 11
  %145 = load %struct.PConnectivity** %144, align 8, !tbaa !19
  %146 = getelementptr inbounds %struct.PConnectivity* %145, i64 0, i32 3
  %147 = load i32** %146, align 8, !tbaa !20
  %148 = add nsw i64 %51, -1
  br label %149

; <label>:149                                     ; preds = %149, %.lr.ph.i43
  %indvars.iv.i44 = phi i64 [ 0, %.lr.ph.i43 ], [ %indvars.iv.next.i45, %149 ]
  %is_full_hyperslab.02.i = phi i32 [ %143, %.lr.ph.i43 ], [ %169, %149 ]
  %150 = getelementptr inbounds i32* %global_startpoint, i64 %indvars.iv.i44
  %151 = load i32* %150, align 4, !tbaa !6
  %152 = icmp eq i32 %151, 0
  %153 = zext i1 %152 to i32
  %154 = and i32 %153, %is_full_hyperslab.02.i
  %155 = getelementptr inbounds i32* %extents, i64 %indvars.iv.i44
  %156 = load i32* %155, align 4, !tbaa !6
  %157 = icmp slt i32 %156, 1
  %158 = zext i1 %157 to i32
  %159 = and i32 %154, %158
  %160 = getelementptr inbounds i32* %downsample_, i64 %indvars.iv.i44
  %161 = load i32* %160, align 4, !tbaa !6
  %162 = icmp slt i32 %161, 2
  %163 = zext i1 %162 to i32
  %164 = and i32 %159, %163
  %165 = getelementptr inbounds i32* %147, i64 %indvars.iv.i44
  %166 = load i32* %165, align 4, !tbaa !6
  %167 = icmp eq i32 %166, 0
  %168 = zext i1 %167 to i32
  %169 = and i32 %164, %168
  %indvars.iv.next.i45 = add nuw nsw i64 %indvars.iv.i44, 1
  %exitcond = icmp eq i64 %indvars.iv.i44, %148
  br i1 %exitcond, label %checkFullHyperslab.exit, label %149

checkFullHyperslab.exit:                          ; preds = %149, %._crit_edge106
  %is_full_hyperslab.1.i = phi i32 [ %143, %._crit_edge106 ], [ %169, %149 ]
  %170 = icmp ne i32 %is_full_hyperslab.1.i, 0
  br i1 %170, label %173, label %.preheader59

.preheader59:                                     ; preds = %checkFullHyperslab.exit
  %171 = load i32* %83, align 4, !tbaa !10
  %172 = icmp sgt i32 %171, 0
  br i1 %172, label %.lr.ph100, label %.loopexit57.thread

; <label>:173                                     ; preds = %checkFullHyperslab.exit
  %174 = bitcast i32* %91 to i8*
  %175 = load i32* %83, align 4, !tbaa !10
  %176 = sext i32 %175 to i64
  %177 = shl nsw i64 %176, 2
  %178 = call i64 @llvm.objectsize.i64.p0i8(i8* %174, i1 false)
  %179 = call i8* @__memset_chk(i8* %174, i32 0, i64 %177, i64 %178) #6
  %180 = bitcast i32* %94 to i8*
  %181 = load %struct.PGExtras** %138, align 8, !tbaa !15
  %182 = getelementptr inbounds %struct.PGExtras* %181, i64 0, i32 6
  %183 = bitcast i32** %182 to i8**
  %184 = load i8** %183, align 8, !tbaa !22
  %185 = load i32* %83, align 4, !tbaa !10
  %186 = sext i32 %185 to i64
  %187 = shl nsw i64 %186, 2
  %188 = call i64 @llvm.objectsize.i64.p0i8(i8* %180, i1 false)
  %189 = call i8* @__memcpy_chk(i8* %180, i8* %184, i64 %187, i64 %188) #6
  %190 = bitcast i32* %101 to i8*
  %191 = bitcast i32* %downsample_ to i8*
  %192 = load i32* %83, align 4, !tbaa !10
  %193 = sext i32 %192 to i64
  %194 = shl nsw i64 %193, 2
  %195 = call i64 @llvm.objectsize.i64.p0i8(i8* %190, i1 false)
  %196 = call i8* @__memcpy_chk(i8* %190, i8* %191, i64 %194, i64 %195) #6
  %197 = bitcast i32* %hsize to i8*
  %198 = load %struct.PGExtras** %138, align 8, !tbaa !15
  %199 = getelementptr inbounds %struct.PGExtras* %198, i64 0, i32 6
  %200 = bitcast i32** %199 to i8**
  %201 = load i8** %200, align 8, !tbaa !22
  %202 = load i32* %83, align 4, !tbaa !10
  %203 = sext i32 %202 to i64
  %204 = shl nsw i64 %203, 2
  %205 = call i64 @llvm.objectsize.i64.p0i8(i8* %197, i1 false)
  %206 = call i8* @__memcpy_chk(i8* %197, i8* %201, i64 %204, i64 %205) #6
  %207 = bitcast i32* %hsize_global to i8*
  %208 = load %struct.PGExtras** %138, align 8, !tbaa !15
  %209 = getelementptr inbounds %struct.PGExtras* %208, i64 0, i32 1
  %210 = bitcast i32** %209 to i8**
  %211 = load i8** %210, align 8, !tbaa !23
  %212 = load i32* %83, align 4, !tbaa !10
  %213 = sext i32 %212 to i64
  %214 = shl nsw i64 %213, 2
  %215 = call i64 @llvm.objectsize.i64.p0i8(i8* %207, i1 false)
  %216 = call i8* @__memcpy_chk(i8* %207, i8* %211, i64 %214, i64 %215) #6
  %217 = load %struct.PGExtras** %138, align 8, !tbaa !15
  %218 = getelementptr inbounds %struct.PGExtras* %217, i64 0, i32 7
  %219 = load i32* %218, align 4, !tbaa !24
  br label %.loopexit57

.preheader58:                                     ; preds = %257
  br i1 %172, label %.lr.ph97, label %.loopexit57.thread

.lr.ph97:                                         ; preds = %.preheader58
  %220 = getelementptr inbounds %struct.cGroup* %vinfo, i64 0, i32 3
  %221 = sext i32 %137 to i64
  br label %264

.lr.ph100:                                        ; preds = %.preheader59, %257
  %indvars.iv127 = phi i64 [ %indvars.iv.next128, %257 ], [ 0, %.preheader59 ]
  %.0299 = phi i32 [ %.1, %257 ], [ 0, %.preheader59 ]
  %.sum33 = add nsw i64 %indvars.iv127, %103
  %222 = getelementptr inbounds i32* %89, i64 %.sum33
  %223 = load i32* %222, align 4, !tbaa !6
  %224 = icmp eq i32 %223, 0
  br i1 %224, label %251, label %225

; <label>:225                                     ; preds = %.lr.ph100
  %226 = sext i32 %.0299 to i64
  %227 = getelementptr inbounds i32* %extents, i64 %226
  %228 = load i32* %227, align 4, !tbaa !6
  %229 = icmp sgt i32 %228, 0
  br i1 %229, label %230, label %239

; <label>:230                                     ; preds = %225
  %231 = getelementptr inbounds i32* %global_startpoint, i64 %indvars.iv127
  %232 = load i32* %231, align 4, !tbaa !6
  %233 = add nsw i32 %232, %228
  %234 = getelementptr inbounds %struct.PGExtras* %139, i64 0, i32 1
  %235 = load i32** %234, align 8, !tbaa !23
  %236 = getelementptr inbounds i32* %235, i64 %indvars.iv127
  %237 = load i32* %236, align 4, !tbaa !6
  %238 = icmp slt i32 %233, %237
  %. = select i1 %238, i32 %233, i32 %237
  br label %244

; <label>:239                                     ; preds = %225
  %240 = getelementptr inbounds %struct.PGExtras* %139, i64 0, i32 1
  %241 = load i32** %240, align 8, !tbaa !23
  %242 = getelementptr inbounds i32* %241, i64 %indvars.iv127
  %243 = load i32* %242, align 4, !tbaa !6
  br label %244

; <label>:244                                     ; preds = %230, %239
  %245 = phi i32 [ %243, %239 ], [ %., %230 ]
  %.sum36 = add nsw i64 %indvars.iv127, %98
  %246 = getelementptr inbounds i32* %89, i64 %.sum36
  store i32 %245, i32* %246, align 4, !tbaa !6
  %247 = getelementptr inbounds i32* %downsample_, i64 %226
  %248 = load i32* %247, align 4, !tbaa !6
  %.sum37 = add nsw i64 %indvars.iv127, %100
  %249 = getelementptr inbounds i32* %89, i64 %.sum37
  store i32 %248, i32* %249, align 4, !tbaa !6
  %250 = add nsw i32 %.0299, 1
  br label %257

; <label>:251                                     ; preds = %.lr.ph100
  %252 = getelementptr inbounds i32* %global_startpoint, i64 %indvars.iv127
  %253 = load i32* %252, align 4, !tbaa !6
  %254 = add nsw i32 %253, 1
  %.sum34 = add nsw i64 %indvars.iv127, %98
  %255 = getelementptr inbounds i32* %89, i64 %.sum34
  store i32 %254, i32* %255, align 4, !tbaa !6
  %.sum35 = add nsw i64 %indvars.iv127, %100
  %256 = getelementptr inbounds i32* %89, i64 %.sum35
  store i32 1, i32* %256, align 4, !tbaa !6
  br label %257

; <label>:257                                     ; preds = %244, %251
  %.1 = phi i32 [ %250, %244 ], [ %.0299, %251 ]
  %indvars.iv.next128 = add nuw nsw i64 %indvars.iv127, 1
  %258 = sext i32 %171 to i64
  %259 = icmp slt i64 %indvars.iv.next128, %258
  br i1 %259, label %.lr.ph100, label %.preheader58

.preheader56:                                     ; preds = %305
  %260 = icmp sgt i32 %306, 0
  br i1 %260, label %.lr.ph93, label %.loopexit57.thread

.lr.ph93:                                         ; preds = %.preheader56
  %261 = getelementptr inbounds %struct.cGroup* %vinfo, i64 0, i32 3
  %262 = sext i32 %137 to i64
  %263 = getelementptr inbounds %struct.PGA* %135, i64 0, i32 11
  br label %309

; <label>:264                                     ; preds = %.lr.ph97, %305
  %indvars.iv125 = phi i64 [ 0, %.lr.ph97 ], [ %indvars.iv.next126, %305 ]
  %265 = load i32* %220, align 4, !tbaa !25
  %266 = trunc i64 %indvars.iv125 to i32
  %267 = call i32 @CCTK_StaggerDirIndex(i32 %266, i32 %265) #6
  %268 = getelementptr inbounds i32* %global_startpoint, i64 %indvars.iv125
  %269 = load i32* %268, align 4, !tbaa !6
  %270 = load %struct.PGExtras** %138, align 8, !tbaa !15
  %271 = getelementptr inbounds %struct.PGExtras* %270, i64 0, i32 3
  %272 = load i32*** %271, align 8, !tbaa !26
  %273 = getelementptr inbounds i32** %272, i64 %221
  %274 = load i32** %273, align 8, !tbaa !2
  %275 = getelementptr inbounds i32* %274, i64 %indvars.iv125
  %276 = load i32* %275, align 4, !tbaa !6
  %277 = sext i32 %267 to i64
  %278 = getelementptr inbounds %struct.PGExtras* %270, i64 0, i32 13, i64 %277, i64 1
  %279 = load i32** %278, align 8, !tbaa !2
  %280 = getelementptr inbounds i32* %279, i64 %indvars.iv125
  %281 = load i32* %280, align 4, !tbaa !6
  %282 = add nsw i32 %281, %276
  %283 = icmp slt i32 %269, %282
  br i1 %283, label %284, label %303

; <label>:284                                     ; preds = %264
  %285 = getelementptr inbounds %struct.PGExtras* %270, i64 0, i32 13, i64 %277, i64 0
  %286 = load i32** %285, align 8, !tbaa !2
  %287 = getelementptr inbounds i32* %286, i64 %indvars.iv125
  %288 = load i32* %287, align 4, !tbaa !6
  %289 = add nsw i32 %288, %276
  %290 = icmp sgt i32 %289, %269
  br i1 %290, label %291, label %301

; <label>:291                                     ; preds = %284
  %292 = sub nsw i32 %289, %269
  %.sum31 = add nsw i64 %indvars.iv125, %100
  %293 = getelementptr inbounds i32* %89, i64 %.sum31
  %294 = load i32* %293, align 4, !tbaa !6
  %295 = sdiv i32 %292, %294
  %296 = srem i32 %292, %294
  %not.49 = icmp ne i32 %296, 0
  %297 = zext i1 %not.49 to i32
  %.39 = add nsw i32 %297, %295
  %298 = mul nsw i32 %.39, %294
  %299 = add nsw i32 %298, %269
  %.sum32 = add nsw i64 %indvars.iv125, %96
  %300 = getelementptr inbounds i32* %89, i64 %.sum32
  store i32 %299, i32* %300, align 4, !tbaa !6
  br label %305

; <label>:301                                     ; preds = %284
  %.sum30 = add nsw i64 %indvars.iv125, %96
  %302 = getelementptr inbounds i32* %89, i64 %.sum30
  store i32 %269, i32* %302, align 4, !tbaa !6
  br label %305

; <label>:303                                     ; preds = %264
  %.sum29 = add nsw i64 %indvars.iv125, %96
  %304 = getelementptr inbounds i32* %89, i64 %.sum29
  store i32 -1, i32* %304, align 4, !tbaa !6
  br label %305

; <label>:305                                     ; preds = %303, %301, %291
  %indvars.iv.next126 = add nuw nsw i64 %indvars.iv125, 1
  %306 = load i32* %83, align 4, !tbaa !10
  %307 = sext i32 %306 to i64
  %308 = icmp slt i64 %indvars.iv.next126, %307
  br i1 %308, label %264, label %.preheader56

; <label>:309                                     ; preds = %.lr.ph93, %414
  %indvars.iv123 = phi i64 [ 0, %.lr.ph93 ], [ %indvars.iv.next124, %414 ]
  %.292 = phi i32 [ 0, %.lr.ph93 ], [ %.3, %414 ]
  %totals.090 = phi i32 [ 1, %.lr.ph93 ], [ %totals.2, %414 ]
  %310 = load i32* %261, align 4, !tbaa !25
  %311 = trunc i64 %indvars.iv123 to i32
  %312 = call i32 @CCTK_StaggerDirIndex(i32 %311, i32 %310) #6
  %.sum17 = add nsw i64 %indvars.iv123, %96
  %313 = getelementptr inbounds i32* %89, i64 %.sum17
  %314 = load i32* %313, align 4, !tbaa !6
  %315 = icmp sgt i32 %314, -1
  %316 = load %struct.PGExtras** %138, align 8, !tbaa !15
  %317 = getelementptr inbounds %struct.PGExtras* %316, i64 0, i32 3
  %318 = load i32*** %317, align 8, !tbaa !26
  %319 = getelementptr inbounds i32** %318, i64 %262
  %320 = load i32** %319, align 8, !tbaa !2
  br i1 %315, label %321, label %._crit_edge143

._crit_edge143:                                   ; preds = %309
  %.pre147 = sext i32 %312 to i64
  br label %334

; <label>:321                                     ; preds = %309
  %322 = getelementptr inbounds i32* %320, i64 %indvars.iv123
  %323 = load i32* %322, align 4, !tbaa !6
  %324 = sext i32 %312 to i64
  %325 = getelementptr inbounds %struct.PGExtras* %316, i64 0, i32 13, i64 %324, i64 1
  %326 = load i32** %325, align 8, !tbaa !2
  %327 = getelementptr inbounds i32* %326, i64 %indvars.iv123
  %328 = load i32* %327, align 4, !tbaa !6
  %329 = add nsw i32 %328, %323
  %330 = icmp slt i32 %314, %329
  br i1 %330, label %331, label %334

; <label>:331                                     ; preds = %321
  %332 = sub nsw i32 %314, %323
  %.sum28 = add nsw i64 %indvars.iv123, %90
  %333 = getelementptr inbounds i32* %89, i64 %.sum28
  store i32 %332, i32* %333, align 4, !tbaa !6
  br label %336

; <label>:334                                     ; preds = %._crit_edge143, %321
  %.pre141.pre-phi = phi i64 [ %.pre147, %._crit_edge143 ], [ %324, %321 ]
  %.sum18 = add nsw i64 %indvars.iv123, %90
  %335 = getelementptr inbounds i32* %89, i64 %.sum18
  store i32 -1, i32* %335, align 4, !tbaa !6
  br label %336

; <label>:336                                     ; preds = %334, %331
  %.pre-phi = phi i64 [ %.pre141.pre-phi, %334 ], [ %324, %331 ]
  %.sum19 = add nsw i64 %indvars.iv123, %98
  %337 = getelementptr inbounds i32* %89, i64 %.sum19
  %338 = load i32* %337, align 4, !tbaa !6
  %339 = getelementptr inbounds i32* %320, i64 %indvars.iv123
  %340 = load i32* %339, align 4, !tbaa !6
  %341 = getelementptr inbounds %struct.PGExtras* %316, i64 0, i32 13, i64 %.pre-phi, i64 0
  %342 = load i32** %341, align 8, !tbaa !2
  %343 = getelementptr inbounds i32* %342, i64 %indvars.iv123
  %344 = load i32* %343, align 4, !tbaa !6
  %345 = add nsw i32 %344, %340
  %346 = icmp sgt i32 %338, %345
  br i1 %346, label %349, label %.thread

.thread:                                          ; preds = %336
  %.sum20 = add nsw i64 %indvars.iv123, %93
  %347 = getelementptr inbounds i32* %89, i64 %.sum20
  store i32 -1, i32* %347, align 4, !tbaa !6
  %348 = getelementptr inbounds i32* %89, i64 %.sum20
  br label %._crit_edge148

; <label>:349                                     ; preds = %336
  %350 = getelementptr inbounds %struct.PGExtras* %316, i64 0, i32 13, i64 %.pre-phi, i64 1
  %351 = load i32** %350, align 8, !tbaa !2
  %352 = getelementptr inbounds i32* %351, i64 %indvars.iv123
  %353 = load i32* %352, align 4, !tbaa !6
  %354 = sub nsw i32 %338, %340
  %355 = icmp slt i32 %353, %354
  %.40 = select i1 %355, i32 %353, i32 %354
  %.sum27 = add nsw i64 %indvars.iv123, %93
  %356 = getelementptr inbounds i32* %89, i64 %.sum27
  store i32 %.40, i32* %356, align 4, !tbaa !6
  %357 = getelementptr inbounds i32* %89, i64 %.sum27
  %358 = icmp slt i32 %.40, 0
  br i1 %358, label %._crit_edge148, label %360

._crit_edge148:                                   ; preds = %.thread, %349
  %359 = phi i32* [ %348, %.thread ], [ %357, %349 ]
  %.pre152 = add nsw i64 %indvars.iv123, %90
  %.pre153 = getelementptr inbounds i32* %89, i64 %.pre152
  br label %364

; <label>:360                                     ; preds = %349
  %.sum22 = add nsw i64 %indvars.iv123, %90
  %361 = getelementptr inbounds i32* %89, i64 %.sum22
  %362 = load i32* %361, align 4, !tbaa !6
  %363 = icmp slt i32 %362, 0
  br i1 %363, label %364, label %367

; <label>:364                                     ; preds = %._crit_edge148, %360
  %365 = phi i32* [ %359, %._crit_edge148 ], [ %357, %360 ]
  %.pre-phi154 = phi i32* [ %.pre153, %._crit_edge148 ], [ %361, %360 ]
  %366 = load i32* %.pre-phi154, align 4, !tbaa !6
  store i32 %366, i32* %365, align 4, !tbaa !6
  br label %367

; <label>:367                                     ; preds = %364, %360
  %368 = phi i32 [ %366, %364 ], [ %.40, %360 ]
  %totals.1 = phi i32 [ 0, %364 ], [ %totals.090, %360 ]
  %.sum23 = add nsw i64 %indvars.iv123, %103
  %369 = getelementptr inbounds i32* %89, i64 %.sum23
  %370 = load i32* %369, align 4, !tbaa !6
  %371 = icmp eq i32 %370, 0
  br i1 %371, label %414, label %372

; <label>:372                                     ; preds = %367
  %373 = load i32* %337, align 4, !tbaa !6
  %374 = getelementptr inbounds i32* %global_startpoint, i64 %indvars.iv123
  %375 = load i32* %374, align 4, !tbaa !6
  %376 = sub nsw i32 %373, %375
  %.sum24 = add nsw i64 %indvars.iv123, %100
  %377 = getelementptr inbounds i32* %89, i64 %.sum24
  %378 = load i32* %377, align 4, !tbaa !6
  %379 = sdiv i32 %376, %378
  %380 = sext i32 %.292 to i64
  %381 = getelementptr inbounds i32* %hsize_global, i64 %380
  store i32 %379, i32* %381, align 4, !tbaa !6
  %382 = load i32* %374, align 4, !tbaa !6
  %383 = sub nsw i32 %373, %382
  %384 = srem i32 %383, %378
  %385 = icmp eq i32 %384, 0
  br i1 %385, label %388, label %386

; <label>:386                                     ; preds = %372
  %387 = add nsw i32 %379, 1
  store i32 %387, i32* %381, align 4, !tbaa !6
  br label %388

; <label>:388                                     ; preds = %372, %386
  %389 = phi i32 [ %379, %372 ], [ %387, %386 ]
  %390 = load %struct.PConnectivity** %263, align 8, !tbaa !19
  %391 = getelementptr inbounds %struct.PConnectivity* %390, i64 0, i32 3
  %392 = load i32** %391, align 8, !tbaa !20
  %393 = getelementptr inbounds i32* %392, i64 %indvars.iv123
  %394 = load i32* %393, align 4, !tbaa !6
  %395 = icmp eq i32 %394, 0
  br i1 %395, label %403, label %396

; <label>:396                                     ; preds = %388
  %397 = getelementptr inbounds %struct.PGExtras* %316, i64 0, i32 12
  %398 = load i32** %397, align 8, !tbaa !27
  %399 = getelementptr inbounds i32* %398, i64 %indvars.iv123
  %400 = load i32* %399, align 4, !tbaa !6
  %401 = shl nsw i32 %400, 1
  %402 = sub nsw i32 %389, %401
  store i32 %402, i32* %381, align 4, !tbaa !6
  br label %403

; <label>:403                                     ; preds = %388, %396
  %.sum25 = add nsw i64 %indvars.iv123, %90
  %404 = getelementptr inbounds i32* %89, i64 %.sum25
  %405 = load i32* %404, align 4, !tbaa !6
  %406 = sub nsw i32 %368, %405
  %407 = sdiv i32 %406, %378
  %408 = getelementptr inbounds i32* %hsize, i64 %380
  %409 = srem i32 %406, %378
  %410 = icmp eq i32 %409, 0
  %411 = add nsw i32 %407, 1
  %.157 = select i1 %410, i32 %407, i32 %411
  %.158 = select i1 %410, i32 %407, i32 %411
  store i32 %.157, i32* %408, align 4, !tbaa !6
  %412 = mul nsw i32 %.158, %totals.1
  %413 = add nsw i32 %.292, 1
  br label %414

; <label>:414                                     ; preds = %367, %403
  %totals.2 = phi i32 [ %412, %403 ], [ %totals.1, %367 ]
  %.3 = phi i32 [ %413, %403 ], [ %.292, %367 ]
  %indvars.iv.next124 = add nuw nsw i64 %indvars.iv123, 1
  %415 = load i32* %83, align 4, !tbaa !10
  %416 = sext i32 %415 to i64
  %417 = icmp slt i64 %indvars.iv.next124, %416
  br i1 %417, label %309, label %.loopexit57

.loopexit57:                                      ; preds = %414, %173
  %totals.3 = phi i32 [ %219, %173 ], [ %totals.2, %414 ]
  %.4 = phi i32 [ %hdim, %173 ], [ %.3, %414 ]
  %418 = icmp sgt i32 %totals.3, 0
  br i1 %418, label %.loopexit57.thread, label %600

.loopexit57.thread:                               ; preds = %.preheader59, %.preheader58, %.preheader56, %.loopexit57
  %totals.3155 = phi i32 [ %totals.3, %.loopexit57 ], [ 1, %.preheader56 ], [ 1, %.preheader58 ], [ 1, %.preheader59 ]
  %419 = call i8* @CCTK_VarDataPtrI(%struct.cGH* %GH, i32 %vtimelvl, i32 %vindex) #6
  %420 = icmp eq i32* %hoffset_global, null
  br i1 %420, label %.loopexit55, label %.preheader54

.preheader54:                                     ; preds = %.loopexit57.thread
  %421 = load i32* %83, align 4, !tbaa !10
  %422 = icmp sgt i32 %421, 0
  br i1 %422, label %.lr.ph89, label %.loopexit55

.lr.ph89:                                         ; preds = %.preheader54
  %423 = sext i32 %137 to i64
  %424 = getelementptr inbounds %struct.PGA* %135, i64 0, i32 11
  br label %425

; <label>:425                                     ; preds = %.lr.ph89, %466
  %indvars.iv121 = phi i64 [ 0, %.lr.ph89 ], [ %indvars.iv.next122, %466 ]
  %.588 = phi i32 [ 0, %.lr.ph89 ], [ %.6, %466 ]
  %.sum14 = add nsw i64 %indvars.iv121, %103
  %426 = getelementptr inbounds i32* %89, i64 %.sum14
  %427 = load i32* %426, align 4, !tbaa !6
  %428 = icmp eq i32 %427, 0
  br i1 %428, label %466, label %429

; <label>:429                                     ; preds = %425
  br i1 %170, label %430, label %440

; <label>:430                                     ; preds = %429
  %431 = sext i32 %.588 to i64
  %432 = load %struct.PGExtras** %138, align 8, !tbaa !15
  %433 = getelementptr inbounds %struct.PGExtras* %432, i64 0, i32 3
  %434 = load i32*** %433, align 8, !tbaa !26
  %435 = getelementptr inbounds i32** %434, i64 %423
  %436 = load i32** %435, align 8, !tbaa !2
  %437 = getelementptr inbounds i32* %436, i64 %431
  %438 = load i32* %437, align 4, !tbaa !6
  %439 = getelementptr inbounds i32* %hoffset_global, i64 %431
  store i32 %438, i32* %439, align 4, !tbaa !6
  br label %464

; <label>:440                                     ; preds = %429
  %.sum15 = add nsw i64 %indvars.iv121, %96
  %441 = getelementptr inbounds i32* %89, i64 %.sum15
  %442 = load i32* %441, align 4, !tbaa !6
  %443 = getelementptr inbounds i32* %global_startpoint, i64 %indvars.iv121
  %444 = load i32* %443, align 4, !tbaa !6
  %445 = sub nsw i32 %442, %444
  %.sum16 = add nsw i64 %indvars.iv121, %100
  %446 = getelementptr inbounds i32* %89, i64 %.sum16
  %447 = load i32* %446, align 4, !tbaa !6
  %448 = sdiv i32 %445, %447
  %449 = sext i32 %.588 to i64
  %450 = getelementptr inbounds i32* %hoffset_global, i64 %449
  store i32 %448, i32* %450, align 4, !tbaa !6
  %451 = load %struct.PConnectivity** %424, align 8, !tbaa !19
  %452 = getelementptr inbounds %struct.PConnectivity* %451, i64 0, i32 3
  %453 = load i32** %452, align 8, !tbaa !20
  %454 = getelementptr inbounds i32* %453, i64 %indvars.iv121
  %455 = load i32* %454, align 4, !tbaa !6
  %456 = icmp eq i32 %455, 0
  br i1 %456, label %464, label %457

; <label>:457                                     ; preds = %440
  %458 = load %struct.PGExtras** %138, align 8, !tbaa !15
  %459 = getelementptr inbounds %struct.PGExtras* %458, i64 0, i32 12
  %460 = load i32** %459, align 8, !tbaa !27
  %461 = getelementptr inbounds i32* %460, i64 %indvars.iv121
  %462 = load i32* %461, align 4, !tbaa !6
  %463 = sub nsw i32 %448, %462
  store i32 %463, i32* %450, align 4, !tbaa !6
  br label %464

; <label>:464                                     ; preds = %440, %457, %430
  %465 = add nsw i32 %.588, 1
  br label %466

; <label>:466                                     ; preds = %425, %464
  %.6 = phi i32 [ %465, %464 ], [ %.588, %425 ]
  %indvars.iv.next122 = add nuw nsw i64 %indvars.iv121, 1
  %467 = sext i32 %421 to i64
  %468 = icmp slt i64 %indvars.iv.next122, %467
  br i1 %468, label %425, label %.loopexit55

.loopexit55:                                      ; preds = %466, %.preheader54, %.loopexit57.thread
  %469 = icmp eq void (i8*, i8*, i32, i32, i32)* %.03, null
  %or.cond = and i1 %469, %170
  br i1 %or.cond, label %470, label %471

; <label>:470                                     ; preds = %.loopexit55
  store i8* %419, i8** %hdata, align 8, !tbaa !2
  br label %.loopexit53

; <label>:471                                     ; preds = %.loopexit55
  %472 = load i32* %66, align 4, !tbaa !11
  %473 = call i32 @CCTK_VarTypeSize(i32 %472) #6
  %474 = call i32 @CCTK_VarTypeSize(i32 %htype) #6
  %475 = mul nsw i32 %474, %totals.3155
  %476 = sext i32 %475 to i64
  %477 = call i8* @malloc(i64 %476) #6
  store i8* %477, i8** %hdata, align 8, !tbaa !2
  store i32 1, i32* %free_hdata, align 4, !tbaa !6
  store i32 1, i32* %107, align 4, !tbaa !6
  %478 = load i32* %83, align 4, !tbaa !10
  %479 = icmp sgt i32 %478, 1
  br i1 %479, label %.lr.ph85, label %._crit_edge86

.lr.ph85:                                         ; preds = %471
  %480 = load %struct.PGExtras** %138, align 8, !tbaa !15
  %481 = getelementptr inbounds %struct.PGExtras* %480, i64 0, i32 6
  %482 = load i32** %481, align 8, !tbaa !22
  br label %483

; <label>:483                                     ; preds = %.lr.ph85, %483
  %indvars.iv119 = phi i64 [ 1, %.lr.ph85 ], [ %indvars.iv.next120, %483 ]
  %484 = add nsw i64 %indvars.iv119, -1
  %.sum12 = add nsw i64 %484, %106
  %485 = getelementptr inbounds i32* %89, i64 %.sum12
  %486 = load i32* %485, align 4, !tbaa !6
  %487 = getelementptr inbounds i32* %482, i64 %484
  %488 = load i32* %487, align 4, !tbaa !6
  %489 = mul nsw i32 %488, %486
  %.sum13 = add nsw i64 %indvars.iv119, %106
  %490 = getelementptr inbounds i32* %89, i64 %.sum13
  store i32 %489, i32* %490, align 4, !tbaa !6
  %indvars.iv.next120 = add nuw nsw i64 %indvars.iv119, 1
  %491 = sext i32 %478 to i64
  %492 = icmp slt i64 %indvars.iv.next120, %491
  br i1 %492, label %483, label %._crit_edge86

._crit_edge86:                                    ; preds = %483, %471
  %493 = load i32* %94, align 4, !tbaa !6
  %494 = load i32* %91, align 4, !tbaa !6
  %495 = sub nsw i32 %493, %494
  %496 = load i32* %101, align 4, !tbaa !6
  %497 = sdiv i32 %495, %496
  %498 = srem i32 %495, %496
  %not. = icmp ne i32 %498, 0
  %499 = zext i1 %not. to i32
  %.41 = add nsw i32 %499, %497
  %500 = mul nsw i32 %.41, %474
  %501 = icmp sgt i32 %478, 0
  %502 = sext i32 %478 to i64
  br i1 %501, label %.lr.ph80, label %._crit_edge81

.lr.ph80:                                         ; preds = %._crit_edge86, %.lr.ph80
  %indvars.iv117 = phi i64 [ %indvars.iv.next118, %.lr.ph80 ], [ 0, %._crit_edge86 ]
  %.sum9 = add nsw i64 %indvars.iv117, %90
  %503 = getelementptr inbounds i32* %89, i64 %.sum9
  %504 = load i32* %503, align 4, !tbaa !6
  %505 = mul nsw i32 %504, %473
  store i32 %505, i32* %503, align 4, !tbaa !6
  %.sum10 = add nsw i64 %indvars.iv117, %93
  %506 = getelementptr inbounds i32* %89, i64 %.sum10
  %507 = load i32* %506, align 4, !tbaa !6
  %508 = mul nsw i32 %507, %473
  store i32 %508, i32* %506, align 4, !tbaa !6
  %.sum11 = add nsw i64 %indvars.iv117, %100
  %509 = getelementptr inbounds i32* %89, i64 %.sum11
  %510 = load i32* %509, align 4, !tbaa !6
  %511 = mul nsw i32 %510, %473
  store i32 %511, i32* %509, align 4, !tbaa !6
  %indvars.iv.next118 = add nuw nsw i64 %indvars.iv117, 1
  %512 = icmp slt i64 %indvars.iv.next118, %502
  br i1 %512, label %.lr.ph80, label %._crit_edge81

._crit_edge81:                                    ; preds = %.lr.ph80, %._crit_edge86
  %513 = bitcast i32* %91 to i8*
  %514 = shl nsw i64 %502, 2
  %515 = call i64 @llvm.objectsize.i64.p0i8(i8* %88, i1 false)
  %516 = call i8* @__memcpy_chk(i8* %88, i8* %513, i64 %514, i64 %515) #6
  %517 = getelementptr inbounds i8* %88, i64 4
  %518 = bitcast i8* %517 to i32*
  %.sum5 = or i64 %93, 1
  %519 = getelementptr inbounds i32* %89, i64 %.sum5
  %520 = icmp ne void (i8*, i8*, i32, i32, i32)* %.03, null
  %521 = sext i32 %500 to i64
  %.sum = add nsw i64 %100, 1
  %522 = getelementptr inbounds i32* %89, i64 %.sum
  %523 = icmp sgt i32 %500, 0
  %524 = sext i32 %473 to i64
  %525 = sext i32 %474 to i64
  %.pre142 = load i32* %83, align 4, !tbaa !10
  br label %526

; <label>:526                                     ; preds = %._crit_edge81, %595
  %527 = phi i32 [ %.pre142, %._crit_edge81 ], [ %593, %595 ]
  %typed_hdata.0 = phi i8* [ %477, %._crit_edge81 ], [ %596, %595 ]
  %528 = icmp sgt i32 %527, 1
  br i1 %528, label %532, label %.loopexit51.thread156

.loopexit51.thread156:                            ; preds = %526
  %529 = load i32* %89, align 4, !tbaa !6
  %530 = sext i32 %529 to i64
  %531 = getelementptr inbounds i8* %419, i64 %530
  br label %._crit_edge73

; <label>:532                                     ; preds = %526
  %533 = load i32* %518, align 4, !tbaa !6
  %534 = load i32* %519, align 4, !tbaa !6
  %535 = icmp slt i32 %533, %534
  br i1 %535, label %.loopexit51.thread, label %.preheader52

.loopexit51.thread:                               ; preds = %532
  %536 = load i32* %89, align 4, !tbaa !6
  %537 = sext i32 %536 to i64
  %538 = getelementptr inbounds i8* %419, i64 %537
  br label %.lr.ph72

.preheader52:                                     ; preds = %532
  %539 = icmp sgt i32 %527, 2
  br i1 %539, label %.lr.ph, label %554

.lr.ph:                                           ; preds = %.preheader52
  %540 = sext i32 %527 to i64
  br label %541

; <label>:541                                     ; preds = %.lr.ph, %550
  %indvars.iv = phi i64 [ 2, %.lr.ph ], [ %indvars.iv.next, %550 ]
  %.sum7 = add nsw i64 %indvars.iv, %100
  %542 = getelementptr inbounds i32* %89, i64 %.sum7
  %543 = load i32* %542, align 4, !tbaa !6
  %544 = getelementptr inbounds i32* %89, i64 %indvars.iv
  %545 = load i32* %544, align 4, !tbaa !6
  %546 = add nsw i32 %545, %543
  store i32 %546, i32* %544, align 4, !tbaa !6
  %.sum8 = add nsw i64 %indvars.iv, %93
  %547 = getelementptr inbounds i32* %89, i64 %.sum8
  %548 = load i32* %547, align 4, !tbaa !6
  %549 = icmp slt i32 %546, %548
  br i1 %549, label %._crit_edge, label %550

; <label>:550                                     ; preds = %541
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %551 = icmp slt i64 %indvars.iv.next, %540
  br i1 %551, label %541, label %._crit_edge64

._crit_edge:                                      ; preds = %541
  %552 = trunc i64 %indvars.iv to i32
  br label %554

._crit_edge64:                                    ; preds = %550
  %553 = trunc i64 %indvars.iv.next to i32
  br label %554

; <label>:554                                     ; preds = %._crit_edge64, %._crit_edge, %.preheader52
  %vdim.7.lcssa = phi i32 [ %552, %._crit_edge ], [ %553, %._crit_edge64 ], [ 2, %.preheader52 ]
  %555 = icmp slt i32 %vdim.7.lcssa, %527
  br i1 %555, label %.preheader50, label %.loopexit53

.preheader50:                                     ; preds = %554
  %556 = icmp sgt i32 %vdim.7.lcssa, 1
  br i1 %556, label %.lr.ph68, label %.loopexit51

.lr.ph68:                                         ; preds = %.preheader50
  %557 = sext i32 %vdim.7.lcssa to i64
  br label %558

; <label>:558                                     ; preds = %.lr.ph68, %558
  %indvars.iv111 = phi i64 [ %557, %.lr.ph68 ], [ %indvars.iv.next112, %558 ]
  %indvars.iv.next112 = add nsw i64 %indvars.iv111, -1
  %.sum6 = add nsw i64 %indvars.iv.next112, %90
  %559 = getelementptr inbounds i32* %89, i64 %.sum6
  %560 = load i32* %559, align 4, !tbaa !6
  %561 = getelementptr inbounds i32* %89, i64 %indvars.iv.next112
  store i32 %560, i32* %561, align 4, !tbaa !6
  %562 = icmp sgt i64 %indvars.iv.next112, 1
  br i1 %562, label %558, label %.loopexit51

.loopexit51:                                      ; preds = %558, %.preheader50
  %563 = load i32* %89, align 4, !tbaa !6
  %564 = sext i32 %563 to i64
  %565 = getelementptr inbounds i8* %419, i64 %564
  br i1 %528, label %.lr.ph72, label %._crit_edge73

.lr.ph72:                                         ; preds = %.loopexit51.thread, %.loopexit51
  %566 = phi i8* [ %538, %.loopexit51.thread ], [ %565, %.loopexit51 ]
  %567 = sext i32 %527 to i64
  br label %568

; <label>:568                                     ; preds = %.lr.ph72, %568
  %indvars.iv113 = phi i64 [ 1, %.lr.ph72 ], [ %indvars.iv.next114, %568 ]
  %typed_vdata.069 = phi i8* [ %566, %.lr.ph72 ], [ %575, %568 ]
  %569 = getelementptr inbounds i32* %89, i64 %indvars.iv113
  %570 = load i32* %569, align 4, !tbaa !6
  %.sum4 = add nsw i64 %indvars.iv113, %106
  %571 = getelementptr inbounds i32* %89, i64 %.sum4
  %572 = load i32* %571, align 4, !tbaa !6
  %573 = mul nsw i32 %572, %570
  %574 = sext i32 %573 to i64
  %575 = getelementptr inbounds i8* %typed_vdata.069, i64 %574
  %indvars.iv.next114 = add nuw nsw i64 %indvars.iv113, 1
  %576 = icmp slt i64 %indvars.iv.next114, %567
  br i1 %576, label %568, label %._crit_edge73

._crit_edge73:                                    ; preds = %568, %.loopexit51.thread156, %.loopexit51
  %typed_vdata.0.lcssa = phi i8* [ %565, %.loopexit51 ], [ %531, %.loopexit51.thread156 ], [ %575, %568 ]
  %577 = load i32* %101, align 4, !tbaa !6
  %578 = icmp eq i32 %577, %473
  br i1 %578, label %579, label %584

; <label>:579                                     ; preds = %._crit_edge73
  br i1 %520, label %580, label %581

; <label>:580                                     ; preds = %579
  call void %.03(i8* %typed_vdata.0.lcssa, i8* %typed_hdata.0, i32 %.41, i32 1, i32 1) #6
  br label %.loopexit

; <label>:581                                     ; preds = %579
  %582 = call i64 @llvm.objectsize.i64.p0i8(i8* %typed_hdata.0, i1 false)
  %583 = call i8* @__memcpy_chk(i8* %typed_hdata.0, i8* %typed_vdata.0.lcssa, i64 %521, i64 %582) #6
  br label %.loopexit

; <label>:584                                     ; preds = %._crit_edge73
  br i1 %520, label %585, label %.preheader

.preheader:                                       ; preds = %584
  br i1 %523, label %.lr.ph77, label %.loopexit

; <label>:585                                     ; preds = %584
  call void %.03(i8* %typed_vdata.0.lcssa, i8* %typed_hdata.0, i32 %.41, i32 %577, i32 1) #6
  br label %.loopexit

.lr.ph77:                                         ; preds = %.preheader, %.lr.ph77
  %indvars.iv115 = phi i64 [ %indvars.iv.next116, %.lr.ph77 ], [ 0, %.preheader ]
  %typed_vdata.175 = phi i8* [ %591, %.lr.ph77 ], [ %typed_vdata.0.lcssa, %.preheader ]
  %586 = getelementptr inbounds i8* %typed_hdata.0, i64 %indvars.iv115
  %587 = call i64 @llvm.objectsize.i64.p0i8(i8* %586, i1 false)
  %588 = call i8* @__memcpy_chk(i8* %586, i8* %typed_vdata.175, i64 %524, i64 %587) #6
  %589 = load i32* %101, align 4, !tbaa !6
  %590 = sext i32 %589 to i64
  %591 = getelementptr inbounds i8* %typed_vdata.175, i64 %590
  %indvars.iv.next116 = add i64 %indvars.iv115, %525
  %592 = icmp slt i64 %indvars.iv.next116, %521
  br i1 %592, label %.lr.ph77, label %.loopexit

.loopexit:                                        ; preds = %.lr.ph77, %.preheader, %585, %580, %581
  %593 = load i32* %83, align 4, !tbaa !10
  %594 = icmp sgt i32 %593, 1
  br i1 %594, label %595, label %.loopexit53

; <label>:595                                     ; preds = %.loopexit
  %596 = getelementptr inbounds i8* %typed_hdata.0, i64 %521
  %597 = load i32* %522, align 4, !tbaa !6
  %598 = load i32* %518, align 4, !tbaa !6
  %599 = add nsw i32 %598, %597
  store i32 %599, i32* %518, align 4, !tbaa !6
  br label %526

; <label>:600                                     ; preds = %.loopexit57
  %601 = bitcast i32* %hsize to i8*
  %602 = sext i32 %.4 to i64
  %603 = shl nsw i64 %602, 2
  %604 = call i64 @llvm.objectsize.i64.p0i8(i8* %601, i1 false)
  %605 = call i8* @__memset_chk(i8* %601, i32 0, i64 %603, i64 %604) #6
  br label %.loopexit53

.loopexit53:                                      ; preds = %554, %.loopexit, %470, %600
  call void @free(i8* %88) #7
  br label %606

; <label>:606                                     ; preds = %.loopexit53, %74, %select.unfold
  %.0 = phi i32 [ -1, %select.unfold ], [ 0, %.loopexit53 ], [ -1, %74 ]
  ret i32 %.0
}

; Function Attrs: optsize
declare i32 @CCTK_Warn(i32, i32, i8*, i8*, i8*) #2

; Function Attrs: optsize
declare i32 @CCTK_GroupData(i32, %struct.cGroup*) #2

; Function Attrs: optsize
declare i32 @CCTK_GroupIndexFromVarI(i32) #2

; Function Attrs: optsize
declare void (i8*, i8*, i32, i32, i32)* @PUGHSlabi_GetDatatypeConversionFn(i32, i32) #2

; Function Attrs: optsize
declare i32 @CCTK_VWarn(i32, i32, i8*, i8*, i8*, ...) #2

; Function Attrs: optsize
declare i8* @CCTK_VarTypeName(i32) #2

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i64) #3

; Function Attrs: nounwind optsize
declare i8* @__memcpy_chk(i8*, i8*, i64, i64) #3

; Function Attrs: nounwind readnone
declare i64 @llvm.objectsize.i64.p0i8(i8*, i1) #4

; Function Attrs: optsize
declare %struct.PGH* @PUGH_pGH(%struct.cGH*) #2

; Function Attrs: nounwind optsize
declare i8* @__memset_chk(i8*, i32, i64, i64) #3

; Function Attrs: optsize
declare i32 @CCTK_StaggerDirIndex(i32, i32) #2

; Function Attrs: optsize
declare i8* @CCTK_VarDataPtrI(%struct.cGH*, i32, i32) #2

; Function Attrs: optsize
declare i32 @CCTK_VarTypeSize(i32) #2

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #3

; Function Attrs: optsize
declare i32 @CCTK_NumVars() #2

; Function Attrs: optsize
declare i32 @CCTK_NumTimeLevelsFromVarI(i32) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #5

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #5

attributes #0 = { nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind }
attributes #6 = { nounwind optsize }
attributes #7 = { optsize }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!2 = !{!3, !3, i64 0}
!3 = !{!"any pointer", !4, i64 0}
!4 = !{!"omnipotent char", !5, i64 0}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!7, !7, i64 0}
!7 = !{!"int", !4, i64 0}
!8 = !{!9, !7, i64 0}
!9 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !7, i64 24, !7, i64 28}
!10 = !{!9, !7, i64 16}
!11 = !{!9, !7, i64 4}
!12 = !{!13, !3, i64 32}
!13 = !{!"PGH", !3, i64 0, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !7, i64 24, !7, i64 28, !3, i64 32, !7, i64 40, !3, i64 48, !7, i64 56, !7, i64 60, !14, i64 64, !14, i64 72, !14, i64 80, !14, i64 88, !7, i64 96, !7, i64 100, !7, i64 104, !7, i64 108, !7, i64 112, !3, i64 120, !3, i64 128, !3, i64 136}
!14 = !{!"double", !4, i64 0}
!15 = !{!16, !3, i64 56}
!16 = !{!"PGA", !3, i64 0, !7, i64 8, !7, i64 12, !3, i64 16, !3, i64 24, !7, i64 32, !7, i64 36, !3, i64 40, !7, i64 48, !7, i64 52, !3, i64 56, !3, i64 64, !3, i64 72, !3, i64 80, !7, i64 88, !7, i64 92, !3, i64 96}
!17 = !{!18, !7, i64 0}
!18 = !{!"PGExtras", !7, i64 0, !3, i64 8, !14, i64 16, !3, i64 24, !3, i64 32, !3, i64 40, !3, i64 48, !7, i64 56, !3, i64 64, !3, i64 72, !3, i64 80, !3, i64 88, !3, i64 96, !4, i64 104, !4, i64 168, !4, i64 232}
!19 = !{!16, !3, i64 64}
!20 = !{!21, !3, i64 24}
!21 = !{!"PConnectivity", !7, i64 0, !3, i64 8, !3, i64 16, !3, i64 24}
!22 = !{!18, !3, i64 48}
!23 = !{!18, !3, i64 8}
!24 = !{!18, !7, i64 56}
!25 = !{!9, !7, i64 12}
!26 = !{!18, !3, i64 24}
!27 = !{!18, !3, i64 96}
