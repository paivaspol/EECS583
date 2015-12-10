; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Hyperslab.c'
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
%struct.CCTK_COMPLEX32 = type { x86_fp80, x86_fp80 }
%struct.CCTK_COMPLEX16 = type { double, double }
%struct.CCTK_COMPLEX8 = type { float, float }

@.str = private unnamed_addr constant [80 x i8] c"../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Hyperslab.c\00", align 1
@.str1 = private unnamed_addr constant [9 x i8] c"PUGHSlab\00", align 1
@CCTK_MyProc = external global i32 (%struct.cGH*)*
@.str2 = private unnamed_addr constant [26 x i8] c"Unsupported variable type\00", align 1
@CCTK_nProcs = external global i32 (%struct.cGH*)*
@.str3 = private unnamed_addr constant [28 x i8] c"Invalid target processor ID\00", align 1
@.str4 = private unnamed_addr constant [57 x i8] c"Must pass valid hyperslab data and sizes buffer pointers\00", align 1
@.str5 = private unnamed_addr constant [40 x i8] c"Given normal vector isn't axis-parallel\00", align 1
@.str6 = private unnamed_addr constant [93 x i8] c"Non-axis-parallel hyperslabs are supported as diagonals from non-staggered 3D variables only\00", align 1
@.str7 = private unnamed_addr constant [51 x i8] c"Failed to define hyperslab mapping for 3D diagonal\00", align 1
@.str8 = private unnamed_addr constant [93 x i8] c"$Header: /cactus/CactusPUGH/PUGHSlab/src/Hyperslab.c,v 1.22 2001/12/19 00:00:37 tradke Exp $\00", align 1
@.str9 = private unnamed_addr constant [23 x i8] c"Invalid variable index\00", align 1
@.str10 = private unnamed_addr constant [18 x i8] c"Invalid timelevel\00", align 1
@.str11 = private unnamed_addr constant [37 x i8] c"NULL pointer(s) passed as parameters\00", align 1
@.str12 = private unnamed_addr constant [40 x i8] c"Invalid hyperslab downsample parameters\00", align 1
@.str13 = private unnamed_addr constant [24 x i8] c"Couldn't get group info\00", align 1
@.str14 = private unnamed_addr constant [28 x i8] c"Invalid variable group type\00", align 1
@.str15 = private unnamed_addr constant [28 x i8] c"Invalid hyperslab dimension\00", align 1
@.str16 = private unnamed_addr constant [37 x i8] c"Given normal vector is a null vector\00", align 1
@.str17 = private unnamed_addr constant [62 x i8] c"No GH extension for PUGH found. Did you activate thorn PUGH ?\00", align 1
@.memset_pattern = internal unnamed_addr constant [4 x i32] [i32 1, i32 1, i32 1, i32 1], align 16

; Function Attrs: nounwind optsize readnone ssp uwtable
define i8* @CCTKi_version_CactusPUGH_PUGHSlab_Hyperslab_c() #0 {
  ret i8* getelementptr inbounds ([93 x i8]* @.str8, i64 0, i64 0)
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @Hyperslab_GetLocalHyperslab(%struct.cGH* %GH, i32 %vindex, i32 %vtimelvl, i32 %hdim, i32* %global_origin, i32* %directions, i32* %extents, i32* %downsample_, i8** %hdata, i32* %hsize, i32* nocapture %hsize_global, i32* %hoffset_global) #1 {
  %1 = bitcast i32* %hsize to i8*
  %vinfo = alloca %struct.cGroup, align 4
  %2 = tail call fastcc i8* @checkParameters(%struct.cGH* %GH, i32 %vindex, i32 %vtimelvl, i32 %hdim, i32* %global_origin, i32* %directions, i32* %extents, i32* %downsample_, i8** %hdata, i32* %hsize) #7
  %3 = icmp eq i8* %2, null
  br i1 %3, label %.preheader265, label %6

.preheader265:                                    ; preds = %0
  %4 = icmp sgt i32 %hdim, 0
  br i1 %4, label %.lr.ph542, label %._crit_edge543.thread

.lr.ph542:                                        ; preds = %.preheader265
  %5 = add i32 %hdim, -1
  br label %8

