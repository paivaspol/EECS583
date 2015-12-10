; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/GetHyperslab.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.cGH = type { i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, double, double*, double*, i32*, i32*, i32, i32*, double, i8***, i8**, %struct.cGHGroupData* }
%struct.cGHGroupData = type { i8, i8 }
%struct.cGroup = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.hslab_mapping_t = type { i32, i32, i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32, i32, i32, void (i8*, i8*, i32, i32, i32)*, %struct.hslab_mapping_t*, %struct.hslab_mapping_t*, %struct.cGroup }
%struct.PGH = type { i8*, i32, i32, i32, i32, i32, i32, i8***, i32, i32*, i32, i32, double, double, double, double, i32, i32, i32, i32, i32, %struct.PGExtras**, %struct.PConnectivity**, i8* }
%struct.PGExtras = type { i32, i32*, double, i32**, i32**, i32*, i32*, i32, i32*, i32**, i32*, i32*, i32*, [4 x [2 x i32*]], [4 x [2 x i32**]], [4 x [2 x i32**]] }
%struct.PConnectivity = type { i32, i32*, i32**, i32* }
%struct.PGA = type { i8*, i32, i32, i8*, i8*, i32, i32, i8*, i32, i32, %struct.PGExtras*, %struct.PConnectivity*, %struct.PComm*, %struct.PComm*, i32, i32, %struct.PGA* }
%struct.PComm = type { i32*, i8**, i8**, i32, i32*, i32, i32, i32 }

@.str = private unnamed_addr constant [95 x i8] c"$Header: /cactus/CactusPUGH/PUGHSlab/src/GetHyperslab.c,v 1.3 2001/12/16 21:43:05 tradke Exp $\00", align 1
@.str1 = private unnamed_addr constant [54 x i8] c"NULL pointer(s) passed for GH/mapping/hdata arguments\00", align 1
@.str2 = private unnamed_addr constant [29 x i8] c"Invalid variable index given\00", align 1
@.str3 = private unnamed_addr constant [24 x i8] c"Invalid timelevel given\00", align 1
@.str4 = private unnamed_addr constant [75 x i8] c"Group data for template variable in mapping and given variable don't match\00", align 1
@.str5 = private unnamed_addr constant [83 x i8] c"../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/GetHyperslab.c\00", align 1
@.str6 = private unnamed_addr constant [9 x i8] c"PUGHSlab\00", align 1
@.str7 = private unnamed_addr constant [22 x i8] c"GetLocalHyperslab: %s\00", align 1
@.str8 = private unnamed_addr constant [67 x i8] c"No predefined PUGHSlab routine available to convert '%s' into '%s'\00", align 1
@.str9 = private unnamed_addr constant [106 x i8] c"Datatype conversion routine supplied but no datatype conversion requested. Ignoring conversion routine...\00", align 1
@CCTK_MyProc = external global i32 (%struct.cGH*)*
@CCTK_nProcs = external global i32 (%struct.cGH*)*

; Function Attrs: nounwind optsize readnone ssp uwtable
define i8* @CCTKi_version_CactusPUGH_PUGHSlab_GetHyperslab_c() #0 {
  ret i8* getelementptr inbounds ([95 x i8]* @.str, i64 0, i64 0)
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @Hyperslab_Get(%struct.cGH* %GH, i32 %mapping_handle, i32 %vindex, i32 %timelevel, i32 %hdatatype, i8* %hdata) #1 {
  %vinfo.i = alloca %struct.cGroup, align 4
  %1 = tail call %struct.hslab_mapping_t* @PUGHSlabi_GetMapping(i32 %mapping_handle) #6
  %2 = icmp eq %struct.hslab_mapping_t* %1, null
  br i1 %2, label %389, label %3

; <label>:3                                       ; preds = %0
  %4 = bitcast %struct.cGroup* %vinfo.i to i8*
  call void @llvm.lifetime.start(i64 32, i8* %4)
  %5 = icmp eq %struct.cGH* %GH, null
  br i1 %5, label %45, label %6

; <label>:6                                       ; preds = %3
  %7 = getelementptr inbounds %struct.hslab_mapping_t* %1, i64 0, i32 13
  %8 = load i32* %7, align 4, !tbaa !2
  %9 = icmp eq i32 %8, 0
  %10 = icmp ne i8* %hdata, null
  %or.cond3.i = or i1 %10, %9
  br i1 %or.cond3.i, label %11, label %45

; <label>:11                                      ; preds = %6
  %12 = tail call i32 @CCTK_GroupIndexFromVarI(i32 %vindex) #6
  %13 = call i32 @CCTK_GroupData(i32 %12, %struct.cGroup* %vinfo.i) #6
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %45, label %15

; <label>:15                                      ; preds = %11
  %16 = icmp slt i32 %timelevel, 0
  br i1 %16, label %45, label %17

; <label>:17                                      ; preds = %15
  %18 = getelementptr inbounds %struct.cGroup* %vinfo.i, i64 0, i32 6
  %19 = load i32* %18, align 4, !tbaa !9
  %20 = icmp sgt i32 %19, %timelevel
  br i1 %20, label %21, label %45

; <label>:21                                      ; preds = %17
  %22 = getelementptr inbounds %struct.cGroup* %vinfo.i, i64 0, i32 0
  %23 = load i32* %22, align 4, !tbaa !10
  %24 = getelementptr inbounds %struct.hslab_mapping_t* %1, i64 0, i32 19, i32 0
  %25 = load i32* %24, align 4, !tbaa !11
  %26 = icmp eq i32 %23, %25
  br i1 %26, label %27, label %45

; <label>:27                                      ; preds = %21
  %28 = getelementptr inbounds %struct.cGroup* %vinfo.i, i64 0, i32 2
  %29 = load i32* %28, align 4, !tbaa !12
  %30 = getelementptr inbounds %struct.hslab_mapping_t* %1, i64 0, i32 19, i32 2
  %31 = load i32* %30, align 4, !tbaa !13
  %32 = icmp eq i32 %29, %31
  br i1 %32, label %33, label %45

