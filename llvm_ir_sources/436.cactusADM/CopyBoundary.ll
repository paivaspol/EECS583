; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/Boundary/CopyBoundary.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.cGH = type { i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, double, double*, double*, i32*, i32*, i32, i32*, double, i8***, i8**, %struct.cGHGroupData* }
%struct.cGHGroupData = type { i8, i8 }

@.str = private unnamed_addr constant [83 x i8] c"../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/Boundary/CopyBoundary.c\00", align 1
@.str1 = private unnamed_addr constant [9 x i8] c"Boundary\00", align 1
@.str2 = private unnamed_addr constant [54 x i8] c"Invalid variable indices %d and/or %d in BndCopyDirVI\00", align 1
@.str3 = private unnamed_addr constant [51 x i8] c"Invalid variable indices %d and/or %d in BndCopyVI\00", align 1
@.str4 = private unnamed_addr constant [51 x i8] c"Invalid group indices %d and/or %d in BndCopyDirGI\00", align 1
@.str5 = private unnamed_addr constant [48 x i8] c"Invalid group indices %d and/or %d in BndCopyGI\00", align 1
@.str6 = private unnamed_addr constant [53 x i8] c"Invalid group names '%s' and/or '%s' in BndCopyDirGN\00", align 1
@.str7 = private unnamed_addr constant [50 x i8] c"Invalid group names '%s' and/or '%s' in BndCopyGN\00", align 1
@.str8 = private unnamed_addr constant [56 x i8] c"Invalid variable names '%s' and/or '%s' in BndCopyDirVN\00", align 1
@.str9 = private unnamed_addr constant [53 x i8] c"Invalid variable names '%s' and/or '%s' in BndCopyVN\00", align 1
@.str10 = private unnamed_addr constant [95 x i8] c"$Header: /cactus/CactusBase/Boundary/src/CopyBoundary.c,v 1.21 2001/09/14 11:46:22 allen Exp $\00", align 1
@.str11 = private unnamed_addr constant [39 x i8] c"Variable dimension of %d not supported\00", align 1
@.str12 = private unnamed_addr constant [53 x i8] c"ApplyBndCopy: direction %d greater than dimension %d\00", align 1
@.str13 = private unnamed_addr constant [58 x i8] c"ApplyBndCopy: NULL pointer passed for stencil width array\00", align 1
@.str14 = private unnamed_addr constant [9 x i8] c"Symmetry\00", align 1
@.memset_pattern = internal unnamed_addr constant [4 x i32] [i32 1, i32 1, i32 1, i32 1], align 16

; Function Attrs: nounwind optsize readnone ssp uwtable
define i8* @CCTKi_version_CactusBase_Boundary_CopyBoundary_c() #0 {
  ret i8* getelementptr inbounds ([95 x i8]* @.str10, i64 0, i64 0)
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @BndCopyDirVI(%struct.cGH* %GH, i32 %stencil_size, i32 %dir, i32 %vi_to, i32 %vi_from) #1 {
  %1 = tail call i32 @CCTK_NumVars() #6
  %2 = icmp sgt i32 %vi_to, -1
  br i1 %2, label %3, label %9

; <label>:3                                       ; preds = %0
  %4 = icmp sgt i32 %1, %vi_to
  %5 = icmp sgt i32 %vi_from, -1
  %or.cond = and i1 %5, %4
  %6 = icmp sgt i32 %1, %vi_from
  %or.cond2 = and i1 %6, %or.cond
  br i1 %or.cond2, label %7, label %9

; <label>:7                                       ; preds = %3
  %8 = tail call fastcc i32 @ApplyBndCopy(%struct.cGH* %GH, i32 %stencil_size, i32* null, i32 %dir, i32 %vi_to, i32 %vi_from, i32 1) #7
  br label %11

; <label>:9                                       ; preds = %3, %0
  %10 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 2, i32 157, i8* getelementptr inbounds ([83 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str2, i64 0, i64 0), i32 %vi_to, i32 %vi_from) #6
  br label %11

; <label>:11                                      ; preds = %9, %7
  %retval.0 = phi i32 [ %8, %7 ], [ -1, %9 ]
  ret i32 %retval.0
}

; Function Attrs: optsize
declare i32 @CCTK_NumVars() #2

; Function Attrs: nounwind optsize ssp uwtable
define internal fastcc i32 @ApplyBndCopy(%struct.cGH* %GH, i32 %stencil_dir, i32* %stencil_alldirs, i32 %dir, i32 %first_var_to, i32 %first_var_from, i32 %num_vars) #1 {
  %doBC = alloca [6 x i32], align 16
  %dstag = alloca [3 x i32], align 4
  %lsh = alloca [3 x i32], align 4
  %lsh80 = bitcast [3 x i32]* %lsh to i8*
  %lssh = alloca [3 x i32], align 4
  %stencil = alloca [3 x i32], align 4
  %1 = tail call i32 @CCTK_GroupIndexFromVarI(i32 %first_var_to) #6
  %2 = tail call i32 @CCTK_GroupDimI(i32 %1) #6
  %3 = tail call i32 @CCTK_VarTypeI(i32 %first_var_to) #6
  %4 = tail call i32 @CCTK_VarTypeSize(i32 %3) #6
  %5 = icmp sgt i32 %2, 3
  br i1 %5, label %6, label %8

; <label>:6                                       ; preds = %0
  %7 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 883, i8* getelementptr inbounds ([83 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8]* @.str11, i64 0, i64 0), i32 %2) #6
  br label %.loopexit30

; <label>:8                                       ; preds = %0
  %ispos = icmp sgt i32 %dir, -1
  %neg = sub i32 0, %dir
  %9 = select i1 %ispos, i32 %dir, i32 %neg
  %10 = icmp sgt i32 %9, %2
  br i1 %10, label %11, label %13

; <label>:11                                      ; preds = %8
  %12 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 891, i8* getelementptr inbounds ([83 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str12, i64 0, i64 0), i32 %dir, i32 %2) #6
  br label %.loopexit30

; <label>:13                                      ; preds = %8
  %14 = icmp ne i32 %dir, 0
  br i1 %14, label %15, label %25

; <label>:15                                      ; preds = %13
  %16 = add nsw i32 %9, -1
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [3 x i32]* %stencil, i64 0, i64 %17
  store i32 %stencil_dir, i32* %18, align 4, !tbaa !2
  br label %.preheader31

.preheader31:                                     ; preds = %27, %15
  %19 = icmp slt i32 %2, 3
  br i1 %19, label %.lr.ph76, label %35

.lr.ph76:                                         ; preds = %.preheader31
  %20 = sext i32 %2 to i64
  %scevgep = getelementptr [3 x i32]* %lssh, i64 0, i64 %20
  %scevgep130 = bitcast i32* %scevgep to i8*
  %21 = sub i32 2, %2
  %22 = zext i32 %21 to i64
  %23 = shl nuw nsw i64 %22, 2
  %24 = add nuw nsw i64 %23, 4
  call void @memset_pattern16(i8* %scevgep130, i8* bitcast ([4 x i32]* @.memset_pattern to i8*), i64 %24) #4
  %scevgep131 = getelementptr [3 x i32]* %lsh, i64 0, i64 %20
  %scevgep131132 = bitcast i32* %scevgep131 to i8*
  call void @llvm.memset.p0i8.i64(i8* %scevgep131132, i8 0, i64 %24, i32 4, i1 false)
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
  br label %.preheader31

