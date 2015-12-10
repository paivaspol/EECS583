; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Mapping.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.cGH = type { i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, double, double*, double*, i32*, i32*, i32, i32*, double, i8***, i8**, %struct.cGHGroupData* }
%struct.cGHGroupData = type { i8, i8 }
%struct.hslab_mapping_t = type { i32, i32, i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32, i32, i32, void (i8*, i8*, i32, i32, i32)*, %struct.hslab_mapping_t*, %struct.hslab_mapping_t*, %struct.cGroup }
%struct.cGroup = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.PGH = type { i8*, i32, i32, i32, i32, i32, i32, i8***, i32, i32*, i32, i32, double, double, double, double, i32, i32, i32, i32, i32, %struct.PGExtras**, %struct.PConnectivity**, i8* }
%struct.PGExtras = type { i32, i32*, double, i32**, i32**, i32*, i32*, i32, i32*, i32**, i32*, i32*, i32*, [4 x [2 x i32*]], [4 x [2 x i32**]], [4 x [2 x i32**]] }
%struct.PConnectivity = type { i32, i32*, i32**, i32* }
%struct.PGA = type { i8*, i32, i32, i8*, i8*, i32, i32, i8*, i32, i32, %struct.PGExtras*, %struct.PConnectivity*, %struct.PComm*, %struct.PComm*, i32, i32, %struct.PGA* }
%struct.PComm = type { i32*, i8**, i8**, i32, i32*, i32, i32, i32 }

@.str = private unnamed_addr constant [78 x i8] c"../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/Mapping.c\00", align 1
@.str1 = private unnamed_addr constant [9 x i8] c"PUGHSlab\00", align 1
@.str2 = private unnamed_addr constant [67 x i8] c"Hyperslab_DefineGlobalMappingByIndex: table information is ignored\00", align 1
@.str3 = private unnamed_addr constant [29 x i8] c"invalid variable index given\00", align 1
@.str4 = private unnamed_addr constant [69 x i8] c"invalid variable group type given (not a CCTK_GF or CCTK_ARRAY type)\00", align 1
@.str5 = private unnamed_addr constant [34 x i8] c"invalid hyperslab dimension given\00", align 1
@.str6 = private unnamed_addr constant [68 x i8] c"NULL pointer(s) passed for direction/origin/extent/hsize parameters\00", align 1
@CCTK_nProcs = external global i32 (%struct.cGH*)*
@.str7 = private unnamed_addr constant [33 x i8] c"invalid target procesor ID given\00", align 1
@.str8 = private unnamed_addr constant [55 x i8] c"no PUGH GH extension registered (PUGH not activated ?)\00", align 1
@.str9 = private unnamed_addr constant [57 x i8] c"invalid hyperslab origin/extent/downsample vectors given\00", align 1
@.str10 = private unnamed_addr constant [46 x i8] c"couldn't allocate hyperslab mapping structure\00", align 1
@.str11 = private unnamed_addr constant [41 x i8] c"Hyperslab_DefineGlobalMappingByIndex: %s\00", align 1
@.str12 = private unnamed_addr constant [75 x i8] c"Hyperslab_DefineGlobalMappingByIndex: %d-direction vector is a null vector\00", align 1
@.str13 = private unnamed_addr constant [80 x i8] c"Hyperslab_DefineGlobalMappingByIndex: %d-direction vector isn't axis-orthogonal\00", align 1
@.str14 = private unnamed_addr constant [102 x i8] c"Hyperslab_DefineGlobalMappingByIndex: diagonals can be extracted from non-staggered 3D variables only\00", align 1
@.str15 = private unnamed_addr constant [72 x i8] c"Hyperslab_DefineGlobalMappingByIndex: duplicate direction vectors given\00", align 1
@CCTK_MyProc = external global i32 (%struct.cGH*)*
@.str16 = private unnamed_addr constant [79 x i8] c"Hyperslab_DefineGlobalMappingByIndex: extent in %d-direction exceeds grid size\00", align 1
@mapping_list = internal unnamed_addr global %struct.hslab_mapping_t* null, align 8
@nmapping_list = internal unnamed_addr global i32 0, align 4
@.str17 = private unnamed_addr constant [90 x i8] c"$Header: /cactus/CactusPUGH/PUGHSlab/src/Mapping.c,v 1.4 2001/12/18 23:46:22 tradke Exp $\00", align 1

; Function Attrs: nounwind optsize readnone ssp uwtable
define i8* @CCTKi_version_CactusPUGH_PUGHSlab_Mapping_c() #0 {
  ret i8* getelementptr inbounds ([90 x i8]* @.str17, i64 0, i64 0)
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @Hyperslab_DefineGlobalMappingByIndex(%struct.cGH* %GH, i32 %vindex, i32 %dim, i32* readonly %direction, i32* readonly %origin, i32* readonly %extent, i32* readonly %downsample, i32 %table_handle, i32 %target_proc, void (i8*, i8*, i32, i32, i32)* %conversion_fn, i32* %hsize) #1 {
  %vinfo = alloca %struct.cGroup, align 4
  %1 = icmp sgt i32 %table_handle, -1
  br i1 %1, label %2, label %4