; <label>:33                                      ; preds = %27
  %34 = getelementptr inbounds %struct.cGroup* %vinfo.i, i64 0, i32 4
  %35 = load i32* %34, align 4, !tbaa !14
  %36 = getelementptr inbounds %struct.hslab_mapping_t* %1, i64 0, i32 19, i32 4
  %37 = load i32* %36, align 4, !tbaa !15
  %38 = icmp eq i32 %35, %37
  br i1 %38, label %39, label %45

; <label>:39                                      ; preds = %33
  %40 = getelementptr inbounds %struct.cGroup* %vinfo.i, i64 0, i32 3
  %41 = load i32* %40, align 4, !tbaa !16
  %42 = getelementptr inbounds %struct.hslab_mapping_t* %1, i64 0, i32 19, i32 3
  %43 = load i32* %42, align 4, !tbaa !17
  %44 = icmp eq i32 %41, %43
  br i1 %44, label %47, label %45

; <label>:45                                      ; preds = %3, %39, %33, %27, %21, %17, %15, %11, %6
  %errormsg.0.ph.i = phi i8* [ getelementptr inbounds ([24 x i8]* @.str3, i64 0, i64 0), %15 ], [ getelementptr inbounds ([24 x i8]* @.str3, i64 0, i64 0), %17 ], [ getelementptr inbounds ([29 x i8]* @.str2, i64 0, i64 0), %11 ], [ getelementptr inbounds ([54 x i8]* @.str1, i64 0, i64 0), %3 ], [ getelementptr inbounds ([54 x i8]* @.str1, i64 0, i64 0), %6 ], [ getelementptr inbounds ([75 x i8]* @.str4, i64 0, i64 0), %39 ], [ getelementptr inbounds ([75 x i8]* @.str4, i64 0, i64 0), %33 ], [ getelementptr inbounds ([75 x i8]* @.str4, i64 0, i64 0), %27 ], [ getelementptr inbounds ([75 x i8]* @.str4, i64 0, i64 0), %21 ]
  %46 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 262, i8* getelementptr inbounds ([83 x i8]* @.str5, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str6, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8]* @.str7, i64 0, i64 0), i8* %errormsg.0.ph.i) #6
  br label %GetLocalHyperslab.exit

; <label>:47                                      ; preds = %39
  %48 = load i32* %7, align 4, !tbaa !2
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %GetLocalHyperslab.exit, label %50

; <label>:50                                      ; preds = %47
  %51 = getelementptr inbounds %struct.hslab_mapping_t* %1, i64 0, i32 15
  %52 = load i32* %51, align 4, !tbaa !18
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %179, label %54

; <label>:54                                      ; preds = %50
  %55 = call %struct.PGH* @PUGH_pGH(%struct.cGH* %GH) #6
  %56 = sext i32 %timelevel to i64
  %57 = sext i32 %vindex to i64
  %58 = getelementptr inbounds %struct.PGH* %55, i64 0, i32 7
  %59 = load i8**** %58, align 8, !tbaa !19
  %60 = getelementptr inbounds i8*** %59, i64 %57
  %61 = load i8*** %60, align 8, !tbaa !22
  %62 = getelementptr inbounds i8** %61, i64 %56
  %63 = bitcast i8** %62 to %struct.PGA**
  %64 = load %struct.PGA** %63, align 8, !tbaa !22
  %65 = getelementptr inbounds %struct.PGA* %64, i64 0, i32 10
  %66 = load %struct.PGExtras** %65, align 8, !tbaa !23
  %67 = call i32 @CCTK_VarTypeI(i32 %vindex) #6
  %68 = icmp slt i32 %hdatatype, 0
  %.hdatatype.i.i = select i1 %68, i32 %67, i32 %hdatatype
  %69 = call i32 @CCTK_VarTypeSize(i32 %.hdatatype.i.i) #6
  %70 = call i32 @CCTK_VarTypeSize(i32 %67) #6
  %71 = call i8* @CCTK_VarDataPtrI(%struct.cGH* %GH, i32 %timelevel, i32 %vindex) #6
  %72 = load i32 (%struct.cGH*)** @CCTK_MyProc, align 8, !tbaa !22
  %73 = call i32 %72(%struct.cGH* %GH) #6
  %74 = load i32 (%struct.cGH*)** @CCTK_nProcs, align 8, !tbaa !22
  %75 = call i32 %74(%struct.cGH* %GH) #6
  %76 = icmp eq i32 %75, 1
  %.phi.trans.insert.i.i = getelementptr inbounds %struct.hslab_mapping_t* %1, i64 0, i32 11
  %.pre.i.i = load i32** %.phi.trans.insert.i.i, align 8, !tbaa !25
  br i1 %76, label %._crit_edge8.i.i, label %77

; <label>:77                                      ; preds = %54
  %78 = load i32* %.pre.i.i, align 4, !tbaa !26
  %79 = mul nsw i32 %78, %69
  %80 = sext i32 %79 to i64
  %81 = call i8* @malloc(i64 %80) #6
  br label %._crit_edge8.i.i

._crit_edge8.i.i:                                 ; preds = %77, %54
  %local_hdata.0.i.i = phi i8* [ %81, %77 ], [ %hdata, %54 ]
  %82 = getelementptr inbounds %struct.hslab_mapping_t* %1, i64 0, i32 7
  %83 = load i32** %82, align 8, !tbaa !27
  %84 = sext i32 %73 to i64
  %85 = getelementptr inbounds %struct.PGExtras* %66, i64 0, i32 3
  %86 = load i32*** %85, align 8, !tbaa !28
  %87 = getelementptr inbounds i32** %86, i64 %84
  %88 = load i32** %87, align 8, !tbaa !22
  %89 = load i32* %.pre.i.i, align 4, !tbaa !26
  %90 = icmp sgt i32 %89, 0
  br i1 %90, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %._crit_edge8.i.i
  %91 = getelementptr inbounds i32* %83, i64 2
  %92 = load i32* %91, align 4, !tbaa !26
  %93 = getelementptr inbounds i32* %88, i64 2
  %94 = load i32* %93, align 4, !tbaa !26
  %95 = sub nsw i32 %92, %94
  %96 = getelementptr inbounds i32* %83, i64 1
  %97 = load i32* %96, align 4, !tbaa !26
  %98 = getelementptr inbounds i32* %88, i64 1
  %99 = load i32* %98, align 4, !tbaa !26
  %100 = sub nsw i32 %97, %99
  %101 = load i32* %83, align 4, !tbaa !26
  %102 = load i32* %88, align 4, !tbaa !26
  %103 = sub nsw i32 %101, %102
  %104 = getelementptr inbounds %struct.PGExtras* %66, i64 0, i32 13, i64 0, i64 0
  %105 = getelementptr inbounds %struct.hslab_mapping_t* %1, i64 0, i32 10
  %106 = getelementptr inbounds %struct.PGExtras* %66, i64 0, i32 13, i64 0, i64 1
  %107 = getelementptr inbounds %struct.PGExtras* %66, i64 0, i32 11
  %108 = icmp eq i32 %67, %.hdatatype.i.i
  %109 = sext i32 %69 to i64
  %110 = getelementptr inbounds %struct.hslab_mapping_t* %1, i64 0, i32 16
  br label %111