; <label>:6                                       ; preds = %0
  %7 = tail call i32 @CCTK_Warn(i32 1, i32 286, i8* getelementptr inbounds ([80 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* %2) #8
  br label %1479

; <label>:8                                       ; preds = %8, %.lr.ph542
  %indvars.iv704 = phi i64 [ 0, %.lr.ph542 ], [ %indvars.iv.next705, %8 ]
  %totals.0540 = phi i32 [ 1, %.lr.ph542 ], [ %11, %8 ]
  %9 = getelementptr inbounds i32* %extents, i64 %indvars.iv704
  %10 = load i32* %9, align 4, !tbaa !2
  %11 = mul nsw i32 %10, %totals.0540
  %indvars.iv.next705 = add nuw nsw i64 %indvars.iv704, 1
  %lftr.wideiv706 = trunc i64 %indvars.iv704 to i32
  %exitcond707 = icmp eq i32 %lftr.wideiv706, %5
  br i1 %exitcond707, label %._crit_edge543, label %8

._crit_edge543:                                   ; preds = %8
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %.preheader, label %._crit_edge543.thread

.preheader:                                       ; preds = %._crit_edge543
  br i1 %4, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %13 = icmp eq i32* %hoffset_global, null
  %14 = add i32 %hdim, -1
  br label %15

; <label>:15                                      ; preds = %20, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %20 ]
  %16 = getelementptr inbounds i32* %hsize_global, i64 %indvars.iv
  store i32 0, i32* %16, align 4, !tbaa !2
  %17 = getelementptr inbounds i32* %hsize, i64 %indvars.iv
  store i32 0, i32* %17, align 4, !tbaa !2
  br i1 %13, label %20, label %18

; <label>:18                                      ; preds = %15
  %19 = getelementptr inbounds i32* %hoffset_global, i64 %indvars.iv
  store i32 0, i32* %19, align 4, !tbaa !2
  br label %20

; <label>:20                                      ; preds = %15, %18
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %14
  br i1 %exitcond, label %._crit_edge, label %15

._crit_edge:                                      ; preds = %20, %.preheader
  store i8* null, i8** %hdata, align 8, !tbaa !6
  br label %1479

._crit_edge543.thread:                            ; preds = %.preheader265, %._crit_edge543
  %21 = tail call i32 @CCTK_GroupIndexFromVarI(i32 %vindex) #8
  %22 = call i32 @CCTK_GroupData(i32 %21, %struct.cGroup* %vinfo) #8
  %23 = getelementptr inbounds %struct.cGroup* %vinfo, i64 0, i32 4
  %24 = load i32* %23, align 4, !tbaa !8
  %25 = shl nsw i32 %24, 3
  %26 = sext i32 %25 to i64
  %27 = shl nsw i64 %26, 2
  %28 = call i8* @malloc(i64 %27) #8
  %29 = bitcast i8* %28 to i32*
  %30 = sext i32 %24 to i64
  %31 = getelementptr inbounds i32* %29, i64 %30
  %32 = shl nsw i32 %24, 1
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32* %29, i64 %33
  %35 = mul nsw i32 %24, 3
  %36 = sext i32 %35 to i64
  %37 = shl nsw i32 %24, 2
  %38 = sext i32 %37 to i64
  %39 = mul nsw i32 %24, 5
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32* %29, i64 %40
  %42 = mul i32 %24, 6
  %43 = sext i32 %42 to i64
  %44 = mul nsw i32 %24, 7
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32* %29, i64 %45
  %47 = icmp eq i32 %hdim, 1
  br i1 %47, label %48, label %55

; <label>:48                                      ; preds = %._crit_edge543.thread
  %49 = getelementptr inbounds i32* %29, i64 %43
  %50 = bitcast i32* %49 to i8*
  %51 = bitcast i32* %directions to i8*
  %52 = shl nsw i64 %30, 2
  %53 = call i64 @llvm.objectsize.i64.p0i8(i8* %50, i1 false)
  %54 = call i8* @__memcpy_chk(i8* %50, i8* %51, i64 %52, i64 %53) #8
  br label %.loopexit262

; <label>:55                                      ; preds = %._crit_edge543.thread
  %56 = icmp sgt i32 %24, %hdim
  %57 = icmp sgt i32 %24, 0
  br i1 %56, label %.preheader261, label %.preheader263

.preheader263:                                    ; preds = %55
  br i1 %57, label %.lr.ph539, label %.loopexit262

.lr.ph539:                                        ; preds = %.preheader263
  %58 = shl nsw i64 %43, 2
  %scevgep = getelementptr i8* %28, i64 %58
  %59 = icmp sgt i32 %24, 1
  %.op = add i32 %24, -1
  %60 = zext i32 %.op to i64
  %.op740 = shl nuw nsw i64 %60, 2
  %.op740.op = add nuw nsw i64 %.op740, 4
  %61 = select i1 %59, i64 %.op740.op, i64 4
  call void @memset_pattern16(i8* %scevgep, i8* bitcast ([4 x i32]* @.memset_pattern to i8*), i64 %61) #5
  br label %.loopexit262

.preheader261:                                    ; preds = %55
  br i1 %57, label %.lr.ph537, label %.loopexit262

.lr.ph537:                                        ; preds = %.preheader261, %.lr.ph537
  %indvars.iv700 = phi i64 [ %indvars.iv.next701, %.lr.ph537 ], [ 0, %.preheader261 ]
  %62 = getelementptr inbounds i32* %directions, i64 %indvars.iv700
  %63 = load i32* %62, align 4, !tbaa !2
  %64 = icmp eq i32 %63, 0
  %65 = zext i1 %64 to i32
  %.sum178 = add nsw i64 %indvars.iv700, %43
  %66 = getelementptr inbounds i32* %29, i64 %.sum178
  store i32 %65, i32* %66, align 4, !tbaa !2
  %indvars.iv.next701 = add nuw nsw i64 %indvars.iv700, 1
  %67 = icmp slt i64 %indvars.iv.next701, %30
  br i1 %67, label %.lr.ph537, label %.loopexit262

.loopexit262:                                     ; preds = %.lr.ph537, %.preheader263, %.lr.ph539, %.preheader261, %48
  %68 = call %struct.PGH* @PUGH_pGH(%struct.cGH* %GH) #8
  %69 = sext i32 %vtimelvl to i64
  %70 = sext i32 %vindex to i64
  %71 = getelementptr inbounds %struct.PGH* %68, i64 0, i32 7
  %72 = load i8**** %71, align 8, !tbaa !10
  %73 = getelementptr inbounds i8*** %72, i64 %70
  %74 = load i8*** %73, align 8, !tbaa !6
  %75 = getelementptr inbounds i8** %74, i64 %69
  %76 = bitcast i8** %75 to %struct.PGA**
  %77 = load %struct.PGA** %76, align 8, !tbaa !6
  %78 = load i32* %23, align 4, !tbaa !8
  %79 = icmp sgt i32 %78, 0
  br i1 %79, label %.lr.ph534, label %._crit_edge535

.lr.ph534:                                        ; preds = %.loopexit262
  %80 = getelementptr inbounds %struct.PGA* %77, i64 0, i32 10
  br label %81

; <label>:81                                      ; preds = %.lr.ph534, %119
  %indvars.iv698 = phi i64 [ 0, %.lr.ph534 ], [ %indvars.iv.next699, %119 ]
  %.073532 = phi i32 [ 0, %.lr.ph534 ], [ %.1, %119 ]
  %.sum172 = add nsw i64 %indvars.iv698, %43
  %82 = getelementptr inbounds i32* %29, i64 %.sum172
  %83 = load i32* %82, align 4, !tbaa !2
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %113, label %85

; <label>:85                                      ; preds = %81
  %86 = sext i32 %.073532 to i64
  %87 = getelementptr inbounds i32* %extents, i64 %86
  %88 = load i32* %87, align 4, !tbaa !2
  %89 = icmp sgt i32 %88, 0
  br i1 %89, label %90, label %100

; <label>:90                                      ; preds = %85
  %91 = getelementptr inbounds i32* %global_origin, i64 %indvars.iv698
  %92 = load i32* %91, align 4, !tbaa !2
  %93 = add nsw i32 %92, %88
  %94 = load %struct.PGExtras** %80, align 8, !tbaa !13
  %95 = getelementptr inbounds %struct.PGExtras* %94, i64 0, i32 1
  %96 = load i32** %95, align 8, !tbaa !15
  %97 = getelementptr inbounds i32* %96, i64 %indvars.iv698
  %98 = load i32* %97, align 4, !tbaa !2
  %99 = icmp slt i32 %93, %98
  %. = select i1 %99, i32 %93, i32 %98
  br label %106

; <label>:100                                     ; preds = %85
  %101 = load %struct.PGExtras** %80, align 8, !tbaa !13
  %102 = getelementptr inbounds %struct.PGExtras* %101, i64 0, i32 1
  %103 = load i32** %102, align 8, !tbaa !15
  %104 = getelementptr inbounds i32* %103, i64 %indvars.iv698
  %105 = load i32* %104, align 4, !tbaa !2
  br label %106

; <label>:106                                     ; preds = %90, %100
  %107 = phi i32 [ %105, %100 ], [ %., %90 ]
  %.sum175 = add nsw i64 %indvars.iv698, %38
  %108 = getelementptr inbounds i32* %29, i64 %.sum175
  store i32 %107, i32* %108, align 4, !tbaa !2
  %109 = getelementptr inbounds i32* %downsample_, i64 %86
  %110 = load i32* %109, align 4, !tbaa !2
  %.sum176 = add nsw i64 %indvars.iv698, %40
  %111 = getelementptr inbounds i32* %29, i64 %.sum176
  store i32 %110, i32* %111, align 4, !tbaa !2
  %112 = add nsw i32 %.073532, 1
  br label %119

; <label>:113                                     ; preds = %81
  %114 = getelementptr inbounds i32* %global_origin, i64 %indvars.iv698
  %115 = load i32* %114, align 4, !tbaa !2
  %116 = add nsw i32 %115, 1
  %.sum173 = add nsw i64 %indvars.iv698, %38
  %117 = getelementptr inbounds i32* %29, i64 %.sum173
  store i32 %116, i32* %117, align 4, !tbaa !2
  %.sum174 = add nsw i64 %indvars.iv698, %40
  %118 = getelementptr inbounds i32* %29, i64 %.sum174
  store i32 1, i32* %118, align 4, !tbaa !2
  br label %119

; <label>:119                                     ; preds = %106, %113
  %.1 = phi i32 [ %112, %106 ], [ %.073532, %113 ]
  %indvars.iv.next699 = add nuw nsw i64 %indvars.iv698, 1
  %120 = sext i32 %78 to i64
  %121 = icmp slt i64 %indvars.iv.next699, %120
  br i1 %121, label %81, label %._crit_edge535

._crit_edge535:                                   ; preds = %119, %.loopexit262
  %122 = load i32 (%struct.cGH*)** @CCTK_MyProc, align 8, !tbaa !6
  %123 = call i32 %122(%struct.cGH* %GH) #8
  %124 = load i32* %23, align 4, !tbaa !8
  %125 = icmp sgt i32 %124, 0
  br i1 %125, label %.lr.ph530, label %._crit_edge525.thread

.lr.ph530:                                        ; preds = %._crit_edge535
  %126 = getelementptr inbounds %struct.cGroup* %vinfo, i64 0, i32 3
  %127 = sext i32 %123 to i64
  %128 = getelementptr inbounds %struct.PGA* %77, i64 0, i32 10
  br label %134

.preheader260:                                    ; preds = %175
  %129 = icmp sgt i32 %176, 0
  br i1 %129, label %.lr.ph524, label %._crit_edge525.thread

.lr.ph524:                                        ; preds = %.preheader260
  %130 = getelementptr inbounds %struct.cGroup* %vinfo, i64 0, i32 3
  %131 = sext i32 %123 to i64
  %132 = getelementptr inbounds %struct.PGA* %77, i64 0, i32 10
  %133 = getelementptr inbounds %struct.PGA* %77, i64 0, i32 11
  br label %179

; <label>:134                                     ; preds = %.lr.ph530, %175
  %indvars.iv696 = phi i64 [ 0, %.lr.ph530 ], [ %indvars.iv.next697, %175 ]
  %135 = load i32* %126, align 4, !tbaa !17
  %136 = trunc i64 %indvars.iv696 to i32
  %137 = call i32 @CCTK_StaggerDirIndex(i32 %136, i32 %135) #8
  %138 = getelementptr inbounds i32* %global_origin, i64 %indvars.iv696
  %139 = load i32* %138, align 4, !tbaa !2
  %140 = load %struct.PGExtras** %128, align 8, !tbaa !13
  %141 = getelementptr inbounds %struct.PGExtras* %140, i64 0, i32 3
  %142 = load i32*** %141, align 8, !tbaa !18
  %143 = getelementptr inbounds i32** %142, i64 %127
  %144 = load i32** %143, align 8, !tbaa !6
  %145 = getelementptr inbounds i32* %144, i64 %indvars.iv696
  %146 = load i32* %145, align 4, !tbaa !2
  %147 = sext i32 %137 to i64
  %148 = getelementptr inbounds %struct.PGExtras* %140, i64 0, i32 13, i64 %147, i64 1
  %149 = load i32** %148, align 8, !tbaa !6
  %150 = getelementptr inbounds i32* %149, i64 %indvars.iv696
  %151 = load i32* %150, align 4, !tbaa !2
  %152 = add nsw i32 %151, %146
  %153 = icmp slt i32 %139, %152
  br i1 %153, label %154, label %173

; <label>:154                                     ; preds = %134
  %155 = getelementptr inbounds %struct.PGExtras* %140, i64 0, i32 13, i64 %147, i64 0
  %156 = load i32** %155, align 8, !tbaa !6
  %157 = getelementptr inbounds i32* %156, i64 %indvars.iv696
  %158 = load i32* %157, align 4, !tbaa !2
  %159 = add nsw i32 %158, %146
  %160 = icmp sgt i32 %159, %139
  br i1 %160, label %161, label %171

; <label>:161                                     ; preds = %154
  %162 = sub nsw i32 %159, %139
  %.sum170 = add nsw i64 %indvars.iv696, %40
  %163 = getelementptr inbounds i32* %29, i64 %.sum170
  %164 = load i32* %163, align 4, !tbaa !2
  %165 = sdiv i32 %162, %164
  %166 = srem i32 %162, %164
  %not. = icmp ne i32 %166, 0
  %167 = zext i1 %not. to i32
  %.179 = add nsw i32 %167, %165
  %168 = mul nsw i32 %.179, %164
  %169 = add nsw i32 %168, %139
  %.sum171 = add nsw i64 %indvars.iv696, %36
  %170 = getelementptr inbounds i32* %29, i64 %.sum171
  store i32 %169, i32* %170, align 4, !tbaa !2
  br label %175

; <label>:171                                     ; preds = %154
  %.sum169 = add nsw i64 %indvars.iv696, %36
  %172 = getelementptr inbounds i32* %29, i64 %.sum169
  store i32 %139, i32* %172, align 4, !tbaa !2
  br label %175

; <label>:173                                     ; preds = %134
  %.sum168 = add nsw i64 %indvars.iv696, %36
  %174 = getelementptr inbounds i32* %29, i64 %.sum168
  store i32 -1, i32* %174, align 4, !tbaa !2
  br label %175

; <label>:175                                     ; preds = %173, %171, %161
  %indvars.iv.next697 = add nuw nsw i64 %indvars.iv696, 1
  %176 = load i32* %23, align 4, !tbaa !8
  %177 = sext i32 %176 to i64
  %178 = icmp slt i64 %indvars.iv.next697, %177
  br i1 %178, label %134, label %.preheader260

; <label>:179                                     ; preds = %.lr.ph524, %284
  %indvars.iv694 = phi i64 [ 0, %.lr.ph524 ], [ %indvars.iv.next695, %284 ]
  %.2523 = phi i32 [ 0, %.lr.ph524 ], [ %.3, %284 ]
  %totals.1521 = phi i32 [ 1, %.lr.ph524 ], [ %totals.3, %284 ]
  %180 = load i32* %130, align 4, !tbaa !17
  %181 = trunc i64 %indvars.iv694 to i32
  %182 = call i32 @CCTK_StaggerDirIndex(i32 %181, i32 %180) #8
  %.sum156 = add nsw i64 %indvars.iv694, %36
  %183 = getelementptr inbounds i32* %29, i64 %.sum156
  %184 = load i32* %183, align 4, !tbaa !2
  %185 = icmp sgt i32 %184, -1
  %186 = load %struct.PGExtras** %132, align 8, !tbaa !13
  %187 = getelementptr inbounds %struct.PGExtras* %186, i64 0, i32 3
  %188 = load i32*** %187, align 8, !tbaa !18
  %189 = getelementptr inbounds i32** %188, i64 %131
  %190 = load i32** %189, align 8, !tbaa !6
  br i1 %185, label %191, label %._crit_edge731

._crit_edge731:                                   ; preds = %179
  %.pre735 = sext i32 %182 to i64
  br label %204

; <label>:191                                     ; preds = %179
  %192 = getelementptr inbounds i32* %190, i64 %indvars.iv694
  %193 = load i32* %192, align 4, !tbaa !2
  %194 = sext i32 %182 to i64
  %195 = getelementptr inbounds %struct.PGExtras* %186, i64 0, i32 13, i64 %194, i64 1
  %196 = load i32** %195, align 8, !tbaa !6
  %197 = getelementptr inbounds i32* %196, i64 %indvars.iv694
  %198 = load i32* %197, align 4, !tbaa !2
  %199 = add nsw i32 %198, %193
  %200 = icmp slt i32 %184, %199
  br i1 %200, label %201, label %204

; <label>:201                                     ; preds = %191
  %202 = sub nsw i32 %184, %193
  %.sum167 = add nsw i64 %indvars.iv694, %30
  %203 = getelementptr inbounds i32* %29, i64 %.sum167
  store i32 %202, i32* %203, align 4, !tbaa !2
  br label %206

; <label>:204                                     ; preds = %._crit_edge731, %191
  %.pre711.pre-phi = phi i64 [ %.pre735, %._crit_edge731 ], [ %194, %191 ]
  %.sum157 = add nsw i64 %indvars.iv694, %30
  %205 = getelementptr inbounds i32* %29, i64 %.sum157
  store i32 -1, i32* %205, align 4, !tbaa !2
  br label %206

; <label>:206                                     ; preds = %204, %201
  %.pre-phi = phi i64 [ %.pre711.pre-phi, %204 ], [ %194, %201 ]
  %.sum158 = add nsw i64 %indvars.iv694, %38
  %207 = getelementptr inbounds i32* %29, i64 %.sum158
  %208 = load i32* %207, align 4, !tbaa !2
  %209 = getelementptr inbounds i32* %190, i64 %indvars.iv694
  %210 = load i32* %209, align 4, !tbaa !2
  %211 = getelementptr inbounds %struct.PGExtras* %186, i64 0, i32 13, i64 %.pre-phi, i64 0
  %212 = load i32** %211, align 8, !tbaa !6
  %213 = getelementptr inbounds i32* %212, i64 %indvars.iv694
  %214 = load i32* %213, align 4, !tbaa !2
  %215 = add nsw i32 %214, %210
  %216 = icmp sgt i32 %208, %215
  br i1 %216, label %219, label %.thread

.thread:                                          ; preds = %206
  %.sum159 = add nsw i64 %indvars.iv694, %33
  %217 = getelementptr inbounds i32* %29, i64 %.sum159
  store i32 -1, i32* %217, align 4, !tbaa !2
  %218 = getelementptr inbounds i32* %29, i64 %.sum159
  br label %._crit_edge736

; <label>:219                                     ; preds = %206
  %220 = getelementptr inbounds %struct.PGExtras* %186, i64 0, i32 13, i64 %.pre-phi, i64 1
  %221 = load i32** %220, align 8, !tbaa !6
  %222 = getelementptr inbounds i32* %221, i64 %indvars.iv694
  %223 = load i32* %222, align 4, !tbaa !2
  %224 = sub nsw i32 %208, %210
  %225 = icmp slt i32 %223, %224
  %.180 = select i1 %225, i32 %223, i32 %224
  %.sum166 = add nsw i64 %indvars.iv694, %33
  %226 = getelementptr inbounds i32* %29, i64 %.sum166
  store i32 %.180, i32* %226, align 4, !tbaa !2
  %227 = getelementptr inbounds i32* %29, i64 %.sum166
  %228 = icmp slt i32 %.180, 0
  br i1 %228, label %._crit_edge736, label %230

._crit_edge736:                                   ; preds = %.thread, %219
  %229 = phi i32* [ %218, %.thread ], [ %227, %219 ]
  %.pre737 = add nsw i64 %indvars.iv694, %30
  %.pre738 = getelementptr inbounds i32* %29, i64 %.pre737
  br label %234

; <label>:230                                     ; preds = %219
  %.sum161 = add nsw i64 %indvars.iv694, %30
  %231 = getelementptr inbounds i32* %29, i64 %.sum161
  %232 = load i32* %231, align 4, !tbaa !2
  %233 = icmp slt i32 %232, 0
  br i1 %233, label %234, label %237

; <label>:234                                     ; preds = %._crit_edge736, %230
  %235 = phi i32* [ %229, %._crit_edge736 ], [ %227, %230 ]
  %.pre-phi739 = phi i32* [ %.pre738, %._crit_edge736 ], [ %231, %230 ]
  %236 = load i32* %.pre-phi739, align 4, !tbaa !2
  store i32 %236, i32* %235, align 4, !tbaa !2
  br label %237

; <label>:237                                     ; preds = %234, %230
  %238 = phi i32 [ %236, %234 ], [ %.180, %230 ]
  %totals.2 = phi i32 [ 0, %234 ], [ %totals.1521, %230 ]
  %.sum162 = add nsw i64 %indvars.iv694, %43
  %239 = getelementptr inbounds i32* %29, i64 %.sum162
  %240 = load i32* %239, align 4, !tbaa !2
  %241 = icmp eq i32 %240, 0
  br i1 %241, label %284, label %242

; <label>:242                                     ; preds = %237
  %243 = load i32* %207, align 4, !tbaa !2
  %244 = getelementptr inbounds i32* %global_origin, i64 %indvars.iv694
  %245 = load i32* %244, align 4, !tbaa !2
  %246 = sub nsw i32 %243, %245
  %.sum163 = add nsw i64 %indvars.iv694, %40
  %247 = getelementptr inbounds i32* %29, i64 %.sum163
  %248 = load i32* %247, align 4, !tbaa !2
  %249 = sdiv i32 %246, %248
  %250 = sext i32 %.2523 to i64
  %251 = getelementptr inbounds i32* %hsize_global, i64 %250
  store i32 %249, i32* %251, align 4, !tbaa !2
  %252 = load i32* %244, align 4, !tbaa !2
  %253 = sub nsw i32 %243, %252
  %254 = srem i32 %253, %248
  %255 = icmp eq i32 %254, 0
  br i1 %255, label %258, label %256

; <label>:256                                     ; preds = %242
  %257 = add nsw i32 %249, 1
  store i32 %257, i32* %251, align 4, !tbaa !2
  br label %258

; <label>:258                                     ; preds = %242, %256
  %259 = phi i32 [ %249, %242 ], [ %257, %256 ]
  %260 = load %struct.PConnectivity** %133, align 8, !tbaa !19
  %261 = getelementptr inbounds %struct.PConnectivity* %260, i64 0, i32 3
  %262 = load i32** %261, align 8, !tbaa !20
  %263 = getelementptr inbounds i32* %262, i64 %indvars.iv694
  %264 = load i32* %263, align 4, !tbaa !2
  %265 = icmp eq i32 %264, 0
  br i1 %265, label %273, label %266

; <label>:266                                     ; preds = %258
  %267 = getelementptr inbounds %struct.PGExtras* %186, i64 0, i32 12
  %268 = load i32** %267, align 8, !tbaa !22
  %269 = getelementptr inbounds i32* %268, i64 %indvars.iv694
  %270 = load i32* %269, align 4, !tbaa !2
  %271 = shl nsw i32 %270, 1
  %272 = sub nsw i32 %259, %271
  store i32 %272, i32* %251, align 4, !tbaa !2
  br label %273

; <label>:273                                     ; preds = %258, %266
  %.sum164 = add nsw i64 %indvars.iv694, %30
  %274 = getelementptr inbounds i32* %29, i64 %.sum164
  %275 = load i32* %274, align 4, !tbaa !2
  %276 = sub nsw i32 %238, %275
  %277 = sdiv i32 %276, %248
  %278 = getelementptr inbounds i32* %hsize, i64 %250
  %279 = srem i32 %276, %248
  %280 = icmp eq i32 %279, 0
  %281 = add nsw i32 %277, 1
  %.755 = select i1 %280, i32 %277, i32 %281
  %.756 = select i1 %280, i32 %277, i32 %281
  store i32 %.755, i32* %278, align 4, !tbaa !2
  %282 = mul nsw i32 %.756, %totals.2
  %283 = add nsw i32 %.2523, 1
  br label %284

; <label>:284                                     ; preds = %237, %273
  %totals.3 = phi i32 [ %282, %273 ], [ %totals.2, %237 ]
  %.3 = phi i32 [ %283, %273 ], [ %.2523, %237 ]
  %indvars.iv.next695 = add nuw nsw i64 %indvars.iv694, 1
  %285 = load i32* %23, align 4, !tbaa !8
  %286 = sext i32 %285 to i64
  %287 = icmp slt i64 %indvars.iv.next695, %286
  br i1 %287, label %179, label %._crit_edge525

._crit_edge525:                                   ; preds = %284
  %288 = icmp sgt i32 %totals.3, 0
  br i1 %288, label %._crit_edge525.thread, label %1474

._crit_edge525.thread:                            ; preds = %._crit_edge535, %.preheader260, %._crit_edge525
  %totals.1.lcssa741 = phi i32 [ %totals.3, %._crit_edge525 ], [ 1, %.preheader260 ], [ 1, %._crit_edge535 ]
  %289 = call i8* @CCTK_VarDataPtrI(%struct.cGH* %GH, i32 %vtimelvl, i32 %vindex) #8
  %290 = icmp eq i32* %hoffset_global, null
  br i1 %290, label %.loopexit259, label %.preheader258

.preheader258:                                    ; preds = %._crit_edge525.thread
  %291 = load i32* %23, align 4, !tbaa !8
  %292 = icmp sgt i32 %291, 0
  br i1 %292, label %.lr.ph520, label %.loopexit259

.lr.ph520:                                        ; preds = %.preheader258
  %293 = getelementptr inbounds %struct.PGA* %77, i64 0, i32 11
  %294 = getelementptr inbounds %struct.PGA* %77, i64 0, i32 10
  br label %295

; <label>:295                                     ; preds = %.lr.ph520, %325
  %indvars.iv692 = phi i64 [ 0, %.lr.ph520 ], [ %indvars.iv.next693, %325 ]
  %.4519 = phi i32 [ 0, %.lr.ph520 ], [ %.5, %325 ]
  %.sum153 = add nsw i64 %indvars.iv692, %43
  %296 = getelementptr inbounds i32* %29, i64 %.sum153
  %297 = load i32* %296, align 4, !tbaa !2
  %298 = icmp eq i32 %297, 0
  br i1 %298, label %325, label %299

; <label>:299                                     ; preds = %295
  %.sum154 = add nsw i64 %indvars.iv692, %36
  %300 = getelementptr inbounds i32* %29, i64 %.sum154
  %301 = load i32* %300, align 4, !tbaa !2
  %302 = getelementptr inbounds i32* %global_origin, i64 %indvars.iv692
  %303 = load i32* %302, align 4, !tbaa !2
  %304 = sub nsw i32 %301, %303
  %.sum155 = add nsw i64 %indvars.iv692, %40
  %305 = getelementptr inbounds i32* %29, i64 %.sum155
  %306 = load i32* %305, align 4, !tbaa !2
  %307 = sdiv i32 %304, %306
  %308 = sext i32 %.4519 to i64
  %309 = getelementptr inbounds i32* %hoffset_global, i64 %308
  store i32 %307, i32* %309, align 4, !tbaa !2
  %310 = load %struct.PConnectivity** %293, align 8, !tbaa !19
  %311 = getelementptr inbounds %struct.PConnectivity* %310, i64 0, i32 3
  %312 = load i32** %311, align 8, !tbaa !20
  %313 = getelementptr inbounds i32* %312, i64 %indvars.iv692
  %314 = load i32* %313, align 4, !tbaa !2
  %315 = icmp eq i32 %314, 0
  br i1 %315, label %323, label %316

; <label>:316                                     ; preds = %299
  %317 = load %struct.PGExtras** %294, align 8, !tbaa !13
  %318 = getelementptr inbounds %struct.PGExtras* %317, i64 0, i32 12
  %319 = load i32** %318, align 8, !tbaa !22
  %320 = getelementptr inbounds i32* %319, i64 %indvars.iv692
  %321 = load i32* %320, align 4, !tbaa !2
  %322 = sub nsw i32 %307, %321
  store i32 %322, i32* %309, align 4, !tbaa !2
  br label %323

; <label>:323                                     ; preds = %299, %316
  %324 = add nsw i32 %.4519, 1
  br label %325

; <label>:325                                     ; preds = %295, %323
  %.5 = phi i32 [ %324, %323 ], [ %.4519, %295 ]
  %indvars.iv.next693 = add nuw nsw i64 %indvars.iv692, 1
  %326 = sext i32 %291 to i64
  %327 = icmp slt i64 %indvars.iv.next693, %326
  br i1 %327, label %295, label %.loopexit259

.loopexit259:                                     ; preds = %325, %.preheader258, %._crit_edge525.thread
  %328 = getelementptr inbounds %struct.cGroup* %vinfo, i64 0, i32 1
  %329 = load i32* %328, align 4, !tbaa !23
  %330 = call i32 @CCTK_VarTypeSize(i32 %329) #8
  %331 = mul nsw i32 %330, %totals.1.lcssa741
  %332 = sext i32 %331 to i64
  %333 = call i8* @malloc(i64 %332) #8
  store i8* %333, i8** %hdata, align 8, !tbaa !6
  store i32 1, i32* %46, align 4, !tbaa !2
  %334 = load i32* %23, align 4, !tbaa !8
  %335 = icmp sgt i32 %334, 1
  %336 = bitcast i8* %333 to %struct.CCTK_COMPLEX32*
  %337 = bitcast i8* %333 to x86_fp80*
  %338 = bitcast i8* %333 to %struct.CCTK_COMPLEX16*
  %339 = bitcast i8* %333 to double*
  %340 = bitcast i8* %333 to %struct.CCTK_COMPLEX8*
  %341 = bitcast i8* %333 to float*
  %342 = bitcast i8* %333 to i64*
  %343 = bitcast i8* %333 to i32*
  %344 = bitcast i8* %333 to i16*
  br i1 %335, label %.lr.ph515, label %._crit_edge516

.lr.ph515:                                        ; preds = %.loopexit259
  %345 = getelementptr inbounds %struct.PGA* %77, i64 0, i32 10
  %346 = load %struct.PGExtras** %345, align 8, !tbaa !13
  %347 = getelementptr inbounds %struct.PGExtras* %346, i64 0, i32 6
  %348 = load i32** %347, align 8, !tbaa !24
  br label %349

; <label>:349                                     ; preds = %.lr.ph515, %349
  %indvars.iv690 = phi i64 [ 1, %.lr.ph515 ], [ %indvars.iv.next691, %349 ]
  %350 = add nsw i64 %indvars.iv690, -1
  %.sum151 = add nsw i64 %350, %45
  %351 = getelementptr inbounds i32* %29, i64 %.sum151
  %352 = load i32* %351, align 4, !tbaa !2
  %353 = getelementptr inbounds i32* %348, i64 %350
  %354 = load i32* %353, align 4, !tbaa !2
  %355 = mul nsw i32 %354, %352
  %.sum152 = add nsw i64 %indvars.iv690, %45
  %356 = getelementptr inbounds i32* %29, i64 %.sum152
  store i32 %355, i32* %356, align 4, !tbaa !2
  %indvars.iv.next691 = add nuw nsw i64 %indvars.iv690, 1
  %357 = sext i32 %334 to i64
  %358 = icmp slt i64 %indvars.iv.next691, %357
  br i1 %358, label %349, label %._crit_edge516

._crit_edge516:                                   ; preds = %349, %.loopexit259
  %359 = load i32* %328, align 4, !tbaa !23
  switch i32 %359, label %1472 [
    i32 1, label %360
    i32 2, label %441
    i32 6, label %526
    i32 10, label %613
    i32 3, label %699
    i32 4, label %784
    i32 5, label %869
    i32 7, label %954
    i32 11, label %1041
    i32 8, label %1128
    i32 12, label %1215
    i32 9, label %1301
    i32 13, label %1386
  ]

; <label>:360                                     ; preds = %._crit_edge516
  %361 = bitcast i32* %31 to i8*
  %362 = sext i32 %334 to i64
  %363 = shl nsw i64 %362, 2
  %364 = call i64 @llvm.objectsize.i64.p0i8(i8* %28, i1 false)
  %365 = call i8* @__memcpy_chk(i8* %28, i8* %361, i64 %363, i64 %364) #8
  %366 = load i32* %34, align 4, !tbaa !2
  %367 = load i32* %31, align 4, !tbaa !2
  %368 = sub nsw i32 %366, %367
  %369 = getelementptr inbounds i8* %28, i64 4
  %370 = bitcast i8* %369 to i32*
  %.sum147 = or i64 %33, 1
  %371 = getelementptr inbounds i32* %29, i64 %.sum147
  %372 = sext i32 %368 to i64
  %.sum145 = add nsw i64 %40, 1
  %373 = getelementptr inbounds i32* %29, i64 %.sum145
  %374 = icmp sgt i32 %368, 0
  %.pre730 = load i32* %23, align 4, !tbaa !8
  br label %375

; <label>:375                                     ; preds = %360, %437
  %376 = phi i32 [ %.pre730, %360 ], [ %435, %437 ]
  %typed_hdata.0 = phi i8* [ %333, %360 ], [ %typed_hdata.2, %437 ]
  %377 = icmp sgt i32 %376, 1
  br i1 %377, label %379, label %.loopexit183.thread742

.loopexit183.thread742:                           ; preds = %375
  %378 = load i32* %29, align 4, !tbaa !2
  br label %._crit_edge279

; <label>:379                                     ; preds = %375
  %380 = load i32* %370, align 4, !tbaa !2
  %381 = load i32* %371, align 4, !tbaa !2
  %382 = icmp slt i32 %380, %381
  br i1 %382, label %.loopexit183.thread, label %.preheader184

.loopexit183.thread:                              ; preds = %379
  %383 = load i32* %29, align 4, !tbaa !2
  br label %.lr.ph278

.preheader184:                                    ; preds = %379
  %384 = icmp sgt i32 %376, 2
  br i1 %384, label %.lr.ph268, label %399

.lr.ph268:                                        ; preds = %.preheader184
  %385 = sext i32 %376 to i64
  br label %386

; <label>:386                                     ; preds = %.lr.ph268, %395
  %indvars.iv600 = phi i64 [ 2, %.lr.ph268 ], [ %indvars.iv.next601, %395 ]
  %.sum149 = add nsw i64 %indvars.iv600, %40
  %387 = getelementptr inbounds i32* %29, i64 %.sum149
  %388 = load i32* %387, align 4, !tbaa !2
  %389 = getelementptr inbounds i32* %29, i64 %indvars.iv600
  %390 = load i32* %389, align 4, !tbaa !2
  %391 = add nsw i32 %390, %388
  store i32 %391, i32* %389, align 4, !tbaa !2
  %.sum150 = add nsw i64 %indvars.iv600, %33
  %392 = getelementptr inbounds i32* %29, i64 %.sum150
  %393 = load i32* %392, align 4, !tbaa !2
  %394 = icmp slt i32 %391, %393
  br i1 %394, label %._crit_edge269, label %395

; <label>:395                                     ; preds = %386
  %indvars.iv.next601 = add nuw nsw i64 %indvars.iv600, 1
  %396 = icmp slt i64 %indvars.iv.next601, %385
  br i1 %396, label %386, label %._crit_edge270

._crit_edge269:                                   ; preds = %386
  %397 = trunc i64 %indvars.iv600 to i32
  br label %399

._crit_edge270:                                   ; preds = %395
  %398 = trunc i64 %indvars.iv.next601 to i32
  br label %399

; <label>:399                                     ; preds = %._crit_edge270, %._crit_edge269, %.preheader184
  %dim.1.lcssa = phi i32 [ %397, %._crit_edge269 ], [ %398, %._crit_edge270 ], [ 2, %.preheader184 ]
  %400 = icmp slt i32 %dim.1.lcssa, %376
  br i1 %400, label %.preheader182, label %.loopexit185

.preheader182:                                    ; preds = %399
  %401 = icmp sgt i32 %dim.1.lcssa, 1
  br i1 %401, label %.lr.ph274, label %.loopexit183

.lr.ph274:                                        ; preds = %.preheader182
  %402 = sext i32 %dim.1.lcssa to i64
  br label %403

; <label>:403                                     ; preds = %.lr.ph274, %403
  %indvars.iv602 = phi i64 [ %402, %.lr.ph274 ], [ %indvars.iv.next603, %403 ]
  %indvars.iv.next603 = add nsw i64 %indvars.iv602, -1
  %.sum148 = add nsw i64 %indvars.iv.next603, %30
  %404 = getelementptr inbounds i32* %29, i64 %.sum148
  %405 = load i32* %404, align 4, !tbaa !2
  %406 = getelementptr inbounds i32* %29, i64 %indvars.iv.next603
  store i32 %405, i32* %406, align 4, !tbaa !2
  %407 = icmp sgt i64 %indvars.iv.next603, 1
  br i1 %407, label %403, label %.loopexit183

.loopexit183:                                     ; preds = %403, %.preheader182
  %408 = load i32* %29, align 4, !tbaa !2
  br i1 %377, label %.lr.ph278, label %._crit_edge279

.lr.ph278:                                        ; preds = %.loopexit183.thread, %.loopexit183
  %409 = phi i32 [ %383, %.loopexit183.thread ], [ %408, %.loopexit183 ]
  %410 = sext i32 %376 to i64
  br label %411

; <label>:411                                     ; preds = %.lr.ph278, %411
  %indvars.iv604 = phi i64 [ 1, %.lr.ph278 ], [ %indvars.iv.next605, %411 ]
  %idx.0275 = phi i32 [ %409, %.lr.ph278 ], [ %417, %411 ]
  %412 = getelementptr inbounds i32* %29, i64 %indvars.iv604
  %413 = load i32* %412, align 4, !tbaa !2
  %.sum146 = add nsw i64 %indvars.iv604, %45
  %414 = getelementptr inbounds i32* %29, i64 %.sum146
  %415 = load i32* %414, align 4, !tbaa !2
  %416 = mul nsw i32 %415, %413
  %417 = add nsw i32 %416, %idx.0275
  %indvars.iv.next605 = add nuw nsw i64 %indvars.iv604, 1
  %418 = icmp slt i64 %indvars.iv.next605, %410
  br i1 %418, label %411, label %._crit_edge279

._crit_edge279:                                   ; preds = %411, %.loopexit183.thread742, %.loopexit183
  %idx.0.lcssa = phi i32 [ %408, %.loopexit183 ], [ %378, %.loopexit183.thread742 ], [ %417, %411 ]
  %419 = load i32* %41, align 4, !tbaa !2
  %420 = icmp eq i32 %419, 1
  br i1 %420, label %421, label %.preheader181

.preheader181:                                    ; preds = %._crit_edge279
  br i1 %374, label %.lr.ph283, label %.loopexit

; <label>:421                                     ; preds = %._crit_edge279
  %422 = sext i32 %idx.0.lcssa to i64
  %423 = getelementptr inbounds i8* %289, i64 %422
  %424 = call i64 @llvm.objectsize.i64.p0i8(i8* %typed_hdata.0, i1 false)
  %425 = call i8* @__memcpy_chk(i8* %typed_hdata.0, i8* %423, i64 %372, i64 %424) #8
  %426 = getelementptr inbounds i8* %typed_hdata.0, i64 %372
  br label %.loopexit

.lr.ph283:                                        ; preds = %.preheader181, %.lr.ph283
  %i.1282 = phi i32 [ %433, %.lr.ph283 ], [ 0, %.preheader181 ]
  %typed_hdata.1281 = phi i8* [ %431, %.lr.ph283 ], [ %typed_hdata.0, %.preheader181 ]
  %427 = add nsw i32 %i.1282, %idx.0.lcssa
  %428 = sext i32 %427 to i64
  %429 = getelementptr inbounds i8* %289, i64 %428
  %430 = load i8* %429, align 1, !tbaa !25
  %431 = getelementptr inbounds i8* %typed_hdata.1281, i64 1
  store i8 %430, i8* %typed_hdata.1281, align 1, !tbaa !25
  %432 = load i32* %41, align 4, !tbaa !2
  %433 = add nsw i32 %432, %i.1282
  %434 = icmp slt i32 %433, %368
  br i1 %434, label %.lr.ph283, label %.loopexit

.loopexit:                                        ; preds = %.lr.ph283, %.preheader181, %421
  %typed_hdata.2 = phi i8* [ %426, %421 ], [ %typed_hdata.0, %.preheader181 ], [ %431, %.lr.ph283 ]
  %435 = load i32* %23, align 4, !tbaa !8
  %436 = icmp sgt i32 %435, 1
  br i1 %436, label %437, label %.loopexit185

; <label>:437                                     ; preds = %.loopexit
  %438 = load i32* %373, align 4, !tbaa !2
  %439 = load i32* %370, align 4, !tbaa !2
  %440 = add nsw i32 %439, %438
  store i32 %440, i32* %370, align 4, !tbaa !2
  br label %375

; <label>:441                                     ; preds = %._crit_edge516
  %442 = bitcast i8* %289 to i32*
  %443 = bitcast i32* %31 to i8*
  %444 = sext i32 %334 to i64
  %445 = shl nsw i64 %444, 2
  %446 = call i64 @llvm.objectsize.i64.p0i8(i8* %28, i1 false)
  %447 = call i8* @__memcpy_chk(i8* %28, i8* %443, i64 %445, i64 %446) #8
  %448 = load i32* %34, align 4, !tbaa !2
  %449 = load i32* %31, align 4, !tbaa !2
  %450 = sub nsw i32 %448, %449
  %451 = getelementptr inbounds i8* %28, i64 4
  %452 = bitcast i8* %451 to i32*
  %.sum141 = or i64 %33, 1
  %453 = getelementptr inbounds i32* %29, i64 %.sum141
  %454 = sext i32 %450 to i64
  %455 = shl nsw i64 %454, 2
  %.sum139 = add nsw i64 %40, 1
  %456 = getelementptr inbounds i32* %29, i64 %.sum139
  %457 = icmp sgt i32 %450, 0
  %.pre729 = load i32* %23, align 4, !tbaa !8
  br label %458

; <label>:458                                     ; preds = %441, %522
  %459 = phi i32 [ %.pre729, %441 ], [ %520, %522 ]
  %typed_hdata6.0 = phi i32* [ %343, %441 ], [ %typed_hdata6.2, %522 ]
  %460 = icmp sgt i32 %459, 1
  br i1 %460, label %462, label %.loopexit189.thread743

.loopexit189.thread743:                           ; preds = %458
  %461 = load i32* %29, align 4, !tbaa !2
  br label %._crit_edge298

; <label>:462                                     ; preds = %458
  %463 = load i32* %452, align 4, !tbaa !2
  %464 = load i32* %453, align 4, !tbaa !2
  %465 = icmp slt i32 %463, %464
  br i1 %465, label %.loopexit189.thread, label %.preheader190

.loopexit189.thread:                              ; preds = %462
  %466 = load i32* %29, align 4, !tbaa !2
  br label %.lr.ph297

.preheader190:                                    ; preds = %462
  %467 = icmp sgt i32 %459, 2
  br i1 %467, label %.lr.ph286, label %482

.lr.ph286:                                        ; preds = %.preheader190
  %468 = sext i32 %459 to i64
  br label %469

; <label>:469                                     ; preds = %.lr.ph286, %478
  %indvars.iv606 = phi i64 [ 2, %.lr.ph286 ], [ %indvars.iv.next607, %478 ]
  %.sum143 = add nsw i64 %indvars.iv606, %40
  %470 = getelementptr inbounds i32* %29, i64 %.sum143
  %471 = load i32* %470, align 4, !tbaa !2
  %472 = getelementptr inbounds i32* %29, i64 %indvars.iv606
  %473 = load i32* %472, align 4, !tbaa !2
  %474 = add nsw i32 %473, %471
  store i32 %474, i32* %472, align 4, !tbaa !2
  %.sum144 = add nsw i64 %indvars.iv606, %33
  %475 = getelementptr inbounds i32* %29, i64 %.sum144
  %476 = load i32* %475, align 4, !tbaa !2
  %477 = icmp slt i32 %474, %476
  br i1 %477, label %._crit_edge287, label %478

; <label>:478                                     ; preds = %469
  %indvars.iv.next607 = add nuw nsw i64 %indvars.iv606, 1
  %479 = icmp slt i64 %indvars.iv.next607, %468
  br i1 %479, label %469, label %._crit_edge289

._crit_edge287:                                   ; preds = %469
  %480 = trunc i64 %indvars.iv606 to i32
  br label %482

._crit_edge289:                                   ; preds = %478
  %481 = trunc i64 %indvars.iv.next607 to i32
  br label %482

; <label>:482                                     ; preds = %._crit_edge289, %._crit_edge287, %.preheader190
  %dim2.1.lcssa = phi i32 [ %480, %._crit_edge287 ], [ %481, %._crit_edge289 ], [ 2, %.preheader190 ]
  %483 = icmp slt i32 %dim2.1.lcssa, %459
  br i1 %483, label %.preheader188, label %.loopexit185

.preheader188:                                    ; preds = %482
  %484 = icmp sgt i32 %dim2.1.lcssa, 1
  br i1 %484, label %.lr.ph293, label %.loopexit189

.lr.ph293:                                        ; preds = %.preheader188
  %485 = sext i32 %dim2.1.lcssa to i64
  br label %486

; <label>:486                                     ; preds = %.lr.ph293, %486
  %indvars.iv608 = phi i64 [ %485, %.lr.ph293 ], [ %indvars.iv.next609, %486 ]
  %indvars.iv.next609 = add nsw i64 %indvars.iv608, -1
  %.sum142 = add nsw i64 %indvars.iv.next609, %30
  %487 = getelementptr inbounds i32* %29, i64 %.sum142
  %488 = load i32* %487, align 4, !tbaa !2
  %489 = getelementptr inbounds i32* %29, i64 %indvars.iv.next609
  store i32 %488, i32* %489, align 4, !tbaa !2
  %490 = icmp sgt i64 %indvars.iv.next609, 1
  br i1 %490, label %486, label %.loopexit189

.loopexit189:                                     ; preds = %486, %.preheader188
  %491 = load i32* %29, align 4, !tbaa !2
  br i1 %460, label %.lr.ph297, label %._crit_edge298

.lr.ph297:                                        ; preds = %.loopexit189.thread, %.loopexit189
  %492 = phi i32 [ %466, %.loopexit189.thread ], [ %491, %.loopexit189 ]
  %493 = sext i32 %459 to i64
  br label %494

; <label>:494                                     ; preds = %.lr.ph297, %494
  %indvars.iv610 = phi i64 [ 1, %.lr.ph297 ], [ %indvars.iv.next611, %494 ]
  %idx3.0294 = phi i32 [ %492, %.lr.ph297 ], [ %500, %494 ]
  %495 = getelementptr inbounds i32* %29, i64 %indvars.iv610
  %496 = load i32* %495, align 4, !tbaa !2
  %.sum140 = add nsw i64 %indvars.iv610, %45
  %497 = getelementptr inbounds i32* %29, i64 %.sum140
  %498 = load i32* %497, align 4, !tbaa !2
  %499 = mul nsw i32 %498, %496
  %500 = add nsw i32 %499, %idx3.0294
  %indvars.iv.next611 = add nuw nsw i64 %indvars.iv610, 1
  %501 = icmp slt i64 %indvars.iv.next611, %493
  br i1 %501, label %494, label %._crit_edge298

._crit_edge298:                                   ; preds = %494, %.loopexit189.thread743, %.loopexit189
  %idx3.0.lcssa = phi i32 [ %491, %.loopexit189 ], [ %461, %.loopexit189.thread743 ], [ %500, %494 ]
  %502 = load i32* %41, align 4, !tbaa !2
  %503 = icmp eq i32 %502, 1
  br i1 %503, label %504, label %.preheader186

.preheader186:                                    ; preds = %._crit_edge298
  br i1 %457, label %.lr.ph302, label %.loopexit187

; <label>:504                                     ; preds = %._crit_edge298
  %505 = bitcast i32* %typed_hdata6.0 to i8*
  %506 = sext i32 %idx3.0.lcssa to i64
  %507 = getelementptr inbounds i32* %442, i64 %506
  %508 = bitcast i32* %507 to i8*
  %509 = call i64 @llvm.objectsize.i64.p0i8(i8* %505, i1 false)
  %510 = call i8* @__memcpy_chk(i8* %505, i8* %508, i64 %455, i64 %509) #8
  %511 = getelementptr inbounds i32* %typed_hdata6.0, i64 %454
  br label %.loopexit187

.lr.ph302:                                        ; preds = %.preheader186, %.lr.ph302
  %i1.1301 = phi i32 [ %518, %.lr.ph302 ], [ 0, %.preheader186 ]
  %typed_hdata6.1300 = phi i32* [ %516, %.lr.ph302 ], [ %typed_hdata6.0, %.preheader186 ]
  %512 = add nsw i32 %i1.1301, %idx3.0.lcssa
  %513 = sext i32 %512 to i64
  %514 = getelementptr inbounds i32* %442, i64 %513
  %515 = load i32* %514, align 4, !tbaa !2
  %516 = getelementptr inbounds i32* %typed_hdata6.1300, i64 1
  store i32 %515, i32* %typed_hdata6.1300, align 4, !tbaa !2
  %517 = load i32* %41, align 4, !tbaa !2
  %518 = add nsw i32 %517, %i1.1301
  %519 = icmp slt i32 %518, %450
  br i1 %519, label %.lr.ph302, label %.loopexit187

.loopexit187:                                     ; preds = %.lr.ph302, %.preheader186, %504
  %typed_hdata6.2 = phi i32* [ %511, %504 ], [ %typed_hdata6.0, %.preheader186 ], [ %516, %.lr.ph302 ]
  %520 = load i32* %23, align 4, !tbaa !8
  %521 = icmp sgt i32 %520, 1
  br i1 %521, label %522, label %.loopexit185

; <label>:522                                     ; preds = %.loopexit187
  %523 = load i32* %456, align 4, !tbaa !2
  %524 = load i32* %452, align 4, !tbaa !2
  %525 = add nsw i32 %524, %523
  store i32 %525, i32* %452, align 4, !tbaa !2
  br label %458

; <label>:526                                     ; preds = %._crit_edge516
  %527 = bitcast i8* %289 to double*
  %528 = bitcast i32* %31 to i8*
  %529 = sext i32 %334 to i64
  %530 = shl nsw i64 %529, 2
  %531 = call i64 @llvm.objectsize.i64.p0i8(i8* %28, i1 false)
  %532 = call i8* @__memcpy_chk(i8* %28, i8* %528, i64 %530, i64 %531) #8
  %533 = load i32* %34, align 4, !tbaa !2
  %534 = load i32* %31, align 4, !tbaa !2
  %535 = sub nsw i32 %533, %534
  %536 = getelementptr inbounds i8* %28, i64 4
  %537 = bitcast i8* %536 to i32*
  %.sum135 = or i64 %33, 1
  %538 = getelementptr inbounds i32* %29, i64 %.sum135
  %539 = sext i32 %535 to i64
  %540 = shl nsw i64 %539, 3
  %.sum133 = add nsw i64 %40, 1
  %541 = getelementptr inbounds i32* %29, i64 %.sum133
  %542 = icmp sgt i32 %535, 0
  %.pre727 = load i32* %23, align 4, !tbaa !8
  br label %543

; <label>:543                                     ; preds = %526, %609
  %544 = phi i32 [ %.pre727, %526 ], [ %607, %609 ]
  %typed_hdata12.0 = phi double* [ %339, %526 ], [ %typed_hdata12.2, %609 ]
  %545 = icmp sgt i32 %544, 1
  br i1 %545, label %547, label %.loopexit195.thread744

.loopexit195.thread744:                           ; preds = %543
  %546 = load i32* %29, align 4, !tbaa !2
  br label %._crit_edge317

; <label>:547                                     ; preds = %543
  %548 = load i32* %537, align 4, !tbaa !2
  %549 = load i32* %538, align 4, !tbaa !2
  %550 = icmp slt i32 %548, %549
  br i1 %550, label %.loopexit195.thread, label %.preheader196

.loopexit195.thread:                              ; preds = %547
  %551 = load i32* %29, align 4, !tbaa !2
  br label %.lr.ph316

.preheader196:                                    ; preds = %547
  %552 = icmp sgt i32 %544, 2
  br i1 %552, label %.lr.ph305, label %567

.lr.ph305:                                        ; preds = %.preheader196
  %553 = sext i32 %544 to i64
  br label %554

; <label>:554                                     ; preds = %.lr.ph305, %563
  %indvars.iv612 = phi i64 [ 2, %.lr.ph305 ], [ %indvars.iv.next613, %563 ]
  %.sum137 = add nsw i64 %indvars.iv612, %40
  %555 = getelementptr inbounds i32* %29, i64 %.sum137
  %556 = load i32* %555, align 4, !tbaa !2
  %557 = getelementptr inbounds i32* %29, i64 %indvars.iv612
  %558 = load i32* %557, align 4, !tbaa !2
  %559 = add nsw i32 %558, %556
  store i32 %559, i32* %557, align 4, !tbaa !2
  %.sum138 = add nsw i64 %indvars.iv612, %33
  %560 = getelementptr inbounds i32* %29, i64 %.sum138
  %561 = load i32* %560, align 4, !tbaa !2
  %562 = icmp slt i32 %559, %561
  br i1 %562, label %._crit_edge306, label %563

; <label>:563                                     ; preds = %554
  %indvars.iv.next613 = add nuw nsw i64 %indvars.iv612, 1
  %564 = icmp slt i64 %indvars.iv.next613, %553
  br i1 %564, label %554, label %._crit_edge308

._crit_edge306:                                   ; preds = %554
  %565 = trunc i64 %indvars.iv612 to i32
  br label %567

._crit_edge308:                                   ; preds = %563
  %566 = trunc i64 %indvars.iv.next613 to i32
  br label %567

; <label>:567                                     ; preds = %._crit_edge308, %._crit_edge306, %.preheader196
  %dim8.1.lcssa = phi i32 [ %565, %._crit_edge306 ], [ %566, %._crit_edge308 ], [ 2, %.preheader196 ]
  %568 = icmp slt i32 %dim8.1.lcssa, %544
  br i1 %568, label %.preheader194, label %.loopexit185

.preheader194:                                    ; preds = %567
  %569 = icmp sgt i32 %dim8.1.lcssa, 1
  br i1 %569, label %.lr.ph312, label %.loopexit195

.lr.ph312:                                        ; preds = %.preheader194
  %570 = sext i32 %dim8.1.lcssa to i64
  br label %571

; <label>:571                                     ; preds = %.lr.ph312, %571
  %indvars.iv614 = phi i64 [ %570, %.lr.ph312 ], [ %indvars.iv.next615, %571 ]
  %indvars.iv.next615 = add nsw i64 %indvars.iv614, -1
  %.sum136 = add nsw i64 %indvars.iv.next615, %30
  %572 = getelementptr inbounds i32* %29, i64 %.sum136
  %573 = load i32* %572, align 4, !tbaa !2
  %574 = getelementptr inbounds i32* %29, i64 %indvars.iv.next615
  store i32 %573, i32* %574, align 4, !tbaa !2
  %575 = icmp sgt i64 %indvars.iv.next615, 1
  br i1 %575, label %571, label %.loopexit195

.loopexit195:                                     ; preds = %571, %.preheader194
  %576 = load i32* %29, align 4, !tbaa !2
  br i1 %545, label %.lr.ph316, label %._crit_edge317

.lr.ph316:                                        ; preds = %.loopexit195.thread, %.loopexit195
  %577 = phi i32 [ %551, %.loopexit195.thread ], [ %576, %.loopexit195 ]
  %578 = sext i32 %544 to i64
  br label %579

; <label>:579                                     ; preds = %.lr.ph316, %579
  %indvars.iv616 = phi i64 [ 1, %.lr.ph316 ], [ %indvars.iv.next617, %579 ]
  %idx9.0313 = phi i32 [ %577, %.lr.ph316 ], [ %585, %579 ]
  %580 = getelementptr inbounds i32* %29, i64 %indvars.iv616
  %581 = load i32* %580, align 4, !tbaa !2
  %.sum134 = add nsw i64 %indvars.iv616, %45
  %582 = getelementptr inbounds i32* %29, i64 %.sum134
  %583 = load i32* %582, align 4, !tbaa !2
  %584 = mul nsw i32 %583, %581
  %585 = add nsw i32 %584, %idx9.0313
  %indvars.iv.next617 = add nuw nsw i64 %indvars.iv616, 1
  %586 = icmp slt i64 %indvars.iv.next617, %578
  br i1 %586, label %579, label %._crit_edge317

._crit_edge317:                                   ; preds = %579, %.loopexit195.thread744, %.loopexit195
  %idx9.0.lcssa = phi i32 [ %576, %.loopexit195 ], [ %546, %.loopexit195.thread744 ], [ %585, %579 ]
  %587 = load i32* %41, align 4, !tbaa !2
  %588 = icmp eq i32 %587, 1
  br i1 %588, label %591, label %.preheader192

.preheader192:                                    ; preds = %._crit_edge317
  br i1 %542, label %.lr.ph321, label %.loopexit193

.lr.ph321:                                        ; preds = %.preheader192
  %589 = sext i32 %587 to i64
  %590 = sext i32 %idx9.0.lcssa to i64
  br label %599

; <label>:591                                     ; preds = %._crit_edge317
  %592 = bitcast double* %typed_hdata12.0 to i8*
  %593 = sext i32 %idx9.0.lcssa to i64
  %594 = getelementptr inbounds double* %527, i64 %593
  %595 = bitcast double* %594 to i8*
  %596 = call i64 @llvm.objectsize.i64.p0i8(i8* %592, i1 false)
  %597 = call i8* @__memcpy_chk(i8* %592, i8* %595, i64 %540, i64 %596) #8
  %598 = getelementptr inbounds double* %typed_hdata12.0, i64 %539
  %.pre728 = load i32* %23, align 4, !tbaa !8
  br label %.loopexit193

; <label>:599                                     ; preds = %.lr.ph321, %599
  %indvars.iv618 = phi i64 [ 0, %.lr.ph321 ], [ %indvars.iv.next619, %599 ]
  %typed_hdata12.1319 = phi double* [ %typed_hdata12.0, %.lr.ph321 ], [ %604, %599 ]
  %600 = add nsw i64 %indvars.iv618, %590
  %601 = getelementptr inbounds double* %527, i64 %600
  %602 = bitcast double* %601 to i64*
  %603 = load i64* %602, align 8, !tbaa !26
  %604 = getelementptr inbounds double* %typed_hdata12.1319, i64 1
  %605 = bitcast double* %typed_hdata12.1319 to i64*
  store i64 %603, i64* %605, align 8, !tbaa !26
  %indvars.iv.next619 = add i64 %indvars.iv618, %589
  %606 = icmp slt i64 %indvars.iv.next619, %539
  br i1 %606, label %599, label %.loopexit193

.loopexit193:                                     ; preds = %599, %.preheader192, %591
  %607 = phi i32 [ %.pre728, %591 ], [ %544, %.preheader192 ], [ %544, %599 ]
  %typed_hdata12.2 = phi double* [ %598, %591 ], [ %typed_hdata12.0, %.preheader192 ], [ %604, %599 ]
  %608 = icmp sgt i32 %607, 1
  br i1 %608, label %609, label %.loopexit185

; <label>:609                                     ; preds = %.loopexit193
  %610 = load i32* %541, align 4, !tbaa !2
  %611 = load i32* %537, align 4, !tbaa !2
  %612 = add nsw i32 %611, %610
  store i32 %612, i32* %537, align 4, !tbaa !2
  br label %543

; <label>:613                                     ; preds = %._crit_edge516
  %614 = bitcast i8* %289 to %struct.CCTK_COMPLEX16*
  %615 = bitcast i32* %31 to i8*
  %616 = sext i32 %334 to i64
  %617 = shl nsw i64 %616, 2
  %618 = call i64 @llvm.objectsize.i64.p0i8(i8* %28, i1 false)
  %619 = call i8* @__memcpy_chk(i8* %28, i8* %615, i64 %617, i64 %618) #8
  %620 = load i32* %34, align 4, !tbaa !2
  %621 = load i32* %31, align 4, !tbaa !2
  %622 = sub nsw i32 %620, %621
  %623 = getelementptr inbounds i8* %28, i64 4
  %624 = bitcast i8* %623 to i32*
  %.sum129 = or i64 %33, 1
  %625 = getelementptr inbounds i32* %29, i64 %.sum129
  %626 = sext i32 %622 to i64
  %627 = shl nsw i64 %626, 4
  %.sum127 = add nsw i64 %40, 1
  %628 = getelementptr inbounds i32* %29, i64 %.sum127
  %629 = icmp sgt i32 %622, 0
  %.pre726 = load i32* %23, align 4, !tbaa !8
  br label %630

; <label>:630                                     ; preds = %613, %695
  %631 = phi i32 [ %.pre726, %613 ], [ %693, %695 ]
  %typed_hdata18.0 = phi %struct.CCTK_COMPLEX16* [ %338, %613 ], [ %typed_hdata18.2, %695 ]
  %632 = icmp sgt i32 %631, 1
  br i1 %632, label %634, label %.loopexit201.thread745

.loopexit201.thread745:                           ; preds = %630
  %633 = load i32* %29, align 4, !tbaa !2
  br label %._crit_edge336

; <label>:634                                     ; preds = %630
  %635 = load i32* %624, align 4, !tbaa !2
  %636 = load i32* %625, align 4, !tbaa !2
  %637 = icmp slt i32 %635, %636
  br i1 %637, label %.loopexit201.thread, label %.preheader202

.loopexit201.thread:                              ; preds = %634
  %638 = load i32* %29, align 4, !tbaa !2
  br label %.lr.ph335

.preheader202:                                    ; preds = %634
  %639 = icmp sgt i32 %631, 2
  br i1 %639, label %.lr.ph324, label %654

.lr.ph324:                                        ; preds = %.preheader202
  %640 = sext i32 %631 to i64
  br label %641

; <label>:641                                     ; preds = %.lr.ph324, %650
  %indvars.iv620 = phi i64 [ 2, %.lr.ph324 ], [ %indvars.iv.next621, %650 ]
  %.sum131 = add nsw i64 %indvars.iv620, %40
  %642 = getelementptr inbounds i32* %29, i64 %.sum131
  %643 = load i32* %642, align 4, !tbaa !2
  %644 = getelementptr inbounds i32* %29, i64 %indvars.iv620
  %645 = load i32* %644, align 4, !tbaa !2
  %646 = add nsw i32 %645, %643
  store i32 %646, i32* %644, align 4, !tbaa !2
  %.sum132 = add nsw i64 %indvars.iv620, %33
  %647 = getelementptr inbounds i32* %29, i64 %.sum132
  %648 = load i32* %647, align 4, !tbaa !2
  %649 = icmp slt i32 %646, %648
  br i1 %649, label %._crit_edge325, label %650

; <label>:650                                     ; preds = %641
  %indvars.iv.next621 = add nuw nsw i64 %indvars.iv620, 1
  %651 = icmp slt i64 %indvars.iv.next621, %640
  br i1 %651, label %641, label %._crit_edge327

._crit_edge325:                                   ; preds = %641
  %652 = trunc i64 %indvars.iv620 to i32
  br label %654

._crit_edge327:                                   ; preds = %650
  %653 = trunc i64 %indvars.iv.next621 to i32
  br label %654

; <label>:654                                     ; preds = %._crit_edge327, %._crit_edge325, %.preheader202
  %dim14.1.lcssa = phi i32 [ %652, %._crit_edge325 ], [ %653, %._crit_edge327 ], [ 2, %.preheader202 ]
  %655 = icmp slt i32 %dim14.1.lcssa, %631
  br i1 %655, label %.preheader200, label %.loopexit185

.preheader200:                                    ; preds = %654
  %656 = icmp sgt i32 %dim14.1.lcssa, 1
  br i1 %656, label %.lr.ph331, label %.loopexit201

.lr.ph331:                                        ; preds = %.preheader200
  %657 = sext i32 %dim14.1.lcssa to i64
  br label %658

; <label>:658                                     ; preds = %.lr.ph331, %658
  %indvars.iv622 = phi i64 [ %657, %.lr.ph331 ], [ %indvars.iv.next623, %658 ]
  %indvars.iv.next623 = add nsw i64 %indvars.iv622, -1
  %.sum130 = add nsw i64 %indvars.iv.next623, %30
  %659 = getelementptr inbounds i32* %29, i64 %.sum130
  %660 = load i32* %659, align 4, !tbaa !2
  %661 = getelementptr inbounds i32* %29, i64 %indvars.iv.next623
  store i32 %660, i32* %661, align 4, !tbaa !2
  %662 = icmp sgt i64 %indvars.iv.next623, 1
  br i1 %662, label %658, label %.loopexit201

.loopexit201:                                     ; preds = %658, %.preheader200
  %663 = load i32* %29, align 4, !tbaa !2
  br i1 %632, label %.lr.ph335, label %._crit_edge336

.lr.ph335:                                        ; preds = %.loopexit201.thread, %.loopexit201
  %664 = phi i32 [ %638, %.loopexit201.thread ], [ %663, %.loopexit201 ]
  %665 = sext i32 %631 to i64
  br label %666

; <label>:666                                     ; preds = %.lr.ph335, %666
  %indvars.iv624 = phi i64 [ 1, %.lr.ph335 ], [ %indvars.iv.next625, %666 ]
  %idx15.0332 = phi i32 [ %664, %.lr.ph335 ], [ %672, %666 ]
  %667 = getelementptr inbounds i32* %29, i64 %indvars.iv624
  %668 = load i32* %667, align 4, !tbaa !2
  %.sum128 = add nsw i64 %indvars.iv624, %45
  %669 = getelementptr inbounds i32* %29, i64 %.sum128
  %670 = load i32* %669, align 4, !tbaa !2
  %671 = mul nsw i32 %670, %668
  %672 = add nsw i32 %671, %idx15.0332
  %indvars.iv.next625 = add nuw nsw i64 %indvars.iv624, 1
  %673 = icmp slt i64 %indvars.iv.next625, %665
  br i1 %673, label %666, label %._crit_edge336

._crit_edge336:                                   ; preds = %666, %.loopexit201.thread745, %.loopexit201
  %idx15.0.lcssa = phi i32 [ %663, %.loopexit201 ], [ %633, %.loopexit201.thread745 ], [ %672, %666 ]
  %674 = load i32* %41, align 4, !tbaa !2
  %675 = icmp eq i32 %674, 1
  br i1 %675, label %676, label %.preheader198

.preheader198:                                    ; preds = %._crit_edge336
  br i1 %629, label %.lr.ph340, label %.loopexit199

; <label>:676                                     ; preds = %._crit_edge336
  %677 = bitcast %struct.CCTK_COMPLEX16* %typed_hdata18.0 to i8*
  %678 = sext i32 %idx15.0.lcssa to i64
  %679 = getelementptr inbounds %struct.CCTK_COMPLEX16* %614, i64 %678
  %680 = bitcast %struct.CCTK_COMPLEX16* %679 to i8*
  %681 = call i64 @llvm.objectsize.i64.p0i8(i8* %677, i1 false)
  %682 = call i8* @__memcpy_chk(i8* %677, i8* %680, i64 %627, i64 %681) #8
  %683 = getelementptr inbounds %struct.CCTK_COMPLEX16* %typed_hdata18.0, i64 %626
  br label %.loopexit199

.lr.ph340:                                        ; preds = %.preheader198, %.lr.ph340
  %typed_hdata18.1339 = phi %struct.CCTK_COMPLEX16* [ %684, %.lr.ph340 ], [ %typed_hdata18.0, %.preheader198 ]
  %i13.1338 = phi i32 [ %691, %.lr.ph340 ], [ 0, %.preheader198 ]
  %684 = getelementptr inbounds %struct.CCTK_COMPLEX16* %typed_hdata18.1339, i64 1
  %685 = add nsw i32 %i13.1338, %idx15.0.lcssa
  %686 = sext i32 %685 to i64
  %687 = getelementptr inbounds %struct.CCTK_COMPLEX16* %614, i64 %686
  %688 = bitcast %struct.CCTK_COMPLEX16* %typed_hdata18.1339 to i8*
  %689 = bitcast %struct.CCTK_COMPLEX16* %687 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %688, i8* %689, i64 16, i32 8, i1 false), !tbaa.struct !27
  %690 = load i32* %41, align 4, !tbaa !2
  %691 = add nsw i32 %690, %i13.1338
  %692 = icmp slt i32 %691, %622
  br i1 %692, label %.lr.ph340, label %.loopexit199

