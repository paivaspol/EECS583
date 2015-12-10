; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/Boundary/FlatBoundary.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.cGH = type { i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, double, double*, double*, i32*, i32*, i32, i32*, double, i8***, i8**, %struct.cGHGroupData* }
%struct.cGHGroupData = type { i8, i8 }

@.str = private unnamed_addr constant [83 x i8] c"../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/Boundary/FlatBoundary.c\00", align 1
@.str1 = private unnamed_addr constant [9 x i8] c"Boundary\00", align 1
@.str2 = private unnamed_addr constant [39 x i8] c"Invalid group index %d in BndFlatDirGI\00", align 1
@.str3 = private unnamed_addr constant [36 x i8] c"Invalid group index %d in BndFlatGI\00", align 1
@.str4 = private unnamed_addr constant [40 x i8] c"Invalid group name '%s' in BndFlatDirGN\00", align 1
@.str5 = private unnamed_addr constant [37 x i8] c"Invalid group name '%s' in BndFlatGN\00", align 1
@.str6 = private unnamed_addr constant [42 x i8] c"Invalid variable index %d in BndFlatDirVI\00", align 1
@.str7 = private unnamed_addr constant [39 x i8] c"Invalid variable index %d in BndFlatVI\00", align 1
@.str8 = private unnamed_addr constant [43 x i8] c"Invalid variable name '%s' in BndFlatDirVN\00", align 1
@.str9 = private unnamed_addr constant [40 x i8] c"Invalid variable name '%s' in BndFlatVN\00", align 1
@.str10 = private unnamed_addr constant [96 x i8] c"$Header: /cactus/CactusBase/Boundary/src/FlatBoundary.c,v 1.32 2001/09/12 09:27:13 tradke Exp $\00", align 1
@.str11 = private unnamed_addr constant [53 x i8] c"ApplyBndFlat: Variable dimension of %d not supported\00", align 1
@.str12 = private unnamed_addr constant [53 x i8] c"ApplyBndFlat: direction %d greater than dimension %d\00", align 1
@.str13 = private unnamed_addr constant [58 x i8] c"ApplyBndFlat: NULL pointer passed for stencil width array\00", align 1
@.str14 = private unnamed_addr constant [9 x i8] c"Symmetry\00", align 1
@.memset_pattern = internal unnamed_addr constant [4 x i32] [i32 1, i32 1, i32 1, i32 1], align 16

; Function Attrs: nounwind optsize readnone ssp uwtable
define i8* @CCTKi_version_CactusBase_Boundary_FlatBoundary_c() #0 {
  ret i8* getelementptr inbounds ([96 x i8]* @.str10, i64 0, i64 0)
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @BndFlatDirGI(%struct.cGH* %GH, i32 %stencil_size, i32 %dir, i32 %gi) #1 {
  %1 = tail call i32 @CCTK_FirstVarIndexI(i32 %gi) #6
  %2 = icmp sgt i32 %1, -1
  br i1 %2, label %3, label %6

; <label>:3                                       ; preds = %0
  %4 = tail call i32 @CCTK_NumVarsInGroupI(i32 %gi) #6
  %5 = tail call fastcc i32 @ApplyBndFlat(%struct.cGH* %GH, i32 %stencil_size, i32* null, i32 %dir, i32 %1, i32 %4) #7
  br label %8

; <label>:6                                       ; preds = %0
  %7 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 2, i32 150, i8* getelementptr inbounds ([83 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8]* @.str2, i64 0, i64 0), i32 %gi) #6
  br label %8

; <label>:8                                       ; preds = %6, %3
  %retval.0 = phi i32 [ %5, %3 ], [ -1, %6 ]
  ret i32 %retval.0
}

; Function Attrs: optsize
declare i32 @CCTK_FirstVarIndexI(i32) #2

; Function Attrs: nounwind optsize ssp uwtable
define internal fastcc i32 @ApplyBndFlat(%struct.cGH* %GH, i32 %stencil_dir, i32* %stencil_alldirs, i32 %dir, i32 %first_var, i32 %num_vars) #1 {
  %doBC = alloca [6 x i32], align 16
  %dstag = alloca [3 x i32], align 4
  %lsh = alloca [3 x i32], align 4
  %lsh88 = bitcast [3 x i32]* %lsh to i8*
  %lssh = alloca [3 x i32], align 4
  %stencil = alloca [3 x i32], align 4
  %1 = tail call i32 @CCTK_GroupIndexFromVarI(i32 %first_var) #6
  %2 = tail call i32 @CCTK_GroupDimI(i32 %1) #6
  %3 = tail call i32 @CCTK_VarTypeI(i32 %first_var) #6
  %4 = tail call i32 @CCTK_VarTypeSize(i32 %3) #6
  %5 = icmp sgt i32 %2, 3
  br i1 %5, label %6, label %8

; <label>:6                                       ; preds = %0
  %7 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 801, i8* getelementptr inbounds ([83 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str11, i64 0, i64 0), i32 %2) #6
  br label %.loopexit37

; <label>:8                                       ; preds = %0
  %ispos = icmp sgt i32 %dir, -1
  %neg = sub i32 0, %dir
  %9 = select i1 %ispos, i32 %dir, i32 %neg
  %10 = icmp sgt i32 %9, %2
  br i1 %10, label %11, label %13

; <label>:11                                      ; preds = %8
  %12 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 809, i8* getelementptr inbounds ([83 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str12, i64 0, i64 0), i32 %dir, i32 %2) #6
  br label %.loopexit37

; <label>:13                                      ; preds = %8
  %14 = icmp ne i32 %dir, 0
  br i1 %14, label %15, label %25

; <label>:15                                      ; preds = %13
  %16 = add nsw i32 %9, -1
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [3 x i32]* %stencil, i64 0, i64 %17
  store i32 %stencil_dir, i32* %18, align 4, !tbaa !2
  br label %.preheader38

.preheader38:                                     ; preds = %27, %15
  %19 = icmp slt i32 %2, 3
  br i1 %19, label %.lr.ph84, label %35

.lr.ph84:                                         ; preds = %.preheader38
  %20 = sext i32 %2 to i64
  %scevgep = getelementptr [3 x i32]* %lsh, i64 0, i64 %20
  %scevgep136 = bitcast i32* %scevgep to i8*
  %21 = sub i32 2, %2
  %22 = zext i32 %21 to i64
  %23 = shl nuw nsw i64 %22, 2
  %24 = add nuw nsw i64 %23, 4
  call void @llvm.memset.p0i8.i64(i8* %scevgep136, i8 0, i64 %24, i32 4, i1 false)
  %scevgep137 = getelementptr [3 x i32]* %lssh, i64 0, i64 %20
  %scevgep137138 = bitcast i32* %scevgep137 to i8*
  call void @memset_pattern16(i8* %scevgep137138, i8* bitcast ([4 x i32]* @.memset_pattern to i8*), i64 %24) #4
  br label %35

; <label>:25                                      ; preds = %13
  %26 = icmp eq i32* %stencil_alldirs, null
  br i1 %26, label %33, label %27

; <label>:27                                      ; preds = %25
  %28 = bitcast [3 x i32]* %stencil to i8*
  %29 = bitcast i32* %stencil_alldirs to i8*
  %30 = sext i32 %2 to i64
  %31 = shl nsw i64 %30, 2
  %32 = call i8* @__memcpy_chk(i8* %28, i8* %29, i64 %31, i64 12) #6
  br label %.preheader38