; <label>:33                                      ; preds = %25
  %34 = tail call i32 @CCTK_Warn(i32 1, i32 908, i8* getelementptr inbounds ([83 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([58 x i8]* @.str13, i64 0, i64 0)) #6
  br label %.loopexit30

; <label>:35                                      ; preds = %.lr.ph76, %.preheader31
  %36 = getelementptr inbounds [3 x i32]* %dstag, i64 0, i64 0
  %37 = call i32 @CCTK_GroupStaggerDirArrayGI(i32* %36, i32 %2, i32 %1) #6
  %38 = call i8* @CCTK_GHExtension(%struct.cGH* %GH, i8* getelementptr inbounds ([9 x i8]* @.str14, i64 0, i64 0)) #6
  %39 = icmp sgt i32 %num_vars, 0
  br i1 %39, label %.lr.ph74, label %.loopexit30

.lr.ph74:                                         ; preds = %35
  %40 = add nsw i32 %num_vars, %first_var_to
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
  %69 = sext i32 %first_var_to to i64
  %70 = sext i32 %40 to i64
  %71 = sext i32 %first_var_from to i64
  br label %72

; <label>:72                                      ; preds = %.lr.ph74, %.thread6
  %indvars.iv124 = phi i64 [ %71, %.lr.ph74 ], [ %indvars.iv.next125, %.thread6 ]
  %indvars.iv122 = phi i64 [ %69, %.lr.ph74 ], [ %indvars.iv.next123, %.thread6 ]
  call void @llvm.memset.p0i8.i64(i8* %41, i8 1, i64 24, i32 16, i1 false)
  br i1 %42, label %.preheader28, label %.preheader29

.preheader29:                                     ; preds = %72
  br i1 %43, label %.lr.ph, label %.thread6

.lr.ph:                                           ; preds = %.preheader29
  %73 = load i32*** %63, align 8, !tbaa !6
  %74 = getelementptr inbounds i32** %73, i64 %indvars.iv122
  %75 = load i32** %74, align 8, !tbaa !9
  br label %79

.preheader28:                                     ; preds = %79, %72
  br i1 %43, label %.lr.ph34, label %.thread6

.lr.ph34:                                         ; preds = %.preheader28
  %76 = load i32** %58, align 8, !tbaa !10
  %77 = bitcast i32* %76 to i8*
  %78 = load i32** %59, align 8, !tbaa !13
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %lsh80, i8* %77, i64 %68, i32 4, i1 false)
  br label %87

; <label>:79                                      ; preds = %.lr.ph, %79
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %79 ]
  %80 = getelementptr inbounds i32* %75, i64 %indvars.iv
  %81 = load i32* %80, align 4, !tbaa !2
  %82 = and i32 %81, -2
  %83 = icmp eq i32 %82, -42
  %84 = zext i1 %83 to i32
  %85 = getelementptr inbounds [6 x i32]* %doBC, i64 0, i64 %indvars.iv
  store i32 %84, i32* %85, align 4, !tbaa !2
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %86 = icmp slt i64 %indvars.iv.next, %64
  br i1 %86, label %79, label %.preheader28

; <label>:87                                      ; preds = %142, %.lr.ph34
  %indvars.iv78 = phi i64 [ 0, %.lr.ph34 ], [ %indvars.iv.next79, %142 ]
  %88 = getelementptr inbounds [3 x i32]* %dstag, i64 0, i64 %indvars.iv78
  %89 = load i32* %88, align 4, !tbaa !2
  %90 = mul nsw i64 %indvars.iv78, 3
  %91 = trunc i64 %90 to i32
  %92 = add nsw i32 %89, %91
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32* %78, i64 %93
  %95 = load i32* %94, align 4, !tbaa !2
  %96 = getelementptr inbounds [3 x i32]* %lssh, i64 0, i64 %indvars.iv78
  store i32 %95, i32* %96, align 4, !tbaa !2
  %97 = getelementptr inbounds i32* %76, i64 %indvars.iv78
  %98 = load i32* %97, align 4, !tbaa !2
  %99 = icmp sgt i32 %98, 1
  %100 = trunc i64 %indvars.iv78 to i32
  %101 = shl nsw i32 %100, 1
  %102 = sext i32 %101 to i64
  br i1 %99, label %104, label %._crit_edge140

._crit_edge140:                                   ; preds = %87
  %103 = getelementptr inbounds [6 x i32]* %doBC, i64 0, i64 %102
  store i32 0, i32* %103, align 8, !tbaa !2
  %.pre147 = or i32 %101, 1
  %.pre149 = sext i32 %.pre147 to i64
  br label %119

; <label>:104                                     ; preds = %87
  %105 = load i32** %60, align 8, !tbaa !14
  %106 = getelementptr inbounds i32* %105, i64 %102
  %107 = load i32* %106, align 4, !tbaa !2
  %108 = icmp ne i32 %107, 0
  %109 = zext i1 %108 to i32
  %110 = getelementptr inbounds [6 x i32]* %doBC, i64 0, i64 %102
  %111 = load i32* %110, align 8, !tbaa !2
  %112 = and i32 %111, %109
  store i32 %112, i32* %110, align 8, !tbaa !2
  %113 = or i32 %101, 1
  %114 = sext i32 %113 to i64
  %115 = load i32** %60, align 8, !tbaa !14
  %116 = getelementptr inbounds i32* %115, i64 %114
  %117 = load i32* %116, align 4, !tbaa !2
  %118 = icmp ne i32 %117, 0
  br label %119

; <label>:119                                     ; preds = %._crit_edge140, %104
  %120 = phi i32 [ 0, %._crit_edge140 ], [ %112, %104 ]
  %121 = phi i32* [ %103, %._crit_edge140 ], [ %110, %104 ]
  %.pre-phi150 = phi i64 [ %.pre149, %._crit_edge140 ], [ %114, %104 ]
  %122 = phi i1 [ false, %._crit_edge140 ], [ %118, %104 ]
  %123 = zext i1 %122 to i32
  %124 = getelementptr inbounds [6 x i32]* %doBC, i64 0, i64 %.pre-phi150
  %125 = load i32* %124, align 4, !tbaa !2
  %126 = and i32 %125, %123
  store i32 %126, i32* %124, align 4, !tbaa !2
  br i1 %14, label %127, label %142

; <label>:127                                     ; preds = %119
  br i1 %61, label %128, label %134

; <label>:128                                     ; preds = %127
  %129 = add nuw nsw i64 %indvars.iv78, 1
  %130 = trunc i64 %129 to i32
  %131 = icmp eq i32 %130, %9
  %132 = zext i1 %131 to i32
  %133 = and i32 %120, %132
  store i32 %133, i32* %121, align 8, !tbaa !2
  br label %138

; <label>:134                                     ; preds = %127
  store i32 0, i32* %121, align 8, !tbaa !2
  %135 = add nuw nsw i64 %indvars.iv78, 1
  %136 = trunc i64 %135 to i32
  %137 = icmp eq i32 %136, %9
  br label %138

; <label>:138                                     ; preds = %128, %134
  %139 = phi i1 [ false, %128 ], [ %137, %134 ]
  %140 = zext i1 %139 to i32
  %141 = and i32 %126, %140
  store i32 %141, i32* %124, align 4, !tbaa !2
  br label %142