.loopexit199:                                     ; preds = %.lr.ph340, %.preheader198, %676
  %typed_hdata18.2 = phi %struct.CCTK_COMPLEX16* [ %683, %676 ], [ %typed_hdata18.0, %.preheader198 ], [ %684, %.lr.ph340 ]
  %693 = load i32* %23, align 4, !tbaa !8
  %694 = icmp sgt i32 %693, 1
  br i1 %694, label %695, label %.loopexit185

; <label>:695                                     ; preds = %.loopexit199
  %696 = load i32* %628, align 4, !tbaa !2
  %697 = load i32* %624, align 4, !tbaa !2
  %698 = add nsw i32 %697, %696
  store i32 %698, i32* %624, align 4, !tbaa !2
  br label %630

; <label>:699                                     ; preds = %._crit_edge516
  %700 = bitcast i8* %289 to i16*
  %701 = bitcast i32* %31 to i8*
  %702 = sext i32 %334 to i64
  %703 = shl nsw i64 %702, 2
  %704 = call i64 @llvm.objectsize.i64.p0i8(i8* %28, i1 false)
  %705 = call i8* @__memcpy_chk(i8* %28, i8* %701, i64 %703, i64 %704) #8
  %706 = load i32* %34, align 4, !tbaa !2
  %707 = load i32* %31, align 4, !tbaa !2
  %708 = sub nsw i32 %706, %707
  %709 = getelementptr inbounds i8* %28, i64 4
  %710 = bitcast i8* %709 to i32*
  %.sum123 = or i64 %33, 1
  %711 = getelementptr inbounds i32* %29, i64 %.sum123
  %712 = sext i32 %708 to i64
  %713 = shl nsw i64 %712, 1
  %.sum121 = add nsw i64 %40, 1
  %714 = getelementptr inbounds i32* %29, i64 %.sum121
  %715 = icmp sgt i32 %708, 0
  %.pre724 = load i32* %23, align 4, !tbaa !8
  br label %716