; <label>:111                                     ; preds = %160, %.lr.ph.i.i
  %112 = phi i32 [ %89, %.lr.ph.i.i ], [ %161, %160 ]
  %i.06.i.i = phi i32 [ %103, %.lr.ph.i.i ], [ %164, %160 ]
  %local_hdata.15.i.i = phi i8* [ %local_hdata.0.i.i, %.lr.ph.i.i ], [ %local_hdata.2.i.i, %160 ]
  %j.04.i.i = phi i32 [ %100, %.lr.ph.i.i ], [ %167, %160 ]
  %k.03.i.i = phi i32 [ %95, %.lr.ph.i.i ], [ %170, %160 ]
  %local_npoints.02.i.i = phi i32 [ 0, %.lr.ph.i.i ], [ %local_npoints.1.i.i, %160 ]
  %npoints.01.i.i = phi i32 [ 0, %.lr.ph.i.i ], [ %171, %160 ]
  %113 = load i32** %104, align 8, !tbaa !22
  %114 = load i32* %113, align 4, !tbaa !26
  %115 = icmp slt i32 %i.06.i.i, %114
  br i1 %115, label %160, label %116

; <label>:116                                     ; preds = %111
  %117 = load i32** %106, align 8, !tbaa !22
  %118 = load i32* %117, align 4, !tbaa !26
  %119 = icmp slt i32 %i.06.i.i, %118
  br i1 %119, label %120, label %160

; <label>:120                                     ; preds = %116
  %121 = getelementptr inbounds i32* %113, i64 1
  %122 = load i32* %121, align 4, !tbaa !26
  %123 = icmp slt i32 %j.04.i.i, %122
  br i1 %123, label %160, label %124

; <label>:124                                     ; preds = %120
  %125 = getelementptr inbounds i32* %117, i64 1
  %126 = load i32* %125, align 4, !tbaa !26
  %127 = icmp slt i32 %j.04.i.i, %126
  br i1 %127, label %128, label %160

; <label>:128                                     ; preds = %124
  %129 = getelementptr inbounds i32* %113, i64 2
  %130 = load i32* %129, align 4, !tbaa !26
  %131 = icmp slt i32 %k.03.i.i, %130
  br i1 %131, label %160, label %132

; <label>:132                                     ; preds = %128
  %133 = getelementptr inbounds i32* %117, i64 2
  %134 = load i32* %133, align 4, !tbaa !26
  %135 = icmp slt i32 %k.03.i.i, %134
  br i1 %135, label %136, label %160

; <label>:136                                     ; preds = %132
  %137 = load i32** %107, align 8, !tbaa !30
  %138 = getelementptr inbounds i32* %137, i64 1
  %139 = load i32* %138, align 4, !tbaa !26
  %140 = mul nsw i32 %139, %j.04.i.i
  %141 = add nsw i32 %140, %i.06.i.i
  %142 = getelementptr inbounds i32* %137, i64 2
  %143 = load i32* %142, align 4, !tbaa !26
  %144 = mul nsw i32 %143, %k.03.i.i
  %145 = add nsw i32 %141, %144
  br i1 %108, label %151, label %146

; <label>:146                                     ; preds = %136
  %147 = load void (i8*, i8*, i32, i32, i32)** %110, align 8, !tbaa !31
  %148 = mul nsw i32 %145, %70
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i8* %71, i64 %149
  call void %147(i8* %150, i8* %local_hdata.15.i.i, i32 1, i32 1, i32 1) #6
  br label %157

; <label>:151                                     ; preds = %136
  %152 = mul nsw i32 %145, %70
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i8* %71, i64 %153
  %155 = call i64 @llvm.objectsize.i64.p0i8(i8* %local_hdata.15.i.i, i1 false) #5
  %156 = call i8* @__memcpy_chk(i8* %local_hdata.15.i.i, i8* %154, i64 %109, i64 %155) #6
  br label %157

; <label>:157                                     ; preds = %151, %146
  %158 = getelementptr inbounds i8* %local_hdata.15.i.i, i64 %109
  %159 = add nsw i32 %local_npoints.02.i.i, 1
  %.pre9.i.i = load i32** %.phi.trans.insert.i.i, align 8, !tbaa !25
  %.pre10.i.i = load i32* %.pre9.i.i, align 4, !tbaa !26
  br label %160

; <label>:160                                     ; preds = %157, %132, %128, %124, %120, %116, %111
  %161 = phi i32 [ %.pre10.i.i, %157 ], [ %112, %132 ], [ %112, %128 ], [ %112, %124 ], [ %112, %120 ], [ %112, %116 ], [ %112, %111 ]
  %local_npoints.1.i.i = phi i32 [ %159, %157 ], [ %local_npoints.02.i.i, %132 ], [ %local_npoints.02.i.i, %128 ], [ %local_npoints.02.i.i, %124 ], [ %local_npoints.02.i.i, %120 ], [ %local_npoints.02.i.i, %116 ], [ %local_npoints.02.i.i, %111 ]
  %local_hdata.2.i.i = phi i8* [ %158, %157 ], [ %local_hdata.15.i.i, %132 ], [ %local_hdata.15.i.i, %128 ], [ %local_hdata.15.i.i, %124 ], [ %local_hdata.15.i.i, %120 ], [ %local_hdata.15.i.i, %116 ], [ %local_hdata.15.i.i, %111 ]
  %162 = load i32** %105, align 8, !tbaa !32
  %163 = load i32* %162, align 4, !tbaa !26
  %164 = add nsw i32 %163, %i.06.i.i
  %165 = getelementptr inbounds i32* %162, i64 1
  %166 = load i32* %165, align 4, !tbaa !26
  %167 = add nsw i32 %166, %j.04.i.i
  %168 = getelementptr inbounds i32* %162, i64 2
  %169 = load i32* %168, align 4, !tbaa !26
  %170 = add nsw i32 %169, %k.03.i.i
  %171 = add nuw nsw i32 %npoints.01.i.i, 1
  %172 = icmp slt i32 %171, %161
  br i1 %172, label %111, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %160, %._crit_edge8.i.i
  %local_hdata.1.lcssa.i.i = phi i8* [ %local_hdata.0.i.i, %._crit_edge8.i.i ], [ %local_hdata.2.i.i, %160 ]
  %local_npoints.0.lcssa.i.i = phi i32 [ 0, %._crit_edge8.i.i ], [ %local_npoints.1.i.i, %160 ]
  %173 = icmp sgt i32 %75, 1
  br i1 %173, label %174, label %GetLocalHyperslab.exit