; <label>:142                                     ; preds = %119, %138
  %indvars.iv.next79 = add nuw nsw i64 %indvars.iv78, 1
  %exitcond = icmp eq i32 %100, %65
  br i1 %exitcond, label %._crit_edge, label %87

._crit_edge:                                      ; preds = %142
  br i1 %43, label %143, label %.thread6

; <label>:143                                     ; preds = %._crit_edge
  %144 = bitcast [6 x i32]* %doBC to i64*
  %145 = load i64* %144, align 16
  %146 = trunc i64 %145 to i32
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %.loopexit27, label %.preheader26

.preheader26:                                     ; preds = %143
  %148 = load i32* %53, align 4, !tbaa !2
  %149 = icmp sgt i32 %148, 0
  br i1 %149, label %.preheader17.lr.ph, label %.loopexit27

.preheader17.lr.ph:                               ; preds = %.preheader26
  %150 = load i32* %49, align 4, !tbaa !2
  %151 = icmp sgt i32 %150, 0
  %152 = load i32* %51, align 4, !tbaa !2
  %153 = load i32* %52, align 4, !tbaa !2
  %154 = sext i32 %152 to i64
  %155 = add i32 %150, -1
  %156 = sext i32 %153 to i64
  %157 = sext i32 %148 to i64
  br label %.preheader17

.preheader17:                                     ; preds = %.preheader17.lr.ph, %._crit_edge39
  %indvars.iv87 = phi i64 [ 0, %.preheader17.lr.ph ], [ %indvars.iv.next88, %._crit_edge39 ]
  br i1 %151, label %.preheader11.lr.ph, label %._crit_edge39

.preheader11.lr.ph:                               ; preds = %.preheader17
  %158 = mul nsw i64 %156, %indvars.iv87
  %.pre = load i32* %57, align 4, !tbaa !2
  br label %.preheader11

.preheader11:                                     ; preds = %._crit_edge37, %.preheader11.lr.ph
  %159 = phi i32 [ %.pre, %.preheader11.lr.ph ], [ %180, %._crit_edge37 ]
  %indvars.iv83 = phi i64 [ 0, %.preheader11.lr.ph ], [ %indvars.iv.next84, %._crit_edge37 ]
  %160 = icmp sgt i32 %159, 0
  br i1 %160, label %.lr.ph36, label %._crit_edge37

.lr.ph36:                                         ; preds = %.preheader11
  %161 = add nsw i64 %158, %indvars.iv83
  %162 = mul nsw i64 %161, %154
  br label %163

; <label>:163                                     ; preds = %.lr.ph36, %163
  %indvars.iv81 = phi i64 [ 0, %.lr.ph36 ], [ %indvars.iv.next82, %163 ]
  %164 = add nsw i64 %162, %indvars.iv81
  %165 = mul nsw i64 %164, %55
  %166 = load i8**** %54, align 8, !tbaa !15
  %167 = getelementptr inbounds i8*** %166, i64 %indvars.iv122
  %168 = load i8*** %167, align 8, !tbaa !9
  %169 = load i8** %168, align 8, !tbaa !9
  %170 = getelementptr inbounds i8* %169, i64 %165
  %171 = getelementptr inbounds i8*** %166, i64 %indvars.iv124
  %172 = load i8*** %171, align 8, !tbaa !9
  %173 = load i8** %172, align 8, !tbaa !9
  %174 = getelementptr inbounds i8* %173, i64 %165
  %175 = call i64 @llvm.objectsize.i64.p0i8(i8* %170, i1 false)
  %176 = call i8* @__memcpy_chk(i8* %170, i8* %174, i64 %55, i64 %175) #6
  %indvars.iv.next82 = add nuw nsw i64 %indvars.iv81, 1
  %177 = load i32* %57, align 4, !tbaa !2
  %178 = sext i32 %177 to i64
  %179 = icmp slt i64 %indvars.iv.next82, %178
  br i1 %179, label %163, label %._crit_edge37

._crit_edge37:                                    ; preds = %163, %.preheader11
  %180 = phi i32 [ %159, %.preheader11 ], [ %177, %163 ]
  %indvars.iv.next84 = add nuw nsw i64 %indvars.iv83, 1
  %lftr.wideiv85 = trunc i64 %indvars.iv83 to i32
  %exitcond86 = icmp eq i32 %lftr.wideiv85, %155
  br i1 %exitcond86, label %._crit_edge39, label %.preheader11

._crit_edge39:                                    ; preds = %._crit_edge37, %.preheader17
  %indvars.iv.next88 = add nuw nsw i64 %indvars.iv87, 1
  %181 = icmp slt i64 %indvars.iv.next88, %157
  br i1 %181, label %.preheader17, label %.loopexit27

.loopexit27:                                      ; preds = %._crit_edge39, %.preheader26, %143
  %182 = icmp ult i64 %145, 4294967296
  br i1 %182, label %.loopexit25, label %.preheader24

.preheader24:                                     ; preds = %.loopexit27
  %183 = load i32* %53, align 4, !tbaa !2
  %184 = icmp sgt i32 %183, 0
  br i1 %184, label %.preheader16.lr.ph, label %.loopexit25

.preheader16.lr.ph:                               ; preds = %.preheader24
  %185 = load i32* %49, align 4, !tbaa !2
  %186 = icmp sgt i32 %185, 0
  %187 = load i32* %50, align 4, !tbaa !2
  %188 = load i32* %51, align 4, !tbaa !2
  %189 = load i32* %52, align 4, !tbaa !2
  %190 = add i32 %185, -1
  br label %.preheader16

.preheader16:                                     ; preds = %.preheader16.lr.ph, %._crit_edge45
  %k.146 = phi i32 [ 0, %.preheader16.lr.ph ], [ %219, %._crit_edge45 ]
  br i1 %186, label %.preheader10.lr.ph, label %._crit_edge45

.preheader10.lr.ph:                               ; preds = %.preheader16
  %191 = mul nsw i32 %189, %k.146
  %.pre133 = load i32* %57, align 4, !tbaa !2
  br label %.preheader10

.preheader10:                                     ; preds = %._crit_edge43, %.preheader10.lr.ph
  %192 = phi i32 [ %.pre133, %.preheader10.lr.ph ], [ %217, %._crit_edge43 ]
  %j.144 = phi i32 [ 0, %.preheader10.lr.ph ], [ %218, %._crit_edge43 ]
  %193 = icmp sgt i32 %192, 0
  br i1 %193, label %.lr.ph42, label %._crit_edge43

.lr.ph42:                                         ; preds = %.preheader10
  %194 = add nsw i32 %191, %j.144
  %195 = mul nsw i32 %194, %188
  br label %196

; <label>:196                                     ; preds = %.lr.ph42, %196
  %indvars.iv89 = phi i64 [ 0, %.lr.ph42 ], [ %indvars.iv.next90, %196 ]
  %197 = trunc i64 %indvars.iv89 to i32
  %198 = xor i32 %197, -1
  %199 = add i32 %187, %198
  %200 = add i32 %199, %195
  %201 = mul nsw i32 %200, %4
  %202 = load i8**** %54, align 8, !tbaa !15
  %203 = getelementptr inbounds i8*** %202, i64 %indvars.iv122
  %204 = load i8*** %203, align 8, !tbaa !9
  %205 = load i8** %204, align 8, !tbaa !9
  %206 = sext i32 %201 to i64
  %207 = getelementptr inbounds i8* %205, i64 %206
  %208 = getelementptr inbounds i8*** %202, i64 %indvars.iv124
  %209 = load i8*** %208, align 8, !tbaa !9
  %210 = load i8** %209, align 8, !tbaa !9
  %211 = getelementptr inbounds i8* %210, i64 %206
  %212 = call i64 @llvm.objectsize.i64.p0i8(i8* %207, i1 false)
  %213 = call i8* @__memcpy_chk(i8* %207, i8* %211, i64 %55, i64 %212) #6
  %indvars.iv.next90 = add nuw nsw i64 %indvars.iv89, 1
  %214 = load i32* %57, align 4, !tbaa !2
  %215 = sext i32 %214 to i64
  %216 = icmp slt i64 %indvars.iv.next90, %215
  br i1 %216, label %196, label %._crit_edge43