; <label>:716                                     ; preds = %699, %780
  %717 = phi i32 [ %.pre724, %699 ], [ %778, %780 ]
  %typed_hdata24.0 = phi i16* [ %344, %699 ], [ %typed_hdata24.2, %780 ]
  %718 = icmp sgt i32 %717, 1
  br i1 %718, label %720, label %.loopexit207.thread746

.loopexit207.thread746:                           ; preds = %716
  %719 = load i32* %29, align 4, !tbaa !2
  br label %._crit_edge355

; <label>:720                                     ; preds = %716
  %721 = load i32* %710, align 4, !tbaa !2
  %722 = load i32* %711, align 4, !tbaa !2
  %723 = icmp slt i32 %721, %722
  br i1 %723, label %.loopexit207.thread, label %.preheader208

.loopexit207.thread:                              ; preds = %720
  %724 = load i32* %29, align 4, !tbaa !2
  br label %.lr.ph354

.preheader208:                                    ; preds = %720
  %725 = icmp sgt i32 %717, 2
  br i1 %725, label %.lr.ph343, label %740

.lr.ph343:                                        ; preds = %.preheader208
  %726 = sext i32 %717 to i64
  br label %727

; <label>:727                                     ; preds = %.lr.ph343, %736
  %indvars.iv626 = phi i64 [ 2, %.lr.ph343 ], [ %indvars.iv.next627, %736 ]
  %.sum125 = add nsw i64 %indvars.iv626, %40
  %728 = getelementptr inbounds i32* %29, i64 %.sum125
  %729 = load i32* %728, align 4, !tbaa !2
  %730 = getelementptr inbounds i32* %29, i64 %indvars.iv626
  %731 = load i32* %730, align 4, !tbaa !2
  %732 = add nsw i32 %731, %729
  store i32 %732, i32* %730, align 4, !tbaa !2
  %.sum126 = add nsw i64 %indvars.iv626, %33
  %733 = getelementptr inbounds i32* %29, i64 %.sum126
  %734 = load i32* %733, align 4, !tbaa !2
  %735 = icmp slt i32 %732, %734
  br i1 %735, label %._crit_edge344, label %736

; <label>:736                                     ; preds = %727
  %indvars.iv.next627 = add nuw nsw i64 %indvars.iv626, 1
  %737 = icmp slt i64 %indvars.iv.next627, %726
  br i1 %737, label %727, label %._crit_edge346

._crit_edge344:                                   ; preds = %727
  %738 = trunc i64 %indvars.iv626 to i32
  br label %740

._crit_edge346:                                   ; preds = %736
  %739 = trunc i64 %indvars.iv.next627 to i32
  br label %740

; <label>:740                                     ; preds = %._crit_edge346, %._crit_edge344, %.preheader208
  %dim20.1.lcssa = phi i32 [ %738, %._crit_edge344 ], [ %739, %._crit_edge346 ], [ 2, %.preheader208 ]
  %741 = icmp slt i32 %dim20.1.lcssa, %717
  br i1 %741, label %.preheader206, label %.loopexit185

.preheader206:                                    ; preds = %740
  %742 = icmp sgt i32 %dim20.1.lcssa, 1
  br i1 %742, label %.lr.ph350, label %.loopexit207

.lr.ph350:                                        ; preds = %.preheader206
  %743 = sext i32 %dim20.1.lcssa to i64
  br label %744

; <label>:744                                     ; preds = %.lr.ph350, %744
  %indvars.iv628 = phi i64 [ %743, %.lr.ph350 ], [ %indvars.iv.next629, %744 ]
  %indvars.iv.next629 = add nsw i64 %indvars.iv628, -1
  %.sum124 = add nsw i64 %indvars.iv.next629, %30
  %745 = getelementptr inbounds i32* %29, i64 %.sum124
  %746 = load i32* %745, align 4, !tbaa !2
  %747 = getelementptr inbounds i32* %29, i64 %indvars.iv.next629
  store i32 %746, i32* %747, align 4, !tbaa !2
  %748 = icmp sgt i64 %indvars.iv.next629, 1
  br i1 %748, label %744, label %.loopexit207

.loopexit207:                                     ; preds = %744, %.preheader206
  %749 = load i32* %29, align 4, !tbaa !2
  br i1 %718, label %.lr.ph354, label %._crit_edge355

.lr.ph354:                                        ; preds = %.loopexit207.thread, %.loopexit207
  %750 = phi i32 [ %724, %.loopexit207.thread ], [ %749, %.loopexit207 ]
  %751 = sext i32 %717 to i64
  br label %752

; <label>:752                                     ; preds = %.lr.ph354, %752
  %indvars.iv630 = phi i64 [ 1, %.lr.ph354 ], [ %indvars.iv.next631, %752 ]
  %idx21.0352 = phi i32 [ %750, %.lr.ph354 ], [ %758, %752 ]
  %753 = getelementptr inbounds i32* %29, i64 %indvars.iv630
  %754 = load i32* %753, align 4, !tbaa !2
  %.sum122 = add nsw i64 %indvars.iv630, %45
  %755 = getelementptr inbounds i32* %29, i64 %.sum122
  %756 = load i32* %755, align 4, !tbaa !2
  %757 = mul nsw i32 %756, %754
  %758 = add nsw i32 %757, %idx21.0352
  %indvars.iv.next631 = add nuw nsw i64 %indvars.iv630, 1
  %759 = icmp slt i64 %indvars.iv.next631, %751
  br i1 %759, label %752, label %._crit_edge355

._crit_edge355:                                   ; preds = %752, %.loopexit207.thread746, %.loopexit207
  %idx21.0.lcssa = phi i32 [ %749, %.loopexit207 ], [ %719, %.loopexit207.thread746 ], [ %758, %752 ]
  %760 = load i32* %41, align 4, !tbaa !2
  %761 = icmp eq i32 %760, 1
  br i1 %761, label %764, label %.preheader204

.preheader204:                                    ; preds = %._crit_edge355
  br i1 %715, label %.lr.ph359, label %.loopexit205

.lr.ph359:                                        ; preds = %.preheader204
  %762 = sext i32 %760 to i64
  %763 = sext i32 %idx21.0.lcssa to i64
  br label %772

; <label>:764                                     ; preds = %._crit_edge355
  %765 = bitcast i16* %typed_hdata24.0 to i8*
  %766 = sext i32 %idx21.0.lcssa to i64
  %767 = getelementptr inbounds i16* %700, i64 %766
  %768 = bitcast i16* %767 to i8*
  %769 = call i64 @llvm.objectsize.i64.p0i8(i8* %765, i1 false)
  %770 = call i8* @__memcpy_chk(i8* %765, i8* %768, i64 %713, i64 %769) #8
  %771 = getelementptr inbounds i16* %typed_hdata24.0, i64 %712
  %.pre725 = load i32* %23, align 4, !tbaa !8
  br label %.loopexit205

; <label>:772                                     ; preds = %.lr.ph359, %772
  %indvars.iv632 = phi i64 [ 0, %.lr.ph359 ], [ %indvars.iv.next633, %772 ]
  %typed_hdata24.1358 = phi i16* [ %typed_hdata24.0, %.lr.ph359 ], [ %776, %772 ]
  %773 = add nsw i64 %indvars.iv632, %763
  %774 = getelementptr inbounds i16* %700, i64 %773
  %775 = load i16* %774, align 2, !tbaa !28
  %776 = getelementptr inbounds i16* %typed_hdata24.1358, i64 1
  store i16 %775, i16* %typed_hdata24.1358, align 2, !tbaa !28
  %indvars.iv.next633 = add i64 %indvars.iv632, %762
  %777 = icmp slt i64 %indvars.iv.next633, %712
  br i1 %777, label %772, label %.loopexit205

.loopexit205:                                     ; preds = %772, %.preheader204, %764
  %778 = phi i32 [ %.pre725, %764 ], [ %717, %.preheader204 ], [ %717, %772 ]
  %typed_hdata24.2 = phi i16* [ %771, %764 ], [ %typed_hdata24.0, %.preheader204 ], [ %776, %772 ]
  %779 = icmp sgt i32 %778, 1
  br i1 %779, label %780, label %.loopexit185

; <label>:780                                     ; preds = %.loopexit205
  %781 = load i32* %714, align 4, !tbaa !2
  %782 = load i32* %710, align 4, !tbaa !2
  %783 = add nsw i32 %782, %781
  store i32 %783, i32* %710, align 4, !tbaa !2
  br label %716

; <label>:784                                     ; preds = %._crit_edge516
  %785 = bitcast i8* %289 to i32*
  %786 = bitcast i32* %31 to i8*
  %787 = sext i32 %334 to i64
  %788 = shl nsw i64 %787, 2
  %789 = call i64 @llvm.objectsize.i64.p0i8(i8* %28, i1 false)
  %790 = call i8* @__memcpy_chk(i8* %28, i8* %786, i64 %788, i64 %789) #8
  %791 = load i32* %34, align 4, !tbaa !2
  %792 = load i32* %31, align 4, !tbaa !2
  %793 = sub nsw i32 %791, %792
  %794 = getelementptr inbounds i8* %28, i64 4
  %795 = bitcast i8* %794 to i32*
  %.sum117 = or i64 %33, 1
  %796 = getelementptr inbounds i32* %29, i64 %.sum117
  %797 = sext i32 %793 to i64
  %798 = shl nsw i64 %797, 2
  %.sum115 = add nsw i64 %40, 1
  %799 = getelementptr inbounds i32* %29, i64 %.sum115
  %800 = icmp sgt i32 %793, 0
  %.pre723 = load i32* %23, align 4, !tbaa !8
  br label %801

; <label>:801                                     ; preds = %784, %865
  %802 = phi i32 [ %.pre723, %784 ], [ %863, %865 ]
  %typed_hdata30.0 = phi i32* [ %343, %784 ], [ %typed_hdata30.2, %865 ]
  %803 = icmp sgt i32 %802, 1
  br i1 %803, label %805, label %.loopexit213.thread747

.loopexit213.thread747:                           ; preds = %801
  %804 = load i32* %29, align 4, !tbaa !2
  br label %._crit_edge374

; <label>:805                                     ; preds = %801
  %806 = load i32* %795, align 4, !tbaa !2
  %807 = load i32* %796, align 4, !tbaa !2
  %808 = icmp slt i32 %806, %807
  br i1 %808, label %.loopexit213.thread, label %.preheader214

.loopexit213.thread:                              ; preds = %805
  %809 = load i32* %29, align 4, !tbaa !2
  br label %.lr.ph373

.preheader214:                                    ; preds = %805
  %810 = icmp sgt i32 %802, 2
  br i1 %810, label %.lr.ph362, label %825

.lr.ph362:                                        ; preds = %.preheader214
  %811 = sext i32 %802 to i64
  br label %812

; <label>:812                                     ; preds = %.lr.ph362, %821
  %indvars.iv634 = phi i64 [ 2, %.lr.ph362 ], [ %indvars.iv.next635, %821 ]
  %.sum119 = add nsw i64 %indvars.iv634, %40
  %813 = getelementptr inbounds i32* %29, i64 %.sum119
  %814 = load i32* %813, align 4, !tbaa !2
  %815 = getelementptr inbounds i32* %29, i64 %indvars.iv634
  %816 = load i32* %815, align 4, !tbaa !2
  %817 = add nsw i32 %816, %814
  store i32 %817, i32* %815, align 4, !tbaa !2
  %.sum120 = add nsw i64 %indvars.iv634, %33
  %818 = getelementptr inbounds i32* %29, i64 %.sum120
  %819 = load i32* %818, align 4, !tbaa !2
  %820 = icmp slt i32 %817, %819
  br i1 %820, label %._crit_edge363, label %821

; <label>:821                                     ; preds = %812
  %indvars.iv.next635 = add nuw nsw i64 %indvars.iv634, 1
  %822 = icmp slt i64 %indvars.iv.next635, %811
  br i1 %822, label %812, label %._crit_edge365

._crit_edge363:                                   ; preds = %812
  %823 = trunc i64 %indvars.iv634 to i32
  br label %825

._crit_edge365:                                   ; preds = %821
  %824 = trunc i64 %indvars.iv.next635 to i32
  br label %825

; <label>:825                                     ; preds = %._crit_edge365, %._crit_edge363, %.preheader214
  %dim26.1.lcssa = phi i32 [ %823, %._crit_edge363 ], [ %824, %._crit_edge365 ], [ 2, %.preheader214 ]
  %826 = icmp slt i32 %dim26.1.lcssa, %802
  br i1 %826, label %.preheader212, label %.loopexit185

.preheader212:                                    ; preds = %825
  %827 = icmp sgt i32 %dim26.1.lcssa, 1
  br i1 %827, label %.lr.ph369, label %.loopexit213

.lr.ph369:                                        ; preds = %.preheader212
  %828 = sext i32 %dim26.1.lcssa to i64
  br label %829

; <label>:829                                     ; preds = %.lr.ph369, %829
  %indvars.iv636 = phi i64 [ %828, %.lr.ph369 ], [ %indvars.iv.next637, %829 ]
  %indvars.iv.next637 = add nsw i64 %indvars.iv636, -1
  %.sum118 = add nsw i64 %indvars.iv.next637, %30
  %830 = getelementptr inbounds i32* %29, i64 %.sum118
  %831 = load i32* %830, align 4, !tbaa !2
  %832 = getelementptr inbounds i32* %29, i64 %indvars.iv.next637
  store i32 %831, i32* %832, align 4, !tbaa !2
  %833 = icmp sgt i64 %indvars.iv.next637, 1
  br i1 %833, label %829, label %.loopexit213

.loopexit213:                                     ; preds = %829, %.preheader212
  %834 = load i32* %29, align 4, !tbaa !2
  br i1 %803, label %.lr.ph373, label %._crit_edge374

.lr.ph373:                                        ; preds = %.loopexit213.thread, %.loopexit213
  %835 = phi i32 [ %809, %.loopexit213.thread ], [ %834, %.loopexit213 ]
  %836 = sext i32 %802 to i64
  br label %837

; <label>:837                                     ; preds = %.lr.ph373, %837
  %indvars.iv638 = phi i64 [ 1, %.lr.ph373 ], [ %indvars.iv.next639, %837 ]
  %idx27.0371 = phi i32 [ %835, %.lr.ph373 ], [ %843, %837 ]
  %838 = getelementptr inbounds i32* %29, i64 %indvars.iv638
  %839 = load i32* %838, align 4, !tbaa !2
  %.sum116 = add nsw i64 %indvars.iv638, %45
  %840 = getelementptr inbounds i32* %29, i64 %.sum116
  %841 = load i32* %840, align 4, !tbaa !2
  %842 = mul nsw i32 %841, %839
  %843 = add nsw i32 %842, %idx27.0371
  %indvars.iv.next639 = add nuw nsw i64 %indvars.iv638, 1
  %844 = icmp slt i64 %indvars.iv.next639, %836
  br i1 %844, label %837, label %._crit_edge374

._crit_edge374:                                   ; preds = %837, %.loopexit213.thread747, %.loopexit213
  %idx27.0.lcssa = phi i32 [ %834, %.loopexit213 ], [ %804, %.loopexit213.thread747 ], [ %843, %837 ]
  %845 = load i32* %41, align 4, !tbaa !2
  %846 = icmp eq i32 %845, 1
  br i1 %846, label %847, label %.preheader210

.preheader210:                                    ; preds = %._crit_edge374
  br i1 %800, label %.lr.ph378, label %.loopexit211

; <label>:847                                     ; preds = %._crit_edge374
  %848 = bitcast i32* %typed_hdata30.0 to i8*
  %849 = sext i32 %idx27.0.lcssa to i64
  %850 = getelementptr inbounds i32* %785, i64 %849
  %851 = bitcast i32* %850 to i8*
  %852 = call i64 @llvm.objectsize.i64.p0i8(i8* %848, i1 false)
  %853 = call i8* @__memcpy_chk(i8* %848, i8* %851, i64 %798, i64 %852) #8
  %854 = getelementptr inbounds i32* %typed_hdata30.0, i64 %797
  br label %.loopexit211

.lr.ph378:                                        ; preds = %.preheader210, %.lr.ph378
  %typed_hdata30.1377 = phi i32* [ %859, %.lr.ph378 ], [ %typed_hdata30.0, %.preheader210 ]
  %i25.1376 = phi i32 [ %861, %.lr.ph378 ], [ 0, %.preheader210 ]
  %855 = add nsw i32 %i25.1376, %idx27.0.lcssa
  %856 = sext i32 %855 to i64
  %857 = getelementptr inbounds i32* %785, i64 %856
  %858 = load i32* %857, align 4, !tbaa !2
  %859 = getelementptr inbounds i32* %typed_hdata30.1377, i64 1
  store i32 %858, i32* %typed_hdata30.1377, align 4, !tbaa !2
  %860 = load i32* %41, align 4, !tbaa !2
  %861 = add nsw i32 %860, %i25.1376
  %862 = icmp slt i32 %861, %793
  br i1 %862, label %.lr.ph378, label %.loopexit211

.loopexit211:                                     ; preds = %.lr.ph378, %.preheader210, %847
  %typed_hdata30.2 = phi i32* [ %854, %847 ], [ %typed_hdata30.0, %.preheader210 ], [ %859, %.lr.ph378 ]
  %863 = load i32* %23, align 4, !tbaa !8
  %864 = icmp sgt i32 %863, 1
  br i1 %864, label %865, label %.loopexit185

; <label>:865                                     ; preds = %.loopexit211
  %866 = load i32* %799, align 4, !tbaa !2
  %867 = load i32* %795, align 4, !tbaa !2
  %868 = add nsw i32 %867, %866
  store i32 %868, i32* %795, align 4, !tbaa !2
  br label %801

; <label>:869                                     ; preds = %._crit_edge516
  %870 = bitcast i8* %289 to i64*
  %871 = bitcast i32* %31 to i8*
  %872 = sext i32 %334 to i64
  %873 = shl nsw i64 %872, 2
  %874 = call i64 @llvm.objectsize.i64.p0i8(i8* %28, i1 false)
  %875 = call i8* @__memcpy_chk(i8* %28, i8* %871, i64 %873, i64 %874) #8
  %876 = load i32* %34, align 4, !tbaa !2
  %877 = load i32* %31, align 4, !tbaa !2
  %878 = sub nsw i32 %876, %877
  %879 = getelementptr inbounds i8* %28, i64 4
  %880 = bitcast i8* %879 to i32*
  %.sum111 = or i64 %33, 1
  %881 = getelementptr inbounds i32* %29, i64 %.sum111
  %882 = sext i32 %878 to i64
  %883 = shl nsw i64 %882, 3
  %.sum109 = add nsw i64 %40, 1
  %884 = getelementptr inbounds i32* %29, i64 %.sum109
  %885 = icmp sgt i32 %878, 0
  %.pre721 = load i32* %23, align 4, !tbaa !8
  br label %886