; <label>:174                                     ; preds = %._crit_edge.i.i
  %175 = mul nsw i32 %local_npoints.0.lcssa.i.i, %69
  %176 = sext i32 %175 to i64
  %177 = sub nsw i64 0, %176
  %178 = getelementptr inbounds i8* %local_hdata.1.lcssa.i.i, i64 %177
  call void @free(i8* %178) #6
  br label %GetLocalHyperslab.exit

; <label>:179                                     ; preds = %50
  %180 = icmp slt i32 %hdatatype, 0
  %181 = getelementptr inbounds %struct.cGroup* %vinfo.i, i64 0, i32 1
  %182 = load i32* %181, align 4, !tbaa !33
  %183 = getelementptr inbounds %struct.hslab_mapping_t* %1, i64 0, i32 16
  %184 = load void (i8*, i8*, i32, i32, i32)** %183, align 8, !tbaa !31
  br i1 %180, label %.thread.i, label %186

.thread.i:                                        ; preds = %179
  %185 = icmp eq void (i8*, i8*, i32, i32, i32)* %184, null
  br i1 %185, label %201, label %199

; <label>:186                                     ; preds = %179
  %187 = icmp eq i32 %182, %hdatatype
  %188 = icmp eq void (i8*, i8*, i32, i32, i32)* %184, null
  br i1 %187, label %198, label %189

; <label>:189                                     ; preds = %186
  br i1 %188, label %190, label %201

; <label>:190                                     ; preds = %189
  %191 = call void (i8*, i8*, i32, i32, i32)* (i32, i32)* @PUGHSlabi_GetDatatypeConversionFn(i32 %182, i32 %hdatatype) #6
  %192 = icmp eq void (i8*, i8*, i32, i32, i32)* %191, null
  br i1 %192, label %193, label %201

; <label>:193                                     ; preds = %190
  %194 = load i32* %181, align 4, !tbaa !33
  %195 = call i8* @CCTK_VarTypeName(i32 %194) #6
  %196 = call i8* @CCTK_VarTypeName(i32 %hdatatype) #6
  %197 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 297, i8* getelementptr inbounds ([83 x i8]* @.str5, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str6, i64 0, i64 0), i8* getelementptr inbounds ([67 x i8]* @.str8, i64 0, i64 0), i8* %195, i8* %196) #6
  br label %GetLocalHyperslab.exit

; <label>:198                                     ; preds = %186
  br i1 %188, label %201, label %199

; <label>:199                                     ; preds = %198, %.thread.i
  %.066869.i = phi i32 [ %182, %.thread.i ], [ %hdatatype, %198 ]
  %200 = call i32 @CCTK_Warn(i32 8, i32 308, i8* getelementptr inbounds ([83 x i8]* @.str5, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str6, i64 0, i64 0), i8* getelementptr inbounds ([106 x i8]* @.str9, i64 0, i64 0)) #6
  br label %201

; <label>:201                                     ; preds = %199, %198, %190, %189, %.thread.i
  %.0667.i = phi i32 [ %hdatatype, %190 ], [ %hdatatype, %189 ], [ %.066869.i, %199 ], [ %hdatatype, %198 ], [ %182, %.thread.i ]
  %conversion_fn.0.i = phi void (i8*, i8*, i32, i32, i32)* [ %191, %190 ], [ %184, %189 ], [ null, %199 ], [ null, %198 ], [ null, %.thread.i ]
  %202 = load i32* %34, align 4, !tbaa !14
  %203 = mul nsw i32 %202, 5
  %204 = sext i32 %203 to i64
  %205 = shl nsw i64 %204, 2
  %206 = call i8* @malloc(i64 %205) #6
  %207 = bitcast i8* %206 to i32*
  %208 = sext i32 %202 to i64
  %209 = getelementptr inbounds i32* %207, i64 %208
  %210 = shl nsw i32 %202, 1
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds i32* %207, i64 %211
  %213 = mul nsw i32 %202, 3
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds i32* %207, i64 %214
  %216 = shl nsw i32 %202, 2
  %217 = sext i32 %216 to i64
  %218 = bitcast i32* %209 to i8*
  %219 = getelementptr inbounds %struct.hslab_mapping_t* %1, i64 0, i32 5
  %220 = bitcast i32** %219 to i8**
  %221 = load i8** %220, align 8, !tbaa !34
  %222 = shl nsw i64 %208, 2
  %223 = call i64 @llvm.objectsize.i64.p0i8(i8* %218, i1 false) #5
  %224 = call i8* @__memcpy_chk(i8* %218, i8* %221, i64 %222, i64 %223) #6
  %225 = bitcast i32* %212 to i8*
  %226 = getelementptr inbounds %struct.hslab_mapping_t* %1, i64 0, i32 6
  %227 = bitcast i32** %226 to i8**
  %228 = load i8** %227, align 8, !tbaa !35
  %229 = load i32* %34, align 4, !tbaa !14
  %230 = sext i32 %229 to i64
  %231 = shl nsw i64 %230, 2
  %232 = call i64 @llvm.objectsize.i64.p0i8(i8* %225, i1 false) #5
  %233 = call i8* @__memcpy_chk(i8* %225, i8* %228, i64 %231, i64 %232) #6
  %234 = bitcast i32* %215 to i8*
  %235 = getelementptr inbounds %struct.hslab_mapping_t* %1, i64 0, i32 10
  %236 = bitcast i32** %235 to i8**
  %237 = load i8** %236, align 8, !tbaa !32
  %238 = load i32* %34, align 4, !tbaa !14
  %239 = sext i32 %238 to i64
  %240 = shl nsw i64 %239, 2
  %241 = call i64 @llvm.objectsize.i64.p0i8(i8* %234, i1 false) #5
  %242 = call i8* @__memcpy_chk(i8* %234, i8* %237, i64 %240, i64 %241) #6
  %243 = call %struct.PGH* @PUGH_pGH(%struct.cGH* %GH) #6
  %244 = sext i32 %timelevel to i64
  %245 = sext i32 %vindex to i64
  %246 = getelementptr inbounds %struct.PGH* %243, i64 0, i32 7
  %247 = load i8**** %246, align 8, !tbaa !19
  %248 = getelementptr inbounds i8*** %247, i64 %245
  %249 = load i8*** %248, align 8, !tbaa !22
  %250 = getelementptr inbounds i8** %249, i64 %244
  %251 = bitcast i8** %250 to %struct.PGA**
  %252 = load %struct.PGA** %251, align 8, !tbaa !22
  %253 = load i32 (%struct.cGH*)** @CCTK_MyProc, align 8, !tbaa !22
  %254 = call i32 %253(%struct.cGH* %GH) #6
  %255 = call i8* @CCTK_VarDataPtrI(%struct.cGH* %GH, i32 %timelevel, i32 %vindex) #6
  %256 = getelementptr inbounds %struct.hslab_mapping_t* %1, i64 0, i32 14
  %257 = load i32* %256, align 4, !tbaa !36
  %258 = icmp ne i32 %257, 0
  %259 = icmp eq void (i8*, i8*, i32, i32, i32)* %conversion_fn.0.i, null
  %or.cond5.i = and i1 %259, %258
  br i1 %or.cond5.i, label %260, label %268