; <label>:33                                      ; preds = %25
  %34 = tail call i32 @CCTK_Warn(i32 1, i32 826, i8* getelementptr inbounds ([83 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([58 x i8]* @.str13, i64 0, i64 0)) #6
  br label %.loopexit37

; <label>:35                                      ; preds = %.lr.ph84, %.preheader38
  %36 = getelementptr inbounds [3 x i32]* %dstag, i64 0, i64 0
  %37 = call i32 @CCTK_GroupStaggerDirArrayGI(i32* %36, i32 %2, i32 %1) #6
  %38 = call i8* @CCTK_GHExtension(%struct.cGH* %GH, i8* getelementptr inbounds ([9 x i8]* @.str14, i64 0, i64 0)) #6
  %39 = icmp sgt i32 %num_vars, 0
  br i1 %39, label %.lr.ph82, label %.loopexit37

.lr.ph82:                                         ; preds = %35
  %40 = add nsw i32 %num_vars, %first_var
  %41 = bitcast [6 x i32]* %doBC to i8*
  %42 = icmp eq i8* %38, null
  %43 = icmp sgt i32 %2, 0
  %44 = icmp sgt i32 %2, 1
  %45 = getelementptr inbounds [6 x i32]* %doBC, i64 0, i64 2
  %46 = icmp sgt i32 %2, 2
  %47 = getelementptr inbounds [6 x i32]* %doBC, i64 0, i64 4
  %48 = getelementptr inbounds [3 x i32]* %stencil, i64 0, i64 2
  %49 = getelementptr inbounds [3 x i32]* %lssh, i64 0, i64 1
  %50 = getelementptr inbounds [3 x i32]* %lssh, i64 0, i64 0
  %51 = getelementptr inbounds [3 x i32]* %lsh, i64 0, i64 0
  %52 = getelementptr inbounds [3 x i32]* %lsh, i64 0, i64 1
  %53 = getelementptr inbounds [3 x i32]* %lssh, i64 0, i64 2
  %54 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17
  %55 = sext i32 %4 to i64
  %56 = getelementptr inbounds [3 x i32]* %stencil, i64 0, i64 1
  %57 = getelementptr inbounds [3 x i32]* %stencil, i64 0, i64 0
  %58 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 3
  %59 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 6
  %60 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 12
  %61 = icmp slt i32 %dir, 0
  %62 = shl nsw i32 %2, 1
  %63 = bitcast i8* %38 to i32***
  %64 = sext i32 %62 to i64
  %65 = add i32 %2, -1
  %66 = zext i32 %65 to i64
  %67 = shl nuw nsw i64 %66, 2
  %68 = add nuw nsw i64 %67, 4
  %69 = sext i32 %first_var to i64
  %70 = sext i32 %40 to i64
  br label %71

; <label>:71                                      ; preds = %.lr.ph82, %.thread11
  %indvars.iv130 = phi i64 [ %69, %.lr.ph82 ], [ %indvars.iv.next131, %.thread11 ]
  call void @llvm.memset.p0i8.i64(i8* %41, i8 1, i64 24, i32 16, i1 false)
  br i1 %42, label %.preheader35, label %.preheader36

.preheader36:                                     ; preds = %71
  br i1 %43, label %.lr.ph, label %.thread11

.lr.ph:                                           ; preds = %.preheader36
  %72 = load i32*** %63, align 8, !tbaa !6
  %73 = getelementptr inbounds i32** %72, i64 %indvars.iv130
  %74 = load i32** %73, align 8, !tbaa !9
  br label %78

.preheader35:                                     ; preds = %78, %71
  br i1 %43, label %.lr.ph41, label %.thread11

.lr.ph41:                                         ; preds = %.preheader35
  %75 = load i32** %58, align 8, !tbaa !10
  %76 = bitcast i32* %75 to i8*
  %77 = load i32** %59, align 8, !tbaa !13
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %lsh88, i8* %76, i64 %68, i32 4, i1 false)
  br label %86

; <label>:78                                      ; preds = %.lr.ph, %78
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %78 ]
  %79 = getelementptr inbounds i32* %74, i64 %indvars.iv
  %80 = load i32* %79, align 4, !tbaa !2
  %81 = and i32 %80, -2
  %82 = icmp eq i32 %81, -42
  %83 = zext i1 %82 to i32
  %84 = getelementptr inbounds [6 x i32]* %doBC, i64 0, i64 %indvars.iv
  store i32 %83, i32* %84, align 4, !tbaa !2
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %85 = icmp slt i64 %indvars.iv.next, %64
  br i1 %85, label %78, label %.preheader35

; <label>:86                                      ; preds = %141, %.lr.ph41
  %indvars.iv86 = phi i64 [ 0, %.lr.ph41 ], [ %indvars.iv.next87, %141 ]
  %87 = getelementptr inbounds [3 x i32]* %dstag, i64 0, i64 %indvars.iv86
  %88 = load i32* %87, align 4, !tbaa !2
  %89 = mul nsw i64 %indvars.iv86, 3
  %90 = trunc i64 %89 to i32
  %91 = add nsw i32 %88, %90
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32* %77, i64 %92
  %94 = load i32* %93, align 4, !tbaa !2
  %95 = getelementptr inbounds [3 x i32]* %lssh, i64 0, i64 %indvars.iv86
  store i32 %94, i32* %95, align 4, !tbaa !2
  %96 = getelementptr inbounds i32* %75, i64 %indvars.iv86
  %97 = load i32* %96, align 4, !tbaa !2
  %98 = icmp sgt i32 %97, 1
  %99 = trunc i64 %indvars.iv86 to i32
  %100 = shl nsw i32 %99, 1
  %101 = sext i32 %100 to i64
  br i1 %98, label %103, label %._crit_edge150

._crit_edge150:                                   ; preds = %86
  %102 = getelementptr inbounds [6 x i32]* %doBC, i64 0, i64 %101
  store i32 0, i32* %102, align 8, !tbaa !2
  %.pre157 = or i32 %100, 1
  %.pre159 = sext i32 %.pre157 to i64
  br label %118

; <label>:103                                     ; preds = %86
  %104 = load i32** %60, align 8, !tbaa !14
  %105 = getelementptr inbounds i32* %104, i64 %101
  %106 = load i32* %105, align 4, !tbaa !2
  %107 = icmp ne i32 %106, 0
  %108 = zext i1 %107 to i32
  %109 = getelementptr inbounds [6 x i32]* %doBC, i64 0, i64 %101
  %110 = load i32* %109, align 8, !tbaa !2
  %111 = and i32 %110, %108
  store i32 %111, i32* %109, align 8, !tbaa !2
  %112 = or i32 %100, 1
  %113 = sext i32 %112 to i64
  %114 = load i32** %60, align 8, !tbaa !14
  %115 = getelementptr inbounds i32* %114, i64 %113
  %116 = load i32* %115, align 4, !tbaa !2
  %117 = icmp ne i32 %116, 0
  br label %118

; <label>:118                                     ; preds = %._crit_edge150, %103
  %119 = phi i32 [ 0, %._crit_edge150 ], [ %111, %103 ]
  %120 = phi i32* [ %102, %._crit_edge150 ], [ %109, %103 ]
  %.pre-phi160 = phi i64 [ %.pre159, %._crit_edge150 ], [ %113, %103 ]
  %121 = phi i1 [ false, %._crit_edge150 ], [ %117, %103 ]
  %122 = zext i1 %121 to i32
  %123 = getelementptr inbounds [6 x i32]* %doBC, i64 0, i64 %.pre-phi160
  %124 = load i32* %123, align 4, !tbaa !2
  %125 = and i32 %124, %122
  store i32 %125, i32* %123, align 4, !tbaa !2
  br i1 %14, label %126, label %141