._crit_edge43:                                    ; preds = %196, %.preheader10
  %217 = phi i32 [ %192, %.preheader10 ], [ %214, %196 ]
  %218 = add nuw nsw i32 %j.144, 1
  %exitcond91 = icmp eq i32 %j.144, %190
  br i1 %exitcond91, label %._crit_edge45, label %.preheader10

._crit_edge45:                                    ; preds = %._crit_edge43, %.preheader16
  %219 = add nuw nsw i32 %k.146, 1
  %220 = icmp slt i32 %219, %183
  br i1 %220, label %.preheader16, label %.loopexit25

.loopexit25:                                      ; preds = %._crit_edge45, %.preheader24, %.loopexit27
  br i1 %44, label %221, label %.thread6

; <label>:221                                     ; preds = %.loopexit25
  %222 = bitcast i32* %45 to i64*
  %223 = load i64* %222, align 8
  %224 = trunc i64 %223 to i32
  %225 = icmp eq i32 %224, 0
  br i1 %225, label %.loopexit23, label %.preheader22

.preheader22:                                     ; preds = %221
  %226 = load i32* %53, align 4, !tbaa !2
  %227 = icmp sgt i32 %226, 0
  br i1 %227, label %.preheader15.lr.ph, label %.loopexit23

.preheader15.lr.ph:                               ; preds = %.preheader22
  %228 = load i32* %50, align 4, !tbaa !2
  %229 = icmp sgt i32 %228, 0
  %230 = load i32* %51, align 4, !tbaa !2
  %231 = load i32* %52, align 4, !tbaa !2
  %232 = add i32 %228, -1
  %233 = sext i32 %230 to i64
  %234 = sext i32 %231 to i64
  %235 = sext i32 %226 to i64
  %.pre134 = load i32* %56, align 4, !tbaa !2
  br label %.preheader15

.preheader15:                                     ; preds = %.preheader15.lr.ph, %._crit_edge51
  %236 = phi i32 [ %.pre134, %.preheader15.lr.ph ], [ %260, %._crit_edge51 ]
  %indvars.iv98 = phi i64 [ 0, %.preheader15.lr.ph ], [ %indvars.iv.next99, %._crit_edge51 ]
  %237 = icmp sgt i32 %236, 0
  br i1 %237, label %.preheader9.lr.ph, label %._crit_edge51

.preheader9.lr.ph:                                ; preds = %.preheader15
  %238 = mul nsw i64 %234, %indvars.iv98
  br label %.preheader9

.preheader9:                                      ; preds = %.preheader9.lr.ph, %256
  %239 = phi i32 [ %236, %.preheader9.lr.ph ], [ %257, %256 ]
  %indvars.iv96 = phi i64 [ 0, %.preheader9.lr.ph ], [ %indvars.iv.next97, %256 ]
  br i1 %229, label %.lr.ph48, label %256

.lr.ph48:                                         ; preds = %.preheader9
  %240 = add nsw i64 %238, %indvars.iv96
  %241 = mul nsw i64 %240, %233
  br label %242

; <label>:242                                     ; preds = %242, %.lr.ph48
  %indvars.iv92 = phi i64 [ 0, %.lr.ph48 ], [ %indvars.iv.next93, %242 ]
  %243 = add nsw i64 %241, %indvars.iv92
  %244 = mul nsw i64 %243, %55
  %245 = load i8**** %54, align 8, !tbaa !15
  %246 = getelementptr inbounds i8*** %245, i64 %indvars.iv122
  %247 = load i8*** %246, align 8, !tbaa !9
  %248 = load i8** %247, align 8, !tbaa !9
  %249 = getelementptr inbounds i8* %248, i64 %244
  %250 = getelementptr inbounds i8*** %245, i64 %indvars.iv124
  %251 = load i8*** %250, align 8, !tbaa !9
  %252 = load i8** %251, align 8, !tbaa !9
  %253 = getelementptr inbounds i8* %252, i64 %244
  %254 = call i64 @llvm.objectsize.i64.p0i8(i8* %249, i1 false)
  %255 = call i8* @__memcpy_chk(i8* %249, i8* %253, i64 %55, i64 %254) #6
  %indvars.iv.next93 = add nuw nsw i64 %indvars.iv92, 1
  %lftr.wideiv94 = trunc i64 %indvars.iv92 to i32
  %exitcond95 = icmp eq i32 %lftr.wideiv94, %232
  br i1 %exitcond95, label %._crit_edge49, label %242

._crit_edge49:                                    ; preds = %242
  %.pre135 = load i32* %56, align 4, !tbaa !2
  br label %256

; <label>:256                                     ; preds = %._crit_edge49, %.preheader9
  %257 = phi i32 [ %.pre135, %._crit_edge49 ], [ %239, %.preheader9 ]
  %indvars.iv.next97 = add nuw nsw i64 %indvars.iv96, 1
  %258 = sext i32 %257 to i64
  %259 = icmp slt i64 %indvars.iv.next97, %258
  br i1 %259, label %.preheader9, label %._crit_edge51

._crit_edge51:                                    ; preds = %256, %.preheader15
  %260 = phi i32 [ %236, %.preheader15 ], [ %257, %256 ]
  %indvars.iv.next99 = add nuw nsw i64 %indvars.iv98, 1
  %261 = icmp slt i64 %indvars.iv.next99, %235
  br i1 %261, label %.preheader15, label %.loopexit23

.loopexit23:                                      ; preds = %._crit_edge51, %.preheader22, %221
  %262 = icmp ult i64 %223, 4294967296
  br i1 %262, label %.loopexit21, label %.preheader20

.preheader20:                                     ; preds = %.loopexit23
  %263 = load i32* %53, align 4, !tbaa !2
  %264 = icmp sgt i32 %263, 0
  br i1 %264, label %.preheader14.lr.ph, label %.loopexit21

.preheader14.lr.ph:                               ; preds = %.preheader20
  %265 = load i32* %50, align 4, !tbaa !2
  %266 = icmp sgt i32 %265, 0
  %267 = load i32* %51, align 4, !tbaa !2
  %268 = load i32* %49, align 4, !tbaa !2
  %269 = load i32* %52, align 4, !tbaa !2
  %270 = sext i32 %265 to i64
  %.pre136 = load i32* %56, align 4, !tbaa !2
  br label %.preheader14

.preheader14:                                     ; preds = %.preheader14.lr.ph, %._crit_edge57
  %271 = phi i32 [ %.pre136, %.preheader14.lr.ph ], [ %300, %._crit_edge57 ]
  %k.358 = phi i32 [ 0, %.preheader14.lr.ph ], [ %301, %._crit_edge57 ]
  %272 = icmp sgt i32 %271, 0
  br i1 %272, label %.preheader8.lr.ph, label %._crit_edge57