; <label>:2                                       ; preds = %0
  %3 = tail call i32 @CCTK_Warn(i32 1, i32 95, i8* getelementptr inbounds ([78 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([67 x i8]* @.str2, i64 0, i64 0)) #7
  br label %4

; <label>:4                                       ; preds = %2, %0
  %5 = tail call i32 @CCTK_GroupIndexFromVarI(i32 %vindex) #7
  %6 = call i32 @CCTK_GroupData(i32 %5, %struct.cGroup* %vinfo) #7
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %.thread13, label %8

; <label>:8                                       ; preds = %4
  %9 = getelementptr inbounds %struct.cGroup* %vinfo, i64 0, i32 0
  %10 = load i32* %9, align 4, !tbaa !2
  %11 = and i32 %10, -2
  %switch = icmp eq i32 %11, 2
  br i1 %switch, label %12, label %.thread13

; <label>:12                                      ; preds = %8
  %13 = icmp slt i32 %dim, 0
  br i1 %13, label %.thread13, label %14

; <label>:14                                      ; preds = %12
  %15 = getelementptr inbounds %struct.cGroup* %vinfo, i64 0, i32 4
  %16 = load i32* %15, align 4, !tbaa !7
  %17 = icmp slt i32 %16, %dim
  br i1 %17, label %.thread13, label %18

; <label>:18                                      ; preds = %14
  %19 = icmp ne i32* %direction, null
  %20 = icmp ne i32* %origin, null
  %or.cond = and i1 %19, %20
  %21 = icmp ne i32* %extent, null
  %or.cond3 = and i1 %or.cond, %21
  %22 = icmp ne i32* %hsize, null
  %or.cond5 = and i1 %or.cond3, %22
  br i1 %or.cond5, label %23, label %.thread13

; <label>:23                                      ; preds = %18
  %24 = load i32 (%struct.cGH*)** @CCTK_nProcs, align 8, !tbaa !8
  %25 = call i32 %24(%struct.cGH* %GH) #7
  %26 = icmp sgt i32 %25, %target_proc
  br i1 %26, label %27, label %.thread13

; <label>:27                                      ; preds = %23
  %28 = call %struct.PGH* @PUGH_pGH(%struct.cGH* %GH) #7
  %29 = icmp eq %struct.PGH* %28, null
  br i1 %29, label %.thread13, label %.preheader25

.preheader25:                                     ; preds = %27
  %30 = load i32* %15, align 4, !tbaa !7
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %._crit_edge69.thread, label %.lr.ph68

.lr.ph68:                                         ; preds = %.preheader25
  %32 = icmp eq i32* %downsample, null
  %33 = zext i32 %30 to i64
  %34 = zext i32 %dim to i64
  br label %35

; <label>:35                                      ; preds = %.lr.ph68, %52
  %indvars.iv80 = phi i64 [ 0, %.lr.ph68 ], [ %indvars.iv.next81, %52 ]
  %retval.066 = phi i32 [ 0, %.lr.ph68 ], [ %retval.1, %52 ]
  %36 = getelementptr inbounds i32* %origin, i64 %indvars.iv80
  %37 = load i32* %36, align 4, !tbaa !10
  %.lobit = lshr i32 %37, 31
  %38 = or i32 %.lobit, %retval.066
  %39 = icmp ult i64 %indvars.iv80, %34
  br i1 %39, label %40, label %52

; <label>:40                                      ; preds = %35
  %41 = getelementptr inbounds i32* %extent, i64 %indvars.iv80
  %42 = load i32* %41, align 4, !tbaa !10
  %43 = icmp slt i32 %42, 1
  %44 = zext i1 %43 to i32
  %45 = or i32 %44, %38
  br i1 %32, label %52, label %46

; <label>:46                                      ; preds = %40
  %47 = getelementptr inbounds i32* %downsample, i64 %indvars.iv80
  %48 = load i32* %47, align 4, !tbaa !10
  %49 = icmp slt i32 %48, 1
  %50 = zext i1 %49 to i32
  %51 = or i32 %50, %45
  br label %52

; <label>:52                                      ; preds = %40, %35, %46
  %retval.1 = phi i32 [ %51, %46 ], [ %45, %40 ], [ %38, %35 ]
  %indvars.iv.next81 = add nuw nsw i64 %indvars.iv80, 1
  %53 = icmp ult i64 %indvars.iv.next81, %33
  br i1 %53, label %35, label %._crit_edge69

._crit_edge69:                                    ; preds = %52
  %54 = icmp eq i32 %retval.1, 0
  %. = select i1 %54, i8* null, i8* getelementptr inbounds ([57 x i8]* @.str9, i64 0, i64 0)
  br i1 %54, label %._crit_edge69.thread, label %.thread13

._crit_edge69.thread:                             ; preds = %.preheader25, %._crit_edge69
  %55 = call i8* @malloc(i64 160) #7
  %56 = icmp eq i8* %55, null
  br i1 %56, label %.thread13, label %57

; <label>:57                                      ; preds = %._crit_edge69.thread
  %58 = mul nsw i32 %30, 6
  %59 = shl i32 %dim, 1
  %60 = add nsw i32 %58, %59
  %61 = sext i32 %60 to i64
  %62 = shl nsw i64 %61, 2
  %63 = call i8* @malloc(i64 %62) #7
  %64 = getelementptr inbounds i8* %55, i64 16
  %65 = bitcast i8* %64 to i8**
  store i8* %63, i8** %65, align 8, !tbaa !11
  %.not = icmp eq i8* %63, null
  %66 = bitcast i8* %63 to i32*
  br i1 %.not, label %67, label %69

; <label>:67                                      ; preds = %57
  call void @free(i8* %55) #8
  br label %.thread13

.thread13:                                        ; preds = %._crit_edge69.thread, %._crit_edge69, %27, %23, %18, %12, %14, %8, %4, %67
  %error_msg.115 = phi i8* [ getelementptr inbounds ([46 x i8]* @.str10, i64 0, i64 0), %._crit_edge69.thread ], [ getelementptr inbounds ([46 x i8]* @.str10, i64 0, i64 0), %67 ], [ %., %._crit_edge69 ], [ getelementptr inbounds ([55 x i8]* @.str8, i64 0, i64 0), %27 ], [ getelementptr inbounds ([33 x i8]* @.str7, i64 0, i64 0), %23 ], [ getelementptr inbounds ([68 x i8]* @.str6, i64 0, i64 0), %18 ], [ getelementptr inbounds ([34 x i8]* @.str5, i64 0, i64 0), %12 ], [ getelementptr inbounds ([34 x i8]* @.str5, i64 0, i64 0), %14 ], [ getelementptr inbounds ([69 x i8]* @.str4, i64 0, i64 0), %8 ], [ getelementptr inbounds ([29 x i8]* @.str3, i64 0, i64 0), %4 ]
  %retval.314 = phi i32 [ -6, %._crit_edge69.thread ], [ -6, %67 ], [ -5, %._crit_edge69 ], [ -4, %27 ], [ -4, %23 ], [ -3, %18 ], [ -2, %12 ], [ -2, %14 ], [ -2, %8 ], [ -1, %4 ]
  %68 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 174, i8* getelementptr inbounds ([78 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([41 x i8]* @.str11, i64 0, i64 0), i8* %error_msg.115) #7
  br label %.loopexit

; <label>:69                                      ; preds = %57
  %70 = ptrtoint i8* %63 to i64
  %71 = getelementptr inbounds i8* %55, i64 8
  %72 = bitcast i8* %71 to i32*
  store i32 %dim, i32* %72, align 4, !tbaa !13
  %73 = getelementptr inbounds i8* %55, i64 128
  %74 = bitcast %struct.cGroup* %vinfo to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %73, i8* %74, i64 32, i32 4, i1 false), !tbaa.struct !14
  %75 = getelementptr inbounds i8* %55, i64 4
  %76 = bitcast i8* %75 to i32*
  store i32 %target_proc, i32* %76, align 4, !tbaa !15
  %77 = getelementptr inbounds i8* %55, i64 104
  %78 = bitcast i8* %77 to void (i8*, i8*, i32, i32, i32)**
  store void (i8*, i8*, i32, i32, i32)* %conversion_fn, void (i8*, i8*, i32, i32, i32)** %78, align 8, !tbaa !16
  %79 = getelementptr inbounds i8* %55, i64 24
  %80 = bitcast i8* %79 to i32**
  %81 = bitcast i8* %79 to i64*
  store i64 %70, i64* %81, align 8, !tbaa !17
  %82 = sext i32 %30 to i64
  %83 = getelementptr inbounds i32* %66, i64 %82
  %84 = getelementptr inbounds i8* %55, i64 32
  %85 = bitcast i8* %84 to i32**
  store i32* %83, i32** %85, align 8, !tbaa !18
  %86 = shl nsw i32 %30, 1
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32* %66, i64 %87
  %89 = getelementptr inbounds i8* %55, i64 40
  %90 = bitcast i8* %89 to i32**
  store i32* %88, i32** %90, align 8, !tbaa !19
  %91 = mul nsw i32 %30, 3
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32* %66, i64 %92
  %94 = getelementptr inbounds i8* %55, i64 48
  %95 = bitcast i8* %94 to i32**
  store i32* %93, i32** %95, align 8, !tbaa !20
  %96 = shl nsw i32 %30, 2
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32* %66, i64 %97
  %99 = getelementptr inbounds i8* %55, i64 56
  %100 = bitcast i8* %99 to i32**
  store i32* %98, i32** %100, align 8, !tbaa !21
  %101 = mul nsw i32 %30, 5
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32* %66, i64 %102
  %104 = getelementptr inbounds i8* %55, i64 64
  %105 = bitcast i8* %104 to i32**
  store i32* %103, i32** %105, align 8, !tbaa !22
  %106 = sext i32 %58 to i64
  %107 = getelementptr inbounds i32* %66, i64 %106
  %108 = getelementptr inbounds i8* %55, i64 80
  %109 = bitcast i8* %108 to i32**
  store i32* %107, i32** %109, align 8, !tbaa !23
  %110 = sext i32 %dim to i64
  %.sum = add nsw i64 %106, %110
  %111 = getelementptr inbounds i32* %66, i64 %.sum
  %112 = getelementptr inbounds i8* %55, i64 72
  %113 = bitcast i8* %112 to i32**
  store i32* %111, i32** %113, align 8, !tbaa !24
  %114 = icmp eq i32 %dim, 0
  %.pre102 = getelementptr inbounds i8* %55, i64 96
  %.pre104 = bitcast i8* %.pre102 to i32*
  br i1 %114, label %._crit_edge65.thread, label %.preheader24.lr.ph

.preheader24.lr.ph:                               ; preds = %69
  %115 = add i32 %30, -1
  br label %.preheader24

.preheader24:                                     ; preds = %.preheader24.lr.ph, %132
  %hdim.064 = phi i32 [ 0, %.preheader24.lr.ph ], [ %133, %132 ]
  br i1 %31, label %._crit_edge63.thread, label %.lr.ph62

.lr.ph62:                                         ; preds = %.preheader24, %.lr.ph62
  %indvars.iv77 = phi i64 [ %indvars.iv.next78, %.lr.ph62 ], [ 0, %.preheader24 ]
  %num_dirs.060 = phi i32 [ %num_dirs.0., %.lr.ph62 ], [ 0, %.preheader24 ]
  %116 = mul i32 %30, %hdim.064
  %117 = trunc i64 %indvars.iv77 to i32
  %118 = add i32 %116, %117
  %119 = zext i32 %118 to i64
  %120 = getelementptr inbounds i32* %direction, i64 %119
  %121 = load i32* %120, align 4, !tbaa !10
  %not.16 = icmp ne i32 %121, 0
  %122 = zext i1 %not.16 to i32
  %num_dirs.0. = add i32 %122, %num_dirs.060
  %indvars.iv.next78 = add nuw nsw i64 %indvars.iv77, 1
  %exitcond79 = icmp eq i32 %117, %115
  br i1 %exitcond79, label %._crit_edge63, label %.lr.ph62

._crit_edge63:                                    ; preds = %.lr.ph62
  switch i32 %num_dirs.0., label %126 [
    i32 0, label %._crit_edge63.thread
    i32 3, label %124
  ]

._crit_edge63.thread:                             ; preds = %.preheader24, %._crit_edge63
  call void @free(i8* %63) #8
  call void @free(i8* %55) #8
  %123 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 208, i8* getelementptr inbounds ([78 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([75 x i8]* @.str12, i64 0, i64 0), i32 %hdim.064) #7
  br label %.loopexit

; <label>:124                                     ; preds = %._crit_edge63
  %125 = icmp eq i32 %dim, 1
  br label %126

; <label>:126                                     ; preds = %._crit_edge63, %124
  %127 = phi i1 [ %125, %124 ], [ false, %._crit_edge63 ]
  %128 = zext i1 %127 to i32
  store i32 %128, i32* %.pre104, align 4, !tbaa !25
  %129 = icmp eq i32 %num_dirs.0., 1
  %brmerge = or i1 %129, %127
  br i1 %brmerge, label %132, label %130

; <label>:130                                     ; preds = %126
  call void @free(i8* %63) #8
  call void @free(i8* %55) #8
  %131 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 218, i8* getelementptr inbounds ([78 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([80 x i8]* @.str13, i64 0, i64 0), i32 %hdim.064) #7
  br label %.loopexit

; <label>:132                                     ; preds = %126
  %133 = add nuw i32 %hdim.064, 1
  %134 = icmp ult i32 %133, %dim
  br i1 %134, label %.preheader24, label %._crit_edge65

._crit_edge65:                                    ; preds = %132
  br i1 %127, label %._crit_edge65.thread, label %.preheader23

.preheader23:                                     ; preds = %._crit_edge65, %._crit_edge65.thread
  br i1 %31, label %._crit_edge59, label %.lr.ph58

._crit_edge65.thread:                             ; preds = %._crit_edge65, %69
  %135 = getelementptr inbounds %struct.cGroup* %vinfo, i64 0, i32 3
  %136 = load i32* %135, align 4, !tbaa !26
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %.preheader23, label %138

; <label>:138                                     ; preds = %._crit_edge65.thread
  call void @free(i8* %63) #8
  call void @free(i8* %55) #8
  %139 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 229, i8* getelementptr inbounds ([78 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([102 x i8]* @.str14, i64 0, i64 0)) #7
  br label %.loopexit

._crit_edge55.thread:                             ; preds = %.lr.ph58, %._crit_edge55
  %140 = add nuw i32 %vdim.256, 1
  %141 = load i32* %15, align 4, !tbaa !7
  %142 = icmp ult i32 %140, %141
  br i1 %142, label %.lr.ph58, label %._crit_edge59

.lr.ph58:                                         ; preds = %.preheader23, %._crit_edge55.thread
  %vdim.256 = phi i32 [ %140, %._crit_edge55.thread ], [ 0, %.preheader23 ]
  %143 = zext i32 %vdim.256 to i64
  %.sum110 = add nsw i64 %97, %143
  %144 = getelementptr inbounds i32* %66, i64 %.sum110
  store i32 0, i32* %144, align 4, !tbaa !10
  %145 = load i32* %72, align 4, !tbaa !13
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %._crit_edge55.thread, label %.lr.ph54

.lr.ph54:                                         ; preds = %.lr.ph58, %158
  %147 = phi i32 [ %.pre82, %158 ], [ 0, %.lr.ph58 ]
  %148 = phi i32 [ %159, %158 ], [ %145, %.lr.ph58 ]
  %hdim.152 = phi i32 [ %160, %158 ], [ 0, %.lr.ph58 ]
  %149 = load i32* %15, align 4, !tbaa !7
  %150 = mul i32 %149, %hdim.152
  %151 = add i32 %150, %vdim.256
  %152 = zext i32 %151 to i64
  %153 = getelementptr inbounds i32* %direction, i64 %152
  %154 = load i32* %153, align 4, !tbaa !10
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %158, label %156

; <label>:156                                     ; preds = %.lr.ph54
  %157 = add nsw i32 %147, 1
  store i32 %157, i32* %144, align 4, !tbaa !10
  %.pre = load i32* %72, align 4, !tbaa !13
  br label %158

; <label>:158                                     ; preds = %.lr.ph54, %156
  %.pre82 = phi i32 [ %147, %.lr.ph54 ], [ %157, %156 ]
  %159 = phi i32 [ %148, %.lr.ph54 ], [ %.pre, %156 ]
  %160 = add nuw i32 %hdim.152, 1
  %161 = icmp ult i32 %160, %159
  br i1 %161, label %.lr.ph54, label %._crit_edge55

._crit_edge55:                                    ; preds = %158
  %162 = icmp sgt i32 %.pre82, 1
  br i1 %162, label %163, label %._crit_edge55.thread

; <label>:163                                     ; preds = %._crit_edge55
  call void @free(i8* %63) #8
  call void @free(i8* %55) #8
  %164 = call i32 @CCTK_Warn(i32 1, i32 249, i8* getelementptr inbounds ([78 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([72 x i8]* @.str15, i64 0, i64 0)) #7
  br label %.loopexit

._crit_edge59:                                    ; preds = %._crit_edge55.thread, %.preheader23
  %165 = sext i32 %vindex to i64
  %166 = getelementptr inbounds %struct.PGH* %28, i64 0, i32 7
  %167 = load i8**** %166, align 8, !tbaa !27
  %168 = getelementptr inbounds i8*** %167, i64 %165
  %169 = bitcast i8*** %168 to %struct.PGA***
  %170 = load %struct.PGA*** %169, align 8, !tbaa !8
  %171 = load %struct.PGA** %170, align 8, !tbaa !8
  %172 = load i32 (%struct.cGH*)** @CCTK_MyProc, align 8, !tbaa !8
  %173 = call i32 %172(%struct.cGH* %GH) #7
  %174 = load i32* %15, align 4, !tbaa !7
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %.preheader22._crit_edge, label %.lr.ph51

.lr.ph51:                                         ; preds = %._crit_edge59
  %176 = load i32** %100, align 8, !tbaa !21
  %177 = getelementptr inbounds %struct.PGA* %171, i64 0, i32 10
  %178 = zext i32 %174 to i64
  br label %186

.preheader22:                                     ; preds = %229
  br i1 %175, label %.preheader22._crit_edge, label %.lr.ph45

.preheader22._crit_edge:                          ; preds = %._crit_edge59, %.preheader22
  %.pre106 = getelementptr inbounds %struct.PGA* %171, i64 0, i32 10
  br label %._crit_edge46

.lr.ph45:                                         ; preds = %.preheader22
  %179 = load i32** %105, align 8, !tbaa !22
  %180 = load i32** %100, align 8, !tbaa !21
  %181 = getelementptr inbounds i8* %55, i64 88
  %182 = bitcast i8* %181 to i32*
  %183 = getelementptr inbounds %struct.PGA* %171, i64 0, i32 11
  %184 = getelementptr inbounds %struct.PGA* %171, i64 0, i32 10
  %185 = icmp eq i32* %downsample, null
  br label %231

; <label>:186                                     ; preds = %.lr.ph51, %229
  %indvars.iv = phi i64 [ 0, %.lr.ph51 ], [ %indvars.iv.next, %229 ]
  %hdim.247 = phi i32 [ 0, %.lr.ph51 ], [ %hdim.3, %229 ]
  %187 = getelementptr inbounds i32* %176, i64 %indvars.iv
  %188 = load i32* %187, align 4, !tbaa !10
  %189 = icmp eq i32 %188, 0
  br i1 %189, label %211, label %190

; <label>:190                                     ; preds = %186
  %191 = load i32* %72, align 4, !tbaa !13
  %192 = icmp ult i32 %hdim.247, %191
  br i1 %192, label %193, label %211

; <label>:193                                     ; preds = %190
  %194 = getelementptr inbounds i32* %origin, i64 %indvars.iv
  %195 = load i32* %194, align 4, !tbaa !10
  %196 = zext i32 %hdim.247 to i64
  %197 = getelementptr inbounds i32* %extent, i64 %196
  %198 = load i32* %197, align 4, !tbaa !10
  %199 = add nsw i32 %198, %195
  %200 = load %struct.PGExtras** %177, align 8, !tbaa !30
  %201 = getelementptr inbounds %struct.PGExtras* %200, i64 0, i32 1
  %202 = load i32** %201, align 8, !tbaa !32
  %203 = getelementptr inbounds i32* %202, i64 %indvars.iv
  %204 = load i32* %203, align 4, !tbaa !10
  %205 = icmp sgt i32 %199, %204
  br i1 %205, label %206, label %209

; <label>:206                                     ; preds = %193
  %207 = load i8** %65, align 8, !tbaa !11
  call void @free(i8* %207) #8
  call void @free(i8* %55) #8
  %208 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 266, i8* getelementptr inbounds ([78 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([79 x i8]* @.str16, i64 0, i64 0), i32 %hdim.247) #7
  br label %.loopexit

; <label>:209                                     ; preds = %193
  %210 = add i32 %hdim.247, 1
  br label %229

; <label>:211                                     ; preds = %186, %190
  %212 = load i32* %.pre104, align 4, !tbaa !25
  %213 = icmp eq i32 %212, 0
  br i1 %213, label %229, label %214

; <label>:214                                     ; preds = %211
  %215 = getelementptr inbounds i32* %origin, i64 %indvars.iv
  %216 = load i32* %215, align 4, !tbaa !10
  %217 = load i32* %extent, align 4, !tbaa !10
  %218 = add nsw i32 %217, %216
  %219 = load %struct.PGExtras** %177, align 8, !tbaa !30
  %220 = getelementptr inbounds %struct.PGExtras* %219, i64 0, i32 1
  %221 = load i32** %220, align 8, !tbaa !32
  %222 = getelementptr inbounds i32* %221, i64 %indvars.iv
  %223 = load i32* %222, align 4, !tbaa !10
  %224 = icmp sgt i32 %218, %223
  br i1 %224, label %225, label %229

; <label>:225                                     ; preds = %214
  %226 = trunc i64 %indvars.iv to i32
  %227 = load i8** %65, align 8, !tbaa !11
  call void @free(i8* %227) #8
  call void @free(i8* %55) #8
  %228 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 277, i8* getelementptr inbounds ([78 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([79 x i8]* @.str16, i64 0, i64 0), i32 %226) #7
  br label %.loopexit

; <label>:229                                     ; preds = %211, %209, %214
  %hdim.3 = phi i32 [ %210, %209 ], [ %hdim.247, %214 ], [ %hdim.247, %211 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %230 = icmp ult i64 %indvars.iv.next, %178
  br i1 %230, label %186, label %.preheader22

; <label>:231                                     ; preds = %.lr.ph45, %308
  %vdim.444 = phi i32 [ 0, %.lr.ph45 ], [ %309, %308 ]
  %hdim.443 = phi i32 [ 0, %.lr.ph45 ], [ %hdim.5, %308 ]
  %232 = zext i32 %vdim.444 to i64
  %233 = getelementptr inbounds i32* %179, i64 %232
  store i32 1, i32* %233, align 4, !tbaa !10
  %234 = getelementptr inbounds i32* %180, i64 %232
  %235 = load i32* %234, align 4, !tbaa !10
  %236 = icmp eq i32 %235, 0
  br i1 %236, label %274, label %237

; <label>:237                                     ; preds = %231
  %238 = load i32* %72, align 4, !tbaa !13
  %239 = icmp ult i32 %hdim.443, %238
  br i1 %239, label %240, label %274

; <label>:240                                     ; preds = %237
  %.pre85 = zext i32 %hdim.443 to i64
  br i1 %185, label %._crit_edge83, label %241

; <label>:241                                     ; preds = %240
  %242 = getelementptr inbounds i32* %downsample, i64 %.pre85
  %243 = load i32* %242, align 4, !tbaa !10
  store i32 %243, i32* %233, align 4, !tbaa !10
  br label %._crit_edge83

._crit_edge83:                                    ; preds = %240, %241
  %244 = phi i32 [ %243, %241 ], [ 1, %240 ]
  %245 = getelementptr inbounds i32* %extent, i64 %.pre85
  %246 = load i32* %245, align 4, !tbaa !10
  %247 = sdiv i32 %246, %244
  %248 = load i32** %113, align 8, !tbaa !24
  %249 = getelementptr inbounds i32* %248, i64 %.pre85
  store i32 %247, i32* %249, align 4, !tbaa !10
  %250 = load i32* %245, align 4, !tbaa !10
  %251 = load i32* %233, align 4, !tbaa !10
  %252 = srem i32 %250, %251
  %253 = icmp eq i32 %252, 0
  br i1 %253, label %256, label %254

; <label>:254                                     ; preds = %._crit_edge83
  %255 = add nsw i32 %247, 1
  store i32 %255, i32* %249, align 4, !tbaa !10
  br label %256

; <label>:256                                     ; preds = %._crit_edge83, %254
  %257 = phi i32 [ %247, %._crit_edge83 ], [ %255, %254 ]
  %258 = load %struct.PConnectivity** %183, align 8, !tbaa !34
  %259 = getelementptr inbounds %struct.PConnectivity* %258, i64 0, i32 3
  %260 = load i32** %259, align 8, !tbaa !35
  %261 = getelementptr inbounds i32* %260, i64 %232
  %262 = load i32* %261, align 4, !tbaa !10
  %263 = icmp eq i32 %262, 0
  br i1 %263, label %272, label %264

; <label>:264                                     ; preds = %256
  %265 = load %struct.PGExtras** %184, align 8, !tbaa !30
  %266 = getelementptr inbounds %struct.PGExtras* %265, i64 0, i32 12
  %267 = load i32** %266, align 8, !tbaa !37
  %268 = getelementptr inbounds i32* %267, i64 %232
  %269 = load i32* %268, align 4, !tbaa !10
  %270 = shl nsw i32 %269, 1
  %271 = sub nsw i32 %257, %270
  store i32 %271, i32* %249, align 4, !tbaa !10
  br label %272

; <label>:272                                     ; preds = %256, %264
  %273 = add i32 %hdim.443, 1
  br label %308

; <label>:274                                     ; preds = %231, %237
  %275 = load i32* %.pre104, align 4, !tbaa !25
  %276 = icmp eq i32 %275, 0
  br i1 %276, label %308, label %277

; <label>:277                                     ; preds = %274
  %278 = load i32* %extent, align 4, !tbaa !10
  %279 = load i32* %179, align 4, !tbaa !10
  %280 = sdiv i32 %278, %279
  store i32 %280, i32* %182, align 4, !tbaa !38
  %281 = load i32* %179, align 4, !tbaa !10
  %282 = srem i32 %278, %281
  %283 = icmp eq i32 %282, 0
  br i1 %283, label %286, label %284

; <label>:284                                     ; preds = %277
  %285 = add i32 %280, 1
  store i32 %285, i32* %182, align 4, !tbaa !38
  br label %286

; <label>:286                                     ; preds = %277, %284
  %287 = phi i32 [ %280, %277 ], [ %285, %284 ]
  %288 = load %struct.PConnectivity** %183, align 8, !tbaa !34
  %289 = getelementptr inbounds %struct.PConnectivity* %288, i64 0, i32 3
  %290 = load i32** %289, align 8, !tbaa !35
  %291 = getelementptr inbounds i32* %290, i64 %232
  %292 = load i32* %291, align 4, !tbaa !10
  %293 = icmp eq i32 %292, 0
  br i1 %293, label %302, label %294

; <label>:294                                     ; preds = %286
  %295 = load %struct.PGExtras** %184, align 8, !tbaa !30
  %296 = getelementptr inbounds %struct.PGExtras* %295, i64 0, i32 12
  %297 = load i32** %296, align 8, !tbaa !37
  %298 = getelementptr inbounds i32* %297, i64 %232
  %299 = load i32* %298, align 4, !tbaa !10
  %300 = shl nsw i32 %299, 1
  %301 = sub i32 %287, %300
  store i32 %301, i32* %182, align 4, !tbaa !38
  br label %302

; <label>:302                                     ; preds = %286, %294
  %303 = phi i32 [ %287, %286 ], [ %301, %294 ]
  %304 = load i32** %113, align 8, !tbaa !24
  %305 = load i32* %304, align 4, !tbaa !10
  %306 = icmp ugt i32 %305, %303
  br i1 %306, label %307, label %308

; <label>:307                                     ; preds = %302
  store i32 %303, i32* %304, align 4, !tbaa !10
  br label %308

; <label>:308                                     ; preds = %274, %272, %302, %307
  %hdim.5 = phi i32 [ %273, %272 ], [ %hdim.443, %307 ], [ %hdim.443, %302 ], [ %hdim.443, %274 ]
  %309 = add nuw i32 %vdim.444, 1
  %310 = load i32* %15, align 4, !tbaa !7
  %311 = icmp ult i32 %309, %310
  br i1 %311, label %231, label %._crit_edge46

._crit_edge46:                                    ; preds = %308, %.preheader22._crit_edge
  %.pre-phi107 = phi %struct.PGExtras** [ %.pre106, %.preheader22._crit_edge ], [ %184, %308 ]
  %312 = phi i32 [ 0, %.preheader22._crit_edge ], [ %310, %308 ]
  %313 = load i32* %72, align 4, !tbaa !13
  %314 = load %struct.PGExtras** %.pre-phi107, align 8, !tbaa !30
  %315 = getelementptr inbounds %struct.PGExtras* %314, i64 0, i32 0
  %316 = load i32* %315, align 4, !tbaa !39
  %317 = icmp eq i32 %313, %316
  %318 = zext i1 %317 to i32
  %319 = icmp sgt i32 %313, 0
  %or.cond.i = and i1 %319, %317
  br i1 %or.cond.i, label %.lr.ph.i, label %IsFullHyperslab.exit

.lr.ph.i:                                         ; preds = %._crit_edge46
  %320 = load i32** %105, align 8, !tbaa !22
  %321 = getelementptr inbounds %struct.PGA* %171, i64 0, i32 11
  %322 = load %struct.PConnectivity** %321, align 8, !tbaa !34
  %323 = getelementptr inbounds %struct.PConnectivity* %322, i64 0, i32 3
  %324 = load i32** %323, align 8, !tbaa !35
  %325 = sext i32 %313 to i64
  %326 = add nsw i64 %325, -1
  br label %327

; <label>:327                                     ; preds = %327, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %327 ]
  %retval.02.i = phi i32 [ %318, %.lr.ph.i ], [ %347, %327 ]
  %328 = getelementptr inbounds i32* %origin, i64 %indvars.iv.i
  %329 = load i32* %328, align 4, !tbaa !10
  %330 = icmp eq i32 %329, 0
  %331 = zext i1 %330 to i32
  %332 = and i32 %331, %retval.02.i
  %333 = getelementptr inbounds i32* %extent, i64 %indvars.iv.i
  %334 = load i32* %333, align 4, !tbaa !10
  %335 = icmp slt i32 %334, 1
  %336 = zext i1 %335 to i32
  %337 = and i32 %332, %336
  %338 = getelementptr inbounds i32* %320, i64 %indvars.iv.i
  %339 = load i32* %338, align 4, !tbaa !10
  %340 = icmp slt i32 %339, 2
  %341 = zext i1 %340 to i32
  %342 = and i32 %337, %341
  %343 = getelementptr inbounds i32* %324, i64 %indvars.iv.i
  %344 = load i32* %343, align 4, !tbaa !10
  %345 = icmp eq i32 %344, 0
  %346 = zext i1 %345 to i32
  %347 = and i32 %342, %346
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %exitcond = icmp eq i64 %indvars.iv.i, %326
  br i1 %exitcond, label %IsFullHyperslab.exit, label %327

IsFullHyperslab.exit:                             ; preds = %327, %._crit_edge46
  %retval.1.i = phi i32 [ %318, %._crit_edge46 ], [ %347, %327 ]
  %348 = getelementptr inbounds i8* %55, i64 92
  %349 = bitcast i8* %348 to i32*
  store i32 %retval.1.i, i32* %349, align 4, !tbaa !40
  %350 = icmp eq i32 %retval.1.i, 0
  br i1 %350, label %374, label %351

; <label>:351                                     ; preds = %IsFullHyperslab.exit
  %352 = bitcast i8* %79 to i8**
  %353 = load i8** %352, align 8, !tbaa !17
  %354 = sext i32 %312 to i64
  %355 = shl nsw i64 %354, 2
  %356 = call i64 @llvm.objectsize.i64.p0i8(i8* %353, i1 false)
  %357 = call i8* @__memset_chk(i8* %353, i32 0, i64 %355, i64 %356) #7
  %358 = bitcast i8* %84 to i8**
  %359 = load i8** %358, align 8, !tbaa !18
  %360 = load %struct.PGExtras** %.pre-phi107, align 8, !tbaa !30
  %361 = getelementptr inbounds %struct.PGExtras* %360, i64 0, i32 6
  %362 = bitcast i32** %361 to i8**
  %363 = load i8** %362, align 8, !tbaa !41
  %364 = load i32* %15, align 4, !tbaa !7
  %365 = sext i32 %364 to i64
  %366 = shl nsw i64 %365, 2
  %367 = call i64 @llvm.objectsize.i64.p0i8(i8* %359, i1 false)
  %368 = call i8* @__memcpy_chk(i8* %359, i8* %363, i64 %366, i64 %367) #7
  %369 = load %struct.PGExtras** %.pre-phi107, align 8, !tbaa !30
  %370 = getelementptr inbounds %struct.PGExtras* %369, i64 0, i32 7
  %371 = load i32* %370, align 4, !tbaa !42
  %372 = getelementptr inbounds i8* %55, i64 88
  %373 = bitcast i8* %372 to i32*
  store i32 %371, i32* %373, align 4, !tbaa !38
  br label %.loopexit17

; <label>:374                                     ; preds = %IsFullHyperslab.exit
  %375 = load i32* %.pre104, align 4, !tbaa !25
  %376 = icmp eq i32 %375, 0
  %377 = icmp eq i32 %312, 0
  br i1 %376, label %.preheader19, label %.preheader20

.preheader20:                                     ; preds = %374
  br i1 %377, label %.loopexit17, label %.lr.ph42

.lr.ph42:                                         ; preds = %.preheader20
  %378 = load i32** %105, align 8, !tbaa !22
  %379 = load i32** %90, align 8, !tbaa !19
  br label %382

.preheader19:                                     ; preds = %374
  br i1 %377, label %._crit_edge.thread, label %.lr.ph40

.lr.ph40:                                         ; preds = %.preheader19
  %380 = load i32** %100, align 8, !tbaa !21
  %381 = load i32** %95, align 8, !tbaa !20
  br label %395

; <label>:382                                     ; preds = %.lr.ph42, %382
  %vdim.541 = phi i32 [ 0, %.lr.ph42 ], [ %389, %382 ]
  %383 = load i32* %378, align 4, !tbaa !10
  %384 = zext i32 %vdim.541 to i64
  %385 = getelementptr inbounds i32* %378, i64 %384
  store i32 %383, i32* %385, align 4, !tbaa !10
  %386 = getelementptr inbounds i32* %origin, i64 %384
  %387 = load i32* %386, align 4, !tbaa !10
  %388 = getelementptr inbounds i32* %379, i64 %384
  store i32 %387, i32* %388, align 4, !tbaa !10
  %389 = add nuw i32 %vdim.541, 1
  %390 = load i32* %15, align 4, !tbaa !7
  %391 = icmp ult i32 %389, %390
  br i1 %391, label %382, label %.loopexit17

.preheader18:                                     ; preds = %407
  %392 = icmp eq i32 %412, 0
  br i1 %392, label %._crit_edge.thread, label %.lr.ph37

.lr.ph37:                                         ; preds = %.preheader18
  %393 = getelementptr inbounds %struct.cGroup* %vinfo, i64 0, i32 3
  %394 = sext i32 %173 to i64
  br label %414

; <label>:395                                     ; preds = %.lr.ph40, %407
  %vdim.639 = phi i32 [ 0, %.lr.ph40 ], [ %411, %407 ]
  %hdim.638 = phi i32 [ 0, %.lr.ph40 ], [ %hdim.7, %407 ]
  %396 = zext i32 %vdim.639 to i64
  %397 = getelementptr inbounds i32* %origin, i64 %396
  %398 = load i32* %397, align 4, !tbaa !10
  %399 = getelementptr inbounds i32* %380, i64 %396
  %400 = load i32* %399, align 4, !tbaa !10
  %401 = icmp eq i32 %400, 0
  br i1 %401, label %407, label %402

; <label>:402                                     ; preds = %395
  %403 = add i32 %hdim.638, 1
  %404 = zext i32 %hdim.638 to i64
  %405 = getelementptr inbounds i32* %extent, i64 %404
  %406 = load i32* %405, align 4, !tbaa !10
  br label %407

; <label>:407                                     ; preds = %395, %402
  %hdim.7 = phi i32 [ %403, %402 ], [ %hdim.638, %395 ]
  %408 = phi i32 [ %406, %402 ], [ 1, %395 ]
  %409 = add nsw i32 %408, %398
  %410 = getelementptr inbounds i32* %381, i64 %396
  store i32 %409, i32* %410, align 4, !tbaa !10
  %411 = add nuw i32 %vdim.639, 1
  %412 = load i32* %15, align 4, !tbaa !7
  %413 = icmp ult i32 %411, %412
  br i1 %413, label %395, label %.preheader18

; <label>:414                                     ; preds = %.lr.ph37, %456
  %vdim.736 = phi i32 [ 0, %.lr.ph37 ], [ %457, %456 ]
  %415 = load i32* %393, align 4, !tbaa !26
  %416 = call i32 @CCTK_StaggerDirIndex(i32 %vdim.736, i32 %415) #7
  %417 = zext i32 %vdim.736 to i64
  %418 = getelementptr inbounds i32* %origin, i64 %417
  %419 = load i32* %418, align 4, !tbaa !10
  %420 = load %struct.PGExtras** %.pre-phi107, align 8, !tbaa !30
  %421 = getelementptr inbounds %struct.PGExtras* %420, i64 0, i32 3
  %422 = load i32*** %421, align 8, !tbaa !43
  %423 = getelementptr inbounds i32** %422, i64 %394
  %424 = load i32** %423, align 8, !tbaa !8
  %425 = getelementptr inbounds i32* %424, i64 %417
  %426 = load i32* %425, align 4, !tbaa !10
  %427 = sext i32 %416 to i64
  %428 = getelementptr inbounds %struct.PGExtras* %420, i64 0, i32 13, i64 %427, i64 1
  %429 = load i32** %428, align 8, !tbaa !8
  %430 = getelementptr inbounds i32* %429, i64 %417
  %431 = load i32* %430, align 4, !tbaa !10
  %432 = add nsw i32 %431, %426
  %433 = icmp slt i32 %419, %432
  %434 = load i32** %90, align 8, !tbaa !19
  %435 = getelementptr inbounds i32* %434, i64 %417
  br i1 %433, label %436, label %455

; <label>:436                                     ; preds = %414
  store i32 %419, i32* %435, align 4, !tbaa !10
  %437 = load i32* %418, align 4, !tbaa !10
  %438 = load i32* %425, align 4, !tbaa !10
  %439 = getelementptr inbounds %struct.PGExtras* %420, i64 0, i32 13, i64 %427, i64 0
  %440 = load i32** %439, align 8, !tbaa !8
  %441 = getelementptr inbounds i32* %440, i64 %417
  %442 = load i32* %441, align 4, !tbaa !10
  %443 = add nsw i32 %442, %438
  %444 = icmp sgt i32 %443, %437
  br i1 %444, label %445, label %456

; <label>:445                                     ; preds = %436
  %446 = sub nsw i32 %443, %437
  %447 = load i32** %105, align 8, !tbaa !22
  %448 = getelementptr inbounds i32* %447, i64 %417
  %449 = load i32* %448, align 4, !tbaa !10
  %450 = sdiv i32 %446, %449
  %451 = srem i32 %446, %449
  %not. = icmp ne i32 %451, 0
  %452 = zext i1 %not. to i32
  %.6 = add nsw i32 %452, %450
  %453 = mul nsw i32 %.6, %449
  %454 = add nsw i32 %453, %419
  store i32 %454, i32* %435, align 4, !tbaa !10
  br label %456

; <label>:455                                     ; preds = %414
  store i32 -1, i32* %435, align 4, !tbaa !10
  br label %456

; <label>:456                                     ; preds = %455, %445, %436
  %457 = add nuw i32 %vdim.736, 1
  %458 = load i32* %15, align 4, !tbaa !7
  %459 = icmp ult i32 %457, %458
  br i1 %459, label %414, label %._crit_edge

._crit_edge.thread:                               ; preds = %.preheader18, %.preheader19
  %460 = getelementptr inbounds i8* %55, i64 88
  %461 = bitcast i8* %460 to i32*
  store i32 1, i32* %461, align 4, !tbaa !38
  br label %.loopexit17

._crit_edge:                                      ; preds = %456
  %462 = getelementptr inbounds i8* %55, i64 88
  %463 = bitcast i8* %462 to i32*
  store i32 1, i32* %463, align 4, !tbaa !38
  %464 = icmp eq i32 %458, 0
  br i1 %464, label %.loopexit17, label %.lr.ph35

.lr.ph35:                                         ; preds = %._crit_edge
  %465 = getelementptr inbounds %struct.cGroup* %vinfo, i64 0, i32 3
  %466 = sext i32 %173 to i64
  br label %467

; <label>:467                                     ; preds = %.lr.ph35, %563
  %vdim.834 = phi i32 [ 0, %.lr.ph35 ], [ %564, %563 ]
  %hdim.833 = phi i32 [ 0, %.lr.ph35 ], [ %hdim.9, %563 ]
  %468 = load i32* %465, align 4, !tbaa !26
  %469 = call i32 @CCTK_StaggerDirIndex(i32 %vdim.834, i32 %468) #7
  %470 = zext i32 %vdim.834 to i64
  %471 = load i32** %90, align 8, !tbaa !19
  %472 = getelementptr inbounds i32* %471, i64 %470
  %473 = load i32* %472, align 4, !tbaa !10
  %474 = icmp sgt i32 %473, -1
  %475 = load %struct.PGExtras** %.pre-phi107, align 8, !tbaa !30
  %476 = getelementptr inbounds %struct.PGExtras* %475, i64 0, i32 3
  %477 = load i32*** %476, align 8, !tbaa !43
  %478 = getelementptr inbounds i32** %477, i64 %466
  %479 = load i32** %478, align 8, !tbaa !8
  br i1 %474, label %480, label %._crit_edge95

._crit_edge95:                                    ; preds = %467
  %.pre99 = sext i32 %469 to i64
  br label %494

; <label>:480                                     ; preds = %467
  %481 = getelementptr inbounds i32* %479, i64 %470
  %482 = load i32* %481, align 4, !tbaa !10
  %483 = sext i32 %469 to i64
  %484 = getelementptr inbounds %struct.PGExtras* %475, i64 0, i32 13, i64 %483, i64 1
  %485 = load i32** %484, align 8, !tbaa !8
  %486 = getelementptr inbounds i32* %485, i64 %470
  %487 = load i32* %486, align 4, !tbaa !10
  %488 = add nsw i32 %487, %482
  %489 = icmp slt i32 %473, %488
  br i1 %489, label %490, label %494

; <label>:490                                     ; preds = %480
  %491 = sub nsw i32 %473, %482
  %492 = load i32** %80, align 8, !tbaa !17
  %493 = getelementptr inbounds i32* %492, i64 %470
  store i32 %491, i32* %493, align 4, !tbaa !10
  br label %497

; <label>:494                                     ; preds = %._crit_edge95, %480
  %.pre91.pre-phi = phi i64 [ %.pre99, %._crit_edge95 ], [ %483, %480 ]
  %495 = load i32** %80, align 8, !tbaa !17
  %496 = getelementptr inbounds i32* %495, i64 %470
  store i32 -1, i32* %496, align 4, !tbaa !10
  br label %497

; <label>:497                                     ; preds = %494, %490
  %498 = phi i32* [ %495, %494 ], [ %492, %490 ]
  %.pre-phi92 = phi i64 [ %.pre91.pre-phi, %494 ], [ %483, %490 ]
  %499 = load i32** %95, align 8, !tbaa !20
  %500 = getelementptr inbounds i32* %499, i64 %470
  %501 = load i32* %500, align 4, !tbaa !10
  %502 = getelementptr inbounds i32* %479, i64 %470
  %503 = load i32* %502, align 4, !tbaa !10
  %504 = getelementptr inbounds %struct.PGExtras* %475, i64 0, i32 13, i64 %.pre-phi92, i64 0
  %505 = load i32** %504, align 8, !tbaa !8
  %506 = getelementptr inbounds i32* %505, i64 %470
  %507 = load i32* %506, align 4, !tbaa !10
  %508 = add nsw i32 %507, %503
  %509 = icmp sgt i32 %501, %508
  br i1 %509, label %513, label %.thread

.thread:                                          ; preds = %497
  %510 = load i32** %85, align 8, !tbaa !18
  %511 = getelementptr inbounds i32* %510, i64 %470
  store i32 -1, i32* %511, align 4, !tbaa !10
  %512 = getelementptr inbounds i32* %510, i64 %470
  br label %._crit_edge100

; <label>:513                                     ; preds = %497
  %514 = getelementptr inbounds %struct.PGExtras* %475, i64 0, i32 13, i64 %.pre-phi92, i64 1
  %515 = load i32** %514, align 8, !tbaa !8
  %516 = getelementptr inbounds i32* %515, i64 %470
  %517 = load i32* %516, align 4, !tbaa !10
  %518 = sub nsw i32 %501, %503
  %519 = icmp slt i32 %517, %518
  %.7 = select i1 %519, i32 %517, i32 %518
  %520 = load i32** %85, align 8, !tbaa !18
  %521 = getelementptr inbounds i32* %520, i64 %470
  store i32 %.7, i32* %521, align 4, !tbaa !10
  %522 = getelementptr inbounds i32* %520, i64 %470
  %523 = icmp slt i32 %.7, 0
  br i1 %523, label %._crit_edge100, label %525

._crit_edge100:                                   ; preds = %.thread, %513
  %524 = phi i32* [ %512, %.thread ], [ %522, %513 ]
  %.pre108 = getelementptr inbounds i32* %498, i64 %470
  br label %529

; <label>:525                                     ; preds = %513
  %526 = getelementptr inbounds i32* %498, i64 %470
  %527 = load i32* %526, align 4, !tbaa !10
  %528 = icmp slt i32 %527, 0
  br i1 %528, label %529, label %532

; <label>:529                                     ; preds = %._crit_edge100, %525
  %530 = phi i32* [ %524, %._crit_edge100 ], [ %522, %525 ]
  %.pre-phi109 = phi i32* [ %.pre108, %._crit_edge100 ], [ %526, %525 ]
  store i32 0, i32* %463, align 4, !tbaa !38
  %531 = load i32* %.pre-phi109, align 4, !tbaa !10
  store i32 %531, i32* %530, align 4, !tbaa !10
  br label %532

; <label>:532                                     ; preds = %529, %525
  %533 = phi i32* [ %530, %529 ], [ %522, %525 ]
  %534 = phi i32 [ %531, %529 ], [ %.7, %525 ]
  %535 = load i32** %100, align 8, !tbaa !21
  %536 = getelementptr inbounds i32* %535, i64 %470
  %537 = load i32* %536, align 4, !tbaa !10
  %538 = icmp eq i32 %537, 0
  br i1 %538, label %563, label %539

; <label>:539                                     ; preds = %532
  %540 = getelementptr inbounds i32* %498, i64 %470
  %541 = load i32* %540, align 4, !tbaa !10
  %542 = sub nsw i32 %534, %541
  %543 = load i32** %105, align 8, !tbaa !22
  %544 = getelementptr inbounds i32* %543, i64 %470
  %545 = load i32* %544, align 4, !tbaa !10
  %546 = sdiv i32 %542, %545
  %547 = zext i32 %hdim.833 to i64
  %548 = load i32** %109, align 8, !tbaa !23
  %549 = getelementptr inbounds i32* %548, i64 %547
  store i32 %546, i32* %549, align 4, !tbaa !10
  %550 = load i32* %533, align 4, !tbaa !10
  %551 = load i32* %540, align 4, !tbaa !10
  %552 = sub nsw i32 %550, %551
  %553 = load i32* %544, align 4, !tbaa !10
  %554 = srem i32 %552, %553
  %555 = icmp eq i32 %554, 0
  br i1 %555, label %558, label %556

; <label>:556                                     ; preds = %539
  %557 = add nsw i32 %546, 1
  store i32 %557, i32* %549, align 4, !tbaa !10
  br label %558

; <label>:558                                     ; preds = %539, %556
  %559 = phi i32 [ %546, %539 ], [ %557, %556 ]
  %560 = load i32* %463, align 4, !tbaa !38
  %561 = mul i32 %560, %559
  store i32 %561, i32* %463, align 4, !tbaa !38
  %562 = add i32 %hdim.833, 1
  br label %563

; <label>:563                                     ; preds = %532, %558
  %hdim.9 = phi i32 [ %562, %558 ], [ %hdim.833, %532 ]
  %564 = add nuw i32 %vdim.834, 1
  %565 = load i32* %15, align 4, !tbaa !7
  %566 = icmp ult i32 %564, %565
  br i1 %566, label %467, label %.loopexit17

.loopexit17:                                      ; preds = %382, %563, %.preheader20, %._crit_edge, %._crit_edge.thread, %351
  %567 = load %struct.hslab_mapping_t** @mapping_list, align 8, !tbaa !8
  %568 = icmp eq %struct.hslab_mapping_t* %567, null
  %569 = ptrtoint %struct.hslab_mapping_t* %567 to i64
  br i1 %568, label %.preheader, label %570

; <label>:570                                     ; preds = %.loopexit17
  %571 = getelementptr inbounds %struct.hslab_mapping_t* %567, i64 0, i32 17
  %572 = bitcast %struct.hslab_mapping_t** %571 to i8**
  store i8* %55, i8** %572, align 8, !tbaa !44
  %.pre93 = load i64* bitcast (%struct.hslab_mapping_t** @mapping_list to i64*), align 8, !tbaa !8
  br label %.preheader

.preheader:                                       ; preds = %570, %.loopexit17
  %573 = phi i64 [ %569, %.loopexit17 ], [ %.pre93, %570 ]
  %574 = getelementptr inbounds i8* %55, i64 112
  %575 = bitcast i8* %574 to %struct.hslab_mapping_t**
  store %struct.hslab_mapping_t* null, %struct.hslab_mapping_t** %575, align 8, !tbaa !44
  %576 = getelementptr inbounds i8* %55, i64 120
  %577 = bitcast i8* %576 to i64*
  store i64 %573, i64* %577, align 8, !tbaa !45
  store i8* %55, i8** bitcast (%struct.hslab_mapping_t** @mapping_list to i8**), align 8, !tbaa !8
  %578 = load i32* @nmapping_list, align 4, !tbaa !10
  %579 = add nsw i32 %578, 1
  store i32 %579, i32* @nmapping_list, align 4, !tbaa !10
  %580 = bitcast i8* %55 to i32*
  store i32 %578, i32* %580, align 4, !tbaa !46
  %581 = load i32* %72, align 4, !tbaa !13
  %582 = icmp eq i32 %581, 0
  br i1 %582, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %583 = load i32** %113, align 8, !tbaa !24
  br label %584

; <label>:584                                     ; preds = %.lr.ph, %584
  %hdim.1032 = phi i32 [ 0, %.lr.ph ], [ %589, %584 ]
  %585 = zext i32 %hdim.1032 to i64
  %586 = getelementptr inbounds i32* %583, i64 %585
  %587 = load i32* %586, align 4, !tbaa !10
  %588 = getelementptr inbounds i32* %hsize, i64 %585
  store i32 %587, i32* %588, align 4, !tbaa !10
  %589 = add nuw i32 %hdim.1032, 1
  %590 = icmp ult i32 %589, %581
  br i1 %590, label %584, label %.loopexit

.loopexit:                                        ; preds = %584, %.preheader, %225, %206, %163, %138, %130, %._crit_edge63.thread, %.thread13
  %.0 = phi i32 [ %retval.314, %.thread13 ], [ -7, %._crit_edge63.thread ], [ -7, %130 ], [ -7, %138 ], [ -8, %163 ], [ -8, %206 ], [ -8, %225 ], [ %578, %.preheader ], [ %578, %584 ]
  ret i32 %.0
}

; Function Attrs: optsize
declare i32 @CCTK_Warn(i32, i32, i8*, i8*, i8*) #2

; Function Attrs: optsize
declare i32 @CCTK_GroupData(i32, %struct.cGroup*) #2

; Function Attrs: optsize
declare i32 @CCTK_GroupIndexFromVarI(i32) #2

; Function Attrs: optsize
declare %struct.PGH* @PUGH_pGH(%struct.cGH*) #2

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i64) #3

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #3

; Function Attrs: optsize
declare i32 @CCTK_VWarn(i32, i32, i8*, i8*, i8*, ...) #2

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #4

; Function Attrs: nounwind optsize
declare i8* @__memset_chk(i8*, i32, i64, i64) #3

; Function Attrs: nounwind readnone
declare i64 @llvm.objectsize.i64.p0i8(i8*, i1) #5

; Function Attrs: nounwind optsize
declare i8* @__memcpy_chk(i8*, i8*, i64, i64) #3

; Function Attrs: optsize
declare i32 @CCTK_StaggerDirIndex(i32, i32) #2

; Function Attrs: nounwind optsize ssp uwtable
define i32 @Hyperslab_FreeMapping(i32 %mapping_handle) #1 {
  %mapping.02 = load %struct.hslab_mapping_t** @mapping_list, align 8
  %1 = icmp eq %struct.hslab_mapping_t* %mapping.02, null
  br i1 %1, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %0, %31
  %mapping.03 = phi %struct.hslab_mapping_t* [ %mapping.0, %31 ], [ %mapping.02, %0 ]
  %2 = getelementptr inbounds %struct.hslab_mapping_t* %mapping.03, i64 0, i32 0
  %3 = load i32* %2, align 4, !tbaa !46
  %4 = icmp eq i32 %3, %mapping_handle
  br i1 %4, label %5, label %31

; <label>:5                                       ; preds = %.lr.ph
  %6 = icmp eq %struct.hslab_mapping_t* %mapping.03, %mapping.02
  br i1 %6, label %7, label %11

; <label>:7                                       ; preds = %5
  %8 = getelementptr inbounds %struct.hslab_mapping_t* %mapping.02, i64 0, i32 18
  %9 = bitcast %struct.hslab_mapping_t** %8 to i64*
  %10 = load i64* %9, align 8, !tbaa !45
  store i64 %10, i64* bitcast (%struct.hslab_mapping_t** @mapping_list to i64*), align 8, !tbaa !8
  br label %26

; <label>:11                                      ; preds = %5
  %12 = getelementptr inbounds %struct.hslab_mapping_t* %mapping.03, i64 0, i32 18
  %13 = load %struct.hslab_mapping_t** %12, align 8, !tbaa !45
  %14 = icmp eq %struct.hslab_mapping_t* %13, null
  %15 = ptrtoint %struct.hslab_mapping_t* %13 to i64
  %.pre = getelementptr inbounds %struct.hslab_mapping_t* %mapping.03, i64 0, i32 17
  br i1 %14, label %._crit_edge, label %16

; <label>:16                                      ; preds = %11
  %17 = bitcast %struct.hslab_mapping_t** %.pre to i64*
  %18 = load i64* %17, align 8, !tbaa !44
  %19 = getelementptr inbounds %struct.hslab_mapping_t* %13, i64 0, i32 17
  %20 = bitcast %struct.hslab_mapping_t** %19 to i64*
  store i64 %18, i64* %20, align 8, !tbaa !44
  br label %._crit_edge

._crit_edge:                                      ; preds = %11, %16
  %21 = load %struct.hslab_mapping_t** %.pre, align 8, !tbaa !44
  %22 = icmp eq %struct.hslab_mapping_t* %21, null
  br i1 %22, label %26, label %23

; <label>:23                                      ; preds = %._crit_edge
  %24 = getelementptr inbounds %struct.hslab_mapping_t* %21, i64 0, i32 18
  %25 = bitcast %struct.hslab_mapping_t** %24 to i64*
  store i64 %15, i64* %25, align 8, !tbaa !45
  br label %26

; <label>:26                                      ; preds = %._crit_edge, %23, %7
  %27 = getelementptr inbounds %struct.hslab_mapping_t* %mapping.03, i64 0, i32 4
  %28 = bitcast i32** %27 to i8**
  %29 = load i8** %28, align 8, !tbaa !11
  tail call void @free(i8* %29) #8
  %30 = bitcast %struct.hslab_mapping_t* %mapping.03 to i8*
  tail call void @free(i8* %30) #8
  br label %.loopexit

; <label>:31                                      ; preds = %.lr.ph
  %32 = getelementptr inbounds %struct.hslab_mapping_t* %mapping.03, i64 0, i32 18
  %mapping.0 = load %struct.hslab_mapping_t** %32, align 8
  %33 = icmp eq %struct.hslab_mapping_t* %mapping.0, null
  br i1 %33, label %.loopexit, label %.lr.ph

.loopexit:                                        ; preds = %31, %0, %26
  %.0 = phi i32 [ 0, %26 ], [ -1, %0 ], [ -1, %31 ]
  ret i32 %.0
}

; Function Attrs: nounwind optsize readonly ssp uwtable
define %struct.hslab_mapping_t* @PUGHSlabi_GetMapping(i32 %mapping_handle) #6 {
  %mapping.01 = load %struct.hslab_mapping_t** @mapping_list, align 8
  %1 = icmp eq %struct.hslab_mapping_t* %mapping.01, null
  br i1 %1, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %0, %5
  %mapping.02 = phi %struct.hslab_mapping_t* [ %mapping.0, %5 ], [ %mapping.01, %0 ]
  %2 = getelementptr inbounds %struct.hslab_mapping_t* %mapping.02, i64 0, i32 0
  %3 = load i32* %2, align 4, !tbaa !46
  %4 = icmp eq i32 %3, %mapping_handle
  br i1 %4, label %.critedge, label %5

; <label>:5                                       ; preds = %.lr.ph
  %6 = getelementptr inbounds %struct.hslab_mapping_t* %mapping.02, i64 0, i32 18
  %mapping.0 = load %struct.hslab_mapping_t** %6, align 8
  %7 = icmp eq %struct.hslab_mapping_t* %mapping.0, null
  br i1 %7, label %.critedge, label %.lr.ph

.critedge:                                        ; preds = %5, %.lr.ph, %0
  %mapping.0.lcssa = phi %struct.hslab_mapping_t* [ null, %0 ], [ null, %5 ], [ %mapping.02, %.lr.ph ]
  ret %struct.hslab_mapping_t* %mapping.0.lcssa
}

attributes #0 = { nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readnone }
attributes #6 = { nounwind optsize readonly ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind optsize }
attributes #8 = { optsize }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!2 = !{!3, !4, i64 0}
!3 = !{!"", !4, i64 0, !4, i64 4, !4, i64 8, !4, i64 12, !4, i64 16, !4, i64 20, !4, i64 24, !4, i64 28}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!3, !4, i64 16}
!8 = !{!9, !9, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!4, !4, i64 0}
!11 = !{!12, !9, i64 16}
!12 = !{!"hslab_mapping_t", !4, i64 0, !4, i64 4, !4, i64 8, !4, i64 12, !9, i64 16, !9, i64 24, !9, i64 32, !9, i64 40, !9, i64 48, !9, i64 56, !9, i64 64, !9, i64 72, !9, i64 80, !4, i64 88, !4, i64 92, !4, i64 96, !9, i64 104, !9, i64 112, !9, i64 120, !3, i64 128}
!13 = !{!12, !4, i64 8}
!14 = !{i64 0, i64 4, !10, i64 4, i64 4, !10, i64 8, i64 4, !10, i64 12, i64 4, !10, i64 16, i64 4, !10, i64 20, i64 4, !10, i64 24, i64 4, !10, i64 28, i64 4, !10}
!15 = !{!12, !4, i64 4}
!16 = !{!12, !9, i64 104}
!17 = !{!12, !9, i64 24}
!18 = !{!12, !9, i64 32}
!19 = !{!12, !9, i64 40}
!20 = !{!12, !9, i64 48}
!21 = !{!12, !9, i64 56}
!22 = !{!12, !9, i64 64}
!23 = !{!12, !9, i64 80}
!24 = !{!12, !9, i64 72}
!25 = !{!12, !4, i64 96}
!26 = !{!3, !4, i64 12}
!27 = !{!28, !9, i64 32}
!28 = !{!"PGH", !9, i64 0, !4, i64 8, !4, i64 12, !4, i64 16, !4, i64 20, !4, i64 24, !4, i64 28, !9, i64 32, !4, i64 40, !9, i64 48, !4, i64 56, !4, i64 60, !29, i64 64, !29, i64 72, !29, i64 80, !29, i64 88, !4, i64 96, !4, i64 100, !4, i64 104, !4, i64 108, !4, i64 112, !9, i64 120, !9, i64 128, !9, i64 136}
!29 = !{!"double", !5, i64 0}
!30 = !{!31, !9, i64 56}
!31 = !{!"PGA", !9, i64 0, !4, i64 8, !4, i64 12, !9, i64 16, !9, i64 24, !4, i64 32, !4, i64 36, !9, i64 40, !4, i64 48, !4, i64 52, !9, i64 56, !9, i64 64, !9, i64 72, !9, i64 80, !4, i64 88, !4, i64 92, !9, i64 96}
!32 = !{!33, !9, i64 8}
!33 = !{!"PGExtras", !4, i64 0, !9, i64 8, !29, i64 16, !9, i64 24, !9, i64 32, !9, i64 40, !9, i64 48, !4, i64 56, !9, i64 64, !9, i64 72, !9, i64 80, !9, i64 88, !9, i64 96, !5, i64 104, !5, i64 168, !5, i64 232}
!34 = !{!31, !9, i64 64}
!35 = !{!36, !9, i64 24}
!36 = !{!"PConnectivity", !4, i64 0, !9, i64 8, !9, i64 16, !9, i64 24}
!37 = !{!33, !9, i64 96}
!38 = !{!12, !4, i64 88}
!39 = !{!33, !4, i64 0}
!40 = !{!12, !4, i64 92}
!41 = !{!33, !9, i64 48}
!42 = !{!33, !4, i64 56}
!43 = !{!33, !9, i64 24}
!44 = !{!12, !9, i64 112}
!45 = !{!12, !9, i64 120}
!46 = !{!12, !4, i64 0}