; <label>:126                                     ; preds = %118
  br i1 %61, label %127, label %133

; <label>:127                                     ; preds = %126
  %128 = add nuw nsw i64 %indvars.iv86, 1
  %129 = trunc i64 %128 to i32
  %130 = icmp eq i32 %129, %9
  %131 = zext i1 %130 to i32
  %132 = and i32 %119, %131
  store i32 %132, i32* %120, align 8, !tbaa !2
  br label %137

; <label>:133                                     ; preds = %126
  store i32 0, i32* %120, align 8, !tbaa !2
  %134 = add nuw nsw i64 %indvars.iv86, 1
  %135 = trunc i64 %134 to i32
  %136 = icmp eq i32 %135, %9
  br label %137

; <label>:137                                     ; preds = %127, %133
  %138 = phi i1 [ false, %127 ], [ %136, %133 ]
  %139 = zext i1 %138 to i32
  %140 = and i32 %125, %139
  store i32 %140, i32* %123, align 4, !tbaa !2
  br label %141

; <label>:141                                     ; preds = %118, %137
  %indvars.iv.next87 = add nuw nsw i64 %indvars.iv86, 1
  %exitcond = icmp eq i32 %99, %65
  br i1 %exitcond, label %._crit_edge, label %86

._crit_edge:                                      ; preds = %141
  br i1 %43, label %142, label %.thread11

; <label>:142                                     ; preds = %._crit_edge
  %143 = bitcast [6 x i32]* %doBC to i64*
  %144 = load i64* %143, align 16
  %145 = trunc i64 %144 to i32
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %.loopexit34, label %.preheader33

.preheader33:                                     ; preds = %142
  %147 = load i32* %53, align 4, !tbaa !2
  %148 = icmp sgt i32 %147, 0
  br i1 %148, label %.preheader24.lr.ph, label %.loopexit34

.preheader24.lr.ph:                               ; preds = %.preheader33
  %149 = load i32* %49, align 4, !tbaa !2
  %150 = icmp sgt i32 %149, 0
  %151 = load i32* %51, align 4, !tbaa !2
  %152 = load i32* %52, align 4, !tbaa !2
  %153 = sext i32 %151 to i64
  %154 = add i32 %149, -1
  %155 = sext i32 %152 to i64
  %156 = sext i32 %147 to i64
  br label %.preheader24

.preheader24:                                     ; preds = %.preheader24.lr.ph, %._crit_edge46
  %indvars.iv95 = phi i64 [ 0, %.preheader24.lr.ph ], [ %indvars.iv.next96, %._crit_edge46 ]
  br i1 %150, label %.preheader18.lr.ph, label %._crit_edge46

.preheader18.lr.ph:                               ; preds = %.preheader24
  %157 = mul nsw i64 %155, %indvars.iv95
  %.pre = load i32* %57, align 4, !tbaa !2
  br label %.preheader18

.preheader18:                                     ; preds = %._crit_edge44, %.preheader18.lr.ph
  %158 = phi i32 [ %.pre, %.preheader18.lr.ph ], [ %181, %._crit_edge44 ]
  %indvars.iv91 = phi i64 [ 0, %.preheader18.lr.ph ], [ %indvars.iv.next92, %._crit_edge44 ]
  %159 = icmp sgt i32 %158, 0
  br i1 %159, label %.lr.ph43, label %._crit_edge44

.lr.ph43:                                         ; preds = %.preheader18
  %160 = add nsw i64 %157, %indvars.iv91
  %161 = mul nsw i64 %160, %153
  br label %162

; <label>:162                                     ; preds = %.lr.ph43, %162
  %indvars.iv89 = phi i64 [ 0, %.lr.ph43 ], [ %indvars.iv.next90, %162 ]
  %163 = phi i32 [ %158, %.lr.ph43 ], [ %178, %162 ]
  %164 = add nsw i64 %161, %indvars.iv89
  %165 = mul nsw i64 %164, %55
  %166 = trunc i64 %161 to i32
  %167 = add nsw i32 %166, %163
  %168 = mul nsw i32 %167, %4
  %169 = load i8**** %54, align 8, !tbaa !15
  %170 = getelementptr inbounds i8*** %169, i64 %indvars.iv130
  %171 = load i8*** %170, align 8, !tbaa !9
  %172 = load i8** %171, align 8, !tbaa !9
  %173 = getelementptr inbounds i8* %172, i64 %165
  %174 = sext i32 %168 to i64
  %175 = getelementptr inbounds i8* %172, i64 %174
  %176 = call i64 @llvm.objectsize.i64.p0i8(i8* %173, i1 false)
  %177 = call i8* @__memcpy_chk(i8* %173, i8* %175, i64 %55, i64 %176) #6
  %indvars.iv.next90 = add nuw nsw i64 %indvars.iv89, 1
  %178 = load i32* %57, align 4, !tbaa !2
  %179 = sext i32 %178 to i64
  %180 = icmp slt i64 %indvars.iv.next90, %179
  br i1 %180, label %162, label %._crit_edge44

._crit_edge44:                                    ; preds = %162, %.preheader18
  %181 = phi i32 [ %158, %.preheader18 ], [ %178, %162 ]
  %indvars.iv.next92 = add nuw nsw i64 %indvars.iv91, 1
  %lftr.wideiv93 = trunc i64 %indvars.iv91 to i32
  %exitcond94 = icmp eq i32 %lftr.wideiv93, %154
  br i1 %exitcond94, label %._crit_edge46, label %.preheader18

._crit_edge46:                                    ; preds = %._crit_edge44, %.preheader24
  %indvars.iv.next96 = add nuw nsw i64 %indvars.iv95, 1
  %182 = icmp slt i64 %indvars.iv.next96, %156
  br i1 %182, label %.preheader24, label %.loopexit34

.loopexit34:                                      ; preds = %._crit_edge46, %.preheader33, %142
  %183 = icmp ult i64 %144, 4294967296
  br i1 %183, label %.loopexit32, label %.preheader31

.preheader31:                                     ; preds = %.loopexit34
  %184 = load i32* %53, align 4, !tbaa !2
  %185 = icmp sgt i32 %184, 0
  br i1 %185, label %.preheader23.lr.ph, label %.loopexit32

.preheader23.lr.ph:                               ; preds = %.preheader31
  %186 = load i32* %49, align 4, !tbaa !2
  %187 = icmp sgt i32 %186, 0
  %188 = load i32* %50, align 4, !tbaa !2
  %189 = load i32* %51, align 4, !tbaa !2
  %190 = load i32* %52, align 4, !tbaa !2
  %191 = add i32 %186, -1
  br label %.preheader23

.preheader23:                                     ; preds = %.preheader23.lr.ph, %._crit_edge52
  %k.153 = phi i32 [ 0, %.preheader23.lr.ph ], [ %223, %._crit_edge52 ]
  br i1 %187, label %.preheader17.lr.ph, label %._crit_edge52

.preheader17.lr.ph:                               ; preds = %.preheader23
  %192 = mul nsw i32 %190, %k.153
  %.pre139 = load i32* %57, align 4, !tbaa !2
  br label %.preheader17