.preheader8.lr.ph:                                ; preds = %.preheader14
  %273 = mul nsw i32 %269, %k.358
  br label %.preheader8

.preheader8:                                      ; preds = %.preheader8.lr.ph, %296
  %274 = phi i32 [ %271, %.preheader8.lr.ph ], [ %297, %296 ]
  %indvars.iv102 = phi i64 [ 0, %.preheader8.lr.ph ], [ %indvars.iv.next103, %296 ]
  br i1 %266, label %.lr.ph54, label %296

.lr.ph54:                                         ; preds = %.preheader8
  %275 = trunc i64 %indvars.iv102 to i32
  %276 = xor i32 %275, -1
  %277 = add i32 %268, %276
  %278 = add i32 %277, %273
  %279 = mul nsw i32 %278, %267
  %280 = sext i32 %279 to i64
  br label %281

; <label>:281                                     ; preds = %.lr.ph54, %281
  %indvars.iv100 = phi i64 [ 0, %.lr.ph54 ], [ %indvars.iv.next101, %281 ]
  %282 = add nsw i64 %280, %indvars.iv100
  %283 = mul nsw i64 %282, %55
  %284 = load i8**** %54, align 8, !tbaa !15
  %285 = getelementptr inbounds i8*** %284, i64 %indvars.iv122
  %286 = load i8*** %285, align 8, !tbaa !9
  %287 = load i8** %286, align 8, !tbaa !9
  %288 = getelementptr inbounds i8* %287, i64 %283
  %289 = getelementptr inbounds i8*** %284, i64 %indvars.iv124
  %290 = load i8*** %289, align 8, !tbaa !9
  %291 = load i8** %290, align 8, !tbaa !9
  %292 = getelementptr inbounds i8* %291, i64 %283
  %293 = call i64 @llvm.objectsize.i64.p0i8(i8* %288, i1 false)
  %294 = call i8* @__memcpy_chk(i8* %288, i8* %292, i64 %55, i64 %293) #6
  %indvars.iv.next101 = add nuw nsw i64 %indvars.iv100, 1
  %295 = icmp slt i64 %indvars.iv.next101, %270
  br i1 %295, label %281, label %._crit_edge55

._crit_edge55:                                    ; preds = %281
  %.pre137 = load i32* %56, align 4, !tbaa !2
  br label %296

; <label>:296                                     ; preds = %._crit_edge55, %.preheader8
  %297 = phi i32 [ %.pre137, %._crit_edge55 ], [ %274, %.preheader8 ]
  %indvars.iv.next103 = add nuw nsw i64 %indvars.iv102, 1
  %298 = sext i32 %297 to i64
  %299 = icmp slt i64 %indvars.iv.next103, %298
  br i1 %299, label %.preheader8, label %._crit_edge57

._crit_edge57:                                    ; preds = %296, %.preheader14
  %300 = phi i32 [ %271, %.preheader14 ], [ %297, %296 ]
  %301 = add nuw nsw i32 %k.358, 1
  %302 = icmp slt i32 %301, %263
  br i1 %302, label %.preheader14, label %.loopexit21

.loopexit21:                                      ; preds = %._crit_edge57, %.preheader20, %.loopexit23
  br i1 %46, label %303, label %.thread6

; <label>:303                                     ; preds = %.loopexit21
  %304 = bitcast i32* %47 to i64*
  %305 = load i64* %304, align 16
  %306 = trunc i64 %305 to i32
  %307 = icmp eq i32 %306, 0
  br i1 %307, label %.loopexit, label %.preheader19

.preheader19:                                     ; preds = %303
  %308 = load i32* %48, align 4, !tbaa !2
  %309 = icmp sgt i32 %308, 0
  br i1 %309, label %.preheader13.lr.ph, label %.loopexit

.preheader13.lr.ph:                               ; preds = %.preheader19
  %310 = load i32* %49, align 4, !tbaa !2
  %311 = icmp sgt i32 %310, 0
  %312 = load i32* %50, align 4, !tbaa !2
  %313 = icmp sgt i32 %312, 0
  %314 = load i32* %51, align 4, !tbaa !2
  %315 = load i32* %52, align 4, !tbaa !2
  %316 = add i32 %312, -1
  %317 = sext i32 %314 to i64
  %318 = add i32 %310, -1
  %319 = sext i32 %315 to i64
  br label %.preheader13

.preheader13:                                     ; preds = %.preheader13.lr.ph, %338
  %320 = phi i32 [ %308, %.preheader13.lr.ph ], [ %339, %338 ]
  %indvars.iv112 = phi i64 [ 0, %.preheader13.lr.ph ], [ %indvars.iv.next113, %338 ]
  br i1 %311, label %.preheader7.lr.ph, label %338

.preheader7.lr.ph:                                ; preds = %.preheader13
  %321 = mul nsw i64 %319, %indvars.iv112
  br label %.preheader7

.preheader7:                                      ; preds = %._crit_edge61, %.preheader7.lr.ph
  %indvars.iv108 = phi i64 [ 0, %.preheader7.lr.ph ], [ %indvars.iv.next109, %._crit_edge61 ]
  br i1 %313, label %.lr.ph60, label %._crit_edge61

.lr.ph60:                                         ; preds = %.preheader7
  %322 = add nsw i64 %321, %indvars.iv108
  %323 = mul nsw i64 %322, %317
  br label %324

; <label>:324                                     ; preds = %324, %.lr.ph60
  %indvars.iv104 = phi i64 [ 0, %.lr.ph60 ], [ %indvars.iv.next105, %324 ]
  %325 = add nsw i64 %323, %indvars.iv104
  %326 = mul nsw i64 %325, %55
  %327 = load i8**** %54, align 8, !tbaa !15
  %328 = getelementptr inbounds i8*** %327, i64 %indvars.iv122
  %329 = load i8*** %328, align 8, !tbaa !9
  %330 = load i8** %329, align 8, !tbaa !9
  %331 = getelementptr inbounds i8* %330, i64 %326
  %332 = getelementptr inbounds i8*** %327, i64 %indvars.iv124
  %333 = load i8*** %332, align 8, !tbaa !9
  %334 = load i8** %333, align 8, !tbaa !9
  %335 = getelementptr inbounds i8* %334, i64 %326
  %336 = call i64 @llvm.objectsize.i64.p0i8(i8* %331, i1 false)
  %337 = call i8* @__memcpy_chk(i8* %331, i8* %335, i64 %55, i64 %336) #6
  %indvars.iv.next105 = add nuw nsw i64 %indvars.iv104, 1
  %lftr.wideiv106 = trunc i64 %indvars.iv104 to i32
  %exitcond107 = icmp eq i32 %lftr.wideiv106, %316
  br i1 %exitcond107, label %._crit_edge61, label %324

._crit_edge61:                                    ; preds = %324, %.preheader7
  %indvars.iv.next109 = add nuw nsw i64 %indvars.iv108, 1
  %lftr.wideiv110 = trunc i64 %indvars.iv108 to i32
  %exitcond111 = icmp eq i32 %lftr.wideiv110, %318
  br i1 %exitcond111, label %._crit_edge63, label %.preheader7

._crit_edge63:                                    ; preds = %._crit_edge61
  %.pre138 = load i32* %48, align 4, !tbaa !2
  br label %338