; <label>:886                                     ; preds = %869, %950
  %887 = phi i32 [ %.pre721, %869 ], [ %948, %950 ]
  %typed_hdata36.0 = phi i64* [ %342, %869 ], [ %typed_hdata36.2, %950 ]
  %888 = icmp sgt i32 %887, 1
  br i1 %888, label %890, label %.loopexit219.thread748

.loopexit219.thread748:                           ; preds = %886
  %889 = load i32* %29, align 4, !tbaa !2
  br label %._crit_edge393

; <label>:890                                     ; preds = %886
  %891 = load i32* %880, align 4, !tbaa !2
  %892 = load i32* %881, align 4, !tbaa !2
  %893 = icmp slt i32 %891, %892
  br i1 %893, label %.loopexit219.thread, label %.preheader220

.loopexit219.thread:                              ; preds = %890
  %894 = load i32* %29, align 4, !tbaa !2
  br label %.lr.ph392

.preheader220:                                    ; preds = %890
  %895 = icmp sgt i32 %887, 2
  br i1 %895, label %.lr.ph381, label %910

.lr.ph381:                                        ; preds = %.preheader220
  %896 = sext i32 %887 to i64
  br label %897

; <label>:897                                     ; preds = %.lr.ph381, %906
  %indvars.iv640 = phi i64 [ 2, %.lr.ph381 ], [ %indvars.iv.next641, %906 ]
  %.sum113 = add nsw i64 %indvars.iv640, %40
  %898 = getelementptr inbounds i32* %29, i64 %.sum113
  %899 = load i32* %898, align 4, !tbaa !2
  %900 = getelementptr inbounds i32* %29, i64 %indvars.iv640
  %901 = load i32* %900, align 4, !tbaa !2
  %902 = add nsw i32 %901, %899
  store i32 %902, i32* %900, align 4, !tbaa !2
  %.sum114 = add nsw i64 %indvars.iv640, %33
  %903 = getelementptr inbounds i32* %29, i64 %.sum114
  %904 = load i32* %903, align 4, !tbaa !2
  %905 = icmp slt i32 %902, %904
  br i1 %905, label %._crit_edge382, label %906

; <label>:906                                     ; preds = %897
  %indvars.iv.next641 = add nuw nsw i64 %indvars.iv640, 1
  %907 = icmp slt i64 %indvars.iv.next641, %896
  br i1 %907, label %897, label %._crit_edge384

._crit_edge382:                                   ; preds = %897
  %908 = trunc i64 %indvars.iv640 to i32
  br label %910

._crit_edge384:                                   ; preds = %906
  %909 = trunc i64 %indvars.iv.next641 to i32
  br label %910

; <label>:910                                     ; preds = %._crit_edge384, %._crit_edge382, %.preheader220
  %dim32.1.lcssa = phi i32 [ %908, %._crit_edge382 ], [ %909, %._crit_edge384 ], [ 2, %.preheader220 ]
  %911 = icmp slt i32 %dim32.1.lcssa, %887
  br i1 %911, label %.preheader218, label %.loopexit185

.preheader218:                                    ; preds = %910
  %912 = icmp sgt i32 %dim32.1.lcssa, 1
  br i1 %912, label %.lr.ph388, label %.loopexit219

.lr.ph388:                                        ; preds = %.preheader218
  %913 = sext i32 %dim32.1.lcssa to i64
  br label %914

; <label>:914                                     ; preds = %.lr.ph388, %914
  %indvars.iv642 = phi i64 [ %913, %.lr.ph388 ], [ %indvars.iv.next643, %914 ]
  %indvars.iv.next643 = add nsw i64 %indvars.iv642, -1
  %.sum112 = add nsw i64 %indvars.iv.next643, %30
  %915 = getelementptr inbounds i32* %29, i64 %.sum112
  %916 = load i32* %915, align 4, !tbaa !2
  %917 = getelementptr inbounds i32* %29, i64 %indvars.iv.next643
  store i32 %916, i32* %917, align 4, !tbaa !2
  %918 = icmp sgt i64 %indvars.iv.next643, 1
  br i1 %918, label %914, label %.loopexit219

.loopexit219:                                     ; preds = %914, %.preheader218
  %919 = load i32* %29, align 4, !tbaa !2
  br i1 %888, label %.lr.ph392, label %._crit_edge393

.lr.ph392:                                        ; preds = %.loopexit219.thread, %.loopexit219
  %920 = phi i32 [ %894, %.loopexit219.thread ], [ %919, %.loopexit219 ]
  %921 = sext i32 %887 to i64
  br label %922

; <label>:922                                     ; preds = %.lr.ph392, %922
  %indvars.iv644 = phi i64 [ 1, %.lr.ph392 ], [ %indvars.iv.next645, %922 ]
  %idx33.0390 = phi i32 [ %920, %.lr.ph392 ], [ %928, %922 ]
  %923 = getelementptr inbounds i32* %29, i64 %indvars.iv644
  %924 = load i32* %923, align 4, !tbaa !2
  %.sum110 = add nsw i64 %indvars.iv644, %45
  %925 = getelementptr inbounds i32* %29, i64 %.sum110
  %926 = load i32* %925, align 4, !tbaa !2
  %927 = mul nsw i32 %926, %924
  %928 = add nsw i32 %927, %idx33.0390
  %indvars.iv.next645 = add nuw nsw i64 %indvars.iv644, 1
  %929 = icmp slt i64 %indvars.iv.next645, %921
  br i1 %929, label %922, label %._crit_edge393

._crit_edge393:                                   ; preds = %922, %.loopexit219.thread748, %.loopexit219
  %idx33.0.lcssa = phi i32 [ %919, %.loopexit219 ], [ %889, %.loopexit219.thread748 ], [ %928, %922 ]
  %930 = load i32* %41, align 4, !tbaa !2
  %931 = icmp eq i32 %930, 1
  br i1 %931, label %934, label %.preheader216

.preheader216:                                    ; preds = %._crit_edge393
  br i1 %885, label %.lr.ph397, label %.loopexit217

.lr.ph397:                                        ; preds = %.preheader216
  %932 = sext i32 %930 to i64
  %933 = sext i32 %idx33.0.lcssa to i64
  br label %942

; <label>:934                                     ; preds = %._crit_edge393
  %935 = bitcast i64* %typed_hdata36.0 to i8*
  %936 = sext i32 %idx33.0.lcssa to i64
  %937 = getelementptr inbounds i64* %870, i64 %936
  %938 = bitcast i64* %937 to i8*
  %939 = call i64 @llvm.objectsize.i64.p0i8(i8* %935, i1 false)
  %940 = call i8* @__memcpy_chk(i8* %935, i8* %938, i64 %883, i64 %939) #8
  %941 = getelementptr inbounds i64* %typed_hdata36.0, i64 %882
  %.pre722 = load i32* %23, align 4, !tbaa !8
  br label %.loopexit217

; <label>:942                                     ; preds = %.lr.ph397, %942
  %indvars.iv646 = phi i64 [ 0, %.lr.ph397 ], [ %indvars.iv.next647, %942 ]
  %typed_hdata36.1396 = phi i64* [ %typed_hdata36.0, %.lr.ph397 ], [ %946, %942 ]
  %943 = add nsw i64 %indvars.iv646, %933
  %944 = getelementptr inbounds i64* %870, i64 %943
  %945 = load i64* %944, align 8, !tbaa !30
  %946 = getelementptr inbounds i64* %typed_hdata36.1396, i64 1
  store i64 %945, i64* %typed_hdata36.1396, align 8, !tbaa !30
  %indvars.iv.next647 = add i64 %indvars.iv646, %932
  %947 = icmp slt i64 %indvars.iv.next647, %882
  br i1 %947, label %942, label %.loopexit217

.loopexit217:                                     ; preds = %942, %.preheader216, %934
  %948 = phi i32 [ %.pre722, %934 ], [ %887, %.preheader216 ], [ %887, %942 ]
  %typed_hdata36.2 = phi i64* [ %941, %934 ], [ %typed_hdata36.0, %.preheader216 ], [ %946, %942 ]
  %949 = icmp sgt i32 %948, 1
  br i1 %949, label %950, label %.loopexit185

; <label>:950                                     ; preds = %.loopexit217
  %951 = load i32* %884, align 4, !tbaa !2
  %952 = load i32* %880, align 4, !tbaa !2
  %953 = add nsw i32 %952, %951
  store i32 %953, i32* %880, align 4, !tbaa !2
  br label %886

; <label>:954                                     ; preds = %._crit_edge516
  %955 = bitcast i8* %289 to float*
  %956 = bitcast i32* %31 to i8*
  %957 = sext i32 %334 to i64
  %958 = shl nsw i64 %957, 2
  %959 = call i64 @llvm.objectsize.i64.p0i8(i8* %28, i1 false)
  %960 = call i8* @__memcpy_chk(i8* %28, i8* %956, i64 %958, i64 %959) #8
  %961 = load i32* %34, align 4, !tbaa !2
  %962 = load i32* %31, align 4, !tbaa !2
  %963 = sub nsw i32 %961, %962
  %964 = getelementptr inbounds i8* %28, i64 4
  %965 = bitcast i8* %964 to i32*
  %.sum105 = or i64 %33, 1
  %966 = getelementptr inbounds i32* %29, i64 %.sum105
  %967 = sext i32 %963 to i64
  %968 = shl nsw i64 %967, 2
  %.sum103 = add nsw i64 %40, 1
  %969 = getelementptr inbounds i32* %29, i64 %.sum103
  %970 = icmp sgt i32 %963, 0
  %.pre719 = load i32* %23, align 4, !tbaa !8
  br label %971

; <label>:971                                     ; preds = %954, %1037
  %972 = phi i32 [ %.pre719, %954 ], [ %1035, %1037 ]
  %typed_hdata42.0 = phi float* [ %341, %954 ], [ %typed_hdata42.2, %1037 ]
  %973 = icmp sgt i32 %972, 1
  br i1 %973, label %975, label %.loopexit225.thread749

.loopexit225.thread749:                           ; preds = %971
  %974 = load i32* %29, align 4, !tbaa !2
  br label %._crit_edge412

; <label>:975                                     ; preds = %971
  %976 = load i32* %965, align 4, !tbaa !2
  %977 = load i32* %966, align 4, !tbaa !2
  %978 = icmp slt i32 %976, %977
  br i1 %978, label %.loopexit225.thread, label %.preheader226

.loopexit225.thread:                              ; preds = %975
  %979 = load i32* %29, align 4, !tbaa !2
  br label %.lr.ph411

.preheader226:                                    ; preds = %975
  %980 = icmp sgt i32 %972, 2
  br i1 %980, label %.lr.ph400, label %995

.lr.ph400:                                        ; preds = %.preheader226
  %981 = sext i32 %972 to i64
  br label %982

; <label>:982                                     ; preds = %.lr.ph400, %991
  %indvars.iv648 = phi i64 [ 2, %.lr.ph400 ], [ %indvars.iv.next649, %991 ]
  %.sum107 = add nsw i64 %indvars.iv648, %40
  %983 = getelementptr inbounds i32* %29, i64 %.sum107
  %984 = load i32* %983, align 4, !tbaa !2
  %985 = getelementptr inbounds i32* %29, i64 %indvars.iv648
  %986 = load i32* %985, align 4, !tbaa !2
  %987 = add nsw i32 %986, %984
  store i32 %987, i32* %985, align 4, !tbaa !2
  %.sum108 = add nsw i64 %indvars.iv648, %33
  %988 = getelementptr inbounds i32* %29, i64 %.sum108
  %989 = load i32* %988, align 4, !tbaa !2
  %990 = icmp slt i32 %987, %989
  br i1 %990, label %._crit_edge401, label %991

; <label>:991                                     ; preds = %982
  %indvars.iv.next649 = add nuw nsw i64 %indvars.iv648, 1
  %992 = icmp slt i64 %indvars.iv.next649, %981
  br i1 %992, label %982, label %._crit_edge403

._crit_edge401:                                   ; preds = %982
  %993 = trunc i64 %indvars.iv648 to i32
  br label %995

._crit_edge403:                                   ; preds = %991
  %994 = trunc i64 %indvars.iv.next649 to i32
  br label %995

; <label>:995                                     ; preds = %._crit_edge403, %._crit_edge401, %.preheader226
  %dim38.1.lcssa = phi i32 [ %993, %._crit_edge401 ], [ %994, %._crit_edge403 ], [ 2, %.preheader226 ]
  %996 = icmp slt i32 %dim38.1.lcssa, %972
  br i1 %996, label %.preheader224, label %.loopexit185

.preheader224:                                    ; preds = %995
  %997 = icmp sgt i32 %dim38.1.lcssa, 1
  br i1 %997, label %.lr.ph407, label %.loopexit225

.lr.ph407:                                        ; preds = %.preheader224
  %998 = sext i32 %dim38.1.lcssa to i64
  br label %999

; <label>:999                                     ; preds = %.lr.ph407, %999
  %indvars.iv650 = phi i64 [ %998, %.lr.ph407 ], [ %indvars.iv.next651, %999 ]
  %indvars.iv.next651 = add nsw i64 %indvars.iv650, -1
  %.sum106 = add nsw i64 %indvars.iv.next651, %30
  %1000 = getelementptr inbounds i32* %29, i64 %.sum106
  %1001 = load i32* %1000, align 4, !tbaa !2
  %1002 = getelementptr inbounds i32* %29, i64 %indvars.iv.next651
  store i32 %1001, i32* %1002, align 4, !tbaa !2
  %1003 = icmp sgt i64 %indvars.iv.next651, 1
  br i1 %1003, label %999, label %.loopexit225

.loopexit225:                                     ; preds = %999, %.preheader224
  %1004 = load i32* %29, align 4, !tbaa !2
  br i1 %973, label %.lr.ph411, label %._crit_edge412

.lr.ph411:                                        ; preds = %.loopexit225.thread, %.loopexit225
  %1005 = phi i32 [ %979, %.loopexit225.thread ], [ %1004, %.loopexit225 ]
  %1006 = sext i32 %972 to i64
  br label %1007

; <label>:1007                                    ; preds = %.lr.ph411, %1007
  %indvars.iv652 = phi i64 [ 1, %.lr.ph411 ], [ %indvars.iv.next653, %1007 ]
  %idx39.0409 = phi i32 [ %1005, %.lr.ph411 ], [ %1013, %1007 ]
  %1008 = getelementptr inbounds i32* %29, i64 %indvars.iv652
  %1009 = load i32* %1008, align 4, !tbaa !2
  %.sum104 = add nsw i64 %indvars.iv652, %45
  %1010 = getelementptr inbounds i32* %29, i64 %.sum104
  %1011 = load i32* %1010, align 4, !tbaa !2
  %1012 = mul nsw i32 %1011, %1009
  %1013 = add nsw i32 %1012, %idx39.0409
  %indvars.iv.next653 = add nuw nsw i64 %indvars.iv652, 1
  %1014 = icmp slt i64 %indvars.iv.next653, %1006
  br i1 %1014, label %1007, label %._crit_edge412

._crit_edge412:                                   ; preds = %1007, %.loopexit225.thread749, %.loopexit225
  %idx39.0.lcssa = phi i32 [ %1004, %.loopexit225 ], [ %974, %.loopexit225.thread749 ], [ %1013, %1007 ]
  %1015 = load i32* %41, align 4, !tbaa !2
  %1016 = icmp eq i32 %1015, 1
  br i1 %1016, label %1019, label %.preheader222

.preheader222:                                    ; preds = %._crit_edge412
  br i1 %970, label %.lr.ph416, label %.loopexit223

.lr.ph416:                                        ; preds = %.preheader222
  %1017 = sext i32 %1015 to i64
  %1018 = sext i32 %idx39.0.lcssa to i64
  br label %1027

; <label>:1019                                    ; preds = %._crit_edge412
  %1020 = bitcast float* %typed_hdata42.0 to i8*
  %1021 = sext i32 %idx39.0.lcssa to i64
  %1022 = getelementptr inbounds float* %955, i64 %1021
  %1023 = bitcast float* %1022 to i8*
  %1024 = call i64 @llvm.objectsize.i64.p0i8(i8* %1020, i1 false)
  %1025 = call i8* @__memcpy_chk(i8* %1020, i8* %1023, i64 %968, i64 %1024) #8
  %1026 = getelementptr inbounds float* %typed_hdata42.0, i64 %967
  %.pre720 = load i32* %23, align 4, !tbaa !8
  br label %.loopexit223

; <label>:1027                                    ; preds = %.lr.ph416, %1027
  %indvars.iv654 = phi i64 [ 0, %.lr.ph416 ], [ %indvars.iv.next655, %1027 ]
  %typed_hdata42.1415 = phi float* [ %typed_hdata42.0, %.lr.ph416 ], [ %1032, %1027 ]
  %1028 = add nsw i64 %indvars.iv654, %1018
  %1029 = getelementptr inbounds float* %955, i64 %1028
  %1030 = bitcast float* %1029 to i32*
  %1031 = load i32* %1030, align 4, !tbaa !32
  %1032 = getelementptr inbounds float* %typed_hdata42.1415, i64 1
  %1033 = bitcast float* %typed_hdata42.1415 to i32*
  store i32 %1031, i32* %1033, align 4, !tbaa !32
  %indvars.iv.next655 = add i64 %indvars.iv654, %1017
  %1034 = icmp slt i64 %indvars.iv.next655, %967
  br i1 %1034, label %1027, label %.loopexit223

.loopexit223:                                     ; preds = %1027, %.preheader222, %1019
  %1035 = phi i32 [ %.pre720, %1019 ], [ %972, %.preheader222 ], [ %972, %1027 ]
  %typed_hdata42.2 = phi float* [ %1026, %1019 ], [ %typed_hdata42.0, %.preheader222 ], [ %1032, %1027 ]
  %1036 = icmp sgt i32 %1035, 1
  br i1 %1036, label %1037, label %.loopexit185

; <label>:1037                                    ; preds = %.loopexit223
  %1038 = load i32* %969, align 4, !tbaa !2
  %1039 = load i32* %965, align 4, !tbaa !2
  %1040 = add nsw i32 %1039, %1038
  store i32 %1040, i32* %965, align 4, !tbaa !2
  br label %971

; <label>:1041                                    ; preds = %._crit_edge516
  %1042 = bitcast i8* %289 to %struct.CCTK_COMPLEX8*
  %1043 = bitcast i32* %31 to i8*
  %1044 = sext i32 %334 to i64
  %1045 = shl nsw i64 %1044, 2
  %1046 = call i64 @llvm.objectsize.i64.p0i8(i8* %28, i1 false)
  %1047 = call i8* @__memcpy_chk(i8* %28, i8* %1043, i64 %1045, i64 %1046) #8
  %1048 = load i32* %34, align 4, !tbaa !2
  %1049 = load i32* %31, align 4, !tbaa !2
  %1050 = sub nsw i32 %1048, %1049
  %1051 = getelementptr inbounds i8* %28, i64 4
  %1052 = bitcast i8* %1051 to i32*
  %.sum99 = or i64 %33, 1
  %1053 = getelementptr inbounds i32* %29, i64 %.sum99
  %1054 = sext i32 %1050 to i64
  %1055 = shl nsw i64 %1054, 3
  %.sum97 = add nsw i64 %40, 1
  %1056 = getelementptr inbounds i32* %29, i64 %.sum97
  %1057 = icmp sgt i32 %1050, 0
  %.pre718 = load i32* %23, align 4, !tbaa !8
  br label %1058

; <label>:1058                                    ; preds = %1041, %1124
  %1059 = phi i32 [ %.pre718, %1041 ], [ %1122, %1124 ]
  %typed_hdata48.0 = phi %struct.CCTK_COMPLEX8* [ %340, %1041 ], [ %typed_hdata48.2, %1124 ]
  %1060 = icmp sgt i32 %1059, 1
  br i1 %1060, label %1062, label %.loopexit231.thread750

.loopexit231.thread750:                           ; preds = %1058
  %1061 = load i32* %29, align 4, !tbaa !2
  br label %._crit_edge431

; <label>:1062                                    ; preds = %1058
  %1063 = load i32* %1052, align 4, !tbaa !2
  %1064 = load i32* %1053, align 4, !tbaa !2
  %1065 = icmp slt i32 %1063, %1064
  br i1 %1065, label %.loopexit231.thread, label %.preheader232

.loopexit231.thread:                              ; preds = %1062
  %1066 = load i32* %29, align 4, !tbaa !2
  br label %.lr.ph430

.preheader232:                                    ; preds = %1062
  %1067 = icmp sgt i32 %1059, 2
  br i1 %1067, label %.lr.ph419, label %1082

.lr.ph419:                                        ; preds = %.preheader232
  %1068 = sext i32 %1059 to i64
  br label %1069

; <label>:1069                                    ; preds = %.lr.ph419, %1078
  %indvars.iv656 = phi i64 [ 2, %.lr.ph419 ], [ %indvars.iv.next657, %1078 ]
  %.sum101 = add nsw i64 %indvars.iv656, %40
  %1070 = getelementptr inbounds i32* %29, i64 %.sum101
  %1071 = load i32* %1070, align 4, !tbaa !2
  %1072 = getelementptr inbounds i32* %29, i64 %indvars.iv656
  %1073 = load i32* %1072, align 4, !tbaa !2
  %1074 = add nsw i32 %1073, %1071
  store i32 %1074, i32* %1072, align 4, !tbaa !2
  %.sum102 = add nsw i64 %indvars.iv656, %33
  %1075 = getelementptr inbounds i32* %29, i64 %.sum102
  %1076 = load i32* %1075, align 4, !tbaa !2
  %1077 = icmp slt i32 %1074, %1076
  br i1 %1077, label %._crit_edge420, label %1078

; <label>:1078                                    ; preds = %1069
  %indvars.iv.next657 = add nuw nsw i64 %indvars.iv656, 1
  %1079 = icmp slt i64 %indvars.iv.next657, %1068
  br i1 %1079, label %1069, label %._crit_edge422

._crit_edge420:                                   ; preds = %1069
  %1080 = trunc i64 %indvars.iv656 to i32
  br label %1082

._crit_edge422:                                   ; preds = %1078
  %1081 = trunc i64 %indvars.iv.next657 to i32
  br label %1082

; <label>:1082                                    ; preds = %._crit_edge422, %._crit_edge420, %.preheader232
  %dim44.1.lcssa = phi i32 [ %1080, %._crit_edge420 ], [ %1081, %._crit_edge422 ], [ 2, %.preheader232 ]
  %1083 = icmp slt i32 %dim44.1.lcssa, %1059
  br i1 %1083, label %.preheader230, label %.loopexit185

.preheader230:                                    ; preds = %1082
  %1084 = icmp sgt i32 %dim44.1.lcssa, 1
  br i1 %1084, label %.lr.ph426, label %.loopexit231

.lr.ph426:                                        ; preds = %.preheader230
  %1085 = sext i32 %dim44.1.lcssa to i64
  br label %1086