.preheader17:                                     ; preds = %._crit_edge50, %.preheader17.lr.ph
  %193 = phi i32 [ %.pre139, %.preheader17.lr.ph ], [ %221, %._crit_edge50 ]
  %j.151 = phi i32 [ 0, %.preheader17.lr.ph ], [ %222, %._crit_edge50 ]
  %194 = icmp sgt i32 %193, 0
  br i1 %194, label %.lr.ph49, label %._crit_edge50

.lr.ph49:                                         ; preds = %.preheader17
  %195 = add nsw i32 %192, %j.151
  %196 = mul nsw i32 %195, %189
  br label %197

; <label>:197                                     ; preds = %.lr.ph49, %197
  %indvars.iv97 = phi i64 [ 0, %.lr.ph49 ], [ %indvars.iv.next98, %197 ]
  %198 = phi i32 [ %193, %.lr.ph49 ], [ %218, %197 ]
  %199 = trunc i64 %indvars.iv97 to i32
  %200 = xor i32 %199, -1
  %201 = add i32 %188, %200
  %202 = add i32 %201, %196
  %203 = mul nsw i32 %202, %4
  %204 = xor i32 %198, -1
  %205 = add i32 %188, %204
  %206 = add i32 %205, %196
  %207 = mul nsw i32 %206, %4
  %208 = load i8**** %54, align 8, !tbaa !15
  %209 = getelementptr inbounds i8*** %208, i64 %indvars.iv130
  %210 = load i8*** %209, align 8, !tbaa !9
  %211 = load i8** %210, align 8, !tbaa !9
  %212 = sext i32 %203 to i64
  %213 = getelementptr inbounds i8* %211, i64 %212
  %214 = sext i32 %207 to i64
  %215 = getelementptr inbounds i8* %211, i64 %214
  %216 = call i64 @llvm.objectsize.i64.p0i8(i8* %213, i1 false)
  %217 = call i8* @__memcpy_chk(i8* %213, i8* %215, i64 %55, i64 %216) #6
  %indvars.iv.next98 = add nuw nsw i64 %indvars.iv97, 1
  %218 = load i32* %57, align 4, !tbaa !2
  %219 = sext i32 %218 to i64
  %220 = icmp slt i64 %indvars.iv.next98, %219
  br i1 %220, label %197, label %._crit_edge50

._crit_edge50:                                    ; preds = %197, %.preheader17
  %221 = phi i32 [ %193, %.preheader17 ], [ %218, %197 ]
  %222 = add nuw nsw i32 %j.151, 1
  %exitcond99 = icmp eq i32 %j.151, %191
  br i1 %exitcond99, label %._crit_edge52, label %.preheader17

._crit_edge52:                                    ; preds = %._crit_edge50, %.preheader23
  %223 = add nuw nsw i32 %k.153, 1
  %224 = icmp slt i32 %223, %184
  br i1 %224, label %.preheader23, label %.loopexit32

.loopexit32:                                      ; preds = %._crit_edge52, %.preheader31, %.loopexit34
  br i1 %44, label %225, label %.thread11

; <label>:225                                     ; preds = %.loopexit32
  %226 = bitcast i32* %45 to i64*
  %227 = load i64* %226, align 8
  %228 = trunc i64 %227 to i32
  %229 = icmp eq i32 %228, 0
  br i1 %229, label %.loopexit30, label %.preheader29

.preheader29:                                     ; preds = %225
  %230 = load i32* %53, align 4, !tbaa !2
  %231 = icmp sgt i32 %230, 0
  br i1 %231, label %.preheader22.lr.ph, label %.loopexit30

.preheader22.lr.ph:                               ; preds = %.preheader29
  %232 = load i32* %50, align 4, !tbaa !2
  %233 = icmp sgt i32 %232, 0
  %234 = load i32* %51, align 4, !tbaa !2
  %235 = load i32* %52, align 4, !tbaa !2
  %236 = add i32 %232, -1
  %237 = sext i32 %234 to i64
  %238 = sext i32 %235 to i64
  %239 = sext i32 %230 to i64
  %.pre140 = load i32* %56, align 4, !tbaa !2
  br label %.preheader22

.preheader22:                                     ; preds = %.preheader22.lr.ph, %._crit_edge58
  %240 = phi i32 [ %.pre140, %.preheader22.lr.ph ], [ %269, %._crit_edge58 ]
  %indvars.iv106 = phi i64 [ 0, %.preheader22.lr.ph ], [ %indvars.iv.next107, %._crit_edge58 ]
  %241 = icmp sgt i32 %240, 0
  br i1 %241, label %.preheader16.lr.ph, label %._crit_edge58

.preheader16.lr.ph:                               ; preds = %.preheader22
  %242 = mul nsw i64 %238, %indvars.iv106
  br label %.preheader16

.preheader16:                                     ; preds = %.preheader16.lr.ph, %265
  %243 = phi i32 [ %240, %.preheader16.lr.ph ], [ %266, %265 ]
  %indvars.iv104 = phi i64 [ 0, %.preheader16.lr.ph ], [ %indvars.iv.next105, %265 ]
  br i1 %233, label %.lr.ph55, label %265

.lr.ph55:                                         ; preds = %.preheader16
  %244 = add nsw i64 %242, %indvars.iv104
  %245 = mul nsw i64 %244, %237
  br label %246

; <label>:246                                     ; preds = %._crit_edge141, %.lr.ph55
  %247 = phi i32 [ %243, %.lr.ph55 ], [ %.pre142, %._crit_edge141 ]
  %indvars.iv100 = phi i64 [ 0, %.lr.ph55 ], [ %indvars.iv.next101, %._crit_edge141 ]
  %248 = add nsw i64 %245, %indvars.iv100
  %249 = mul nsw i64 %248, %55
  %250 = trunc i64 %242 to i32
  %251 = add nsw i32 %247, %250
  %252 = mul nsw i32 %251, %234
  %253 = trunc i64 %indvars.iv100 to i32
  %254 = add nsw i32 %252, %253
  %255 = mul nsw i32 %254, %4
  %256 = load i8**** %54, align 8, !tbaa !15
  %257 = getelementptr inbounds i8*** %256, i64 %indvars.iv130
  %258 = load i8*** %257, align 8, !tbaa !9
  %259 = load i8** %258, align 8, !tbaa !9
  %260 = getelementptr inbounds i8* %259, i64 %249
  %261 = sext i32 %255 to i64
  %262 = getelementptr inbounds i8* %259, i64 %261
  %263 = call i64 @llvm.objectsize.i64.p0i8(i8* %260, i1 false)
  %264 = call i8* @__memcpy_chk(i8* %260, i8* %262, i64 %55, i64 %263) #6
  %exitcond103 = icmp eq i32 %253, %236
  br i1 %exitcond103, label %._crit_edge56, label %._crit_edge141

._crit_edge141:                                   ; preds = %246
  %indvars.iv.next101 = add nuw nsw i64 %indvars.iv100, 1
  %.pre142 = load i32* %56, align 4, !tbaa !2
  br label %246

._crit_edge56:                                    ; preds = %246
  %.pre143 = load i32* %56, align 4, !tbaa !2
  br label %265

; <label>:265                                     ; preds = %._crit_edge56, %.preheader16
  %266 = phi i32 [ %.pre143, %._crit_edge56 ], [ %243, %.preheader16 ]
  %indvars.iv.next105 = add nuw nsw i64 %indvars.iv104, 1
  %267 = sext i32 %266 to i64
  %268 = icmp slt i64 %indvars.iv.next105, %267
  br i1 %268, label %.preheader16, label %._crit_edge58