; <label>:260                                     ; preds = %201
  %261 = load i32* %7, align 4, !tbaa !2
  %262 = load i32* %181, align 4, !tbaa !33
  %263 = call i32 @CCTK_VarTypeSize(i32 %262) #6
  %264 = mul i32 %263, %261
  %265 = zext i32 %264 to i64
  %266 = call i64 @llvm.objectsize.i64.p0i8(i8* %hdata, i1 false) #5
  %267 = call i8* @__memcpy_chk(i8* %hdata, i8* %255, i64 %265, i64 %266) #6
  br label %.loopexit22.i

; <label>:268                                     ; preds = %201
  %269 = getelementptr inbounds i32* %207, i64 %217
  %270 = load i32* %181, align 4, !tbaa !33
  %271 = call i32 @CCTK_VarTypeSize(i32 %270) #6
  %272 = call i32 @CCTK_VarTypeSize(i32 %.0667.i) #6
  store i32 1, i32* %269, align 4, !tbaa !26
  %273 = load i32* %34, align 4, !tbaa !14
  %274 = icmp sgt i32 %273, 1
  br i1 %274, label %.lr.ph45.i, label %.._crit_edge46.i_crit_edge

.._crit_edge46.i_crit_edge:                       ; preds = %268
  %.pre = sext i32 %273 to i64
  br label %._crit_edge46.i

.lr.ph45.i:                                       ; preds = %268
  %275 = getelementptr inbounds %struct.PGA* %252, i64 0, i32 10
  %276 = load %struct.PGExtras** %275, align 8, !tbaa !23
  %277 = getelementptr inbounds %struct.PGExtras* %276, i64 0, i32 6
  %278 = load i32** %277, align 8, !tbaa !37
  %279 = sext i32 %273 to i64
  %280 = add nsw i64 %279, -1
  br label %281

; <label>:281                                     ; preds = %281, %.lr.ph45.i
  %indvars.iv58.i = phi i64 [ 1, %.lr.ph45.i ], [ %indvars.iv.next59.i, %281 ]
  %282 = add nsw i64 %indvars.iv58.i, -1
  %.sum15.i = add nsw i64 %282, %217
  %283 = getelementptr inbounds i32* %207, i64 %.sum15.i
  %284 = load i32* %283, align 4, !tbaa !26
  %285 = getelementptr inbounds i32* %278, i64 %282
  %286 = load i32* %285, align 4, !tbaa !26
  %287 = mul nsw i32 %286, %284
  %.sum16.i = add nsw i64 %indvars.iv58.i, %217
  %288 = getelementptr inbounds i32* %207, i64 %.sum16.i
  store i32 %287, i32* %288, align 4, !tbaa !26
  %indvars.iv.next59.i = add nuw nsw i64 %indvars.iv58.i, 1
  %exitcond3 = icmp eq i64 %indvars.iv58.i, %280
  br i1 %exitcond3, label %._crit_edge46.i, label %281

._crit_edge46.i:                                  ; preds = %281, %.._crit_edge46.i_crit_edge
  %.pre-phi = phi i64 [ %.pre, %.._crit_edge46.i_crit_edge ], [ %279, %281 ]
  %289 = load i32* %212, align 4, !tbaa !26
  %290 = load i32* %209, align 4, !tbaa !26
  %291 = sub nsw i32 %289, %290
  %292 = load i32* %215, align 4, !tbaa !26
  %293 = sdiv i32 %291, %292
  %294 = srem i32 %291, %292
  %not..i = icmp ne i32 %294, 0
  %295 = zext i1 %not..i to i32
  %..i = add nsw i32 %295, %293
  %296 = mul nsw i32 %..i, %272
  %297 = icmp sgt i32 %273, 0
  br i1 %297, label %.lr.ph40.i.preheader, label %._crit_edge41.i

.lr.ph40.i.preheader:                             ; preds = %._crit_edge46.i
  %298 = add nsw i64 %.pre-phi, -1
  br label %.lr.ph40.i

