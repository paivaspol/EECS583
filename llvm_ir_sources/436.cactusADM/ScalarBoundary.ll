; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/Boundary/ScalarBoundary.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.cGH = type { i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, double, double*, double*, i32*, i32*, i32, i32*, double, i8***, i8**, %struct.cGHGroupData* }
%struct.cGHGroupData = type { i8, i8 }
%struct.CCTK_COMPLEX16 = type { double, double }

@.str = private unnamed_addr constant [85 x i8] c"../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/Boundary/ScalarBoundary.c\00", align 1
@.str1 = private unnamed_addr constant [9 x i8] c"Boundary\00", align 1
@.str2 = private unnamed_addr constant [44 x i8] c"Invalid variable index %d in BndScalarDirVI\00", align 1
@.str3 = private unnamed_addr constant [44 x i8] c"Invalid variable index %d in ApplyBndScalar\00", align 1
@.str4 = private unnamed_addr constant [41 x i8] c"Invalid group index %d in BndScalarDirGI\00", align 1
@.str5 = private unnamed_addr constant [38 x i8] c"Invalid group index %d in BndScalarGI\00", align 1
@.str6 = private unnamed_addr constant [42 x i8] c"Invalid group name '%s' in BndScalarDirGN\00", align 1
@.str7 = private unnamed_addr constant [39 x i8] c"Invalid group name '%s' in BndScalarGN\00", align 1
@.str8 = private unnamed_addr constant [45 x i8] c"Invalid variable name '%s' in BndScalarDirVN\00", align 1
@.str9 = private unnamed_addr constant [42 x i8] c"Invalid variable name '%s' in BndScalarVN\00", align 1
@.str10 = private unnamed_addr constant [99 x i8] c"$Header: /cactus/CactusBase/Boundary/src/ScalarBoundary.c,v 1.22 2001/12/18 20:44:49 rideout Exp $\00", align 1
@.str11 = private unnamed_addr constant [66 x i8] c"ApplyBndScalar: direction %d is greater than maximum dimension %d\00", align 1
@.str12 = private unnamed_addr constant [55 x i8] c"ApplyBndScalar: variable dimension of %d not supported\00", align 1
@.str13 = private unnamed_addr constant [60 x i8] c"ApplyBndScalar: NULL pointer passed for stencil width array\00", align 1
@.str14 = private unnamed_addr constant [9 x i8] c"Symmetry\00", align 1
@.str15 = private unnamed_addr constant [47 x i8] c"Unsupported variable type %d for variable '%s'\00", align 1
@.memset_pattern = internal unnamed_addr constant [4 x i32] [i32 1, i32 1, i32 1, i32 1], align 16

; Function Attrs: nounwind optsize readnone ssp uwtable
define i8* @CCTKi_version_CactusBase_Boundary_ScalarBoundary_c() #0 {
  ret i8* getelementptr inbounds ([99 x i8]* @.str10, i64 0, i64 0)
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @BndScalarDirVI(%struct.cGH* %GH, i32 %stencil_size, i32 %dir, double %scalar, i32 %vi) #1 {
  %1 = icmp sgt i32 %vi, -1
  br i1 %1, label %2, label %7

; <label>:2                                       ; preds = %0
  %3 = tail call i32 @CCTK_NumVars() #5
  %4 = icmp sgt i32 %3, %vi
  br i1 %4, label %5, label %7

; <label>:5                                       ; preds = %2
  %6 = tail call fastcc i32 @ApplyBndScalar(%struct.cGH* %GH, i32 %stencil_size, i32* null, i32 %dir, double %scalar, i32 %vi, i32 1) #6
  br label %9

; <label>:7                                       ; preds = %2, %0
  %8 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 2, i32 161, i8* getelementptr inbounds ([85 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([44 x i8]* @.str2, i64 0, i64 0), i32 %vi) #5
  br label %9

; <label>:9                                       ; preds = %7, %5
  %retval.0 = phi i32 [ %6, %5 ], [ -1, %7 ]
  ret i32 %retval.0
}

; Function Attrs: optsize
declare i32 @CCTK_NumVars() #2

; Function Attrs: nounwind optsize ssp uwtable
define internal fastcc i32 @ApplyBndScalar(%struct.cGH* %GH, i32 %stencil_dir, i32* %stencil_alldirs, i32 %dir, double %scalar, i32 %first_var, i32 %num_vars) #1 {
  %doBC = alloca [6 x i32], align 16
  %dstag = alloca [3 x i32], align 4
  %lsh = alloca [3 x i32], align 4
  %lssh = alloca [3 x i32], align 4
  %stencil = alloca [3 x i32], align 4
  %ispos = icmp sgt i32 %dir, -1
  %neg = sub i32 0, %dir
  %1 = select i1 %ispos, i32 %dir, i32 %neg
  %2 = icmp sgt i32 %1, 3
  br i1 %2, label %3, label %5

; <label>:3                                       ; preds = %0
  %4 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 910, i8* getelementptr inbounds ([85 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str11, i64 0, i64 0), i32 %dir, i32 3) #5
  br label %.loopexit357

; <label>:5                                       ; preds = %0
  %6 = tail call i32 @CCTK_GroupIndexFromVarI(i32 %first_var) #5
  %7 = tail call i32 @CCTK_GroupDimI(i32 %6) #5
  %8 = icmp sgt i32 %7, 3
  br i1 %8, label %9, label %11