._crit_edge58:                                    ; preds = %265, %.preheader22
  %269 = phi i32 [ %240, %.preheader22 ], [ %266, %265 ]
  %indvars.iv.next107 = add nuw nsw i64 %indvars.iv106, 1
  %270 = icmp slt i64 %indvars.iv.next107, %239
  br i1 %270, label %.preheader22, label %.loopexit30

.loopexit30:                                      ; preds = %._crit_edge58, %.preheader29, %225
  %271 = icmp ult i64 %227, 4294967296
  br i1 %271, label %.loopexit28, label %.preheader27

.preheader27:                                     ; preds = %.loopexit30
  %272 = load i32* %53, align 4, !tbaa !2
  %273 = icmp sgt i32 %272, 0
  br i1 %273, label %.preheader21.lr.ph, label %.loopexit28

.preheader21.lr.ph:                               ; preds = %.preheader27
  %274 = load i32* %50, align 4, !tbaa !2
  %275 = icmp sgt i32 %274, 0
  %276 = load i32* %51, align 4, !tbaa !2
  %277 = load i32* %49, align 4, !tbaa !2
  %278 = load i32* %52, align 4, !tbaa !2
  %279 = add i32 %277, -1
  %280 = sext i32 %274 to i64
  %.pre144 = load i32* %56, align 4, !tbaa !2
  br label %.preheader21

.preheader21:                                     ; preds = %.preheader21.lr.ph, %._crit_edge64
  %281 = phi i32 [ %.pre144, %.preheader21.lr.ph ], [ %313, %._crit_edge64 ]
  %k.365 = phi i32 [ 0, %.preheader21.lr.ph ], [ %314, %._crit_edge64 ]
  %282 = icmp sgt i32 %281, 0
  br i1 %282, label %.preheader15.lr.ph, label %._crit_edge64

.preheader15.lr.ph:                               ; preds = %.preheader21
  %283 = mul nsw i32 %278, %k.365
  br label %.preheader15

.preheader15:                                     ; preds = %.preheader15.lr.ph, %._crit_edge62
  %284 = phi i32 [ %281, %.preheader15.lr.ph ], [ %310, %._crit_edge62 ]
  %indvars.iv110 = phi i64 [ 0, %.preheader15.lr.ph ], [ %indvars.iv.next111, %._crit_edge62 ]
  br i1 %275, label %.lr.ph61, label %._crit_edge62

.lr.ph61:                                         ; preds = %.preheader15
  %285 = trunc i64 %indvars.iv110 to i32
  %286 = xor i32 %285, -1
  %287 = add i32 %277, %286
  %288 = add i32 %287, %283
  %289 = mul nsw i32 %288, %276
  %290 = sext i32 %289 to i64
  br label %._crit_edge145

._crit_edge145:                                   ; preds = %._crit_edge145, %.lr.ph61
  %291 = phi i32 [ %284, %.lr.ph61 ], [ %.pre146, %._crit_edge145 ]
  %indvars.iv108 = phi i64 [ 0, %.lr.ph61 ], [ %indvars.iv.next109, %._crit_edge145 ]
  %292 = add nsw i64 %290, %indvars.iv108
  %293 = mul nsw i64 %292, %55
  %294 = sub i32 %279, %291
  %295 = add i32 %294, %283
  %296 = mul nsw i32 %295, %276
  %297 = trunc i64 %indvars.iv108 to i32
  %298 = add nsw i32 %296, %297
  %299 = mul nsw i32 %298, %4
  %300 = load i8**** %54, align 8, !tbaa !15
  %301 = getelementptr inbounds i8*** %300, i64 %indvars.iv130
  %302 = load i8*** %301, align 8, !tbaa !9
  %303 = load i8** %302, align 8, !tbaa !9
  %304 = getelementptr inbounds i8* %303, i64 %293
  %305 = sext i32 %299 to i64
  %306 = getelementptr inbounds i8* %303, i64 %305
  %307 = call i64 @llvm.objectsize.i64.p0i8(i8* %304, i1 false)
  %308 = call i8* @__memcpy_chk(i8* %304, i8* %306, i64 %55, i64 %307) #6
  %indvars.iv.next109 = add nuw nsw i64 %indvars.iv108, 1
  %309 = icmp slt i64 %indvars.iv.next109, %280
  %.pre146 = load i32* %56, align 4, !tbaa !2
  br i1 %309, label %._crit_edge145, label %._crit_edge62

._crit_edge62:                                    ; preds = %._crit_edge145, %.preheader15
  %310 = phi i32 [ %284, %.preheader15 ], [ %.pre146, %._crit_edge145 ]
  %indvars.iv.next111 = add nuw nsw i64 %indvars.iv110, 1
  %311 = sext i32 %310 to i64
  %312 = icmp slt i64 %indvars.iv.next111, %311
  br i1 %312, label %.preheader15, label %._crit_edge64

._crit_edge64:                                    ; preds = %._crit_edge62, %.preheader21
  %313 = phi i32 [ %281, %.preheader21 ], [ %310, %._crit_edge62 ]
  %314 = add nuw nsw i32 %k.365, 1
  %315 = icmp slt i32 %314, %272
  br i1 %315, label %.preheader21, label %.loopexit28

.loopexit28:                                      ; preds = %._crit_edge64, %.preheader27, %.loopexit30
  br i1 %46, label %316, label %.thread11

; <label>:316                                     ; preds = %.loopexit28
  %317 = bitcast i32* %47 to i64*
  %318 = load i64* %317, align 16
  %319 = trunc i64 %318 to i32
  %320 = icmp eq i32 %319, 0
  br i1 %320, label %.loopexit, label %.preheader26

.preheader26:                                     ; preds = %316
  %321 = load i32* %48, align 4, !tbaa !2
  %322 = icmp sgt i32 %321, 0
  br i1 %322, label %.preheader20.lr.ph, label %.loopexit

.preheader20.lr.ph:                               ; preds = %.preheader26
  %323 = load i32* %49, align 4, !tbaa !2
  %324 = icmp sgt i32 %323, 0
  %325 = load i32* %50, align 4, !tbaa !2
  %326 = icmp sgt i32 %325, 0
  %327 = load i32* %51, align 4, !tbaa !2
  %328 = load i32* %52, align 4, !tbaa !2
  %329 = add i32 %325, -1
  %330 = sext i32 %327 to i64
  %331 = add i32 %323, -1
  %332 = sext i32 %328 to i64
  br label %.preheader20

.preheader20:                                     ; preds = %.preheader20.lr.ph, %357
  %333 = phi i32 [ %321, %.preheader20.lr.ph ], [ %358, %357 ]
  %indvars.iv120 = phi i64 [ 0, %.preheader20.lr.ph ], [ %indvars.iv.next121, %357 ]
  br i1 %324, label %.preheader14.lr.ph, label %357

.preheader14.lr.ph:                               ; preds = %.preheader20
  %334 = mul nsw i64 %332, %indvars.iv120
  br label %.preheader14

.preheader14:                                     ; preds = %._crit_edge68, %.preheader14.lr.ph
  %indvars.iv116 = phi i64 [ 0, %.preheader14.lr.ph ], [ %indvars.iv.next117, %._crit_edge68 ]
  br i1 %326, label %.lr.ph67, label %.preheader14._crit_edge

.preheader14._crit_edge:                          ; preds = %.preheader14
  %.pre162 = trunc i64 %indvars.iv116 to i32
  br label %._crit_edge68