.lr.ph40.i:                                       ; preds = %.lr.ph40.i, %.lr.ph40.i.preheader
  %indvars.iv56.i = phi i64 [ %indvars.iv.next57.i, %.lr.ph40.i ], [ 0, %.lr.ph40.i.preheader ]
  %.sum12.i = add nsw i64 %indvars.iv56.i, %208
  %299 = getelementptr inbounds i32* %207, i64 %.sum12.i
  %300 = load i32* %299, align 4, !tbaa !26
  %301 = mul nsw i32 %300, %271
  store i32 %301, i32* %299, align 4, !tbaa !26
  %.sum13.i = add nsw i64 %indvars.iv56.i, %211
  %302 = getelementptr inbounds i32* %207, i64 %.sum13.i
  %303 = load i32* %302, align 4, !tbaa !26
  %304 = mul nsw i32 %303, %271
  store i32 %304, i32* %302, align 4, !tbaa !26
  %.sum14.i = add nsw i64 %indvars.iv56.i, %214
  %305 = getelementptr inbounds i32* %207, i64 %.sum14.i
  %306 = load i32* %305, align 4, !tbaa !26
  %307 = mul nsw i32 %306, %271
  store i32 %307, i32* %305, align 4, !tbaa !26
  %indvars.iv.next57.i = add nuw nsw i64 %indvars.iv56.i, 1
  %exitcond = icmp eq i64 %indvars.iv56.i, %298
  br i1 %exitcond, label %._crit_edge41.i, label %.lr.ph40.i

._crit_edge41.i:                                  ; preds = %.lr.ph40.i, %._crit_edge46.i
  %308 = shl nsw i64 %.pre-phi, 2
  %309 = call i64 @llvm.objectsize.i64.p0i8(i8* %206, i1 false) #5
  %310 = call i8* @__memcpy_chk(i8* %206, i8* %218, i64 %308, i64 %309) #6
  %311 = getelementptr inbounds i8* %206, i64 4
  %312 = bitcast i8* %311 to i32*
  %.sum8.i = or i64 %211, 1
  %313 = getelementptr inbounds i32* %207, i64 %.sum8.i
  %314 = sext i32 %296 to i64
  %.sum.i = add nsw i64 %214, 1
  %315 = getelementptr inbounds i32* %207, i64 %.sum.i
  %316 = icmp sgt i32 %296, 0
  %317 = sext i32 %271 to i64
  %318 = sext i32 %272 to i64
  %.pre61.i = load i32* %34, align 4, !tbaa !14
  br label %319

; <label>:319                                     ; preds = %384, %._crit_edge41.i
  %320 = phi i32 [ %.pre61.i, %._crit_edge41.i ], [ %382, %384 ]
  %typed_hdata.0.i = phi i8* [ %hdata, %._crit_edge41.i ], [ %385, %384 ]
  %321 = icmp sgt i32 %320, 1
  br i1 %321, label %325, label %.loopexit20.thread71.i

.loopexit20.thread71.i:                           ; preds = %319
  %322 = load i32* %207, align 4, !tbaa !26
  %323 = sext i32 %322 to i64
  %324 = getelementptr inbounds i8* %255, i64 %323
  br label %._crit_edge33.i

; <label>:325                                     ; preds = %319
  %326 = load i32* %312, align 4, !tbaa !26
  %327 = load i32* %313, align 4, !tbaa !26
  %328 = icmp slt i32 %326, %327
  br i1 %328, label %.lr.ph32.i, label %.preheader21.i

.preheader21.i:                                   ; preds = %325
  %329 = icmp sgt i32 %320, 2
  br i1 %329, label %.lr.ph.i, label %344

.lr.ph.i:                                         ; preds = %.preheader21.i
  %330 = sext i32 %320 to i64
  br label %331

; <label>:331                                     ; preds = %340, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 2, %.lr.ph.i ], [ %indvars.iv.next.i, %340 ]
  %.sum10.i = add nsw i64 %indvars.iv.i, %214
  %332 = getelementptr inbounds i32* %207, i64 %.sum10.i
  %333 = load i32* %332, align 4, !tbaa !26
  %334 = getelementptr inbounds i32* %207, i64 %indvars.iv.i
  %335 = load i32* %334, align 4, !tbaa !26
  %336 = add nsw i32 %335, %333
  store i32 %336, i32* %334, align 4, !tbaa !26
  %.sum11.i = add nsw i64 %indvars.iv.i, %211
  %337 = getelementptr inbounds i32* %207, i64 %.sum11.i
  %338 = load i32* %337, align 4, !tbaa !26
  %339 = icmp slt i32 %336, %338
  br i1 %339, label %._crit_edge.i, label %340

; <label>:340                                     ; preds = %331
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %341 = icmp slt i64 %indvars.iv.next.i, %330
  br i1 %341, label %331, label %._crit_edge24.i

._crit_edge.i:                                    ; preds = %331
  %342 = trunc i64 %indvars.iv.i to i32
  br label %344

._crit_edge24.i:                                  ; preds = %340
  %343 = trunc i64 %indvars.iv.next.i to i32
  br label %344

; <label>:344                                     ; preds = %._crit_edge24.i, %._crit_edge.i, %.preheader21.i
  %vdim.2.lcssa.i = phi i32 [ %342, %._crit_edge.i ], [ %343, %._crit_edge24.i ], [ 2, %.preheader21.i ]
  %345 = icmp slt i32 %vdim.2.lcssa.i, %320
  br i1 %345, label %.preheader19.i, label %.loopexit22.i

.preheader19.i:                                   ; preds = %344
  %346 = icmp sgt i32 %vdim.2.lcssa.i, 1
  br i1 %346, label %.lr.ph28.i, label %.lr.ph32.i

.lr.ph28.i:                                       ; preds = %.preheader19.i
  %347 = sext i32 %vdim.2.lcssa.i to i64
  br label %348

; <label>:348                                     ; preds = %348, %.lr.ph28.i
  %indvars.iv50.i = phi i64 [ %347, %.lr.ph28.i ], [ %indvars.iv.next51.i, %348 ]
  %indvars.iv.next51.i = add nsw i64 %indvars.iv50.i, -1
  %.sum9.i = add nsw i64 %indvars.iv.next51.i, %208
  %349 = getelementptr inbounds i32* %207, i64 %.sum9.i
  %350 = load i32* %349, align 4, !tbaa !26
  %351 = getelementptr inbounds i32* %207, i64 %indvars.iv.next51.i
  store i32 %350, i32* %351, align 4, !tbaa !26
  %352 = icmp sgt i64 %indvars.iv.next51.i, 1
  br i1 %352, label %348, label %.lr.ph32.i