; <label>:1086                                    ; preds = %.lr.ph426, %1086
  %indvars.iv658 = phi i64 [ %1085, %.lr.ph426 ], [ %indvars.iv.next659, %1086 ]
  %indvars.iv.next659 = add nsw i64 %indvars.iv658, -1
  %.sum100 = add nsw i64 %indvars.iv.next659, %30
  %1087 = getelementptr inbounds i32* %29, i64 %.sum100
  %1088 = load i32* %1087, align 4, !tbaa !2
  %1089 = getelementptr inbounds i32* %29, i64 %indvars.iv.next659
  store i32 %1088, i32* %1089, align 4, !tbaa !2
  %1090 = icmp sgt i64 %indvars.iv.next659, 1
  br i1 %1090, label %1086, label %.loopexit231

.loopexit231:                                     ; preds = %1086, %.preheader230
  %1091 = load i32* %29, align 4, !tbaa !2
  br i1 %1060, label %.lr.ph430, label %._crit_edge431

.lr.ph430:                                        ; preds = %.loopexit231.thread, %.loopexit231
  %1092 = phi i32 [ %1066, %.loopexit231.thread ], [ %1091, %.loopexit231 ]
  %1093 = sext i32 %1059 to i64
  br label %1094

; <label>:1094                                    ; preds = %.lr.ph430, %1094
  %indvars.iv660 = phi i64 [ 1, %.lr.ph430 ], [ %indvars.iv.next661, %1094 ]
  %idx45.0428 = phi i32 [ %1092, %.lr.ph430 ], [ %1100, %1094 ]
  %1095 = getelementptr inbounds i32* %29, i64 %indvars.iv660
  %1096 = load i32* %1095, align 4, !tbaa !2
  %.sum98 = add nsw i64 %indvars.iv660, %45
  %1097 = getelementptr inbounds i32* %29, i64 %.sum98
  %1098 = load i32* %1097, align 4, !tbaa !2
  %1099 = mul nsw i32 %1098, %1096
  %1100 = add nsw i32 %1099, %idx45.0428
  %indvars.iv.next661 = add nuw nsw i64 %indvars.iv660, 1
  %1101 = icmp slt i64 %indvars.iv.next661, %1093
  br i1 %1101, label %1094, label %._crit_edge431

._crit_edge431:                                   ; preds = %1094, %.loopexit231.thread750, %.loopexit231
  %idx45.0.lcssa = phi i32 [ %1091, %.loopexit231 ], [ %1061, %.loopexit231.thread750 ], [ %1100, %1094 ]
  %1102 = load i32* %41, align 4, !tbaa !2
  %1103 = icmp eq i32 %1102, 1
  br i1 %1103, label %1104, label %.preheader228

.preheader228:                                    ; preds = %._crit_edge431
  br i1 %1057, label %.lr.ph435, label %.loopexit229

; <label>:1104                                    ; preds = %._crit_edge431
  %1105 = bitcast %struct.CCTK_COMPLEX8* %typed_hdata48.0 to i8*
  %1106 = sext i32 %idx45.0.lcssa to i64
  %1107 = getelementptr inbounds %struct.CCTK_COMPLEX8* %1042, i64 %1106
  %1108 = bitcast %struct.CCTK_COMPLEX8* %1107 to i8*
  %1109 = call i64 @llvm.objectsize.i64.p0i8(i8* %1105, i1 false)
  %1110 = call i8* @__memcpy_chk(i8* %1105, i8* %1108, i64 %1055, i64 %1109) #8
  %1111 = getelementptr inbounds %struct.CCTK_COMPLEX8* %typed_hdata48.0, i64 %1054
  br label %.loopexit229

.lr.ph435:                                        ; preds = %.preheader228, %.lr.ph435
  %typed_hdata48.1434 = phi %struct.CCTK_COMPLEX8* [ %1112, %.lr.ph435 ], [ %typed_hdata48.0, %.preheader228 ]
  %i43.1433 = phi i32 [ %1120, %.lr.ph435 ], [ 0, %.preheader228 ]
  %1112 = getelementptr inbounds %struct.CCTK_COMPLEX8* %typed_hdata48.1434, i64 1
  %1113 = add nsw i32 %i43.1433, %idx45.0.lcssa
  %1114 = sext i32 %1113 to i64
  %1115 = getelementptr inbounds %struct.CCTK_COMPLEX8* %1042, i64 %1114
  %1116 = bitcast %struct.CCTK_COMPLEX8* %1115 to i64*
  %1117 = bitcast %struct.CCTK_COMPLEX8* %typed_hdata48.1434 to i64*
  %1118 = load i64* %1116, align 4
  store i64 %1118, i64* %1117, align 4
  %1119 = load i32* %41, align 4, !tbaa !2
  %1120 = add nsw i32 %1119, %i43.1433
  %1121 = icmp slt i32 %1120, %1050
  br i1 %1121, label %.lr.ph435, label %.loopexit229

.loopexit229:                                     ; preds = %.lr.ph435, %.preheader228, %1104
  %typed_hdata48.2 = phi %struct.CCTK_COMPLEX8* [ %1111, %1104 ], [ %typed_hdata48.0, %.preheader228 ], [ %1112, %.lr.ph435 ]
  %1122 = load i32* %23, align 4, !tbaa !8
  %1123 = icmp sgt i32 %1122, 1
  br i1 %1123, label %1124, label %.loopexit185

; <label>:1124                                    ; preds = %.loopexit229
  %1125 = load i32* %1056, align 4, !tbaa !2
  %1126 = load i32* %1052, align 4, !tbaa !2
  %1127 = add nsw i32 %1126, %1125
  store i32 %1127, i32* %1052, align 4, !tbaa !2
  br label %1058

; <label>:1128                                    ; preds = %._crit_edge516
  %1129 = bitcast i8* %289 to double*
  %1130 = bitcast i32* %31 to i8*
  %1131 = sext i32 %334 to i64
  %1132 = shl nsw i64 %1131, 2
  %1133 = call i64 @llvm.objectsize.i64.p0i8(i8* %28, i1 false)
  %1134 = call i8* @__memcpy_chk(i8* %28, i8* %1130, i64 %1132, i64 %1133) #8
  %1135 = load i32* %34, align 4, !tbaa !2
  %1136 = load i32* %31, align 4, !tbaa !2
  %1137 = sub nsw i32 %1135, %1136
  %1138 = getelementptr inbounds i8* %28, i64 4
  %1139 = bitcast i8* %1138 to i32*
  %.sum93 = or i64 %33, 1
  %1140 = getelementptr inbounds i32* %29, i64 %.sum93
  %1141 = sext i32 %1137 to i64
  %1142 = shl nsw i64 %1141, 3
  %.sum91 = add nsw i64 %40, 1
  %1143 = getelementptr inbounds i32* %29, i64 %.sum91
  %1144 = icmp sgt i32 %1137, 0
  %.pre716 = load i32* %23, align 4, !tbaa !8
  br label %1145

; <label>:1145                                    ; preds = %1128, %1211
  %1146 = phi i32 [ %.pre716, %1128 ], [ %1209, %1211 ]
  %typed_hdata54.0 = phi double* [ %339, %1128 ], [ %typed_hdata54.2, %1211 ]
  %1147 = icmp sgt i32 %1146, 1
  br i1 %1147, label %1149, label %.loopexit237.thread751

.loopexit237.thread751:                           ; preds = %1145
  %1148 = load i32* %29, align 4, !tbaa !2
  br label %._crit_edge450

; <label>:1149                                    ; preds = %1145
  %1150 = load i32* %1139, align 4, !tbaa !2
  %1151 = load i32* %1140, align 4, !tbaa !2
  %1152 = icmp slt i32 %1150, %1151
  br i1 %1152, label %.loopexit237.thread, label %.preheader238

.loopexit237.thread:                              ; preds = %1149
  %1153 = load i32* %29, align 4, !tbaa !2
  br label %.lr.ph449

.preheader238:                                    ; preds = %1149
  %1154 = icmp sgt i32 %1146, 2
  br i1 %1154, label %.lr.ph438, label %1169

.lr.ph438:                                        ; preds = %.preheader238
  %1155 = sext i32 %1146 to i64
  br label %1156

; <label>:1156                                    ; preds = %.lr.ph438, %1165
  %indvars.iv662 = phi i64 [ 2, %.lr.ph438 ], [ %indvars.iv.next663, %1165 ]
  %.sum95 = add nsw i64 %indvars.iv662, %40
  %1157 = getelementptr inbounds i32* %29, i64 %.sum95
  %1158 = load i32* %1157, align 4, !tbaa !2
  %1159 = getelementptr inbounds i32* %29, i64 %indvars.iv662
  %1160 = load i32* %1159, align 4, !tbaa !2
  %1161 = add nsw i32 %1160, %1158
  store i32 %1161, i32* %1159, align 4, !tbaa !2
  %.sum96 = add nsw i64 %indvars.iv662, %33
  %1162 = getelementptr inbounds i32* %29, i64 %.sum96
  %1163 = load i32* %1162, align 4, !tbaa !2
  %1164 = icmp slt i32 %1161, %1163
  br i1 %1164, label %._crit_edge439, label %1165

; <label>:1165                                    ; preds = %1156
  %indvars.iv.next663 = add nuw nsw i64 %indvars.iv662, 1
  %1166 = icmp slt i64 %indvars.iv.next663, %1155
  br i1 %1166, label %1156, label %._crit_edge441

._crit_edge439:                                   ; preds = %1156
  %1167 = trunc i64 %indvars.iv662 to i32
  br label %1169

._crit_edge441:                                   ; preds = %1165
  %1168 = trunc i64 %indvars.iv.next663 to i32
  br label %1169

; <label>:1169                                    ; preds = %._crit_edge441, %._crit_edge439, %.preheader238
  %dim50.1.lcssa = phi i32 [ %1167, %._crit_edge439 ], [ %1168, %._crit_edge441 ], [ 2, %.preheader238 ]
  %1170 = icmp slt i32 %dim50.1.lcssa, %1146
  br i1 %1170, label %.preheader236, label %.loopexit185

.preheader236:                                    ; preds = %1169
  %1171 = icmp sgt i32 %dim50.1.lcssa, 1
  br i1 %1171, label %.lr.ph445, label %.loopexit237

.lr.ph445:                                        ; preds = %.preheader236
  %1172 = sext i32 %dim50.1.lcssa to i64
  br label %1173

; <label>:1173                                    ; preds = %.lr.ph445, %1173
  %indvars.iv664 = phi i64 [ %1172, %.lr.ph445 ], [ %indvars.iv.next665, %1173 ]
  %indvars.iv.next665 = add nsw i64 %indvars.iv664, -1
  %.sum94 = add nsw i64 %indvars.iv.next665, %30
  %1174 = getelementptr inbounds i32* %29, i64 %.sum94
  %1175 = load i32* %1174, align 4, !tbaa !2
  %1176 = getelementptr inbounds i32* %29, i64 %indvars.iv.next665
  store i32 %1175, i32* %1176, align 4, !tbaa !2
  %1177 = icmp sgt i64 %indvars.iv.next665, 1
  br i1 %1177, label %1173, label %.loopexit237

.loopexit237:                                     ; preds = %1173, %.preheader236
  %1178 = load i32* %29, align 4, !tbaa !2
  br i1 %1147, label %.lr.ph449, label %._crit_edge450

.lr.ph449:                                        ; preds = %.loopexit237.thread, %.loopexit237
  %1179 = phi i32 [ %1153, %.loopexit237.thread ], [ %1178, %.loopexit237 ]
  %1180 = sext i32 %1146 to i64
  br label %1181

; <label>:1181                                    ; preds = %.lr.ph449, %1181
  %indvars.iv666 = phi i64 [ 1, %.lr.ph449 ], [ %indvars.iv.next667, %1181 ]
  %idx51.0447 = phi i32 [ %1179, %.lr.ph449 ], [ %1187, %1181 ]
  %1182 = getelementptr inbounds i32* %29, i64 %indvars.iv666
  %1183 = load i32* %1182, align 4, !tbaa !2
  %.sum92 = add nsw i64 %indvars.iv666, %45
  %1184 = getelementptr inbounds i32* %29, i64 %.sum92
  %1185 = load i32* %1184, align 4, !tbaa !2
  %1186 = mul nsw i32 %1185, %1183
  %1187 = add nsw i32 %1186, %idx51.0447
  %indvars.iv.next667 = add nuw nsw i64 %indvars.iv666, 1
  %1188 = icmp slt i64 %indvars.iv.next667, %1180
  br i1 %1188, label %1181, label %._crit_edge450

._crit_edge450:                                   ; preds = %1181, %.loopexit237.thread751, %.loopexit237
  %idx51.0.lcssa = phi i32 [ %1178, %.loopexit237 ], [ %1148, %.loopexit237.thread751 ], [ %1187, %1181 ]
  %1189 = load i32* %41, align 4, !tbaa !2
  %1190 = icmp eq i32 %1189, 1
  br i1 %1190, label %1193, label %.preheader234

.preheader234:                                    ; preds = %._crit_edge450
  br i1 %1144, label %.lr.ph454, label %.loopexit235

.lr.ph454:                                        ; preds = %.preheader234
  %1191 = sext i32 %1189 to i64
  %1192 = sext i32 %idx51.0.lcssa to i64
  br label %1201

; <label>:1193                                    ; preds = %._crit_edge450
  %1194 = bitcast double* %typed_hdata54.0 to i8*
  %1195 = sext i32 %idx51.0.lcssa to i64
  %1196 = getelementptr inbounds double* %1129, i64 %1195
  %1197 = bitcast double* %1196 to i8*
  %1198 = call i64 @llvm.objectsize.i64.p0i8(i8* %1194, i1 false)
  %1199 = call i8* @__memcpy_chk(i8* %1194, i8* %1197, i64 %1142, i64 %1198) #8
  %1200 = getelementptr inbounds double* %typed_hdata54.0, i64 %1141
  %.pre717 = load i32* %23, align 4, !tbaa !8
  br label %.loopexit235

; <label>:1201                                    ; preds = %.lr.ph454, %1201
  %indvars.iv668 = phi i64 [ 0, %.lr.ph454 ], [ %indvars.iv.next669, %1201 ]
  %typed_hdata54.1453 = phi double* [ %typed_hdata54.0, %.lr.ph454 ], [ %1206, %1201 ]
  %1202 = add nsw i64 %indvars.iv668, %1192
  %1203 = getelementptr inbounds double* %1129, i64 %1202
  %1204 = bitcast double* %1203 to i64*
  %1205 = load i64* %1204, align 8, !tbaa !26
  %1206 = getelementptr inbounds double* %typed_hdata54.1453, i64 1
  %1207 = bitcast double* %typed_hdata54.1453 to i64*
  store i64 %1205, i64* %1207, align 8, !tbaa !26
  %indvars.iv.next669 = add i64 %indvars.iv668, %1191
  %1208 = icmp slt i64 %indvars.iv.next669, %1141
  br i1 %1208, label %1201, label %.loopexit235

.loopexit235:                                     ; preds = %1201, %.preheader234, %1193
  %1209 = phi i32 [ %.pre717, %1193 ], [ %1146, %.preheader234 ], [ %1146, %1201 ]
  %typed_hdata54.2 = phi double* [ %1200, %1193 ], [ %typed_hdata54.0, %.preheader234 ], [ %1206, %1201 ]
  %1210 = icmp sgt i32 %1209, 1
  br i1 %1210, label %1211, label %.loopexit185

; <label>:1211                                    ; preds = %.loopexit235
  %1212 = load i32* %1143, align 4, !tbaa !2
  %1213 = load i32* %1139, align 4, !tbaa !2
  %1214 = add nsw i32 %1213, %1212
  store i32 %1214, i32* %1139, align 4, !tbaa !2
  br label %1145

; <label>:1215                                    ; preds = %._crit_edge516
  %1216 = bitcast i8* %289 to %struct.CCTK_COMPLEX16*
  %1217 = bitcast i32* %31 to i8*
  %1218 = sext i32 %334 to i64
  %1219 = shl nsw i64 %1218, 2
  %1220 = call i64 @llvm.objectsize.i64.p0i8(i8* %28, i1 false)
  %1221 = call i8* @__memcpy_chk(i8* %28, i8* %1217, i64 %1219, i64 %1220) #8
  %1222 = load i32* %34, align 4, !tbaa !2
  %1223 = load i32* %31, align 4, !tbaa !2
  %1224 = sub nsw i32 %1222, %1223
  %1225 = getelementptr inbounds i8* %28, i64 4
  %1226 = bitcast i8* %1225 to i32*
  %.sum87 = or i64 %33, 1
  %1227 = getelementptr inbounds i32* %29, i64 %.sum87
  %1228 = sext i32 %1224 to i64
  %1229 = shl nsw i64 %1228, 4
  %.sum85 = add nsw i64 %40, 1
  %1230 = getelementptr inbounds i32* %29, i64 %.sum85
  %1231 = icmp sgt i32 %1224, 0
  %.pre715 = load i32* %23, align 4, !tbaa !8
  br label %1232

; <label>:1232                                    ; preds = %1215, %1297
  %1233 = phi i32 [ %.pre715, %1215 ], [ %1295, %1297 ]
  %typed_hdata60.0 = phi %struct.CCTK_COMPLEX16* [ %338, %1215 ], [ %typed_hdata60.2, %1297 ]
  %1234 = icmp sgt i32 %1233, 1
  br i1 %1234, label %1236, label %.loopexit243.thread752

.loopexit243.thread752:                           ; preds = %1232
  %1235 = load i32* %29, align 4, !tbaa !2
  br label %._crit_edge469

; <label>:1236                                    ; preds = %1232
  %1237 = load i32* %1226, align 4, !tbaa !2
  %1238 = load i32* %1227, align 4, !tbaa !2
  %1239 = icmp slt i32 %1237, %1238
  br i1 %1239, label %.loopexit243.thread, label %.preheader244

.loopexit243.thread:                              ; preds = %1236
  %1240 = load i32* %29, align 4, !tbaa !2
  br label %.lr.ph468

.preheader244:                                    ; preds = %1236
  %1241 = icmp sgt i32 %1233, 2
  br i1 %1241, label %.lr.ph457, label %1256

.lr.ph457:                                        ; preds = %.preheader244
  %1242 = sext i32 %1233 to i64
  br label %1243

; <label>:1243                                    ; preds = %.lr.ph457, %1252
  %indvars.iv670 = phi i64 [ 2, %.lr.ph457 ], [ %indvars.iv.next671, %1252 ]
  %.sum89 = add nsw i64 %indvars.iv670, %40
  %1244 = getelementptr inbounds i32* %29, i64 %.sum89
  %1245 = load i32* %1244, align 4, !tbaa !2
  %1246 = getelementptr inbounds i32* %29, i64 %indvars.iv670
  %1247 = load i32* %1246, align 4, !tbaa !2
  %1248 = add nsw i32 %1247, %1245
  store i32 %1248, i32* %1246, align 4, !tbaa !2
  %.sum90 = add nsw i64 %indvars.iv670, %33
  %1249 = getelementptr inbounds i32* %29, i64 %.sum90
  %1250 = load i32* %1249, align 4, !tbaa !2
  %1251 = icmp slt i32 %1248, %1250
  br i1 %1251, label %._crit_edge458, label %1252

; <label>:1252                                    ; preds = %1243
  %indvars.iv.next671 = add nuw nsw i64 %indvars.iv670, 1
  %1253 = icmp slt i64 %indvars.iv.next671, %1242
  br i1 %1253, label %1243, label %._crit_edge460

._crit_edge458:                                   ; preds = %1243
  %1254 = trunc i64 %indvars.iv670 to i32
  br label %1256

._crit_edge460:                                   ; preds = %1252
  %1255 = trunc i64 %indvars.iv.next671 to i32
  br label %1256

; <label>:1256                                    ; preds = %._crit_edge460, %._crit_edge458, %.preheader244
  %dim56.1.lcssa = phi i32 [ %1254, %._crit_edge458 ], [ %1255, %._crit_edge460 ], [ 2, %.preheader244 ]
  %1257 = icmp slt i32 %dim56.1.lcssa, %1233
  br i1 %1257, label %.preheader242, label %.loopexit185

.preheader242:                                    ; preds = %1256
  %1258 = icmp sgt i32 %dim56.1.lcssa, 1
  br i1 %1258, label %.lr.ph464, label %.loopexit243

.lr.ph464:                                        ; preds = %.preheader242
  %1259 = sext i32 %dim56.1.lcssa to i64
  br label %1260

; <label>:1260                                    ; preds = %.lr.ph464, %1260
  %indvars.iv672 = phi i64 [ %1259, %.lr.ph464 ], [ %indvars.iv.next673, %1260 ]
  %indvars.iv.next673 = add nsw i64 %indvars.iv672, -1
  %.sum88 = add nsw i64 %indvars.iv.next673, %30
  %1261 = getelementptr inbounds i32* %29, i64 %.sum88
  %1262 = load i32* %1261, align 4, !tbaa !2
  %1263 = getelementptr inbounds i32* %29, i64 %indvars.iv.next673
  store i32 %1262, i32* %1263, align 4, !tbaa !2
  %1264 = icmp sgt i64 %indvars.iv.next673, 1
  br i1 %1264, label %1260, label %.loopexit243

.loopexit243:                                     ; preds = %1260, %.preheader242
  %1265 = load i32* %29, align 4, !tbaa !2
  br i1 %1234, label %.lr.ph468, label %._crit_edge469

.lr.ph468:                                        ; preds = %.loopexit243.thread, %.loopexit243
  %1266 = phi i32 [ %1240, %.loopexit243.thread ], [ %1265, %.loopexit243 ]
  %1267 = sext i32 %1233 to i64
  br label %1268

; <label>:1268                                    ; preds = %.lr.ph468, %1268
  %indvars.iv674 = phi i64 [ 1, %.lr.ph468 ], [ %indvars.iv.next675, %1268 ]
  %idx57.0466 = phi i32 [ %1266, %.lr.ph468 ], [ %1274, %1268 ]
  %1269 = getelementptr inbounds i32* %29, i64 %indvars.iv674
  %1270 = load i32* %1269, align 4, !tbaa !2
  %.sum86 = add nsw i64 %indvars.iv674, %45
  %1271 = getelementptr inbounds i32* %29, i64 %.sum86
  %1272 = load i32* %1271, align 4, !tbaa !2
  %1273 = mul nsw i32 %1272, %1270
  %1274 = add nsw i32 %1273, %idx57.0466
  %indvars.iv.next675 = add nuw nsw i64 %indvars.iv674, 1
  %1275 = icmp slt i64 %indvars.iv.next675, %1267
  br i1 %1275, label %1268, label %._crit_edge469

._crit_edge469:                                   ; preds = %1268, %.loopexit243.thread752, %.loopexit243
  %idx57.0.lcssa = phi i32 [ %1265, %.loopexit243 ], [ %1235, %.loopexit243.thread752 ], [ %1274, %1268 ]
  %1276 = load i32* %41, align 4, !tbaa !2
  %1277 = icmp eq i32 %1276, 1
  br i1 %1277, label %1278, label %.preheader240

.preheader240:                                    ; preds = %._crit_edge469
  br i1 %1231, label %.lr.ph473, label %.loopexit241