.lr.ph67:                                         ; preds = %.preheader14
  %335 = add nsw i64 %334, %indvars.iv116
  %336 = mul nsw i64 %335, %330
  br label %337

; <label>:337                                     ; preds = %337, %.lr.ph67
  %indvars.iv112 = phi i64 [ 0, %.lr.ph67 ], [ %indvars.iv.next113, %337 ]
  %338 = add nsw i64 %336, %indvars.iv112
  %339 = mul nsw i64 %338, %55
  %340 = load i32* %48, align 4, !tbaa !2
  %341 = mul nsw i32 %340, %328
  %342 = trunc i64 %indvars.iv116 to i32
  %343 = add nsw i32 %341, %342
  %344 = mul nsw i32 %343, %327
  %345 = trunc i64 %indvars.iv112 to i32
  %346 = add nsw i32 %344, %345
  %347 = mul nsw i32 %346, %4
  %348 = load i8**** %54, align 8, !tbaa !15
  %349 = getelementptr inbounds i8*** %348, i64 %indvars.iv130
  %350 = load i8*** %349, align 8, !tbaa !9
  %351 = load i8** %350, align 8, !tbaa !9
  %352 = getelementptr inbounds i8* %351, i64 %339
  %353 = sext i32 %347 to i64
  %354 = getelementptr inbounds i8* %351, i64 %353
  %355 = call i64 @llvm.objectsize.i64.p0i8(i8* %352, i1 false)
  %356 = call i8* @__memcpy_chk(i8* %352, i8* %354, i64 %55, i64 %355) #6
  %indvars.iv.next113 = add nuw nsw i64 %indvars.iv112, 1
  %exitcond115 = icmp eq i32 %345, %329
  br i1 %exitcond115, label %._crit_edge68, label %337

._crit_edge68:                                    ; preds = %337, %.preheader14._crit_edge
  %lftr.wideiv118.pre-phi = phi i32 [ %.pre162, %.preheader14._crit_edge ], [ %342, %337 ]
  %indvars.iv.next117 = add nuw nsw i64 %indvars.iv116, 1
  %exitcond119 = icmp eq i32 %lftr.wideiv118.pre-phi, %331
  br i1 %exitcond119, label %._crit_edge71, label %.preheader14

._crit_edge71:                                    ; preds = %._crit_edge68
  %.pre148 = load i32* %48, align 4, !tbaa !2
  br label %357

; <label>:357                                     ; preds = %._crit_edge71, %.preheader20
  %358 = phi i32 [ %.pre148, %._crit_edge71 ], [ %333, %.preheader20 ]
  %indvars.iv.next121 = add nuw nsw i64 %indvars.iv120, 1
  %359 = sext i32 %358 to i64
  %360 = icmp slt i64 %indvars.iv.next121, %359
  br i1 %360, label %.preheader20, label %.loopexit

.loopexit:                                        ; preds = %357, %.preheader26, %316
  %361 = icmp ult i64 %318, 4294967296
  br i1 %361, label %.thread11, label %.preheader25

.preheader25:                                     ; preds = %.loopexit
  %362 = load i32* %48, align 4, !tbaa !2
  %363 = icmp sgt i32 %362, 0
  br i1 %363, label %.preheader19.lr.ph, label %.thread11

.preheader19.lr.ph:                               ; preds = %.preheader25
  %364 = load i32* %49, align 4, !tbaa !2
  %365 = icmp sgt i32 %364, 0
  %366 = load i32* %50, align 4, !tbaa !2
  %367 = icmp sgt i32 %366, 0
  %368 = load i32* %51, align 4, !tbaa !2
  %369 = load i32* %52, align 4, !tbaa !2
  %370 = load i32* %53, align 4, !tbaa !2
  %371 = add i32 %370, -1
  %372 = sext i32 %366 to i64
  %373 = sext i32 %368 to i64
  %374 = add i32 %364, -1
  br label %.preheader19

.preheader19:                                     ; preds = %.preheader19.lr.ph, %405
  %375 = phi i32 [ %362, %.preheader19.lr.ph ], [ %406, %405 ]
  %indvars.iv128 = phi i64 [ 0, %.preheader19.lr.ph ], [ %indvars.iv.next129, %405 ]
  br i1 %365, label %.preheader.lr.ph, label %405

.preheader.lr.ph:                                 ; preds = %.preheader19
  %376 = trunc i64 %indvars.iv128 to i32
  %377 = xor i32 %376, -1
  %378 = add i32 %370, %377
  %379 = mul nsw i32 %378, %369
  %380 = sext i32 %379 to i64
  br label %.preheader

.preheader:                                       ; preds = %._crit_edge75, %.preheader.lr.ph
  %indvars.iv124 = phi i64 [ 0, %.preheader.lr.ph ], [ %indvars.iv.next125, %._crit_edge75 ]
  br i1 %367, label %.lr.ph74, label %.preheader._crit_edge

.preheader._crit_edge:                            ; preds = %.preheader
  %.pre161 = trunc i64 %indvars.iv124 to i32
  br label %._crit_edge75

.lr.ph74:                                         ; preds = %.preheader
  %381 = add nsw i64 %380, %indvars.iv124
  %382 = mul nsw i64 %381, %373
  br label %383

; <label>:383                                     ; preds = %.lr.ph74, %383
  %indvars.iv122 = phi i64 [ 0, %.lr.ph74 ], [ %indvars.iv.next123, %383 ]
  %384 = add nsw i64 %382, %indvars.iv122
  %385 = mul nsw i64 %384, %55
  %386 = load i32* %48, align 4, !tbaa !2
  %387 = sub i32 %371, %386
  %388 = mul nsw i32 %387, %369
  %389 = trunc i64 %indvars.iv124 to i32
  %390 = add nsw i32 %388, %389
  %391 = mul nsw i32 %390, %368
  %392 = trunc i64 %indvars.iv122 to i32
  %393 = add nsw i32 %391, %392
  %394 = mul nsw i32 %393, %4
  %395 = load i8**** %54, align 8, !tbaa !15
  %396 = getelementptr inbounds i8*** %395, i64 %indvars.iv130
  %397 = load i8*** %396, align 8, !tbaa !9
  %398 = load i8** %397, align 8, !tbaa !9
  %399 = getelementptr inbounds i8* %398, i64 %385
  %400 = sext i32 %394 to i64
  %401 = getelementptr inbounds i8* %398, i64 %400
  %402 = call i64 @llvm.objectsize.i64.p0i8(i8* %399, i1 false)
  %403 = call i8* @__memcpy_chk(i8* %399, i8* %401, i64 %55, i64 %402) #6
  %indvars.iv.next123 = add nuw nsw i64 %indvars.iv122, 1
  %404 = icmp slt i64 %indvars.iv.next123, %372
  br i1 %404, label %383, label %._crit_edge75

._crit_edge75:                                    ; preds = %383, %.preheader._crit_edge
  %lftr.wideiv126.pre-phi = phi i32 [ %.pre161, %.preheader._crit_edge ], [ %389, %383 ]
  %indvars.iv.next125 = add nuw nsw i64 %indvars.iv124, 1
  %exitcond127 = icmp eq i32 %lftr.wideiv126.pre-phi, %374
  br i1 %exitcond127, label %._crit_edge78, label %.preheader

._crit_edge78:                                    ; preds = %._crit_edge75
  %.pre149 = load i32* %48, align 4, !tbaa !2
  br label %405