.lr.ph32.i:                                       ; preds = %348, %.preheader19.i, %325
  %.pn.in = load i32* %207, align 4
  %.pn = sext i32 %.pn.in to i64
  %353 = getelementptr inbounds i8* %255, i64 %.pn
  %354 = sext i32 %320 to i64
  br label %355

; <label>:355                                     ; preds = %355, %.lr.ph32.i
  %indvars.iv52.i = phi i64 [ 1, %.lr.ph32.i ], [ %indvars.iv.next53.i, %355 ]
  %typed_vdata.029.i = phi i8* [ %353, %.lr.ph32.i ], [ %362, %355 ]
  %356 = getelementptr inbounds i32* %207, i64 %indvars.iv52.i
  %357 = load i32* %356, align 4, !tbaa !26
  %.sum7.i = add nsw i64 %indvars.iv52.i, %217
  %358 = getelementptr inbounds i32* %207, i64 %.sum7.i
  %359 = load i32* %358, align 4, !tbaa !26
  %360 = mul nsw i32 %359, %357
  %361 = sext i32 %360 to i64
  %362 = getelementptr inbounds i8* %typed_vdata.029.i, i64 %361
  %indvars.iv.next53.i = add nuw nsw i64 %indvars.iv52.i, 1
  %363 = icmp slt i64 %indvars.iv.next53.i, %354
  br i1 %363, label %355, label %._crit_edge33.i

._crit_edge33.i:                                  ; preds = %355, %.loopexit20.thread71.i
  %typed_vdata.0.lcssa.i = phi i8* [ %324, %.loopexit20.thread71.i ], [ %362, %355 ]
  %364 = load i32* %215, align 4, !tbaa !26
  %365 = icmp eq i32 %364, %271
  %366 = load void (i8*, i8*, i32, i32, i32)** %183, align 8, !tbaa !31
  %367 = icmp ne void (i8*, i8*, i32, i32, i32)* %366, null
  br i1 %365, label %368, label %373

; <label>:368                                     ; preds = %._crit_edge33.i
  br i1 %367, label %369, label %370

; <label>:369                                     ; preds = %368
  call void %366(i8* %typed_vdata.0.lcssa.i, i8* %typed_hdata.0.i, i32 %..i, i32 1, i32 1) #6
  br label %.loopexit.i

; <label>:370                                     ; preds = %368
  %371 = call i64 @llvm.objectsize.i64.p0i8(i8* %typed_hdata.0.i, i1 false) #5
  %372 = call i8* @__memcpy_chk(i8* %typed_hdata.0.i, i8* %typed_vdata.0.lcssa.i, i64 %314, i64 %371) #6
  br label %.loopexit.i

; <label>:373                                     ; preds = %._crit_edge33.i
  br i1 %367, label %374, label %.preheader.i

.preheader.i:                                     ; preds = %373
  br i1 %316, label %.lr.ph37.i, label %.loopexit.i

; <label>:374                                     ; preds = %373
  call void %366(i8* %typed_vdata.0.lcssa.i, i8* %typed_hdata.0.i, i32 %..i, i32 %364, i32 1) #6
  br label %.loopexit.i

.lr.ph37.i:                                       ; preds = %.preheader.i, %.lr.ph37.i
  %indvars.iv54.i = phi i64 [ %indvars.iv.next55.i, %.lr.ph37.i ], [ 0, %.preheader.i ]
  %typed_vdata.135.i = phi i8* [ %380, %.lr.ph37.i ], [ %typed_vdata.0.lcssa.i, %.preheader.i ]
  %375 = getelementptr inbounds i8* %typed_hdata.0.i, i64 %indvars.iv54.i
  %376 = call i64 @llvm.objectsize.i64.p0i8(i8* %375, i1 false) #5
  %377 = call i8* @__memcpy_chk(i8* %375, i8* %typed_vdata.135.i, i64 %317, i64 %376) #6
  %378 = load i32* %215, align 4, !tbaa !26
  %379 = sext i32 %378 to i64
  %380 = getelementptr inbounds i8* %typed_vdata.135.i, i64 %379
  %indvars.iv.next55.i = add i64 %indvars.iv54.i, %318
  %381 = icmp slt i64 %indvars.iv.next55.i, %314
  br i1 %381, label %.lr.ph37.i, label %.loopexit.i

.loopexit.i:                                      ; preds = %.lr.ph37.i, %374, %.preheader.i, %370, %369
  %382 = load i32* %34, align 4, !tbaa !14
  %383 = icmp sgt i32 %382, 1
  br i1 %383, label %384, label %.loopexit22.i

; <label>:384                                     ; preds = %.loopexit.i
  %385 = getelementptr inbounds i8* %typed_hdata.0.i, i64 %314
  %386 = load i32* %315, align 4, !tbaa !26
  %387 = load i32* %312, align 4, !tbaa !26
  %388 = add nsw i32 %387, %386
  store i32 %388, i32* %312, align 4, !tbaa !26
  br label %319

.loopexit22.i:                                    ; preds = %.loopexit.i, %344, %260
  call void @free(i8* %206) #6
  br label %GetLocalHyperslab.exit

GetLocalHyperslab.exit:                           ; preds = %45, %47, %._crit_edge.i.i, %174, %193, %.loopexit22.i
  %.0.i = phi i32 [ -1, %45 ], [ 0, %.loopexit22.i ], [ -1, %193 ], [ 0, %47 ], [ 0, %._crit_edge.i.i ], [ 0, %174 ]
  call void @llvm.lifetime.end(i64 32, i8* %4)
  br label %389

; <label>:389                                     ; preds = %0, %GetLocalHyperslab.exit
  %.0 = phi i32 [ %.0.i, %GetLocalHyperslab.exit ], [ -1, %0 ]
  ret i32 %.0
}

; Function Attrs: optsize
declare %struct.hslab_mapping_t* @PUGHSlabi_GetMapping(i32) #2

