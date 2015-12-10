; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/Boundary/RadiationBoundary.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.anon = type { i32 }
%struct.cGH = type { i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, double, double*, double*, i32*, i32*, i32, i32*, double, i8***, i8**, %struct.cGHGroupData* }
%struct.cGHGroupData = type { i8, i8 }

@.str = private unnamed_addr constant [88 x i8] c"../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/Boundary/RadiationBoundary.c\00", align 1
@.str1 = private unnamed_addr constant [9 x i8] c"Boundary\00", align 1
@.str2 = private unnamed_addr constant [56 x i8] c"Invalid group indices %d and/or %d in BndRadiativeDirGI\00", align 1
@.str3 = private unnamed_addr constant [53 x i8] c"Invalid group indices %d and/or %d in BndRadiativeGI\00", align 1
@.str4 = private unnamed_addr constant [58 x i8] c"Invalid group names '%s' and/or '%s' in BndRadiativeDirGN\00", align 1
@.str5 = private unnamed_addr constant [55 x i8] c"Invalid group names '%s' and/or '%s' in BndRadiativeGN\00", align 1
@.str6 = private unnamed_addr constant [59 x i8] c"Invalid variable indices %d and/or %d in BndRadiativeDirVI\00", align 1
@.str7 = private unnamed_addr constant [56 x i8] c"Invalid variable indices %d and/or %d in BndRadiativeVI\00", align 1
@.str8 = private unnamed_addr constant [61 x i8] c"Invalid variable names '%s' and/or '%s' in BndRadiativeDirVN\00", align 1
@.str9 = private unnamed_addr constant [58 x i8] c"Invalid variable names '%s' and/or '%s' in BndRadiativeVN\00", align 1
@.str10 = private unnamed_addr constant [101 x i8] c"$Header: /cactus/CactusBase/Boundary/src/RadiationBoundary.c,v 1.27 2001/10/10 10:06:28 miguel Exp $\00", align 1
@boundaryrest_ = external global %struct.anon
@.str11 = private unnamed_addr constant [69 x i8] c"ApplyBndRadiative: direction %d is greater than maximum dimension %d\00", align 1
@.str12 = private unnamed_addr constant [58 x i8] c"ApplyBndRadiative: variable dimension of %d not supported\00", align 1
@.str13 = private unnamed_addr constant [63 x i8] c"ApplyBndRadiative: NULL pointer passed for stencil width array\00", align 1
@.str14 = private unnamed_addr constant [8 x i8] c"cart%dd\00", align 1
@.str15 = private unnamed_addr constant [9 x i8] c"spher%dd\00", align 1
@.str16 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str17 = private unnamed_addr constant [9 x i8] c"Symmetry\00", align 1
@.str18 = private unnamed_addr constant [47 x i8] c"Unsupported variable type %d for variable '%s'\00", align 1

; Function Attrs: nounwind optsize readnone ssp uwtable
define i8* @CCTKi_version_CactusBase_Boundary_RadiationBoundary_c() #0 {
  ret i8* getelementptr inbounds ([101 x i8]* @.str10, i64 0, i64 0)
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @BndRadiativeDirGI(%struct.cGH* %GH, i32 %stencil_size, i32 %dir, double %var0, double %speed, i32 %gi_to, i32 %gi_from) #1 {
  %1 = tail call i32 @CCTK_FirstVarIndexI(i32 %gi_to) #5
  %2 = tail call i32 @CCTK_FirstVarIndexI(i32 %gi_from) #5
  %3 = or i32 %2, %1
  %4 = icmp sgt i32 %3, -1
  br i1 %4, label %5, label %8

; <label>:5                                       ; preds = %0
  %6 = tail call i32 @CCTK_NumVarsInGroupI(i32 %gi_to) #5
  %7 = tail call fastcc i32 @ApplyBndRadiative(%struct.cGH* %GH, i32 %stencil_size, i32* null, i32 %dir, double %var0, double %speed, i32 %1, i32 %2, i32 %6) #6
  br label %10

; <label>:8                                       ; preds = %0
  %9 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 2, i32 245, i8* getelementptr inbounds ([88 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([56 x i8]* @.str2, i64 0, i64 0), i32 %gi_to, i32 %gi_from) #5
  br label %10

; <label>:10                                      ; preds = %8, %5
  %retval.0 = phi i32 [ %7, %5 ], [ -1, %8 ]
  ret i32 %retval.0
}

; Function Attrs: optsize
declare i32 @CCTK_FirstVarIndexI(i32) #2

; Function Attrs: nounwind optsize ssp uwtable
define internal fastcc i32 @ApplyBndRadiative(%struct.cGH* %GH, i32 %stencil_dir, i32* %stencil_alldirs, i32 %dir, double %var0, double %speed, i32 %first_var_to, i32 %first_var_from, i32 %num_vars) #1 {
  %coord_system_name = alloca [10 x i8], align 1
  %dxyz = alloca [3 x double], align 16
  %rho = alloca [3 x double], align 16
  %coords = alloca [4 x double*], align 16
  %doBC = alloca [6 x i32], align 16
  %stencil = alloca [3 x i32], align 4
  %offset = alloca [3 x i32], align 4
  %1 = load i32* getelementptr inbounds (%struct.anon* @boundaryrest_, i64 0, i32 0), align 4, !tbaa !2
  %ispos = icmp sgt i32 %dir, -1
  %neg = sub i32 0, %dir
  %2 = select i1 %ispos, i32 %dir, i32 %neg
  %3 = icmp sgt i32 %2, 3
  br i1 %3, label %4, label %6

; <label>:4                                       ; preds = %0
  %5 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 1377, i8* getelementptr inbounds ([88 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([69 x i8]* @.str11, i64 0, i64 0), i32 %dir, i32 3) #5
  br label %.loopexit947

; <label>:6                                       ; preds = %0
  %7 = tail call i32 @CCTK_GroupDimFromVarI(i32 %first_var_to) #5
  %8 = icmp sgt i32 %7, 3
  br i1 %8, label %9, label %11

; <label>:9                                       ; preds = %6
  %10 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 1389, i8* getelementptr inbounds ([88 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([58 x i8]* @.str12, i64 0, i64 0), i32 %7) #5
  br label %.loopexit947

; <label>:11                                      ; preds = %6
  %12 = icmp ne i32 %dir, 0
  br i1 %12, label %13, label %17

; <label>:13                                      ; preds = %11
  %14 = add nsw i32 %2, -1
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [3 x i32]* %stencil, i64 0, i64 %15
  store i32 %stencil_dir, i32* %16, align 4, !tbaa !7
  br label %27

; <label>:17                                      ; preds = %11
  %18 = icmp eq i32* %stencil_alldirs, null
  br i1 %18, label %25, label %19

; <label>:19                                      ; preds = %17
  %20 = bitcast [3 x i32]* %stencil to i8*
  %21 = bitcast i32* %stencil_alldirs to i8*
  %22 = sext i32 %7 to i64
  %23 = shl nsw i64 %22, 2
  %24 = call i8* @__memcpy_chk(i8* %20, i8* %21, i64 %23, i64 12) #5
  br label %27

; <label>:25                                      ; preds = %17
  %26 = tail call i32 @CCTK_Warn(i32 1, i32 1407, i8* getelementptr inbounds ([88 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([63 x i8]* @.str13, i64 0, i64 0)) #5
  br label %.loopexit947

; <label>:27                                      ; preds = %19, %13
  %28 = call i32 @CCTK_NumTimeLevelsFromVarI(i32 %first_var_from) #5
  %29 = icmp sgt i32 %28, 1
  %. = zext i1 %29 to i64
  %30 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 9
  %31 = load double* %30, align 8, !tbaa !8
  %32 = fmul double %31, %speed
  %33 = fmul double %32, 5.000000e-01
  %34 = fmul double %32, %var0
  %35 = getelementptr inbounds [10 x i8]* %coord_system_name, i64 0, i64 0
  %36 = call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* %35, i32 0, i64 10, i8* getelementptr inbounds ([8 x i8]* @.str14, i64 0, i64 0), i32 %7) #5
  %37 = icmp sgt i32 %7, 0
  %38 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17
  br i1 %37, label %.lr.ph2060, label %._crit_edge2061

.lr.ph2060:                                       ; preds = %27
  %39 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 10
  %40 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 13
  %41 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 3
  %42 = add i32 %7, -1
  br label %43

; <label>:43                                      ; preds = %75, %.lr.ph2060
  %indvars.iv2115 = phi i64 [ 0, %.lr.ph2060 ], [ %indvars.iv.next2116, %75 ]
  %indvars.iv.next2116 = add nuw nsw i64 %indvars.iv2115, 1
  %44 = trunc i64 %indvars.iv.next2116 to i32
  %45 = call i32 @CCTK_CoordIndex(i32 %44, i8* null, i8* %35) #5
  %46 = sext i32 %45 to i64
  %47 = load i8**** %38, align 8, !tbaa !12
  %48 = getelementptr inbounds i8*** %47, i64 %46
  %49 = bitcast i8*** %48 to i64**
  %50 = load i64** %49, align 8, !tbaa !13
  %51 = load i64* %50, align 8, !tbaa !13
  %52 = getelementptr inbounds [4 x double*]* %coords, i64 0, i64 %indvars.iv2115
  %53 = bitcast double** %52 to i64*
  store i64 %51, i64* %53, align 8, !tbaa !13
  %54 = load double** %39, align 8, !tbaa !14
  %55 = getelementptr inbounds double* %54, i64 %indvars.iv2115
  %56 = load double* %55, align 8, !tbaa !15
  %57 = load i32** %40, align 8, !tbaa !16
  %58 = getelementptr inbounds i32* %57, i64 %indvars.iv2115
  %59 = load i32* %58, align 4, !tbaa !7
  %60 = sitofp i32 %59 to double
  %61 = fdiv double %56, %60
  %62 = getelementptr inbounds [3 x double]* %dxyz, i64 0, i64 %indvars.iv2115
  store double %61, double* %62, align 8, !tbaa !15
  %63 = fdiv double %32, %61
  %64 = getelementptr inbounds [3 x double]* %rho, i64 0, i64 %indvars.iv2115
  store double %63, double* %64, align 8, !tbaa !15
  %65 = trunc i64 %indvars.iv2115 to i32
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %75, label %67

; <label>:67                                      ; preds = %43
  %68 = add nsw i64 %indvars.iv2115, -1
  %69 = getelementptr inbounds [3 x i32]* %offset, i64 0, i64 %68
  %70 = load i32* %69, align 4, !tbaa !7
  %71 = load i32** %41, align 8, !tbaa !17
  %72 = getelementptr inbounds i32* %71, i64 %68
  %73 = load i32* %72, align 4, !tbaa !7
  %74 = mul nsw i32 %73, %70
  br label %75

; <label>:75                                      ; preds = %43, %67
  %76 = phi i32 [ %74, %67 ], [ 1, %43 ]
  %77 = getelementptr inbounds [3 x i32]* %offset, i64 0, i64 %indvars.iv2115
  store i32 %76, i32* %77, align 4, !tbaa !7
  %exitcond2117 = icmp eq i32 %65, %42
  br i1 %exitcond2117, label %._crit_edge2061, label %43

._crit_edge2061:                                  ; preds = %75, %27
  %78 = call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* %35, i32 0, i64 10, i8* getelementptr inbounds ([9 x i8]* @.str15, i64 0, i64 0), i32 %7) #5
  %79 = call i32 @CCTK_CoordIndex(i32 -1, i8* getelementptr inbounds ([2 x i8]* @.str16, i64 0, i64 0), i8* %35) #5
  %80 = sext i32 %79 to i64
  %81 = load i8**** %38, align 8, !tbaa !12
  %82 = getelementptr inbounds i8*** %81, i64 %80
  %83 = bitcast i8*** %82 to i64**
  %84 = load i64** %83, align 8, !tbaa !13
  %85 = load i64* %84, align 8, !tbaa !13
  %86 = getelementptr inbounds [4 x double*]* %coords, i64 0, i64 3
  %87 = bitcast double** %86 to i64*
  store i64 %85, i64* %87, align 8, !tbaa !13
  %88 = call i8* @CCTK_GHExtension(%struct.cGH* %GH, i8* getelementptr inbounds ([9 x i8]* @.str17, i64 0, i64 0)) #5
  %89 = add nsw i32 %num_vars, %first_var_to
  %90 = icmp sgt i32 %num_vars, 0
  br i1 %90, label %.lr.ph2057, label %.loopexit947

.lr.ph2057:                                       ; preds = %._crit_edge2061
  %91 = bitcast [6 x i32]* %doBC to i8*
  %92 = icmp eq i8* %88, null
  %93 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 3
  %94 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 12
  %95 = icmp slt i32 %dir, 0
  %96 = icmp eq i32 %7, 3
  %97 = getelementptr inbounds [6 x i32]* %doBC, i64 0, i64 1
  %98 = getelementptr inbounds [6 x i32]* %doBC, i64 0, i64 2
  %99 = getelementptr inbounds [6 x i32]* %doBC, i64 0, i64 3
  %100 = getelementptr inbounds [6 x i32]* %doBC, i64 0, i64 4
  %101 = getelementptr inbounds [6 x i32]* %doBC, i64 0, i64 5
  %102 = getelementptr inbounds [3 x i32]* %stencil, i64 0, i64 2
  %103 = getelementptr inbounds [3 x i32]* %offset, i64 0, i64 2
  %104 = getelementptr inbounds [4 x double*]* %coords, i64 0, i64 2
  %105 = icmp sgt i32 %1, -1
  %106 = sitofp i32 %1 to double
  %107 = fmul double %106, 2.500000e-01
  %108 = getelementptr inbounds [3 x double]* %dxyz, i64 0, i64 0
  %109 = getelementptr inbounds [3 x double]* %rho, i64 0, i64 0
  %110 = getelementptr inbounds [3 x i32]* %stencil, i64 0, i64 1
  %111 = getelementptr inbounds [3 x i32]* %offset, i64 0, i64 1
  %112 = getelementptr inbounds [4 x double*]* %coords, i64 0, i64 1
  %113 = getelementptr inbounds [3 x i32]* %offset, i64 0, i64 0
  %114 = getelementptr inbounds [3 x i32]* %stencil, i64 0, i64 0
  %115 = getelementptr inbounds [4 x double*]* %coords, i64 0, i64 0
  %116 = fpext double %32 to x86_fp80
  %117 = fpext double %var0 to x86_fp80
  %118 = bitcast i8* %88 to i32***
  %119 = sext i32 %first_var_to to i64
  %120 = sext i32 %first_var_from to i64
  br label %121

; <label>:121                                     ; preds = %.lr.ph2057, %.loopexit873
  %indvars.iv2113 = phi i64 [ %120, %.lr.ph2057 ], [ %indvars.iv.next2114, %.loopexit873 ]
  %indvars.iv2111 = phi i64 [ %119, %.lr.ph2057 ], [ %indvars.iv.next2112, %.loopexit873 ]
  %var_to.02054 = phi i32 [ %first_var_to, %.lr.ph2057 ], [ %8983, %.loopexit873 ]
  %dtvvar0H.02051 = phi double [ %34, %.lr.ph2057 ], [ %dtvvar0H.262, %.loopexit873 ]
  call void @llvm.memset.p0i8.i64(i8* %91, i8 1, i64 24, i32 16, i1 false)
  br i1 %92, label %.preheader945, label %.preheader946

.preheader946:                                    ; preds = %121
  %122 = load i32*** %118, align 8, !tbaa !18
  %123 = getelementptr inbounds i32** %122, i64 %indvars.iv2111
  %124 = load i32** %123, align 8, !tbaa !13
  br label %126

.preheader945:                                    ; preds = %126, %121
  %125 = load i32** %93, align 8, !tbaa !17
  br label %133

; <label>:126                                     ; preds = %126, %.preheader946
  %indvars.iv = phi i64 [ 0, %.preheader946 ], [ %indvars.iv.next, %126 ]
  %127 = getelementptr inbounds i32* %124, i64 %indvars.iv
  %128 = load i32* %127, align 4, !tbaa !7
  %129 = and i32 %128, -2
  %130 = icmp eq i32 %129, -42
  %131 = zext i1 %130 to i32
  %132 = getelementptr inbounds [6 x i32]* %doBC, i64 0, i64 %indvars.iv
  store i32 %131, i32* %132, align 4, !tbaa !7
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 6
  br i1 %exitcond, label %.preheader945, label %126

; <label>:133                                     ; preds = %176, %.preheader945
  %indvars.iv2072 = phi i64 [ 0, %.preheader945 ], [ %indvars.iv.next2073, %176 ]
  %134 = getelementptr inbounds i32* %125, i64 %indvars.iv2072
  %135 = load i32* %134, align 4, !tbaa !7
  %136 = icmp sgt i32 %135, 1
  %137 = shl nsw i64 %indvars.iv2072, 1
  br i1 %136, label %139, label %._crit_edge2996

._crit_edge2996:                                  ; preds = %133
  %138 = getelementptr inbounds [6 x i32]* %doBC, i64 0, i64 %137
  store i32 0, i32* %138, align 8, !tbaa !7
  %.pre3003 = or i64 %137, 1
  br label %153

; <label>:139                                     ; preds = %133
  %140 = load i32** %94, align 8, !tbaa !20
  %141 = getelementptr inbounds i32* %140, i64 %137
  %142 = load i32* %141, align 4, !tbaa !7
  %143 = icmp ne i32 %142, 0
  %144 = zext i1 %143 to i32
  %145 = getelementptr inbounds [6 x i32]* %doBC, i64 0, i64 %137
  %146 = load i32* %145, align 8, !tbaa !7
  %147 = and i32 %146, %144
  store i32 %147, i32* %145, align 8, !tbaa !7
  %148 = or i64 %137, 1
  %149 = load i32** %94, align 8, !tbaa !20
  %150 = getelementptr inbounds i32* %149, i64 %148
  %151 = load i32* %150, align 4, !tbaa !7
  %152 = icmp ne i32 %151, 0
  br label %153

; <label>:153                                     ; preds = %._crit_edge2996, %139
  %154 = phi i32 [ 0, %._crit_edge2996 ], [ %147, %139 ]
  %155 = phi i32* [ %138, %._crit_edge2996 ], [ %145, %139 ]
  %.pre-phi3004 = phi i64 [ %.pre3003, %._crit_edge2996 ], [ %148, %139 ]
  %156 = phi i1 [ false, %._crit_edge2996 ], [ %152, %139 ]
  %157 = zext i1 %156 to i32
  %158 = getelementptr inbounds [6 x i32]* %doBC, i64 0, i64 %.pre-phi3004
  %159 = load i32* %158, align 4, !tbaa !7
  %160 = and i32 %159, %157
  store i32 %160, i32* %158, align 4, !tbaa !7
  br i1 %12, label %161, label %176

; <label>:161                                     ; preds = %153
  br i1 %95, label %162, label %168

; <label>:162                                     ; preds = %161
  %163 = add nuw nsw i64 %indvars.iv2072, 1
  %164 = trunc i64 %163 to i32
  %165 = icmp eq i32 %164, %2
  %166 = zext i1 %165 to i32
  %167 = and i32 %154, %166
  store i32 %167, i32* %155, align 8, !tbaa !7
  br label %172

; <label>:168                                     ; preds = %161
  store i32 0, i32* %155, align 8, !tbaa !7
  %169 = add nuw nsw i64 %indvars.iv2072, 1
  %170 = trunc i64 %169 to i32
  %171 = icmp eq i32 %170, %2
  br label %172

; <label>:172                                     ; preds = %162, %168
  %173 = phi i1 [ false, %162 ], [ %171, %168 ]
  %174 = zext i1 %173 to i32
  %175 = and i32 %160, %174
  store i32 %175, i32* %158, align 4, !tbaa !7
  br label %176

; <label>:176                                     ; preds = %153, %172
  %indvars.iv.next2073 = add nuw nsw i64 %indvars.iv2072, 1
  %exitcond2074 = icmp eq i64 %indvars.iv.next2073, 3
  br i1 %exitcond2074, label %177, label %133

; <label>:177                                     ; preds = %176
  %178 = trunc i64 %indvars.iv2111 to i32
  %179 = call i32 @CCTK_VarTypeI(i32 %178) #5
  switch i32 %179, label %8979 [
    i32 1, label %180
    i32 2, label %1225
    i32 6, label %2222
    i32 3, label %3151
    i32 4, label %4140
    i32 5, label %5137
    i32 7, label %6102
    i32 8, label %7067
    i32 9, label %7996
  ]

; <label>:180                                     ; preds = %177
  br i1 %96, label %183, label %181

; <label>:181                                     ; preds = %180
  %182 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 1494, i8* getelementptr inbounds ([88 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([58 x i8]* @.str12, i64 0, i64 0), i32 %7) #5
  br label %.loopexit947

; <label>:183                                     ; preds = %180
  %184 = bitcast [6 x i32]* %doBC to i64*
  %185 = load i64* %184, align 16
  %186 = trunc i64 %185 to i32
  %187 = icmp eq i32 %186, 0
  %188 = lshr i64 %185, 32
  %189 = trunc i64 %188 to i32
  br i1 %187, label %354, label %190

; <label>:190                                     ; preds = %183
  %191 = load i32** %93, align 8, !tbaa !17
  %192 = getelementptr inbounds i32* %191, i64 2
  %193 = load i32* %192, align 4, !tbaa !7
  %194 = icmp sgt i32 %193, 0
  br i1 %194, label %.lr.ph1948, label %.loopexit880

.loopexit832:                                     ; preds = %.loopexit804, %.lr.ph1948
  %dtvvar0H.2.lcssa = phi double [ %dtvvar0H.11945, %.lr.ph1948 ], [ %dtvvar0H.3.lcssa, %.loopexit804 ]
  %195 = icmp sgt i32 %_k.01946.in, 1
  br i1 %195, label %.loopexit832._crit_edge, label %.loopexit880

.loopexit832._crit_edge:                          ; preds = %.loopexit832
  %.pre2524 = load i32** %93, align 8, !tbaa !17
  br label %.lr.ph1948

.lr.ph1948:                                       ; preds = %190, %.loopexit832._crit_edge
  %196 = phi i32* [ %.pre2524, %.loopexit832._crit_edge ], [ %191, %190 ]
  %_k.01946.in = phi i32 [ %_k.01946, %.loopexit832._crit_edge ], [ %193, %190 ]
  %dtvvar0H.11945 = phi double [ %dtvvar0H.2.lcssa, %.loopexit832._crit_edge ], [ %dtvvar0H.02051, %190 ]
  %_k.01946 = add nsw i32 %_k.01946.in, -1
  %197 = getelementptr inbounds i32* %196, i64 1
  %198 = load i32* %197, align 4, !tbaa !7
  %199 = icmp sgt i32 %198, 0
  br i1 %199, label %.lr.ph1942, label %.loopexit832

.loopexit804:                                     ; preds = %302, %.lr.ph1942
  %dtvvar0H.3.lcssa = phi double [ %dtvvar0H.21939, %.lr.ph1942 ], [ %dtvvar0H.4, %302 ]
  %200 = icmp sgt i32 %_j.01940.in, 1
  br i1 %200, label %.loopexit804._crit_edge, label %.loopexit832

.loopexit804._crit_edge:                          ; preds = %.loopexit804
  %.pre2525 = load i32** %93, align 8, !tbaa !17
  %.phi.trans.insert2526 = getelementptr inbounds i32* %.pre2525, i64 1
  %.pre2527 = load i32* %.phi.trans.insert2526, align 4, !tbaa !7
  br label %.lr.ph1942

.lr.ph1942:                                       ; preds = %.lr.ph1948, %.loopexit804._crit_edge
  %201 = phi i32 [ %.pre2527, %.loopexit804._crit_edge ], [ %198, %.lr.ph1948 ]
  %202 = phi i32* [ %.pre2525, %.loopexit804._crit_edge ], [ %196, %.lr.ph1948 ]
  %_j.01940.in = phi i32 [ %_j.01940, %.loopexit804._crit_edge ], [ %198, %.lr.ph1948 ]
  %dtvvar0H.21939 = phi double [ %dtvvar0H.3.lcssa, %.loopexit804._crit_edge ], [ %dtvvar0H.11945, %.lr.ph1948 ]
  %_j.01940 = add nsw i32 %_j.01940.in, -1
  %203 = load i32* %113, align 4, !tbaa !7
  %204 = load i32* %114, align 4, !tbaa !7
  %205 = add nsw i32 %204, -1
  %206 = load i32* %202, align 4, !tbaa !7
  %207 = mul nsw i32 %201, %_k.01946
  %208 = add nsw i32 %207, %_j.01940
  %209 = mul nsw i32 %208, %206
  %210 = add nsw i32 %209, %205
  %211 = sext i32 %210 to i64
  %212 = load i8**** %38, align 8, !tbaa !12
  %213 = icmp sgt i32 %204, 0
  br i1 %213, label %.lr.ph1936, label %.loopexit804

.lr.ph1936:                                       ; preds = %.lr.ph1942
  %214 = getelementptr inbounds i8*** %212, i64 %indvars.iv2113
  %215 = load i8*** %214, align 8, !tbaa !13
  %216 = getelementptr inbounds i8** %215, i64 %.
  %217 = load i8** %216, align 8, !tbaa !13
  %218 = getelementptr inbounds i8* %217, i64 %211
  %219 = getelementptr inbounds i8*** %212, i64 %indvars.iv2111
  %220 = load i8*** %219, align 8, !tbaa !13
  %221 = load i8** %220, align 8, !tbaa !13
  %222 = getelementptr inbounds i8* %221, i64 %211
  %223 = load double** %115, align 16, !tbaa !13
  %224 = getelementptr inbounds double* %223, i64 %211
  %225 = load double** %86, align 8, !tbaa !13
  %226 = getelementptr inbounds double* %225, i64 %211
  %227 = shl nsw i32 %203, 1
  %228 = sext i32 %203 to i64
  %229 = sext i32 %227 to i64
  br label %230

; <label>:230                                     ; preds = %.lr.ph1936, %302
  %dtvvar0H.31934 = phi double [ %dtvvar0H.21939, %.lr.ph1936 ], [ %dtvvar0H.4, %302 ]
  %_i.01933 = phi i32 [ %205, %.lr.ph1936 ], [ %352, %302 ]
  %_radius.01932 = phi double* [ %226, %.lr.ph1936 ], [ %348, %302 ]
  %_xyz.01931 = phi double* [ %224, %.lr.ph1936 ], [ %349, %302 ]
  %_to.01930 = phi i8* [ %222, %.lr.ph1936 ], [ %350, %302 ]
  %_from.01929 = phi i8* [ %218, %.lr.ph1936 ], [ %351, %302 ]
  %231 = load double* %_radius.01932, align 8, !tbaa !15
  %232 = getelementptr inbounds double* %_radius.01932, i64 %228
  %233 = load double* %232, align 8, !tbaa !15
  %234 = insertelement <2 x double> undef, double %233, i32 0
  %235 = insertelement <2 x double> %234, double %231, i32 1
  %236 = fdiv <2 x double> <double 1.000000e+00, double 1.000000e+00>, %235
  br i1 %105, label %238, label %._crit_edge2528

._crit_edge2528:                                  ; preds = %230
  %.pre2529 = load double* %_xyz.01931, align 8, !tbaa !15
  %.phi.trans.insert2530 = getelementptr inbounds double* %_xyz.01931, i64 %228
  %.pre2531 = load double* %.phi.trans.insert2530, align 8, !tbaa !15
  %.phi.trans.insert2532 = getelementptr inbounds i8* %_to.01930, i64 %228
  %.pre2533 = load i8* %.phi.trans.insert2532, align 1, !tbaa !21
  %.pre2534 = load double* %109, align 16, !tbaa !15
  %.phi.trans.insert2535 = getelementptr inbounds i8* %_from.01929, i64 %228
  %.pre2536 = load i8* %.phi.trans.insert2535, align 1, !tbaa !21
  %237 = fmul <2 x double> %236, %236
  br label %302

; <label>:238                                     ; preds = %230
  %239 = load double* %108, align 16, !tbaa !15
  %240 = fmul double %107, %239
  %241 = load double* %_xyz.01931, align 8, !tbaa !15
  %242 = fmul <2 x double> %236, %236
  %243 = extractelement <2 x double> %242, i32 1
  %244 = fmul double %243, %241
  %245 = getelementptr inbounds double* %_xyz.01931, i64 %228
  %246 = load double* %245, align 8, !tbaa !15
  %247 = extractelement <2 x double> %242, i32 0
  %248 = fmul double %247, %246
  %249 = fadd double %244, %248
  %250 = fmul double %240, %249
  %251 = fadd double %250, 1.000000e+00
  %252 = fsub double 1.000000e+00, %250
  %253 = fdiv double %251, %252
  %254 = getelementptr inbounds i8* %_to.01930, i64 %228
  %255 = load i8* %254, align 1, !tbaa !21
  %256 = zext i8 %255 to i32
  %257 = getelementptr inbounds i8* %_to.01930, i64 %229
  %258 = load i8* %257, align 1, !tbaa !21
  %259 = zext i8 %258 to i32
  %260 = add nuw nsw i32 %259, %256
  %261 = getelementptr inbounds i8* %_from.01929, i64 %228
  %262 = load i8* %261, align 1, !tbaa !21
  %263 = zext i8 %262 to i32
  %264 = add nuw nsw i32 %260, %263
  %265 = getelementptr inbounds i8* %_from.01929, i64 %229
  %266 = load i8* %265, align 1, !tbaa !21
  %267 = zext i8 %266 to i32
  %268 = add nuw nsw i32 %264, %267
  %269 = sitofp i32 %268 to double
  %270 = fmul double %269, 2.500000e-01
  %271 = fsub double %270, %var0
  %272 = fmul double %32, %271
  %273 = sub nsw i32 %256, %263
  %274 = sitofp i32 %273 to double
  %275 = fmul double %233, %274
  %276 = getelementptr inbounds double* %_radius.01932, i64 %229
  %277 = load double* %276, align 8, !tbaa !15
  %278 = sub nsw i32 %259, %267
  %279 = sitofp i32 %278 to double
  %280 = fmul double %277, %279
  %281 = fadd double %275, %280
  %282 = fmul double %281, 5.000000e-01
  %283 = fadd double %272, %282
  %284 = sub nsw i32 %259, %256
  %285 = sub nsw i32 %284, %263
  %286 = add nsw i32 %285, %267
  %287 = sitofp i32 %286 to double
  %288 = fmul double %287, 2.500000e-01
  %289 = load double* %109, align 16, !tbaa !15
  %290 = fmul double %289, %288
  %291 = fmul double %233, %233
  %292 = fdiv double %291, %246
  %293 = fmul double %277, %277
  %294 = getelementptr inbounds double* %_xyz.01931, i64 %229
  %295 = load double* %294, align 8, !tbaa !15
  %296 = fdiv double %293, %295
  %297 = fadd double %292, %296
  %298 = fmul double %290, %297
  %299 = fadd double %283, %298
  %300 = fmul double %253, %299
  %301 = fadd double %34, %300
  br label %302

; <label>:302                                     ; preds = %._crit_edge2528, %238
  %303 = phi i8 [ %.pre2536, %._crit_edge2528 ], [ %262, %238 ]
  %304 = phi double [ %.pre2534, %._crit_edge2528 ], [ %289, %238 ]
  %305 = phi i8 [ %.pre2533, %._crit_edge2528 ], [ %255, %238 ]
  %306 = phi double [ %.pre2531, %._crit_edge2528 ], [ %246, %238 ]
  %307 = phi double [ %.pre2529, %._crit_edge2528 ], [ %241, %238 ]
  %dtvvar0H.4 = phi double [ %dtvvar0H.31934, %._crit_edge2528 ], [ %301, %238 ]
  %308 = phi <2 x double> [ %237, %._crit_edge2528 ], [ %242, %238 ]
  %309 = extractelement <2 x double> %308, i32 1
  %310 = fmul double %309, %307
  %311 = extractelement <2 x double> %308, i32 0
  %312 = fmul double %311, %306
  %313 = fadd double %310, %312
  %314 = fmul double %dtvvar0H.4, %313
  %315 = zext i8 %305 to i32
  %316 = sitofp i32 %315 to double
  %317 = extractelement <2 x double> %236, i32 0
  %318 = fmul double %317, %306
  %319 = fmul double %33, %317
  %320 = fadd double %319, 1.000000e+00
  %321 = fmul double %320, %318
  %322 = fadd double %304, %321
  %323 = fmul double %316, %322
  %324 = fsub double %314, %323
  %325 = load i8* %_from.01929, align 1, !tbaa !21
  %326 = zext i8 %325 to i32
  %327 = sitofp i32 %326 to double
  %328 = extractelement <2 x double> %236, i32 1
  %329 = fmul double %328, %307
  %330 = fmul double %33, %328
  %331 = fsub double 1.000000e+00, %330
  %332 = fmul double %331, %329
  %333 = fadd double %332, %304
  %334 = fmul double %333, %327
  %335 = fadd double %324, %334
  %336 = zext i8 %303 to i32
  %337 = sitofp i32 %336 to double
  %338 = fsub double 1.000000e+00, %319
  %339 = fmul double %338, %318
  %340 = fsub double %304, %339
  %341 = fmul double %340, %337
  %342 = fsub double %335, %341
  %343 = fadd double %330, 1.000000e+00
  %344 = fmul double %343, %329
  %345 = fsub double %344, %304
  %346 = fdiv double %342, %345
  %347 = fptoui double %346 to i8
  store i8 %347, i8* %_to.01930, align 1, !tbaa !21
  %348 = getelementptr inbounds double* %_radius.01932, i64 -1
  %349 = getelementptr inbounds double* %_xyz.01931, i64 -1
  %350 = getelementptr inbounds i8* %_to.01930, i64 -1
  %351 = getelementptr inbounds i8* %_from.01929, i64 -1
  %352 = add nsw i32 %_i.01933, -1
  %353 = icmp sgt i32 %_i.01933, 0
  br i1 %353, label %230, label %.loopexit804

.loopexit880:                                     ; preds = %.loopexit832, %190
  %dtvvar0H.1.lcssa = phi double [ %dtvvar0H.02051, %190 ], [ %dtvvar0H.2.lcssa, %.loopexit832 ]
  %.pre2537 = load i32* %97, align 4, !tbaa !7
  br label %354

; <label>:354                                     ; preds = %.loopexit880, %183
  %355 = phi i32 [ %189, %183 ], [ %.pre2537, %.loopexit880 ]
  %dtvvar0H.5 = phi double [ %dtvvar0H.02051, %183 ], [ %dtvvar0H.1.lcssa, %.loopexit880 ]
  %356 = icmp eq i32 %355, 0
  br i1 %356, label %.loopexit879, label %.preheader878

.preheader878:                                    ; preds = %354
  %357 = load i32** %93, align 8, !tbaa !17
  %358 = getelementptr inbounds i32* %357, i64 2
  %359 = load i32* %358, align 4, !tbaa !7
  %360 = icmp sgt i32 %359, 0
  br i1 %360, label %.preheader831, label %.loopexit879

.preheader831:                                    ; preds = %.preheader878, %._crit_edge1963
  %361 = phi i32* [ %528, %._crit_edge1963 ], [ %357, %.preheader878 ]
  %dtvvar0H.61967 = phi double [ %dtvvar0H.7.lcssa, %._crit_edge1963 ], [ %dtvvar0H.5, %.preheader878 ]
  %_k3.01965 = phi i32 [ %529, %._crit_edge1963 ], [ 0, %.preheader878 ]
  %362 = getelementptr inbounds i32* %361, i64 1
  %363 = load i32* %362, align 4, !tbaa !7
  %364 = icmp sgt i32 %363, 0
  br i1 %364, label %.lr.ph1962, label %._crit_edge1963

.lr.ph1962:                                       ; preds = %.preheader831
  %.pre2604 = load i32* %361, align 4, !tbaa !7
  br label %365

; <label>:365                                     ; preds = %.lr.ph1962, %._crit_edge1958
  %366 = phi i32 [ %.pre2604, %.lr.ph1962 ], [ %522, %._crit_edge1958 ]
  %367 = phi i32 [ %363, %.lr.ph1962 ], [ %526, %._crit_edge1958 ]
  %368 = phi i32* [ %361, %.lr.ph1962 ], [ %523, %._crit_edge1958 ]
  %dtvvar0H.71961 = phi double [ %dtvvar0H.61967, %.lr.ph1962 ], [ %dtvvar0H.8.lcssa, %._crit_edge1958 ]
  %_j2.01960 = phi i32 [ 0, %.lr.ph1962 ], [ %524, %._crit_edge1958 ]
  %369 = load i32* %113, align 4, !tbaa !7
  %370 = load i32* %114, align 4, !tbaa !7
  %371 = sub nsw i32 %366, %370
  %372 = mul nsw i32 %367, %_k3.01965
  %373 = add nsw i32 %372, %_j2.01960
  %374 = mul nsw i32 %366, %373
  %375 = add nsw i32 %371, %374
  %376 = sext i32 %375 to i64
  %377 = load i8**** %38, align 8, !tbaa !12
  %378 = icmp sgt i32 %370, 0
  br i1 %378, label %.lr.ph1957, label %._crit_edge1958

.lr.ph1957:                                       ; preds = %365
  %379 = getelementptr inbounds i8*** %377, i64 %indvars.iv2113
  %380 = load i8*** %379, align 8, !tbaa !13
  %381 = getelementptr inbounds i8** %380, i64 %.
  %382 = load i8** %381, align 8, !tbaa !13
  %383 = getelementptr inbounds i8* %382, i64 %376
  %384 = getelementptr inbounds i8*** %377, i64 %indvars.iv2111
  %385 = load i8*** %384, align 8, !tbaa !13
  %386 = load i8** %385, align 8, !tbaa !13
  %387 = getelementptr inbounds i8* %386, i64 %376
  %388 = load double** %115, align 16, !tbaa !13
  %389 = getelementptr inbounds double* %388, i64 %376
  %390 = load double** %86, align 8, !tbaa !13
  %391 = getelementptr inbounds double* %390, i64 %376
  %392 = mul nsw i32 %369, -2
  %393 = sub nsw i32 0, %369
  %394 = sext i32 %393 to i64
  %395 = sext i32 %392 to i64
  br label %396

; <label>:396                                     ; preds = %.lr.ph1957, %468
  %dtvvar0H.81955 = phi double [ %dtvvar0H.71961, %.lr.ph1957 ], [ %dtvvar0H.9, %468 ]
  %_i1.01954 = phi i32 [ %371, %.lr.ph1957 ], [ %518, %468 ]
  %_radius8.01953 = phi double* [ %391, %.lr.ph1957 ], [ %514, %468 ]
  %_xyz9.01952 = phi double* [ %389, %.lr.ph1957 ], [ %515, %468 ]
  %_to10.01951 = phi i8* [ %387, %.lr.ph1957 ], [ %516, %468 ]
  %_from11.01950 = phi i8* [ %383, %.lr.ph1957 ], [ %517, %468 ]
  %397 = load double* %_radius8.01953, align 8, !tbaa !15
  %398 = getelementptr inbounds double* %_radius8.01953, i64 %394
  %399 = load double* %398, align 8, !tbaa !15
  %400 = insertelement <2 x double> undef, double %399, i32 0
  %401 = insertelement <2 x double> %400, double %397, i32 1
  %402 = fdiv <2 x double> <double 1.000000e+00, double 1.000000e+00>, %401
  br i1 %105, label %404, label %._crit_edge2538

._crit_edge2538:                                  ; preds = %396
  %.pre2539 = load double* %_xyz9.01952, align 8, !tbaa !15
  %.phi.trans.insert2540 = getelementptr inbounds double* %_xyz9.01952, i64 %394
  %.pre2541 = load double* %.phi.trans.insert2540, align 8, !tbaa !15
  %.phi.trans.insert2542 = getelementptr inbounds i8* %_to10.01951, i64 %394
  %.pre2543 = load i8* %.phi.trans.insert2542, align 1, !tbaa !21
  %.pre2544 = load double* %109, align 16, !tbaa !15
  %.phi.trans.insert2545 = getelementptr inbounds i8* %_from11.01950, i64 %394
  %.pre2546 = load i8* %.phi.trans.insert2545, align 1, !tbaa !21
  %403 = fmul <2 x double> %402, %402
  br label %468

; <label>:404                                     ; preds = %396
  %405 = load double* %108, align 16, !tbaa !15
  %406 = fmul double %107, %405
  %407 = load double* %_xyz9.01952, align 8, !tbaa !15
  %408 = fmul <2 x double> %402, %402
  %409 = extractelement <2 x double> %408, i32 1
  %410 = fmul double %409, %407
  %411 = getelementptr inbounds double* %_xyz9.01952, i64 %394
  %412 = load double* %411, align 8, !tbaa !15
  %413 = extractelement <2 x double> %408, i32 0
  %414 = fmul double %413, %412
  %415 = fadd double %410, %414
  %416 = fmul double %406, %415
  %417 = fsub double 1.000000e+00, %416
  %418 = fadd double %416, 1.000000e+00
  %419 = fdiv double %417, %418
  %420 = getelementptr inbounds i8* %_to10.01951, i64 %394
  %421 = load i8* %420, align 1, !tbaa !21
  %422 = zext i8 %421 to i32
  %423 = getelementptr inbounds i8* %_to10.01951, i64 %395
  %424 = load i8* %423, align 1, !tbaa !21
  %425 = zext i8 %424 to i32
  %426 = add nuw nsw i32 %425, %422
  %427 = getelementptr inbounds i8* %_from11.01950, i64 %394
  %428 = load i8* %427, align 1, !tbaa !21
  %429 = zext i8 %428 to i32
  %430 = add nuw nsw i32 %426, %429
  %431 = getelementptr inbounds i8* %_from11.01950, i64 %395
  %432 = load i8* %431, align 1, !tbaa !21
  %433 = zext i8 %432 to i32
  %434 = add nuw nsw i32 %430, %433
  %435 = sitofp i32 %434 to double
  %436 = fmul double %435, 2.500000e-01
  %437 = fsub double %436, %var0
  %438 = fmul double %32, %437
  %439 = sub nsw i32 %422, %429
  %440 = sitofp i32 %439 to double
  %441 = fmul double %399, %440
  %442 = getelementptr inbounds double* %_radius8.01953, i64 %395
  %443 = load double* %442, align 8, !tbaa !15
  %444 = sub nsw i32 %425, %433
  %445 = sitofp i32 %444 to double
  %446 = fmul double %443, %445
  %447 = fadd double %441, %446
  %448 = fmul double %447, 5.000000e-01
  %449 = fadd double %438, %448
  %450 = sub nsw i32 %422, %425
  %451 = add nsw i32 %450, %429
  %452 = sub nsw i32 %451, %433
  %453 = sitofp i32 %452 to double
  %454 = fmul double %453, 2.500000e-01
  %455 = load double* %109, align 16, !tbaa !15
  %456 = fmul double %455, %454
  %457 = fmul double %399, %399
  %458 = fdiv double %457, %412
  %459 = fmul double %443, %443
  %460 = getelementptr inbounds double* %_xyz9.01952, i64 %395
  %461 = load double* %460, align 8, !tbaa !15
  %462 = fdiv double %459, %461
  %463 = fadd double %458, %462
  %464 = fmul double %456, %463
  %465 = fadd double %449, %464
  %466 = fmul double %419, %465
  %467 = fadd double %34, %466
  br label %468

; <label>:468                                     ; preds = %._crit_edge2538, %404
  %469 = phi i8 [ %.pre2546, %._crit_edge2538 ], [ %428, %404 ]
  %470 = phi double [ %.pre2544, %._crit_edge2538 ], [ %455, %404 ]
  %471 = phi i8 [ %.pre2543, %._crit_edge2538 ], [ %421, %404 ]
  %472 = phi double [ %.pre2541, %._crit_edge2538 ], [ %412, %404 ]
  %473 = phi double [ %.pre2539, %._crit_edge2538 ], [ %407, %404 ]
  %dtvvar0H.9 = phi double [ %dtvvar0H.81955, %._crit_edge2538 ], [ %467, %404 ]
  %474 = phi <2 x double> [ %403, %._crit_edge2538 ], [ %408, %404 ]
  %475 = extractelement <2 x double> %474, i32 1
  %476 = fmul double %475, %473
  %477 = extractelement <2 x double> %474, i32 0
  %478 = fmul double %477, %472
  %479 = fadd double %476, %478
  %480 = fmul double %dtvvar0H.9, %479
  %481 = zext i8 %471 to i32
  %482 = sitofp i32 %481 to double
  %483 = extractelement <2 x double> %402, i32 0
  %484 = fmul double %483, %472
  %485 = fmul double %33, %483
  %486 = fadd double %485, 1.000000e+00
  %487 = fmul double %486, %484
  %488 = fsub double %470, %487
  %489 = fmul double %482, %488
  %490 = fadd double %480, %489
  %491 = load i8* %_from11.01950, align 1, !tbaa !21
  %492 = zext i8 %491 to i32
  %493 = sitofp i32 %492 to double
  %494 = extractelement <2 x double> %402, i32 1
  %495 = fmul double %494, %473
  %496 = fmul double %33, %494
  %497 = fsub double 1.000000e+00, %496
  %498 = fmul double %497, %495
  %499 = fsub double %498, %470
  %500 = fmul double %499, %493
  %501 = fadd double %490, %500
  %502 = zext i8 %469 to i32
  %503 = sitofp i32 %502 to double
  %504 = fsub double 1.000000e+00, %485
  %505 = fmul double %504, %484
  %506 = fadd double %470, %505
  %507 = fmul double %506, %503
  %508 = fadd double %501, %507
  %509 = fadd double %496, 1.000000e+00
  %510 = fmul double %509, %495
  %511 = fadd double %510, %470
  %512 = fdiv double %508, %511
  %513 = fptoui double %512 to i8
  store i8 %513, i8* %_to10.01951, align 1, !tbaa !21
  %514 = getelementptr inbounds double* %_radius8.01953, i64 1
  %515 = getelementptr inbounds double* %_xyz9.01952, i64 1
  %516 = getelementptr inbounds i8* %_to10.01951, i64 1
  %517 = getelementptr inbounds i8* %_from11.01950, i64 1
  %518 = add nsw i32 %_i1.01954, 1
  %519 = load i32** %93, align 8, !tbaa !17
  %520 = load i32* %519, align 4, !tbaa !7
  %521 = icmp slt i32 %518, %520
  br i1 %521, label %396, label %._crit_edge1958

._crit_edge1958:                                  ; preds = %468, %365
  %522 = phi i32 [ %366, %365 ], [ %520, %468 ]
  %523 = phi i32* [ %368, %365 ], [ %519, %468 ]
  %dtvvar0H.8.lcssa = phi double [ %dtvvar0H.71961, %365 ], [ %dtvvar0H.9, %468 ]
  %524 = add nuw nsw i32 %_j2.01960, 1
  %525 = getelementptr inbounds i32* %523, i64 1
  %526 = load i32* %525, align 4, !tbaa !7
  %527 = icmp slt i32 %524, %526
  br i1 %527, label %365, label %._crit_edge1963

._crit_edge1963:                                  ; preds = %._crit_edge1958, %.preheader831
  %528 = phi i32* [ %361, %.preheader831 ], [ %523, %._crit_edge1958 ]
  %dtvvar0H.7.lcssa = phi double [ %dtvvar0H.61967, %.preheader831 ], [ %dtvvar0H.8.lcssa, %._crit_edge1958 ]
  %529 = add nuw nsw i32 %_k3.01965, 1
  %530 = getelementptr inbounds i32* %528, i64 2
  %531 = load i32* %530, align 4, !tbaa !7
  %532 = icmp slt i32 %529, %531
  br i1 %532, label %.preheader831, label %.loopexit879

.loopexit879:                                     ; preds = %._crit_edge1963, %.preheader878, %354
  %dtvvar0H.10 = phi double [ %dtvvar0H.5, %354 ], [ %dtvvar0H.5, %.preheader878 ], [ %dtvvar0H.7.lcssa, %._crit_edge1963 ]
  %533 = bitcast i32* %98 to i64*
  %534 = load i64* %533, align 8
  %535 = trunc i64 %534 to i32
  %536 = icmp eq i32 %535, 0
  %537 = lshr i64 %534, 32
  %538 = trunc i64 %537 to i32
  br i1 %536, label %701, label %539

; <label>:539                                     ; preds = %.loopexit879
  %540 = load i32** %93, align 8, !tbaa !17
  %541 = getelementptr inbounds i32* %540, i64 2
  %542 = load i32* %541, align 4, !tbaa !7
  %543 = icmp sgt i32 %542, 0
  br i1 %543, label %.lr.ph1988, label %.loopexit877

.loopexit830:                                     ; preds = %.loopexit803, %.lr.ph1988
  %dtvvar0H.12.lcssa = phi double [ %dtvvar0H.111985, %.lr.ph1988 ], [ %dtvvar0H.13.lcssa, %.loopexit803 ]
  %544 = icmp sgt i32 %_k17.01986.in, 1
  br i1 %544, label %.lr.ph1988, label %.loopexit877

.lr.ph1988:                                       ; preds = %539, %.loopexit830
  %_k17.01986.in = phi i32 [ %_k17.01986, %.loopexit830 ], [ %542, %539 ]
  %dtvvar0H.111985 = phi double [ %dtvvar0H.12.lcssa, %.loopexit830 ], [ %dtvvar0H.10, %539 ]
  %_k17.01986 = add nsw i32 %_k17.01986.in, -1
  %545 = load i32* %110, align 4, !tbaa !7
  %546 = icmp sgt i32 %545, 0
  br i1 %546, label %.lr.ph1982, label %.loopexit830

.loopexit803:                                     ; preds = %649, %.lr.ph1982
  %dtvvar0H.13.lcssa = phi double [ %dtvvar0H.121979, %.lr.ph1982 ], [ %dtvvar0H.14, %649 ]
  %547 = icmp sgt i32 %_j16.01980.in, 1
  br i1 %547, label %.lr.ph1982, label %.loopexit830

.lr.ph1982:                                       ; preds = %.lr.ph1988, %.loopexit803
  %_j16.01980.in = phi i32 [ %_j16.01980, %.loopexit803 ], [ %545, %.lr.ph1988 ]
  %dtvvar0H.121979 = phi double [ %dtvvar0H.13.lcssa, %.loopexit803 ], [ %dtvvar0H.111985, %.lr.ph1988 ]
  %_j16.01980 = add nsw i32 %_j16.01980.in, -1
  %548 = load i32* %111, align 4, !tbaa !7
  %549 = load i32** %93, align 8, !tbaa !17
  %550 = load i32* %549, align 4, !tbaa !7
  %551 = add nsw i32 %550, -1
  %552 = getelementptr inbounds i32* %549, i64 1
  %553 = load i32* %552, align 4, !tbaa !7
  %554 = mul nsw i32 %553, %_k17.01986
  %555 = add nsw i32 %554, %_j16.01980
  %556 = mul nsw i32 %555, %550
  %557 = add nsw i32 %556, %551
  %558 = sext i32 %557 to i64
  %559 = load i8**** %38, align 8, !tbaa !12
  %560 = icmp sgt i32 %550, 0
  br i1 %560, label %.lr.ph1976, label %.loopexit803

.lr.ph1976:                                       ; preds = %.lr.ph1982
  %561 = getelementptr inbounds i8*** %559, i64 %indvars.iv2113
  %562 = load i8*** %561, align 8, !tbaa !13
  %563 = getelementptr inbounds i8** %562, i64 %.
  %564 = load i8** %563, align 8, !tbaa !13
  %565 = getelementptr inbounds i8* %564, i64 %558
  %566 = getelementptr inbounds i8*** %559, i64 %indvars.iv2111
  %567 = load i8*** %566, align 8, !tbaa !13
  %568 = load i8** %567, align 8, !tbaa !13
  %569 = getelementptr inbounds i8* %568, i64 %558
  %570 = load double** %112, align 8, !tbaa !13
  %571 = getelementptr inbounds double* %570, i64 %558
  %572 = load double** %86, align 8, !tbaa !13
  %573 = getelementptr inbounds double* %572, i64 %558
  %574 = shl nsw i32 %548, 1
  %575 = sext i32 %548 to i64
  %576 = sext i32 %574 to i64
  br label %577

; <label>:577                                     ; preds = %.lr.ph1976, %649
  %dtvvar0H.131974 = phi double [ %dtvvar0H.121979, %.lr.ph1976 ], [ %dtvvar0H.14, %649 ]
  %_i15.01973 = phi i32 [ %551, %.lr.ph1976 ], [ %699, %649 ]
  %_radius22.01972 = phi double* [ %573, %.lr.ph1976 ], [ %695, %649 ]
  %_xyz23.01971 = phi double* [ %571, %.lr.ph1976 ], [ %696, %649 ]
  %_to24.01970 = phi i8* [ %569, %.lr.ph1976 ], [ %697, %649 ]
  %_from25.01969 = phi i8* [ %565, %.lr.ph1976 ], [ %698, %649 ]
  %578 = load double* %_radius22.01972, align 8, !tbaa !15
  %579 = getelementptr inbounds double* %_radius22.01972, i64 %575
  %580 = load double* %579, align 8, !tbaa !15
  %581 = insertelement <2 x double> undef, double %580, i32 0
  %582 = insertelement <2 x double> %581, double %578, i32 1
  %583 = fdiv <2 x double> <double 1.000000e+00, double 1.000000e+00>, %582
  br i1 %105, label %585, label %._crit_edge2547

._crit_edge2547:                                  ; preds = %577
  %.pre2548 = load double* %_xyz23.01971, align 8, !tbaa !15
  %.phi.trans.insert2549 = getelementptr inbounds double* %_xyz23.01971, i64 %575
  %.pre2550 = load double* %.phi.trans.insert2549, align 8, !tbaa !15
  %.phi.trans.insert2551 = getelementptr inbounds i8* %_to24.01970, i64 %575
  %.pre2552 = load i8* %.phi.trans.insert2551, align 1, !tbaa !21
  %.pre2553 = load double* %109, align 16, !tbaa !15
  %.phi.trans.insert2554 = getelementptr inbounds i8* %_from25.01969, i64 %575
  %.pre2555 = load i8* %.phi.trans.insert2554, align 1, !tbaa !21
  %584 = fmul <2 x double> %583, %583
  br label %649

; <label>:585                                     ; preds = %577
  %586 = load double* %108, align 16, !tbaa !15
  %587 = fmul double %107, %586
  %588 = load double* %_xyz23.01971, align 8, !tbaa !15
  %589 = fmul <2 x double> %583, %583
  %590 = extractelement <2 x double> %589, i32 1
  %591 = fmul double %590, %588
  %592 = getelementptr inbounds double* %_xyz23.01971, i64 %575
  %593 = load double* %592, align 8, !tbaa !15
  %594 = extractelement <2 x double> %589, i32 0
  %595 = fmul double %594, %593
  %596 = fadd double %591, %595
  %597 = fmul double %587, %596
  %598 = fadd double %597, 1.000000e+00
  %599 = fsub double 1.000000e+00, %597
  %600 = fdiv double %598, %599
  %601 = getelementptr inbounds i8* %_to24.01970, i64 %575
  %602 = load i8* %601, align 1, !tbaa !21
  %603 = zext i8 %602 to i32
  %604 = getelementptr inbounds i8* %_to24.01970, i64 %576
  %605 = load i8* %604, align 1, !tbaa !21
  %606 = zext i8 %605 to i32
  %607 = add nuw nsw i32 %606, %603
  %608 = getelementptr inbounds i8* %_from25.01969, i64 %575
  %609 = load i8* %608, align 1, !tbaa !21
  %610 = zext i8 %609 to i32
  %611 = add nuw nsw i32 %607, %610
  %612 = getelementptr inbounds i8* %_from25.01969, i64 %576
  %613 = load i8* %612, align 1, !tbaa !21
  %614 = zext i8 %613 to i32
  %615 = add nuw nsw i32 %611, %614
  %616 = sitofp i32 %615 to double
  %617 = fmul double %616, 2.500000e-01
  %618 = fsub double %617, %var0
  %619 = fmul double %32, %618
  %620 = sub nsw i32 %603, %610
  %621 = sitofp i32 %620 to double
  %622 = fmul double %580, %621
  %623 = getelementptr inbounds double* %_radius22.01972, i64 %576
  %624 = load double* %623, align 8, !tbaa !15
  %625 = sub nsw i32 %606, %614
  %626 = sitofp i32 %625 to double
  %627 = fmul double %624, %626
  %628 = fadd double %622, %627
  %629 = fmul double %628, 5.000000e-01
  %630 = fadd double %619, %629
  %631 = sub nsw i32 %606, %603
  %632 = sub nsw i32 %631, %610
  %633 = add nsw i32 %632, %614
  %634 = sitofp i32 %633 to double
  %635 = fmul double %634, 2.500000e-01
  %636 = load double* %109, align 16, !tbaa !15
  %637 = fmul double %636, %635
  %638 = fmul double %580, %580
  %639 = fdiv double %638, %593
  %640 = fmul double %624, %624
  %641 = getelementptr inbounds double* %_xyz23.01971, i64 %576
  %642 = load double* %641, align 8, !tbaa !15
  %643 = fdiv double %640, %642
  %644 = fadd double %639, %643
  %645 = fmul double %637, %644
  %646 = fadd double %630, %645
  %647 = fmul double %600, %646
  %648 = fadd double %34, %647
  br label %649

; <label>:649                                     ; preds = %._crit_edge2547, %585
  %650 = phi i8 [ %.pre2555, %._crit_edge2547 ], [ %609, %585 ]
  %651 = phi double [ %.pre2553, %._crit_edge2547 ], [ %636, %585 ]
  %652 = phi i8 [ %.pre2552, %._crit_edge2547 ], [ %602, %585 ]
  %653 = phi double [ %.pre2550, %._crit_edge2547 ], [ %593, %585 ]
  %654 = phi double [ %.pre2548, %._crit_edge2547 ], [ %588, %585 ]
  %dtvvar0H.14 = phi double [ %dtvvar0H.131974, %._crit_edge2547 ], [ %648, %585 ]
  %655 = phi <2 x double> [ %584, %._crit_edge2547 ], [ %589, %585 ]
  %656 = extractelement <2 x double> %655, i32 1
  %657 = fmul double %656, %654
  %658 = extractelement <2 x double> %655, i32 0
  %659 = fmul double %658, %653
  %660 = fadd double %657, %659
  %661 = fmul double %dtvvar0H.14, %660
  %662 = zext i8 %652 to i32
  %663 = sitofp i32 %662 to double
  %664 = extractelement <2 x double> %583, i32 0
  %665 = fmul double %664, %653
  %666 = fmul double %33, %664
  %667 = fadd double %666, 1.000000e+00
  %668 = fmul double %667, %665
  %669 = fadd double %651, %668
  %670 = fmul double %663, %669
  %671 = fsub double %661, %670
  %672 = load i8* %_from25.01969, align 1, !tbaa !21
  %673 = zext i8 %672 to i32
  %674 = sitofp i32 %673 to double
  %675 = extractelement <2 x double> %583, i32 1
  %676 = fmul double %675, %654
  %677 = fmul double %33, %675
  %678 = fsub double 1.000000e+00, %677
  %679 = fmul double %678, %676
  %680 = fadd double %679, %651
  %681 = fmul double %680, %674
  %682 = fadd double %671, %681
  %683 = zext i8 %650 to i32
  %684 = sitofp i32 %683 to double
  %685 = fsub double 1.000000e+00, %666
  %686 = fmul double %685, %665
  %687 = fsub double %651, %686
  %688 = fmul double %687, %684
  %689 = fsub double %682, %688
  %690 = fadd double %677, 1.000000e+00
  %691 = fmul double %690, %676
  %692 = fsub double %691, %651
  %693 = fdiv double %689, %692
  %694 = fptoui double %693 to i8
  store i8 %694, i8* %_to24.01970, align 1, !tbaa !21
  %695 = getelementptr inbounds double* %_radius22.01972, i64 -1
  %696 = getelementptr inbounds double* %_xyz23.01971, i64 -1
  %697 = getelementptr inbounds i8* %_to24.01970, i64 -1
  %698 = getelementptr inbounds i8* %_from25.01969, i64 -1
  %699 = add nsw i32 %_i15.01973, -1
  %700 = icmp sgt i32 %_i15.01973, 0
  br i1 %700, label %577, label %.loopexit803

.loopexit877:                                     ; preds = %.loopexit830, %539
  %dtvvar0H.11.lcssa = phi double [ %dtvvar0H.10, %539 ], [ %dtvvar0H.12.lcssa, %.loopexit830 ]
  %.pre2556 = load i32* %99, align 4, !tbaa !7
  br label %701

; <label>:701                                     ; preds = %.loopexit877, %.loopexit879
  %702 = phi i32 [ %538, %.loopexit879 ], [ %.pre2556, %.loopexit877 ]
  %dtvvar0H.15 = phi double [ %dtvvar0H.10, %.loopexit879 ], [ %dtvvar0H.11.lcssa, %.loopexit877 ]
  %703 = icmp eq i32 %702, 0
  br i1 %703, label %.loopexit876, label %.preheader875

.preheader875:                                    ; preds = %701
  %704 = load i32** %93, align 8, !tbaa !17
  %705 = getelementptr inbounds i32* %704, i64 2
  %706 = load i32* %705, align 4, !tbaa !7
  %707 = icmp sgt i32 %706, 0
  br i1 %707, label %.lr.ph2009, label %.loopexit876

.lr.ph2009:                                       ; preds = %.preheader875, %._crit_edge2004
  %708 = phi i32* [ %874, %._crit_edge2004 ], [ %704, %.preheader875 ]
  %dtvvar0H.162008 = phi double [ %dtvvar0H.17.lcssa, %._crit_edge2004 ], [ %dtvvar0H.15, %.preheader875 ]
  %_k31.02006 = phi i32 [ %875, %._crit_edge2004 ], [ 0, %.preheader875 ]
  %709 = getelementptr inbounds i32* %708, i64 1
  %710 = load i32* %709, align 4, !tbaa !7
  %711 = load i32* %110, align 4, !tbaa !7
  %712 = icmp sgt i32 %711, 0
  br i1 %712, label %.lr.ph2003, label %._crit_edge2004

.lr.ph2003:                                       ; preds = %.lr.ph2009
  %713 = sub nsw i32 %710, %711
  %.pre2605 = load i32* %708, align 4, !tbaa !7
  br label %714

; <label>:714                                     ; preds = %.lr.ph2003, %._crit_edge1998
  %715 = phi i32 [ %.pre2605, %.lr.ph2003 ], [ %868, %._crit_edge1998 ]
  %716 = phi i32 [ %710, %.lr.ph2003 ], [ %872, %._crit_edge1998 ]
  %717 = phi i32* [ %708, %.lr.ph2003 ], [ %869, %._crit_edge1998 ]
  %dtvvar0H.172001 = phi double [ %dtvvar0H.162008, %.lr.ph2003 ], [ %dtvvar0H.18.lcssa, %._crit_edge1998 ]
  %_j30.02000 = phi i32 [ %713, %.lr.ph2003 ], [ %870, %._crit_edge1998 ]
  %718 = load i32* %111, align 4, !tbaa !7
  %719 = mul nsw i32 %716, %_k31.02006
  %720 = add nsw i32 %719, %_j30.02000
  %721 = mul nsw i32 %715, %720
  %722 = sext i32 %721 to i64
  %723 = load i8**** %38, align 8, !tbaa !12
  %724 = icmp sgt i32 %715, 0
  br i1 %724, label %.lr.ph1997, label %._crit_edge1998

.lr.ph1997:                                       ; preds = %714
  %725 = getelementptr inbounds i8*** %723, i64 %indvars.iv2113
  %726 = load i8*** %725, align 8, !tbaa !13
  %727 = getelementptr inbounds i8** %726, i64 %.
  %728 = load i8** %727, align 8, !tbaa !13
  %729 = getelementptr inbounds i8* %728, i64 %722
  %730 = getelementptr inbounds i8*** %723, i64 %indvars.iv2111
  %731 = load i8*** %730, align 8, !tbaa !13
  %732 = load i8** %731, align 8, !tbaa !13
  %733 = getelementptr inbounds i8* %732, i64 %722
  %734 = load double** %112, align 8, !tbaa !13
  %735 = getelementptr inbounds double* %734, i64 %722
  %736 = load double** %86, align 8, !tbaa !13
  %737 = getelementptr inbounds double* %736, i64 %722
  %738 = mul nsw i32 %718, -2
  %739 = sub nsw i32 0, %718
  %740 = sext i32 %739 to i64
  %741 = sext i32 %738 to i64
  br label %742

; <label>:742                                     ; preds = %.lr.ph1997, %814
  %dtvvar0H.181995 = phi double [ %dtvvar0H.172001, %.lr.ph1997 ], [ %dtvvar0H.19, %814 ]
  %_i29.01994 = phi i32 [ 0, %.lr.ph1997 ], [ %864, %814 ]
  %_radius36.01993 = phi double* [ %737, %.lr.ph1997 ], [ %860, %814 ]
  %_xyz37.01992 = phi double* [ %735, %.lr.ph1997 ], [ %861, %814 ]
  %_to38.01991 = phi i8* [ %733, %.lr.ph1997 ], [ %862, %814 ]
  %_from39.01990 = phi i8* [ %729, %.lr.ph1997 ], [ %863, %814 ]
  %743 = load double* %_radius36.01993, align 8, !tbaa !15
  %744 = getelementptr inbounds double* %_radius36.01993, i64 %740
  %745 = load double* %744, align 8, !tbaa !15
  %746 = insertelement <2 x double> undef, double %745, i32 0
  %747 = insertelement <2 x double> %746, double %743, i32 1
  %748 = fdiv <2 x double> <double 1.000000e+00, double 1.000000e+00>, %747
  br i1 %105, label %750, label %._crit_edge2557

._crit_edge2557:                                  ; preds = %742
  %.pre2558 = load double* %_xyz37.01992, align 8, !tbaa !15
  %.phi.trans.insert2559 = getelementptr inbounds double* %_xyz37.01992, i64 %740
  %.pre2560 = load double* %.phi.trans.insert2559, align 8, !tbaa !15
  %.phi.trans.insert2561 = getelementptr inbounds i8* %_to38.01991, i64 %740
  %.pre2562 = load i8* %.phi.trans.insert2561, align 1, !tbaa !21
  %.pre2563 = load double* %109, align 16, !tbaa !15
  %.phi.trans.insert2564 = getelementptr inbounds i8* %_from39.01990, i64 %740
  %.pre2565 = load i8* %.phi.trans.insert2564, align 1, !tbaa !21
  %749 = fmul <2 x double> %748, %748
  br label %814

; <label>:750                                     ; preds = %742
  %751 = load double* %108, align 16, !tbaa !15
  %752 = fmul double %107, %751
  %753 = load double* %_xyz37.01992, align 8, !tbaa !15
  %754 = fmul <2 x double> %748, %748
  %755 = extractelement <2 x double> %754, i32 1
  %756 = fmul double %755, %753
  %757 = getelementptr inbounds double* %_xyz37.01992, i64 %740
  %758 = load double* %757, align 8, !tbaa !15
  %759 = extractelement <2 x double> %754, i32 0
  %760 = fmul double %759, %758
  %761 = fadd double %756, %760
  %762 = fmul double %752, %761
  %763 = fsub double 1.000000e+00, %762
  %764 = fadd double %762, 1.000000e+00
  %765 = fdiv double %763, %764
  %766 = getelementptr inbounds i8* %_to38.01991, i64 %740
  %767 = load i8* %766, align 1, !tbaa !21
  %768 = zext i8 %767 to i32
  %769 = getelementptr inbounds i8* %_to38.01991, i64 %741
  %770 = load i8* %769, align 1, !tbaa !21
  %771 = zext i8 %770 to i32
  %772 = add nuw nsw i32 %771, %768
  %773 = getelementptr inbounds i8* %_from39.01990, i64 %740
  %774 = load i8* %773, align 1, !tbaa !21
  %775 = zext i8 %774 to i32
  %776 = add nuw nsw i32 %772, %775
  %777 = getelementptr inbounds i8* %_from39.01990, i64 %741
  %778 = load i8* %777, align 1, !tbaa !21
  %779 = zext i8 %778 to i32
  %780 = add nuw nsw i32 %776, %779
  %781 = sitofp i32 %780 to double
  %782 = fmul double %781, 2.500000e-01
  %783 = fsub double %782, %var0
  %784 = fmul double %32, %783
  %785 = sub nsw i32 %768, %775
  %786 = sitofp i32 %785 to double
  %787 = fmul double %745, %786
  %788 = getelementptr inbounds double* %_radius36.01993, i64 %741
  %789 = load double* %788, align 8, !tbaa !15
  %790 = sub nsw i32 %771, %779
  %791 = sitofp i32 %790 to double
  %792 = fmul double %789, %791
  %793 = fadd double %787, %792
  %794 = fmul double %793, 5.000000e-01
  %795 = fadd double %784, %794
  %796 = sub nsw i32 %768, %771
  %797 = add nsw i32 %796, %775
  %798 = sub nsw i32 %797, %779
  %799 = sitofp i32 %798 to double
  %800 = fmul double %799, 2.500000e-01
  %801 = load double* %109, align 16, !tbaa !15
  %802 = fmul double %801, %800
  %803 = fmul double %745, %745
  %804 = fdiv double %803, %758
  %805 = fmul double %789, %789
  %806 = getelementptr inbounds double* %_xyz37.01992, i64 %741
  %807 = load double* %806, align 8, !tbaa !15
  %808 = fdiv double %805, %807
  %809 = fadd double %804, %808
  %810 = fmul double %802, %809
  %811 = fadd double %795, %810
  %812 = fmul double %765, %811
  %813 = fadd double %34, %812
  br label %814

; <label>:814                                     ; preds = %._crit_edge2557, %750
  %815 = phi i8 [ %.pre2565, %._crit_edge2557 ], [ %774, %750 ]
  %816 = phi double [ %.pre2563, %._crit_edge2557 ], [ %801, %750 ]
  %817 = phi i8 [ %.pre2562, %._crit_edge2557 ], [ %767, %750 ]
  %818 = phi double [ %.pre2560, %._crit_edge2557 ], [ %758, %750 ]
  %819 = phi double [ %.pre2558, %._crit_edge2557 ], [ %753, %750 ]
  %dtvvar0H.19 = phi double [ %dtvvar0H.181995, %._crit_edge2557 ], [ %813, %750 ]
  %820 = phi <2 x double> [ %749, %._crit_edge2557 ], [ %754, %750 ]
  %821 = extractelement <2 x double> %820, i32 1
  %822 = fmul double %821, %819
  %823 = extractelement <2 x double> %820, i32 0
  %824 = fmul double %823, %818
  %825 = fadd double %822, %824
  %826 = fmul double %dtvvar0H.19, %825
  %827 = zext i8 %817 to i32
  %828 = sitofp i32 %827 to double
  %829 = extractelement <2 x double> %748, i32 0
  %830 = fmul double %829, %818
  %831 = fmul double %33, %829
  %832 = fadd double %831, 1.000000e+00
  %833 = fmul double %832, %830
  %834 = fsub double %816, %833
  %835 = fmul double %828, %834
  %836 = fadd double %826, %835
  %837 = load i8* %_from39.01990, align 1, !tbaa !21
  %838 = zext i8 %837 to i32
  %839 = sitofp i32 %838 to double
  %840 = extractelement <2 x double> %748, i32 1
  %841 = fmul double %840, %819
  %842 = fmul double %33, %840
  %843 = fsub double 1.000000e+00, %842
  %844 = fmul double %843, %841
  %845 = fsub double %844, %816
  %846 = fmul double %845, %839
  %847 = fadd double %836, %846
  %848 = zext i8 %815 to i32
  %849 = sitofp i32 %848 to double
  %850 = fsub double 1.000000e+00, %831
  %851 = fmul double %850, %830
  %852 = fadd double %816, %851
  %853 = fmul double %852, %849
  %854 = fadd double %847, %853
  %855 = fadd double %842, 1.000000e+00
  %856 = fmul double %855, %841
  %857 = fadd double %856, %816
  %858 = fdiv double %854, %857
  %859 = fptoui double %858 to i8
  store i8 %859, i8* %_to38.01991, align 1, !tbaa !21
  %860 = getelementptr inbounds double* %_radius36.01993, i64 1
  %861 = getelementptr inbounds double* %_xyz37.01992, i64 1
  %862 = getelementptr inbounds i8* %_to38.01991, i64 1
  %863 = getelementptr inbounds i8* %_from39.01990, i64 1
  %864 = add nuw nsw i32 %_i29.01994, 1
  %865 = load i32** %93, align 8, !tbaa !17
  %866 = load i32* %865, align 4, !tbaa !7
  %867 = icmp slt i32 %864, %866
  br i1 %867, label %742, label %._crit_edge1998

._crit_edge1998:                                  ; preds = %814, %714
  %868 = phi i32 [ %715, %714 ], [ %866, %814 ]
  %869 = phi i32* [ %717, %714 ], [ %865, %814 ]
  %dtvvar0H.18.lcssa = phi double [ %dtvvar0H.172001, %714 ], [ %dtvvar0H.19, %814 ]
  %870 = add nsw i32 %_j30.02000, 1
  %871 = getelementptr inbounds i32* %869, i64 1
  %872 = load i32* %871, align 4, !tbaa !7
  %873 = icmp slt i32 %870, %872
  br i1 %873, label %714, label %._crit_edge2004

._crit_edge2004:                                  ; preds = %._crit_edge1998, %.lr.ph2009
  %874 = phi i32* [ %708, %.lr.ph2009 ], [ %869, %._crit_edge1998 ]
  %dtvvar0H.17.lcssa = phi double [ %dtvvar0H.162008, %.lr.ph2009 ], [ %dtvvar0H.18.lcssa, %._crit_edge1998 ]
  %875 = add nuw nsw i32 %_k31.02006, 1
  %876 = getelementptr inbounds i32* %874, i64 2
  %877 = load i32* %876, align 4, !tbaa !7
  %878 = icmp slt i32 %875, %877
  br i1 %878, label %.lr.ph2009, label %.loopexit876

.loopexit876:                                     ; preds = %._crit_edge2004, %.preheader875, %701
  %dtvvar0H.20 = phi double [ %dtvvar0H.15, %701 ], [ %dtvvar0H.15, %.preheader875 ], [ %dtvvar0H.17.lcssa, %._crit_edge2004 ]
  %879 = bitcast i32* %100 to i64*
  %880 = load i64* %879, align 16
  %881 = trunc i64 %880 to i32
  %882 = icmp eq i32 %881, 0
  %883 = lshr i64 %880, 32
  %884 = trunc i64 %883 to i32
  br i1 %882, label %1046, label %885

; <label>:885                                     ; preds = %.loopexit876
  %886 = load i32* %102, align 4, !tbaa !7
  %887 = icmp sgt i32 %886, 0
  br i1 %887, label %.lr.ph2030, label %.loopexit874

.loopexit829:                                     ; preds = %.loopexit, %.lr.ph2030
  %dtvvar0H.22.lcssa = phi double [ %dtvvar0H.212027, %.lr.ph2030 ], [ %dtvvar0H.23.lcssa, %.loopexit ]
  %888 = icmp sgt i32 %_k45.02028.in, 1
  br i1 %888, label %.lr.ph2030, label %.loopexit874

.lr.ph2030:                                       ; preds = %885, %.loopexit829
  %_k45.02028.in = phi i32 [ %_k45.02028, %.loopexit829 ], [ %886, %885 ]
  %dtvvar0H.212027 = phi double [ %dtvvar0H.22.lcssa, %.loopexit829 ], [ %dtvvar0H.20, %885 ]
  %_k45.02028 = add nsw i32 %_k45.02028.in, -1
  %889 = load i32** %93, align 8, !tbaa !17
  %890 = getelementptr inbounds i32* %889, i64 1
  %891 = load i32* %890, align 4, !tbaa !7
  %892 = icmp sgt i32 %891, 0
  br i1 %892, label %.lr.ph2024, label %.loopexit829

.loopexit:                                        ; preds = %994, %.lr.ph2024
  %dtvvar0H.23.lcssa = phi double [ %dtvvar0H.222021, %.lr.ph2024 ], [ %dtvvar0H.24, %994 ]
  %893 = icmp sgt i32 %_j44.02022.in, 1
  br i1 %893, label %.loopexit._crit_edge, label %.loopexit829

.loopexit._crit_edge:                             ; preds = %.loopexit
  %.pre2566 = load i32** %93, align 8, !tbaa !17
  %.phi.trans.insert2567 = getelementptr inbounds i32* %.pre2566, i64 1
  %.pre2568 = load i32* %.phi.trans.insert2567, align 4, !tbaa !7
  br label %.lr.ph2024

.lr.ph2024:                                       ; preds = %.lr.ph2030, %.loopexit._crit_edge
  %894 = phi i32 [ %.pre2568, %.loopexit._crit_edge ], [ %891, %.lr.ph2030 ]
  %895 = phi i32* [ %.pre2566, %.loopexit._crit_edge ], [ %889, %.lr.ph2030 ]
  %_j44.02022.in = phi i32 [ %_j44.02022, %.loopexit._crit_edge ], [ %891, %.lr.ph2030 ]
  %dtvvar0H.222021 = phi double [ %dtvvar0H.23.lcssa, %.loopexit._crit_edge ], [ %dtvvar0H.212027, %.lr.ph2030 ]
  %_j44.02022 = add nsw i32 %_j44.02022.in, -1
  %896 = load i32* %103, align 4, !tbaa !7
  %897 = load i32* %895, align 4, !tbaa !7
  %898 = add nsw i32 %897, -1
  %899 = mul nsw i32 %894, %_k45.02028
  %900 = add nsw i32 %899, %_j44.02022
  %901 = mul nsw i32 %900, %897
  %902 = add nsw i32 %901, %898
  %903 = sext i32 %902 to i64
  %904 = load i8**** %38, align 8, !tbaa !12
  %905 = icmp sgt i32 %897, 0
  br i1 %905, label %.lr.ph2018, label %.loopexit

.lr.ph2018:                                       ; preds = %.lr.ph2024
  %906 = getelementptr inbounds i8*** %904, i64 %indvars.iv2113
  %907 = load i8*** %906, align 8, !tbaa !13
  %908 = getelementptr inbounds i8** %907, i64 %.
  %909 = load i8** %908, align 8, !tbaa !13
  %910 = getelementptr inbounds i8* %909, i64 %903
  %911 = getelementptr inbounds i8*** %904, i64 %indvars.iv2111
  %912 = load i8*** %911, align 8, !tbaa !13
  %913 = load i8** %912, align 8, !tbaa !13
  %914 = getelementptr inbounds i8* %913, i64 %903
  %915 = load double** %104, align 16, !tbaa !13
  %916 = getelementptr inbounds double* %915, i64 %903
  %917 = load double** %86, align 8, !tbaa !13
  %918 = getelementptr inbounds double* %917, i64 %903
  %919 = shl nsw i32 %896, 1
  %920 = sext i32 %896 to i64
  %921 = sext i32 %919 to i64
  br label %922

; <label>:922                                     ; preds = %.lr.ph2018, %994
  %dtvvar0H.232016 = phi double [ %dtvvar0H.222021, %.lr.ph2018 ], [ %dtvvar0H.24, %994 ]
  %_i43.02015 = phi i32 [ %898, %.lr.ph2018 ], [ %1044, %994 ]
  %_radius50.02014 = phi double* [ %918, %.lr.ph2018 ], [ %1040, %994 ]
  %_xyz51.02013 = phi double* [ %916, %.lr.ph2018 ], [ %1041, %994 ]
  %_to52.02012 = phi i8* [ %914, %.lr.ph2018 ], [ %1042, %994 ]
  %_from53.02011 = phi i8* [ %910, %.lr.ph2018 ], [ %1043, %994 ]
  %923 = load double* %_radius50.02014, align 8, !tbaa !15
  %924 = getelementptr inbounds double* %_radius50.02014, i64 %920
  %925 = load double* %924, align 8, !tbaa !15
  %926 = insertelement <2 x double> undef, double %925, i32 0
  %927 = insertelement <2 x double> %926, double %923, i32 1
  %928 = fdiv <2 x double> <double 1.000000e+00, double 1.000000e+00>, %927
  br i1 %105, label %930, label %._crit_edge2569

._crit_edge2569:                                  ; preds = %922
  %.pre2570 = load double* %_xyz51.02013, align 8, !tbaa !15
  %.phi.trans.insert2571 = getelementptr inbounds double* %_xyz51.02013, i64 %920
  %.pre2572 = load double* %.phi.trans.insert2571, align 8, !tbaa !15
  %.phi.trans.insert2573 = getelementptr inbounds i8* %_to52.02012, i64 %920
  %.pre2574 = load i8* %.phi.trans.insert2573, align 1, !tbaa !21
  %.pre2575 = load double* %109, align 16, !tbaa !15
  %.phi.trans.insert2576 = getelementptr inbounds i8* %_from53.02011, i64 %920
  %.pre2577 = load i8* %.phi.trans.insert2576, align 1, !tbaa !21
  %929 = fmul <2 x double> %928, %928
  br label %994

; <label>:930                                     ; preds = %922
  %931 = load double* %108, align 16, !tbaa !15
  %932 = fmul double %107, %931
  %933 = load double* %_xyz51.02013, align 8, !tbaa !15
  %934 = fmul <2 x double> %928, %928
  %935 = extractelement <2 x double> %934, i32 1
  %936 = fmul double %935, %933
  %937 = getelementptr inbounds double* %_xyz51.02013, i64 %920
  %938 = load double* %937, align 8, !tbaa !15
  %939 = extractelement <2 x double> %934, i32 0
  %940 = fmul double %939, %938
  %941 = fadd double %936, %940
  %942 = fmul double %932, %941
  %943 = fadd double %942, 1.000000e+00
  %944 = fsub double 1.000000e+00, %942
  %945 = fdiv double %943, %944
  %946 = getelementptr inbounds i8* %_to52.02012, i64 %920
  %947 = load i8* %946, align 1, !tbaa !21
  %948 = zext i8 %947 to i32
  %949 = getelementptr inbounds i8* %_to52.02012, i64 %921
  %950 = load i8* %949, align 1, !tbaa !21
  %951 = zext i8 %950 to i32
  %952 = add nuw nsw i32 %951, %948
  %953 = getelementptr inbounds i8* %_from53.02011, i64 %920
  %954 = load i8* %953, align 1, !tbaa !21
  %955 = zext i8 %954 to i32
  %956 = add nuw nsw i32 %952, %955
  %957 = getelementptr inbounds i8* %_from53.02011, i64 %921
  %958 = load i8* %957, align 1, !tbaa !21
  %959 = zext i8 %958 to i32
  %960 = add nuw nsw i32 %956, %959
  %961 = sitofp i32 %960 to double
  %962 = fmul double %961, 2.500000e-01
  %963 = fsub double %962, %var0
  %964 = fmul double %32, %963
  %965 = sub nsw i32 %948, %955
  %966 = sitofp i32 %965 to double
  %967 = fmul double %925, %966
  %968 = getelementptr inbounds double* %_radius50.02014, i64 %921
  %969 = load double* %968, align 8, !tbaa !15
  %970 = sub nsw i32 %951, %959
  %971 = sitofp i32 %970 to double
  %972 = fmul double %969, %971
  %973 = fadd double %967, %972
  %974 = fmul double %973, 5.000000e-01
  %975 = fadd double %964, %974
  %976 = sub nsw i32 %951, %948
  %977 = sub nsw i32 %976, %955
  %978 = add nsw i32 %977, %959
  %979 = sitofp i32 %978 to double
  %980 = fmul double %979, 2.500000e-01
  %981 = load double* %109, align 16, !tbaa !15
  %982 = fmul double %981, %980
  %983 = fmul double %925, %925
  %984 = fdiv double %983, %938
  %985 = fmul double %969, %969
  %986 = getelementptr inbounds double* %_xyz51.02013, i64 %921
  %987 = load double* %986, align 8, !tbaa !15
  %988 = fdiv double %985, %987
  %989 = fadd double %984, %988
  %990 = fmul double %982, %989
  %991 = fadd double %975, %990
  %992 = fmul double %945, %991
  %993 = fadd double %34, %992
  br label %994

; <label>:994                                     ; preds = %._crit_edge2569, %930
  %995 = phi i8 [ %.pre2577, %._crit_edge2569 ], [ %954, %930 ]
  %996 = phi double [ %.pre2575, %._crit_edge2569 ], [ %981, %930 ]
  %997 = phi i8 [ %.pre2574, %._crit_edge2569 ], [ %947, %930 ]
  %998 = phi double [ %.pre2572, %._crit_edge2569 ], [ %938, %930 ]
  %999 = phi double [ %.pre2570, %._crit_edge2569 ], [ %933, %930 ]
  %dtvvar0H.24 = phi double [ %dtvvar0H.232016, %._crit_edge2569 ], [ %993, %930 ]
  %1000 = phi <2 x double> [ %929, %._crit_edge2569 ], [ %934, %930 ]
  %1001 = extractelement <2 x double> %1000, i32 1
  %1002 = fmul double %1001, %999
  %1003 = extractelement <2 x double> %1000, i32 0
  %1004 = fmul double %1003, %998
  %1005 = fadd double %1002, %1004
  %1006 = fmul double %dtvvar0H.24, %1005
  %1007 = zext i8 %997 to i32
  %1008 = sitofp i32 %1007 to double
  %1009 = extractelement <2 x double> %928, i32 0
  %1010 = fmul double %1009, %998
  %1011 = fmul double %33, %1009
  %1012 = fadd double %1011, 1.000000e+00
  %1013 = fmul double %1012, %1010
  %1014 = fadd double %996, %1013
  %1015 = fmul double %1008, %1014
  %1016 = fsub double %1006, %1015
  %1017 = load i8* %_from53.02011, align 1, !tbaa !21
  %1018 = zext i8 %1017 to i32
  %1019 = sitofp i32 %1018 to double
  %1020 = extractelement <2 x double> %928, i32 1
  %1021 = fmul double %1020, %999
  %1022 = fmul double %33, %1020
  %1023 = fsub double 1.000000e+00, %1022
  %1024 = fmul double %1023, %1021
  %1025 = fadd double %1024, %996
  %1026 = fmul double %1025, %1019
  %1027 = fadd double %1016, %1026
  %1028 = zext i8 %995 to i32
  %1029 = sitofp i32 %1028 to double
  %1030 = fsub double 1.000000e+00, %1011
  %1031 = fmul double %1030, %1010
  %1032 = fsub double %996, %1031
  %1033 = fmul double %1032, %1029
  %1034 = fsub double %1027, %1033
  %1035 = fadd double %1022, 1.000000e+00
  %1036 = fmul double %1035, %1021
  %1037 = fsub double %1036, %996
  %1038 = fdiv double %1034, %1037
  %1039 = fptoui double %1038 to i8
  store i8 %1039, i8* %_to52.02012, align 1, !tbaa !21
  %1040 = getelementptr inbounds double* %_radius50.02014, i64 -1
  %1041 = getelementptr inbounds double* %_xyz51.02013, i64 -1
  %1042 = getelementptr inbounds i8* %_to52.02012, i64 -1
  %1043 = getelementptr inbounds i8* %_from53.02011, i64 -1
  %1044 = add nsw i32 %_i43.02015, -1
  %1045 = icmp sgt i32 %_i43.02015, 0
  br i1 %1045, label %922, label %.loopexit

.loopexit874:                                     ; preds = %.loopexit829, %885
  %dtvvar0H.21.lcssa = phi double [ %dtvvar0H.20, %885 ], [ %dtvvar0H.22.lcssa, %.loopexit829 ]
  %.pre2578 = load i32* %101, align 4, !tbaa !7
  br label %1046

; <label>:1046                                    ; preds = %.loopexit874, %.loopexit876
  %1047 = phi i32 [ %884, %.loopexit876 ], [ %.pre2578, %.loopexit874 ]
  %dtvvar0H.25 = phi double [ %dtvvar0H.20, %.loopexit876 ], [ %dtvvar0H.21.lcssa, %.loopexit874 ]
  %1048 = icmp eq i32 %1047, 0
  br i1 %1048, label %.loopexit873, label %1049

; <label>:1049                                    ; preds = %1046
  %1050 = load i32* %102, align 4, !tbaa !7
  %1051 = icmp sgt i32 %1050, 0
  br i1 %1051, label %.preheader.lr.ph, label %.loopexit873

.preheader.lr.ph:                                 ; preds = %1049
  %1052 = load i32** %93, align 8, !tbaa !17
  %1053 = getelementptr inbounds i32* %1052, i64 2
  %1054 = load i32* %1053, align 4, !tbaa !7
  %1055 = sub nsw i32 %1054, %1050
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge2045
  %1056 = phi i32* [ %1052, %.preheader.lr.ph ], [ %1220, %._crit_edge2045 ]
  %dtvvar0H.262049 = phi double [ %dtvvar0H.25, %.preheader.lr.ph ], [ %dtvvar0H.27.lcssa, %._crit_edge2045 ]
  %_k59.02047 = phi i32 [ %1055, %.preheader.lr.ph ], [ %1221, %._crit_edge2045 ]
  %1057 = getelementptr inbounds i32* %1056, i64 1
  %1058 = load i32* %1057, align 4, !tbaa !7
  %1059 = icmp sgt i32 %1058, 0
  br i1 %1059, label %.lr.ph2044, label %._crit_edge2045

.lr.ph2044:                                       ; preds = %.preheader
  %.pre2606 = load i32* %1056, align 4, !tbaa !7
  br label %1060

; <label>:1060                                    ; preds = %.lr.ph2044, %._crit_edge2040
  %1061 = phi i32 [ %.pre2606, %.lr.ph2044 ], [ %1214, %._crit_edge2040 ]
  %1062 = phi i32 [ %1058, %.lr.ph2044 ], [ %1218, %._crit_edge2040 ]
  %1063 = phi i32* [ %1056, %.lr.ph2044 ], [ %1215, %._crit_edge2040 ]
  %dtvvar0H.272043 = phi double [ %dtvvar0H.262049, %.lr.ph2044 ], [ %dtvvar0H.28.lcssa, %._crit_edge2040 ]
  %_j58.02042 = phi i32 [ 0, %.lr.ph2044 ], [ %1216, %._crit_edge2040 ]
  %1064 = load i32* %103, align 4, !tbaa !7
  %1065 = mul nsw i32 %1062, %_k59.02047
  %1066 = add nsw i32 %1065, %_j58.02042
  %1067 = mul nsw i32 %1061, %1066
  %1068 = sext i32 %1067 to i64
  %1069 = load i8**** %38, align 8, !tbaa !12
  %1070 = icmp sgt i32 %1061, 0
  br i1 %1070, label %.lr.ph2039, label %._crit_edge2040

.lr.ph2039:                                       ; preds = %1060
  %1071 = getelementptr inbounds i8*** %1069, i64 %indvars.iv2113
  %1072 = load i8*** %1071, align 8, !tbaa !13
  %1073 = getelementptr inbounds i8** %1072, i64 %.
  %1074 = load i8** %1073, align 8, !tbaa !13
  %1075 = getelementptr inbounds i8* %1074, i64 %1068
  %1076 = getelementptr inbounds i8*** %1069, i64 %indvars.iv2111
  %1077 = load i8*** %1076, align 8, !tbaa !13
  %1078 = load i8** %1077, align 8, !tbaa !13
  %1079 = getelementptr inbounds i8* %1078, i64 %1068
  %1080 = load double** %104, align 16, !tbaa !13
  %1081 = getelementptr inbounds double* %1080, i64 %1068
  %1082 = load double** %86, align 8, !tbaa !13
  %1083 = getelementptr inbounds double* %1082, i64 %1068
  %1084 = mul nsw i32 %1064, -2
  %1085 = sub nsw i32 0, %1064
  %1086 = sext i32 %1085 to i64
  %1087 = sext i32 %1084 to i64
  br label %1088

; <label>:1088                                    ; preds = %.lr.ph2039, %1160
  %dtvvar0H.282037 = phi double [ %dtvvar0H.272043, %.lr.ph2039 ], [ %dtvvar0H.29, %1160 ]
  %_i57.02036 = phi i32 [ 0, %.lr.ph2039 ], [ %1210, %1160 ]
  %_radius64.02035 = phi double* [ %1083, %.lr.ph2039 ], [ %1206, %1160 ]
  %_xyz65.02034 = phi double* [ %1081, %.lr.ph2039 ], [ %1207, %1160 ]
  %_to66.02033 = phi i8* [ %1079, %.lr.ph2039 ], [ %1208, %1160 ]
  %_from67.02032 = phi i8* [ %1075, %.lr.ph2039 ], [ %1209, %1160 ]
  %1089 = load double* %_radius64.02035, align 8, !tbaa !15
  %1090 = getelementptr inbounds double* %_radius64.02035, i64 %1086
  %1091 = load double* %1090, align 8, !tbaa !15
  %1092 = insertelement <2 x double> undef, double %1091, i32 0
  %1093 = insertelement <2 x double> %1092, double %1089, i32 1
  %1094 = fdiv <2 x double> <double 1.000000e+00, double 1.000000e+00>, %1093
  br i1 %105, label %1096, label %._crit_edge2579

._crit_edge2579:                                  ; preds = %1088
  %.pre2580 = load double* %_xyz65.02034, align 8, !tbaa !15
  %.phi.trans.insert2581 = getelementptr inbounds double* %_xyz65.02034, i64 %1086
  %.pre2582 = load double* %.phi.trans.insert2581, align 8, !tbaa !15
  %.phi.trans.insert2583 = getelementptr inbounds i8* %_to66.02033, i64 %1086
  %.pre2584 = load i8* %.phi.trans.insert2583, align 1, !tbaa !21
  %.pre2585 = load double* %109, align 16, !tbaa !15
  %.phi.trans.insert2586 = getelementptr inbounds i8* %_from67.02032, i64 %1086
  %.pre2587 = load i8* %.phi.trans.insert2586, align 1, !tbaa !21
  %1095 = fmul <2 x double> %1094, %1094
  br label %1160

; <label>:1096                                    ; preds = %1088
  %1097 = load double* %108, align 16, !tbaa !15
  %1098 = fmul double %107, %1097
  %1099 = load double* %_xyz65.02034, align 8, !tbaa !15
  %1100 = fmul <2 x double> %1094, %1094
  %1101 = extractelement <2 x double> %1100, i32 1
  %1102 = fmul double %1101, %1099
  %1103 = getelementptr inbounds double* %_xyz65.02034, i64 %1086
  %1104 = load double* %1103, align 8, !tbaa !15
  %1105 = extractelement <2 x double> %1100, i32 0
  %1106 = fmul double %1105, %1104
  %1107 = fadd double %1102, %1106
  %1108 = fmul double %1098, %1107
  %1109 = fsub double 1.000000e+00, %1108
  %1110 = fadd double %1108, 1.000000e+00
  %1111 = fdiv double %1109, %1110
  %1112 = getelementptr inbounds i8* %_to66.02033, i64 %1086
  %1113 = load i8* %1112, align 1, !tbaa !21
  %1114 = zext i8 %1113 to i32
  %1115 = getelementptr inbounds i8* %_to66.02033, i64 %1087
  %1116 = load i8* %1115, align 1, !tbaa !21
  %1117 = zext i8 %1116 to i32
  %1118 = add nuw nsw i32 %1117, %1114
  %1119 = getelementptr inbounds i8* %_from67.02032, i64 %1086
  %1120 = load i8* %1119, align 1, !tbaa !21
  %1121 = zext i8 %1120 to i32
  %1122 = add nuw nsw i32 %1118, %1121
  %1123 = getelementptr inbounds i8* %_from67.02032, i64 %1087
  %1124 = load i8* %1123, align 1, !tbaa !21
  %1125 = zext i8 %1124 to i32
  %1126 = add nuw nsw i32 %1122, %1125
  %1127 = sitofp i32 %1126 to double
  %1128 = fmul double %1127, 2.500000e-01
  %1129 = fsub double %1128, %var0
  %1130 = fmul double %32, %1129
  %1131 = sub nsw i32 %1114, %1121
  %1132 = sitofp i32 %1131 to double
  %1133 = fmul double %1091, %1132
  %1134 = getelementptr inbounds double* %_radius64.02035, i64 %1087
  %1135 = load double* %1134, align 8, !tbaa !15
  %1136 = sub nsw i32 %1117, %1125
  %1137 = sitofp i32 %1136 to double
  %1138 = fmul double %1135, %1137
  %1139 = fadd double %1133, %1138
  %1140 = fmul double %1139, 5.000000e-01
  %1141 = fadd double %1130, %1140
  %1142 = sub nsw i32 %1114, %1117
  %1143 = add nsw i32 %1142, %1121
  %1144 = sub nsw i32 %1143, %1125
  %1145 = sitofp i32 %1144 to double
  %1146 = fmul double %1145, 2.500000e-01
  %1147 = load double* %109, align 16, !tbaa !15
  %1148 = fmul double %1147, %1146
  %1149 = fmul double %1091, %1091
  %1150 = fdiv double %1149, %1104
  %1151 = fmul double %1135, %1135
  %1152 = getelementptr inbounds double* %_xyz65.02034, i64 %1087
  %1153 = load double* %1152, align 8, !tbaa !15
  %1154 = fdiv double %1151, %1153
  %1155 = fadd double %1150, %1154
  %1156 = fmul double %1148, %1155
  %1157 = fadd double %1141, %1156
  %1158 = fmul double %1111, %1157
  %1159 = fadd double %34, %1158
  br label %1160

; <label>:1160                                    ; preds = %._crit_edge2579, %1096
  %1161 = phi i8 [ %.pre2587, %._crit_edge2579 ], [ %1120, %1096 ]
  %1162 = phi double [ %.pre2585, %._crit_edge2579 ], [ %1147, %1096 ]
  %1163 = phi i8 [ %.pre2584, %._crit_edge2579 ], [ %1113, %1096 ]
  %1164 = phi double [ %.pre2582, %._crit_edge2579 ], [ %1104, %1096 ]
  %1165 = phi double [ %.pre2580, %._crit_edge2579 ], [ %1099, %1096 ]
  %dtvvar0H.29 = phi double [ %dtvvar0H.282037, %._crit_edge2579 ], [ %1159, %1096 ]
  %1166 = phi <2 x double> [ %1095, %._crit_edge2579 ], [ %1100, %1096 ]
  %1167 = extractelement <2 x double> %1166, i32 1
  %1168 = fmul double %1167, %1165
  %1169 = extractelement <2 x double> %1166, i32 0
  %1170 = fmul double %1169, %1164
  %1171 = fadd double %1168, %1170
  %1172 = fmul double %dtvvar0H.29, %1171
  %1173 = zext i8 %1163 to i32
  %1174 = sitofp i32 %1173 to double
  %1175 = extractelement <2 x double> %1094, i32 0
  %1176 = fmul double %1175, %1164
  %1177 = fmul double %33, %1175
  %1178 = fadd double %1177, 1.000000e+00
  %1179 = fmul double %1178, %1176
  %1180 = fsub double %1162, %1179
  %1181 = fmul double %1174, %1180
  %1182 = fadd double %1172, %1181
  %1183 = load i8* %_from67.02032, align 1, !tbaa !21
  %1184 = zext i8 %1183 to i32
  %1185 = sitofp i32 %1184 to double
  %1186 = extractelement <2 x double> %1094, i32 1
  %1187 = fmul double %1186, %1165
  %1188 = fmul double %33, %1186
  %1189 = fsub double 1.000000e+00, %1188
  %1190 = fmul double %1189, %1187
  %1191 = fsub double %1190, %1162
  %1192 = fmul double %1191, %1185
  %1193 = fadd double %1182, %1192
  %1194 = zext i8 %1161 to i32
  %1195 = sitofp i32 %1194 to double
  %1196 = fsub double 1.000000e+00, %1177
  %1197 = fmul double %1196, %1176
  %1198 = fadd double %1162, %1197
  %1199 = fmul double %1198, %1195
  %1200 = fadd double %1193, %1199
  %1201 = fadd double %1188, 1.000000e+00
  %1202 = fmul double %1201, %1187
  %1203 = fadd double %1202, %1162
  %1204 = fdiv double %1200, %1203
  %1205 = fptoui double %1204 to i8
  store i8 %1205, i8* %_to66.02033, align 1, !tbaa !21
  %1206 = getelementptr inbounds double* %_radius64.02035, i64 1
  %1207 = getelementptr inbounds double* %_xyz65.02034, i64 1
  %1208 = getelementptr inbounds i8* %_to66.02033, i64 1
  %1209 = getelementptr inbounds i8* %_from67.02032, i64 1
  %1210 = add nuw nsw i32 %_i57.02036, 1
  %1211 = load i32** %93, align 8, !tbaa !17
  %1212 = load i32* %1211, align 4, !tbaa !7
  %1213 = icmp slt i32 %1210, %1212
  br i1 %1213, label %1088, label %._crit_edge2040

._crit_edge2040:                                  ; preds = %1160, %1060
  %1214 = phi i32 [ %1061, %1060 ], [ %1212, %1160 ]
  %1215 = phi i32* [ %1063, %1060 ], [ %1211, %1160 ]
  %dtvvar0H.28.lcssa = phi double [ %dtvvar0H.272043, %1060 ], [ %dtvvar0H.29, %1160 ]
  %1216 = add nuw nsw i32 %_j58.02042, 1
  %1217 = getelementptr inbounds i32* %1215, i64 1
  %1218 = load i32* %1217, align 4, !tbaa !7
  %1219 = icmp slt i32 %1216, %1218
  br i1 %1219, label %1060, label %._crit_edge2045

._crit_edge2045:                                  ; preds = %._crit_edge2040, %.preheader
  %1220 = phi i32* [ %1056, %.preheader ], [ %1215, %._crit_edge2040 ]
  %dtvvar0H.27.lcssa = phi double [ %dtvvar0H.262049, %.preheader ], [ %dtvvar0H.28.lcssa, %._crit_edge2040 ]
  %1221 = add nsw i32 %_k59.02047, 1
  %1222 = getelementptr inbounds i32* %1220, i64 2
  %1223 = load i32* %1222, align 4, !tbaa !7
  %1224 = icmp slt i32 %1221, %1223
  br i1 %1224, label %.preheader, label %.loopexit873

; <label>:1225                                    ; preds = %177
  br i1 %96, label %1228, label %1226

; <label>:1226                                    ; preds = %1225
  %1227 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 1500, i8* getelementptr inbounds ([88 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([58 x i8]* @.str12, i64 0, i64 0), i32 %7) #5
  br label %.loopexit947

; <label>:1228                                    ; preds = %1225
  %1229 = bitcast [6 x i32]* %doBC to i64*
  %1230 = load i64* %1229, align 16
  %1231 = trunc i64 %1230 to i32
  %1232 = icmp eq i32 %1231, 0
  %1233 = lshr i64 %1230, 32
  %1234 = trunc i64 %1233 to i32
  br i1 %1232, label %1392, label %1235

; <label>:1235                                    ; preds = %1228
  %1236 = load i32** %93, align 8, !tbaa !17
  %1237 = getelementptr inbounds i32* %1236, i64 2
  %1238 = load i32* %1237, align 4, !tbaa !7
  %1239 = icmp sgt i32 %1238, 0
  br i1 %1239, label %.lr.ph1826, label %.loopexit888

.lr.ph1826:                                       ; preds = %1235
  %1240 = getelementptr inbounds i32* %1236, i64 1
  %1241 = load double** %86, align 8, !tbaa !13
  %1242 = load double** %115, align 16, !tbaa !13
  %1243 = load double* %108, align 16, !tbaa !15
  %1244 = fmul double %107, %1243
  %1245 = load double* %109, align 16, !tbaa !15
  br label %1247

.loopexit837:                                     ; preds = %.loopexit807, %1247
  %dtvvar0H.31.lcssa = phi double [ %dtvvar0H.301823, %1247 ], [ %dtvvar0H.32.lcssa, %.loopexit807 ]
  %1246 = icmp sgt i32 %_k73.01824.in, 1
  br i1 %1246, label %1247, label %.loopexit888

; <label>:1247                                    ; preds = %.lr.ph1826, %.loopexit837
  %_k73.01824.in = phi i32 [ %1238, %.lr.ph1826 ], [ %_k73.01824, %.loopexit837 ]
  %dtvvar0H.301823 = phi double [ %dtvvar0H.02051, %.lr.ph1826 ], [ %dtvvar0H.31.lcssa, %.loopexit837 ]
  %_k73.01824 = add nsw i32 %_k73.01824.in, -1
  %1248 = load i32* %1240, align 4, !tbaa !7
  %1249 = icmp sgt i32 %1248, 0
  br i1 %1249, label %.lr.ph1820, label %.loopexit837

.lr.ph1820:                                       ; preds = %1247
  %1250 = load i8**** %38, align 8, !tbaa !12
  %1251 = getelementptr inbounds i8*** %1250, i64 %indvars.iv2111
  %1252 = bitcast i8*** %1251 to i32***
  %1253 = load i32*** %1252, align 8, !tbaa !13
  %1254 = load i32** %1253, align 8, !tbaa !13
  %1255 = getelementptr inbounds i8*** %1250, i64 %indvars.iv2113
  %1256 = load i8*** %1255, align 8, !tbaa !13
  %1257 = getelementptr inbounds i8** %1256, i64 %.
  %1258 = bitcast i8** %1257 to i32**
  %1259 = load i32** %1258, align 8, !tbaa !13
  br label %1261

.loopexit807:                                     ; preds = %1345, %1261
  %dtvvar0H.32.lcssa = phi double [ %dtvvar0H.311817, %1261 ], [ %dtvvar0H.33, %1345 ]
  %1260 = icmp sgt i32 %_j72.01818.in, 1
  br i1 %1260, label %.loopexit807._crit_edge, label %.loopexit837

.loopexit807._crit_edge:                          ; preds = %.loopexit807
  %.pre2596 = load i32* %1240, align 4, !tbaa !7
  br label %1261

; <label>:1261                                    ; preds = %.loopexit807._crit_edge, %.lr.ph1820
  %1262 = phi i32 [ %1248, %.lr.ph1820 ], [ %.pre2596, %.loopexit807._crit_edge ]
  %_j72.01818.in = phi i32 [ %1248, %.lr.ph1820 ], [ %_j72.01818, %.loopexit807._crit_edge ]
  %dtvvar0H.311817 = phi double [ %dtvvar0H.301823, %.lr.ph1820 ], [ %dtvvar0H.32.lcssa, %.loopexit807._crit_edge ]
  %_j72.01818 = add nsw i32 %_j72.01818.in, -1
  %1263 = load i32* %113, align 4, !tbaa !7
  %1264 = load i32* %114, align 4, !tbaa !7
  %1265 = add nsw i32 %1264, -1
  %1266 = load i32* %1236, align 4, !tbaa !7
  %1267 = mul nsw i32 %1262, %_k73.01824
  %1268 = add nsw i32 %1267, %_j72.01818
  %1269 = mul nsw i32 %1268, %1266
  %1270 = add nsw i32 %1269, %1265
  %1271 = sext i32 %1270 to i64
  %1272 = icmp sgt i32 %1264, 0
  br i1 %1272, label %.lr.ph1814, label %.loopexit807

.lr.ph1814:                                       ; preds = %1261
  %1273 = getelementptr inbounds i32* %1259, i64 %1271
  %1274 = getelementptr inbounds i32* %1254, i64 %1271
  %1275 = getelementptr inbounds double* %1242, i64 %1271
  %1276 = getelementptr inbounds double* %1241, i64 %1271
  %1277 = shl nsw i32 %1263, 1
  %1278 = sext i32 %1263 to i64
  %1279 = sext i32 %1277 to i64
  br label %1280

; <label>:1280                                    ; preds = %.lr.ph1814, %1345
  %dtvvar0H.321812 = phi double [ %dtvvar0H.311817, %.lr.ph1814 ], [ %dtvvar0H.33, %1345 ]
  %_i71.01811 = phi i32 [ %1265, %.lr.ph1814 ], [ %1390, %1345 ]
  %_radius78.01810 = phi double* [ %1276, %.lr.ph1814 ], [ %1386, %1345 ]
  %_xyz79.01809 = phi double* [ %1275, %.lr.ph1814 ], [ %1387, %1345 ]
  %_to80.01808 = phi i32* [ %1274, %.lr.ph1814 ], [ %1388, %1345 ]
  %_from81.01807 = phi i32* [ %1273, %.lr.ph1814 ], [ %1389, %1345 ]
  %1281 = load double* %_radius78.01810, align 8, !tbaa !15
  %1282 = getelementptr inbounds double* %_radius78.01810, i64 %1278
  %1283 = load double* %1282, align 8, !tbaa !15
  %1284 = insertelement <2 x double> undef, double %1283, i32 0
  %1285 = insertelement <2 x double> %1284, double %1281, i32 1
  %1286 = fdiv <2 x double> <double 1.000000e+00, double 1.000000e+00>, %1285
  %1287 = load double* %_xyz79.01809, align 8, !tbaa !15
  br i1 %105, label %1289, label %._crit_edge2470

._crit_edge2470:                                  ; preds = %1280
  %.phi.trans.insert2472 = getelementptr inbounds double* %_xyz79.01809, i64 %1278
  %.pre2473 = load double* %.phi.trans.insert2472, align 8, !tbaa !15
  %.phi.trans.insert2474 = getelementptr inbounds i32* %_to80.01808, i64 %1278
  %.pre2475 = load i32* %.phi.trans.insert2474, align 4, !tbaa !7
  %.phi.trans.insert2476 = getelementptr inbounds i32* %_from81.01807, i64 %1278
  %.pre2477 = load i32* %.phi.trans.insert2476, align 4, !tbaa !7
  %1288 = fmul <2 x double> %1286, %1286
  br label %1345

; <label>:1289                                    ; preds = %1280
  %1290 = fmul <2 x double> %1286, %1286
  %1291 = extractelement <2 x double> %1290, i32 1
  %1292 = fmul double %1291, %1287
  %1293 = getelementptr inbounds double* %_xyz79.01809, i64 %1278
  %1294 = load double* %1293, align 8, !tbaa !15
  %1295 = extractelement <2 x double> %1290, i32 0
  %1296 = fmul double %1295, %1294
  %1297 = fadd double %1292, %1296
  %1298 = fmul double %1244, %1297
  %1299 = fadd double %1298, 1.000000e+00
  %1300 = fsub double 1.000000e+00, %1298
  %1301 = fdiv double %1299, %1300
  %1302 = getelementptr inbounds i32* %_to80.01808, i64 %1278
  %1303 = load i32* %1302, align 4, !tbaa !7
  %1304 = getelementptr inbounds i32* %_to80.01808, i64 %1279
  %1305 = load i32* %1304, align 4, !tbaa !7
  %1306 = add nsw i32 %1305, %1303
  %1307 = getelementptr inbounds i32* %_from81.01807, i64 %1278
  %1308 = load i32* %1307, align 4, !tbaa !7
  %1309 = add nsw i32 %1306, %1308
  %1310 = getelementptr inbounds i32* %_from81.01807, i64 %1279
  %1311 = load i32* %1310, align 4, !tbaa !7
  %1312 = add nsw i32 %1309, %1311
  %1313 = sitofp i32 %1312 to double
  %1314 = fmul double %1313, 2.500000e-01
  %1315 = fsub double %1314, %var0
  %1316 = fmul double %32, %1315
  %1317 = sub nsw i32 %1303, %1308
  %1318 = sitofp i32 %1317 to double
  %1319 = fmul double %1283, %1318
  %1320 = getelementptr inbounds double* %_radius78.01810, i64 %1279
  %1321 = load double* %1320, align 8, !tbaa !15
  %1322 = sub nsw i32 %1305, %1311
  %1323 = sitofp i32 %1322 to double
  %1324 = fmul double %1321, %1323
  %1325 = fadd double %1319, %1324
  %1326 = fmul double %1325, 5.000000e-01
  %1327 = fadd double %1316, %1326
  %1328 = sub i32 %1305, %1303
  %1329 = sub i32 %1328, %1308
  %1330 = add i32 %1329, %1311
  %1331 = sitofp i32 %1330 to double
  %1332 = fmul double %1331, 2.500000e-01
  %1333 = fmul double %1245, %1332
  %1334 = fmul double %1283, %1283
  %1335 = fdiv double %1334, %1294
  %1336 = fmul double %1321, %1321
  %1337 = getelementptr inbounds double* %_xyz79.01809, i64 %1279
  %1338 = load double* %1337, align 8, !tbaa !15
  %1339 = fdiv double %1336, %1338
  %1340 = fadd double %1335, %1339
  %1341 = fmul double %1333, %1340
  %1342 = fadd double %1327, %1341
  %1343 = fmul double %1301, %1342
  %1344 = fadd double %34, %1343
  br label %1345

; <label>:1345                                    ; preds = %._crit_edge2470, %1289
  %1346 = phi i32 [ %.pre2477, %._crit_edge2470 ], [ %1308, %1289 ]
  %1347 = phi i32 [ %.pre2475, %._crit_edge2470 ], [ %1303, %1289 ]
  %1348 = phi double [ %.pre2473, %._crit_edge2470 ], [ %1294, %1289 ]
  %dtvvar0H.33 = phi double [ %dtvvar0H.321812, %._crit_edge2470 ], [ %1344, %1289 ]
  %1349 = phi <2 x double> [ %1288, %._crit_edge2470 ], [ %1290, %1289 ]
  %1350 = extractelement <2 x double> %1349, i32 1
  %1351 = fmul double %1350, %1287
  %1352 = extractelement <2 x double> %1349, i32 0
  %1353 = fmul double %1352, %1348
  %1354 = fadd double %1351, %1353
  %1355 = fmul double %dtvvar0H.33, %1354
  %1356 = sitofp i32 %1347 to double
  %1357 = extractelement <2 x double> %1286, i32 0
  %1358 = fmul double %1357, %1348
  %1359 = fmul double %33, %1357
  %1360 = fadd double %1359, 1.000000e+00
  %1361 = fmul double %1360, %1358
  %1362 = fadd double %1245, %1361
  %1363 = fmul double %1356, %1362
  %1364 = fsub double %1355, %1363
  %1365 = load i32* %_from81.01807, align 4, !tbaa !7
  %1366 = sitofp i32 %1365 to double
  %1367 = extractelement <2 x double> %1286, i32 1
  %1368 = fmul double %1367, %1287
  %1369 = fmul double %33, %1367
  %1370 = fsub double 1.000000e+00, %1369
  %1371 = fmul double %1370, %1368
  %1372 = fadd double %1371, %1245
  %1373 = fmul double %1372, %1366
  %1374 = fadd double %1364, %1373
  %1375 = sitofp i32 %1346 to double
  %1376 = fsub double 1.000000e+00, %1359
  %1377 = fmul double %1376, %1358
  %1378 = fsub double %1245, %1377
  %1379 = fmul double %1378, %1375
  %1380 = fsub double %1374, %1379
  %1381 = fadd double %1369, 1.000000e+00
  %1382 = fmul double %1381, %1368
  %1383 = fsub double %1382, %1245
  %1384 = fdiv double %1380, %1383
  %1385 = fptosi double %1384 to i32
  store i32 %1385, i32* %_to80.01808, align 4, !tbaa !7
  %1386 = getelementptr inbounds double* %_radius78.01810, i64 -1
  %1387 = getelementptr inbounds double* %_xyz79.01809, i64 -1
  %1388 = getelementptr inbounds i32* %_to80.01808, i64 -1
  %1389 = getelementptr inbounds i32* %_from81.01807, i64 -1
  %1390 = add nsw i32 %_i71.01811, -1
  %1391 = icmp sgt i32 %_i71.01811, 0
  br i1 %1391, label %1280, label %.loopexit807

.loopexit888:                                     ; preds = %.loopexit837, %1235
  %dtvvar0H.30.lcssa = phi double [ %dtvvar0H.02051, %1235 ], [ %dtvvar0H.31.lcssa, %.loopexit837 ]
  %.pre2478 = load i32* %97, align 4, !tbaa !7
  br label %1392

; <label>:1392                                    ; preds = %.loopexit888, %1228
  %1393 = phi i32 [ %1234, %1228 ], [ %.pre2478, %.loopexit888 ]
  %dtvvar0H.34 = phi double [ %dtvvar0H.02051, %1228 ], [ %dtvvar0H.30.lcssa, %.loopexit888 ]
  %1394 = icmp eq i32 %1393, 0
  br i1 %1394, label %.loopexit887, label %.preheader886

.preheader886:                                    ; preds = %1392
  %1395 = load i32** %93, align 8, !tbaa !17
  %1396 = getelementptr inbounds i32* %1395, i64 2
  %1397 = load i32* %1396, align 4, !tbaa !7
  %1398 = icmp sgt i32 %1397, 0
  br i1 %1398, label %.preheader836.lr.ph, label %.loopexit887

.preheader836.lr.ph:                              ; preds = %.preheader886
  %1399 = getelementptr inbounds i32* %1395, i64 1
  %1400 = load double** %86, align 8, !tbaa !13
  %1401 = load double** %115, align 16, !tbaa !13
  %1402 = load double* %108, align 16, !tbaa !15
  %1403 = fmul double %107, %1402
  %1404 = load double* %109, align 16, !tbaa !15
  %.pre2616 = load i32* %1399, align 4, !tbaa !7
  br label %.preheader836

.preheader836:                                    ; preds = %.preheader836.lr.ph, %1556
  %1405 = phi i32 [ %.pre2616, %.preheader836.lr.ph ], [ %1557, %1556 ]
  %1406 = phi i32 [ %1397, %.preheader836.lr.ph ], [ %1558, %1556 ]
  %dtvvar0H.351845 = phi double [ %dtvvar0H.34, %.preheader836.lr.ph ], [ %dtvvar0H.36.lcssa, %1556 ]
  %_k87.01843 = phi i32 [ 0, %.preheader836.lr.ph ], [ %1559, %1556 ]
  %1407 = icmp sgt i32 %1405, 0
  br i1 %1407, label %.lr.ph1840, label %1556

.lr.ph1840:                                       ; preds = %.preheader836
  %1408 = load i8**** %38, align 8, !tbaa !12
  %1409 = getelementptr inbounds i8*** %1408, i64 %indvars.iv2111
  %1410 = bitcast i8*** %1409 to i32***
  %1411 = load i32*** %1410, align 8, !tbaa !13
  %1412 = load i32** %1411, align 8, !tbaa !13
  %1413 = getelementptr inbounds i8*** %1408, i64 %indvars.iv2113
  %1414 = load i8*** %1413, align 8, !tbaa !13
  %1415 = getelementptr inbounds i8** %1414, i64 %.
  %1416 = bitcast i8** %1415 to i32**
  %1417 = load i32** %1416, align 8, !tbaa !13
  %.pre2597 = load i32* %1395, align 4, !tbaa !7
  br label %1418

; <label>:1418                                    ; preds = %.lr.ph1840, %1551
  %1419 = phi i32 [ %.pre2597, %.lr.ph1840 ], [ %1553, %1551 ]
  %1420 = phi i32 [ %1405, %.lr.ph1840 ], [ %1552, %1551 ]
  %dtvvar0H.361839 = phi double [ %dtvvar0H.351845, %.lr.ph1840 ], [ %dtvvar0H.37.lcssa, %1551 ]
  %_j86.01838 = phi i32 [ 0, %.lr.ph1840 ], [ %1554, %1551 ]
  %1421 = load i32* %113, align 4, !tbaa !7
  %1422 = load i32* %114, align 4, !tbaa !7
  %1423 = sub nsw i32 %1419, %1422
  %1424 = mul nsw i32 %1420, %_k87.01843
  %1425 = add nsw i32 %1424, %_j86.01838
  %1426 = mul nsw i32 %1419, %1425
  %1427 = add nsw i32 %1423, %1426
  %1428 = sext i32 %1427 to i64
  %1429 = icmp sgt i32 %1422, 0
  br i1 %1429, label %.lr.ph1835, label %1551

.lr.ph1835:                                       ; preds = %1418
  %1430 = getelementptr inbounds i32* %1417, i64 %1428
  %1431 = getelementptr inbounds i32* %1412, i64 %1428
  %1432 = getelementptr inbounds double* %1401, i64 %1428
  %1433 = getelementptr inbounds double* %1400, i64 %1428
  %1434 = mul nsw i32 %1421, -2
  %1435 = sub nsw i32 0, %1421
  %1436 = sext i32 %1435 to i64
  %1437 = sext i32 %1434 to i64
  br label %1438

; <label>:1438                                    ; preds = %.lr.ph1835, %1503
  %dtvvar0H.371833 = phi double [ %dtvvar0H.361839, %.lr.ph1835 ], [ %dtvvar0H.38, %1503 ]
  %_i85.01832 = phi i32 [ %1423, %.lr.ph1835 ], [ %1548, %1503 ]
  %_radius92.01831 = phi double* [ %1433, %.lr.ph1835 ], [ %1544, %1503 ]
  %_xyz93.01830 = phi double* [ %1432, %.lr.ph1835 ], [ %1545, %1503 ]
  %_to94.01829 = phi i32* [ %1431, %.lr.ph1835 ], [ %1546, %1503 ]
  %_from95.01828 = phi i32* [ %1430, %.lr.ph1835 ], [ %1547, %1503 ]
  %1439 = load double* %_radius92.01831, align 8, !tbaa !15
  %1440 = getelementptr inbounds double* %_radius92.01831, i64 %1436
  %1441 = load double* %1440, align 8, !tbaa !15
  %1442 = insertelement <2 x double> undef, double %1441, i32 0
  %1443 = insertelement <2 x double> %1442, double %1439, i32 1
  %1444 = fdiv <2 x double> <double 1.000000e+00, double 1.000000e+00>, %1443
  %1445 = load double* %_xyz93.01830, align 8, !tbaa !15
  br i1 %105, label %1447, label %._crit_edge2479

._crit_edge2479:                                  ; preds = %1438
  %.phi.trans.insert2481 = getelementptr inbounds double* %_xyz93.01830, i64 %1436
  %.pre2482 = load double* %.phi.trans.insert2481, align 8, !tbaa !15
  %.phi.trans.insert2483 = getelementptr inbounds i32* %_to94.01829, i64 %1436
  %.pre2484 = load i32* %.phi.trans.insert2483, align 4, !tbaa !7
  %.phi.trans.insert2485 = getelementptr inbounds i32* %_from95.01828, i64 %1436
  %.pre2486 = load i32* %.phi.trans.insert2485, align 4, !tbaa !7
  %1446 = fmul <2 x double> %1444, %1444
  br label %1503

; <label>:1447                                    ; preds = %1438
  %1448 = fmul <2 x double> %1444, %1444
  %1449 = extractelement <2 x double> %1448, i32 1
  %1450 = fmul double %1449, %1445
  %1451 = getelementptr inbounds double* %_xyz93.01830, i64 %1436
  %1452 = load double* %1451, align 8, !tbaa !15
  %1453 = extractelement <2 x double> %1448, i32 0
  %1454 = fmul double %1453, %1452
  %1455 = fadd double %1450, %1454
  %1456 = fmul double %1403, %1455
  %1457 = fsub double 1.000000e+00, %1456
  %1458 = fadd double %1456, 1.000000e+00
  %1459 = fdiv double %1457, %1458
  %1460 = getelementptr inbounds i32* %_to94.01829, i64 %1436
  %1461 = load i32* %1460, align 4, !tbaa !7
  %1462 = getelementptr inbounds i32* %_to94.01829, i64 %1437
  %1463 = load i32* %1462, align 4, !tbaa !7
  %1464 = add nsw i32 %1463, %1461
  %1465 = getelementptr inbounds i32* %_from95.01828, i64 %1436
  %1466 = load i32* %1465, align 4, !tbaa !7
  %1467 = add nsw i32 %1464, %1466
  %1468 = getelementptr inbounds i32* %_from95.01828, i64 %1437
  %1469 = load i32* %1468, align 4, !tbaa !7
  %1470 = add nsw i32 %1467, %1469
  %1471 = sitofp i32 %1470 to double
  %1472 = fmul double %1471, 2.500000e-01
  %1473 = fsub double %1472, %var0
  %1474 = fmul double %32, %1473
  %1475 = sub nsw i32 %1461, %1466
  %1476 = sitofp i32 %1475 to double
  %1477 = fmul double %1441, %1476
  %1478 = getelementptr inbounds double* %_radius92.01831, i64 %1437
  %1479 = load double* %1478, align 8, !tbaa !15
  %1480 = sub nsw i32 %1463, %1469
  %1481 = sitofp i32 %1480 to double
  %1482 = fmul double %1479, %1481
  %1483 = fadd double %1477, %1482
  %1484 = fmul double %1483, 5.000000e-01
  %1485 = fadd double %1474, %1484
  %1486 = sub i32 %1461, %1463
  %1487 = add nsw i32 %1486, %1466
  %1488 = sub i32 %1487, %1469
  %1489 = sitofp i32 %1488 to double
  %1490 = fmul double %1489, 2.500000e-01
  %1491 = fmul double %1404, %1490
  %1492 = fmul double %1441, %1441
  %1493 = fdiv double %1492, %1452
  %1494 = fmul double %1479, %1479
  %1495 = getelementptr inbounds double* %_xyz93.01830, i64 %1437
  %1496 = load double* %1495, align 8, !tbaa !15
  %1497 = fdiv double %1494, %1496
  %1498 = fadd double %1493, %1497
  %1499 = fmul double %1491, %1498
  %1500 = fadd double %1485, %1499
  %1501 = fmul double %1459, %1500
  %1502 = fadd double %34, %1501
  br label %1503

; <label>:1503                                    ; preds = %._crit_edge2479, %1447
  %1504 = phi i32 [ %.pre2486, %._crit_edge2479 ], [ %1466, %1447 ]
  %1505 = phi i32 [ %.pre2484, %._crit_edge2479 ], [ %1461, %1447 ]
  %1506 = phi double [ %.pre2482, %._crit_edge2479 ], [ %1452, %1447 ]
  %dtvvar0H.38 = phi double [ %dtvvar0H.371833, %._crit_edge2479 ], [ %1502, %1447 ]
  %1507 = phi <2 x double> [ %1446, %._crit_edge2479 ], [ %1448, %1447 ]
  %1508 = extractelement <2 x double> %1507, i32 1
  %1509 = fmul double %1508, %1445
  %1510 = extractelement <2 x double> %1507, i32 0
  %1511 = fmul double %1510, %1506
  %1512 = fadd double %1509, %1511
  %1513 = fmul double %dtvvar0H.38, %1512
  %1514 = sitofp i32 %1505 to double
  %1515 = extractelement <2 x double> %1444, i32 0
  %1516 = fmul double %1515, %1506
  %1517 = fmul double %33, %1515
  %1518 = fadd double %1517, 1.000000e+00
  %1519 = fmul double %1518, %1516
  %1520 = fsub double %1404, %1519
  %1521 = fmul double %1514, %1520
  %1522 = fadd double %1513, %1521
  %1523 = load i32* %_from95.01828, align 4, !tbaa !7
  %1524 = sitofp i32 %1523 to double
  %1525 = extractelement <2 x double> %1444, i32 1
  %1526 = fmul double %1525, %1445
  %1527 = fmul double %33, %1525
  %1528 = fsub double 1.000000e+00, %1527
  %1529 = fmul double %1528, %1526
  %1530 = fsub double %1529, %1404
  %1531 = fmul double %1530, %1524
  %1532 = fadd double %1522, %1531
  %1533 = sitofp i32 %1504 to double
  %1534 = fsub double 1.000000e+00, %1517
  %1535 = fmul double %1534, %1516
  %1536 = fadd double %1404, %1535
  %1537 = fmul double %1536, %1533
  %1538 = fadd double %1532, %1537
  %1539 = fadd double %1527, 1.000000e+00
  %1540 = fmul double %1539, %1526
  %1541 = fadd double %1540, %1404
  %1542 = fdiv double %1538, %1541
  %1543 = fptosi double %1542 to i32
  store i32 %1543, i32* %_to94.01829, align 4, !tbaa !7
  %1544 = getelementptr inbounds double* %_radius92.01831, i64 1
  %1545 = getelementptr inbounds double* %_xyz93.01830, i64 1
  %1546 = getelementptr inbounds i32* %_to94.01829, i64 1
  %1547 = getelementptr inbounds i32* %_from95.01828, i64 1
  %1548 = add nsw i32 %_i85.01832, 1
  %1549 = load i32* %1395, align 4, !tbaa !7
  %1550 = icmp slt i32 %1548, %1549
  br i1 %1550, label %1438, label %._crit_edge1836

._crit_edge1836:                                  ; preds = %1503
  %.pre2610 = load i32* %1399, align 4, !tbaa !7
  br label %1551

; <label>:1551                                    ; preds = %._crit_edge1836, %1418
  %1552 = phi i32 [ %.pre2610, %._crit_edge1836 ], [ %1420, %1418 ]
  %1553 = phi i32 [ %1549, %._crit_edge1836 ], [ %1419, %1418 ]
  %dtvvar0H.37.lcssa = phi double [ %dtvvar0H.38, %._crit_edge1836 ], [ %dtvvar0H.361839, %1418 ]
  %1554 = add nuw nsw i32 %_j86.01838, 1
  %1555 = icmp slt i32 %1554, %1552
  br i1 %1555, label %1418, label %._crit_edge1841

._crit_edge1841:                                  ; preds = %1551
  %.pre2487 = load i32* %1396, align 4, !tbaa !7
  br label %1556

; <label>:1556                                    ; preds = %._crit_edge1841, %.preheader836
  %1557 = phi i32 [ %1552, %._crit_edge1841 ], [ %1405, %.preheader836 ]
  %1558 = phi i32 [ %.pre2487, %._crit_edge1841 ], [ %1406, %.preheader836 ]
  %dtvvar0H.36.lcssa = phi double [ %dtvvar0H.37.lcssa, %._crit_edge1841 ], [ %dtvvar0H.351845, %.preheader836 ]
  %1559 = add nuw nsw i32 %_k87.01843, 1
  %1560 = icmp slt i32 %1559, %1558
  br i1 %1560, label %.preheader836, label %.loopexit887

.loopexit887:                                     ; preds = %1556, %.preheader886, %1392
  %dtvvar0H.39 = phi double [ %dtvvar0H.34, %1392 ], [ %dtvvar0H.34, %.preheader886 ], [ %dtvvar0H.36.lcssa, %1556 ]
  %1561 = bitcast i32* %98 to i64*
  %1562 = load i64* %1561, align 8
  %1563 = trunc i64 %1562 to i32
  %1564 = icmp eq i32 %1563, 0
  %1565 = lshr i64 %1562, 32
  %1566 = trunc i64 %1565 to i32
  br i1 %1564, label %1723, label %1567

; <label>:1567                                    ; preds = %.loopexit887
  %1568 = load i32** %93, align 8, !tbaa !17
  %1569 = getelementptr inbounds i32* %1568, i64 2
  %1570 = load i32* %1569, align 4, !tbaa !7
  %1571 = icmp sgt i32 %1570, 0
  br i1 %1571, label %.lr.ph1866, label %.loopexit885

.lr.ph1866:                                       ; preds = %1567
  %1572 = load double** %86, align 8, !tbaa !13
  %1573 = load double** %112, align 8, !tbaa !13
  %1574 = load double* %108, align 16, !tbaa !15
  %1575 = fmul double %107, %1574
  %1576 = load double* %109, align 16, !tbaa !15
  br label %1578

.loopexit835:                                     ; preds = %.loopexit806, %1578
  %dtvvar0H.41.lcssa = phi double [ %dtvvar0H.401863, %1578 ], [ %dtvvar0H.42.lcssa, %.loopexit806 ]
  %1577 = icmp sgt i32 %_k101.01864.in, 1
  br i1 %1577, label %1578, label %.loopexit885

; <label>:1578                                    ; preds = %.lr.ph1866, %.loopexit835
  %_k101.01864.in = phi i32 [ %1570, %.lr.ph1866 ], [ %_k101.01864, %.loopexit835 ]
  %dtvvar0H.401863 = phi double [ %dtvvar0H.39, %.lr.ph1866 ], [ %dtvvar0H.41.lcssa, %.loopexit835 ]
  %_k101.01864 = add nsw i32 %_k101.01864.in, -1
  %1579 = load i32* %110, align 4, !tbaa !7
  %1580 = icmp sgt i32 %1579, 0
  br i1 %1580, label %.lr.ph1860, label %.loopexit835

.lr.ph1860:                                       ; preds = %1578
  %1581 = getelementptr inbounds i32* %1568, i64 1
  %1582 = load i8**** %38, align 8, !tbaa !12
  %1583 = getelementptr inbounds i8*** %1582, i64 %indvars.iv2111
  %1584 = bitcast i8*** %1583 to i32***
  %1585 = load i32*** %1584, align 8, !tbaa !13
  %1586 = load i32** %1585, align 8, !tbaa !13
  %1587 = getelementptr inbounds i8*** %1582, i64 %indvars.iv2113
  %1588 = load i8*** %1587, align 8, !tbaa !13
  %1589 = getelementptr inbounds i8** %1588, i64 %.
  %1590 = bitcast i8** %1589 to i32**
  %1591 = load i32** %1590, align 8, !tbaa !13
  br label %1593

.loopexit806:                                     ; preds = %1676, %1593
  %dtvvar0H.42.lcssa = phi double [ %dtvvar0H.411857, %1593 ], [ %dtvvar0H.43, %1676 ]
  %1592 = icmp sgt i32 %_j100.01858.in, 1
  br i1 %1592, label %1593, label %.loopexit835

; <label>:1593                                    ; preds = %.lr.ph1860, %.loopexit806
  %_j100.01858.in = phi i32 [ %1579, %.lr.ph1860 ], [ %_j100.01858, %.loopexit806 ]
  %dtvvar0H.411857 = phi double [ %dtvvar0H.401863, %.lr.ph1860 ], [ %dtvvar0H.42.lcssa, %.loopexit806 ]
  %_j100.01858 = add nsw i32 %_j100.01858.in, -1
  %1594 = load i32* %111, align 4, !tbaa !7
  %1595 = load i32* %1568, align 4, !tbaa !7
  %1596 = add nsw i32 %1595, -1
  %1597 = load i32* %1581, align 4, !tbaa !7
  %1598 = mul nsw i32 %1597, %_k101.01864
  %1599 = add nsw i32 %1598, %_j100.01858
  %1600 = mul nsw i32 %1599, %1595
  %1601 = add nsw i32 %1600, %1596
  %1602 = sext i32 %1601 to i64
  %1603 = icmp sgt i32 %1595, 0
  br i1 %1603, label %.lr.ph1854, label %.loopexit806

.lr.ph1854:                                       ; preds = %1593
  %1604 = getelementptr inbounds i32* %1591, i64 %1602
  %1605 = getelementptr inbounds i32* %1586, i64 %1602
  %1606 = getelementptr inbounds double* %1573, i64 %1602
  %1607 = getelementptr inbounds double* %1572, i64 %1602
  %1608 = shl nsw i32 %1594, 1
  %1609 = sext i32 %1594 to i64
  %1610 = sext i32 %1608 to i64
  br label %1611

; <label>:1611                                    ; preds = %.lr.ph1854, %1676
  %dtvvar0H.421852 = phi double [ %dtvvar0H.411857, %.lr.ph1854 ], [ %dtvvar0H.43, %1676 ]
  %_i99.01851 = phi i32 [ %1596, %.lr.ph1854 ], [ %1721, %1676 ]
  %_radius106.01850 = phi double* [ %1607, %.lr.ph1854 ], [ %1717, %1676 ]
  %_xyz107.01849 = phi double* [ %1606, %.lr.ph1854 ], [ %1718, %1676 ]
  %_to108.01848 = phi i32* [ %1605, %.lr.ph1854 ], [ %1719, %1676 ]
  %_from109.01847 = phi i32* [ %1604, %.lr.ph1854 ], [ %1720, %1676 ]
  %1612 = load double* %_radius106.01850, align 8, !tbaa !15
  %1613 = getelementptr inbounds double* %_radius106.01850, i64 %1609
  %1614 = load double* %1613, align 8, !tbaa !15
  %1615 = insertelement <2 x double> undef, double %1614, i32 0
  %1616 = insertelement <2 x double> %1615, double %1612, i32 1
  %1617 = fdiv <2 x double> <double 1.000000e+00, double 1.000000e+00>, %1616
  %1618 = load double* %_xyz107.01849, align 8, !tbaa !15
  br i1 %105, label %1620, label %._crit_edge2488

._crit_edge2488:                                  ; preds = %1611
  %.phi.trans.insert2490 = getelementptr inbounds double* %_xyz107.01849, i64 %1609
  %.pre2491 = load double* %.phi.trans.insert2490, align 8, !tbaa !15
  %.phi.trans.insert2492 = getelementptr inbounds i32* %_to108.01848, i64 %1609
  %.pre2493 = load i32* %.phi.trans.insert2492, align 4, !tbaa !7
  %.phi.trans.insert2494 = getelementptr inbounds i32* %_from109.01847, i64 %1609
  %.pre2495 = load i32* %.phi.trans.insert2494, align 4, !tbaa !7
  %1619 = fmul <2 x double> %1617, %1617
  br label %1676

; <label>:1620                                    ; preds = %1611
  %1621 = fmul <2 x double> %1617, %1617
  %1622 = extractelement <2 x double> %1621, i32 1
  %1623 = fmul double %1622, %1618
  %1624 = getelementptr inbounds double* %_xyz107.01849, i64 %1609
  %1625 = load double* %1624, align 8, !tbaa !15
  %1626 = extractelement <2 x double> %1621, i32 0
  %1627 = fmul double %1626, %1625
  %1628 = fadd double %1623, %1627
  %1629 = fmul double %1575, %1628
  %1630 = fadd double %1629, 1.000000e+00
  %1631 = fsub double 1.000000e+00, %1629
  %1632 = fdiv double %1630, %1631
  %1633 = getelementptr inbounds i32* %_to108.01848, i64 %1609
  %1634 = load i32* %1633, align 4, !tbaa !7
  %1635 = getelementptr inbounds i32* %_to108.01848, i64 %1610
  %1636 = load i32* %1635, align 4, !tbaa !7
  %1637 = add nsw i32 %1636, %1634
  %1638 = getelementptr inbounds i32* %_from109.01847, i64 %1609
  %1639 = load i32* %1638, align 4, !tbaa !7
  %1640 = add nsw i32 %1637, %1639
  %1641 = getelementptr inbounds i32* %_from109.01847, i64 %1610
  %1642 = load i32* %1641, align 4, !tbaa !7
  %1643 = add nsw i32 %1640, %1642
  %1644 = sitofp i32 %1643 to double
  %1645 = fmul double %1644, 2.500000e-01
  %1646 = fsub double %1645, %var0
  %1647 = fmul double %32, %1646
  %1648 = sub nsw i32 %1634, %1639
  %1649 = sitofp i32 %1648 to double
  %1650 = fmul double %1614, %1649
  %1651 = getelementptr inbounds double* %_radius106.01850, i64 %1610
  %1652 = load double* %1651, align 8, !tbaa !15
  %1653 = sub nsw i32 %1636, %1642
  %1654 = sitofp i32 %1653 to double
  %1655 = fmul double %1652, %1654
  %1656 = fadd double %1650, %1655
  %1657 = fmul double %1656, 5.000000e-01
  %1658 = fadd double %1647, %1657
  %1659 = sub i32 %1636, %1634
  %1660 = sub i32 %1659, %1639
  %1661 = add i32 %1660, %1642
  %1662 = sitofp i32 %1661 to double
  %1663 = fmul double %1662, 2.500000e-01
  %1664 = fmul double %1576, %1663
  %1665 = fmul double %1614, %1614
  %1666 = fdiv double %1665, %1625
  %1667 = fmul double %1652, %1652
  %1668 = getelementptr inbounds double* %_xyz107.01849, i64 %1610
  %1669 = load double* %1668, align 8, !tbaa !15
  %1670 = fdiv double %1667, %1669
  %1671 = fadd double %1666, %1670
  %1672 = fmul double %1664, %1671
  %1673 = fadd double %1658, %1672
  %1674 = fmul double %1632, %1673
  %1675 = fadd double %34, %1674
  br label %1676

; <label>:1676                                    ; preds = %._crit_edge2488, %1620
  %1677 = phi i32 [ %.pre2495, %._crit_edge2488 ], [ %1639, %1620 ]
  %1678 = phi i32 [ %.pre2493, %._crit_edge2488 ], [ %1634, %1620 ]
  %1679 = phi double [ %.pre2491, %._crit_edge2488 ], [ %1625, %1620 ]
  %dtvvar0H.43 = phi double [ %dtvvar0H.421852, %._crit_edge2488 ], [ %1675, %1620 ]
  %1680 = phi <2 x double> [ %1619, %._crit_edge2488 ], [ %1621, %1620 ]
  %1681 = extractelement <2 x double> %1680, i32 1
  %1682 = fmul double %1681, %1618
  %1683 = extractelement <2 x double> %1680, i32 0
  %1684 = fmul double %1683, %1679
  %1685 = fadd double %1682, %1684
  %1686 = fmul double %dtvvar0H.43, %1685
  %1687 = sitofp i32 %1678 to double
  %1688 = extractelement <2 x double> %1617, i32 0
  %1689 = fmul double %1688, %1679
  %1690 = fmul double %33, %1688
  %1691 = fadd double %1690, 1.000000e+00
  %1692 = fmul double %1691, %1689
  %1693 = fadd double %1576, %1692
  %1694 = fmul double %1687, %1693
  %1695 = fsub double %1686, %1694
  %1696 = load i32* %_from109.01847, align 4, !tbaa !7
  %1697 = sitofp i32 %1696 to double
  %1698 = extractelement <2 x double> %1617, i32 1
  %1699 = fmul double %1698, %1618
  %1700 = fmul double %33, %1698
  %1701 = fsub double 1.000000e+00, %1700
  %1702 = fmul double %1701, %1699
  %1703 = fadd double %1702, %1576
  %1704 = fmul double %1703, %1697
  %1705 = fadd double %1695, %1704
  %1706 = sitofp i32 %1677 to double
  %1707 = fsub double 1.000000e+00, %1690
  %1708 = fmul double %1707, %1689
  %1709 = fsub double %1576, %1708
  %1710 = fmul double %1709, %1706
  %1711 = fsub double %1705, %1710
  %1712 = fadd double %1700, 1.000000e+00
  %1713 = fmul double %1712, %1699
  %1714 = fsub double %1713, %1576
  %1715 = fdiv double %1711, %1714
  %1716 = fptosi double %1715 to i32
  store i32 %1716, i32* %_to108.01848, align 4, !tbaa !7
  %1717 = getelementptr inbounds double* %_radius106.01850, i64 -1
  %1718 = getelementptr inbounds double* %_xyz107.01849, i64 -1
  %1719 = getelementptr inbounds i32* %_to108.01848, i64 -1
  %1720 = getelementptr inbounds i32* %_from109.01847, i64 -1
  %1721 = add nsw i32 %_i99.01851, -1
  %1722 = icmp sgt i32 %_i99.01851, 0
  br i1 %1722, label %1611, label %.loopexit806

.loopexit885:                                     ; preds = %.loopexit835, %1567
  %dtvvar0H.40.lcssa = phi double [ %dtvvar0H.39, %1567 ], [ %dtvvar0H.41.lcssa, %.loopexit835 ]
  %.pre2496 = load i32* %99, align 4, !tbaa !7
  br label %1723

; <label>:1723                                    ; preds = %.loopexit885, %.loopexit887
  %1724 = phi i32 [ %1566, %.loopexit887 ], [ %.pre2496, %.loopexit885 ]
  %dtvvar0H.44 = phi double [ %dtvvar0H.39, %.loopexit887 ], [ %dtvvar0H.40.lcssa, %.loopexit885 ]
  %1725 = icmp eq i32 %1724, 0
  br i1 %1725, label %.loopexit884, label %.preheader883

.preheader883:                                    ; preds = %1723
  %1726 = load i32** %93, align 8, !tbaa !17
  %1727 = getelementptr inbounds i32* %1726, i64 2
  %1728 = load i32* %1727, align 4, !tbaa !7
  %1729 = icmp sgt i32 %1728, 0
  br i1 %1729, label %.lr.ph1887, label %.loopexit884

.lr.ph1887:                                       ; preds = %.preheader883
  %1730 = getelementptr inbounds i32* %1726, i64 1
  %1731 = load double** %86, align 8, !tbaa !13
  %1732 = load double** %112, align 8, !tbaa !13
  %1733 = load double* %108, align 16, !tbaa !15
  %1734 = fmul double %107, %1733
  %1735 = load double* %109, align 16, !tbaa !15
  %.pre2617 = load i32* %1730, align 4, !tbaa !7
  br label %1736

; <label>:1736                                    ; preds = %.lr.ph1887, %1887
  %1737 = phi i32 [ %.pre2617, %.lr.ph1887 ], [ %1888, %1887 ]
  %1738 = phi i32 [ %1728, %.lr.ph1887 ], [ %1889, %1887 ]
  %dtvvar0H.451886 = phi double [ %dtvvar0H.44, %.lr.ph1887 ], [ %dtvvar0H.46.lcssa, %1887 ]
  %_k115.01884 = phi i32 [ 0, %.lr.ph1887 ], [ %1890, %1887 ]
  %1739 = load i32* %110, align 4, !tbaa !7
  %1740 = icmp sgt i32 %1739, 0
  br i1 %1740, label %.lr.ph1881, label %1887

.lr.ph1881:                                       ; preds = %1736
  %1741 = sub nsw i32 %1737, %1739
  %1742 = load i8**** %38, align 8, !tbaa !12
  %1743 = getelementptr inbounds i8*** %1742, i64 %indvars.iv2111
  %1744 = bitcast i8*** %1743 to i32***
  %1745 = load i32*** %1744, align 8, !tbaa !13
  %1746 = load i32** %1745, align 8, !tbaa !13
  %1747 = getelementptr inbounds i8*** %1742, i64 %indvars.iv2113
  %1748 = load i8*** %1747, align 8, !tbaa !13
  %1749 = getelementptr inbounds i8** %1748, i64 %.
  %1750 = bitcast i8** %1749 to i32**
  %1751 = load i32** %1750, align 8, !tbaa !13
  %.pre2599 = load i32* %1726, align 4, !tbaa !7
  br label %1752

; <label>:1752                                    ; preds = %.lr.ph1881, %1882
  %1753 = phi i32 [ %.pre2599, %.lr.ph1881 ], [ %1884, %1882 ]
  %1754 = phi i32 [ %1737, %.lr.ph1881 ], [ %1883, %1882 ]
  %dtvvar0H.461879 = phi double [ %dtvvar0H.451886, %.lr.ph1881 ], [ %dtvvar0H.47.lcssa, %1882 ]
  %_j114.01878 = phi i32 [ %1741, %.lr.ph1881 ], [ %1885, %1882 ]
  %1755 = load i32* %111, align 4, !tbaa !7
  %1756 = mul nsw i32 %1754, %_k115.01884
  %1757 = add nsw i32 %1756, %_j114.01878
  %1758 = mul nsw i32 %1753, %1757
  %1759 = sext i32 %1758 to i64
  %1760 = icmp sgt i32 %1753, 0
  br i1 %1760, label %.lr.ph1875, label %1882

.lr.ph1875:                                       ; preds = %1752
  %1761 = getelementptr inbounds i32* %1751, i64 %1759
  %1762 = getelementptr inbounds i32* %1746, i64 %1759
  %1763 = getelementptr inbounds double* %1732, i64 %1759
  %1764 = getelementptr inbounds double* %1731, i64 %1759
  %1765 = mul nsw i32 %1755, -2
  %1766 = sub nsw i32 0, %1755
  %1767 = sext i32 %1766 to i64
  %1768 = sext i32 %1765 to i64
  br label %1769

; <label>:1769                                    ; preds = %.lr.ph1875, %1834
  %dtvvar0H.471873 = phi double [ %dtvvar0H.461879, %.lr.ph1875 ], [ %dtvvar0H.48, %1834 ]
  %_i113.01872 = phi i32 [ 0, %.lr.ph1875 ], [ %1879, %1834 ]
  %_radius120.01871 = phi double* [ %1764, %.lr.ph1875 ], [ %1875, %1834 ]
  %_xyz121.01870 = phi double* [ %1763, %.lr.ph1875 ], [ %1876, %1834 ]
  %_to122.01869 = phi i32* [ %1762, %.lr.ph1875 ], [ %1877, %1834 ]
  %_from123.01868 = phi i32* [ %1761, %.lr.ph1875 ], [ %1878, %1834 ]
  %1770 = load double* %_radius120.01871, align 8, !tbaa !15
  %1771 = getelementptr inbounds double* %_radius120.01871, i64 %1767
  %1772 = load double* %1771, align 8, !tbaa !15
  %1773 = insertelement <2 x double> undef, double %1772, i32 0
  %1774 = insertelement <2 x double> %1773, double %1770, i32 1
  %1775 = fdiv <2 x double> <double 1.000000e+00, double 1.000000e+00>, %1774
  %1776 = load double* %_xyz121.01870, align 8, !tbaa !15
  br i1 %105, label %1778, label %._crit_edge2497

._crit_edge2497:                                  ; preds = %1769
  %.phi.trans.insert2499 = getelementptr inbounds double* %_xyz121.01870, i64 %1767
  %.pre2500 = load double* %.phi.trans.insert2499, align 8, !tbaa !15
  %.phi.trans.insert2501 = getelementptr inbounds i32* %_to122.01869, i64 %1767
  %.pre2502 = load i32* %.phi.trans.insert2501, align 4, !tbaa !7
  %.phi.trans.insert2503 = getelementptr inbounds i32* %_from123.01868, i64 %1767
  %.pre2504 = load i32* %.phi.trans.insert2503, align 4, !tbaa !7
  %1777 = fmul <2 x double> %1775, %1775
  br label %1834

; <label>:1778                                    ; preds = %1769
  %1779 = fmul <2 x double> %1775, %1775
  %1780 = extractelement <2 x double> %1779, i32 1
  %1781 = fmul double %1780, %1776
  %1782 = getelementptr inbounds double* %_xyz121.01870, i64 %1767
  %1783 = load double* %1782, align 8, !tbaa !15
  %1784 = extractelement <2 x double> %1779, i32 0
  %1785 = fmul double %1784, %1783
  %1786 = fadd double %1781, %1785
  %1787 = fmul double %1734, %1786
  %1788 = fsub double 1.000000e+00, %1787
  %1789 = fadd double %1787, 1.000000e+00
  %1790 = fdiv double %1788, %1789
  %1791 = getelementptr inbounds i32* %_to122.01869, i64 %1767
  %1792 = load i32* %1791, align 4, !tbaa !7
  %1793 = getelementptr inbounds i32* %_to122.01869, i64 %1768
  %1794 = load i32* %1793, align 4, !tbaa !7
  %1795 = add nsw i32 %1794, %1792
  %1796 = getelementptr inbounds i32* %_from123.01868, i64 %1767
  %1797 = load i32* %1796, align 4, !tbaa !7
  %1798 = add nsw i32 %1795, %1797
  %1799 = getelementptr inbounds i32* %_from123.01868, i64 %1768
  %1800 = load i32* %1799, align 4, !tbaa !7
  %1801 = add nsw i32 %1798, %1800
  %1802 = sitofp i32 %1801 to double
  %1803 = fmul double %1802, 2.500000e-01
  %1804 = fsub double %1803, %var0
  %1805 = fmul double %32, %1804
  %1806 = sub nsw i32 %1792, %1797
  %1807 = sitofp i32 %1806 to double
  %1808 = fmul double %1772, %1807
  %1809 = getelementptr inbounds double* %_radius120.01871, i64 %1768
  %1810 = load double* %1809, align 8, !tbaa !15
  %1811 = sub nsw i32 %1794, %1800
  %1812 = sitofp i32 %1811 to double
  %1813 = fmul double %1810, %1812
  %1814 = fadd double %1808, %1813
  %1815 = fmul double %1814, 5.000000e-01
  %1816 = fadd double %1805, %1815
  %1817 = sub i32 %1792, %1794
  %1818 = add nsw i32 %1817, %1797
  %1819 = sub i32 %1818, %1800
  %1820 = sitofp i32 %1819 to double
  %1821 = fmul double %1820, 2.500000e-01
  %1822 = fmul double %1735, %1821
  %1823 = fmul double %1772, %1772
  %1824 = fdiv double %1823, %1783
  %1825 = fmul double %1810, %1810
  %1826 = getelementptr inbounds double* %_xyz121.01870, i64 %1768
  %1827 = load double* %1826, align 8, !tbaa !15
  %1828 = fdiv double %1825, %1827
  %1829 = fadd double %1824, %1828
  %1830 = fmul double %1822, %1829
  %1831 = fadd double %1816, %1830
  %1832 = fmul double %1790, %1831
  %1833 = fadd double %34, %1832
  br label %1834

; <label>:1834                                    ; preds = %._crit_edge2497, %1778
  %1835 = phi i32 [ %.pre2504, %._crit_edge2497 ], [ %1797, %1778 ]
  %1836 = phi i32 [ %.pre2502, %._crit_edge2497 ], [ %1792, %1778 ]
  %1837 = phi double [ %.pre2500, %._crit_edge2497 ], [ %1783, %1778 ]
  %dtvvar0H.48 = phi double [ %dtvvar0H.471873, %._crit_edge2497 ], [ %1833, %1778 ]
  %1838 = phi <2 x double> [ %1777, %._crit_edge2497 ], [ %1779, %1778 ]
  %1839 = extractelement <2 x double> %1838, i32 1
  %1840 = fmul double %1839, %1776
  %1841 = extractelement <2 x double> %1838, i32 0
  %1842 = fmul double %1841, %1837
  %1843 = fadd double %1840, %1842
  %1844 = fmul double %dtvvar0H.48, %1843
  %1845 = sitofp i32 %1836 to double
  %1846 = extractelement <2 x double> %1775, i32 0
  %1847 = fmul double %1846, %1837
  %1848 = fmul double %33, %1846
  %1849 = fadd double %1848, 1.000000e+00
  %1850 = fmul double %1849, %1847
  %1851 = fsub double %1735, %1850
  %1852 = fmul double %1845, %1851
  %1853 = fadd double %1844, %1852
  %1854 = load i32* %_from123.01868, align 4, !tbaa !7
  %1855 = sitofp i32 %1854 to double
  %1856 = extractelement <2 x double> %1775, i32 1
  %1857 = fmul double %1856, %1776
  %1858 = fmul double %33, %1856
  %1859 = fsub double 1.000000e+00, %1858
  %1860 = fmul double %1859, %1857
  %1861 = fsub double %1860, %1735
  %1862 = fmul double %1861, %1855
  %1863 = fadd double %1853, %1862
  %1864 = sitofp i32 %1835 to double
  %1865 = fsub double 1.000000e+00, %1848
  %1866 = fmul double %1865, %1847
  %1867 = fadd double %1735, %1866
  %1868 = fmul double %1867, %1864
  %1869 = fadd double %1863, %1868
  %1870 = fadd double %1858, 1.000000e+00
  %1871 = fmul double %1870, %1857
  %1872 = fadd double %1871, %1735
  %1873 = fdiv double %1869, %1872
  %1874 = fptosi double %1873 to i32
  store i32 %1874, i32* %_to122.01869, align 4, !tbaa !7
  %1875 = getelementptr inbounds double* %_radius120.01871, i64 1
  %1876 = getelementptr inbounds double* %_xyz121.01870, i64 1
  %1877 = getelementptr inbounds i32* %_to122.01869, i64 1
  %1878 = getelementptr inbounds i32* %_from123.01868, i64 1
  %1879 = add nuw nsw i32 %_i113.01872, 1
  %1880 = load i32* %1726, align 4, !tbaa !7
  %1881 = icmp slt i32 %1879, %1880
  br i1 %1881, label %1769, label %._crit_edge1876

._crit_edge1876:                                  ; preds = %1834
  %.pre2611 = load i32* %1730, align 4, !tbaa !7
  br label %1882

; <label>:1882                                    ; preds = %._crit_edge1876, %1752
  %1883 = phi i32 [ %.pre2611, %._crit_edge1876 ], [ %1754, %1752 ]
  %1884 = phi i32 [ %1880, %._crit_edge1876 ], [ %1753, %1752 ]
  %dtvvar0H.47.lcssa = phi double [ %dtvvar0H.48, %._crit_edge1876 ], [ %dtvvar0H.461879, %1752 ]
  %1885 = add nsw i32 %_j114.01878, 1
  %1886 = icmp slt i32 %1885, %1883
  br i1 %1886, label %1752, label %._crit_edge1882

._crit_edge1882:                                  ; preds = %1882
  %.pre2505 = load i32* %1727, align 4, !tbaa !7
  br label %1887

; <label>:1887                                    ; preds = %._crit_edge1882, %1736
  %1888 = phi i32 [ %1883, %._crit_edge1882 ], [ %1737, %1736 ]
  %1889 = phi i32 [ %.pre2505, %._crit_edge1882 ], [ %1738, %1736 ]
  %dtvvar0H.46.lcssa = phi double [ %dtvvar0H.47.lcssa, %._crit_edge1882 ], [ %dtvvar0H.451886, %1736 ]
  %1890 = add nuw nsw i32 %_k115.01884, 1
  %1891 = icmp slt i32 %1890, %1889
  br i1 %1891, label %1736, label %.loopexit884

.loopexit884:                                     ; preds = %1887, %.preheader883, %1723
  %dtvvar0H.49 = phi double [ %dtvvar0H.44, %1723 ], [ %dtvvar0H.44, %.preheader883 ], [ %dtvvar0H.46.lcssa, %1887 ]
  %1892 = bitcast i32* %100 to i64*
  %1893 = load i64* %1892, align 16
  %1894 = trunc i64 %1893 to i32
  %1895 = icmp eq i32 %1894, 0
  %1896 = lshr i64 %1893, 32
  %1897 = trunc i64 %1896 to i32
  br i1 %1895, label %2053, label %1898

; <label>:1898                                    ; preds = %.loopexit884
  %1899 = load i32* %102, align 4, !tbaa !7
  %1900 = icmp sgt i32 %1899, 0
  br i1 %1900, label %.lr.ph1908, label %.loopexit882

.lr.ph1908:                                       ; preds = %1898
  %1901 = load i32** %93, align 8, !tbaa !17
  %1902 = getelementptr inbounds i32* %1901, i64 1
  %1903 = load double** %86, align 8, !tbaa !13
  %1904 = load double** %104, align 16, !tbaa !13
  %1905 = load double* %108, align 16, !tbaa !15
  %1906 = fmul double %107, %1905
  %1907 = load double* %109, align 16, !tbaa !15
  br label %1909

.loopexit834:                                     ; preds = %.loopexit805, %1909
  %dtvvar0H.51.lcssa = phi double [ %dtvvar0H.501905, %1909 ], [ %dtvvar0H.52.lcssa, %.loopexit805 ]
  %1908 = icmp sgt i32 %_k129.01906.in, 1
  br i1 %1908, label %1909, label %.loopexit882

; <label>:1909                                    ; preds = %.lr.ph1908, %.loopexit834
  %_k129.01906.in = phi i32 [ %1899, %.lr.ph1908 ], [ %_k129.01906, %.loopexit834 ]
  %dtvvar0H.501905 = phi double [ %dtvvar0H.49, %.lr.ph1908 ], [ %dtvvar0H.51.lcssa, %.loopexit834 ]
  %_k129.01906 = add nsw i32 %_k129.01906.in, -1
  %1910 = load i32* %1902, align 4, !tbaa !7
  %1911 = icmp sgt i32 %1910, 0
  br i1 %1911, label %.lr.ph1902, label %.loopexit834

.lr.ph1902:                                       ; preds = %1909
  %1912 = load i8**** %38, align 8, !tbaa !12
  %1913 = getelementptr inbounds i8*** %1912, i64 %indvars.iv2111
  %1914 = bitcast i8*** %1913 to i32***
  %1915 = load i32*** %1914, align 8, !tbaa !13
  %1916 = load i32** %1915, align 8, !tbaa !13
  %1917 = getelementptr inbounds i8*** %1912, i64 %indvars.iv2113
  %1918 = load i8*** %1917, align 8, !tbaa !13
  %1919 = getelementptr inbounds i8** %1918, i64 %.
  %1920 = bitcast i8** %1919 to i32**
  %1921 = load i32** %1920, align 8, !tbaa !13
  br label %1923

.loopexit805:                                     ; preds = %2006, %1923
  %dtvvar0H.52.lcssa = phi double [ %dtvvar0H.511899, %1923 ], [ %dtvvar0H.53, %2006 ]
  %1922 = icmp sgt i32 %_j128.01900.in, 1
  br i1 %1922, label %.loopexit805._crit_edge, label %.loopexit834

.loopexit805._crit_edge:                          ; preds = %.loopexit805
  %.pre2601 = load i32* %1902, align 4, !tbaa !7
  br label %1923

; <label>:1923                                    ; preds = %.loopexit805._crit_edge, %.lr.ph1902
  %1924 = phi i32 [ %1910, %.lr.ph1902 ], [ %.pre2601, %.loopexit805._crit_edge ]
  %_j128.01900.in = phi i32 [ %1910, %.lr.ph1902 ], [ %_j128.01900, %.loopexit805._crit_edge ]
  %dtvvar0H.511899 = phi double [ %dtvvar0H.501905, %.lr.ph1902 ], [ %dtvvar0H.52.lcssa, %.loopexit805._crit_edge ]
  %_j128.01900 = add nsw i32 %_j128.01900.in, -1
  %1925 = load i32* %103, align 4, !tbaa !7
  %1926 = load i32* %1901, align 4, !tbaa !7
  %1927 = add nsw i32 %1926, -1
  %1928 = mul nsw i32 %1924, %_k129.01906
  %1929 = add nsw i32 %1928, %_j128.01900
  %1930 = mul nsw i32 %1929, %1926
  %1931 = add nsw i32 %1930, %1927
  %1932 = sext i32 %1931 to i64
  %1933 = icmp sgt i32 %1926, 0
  br i1 %1933, label %.lr.ph1896, label %.loopexit805

.lr.ph1896:                                       ; preds = %1923
  %1934 = getelementptr inbounds i32* %1921, i64 %1932
  %1935 = getelementptr inbounds i32* %1916, i64 %1932
  %1936 = getelementptr inbounds double* %1904, i64 %1932
  %1937 = getelementptr inbounds double* %1903, i64 %1932
  %1938 = shl nsw i32 %1925, 1
  %1939 = sext i32 %1925 to i64
  %1940 = sext i32 %1938 to i64
  br label %1941

; <label>:1941                                    ; preds = %.lr.ph1896, %2006
  %dtvvar0H.521894 = phi double [ %dtvvar0H.511899, %.lr.ph1896 ], [ %dtvvar0H.53, %2006 ]
  %_i127.01893 = phi i32 [ %1927, %.lr.ph1896 ], [ %2051, %2006 ]
  %_radius134.01892 = phi double* [ %1937, %.lr.ph1896 ], [ %2047, %2006 ]
  %_xyz135.01891 = phi double* [ %1936, %.lr.ph1896 ], [ %2048, %2006 ]
  %_to136.01890 = phi i32* [ %1935, %.lr.ph1896 ], [ %2049, %2006 ]
  %_from137.01889 = phi i32* [ %1934, %.lr.ph1896 ], [ %2050, %2006 ]
  %1942 = load double* %_radius134.01892, align 8, !tbaa !15
  %1943 = getelementptr inbounds double* %_radius134.01892, i64 %1939
  %1944 = load double* %1943, align 8, !tbaa !15
  %1945 = insertelement <2 x double> undef, double %1944, i32 0
  %1946 = insertelement <2 x double> %1945, double %1942, i32 1
  %1947 = fdiv <2 x double> <double 1.000000e+00, double 1.000000e+00>, %1946
  %1948 = load double* %_xyz135.01891, align 8, !tbaa !15
  br i1 %105, label %1950, label %._crit_edge2506

._crit_edge2506:                                  ; preds = %1941
  %.phi.trans.insert2508 = getelementptr inbounds double* %_xyz135.01891, i64 %1939
  %.pre2509 = load double* %.phi.trans.insert2508, align 8, !tbaa !15
  %.phi.trans.insert2510 = getelementptr inbounds i32* %_to136.01890, i64 %1939
  %.pre2511 = load i32* %.phi.trans.insert2510, align 4, !tbaa !7
  %.phi.trans.insert2512 = getelementptr inbounds i32* %_from137.01889, i64 %1939
  %.pre2513 = load i32* %.phi.trans.insert2512, align 4, !tbaa !7
  %1949 = fmul <2 x double> %1947, %1947
  br label %2006

; <label>:1950                                    ; preds = %1941
  %1951 = fmul <2 x double> %1947, %1947
  %1952 = extractelement <2 x double> %1951, i32 1
  %1953 = fmul double %1952, %1948
  %1954 = getelementptr inbounds double* %_xyz135.01891, i64 %1939
  %1955 = load double* %1954, align 8, !tbaa !15
  %1956 = extractelement <2 x double> %1951, i32 0
  %1957 = fmul double %1956, %1955
  %1958 = fadd double %1953, %1957
  %1959 = fmul double %1906, %1958
  %1960 = fadd double %1959, 1.000000e+00
  %1961 = fsub double 1.000000e+00, %1959
  %1962 = fdiv double %1960, %1961
  %1963 = getelementptr inbounds i32* %_to136.01890, i64 %1939
  %1964 = load i32* %1963, align 4, !tbaa !7
  %1965 = getelementptr inbounds i32* %_to136.01890, i64 %1940
  %1966 = load i32* %1965, align 4, !tbaa !7
  %1967 = add nsw i32 %1966, %1964
  %1968 = getelementptr inbounds i32* %_from137.01889, i64 %1939
  %1969 = load i32* %1968, align 4, !tbaa !7
  %1970 = add nsw i32 %1967, %1969
  %1971 = getelementptr inbounds i32* %_from137.01889, i64 %1940
  %1972 = load i32* %1971, align 4, !tbaa !7
  %1973 = add nsw i32 %1970, %1972
  %1974 = sitofp i32 %1973 to double
  %1975 = fmul double %1974, 2.500000e-01
  %1976 = fsub double %1975, %var0
  %1977 = fmul double %32, %1976
  %1978 = sub nsw i32 %1964, %1969
  %1979 = sitofp i32 %1978 to double
  %1980 = fmul double %1944, %1979
  %1981 = getelementptr inbounds double* %_radius134.01892, i64 %1940
  %1982 = load double* %1981, align 8, !tbaa !15
  %1983 = sub nsw i32 %1966, %1972
  %1984 = sitofp i32 %1983 to double
  %1985 = fmul double %1982, %1984
  %1986 = fadd double %1980, %1985
  %1987 = fmul double %1986, 5.000000e-01
  %1988 = fadd double %1977, %1987
  %1989 = sub i32 %1966, %1964
  %1990 = sub i32 %1989, %1969
  %1991 = add i32 %1990, %1972
  %1992 = sitofp i32 %1991 to double
  %1993 = fmul double %1992, 2.500000e-01
  %1994 = fmul double %1907, %1993
  %1995 = fmul double %1944, %1944
  %1996 = fdiv double %1995, %1955
  %1997 = fmul double %1982, %1982
  %1998 = getelementptr inbounds double* %_xyz135.01891, i64 %1940
  %1999 = load double* %1998, align 8, !tbaa !15
  %2000 = fdiv double %1997, %1999
  %2001 = fadd double %1996, %2000
  %2002 = fmul double %1994, %2001
  %2003 = fadd double %1988, %2002
  %2004 = fmul double %1962, %2003
  %2005 = fadd double %34, %2004
  br label %2006

; <label>:2006                                    ; preds = %._crit_edge2506, %1950
  %2007 = phi i32 [ %.pre2513, %._crit_edge2506 ], [ %1969, %1950 ]
  %2008 = phi i32 [ %.pre2511, %._crit_edge2506 ], [ %1964, %1950 ]
  %2009 = phi double [ %.pre2509, %._crit_edge2506 ], [ %1955, %1950 ]
  %dtvvar0H.53 = phi double [ %dtvvar0H.521894, %._crit_edge2506 ], [ %2005, %1950 ]
  %2010 = phi <2 x double> [ %1949, %._crit_edge2506 ], [ %1951, %1950 ]
  %2011 = extractelement <2 x double> %2010, i32 1
  %2012 = fmul double %2011, %1948
  %2013 = extractelement <2 x double> %2010, i32 0
  %2014 = fmul double %2013, %2009
  %2015 = fadd double %2012, %2014
  %2016 = fmul double %dtvvar0H.53, %2015
  %2017 = sitofp i32 %2008 to double
  %2018 = extractelement <2 x double> %1947, i32 0
  %2019 = fmul double %2018, %2009
  %2020 = fmul double %33, %2018
  %2021 = fadd double %2020, 1.000000e+00
  %2022 = fmul double %2021, %2019
  %2023 = fadd double %1907, %2022
  %2024 = fmul double %2017, %2023
  %2025 = fsub double %2016, %2024
  %2026 = load i32* %_from137.01889, align 4, !tbaa !7
  %2027 = sitofp i32 %2026 to double
  %2028 = extractelement <2 x double> %1947, i32 1
  %2029 = fmul double %2028, %1948
  %2030 = fmul double %33, %2028
  %2031 = fsub double 1.000000e+00, %2030
  %2032 = fmul double %2031, %2029
  %2033 = fadd double %2032, %1907
  %2034 = fmul double %2033, %2027
  %2035 = fadd double %2025, %2034
  %2036 = sitofp i32 %2007 to double
  %2037 = fsub double 1.000000e+00, %2020
  %2038 = fmul double %2037, %2019
  %2039 = fsub double %1907, %2038
  %2040 = fmul double %2039, %2036
  %2041 = fsub double %2035, %2040
  %2042 = fadd double %2030, 1.000000e+00
  %2043 = fmul double %2042, %2029
  %2044 = fsub double %2043, %1907
  %2045 = fdiv double %2041, %2044
  %2046 = fptosi double %2045 to i32
  store i32 %2046, i32* %_to136.01890, align 4, !tbaa !7
  %2047 = getelementptr inbounds double* %_radius134.01892, i64 -1
  %2048 = getelementptr inbounds double* %_xyz135.01891, i64 -1
  %2049 = getelementptr inbounds i32* %_to136.01890, i64 -1
  %2050 = getelementptr inbounds i32* %_from137.01889, i64 -1
  %2051 = add nsw i32 %_i127.01893, -1
  %2052 = icmp sgt i32 %_i127.01893, 0
  br i1 %2052, label %1941, label %.loopexit805

.loopexit882:                                     ; preds = %.loopexit834, %1898
  %dtvvar0H.50.lcssa = phi double [ %dtvvar0H.49, %1898 ], [ %dtvvar0H.51.lcssa, %.loopexit834 ]
  %.pre2514 = load i32* %101, align 4, !tbaa !7
  br label %2053

; <label>:2053                                    ; preds = %.loopexit882, %.loopexit884
  %2054 = phi i32 [ %1897, %.loopexit884 ], [ %.pre2514, %.loopexit882 ]
  %dtvvar0H.54 = phi double [ %dtvvar0H.49, %.loopexit884 ], [ %dtvvar0H.50.lcssa, %.loopexit882 ]
  %2055 = icmp eq i32 %2054, 0
  br i1 %2055, label %.loopexit873, label %2056

; <label>:2056                                    ; preds = %2053
  %2057 = load i32* %102, align 4, !tbaa !7
  %2058 = icmp sgt i32 %2057, 0
  br i1 %2058, label %.preheader833.lr.ph, label %.loopexit873

.preheader833.lr.ph:                              ; preds = %2056
  %2059 = load i32** %93, align 8, !tbaa !17
  %2060 = getelementptr inbounds i32* %2059, i64 2
  %2061 = load i32* %2060, align 4, !tbaa !7
  %2062 = sub nsw i32 %2061, %2057
  %2063 = getelementptr inbounds i32* %2059, i64 1
  %2064 = load double** %86, align 8, !tbaa !13
  %2065 = load double** %104, align 16, !tbaa !13
  %2066 = load double* %108, align 16, !tbaa !15
  %2067 = fmul double %107, %2066
  %2068 = load double* %109, align 16, !tbaa !15
  %.pre2618 = load i32* %2063, align 4, !tbaa !7
  br label %.preheader833

.preheader833:                                    ; preds = %.preheader833.lr.ph, %2217
  %2069 = phi i32 [ %.pre2618, %.preheader833.lr.ph ], [ %2218, %2217 ]
  %2070 = phi i32 [ %2061, %.preheader833.lr.ph ], [ %2219, %2217 ]
  %dtvvar0H.551927 = phi double [ %dtvvar0H.54, %.preheader833.lr.ph ], [ %dtvvar0H.56.lcssa, %2217 ]
  %_k143.01925 = phi i32 [ %2062, %.preheader833.lr.ph ], [ %2220, %2217 ]
  %2071 = icmp sgt i32 %2069, 0
  br i1 %2071, label %.lr.ph1922, label %2217

.lr.ph1922:                                       ; preds = %.preheader833
  %2072 = load i8**** %38, align 8, !tbaa !12
  %2073 = getelementptr inbounds i8*** %2072, i64 %indvars.iv2111
  %2074 = bitcast i8*** %2073 to i32***
  %2075 = load i32*** %2074, align 8, !tbaa !13
  %2076 = load i32** %2075, align 8, !tbaa !13
  %2077 = getelementptr inbounds i8*** %2072, i64 %indvars.iv2113
  %2078 = load i8*** %2077, align 8, !tbaa !13
  %2079 = getelementptr inbounds i8** %2078, i64 %.
  %2080 = bitcast i8** %2079 to i32**
  %2081 = load i32** %2080, align 8, !tbaa !13
  %.pre2602 = load i32* %2059, align 4, !tbaa !7
  br label %2082

; <label>:2082                                    ; preds = %.lr.ph1922, %2212
  %2083 = phi i32 [ %.pre2602, %.lr.ph1922 ], [ %2214, %2212 ]
  %2084 = phi i32 [ %2069, %.lr.ph1922 ], [ %2213, %2212 ]
  %dtvvar0H.561921 = phi double [ %dtvvar0H.551927, %.lr.ph1922 ], [ %dtvvar0H.57.lcssa, %2212 ]
  %_j142.01920 = phi i32 [ 0, %.lr.ph1922 ], [ %2215, %2212 ]
  %2085 = load i32* %103, align 4, !tbaa !7
  %2086 = mul nsw i32 %2084, %_k143.01925
  %2087 = add nsw i32 %2086, %_j142.01920
  %2088 = mul nsw i32 %2083, %2087
  %2089 = sext i32 %2088 to i64
  %2090 = icmp sgt i32 %2083, 0
  br i1 %2090, label %.lr.ph1917, label %2212

.lr.ph1917:                                       ; preds = %2082
  %2091 = getelementptr inbounds i32* %2081, i64 %2089
  %2092 = getelementptr inbounds i32* %2076, i64 %2089
  %2093 = getelementptr inbounds double* %2065, i64 %2089
  %2094 = getelementptr inbounds double* %2064, i64 %2089
  %2095 = mul nsw i32 %2085, -2
  %2096 = sub nsw i32 0, %2085
  %2097 = sext i32 %2096 to i64
  %2098 = sext i32 %2095 to i64
  br label %2099

; <label>:2099                                    ; preds = %.lr.ph1917, %2164
  %dtvvar0H.571915 = phi double [ %dtvvar0H.561921, %.lr.ph1917 ], [ %dtvvar0H.58, %2164 ]
  %_i141.01914 = phi i32 [ 0, %.lr.ph1917 ], [ %2209, %2164 ]
  %_radius148.01913 = phi double* [ %2094, %.lr.ph1917 ], [ %2205, %2164 ]
  %_xyz149.01912 = phi double* [ %2093, %.lr.ph1917 ], [ %2206, %2164 ]
  %_to150.01911 = phi i32* [ %2092, %.lr.ph1917 ], [ %2207, %2164 ]
  %_from151.01910 = phi i32* [ %2091, %.lr.ph1917 ], [ %2208, %2164 ]
  %2100 = load double* %_radius148.01913, align 8, !tbaa !15
  %2101 = getelementptr inbounds double* %_radius148.01913, i64 %2097
  %2102 = load double* %2101, align 8, !tbaa !15
  %2103 = insertelement <2 x double> undef, double %2102, i32 0
  %2104 = insertelement <2 x double> %2103, double %2100, i32 1
  %2105 = fdiv <2 x double> <double 1.000000e+00, double 1.000000e+00>, %2104
  %2106 = load double* %_xyz149.01912, align 8, !tbaa !15
  br i1 %105, label %2108, label %._crit_edge2515

._crit_edge2515:                                  ; preds = %2099
  %.phi.trans.insert2517 = getelementptr inbounds double* %_xyz149.01912, i64 %2097
  %.pre2518 = load double* %.phi.trans.insert2517, align 8, !tbaa !15
  %.phi.trans.insert2519 = getelementptr inbounds i32* %_to150.01911, i64 %2097
  %.pre2520 = load i32* %.phi.trans.insert2519, align 4, !tbaa !7
  %.phi.trans.insert2521 = getelementptr inbounds i32* %_from151.01910, i64 %2097
  %.pre2522 = load i32* %.phi.trans.insert2521, align 4, !tbaa !7
  %2107 = fmul <2 x double> %2105, %2105
  br label %2164

; <label>:2108                                    ; preds = %2099
  %2109 = fmul <2 x double> %2105, %2105
  %2110 = extractelement <2 x double> %2109, i32 1
  %2111 = fmul double %2110, %2106
  %2112 = getelementptr inbounds double* %_xyz149.01912, i64 %2097
  %2113 = load double* %2112, align 8, !tbaa !15
  %2114 = extractelement <2 x double> %2109, i32 0
  %2115 = fmul double %2114, %2113
  %2116 = fadd double %2111, %2115
  %2117 = fmul double %2067, %2116
  %2118 = fsub double 1.000000e+00, %2117
  %2119 = fadd double %2117, 1.000000e+00
  %2120 = fdiv double %2118, %2119
  %2121 = getelementptr inbounds i32* %_to150.01911, i64 %2097
  %2122 = load i32* %2121, align 4, !tbaa !7
  %2123 = getelementptr inbounds i32* %_to150.01911, i64 %2098
  %2124 = load i32* %2123, align 4, !tbaa !7
  %2125 = add nsw i32 %2124, %2122
  %2126 = getelementptr inbounds i32* %_from151.01910, i64 %2097
  %2127 = load i32* %2126, align 4, !tbaa !7
  %2128 = add nsw i32 %2125, %2127
  %2129 = getelementptr inbounds i32* %_from151.01910, i64 %2098
  %2130 = load i32* %2129, align 4, !tbaa !7
  %2131 = add nsw i32 %2128, %2130
  %2132 = sitofp i32 %2131 to double
  %2133 = fmul double %2132, 2.500000e-01
  %2134 = fsub double %2133, %var0
  %2135 = fmul double %32, %2134
  %2136 = sub nsw i32 %2122, %2127
  %2137 = sitofp i32 %2136 to double
  %2138 = fmul double %2102, %2137
  %2139 = getelementptr inbounds double* %_radius148.01913, i64 %2098
  %2140 = load double* %2139, align 8, !tbaa !15
  %2141 = sub nsw i32 %2124, %2130
  %2142 = sitofp i32 %2141 to double
  %2143 = fmul double %2140, %2142
  %2144 = fadd double %2138, %2143
  %2145 = fmul double %2144, 5.000000e-01
  %2146 = fadd double %2135, %2145
  %2147 = sub i32 %2122, %2124
  %2148 = add nsw i32 %2147, %2127
  %2149 = sub i32 %2148, %2130
  %2150 = sitofp i32 %2149 to double
  %2151 = fmul double %2150, 2.500000e-01
  %2152 = fmul double %2068, %2151
  %2153 = fmul double %2102, %2102
  %2154 = fdiv double %2153, %2113
  %2155 = fmul double %2140, %2140
  %2156 = getelementptr inbounds double* %_xyz149.01912, i64 %2098
  %2157 = load double* %2156, align 8, !tbaa !15
  %2158 = fdiv double %2155, %2157
  %2159 = fadd double %2154, %2158
  %2160 = fmul double %2152, %2159
  %2161 = fadd double %2146, %2160
  %2162 = fmul double %2120, %2161
  %2163 = fadd double %34, %2162
  br label %2164

; <label>:2164                                    ; preds = %._crit_edge2515, %2108
  %2165 = phi i32 [ %.pre2522, %._crit_edge2515 ], [ %2127, %2108 ]
  %2166 = phi i32 [ %.pre2520, %._crit_edge2515 ], [ %2122, %2108 ]
  %2167 = phi double [ %.pre2518, %._crit_edge2515 ], [ %2113, %2108 ]
  %dtvvar0H.58 = phi double [ %dtvvar0H.571915, %._crit_edge2515 ], [ %2163, %2108 ]
  %2168 = phi <2 x double> [ %2107, %._crit_edge2515 ], [ %2109, %2108 ]
  %2169 = extractelement <2 x double> %2168, i32 1
  %2170 = fmul double %2169, %2106
  %2171 = extractelement <2 x double> %2168, i32 0
  %2172 = fmul double %2171, %2167
  %2173 = fadd double %2170, %2172
  %2174 = fmul double %dtvvar0H.58, %2173
  %2175 = sitofp i32 %2166 to double
  %2176 = extractelement <2 x double> %2105, i32 0
  %2177 = fmul double %2176, %2167
  %2178 = fmul double %33, %2176
  %2179 = fadd double %2178, 1.000000e+00
  %2180 = fmul double %2179, %2177
  %2181 = fsub double %2068, %2180
  %2182 = fmul double %2175, %2181
  %2183 = fadd double %2174, %2182
  %2184 = load i32* %_from151.01910, align 4, !tbaa !7
  %2185 = sitofp i32 %2184 to double
  %2186 = extractelement <2 x double> %2105, i32 1
  %2187 = fmul double %2186, %2106
  %2188 = fmul double %33, %2186
  %2189 = fsub double 1.000000e+00, %2188
  %2190 = fmul double %2189, %2187
  %2191 = fsub double %2190, %2068
  %2192 = fmul double %2191, %2185
  %2193 = fadd double %2183, %2192
  %2194 = sitofp i32 %2165 to double
  %2195 = fsub double 1.000000e+00, %2178
  %2196 = fmul double %2195, %2177
  %2197 = fadd double %2068, %2196
  %2198 = fmul double %2197, %2194
  %2199 = fadd double %2193, %2198
  %2200 = fadd double %2188, 1.000000e+00
  %2201 = fmul double %2200, %2187
  %2202 = fadd double %2201, %2068
  %2203 = fdiv double %2199, %2202
  %2204 = fptosi double %2203 to i32
  store i32 %2204, i32* %_to150.01911, align 4, !tbaa !7
  %2205 = getelementptr inbounds double* %_radius148.01913, i64 1
  %2206 = getelementptr inbounds double* %_xyz149.01912, i64 1
  %2207 = getelementptr inbounds i32* %_to150.01911, i64 1
  %2208 = getelementptr inbounds i32* %_from151.01910, i64 1
  %2209 = add nuw nsw i32 %_i141.01914, 1
  %2210 = load i32* %2059, align 4, !tbaa !7
  %2211 = icmp slt i32 %2209, %2210
  br i1 %2211, label %2099, label %._crit_edge1918

._crit_edge1918:                                  ; preds = %2164
  %.pre2612 = load i32* %2063, align 4, !tbaa !7
  br label %2212

; <label>:2212                                    ; preds = %._crit_edge1918, %2082
  %2213 = phi i32 [ %.pre2612, %._crit_edge1918 ], [ %2084, %2082 ]
  %2214 = phi i32 [ %2210, %._crit_edge1918 ], [ %2083, %2082 ]
  %dtvvar0H.57.lcssa = phi double [ %dtvvar0H.58, %._crit_edge1918 ], [ %dtvvar0H.561921, %2082 ]
  %2215 = add nuw nsw i32 %_j142.01920, 1
  %2216 = icmp slt i32 %2215, %2213
  br i1 %2216, label %2082, label %._crit_edge1923

._crit_edge1923:                                  ; preds = %2212
  %.pre2523 = load i32* %2060, align 4, !tbaa !7
  br label %2217

; <label>:2217                                    ; preds = %._crit_edge1923, %.preheader833
  %2218 = phi i32 [ %2213, %._crit_edge1923 ], [ %2069, %.preheader833 ]
  %2219 = phi i32 [ %.pre2523, %._crit_edge1923 ], [ %2070, %.preheader833 ]
  %dtvvar0H.56.lcssa = phi double [ %dtvvar0H.57.lcssa, %._crit_edge1923 ], [ %dtvvar0H.551927, %.preheader833 ]
  %2220 = add nsw i32 %_k143.01925, 1
  %2221 = icmp slt i32 %2220, %2219
  br i1 %2221, label %.preheader833, label %.loopexit873

; <label>:2222                                    ; preds = %177
  br i1 %96, label %2225, label %2223

; <label>:2223                                    ; preds = %2222
  %2224 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 1506, i8* getelementptr inbounds ([88 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([58 x i8]* @.str12, i64 0, i64 0), i32 %7) #5
  br label %.loopexit947

; <label>:2225                                    ; preds = %2222
  %2226 = bitcast [6 x i32]* %doBC to i64*
  %2227 = load i64* %2226, align 16
  %2228 = trunc i64 %2227 to i32
  %2229 = icmp eq i32 %2228, 0
  br i1 %2229, label %.loopexit896, label %2230

; <label>:2230                                    ; preds = %2225
  %2231 = load i32** %93, align 8, !tbaa !17
  %2232 = getelementptr inbounds i32* %2231, i64 2
  %2233 = load i32* %2232, align 4, !tbaa !7
  %2234 = icmp sgt i32 %2233, 0
  br i1 %2234, label %.lr.ph1704, label %.loopexit896

.lr.ph1704:                                       ; preds = %2230
  %2235 = getelementptr inbounds i32* %2231, i64 1
  %2236 = load i32* %2235, align 4, !tbaa !7
  %2237 = icmp sgt i32 %2236, 0
  %2238 = load i32* %113, align 4, !tbaa !7
  %2239 = shl nsw i32 %2238, 1
  %2240 = load i32* %114, align 4, !tbaa !7
  %2241 = add nsw i32 %2240, -1
  %2242 = load double** %86, align 8, !tbaa !13
  %2243 = load double** %115, align 16, !tbaa !13
  %2244 = icmp sgt i32 %2240, 0
  %2245 = sext i32 %2238 to i64
  %2246 = sext i32 %2239 to i64
  %2247 = sext i32 %2236 to i64
  %2248 = sext i32 %2241 to i64
  br label %2250

.loopexit842:                                     ; preds = %.loopexit810, %2250
  %dtvvar0H.60.lcssa = phi double [ %dtvvar0H.591701, %2250 ], [ %dtvvar0H.61.lcssa, %.loopexit810 ]
  %2249 = icmp sgt i32 %_k157.01702.in, 1
  br i1 %2249, label %2250, label %.loopexit896

; <label>:2250                                    ; preds = %.lr.ph1704, %.loopexit842
  %_k157.01702.in = phi i32 [ %2233, %.lr.ph1704 ], [ %_k157.01702, %.loopexit842 ]
  %dtvvar0H.591701 = phi double [ %dtvvar0H.02051, %.lr.ph1704 ], [ %dtvvar0H.60.lcssa, %.loopexit842 ]
  %_k157.01702 = add nsw i32 %_k157.01702.in, -1
  br i1 %2237, label %.lr.ph1698, label %.loopexit842

.lr.ph1698:                                       ; preds = %2250
  %2251 = load i32* %2231, align 4, !tbaa !7
  %2252 = mul nsw i32 %2236, %_k157.01702
  %2253 = load i8**** %38, align 8, !tbaa !12
  %2254 = getelementptr inbounds i8*** %2253, i64 %indvars.iv2111
  %2255 = bitcast i8*** %2254 to double***
  %2256 = load double*** %2255, align 8, !tbaa !13
  %2257 = load double** %2256, align 8, !tbaa !13
  %2258 = getelementptr inbounds i8*** %2253, i64 %indvars.iv2113
  %2259 = load i8*** %2258, align 8, !tbaa !13
  %2260 = getelementptr inbounds i8** %2259, i64 %.
  %2261 = bitcast i8** %2260 to double**
  %2262 = load double** %2261, align 8, !tbaa !13
  %2263 = sext i32 %2252 to i64
  %2264 = sext i32 %2251 to i64
  br label %2266

.loopexit810:                                     ; preds = %2338, %2266
  %dtvvar0H.61.lcssa = phi double [ %dtvvar0H.601695, %2266 ], [ %dtvvar0H.62, %2338 ]
  %2265 = icmp sgt i64 %indvars.iv2105, 1
  br i1 %2265, label %2266, label %.loopexit842

; <label>:2266                                    ; preds = %.lr.ph1698, %.loopexit810
  %indvars.iv2105 = phi i64 [ %2247, %.lr.ph1698 ], [ %indvars.iv.next2106, %.loopexit810 ]
  %dtvvar0H.601695 = phi double [ %dtvvar0H.591701, %.lr.ph1698 ], [ %dtvvar0H.61.lcssa, %.loopexit810 ]
  %indvars.iv.next2106 = add nsw i64 %indvars.iv2105, -1
  %2267 = add nsw i64 %2263, %indvars.iv.next2106
  %2268 = mul nsw i64 %2267, %2264
  %2269 = add nsw i64 %2268, %2248
  br i1 %2244, label %.lr.ph1692, label %.loopexit810

.lr.ph1692:                                       ; preds = %2266
  %2270 = getelementptr inbounds double* %2262, i64 %2269
  %2271 = getelementptr inbounds double* %2257, i64 %2269
  %2272 = getelementptr inbounds double* %2243, i64 %2269
  %2273 = getelementptr inbounds double* %2242, i64 %2269
  br label %2274

; <label>:2274                                    ; preds = %.lr.ph1692, %2338
  %dtvvar0H.611690 = phi double [ %dtvvar0H.601695, %.lr.ph1692 ], [ %dtvvar0H.62, %2338 ]
  %_i155.01689 = phi i32 [ %2241, %.lr.ph1692 ], [ %2381, %2338 ]
  %_radius162.01688 = phi double* [ %2273, %.lr.ph1692 ], [ %2377, %2338 ]
  %_xyz163.01687 = phi double* [ %2272, %.lr.ph1692 ], [ %2378, %2338 ]
  %_to164.01686 = phi double* [ %2271, %.lr.ph1692 ], [ %2379, %2338 ]
  %_from165.01685 = phi double* [ %2270, %.lr.ph1692 ], [ %2380, %2338 ]
  %2275 = load double* %_radius162.01688, align 8, !tbaa !15
  %2276 = getelementptr inbounds double* %_radius162.01688, i64 %2245
  %2277 = load double* %2276, align 8, !tbaa !15
  %2278 = insertelement <2 x double> undef, double %2277, i32 0
  %2279 = insertelement <2 x double> %2278, double %2275, i32 1
  %2280 = fdiv <2 x double> <double 1.000000e+00, double 1.000000e+00>, %2279
  br i1 %105, label %2282, label %._crit_edge2416

._crit_edge2416:                                  ; preds = %2274
  %.pre2417 = load double* %_xyz163.01687, align 8, !tbaa !15
  %.phi.trans.insert2418 = getelementptr inbounds double* %_xyz163.01687, i64 %2245
  %.pre2419 = load double* %.phi.trans.insert2418, align 8, !tbaa !15
  %.phi.trans.insert2420 = getelementptr inbounds double* %_to164.01686, i64 %2245
  %.pre2421 = load double* %.phi.trans.insert2420, align 8, !tbaa !15
  %.pre2422 = load double* %109, align 16, !tbaa !15
  %.phi.trans.insert2423 = getelementptr inbounds double* %_from165.01685, i64 %2245
  %.pre2424 = load double* %.phi.trans.insert2423, align 8, !tbaa !15
  %2281 = fmul <2 x double> %2280, %2280
  br label %2338

; <label>:2282                                    ; preds = %2274
  %2283 = load double* %108, align 16, !tbaa !15
  %2284 = fmul double %107, %2283
  %2285 = load double* %_xyz163.01687, align 8, !tbaa !15
  %2286 = fmul <2 x double> %2280, %2280
  %2287 = extractelement <2 x double> %2286, i32 1
  %2288 = fmul double %2287, %2285
  %2289 = getelementptr inbounds double* %_xyz163.01687, i64 %2245
  %2290 = load double* %2289, align 8, !tbaa !15
  %2291 = extractelement <2 x double> %2286, i32 0
  %2292 = fmul double %2291, %2290
  %2293 = fadd double %2288, %2292
  %2294 = fmul double %2284, %2293
  %2295 = fadd double %2294, 1.000000e+00
  %2296 = fsub double 1.000000e+00, %2294
  %2297 = fdiv double %2295, %2296
  %2298 = getelementptr inbounds double* %_to164.01686, i64 %2245
  %2299 = load double* %2298, align 8, !tbaa !15
  %2300 = getelementptr inbounds double* %_to164.01686, i64 %2246
  %2301 = load double* %2300, align 8, !tbaa !15
  %2302 = fadd double %2299, %2301
  %2303 = getelementptr inbounds double* %_from165.01685, i64 %2245
  %2304 = load double* %2303, align 8, !tbaa !15
  %2305 = fadd double %2302, %2304
  %2306 = getelementptr inbounds double* %_from165.01685, i64 %2246
  %2307 = load double* %2306, align 8, !tbaa !15
  %2308 = fadd double %2305, %2307
  %2309 = fmul double %2308, 2.500000e-01
  %2310 = fsub double %2309, %var0
  %2311 = fmul double %32, %2310
  %2312 = fsub double %2299, %2304
  %2313 = fmul double %2277, %2312
  %2314 = getelementptr inbounds double* %_radius162.01688, i64 %2246
  %2315 = load double* %2314, align 8, !tbaa !15
  %2316 = fsub double %2301, %2307
  %2317 = fmul double %2315, %2316
  %2318 = fadd double %2313, %2317
  %2319 = fmul double %2318, 5.000000e-01
  %2320 = fadd double %2311, %2319
  %2321 = fsub double %2301, %2299
  %2322 = fadd double %2321, %2307
  %2323 = fsub double %2322, %2304
  %2324 = fmul double %2323, 2.500000e-01
  %2325 = load double* %109, align 16, !tbaa !15
  %2326 = fmul double %2325, %2324
  %2327 = fmul double %2277, %2277
  %2328 = fdiv double %2327, %2290
  %2329 = fmul double %2315, %2315
  %2330 = getelementptr inbounds double* %_xyz163.01687, i64 %2246
  %2331 = load double* %2330, align 8, !tbaa !15
  %2332 = fdiv double %2329, %2331
  %2333 = fadd double %2328, %2332
  %2334 = fmul double %2326, %2333
  %2335 = fadd double %2320, %2334
  %2336 = fmul double %2297, %2335
  %2337 = fadd double %34, %2336
  br label %2338

; <label>:2338                                    ; preds = %._crit_edge2416, %2282
  %2339 = phi double [ %.pre2424, %._crit_edge2416 ], [ %2304, %2282 ]
  %2340 = phi double [ %.pre2422, %._crit_edge2416 ], [ %2325, %2282 ]
  %2341 = phi double [ %.pre2421, %._crit_edge2416 ], [ %2299, %2282 ]
  %2342 = phi double [ %.pre2419, %._crit_edge2416 ], [ %2290, %2282 ]
  %2343 = phi double [ %.pre2417, %._crit_edge2416 ], [ %2285, %2282 ]
  %dtvvar0H.62 = phi double [ %dtvvar0H.611690, %._crit_edge2416 ], [ %2337, %2282 ]
  %2344 = phi <2 x double> [ %2281, %._crit_edge2416 ], [ %2286, %2282 ]
  %2345 = extractelement <2 x double> %2344, i32 1
  %2346 = fmul double %2345, %2343
  %2347 = extractelement <2 x double> %2344, i32 0
  %2348 = fmul double %2347, %2342
  %2349 = fadd double %2346, %2348
  %2350 = fmul double %dtvvar0H.62, %2349
  %2351 = extractelement <2 x double> %2280, i32 0
  %2352 = fmul double %2351, %2342
  %2353 = fmul double %33, %2351
  %2354 = fadd double %2353, 1.000000e+00
  %2355 = fmul double %2354, %2352
  %2356 = fadd double %2340, %2355
  %2357 = fmul double %2341, %2356
  %2358 = fsub double %2350, %2357
  %2359 = load double* %_from165.01685, align 8, !tbaa !15
  %2360 = extractelement <2 x double> %2280, i32 1
  %2361 = fmul double %2360, %2343
  %2362 = fmul double %33, %2360
  %2363 = fsub double 1.000000e+00, %2362
  %2364 = fmul double %2363, %2361
  %2365 = fadd double %2364, %2340
  %2366 = fmul double %2359, %2365
  %2367 = fadd double %2366, %2358
  %2368 = fsub double 1.000000e+00, %2353
  %2369 = fmul double %2368, %2352
  %2370 = fsub double %2340, %2369
  %2371 = fmul double %2370, %2339
  %2372 = fsub double %2367, %2371
  %2373 = fadd double %2362, 1.000000e+00
  %2374 = fmul double %2373, %2361
  %2375 = fsub double %2374, %2340
  %2376 = fdiv double %2372, %2375
  store double %2376, double* %_to164.01686, align 8, !tbaa !15
  %2377 = getelementptr inbounds double* %_radius162.01688, i64 -1
  %2378 = getelementptr inbounds double* %_xyz163.01687, i64 -1
  %2379 = getelementptr inbounds double* %_to164.01686, i64 -1
  %2380 = getelementptr inbounds double* %_from165.01685, i64 -1
  %2381 = add nsw i32 %_i155.01689, -1
  %2382 = icmp sgt i32 %_i155.01689, 0
  br i1 %2382, label %2274, label %.loopexit810

.loopexit896:                                     ; preds = %.loopexit842, %2230, %2225
  %dtvvar0H.63 = phi double [ %dtvvar0H.02051, %2225 ], [ %dtvvar0H.02051, %2230 ], [ %dtvvar0H.60.lcssa, %.loopexit842 ]
  %2383 = icmp ult i64 %2227, 4294967296
  br i1 %2383, label %.loopexit895, label %.preheader894

.preheader894:                                    ; preds = %.loopexit896
  %2384 = load i32** %93, align 8, !tbaa !17
  %2385 = getelementptr inbounds i32* %2384, i64 2
  %2386 = load i32* %2385, align 4, !tbaa !7
  %2387 = icmp sgt i32 %2386, 0
  br i1 %2387, label %.preheader841.lr.ph, label %.loopexit895

.preheader841.lr.ph:                              ; preds = %.preheader894
  %2388 = getelementptr inbounds i32* %2384, i64 1
  %2389 = load i32* %2388, align 4, !tbaa !7
  %2390 = icmp sgt i32 %2389, 0
  %2391 = load i32* %113, align 4, !tbaa !7
  %2392 = sub nsw i32 0, %2391
  %2393 = mul nsw i32 %2391, -2
  %2394 = load i32* %114, align 4, !tbaa !7
  %2395 = load double** %86, align 8, !tbaa !13
  %2396 = load double** %115, align 16, !tbaa !13
  %2397 = sext i32 %2392 to i64
  %2398 = sext i32 %2393 to i64
  br label %.preheader841

.preheader841:                                    ; preds = %.preheader841.lr.ph, %._crit_edge1719
  %dtvvar0H.641723 = phi double [ %dtvvar0H.63, %.preheader841.lr.ph ], [ %dtvvar0H.65.lcssa, %._crit_edge1719 ]
  %_k171.01721 = phi i32 [ 0, %.preheader841.lr.ph ], [ %2533, %._crit_edge1719 ]
  br i1 %2390, label %.lr.ph1718, label %._crit_edge1719

.lr.ph1718:                                       ; preds = %.preheader841
  %2399 = load i8**** %38, align 8, !tbaa !12
  %2400 = getelementptr inbounds i8*** %2399, i64 %indvars.iv2111
  %2401 = bitcast i8*** %2400 to double***
  %2402 = load double*** %2401, align 8, !tbaa !13
  %2403 = load double** %2402, align 8, !tbaa !13
  %2404 = getelementptr inbounds i8*** %2399, i64 %indvars.iv2113
  %2405 = load i8*** %2404, align 8, !tbaa !13
  %2406 = getelementptr inbounds i8** %2405, i64 %.
  %2407 = bitcast i8** %2406 to double**
  %2408 = load double** %2407, align 8, !tbaa !13
  %2409 = load i32* %2384, align 4, !tbaa !7
  br label %2410

; <label>:2410                                    ; preds = %.lr.ph1718, %._crit_edge1714
  %dtvvar0H.651717 = phi double [ %dtvvar0H.641723, %.lr.ph1718 ], [ %dtvvar0H.66.lcssa, %._crit_edge1714 ]
  %_j170.01716 = phi i32 [ 0, %.lr.ph1718 ], [ %2531, %._crit_edge1714 ]
  %2411 = sub nsw i32 %2409, %2394
  %2412 = mul nsw i32 %2389, %_k171.01721
  %2413 = add nsw i32 %2412, %_j170.01716
  %2414 = mul nsw i32 %2409, %2413
  %2415 = add nsw i32 %2411, %2414
  %2416 = sext i32 %2415 to i64
  %2417 = icmp sgt i32 %2394, 0
  br i1 %2417, label %.lr.ph1713, label %._crit_edge1714

.lr.ph1713:                                       ; preds = %2410
  %2418 = getelementptr inbounds double* %2408, i64 %2416
  %2419 = getelementptr inbounds double* %2403, i64 %2416
  %2420 = getelementptr inbounds double* %2396, i64 %2416
  %2421 = getelementptr inbounds double* %2395, i64 %2416
  br label %2422

; <label>:2422                                    ; preds = %.lr.ph1713, %2486
  %dtvvar0H.661711 = phi double [ %dtvvar0H.651717, %.lr.ph1713 ], [ %dtvvar0H.67, %2486 ]
  %_i169.01710 = phi i32 [ %2411, %.lr.ph1713 ], [ %2529, %2486 ]
  %_radius176.01709 = phi double* [ %2421, %.lr.ph1713 ], [ %2525, %2486 ]
  %_xyz177.01708 = phi double* [ %2420, %.lr.ph1713 ], [ %2526, %2486 ]
  %_to178.01707 = phi double* [ %2419, %.lr.ph1713 ], [ %2527, %2486 ]
  %_from179.01706 = phi double* [ %2418, %.lr.ph1713 ], [ %2528, %2486 ]
  %2423 = load double* %_radius176.01709, align 8, !tbaa !15
  %2424 = getelementptr inbounds double* %_radius176.01709, i64 %2397
  %2425 = load double* %2424, align 8, !tbaa !15
  %2426 = insertelement <2 x double> undef, double %2425, i32 0
  %2427 = insertelement <2 x double> %2426, double %2423, i32 1
  %2428 = fdiv <2 x double> <double 1.000000e+00, double 1.000000e+00>, %2427
  br i1 %105, label %2430, label %._crit_edge2425

._crit_edge2425:                                  ; preds = %2422
  %.pre2426 = load double* %_xyz177.01708, align 8, !tbaa !15
  %.phi.trans.insert2427 = getelementptr inbounds double* %_xyz177.01708, i64 %2397
  %.pre2428 = load double* %.phi.trans.insert2427, align 8, !tbaa !15
  %.phi.trans.insert2429 = getelementptr inbounds double* %_to178.01707, i64 %2397
  %.pre2430 = load double* %.phi.trans.insert2429, align 8, !tbaa !15
  %.pre2431 = load double* %109, align 16, !tbaa !15
  %.phi.trans.insert2432 = getelementptr inbounds double* %_from179.01706, i64 %2397
  %.pre2433 = load double* %.phi.trans.insert2432, align 8, !tbaa !15
  %2429 = fmul <2 x double> %2428, %2428
  br label %2486

; <label>:2430                                    ; preds = %2422
  %2431 = load double* %108, align 16, !tbaa !15
  %2432 = fmul double %107, %2431
  %2433 = load double* %_xyz177.01708, align 8, !tbaa !15
  %2434 = fmul <2 x double> %2428, %2428
  %2435 = extractelement <2 x double> %2434, i32 1
  %2436 = fmul double %2435, %2433
  %2437 = getelementptr inbounds double* %_xyz177.01708, i64 %2397
  %2438 = load double* %2437, align 8, !tbaa !15
  %2439 = extractelement <2 x double> %2434, i32 0
  %2440 = fmul double %2439, %2438
  %2441 = fadd double %2436, %2440
  %2442 = fmul double %2432, %2441
  %2443 = fsub double 1.000000e+00, %2442
  %2444 = fadd double %2442, 1.000000e+00
  %2445 = fdiv double %2443, %2444
  %2446 = getelementptr inbounds double* %_to178.01707, i64 %2397
  %2447 = load double* %2446, align 8, !tbaa !15
  %2448 = getelementptr inbounds double* %_to178.01707, i64 %2398
  %2449 = load double* %2448, align 8, !tbaa !15
  %2450 = fadd double %2447, %2449
  %2451 = getelementptr inbounds double* %_from179.01706, i64 %2397
  %2452 = load double* %2451, align 8, !tbaa !15
  %2453 = fadd double %2450, %2452
  %2454 = getelementptr inbounds double* %_from179.01706, i64 %2398
  %2455 = load double* %2454, align 8, !tbaa !15
  %2456 = fadd double %2453, %2455
  %2457 = fmul double %2456, 2.500000e-01
  %2458 = fsub double %2457, %var0
  %2459 = fmul double %32, %2458
  %2460 = fsub double %2447, %2452
  %2461 = fmul double %2425, %2460
  %2462 = getelementptr inbounds double* %_radius176.01709, i64 %2398
  %2463 = load double* %2462, align 8, !tbaa !15
  %2464 = fsub double %2449, %2455
  %2465 = fmul double %2463, %2464
  %2466 = fadd double %2461, %2465
  %2467 = fmul double %2466, 5.000000e-01
  %2468 = fadd double %2459, %2467
  %2469 = fsub double %2447, %2449
  %2470 = fadd double %2469, %2452
  %2471 = fsub double %2470, %2455
  %2472 = fmul double %2471, 2.500000e-01
  %2473 = load double* %109, align 16, !tbaa !15
  %2474 = fmul double %2472, %2473
  %2475 = fmul double %2425, %2425
  %2476 = fdiv double %2475, %2438
  %2477 = fmul double %2463, %2463
  %2478 = getelementptr inbounds double* %_xyz177.01708, i64 %2398
  %2479 = load double* %2478, align 8, !tbaa !15
  %2480 = fdiv double %2477, %2479
  %2481 = fadd double %2476, %2480
  %2482 = fmul double %2474, %2481
  %2483 = fadd double %2468, %2482
  %2484 = fmul double %2445, %2483
  %2485 = fadd double %34, %2484
  br label %2486

; <label>:2486                                    ; preds = %._crit_edge2425, %2430
  %2487 = phi double [ %.pre2433, %._crit_edge2425 ], [ %2452, %2430 ]
  %2488 = phi double [ %.pre2431, %._crit_edge2425 ], [ %2473, %2430 ]
  %2489 = phi double [ %.pre2430, %._crit_edge2425 ], [ %2447, %2430 ]
  %2490 = phi double [ %.pre2428, %._crit_edge2425 ], [ %2438, %2430 ]
  %2491 = phi double [ %.pre2426, %._crit_edge2425 ], [ %2433, %2430 ]
  %dtvvar0H.67 = phi double [ %dtvvar0H.661711, %._crit_edge2425 ], [ %2485, %2430 ]
  %2492 = phi <2 x double> [ %2429, %._crit_edge2425 ], [ %2434, %2430 ]
  %2493 = extractelement <2 x double> %2492, i32 1
  %2494 = fmul double %2493, %2491
  %2495 = extractelement <2 x double> %2492, i32 0
  %2496 = fmul double %2495, %2490
  %2497 = fadd double %2494, %2496
  %2498 = fmul double %dtvvar0H.67, %2497
  %2499 = extractelement <2 x double> %2428, i32 0
  %2500 = fmul double %2499, %2490
  %2501 = fmul double %33, %2499
  %2502 = fadd double %2501, 1.000000e+00
  %2503 = fmul double %2502, %2500
  %2504 = fsub double %2488, %2503
  %2505 = fmul double %2489, %2504
  %2506 = fadd double %2498, %2505
  %2507 = load double* %_from179.01706, align 8, !tbaa !15
  %2508 = extractelement <2 x double> %2428, i32 1
  %2509 = fmul double %2508, %2491
  %2510 = fmul double %33, %2508
  %2511 = fsub double 1.000000e+00, %2510
  %2512 = fmul double %2511, %2509
  %2513 = fsub double %2512, %2488
  %2514 = fmul double %2507, %2513
  %2515 = fadd double %2514, %2506
  %2516 = fsub double 1.000000e+00, %2501
  %2517 = fmul double %2516, %2500
  %2518 = fadd double %2488, %2517
  %2519 = fmul double %2518, %2487
  %2520 = fadd double %2519, %2515
  %2521 = fadd double %2510, 1.000000e+00
  %2522 = fmul double %2521, %2509
  %2523 = fadd double %2522, %2488
  %2524 = fdiv double %2520, %2523
  store double %2524, double* %_to178.01707, align 8, !tbaa !15
  %2525 = getelementptr inbounds double* %_radius176.01709, i64 1
  %2526 = getelementptr inbounds double* %_xyz177.01708, i64 1
  %2527 = getelementptr inbounds double* %_to178.01707, i64 1
  %2528 = getelementptr inbounds double* %_from179.01706, i64 1
  %2529 = add nsw i32 %_i169.01710, 1
  %2530 = icmp slt i32 %2529, %2409
  br i1 %2530, label %2422, label %._crit_edge1714

._crit_edge1714:                                  ; preds = %2486, %2410
  %dtvvar0H.66.lcssa = phi double [ %dtvvar0H.651717, %2410 ], [ %dtvvar0H.67, %2486 ]
  %2531 = add nuw nsw i32 %_j170.01716, 1
  %2532 = icmp slt i32 %2531, %2389
  br i1 %2532, label %2410, label %._crit_edge1719

._crit_edge1719:                                  ; preds = %._crit_edge1714, %.preheader841
  %dtvvar0H.65.lcssa = phi double [ %dtvvar0H.641723, %.preheader841 ], [ %dtvvar0H.66.lcssa, %._crit_edge1714 ]
  %2533 = add nuw nsw i32 %_k171.01721, 1
  %2534 = icmp slt i32 %2533, %2386
  br i1 %2534, label %.preheader841, label %.loopexit895

.loopexit895:                                     ; preds = %._crit_edge1719, %.preheader894, %.loopexit896
  %dtvvar0H.68 = phi double [ %dtvvar0H.63, %.loopexit896 ], [ %dtvvar0H.63, %.preheader894 ], [ %dtvvar0H.65.lcssa, %._crit_edge1719 ]
  %2535 = bitcast i32* %98 to i64*
  %2536 = load i64* %2535, align 8
  %2537 = trunc i64 %2536 to i32
  %2538 = icmp eq i32 %2537, 0
  br i1 %2538, label %.loopexit893, label %2539

; <label>:2539                                    ; preds = %.loopexit895
  %2540 = load i32** %93, align 8, !tbaa !17
  %2541 = getelementptr inbounds i32* %2540, i64 2
  %2542 = load i32* %2541, align 4, !tbaa !7
  %2543 = icmp sgt i32 %2542, 0
  br i1 %2543, label %.lr.ph1744, label %.loopexit893

.lr.ph1744:                                       ; preds = %2539
  %2544 = load i32* %110, align 4, !tbaa !7
  %2545 = icmp sgt i32 %2544, 0
  %2546 = load i32* %111, align 4, !tbaa !7
  %2547 = shl nsw i32 %2546, 1
  %2548 = load double** %86, align 8, !tbaa !13
  %2549 = load double** %112, align 8, !tbaa !13
  %2550 = sext i32 %2546 to i64
  %2551 = sext i32 %2547 to i64
  %2552 = sext i32 %2544 to i64
  br label %2554

.loopexit840:                                     ; preds = %.loopexit809, %2554
  %dtvvar0H.70.lcssa = phi double [ %dtvvar0H.691741, %2554 ], [ %dtvvar0H.71.lcssa, %.loopexit809 ]
  %2553 = icmp sgt i32 %_k185.01742.in, 1
  br i1 %2553, label %2554, label %.loopexit893

; <label>:2554                                    ; preds = %.lr.ph1744, %.loopexit840
  %_k185.01742.in = phi i32 [ %2542, %.lr.ph1744 ], [ %_k185.01742, %.loopexit840 ]
  %dtvvar0H.691741 = phi double [ %dtvvar0H.68, %.lr.ph1744 ], [ %dtvvar0H.70.lcssa, %.loopexit840 ]
  %_k185.01742 = add nsw i32 %_k185.01742.in, -1
  br i1 %2545, label %.lr.ph1738, label %.loopexit840

.lr.ph1738:                                       ; preds = %2554
  %2555 = load i32* %2540, align 4, !tbaa !7
  %2556 = add nsw i32 %2555, -1
  %2557 = getelementptr inbounds i32* %2540, i64 1
  %2558 = load i32* %2557, align 4, !tbaa !7
  %2559 = mul nsw i32 %2558, %_k185.01742
  %2560 = load i8**** %38, align 8, !tbaa !12
  %2561 = getelementptr inbounds i8*** %2560, i64 %indvars.iv2111
  %2562 = bitcast i8*** %2561 to double***
  %2563 = load double*** %2562, align 8, !tbaa !13
  %2564 = load double** %2563, align 8, !tbaa !13
  %2565 = getelementptr inbounds i8*** %2560, i64 %indvars.iv2113
  %2566 = load i8*** %2565, align 8, !tbaa !13
  %2567 = getelementptr inbounds i8** %2566, i64 %.
  %2568 = bitcast i8** %2567 to double**
  %2569 = load double** %2568, align 8, !tbaa !13
  %2570 = icmp sgt i32 %2555, 0
  %2571 = sext i32 %2559 to i64
  %2572 = sext i32 %2555 to i64
  %2573 = sext i32 %2556 to i64
  br label %2575

.loopexit809:                                     ; preds = %2647, %2575
  %dtvvar0H.71.lcssa = phi double [ %dtvvar0H.701735, %2575 ], [ %dtvvar0H.72, %2647 ]
  %2574 = icmp sgt i64 %indvars.iv2107, 1
  br i1 %2574, label %2575, label %.loopexit840

; <label>:2575                                    ; preds = %.lr.ph1738, %.loopexit809
  %indvars.iv2107 = phi i64 [ %2552, %.lr.ph1738 ], [ %indvars.iv.next2108, %.loopexit809 ]
  %dtvvar0H.701735 = phi double [ %dtvvar0H.691741, %.lr.ph1738 ], [ %dtvvar0H.71.lcssa, %.loopexit809 ]
  %indvars.iv.next2108 = add nsw i64 %indvars.iv2107, -1
  %2576 = add nsw i64 %2571, %indvars.iv.next2108
  %2577 = mul nsw i64 %2576, %2572
  %2578 = add nsw i64 %2577, %2573
  br i1 %2570, label %.lr.ph1732, label %.loopexit809

.lr.ph1732:                                       ; preds = %2575
  %2579 = getelementptr inbounds double* %2569, i64 %2578
  %2580 = getelementptr inbounds double* %2564, i64 %2578
  %2581 = getelementptr inbounds double* %2549, i64 %2578
  %2582 = getelementptr inbounds double* %2548, i64 %2578
  br label %2583

; <label>:2583                                    ; preds = %.lr.ph1732, %2647
  %dtvvar0H.711730 = phi double [ %dtvvar0H.701735, %.lr.ph1732 ], [ %dtvvar0H.72, %2647 ]
  %_i183.01729 = phi i32 [ %2556, %.lr.ph1732 ], [ %2690, %2647 ]
  %_radius190.01728 = phi double* [ %2582, %.lr.ph1732 ], [ %2686, %2647 ]
  %_xyz191.01727 = phi double* [ %2581, %.lr.ph1732 ], [ %2687, %2647 ]
  %_to192.01726 = phi double* [ %2580, %.lr.ph1732 ], [ %2688, %2647 ]
  %_from193.01725 = phi double* [ %2579, %.lr.ph1732 ], [ %2689, %2647 ]
  %2584 = load double* %_radius190.01728, align 8, !tbaa !15
  %2585 = getelementptr inbounds double* %_radius190.01728, i64 %2550
  %2586 = load double* %2585, align 8, !tbaa !15
  %2587 = insertelement <2 x double> undef, double %2586, i32 0
  %2588 = insertelement <2 x double> %2587, double %2584, i32 1
  %2589 = fdiv <2 x double> <double 1.000000e+00, double 1.000000e+00>, %2588
  br i1 %105, label %2591, label %._crit_edge2434

._crit_edge2434:                                  ; preds = %2583
  %.pre2435 = load double* %_xyz191.01727, align 8, !tbaa !15
  %.phi.trans.insert2436 = getelementptr inbounds double* %_xyz191.01727, i64 %2550
  %.pre2437 = load double* %.phi.trans.insert2436, align 8, !tbaa !15
  %.phi.trans.insert2438 = getelementptr inbounds double* %_to192.01726, i64 %2550
  %.pre2439 = load double* %.phi.trans.insert2438, align 8, !tbaa !15
  %.pre2440 = load double* %109, align 16, !tbaa !15
  %.phi.trans.insert2441 = getelementptr inbounds double* %_from193.01725, i64 %2550
  %.pre2442 = load double* %.phi.trans.insert2441, align 8, !tbaa !15
  %2590 = fmul <2 x double> %2589, %2589
  br label %2647

; <label>:2591                                    ; preds = %2583
  %2592 = load double* %108, align 16, !tbaa !15
  %2593 = fmul double %107, %2592
  %2594 = load double* %_xyz191.01727, align 8, !tbaa !15
  %2595 = fmul <2 x double> %2589, %2589
  %2596 = extractelement <2 x double> %2595, i32 1
  %2597 = fmul double %2596, %2594
  %2598 = getelementptr inbounds double* %_xyz191.01727, i64 %2550
  %2599 = load double* %2598, align 8, !tbaa !15
  %2600 = extractelement <2 x double> %2595, i32 0
  %2601 = fmul double %2600, %2599
  %2602 = fadd double %2597, %2601
  %2603 = fmul double %2593, %2602
  %2604 = fadd double %2603, 1.000000e+00
  %2605 = fsub double 1.000000e+00, %2603
  %2606 = fdiv double %2604, %2605
  %2607 = getelementptr inbounds double* %_to192.01726, i64 %2550
  %2608 = load double* %2607, align 8, !tbaa !15
  %2609 = getelementptr inbounds double* %_to192.01726, i64 %2551
  %2610 = load double* %2609, align 8, !tbaa !15
  %2611 = fadd double %2608, %2610
  %2612 = getelementptr inbounds double* %_from193.01725, i64 %2550
  %2613 = load double* %2612, align 8, !tbaa !15
  %2614 = fadd double %2611, %2613
  %2615 = getelementptr inbounds double* %_from193.01725, i64 %2551
  %2616 = load double* %2615, align 8, !tbaa !15
  %2617 = fadd double %2614, %2616
  %2618 = fmul double %2617, 2.500000e-01
  %2619 = fsub double %2618, %var0
  %2620 = fmul double %32, %2619
  %2621 = fsub double %2608, %2613
  %2622 = fmul double %2586, %2621
  %2623 = getelementptr inbounds double* %_radius190.01728, i64 %2551
  %2624 = load double* %2623, align 8, !tbaa !15
  %2625 = fsub double %2610, %2616
  %2626 = fmul double %2624, %2625
  %2627 = fadd double %2622, %2626
  %2628 = fmul double %2627, 5.000000e-01
  %2629 = fadd double %2620, %2628
  %2630 = fsub double %2610, %2608
  %2631 = fadd double %2630, %2616
  %2632 = fsub double %2631, %2613
  %2633 = fmul double %2632, 2.500000e-01
  %2634 = load double* %109, align 16, !tbaa !15
  %2635 = fmul double %2634, %2633
  %2636 = fmul double %2586, %2586
  %2637 = fdiv double %2636, %2599
  %2638 = fmul double %2624, %2624
  %2639 = getelementptr inbounds double* %_xyz191.01727, i64 %2551
  %2640 = load double* %2639, align 8, !tbaa !15
  %2641 = fdiv double %2638, %2640
  %2642 = fadd double %2637, %2641
  %2643 = fmul double %2635, %2642
  %2644 = fadd double %2629, %2643
  %2645 = fmul double %2606, %2644
  %2646 = fadd double %34, %2645
  br label %2647

; <label>:2647                                    ; preds = %._crit_edge2434, %2591
  %2648 = phi double [ %.pre2442, %._crit_edge2434 ], [ %2613, %2591 ]
  %2649 = phi double [ %.pre2440, %._crit_edge2434 ], [ %2634, %2591 ]
  %2650 = phi double [ %.pre2439, %._crit_edge2434 ], [ %2608, %2591 ]
  %2651 = phi double [ %.pre2437, %._crit_edge2434 ], [ %2599, %2591 ]
  %2652 = phi double [ %.pre2435, %._crit_edge2434 ], [ %2594, %2591 ]
  %dtvvar0H.72 = phi double [ %dtvvar0H.711730, %._crit_edge2434 ], [ %2646, %2591 ]
  %2653 = phi <2 x double> [ %2590, %._crit_edge2434 ], [ %2595, %2591 ]
  %2654 = extractelement <2 x double> %2653, i32 1
  %2655 = fmul double %2654, %2652
  %2656 = extractelement <2 x double> %2653, i32 0
  %2657 = fmul double %2656, %2651
  %2658 = fadd double %2655, %2657
  %2659 = fmul double %dtvvar0H.72, %2658
  %2660 = extractelement <2 x double> %2589, i32 0
  %2661 = fmul double %2660, %2651
  %2662 = fmul double %33, %2660
  %2663 = fadd double %2662, 1.000000e+00
  %2664 = fmul double %2663, %2661
  %2665 = fadd double %2649, %2664
  %2666 = fmul double %2650, %2665
  %2667 = fsub double %2659, %2666
  %2668 = load double* %_from193.01725, align 8, !tbaa !15
  %2669 = extractelement <2 x double> %2589, i32 1
  %2670 = fmul double %2669, %2652
  %2671 = fmul double %33, %2669
  %2672 = fsub double 1.000000e+00, %2671
  %2673 = fmul double %2672, %2670
  %2674 = fadd double %2673, %2649
  %2675 = fmul double %2668, %2674
  %2676 = fadd double %2675, %2667
  %2677 = fsub double 1.000000e+00, %2662
  %2678 = fmul double %2677, %2661
  %2679 = fsub double %2649, %2678
  %2680 = fmul double %2679, %2648
  %2681 = fsub double %2676, %2680
  %2682 = fadd double %2671, 1.000000e+00
  %2683 = fmul double %2682, %2670
  %2684 = fsub double %2683, %2649
  %2685 = fdiv double %2681, %2684
  store double %2685, double* %_to192.01726, align 8, !tbaa !15
  %2686 = getelementptr inbounds double* %_radius190.01728, i64 -1
  %2687 = getelementptr inbounds double* %_xyz191.01727, i64 -1
  %2688 = getelementptr inbounds double* %_to192.01726, i64 -1
  %2689 = getelementptr inbounds double* %_from193.01725, i64 -1
  %2690 = add nsw i32 %_i183.01729, -1
  %2691 = icmp sgt i32 %_i183.01729, 0
  br i1 %2691, label %2583, label %.loopexit809

.loopexit893:                                     ; preds = %.loopexit840, %2539, %.loopexit895
  %dtvvar0H.73 = phi double [ %dtvvar0H.68, %.loopexit895 ], [ %dtvvar0H.68, %2539 ], [ %dtvvar0H.70.lcssa, %.loopexit840 ]
  %2692 = icmp ult i64 %2536, 4294967296
  br i1 %2692, label %.loopexit892, label %.preheader891

.preheader891:                                    ; preds = %.loopexit893
  %2693 = load i32** %93, align 8, !tbaa !17
  %2694 = getelementptr inbounds i32* %2693, i64 2
  %2695 = load i32* %2694, align 4, !tbaa !7
  %2696 = icmp sgt i32 %2695, 0
  br i1 %2696, label %.lr.ph1765, label %.loopexit892

.lr.ph1765:                                       ; preds = %.preheader891
  %2697 = load i32* %110, align 4, !tbaa !7
  %2698 = getelementptr inbounds i32* %2693, i64 1
  %2699 = load i32* %2698, align 4, !tbaa !7
  %2700 = load i32* %111, align 4, !tbaa !7
  %2701 = sub nsw i32 0, %2700
  %2702 = mul nsw i32 %2700, -2
  %2703 = load double** %86, align 8, !tbaa !13
  %2704 = load double** %112, align 8, !tbaa !13
  %2705 = sext i32 %2701 to i64
  %2706 = sext i32 %2702 to i64
  br label %2707

; <label>:2707                                    ; preds = %.lr.ph1765, %._crit_edge1760
  %dtvvar0H.741764 = phi double [ %dtvvar0H.73, %.lr.ph1765 ], [ %dtvvar0H.75.lcssa, %._crit_edge1760 ]
  %_k199.01762 = phi i32 [ 0, %.lr.ph1765 ], [ %2842, %._crit_edge1760 ]
  %2708 = icmp sgt i32 %2697, 0
  br i1 %2708, label %.lr.ph1759, label %._crit_edge1760

.lr.ph1759:                                       ; preds = %2707
  %2709 = sub nsw i32 %2699, %2697
  %2710 = load i8**** %38, align 8, !tbaa !12
  %2711 = getelementptr inbounds i8*** %2710, i64 %indvars.iv2111
  %2712 = bitcast i8*** %2711 to double***
  %2713 = load double*** %2712, align 8, !tbaa !13
  %2714 = load double** %2713, align 8, !tbaa !13
  %2715 = getelementptr inbounds i8*** %2710, i64 %indvars.iv2113
  %2716 = load i8*** %2715, align 8, !tbaa !13
  %2717 = getelementptr inbounds i8** %2716, i64 %.
  %2718 = bitcast i8** %2717 to double**
  %2719 = load double** %2718, align 8, !tbaa !13
  %2720 = load i32* %2693, align 4, !tbaa !7
  %2721 = icmp sgt i32 %2720, 0
  br label %2722

; <label>:2722                                    ; preds = %.lr.ph1759, %._crit_edge1754
  %dtvvar0H.751757 = phi double [ %dtvvar0H.741764, %.lr.ph1759 ], [ %dtvvar0H.76.lcssa, %._crit_edge1754 ]
  %_j198.01756 = phi i32 [ %2709, %.lr.ph1759 ], [ %2840, %._crit_edge1754 ]
  %2723 = mul nsw i32 %2699, %_k199.01762
  %2724 = add nsw i32 %2723, %_j198.01756
  %2725 = mul nsw i32 %2720, %2724
  %2726 = sext i32 %2725 to i64
  br i1 %2721, label %.lr.ph1753, label %._crit_edge1754

.lr.ph1753:                                       ; preds = %2722
  %2727 = getelementptr inbounds double* %2719, i64 %2726
  %2728 = getelementptr inbounds double* %2714, i64 %2726
  %2729 = getelementptr inbounds double* %2704, i64 %2726
  %2730 = getelementptr inbounds double* %2703, i64 %2726
  br label %2731

; <label>:2731                                    ; preds = %.lr.ph1753, %2795
  %dtvvar0H.761751 = phi double [ %dtvvar0H.751757, %.lr.ph1753 ], [ %dtvvar0H.77, %2795 ]
  %_i197.01750 = phi i32 [ 0, %.lr.ph1753 ], [ %2838, %2795 ]
  %_radius204.01749 = phi double* [ %2730, %.lr.ph1753 ], [ %2834, %2795 ]
  %_xyz205.01748 = phi double* [ %2729, %.lr.ph1753 ], [ %2835, %2795 ]
  %_to206.01747 = phi double* [ %2728, %.lr.ph1753 ], [ %2836, %2795 ]
  %_from207.01746 = phi double* [ %2727, %.lr.ph1753 ], [ %2837, %2795 ]
  %2732 = load double* %_radius204.01749, align 8, !tbaa !15
  %2733 = getelementptr inbounds double* %_radius204.01749, i64 %2705
  %2734 = load double* %2733, align 8, !tbaa !15
  %2735 = insertelement <2 x double> undef, double %2734, i32 0
  %2736 = insertelement <2 x double> %2735, double %2732, i32 1
  %2737 = fdiv <2 x double> <double 1.000000e+00, double 1.000000e+00>, %2736
  br i1 %105, label %2739, label %._crit_edge2443

._crit_edge2443:                                  ; preds = %2731
  %.pre2444 = load double* %_xyz205.01748, align 8, !tbaa !15
  %.phi.trans.insert2445 = getelementptr inbounds double* %_xyz205.01748, i64 %2705
  %.pre2446 = load double* %.phi.trans.insert2445, align 8, !tbaa !15
  %.phi.trans.insert2447 = getelementptr inbounds double* %_to206.01747, i64 %2705
  %.pre2448 = load double* %.phi.trans.insert2447, align 8, !tbaa !15
  %.pre2449 = load double* %109, align 16, !tbaa !15
  %.phi.trans.insert2450 = getelementptr inbounds double* %_from207.01746, i64 %2705
  %.pre2451 = load double* %.phi.trans.insert2450, align 8, !tbaa !15
  %2738 = fmul <2 x double> %2737, %2737
  br label %2795

; <label>:2739                                    ; preds = %2731
  %2740 = load double* %108, align 16, !tbaa !15
  %2741 = fmul double %107, %2740
  %2742 = load double* %_xyz205.01748, align 8, !tbaa !15
  %2743 = fmul <2 x double> %2737, %2737
  %2744 = extractelement <2 x double> %2743, i32 1
  %2745 = fmul double %2744, %2742
  %2746 = getelementptr inbounds double* %_xyz205.01748, i64 %2705
  %2747 = load double* %2746, align 8, !tbaa !15
  %2748 = extractelement <2 x double> %2743, i32 0
  %2749 = fmul double %2748, %2747
  %2750 = fadd double %2745, %2749
  %2751 = fmul double %2741, %2750
  %2752 = fsub double 1.000000e+00, %2751
  %2753 = fadd double %2751, 1.000000e+00
  %2754 = fdiv double %2752, %2753
  %2755 = getelementptr inbounds double* %_to206.01747, i64 %2705
  %2756 = load double* %2755, align 8, !tbaa !15
  %2757 = getelementptr inbounds double* %_to206.01747, i64 %2706
  %2758 = load double* %2757, align 8, !tbaa !15
  %2759 = fadd double %2756, %2758
  %2760 = getelementptr inbounds double* %_from207.01746, i64 %2705
  %2761 = load double* %2760, align 8, !tbaa !15
  %2762 = fadd double %2759, %2761
  %2763 = getelementptr inbounds double* %_from207.01746, i64 %2706
  %2764 = load double* %2763, align 8, !tbaa !15
  %2765 = fadd double %2762, %2764
  %2766 = fmul double %2765, 2.500000e-01
  %2767 = fsub double %2766, %var0
  %2768 = fmul double %32, %2767
  %2769 = fsub double %2756, %2761
  %2770 = fmul double %2734, %2769
  %2771 = getelementptr inbounds double* %_radius204.01749, i64 %2706
  %2772 = load double* %2771, align 8, !tbaa !15
  %2773 = fsub double %2758, %2764
  %2774 = fmul double %2772, %2773
  %2775 = fadd double %2770, %2774
  %2776 = fmul double %2775, 5.000000e-01
  %2777 = fadd double %2768, %2776
  %2778 = fsub double %2756, %2758
  %2779 = fadd double %2778, %2761
  %2780 = fsub double %2779, %2764
  %2781 = fmul double %2780, 2.500000e-01
  %2782 = load double* %109, align 16, !tbaa !15
  %2783 = fmul double %2781, %2782
  %2784 = fmul double %2734, %2734
  %2785 = fdiv double %2784, %2747
  %2786 = fmul double %2772, %2772
  %2787 = getelementptr inbounds double* %_xyz205.01748, i64 %2706
  %2788 = load double* %2787, align 8, !tbaa !15
  %2789 = fdiv double %2786, %2788
  %2790 = fadd double %2785, %2789
  %2791 = fmul double %2783, %2790
  %2792 = fadd double %2777, %2791
  %2793 = fmul double %2754, %2792
  %2794 = fadd double %34, %2793
  br label %2795

; <label>:2795                                    ; preds = %._crit_edge2443, %2739
  %2796 = phi double [ %.pre2451, %._crit_edge2443 ], [ %2761, %2739 ]
  %2797 = phi double [ %.pre2449, %._crit_edge2443 ], [ %2782, %2739 ]
  %2798 = phi double [ %.pre2448, %._crit_edge2443 ], [ %2756, %2739 ]
  %2799 = phi double [ %.pre2446, %._crit_edge2443 ], [ %2747, %2739 ]
  %2800 = phi double [ %.pre2444, %._crit_edge2443 ], [ %2742, %2739 ]
  %dtvvar0H.77 = phi double [ %dtvvar0H.761751, %._crit_edge2443 ], [ %2794, %2739 ]
  %2801 = phi <2 x double> [ %2738, %._crit_edge2443 ], [ %2743, %2739 ]
  %2802 = extractelement <2 x double> %2801, i32 1
  %2803 = fmul double %2802, %2800
  %2804 = extractelement <2 x double> %2801, i32 0
  %2805 = fmul double %2804, %2799
  %2806 = fadd double %2803, %2805
  %2807 = fmul double %dtvvar0H.77, %2806
  %2808 = extractelement <2 x double> %2737, i32 0
  %2809 = fmul double %2808, %2799
  %2810 = fmul double %33, %2808
  %2811 = fadd double %2810, 1.000000e+00
  %2812 = fmul double %2811, %2809
  %2813 = fsub double %2797, %2812
  %2814 = fmul double %2798, %2813
  %2815 = fadd double %2807, %2814
  %2816 = load double* %_from207.01746, align 8, !tbaa !15
  %2817 = extractelement <2 x double> %2737, i32 1
  %2818 = fmul double %2817, %2800
  %2819 = fmul double %33, %2817
  %2820 = fsub double 1.000000e+00, %2819
  %2821 = fmul double %2820, %2818
  %2822 = fsub double %2821, %2797
  %2823 = fmul double %2816, %2822
  %2824 = fadd double %2823, %2815
  %2825 = fsub double 1.000000e+00, %2810
  %2826 = fmul double %2825, %2809
  %2827 = fadd double %2797, %2826
  %2828 = fmul double %2827, %2796
  %2829 = fadd double %2828, %2824
  %2830 = fadd double %2819, 1.000000e+00
  %2831 = fmul double %2830, %2818
  %2832 = fadd double %2831, %2797
  %2833 = fdiv double %2829, %2832
  store double %2833, double* %_to206.01747, align 8, !tbaa !15
  %2834 = getelementptr inbounds double* %_radius204.01749, i64 1
  %2835 = getelementptr inbounds double* %_xyz205.01748, i64 1
  %2836 = getelementptr inbounds double* %_to206.01747, i64 1
  %2837 = getelementptr inbounds double* %_from207.01746, i64 1
  %2838 = add nuw nsw i32 %_i197.01750, 1
  %2839 = icmp slt i32 %2838, %2720
  br i1 %2839, label %2731, label %._crit_edge1754

._crit_edge1754:                                  ; preds = %2795, %2722
  %dtvvar0H.76.lcssa = phi double [ %dtvvar0H.751757, %2722 ], [ %dtvvar0H.77, %2795 ]
  %2840 = add nsw i32 %_j198.01756, 1
  %2841 = icmp slt i32 %2840, %2699
  br i1 %2841, label %2722, label %._crit_edge1760

._crit_edge1760:                                  ; preds = %._crit_edge1754, %2707
  %dtvvar0H.75.lcssa = phi double [ %dtvvar0H.741764, %2707 ], [ %dtvvar0H.76.lcssa, %._crit_edge1754 ]
  %2842 = add nuw nsw i32 %_k199.01762, 1
  %2843 = icmp slt i32 %2842, %2695
  br i1 %2843, label %2707, label %.loopexit892

.loopexit892:                                     ; preds = %._crit_edge1760, %.preheader891, %.loopexit893
  %dtvvar0H.78 = phi double [ %dtvvar0H.73, %.loopexit893 ], [ %dtvvar0H.73, %.preheader891 ], [ %dtvvar0H.75.lcssa, %._crit_edge1760 ]
  %2844 = bitcast i32* %100 to i64*
  %2845 = load i64* %2844, align 16
  %2846 = trunc i64 %2845 to i32
  %2847 = icmp eq i32 %2846, 0
  br i1 %2847, label %.loopexit890, label %2848

; <label>:2848                                    ; preds = %.loopexit892
  %2849 = load i32* %102, align 4, !tbaa !7
  %2850 = icmp sgt i32 %2849, 0
  br i1 %2850, label %.lr.ph1786, label %.loopexit890

.lr.ph1786:                                       ; preds = %2848
  %2851 = load i32** %93, align 8, !tbaa !17
  %2852 = getelementptr inbounds i32* %2851, i64 1
  %2853 = load i32* %2852, align 4, !tbaa !7
  %2854 = icmp sgt i32 %2853, 0
  %2855 = load i32* %103, align 4, !tbaa !7
  %2856 = shl nsw i32 %2855, 1
  %2857 = load double** %86, align 8, !tbaa !13
  %2858 = load double** %104, align 16, !tbaa !13
  %2859 = sext i32 %2855 to i64
  %2860 = sext i32 %2856 to i64
  %2861 = sext i32 %2853 to i64
  br label %2863

.loopexit839:                                     ; preds = %.loopexit808, %2863
  %dtvvar0H.80.lcssa = phi double [ %dtvvar0H.791783, %2863 ], [ %dtvvar0H.81.lcssa, %.loopexit808 ]
  %2862 = icmp sgt i32 %_k213.01784.in, 1
  br i1 %2862, label %2863, label %.loopexit890

; <label>:2863                                    ; preds = %.lr.ph1786, %.loopexit839
  %_k213.01784.in = phi i32 [ %2849, %.lr.ph1786 ], [ %_k213.01784, %.loopexit839 ]
  %dtvvar0H.791783 = phi double [ %dtvvar0H.78, %.lr.ph1786 ], [ %dtvvar0H.80.lcssa, %.loopexit839 ]
  %_k213.01784 = add nsw i32 %_k213.01784.in, -1
  br i1 %2854, label %.lr.ph1780, label %.loopexit839

.lr.ph1780:                                       ; preds = %2863
  %2864 = load i32* %2851, align 4, !tbaa !7
  %2865 = add nsw i32 %2864, -1
  %2866 = mul nsw i32 %2853, %_k213.01784
  %2867 = load i8**** %38, align 8, !tbaa !12
  %2868 = getelementptr inbounds i8*** %2867, i64 %indvars.iv2111
  %2869 = bitcast i8*** %2868 to double***
  %2870 = load double*** %2869, align 8, !tbaa !13
  %2871 = load double** %2870, align 8, !tbaa !13
  %2872 = getelementptr inbounds i8*** %2867, i64 %indvars.iv2113
  %2873 = load i8*** %2872, align 8, !tbaa !13
  %2874 = getelementptr inbounds i8** %2873, i64 %.
  %2875 = bitcast i8** %2874 to double**
  %2876 = load double** %2875, align 8, !tbaa !13
  %2877 = icmp sgt i32 %2864, 0
  %2878 = sext i32 %2866 to i64
  %2879 = sext i32 %2864 to i64
  %2880 = sext i32 %2865 to i64
  br label %2882

.loopexit808:                                     ; preds = %2954, %2882
  %dtvvar0H.81.lcssa = phi double [ %dtvvar0H.801777, %2882 ], [ %dtvvar0H.82, %2954 ]
  %2881 = icmp sgt i64 %indvars.iv2109, 1
  br i1 %2881, label %2882, label %.loopexit839

; <label>:2882                                    ; preds = %.lr.ph1780, %.loopexit808
  %indvars.iv2109 = phi i64 [ %2861, %.lr.ph1780 ], [ %indvars.iv.next2110, %.loopexit808 ]
  %dtvvar0H.801777 = phi double [ %dtvvar0H.791783, %.lr.ph1780 ], [ %dtvvar0H.81.lcssa, %.loopexit808 ]
  %indvars.iv.next2110 = add nsw i64 %indvars.iv2109, -1
  %2883 = add nsw i64 %2878, %indvars.iv.next2110
  %2884 = mul nsw i64 %2883, %2879
  %2885 = add nsw i64 %2884, %2880
  br i1 %2877, label %.lr.ph1774, label %.loopexit808

.lr.ph1774:                                       ; preds = %2882
  %2886 = getelementptr inbounds double* %2876, i64 %2885
  %2887 = getelementptr inbounds double* %2871, i64 %2885
  %2888 = getelementptr inbounds double* %2858, i64 %2885
  %2889 = getelementptr inbounds double* %2857, i64 %2885
  br label %2890

; <label>:2890                                    ; preds = %.lr.ph1774, %2954
  %dtvvar0H.811772 = phi double [ %dtvvar0H.801777, %.lr.ph1774 ], [ %dtvvar0H.82, %2954 ]
  %_i211.01771 = phi i32 [ %2865, %.lr.ph1774 ], [ %2997, %2954 ]
  %_radius218.01770 = phi double* [ %2889, %.lr.ph1774 ], [ %2993, %2954 ]
  %_xyz219.01769 = phi double* [ %2888, %.lr.ph1774 ], [ %2994, %2954 ]
  %_to220.01768 = phi double* [ %2887, %.lr.ph1774 ], [ %2995, %2954 ]
  %_from221.01767 = phi double* [ %2886, %.lr.ph1774 ], [ %2996, %2954 ]
  %2891 = load double* %_radius218.01770, align 8, !tbaa !15
  %2892 = getelementptr inbounds double* %_radius218.01770, i64 %2859
  %2893 = load double* %2892, align 8, !tbaa !15
  %2894 = insertelement <2 x double> undef, double %2893, i32 0
  %2895 = insertelement <2 x double> %2894, double %2891, i32 1
  %2896 = fdiv <2 x double> <double 1.000000e+00, double 1.000000e+00>, %2895
  br i1 %105, label %2898, label %._crit_edge2452

._crit_edge2452:                                  ; preds = %2890
  %.pre2453 = load double* %_xyz219.01769, align 8, !tbaa !15
  %.phi.trans.insert2454 = getelementptr inbounds double* %_xyz219.01769, i64 %2859
  %.pre2455 = load double* %.phi.trans.insert2454, align 8, !tbaa !15
  %.phi.trans.insert2456 = getelementptr inbounds double* %_to220.01768, i64 %2859
  %.pre2457 = load double* %.phi.trans.insert2456, align 8, !tbaa !15
  %.pre2458 = load double* %109, align 16, !tbaa !15
  %.phi.trans.insert2459 = getelementptr inbounds double* %_from221.01767, i64 %2859
  %.pre2460 = load double* %.phi.trans.insert2459, align 8, !tbaa !15
  %2897 = fmul <2 x double> %2896, %2896
  br label %2954

; <label>:2898                                    ; preds = %2890
  %2899 = load double* %108, align 16, !tbaa !15
  %2900 = fmul double %107, %2899
  %2901 = load double* %_xyz219.01769, align 8, !tbaa !15
  %2902 = fmul <2 x double> %2896, %2896
  %2903 = extractelement <2 x double> %2902, i32 1
  %2904 = fmul double %2903, %2901
  %2905 = getelementptr inbounds double* %_xyz219.01769, i64 %2859
  %2906 = load double* %2905, align 8, !tbaa !15
  %2907 = extractelement <2 x double> %2902, i32 0
  %2908 = fmul double %2907, %2906
  %2909 = fadd double %2904, %2908
  %2910 = fmul double %2900, %2909
  %2911 = fadd double %2910, 1.000000e+00
  %2912 = fsub double 1.000000e+00, %2910
  %2913 = fdiv double %2911, %2912
  %2914 = getelementptr inbounds double* %_to220.01768, i64 %2859
  %2915 = load double* %2914, align 8, !tbaa !15
  %2916 = getelementptr inbounds double* %_to220.01768, i64 %2860
  %2917 = load double* %2916, align 8, !tbaa !15
  %2918 = fadd double %2915, %2917
  %2919 = getelementptr inbounds double* %_from221.01767, i64 %2859
  %2920 = load double* %2919, align 8, !tbaa !15
  %2921 = fadd double %2918, %2920
  %2922 = getelementptr inbounds double* %_from221.01767, i64 %2860
  %2923 = load double* %2922, align 8, !tbaa !15
  %2924 = fadd double %2921, %2923
  %2925 = fmul double %2924, 2.500000e-01
  %2926 = fsub double %2925, %var0
  %2927 = fmul double %32, %2926
  %2928 = fsub double %2915, %2920
  %2929 = fmul double %2893, %2928
  %2930 = getelementptr inbounds double* %_radius218.01770, i64 %2860
  %2931 = load double* %2930, align 8, !tbaa !15
  %2932 = fsub double %2917, %2923
  %2933 = fmul double %2931, %2932
  %2934 = fadd double %2929, %2933
  %2935 = fmul double %2934, 5.000000e-01
  %2936 = fadd double %2927, %2935
  %2937 = fsub double %2917, %2915
  %2938 = fadd double %2937, %2923
  %2939 = fsub double %2938, %2920
  %2940 = fmul double %2939, 2.500000e-01
  %2941 = load double* %109, align 16, !tbaa !15
  %2942 = fmul double %2941, %2940
  %2943 = fmul double %2893, %2893
  %2944 = fdiv double %2943, %2906
  %2945 = fmul double %2931, %2931
  %2946 = getelementptr inbounds double* %_xyz219.01769, i64 %2860
  %2947 = load double* %2946, align 8, !tbaa !15
  %2948 = fdiv double %2945, %2947
  %2949 = fadd double %2944, %2948
  %2950 = fmul double %2942, %2949
  %2951 = fadd double %2936, %2950
  %2952 = fmul double %2913, %2951
  %2953 = fadd double %34, %2952
  br label %2954

; <label>:2954                                    ; preds = %._crit_edge2452, %2898
  %2955 = phi double [ %.pre2460, %._crit_edge2452 ], [ %2920, %2898 ]
  %2956 = phi double [ %.pre2458, %._crit_edge2452 ], [ %2941, %2898 ]
  %2957 = phi double [ %.pre2457, %._crit_edge2452 ], [ %2915, %2898 ]
  %2958 = phi double [ %.pre2455, %._crit_edge2452 ], [ %2906, %2898 ]
  %2959 = phi double [ %.pre2453, %._crit_edge2452 ], [ %2901, %2898 ]
  %dtvvar0H.82 = phi double [ %dtvvar0H.811772, %._crit_edge2452 ], [ %2953, %2898 ]
  %2960 = phi <2 x double> [ %2897, %._crit_edge2452 ], [ %2902, %2898 ]
  %2961 = extractelement <2 x double> %2960, i32 1
  %2962 = fmul double %2961, %2959
  %2963 = extractelement <2 x double> %2960, i32 0
  %2964 = fmul double %2963, %2958
  %2965 = fadd double %2962, %2964
  %2966 = fmul double %dtvvar0H.82, %2965
  %2967 = extractelement <2 x double> %2896, i32 0
  %2968 = fmul double %2967, %2958
  %2969 = fmul double %33, %2967
  %2970 = fadd double %2969, 1.000000e+00
  %2971 = fmul double %2970, %2968
  %2972 = fadd double %2956, %2971
  %2973 = fmul double %2957, %2972
  %2974 = fsub double %2966, %2973
  %2975 = load double* %_from221.01767, align 8, !tbaa !15
  %2976 = extractelement <2 x double> %2896, i32 1
  %2977 = fmul double %2976, %2959
  %2978 = fmul double %33, %2976
  %2979 = fsub double 1.000000e+00, %2978
  %2980 = fmul double %2979, %2977
  %2981 = fadd double %2980, %2956
  %2982 = fmul double %2975, %2981
  %2983 = fadd double %2982, %2974
  %2984 = fsub double 1.000000e+00, %2969
  %2985 = fmul double %2984, %2968
  %2986 = fsub double %2956, %2985
  %2987 = fmul double %2986, %2955
  %2988 = fsub double %2983, %2987
  %2989 = fadd double %2978, 1.000000e+00
  %2990 = fmul double %2989, %2977
  %2991 = fsub double %2990, %2956
  %2992 = fdiv double %2988, %2991
  store double %2992, double* %_to220.01768, align 8, !tbaa !15
  %2993 = getelementptr inbounds double* %_radius218.01770, i64 -1
  %2994 = getelementptr inbounds double* %_xyz219.01769, i64 -1
  %2995 = getelementptr inbounds double* %_to220.01768, i64 -1
  %2996 = getelementptr inbounds double* %_from221.01767, i64 -1
  %2997 = add nsw i32 %_i211.01771, -1
  %2998 = icmp sgt i32 %_i211.01771, 0
  br i1 %2998, label %2890, label %.loopexit808

.loopexit890:                                     ; preds = %.loopexit839, %2848, %.loopexit892
  %dtvvar0H.83 = phi double [ %dtvvar0H.78, %.loopexit892 ], [ %dtvvar0H.78, %2848 ], [ %dtvvar0H.80.lcssa, %.loopexit839 ]
  %2999 = icmp ult i64 %2845, 4294967296
  br i1 %2999, label %.loopexit873, label %3000

; <label>:3000                                    ; preds = %.loopexit890
  %3001 = load i32* %102, align 4, !tbaa !7
  %3002 = icmp sgt i32 %3001, 0
  br i1 %3002, label %.preheader838.lr.ph, label %.loopexit873

.preheader838.lr.ph:                              ; preds = %3000
  %3003 = load i32** %93, align 8, !tbaa !17
  %3004 = getelementptr inbounds i32* %3003, i64 2
  %3005 = load i32* %3004, align 4, !tbaa !7
  %3006 = sub nsw i32 %3005, %3001
  %3007 = getelementptr inbounds i32* %3003, i64 1
  %3008 = load i32* %3007, align 4, !tbaa !7
  %3009 = icmp sgt i32 %3008, 0
  %3010 = load i32* %103, align 4, !tbaa !7
  %3011 = sub nsw i32 0, %3010
  %3012 = mul nsw i32 %3010, -2
  %3013 = load double** %86, align 8, !tbaa !13
  %3014 = load double** %104, align 16, !tbaa !13
  %3015 = sext i32 %3011 to i64
  %3016 = sext i32 %3012 to i64
  br label %.preheader838

.preheader838:                                    ; preds = %.preheader838.lr.ph, %._crit_edge1801
  %dtvvar0H.841805 = phi double [ %dtvvar0H.83, %.preheader838.lr.ph ], [ %dtvvar0H.85.lcssa, %._crit_edge1801 ]
  %_k227.01803 = phi i32 [ %3006, %.preheader838.lr.ph ], [ %3149, %._crit_edge1801 ]
  br i1 %3009, label %.lr.ph1800, label %._crit_edge1801

.lr.ph1800:                                       ; preds = %.preheader838
  %3017 = load i8**** %38, align 8, !tbaa !12
  %3018 = getelementptr inbounds i8*** %3017, i64 %indvars.iv2111
  %3019 = bitcast i8*** %3018 to double***
  %3020 = load double*** %3019, align 8, !tbaa !13
  %3021 = load double** %3020, align 8, !tbaa !13
  %3022 = getelementptr inbounds i8*** %3017, i64 %indvars.iv2113
  %3023 = load i8*** %3022, align 8, !tbaa !13
  %3024 = getelementptr inbounds i8** %3023, i64 %.
  %3025 = bitcast i8** %3024 to double**
  %3026 = load double** %3025, align 8, !tbaa !13
  %3027 = load i32* %3003, align 4, !tbaa !7
  %3028 = icmp sgt i32 %3027, 0
  br label %3029

; <label>:3029                                    ; preds = %.lr.ph1800, %._crit_edge1796
  %dtvvar0H.851799 = phi double [ %dtvvar0H.841805, %.lr.ph1800 ], [ %dtvvar0H.86.lcssa, %._crit_edge1796 ]
  %_j226.01798 = phi i32 [ 0, %.lr.ph1800 ], [ %3147, %._crit_edge1796 ]
  %3030 = mul nsw i32 %3008, %_k227.01803
  %3031 = add nsw i32 %3030, %_j226.01798
  %3032 = mul nsw i32 %3027, %3031
  %3033 = sext i32 %3032 to i64
  br i1 %3028, label %.lr.ph1795, label %._crit_edge1796

.lr.ph1795:                                       ; preds = %3029
  %3034 = getelementptr inbounds double* %3026, i64 %3033
  %3035 = getelementptr inbounds double* %3021, i64 %3033
  %3036 = getelementptr inbounds double* %3014, i64 %3033
  %3037 = getelementptr inbounds double* %3013, i64 %3033
  br label %3038

; <label>:3038                                    ; preds = %.lr.ph1795, %3102
  %dtvvar0H.861793 = phi double [ %dtvvar0H.851799, %.lr.ph1795 ], [ %dtvvar0H.87, %3102 ]
  %_i225.01792 = phi i32 [ 0, %.lr.ph1795 ], [ %3145, %3102 ]
  %_radius232.01791 = phi double* [ %3037, %.lr.ph1795 ], [ %3141, %3102 ]
  %_xyz233.01790 = phi double* [ %3036, %.lr.ph1795 ], [ %3142, %3102 ]
  %_to234.01789 = phi double* [ %3035, %.lr.ph1795 ], [ %3143, %3102 ]
  %_from235.01788 = phi double* [ %3034, %.lr.ph1795 ], [ %3144, %3102 ]
  %3039 = load double* %_radius232.01791, align 8, !tbaa !15
  %3040 = getelementptr inbounds double* %_radius232.01791, i64 %3015
  %3041 = load double* %3040, align 8, !tbaa !15
  %3042 = insertelement <2 x double> undef, double %3041, i32 0
  %3043 = insertelement <2 x double> %3042, double %3039, i32 1
  %3044 = fdiv <2 x double> <double 1.000000e+00, double 1.000000e+00>, %3043
  br i1 %105, label %3046, label %._crit_edge2461

._crit_edge2461:                                  ; preds = %3038
  %.pre2462 = load double* %_xyz233.01790, align 8, !tbaa !15
  %.phi.trans.insert2463 = getelementptr inbounds double* %_xyz233.01790, i64 %3015
  %.pre2464 = load double* %.phi.trans.insert2463, align 8, !tbaa !15
  %.phi.trans.insert2465 = getelementptr inbounds double* %_to234.01789, i64 %3015
  %.pre2466 = load double* %.phi.trans.insert2465, align 8, !tbaa !15
  %.pre2467 = load double* %109, align 16, !tbaa !15
  %.phi.trans.insert2468 = getelementptr inbounds double* %_from235.01788, i64 %3015
  %.pre2469 = load double* %.phi.trans.insert2468, align 8, !tbaa !15
  %3045 = fmul <2 x double> %3044, %3044
  br label %3102

; <label>:3046                                    ; preds = %3038
  %3047 = load double* %108, align 16, !tbaa !15
  %3048 = fmul double %107, %3047
  %3049 = load double* %_xyz233.01790, align 8, !tbaa !15
  %3050 = fmul <2 x double> %3044, %3044
  %3051 = extractelement <2 x double> %3050, i32 1
  %3052 = fmul double %3051, %3049
  %3053 = getelementptr inbounds double* %_xyz233.01790, i64 %3015
  %3054 = load double* %3053, align 8, !tbaa !15
  %3055 = extractelement <2 x double> %3050, i32 0
  %3056 = fmul double %3055, %3054
  %3057 = fadd double %3052, %3056
  %3058 = fmul double %3048, %3057
  %3059 = fsub double 1.000000e+00, %3058
  %3060 = fadd double %3058, 1.000000e+00
  %3061 = fdiv double %3059, %3060
  %3062 = getelementptr inbounds double* %_to234.01789, i64 %3015
  %3063 = load double* %3062, align 8, !tbaa !15
  %3064 = getelementptr inbounds double* %_to234.01789, i64 %3016
  %3065 = load double* %3064, align 8, !tbaa !15
  %3066 = fadd double %3063, %3065
  %3067 = getelementptr inbounds double* %_from235.01788, i64 %3015
  %3068 = load double* %3067, align 8, !tbaa !15
  %3069 = fadd double %3066, %3068
  %3070 = getelementptr inbounds double* %_from235.01788, i64 %3016
  %3071 = load double* %3070, align 8, !tbaa !15
  %3072 = fadd double %3069, %3071
  %3073 = fmul double %3072, 2.500000e-01
  %3074 = fsub double %3073, %var0
  %3075 = fmul double %32, %3074
  %3076 = fsub double %3063, %3068
  %3077 = fmul double %3041, %3076
  %3078 = getelementptr inbounds double* %_radius232.01791, i64 %3016
  %3079 = load double* %3078, align 8, !tbaa !15
  %3080 = fsub double %3065, %3071
  %3081 = fmul double %3079, %3080
  %3082 = fadd double %3077, %3081
  %3083 = fmul double %3082, 5.000000e-01
  %3084 = fadd double %3075, %3083
  %3085 = fsub double %3063, %3065
  %3086 = fadd double %3085, %3068
  %3087 = fsub double %3086, %3071
  %3088 = fmul double %3087, 2.500000e-01
  %3089 = load double* %109, align 16, !tbaa !15
  %3090 = fmul double %3088, %3089
  %3091 = fmul double %3041, %3041
  %3092 = fdiv double %3091, %3054
  %3093 = fmul double %3079, %3079
  %3094 = getelementptr inbounds double* %_xyz233.01790, i64 %3016
  %3095 = load double* %3094, align 8, !tbaa !15
  %3096 = fdiv double %3093, %3095
  %3097 = fadd double %3092, %3096
  %3098 = fmul double %3090, %3097
  %3099 = fadd double %3084, %3098
  %3100 = fmul double %3061, %3099
  %3101 = fadd double %34, %3100
  br label %3102

; <label>:3102                                    ; preds = %._crit_edge2461, %3046
  %3103 = phi double [ %.pre2469, %._crit_edge2461 ], [ %3068, %3046 ]
  %3104 = phi double [ %.pre2467, %._crit_edge2461 ], [ %3089, %3046 ]
  %3105 = phi double [ %.pre2466, %._crit_edge2461 ], [ %3063, %3046 ]
  %3106 = phi double [ %.pre2464, %._crit_edge2461 ], [ %3054, %3046 ]
  %3107 = phi double [ %.pre2462, %._crit_edge2461 ], [ %3049, %3046 ]
  %dtvvar0H.87 = phi double [ %dtvvar0H.861793, %._crit_edge2461 ], [ %3101, %3046 ]
  %3108 = phi <2 x double> [ %3045, %._crit_edge2461 ], [ %3050, %3046 ]
  %3109 = extractelement <2 x double> %3108, i32 1
  %3110 = fmul double %3109, %3107
  %3111 = extractelement <2 x double> %3108, i32 0
  %3112 = fmul double %3111, %3106
  %3113 = fadd double %3110, %3112
  %3114 = fmul double %dtvvar0H.87, %3113
  %3115 = extractelement <2 x double> %3044, i32 0
  %3116 = fmul double %3115, %3106
  %3117 = fmul double %33, %3115
  %3118 = fadd double %3117, 1.000000e+00
  %3119 = fmul double %3118, %3116
  %3120 = fsub double %3104, %3119
  %3121 = fmul double %3105, %3120
  %3122 = fadd double %3114, %3121
  %3123 = load double* %_from235.01788, align 8, !tbaa !15
  %3124 = extractelement <2 x double> %3044, i32 1
  %3125 = fmul double %3124, %3107
  %3126 = fmul double %33, %3124
  %3127 = fsub double 1.000000e+00, %3126
  %3128 = fmul double %3127, %3125
  %3129 = fsub double %3128, %3104
  %3130 = fmul double %3123, %3129
  %3131 = fadd double %3130, %3122
  %3132 = fsub double 1.000000e+00, %3117
  %3133 = fmul double %3132, %3116
  %3134 = fadd double %3104, %3133
  %3135 = fmul double %3134, %3103
  %3136 = fadd double %3135, %3131
  %3137 = fadd double %3126, 1.000000e+00
  %3138 = fmul double %3137, %3125
  %3139 = fadd double %3138, %3104
  %3140 = fdiv double %3136, %3139
  store double %3140, double* %_to234.01789, align 8, !tbaa !15
  %3141 = getelementptr inbounds double* %_radius232.01791, i64 1
  %3142 = getelementptr inbounds double* %_xyz233.01790, i64 1
  %3143 = getelementptr inbounds double* %_to234.01789, i64 1
  %3144 = getelementptr inbounds double* %_from235.01788, i64 1
  %3145 = add nuw nsw i32 %_i225.01792, 1
  %3146 = icmp slt i32 %3145, %3027
  br i1 %3146, label %3038, label %._crit_edge1796

._crit_edge1796:                                  ; preds = %3102, %3029
  %dtvvar0H.86.lcssa = phi double [ %dtvvar0H.851799, %3029 ], [ %dtvvar0H.87, %3102 ]
  %3147 = add nuw nsw i32 %_j226.01798, 1
  %3148 = icmp slt i32 %3147, %3008
  br i1 %3148, label %3029, label %._crit_edge1801

._crit_edge1801:                                  ; preds = %._crit_edge1796, %.preheader838
  %dtvvar0H.85.lcssa = phi double [ %dtvvar0H.841805, %.preheader838 ], [ %dtvvar0H.86.lcssa, %._crit_edge1796 ]
  %3149 = add nsw i32 %_k227.01803, 1
  %3150 = icmp slt i32 %3149, %3005
  br i1 %3150, label %.preheader838, label %.loopexit873

; <label>:3151                                    ; preds = %177
  br i1 %96, label %3154, label %3152

; <label>:3152                                    ; preds = %3151
  %3153 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 1513, i8* getelementptr inbounds ([88 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([58 x i8]* @.str12, i64 0, i64 0), i32 %7) #5
  br label %.loopexit947

; <label>:3154                                    ; preds = %3151
  %3155 = bitcast [6 x i32]* %doBC to i64*
  %3156 = load i64* %3155, align 16
  %3157 = trunc i64 %3156 to i32
  %3158 = icmp eq i32 %3157, 0
  br i1 %3158, label %.loopexit904, label %3159

; <label>:3159                                    ; preds = %3154
  %3160 = load i32** %93, align 8, !tbaa !17
  %3161 = getelementptr inbounds i32* %3160, i64 2
  %3162 = load i32* %3161, align 4, !tbaa !7
  %3163 = icmp sgt i32 %3162, 0
  br i1 %3163, label %.lr.ph1582, label %.loopexit904

.lr.ph1582:                                       ; preds = %3159
  %3164 = getelementptr inbounds i32* %3160, i64 1
  %3165 = load i32* %3164, align 4, !tbaa !7
  %3166 = icmp sgt i32 %3165, 0
  %3167 = load i32* %113, align 4, !tbaa !7
  %3168 = shl nsw i32 %3167, 1
  %3169 = load i32* %114, align 4, !tbaa !7
  %3170 = add nsw i32 %3169, -1
  %3171 = load double** %86, align 8, !tbaa !13
  %3172 = load double** %115, align 16, !tbaa !13
  %3173 = icmp sgt i32 %3169, 0
  %3174 = sext i32 %3167 to i64
  %3175 = load double* %108, align 16, !tbaa !15
  %3176 = fmul double %107, %3175
  %3177 = sext i32 %3168 to i64
  %3178 = load double* %109, align 16, !tbaa !15
  %3179 = sext i32 %3165 to i64
  %3180 = sext i32 %3170 to i64
  br label %3182

.loopexit847:                                     ; preds = %.loopexit813, %3182
  %dtvvar0H.89.lcssa = phi double [ %dtvvar0H.881579, %3182 ], [ %dtvvar0H.90.lcssa, %.loopexit813 ]
  %3181 = icmp sgt i32 %_k241.01580.in, 1
  br i1 %3181, label %3182, label %.loopexit904

; <label>:3182                                    ; preds = %.lr.ph1582, %.loopexit847
  %_k241.01580.in = phi i32 [ %3162, %.lr.ph1582 ], [ %_k241.01580, %.loopexit847 ]
  %dtvvar0H.881579 = phi double [ %dtvvar0H.02051, %.lr.ph1582 ], [ %dtvvar0H.89.lcssa, %.loopexit847 ]
  %_k241.01580 = add nsw i32 %_k241.01580.in, -1
  br i1 %3166, label %.lr.ph1576, label %.loopexit847

.lr.ph1576:                                       ; preds = %3182
  %3183 = load i32* %3160, align 4, !tbaa !7
  %3184 = mul nsw i32 %3165, %_k241.01580
  %3185 = load i8**** %38, align 8, !tbaa !12
  %3186 = getelementptr inbounds i8*** %3185, i64 %indvars.iv2111
  %3187 = bitcast i8*** %3186 to i16***
  %3188 = load i16*** %3187, align 8, !tbaa !13
  %3189 = load i16** %3188, align 8, !tbaa !13
  %3190 = getelementptr inbounds i8*** %3185, i64 %indvars.iv2113
  %3191 = load i8*** %3190, align 8, !tbaa !13
  %3192 = getelementptr inbounds i8** %3191, i64 %.
  %3193 = bitcast i8** %3192 to i16**
  %3194 = load i16** %3193, align 8, !tbaa !13
  %3195 = sext i32 %3184 to i64
  %3196 = sext i32 %3183 to i64
  br label %3198

.loopexit813:                                     ; preds = %3275, %3198
  %dtvvar0H.90.lcssa = phi double [ %dtvvar0H.891573, %3198 ], [ %dtvvar0H.91, %3275 ]
  %3197 = icmp sgt i64 %indvars.iv2099, 1
  br i1 %3197, label %3198, label %.loopexit847

; <label>:3198                                    ; preds = %.lr.ph1576, %.loopexit813
  %indvars.iv2099 = phi i64 [ %3179, %.lr.ph1576 ], [ %indvars.iv.next2100, %.loopexit813 ]
  %dtvvar0H.891573 = phi double [ %dtvvar0H.881579, %.lr.ph1576 ], [ %dtvvar0H.90.lcssa, %.loopexit813 ]
  %indvars.iv.next2100 = add nsw i64 %indvars.iv2099, -1
  %3199 = add nsw i64 %3195, %indvars.iv.next2100
  %3200 = mul nsw i64 %3199, %3196
  %3201 = add nsw i64 %3200, %3180
  br i1 %3173, label %.lr.ph1570, label %.loopexit813

.lr.ph1570:                                       ; preds = %3198
  %3202 = getelementptr inbounds i16* %3194, i64 %3201
  %3203 = getelementptr inbounds i16* %3189, i64 %3201
  %3204 = getelementptr inbounds double* %3172, i64 %3201
  %3205 = getelementptr inbounds double* %3171, i64 %3201
  br label %3206

; <label>:3206                                    ; preds = %.lr.ph1570, %3275
  %dtvvar0H.901568 = phi double [ %dtvvar0H.891573, %.lr.ph1570 ], [ %dtvvar0H.91, %3275 ]
  %_i239.01567 = phi i32 [ %3170, %.lr.ph1570 ], [ %3320, %3275 ]
  %_radius246.01566 = phi double* [ %3205, %.lr.ph1570 ], [ %3316, %3275 ]
  %_xyz247.01565 = phi double* [ %3204, %.lr.ph1570 ], [ %3317, %3275 ]
  %_to248.01564 = phi i16* [ %3203, %.lr.ph1570 ], [ %3318, %3275 ]
  %_from249.01563 = phi i16* [ %3202, %.lr.ph1570 ], [ %3319, %3275 ]
  %3207 = load double* %_radius246.01566, align 8, !tbaa !15
  %3208 = getelementptr inbounds double* %_radius246.01566, i64 %3174
  %3209 = load double* %3208, align 8, !tbaa !15
  %3210 = insertelement <2 x double> undef, double %3209, i32 0
  %3211 = insertelement <2 x double> %3210, double %3207, i32 1
  %3212 = fdiv <2 x double> <double 1.000000e+00, double 1.000000e+00>, %3211
  %3213 = load double* %_xyz247.01565, align 8, !tbaa !15
  br i1 %105, label %3215, label %._crit_edge2368

._crit_edge2368:                                  ; preds = %3206
  %.phi.trans.insert2370 = getelementptr inbounds double* %_xyz247.01565, i64 %3174
  %.pre2371 = load double* %.phi.trans.insert2370, align 8, !tbaa !15
  %.phi.trans.insert2372 = getelementptr inbounds i16* %_to248.01564, i64 %3174
  %.pre2373 = load i16* %.phi.trans.insert2372, align 2, !tbaa !22
  %.phi.trans.insert2374 = getelementptr inbounds i16* %_from249.01563, i64 %3174
  %.pre2375 = load i16* %.phi.trans.insert2374, align 2, !tbaa !22
  %3214 = fmul <2 x double> %3212, %3212
  br label %3275

; <label>:3215                                    ; preds = %3206
  %3216 = fmul <2 x double> %3212, %3212
  %3217 = extractelement <2 x double> %3216, i32 1
  %3218 = fmul double %3217, %3213
  %3219 = getelementptr inbounds double* %_xyz247.01565, i64 %3174
  %3220 = load double* %3219, align 8, !tbaa !15
  %3221 = extractelement <2 x double> %3216, i32 0
  %3222 = fmul double %3221, %3220
  %3223 = fadd double %3218, %3222
  %3224 = fmul double %3176, %3223
  %3225 = fadd double %3224, 1.000000e+00
  %3226 = fsub double 1.000000e+00, %3224
  %3227 = fdiv double %3225, %3226
  %3228 = getelementptr inbounds i16* %_to248.01564, i64 %3174
  %3229 = load i16* %3228, align 2, !tbaa !22
  %3230 = sext i16 %3229 to i32
  %3231 = getelementptr inbounds i16* %_to248.01564, i64 %3177
  %3232 = load i16* %3231, align 2, !tbaa !22
  %3233 = sext i16 %3232 to i32
  %3234 = add nsw i32 %3233, %3230
  %3235 = getelementptr inbounds i16* %_from249.01563, i64 %3174
  %3236 = load i16* %3235, align 2, !tbaa !22
  %3237 = sext i16 %3236 to i32
  %3238 = add nsw i32 %3234, %3237
  %3239 = getelementptr inbounds i16* %_from249.01563, i64 %3177
  %3240 = load i16* %3239, align 2, !tbaa !22
  %3241 = sext i16 %3240 to i32
  %3242 = add nsw i32 %3238, %3241
  %3243 = sitofp i32 %3242 to double
  %3244 = fmul double %3243, 2.500000e-01
  %3245 = fsub double %3244, %var0
  %3246 = fmul double %32, %3245
  %3247 = sub nsw i32 %3230, %3237
  %3248 = sitofp i32 %3247 to double
  %3249 = fmul double %3209, %3248
  %3250 = getelementptr inbounds double* %_radius246.01566, i64 %3177
  %3251 = load double* %3250, align 8, !tbaa !15
  %3252 = sub nsw i32 %3233, %3241
  %3253 = sitofp i32 %3252 to double
  %3254 = fmul double %3251, %3253
  %3255 = fadd double %3249, %3254
  %3256 = fmul double %3255, 5.000000e-01
  %3257 = fadd double %3246, %3256
  %3258 = sub nsw i32 %3233, %3230
  %3259 = sub nsw i32 %3258, %3237
  %3260 = add nsw i32 %3259, %3241
  %3261 = sitofp i32 %3260 to double
  %3262 = fmul double %3261, 2.500000e-01
  %3263 = fmul double %3178, %3262
  %3264 = fmul double %3209, %3209
  %3265 = fdiv double %3264, %3220
  %3266 = fmul double %3251, %3251
  %3267 = getelementptr inbounds double* %_xyz247.01565, i64 %3177
  %3268 = load double* %3267, align 8, !tbaa !15
  %3269 = fdiv double %3266, %3268
  %3270 = fadd double %3265, %3269
  %3271 = fmul double %3263, %3270
  %3272 = fadd double %3257, %3271
  %3273 = fmul double %3227, %3272
  %3274 = fadd double %34, %3273
  br label %3275

; <label>:3275                                    ; preds = %._crit_edge2368, %3215
  %3276 = phi i16 [ %.pre2375, %._crit_edge2368 ], [ %3236, %3215 ]
  %3277 = phi i16 [ %.pre2373, %._crit_edge2368 ], [ %3229, %3215 ]
  %3278 = phi double [ %.pre2371, %._crit_edge2368 ], [ %3220, %3215 ]
  %dtvvar0H.91 = phi double [ %dtvvar0H.901568, %._crit_edge2368 ], [ %3274, %3215 ]
  %3279 = phi <2 x double> [ %3214, %._crit_edge2368 ], [ %3216, %3215 ]
  %3280 = extractelement <2 x double> %3279, i32 1
  %3281 = fmul double %3280, %3213
  %3282 = extractelement <2 x double> %3279, i32 0
  %3283 = fmul double %3282, %3278
  %3284 = fadd double %3281, %3283
  %3285 = fmul double %dtvvar0H.91, %3284
  %3286 = sitofp i16 %3277 to double
  %3287 = extractelement <2 x double> %3212, i32 0
  %3288 = fmul double %3287, %3278
  %3289 = fmul double %33, %3287
  %3290 = fadd double %3289, 1.000000e+00
  %3291 = fmul double %3290, %3288
  %3292 = fadd double %3178, %3291
  %3293 = fmul double %3286, %3292
  %3294 = fsub double %3285, %3293
  %3295 = load i16* %_from249.01563, align 2, !tbaa !22
  %3296 = sitofp i16 %3295 to double
  %3297 = extractelement <2 x double> %3212, i32 1
  %3298 = fmul double %3297, %3213
  %3299 = fmul double %33, %3297
  %3300 = fsub double 1.000000e+00, %3299
  %3301 = fmul double %3300, %3298
  %3302 = fadd double %3301, %3178
  %3303 = fmul double %3302, %3296
  %3304 = fadd double %3294, %3303
  %3305 = sitofp i16 %3276 to double
  %3306 = fsub double 1.000000e+00, %3289
  %3307 = fmul double %3306, %3288
  %3308 = fsub double %3178, %3307
  %3309 = fmul double %3308, %3305
  %3310 = fsub double %3304, %3309
  %3311 = fadd double %3299, 1.000000e+00
  %3312 = fmul double %3311, %3298
  %3313 = fsub double %3312, %3178
  %3314 = fdiv double %3310, %3313
  %3315 = fptosi double %3314 to i16
  store i16 %3315, i16* %_to248.01564, align 2, !tbaa !22
  %3316 = getelementptr inbounds double* %_radius246.01566, i64 -1
  %3317 = getelementptr inbounds double* %_xyz247.01565, i64 -1
  %3318 = getelementptr inbounds i16* %_to248.01564, i64 -1
  %3319 = getelementptr inbounds i16* %_from249.01563, i64 -1
  %3320 = add nsw i32 %_i239.01567, -1
  %3321 = icmp sgt i32 %_i239.01567, 0
  br i1 %3321, label %3206, label %.loopexit813

.loopexit904:                                     ; preds = %.loopexit847, %3159, %3154
  %dtvvar0H.92 = phi double [ %dtvvar0H.02051, %3154 ], [ %dtvvar0H.02051, %3159 ], [ %dtvvar0H.89.lcssa, %.loopexit847 ]
  %3322 = icmp ult i64 %3156, 4294967296
  br i1 %3322, label %.loopexit903, label %.preheader902

.preheader902:                                    ; preds = %.loopexit904
  %3323 = load i32** %93, align 8, !tbaa !17
  %3324 = getelementptr inbounds i32* %3323, i64 2
  %3325 = load i32* %3324, align 4, !tbaa !7
  %3326 = icmp sgt i32 %3325, 0
  br i1 %3326, label %.preheader846.lr.ph, label %.loopexit903

.preheader846.lr.ph:                              ; preds = %.preheader902
  %3327 = getelementptr inbounds i32* %3323, i64 1
  %3328 = load i32* %3327, align 4, !tbaa !7
  %3329 = icmp sgt i32 %3328, 0
  %3330 = load i32* %113, align 4, !tbaa !7
  %3331 = sub nsw i32 0, %3330
  %3332 = mul nsw i32 %3330, -2
  %3333 = load i32* %114, align 4, !tbaa !7
  %3334 = load double** %86, align 8, !tbaa !13
  %3335 = load double** %115, align 16, !tbaa !13
  %3336 = sext i32 %3331 to i64
  %3337 = load double* %108, align 16, !tbaa !15
  %3338 = fmul double %107, %3337
  %3339 = sext i32 %3332 to i64
  %3340 = load double* %109, align 16, !tbaa !15
  br label %.preheader846

.preheader846:                                    ; preds = %.preheader846.lr.ph, %._crit_edge1597
  %dtvvar0H.931601 = phi double [ %dtvvar0H.92, %.preheader846.lr.ph ], [ %dtvvar0H.94.lcssa, %._crit_edge1597 ]
  %_k255.01599 = phi i32 [ 0, %.preheader846.lr.ph ], [ %3482, %._crit_edge1597 ]
  br i1 %3329, label %.lr.ph1596, label %._crit_edge1597

.lr.ph1596:                                       ; preds = %.preheader846
  %3341 = load i8**** %38, align 8, !tbaa !12
  %3342 = getelementptr inbounds i8*** %3341, i64 %indvars.iv2111
  %3343 = bitcast i8*** %3342 to i16***
  %3344 = load i16*** %3343, align 8, !tbaa !13
  %3345 = load i16** %3344, align 8, !tbaa !13
  %3346 = getelementptr inbounds i8*** %3341, i64 %indvars.iv2113
  %3347 = load i8*** %3346, align 8, !tbaa !13
  %3348 = getelementptr inbounds i8** %3347, i64 %.
  %3349 = bitcast i8** %3348 to i16**
  %3350 = load i16** %3349, align 8, !tbaa !13
  %3351 = load i32* %3323, align 4, !tbaa !7
  br label %3352

; <label>:3352                                    ; preds = %.lr.ph1596, %._crit_edge1592
  %dtvvar0H.941595 = phi double [ %dtvvar0H.931601, %.lr.ph1596 ], [ %dtvvar0H.95.lcssa, %._crit_edge1592 ]
  %_j254.01594 = phi i32 [ 0, %.lr.ph1596 ], [ %3480, %._crit_edge1592 ]
  %3353 = sub nsw i32 %3351, %3333
  %3354 = mul nsw i32 %3328, %_k255.01599
  %3355 = add nsw i32 %3354, %_j254.01594
  %3356 = mul nsw i32 %3351, %3355
  %3357 = add nsw i32 %3353, %3356
  %3358 = sext i32 %3357 to i64
  %3359 = icmp sgt i32 %3333, 0
  br i1 %3359, label %.lr.ph1591, label %._crit_edge1592

.lr.ph1591:                                       ; preds = %3352
  %3360 = getelementptr inbounds i16* %3350, i64 %3358
  %3361 = getelementptr inbounds i16* %3345, i64 %3358
  %3362 = getelementptr inbounds double* %3335, i64 %3358
  %3363 = getelementptr inbounds double* %3334, i64 %3358
  br label %3364

; <label>:3364                                    ; preds = %.lr.ph1591, %3433
  %dtvvar0H.951589 = phi double [ %dtvvar0H.941595, %.lr.ph1591 ], [ %dtvvar0H.96, %3433 ]
  %_i253.01588 = phi i32 [ %3353, %.lr.ph1591 ], [ %3478, %3433 ]
  %_radius260.01587 = phi double* [ %3363, %.lr.ph1591 ], [ %3474, %3433 ]
  %_xyz261.01586 = phi double* [ %3362, %.lr.ph1591 ], [ %3475, %3433 ]
  %_to262.01585 = phi i16* [ %3361, %.lr.ph1591 ], [ %3476, %3433 ]
  %_from263.01584 = phi i16* [ %3360, %.lr.ph1591 ], [ %3477, %3433 ]
  %3365 = load double* %_radius260.01587, align 8, !tbaa !15
  %3366 = getelementptr inbounds double* %_radius260.01587, i64 %3336
  %3367 = load double* %3366, align 8, !tbaa !15
  %3368 = insertelement <2 x double> undef, double %3367, i32 0
  %3369 = insertelement <2 x double> %3368, double %3365, i32 1
  %3370 = fdiv <2 x double> <double 1.000000e+00, double 1.000000e+00>, %3369
  %3371 = load double* %_xyz261.01586, align 8, !tbaa !15
  br i1 %105, label %3373, label %._crit_edge2376

._crit_edge2376:                                  ; preds = %3364
  %.phi.trans.insert2378 = getelementptr inbounds double* %_xyz261.01586, i64 %3336
  %.pre2379 = load double* %.phi.trans.insert2378, align 8, !tbaa !15
  %.phi.trans.insert2380 = getelementptr inbounds i16* %_to262.01585, i64 %3336
  %.pre2381 = load i16* %.phi.trans.insert2380, align 2, !tbaa !22
  %.phi.trans.insert2382 = getelementptr inbounds i16* %_from263.01584, i64 %3336
  %.pre2383 = load i16* %.phi.trans.insert2382, align 2, !tbaa !22
  %3372 = fmul <2 x double> %3370, %3370
  br label %3433

; <label>:3373                                    ; preds = %3364
  %3374 = fmul <2 x double> %3370, %3370
  %3375 = extractelement <2 x double> %3374, i32 1
  %3376 = fmul double %3375, %3371
  %3377 = getelementptr inbounds double* %_xyz261.01586, i64 %3336
  %3378 = load double* %3377, align 8, !tbaa !15
  %3379 = extractelement <2 x double> %3374, i32 0
  %3380 = fmul double %3379, %3378
  %3381 = fadd double %3376, %3380
  %3382 = fmul double %3338, %3381
  %3383 = fsub double 1.000000e+00, %3382
  %3384 = fadd double %3382, 1.000000e+00
  %3385 = fdiv double %3383, %3384
  %3386 = getelementptr inbounds i16* %_to262.01585, i64 %3336
  %3387 = load i16* %3386, align 2, !tbaa !22
  %3388 = sext i16 %3387 to i32
  %3389 = getelementptr inbounds i16* %_to262.01585, i64 %3339
  %3390 = load i16* %3389, align 2, !tbaa !22
  %3391 = sext i16 %3390 to i32
  %3392 = add nsw i32 %3391, %3388
  %3393 = getelementptr inbounds i16* %_from263.01584, i64 %3336
  %3394 = load i16* %3393, align 2, !tbaa !22
  %3395 = sext i16 %3394 to i32
  %3396 = add nsw i32 %3392, %3395
  %3397 = getelementptr inbounds i16* %_from263.01584, i64 %3339
  %3398 = load i16* %3397, align 2, !tbaa !22
  %3399 = sext i16 %3398 to i32
  %3400 = add nsw i32 %3396, %3399
  %3401 = sitofp i32 %3400 to double
  %3402 = fmul double %3401, 2.500000e-01
  %3403 = fsub double %3402, %var0
  %3404 = fmul double %32, %3403
  %3405 = sub nsw i32 %3388, %3395
  %3406 = sitofp i32 %3405 to double
  %3407 = fmul double %3367, %3406
  %3408 = getelementptr inbounds double* %_radius260.01587, i64 %3339
  %3409 = load double* %3408, align 8, !tbaa !15
  %3410 = sub nsw i32 %3391, %3399
  %3411 = sitofp i32 %3410 to double
  %3412 = fmul double %3409, %3411
  %3413 = fadd double %3407, %3412
  %3414 = fmul double %3413, 5.000000e-01
  %3415 = fadd double %3404, %3414
  %3416 = sub nsw i32 %3388, %3391
  %3417 = add nsw i32 %3416, %3395
  %3418 = sub nsw i32 %3417, %3399
  %3419 = sitofp i32 %3418 to double
  %3420 = fmul double %3419, 2.500000e-01
  %3421 = fmul double %3340, %3420
  %3422 = fmul double %3367, %3367
  %3423 = fdiv double %3422, %3378
  %3424 = fmul double %3409, %3409
  %3425 = getelementptr inbounds double* %_xyz261.01586, i64 %3339
  %3426 = load double* %3425, align 8, !tbaa !15
  %3427 = fdiv double %3424, %3426
  %3428 = fadd double %3423, %3427
  %3429 = fmul double %3421, %3428
  %3430 = fadd double %3415, %3429
  %3431 = fmul double %3385, %3430
  %3432 = fadd double %34, %3431
  br label %3433

; <label>:3433                                    ; preds = %._crit_edge2376, %3373
  %3434 = phi i16 [ %.pre2383, %._crit_edge2376 ], [ %3394, %3373 ]
  %3435 = phi i16 [ %.pre2381, %._crit_edge2376 ], [ %3387, %3373 ]
  %3436 = phi double [ %.pre2379, %._crit_edge2376 ], [ %3378, %3373 ]
  %dtvvar0H.96 = phi double [ %dtvvar0H.951589, %._crit_edge2376 ], [ %3432, %3373 ]
  %3437 = phi <2 x double> [ %3372, %._crit_edge2376 ], [ %3374, %3373 ]
  %3438 = extractelement <2 x double> %3437, i32 1
  %3439 = fmul double %3438, %3371
  %3440 = extractelement <2 x double> %3437, i32 0
  %3441 = fmul double %3440, %3436
  %3442 = fadd double %3439, %3441
  %3443 = fmul double %dtvvar0H.96, %3442
  %3444 = sitofp i16 %3435 to double
  %3445 = extractelement <2 x double> %3370, i32 0
  %3446 = fmul double %3445, %3436
  %3447 = fmul double %33, %3445
  %3448 = fadd double %3447, 1.000000e+00
  %3449 = fmul double %3448, %3446
  %3450 = fsub double %3340, %3449
  %3451 = fmul double %3444, %3450
  %3452 = fadd double %3443, %3451
  %3453 = load i16* %_from263.01584, align 2, !tbaa !22
  %3454 = sitofp i16 %3453 to double
  %3455 = extractelement <2 x double> %3370, i32 1
  %3456 = fmul double %3455, %3371
  %3457 = fmul double %33, %3455
  %3458 = fsub double 1.000000e+00, %3457
  %3459 = fmul double %3458, %3456
  %3460 = fsub double %3459, %3340
  %3461 = fmul double %3460, %3454
  %3462 = fadd double %3452, %3461
  %3463 = sitofp i16 %3434 to double
  %3464 = fsub double 1.000000e+00, %3447
  %3465 = fmul double %3464, %3446
  %3466 = fadd double %3340, %3465
  %3467 = fmul double %3466, %3463
  %3468 = fadd double %3462, %3467
  %3469 = fadd double %3457, 1.000000e+00
  %3470 = fmul double %3469, %3456
  %3471 = fadd double %3470, %3340
  %3472 = fdiv double %3468, %3471
  %3473 = fptosi double %3472 to i16
  store i16 %3473, i16* %_to262.01585, align 2, !tbaa !22
  %3474 = getelementptr inbounds double* %_radius260.01587, i64 1
  %3475 = getelementptr inbounds double* %_xyz261.01586, i64 1
  %3476 = getelementptr inbounds i16* %_to262.01585, i64 1
  %3477 = getelementptr inbounds i16* %_from263.01584, i64 1
  %3478 = add nsw i32 %_i253.01588, 1
  %3479 = icmp slt i32 %3478, %3351
  br i1 %3479, label %3364, label %._crit_edge1592

._crit_edge1592:                                  ; preds = %3433, %3352
  %dtvvar0H.95.lcssa = phi double [ %dtvvar0H.941595, %3352 ], [ %dtvvar0H.96, %3433 ]
  %3480 = add nuw nsw i32 %_j254.01594, 1
  %3481 = icmp slt i32 %3480, %3328
  br i1 %3481, label %3352, label %._crit_edge1597

._crit_edge1597:                                  ; preds = %._crit_edge1592, %.preheader846
  %dtvvar0H.94.lcssa = phi double [ %dtvvar0H.931601, %.preheader846 ], [ %dtvvar0H.95.lcssa, %._crit_edge1592 ]
  %3482 = add nuw nsw i32 %_k255.01599, 1
  %3483 = icmp slt i32 %3482, %3325
  br i1 %3483, label %.preheader846, label %.loopexit903

.loopexit903:                                     ; preds = %._crit_edge1597, %.preheader902, %.loopexit904
  %dtvvar0H.97 = phi double [ %dtvvar0H.92, %.loopexit904 ], [ %dtvvar0H.92, %.preheader902 ], [ %dtvvar0H.94.lcssa, %._crit_edge1597 ]
  %3484 = bitcast i32* %98 to i64*
  %3485 = load i64* %3484, align 8
  %3486 = trunc i64 %3485 to i32
  %3487 = icmp eq i32 %3486, 0
  br i1 %3487, label %.loopexit901, label %3488

; <label>:3488                                    ; preds = %.loopexit903
  %3489 = load i32** %93, align 8, !tbaa !17
  %3490 = getelementptr inbounds i32* %3489, i64 2
  %3491 = load i32* %3490, align 4, !tbaa !7
  %3492 = icmp sgt i32 %3491, 0
  br i1 %3492, label %.lr.ph1622, label %.loopexit901

.lr.ph1622:                                       ; preds = %3488
  %3493 = load i32* %110, align 4, !tbaa !7
  %3494 = icmp sgt i32 %3493, 0
  %3495 = load i32* %111, align 4, !tbaa !7
  %3496 = shl nsw i32 %3495, 1
  %3497 = load double** %86, align 8, !tbaa !13
  %3498 = load double** %112, align 8, !tbaa !13
  %3499 = sext i32 %3495 to i64
  %3500 = load double* %108, align 16, !tbaa !15
  %3501 = fmul double %107, %3500
  %3502 = sext i32 %3496 to i64
  %3503 = load double* %109, align 16, !tbaa !15
  %3504 = sext i32 %3493 to i64
  br label %3506

.loopexit845:                                     ; preds = %.loopexit812, %3506
  %dtvvar0H.99.lcssa = phi double [ %dtvvar0H.981619, %3506 ], [ %dtvvar0H.100.lcssa, %.loopexit812 ]
  %3505 = icmp sgt i32 %_k269.01620.in, 1
  br i1 %3505, label %3506, label %.loopexit901

; <label>:3506                                    ; preds = %.lr.ph1622, %.loopexit845
  %_k269.01620.in = phi i32 [ %3491, %.lr.ph1622 ], [ %_k269.01620, %.loopexit845 ]
  %dtvvar0H.981619 = phi double [ %dtvvar0H.97, %.lr.ph1622 ], [ %dtvvar0H.99.lcssa, %.loopexit845 ]
  %_k269.01620 = add nsw i32 %_k269.01620.in, -1
  br i1 %3494, label %.lr.ph1616, label %.loopexit845

.lr.ph1616:                                       ; preds = %3506
  %3507 = load i32* %3489, align 4, !tbaa !7
  %3508 = add nsw i32 %3507, -1
  %3509 = getelementptr inbounds i32* %3489, i64 1
  %3510 = load i32* %3509, align 4, !tbaa !7
  %3511 = mul nsw i32 %3510, %_k269.01620
  %3512 = load i8**** %38, align 8, !tbaa !12
  %3513 = getelementptr inbounds i8*** %3512, i64 %indvars.iv2111
  %3514 = bitcast i8*** %3513 to i16***
  %3515 = load i16*** %3514, align 8, !tbaa !13
  %3516 = load i16** %3515, align 8, !tbaa !13
  %3517 = getelementptr inbounds i8*** %3512, i64 %indvars.iv2113
  %3518 = load i8*** %3517, align 8, !tbaa !13
  %3519 = getelementptr inbounds i8** %3518, i64 %.
  %3520 = bitcast i8** %3519 to i16**
  %3521 = load i16** %3520, align 8, !tbaa !13
  %3522 = icmp sgt i32 %3507, 0
  %3523 = sext i32 %3511 to i64
  %3524 = sext i32 %3507 to i64
  %3525 = sext i32 %3508 to i64
  br label %3527

.loopexit812:                                     ; preds = %3604, %3527
  %dtvvar0H.100.lcssa = phi double [ %dtvvar0H.991613, %3527 ], [ %dtvvar0H.101, %3604 ]
  %3526 = icmp sgt i64 %indvars.iv2101, 1
  br i1 %3526, label %3527, label %.loopexit845

; <label>:3527                                    ; preds = %.lr.ph1616, %.loopexit812
  %indvars.iv2101 = phi i64 [ %3504, %.lr.ph1616 ], [ %indvars.iv.next2102, %.loopexit812 ]
  %dtvvar0H.991613 = phi double [ %dtvvar0H.981619, %.lr.ph1616 ], [ %dtvvar0H.100.lcssa, %.loopexit812 ]
  %indvars.iv.next2102 = add nsw i64 %indvars.iv2101, -1
  %3528 = add nsw i64 %3523, %indvars.iv.next2102
  %3529 = mul nsw i64 %3528, %3524
  %3530 = add nsw i64 %3529, %3525
  br i1 %3522, label %.lr.ph1610, label %.loopexit812

.lr.ph1610:                                       ; preds = %3527
  %3531 = getelementptr inbounds i16* %3521, i64 %3530
  %3532 = getelementptr inbounds i16* %3516, i64 %3530
  %3533 = getelementptr inbounds double* %3498, i64 %3530
  %3534 = getelementptr inbounds double* %3497, i64 %3530
  br label %3535

; <label>:3535                                    ; preds = %.lr.ph1610, %3604
  %dtvvar0H.1001608 = phi double [ %dtvvar0H.991613, %.lr.ph1610 ], [ %dtvvar0H.101, %3604 ]
  %_i267.01607 = phi i32 [ %3508, %.lr.ph1610 ], [ %3649, %3604 ]
  %_radius274.01606 = phi double* [ %3534, %.lr.ph1610 ], [ %3645, %3604 ]
  %_xyz275.01605 = phi double* [ %3533, %.lr.ph1610 ], [ %3646, %3604 ]
  %_to276.01604 = phi i16* [ %3532, %.lr.ph1610 ], [ %3647, %3604 ]
  %_from277.01603 = phi i16* [ %3531, %.lr.ph1610 ], [ %3648, %3604 ]
  %3536 = load double* %_radius274.01606, align 8, !tbaa !15
  %3537 = getelementptr inbounds double* %_radius274.01606, i64 %3499
  %3538 = load double* %3537, align 8, !tbaa !15
  %3539 = insertelement <2 x double> undef, double %3538, i32 0
  %3540 = insertelement <2 x double> %3539, double %3536, i32 1
  %3541 = fdiv <2 x double> <double 1.000000e+00, double 1.000000e+00>, %3540
  %3542 = load double* %_xyz275.01605, align 8, !tbaa !15
  br i1 %105, label %3544, label %._crit_edge2384

._crit_edge2384:                                  ; preds = %3535
  %.phi.trans.insert2386 = getelementptr inbounds double* %_xyz275.01605, i64 %3499
  %.pre2387 = load double* %.phi.trans.insert2386, align 8, !tbaa !15
  %.phi.trans.insert2388 = getelementptr inbounds i16* %_to276.01604, i64 %3499
  %.pre2389 = load i16* %.phi.trans.insert2388, align 2, !tbaa !22
  %.phi.trans.insert2390 = getelementptr inbounds i16* %_from277.01603, i64 %3499
  %.pre2391 = load i16* %.phi.trans.insert2390, align 2, !tbaa !22
  %3543 = fmul <2 x double> %3541, %3541
  br label %3604

; <label>:3544                                    ; preds = %3535
  %3545 = fmul <2 x double> %3541, %3541
  %3546 = extractelement <2 x double> %3545, i32 1
  %3547 = fmul double %3546, %3542
  %3548 = getelementptr inbounds double* %_xyz275.01605, i64 %3499
  %3549 = load double* %3548, align 8, !tbaa !15
  %3550 = extractelement <2 x double> %3545, i32 0
  %3551 = fmul double %3550, %3549
  %3552 = fadd double %3547, %3551
  %3553 = fmul double %3501, %3552
  %3554 = fadd double %3553, 1.000000e+00
  %3555 = fsub double 1.000000e+00, %3553
  %3556 = fdiv double %3554, %3555
  %3557 = getelementptr inbounds i16* %_to276.01604, i64 %3499
  %3558 = load i16* %3557, align 2, !tbaa !22
  %3559 = sext i16 %3558 to i32
  %3560 = getelementptr inbounds i16* %_to276.01604, i64 %3502
  %3561 = load i16* %3560, align 2, !tbaa !22
  %3562 = sext i16 %3561 to i32
  %3563 = add nsw i32 %3562, %3559
  %3564 = getelementptr inbounds i16* %_from277.01603, i64 %3499
  %3565 = load i16* %3564, align 2, !tbaa !22
  %3566 = sext i16 %3565 to i32
  %3567 = add nsw i32 %3563, %3566
  %3568 = getelementptr inbounds i16* %_from277.01603, i64 %3502
  %3569 = load i16* %3568, align 2, !tbaa !22
  %3570 = sext i16 %3569 to i32
  %3571 = add nsw i32 %3567, %3570
  %3572 = sitofp i32 %3571 to double
  %3573 = fmul double %3572, 2.500000e-01
  %3574 = fsub double %3573, %var0
  %3575 = fmul double %32, %3574
  %3576 = sub nsw i32 %3559, %3566
  %3577 = sitofp i32 %3576 to double
  %3578 = fmul double %3538, %3577
  %3579 = getelementptr inbounds double* %_radius274.01606, i64 %3502
  %3580 = load double* %3579, align 8, !tbaa !15
  %3581 = sub nsw i32 %3562, %3570
  %3582 = sitofp i32 %3581 to double
  %3583 = fmul double %3580, %3582
  %3584 = fadd double %3578, %3583
  %3585 = fmul double %3584, 5.000000e-01
  %3586 = fadd double %3575, %3585
  %3587 = sub nsw i32 %3562, %3559
  %3588 = sub nsw i32 %3587, %3566
  %3589 = add nsw i32 %3588, %3570
  %3590 = sitofp i32 %3589 to double
  %3591 = fmul double %3590, 2.500000e-01
  %3592 = fmul double %3503, %3591
  %3593 = fmul double %3538, %3538
  %3594 = fdiv double %3593, %3549
  %3595 = fmul double %3580, %3580
  %3596 = getelementptr inbounds double* %_xyz275.01605, i64 %3502
  %3597 = load double* %3596, align 8, !tbaa !15
  %3598 = fdiv double %3595, %3597
  %3599 = fadd double %3594, %3598
  %3600 = fmul double %3592, %3599
  %3601 = fadd double %3586, %3600
  %3602 = fmul double %3556, %3601
  %3603 = fadd double %34, %3602
  br label %3604

; <label>:3604                                    ; preds = %._crit_edge2384, %3544
  %3605 = phi i16 [ %.pre2391, %._crit_edge2384 ], [ %3565, %3544 ]
  %3606 = phi i16 [ %.pre2389, %._crit_edge2384 ], [ %3558, %3544 ]
  %3607 = phi double [ %.pre2387, %._crit_edge2384 ], [ %3549, %3544 ]
  %dtvvar0H.101 = phi double [ %dtvvar0H.1001608, %._crit_edge2384 ], [ %3603, %3544 ]
  %3608 = phi <2 x double> [ %3543, %._crit_edge2384 ], [ %3545, %3544 ]
  %3609 = extractelement <2 x double> %3608, i32 1
  %3610 = fmul double %3609, %3542
  %3611 = extractelement <2 x double> %3608, i32 0
  %3612 = fmul double %3611, %3607
  %3613 = fadd double %3610, %3612
  %3614 = fmul double %dtvvar0H.101, %3613
  %3615 = sitofp i16 %3606 to double
  %3616 = extractelement <2 x double> %3541, i32 0
  %3617 = fmul double %3616, %3607
  %3618 = fmul double %33, %3616
  %3619 = fadd double %3618, 1.000000e+00
  %3620 = fmul double %3619, %3617
  %3621 = fadd double %3503, %3620
  %3622 = fmul double %3615, %3621
  %3623 = fsub double %3614, %3622
  %3624 = load i16* %_from277.01603, align 2, !tbaa !22
  %3625 = sitofp i16 %3624 to double
  %3626 = extractelement <2 x double> %3541, i32 1
  %3627 = fmul double %3626, %3542
  %3628 = fmul double %33, %3626
  %3629 = fsub double 1.000000e+00, %3628
  %3630 = fmul double %3629, %3627
  %3631 = fadd double %3630, %3503
  %3632 = fmul double %3631, %3625
  %3633 = fadd double %3623, %3632
  %3634 = sitofp i16 %3605 to double
  %3635 = fsub double 1.000000e+00, %3618
  %3636 = fmul double %3635, %3617
  %3637 = fsub double %3503, %3636
  %3638 = fmul double %3637, %3634
  %3639 = fsub double %3633, %3638
  %3640 = fadd double %3628, 1.000000e+00
  %3641 = fmul double %3640, %3627
  %3642 = fsub double %3641, %3503
  %3643 = fdiv double %3639, %3642
  %3644 = fptosi double %3643 to i16
  store i16 %3644, i16* %_to276.01604, align 2, !tbaa !22
  %3645 = getelementptr inbounds double* %_radius274.01606, i64 -1
  %3646 = getelementptr inbounds double* %_xyz275.01605, i64 -1
  %3647 = getelementptr inbounds i16* %_to276.01604, i64 -1
  %3648 = getelementptr inbounds i16* %_from277.01603, i64 -1
  %3649 = add nsw i32 %_i267.01607, -1
  %3650 = icmp sgt i32 %_i267.01607, 0
  br i1 %3650, label %3535, label %.loopexit812

.loopexit901:                                     ; preds = %.loopexit845, %3488, %.loopexit903
  %dtvvar0H.102 = phi double [ %dtvvar0H.97, %.loopexit903 ], [ %dtvvar0H.97, %3488 ], [ %dtvvar0H.99.lcssa, %.loopexit845 ]
  %3651 = icmp ult i64 %3485, 4294967296
  br i1 %3651, label %.loopexit900, label %.preheader899

.preheader899:                                    ; preds = %.loopexit901
  %3652 = load i32** %93, align 8, !tbaa !17
  %3653 = getelementptr inbounds i32* %3652, i64 2
  %3654 = load i32* %3653, align 4, !tbaa !7
  %3655 = icmp sgt i32 %3654, 0
  br i1 %3655, label %.lr.ph1643, label %.loopexit900

.lr.ph1643:                                       ; preds = %.preheader899
  %3656 = load i32* %110, align 4, !tbaa !7
  %3657 = getelementptr inbounds i32* %3652, i64 1
  %3658 = load i32* %3657, align 4, !tbaa !7
  %3659 = load i32* %111, align 4, !tbaa !7
  %3660 = sub nsw i32 0, %3659
  %3661 = mul nsw i32 %3659, -2
  %3662 = load double** %86, align 8, !tbaa !13
  %3663 = load double** %112, align 8, !tbaa !13
  %3664 = sext i32 %3660 to i64
  %3665 = load double* %108, align 16, !tbaa !15
  %3666 = fmul double %107, %3665
  %3667 = sext i32 %3661 to i64
  %3668 = load double* %109, align 16, !tbaa !15
  br label %3669

; <label>:3669                                    ; preds = %.lr.ph1643, %._crit_edge1638
  %dtvvar0H.1031642 = phi double [ %dtvvar0H.102, %.lr.ph1643 ], [ %dtvvar0H.104.lcssa, %._crit_edge1638 ]
  %_k283.01640 = phi i32 [ 0, %.lr.ph1643 ], [ %3811, %._crit_edge1638 ]
  %3670 = icmp sgt i32 %3656, 0
  br i1 %3670, label %.lr.ph1637, label %._crit_edge1638

.lr.ph1637:                                       ; preds = %3669
  %3671 = sub nsw i32 %3658, %3656
  %3672 = load i8**** %38, align 8, !tbaa !12
  %3673 = getelementptr inbounds i8*** %3672, i64 %indvars.iv2111
  %3674 = bitcast i8*** %3673 to i16***
  %3675 = load i16*** %3674, align 8, !tbaa !13
  %3676 = load i16** %3675, align 8, !tbaa !13
  %3677 = getelementptr inbounds i8*** %3672, i64 %indvars.iv2113
  %3678 = load i8*** %3677, align 8, !tbaa !13
  %3679 = getelementptr inbounds i8** %3678, i64 %.
  %3680 = bitcast i8** %3679 to i16**
  %3681 = load i16** %3680, align 8, !tbaa !13
  %3682 = load i32* %3652, align 4, !tbaa !7
  %3683 = icmp sgt i32 %3682, 0
  br label %3684

; <label>:3684                                    ; preds = %.lr.ph1637, %._crit_edge1632
  %dtvvar0H.1041635 = phi double [ %dtvvar0H.1031642, %.lr.ph1637 ], [ %dtvvar0H.105.lcssa, %._crit_edge1632 ]
  %_j282.01634 = phi i32 [ %3671, %.lr.ph1637 ], [ %3809, %._crit_edge1632 ]
  %3685 = mul nsw i32 %3658, %_k283.01640
  %3686 = add nsw i32 %3685, %_j282.01634
  %3687 = mul nsw i32 %3682, %3686
  %3688 = sext i32 %3687 to i64
  br i1 %3683, label %.lr.ph1631, label %._crit_edge1632

.lr.ph1631:                                       ; preds = %3684
  %3689 = getelementptr inbounds i16* %3681, i64 %3688
  %3690 = getelementptr inbounds i16* %3676, i64 %3688
  %3691 = getelementptr inbounds double* %3663, i64 %3688
  %3692 = getelementptr inbounds double* %3662, i64 %3688
  br label %3693

; <label>:3693                                    ; preds = %.lr.ph1631, %3762
  %dtvvar0H.1051629 = phi double [ %dtvvar0H.1041635, %.lr.ph1631 ], [ %dtvvar0H.106, %3762 ]
  %_i281.01628 = phi i32 [ 0, %.lr.ph1631 ], [ %3807, %3762 ]
  %_radius288.01627 = phi double* [ %3692, %.lr.ph1631 ], [ %3803, %3762 ]
  %_xyz289.01626 = phi double* [ %3691, %.lr.ph1631 ], [ %3804, %3762 ]
  %_to290.01625 = phi i16* [ %3690, %.lr.ph1631 ], [ %3805, %3762 ]
  %_from291.01624 = phi i16* [ %3689, %.lr.ph1631 ], [ %3806, %3762 ]
  %3694 = load double* %_radius288.01627, align 8, !tbaa !15
  %3695 = getelementptr inbounds double* %_radius288.01627, i64 %3664
  %3696 = load double* %3695, align 8, !tbaa !15
  %3697 = insertelement <2 x double> undef, double %3696, i32 0
  %3698 = insertelement <2 x double> %3697, double %3694, i32 1
  %3699 = fdiv <2 x double> <double 1.000000e+00, double 1.000000e+00>, %3698
  %3700 = load double* %_xyz289.01626, align 8, !tbaa !15
  br i1 %105, label %3702, label %._crit_edge2392

._crit_edge2392:                                  ; preds = %3693
  %.phi.trans.insert2394 = getelementptr inbounds double* %_xyz289.01626, i64 %3664
  %.pre2395 = load double* %.phi.trans.insert2394, align 8, !tbaa !15
  %.phi.trans.insert2396 = getelementptr inbounds i16* %_to290.01625, i64 %3664
  %.pre2397 = load i16* %.phi.trans.insert2396, align 2, !tbaa !22
  %.phi.trans.insert2398 = getelementptr inbounds i16* %_from291.01624, i64 %3664
  %.pre2399 = load i16* %.phi.trans.insert2398, align 2, !tbaa !22
  %3701 = fmul <2 x double> %3699, %3699
  br label %3762

; <label>:3702                                    ; preds = %3693
  %3703 = fmul <2 x double> %3699, %3699
  %3704 = extractelement <2 x double> %3703, i32 1
  %3705 = fmul double %3704, %3700
  %3706 = getelementptr inbounds double* %_xyz289.01626, i64 %3664
  %3707 = load double* %3706, align 8, !tbaa !15
  %3708 = extractelement <2 x double> %3703, i32 0
  %3709 = fmul double %3708, %3707
  %3710 = fadd double %3705, %3709
  %3711 = fmul double %3666, %3710
  %3712 = fsub double 1.000000e+00, %3711
  %3713 = fadd double %3711, 1.000000e+00
  %3714 = fdiv double %3712, %3713
  %3715 = getelementptr inbounds i16* %_to290.01625, i64 %3664
  %3716 = load i16* %3715, align 2, !tbaa !22
  %3717 = sext i16 %3716 to i32
  %3718 = getelementptr inbounds i16* %_to290.01625, i64 %3667
  %3719 = load i16* %3718, align 2, !tbaa !22
  %3720 = sext i16 %3719 to i32
  %3721 = add nsw i32 %3720, %3717
  %3722 = getelementptr inbounds i16* %_from291.01624, i64 %3664
  %3723 = load i16* %3722, align 2, !tbaa !22
  %3724 = sext i16 %3723 to i32
  %3725 = add nsw i32 %3721, %3724
  %3726 = getelementptr inbounds i16* %_from291.01624, i64 %3667
  %3727 = load i16* %3726, align 2, !tbaa !22
  %3728 = sext i16 %3727 to i32
  %3729 = add nsw i32 %3725, %3728
  %3730 = sitofp i32 %3729 to double
  %3731 = fmul double %3730, 2.500000e-01
  %3732 = fsub double %3731, %var0
  %3733 = fmul double %32, %3732
  %3734 = sub nsw i32 %3717, %3724
  %3735 = sitofp i32 %3734 to double
  %3736 = fmul double %3696, %3735
  %3737 = getelementptr inbounds double* %_radius288.01627, i64 %3667
  %3738 = load double* %3737, align 8, !tbaa !15
  %3739 = sub nsw i32 %3720, %3728
  %3740 = sitofp i32 %3739 to double
  %3741 = fmul double %3738, %3740
  %3742 = fadd double %3736, %3741
  %3743 = fmul double %3742, 5.000000e-01
  %3744 = fadd double %3733, %3743
  %3745 = sub nsw i32 %3717, %3720
  %3746 = add nsw i32 %3745, %3724
  %3747 = sub nsw i32 %3746, %3728
  %3748 = sitofp i32 %3747 to double
  %3749 = fmul double %3748, 2.500000e-01
  %3750 = fmul double %3668, %3749
  %3751 = fmul double %3696, %3696
  %3752 = fdiv double %3751, %3707
  %3753 = fmul double %3738, %3738
  %3754 = getelementptr inbounds double* %_xyz289.01626, i64 %3667
  %3755 = load double* %3754, align 8, !tbaa !15
  %3756 = fdiv double %3753, %3755
  %3757 = fadd double %3752, %3756
  %3758 = fmul double %3750, %3757
  %3759 = fadd double %3744, %3758
  %3760 = fmul double %3714, %3759
  %3761 = fadd double %34, %3760
  br label %3762

; <label>:3762                                    ; preds = %._crit_edge2392, %3702
  %3763 = phi i16 [ %.pre2399, %._crit_edge2392 ], [ %3723, %3702 ]
  %3764 = phi i16 [ %.pre2397, %._crit_edge2392 ], [ %3716, %3702 ]
  %3765 = phi double [ %.pre2395, %._crit_edge2392 ], [ %3707, %3702 ]
  %dtvvar0H.106 = phi double [ %dtvvar0H.1051629, %._crit_edge2392 ], [ %3761, %3702 ]
  %3766 = phi <2 x double> [ %3701, %._crit_edge2392 ], [ %3703, %3702 ]
  %3767 = extractelement <2 x double> %3766, i32 1
  %3768 = fmul double %3767, %3700
  %3769 = extractelement <2 x double> %3766, i32 0
  %3770 = fmul double %3769, %3765
  %3771 = fadd double %3768, %3770
  %3772 = fmul double %dtvvar0H.106, %3771
  %3773 = sitofp i16 %3764 to double
  %3774 = extractelement <2 x double> %3699, i32 0
  %3775 = fmul double %3774, %3765
  %3776 = fmul double %33, %3774
  %3777 = fadd double %3776, 1.000000e+00
  %3778 = fmul double %3777, %3775
  %3779 = fsub double %3668, %3778
  %3780 = fmul double %3773, %3779
  %3781 = fadd double %3772, %3780
  %3782 = load i16* %_from291.01624, align 2, !tbaa !22
  %3783 = sitofp i16 %3782 to double
  %3784 = extractelement <2 x double> %3699, i32 1
  %3785 = fmul double %3784, %3700
  %3786 = fmul double %33, %3784
  %3787 = fsub double 1.000000e+00, %3786
  %3788 = fmul double %3787, %3785
  %3789 = fsub double %3788, %3668
  %3790 = fmul double %3789, %3783
  %3791 = fadd double %3781, %3790
  %3792 = sitofp i16 %3763 to double
  %3793 = fsub double 1.000000e+00, %3776
  %3794 = fmul double %3793, %3775
  %3795 = fadd double %3668, %3794
  %3796 = fmul double %3795, %3792
  %3797 = fadd double %3791, %3796
  %3798 = fadd double %3786, 1.000000e+00
  %3799 = fmul double %3798, %3785
  %3800 = fadd double %3799, %3668
  %3801 = fdiv double %3797, %3800
  %3802 = fptosi double %3801 to i16
  store i16 %3802, i16* %_to290.01625, align 2, !tbaa !22
  %3803 = getelementptr inbounds double* %_radius288.01627, i64 1
  %3804 = getelementptr inbounds double* %_xyz289.01626, i64 1
  %3805 = getelementptr inbounds i16* %_to290.01625, i64 1
  %3806 = getelementptr inbounds i16* %_from291.01624, i64 1
  %3807 = add nuw nsw i32 %_i281.01628, 1
  %3808 = icmp slt i32 %3807, %3682
  br i1 %3808, label %3693, label %._crit_edge1632

._crit_edge1632:                                  ; preds = %3762, %3684
  %dtvvar0H.105.lcssa = phi double [ %dtvvar0H.1041635, %3684 ], [ %dtvvar0H.106, %3762 ]
  %3809 = add nsw i32 %_j282.01634, 1
  %3810 = icmp slt i32 %3809, %3658
  br i1 %3810, label %3684, label %._crit_edge1638

._crit_edge1638:                                  ; preds = %._crit_edge1632, %3669
  %dtvvar0H.104.lcssa = phi double [ %dtvvar0H.1031642, %3669 ], [ %dtvvar0H.105.lcssa, %._crit_edge1632 ]
  %3811 = add nuw nsw i32 %_k283.01640, 1
  %3812 = icmp slt i32 %3811, %3654
  br i1 %3812, label %3669, label %.loopexit900

.loopexit900:                                     ; preds = %._crit_edge1638, %.preheader899, %.loopexit901
  %dtvvar0H.107 = phi double [ %dtvvar0H.102, %.loopexit901 ], [ %dtvvar0H.102, %.preheader899 ], [ %dtvvar0H.104.lcssa, %._crit_edge1638 ]
  %3813 = bitcast i32* %100 to i64*
  %3814 = load i64* %3813, align 16
  %3815 = trunc i64 %3814 to i32
  %3816 = icmp eq i32 %3815, 0
  br i1 %3816, label %.loopexit898, label %3817

; <label>:3817                                    ; preds = %.loopexit900
  %3818 = load i32* %102, align 4, !tbaa !7
  %3819 = icmp sgt i32 %3818, 0
  br i1 %3819, label %.lr.ph1664, label %.loopexit898

.lr.ph1664:                                       ; preds = %3817
  %3820 = load i32** %93, align 8, !tbaa !17
  %3821 = getelementptr inbounds i32* %3820, i64 1
  %3822 = load i32* %3821, align 4, !tbaa !7
  %3823 = icmp sgt i32 %3822, 0
  %3824 = load i32* %103, align 4, !tbaa !7
  %3825 = shl nsw i32 %3824, 1
  %3826 = load double** %86, align 8, !tbaa !13
  %3827 = load double** %104, align 16, !tbaa !13
  %3828 = sext i32 %3824 to i64
  %3829 = load double* %108, align 16, !tbaa !15
  %3830 = fmul double %107, %3829
  %3831 = sext i32 %3825 to i64
  %3832 = load double* %109, align 16, !tbaa !15
  %3833 = sext i32 %3822 to i64
  br label %3835

.loopexit844:                                     ; preds = %.loopexit811, %3835
  %dtvvar0H.109.lcssa = phi double [ %dtvvar0H.1081661, %3835 ], [ %dtvvar0H.110.lcssa, %.loopexit811 ]
  %3834 = icmp sgt i32 %_k297.01662.in, 1
  br i1 %3834, label %3835, label %.loopexit898

; <label>:3835                                    ; preds = %.lr.ph1664, %.loopexit844
  %_k297.01662.in = phi i32 [ %3818, %.lr.ph1664 ], [ %_k297.01662, %.loopexit844 ]
  %dtvvar0H.1081661 = phi double [ %dtvvar0H.107, %.lr.ph1664 ], [ %dtvvar0H.109.lcssa, %.loopexit844 ]
  %_k297.01662 = add nsw i32 %_k297.01662.in, -1
  br i1 %3823, label %.lr.ph1658, label %.loopexit844

.lr.ph1658:                                       ; preds = %3835
  %3836 = load i32* %3820, align 4, !tbaa !7
  %3837 = add nsw i32 %3836, -1
  %3838 = mul nsw i32 %3822, %_k297.01662
  %3839 = load i8**** %38, align 8, !tbaa !12
  %3840 = getelementptr inbounds i8*** %3839, i64 %indvars.iv2111
  %3841 = bitcast i8*** %3840 to i16***
  %3842 = load i16*** %3841, align 8, !tbaa !13
  %3843 = load i16** %3842, align 8, !tbaa !13
  %3844 = getelementptr inbounds i8*** %3839, i64 %indvars.iv2113
  %3845 = load i8*** %3844, align 8, !tbaa !13
  %3846 = getelementptr inbounds i8** %3845, i64 %.
  %3847 = bitcast i8** %3846 to i16**
  %3848 = load i16** %3847, align 8, !tbaa !13
  %3849 = icmp sgt i32 %3836, 0
  %3850 = sext i32 %3838 to i64
  %3851 = sext i32 %3836 to i64
  %3852 = sext i32 %3837 to i64
  br label %3854

.loopexit811:                                     ; preds = %3931, %3854
  %dtvvar0H.110.lcssa = phi double [ %dtvvar0H.1091655, %3854 ], [ %dtvvar0H.111, %3931 ]
  %3853 = icmp sgt i64 %indvars.iv2103, 1
  br i1 %3853, label %3854, label %.loopexit844

; <label>:3854                                    ; preds = %.lr.ph1658, %.loopexit811
  %indvars.iv2103 = phi i64 [ %3833, %.lr.ph1658 ], [ %indvars.iv.next2104, %.loopexit811 ]
  %dtvvar0H.1091655 = phi double [ %dtvvar0H.1081661, %.lr.ph1658 ], [ %dtvvar0H.110.lcssa, %.loopexit811 ]
  %indvars.iv.next2104 = add nsw i64 %indvars.iv2103, -1
  %3855 = add nsw i64 %3850, %indvars.iv.next2104
  %3856 = mul nsw i64 %3855, %3851
  %3857 = add nsw i64 %3856, %3852
  br i1 %3849, label %.lr.ph1652, label %.loopexit811

.lr.ph1652:                                       ; preds = %3854
  %3858 = getelementptr inbounds i16* %3848, i64 %3857
  %3859 = getelementptr inbounds i16* %3843, i64 %3857
  %3860 = getelementptr inbounds double* %3827, i64 %3857
  %3861 = getelementptr inbounds double* %3826, i64 %3857
  br label %3862

; <label>:3862                                    ; preds = %.lr.ph1652, %3931
  %dtvvar0H.1101650 = phi double [ %dtvvar0H.1091655, %.lr.ph1652 ], [ %dtvvar0H.111, %3931 ]
  %_i295.01649 = phi i32 [ %3837, %.lr.ph1652 ], [ %3976, %3931 ]
  %_radius302.01648 = phi double* [ %3861, %.lr.ph1652 ], [ %3972, %3931 ]
  %_xyz303.01647 = phi double* [ %3860, %.lr.ph1652 ], [ %3973, %3931 ]
  %_to304.01646 = phi i16* [ %3859, %.lr.ph1652 ], [ %3974, %3931 ]
  %_from305.01645 = phi i16* [ %3858, %.lr.ph1652 ], [ %3975, %3931 ]
  %3863 = load double* %_radius302.01648, align 8, !tbaa !15
  %3864 = getelementptr inbounds double* %_radius302.01648, i64 %3828
  %3865 = load double* %3864, align 8, !tbaa !15
  %3866 = insertelement <2 x double> undef, double %3865, i32 0
  %3867 = insertelement <2 x double> %3866, double %3863, i32 1
  %3868 = fdiv <2 x double> <double 1.000000e+00, double 1.000000e+00>, %3867
  %3869 = load double* %_xyz303.01647, align 8, !tbaa !15
  br i1 %105, label %3871, label %._crit_edge2400

._crit_edge2400:                                  ; preds = %3862
  %.phi.trans.insert2402 = getelementptr inbounds double* %_xyz303.01647, i64 %3828
  %.pre2403 = load double* %.phi.trans.insert2402, align 8, !tbaa !15
  %.phi.trans.insert2404 = getelementptr inbounds i16* %_to304.01646, i64 %3828
  %.pre2405 = load i16* %.phi.trans.insert2404, align 2, !tbaa !22
  %.phi.trans.insert2406 = getelementptr inbounds i16* %_from305.01645, i64 %3828
  %.pre2407 = load i16* %.phi.trans.insert2406, align 2, !tbaa !22
  %3870 = fmul <2 x double> %3868, %3868
  br label %3931

; <label>:3871                                    ; preds = %3862
  %3872 = fmul <2 x double> %3868, %3868
  %3873 = extractelement <2 x double> %3872, i32 1
  %3874 = fmul double %3873, %3869
  %3875 = getelementptr inbounds double* %_xyz303.01647, i64 %3828
  %3876 = load double* %3875, align 8, !tbaa !15
  %3877 = extractelement <2 x double> %3872, i32 0
  %3878 = fmul double %3877, %3876
  %3879 = fadd double %3874, %3878
  %3880 = fmul double %3830, %3879
  %3881 = fadd double %3880, 1.000000e+00
  %3882 = fsub double 1.000000e+00, %3880
  %3883 = fdiv double %3881, %3882
  %3884 = getelementptr inbounds i16* %_to304.01646, i64 %3828
  %3885 = load i16* %3884, align 2, !tbaa !22
  %3886 = sext i16 %3885 to i32
  %3887 = getelementptr inbounds i16* %_to304.01646, i64 %3831
  %3888 = load i16* %3887, align 2, !tbaa !22
  %3889 = sext i16 %3888 to i32
  %3890 = add nsw i32 %3889, %3886
  %3891 = getelementptr inbounds i16* %_from305.01645, i64 %3828
  %3892 = load i16* %3891, align 2, !tbaa !22
  %3893 = sext i16 %3892 to i32
  %3894 = add nsw i32 %3890, %3893
  %3895 = getelementptr inbounds i16* %_from305.01645, i64 %3831
  %3896 = load i16* %3895, align 2, !tbaa !22
  %3897 = sext i16 %3896 to i32
  %3898 = add nsw i32 %3894, %3897
  %3899 = sitofp i32 %3898 to double
  %3900 = fmul double %3899, 2.500000e-01
  %3901 = fsub double %3900, %var0
  %3902 = fmul double %32, %3901
  %3903 = sub nsw i32 %3886, %3893
  %3904 = sitofp i32 %3903 to double
  %3905 = fmul double %3865, %3904
  %3906 = getelementptr inbounds double* %_radius302.01648, i64 %3831
  %3907 = load double* %3906, align 8, !tbaa !15
  %3908 = sub nsw i32 %3889, %3897
  %3909 = sitofp i32 %3908 to double
  %3910 = fmul double %3907, %3909
  %3911 = fadd double %3905, %3910
  %3912 = fmul double %3911, 5.000000e-01
  %3913 = fadd double %3902, %3912
  %3914 = sub nsw i32 %3889, %3886
  %3915 = sub nsw i32 %3914, %3893
  %3916 = add nsw i32 %3915, %3897
  %3917 = sitofp i32 %3916 to double
  %3918 = fmul double %3917, 2.500000e-01
  %3919 = fmul double %3832, %3918
  %3920 = fmul double %3865, %3865
  %3921 = fdiv double %3920, %3876
  %3922 = fmul double %3907, %3907
  %3923 = getelementptr inbounds double* %_xyz303.01647, i64 %3831
  %3924 = load double* %3923, align 8, !tbaa !15
  %3925 = fdiv double %3922, %3924
  %3926 = fadd double %3921, %3925
  %3927 = fmul double %3919, %3926
  %3928 = fadd double %3913, %3927
  %3929 = fmul double %3883, %3928
  %3930 = fadd double %34, %3929
  br label %3931

; <label>:3931                                    ; preds = %._crit_edge2400, %3871
  %3932 = phi i16 [ %.pre2407, %._crit_edge2400 ], [ %3892, %3871 ]
  %3933 = phi i16 [ %.pre2405, %._crit_edge2400 ], [ %3885, %3871 ]
  %3934 = phi double [ %.pre2403, %._crit_edge2400 ], [ %3876, %3871 ]
  %dtvvar0H.111 = phi double [ %dtvvar0H.1101650, %._crit_edge2400 ], [ %3930, %3871 ]
  %3935 = phi <2 x double> [ %3870, %._crit_edge2400 ], [ %3872, %3871 ]
  %3936 = extractelement <2 x double> %3935, i32 1
  %3937 = fmul double %3936, %3869
  %3938 = extractelement <2 x double> %3935, i32 0
  %3939 = fmul double %3938, %3934
  %3940 = fadd double %3937, %3939
  %3941 = fmul double %dtvvar0H.111, %3940
  %3942 = sitofp i16 %3933 to double
  %3943 = extractelement <2 x double> %3868, i32 0
  %3944 = fmul double %3943, %3934
  %3945 = fmul double %33, %3943
  %3946 = fadd double %3945, 1.000000e+00
  %3947 = fmul double %3946, %3944
  %3948 = fadd double %3832, %3947
  %3949 = fmul double %3942, %3948
  %3950 = fsub double %3941, %3949
  %3951 = load i16* %_from305.01645, align 2, !tbaa !22
  %3952 = sitofp i16 %3951 to double
  %3953 = extractelement <2 x double> %3868, i32 1
  %3954 = fmul double %3953, %3869
  %3955 = fmul double %33, %3953
  %3956 = fsub double 1.000000e+00, %3955
  %3957 = fmul double %3956, %3954
  %3958 = fadd double %3957, %3832
  %3959 = fmul double %3958, %3952
  %3960 = fadd double %3950, %3959
  %3961 = sitofp i16 %3932 to double
  %3962 = fsub double 1.000000e+00, %3945
  %3963 = fmul double %3962, %3944
  %3964 = fsub double %3832, %3963
  %3965 = fmul double %3964, %3961
  %3966 = fsub double %3960, %3965
  %3967 = fadd double %3955, 1.000000e+00
  %3968 = fmul double %3967, %3954
  %3969 = fsub double %3968, %3832
  %3970 = fdiv double %3966, %3969
  %3971 = fptosi double %3970 to i16
  store i16 %3971, i16* %_to304.01646, align 2, !tbaa !22
  %3972 = getelementptr inbounds double* %_radius302.01648, i64 -1
  %3973 = getelementptr inbounds double* %_xyz303.01647, i64 -1
  %3974 = getelementptr inbounds i16* %_to304.01646, i64 -1
  %3975 = getelementptr inbounds i16* %_from305.01645, i64 -1
  %3976 = add nsw i32 %_i295.01649, -1
  %3977 = icmp sgt i32 %_i295.01649, 0
  br i1 %3977, label %3862, label %.loopexit811

.loopexit898:                                     ; preds = %.loopexit844, %3817, %.loopexit900
  %dtvvar0H.112 = phi double [ %dtvvar0H.107, %.loopexit900 ], [ %dtvvar0H.107, %3817 ], [ %dtvvar0H.109.lcssa, %.loopexit844 ]
  %3978 = icmp ult i64 %3814, 4294967296
  br i1 %3978, label %.loopexit873, label %3979

; <label>:3979                                    ; preds = %.loopexit898
  %3980 = load i32* %102, align 4, !tbaa !7
  %3981 = icmp sgt i32 %3980, 0
  br i1 %3981, label %.preheader843.lr.ph, label %.loopexit873

.preheader843.lr.ph:                              ; preds = %3979
  %3982 = load i32** %93, align 8, !tbaa !17
  %3983 = getelementptr inbounds i32* %3982, i64 2
  %3984 = load i32* %3983, align 4, !tbaa !7
  %3985 = sub nsw i32 %3984, %3980
  %3986 = getelementptr inbounds i32* %3982, i64 1
  %3987 = load i32* %3986, align 4, !tbaa !7
  %3988 = icmp sgt i32 %3987, 0
  %3989 = load i32* %103, align 4, !tbaa !7
  %3990 = sub nsw i32 0, %3989
  %3991 = mul nsw i32 %3989, -2
  %3992 = load double** %86, align 8, !tbaa !13
  %3993 = load double** %104, align 16, !tbaa !13
  %3994 = sext i32 %3990 to i64
  %3995 = load double* %108, align 16, !tbaa !15
  %3996 = fmul double %107, %3995
  %3997 = sext i32 %3991 to i64
  %3998 = load double* %109, align 16, !tbaa !15
  br label %.preheader843

.preheader843:                                    ; preds = %.preheader843.lr.ph, %._crit_edge1679
  %dtvvar0H.1131683 = phi double [ %dtvvar0H.112, %.preheader843.lr.ph ], [ %dtvvar0H.114.lcssa, %._crit_edge1679 ]
  %_k311.01681 = phi i32 [ %3985, %.preheader843.lr.ph ], [ %4138, %._crit_edge1679 ]
  br i1 %3988, label %.lr.ph1678, label %._crit_edge1679

.lr.ph1678:                                       ; preds = %.preheader843
  %3999 = load i8**** %38, align 8, !tbaa !12
  %4000 = getelementptr inbounds i8*** %3999, i64 %indvars.iv2111
  %4001 = bitcast i8*** %4000 to i16***
  %4002 = load i16*** %4001, align 8, !tbaa !13
  %4003 = load i16** %4002, align 8, !tbaa !13
  %4004 = getelementptr inbounds i8*** %3999, i64 %indvars.iv2113
  %4005 = load i8*** %4004, align 8, !tbaa !13
  %4006 = getelementptr inbounds i8** %4005, i64 %.
  %4007 = bitcast i8** %4006 to i16**
  %4008 = load i16** %4007, align 8, !tbaa !13
  %4009 = load i32* %3982, align 4, !tbaa !7
  %4010 = icmp sgt i32 %4009, 0
  br label %4011

; <label>:4011                                    ; preds = %.lr.ph1678, %._crit_edge1674
  %dtvvar0H.1141677 = phi double [ %dtvvar0H.1131683, %.lr.ph1678 ], [ %dtvvar0H.115.lcssa, %._crit_edge1674 ]
  %_j310.01676 = phi i32 [ 0, %.lr.ph1678 ], [ %4136, %._crit_edge1674 ]
  %4012 = mul nsw i32 %3987, %_k311.01681
  %4013 = add nsw i32 %4012, %_j310.01676
  %4014 = mul nsw i32 %4009, %4013
  %4015 = sext i32 %4014 to i64
  br i1 %4010, label %.lr.ph1673, label %._crit_edge1674

.lr.ph1673:                                       ; preds = %4011
  %4016 = getelementptr inbounds i16* %4008, i64 %4015
  %4017 = getelementptr inbounds i16* %4003, i64 %4015
  %4018 = getelementptr inbounds double* %3993, i64 %4015
  %4019 = getelementptr inbounds double* %3992, i64 %4015
  br label %4020

; <label>:4020                                    ; preds = %.lr.ph1673, %4089
  %dtvvar0H.1151671 = phi double [ %dtvvar0H.1141677, %.lr.ph1673 ], [ %dtvvar0H.116, %4089 ]
  %_i309.01670 = phi i32 [ 0, %.lr.ph1673 ], [ %4134, %4089 ]
  %_radius316.01669 = phi double* [ %4019, %.lr.ph1673 ], [ %4130, %4089 ]
  %_xyz317.01668 = phi double* [ %4018, %.lr.ph1673 ], [ %4131, %4089 ]
  %_to318.01667 = phi i16* [ %4017, %.lr.ph1673 ], [ %4132, %4089 ]
  %_from319.01666 = phi i16* [ %4016, %.lr.ph1673 ], [ %4133, %4089 ]
  %4021 = load double* %_radius316.01669, align 8, !tbaa !15
  %4022 = getelementptr inbounds double* %_radius316.01669, i64 %3994
  %4023 = load double* %4022, align 8, !tbaa !15
  %4024 = insertelement <2 x double> undef, double %4023, i32 0
  %4025 = insertelement <2 x double> %4024, double %4021, i32 1
  %4026 = fdiv <2 x double> <double 1.000000e+00, double 1.000000e+00>, %4025
  %4027 = load double* %_xyz317.01668, align 8, !tbaa !15
  br i1 %105, label %4029, label %._crit_edge2408

._crit_edge2408:                                  ; preds = %4020
  %.phi.trans.insert2410 = getelementptr inbounds double* %_xyz317.01668, i64 %3994
  %.pre2411 = load double* %.phi.trans.insert2410, align 8, !tbaa !15
  %.phi.trans.insert2412 = getelementptr inbounds i16* %_to318.01667, i64 %3994
  %.pre2413 = load i16* %.phi.trans.insert2412, align 2, !tbaa !22
  %.phi.trans.insert2414 = getelementptr inbounds i16* %_from319.01666, i64 %3994
  %.pre2415 = load i16* %.phi.trans.insert2414, align 2, !tbaa !22
  %4028 = fmul <2 x double> %4026, %4026
  br label %4089

; <label>:4029                                    ; preds = %4020
  %4030 = fmul <2 x double> %4026, %4026
  %4031 = extractelement <2 x double> %4030, i32 1
  %4032 = fmul double %4031, %4027
  %4033 = getelementptr inbounds double* %_xyz317.01668, i64 %3994
  %4034 = load double* %4033, align 8, !tbaa !15
  %4035 = extractelement <2 x double> %4030, i32 0
  %4036 = fmul double %4035, %4034
  %4037 = fadd double %4032, %4036
  %4038 = fmul double %3996, %4037
  %4039 = fsub double 1.000000e+00, %4038
  %4040 = fadd double %4038, 1.000000e+00
  %4041 = fdiv double %4039, %4040
  %4042 = getelementptr inbounds i16* %_to318.01667, i64 %3994
  %4043 = load i16* %4042, align 2, !tbaa !22
  %4044 = sext i16 %4043 to i32
  %4045 = getelementptr inbounds i16* %_to318.01667, i64 %3997
  %4046 = load i16* %4045, align 2, !tbaa !22
  %4047 = sext i16 %4046 to i32
  %4048 = add nsw i32 %4047, %4044
  %4049 = getelementptr inbounds i16* %_from319.01666, i64 %3994
  %4050 = load i16* %4049, align 2, !tbaa !22
  %4051 = sext i16 %4050 to i32
  %4052 = add nsw i32 %4048, %4051
  %4053 = getelementptr inbounds i16* %_from319.01666, i64 %3997
  %4054 = load i16* %4053, align 2, !tbaa !22
  %4055 = sext i16 %4054 to i32
  %4056 = add nsw i32 %4052, %4055
  %4057 = sitofp i32 %4056 to double
  %4058 = fmul double %4057, 2.500000e-01
  %4059 = fsub double %4058, %var0
  %4060 = fmul double %32, %4059
  %4061 = sub nsw i32 %4044, %4051
  %4062 = sitofp i32 %4061 to double
  %4063 = fmul double %4023, %4062
  %4064 = getelementptr inbounds double* %_radius316.01669, i64 %3997
  %4065 = load double* %4064, align 8, !tbaa !15
  %4066 = sub nsw i32 %4047, %4055
  %4067 = sitofp i32 %4066 to double
  %4068 = fmul double %4065, %4067
  %4069 = fadd double %4063, %4068
  %4070 = fmul double %4069, 5.000000e-01
  %4071 = fadd double %4060, %4070
  %4072 = sub nsw i32 %4044, %4047
  %4073 = add nsw i32 %4072, %4051
  %4074 = sub nsw i32 %4073, %4055
  %4075 = sitofp i32 %4074 to double
  %4076 = fmul double %4075, 2.500000e-01
  %4077 = fmul double %3998, %4076
  %4078 = fmul double %4023, %4023
  %4079 = fdiv double %4078, %4034
  %4080 = fmul double %4065, %4065
  %4081 = getelementptr inbounds double* %_xyz317.01668, i64 %3997
  %4082 = load double* %4081, align 8, !tbaa !15
  %4083 = fdiv double %4080, %4082
  %4084 = fadd double %4079, %4083
  %4085 = fmul double %4077, %4084
  %4086 = fadd double %4071, %4085
  %4087 = fmul double %4041, %4086
  %4088 = fadd double %34, %4087
  br label %4089

; <label>:4089                                    ; preds = %._crit_edge2408, %4029
  %4090 = phi i16 [ %.pre2415, %._crit_edge2408 ], [ %4050, %4029 ]
  %4091 = phi i16 [ %.pre2413, %._crit_edge2408 ], [ %4043, %4029 ]
  %4092 = phi double [ %.pre2411, %._crit_edge2408 ], [ %4034, %4029 ]
  %dtvvar0H.116 = phi double [ %dtvvar0H.1151671, %._crit_edge2408 ], [ %4088, %4029 ]
  %4093 = phi <2 x double> [ %4028, %._crit_edge2408 ], [ %4030, %4029 ]
  %4094 = extractelement <2 x double> %4093, i32 1
  %4095 = fmul double %4094, %4027
  %4096 = extractelement <2 x double> %4093, i32 0
  %4097 = fmul double %4096, %4092
  %4098 = fadd double %4095, %4097
  %4099 = fmul double %dtvvar0H.116, %4098
  %4100 = sitofp i16 %4091 to double
  %4101 = extractelement <2 x double> %4026, i32 0
  %4102 = fmul double %4101, %4092
  %4103 = fmul double %33, %4101
  %4104 = fadd double %4103, 1.000000e+00
  %4105 = fmul double %4104, %4102
  %4106 = fsub double %3998, %4105
  %4107 = fmul double %4100, %4106
  %4108 = fadd double %4099, %4107
  %4109 = load i16* %_from319.01666, align 2, !tbaa !22
  %4110 = sitofp i16 %4109 to double
  %4111 = extractelement <2 x double> %4026, i32 1
  %4112 = fmul double %4111, %4027
  %4113 = fmul double %33, %4111
  %4114 = fsub double 1.000000e+00, %4113
  %4115 = fmul double %4114, %4112
  %4116 = fsub double %4115, %3998
  %4117 = fmul double %4116, %4110
  %4118 = fadd double %4108, %4117
  %4119 = sitofp i16 %4090 to double
  %4120 = fsub double 1.000000e+00, %4103
  %4121 = fmul double %4120, %4102
  %4122 = fadd double %3998, %4121
  %4123 = fmul double %4122, %4119
  %4124 = fadd double %4118, %4123
  %4125 = fadd double %4113, 1.000000e+00
  %4126 = fmul double %4125, %4112
  %4127 = fadd double %4126, %3998
  %4128 = fdiv double %4124, %4127
  %4129 = fptosi double %4128 to i16
  store i16 %4129, i16* %_to318.01667, align 2, !tbaa !22
  %4130 = getelementptr inbounds double* %_radius316.01669, i64 1
  %4131 = getelementptr inbounds double* %_xyz317.01668, i64 1
  %4132 = getelementptr inbounds i16* %_to318.01667, i64 1
  %4133 = getelementptr inbounds i16* %_from319.01666, i64 1
  %4134 = add nuw nsw i32 %_i309.01670, 1
  %4135 = icmp slt i32 %4134, %4009
  br i1 %4135, label %4020, label %._crit_edge1674

._crit_edge1674:                                  ; preds = %4089, %4011
  %dtvvar0H.115.lcssa = phi double [ %dtvvar0H.1141677, %4011 ], [ %dtvvar0H.116, %4089 ]
  %4136 = add nuw nsw i32 %_j310.01676, 1
  %4137 = icmp slt i32 %4136, %3987
  br i1 %4137, label %4011, label %._crit_edge1679

._crit_edge1679:                                  ; preds = %._crit_edge1674, %.preheader843
  %dtvvar0H.114.lcssa = phi double [ %dtvvar0H.1131683, %.preheader843 ], [ %dtvvar0H.115.lcssa, %._crit_edge1674 ]
  %4138 = add nsw i32 %_k311.01681, 1
  %4139 = icmp slt i32 %4138, %3984
  br i1 %4139, label %.preheader843, label %.loopexit873

; <label>:4140                                    ; preds = %177
  br i1 %96, label %4143, label %4141

; <label>:4141                                    ; preds = %4140
  %4142 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 1521, i8* getelementptr inbounds ([88 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([58 x i8]* @.str12, i64 0, i64 0), i32 %7) #5
  br label %.loopexit947

; <label>:4143                                    ; preds = %4140
  %4144 = bitcast [6 x i32]* %doBC to i64*
  %4145 = load i64* %4144, align 16
  %4146 = trunc i64 %4145 to i32
  %4147 = icmp eq i32 %4146, 0
  %4148 = lshr i64 %4145, 32
  %4149 = trunc i64 %4148 to i32
  br i1 %4147, label %4307, label %4150

; <label>:4150                                    ; preds = %4143
  %4151 = load i32** %93, align 8, !tbaa !17
  %4152 = getelementptr inbounds i32* %4151, i64 2
  %4153 = load i32* %4152, align 4, !tbaa !7
  %4154 = icmp sgt i32 %4153, 0
  br i1 %4154, label %.lr.ph1460, label %.loopexit912

.lr.ph1460:                                       ; preds = %4150
  %4155 = getelementptr inbounds i32* %4151, i64 1
  %4156 = load double** %86, align 8, !tbaa !13
  %4157 = load double** %115, align 16, !tbaa !13
  %4158 = load double* %108, align 16, !tbaa !15
  %4159 = fmul double %107, %4158
  %4160 = load double* %109, align 16, !tbaa !15
  br label %4162

.loopexit852:                                     ; preds = %.loopexit816, %4162
  %dtvvar0H.118.lcssa = phi double [ %dtvvar0H.1171457, %4162 ], [ %dtvvar0H.119.lcssa, %.loopexit816 ]
  %4161 = icmp sgt i32 %_k325.01458.in, 1
  br i1 %4161, label %4162, label %.loopexit912

; <label>:4162                                    ; preds = %.lr.ph1460, %.loopexit852
  %_k325.01458.in = phi i32 [ %4153, %.lr.ph1460 ], [ %_k325.01458, %.loopexit852 ]
  %dtvvar0H.1171457 = phi double [ %dtvvar0H.02051, %.lr.ph1460 ], [ %dtvvar0H.118.lcssa, %.loopexit852 ]
  %_k325.01458 = add nsw i32 %_k325.01458.in, -1
  %4163 = load i32* %4155, align 4, !tbaa !7
  %4164 = icmp sgt i32 %4163, 0
  br i1 %4164, label %.lr.ph1454, label %.loopexit852

.lr.ph1454:                                       ; preds = %4162
  %4165 = load i8**** %38, align 8, !tbaa !12
  %4166 = getelementptr inbounds i8*** %4165, i64 %indvars.iv2111
  %4167 = bitcast i8*** %4166 to i32***
  %4168 = load i32*** %4167, align 8, !tbaa !13
  %4169 = load i32** %4168, align 8, !tbaa !13
  %4170 = getelementptr inbounds i8*** %4165, i64 %indvars.iv2113
  %4171 = load i8*** %4170, align 8, !tbaa !13
  %4172 = getelementptr inbounds i8** %4171, i64 %.
  %4173 = bitcast i8** %4172 to i32**
  %4174 = load i32** %4173, align 8, !tbaa !13
  br label %4176

.loopexit816:                                     ; preds = %4260, %4176
  %dtvvar0H.119.lcssa = phi double [ %dtvvar0H.1181451, %4176 ], [ %dtvvar0H.120, %4260 ]
  %4175 = icmp sgt i32 %_j324.01452.in, 1
  br i1 %4175, label %.loopexit816._crit_edge, label %.loopexit852

.loopexit816._crit_edge:                          ; preds = %.loopexit816
  %.pre2588 = load i32* %4155, align 4, !tbaa !7
  br label %4176

; <label>:4176                                    ; preds = %.loopexit816._crit_edge, %.lr.ph1454
  %4177 = phi i32 [ %4163, %.lr.ph1454 ], [ %.pre2588, %.loopexit816._crit_edge ]
  %_j324.01452.in = phi i32 [ %4163, %.lr.ph1454 ], [ %_j324.01452, %.loopexit816._crit_edge ]
  %dtvvar0H.1181451 = phi double [ %dtvvar0H.1171457, %.lr.ph1454 ], [ %dtvvar0H.119.lcssa, %.loopexit816._crit_edge ]
  %_j324.01452 = add nsw i32 %_j324.01452.in, -1
  %4178 = load i32* %113, align 4, !tbaa !7
  %4179 = load i32* %114, align 4, !tbaa !7
  %4180 = add nsw i32 %4179, -1
  %4181 = load i32* %4151, align 4, !tbaa !7
  %4182 = mul nsw i32 %4177, %_k325.01458
  %4183 = add nsw i32 %4182, %_j324.01452
  %4184 = mul nsw i32 %4183, %4181
  %4185 = add nsw i32 %4184, %4180
  %4186 = sext i32 %4185 to i64
  %4187 = icmp sgt i32 %4179, 0
  br i1 %4187, label %.lr.ph1448, label %.loopexit816

.lr.ph1448:                                       ; preds = %4176
  %4188 = getelementptr inbounds i32* %4174, i64 %4186
  %4189 = getelementptr inbounds i32* %4169, i64 %4186
  %4190 = getelementptr inbounds double* %4157, i64 %4186
  %4191 = getelementptr inbounds double* %4156, i64 %4186
  %4192 = shl nsw i32 %4178, 1
  %4193 = sext i32 %4178 to i64
  %4194 = sext i32 %4192 to i64
  br label %4195

; <label>:4195                                    ; preds = %.lr.ph1448, %4260
  %dtvvar0H.1191446 = phi double [ %dtvvar0H.1181451, %.lr.ph1448 ], [ %dtvvar0H.120, %4260 ]
  %_i323.01445 = phi i32 [ %4180, %.lr.ph1448 ], [ %4305, %4260 ]
  %_radius330.01444 = phi double* [ %4191, %.lr.ph1448 ], [ %4301, %4260 ]
  %_xyz331.01443 = phi double* [ %4190, %.lr.ph1448 ], [ %4302, %4260 ]
  %_to332.01442 = phi i32* [ %4189, %.lr.ph1448 ], [ %4303, %4260 ]
  %_from333.01441 = phi i32* [ %4188, %.lr.ph1448 ], [ %4304, %4260 ]
  %4196 = load double* %_radius330.01444, align 8, !tbaa !15
  %4197 = getelementptr inbounds double* %_radius330.01444, i64 %4193
  %4198 = load double* %4197, align 8, !tbaa !15
  %4199 = insertelement <2 x double> undef, double %4198, i32 0
  %4200 = insertelement <2 x double> %4199, double %4196, i32 1
  %4201 = fdiv <2 x double> <double 1.000000e+00, double 1.000000e+00>, %4200
  %4202 = load double* %_xyz331.01443, align 8, !tbaa !15
  br i1 %105, label %4204, label %._crit_edge2314

._crit_edge2314:                                  ; preds = %4195
  %.phi.trans.insert2316 = getelementptr inbounds double* %_xyz331.01443, i64 %4193
  %.pre2317 = load double* %.phi.trans.insert2316, align 8, !tbaa !15
  %.phi.trans.insert2318 = getelementptr inbounds i32* %_to332.01442, i64 %4193
  %.pre2319 = load i32* %.phi.trans.insert2318, align 4, !tbaa !7
  %.phi.trans.insert2320 = getelementptr inbounds i32* %_from333.01441, i64 %4193
  %.pre2321 = load i32* %.phi.trans.insert2320, align 4, !tbaa !7
  %4203 = fmul <2 x double> %4201, %4201
  br label %4260

; <label>:4204                                    ; preds = %4195
  %4205 = fmul <2 x double> %4201, %4201
  %4206 = extractelement <2 x double> %4205, i32 1
  %4207 = fmul double %4206, %4202
  %4208 = getelementptr inbounds double* %_xyz331.01443, i64 %4193
  %4209 = load double* %4208, align 8, !tbaa !15
  %4210 = extractelement <2 x double> %4205, i32 0
  %4211 = fmul double %4210, %4209
  %4212 = fadd double %4207, %4211
  %4213 = fmul double %4159, %4212
  %4214 = fadd double %4213, 1.000000e+00
  %4215 = fsub double 1.000000e+00, %4213
  %4216 = fdiv double %4214, %4215
  %4217 = getelementptr inbounds i32* %_to332.01442, i64 %4193
  %4218 = load i32* %4217, align 4, !tbaa !7
  %4219 = getelementptr inbounds i32* %_to332.01442, i64 %4194
  %4220 = load i32* %4219, align 4, !tbaa !7
  %4221 = add nsw i32 %4220, %4218
  %4222 = getelementptr inbounds i32* %_from333.01441, i64 %4193
  %4223 = load i32* %4222, align 4, !tbaa !7
  %4224 = add nsw i32 %4221, %4223
  %4225 = getelementptr inbounds i32* %_from333.01441, i64 %4194
  %4226 = load i32* %4225, align 4, !tbaa !7
  %4227 = add nsw i32 %4224, %4226
  %4228 = sitofp i32 %4227 to double
  %4229 = fmul double %4228, 2.500000e-01
  %4230 = fsub double %4229, %var0
  %4231 = fmul double %32, %4230
  %4232 = sub nsw i32 %4218, %4223
  %4233 = sitofp i32 %4232 to double
  %4234 = fmul double %4198, %4233
  %4235 = getelementptr inbounds double* %_radius330.01444, i64 %4194
  %4236 = load double* %4235, align 8, !tbaa !15
  %4237 = sub nsw i32 %4220, %4226
  %4238 = sitofp i32 %4237 to double
  %4239 = fmul double %4236, %4238
  %4240 = fadd double %4234, %4239
  %4241 = fmul double %4240, 5.000000e-01
  %4242 = fadd double %4231, %4241
  %4243 = sub i32 %4220, %4218
  %4244 = sub i32 %4243, %4223
  %4245 = add i32 %4244, %4226
  %4246 = sitofp i32 %4245 to double
  %4247 = fmul double %4246, 2.500000e-01
  %4248 = fmul double %4160, %4247
  %4249 = fmul double %4198, %4198
  %4250 = fdiv double %4249, %4209
  %4251 = fmul double %4236, %4236
  %4252 = getelementptr inbounds double* %_xyz331.01443, i64 %4194
  %4253 = load double* %4252, align 8, !tbaa !15
  %4254 = fdiv double %4251, %4253
  %4255 = fadd double %4250, %4254
  %4256 = fmul double %4248, %4255
  %4257 = fadd double %4242, %4256
  %4258 = fmul double %4216, %4257
  %4259 = fadd double %34, %4258
  br label %4260

; <label>:4260                                    ; preds = %._crit_edge2314, %4204
  %4261 = phi i32 [ %.pre2321, %._crit_edge2314 ], [ %4223, %4204 ]
  %4262 = phi i32 [ %.pre2319, %._crit_edge2314 ], [ %4218, %4204 ]
  %4263 = phi double [ %.pre2317, %._crit_edge2314 ], [ %4209, %4204 ]
  %dtvvar0H.120 = phi double [ %dtvvar0H.1191446, %._crit_edge2314 ], [ %4259, %4204 ]
  %4264 = phi <2 x double> [ %4203, %._crit_edge2314 ], [ %4205, %4204 ]
  %4265 = extractelement <2 x double> %4264, i32 1
  %4266 = fmul double %4265, %4202
  %4267 = extractelement <2 x double> %4264, i32 0
  %4268 = fmul double %4267, %4263
  %4269 = fadd double %4266, %4268
  %4270 = fmul double %dtvvar0H.120, %4269
  %4271 = sitofp i32 %4262 to double
  %4272 = extractelement <2 x double> %4201, i32 0
  %4273 = fmul double %4272, %4263
  %4274 = fmul double %33, %4272
  %4275 = fadd double %4274, 1.000000e+00
  %4276 = fmul double %4275, %4273
  %4277 = fadd double %4160, %4276
  %4278 = fmul double %4271, %4277
  %4279 = fsub double %4270, %4278
  %4280 = load i32* %_from333.01441, align 4, !tbaa !7
  %4281 = sitofp i32 %4280 to double
  %4282 = extractelement <2 x double> %4201, i32 1
  %4283 = fmul double %4282, %4202
  %4284 = fmul double %33, %4282
  %4285 = fsub double 1.000000e+00, %4284
  %4286 = fmul double %4285, %4283
  %4287 = fadd double %4286, %4160
  %4288 = fmul double %4287, %4281
  %4289 = fadd double %4279, %4288
  %4290 = sitofp i32 %4261 to double
  %4291 = fsub double 1.000000e+00, %4274
  %4292 = fmul double %4291, %4273
  %4293 = fsub double %4160, %4292
  %4294 = fmul double %4293, %4290
  %4295 = fsub double %4289, %4294
  %4296 = fadd double %4284, 1.000000e+00
  %4297 = fmul double %4296, %4283
  %4298 = fsub double %4297, %4160
  %4299 = fdiv double %4295, %4298
  %4300 = fptosi double %4299 to i32
  store i32 %4300, i32* %_to332.01442, align 4, !tbaa !7
  %4301 = getelementptr inbounds double* %_radius330.01444, i64 -1
  %4302 = getelementptr inbounds double* %_xyz331.01443, i64 -1
  %4303 = getelementptr inbounds i32* %_to332.01442, i64 -1
  %4304 = getelementptr inbounds i32* %_from333.01441, i64 -1
  %4305 = add nsw i32 %_i323.01445, -1
  %4306 = icmp sgt i32 %_i323.01445, 0
  br i1 %4306, label %4195, label %.loopexit816

.loopexit912:                                     ; preds = %.loopexit852, %4150
  %dtvvar0H.117.lcssa = phi double [ %dtvvar0H.02051, %4150 ], [ %dtvvar0H.118.lcssa, %.loopexit852 ]
  %.pre2322 = load i32* %97, align 4, !tbaa !7
  br label %4307

; <label>:4307                                    ; preds = %.loopexit912, %4143
  %4308 = phi i32 [ %4149, %4143 ], [ %.pre2322, %.loopexit912 ]
  %dtvvar0H.121 = phi double [ %dtvvar0H.02051, %4143 ], [ %dtvvar0H.117.lcssa, %.loopexit912 ]
  %4309 = icmp eq i32 %4308, 0
  br i1 %4309, label %.loopexit911, label %.preheader910

.preheader910:                                    ; preds = %4307
  %4310 = load i32** %93, align 8, !tbaa !17
  %4311 = getelementptr inbounds i32* %4310, i64 2
  %4312 = load i32* %4311, align 4, !tbaa !7
  %4313 = icmp sgt i32 %4312, 0
  br i1 %4313, label %.preheader851.lr.ph, label %.loopexit911

.preheader851.lr.ph:                              ; preds = %.preheader910
  %4314 = getelementptr inbounds i32* %4310, i64 1
  %4315 = load double** %86, align 8, !tbaa !13
  %4316 = load double** %115, align 16, !tbaa !13
  %4317 = load double* %108, align 16, !tbaa !15
  %4318 = fmul double %107, %4317
  %4319 = load double* %109, align 16, !tbaa !15
  %.pre2613 = load i32* %4314, align 4, !tbaa !7
  br label %.preheader851

.preheader851:                                    ; preds = %.preheader851.lr.ph, %4471
  %4320 = phi i32 [ %.pre2613, %.preheader851.lr.ph ], [ %4472, %4471 ]
  %4321 = phi i32 [ %4312, %.preheader851.lr.ph ], [ %4473, %4471 ]
  %dtvvar0H.1221479 = phi double [ %dtvvar0H.121, %.preheader851.lr.ph ], [ %dtvvar0H.123.lcssa, %4471 ]
  %_k339.01477 = phi i32 [ 0, %.preheader851.lr.ph ], [ %4474, %4471 ]
  %4322 = icmp sgt i32 %4320, 0
  br i1 %4322, label %.lr.ph1474, label %4471

.lr.ph1474:                                       ; preds = %.preheader851
  %4323 = load i8**** %38, align 8, !tbaa !12
  %4324 = getelementptr inbounds i8*** %4323, i64 %indvars.iv2111
  %4325 = bitcast i8*** %4324 to i32***
  %4326 = load i32*** %4325, align 8, !tbaa !13
  %4327 = load i32** %4326, align 8, !tbaa !13
  %4328 = getelementptr inbounds i8*** %4323, i64 %indvars.iv2113
  %4329 = load i8*** %4328, align 8, !tbaa !13
  %4330 = getelementptr inbounds i8** %4329, i64 %.
  %4331 = bitcast i8** %4330 to i32**
  %4332 = load i32** %4331, align 8, !tbaa !13
  %.pre2589 = load i32* %4310, align 4, !tbaa !7
  br label %4333

; <label>:4333                                    ; preds = %.lr.ph1474, %4466
  %4334 = phi i32 [ %.pre2589, %.lr.ph1474 ], [ %4468, %4466 ]
  %4335 = phi i32 [ %4320, %.lr.ph1474 ], [ %4467, %4466 ]
  %dtvvar0H.1231473 = phi double [ %dtvvar0H.1221479, %.lr.ph1474 ], [ %dtvvar0H.124.lcssa, %4466 ]
  %_j338.01472 = phi i32 [ 0, %.lr.ph1474 ], [ %4469, %4466 ]
  %4336 = load i32* %113, align 4, !tbaa !7
  %4337 = load i32* %114, align 4, !tbaa !7
  %4338 = sub nsw i32 %4334, %4337
  %4339 = mul nsw i32 %4335, %_k339.01477
  %4340 = add nsw i32 %4339, %_j338.01472
  %4341 = mul nsw i32 %4334, %4340
  %4342 = add nsw i32 %4338, %4341
  %4343 = sext i32 %4342 to i64
  %4344 = icmp sgt i32 %4337, 0
  br i1 %4344, label %.lr.ph1469, label %4466

.lr.ph1469:                                       ; preds = %4333
  %4345 = getelementptr inbounds i32* %4332, i64 %4343
  %4346 = getelementptr inbounds i32* %4327, i64 %4343
  %4347 = getelementptr inbounds double* %4316, i64 %4343
  %4348 = getelementptr inbounds double* %4315, i64 %4343
  %4349 = mul nsw i32 %4336, -2
  %4350 = sub nsw i32 0, %4336
  %4351 = sext i32 %4350 to i64
  %4352 = sext i32 %4349 to i64
  br label %4353

; <label>:4353                                    ; preds = %.lr.ph1469, %4418
  %dtvvar0H.1241467 = phi double [ %dtvvar0H.1231473, %.lr.ph1469 ], [ %dtvvar0H.125, %4418 ]
  %_i337.01466 = phi i32 [ %4338, %.lr.ph1469 ], [ %4463, %4418 ]
  %_radius344.01465 = phi double* [ %4348, %.lr.ph1469 ], [ %4459, %4418 ]
  %_xyz345.01464 = phi double* [ %4347, %.lr.ph1469 ], [ %4460, %4418 ]
  %_to346.01463 = phi i32* [ %4346, %.lr.ph1469 ], [ %4461, %4418 ]
  %_from347.01462 = phi i32* [ %4345, %.lr.ph1469 ], [ %4462, %4418 ]
  %4354 = load double* %_radius344.01465, align 8, !tbaa !15
  %4355 = getelementptr inbounds double* %_radius344.01465, i64 %4351
  %4356 = load double* %4355, align 8, !tbaa !15
  %4357 = insertelement <2 x double> undef, double %4356, i32 0
  %4358 = insertelement <2 x double> %4357, double %4354, i32 1
  %4359 = fdiv <2 x double> <double 1.000000e+00, double 1.000000e+00>, %4358
  %4360 = load double* %_xyz345.01464, align 8, !tbaa !15
  br i1 %105, label %4362, label %._crit_edge2323

._crit_edge2323:                                  ; preds = %4353
  %.phi.trans.insert2325 = getelementptr inbounds double* %_xyz345.01464, i64 %4351
  %.pre2326 = load double* %.phi.trans.insert2325, align 8, !tbaa !15
  %.phi.trans.insert2327 = getelementptr inbounds i32* %_to346.01463, i64 %4351
  %.pre2328 = load i32* %.phi.trans.insert2327, align 4, !tbaa !7
  %.phi.trans.insert2329 = getelementptr inbounds i32* %_from347.01462, i64 %4351
  %.pre2330 = load i32* %.phi.trans.insert2329, align 4, !tbaa !7
  %4361 = fmul <2 x double> %4359, %4359
  br label %4418

; <label>:4362                                    ; preds = %4353
  %4363 = fmul <2 x double> %4359, %4359
  %4364 = extractelement <2 x double> %4363, i32 1
  %4365 = fmul double %4364, %4360
  %4366 = getelementptr inbounds double* %_xyz345.01464, i64 %4351
  %4367 = load double* %4366, align 8, !tbaa !15
  %4368 = extractelement <2 x double> %4363, i32 0
  %4369 = fmul double %4368, %4367
  %4370 = fadd double %4365, %4369
  %4371 = fmul double %4318, %4370
  %4372 = fsub double 1.000000e+00, %4371
  %4373 = fadd double %4371, 1.000000e+00
  %4374 = fdiv double %4372, %4373
  %4375 = getelementptr inbounds i32* %_to346.01463, i64 %4351
  %4376 = load i32* %4375, align 4, !tbaa !7
  %4377 = getelementptr inbounds i32* %_to346.01463, i64 %4352
  %4378 = load i32* %4377, align 4, !tbaa !7
  %4379 = add nsw i32 %4378, %4376
  %4380 = getelementptr inbounds i32* %_from347.01462, i64 %4351
  %4381 = load i32* %4380, align 4, !tbaa !7
  %4382 = add nsw i32 %4379, %4381
  %4383 = getelementptr inbounds i32* %_from347.01462, i64 %4352
  %4384 = load i32* %4383, align 4, !tbaa !7
  %4385 = add nsw i32 %4382, %4384
  %4386 = sitofp i32 %4385 to double
  %4387 = fmul double %4386, 2.500000e-01
  %4388 = fsub double %4387, %var0
  %4389 = fmul double %32, %4388
  %4390 = sub nsw i32 %4376, %4381
  %4391 = sitofp i32 %4390 to double
  %4392 = fmul double %4356, %4391
  %4393 = getelementptr inbounds double* %_radius344.01465, i64 %4352
  %4394 = load double* %4393, align 8, !tbaa !15
  %4395 = sub nsw i32 %4378, %4384
  %4396 = sitofp i32 %4395 to double
  %4397 = fmul double %4394, %4396
  %4398 = fadd double %4392, %4397
  %4399 = fmul double %4398, 5.000000e-01
  %4400 = fadd double %4389, %4399
  %4401 = sub i32 %4376, %4378
  %4402 = add nsw i32 %4401, %4381
  %4403 = sub i32 %4402, %4384
  %4404 = sitofp i32 %4403 to double
  %4405 = fmul double %4404, 2.500000e-01
  %4406 = fmul double %4319, %4405
  %4407 = fmul double %4356, %4356
  %4408 = fdiv double %4407, %4367
  %4409 = fmul double %4394, %4394
  %4410 = getelementptr inbounds double* %_xyz345.01464, i64 %4352
  %4411 = load double* %4410, align 8, !tbaa !15
  %4412 = fdiv double %4409, %4411
  %4413 = fadd double %4408, %4412
  %4414 = fmul double %4406, %4413
  %4415 = fadd double %4400, %4414
  %4416 = fmul double %4374, %4415
  %4417 = fadd double %34, %4416
  br label %4418

; <label>:4418                                    ; preds = %._crit_edge2323, %4362
  %4419 = phi i32 [ %.pre2330, %._crit_edge2323 ], [ %4381, %4362 ]
  %4420 = phi i32 [ %.pre2328, %._crit_edge2323 ], [ %4376, %4362 ]
  %4421 = phi double [ %.pre2326, %._crit_edge2323 ], [ %4367, %4362 ]
  %dtvvar0H.125 = phi double [ %dtvvar0H.1241467, %._crit_edge2323 ], [ %4417, %4362 ]
  %4422 = phi <2 x double> [ %4361, %._crit_edge2323 ], [ %4363, %4362 ]
  %4423 = extractelement <2 x double> %4422, i32 1
  %4424 = fmul double %4423, %4360
  %4425 = extractelement <2 x double> %4422, i32 0
  %4426 = fmul double %4425, %4421
  %4427 = fadd double %4424, %4426
  %4428 = fmul double %dtvvar0H.125, %4427
  %4429 = sitofp i32 %4420 to double
  %4430 = extractelement <2 x double> %4359, i32 0
  %4431 = fmul double %4430, %4421
  %4432 = fmul double %33, %4430
  %4433 = fadd double %4432, 1.000000e+00
  %4434 = fmul double %4433, %4431
  %4435 = fsub double %4319, %4434
  %4436 = fmul double %4429, %4435
  %4437 = fadd double %4428, %4436
  %4438 = load i32* %_from347.01462, align 4, !tbaa !7
  %4439 = sitofp i32 %4438 to double
  %4440 = extractelement <2 x double> %4359, i32 1
  %4441 = fmul double %4440, %4360
  %4442 = fmul double %33, %4440
  %4443 = fsub double 1.000000e+00, %4442
  %4444 = fmul double %4443, %4441
  %4445 = fsub double %4444, %4319
  %4446 = fmul double %4445, %4439
  %4447 = fadd double %4437, %4446
  %4448 = sitofp i32 %4419 to double
  %4449 = fsub double 1.000000e+00, %4432
  %4450 = fmul double %4449, %4431
  %4451 = fadd double %4319, %4450
  %4452 = fmul double %4451, %4448
  %4453 = fadd double %4447, %4452
  %4454 = fadd double %4442, 1.000000e+00
  %4455 = fmul double %4454, %4441
  %4456 = fadd double %4455, %4319
  %4457 = fdiv double %4453, %4456
  %4458 = fptosi double %4457 to i32
  store i32 %4458, i32* %_to346.01463, align 4, !tbaa !7
  %4459 = getelementptr inbounds double* %_radius344.01465, i64 1
  %4460 = getelementptr inbounds double* %_xyz345.01464, i64 1
  %4461 = getelementptr inbounds i32* %_to346.01463, i64 1
  %4462 = getelementptr inbounds i32* %_from347.01462, i64 1
  %4463 = add nsw i32 %_i337.01466, 1
  %4464 = load i32* %4310, align 4, !tbaa !7
  %4465 = icmp slt i32 %4463, %4464
  br i1 %4465, label %4353, label %._crit_edge1470

._crit_edge1470:                                  ; preds = %4418
  %.pre2607 = load i32* %4314, align 4, !tbaa !7
  br label %4466

; <label>:4466                                    ; preds = %._crit_edge1470, %4333
  %4467 = phi i32 [ %.pre2607, %._crit_edge1470 ], [ %4335, %4333 ]
  %4468 = phi i32 [ %4464, %._crit_edge1470 ], [ %4334, %4333 ]
  %dtvvar0H.124.lcssa = phi double [ %dtvvar0H.125, %._crit_edge1470 ], [ %dtvvar0H.1231473, %4333 ]
  %4469 = add nuw nsw i32 %_j338.01472, 1
  %4470 = icmp slt i32 %4469, %4467
  br i1 %4470, label %4333, label %._crit_edge1475

._crit_edge1475:                                  ; preds = %4466
  %.pre2331 = load i32* %4311, align 4, !tbaa !7
  br label %4471

; <label>:4471                                    ; preds = %._crit_edge1475, %.preheader851
  %4472 = phi i32 [ %4467, %._crit_edge1475 ], [ %4320, %.preheader851 ]
  %4473 = phi i32 [ %.pre2331, %._crit_edge1475 ], [ %4321, %.preheader851 ]
  %dtvvar0H.123.lcssa = phi double [ %dtvvar0H.124.lcssa, %._crit_edge1475 ], [ %dtvvar0H.1221479, %.preheader851 ]
  %4474 = add nuw nsw i32 %_k339.01477, 1
  %4475 = icmp slt i32 %4474, %4473
  br i1 %4475, label %.preheader851, label %.loopexit911

.loopexit911:                                     ; preds = %4471, %.preheader910, %4307
  %dtvvar0H.126 = phi double [ %dtvvar0H.121, %4307 ], [ %dtvvar0H.121, %.preheader910 ], [ %dtvvar0H.123.lcssa, %4471 ]
  %4476 = bitcast i32* %98 to i64*
  %4477 = load i64* %4476, align 8
  %4478 = trunc i64 %4477 to i32
  %4479 = icmp eq i32 %4478, 0
  %4480 = lshr i64 %4477, 32
  %4481 = trunc i64 %4480 to i32
  br i1 %4479, label %4638, label %4482

; <label>:4482                                    ; preds = %.loopexit911
  %4483 = load i32** %93, align 8, !tbaa !17
  %4484 = getelementptr inbounds i32* %4483, i64 2
  %4485 = load i32* %4484, align 4, !tbaa !7
  %4486 = icmp sgt i32 %4485, 0
  br i1 %4486, label %.lr.ph1500, label %.loopexit909

.lr.ph1500:                                       ; preds = %4482
  %4487 = load double** %86, align 8, !tbaa !13
  %4488 = load double** %112, align 8, !tbaa !13
  %4489 = load double* %108, align 16, !tbaa !15
  %4490 = fmul double %107, %4489
  %4491 = load double* %109, align 16, !tbaa !15
  br label %4493

.loopexit850:                                     ; preds = %.loopexit815, %4493
  %dtvvar0H.128.lcssa = phi double [ %dtvvar0H.1271497, %4493 ], [ %dtvvar0H.129.lcssa, %.loopexit815 ]
  %4492 = icmp sgt i32 %_k353.01498.in, 1
  br i1 %4492, label %4493, label %.loopexit909

; <label>:4493                                    ; preds = %.lr.ph1500, %.loopexit850
  %_k353.01498.in = phi i32 [ %4485, %.lr.ph1500 ], [ %_k353.01498, %.loopexit850 ]
  %dtvvar0H.1271497 = phi double [ %dtvvar0H.126, %.lr.ph1500 ], [ %dtvvar0H.128.lcssa, %.loopexit850 ]
  %_k353.01498 = add nsw i32 %_k353.01498.in, -1
  %4494 = load i32* %110, align 4, !tbaa !7
  %4495 = icmp sgt i32 %4494, 0
  br i1 %4495, label %.lr.ph1494, label %.loopexit850

.lr.ph1494:                                       ; preds = %4493
  %4496 = getelementptr inbounds i32* %4483, i64 1
  %4497 = load i8**** %38, align 8, !tbaa !12
  %4498 = getelementptr inbounds i8*** %4497, i64 %indvars.iv2111
  %4499 = bitcast i8*** %4498 to i32***
  %4500 = load i32*** %4499, align 8, !tbaa !13
  %4501 = load i32** %4500, align 8, !tbaa !13
  %4502 = getelementptr inbounds i8*** %4497, i64 %indvars.iv2113
  %4503 = load i8*** %4502, align 8, !tbaa !13
  %4504 = getelementptr inbounds i8** %4503, i64 %.
  %4505 = bitcast i8** %4504 to i32**
  %4506 = load i32** %4505, align 8, !tbaa !13
  br label %4508

.loopexit815:                                     ; preds = %4591, %4508
  %dtvvar0H.129.lcssa = phi double [ %dtvvar0H.1281491, %4508 ], [ %dtvvar0H.130, %4591 ]
  %4507 = icmp sgt i32 %_j352.01492.in, 1
  br i1 %4507, label %4508, label %.loopexit850

; <label>:4508                                    ; preds = %.lr.ph1494, %.loopexit815
  %_j352.01492.in = phi i32 [ %4494, %.lr.ph1494 ], [ %_j352.01492, %.loopexit815 ]
  %dtvvar0H.1281491 = phi double [ %dtvvar0H.1271497, %.lr.ph1494 ], [ %dtvvar0H.129.lcssa, %.loopexit815 ]
  %_j352.01492 = add nsw i32 %_j352.01492.in, -1
  %4509 = load i32* %111, align 4, !tbaa !7
  %4510 = load i32* %4483, align 4, !tbaa !7
  %4511 = add nsw i32 %4510, -1
  %4512 = load i32* %4496, align 4, !tbaa !7
  %4513 = mul nsw i32 %4512, %_k353.01498
  %4514 = add nsw i32 %4513, %_j352.01492
  %4515 = mul nsw i32 %4514, %4510
  %4516 = add nsw i32 %4515, %4511
  %4517 = sext i32 %4516 to i64
  %4518 = icmp sgt i32 %4510, 0
  br i1 %4518, label %.lr.ph1488, label %.loopexit815

.lr.ph1488:                                       ; preds = %4508
  %4519 = getelementptr inbounds i32* %4506, i64 %4517
  %4520 = getelementptr inbounds i32* %4501, i64 %4517
  %4521 = getelementptr inbounds double* %4488, i64 %4517
  %4522 = getelementptr inbounds double* %4487, i64 %4517
  %4523 = shl nsw i32 %4509, 1
  %4524 = sext i32 %4509 to i64
  %4525 = sext i32 %4523 to i64
  br label %4526

; <label>:4526                                    ; preds = %.lr.ph1488, %4591
  %dtvvar0H.1291486 = phi double [ %dtvvar0H.1281491, %.lr.ph1488 ], [ %dtvvar0H.130, %4591 ]
  %_i351.01485 = phi i32 [ %4511, %.lr.ph1488 ], [ %4636, %4591 ]
  %_radius358.01484 = phi double* [ %4522, %.lr.ph1488 ], [ %4632, %4591 ]
  %_from361.01483 = phi i32* [ %4519, %.lr.ph1488 ], [ %4635, %4591 ]
  %_to360.01482 = phi i32* [ %4520, %.lr.ph1488 ], [ %4634, %4591 ]
  %_xyz359.01481 = phi double* [ %4521, %.lr.ph1488 ], [ %4633, %4591 ]
  %4527 = load double* %_radius358.01484, align 8, !tbaa !15
  %4528 = getelementptr inbounds double* %_radius358.01484, i64 %4524
  %4529 = load double* %4528, align 8, !tbaa !15
  %4530 = insertelement <2 x double> undef, double %4529, i32 0
  %4531 = insertelement <2 x double> %4530, double %4527, i32 1
  %4532 = fdiv <2 x double> <double 1.000000e+00, double 1.000000e+00>, %4531
  %4533 = load double* %_xyz359.01481, align 8, !tbaa !15
  br i1 %105, label %4535, label %._crit_edge2332

._crit_edge2332:                                  ; preds = %4526
  %.phi.trans.insert2334 = getelementptr inbounds double* %_xyz359.01481, i64 %4524
  %.pre2335 = load double* %.phi.trans.insert2334, align 8, !tbaa !15
  %.phi.trans.insert2336 = getelementptr inbounds i32* %_to360.01482, i64 %4524
  %.pre2337 = load i32* %.phi.trans.insert2336, align 4, !tbaa !7
  %.phi.trans.insert2338 = getelementptr inbounds i32* %_from361.01483, i64 %4524
  %.pre2339 = load i32* %.phi.trans.insert2338, align 4, !tbaa !7
  %4534 = fmul <2 x double> %4532, %4532
  br label %4591

; <label>:4535                                    ; preds = %4526
  %4536 = fmul <2 x double> %4532, %4532
  %4537 = extractelement <2 x double> %4536, i32 1
  %4538 = fmul double %4537, %4533
  %4539 = getelementptr inbounds double* %_xyz359.01481, i64 %4524
  %4540 = load double* %4539, align 8, !tbaa !15
  %4541 = extractelement <2 x double> %4536, i32 0
  %4542 = fmul double %4541, %4540
  %4543 = fadd double %4538, %4542
  %4544 = fmul double %4490, %4543
  %4545 = fadd double %4544, 1.000000e+00
  %4546 = fsub double 1.000000e+00, %4544
  %4547 = fdiv double %4545, %4546
  %4548 = getelementptr inbounds i32* %_to360.01482, i64 %4524
  %4549 = load i32* %4548, align 4, !tbaa !7
  %4550 = getelementptr inbounds i32* %_to360.01482, i64 %4525
  %4551 = load i32* %4550, align 4, !tbaa !7
  %4552 = add nsw i32 %4551, %4549
  %4553 = getelementptr inbounds i32* %_from361.01483, i64 %4524
  %4554 = load i32* %4553, align 4, !tbaa !7
  %4555 = add nsw i32 %4552, %4554
  %4556 = getelementptr inbounds i32* %_from361.01483, i64 %4525
  %4557 = load i32* %4556, align 4, !tbaa !7
  %4558 = add nsw i32 %4555, %4557
  %4559 = sitofp i32 %4558 to double
  %4560 = fmul double %4559, 2.500000e-01
  %4561 = fsub double %4560, %var0
  %4562 = fmul double %32, %4561
  %4563 = sub nsw i32 %4549, %4554
  %4564 = sitofp i32 %4563 to double
  %4565 = fmul double %4529, %4564
  %4566 = getelementptr inbounds double* %_radius358.01484, i64 %4525
  %4567 = load double* %4566, align 8, !tbaa !15
  %4568 = sub nsw i32 %4551, %4557
  %4569 = sitofp i32 %4568 to double
  %4570 = fmul double %4567, %4569
  %4571 = fadd double %4565, %4570
  %4572 = fmul double %4571, 5.000000e-01
  %4573 = fadd double %4562, %4572
  %4574 = sub i32 %4551, %4549
  %4575 = sub i32 %4574, %4554
  %4576 = add i32 %4575, %4557
  %4577 = sitofp i32 %4576 to double
  %4578 = fmul double %4577, 2.500000e-01
  %4579 = fmul double %4491, %4578
  %4580 = fmul double %4529, %4529
  %4581 = fdiv double %4580, %4540
  %4582 = fmul double %4567, %4567
  %4583 = getelementptr inbounds double* %_xyz359.01481, i64 %4525
  %4584 = load double* %4583, align 8, !tbaa !15
  %4585 = fdiv double %4582, %4584
  %4586 = fadd double %4581, %4585
  %4587 = fmul double %4579, %4586
  %4588 = fadd double %4573, %4587
  %4589 = fmul double %4547, %4588
  %4590 = fadd double %34, %4589
  br label %4591

; <label>:4591                                    ; preds = %._crit_edge2332, %4535
  %4592 = phi i32 [ %.pre2339, %._crit_edge2332 ], [ %4554, %4535 ]
  %4593 = phi i32 [ %.pre2337, %._crit_edge2332 ], [ %4549, %4535 ]
  %4594 = phi double [ %.pre2335, %._crit_edge2332 ], [ %4540, %4535 ]
  %dtvvar0H.130 = phi double [ %dtvvar0H.1291486, %._crit_edge2332 ], [ %4590, %4535 ]
  %4595 = phi <2 x double> [ %4534, %._crit_edge2332 ], [ %4536, %4535 ]
  %4596 = extractelement <2 x double> %4595, i32 1
  %4597 = fmul double %4596, %4533
  %4598 = extractelement <2 x double> %4595, i32 0
  %4599 = fmul double %4598, %4594
  %4600 = fadd double %4597, %4599
  %4601 = fmul double %dtvvar0H.130, %4600
  %4602 = sitofp i32 %4593 to double
  %4603 = extractelement <2 x double> %4532, i32 0
  %4604 = fmul double %4603, %4594
  %4605 = fmul double %33, %4603
  %4606 = fadd double %4605, 1.000000e+00
  %4607 = fmul double %4606, %4604
  %4608 = fadd double %4491, %4607
  %4609 = fmul double %4602, %4608
  %4610 = fsub double %4601, %4609
  %4611 = load i32* %_from361.01483, align 4, !tbaa !7
  %4612 = sitofp i32 %4611 to double
  %4613 = extractelement <2 x double> %4532, i32 1
  %4614 = fmul double %4613, %4533
  %4615 = fmul double %33, %4613
  %4616 = fsub double 1.000000e+00, %4615
  %4617 = fmul double %4616, %4614
  %4618 = fadd double %4617, %4491
  %4619 = fmul double %4618, %4612
  %4620 = fadd double %4610, %4619
  %4621 = sitofp i32 %4592 to double
  %4622 = fsub double 1.000000e+00, %4605
  %4623 = fmul double %4622, %4604
  %4624 = fsub double %4491, %4623
  %4625 = fmul double %4624, %4621
  %4626 = fsub double %4620, %4625
  %4627 = fadd double %4615, 1.000000e+00
  %4628 = fmul double %4627, %4614
  %4629 = fsub double %4628, %4491
  %4630 = fdiv double %4626, %4629
  %4631 = fptosi double %4630 to i32
  store i32 %4631, i32* %_to360.01482, align 4, !tbaa !7
  %4632 = getelementptr inbounds double* %_radius358.01484, i64 -1
  %4633 = getelementptr inbounds double* %_xyz359.01481, i64 -1
  %4634 = getelementptr inbounds i32* %_to360.01482, i64 -1
  %4635 = getelementptr inbounds i32* %_from361.01483, i64 -1
  %4636 = add nsw i32 %_i351.01485, -1
  %4637 = icmp sgt i32 %_i351.01485, 0
  br i1 %4637, label %4526, label %.loopexit815

.loopexit909:                                     ; preds = %.loopexit850, %4482
  %dtvvar0H.127.lcssa = phi double [ %dtvvar0H.126, %4482 ], [ %dtvvar0H.128.lcssa, %.loopexit850 ]
  %.pre2340 = load i32* %99, align 4, !tbaa !7
  br label %4638

; <label>:4638                                    ; preds = %.loopexit909, %.loopexit911
  %4639 = phi i32 [ %4481, %.loopexit911 ], [ %.pre2340, %.loopexit909 ]
  %dtvvar0H.131 = phi double [ %dtvvar0H.126, %.loopexit911 ], [ %dtvvar0H.127.lcssa, %.loopexit909 ]
  %4640 = icmp eq i32 %4639, 0
  br i1 %4640, label %.loopexit908, label %.preheader907

.preheader907:                                    ; preds = %4638
  %4641 = load i32** %93, align 8, !tbaa !17
  %4642 = getelementptr inbounds i32* %4641, i64 2
  %4643 = load i32* %4642, align 4, !tbaa !7
  %4644 = icmp sgt i32 %4643, 0
  br i1 %4644, label %.lr.ph1521, label %.loopexit908

.lr.ph1521:                                       ; preds = %.preheader907
  %4645 = getelementptr inbounds i32* %4641, i64 1
  %4646 = load double** %86, align 8, !tbaa !13
  %4647 = load double** %112, align 8, !tbaa !13
  %4648 = load double* %108, align 16, !tbaa !15
  %4649 = fmul double %107, %4648
  %4650 = load double* %109, align 16, !tbaa !15
  %.pre2614 = load i32* %4645, align 4, !tbaa !7
  br label %4651

; <label>:4651                                    ; preds = %.lr.ph1521, %4802
  %4652 = phi i32 [ %.pre2614, %.lr.ph1521 ], [ %4803, %4802 ]
  %4653 = phi i32 [ %4643, %.lr.ph1521 ], [ %4804, %4802 ]
  %dtvvar0H.1321520 = phi double [ %dtvvar0H.131, %.lr.ph1521 ], [ %dtvvar0H.133.lcssa, %4802 ]
  %_k367.01518 = phi i32 [ 0, %.lr.ph1521 ], [ %4805, %4802 ]
  %4654 = load i32* %110, align 4, !tbaa !7
  %4655 = icmp sgt i32 %4654, 0
  br i1 %4655, label %.lr.ph1515, label %4802

.lr.ph1515:                                       ; preds = %4651
  %4656 = sub nsw i32 %4652, %4654
  %4657 = load i8**** %38, align 8, !tbaa !12
  %4658 = getelementptr inbounds i8*** %4657, i64 %indvars.iv2111
  %4659 = bitcast i8*** %4658 to i32***
  %4660 = load i32*** %4659, align 8, !tbaa !13
  %4661 = load i32** %4660, align 8, !tbaa !13
  %4662 = getelementptr inbounds i8*** %4657, i64 %indvars.iv2113
  %4663 = load i8*** %4662, align 8, !tbaa !13
  %4664 = getelementptr inbounds i8** %4663, i64 %.
  %4665 = bitcast i8** %4664 to i32**
  %4666 = load i32** %4665, align 8, !tbaa !13
  %.pre2591 = load i32* %4641, align 4, !tbaa !7
  br label %4667

; <label>:4667                                    ; preds = %.lr.ph1515, %4797
  %4668 = phi i32 [ %.pre2591, %.lr.ph1515 ], [ %4799, %4797 ]
  %4669 = phi i32 [ %4652, %.lr.ph1515 ], [ %4798, %4797 ]
  %dtvvar0H.1331513 = phi double [ %dtvvar0H.1321520, %.lr.ph1515 ], [ %dtvvar0H.134.lcssa, %4797 ]
  %_j366.01512 = phi i32 [ %4656, %.lr.ph1515 ], [ %4800, %4797 ]
  %4670 = load i32* %111, align 4, !tbaa !7
  %4671 = mul nsw i32 %4669, %_k367.01518
  %4672 = add nsw i32 %4671, %_j366.01512
  %4673 = mul nsw i32 %4668, %4672
  %4674 = sext i32 %4673 to i64
  %4675 = icmp sgt i32 %4668, 0
  br i1 %4675, label %.lr.ph1509, label %4797

.lr.ph1509:                                       ; preds = %4667
  %4676 = getelementptr inbounds i32* %4666, i64 %4674
  %4677 = getelementptr inbounds i32* %4661, i64 %4674
  %4678 = getelementptr inbounds double* %4647, i64 %4674
  %4679 = getelementptr inbounds double* %4646, i64 %4674
  %4680 = mul nsw i32 %4670, -2
  %4681 = sub nsw i32 0, %4670
  %4682 = sext i32 %4681 to i64
  %4683 = sext i32 %4680 to i64
  br label %4684

; <label>:4684                                    ; preds = %.lr.ph1509, %4749
  %dtvvar0H.1341507 = phi double [ %dtvvar0H.1331513, %.lr.ph1509 ], [ %dtvvar0H.135, %4749 ]
  %_from375.01506 = phi i32* [ %4676, %.lr.ph1509 ], [ %4793, %4749 ]
  %_to374.01505 = phi i32* [ %4677, %.lr.ph1509 ], [ %4792, %4749 ]
  %_xyz373.01504 = phi double* [ %4678, %.lr.ph1509 ], [ %4791, %4749 ]
  %_radius372.01503 = phi double* [ %4679, %.lr.ph1509 ], [ %4790, %4749 ]
  %_i365.01502 = phi i32 [ 0, %.lr.ph1509 ], [ %4794, %4749 ]
  %4685 = load double* %_radius372.01503, align 8, !tbaa !15
  %4686 = getelementptr inbounds double* %_radius372.01503, i64 %4682
  %4687 = load double* %4686, align 8, !tbaa !15
  %4688 = insertelement <2 x double> undef, double %4687, i32 0
  %4689 = insertelement <2 x double> %4688, double %4685, i32 1
  %4690 = fdiv <2 x double> <double 1.000000e+00, double 1.000000e+00>, %4689
  %4691 = load double* %_xyz373.01504, align 8, !tbaa !15
  br i1 %105, label %4693, label %._crit_edge2341

._crit_edge2341:                                  ; preds = %4684
  %.phi.trans.insert2343 = getelementptr inbounds double* %_xyz373.01504, i64 %4682
  %.pre2344 = load double* %.phi.trans.insert2343, align 8, !tbaa !15
  %.phi.trans.insert2345 = getelementptr inbounds i32* %_to374.01505, i64 %4682
  %.pre2346 = load i32* %.phi.trans.insert2345, align 4, !tbaa !7
  %.phi.trans.insert2347 = getelementptr inbounds i32* %_from375.01506, i64 %4682
  %.pre2348 = load i32* %.phi.trans.insert2347, align 4, !tbaa !7
  %4692 = fmul <2 x double> %4690, %4690
  br label %4749

; <label>:4693                                    ; preds = %4684
  %4694 = fmul <2 x double> %4690, %4690
  %4695 = extractelement <2 x double> %4694, i32 1
  %4696 = fmul double %4695, %4691
  %4697 = getelementptr inbounds double* %_xyz373.01504, i64 %4682
  %4698 = load double* %4697, align 8, !tbaa !15
  %4699 = extractelement <2 x double> %4694, i32 0
  %4700 = fmul double %4699, %4698
  %4701 = fadd double %4696, %4700
  %4702 = fmul double %4649, %4701
  %4703 = fsub double 1.000000e+00, %4702
  %4704 = fadd double %4702, 1.000000e+00
  %4705 = fdiv double %4703, %4704
  %4706 = getelementptr inbounds i32* %_to374.01505, i64 %4682
  %4707 = load i32* %4706, align 4, !tbaa !7
  %4708 = getelementptr inbounds i32* %_to374.01505, i64 %4683
  %4709 = load i32* %4708, align 4, !tbaa !7
  %4710 = add nsw i32 %4709, %4707
  %4711 = getelementptr inbounds i32* %_from375.01506, i64 %4682
  %4712 = load i32* %4711, align 4, !tbaa !7
  %4713 = add nsw i32 %4710, %4712
  %4714 = getelementptr inbounds i32* %_from375.01506, i64 %4683
  %4715 = load i32* %4714, align 4, !tbaa !7
  %4716 = add nsw i32 %4713, %4715
  %4717 = sitofp i32 %4716 to double
  %4718 = fmul double %4717, 2.500000e-01
  %4719 = fsub double %4718, %var0
  %4720 = fmul double %32, %4719
  %4721 = sub nsw i32 %4707, %4712
  %4722 = sitofp i32 %4721 to double
  %4723 = fmul double %4687, %4722
  %4724 = getelementptr inbounds double* %_radius372.01503, i64 %4683
  %4725 = load double* %4724, align 8, !tbaa !15
  %4726 = sub nsw i32 %4709, %4715
  %4727 = sitofp i32 %4726 to double
  %4728 = fmul double %4725, %4727
  %4729 = fadd double %4723, %4728
  %4730 = fmul double %4729, 5.000000e-01
  %4731 = fadd double %4720, %4730
  %4732 = sub i32 %4707, %4709
  %4733 = add nsw i32 %4732, %4712
  %4734 = sub i32 %4733, %4715
  %4735 = sitofp i32 %4734 to double
  %4736 = fmul double %4735, 2.500000e-01
  %4737 = fmul double %4650, %4736
  %4738 = fmul double %4687, %4687
  %4739 = fdiv double %4738, %4698
  %4740 = fmul double %4725, %4725
  %4741 = getelementptr inbounds double* %_xyz373.01504, i64 %4683
  %4742 = load double* %4741, align 8, !tbaa !15
  %4743 = fdiv double %4740, %4742
  %4744 = fadd double %4739, %4743
  %4745 = fmul double %4737, %4744
  %4746 = fadd double %4731, %4745
  %4747 = fmul double %4705, %4746
  %4748 = fadd double %34, %4747
  br label %4749

; <label>:4749                                    ; preds = %._crit_edge2341, %4693
  %4750 = phi i32 [ %.pre2348, %._crit_edge2341 ], [ %4712, %4693 ]
  %4751 = phi i32 [ %.pre2346, %._crit_edge2341 ], [ %4707, %4693 ]
  %4752 = phi double [ %.pre2344, %._crit_edge2341 ], [ %4698, %4693 ]
  %dtvvar0H.135 = phi double [ %dtvvar0H.1341507, %._crit_edge2341 ], [ %4748, %4693 ]
  %4753 = phi <2 x double> [ %4692, %._crit_edge2341 ], [ %4694, %4693 ]
  %4754 = extractelement <2 x double> %4753, i32 1
  %4755 = fmul double %4754, %4691
  %4756 = extractelement <2 x double> %4753, i32 0
  %4757 = fmul double %4756, %4752
  %4758 = fadd double %4755, %4757
  %4759 = fmul double %dtvvar0H.135, %4758
  %4760 = sitofp i32 %4751 to double
  %4761 = extractelement <2 x double> %4690, i32 0
  %4762 = fmul double %4761, %4752
  %4763 = fmul double %33, %4761
  %4764 = fadd double %4763, 1.000000e+00
  %4765 = fmul double %4764, %4762
  %4766 = fsub double %4650, %4765
  %4767 = fmul double %4760, %4766
  %4768 = fadd double %4759, %4767
  %4769 = load i32* %_from375.01506, align 4, !tbaa !7
  %4770 = sitofp i32 %4769 to double
  %4771 = extractelement <2 x double> %4690, i32 1
  %4772 = fmul double %4771, %4691
  %4773 = fmul double %33, %4771
  %4774 = fsub double 1.000000e+00, %4773
  %4775 = fmul double %4774, %4772
  %4776 = fsub double %4775, %4650
  %4777 = fmul double %4776, %4770
  %4778 = fadd double %4768, %4777
  %4779 = sitofp i32 %4750 to double
  %4780 = fsub double 1.000000e+00, %4763
  %4781 = fmul double %4780, %4762
  %4782 = fadd double %4650, %4781
  %4783 = fmul double %4782, %4779
  %4784 = fadd double %4778, %4783
  %4785 = fadd double %4773, 1.000000e+00
  %4786 = fmul double %4785, %4772
  %4787 = fadd double %4786, %4650
  %4788 = fdiv double %4784, %4787
  %4789 = fptosi double %4788 to i32
  store i32 %4789, i32* %_to374.01505, align 4, !tbaa !7
  %4790 = getelementptr inbounds double* %_radius372.01503, i64 1
  %4791 = getelementptr inbounds double* %_xyz373.01504, i64 1
  %4792 = getelementptr inbounds i32* %_to374.01505, i64 1
  %4793 = getelementptr inbounds i32* %_from375.01506, i64 1
  %4794 = add nuw nsw i32 %_i365.01502, 1
  %4795 = load i32* %4641, align 4, !tbaa !7
  %4796 = icmp slt i32 %4794, %4795
  br i1 %4796, label %4684, label %._crit_edge1510

._crit_edge1510:                                  ; preds = %4749
  %.pre2608 = load i32* %4645, align 4, !tbaa !7
  br label %4797

; <label>:4797                                    ; preds = %._crit_edge1510, %4667
  %4798 = phi i32 [ %.pre2608, %._crit_edge1510 ], [ %4669, %4667 ]
  %4799 = phi i32 [ %4795, %._crit_edge1510 ], [ %4668, %4667 ]
  %dtvvar0H.134.lcssa = phi double [ %dtvvar0H.135, %._crit_edge1510 ], [ %dtvvar0H.1331513, %4667 ]
  %4800 = add nsw i32 %_j366.01512, 1
  %4801 = icmp slt i32 %4800, %4798
  br i1 %4801, label %4667, label %._crit_edge1516

._crit_edge1516:                                  ; preds = %4797
  %.pre2349 = load i32* %4642, align 4, !tbaa !7
  br label %4802

; <label>:4802                                    ; preds = %._crit_edge1516, %4651
  %4803 = phi i32 [ %4798, %._crit_edge1516 ], [ %4652, %4651 ]
  %4804 = phi i32 [ %.pre2349, %._crit_edge1516 ], [ %4653, %4651 ]
  %dtvvar0H.133.lcssa = phi double [ %dtvvar0H.134.lcssa, %._crit_edge1516 ], [ %dtvvar0H.1321520, %4651 ]
  %4805 = add nuw nsw i32 %_k367.01518, 1
  %4806 = icmp slt i32 %4805, %4804
  br i1 %4806, label %4651, label %.loopexit908

.loopexit908:                                     ; preds = %4802, %.preheader907, %4638
  %dtvvar0H.136 = phi double [ %dtvvar0H.131, %4638 ], [ %dtvvar0H.131, %.preheader907 ], [ %dtvvar0H.133.lcssa, %4802 ]
  %4807 = bitcast i32* %100 to i64*
  %4808 = load i64* %4807, align 16
  %4809 = trunc i64 %4808 to i32
  %4810 = icmp eq i32 %4809, 0
  %4811 = lshr i64 %4808, 32
  %4812 = trunc i64 %4811 to i32
  br i1 %4810, label %4968, label %4813

; <label>:4813                                    ; preds = %.loopexit908
  %4814 = load i32* %102, align 4, !tbaa !7
  %4815 = icmp sgt i32 %4814, 0
  br i1 %4815, label %.lr.ph1542, label %.loopexit906

.lr.ph1542:                                       ; preds = %4813
  %4816 = load i32** %93, align 8, !tbaa !17
  %4817 = getelementptr inbounds i32* %4816, i64 1
  %4818 = load double** %86, align 8, !tbaa !13
  %4819 = load double** %104, align 16, !tbaa !13
  %4820 = load double* %108, align 16, !tbaa !15
  %4821 = fmul double %107, %4820
  %4822 = load double* %109, align 16, !tbaa !15
  br label %4824

.loopexit849:                                     ; preds = %.loopexit814, %4824
  %dtvvar0H.138.lcssa = phi double [ %dtvvar0H.1371539, %4824 ], [ %dtvvar0H.139.lcssa, %.loopexit814 ]
  %4823 = icmp sgt i32 %_k381.01540.in, 1
  br i1 %4823, label %4824, label %.loopexit906

; <label>:4824                                    ; preds = %.lr.ph1542, %.loopexit849
  %_k381.01540.in = phi i32 [ %4814, %.lr.ph1542 ], [ %_k381.01540, %.loopexit849 ]
  %dtvvar0H.1371539 = phi double [ %dtvvar0H.136, %.lr.ph1542 ], [ %dtvvar0H.138.lcssa, %.loopexit849 ]
  %_k381.01540 = add nsw i32 %_k381.01540.in, -1
  %4825 = load i32* %4817, align 4, !tbaa !7
  %4826 = icmp sgt i32 %4825, 0
  br i1 %4826, label %.lr.ph1536, label %.loopexit849

.lr.ph1536:                                       ; preds = %4824
  %4827 = load i8**** %38, align 8, !tbaa !12
  %4828 = getelementptr inbounds i8*** %4827, i64 %indvars.iv2111
  %4829 = bitcast i8*** %4828 to i32***
  %4830 = load i32*** %4829, align 8, !tbaa !13
  %4831 = load i32** %4830, align 8, !tbaa !13
  %4832 = getelementptr inbounds i8*** %4827, i64 %indvars.iv2113
  %4833 = load i8*** %4832, align 8, !tbaa !13
  %4834 = getelementptr inbounds i8** %4833, i64 %.
  %4835 = bitcast i8** %4834 to i32**
  %4836 = load i32** %4835, align 8, !tbaa !13
  br label %4838

.loopexit814:                                     ; preds = %4921, %4838
  %dtvvar0H.139.lcssa = phi double [ %dtvvar0H.1381533, %4838 ], [ %dtvvar0H.140, %4921 ]
  %4837 = icmp sgt i32 %_j380.01534.in, 1
  br i1 %4837, label %.loopexit814._crit_edge, label %.loopexit849

.loopexit814._crit_edge:                          ; preds = %.loopexit814
  %.pre2593 = load i32* %4817, align 4, !tbaa !7
  br label %4838

; <label>:4838                                    ; preds = %.loopexit814._crit_edge, %.lr.ph1536
  %4839 = phi i32 [ %4825, %.lr.ph1536 ], [ %.pre2593, %.loopexit814._crit_edge ]
  %_j380.01534.in = phi i32 [ %4825, %.lr.ph1536 ], [ %_j380.01534, %.loopexit814._crit_edge ]
  %dtvvar0H.1381533 = phi double [ %dtvvar0H.1371539, %.lr.ph1536 ], [ %dtvvar0H.139.lcssa, %.loopexit814._crit_edge ]
  %_j380.01534 = add nsw i32 %_j380.01534.in, -1
  %4840 = load i32* %103, align 4, !tbaa !7
  %4841 = load i32* %4816, align 4, !tbaa !7
  %4842 = add nsw i32 %4841, -1
  %4843 = mul nsw i32 %4839, %_k381.01540
  %4844 = add nsw i32 %4843, %_j380.01534
  %4845 = mul nsw i32 %4844, %4841
  %4846 = add nsw i32 %4845, %4842
  %4847 = sext i32 %4846 to i64
  %4848 = icmp sgt i32 %4841, 0
  br i1 %4848, label %.lr.ph1530, label %.loopexit814

.lr.ph1530:                                       ; preds = %4838
  %4849 = getelementptr inbounds i32* %4836, i64 %4847
  %4850 = getelementptr inbounds i32* %4831, i64 %4847
  %4851 = getelementptr inbounds double* %4819, i64 %4847
  %4852 = getelementptr inbounds double* %4818, i64 %4847
  %4853 = shl nsw i32 %4840, 1
  %4854 = sext i32 %4840 to i64
  %4855 = sext i32 %4853 to i64
  br label %4856

; <label>:4856                                    ; preds = %.lr.ph1530, %4921
  %dtvvar0H.1391528 = phi double [ %dtvvar0H.1381533, %.lr.ph1530 ], [ %dtvvar0H.140, %4921 ]
  %_from389.01527 = phi i32* [ %4849, %.lr.ph1530 ], [ %4965, %4921 ]
  %_to388.01526 = phi i32* [ %4850, %.lr.ph1530 ], [ %4964, %4921 ]
  %_xyz387.01525 = phi double* [ %4851, %.lr.ph1530 ], [ %4963, %4921 ]
  %_radius386.01524 = phi double* [ %4852, %.lr.ph1530 ], [ %4962, %4921 ]
  %_i379.01523 = phi i32 [ %4842, %.lr.ph1530 ], [ %4966, %4921 ]
  %4857 = load double* %_radius386.01524, align 8, !tbaa !15
  %4858 = getelementptr inbounds double* %_radius386.01524, i64 %4854
  %4859 = load double* %4858, align 8, !tbaa !15
  %4860 = insertelement <2 x double> undef, double %4859, i32 0
  %4861 = insertelement <2 x double> %4860, double %4857, i32 1
  %4862 = fdiv <2 x double> <double 1.000000e+00, double 1.000000e+00>, %4861
  %4863 = load double* %_xyz387.01525, align 8, !tbaa !15
  br i1 %105, label %4865, label %._crit_edge2350

._crit_edge2350:                                  ; preds = %4856
  %.phi.trans.insert2352 = getelementptr inbounds double* %_xyz387.01525, i64 %4854
  %.pre2353 = load double* %.phi.trans.insert2352, align 8, !tbaa !15
  %.phi.trans.insert2354 = getelementptr inbounds i32* %_to388.01526, i64 %4854
  %.pre2355 = load i32* %.phi.trans.insert2354, align 4, !tbaa !7
  %.phi.trans.insert2356 = getelementptr inbounds i32* %_from389.01527, i64 %4854
  %.pre2357 = load i32* %.phi.trans.insert2356, align 4, !tbaa !7
  %4864 = fmul <2 x double> %4862, %4862
  br label %4921

; <label>:4865                                    ; preds = %4856
  %4866 = fmul <2 x double> %4862, %4862
  %4867 = extractelement <2 x double> %4866, i32 1
  %4868 = fmul double %4867, %4863
  %4869 = getelementptr inbounds double* %_xyz387.01525, i64 %4854
  %4870 = load double* %4869, align 8, !tbaa !15
  %4871 = extractelement <2 x double> %4866, i32 0
  %4872 = fmul double %4871, %4870
  %4873 = fadd double %4868, %4872
  %4874 = fmul double %4821, %4873
  %4875 = fadd double %4874, 1.000000e+00
  %4876 = fsub double 1.000000e+00, %4874
  %4877 = fdiv double %4875, %4876
  %4878 = getelementptr inbounds i32* %_to388.01526, i64 %4854
  %4879 = load i32* %4878, align 4, !tbaa !7
  %4880 = getelementptr inbounds i32* %_to388.01526, i64 %4855
  %4881 = load i32* %4880, align 4, !tbaa !7
  %4882 = add nsw i32 %4881, %4879
  %4883 = getelementptr inbounds i32* %_from389.01527, i64 %4854
  %4884 = load i32* %4883, align 4, !tbaa !7
  %4885 = add nsw i32 %4882, %4884
  %4886 = getelementptr inbounds i32* %_from389.01527, i64 %4855
  %4887 = load i32* %4886, align 4, !tbaa !7
  %4888 = add nsw i32 %4885, %4887
  %4889 = sitofp i32 %4888 to double
  %4890 = fmul double %4889, 2.500000e-01
  %4891 = fsub double %4890, %var0
  %4892 = fmul double %32, %4891
  %4893 = sub nsw i32 %4879, %4884
  %4894 = sitofp i32 %4893 to double
  %4895 = fmul double %4859, %4894
  %4896 = getelementptr inbounds double* %_radius386.01524, i64 %4855
  %4897 = load double* %4896, align 8, !tbaa !15
  %4898 = sub nsw i32 %4881, %4887
  %4899 = sitofp i32 %4898 to double
  %4900 = fmul double %4897, %4899
  %4901 = fadd double %4895, %4900
  %4902 = fmul double %4901, 5.000000e-01
  %4903 = fadd double %4892, %4902
  %4904 = sub i32 %4881, %4879
  %4905 = sub i32 %4904, %4884
  %4906 = add i32 %4905, %4887
  %4907 = sitofp i32 %4906 to double
  %4908 = fmul double %4907, 2.500000e-01
  %4909 = fmul double %4822, %4908
  %4910 = fmul double %4859, %4859
  %4911 = fdiv double %4910, %4870
  %4912 = fmul double %4897, %4897
  %4913 = getelementptr inbounds double* %_xyz387.01525, i64 %4855
  %4914 = load double* %4913, align 8, !tbaa !15
  %4915 = fdiv double %4912, %4914
  %4916 = fadd double %4911, %4915
  %4917 = fmul double %4909, %4916
  %4918 = fadd double %4903, %4917
  %4919 = fmul double %4877, %4918
  %4920 = fadd double %34, %4919
  br label %4921

; <label>:4921                                    ; preds = %._crit_edge2350, %4865
  %4922 = phi i32 [ %.pre2357, %._crit_edge2350 ], [ %4884, %4865 ]
  %4923 = phi i32 [ %.pre2355, %._crit_edge2350 ], [ %4879, %4865 ]
  %4924 = phi double [ %.pre2353, %._crit_edge2350 ], [ %4870, %4865 ]
  %dtvvar0H.140 = phi double [ %dtvvar0H.1391528, %._crit_edge2350 ], [ %4920, %4865 ]
  %4925 = phi <2 x double> [ %4864, %._crit_edge2350 ], [ %4866, %4865 ]
  %4926 = extractelement <2 x double> %4925, i32 1
  %4927 = fmul double %4926, %4863
  %4928 = extractelement <2 x double> %4925, i32 0
  %4929 = fmul double %4928, %4924
  %4930 = fadd double %4927, %4929
  %4931 = fmul double %dtvvar0H.140, %4930
  %4932 = sitofp i32 %4923 to double
  %4933 = extractelement <2 x double> %4862, i32 0
  %4934 = fmul double %4933, %4924
  %4935 = fmul double %33, %4933
  %4936 = fadd double %4935, 1.000000e+00
  %4937 = fmul double %4936, %4934
  %4938 = fadd double %4822, %4937
  %4939 = fmul double %4932, %4938
  %4940 = fsub double %4931, %4939
  %4941 = load i32* %_from389.01527, align 4, !tbaa !7
  %4942 = sitofp i32 %4941 to double
  %4943 = extractelement <2 x double> %4862, i32 1
  %4944 = fmul double %4943, %4863
  %4945 = fmul double %33, %4943
  %4946 = fsub double 1.000000e+00, %4945
  %4947 = fmul double %4946, %4944
  %4948 = fadd double %4947, %4822
  %4949 = fmul double %4948, %4942
  %4950 = fadd double %4940, %4949
  %4951 = sitofp i32 %4922 to double
  %4952 = fsub double 1.000000e+00, %4935
  %4953 = fmul double %4952, %4934
  %4954 = fsub double %4822, %4953
  %4955 = fmul double %4954, %4951
  %4956 = fsub double %4950, %4955
  %4957 = fadd double %4945, 1.000000e+00
  %4958 = fmul double %4957, %4944
  %4959 = fsub double %4958, %4822
  %4960 = fdiv double %4956, %4959
  %4961 = fptosi double %4960 to i32
  store i32 %4961, i32* %_to388.01526, align 4, !tbaa !7
  %4962 = getelementptr inbounds double* %_radius386.01524, i64 -1
  %4963 = getelementptr inbounds double* %_xyz387.01525, i64 -1
  %4964 = getelementptr inbounds i32* %_to388.01526, i64 -1
  %4965 = getelementptr inbounds i32* %_from389.01527, i64 -1
  %4966 = add nsw i32 %_i379.01523, -1
  %4967 = icmp sgt i32 %_i379.01523, 0
  br i1 %4967, label %4856, label %.loopexit814

.loopexit906:                                     ; preds = %.loopexit849, %4813
  %dtvvar0H.137.lcssa = phi double [ %dtvvar0H.136, %4813 ], [ %dtvvar0H.138.lcssa, %.loopexit849 ]
  %.pre2358 = load i32* %101, align 4, !tbaa !7
  br label %4968

; <label>:4968                                    ; preds = %.loopexit906, %.loopexit908
  %4969 = phi i32 [ %4812, %.loopexit908 ], [ %.pre2358, %.loopexit906 ]
  %dtvvar0H.141 = phi double [ %dtvvar0H.136, %.loopexit908 ], [ %dtvvar0H.137.lcssa, %.loopexit906 ]
  %4970 = icmp eq i32 %4969, 0
  br i1 %4970, label %.loopexit873, label %4971

; <label>:4971                                    ; preds = %4968
  %4972 = load i32* %102, align 4, !tbaa !7
  %4973 = icmp sgt i32 %4972, 0
  br i1 %4973, label %.preheader848.lr.ph, label %.loopexit873

.preheader848.lr.ph:                              ; preds = %4971
  %4974 = load i32** %93, align 8, !tbaa !17
  %4975 = getelementptr inbounds i32* %4974, i64 2
  %4976 = load i32* %4975, align 4, !tbaa !7
  %4977 = sub nsw i32 %4976, %4972
  %4978 = getelementptr inbounds i32* %4974, i64 1
  %4979 = load double** %86, align 8, !tbaa !13
  %4980 = load double** %104, align 16, !tbaa !13
  %4981 = load double* %108, align 16, !tbaa !15
  %4982 = fmul double %107, %4981
  %4983 = load double* %109, align 16, !tbaa !15
  %.pre2615 = load i32* %4978, align 4, !tbaa !7
  br label %.preheader848

.preheader848:                                    ; preds = %.preheader848.lr.ph, %5132
  %4984 = phi i32 [ %.pre2615, %.preheader848.lr.ph ], [ %5133, %5132 ]
  %4985 = phi i32 [ %4976, %.preheader848.lr.ph ], [ %5134, %5132 ]
  %dtvvar0H.1421561 = phi double [ %dtvvar0H.141, %.preheader848.lr.ph ], [ %dtvvar0H.143.lcssa, %5132 ]
  %_k395.01559 = phi i32 [ %4977, %.preheader848.lr.ph ], [ %5135, %5132 ]
  %4986 = icmp sgt i32 %4984, 0
  br i1 %4986, label %.lr.ph1556, label %5132

.lr.ph1556:                                       ; preds = %.preheader848
  %4987 = load i8**** %38, align 8, !tbaa !12
  %4988 = getelementptr inbounds i8*** %4987, i64 %indvars.iv2111
  %4989 = bitcast i8*** %4988 to i32***
  %4990 = load i32*** %4989, align 8, !tbaa !13
  %4991 = load i32** %4990, align 8, !tbaa !13
  %4992 = getelementptr inbounds i8*** %4987, i64 %indvars.iv2113
  %4993 = load i8*** %4992, align 8, !tbaa !13
  %4994 = getelementptr inbounds i8** %4993, i64 %.
  %4995 = bitcast i8** %4994 to i32**
  %4996 = load i32** %4995, align 8, !tbaa !13
  %.pre2594 = load i32* %4974, align 4, !tbaa !7
  br label %4997

; <label>:4997                                    ; preds = %.lr.ph1556, %5127
  %4998 = phi i32 [ %.pre2594, %.lr.ph1556 ], [ %5129, %5127 ]
  %4999 = phi i32 [ %4984, %.lr.ph1556 ], [ %5128, %5127 ]
  %dtvvar0H.1431555 = phi double [ %dtvvar0H.1421561, %.lr.ph1556 ], [ %dtvvar0H.144.lcssa, %5127 ]
  %_j394.01554 = phi i32 [ 0, %.lr.ph1556 ], [ %5130, %5127 ]
  %5000 = load i32* %103, align 4, !tbaa !7
  %5001 = mul nsw i32 %4999, %_k395.01559
  %5002 = add nsw i32 %5001, %_j394.01554
  %5003 = mul nsw i32 %4998, %5002
  %5004 = sext i32 %5003 to i64
  %5005 = icmp sgt i32 %4998, 0
  br i1 %5005, label %.lr.ph1551, label %5127

.lr.ph1551:                                       ; preds = %4997
  %5006 = getelementptr inbounds i32* %4996, i64 %5004
  %5007 = getelementptr inbounds i32* %4991, i64 %5004
  %5008 = getelementptr inbounds double* %4980, i64 %5004
  %5009 = getelementptr inbounds double* %4979, i64 %5004
  %5010 = mul nsw i32 %5000, -2
  %5011 = sub nsw i32 0, %5000
  %5012 = sext i32 %5011 to i64
  %5013 = sext i32 %5010 to i64
  br label %5014

; <label>:5014                                    ; preds = %.lr.ph1551, %5079
  %dtvvar0H.1441549 = phi double [ %dtvvar0H.1431555, %.lr.ph1551 ], [ %dtvvar0H.145, %5079 ]
  %_from403.01548 = phi i32* [ %5006, %.lr.ph1551 ], [ %5123, %5079 ]
  %_to402.01547 = phi i32* [ %5007, %.lr.ph1551 ], [ %5122, %5079 ]
  %_xyz401.01546 = phi double* [ %5008, %.lr.ph1551 ], [ %5121, %5079 ]
  %_radius400.01545 = phi double* [ %5009, %.lr.ph1551 ], [ %5120, %5079 ]
  %_i393.01544 = phi i32 [ 0, %.lr.ph1551 ], [ %5124, %5079 ]
  %5015 = load double* %_radius400.01545, align 8, !tbaa !15
  %5016 = getelementptr inbounds double* %_radius400.01545, i64 %5012
  %5017 = load double* %5016, align 8, !tbaa !15
  %5018 = insertelement <2 x double> undef, double %5017, i32 0
  %5019 = insertelement <2 x double> %5018, double %5015, i32 1
  %5020 = fdiv <2 x double> <double 1.000000e+00, double 1.000000e+00>, %5019
  %5021 = load double* %_xyz401.01546, align 8, !tbaa !15
  br i1 %105, label %5023, label %._crit_edge2359

._crit_edge2359:                                  ; preds = %5014
  %.phi.trans.insert2361 = getelementptr inbounds double* %_xyz401.01546, i64 %5012
  %.pre2362 = load double* %.phi.trans.insert2361, align 8, !tbaa !15
  %.phi.trans.insert2363 = getelementptr inbounds i32* %_to402.01547, i64 %5012
  %.pre2364 = load i32* %.phi.trans.insert2363, align 4, !tbaa !7
  %.phi.trans.insert2365 = getelementptr inbounds i32* %_from403.01548, i64 %5012
  %.pre2366 = load i32* %.phi.trans.insert2365, align 4, !tbaa !7
  %5022 = fmul <2 x double> %5020, %5020
  br label %5079

; <label>:5023                                    ; preds = %5014
  %5024 = fmul <2 x double> %5020, %5020
  %5025 = extractelement <2 x double> %5024, i32 1
  %5026 = fmul double %5025, %5021
  %5027 = getelementptr inbounds double* %_xyz401.01546, i64 %5012
  %5028 = load double* %5027, align 8, !tbaa !15
  %5029 = extractelement <2 x double> %5024, i32 0
  %5030 = fmul double %5029, %5028
  %5031 = fadd double %5026, %5030
  %5032 = fmul double %4982, %5031
  %5033 = fsub double 1.000000e+00, %5032
  %5034 = fadd double %5032, 1.000000e+00
  %5035 = fdiv double %5033, %5034
  %5036 = getelementptr inbounds i32* %_to402.01547, i64 %5012
  %5037 = load i32* %5036, align 4, !tbaa !7
  %5038 = getelementptr inbounds i32* %_to402.01547, i64 %5013
  %5039 = load i32* %5038, align 4, !tbaa !7
  %5040 = add nsw i32 %5039, %5037
  %5041 = getelementptr inbounds i32* %_from403.01548, i64 %5012
  %5042 = load i32* %5041, align 4, !tbaa !7
  %5043 = add nsw i32 %5040, %5042
  %5044 = getelementptr inbounds i32* %_from403.01548, i64 %5013
  %5045 = load i32* %5044, align 4, !tbaa !7
  %5046 = add nsw i32 %5043, %5045
  %5047 = sitofp i32 %5046 to double
  %5048 = fmul double %5047, 2.500000e-01
  %5049 = fsub double %5048, %var0
  %5050 = fmul double %32, %5049
  %5051 = sub nsw i32 %5037, %5042
  %5052 = sitofp i32 %5051 to double
  %5053 = fmul double %5017, %5052
  %5054 = getelementptr inbounds double* %_radius400.01545, i64 %5013
  %5055 = load double* %5054, align 8, !tbaa !15
  %5056 = sub nsw i32 %5039, %5045
  %5057 = sitofp i32 %5056 to double
  %5058 = fmul double %5055, %5057
  %5059 = fadd double %5053, %5058
  %5060 = fmul double %5059, 5.000000e-01
  %5061 = fadd double %5050, %5060
  %5062 = sub i32 %5037, %5039
  %5063 = add nsw i32 %5062, %5042
  %5064 = sub i32 %5063, %5045
  %5065 = sitofp i32 %5064 to double
  %5066 = fmul double %5065, 2.500000e-01
  %5067 = fmul double %4983, %5066
  %5068 = fmul double %5017, %5017
  %5069 = fdiv double %5068, %5028
  %5070 = fmul double %5055, %5055
  %5071 = getelementptr inbounds double* %_xyz401.01546, i64 %5013
  %5072 = load double* %5071, align 8, !tbaa !15
  %5073 = fdiv double %5070, %5072
  %5074 = fadd double %5069, %5073
  %5075 = fmul double %5067, %5074
  %5076 = fadd double %5061, %5075
  %5077 = fmul double %5035, %5076
  %5078 = fadd double %34, %5077
  br label %5079

; <label>:5079                                    ; preds = %._crit_edge2359, %5023
  %5080 = phi i32 [ %.pre2366, %._crit_edge2359 ], [ %5042, %5023 ]
  %5081 = phi i32 [ %.pre2364, %._crit_edge2359 ], [ %5037, %5023 ]
  %5082 = phi double [ %.pre2362, %._crit_edge2359 ], [ %5028, %5023 ]
  %dtvvar0H.145 = phi double [ %dtvvar0H.1441549, %._crit_edge2359 ], [ %5078, %5023 ]
  %5083 = phi <2 x double> [ %5022, %._crit_edge2359 ], [ %5024, %5023 ]
  %5084 = extractelement <2 x double> %5083, i32 1
  %5085 = fmul double %5084, %5021
  %5086 = extractelement <2 x double> %5083, i32 0
  %5087 = fmul double %5086, %5082
  %5088 = fadd double %5085, %5087
  %5089 = fmul double %dtvvar0H.145, %5088
  %5090 = sitofp i32 %5081 to double
  %5091 = extractelement <2 x double> %5020, i32 0
  %5092 = fmul double %5091, %5082
  %5093 = fmul double %33, %5091
  %5094 = fadd double %5093, 1.000000e+00
  %5095 = fmul double %5094, %5092
  %5096 = fsub double %4983, %5095
  %5097 = fmul double %5090, %5096
  %5098 = fadd double %5089, %5097
  %5099 = load i32* %_from403.01548, align 4, !tbaa !7
  %5100 = sitofp i32 %5099 to double
  %5101 = extractelement <2 x double> %5020, i32 1
  %5102 = fmul double %5101, %5021
  %5103 = fmul double %33, %5101
  %5104 = fsub double 1.000000e+00, %5103
  %5105 = fmul double %5104, %5102
  %5106 = fsub double %5105, %4983
  %5107 = fmul double %5106, %5100
  %5108 = fadd double %5098, %5107
  %5109 = sitofp i32 %5080 to double
  %5110 = fsub double 1.000000e+00, %5093
  %5111 = fmul double %5110, %5092
  %5112 = fadd double %4983, %5111
  %5113 = fmul double %5112, %5109
  %5114 = fadd double %5108, %5113
  %5115 = fadd double %5103, 1.000000e+00
  %5116 = fmul double %5115, %5102
  %5117 = fadd double %5116, %4983
  %5118 = fdiv double %5114, %5117
  %5119 = fptosi double %5118 to i32
  store i32 %5119, i32* %_to402.01547, align 4, !tbaa !7
  %5120 = getelementptr inbounds double* %_radius400.01545, i64 1
  %5121 = getelementptr inbounds double* %_xyz401.01546, i64 1
  %5122 = getelementptr inbounds i32* %_to402.01547, i64 1
  %5123 = getelementptr inbounds i32* %_from403.01548, i64 1
  %5124 = add nuw nsw i32 %_i393.01544, 1
  %5125 = load i32* %4974, align 4, !tbaa !7
  %5126 = icmp slt i32 %5124, %5125
  br i1 %5126, label %5014, label %._crit_edge1552

._crit_edge1552:                                  ; preds = %5079
  %.pre2609 = load i32* %4978, align 4, !tbaa !7
  br label %5127

; <label>:5127                                    ; preds = %._crit_edge1552, %4997
  %5128 = phi i32 [ %.pre2609, %._crit_edge1552 ], [ %4999, %4997 ]
  %5129 = phi i32 [ %5125, %._crit_edge1552 ], [ %4998, %4997 ]
  %dtvvar0H.144.lcssa = phi double [ %dtvvar0H.145, %._crit_edge1552 ], [ %dtvvar0H.1431555, %4997 ]
  %5130 = add nuw nsw i32 %_j394.01554, 1
  %5131 = icmp slt i32 %5130, %5128
  br i1 %5131, label %4997, label %._crit_edge1557

._crit_edge1557:                                  ; preds = %5127
  %.pre2367 = load i32* %4975, align 4, !tbaa !7
  br label %5132

; <label>:5132                                    ; preds = %._crit_edge1557, %.preheader848
  %5133 = phi i32 [ %5128, %._crit_edge1557 ], [ %4984, %.preheader848 ]
  %5134 = phi i32 [ %.pre2367, %._crit_edge1557 ], [ %4985, %.preheader848 ]
  %dtvvar0H.143.lcssa = phi double [ %dtvvar0H.144.lcssa, %._crit_edge1557 ], [ %dtvvar0H.1421561, %.preheader848 ]
  %5135 = add nsw i32 %_k395.01559, 1
  %5136 = icmp slt i32 %5135, %5134
  br i1 %5136, label %.preheader848, label %.loopexit873

; <label>:5137                                    ; preds = %177
  br i1 %96, label %5140, label %5138

; <label>:5138                                    ; preds = %5137
  %5139 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 1529, i8* getelementptr inbounds ([88 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([58 x i8]* @.str12, i64 0, i64 0), i32 %7) #5
  br label %.loopexit947

; <label>:5140                                    ; preds = %5137
  %5141 = bitcast [6 x i32]* %doBC to i64*
  %5142 = load i64* %5141, align 16
  %5143 = trunc i64 %5142 to i32
  %5144 = icmp eq i32 %5143, 0
  br i1 %5144, label %.loopexit920, label %5145

; <label>:5145                                    ; preds = %5140
  %5146 = load i32** %93, align 8, !tbaa !17
  %5147 = getelementptr inbounds i32* %5146, i64 2
  %5148 = load i32* %5147, align 4, !tbaa !7
  %5149 = icmp sgt i32 %5148, 0
  br i1 %5149, label %.lr.ph1338, label %.loopexit920

.lr.ph1338:                                       ; preds = %5145
  %5150 = getelementptr inbounds i32* %5146, i64 1
  %5151 = load i32* %5150, align 4, !tbaa !7
  %5152 = icmp sgt i32 %5151, 0
  %5153 = load i32* %113, align 4, !tbaa !7
  %5154 = shl nsw i32 %5153, 1
  %5155 = load i32* %114, align 4, !tbaa !7
  %5156 = add nsw i32 %5155, -1
  %5157 = load double** %86, align 8, !tbaa !13
  %5158 = load double** %115, align 16, !tbaa !13
  %5159 = icmp sgt i32 %5155, 0
  %5160 = sext i32 %5153 to i64
  %5161 = load double* %108, align 16, !tbaa !15
  %5162 = fmul double %107, %5161
  %5163 = sext i32 %5154 to i64
  %5164 = load double* %109, align 16, !tbaa !15
  %5165 = sext i32 %5151 to i64
  %5166 = sext i32 %5156 to i64
  br label %5168

.loopexit857:                                     ; preds = %.loopexit819, %5168
  %dtvvar0H.147.lcssa = phi double [ %dtvvar0H.1461335, %5168 ], [ %dtvvar0H.148.lcssa, %.loopexit819 ]
  %5167 = icmp sgt i32 %_k409.01336.in, 1
  br i1 %5167, label %5168, label %.loopexit920

; <label>:5168                                    ; preds = %.lr.ph1338, %.loopexit857
  %_k409.01336.in = phi i32 [ %5148, %.lr.ph1338 ], [ %_k409.01336, %.loopexit857 ]
  %dtvvar0H.1461335 = phi double [ %dtvvar0H.02051, %.lr.ph1338 ], [ %dtvvar0H.147.lcssa, %.loopexit857 ]
  %_k409.01336 = add nsw i32 %_k409.01336.in, -1
  br i1 %5152, label %.lr.ph1332, label %.loopexit857

.lr.ph1332:                                       ; preds = %5168
  %5169 = load i32* %5146, align 4, !tbaa !7
  %5170 = mul nsw i32 %5151, %_k409.01336
  %5171 = load i8**** %38, align 8, !tbaa !12
  %5172 = getelementptr inbounds i8*** %5171, i64 %indvars.iv2111
  %5173 = bitcast i8*** %5172 to i64***
  %5174 = load i64*** %5173, align 8, !tbaa !13
  %5175 = load i64** %5174, align 8, !tbaa !13
  %5176 = getelementptr inbounds i8*** %5171, i64 %indvars.iv2113
  %5177 = load i8*** %5176, align 8, !tbaa !13
  %5178 = getelementptr inbounds i8** %5177, i64 %.
  %5179 = bitcast i8** %5178 to i64**
  %5180 = load i64** %5179, align 8, !tbaa !13
  %5181 = sext i32 %5170 to i64
  %5182 = sext i32 %5169 to i64
  br label %5184

.loopexit819:                                     ; preds = %5257, %5184
  %dtvvar0H.148.lcssa = phi double [ %dtvvar0H.1471329, %5184 ], [ %dtvvar0H.149, %5257 ]
  %5183 = icmp sgt i64 %indvars.iv2093, 1
  br i1 %5183, label %5184, label %.loopexit857

; <label>:5184                                    ; preds = %.lr.ph1332, %.loopexit819
  %indvars.iv2093 = phi i64 [ %5165, %.lr.ph1332 ], [ %indvars.iv.next2094, %.loopexit819 ]
  %dtvvar0H.1471329 = phi double [ %dtvvar0H.1461335, %.lr.ph1332 ], [ %dtvvar0H.148.lcssa, %.loopexit819 ]
  %indvars.iv.next2094 = add nsw i64 %indvars.iv2093, -1
  %5185 = add nsw i64 %5181, %indvars.iv.next2094
  %5186 = mul nsw i64 %5185, %5182
  %5187 = add nsw i64 %5186, %5166
  br i1 %5159, label %.lr.ph1326, label %.loopexit819

.lr.ph1326:                                       ; preds = %5184
  %5188 = getelementptr inbounds i64* %5180, i64 %5187
  %5189 = getelementptr inbounds i64* %5175, i64 %5187
  %5190 = getelementptr inbounds double* %5158, i64 %5187
  %5191 = getelementptr inbounds double* %5157, i64 %5187
  br label %5192

; <label>:5192                                    ; preds = %.lr.ph1326, %5257
  %dtvvar0H.1481324 = phi double [ %dtvvar0H.1471329, %.lr.ph1326 ], [ %dtvvar0H.149, %5257 ]
  %_from417.01323 = phi i64* [ %5188, %.lr.ph1326 ], [ %5301, %5257 ]
  %_to416.01322 = phi i64* [ %5189, %.lr.ph1326 ], [ %5300, %5257 ]
  %_xyz415.01321 = phi double* [ %5190, %.lr.ph1326 ], [ %5299, %5257 ]
  %_radius414.01320 = phi double* [ %5191, %.lr.ph1326 ], [ %5298, %5257 ]
  %_i407.01319 = phi i32 [ %5156, %.lr.ph1326 ], [ %5302, %5257 ]
  %5193 = load double* %_radius414.01320, align 8, !tbaa !15
  %5194 = getelementptr inbounds double* %_radius414.01320, i64 %5160
  %5195 = load double* %5194, align 8, !tbaa !15
  %5196 = insertelement <2 x double> undef, double %5195, i32 0
  %5197 = insertelement <2 x double> %5196, double %5193, i32 1
  %5198 = fdiv <2 x double> <double 1.000000e+00, double 1.000000e+00>, %5197
  %5199 = load double* %_xyz415.01321, align 8, !tbaa !15
  br i1 %105, label %5201, label %._crit_edge2266

._crit_edge2266:                                  ; preds = %5192
  %.phi.trans.insert2268 = getelementptr inbounds double* %_xyz415.01321, i64 %5160
  %.pre2269 = load double* %.phi.trans.insert2268, align 8, !tbaa !15
  %.phi.trans.insert2270 = getelementptr inbounds i64* %_to416.01322, i64 %5160
  %.pre2271 = load i64* %.phi.trans.insert2270, align 8, !tbaa !24
  %.phi.trans.insert2272 = getelementptr inbounds i64* %_from417.01323, i64 %5160
  %.pre2273 = load i64* %.phi.trans.insert2272, align 8, !tbaa !24
  %5200 = fmul <2 x double> %5198, %5198
  br label %5257

; <label>:5201                                    ; preds = %5192
  %5202 = fmul <2 x double> %5198, %5198
  %5203 = extractelement <2 x double> %5202, i32 1
  %5204 = fmul double %5203, %5199
  %5205 = getelementptr inbounds double* %_xyz415.01321, i64 %5160
  %5206 = load double* %5205, align 8, !tbaa !15
  %5207 = extractelement <2 x double> %5202, i32 0
  %5208 = fmul double %5207, %5206
  %5209 = fadd double %5204, %5208
  %5210 = fmul double %5162, %5209
  %5211 = fadd double %5210, 1.000000e+00
  %5212 = fsub double 1.000000e+00, %5210
  %5213 = fdiv double %5211, %5212
  %5214 = getelementptr inbounds i64* %_to416.01322, i64 %5160
  %5215 = load i64* %5214, align 8, !tbaa !24
  %5216 = getelementptr inbounds i64* %_to416.01322, i64 %5163
  %5217 = load i64* %5216, align 8, !tbaa !24
  %5218 = add nsw i64 %5217, %5215
  %5219 = getelementptr inbounds i64* %_from417.01323, i64 %5160
  %5220 = load i64* %5219, align 8, !tbaa !24
  %5221 = add nsw i64 %5218, %5220
  %5222 = getelementptr inbounds i64* %_from417.01323, i64 %5163
  %5223 = load i64* %5222, align 8, !tbaa !24
  %5224 = add nsw i64 %5221, %5223
  %5225 = sitofp i64 %5224 to double
  %5226 = fmul double %5225, 2.500000e-01
  %5227 = fsub double %5226, %var0
  %5228 = fmul double %32, %5227
  %5229 = sub nsw i64 %5215, %5220
  %5230 = sitofp i64 %5229 to double
  %5231 = fmul double %5195, %5230
  %5232 = getelementptr inbounds double* %_radius414.01320, i64 %5163
  %5233 = load double* %5232, align 8, !tbaa !15
  %5234 = sub nsw i64 %5217, %5223
  %5235 = sitofp i64 %5234 to double
  %5236 = fmul double %5233, %5235
  %5237 = fadd double %5231, %5236
  %5238 = fmul double %5237, 5.000000e-01
  %5239 = fadd double %5228, %5238
  %5240 = sub i64 %5217, %5215
  %5241 = sub i64 %5240, %5220
  %5242 = add i64 %5241, %5223
  %5243 = sitofp i64 %5242 to double
  %5244 = fmul double %5243, 2.500000e-01
  %5245 = fmul double %5164, %5244
  %5246 = fmul double %5195, %5195
  %5247 = fdiv double %5246, %5206
  %5248 = fmul double %5233, %5233
  %5249 = getelementptr inbounds double* %_xyz415.01321, i64 %5163
  %5250 = load double* %5249, align 8, !tbaa !15
  %5251 = fdiv double %5248, %5250
  %5252 = fadd double %5247, %5251
  %5253 = fmul double %5245, %5252
  %5254 = fadd double %5239, %5253
  %5255 = fmul double %5213, %5254
  %5256 = fadd double %34, %5255
  br label %5257

; <label>:5257                                    ; preds = %._crit_edge2266, %5201
  %5258 = phi i64 [ %.pre2273, %._crit_edge2266 ], [ %5220, %5201 ]
  %5259 = phi i64 [ %.pre2271, %._crit_edge2266 ], [ %5215, %5201 ]
  %5260 = phi double [ %.pre2269, %._crit_edge2266 ], [ %5206, %5201 ]
  %dtvvar0H.149 = phi double [ %dtvvar0H.1481324, %._crit_edge2266 ], [ %5256, %5201 ]
  %5261 = phi <2 x double> [ %5200, %._crit_edge2266 ], [ %5202, %5201 ]
  %5262 = extractelement <2 x double> %5261, i32 1
  %5263 = fmul double %5262, %5199
  %5264 = extractelement <2 x double> %5261, i32 0
  %5265 = fmul double %5264, %5260
  %5266 = fadd double %5263, %5265
  %5267 = fmul double %dtvvar0H.149, %5266
  %5268 = sitofp i64 %5259 to double
  %5269 = extractelement <2 x double> %5198, i32 0
  %5270 = fmul double %5269, %5260
  %5271 = fmul double %33, %5269
  %5272 = fadd double %5271, 1.000000e+00
  %5273 = fmul double %5272, %5270
  %5274 = fadd double %5164, %5273
  %5275 = fmul double %5268, %5274
  %5276 = fsub double %5267, %5275
  %5277 = load i64* %_from417.01323, align 8, !tbaa !24
  %5278 = sitofp i64 %5277 to double
  %5279 = extractelement <2 x double> %5198, i32 1
  %5280 = fmul double %5279, %5199
  %5281 = fmul double %33, %5279
  %5282 = fsub double 1.000000e+00, %5281
  %5283 = fmul double %5282, %5280
  %5284 = fadd double %5283, %5164
  %5285 = fmul double %5284, %5278
  %5286 = fadd double %5276, %5285
  %5287 = sitofp i64 %5258 to double
  %5288 = fsub double 1.000000e+00, %5271
  %5289 = fmul double %5288, %5270
  %5290 = fsub double %5164, %5289
  %5291 = fmul double %5290, %5287
  %5292 = fsub double %5286, %5291
  %5293 = fadd double %5281, 1.000000e+00
  %5294 = fmul double %5293, %5280
  %5295 = fsub double %5294, %5164
  %5296 = fdiv double %5292, %5295
  %5297 = fptosi double %5296 to i64
  store i64 %5297, i64* %_to416.01322, align 8, !tbaa !24
  %5298 = getelementptr inbounds double* %_radius414.01320, i64 -1
  %5299 = getelementptr inbounds double* %_xyz415.01321, i64 -1
  %5300 = getelementptr inbounds i64* %_to416.01322, i64 -1
  %5301 = getelementptr inbounds i64* %_from417.01323, i64 -1
  %5302 = add nsw i32 %_i407.01319, -1
  %5303 = icmp sgt i32 %_i407.01319, 0
  br i1 %5303, label %5192, label %.loopexit819

.loopexit920:                                     ; preds = %.loopexit857, %5145, %5140
  %dtvvar0H.150 = phi double [ %dtvvar0H.02051, %5140 ], [ %dtvvar0H.02051, %5145 ], [ %dtvvar0H.147.lcssa, %.loopexit857 ]
  %5304 = icmp ult i64 %5142, 4294967296
  br i1 %5304, label %.loopexit919, label %.preheader918

.preheader918:                                    ; preds = %.loopexit920
  %5305 = load i32** %93, align 8, !tbaa !17
  %5306 = getelementptr inbounds i32* %5305, i64 2
  %5307 = load i32* %5306, align 4, !tbaa !7
  %5308 = icmp sgt i32 %5307, 0
  br i1 %5308, label %.preheader856.lr.ph, label %.loopexit919

.preheader856.lr.ph:                              ; preds = %.preheader918
  %5309 = getelementptr inbounds i32* %5305, i64 1
  %5310 = load i32* %5309, align 4, !tbaa !7
  %5311 = icmp sgt i32 %5310, 0
  %5312 = load i32* %113, align 4, !tbaa !7
  %5313 = sub nsw i32 0, %5312
  %5314 = mul nsw i32 %5312, -2
  %5315 = load i32* %114, align 4, !tbaa !7
  %5316 = load double** %86, align 8, !tbaa !13
  %5317 = load double** %115, align 16, !tbaa !13
  %5318 = sext i32 %5313 to i64
  %5319 = load double* %108, align 16, !tbaa !15
  %5320 = fmul double %107, %5319
  %5321 = sext i32 %5314 to i64
  %5322 = load double* %109, align 16, !tbaa !15
  br label %.preheader856

.preheader856:                                    ; preds = %.preheader856.lr.ph, %._crit_edge1353
  %dtvvar0H.1511357 = phi double [ %dtvvar0H.150, %.preheader856.lr.ph ], [ %dtvvar0H.152.lcssa, %._crit_edge1353 ]
  %_k423.01355 = phi i32 [ 0, %.preheader856.lr.ph ], [ %5460, %._crit_edge1353 ]
  br i1 %5311, label %.lr.ph1352, label %._crit_edge1353

.lr.ph1352:                                       ; preds = %.preheader856
  %5323 = load i8**** %38, align 8, !tbaa !12
  %5324 = getelementptr inbounds i8*** %5323, i64 %indvars.iv2111
  %5325 = bitcast i8*** %5324 to i64***
  %5326 = load i64*** %5325, align 8, !tbaa !13
  %5327 = load i64** %5326, align 8, !tbaa !13
  %5328 = getelementptr inbounds i8*** %5323, i64 %indvars.iv2113
  %5329 = load i8*** %5328, align 8, !tbaa !13
  %5330 = getelementptr inbounds i8** %5329, i64 %.
  %5331 = bitcast i8** %5330 to i64**
  %5332 = load i64** %5331, align 8, !tbaa !13
  %5333 = load i32* %5305, align 4, !tbaa !7
  br label %5334

; <label>:5334                                    ; preds = %.lr.ph1352, %._crit_edge1348
  %dtvvar0H.1521351 = phi double [ %dtvvar0H.1511357, %.lr.ph1352 ], [ %dtvvar0H.153.lcssa, %._crit_edge1348 ]
  %_j422.01350 = phi i32 [ 0, %.lr.ph1352 ], [ %5458, %._crit_edge1348 ]
  %5335 = sub nsw i32 %5333, %5315
  %5336 = mul nsw i32 %5310, %_k423.01355
  %5337 = add nsw i32 %5336, %_j422.01350
  %5338 = mul nsw i32 %5333, %5337
  %5339 = add nsw i32 %5335, %5338
  %5340 = sext i32 %5339 to i64
  %5341 = icmp sgt i32 %5315, 0
  br i1 %5341, label %.lr.ph1347, label %._crit_edge1348

.lr.ph1347:                                       ; preds = %5334
  %5342 = getelementptr inbounds i64* %5332, i64 %5340
  %5343 = getelementptr inbounds i64* %5327, i64 %5340
  %5344 = getelementptr inbounds double* %5317, i64 %5340
  %5345 = getelementptr inbounds double* %5316, i64 %5340
  br label %5346

; <label>:5346                                    ; preds = %.lr.ph1347, %5411
  %dtvvar0H.1531345 = phi double [ %dtvvar0H.1521351, %.lr.ph1347 ], [ %dtvvar0H.154, %5411 ]
  %_from431.01344 = phi i64* [ %5342, %.lr.ph1347 ], [ %5455, %5411 ]
  %_to430.01343 = phi i64* [ %5343, %.lr.ph1347 ], [ %5454, %5411 ]
  %_xyz429.01342 = phi double* [ %5344, %.lr.ph1347 ], [ %5453, %5411 ]
  %_radius428.01341 = phi double* [ %5345, %.lr.ph1347 ], [ %5452, %5411 ]
  %_i421.01340 = phi i32 [ %5335, %.lr.ph1347 ], [ %5456, %5411 ]
  %5347 = load double* %_radius428.01341, align 8, !tbaa !15
  %5348 = getelementptr inbounds double* %_radius428.01341, i64 %5318
  %5349 = load double* %5348, align 8, !tbaa !15
  %5350 = insertelement <2 x double> undef, double %5349, i32 0
  %5351 = insertelement <2 x double> %5350, double %5347, i32 1
  %5352 = fdiv <2 x double> <double 1.000000e+00, double 1.000000e+00>, %5351
  %5353 = load double* %_xyz429.01342, align 8, !tbaa !15
  br i1 %105, label %5355, label %._crit_edge2274

._crit_edge2274:                                  ; preds = %5346
  %.phi.trans.insert2276 = getelementptr inbounds double* %_xyz429.01342, i64 %5318
  %.pre2277 = load double* %.phi.trans.insert2276, align 8, !tbaa !15
  %.phi.trans.insert2278 = getelementptr inbounds i64* %_to430.01343, i64 %5318
  %.pre2279 = load i64* %.phi.trans.insert2278, align 8, !tbaa !24
  %.phi.trans.insert2280 = getelementptr inbounds i64* %_from431.01344, i64 %5318
  %.pre2281 = load i64* %.phi.trans.insert2280, align 8, !tbaa !24
  %5354 = fmul <2 x double> %5352, %5352
  br label %5411

; <label>:5355                                    ; preds = %5346
  %5356 = fmul <2 x double> %5352, %5352
  %5357 = extractelement <2 x double> %5356, i32 1
  %5358 = fmul double %5357, %5353
  %5359 = getelementptr inbounds double* %_xyz429.01342, i64 %5318
  %5360 = load double* %5359, align 8, !tbaa !15
  %5361 = extractelement <2 x double> %5356, i32 0
  %5362 = fmul double %5361, %5360
  %5363 = fadd double %5358, %5362
  %5364 = fmul double %5320, %5363
  %5365 = fsub double 1.000000e+00, %5364
  %5366 = fadd double %5364, 1.000000e+00
  %5367 = fdiv double %5365, %5366
  %5368 = getelementptr inbounds i64* %_to430.01343, i64 %5318
  %5369 = load i64* %5368, align 8, !tbaa !24
  %5370 = getelementptr inbounds i64* %_to430.01343, i64 %5321
  %5371 = load i64* %5370, align 8, !tbaa !24
  %5372 = add nsw i64 %5371, %5369
  %5373 = getelementptr inbounds i64* %_from431.01344, i64 %5318
  %5374 = load i64* %5373, align 8, !tbaa !24
  %5375 = add nsw i64 %5372, %5374
  %5376 = getelementptr inbounds i64* %_from431.01344, i64 %5321
  %5377 = load i64* %5376, align 8, !tbaa !24
  %5378 = add nsw i64 %5375, %5377
  %5379 = sitofp i64 %5378 to double
  %5380 = fmul double %5379, 2.500000e-01
  %5381 = fsub double %5380, %var0
  %5382 = fmul double %32, %5381
  %5383 = sub nsw i64 %5369, %5374
  %5384 = sitofp i64 %5383 to double
  %5385 = fmul double %5349, %5384
  %5386 = getelementptr inbounds double* %_radius428.01341, i64 %5321
  %5387 = load double* %5386, align 8, !tbaa !15
  %5388 = sub nsw i64 %5371, %5377
  %5389 = sitofp i64 %5388 to double
  %5390 = fmul double %5387, %5389
  %5391 = fadd double %5385, %5390
  %5392 = fmul double %5391, 5.000000e-01
  %5393 = fadd double %5382, %5392
  %5394 = sub i64 %5369, %5371
  %5395 = add nsw i64 %5394, %5374
  %5396 = sub i64 %5395, %5377
  %5397 = sitofp i64 %5396 to double
  %5398 = fmul double %5397, 2.500000e-01
  %5399 = fmul double %5322, %5398
  %5400 = fmul double %5349, %5349
  %5401 = fdiv double %5400, %5360
  %5402 = fmul double %5387, %5387
  %5403 = getelementptr inbounds double* %_xyz429.01342, i64 %5321
  %5404 = load double* %5403, align 8, !tbaa !15
  %5405 = fdiv double %5402, %5404
  %5406 = fadd double %5401, %5405
  %5407 = fmul double %5399, %5406
  %5408 = fadd double %5393, %5407
  %5409 = fmul double %5367, %5408
  %5410 = fadd double %34, %5409
  br label %5411

; <label>:5411                                    ; preds = %._crit_edge2274, %5355
  %5412 = phi i64 [ %.pre2281, %._crit_edge2274 ], [ %5374, %5355 ]
  %5413 = phi i64 [ %.pre2279, %._crit_edge2274 ], [ %5369, %5355 ]
  %5414 = phi double [ %.pre2277, %._crit_edge2274 ], [ %5360, %5355 ]
  %dtvvar0H.154 = phi double [ %dtvvar0H.1531345, %._crit_edge2274 ], [ %5410, %5355 ]
  %5415 = phi <2 x double> [ %5354, %._crit_edge2274 ], [ %5356, %5355 ]
  %5416 = extractelement <2 x double> %5415, i32 1
  %5417 = fmul double %5416, %5353
  %5418 = extractelement <2 x double> %5415, i32 0
  %5419 = fmul double %5418, %5414
  %5420 = fadd double %5417, %5419
  %5421 = fmul double %dtvvar0H.154, %5420
  %5422 = sitofp i64 %5413 to double
  %5423 = extractelement <2 x double> %5352, i32 0
  %5424 = fmul double %5423, %5414
  %5425 = fmul double %33, %5423
  %5426 = fadd double %5425, 1.000000e+00
  %5427 = fmul double %5426, %5424
  %5428 = fsub double %5322, %5427
  %5429 = fmul double %5422, %5428
  %5430 = fadd double %5421, %5429
  %5431 = load i64* %_from431.01344, align 8, !tbaa !24
  %5432 = sitofp i64 %5431 to double
  %5433 = extractelement <2 x double> %5352, i32 1
  %5434 = fmul double %5433, %5353
  %5435 = fmul double %33, %5433
  %5436 = fsub double 1.000000e+00, %5435
  %5437 = fmul double %5436, %5434
  %5438 = fsub double %5437, %5322
  %5439 = fmul double %5438, %5432
  %5440 = fadd double %5430, %5439
  %5441 = sitofp i64 %5412 to double
  %5442 = fsub double 1.000000e+00, %5425
  %5443 = fmul double %5442, %5424
  %5444 = fadd double %5322, %5443
  %5445 = fmul double %5444, %5441
  %5446 = fadd double %5440, %5445
  %5447 = fadd double %5435, 1.000000e+00
  %5448 = fmul double %5447, %5434
  %5449 = fadd double %5448, %5322
  %5450 = fdiv double %5446, %5449
  %5451 = fptosi double %5450 to i64
  store i64 %5451, i64* %_to430.01343, align 8, !tbaa !24
  %5452 = getelementptr inbounds double* %_radius428.01341, i64 1
  %5453 = getelementptr inbounds double* %_xyz429.01342, i64 1
  %5454 = getelementptr inbounds i64* %_to430.01343, i64 1
  %5455 = getelementptr inbounds i64* %_from431.01344, i64 1
  %5456 = add nsw i32 %_i421.01340, 1
  %5457 = icmp slt i32 %5456, %5333
  br i1 %5457, label %5346, label %._crit_edge1348

._crit_edge1348:                                  ; preds = %5411, %5334
  %dtvvar0H.153.lcssa = phi double [ %dtvvar0H.1521351, %5334 ], [ %dtvvar0H.154, %5411 ]
  %5458 = add nuw nsw i32 %_j422.01350, 1
  %5459 = icmp slt i32 %5458, %5310
  br i1 %5459, label %5334, label %._crit_edge1353

._crit_edge1353:                                  ; preds = %._crit_edge1348, %.preheader856
  %dtvvar0H.152.lcssa = phi double [ %dtvvar0H.1511357, %.preheader856 ], [ %dtvvar0H.153.lcssa, %._crit_edge1348 ]
  %5460 = add nuw nsw i32 %_k423.01355, 1
  %5461 = icmp slt i32 %5460, %5307
  br i1 %5461, label %.preheader856, label %.loopexit919

.loopexit919:                                     ; preds = %._crit_edge1353, %.preheader918, %.loopexit920
  %dtvvar0H.155 = phi double [ %dtvvar0H.150, %.loopexit920 ], [ %dtvvar0H.150, %.preheader918 ], [ %dtvvar0H.152.lcssa, %._crit_edge1353 ]
  %5462 = bitcast i32* %98 to i64*
  %5463 = load i64* %5462, align 8
  %5464 = trunc i64 %5463 to i32
  %5465 = icmp eq i32 %5464, 0
  br i1 %5465, label %.loopexit917, label %5466

; <label>:5466                                    ; preds = %.loopexit919
  %5467 = load i32** %93, align 8, !tbaa !17
  %5468 = getelementptr inbounds i32* %5467, i64 2
  %5469 = load i32* %5468, align 4, !tbaa !7
  %5470 = icmp sgt i32 %5469, 0
  br i1 %5470, label %.lr.ph1378, label %.loopexit917

.lr.ph1378:                                       ; preds = %5466
  %5471 = load i32* %110, align 4, !tbaa !7
  %5472 = icmp sgt i32 %5471, 0
  %5473 = load i32* %111, align 4, !tbaa !7
  %5474 = shl nsw i32 %5473, 1
  %5475 = load double** %86, align 8, !tbaa !13
  %5476 = load double** %112, align 8, !tbaa !13
  %5477 = sext i32 %5473 to i64
  %5478 = load double* %108, align 16, !tbaa !15
  %5479 = fmul double %107, %5478
  %5480 = sext i32 %5474 to i64
  %5481 = load double* %109, align 16, !tbaa !15
  %5482 = sext i32 %5471 to i64
  br label %5484

.loopexit855:                                     ; preds = %.loopexit818, %5484
  %dtvvar0H.157.lcssa = phi double [ %dtvvar0H.1561375, %5484 ], [ %dtvvar0H.158.lcssa, %.loopexit818 ]
  %5483 = icmp sgt i32 %_k437.01376.in, 1
  br i1 %5483, label %5484, label %.loopexit917

; <label>:5484                                    ; preds = %.lr.ph1378, %.loopexit855
  %_k437.01376.in = phi i32 [ %5469, %.lr.ph1378 ], [ %_k437.01376, %.loopexit855 ]
  %dtvvar0H.1561375 = phi double [ %dtvvar0H.155, %.lr.ph1378 ], [ %dtvvar0H.157.lcssa, %.loopexit855 ]
  %_k437.01376 = add nsw i32 %_k437.01376.in, -1
  br i1 %5472, label %.lr.ph1372, label %.loopexit855

.lr.ph1372:                                       ; preds = %5484
  %5485 = load i32* %5467, align 4, !tbaa !7
  %5486 = add nsw i32 %5485, -1
  %5487 = getelementptr inbounds i32* %5467, i64 1
  %5488 = load i32* %5487, align 4, !tbaa !7
  %5489 = mul nsw i32 %5488, %_k437.01376
  %5490 = load i8**** %38, align 8, !tbaa !12
  %5491 = getelementptr inbounds i8*** %5490, i64 %indvars.iv2111
  %5492 = bitcast i8*** %5491 to i64***
  %5493 = load i64*** %5492, align 8, !tbaa !13
  %5494 = load i64** %5493, align 8, !tbaa !13
  %5495 = getelementptr inbounds i8*** %5490, i64 %indvars.iv2113
  %5496 = load i8*** %5495, align 8, !tbaa !13
  %5497 = getelementptr inbounds i8** %5496, i64 %.
  %5498 = bitcast i8** %5497 to i64**
  %5499 = load i64** %5498, align 8, !tbaa !13
  %5500 = icmp sgt i32 %5485, 0
  %5501 = sext i32 %5489 to i64
  %5502 = sext i32 %5485 to i64
  %5503 = sext i32 %5486 to i64
  br label %5505

.loopexit818:                                     ; preds = %5578, %5505
  %dtvvar0H.158.lcssa = phi double [ %dtvvar0H.1571369, %5505 ], [ %dtvvar0H.159, %5578 ]
  %5504 = icmp sgt i64 %indvars.iv2095, 1
  br i1 %5504, label %5505, label %.loopexit855

; <label>:5505                                    ; preds = %.lr.ph1372, %.loopexit818
  %indvars.iv2095 = phi i64 [ %5482, %.lr.ph1372 ], [ %indvars.iv.next2096, %.loopexit818 ]
  %dtvvar0H.1571369 = phi double [ %dtvvar0H.1561375, %.lr.ph1372 ], [ %dtvvar0H.158.lcssa, %.loopexit818 ]
  %indvars.iv.next2096 = add nsw i64 %indvars.iv2095, -1
  %5506 = add nsw i64 %5501, %indvars.iv.next2096
  %5507 = mul nsw i64 %5506, %5502
  %5508 = add nsw i64 %5507, %5503
  br i1 %5500, label %.lr.ph1366, label %.loopexit818

.lr.ph1366:                                       ; preds = %5505
  %5509 = getelementptr inbounds i64* %5499, i64 %5508
  %5510 = getelementptr inbounds i64* %5494, i64 %5508
  %5511 = getelementptr inbounds double* %5476, i64 %5508
  %5512 = getelementptr inbounds double* %5475, i64 %5508
  br label %5513

; <label>:5513                                    ; preds = %.lr.ph1366, %5578
  %dtvvar0H.1581364 = phi double [ %dtvvar0H.1571369, %.lr.ph1366 ], [ %dtvvar0H.159, %5578 ]
  %_from445.01363 = phi i64* [ %5509, %.lr.ph1366 ], [ %5622, %5578 ]
  %_to444.01362 = phi i64* [ %5510, %.lr.ph1366 ], [ %5621, %5578 ]
  %_xyz443.01361 = phi double* [ %5511, %.lr.ph1366 ], [ %5620, %5578 ]
  %_radius442.01360 = phi double* [ %5512, %.lr.ph1366 ], [ %5619, %5578 ]
  %_i435.01359 = phi i32 [ %5486, %.lr.ph1366 ], [ %5623, %5578 ]
  %5514 = load double* %_radius442.01360, align 8, !tbaa !15
  %5515 = getelementptr inbounds double* %_radius442.01360, i64 %5477
  %5516 = load double* %5515, align 8, !tbaa !15
  %5517 = insertelement <2 x double> undef, double %5516, i32 0
  %5518 = insertelement <2 x double> %5517, double %5514, i32 1
  %5519 = fdiv <2 x double> <double 1.000000e+00, double 1.000000e+00>, %5518
  %5520 = load double* %_xyz443.01361, align 8, !tbaa !15
  br i1 %105, label %5522, label %._crit_edge2282

._crit_edge2282:                                  ; preds = %5513
  %.phi.trans.insert2284 = getelementptr inbounds double* %_xyz443.01361, i64 %5477
  %.pre2285 = load double* %.phi.trans.insert2284, align 8, !tbaa !15
  %.phi.trans.insert2286 = getelementptr inbounds i64* %_to444.01362, i64 %5477
  %.pre2287 = load i64* %.phi.trans.insert2286, align 8, !tbaa !24
  %.phi.trans.insert2288 = getelementptr inbounds i64* %_from445.01363, i64 %5477
  %.pre2289 = load i64* %.phi.trans.insert2288, align 8, !tbaa !24
  %5521 = fmul <2 x double> %5519, %5519
  br label %5578

; <label>:5522                                    ; preds = %5513
  %5523 = fmul <2 x double> %5519, %5519
  %5524 = extractelement <2 x double> %5523, i32 1
  %5525 = fmul double %5524, %5520
  %5526 = getelementptr inbounds double* %_xyz443.01361, i64 %5477
  %5527 = load double* %5526, align 8, !tbaa !15
  %5528 = extractelement <2 x double> %5523, i32 0
  %5529 = fmul double %5528, %5527
  %5530 = fadd double %5525, %5529
  %5531 = fmul double %5479, %5530
  %5532 = fadd double %5531, 1.000000e+00
  %5533 = fsub double 1.000000e+00, %5531
  %5534 = fdiv double %5532, %5533
  %5535 = getelementptr inbounds i64* %_to444.01362, i64 %5477
  %5536 = load i64* %5535, align 8, !tbaa !24
  %5537 = getelementptr inbounds i64* %_to444.01362, i64 %5480
  %5538 = load i64* %5537, align 8, !tbaa !24
  %5539 = add nsw i64 %5538, %5536
  %5540 = getelementptr inbounds i64* %_from445.01363, i64 %5477
  %5541 = load i64* %5540, align 8, !tbaa !24
  %5542 = add nsw i64 %5539, %5541
  %5543 = getelementptr inbounds i64* %_from445.01363, i64 %5480
  %5544 = load i64* %5543, align 8, !tbaa !24
  %5545 = add nsw i64 %5542, %5544
  %5546 = sitofp i64 %5545 to double
  %5547 = fmul double %5546, 2.500000e-01
  %5548 = fsub double %5547, %var0
  %5549 = fmul double %32, %5548
  %5550 = sub nsw i64 %5536, %5541
  %5551 = sitofp i64 %5550 to double
  %5552 = fmul double %5516, %5551
  %5553 = getelementptr inbounds double* %_radius442.01360, i64 %5480
  %5554 = load double* %5553, align 8, !tbaa !15
  %5555 = sub nsw i64 %5538, %5544
  %5556 = sitofp i64 %5555 to double
  %5557 = fmul double %5554, %5556
  %5558 = fadd double %5552, %5557
  %5559 = fmul double %5558, 5.000000e-01
  %5560 = fadd double %5549, %5559
  %5561 = sub i64 %5538, %5536
  %5562 = sub i64 %5561, %5541
  %5563 = add i64 %5562, %5544
  %5564 = sitofp i64 %5563 to double
  %5565 = fmul double %5564, 2.500000e-01
  %5566 = fmul double %5481, %5565
  %5567 = fmul double %5516, %5516
  %5568 = fdiv double %5567, %5527
  %5569 = fmul double %5554, %5554
  %5570 = getelementptr inbounds double* %_xyz443.01361, i64 %5480
  %5571 = load double* %5570, align 8, !tbaa !15
  %5572 = fdiv double %5569, %5571
  %5573 = fadd double %5568, %5572
  %5574 = fmul double %5566, %5573
  %5575 = fadd double %5560, %5574
  %5576 = fmul double %5534, %5575
  %5577 = fadd double %34, %5576
  br label %5578

; <label>:5578                                    ; preds = %._crit_edge2282, %5522
  %5579 = phi i64 [ %.pre2289, %._crit_edge2282 ], [ %5541, %5522 ]
  %5580 = phi i64 [ %.pre2287, %._crit_edge2282 ], [ %5536, %5522 ]
  %5581 = phi double [ %.pre2285, %._crit_edge2282 ], [ %5527, %5522 ]
  %dtvvar0H.159 = phi double [ %dtvvar0H.1581364, %._crit_edge2282 ], [ %5577, %5522 ]
  %5582 = phi <2 x double> [ %5521, %._crit_edge2282 ], [ %5523, %5522 ]
  %5583 = extractelement <2 x double> %5582, i32 1
  %5584 = fmul double %5583, %5520
  %5585 = extractelement <2 x double> %5582, i32 0
  %5586 = fmul double %5585, %5581
  %5587 = fadd double %5584, %5586
  %5588 = fmul double %dtvvar0H.159, %5587
  %5589 = sitofp i64 %5580 to double
  %5590 = extractelement <2 x double> %5519, i32 0
  %5591 = fmul double %5590, %5581
  %5592 = fmul double %33, %5590
  %5593 = fadd double %5592, 1.000000e+00
  %5594 = fmul double %5593, %5591
  %5595 = fadd double %5481, %5594
  %5596 = fmul double %5589, %5595
  %5597 = fsub double %5588, %5596
  %5598 = load i64* %_from445.01363, align 8, !tbaa !24
  %5599 = sitofp i64 %5598 to double
  %5600 = extractelement <2 x double> %5519, i32 1
  %5601 = fmul double %5600, %5520
  %5602 = fmul double %33, %5600
  %5603 = fsub double 1.000000e+00, %5602
  %5604 = fmul double %5603, %5601
  %5605 = fadd double %5604, %5481
  %5606 = fmul double %5605, %5599
  %5607 = fadd double %5597, %5606
  %5608 = sitofp i64 %5579 to double
  %5609 = fsub double 1.000000e+00, %5592
  %5610 = fmul double %5609, %5591
  %5611 = fsub double %5481, %5610
  %5612 = fmul double %5611, %5608
  %5613 = fsub double %5607, %5612
  %5614 = fadd double %5602, 1.000000e+00
  %5615 = fmul double %5614, %5601
  %5616 = fsub double %5615, %5481
  %5617 = fdiv double %5613, %5616
  %5618 = fptosi double %5617 to i64
  store i64 %5618, i64* %_to444.01362, align 8, !tbaa !24
  %5619 = getelementptr inbounds double* %_radius442.01360, i64 -1
  %5620 = getelementptr inbounds double* %_xyz443.01361, i64 -1
  %5621 = getelementptr inbounds i64* %_to444.01362, i64 -1
  %5622 = getelementptr inbounds i64* %_from445.01363, i64 -1
  %5623 = add nsw i32 %_i435.01359, -1
  %5624 = icmp sgt i32 %_i435.01359, 0
  br i1 %5624, label %5513, label %.loopexit818

.loopexit917:                                     ; preds = %.loopexit855, %5466, %.loopexit919
  %dtvvar0H.160 = phi double [ %dtvvar0H.155, %.loopexit919 ], [ %dtvvar0H.155, %5466 ], [ %dtvvar0H.157.lcssa, %.loopexit855 ]
  %5625 = icmp ult i64 %5463, 4294967296
  br i1 %5625, label %.loopexit916, label %.preheader915

.preheader915:                                    ; preds = %.loopexit917
  %5626 = load i32** %93, align 8, !tbaa !17
  %5627 = getelementptr inbounds i32* %5626, i64 2
  %5628 = load i32* %5627, align 4, !tbaa !7
  %5629 = icmp sgt i32 %5628, 0
  br i1 %5629, label %.lr.ph1399, label %.loopexit916

.lr.ph1399:                                       ; preds = %.preheader915
  %5630 = load i32* %110, align 4, !tbaa !7
  %5631 = getelementptr inbounds i32* %5626, i64 1
  %5632 = load i32* %5631, align 4, !tbaa !7
  %5633 = load i32* %111, align 4, !tbaa !7
  %5634 = sub nsw i32 0, %5633
  %5635 = mul nsw i32 %5633, -2
  %5636 = load double** %86, align 8, !tbaa !13
  %5637 = load double** %112, align 8, !tbaa !13
  %5638 = sext i32 %5634 to i64
  %5639 = load double* %108, align 16, !tbaa !15
  %5640 = fmul double %107, %5639
  %5641 = sext i32 %5635 to i64
  %5642 = load double* %109, align 16, !tbaa !15
  br label %5643

; <label>:5643                                    ; preds = %.lr.ph1399, %._crit_edge1394
  %dtvvar0H.1611398 = phi double [ %dtvvar0H.160, %.lr.ph1399 ], [ %dtvvar0H.162.lcssa, %._crit_edge1394 ]
  %_k451.01396 = phi i32 [ 0, %.lr.ph1399 ], [ %5781, %._crit_edge1394 ]
  %5644 = icmp sgt i32 %5630, 0
  br i1 %5644, label %.lr.ph1393, label %._crit_edge1394

.lr.ph1393:                                       ; preds = %5643
  %5645 = sub nsw i32 %5632, %5630
  %5646 = load i8**** %38, align 8, !tbaa !12
  %5647 = getelementptr inbounds i8*** %5646, i64 %indvars.iv2111
  %5648 = bitcast i8*** %5647 to i64***
  %5649 = load i64*** %5648, align 8, !tbaa !13
  %5650 = load i64** %5649, align 8, !tbaa !13
  %5651 = getelementptr inbounds i8*** %5646, i64 %indvars.iv2113
  %5652 = load i8*** %5651, align 8, !tbaa !13
  %5653 = getelementptr inbounds i8** %5652, i64 %.
  %5654 = bitcast i8** %5653 to i64**
  %5655 = load i64** %5654, align 8, !tbaa !13
  %5656 = load i32* %5626, align 4, !tbaa !7
  %5657 = icmp sgt i32 %5656, 0
  br label %5658

; <label>:5658                                    ; preds = %.lr.ph1393, %._crit_edge1388
  %dtvvar0H.1621391 = phi double [ %dtvvar0H.1611398, %.lr.ph1393 ], [ %dtvvar0H.163.lcssa, %._crit_edge1388 ]
  %_j450.01390 = phi i32 [ %5645, %.lr.ph1393 ], [ %5779, %._crit_edge1388 ]
  %5659 = mul nsw i32 %5632, %_k451.01396
  %5660 = add nsw i32 %5659, %_j450.01390
  %5661 = mul nsw i32 %5656, %5660
  %5662 = sext i32 %5661 to i64
  br i1 %5657, label %.lr.ph1387, label %._crit_edge1388

.lr.ph1387:                                       ; preds = %5658
  %5663 = getelementptr inbounds i64* %5655, i64 %5662
  %5664 = getelementptr inbounds i64* %5650, i64 %5662
  %5665 = getelementptr inbounds double* %5637, i64 %5662
  %5666 = getelementptr inbounds double* %5636, i64 %5662
  br label %5667

; <label>:5667                                    ; preds = %.lr.ph1387, %5732
  %dtvvar0H.1631385 = phi double [ %dtvvar0H.1621391, %.lr.ph1387 ], [ %dtvvar0H.164, %5732 ]
  %_from459.01384 = phi i64* [ %5663, %.lr.ph1387 ], [ %5776, %5732 ]
  %_to458.01383 = phi i64* [ %5664, %.lr.ph1387 ], [ %5775, %5732 ]
  %_xyz457.01382 = phi double* [ %5665, %.lr.ph1387 ], [ %5774, %5732 ]
  %_radius456.01381 = phi double* [ %5666, %.lr.ph1387 ], [ %5773, %5732 ]
  %_i449.01380 = phi i32 [ 0, %.lr.ph1387 ], [ %5777, %5732 ]
  %5668 = load double* %_radius456.01381, align 8, !tbaa !15
  %5669 = getelementptr inbounds double* %_radius456.01381, i64 %5638
  %5670 = load double* %5669, align 8, !tbaa !15
  %5671 = insertelement <2 x double> undef, double %5670, i32 0
  %5672 = insertelement <2 x double> %5671, double %5668, i32 1
  %5673 = fdiv <2 x double> <double 1.000000e+00, double 1.000000e+00>, %5672
  %5674 = load double* %_xyz457.01382, align 8, !tbaa !15
  br i1 %105, label %5676, label %._crit_edge2290

._crit_edge2290:                                  ; preds = %5667
  %.phi.trans.insert2292 = getelementptr inbounds double* %_xyz457.01382, i64 %5638
  %.pre2293 = load double* %.phi.trans.insert2292, align 8, !tbaa !15
  %.phi.trans.insert2294 = getelementptr inbounds i64* %_to458.01383, i64 %5638
  %.pre2295 = load i64* %.phi.trans.insert2294, align 8, !tbaa !24
  %.phi.trans.insert2296 = getelementptr inbounds i64* %_from459.01384, i64 %5638
  %.pre2297 = load i64* %.phi.trans.insert2296, align 8, !tbaa !24
  %5675 = fmul <2 x double> %5673, %5673
  br label %5732

; <label>:5676                                    ; preds = %5667
  %5677 = fmul <2 x double> %5673, %5673
  %5678 = extractelement <2 x double> %5677, i32 1
  %5679 = fmul double %5678, %5674
  %5680 = getelementptr inbounds double* %_xyz457.01382, i64 %5638
  %5681 = load double* %5680, align 8, !tbaa !15
  %5682 = extractelement <2 x double> %5677, i32 0
  %5683 = fmul double %5682, %5681
  %5684 = fadd double %5679, %5683
  %5685 = fmul double %5640, %5684
  %5686 = fsub double 1.000000e+00, %5685
  %5687 = fadd double %5685, 1.000000e+00
  %5688 = fdiv double %5686, %5687
  %5689 = getelementptr inbounds i64* %_to458.01383, i64 %5638
  %5690 = load i64* %5689, align 8, !tbaa !24
  %5691 = getelementptr inbounds i64* %_to458.01383, i64 %5641
  %5692 = load i64* %5691, align 8, !tbaa !24
  %5693 = add nsw i64 %5692, %5690
  %5694 = getelementptr inbounds i64* %_from459.01384, i64 %5638
  %5695 = load i64* %5694, align 8, !tbaa !24
  %5696 = add nsw i64 %5693, %5695
  %5697 = getelementptr inbounds i64* %_from459.01384, i64 %5641
  %5698 = load i64* %5697, align 8, !tbaa !24
  %5699 = add nsw i64 %5696, %5698
  %5700 = sitofp i64 %5699 to double
  %5701 = fmul double %5700, 2.500000e-01
  %5702 = fsub double %5701, %var0
  %5703 = fmul double %32, %5702
  %5704 = sub nsw i64 %5690, %5695
  %5705 = sitofp i64 %5704 to double
  %5706 = fmul double %5670, %5705
  %5707 = getelementptr inbounds double* %_radius456.01381, i64 %5641
  %5708 = load double* %5707, align 8, !tbaa !15
  %5709 = sub nsw i64 %5692, %5698
  %5710 = sitofp i64 %5709 to double
  %5711 = fmul double %5708, %5710
  %5712 = fadd double %5706, %5711
  %5713 = fmul double %5712, 5.000000e-01
  %5714 = fadd double %5703, %5713
  %5715 = sub i64 %5690, %5692
  %5716 = add nsw i64 %5715, %5695
  %5717 = sub i64 %5716, %5698
  %5718 = sitofp i64 %5717 to double
  %5719 = fmul double %5718, 2.500000e-01
  %5720 = fmul double %5642, %5719
  %5721 = fmul double %5670, %5670
  %5722 = fdiv double %5721, %5681
  %5723 = fmul double %5708, %5708
  %5724 = getelementptr inbounds double* %_xyz457.01382, i64 %5641
  %5725 = load double* %5724, align 8, !tbaa !15
  %5726 = fdiv double %5723, %5725
  %5727 = fadd double %5722, %5726
  %5728 = fmul double %5720, %5727
  %5729 = fadd double %5714, %5728
  %5730 = fmul double %5688, %5729
  %5731 = fadd double %34, %5730
  br label %5732

; <label>:5732                                    ; preds = %._crit_edge2290, %5676
  %5733 = phi i64 [ %.pre2297, %._crit_edge2290 ], [ %5695, %5676 ]
  %5734 = phi i64 [ %.pre2295, %._crit_edge2290 ], [ %5690, %5676 ]
  %5735 = phi double [ %.pre2293, %._crit_edge2290 ], [ %5681, %5676 ]
  %dtvvar0H.164 = phi double [ %dtvvar0H.1631385, %._crit_edge2290 ], [ %5731, %5676 ]
  %5736 = phi <2 x double> [ %5675, %._crit_edge2290 ], [ %5677, %5676 ]
  %5737 = extractelement <2 x double> %5736, i32 1
  %5738 = fmul double %5737, %5674
  %5739 = extractelement <2 x double> %5736, i32 0
  %5740 = fmul double %5739, %5735
  %5741 = fadd double %5738, %5740
  %5742 = fmul double %dtvvar0H.164, %5741
  %5743 = sitofp i64 %5734 to double
  %5744 = extractelement <2 x double> %5673, i32 0
  %5745 = fmul double %5744, %5735
  %5746 = fmul double %33, %5744
  %5747 = fadd double %5746, 1.000000e+00
  %5748 = fmul double %5747, %5745
  %5749 = fsub double %5642, %5748
  %5750 = fmul double %5743, %5749
  %5751 = fadd double %5742, %5750
  %5752 = load i64* %_from459.01384, align 8, !tbaa !24
  %5753 = sitofp i64 %5752 to double
  %5754 = extractelement <2 x double> %5673, i32 1
  %5755 = fmul double %5754, %5674
  %5756 = fmul double %33, %5754
  %5757 = fsub double 1.000000e+00, %5756
  %5758 = fmul double %5757, %5755
  %5759 = fsub double %5758, %5642
  %5760 = fmul double %5759, %5753
  %5761 = fadd double %5751, %5760
  %5762 = sitofp i64 %5733 to double
  %5763 = fsub double 1.000000e+00, %5746
  %5764 = fmul double %5763, %5745
  %5765 = fadd double %5642, %5764
  %5766 = fmul double %5765, %5762
  %5767 = fadd double %5761, %5766
  %5768 = fadd double %5756, 1.000000e+00
  %5769 = fmul double %5768, %5755
  %5770 = fadd double %5769, %5642
  %5771 = fdiv double %5767, %5770
  %5772 = fptosi double %5771 to i64
  store i64 %5772, i64* %_to458.01383, align 8, !tbaa !24
  %5773 = getelementptr inbounds double* %_radius456.01381, i64 1
  %5774 = getelementptr inbounds double* %_xyz457.01382, i64 1
  %5775 = getelementptr inbounds i64* %_to458.01383, i64 1
  %5776 = getelementptr inbounds i64* %_from459.01384, i64 1
  %5777 = add nuw nsw i32 %_i449.01380, 1
  %5778 = icmp slt i32 %5777, %5656
  br i1 %5778, label %5667, label %._crit_edge1388

._crit_edge1388:                                  ; preds = %5732, %5658
  %dtvvar0H.163.lcssa = phi double [ %dtvvar0H.1621391, %5658 ], [ %dtvvar0H.164, %5732 ]
  %5779 = add nsw i32 %_j450.01390, 1
  %5780 = icmp slt i32 %5779, %5632
  br i1 %5780, label %5658, label %._crit_edge1394

._crit_edge1394:                                  ; preds = %._crit_edge1388, %5643
  %dtvvar0H.162.lcssa = phi double [ %dtvvar0H.1611398, %5643 ], [ %dtvvar0H.163.lcssa, %._crit_edge1388 ]
  %5781 = add nuw nsw i32 %_k451.01396, 1
  %5782 = icmp slt i32 %5781, %5628
  br i1 %5782, label %5643, label %.loopexit916

.loopexit916:                                     ; preds = %._crit_edge1394, %.preheader915, %.loopexit917
  %dtvvar0H.165 = phi double [ %dtvvar0H.160, %.loopexit917 ], [ %dtvvar0H.160, %.preheader915 ], [ %dtvvar0H.162.lcssa, %._crit_edge1394 ]
  %5783 = bitcast i32* %100 to i64*
  %5784 = load i64* %5783, align 16
  %5785 = trunc i64 %5784 to i32
  %5786 = icmp eq i32 %5785, 0
  br i1 %5786, label %.loopexit914, label %5787

; <label>:5787                                    ; preds = %.loopexit916
  %5788 = load i32* %102, align 4, !tbaa !7
  %5789 = icmp sgt i32 %5788, 0
  br i1 %5789, label %.lr.ph1420, label %.loopexit914

.lr.ph1420:                                       ; preds = %5787
  %5790 = load i32** %93, align 8, !tbaa !17
  %5791 = getelementptr inbounds i32* %5790, i64 1
  %5792 = load i32* %5791, align 4, !tbaa !7
  %5793 = icmp sgt i32 %5792, 0
  %5794 = load i32* %103, align 4, !tbaa !7
  %5795 = shl nsw i32 %5794, 1
  %5796 = load double** %86, align 8, !tbaa !13
  %5797 = load double** %104, align 16, !tbaa !13
  %5798 = sext i32 %5794 to i64
  %5799 = load double* %108, align 16, !tbaa !15
  %5800 = fmul double %107, %5799
  %5801 = sext i32 %5795 to i64
  %5802 = load double* %109, align 16, !tbaa !15
  %5803 = sext i32 %5792 to i64
  br label %5805

.loopexit854:                                     ; preds = %.loopexit817, %5805
  %dtvvar0H.167.lcssa = phi double [ %dtvvar0H.1661417, %5805 ], [ %dtvvar0H.168.lcssa, %.loopexit817 ]
  %5804 = icmp sgt i32 %_k465.01418.in, 1
  br i1 %5804, label %5805, label %.loopexit914

; <label>:5805                                    ; preds = %.lr.ph1420, %.loopexit854
  %_k465.01418.in = phi i32 [ %5788, %.lr.ph1420 ], [ %_k465.01418, %.loopexit854 ]
  %dtvvar0H.1661417 = phi double [ %dtvvar0H.165, %.lr.ph1420 ], [ %dtvvar0H.167.lcssa, %.loopexit854 ]
  %_k465.01418 = add nsw i32 %_k465.01418.in, -1
  br i1 %5793, label %.lr.ph1414, label %.loopexit854

.lr.ph1414:                                       ; preds = %5805
  %5806 = load i32* %5790, align 4, !tbaa !7
  %5807 = add nsw i32 %5806, -1
  %5808 = mul nsw i32 %5792, %_k465.01418
  %5809 = load i8**** %38, align 8, !tbaa !12
  %5810 = getelementptr inbounds i8*** %5809, i64 %indvars.iv2111
  %5811 = bitcast i8*** %5810 to i64***
  %5812 = load i64*** %5811, align 8, !tbaa !13
  %5813 = load i64** %5812, align 8, !tbaa !13
  %5814 = getelementptr inbounds i8*** %5809, i64 %indvars.iv2113
  %5815 = load i8*** %5814, align 8, !tbaa !13
  %5816 = getelementptr inbounds i8** %5815, i64 %.
  %5817 = bitcast i8** %5816 to i64**
  %5818 = load i64** %5817, align 8, !tbaa !13
  %5819 = icmp sgt i32 %5806, 0
  %5820 = sext i32 %5808 to i64
  %5821 = sext i32 %5806 to i64
  %5822 = sext i32 %5807 to i64
  br label %5824

.loopexit817:                                     ; preds = %5897, %5824
  %dtvvar0H.168.lcssa = phi double [ %dtvvar0H.1671411, %5824 ], [ %dtvvar0H.169, %5897 ]
  %5823 = icmp sgt i64 %indvars.iv2097, 1
  br i1 %5823, label %5824, label %.loopexit854

; <label>:5824                                    ; preds = %.lr.ph1414, %.loopexit817
  %indvars.iv2097 = phi i64 [ %5803, %.lr.ph1414 ], [ %indvars.iv.next2098, %.loopexit817 ]
  %dtvvar0H.1671411 = phi double [ %dtvvar0H.1661417, %.lr.ph1414 ], [ %dtvvar0H.168.lcssa, %.loopexit817 ]
  %indvars.iv.next2098 = add nsw i64 %indvars.iv2097, -1
  %5825 = add nsw i64 %5820, %indvars.iv.next2098
  %5826 = mul nsw i64 %5825, %5821
  %5827 = add nsw i64 %5826, %5822
  br i1 %5819, label %.lr.ph1408, label %.loopexit817

.lr.ph1408:                                       ; preds = %5824
  %5828 = getelementptr inbounds i64* %5818, i64 %5827
  %5829 = getelementptr inbounds i64* %5813, i64 %5827
  %5830 = getelementptr inbounds double* %5797, i64 %5827
  %5831 = getelementptr inbounds double* %5796, i64 %5827
  br label %5832

; <label>:5832                                    ; preds = %.lr.ph1408, %5897
  %dtvvar0H.1681406 = phi double [ %dtvvar0H.1671411, %.lr.ph1408 ], [ %dtvvar0H.169, %5897 ]
  %_from473.01405 = phi i64* [ %5828, %.lr.ph1408 ], [ %5941, %5897 ]
  %_to472.01404 = phi i64* [ %5829, %.lr.ph1408 ], [ %5940, %5897 ]
  %_xyz471.01403 = phi double* [ %5830, %.lr.ph1408 ], [ %5939, %5897 ]
  %_radius470.01402 = phi double* [ %5831, %.lr.ph1408 ], [ %5938, %5897 ]
  %_i463.01401 = phi i32 [ %5807, %.lr.ph1408 ], [ %5942, %5897 ]
  %5833 = load double* %_radius470.01402, align 8, !tbaa !15
  %5834 = getelementptr inbounds double* %_radius470.01402, i64 %5798
  %5835 = load double* %5834, align 8, !tbaa !15
  %5836 = insertelement <2 x double> undef, double %5835, i32 0
  %5837 = insertelement <2 x double> %5836, double %5833, i32 1
  %5838 = fdiv <2 x double> <double 1.000000e+00, double 1.000000e+00>, %5837
  %5839 = load double* %_xyz471.01403, align 8, !tbaa !15
  br i1 %105, label %5841, label %._crit_edge2298

._crit_edge2298:                                  ; preds = %5832
  %.phi.trans.insert2300 = getelementptr inbounds double* %_xyz471.01403, i64 %5798
  %.pre2301 = load double* %.phi.trans.insert2300, align 8, !tbaa !15
  %.phi.trans.insert2302 = getelementptr inbounds i64* %_to472.01404, i64 %5798
  %.pre2303 = load i64* %.phi.trans.insert2302, align 8, !tbaa !24
  %.phi.trans.insert2304 = getelementptr inbounds i64* %_from473.01405, i64 %5798
  %.pre2305 = load i64* %.phi.trans.insert2304, align 8, !tbaa !24
  %5840 = fmul <2 x double> %5838, %5838
  br label %5897

; <label>:5841                                    ; preds = %5832
  %5842 = fmul <2 x double> %5838, %5838
  %5843 = extractelement <2 x double> %5842, i32 1
  %5844 = fmul double %5843, %5839
  %5845 = getelementptr inbounds double* %_xyz471.01403, i64 %5798
  %5846 = load double* %5845, align 8, !tbaa !15
  %5847 = extractelement <2 x double> %5842, i32 0
  %5848 = fmul double %5847, %5846
  %5849 = fadd double %5844, %5848
  %5850 = fmul double %5800, %5849
  %5851 = fadd double %5850, 1.000000e+00
  %5852 = fsub double 1.000000e+00, %5850
  %5853 = fdiv double %5851, %5852
  %5854 = getelementptr inbounds i64* %_to472.01404, i64 %5798
  %5855 = load i64* %5854, align 8, !tbaa !24
  %5856 = getelementptr inbounds i64* %_to472.01404, i64 %5801
  %5857 = load i64* %5856, align 8, !tbaa !24
  %5858 = add nsw i64 %5857, %5855
  %5859 = getelementptr inbounds i64* %_from473.01405, i64 %5798
  %5860 = load i64* %5859, align 8, !tbaa !24
  %5861 = add nsw i64 %5858, %5860
  %5862 = getelementptr inbounds i64* %_from473.01405, i64 %5801
  %5863 = load i64* %5862, align 8, !tbaa !24
  %5864 = add nsw i64 %5861, %5863
  %5865 = sitofp i64 %5864 to double
  %5866 = fmul double %5865, 2.500000e-01
  %5867 = fsub double %5866, %var0
  %5868 = fmul double %32, %5867
  %5869 = sub nsw i64 %5855, %5860
  %5870 = sitofp i64 %5869 to double
  %5871 = fmul double %5835, %5870
  %5872 = getelementptr inbounds double* %_radius470.01402, i64 %5801
  %5873 = load double* %5872, align 8, !tbaa !15
  %5874 = sub nsw i64 %5857, %5863
  %5875 = sitofp i64 %5874 to double
  %5876 = fmul double %5873, %5875
  %5877 = fadd double %5871, %5876
  %5878 = fmul double %5877, 5.000000e-01
  %5879 = fadd double %5868, %5878
  %5880 = sub i64 %5857, %5855
  %5881 = sub i64 %5880, %5860
  %5882 = add i64 %5881, %5863
  %5883 = sitofp i64 %5882 to double
  %5884 = fmul double %5883, 2.500000e-01
  %5885 = fmul double %5802, %5884
  %5886 = fmul double %5835, %5835
  %5887 = fdiv double %5886, %5846
  %5888 = fmul double %5873, %5873
  %5889 = getelementptr inbounds double* %_xyz471.01403, i64 %5801
  %5890 = load double* %5889, align 8, !tbaa !15
  %5891 = fdiv double %5888, %5890
  %5892 = fadd double %5887, %5891
  %5893 = fmul double %5885, %5892
  %5894 = fadd double %5879, %5893
  %5895 = fmul double %5853, %5894
  %5896 = fadd double %34, %5895
  br label %5897

; <label>:5897                                    ; preds = %._crit_edge2298, %5841
  %5898 = phi i64 [ %.pre2305, %._crit_edge2298 ], [ %5860, %5841 ]
  %5899 = phi i64 [ %.pre2303, %._crit_edge2298 ], [ %5855, %5841 ]
  %5900 = phi double [ %.pre2301, %._crit_edge2298 ], [ %5846, %5841 ]
  %dtvvar0H.169 = phi double [ %dtvvar0H.1681406, %._crit_edge2298 ], [ %5896, %5841 ]
  %5901 = phi <2 x double> [ %5840, %._crit_edge2298 ], [ %5842, %5841 ]
  %5902 = extractelement <2 x double> %5901, i32 1
  %5903 = fmul double %5902, %5839
  %5904 = extractelement <2 x double> %5901, i32 0
  %5905 = fmul double %5904, %5900
  %5906 = fadd double %5903, %5905
  %5907 = fmul double %dtvvar0H.169, %5906
  %5908 = sitofp i64 %5899 to double
  %5909 = extractelement <2 x double> %5838, i32 0
  %5910 = fmul double %5909, %5900
  %5911 = fmul double %33, %5909
  %5912 = fadd double %5911, 1.000000e+00
  %5913 = fmul double %5912, %5910
  %5914 = fadd double %5802, %5913
  %5915 = fmul double %5908, %5914
  %5916 = fsub double %5907, %5915
  %5917 = load i64* %_from473.01405, align 8, !tbaa !24
  %5918 = sitofp i64 %5917 to double
  %5919 = extractelement <2 x double> %5838, i32 1
  %5920 = fmul double %5919, %5839
  %5921 = fmul double %33, %5919
  %5922 = fsub double 1.000000e+00, %5921
  %5923 = fmul double %5922, %5920
  %5924 = fadd double %5923, %5802
  %5925 = fmul double %5924, %5918
  %5926 = fadd double %5916, %5925
  %5927 = sitofp i64 %5898 to double
  %5928 = fsub double 1.000000e+00, %5911
  %5929 = fmul double %5928, %5910
  %5930 = fsub double %5802, %5929
  %5931 = fmul double %5930, %5927
  %5932 = fsub double %5926, %5931
  %5933 = fadd double %5921, 1.000000e+00
  %5934 = fmul double %5933, %5920
  %5935 = fsub double %5934, %5802
  %5936 = fdiv double %5932, %5935
  %5937 = fptosi double %5936 to i64
  store i64 %5937, i64* %_to472.01404, align 8, !tbaa !24
  %5938 = getelementptr inbounds double* %_radius470.01402, i64 -1
  %5939 = getelementptr inbounds double* %_xyz471.01403, i64 -1
  %5940 = getelementptr inbounds i64* %_to472.01404, i64 -1
  %5941 = getelementptr inbounds i64* %_from473.01405, i64 -1
  %5942 = add nsw i32 %_i463.01401, -1
  %5943 = icmp sgt i32 %_i463.01401, 0
  br i1 %5943, label %5832, label %.loopexit817

.loopexit914:                                     ; preds = %.loopexit854, %5787, %.loopexit916
  %dtvvar0H.170 = phi double [ %dtvvar0H.165, %.loopexit916 ], [ %dtvvar0H.165, %5787 ], [ %dtvvar0H.167.lcssa, %.loopexit854 ]
  %5944 = icmp ult i64 %5784, 4294967296
  br i1 %5944, label %.loopexit873, label %5945

; <label>:5945                                    ; preds = %.loopexit914
  %5946 = load i32* %102, align 4, !tbaa !7
  %5947 = icmp sgt i32 %5946, 0
  br i1 %5947, label %.preheader853.lr.ph, label %.loopexit873

.preheader853.lr.ph:                              ; preds = %5945
  %5948 = load i32** %93, align 8, !tbaa !17
  %5949 = getelementptr inbounds i32* %5948, i64 2
  %5950 = load i32* %5949, align 4, !tbaa !7
  %5951 = sub nsw i32 %5950, %5946
  %5952 = getelementptr inbounds i32* %5948, i64 1
  %5953 = load i32* %5952, align 4, !tbaa !7
  %5954 = icmp sgt i32 %5953, 0
  %5955 = load i32* %103, align 4, !tbaa !7
  %5956 = sub nsw i32 0, %5955
  %5957 = mul nsw i32 %5955, -2
  %5958 = load double** %86, align 8, !tbaa !13
  %5959 = load double** %104, align 16, !tbaa !13
  %5960 = sext i32 %5956 to i64
  %5961 = load double* %108, align 16, !tbaa !15
  %5962 = fmul double %107, %5961
  %5963 = sext i32 %5957 to i64
  %5964 = load double* %109, align 16, !tbaa !15
  br label %.preheader853

.preheader853:                                    ; preds = %.preheader853.lr.ph, %._crit_edge1435
  %dtvvar0H.1711439 = phi double [ %dtvvar0H.170, %.preheader853.lr.ph ], [ %dtvvar0H.172.lcssa, %._crit_edge1435 ]
  %_k479.01437 = phi i32 [ %5951, %.preheader853.lr.ph ], [ %6100, %._crit_edge1435 ]
  br i1 %5954, label %.lr.ph1434, label %._crit_edge1435

.lr.ph1434:                                       ; preds = %.preheader853
  %5965 = load i8**** %38, align 8, !tbaa !12
  %5966 = getelementptr inbounds i8*** %5965, i64 %indvars.iv2111
  %5967 = bitcast i8*** %5966 to i64***
  %5968 = load i64*** %5967, align 8, !tbaa !13
  %5969 = load i64** %5968, align 8, !tbaa !13
  %5970 = getelementptr inbounds i8*** %5965, i64 %indvars.iv2113
  %5971 = load i8*** %5970, align 8, !tbaa !13
  %5972 = getelementptr inbounds i8** %5971, i64 %.
  %5973 = bitcast i8** %5972 to i64**
  %5974 = load i64** %5973, align 8, !tbaa !13
  %5975 = load i32* %5948, align 4, !tbaa !7
  %5976 = icmp sgt i32 %5975, 0
  br label %5977

; <label>:5977                                    ; preds = %.lr.ph1434, %._crit_edge1430
  %dtvvar0H.1721433 = phi double [ %dtvvar0H.1711439, %.lr.ph1434 ], [ %dtvvar0H.173.lcssa, %._crit_edge1430 ]
  %_j478.01432 = phi i32 [ 0, %.lr.ph1434 ], [ %6098, %._crit_edge1430 ]
  %5978 = mul nsw i32 %5953, %_k479.01437
  %5979 = add nsw i32 %5978, %_j478.01432
  %5980 = mul nsw i32 %5975, %5979
  %5981 = sext i32 %5980 to i64
  br i1 %5976, label %.lr.ph1429, label %._crit_edge1430

.lr.ph1429:                                       ; preds = %5977
  %5982 = getelementptr inbounds i64* %5974, i64 %5981
  %5983 = getelementptr inbounds i64* %5969, i64 %5981
  %5984 = getelementptr inbounds double* %5959, i64 %5981
  %5985 = getelementptr inbounds double* %5958, i64 %5981
  br label %5986

; <label>:5986                                    ; preds = %.lr.ph1429, %6051
  %dtvvar0H.1731427 = phi double [ %dtvvar0H.1721433, %.lr.ph1429 ], [ %dtvvar0H.174, %6051 ]
  %_from487.01426 = phi i64* [ %5982, %.lr.ph1429 ], [ %6095, %6051 ]
  %_to486.01425 = phi i64* [ %5983, %.lr.ph1429 ], [ %6094, %6051 ]
  %_xyz485.01424 = phi double* [ %5984, %.lr.ph1429 ], [ %6093, %6051 ]
  %_radius484.01423 = phi double* [ %5985, %.lr.ph1429 ], [ %6092, %6051 ]
  %_i477.01422 = phi i32 [ 0, %.lr.ph1429 ], [ %6096, %6051 ]
  %5987 = load double* %_radius484.01423, align 8, !tbaa !15
  %5988 = getelementptr inbounds double* %_radius484.01423, i64 %5960
  %5989 = load double* %5988, align 8, !tbaa !15
  %5990 = insertelement <2 x double> undef, double %5989, i32 0
  %5991 = insertelement <2 x double> %5990, double %5987, i32 1
  %5992 = fdiv <2 x double> <double 1.000000e+00, double 1.000000e+00>, %5991
  %5993 = load double* %_xyz485.01424, align 8, !tbaa !15
  br i1 %105, label %5995, label %._crit_edge2306

._crit_edge2306:                                  ; preds = %5986
  %.phi.trans.insert2308 = getelementptr inbounds double* %_xyz485.01424, i64 %5960
  %.pre2309 = load double* %.phi.trans.insert2308, align 8, !tbaa !15
  %.phi.trans.insert2310 = getelementptr inbounds i64* %_to486.01425, i64 %5960
  %.pre2311 = load i64* %.phi.trans.insert2310, align 8, !tbaa !24
  %.phi.trans.insert2312 = getelementptr inbounds i64* %_from487.01426, i64 %5960
  %.pre2313 = load i64* %.phi.trans.insert2312, align 8, !tbaa !24
  %5994 = fmul <2 x double> %5992, %5992
  br label %6051

; <label>:5995                                    ; preds = %5986
  %5996 = fmul <2 x double> %5992, %5992
  %5997 = extractelement <2 x double> %5996, i32 1
  %5998 = fmul double %5997, %5993
  %5999 = getelementptr inbounds double* %_xyz485.01424, i64 %5960
  %6000 = load double* %5999, align 8, !tbaa !15
  %6001 = extractelement <2 x double> %5996, i32 0
  %6002 = fmul double %6001, %6000
  %6003 = fadd double %5998, %6002
  %6004 = fmul double %5962, %6003
  %6005 = fsub double 1.000000e+00, %6004
  %6006 = fadd double %6004, 1.000000e+00
  %6007 = fdiv double %6005, %6006
  %6008 = getelementptr inbounds i64* %_to486.01425, i64 %5960
  %6009 = load i64* %6008, align 8, !tbaa !24
  %6010 = getelementptr inbounds i64* %_to486.01425, i64 %5963
  %6011 = load i64* %6010, align 8, !tbaa !24
  %6012 = add nsw i64 %6011, %6009
  %6013 = getelementptr inbounds i64* %_from487.01426, i64 %5960
  %6014 = load i64* %6013, align 8, !tbaa !24
  %6015 = add nsw i64 %6012, %6014
  %6016 = getelementptr inbounds i64* %_from487.01426, i64 %5963
  %6017 = load i64* %6016, align 8, !tbaa !24
  %6018 = add nsw i64 %6015, %6017
  %6019 = sitofp i64 %6018 to double
  %6020 = fmul double %6019, 2.500000e-01
  %6021 = fsub double %6020, %var0
  %6022 = fmul double %32, %6021
  %6023 = sub nsw i64 %6009, %6014
  %6024 = sitofp i64 %6023 to double
  %6025 = fmul double %5989, %6024
  %6026 = getelementptr inbounds double* %_radius484.01423, i64 %5963
  %6027 = load double* %6026, align 8, !tbaa !15
  %6028 = sub nsw i64 %6011, %6017
  %6029 = sitofp i64 %6028 to double
  %6030 = fmul double %6027, %6029
  %6031 = fadd double %6025, %6030
  %6032 = fmul double %6031, 5.000000e-01
  %6033 = fadd double %6022, %6032
  %6034 = sub i64 %6009, %6011
  %6035 = add nsw i64 %6034, %6014
  %6036 = sub i64 %6035, %6017
  %6037 = sitofp i64 %6036 to double
  %6038 = fmul double %6037, 2.500000e-01
  %6039 = fmul double %5964, %6038
  %6040 = fmul double %5989, %5989
  %6041 = fdiv double %6040, %6000
  %6042 = fmul double %6027, %6027
  %6043 = getelementptr inbounds double* %_xyz485.01424, i64 %5963
  %6044 = load double* %6043, align 8, !tbaa !15
  %6045 = fdiv double %6042, %6044
  %6046 = fadd double %6041, %6045
  %6047 = fmul double %6039, %6046
  %6048 = fadd double %6033, %6047
  %6049 = fmul double %6007, %6048
  %6050 = fadd double %34, %6049
  br label %6051

; <label>:6051                                    ; preds = %._crit_edge2306, %5995
  %6052 = phi i64 [ %.pre2313, %._crit_edge2306 ], [ %6014, %5995 ]
  %6053 = phi i64 [ %.pre2311, %._crit_edge2306 ], [ %6009, %5995 ]
  %6054 = phi double [ %.pre2309, %._crit_edge2306 ], [ %6000, %5995 ]
  %dtvvar0H.174 = phi double [ %dtvvar0H.1731427, %._crit_edge2306 ], [ %6050, %5995 ]
  %6055 = phi <2 x double> [ %5994, %._crit_edge2306 ], [ %5996, %5995 ]
  %6056 = extractelement <2 x double> %6055, i32 1
  %6057 = fmul double %6056, %5993
  %6058 = extractelement <2 x double> %6055, i32 0
  %6059 = fmul double %6058, %6054
  %6060 = fadd double %6057, %6059
  %6061 = fmul double %dtvvar0H.174, %6060
  %6062 = sitofp i64 %6053 to double
  %6063 = extractelement <2 x double> %5992, i32 0
  %6064 = fmul double %6063, %6054
  %6065 = fmul double %33, %6063
  %6066 = fadd double %6065, 1.000000e+00
  %6067 = fmul double %6066, %6064
  %6068 = fsub double %5964, %6067
  %6069 = fmul double %6062, %6068
  %6070 = fadd double %6061, %6069
  %6071 = load i64* %_from487.01426, align 8, !tbaa !24
  %6072 = sitofp i64 %6071 to double
  %6073 = extractelement <2 x double> %5992, i32 1
  %6074 = fmul double %6073, %5993
  %6075 = fmul double %33, %6073
  %6076 = fsub double 1.000000e+00, %6075
  %6077 = fmul double %6076, %6074
  %6078 = fsub double %6077, %5964
  %6079 = fmul double %6078, %6072
  %6080 = fadd double %6070, %6079
  %6081 = sitofp i64 %6052 to double
  %6082 = fsub double 1.000000e+00, %6065
  %6083 = fmul double %6082, %6064
  %6084 = fadd double %5964, %6083
  %6085 = fmul double %6084, %6081
  %6086 = fadd double %6080, %6085
  %6087 = fadd double %6075, 1.000000e+00
  %6088 = fmul double %6087, %6074
  %6089 = fadd double %6088, %5964
  %6090 = fdiv double %6086, %6089
  %6091 = fptosi double %6090 to i64
  store i64 %6091, i64* %_to486.01425, align 8, !tbaa !24
  %6092 = getelementptr inbounds double* %_radius484.01423, i64 1
  %6093 = getelementptr inbounds double* %_xyz485.01424, i64 1
  %6094 = getelementptr inbounds i64* %_to486.01425, i64 1
  %6095 = getelementptr inbounds i64* %_from487.01426, i64 1
  %6096 = add nuw nsw i32 %_i477.01422, 1
  %6097 = icmp slt i32 %6096, %5975
  br i1 %6097, label %5986, label %._crit_edge1430

._crit_edge1430:                                  ; preds = %6051, %5977
  %dtvvar0H.173.lcssa = phi double [ %dtvvar0H.1721433, %5977 ], [ %dtvvar0H.174, %6051 ]
  %6098 = add nuw nsw i32 %_j478.01432, 1
  %6099 = icmp slt i32 %6098, %5953
  br i1 %6099, label %5977, label %._crit_edge1435

._crit_edge1435:                                  ; preds = %._crit_edge1430, %.preheader853
  %dtvvar0H.172.lcssa = phi double [ %dtvvar0H.1711439, %.preheader853 ], [ %dtvvar0H.173.lcssa, %._crit_edge1430 ]
  %6100 = add nsw i32 %_k479.01437, 1
  %6101 = icmp slt i32 %6100, %5950
  br i1 %6101, label %.preheader853, label %.loopexit873

; <label>:6102                                    ; preds = %177
  br i1 %96, label %6105, label %6103

; <label>:6103                                    ; preds = %6102
  %6104 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 1537, i8* getelementptr inbounds ([88 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([58 x i8]* @.str12, i64 0, i64 0), i32 %7) #5
  br label %.loopexit947

; <label>:6105                                    ; preds = %6102
  %6106 = bitcast [6 x i32]* %doBC to i64*
  %6107 = load i64* %6106, align 16
  %6108 = trunc i64 %6107 to i32
  %6109 = icmp eq i32 %6108, 0
  br i1 %6109, label %.loopexit928, label %6110

; <label>:6110                                    ; preds = %6105
  %6111 = load i32** %93, align 8, !tbaa !17
  %6112 = getelementptr inbounds i32* %6111, i64 2
  %6113 = load i32* %6112, align 4, !tbaa !7
  %6114 = icmp sgt i32 %6113, 0
  br i1 %6114, label %.lr.ph1216, label %.loopexit928

.lr.ph1216:                                       ; preds = %6110
  %6115 = getelementptr inbounds i32* %6111, i64 1
  %6116 = load i32* %6115, align 4, !tbaa !7
  %6117 = icmp sgt i32 %6116, 0
  %6118 = load i32* %113, align 4, !tbaa !7
  %6119 = shl nsw i32 %6118, 1
  %6120 = load i32* %114, align 4, !tbaa !7
  %6121 = add nsw i32 %6120, -1
  %6122 = load double** %86, align 8, !tbaa !13
  %6123 = load double** %115, align 16, !tbaa !13
  %6124 = icmp sgt i32 %6120, 0
  %6125 = sext i32 %6118 to i64
  %6126 = load double* %108, align 16, !tbaa !15
  %6127 = fmul double %107, %6126
  %6128 = sext i32 %6119 to i64
  %6129 = load double* %109, align 16, !tbaa !15
  %6130 = sext i32 %6116 to i64
  %6131 = sext i32 %6121 to i64
  br label %6133

.loopexit862:                                     ; preds = %.loopexit822, %6133
  %dtvvar0H.176.lcssa = phi double [ %dtvvar0H.1751213, %6133 ], [ %dtvvar0H.177.lcssa, %.loopexit822 ]
  %6132 = icmp sgt i32 %_k493.01214.in, 1
  br i1 %6132, label %6133, label %.loopexit928

; <label>:6133                                    ; preds = %.lr.ph1216, %.loopexit862
  %_k493.01214.in = phi i32 [ %6113, %.lr.ph1216 ], [ %_k493.01214, %.loopexit862 ]
  %dtvvar0H.1751213 = phi double [ %dtvvar0H.02051, %.lr.ph1216 ], [ %dtvvar0H.176.lcssa, %.loopexit862 ]
  %_k493.01214 = add nsw i32 %_k493.01214.in, -1
  br i1 %6117, label %.lr.ph1210, label %.loopexit862

.lr.ph1210:                                       ; preds = %6133
  %6134 = load i32* %6111, align 4, !tbaa !7
  %6135 = mul nsw i32 %6116, %_k493.01214
  %6136 = load i8**** %38, align 8, !tbaa !12
  %6137 = getelementptr inbounds i8*** %6136, i64 %indvars.iv2111
  %6138 = bitcast i8*** %6137 to float***
  %6139 = load float*** %6138, align 8, !tbaa !13
  %6140 = load float** %6139, align 8, !tbaa !13
  %6141 = getelementptr inbounds i8*** %6136, i64 %indvars.iv2113
  %6142 = load i8*** %6141, align 8, !tbaa !13
  %6143 = getelementptr inbounds i8** %6142, i64 %.
  %6144 = bitcast i8** %6143 to float**
  %6145 = load float** %6144, align 8, !tbaa !13
  %6146 = sext i32 %6135 to i64
  %6147 = sext i32 %6134 to i64
  br label %6149

.loopexit822:                                     ; preds = %6222, %6149
  %dtvvar0H.177.lcssa = phi double [ %dtvvar0H.1761207, %6149 ], [ %dtvvar0H.178, %6222 ]
  %6148 = icmp sgt i64 %indvars.iv2087, 1
  br i1 %6148, label %6149, label %.loopexit862

; <label>:6149                                    ; preds = %.lr.ph1210, %.loopexit822
  %indvars.iv2087 = phi i64 [ %6130, %.lr.ph1210 ], [ %indvars.iv.next2088, %.loopexit822 ]
  %dtvvar0H.1761207 = phi double [ %dtvvar0H.1751213, %.lr.ph1210 ], [ %dtvvar0H.177.lcssa, %.loopexit822 ]
  %indvars.iv.next2088 = add nsw i64 %indvars.iv2087, -1
  %6150 = add nsw i64 %6146, %indvars.iv.next2088
  %6151 = mul nsw i64 %6150, %6147
  %6152 = add nsw i64 %6151, %6131
  br i1 %6124, label %.lr.ph1204, label %.loopexit822

.lr.ph1204:                                       ; preds = %6149
  %6153 = getelementptr inbounds float* %6145, i64 %6152
  %6154 = getelementptr inbounds float* %6140, i64 %6152
  %6155 = getelementptr inbounds double* %6123, i64 %6152
  %6156 = getelementptr inbounds double* %6122, i64 %6152
  br label %6157

; <label>:6157                                    ; preds = %.lr.ph1204, %6222
  %dtvvar0H.1771202 = phi double [ %dtvvar0H.1761207, %.lr.ph1204 ], [ %dtvvar0H.178, %6222 ]
  %_from501.01201 = phi float* [ %6153, %.lr.ph1204 ], [ %6266, %6222 ]
  %_to500.01200 = phi float* [ %6154, %.lr.ph1204 ], [ %6265, %6222 ]
  %_xyz499.01199 = phi double* [ %6155, %.lr.ph1204 ], [ %6264, %6222 ]
  %_radius498.01198 = phi double* [ %6156, %.lr.ph1204 ], [ %6263, %6222 ]
  %_i491.01197 = phi i32 [ %6121, %.lr.ph1204 ], [ %6267, %6222 ]
  %6158 = load double* %_radius498.01198, align 8, !tbaa !15
  %6159 = getelementptr inbounds double* %_radius498.01198, i64 %6125
  %6160 = load double* %6159, align 8, !tbaa !15
  %6161 = insertelement <2 x double> undef, double %6160, i32 0
  %6162 = insertelement <2 x double> %6161, double %6158, i32 1
  %6163 = fdiv <2 x double> <double 1.000000e+00, double 1.000000e+00>, %6162
  %6164 = load double* %_xyz499.01199, align 8, !tbaa !15
  br i1 %105, label %6166, label %._crit_edge2218

._crit_edge2218:                                  ; preds = %6157
  %.phi.trans.insert2220 = getelementptr inbounds double* %_xyz499.01199, i64 %6125
  %.pre2221 = load double* %.phi.trans.insert2220, align 8, !tbaa !15
  %.phi.trans.insert2222 = getelementptr inbounds float* %_to500.01200, i64 %6125
  %.pre2223 = load float* %.phi.trans.insert2222, align 4, !tbaa !26
  %.phi.trans.insert2224 = getelementptr inbounds float* %_from501.01201, i64 %6125
  %.pre2225 = load float* %.phi.trans.insert2224, align 4, !tbaa !26
  %6165 = fmul <2 x double> %6163, %6163
  br label %6222

; <label>:6166                                    ; preds = %6157
  %6167 = fmul <2 x double> %6163, %6163
  %6168 = extractelement <2 x double> %6167, i32 1
  %6169 = fmul double %6168, %6164
  %6170 = getelementptr inbounds double* %_xyz499.01199, i64 %6125
  %6171 = load double* %6170, align 8, !tbaa !15
  %6172 = extractelement <2 x double> %6167, i32 0
  %6173 = fmul double %6172, %6171
  %6174 = fadd double %6169, %6173
  %6175 = fmul double %6127, %6174
  %6176 = fadd double %6175, 1.000000e+00
  %6177 = fsub double 1.000000e+00, %6175
  %6178 = fdiv double %6176, %6177
  %6179 = getelementptr inbounds float* %_to500.01200, i64 %6125
  %6180 = load float* %6179, align 4, !tbaa !26
  %6181 = getelementptr inbounds float* %_to500.01200, i64 %6128
  %6182 = load float* %6181, align 4, !tbaa !26
  %6183 = fadd float %6180, %6182
  %6184 = getelementptr inbounds float* %_from501.01201, i64 %6125
  %6185 = load float* %6184, align 4, !tbaa !26
  %6186 = fadd float %6183, %6185
  %6187 = getelementptr inbounds float* %_from501.01201, i64 %6128
  %6188 = load float* %6187, align 4, !tbaa !26
  %6189 = fadd float %6186, %6188
  %6190 = fpext float %6189 to double
  %6191 = fmul double %6190, 2.500000e-01
  %6192 = fsub double %6191, %var0
  %6193 = fmul double %32, %6192
  %6194 = fsub float %6180, %6185
  %6195 = fpext float %6194 to double
  %6196 = fmul double %6160, %6195
  %6197 = getelementptr inbounds double* %_radius498.01198, i64 %6128
  %6198 = load double* %6197, align 8, !tbaa !15
  %6199 = fsub float %6182, %6188
  %6200 = fpext float %6199 to double
  %6201 = fmul double %6198, %6200
  %6202 = fadd double %6196, %6201
  %6203 = fmul double %6202, 5.000000e-01
  %6204 = fadd double %6193, %6203
  %6205 = fsub float %6182, %6180
  %6206 = fadd float %6205, %6188
  %6207 = fsub float %6206, %6185
  %6208 = fpext float %6207 to double
  %6209 = fmul double %6208, 2.500000e-01
  %6210 = fmul double %6129, %6209
  %6211 = fmul double %6160, %6160
  %6212 = fdiv double %6211, %6171
  %6213 = fmul double %6198, %6198
  %6214 = getelementptr inbounds double* %_xyz499.01199, i64 %6128
  %6215 = load double* %6214, align 8, !tbaa !15
  %6216 = fdiv double %6213, %6215
  %6217 = fadd double %6212, %6216
  %6218 = fmul double %6210, %6217
  %6219 = fadd double %6204, %6218
  %6220 = fmul double %6178, %6219
  %6221 = fadd double %34, %6220
  br label %6222

; <label>:6222                                    ; preds = %._crit_edge2218, %6166
  %6223 = phi float [ %.pre2225, %._crit_edge2218 ], [ %6185, %6166 ]
  %6224 = phi float [ %.pre2223, %._crit_edge2218 ], [ %6180, %6166 ]
  %6225 = phi double [ %.pre2221, %._crit_edge2218 ], [ %6171, %6166 ]
  %dtvvar0H.178 = phi double [ %dtvvar0H.1771202, %._crit_edge2218 ], [ %6221, %6166 ]
  %6226 = phi <2 x double> [ %6165, %._crit_edge2218 ], [ %6167, %6166 ]
  %6227 = extractelement <2 x double> %6226, i32 1
  %6228 = fmul double %6227, %6164
  %6229 = extractelement <2 x double> %6226, i32 0
  %6230 = fmul double %6229, %6225
  %6231 = fadd double %6228, %6230
  %6232 = fmul double %dtvvar0H.178, %6231
  %6233 = fpext float %6224 to double
  %6234 = extractelement <2 x double> %6163, i32 0
  %6235 = fmul double %6234, %6225
  %6236 = fmul double %33, %6234
  %6237 = fadd double %6236, 1.000000e+00
  %6238 = fmul double %6237, %6235
  %6239 = fadd double %6129, %6238
  %6240 = fmul double %6233, %6239
  %6241 = fsub double %6232, %6240
  %6242 = load float* %_from501.01201, align 4, !tbaa !26
  %6243 = fpext float %6242 to double
  %6244 = extractelement <2 x double> %6163, i32 1
  %6245 = fmul double %6244, %6164
  %6246 = fmul double %33, %6244
  %6247 = fsub double 1.000000e+00, %6246
  %6248 = fmul double %6247, %6245
  %6249 = fadd double %6248, %6129
  %6250 = fmul double %6249, %6243
  %6251 = fadd double %6241, %6250
  %6252 = fpext float %6223 to double
  %6253 = fsub double 1.000000e+00, %6236
  %6254 = fmul double %6253, %6235
  %6255 = fsub double %6129, %6254
  %6256 = fmul double %6255, %6252
  %6257 = fsub double %6251, %6256
  %6258 = fadd double %6246, 1.000000e+00
  %6259 = fmul double %6258, %6245
  %6260 = fsub double %6259, %6129
  %6261 = fdiv double %6257, %6260
  %6262 = fptrunc double %6261 to float
  store float %6262, float* %_to500.01200, align 4, !tbaa !26
  %6263 = getelementptr inbounds double* %_radius498.01198, i64 -1
  %6264 = getelementptr inbounds double* %_xyz499.01199, i64 -1
  %6265 = getelementptr inbounds float* %_to500.01200, i64 -1
  %6266 = getelementptr inbounds float* %_from501.01201, i64 -1
  %6267 = add nsw i32 %_i491.01197, -1
  %6268 = icmp sgt i32 %_i491.01197, 0
  br i1 %6268, label %6157, label %.loopexit822

.loopexit928:                                     ; preds = %.loopexit862, %6110, %6105
  %dtvvar0H.179 = phi double [ %dtvvar0H.02051, %6105 ], [ %dtvvar0H.02051, %6110 ], [ %dtvvar0H.176.lcssa, %.loopexit862 ]
  %6269 = icmp ult i64 %6107, 4294967296
  br i1 %6269, label %.loopexit927, label %.preheader926

.preheader926:                                    ; preds = %.loopexit928
  %6270 = load i32** %93, align 8, !tbaa !17
  %6271 = getelementptr inbounds i32* %6270, i64 2
  %6272 = load i32* %6271, align 4, !tbaa !7
  %6273 = icmp sgt i32 %6272, 0
  br i1 %6273, label %.preheader861.lr.ph, label %.loopexit927

.preheader861.lr.ph:                              ; preds = %.preheader926
  %6274 = getelementptr inbounds i32* %6270, i64 1
  %6275 = load i32* %6274, align 4, !tbaa !7
  %6276 = icmp sgt i32 %6275, 0
  %6277 = load i32* %113, align 4, !tbaa !7
  %6278 = sub nsw i32 0, %6277
  %6279 = mul nsw i32 %6277, -2
  %6280 = load i32* %114, align 4, !tbaa !7
  %6281 = load double** %86, align 8, !tbaa !13
  %6282 = load double** %115, align 16, !tbaa !13
  %6283 = sext i32 %6278 to i64
  %6284 = load double* %108, align 16, !tbaa !15
  %6285 = fmul double %107, %6284
  %6286 = sext i32 %6279 to i64
  %6287 = load double* %109, align 16, !tbaa !15
  br label %.preheader861

.preheader861:                                    ; preds = %.preheader861.lr.ph, %._crit_edge1231
  %dtvvar0H.1801235 = phi double [ %dtvvar0H.179, %.preheader861.lr.ph ], [ %dtvvar0H.181.lcssa, %._crit_edge1231 ]
  %_k507.01233 = phi i32 [ 0, %.preheader861.lr.ph ], [ %6425, %._crit_edge1231 ]
  br i1 %6276, label %.lr.ph1230, label %._crit_edge1231

.lr.ph1230:                                       ; preds = %.preheader861
  %6288 = load i8**** %38, align 8, !tbaa !12
  %6289 = getelementptr inbounds i8*** %6288, i64 %indvars.iv2111
  %6290 = bitcast i8*** %6289 to float***
  %6291 = load float*** %6290, align 8, !tbaa !13
  %6292 = load float** %6291, align 8, !tbaa !13
  %6293 = getelementptr inbounds i8*** %6288, i64 %indvars.iv2113
  %6294 = load i8*** %6293, align 8, !tbaa !13
  %6295 = getelementptr inbounds i8** %6294, i64 %.
  %6296 = bitcast i8** %6295 to float**
  %6297 = load float** %6296, align 8, !tbaa !13
  %6298 = load i32* %6270, align 4, !tbaa !7
  br label %6299

; <label>:6299                                    ; preds = %.lr.ph1230, %._crit_edge1226
  %dtvvar0H.1811229 = phi double [ %dtvvar0H.1801235, %.lr.ph1230 ], [ %dtvvar0H.182.lcssa, %._crit_edge1226 ]
  %_j506.01228 = phi i32 [ 0, %.lr.ph1230 ], [ %6423, %._crit_edge1226 ]
  %6300 = sub nsw i32 %6298, %6280
  %6301 = mul nsw i32 %6275, %_k507.01233
  %6302 = add nsw i32 %6301, %_j506.01228
  %6303 = mul nsw i32 %6298, %6302
  %6304 = add nsw i32 %6300, %6303
  %6305 = sext i32 %6304 to i64
  %6306 = icmp sgt i32 %6280, 0
  br i1 %6306, label %.lr.ph1225, label %._crit_edge1226

.lr.ph1225:                                       ; preds = %6299
  %6307 = getelementptr inbounds float* %6297, i64 %6305
  %6308 = getelementptr inbounds float* %6292, i64 %6305
  %6309 = getelementptr inbounds double* %6282, i64 %6305
  %6310 = getelementptr inbounds double* %6281, i64 %6305
  br label %6311

; <label>:6311                                    ; preds = %.lr.ph1225, %6376
  %dtvvar0H.1821223 = phi double [ %dtvvar0H.1811229, %.lr.ph1225 ], [ %dtvvar0H.183, %6376 ]
  %_from515.01222 = phi float* [ %6307, %.lr.ph1225 ], [ %6420, %6376 ]
  %_to514.01221 = phi float* [ %6308, %.lr.ph1225 ], [ %6419, %6376 ]
  %_xyz513.01220 = phi double* [ %6309, %.lr.ph1225 ], [ %6418, %6376 ]
  %_radius512.01219 = phi double* [ %6310, %.lr.ph1225 ], [ %6417, %6376 ]
  %_i505.01218 = phi i32 [ %6300, %.lr.ph1225 ], [ %6421, %6376 ]
  %6312 = load double* %_radius512.01219, align 8, !tbaa !15
  %6313 = getelementptr inbounds double* %_radius512.01219, i64 %6283
  %6314 = load double* %6313, align 8, !tbaa !15
  %6315 = insertelement <2 x double> undef, double %6314, i32 0
  %6316 = insertelement <2 x double> %6315, double %6312, i32 1
  %6317 = fdiv <2 x double> <double 1.000000e+00, double 1.000000e+00>, %6316
  %6318 = load double* %_xyz513.01220, align 8, !tbaa !15
  br i1 %105, label %6320, label %._crit_edge2226

._crit_edge2226:                                  ; preds = %6311
  %.phi.trans.insert2228 = getelementptr inbounds double* %_xyz513.01220, i64 %6283
  %.pre2229 = load double* %.phi.trans.insert2228, align 8, !tbaa !15
  %.phi.trans.insert2230 = getelementptr inbounds float* %_to514.01221, i64 %6283
  %.pre2231 = load float* %.phi.trans.insert2230, align 4, !tbaa !26
  %.phi.trans.insert2232 = getelementptr inbounds float* %_from515.01222, i64 %6283
  %.pre2233 = load float* %.phi.trans.insert2232, align 4, !tbaa !26
  %6319 = fmul <2 x double> %6317, %6317
  br label %6376

; <label>:6320                                    ; preds = %6311
  %6321 = fmul <2 x double> %6317, %6317
  %6322 = extractelement <2 x double> %6321, i32 1
  %6323 = fmul double %6322, %6318
  %6324 = getelementptr inbounds double* %_xyz513.01220, i64 %6283
  %6325 = load double* %6324, align 8, !tbaa !15
  %6326 = extractelement <2 x double> %6321, i32 0
  %6327 = fmul double %6326, %6325
  %6328 = fadd double %6323, %6327
  %6329 = fmul double %6285, %6328
  %6330 = fsub double 1.000000e+00, %6329
  %6331 = fadd double %6329, 1.000000e+00
  %6332 = fdiv double %6330, %6331
  %6333 = getelementptr inbounds float* %_to514.01221, i64 %6283
  %6334 = load float* %6333, align 4, !tbaa !26
  %6335 = getelementptr inbounds float* %_to514.01221, i64 %6286
  %6336 = load float* %6335, align 4, !tbaa !26
  %6337 = fadd float %6334, %6336
  %6338 = getelementptr inbounds float* %_from515.01222, i64 %6283
  %6339 = load float* %6338, align 4, !tbaa !26
  %6340 = fadd float %6337, %6339
  %6341 = getelementptr inbounds float* %_from515.01222, i64 %6286
  %6342 = load float* %6341, align 4, !tbaa !26
  %6343 = fadd float %6340, %6342
  %6344 = fpext float %6343 to double
  %6345 = fmul double %6344, 2.500000e-01
  %6346 = fsub double %6345, %var0
  %6347 = fmul double %32, %6346
  %6348 = fsub float %6334, %6339
  %6349 = fpext float %6348 to double
  %6350 = fmul double %6314, %6349
  %6351 = getelementptr inbounds double* %_radius512.01219, i64 %6286
  %6352 = load double* %6351, align 8, !tbaa !15
  %6353 = fsub float %6336, %6342
  %6354 = fpext float %6353 to double
  %6355 = fmul double %6352, %6354
  %6356 = fadd double %6350, %6355
  %6357 = fmul double %6356, 5.000000e-01
  %6358 = fadd double %6347, %6357
  %6359 = fsub float %6334, %6336
  %6360 = fadd float %6359, %6339
  %6361 = fsub float %6360, %6342
  %6362 = fpext float %6361 to double
  %6363 = fmul double %6362, 2.500000e-01
  %6364 = fmul double %6287, %6363
  %6365 = fmul double %6314, %6314
  %6366 = fdiv double %6365, %6325
  %6367 = fmul double %6352, %6352
  %6368 = getelementptr inbounds double* %_xyz513.01220, i64 %6286
  %6369 = load double* %6368, align 8, !tbaa !15
  %6370 = fdiv double %6367, %6369
  %6371 = fadd double %6366, %6370
  %6372 = fmul double %6364, %6371
  %6373 = fadd double %6358, %6372
  %6374 = fmul double %6332, %6373
  %6375 = fadd double %34, %6374
  br label %6376

; <label>:6376                                    ; preds = %._crit_edge2226, %6320
  %6377 = phi float [ %.pre2233, %._crit_edge2226 ], [ %6339, %6320 ]
  %6378 = phi float [ %.pre2231, %._crit_edge2226 ], [ %6334, %6320 ]
  %6379 = phi double [ %.pre2229, %._crit_edge2226 ], [ %6325, %6320 ]
  %dtvvar0H.183 = phi double [ %dtvvar0H.1821223, %._crit_edge2226 ], [ %6375, %6320 ]
  %6380 = phi <2 x double> [ %6319, %._crit_edge2226 ], [ %6321, %6320 ]
  %6381 = extractelement <2 x double> %6380, i32 1
  %6382 = fmul double %6381, %6318
  %6383 = extractelement <2 x double> %6380, i32 0
  %6384 = fmul double %6383, %6379
  %6385 = fadd double %6382, %6384
  %6386 = fmul double %dtvvar0H.183, %6385
  %6387 = fpext float %6378 to double
  %6388 = extractelement <2 x double> %6317, i32 0
  %6389 = fmul double %6388, %6379
  %6390 = fmul double %33, %6388
  %6391 = fadd double %6390, 1.000000e+00
  %6392 = fmul double %6391, %6389
  %6393 = fsub double %6287, %6392
  %6394 = fmul double %6387, %6393
  %6395 = fadd double %6386, %6394
  %6396 = load float* %_from515.01222, align 4, !tbaa !26
  %6397 = fpext float %6396 to double
  %6398 = extractelement <2 x double> %6317, i32 1
  %6399 = fmul double %6398, %6318
  %6400 = fmul double %33, %6398
  %6401 = fsub double 1.000000e+00, %6400
  %6402 = fmul double %6401, %6399
  %6403 = fsub double %6402, %6287
  %6404 = fmul double %6403, %6397
  %6405 = fadd double %6395, %6404
  %6406 = fpext float %6377 to double
  %6407 = fsub double 1.000000e+00, %6390
  %6408 = fmul double %6407, %6389
  %6409 = fadd double %6287, %6408
  %6410 = fmul double %6409, %6406
  %6411 = fadd double %6405, %6410
  %6412 = fadd double %6400, 1.000000e+00
  %6413 = fmul double %6412, %6399
  %6414 = fadd double %6413, %6287
  %6415 = fdiv double %6411, %6414
  %6416 = fptrunc double %6415 to float
  store float %6416, float* %_to514.01221, align 4, !tbaa !26
  %6417 = getelementptr inbounds double* %_radius512.01219, i64 1
  %6418 = getelementptr inbounds double* %_xyz513.01220, i64 1
  %6419 = getelementptr inbounds float* %_to514.01221, i64 1
  %6420 = getelementptr inbounds float* %_from515.01222, i64 1
  %6421 = add nsw i32 %_i505.01218, 1
  %6422 = icmp slt i32 %6421, %6298
  br i1 %6422, label %6311, label %._crit_edge1226

._crit_edge1226:                                  ; preds = %6376, %6299
  %dtvvar0H.182.lcssa = phi double [ %dtvvar0H.1811229, %6299 ], [ %dtvvar0H.183, %6376 ]
  %6423 = add nuw nsw i32 %_j506.01228, 1
  %6424 = icmp slt i32 %6423, %6275
  br i1 %6424, label %6299, label %._crit_edge1231

._crit_edge1231:                                  ; preds = %._crit_edge1226, %.preheader861
  %dtvvar0H.181.lcssa = phi double [ %dtvvar0H.1801235, %.preheader861 ], [ %dtvvar0H.182.lcssa, %._crit_edge1226 ]
  %6425 = add nuw nsw i32 %_k507.01233, 1
  %6426 = icmp slt i32 %6425, %6272
  br i1 %6426, label %.preheader861, label %.loopexit927

.loopexit927:                                     ; preds = %._crit_edge1231, %.preheader926, %.loopexit928
  %dtvvar0H.184 = phi double [ %dtvvar0H.179, %.loopexit928 ], [ %dtvvar0H.179, %.preheader926 ], [ %dtvvar0H.181.lcssa, %._crit_edge1231 ]
  %6427 = bitcast i32* %98 to i64*
  %6428 = load i64* %6427, align 8
  %6429 = trunc i64 %6428 to i32
  %6430 = icmp eq i32 %6429, 0
  br i1 %6430, label %.loopexit925, label %6431

; <label>:6431                                    ; preds = %.loopexit927
  %6432 = load i32** %93, align 8, !tbaa !17
  %6433 = getelementptr inbounds i32* %6432, i64 2
  %6434 = load i32* %6433, align 4, !tbaa !7
  %6435 = icmp sgt i32 %6434, 0
  br i1 %6435, label %.lr.ph1256, label %.loopexit925

.lr.ph1256:                                       ; preds = %6431
  %6436 = load i32* %110, align 4, !tbaa !7
  %6437 = icmp sgt i32 %6436, 0
  %6438 = load i32* %111, align 4, !tbaa !7
  %6439 = shl nsw i32 %6438, 1
  %6440 = load double** %86, align 8, !tbaa !13
  %6441 = load double** %112, align 8, !tbaa !13
  %6442 = sext i32 %6438 to i64
  %6443 = load double* %108, align 16, !tbaa !15
  %6444 = fmul double %107, %6443
  %6445 = sext i32 %6439 to i64
  %6446 = load double* %109, align 16, !tbaa !15
  %6447 = sext i32 %6436 to i64
  br label %6449

.loopexit860:                                     ; preds = %.loopexit821, %6449
  %dtvvar0H.186.lcssa = phi double [ %dtvvar0H.1851253, %6449 ], [ %dtvvar0H.187.lcssa, %.loopexit821 ]
  %6448 = icmp sgt i32 %_k521.01254.in, 1
  br i1 %6448, label %6449, label %.loopexit925

; <label>:6449                                    ; preds = %.lr.ph1256, %.loopexit860
  %_k521.01254.in = phi i32 [ %6434, %.lr.ph1256 ], [ %_k521.01254, %.loopexit860 ]
  %dtvvar0H.1851253 = phi double [ %dtvvar0H.184, %.lr.ph1256 ], [ %dtvvar0H.186.lcssa, %.loopexit860 ]
  %_k521.01254 = add nsw i32 %_k521.01254.in, -1
  br i1 %6437, label %.lr.ph1250, label %.loopexit860

.lr.ph1250:                                       ; preds = %6449
  %6450 = load i32* %6432, align 4, !tbaa !7
  %6451 = add nsw i32 %6450, -1
  %6452 = getelementptr inbounds i32* %6432, i64 1
  %6453 = load i32* %6452, align 4, !tbaa !7
  %6454 = mul nsw i32 %6453, %_k521.01254
  %6455 = load i8**** %38, align 8, !tbaa !12
  %6456 = getelementptr inbounds i8*** %6455, i64 %indvars.iv2111
  %6457 = bitcast i8*** %6456 to float***
  %6458 = load float*** %6457, align 8, !tbaa !13
  %6459 = load float** %6458, align 8, !tbaa !13
  %6460 = getelementptr inbounds i8*** %6455, i64 %indvars.iv2113
  %6461 = load i8*** %6460, align 8, !tbaa !13
  %6462 = getelementptr inbounds i8** %6461, i64 %.
  %6463 = bitcast i8** %6462 to float**
  %6464 = load float** %6463, align 8, !tbaa !13
  %6465 = icmp sgt i32 %6450, 0
  %6466 = sext i32 %6454 to i64
  %6467 = sext i32 %6450 to i64
  %6468 = sext i32 %6451 to i64
  br label %6470

.loopexit821:                                     ; preds = %6543, %6470
  %dtvvar0H.187.lcssa = phi double [ %dtvvar0H.1861247, %6470 ], [ %dtvvar0H.188, %6543 ]
  %6469 = icmp sgt i64 %indvars.iv2089, 1
  br i1 %6469, label %6470, label %.loopexit860

; <label>:6470                                    ; preds = %.lr.ph1250, %.loopexit821
  %indvars.iv2089 = phi i64 [ %6447, %.lr.ph1250 ], [ %indvars.iv.next2090, %.loopexit821 ]
  %dtvvar0H.1861247 = phi double [ %dtvvar0H.1851253, %.lr.ph1250 ], [ %dtvvar0H.187.lcssa, %.loopexit821 ]
  %indvars.iv.next2090 = add nsw i64 %indvars.iv2089, -1
  %6471 = add nsw i64 %6466, %indvars.iv.next2090
  %6472 = mul nsw i64 %6471, %6467
  %6473 = add nsw i64 %6472, %6468
  br i1 %6465, label %.lr.ph1244, label %.loopexit821

.lr.ph1244:                                       ; preds = %6470
  %6474 = getelementptr inbounds float* %6464, i64 %6473
  %6475 = getelementptr inbounds float* %6459, i64 %6473
  %6476 = getelementptr inbounds double* %6441, i64 %6473
  %6477 = getelementptr inbounds double* %6440, i64 %6473
  br label %6478

; <label>:6478                                    ; preds = %.lr.ph1244, %6543
  %dtvvar0H.1871242 = phi double [ %dtvvar0H.1861247, %.lr.ph1244 ], [ %dtvvar0H.188, %6543 ]
  %_from529.01241 = phi float* [ %6474, %.lr.ph1244 ], [ %6587, %6543 ]
  %_to528.01240 = phi float* [ %6475, %.lr.ph1244 ], [ %6586, %6543 ]
  %_xyz527.01239 = phi double* [ %6476, %.lr.ph1244 ], [ %6585, %6543 ]
  %_radius526.01238 = phi double* [ %6477, %.lr.ph1244 ], [ %6584, %6543 ]
  %_i519.01237 = phi i32 [ %6451, %.lr.ph1244 ], [ %6588, %6543 ]
  %6479 = load double* %_radius526.01238, align 8, !tbaa !15
  %6480 = getelementptr inbounds double* %_radius526.01238, i64 %6442
  %6481 = load double* %6480, align 8, !tbaa !15
  %6482 = insertelement <2 x double> undef, double %6481, i32 0
  %6483 = insertelement <2 x double> %6482, double %6479, i32 1
  %6484 = fdiv <2 x double> <double 1.000000e+00, double 1.000000e+00>, %6483
  %6485 = load double* %_xyz527.01239, align 8, !tbaa !15
  br i1 %105, label %6487, label %._crit_edge2234

._crit_edge2234:                                  ; preds = %6478
  %.phi.trans.insert2236 = getelementptr inbounds double* %_xyz527.01239, i64 %6442
  %.pre2237 = load double* %.phi.trans.insert2236, align 8, !tbaa !15
  %.phi.trans.insert2238 = getelementptr inbounds float* %_to528.01240, i64 %6442
  %.pre2239 = load float* %.phi.trans.insert2238, align 4, !tbaa !26
  %.phi.trans.insert2240 = getelementptr inbounds float* %_from529.01241, i64 %6442
  %.pre2241 = load float* %.phi.trans.insert2240, align 4, !tbaa !26
  %6486 = fmul <2 x double> %6484, %6484
  br label %6543

; <label>:6487                                    ; preds = %6478
  %6488 = fmul <2 x double> %6484, %6484
  %6489 = extractelement <2 x double> %6488, i32 1
  %6490 = fmul double %6489, %6485
  %6491 = getelementptr inbounds double* %_xyz527.01239, i64 %6442
  %6492 = load double* %6491, align 8, !tbaa !15
  %6493 = extractelement <2 x double> %6488, i32 0
  %6494 = fmul double %6493, %6492
  %6495 = fadd double %6490, %6494
  %6496 = fmul double %6444, %6495
  %6497 = fadd double %6496, 1.000000e+00
  %6498 = fsub double 1.000000e+00, %6496
  %6499 = fdiv double %6497, %6498
  %6500 = getelementptr inbounds float* %_to528.01240, i64 %6442
  %6501 = load float* %6500, align 4, !tbaa !26
  %6502 = getelementptr inbounds float* %_to528.01240, i64 %6445
  %6503 = load float* %6502, align 4, !tbaa !26
  %6504 = fadd float %6501, %6503
  %6505 = getelementptr inbounds float* %_from529.01241, i64 %6442
  %6506 = load float* %6505, align 4, !tbaa !26
  %6507 = fadd float %6504, %6506
  %6508 = getelementptr inbounds float* %_from529.01241, i64 %6445
  %6509 = load float* %6508, align 4, !tbaa !26
  %6510 = fadd float %6507, %6509
  %6511 = fpext float %6510 to double
  %6512 = fmul double %6511, 2.500000e-01
  %6513 = fsub double %6512, %var0
  %6514 = fmul double %32, %6513
  %6515 = fsub float %6501, %6506
  %6516 = fpext float %6515 to double
  %6517 = fmul double %6481, %6516
  %6518 = getelementptr inbounds double* %_radius526.01238, i64 %6445
  %6519 = load double* %6518, align 8, !tbaa !15
  %6520 = fsub float %6503, %6509
  %6521 = fpext float %6520 to double
  %6522 = fmul double %6519, %6521
  %6523 = fadd double %6517, %6522
  %6524 = fmul double %6523, 5.000000e-01
  %6525 = fadd double %6514, %6524
  %6526 = fsub float %6503, %6501
  %6527 = fadd float %6526, %6509
  %6528 = fsub float %6527, %6506
  %6529 = fpext float %6528 to double
  %6530 = fmul double %6529, 2.500000e-01
  %6531 = fmul double %6446, %6530
  %6532 = fmul double %6481, %6481
  %6533 = fdiv double %6532, %6492
  %6534 = fmul double %6519, %6519
  %6535 = getelementptr inbounds double* %_xyz527.01239, i64 %6445
  %6536 = load double* %6535, align 8, !tbaa !15
  %6537 = fdiv double %6534, %6536
  %6538 = fadd double %6533, %6537
  %6539 = fmul double %6531, %6538
  %6540 = fadd double %6525, %6539
  %6541 = fmul double %6499, %6540
  %6542 = fadd double %34, %6541
  br label %6543

; <label>:6543                                    ; preds = %._crit_edge2234, %6487
  %6544 = phi float [ %.pre2241, %._crit_edge2234 ], [ %6506, %6487 ]
  %6545 = phi float [ %.pre2239, %._crit_edge2234 ], [ %6501, %6487 ]
  %6546 = phi double [ %.pre2237, %._crit_edge2234 ], [ %6492, %6487 ]
  %dtvvar0H.188 = phi double [ %dtvvar0H.1871242, %._crit_edge2234 ], [ %6542, %6487 ]
  %6547 = phi <2 x double> [ %6486, %._crit_edge2234 ], [ %6488, %6487 ]
  %6548 = extractelement <2 x double> %6547, i32 1
  %6549 = fmul double %6548, %6485
  %6550 = extractelement <2 x double> %6547, i32 0
  %6551 = fmul double %6550, %6546
  %6552 = fadd double %6549, %6551
  %6553 = fmul double %dtvvar0H.188, %6552
  %6554 = fpext float %6545 to double
  %6555 = extractelement <2 x double> %6484, i32 0
  %6556 = fmul double %6555, %6546
  %6557 = fmul double %33, %6555
  %6558 = fadd double %6557, 1.000000e+00
  %6559 = fmul double %6558, %6556
  %6560 = fadd double %6446, %6559
  %6561 = fmul double %6554, %6560
  %6562 = fsub double %6553, %6561
  %6563 = load float* %_from529.01241, align 4, !tbaa !26
  %6564 = fpext float %6563 to double
  %6565 = extractelement <2 x double> %6484, i32 1
  %6566 = fmul double %6565, %6485
  %6567 = fmul double %33, %6565
  %6568 = fsub double 1.000000e+00, %6567
  %6569 = fmul double %6568, %6566
  %6570 = fadd double %6569, %6446
  %6571 = fmul double %6570, %6564
  %6572 = fadd double %6562, %6571
  %6573 = fpext float %6544 to double
  %6574 = fsub double 1.000000e+00, %6557
  %6575 = fmul double %6574, %6556
  %6576 = fsub double %6446, %6575
  %6577 = fmul double %6576, %6573
  %6578 = fsub double %6572, %6577
  %6579 = fadd double %6567, 1.000000e+00
  %6580 = fmul double %6579, %6566
  %6581 = fsub double %6580, %6446
  %6582 = fdiv double %6578, %6581
  %6583 = fptrunc double %6582 to float
  store float %6583, float* %_to528.01240, align 4, !tbaa !26
  %6584 = getelementptr inbounds double* %_radius526.01238, i64 -1
  %6585 = getelementptr inbounds double* %_xyz527.01239, i64 -1
  %6586 = getelementptr inbounds float* %_to528.01240, i64 -1
  %6587 = getelementptr inbounds float* %_from529.01241, i64 -1
  %6588 = add nsw i32 %_i519.01237, -1
  %6589 = icmp sgt i32 %_i519.01237, 0
  br i1 %6589, label %6478, label %.loopexit821

.loopexit925:                                     ; preds = %.loopexit860, %6431, %.loopexit927
  %dtvvar0H.189 = phi double [ %dtvvar0H.184, %.loopexit927 ], [ %dtvvar0H.184, %6431 ], [ %dtvvar0H.186.lcssa, %.loopexit860 ]
  %6590 = icmp ult i64 %6428, 4294967296
  br i1 %6590, label %.loopexit924, label %.preheader923

.preheader923:                                    ; preds = %.loopexit925
  %6591 = load i32** %93, align 8, !tbaa !17
  %6592 = getelementptr inbounds i32* %6591, i64 2
  %6593 = load i32* %6592, align 4, !tbaa !7
  %6594 = icmp sgt i32 %6593, 0
  br i1 %6594, label %.lr.ph1277, label %.loopexit924

.lr.ph1277:                                       ; preds = %.preheader923
  %6595 = load i32* %110, align 4, !tbaa !7
  %6596 = getelementptr inbounds i32* %6591, i64 1
  %6597 = load i32* %6596, align 4, !tbaa !7
  %6598 = load i32* %111, align 4, !tbaa !7
  %6599 = sub nsw i32 0, %6598
  %6600 = mul nsw i32 %6598, -2
  %6601 = load double** %86, align 8, !tbaa !13
  %6602 = load double** %112, align 8, !tbaa !13
  %6603 = sext i32 %6599 to i64
  %6604 = load double* %108, align 16, !tbaa !15
  %6605 = fmul double %107, %6604
  %6606 = sext i32 %6600 to i64
  %6607 = load double* %109, align 16, !tbaa !15
  br label %6608

; <label>:6608                                    ; preds = %.lr.ph1277, %._crit_edge1272
  %dtvvar0H.1901276 = phi double [ %dtvvar0H.189, %.lr.ph1277 ], [ %dtvvar0H.191.lcssa, %._crit_edge1272 ]
  %_k535.01274 = phi i32 [ 0, %.lr.ph1277 ], [ %6746, %._crit_edge1272 ]
  %6609 = icmp sgt i32 %6595, 0
  br i1 %6609, label %.lr.ph1271, label %._crit_edge1272

.lr.ph1271:                                       ; preds = %6608
  %6610 = sub nsw i32 %6597, %6595
  %6611 = load i8**** %38, align 8, !tbaa !12
  %6612 = getelementptr inbounds i8*** %6611, i64 %indvars.iv2111
  %6613 = bitcast i8*** %6612 to float***
  %6614 = load float*** %6613, align 8, !tbaa !13
  %6615 = load float** %6614, align 8, !tbaa !13
  %6616 = getelementptr inbounds i8*** %6611, i64 %indvars.iv2113
  %6617 = load i8*** %6616, align 8, !tbaa !13
  %6618 = getelementptr inbounds i8** %6617, i64 %.
  %6619 = bitcast i8** %6618 to float**
  %6620 = load float** %6619, align 8, !tbaa !13
  %6621 = load i32* %6591, align 4, !tbaa !7
  %6622 = icmp sgt i32 %6621, 0
  br label %6623

; <label>:6623                                    ; preds = %.lr.ph1271, %._crit_edge1266
  %dtvvar0H.1911269 = phi double [ %dtvvar0H.1901276, %.lr.ph1271 ], [ %dtvvar0H.192.lcssa, %._crit_edge1266 ]
  %_j534.01268 = phi i32 [ %6610, %.lr.ph1271 ], [ %6744, %._crit_edge1266 ]
  %6624 = mul nsw i32 %6597, %_k535.01274
  %6625 = add nsw i32 %6624, %_j534.01268
  %6626 = mul nsw i32 %6621, %6625
  %6627 = sext i32 %6626 to i64
  br i1 %6622, label %.lr.ph1265, label %._crit_edge1266

.lr.ph1265:                                       ; preds = %6623
  %6628 = getelementptr inbounds float* %6620, i64 %6627
  %6629 = getelementptr inbounds float* %6615, i64 %6627
  %6630 = getelementptr inbounds double* %6602, i64 %6627
  %6631 = getelementptr inbounds double* %6601, i64 %6627
  br label %6632

; <label>:6632                                    ; preds = %.lr.ph1265, %6697
  %dtvvar0H.1921263 = phi double [ %dtvvar0H.1911269, %.lr.ph1265 ], [ %dtvvar0H.193, %6697 ]
  %_from543.01262 = phi float* [ %6628, %.lr.ph1265 ], [ %6741, %6697 ]
  %_to542.01261 = phi float* [ %6629, %.lr.ph1265 ], [ %6740, %6697 ]
  %_xyz541.01260 = phi double* [ %6630, %.lr.ph1265 ], [ %6739, %6697 ]
  %_radius540.01259 = phi double* [ %6631, %.lr.ph1265 ], [ %6738, %6697 ]
  %_i533.01258 = phi i32 [ 0, %.lr.ph1265 ], [ %6742, %6697 ]
  %6633 = load double* %_radius540.01259, align 8, !tbaa !15
  %6634 = getelementptr inbounds double* %_radius540.01259, i64 %6603
  %6635 = load double* %6634, align 8, !tbaa !15
  %6636 = insertelement <2 x double> undef, double %6635, i32 0
  %6637 = insertelement <2 x double> %6636, double %6633, i32 1
  %6638 = fdiv <2 x double> <double 1.000000e+00, double 1.000000e+00>, %6637
  %6639 = load double* %_xyz541.01260, align 8, !tbaa !15
  br i1 %105, label %6641, label %._crit_edge2242

._crit_edge2242:                                  ; preds = %6632
  %.phi.trans.insert2244 = getelementptr inbounds double* %_xyz541.01260, i64 %6603
  %.pre2245 = load double* %.phi.trans.insert2244, align 8, !tbaa !15
  %.phi.trans.insert2246 = getelementptr inbounds float* %_to542.01261, i64 %6603
  %.pre2247 = load float* %.phi.trans.insert2246, align 4, !tbaa !26
  %.phi.trans.insert2248 = getelementptr inbounds float* %_from543.01262, i64 %6603
  %.pre2249 = load float* %.phi.trans.insert2248, align 4, !tbaa !26
  %6640 = fmul <2 x double> %6638, %6638
  br label %6697

; <label>:6641                                    ; preds = %6632
  %6642 = fmul <2 x double> %6638, %6638
  %6643 = extractelement <2 x double> %6642, i32 1
  %6644 = fmul double %6643, %6639
  %6645 = getelementptr inbounds double* %_xyz541.01260, i64 %6603
  %6646 = load double* %6645, align 8, !tbaa !15
  %6647 = extractelement <2 x double> %6642, i32 0
  %6648 = fmul double %6647, %6646
  %6649 = fadd double %6644, %6648
  %6650 = fmul double %6605, %6649
  %6651 = fsub double 1.000000e+00, %6650
  %6652 = fadd double %6650, 1.000000e+00
  %6653 = fdiv double %6651, %6652
  %6654 = getelementptr inbounds float* %_to542.01261, i64 %6603
  %6655 = load float* %6654, align 4, !tbaa !26
  %6656 = getelementptr inbounds float* %_to542.01261, i64 %6606
  %6657 = load float* %6656, align 4, !tbaa !26
  %6658 = fadd float %6655, %6657
  %6659 = getelementptr inbounds float* %_from543.01262, i64 %6603
  %6660 = load float* %6659, align 4, !tbaa !26
  %6661 = fadd float %6658, %6660
  %6662 = getelementptr inbounds float* %_from543.01262, i64 %6606
  %6663 = load float* %6662, align 4, !tbaa !26
  %6664 = fadd float %6661, %6663
  %6665 = fpext float %6664 to double
  %6666 = fmul double %6665, 2.500000e-01
  %6667 = fsub double %6666, %var0
  %6668 = fmul double %32, %6667
  %6669 = fsub float %6655, %6660
  %6670 = fpext float %6669 to double
  %6671 = fmul double %6635, %6670
  %6672 = getelementptr inbounds double* %_radius540.01259, i64 %6606
  %6673 = load double* %6672, align 8, !tbaa !15
  %6674 = fsub float %6657, %6663
  %6675 = fpext float %6674 to double
  %6676 = fmul double %6673, %6675
  %6677 = fadd double %6671, %6676
  %6678 = fmul double %6677, 5.000000e-01
  %6679 = fadd double %6668, %6678
  %6680 = fsub float %6655, %6657
  %6681 = fadd float %6680, %6660
  %6682 = fsub float %6681, %6663
  %6683 = fpext float %6682 to double
  %6684 = fmul double %6683, 2.500000e-01
  %6685 = fmul double %6607, %6684
  %6686 = fmul double %6635, %6635
  %6687 = fdiv double %6686, %6646
  %6688 = fmul double %6673, %6673
  %6689 = getelementptr inbounds double* %_xyz541.01260, i64 %6606
  %6690 = load double* %6689, align 8, !tbaa !15
  %6691 = fdiv double %6688, %6690
  %6692 = fadd double %6687, %6691
  %6693 = fmul double %6685, %6692
  %6694 = fadd double %6679, %6693
  %6695 = fmul double %6653, %6694
  %6696 = fadd double %34, %6695
  br label %6697

; <label>:6697                                    ; preds = %._crit_edge2242, %6641
  %6698 = phi float [ %.pre2249, %._crit_edge2242 ], [ %6660, %6641 ]
  %6699 = phi float [ %.pre2247, %._crit_edge2242 ], [ %6655, %6641 ]
  %6700 = phi double [ %.pre2245, %._crit_edge2242 ], [ %6646, %6641 ]
  %dtvvar0H.193 = phi double [ %dtvvar0H.1921263, %._crit_edge2242 ], [ %6696, %6641 ]
  %6701 = phi <2 x double> [ %6640, %._crit_edge2242 ], [ %6642, %6641 ]
  %6702 = extractelement <2 x double> %6701, i32 1
  %6703 = fmul double %6702, %6639
  %6704 = extractelement <2 x double> %6701, i32 0
  %6705 = fmul double %6704, %6700
  %6706 = fadd double %6703, %6705
  %6707 = fmul double %dtvvar0H.193, %6706
  %6708 = fpext float %6699 to double
  %6709 = extractelement <2 x double> %6638, i32 0
  %6710 = fmul double %6709, %6700
  %6711 = fmul double %33, %6709
  %6712 = fadd double %6711, 1.000000e+00
  %6713 = fmul double %6712, %6710
  %6714 = fsub double %6607, %6713
  %6715 = fmul double %6708, %6714
  %6716 = fadd double %6707, %6715
  %6717 = load float* %_from543.01262, align 4, !tbaa !26
  %6718 = fpext float %6717 to double
  %6719 = extractelement <2 x double> %6638, i32 1
  %6720 = fmul double %6719, %6639
  %6721 = fmul double %33, %6719
  %6722 = fsub double 1.000000e+00, %6721
  %6723 = fmul double %6722, %6720
  %6724 = fsub double %6723, %6607
  %6725 = fmul double %6724, %6718
  %6726 = fadd double %6716, %6725
  %6727 = fpext float %6698 to double
  %6728 = fsub double 1.000000e+00, %6711
  %6729 = fmul double %6728, %6710
  %6730 = fadd double %6607, %6729
  %6731 = fmul double %6730, %6727
  %6732 = fadd double %6726, %6731
  %6733 = fadd double %6721, 1.000000e+00
  %6734 = fmul double %6733, %6720
  %6735 = fadd double %6734, %6607
  %6736 = fdiv double %6732, %6735
  %6737 = fptrunc double %6736 to float
  store float %6737, float* %_to542.01261, align 4, !tbaa !26
  %6738 = getelementptr inbounds double* %_radius540.01259, i64 1
  %6739 = getelementptr inbounds double* %_xyz541.01260, i64 1
  %6740 = getelementptr inbounds float* %_to542.01261, i64 1
  %6741 = getelementptr inbounds float* %_from543.01262, i64 1
  %6742 = add nuw nsw i32 %_i533.01258, 1
  %6743 = icmp slt i32 %6742, %6621
  br i1 %6743, label %6632, label %._crit_edge1266

._crit_edge1266:                                  ; preds = %6697, %6623
  %dtvvar0H.192.lcssa = phi double [ %dtvvar0H.1911269, %6623 ], [ %dtvvar0H.193, %6697 ]
  %6744 = add nsw i32 %_j534.01268, 1
  %6745 = icmp slt i32 %6744, %6597
  br i1 %6745, label %6623, label %._crit_edge1272

._crit_edge1272:                                  ; preds = %._crit_edge1266, %6608
  %dtvvar0H.191.lcssa = phi double [ %dtvvar0H.1901276, %6608 ], [ %dtvvar0H.192.lcssa, %._crit_edge1266 ]
  %6746 = add nuw nsw i32 %_k535.01274, 1
  %6747 = icmp slt i32 %6746, %6593
  br i1 %6747, label %6608, label %.loopexit924

.loopexit924:                                     ; preds = %._crit_edge1272, %.preheader923, %.loopexit925
  %dtvvar0H.194 = phi double [ %dtvvar0H.189, %.loopexit925 ], [ %dtvvar0H.189, %.preheader923 ], [ %dtvvar0H.191.lcssa, %._crit_edge1272 ]
  %6748 = bitcast i32* %100 to i64*
  %6749 = load i64* %6748, align 16
  %6750 = trunc i64 %6749 to i32
  %6751 = icmp eq i32 %6750, 0
  br i1 %6751, label %.loopexit922, label %6752

; <label>:6752                                    ; preds = %.loopexit924
  %6753 = load i32* %102, align 4, !tbaa !7
  %6754 = icmp sgt i32 %6753, 0
  br i1 %6754, label %.lr.ph1298, label %.loopexit922

.lr.ph1298:                                       ; preds = %6752
  %6755 = load i32** %93, align 8, !tbaa !17
  %6756 = getelementptr inbounds i32* %6755, i64 1
  %6757 = load i32* %6756, align 4, !tbaa !7
  %6758 = icmp sgt i32 %6757, 0
  %6759 = load i32* %103, align 4, !tbaa !7
  %6760 = shl nsw i32 %6759, 1
  %6761 = load double** %86, align 8, !tbaa !13
  %6762 = load double** %104, align 16, !tbaa !13
  %6763 = sext i32 %6759 to i64
  %6764 = load double* %108, align 16, !tbaa !15
  %6765 = fmul double %107, %6764
  %6766 = sext i32 %6760 to i64
  %6767 = load double* %109, align 16, !tbaa !15
  %6768 = sext i32 %6757 to i64
  br label %6770

.loopexit859:                                     ; preds = %.loopexit820, %6770
  %dtvvar0H.196.lcssa = phi double [ %dtvvar0H.1951295, %6770 ], [ %dtvvar0H.197.lcssa, %.loopexit820 ]
  %6769 = icmp sgt i32 %_k549.01296.in, 1
  br i1 %6769, label %6770, label %.loopexit922

; <label>:6770                                    ; preds = %.lr.ph1298, %.loopexit859
  %_k549.01296.in = phi i32 [ %6753, %.lr.ph1298 ], [ %_k549.01296, %.loopexit859 ]
  %dtvvar0H.1951295 = phi double [ %dtvvar0H.194, %.lr.ph1298 ], [ %dtvvar0H.196.lcssa, %.loopexit859 ]
  %_k549.01296 = add nsw i32 %_k549.01296.in, -1
  br i1 %6758, label %.lr.ph1292, label %.loopexit859

.lr.ph1292:                                       ; preds = %6770
  %6771 = load i32* %6755, align 4, !tbaa !7
  %6772 = add nsw i32 %6771, -1
  %6773 = mul nsw i32 %6757, %_k549.01296
  %6774 = load i8**** %38, align 8, !tbaa !12
  %6775 = getelementptr inbounds i8*** %6774, i64 %indvars.iv2111
  %6776 = bitcast i8*** %6775 to float***
  %6777 = load float*** %6776, align 8, !tbaa !13
  %6778 = load float** %6777, align 8, !tbaa !13
  %6779 = getelementptr inbounds i8*** %6774, i64 %indvars.iv2113
  %6780 = load i8*** %6779, align 8, !tbaa !13
  %6781 = getelementptr inbounds i8** %6780, i64 %.
  %6782 = bitcast i8** %6781 to float**
  %6783 = load float** %6782, align 8, !tbaa !13
  %6784 = icmp sgt i32 %6771, 0
  %6785 = sext i32 %6773 to i64
  %6786 = sext i32 %6771 to i64
  %6787 = sext i32 %6772 to i64
  br label %6789

.loopexit820:                                     ; preds = %6862, %6789
  %dtvvar0H.197.lcssa = phi double [ %dtvvar0H.1961289, %6789 ], [ %dtvvar0H.198, %6862 ]
  %6788 = icmp sgt i64 %indvars.iv2091, 1
  br i1 %6788, label %6789, label %.loopexit859

; <label>:6789                                    ; preds = %.lr.ph1292, %.loopexit820
  %indvars.iv2091 = phi i64 [ %6768, %.lr.ph1292 ], [ %indvars.iv.next2092, %.loopexit820 ]
  %dtvvar0H.1961289 = phi double [ %dtvvar0H.1951295, %.lr.ph1292 ], [ %dtvvar0H.197.lcssa, %.loopexit820 ]
  %indvars.iv.next2092 = add nsw i64 %indvars.iv2091, -1
  %6790 = add nsw i64 %6785, %indvars.iv.next2092
  %6791 = mul nsw i64 %6790, %6786
  %6792 = add nsw i64 %6791, %6787
  br i1 %6784, label %.lr.ph1286, label %.loopexit820

.lr.ph1286:                                       ; preds = %6789
  %6793 = getelementptr inbounds float* %6783, i64 %6792
  %6794 = getelementptr inbounds float* %6778, i64 %6792
  %6795 = getelementptr inbounds double* %6762, i64 %6792
  %6796 = getelementptr inbounds double* %6761, i64 %6792
  br label %6797

; <label>:6797                                    ; preds = %.lr.ph1286, %6862
  %dtvvar0H.1971284 = phi double [ %dtvvar0H.1961289, %.lr.ph1286 ], [ %dtvvar0H.198, %6862 ]
  %_from557.01283 = phi float* [ %6793, %.lr.ph1286 ], [ %6906, %6862 ]
  %_to556.01282 = phi float* [ %6794, %.lr.ph1286 ], [ %6905, %6862 ]
  %_xyz555.01281 = phi double* [ %6795, %.lr.ph1286 ], [ %6904, %6862 ]
  %_radius554.01280 = phi double* [ %6796, %.lr.ph1286 ], [ %6903, %6862 ]
  %_i547.01279 = phi i32 [ %6772, %.lr.ph1286 ], [ %6907, %6862 ]
  %6798 = load double* %_radius554.01280, align 8, !tbaa !15
  %6799 = getelementptr inbounds double* %_radius554.01280, i64 %6763
  %6800 = load double* %6799, align 8, !tbaa !15
  %6801 = insertelement <2 x double> undef, double %6800, i32 0
  %6802 = insertelement <2 x double> %6801, double %6798, i32 1
  %6803 = fdiv <2 x double> <double 1.000000e+00, double 1.000000e+00>, %6802
  %6804 = load double* %_xyz555.01281, align 8, !tbaa !15
  br i1 %105, label %6806, label %._crit_edge2250

._crit_edge2250:                                  ; preds = %6797
  %.phi.trans.insert2252 = getelementptr inbounds double* %_xyz555.01281, i64 %6763
  %.pre2253 = load double* %.phi.trans.insert2252, align 8, !tbaa !15
  %.phi.trans.insert2254 = getelementptr inbounds float* %_to556.01282, i64 %6763
  %.pre2255 = load float* %.phi.trans.insert2254, align 4, !tbaa !26
  %.phi.trans.insert2256 = getelementptr inbounds float* %_from557.01283, i64 %6763
  %.pre2257 = load float* %.phi.trans.insert2256, align 4, !tbaa !26
  %6805 = fmul <2 x double> %6803, %6803
  br label %6862

; <label>:6806                                    ; preds = %6797
  %6807 = fmul <2 x double> %6803, %6803
  %6808 = extractelement <2 x double> %6807, i32 1
  %6809 = fmul double %6808, %6804
  %6810 = getelementptr inbounds double* %_xyz555.01281, i64 %6763
  %6811 = load double* %6810, align 8, !tbaa !15
  %6812 = extractelement <2 x double> %6807, i32 0
  %6813 = fmul double %6812, %6811
  %6814 = fadd double %6809, %6813
  %6815 = fmul double %6765, %6814
  %6816 = fadd double %6815, 1.000000e+00
  %6817 = fsub double 1.000000e+00, %6815
  %6818 = fdiv double %6816, %6817
  %6819 = getelementptr inbounds float* %_to556.01282, i64 %6763
  %6820 = load float* %6819, align 4, !tbaa !26
  %6821 = getelementptr inbounds float* %_to556.01282, i64 %6766
  %6822 = load float* %6821, align 4, !tbaa !26
  %6823 = fadd float %6820, %6822
  %6824 = getelementptr inbounds float* %_from557.01283, i64 %6763
  %6825 = load float* %6824, align 4, !tbaa !26
  %6826 = fadd float %6823, %6825
  %6827 = getelementptr inbounds float* %_from557.01283, i64 %6766
  %6828 = load float* %6827, align 4, !tbaa !26
  %6829 = fadd float %6826, %6828
  %6830 = fpext float %6829 to double
  %6831 = fmul double %6830, 2.500000e-01
  %6832 = fsub double %6831, %var0
  %6833 = fmul double %32, %6832
  %6834 = fsub float %6820, %6825
  %6835 = fpext float %6834 to double
  %6836 = fmul double %6800, %6835
  %6837 = getelementptr inbounds double* %_radius554.01280, i64 %6766
  %6838 = load double* %6837, align 8, !tbaa !15
  %6839 = fsub float %6822, %6828
  %6840 = fpext float %6839 to double
  %6841 = fmul double %6838, %6840
  %6842 = fadd double %6836, %6841
  %6843 = fmul double %6842, 5.000000e-01
  %6844 = fadd double %6833, %6843
  %6845 = fsub float %6822, %6820
  %6846 = fadd float %6845, %6828
  %6847 = fsub float %6846, %6825
  %6848 = fpext float %6847 to double
  %6849 = fmul double %6848, 2.500000e-01
  %6850 = fmul double %6767, %6849
  %6851 = fmul double %6800, %6800
  %6852 = fdiv double %6851, %6811
  %6853 = fmul double %6838, %6838
  %6854 = getelementptr inbounds double* %_xyz555.01281, i64 %6766
  %6855 = load double* %6854, align 8, !tbaa !15
  %6856 = fdiv double %6853, %6855
  %6857 = fadd double %6852, %6856
  %6858 = fmul double %6850, %6857
  %6859 = fadd double %6844, %6858
  %6860 = fmul double %6818, %6859
  %6861 = fadd double %34, %6860
  br label %6862

; <label>:6862                                    ; preds = %._crit_edge2250, %6806
  %6863 = phi float [ %.pre2257, %._crit_edge2250 ], [ %6825, %6806 ]
  %6864 = phi float [ %.pre2255, %._crit_edge2250 ], [ %6820, %6806 ]
  %6865 = phi double [ %.pre2253, %._crit_edge2250 ], [ %6811, %6806 ]
  %dtvvar0H.198 = phi double [ %dtvvar0H.1971284, %._crit_edge2250 ], [ %6861, %6806 ]
  %6866 = phi <2 x double> [ %6805, %._crit_edge2250 ], [ %6807, %6806 ]
  %6867 = extractelement <2 x double> %6866, i32 1
  %6868 = fmul double %6867, %6804
  %6869 = extractelement <2 x double> %6866, i32 0
  %6870 = fmul double %6869, %6865
  %6871 = fadd double %6868, %6870
  %6872 = fmul double %dtvvar0H.198, %6871
  %6873 = fpext float %6864 to double
  %6874 = extractelement <2 x double> %6803, i32 0
  %6875 = fmul double %6874, %6865
  %6876 = fmul double %33, %6874
  %6877 = fadd double %6876, 1.000000e+00
  %6878 = fmul double %6877, %6875
  %6879 = fadd double %6767, %6878
  %6880 = fmul double %6873, %6879
  %6881 = fsub double %6872, %6880
  %6882 = load float* %_from557.01283, align 4, !tbaa !26
  %6883 = fpext float %6882 to double
  %6884 = extractelement <2 x double> %6803, i32 1
  %6885 = fmul double %6884, %6804
  %6886 = fmul double %33, %6884
  %6887 = fsub double 1.000000e+00, %6886
  %6888 = fmul double %6887, %6885
  %6889 = fadd double %6888, %6767
  %6890 = fmul double %6889, %6883
  %6891 = fadd double %6881, %6890
  %6892 = fpext float %6863 to double
  %6893 = fsub double 1.000000e+00, %6876
  %6894 = fmul double %6893, %6875
  %6895 = fsub double %6767, %6894
  %6896 = fmul double %6895, %6892
  %6897 = fsub double %6891, %6896
  %6898 = fadd double %6886, 1.000000e+00
  %6899 = fmul double %6898, %6885
  %6900 = fsub double %6899, %6767
  %6901 = fdiv double %6897, %6900
  %6902 = fptrunc double %6901 to float
  store float %6902, float* %_to556.01282, align 4, !tbaa !26
  %6903 = getelementptr inbounds double* %_radius554.01280, i64 -1
  %6904 = getelementptr inbounds double* %_xyz555.01281, i64 -1
  %6905 = getelementptr inbounds float* %_to556.01282, i64 -1
  %6906 = getelementptr inbounds float* %_from557.01283, i64 -1
  %6907 = add nsw i32 %_i547.01279, -1
  %6908 = icmp sgt i32 %_i547.01279, 0
  br i1 %6908, label %6797, label %.loopexit820

.loopexit922:                                     ; preds = %.loopexit859, %6752, %.loopexit924
  %dtvvar0H.199 = phi double [ %dtvvar0H.194, %.loopexit924 ], [ %dtvvar0H.194, %6752 ], [ %dtvvar0H.196.lcssa, %.loopexit859 ]
  %6909 = icmp ult i64 %6749, 4294967296
  br i1 %6909, label %.loopexit873, label %6910

; <label>:6910                                    ; preds = %.loopexit922
  %6911 = load i32* %102, align 4, !tbaa !7
  %6912 = icmp sgt i32 %6911, 0
  br i1 %6912, label %.preheader858.lr.ph, label %.loopexit873

.preheader858.lr.ph:                              ; preds = %6910
  %6913 = load i32** %93, align 8, !tbaa !17
  %6914 = getelementptr inbounds i32* %6913, i64 2
  %6915 = load i32* %6914, align 4, !tbaa !7
  %6916 = sub nsw i32 %6915, %6911
  %6917 = getelementptr inbounds i32* %6913, i64 1
  %6918 = load i32* %6917, align 4, !tbaa !7
  %6919 = icmp sgt i32 %6918, 0
  %6920 = load i32* %103, align 4, !tbaa !7
  %6921 = sub nsw i32 0, %6920
  %6922 = mul nsw i32 %6920, -2
  %6923 = load double** %86, align 8, !tbaa !13
  %6924 = load double** %104, align 16, !tbaa !13
  %6925 = sext i32 %6921 to i64
  %6926 = load double* %108, align 16, !tbaa !15
  %6927 = fmul double %107, %6926
  %6928 = sext i32 %6922 to i64
  %6929 = load double* %109, align 16, !tbaa !15
  br label %.preheader858

.preheader858:                                    ; preds = %.preheader858.lr.ph, %._crit_edge1313
  %dtvvar0H.2001317 = phi double [ %dtvvar0H.199, %.preheader858.lr.ph ], [ %dtvvar0H.201.lcssa, %._crit_edge1313 ]
  %_k563.01315 = phi i32 [ %6916, %.preheader858.lr.ph ], [ %7065, %._crit_edge1313 ]
  br i1 %6919, label %.lr.ph1312, label %._crit_edge1313

.lr.ph1312:                                       ; preds = %.preheader858
  %6930 = load i8**** %38, align 8, !tbaa !12
  %6931 = getelementptr inbounds i8*** %6930, i64 %indvars.iv2111
  %6932 = bitcast i8*** %6931 to float***
  %6933 = load float*** %6932, align 8, !tbaa !13
  %6934 = load float** %6933, align 8, !tbaa !13
  %6935 = getelementptr inbounds i8*** %6930, i64 %indvars.iv2113
  %6936 = load i8*** %6935, align 8, !tbaa !13
  %6937 = getelementptr inbounds i8** %6936, i64 %.
  %6938 = bitcast i8** %6937 to float**
  %6939 = load float** %6938, align 8, !tbaa !13
  %6940 = load i32* %6913, align 4, !tbaa !7
  %6941 = icmp sgt i32 %6940, 0
  br label %6942

; <label>:6942                                    ; preds = %.lr.ph1312, %._crit_edge1308
  %dtvvar0H.2011311 = phi double [ %dtvvar0H.2001317, %.lr.ph1312 ], [ %dtvvar0H.202.lcssa, %._crit_edge1308 ]
  %_j562.01310 = phi i32 [ 0, %.lr.ph1312 ], [ %7063, %._crit_edge1308 ]
  %6943 = mul nsw i32 %6918, %_k563.01315
  %6944 = add nsw i32 %6943, %_j562.01310
  %6945 = mul nsw i32 %6940, %6944
  %6946 = sext i32 %6945 to i64
  br i1 %6941, label %.lr.ph1307, label %._crit_edge1308

.lr.ph1307:                                       ; preds = %6942
  %6947 = getelementptr inbounds float* %6939, i64 %6946
  %6948 = getelementptr inbounds float* %6934, i64 %6946
  %6949 = getelementptr inbounds double* %6924, i64 %6946
  %6950 = getelementptr inbounds double* %6923, i64 %6946
  br label %6951

; <label>:6951                                    ; preds = %.lr.ph1307, %7016
  %dtvvar0H.2021305 = phi double [ %dtvvar0H.2011311, %.lr.ph1307 ], [ %dtvvar0H.203, %7016 ]
  %_from571.01304 = phi float* [ %6947, %.lr.ph1307 ], [ %7060, %7016 ]
  %_to570.01303 = phi float* [ %6948, %.lr.ph1307 ], [ %7059, %7016 ]
  %_xyz569.01302 = phi double* [ %6949, %.lr.ph1307 ], [ %7058, %7016 ]
  %_radius568.01301 = phi double* [ %6950, %.lr.ph1307 ], [ %7057, %7016 ]
  %_i561.01300 = phi i32 [ 0, %.lr.ph1307 ], [ %7061, %7016 ]
  %6952 = load double* %_radius568.01301, align 8, !tbaa !15
  %6953 = getelementptr inbounds double* %_radius568.01301, i64 %6925
  %6954 = load double* %6953, align 8, !tbaa !15
  %6955 = insertelement <2 x double> undef, double %6954, i32 0
  %6956 = insertelement <2 x double> %6955, double %6952, i32 1
  %6957 = fdiv <2 x double> <double 1.000000e+00, double 1.000000e+00>, %6956
  %6958 = load double* %_xyz569.01302, align 8, !tbaa !15
  br i1 %105, label %6960, label %._crit_edge2258

._crit_edge2258:                                  ; preds = %6951
  %.phi.trans.insert2260 = getelementptr inbounds double* %_xyz569.01302, i64 %6925
  %.pre2261 = load double* %.phi.trans.insert2260, align 8, !tbaa !15
  %.phi.trans.insert2262 = getelementptr inbounds float* %_to570.01303, i64 %6925
  %.pre2263 = load float* %.phi.trans.insert2262, align 4, !tbaa !26
  %.phi.trans.insert2264 = getelementptr inbounds float* %_from571.01304, i64 %6925
  %.pre2265 = load float* %.phi.trans.insert2264, align 4, !tbaa !26
  %6959 = fmul <2 x double> %6957, %6957
  br label %7016

; <label>:6960                                    ; preds = %6951
  %6961 = fmul <2 x double> %6957, %6957
  %6962 = extractelement <2 x double> %6961, i32 1
  %6963 = fmul double %6962, %6958
  %6964 = getelementptr inbounds double* %_xyz569.01302, i64 %6925
  %6965 = load double* %6964, align 8, !tbaa !15
  %6966 = extractelement <2 x double> %6961, i32 0
  %6967 = fmul double %6966, %6965
  %6968 = fadd double %6963, %6967
  %6969 = fmul double %6927, %6968
  %6970 = fsub double 1.000000e+00, %6969
  %6971 = fadd double %6969, 1.000000e+00
  %6972 = fdiv double %6970, %6971
  %6973 = getelementptr inbounds float* %_to570.01303, i64 %6925
  %6974 = load float* %6973, align 4, !tbaa !26
  %6975 = getelementptr inbounds float* %_to570.01303, i64 %6928
  %6976 = load float* %6975, align 4, !tbaa !26
  %6977 = fadd float %6974, %6976
  %6978 = getelementptr inbounds float* %_from571.01304, i64 %6925
  %6979 = load float* %6978, align 4, !tbaa !26
  %6980 = fadd float %6977, %6979
  %6981 = getelementptr inbounds float* %_from571.01304, i64 %6928
  %6982 = load float* %6981, align 4, !tbaa !26
  %6983 = fadd float %6980, %6982
  %6984 = fpext float %6983 to double
  %6985 = fmul double %6984, 2.500000e-01
  %6986 = fsub double %6985, %var0
  %6987 = fmul double %32, %6986
  %6988 = fsub float %6974, %6979
  %6989 = fpext float %6988 to double
  %6990 = fmul double %6954, %6989
  %6991 = getelementptr inbounds double* %_radius568.01301, i64 %6928
  %6992 = load double* %6991, align 8, !tbaa !15
  %6993 = fsub float %6976, %6982
  %6994 = fpext float %6993 to double
  %6995 = fmul double %6992, %6994
  %6996 = fadd double %6990, %6995
  %6997 = fmul double %6996, 5.000000e-01
  %6998 = fadd double %6987, %6997
  %6999 = fsub float %6974, %6976
  %7000 = fadd float %6999, %6979
  %7001 = fsub float %7000, %6982
  %7002 = fpext float %7001 to double
  %7003 = fmul double %7002, 2.500000e-01
  %7004 = fmul double %6929, %7003
  %7005 = fmul double %6954, %6954
  %7006 = fdiv double %7005, %6965
  %7007 = fmul double %6992, %6992
  %7008 = getelementptr inbounds double* %_xyz569.01302, i64 %6928
  %7009 = load double* %7008, align 8, !tbaa !15
  %7010 = fdiv double %7007, %7009
  %7011 = fadd double %7006, %7010
  %7012 = fmul double %7004, %7011
  %7013 = fadd double %6998, %7012
  %7014 = fmul double %6972, %7013
  %7015 = fadd double %34, %7014
  br label %7016

; <label>:7016                                    ; preds = %._crit_edge2258, %6960
  %7017 = phi float [ %.pre2265, %._crit_edge2258 ], [ %6979, %6960 ]
  %7018 = phi float [ %.pre2263, %._crit_edge2258 ], [ %6974, %6960 ]
  %7019 = phi double [ %.pre2261, %._crit_edge2258 ], [ %6965, %6960 ]
  %dtvvar0H.203 = phi double [ %dtvvar0H.2021305, %._crit_edge2258 ], [ %7015, %6960 ]
  %7020 = phi <2 x double> [ %6959, %._crit_edge2258 ], [ %6961, %6960 ]
  %7021 = extractelement <2 x double> %7020, i32 1
  %7022 = fmul double %7021, %6958
  %7023 = extractelement <2 x double> %7020, i32 0
  %7024 = fmul double %7023, %7019
  %7025 = fadd double %7022, %7024
  %7026 = fmul double %dtvvar0H.203, %7025
  %7027 = fpext float %7018 to double
  %7028 = extractelement <2 x double> %6957, i32 0
  %7029 = fmul double %7028, %7019
  %7030 = fmul double %33, %7028
  %7031 = fadd double %7030, 1.000000e+00
  %7032 = fmul double %7031, %7029
  %7033 = fsub double %6929, %7032
  %7034 = fmul double %7027, %7033
  %7035 = fadd double %7026, %7034
  %7036 = load float* %_from571.01304, align 4, !tbaa !26
  %7037 = fpext float %7036 to double
  %7038 = extractelement <2 x double> %6957, i32 1
  %7039 = fmul double %7038, %6958
  %7040 = fmul double %33, %7038
  %7041 = fsub double 1.000000e+00, %7040
  %7042 = fmul double %7041, %7039
  %7043 = fsub double %7042, %6929
  %7044 = fmul double %7043, %7037
  %7045 = fadd double %7035, %7044
  %7046 = fpext float %7017 to double
  %7047 = fsub double 1.000000e+00, %7030
  %7048 = fmul double %7047, %7029
  %7049 = fadd double %6929, %7048
  %7050 = fmul double %7049, %7046
  %7051 = fadd double %7045, %7050
  %7052 = fadd double %7040, 1.000000e+00
  %7053 = fmul double %7052, %7039
  %7054 = fadd double %7053, %6929
  %7055 = fdiv double %7051, %7054
  %7056 = fptrunc double %7055 to float
  store float %7056, float* %_to570.01303, align 4, !tbaa !26
  %7057 = getelementptr inbounds double* %_radius568.01301, i64 1
  %7058 = getelementptr inbounds double* %_xyz569.01302, i64 1
  %7059 = getelementptr inbounds float* %_to570.01303, i64 1
  %7060 = getelementptr inbounds float* %_from571.01304, i64 1
  %7061 = add nuw nsw i32 %_i561.01300, 1
  %7062 = icmp slt i32 %7061, %6940
  br i1 %7062, label %6951, label %._crit_edge1308

._crit_edge1308:                                  ; preds = %7016, %6942
  %dtvvar0H.202.lcssa = phi double [ %dtvvar0H.2011311, %6942 ], [ %dtvvar0H.203, %7016 ]
  %7063 = add nuw nsw i32 %_j562.01310, 1
  %7064 = icmp slt i32 %7063, %6918
  br i1 %7064, label %6942, label %._crit_edge1313

._crit_edge1313:                                  ; preds = %._crit_edge1308, %.preheader858
  %dtvvar0H.201.lcssa = phi double [ %dtvvar0H.2001317, %.preheader858 ], [ %dtvvar0H.202.lcssa, %._crit_edge1308 ]
  %7065 = add nsw i32 %_k563.01315, 1
  %7066 = icmp slt i32 %7065, %6915
  br i1 %7066, label %.preheader858, label %.loopexit873

; <label>:7067                                    ; preds = %177
  br i1 %96, label %7070, label %7068

; <label>:7068                                    ; preds = %7067
  %7069 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 1545, i8* getelementptr inbounds ([88 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([58 x i8]* @.str12, i64 0, i64 0), i32 %7) #5
  br label %.loopexit947

; <label>:7070                                    ; preds = %7067
  %7071 = bitcast [6 x i32]* %doBC to i64*
  %7072 = load i64* %7071, align 16
  %7073 = trunc i64 %7072 to i32
  %7074 = icmp eq i32 %7073, 0
  br i1 %7074, label %.loopexit936, label %7075

; <label>:7075                                    ; preds = %7070
  %7076 = load i32** %93, align 8, !tbaa !17
  %7077 = getelementptr inbounds i32* %7076, i64 2
  %7078 = load i32* %7077, align 4, !tbaa !7
  %7079 = icmp sgt i32 %7078, 0
  br i1 %7079, label %.lr.ph1094, label %.loopexit936

.lr.ph1094:                                       ; preds = %7075
  %7080 = getelementptr inbounds i32* %7076, i64 1
  %7081 = load i32* %7080, align 4, !tbaa !7
  %7082 = icmp sgt i32 %7081, 0
  %7083 = load i32* %113, align 4, !tbaa !7
  %7084 = shl nsw i32 %7083, 1
  %7085 = load i32* %114, align 4, !tbaa !7
  %7086 = add nsw i32 %7085, -1
  %7087 = load double** %86, align 8, !tbaa !13
  %7088 = load double** %115, align 16, !tbaa !13
  %7089 = icmp sgt i32 %7085, 0
  %7090 = sext i32 %7083 to i64
  %7091 = sext i32 %7084 to i64
  %7092 = sext i32 %7081 to i64
  %7093 = sext i32 %7086 to i64
  br label %7095

.loopexit867:                                     ; preds = %.loopexit825, %7095
  %dtvvar0H.205.lcssa = phi double [ %dtvvar0H.2041091, %7095 ], [ %dtvvar0H.206.lcssa, %.loopexit825 ]
  %7094 = icmp sgt i32 %_k577.01092.in, 1
  br i1 %7094, label %7095, label %.loopexit936

; <label>:7095                                    ; preds = %.lr.ph1094, %.loopexit867
  %_k577.01092.in = phi i32 [ %7078, %.lr.ph1094 ], [ %_k577.01092, %.loopexit867 ]
  %dtvvar0H.2041091 = phi double [ %dtvvar0H.02051, %.lr.ph1094 ], [ %dtvvar0H.205.lcssa, %.loopexit867 ]
  %_k577.01092 = add nsw i32 %_k577.01092.in, -1
  br i1 %7082, label %.lr.ph1088, label %.loopexit867

.lr.ph1088:                                       ; preds = %7095
  %7096 = load i32* %7076, align 4, !tbaa !7
  %7097 = mul nsw i32 %7081, %_k577.01092
  %7098 = load i8**** %38, align 8, !tbaa !12
  %7099 = getelementptr inbounds i8*** %7098, i64 %indvars.iv2111
  %7100 = bitcast i8*** %7099 to double***
  %7101 = load double*** %7100, align 8, !tbaa !13
  %7102 = load double** %7101, align 8, !tbaa !13
  %7103 = getelementptr inbounds i8*** %7098, i64 %indvars.iv2113
  %7104 = load i8*** %7103, align 8, !tbaa !13
  %7105 = getelementptr inbounds i8** %7104, i64 %.
  %7106 = bitcast i8** %7105 to double**
  %7107 = load double** %7106, align 8, !tbaa !13
  %7108 = sext i32 %7097 to i64
  %7109 = sext i32 %7096 to i64
  br label %7111

.loopexit825:                                     ; preds = %7183, %7111
  %dtvvar0H.206.lcssa = phi double [ %dtvvar0H.2051085, %7111 ], [ %dtvvar0H.207, %7183 ]
  %7110 = icmp sgt i64 %indvars.iv2081, 1
  br i1 %7110, label %7111, label %.loopexit867

; <label>:7111                                    ; preds = %.lr.ph1088, %.loopexit825
  %indvars.iv2081 = phi i64 [ %7092, %.lr.ph1088 ], [ %indvars.iv.next2082, %.loopexit825 ]
  %dtvvar0H.2051085 = phi double [ %dtvvar0H.2041091, %.lr.ph1088 ], [ %dtvvar0H.206.lcssa, %.loopexit825 ]
  %indvars.iv.next2082 = add nsw i64 %indvars.iv2081, -1
  %7112 = add nsw i64 %7108, %indvars.iv.next2082
  %7113 = mul nsw i64 %7112, %7109
  %7114 = add nsw i64 %7113, %7093
  br i1 %7089, label %.lr.ph1082, label %.loopexit825

.lr.ph1082:                                       ; preds = %7111
  %7115 = getelementptr inbounds double* %7107, i64 %7114
  %7116 = getelementptr inbounds double* %7102, i64 %7114
  %7117 = getelementptr inbounds double* %7088, i64 %7114
  %7118 = getelementptr inbounds double* %7087, i64 %7114
  br label %7119

; <label>:7119                                    ; preds = %.lr.ph1082, %7183
  %dtvvar0H.2061080 = phi double [ %dtvvar0H.2051085, %.lr.ph1082 ], [ %dtvvar0H.207, %7183 ]
  %_from585.01079 = phi double* [ %7115, %.lr.ph1082 ], [ %7225, %7183 ]
  %_to584.01078 = phi double* [ %7116, %.lr.ph1082 ], [ %7224, %7183 ]
  %_xyz583.01077 = phi double* [ %7117, %.lr.ph1082 ], [ %7223, %7183 ]
  %_radius582.01076 = phi double* [ %7118, %.lr.ph1082 ], [ %7222, %7183 ]
  %_i575.01075 = phi i32 [ %7086, %.lr.ph1082 ], [ %7226, %7183 ]
  %7120 = load double* %_radius582.01076, align 8, !tbaa !15
  %7121 = getelementptr inbounds double* %_radius582.01076, i64 %7090
  %7122 = load double* %7121, align 8, !tbaa !15
  %7123 = insertelement <2 x double> undef, double %7122, i32 0
  %7124 = insertelement <2 x double> %7123, double %7120, i32 1
  %7125 = fdiv <2 x double> <double 1.000000e+00, double 1.000000e+00>, %7124
  br i1 %105, label %7127, label %._crit_edge2164

._crit_edge2164:                                  ; preds = %7119
  %.pre2165 = load double* %_xyz583.01077, align 8, !tbaa !15
  %.phi.trans.insert2166 = getelementptr inbounds double* %_xyz583.01077, i64 %7090
  %.pre2167 = load double* %.phi.trans.insert2166, align 8, !tbaa !15
  %.phi.trans.insert2168 = getelementptr inbounds double* %_to584.01078, i64 %7090
  %.pre2169 = load double* %.phi.trans.insert2168, align 8, !tbaa !15
  %.pre2170 = load double* %109, align 16, !tbaa !15
  %.phi.trans.insert2171 = getelementptr inbounds double* %_from585.01079, i64 %7090
  %.pre2172 = load double* %.phi.trans.insert2171, align 8, !tbaa !15
  %7126 = fmul <2 x double> %7125, %7125
  br label %7183

; <label>:7127                                    ; preds = %7119
  %7128 = load double* %108, align 16, !tbaa !15
  %7129 = fmul double %107, %7128
  %7130 = load double* %_xyz583.01077, align 8, !tbaa !15
  %7131 = fmul <2 x double> %7125, %7125
  %7132 = extractelement <2 x double> %7131, i32 1
  %7133 = fmul double %7132, %7130
  %7134 = getelementptr inbounds double* %_xyz583.01077, i64 %7090
  %7135 = load double* %7134, align 8, !tbaa !15
  %7136 = extractelement <2 x double> %7131, i32 0
  %7137 = fmul double %7136, %7135
  %7138 = fadd double %7133, %7137
  %7139 = fmul double %7129, %7138
  %7140 = fadd double %7139, 1.000000e+00
  %7141 = fsub double 1.000000e+00, %7139
  %7142 = fdiv double %7140, %7141
  %7143 = getelementptr inbounds double* %_to584.01078, i64 %7090
  %7144 = load double* %7143, align 8, !tbaa !15
  %7145 = getelementptr inbounds double* %_to584.01078, i64 %7091
  %7146 = load double* %7145, align 8, !tbaa !15
  %7147 = fadd double %7144, %7146
  %7148 = getelementptr inbounds double* %_from585.01079, i64 %7090
  %7149 = load double* %7148, align 8, !tbaa !15
  %7150 = fadd double %7147, %7149
  %7151 = getelementptr inbounds double* %_from585.01079, i64 %7091
  %7152 = load double* %7151, align 8, !tbaa !15
  %7153 = fadd double %7150, %7152
  %7154 = fmul double %7153, 2.500000e-01
  %7155 = fsub double %7154, %var0
  %7156 = fmul double %32, %7155
  %7157 = fsub double %7144, %7149
  %7158 = fmul double %7122, %7157
  %7159 = getelementptr inbounds double* %_radius582.01076, i64 %7091
  %7160 = load double* %7159, align 8, !tbaa !15
  %7161 = fsub double %7146, %7152
  %7162 = fmul double %7160, %7161
  %7163 = fadd double %7158, %7162
  %7164 = fmul double %7163, 5.000000e-01
  %7165 = fadd double %7156, %7164
  %7166 = fsub double %7146, %7144
  %7167 = fadd double %7166, %7152
  %7168 = fsub double %7167, %7149
  %7169 = fmul double %7168, 2.500000e-01
  %7170 = load double* %109, align 16, !tbaa !15
  %7171 = fmul double %7170, %7169
  %7172 = fmul double %7122, %7122
  %7173 = fdiv double %7172, %7135
  %7174 = fmul double %7160, %7160
  %7175 = getelementptr inbounds double* %_xyz583.01077, i64 %7091
  %7176 = load double* %7175, align 8, !tbaa !15
  %7177 = fdiv double %7174, %7176
  %7178 = fadd double %7173, %7177
  %7179 = fmul double %7171, %7178
  %7180 = fadd double %7165, %7179
  %7181 = fmul double %7142, %7180
  %7182 = fadd double %34, %7181
  br label %7183

; <label>:7183                                    ; preds = %._crit_edge2164, %7127
  %7184 = phi double [ %.pre2172, %._crit_edge2164 ], [ %7149, %7127 ]
  %7185 = phi double [ %.pre2170, %._crit_edge2164 ], [ %7170, %7127 ]
  %7186 = phi double [ %.pre2169, %._crit_edge2164 ], [ %7144, %7127 ]
  %7187 = phi double [ %.pre2167, %._crit_edge2164 ], [ %7135, %7127 ]
  %7188 = phi double [ %.pre2165, %._crit_edge2164 ], [ %7130, %7127 ]
  %dtvvar0H.207 = phi double [ %dtvvar0H.2061080, %._crit_edge2164 ], [ %7182, %7127 ]
  %7189 = phi <2 x double> [ %7126, %._crit_edge2164 ], [ %7131, %7127 ]
  %7190 = extractelement <2 x double> %7189, i32 1
  %7191 = fmul double %7190, %7188
  %7192 = extractelement <2 x double> %7189, i32 0
  %7193 = fmul double %7192, %7187
  %7194 = fadd double %7191, %7193
  %7195 = fmul double %dtvvar0H.207, %7194
  %7196 = extractelement <2 x double> %7125, i32 0
  %7197 = fmul double %7196, %7187
  %7198 = fmul double %33, %7196
  %7199 = fadd double %7198, 1.000000e+00
  %7200 = fmul double %7199, %7197
  %7201 = fadd double %7185, %7200
  %7202 = fmul double %7186, %7201
  %7203 = fsub double %7195, %7202
  %7204 = load double* %_from585.01079, align 8, !tbaa !15
  %7205 = extractelement <2 x double> %7125, i32 1
  %7206 = fmul double %7205, %7188
  %7207 = fmul double %33, %7205
  %7208 = fsub double 1.000000e+00, %7207
  %7209 = fmul double %7208, %7206
  %7210 = fadd double %7209, %7185
  %7211 = fmul double %7204, %7210
  %7212 = fadd double %7211, %7203
  %7213 = fsub double 1.000000e+00, %7198
  %7214 = fmul double %7213, %7197
  %7215 = fsub double %7185, %7214
  %7216 = fmul double %7215, %7184
  %7217 = fsub double %7212, %7216
  %7218 = fadd double %7207, 1.000000e+00
  %7219 = fmul double %7218, %7206
  %7220 = fsub double %7219, %7185
  %7221 = fdiv double %7217, %7220
  store double %7221, double* %_to584.01078, align 8, !tbaa !15
  %7222 = getelementptr inbounds double* %_radius582.01076, i64 -1
  %7223 = getelementptr inbounds double* %_xyz583.01077, i64 -1
  %7224 = getelementptr inbounds double* %_to584.01078, i64 -1
  %7225 = getelementptr inbounds double* %_from585.01079, i64 -1
  %7226 = add nsw i32 %_i575.01075, -1
  %7227 = icmp sgt i32 %_i575.01075, 0
  br i1 %7227, label %7119, label %.loopexit825

.loopexit936:                                     ; preds = %.loopexit867, %7075, %7070
  %dtvvar0H.208 = phi double [ %dtvvar0H.02051, %7070 ], [ %dtvvar0H.02051, %7075 ], [ %dtvvar0H.205.lcssa, %.loopexit867 ]
  %7228 = icmp ult i64 %7072, 4294967296
  br i1 %7228, label %.loopexit935, label %.preheader934

.preheader934:                                    ; preds = %.loopexit936
  %7229 = load i32** %93, align 8, !tbaa !17
  %7230 = getelementptr inbounds i32* %7229, i64 2
  %7231 = load i32* %7230, align 4, !tbaa !7
  %7232 = icmp sgt i32 %7231, 0
  br i1 %7232, label %.preheader866.lr.ph, label %.loopexit935

.preheader866.lr.ph:                              ; preds = %.preheader934
  %7233 = getelementptr inbounds i32* %7229, i64 1
  %7234 = load i32* %7233, align 4, !tbaa !7
  %7235 = icmp sgt i32 %7234, 0
  %7236 = load i32* %113, align 4, !tbaa !7
  %7237 = sub nsw i32 0, %7236
  %7238 = mul nsw i32 %7236, -2
  %7239 = load i32* %114, align 4, !tbaa !7
  %7240 = load double** %86, align 8, !tbaa !13
  %7241 = load double** %115, align 16, !tbaa !13
  %7242 = sext i32 %7237 to i64
  %7243 = sext i32 %7238 to i64
  br label %.preheader866

.preheader866:                                    ; preds = %.preheader866.lr.ph, %._crit_edge1109
  %dtvvar0H.2091113 = phi double [ %dtvvar0H.208, %.preheader866.lr.ph ], [ %dtvvar0H.210.lcssa, %._crit_edge1109 ]
  %_k591.01111 = phi i32 [ 0, %.preheader866.lr.ph ], [ %7378, %._crit_edge1109 ]
  br i1 %7235, label %.lr.ph1108, label %._crit_edge1109

.lr.ph1108:                                       ; preds = %.preheader866
  %7244 = load i8**** %38, align 8, !tbaa !12
  %7245 = getelementptr inbounds i8*** %7244, i64 %indvars.iv2111
  %7246 = bitcast i8*** %7245 to double***
  %7247 = load double*** %7246, align 8, !tbaa !13
  %7248 = load double** %7247, align 8, !tbaa !13
  %7249 = getelementptr inbounds i8*** %7244, i64 %indvars.iv2113
  %7250 = load i8*** %7249, align 8, !tbaa !13
  %7251 = getelementptr inbounds i8** %7250, i64 %.
  %7252 = bitcast i8** %7251 to double**
  %7253 = load double** %7252, align 8, !tbaa !13
  %7254 = load i32* %7229, align 4, !tbaa !7
  br label %7255

; <label>:7255                                    ; preds = %.lr.ph1108, %._crit_edge1104
  %dtvvar0H.2101107 = phi double [ %dtvvar0H.2091113, %.lr.ph1108 ], [ %dtvvar0H.211.lcssa, %._crit_edge1104 ]
  %_j590.01106 = phi i32 [ 0, %.lr.ph1108 ], [ %7376, %._crit_edge1104 ]
  %7256 = sub nsw i32 %7254, %7239
  %7257 = mul nsw i32 %7234, %_k591.01111
  %7258 = add nsw i32 %7257, %_j590.01106
  %7259 = mul nsw i32 %7254, %7258
  %7260 = add nsw i32 %7256, %7259
  %7261 = sext i32 %7260 to i64
  %7262 = icmp sgt i32 %7239, 0
  br i1 %7262, label %.lr.ph1103, label %._crit_edge1104

.lr.ph1103:                                       ; preds = %7255
  %7263 = getelementptr inbounds double* %7253, i64 %7261
  %7264 = getelementptr inbounds double* %7248, i64 %7261
  %7265 = getelementptr inbounds double* %7241, i64 %7261
  %7266 = getelementptr inbounds double* %7240, i64 %7261
  br label %7267

; <label>:7267                                    ; preds = %.lr.ph1103, %7331
  %dtvvar0H.2111101 = phi double [ %dtvvar0H.2101107, %.lr.ph1103 ], [ %dtvvar0H.212, %7331 ]
  %_from599.01100 = phi double* [ %7263, %.lr.ph1103 ], [ %7373, %7331 ]
  %_to598.01099 = phi double* [ %7264, %.lr.ph1103 ], [ %7372, %7331 ]
  %_xyz597.01098 = phi double* [ %7265, %.lr.ph1103 ], [ %7371, %7331 ]
  %_radius596.01097 = phi double* [ %7266, %.lr.ph1103 ], [ %7370, %7331 ]
  %_i589.01096 = phi i32 [ %7256, %.lr.ph1103 ], [ %7374, %7331 ]
  %7268 = load double* %_radius596.01097, align 8, !tbaa !15
  %7269 = getelementptr inbounds double* %_radius596.01097, i64 %7242
  %7270 = load double* %7269, align 8, !tbaa !15
  %7271 = insertelement <2 x double> undef, double %7270, i32 0
  %7272 = insertelement <2 x double> %7271, double %7268, i32 1
  %7273 = fdiv <2 x double> <double 1.000000e+00, double 1.000000e+00>, %7272
  br i1 %105, label %7275, label %._crit_edge2173

._crit_edge2173:                                  ; preds = %7267
  %.pre2174 = load double* %_xyz597.01098, align 8, !tbaa !15
  %.phi.trans.insert2175 = getelementptr inbounds double* %_xyz597.01098, i64 %7242
  %.pre2176 = load double* %.phi.trans.insert2175, align 8, !tbaa !15
  %.phi.trans.insert2177 = getelementptr inbounds double* %_to598.01099, i64 %7242
  %.pre2178 = load double* %.phi.trans.insert2177, align 8, !tbaa !15
  %.pre2179 = load double* %109, align 16, !tbaa !15
  %.phi.trans.insert2180 = getelementptr inbounds double* %_from599.01100, i64 %7242
  %.pre2181 = load double* %.phi.trans.insert2180, align 8, !tbaa !15
  %7274 = fmul <2 x double> %7273, %7273
  br label %7331

; <label>:7275                                    ; preds = %7267
  %7276 = load double* %108, align 16, !tbaa !15
  %7277 = fmul double %107, %7276
  %7278 = load double* %_xyz597.01098, align 8, !tbaa !15
  %7279 = fmul <2 x double> %7273, %7273
  %7280 = extractelement <2 x double> %7279, i32 1
  %7281 = fmul double %7280, %7278
  %7282 = getelementptr inbounds double* %_xyz597.01098, i64 %7242
  %7283 = load double* %7282, align 8, !tbaa !15
  %7284 = extractelement <2 x double> %7279, i32 0
  %7285 = fmul double %7284, %7283
  %7286 = fadd double %7281, %7285
  %7287 = fmul double %7277, %7286
  %7288 = fsub double 1.000000e+00, %7287
  %7289 = fadd double %7287, 1.000000e+00
  %7290 = fdiv double %7288, %7289
  %7291 = getelementptr inbounds double* %_to598.01099, i64 %7242
  %7292 = load double* %7291, align 8, !tbaa !15
  %7293 = getelementptr inbounds double* %_to598.01099, i64 %7243
  %7294 = load double* %7293, align 8, !tbaa !15
  %7295 = fadd double %7292, %7294
  %7296 = getelementptr inbounds double* %_from599.01100, i64 %7242
  %7297 = load double* %7296, align 8, !tbaa !15
  %7298 = fadd double %7295, %7297
  %7299 = getelementptr inbounds double* %_from599.01100, i64 %7243
  %7300 = load double* %7299, align 8, !tbaa !15
  %7301 = fadd double %7298, %7300
  %7302 = fmul double %7301, 2.500000e-01
  %7303 = fsub double %7302, %var0
  %7304 = fmul double %32, %7303
  %7305 = fsub double %7292, %7297
  %7306 = fmul double %7270, %7305
  %7307 = getelementptr inbounds double* %_radius596.01097, i64 %7243
  %7308 = load double* %7307, align 8, !tbaa !15
  %7309 = fsub double %7294, %7300
  %7310 = fmul double %7308, %7309
  %7311 = fadd double %7306, %7310
  %7312 = fmul double %7311, 5.000000e-01
  %7313 = fadd double %7304, %7312
  %7314 = fsub double %7292, %7294
  %7315 = fadd double %7314, %7297
  %7316 = fsub double %7315, %7300
  %7317 = fmul double %7316, 2.500000e-01
  %7318 = load double* %109, align 16, !tbaa !15
  %7319 = fmul double %7317, %7318
  %7320 = fmul double %7270, %7270
  %7321 = fdiv double %7320, %7283
  %7322 = fmul double %7308, %7308
  %7323 = getelementptr inbounds double* %_xyz597.01098, i64 %7243
  %7324 = load double* %7323, align 8, !tbaa !15
  %7325 = fdiv double %7322, %7324
  %7326 = fadd double %7321, %7325
  %7327 = fmul double %7319, %7326
  %7328 = fadd double %7313, %7327
  %7329 = fmul double %7290, %7328
  %7330 = fadd double %34, %7329
  br label %7331

; <label>:7331                                    ; preds = %._crit_edge2173, %7275
  %7332 = phi double [ %.pre2181, %._crit_edge2173 ], [ %7297, %7275 ]
  %7333 = phi double [ %.pre2179, %._crit_edge2173 ], [ %7318, %7275 ]
  %7334 = phi double [ %.pre2178, %._crit_edge2173 ], [ %7292, %7275 ]
  %7335 = phi double [ %.pre2176, %._crit_edge2173 ], [ %7283, %7275 ]
  %7336 = phi double [ %.pre2174, %._crit_edge2173 ], [ %7278, %7275 ]
  %dtvvar0H.212 = phi double [ %dtvvar0H.2111101, %._crit_edge2173 ], [ %7330, %7275 ]
  %7337 = phi <2 x double> [ %7274, %._crit_edge2173 ], [ %7279, %7275 ]
  %7338 = extractelement <2 x double> %7337, i32 1
  %7339 = fmul double %7338, %7336
  %7340 = extractelement <2 x double> %7337, i32 0
  %7341 = fmul double %7340, %7335
  %7342 = fadd double %7339, %7341
  %7343 = fmul double %dtvvar0H.212, %7342
  %7344 = extractelement <2 x double> %7273, i32 0
  %7345 = fmul double %7344, %7335
  %7346 = fmul double %33, %7344
  %7347 = fadd double %7346, 1.000000e+00
  %7348 = fmul double %7347, %7345
  %7349 = fsub double %7333, %7348
  %7350 = fmul double %7334, %7349
  %7351 = fadd double %7343, %7350
  %7352 = load double* %_from599.01100, align 8, !tbaa !15
  %7353 = extractelement <2 x double> %7273, i32 1
  %7354 = fmul double %7353, %7336
  %7355 = fmul double %33, %7353
  %7356 = fsub double 1.000000e+00, %7355
  %7357 = fmul double %7356, %7354
  %7358 = fsub double %7357, %7333
  %7359 = fmul double %7352, %7358
  %7360 = fadd double %7359, %7351
  %7361 = fsub double 1.000000e+00, %7346
  %7362 = fmul double %7361, %7345
  %7363 = fadd double %7333, %7362
  %7364 = fmul double %7363, %7332
  %7365 = fadd double %7364, %7360
  %7366 = fadd double %7355, 1.000000e+00
  %7367 = fmul double %7366, %7354
  %7368 = fadd double %7367, %7333
  %7369 = fdiv double %7365, %7368
  store double %7369, double* %_to598.01099, align 8, !tbaa !15
  %7370 = getelementptr inbounds double* %_radius596.01097, i64 1
  %7371 = getelementptr inbounds double* %_xyz597.01098, i64 1
  %7372 = getelementptr inbounds double* %_to598.01099, i64 1
  %7373 = getelementptr inbounds double* %_from599.01100, i64 1
  %7374 = add nsw i32 %_i589.01096, 1
  %7375 = icmp slt i32 %7374, %7254
  br i1 %7375, label %7267, label %._crit_edge1104

._crit_edge1104:                                  ; preds = %7331, %7255
  %dtvvar0H.211.lcssa = phi double [ %dtvvar0H.2101107, %7255 ], [ %dtvvar0H.212, %7331 ]
  %7376 = add nuw nsw i32 %_j590.01106, 1
  %7377 = icmp slt i32 %7376, %7234
  br i1 %7377, label %7255, label %._crit_edge1109

._crit_edge1109:                                  ; preds = %._crit_edge1104, %.preheader866
  %dtvvar0H.210.lcssa = phi double [ %dtvvar0H.2091113, %.preheader866 ], [ %dtvvar0H.211.lcssa, %._crit_edge1104 ]
  %7378 = add nuw nsw i32 %_k591.01111, 1
  %7379 = icmp slt i32 %7378, %7231
  br i1 %7379, label %.preheader866, label %.loopexit935

.loopexit935:                                     ; preds = %._crit_edge1109, %.preheader934, %.loopexit936
  %dtvvar0H.213 = phi double [ %dtvvar0H.208, %.loopexit936 ], [ %dtvvar0H.208, %.preheader934 ], [ %dtvvar0H.210.lcssa, %._crit_edge1109 ]
  %7380 = bitcast i32* %98 to i64*
  %7381 = load i64* %7380, align 8
  %7382 = trunc i64 %7381 to i32
  %7383 = icmp eq i32 %7382, 0
  br i1 %7383, label %.loopexit933, label %7384

; <label>:7384                                    ; preds = %.loopexit935
  %7385 = load i32** %93, align 8, !tbaa !17
  %7386 = getelementptr inbounds i32* %7385, i64 2
  %7387 = load i32* %7386, align 4, !tbaa !7
  %7388 = icmp sgt i32 %7387, 0
  br i1 %7388, label %.lr.ph1134, label %.loopexit933

.lr.ph1134:                                       ; preds = %7384
  %7389 = load i32* %110, align 4, !tbaa !7
  %7390 = icmp sgt i32 %7389, 0
  %7391 = load i32* %111, align 4, !tbaa !7
  %7392 = shl nsw i32 %7391, 1
  %7393 = load double** %86, align 8, !tbaa !13
  %7394 = load double** %112, align 8, !tbaa !13
  %7395 = sext i32 %7391 to i64
  %7396 = sext i32 %7392 to i64
  %7397 = sext i32 %7389 to i64
  br label %7399

.loopexit865:                                     ; preds = %.loopexit824, %7399
  %dtvvar0H.215.lcssa = phi double [ %dtvvar0H.2141131, %7399 ], [ %dtvvar0H.216.lcssa, %.loopexit824 ]
  %7398 = icmp sgt i32 %_k605.01132.in, 1
  br i1 %7398, label %7399, label %.loopexit933

; <label>:7399                                    ; preds = %.lr.ph1134, %.loopexit865
  %_k605.01132.in = phi i32 [ %7387, %.lr.ph1134 ], [ %_k605.01132, %.loopexit865 ]
  %dtvvar0H.2141131 = phi double [ %dtvvar0H.213, %.lr.ph1134 ], [ %dtvvar0H.215.lcssa, %.loopexit865 ]
  %_k605.01132 = add nsw i32 %_k605.01132.in, -1
  br i1 %7390, label %.lr.ph1128, label %.loopexit865

.lr.ph1128:                                       ; preds = %7399
  %7400 = load i32* %7385, align 4, !tbaa !7
  %7401 = add nsw i32 %7400, -1
  %7402 = getelementptr inbounds i32* %7385, i64 1
  %7403 = load i32* %7402, align 4, !tbaa !7
  %7404 = mul nsw i32 %7403, %_k605.01132
  %7405 = load i8**** %38, align 8, !tbaa !12
  %7406 = getelementptr inbounds i8*** %7405, i64 %indvars.iv2111
  %7407 = bitcast i8*** %7406 to double***
  %7408 = load double*** %7407, align 8, !tbaa !13
  %7409 = load double** %7408, align 8, !tbaa !13
  %7410 = getelementptr inbounds i8*** %7405, i64 %indvars.iv2113
  %7411 = load i8*** %7410, align 8, !tbaa !13
  %7412 = getelementptr inbounds i8** %7411, i64 %.
  %7413 = bitcast i8** %7412 to double**
  %7414 = load double** %7413, align 8, !tbaa !13
  %7415 = icmp sgt i32 %7400, 0
  %7416 = sext i32 %7404 to i64
  %7417 = sext i32 %7400 to i64
  %7418 = sext i32 %7401 to i64
  br label %7420

.loopexit824:                                     ; preds = %7492, %7420
  %dtvvar0H.216.lcssa = phi double [ %dtvvar0H.2151125, %7420 ], [ %dtvvar0H.217, %7492 ]
  %7419 = icmp sgt i64 %indvars.iv2083, 1
  br i1 %7419, label %7420, label %.loopexit865

; <label>:7420                                    ; preds = %.lr.ph1128, %.loopexit824
  %indvars.iv2083 = phi i64 [ %7397, %.lr.ph1128 ], [ %indvars.iv.next2084, %.loopexit824 ]
  %dtvvar0H.2151125 = phi double [ %dtvvar0H.2141131, %.lr.ph1128 ], [ %dtvvar0H.216.lcssa, %.loopexit824 ]
  %indvars.iv.next2084 = add nsw i64 %indvars.iv2083, -1
  %7421 = add nsw i64 %7416, %indvars.iv.next2084
  %7422 = mul nsw i64 %7421, %7417
  %7423 = add nsw i64 %7422, %7418
  br i1 %7415, label %.lr.ph1122, label %.loopexit824

.lr.ph1122:                                       ; preds = %7420
  %7424 = getelementptr inbounds double* %7414, i64 %7423
  %7425 = getelementptr inbounds double* %7409, i64 %7423
  %7426 = getelementptr inbounds double* %7394, i64 %7423
  %7427 = getelementptr inbounds double* %7393, i64 %7423
  br label %7428

; <label>:7428                                    ; preds = %.lr.ph1122, %7492
  %dtvvar0H.2161120 = phi double [ %dtvvar0H.2151125, %.lr.ph1122 ], [ %dtvvar0H.217, %7492 ]
  %_from613.01119 = phi double* [ %7424, %.lr.ph1122 ], [ %7534, %7492 ]
  %_to612.01118 = phi double* [ %7425, %.lr.ph1122 ], [ %7533, %7492 ]
  %_xyz611.01117 = phi double* [ %7426, %.lr.ph1122 ], [ %7532, %7492 ]
  %_radius610.01116 = phi double* [ %7427, %.lr.ph1122 ], [ %7531, %7492 ]
  %_i603.01115 = phi i32 [ %7401, %.lr.ph1122 ], [ %7535, %7492 ]
  %7429 = load double* %_radius610.01116, align 8, !tbaa !15
  %7430 = getelementptr inbounds double* %_radius610.01116, i64 %7395
  %7431 = load double* %7430, align 8, !tbaa !15
  %7432 = insertelement <2 x double> undef, double %7431, i32 0
  %7433 = insertelement <2 x double> %7432, double %7429, i32 1
  %7434 = fdiv <2 x double> <double 1.000000e+00, double 1.000000e+00>, %7433
  br i1 %105, label %7436, label %._crit_edge2182

._crit_edge2182:                                  ; preds = %7428
  %.pre2183 = load double* %_xyz611.01117, align 8, !tbaa !15
  %.phi.trans.insert2184 = getelementptr inbounds double* %_xyz611.01117, i64 %7395
  %.pre2185 = load double* %.phi.trans.insert2184, align 8, !tbaa !15
  %.phi.trans.insert2186 = getelementptr inbounds double* %_to612.01118, i64 %7395
  %.pre2187 = load double* %.phi.trans.insert2186, align 8, !tbaa !15
  %.pre2188 = load double* %109, align 16, !tbaa !15
  %.phi.trans.insert2189 = getelementptr inbounds double* %_from613.01119, i64 %7395
  %.pre2190 = load double* %.phi.trans.insert2189, align 8, !tbaa !15
  %7435 = fmul <2 x double> %7434, %7434
  br label %7492

; <label>:7436                                    ; preds = %7428
  %7437 = load double* %108, align 16, !tbaa !15
  %7438 = fmul double %107, %7437
  %7439 = load double* %_xyz611.01117, align 8, !tbaa !15
  %7440 = fmul <2 x double> %7434, %7434
  %7441 = extractelement <2 x double> %7440, i32 1
  %7442 = fmul double %7441, %7439
  %7443 = getelementptr inbounds double* %_xyz611.01117, i64 %7395
  %7444 = load double* %7443, align 8, !tbaa !15
  %7445 = extractelement <2 x double> %7440, i32 0
  %7446 = fmul double %7445, %7444
  %7447 = fadd double %7442, %7446
  %7448 = fmul double %7438, %7447
  %7449 = fadd double %7448, 1.000000e+00
  %7450 = fsub double 1.000000e+00, %7448
  %7451 = fdiv double %7449, %7450
  %7452 = getelementptr inbounds double* %_to612.01118, i64 %7395
  %7453 = load double* %7452, align 8, !tbaa !15
  %7454 = getelementptr inbounds double* %_to612.01118, i64 %7396
  %7455 = load double* %7454, align 8, !tbaa !15
  %7456 = fadd double %7453, %7455
  %7457 = getelementptr inbounds double* %_from613.01119, i64 %7395
  %7458 = load double* %7457, align 8, !tbaa !15
  %7459 = fadd double %7456, %7458
  %7460 = getelementptr inbounds double* %_from613.01119, i64 %7396
  %7461 = load double* %7460, align 8, !tbaa !15
  %7462 = fadd double %7459, %7461
  %7463 = fmul double %7462, 2.500000e-01
  %7464 = fsub double %7463, %var0
  %7465 = fmul double %32, %7464
  %7466 = fsub double %7453, %7458
  %7467 = fmul double %7431, %7466
  %7468 = getelementptr inbounds double* %_radius610.01116, i64 %7396
  %7469 = load double* %7468, align 8, !tbaa !15
  %7470 = fsub double %7455, %7461
  %7471 = fmul double %7469, %7470
  %7472 = fadd double %7467, %7471
  %7473 = fmul double %7472, 5.000000e-01
  %7474 = fadd double %7465, %7473
  %7475 = fsub double %7455, %7453
  %7476 = fadd double %7475, %7461
  %7477 = fsub double %7476, %7458
  %7478 = fmul double %7477, 2.500000e-01
  %7479 = load double* %109, align 16, !tbaa !15
  %7480 = fmul double %7479, %7478
  %7481 = fmul double %7431, %7431
  %7482 = fdiv double %7481, %7444
  %7483 = fmul double %7469, %7469
  %7484 = getelementptr inbounds double* %_xyz611.01117, i64 %7396
  %7485 = load double* %7484, align 8, !tbaa !15
  %7486 = fdiv double %7483, %7485
  %7487 = fadd double %7482, %7486
  %7488 = fmul double %7480, %7487
  %7489 = fadd double %7474, %7488
  %7490 = fmul double %7451, %7489
  %7491 = fadd double %34, %7490
  br label %7492

; <label>:7492                                    ; preds = %._crit_edge2182, %7436
  %7493 = phi double [ %.pre2190, %._crit_edge2182 ], [ %7458, %7436 ]
  %7494 = phi double [ %.pre2188, %._crit_edge2182 ], [ %7479, %7436 ]
  %7495 = phi double [ %.pre2187, %._crit_edge2182 ], [ %7453, %7436 ]
  %7496 = phi double [ %.pre2185, %._crit_edge2182 ], [ %7444, %7436 ]
  %7497 = phi double [ %.pre2183, %._crit_edge2182 ], [ %7439, %7436 ]
  %dtvvar0H.217 = phi double [ %dtvvar0H.2161120, %._crit_edge2182 ], [ %7491, %7436 ]
  %7498 = phi <2 x double> [ %7435, %._crit_edge2182 ], [ %7440, %7436 ]
  %7499 = extractelement <2 x double> %7498, i32 1
  %7500 = fmul double %7499, %7497
  %7501 = extractelement <2 x double> %7498, i32 0
  %7502 = fmul double %7501, %7496
  %7503 = fadd double %7500, %7502
  %7504 = fmul double %dtvvar0H.217, %7503
  %7505 = extractelement <2 x double> %7434, i32 0
  %7506 = fmul double %7505, %7496
  %7507 = fmul double %33, %7505
  %7508 = fadd double %7507, 1.000000e+00
  %7509 = fmul double %7508, %7506
  %7510 = fadd double %7494, %7509
  %7511 = fmul double %7495, %7510
  %7512 = fsub double %7504, %7511
  %7513 = load double* %_from613.01119, align 8, !tbaa !15
  %7514 = extractelement <2 x double> %7434, i32 1
  %7515 = fmul double %7514, %7497
  %7516 = fmul double %33, %7514
  %7517 = fsub double 1.000000e+00, %7516
  %7518 = fmul double %7517, %7515
  %7519 = fadd double %7518, %7494
  %7520 = fmul double %7513, %7519
  %7521 = fadd double %7520, %7512
  %7522 = fsub double 1.000000e+00, %7507
  %7523 = fmul double %7522, %7506
  %7524 = fsub double %7494, %7523
  %7525 = fmul double %7524, %7493
  %7526 = fsub double %7521, %7525
  %7527 = fadd double %7516, 1.000000e+00
  %7528 = fmul double %7527, %7515
  %7529 = fsub double %7528, %7494
  %7530 = fdiv double %7526, %7529
  store double %7530, double* %_to612.01118, align 8, !tbaa !15
  %7531 = getelementptr inbounds double* %_radius610.01116, i64 -1
  %7532 = getelementptr inbounds double* %_xyz611.01117, i64 -1
  %7533 = getelementptr inbounds double* %_to612.01118, i64 -1
  %7534 = getelementptr inbounds double* %_from613.01119, i64 -1
  %7535 = add nsw i32 %_i603.01115, -1
  %7536 = icmp sgt i32 %_i603.01115, 0
  br i1 %7536, label %7428, label %.loopexit824

.loopexit933:                                     ; preds = %.loopexit865, %7384, %.loopexit935
  %dtvvar0H.218 = phi double [ %dtvvar0H.213, %.loopexit935 ], [ %dtvvar0H.213, %7384 ], [ %dtvvar0H.215.lcssa, %.loopexit865 ]
  %7537 = icmp ult i64 %7381, 4294967296
  br i1 %7537, label %.loopexit932, label %.preheader931

.preheader931:                                    ; preds = %.loopexit933
  %7538 = load i32** %93, align 8, !tbaa !17
  %7539 = getelementptr inbounds i32* %7538, i64 2
  %7540 = load i32* %7539, align 4, !tbaa !7
  %7541 = icmp sgt i32 %7540, 0
  br i1 %7541, label %.lr.ph1155, label %.loopexit932

.lr.ph1155:                                       ; preds = %.preheader931
  %7542 = load i32* %110, align 4, !tbaa !7
  %7543 = getelementptr inbounds i32* %7538, i64 1
  %7544 = load i32* %7543, align 4, !tbaa !7
  %7545 = load i32* %111, align 4, !tbaa !7
  %7546 = sub nsw i32 0, %7545
  %7547 = mul nsw i32 %7545, -2
  %7548 = load double** %86, align 8, !tbaa !13
  %7549 = load double** %112, align 8, !tbaa !13
  %7550 = sext i32 %7546 to i64
  %7551 = sext i32 %7547 to i64
  br label %7552

; <label>:7552                                    ; preds = %.lr.ph1155, %._crit_edge1150
  %dtvvar0H.2191154 = phi double [ %dtvvar0H.218, %.lr.ph1155 ], [ %dtvvar0H.220.lcssa, %._crit_edge1150 ]
  %_k619.01152 = phi i32 [ 0, %.lr.ph1155 ], [ %7687, %._crit_edge1150 ]
  %7553 = icmp sgt i32 %7542, 0
  br i1 %7553, label %.lr.ph1149, label %._crit_edge1150

.lr.ph1149:                                       ; preds = %7552
  %7554 = sub nsw i32 %7544, %7542
  %7555 = load i8**** %38, align 8, !tbaa !12
  %7556 = getelementptr inbounds i8*** %7555, i64 %indvars.iv2111
  %7557 = bitcast i8*** %7556 to double***
  %7558 = load double*** %7557, align 8, !tbaa !13
  %7559 = load double** %7558, align 8, !tbaa !13
  %7560 = getelementptr inbounds i8*** %7555, i64 %indvars.iv2113
  %7561 = load i8*** %7560, align 8, !tbaa !13
  %7562 = getelementptr inbounds i8** %7561, i64 %.
  %7563 = bitcast i8** %7562 to double**
  %7564 = load double** %7563, align 8, !tbaa !13
  %7565 = load i32* %7538, align 4, !tbaa !7
  %7566 = icmp sgt i32 %7565, 0
  br label %7567

; <label>:7567                                    ; preds = %.lr.ph1149, %._crit_edge1144
  %dtvvar0H.2201147 = phi double [ %dtvvar0H.2191154, %.lr.ph1149 ], [ %dtvvar0H.221.lcssa, %._crit_edge1144 ]
  %_j618.01146 = phi i32 [ %7554, %.lr.ph1149 ], [ %7685, %._crit_edge1144 ]
  %7568 = mul nsw i32 %7544, %_k619.01152
  %7569 = add nsw i32 %7568, %_j618.01146
  %7570 = mul nsw i32 %7565, %7569
  %7571 = sext i32 %7570 to i64
  br i1 %7566, label %.lr.ph1143, label %._crit_edge1144

.lr.ph1143:                                       ; preds = %7567
  %7572 = getelementptr inbounds double* %7564, i64 %7571
  %7573 = getelementptr inbounds double* %7559, i64 %7571
  %7574 = getelementptr inbounds double* %7549, i64 %7571
  %7575 = getelementptr inbounds double* %7548, i64 %7571
  br label %7576

; <label>:7576                                    ; preds = %.lr.ph1143, %7640
  %dtvvar0H.2211141 = phi double [ %dtvvar0H.2201147, %.lr.ph1143 ], [ %dtvvar0H.222, %7640 ]
  %_from627.01140 = phi double* [ %7572, %.lr.ph1143 ], [ %7682, %7640 ]
  %_to626.01139 = phi double* [ %7573, %.lr.ph1143 ], [ %7681, %7640 ]
  %_xyz625.01138 = phi double* [ %7574, %.lr.ph1143 ], [ %7680, %7640 ]
  %_radius624.01137 = phi double* [ %7575, %.lr.ph1143 ], [ %7679, %7640 ]
  %_i617.01136 = phi i32 [ 0, %.lr.ph1143 ], [ %7683, %7640 ]
  %7577 = load double* %_radius624.01137, align 8, !tbaa !15
  %7578 = getelementptr inbounds double* %_radius624.01137, i64 %7550
  %7579 = load double* %7578, align 8, !tbaa !15
  %7580 = insertelement <2 x double> undef, double %7579, i32 0
  %7581 = insertelement <2 x double> %7580, double %7577, i32 1
  %7582 = fdiv <2 x double> <double 1.000000e+00, double 1.000000e+00>, %7581
  br i1 %105, label %7584, label %._crit_edge2191

._crit_edge2191:                                  ; preds = %7576
  %.pre2192 = load double* %_xyz625.01138, align 8, !tbaa !15
  %.phi.trans.insert2193 = getelementptr inbounds double* %_xyz625.01138, i64 %7550
  %.pre2194 = load double* %.phi.trans.insert2193, align 8, !tbaa !15
  %.phi.trans.insert2195 = getelementptr inbounds double* %_to626.01139, i64 %7550
  %.pre2196 = load double* %.phi.trans.insert2195, align 8, !tbaa !15
  %.pre2197 = load double* %109, align 16, !tbaa !15
  %.phi.trans.insert2198 = getelementptr inbounds double* %_from627.01140, i64 %7550
  %.pre2199 = load double* %.phi.trans.insert2198, align 8, !tbaa !15
  %7583 = fmul <2 x double> %7582, %7582
  br label %7640

; <label>:7584                                    ; preds = %7576
  %7585 = load double* %108, align 16, !tbaa !15
  %7586 = fmul double %107, %7585
  %7587 = load double* %_xyz625.01138, align 8, !tbaa !15
  %7588 = fmul <2 x double> %7582, %7582
  %7589 = extractelement <2 x double> %7588, i32 1
  %7590 = fmul double %7589, %7587
  %7591 = getelementptr inbounds double* %_xyz625.01138, i64 %7550
  %7592 = load double* %7591, align 8, !tbaa !15
  %7593 = extractelement <2 x double> %7588, i32 0
  %7594 = fmul double %7593, %7592
  %7595 = fadd double %7590, %7594
  %7596 = fmul double %7586, %7595
  %7597 = fsub double 1.000000e+00, %7596
  %7598 = fadd double %7596, 1.000000e+00
  %7599 = fdiv double %7597, %7598
  %7600 = getelementptr inbounds double* %_to626.01139, i64 %7550
  %7601 = load double* %7600, align 8, !tbaa !15
  %7602 = getelementptr inbounds double* %_to626.01139, i64 %7551
  %7603 = load double* %7602, align 8, !tbaa !15
  %7604 = fadd double %7601, %7603
  %7605 = getelementptr inbounds double* %_from627.01140, i64 %7550
  %7606 = load double* %7605, align 8, !tbaa !15
  %7607 = fadd double %7604, %7606
  %7608 = getelementptr inbounds double* %_from627.01140, i64 %7551
  %7609 = load double* %7608, align 8, !tbaa !15
  %7610 = fadd double %7607, %7609
  %7611 = fmul double %7610, 2.500000e-01
  %7612 = fsub double %7611, %var0
  %7613 = fmul double %32, %7612
  %7614 = fsub double %7601, %7606
  %7615 = fmul double %7579, %7614
  %7616 = getelementptr inbounds double* %_radius624.01137, i64 %7551
  %7617 = load double* %7616, align 8, !tbaa !15
  %7618 = fsub double %7603, %7609
  %7619 = fmul double %7617, %7618
  %7620 = fadd double %7615, %7619
  %7621 = fmul double %7620, 5.000000e-01
  %7622 = fadd double %7613, %7621
  %7623 = fsub double %7601, %7603
  %7624 = fadd double %7623, %7606
  %7625 = fsub double %7624, %7609
  %7626 = fmul double %7625, 2.500000e-01
  %7627 = load double* %109, align 16, !tbaa !15
  %7628 = fmul double %7626, %7627
  %7629 = fmul double %7579, %7579
  %7630 = fdiv double %7629, %7592
  %7631 = fmul double %7617, %7617
  %7632 = getelementptr inbounds double* %_xyz625.01138, i64 %7551
  %7633 = load double* %7632, align 8, !tbaa !15
  %7634 = fdiv double %7631, %7633
  %7635 = fadd double %7630, %7634
  %7636 = fmul double %7628, %7635
  %7637 = fadd double %7622, %7636
  %7638 = fmul double %7599, %7637
  %7639 = fadd double %34, %7638
  br label %7640

; <label>:7640                                    ; preds = %._crit_edge2191, %7584
  %7641 = phi double [ %.pre2199, %._crit_edge2191 ], [ %7606, %7584 ]
  %7642 = phi double [ %.pre2197, %._crit_edge2191 ], [ %7627, %7584 ]
  %7643 = phi double [ %.pre2196, %._crit_edge2191 ], [ %7601, %7584 ]
  %7644 = phi double [ %.pre2194, %._crit_edge2191 ], [ %7592, %7584 ]
  %7645 = phi double [ %.pre2192, %._crit_edge2191 ], [ %7587, %7584 ]
  %dtvvar0H.222 = phi double [ %dtvvar0H.2211141, %._crit_edge2191 ], [ %7639, %7584 ]
  %7646 = phi <2 x double> [ %7583, %._crit_edge2191 ], [ %7588, %7584 ]
  %7647 = extractelement <2 x double> %7646, i32 1
  %7648 = fmul double %7647, %7645
  %7649 = extractelement <2 x double> %7646, i32 0
  %7650 = fmul double %7649, %7644
  %7651 = fadd double %7648, %7650
  %7652 = fmul double %dtvvar0H.222, %7651
  %7653 = extractelement <2 x double> %7582, i32 0
  %7654 = fmul double %7653, %7644
  %7655 = fmul double %33, %7653
  %7656 = fadd double %7655, 1.000000e+00
  %7657 = fmul double %7656, %7654
  %7658 = fsub double %7642, %7657
  %7659 = fmul double %7643, %7658
  %7660 = fadd double %7652, %7659
  %7661 = load double* %_from627.01140, align 8, !tbaa !15
  %7662 = extractelement <2 x double> %7582, i32 1
  %7663 = fmul double %7662, %7645
  %7664 = fmul double %33, %7662
  %7665 = fsub double 1.000000e+00, %7664
  %7666 = fmul double %7665, %7663
  %7667 = fsub double %7666, %7642
  %7668 = fmul double %7661, %7667
  %7669 = fadd double %7668, %7660
  %7670 = fsub double 1.000000e+00, %7655
  %7671 = fmul double %7670, %7654
  %7672 = fadd double %7642, %7671
  %7673 = fmul double %7672, %7641
  %7674 = fadd double %7673, %7669
  %7675 = fadd double %7664, 1.000000e+00
  %7676 = fmul double %7675, %7663
  %7677 = fadd double %7676, %7642
  %7678 = fdiv double %7674, %7677
  store double %7678, double* %_to626.01139, align 8, !tbaa !15
  %7679 = getelementptr inbounds double* %_radius624.01137, i64 1
  %7680 = getelementptr inbounds double* %_xyz625.01138, i64 1
  %7681 = getelementptr inbounds double* %_to626.01139, i64 1
  %7682 = getelementptr inbounds double* %_from627.01140, i64 1
  %7683 = add nuw nsw i32 %_i617.01136, 1
  %7684 = icmp slt i32 %7683, %7565
  br i1 %7684, label %7576, label %._crit_edge1144

._crit_edge1144:                                  ; preds = %7640, %7567
  %dtvvar0H.221.lcssa = phi double [ %dtvvar0H.2201147, %7567 ], [ %dtvvar0H.222, %7640 ]
  %7685 = add nsw i32 %_j618.01146, 1
  %7686 = icmp slt i32 %7685, %7544
  br i1 %7686, label %7567, label %._crit_edge1150

._crit_edge1150:                                  ; preds = %._crit_edge1144, %7552
  %dtvvar0H.220.lcssa = phi double [ %dtvvar0H.2191154, %7552 ], [ %dtvvar0H.221.lcssa, %._crit_edge1144 ]
  %7687 = add nuw nsw i32 %_k619.01152, 1
  %7688 = icmp slt i32 %7687, %7540
  br i1 %7688, label %7552, label %.loopexit932

.loopexit932:                                     ; preds = %._crit_edge1150, %.preheader931, %.loopexit933
  %dtvvar0H.223 = phi double [ %dtvvar0H.218, %.loopexit933 ], [ %dtvvar0H.218, %.preheader931 ], [ %dtvvar0H.220.lcssa, %._crit_edge1150 ]
  %7689 = bitcast i32* %100 to i64*
  %7690 = load i64* %7689, align 16
  %7691 = trunc i64 %7690 to i32
  %7692 = icmp eq i32 %7691, 0
  br i1 %7692, label %.loopexit930, label %7693

; <label>:7693                                    ; preds = %.loopexit932
  %7694 = load i32* %102, align 4, !tbaa !7
  %7695 = icmp sgt i32 %7694, 0
  br i1 %7695, label %.lr.ph1176, label %.loopexit930

.lr.ph1176:                                       ; preds = %7693
  %7696 = load i32** %93, align 8, !tbaa !17
  %7697 = getelementptr inbounds i32* %7696, i64 1
  %7698 = load i32* %7697, align 4, !tbaa !7
  %7699 = icmp sgt i32 %7698, 0
  %7700 = load i32* %103, align 4, !tbaa !7
  %7701 = shl nsw i32 %7700, 1
  %7702 = load double** %86, align 8, !tbaa !13
  %7703 = load double** %104, align 16, !tbaa !13
  %7704 = sext i32 %7700 to i64
  %7705 = sext i32 %7701 to i64
  %7706 = sext i32 %7698 to i64
  br label %7708

.loopexit864:                                     ; preds = %.loopexit823, %7708
  %dtvvar0H.225.lcssa = phi double [ %dtvvar0H.2241173, %7708 ], [ %dtvvar0H.226.lcssa, %.loopexit823 ]
  %7707 = icmp sgt i32 %_k633.01174.in, 1
  br i1 %7707, label %7708, label %.loopexit930

; <label>:7708                                    ; preds = %.lr.ph1176, %.loopexit864
  %_k633.01174.in = phi i32 [ %7694, %.lr.ph1176 ], [ %_k633.01174, %.loopexit864 ]
  %dtvvar0H.2241173 = phi double [ %dtvvar0H.223, %.lr.ph1176 ], [ %dtvvar0H.225.lcssa, %.loopexit864 ]
  %_k633.01174 = add nsw i32 %_k633.01174.in, -1
  br i1 %7699, label %.lr.ph1170, label %.loopexit864

.lr.ph1170:                                       ; preds = %7708
  %7709 = load i32* %7696, align 4, !tbaa !7
  %7710 = add nsw i32 %7709, -1
  %7711 = mul nsw i32 %7698, %_k633.01174
  %7712 = load i8**** %38, align 8, !tbaa !12
  %7713 = getelementptr inbounds i8*** %7712, i64 %indvars.iv2111
  %7714 = bitcast i8*** %7713 to double***
  %7715 = load double*** %7714, align 8, !tbaa !13
  %7716 = load double** %7715, align 8, !tbaa !13
  %7717 = getelementptr inbounds i8*** %7712, i64 %indvars.iv2113
  %7718 = load i8*** %7717, align 8, !tbaa !13
  %7719 = getelementptr inbounds i8** %7718, i64 %.
  %7720 = bitcast i8** %7719 to double**
  %7721 = load double** %7720, align 8, !tbaa !13
  %7722 = icmp sgt i32 %7709, 0
  %7723 = sext i32 %7711 to i64
  %7724 = sext i32 %7709 to i64
  %7725 = sext i32 %7710 to i64
  br label %7727

.loopexit823:                                     ; preds = %7799, %7727
  %dtvvar0H.226.lcssa = phi double [ %dtvvar0H.2251167, %7727 ], [ %dtvvar0H.227, %7799 ]
  %7726 = icmp sgt i64 %indvars.iv2085, 1
  br i1 %7726, label %7727, label %.loopexit864

; <label>:7727                                    ; preds = %.lr.ph1170, %.loopexit823
  %indvars.iv2085 = phi i64 [ %7706, %.lr.ph1170 ], [ %indvars.iv.next2086, %.loopexit823 ]
  %dtvvar0H.2251167 = phi double [ %dtvvar0H.2241173, %.lr.ph1170 ], [ %dtvvar0H.226.lcssa, %.loopexit823 ]
  %indvars.iv.next2086 = add nsw i64 %indvars.iv2085, -1
  %7728 = add nsw i64 %7723, %indvars.iv.next2086
  %7729 = mul nsw i64 %7728, %7724
  %7730 = add nsw i64 %7729, %7725
  br i1 %7722, label %.lr.ph1164, label %.loopexit823

.lr.ph1164:                                       ; preds = %7727
  %7731 = getelementptr inbounds double* %7721, i64 %7730
  %7732 = getelementptr inbounds double* %7716, i64 %7730
  %7733 = getelementptr inbounds double* %7703, i64 %7730
  %7734 = getelementptr inbounds double* %7702, i64 %7730
  br label %7735

; <label>:7735                                    ; preds = %.lr.ph1164, %7799
  %dtvvar0H.2261162 = phi double [ %dtvvar0H.2251167, %.lr.ph1164 ], [ %dtvvar0H.227, %7799 ]
  %_from641.01161 = phi double* [ %7731, %.lr.ph1164 ], [ %7841, %7799 ]
  %_to640.01160 = phi double* [ %7732, %.lr.ph1164 ], [ %7840, %7799 ]
  %_xyz639.01159 = phi double* [ %7733, %.lr.ph1164 ], [ %7839, %7799 ]
  %_radius638.01158 = phi double* [ %7734, %.lr.ph1164 ], [ %7838, %7799 ]
  %_i631.01157 = phi i32 [ %7710, %.lr.ph1164 ], [ %7842, %7799 ]
  %7736 = load double* %_radius638.01158, align 8, !tbaa !15
  %7737 = getelementptr inbounds double* %_radius638.01158, i64 %7704
  %7738 = load double* %7737, align 8, !tbaa !15
  %7739 = insertelement <2 x double> undef, double %7738, i32 0
  %7740 = insertelement <2 x double> %7739, double %7736, i32 1
  %7741 = fdiv <2 x double> <double 1.000000e+00, double 1.000000e+00>, %7740
  br i1 %105, label %7743, label %._crit_edge2200

._crit_edge2200:                                  ; preds = %7735
  %.pre2201 = load double* %_xyz639.01159, align 8, !tbaa !15
  %.phi.trans.insert2202 = getelementptr inbounds double* %_xyz639.01159, i64 %7704
  %.pre2203 = load double* %.phi.trans.insert2202, align 8, !tbaa !15
  %.phi.trans.insert2204 = getelementptr inbounds double* %_to640.01160, i64 %7704
  %.pre2205 = load double* %.phi.trans.insert2204, align 8, !tbaa !15
  %.pre2206 = load double* %109, align 16, !tbaa !15
  %.phi.trans.insert2207 = getelementptr inbounds double* %_from641.01161, i64 %7704
  %.pre2208 = load double* %.phi.trans.insert2207, align 8, !tbaa !15
  %7742 = fmul <2 x double> %7741, %7741
  br label %7799

; <label>:7743                                    ; preds = %7735
  %7744 = load double* %108, align 16, !tbaa !15
  %7745 = fmul double %107, %7744
  %7746 = load double* %_xyz639.01159, align 8, !tbaa !15
  %7747 = fmul <2 x double> %7741, %7741
  %7748 = extractelement <2 x double> %7747, i32 1
  %7749 = fmul double %7748, %7746
  %7750 = getelementptr inbounds double* %_xyz639.01159, i64 %7704
  %7751 = load double* %7750, align 8, !tbaa !15
  %7752 = extractelement <2 x double> %7747, i32 0
  %7753 = fmul double %7752, %7751
  %7754 = fadd double %7749, %7753
  %7755 = fmul double %7745, %7754
  %7756 = fadd double %7755, 1.000000e+00
  %7757 = fsub double 1.000000e+00, %7755
  %7758 = fdiv double %7756, %7757
  %7759 = getelementptr inbounds double* %_to640.01160, i64 %7704
  %7760 = load double* %7759, align 8, !tbaa !15
  %7761 = getelementptr inbounds double* %_to640.01160, i64 %7705
  %7762 = load double* %7761, align 8, !tbaa !15
  %7763 = fadd double %7760, %7762
  %7764 = getelementptr inbounds double* %_from641.01161, i64 %7704
  %7765 = load double* %7764, align 8, !tbaa !15
  %7766 = fadd double %7763, %7765
  %7767 = getelementptr inbounds double* %_from641.01161, i64 %7705
  %7768 = load double* %7767, align 8, !tbaa !15
  %7769 = fadd double %7766, %7768
  %7770 = fmul double %7769, 2.500000e-01
  %7771 = fsub double %7770, %var0
  %7772 = fmul double %32, %7771
  %7773 = fsub double %7760, %7765
  %7774 = fmul double %7738, %7773
  %7775 = getelementptr inbounds double* %_radius638.01158, i64 %7705
  %7776 = load double* %7775, align 8, !tbaa !15
  %7777 = fsub double %7762, %7768
  %7778 = fmul double %7776, %7777
  %7779 = fadd double %7774, %7778
  %7780 = fmul double %7779, 5.000000e-01
  %7781 = fadd double %7772, %7780
  %7782 = fsub double %7762, %7760
  %7783 = fadd double %7782, %7768
  %7784 = fsub double %7783, %7765
  %7785 = fmul double %7784, 2.500000e-01
  %7786 = load double* %109, align 16, !tbaa !15
  %7787 = fmul double %7786, %7785
  %7788 = fmul double %7738, %7738
  %7789 = fdiv double %7788, %7751
  %7790 = fmul double %7776, %7776
  %7791 = getelementptr inbounds double* %_xyz639.01159, i64 %7705
  %7792 = load double* %7791, align 8, !tbaa !15
  %7793 = fdiv double %7790, %7792
  %7794 = fadd double %7789, %7793
  %7795 = fmul double %7787, %7794
  %7796 = fadd double %7781, %7795
  %7797 = fmul double %7758, %7796
  %7798 = fadd double %34, %7797
  br label %7799

; <label>:7799                                    ; preds = %._crit_edge2200, %7743
  %7800 = phi double [ %.pre2208, %._crit_edge2200 ], [ %7765, %7743 ]
  %7801 = phi double [ %.pre2206, %._crit_edge2200 ], [ %7786, %7743 ]
  %7802 = phi double [ %.pre2205, %._crit_edge2200 ], [ %7760, %7743 ]
  %7803 = phi double [ %.pre2203, %._crit_edge2200 ], [ %7751, %7743 ]
  %7804 = phi double [ %.pre2201, %._crit_edge2200 ], [ %7746, %7743 ]
  %dtvvar0H.227 = phi double [ %dtvvar0H.2261162, %._crit_edge2200 ], [ %7798, %7743 ]
  %7805 = phi <2 x double> [ %7742, %._crit_edge2200 ], [ %7747, %7743 ]
  %7806 = extractelement <2 x double> %7805, i32 1
  %7807 = fmul double %7806, %7804
  %7808 = extractelement <2 x double> %7805, i32 0
  %7809 = fmul double %7808, %7803
  %7810 = fadd double %7807, %7809
  %7811 = fmul double %dtvvar0H.227, %7810
  %7812 = extractelement <2 x double> %7741, i32 0
  %7813 = fmul double %7812, %7803
  %7814 = fmul double %33, %7812
  %7815 = fadd double %7814, 1.000000e+00
  %7816 = fmul double %7815, %7813
  %7817 = fadd double %7801, %7816
  %7818 = fmul double %7802, %7817
  %7819 = fsub double %7811, %7818
  %7820 = load double* %_from641.01161, align 8, !tbaa !15
  %7821 = extractelement <2 x double> %7741, i32 1
  %7822 = fmul double %7821, %7804
  %7823 = fmul double %33, %7821
  %7824 = fsub double 1.000000e+00, %7823
  %7825 = fmul double %7824, %7822
  %7826 = fadd double %7825, %7801
  %7827 = fmul double %7820, %7826
  %7828 = fadd double %7827, %7819
  %7829 = fsub double 1.000000e+00, %7814
  %7830 = fmul double %7829, %7813
  %7831 = fsub double %7801, %7830
  %7832 = fmul double %7831, %7800
  %7833 = fsub double %7828, %7832
  %7834 = fadd double %7823, 1.000000e+00
  %7835 = fmul double %7834, %7822
  %7836 = fsub double %7835, %7801
  %7837 = fdiv double %7833, %7836
  store double %7837, double* %_to640.01160, align 8, !tbaa !15
  %7838 = getelementptr inbounds double* %_radius638.01158, i64 -1
  %7839 = getelementptr inbounds double* %_xyz639.01159, i64 -1
  %7840 = getelementptr inbounds double* %_to640.01160, i64 -1
  %7841 = getelementptr inbounds double* %_from641.01161, i64 -1
  %7842 = add nsw i32 %_i631.01157, -1
  %7843 = icmp sgt i32 %_i631.01157, 0
  br i1 %7843, label %7735, label %.loopexit823

.loopexit930:                                     ; preds = %.loopexit864, %7693, %.loopexit932
  %dtvvar0H.228 = phi double [ %dtvvar0H.223, %.loopexit932 ], [ %dtvvar0H.223, %7693 ], [ %dtvvar0H.225.lcssa, %.loopexit864 ]
  %7844 = icmp ult i64 %7690, 4294967296
  br i1 %7844, label %.loopexit873, label %7845

; <label>:7845                                    ; preds = %.loopexit930
  %7846 = load i32* %102, align 4, !tbaa !7
  %7847 = icmp sgt i32 %7846, 0
  br i1 %7847, label %.preheader863.lr.ph, label %.loopexit873

.preheader863.lr.ph:                              ; preds = %7845
  %7848 = load i32** %93, align 8, !tbaa !17
  %7849 = getelementptr inbounds i32* %7848, i64 2
  %7850 = load i32* %7849, align 4, !tbaa !7
  %7851 = sub nsw i32 %7850, %7846
  %7852 = getelementptr inbounds i32* %7848, i64 1
  %7853 = load i32* %7852, align 4, !tbaa !7
  %7854 = icmp sgt i32 %7853, 0
  %7855 = load i32* %103, align 4, !tbaa !7
  %7856 = sub nsw i32 0, %7855
  %7857 = mul nsw i32 %7855, -2
  %7858 = load double** %86, align 8, !tbaa !13
  %7859 = load double** %104, align 16, !tbaa !13
  %7860 = sext i32 %7856 to i64
  %7861 = sext i32 %7857 to i64
  br label %.preheader863

.preheader863:                                    ; preds = %.preheader863.lr.ph, %._crit_edge1191
  %dtvvar0H.2291195 = phi double [ %dtvvar0H.228, %.preheader863.lr.ph ], [ %dtvvar0H.230.lcssa, %._crit_edge1191 ]
  %_k647.01193 = phi i32 [ %7851, %.preheader863.lr.ph ], [ %7994, %._crit_edge1191 ]
  br i1 %7854, label %.lr.ph1190, label %._crit_edge1191

.lr.ph1190:                                       ; preds = %.preheader863
  %7862 = load i8**** %38, align 8, !tbaa !12
  %7863 = getelementptr inbounds i8*** %7862, i64 %indvars.iv2111
  %7864 = bitcast i8*** %7863 to double***
  %7865 = load double*** %7864, align 8, !tbaa !13
  %7866 = load double** %7865, align 8, !tbaa !13
  %7867 = getelementptr inbounds i8*** %7862, i64 %indvars.iv2113
  %7868 = load i8*** %7867, align 8, !tbaa !13
  %7869 = getelementptr inbounds i8** %7868, i64 %.
  %7870 = bitcast i8** %7869 to double**
  %7871 = load double** %7870, align 8, !tbaa !13
  %7872 = load i32* %7848, align 4, !tbaa !7
  %7873 = icmp sgt i32 %7872, 0
  br label %7874

; <label>:7874                                    ; preds = %.lr.ph1190, %._crit_edge1186
  %dtvvar0H.2301189 = phi double [ %dtvvar0H.2291195, %.lr.ph1190 ], [ %dtvvar0H.231.lcssa, %._crit_edge1186 ]
  %_j646.01188 = phi i32 [ 0, %.lr.ph1190 ], [ %7992, %._crit_edge1186 ]
  %7875 = mul nsw i32 %7853, %_k647.01193
  %7876 = add nsw i32 %7875, %_j646.01188
  %7877 = mul nsw i32 %7872, %7876
  %7878 = sext i32 %7877 to i64
  br i1 %7873, label %.lr.ph1185, label %._crit_edge1186

.lr.ph1185:                                       ; preds = %7874
  %7879 = getelementptr inbounds double* %7871, i64 %7878
  %7880 = getelementptr inbounds double* %7866, i64 %7878
  %7881 = getelementptr inbounds double* %7859, i64 %7878
  %7882 = getelementptr inbounds double* %7858, i64 %7878
  br label %7883

; <label>:7883                                    ; preds = %.lr.ph1185, %7947
  %dtvvar0H.2311183 = phi double [ %dtvvar0H.2301189, %.lr.ph1185 ], [ %dtvvar0H.232, %7947 ]
  %_from655.01182 = phi double* [ %7879, %.lr.ph1185 ], [ %7989, %7947 ]
  %_to654.01181 = phi double* [ %7880, %.lr.ph1185 ], [ %7988, %7947 ]
  %_xyz653.01180 = phi double* [ %7881, %.lr.ph1185 ], [ %7987, %7947 ]
  %_radius652.01179 = phi double* [ %7882, %.lr.ph1185 ], [ %7986, %7947 ]
  %_i645.01178 = phi i32 [ 0, %.lr.ph1185 ], [ %7990, %7947 ]
  %7884 = load double* %_radius652.01179, align 8, !tbaa !15
  %7885 = getelementptr inbounds double* %_radius652.01179, i64 %7860
  %7886 = load double* %7885, align 8, !tbaa !15
  %7887 = insertelement <2 x double> undef, double %7886, i32 0
  %7888 = insertelement <2 x double> %7887, double %7884, i32 1
  %7889 = fdiv <2 x double> <double 1.000000e+00, double 1.000000e+00>, %7888
  br i1 %105, label %7891, label %._crit_edge2209

._crit_edge2209:                                  ; preds = %7883
  %.pre2210 = load double* %_xyz653.01180, align 8, !tbaa !15
  %.phi.trans.insert2211 = getelementptr inbounds double* %_xyz653.01180, i64 %7860
  %.pre2212 = load double* %.phi.trans.insert2211, align 8, !tbaa !15
  %.phi.trans.insert2213 = getelementptr inbounds double* %_to654.01181, i64 %7860
  %.pre2214 = load double* %.phi.trans.insert2213, align 8, !tbaa !15
  %.pre2215 = load double* %109, align 16, !tbaa !15
  %.phi.trans.insert2216 = getelementptr inbounds double* %_from655.01182, i64 %7860
  %.pre2217 = load double* %.phi.trans.insert2216, align 8, !tbaa !15
  %7890 = fmul <2 x double> %7889, %7889
  br label %7947

; <label>:7891                                    ; preds = %7883
  %7892 = load double* %108, align 16, !tbaa !15
  %7893 = fmul double %107, %7892
  %7894 = load double* %_xyz653.01180, align 8, !tbaa !15
  %7895 = fmul <2 x double> %7889, %7889
  %7896 = extractelement <2 x double> %7895, i32 1
  %7897 = fmul double %7896, %7894
  %7898 = getelementptr inbounds double* %_xyz653.01180, i64 %7860
  %7899 = load double* %7898, align 8, !tbaa !15
  %7900 = extractelement <2 x double> %7895, i32 0
  %7901 = fmul double %7900, %7899
  %7902 = fadd double %7897, %7901
  %7903 = fmul double %7893, %7902
  %7904 = fsub double 1.000000e+00, %7903
  %7905 = fadd double %7903, 1.000000e+00
  %7906 = fdiv double %7904, %7905
  %7907 = getelementptr inbounds double* %_to654.01181, i64 %7860
  %7908 = load double* %7907, align 8, !tbaa !15
  %7909 = getelementptr inbounds double* %_to654.01181, i64 %7861
  %7910 = load double* %7909, align 8, !tbaa !15
  %7911 = fadd double %7908, %7910
  %7912 = getelementptr inbounds double* %_from655.01182, i64 %7860
  %7913 = load double* %7912, align 8, !tbaa !15
  %7914 = fadd double %7911, %7913
  %7915 = getelementptr inbounds double* %_from655.01182, i64 %7861
  %7916 = load double* %7915, align 8, !tbaa !15
  %7917 = fadd double %7914, %7916
  %7918 = fmul double %7917, 2.500000e-01
  %7919 = fsub double %7918, %var0
  %7920 = fmul double %32, %7919
  %7921 = fsub double %7908, %7913
  %7922 = fmul double %7886, %7921
  %7923 = getelementptr inbounds double* %_radius652.01179, i64 %7861
  %7924 = load double* %7923, align 8, !tbaa !15
  %7925 = fsub double %7910, %7916
  %7926 = fmul double %7924, %7925
  %7927 = fadd double %7922, %7926
  %7928 = fmul double %7927, 5.000000e-01
  %7929 = fadd double %7920, %7928
  %7930 = fsub double %7908, %7910
  %7931 = fadd double %7930, %7913
  %7932 = fsub double %7931, %7916
  %7933 = fmul double %7932, 2.500000e-01
  %7934 = load double* %109, align 16, !tbaa !15
  %7935 = fmul double %7933, %7934
  %7936 = fmul double %7886, %7886
  %7937 = fdiv double %7936, %7899
  %7938 = fmul double %7924, %7924
  %7939 = getelementptr inbounds double* %_xyz653.01180, i64 %7861
  %7940 = load double* %7939, align 8, !tbaa !15
  %7941 = fdiv double %7938, %7940
  %7942 = fadd double %7937, %7941
  %7943 = fmul double %7935, %7942
  %7944 = fadd double %7929, %7943
  %7945 = fmul double %7906, %7944
  %7946 = fadd double %34, %7945
  br label %7947

; <label>:7947                                    ; preds = %._crit_edge2209, %7891
  %7948 = phi double [ %.pre2217, %._crit_edge2209 ], [ %7913, %7891 ]
  %7949 = phi double [ %.pre2215, %._crit_edge2209 ], [ %7934, %7891 ]
  %7950 = phi double [ %.pre2214, %._crit_edge2209 ], [ %7908, %7891 ]
  %7951 = phi double [ %.pre2212, %._crit_edge2209 ], [ %7899, %7891 ]
  %7952 = phi double [ %.pre2210, %._crit_edge2209 ], [ %7894, %7891 ]
  %dtvvar0H.232 = phi double [ %dtvvar0H.2311183, %._crit_edge2209 ], [ %7946, %7891 ]
  %7953 = phi <2 x double> [ %7890, %._crit_edge2209 ], [ %7895, %7891 ]
  %7954 = extractelement <2 x double> %7953, i32 1
  %7955 = fmul double %7954, %7952
  %7956 = extractelement <2 x double> %7953, i32 0
  %7957 = fmul double %7956, %7951
  %7958 = fadd double %7955, %7957
  %7959 = fmul double %dtvvar0H.232, %7958
  %7960 = extractelement <2 x double> %7889, i32 0
  %7961 = fmul double %7960, %7951
  %7962 = fmul double %33, %7960
  %7963 = fadd double %7962, 1.000000e+00
  %7964 = fmul double %7963, %7961
  %7965 = fsub double %7949, %7964
  %7966 = fmul double %7950, %7965
  %7967 = fadd double %7959, %7966
  %7968 = load double* %_from655.01182, align 8, !tbaa !15
  %7969 = extractelement <2 x double> %7889, i32 1
  %7970 = fmul double %7969, %7952
  %7971 = fmul double %33, %7969
  %7972 = fsub double 1.000000e+00, %7971
  %7973 = fmul double %7972, %7970
  %7974 = fsub double %7973, %7949
  %7975 = fmul double %7968, %7974
  %7976 = fadd double %7975, %7967
  %7977 = fsub double 1.000000e+00, %7962
  %7978 = fmul double %7977, %7961
  %7979 = fadd double %7949, %7978
  %7980 = fmul double %7979, %7948
  %7981 = fadd double %7980, %7976
  %7982 = fadd double %7971, 1.000000e+00
  %7983 = fmul double %7982, %7970
  %7984 = fadd double %7983, %7949
  %7985 = fdiv double %7981, %7984
  store double %7985, double* %_to654.01181, align 8, !tbaa !15
  %7986 = getelementptr inbounds double* %_radius652.01179, i64 1
  %7987 = getelementptr inbounds double* %_xyz653.01180, i64 1
  %7988 = getelementptr inbounds double* %_to654.01181, i64 1
  %7989 = getelementptr inbounds double* %_from655.01182, i64 1
  %7990 = add nuw nsw i32 %_i645.01178, 1
  %7991 = icmp slt i32 %7990, %7872
  br i1 %7991, label %7883, label %._crit_edge1186

._crit_edge1186:                                  ; preds = %7947, %7874
  %dtvvar0H.231.lcssa = phi double [ %dtvvar0H.2301189, %7874 ], [ %dtvvar0H.232, %7947 ]
  %7992 = add nuw nsw i32 %_j646.01188, 1
  %7993 = icmp slt i32 %7992, %7853
  br i1 %7993, label %7874, label %._crit_edge1191

._crit_edge1191:                                  ; preds = %._crit_edge1186, %.preheader863
  %dtvvar0H.230.lcssa = phi double [ %dtvvar0H.2291195, %.preheader863 ], [ %dtvvar0H.231.lcssa, %._crit_edge1186 ]
  %7994 = add nsw i32 %_k647.01193, 1
  %7995 = icmp slt i32 %7994, %7850
  br i1 %7995, label %.preheader863, label %.loopexit873

; <label>:7996                                    ; preds = %177
  br i1 %96, label %7999, label %7997

; <label>:7997                                    ; preds = %7996
  %7998 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 1553, i8* getelementptr inbounds ([88 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([58 x i8]* @.str12, i64 0, i64 0), i32 %7) #5
  br label %.loopexit947

; <label>:7999                                    ; preds = %7996
  %8000 = bitcast [6 x i32]* %doBC to i64*
  %8001 = load i64* %8000, align 16
  %8002 = trunc i64 %8001 to i32
  %8003 = icmp eq i32 %8002, 0
  br i1 %8003, label %.loopexit944, label %8004

; <label>:8004                                    ; preds = %7999
  %8005 = load i32** %93, align 8, !tbaa !17
  %8006 = getelementptr inbounds i32* %8005, i64 2
  %8007 = load i32* %8006, align 4, !tbaa !7
  %8008 = icmp sgt i32 %8007, 0
  br i1 %8008, label %.lr.ph974, label %.loopexit944

.lr.ph974:                                        ; preds = %8004
  %8009 = getelementptr inbounds i32* %8005, i64 1
  %8010 = load i32* %8009, align 4, !tbaa !7
  %8011 = icmp sgt i32 %8010, 0
  %8012 = load i32* %113, align 4, !tbaa !7
  %8013 = shl nsw i32 %8012, 1
  %8014 = load i32* %114, align 4, !tbaa !7
  %8015 = add nsw i32 %8014, -1
  %8016 = load double** %86, align 8, !tbaa !13
  %8017 = load double** %115, align 16, !tbaa !13
  %8018 = icmp sgt i32 %8014, 0
  %8019 = sext i32 %8012 to i64
  %8020 = load double* %108, align 16, !tbaa !15
  %8021 = fmul double %107, %8020
  %8022 = sext i32 %8013 to i64
  %8023 = load double* %109, align 16, !tbaa !15
  %8024 = fpext double %8023 to x86_fp80
  %8025 = sext i32 %8010 to i64
  %8026 = sext i32 %8015 to i64
  br label %8028

.loopexit872:                                     ; preds = %.loopexit828, %8028
  %dtvvar0H.234.lcssa = phi double [ %dtvvar0H.233972, %8028 ], [ %dtvvar0H.235.lcssa, %.loopexit828 ]
  %8027 = icmp sgt i32 %_k661.0973.in, 1
  br i1 %8027, label %8028, label %.loopexit944

; <label>:8028                                    ; preds = %.lr.ph974, %.loopexit872
  %_k661.0973.in = phi i32 [ %8007, %.lr.ph974 ], [ %_k661.0973, %.loopexit872 ]
  %dtvvar0H.233972 = phi double [ %dtvvar0H.02051, %.lr.ph974 ], [ %dtvvar0H.234.lcssa, %.loopexit872 ]
  %_k661.0973 = add nsw i32 %_k661.0973.in, -1
  br i1 %8011, label %.lr.ph969, label %.loopexit872

.lr.ph969:                                        ; preds = %8028
  %8029 = load i32* %8005, align 4, !tbaa !7
  %8030 = mul nsw i32 %8010, %_k661.0973
  %8031 = load i8**** %38, align 8, !tbaa !12
  %8032 = getelementptr inbounds i8*** %8031, i64 %indvars.iv2111
  %8033 = bitcast i8*** %8032 to x86_fp80***
  %8034 = load x86_fp80*** %8033, align 8, !tbaa !13
  %8035 = load x86_fp80** %8034, align 8, !tbaa !13
  %8036 = getelementptr inbounds i8*** %8031, i64 %indvars.iv2113
  %8037 = load i8*** %8036, align 8, !tbaa !13
  %8038 = getelementptr inbounds i8** %8037, i64 %.
  %8039 = bitcast i8** %8038 to x86_fp80**
  %8040 = load x86_fp80** %8039, align 8, !tbaa !13
  %8041 = sext i32 %8030 to i64
  %8042 = sext i32 %8029 to i64
  br label %8044

.loopexit828:                                     ; preds = %8118, %8044
  %dtvvar0H.235.lcssa = phi double [ %dtvvar0H.234967, %8044 ], [ %dtvvar0H.236, %8118 ]
  %8043 = icmp sgt i64 %indvars.iv2075, 1
  br i1 %8043, label %8044, label %.loopexit872

; <label>:8044                                    ; preds = %.lr.ph969, %.loopexit828
  %indvars.iv2075 = phi i64 [ %8025, %.lr.ph969 ], [ %indvars.iv.next2076, %.loopexit828 ]
  %dtvvar0H.234967 = phi double [ %dtvvar0H.233972, %.lr.ph969 ], [ %dtvvar0H.235.lcssa, %.loopexit828 ]
  %indvars.iv.next2076 = add nsw i64 %indvars.iv2075, -1
  %8045 = add nsw i64 %8041, %indvars.iv.next2076
  %8046 = mul nsw i64 %8045, %8042
  %8047 = add nsw i64 %8046, %8026
  br i1 %8018, label %.lr.ph, label %.loopexit828

.lr.ph:                                           ; preds = %8044
  %8048 = getelementptr inbounds x86_fp80* %8040, i64 %8047
  %8049 = getelementptr inbounds x86_fp80* %8035, i64 %8047
  %8050 = getelementptr inbounds double* %8017, i64 %8047
  %8051 = getelementptr inbounds double* %8016, i64 %8047
  br label %8052

; <label>:8052                                    ; preds = %.lr.ph, %8118
  %dtvvar0H.235965 = phi double [ %dtvvar0H.234967, %.lr.ph ], [ %dtvvar0H.236, %8118 ]
  %_from669.0964 = phi x86_fp80* [ %8048, %.lr.ph ], [ %8163, %8118 ]
  %_to668.0963 = phi x86_fp80* [ %8049, %.lr.ph ], [ %8162, %8118 ]
  %_xyz667.0962 = phi double* [ %8050, %.lr.ph ], [ %8161, %8118 ]
  %_radius666.0961 = phi double* [ %8051, %.lr.ph ], [ %8160, %8118 ]
  %_i659.0960 = phi i32 [ %8015, %.lr.ph ], [ %8164, %8118 ]
  %8053 = load double* %_radius666.0961, align 8, !tbaa !15
  %8054 = getelementptr inbounds double* %_radius666.0961, i64 %8019
  %8055 = load double* %8054, align 8, !tbaa !15
  %8056 = insertelement <2 x double> undef, double %8055, i32 0
  %8057 = insertelement <2 x double> %8056, double %8053, i32 1
  %8058 = fdiv <2 x double> <double 1.000000e+00, double 1.000000e+00>, %8057
  %8059 = load double* %_xyz667.0962, align 8, !tbaa !15
  br i1 %105, label %8061, label %._crit_edge2118

._crit_edge2118:                                  ; preds = %8052
  %.phi.trans.insert = getelementptr inbounds double* %_xyz667.0962, i64 %8019
  %.pre2119 = load double* %.phi.trans.insert, align 8, !tbaa !15
  %.phi.trans.insert2120 = getelementptr inbounds x86_fp80* %_to668.0963, i64 %8019
  %.pre2121 = load x86_fp80* %.phi.trans.insert2120, align 16, !tbaa !28
  %.phi.trans.insert2122 = getelementptr inbounds x86_fp80* %_from669.0964, i64 %8019
  %.pre2123 = load x86_fp80* %.phi.trans.insert2122, align 16, !tbaa !28
  %8060 = fmul <2 x double> %8058, %8058
  br label %8118

; <label>:8061                                    ; preds = %8052
  %8062 = fmul <2 x double> %8058, %8058
  %8063 = extractelement <2 x double> %8062, i32 1
  %8064 = fmul double %8063, %8059
  %8065 = getelementptr inbounds double* %_xyz667.0962, i64 %8019
  %8066 = load double* %8065, align 8, !tbaa !15
  %8067 = extractelement <2 x double> %8062, i32 0
  %8068 = fmul double %8067, %8066
  %8069 = fadd double %8064, %8068
  %8070 = fmul double %8021, %8069
  %8071 = fadd double %8070, 1.000000e+00
  %8072 = fsub double 1.000000e+00, %8070
  %8073 = fdiv double %8071, %8072
  %8074 = getelementptr inbounds x86_fp80* %_to668.0963, i64 %8019
  %8075 = load x86_fp80* %8074, align 16, !tbaa !28
  %8076 = getelementptr inbounds x86_fp80* %_to668.0963, i64 %8022
  %8077 = load x86_fp80* %8076, align 16, !tbaa !28
  %8078 = fadd x86_fp80 %8075, %8077
  %8079 = getelementptr inbounds x86_fp80* %_from669.0964, i64 %8019
  %8080 = load x86_fp80* %8079, align 16, !tbaa !28
  %8081 = fadd x86_fp80 %8078, %8080
  %8082 = getelementptr inbounds x86_fp80* %_from669.0964, i64 %8022
  %8083 = load x86_fp80* %8082, align 16, !tbaa !28
  %8084 = fadd x86_fp80 %8081, %8083
  %8085 = fmul x86_fp80 %8084, 0xK3FFD8000000000000000
  %8086 = fsub x86_fp80 %8085, %117
  %8087 = fmul x86_fp80 %116, %8086
  %8088 = fpext double %8055 to x86_fp80
  %8089 = fsub x86_fp80 %8075, %8080
  %8090 = fmul x86_fp80 %8088, %8089
  %8091 = getelementptr inbounds double* %_radius666.0961, i64 %8022
  %8092 = load double* %8091, align 8, !tbaa !15
  %8093 = fpext double %8092 to x86_fp80
  %8094 = fsub x86_fp80 %8077, %8083
  %8095 = fmul x86_fp80 %8094, %8093
  %8096 = fadd x86_fp80 %8090, %8095
  %8097 = fmul x86_fp80 %8096, 0xK3FFE8000000000000000
  %8098 = fadd x86_fp80 %8087, %8097
  %8099 = fsub x86_fp80 %8077, %8075
  %8100 = fadd x86_fp80 %8099, %8083
  %8101 = fsub x86_fp80 %8100, %8080
  %8102 = fmul x86_fp80 %8101, 0xK3FFD8000000000000000
  %8103 = fmul x86_fp80 %8102, %8024
  %8104 = fmul double %8055, %8055
  %8105 = fdiv double %8104, %8066
  %8106 = fmul double %8092, %8092
  %8107 = getelementptr inbounds double* %_xyz667.0962, i64 %8022
  %8108 = load double* %8107, align 8, !tbaa !15
  %8109 = fdiv double %8106, %8108
  %8110 = fadd double %8105, %8109
  %8111 = fpext double %8110 to x86_fp80
  %8112 = fmul x86_fp80 %8103, %8111
  %8113 = fadd x86_fp80 %8098, %8112
  %8114 = fpext double %8073 to x86_fp80
  %8115 = fmul x86_fp80 %8114, %8113
  %8116 = fptrunc x86_fp80 %8115 to double
  %8117 = fadd double %34, %8116
  br label %8118

; <label>:8118                                    ; preds = %._crit_edge2118, %8061
  %8119 = phi x86_fp80 [ %.pre2123, %._crit_edge2118 ], [ %8080, %8061 ]
  %8120 = phi x86_fp80 [ %.pre2121, %._crit_edge2118 ], [ %8075, %8061 ]
  %8121 = phi double [ %.pre2119, %._crit_edge2118 ], [ %8066, %8061 ]
  %dtvvar0H.236 = phi double [ %dtvvar0H.235965, %._crit_edge2118 ], [ %8117, %8061 ]
  %8122 = phi <2 x double> [ %8060, %._crit_edge2118 ], [ %8062, %8061 ]
  %8123 = extractelement <2 x double> %8122, i32 1
  %8124 = fmul double %8123, %8059
  %8125 = extractelement <2 x double> %8122, i32 0
  %8126 = fmul double %8125, %8121
  %8127 = fadd double %8124, %8126
  %8128 = fmul double %dtvvar0H.236, %8127
  %8129 = fpext double %8128 to x86_fp80
  %8130 = extractelement <2 x double> %8058, i32 0
  %8131 = fmul double %8130, %8121
  %8132 = fmul double %33, %8130
  %8133 = fadd double %8132, 1.000000e+00
  %8134 = fmul double %8133, %8131
  %8135 = fadd double %8023, %8134
  %8136 = fpext double %8135 to x86_fp80
  %8137 = fmul x86_fp80 %8120, %8136
  %8138 = fsub x86_fp80 %8129, %8137
  %8139 = load x86_fp80* %_from669.0964, align 16, !tbaa !28
  %8140 = extractelement <2 x double> %8058, i32 1
  %8141 = fmul double %8140, %8059
  %8142 = fmul double %33, %8140
  %8143 = fsub double 1.000000e+00, %8142
  %8144 = fmul double %8143, %8141
  %8145 = fadd double %8144, %8023
  %8146 = fpext double %8145 to x86_fp80
  %8147 = fmul x86_fp80 %8139, %8146
  %8148 = fadd x86_fp80 %8147, %8138
  %8149 = fsub double 1.000000e+00, %8132
  %8150 = fmul double %8149, %8131
  %8151 = fsub double %8023, %8150
  %8152 = fpext double %8151 to x86_fp80
  %8153 = fmul x86_fp80 %8119, %8152
  %8154 = fsub x86_fp80 %8148, %8153
  %8155 = fadd double %8142, 1.000000e+00
  %8156 = fmul double %8155, %8141
  %8157 = fsub double %8156, %8023
  %8158 = fpext double %8157 to x86_fp80
  %8159 = fdiv x86_fp80 %8154, %8158
  store x86_fp80 %8159, x86_fp80* %_to668.0963, align 16, !tbaa !28
  %8160 = getelementptr inbounds double* %_radius666.0961, i64 -1
  %8161 = getelementptr inbounds double* %_xyz667.0962, i64 -1
  %8162 = getelementptr inbounds x86_fp80* %_to668.0963, i64 -1
  %8163 = getelementptr inbounds x86_fp80* %_from669.0964, i64 -1
  %8164 = add nsw i32 %_i659.0960, -1
  %8165 = icmp sgt i32 %_i659.0960, 0
  br i1 %8165, label %8052, label %.loopexit828

.loopexit944:                                     ; preds = %.loopexit872, %8004, %7999
  %dtvvar0H.237 = phi double [ %dtvvar0H.02051, %7999 ], [ %dtvvar0H.02051, %8004 ], [ %dtvvar0H.234.lcssa, %.loopexit872 ]
  %8166 = icmp ult i64 %8001, 4294967296
  br i1 %8166, label %.loopexit943, label %.preheader942

.preheader942:                                    ; preds = %.loopexit944
  %8167 = load i32** %93, align 8, !tbaa !17
  %8168 = getelementptr inbounds i32* %8167, i64 2
  %8169 = load i32* %8168, align 4, !tbaa !7
  %8170 = icmp sgt i32 %8169, 0
  br i1 %8170, label %.preheader871.lr.ph, label %.loopexit943

.preheader871.lr.ph:                              ; preds = %.preheader942
  %8171 = getelementptr inbounds i32* %8167, i64 1
  %8172 = load i32* %8171, align 4, !tbaa !7
  %8173 = icmp sgt i32 %8172, 0
  %8174 = load i32* %113, align 4, !tbaa !7
  %8175 = sub nsw i32 0, %8174
  %8176 = mul nsw i32 %8174, -2
  %8177 = load i32* %114, align 4, !tbaa !7
  %8178 = load double** %86, align 8, !tbaa !13
  %8179 = load double** %115, align 16, !tbaa !13
  %8180 = sext i32 %8175 to i64
  %8181 = load double* %108, align 16, !tbaa !15
  %8182 = fmul double %107, %8181
  %8183 = sext i32 %8176 to i64
  %8184 = load double* %109, align 16, !tbaa !15
  %8185 = fpext double %8184 to x86_fp80
  br label %.preheader871

.preheader871:                                    ; preds = %.preheader871.lr.ph, %._crit_edge987
  %dtvvar0H.238991 = phi double [ %dtvvar0H.237, %.preheader871.lr.ph ], [ %dtvvar0H.239.lcssa, %._crit_edge987 ]
  %_k675.0989 = phi i32 [ 0, %.preheader871.lr.ph ], [ %8325, %._crit_edge987 ]
  br i1 %8173, label %.lr.ph986, label %._crit_edge987

.lr.ph986:                                        ; preds = %.preheader871
  %8186 = load i8**** %38, align 8, !tbaa !12
  %8187 = getelementptr inbounds i8*** %8186, i64 %indvars.iv2111
  %8188 = bitcast i8*** %8187 to x86_fp80***
  %8189 = load x86_fp80*** %8188, align 8, !tbaa !13
  %8190 = load x86_fp80** %8189, align 8, !tbaa !13
  %8191 = getelementptr inbounds i8*** %8186, i64 %indvars.iv2113
  %8192 = load i8*** %8191, align 8, !tbaa !13
  %8193 = getelementptr inbounds i8** %8192, i64 %.
  %8194 = bitcast i8** %8193 to x86_fp80**
  %8195 = load x86_fp80** %8194, align 8, !tbaa !13
  %8196 = load i32* %8167, align 4, !tbaa !7
  br label %8197

; <label>:8197                                    ; preds = %.lr.ph986, %._crit_edge
  %dtvvar0H.239985 = phi double [ %dtvvar0H.238991, %.lr.ph986 ], [ %dtvvar0H.240.lcssa, %._crit_edge ]
  %_j674.0984 = phi i32 [ 0, %.lr.ph986 ], [ %8323, %._crit_edge ]
  %8198 = sub nsw i32 %8196, %8177
  %8199 = mul nsw i32 %8172, %_k675.0989
  %8200 = add nsw i32 %8199, %_j674.0984
  %8201 = mul nsw i32 %8196, %8200
  %8202 = add nsw i32 %8198, %8201
  %8203 = sext i32 %8202 to i64
  %8204 = icmp sgt i32 %8177, 0
  br i1 %8204, label %.lr.ph982, label %._crit_edge

.lr.ph982:                                        ; preds = %8197
  %8205 = getelementptr inbounds x86_fp80* %8195, i64 %8203
  %8206 = getelementptr inbounds x86_fp80* %8190, i64 %8203
  %8207 = getelementptr inbounds double* %8179, i64 %8203
  %8208 = getelementptr inbounds double* %8178, i64 %8203
  br label %8209

; <label>:8209                                    ; preds = %.lr.ph982, %8275
  %dtvvar0H.240981 = phi double [ %dtvvar0H.239985, %.lr.ph982 ], [ %dtvvar0H.241, %8275 ]
  %_from683.0980 = phi x86_fp80* [ %8205, %.lr.ph982 ], [ %8320, %8275 ]
  %_to682.0979 = phi x86_fp80* [ %8206, %.lr.ph982 ], [ %8319, %8275 ]
  %_xyz681.0978 = phi double* [ %8207, %.lr.ph982 ], [ %8318, %8275 ]
  %_radius680.0977 = phi double* [ %8208, %.lr.ph982 ], [ %8317, %8275 ]
  %_i673.0976 = phi i32 [ %8198, %.lr.ph982 ], [ %8321, %8275 ]
  %8210 = load double* %_radius680.0977, align 8, !tbaa !15
  %8211 = getelementptr inbounds double* %_radius680.0977, i64 %8180
  %8212 = load double* %8211, align 8, !tbaa !15
  %8213 = insertelement <2 x double> undef, double %8212, i32 0
  %8214 = insertelement <2 x double> %8213, double %8210, i32 1
  %8215 = fdiv <2 x double> <double 1.000000e+00, double 1.000000e+00>, %8214
  %8216 = load double* %_xyz681.0978, align 8, !tbaa !15
  br i1 %105, label %8218, label %._crit_edge2124

._crit_edge2124:                                  ; preds = %8209
  %.phi.trans.insert2126 = getelementptr inbounds double* %_xyz681.0978, i64 %8180
  %.pre2127 = load double* %.phi.trans.insert2126, align 8, !tbaa !15
  %.phi.trans.insert2128 = getelementptr inbounds x86_fp80* %_to682.0979, i64 %8180
  %.pre2129 = load x86_fp80* %.phi.trans.insert2128, align 16, !tbaa !28
  %.phi.trans.insert2130 = getelementptr inbounds x86_fp80* %_from683.0980, i64 %8180
  %.pre2131 = load x86_fp80* %.phi.trans.insert2130, align 16, !tbaa !28
  %8217 = fmul <2 x double> %8215, %8215
  br label %8275

; <label>:8218                                    ; preds = %8209
  %8219 = fmul <2 x double> %8215, %8215
  %8220 = extractelement <2 x double> %8219, i32 1
  %8221 = fmul double %8220, %8216
  %8222 = getelementptr inbounds double* %_xyz681.0978, i64 %8180
  %8223 = load double* %8222, align 8, !tbaa !15
  %8224 = extractelement <2 x double> %8219, i32 0
  %8225 = fmul double %8224, %8223
  %8226 = fadd double %8221, %8225
  %8227 = fmul double %8182, %8226
  %8228 = fsub double 1.000000e+00, %8227
  %8229 = fadd double %8227, 1.000000e+00
  %8230 = fdiv double %8228, %8229
  %8231 = getelementptr inbounds x86_fp80* %_to682.0979, i64 %8180
  %8232 = load x86_fp80* %8231, align 16, !tbaa !28
  %8233 = getelementptr inbounds x86_fp80* %_to682.0979, i64 %8183
  %8234 = load x86_fp80* %8233, align 16, !tbaa !28
  %8235 = fadd x86_fp80 %8232, %8234
  %8236 = getelementptr inbounds x86_fp80* %_from683.0980, i64 %8180
  %8237 = load x86_fp80* %8236, align 16, !tbaa !28
  %8238 = fadd x86_fp80 %8235, %8237
  %8239 = getelementptr inbounds x86_fp80* %_from683.0980, i64 %8183
  %8240 = load x86_fp80* %8239, align 16, !tbaa !28
  %8241 = fadd x86_fp80 %8238, %8240
  %8242 = fmul x86_fp80 %8241, 0xK3FFD8000000000000000
  %8243 = fsub x86_fp80 %8242, %117
  %8244 = fmul x86_fp80 %116, %8243
  %8245 = fpext double %8212 to x86_fp80
  %8246 = fsub x86_fp80 %8232, %8237
  %8247 = fmul x86_fp80 %8245, %8246
  %8248 = getelementptr inbounds double* %_radius680.0977, i64 %8183
  %8249 = load double* %8248, align 8, !tbaa !15
  %8250 = fpext double %8249 to x86_fp80
  %8251 = fsub x86_fp80 %8234, %8240
  %8252 = fmul x86_fp80 %8251, %8250
  %8253 = fadd x86_fp80 %8247, %8252
  %8254 = fmul x86_fp80 %8253, 0xK3FFE8000000000000000
  %8255 = fadd x86_fp80 %8244, %8254
  %8256 = fsub x86_fp80 %8232, %8234
  %8257 = fadd x86_fp80 %8256, %8237
  %8258 = fsub x86_fp80 %8257, %8240
  %8259 = fmul x86_fp80 %8258, 0xK3FFD8000000000000000
  %8260 = fmul x86_fp80 %8259, %8185
  %8261 = fmul double %8212, %8212
  %8262 = fdiv double %8261, %8223
  %8263 = fmul double %8249, %8249
  %8264 = getelementptr inbounds double* %_xyz681.0978, i64 %8183
  %8265 = load double* %8264, align 8, !tbaa !15
  %8266 = fdiv double %8263, %8265
  %8267 = fadd double %8262, %8266
  %8268 = fpext double %8267 to x86_fp80
  %8269 = fmul x86_fp80 %8260, %8268
  %8270 = fadd x86_fp80 %8255, %8269
  %8271 = fpext double %8230 to x86_fp80
  %8272 = fmul x86_fp80 %8271, %8270
  %8273 = fptrunc x86_fp80 %8272 to double
  %8274 = fadd double %34, %8273
  br label %8275

; <label>:8275                                    ; preds = %._crit_edge2124, %8218
  %8276 = phi x86_fp80 [ %.pre2131, %._crit_edge2124 ], [ %8237, %8218 ]
  %8277 = phi x86_fp80 [ %.pre2129, %._crit_edge2124 ], [ %8232, %8218 ]
  %8278 = phi double [ %.pre2127, %._crit_edge2124 ], [ %8223, %8218 ]
  %dtvvar0H.241 = phi double [ %dtvvar0H.240981, %._crit_edge2124 ], [ %8274, %8218 ]
  %8279 = phi <2 x double> [ %8217, %._crit_edge2124 ], [ %8219, %8218 ]
  %8280 = extractelement <2 x double> %8279, i32 1
  %8281 = fmul double %8280, %8216
  %8282 = extractelement <2 x double> %8279, i32 0
  %8283 = fmul double %8282, %8278
  %8284 = fadd double %8281, %8283
  %8285 = fmul double %dtvvar0H.241, %8284
  %8286 = fpext double %8285 to x86_fp80
  %8287 = extractelement <2 x double> %8215, i32 0
  %8288 = fmul double %8287, %8278
  %8289 = fmul double %33, %8287
  %8290 = fadd double %8289, 1.000000e+00
  %8291 = fmul double %8290, %8288
  %8292 = fsub double %8184, %8291
  %8293 = fpext double %8292 to x86_fp80
  %8294 = fmul x86_fp80 %8277, %8293
  %8295 = fadd x86_fp80 %8286, %8294
  %8296 = load x86_fp80* %_from683.0980, align 16, !tbaa !28
  %8297 = extractelement <2 x double> %8215, i32 1
  %8298 = fmul double %8297, %8216
  %8299 = fmul double %33, %8297
  %8300 = fsub double 1.000000e+00, %8299
  %8301 = fmul double %8300, %8298
  %8302 = fsub double %8301, %8184
  %8303 = fpext double %8302 to x86_fp80
  %8304 = fmul x86_fp80 %8296, %8303
  %8305 = fadd x86_fp80 %8304, %8295
  %8306 = fsub double 1.000000e+00, %8289
  %8307 = fmul double %8306, %8288
  %8308 = fadd double %8184, %8307
  %8309 = fpext double %8308 to x86_fp80
  %8310 = fmul x86_fp80 %8276, %8309
  %8311 = fadd x86_fp80 %8310, %8305
  %8312 = fadd double %8299, 1.000000e+00
  %8313 = fmul double %8312, %8298
  %8314 = fadd double %8313, %8184
  %8315 = fpext double %8314 to x86_fp80
  %8316 = fdiv x86_fp80 %8311, %8315
  store x86_fp80 %8316, x86_fp80* %_to682.0979, align 16, !tbaa !28
  %8317 = getelementptr inbounds double* %_radius680.0977, i64 1
  %8318 = getelementptr inbounds double* %_xyz681.0978, i64 1
  %8319 = getelementptr inbounds x86_fp80* %_to682.0979, i64 1
  %8320 = getelementptr inbounds x86_fp80* %_from683.0980, i64 1
  %8321 = add nsw i32 %_i673.0976, 1
  %8322 = icmp slt i32 %8321, %8196
  br i1 %8322, label %8209, label %._crit_edge

._crit_edge:                                      ; preds = %8275, %8197
  %dtvvar0H.240.lcssa = phi double [ %dtvvar0H.239985, %8197 ], [ %dtvvar0H.241, %8275 ]
  %8323 = add nuw nsw i32 %_j674.0984, 1
  %8324 = icmp slt i32 %8323, %8172
  br i1 %8324, label %8197, label %._crit_edge987

._crit_edge987:                                   ; preds = %._crit_edge, %.preheader871
  %dtvvar0H.239.lcssa = phi double [ %dtvvar0H.238991, %.preheader871 ], [ %dtvvar0H.240.lcssa, %._crit_edge ]
  %8325 = add nuw nsw i32 %_k675.0989, 1
  %8326 = icmp slt i32 %8325, %8169
  br i1 %8326, label %.preheader871, label %.loopexit943

.loopexit943:                                     ; preds = %._crit_edge987, %.preheader942, %.loopexit944
  %dtvvar0H.242 = phi double [ %dtvvar0H.237, %.loopexit944 ], [ %dtvvar0H.237, %.preheader942 ], [ %dtvvar0H.239.lcssa, %._crit_edge987 ]
  %8327 = bitcast i32* %98 to i64*
  %8328 = load i64* %8327, align 8
  %8329 = trunc i64 %8328 to i32
  %8330 = icmp eq i32 %8329, 0
  br i1 %8330, label %.loopexit941, label %8331

; <label>:8331                                    ; preds = %.loopexit943
  %8332 = load i32** %93, align 8, !tbaa !17
  %8333 = getelementptr inbounds i32* %8332, i64 2
  %8334 = load i32* %8333, align 4, !tbaa !7
  %8335 = icmp sgt i32 %8334, 0
  br i1 %8335, label %.lr.ph1012, label %.loopexit941

.lr.ph1012:                                       ; preds = %8331
  %8336 = load i32* %110, align 4, !tbaa !7
  %8337 = icmp sgt i32 %8336, 0
  %8338 = load i32* %111, align 4, !tbaa !7
  %8339 = shl nsw i32 %8338, 1
  %8340 = load double** %86, align 8, !tbaa !13
  %8341 = load double** %112, align 8, !tbaa !13
  %8342 = sext i32 %8338 to i64
  %8343 = load double* %108, align 16, !tbaa !15
  %8344 = fmul double %107, %8343
  %8345 = sext i32 %8339 to i64
  %8346 = load double* %109, align 16, !tbaa !15
  %8347 = fpext double %8346 to x86_fp80
  %8348 = sext i32 %8336 to i64
  br label %8350

.loopexit870:                                     ; preds = %.loopexit827, %8350
  %dtvvar0H.244.lcssa = phi double [ %dtvvar0H.2431009, %8350 ], [ %dtvvar0H.245.lcssa, %.loopexit827 ]
  %8349 = icmp sgt i32 %_k689.01010.in, 1
  br i1 %8349, label %8350, label %.loopexit941

; <label>:8350                                    ; preds = %.lr.ph1012, %.loopexit870
  %_k689.01010.in = phi i32 [ %8334, %.lr.ph1012 ], [ %_k689.01010, %.loopexit870 ]
  %dtvvar0H.2431009 = phi double [ %dtvvar0H.242, %.lr.ph1012 ], [ %dtvvar0H.244.lcssa, %.loopexit870 ]
  %_k689.01010 = add nsw i32 %_k689.01010.in, -1
  br i1 %8337, label %.lr.ph1006, label %.loopexit870

.lr.ph1006:                                       ; preds = %8350
  %8351 = load i32* %8332, align 4, !tbaa !7
  %8352 = add nsw i32 %8351, -1
  %8353 = getelementptr inbounds i32* %8332, i64 1
  %8354 = load i32* %8353, align 4, !tbaa !7
  %8355 = mul nsw i32 %8354, %_k689.01010
  %8356 = load i8**** %38, align 8, !tbaa !12
  %8357 = getelementptr inbounds i8*** %8356, i64 %indvars.iv2111
  %8358 = bitcast i8*** %8357 to x86_fp80***
  %8359 = load x86_fp80*** %8358, align 8, !tbaa !13
  %8360 = load x86_fp80** %8359, align 8, !tbaa !13
  %8361 = getelementptr inbounds i8*** %8356, i64 %indvars.iv2113
  %8362 = load i8*** %8361, align 8, !tbaa !13
  %8363 = getelementptr inbounds i8** %8362, i64 %.
  %8364 = bitcast i8** %8363 to x86_fp80**
  %8365 = load x86_fp80** %8364, align 8, !tbaa !13
  %8366 = icmp sgt i32 %8351, 0
  %8367 = sext i32 %8355 to i64
  %8368 = sext i32 %8351 to i64
  %8369 = sext i32 %8352 to i64
  br label %8371

.loopexit827:                                     ; preds = %8445, %8371
  %dtvvar0H.245.lcssa = phi double [ %dtvvar0H.2441003, %8371 ], [ %dtvvar0H.246, %8445 ]
  %8370 = icmp sgt i64 %indvars.iv2077, 1
  br i1 %8370, label %8371, label %.loopexit870

; <label>:8371                                    ; preds = %.lr.ph1006, %.loopexit827
  %indvars.iv2077 = phi i64 [ %8348, %.lr.ph1006 ], [ %indvars.iv.next2078, %.loopexit827 ]
  %dtvvar0H.2441003 = phi double [ %dtvvar0H.2431009, %.lr.ph1006 ], [ %dtvvar0H.245.lcssa, %.loopexit827 ]
  %indvars.iv.next2078 = add nsw i64 %indvars.iv2077, -1
  %8372 = add nsw i64 %8367, %indvars.iv.next2078
  %8373 = mul nsw i64 %8372, %8368
  %8374 = add nsw i64 %8373, %8369
  br i1 %8366, label %.lr.ph1000, label %.loopexit827

.lr.ph1000:                                       ; preds = %8371
  %8375 = getelementptr inbounds x86_fp80* %8365, i64 %8374
  %8376 = getelementptr inbounds x86_fp80* %8360, i64 %8374
  %8377 = getelementptr inbounds double* %8341, i64 %8374
  %8378 = getelementptr inbounds double* %8340, i64 %8374
  br label %8379

; <label>:8379                                    ; preds = %.lr.ph1000, %8445
  %dtvvar0H.245998 = phi double [ %dtvvar0H.2441003, %.lr.ph1000 ], [ %dtvvar0H.246, %8445 ]
  %_from697.0997 = phi x86_fp80* [ %8375, %.lr.ph1000 ], [ %8490, %8445 ]
  %_to696.0996 = phi x86_fp80* [ %8376, %.lr.ph1000 ], [ %8489, %8445 ]
  %_xyz695.0995 = phi double* [ %8377, %.lr.ph1000 ], [ %8488, %8445 ]
  %_radius694.0994 = phi double* [ %8378, %.lr.ph1000 ], [ %8487, %8445 ]
  %_i687.0993 = phi i32 [ %8352, %.lr.ph1000 ], [ %8491, %8445 ]
  %8380 = load double* %_radius694.0994, align 8, !tbaa !15
  %8381 = getelementptr inbounds double* %_radius694.0994, i64 %8342
  %8382 = load double* %8381, align 8, !tbaa !15
  %8383 = insertelement <2 x double> undef, double %8382, i32 0
  %8384 = insertelement <2 x double> %8383, double %8380, i32 1
  %8385 = fdiv <2 x double> <double 1.000000e+00, double 1.000000e+00>, %8384
  %8386 = load double* %_xyz695.0995, align 8, !tbaa !15
  br i1 %105, label %8388, label %._crit_edge2132

._crit_edge2132:                                  ; preds = %8379
  %.phi.trans.insert2134 = getelementptr inbounds double* %_xyz695.0995, i64 %8342
  %.pre2135 = load double* %.phi.trans.insert2134, align 8, !tbaa !15
  %.phi.trans.insert2136 = getelementptr inbounds x86_fp80* %_to696.0996, i64 %8342
  %.pre2137 = load x86_fp80* %.phi.trans.insert2136, align 16, !tbaa !28
  %.phi.trans.insert2138 = getelementptr inbounds x86_fp80* %_from697.0997, i64 %8342
  %.pre2139 = load x86_fp80* %.phi.trans.insert2138, align 16, !tbaa !28
  %8387 = fmul <2 x double> %8385, %8385
  br label %8445

; <label>:8388                                    ; preds = %8379
  %8389 = fmul <2 x double> %8385, %8385
  %8390 = extractelement <2 x double> %8389, i32 1
  %8391 = fmul double %8390, %8386
  %8392 = getelementptr inbounds double* %_xyz695.0995, i64 %8342
  %8393 = load double* %8392, align 8, !tbaa !15
  %8394 = extractelement <2 x double> %8389, i32 0
  %8395 = fmul double %8394, %8393
  %8396 = fadd double %8391, %8395
  %8397 = fmul double %8344, %8396
  %8398 = fadd double %8397, 1.000000e+00
  %8399 = fsub double 1.000000e+00, %8397
  %8400 = fdiv double %8398, %8399
  %8401 = getelementptr inbounds x86_fp80* %_to696.0996, i64 %8342
  %8402 = load x86_fp80* %8401, align 16, !tbaa !28
  %8403 = getelementptr inbounds x86_fp80* %_to696.0996, i64 %8345
  %8404 = load x86_fp80* %8403, align 16, !tbaa !28
  %8405 = fadd x86_fp80 %8402, %8404
  %8406 = getelementptr inbounds x86_fp80* %_from697.0997, i64 %8342
  %8407 = load x86_fp80* %8406, align 16, !tbaa !28
  %8408 = fadd x86_fp80 %8405, %8407
  %8409 = getelementptr inbounds x86_fp80* %_from697.0997, i64 %8345
  %8410 = load x86_fp80* %8409, align 16, !tbaa !28
  %8411 = fadd x86_fp80 %8408, %8410
  %8412 = fmul x86_fp80 %8411, 0xK3FFD8000000000000000
  %8413 = fsub x86_fp80 %8412, %117
  %8414 = fmul x86_fp80 %116, %8413
  %8415 = fpext double %8382 to x86_fp80
  %8416 = fsub x86_fp80 %8402, %8407
  %8417 = fmul x86_fp80 %8415, %8416
  %8418 = getelementptr inbounds double* %_radius694.0994, i64 %8345
  %8419 = load double* %8418, align 8, !tbaa !15
  %8420 = fpext double %8419 to x86_fp80
  %8421 = fsub x86_fp80 %8404, %8410
  %8422 = fmul x86_fp80 %8421, %8420
  %8423 = fadd x86_fp80 %8417, %8422
  %8424 = fmul x86_fp80 %8423, 0xK3FFE8000000000000000
  %8425 = fadd x86_fp80 %8414, %8424
  %8426 = fsub x86_fp80 %8404, %8402
  %8427 = fadd x86_fp80 %8426, %8410
  %8428 = fsub x86_fp80 %8427, %8407
  %8429 = fmul x86_fp80 %8428, 0xK3FFD8000000000000000
  %8430 = fmul x86_fp80 %8429, %8347
  %8431 = fmul double %8382, %8382
  %8432 = fdiv double %8431, %8393
  %8433 = fmul double %8419, %8419
  %8434 = getelementptr inbounds double* %_xyz695.0995, i64 %8345
  %8435 = load double* %8434, align 8, !tbaa !15
  %8436 = fdiv double %8433, %8435
  %8437 = fadd double %8432, %8436
  %8438 = fpext double %8437 to x86_fp80
  %8439 = fmul x86_fp80 %8430, %8438
  %8440 = fadd x86_fp80 %8425, %8439
  %8441 = fpext double %8400 to x86_fp80
  %8442 = fmul x86_fp80 %8441, %8440
  %8443 = fptrunc x86_fp80 %8442 to double
  %8444 = fadd double %34, %8443
  br label %8445

; <label>:8445                                    ; preds = %._crit_edge2132, %8388
  %8446 = phi x86_fp80 [ %.pre2139, %._crit_edge2132 ], [ %8407, %8388 ]
  %8447 = phi x86_fp80 [ %.pre2137, %._crit_edge2132 ], [ %8402, %8388 ]
  %8448 = phi double [ %.pre2135, %._crit_edge2132 ], [ %8393, %8388 ]
  %dtvvar0H.246 = phi double [ %dtvvar0H.245998, %._crit_edge2132 ], [ %8444, %8388 ]
  %8449 = phi <2 x double> [ %8387, %._crit_edge2132 ], [ %8389, %8388 ]
  %8450 = extractelement <2 x double> %8449, i32 1
  %8451 = fmul double %8450, %8386
  %8452 = extractelement <2 x double> %8449, i32 0
  %8453 = fmul double %8452, %8448
  %8454 = fadd double %8451, %8453
  %8455 = fmul double %dtvvar0H.246, %8454
  %8456 = fpext double %8455 to x86_fp80
  %8457 = extractelement <2 x double> %8385, i32 0
  %8458 = fmul double %8457, %8448
  %8459 = fmul double %33, %8457
  %8460 = fadd double %8459, 1.000000e+00
  %8461 = fmul double %8460, %8458
  %8462 = fadd double %8346, %8461
  %8463 = fpext double %8462 to x86_fp80
  %8464 = fmul x86_fp80 %8447, %8463
  %8465 = fsub x86_fp80 %8456, %8464
  %8466 = load x86_fp80* %_from697.0997, align 16, !tbaa !28
  %8467 = extractelement <2 x double> %8385, i32 1
  %8468 = fmul double %8467, %8386
  %8469 = fmul double %33, %8467
  %8470 = fsub double 1.000000e+00, %8469
  %8471 = fmul double %8470, %8468
  %8472 = fadd double %8471, %8346
  %8473 = fpext double %8472 to x86_fp80
  %8474 = fmul x86_fp80 %8466, %8473
  %8475 = fadd x86_fp80 %8474, %8465
  %8476 = fsub double 1.000000e+00, %8459
  %8477 = fmul double %8476, %8458
  %8478 = fsub double %8346, %8477
  %8479 = fpext double %8478 to x86_fp80
  %8480 = fmul x86_fp80 %8446, %8479
  %8481 = fsub x86_fp80 %8475, %8480
  %8482 = fadd double %8469, 1.000000e+00
  %8483 = fmul double %8482, %8468
  %8484 = fsub double %8483, %8346
  %8485 = fpext double %8484 to x86_fp80
  %8486 = fdiv x86_fp80 %8481, %8485
  store x86_fp80 %8486, x86_fp80* %_to696.0996, align 16, !tbaa !28
  %8487 = getelementptr inbounds double* %_radius694.0994, i64 -1
  %8488 = getelementptr inbounds double* %_xyz695.0995, i64 -1
  %8489 = getelementptr inbounds x86_fp80* %_to696.0996, i64 -1
  %8490 = getelementptr inbounds x86_fp80* %_from697.0997, i64 -1
  %8491 = add nsw i32 %_i687.0993, -1
  %8492 = icmp sgt i32 %_i687.0993, 0
  br i1 %8492, label %8379, label %.loopexit827

.loopexit941:                                     ; preds = %.loopexit870, %8331, %.loopexit943
  %dtvvar0H.247 = phi double [ %dtvvar0H.242, %.loopexit943 ], [ %dtvvar0H.242, %8331 ], [ %dtvvar0H.244.lcssa, %.loopexit870 ]
  %8493 = icmp ult i64 %8328, 4294967296
  br i1 %8493, label %.loopexit940, label %.preheader939

.preheader939:                                    ; preds = %.loopexit941
  %8494 = load i32** %93, align 8, !tbaa !17
  %8495 = getelementptr inbounds i32* %8494, i64 2
  %8496 = load i32* %8495, align 4, !tbaa !7
  %8497 = icmp sgt i32 %8496, 0
  br i1 %8497, label %.lr.ph1033, label %.loopexit940

.lr.ph1033:                                       ; preds = %.preheader939
  %8498 = load i32* %110, align 4, !tbaa !7
  %8499 = getelementptr inbounds i32* %8494, i64 1
  %8500 = load i32* %8499, align 4, !tbaa !7
  %8501 = load i32* %111, align 4, !tbaa !7
  %8502 = sub nsw i32 0, %8501
  %8503 = mul nsw i32 %8501, -2
  %8504 = load double** %86, align 8, !tbaa !13
  %8505 = load double** %112, align 8, !tbaa !13
  %8506 = sext i32 %8502 to i64
  %8507 = load double* %108, align 16, !tbaa !15
  %8508 = fmul double %107, %8507
  %8509 = sext i32 %8503 to i64
  %8510 = load double* %109, align 16, !tbaa !15
  %8511 = fpext double %8510 to x86_fp80
  br label %8512

; <label>:8512                                    ; preds = %.lr.ph1033, %._crit_edge1028
  %dtvvar0H.2481032 = phi double [ %dtvvar0H.247, %.lr.ph1033 ], [ %dtvvar0H.249.lcssa, %._crit_edge1028 ]
  %_k703.01030 = phi i32 [ 0, %.lr.ph1033 ], [ %8652, %._crit_edge1028 ]
  %8513 = icmp sgt i32 %8498, 0
  br i1 %8513, label %.lr.ph1027, label %._crit_edge1028

.lr.ph1027:                                       ; preds = %8512
  %8514 = sub nsw i32 %8500, %8498
  %8515 = load i8**** %38, align 8, !tbaa !12
  %8516 = getelementptr inbounds i8*** %8515, i64 %indvars.iv2111
  %8517 = bitcast i8*** %8516 to x86_fp80***
  %8518 = load x86_fp80*** %8517, align 8, !tbaa !13
  %8519 = load x86_fp80** %8518, align 8, !tbaa !13
  %8520 = getelementptr inbounds i8*** %8515, i64 %indvars.iv2113
  %8521 = load i8*** %8520, align 8, !tbaa !13
  %8522 = getelementptr inbounds i8** %8521, i64 %.
  %8523 = bitcast i8** %8522 to x86_fp80**
  %8524 = load x86_fp80** %8523, align 8, !tbaa !13
  %8525 = load i32* %8494, align 4, !tbaa !7
  %8526 = icmp sgt i32 %8525, 0
  br label %8527

; <label>:8527                                    ; preds = %.lr.ph1027, %._crit_edge1022
  %dtvvar0H.2491025 = phi double [ %dtvvar0H.2481032, %.lr.ph1027 ], [ %dtvvar0H.250.lcssa, %._crit_edge1022 ]
  %_j702.01024 = phi i32 [ %8514, %.lr.ph1027 ], [ %8650, %._crit_edge1022 ]
  %8528 = mul nsw i32 %8500, %_k703.01030
  %8529 = add nsw i32 %8528, %_j702.01024
  %8530 = mul nsw i32 %8525, %8529
  %8531 = sext i32 %8530 to i64
  br i1 %8526, label %.lr.ph1021, label %._crit_edge1022

.lr.ph1021:                                       ; preds = %8527
  %8532 = getelementptr inbounds x86_fp80* %8524, i64 %8531
  %8533 = getelementptr inbounds x86_fp80* %8519, i64 %8531
  %8534 = getelementptr inbounds double* %8505, i64 %8531
  %8535 = getelementptr inbounds double* %8504, i64 %8531
  br label %8536

; <label>:8536                                    ; preds = %.lr.ph1021, %8602
  %dtvvar0H.2501019 = phi double [ %dtvvar0H.2491025, %.lr.ph1021 ], [ %dtvvar0H.251, %8602 ]
  %_from711.01018 = phi x86_fp80* [ %8532, %.lr.ph1021 ], [ %8647, %8602 ]
  %_to710.01017 = phi x86_fp80* [ %8533, %.lr.ph1021 ], [ %8646, %8602 ]
  %_xyz709.01016 = phi double* [ %8534, %.lr.ph1021 ], [ %8645, %8602 ]
  %_radius708.01015 = phi double* [ %8535, %.lr.ph1021 ], [ %8644, %8602 ]
  %_i701.01014 = phi i32 [ 0, %.lr.ph1021 ], [ %8648, %8602 ]
  %8537 = load double* %_radius708.01015, align 8, !tbaa !15
  %8538 = getelementptr inbounds double* %_radius708.01015, i64 %8506
  %8539 = load double* %8538, align 8, !tbaa !15
  %8540 = insertelement <2 x double> undef, double %8539, i32 0
  %8541 = insertelement <2 x double> %8540, double %8537, i32 1
  %8542 = fdiv <2 x double> <double 1.000000e+00, double 1.000000e+00>, %8541
  %8543 = load double* %_xyz709.01016, align 8, !tbaa !15
  br i1 %105, label %8545, label %._crit_edge2140

._crit_edge2140:                                  ; preds = %8536
  %.phi.trans.insert2142 = getelementptr inbounds double* %_xyz709.01016, i64 %8506
  %.pre2143 = load double* %.phi.trans.insert2142, align 8, !tbaa !15
  %.phi.trans.insert2144 = getelementptr inbounds x86_fp80* %_to710.01017, i64 %8506
  %.pre2145 = load x86_fp80* %.phi.trans.insert2144, align 16, !tbaa !28
  %.phi.trans.insert2146 = getelementptr inbounds x86_fp80* %_from711.01018, i64 %8506
  %.pre2147 = load x86_fp80* %.phi.trans.insert2146, align 16, !tbaa !28
  %8544 = fmul <2 x double> %8542, %8542
  br label %8602

; <label>:8545                                    ; preds = %8536
  %8546 = fmul <2 x double> %8542, %8542
  %8547 = extractelement <2 x double> %8546, i32 1
  %8548 = fmul double %8547, %8543
  %8549 = getelementptr inbounds double* %_xyz709.01016, i64 %8506
  %8550 = load double* %8549, align 8, !tbaa !15
  %8551 = extractelement <2 x double> %8546, i32 0
  %8552 = fmul double %8551, %8550
  %8553 = fadd double %8548, %8552
  %8554 = fmul double %8508, %8553
  %8555 = fsub double 1.000000e+00, %8554
  %8556 = fadd double %8554, 1.000000e+00
  %8557 = fdiv double %8555, %8556
  %8558 = getelementptr inbounds x86_fp80* %_to710.01017, i64 %8506
  %8559 = load x86_fp80* %8558, align 16, !tbaa !28
  %8560 = getelementptr inbounds x86_fp80* %_to710.01017, i64 %8509
  %8561 = load x86_fp80* %8560, align 16, !tbaa !28
  %8562 = fadd x86_fp80 %8559, %8561
  %8563 = getelementptr inbounds x86_fp80* %_from711.01018, i64 %8506
  %8564 = load x86_fp80* %8563, align 16, !tbaa !28
  %8565 = fadd x86_fp80 %8562, %8564
  %8566 = getelementptr inbounds x86_fp80* %_from711.01018, i64 %8509
  %8567 = load x86_fp80* %8566, align 16, !tbaa !28
  %8568 = fadd x86_fp80 %8565, %8567
  %8569 = fmul x86_fp80 %8568, 0xK3FFD8000000000000000
  %8570 = fsub x86_fp80 %8569, %117
  %8571 = fmul x86_fp80 %116, %8570
  %8572 = fpext double %8539 to x86_fp80
  %8573 = fsub x86_fp80 %8559, %8564
  %8574 = fmul x86_fp80 %8572, %8573
  %8575 = getelementptr inbounds double* %_radius708.01015, i64 %8509
  %8576 = load double* %8575, align 8, !tbaa !15
  %8577 = fpext double %8576 to x86_fp80
  %8578 = fsub x86_fp80 %8561, %8567
  %8579 = fmul x86_fp80 %8578, %8577
  %8580 = fadd x86_fp80 %8574, %8579
  %8581 = fmul x86_fp80 %8580, 0xK3FFE8000000000000000
  %8582 = fadd x86_fp80 %8571, %8581
  %8583 = fsub x86_fp80 %8559, %8561
  %8584 = fadd x86_fp80 %8583, %8564
  %8585 = fsub x86_fp80 %8584, %8567
  %8586 = fmul x86_fp80 %8585, 0xK3FFD8000000000000000
  %8587 = fmul x86_fp80 %8586, %8511
  %8588 = fmul double %8539, %8539
  %8589 = fdiv double %8588, %8550
  %8590 = fmul double %8576, %8576
  %8591 = getelementptr inbounds double* %_xyz709.01016, i64 %8509
  %8592 = load double* %8591, align 8, !tbaa !15
  %8593 = fdiv double %8590, %8592
  %8594 = fadd double %8589, %8593
  %8595 = fpext double %8594 to x86_fp80
  %8596 = fmul x86_fp80 %8587, %8595
  %8597 = fadd x86_fp80 %8582, %8596
  %8598 = fpext double %8557 to x86_fp80
  %8599 = fmul x86_fp80 %8598, %8597
  %8600 = fptrunc x86_fp80 %8599 to double
  %8601 = fadd double %34, %8600
  br label %8602

; <label>:8602                                    ; preds = %._crit_edge2140, %8545
  %8603 = phi x86_fp80 [ %.pre2147, %._crit_edge2140 ], [ %8564, %8545 ]
  %8604 = phi x86_fp80 [ %.pre2145, %._crit_edge2140 ], [ %8559, %8545 ]
  %8605 = phi double [ %.pre2143, %._crit_edge2140 ], [ %8550, %8545 ]
  %dtvvar0H.251 = phi double [ %dtvvar0H.2501019, %._crit_edge2140 ], [ %8601, %8545 ]
  %8606 = phi <2 x double> [ %8544, %._crit_edge2140 ], [ %8546, %8545 ]
  %8607 = extractelement <2 x double> %8606, i32 1
  %8608 = fmul double %8607, %8543
  %8609 = extractelement <2 x double> %8606, i32 0
  %8610 = fmul double %8609, %8605
  %8611 = fadd double %8608, %8610
  %8612 = fmul double %dtvvar0H.251, %8611
  %8613 = fpext double %8612 to x86_fp80
  %8614 = extractelement <2 x double> %8542, i32 0
  %8615 = fmul double %8614, %8605
  %8616 = fmul double %33, %8614
  %8617 = fadd double %8616, 1.000000e+00
  %8618 = fmul double %8617, %8615
  %8619 = fsub double %8510, %8618
  %8620 = fpext double %8619 to x86_fp80
  %8621 = fmul x86_fp80 %8604, %8620
  %8622 = fadd x86_fp80 %8613, %8621
  %8623 = load x86_fp80* %_from711.01018, align 16, !tbaa !28
  %8624 = extractelement <2 x double> %8542, i32 1
  %8625 = fmul double %8624, %8543
  %8626 = fmul double %33, %8624
  %8627 = fsub double 1.000000e+00, %8626
  %8628 = fmul double %8627, %8625
  %8629 = fsub double %8628, %8510
  %8630 = fpext double %8629 to x86_fp80
  %8631 = fmul x86_fp80 %8623, %8630
  %8632 = fadd x86_fp80 %8631, %8622
  %8633 = fsub double 1.000000e+00, %8616
  %8634 = fmul double %8633, %8615
  %8635 = fadd double %8510, %8634
  %8636 = fpext double %8635 to x86_fp80
  %8637 = fmul x86_fp80 %8603, %8636
  %8638 = fadd x86_fp80 %8637, %8632
  %8639 = fadd double %8626, 1.000000e+00
  %8640 = fmul double %8639, %8625
  %8641 = fadd double %8640, %8510
  %8642 = fpext double %8641 to x86_fp80
  %8643 = fdiv x86_fp80 %8638, %8642
  store x86_fp80 %8643, x86_fp80* %_to710.01017, align 16, !tbaa !28
  %8644 = getelementptr inbounds double* %_radius708.01015, i64 1
  %8645 = getelementptr inbounds double* %_xyz709.01016, i64 1
  %8646 = getelementptr inbounds x86_fp80* %_to710.01017, i64 1
  %8647 = getelementptr inbounds x86_fp80* %_from711.01018, i64 1
  %8648 = add nuw nsw i32 %_i701.01014, 1
  %8649 = icmp slt i32 %8648, %8525
  br i1 %8649, label %8536, label %._crit_edge1022

._crit_edge1022:                                  ; preds = %8602, %8527
  %dtvvar0H.250.lcssa = phi double [ %dtvvar0H.2491025, %8527 ], [ %dtvvar0H.251, %8602 ]
  %8650 = add nsw i32 %_j702.01024, 1
  %8651 = icmp slt i32 %8650, %8500
  br i1 %8651, label %8527, label %._crit_edge1028

._crit_edge1028:                                  ; preds = %._crit_edge1022, %8512
  %dtvvar0H.249.lcssa = phi double [ %dtvvar0H.2481032, %8512 ], [ %dtvvar0H.250.lcssa, %._crit_edge1022 ]
  %8652 = add nuw nsw i32 %_k703.01030, 1
  %8653 = icmp slt i32 %8652, %8496
  br i1 %8653, label %8512, label %.loopexit940

.loopexit940:                                     ; preds = %._crit_edge1028, %.preheader939, %.loopexit941
  %dtvvar0H.252 = phi double [ %dtvvar0H.247, %.loopexit941 ], [ %dtvvar0H.247, %.preheader939 ], [ %dtvvar0H.249.lcssa, %._crit_edge1028 ]
  %8654 = bitcast i32* %100 to i64*
  %8655 = load i64* %8654, align 16
  %8656 = trunc i64 %8655 to i32
  %8657 = icmp eq i32 %8656, 0
  br i1 %8657, label %.loopexit938, label %8658

; <label>:8658                                    ; preds = %.loopexit940
  %8659 = load i32* %102, align 4, !tbaa !7
  %8660 = icmp sgt i32 %8659, 0
  br i1 %8660, label %.lr.ph1054, label %.loopexit938

.lr.ph1054:                                       ; preds = %8658
  %8661 = load i32** %93, align 8, !tbaa !17
  %8662 = getelementptr inbounds i32* %8661, i64 1
  %8663 = load i32* %8662, align 4, !tbaa !7
  %8664 = icmp sgt i32 %8663, 0
  %8665 = load i32* %103, align 4, !tbaa !7
  %8666 = shl nsw i32 %8665, 1
  %8667 = load double** %86, align 8, !tbaa !13
  %8668 = load double** %104, align 16, !tbaa !13
  %8669 = sext i32 %8665 to i64
  %8670 = load double* %108, align 16, !tbaa !15
  %8671 = fmul double %107, %8670
  %8672 = sext i32 %8666 to i64
  %8673 = load double* %109, align 16, !tbaa !15
  %8674 = fpext double %8673 to x86_fp80
  %8675 = sext i32 %8663 to i64
  br label %8677

.loopexit869:                                     ; preds = %.loopexit826, %8677
  %dtvvar0H.254.lcssa = phi double [ %dtvvar0H.2531051, %8677 ], [ %dtvvar0H.255.lcssa, %.loopexit826 ]
  %8676 = icmp sgt i32 %_k717.01052.in, 1
  br i1 %8676, label %8677, label %.loopexit938

; <label>:8677                                    ; preds = %.lr.ph1054, %.loopexit869
  %_k717.01052.in = phi i32 [ %8659, %.lr.ph1054 ], [ %_k717.01052, %.loopexit869 ]
  %dtvvar0H.2531051 = phi double [ %dtvvar0H.252, %.lr.ph1054 ], [ %dtvvar0H.254.lcssa, %.loopexit869 ]
  %_k717.01052 = add nsw i32 %_k717.01052.in, -1
  br i1 %8664, label %.lr.ph1048, label %.loopexit869

.lr.ph1048:                                       ; preds = %8677
  %8678 = load i32* %8661, align 4, !tbaa !7
  %8679 = add nsw i32 %8678, -1
  %8680 = mul nsw i32 %8663, %_k717.01052
  %8681 = load i8**** %38, align 8, !tbaa !12
  %8682 = getelementptr inbounds i8*** %8681, i64 %indvars.iv2111
  %8683 = bitcast i8*** %8682 to x86_fp80***
  %8684 = load x86_fp80*** %8683, align 8, !tbaa !13
  %8685 = load x86_fp80** %8684, align 8, !tbaa !13
  %8686 = getelementptr inbounds i8*** %8681, i64 %indvars.iv2113
  %8687 = load i8*** %8686, align 8, !tbaa !13
  %8688 = getelementptr inbounds i8** %8687, i64 %.
  %8689 = bitcast i8** %8688 to x86_fp80**
  %8690 = load x86_fp80** %8689, align 8, !tbaa !13
  %8691 = icmp sgt i32 %8678, 0
  %8692 = sext i32 %8680 to i64
  %8693 = sext i32 %8678 to i64
  %8694 = sext i32 %8679 to i64
  br label %8696

.loopexit826:                                     ; preds = %8770, %8696
  %dtvvar0H.255.lcssa = phi double [ %dtvvar0H.2541045, %8696 ], [ %dtvvar0H.256, %8770 ]
  %8695 = icmp sgt i64 %indvars.iv2079, 1
  br i1 %8695, label %8696, label %.loopexit869

; <label>:8696                                    ; preds = %.lr.ph1048, %.loopexit826
  %indvars.iv2079 = phi i64 [ %8675, %.lr.ph1048 ], [ %indvars.iv.next2080, %.loopexit826 ]
  %dtvvar0H.2541045 = phi double [ %dtvvar0H.2531051, %.lr.ph1048 ], [ %dtvvar0H.255.lcssa, %.loopexit826 ]
  %indvars.iv.next2080 = add nsw i64 %indvars.iv2079, -1
  %8697 = add nsw i64 %8692, %indvars.iv.next2080
  %8698 = mul nsw i64 %8697, %8693
  %8699 = add nsw i64 %8698, %8694
  br i1 %8691, label %.lr.ph1042, label %.loopexit826

.lr.ph1042:                                       ; preds = %8696
  %8700 = getelementptr inbounds x86_fp80* %8690, i64 %8699
  %8701 = getelementptr inbounds x86_fp80* %8685, i64 %8699
  %8702 = getelementptr inbounds double* %8668, i64 %8699
  %8703 = getelementptr inbounds double* %8667, i64 %8699
  br label %8704

; <label>:8704                                    ; preds = %.lr.ph1042, %8770
  %dtvvar0H.2551040 = phi double [ %dtvvar0H.2541045, %.lr.ph1042 ], [ %dtvvar0H.256, %8770 ]
  %_from725.01039 = phi x86_fp80* [ %8700, %.lr.ph1042 ], [ %8815, %8770 ]
  %_to724.01038 = phi x86_fp80* [ %8701, %.lr.ph1042 ], [ %8814, %8770 ]
  %_xyz723.01037 = phi double* [ %8702, %.lr.ph1042 ], [ %8813, %8770 ]
  %_radius722.01036 = phi double* [ %8703, %.lr.ph1042 ], [ %8812, %8770 ]
  %_i715.01035 = phi i32 [ %8679, %.lr.ph1042 ], [ %8816, %8770 ]
  %8705 = load double* %_radius722.01036, align 8, !tbaa !15
  %8706 = getelementptr inbounds double* %_radius722.01036, i64 %8669
  %8707 = load double* %8706, align 8, !tbaa !15
  %8708 = insertelement <2 x double> undef, double %8707, i32 0
  %8709 = insertelement <2 x double> %8708, double %8705, i32 1
  %8710 = fdiv <2 x double> <double 1.000000e+00, double 1.000000e+00>, %8709
  %8711 = load double* %_xyz723.01037, align 8, !tbaa !15
  br i1 %105, label %8713, label %._crit_edge2148

._crit_edge2148:                                  ; preds = %8704
  %.phi.trans.insert2150 = getelementptr inbounds double* %_xyz723.01037, i64 %8669
  %.pre2151 = load double* %.phi.trans.insert2150, align 8, !tbaa !15
  %.phi.trans.insert2152 = getelementptr inbounds x86_fp80* %_to724.01038, i64 %8669
  %.pre2153 = load x86_fp80* %.phi.trans.insert2152, align 16, !tbaa !28
  %.phi.trans.insert2154 = getelementptr inbounds x86_fp80* %_from725.01039, i64 %8669
  %.pre2155 = load x86_fp80* %.phi.trans.insert2154, align 16, !tbaa !28
  %8712 = fmul <2 x double> %8710, %8710
  br label %8770

; <label>:8713                                    ; preds = %8704
  %8714 = fmul <2 x double> %8710, %8710
  %8715 = extractelement <2 x double> %8714, i32 1
  %8716 = fmul double %8715, %8711
  %8717 = getelementptr inbounds double* %_xyz723.01037, i64 %8669
  %8718 = load double* %8717, align 8, !tbaa !15
  %8719 = extractelement <2 x double> %8714, i32 0
  %8720 = fmul double %8719, %8718
  %8721 = fadd double %8716, %8720
  %8722 = fmul double %8671, %8721
  %8723 = fadd double %8722, 1.000000e+00
  %8724 = fsub double 1.000000e+00, %8722
  %8725 = fdiv double %8723, %8724
  %8726 = getelementptr inbounds x86_fp80* %_to724.01038, i64 %8669
  %8727 = load x86_fp80* %8726, align 16, !tbaa !28
  %8728 = getelementptr inbounds x86_fp80* %_to724.01038, i64 %8672
  %8729 = load x86_fp80* %8728, align 16, !tbaa !28
  %8730 = fadd x86_fp80 %8727, %8729
  %8731 = getelementptr inbounds x86_fp80* %_from725.01039, i64 %8669
  %8732 = load x86_fp80* %8731, align 16, !tbaa !28
  %8733 = fadd x86_fp80 %8730, %8732
  %8734 = getelementptr inbounds x86_fp80* %_from725.01039, i64 %8672
  %8735 = load x86_fp80* %8734, align 16, !tbaa !28
  %8736 = fadd x86_fp80 %8733, %8735
  %8737 = fmul x86_fp80 %8736, 0xK3FFD8000000000000000
  %8738 = fsub x86_fp80 %8737, %117
  %8739 = fmul x86_fp80 %116, %8738
  %8740 = fpext double %8707 to x86_fp80
  %8741 = fsub x86_fp80 %8727, %8732
  %8742 = fmul x86_fp80 %8740, %8741
  %8743 = getelementptr inbounds double* %_radius722.01036, i64 %8672
  %8744 = load double* %8743, align 8, !tbaa !15
  %8745 = fpext double %8744 to x86_fp80
  %8746 = fsub x86_fp80 %8729, %8735
  %8747 = fmul x86_fp80 %8746, %8745
  %8748 = fadd x86_fp80 %8742, %8747
  %8749 = fmul x86_fp80 %8748, 0xK3FFE8000000000000000
  %8750 = fadd x86_fp80 %8739, %8749
  %8751 = fsub x86_fp80 %8729, %8727
  %8752 = fadd x86_fp80 %8751, %8735
  %8753 = fsub x86_fp80 %8752, %8732
  %8754 = fmul x86_fp80 %8753, 0xK3FFD8000000000000000
  %8755 = fmul x86_fp80 %8754, %8674
  %8756 = fmul double %8707, %8707
  %8757 = fdiv double %8756, %8718
  %8758 = fmul double %8744, %8744
  %8759 = getelementptr inbounds double* %_xyz723.01037, i64 %8672
  %8760 = load double* %8759, align 8, !tbaa !15
  %8761 = fdiv double %8758, %8760
  %8762 = fadd double %8757, %8761
  %8763 = fpext double %8762 to x86_fp80
  %8764 = fmul x86_fp80 %8755, %8763
  %8765 = fadd x86_fp80 %8750, %8764
  %8766 = fpext double %8725 to x86_fp80
  %8767 = fmul x86_fp80 %8766, %8765
  %8768 = fptrunc x86_fp80 %8767 to double
  %8769 = fadd double %34, %8768
  br label %8770

; <label>:8770                                    ; preds = %._crit_edge2148, %8713
  %8771 = phi x86_fp80 [ %.pre2155, %._crit_edge2148 ], [ %8732, %8713 ]
  %8772 = phi x86_fp80 [ %.pre2153, %._crit_edge2148 ], [ %8727, %8713 ]
  %8773 = phi double [ %.pre2151, %._crit_edge2148 ], [ %8718, %8713 ]
  %dtvvar0H.256 = phi double [ %dtvvar0H.2551040, %._crit_edge2148 ], [ %8769, %8713 ]
  %8774 = phi <2 x double> [ %8712, %._crit_edge2148 ], [ %8714, %8713 ]
  %8775 = extractelement <2 x double> %8774, i32 1
  %8776 = fmul double %8775, %8711
  %8777 = extractelement <2 x double> %8774, i32 0
  %8778 = fmul double %8777, %8773
  %8779 = fadd double %8776, %8778
  %8780 = fmul double %dtvvar0H.256, %8779
  %8781 = fpext double %8780 to x86_fp80
  %8782 = extractelement <2 x double> %8710, i32 0
  %8783 = fmul double %8782, %8773
  %8784 = fmul double %33, %8782
  %8785 = fadd double %8784, 1.000000e+00
  %8786 = fmul double %8785, %8783
  %8787 = fadd double %8673, %8786
  %8788 = fpext double %8787 to x86_fp80
  %8789 = fmul x86_fp80 %8772, %8788
  %8790 = fsub x86_fp80 %8781, %8789
  %8791 = load x86_fp80* %_from725.01039, align 16, !tbaa !28
  %8792 = extractelement <2 x double> %8710, i32 1
  %8793 = fmul double %8792, %8711
  %8794 = fmul double %33, %8792
  %8795 = fsub double 1.000000e+00, %8794
  %8796 = fmul double %8795, %8793
  %8797 = fadd double %8796, %8673
  %8798 = fpext double %8797 to x86_fp80
  %8799 = fmul x86_fp80 %8791, %8798
  %8800 = fadd x86_fp80 %8799, %8790
  %8801 = fsub double 1.000000e+00, %8784
  %8802 = fmul double %8801, %8783
  %8803 = fsub double %8673, %8802
  %8804 = fpext double %8803 to x86_fp80
  %8805 = fmul x86_fp80 %8771, %8804
  %8806 = fsub x86_fp80 %8800, %8805
  %8807 = fadd double %8794, 1.000000e+00
  %8808 = fmul double %8807, %8793
  %8809 = fsub double %8808, %8673
  %8810 = fpext double %8809 to x86_fp80
  %8811 = fdiv x86_fp80 %8806, %8810
  store x86_fp80 %8811, x86_fp80* %_to724.01038, align 16, !tbaa !28
  %8812 = getelementptr inbounds double* %_radius722.01036, i64 -1
  %8813 = getelementptr inbounds double* %_xyz723.01037, i64 -1
  %8814 = getelementptr inbounds x86_fp80* %_to724.01038, i64 -1
  %8815 = getelementptr inbounds x86_fp80* %_from725.01039, i64 -1
  %8816 = add nsw i32 %_i715.01035, -1
  %8817 = icmp sgt i32 %_i715.01035, 0
  br i1 %8817, label %8704, label %.loopexit826

.loopexit938:                                     ; preds = %.loopexit869, %8658, %.loopexit940
  %dtvvar0H.257 = phi double [ %dtvvar0H.252, %.loopexit940 ], [ %dtvvar0H.252, %8658 ], [ %dtvvar0H.254.lcssa, %.loopexit869 ]
  %8818 = icmp ult i64 %8655, 4294967296
  br i1 %8818, label %.loopexit873, label %8819

; <label>:8819                                    ; preds = %.loopexit938
  %8820 = load i32* %102, align 4, !tbaa !7
  %8821 = icmp sgt i32 %8820, 0
  br i1 %8821, label %.preheader868.lr.ph, label %.loopexit873

.preheader868.lr.ph:                              ; preds = %8819
  %8822 = load i32** %93, align 8, !tbaa !17
  %8823 = getelementptr inbounds i32* %8822, i64 2
  %8824 = load i32* %8823, align 4, !tbaa !7
  %8825 = sub nsw i32 %8824, %8820
  %8826 = getelementptr inbounds i32* %8822, i64 1
  %8827 = load i32* %8826, align 4, !tbaa !7
  %8828 = icmp sgt i32 %8827, 0
  %8829 = load i32* %103, align 4, !tbaa !7
  %8830 = sub nsw i32 0, %8829
  %8831 = mul nsw i32 %8829, -2
  %8832 = load double** %86, align 8, !tbaa !13
  %8833 = load double** %104, align 16, !tbaa !13
  %8834 = sext i32 %8830 to i64
  %8835 = load double* %108, align 16, !tbaa !15
  %8836 = fmul double %107, %8835
  %8837 = sext i32 %8831 to i64
  %8838 = load double* %109, align 16, !tbaa !15
  %8839 = fpext double %8838 to x86_fp80
  br label %.preheader868

.preheader868:                                    ; preds = %.preheader868.lr.ph, %._crit_edge1069
  %dtvvar0H.2581073 = phi double [ %dtvvar0H.257, %.preheader868.lr.ph ], [ %dtvvar0H.259.lcssa, %._crit_edge1069 ]
  %_k731.01071 = phi i32 [ %8825, %.preheader868.lr.ph ], [ %8977, %._crit_edge1069 ]
  br i1 %8828, label %.lr.ph1068, label %._crit_edge1069

.lr.ph1068:                                       ; preds = %.preheader868
  %8840 = load i8**** %38, align 8, !tbaa !12
  %8841 = getelementptr inbounds i8*** %8840, i64 %indvars.iv2111
  %8842 = bitcast i8*** %8841 to x86_fp80***
  %8843 = load x86_fp80*** %8842, align 8, !tbaa !13
  %8844 = load x86_fp80** %8843, align 8, !tbaa !13
  %8845 = getelementptr inbounds i8*** %8840, i64 %indvars.iv2113
  %8846 = load i8*** %8845, align 8, !tbaa !13
  %8847 = getelementptr inbounds i8** %8846, i64 %.
  %8848 = bitcast i8** %8847 to x86_fp80**
  %8849 = load x86_fp80** %8848, align 8, !tbaa !13
  %8850 = load i32* %8822, align 4, !tbaa !7
  %8851 = icmp sgt i32 %8850, 0
  br label %8852

; <label>:8852                                    ; preds = %.lr.ph1068, %._crit_edge1064
  %dtvvar0H.2591067 = phi double [ %dtvvar0H.2581073, %.lr.ph1068 ], [ %dtvvar0H.260.lcssa, %._crit_edge1064 ]
  %_j730.01066 = phi i32 [ 0, %.lr.ph1068 ], [ %8975, %._crit_edge1064 ]
  %8853 = mul nsw i32 %8827, %_k731.01071
  %8854 = add nsw i32 %8853, %_j730.01066
  %8855 = mul nsw i32 %8850, %8854
  %8856 = sext i32 %8855 to i64
  br i1 %8851, label %.lr.ph1063, label %._crit_edge1064

.lr.ph1063:                                       ; preds = %8852
  %8857 = getelementptr inbounds x86_fp80* %8849, i64 %8856
  %8858 = getelementptr inbounds x86_fp80* %8844, i64 %8856
  %8859 = getelementptr inbounds double* %8833, i64 %8856
  %8860 = getelementptr inbounds double* %8832, i64 %8856
  br label %8861

; <label>:8861                                    ; preds = %.lr.ph1063, %8927
  %_from739.01061 = phi x86_fp80* [ %8857, %.lr.ph1063 ], [ %8972, %8927 ]
  %_to738.01060 = phi x86_fp80* [ %8858, %.lr.ph1063 ], [ %8971, %8927 ]
  %_xyz737.01059 = phi double* [ %8859, %.lr.ph1063 ], [ %8970, %8927 ]
  %_radius736.01058 = phi double* [ %8860, %.lr.ph1063 ], [ %8969, %8927 ]
  %dtvvar0H.2601057 = phi double [ %dtvvar0H.2591067, %.lr.ph1063 ], [ %dtvvar0H.261, %8927 ]
  %_i729.01056 = phi i32 [ 0, %.lr.ph1063 ], [ %8973, %8927 ]
  %8862 = load double* %_radius736.01058, align 8, !tbaa !15
  %8863 = getelementptr inbounds double* %_radius736.01058, i64 %8834
  %8864 = load double* %8863, align 8, !tbaa !15
  %8865 = insertelement <2 x double> undef, double %8864, i32 0
  %8866 = insertelement <2 x double> %8865, double %8862, i32 1
  %8867 = fdiv <2 x double> <double 1.000000e+00, double 1.000000e+00>, %8866
  %8868 = load double* %_xyz737.01059, align 8, !tbaa !15
  br i1 %105, label %8870, label %._crit_edge2156

._crit_edge2156:                                  ; preds = %8861
  %.phi.trans.insert2158 = getelementptr inbounds double* %_xyz737.01059, i64 %8834
  %.pre2159 = load double* %.phi.trans.insert2158, align 8, !tbaa !15
  %.phi.trans.insert2160 = getelementptr inbounds x86_fp80* %_to738.01060, i64 %8834
  %.pre2161 = load x86_fp80* %.phi.trans.insert2160, align 16, !tbaa !28
  %.phi.trans.insert2162 = getelementptr inbounds x86_fp80* %_from739.01061, i64 %8834
  %.pre2163 = load x86_fp80* %.phi.trans.insert2162, align 16, !tbaa !28
  %8869 = fmul <2 x double> %8867, %8867
  br label %8927

; <label>:8870                                    ; preds = %8861
  %8871 = fmul <2 x double> %8867, %8867
  %8872 = extractelement <2 x double> %8871, i32 1
  %8873 = fmul double %8872, %8868
  %8874 = getelementptr inbounds double* %_xyz737.01059, i64 %8834
  %8875 = load double* %8874, align 8, !tbaa !15
  %8876 = extractelement <2 x double> %8871, i32 0
  %8877 = fmul double %8876, %8875
  %8878 = fadd double %8873, %8877
  %8879 = fmul double %8836, %8878
  %8880 = fsub double 1.000000e+00, %8879
  %8881 = fadd double %8879, 1.000000e+00
  %8882 = fdiv double %8880, %8881
  %8883 = getelementptr inbounds x86_fp80* %_to738.01060, i64 %8834
  %8884 = load x86_fp80* %8883, align 16, !tbaa !28
  %8885 = getelementptr inbounds x86_fp80* %_to738.01060, i64 %8837
  %8886 = load x86_fp80* %8885, align 16, !tbaa !28
  %8887 = fadd x86_fp80 %8884, %8886
  %8888 = getelementptr inbounds x86_fp80* %_from739.01061, i64 %8834
  %8889 = load x86_fp80* %8888, align 16, !tbaa !28
  %8890 = fadd x86_fp80 %8887, %8889
  %8891 = getelementptr inbounds x86_fp80* %_from739.01061, i64 %8837
  %8892 = load x86_fp80* %8891, align 16, !tbaa !28
  %8893 = fadd x86_fp80 %8890, %8892
  %8894 = fmul x86_fp80 %8893, 0xK3FFD8000000000000000
  %8895 = fsub x86_fp80 %8894, %117
  %8896 = fmul x86_fp80 %116, %8895
  %8897 = fpext double %8864 to x86_fp80
  %8898 = fsub x86_fp80 %8884, %8889
  %8899 = fmul x86_fp80 %8897, %8898
  %8900 = getelementptr inbounds double* %_radius736.01058, i64 %8837
  %8901 = load double* %8900, align 8, !tbaa !15
  %8902 = fpext double %8901 to x86_fp80
  %8903 = fsub x86_fp80 %8886, %8892
  %8904 = fmul x86_fp80 %8903, %8902
  %8905 = fadd x86_fp80 %8899, %8904
  %8906 = fmul x86_fp80 %8905, 0xK3FFE8000000000000000
  %8907 = fadd x86_fp80 %8896, %8906
  %8908 = fsub x86_fp80 %8884, %8886
  %8909 = fadd x86_fp80 %8908, %8889
  %8910 = fsub x86_fp80 %8909, %8892
  %8911 = fmul x86_fp80 %8910, 0xK3FFD8000000000000000
  %8912 = fmul x86_fp80 %8911, %8839
  %8913 = fmul double %8864, %8864
  %8914 = fdiv double %8913, %8875
  %8915 = fmul double %8901, %8901
  %8916 = getelementptr inbounds double* %_xyz737.01059, i64 %8837
  %8917 = load double* %8916, align 8, !tbaa !15
  %8918 = fdiv double %8915, %8917
  %8919 = fadd double %8914, %8918
  %8920 = fpext double %8919 to x86_fp80
  %8921 = fmul x86_fp80 %8912, %8920
  %8922 = fadd x86_fp80 %8907, %8921
  %8923 = fpext double %8882 to x86_fp80
  %8924 = fmul x86_fp80 %8923, %8922
  %8925 = fptrunc x86_fp80 %8924 to double
  %8926 = fadd double %34, %8925
  br label %8927

; <label>:8927                                    ; preds = %._crit_edge2156, %8870
  %8928 = phi x86_fp80 [ %.pre2163, %._crit_edge2156 ], [ %8889, %8870 ]
  %8929 = phi x86_fp80 [ %.pre2161, %._crit_edge2156 ], [ %8884, %8870 ]
  %8930 = phi double [ %.pre2159, %._crit_edge2156 ], [ %8875, %8870 ]
  %dtvvar0H.261 = phi double [ %dtvvar0H.2601057, %._crit_edge2156 ], [ %8926, %8870 ]
  %8931 = phi <2 x double> [ %8869, %._crit_edge2156 ], [ %8871, %8870 ]
  %8932 = extractelement <2 x double> %8931, i32 1
  %8933 = fmul double %8932, %8868
  %8934 = extractelement <2 x double> %8931, i32 0
  %8935 = fmul double %8934, %8930
  %8936 = fadd double %8933, %8935
  %8937 = fmul double %dtvvar0H.261, %8936
  %8938 = fpext double %8937 to x86_fp80
  %8939 = extractelement <2 x double> %8867, i32 0
  %8940 = fmul double %8939, %8930
  %8941 = fmul double %33, %8939
  %8942 = fadd double %8941, 1.000000e+00
  %8943 = fmul double %8942, %8940
  %8944 = fsub double %8838, %8943
  %8945 = fpext double %8944 to x86_fp80
  %8946 = fmul x86_fp80 %8929, %8945
  %8947 = fadd x86_fp80 %8938, %8946
  %8948 = load x86_fp80* %_from739.01061, align 16, !tbaa !28
  %8949 = extractelement <2 x double> %8867, i32 1
  %8950 = fmul double %8949, %8868
  %8951 = fmul double %33, %8949
  %8952 = fsub double 1.000000e+00, %8951
  %8953 = fmul double %8952, %8950
  %8954 = fsub double %8953, %8838
  %8955 = fpext double %8954 to x86_fp80
  %8956 = fmul x86_fp80 %8948, %8955
  %8957 = fadd x86_fp80 %8956, %8947
  %8958 = fsub double 1.000000e+00, %8941
  %8959 = fmul double %8958, %8940
  %8960 = fadd double %8838, %8959
  %8961 = fpext double %8960 to x86_fp80
  %8962 = fmul x86_fp80 %8928, %8961
  %8963 = fadd x86_fp80 %8962, %8957
  %8964 = fadd double %8951, 1.000000e+00
  %8965 = fmul double %8964, %8950
  %8966 = fadd double %8965, %8838
  %8967 = fpext double %8966 to x86_fp80
  %8968 = fdiv x86_fp80 %8963, %8967
  store x86_fp80 %8968, x86_fp80* %_to738.01060, align 16, !tbaa !28
  %8969 = getelementptr inbounds double* %_radius736.01058, i64 1
  %8970 = getelementptr inbounds double* %_xyz737.01059, i64 1
  %8971 = getelementptr inbounds x86_fp80* %_to738.01060, i64 1
  %8972 = getelementptr inbounds x86_fp80* %_from739.01061, i64 1
  %8973 = add nuw nsw i32 %_i729.01056, 1
  %8974 = icmp slt i32 %8973, %8850
  br i1 %8974, label %8861, label %._crit_edge1064

._crit_edge1064:                                  ; preds = %8927, %8852
  %dtvvar0H.260.lcssa = phi double [ %dtvvar0H.2591067, %8852 ], [ %dtvvar0H.261, %8927 ]
  %8975 = add nuw nsw i32 %_j730.01066, 1
  %8976 = icmp slt i32 %8975, %8827
  br i1 %8976, label %8852, label %._crit_edge1069

._crit_edge1069:                                  ; preds = %._crit_edge1064, %.preheader868
  %dtvvar0H.259.lcssa = phi double [ %dtvvar0H.2581073, %.preheader868 ], [ %dtvvar0H.260.lcssa, %._crit_edge1064 ]
  %8977 = add nsw i32 %_k731.01071, 1
  %8978 = icmp slt i32 %8977, %8824
  br i1 %8978, label %.preheader868, label %.loopexit873

; <label>:8979                                    ; preds = %177
  %8980 = call i32 @CCTK_VarTypeI(i32 %178) #5
  %8981 = call i8* @CCTK_VarName(i32 %178) #5
  %8982 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 1558, i8* getelementptr inbounds ([88 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([47 x i8]* @.str18, i64 0, i64 0), i32 %8980, i8* %8981) #5
  br label %.loopexit947

.loopexit873:                                     ; preds = %._crit_edge1069, %._crit_edge1191, %._crit_edge1313, %._crit_edge1435, %5132, %._crit_edge1679, %._crit_edge1801, %2217, %._crit_edge2045, %8819, %7845, %6910, %5945, %4971, %3979, %3000, %2056, %1049, %1046, %2053, %.loopexit890, %.loopexit898, %4968, %.loopexit914, %.loopexit922, %.loopexit930, %.loopexit938
  %dtvvar0H.262 = phi double [ %dtvvar0H.257, %.loopexit938 ], [ %dtvvar0H.228, %.loopexit930 ], [ %dtvvar0H.199, %.loopexit922 ], [ %dtvvar0H.170, %.loopexit914 ], [ %dtvvar0H.141, %4968 ], [ %dtvvar0H.112, %.loopexit898 ], [ %dtvvar0H.83, %.loopexit890 ], [ %dtvvar0H.54, %2053 ], [ %dtvvar0H.25, %1046 ], [ %dtvvar0H.25, %1049 ], [ %dtvvar0H.54, %2056 ], [ %dtvvar0H.83, %3000 ], [ %dtvvar0H.112, %3979 ], [ %dtvvar0H.141, %4971 ], [ %dtvvar0H.170, %5945 ], [ %dtvvar0H.199, %6910 ], [ %dtvvar0H.228, %7845 ], [ %dtvvar0H.257, %8819 ], [ %dtvvar0H.27.lcssa, %._crit_edge2045 ], [ %dtvvar0H.56.lcssa, %2217 ], [ %dtvvar0H.85.lcssa, %._crit_edge1801 ], [ %dtvvar0H.114.lcssa, %._crit_edge1679 ], [ %dtvvar0H.143.lcssa, %5132 ], [ %dtvvar0H.172.lcssa, %._crit_edge1435 ], [ %dtvvar0H.201.lcssa, %._crit_edge1313 ], [ %dtvvar0H.230.lcssa, %._crit_edge1191 ], [ %dtvvar0H.259.lcssa, %._crit_edge1069 ]
  %8983 = add nsw i32 %var_to.02054, 1
  %8984 = icmp slt i32 %8983, %89
  %indvars.iv.next2112 = add nsw i64 %indvars.iv2111, 1
  %indvars.iv.next2114 = add nsw i64 %indvars.iv2113, 1
  br i1 %8984, label %121, label %.loopexit947

.loopexit947:                                     ; preds = %.loopexit873, %._crit_edge2061, %8979, %7997, %7068, %6103, %5138, %4141, %3152, %2223, %1226, %181, %25, %9, %4
  %.0 = phi i32 [ -1, %4 ], [ -2, %9 ], [ -4, %8979 ], [ -5, %7997 ], [ -5, %7068 ], [ -5, %6103 ], [ -5, %5138 ], [ -5, %4141 ], [ -5, %3152 ], [ -5, %2223 ], [ -5, %1226 ], [ -5, %181 ], [ -3, %25 ], [ 0, %._crit_edge2061 ], [ 0, %.loopexit873 ]
  ret i32 %.0
}

; Function Attrs: optsize
declare i32 @CCTK_NumVarsInGroupI(i32) #2

; Function Attrs: optsize
declare i32 @CCTK_VWarn(i32, i32, i8*, i8*, i8*, ...) #2

; Function Attrs: nounwind optsize ssp uwtable
define void @bndradiativedirgi_(i32* nocapture %ierr, %struct.cGH* %GH, i32* nocapture readonly %stencil_size, i32* nocapture readonly %dir, double* nocapture readonly %var0, double* nocapture readonly %speed, i32* nocapture readonly %gi_to, i32* nocapture readonly %gi_from) #1 {
  %1 = load i32* %stencil_size, align 4, !tbaa !7
  %2 = load i32* %dir, align 4, !tbaa !7
  %3 = load double* %var0, align 8, !tbaa !15
  %4 = load double* %speed, align 8, !tbaa !15
  %5 = load i32* %gi_to, align 4, !tbaa !7
  %6 = load i32* %gi_from, align 4, !tbaa !7
  %7 = tail call i32 @BndRadiativeDirGI(%struct.cGH* %GH, i32 %1, i32 %2, double %3, double %4, i32 %5, i32 %6) #6
  store i32 %7, i32* %ierr, align 4, !tbaa !7
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @BndRadiativeGI(%struct.cGH* %GH, i32* %stencil, double %var0, double %speed, i32 %gi_to, i32 %gi_from) #1 {
  %1 = tail call i32 @CCTK_FirstVarIndexI(i32 %gi_to) #5
  %2 = tail call i32 @CCTK_FirstVarIndexI(i32 %gi_from) #5
  %3 = or i32 %2, %1
  %4 = icmp sgt i32 %3, -1
  br i1 %4, label %5, label %8

; <label>:5                                       ; preds = %0
  %6 = tail call i32 @CCTK_NumVarsInGroupI(i32 %gi_to) #5
  %7 = tail call fastcc i32 @ApplyBndRadiative(%struct.cGH* %GH, i32 -1, i32* %stencil, i32 0, double %var0, double %speed, i32 %1, i32 %2, i32 %6) #6
  br label %10

; <label>:8                                       ; preds = %0
  %9 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 2, i32 335, i8* getelementptr inbounds ([88 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str3, i64 0, i64 0), i32 %gi_to, i32 %gi_from) #5
  br label %10

; <label>:10                                      ; preds = %8, %5
  %retval.0 = phi i32 [ %7, %5 ], [ -1, %8 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize ssp uwtable
define void @bndradiativegi_(i32* nocapture %ierr, %struct.cGH* %GH, i32* %stencil, double* nocapture readonly %var0, double* nocapture readonly %speed, i32* nocapture readonly %gi_to, i32* nocapture readonly %gi_from) #1 {
  %1 = load double* %var0, align 8, !tbaa !15
  %2 = load double* %speed, align 8, !tbaa !15
  %3 = load i32* %gi_to, align 4, !tbaa !7
  %4 = load i32* %gi_from, align 4, !tbaa !7
  %5 = tail call i32 @BndRadiativeGI(%struct.cGH* %GH, i32* %stencil, double %1, double %2, i32 %3, i32 %4) #6
  store i32 %5, i32* %ierr, align 4, !tbaa !7
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @BndRadiativeDirGN(%struct.cGH* %GH, i32 %stencil_size, i32 %dir, double %var0, double %speed, i8* %gname_to, i8* %gname_from) #1 {
  %1 = tail call i32 @CCTK_GroupIndex(i8* %gname_to) #5
  %2 = tail call i32 @CCTK_GroupIndex(i8* %gname_from) #5
  %3 = or i32 %2, %1
  %4 = icmp sgt i32 %3, -1
  br i1 %4, label %5, label %7

; <label>:5                                       ; preds = %0
  %6 = tail call i32 @BndRadiativeDirGI(%struct.cGH* %GH, i32 %stencil_size, i32 %dir, double %var0, double %speed, i32 %1, i32 %2) #6
  br label %9

; <label>:7                                       ; preds = %0
  %8 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 2, i32 430, i8* getelementptr inbounds ([88 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([58 x i8]* @.str4, i64 0, i64 0), i8* %gname_to, i8* %gname_from) #5
  br label %9

; <label>:9                                       ; preds = %7, %5
  %retval.0 = phi i32 [ %6, %5 ], [ -1, %7 ]
  ret i32 %retval.0
}

; Function Attrs: optsize
declare i32 @CCTK_GroupIndex(i8*) #2

; Function Attrs: nounwind optsize ssp uwtable
define void @bndradiativedirgn_(i32* nocapture %ierr, %struct.cGH* %GH, i32* nocapture readonly %stencil_size, i32* nocapture readonly %dir, double* nocapture readonly %var0, double* nocapture readonly %speed, i8* %cctk_str1, i8* %cctk_str2, i32 %cctk_strlen1, i32 %cctk_strlen2) #1 {
  %1 = tail call i8* @Util_NullTerminateString(i8* %cctk_str1, i32 %cctk_strlen1) #5
  %2 = tail call i8* @Util_NullTerminateString(i8* %cctk_str2, i32 %cctk_strlen2) #5
  %3 = load i32* %stencil_size, align 4, !tbaa !7
  %4 = load i32* %dir, align 4, !tbaa !7
  %5 = load double* %var0, align 8, !tbaa !15
  %6 = load double* %speed, align 8, !tbaa !15
  %7 = tail call i32 @BndRadiativeDirGN(%struct.cGH* %GH, i32 %3, i32 %4, double %5, double %6, i8* %1, i8* %2) #6
  store i32 %7, i32* %ierr, align 4, !tbaa !7
  tail call void @free(i8* %1) #6
  tail call void @free(i8* %2) #6
  ret void
}

; Function Attrs: optsize
declare i8* @Util_NullTerminateString(i8*, i32) #2

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #3

; Function Attrs: nounwind optsize ssp uwtable
define i32 @BndRadiativeGN(%struct.cGH* %GH, i32* %stencil, double %var0, double %speed, i8* %gname_to, i8* %gname_from) #1 {
  %1 = tail call i32 @CCTK_GroupIndex(i8* %gname_to) #5
  %2 = tail call i32 @CCTK_GroupIndex(i8* %gname_from) #5
  %3 = or i32 %2, %1
  %4 = icmp sgt i32 %3, -1
  br i1 %4, label %5, label %7

; <label>:5                                       ; preds = %0
  %6 = tail call i32 @BndRadiativeGI(%struct.cGH* %GH, i32* %stencil, double %var0, double %speed, i32 %1, i32 %2) #6
  br label %9

; <label>:7                                       ; preds = %0
  %8 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 2, i32 520, i8* getelementptr inbounds ([88 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([55 x i8]* @.str5, i64 0, i64 0), i8* %gname_to, i8* %gname_from) #5
  br label %9

; <label>:9                                       ; preds = %7, %5
  %retval.0 = phi i32 [ %6, %5 ], [ -1, %7 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize ssp uwtable
define void @bndradiativegn_(i32* nocapture %ierr, %struct.cGH* %GH, i32* %stencil, double* nocapture readonly %var0, double* nocapture readonly %speed, i8* %cctk_str1, i8* %cctk_str2, i32 %cctk_strlen1, i32 %cctk_strlen2) #1 {
  %1 = tail call i8* @Util_NullTerminateString(i8* %cctk_str1, i32 %cctk_strlen1) #5
  %2 = tail call i8* @Util_NullTerminateString(i8* %cctk_str2, i32 %cctk_strlen2) #5
  %3 = load double* %var0, align 8, !tbaa !15
  %4 = load double* %speed, align 8, !tbaa !15
  %5 = tail call i32 @BndRadiativeGN(%struct.cGH* %GH, i32* %stencil, double %3, double %4, i8* %1, i8* %2) #6
  store i32 %5, i32* %ierr, align 4, !tbaa !7
  tail call void @free(i8* %1) #6
  tail call void @free(i8* %2) #6
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @BndRadiativeDirVI(%struct.cGH* %GH, i32 %stencil_size, i32 %dir, double %var0, double %speed, i32 %vi_to, i32 %vi_from) #1 {
  %1 = tail call i32 @CCTK_NumVars() #5
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
  %8 = tail call fastcc i32 @ApplyBndRadiative(%struct.cGH* %GH, i32 %stencil_size, i32* null, i32 %dir, double %var0, double %speed, i32 %vi_to, i32 %vi_from, i32 1) #6
  br label %11

; <label>:9                                       ; preds = %3, %0
  %10 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 2, i32 616, i8* getelementptr inbounds ([88 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([59 x i8]* @.str6, i64 0, i64 0), i32 %vi_to, i32 %vi_from) #5
  br label %11

; <label>:11                                      ; preds = %9, %7
  %retval.0 = phi i32 [ %8, %7 ], [ -1, %9 ]
  ret i32 %retval.0
}

; Function Attrs: optsize
declare i32 @CCTK_NumVars() #2

; Function Attrs: nounwind optsize ssp uwtable
define void @bndradiativedirvi_(i32* nocapture %ierr, %struct.cGH* %GH, i32* nocapture readonly %stencil_size, i32* nocapture readonly %dir, double* nocapture readonly %var0, double* nocapture readonly %speed, i32* nocapture readonly %vi_to, i32* nocapture readonly %vi_from) #1 {
  %1 = load i32* %stencil_size, align 4, !tbaa !7
  %2 = load i32* %dir, align 4, !tbaa !7
  %3 = load double* %var0, align 8, !tbaa !15
  %4 = load double* %speed, align 8, !tbaa !15
  %5 = load i32* %vi_to, align 4, !tbaa !7
  %6 = load i32* %vi_from, align 4, !tbaa !7
  %7 = tail call i32 @BndRadiativeDirVI(%struct.cGH* %GH, i32 %1, i32 %2, double %3, double %4, i32 %5, i32 %6) #6
  store i32 %7, i32* %ierr, align 4, !tbaa !7
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @BndRadiativeVI(%struct.cGH* %GH, i32* %stencil, double %var0, double %speed, i32 %vi_to, i32 %vi_from) #1 {
  %1 = tail call i32 @CCTK_NumVars() #5
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
  %8 = tail call fastcc i32 @ApplyBndRadiative(%struct.cGH* %GH, i32 -1, i32* %stencil, i32 0, double %var0, double %speed, i32 %vi_to, i32 %vi_from, i32 1) #6
  br label %11

; <label>:9                                       ; preds = %3, %0
  %10 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 2, i32 704, i8* getelementptr inbounds ([88 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([56 x i8]* @.str7, i64 0, i64 0), i32 %vi_to, i32 %vi_from) #5
  br label %11

; <label>:11                                      ; preds = %9, %7
  %retval.0 = phi i32 [ %8, %7 ], [ -1, %9 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize ssp uwtable
define void @bndradiativevi_(i32* nocapture %ierr, %struct.cGH* %GH, i32* %stencil, double* nocapture readonly %var0, double* nocapture readonly %speed, i32* nocapture readonly %vi_to, i32* nocapture readonly %vi_from) #1 {
  %1 = load double* %var0, align 8, !tbaa !15
  %2 = load double* %speed, align 8, !tbaa !15
  %3 = load i32* %vi_to, align 4, !tbaa !7
  %4 = load i32* %vi_from, align 4, !tbaa !7
  %5 = tail call i32 @BndRadiativeVI(%struct.cGH* %GH, i32* %stencil, double %1, double %2, i32 %3, i32 %4) #6
  store i32 %5, i32* %ierr, align 4, !tbaa !7
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @BndRadiativeDirVN(%struct.cGH* %GH, i32 %stencil_size, i32 %dir, double %var0, double %speed, i8* %vname_to, i8* %vname_from) #1 {
  %1 = tail call i32 @CCTK_VarIndex(i8* %vname_to) #5
  %2 = tail call i32 @CCTK_VarIndex(i8* %vname_from) #5
  %3 = tail call i32 @CCTK_NumVars() #5
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
  %10 = tail call i32 @BndRadiativeDirVI(%struct.cGH* %GH, i32 %stencil_size, i32 %dir, double %var0, double %speed, i32 %1, i32 %2) #6
  br label %13

; <label>:11                                      ; preds = %5, %0
  %12 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 2, i32 801, i8* getelementptr inbounds ([88 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([61 x i8]* @.str8, i64 0, i64 0), i8* %vname_to, i8* %vname_from) #5
  br label %13

; <label>:13                                      ; preds = %11, %9
  %retval.0 = phi i32 [ %10, %9 ], [ -1, %11 ]
  ret i32 %retval.0
}

; Function Attrs: optsize
declare i32 @CCTK_VarIndex(i8*) #2

; Function Attrs: nounwind optsize ssp uwtable
define void @bndradiativedirvn_(i32* nocapture %ierr, %struct.cGH* %GH, i32* nocapture readonly %stencil_size, i32* nocapture readonly %dir, double* nocapture readonly %var0, double* nocapture readonly %speed, i8* %cctk_str1, i8* %cctk_str2, i32 %cctk_strlen1, i32 %cctk_strlen2) #1 {
  %1 = tail call i8* @Util_NullTerminateString(i8* %cctk_str1, i32 %cctk_strlen1) #5
  %2 = tail call i8* @Util_NullTerminateString(i8* %cctk_str2, i32 %cctk_strlen2) #5
  %3 = load i32* %stencil_size, align 4, !tbaa !7
  %4 = load i32* %dir, align 4, !tbaa !7
  %5 = load double* %var0, align 8, !tbaa !15
  %6 = load double* %speed, align 8, !tbaa !15
  %7 = tail call i32 @BndRadiativeDirVN(%struct.cGH* %GH, i32 %3, i32 %4, double %5, double %6, i8* %1, i8* %2) #6
  store i32 %7, i32* %ierr, align 4, !tbaa !7
  tail call void @free(i8* %1) #6
  tail call void @free(i8* %2) #6
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @BndRadiativeVN(%struct.cGH* %GH, i32* %stencil, double %var0, double %speed, i8* %vname_to, i8* %vname_from) #1 {
  %1 = tail call i32 @CCTK_VarIndex(i8* %vname_to) #5
  %2 = tail call i32 @CCTK_VarIndex(i8* %vname_from) #5
  %3 = tail call i32 @CCTK_NumVars() #5
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
  %10 = tail call i32 @BndRadiativeVI(%struct.cGH* %GH, i32* %stencil, double %var0, double %speed, i32 %1, i32 %2) #6
  br label %13

; <label>:11                                      ; preds = %5, %0
  %12 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 2, i32 893, i8* getelementptr inbounds ([88 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([58 x i8]* @.str9, i64 0, i64 0), i8* %vname_to, i8* %vname_from) #5
  br label %13

; <label>:13                                      ; preds = %11, %9
  %retval.0 = phi i32 [ %10, %9 ], [ -1, %11 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize ssp uwtable
define void @bndradiativevn_(i32* nocapture %ierr, %struct.cGH* %GH, i32* %stencil, double* nocapture readonly %var0, double* nocapture readonly %speed, i8* %cctk_str1, i8* %cctk_str2, i32 %cctk_strlen1, i32 %cctk_strlen2) #1 {
  %1 = tail call i8* @Util_NullTerminateString(i8* %cctk_str1, i32 %cctk_strlen1) #5
  %2 = tail call i8* @Util_NullTerminateString(i8* %cctk_str2, i32 %cctk_strlen2) #5
  %3 = load double* %var0, align 8, !tbaa !15
  %4 = load double* %speed, align 8, !tbaa !15
  %5 = tail call i32 @BndRadiativeVN(%struct.cGH* %GH, i32* %stencil, double %3, double %4, i8* %1, i8* %2) #6
  store i32 %5, i32* %ierr, align 4, !tbaa !7
  tail call void @free(i8* %1) #6
  tail call void @free(i8* %2) #6
  ret void
}

; Function Attrs: optsize
declare i32 @CCTK_GroupDimFromVarI(i32) #2

; Function Attrs: nounwind optsize
declare i8* @__memcpy_chk(i8*, i8*, i64, i64) #3

; Function Attrs: optsize
declare i32 @CCTK_Warn(i32, i32, i8*, i8*, i8*) #2

; Function Attrs: optsize
declare i32 @CCTK_NumTimeLevelsFromVarI(i32) #2

; Function Attrs: optsize
declare i32 @__sprintf_chk(i8*, i32, i64, i8*, ...) #2

; Function Attrs: optsize
declare i32 @CCTK_CoordIndex(i32, i8*, i8*) #2

; Function Attrs: optsize
declare i8* @CCTK_GHExtension(%struct.cGH*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #4

; Function Attrs: optsize
declare i32 @CCTK_VarTypeI(i32) #2

; Function Attrs: optsize
declare i8* @CCTK_VarName(i32) #2

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
!2 = !{!3, !4, i64 0}
!3 = !{!"", !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!4, !4, i64 0}
!8 = !{!9, !11, i64 64}
!9 = !{!"", !4, i64 0, !4, i64 4, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !10, i64 56, !11, i64 64, !10, i64 72, !10, i64 80, !10, i64 88, !10, i64 96, !4, i64 104, !10, i64 112, !11, i64 120, !10, i64 128, !10, i64 136, !10, i64 144}
!10 = !{!"any pointer", !5, i64 0}
!11 = !{!"double", !5, i64 0}
!12 = !{!9, !10, i64 128}
!13 = !{!10, !10, i64 0}
!14 = !{!9, !10, i64 72}
!15 = !{!11, !11, i64 0}
!16 = !{!9, !10, i64 96}
!17 = !{!9, !10, i64 16}
!18 = !{!19, !10, i64 0}
!19 = !{!"Symmetry", !10, i64 0}
!20 = !{!9, !10, i64 88}
!21 = !{!5, !5, i64 0}
!22 = !{!23, !23, i64 0}
!23 = !{!"short", !5, i64 0}
!24 = !{!25, !25, i64 0}
!25 = !{!"long", !5, i64 0}
!26 = !{!27, !27, i64 0}
!27 = !{!"float", !5, i64 0}
!28 = !{!29, !29, i64 0}
!29 = !{!"long double", !5, i64 0}