; <label>:338                                     ; preds = %._crit_edge63, %.preheader13
  %339 = phi i32 [ %.pre138, %._crit_edge63 ], [ %320, %.preheader13 ]
  %indvars.iv.next113 = add nuw nsw i64 %indvars.iv112, 1
  %340 = sext i32 %339 to i64
  %341 = icmp slt i64 %indvars.iv.next113, %340
  br i1 %341, label %.preheader13, label %.loopexit

.loopexit:                                        ; preds = %338, %.preheader19, %303
  %342 = icmp ult i64 %305, 4294967296
  br i1 %342, label %.thread6, label %.preheader18

.preheader18:                                     ; preds = %.loopexit
  %343 = load i32* %48, align 4, !tbaa !2
  %344 = icmp sgt i32 %343, 0
  br i1 %344, label %.preheader12.lr.ph, label %.thread6

.preheader12.lr.ph:                               ; preds = %.preheader18
  %345 = load i32* %49, align 4, !tbaa !2
  %346 = icmp sgt i32 %345, 0
  %347 = load i32* %50, align 4, !tbaa !2
  %348 = icmp sgt i32 %347, 0
  %349 = load i32* %51, align 4, !tbaa !2
  %350 = load i32* %52, align 4, !tbaa !2
  %351 = load i32* %53, align 4, !tbaa !2
  %352 = sext i32 %347 to i64
  %353 = sext i32 %349 to i64
  %354 = add i32 %345, -1
  br label %.preheader12

.preheader12:                                     ; preds = %.preheader12.lr.ph, %378
  %355 = phi i32 [ %343, %.preheader12.lr.ph ], [ %379, %378 ]
  %indvars.iv120 = phi i64 [ 0, %.preheader12.lr.ph ], [ %indvars.iv.next121, %378 ]
  br i1 %346, label %.preheader.lr.ph, label %378

.preheader.lr.ph:                                 ; preds = %.preheader12
  %356 = trunc i64 %indvars.iv120 to i32
  %357 = xor i32 %356, -1
  %358 = add i32 %351, %357
  %359 = mul nsw i32 %358, %350
  %360 = sext i32 %359 to i64
  br label %.preheader

.preheader:                                       ; preds = %._crit_edge67, %.preheader.lr.ph
  %indvars.iv116 = phi i64 [ 0, %.preheader.lr.ph ], [ %indvars.iv.next117, %._crit_edge67 ]
  br i1 %348, label %.lr.ph66, label %._crit_edge67

.lr.ph66:                                         ; preds = %.preheader
  %361 = add nsw i64 %360, %indvars.iv116
  %362 = mul nsw i64 %361, %353
  br label %363

; <label>:363                                     ; preds = %.lr.ph66, %363
  %indvars.iv114 = phi i64 [ 0, %.lr.ph66 ], [ %indvars.iv.next115, %363 ]
  %364 = add nsw i64 %362, %indvars.iv114
  %365 = mul nsw i64 %364, %55
  %366 = load i8**** %54, align 8, !tbaa !15
  %367 = getelementptr inbounds i8*** %366, i64 %indvars.iv122
  %368 = load i8*** %367, align 8, !tbaa !9
  %369 = load i8** %368, align 8, !tbaa !9
  %370 = getelementptr inbounds i8* %369, i64 %365
  %371 = getelementptr inbounds i8*** %366, i64 %indvars.iv124
  %372 = load i8*** %371, align 8, !tbaa !9
  %373 = load i8** %372, align 8, !tbaa !9
  %374 = getelementptr inbounds i8* %373, i64 %365
  %375 = call i64 @llvm.objectsize.i64.p0i8(i8* %370, i1 false)
  %376 = call i8* @__memcpy_chk(i8* %370, i8* %374, i64 %55, i64 %375) #6
  %indvars.iv.next115 = add nuw nsw i64 %indvars.iv114, 1
  %377 = icmp slt i64 %indvars.iv.next115, %352
  br i1 %377, label %363, label %._crit_edge67

._crit_edge67:                                    ; preds = %363, %.preheader
  %indvars.iv.next117 = add nuw nsw i64 %indvars.iv116, 1
  %lftr.wideiv118 = trunc i64 %indvars.iv116 to i32
  %exitcond119 = icmp eq i32 %lftr.wideiv118, %354
  br i1 %exitcond119, label %._crit_edge69, label %.preheader

._crit_edge69:                                    ; preds = %._crit_edge67
  %.pre139 = load i32* %48, align 4, !tbaa !2
  br label %378

; <label>:378                                     ; preds = %._crit_edge69, %.preheader12
  %379 = phi i32 [ %.pre139, %._crit_edge69 ], [ %355, %.preheader12 ]
  %indvars.iv.next121 = add nuw nsw i64 %indvars.iv120, 1
  %380 = sext i32 %379 to i64
  %381 = icmp slt i64 %indvars.iv.next121, %380
  br i1 %381, label %.preheader12, label %.thread6

.thread6:                                         ; preds = %378, %.preheader29, %.preheader28, %.preheader18, %._crit_edge, %.loopexit25, %.loopexit, %.loopexit21
  %indvars.iv.next123 = add nsw i64 %indvars.iv122, 1
  %indvars.iv.next125 = add nsw i64 %indvars.iv124, 1
  %382 = icmp slt i64 %indvars.iv.next123, %70
  br i1 %382, label %72, label %.loopexit30

.loopexit30:                                      ; preds = %.thread6, %35, %33, %11, %6
  %.0 = phi i32 [ -1, %6 ], [ -2, %11 ], [ -3, %33 ], [ 0, %35 ], [ 0, %.thread6 ]
  ret i32 %.0
}

; Function Attrs: optsize
declare i32 @CCTK_VWarn(i32, i32, i8*, i8*, i8*, ...) #2

; Function Attrs: nounwind optsize ssp uwtable
define void @bndcopydirvi_(i32* nocapture %ierr, %struct.cGH* %GH, i32* nocapture readonly %stencil_size, i32* nocapture readonly %dir, i32* nocapture readonly %vi_to, i32* nocapture readonly %vi_from) #1 {
  %1 = load i32* %stencil_size, align 4, !tbaa !2
  %2 = load i32* %dir, align 4, !tbaa !2
  %3 = load i32* %vi_to, align 4, !tbaa !2
  %4 = load i32* %vi_from, align 4, !tbaa !2
  %5 = tail call i32 @BndCopyDirVI(%struct.cGH* %GH, i32 %1, i32 %2, i32 %3, i32 %4) #7
  store i32 %5, i32* %ierr, align 4, !tbaa !2
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @BndCopyVI(%struct.cGH* %GH, i32* %stencil, i32 %vi_to, i32 %vi_from) #1 {
  %1 = tail call i32 @CCTK_NumVars() #6
  %2 = icmp sgt i32 %vi_to, -1
  br i1 %2, label %3, label %9

; <label>:3                                       ; preds = %0
  %4 = icmp sgt i32 %1, %vi_to
  %5 = icmp sgt i32 %vi_from, -1
  %or.cond = and i1 %5, %4
  %6 = icmp sgt i32 %1, %vi_from
  %or.cond2 = and i1 %6, %or.cond
  br i1 %or.cond2, label %7, label %9

; <label>:7                                       ; preds = %3
  %8 = tail call fastcc i32 @ApplyBndCopy(%struct.cGH* %GH, i32 -1, i32* %stencil, i32 0, i32 %vi_to, i32 %vi_from, i32 1) #7
  br label %11