; <label>:9                                       ; preds = %5
  %10 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 923, i8* getelementptr inbounds ([85 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([55 x i8]* @.str12, i64 0, i64 0), i32 %7) #5
  br label %.loopexit357

; <label>:11                                      ; preds = %5
  %12 = icmp ne i32 %dir, 0
  br i1 %12, label %13, label %23

; <label>:13                                      ; preds = %11
  %14 = add nsw i32 %1, -1
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [3 x i32]* %stencil, i64 0, i64 %15
  store i32 %stencil_dir, i32* %16, align 4, !tbaa !2
  br label %.preheader358

.preheader358:                                    ; preds = %25, %13
  %17 = icmp slt i32 %7, 3
  br i1 %17, label %.lr.ph795, label %33

.lr.ph795:                                        ; preds = %.preheader358
  %18 = sext i32 %7 to i64
  %scevgep = getelementptr [3 x i32]* %lsh, i64 0, i64 %18
  %scevgep1207 = bitcast i32* %scevgep to i8*
  %19 = sub i32 2, %7
  %20 = zext i32 %19 to i64
  %21 = shl nuw nsw i64 %20, 2
  %22 = add nuw nsw i64 %21, 4
  call void @llvm.memset.p0i8.i64(i8* %scevgep1207, i8 0, i64 %22, i32 4, i1 false)
  %scevgep1208 = getelementptr [3 x i32]* %lssh, i64 0, i64 %18
  %scevgep12081209 = bitcast i32* %scevgep1208 to i8*
  call void @memset_pattern16(i8* %scevgep12081209, i8* bitcast ([4 x i32]* @.memset_pattern to i8*), i64 %22) #4
  br label %33

; <label>:23                                      ; preds = %11
  %24 = icmp eq i32* %stencil_alldirs, null
  br i1 %24, label %31, label %25

; <label>:25                                      ; preds = %23
  %26 = bitcast [3 x i32]* %stencil to i8*
  %27 = bitcast i32* %stencil_alldirs to i8*
  %28 = sext i32 %7 to i64
  %29 = shl nsw i64 %28, 2
  %30 = call i8* @__memcpy_chk(i8* %26, i8* %27, i64 %29, i64 12) #5
  br label %.preheader358

; <label>:31                                      ; preds = %23
  %32 = tail call i32 @CCTK_Warn(i32 1, i32 941, i8* getelementptr inbounds ([85 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([60 x i8]* @.str13, i64 0, i64 0)) #5
  br label %.loopexit357

; <label>:33                                      ; preds = %.lr.ph795, %.preheader358
  %34 = getelementptr inbounds [3 x i32]* %dstag, i64 0, i64 0
  %35 = call i32 @CCTK_GroupStaggerDirArrayGI(i32* %34, i32 %7, i32 %6) #5
  %36 = call i8* @CCTK_GHExtension(%struct.cGH* %GH, i8* getelementptr inbounds ([9 x i8]* @.str14, i64 0, i64 0)) #5
  %37 = add nsw i32 %num_vars, %first_var
  %38 = icmp sgt i32 %num_vars, 0
  br i1 %38, label %.lr.ph793, label %.loopexit357

.lr.ph793:                                        ; preds = %33
  %39 = bitcast [6 x i32]* %doBC to i8*
  %40 = icmp eq i8* %36, null
  %41 = icmp sgt i32 %7, 0
  %42 = getelementptr inbounds [6 x i32]* %doBC, i64 0, i64 1
  %43 = icmp sgt i32 %7, 1
  %44 = getelementptr inbounds [6 x i32]* %doBC, i64 0, i64 2
  %45 = getelementptr inbounds [6 x i32]* %doBC, i64 0, i64 3
  %46 = icmp sgt i32 %7, 2
  %47 = getelementptr inbounds [6 x i32]* %doBC, i64 0, i64 4
  %48 = getelementptr inbounds [6 x i32]* %doBC, i64 0, i64 5
  %49 = getelementptr inbounds [3 x i32]* %stencil, i64 0, i64 2
  %50 = getelementptr inbounds [3 x i32]* %lssh, i64 0, i64 1
  %51 = getelementptr inbounds [3 x i32]* %lssh, i64 0, i64 0
  %52 = getelementptr inbounds [3 x i32]* %lsh, i64 0, i64 0
  %53 = getelementptr inbounds [3 x i32]* %lsh, i64 0, i64 1
  %54 = getelementptr inbounds [3 x i32]* %lssh, i64 0, i64 2
  %55 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17
  %56 = getelementptr inbounds [3 x i32]* %stencil, i64 0, i64 1
  %57 = getelementptr inbounds [3 x i32]* %stencil, i64 0, i64 0
  %58 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 3
  %59 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 6
  %60 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 12
  %61 = icmp slt i32 %dir, 0
  %62 = shl nsw i32 %7, 1
  %63 = bitcast i8* %36 to i32***
  %64 = sext i32 %62 to i64
  %65 = add i32 %7, -1
  %66 = sext i32 %first_var to i64
  br label %67

; <label>:67                                      ; preds = %.lr.ph793, %.thread67
  %indvars.iv1201 = phi i64 [ %66, %.lr.ph793 ], [ %indvars.iv.next1202, %.thread67 ]
  %.066791 = phi double [ %scalar, %.lr.ph793 ], [ %.1, %.thread67 ]
  %var.0789 = phi i32 [ %first_var, %.lr.ph793 ], [ %2363, %.thread67 ]
  call void @llvm.memset.p0i8.i64(i8* %39, i8 1, i64 24, i32 16, i1 false)
  br i1 %40, label %.preheader355, label %.preheader356

.preheader356:                                    ; preds = %67
  br i1 %41, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader356
  %68 = load i32*** %63, align 8, !tbaa !6
  %69 = getelementptr inbounds i32** %68, i64 %indvars.iv1201
  %70 = load i32** %69, align 8, !tbaa !9
  br label %73

.preheader355:                                    ; preds = %73, %67
  br i1 %41, label %.lr.ph362, label %._crit_edge

.lr.ph362:                                        ; preds = %.preheader355
  %71 = load i32** %58, align 8, !tbaa !10
  %72 = load i32** %59, align 8, !tbaa !13
  br label %81

; <label>:73                                      ; preds = %.lr.ph, %73
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %73 ]
  %74 = getelementptr inbounds i32* %70, i64 %indvars.iv
  %75 = load i32* %74, align 4, !tbaa !2
  %76 = and i32 %75, -2
  %77 = icmp eq i32 %76, -42
  %78 = zext i1 %77 to i32
  %79 = getelementptr inbounds [6 x i32]* %doBC, i64 0, i64 %indvars.iv
  store i32 %78, i32* %79, align 4, !tbaa !2
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %80 = icmp slt i64 %indvars.iv.next, %64
  br i1 %80, label %73, label %.preheader355

; <label>:81                                      ; preds = %138, %.lr.ph362
  %indvars.iv798 = phi i64 [ 0, %.lr.ph362 ], [ %indvars.iv.next799, %138 ]
  %82 = getelementptr inbounds i32* %71, i64 %indvars.iv798
  %83 = load i32* %82, align 4, !tbaa !2
  %84 = getelementptr inbounds [3 x i32]* %lsh, i64 0, i64 %indvars.iv798
  store i32 %83, i32* %84, align 4, !tbaa !2
  %85 = getelementptr inbounds [3 x i32]* %dstag, i64 0, i64 %indvars.iv798
  %86 = load i32* %85, align 4, !tbaa !2
  %87 = mul nsw i64 %indvars.iv798, 3
  %88 = trunc i64 %87 to i32
  %89 = add nsw i32 %86, %88
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32* %72, i64 %90
  %92 = load i32* %91, align 4, !tbaa !2
  %93 = getelementptr inbounds [3 x i32]* %lssh, i64 0, i64 %indvars.iv798
  store i32 %92, i32* %93, align 4, !tbaa !2
  %94 = load i32* %82, align 4, !tbaa !2
  %95 = icmp sgt i32 %94, 1
  %96 = trunc i64 %indvars.iv798 to i32
  %97 = shl nsw i32 %96, 1
  %98 = sext i32 %97 to i64
  br i1 %95, label %100, label %._crit_edge1286

._crit_edge1286:                                  ; preds = %81
  %99 = getelementptr inbounds [6 x i32]* %doBC, i64 0, i64 %98
  store i32 0, i32* %99, align 8, !tbaa !2
  %.pre1293 = or i32 %97, 1
  %.pre1295 = sext i32 %.pre1293 to i64
  br label %115

; <label>:100                                     ; preds = %81
  %101 = load i32** %60, align 8, !tbaa !14
  %102 = getelementptr inbounds i32* %101, i64 %98
  %103 = load i32* %102, align 4, !tbaa !2
  %104 = icmp ne i32 %103, 0
  %105 = zext i1 %104 to i32
  %106 = getelementptr inbounds [6 x i32]* %doBC, i64 0, i64 %98
  %107 = load i32* %106, align 8, !tbaa !2
  %108 = and i32 %107, %105
  store i32 %108, i32* %106, align 8, !tbaa !2
  %109 = or i32 %97, 1
  %110 = sext i32 %109 to i64
  %111 = load i32** %60, align 8, !tbaa !14
  %112 = getelementptr inbounds i32* %111, i64 %110
  %113 = load i32* %112, align 4, !tbaa !2
  %114 = icmp ne i32 %113, 0
  br label %115

; <label>:115                                     ; preds = %._crit_edge1286, %100
  %116 = phi i32 [ 0, %._crit_edge1286 ], [ %108, %100 ]
  %117 = phi i32* [ %99, %._crit_edge1286 ], [ %106, %100 ]
  %.pre-phi1296 = phi i64 [ %.pre1295, %._crit_edge1286 ], [ %110, %100 ]
  %118 = phi i1 [ false, %._crit_edge1286 ], [ %114, %100 ]
  %119 = zext i1 %118 to i32
  %120 = getelementptr inbounds [6 x i32]* %doBC, i64 0, i64 %.pre-phi1296
  %121 = load i32* %120, align 4, !tbaa !2
  %122 = and i32 %121, %119
  store i32 %122, i32* %120, align 4, !tbaa !2
  br i1 %12, label %123, label %138

; <label>:123                                     ; preds = %115
  br i1 %61, label %124, label %130

; <label>:124                                     ; preds = %123
  %125 = add nuw nsw i64 %indvars.iv798, 1
  %126 = trunc i64 %125 to i32
  %127 = icmp eq i32 %126, %1
  %128 = zext i1 %127 to i32
  %129 = and i32 %116, %128
  store i32 %129, i32* %117, align 8, !tbaa !2
  br label %134

; <label>:130                                     ; preds = %123
  store i32 0, i32* %117, align 8, !tbaa !2
  %131 = add nuw nsw i64 %indvars.iv798, 1
  %132 = trunc i64 %131 to i32
  %133 = icmp eq i32 %132, %1
  br label %134

; <label>:134                                     ; preds = %124, %130
  %135 = phi i1 [ false, %124 ], [ %133, %130 ]
  %136 = zext i1 %135 to i32
  %137 = and i32 %122, %136
  store i32 %137, i32* %120, align 4, !tbaa !2
  br label %138

; <label>:138                                     ; preds = %115, %134
  %indvars.iv.next799 = add nuw nsw i64 %indvars.iv798, 1
  %exitcond = icmp eq i32 %96, %65
  br i1 %exitcond, label %._crit_edge, label %81

._crit_edge:                                      ; preds = %138, %.preheader356, %.preheader355
  %139 = trunc i64 %indvars.iv1201 to i32
  %140 = call i32 @CCTK_VarTypeI(i32 %139) #5
  switch i32 %140, label %2359 [
    i32 1, label %141
    i32 2, label %386
    i32 6, label %638
    i32 10, label %818
    i32 3, label %1179
    i32 4, label %1368
    i32 5, label %1612
    i32 7, label %1801
    i32 8, label %1990
    i32 9, label %2170
  ]

; <label>:141                                     ; preds = %._crit_edge
  br i1 %41, label %142, label %.thread67

; <label>:142                                     ; preds = %141
  %143 = bitcast [6 x i32]* %doBC to i64*
  %144 = load i64* %143, align 16
  %145 = trunc i64 %144 to i32
  %146 = icmp eq i32 %145, 0
  %147 = lshr i64 %144, 32
  %148 = trunc i64 %147 to i32
  br i1 %146, label %183, label %.preheader234

.preheader234:                                    ; preds = %142
  %149 = load i32* %54, align 4, !tbaa !2
  %150 = icmp sgt i32 %149, 0
  br i1 %150, label %.preheader165.lr.ph, label %.loopexit235

.preheader165.lr.ph:                              ; preds = %.preheader234
  %151 = fptoui double %.066791 to i8
  %.pre1259 = load i32* %50, align 4, !tbaa !2
  br label %.preheader165

.preheader165:                                    ; preds = %.preheader165.lr.ph, %178
  %152 = phi i32 [ %149, %.preheader165.lr.ph ], [ %179, %178 ]
  %153 = phi i32 [ %.pre1259, %.preheader165.lr.ph ], [ %180, %178 ]
  %k.0749 = phi i32 [ 0, %.preheader165.lr.ph ], [ %181, %178 ]
  %154 = icmp sgt i32 %153, 0
  br i1 %154, label %.preheader99.lr.ph, label %178

.preheader99.lr.ph:                               ; preds = %.preheader165
  %.pre1260 = load i32* %57, align 4, !tbaa !2
  br label %.preheader99

.preheader99:                                     ; preds = %.preheader99.lr.ph, %173
  %155 = phi i32 [ %153, %.preheader99.lr.ph ], [ %174, %173 ]
  %156 = phi i32 [ %.pre1260, %.preheader99.lr.ph ], [ %175, %173 ]
  %j.0746 = phi i32 [ 0, %.preheader99.lr.ph ], [ %176, %173 ]
  %157 = icmp sgt i32 %156, 0
  br i1 %157, label %.lr.ph744, label %173

.lr.ph744:                                        ; preds = %.preheader99, %.lr.ph744
  %i.3743 = phi i32 [ %170, %.lr.ph744 ], [ 0, %.preheader99 ]
  %158 = load i32* %52, align 4, !tbaa !2
  %159 = load i32* %53, align 4, !tbaa !2
  %160 = mul nsw i32 %159, %k.0749
  %161 = add nsw i32 %160, %j.0746
  %162 = mul nsw i32 %161, %158
  %163 = add nsw i32 %162, %i.3743
  %164 = sext i32 %163 to i64
  %165 = load i8**** %55, align 8, !tbaa !15
  %166 = getelementptr inbounds i8*** %165, i64 %indvars.iv1201
  %167 = load i8*** %166, align 8, !tbaa !9
  %168 = load i8** %167, align 8, !tbaa !9
  %169 = getelementptr inbounds i8* %168, i64 %164
  store i8 %151, i8* %169, align 1, !tbaa !16
  %170 = add nuw nsw i32 %i.3743, 1
  %171 = load i32* %57, align 4, !tbaa !2
  %172 = icmp slt i32 %170, %171
  br i1 %172, label %.lr.ph744, label %._crit_edge745

._crit_edge745:                                   ; preds = %.lr.ph744
  %.pre1261 = load i32* %50, align 4, !tbaa !2
  br label %173

; <label>:173                                     ; preds = %._crit_edge745, %.preheader99
  %174 = phi i32 [ %.pre1261, %._crit_edge745 ], [ %155, %.preheader99 ]
  %175 = phi i32 [ %171, %._crit_edge745 ], [ %156, %.preheader99 ]
  %176 = add nuw nsw i32 %j.0746, 1
  %177 = icmp slt i32 %176, %174
  br i1 %177, label %.preheader99, label %._crit_edge748

._crit_edge748:                                   ; preds = %173
  %.pre1262 = load i32* %54, align 4, !tbaa !2
  br label %178

; <label>:178                                     ; preds = %._crit_edge748, %.preheader165
  %179 = phi i32 [ %.pre1262, %._crit_edge748 ], [ %152, %.preheader165 ]
  %180 = phi i32 [ %174, %._crit_edge748 ], [ %153, %.preheader165 ]
  %181 = add nuw nsw i32 %k.0749, 1
  %182 = icmp slt i32 %181, %179
  br i1 %182, label %.preheader165, label %.loopexit235

.loopexit235:                                     ; preds = %178, %.preheader234
  %.pre1263 = load i32* %42, align 4, !tbaa !2
  br label %183

; <label>:183                                     ; preds = %.loopexit235, %142
  %184 = phi i32 [ %.pre1263, %.loopexit235 ], [ %148, %142 ]
  %185 = icmp eq i32 %184, 0
  br i1 %185, label %.loopexit233, label %.preheader232

.preheader232:                                    ; preds = %183
  %186 = load i32* %54, align 4, !tbaa !2
  %187 = icmp sgt i32 %186, 0
  br i1 %187, label %.preheader164.lr.ph, label %.loopexit233

.preheader164.lr.ph:                              ; preds = %.preheader232
  %188 = fptoui double %.066791 to i8
  %.pre1264 = load i32* %50, align 4, !tbaa !2
  br label %.preheader164

.preheader164:                                    ; preds = %.preheader164.lr.ph, %218
  %189 = phi i32 [ %186, %.preheader164.lr.ph ], [ %219, %218 ]
  %190 = phi i32 [ %.pre1264, %.preheader164.lr.ph ], [ %220, %218 ]
  %k.1757 = phi i32 [ 0, %.preheader164.lr.ph ], [ %221, %218 ]
  %191 = icmp sgt i32 %190, 0
  br i1 %191, label %.preheader98.lr.ph, label %218

.preheader98.lr.ph:                               ; preds = %.preheader164
  %.pre1265 = load i32* %57, align 4, !tbaa !2
  br label %.preheader98

.preheader98:                                     ; preds = %.preheader98.lr.ph, %213
  %192 = phi i32 [ %190, %.preheader98.lr.ph ], [ %214, %213 ]
  %193 = phi i32 [ %.pre1265, %.preheader98.lr.ph ], [ %215, %213 ]
  %j.1754 = phi i32 [ 0, %.preheader98.lr.ph ], [ %216, %213 ]
  %194 = icmp sgt i32 %193, 0
  br i1 %194, label %.lr.ph752, label %213

.lr.ph752:                                        ; preds = %.preheader98, %.lr.ph752
  %i.4751 = phi i32 [ %210, %.lr.ph752 ], [ 0, %.preheader98 ]
  %195 = load i32* %51, align 4, !tbaa !2
  %196 = load i32* %52, align 4, !tbaa !2
  %197 = load i32* %53, align 4, !tbaa !2
  %198 = mul nsw i32 %197, %k.1757
  %199 = add nsw i32 %198, %j.1754
  %200 = mul nsw i32 %199, %196
  %201 = xor i32 %i.4751, -1
  %202 = add i32 %195, %201
  %203 = add i32 %202, %200
  %204 = sext i32 %203 to i64
  %205 = load i8**** %55, align 8, !tbaa !15
  %206 = getelementptr inbounds i8*** %205, i64 %indvars.iv1201
  %207 = load i8*** %206, align 8, !tbaa !9
  %208 = load i8** %207, align 8, !tbaa !9
  %209 = getelementptr inbounds i8* %208, i64 %204
  store i8 %188, i8* %209, align 1, !tbaa !16
  %210 = add nuw nsw i32 %i.4751, 1
  %211 = load i32* %57, align 4, !tbaa !2
  %212 = icmp slt i32 %210, %211
  br i1 %212, label %.lr.ph752, label %._crit_edge753

._crit_edge753:                                   ; preds = %.lr.ph752
  %.pre1266 = load i32* %50, align 4, !tbaa !2
  br label %213

; <label>:213                                     ; preds = %._crit_edge753, %.preheader98
  %214 = phi i32 [ %.pre1266, %._crit_edge753 ], [ %192, %.preheader98 ]
  %215 = phi i32 [ %211, %._crit_edge753 ], [ %193, %.preheader98 ]
  %216 = add nuw nsw i32 %j.1754, 1
  %217 = icmp slt i32 %216, %214
  br i1 %217, label %.preheader98, label %._crit_edge756

._crit_edge756:                                   ; preds = %213
  %.pre1267 = load i32* %54, align 4, !tbaa !2
  br label %218

; <label>:218                                     ; preds = %._crit_edge756, %.preheader164
  %219 = phi i32 [ %.pre1267, %._crit_edge756 ], [ %189, %.preheader164 ]
  %220 = phi i32 [ %214, %._crit_edge756 ], [ %190, %.preheader164 ]
  %221 = add nuw nsw i32 %k.1757, 1
  %222 = icmp slt i32 %221, %219
  br i1 %222, label %.preheader164, label %.loopexit233

.loopexit233:                                     ; preds = %218, %.preheader232, %183
  br i1 %43, label %223, label %.thread67

; <label>:223                                     ; preds = %.loopexit233
  %224 = bitcast i32* %44 to i64*
  %225 = load i64* %224, align 8
  %226 = trunc i64 %225 to i32
  %227 = icmp eq i32 %226, 0
  %228 = lshr i64 %225, 32
  %229 = trunc i64 %228 to i32
  br i1 %227, label %264, label %.preheader230

.preheader230:                                    ; preds = %223
  %230 = load i32* %54, align 4, !tbaa !2
  %231 = icmp sgt i32 %230, 0
  br i1 %231, label %.preheader163.lr.ph, label %.loopexit231

.preheader163.lr.ph:                              ; preds = %.preheader230
  %232 = fptoui double %.066791 to i8
  %.pre1268 = load i32* %56, align 4, !tbaa !2
  br label %.preheader163

.preheader163:                                    ; preds = %.preheader163.lr.ph, %259
  %233 = phi i32 [ %230, %.preheader163.lr.ph ], [ %260, %259 ]
  %234 = phi i32 [ %.pre1268, %.preheader163.lr.ph ], [ %261, %259 ]
  %k.2765 = phi i32 [ 0, %.preheader163.lr.ph ], [ %262, %259 ]
  %235 = icmp sgt i32 %234, 0
  br i1 %235, label %.preheader97.lr.ph, label %259

.preheader97.lr.ph:                               ; preds = %.preheader163
  %.pre1269 = load i32* %51, align 4, !tbaa !2
  br label %.preheader97

.preheader97:                                     ; preds = %.preheader97.lr.ph, %254
  %236 = phi i32 [ %234, %.preheader97.lr.ph ], [ %255, %254 ]
  %237 = phi i32 [ %.pre1269, %.preheader97.lr.ph ], [ %256, %254 ]
  %j.2762 = phi i32 [ 0, %.preheader97.lr.ph ], [ %257, %254 ]
  %238 = icmp sgt i32 %237, 0
  br i1 %238, label %.lr.ph760, label %254

.lr.ph760:                                        ; preds = %.preheader97, %.lr.ph760
  %i.5759 = phi i32 [ %251, %.lr.ph760 ], [ 0, %.preheader97 ]
  %239 = load i32* %52, align 4, !tbaa !2
  %240 = load i32* %53, align 4, !tbaa !2
  %241 = mul nsw i32 %240, %k.2765
  %242 = add nsw i32 %241, %j.2762
  %243 = mul nsw i32 %242, %239
  %244 = add nsw i32 %243, %i.5759
  %245 = sext i32 %244 to i64
  %246 = load i8**** %55, align 8, !tbaa !15
  %247 = getelementptr inbounds i8*** %246, i64 %indvars.iv1201
  %248 = load i8*** %247, align 8, !tbaa !9
  %249 = load i8** %248, align 8, !tbaa !9
  %250 = getelementptr inbounds i8* %249, i64 %245
  store i8 %232, i8* %250, align 1, !tbaa !16
  %251 = add nuw nsw i32 %i.5759, 1
  %252 = load i32* %51, align 4, !tbaa !2
  %253 = icmp slt i32 %251, %252
  br i1 %253, label %.lr.ph760, label %._crit_edge761

._crit_edge761:                                   ; preds = %.lr.ph760
  %.pre1270 = load i32* %56, align 4, !tbaa !2
  br label %254

; <label>:254                                     ; preds = %._crit_edge761, %.preheader97
  %255 = phi i32 [ %.pre1270, %._crit_edge761 ], [ %236, %.preheader97 ]
  %256 = phi i32 [ %252, %._crit_edge761 ], [ %237, %.preheader97 ]
  %257 = add nuw nsw i32 %j.2762, 1
  %258 = icmp slt i32 %257, %255
  br i1 %258, label %.preheader97, label %._crit_edge764

._crit_edge764:                                   ; preds = %254
  %.pre1271 = load i32* %54, align 4, !tbaa !2
  br label %259

; <label>:259                                     ; preds = %._crit_edge764, %.preheader163
  %260 = phi i32 [ %.pre1271, %._crit_edge764 ], [ %233, %.preheader163 ]
  %261 = phi i32 [ %255, %._crit_edge764 ], [ %234, %.preheader163 ]
  %262 = add nuw nsw i32 %k.2765, 1
  %263 = icmp slt i32 %262, %260
  br i1 %263, label %.preheader163, label %.loopexit231

.loopexit231:                                     ; preds = %259, %.preheader230
  %.pre1272 = load i32* %45, align 4, !tbaa !2
  br label %264

; <label>:264                                     ; preds = %.loopexit231, %223
  %265 = phi i32 [ %.pre1272, %.loopexit231 ], [ %229, %223 ]
  %266 = icmp eq i32 %265, 0
  br i1 %266, label %.loopexit229, label %.preheader228

.preheader228:                                    ; preds = %264
  %267 = load i32* %54, align 4, !tbaa !2
  %268 = icmp sgt i32 %267, 0
  br i1 %268, label %.preheader162.lr.ph, label %.loopexit229

.preheader162.lr.ph:                              ; preds = %.preheader228
  %269 = fptoui double %.066791 to i8
  %.pre1273 = load i32* %56, align 4, !tbaa !2
  br label %.preheader162

.preheader162:                                    ; preds = %.preheader162.lr.ph, %300
  %270 = phi i32 [ %267, %.preheader162.lr.ph ], [ %301, %300 ]
  %271 = phi i32 [ %.pre1273, %.preheader162.lr.ph ], [ %302, %300 ]
  %k.3772 = phi i32 [ 0, %.preheader162.lr.ph ], [ %303, %300 ]
  %272 = icmp sgt i32 %271, 0
  br i1 %272, label %.preheader96.lr.ph, label %300

.preheader96.lr.ph:                               ; preds = %.preheader162
  %.pre1274 = load i32* %51, align 4, !tbaa !2
  br label %.preheader96

.preheader96:                                     ; preds = %.preheader96.lr.ph, %295
  %273 = phi i32 [ %271, %.preheader96.lr.ph ], [ %296, %295 ]
  %274 = phi i32 [ %.pre1274, %.preheader96.lr.ph ], [ %297, %295 ]
  %j.3770 = phi i32 [ 0, %.preheader96.lr.ph ], [ %298, %295 ]
  %275 = icmp sgt i32 %274, 0
  br i1 %275, label %.lr.ph768, label %295

.lr.ph768:                                        ; preds = %.preheader96
  %276 = xor i32 %j.3770, -1
  br label %277

; <label>:277                                     ; preds = %.lr.ph768, %277
  %i.6767 = phi i32 [ 0, %.lr.ph768 ], [ %292, %277 ]
  %278 = load i32* %52, align 4, !tbaa !2
  %279 = load i32* %50, align 4, !tbaa !2
  %280 = load i32* %53, align 4, !tbaa !2
  %281 = mul nsw i32 %280, %k.3772
  %282 = add i32 %279, %276
  %283 = add i32 %282, %281
  %284 = mul nsw i32 %283, %278
  %285 = add nsw i32 %284, %i.6767
  %286 = sext i32 %285 to i64
  %287 = load i8**** %55, align 8, !tbaa !15
  %288 = getelementptr inbounds i8*** %287, i64 %indvars.iv1201
  %289 = load i8*** %288, align 8, !tbaa !9
  %290 = load i8** %289, align 8, !tbaa !9
  %291 = getelementptr inbounds i8* %290, i64 %286
  store i8 %269, i8* %291, align 1, !tbaa !16
  %292 = add nuw nsw i32 %i.6767, 1
  %293 = load i32* %51, align 4, !tbaa !2
  %294 = icmp slt i32 %292, %293
  br i1 %294, label %277, label %._crit_edge769

._crit_edge769:                                   ; preds = %277
  %.pre1275 = load i32* %56, align 4, !tbaa !2
  br label %295

; <label>:295                                     ; preds = %._crit_edge769, %.preheader96
  %296 = phi i32 [ %.pre1275, %._crit_edge769 ], [ %273, %.preheader96 ]
  %297 = phi i32 [ %293, %._crit_edge769 ], [ %274, %.preheader96 ]
  %298 = add nuw nsw i32 %j.3770, 1
  %299 = icmp slt i32 %298, %296
  br i1 %299, label %.preheader96, label %._crit_edge771

._crit_edge771:                                   ; preds = %295
  %.pre1276 = load i32* %54, align 4, !tbaa !2
  br label %300

; <label>:300                                     ; preds = %._crit_edge771, %.preheader162
  %301 = phi i32 [ %.pre1276, %._crit_edge771 ], [ %270, %.preheader162 ]
  %302 = phi i32 [ %296, %._crit_edge771 ], [ %271, %.preheader162 ]
  %303 = add nuw nsw i32 %k.3772, 1
  %304 = icmp slt i32 %303, %301
  br i1 %304, label %.preheader162, label %.loopexit229

.loopexit229:                                     ; preds = %300, %.preheader228, %264
  br i1 %46, label %305, label %.thread67

; <label>:305                                     ; preds = %.loopexit229
  %306 = bitcast i32* %47 to i64*
  %307 = load i64* %306, align 16
  %308 = trunc i64 %307 to i32
  %309 = icmp eq i32 %308, 0
  %310 = lshr i64 %307, 32
  %311 = trunc i64 %310 to i32
  br i1 %309, label %346, label %.preheader227

.preheader227:                                    ; preds = %305
  %312 = load i32* %49, align 4, !tbaa !2
  %313 = icmp sgt i32 %312, 0
  br i1 %313, label %.preheader161.lr.ph, label %.loopexit

.preheader161.lr.ph:                              ; preds = %.preheader227
  %314 = fptoui double %.066791 to i8
  %.pre1277 = load i32* %50, align 4, !tbaa !2
  br label %.preheader161

.preheader161:                                    ; preds = %.preheader161.lr.ph, %341
  %315 = phi i32 [ %312, %.preheader161.lr.ph ], [ %342, %341 ]
  %316 = phi i32 [ %.pre1277, %.preheader161.lr.ph ], [ %343, %341 ]
  %k.4780 = phi i32 [ 0, %.preheader161.lr.ph ], [ %344, %341 ]
  %317 = icmp sgt i32 %316, 0
  br i1 %317, label %.preheader95.lr.ph, label %341

.preheader95.lr.ph:                               ; preds = %.preheader161
  %.pre1278 = load i32* %51, align 4, !tbaa !2
  br label %.preheader95

.preheader95:                                     ; preds = %.preheader95.lr.ph, %336
  %318 = phi i32 [ %316, %.preheader95.lr.ph ], [ %337, %336 ]
  %319 = phi i32 [ %.pre1278, %.preheader95.lr.ph ], [ %338, %336 ]
  %j.4777 = phi i32 [ 0, %.preheader95.lr.ph ], [ %339, %336 ]
  %320 = icmp sgt i32 %319, 0
  br i1 %320, label %.lr.ph775, label %336

.lr.ph775:                                        ; preds = %.preheader95, %.lr.ph775
  %i.7774 = phi i32 [ %333, %.lr.ph775 ], [ 0, %.preheader95 ]
  %321 = load i32* %52, align 4, !tbaa !2
  %322 = load i32* %53, align 4, !tbaa !2
  %323 = mul nsw i32 %322, %k.4780
  %324 = add nsw i32 %323, %j.4777
  %325 = mul nsw i32 %324, %321
  %326 = add nsw i32 %325, %i.7774
  %327 = sext i32 %326 to i64
  %328 = load i8**** %55, align 8, !tbaa !15
  %329 = getelementptr inbounds i8*** %328, i64 %indvars.iv1201
  %330 = load i8*** %329, align 8, !tbaa !9
  %331 = load i8** %330, align 8, !tbaa !9
  %332 = getelementptr inbounds i8* %331, i64 %327
  store i8 %314, i8* %332, align 1, !tbaa !16
  %333 = add nuw nsw i32 %i.7774, 1
  %334 = load i32* %51, align 4, !tbaa !2
  %335 = icmp slt i32 %333, %334
  br i1 %335, label %.lr.ph775, label %._crit_edge776

._crit_edge776:                                   ; preds = %.lr.ph775
  %.pre1279 = load i32* %50, align 4, !tbaa !2
  br label %336

; <label>:336                                     ; preds = %._crit_edge776, %.preheader95
  %337 = phi i32 [ %.pre1279, %._crit_edge776 ], [ %318, %.preheader95 ]
  %338 = phi i32 [ %334, %._crit_edge776 ], [ %319, %.preheader95 ]
  %339 = add nuw nsw i32 %j.4777, 1
  %340 = icmp slt i32 %339, %337
  br i1 %340, label %.preheader95, label %._crit_edge779

._crit_edge779:                                   ; preds = %336
  %.pre1280 = load i32* %49, align 4, !tbaa !2
  br label %341

; <label>:341                                     ; preds = %._crit_edge779, %.preheader161
  %342 = phi i32 [ %.pre1280, %._crit_edge779 ], [ %315, %.preheader161 ]
  %343 = phi i32 [ %337, %._crit_edge779 ], [ %316, %.preheader161 ]
  %344 = add nuw nsw i32 %k.4780, 1
  %345 = icmp slt i32 %344, %342
  br i1 %345, label %.preheader161, label %.loopexit

.loopexit:                                        ; preds = %341, %.preheader227
  %.pre1281 = load i32* %48, align 4, !tbaa !2
  br label %346

; <label>:346                                     ; preds = %.loopexit, %305
  %347 = phi i32 [ %.pre1281, %.loopexit ], [ %311, %305 ]
  %348 = icmp eq i32 %347, 0
  br i1 %348, label %.thread67, label %.preheader226

.preheader226:                                    ; preds = %346
  %349 = load i32* %49, align 4, !tbaa !2
  %350 = icmp sgt i32 %349, 0
  br i1 %350, label %.preheader160.lr.ph, label %.thread67

.preheader160.lr.ph:                              ; preds = %.preheader226
  %351 = fptoui double %.066791 to i8
  %.pre1282 = load i32* %50, align 4, !tbaa !2
  br label %.preheader160

.preheader160:                                    ; preds = %.preheader160.lr.ph, %381
  %352 = phi i32 [ %349, %.preheader160.lr.ph ], [ %382, %381 ]
  %353 = phi i32 [ %.pre1282, %.preheader160.lr.ph ], [ %383, %381 ]
  %k.5788 = phi i32 [ 0, %.preheader160.lr.ph ], [ %384, %381 ]
  %354 = icmp sgt i32 %353, 0
  br i1 %354, label %.preheader.lr.ph, label %381

.preheader.lr.ph:                                 ; preds = %.preheader160
  %355 = xor i32 %k.5788, -1
  %.pre1283 = load i32* %51, align 4, !tbaa !2
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %376
  %356 = phi i32 [ %353, %.preheader.lr.ph ], [ %377, %376 ]
  %357 = phi i32 [ %.pre1283, %.preheader.lr.ph ], [ %378, %376 ]
  %j.5785 = phi i32 [ 0, %.preheader.lr.ph ], [ %379, %376 ]
  %358 = icmp sgt i32 %357, 0
  br i1 %358, label %.lr.ph783, label %376

.lr.ph783:                                        ; preds = %.preheader, %.lr.ph783
  %i.8782 = phi i32 [ %373, %.lr.ph783 ], [ 0, %.preheader ]
  %359 = load i32* %52, align 4, !tbaa !2
  %360 = load i32* %53, align 4, !tbaa !2
  %361 = load i32* %54, align 4, !tbaa !2
  %362 = add i32 %361, %355
  %363 = mul nsw i32 %362, %360
  %364 = add nsw i32 %363, %j.5785
  %365 = mul nsw i32 %364, %359
  %366 = add nsw i32 %365, %i.8782
  %367 = sext i32 %366 to i64
  %368 = load i8**** %55, align 8, !tbaa !15
  %369 = getelementptr inbounds i8*** %368, i64 %indvars.iv1201
  %370 = load i8*** %369, align 8, !tbaa !9
  %371 = load i8** %370, align 8, !tbaa !9
  %372 = getelementptr inbounds i8* %371, i64 %367
  store i8 %351, i8* %372, align 1, !tbaa !16
  %373 = add nuw nsw i32 %i.8782, 1
  %374 = load i32* %51, align 4, !tbaa !2
  %375 = icmp slt i32 %373, %374
  br i1 %375, label %.lr.ph783, label %._crit_edge784

._crit_edge784:                                   ; preds = %.lr.ph783
  %.pre1284 = load i32* %50, align 4, !tbaa !2
  br label %376

; <label>:376                                     ; preds = %._crit_edge784, %.preheader
  %377 = phi i32 [ %.pre1284, %._crit_edge784 ], [ %356, %.preheader ]
  %378 = phi i32 [ %374, %._crit_edge784 ], [ %357, %.preheader ]
  %379 = add nuw nsw i32 %j.5785, 1
  %380 = icmp slt i32 %379, %377
  br i1 %380, label %.preheader, label %._crit_edge787

._crit_edge787:                                   ; preds = %376
  %.pre1285 = load i32* %49, align 4, !tbaa !2
  br label %381

; <label>:381                                     ; preds = %._crit_edge787, %.preheader160
  %382 = phi i32 [ %.pre1285, %._crit_edge787 ], [ %352, %.preheader160 ]
  %383 = phi i32 [ %377, %._crit_edge787 ], [ %353, %.preheader160 ]
  %384 = add nuw nsw i32 %k.5788, 1
  %385 = icmp slt i32 %384, %382
  br i1 %385, label %.preheader160, label %.thread67

; <label>:386                                     ; preds = %._crit_edge
  br i1 %41, label %387, label %.thread67

; <label>:387                                     ; preds = %386
  %388 = bitcast [6 x i32]* %doBC to i64*
  %389 = load i64* %388, align 16
  %390 = trunc i64 %389 to i32
  %391 = icmp eq i32 %390, 0
  br i1 %391, label %.loopexit247, label %.preheader246

.preheader246:                                    ; preds = %387
  %392 = load i32* %54, align 4, !tbaa !2
  %393 = icmp sgt i32 %392, 0
  br i1 %393, label %.preheader171.lr.ph, label %.loopexit247

.preheader171.lr.ph:                              ; preds = %.preheader246
  %394 = fptosi double %.066791 to i32
  %.pre1233 = load i32* %50, align 4, !tbaa !2
  br label %.preheader171

.preheader171:                                    ; preds = %.preheader171.lr.ph, %423
  %395 = phi i32 [ %392, %.preheader171.lr.ph ], [ %424, %423 ]
  %396 = phi i32 [ %.pre1233, %.preheader171.lr.ph ], [ %425, %423 ]
  %k.6703 = phi i32 [ 0, %.preheader171.lr.ph ], [ %426, %423 ]
  %397 = icmp sgt i32 %396, 0
  br i1 %397, label %.preheader105.lr.ph, label %423

.preheader105.lr.ph:                              ; preds = %.preheader171
  %.pre1234 = load i32* %57, align 4, !tbaa !2
  br label %.preheader105

.preheader105:                                    ; preds = %.preheader105.lr.ph, %418
  %398 = phi i32 [ %396, %.preheader105.lr.ph ], [ %419, %418 ]
  %399 = phi i32 [ %.pre1234, %.preheader105.lr.ph ], [ %420, %418 ]
  %j.6700 = phi i32 [ 0, %.preheader105.lr.ph ], [ %421, %418 ]
  %400 = icmp sgt i32 %399, 0
  br i1 %400, label %.lr.ph698, label %418

.lr.ph698:                                        ; preds = %.preheader105
  %401 = load i8**** %55, align 8, !tbaa !15
  %402 = getelementptr inbounds i8*** %401, i64 %indvars.iv1201
  %403 = bitcast i8*** %402 to i32***
  %404 = load i32*** %403, align 8, !tbaa !9
  %405 = load i32** %404, align 8, !tbaa !9
  br label %406

; <label>:406                                     ; preds = %.lr.ph698, %406
  %i.9697 = phi i32 [ 0, %.lr.ph698 ], [ %415, %406 ]
  %407 = load i32* %52, align 4, !tbaa !2
  %408 = load i32* %53, align 4, !tbaa !2
  %409 = mul nsw i32 %408, %k.6703
  %410 = add nsw i32 %409, %j.6700
  %411 = mul nsw i32 %410, %407
  %412 = add nsw i32 %411, %i.9697
  %413 = sext i32 %412 to i64
  %414 = getelementptr inbounds i32* %405, i64 %413
  store i32 %394, i32* %414, align 4, !tbaa !2
  %415 = add nuw nsw i32 %i.9697, 1
  %416 = load i32* %57, align 4, !tbaa !2
  %417 = icmp slt i32 %415, %416
  br i1 %417, label %406, label %._crit_edge699

._crit_edge699:                                   ; preds = %406
  %.pre1235 = load i32* %50, align 4, !tbaa !2
  br label %418

; <label>:418                                     ; preds = %._crit_edge699, %.preheader105
  %419 = phi i32 [ %.pre1235, %._crit_edge699 ], [ %398, %.preheader105 ]
  %420 = phi i32 [ %416, %._crit_edge699 ], [ %399, %.preheader105 ]
  %421 = add nuw nsw i32 %j.6700, 1
  %422 = icmp slt i32 %421, %419
  br i1 %422, label %.preheader105, label %._crit_edge702

._crit_edge702:                                   ; preds = %418
  %.pre1236 = load i32* %54, align 4, !tbaa !2
  br label %423

; <label>:423                                     ; preds = %._crit_edge702, %.preheader171
  %424 = phi i32 [ %.pre1236, %._crit_edge702 ], [ %395, %.preheader171 ]
  %425 = phi i32 [ %419, %._crit_edge702 ], [ %396, %.preheader171 ]
  %426 = add nuw nsw i32 %k.6703, 1
  %427 = icmp slt i32 %426, %424
  br i1 %427, label %.preheader171, label %.loopexit247

.loopexit247:                                     ; preds = %423, %.preheader246, %387
  %428 = icmp ult i64 %389, 4294967296
  br i1 %428, label %.loopexit245, label %.preheader244

.preheader244:                                    ; preds = %.loopexit247
  %429 = load i32* %54, align 4, !tbaa !2
  %430 = icmp sgt i32 %429, 0
  br i1 %430, label %.preheader170.lr.ph, label %.loopexit245

.preheader170.lr.ph:                              ; preds = %.preheader244
  %431 = fptosi double %.066791 to i32
  %.pre1237 = load i32* %50, align 4, !tbaa !2
  br label %.preheader170

.preheader170:                                    ; preds = %.preheader170.lr.ph, %463
  %432 = phi i32 [ %429, %.preheader170.lr.ph ], [ %464, %463 ]
  %433 = phi i32 [ %.pre1237, %.preheader170.lr.ph ], [ %465, %463 ]
  %k.7711 = phi i32 [ 0, %.preheader170.lr.ph ], [ %466, %463 ]
  %434 = icmp sgt i32 %433, 0
  br i1 %434, label %.preheader104.lr.ph, label %463

.preheader104.lr.ph:                              ; preds = %.preheader170
  %.pre1238 = load i32* %57, align 4, !tbaa !2
  br label %.preheader104

.preheader104:                                    ; preds = %.preheader104.lr.ph, %458
  %435 = phi i32 [ %433, %.preheader104.lr.ph ], [ %459, %458 ]
  %436 = phi i32 [ %.pre1238, %.preheader104.lr.ph ], [ %460, %458 ]
  %j.7708 = phi i32 [ 0, %.preheader104.lr.ph ], [ %461, %458 ]
  %437 = icmp sgt i32 %436, 0
  br i1 %437, label %.lr.ph706, label %458

.lr.ph706:                                        ; preds = %.preheader104
  %438 = load i8**** %55, align 8, !tbaa !15
  %439 = getelementptr inbounds i8*** %438, i64 %indvars.iv1201
  %440 = bitcast i8*** %439 to i32***
  %441 = load i32*** %440, align 8, !tbaa !9
  %442 = load i32** %441, align 8, !tbaa !9
  br label %443

; <label>:443                                     ; preds = %.lr.ph706, %443
  %i.10705 = phi i32 [ 0, %.lr.ph706 ], [ %455, %443 ]
  %444 = load i32* %51, align 4, !tbaa !2
  %445 = load i32* %52, align 4, !tbaa !2
  %446 = load i32* %53, align 4, !tbaa !2
  %447 = mul nsw i32 %446, %k.7711
  %448 = add nsw i32 %447, %j.7708
  %449 = mul nsw i32 %448, %445
  %450 = xor i32 %i.10705, -1
  %451 = add i32 %444, %450
  %452 = add i32 %451, %449
  %453 = sext i32 %452 to i64
  %454 = getelementptr inbounds i32* %442, i64 %453
  store i32 %431, i32* %454, align 4, !tbaa !2
  %455 = add nuw nsw i32 %i.10705, 1
  %456 = load i32* %57, align 4, !tbaa !2
  %457 = icmp slt i32 %455, %456
  br i1 %457, label %443, label %._crit_edge707

._crit_edge707:                                   ; preds = %443
  %.pre1239 = load i32* %50, align 4, !tbaa !2
  br label %458

; <label>:458                                     ; preds = %._crit_edge707, %.preheader104
  %459 = phi i32 [ %.pre1239, %._crit_edge707 ], [ %435, %.preheader104 ]
  %460 = phi i32 [ %456, %._crit_edge707 ], [ %436, %.preheader104 ]
  %461 = add nuw nsw i32 %j.7708, 1
  %462 = icmp slt i32 %461, %459
  br i1 %462, label %.preheader104, label %._crit_edge710

._crit_edge710:                                   ; preds = %458
  %.pre1240 = load i32* %54, align 4, !tbaa !2
  br label %463

; <label>:463                                     ; preds = %._crit_edge710, %.preheader170
  %464 = phi i32 [ %.pre1240, %._crit_edge710 ], [ %432, %.preheader170 ]
  %465 = phi i32 [ %459, %._crit_edge710 ], [ %433, %.preheader170 ]
  %466 = add nuw nsw i32 %k.7711, 1
  %467 = icmp slt i32 %466, %464
  br i1 %467, label %.preheader170, label %.loopexit245

.loopexit245:                                     ; preds = %463, %.preheader244, %.loopexit247
  br i1 %43, label %468, label %.thread67

; <label>:468                                     ; preds = %.loopexit245
  %469 = bitcast i32* %44 to i64*
  %470 = load i64* %469, align 8
  %471 = trunc i64 %470 to i32
  %472 = icmp eq i32 %471, 0
  %473 = lshr i64 %470, 32
  %474 = trunc i64 %473 to i32
  br i1 %472, label %511, label %.preheader242

.preheader242:                                    ; preds = %468
  %475 = load i32* %54, align 4, !tbaa !2
  %476 = icmp sgt i32 %475, 0
  br i1 %476, label %.preheader169.lr.ph, label %.loopexit243

.preheader169.lr.ph:                              ; preds = %.preheader242
  %477 = fptosi double %.066791 to i32
  %.pre1241 = load i32* %56, align 4, !tbaa !2
  br label %.preheader169

.preheader169:                                    ; preds = %.preheader169.lr.ph, %506
  %478 = phi i32 [ %475, %.preheader169.lr.ph ], [ %507, %506 ]
  %479 = phi i32 [ %.pre1241, %.preheader169.lr.ph ], [ %508, %506 ]
  %k.8719 = phi i32 [ 0, %.preheader169.lr.ph ], [ %509, %506 ]
  %480 = icmp sgt i32 %479, 0
  br i1 %480, label %.preheader103.lr.ph, label %506

.preheader103.lr.ph:                              ; preds = %.preheader169
  %.pre1242 = load i32* %51, align 4, !tbaa !2
  br label %.preheader103

.preheader103:                                    ; preds = %.preheader103.lr.ph, %501
  %481 = phi i32 [ %479, %.preheader103.lr.ph ], [ %502, %501 ]
  %482 = phi i32 [ %.pre1242, %.preheader103.lr.ph ], [ %503, %501 ]
  %j.8716 = phi i32 [ 0, %.preheader103.lr.ph ], [ %504, %501 ]
  %483 = icmp sgt i32 %482, 0
  br i1 %483, label %.lr.ph714, label %501

.lr.ph714:                                        ; preds = %.preheader103
  %484 = load i8**** %55, align 8, !tbaa !15
  %485 = getelementptr inbounds i8*** %484, i64 %indvars.iv1201
  %486 = bitcast i8*** %485 to i32***
  %487 = load i32*** %486, align 8, !tbaa !9
  %488 = load i32** %487, align 8, !tbaa !9
  br label %489

; <label>:489                                     ; preds = %.lr.ph714, %489
  %i.11713 = phi i32 [ 0, %.lr.ph714 ], [ %498, %489 ]
  %490 = load i32* %52, align 4, !tbaa !2
  %491 = load i32* %53, align 4, !tbaa !2
  %492 = mul nsw i32 %491, %k.8719
  %493 = add nsw i32 %492, %j.8716
  %494 = mul nsw i32 %493, %490
  %495 = add nsw i32 %494, %i.11713
  %496 = sext i32 %495 to i64
  %497 = getelementptr inbounds i32* %488, i64 %496
  store i32 %477, i32* %497, align 4, !tbaa !2
  %498 = add nuw nsw i32 %i.11713, 1
  %499 = load i32* %51, align 4, !tbaa !2
  %500 = icmp slt i32 %498, %499
  br i1 %500, label %489, label %._crit_edge715

._crit_edge715:                                   ; preds = %489
  %.pre1243 = load i32* %56, align 4, !tbaa !2
  br label %501

; <label>:501                                     ; preds = %._crit_edge715, %.preheader103
  %502 = phi i32 [ %.pre1243, %._crit_edge715 ], [ %481, %.preheader103 ]
  %503 = phi i32 [ %499, %._crit_edge715 ], [ %482, %.preheader103 ]
  %504 = add nuw nsw i32 %j.8716, 1
  %505 = icmp slt i32 %504, %502
  br i1 %505, label %.preheader103, label %._crit_edge718

._crit_edge718:                                   ; preds = %501
  %.pre1244 = load i32* %54, align 4, !tbaa !2
  br label %506

; <label>:506                                     ; preds = %._crit_edge718, %.preheader169
  %507 = phi i32 [ %.pre1244, %._crit_edge718 ], [ %478, %.preheader169 ]
  %508 = phi i32 [ %502, %._crit_edge718 ], [ %479, %.preheader169 ]
  %509 = add nuw nsw i32 %k.8719, 1
  %510 = icmp slt i32 %509, %507
  br i1 %510, label %.preheader169, label %.loopexit243

.loopexit243:                                     ; preds = %506, %.preheader242
  %.pre1245 = load i32* %45, align 4, !tbaa !2
  br label %511

; <label>:511                                     ; preds = %.loopexit243, %468
  %512 = phi i32 [ %.pre1245, %.loopexit243 ], [ %474, %468 ]
  %513 = icmp eq i32 %512, 0
  br i1 %513, label %.loopexit241, label %.preheader240

.preheader240:                                    ; preds = %511
  %514 = load i32* %54, align 4, !tbaa !2
  %515 = icmp sgt i32 %514, 0
  br i1 %515, label %.preheader168.lr.ph, label %.loopexit241

.preheader168.lr.ph:                              ; preds = %.preheader240
  %516 = fptosi double %.066791 to i32
  %.pre1246 = load i32* %56, align 4, !tbaa !2
  br label %.preheader168

.preheader168:                                    ; preds = %.preheader168.lr.ph, %548
  %517 = phi i32 [ %514, %.preheader168.lr.ph ], [ %549, %548 ]
  %518 = phi i32 [ %.pre1246, %.preheader168.lr.ph ], [ %550, %548 ]
  %k.9726 = phi i32 [ 0, %.preheader168.lr.ph ], [ %551, %548 ]
  %519 = icmp sgt i32 %518, 0
  br i1 %519, label %.preheader102.lr.ph, label %548

.preheader102.lr.ph:                              ; preds = %.preheader168
  %.pre1247 = load i32* %51, align 4, !tbaa !2
  br label %.preheader102

.preheader102:                                    ; preds = %.preheader102.lr.ph, %543
  %520 = phi i32 [ %518, %.preheader102.lr.ph ], [ %544, %543 ]
  %521 = phi i32 [ %.pre1247, %.preheader102.lr.ph ], [ %545, %543 ]
  %j.9724 = phi i32 [ 0, %.preheader102.lr.ph ], [ %546, %543 ]
  %522 = icmp sgt i32 %521, 0
  br i1 %522, label %.lr.ph722, label %543

.lr.ph722:                                        ; preds = %.preheader102
  %523 = xor i32 %j.9724, -1
  %524 = load i8**** %55, align 8, !tbaa !15
  %525 = getelementptr inbounds i8*** %524, i64 %indvars.iv1201
  %526 = bitcast i8*** %525 to i32***
  %527 = load i32*** %526, align 8, !tbaa !9
  %528 = load i32** %527, align 8, !tbaa !9
  br label %529

; <label>:529                                     ; preds = %.lr.ph722, %529
  %i.12721 = phi i32 [ 0, %.lr.ph722 ], [ %540, %529 ]
  %530 = load i32* %52, align 4, !tbaa !2
  %531 = load i32* %50, align 4, !tbaa !2
  %532 = load i32* %53, align 4, !tbaa !2
  %533 = mul nsw i32 %532, %k.9726
  %534 = add i32 %531, %523
  %535 = add i32 %534, %533
  %536 = mul nsw i32 %535, %530
  %537 = add nsw i32 %536, %i.12721
  %538 = sext i32 %537 to i64
  %539 = getelementptr inbounds i32* %528, i64 %538
  store i32 %516, i32* %539, align 4, !tbaa !2
  %540 = add nuw nsw i32 %i.12721, 1
  %541 = load i32* %51, align 4, !tbaa !2
  %542 = icmp slt i32 %540, %541
  br i1 %542, label %529, label %._crit_edge723

._crit_edge723:                                   ; preds = %529
  %.pre1248 = load i32* %56, align 4, !tbaa !2
  br label %543

; <label>:543                                     ; preds = %._crit_edge723, %.preheader102
  %544 = phi i32 [ %.pre1248, %._crit_edge723 ], [ %520, %.preheader102 ]
  %545 = phi i32 [ %541, %._crit_edge723 ], [ %521, %.preheader102 ]
  %546 = add nuw nsw i32 %j.9724, 1
  %547 = icmp slt i32 %546, %544
  br i1 %547, label %.preheader102, label %._crit_edge725

._crit_edge725:                                   ; preds = %543
  %.pre1249 = load i32* %54, align 4, !tbaa !2
  br label %548

; <label>:548                                     ; preds = %._crit_edge725, %.preheader168
  %549 = phi i32 [ %.pre1249, %._crit_edge725 ], [ %517, %.preheader168 ]
  %550 = phi i32 [ %544, %._crit_edge725 ], [ %518, %.preheader168 ]
  %551 = add nuw nsw i32 %k.9726, 1
  %552 = icmp slt i32 %551, %549
  br i1 %552, label %.preheader168, label %.loopexit241

.loopexit241:                                     ; preds = %548, %.preheader240, %511
  br i1 %46, label %553, label %.thread67

; <label>:553                                     ; preds = %.loopexit241
  %554 = bitcast i32* %47 to i64*
  %555 = load i64* %554, align 16
  %556 = trunc i64 %555 to i32
  %557 = icmp eq i32 %556, 0
  %558 = lshr i64 %555, 32
  %559 = trunc i64 %558 to i32
  br i1 %557, label %596, label %.preheader238

.preheader238:                                    ; preds = %553
  %560 = load i32* %49, align 4, !tbaa !2
  %561 = icmp sgt i32 %560, 0
  br i1 %561, label %.preheader167.lr.ph, label %.loopexit239

.preheader167.lr.ph:                              ; preds = %.preheader238
  %562 = fptosi double %.066791 to i32
  %.pre1250 = load i32* %50, align 4, !tbaa !2
  br label %.preheader167

.preheader167:                                    ; preds = %.preheader167.lr.ph, %591
  %563 = phi i32 [ %560, %.preheader167.lr.ph ], [ %592, %591 ]
  %564 = phi i32 [ %.pre1250, %.preheader167.lr.ph ], [ %593, %591 ]
  %k.10734 = phi i32 [ 0, %.preheader167.lr.ph ], [ %594, %591 ]
  %565 = icmp sgt i32 %564, 0
  br i1 %565, label %.preheader101.lr.ph, label %591

.preheader101.lr.ph:                              ; preds = %.preheader167
  %.pre1251 = load i32* %51, align 4, !tbaa !2
  br label %.preheader101

.preheader101:                                    ; preds = %.preheader101.lr.ph, %586
  %566 = phi i32 [ %564, %.preheader101.lr.ph ], [ %587, %586 ]
  %567 = phi i32 [ %.pre1251, %.preheader101.lr.ph ], [ %588, %586 ]
  %j.10731 = phi i32 [ 0, %.preheader101.lr.ph ], [ %589, %586 ]
  %568 = icmp sgt i32 %567, 0
  br i1 %568, label %.lr.ph729, label %586

.lr.ph729:                                        ; preds = %.preheader101
  %569 = load i8**** %55, align 8, !tbaa !15
  %570 = getelementptr inbounds i8*** %569, i64 %indvars.iv1201
  %571 = bitcast i8*** %570 to i32***
  %572 = load i32*** %571, align 8, !tbaa !9
  %573 = load i32** %572, align 8, !tbaa !9
  br label %574

; <label>:574                                     ; preds = %.lr.ph729, %574
  %i.13728 = phi i32 [ 0, %.lr.ph729 ], [ %583, %574 ]
  %575 = load i32* %52, align 4, !tbaa !2
  %576 = load i32* %53, align 4, !tbaa !2
  %577 = mul nsw i32 %576, %k.10734
  %578 = add nsw i32 %577, %j.10731
  %579 = mul nsw i32 %578, %575
  %580 = add nsw i32 %579, %i.13728
  %581 = sext i32 %580 to i64
  %582 = getelementptr inbounds i32* %573, i64 %581
  store i32 %562, i32* %582, align 4, !tbaa !2
  %583 = add nuw nsw i32 %i.13728, 1
  %584 = load i32* %51, align 4, !tbaa !2
  %585 = icmp slt i32 %583, %584
  br i1 %585, label %574, label %._crit_edge730

._crit_edge730:                                   ; preds = %574
  %.pre1252 = load i32* %50, align 4, !tbaa !2
  br label %586

; <label>:586                                     ; preds = %._crit_edge730, %.preheader101
  %587 = phi i32 [ %.pre1252, %._crit_edge730 ], [ %566, %.preheader101 ]
  %588 = phi i32 [ %584, %._crit_edge730 ], [ %567, %.preheader101 ]
  %589 = add nuw nsw i32 %j.10731, 1
  %590 = icmp slt i32 %589, %587
  br i1 %590, label %.preheader101, label %._crit_edge733

._crit_edge733:                                   ; preds = %586
  %.pre1253 = load i32* %49, align 4, !tbaa !2
  br label %591

; <label>:591                                     ; preds = %._crit_edge733, %.preheader167
  %592 = phi i32 [ %.pre1253, %._crit_edge733 ], [ %563, %.preheader167 ]
  %593 = phi i32 [ %587, %._crit_edge733 ], [ %564, %.preheader167 ]
  %594 = add nuw nsw i32 %k.10734, 1
  %595 = icmp slt i32 %594, %592
  br i1 %595, label %.preheader167, label %.loopexit239

.loopexit239:                                     ; preds = %591, %.preheader238
  %.pre1254 = load i32* %48, align 4, !tbaa !2
  br label %596

; <label>:596                                     ; preds = %.loopexit239, %553
  %597 = phi i32 [ %.pre1254, %.loopexit239 ], [ %559, %553 ]
  %598 = icmp eq i32 %597, 0
  br i1 %598, label %.thread67, label %.preheader236

.preheader236:                                    ; preds = %596
  %599 = load i32* %49, align 4, !tbaa !2
  %600 = icmp sgt i32 %599, 0
  br i1 %600, label %.preheader166.lr.ph, label %.thread67

.preheader166.lr.ph:                              ; preds = %.preheader236
  %601 = fptosi double %.066791 to i32
  %.pre1255 = load i32* %50, align 4, !tbaa !2
  br label %.preheader166

.preheader166:                                    ; preds = %.preheader166.lr.ph, %633
  %602 = phi i32 [ %599, %.preheader166.lr.ph ], [ %634, %633 ]
  %603 = phi i32 [ %.pre1255, %.preheader166.lr.ph ], [ %635, %633 ]
  %k.11742 = phi i32 [ 0, %.preheader166.lr.ph ], [ %636, %633 ]
  %604 = icmp sgt i32 %603, 0
  br i1 %604, label %.preheader100.lr.ph, label %633

.preheader100.lr.ph:                              ; preds = %.preheader166
  %605 = xor i32 %k.11742, -1
  %.pre1256 = load i32* %51, align 4, !tbaa !2
  br label %.preheader100

.preheader100:                                    ; preds = %.preheader100.lr.ph, %628
  %606 = phi i32 [ %603, %.preheader100.lr.ph ], [ %629, %628 ]
  %607 = phi i32 [ %.pre1256, %.preheader100.lr.ph ], [ %630, %628 ]
  %j.11739 = phi i32 [ 0, %.preheader100.lr.ph ], [ %631, %628 ]
  %608 = icmp sgt i32 %607, 0
  br i1 %608, label %.lr.ph737, label %628

.lr.ph737:                                        ; preds = %.preheader100
  %609 = load i8**** %55, align 8, !tbaa !15
  %610 = getelementptr inbounds i8*** %609, i64 %indvars.iv1201
  %611 = bitcast i8*** %610 to i32***
  %612 = load i32*** %611, align 8, !tbaa !9
  %613 = load i32** %612, align 8, !tbaa !9
  br label %614

; <label>:614                                     ; preds = %.lr.ph737, %614
  %i.14736 = phi i32 [ 0, %.lr.ph737 ], [ %625, %614 ]
  %615 = load i32* %52, align 4, !tbaa !2
  %616 = load i32* %53, align 4, !tbaa !2
  %617 = load i32* %54, align 4, !tbaa !2
  %618 = add i32 %617, %605
  %619 = mul nsw i32 %618, %616
  %620 = add nsw i32 %619, %j.11739
  %621 = mul nsw i32 %620, %615
  %622 = add nsw i32 %621, %i.14736
  %623 = sext i32 %622 to i64
  %624 = getelementptr inbounds i32* %613, i64 %623
  store i32 %601, i32* %624, align 4, !tbaa !2
  %625 = add nuw nsw i32 %i.14736, 1
  %626 = load i32* %51, align 4, !tbaa !2
  %627 = icmp slt i32 %625, %626
  br i1 %627, label %614, label %._crit_edge738

._crit_edge738:                                   ; preds = %614
  %.pre1257 = load i32* %50, align 4, !tbaa !2
  br label %628

; <label>:628                                     ; preds = %._crit_edge738, %.preheader100
  %629 = phi i32 [ %.pre1257, %._crit_edge738 ], [ %606, %.preheader100 ]
  %630 = phi i32 [ %626, %._crit_edge738 ], [ %607, %.preheader100 ]
  %631 = add nuw nsw i32 %j.11739, 1
  %632 = icmp slt i32 %631, %629
  br i1 %632, label %.preheader100, label %._crit_edge741

._crit_edge741:                                   ; preds = %628
  %.pre1258 = load i32* %49, align 4, !tbaa !2
  br label %633

; <label>:633                                     ; preds = %._crit_edge741, %.preheader166
  %634 = phi i32 [ %.pre1258, %._crit_edge741 ], [ %602, %.preheader166 ]
  %635 = phi i32 [ %629, %._crit_edge741 ], [ %603, %.preheader166 ]
  %636 = add nuw nsw i32 %k.11742, 1
  %637 = icmp slt i32 %636, %634
  br i1 %637, label %.preheader166, label %.thread67

; <label>:638                                     ; preds = %._crit_edge
  br i1 %41, label %639, label %.thread67

; <label>:639                                     ; preds = %638
  %640 = bitcast [6 x i32]* %doBC to i64*
  %641 = load i64* %640, align 16
  %642 = trunc i64 %641 to i32
  %643 = icmp eq i32 %642, 0
  br i1 %643, label %.loopexit259, label %.preheader258

.preheader258:                                    ; preds = %639
  %644 = load i32* %54, align 4, !tbaa !2
  %645 = icmp sgt i32 %644, 0
  br i1 %645, label %.preheader177.lr.ph, label %.loopexit259

.preheader177.lr.ph:                              ; preds = %.preheader258
  %646 = load i32* %50, align 4, !tbaa !2
  %647 = icmp sgt i32 %646, 0
  %648 = load i32* %57, align 4, !tbaa !2
  %649 = icmp sgt i32 %648, 0
  %650 = load i32* %52, align 4, !tbaa !2
  %651 = load i32* %53, align 4, !tbaa !2
  %652 = add i32 %648, -1
  %653 = sext i32 %650 to i64
  %654 = add i32 %646, -1
  %655 = sext i32 %651 to i64
  %656 = sext i32 %644 to i64
  br label %.preheader177

.preheader177:                                    ; preds = %.preheader177.lr.ph, %._crit_edge665
  %indvars.iv1156 = phi i64 [ 0, %.preheader177.lr.ph ], [ %indvars.iv.next1157, %._crit_edge665 ]
  br i1 %647, label %.preheader111.lr.ph, label %._crit_edge665

.preheader111.lr.ph:                              ; preds = %.preheader177
  %657 = mul nsw i64 %655, %indvars.iv1156
  br label %.preheader111

.preheader111:                                    ; preds = %._crit_edge663, %.preheader111.lr.ph
  %indvars.iv1152 = phi i64 [ 0, %.preheader111.lr.ph ], [ %indvars.iv.next1153, %._crit_edge663 ]
  br i1 %649, label %.lr.ph662, label %._crit_edge663

.lr.ph662:                                        ; preds = %.preheader111
  %658 = add nsw i64 %657, %indvars.iv1152
  %659 = mul nsw i64 %658, %653
  %660 = load i8**** %55, align 8, !tbaa !15
  %661 = getelementptr inbounds i8*** %660, i64 %indvars.iv1201
  %662 = bitcast i8*** %661 to double***
  %663 = load double*** %662, align 8, !tbaa !9
  %664 = load double** %663, align 8, !tbaa !9
  br label %665

; <label>:665                                     ; preds = %665, %.lr.ph662
  %indvars.iv1148 = phi i64 [ 0, %.lr.ph662 ], [ %indvars.iv.next1149, %665 ]
  %666 = add nsw i64 %659, %indvars.iv1148
  %667 = getelementptr inbounds double* %664, i64 %666
  store double %.066791, double* %667, align 8, !tbaa !17
  %indvars.iv.next1149 = add nuw nsw i64 %indvars.iv1148, 1
  %lftr.wideiv1150 = trunc i64 %indvars.iv1148 to i32
  %exitcond1151 = icmp eq i32 %lftr.wideiv1150, %652
  br i1 %exitcond1151, label %._crit_edge663, label %665

._crit_edge663:                                   ; preds = %665, %.preheader111
  %indvars.iv.next1153 = add nuw nsw i64 %indvars.iv1152, 1
  %lftr.wideiv1154 = trunc i64 %indvars.iv1152 to i32
  %exitcond1155 = icmp eq i32 %lftr.wideiv1154, %654
  br i1 %exitcond1155, label %._crit_edge665, label %.preheader111

._crit_edge665:                                   ; preds = %._crit_edge663, %.preheader177
  %indvars.iv.next1157 = add nuw nsw i64 %indvars.iv1156, 1
  %668 = icmp slt i64 %indvars.iv.next1157, %656
  br i1 %668, label %.preheader177, label %.loopexit259

.loopexit259:                                     ; preds = %._crit_edge665, %.preheader258, %639
  %669 = icmp ult i64 %641, 4294967296
  br i1 %669, label %.loopexit257, label %.preheader256

.preheader256:                                    ; preds = %.loopexit259
  %670 = load i32* %54, align 4, !tbaa !2
  %671 = icmp sgt i32 %670, 0
  br i1 %671, label %.preheader176.lr.ph, label %.loopexit257

.preheader176.lr.ph:                              ; preds = %.preheader256
  %672 = load i32* %50, align 4, !tbaa !2
  %673 = icmp sgt i32 %672, 0
  %674 = load i32* %57, align 4, !tbaa !2
  %675 = icmp sgt i32 %674, 0
  %676 = load i32* %51, align 4, !tbaa !2
  %677 = load i32* %52, align 4, !tbaa !2
  %678 = load i32* %53, align 4, !tbaa !2
  %679 = add i32 %674, -1
  %680 = add i32 %672, -1
  br label %.preheader176

.preheader176:                                    ; preds = %.preheader176.lr.ph, %._crit_edge671
  %k.13672 = phi i32 [ 0, %.preheader176.lr.ph ], [ %697, %._crit_edge671 ]
  br i1 %673, label %.preheader110.lr.ph, label %._crit_edge671

.preheader110.lr.ph:                              ; preds = %.preheader176
  %681 = mul nsw i32 %678, %k.13672
  br label %.preheader110

.preheader110:                                    ; preds = %._crit_edge669, %.preheader110.lr.ph
  %j.13670 = phi i32 [ 0, %.preheader110.lr.ph ], [ %696, %._crit_edge669 ]
  br i1 %675, label %.lr.ph668, label %._crit_edge669

.lr.ph668:                                        ; preds = %.preheader110
  %682 = add nsw i32 %681, %j.13670
  %683 = mul nsw i32 %682, %677
  %684 = load i8**** %55, align 8, !tbaa !15
  %685 = getelementptr inbounds i8*** %684, i64 %indvars.iv1201
  %686 = bitcast i8*** %685 to double***
  %687 = load double*** %686, align 8, !tbaa !9
  %688 = load double** %687, align 8, !tbaa !9
  br label %689

; <label>:689                                     ; preds = %689, %.lr.ph668
  %indvars.iv1158 = phi i64 [ 0, %.lr.ph668 ], [ %indvars.iv.next1159, %689 ]
  %690 = xor i64 %indvars.iv1158, 4294967295
  %691 = trunc i64 %690 to i32
  %692 = add i32 %676, %691
  %693 = add i32 %692, %683
  %694 = sext i32 %693 to i64
  %695 = getelementptr inbounds double* %688, i64 %694
  store double %.066791, double* %695, align 8, !tbaa !17
  %indvars.iv.next1159 = add nuw nsw i64 %indvars.iv1158, 1
  %lftr.wideiv1160 = trunc i64 %indvars.iv1158 to i32
  %exitcond1161 = icmp eq i32 %lftr.wideiv1160, %679
  br i1 %exitcond1161, label %._crit_edge669, label %689

._crit_edge669:                                   ; preds = %689, %.preheader110
  %696 = add nuw nsw i32 %j.13670, 1
  %exitcond1162 = icmp eq i32 %j.13670, %680
  br i1 %exitcond1162, label %._crit_edge671, label %.preheader110

._crit_edge671:                                   ; preds = %._crit_edge669, %.preheader176
  %697 = add nuw nsw i32 %k.13672, 1
  %698 = icmp slt i32 %697, %670
  br i1 %698, label %.preheader176, label %.loopexit257

.loopexit257:                                     ; preds = %._crit_edge671, %.preheader256, %.loopexit259
  br i1 %43, label %699, label %.thread67

; <label>:699                                     ; preds = %.loopexit257
  %700 = bitcast i32* %44 to i64*
  %701 = load i64* %700, align 8
  %702 = trunc i64 %701 to i32
  %703 = icmp eq i32 %702, 0
  br i1 %703, label %.loopexit255, label %.preheader254

.preheader254:                                    ; preds = %699
  %704 = load i32* %54, align 4, !tbaa !2
  %705 = icmp sgt i32 %704, 0
  br i1 %705, label %.preheader175.lr.ph, label %.loopexit255

.preheader175.lr.ph:                              ; preds = %.preheader254
  %706 = load i32* %56, align 4, !tbaa !2
  %707 = icmp sgt i32 %706, 0
  %708 = load i32* %51, align 4, !tbaa !2
  %709 = icmp sgt i32 %708, 0
  %710 = load i32* %52, align 4, !tbaa !2
  %711 = load i32* %53, align 4, !tbaa !2
  %712 = add i32 %708, -1
  %713 = sext i32 %710 to i64
  %714 = add i32 %706, -1
  %715 = sext i32 %711 to i64
  %716 = sext i32 %704 to i64
  br label %.preheader175

.preheader175:                                    ; preds = %.preheader175.lr.ph, %._crit_edge677
  %indvars.iv1171 = phi i64 [ 0, %.preheader175.lr.ph ], [ %indvars.iv.next1172, %._crit_edge677 ]
  br i1 %707, label %.preheader109.lr.ph, label %._crit_edge677

.preheader109.lr.ph:                              ; preds = %.preheader175
  %717 = mul nsw i64 %715, %indvars.iv1171
  br label %.preheader109

.preheader109:                                    ; preds = %._crit_edge675, %.preheader109.lr.ph
  %indvars.iv1167 = phi i64 [ 0, %.preheader109.lr.ph ], [ %indvars.iv.next1168, %._crit_edge675 ]
  br i1 %709, label %.lr.ph674, label %._crit_edge675

.lr.ph674:                                        ; preds = %.preheader109
  %718 = add nsw i64 %717, %indvars.iv1167
  %719 = mul nsw i64 %718, %713
  %720 = load i8**** %55, align 8, !tbaa !15
  %721 = getelementptr inbounds i8*** %720, i64 %indvars.iv1201
  %722 = bitcast i8*** %721 to double***
  %723 = load double*** %722, align 8, !tbaa !9
  %724 = load double** %723, align 8, !tbaa !9
  br label %725

; <label>:725                                     ; preds = %725, %.lr.ph674
  %indvars.iv1163 = phi i64 [ 0, %.lr.ph674 ], [ %indvars.iv.next1164, %725 ]
  %726 = add nsw i64 %719, %indvars.iv1163
  %727 = getelementptr inbounds double* %724, i64 %726
  store double %.066791, double* %727, align 8, !tbaa !17
  %indvars.iv.next1164 = add nuw nsw i64 %indvars.iv1163, 1
  %lftr.wideiv1165 = trunc i64 %indvars.iv1163 to i32
  %exitcond1166 = icmp eq i32 %lftr.wideiv1165, %712
  br i1 %exitcond1166, label %._crit_edge675, label %725

._crit_edge675:                                   ; preds = %725, %.preheader109
  %indvars.iv.next1168 = add nuw nsw i64 %indvars.iv1167, 1
  %lftr.wideiv1169 = trunc i64 %indvars.iv1167 to i32
  %exitcond1170 = icmp eq i32 %lftr.wideiv1169, %714
  br i1 %exitcond1170, label %._crit_edge677, label %.preheader109

._crit_edge677:                                   ; preds = %._crit_edge675, %.preheader175
  %indvars.iv.next1172 = add nuw nsw i64 %indvars.iv1171, 1
  %728 = icmp slt i64 %indvars.iv.next1172, %716
  br i1 %728, label %.preheader175, label %.loopexit255

.loopexit255:                                     ; preds = %._crit_edge677, %.preheader254, %699
  %729 = icmp ult i64 %701, 4294967296
  br i1 %729, label %.loopexit253, label %.preheader252

.preheader252:                                    ; preds = %.loopexit255
  %730 = load i32* %54, align 4, !tbaa !2
  %731 = icmp sgt i32 %730, 0
  br i1 %731, label %.preheader174.lr.ph, label %.loopexit253

.preheader174.lr.ph:                              ; preds = %.preheader252
  %732 = load i32* %56, align 4, !tbaa !2
  %733 = icmp sgt i32 %732, 0
  %734 = load i32* %51, align 4, !tbaa !2
  %735 = icmp sgt i32 %734, 0
  %736 = load i32* %52, align 4, !tbaa !2
  %737 = load i32* %50, align 4, !tbaa !2
  %738 = load i32* %53, align 4, !tbaa !2
  %739 = add i32 %734, -1
  %740 = add i32 %732, -1
  br label %.preheader174

.preheader174:                                    ; preds = %.preheader174.lr.ph, %._crit_edge683
  %k.15684 = phi i32 [ 0, %.preheader174.lr.ph ], [ %756, %._crit_edge683 ]
  br i1 %733, label %.preheader108.lr.ph, label %._crit_edge683

.preheader108.lr.ph:                              ; preds = %.preheader174
  %741 = mul nsw i32 %738, %k.15684
  br label %.preheader108

.preheader108:                                    ; preds = %._crit_edge681, %.preheader108.lr.ph
  %indvars.iv1177 = phi i64 [ 0, %.preheader108.lr.ph ], [ %indvars.iv.next1178, %._crit_edge681 ]
  br i1 %735, label %.lr.ph680, label %._crit_edge681

.lr.ph680:                                        ; preds = %.preheader108
  %742 = xor i64 %indvars.iv1177, 4294967295
  %743 = trunc i64 %742 to i32
  %744 = add i32 %737, %743
  %745 = add i32 %744, %741
  %746 = mul nsw i32 %745, %736
  %747 = load i8**** %55, align 8, !tbaa !15
  %748 = getelementptr inbounds i8*** %747, i64 %indvars.iv1201
  %749 = bitcast i8*** %748 to double***
  %750 = load double*** %749, align 8, !tbaa !9
  %751 = load double** %750, align 8, !tbaa !9
  %752 = sext i32 %746 to i64
  br label %753

; <label>:753                                     ; preds = %753, %.lr.ph680
  %indvars.iv1173 = phi i64 [ 0, %.lr.ph680 ], [ %indvars.iv.next1174, %753 ]
  %754 = add nsw i64 %752, %indvars.iv1173
  %755 = getelementptr inbounds double* %751, i64 %754
  store double %.066791, double* %755, align 8, !tbaa !17
  %indvars.iv.next1174 = add nuw nsw i64 %indvars.iv1173, 1
  %lftr.wideiv1175 = trunc i64 %indvars.iv1173 to i32
  %exitcond1176 = icmp eq i32 %lftr.wideiv1175, %739
  br i1 %exitcond1176, label %._crit_edge681, label %753

._crit_edge681:                                   ; preds = %753, %.preheader108
  %indvars.iv.next1178 = add nuw nsw i64 %indvars.iv1177, 1
  %lftr.wideiv1179 = trunc i64 %indvars.iv1177 to i32
  %exitcond1180 = icmp eq i32 %lftr.wideiv1179, %740
  br i1 %exitcond1180, label %._crit_edge683, label %.preheader108

._crit_edge683:                                   ; preds = %._crit_edge681, %.preheader174
  %756 = add nuw nsw i32 %k.15684, 1
  %757 = icmp slt i32 %756, %730
  br i1 %757, label %.preheader174, label %.loopexit253

.loopexit253:                                     ; preds = %._crit_edge683, %.preheader252, %.loopexit255
  br i1 %46, label %758, label %.thread67

; <label>:758                                     ; preds = %.loopexit253
  %759 = bitcast i32* %47 to i64*
  %760 = load i64* %759, align 16
  %761 = trunc i64 %760 to i32
  %762 = icmp eq i32 %761, 0
  br i1 %762, label %.loopexit251, label %.preheader250

.preheader250:                                    ; preds = %758
  %763 = load i32* %49, align 4, !tbaa !2
  %764 = icmp sgt i32 %763, 0
  br i1 %764, label %.preheader173.lr.ph, label %.loopexit251

.preheader173.lr.ph:                              ; preds = %.preheader250
  %765 = load i32* %50, align 4, !tbaa !2
  %766 = icmp sgt i32 %765, 0
  %767 = load i32* %51, align 4, !tbaa !2
  %768 = icmp sgt i32 %767, 0
  %769 = load i32* %52, align 4, !tbaa !2
  %770 = load i32* %53, align 4, !tbaa !2
  %771 = add i32 %767, -1
  %772 = sext i32 %769 to i64
  %773 = add i32 %765, -1
  %774 = sext i32 %770 to i64
  %775 = sext i32 %763 to i64
  br label %.preheader173

.preheader173:                                    ; preds = %.preheader173.lr.ph, %._crit_edge689
  %indvars.iv1189 = phi i64 [ 0, %.preheader173.lr.ph ], [ %indvars.iv.next1190, %._crit_edge689 ]
  br i1 %766, label %.preheader107.lr.ph, label %._crit_edge689

.preheader107.lr.ph:                              ; preds = %.preheader173
  %776 = mul nsw i64 %774, %indvars.iv1189
  br label %.preheader107

.preheader107:                                    ; preds = %._crit_edge687, %.preheader107.lr.ph
  %indvars.iv1185 = phi i64 [ 0, %.preheader107.lr.ph ], [ %indvars.iv.next1186, %._crit_edge687 ]
  br i1 %768, label %.lr.ph686, label %._crit_edge687

.lr.ph686:                                        ; preds = %.preheader107
  %777 = add nsw i64 %776, %indvars.iv1185
  %778 = mul nsw i64 %777, %772
  %779 = load i8**** %55, align 8, !tbaa !15
  %780 = getelementptr inbounds i8*** %779, i64 %indvars.iv1201
  %781 = bitcast i8*** %780 to double***
  %782 = load double*** %781, align 8, !tbaa !9
  %783 = load double** %782, align 8, !tbaa !9
  br label %784

; <label>:784                                     ; preds = %784, %.lr.ph686
  %indvars.iv1181 = phi i64 [ 0, %.lr.ph686 ], [ %indvars.iv.next1182, %784 ]
  %785 = add nsw i64 %778, %indvars.iv1181
  %786 = getelementptr inbounds double* %783, i64 %785
  store double %.066791, double* %786, align 8, !tbaa !17
  %indvars.iv.next1182 = add nuw nsw i64 %indvars.iv1181, 1
  %lftr.wideiv1183 = trunc i64 %indvars.iv1181 to i32
  %exitcond1184 = icmp eq i32 %lftr.wideiv1183, %771
  br i1 %exitcond1184, label %._crit_edge687, label %784

._crit_edge687:                                   ; preds = %784, %.preheader107
  %indvars.iv.next1186 = add nuw nsw i64 %indvars.iv1185, 1
  %lftr.wideiv1187 = trunc i64 %indvars.iv1185 to i32
  %exitcond1188 = icmp eq i32 %lftr.wideiv1187, %773
  br i1 %exitcond1188, label %._crit_edge689, label %.preheader107

._crit_edge689:                                   ; preds = %._crit_edge687, %.preheader173
  %indvars.iv.next1190 = add nuw nsw i64 %indvars.iv1189, 1
  %787 = icmp slt i64 %indvars.iv.next1190, %775
  br i1 %787, label %.preheader173, label %.loopexit251

.loopexit251:                                     ; preds = %._crit_edge689, %.preheader250, %758
  %788 = icmp ult i64 %760, 4294967296
  br i1 %788, label %.thread67, label %.preheader248

.preheader248:                                    ; preds = %.loopexit251
  %789 = load i32* %49, align 4, !tbaa !2
  %790 = icmp sgt i32 %789, 0
  br i1 %790, label %.preheader172.lr.ph, label %.thread67

.preheader172.lr.ph:                              ; preds = %.preheader248
  %791 = load i32* %50, align 4, !tbaa !2
  %792 = icmp sgt i32 %791, 0
  %793 = load i32* %51, align 4, !tbaa !2
  %794 = icmp sgt i32 %793, 0
  %795 = load i32* %52, align 4, !tbaa !2
  %796 = load i32* %53, align 4, !tbaa !2
  %797 = load i32* %54, align 4, !tbaa !2
  %798 = add i32 %793, -1
  %799 = sext i32 %795 to i64
  %800 = add i32 %791, -1
  %801 = sext i32 %789 to i64
  br label %.preheader172

.preheader172:                                    ; preds = %.preheader172.lr.ph, %._crit_edge695
  %indvars.iv1199 = phi i64 [ 0, %.preheader172.lr.ph ], [ %indvars.iv.next1200, %._crit_edge695 ]
  br i1 %792, label %.preheader106.lr.ph, label %._crit_edge695

.preheader106.lr.ph:                              ; preds = %.preheader172
  %802 = xor i64 %indvars.iv1199, 4294967295
  %803 = trunc i64 %802 to i32
  %804 = add i32 %797, %803
  %805 = mul nsw i32 %804, %796
  %806 = sext i32 %805 to i64
  br label %.preheader106

.preheader106:                                    ; preds = %._crit_edge693, %.preheader106.lr.ph
  %indvars.iv1195 = phi i64 [ 0, %.preheader106.lr.ph ], [ %indvars.iv.next1196, %._crit_edge693 ]
  br i1 %794, label %.lr.ph692, label %._crit_edge693

.lr.ph692:                                        ; preds = %.preheader106
  %807 = add nsw i64 %806, %indvars.iv1195
  %808 = mul nsw i64 %807, %799
  %809 = load i8**** %55, align 8, !tbaa !15
  %810 = getelementptr inbounds i8*** %809, i64 %indvars.iv1201
  %811 = bitcast i8*** %810 to double***
  %812 = load double*** %811, align 8, !tbaa !9
  %813 = load double** %812, align 8, !tbaa !9
  br label %814

; <label>:814                                     ; preds = %814, %.lr.ph692
  %indvars.iv1191 = phi i64 [ 0, %.lr.ph692 ], [ %indvars.iv.next1192, %814 ]
  %815 = add nsw i64 %808, %indvars.iv1191
  %816 = getelementptr inbounds double* %813, i64 %815
  store double %.066791, double* %816, align 8, !tbaa !17
  %indvars.iv.next1192 = add nuw nsw i64 %indvars.iv1191, 1
  %lftr.wideiv1193 = trunc i64 %indvars.iv1191 to i32
  %exitcond1194 = icmp eq i32 %lftr.wideiv1193, %798
  br i1 %exitcond1194, label %._crit_edge693, label %814

._crit_edge693:                                   ; preds = %814, %.preheader106
  %indvars.iv.next1196 = add nuw nsw i64 %indvars.iv1195, 1
  %lftr.wideiv1197 = trunc i64 %indvars.iv1195 to i32
  %exitcond1198 = icmp eq i32 %lftr.wideiv1197, %800
  br i1 %exitcond1198, label %._crit_edge695, label %.preheader106

._crit_edge695:                                   ; preds = %._crit_edge693, %.preheader172
  %indvars.iv.next1200 = add nuw nsw i64 %indvars.iv1199, 1
  %817 = icmp slt i64 %indvars.iv.next1200, %801
  br i1 %817, label %.preheader172, label %.thread67

; <label>:818                                     ; preds = %._crit_edge
  br i1 %41, label %819, label %.thread67

; <label>:819                                     ; preds = %818
  %820 = bitcast [6 x i32]* %doBC to i64*
  %821 = load i64* %820, align 16
  %822 = trunc i64 %821 to i32
  %823 = icmp eq i32 %822, 0
  br i1 %823, label %.loopexit282, label %.preheader281

.preheader281:                                    ; preds = %819
  %824 = load i32* %54, align 4, !tbaa !2
  %825 = icmp sgt i32 %824, 0
  br i1 %825, label %.preheader189.lr.ph, label %.loopexit282

.preheader189.lr.ph:                              ; preds = %.preheader281
  %826 = load i32* %50, align 4, !tbaa !2
  %827 = icmp sgt i32 %826, 0
  %828 = load i32* %57, align 4, !tbaa !2
  %829 = icmp sgt i32 %828, 0
  %830 = load i32* %52, align 4, !tbaa !2
  %831 = load i32* %53, align 4, !tbaa !2
  %832 = add i32 %828, -1
  %833 = sext i32 %830 to i64
  %834 = add i32 %826, -1
  %835 = sext i32 %831 to i64
  %836 = sext i32 %824 to i64
  br label %.preheader189

.preheader189:                                    ; preds = %.preheader189.lr.ph, %._crit_edge593
  %indvars.iv1050 = phi i64 [ 0, %.preheader189.lr.ph ], [ %indvars.iv.next1051, %._crit_edge593 ]
  br i1 %827, label %.preheader123.lr.ph, label %._crit_edge593

.preheader123.lr.ph:                              ; preds = %.preheader189
  %837 = mul nsw i64 %835, %indvars.iv1050
  br label %.preheader123

.preheader123:                                    ; preds = %._crit_edge591, %.preheader123.lr.ph
  %indvars.iv1046 = phi i64 [ 0, %.preheader123.lr.ph ], [ %indvars.iv.next1047, %._crit_edge591 ]
  br i1 %829, label %.lr.ph590, label %._crit_edge591

.lr.ph590:                                        ; preds = %.preheader123
  %838 = add nsw i64 %837, %indvars.iv1046
  %839 = mul nsw i64 %838, %833
  %840 = load i8**** %55, align 8, !tbaa !15
  %841 = getelementptr inbounds i8*** %840, i64 %indvars.iv1201
  %842 = bitcast i8*** %841 to %struct.CCTK_COMPLEX16***
  %843 = load %struct.CCTK_COMPLEX16*** %842, align 8, !tbaa !9
  %844 = load %struct.CCTK_COMPLEX16** %843, align 8, !tbaa !9
  br label %845

; <label>:845                                     ; preds = %845, %.lr.ph590
  %indvars.iv1042 = phi i64 [ 0, %.lr.ph590 ], [ %indvars.iv.next1043, %845 ]
  %846 = add nsw i64 %839, %indvars.iv1042
  %847 = getelementptr inbounds %struct.CCTK_COMPLEX16* %844, i64 %846, i32 0
  store double %.066791, double* %847, align 8, !tbaa !18
  %indvars.iv.next1043 = add nuw nsw i64 %indvars.iv1042, 1
  %lftr.wideiv1044 = trunc i64 %indvars.iv1042 to i32
  %exitcond1045 = icmp eq i32 %lftr.wideiv1044, %832
  br i1 %exitcond1045, label %._crit_edge591, label %845

._crit_edge591:                                   ; preds = %845, %.preheader123
  %indvars.iv.next1047 = add nuw nsw i64 %indvars.iv1046, 1
  %lftr.wideiv1048 = trunc i64 %indvars.iv1046 to i32
  %exitcond1049 = icmp eq i32 %lftr.wideiv1048, %834
  br i1 %exitcond1049, label %._crit_edge593, label %.preheader123

._crit_edge593:                                   ; preds = %._crit_edge591, %.preheader189
  %indvars.iv.next1051 = add nuw nsw i64 %indvars.iv1050, 1
  %848 = icmp slt i64 %indvars.iv.next1051, %836
  br i1 %848, label %.preheader189, label %.loopexit282

.loopexit282:                                     ; preds = %._crit_edge593, %.preheader281, %819
  %849 = icmp ult i64 %821, 4294967296
  br i1 %849, label %.loopexit280, label %.preheader279

.preheader279:                                    ; preds = %.loopexit282
  %850 = load i32* %54, align 4, !tbaa !2
  %851 = icmp sgt i32 %850, 0
  br i1 %851, label %.preheader188.lr.ph, label %.loopexit280

.preheader188.lr.ph:                              ; preds = %.preheader279
  %852 = load i32* %50, align 4, !tbaa !2
  %853 = icmp sgt i32 %852, 0
  %854 = load i32* %57, align 4, !tbaa !2
  %855 = icmp sgt i32 %854, 0
  %856 = load i32* %51, align 4, !tbaa !2
  %857 = load i32* %52, align 4, !tbaa !2
  %858 = load i32* %53, align 4, !tbaa !2
  %859 = add i32 %854, -1
  %860 = add i32 %852, -1
  br label %.preheader188

.preheader188:                                    ; preds = %.preheader188.lr.ph, %._crit_edge599
  %k.19600 = phi i32 [ 0, %.preheader188.lr.ph ], [ %877, %._crit_edge599 ]
  br i1 %853, label %.preheader122.lr.ph, label %._crit_edge599

.preheader122.lr.ph:                              ; preds = %.preheader188
  %861 = mul nsw i32 %858, %k.19600
  br label %.preheader122

.preheader122:                                    ; preds = %._crit_edge597, %.preheader122.lr.ph
  %j.19598 = phi i32 [ 0, %.preheader122.lr.ph ], [ %876, %._crit_edge597 ]
  br i1 %855, label %.lr.ph596, label %._crit_edge597

.lr.ph596:                                        ; preds = %.preheader122
  %862 = add nsw i32 %861, %j.19598
  %863 = mul nsw i32 %862, %857
  %864 = load i8**** %55, align 8, !tbaa !15
  %865 = getelementptr inbounds i8*** %864, i64 %indvars.iv1201
  %866 = bitcast i8*** %865 to %struct.CCTK_COMPLEX16***
  %867 = load %struct.CCTK_COMPLEX16*** %866, align 8, !tbaa !9
  %868 = load %struct.CCTK_COMPLEX16** %867, align 8, !tbaa !9
  br label %869

; <label>:869                                     ; preds = %869, %.lr.ph596
  %indvars.iv1052 = phi i64 [ 0, %.lr.ph596 ], [ %indvars.iv.next1053, %869 ]
  %870 = xor i64 %indvars.iv1052, 4294967295
  %871 = trunc i64 %870 to i32
  %872 = add i32 %856, %871
  %873 = add i32 %872, %863
  %874 = sext i32 %873 to i64
  %875 = getelementptr inbounds %struct.CCTK_COMPLEX16* %868, i64 %874, i32 0
  store double %.066791, double* %875, align 8, !tbaa !18
  %indvars.iv.next1053 = add nuw nsw i64 %indvars.iv1052, 1
  %lftr.wideiv1054 = trunc i64 %indvars.iv1052 to i32
  %exitcond1055 = icmp eq i32 %lftr.wideiv1054, %859
  br i1 %exitcond1055, label %._crit_edge597, label %869

._crit_edge597:                                   ; preds = %869, %.preheader122
  %876 = add nuw nsw i32 %j.19598, 1
  %exitcond1056 = icmp eq i32 %j.19598, %860
  br i1 %exitcond1056, label %._crit_edge599, label %.preheader122

._crit_edge599:                                   ; preds = %._crit_edge597, %.preheader188
  %877 = add nuw nsw i32 %k.19600, 1
  %878 = icmp slt i32 %877, %850
  br i1 %878, label %.preheader188, label %.loopexit280

.loopexit280:                                     ; preds = %._crit_edge599, %.preheader279, %.loopexit282
  br i1 %43, label %879, label %.thread76

; <label>:879                                     ; preds = %.loopexit280
  %880 = bitcast i32* %44 to i64*
  %881 = load i64* %880, align 8
  %882 = trunc i64 %881 to i32
  %883 = icmp eq i32 %882, 0
  br i1 %883, label %.loopexit278, label %.preheader277

.preheader277:                                    ; preds = %879
  %884 = load i32* %54, align 4, !tbaa !2
  %885 = icmp sgt i32 %884, 0
  br i1 %885, label %.preheader187.lr.ph, label %.loopexit278

.preheader187.lr.ph:                              ; preds = %.preheader277
  %886 = load i32* %56, align 4, !tbaa !2
  %887 = icmp sgt i32 %886, 0
  %888 = load i32* %51, align 4, !tbaa !2
  %889 = icmp sgt i32 %888, 0
  %890 = load i32* %52, align 4, !tbaa !2
  %891 = load i32* %53, align 4, !tbaa !2
  %892 = add i32 %888, -1
  %893 = sext i32 %890 to i64
  %894 = add i32 %886, -1
  %895 = sext i32 %891 to i64
  %896 = sext i32 %884 to i64
  br label %.preheader187

.preheader187:                                    ; preds = %.preheader187.lr.ph, %._crit_edge605
  %indvars.iv1065 = phi i64 [ 0, %.preheader187.lr.ph ], [ %indvars.iv.next1066, %._crit_edge605 ]
  br i1 %887, label %.preheader121.lr.ph, label %._crit_edge605

.preheader121.lr.ph:                              ; preds = %.preheader187
  %897 = mul nsw i64 %895, %indvars.iv1065
  br label %.preheader121

.preheader121:                                    ; preds = %._crit_edge603, %.preheader121.lr.ph
  %indvars.iv1061 = phi i64 [ 0, %.preheader121.lr.ph ], [ %indvars.iv.next1062, %._crit_edge603 ]
  br i1 %889, label %.lr.ph602, label %._crit_edge603

.lr.ph602:                                        ; preds = %.preheader121
  %898 = add nsw i64 %897, %indvars.iv1061
  %899 = mul nsw i64 %898, %893
  %900 = load i8**** %55, align 8, !tbaa !15
  %901 = getelementptr inbounds i8*** %900, i64 %indvars.iv1201
  %902 = bitcast i8*** %901 to %struct.CCTK_COMPLEX16***
  %903 = load %struct.CCTK_COMPLEX16*** %902, align 8, !tbaa !9
  %904 = load %struct.CCTK_COMPLEX16** %903, align 8, !tbaa !9
  br label %905

; <label>:905                                     ; preds = %905, %.lr.ph602
  %indvars.iv1057 = phi i64 [ 0, %.lr.ph602 ], [ %indvars.iv.next1058, %905 ]
  %906 = add nsw i64 %899, %indvars.iv1057
  %907 = getelementptr inbounds %struct.CCTK_COMPLEX16* %904, i64 %906, i32 0
  store double %.066791, double* %907, align 8, !tbaa !18
  %indvars.iv.next1058 = add nuw nsw i64 %indvars.iv1057, 1
  %lftr.wideiv1059 = trunc i64 %indvars.iv1057 to i32
  %exitcond1060 = icmp eq i32 %lftr.wideiv1059, %892
  br i1 %exitcond1060, label %._crit_edge603, label %905

._crit_edge603:                                   ; preds = %905, %.preheader121
  %indvars.iv.next1062 = add nuw nsw i64 %indvars.iv1061, 1
  %lftr.wideiv1063 = trunc i64 %indvars.iv1061 to i32
  %exitcond1064 = icmp eq i32 %lftr.wideiv1063, %894
  br i1 %exitcond1064, label %._crit_edge605, label %.preheader121

._crit_edge605:                                   ; preds = %._crit_edge603, %.preheader187
  %indvars.iv.next1066 = add nuw nsw i64 %indvars.iv1065, 1
  %908 = icmp slt i64 %indvars.iv.next1066, %896
  br i1 %908, label %.preheader187, label %.loopexit278

.loopexit278:                                     ; preds = %._crit_edge605, %.preheader277, %879
  %909 = icmp ult i64 %881, 4294967296
  br i1 %909, label %.loopexit276, label %.preheader275

.preheader275:                                    ; preds = %.loopexit278
  %910 = load i32* %54, align 4, !tbaa !2
  %911 = icmp sgt i32 %910, 0
  br i1 %911, label %.preheader186.lr.ph, label %.loopexit276

.preheader186.lr.ph:                              ; preds = %.preheader275
  %912 = load i32* %56, align 4, !tbaa !2
  %913 = icmp sgt i32 %912, 0
  %914 = load i32* %51, align 4, !tbaa !2
  %915 = icmp sgt i32 %914, 0
  %916 = load i32* %52, align 4, !tbaa !2
  %917 = load i32* %50, align 4, !tbaa !2
  %918 = load i32* %53, align 4, !tbaa !2
  %919 = add i32 %914, -1
  %920 = add i32 %912, -1
  br label %.preheader186

.preheader186:                                    ; preds = %.preheader186.lr.ph, %._crit_edge611
  %k.21612 = phi i32 [ 0, %.preheader186.lr.ph ], [ %936, %._crit_edge611 ]
  br i1 %913, label %.preheader120.lr.ph, label %._crit_edge611

.preheader120.lr.ph:                              ; preds = %.preheader186
  %921 = mul nsw i32 %918, %k.21612
  br label %.preheader120

.preheader120:                                    ; preds = %._crit_edge609, %.preheader120.lr.ph
  %indvars.iv1071 = phi i64 [ 0, %.preheader120.lr.ph ], [ %indvars.iv.next1072, %._crit_edge609 ]
  br i1 %915, label %.lr.ph608, label %._crit_edge609

.lr.ph608:                                        ; preds = %.preheader120
  %922 = xor i64 %indvars.iv1071, 4294967295
  %923 = trunc i64 %922 to i32
  %924 = add i32 %917, %923
  %925 = add i32 %924, %921
  %926 = mul nsw i32 %925, %916
  %927 = load i8**** %55, align 8, !tbaa !15
  %928 = getelementptr inbounds i8*** %927, i64 %indvars.iv1201
  %929 = bitcast i8*** %928 to %struct.CCTK_COMPLEX16***
  %930 = load %struct.CCTK_COMPLEX16*** %929, align 8, !tbaa !9
  %931 = load %struct.CCTK_COMPLEX16** %930, align 8, !tbaa !9
  %932 = sext i32 %926 to i64
  br label %933

; <label>:933                                     ; preds = %933, %.lr.ph608
  %indvars.iv1067 = phi i64 [ 0, %.lr.ph608 ], [ %indvars.iv.next1068, %933 ]
  %934 = add nsw i64 %932, %indvars.iv1067
  %935 = getelementptr inbounds %struct.CCTK_COMPLEX16* %931, i64 %934, i32 0
  store double %.066791, double* %935, align 8, !tbaa !18
  %indvars.iv.next1068 = add nuw nsw i64 %indvars.iv1067, 1
  %lftr.wideiv1069 = trunc i64 %indvars.iv1067 to i32
  %exitcond1070 = icmp eq i32 %lftr.wideiv1069, %919
  br i1 %exitcond1070, label %._crit_edge609, label %933

._crit_edge609:                                   ; preds = %933, %.preheader120
  %indvars.iv.next1072 = add nuw nsw i64 %indvars.iv1071, 1
  %lftr.wideiv1073 = trunc i64 %indvars.iv1071 to i32
  %exitcond1074 = icmp eq i32 %lftr.wideiv1073, %920
  br i1 %exitcond1074, label %._crit_edge611, label %.preheader120

._crit_edge611:                                   ; preds = %._crit_edge609, %.preheader186
  %936 = add nuw nsw i32 %k.21612, 1
  %937 = icmp slt i32 %936, %910
  br i1 %937, label %.preheader186, label %.loopexit276

.loopexit276:                                     ; preds = %._crit_edge611, %.preheader275, %.loopexit278
  br i1 %46, label %938, label %.thread76

; <label>:938                                     ; preds = %.loopexit276
  %939 = bitcast i32* %47 to i64*
  %940 = load i64* %939, align 16
  %941 = trunc i64 %940 to i32
  %942 = icmp eq i32 %941, 0
  br i1 %942, label %.loopexit274, label %.preheader273

.preheader273:                                    ; preds = %938
  %943 = load i32* %49, align 4, !tbaa !2
  %944 = icmp sgt i32 %943, 0
  br i1 %944, label %.preheader185.lr.ph, label %.loopexit274

.preheader185.lr.ph:                              ; preds = %.preheader273
  %945 = load i32* %50, align 4, !tbaa !2
  %946 = icmp sgt i32 %945, 0
  %947 = load i32* %51, align 4, !tbaa !2
  %948 = icmp sgt i32 %947, 0
  %949 = load i32* %52, align 4, !tbaa !2
  %950 = load i32* %53, align 4, !tbaa !2
  %951 = add i32 %947, -1
  %952 = sext i32 %949 to i64
  %953 = add i32 %945, -1
  %954 = sext i32 %950 to i64
  %955 = sext i32 %943 to i64
  br label %.preheader185

.preheader185:                                    ; preds = %.preheader185.lr.ph, %._crit_edge617
  %indvars.iv1083 = phi i64 [ 0, %.preheader185.lr.ph ], [ %indvars.iv.next1084, %._crit_edge617 ]
  br i1 %946, label %.preheader119.lr.ph, label %._crit_edge617

.preheader119.lr.ph:                              ; preds = %.preheader185
  %956 = mul nsw i64 %954, %indvars.iv1083
  br label %.preheader119

.preheader119:                                    ; preds = %._crit_edge615, %.preheader119.lr.ph
  %indvars.iv1079 = phi i64 [ 0, %.preheader119.lr.ph ], [ %indvars.iv.next1080, %._crit_edge615 ]
  br i1 %948, label %.lr.ph614, label %._crit_edge615

.lr.ph614:                                        ; preds = %.preheader119
  %957 = add nsw i64 %956, %indvars.iv1079
  %958 = mul nsw i64 %957, %952
  %959 = load i8**** %55, align 8, !tbaa !15
  %960 = getelementptr inbounds i8*** %959, i64 %indvars.iv1201
  %961 = bitcast i8*** %960 to %struct.CCTK_COMPLEX16***
  %962 = load %struct.CCTK_COMPLEX16*** %961, align 8, !tbaa !9
  %963 = load %struct.CCTK_COMPLEX16** %962, align 8, !tbaa !9
  br label %964

; <label>:964                                     ; preds = %964, %.lr.ph614
  %indvars.iv1075 = phi i64 [ 0, %.lr.ph614 ], [ %indvars.iv.next1076, %964 ]
  %965 = add nsw i64 %958, %indvars.iv1075
  %966 = getelementptr inbounds %struct.CCTK_COMPLEX16* %963, i64 %965, i32 0
  store double %.066791, double* %966, align 8, !tbaa !18
  %indvars.iv.next1076 = add nuw nsw i64 %indvars.iv1075, 1
  %lftr.wideiv1077 = trunc i64 %indvars.iv1075 to i32
  %exitcond1078 = icmp eq i32 %lftr.wideiv1077, %951
  br i1 %exitcond1078, label %._crit_edge615, label %964

._crit_edge615:                                   ; preds = %964, %.preheader119
  %indvars.iv.next1080 = add nuw nsw i64 %indvars.iv1079, 1
  %lftr.wideiv1081 = trunc i64 %indvars.iv1079 to i32
  %exitcond1082 = icmp eq i32 %lftr.wideiv1081, %953
  br i1 %exitcond1082, label %._crit_edge617, label %.preheader119

._crit_edge617:                                   ; preds = %._crit_edge615, %.preheader185
  %indvars.iv.next1084 = add nuw nsw i64 %indvars.iv1083, 1
  %967 = icmp slt i64 %indvars.iv.next1084, %955
  br i1 %967, label %.preheader185, label %.loopexit274

.loopexit274:                                     ; preds = %._crit_edge617, %.preheader273, %938
  %968 = icmp ult i64 %940, 4294967296
  br i1 %968, label %.thread76, label %.preheader272

.preheader272:                                    ; preds = %.loopexit274
  %969 = load i32* %49, align 4, !tbaa !2
  %970 = icmp sgt i32 %969, 0
  br i1 %970, label %.preheader184.lr.ph, label %.thread76

.preheader184.lr.ph:                              ; preds = %.preheader272
  %971 = load i32* %50, align 4, !tbaa !2
  %972 = icmp sgt i32 %971, 0
  %973 = load i32* %51, align 4, !tbaa !2
  %974 = icmp sgt i32 %973, 0
  %975 = load i32* %52, align 4, !tbaa !2
  %976 = load i32* %53, align 4, !tbaa !2
  %977 = load i32* %54, align 4, !tbaa !2
  %978 = add i32 %973, -1
  %979 = sext i32 %975 to i64
  %980 = add i32 %971, -1
  %981 = sext i32 %969 to i64
  br label %.preheader184

.preheader184:                                    ; preds = %.preheader184.lr.ph, %._crit_edge623
  %indvars.iv1093 = phi i64 [ 0, %.preheader184.lr.ph ], [ %indvars.iv.next1094, %._crit_edge623 ]
  br i1 %972, label %.preheader118.lr.ph, label %._crit_edge623

.preheader118.lr.ph:                              ; preds = %.preheader184
  %982 = xor i64 %indvars.iv1093, 4294967295
  %983 = trunc i64 %982 to i32
  %984 = add i32 %977, %983
  %985 = mul nsw i32 %984, %976
  %986 = sext i32 %985 to i64
  br label %.preheader118

.preheader118:                                    ; preds = %._crit_edge621, %.preheader118.lr.ph
  %indvars.iv1089 = phi i64 [ 0, %.preheader118.lr.ph ], [ %indvars.iv.next1090, %._crit_edge621 ]
  br i1 %974, label %.lr.ph620, label %._crit_edge621

.lr.ph620:                                        ; preds = %.preheader118
  %987 = add nsw i64 %986, %indvars.iv1089
  %988 = mul nsw i64 %987, %979
  %989 = load i8**** %55, align 8, !tbaa !15
  %990 = getelementptr inbounds i8*** %989, i64 %indvars.iv1201
  %991 = bitcast i8*** %990 to %struct.CCTK_COMPLEX16***
  %992 = load %struct.CCTK_COMPLEX16*** %991, align 8, !tbaa !9
  %993 = load %struct.CCTK_COMPLEX16** %992, align 8, !tbaa !9
  br label %994

; <label>:994                                     ; preds = %994, %.lr.ph620
  %indvars.iv1085 = phi i64 [ 0, %.lr.ph620 ], [ %indvars.iv.next1086, %994 ]
  %995 = add nsw i64 %988, %indvars.iv1085
  %996 = getelementptr inbounds %struct.CCTK_COMPLEX16* %993, i64 %995, i32 0
  store double %.066791, double* %996, align 8, !tbaa !18
  %indvars.iv.next1086 = add nuw nsw i64 %indvars.iv1085, 1
  %lftr.wideiv1087 = trunc i64 %indvars.iv1085 to i32
  %exitcond1088 = icmp eq i32 %lftr.wideiv1087, %978
  br i1 %exitcond1088, label %._crit_edge621, label %994

._crit_edge621:                                   ; preds = %994, %.preheader118
  %indvars.iv.next1090 = add nuw nsw i64 %indvars.iv1089, 1
  %lftr.wideiv1091 = trunc i64 %indvars.iv1089 to i32
  %exitcond1092 = icmp eq i32 %lftr.wideiv1091, %980
  br i1 %exitcond1092, label %._crit_edge623, label %.preheader118

._crit_edge623:                                   ; preds = %._crit_edge621, %.preheader184
  %indvars.iv.next1094 = add nuw nsw i64 %indvars.iv1093, 1
  %997 = icmp slt i64 %indvars.iv.next1094, %981
  br i1 %997, label %.preheader184, label %.thread76

.thread76:                                        ; preds = %._crit_edge623, %.preheader272, %.loopexit280, %.loopexit274, %.loopexit276
  %998 = phi i1 [ true, %.loopexit274 ], [ false, %.loopexit276 ], [ false, %.loopexit280 ], [ true, %.preheader272 ], [ true, %._crit_edge623 ]
  %999 = phi i1 [ true, %.loopexit274 ], [ true, %.loopexit276 ], [ false, %.loopexit280 ], [ true, %.preheader272 ], [ true, %._crit_edge623 ]
  br i1 %41, label %1000, label %.loopexit269

; <label>:1000                                    ; preds = %.thread76
  %1001 = bitcast [6 x i32]* %doBC to i64*
  %1002 = load i64* %1001, align 16
  %1003 = trunc i64 %1002 to i32
  %1004 = icmp eq i32 %1003, 0
  br i1 %1004, label %.loopexit271, label %.preheader270

.preheader270:                                    ; preds = %1000
  %1005 = load i32* %54, align 4, !tbaa !2
  %1006 = icmp sgt i32 %1005, 0
  br i1 %1006, label %.preheader183.lr.ph, label %.loopexit271

.preheader183.lr.ph:                              ; preds = %.preheader270
  %1007 = load i32* %50, align 4, !tbaa !2
  %1008 = icmp sgt i32 %1007, 0
  %1009 = load i32* %57, align 4, !tbaa !2
  %1010 = icmp sgt i32 %1009, 0
  %1011 = load i32* %52, align 4, !tbaa !2
  %1012 = load i32* %53, align 4, !tbaa !2
  %1013 = add i32 %1009, -1
  %1014 = sext i32 %1011 to i64
  %1015 = add i32 %1007, -1
  %1016 = sext i32 %1012 to i64
  %1017 = sext i32 %1005 to i64
  br label %.preheader183

.preheader183:                                    ; preds = %.preheader183.lr.ph, %._crit_edge629
  %indvars.iv1103 = phi i64 [ 0, %.preheader183.lr.ph ], [ %indvars.iv.next1104, %._crit_edge629 ]
  br i1 %1008, label %.preheader117.lr.ph, label %._crit_edge629

.preheader117.lr.ph:                              ; preds = %.preheader183
  %1018 = mul nsw i64 %1016, %indvars.iv1103
  br label %.preheader117

.preheader117:                                    ; preds = %._crit_edge627, %.preheader117.lr.ph
  %indvars.iv1099 = phi i64 [ 0, %.preheader117.lr.ph ], [ %indvars.iv.next1100, %._crit_edge627 ]
  br i1 %1010, label %.lr.ph626, label %._crit_edge627

.lr.ph626:                                        ; preds = %.preheader117
  %1019 = add nsw i64 %1018, %indvars.iv1099
  %1020 = mul nsw i64 %1019, %1014
  %1021 = load i8**** %55, align 8, !tbaa !15
  %1022 = getelementptr inbounds i8*** %1021, i64 %indvars.iv1201
  %1023 = bitcast i8*** %1022 to %struct.CCTK_COMPLEX16***
  %1024 = load %struct.CCTK_COMPLEX16*** %1023, align 8, !tbaa !9
  %1025 = load %struct.CCTK_COMPLEX16** %1024, align 8, !tbaa !9
  br label %1026

; <label>:1026                                    ; preds = %1026, %.lr.ph626
  %indvars.iv1095 = phi i64 [ 0, %.lr.ph626 ], [ %indvars.iv.next1096, %1026 ]
  %1027 = add nsw i64 %1020, %indvars.iv1095
  %1028 = getelementptr inbounds %struct.CCTK_COMPLEX16* %1025, i64 %1027, i32 1
  store double 0.000000e+00, double* %1028, align 8, !tbaa !20
  %indvars.iv.next1096 = add nuw nsw i64 %indvars.iv1095, 1
  %lftr.wideiv1097 = trunc i64 %indvars.iv1095 to i32
  %exitcond1098 = icmp eq i32 %lftr.wideiv1097, %1013
  br i1 %exitcond1098, label %._crit_edge627, label %1026

._crit_edge627:                                   ; preds = %1026, %.preheader117
  %indvars.iv.next1100 = add nuw nsw i64 %indvars.iv1099, 1
  %lftr.wideiv1101 = trunc i64 %indvars.iv1099 to i32
  %exitcond1102 = icmp eq i32 %lftr.wideiv1101, %1015
  br i1 %exitcond1102, label %._crit_edge629, label %.preheader117

._crit_edge629:                                   ; preds = %._crit_edge627, %.preheader183
  %indvars.iv.next1104 = add nuw nsw i64 %indvars.iv1103, 1
  %1029 = icmp slt i64 %indvars.iv.next1104, %1017
  br i1 %1029, label %.preheader183, label %.loopexit271

.loopexit271:                                     ; preds = %._crit_edge629, %.preheader270, %1000
  %1030 = icmp ult i64 %1002, 4294967296
  br i1 %1030, label %.loopexit269, label %.preheader268

.preheader268:                                    ; preds = %.loopexit271
  %1031 = load i32* %54, align 4, !tbaa !2
  %1032 = icmp sgt i32 %1031, 0
  br i1 %1032, label %.preheader182.lr.ph, label %.loopexit269

.preheader182.lr.ph:                              ; preds = %.preheader268
  %1033 = load i32* %50, align 4, !tbaa !2
  %1034 = icmp sgt i32 %1033, 0
  %1035 = load i32* %57, align 4, !tbaa !2
  %1036 = icmp sgt i32 %1035, 0
  %1037 = load i32* %51, align 4, !tbaa !2
  %1038 = load i32* %52, align 4, !tbaa !2
  %1039 = load i32* %53, align 4, !tbaa !2
  %1040 = add i32 %1035, -1
  %1041 = add i32 %1033, -1
  br label %.preheader182

.preheader182:                                    ; preds = %.preheader182.lr.ph, %._crit_edge635
  %k.25636 = phi i32 [ 0, %.preheader182.lr.ph ], [ %1058, %._crit_edge635 ]
  br i1 %1034, label %.preheader116.lr.ph, label %._crit_edge635

.preheader116.lr.ph:                              ; preds = %.preheader182
  %1042 = mul nsw i32 %1039, %k.25636
  br label %.preheader116

.preheader116:                                    ; preds = %._crit_edge633, %.preheader116.lr.ph
  %j.25634 = phi i32 [ 0, %.preheader116.lr.ph ], [ %1057, %._crit_edge633 ]
  br i1 %1036, label %.lr.ph632, label %._crit_edge633

.lr.ph632:                                        ; preds = %.preheader116
  %1043 = add nsw i32 %1042, %j.25634
  %1044 = mul nsw i32 %1043, %1038
  %1045 = load i8**** %55, align 8, !tbaa !15
  %1046 = getelementptr inbounds i8*** %1045, i64 %indvars.iv1201
  %1047 = bitcast i8*** %1046 to %struct.CCTK_COMPLEX16***
  %1048 = load %struct.CCTK_COMPLEX16*** %1047, align 8, !tbaa !9
  %1049 = load %struct.CCTK_COMPLEX16** %1048, align 8, !tbaa !9
  br label %1050

; <label>:1050                                    ; preds = %1050, %.lr.ph632
  %indvars.iv1105 = phi i64 [ 0, %.lr.ph632 ], [ %indvars.iv.next1106, %1050 ]
  %1051 = xor i64 %indvars.iv1105, 4294967295
  %1052 = trunc i64 %1051 to i32
  %1053 = add i32 %1037, %1052
  %1054 = add i32 %1053, %1044
  %1055 = sext i32 %1054 to i64
  %1056 = getelementptr inbounds %struct.CCTK_COMPLEX16* %1049, i64 %1055, i32 1
  store double 0.000000e+00, double* %1056, align 8, !tbaa !20
  %indvars.iv.next1106 = add nuw nsw i64 %indvars.iv1105, 1
  %lftr.wideiv1107 = trunc i64 %indvars.iv1105 to i32
  %exitcond1108 = icmp eq i32 %lftr.wideiv1107, %1040
  br i1 %exitcond1108, label %._crit_edge633, label %1050

._crit_edge633:                                   ; preds = %1050, %.preheader116
  %1057 = add nuw nsw i32 %j.25634, 1
  %exitcond1109 = icmp eq i32 %j.25634, %1041
  br i1 %exitcond1109, label %._crit_edge635, label %.preheader116

._crit_edge635:                                   ; preds = %._crit_edge633, %.preheader182
  %1058 = add nuw nsw i32 %k.25636, 1
  %1059 = icmp slt i32 %1058, %1031
  br i1 %1059, label %.preheader182, label %.loopexit269

.loopexit269:                                     ; preds = %._crit_edge635, %.preheader268, %.loopexit271, %.thread76
  br i1 %999, label %1060, label %.loopexit265

; <label>:1060                                    ; preds = %.loopexit269
  %1061 = bitcast i32* %44 to i64*
  %1062 = load i64* %1061, align 8
  %1063 = trunc i64 %1062 to i32
  %1064 = icmp eq i32 %1063, 0
  br i1 %1064, label %.loopexit267, label %.preheader266

.preheader266:                                    ; preds = %1060
  %1065 = load i32* %54, align 4, !tbaa !2
  %1066 = icmp sgt i32 %1065, 0
  br i1 %1066, label %.preheader181.lr.ph, label %.loopexit267

.preheader181.lr.ph:                              ; preds = %.preheader266
  %1067 = load i32* %56, align 4, !tbaa !2
  %1068 = icmp sgt i32 %1067, 0
  %1069 = load i32* %51, align 4, !tbaa !2
  %1070 = icmp sgt i32 %1069, 0
  %1071 = load i32* %52, align 4, !tbaa !2
  %1072 = load i32* %53, align 4, !tbaa !2
  %1073 = add i32 %1069, -1
  %1074 = sext i32 %1071 to i64
  %1075 = add i32 %1067, -1
  %1076 = sext i32 %1072 to i64
  %1077 = sext i32 %1065 to i64
  br label %.preheader181

.preheader181:                                    ; preds = %.preheader181.lr.ph, %._crit_edge641
  %indvars.iv1118 = phi i64 [ 0, %.preheader181.lr.ph ], [ %indvars.iv.next1119, %._crit_edge641 ]
  br i1 %1068, label %.preheader115.lr.ph, label %._crit_edge641

.preheader115.lr.ph:                              ; preds = %.preheader181
  %1078 = mul nsw i64 %1076, %indvars.iv1118
  br label %.preheader115

.preheader115:                                    ; preds = %._crit_edge639, %.preheader115.lr.ph
  %indvars.iv1114 = phi i64 [ 0, %.preheader115.lr.ph ], [ %indvars.iv.next1115, %._crit_edge639 ]
  br i1 %1070, label %.lr.ph638, label %._crit_edge639

.lr.ph638:                                        ; preds = %.preheader115
  %1079 = add nsw i64 %1078, %indvars.iv1114
  %1080 = mul nsw i64 %1079, %1074
  %1081 = load i8**** %55, align 8, !tbaa !15
  %1082 = getelementptr inbounds i8*** %1081, i64 %indvars.iv1201
  %1083 = bitcast i8*** %1082 to %struct.CCTK_COMPLEX16***
  %1084 = load %struct.CCTK_COMPLEX16*** %1083, align 8, !tbaa !9
  %1085 = load %struct.CCTK_COMPLEX16** %1084, align 8, !tbaa !9
  br label %1086

; <label>:1086                                    ; preds = %1086, %.lr.ph638
  %indvars.iv1110 = phi i64 [ 0, %.lr.ph638 ], [ %indvars.iv.next1111, %1086 ]
  %1087 = add nsw i64 %1080, %indvars.iv1110
  %1088 = getelementptr inbounds %struct.CCTK_COMPLEX16* %1085, i64 %1087, i32 1
  store double 0.000000e+00, double* %1088, align 8, !tbaa !20
  %indvars.iv.next1111 = add nuw nsw i64 %indvars.iv1110, 1
  %lftr.wideiv1112 = trunc i64 %indvars.iv1110 to i32
  %exitcond1113 = icmp eq i32 %lftr.wideiv1112, %1073
  br i1 %exitcond1113, label %._crit_edge639, label %1086

._crit_edge639:                                   ; preds = %1086, %.preheader115
  %indvars.iv.next1115 = add nuw nsw i64 %indvars.iv1114, 1
  %lftr.wideiv1116 = trunc i64 %indvars.iv1114 to i32
  %exitcond1117 = icmp eq i32 %lftr.wideiv1116, %1075
  br i1 %exitcond1117, label %._crit_edge641, label %.preheader115

._crit_edge641:                                   ; preds = %._crit_edge639, %.preheader181
  %indvars.iv.next1119 = add nuw nsw i64 %indvars.iv1118, 1
  %1089 = icmp slt i64 %indvars.iv.next1119, %1077
  br i1 %1089, label %.preheader181, label %.loopexit267

.loopexit267:                                     ; preds = %._crit_edge641, %.preheader266, %1060
  %1090 = icmp ult i64 %1062, 4294967296
  br i1 %1090, label %.loopexit265, label %.preheader264

.preheader264:                                    ; preds = %.loopexit267
  %1091 = load i32* %54, align 4, !tbaa !2
  %1092 = icmp sgt i32 %1091, 0
  br i1 %1092, label %.preheader180.lr.ph, label %.loopexit265

.preheader180.lr.ph:                              ; preds = %.preheader264
  %1093 = load i32* %56, align 4, !tbaa !2
  %1094 = icmp sgt i32 %1093, 0
  %1095 = load i32* %51, align 4, !tbaa !2
  %1096 = icmp sgt i32 %1095, 0
  %1097 = load i32* %52, align 4, !tbaa !2
  %1098 = load i32* %50, align 4, !tbaa !2
  %1099 = load i32* %53, align 4, !tbaa !2
  %1100 = add i32 %1095, -1
  %1101 = add i32 %1093, -1
  br label %.preheader180

.preheader180:                                    ; preds = %.preheader180.lr.ph, %._crit_edge647
  %k.27648 = phi i32 [ 0, %.preheader180.lr.ph ], [ %1117, %._crit_edge647 ]
  br i1 %1094, label %.preheader114.lr.ph, label %._crit_edge647

.preheader114.lr.ph:                              ; preds = %.preheader180
  %1102 = mul nsw i32 %1099, %k.27648
  br label %.preheader114

.preheader114:                                    ; preds = %._crit_edge645, %.preheader114.lr.ph
  %indvars.iv1124 = phi i64 [ 0, %.preheader114.lr.ph ], [ %indvars.iv.next1125, %._crit_edge645 ]
  br i1 %1096, label %.lr.ph644, label %._crit_edge645

.lr.ph644:                                        ; preds = %.preheader114
  %1103 = xor i64 %indvars.iv1124, 4294967295
  %1104 = trunc i64 %1103 to i32
  %1105 = add i32 %1098, %1104
  %1106 = add i32 %1105, %1102
  %1107 = mul nsw i32 %1106, %1097
  %1108 = load i8**** %55, align 8, !tbaa !15
  %1109 = getelementptr inbounds i8*** %1108, i64 %indvars.iv1201
  %1110 = bitcast i8*** %1109 to %struct.CCTK_COMPLEX16***
  %1111 = load %struct.CCTK_COMPLEX16*** %1110, align 8, !tbaa !9
  %1112 = load %struct.CCTK_COMPLEX16** %1111, align 8, !tbaa !9
  %1113 = sext i32 %1107 to i64
  br label %1114

; <label>:1114                                    ; preds = %1114, %.lr.ph644
  %indvars.iv1120 = phi i64 [ 0, %.lr.ph644 ], [ %indvars.iv.next1121, %1114 ]
  %1115 = add nsw i64 %1113, %indvars.iv1120
  %1116 = getelementptr inbounds %struct.CCTK_COMPLEX16* %1112, i64 %1115, i32 1
  store double 0.000000e+00, double* %1116, align 8, !tbaa !20
  %indvars.iv.next1121 = add nuw nsw i64 %indvars.iv1120, 1
  %lftr.wideiv1122 = trunc i64 %indvars.iv1120 to i32
  %exitcond1123 = icmp eq i32 %lftr.wideiv1122, %1100
  br i1 %exitcond1123, label %._crit_edge645, label %1114

._crit_edge645:                                   ; preds = %1114, %.preheader114
  %indvars.iv.next1125 = add nuw nsw i64 %indvars.iv1124, 1
  %lftr.wideiv1126 = trunc i64 %indvars.iv1124 to i32
  %exitcond1127 = icmp eq i32 %lftr.wideiv1126, %1101
  br i1 %exitcond1127, label %._crit_edge647, label %.preheader114

._crit_edge647:                                   ; preds = %._crit_edge645, %.preheader180
  %1117 = add nuw nsw i32 %k.27648, 1
  %1118 = icmp slt i32 %1117, %1091
  br i1 %1118, label %.preheader180, label %.loopexit265

.loopexit265:                                     ; preds = %._crit_edge647, %.preheader264, %.loopexit267, %.loopexit269
  br i1 %998, label %1119, label %.thread67

; <label>:1119                                    ; preds = %.loopexit265
  %1120 = bitcast i32* %47 to i64*
  %1121 = load i64* %1120, align 16
  %1122 = trunc i64 %1121 to i32
  %1123 = icmp eq i32 %1122, 0
  br i1 %1123, label %.loopexit263, label %.preheader262

.preheader262:                                    ; preds = %1119
  %1124 = load i32* %49, align 4, !tbaa !2
  %1125 = icmp sgt i32 %1124, 0
  br i1 %1125, label %.preheader179.lr.ph, label %.loopexit263

.preheader179.lr.ph:                              ; preds = %.preheader262
  %1126 = load i32* %50, align 4, !tbaa !2
  %1127 = icmp sgt i32 %1126, 0
  %1128 = load i32* %51, align 4, !tbaa !2
  %1129 = icmp sgt i32 %1128, 0
  %1130 = load i32* %52, align 4, !tbaa !2
  %1131 = load i32* %53, align 4, !tbaa !2
  %1132 = add i32 %1128, -1
  %1133 = sext i32 %1130 to i64
  %1134 = add i32 %1126, -1
  %1135 = sext i32 %1131 to i64
  %1136 = sext i32 %1124 to i64
  br label %.preheader179

.preheader179:                                    ; preds = %.preheader179.lr.ph, %._crit_edge653
  %indvars.iv1136 = phi i64 [ 0, %.preheader179.lr.ph ], [ %indvars.iv.next1137, %._crit_edge653 ]
  br i1 %1127, label %.preheader113.lr.ph, label %._crit_edge653

.preheader113.lr.ph:                              ; preds = %.preheader179
  %1137 = mul nsw i64 %1135, %indvars.iv1136
  br label %.preheader113

.preheader113:                                    ; preds = %._crit_edge651, %.preheader113.lr.ph
  %indvars.iv1132 = phi i64 [ 0, %.preheader113.lr.ph ], [ %indvars.iv.next1133, %._crit_edge651 ]
  br i1 %1129, label %.lr.ph650, label %._crit_edge651

.lr.ph650:                                        ; preds = %.preheader113
  %1138 = add nsw i64 %1137, %indvars.iv1132
  %1139 = mul nsw i64 %1138, %1133
  %1140 = load i8**** %55, align 8, !tbaa !15
  %1141 = getelementptr inbounds i8*** %1140, i64 %indvars.iv1201
  %1142 = bitcast i8*** %1141 to %struct.CCTK_COMPLEX16***
  %1143 = load %struct.CCTK_COMPLEX16*** %1142, align 8, !tbaa !9
  %1144 = load %struct.CCTK_COMPLEX16** %1143, align 8, !tbaa !9
  br label %1145

; <label>:1145                                    ; preds = %1145, %.lr.ph650
  %indvars.iv1128 = phi i64 [ 0, %.lr.ph650 ], [ %indvars.iv.next1129, %1145 ]
  %1146 = add nsw i64 %1139, %indvars.iv1128
  %1147 = getelementptr inbounds %struct.CCTK_COMPLEX16* %1144, i64 %1146, i32 1
  store double 0.000000e+00, double* %1147, align 8, !tbaa !20
  %indvars.iv.next1129 = add nuw nsw i64 %indvars.iv1128, 1
  %lftr.wideiv1130 = trunc i64 %indvars.iv1128 to i32
  %exitcond1131 = icmp eq i32 %lftr.wideiv1130, %1132
  br i1 %exitcond1131, label %._crit_edge651, label %1145

._crit_edge651:                                   ; preds = %1145, %.preheader113
  %indvars.iv.next1133 = add nuw nsw i64 %indvars.iv1132, 1
  %lftr.wideiv1134 = trunc i64 %indvars.iv1132 to i32
  %exitcond1135 = icmp eq i32 %lftr.wideiv1134, %1134
  br i1 %exitcond1135, label %._crit_edge653, label %.preheader113

._crit_edge653:                                   ; preds = %._crit_edge651, %.preheader179
  %indvars.iv.next1137 = add nuw nsw i64 %indvars.iv1136, 1
  %1148 = icmp slt i64 %indvars.iv.next1137, %1136
  br i1 %1148, label %.preheader179, label %.loopexit263

.loopexit263:                                     ; preds = %._crit_edge653, %.preheader262, %1119
  %1149 = icmp ult i64 %1121, 4294967296
  br i1 %1149, label %.thread67, label %.preheader260

.preheader260:                                    ; preds = %.loopexit263
  %1150 = load i32* %49, align 4, !tbaa !2
  %1151 = icmp sgt i32 %1150, 0
  br i1 %1151, label %.preheader178.lr.ph, label %.thread67

.preheader178.lr.ph:                              ; preds = %.preheader260
  %1152 = load i32* %50, align 4, !tbaa !2
  %1153 = icmp sgt i32 %1152, 0
  %1154 = load i32* %51, align 4, !tbaa !2
  %1155 = icmp sgt i32 %1154, 0
  %1156 = load i32* %52, align 4, !tbaa !2
  %1157 = load i32* %53, align 4, !tbaa !2
  %1158 = load i32* %54, align 4, !tbaa !2
  %1159 = add i32 %1154, -1
  %1160 = sext i32 %1156 to i64
  %1161 = add i32 %1152, -1
  %1162 = sext i32 %1150 to i64
  br label %.preheader178

.preheader178:                                    ; preds = %.preheader178.lr.ph, %._crit_edge659
  %indvars.iv1146 = phi i64 [ 0, %.preheader178.lr.ph ], [ %indvars.iv.next1147, %._crit_edge659 ]
  br i1 %1153, label %.preheader112.lr.ph, label %._crit_edge659

.preheader112.lr.ph:                              ; preds = %.preheader178
  %1163 = xor i64 %indvars.iv1146, 4294967295
  %1164 = trunc i64 %1163 to i32
  %1165 = add i32 %1158, %1164
  %1166 = mul nsw i32 %1165, %1157
  %1167 = sext i32 %1166 to i64
  br label %.preheader112

.preheader112:                                    ; preds = %._crit_edge657, %.preheader112.lr.ph
  %indvars.iv1142 = phi i64 [ 0, %.preheader112.lr.ph ], [ %indvars.iv.next1143, %._crit_edge657 ]
  br i1 %1155, label %.lr.ph656, label %._crit_edge657

.lr.ph656:                                        ; preds = %.preheader112
  %1168 = add nsw i64 %1167, %indvars.iv1142
  %1169 = mul nsw i64 %1168, %1160
  %1170 = load i8**** %55, align 8, !tbaa !15
  %1171 = getelementptr inbounds i8*** %1170, i64 %indvars.iv1201
  %1172 = bitcast i8*** %1171 to %struct.CCTK_COMPLEX16***
  %1173 = load %struct.CCTK_COMPLEX16*** %1172, align 8, !tbaa !9
  %1174 = load %struct.CCTK_COMPLEX16** %1173, align 8, !tbaa !9
  br label %1175

; <label>:1175                                    ; preds = %1175, %.lr.ph656
  %indvars.iv1138 = phi i64 [ 0, %.lr.ph656 ], [ %indvars.iv.next1139, %1175 ]
  %1176 = add nsw i64 %1169, %indvars.iv1138
  %1177 = getelementptr inbounds %struct.CCTK_COMPLEX16* %1174, i64 %1176, i32 1
  store double 0.000000e+00, double* %1177, align 8, !tbaa !20
  %indvars.iv.next1139 = add nuw nsw i64 %indvars.iv1138, 1
  %lftr.wideiv1140 = trunc i64 %indvars.iv1138 to i32
  %exitcond1141 = icmp eq i32 %lftr.wideiv1140, %1159
  br i1 %exitcond1141, label %._crit_edge657, label %1175

._crit_edge657:                                   ; preds = %1175, %.preheader112
  %indvars.iv.next1143 = add nuw nsw i64 %indvars.iv1142, 1
  %lftr.wideiv1144 = trunc i64 %indvars.iv1142 to i32
  %exitcond1145 = icmp eq i32 %lftr.wideiv1144, %1161
  br i1 %exitcond1145, label %._crit_edge659, label %.preheader112

._crit_edge659:                                   ; preds = %._crit_edge657, %.preheader178
  %indvars.iv.next1147 = add nuw nsw i64 %indvars.iv1146, 1
  %1178 = icmp slt i64 %indvars.iv.next1147, %1162
  br i1 %1178, label %.preheader178, label %.thread67

; <label>:1179                                    ; preds = %._crit_edge
  br i1 %41, label %1180, label %.thread67

; <label>:1180                                    ; preds = %1179
  %1181 = bitcast [6 x i32]* %doBC to i64*
  %1182 = load i64* %1181, align 16
  %1183 = trunc i64 %1182 to i32
  %1184 = icmp eq i32 %1183, 0
  br i1 %1184, label %.loopexit294, label %.preheader293

.preheader293:                                    ; preds = %1180
  %1185 = load i32* %54, align 4, !tbaa !2
  %1186 = icmp sgt i32 %1185, 0
  br i1 %1186, label %.preheader195.lr.ph, label %.loopexit294

.preheader195.lr.ph:                              ; preds = %.preheader293
  %1187 = load i32* %50, align 4, !tbaa !2
  %1188 = icmp sgt i32 %1187, 0
  %1189 = load i32* %57, align 4, !tbaa !2
  %1190 = icmp sgt i32 %1189, 0
  %1191 = load i32* %52, align 4, !tbaa !2
  %1192 = load i32* %53, align 4, !tbaa !2
  %1193 = fptosi double %.066791 to i16
  %1194 = add i32 %1189, -1
  %1195 = sext i32 %1191 to i64
  %1196 = add i32 %1187, -1
  %1197 = sext i32 %1192 to i64
  %1198 = sext i32 %1185 to i64
  br label %.preheader195

.preheader195:                                    ; preds = %.preheader195.lr.ph, %._crit_edge557
  %indvars.iv1003 = phi i64 [ 0, %.preheader195.lr.ph ], [ %indvars.iv.next1004, %._crit_edge557 ]
  br i1 %1188, label %.preheader129.lr.ph, label %._crit_edge557

.preheader129.lr.ph:                              ; preds = %.preheader195
  %1199 = mul nsw i64 %1197, %indvars.iv1003
  br label %.preheader129

.preheader129:                                    ; preds = %._crit_edge555, %.preheader129.lr.ph
  %indvars.iv999 = phi i64 [ 0, %.preheader129.lr.ph ], [ %indvars.iv.next1000, %._crit_edge555 ]
  br i1 %1190, label %.lr.ph554, label %._crit_edge555

.lr.ph554:                                        ; preds = %.preheader129
  %1200 = add nsw i64 %1199, %indvars.iv999
  %1201 = mul nsw i64 %1200, %1195
  %1202 = load i8**** %55, align 8, !tbaa !15
  %1203 = getelementptr inbounds i8*** %1202, i64 %indvars.iv1201
  %1204 = bitcast i8*** %1203 to i16***
  %1205 = load i16*** %1204, align 8, !tbaa !9
  %1206 = load i16** %1205, align 8, !tbaa !9
  br label %1207

; <label>:1207                                    ; preds = %1207, %.lr.ph554
  %indvars.iv995 = phi i64 [ 0, %.lr.ph554 ], [ %indvars.iv.next996, %1207 ]
  %1208 = add nsw i64 %1201, %indvars.iv995
  %1209 = getelementptr inbounds i16* %1206, i64 %1208
  store i16 %1193, i16* %1209, align 2, !tbaa !21
  %indvars.iv.next996 = add nuw nsw i64 %indvars.iv995, 1
  %lftr.wideiv997 = trunc i64 %indvars.iv995 to i32
  %exitcond998 = icmp eq i32 %lftr.wideiv997, %1194
  br i1 %exitcond998, label %._crit_edge555, label %1207

._crit_edge555:                                   ; preds = %1207, %.preheader129
  %indvars.iv.next1000 = add nuw nsw i64 %indvars.iv999, 1
  %lftr.wideiv1001 = trunc i64 %indvars.iv999 to i32
  %exitcond1002 = icmp eq i32 %lftr.wideiv1001, %1196
  br i1 %exitcond1002, label %._crit_edge557, label %.preheader129

._crit_edge557:                                   ; preds = %._crit_edge555, %.preheader195
  %indvars.iv.next1004 = add nuw nsw i64 %indvars.iv1003, 1
  %1210 = icmp slt i64 %indvars.iv.next1004, %1198
  br i1 %1210, label %.preheader195, label %.loopexit294

.loopexit294:                                     ; preds = %._crit_edge557, %.preheader293, %1180
  %1211 = icmp ult i64 %1182, 4294967296
  br i1 %1211, label %.loopexit292, label %.preheader291

.preheader291:                                    ; preds = %.loopexit294
  %1212 = load i32* %54, align 4, !tbaa !2
  %1213 = icmp sgt i32 %1212, 0
  br i1 %1213, label %.preheader194.lr.ph, label %.loopexit292

.preheader194.lr.ph:                              ; preds = %.preheader291
  %1214 = load i32* %50, align 4, !tbaa !2
  %1215 = icmp sgt i32 %1214, 0
  %1216 = load i32* %57, align 4, !tbaa !2
  %1217 = icmp sgt i32 %1216, 0
  %1218 = load i32* %51, align 4, !tbaa !2
  %1219 = load i32* %52, align 4, !tbaa !2
  %1220 = load i32* %53, align 4, !tbaa !2
  %1221 = fptosi double %.066791 to i16
  %1222 = sext i32 %1216 to i64
  %1223 = add i32 %1214, -1
  br label %.preheader194

.preheader194:                                    ; preds = %.preheader194.lr.ph, %._crit_edge563
  %k.31564 = phi i32 [ 0, %.preheader194.lr.ph ], [ %1241, %._crit_edge563 ]
  br i1 %1215, label %.preheader128.lr.ph, label %._crit_edge563

.preheader128.lr.ph:                              ; preds = %.preheader194
  %1224 = mul nsw i32 %1220, %k.31564
  br label %.preheader128

.preheader128:                                    ; preds = %._crit_edge561, %.preheader128.lr.ph
  %j.31562 = phi i32 [ 0, %.preheader128.lr.ph ], [ %1240, %._crit_edge561 ]
  br i1 %1217, label %.lr.ph560, label %._crit_edge561

.lr.ph560:                                        ; preds = %.preheader128
  %1225 = add nsw i32 %1224, %j.31562
  %1226 = mul nsw i32 %1225, %1219
  %1227 = load i8**** %55, align 8, !tbaa !15
  %1228 = getelementptr inbounds i8*** %1227, i64 %indvars.iv1201
  %1229 = bitcast i8*** %1228 to i16***
  %1230 = load i16*** %1229, align 8, !tbaa !9
  %1231 = load i16** %1230, align 8, !tbaa !9
  br label %1232

; <label>:1232                                    ; preds = %.lr.ph560, %1232
  %indvars.iv1005 = phi i64 [ 0, %.lr.ph560 ], [ %indvars.iv.next1006, %1232 ]
  %1233 = xor i64 %indvars.iv1005, 4294967295
  %1234 = trunc i64 %1233 to i32
  %1235 = add i32 %1218, %1234
  %1236 = add i32 %1235, %1226
  %1237 = sext i32 %1236 to i64
  %1238 = getelementptr inbounds i16* %1231, i64 %1237
  store i16 %1221, i16* %1238, align 2, !tbaa !21
  %indvars.iv.next1006 = add nuw nsw i64 %indvars.iv1005, 1
  %1239 = icmp slt i64 %indvars.iv.next1006, %1222
  br i1 %1239, label %1232, label %._crit_edge561

._crit_edge561:                                   ; preds = %1232, %.preheader128
  %1240 = add nuw nsw i32 %j.31562, 1
  %exitcond1007 = icmp eq i32 %j.31562, %1223
  br i1 %exitcond1007, label %._crit_edge563, label %.preheader128

._crit_edge563:                                   ; preds = %._crit_edge561, %.preheader194
  %1241 = add nuw nsw i32 %k.31564, 1
  %1242 = icmp slt i32 %1241, %1212
  br i1 %1242, label %.preheader194, label %.loopexit292

.loopexit292:                                     ; preds = %._crit_edge563, %.preheader291, %.loopexit294
  br i1 %43, label %1243, label %.thread67

; <label>:1243                                    ; preds = %.loopexit292
  %1244 = bitcast i32* %44 to i64*
  %1245 = load i64* %1244, align 8
  %1246 = trunc i64 %1245 to i32
  %1247 = icmp eq i32 %1246, 0
  br i1 %1247, label %.loopexit290, label %.preheader289

.preheader289:                                    ; preds = %1243
  %1248 = load i32* %54, align 4, !tbaa !2
  %1249 = icmp sgt i32 %1248, 0
  br i1 %1249, label %.preheader193.lr.ph, label %.loopexit290

.preheader193.lr.ph:                              ; preds = %.preheader289
  %1250 = load i32* %56, align 4, !tbaa !2
  %1251 = icmp sgt i32 %1250, 0
  %1252 = load i32* %51, align 4, !tbaa !2
  %1253 = icmp sgt i32 %1252, 0
  %1254 = load i32* %52, align 4, !tbaa !2
  %1255 = load i32* %53, align 4, !tbaa !2
  %1256 = fptosi double %.066791 to i16
  %1257 = add i32 %1252, -1
  %1258 = sext i32 %1254 to i64
  %1259 = add i32 %1250, -1
  %1260 = sext i32 %1255 to i64
  %1261 = sext i32 %1248 to i64
  br label %.preheader193

.preheader193:                                    ; preds = %.preheader193.lr.ph, %._crit_edge569
  %indvars.iv1016 = phi i64 [ 0, %.preheader193.lr.ph ], [ %indvars.iv.next1017, %._crit_edge569 ]
  br i1 %1251, label %.preheader127.lr.ph, label %._crit_edge569

.preheader127.lr.ph:                              ; preds = %.preheader193
  %1262 = mul nsw i64 %1260, %indvars.iv1016
  br label %.preheader127

.preheader127:                                    ; preds = %._crit_edge567, %.preheader127.lr.ph
  %indvars.iv1012 = phi i64 [ 0, %.preheader127.lr.ph ], [ %indvars.iv.next1013, %._crit_edge567 ]
  br i1 %1253, label %.lr.ph566, label %._crit_edge567

.lr.ph566:                                        ; preds = %.preheader127
  %1263 = add nsw i64 %1262, %indvars.iv1012
  %1264 = mul nsw i64 %1263, %1258
  %1265 = load i8**** %55, align 8, !tbaa !15
  %1266 = getelementptr inbounds i8*** %1265, i64 %indvars.iv1201
  %1267 = bitcast i8*** %1266 to i16***
  %1268 = load i16*** %1267, align 8, !tbaa !9
  %1269 = load i16** %1268, align 8, !tbaa !9
  br label %1270

; <label>:1270                                    ; preds = %1270, %.lr.ph566
  %indvars.iv1008 = phi i64 [ 0, %.lr.ph566 ], [ %indvars.iv.next1009, %1270 ]
  %1271 = add nsw i64 %1264, %indvars.iv1008
  %1272 = getelementptr inbounds i16* %1269, i64 %1271
  store i16 %1256, i16* %1272, align 2, !tbaa !21
  %indvars.iv.next1009 = add nuw nsw i64 %indvars.iv1008, 1
  %lftr.wideiv1010 = trunc i64 %indvars.iv1008 to i32
  %exitcond1011 = icmp eq i32 %lftr.wideiv1010, %1257
  br i1 %exitcond1011, label %._crit_edge567, label %1270

._crit_edge567:                                   ; preds = %1270, %.preheader127
  %indvars.iv.next1013 = add nuw nsw i64 %indvars.iv1012, 1
  %lftr.wideiv1014 = trunc i64 %indvars.iv1012 to i32
  %exitcond1015 = icmp eq i32 %lftr.wideiv1014, %1259
  br i1 %exitcond1015, label %._crit_edge569, label %.preheader127

._crit_edge569:                                   ; preds = %._crit_edge567, %.preheader193
  %indvars.iv.next1017 = add nuw nsw i64 %indvars.iv1016, 1
  %1273 = icmp slt i64 %indvars.iv.next1017, %1261
  br i1 %1273, label %.preheader193, label %.loopexit290

.loopexit290:                                     ; preds = %._crit_edge569, %.preheader289, %1243
  %1274 = icmp ult i64 %1245, 4294967296
  br i1 %1274, label %.loopexit288, label %.preheader287

.preheader287:                                    ; preds = %.loopexit290
  %1275 = load i32* %54, align 4, !tbaa !2
  %1276 = icmp sgt i32 %1275, 0
  br i1 %1276, label %.preheader192.lr.ph, label %.loopexit288

.preheader192.lr.ph:                              ; preds = %.preheader287
  %1277 = load i32* %56, align 4, !tbaa !2
  %1278 = icmp sgt i32 %1277, 0
  %1279 = load i32* %51, align 4, !tbaa !2
  %1280 = icmp sgt i32 %1279, 0
  %1281 = load i32* %52, align 4, !tbaa !2
  %1282 = load i32* %50, align 4, !tbaa !2
  %1283 = load i32* %53, align 4, !tbaa !2
  %1284 = fptosi double %.066791 to i16
  %1285 = sext i32 %1279 to i64
  %1286 = add i32 %1277, -1
  br label %.preheader192

.preheader192:                                    ; preds = %.preheader192.lr.ph, %._crit_edge575
  %k.33576 = phi i32 [ 0, %.preheader192.lr.ph ], [ %1303, %._crit_edge575 ]
  br i1 %1278, label %.preheader126.lr.ph, label %._crit_edge575

.preheader126.lr.ph:                              ; preds = %.preheader192
  %1287 = mul nsw i32 %1283, %k.33576
  br label %.preheader126

.preheader126:                                    ; preds = %._crit_edge573, %.preheader126.lr.ph
  %indvars.iv1020 = phi i64 [ 0, %.preheader126.lr.ph ], [ %indvars.iv.next1021, %._crit_edge573 ]
  br i1 %1280, label %.lr.ph572, label %._crit_edge573

.lr.ph572:                                        ; preds = %.preheader126
  %1288 = xor i64 %indvars.iv1020, 4294967295
  %1289 = trunc i64 %1288 to i32
  %1290 = add i32 %1282, %1289
  %1291 = add i32 %1290, %1287
  %1292 = mul nsw i32 %1291, %1281
  %1293 = load i8**** %55, align 8, !tbaa !15
  %1294 = getelementptr inbounds i8*** %1293, i64 %indvars.iv1201
  %1295 = bitcast i8*** %1294 to i16***
  %1296 = load i16*** %1295, align 8, !tbaa !9
  %1297 = load i16** %1296, align 8, !tbaa !9
  %1298 = sext i32 %1292 to i64
  br label %1299

; <label>:1299                                    ; preds = %.lr.ph572, %1299
  %indvars.iv1018 = phi i64 [ 0, %.lr.ph572 ], [ %indvars.iv.next1019, %1299 ]
  %1300 = add nsw i64 %1298, %indvars.iv1018
  %1301 = getelementptr inbounds i16* %1297, i64 %1300
  store i16 %1284, i16* %1301, align 2, !tbaa !21
  %indvars.iv.next1019 = add nuw nsw i64 %indvars.iv1018, 1
  %1302 = icmp slt i64 %indvars.iv.next1019, %1285
  br i1 %1302, label %1299, label %._crit_edge573

._crit_edge573:                                   ; preds = %1299, %.preheader126
  %indvars.iv.next1021 = add nuw nsw i64 %indvars.iv1020, 1
  %lftr.wideiv1022 = trunc i64 %indvars.iv1020 to i32
  %exitcond1023 = icmp eq i32 %lftr.wideiv1022, %1286
  br i1 %exitcond1023, label %._crit_edge575, label %.preheader126

._crit_edge575:                                   ; preds = %._crit_edge573, %.preheader192
  %1303 = add nuw nsw i32 %k.33576, 1
  %1304 = icmp slt i32 %1303, %1275
  br i1 %1304, label %.preheader192, label %.loopexit288

.loopexit288:                                     ; preds = %._crit_edge575, %.preheader287, %.loopexit290
  br i1 %46, label %1305, label %.thread67

; <label>:1305                                    ; preds = %.loopexit288
  %1306 = bitcast i32* %47 to i64*
  %1307 = load i64* %1306, align 16
  %1308 = trunc i64 %1307 to i32
  %1309 = icmp eq i32 %1308, 0
  br i1 %1309, label %.loopexit286, label %.preheader285

.preheader285:                                    ; preds = %1305
  %1310 = load i32* %49, align 4, !tbaa !2
  %1311 = icmp sgt i32 %1310, 0
  br i1 %1311, label %.preheader191.lr.ph, label %.loopexit286

.preheader191.lr.ph:                              ; preds = %.preheader285
  %1312 = load i32* %50, align 4, !tbaa !2
  %1313 = icmp sgt i32 %1312, 0
  %1314 = load i32* %51, align 4, !tbaa !2
  %1315 = icmp sgt i32 %1314, 0
  %1316 = load i32* %52, align 4, !tbaa !2
  %1317 = load i32* %53, align 4, !tbaa !2
  %1318 = fptosi double %.066791 to i16
  %1319 = add i32 %1314, -1
  %1320 = sext i32 %1316 to i64
  %1321 = add i32 %1312, -1
  %1322 = sext i32 %1317 to i64
  %1323 = sext i32 %1310 to i64
  br label %.preheader191

.preheader191:                                    ; preds = %.preheader191.lr.ph, %._crit_edge581
  %indvars.iv1032 = phi i64 [ 0, %.preheader191.lr.ph ], [ %indvars.iv.next1033, %._crit_edge581 ]
  br i1 %1313, label %.preheader125.lr.ph, label %._crit_edge581

.preheader125.lr.ph:                              ; preds = %.preheader191
  %1324 = mul nsw i64 %1322, %indvars.iv1032
  br label %.preheader125

.preheader125:                                    ; preds = %._crit_edge579, %.preheader125.lr.ph
  %indvars.iv1028 = phi i64 [ 0, %.preheader125.lr.ph ], [ %indvars.iv.next1029, %._crit_edge579 ]
  br i1 %1315, label %.lr.ph578, label %._crit_edge579

.lr.ph578:                                        ; preds = %.preheader125
  %1325 = add nsw i64 %1324, %indvars.iv1028
  %1326 = mul nsw i64 %1325, %1320
  %1327 = load i8**** %55, align 8, !tbaa !15
  %1328 = getelementptr inbounds i8*** %1327, i64 %indvars.iv1201
  %1329 = bitcast i8*** %1328 to i16***
  %1330 = load i16*** %1329, align 8, !tbaa !9
  %1331 = load i16** %1330, align 8, !tbaa !9
  br label %1332

; <label>:1332                                    ; preds = %1332, %.lr.ph578
  %indvars.iv1024 = phi i64 [ 0, %.lr.ph578 ], [ %indvars.iv.next1025, %1332 ]
  %1333 = add nsw i64 %1326, %indvars.iv1024
  %1334 = getelementptr inbounds i16* %1331, i64 %1333
  store i16 %1318, i16* %1334, align 2, !tbaa !21
  %indvars.iv.next1025 = add nuw nsw i64 %indvars.iv1024, 1
  %lftr.wideiv1026 = trunc i64 %indvars.iv1024 to i32
  %exitcond1027 = icmp eq i32 %lftr.wideiv1026, %1319
  br i1 %exitcond1027, label %._crit_edge579, label %1332

._crit_edge579:                                   ; preds = %1332, %.preheader125
  %indvars.iv.next1029 = add nuw nsw i64 %indvars.iv1028, 1
  %lftr.wideiv1030 = trunc i64 %indvars.iv1028 to i32
  %exitcond1031 = icmp eq i32 %lftr.wideiv1030, %1321
  br i1 %exitcond1031, label %._crit_edge581, label %.preheader125

._crit_edge581:                                   ; preds = %._crit_edge579, %.preheader191
  %indvars.iv.next1033 = add nuw nsw i64 %indvars.iv1032, 1
  %1335 = icmp slt i64 %indvars.iv.next1033, %1323
  br i1 %1335, label %.preheader191, label %.loopexit286

.loopexit286:                                     ; preds = %._crit_edge581, %.preheader285, %1305
  %1336 = icmp ult i64 %1307, 4294967296
  br i1 %1336, label %.thread67, label %.preheader283

.preheader283:                                    ; preds = %.loopexit286
  %1337 = load i32* %49, align 4, !tbaa !2
  %1338 = icmp sgt i32 %1337, 0
  br i1 %1338, label %.preheader190.lr.ph, label %.thread67

.preheader190.lr.ph:                              ; preds = %.preheader283
  %1339 = load i32* %50, align 4, !tbaa !2
  %1340 = icmp sgt i32 %1339, 0
  %1341 = load i32* %51, align 4, !tbaa !2
  %1342 = icmp sgt i32 %1341, 0
  %1343 = load i32* %52, align 4, !tbaa !2
  %1344 = load i32* %53, align 4, !tbaa !2
  %1345 = load i32* %54, align 4, !tbaa !2
  %1346 = fptosi double %.066791 to i16
  %1347 = sext i32 %1341 to i64
  %1348 = sext i32 %1343 to i64
  %1349 = add i32 %1339, -1
  %1350 = sext i32 %1337 to i64
  br label %.preheader190

.preheader190:                                    ; preds = %.preheader190.lr.ph, %._crit_edge587
  %indvars.iv1040 = phi i64 [ 0, %.preheader190.lr.ph ], [ %indvars.iv.next1041, %._crit_edge587 ]
  br i1 %1340, label %.preheader124.lr.ph, label %._crit_edge587

.preheader124.lr.ph:                              ; preds = %.preheader190
  %1351 = xor i64 %indvars.iv1040, 4294967295
  %1352 = trunc i64 %1351 to i32
  %1353 = add i32 %1345, %1352
  %1354 = mul nsw i32 %1353, %1344
  %1355 = sext i32 %1354 to i64
  br label %.preheader124

.preheader124:                                    ; preds = %._crit_edge585, %.preheader124.lr.ph
  %indvars.iv1036 = phi i64 [ 0, %.preheader124.lr.ph ], [ %indvars.iv.next1037, %._crit_edge585 ]
  br i1 %1342, label %.lr.ph584, label %._crit_edge585

.lr.ph584:                                        ; preds = %.preheader124
  %1356 = add nsw i64 %1355, %indvars.iv1036
  %1357 = mul nsw i64 %1356, %1348
  %1358 = load i8**** %55, align 8, !tbaa !15
  %1359 = getelementptr inbounds i8*** %1358, i64 %indvars.iv1201
  %1360 = bitcast i8*** %1359 to i16***
  %1361 = load i16*** %1360, align 8, !tbaa !9
  %1362 = load i16** %1361, align 8, !tbaa !9
  br label %1363

; <label>:1363                                    ; preds = %.lr.ph584, %1363
  %indvars.iv1034 = phi i64 [ 0, %.lr.ph584 ], [ %indvars.iv.next1035, %1363 ]
  %1364 = add nsw i64 %1357, %indvars.iv1034
  %1365 = getelementptr inbounds i16* %1362, i64 %1364
  store i16 %1346, i16* %1365, align 2, !tbaa !21
  %indvars.iv.next1035 = add nuw nsw i64 %indvars.iv1034, 1
  %1366 = icmp slt i64 %indvars.iv.next1035, %1347
  br i1 %1366, label %1363, label %._crit_edge585

._crit_edge585:                                   ; preds = %1363, %.preheader124
  %indvars.iv.next1037 = add nuw nsw i64 %indvars.iv1036, 1
  %lftr.wideiv1038 = trunc i64 %indvars.iv1036 to i32
  %exitcond1039 = icmp eq i32 %lftr.wideiv1038, %1349
  br i1 %exitcond1039, label %._crit_edge587, label %.preheader124

._crit_edge587:                                   ; preds = %._crit_edge585, %.preheader190
  %indvars.iv.next1041 = add nuw nsw i64 %indvars.iv1040, 1
  %1367 = icmp slt i64 %indvars.iv.next1041, %1350
  br i1 %1367, label %.preheader190, label %.thread67

; <label>:1368                                    ; preds = %._crit_edge
  br i1 %41, label %1369, label %.thread67

; <label>:1369                                    ; preds = %1368
  %1370 = bitcast [6 x i32]* %doBC to i64*
  %1371 = load i64* %1370, align 16
  %1372 = trunc i64 %1371 to i32
  %1373 = icmp eq i32 %1372, 0
  br i1 %1373, label %.loopexit306, label %.preheader305

.preheader305:                                    ; preds = %1369
  %1374 = load i32* %54, align 4, !tbaa !2
  %1375 = icmp sgt i32 %1374, 0
  br i1 %1375, label %.preheader201.lr.ph, label %.loopexit306

.preheader201.lr.ph:                              ; preds = %.preheader305
  %1376 = fptosi double %.066791 to i32
  %.pre = load i32* %50, align 4, !tbaa !2
  br label %.preheader201

.preheader201:                                    ; preds = %.preheader201.lr.ph, %1405
  %1377 = phi i32 [ %1374, %.preheader201.lr.ph ], [ %1406, %1405 ]
  %1378 = phi i32 [ %.pre, %.preheader201.lr.ph ], [ %1407, %1405 ]
  %k.36513 = phi i32 [ 0, %.preheader201.lr.ph ], [ %1408, %1405 ]
  %1379 = icmp sgt i32 %1378, 0
  br i1 %1379, label %.preheader135.lr.ph, label %1405

.preheader135.lr.ph:                              ; preds = %.preheader201
  %.pre1210 = load i32* %57, align 4, !tbaa !2
  br label %.preheader135

.preheader135:                                    ; preds = %.preheader135.lr.ph, %1400
  %1380 = phi i32 [ %1378, %.preheader135.lr.ph ], [ %1401, %1400 ]
  %1381 = phi i32 [ %.pre1210, %.preheader135.lr.ph ], [ %1402, %1400 ]
  %j.36510 = phi i32 [ 0, %.preheader135.lr.ph ], [ %1403, %1400 ]
  %1382 = icmp sgt i32 %1381, 0
  br i1 %1382, label %.lr.ph508, label %1400

.lr.ph508:                                        ; preds = %.preheader135
  %1383 = load i8**** %55, align 8, !tbaa !15
  %1384 = getelementptr inbounds i8*** %1383, i64 %indvars.iv1201
  %1385 = bitcast i8*** %1384 to i32***
  %1386 = load i32*** %1385, align 8, !tbaa !9
  %1387 = load i32** %1386, align 8, !tbaa !9
  br label %1388

; <label>:1388                                    ; preds = %.lr.ph508, %1388
  %i.39507 = phi i32 [ 0, %.lr.ph508 ], [ %1397, %1388 ]
  %1389 = load i32* %52, align 4, !tbaa !2
  %1390 = load i32* %53, align 4, !tbaa !2
  %1391 = mul nsw i32 %1390, %k.36513
  %1392 = add nsw i32 %1391, %j.36510
  %1393 = mul nsw i32 %1392, %1389
  %1394 = add nsw i32 %1393, %i.39507
  %1395 = sext i32 %1394 to i64
  %1396 = getelementptr inbounds i32* %1387, i64 %1395
  store i32 %1376, i32* %1396, align 4, !tbaa !2
  %1397 = add nuw nsw i32 %i.39507, 1
  %1398 = load i32* %57, align 4, !tbaa !2
  %1399 = icmp slt i32 %1397, %1398
  br i1 %1399, label %1388, label %._crit_edge509

._crit_edge509:                                   ; preds = %1388
  %.pre1211 = load i32* %50, align 4, !tbaa !2
  br label %1400

; <label>:1400                                    ; preds = %._crit_edge509, %.preheader135
  %1401 = phi i32 [ %.pre1211, %._crit_edge509 ], [ %1380, %.preheader135 ]
  %1402 = phi i32 [ %1398, %._crit_edge509 ], [ %1381, %.preheader135 ]
  %1403 = add nuw nsw i32 %j.36510, 1
  %1404 = icmp slt i32 %1403, %1401
  br i1 %1404, label %.preheader135, label %._crit_edge512

._crit_edge512:                                   ; preds = %1400
  %.pre1212 = load i32* %54, align 4, !tbaa !2
  br label %1405

; <label>:1405                                    ; preds = %._crit_edge512, %.preheader201
  %1406 = phi i32 [ %.pre1212, %._crit_edge512 ], [ %1377, %.preheader201 ]
  %1407 = phi i32 [ %1401, %._crit_edge512 ], [ %1378, %.preheader201 ]
  %1408 = add nuw nsw i32 %k.36513, 1
  %1409 = icmp slt i32 %1408, %1406
  br i1 %1409, label %.preheader201, label %.loopexit306

.loopexit306:                                     ; preds = %1405, %.preheader305, %1369
  %1410 = icmp ult i64 %1371, 4294967296
  br i1 %1410, label %.loopexit304, label %.preheader303

.preheader303:                                    ; preds = %.loopexit306
  %1411 = load i32* %54, align 4, !tbaa !2
  %1412 = icmp sgt i32 %1411, 0
  br i1 %1412, label %.preheader200.lr.ph, label %.loopexit304

.preheader200.lr.ph:                              ; preds = %.preheader303
  %1413 = fptosi double %.066791 to i32
  %.pre1213 = load i32* %50, align 4, !tbaa !2
  br label %.preheader200

.preheader200:                                    ; preds = %.preheader200.lr.ph, %1445
  %1414 = phi i32 [ %1411, %.preheader200.lr.ph ], [ %1446, %1445 ]
  %1415 = phi i32 [ %.pre1213, %.preheader200.lr.ph ], [ %1447, %1445 ]
  %k.37521 = phi i32 [ 0, %.preheader200.lr.ph ], [ %1448, %1445 ]
  %1416 = icmp sgt i32 %1415, 0
  br i1 %1416, label %.preheader134.lr.ph, label %1445

.preheader134.lr.ph:                              ; preds = %.preheader200
  %.pre1214 = load i32* %57, align 4, !tbaa !2
  br label %.preheader134

.preheader134:                                    ; preds = %.preheader134.lr.ph, %1440
  %1417 = phi i32 [ %1415, %.preheader134.lr.ph ], [ %1441, %1440 ]
  %1418 = phi i32 [ %.pre1214, %.preheader134.lr.ph ], [ %1442, %1440 ]
  %j.37518 = phi i32 [ 0, %.preheader134.lr.ph ], [ %1443, %1440 ]
  %1419 = icmp sgt i32 %1418, 0
  br i1 %1419, label %.lr.ph516, label %1440

.lr.ph516:                                        ; preds = %.preheader134
  %1420 = load i8**** %55, align 8, !tbaa !15
  %1421 = getelementptr inbounds i8*** %1420, i64 %indvars.iv1201
  %1422 = bitcast i8*** %1421 to i32***
  %1423 = load i32*** %1422, align 8, !tbaa !9
  %1424 = load i32** %1423, align 8, !tbaa !9
  br label %1425

; <label>:1425                                    ; preds = %.lr.ph516, %1425
  %i.40515 = phi i32 [ 0, %.lr.ph516 ], [ %1437, %1425 ]
  %1426 = load i32* %51, align 4, !tbaa !2
  %1427 = load i32* %52, align 4, !tbaa !2
  %1428 = load i32* %53, align 4, !tbaa !2
  %1429 = mul nsw i32 %1428, %k.37521
  %1430 = add nsw i32 %1429, %j.37518
  %1431 = mul nsw i32 %1430, %1427
  %1432 = xor i32 %i.40515, -1
  %1433 = add i32 %1426, %1432
  %1434 = add i32 %1433, %1431
  %1435 = sext i32 %1434 to i64
  %1436 = getelementptr inbounds i32* %1424, i64 %1435
  store i32 %1413, i32* %1436, align 4, !tbaa !2
  %1437 = add nuw nsw i32 %i.40515, 1
  %1438 = load i32* %57, align 4, !tbaa !2
  %1439 = icmp slt i32 %1437, %1438
  br i1 %1439, label %1425, label %._crit_edge517

._crit_edge517:                                   ; preds = %1425
  %.pre1215 = load i32* %50, align 4, !tbaa !2
  br label %1440

; <label>:1440                                    ; preds = %._crit_edge517, %.preheader134
  %1441 = phi i32 [ %.pre1215, %._crit_edge517 ], [ %1417, %.preheader134 ]
  %1442 = phi i32 [ %1438, %._crit_edge517 ], [ %1418, %.preheader134 ]
  %1443 = add nuw nsw i32 %j.37518, 1
  %1444 = icmp slt i32 %1443, %1441
  br i1 %1444, label %.preheader134, label %._crit_edge520

._crit_edge520:                                   ; preds = %1440
  %.pre1216 = load i32* %54, align 4, !tbaa !2
  br label %1445

; <label>:1445                                    ; preds = %._crit_edge520, %.preheader200
  %1446 = phi i32 [ %.pre1216, %._crit_edge520 ], [ %1414, %.preheader200 ]
  %1447 = phi i32 [ %1441, %._crit_edge520 ], [ %1415, %.preheader200 ]
  %1448 = add nuw nsw i32 %k.37521, 1
  %1449 = icmp slt i32 %1448, %1446
  br i1 %1449, label %.preheader200, label %.loopexit304

.loopexit304:                                     ; preds = %1445, %.preheader303, %.loopexit306
  br i1 %43, label %1450, label %.thread67

; <label>:1450                                    ; preds = %.loopexit304
  %1451 = bitcast i32* %44 to i64*
  %1452 = load i64* %1451, align 8
  %1453 = trunc i64 %1452 to i32
  %1454 = icmp eq i32 %1453, 0
  br i1 %1454, label %.loopexit302, label %.preheader301

.preheader301:                                    ; preds = %1450
  %1455 = load i32* %54, align 4, !tbaa !2
  %1456 = icmp sgt i32 %1455, 0
  br i1 %1456, label %.preheader199.lr.ph, label %.loopexit302

.preheader199.lr.ph:                              ; preds = %.preheader301
  %1457 = fptosi double %.066791 to i32
  %.pre1217 = load i32* %56, align 4, !tbaa !2
  br label %.preheader199

.preheader199:                                    ; preds = %.preheader199.lr.ph, %1486
  %1458 = phi i32 [ %1455, %.preheader199.lr.ph ], [ %1487, %1486 ]
  %1459 = phi i32 [ %.pre1217, %.preheader199.lr.ph ], [ %1488, %1486 ]
  %k.38529 = phi i32 [ 0, %.preheader199.lr.ph ], [ %1489, %1486 ]
  %1460 = icmp sgt i32 %1459, 0
  br i1 %1460, label %.preheader133.lr.ph, label %1486

.preheader133.lr.ph:                              ; preds = %.preheader199
  %.pre1218 = load i32* %51, align 4, !tbaa !2
  br label %.preheader133

.preheader133:                                    ; preds = %.preheader133.lr.ph, %1481
  %1461 = phi i32 [ %1459, %.preheader133.lr.ph ], [ %1482, %1481 ]
  %1462 = phi i32 [ %.pre1218, %.preheader133.lr.ph ], [ %1483, %1481 ]
  %j.38526 = phi i32 [ 0, %.preheader133.lr.ph ], [ %1484, %1481 ]
  %1463 = icmp sgt i32 %1462, 0
  br i1 %1463, label %.lr.ph524, label %1481

.lr.ph524:                                        ; preds = %.preheader133
  %1464 = load i8**** %55, align 8, !tbaa !15
  %1465 = getelementptr inbounds i8*** %1464, i64 %indvars.iv1201
  %1466 = bitcast i8*** %1465 to i32***
  %1467 = load i32*** %1466, align 8, !tbaa !9
  %1468 = load i32** %1467, align 8, !tbaa !9
  br label %1469

; <label>:1469                                    ; preds = %.lr.ph524, %1469
  %i.41523 = phi i32 [ 0, %.lr.ph524 ], [ %1478, %1469 ]
  %1470 = load i32* %52, align 4, !tbaa !2
  %1471 = load i32* %53, align 4, !tbaa !2
  %1472 = mul nsw i32 %1471, %k.38529
  %1473 = add nsw i32 %1472, %j.38526
  %1474 = mul nsw i32 %1473, %1470
  %1475 = add nsw i32 %1474, %i.41523
  %1476 = sext i32 %1475 to i64
  %1477 = getelementptr inbounds i32* %1468, i64 %1476
  store i32 %1457, i32* %1477, align 4, !tbaa !2
  %1478 = add nuw nsw i32 %i.41523, 1
  %1479 = load i32* %51, align 4, !tbaa !2
  %1480 = icmp slt i32 %1478, %1479
  br i1 %1480, label %1469, label %._crit_edge525

._crit_edge525:                                   ; preds = %1469
  %.pre1219 = load i32* %56, align 4, !tbaa !2
  br label %1481

; <label>:1481                                    ; preds = %._crit_edge525, %.preheader133
  %1482 = phi i32 [ %.pre1219, %._crit_edge525 ], [ %1461, %.preheader133 ]
  %1483 = phi i32 [ %1479, %._crit_edge525 ], [ %1462, %.preheader133 ]
  %1484 = add nuw nsw i32 %j.38526, 1
  %1485 = icmp slt i32 %1484, %1482
  br i1 %1485, label %.preheader133, label %._crit_edge528

._crit_edge528:                                   ; preds = %1481
  %.pre1220 = load i32* %54, align 4, !tbaa !2
  br label %1486

; <label>:1486                                    ; preds = %._crit_edge528, %.preheader199
  %1487 = phi i32 [ %.pre1220, %._crit_edge528 ], [ %1458, %.preheader199 ]
  %1488 = phi i32 [ %1482, %._crit_edge528 ], [ %1459, %.preheader199 ]
  %1489 = add nuw nsw i32 %k.38529, 1
  %1490 = icmp slt i32 %1489, %1487
  br i1 %1490, label %.preheader199, label %.loopexit302

.loopexit302:                                     ; preds = %1486, %.preheader301, %1450
  %1491 = icmp ult i64 %1452, 4294967296
  br i1 %1491, label %.loopexit300, label %.preheader299

.preheader299:                                    ; preds = %.loopexit302
  %1492 = load i32* %54, align 4, !tbaa !2
  %1493 = icmp sgt i32 %1492, 0
  br i1 %1493, label %.preheader198.lr.ph, label %.loopexit300

.preheader198.lr.ph:                              ; preds = %.preheader299
  %1494 = fptosi double %.066791 to i32
  %.pre1221 = load i32* %56, align 4, !tbaa !2
  br label %.preheader198

.preheader198:                                    ; preds = %.preheader198.lr.ph, %1526
  %1495 = phi i32 [ %1492, %.preheader198.lr.ph ], [ %1527, %1526 ]
  %1496 = phi i32 [ %.pre1221, %.preheader198.lr.ph ], [ %1528, %1526 ]
  %k.39536 = phi i32 [ 0, %.preheader198.lr.ph ], [ %1529, %1526 ]
  %1497 = icmp sgt i32 %1496, 0
  br i1 %1497, label %.preheader132.lr.ph, label %1526

.preheader132.lr.ph:                              ; preds = %.preheader198
  %.pre1222 = load i32* %51, align 4, !tbaa !2
  br label %.preheader132

.preheader132:                                    ; preds = %.preheader132.lr.ph, %1521
  %1498 = phi i32 [ %1496, %.preheader132.lr.ph ], [ %1522, %1521 ]
  %1499 = phi i32 [ %.pre1222, %.preheader132.lr.ph ], [ %1523, %1521 ]
  %j.39534 = phi i32 [ 0, %.preheader132.lr.ph ], [ %1524, %1521 ]
  %1500 = icmp sgt i32 %1499, 0
  br i1 %1500, label %.lr.ph532, label %1521

.lr.ph532:                                        ; preds = %.preheader132
  %1501 = xor i32 %j.39534, -1
  %1502 = load i8**** %55, align 8, !tbaa !15
  %1503 = getelementptr inbounds i8*** %1502, i64 %indvars.iv1201
  %1504 = bitcast i8*** %1503 to i32***
  %1505 = load i32*** %1504, align 8, !tbaa !9
  %1506 = load i32** %1505, align 8, !tbaa !9
  br label %1507

; <label>:1507                                    ; preds = %.lr.ph532, %1507
  %i.42531 = phi i32 [ 0, %.lr.ph532 ], [ %1518, %1507 ]
  %1508 = load i32* %52, align 4, !tbaa !2
  %1509 = load i32* %50, align 4, !tbaa !2
  %1510 = load i32* %53, align 4, !tbaa !2
  %1511 = mul nsw i32 %1510, %k.39536
  %1512 = add i32 %1509, %1501
  %1513 = add i32 %1512, %1511
  %1514 = mul nsw i32 %1513, %1508
  %1515 = add nsw i32 %1514, %i.42531
  %1516 = sext i32 %1515 to i64
  %1517 = getelementptr inbounds i32* %1506, i64 %1516
  store i32 %1494, i32* %1517, align 4, !tbaa !2
  %1518 = add nuw nsw i32 %i.42531, 1
  %1519 = load i32* %51, align 4, !tbaa !2
  %1520 = icmp slt i32 %1518, %1519
  br i1 %1520, label %1507, label %._crit_edge533

._crit_edge533:                                   ; preds = %1507
  %.pre1223 = load i32* %56, align 4, !tbaa !2
  br label %1521

; <label>:1521                                    ; preds = %._crit_edge533, %.preheader132
  %1522 = phi i32 [ %.pre1223, %._crit_edge533 ], [ %1498, %.preheader132 ]
  %1523 = phi i32 [ %1519, %._crit_edge533 ], [ %1499, %.preheader132 ]
  %1524 = add nuw nsw i32 %j.39534, 1
  %1525 = icmp slt i32 %1524, %1522
  br i1 %1525, label %.preheader132, label %._crit_edge535

._crit_edge535:                                   ; preds = %1521
  %.pre1224 = load i32* %54, align 4, !tbaa !2
  br label %1526

; <label>:1526                                    ; preds = %._crit_edge535, %.preheader198
  %1527 = phi i32 [ %.pre1224, %._crit_edge535 ], [ %1495, %.preheader198 ]
  %1528 = phi i32 [ %1522, %._crit_edge535 ], [ %1496, %.preheader198 ]
  %1529 = add nuw nsw i32 %k.39536, 1
  %1530 = icmp slt i32 %1529, %1527
  br i1 %1530, label %.preheader198, label %.loopexit300

.loopexit300:                                     ; preds = %1526, %.preheader299, %.loopexit302
  br i1 %46, label %1531, label %.thread67

; <label>:1531                                    ; preds = %.loopexit300
  %1532 = bitcast i32* %47 to i64*
  %1533 = load i64* %1532, align 16
  %1534 = trunc i64 %1533 to i32
  %1535 = icmp eq i32 %1534, 0
  br i1 %1535, label %.loopexit298, label %.preheader297

.preheader297:                                    ; preds = %1531
  %1536 = load i32* %49, align 4, !tbaa !2
  %1537 = icmp sgt i32 %1536, 0
  br i1 %1537, label %.preheader197.lr.ph, label %.loopexit298

.preheader197.lr.ph:                              ; preds = %.preheader297
  %1538 = fptosi double %.066791 to i32
  %.pre1225 = load i32* %50, align 4, !tbaa !2
  br label %.preheader197

.preheader197:                                    ; preds = %.preheader197.lr.ph, %1567
  %1539 = phi i32 [ %1536, %.preheader197.lr.ph ], [ %1568, %1567 ]
  %1540 = phi i32 [ %.pre1225, %.preheader197.lr.ph ], [ %1569, %1567 ]
  %k.40544 = phi i32 [ 0, %.preheader197.lr.ph ], [ %1570, %1567 ]
  %1541 = icmp sgt i32 %1540, 0
  br i1 %1541, label %.preheader131.lr.ph, label %1567

.preheader131.lr.ph:                              ; preds = %.preheader197
  %.pre1226 = load i32* %51, align 4, !tbaa !2
  br label %.preheader131

.preheader131:                                    ; preds = %.preheader131.lr.ph, %1562
  %1542 = phi i32 [ %1540, %.preheader131.lr.ph ], [ %1563, %1562 ]
  %1543 = phi i32 [ %.pre1226, %.preheader131.lr.ph ], [ %1564, %1562 ]
  %j.40541 = phi i32 [ 0, %.preheader131.lr.ph ], [ %1565, %1562 ]
  %1544 = icmp sgt i32 %1543, 0
  br i1 %1544, label %.lr.ph539, label %1562

.lr.ph539:                                        ; preds = %.preheader131
  %1545 = load i8**** %55, align 8, !tbaa !15
  %1546 = getelementptr inbounds i8*** %1545, i64 %indvars.iv1201
  %1547 = bitcast i8*** %1546 to i32***
  %1548 = load i32*** %1547, align 8, !tbaa !9
  %1549 = load i32** %1548, align 8, !tbaa !9
  br label %1550

; <label>:1550                                    ; preds = %.lr.ph539, %1550
  %i.43538 = phi i32 [ 0, %.lr.ph539 ], [ %1559, %1550 ]
  %1551 = load i32* %52, align 4, !tbaa !2
  %1552 = load i32* %53, align 4, !tbaa !2
  %1553 = mul nsw i32 %1552, %k.40544
  %1554 = add nsw i32 %1553, %j.40541
  %1555 = mul nsw i32 %1554, %1551
  %1556 = add nsw i32 %1555, %i.43538
  %1557 = sext i32 %1556 to i64
  %1558 = getelementptr inbounds i32* %1549, i64 %1557
  store i32 %1538, i32* %1558, align 4, !tbaa !2
  %1559 = add nuw nsw i32 %i.43538, 1
  %1560 = load i32* %51, align 4, !tbaa !2
  %1561 = icmp slt i32 %1559, %1560
  br i1 %1561, label %1550, label %._crit_edge540

._crit_edge540:                                   ; preds = %1550
  %.pre1227 = load i32* %50, align 4, !tbaa !2
  br label %1562

; <label>:1562                                    ; preds = %._crit_edge540, %.preheader131
  %1563 = phi i32 [ %.pre1227, %._crit_edge540 ], [ %1542, %.preheader131 ]
  %1564 = phi i32 [ %1560, %._crit_edge540 ], [ %1543, %.preheader131 ]
  %1565 = add nuw nsw i32 %j.40541, 1
  %1566 = icmp slt i32 %1565, %1563
  br i1 %1566, label %.preheader131, label %._crit_edge543

._crit_edge543:                                   ; preds = %1562
  %.pre1228 = load i32* %49, align 4, !tbaa !2
  br label %1567

; <label>:1567                                    ; preds = %._crit_edge543, %.preheader197
  %1568 = phi i32 [ %.pre1228, %._crit_edge543 ], [ %1539, %.preheader197 ]
  %1569 = phi i32 [ %1563, %._crit_edge543 ], [ %1540, %.preheader197 ]
  %1570 = add nuw nsw i32 %k.40544, 1
  %1571 = icmp slt i32 %1570, %1568
  br i1 %1571, label %.preheader197, label %.loopexit298

.loopexit298:                                     ; preds = %1567, %.preheader297, %1531
  %1572 = icmp ult i64 %1533, 4294967296
  br i1 %1572, label %.thread67, label %.preheader295

.preheader295:                                    ; preds = %.loopexit298
  %1573 = load i32* %49, align 4, !tbaa !2
  %1574 = icmp sgt i32 %1573, 0
  br i1 %1574, label %.preheader196.lr.ph, label %.thread67

.preheader196.lr.ph:                              ; preds = %.preheader295
  %1575 = fptosi double %.066791 to i32
  %.pre1229 = load i32* %50, align 4, !tbaa !2
  br label %.preheader196

.preheader196:                                    ; preds = %.preheader196.lr.ph, %1607
  %1576 = phi i32 [ %1573, %.preheader196.lr.ph ], [ %1608, %1607 ]
  %1577 = phi i32 [ %.pre1229, %.preheader196.lr.ph ], [ %1609, %1607 ]
  %k.41552 = phi i32 [ 0, %.preheader196.lr.ph ], [ %1610, %1607 ]
  %1578 = icmp sgt i32 %1577, 0
  br i1 %1578, label %.preheader130.lr.ph, label %1607

.preheader130.lr.ph:                              ; preds = %.preheader196
  %1579 = xor i32 %k.41552, -1
  %.pre1230 = load i32* %51, align 4, !tbaa !2
  br label %.preheader130

.preheader130:                                    ; preds = %.preheader130.lr.ph, %1602
  %1580 = phi i32 [ %1577, %.preheader130.lr.ph ], [ %1603, %1602 ]
  %1581 = phi i32 [ %.pre1230, %.preheader130.lr.ph ], [ %1604, %1602 ]
  %j.41549 = phi i32 [ 0, %.preheader130.lr.ph ], [ %1605, %1602 ]
  %1582 = icmp sgt i32 %1581, 0
  br i1 %1582, label %.lr.ph547, label %1602

.lr.ph547:                                        ; preds = %.preheader130
  %1583 = load i8**** %55, align 8, !tbaa !15
  %1584 = getelementptr inbounds i8*** %1583, i64 %indvars.iv1201
  %1585 = bitcast i8*** %1584 to i32***
  %1586 = load i32*** %1585, align 8, !tbaa !9
  %1587 = load i32** %1586, align 8, !tbaa !9
  br label %1588

; <label>:1588                                    ; preds = %.lr.ph547, %1588
  %i.44546 = phi i32 [ 0, %.lr.ph547 ], [ %1599, %1588 ]
  %1589 = load i32* %52, align 4, !tbaa !2
  %1590 = load i32* %53, align 4, !tbaa !2
  %1591 = load i32* %54, align 4, !tbaa !2
  %1592 = add i32 %1591, %1579
  %1593 = mul nsw i32 %1592, %1590
  %1594 = add nsw i32 %1593, %j.41549
  %1595 = mul nsw i32 %1594, %1589
  %1596 = add nsw i32 %1595, %i.44546
  %1597 = sext i32 %1596 to i64
  %1598 = getelementptr inbounds i32* %1587, i64 %1597
  store i32 %1575, i32* %1598, align 4, !tbaa !2
  %1599 = add nuw nsw i32 %i.44546, 1
  %1600 = load i32* %51, align 4, !tbaa !2
  %1601 = icmp slt i32 %1599, %1600
  br i1 %1601, label %1588, label %._crit_edge548

._crit_edge548:                                   ; preds = %1588
  %.pre1231 = load i32* %50, align 4, !tbaa !2
  br label %1602

; <label>:1602                                    ; preds = %._crit_edge548, %.preheader130
  %1603 = phi i32 [ %.pre1231, %._crit_edge548 ], [ %1580, %.preheader130 ]
  %1604 = phi i32 [ %1600, %._crit_edge548 ], [ %1581, %.preheader130 ]
  %1605 = add nuw nsw i32 %j.41549, 1
  %1606 = icmp slt i32 %1605, %1603
  br i1 %1606, label %.preheader130, label %._crit_edge551

._crit_edge551:                                   ; preds = %1602
  %.pre1232 = load i32* %49, align 4, !tbaa !2
  br label %1607

; <label>:1607                                    ; preds = %._crit_edge551, %.preheader196
  %1608 = phi i32 [ %.pre1232, %._crit_edge551 ], [ %1576, %.preheader196 ]
  %1609 = phi i32 [ %1603, %._crit_edge551 ], [ %1577, %.preheader196 ]
  %1610 = add nuw nsw i32 %k.41552, 1
  %1611 = icmp slt i32 %1610, %1608
  br i1 %1611, label %.preheader196, label %.thread67

; <label>:1612                                    ; preds = %._crit_edge
  br i1 %41, label %1613, label %.thread67

; <label>:1613                                    ; preds = %1612
  %1614 = bitcast [6 x i32]* %doBC to i64*
  %1615 = load i64* %1614, align 16
  %1616 = trunc i64 %1615 to i32
  %1617 = icmp eq i32 %1616, 0
  br i1 %1617, label %.loopexit318, label %.preheader317

.preheader317:                                    ; preds = %1613
  %1618 = load i32* %54, align 4, !tbaa !2
  %1619 = icmp sgt i32 %1618, 0
  br i1 %1619, label %.preheader207.lr.ph, label %.loopexit318

.preheader207.lr.ph:                              ; preds = %.preheader317
  %1620 = load i32* %50, align 4, !tbaa !2
  %1621 = icmp sgt i32 %1620, 0
  %1622 = load i32* %57, align 4, !tbaa !2
  %1623 = icmp sgt i32 %1622, 0
  %1624 = load i32* %52, align 4, !tbaa !2
  %1625 = load i32* %53, align 4, !tbaa !2
  %1626 = fptosi double %.066791 to i64
  %1627 = add i32 %1622, -1
  %1628 = sext i32 %1624 to i64
  %1629 = add i32 %1620, -1
  %1630 = sext i32 %1625 to i64
  %1631 = sext i32 %1618 to i64
  br label %.preheader207

.preheader207:                                    ; preds = %.preheader207.lr.ph, %._crit_edge475
  %indvars.iv956 = phi i64 [ 0, %.preheader207.lr.ph ], [ %indvars.iv.next957, %._crit_edge475 ]
  br i1 %1621, label %.preheader141.lr.ph, label %._crit_edge475

.preheader141.lr.ph:                              ; preds = %.preheader207
  %1632 = mul nsw i64 %1630, %indvars.iv956
  br label %.preheader141

.preheader141:                                    ; preds = %._crit_edge473, %.preheader141.lr.ph
  %indvars.iv952 = phi i64 [ 0, %.preheader141.lr.ph ], [ %indvars.iv.next953, %._crit_edge473 ]
  br i1 %1623, label %.lr.ph472, label %._crit_edge473

.lr.ph472:                                        ; preds = %.preheader141
  %1633 = add nsw i64 %1632, %indvars.iv952
  %1634 = mul nsw i64 %1633, %1628
  %1635 = load i8**** %55, align 8, !tbaa !15
  %1636 = getelementptr inbounds i8*** %1635, i64 %indvars.iv1201
  %1637 = bitcast i8*** %1636 to i64***
  %1638 = load i64*** %1637, align 8, !tbaa !9
  %1639 = load i64** %1638, align 8, !tbaa !9
  br label %1640

; <label>:1640                                    ; preds = %1640, %.lr.ph472
  %indvars.iv948 = phi i64 [ 0, %.lr.ph472 ], [ %indvars.iv.next949, %1640 ]
  %1641 = add nsw i64 %1634, %indvars.iv948
  %1642 = getelementptr inbounds i64* %1639, i64 %1641
  store i64 %1626, i64* %1642, align 8, !tbaa !23
  %indvars.iv.next949 = add nuw nsw i64 %indvars.iv948, 1
  %lftr.wideiv950 = trunc i64 %indvars.iv948 to i32
  %exitcond951 = icmp eq i32 %lftr.wideiv950, %1627
  br i1 %exitcond951, label %._crit_edge473, label %1640

._crit_edge473:                                   ; preds = %1640, %.preheader141
  %indvars.iv.next953 = add nuw nsw i64 %indvars.iv952, 1
  %lftr.wideiv954 = trunc i64 %indvars.iv952 to i32
  %exitcond955 = icmp eq i32 %lftr.wideiv954, %1629
  br i1 %exitcond955, label %._crit_edge475, label %.preheader141

._crit_edge475:                                   ; preds = %._crit_edge473, %.preheader207
  %indvars.iv.next957 = add nuw nsw i64 %indvars.iv956, 1
  %1643 = icmp slt i64 %indvars.iv.next957, %1631
  br i1 %1643, label %.preheader207, label %.loopexit318

.loopexit318:                                     ; preds = %._crit_edge475, %.preheader317, %1613
  %1644 = icmp ult i64 %1615, 4294967296
  br i1 %1644, label %.loopexit316, label %.preheader315

.preheader315:                                    ; preds = %.loopexit318
  %1645 = load i32* %54, align 4, !tbaa !2
  %1646 = icmp sgt i32 %1645, 0
  br i1 %1646, label %.preheader206.lr.ph, label %.loopexit316

.preheader206.lr.ph:                              ; preds = %.preheader315
  %1647 = load i32* %50, align 4, !tbaa !2
  %1648 = icmp sgt i32 %1647, 0
  %1649 = load i32* %57, align 4, !tbaa !2
  %1650 = icmp sgt i32 %1649, 0
  %1651 = load i32* %51, align 4, !tbaa !2
  %1652 = load i32* %52, align 4, !tbaa !2
  %1653 = load i32* %53, align 4, !tbaa !2
  %1654 = fptosi double %.066791 to i64
  %1655 = sext i32 %1649 to i64
  %1656 = add i32 %1647, -1
  br label %.preheader206

.preheader206:                                    ; preds = %.preheader206.lr.ph, %._crit_edge481
  %k.43482 = phi i32 [ 0, %.preheader206.lr.ph ], [ %1674, %._crit_edge481 ]
  br i1 %1648, label %.preheader140.lr.ph, label %._crit_edge481

.preheader140.lr.ph:                              ; preds = %.preheader206
  %1657 = mul nsw i32 %1653, %k.43482
  br label %.preheader140

.preheader140:                                    ; preds = %._crit_edge479, %.preheader140.lr.ph
  %j.43480 = phi i32 [ 0, %.preheader140.lr.ph ], [ %1673, %._crit_edge479 ]
  br i1 %1650, label %.lr.ph478, label %._crit_edge479

.lr.ph478:                                        ; preds = %.preheader140
  %1658 = add nsw i32 %1657, %j.43480
  %1659 = mul nsw i32 %1658, %1652
  %1660 = load i8**** %55, align 8, !tbaa !15
  %1661 = getelementptr inbounds i8*** %1660, i64 %indvars.iv1201
  %1662 = bitcast i8*** %1661 to i64***
  %1663 = load i64*** %1662, align 8, !tbaa !9
  %1664 = load i64** %1663, align 8, !tbaa !9
  br label %1665

; <label>:1665                                    ; preds = %.lr.ph478, %1665
  %indvars.iv958 = phi i64 [ 0, %.lr.ph478 ], [ %indvars.iv.next959, %1665 ]
  %1666 = xor i64 %indvars.iv958, 4294967295
  %1667 = trunc i64 %1666 to i32
  %1668 = add i32 %1651, %1667
  %1669 = add i32 %1668, %1659
  %1670 = sext i32 %1669 to i64
  %1671 = getelementptr inbounds i64* %1664, i64 %1670
  store i64 %1654, i64* %1671, align 8, !tbaa !23
  %indvars.iv.next959 = add nuw nsw i64 %indvars.iv958, 1
  %1672 = icmp slt i64 %indvars.iv.next959, %1655
  br i1 %1672, label %1665, label %._crit_edge479

._crit_edge479:                                   ; preds = %1665, %.preheader140
  %1673 = add nuw nsw i32 %j.43480, 1
  %exitcond960 = icmp eq i32 %j.43480, %1656
  br i1 %exitcond960, label %._crit_edge481, label %.preheader140

._crit_edge481:                                   ; preds = %._crit_edge479, %.preheader206
  %1674 = add nuw nsw i32 %k.43482, 1
  %1675 = icmp slt i32 %1674, %1645
  br i1 %1675, label %.preheader206, label %.loopexit316

.loopexit316:                                     ; preds = %._crit_edge481, %.preheader315, %.loopexit318
  br i1 %43, label %1676, label %.thread67

; <label>:1676                                    ; preds = %.loopexit316
  %1677 = bitcast i32* %44 to i64*
  %1678 = load i64* %1677, align 8
  %1679 = trunc i64 %1678 to i32
  %1680 = icmp eq i32 %1679, 0
  br i1 %1680, label %.loopexit314, label %.preheader313

.preheader313:                                    ; preds = %1676
  %1681 = load i32* %54, align 4, !tbaa !2
  %1682 = icmp sgt i32 %1681, 0
  br i1 %1682, label %.preheader205.lr.ph, label %.loopexit314

.preheader205.lr.ph:                              ; preds = %.preheader313
  %1683 = load i32* %56, align 4, !tbaa !2
  %1684 = icmp sgt i32 %1683, 0
  %1685 = load i32* %51, align 4, !tbaa !2
  %1686 = icmp sgt i32 %1685, 0
  %1687 = load i32* %52, align 4, !tbaa !2
  %1688 = load i32* %53, align 4, !tbaa !2
  %1689 = fptosi double %.066791 to i64
  %1690 = add i32 %1685, -1
  %1691 = sext i32 %1687 to i64
  %1692 = add i32 %1683, -1
  %1693 = sext i32 %1688 to i64
  %1694 = sext i32 %1681 to i64
  br label %.preheader205

.preheader205:                                    ; preds = %.preheader205.lr.ph, %._crit_edge487
  %indvars.iv969 = phi i64 [ 0, %.preheader205.lr.ph ], [ %indvars.iv.next970, %._crit_edge487 ]
  br i1 %1684, label %.preheader139.lr.ph, label %._crit_edge487

.preheader139.lr.ph:                              ; preds = %.preheader205
  %1695 = mul nsw i64 %1693, %indvars.iv969
  br label %.preheader139

.preheader139:                                    ; preds = %._crit_edge485, %.preheader139.lr.ph
  %indvars.iv965 = phi i64 [ 0, %.preheader139.lr.ph ], [ %indvars.iv.next966, %._crit_edge485 ]
  br i1 %1686, label %.lr.ph484, label %._crit_edge485

.lr.ph484:                                        ; preds = %.preheader139
  %1696 = add nsw i64 %1695, %indvars.iv965
  %1697 = mul nsw i64 %1696, %1691
  %1698 = load i8**** %55, align 8, !tbaa !15
  %1699 = getelementptr inbounds i8*** %1698, i64 %indvars.iv1201
  %1700 = bitcast i8*** %1699 to i64***
  %1701 = load i64*** %1700, align 8, !tbaa !9
  %1702 = load i64** %1701, align 8, !tbaa !9
  br label %1703

; <label>:1703                                    ; preds = %1703, %.lr.ph484
  %indvars.iv961 = phi i64 [ 0, %.lr.ph484 ], [ %indvars.iv.next962, %1703 ]
  %1704 = add nsw i64 %1697, %indvars.iv961
  %1705 = getelementptr inbounds i64* %1702, i64 %1704
  store i64 %1689, i64* %1705, align 8, !tbaa !23
  %indvars.iv.next962 = add nuw nsw i64 %indvars.iv961, 1
  %lftr.wideiv963 = trunc i64 %indvars.iv961 to i32
  %exitcond964 = icmp eq i32 %lftr.wideiv963, %1690
  br i1 %exitcond964, label %._crit_edge485, label %1703

._crit_edge485:                                   ; preds = %1703, %.preheader139
  %indvars.iv.next966 = add nuw nsw i64 %indvars.iv965, 1
  %lftr.wideiv967 = trunc i64 %indvars.iv965 to i32
  %exitcond968 = icmp eq i32 %lftr.wideiv967, %1692
  br i1 %exitcond968, label %._crit_edge487, label %.preheader139

._crit_edge487:                                   ; preds = %._crit_edge485, %.preheader205
  %indvars.iv.next970 = add nuw nsw i64 %indvars.iv969, 1
  %1706 = icmp slt i64 %indvars.iv.next970, %1694
  br i1 %1706, label %.preheader205, label %.loopexit314

.loopexit314:                                     ; preds = %._crit_edge487, %.preheader313, %1676
  %1707 = icmp ult i64 %1678, 4294967296
  br i1 %1707, label %.loopexit312, label %.preheader311

.preheader311:                                    ; preds = %.loopexit314
  %1708 = load i32* %54, align 4, !tbaa !2
  %1709 = icmp sgt i32 %1708, 0
  br i1 %1709, label %.preheader204.lr.ph, label %.loopexit312

.preheader204.lr.ph:                              ; preds = %.preheader311
  %1710 = load i32* %56, align 4, !tbaa !2
  %1711 = icmp sgt i32 %1710, 0
  %1712 = load i32* %51, align 4, !tbaa !2
  %1713 = icmp sgt i32 %1712, 0
  %1714 = load i32* %52, align 4, !tbaa !2
  %1715 = load i32* %50, align 4, !tbaa !2
  %1716 = load i32* %53, align 4, !tbaa !2
  %1717 = fptosi double %.066791 to i64
  %1718 = sext i32 %1712 to i64
  %1719 = add i32 %1710, -1
  br label %.preheader204

.preheader204:                                    ; preds = %.preheader204.lr.ph, %._crit_edge493
  %k.45494 = phi i32 [ 0, %.preheader204.lr.ph ], [ %1736, %._crit_edge493 ]
  br i1 %1711, label %.preheader138.lr.ph, label %._crit_edge493

.preheader138.lr.ph:                              ; preds = %.preheader204
  %1720 = mul nsw i32 %1716, %k.45494
  br label %.preheader138

.preheader138:                                    ; preds = %._crit_edge491, %.preheader138.lr.ph
  %indvars.iv973 = phi i64 [ 0, %.preheader138.lr.ph ], [ %indvars.iv.next974, %._crit_edge491 ]
  br i1 %1713, label %.lr.ph490, label %._crit_edge491

.lr.ph490:                                        ; preds = %.preheader138
  %1721 = xor i64 %indvars.iv973, 4294967295
  %1722 = trunc i64 %1721 to i32
  %1723 = add i32 %1715, %1722
  %1724 = add i32 %1723, %1720
  %1725 = mul nsw i32 %1724, %1714
  %1726 = load i8**** %55, align 8, !tbaa !15
  %1727 = getelementptr inbounds i8*** %1726, i64 %indvars.iv1201
  %1728 = bitcast i8*** %1727 to i64***
  %1729 = load i64*** %1728, align 8, !tbaa !9
  %1730 = load i64** %1729, align 8, !tbaa !9
  %1731 = sext i32 %1725 to i64
  br label %1732

; <label>:1732                                    ; preds = %.lr.ph490, %1732
  %indvars.iv971 = phi i64 [ 0, %.lr.ph490 ], [ %indvars.iv.next972, %1732 ]
  %1733 = add nsw i64 %1731, %indvars.iv971
  %1734 = getelementptr inbounds i64* %1730, i64 %1733
  store i64 %1717, i64* %1734, align 8, !tbaa !23
  %indvars.iv.next972 = add nuw nsw i64 %indvars.iv971, 1
  %1735 = icmp slt i64 %indvars.iv.next972, %1718
  br i1 %1735, label %1732, label %._crit_edge491

._crit_edge491:                                   ; preds = %1732, %.preheader138
  %indvars.iv.next974 = add nuw nsw i64 %indvars.iv973, 1
  %lftr.wideiv975 = trunc i64 %indvars.iv973 to i32
  %exitcond976 = icmp eq i32 %lftr.wideiv975, %1719
  br i1 %exitcond976, label %._crit_edge493, label %.preheader138

._crit_edge493:                                   ; preds = %._crit_edge491, %.preheader204
  %1736 = add nuw nsw i32 %k.45494, 1
  %1737 = icmp slt i32 %1736, %1708
  br i1 %1737, label %.preheader204, label %.loopexit312

.loopexit312:                                     ; preds = %._crit_edge493, %.preheader311, %.loopexit314
  br i1 %46, label %1738, label %.thread67

; <label>:1738                                    ; preds = %.loopexit312
  %1739 = bitcast i32* %47 to i64*
  %1740 = load i64* %1739, align 16
  %1741 = trunc i64 %1740 to i32
  %1742 = icmp eq i32 %1741, 0
  br i1 %1742, label %.loopexit310, label %.preheader309

.preheader309:                                    ; preds = %1738
  %1743 = load i32* %49, align 4, !tbaa !2
  %1744 = icmp sgt i32 %1743, 0
  br i1 %1744, label %.preheader203.lr.ph, label %.loopexit310

.preheader203.lr.ph:                              ; preds = %.preheader309
  %1745 = load i32* %50, align 4, !tbaa !2
  %1746 = icmp sgt i32 %1745, 0
  %1747 = load i32* %51, align 4, !tbaa !2
  %1748 = icmp sgt i32 %1747, 0
  %1749 = load i32* %52, align 4, !tbaa !2
  %1750 = load i32* %53, align 4, !tbaa !2
  %1751 = fptosi double %.066791 to i64
  %1752 = add i32 %1747, -1
  %1753 = sext i32 %1749 to i64
  %1754 = add i32 %1745, -1
  %1755 = sext i32 %1750 to i64
  %1756 = sext i32 %1743 to i64
  br label %.preheader203

.preheader203:                                    ; preds = %.preheader203.lr.ph, %._crit_edge499
  %indvars.iv985 = phi i64 [ 0, %.preheader203.lr.ph ], [ %indvars.iv.next986, %._crit_edge499 ]
  br i1 %1746, label %.preheader137.lr.ph, label %._crit_edge499

.preheader137.lr.ph:                              ; preds = %.preheader203
  %1757 = mul nsw i64 %1755, %indvars.iv985
  br label %.preheader137

.preheader137:                                    ; preds = %._crit_edge497, %.preheader137.lr.ph
  %indvars.iv981 = phi i64 [ 0, %.preheader137.lr.ph ], [ %indvars.iv.next982, %._crit_edge497 ]
  br i1 %1748, label %.lr.ph496, label %._crit_edge497

.lr.ph496:                                        ; preds = %.preheader137
  %1758 = add nsw i64 %1757, %indvars.iv981
  %1759 = mul nsw i64 %1758, %1753
  %1760 = load i8**** %55, align 8, !tbaa !15
  %1761 = getelementptr inbounds i8*** %1760, i64 %indvars.iv1201
  %1762 = bitcast i8*** %1761 to i64***
  %1763 = load i64*** %1762, align 8, !tbaa !9
  %1764 = load i64** %1763, align 8, !tbaa !9
  br label %1765

; <label>:1765                                    ; preds = %1765, %.lr.ph496
  %indvars.iv977 = phi i64 [ 0, %.lr.ph496 ], [ %indvars.iv.next978, %1765 ]
  %1766 = add nsw i64 %1759, %indvars.iv977
  %1767 = getelementptr inbounds i64* %1764, i64 %1766
  store i64 %1751, i64* %1767, align 8, !tbaa !23
  %indvars.iv.next978 = add nuw nsw i64 %indvars.iv977, 1
  %lftr.wideiv979 = trunc i64 %indvars.iv977 to i32
  %exitcond980 = icmp eq i32 %lftr.wideiv979, %1752
  br i1 %exitcond980, label %._crit_edge497, label %1765

._crit_edge497:                                   ; preds = %1765, %.preheader137
  %indvars.iv.next982 = add nuw nsw i64 %indvars.iv981, 1
  %lftr.wideiv983 = trunc i64 %indvars.iv981 to i32
  %exitcond984 = icmp eq i32 %lftr.wideiv983, %1754
  br i1 %exitcond984, label %._crit_edge499, label %.preheader137

._crit_edge499:                                   ; preds = %._crit_edge497, %.preheader203
  %indvars.iv.next986 = add nuw nsw i64 %indvars.iv985, 1
  %1768 = icmp slt i64 %indvars.iv.next986, %1756
  br i1 %1768, label %.preheader203, label %.loopexit310

.loopexit310:                                     ; preds = %._crit_edge499, %.preheader309, %1738
  %1769 = icmp ult i64 %1740, 4294967296
  br i1 %1769, label %.thread67, label %.preheader307

.preheader307:                                    ; preds = %.loopexit310
  %1770 = load i32* %49, align 4, !tbaa !2
  %1771 = icmp sgt i32 %1770, 0
  br i1 %1771, label %.preheader202.lr.ph, label %.thread67

.preheader202.lr.ph:                              ; preds = %.preheader307
  %1772 = load i32* %50, align 4, !tbaa !2
  %1773 = icmp sgt i32 %1772, 0
  %1774 = load i32* %51, align 4, !tbaa !2
  %1775 = icmp sgt i32 %1774, 0
  %1776 = load i32* %52, align 4, !tbaa !2
  %1777 = load i32* %53, align 4, !tbaa !2
  %1778 = load i32* %54, align 4, !tbaa !2
  %1779 = fptosi double %.066791 to i64
  %1780 = sext i32 %1774 to i64
  %1781 = sext i32 %1776 to i64
  %1782 = add i32 %1772, -1
  %1783 = sext i32 %1770 to i64
  br label %.preheader202

.preheader202:                                    ; preds = %.preheader202.lr.ph, %._crit_edge505
  %indvars.iv993 = phi i64 [ 0, %.preheader202.lr.ph ], [ %indvars.iv.next994, %._crit_edge505 ]
  br i1 %1773, label %.preheader136.lr.ph, label %._crit_edge505

.preheader136.lr.ph:                              ; preds = %.preheader202
  %1784 = xor i64 %indvars.iv993, 4294967295
  %1785 = trunc i64 %1784 to i32
  %1786 = add i32 %1778, %1785
  %1787 = mul nsw i32 %1786, %1777
  %1788 = sext i32 %1787 to i64
  br label %.preheader136

.preheader136:                                    ; preds = %._crit_edge503, %.preheader136.lr.ph
  %indvars.iv989 = phi i64 [ 0, %.preheader136.lr.ph ], [ %indvars.iv.next990, %._crit_edge503 ]
  br i1 %1775, label %.lr.ph502, label %._crit_edge503

.lr.ph502:                                        ; preds = %.preheader136
  %1789 = add nsw i64 %1788, %indvars.iv989
  %1790 = mul nsw i64 %1789, %1781
  %1791 = load i8**** %55, align 8, !tbaa !15
  %1792 = getelementptr inbounds i8*** %1791, i64 %indvars.iv1201
  %1793 = bitcast i8*** %1792 to i64***
  %1794 = load i64*** %1793, align 8, !tbaa !9
  %1795 = load i64** %1794, align 8, !tbaa !9
  br label %1796

; <label>:1796                                    ; preds = %.lr.ph502, %1796
  %indvars.iv987 = phi i64 [ 0, %.lr.ph502 ], [ %indvars.iv.next988, %1796 ]
  %1797 = add nsw i64 %1790, %indvars.iv987
  %1798 = getelementptr inbounds i64* %1795, i64 %1797
  store i64 %1779, i64* %1798, align 8, !tbaa !23
  %indvars.iv.next988 = add nuw nsw i64 %indvars.iv987, 1
  %1799 = icmp slt i64 %indvars.iv.next988, %1780
  br i1 %1799, label %1796, label %._crit_edge503

._crit_edge503:                                   ; preds = %1796, %.preheader136
  %indvars.iv.next990 = add nuw nsw i64 %indvars.iv989, 1
  %lftr.wideiv991 = trunc i64 %indvars.iv989 to i32
  %exitcond992 = icmp eq i32 %lftr.wideiv991, %1782
  br i1 %exitcond992, label %._crit_edge505, label %.preheader136

._crit_edge505:                                   ; preds = %._crit_edge503, %.preheader202
  %indvars.iv.next994 = add nuw nsw i64 %indvars.iv993, 1
  %1800 = icmp slt i64 %indvars.iv.next994, %1783
  br i1 %1800, label %.preheader202, label %.thread67

; <label>:1801                                    ; preds = %._crit_edge
  br i1 %41, label %1802, label %.thread67

; <label>:1802                                    ; preds = %1801
  %1803 = bitcast [6 x i32]* %doBC to i64*
  %1804 = load i64* %1803, align 16
  %1805 = trunc i64 %1804 to i32
  %1806 = icmp eq i32 %1805, 0
  br i1 %1806, label %.loopexit330, label %.preheader329

.preheader329:                                    ; preds = %1802
  %1807 = load i32* %54, align 4, !tbaa !2
  %1808 = icmp sgt i32 %1807, 0
  br i1 %1808, label %.preheader213.lr.ph, label %.loopexit330

.preheader213.lr.ph:                              ; preds = %.preheader329
  %1809 = load i32* %50, align 4, !tbaa !2
  %1810 = icmp sgt i32 %1809, 0
  %1811 = load i32* %57, align 4, !tbaa !2
  %1812 = icmp sgt i32 %1811, 0
  %1813 = load i32* %52, align 4, !tbaa !2
  %1814 = load i32* %53, align 4, !tbaa !2
  %1815 = fptrunc double %.066791 to float
  %1816 = add i32 %1811, -1
  %1817 = sext i32 %1813 to i64
  %1818 = add i32 %1809, -1
  %1819 = sext i32 %1814 to i64
  %1820 = sext i32 %1807 to i64
  br label %.preheader213

.preheader213:                                    ; preds = %.preheader213.lr.ph, %._crit_edge439
  %indvars.iv909 = phi i64 [ 0, %.preheader213.lr.ph ], [ %indvars.iv.next910, %._crit_edge439 ]
  br i1 %1810, label %.preheader147.lr.ph, label %._crit_edge439

.preheader147.lr.ph:                              ; preds = %.preheader213
  %1821 = mul nsw i64 %1819, %indvars.iv909
  br label %.preheader147

.preheader147:                                    ; preds = %._crit_edge437, %.preheader147.lr.ph
  %indvars.iv905 = phi i64 [ 0, %.preheader147.lr.ph ], [ %indvars.iv.next906, %._crit_edge437 ]
  br i1 %1812, label %.lr.ph436, label %._crit_edge437

.lr.ph436:                                        ; preds = %.preheader147
  %1822 = add nsw i64 %1821, %indvars.iv905
  %1823 = mul nsw i64 %1822, %1817
  %1824 = load i8**** %55, align 8, !tbaa !15
  %1825 = getelementptr inbounds i8*** %1824, i64 %indvars.iv1201
  %1826 = bitcast i8*** %1825 to float***
  %1827 = load float*** %1826, align 8, !tbaa !9
  %1828 = load float** %1827, align 8, !tbaa !9
  br label %1829

; <label>:1829                                    ; preds = %1829, %.lr.ph436
  %indvars.iv901 = phi i64 [ 0, %.lr.ph436 ], [ %indvars.iv.next902, %1829 ]
  %1830 = add nsw i64 %1823, %indvars.iv901
  %1831 = getelementptr inbounds float* %1828, i64 %1830
  store float %1815, float* %1831, align 4, !tbaa !25
  %indvars.iv.next902 = add nuw nsw i64 %indvars.iv901, 1
  %lftr.wideiv903 = trunc i64 %indvars.iv901 to i32
  %exitcond904 = icmp eq i32 %lftr.wideiv903, %1816
  br i1 %exitcond904, label %._crit_edge437, label %1829

._crit_edge437:                                   ; preds = %1829, %.preheader147
  %indvars.iv.next906 = add nuw nsw i64 %indvars.iv905, 1
  %lftr.wideiv907 = trunc i64 %indvars.iv905 to i32
  %exitcond908 = icmp eq i32 %lftr.wideiv907, %1818
  br i1 %exitcond908, label %._crit_edge439, label %.preheader147

._crit_edge439:                                   ; preds = %._crit_edge437, %.preheader213
  %indvars.iv.next910 = add nuw nsw i64 %indvars.iv909, 1
  %1832 = icmp slt i64 %indvars.iv.next910, %1820
  br i1 %1832, label %.preheader213, label %.loopexit330

.loopexit330:                                     ; preds = %._crit_edge439, %.preheader329, %1802
  %1833 = icmp ult i64 %1804, 4294967296
  br i1 %1833, label %.loopexit328, label %.preheader327

.preheader327:                                    ; preds = %.loopexit330
  %1834 = load i32* %54, align 4, !tbaa !2
  %1835 = icmp sgt i32 %1834, 0
  br i1 %1835, label %.preheader212.lr.ph, label %.loopexit328

.preheader212.lr.ph:                              ; preds = %.preheader327
  %1836 = load i32* %50, align 4, !tbaa !2
  %1837 = icmp sgt i32 %1836, 0
  %1838 = load i32* %57, align 4, !tbaa !2
  %1839 = icmp sgt i32 %1838, 0
  %1840 = load i32* %51, align 4, !tbaa !2
  %1841 = load i32* %52, align 4, !tbaa !2
  %1842 = load i32* %53, align 4, !tbaa !2
  %1843 = fptrunc double %.066791 to float
  %1844 = sext i32 %1838 to i64
  %1845 = add i32 %1836, -1
  br label %.preheader212

.preheader212:                                    ; preds = %.preheader212.lr.ph, %._crit_edge445
  %k.49446 = phi i32 [ 0, %.preheader212.lr.ph ], [ %1863, %._crit_edge445 ]
  br i1 %1837, label %.preheader146.lr.ph, label %._crit_edge445

.preheader146.lr.ph:                              ; preds = %.preheader212
  %1846 = mul nsw i32 %1842, %k.49446
  br label %.preheader146

.preheader146:                                    ; preds = %._crit_edge443, %.preheader146.lr.ph
  %j.49444 = phi i32 [ 0, %.preheader146.lr.ph ], [ %1862, %._crit_edge443 ]
  br i1 %1839, label %.lr.ph442, label %._crit_edge443

.lr.ph442:                                        ; preds = %.preheader146
  %1847 = add nsw i32 %1846, %j.49444
  %1848 = mul nsw i32 %1847, %1841
  %1849 = load i8**** %55, align 8, !tbaa !15
  %1850 = getelementptr inbounds i8*** %1849, i64 %indvars.iv1201
  %1851 = bitcast i8*** %1850 to float***
  %1852 = load float*** %1851, align 8, !tbaa !9
  %1853 = load float** %1852, align 8, !tbaa !9
  br label %1854

; <label>:1854                                    ; preds = %.lr.ph442, %1854
  %indvars.iv911 = phi i64 [ 0, %.lr.ph442 ], [ %indvars.iv.next912, %1854 ]
  %1855 = xor i64 %indvars.iv911, 4294967295
  %1856 = trunc i64 %1855 to i32
  %1857 = add i32 %1840, %1856
  %1858 = add i32 %1857, %1848
  %1859 = sext i32 %1858 to i64
  %1860 = getelementptr inbounds float* %1853, i64 %1859
  store float %1843, float* %1860, align 4, !tbaa !25
  %indvars.iv.next912 = add nuw nsw i64 %indvars.iv911, 1
  %1861 = icmp slt i64 %indvars.iv.next912, %1844
  br i1 %1861, label %1854, label %._crit_edge443

._crit_edge443:                                   ; preds = %1854, %.preheader146
  %1862 = add nuw nsw i32 %j.49444, 1
  %exitcond913 = icmp eq i32 %j.49444, %1845
  br i1 %exitcond913, label %._crit_edge445, label %.preheader146

._crit_edge445:                                   ; preds = %._crit_edge443, %.preheader212
  %1863 = add nuw nsw i32 %k.49446, 1
  %1864 = icmp slt i32 %1863, %1834
  br i1 %1864, label %.preheader212, label %.loopexit328

.loopexit328:                                     ; preds = %._crit_edge445, %.preheader327, %.loopexit330
  br i1 %43, label %1865, label %.thread67

; <label>:1865                                    ; preds = %.loopexit328
  %1866 = bitcast i32* %44 to i64*
  %1867 = load i64* %1866, align 8
  %1868 = trunc i64 %1867 to i32
  %1869 = icmp eq i32 %1868, 0
  br i1 %1869, label %.loopexit326, label %.preheader325

.preheader325:                                    ; preds = %1865
  %1870 = load i32* %54, align 4, !tbaa !2
  %1871 = icmp sgt i32 %1870, 0
  br i1 %1871, label %.preheader211.lr.ph, label %.loopexit326

.preheader211.lr.ph:                              ; preds = %.preheader325
  %1872 = load i32* %56, align 4, !tbaa !2
  %1873 = icmp sgt i32 %1872, 0
  %1874 = load i32* %51, align 4, !tbaa !2
  %1875 = icmp sgt i32 %1874, 0
  %1876 = load i32* %52, align 4, !tbaa !2
  %1877 = load i32* %53, align 4, !tbaa !2
  %1878 = fptrunc double %.066791 to float
  %1879 = add i32 %1874, -1
  %1880 = sext i32 %1876 to i64
  %1881 = add i32 %1872, -1
  %1882 = sext i32 %1877 to i64
  %1883 = sext i32 %1870 to i64
  br label %.preheader211

.preheader211:                                    ; preds = %.preheader211.lr.ph, %._crit_edge451
  %indvars.iv922 = phi i64 [ 0, %.preheader211.lr.ph ], [ %indvars.iv.next923, %._crit_edge451 ]
  br i1 %1873, label %.preheader145.lr.ph, label %._crit_edge451

.preheader145.lr.ph:                              ; preds = %.preheader211
  %1884 = mul nsw i64 %1882, %indvars.iv922
  br label %.preheader145

.preheader145:                                    ; preds = %._crit_edge449, %.preheader145.lr.ph
  %indvars.iv918 = phi i64 [ 0, %.preheader145.lr.ph ], [ %indvars.iv.next919, %._crit_edge449 ]
  br i1 %1875, label %.lr.ph448, label %._crit_edge449

.lr.ph448:                                        ; preds = %.preheader145
  %1885 = add nsw i64 %1884, %indvars.iv918
  %1886 = mul nsw i64 %1885, %1880
  %1887 = load i8**** %55, align 8, !tbaa !15
  %1888 = getelementptr inbounds i8*** %1887, i64 %indvars.iv1201
  %1889 = bitcast i8*** %1888 to float***
  %1890 = load float*** %1889, align 8, !tbaa !9
  %1891 = load float** %1890, align 8, !tbaa !9
  br label %1892

; <label>:1892                                    ; preds = %1892, %.lr.ph448
  %indvars.iv914 = phi i64 [ 0, %.lr.ph448 ], [ %indvars.iv.next915, %1892 ]
  %1893 = add nsw i64 %1886, %indvars.iv914
  %1894 = getelementptr inbounds float* %1891, i64 %1893
  store float %1878, float* %1894, align 4, !tbaa !25
  %indvars.iv.next915 = add nuw nsw i64 %indvars.iv914, 1
  %lftr.wideiv916 = trunc i64 %indvars.iv914 to i32
  %exitcond917 = icmp eq i32 %lftr.wideiv916, %1879
  br i1 %exitcond917, label %._crit_edge449, label %1892

._crit_edge449:                                   ; preds = %1892, %.preheader145
  %indvars.iv.next919 = add nuw nsw i64 %indvars.iv918, 1
  %lftr.wideiv920 = trunc i64 %indvars.iv918 to i32
  %exitcond921 = icmp eq i32 %lftr.wideiv920, %1881
  br i1 %exitcond921, label %._crit_edge451, label %.preheader145

._crit_edge451:                                   ; preds = %._crit_edge449, %.preheader211
  %indvars.iv.next923 = add nuw nsw i64 %indvars.iv922, 1
  %1895 = icmp slt i64 %indvars.iv.next923, %1883
  br i1 %1895, label %.preheader211, label %.loopexit326

.loopexit326:                                     ; preds = %._crit_edge451, %.preheader325, %1865
  %1896 = icmp ult i64 %1867, 4294967296
  br i1 %1896, label %.loopexit324, label %.preheader323

.preheader323:                                    ; preds = %.loopexit326
  %1897 = load i32* %54, align 4, !tbaa !2
  %1898 = icmp sgt i32 %1897, 0
  br i1 %1898, label %.preheader210.lr.ph, label %.loopexit324

.preheader210.lr.ph:                              ; preds = %.preheader323
  %1899 = load i32* %56, align 4, !tbaa !2
  %1900 = icmp sgt i32 %1899, 0
  %1901 = load i32* %51, align 4, !tbaa !2
  %1902 = icmp sgt i32 %1901, 0
  %1903 = load i32* %52, align 4, !tbaa !2
  %1904 = load i32* %50, align 4, !tbaa !2
  %1905 = load i32* %53, align 4, !tbaa !2
  %1906 = fptrunc double %.066791 to float
  %1907 = sext i32 %1901 to i64
  %1908 = add i32 %1899, -1
  br label %.preheader210

.preheader210:                                    ; preds = %.preheader210.lr.ph, %._crit_edge457
  %k.51458 = phi i32 [ 0, %.preheader210.lr.ph ], [ %1925, %._crit_edge457 ]
  br i1 %1900, label %.preheader144.lr.ph, label %._crit_edge457

.preheader144.lr.ph:                              ; preds = %.preheader210
  %1909 = mul nsw i32 %1905, %k.51458
  br label %.preheader144

.preheader144:                                    ; preds = %._crit_edge455, %.preheader144.lr.ph
  %indvars.iv926 = phi i64 [ 0, %.preheader144.lr.ph ], [ %indvars.iv.next927, %._crit_edge455 ]
  br i1 %1902, label %.lr.ph454, label %._crit_edge455

.lr.ph454:                                        ; preds = %.preheader144
  %1910 = xor i64 %indvars.iv926, 4294967295
  %1911 = trunc i64 %1910 to i32
  %1912 = add i32 %1904, %1911
  %1913 = add i32 %1912, %1909
  %1914 = mul nsw i32 %1913, %1903
  %1915 = load i8**** %55, align 8, !tbaa !15
  %1916 = getelementptr inbounds i8*** %1915, i64 %indvars.iv1201
  %1917 = bitcast i8*** %1916 to float***
  %1918 = load float*** %1917, align 8, !tbaa !9
  %1919 = load float** %1918, align 8, !tbaa !9
  %1920 = sext i32 %1914 to i64
  br label %1921

; <label>:1921                                    ; preds = %.lr.ph454, %1921
  %indvars.iv924 = phi i64 [ 0, %.lr.ph454 ], [ %indvars.iv.next925, %1921 ]
  %1922 = add nsw i64 %1920, %indvars.iv924
  %1923 = getelementptr inbounds float* %1919, i64 %1922
  store float %1906, float* %1923, align 4, !tbaa !25
  %indvars.iv.next925 = add nuw nsw i64 %indvars.iv924, 1
  %1924 = icmp slt i64 %indvars.iv.next925, %1907
  br i1 %1924, label %1921, label %._crit_edge455

._crit_edge455:                                   ; preds = %1921, %.preheader144
  %indvars.iv.next927 = add nuw nsw i64 %indvars.iv926, 1
  %lftr.wideiv928 = trunc i64 %indvars.iv926 to i32
  %exitcond929 = icmp eq i32 %lftr.wideiv928, %1908
  br i1 %exitcond929, label %._crit_edge457, label %.preheader144

._crit_edge457:                                   ; preds = %._crit_edge455, %.preheader210
  %1925 = add nuw nsw i32 %k.51458, 1
  %1926 = icmp slt i32 %1925, %1897
  br i1 %1926, label %.preheader210, label %.loopexit324

.loopexit324:                                     ; preds = %._crit_edge457, %.preheader323, %.loopexit326
  br i1 %46, label %1927, label %.thread67

; <label>:1927                                    ; preds = %.loopexit324
  %1928 = bitcast i32* %47 to i64*
  %1929 = load i64* %1928, align 16
  %1930 = trunc i64 %1929 to i32
  %1931 = icmp eq i32 %1930, 0
  br i1 %1931, label %.loopexit322, label %.preheader321

.preheader321:                                    ; preds = %1927
  %1932 = load i32* %49, align 4, !tbaa !2
  %1933 = icmp sgt i32 %1932, 0
  br i1 %1933, label %.preheader209.lr.ph, label %.loopexit322

.preheader209.lr.ph:                              ; preds = %.preheader321
  %1934 = load i32* %50, align 4, !tbaa !2
  %1935 = icmp sgt i32 %1934, 0
  %1936 = load i32* %51, align 4, !tbaa !2
  %1937 = icmp sgt i32 %1936, 0
  %1938 = load i32* %52, align 4, !tbaa !2
  %1939 = load i32* %53, align 4, !tbaa !2
  %1940 = fptrunc double %.066791 to float
  %1941 = add i32 %1936, -1
  %1942 = sext i32 %1938 to i64
  %1943 = add i32 %1934, -1
  %1944 = sext i32 %1939 to i64
  %1945 = sext i32 %1932 to i64
  br label %.preheader209

.preheader209:                                    ; preds = %.preheader209.lr.ph, %._crit_edge463
  %indvars.iv938 = phi i64 [ 0, %.preheader209.lr.ph ], [ %indvars.iv.next939, %._crit_edge463 ]
  br i1 %1935, label %.preheader143.lr.ph, label %._crit_edge463

.preheader143.lr.ph:                              ; preds = %.preheader209
  %1946 = mul nsw i64 %1944, %indvars.iv938
  br label %.preheader143

.preheader143:                                    ; preds = %._crit_edge461, %.preheader143.lr.ph
  %indvars.iv934 = phi i64 [ 0, %.preheader143.lr.ph ], [ %indvars.iv.next935, %._crit_edge461 ]
  br i1 %1937, label %.lr.ph460, label %._crit_edge461

.lr.ph460:                                        ; preds = %.preheader143
  %1947 = add nsw i64 %1946, %indvars.iv934
  %1948 = mul nsw i64 %1947, %1942
  %1949 = load i8**** %55, align 8, !tbaa !15
  %1950 = getelementptr inbounds i8*** %1949, i64 %indvars.iv1201
  %1951 = bitcast i8*** %1950 to float***
  %1952 = load float*** %1951, align 8, !tbaa !9
  %1953 = load float** %1952, align 8, !tbaa !9
  br label %1954

; <label>:1954                                    ; preds = %1954, %.lr.ph460
  %indvars.iv930 = phi i64 [ 0, %.lr.ph460 ], [ %indvars.iv.next931, %1954 ]
  %1955 = add nsw i64 %1948, %indvars.iv930
  %1956 = getelementptr inbounds float* %1953, i64 %1955
  store float %1940, float* %1956, align 4, !tbaa !25
  %indvars.iv.next931 = add nuw nsw i64 %indvars.iv930, 1
  %lftr.wideiv932 = trunc i64 %indvars.iv930 to i32
  %exitcond933 = icmp eq i32 %lftr.wideiv932, %1941
  br i1 %exitcond933, label %._crit_edge461, label %1954

._crit_edge461:                                   ; preds = %1954, %.preheader143
  %indvars.iv.next935 = add nuw nsw i64 %indvars.iv934, 1
  %lftr.wideiv936 = trunc i64 %indvars.iv934 to i32
  %exitcond937 = icmp eq i32 %lftr.wideiv936, %1943
  br i1 %exitcond937, label %._crit_edge463, label %.preheader143

._crit_edge463:                                   ; preds = %._crit_edge461, %.preheader209
  %indvars.iv.next939 = add nuw nsw i64 %indvars.iv938, 1
  %1957 = icmp slt i64 %indvars.iv.next939, %1945
  br i1 %1957, label %.preheader209, label %.loopexit322

.loopexit322:                                     ; preds = %._crit_edge463, %.preheader321, %1927
  %1958 = icmp ult i64 %1929, 4294967296
  br i1 %1958, label %.thread67, label %.preheader319

.preheader319:                                    ; preds = %.loopexit322
  %1959 = load i32* %49, align 4, !tbaa !2
  %1960 = icmp sgt i32 %1959, 0
  br i1 %1960, label %.preheader208.lr.ph, label %.thread67

.preheader208.lr.ph:                              ; preds = %.preheader319
  %1961 = load i32* %50, align 4, !tbaa !2
  %1962 = icmp sgt i32 %1961, 0
  %1963 = load i32* %51, align 4, !tbaa !2
  %1964 = icmp sgt i32 %1963, 0
  %1965 = load i32* %52, align 4, !tbaa !2
  %1966 = load i32* %53, align 4, !tbaa !2
  %1967 = load i32* %54, align 4, !tbaa !2
  %1968 = fptrunc double %.066791 to float
  %1969 = sext i32 %1963 to i64
  %1970 = sext i32 %1965 to i64
  %1971 = add i32 %1961, -1
  %1972 = sext i32 %1959 to i64
  br label %.preheader208

.preheader208:                                    ; preds = %.preheader208.lr.ph, %._crit_edge469
  %indvars.iv946 = phi i64 [ 0, %.preheader208.lr.ph ], [ %indvars.iv.next947, %._crit_edge469 ]
  br i1 %1962, label %.preheader142.lr.ph, label %._crit_edge469

.preheader142.lr.ph:                              ; preds = %.preheader208
  %1973 = xor i64 %indvars.iv946, 4294967295
  %1974 = trunc i64 %1973 to i32
  %1975 = add i32 %1967, %1974
  %1976 = mul nsw i32 %1975, %1966
  %1977 = sext i32 %1976 to i64
  br label %.preheader142

.preheader142:                                    ; preds = %._crit_edge467, %.preheader142.lr.ph
  %indvars.iv942 = phi i64 [ 0, %.preheader142.lr.ph ], [ %indvars.iv.next943, %._crit_edge467 ]
  br i1 %1964, label %.lr.ph466, label %._crit_edge467

.lr.ph466:                                        ; preds = %.preheader142
  %1978 = add nsw i64 %1977, %indvars.iv942
  %1979 = mul nsw i64 %1978, %1970
  %1980 = load i8**** %55, align 8, !tbaa !15
  %1981 = getelementptr inbounds i8*** %1980, i64 %indvars.iv1201
  %1982 = bitcast i8*** %1981 to float***
  %1983 = load float*** %1982, align 8, !tbaa !9
  %1984 = load float** %1983, align 8, !tbaa !9
  br label %1985

; <label>:1985                                    ; preds = %.lr.ph466, %1985
  %indvars.iv940 = phi i64 [ 0, %.lr.ph466 ], [ %indvars.iv.next941, %1985 ]
  %1986 = add nsw i64 %1979, %indvars.iv940
  %1987 = getelementptr inbounds float* %1984, i64 %1986
  store float %1968, float* %1987, align 4, !tbaa !25
  %indvars.iv.next941 = add nuw nsw i64 %indvars.iv940, 1
  %1988 = icmp slt i64 %indvars.iv.next941, %1969
  br i1 %1988, label %1985, label %._crit_edge467

._crit_edge467:                                   ; preds = %1985, %.preheader142
  %indvars.iv.next943 = add nuw nsw i64 %indvars.iv942, 1
  %lftr.wideiv944 = trunc i64 %indvars.iv942 to i32
  %exitcond945 = icmp eq i32 %lftr.wideiv944, %1971
  br i1 %exitcond945, label %._crit_edge469, label %.preheader142

._crit_edge469:                                   ; preds = %._crit_edge467, %.preheader208
  %indvars.iv.next947 = add nuw nsw i64 %indvars.iv946, 1
  %1989 = icmp slt i64 %indvars.iv.next947, %1972
  br i1 %1989, label %.preheader208, label %.thread67

; <label>:1990                                    ; preds = %._crit_edge
  br i1 %41, label %1991, label %.thread67

; <label>:1991                                    ; preds = %1990
  %1992 = bitcast [6 x i32]* %doBC to i64*
  %1993 = load i64* %1992, align 16
  %1994 = trunc i64 %1993 to i32
  %1995 = icmp eq i32 %1994, 0
  br i1 %1995, label %.loopexit342, label %.preheader341

.preheader341:                                    ; preds = %1991
  %1996 = load i32* %54, align 4, !tbaa !2
  %1997 = icmp sgt i32 %1996, 0
  br i1 %1997, label %.preheader219.lr.ph, label %.loopexit342

.preheader219.lr.ph:                              ; preds = %.preheader341
  %1998 = load i32* %50, align 4, !tbaa !2
  %1999 = icmp sgt i32 %1998, 0
  %2000 = load i32* %57, align 4, !tbaa !2
  %2001 = icmp sgt i32 %2000, 0
  %2002 = load i32* %52, align 4, !tbaa !2
  %2003 = load i32* %53, align 4, !tbaa !2
  %2004 = add i32 %2000, -1
  %2005 = sext i32 %2002 to i64
  %2006 = add i32 %1998, -1
  %2007 = sext i32 %2003 to i64
  %2008 = sext i32 %1996 to i64
  br label %.preheader219

.preheader219:                                    ; preds = %.preheader219.lr.ph, %._crit_edge403
  %indvars.iv856 = phi i64 [ 0, %.preheader219.lr.ph ], [ %indvars.iv.next857, %._crit_edge403 ]
  br i1 %1999, label %.preheader153.lr.ph, label %._crit_edge403

.preheader153.lr.ph:                              ; preds = %.preheader219
  %2009 = mul nsw i64 %2007, %indvars.iv856
  br label %.preheader153

.preheader153:                                    ; preds = %._crit_edge401, %.preheader153.lr.ph
  %indvars.iv852 = phi i64 [ 0, %.preheader153.lr.ph ], [ %indvars.iv.next853, %._crit_edge401 ]
  br i1 %2001, label %.lr.ph400, label %._crit_edge401

.lr.ph400:                                        ; preds = %.preheader153
  %2010 = add nsw i64 %2009, %indvars.iv852
  %2011 = mul nsw i64 %2010, %2005
  %2012 = load i8**** %55, align 8, !tbaa !15
  %2013 = getelementptr inbounds i8*** %2012, i64 %indvars.iv1201
  %2014 = bitcast i8*** %2013 to double***
  %2015 = load double*** %2014, align 8, !tbaa !9
  %2016 = load double** %2015, align 8, !tbaa !9
  br label %2017

; <label>:2017                                    ; preds = %2017, %.lr.ph400
  %indvars.iv848 = phi i64 [ 0, %.lr.ph400 ], [ %indvars.iv.next849, %2017 ]
  %2018 = add nsw i64 %2011, %indvars.iv848
  %2019 = getelementptr inbounds double* %2016, i64 %2018
  store double %.066791, double* %2019, align 8, !tbaa !17
  %indvars.iv.next849 = add nuw nsw i64 %indvars.iv848, 1
  %lftr.wideiv850 = trunc i64 %indvars.iv848 to i32
  %exitcond851 = icmp eq i32 %lftr.wideiv850, %2004
  br i1 %exitcond851, label %._crit_edge401, label %2017

._crit_edge401:                                   ; preds = %2017, %.preheader153
  %indvars.iv.next853 = add nuw nsw i64 %indvars.iv852, 1
  %lftr.wideiv854 = trunc i64 %indvars.iv852 to i32
  %exitcond855 = icmp eq i32 %lftr.wideiv854, %2006
  br i1 %exitcond855, label %._crit_edge403, label %.preheader153

._crit_edge403:                                   ; preds = %._crit_edge401, %.preheader219
  %indvars.iv.next857 = add nuw nsw i64 %indvars.iv856, 1
  %2020 = icmp slt i64 %indvars.iv.next857, %2008
  br i1 %2020, label %.preheader219, label %.loopexit342

.loopexit342:                                     ; preds = %._crit_edge403, %.preheader341, %1991
  %2021 = icmp ult i64 %1993, 4294967296
  br i1 %2021, label %.loopexit340, label %.preheader339

.preheader339:                                    ; preds = %.loopexit342
  %2022 = load i32* %54, align 4, !tbaa !2
  %2023 = icmp sgt i32 %2022, 0
  br i1 %2023, label %.preheader218.lr.ph, label %.loopexit340

.preheader218.lr.ph:                              ; preds = %.preheader339
  %2024 = load i32* %50, align 4, !tbaa !2
  %2025 = icmp sgt i32 %2024, 0
  %2026 = load i32* %57, align 4, !tbaa !2
  %2027 = icmp sgt i32 %2026, 0
  %2028 = load i32* %51, align 4, !tbaa !2
  %2029 = load i32* %52, align 4, !tbaa !2
  %2030 = load i32* %53, align 4, !tbaa !2
  %2031 = add i32 %2026, -1
  %2032 = add i32 %2024, -1
  br label %.preheader218

.preheader218:                                    ; preds = %.preheader218.lr.ph, %._crit_edge409
  %k.55410 = phi i32 [ 0, %.preheader218.lr.ph ], [ %2049, %._crit_edge409 ]
  br i1 %2025, label %.preheader152.lr.ph, label %._crit_edge409

.preheader152.lr.ph:                              ; preds = %.preheader218
  %2033 = mul nsw i32 %2030, %k.55410
  br label %.preheader152

.preheader152:                                    ; preds = %._crit_edge407, %.preheader152.lr.ph
  %j.55408 = phi i32 [ 0, %.preheader152.lr.ph ], [ %2048, %._crit_edge407 ]
  br i1 %2027, label %.lr.ph406, label %._crit_edge407

.lr.ph406:                                        ; preds = %.preheader152
  %2034 = add nsw i32 %2033, %j.55408
  %2035 = mul nsw i32 %2034, %2029
  %2036 = load i8**** %55, align 8, !tbaa !15
  %2037 = getelementptr inbounds i8*** %2036, i64 %indvars.iv1201
  %2038 = bitcast i8*** %2037 to double***
  %2039 = load double*** %2038, align 8, !tbaa !9
  %2040 = load double** %2039, align 8, !tbaa !9
  br label %2041

; <label>:2041                                    ; preds = %2041, %.lr.ph406
  %indvars.iv858 = phi i64 [ 0, %.lr.ph406 ], [ %indvars.iv.next859, %2041 ]
  %2042 = xor i64 %indvars.iv858, 4294967295
  %2043 = trunc i64 %2042 to i32
  %2044 = add i32 %2028, %2043
  %2045 = add i32 %2044, %2035
  %2046 = sext i32 %2045 to i64
  %2047 = getelementptr inbounds double* %2040, i64 %2046
  store double %.066791, double* %2047, align 8, !tbaa !17
  %indvars.iv.next859 = add nuw nsw i64 %indvars.iv858, 1
  %lftr.wideiv860 = trunc i64 %indvars.iv858 to i32
  %exitcond861 = icmp eq i32 %lftr.wideiv860, %2031
  br i1 %exitcond861, label %._crit_edge407, label %2041

._crit_edge407:                                   ; preds = %2041, %.preheader152
  %2048 = add nuw nsw i32 %j.55408, 1
  %exitcond862 = icmp eq i32 %j.55408, %2032
  br i1 %exitcond862, label %._crit_edge409, label %.preheader152

._crit_edge409:                                   ; preds = %._crit_edge407, %.preheader218
  %2049 = add nuw nsw i32 %k.55410, 1
  %2050 = icmp slt i32 %2049, %2022
  br i1 %2050, label %.preheader218, label %.loopexit340

.loopexit340:                                     ; preds = %._crit_edge409, %.preheader339, %.loopexit342
  br i1 %43, label %2051, label %.thread67

; <label>:2051                                    ; preds = %.loopexit340
  %2052 = bitcast i32* %44 to i64*
  %2053 = load i64* %2052, align 8
  %2054 = trunc i64 %2053 to i32
  %2055 = icmp eq i32 %2054, 0
  br i1 %2055, label %.loopexit338, label %.preheader337

.preheader337:                                    ; preds = %2051
  %2056 = load i32* %54, align 4, !tbaa !2
  %2057 = icmp sgt i32 %2056, 0
  br i1 %2057, label %.preheader217.lr.ph, label %.loopexit338

.preheader217.lr.ph:                              ; preds = %.preheader337
  %2058 = load i32* %56, align 4, !tbaa !2
  %2059 = icmp sgt i32 %2058, 0
  %2060 = load i32* %51, align 4, !tbaa !2
  %2061 = icmp sgt i32 %2060, 0
  %2062 = load i32* %52, align 4, !tbaa !2
  %2063 = load i32* %53, align 4, !tbaa !2
  %2064 = add i32 %2060, -1
  %2065 = sext i32 %2062 to i64
  %2066 = add i32 %2058, -1
  %2067 = sext i32 %2063 to i64
  %2068 = sext i32 %2056 to i64
  br label %.preheader217

.preheader217:                                    ; preds = %.preheader217.lr.ph, %._crit_edge415
  %indvars.iv871 = phi i64 [ 0, %.preheader217.lr.ph ], [ %indvars.iv.next872, %._crit_edge415 ]
  br i1 %2059, label %.preheader151.lr.ph, label %._crit_edge415

.preheader151.lr.ph:                              ; preds = %.preheader217
  %2069 = mul nsw i64 %2067, %indvars.iv871
  br label %.preheader151

.preheader151:                                    ; preds = %._crit_edge413, %.preheader151.lr.ph
  %indvars.iv867 = phi i64 [ 0, %.preheader151.lr.ph ], [ %indvars.iv.next868, %._crit_edge413 ]
  br i1 %2061, label %.lr.ph412, label %._crit_edge413

.lr.ph412:                                        ; preds = %.preheader151
  %2070 = add nsw i64 %2069, %indvars.iv867
  %2071 = mul nsw i64 %2070, %2065
  %2072 = load i8**** %55, align 8, !tbaa !15
  %2073 = getelementptr inbounds i8*** %2072, i64 %indvars.iv1201
  %2074 = bitcast i8*** %2073 to double***
  %2075 = load double*** %2074, align 8, !tbaa !9
  %2076 = load double** %2075, align 8, !tbaa !9
  br label %2077

; <label>:2077                                    ; preds = %2077, %.lr.ph412
  %indvars.iv863 = phi i64 [ 0, %.lr.ph412 ], [ %indvars.iv.next864, %2077 ]
  %2078 = add nsw i64 %2071, %indvars.iv863
  %2079 = getelementptr inbounds double* %2076, i64 %2078
  store double %.066791, double* %2079, align 8, !tbaa !17
  %indvars.iv.next864 = add nuw nsw i64 %indvars.iv863, 1
  %lftr.wideiv865 = trunc i64 %indvars.iv863 to i32
  %exitcond866 = icmp eq i32 %lftr.wideiv865, %2064
  br i1 %exitcond866, label %._crit_edge413, label %2077

._crit_edge413:                                   ; preds = %2077, %.preheader151
  %indvars.iv.next868 = add nuw nsw i64 %indvars.iv867, 1
  %lftr.wideiv869 = trunc i64 %indvars.iv867 to i32
  %exitcond870 = icmp eq i32 %lftr.wideiv869, %2066
  br i1 %exitcond870, label %._crit_edge415, label %.preheader151

._crit_edge415:                                   ; preds = %._crit_edge413, %.preheader217
  %indvars.iv.next872 = add nuw nsw i64 %indvars.iv871, 1
  %2080 = icmp slt i64 %indvars.iv.next872, %2068
  br i1 %2080, label %.preheader217, label %.loopexit338

.loopexit338:                                     ; preds = %._crit_edge415, %.preheader337, %2051
  %2081 = icmp ult i64 %2053, 4294967296
  br i1 %2081, label %.loopexit336, label %.preheader335

.preheader335:                                    ; preds = %.loopexit338
  %2082 = load i32* %54, align 4, !tbaa !2
  %2083 = icmp sgt i32 %2082, 0
  br i1 %2083, label %.preheader216.lr.ph, label %.loopexit336

.preheader216.lr.ph:                              ; preds = %.preheader335
  %2084 = load i32* %56, align 4, !tbaa !2
  %2085 = icmp sgt i32 %2084, 0
  %2086 = load i32* %51, align 4, !tbaa !2
  %2087 = icmp sgt i32 %2086, 0
  %2088 = load i32* %52, align 4, !tbaa !2
  %2089 = load i32* %50, align 4, !tbaa !2
  %2090 = load i32* %53, align 4, !tbaa !2
  %2091 = add i32 %2086, -1
  %2092 = add i32 %2084, -1
  br label %.preheader216

.preheader216:                                    ; preds = %.preheader216.lr.ph, %._crit_edge421
  %k.57422 = phi i32 [ 0, %.preheader216.lr.ph ], [ %2108, %._crit_edge421 ]
  br i1 %2085, label %.preheader150.lr.ph, label %._crit_edge421

.preheader150.lr.ph:                              ; preds = %.preheader216
  %2093 = mul nsw i32 %2090, %k.57422
  br label %.preheader150

.preheader150:                                    ; preds = %._crit_edge419, %.preheader150.lr.ph
  %indvars.iv877 = phi i64 [ 0, %.preheader150.lr.ph ], [ %indvars.iv.next878, %._crit_edge419 ]
  br i1 %2087, label %.lr.ph418, label %._crit_edge419

.lr.ph418:                                        ; preds = %.preheader150
  %2094 = xor i64 %indvars.iv877, 4294967295
  %2095 = trunc i64 %2094 to i32
  %2096 = add i32 %2089, %2095
  %2097 = add i32 %2096, %2093
  %2098 = mul nsw i32 %2097, %2088
  %2099 = load i8**** %55, align 8, !tbaa !15
  %2100 = getelementptr inbounds i8*** %2099, i64 %indvars.iv1201
  %2101 = bitcast i8*** %2100 to double***
  %2102 = load double*** %2101, align 8, !tbaa !9
  %2103 = load double** %2102, align 8, !tbaa !9
  %2104 = sext i32 %2098 to i64
  br label %2105

; <label>:2105                                    ; preds = %2105, %.lr.ph418
  %indvars.iv873 = phi i64 [ 0, %.lr.ph418 ], [ %indvars.iv.next874, %2105 ]
  %2106 = add nsw i64 %2104, %indvars.iv873
  %2107 = getelementptr inbounds double* %2103, i64 %2106
  store double %.066791, double* %2107, align 8, !tbaa !17
  %indvars.iv.next874 = add nuw nsw i64 %indvars.iv873, 1
  %lftr.wideiv875 = trunc i64 %indvars.iv873 to i32
  %exitcond876 = icmp eq i32 %lftr.wideiv875, %2091
  br i1 %exitcond876, label %._crit_edge419, label %2105

._crit_edge419:                                   ; preds = %2105, %.preheader150
  %indvars.iv.next878 = add nuw nsw i64 %indvars.iv877, 1
  %lftr.wideiv879 = trunc i64 %indvars.iv877 to i32
  %exitcond880 = icmp eq i32 %lftr.wideiv879, %2092
  br i1 %exitcond880, label %._crit_edge421, label %.preheader150

._crit_edge421:                                   ; preds = %._crit_edge419, %.preheader216
  %2108 = add nuw nsw i32 %k.57422, 1
  %2109 = icmp slt i32 %2108, %2082
  br i1 %2109, label %.preheader216, label %.loopexit336

.loopexit336:                                     ; preds = %._crit_edge421, %.preheader335, %.loopexit338
  br i1 %46, label %2110, label %.thread67

; <label>:2110                                    ; preds = %.loopexit336
  %2111 = bitcast i32* %47 to i64*
  %2112 = load i64* %2111, align 16
  %2113 = trunc i64 %2112 to i32
  %2114 = icmp eq i32 %2113, 0
  br i1 %2114, label %.loopexit334, label %.preheader333

.preheader333:                                    ; preds = %2110
  %2115 = load i32* %49, align 4, !tbaa !2
  %2116 = icmp sgt i32 %2115, 0
  br i1 %2116, label %.preheader215.lr.ph, label %.loopexit334

.preheader215.lr.ph:                              ; preds = %.preheader333
  %2117 = load i32* %50, align 4, !tbaa !2
  %2118 = icmp sgt i32 %2117, 0
  %2119 = load i32* %51, align 4, !tbaa !2
  %2120 = icmp sgt i32 %2119, 0
  %2121 = load i32* %52, align 4, !tbaa !2
  %2122 = load i32* %53, align 4, !tbaa !2
  %2123 = add i32 %2119, -1
  %2124 = sext i32 %2121 to i64
  %2125 = add i32 %2117, -1
  %2126 = sext i32 %2122 to i64
  %2127 = sext i32 %2115 to i64
  br label %.preheader215

.preheader215:                                    ; preds = %.preheader215.lr.ph, %._crit_edge427
  %indvars.iv889 = phi i64 [ 0, %.preheader215.lr.ph ], [ %indvars.iv.next890, %._crit_edge427 ]
  br i1 %2118, label %.preheader149.lr.ph, label %._crit_edge427

.preheader149.lr.ph:                              ; preds = %.preheader215
  %2128 = mul nsw i64 %2126, %indvars.iv889
  br label %.preheader149

.preheader149:                                    ; preds = %._crit_edge425, %.preheader149.lr.ph
  %indvars.iv885 = phi i64 [ 0, %.preheader149.lr.ph ], [ %indvars.iv.next886, %._crit_edge425 ]
  br i1 %2120, label %.lr.ph424, label %._crit_edge425

.lr.ph424:                                        ; preds = %.preheader149
  %2129 = add nsw i64 %2128, %indvars.iv885
  %2130 = mul nsw i64 %2129, %2124
  %2131 = load i8**** %55, align 8, !tbaa !15
  %2132 = getelementptr inbounds i8*** %2131, i64 %indvars.iv1201
  %2133 = bitcast i8*** %2132 to double***
  %2134 = load double*** %2133, align 8, !tbaa !9
  %2135 = load double** %2134, align 8, !tbaa !9
  br label %2136

; <label>:2136                                    ; preds = %2136, %.lr.ph424
  %indvars.iv881 = phi i64 [ 0, %.lr.ph424 ], [ %indvars.iv.next882, %2136 ]
  %2137 = add nsw i64 %2130, %indvars.iv881
  %2138 = getelementptr inbounds double* %2135, i64 %2137
  store double %.066791, double* %2138, align 8, !tbaa !17
  %indvars.iv.next882 = add nuw nsw i64 %indvars.iv881, 1
  %lftr.wideiv883 = trunc i64 %indvars.iv881 to i32
  %exitcond884 = icmp eq i32 %lftr.wideiv883, %2123
  br i1 %exitcond884, label %._crit_edge425, label %2136

._crit_edge425:                                   ; preds = %2136, %.preheader149
  %indvars.iv.next886 = add nuw nsw i64 %indvars.iv885, 1
  %lftr.wideiv887 = trunc i64 %indvars.iv885 to i32
  %exitcond888 = icmp eq i32 %lftr.wideiv887, %2125
  br i1 %exitcond888, label %._crit_edge427, label %.preheader149

._crit_edge427:                                   ; preds = %._crit_edge425, %.preheader215
  %indvars.iv.next890 = add nuw nsw i64 %indvars.iv889, 1
  %2139 = icmp slt i64 %indvars.iv.next890, %2127
  br i1 %2139, label %.preheader215, label %.loopexit334

.loopexit334:                                     ; preds = %._crit_edge427, %.preheader333, %2110
  %2140 = icmp ult i64 %2112, 4294967296
  br i1 %2140, label %.thread67, label %.preheader331

.preheader331:                                    ; preds = %.loopexit334
  %2141 = load i32* %49, align 4, !tbaa !2
  %2142 = icmp sgt i32 %2141, 0
  br i1 %2142, label %.preheader214.lr.ph, label %.thread67

.preheader214.lr.ph:                              ; preds = %.preheader331
  %2143 = load i32* %50, align 4, !tbaa !2
  %2144 = icmp sgt i32 %2143, 0
  %2145 = load i32* %51, align 4, !tbaa !2
  %2146 = icmp sgt i32 %2145, 0
  %2147 = load i32* %52, align 4, !tbaa !2
  %2148 = load i32* %53, align 4, !tbaa !2
  %2149 = load i32* %54, align 4, !tbaa !2
  %2150 = add i32 %2145, -1
  %2151 = sext i32 %2147 to i64
  %2152 = add i32 %2143, -1
  %2153 = sext i32 %2141 to i64
  br label %.preheader214

.preheader214:                                    ; preds = %.preheader214.lr.ph, %._crit_edge433
  %indvars.iv899 = phi i64 [ 0, %.preheader214.lr.ph ], [ %indvars.iv.next900, %._crit_edge433 ]
  br i1 %2144, label %.preheader148.lr.ph, label %._crit_edge433

.preheader148.lr.ph:                              ; preds = %.preheader214
  %2154 = xor i64 %indvars.iv899, 4294967295
  %2155 = trunc i64 %2154 to i32
  %2156 = add i32 %2149, %2155
  %2157 = mul nsw i32 %2156, %2148
  %2158 = sext i32 %2157 to i64
  br label %.preheader148

.preheader148:                                    ; preds = %._crit_edge431, %.preheader148.lr.ph
  %indvars.iv895 = phi i64 [ 0, %.preheader148.lr.ph ], [ %indvars.iv.next896, %._crit_edge431 ]
  br i1 %2146, label %.lr.ph430, label %._crit_edge431

.lr.ph430:                                        ; preds = %.preheader148
  %2159 = add nsw i64 %2158, %indvars.iv895
  %2160 = mul nsw i64 %2159, %2151
  %2161 = load i8**** %55, align 8, !tbaa !15
  %2162 = getelementptr inbounds i8*** %2161, i64 %indvars.iv1201
  %2163 = bitcast i8*** %2162 to double***
  %2164 = load double*** %2163, align 8, !tbaa !9
  %2165 = load double** %2164, align 8, !tbaa !9
  br label %2166

; <label>:2166                                    ; preds = %2166, %.lr.ph430
  %indvars.iv891 = phi i64 [ 0, %.lr.ph430 ], [ %indvars.iv.next892, %2166 ]
  %2167 = add nsw i64 %2160, %indvars.iv891
  %2168 = getelementptr inbounds double* %2165, i64 %2167
  store double %.066791, double* %2168, align 8, !tbaa !17
  %indvars.iv.next892 = add nuw nsw i64 %indvars.iv891, 1
  %lftr.wideiv893 = trunc i64 %indvars.iv891 to i32
  %exitcond894 = icmp eq i32 %lftr.wideiv893, %2150
  br i1 %exitcond894, label %._crit_edge431, label %2166

._crit_edge431:                                   ; preds = %2166, %.preheader148
  %indvars.iv.next896 = add nuw nsw i64 %indvars.iv895, 1
  %lftr.wideiv897 = trunc i64 %indvars.iv895 to i32
  %exitcond898 = icmp eq i32 %lftr.wideiv897, %2152
  br i1 %exitcond898, label %._crit_edge433, label %.preheader148

._crit_edge433:                                   ; preds = %._crit_edge431, %.preheader214
  %indvars.iv.next900 = add nuw nsw i64 %indvars.iv899, 1
  %2169 = icmp slt i64 %indvars.iv.next900, %2153
  br i1 %2169, label %.preheader214, label %.thread67

; <label>:2170                                    ; preds = %._crit_edge
  br i1 %41, label %2171, label %.thread67

; <label>:2171                                    ; preds = %2170
  %2172 = bitcast [6 x i32]* %doBC to i64*
  %2173 = load i64* %2172, align 16
  %2174 = trunc i64 %2173 to i32
  %2175 = icmp eq i32 %2174, 0
  br i1 %2175, label %.loopexit354, label %.preheader353

.preheader353:                                    ; preds = %2171
  %2176 = load i32* %54, align 4, !tbaa !2
  %2177 = icmp sgt i32 %2176, 0
  br i1 %2177, label %.preheader225.lr.ph, label %.loopexit354

.preheader225.lr.ph:                              ; preds = %.preheader353
  %2178 = load i32* %50, align 4, !tbaa !2
  %2179 = icmp sgt i32 %2178, 0
  %2180 = load i32* %57, align 4, !tbaa !2
  %2181 = icmp sgt i32 %2180, 0
  %2182 = load i32* %52, align 4, !tbaa !2
  %2183 = load i32* %53, align 4, !tbaa !2
  %2184 = fpext double %.066791 to x86_fp80
  %2185 = add i32 %2180, -1
  %2186 = sext i32 %2182 to i64
  %2187 = add i32 %2178, -1
  %2188 = sext i32 %2183 to i64
  %2189 = sext i32 %2176 to i64
  br label %.preheader225

.preheader225:                                    ; preds = %.preheader225.lr.ph, %._crit_edge367
  %indvars.iv809 = phi i64 [ 0, %.preheader225.lr.ph ], [ %indvars.iv.next810, %._crit_edge367 ]
  br i1 %2179, label %.preheader159.lr.ph, label %._crit_edge367

.preheader159.lr.ph:                              ; preds = %.preheader225
  %2190 = mul nsw i64 %2188, %indvars.iv809
  br label %.preheader159

.preheader159:                                    ; preds = %._crit_edge365, %.preheader159.lr.ph
  %indvars.iv805 = phi i64 [ 0, %.preheader159.lr.ph ], [ %indvars.iv.next806, %._crit_edge365 ]
  br i1 %2181, label %.lr.ph364, label %._crit_edge365

.lr.ph364:                                        ; preds = %.preheader159
  %2191 = add nsw i64 %2190, %indvars.iv805
  %2192 = mul nsw i64 %2191, %2186
  %2193 = load i8**** %55, align 8, !tbaa !15
  %2194 = getelementptr inbounds i8*** %2193, i64 %indvars.iv1201
  %2195 = bitcast i8*** %2194 to x86_fp80***
  %2196 = load x86_fp80*** %2195, align 8, !tbaa !9
  %2197 = load x86_fp80** %2196, align 8, !tbaa !9
  br label %2198

; <label>:2198                                    ; preds = %2198, %.lr.ph364
  %indvars.iv801 = phi i64 [ 0, %.lr.ph364 ], [ %indvars.iv.next802, %2198 ]
  %2199 = add nsw i64 %2192, %indvars.iv801
  %2200 = getelementptr inbounds x86_fp80* %2197, i64 %2199
  store x86_fp80 %2184, x86_fp80* %2200, align 16, !tbaa !27
  %indvars.iv.next802 = add nuw nsw i64 %indvars.iv801, 1
  %lftr.wideiv803 = trunc i64 %indvars.iv801 to i32
  %exitcond804 = icmp eq i32 %lftr.wideiv803, %2185
  br i1 %exitcond804, label %._crit_edge365, label %2198

._crit_edge365:                                   ; preds = %2198, %.preheader159
  %indvars.iv.next806 = add nuw nsw i64 %indvars.iv805, 1
  %lftr.wideiv807 = trunc i64 %indvars.iv805 to i32
  %exitcond808 = icmp eq i32 %lftr.wideiv807, %2187
  br i1 %exitcond808, label %._crit_edge367, label %.preheader159

._crit_edge367:                                   ; preds = %._crit_edge365, %.preheader225
  %indvars.iv.next810 = add nuw nsw i64 %indvars.iv809, 1
  %2201 = icmp slt i64 %indvars.iv.next810, %2189
  br i1 %2201, label %.preheader225, label %.loopexit354

.loopexit354:                                     ; preds = %._crit_edge367, %.preheader353, %2171
  %2202 = icmp ult i64 %2173, 4294967296
  br i1 %2202, label %.loopexit352, label %.preheader351

.preheader351:                                    ; preds = %.loopexit354
  %2203 = load i32* %54, align 4, !tbaa !2
  %2204 = icmp sgt i32 %2203, 0
  br i1 %2204, label %.preheader224.lr.ph, label %.loopexit352

.preheader224.lr.ph:                              ; preds = %.preheader351
  %2205 = load i32* %50, align 4, !tbaa !2
  %2206 = icmp sgt i32 %2205, 0
  %2207 = load i32* %57, align 4, !tbaa !2
  %2208 = icmp sgt i32 %2207, 0
  %2209 = load i32* %51, align 4, !tbaa !2
  %2210 = load i32* %52, align 4, !tbaa !2
  %2211 = load i32* %53, align 4, !tbaa !2
  %2212 = fpext double %.066791 to x86_fp80
  %2213 = sext i32 %2207 to i64
  %2214 = add i32 %2205, -1
  br label %.preheader224

.preheader224:                                    ; preds = %.preheader224.lr.ph, %._crit_edge373
  %k.61374 = phi i32 [ 0, %.preheader224.lr.ph ], [ %2232, %._crit_edge373 ]
  br i1 %2206, label %.preheader158.lr.ph, label %._crit_edge373

.preheader158.lr.ph:                              ; preds = %.preheader224
  %2215 = mul nsw i32 %2211, %k.61374
  br label %.preheader158

.preheader158:                                    ; preds = %._crit_edge371, %.preheader158.lr.ph
  %j.61372 = phi i32 [ 0, %.preheader158.lr.ph ], [ %2231, %._crit_edge371 ]
  br i1 %2208, label %.lr.ph370, label %._crit_edge371

.lr.ph370:                                        ; preds = %.preheader158
  %2216 = add nsw i32 %2215, %j.61372
  %2217 = mul nsw i32 %2216, %2210
  %2218 = load i8**** %55, align 8, !tbaa !15
  %2219 = getelementptr inbounds i8*** %2218, i64 %indvars.iv1201
  %2220 = bitcast i8*** %2219 to x86_fp80***
  %2221 = load x86_fp80*** %2220, align 8, !tbaa !9
  %2222 = load x86_fp80** %2221, align 8, !tbaa !9
  br label %2223

; <label>:2223                                    ; preds = %.lr.ph370, %2223
  %indvars.iv811 = phi i64 [ 0, %.lr.ph370 ], [ %indvars.iv.next812, %2223 ]
  %2224 = xor i64 %indvars.iv811, 4294967295
  %2225 = trunc i64 %2224 to i32
  %2226 = add i32 %2209, %2225
  %2227 = add i32 %2226, %2217
  %2228 = sext i32 %2227 to i64
  %2229 = getelementptr inbounds x86_fp80* %2222, i64 %2228
  store x86_fp80 %2212, x86_fp80* %2229, align 16, !tbaa !27
  %indvars.iv.next812 = add nuw nsw i64 %indvars.iv811, 1
  %2230 = icmp slt i64 %indvars.iv.next812, %2213
  br i1 %2230, label %2223, label %._crit_edge371

._crit_edge371:                                   ; preds = %2223, %.preheader158
  %2231 = add nuw nsw i32 %j.61372, 1
  %exitcond813 = icmp eq i32 %j.61372, %2214
  br i1 %exitcond813, label %._crit_edge373, label %.preheader158

._crit_edge373:                                   ; preds = %._crit_edge371, %.preheader224
  %2232 = add nuw nsw i32 %k.61374, 1
  %2233 = icmp slt i32 %2232, %2203
  br i1 %2233, label %.preheader224, label %.loopexit352

.loopexit352:                                     ; preds = %._crit_edge373, %.preheader351, %.loopexit354
  br i1 %43, label %2234, label %.thread67

; <label>:2234                                    ; preds = %.loopexit352
  %2235 = bitcast i32* %44 to i64*
  %2236 = load i64* %2235, align 8
  %2237 = trunc i64 %2236 to i32
  %2238 = icmp eq i32 %2237, 0
  br i1 %2238, label %.loopexit350, label %.preheader349

.preheader349:                                    ; preds = %2234
  %2239 = load i32* %54, align 4, !tbaa !2
  %2240 = icmp sgt i32 %2239, 0
  br i1 %2240, label %.preheader223.lr.ph, label %.loopexit350

.preheader223.lr.ph:                              ; preds = %.preheader349
  %2241 = load i32* %56, align 4, !tbaa !2
  %2242 = icmp sgt i32 %2241, 0
  %2243 = load i32* %51, align 4, !tbaa !2
  %2244 = icmp sgt i32 %2243, 0
  %2245 = load i32* %52, align 4, !tbaa !2
  %2246 = load i32* %53, align 4, !tbaa !2
  %2247 = fpext double %.066791 to x86_fp80
  %2248 = add i32 %2243, -1
  %2249 = sext i32 %2245 to i64
  %2250 = add i32 %2241, -1
  %2251 = sext i32 %2246 to i64
  %2252 = sext i32 %2239 to i64
  br label %.preheader223

.preheader223:                                    ; preds = %.preheader223.lr.ph, %._crit_edge379
  %indvars.iv822 = phi i64 [ 0, %.preheader223.lr.ph ], [ %indvars.iv.next823, %._crit_edge379 ]
  br i1 %2242, label %.preheader157.lr.ph, label %._crit_edge379

.preheader157.lr.ph:                              ; preds = %.preheader223
  %2253 = mul nsw i64 %2251, %indvars.iv822
  br label %.preheader157

.preheader157:                                    ; preds = %._crit_edge377, %.preheader157.lr.ph
  %indvars.iv818 = phi i64 [ 0, %.preheader157.lr.ph ], [ %indvars.iv.next819, %._crit_edge377 ]
  br i1 %2244, label %.lr.ph376, label %._crit_edge377

.lr.ph376:                                        ; preds = %.preheader157
  %2254 = add nsw i64 %2253, %indvars.iv818
  %2255 = mul nsw i64 %2254, %2249
  %2256 = load i8**** %55, align 8, !tbaa !15
  %2257 = getelementptr inbounds i8*** %2256, i64 %indvars.iv1201
  %2258 = bitcast i8*** %2257 to x86_fp80***
  %2259 = load x86_fp80*** %2258, align 8, !tbaa !9
  %2260 = load x86_fp80** %2259, align 8, !tbaa !9
  br label %2261

; <label>:2261                                    ; preds = %2261, %.lr.ph376
  %indvars.iv814 = phi i64 [ 0, %.lr.ph376 ], [ %indvars.iv.next815, %2261 ]
  %2262 = add nsw i64 %2255, %indvars.iv814
  %2263 = getelementptr inbounds x86_fp80* %2260, i64 %2262
  store x86_fp80 %2247, x86_fp80* %2263, align 16, !tbaa !27
  %indvars.iv.next815 = add nuw nsw i64 %indvars.iv814, 1
  %lftr.wideiv816 = trunc i64 %indvars.iv814 to i32
  %exitcond817 = icmp eq i32 %lftr.wideiv816, %2248
  br i1 %exitcond817, label %._crit_edge377, label %2261

._crit_edge377:                                   ; preds = %2261, %.preheader157
  %indvars.iv.next819 = add nuw nsw i64 %indvars.iv818, 1
  %lftr.wideiv820 = trunc i64 %indvars.iv818 to i32
  %exitcond821 = icmp eq i32 %lftr.wideiv820, %2250
  br i1 %exitcond821, label %._crit_edge379, label %.preheader157

._crit_edge379:                                   ; preds = %._crit_edge377, %.preheader223
  %indvars.iv.next823 = add nuw nsw i64 %indvars.iv822, 1
  %2264 = icmp slt i64 %indvars.iv.next823, %2252
  br i1 %2264, label %.preheader223, label %.loopexit350

.loopexit350:                                     ; preds = %._crit_edge379, %.preheader349, %2234
  %2265 = icmp ult i64 %2236, 4294967296
  br i1 %2265, label %.loopexit348, label %.preheader347

.preheader347:                                    ; preds = %.loopexit350
  %2266 = load i32* %54, align 4, !tbaa !2
  %2267 = icmp sgt i32 %2266, 0
  br i1 %2267, label %.preheader222.lr.ph, label %.loopexit348

.preheader222.lr.ph:                              ; preds = %.preheader347
  %2268 = load i32* %56, align 4, !tbaa !2
  %2269 = icmp sgt i32 %2268, 0
  %2270 = load i32* %51, align 4, !tbaa !2
  %2271 = icmp sgt i32 %2270, 0
  %2272 = load i32* %52, align 4, !tbaa !2
  %2273 = load i32* %50, align 4, !tbaa !2
  %2274 = load i32* %53, align 4, !tbaa !2
  %2275 = fpext double %.066791 to x86_fp80
  %2276 = sext i32 %2270 to i64
  %2277 = add i32 %2268, -1
  br label %.preheader222

.preheader222:                                    ; preds = %.preheader222.lr.ph, %._crit_edge385
  %k.63386 = phi i32 [ 0, %.preheader222.lr.ph ], [ %2294, %._crit_edge385 ]
  br i1 %2269, label %.preheader156.lr.ph, label %._crit_edge385

.preheader156.lr.ph:                              ; preds = %.preheader222
  %2278 = mul nsw i32 %2274, %k.63386
  br label %.preheader156

.preheader156:                                    ; preds = %._crit_edge383, %.preheader156.lr.ph
  %indvars.iv826 = phi i64 [ 0, %.preheader156.lr.ph ], [ %indvars.iv.next827, %._crit_edge383 ]
  br i1 %2271, label %.lr.ph382, label %._crit_edge383

.lr.ph382:                                        ; preds = %.preheader156
  %2279 = xor i64 %indvars.iv826, 4294967295
  %2280 = trunc i64 %2279 to i32
  %2281 = add i32 %2273, %2280
  %2282 = add i32 %2281, %2278
  %2283 = mul nsw i32 %2282, %2272
  %2284 = load i8**** %55, align 8, !tbaa !15
  %2285 = getelementptr inbounds i8*** %2284, i64 %indvars.iv1201
  %2286 = bitcast i8*** %2285 to x86_fp80***
  %2287 = load x86_fp80*** %2286, align 8, !tbaa !9
  %2288 = load x86_fp80** %2287, align 8, !tbaa !9
  %2289 = sext i32 %2283 to i64
  br label %2290

; <label>:2290                                    ; preds = %.lr.ph382, %2290
  %indvars.iv824 = phi i64 [ 0, %.lr.ph382 ], [ %indvars.iv.next825, %2290 ]
  %2291 = add nsw i64 %2289, %indvars.iv824
  %2292 = getelementptr inbounds x86_fp80* %2288, i64 %2291
  store x86_fp80 %2275, x86_fp80* %2292, align 16, !tbaa !27
  %indvars.iv.next825 = add nuw nsw i64 %indvars.iv824, 1
  %2293 = icmp slt i64 %indvars.iv.next825, %2276
  br i1 %2293, label %2290, label %._crit_edge383

._crit_edge383:                                   ; preds = %2290, %.preheader156
  %indvars.iv.next827 = add nuw nsw i64 %indvars.iv826, 1
  %lftr.wideiv828 = trunc i64 %indvars.iv826 to i32
  %exitcond829 = icmp eq i32 %lftr.wideiv828, %2277
  br i1 %exitcond829, label %._crit_edge385, label %.preheader156

._crit_edge385:                                   ; preds = %._crit_edge383, %.preheader222
  %2294 = add nuw nsw i32 %k.63386, 1
  %2295 = icmp slt i32 %2294, %2266
  br i1 %2295, label %.preheader222, label %.loopexit348

.loopexit348:                                     ; preds = %._crit_edge385, %.preheader347, %.loopexit350
  br i1 %46, label %2296, label %.thread67

; <label>:2296                                    ; preds = %.loopexit348
  %2297 = bitcast i32* %47 to i64*
  %2298 = load i64* %2297, align 16
  %2299 = trunc i64 %2298 to i32
  %2300 = icmp eq i32 %2299, 0
  br i1 %2300, label %.loopexit346, label %.preheader345

.preheader345:                                    ; preds = %2296
  %2301 = load i32* %49, align 4, !tbaa !2
  %2302 = icmp sgt i32 %2301, 0
  br i1 %2302, label %.preheader221.lr.ph, label %.loopexit346

.preheader221.lr.ph:                              ; preds = %.preheader345
  %2303 = load i32* %50, align 4, !tbaa !2
  %2304 = icmp sgt i32 %2303, 0
  %2305 = load i32* %51, align 4, !tbaa !2
  %2306 = icmp sgt i32 %2305, 0
  %2307 = load i32* %52, align 4, !tbaa !2
  %2308 = load i32* %53, align 4, !tbaa !2
  %2309 = fpext double %.066791 to x86_fp80
  %2310 = add i32 %2305, -1
  %2311 = sext i32 %2307 to i64
  %2312 = add i32 %2303, -1
  %2313 = sext i32 %2308 to i64
  %2314 = sext i32 %2301 to i64
  br label %.preheader221

.preheader221:                                    ; preds = %.preheader221.lr.ph, %._crit_edge391
  %indvars.iv838 = phi i64 [ 0, %.preheader221.lr.ph ], [ %indvars.iv.next839, %._crit_edge391 ]
  br i1 %2304, label %.preheader155.lr.ph, label %._crit_edge391

.preheader155.lr.ph:                              ; preds = %.preheader221
  %2315 = mul nsw i64 %2313, %indvars.iv838
  br label %.preheader155

.preheader155:                                    ; preds = %._crit_edge389, %.preheader155.lr.ph
  %indvars.iv834 = phi i64 [ 0, %.preheader155.lr.ph ], [ %indvars.iv.next835, %._crit_edge389 ]
  br i1 %2306, label %.lr.ph388, label %._crit_edge389

.lr.ph388:                                        ; preds = %.preheader155
  %2316 = add nsw i64 %2315, %indvars.iv834
  %2317 = mul nsw i64 %2316, %2311
  %2318 = load i8**** %55, align 8, !tbaa !15
  %2319 = getelementptr inbounds i8*** %2318, i64 %indvars.iv1201
  %2320 = bitcast i8*** %2319 to x86_fp80***
  %2321 = load x86_fp80*** %2320, align 8, !tbaa !9
  %2322 = load x86_fp80** %2321, align 8, !tbaa !9
  br label %2323

; <label>:2323                                    ; preds = %2323, %.lr.ph388
  %indvars.iv830 = phi i64 [ 0, %.lr.ph388 ], [ %indvars.iv.next831, %2323 ]
  %2324 = add nsw i64 %2317, %indvars.iv830
  %2325 = getelementptr inbounds x86_fp80* %2322, i64 %2324
  store x86_fp80 %2309, x86_fp80* %2325, align 16, !tbaa !27
  %indvars.iv.next831 = add nuw nsw i64 %indvars.iv830, 1
  %lftr.wideiv832 = trunc i64 %indvars.iv830 to i32
  %exitcond833 = icmp eq i32 %lftr.wideiv832, %2310
  br i1 %exitcond833, label %._crit_edge389, label %2323

._crit_edge389:                                   ; preds = %2323, %.preheader155
  %indvars.iv.next835 = add nuw nsw i64 %indvars.iv834, 1
  %lftr.wideiv836 = trunc i64 %indvars.iv834 to i32
  %exitcond837 = icmp eq i32 %lftr.wideiv836, %2312
  br i1 %exitcond837, label %._crit_edge391, label %.preheader155

._crit_edge391:                                   ; preds = %._crit_edge389, %.preheader221
  %indvars.iv.next839 = add nuw nsw i64 %indvars.iv838, 1
  %2326 = icmp slt i64 %indvars.iv.next839, %2314
  br i1 %2326, label %.preheader221, label %.loopexit346

.loopexit346:                                     ; preds = %._crit_edge391, %.preheader345, %2296
  %2327 = icmp ult i64 %2298, 4294967296
  br i1 %2327, label %.thread67, label %.preheader343

.preheader343:                                    ; preds = %.loopexit346
  %2328 = load i32* %49, align 4, !tbaa !2
  %2329 = icmp sgt i32 %2328, 0
  br i1 %2329, label %.preheader220.lr.ph, label %.thread67

.preheader220.lr.ph:                              ; preds = %.preheader343
  %2330 = load i32* %50, align 4, !tbaa !2
  %2331 = icmp sgt i32 %2330, 0
  %2332 = load i32* %51, align 4, !tbaa !2
  %2333 = icmp sgt i32 %2332, 0
  %2334 = load i32* %52, align 4, !tbaa !2
  %2335 = load i32* %53, align 4, !tbaa !2
  %2336 = load i32* %54, align 4, !tbaa !2
  %2337 = fpext double %.066791 to x86_fp80
  %2338 = sext i32 %2332 to i64
  %2339 = sext i32 %2334 to i64
  %2340 = add i32 %2330, -1
  %2341 = sext i32 %2328 to i64
  br label %.preheader220

.preheader220:                                    ; preds = %.preheader220.lr.ph, %._crit_edge397
  %indvars.iv846 = phi i64 [ 0, %.preheader220.lr.ph ], [ %indvars.iv.next847, %._crit_edge397 ]
  br i1 %2331, label %.preheader154.lr.ph, label %._crit_edge397

.preheader154.lr.ph:                              ; preds = %.preheader220
  %2342 = xor i64 %indvars.iv846, 4294967295
  %2343 = trunc i64 %2342 to i32
  %2344 = add i32 %2336, %2343
  %2345 = mul nsw i32 %2344, %2335
  %2346 = sext i32 %2345 to i64
  br label %.preheader154

.preheader154:                                    ; preds = %._crit_edge395, %.preheader154.lr.ph
  %indvars.iv842 = phi i64 [ 0, %.preheader154.lr.ph ], [ %indvars.iv.next843, %._crit_edge395 ]
  br i1 %2333, label %.lr.ph394, label %._crit_edge395

.lr.ph394:                                        ; preds = %.preheader154
  %2347 = add nsw i64 %2346, %indvars.iv842
  %2348 = mul nsw i64 %2347, %2339
  %2349 = load i8**** %55, align 8, !tbaa !15
  %2350 = getelementptr inbounds i8*** %2349, i64 %indvars.iv1201
  %2351 = bitcast i8*** %2350 to x86_fp80***
  %2352 = load x86_fp80*** %2351, align 8, !tbaa !9
  %2353 = load x86_fp80** %2352, align 8, !tbaa !9
  br label %2354

; <label>:2354                                    ; preds = %.lr.ph394, %2354
  %indvars.iv840 = phi i64 [ 0, %.lr.ph394 ], [ %indvars.iv.next841, %2354 ]
  %2355 = add nsw i64 %2348, %indvars.iv840
  %2356 = getelementptr inbounds x86_fp80* %2353, i64 %2355
  store x86_fp80 %2337, x86_fp80* %2356, align 16, !tbaa !27
  %indvars.iv.next841 = add nuw nsw i64 %indvars.iv840, 1
  %2357 = icmp slt i64 %indvars.iv.next841, %2338
  br i1 %2357, label %2354, label %._crit_edge395

._crit_edge395:                                   ; preds = %2354, %.preheader154
  %indvars.iv.next843 = add nuw nsw i64 %indvars.iv842, 1
  %lftr.wideiv844 = trunc i64 %indvars.iv842 to i32
  %exitcond845 = icmp eq i32 %lftr.wideiv844, %2340
  br i1 %exitcond845, label %._crit_edge397, label %.preheader154

._crit_edge397:                                   ; preds = %._crit_edge395, %.preheader220
  %indvars.iv.next847 = add nuw nsw i64 %indvars.iv846, 1
  %2358 = icmp slt i64 %indvars.iv.next847, %2341
  br i1 %2358, label %.preheader220, label %.thread67

; <label>:2359                                    ; preds = %._crit_edge
  %2360 = call i32 @CCTK_VarTypeI(i32 %139) #5
  %2361 = call i8* @CCTK_VarName(i32 %139) #5
  %2362 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 1039, i8* getelementptr inbounds ([85 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([47 x i8]* @.str15, i64 0, i64 0), i32 %2360, i8* %2361) #5
  br label %.loopexit357

.thread67:                                        ; preds = %._crit_edge397, %._crit_edge433, %._crit_edge469, %._crit_edge505, %1607, %._crit_edge587, %._crit_edge659, %._crit_edge695, %633, %381, %818, %.preheader343, %.preheader331, %.preheader319, %.preheader307, %.preheader295, %.preheader283, %.preheader260, %.preheader248, %.preheader236, %.preheader226, %2170, %.loopexit352, %1990, %.loopexit340, %1801, %.loopexit328, %1612, %.loopexit316, %1368, %.loopexit304, %1179, %.loopexit292, %638, %.loopexit257, %386, %.loopexit245, %141, %.loopexit233, %346, %596, %.loopexit251, %.loopexit263, %.loopexit286, %.loopexit298, %.loopexit310, %.loopexit322, %.loopexit334, %.loopexit346, %.loopexit229, %.loopexit241, %.loopexit253, %.loopexit265, %.loopexit288, %.loopexit300, %.loopexit312, %.loopexit324, %.loopexit336, %.loopexit348
  %.1 = phi double [ %.066791, %.loopexit346 ], [ %.066791, %.loopexit348 ], [ %.066791, %.loopexit334 ], [ %.066791, %.loopexit336 ], [ %.066791, %.loopexit322 ], [ %.066791, %.loopexit324 ], [ %.066791, %.loopexit310 ], [ %.066791, %.loopexit312 ], [ %.066791, %.loopexit298 ], [ %.066791, %.loopexit300 ], [ %.066791, %.loopexit286 ], [ %.066791, %.loopexit288 ], [ 0.000000e+00, %.loopexit263 ], [ 0.000000e+00, %.loopexit265 ], [ %.066791, %.loopexit251 ], [ %.066791, %.loopexit253 ], [ %.066791, %596 ], [ %.066791, %.loopexit241 ], [ %.066791, %346 ], [ %.066791, %.loopexit229 ], [ %.066791, %.loopexit233 ], [ %.066791, %141 ], [ %.066791, %.loopexit245 ], [ %.066791, %386 ], [ %.066791, %.loopexit257 ], [ %.066791, %638 ], [ %.066791, %.loopexit292 ], [ %.066791, %1179 ], [ %.066791, %.loopexit304 ], [ %.066791, %1368 ], [ %.066791, %.loopexit316 ], [ %.066791, %1612 ], [ %.066791, %.loopexit328 ], [ %.066791, %1801 ], [ %.066791, %.loopexit340 ], [ %.066791, %1990 ], [ %.066791, %.loopexit352 ], [ %.066791, %2170 ], [ %.066791, %.preheader226 ], [ %.066791, %.preheader236 ], [ %.066791, %.preheader248 ], [ 0.000000e+00, %.preheader260 ], [ %.066791, %.preheader283 ], [ %.066791, %.preheader295 ], [ %.066791, %.preheader307 ], [ %.066791, %.preheader319 ], [ %.066791, %.preheader331 ], [ %.066791, %.preheader343 ], [ 0.000000e+00, %818 ], [ %.066791, %381 ], [ %.066791, %633 ], [ %.066791, %._crit_edge695 ], [ 0.000000e+00, %._crit_edge659 ], [ %.066791, %._crit_edge587 ], [ %.066791, %1607 ], [ %.066791, %._crit_edge505 ], [ %.066791, %._crit_edge469 ], [ %.066791, %._crit_edge433 ], [ %.066791, %._crit_edge397 ]
  %2363 = add nsw i32 %var.0789, 1
  %2364 = icmp slt i32 %2363, %37
  %indvars.iv.next1202 = add nsw i64 %indvars.iv1201, 1
  br i1 %2364, label %67, label %.loopexit357

.loopexit357:                                     ; preds = %.thread67, %33, %2359, %31, %9, %3
  %.0 = phi i32 [ -1, %3 ], [ -2, %9 ], [ -4, %2359 ], [ -3, %31 ], [ 0, %33 ], [ 0, %.thread67 ]
  ret i32 %.0
}

; Function Attrs: optsize
declare i32 @CCTK_VWarn(i32, i32, i8*, i8*, i8*, ...) #2

; Function Attrs: nounwind optsize ssp uwtable
define void @bndscalardirvi_(i32* nocapture %ierr, %struct.cGH* %GH, i32* nocapture readonly %stencil_size, i32* nocapture readonly %dir, double* nocapture readonly %scalar, i32* nocapture readonly %vi) #1 {
  %1 = load i32* %stencil_size, align 4, !tbaa !2
  %2 = load i32* %dir, align 4, !tbaa !2
  %3 = load double* %scalar, align 8, !tbaa !17
  %4 = load i32* %vi, align 4, !tbaa !2
  %5 = tail call i32 @BndScalarDirVI(%struct.cGH* %GH, i32 %1, i32 %2, double %3, i32 %4) #6
  store i32 %5, i32* %ierr, align 4, !tbaa !2
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @BndScalarVI(%struct.cGH* %GH, i32* %stencil, double %scalar, i32 %vi) #1 {
  %1 = icmp sgt i32 %vi, -1
  br i1 %1, label %2, label %7

; <label>:2                                       ; preds = %0
  %3 = tail call i32 @CCTK_NumVars() #5
  %4 = icmp sgt i32 %3, %vi
  br i1 %4, label %5, label %7

; <label>:5                                       ; preds = %2
  %6 = tail call fastcc i32 @ApplyBndScalar(%struct.cGH* %GH, i32 -1, i32* %stencil, i32 0, double %scalar, i32 %vi, i32 1) #6
  br label %9

; <label>:7                                       ; preds = %2, %0
  %8 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 2, i32 231, i8* getelementptr inbounds ([85 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([44 x i8]* @.str3, i64 0, i64 0), i32 %vi) #5
  br label %9

; <label>:9                                       ; preds = %7, %5
  %retval.0 = phi i32 [ %6, %5 ], [ -1, %7 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize ssp uwtable
define void @bndscalarvi_(i32* nocapture %ierr, %struct.cGH* %GH, i32* %stencil, double* nocapture readonly %scalar, i32* nocapture readonly %vi) #1 {
  %1 = load double* %scalar, align 8, !tbaa !17
  %2 = load i32* %vi, align 4, !tbaa !2
  %3 = tail call i32 @BndScalarVI(%struct.cGH* %GH, i32* %stencil, double %1, i32 %2) #6
  store i32 %3, i32* %ierr, align 4, !tbaa !2
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @BndScalarDirGI(%struct.cGH* %GH, i32 %stencil_size, i32 %dir, double %scalar, i32 %gi) #1 {
  %1 = tail call i32 @CCTK_FirstVarIndexI(i32 %gi) #5
  %2 = icmp sgt i32 %1, -1
  br i1 %2, label %3, label %6

; <label>:3                                       ; preds = %0
  %4 = tail call i32 @CCTK_NumVarsInGroupI(i32 %gi) #5
  %5 = tail call fastcc i32 @ApplyBndScalar(%struct.cGH* %GH, i32 %stencil_size, i32* null, i32 %dir, double %scalar, i32 %1, i32 %4) #6
  br label %8

; <label>:6                                       ; preds = %0
  %7 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 2, i32 311, i8* getelementptr inbounds ([85 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([41 x i8]* @.str4, i64 0, i64 0), i32 %gi) #5
  br label %8

; <label>:8                                       ; preds = %6, %3
  %retval.0 = phi i32 [ %5, %3 ], [ -1, %6 ]
  ret i32 %retval.0
}

; Function Attrs: optsize
declare i32 @CCTK_FirstVarIndexI(i32) #2

; Function Attrs: optsize
declare i32 @CCTK_NumVarsInGroupI(i32) #2

; Function Attrs: nounwind optsize ssp uwtable
define void @bndscalardirgi_(i32* nocapture %ierr, %struct.cGH* %GH, i32* nocapture readonly %stencil_size, i32* nocapture readonly %dir, double* nocapture readonly %scalar, i32* nocapture readonly %gi) #1 {
  %1 = load i32* %stencil_size, align 4, !tbaa !2
  %2 = load i32* %dir, align 4, !tbaa !2
  %3 = load double* %scalar, align 8, !tbaa !17
  %4 = load i32* %gi, align 4, !tbaa !2
  %5 = tail call i32 @BndScalarDirGI(%struct.cGH* %GH, i32 %1, i32 %2, double %3, i32 %4) #6
  store i32 %5, i32* %ierr, align 4, !tbaa !2
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @BndScalarGI(%struct.cGH* %GH, i32* %stencil, double %scalar, i32 %gi) #1 {
  %1 = tail call i32 @CCTK_FirstVarIndexI(i32 %gi) #5
  %2 = icmp sgt i32 %1, -1
  br i1 %2, label %3, label %6

; <label>:3                                       ; preds = %0
  %4 = tail call i32 @CCTK_NumVarsInGroupI(i32 %gi) #5
  %5 = tail call fastcc i32 @ApplyBndScalar(%struct.cGH* %GH, i32 -1, i32* %stencil, i32 0, double %scalar, i32 %1, i32 %4) #6
  br label %8

; <label>:6                                       ; preds = %0
  %7 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 2, i32 383, i8* getelementptr inbounds ([85 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([38 x i8]* @.str5, i64 0, i64 0), i32 %gi) #5
  br label %8

; <label>:8                                       ; preds = %6, %3
  %retval.0 = phi i32 [ %5, %3 ], [ -1, %6 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize ssp uwtable
define void @bndscalargi_(i32* nocapture %ierr, %struct.cGH* %GH, i32* %stencil, double* nocapture readonly %scalar, i32* nocapture readonly %gi) #1 {
  %1 = load double* %scalar, align 8, !tbaa !17
  %2 = load i32* %gi, align 4, !tbaa !2
  %3 = tail call i32 @BndScalarGI(%struct.cGH* %GH, i32* %stencil, double %1, i32 %2) #6
  store i32 %3, i32* %ierr, align 4, !tbaa !2
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @BndScalarDirGN(%struct.cGH* %GH, i32 %stencil_size, i32 %dir, double %scalar, i8* %gname) #1 {
  %1 = tail call i32 @CCTK_GroupIndex(i8* %gname) #5
  %2 = icmp sgt i32 %1, -1
  br i1 %2, label %3, label %5

; <label>:3                                       ; preds = %0
  %4 = tail call i32 @BndScalarDirGI(%struct.cGH* %GH, i32 %stencil_size, i32 %dir, double %scalar, i32 %1) #6
  br label %7

; <label>:5                                       ; preds = %0
  %6 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 2, i32 461, i8* getelementptr inbounds ([85 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([42 x i8]* @.str6, i64 0, i64 0), i8* %gname) #5
  br label %7

; <label>:7                                       ; preds = %5, %3
  %retval.0 = phi i32 [ %4, %3 ], [ -1, %5 ]
  ret i32 %retval.0
}

; Function Attrs: optsize
declare i32 @CCTK_GroupIndex(i8*) #2

; Function Attrs: nounwind optsize ssp uwtable
define void @bndscalardirgn_(i32* nocapture %ierr, %struct.cGH* %GH, i32* nocapture readonly %stencil_size, i32* nocapture readonly %dir, double* nocapture readonly %scalar, i8* %cctk_str1, i32 %cctk_strlen1) #1 {
  %1 = tail call i8* @Util_NullTerminateString(i8* %cctk_str1, i32 %cctk_strlen1) #5
  %2 = load i32* %stencil_size, align 4, !tbaa !2
  %3 = load i32* %dir, align 4, !tbaa !2
  %4 = load double* %scalar, align 8, !tbaa !17
  %5 = tail call i32 @BndScalarDirGN(%struct.cGH* %GH, i32 %2, i32 %3, double %4, i8* %1) #6
  store i32 %5, i32* %ierr, align 4, !tbaa !2
  tail call void @free(i8* %1) #6
  ret void
}

; Function Attrs: optsize
declare i8* @Util_NullTerminateString(i8*, i32) #2

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #3

; Function Attrs: nounwind optsize ssp uwtable
define i32 @BndScalarGN(%struct.cGH* %GH, i32* %stencil, double %scalar, i8* %gname) #1 {
  %1 = tail call i32 @CCTK_GroupIndex(i8* %gname) #5
  %2 = icmp sgt i32 %1, -1
  br i1 %2, label %3, label %5

; <label>:3                                       ; preds = %0
  %4 = tail call i32 @BndScalarGI(%struct.cGH* %GH, i32* %stencil, double %scalar, i32 %1) #6
  br label %7

; <label>:5                                       ; preds = %0
  %6 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 2, i32 534, i8* getelementptr inbounds ([85 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8]* @.str7, i64 0, i64 0), i8* %gname) #5
  br label %7

; <label>:7                                       ; preds = %5, %3
  %retval.0 = phi i32 [ %4, %3 ], [ -1, %5 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize ssp uwtable
define void @bndscalargn_(i32* nocapture %ierr, %struct.cGH* %GH, i32* %stencil, double* nocapture readonly %scalar, i8* %cctk_str1, i32 %cctk_strlen1) #1 {
  %1 = tail call i8* @Util_NullTerminateString(i8* %cctk_str1, i32 %cctk_strlen1) #5
  %2 = load double* %scalar, align 8, !tbaa !17
  %3 = tail call i32 @BndScalarGN(%struct.cGH* %GH, i32* %stencil, double %2, i8* %1) #6
  store i32 %3, i32* %ierr, align 4, !tbaa !2
  tail call void @free(i8* %1) #6
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @BndScalarDirVN(%struct.cGH* %GH, i32 %stencil_size, i32 %dir, double %scalar, i8* %vname) #1 {
  %1 = tail call i32 @CCTK_VarIndex(i8* %vname) #5
  %2 = icmp sgt i32 %1, -1
  br i1 %2, label %3, label %5

; <label>:3                                       ; preds = %0
  %4 = tail call i32 @BndScalarDirVI(%struct.cGH* %GH, i32 %stencil_size, i32 %dir, double %scalar, i32 %1) #6
  br label %7

; <label>:5                                       ; preds = %0
  %6 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 2, i32 612, i8* getelementptr inbounds ([85 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([45 x i8]* @.str8, i64 0, i64 0), i8* %vname) #5
  br label %7

; <label>:7                                       ; preds = %5, %3
  %retval.0 = phi i32 [ %4, %3 ], [ -1, %5 ]
  ret i32 %retval.0
}

; Function Attrs: optsize
declare i32 @CCTK_VarIndex(i8*) #2

; Function Attrs: nounwind optsize ssp uwtable
define void @bndscalardirvn_(i32* nocapture %ierr, %struct.cGH* %GH, i32* nocapture readonly %stencil_size, i32* nocapture readonly %dir, double* nocapture readonly %scalar, i8* %cctk_str1, i32 %cctk_strlen1) #1 {
  %1 = tail call i8* @Util_NullTerminateString(i8* %cctk_str1, i32 %cctk_strlen1) #5
  %2 = load i32* %stencil_size, align 4, !tbaa !2
  %3 = load i32* %dir, align 4, !tbaa !2
  %4 = load double* %scalar, align 8, !tbaa !17
  %5 = tail call i32 @BndScalarDirVN(%struct.cGH* %GH, i32 %2, i32 %3, double %4, i8* %1) #6
  store i32 %5, i32* %ierr, align 4, !tbaa !2
  tail call void @free(i8* %1) #6
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @BndScalarVN(%struct.cGH* %GH, i32* %stencil, double %scalar, i8* %vname) #1 {
  %1 = tail call i32 @CCTK_VarIndex(i8* %vname) #5
  %2 = icmp sgt i32 %1, -1
  br i1 %2, label %3, label %5

; <label>:3                                       ; preds = %0
  %4 = tail call i32 @BndScalarVI(%struct.cGH* %GH, i32* %stencil, double %scalar, i32 %1) #6
  br label %7

; <label>:5                                       ; preds = %0
  %6 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 2, i32 684, i8* getelementptr inbounds ([85 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([42 x i8]* @.str9, i64 0, i64 0), i8* %vname) #5
  br label %7

; <label>:7                                       ; preds = %5, %3
  %retval.0 = phi i32 [ %4, %3 ], [ -1, %5 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize ssp uwtable
define void @bndscalarvn_(i32* nocapture %ierr, %struct.cGH* %GH, i32* %stencil, double* nocapture readonly %scalar, i8* %cctk_str1, i32 %cctk_strlen1) #1 {
  %1 = tail call i8* @Util_NullTerminateString(i8* %cctk_str1, i32 %cctk_strlen1) #5
  %2 = load double* %scalar, align 8, !tbaa !17
  %3 = tail call i32 @BndScalarVN(%struct.cGH* %GH, i32* %stencil, double %2, i8* %1) #6
  store i32 %3, i32* %ierr, align 4, !tbaa !2
  tail call void @free(i8* %1) #6
  ret void
}

; Function Attrs: optsize
declare i32 @CCTK_GroupIndexFromVarI(i32) #2

; Function Attrs: optsize
declare i32 @CCTK_GroupDimI(i32) #2

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

; Function Attrs: optsize
declare i32 @CCTK_VarTypeI(i32) #2

; Function Attrs: optsize
declare i8* @CCTK_VarName(i32) #2

declare void @memset_pattern16(i8*, i8*, i64)

attributes #0 = { nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind optsize }
attributes #6 = { optsize }

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
!16 = !{!4, !4, i64 0}
!17 = !{!12, !12, i64 0}
!18 = !{!19, !12, i64 0}
!19 = !{!"", !12, i64 0, !12, i64 8}
!20 = !{!19, !12, i64 8}
!21 = !{!22, !22, i64 0}
!22 = !{!"short", !4, i64 0}
!23 = !{!24, !24, i64 0}
!24 = !{!"long", !4, i64 0}
!25 = !{!26, !26, i64 0}
!26 = !{!"float", !4, i64 0}
!27 = !{!28, !28, i64 0}
!28 = !{!"long double", !4, i64 0}