; <label>:1278                                    ; preds = %._crit_edge469
  %1279 = bitcast %struct.CCTK_COMPLEX16* %typed_hdata60.0 to i8*
  %1280 = sext i32 %idx57.0.lcssa to i64
  %1281 = getelementptr inbounds %struct.CCTK_COMPLEX16* %1216, i64 %1280
  %1282 = bitcast %struct.CCTK_COMPLEX16* %1281 to i8*
  %1283 = call i64 @llvm.objectsize.i64.p0i8(i8* %1279, i1 false)
  %1284 = call i8* @__memcpy_chk(i8* %1279, i8* %1282, i64 %1229, i64 %1283) #8
  %1285 = getelementptr inbounds %struct.CCTK_COMPLEX16* %typed_hdata60.0, i64 %1228
  br label %.loopexit241

.lr.ph473:                                        ; preds = %.preheader240, %.lr.ph473
  %typed_hdata60.1472 = phi %struct.CCTK_COMPLEX16* [ %1286, %.lr.ph473 ], [ %typed_hdata60.0, %.preheader240 ]
  %i55.1471 = phi i32 [ %1293, %.lr.ph473 ], [ 0, %.preheader240 ]
  %1286 = getelementptr inbounds %struct.CCTK_COMPLEX16* %typed_hdata60.1472, i64 1
  %1287 = add nsw i32 %i55.1471, %idx57.0.lcssa
  %1288 = sext i32 %1287 to i64
  %1289 = getelementptr inbounds %struct.CCTK_COMPLEX16* %1216, i64 %1288
  %1290 = bitcast %struct.CCTK_COMPLEX16* %typed_hdata60.1472 to i8*
  %1291 = bitcast %struct.CCTK_COMPLEX16* %1289 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1290, i8* %1291, i64 16, i32 8, i1 false), !tbaa.struct !27
  %1292 = load i32* %41, align 4, !tbaa !2
  %1293 = add nsw i32 %1292, %i55.1471
  %1294 = icmp slt i32 %1293, %1224
  br i1 %1294, label %.lr.ph473, label %.loopexit241

.loopexit241:                                     ; preds = %.lr.ph473, %.preheader240, %1278
  %typed_hdata60.2 = phi %struct.CCTK_COMPLEX16* [ %1285, %1278 ], [ %typed_hdata60.0, %.preheader240 ], [ %1286, %.lr.ph473 ]
  %1295 = load i32* %23, align 4, !tbaa !8
  %1296 = icmp sgt i32 %1295, 1
  br i1 %1296, label %1297, label %.loopexit185

; <label>:1297                                    ; preds = %.loopexit241
  %1298 = load i32* %1230, align 4, !tbaa !2
  %1299 = load i32* %1226, align 4, !tbaa !2
  %1300 = add nsw i32 %1299, %1298
  store i32 %1300, i32* %1226, align 4, !tbaa !2
  br label %1232

; <label>:1301                                    ; preds = %._crit_edge516
  %1302 = bitcast i8* %289 to x86_fp80*
  %1303 = bitcast i32* %31 to i8*
  %1304 = sext i32 %334 to i64
  %1305 = shl nsw i64 %1304, 2
  %1306 = call i64 @llvm.objectsize.i64.p0i8(i8* %28, i1 false)
  %1307 = call i8* @__memcpy_chk(i8* %28, i8* %1303, i64 %1305, i64 %1306) #8
  %1308 = load i32* %34, align 4, !tbaa !2
  %1309 = load i32* %31, align 4, !tbaa !2
  %1310 = sub nsw i32 %1308, %1309
  %1311 = getelementptr inbounds i8* %28, i64 4
  %1312 = bitcast i8* %1311 to i32*
  %.sum81 = or i64 %33, 1
  %1313 = getelementptr inbounds i32* %29, i64 %.sum81
  %1314 = sext i32 %1310 to i64
  %1315 = shl nsw i64 %1314, 4
  %.sum79 = add nsw i64 %40, 1
  %1316 = getelementptr inbounds i32* %29, i64 %.sum79
  %1317 = icmp sgt i32 %1310, 0
  %.pre713 = load i32* %23, align 4, !tbaa !8
  br label %1318

; <label>:1318                                    ; preds = %1301, %1382
  %1319 = phi i32 [ %.pre713, %1301 ], [ %1380, %1382 ]
  %typed_hdata66.0 = phi x86_fp80* [ %337, %1301 ], [ %typed_hdata66.2, %1382 ]
  %1320 = icmp sgt i32 %1319, 1
  br i1 %1320, label %1322, label %.loopexit249.thread753

.loopexit249.thread753:                           ; preds = %1318
  %1321 = load i32* %29, align 4, !tbaa !2
  br label %._crit_edge488

; <label>:1322                                    ; preds = %1318
  %1323 = load i32* %1312, align 4, !tbaa !2
  %1324 = load i32* %1313, align 4, !tbaa !2
  %1325 = icmp slt i32 %1323, %1324
  br i1 %1325, label %.loopexit249.thread, label %.preheader250

.loopexit249.thread:                              ; preds = %1322
  %1326 = load i32* %29, align 4, !tbaa !2
  br label %.lr.ph487

.preheader250:                                    ; preds = %1322
  %1327 = icmp sgt i32 %1319, 2
  br i1 %1327, label %.lr.ph476, label %1342

.lr.ph476:                                        ; preds = %.preheader250
  %1328 = sext i32 %1319 to i64
  br label %1329

; <label>:1329                                    ; preds = %.lr.ph476, %1338
  %indvars.iv676 = phi i64 [ 2, %.lr.ph476 ], [ %indvars.iv.next677, %1338 ]
  %.sum83 = add nsw i64 %indvars.iv676, %40
  %1330 = getelementptr inbounds i32* %29, i64 %.sum83
  %1331 = load i32* %1330, align 4, !tbaa !2
  %1332 = getelementptr inbounds i32* %29, i64 %indvars.iv676
  %1333 = load i32* %1332, align 4, !tbaa !2
  %1334 = add nsw i32 %1333, %1331
  store i32 %1334, i32* %1332, align 4, !tbaa !2
  %.sum84 = add nsw i64 %indvars.iv676, %33
  %1335 = getelementptr inbounds i32* %29, i64 %.sum84
  %1336 = load i32* %1335, align 4, !tbaa !2
  %1337 = icmp slt i32 %1334, %1336
  br i1 %1337, label %._crit_edge477, label %1338

; <label>:1338                                    ; preds = %1329
  %indvars.iv.next677 = add nuw nsw i64 %indvars.iv676, 1
  %1339 = icmp slt i64 %indvars.iv.next677, %1328
  br i1 %1339, label %1329, label %._crit_edge479

._crit_edge477:                                   ; preds = %1329
  %1340 = trunc i64 %indvars.iv676 to i32
  br label %1342

._crit_edge479:                                   ; preds = %1338
  %1341 = trunc i64 %indvars.iv.next677 to i32
  br label %1342

; <label>:1342                                    ; preds = %._crit_edge479, %._crit_edge477, %.preheader250
  %dim62.1.lcssa = phi i32 [ %1340, %._crit_edge477 ], [ %1341, %._crit_edge479 ], [ 2, %.preheader250 ]
  %1343 = icmp slt i32 %dim62.1.lcssa, %1319
  br i1 %1343, label %.preheader248, label %.loopexit185

.preheader248:                                    ; preds = %1342
  %1344 = icmp sgt i32 %dim62.1.lcssa, 1
  br i1 %1344, label %.lr.ph483, label %.loopexit249

.lr.ph483:                                        ; preds = %.preheader248
  %1345 = sext i32 %dim62.1.lcssa to i64
  br label %1346

; <label>:1346                                    ; preds = %.lr.ph483, %1346
  %indvars.iv678 = phi i64 [ %1345, %.lr.ph483 ], [ %indvars.iv.next679, %1346 ]
  %indvars.iv.next679 = add nsw i64 %indvars.iv678, -1
  %.sum82 = add nsw i64 %indvars.iv.next679, %30
  %1347 = getelementptr inbounds i32* %29, i64 %.sum82
  %1348 = load i32* %1347, align 4, !tbaa !2
  %1349 = getelementptr inbounds i32* %29, i64 %indvars.iv.next679
  store i32 %1348, i32* %1349, align 4, !tbaa !2
  %1350 = icmp sgt i64 %indvars.iv.next679, 1
  br i1 %1350, label %1346, label %.loopexit249

.loopexit249:                                     ; preds = %1346, %.preheader248
  %1351 = load i32* %29, align 4, !tbaa !2
  br i1 %1320, label %.lr.ph487, label %._crit_edge488

.lr.ph487:                                        ; preds = %.loopexit249.thread, %.loopexit249
  %1352 = phi i32 [ %1326, %.loopexit249.thread ], [ %1351, %.loopexit249 ]
  %1353 = sext i32 %1319 to i64
  br label %1354

; <label>:1354                                    ; preds = %.lr.ph487, %1354
  %indvars.iv680 = phi i64 [ 1, %.lr.ph487 ], [ %indvars.iv.next681, %1354 ]
  %idx63.0485 = phi i32 [ %1352, %.lr.ph487 ], [ %1360, %1354 ]
  %1355 = getelementptr inbounds i32* %29, i64 %indvars.iv680
  %1356 = load i32* %1355, align 4, !tbaa !2
  %.sum80 = add nsw i64 %indvars.iv680, %45
  %1357 = getelementptr inbounds i32* %29, i64 %.sum80
  %1358 = load i32* %1357, align 4, !tbaa !2
  %1359 = mul nsw i32 %1358, %1356
  %1360 = add nsw i32 %1359, %idx63.0485
  %indvars.iv.next681 = add nuw nsw i64 %indvars.iv680, 1
  %1361 = icmp slt i64 %indvars.iv.next681, %1353
  br i1 %1361, label %1354, label %._crit_edge488

._crit_edge488:                                   ; preds = %1354, %.loopexit249.thread753, %.loopexit249
  %idx63.0.lcssa = phi i32 [ %1351, %.loopexit249 ], [ %1321, %.loopexit249.thread753 ], [ %1360, %1354 ]
  %1362 = load i32* %41, align 4, !tbaa !2
  %1363 = icmp eq i32 %1362, 1
  br i1 %1363, label %1366, label %.preheader246

.preheader246:                                    ; preds = %._crit_edge488
  br i1 %1317, label %.lr.ph492, label %.loopexit247

.lr.ph492:                                        ; preds = %.preheader246
  %1364 = sext i32 %1362 to i64
  %1365 = sext i32 %idx63.0.lcssa to i64
  br label %1374

; <label>:1366                                    ; preds = %._crit_edge488
  %1367 = bitcast x86_fp80* %typed_hdata66.0 to i8*
  %1368 = sext i32 %idx63.0.lcssa to i64
  %1369 = getelementptr inbounds x86_fp80* %1302, i64 %1368
  %1370 = bitcast x86_fp80* %1369 to i8*
  %1371 = call i64 @llvm.objectsize.i64.p0i8(i8* %1367, i1 false)
  %1372 = call i8* @__memcpy_chk(i8* %1367, i8* %1370, i64 %1315, i64 %1371) #8
  %1373 = getelementptr inbounds x86_fp80* %typed_hdata66.0, i64 %1314
  %.pre714 = load i32* %23, align 4, !tbaa !8
  br label %.loopexit247

; <label>:1374                                    ; preds = %.lr.ph492, %1374
  %indvars.iv682 = phi i64 [ 0, %.lr.ph492 ], [ %indvars.iv.next683, %1374 ]
  %typed_hdata66.1491 = phi x86_fp80* [ %typed_hdata66.0, %.lr.ph492 ], [ %1378, %1374 ]
  %1375 = add nsw i64 %indvars.iv682, %1365
  %1376 = getelementptr inbounds x86_fp80* %1302, i64 %1375
  %1377 = load x86_fp80* %1376, align 16, !tbaa !34
  %1378 = getelementptr inbounds x86_fp80* %typed_hdata66.1491, i64 1
  store x86_fp80 %1377, x86_fp80* %typed_hdata66.1491, align 16, !tbaa !34
  %indvars.iv.next683 = add i64 %indvars.iv682, %1364
  %1379 = icmp slt i64 %indvars.iv.next683, %1314
  br i1 %1379, label %1374, label %.loopexit247

.loopexit247:                                     ; preds = %1374, %.preheader246, %1366
  %1380 = phi i32 [ %.pre714, %1366 ], [ %1319, %.preheader246 ], [ %1319, %1374 ]
  %typed_hdata66.2 = phi x86_fp80* [ %1373, %1366 ], [ %typed_hdata66.0, %.preheader246 ], [ %1378, %1374 ]
  %1381 = icmp sgt i32 %1380, 1
  br i1 %1381, label %1382, label %.loopexit185

; <label>:1382                                    ; preds = %.loopexit247
  %1383 = load i32* %1316, align 4, !tbaa !2
  %1384 = load i32* %1312, align 4, !tbaa !2
  %1385 = add nsw i32 %1384, %1383
  store i32 %1385, i32* %1312, align 4, !tbaa !2
  br label %1318

; <label>:1386                                    ; preds = %._crit_edge516
  %1387 = bitcast i8* %289 to %struct.CCTK_COMPLEX32*
  %1388 = bitcast i32* %31 to i8*
  %1389 = sext i32 %334 to i64
  %1390 = shl nsw i64 %1389, 2
  %1391 = call i64 @llvm.objectsize.i64.p0i8(i8* %28, i1 false)
  %1392 = call i8* @__memcpy_chk(i8* %28, i8* %1388, i64 %1390, i64 %1391) #8
  %1393 = load i32* %34, align 4, !tbaa !2
  %1394 = load i32* %31, align 4, !tbaa !2
  %1395 = sub nsw i32 %1393, %1394
  %1396 = getelementptr inbounds i8* %28, i64 4
  %1397 = bitcast i8* %1396 to i32*
  %.sum75 = or i64 %33, 1
  %1398 = getelementptr inbounds i32* %29, i64 %.sum75
  %1399 = sext i32 %1395 to i64
  %1400 = shl nsw i64 %1399, 5
  %.sum = add nsw i64 %40, 1
  %1401 = getelementptr inbounds i32* %29, i64 %.sum
  %1402 = icmp sgt i32 %1395, 0
  %.pre712 = load i32* %23, align 4, !tbaa !8
  br label %1403

; <label>:1403                                    ; preds = %1386, %1468
  %1404 = phi i32 [ %.pre712, %1386 ], [ %1466, %1468 ]
  %typed_hdata72.0 = phi %struct.CCTK_COMPLEX32* [ %336, %1386 ], [ %typed_hdata72.2, %1468 ]
  %1405 = icmp sgt i32 %1404, 1
  br i1 %1405, label %1407, label %.loopexit255.thread754

.loopexit255.thread754:                           ; preds = %1403
  %1406 = load i32* %29, align 4, !tbaa !2
  br label %._crit_edge507

; <label>:1407                                    ; preds = %1403
  %1408 = load i32* %1397, align 4, !tbaa !2
  %1409 = load i32* %1398, align 4, !tbaa !2
  %1410 = icmp slt i32 %1408, %1409
  br i1 %1410, label %.loopexit255.thread, label %.preheader256

.loopexit255.thread:                              ; preds = %1407
  %1411 = load i32* %29, align 4, !tbaa !2
  br label %.lr.ph506

.preheader256:                                    ; preds = %1407
  %1412 = icmp sgt i32 %1404, 2
  br i1 %1412, label %.lr.ph495, label %1427

.lr.ph495:                                        ; preds = %.preheader256
  %1413 = sext i32 %1404 to i64
  br label %1414

; <label>:1414                                    ; preds = %.lr.ph495, %1423
  %indvars.iv684 = phi i64 [ 2, %.lr.ph495 ], [ %indvars.iv.next685, %1423 ]
  %.sum77 = add nsw i64 %indvars.iv684, %40
  %1415 = getelementptr inbounds i32* %29, i64 %.sum77
  %1416 = load i32* %1415, align 4, !tbaa !2
  %1417 = getelementptr inbounds i32* %29, i64 %indvars.iv684
  %1418 = load i32* %1417, align 4, !tbaa !2
  %1419 = add nsw i32 %1418, %1416
  store i32 %1419, i32* %1417, align 4, !tbaa !2
  %.sum78 = add nsw i64 %indvars.iv684, %33
  %1420 = getelementptr inbounds i32* %29, i64 %.sum78
  %1421 = load i32* %1420, align 4, !tbaa !2
  %1422 = icmp slt i32 %1419, %1421
  br i1 %1422, label %._crit_edge496, label %1423

; <label>:1423                                    ; preds = %1414
  %indvars.iv.next685 = add nuw nsw i64 %indvars.iv684, 1
  %1424 = icmp slt i64 %indvars.iv.next685, %1413
  br i1 %1424, label %1414, label %._crit_edge498

._crit_edge496:                                   ; preds = %1414
  %1425 = trunc i64 %indvars.iv684 to i32
  br label %1427

._crit_edge498:                                   ; preds = %1423
  %1426 = trunc i64 %indvars.iv.next685 to i32
  br label %1427

; <label>:1427                                    ; preds = %._crit_edge498, %._crit_edge496, %.preheader256
  %dim68.1.lcssa = phi i32 [ %1425, %._crit_edge496 ], [ %1426, %._crit_edge498 ], [ 2, %.preheader256 ]
  %1428 = icmp slt i32 %dim68.1.lcssa, %1404
  br i1 %1428, label %.preheader254, label %.loopexit185

.preheader254:                                    ; preds = %1427
  %1429 = icmp sgt i32 %dim68.1.lcssa, 1
  br i1 %1429, label %.lr.ph502, label %.loopexit255

.lr.ph502:                                        ; preds = %.preheader254
  %1430 = sext i32 %dim68.1.lcssa to i64
  br label %1431

; <label>:1431                                    ; preds = %.lr.ph502, %1431
  %indvars.iv686 = phi i64 [ %1430, %.lr.ph502 ], [ %indvars.iv.next687, %1431 ]
  %indvars.iv.next687 = add nsw i64 %indvars.iv686, -1
  %.sum76 = add nsw i64 %indvars.iv.next687, %30
  %1432 = getelementptr inbounds i32* %29, i64 %.sum76
  %1433 = load i32* %1432, align 4, !tbaa !2
  %1434 = getelementptr inbounds i32* %29, i64 %indvars.iv.next687
  store i32 %1433, i32* %1434, align 4, !tbaa !2
  %1435 = icmp sgt i64 %indvars.iv.next687, 1
  br i1 %1435, label %1431, label %.loopexit255

.loopexit255:                                     ; preds = %1431, %.preheader254
  %1436 = load i32* %29, align 4, !tbaa !2
  br i1 %1405, label %.lr.ph506, label %._crit_edge507

.lr.ph506:                                        ; preds = %.loopexit255.thread, %.loopexit255
  %1437 = phi i32 [ %1411, %.loopexit255.thread ], [ %1436, %.loopexit255 ]
  %1438 = sext i32 %1404 to i64
  br label %1439

; <label>:1439                                    ; preds = %.lr.ph506, %1439
  %indvars.iv688 = phi i64 [ 1, %.lr.ph506 ], [ %indvars.iv.next689, %1439 ]
  %idx69.0504 = phi i32 [ %1437, %.lr.ph506 ], [ %1445, %1439 ]
  %1440 = getelementptr inbounds i32* %29, i64 %indvars.iv688
  %1441 = load i32* %1440, align 4, !tbaa !2
  %.sum74 = add nsw i64 %indvars.iv688, %45
  %1442 = getelementptr inbounds i32* %29, i64 %.sum74
  %1443 = load i32* %1442, align 4, !tbaa !2
  %1444 = mul nsw i32 %1443, %1441
  %1445 = add nsw i32 %1444, %idx69.0504
  %indvars.iv.next689 = add nuw nsw i64 %indvars.iv688, 1
  %1446 = icmp slt i64 %indvars.iv.next689, %1438
  br i1 %1446, label %1439, label %._crit_edge507

._crit_edge507:                                   ; preds = %1439, %.loopexit255.thread754, %.loopexit255
  %idx69.0.lcssa = phi i32 [ %1436, %.loopexit255 ], [ %1406, %.loopexit255.thread754 ], [ %1445, %1439 ]
  %1447 = load i32* %41, align 4, !tbaa !2
  %1448 = icmp eq i32 %1447, 1
  br i1 %1448, label %1449, label %.preheader252

.preheader252:                                    ; preds = %._crit_edge507
  br i1 %1402, label %.lr.ph511, label %.loopexit253

; <label>:1449                                    ; preds = %._crit_edge507
  %1450 = bitcast %struct.CCTK_COMPLEX32* %typed_hdata72.0 to i8*
  %1451 = sext i32 %idx69.0.lcssa to i64
  %1452 = getelementptr inbounds %struct.CCTK_COMPLEX32* %1387, i64 %1451
  %1453 = bitcast %struct.CCTK_COMPLEX32* %1452 to i8*
  %1454 = call i64 @llvm.objectsize.i64.p0i8(i8* %1450, i1 false)
  %1455 = call i8* @__memcpy_chk(i8* %1450, i8* %1453, i64 %1400, i64 %1454) #8
  %1456 = getelementptr inbounds %struct.CCTK_COMPLEX32* %typed_hdata72.0, i64 %1399
  br label %.loopexit253

.lr.ph511:                                        ; preds = %.preheader252, %.lr.ph511
  %typed_hdata72.1510 = phi %struct.CCTK_COMPLEX32* [ %1457, %.lr.ph511 ], [ %typed_hdata72.0, %.preheader252 ]
  %i67.1509 = phi i32 [ %1464, %.lr.ph511 ], [ 0, %.preheader252 ]
  %1457 = getelementptr inbounds %struct.CCTK_COMPLEX32* %typed_hdata72.1510, i64 1
  %1458 = add nsw i32 %i67.1509, %idx69.0.lcssa
  %1459 = sext i32 %1458 to i64
  %1460 = getelementptr inbounds %struct.CCTK_COMPLEX32* %1387, i64 %1459
  %1461 = bitcast %struct.CCTK_COMPLEX32* %typed_hdata72.1510 to i8*
  %1462 = bitcast %struct.CCTK_COMPLEX32* %1460 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1461, i8* %1462, i64 32, i32 16, i1 false), !tbaa.struct !36
  %1463 = load i32* %41, align 4, !tbaa !2
  %1464 = add nsw i32 %1463, %i67.1509
  %1465 = icmp slt i32 %1464, %1395
  br i1 %1465, label %.lr.ph511, label %.loopexit253

.loopexit253:                                     ; preds = %.lr.ph511, %.preheader252, %1449
  %typed_hdata72.2 = phi %struct.CCTK_COMPLEX32* [ %1456, %1449 ], [ %typed_hdata72.0, %.preheader252 ], [ %1457, %.lr.ph511 ]
  %1466 = load i32* %23, align 4, !tbaa !8
  %1467 = icmp sgt i32 %1466, 1
  br i1 %1467, label %1468, label %.loopexit185

; <label>:1468                                    ; preds = %.loopexit253
  %1469 = load i32* %1401, align 4, !tbaa !2
  %1470 = load i32* %1397, align 4, !tbaa !2
  %1471 = add nsw i32 %1470, %1469
  store i32 %1471, i32* %1397, align 4, !tbaa !2
  br label %1403