; <label>:405                                     ; preds = %._crit_edge78, %.preheader19
  %406 = phi i32 [ %.pre149, %._crit_edge78 ], [ %375, %.preheader19 ]
  %indvars.iv.next129 = add nuw nsw i64 %indvars.iv128, 1
  %407 = sext i32 %406 to i64
  %408 = icmp slt i64 %indvars.iv.next129, %407
  br i1 %408, label %.preheader19, label %.thread11

.thread11:                                        ; preds = %405, %.preheader36, %.preheader35, %.preheader25, %._crit_edge, %.loopexit32, %.loopexit, %.loopexit28
  %indvars.iv.next131 = add nsw i64 %indvars.iv130, 1
  %409 = icmp slt i64 %indvars.iv.next131, %70
  br i1 %409, label %71, label %.loopexit37

.loopexit37:                                      ; preds = %.thread11, %35, %33, %11, %6
  %.0 = phi i32 [ -1, %6 ], [ -2, %11 ], [ -3, %33 ], [ 0, %35 ], [ 0, %.thread11 ]
  ret i32 %.0
}

; Function Attrs: optsize
declare i32 @CCTK_NumVarsInGroupI(i32) #2

; Function Attrs: optsize
declare i32 @CCTK_VWarn(i32, i32, i8*, i8*, i8*, ...) #2

; Function Attrs: nounwind optsize ssp uwtable
define void @bndflatdirgi_(i32* nocapture %ierr, %struct.cGH* %GH, i32* nocapture readonly %stencil_size, i32* nocapture readonly %dir, i32* nocapture readonly %gi) #1 {
  %1 = load i32* %stencil_size, align 4, !tbaa !2
  %2 = load i32* %dir, align 4, !tbaa !2
  %3 = load i32* %gi, align 4, !tbaa !2
  %4 = tail call i32 @BndFlatDirGI(%struct.cGH* %GH, i32 %1, i32 %2, i32 %3) #7
  store i32 %4, i32* %ierr, align 4, !tbaa !2
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @BndFlatGI(%struct.cGH* %GH, i32* %stencil, i32 %gi) #1 {
  %1 = tail call i32 @CCTK_FirstVarIndexI(i32 %gi) #6
  %2 = icmp sgt i32 %1, -1
  br i1 %2, label %3, label %6

; <label>:3                                       ; preds = %0
  %4 = tail call i32 @CCTK_NumVarsInGroupI(i32 %gi) #6
  %5 = tail call fastcc i32 @ApplyBndFlat(%struct.cGH* %GH, i32 -1, i32* %stencil, i32 0, i32 %1, i32 %4) #7
  br label %8

; <label>:6                                       ; preds = %0
  %7 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 2, i32 215, i8* getelementptr inbounds ([83 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([36 x i8]* @.str3, i64 0, i64 0), i32 %gi) #6
  br label %8

; <label>:8                                       ; preds = %6, %3
  %retval.0 = phi i32 [ %5, %3 ], [ -1, %6 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize ssp uwtable
define void @bndflatgi_(i32* nocapture %ierr, %struct.cGH* %GH, i32* %stencil, i32* nocapture readonly %gi) #1 {
  %1 = load i32* %gi, align 4, !tbaa !2
  %2 = tail call i32 @BndFlatGI(%struct.cGH* %GH, i32* %stencil, i32 %1) #7
  store i32 %2, i32* %ierr, align 4, !tbaa !2
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @BndFlatDirGN(%struct.cGH* %GH, i32 %stencil_size, i32 %dir, i8* %gn) #1 {
  %1 = tail call i32 @CCTK_GroupIndex(i8* %gn) #6
  %2 = icmp sgt i32 %1, -1
  br i1 %2, label %3, label %5

; <label>:3                                       ; preds = %0
  %4 = tail call i32 @BndFlatDirGI(%struct.cGH* %GH, i32 %stencil_size, i32 %dir, i32 %1) #7
  br label %7

; <label>:5                                       ; preds = %0
  %6 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 2, i32 286, i8* getelementptr inbounds ([83 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8]* @.str4, i64 0, i64 0), i8* %gn) #6
  br label %7

; <label>:7                                       ; preds = %5, %3
  %retval.0 = phi i32 [ %4, %3 ], [ -1, %5 ]
  ret i32 %retval.0
}

; Function Attrs: optsize
declare i32 @CCTK_GroupIndex(i8*) #2

; Function Attrs: nounwind optsize ssp uwtable
define void @bndflatdirgn_(i32* nocapture %ierr, %struct.cGH* %GH, i32* nocapture readonly %stencil_size, i32* nocapture readonly %dir, i8* %cctk_str1, i32 %cctk_strlen1) #1 {
  %1 = tail call i8* @Util_NullTerminateString(i8* %cctk_str1, i32 %cctk_strlen1) #6
  %2 = load i32* %stencil_size, align 4, !tbaa !2
  %3 = load i32* %dir, align 4, !tbaa !2
  %4 = tail call i32 @BndFlatDirGN(%struct.cGH* %GH, i32 %2, i32 %3, i8* %1) #7
  store i32 %4, i32* %ierr, align 4, !tbaa !2
  tail call void @free(i8* %1) #7
  ret void
}

; Function Attrs: optsize
declare i8* @Util_NullTerminateString(i8*, i32) #2

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #3

; Function Attrs: nounwind optsize ssp uwtable
define i32 @BndFlatGN(%struct.cGH* %GH, i32* %stencil, i8* %gn) #1 {
  %1 = tail call i32 @CCTK_GroupIndex(i8* %gn) #6
  %2 = icmp sgt i32 %1, -1
  br i1 %2, label %3, label %5

; <label>:3                                       ; preds = %0
  %4 = tail call i32 @BndFlatGI(%struct.cGH* %GH, i32* %stencil, i32 %1) #7
  br label %7