; <label>:9                                       ; preds = %3, %0
  %10 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 2, i32 229, i8* getelementptr inbounds ([83 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([51 x i8]* @.str3, i64 0, i64 0), i32 %vi_to, i32 %vi_from) #6
  br label %11

; <label>:11                                      ; preds = %9, %7
  %retval.0 = phi i32 [ %8, %7 ], [ -1, %9 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize ssp uwtable
define void @bndcopyvi_(i32* nocapture %ierr, %struct.cGH* %GH, i32* %stencil, i32* nocapture readonly %vi_to, i32* nocapture readonly %vi_from) #1 {
  %1 = load i32* %vi_to, align 4, !tbaa !2
  %2 = load i32* %vi_from, align 4, !tbaa !2
  %3 = tail call i32 @BndCopyVI(%struct.cGH* %GH, i32* %stencil, i32 %1, i32 %2) #7
  store i32 %3, i32* %ierr, align 4, !tbaa !2
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @BndCopyDirGI(%struct.cGH* %GH, i32 %stencil_size, i32 %dir, i32 %gi_to, i32 %gi_from) #1 {
  %1 = tail call i32 @CCTK_FirstVarIndexI(i32 %gi_to) #6
  %2 = tail call i32 @CCTK_FirstVarIndexI(i32 %gi_from) #6
  %3 = or i32 %2, %1
  %4 = icmp sgt i32 %3, -1
  br i1 %4, label %5, label %8

; <label>:5                                       ; preds = %0
  %6 = tail call i32 @CCTK_NumVarsInGroupI(i32 %gi_to) #6
  %7 = tail call fastcc i32 @ApplyBndCopy(%struct.cGH* %GH, i32 %stencil_size, i32* null, i32 %dir, i32 %1, i32 %2, i32 %6) #7
  br label %10

; <label>:8                                       ; preds = %0
  %9 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 2, i32 310, i8* getelementptr inbounds ([83 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([51 x i8]* @.str4, i64 0, i64 0), i32 %gi_to, i32 %gi_from) #6
  br label %10

; <label>:10                                      ; preds = %8, %5
  %retval.0 = phi i32 [ %7, %5 ], [ -1, %8 ]
  ret i32 %retval.0
}

; Function Attrs: optsize
declare i32 @CCTK_FirstVarIndexI(i32) #2

; Function Attrs: optsize
declare i32 @CCTK_NumVarsInGroupI(i32) #2

; Function Attrs: nounwind optsize ssp uwtable
define void @bndcopydirgi_(i32* nocapture %ierr, %struct.cGH* %GH, i32* nocapture readonly %stencil_size, i32* nocapture readonly %dir, i32* nocapture readonly %gi_to, i32* nocapture readonly %gi_from) #1 {
  %1 = load i32* %stencil_size, align 4, !tbaa !2
  %2 = load i32* %dir, align 4, !tbaa !2
  %3 = load i32* %gi_to, align 4, !tbaa !2
  %4 = load i32* %gi_from, align 4, !tbaa !2
  %5 = tail call i32 @BndCopyDirGI(%struct.cGH* %GH, i32 %1, i32 %2, i32 %3, i32 %4) #7
  store i32 %5, i32* %ierr, align 4, !tbaa !2
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @BndCopyGI(%struct.cGH* %GH, i32* %stencil, i32 %gi_to, i32 %gi_from) #1 {
  %1 = tail call i32 @CCTK_FirstVarIndexI(i32 %gi_to) #6
  %2 = tail call i32 @CCTK_FirstVarIndexI(i32 %gi_from) #6
  %3 = or i32 %2, %1
  %4 = icmp sgt i32 %3, -1
  br i1 %4, label %5, label %8

; <label>:5                                       ; preds = %0
  %6 = tail call i32 @CCTK_NumVarsInGroupI(i32 %gi_to) #6
  %7 = tail call fastcc i32 @ApplyBndCopy(%struct.cGH* %GH, i32 -1, i32* %stencil, i32 0, i32 %1, i32 %2, i32 %6) #7
  br label %10

; <label>:8                                       ; preds = %0
  %9 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 2, i32 384, i8* getelementptr inbounds ([83 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([48 x i8]* @.str5, i64 0, i64 0), i32 %gi_to, i32 %gi_from) #6
  br label %10

; <label>:10                                      ; preds = %8, %5
  %retval.0 = phi i32 [ %7, %5 ], [ -1, %8 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize ssp uwtable
define void @bndcopygi_(i32* nocapture %ierr, %struct.cGH* %GH, i32* %stencil, i32* nocapture readonly %gi_to, i32* nocapture readonly %gi_from) #1 {
  %1 = load i32* %gi_to, align 4, !tbaa !2
  %2 = load i32* %gi_from, align 4, !tbaa !2
  %3 = tail call i32 @BndCopyGI(%struct.cGH* %GH, i32* %stencil, i32 %1, i32 %2) #7
  store i32 %3, i32* %ierr, align 4, !tbaa !2
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @BndCopyDirGN(%struct.cGH* %GH, i32 %stencil_size, i32 %dir, i8* %gname_to, i8* %gname_from) #1 {
  %1 = tail call i32 @CCTK_GroupIndex(i8* %gname_to) #6
  %2 = tail call i32 @CCTK_GroupIndex(i8* %gname_from) #6
  %3 = tail call i32 @CCTK_NumGroups() #6
  %4 = icmp sgt i32 %1, -1
  br i1 %4, label %5, label %11

; <label>:5                                       ; preds = %0
  %6 = icmp slt i32 %1, %3
  %7 = icmp sgt i32 %2, -1
  %or.cond = and i1 %7, %6
  %8 = icmp slt i32 %2, %3
  %or.cond2 = and i1 %8, %or.cond
  br i1 %or.cond2, label %9, label %11

; <label>:9                                       ; preds = %5
  %10 = tail call i32 @BndCopyDirGI(%struct.cGH* %GH, i32 %stencil_size, i32 %dir, i32 %1, i32 %2) #7
  br label %13

; <label>:11                                      ; preds = %5, %0
  %12 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 2, i32 466, i8* getelementptr inbounds ([83 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str6, i64 0, i64 0), i8* %gname_to, i8* %gname_from) #6
  br label %13

; <label>:13                                      ; preds = %11, %9
  %retval.0 = phi i32 [ %10, %9 ], [ -1, %11 ]
  ret i32 %retval.0
}

; Function Attrs: optsize
declare i32 @CCTK_GroupIndex(i8*) #2

; Function Attrs: optsize
declare i32 @CCTK_NumGroups() #2

; Function Attrs: nounwind optsize ssp uwtable
define void @bndcopydirgn_(i32* nocapture %ierr, %struct.cGH* %GH, i32* nocapture readonly %stencil_size, i32* nocapture readonly %dir, i8* %cctk_str1, i8* %cctk_str2, i32 %cctk_strlen1, i32 %cctk_strlen2) #1 {
  %1 = tail call i8* @Util_NullTerminateString(i8* %cctk_str1, i32 %cctk_strlen1) #6
  %2 = tail call i8* @Util_NullTerminateString(i8* %cctk_str2, i32 %cctk_strlen2) #6
  %3 = load i32* %stencil_size, align 4, !tbaa !2
  %4 = load i32* %dir, align 4, !tbaa !2
  %5 = tail call i32 @BndCopyDirGN(%struct.cGH* %GH, i32 %3, i32 %4, i8* %1, i8* %2) #7
  store i32 %5, i32* %ierr, align 4, !tbaa !2
  tail call void @free(i8* %1) #7
  tail call void @free(i8* %2) #7
  ret void
}

; Function Attrs: optsize
declare i8* @Util_NullTerminateString(i8*, i32) #2

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #3

; Function Attrs: nounwind optsize ssp uwtable
define i32 @BndCopyGN(%struct.cGH* %GH, i32* %stencil, i8* %gname_to, i8* %gname_from) #1 {
  %1 = tail call i32 @CCTK_GroupIndex(i8* %gname_to) #6
  %2 = tail call i32 @CCTK_GroupIndex(i8* %gname_from) #6
  %3 = tail call i32 @CCTK_NumGroups() #6
  %4 = icmp sgt i32 %1, -1
  br i1 %4, label %5, label %11

; <label>:5                                       ; preds = %0
  %6 = icmp slt i32 %1, %3
  %7 = icmp sgt i32 %2, -1
  %or.cond = and i1 %7, %6
  %8 = icmp slt i32 %2, %3
  %or.cond2 = and i1 %8, %or.cond
  br i1 %or.cond2, label %9, label %11

; <label>:9                                       ; preds = %5
  %10 = tail call i32 @BndCopyGI(%struct.cGH* %GH, i32* %stencil, i32 %1, i32 %2) #7
  br label %13

; <label>:11                                      ; preds = %5, %0
  %12 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 2, i32 543, i8* getelementptr inbounds ([83 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([50 x i8]* @.str7, i64 0, i64 0), i8* %gname_to, i8* %gname_from) #6
  br label %13

; <label>:13                                      ; preds = %11, %9
  %retval.0 = phi i32 [ %10, %9 ], [ -1, %11 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize ssp uwtable
define void @bndcopygn_(i32* nocapture %ierr, %struct.cGH* %GH, i32* %stencil, i8* %cctk_str1, i8* %cctk_str2, i32 %cctk_strlen1, i32 %cctk_strlen2) #1 {
  %1 = tail call i8* @Util_NullTerminateString(i8* %cctk_str1, i32 %cctk_strlen1) #6
  %2 = tail call i8* @Util_NullTerminateString(i8* %cctk_str2, i32 %cctk_strlen2) #6
  %3 = tail call i32 @BndCopyGN(%struct.cGH* %GH, i32* %stencil, i8* %1, i8* %2) #7
  store i32 %3, i32* %ierr, align 4, !tbaa !2
  tail call void @free(i8* %1) #7
  tail call void @free(i8* %2) #7
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @BndCopyDirVN(%struct.cGH* %GH, i32 %stencil_size, i32 %dir, i8* %vname_to, i8* %vname_from) #1 {
  %1 = tail call i32 @CCTK_VarIndex(i8* %vname_to) #6
  %2 = tail call i32 @CCTK_VarIndex(i8* %vname_from) #6
  %3 = tail call i32 @CCTK_NumVars() #6
  %4 = icmp sgt i32 %1, -1
  br i1 %4, label %5, label %11

; <label>:5                                       ; preds = %0
  %6 = icmp slt i32 %1, %3
  %7 = icmp sgt i32 %2, -1
  %or.cond = and i1 %7, %6
  %8 = icmp slt i32 %2, %3
  %or.cond2 = and i1 %8, %or.cond
  br i1 %or.cond2, label %9, label %11

; <label>:9                                       ; preds = %5
  %10 = tail call i32 @BndCopyDirVI(%struct.cGH* %GH, i32 %stencil_size, i32 %dir, i32 %1, i32 %2) #7
  br label %13

; <label>:11                                      ; preds = %5, %0
  %12 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 2, i32 627, i8* getelementptr inbounds ([83 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([56 x i8]* @.str8, i64 0, i64 0), i8* %vname_to, i8* %vname_from) #6
  br label %13

; <label>:13                                      ; preds = %11, %9
  %retval.0 = phi i32 [ %10, %9 ], [ -1, %11 ]
  ret i32 %retval.0
}

; Function Attrs: optsize
declare i32 @CCTK_VarIndex(i8*) #2

; Function Attrs: nounwind optsize ssp uwtable
define void @bndcopydirvn_(i32* nocapture %ierr, %struct.cGH* %GH, i32* nocapture readonly %stencil_size, i32* nocapture readonly %dir, i8* %cctk_str1, i8* %cctk_str2, i32 %cctk_strlen1, i32 %cctk_strlen2) #1 {
  %1 = tail call i8* @Util_NullTerminateString(i8* %cctk_str1, i32 %cctk_strlen1) #6
  %2 = tail call i8* @Util_NullTerminateString(i8* %cctk_str2, i32 %cctk_strlen2) #6
  %3 = load i32* %stencil_size, align 4, !tbaa !2
  %4 = load i32* %dir, align 4, !tbaa !2
  %5 = tail call i32 @BndCopyDirVN(%struct.cGH* %GH, i32 %3, i32 %4, i8* %1, i8* %2) #7
  store i32 %5, i32* %ierr, align 4, !tbaa !2
  tail call void @free(i8* %1) #7
  tail call void @free(i8* %2) #7
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @BndCopyVN(%struct.cGH* %GH, i32* %stencil, i8* %vname_to, i8* %vname_from) #1 {
  %1 = tail call i32 @CCTK_VarIndex(i8* %vname_to) #6
  %2 = tail call i32 @CCTK_VarIndex(i8* %vname_from) #6
  %3 = tail call i32 @CCTK_NumVars() #6
  %4 = icmp sgt i32 %1, -1
  br i1 %4, label %5, label %11

; <label>:5                                       ; preds = %0
  %6 = icmp slt i32 %1, %3
  %7 = icmp sgt i32 %2, -1
  %or.cond = and i1 %7, %6
  %8 = icmp slt i32 %2, %3
  %or.cond2 = and i1 %8, %or.cond
  br i1 %or.cond2, label %9, label %11

; <label>:9                                       ; preds = %5
  %10 = tail call i32 @BndCopyVI(%struct.cGH* %GH, i32* %stencil, i32 %1, i32 %2) #7
  br label %13

; <label>:11                                      ; preds = %5, %0
  %12 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 2, i32 704, i8* getelementptr inbounds ([83 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str9, i64 0, i64 0), i8* %vname_to, i8* %vname_from) #6
  br label %13

; <label>:13                                      ; preds = %11, %9
  %retval.0 = phi i32 [ %10, %9 ], [ -1, %11 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize ssp uwtable
define void @bndcopyvn_(i32* nocapture %ierr, %struct.cGH* %GH, i32* %stencil, i8* %cctk_str1, i8* %cctk_str2, i32 %cctk_strlen1, i32 %cctk_strlen2) #1 {
  %1 = tail call i8* @Util_NullTerminateString(i8* %cctk_str1, i32 %cctk_strlen1) #6
  %2 = tail call i8* @Util_NullTerminateString(i8* %cctk_str2, i32 %cctk_strlen2) #6
  %3 = tail call i32 @BndCopyVN(%struct.cGH* %GH, i32* %stencil, i8* %1, i8* %2) #7
  store i32 %3, i32* %ierr, align 4, !tbaa !2
  tail call void @free(i8* %1) #7
  tail call void @free(i8* %2) #7
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