; <label>:1472                                    ; preds = %._crit_edge516
  %1473 = call i32 @CCTK_Warn(i32 1, i32 616, i8* getelementptr inbounds ([80 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([26 x i8]* @.str2, i64 0, i64 0)) #8
  br label %.loopexit185

; <label>:1474                                    ; preds = %._crit_edge525
  store i8* null, i8** %hdata, align 8, !tbaa !6
  %1475 = sext i32 %.3 to i64
  %1476 = shl nsw i64 %1475, 2
  %1477 = call i64 @llvm.objectsize.i64.p0i8(i8* %1, i1 false)
  %1478 = call i8* @__memset_chk(i8* %1, i32 0, i64 %1476, i64 %1477) #8
  br label %.loopexit185

.loopexit185:                                     ; preds = %1427, %.loopexit253, %1342, %.loopexit247, %1256, %.loopexit241, %1169, %.loopexit235, %1082, %.loopexit229, %995, %.loopexit223, %910, %.loopexit217, %825, %.loopexit211, %740, %.loopexit205, %654, %.loopexit199, %567, %.loopexit193, %482, %.loopexit187, %399, %.loopexit, %1472, %1474
  %retval.0 = phi i32 [ -1, %1472 ], [ 0, %1474 ], [ 0, %.loopexit ], [ 0, %399 ], [ 0, %.loopexit187 ], [ 0, %482 ], [ 0, %.loopexit193 ], [ 0, %567 ], [ 0, %.loopexit199 ], [ 0, %654 ], [ 0, %.loopexit205 ], [ 0, %740 ], [ 0, %.loopexit211 ], [ 0, %825 ], [ 0, %.loopexit217 ], [ 0, %910 ], [ 0, %.loopexit223 ], [ 0, %995 ], [ 0, %.loopexit229 ], [ 0, %1082 ], [ 0, %.loopexit235 ], [ 0, %1169 ], [ 0, %.loopexit241 ], [ 0, %1256 ], [ 0, %.loopexit247 ], [ 0, %1342 ], [ 0, %.loopexit253 ], [ 0, %1427 ]
  call void @free(i8* %28) #7
  br label %1479

; <label>:1479                                    ; preds = %.loopexit185, %._crit_edge, %6
  %.0 = phi i32 [ -1, %6 ], [ 0, %._crit_edge ], [ %retval.0, %.loopexit185 ]
  ret i32 %.0
}

; Function Attrs: nounwind optsize ssp uwtable
define internal fastcc i8* @checkParameters(%struct.cGH* %GH, i32 %vindex, i32 %vtimelvl, i32 %hdim, i32* readnone %global_origin, i32* readonly %directions, i32* readnone %extents, i32* readonly %downsample_, i8** readnone %hdata, i32* readnone %hsize) #1 {
  %vinfo = alloca %struct.cGroup, align 4
  %1 = icmp slt i32 %vindex, 0
  br i1 %1, label %.loopexit, label %2

; <label>:2                                       ; preds = %0
  %3 = tail call i32 @CCTK_NumVars() #8
  %4 = icmp sgt i32 %3, %vindex
  br i1 %4, label %5, label %.loopexit

; <label>:5                                       ; preds = %2
  %6 = icmp slt i32 %vtimelvl, 0
  br i1 %6, label %.loopexit, label %7

; <label>:7                                       ; preds = %5
  %8 = tail call i32 @CCTK_NumTimeLevelsFromVarI(i32 %vindex) #8
  %9 = icmp sgt i32 %8, %vtimelvl
  br i1 %9, label %10, label %.loopexit

; <label>:10                                      ; preds = %7
  %11 = icmp ne i32* %global_origin, null
  %12 = icmp ne i32* %directions, null
  %or.cond = and i1 %11, %12
  %13 = icmp ne i32* %extents, null
  %or.cond3 = and i1 %or.cond, %13
  %14 = icmp ne i32* %downsample_, null
  %or.cond5 = and i1 %or.cond3, %14
  %15 = icmp ne i8** %hdata, null
  %or.cond7 = and i1 %or.cond5, %15
  %16 = icmp ne i32* %hsize, null
  %or.cond9 = and i1 %or.cond7, %16
  br i1 %or.cond9, label %.preheader10, label %.loopexit

.preheader10:                                     ; preds = %10
  %17 = icmp sgt i32 %hdim, 0
  br i1 %17, label %.lr.ph14, label %._crit_edge15

.lr.ph14:                                         ; preds = %.preheader10
  %18 = sext i32 %hdim to i64
  br label %21

; <label>:19                                      ; preds = %21
  %20 = icmp slt i64 %indvars.iv.next17, %18
  br i1 %20, label %21, label %._crit_edge15

; <label>:21                                      ; preds = %.lr.ph14, %19
  %indvars.iv16 = phi i64 [ 0, %.lr.ph14 ], [ %indvars.iv.next17, %19 ]
  %22 = getelementptr inbounds i32* %downsample_, i64 %indvars.iv16
  %23 = load i32* %22, align 4, !tbaa !2
  %24 = icmp slt i32 %23, 1
  %indvars.iv.next17 = add nuw nsw i64 %indvars.iv16, 1
  br i1 %24, label %.loopexit, label %19

._crit_edge15:                                    ; preds = %19, %.preheader10
  %25 = tail call i32 @CCTK_GroupIndexFromVarI(i32 %vindex) #8
  %26 = call i32 @CCTK_GroupData(i32 %25, %struct.cGroup* %vinfo) #8
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %.loopexit, label %28

; <label>:28                                      ; preds = %._crit_edge15
  %29 = getelementptr inbounds %struct.cGroup* %vinfo, i64 0, i32 0
  %30 = load i32* %29, align 4, !tbaa !37
  %31 = and i32 %30, -2
  %switch = icmp eq i32 %31, 2
  br i1 %switch, label %32, label %.loopexit

; <label>:32                                      ; preds = %28
  %33 = icmp slt i32 %hdim, 0
  br i1 %33, label %.loopexit, label %34

; <label>:34                                      ; preds = %32
  %35 = getelementptr inbounds %struct.cGroup* %vinfo, i64 0, i32 4
  %36 = load i32* %35, align 4, !tbaa !8
  %37 = icmp slt i32 %36, %hdim
  br i1 %37, label %.loopexit, label %38

; <label>:38                                      ; preds = %34
  %39 = icmp eq i32 %36, %hdim
  br i1 %39, label %50, label %.preheader

.preheader:                                       ; preds = %38
  %40 = icmp sgt i32 %36, 0
  br i1 %40, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader
  %41 = sext i32 %36 to i64
  br label %42

; <label>:42                                      ; preds = %.lr.ph, %42
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %42 ]
  %num_directions.012 = phi i32 [ 0, %.lr.ph ], [ %num_directions.0., %42 ]
  %43 = getelementptr inbounds i32* %directions, i64 %indvars.iv
  %44 = load i32* %43, align 4, !tbaa !2
  %not. = icmp ne i32 %44, 0
  %45 = zext i1 %not. to i32
  %num_directions.0. = add nsw i32 %45, %num_directions.012
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %46 = icmp slt i64 %indvars.iv.next, %41
  br i1 %46, label %42, label %._crit_edge

._crit_edge:                                      ; preds = %42
  %47 = icmp eq i32 %num_directions.0., 0
  br i1 %47, label %.loopexit, label %48

; <label>:48                                      ; preds = %._crit_edge
  %49 = icmp sgt i32 %num_directions.0., 1
  br i1 %49, label %.loopexit, label %50

; <label>:50                                      ; preds = %38, %48
  %51 = call %struct.PGH* @PUGH_pGH(%struct.cGH* %GH) #8
  %52 = icmp eq %struct.PGH* %51, null
  %. = select i1 %52, i8* getelementptr inbounds ([62 x i8]* @.str17, i64 0, i64 0), i8* null
  br label %.loopexit

.loopexit:                                        ; preds = %21, %.preheader, %28, %50, %48, %._crit_edge, %32, %34, %._crit_edge15, %10, %5, %7, %0, %2
  %.0 = phi i8* [ getelementptr inbounds ([23 x i8]* @.str9, i64 0, i64 0), %2 ], [ getelementptr inbounds ([23 x i8]* @.str9, i64 0, i64 0), %0 ], [ getelementptr inbounds ([18 x i8]* @.str10, i64 0, i64 0), %7 ], [ getelementptr inbounds ([18 x i8]* @.str10, i64 0, i64 0), %5 ], [ getelementptr inbounds ([37 x i8]* @.str11, i64 0, i64 0), %10 ], [ getelementptr inbounds ([24 x i8]* @.str13, i64 0, i64 0), %._crit_edge15 ], [ getelementptr inbounds ([28 x i8]* @.str14, i64 0, i64 0), %28 ], [ getelementptr inbounds ([28 x i8]* @.str15, i64 0, i64 0), %34 ], [ getelementptr inbounds ([28 x i8]* @.str15, i64 0, i64 0), %32 ], [ getelementptr inbounds ([37 x i8]* @.str16, i64 0, i64 0), %._crit_edge ], [ getelementptr inbounds ([40 x i8]* @.str5, i64 0, i64 0), %48 ], [ %., %50 ], [ getelementptr inbounds ([37 x i8]* @.str16, i64 0, i64 0), %.preheader ], [ getelementptr inbounds ([40 x i8]* @.str12, i64 0, i64 0), %21 ]
  ret i8* %.0
}

; Function Attrs: optsize
declare i32 @CCTK_Warn(i32, i32, i8*, i8*, i8*) #2

; Function Attrs: optsize
declare i32 @CCTK_GroupData(i32, %struct.cGroup*) #2

; Function Attrs: optsize
declare i32 @CCTK_GroupIndexFromVarI(i32) #2

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i64) #3

; Function Attrs: nounwind optsize
declare i8* @__memcpy_chk(i8*, i8*, i64, i64) #3

; Function Attrs: nounwind readnone
declare i64 @llvm.objectsize.i64.p0i8(i8*, i1) #4

; Function Attrs: optsize
declare %struct.PGH* @PUGH_pGH(%struct.cGH*) #2

; Function Attrs: optsize
declare i32 @CCTK_StaggerDirIndex(i32, i32) #2

; Function Attrs: optsize
declare i8* @CCTK_VarDataPtrI(%struct.cGH*, i32, i32) #2

; Function Attrs: optsize
declare i32 @CCTK_VarTypeSize(i32) #2

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #5

; Function Attrs: nounwind optsize
declare i8* @__memset_chk(i8*, i32, i64, i64) #3

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #3

; Function Attrs: nounwind optsize ssp uwtable
define i32 @Hyperslab_GetHyperslab(%struct.cGH* %GH, i32 %target_proc, i32 %vindex, i32 %vtimelvl, i32 %hdim, i32* %global_origin, i32* %directions, i32* %extents, i32* %downsample_, i8** %hdata, i32* %hsize) #1 {
  %vinfo = alloca %struct.cGroup, align 4
  %hdata_local = alloca i8*, align 8
  %my_directions = alloca [3 x i32], align 4
  %my_global_origin = alloca [3 x i32], align 4
  %my_extents = alloca [1 x i32], align 4
  %my_downsample_ = alloca [1 x i32], align 4
  %my_hsize = alloca [1 x i32], align 4
  %1 = load i32 (%struct.cGH*)** @CCTK_MyProc, align 8, !tbaa !6
  %2 = tail call i32 %1(%struct.cGH* %GH) #8
  %3 = load i32 (%struct.cGH*)** @CCTK_nProcs, align 8, !tbaa !6
  %4 = tail call i32 %3(%struct.cGH* %GH) #8
  %5 = icmp sgt i32 %4, %target_proc
  br i1 %5, label %8, label %6

; <label>:6                                       ; preds = %0
  %7 = tail call i32 @CCTK_Warn(i32 1, i32 747, i8* getelementptr inbounds ([80 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([28 x i8]* @.str3, i64 0, i64 0)) #8
  br label %93

; <label>:8                                       ; preds = %0
  %9 = icmp slt i32 %target_proc, 0
  %10 = icmp eq i32 %2, %target_proc
  %or.cond2 = or i1 %9, %10
  br i1 %or.cond2, label %11, label %22

; <label>:11                                      ; preds = %8
  %12 = icmp ne i8** %hdata, null
  %13 = icmp ne i32* %hsize, null
  %or.cond = and i1 %12, %13
  br i1 %or.cond, label %16, label %14

; <label>:14                                      ; preds = %11
  %15 = tail call i32 @CCTK_Warn(i32 1, i32 756, i8* getelementptr inbounds ([80 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([57 x i8]* @.str4, i64 0, i64 0)) #8
  br label %93

; <label>:16                                      ; preds = %11
  store i8* null, i8** %hdata, align 8, !tbaa !6
  %17 = bitcast i32* %hsize to i8*
  %18 = sext i32 %hdim to i64
  %19 = shl nsw i64 %18, 2
  %20 = tail call i64 @llvm.objectsize.i64.p0i8(i8* %17, i1 false)
  %21 = tail call i8* @__memset_chk(i8* %17, i32 0, i64 %19, i64 %20) #8
  br label %22

; <label>:22                                      ; preds = %8, %16
  %23 = tail call i32 @CCTK_GroupIndexFromVarI(i32 %vindex) #8
  %24 = call i32 @CCTK_GroupData(i32 %23, %struct.cGroup* %vinfo) #8
  %25 = call fastcc i8* @checkParameters(%struct.cGH* %GH, i32 %vindex, i32 %vtimelvl, i32 %hdim, i32* %global_origin, i32* %directions, i32* %extents, i32* %downsample_, i8** %hdata, i32* %hsize) #7
  %26 = icmp eq i8* %25, null
  br i1 %26, label %.critedge, label %27

; <label>:27                                      ; preds = %22
  %28 = call i32 @strcmp(i8* %25, i8* getelementptr inbounds ([40 x i8]* @.str5, i64 0, i64 0)) #8
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %79

; <label>:30                                      ; preds = %27
  %31 = icmp eq i32 %hdim, 1
  br i1 %31, label %32, label %36

; <label>:32                                      ; preds = %30
  %33 = getelementptr inbounds %struct.cGroup* %vinfo, i64 0, i32 4
  %34 = load i32* %33, align 4, !tbaa !8
  %35 = icmp eq i32 %34, 3
  br i1 %35, label %38, label %36

; <label>:36                                      ; preds = %32, %30
  %37 = call i32 @CCTK_Warn(i32 1, i32 784, i8* getelementptr inbounds ([80 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([93 x i8]* @.str6, i64 0, i64 0)) #8
  br label %93

; <label>:38                                      ; preds = %32
  %39 = load i32* %directions, align 4, !tbaa !2
  %40 = getelementptr inbounds [3 x i32]* %my_directions, i64 0, i64 0
  store i32 %39, i32* %40, align 4, !tbaa !2
  %41 = getelementptr inbounds i32* %directions, i64 1
  %42 = load i32* %41, align 4, !tbaa !2
  %43 = getelementptr inbounds [3 x i32]* %my_directions, i64 0, i64 1
  store i32 %42, i32* %43, align 4, !tbaa !2
  %44 = getelementptr inbounds i32* %directions, i64 2
  %45 = load i32* %44, align 4, !tbaa !2
  %46 = getelementptr inbounds [3 x i32]* %my_directions, i64 0, i64 2
  store i32 %45, i32* %46, align 4, !tbaa !2
  %47 = load i32* %global_origin, align 4, !tbaa !2
  %48 = getelementptr inbounds [3 x i32]* %my_global_origin, i64 0, i64 0
  store i32 %47, i32* %48, align 4, !tbaa !2
  %49 = getelementptr inbounds i32* %global_origin, i64 1
  %50 = load i32* %49, align 4, !tbaa !2
  %51 = getelementptr inbounds [3 x i32]* %my_global_origin, i64 0, i64 1
  store i32 %50, i32* %51, align 4, !tbaa !2
  %52 = getelementptr inbounds i32* %global_origin, i64 2
  %53 = load i32* %52, align 4, !tbaa !2
  %54 = getelementptr inbounds [3 x i32]* %my_global_origin, i64 0, i64 2
  store i32 %53, i32* %54, align 4, !tbaa !2
  %55 = load i32* %extents, align 4, !tbaa !2
  %56 = getelementptr inbounds [1 x i32]* %my_extents, i64 0, i64 0
  store i32 %55, i32* %56, align 4, !tbaa !2
  %57 = load i32* %downsample_, align 4, !tbaa !2
  %58 = getelementptr inbounds [1 x i32]* %my_downsample_, i64 0, i64 0
  store i32 %57, i32* %58, align 4, !tbaa !2
  %59 = getelementptr inbounds [1 x i32]* %my_hsize, i64 0, i64 0
  %60 = call i32 @Hyperslab_DefineGlobalMappingByIndex(%struct.cGH* %GH, i32 %vindex, i32 1, i32* %40, i32* %48, i32* %56, i32* %58, i32 -1, i32 %target_proc, void (i8*, i8*, i32, i32, i32)* null, i32* %59) #8
  %61 = load i32* %59, align 4, !tbaa !2
  store i32 %61, i32* %hsize, align 4, !tbaa !2
  %62 = icmp slt i32 %60, 0
  br i1 %62, label %63, label %65

; <label>:63                                      ; preds = %38
  %64 = call i32 @CCTK_Warn(i32 1, i32 807, i8* getelementptr inbounds ([80 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([51 x i8]* @.str7, i64 0, i64 0)) #8
  br label %93

; <label>:65                                      ; preds = %38
  %66 = icmp sgt i32 %61, 0
  br i1 %66, label %67, label %76

; <label>:67                                      ; preds = %65
  %68 = getelementptr inbounds %struct.cGroup* %vinfo, i64 0, i32 1
  %69 = load i32* %68, align 4, !tbaa !23
  %70 = call i32 @CCTK_VarTypeSize(i32 %69) #8
  %71 = mul nsw i32 %70, %61
  %72 = sext i32 %71 to i64
  %73 = call i8* @malloc(i64 %72) #8
  store i8* %73, i8** %hdata, align 8, !tbaa !6
  %74 = load i32* %68, align 4, !tbaa !23
  %75 = call i32 @Hyperslab_Get(%struct.cGH* %GH, i32 %60, i32 %vindex, i32 0, i32 %74, i8* %73) #8
  br label %77

; <label>:76                                      ; preds = %65
  store i8* null, i8** %hdata, align 8, !tbaa !6
  br label %77

; <label>:77                                      ; preds = %76, %67
  %retval.0 = phi i32 [ %75, %67 ], [ 0, %76 ]
  %78 = call i32 @Hyperslab_FreeMapping(i32 %60) #8
  br label %93

; <label>:79                                      ; preds = %27
  %80 = call i32 @CCTK_Warn(i32 1, i32 828, i8* getelementptr inbounds ([80 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* %25) #8
  br label %93

.critedge:                                        ; preds = %22
  %81 = icmp eq i32 %4, 1
  br i1 %81, label %91, label %82

; <label>:82                                      ; preds = %.critedge
  %83 = mul nsw i32 %hdim, 3
  %84 = sext i32 %83 to i64
  %85 = shl nsw i64 %84, 2
  %86 = call i8* @malloc(i64 %85) #8
  %87 = bitcast i8* %86 to i32*
  %88 = sext i32 %hdim to i64
  %89 = getelementptr inbounds i32* %87, i64 %88
  %.sum = shl nsw i64 %88, 1
  %90 = getelementptr inbounds i32* %87, i64 %.sum
  br label %91

; <label>:91                                      ; preds = %.critedge, %82
  %hdata_ptr.0 = phi i8** [ %hdata_local, %82 ], [ %hdata, %.critedge ]
  %hsize_local.0 = phi i32* [ %87, %82 ], [ %hsize, %.critedge ]
  %hsize_global.0 = phi i32* [ %90, %82 ], [ %hsize, %.critedge ]
  %hoffset_local.0 = phi i32* [ %89, %82 ], [ null, %.critedge ]
  %92 = call i32 @Hyperslab_GetLocalHyperslab(%struct.cGH* %GH, i32 %vindex, i32 %vtimelvl, i32 %hdim, i32* %global_origin, i32* %directions, i32* %extents, i32* %downsample_, i8** %hdata_ptr.0, i32* %hsize_local.0, i32* %hsize_global.0, i32* %hoffset_local.0) #7
  br label %93

; <label>:93                                      ; preds = %91, %79, %77, %63, %36, %14, %6
  %.0 = phi i32 [ -1, %6 ], [ -1, %79 ], [ %92, %91 ], [ -1, %36 ], [ -1, %63 ], [ %retval.0, %77 ], [ -1, %14 ]
  ret i32 %.0
}

; Function Attrs: nounwind optsize readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) #6

; Function Attrs: optsize
declare i32 @Hyperslab_DefineGlobalMappingByIndex(%struct.cGH*, i32, i32, i32*, i32*, i32*, i32*, i32, i32, void (i8*, i8*, i32, i32, i32)*, i32*) #2

; Function Attrs: optsize
declare i32 @Hyperslab_Get(%struct.cGH*, i32, i32, i32, i32, i8*) #2

; Function Attrs: optsize
declare i32 @Hyperslab_FreeMapping(i32) #2

; Function Attrs: optsize
declare i32 @CCTK_NumVars() #2

; Function Attrs: optsize
declare i32 @CCTK_NumTimeLevelsFromVarI(i32) #2

declare void @memset_pattern16(i8*, i8*, i64)

attributes #0 = { nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind }
attributes #6 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { optsize }
attributes #8 = { nounwind optsize }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!2 = !{!3, !3, i64 0}
!3 = !{!"int", !4, i64 0}
!4 = !{!"omnipotent char", !5, i64 0}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!7, !7, i64 0}
!7 = !{!"any pointer", !4, i64 0}
!8 = !{!9, !3, i64 16}
!9 = !{!"", !3, i64 0, !3, i64 4, !3, i64 8, !3, i64 12, !3, i64 16, !3, i64 20, !3, i64 24, !3, i64 28}
!10 = !{!11, !7, i64 32}
!11 = !{!"PGH", !7, i64 0, !3, i64 8, !3, i64 12, !3, i64 16, !3, i64 20, !3, i64 24, !3, i64 28, !7, i64 32, !3, i64 40, !7, i64 48, !3, i64 56, !3, i64 60, !12, i64 64, !12, i64 72, !12, i64 80, !12, i64 88, !3, i64 96, !3, i64 100, !3, i64 104, !3, i64 108, !3, i64 112, !7, i64 120, !7, i64 128, !7, i64 136}
!12 = !{!"double", !4, i64 0}
!13 = !{!14, !7, i64 56}
!14 = !{!"PGA", !7, i64 0, !3, i64 8, !3, i64 12, !7, i64 16, !7, i64 24, !3, i64 32, !3, i64 36, !7, i64 40, !3, i64 48, !3, i64 52, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !3, i64 88, !3, i64 92, !7, i64 96}
!15 = !{!16, !7, i64 8}
!16 = !{!"PGExtras", !3, i64 0, !7, i64 8, !12, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !3, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !7, i64 88, !7, i64 96, !4, i64 104, !4, i64 168, !4, i64 232}
!17 = !{!9, !3, i64 12}
!18 = !{!16, !7, i64 24}
!19 = !{!14, !7, i64 64}
!20 = !{!21, !7, i64 24}
!21 = !{!"PConnectivity", !3, i64 0, !7, i64 8, !7, i64 16, !7, i64 24}
!22 = !{!16, !7, i64 96}
!23 = !{!9, !3, i64 4}
!24 = !{!16, !7, i64 48}
!25 = !{!4, !4, i64 0}
!26 = !{!12, !12, i64 0}
!27 = !{i64 0, i64 8, !26, i64 8, i64 8, !26}
!28 = !{!29, !29, i64 0}
!29 = !{!"short", !4, i64 0}
!30 = !{!31, !31, i64 0}
!31 = !{!"long", !4, i64 0}
!32 = !{!33, !33, i64 0}
!33 = !{!"float", !4, i64 0}
!34 = !{!35, !35, i64 0}
!35 = !{!"long double", !4, i64 0}
!36 = !{i64 0, i64 16, !34, i64 16, i64 16, !34}
!37 = !{!9, !3, i64 0}