; Function Attrs: nounwind optsize ssp uwtable
define i32 @Hyperslab_GetList(%struct.cGH* %GH, i32 %mapping_handle, i32 %num_arrays, i32* nocapture readonly %vindices, i32* readonly %timelevels, i32* readonly %hdatatypes, i8** nocapture readonly %hdata) #1 {
  %1 = icmp sgt i32 %num_arrays, 0
  br i1 %1, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %0
  %2 = icmp eq i32* %timelevels, null
  %3 = icmp eq i32* %hdatatypes, null
  %4 = add i32 %num_arrays, -1
  br label %5

; <label>:5                                       ; preds = %16, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %16 ]
  %retval.02 = phi i32 [ 0, %.lr.ph ], [ %.retval.0, %16 ]
  %6 = getelementptr inbounds i32* %vindices, i64 %indvars.iv
  %7 = load i32* %6, align 4, !tbaa !26
  br i1 %2, label %11, label %8

; <label>:8                                       ; preds = %5
  %9 = getelementptr inbounds i32* %timelevels, i64 %indvars.iv
  %10 = load i32* %9, align 4, !tbaa !26
  br label %11

; <label>:11                                      ; preds = %5, %8
  %12 = phi i32 [ %10, %8 ], [ 0, %5 ]
  br i1 %3, label %16, label %13

; <label>:13                                      ; preds = %11
  %14 = getelementptr inbounds i32* %hdatatypes, i64 %indvars.iv
  %15 = load i32* %14, align 4, !tbaa !26
  br label %16

; <label>:16                                      ; preds = %11, %13
  %17 = phi i32 [ %15, %13 ], [ -1, %11 ]
  %18 = getelementptr inbounds i8** %hdata, i64 %indvars.iv
  %19 = load i8** %18, align 8, !tbaa !22
  %20 = tail call i32 @Hyperslab_Get(%struct.cGH* %GH, i32 %mapping_handle, i32 %7, i32 %12, i32 %17, i8* %19) #7
  %21 = icmp eq i32 %20, 0
  %22 = zext i1 %21 to i32
  %.retval.0 = add nsw i32 %22, %retval.02
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %4
  br i1 %exitcond, label %._crit_edge, label %5

._crit_edge:                                      ; preds = %16, %0
  %retval.0.lcssa = phi i32 [ 0, %0 ], [ %.retval.0, %16 ]
  ret i32 %retval.0.lcssa
}

; Function Attrs: optsize
declare i32 @CCTK_GroupData(i32, %struct.cGroup*) #2

; Function Attrs: optsize
declare i32 @CCTK_GroupIndexFromVarI(i32) #2

; Function Attrs: optsize
declare i32 @CCTK_VWarn(i32, i32, i8*, i8*, i8*, ...) #2

; Function Attrs: optsize
declare void (i8*, i8*, i32, i32, i32)* @PUGHSlabi_GetDatatypeConversionFn(i32, i32) #2

; Function Attrs: optsize
declare i8* @CCTK_VarTypeName(i32) #2

; Function Attrs: optsize
declare i32 @CCTK_Warn(i32, i32, i8*, i8*, i8*) #2

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i64) #3

; Function Attrs: nounwind optsize
declare i8* @__memcpy_chk(i8*, i8*, i64, i64) #3

; Function Attrs: nounwind readnone
declare i64 @llvm.objectsize.i64.p0i8(i8*, i1) #4

; Function Attrs: optsize
declare %struct.PGH* @PUGH_pGH(%struct.cGH*) #2

; Function Attrs: optsize
declare i8* @CCTK_VarDataPtrI(%struct.cGH*, i32, i32) #2

; Function Attrs: optsize
declare i32 @CCTK_VarTypeSize(i32) #2

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #3

; Function Attrs: optsize
declare i32 @CCTK_VarTypeI(i32) #2

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
!2 = !{!3, !4, i64 88}
!3 = !{!"hslab_mapping_t", !4, i64 0, !4, i64 4, !4, i64 8, !4, i64 12, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !4, i64 88, !4, i64 92, !4, i64 96, !7, i64 104, !7, i64 112, !7, i64 120, !8, i64 128}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!"any pointer", !5, i64 0}
!8 = !{!"", !4, i64 0, !4, i64 4, !4, i64 8, !4, i64 12, !4, i64 16, !4, i64 20, !4, i64 24, !4, i64 28}
!9 = !{!8, !4, i64 24}
!10 = !{!8, !4, i64 0}
!11 = !{!3, !4, i64 128}
!12 = !{!8, !4, i64 8}
!13 = !{!3, !4, i64 136}
!14 = !{!8, !4, i64 16}
!15 = !{!3, !4, i64 144}
!16 = !{!8, !4, i64 12}
!17 = !{!3, !4, i64 140}
!18 = !{!3, !4, i64 96}
!19 = !{!20, !7, i64 32}
!20 = !{!"PGH", !7, i64 0, !4, i64 8, !4, i64 12, !4, i64 16, !4, i64 20, !4, i64 24, !4, i64 28, !7, i64 32, !4, i64 40, !7, i64 48, !4, i64 56, !4, i64 60, !21, i64 64, !21, i64 72, !21, i64 80, !21, i64 88, !4, i64 96, !4, i64 100, !4, i64 104, !4, i64 108, !4, i64 112, !7, i64 120, !7, i64 128, !7, i64 136}
!21 = !{!"double", !5, i64 0}
!22 = !{!7, !7, i64 0}
!23 = !{!24, !7, i64 56}
!24 = !{!"PGA", !7, i64 0, !4, i64 8, !4, i64 12, !7, i64 16, !7, i64 24, !4, i64 32, !4, i64 36, !7, i64 40, !4, i64 48, !4, i64 52, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !4, i64 88, !4, i64 92, !7, i64 96}
!25 = !{!3, !7, i64 72}
!26 = !{!4, !4, i64 0}
!27 = !{!3, !7, i64 40}
!28 = !{!29, !7, i64 24}
!29 = !{!"PGExtras", !4, i64 0, !7, i64 8, !21, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !4, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !7, i64 88, !7, i64 96, !5, i64 104, !5, i64 168, !5, i64 232}
!30 = !{!29, !7, i64 88}
!31 = !{!3, !7, i64 104}
!32 = !{!3, !7, i64 64}
!33 = !{!8, !4, i64 4}
!34 = !{!3, !7, i64 24}
!35 = !{!3, !7, i64 32}
!36 = !{!3, !4, i64 92}
!37 = !{!29, !7, i64 48}