; <label>:5                                       ; preds = %0
  %6 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 2, i32 352, i8* getelementptr inbounds ([83 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([37 x i8]* @.str5, i64 0, i64 0), i8* %gn) #6
  br label %7

; <label>:7                                       ; preds = %5, %3
  %retval.0 = phi i32 [ %4, %3 ], [ -1, %5 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize ssp uwtable
define void @bndflatgn_(i32* nocapture %ierr, %struct.cGH* %GH, i32* %stencil, i8* %cctk_str1, i32 %cctk_strlen1) #1 {
  %1 = tail call i8* @Util_NullTerminateString(i8* %cctk_str1, i32 %cctk_strlen1) #6
  %2 = tail call i32 @BndFlatGN(%struct.cGH* %GH, i32* %stencil, i8* %1) #7
  store i32 %2, i32* %ierr, align 4, !tbaa !2
  tail call void @free(i8* %1) #7
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @BndFlatDirVI(%struct.cGH* %GH, i32 %stencil_size, i32 %dir, i32 %vi) #1 {
  %1 = icmp sgt i32 %vi, -1
  br i1 %1, label %2, label %7

; <label>:2                                       ; preds = %0
  %3 = tail call i32 @CCTK_NumVars() #6
  %4 = icmp sgt i32 %3, %vi
  br i1 %4, label %5, label %7

; <label>:5                                       ; preds = %2
  %6 = tail call fastcc i32 @ApplyBndFlat(%struct.cGH* %GH, i32 %stencil_size, i32* null, i32 %dir, i32 %vi, i32 1) #7
  br label %9

; <label>:7                                       ; preds = %2, %0
  %8 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 2, i32 425, i8* getelementptr inbounds ([83 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([42 x i8]* @.str6, i64 0, i64 0), i32 %vi) #6
  br label %9

; <label>:9                                       ; preds = %7, %5
  %retval.0 = phi i32 [ %6, %5 ], [ -1, %7 ]
  ret i32 %retval.0
}

; Function Attrs: optsize
declare i32 @CCTK_NumVars() #2

; Function Attrs: nounwind optsize ssp uwtable
define void @bndflatdirvi_(i32* nocapture %ierr, %struct.cGH* %GH, i32* nocapture readonly %stencil_size, i32* nocapture readonly %dir, i32* nocapture readonly %vi) #1 {
  %1 = load i32* %stencil_size, align 4, !tbaa !2
  %2 = load i32* %dir, align 4, !tbaa !2
  %3 = load i32* %vi, align 4, !tbaa !2
  %4 = tail call i32 @BndFlatDirVI(%struct.cGH* %GH, i32 %1, i32 %2, i32 %3) #7
  store i32 %4, i32* %ierr, align 4, !tbaa !2
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @BndFlatVI(%struct.cGH* %GH, i32* %stencil, i32 %vi) #1 {
  %1 = icmp sgt i32 %vi, -1
  br i1 %1, label %2, label %7

; <label>:2                                       ; preds = %0
  %3 = tail call i32 @CCTK_NumVars() #6
  %4 = icmp sgt i32 %3, %vi
  br i1 %4, label %5, label %7

; <label>:5                                       ; preds = %2
  %6 = tail call fastcc i32 @ApplyBndFlat(%struct.cGH* %GH, i32 -1, i32* %stencil, i32 0, i32 %vi, i32 1) #7
  br label %9

; <label>:7                                       ; preds = %2, %0
  %8 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 2, i32 488, i8* getelementptr inbounds ([83 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8]* @.str7, i64 0, i64 0), i32 %vi) #6
  br label %9

; <label>:9                                       ; preds = %7, %5
  %retval.0 = phi i32 [ %6, %5 ], [ -1, %7 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize ssp uwtable
define void @bndflatvi_(i32* nocapture %ierr, %struct.cGH* %GH, i32* %stencil, i32* nocapture readonly %vi) #1 {
  %1 = load i32* %vi, align 4, !tbaa !2
  %2 = tail call i32 @BndFlatVI(%struct.cGH* %GH, i32* %stencil, i32 %1) #7
  store i32 %2, i32* %ierr, align 4, !tbaa !2
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @BndFlatDirVN(%struct.cGH* %GH, i32 %stencil_size, i32 %dir, i8* %vn) #1 {
  %1 = tail call i32 @CCTK_VarIndex(i8* %vn) #6
  %2 = icmp sgt i32 %1, -1
  br i1 %2, label %3, label %5

; <label>:3                                       ; preds = %0
  %4 = tail call i32 @BndFlatDirVI(%struct.cGH* %GH, i32 %stencil_size, i32 %dir, i32 %1) #7
  br label %7

; <label>:5                                       ; preds = %0
  %6 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 2, i32 560, i8* getelementptr inbounds ([83 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([43 x i8]* @.str8, i64 0, i64 0), i8* %vn) #6
  br label %7

; <label>:7                                       ; preds = %5, %3
  %retval.0 = phi i32 [ %4, %3 ], [ -1, %5 ]
  ret i32 %retval.0
}

; Function Attrs: optsize
declare i32 @CCTK_VarIndex(i8*) #2

; Function Attrs: nounwind optsize ssp uwtable
define void @bndflatdirvn_(i32* nocapture %ierr, %struct.cGH* %GH, i32* nocapture readonly %stencil_size, i32* nocapture readonly %dir, i8* %cctk_str1, i32 %cctk_strlen1) #1 {
  %1 = tail call i8* @Util_NullTerminateString(i8* %cctk_str1, i32 %cctk_strlen1) #6
  %2 = load i32* %stencil_size, align 4, !tbaa !2
  %3 = load i32* %dir, align 4, !tbaa !2
  %4 = tail call i32 @BndFlatDirVN(%struct.cGH* %GH, i32 %2, i32 %3, i8* %1) #7
  store i32 %4, i32* %ierr, align 4, !tbaa !2
  tail call void @free(i8* %1) #7
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @BndFlatVN(%struct.cGH* %GH, i32* %stencil, i8* %vn) #1 {
  %1 = tail call i32 @CCTK_VarIndex(i8* %vn) #6
  %2 = icmp sgt i32 %1, -1
  br i1 %2, label %3, label %5

; <label>:3                                       ; preds = %0
  %4 = tail call i32 @BndFlatVI(%struct.cGH* %GH, i32* %stencil, i32 %1) #7
  br label %7

; <label>:5                                       ; preds = %0
  %6 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 2, i32 626, i8* getelementptr inbounds ([83 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8]* @.str9, i64 0, i64 0), i8* %vn) #6
  br label %7

; <label>:7                                       ; preds = %5, %3
  %retval.0 = phi i32 [ %4, %3 ], [ -1, %5 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize ssp uwtable
define void @bndflatvn_(i32* nocapture %ierr, %struct.cGH* %GH, i32* %stencil, i8* %cctk_str1, i32 %cctk_strlen1) #1 {
  %1 = tail call i8* @Util_NullTerminateString(i8* %cctk_str1, i32 %cctk_strlen1) #6
  %2 = tail call i32 @BndFlatVN(%struct.cGH* %GH, i32* %stencil, i8* %1) #7
  store i32 %2, i32* %ierr, align 4, !tbaa !2
  tail call void @free(i8* %1) #7
  ret void
}

; Function Attrs: optsize
declare i32 @CCTK_GroupIndexFromVarI(i32) #2

; Function Attrs: optsize
declare i32 @CCTK_GroupDimI(i32) #2

; Function Attrs: optsize
declare i32 @CCTK_VarTypeSize(i32) #2

; Function Attrs: optsize
declare i32 @CCTK_VarTypeI(i32) #2

; Function Attrs: nounwind optsize
declare i8* @__memcpy_chk(i8*, i8*, i64, i64) #3

; Function Attrs: optsize
declare i32 @CCTK_Warn(i32, i32, i8*, i8*, i8*) #2

; Function Attrs: optsize
declare i32 @CCTK_GroupStaggerDirArrayGI(i32*, i32, i32) #2

; Function Attrs: optsize
declare i8* @CCTK_GHExtension(%struct.cGH*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #4

; Function Attrs: nounwind readnone
declare i64 @llvm.objectsize.i64.p0i8(i8*, i1) #5

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #4

declare void @memset_pattern16(i8*, i8*, i64)

attributes #0 = { nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readnone }
attributes #6 = { nounwind optsize }
attributes #7 = { optsize }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!2 = !{!3, !3, i64 0}
!3 = !{!"int", !4, i64 0}
!4 = !{!"omnipotent char", !5, i64 0}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!7, !8, i64 0}
!7 = !{!"Symmetry", !8, i64 0}
!8 = !{!"any pointer", !4, i64 0}
!9 = !{!8, !8, i64 0}
!10 = !{!11, !8, i64 16}
!11 = !{!"", !3, i64 0, !3, i64 4, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !8, i64 40, !8, i64 48, !8, i64 56, !12, i64 64, !8, i64 72, !8, i64 80, !8, i64 88, !8, i64 96, !3, i64 104, !8, i64 112, !12, i64 120, !8, i64 128, !8, i64 136, !8, i64 144}
!12 = !{!"double", !4, i64 0}
!13 = !{!11, !8, i64 40}
!14 = !{!11, !8, i64 88}
!15 = !{!11, !8, i64 128}