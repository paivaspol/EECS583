; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/Boundary/RobinBoundary.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.cGH = type { i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, double, double*, double*, i32*, i32*, i32, i32*, double, i8***, i8**, %struct.cGHGroupData* }
%struct.cGHGroupData = type { i8, i8 }

@.str = private unnamed_addr constant [84 x i8] c"../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/Boundary/RobinBoundary.c\00", align 1
@.str1 = private unnamed_addr constant [9 x i8] c"Boundary\00", align 1
@.str2 = private unnamed_addr constant [36 x i8] c"Invalid group index %d in BndFlatGI\00", align 1
@.str3 = private unnamed_addr constant [38 x i8] c"Invalid group name '%s' in BndRobinGN\00", align 1
@.str4 = private unnamed_addr constant [38 x i8] c"BndRobinVI: Invalid variable index %d\00", align 1
@.str5 = private unnamed_addr constant [41 x i8] c"Invalid variable name '%s' in BndRobinVN\00", align 1
@.str6 = private unnamed_addr constant [96 x i8] c"$Header: /cactus/CactusBase/Boundary/src/RobinBoundary.c,v 1.23 2001/12/13 16:18:05 allen Exp $\00", align 1
@.str7 = private unnamed_addr constant [54 x i8] c"ApplyBndRobin: Variable dimension of %d not supported\00", align 1
@.str8 = private unnamed_addr constant [59 x i8] c"ApplyBndRobin: NULL pointer passed for stencil width array\00", align 1
@.str9 = private unnamed_addr constant [69 x i8] c"ApplyBndRobin: Stencil width must be 1 for Robin boundary conditions\00", align 1
@.str10 = private unnamed_addr constant [8 x i8] c"cart%dd\00", align 1
@.str11 = private unnamed_addr constant [50 x i8] c"ApplyBndRobin: Couldn't get coordinates from '%s'\00", align 1
@.str12 = private unnamed_addr constant [2 x i8] c"x\00", align 1
@.str13 = private unnamed_addr constant [2 x i8] c"y\00", align 1
@.str14 = private unnamed_addr constant [2 x i8] c"z\00", align 1
@.str15 = private unnamed_addr constant [9 x i8] c"spher%dd\00", align 1
@.str16 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str17 = private unnamed_addr constant [9 x i8] c"Symmetry\00", align 1
@.str18 = private unnamed_addr constant [54 x i8] c"ApplyBndRobin: variable dimension of %d not supported\00", align 1
@.str19 = private unnamed_addr constant [62 x i8] c"ApplyBndRobin: Unsupported variable type %d for variable '%s'\00", align 1

; Function Attrs: nounwind optsize readnone ssp uwtable
define i8* @CCTKi_version_CactusBase_Boundary_RobinBoundary_c() #0 {
  ret i8* getelementptr inbounds ([96 x i8]* @.str6, i64 0, i64 0)
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @BndRobinGI(%struct.cGH* %GH, i32* readonly %stencil, double %finf, i32 %npow, i32 %gi) #1 {
  %1 = tail call i32 @CCTK_FirstVarIndexI(i32 %gi) #6
  %2 = icmp sgt i32 %1, -1
  br i1 %2, label %3, label %6

; <label>:3                                       ; preds = %0
  %4 = tail call i32 @CCTK_NumVarsInGroupI(i32 %gi) #6
  %5 = tail call fastcc i32 @ApplyBndRobin(%struct.cGH* %GH, i32* %stencil, double %finf, i32 %npow, i32 %1, i32 %4) #7
  br label %8

; <label>:6                                       ; preds = %0
  %7 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 2, i32 139, i8* getelementptr inbounds ([84 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([36 x i8]* @.str2, i64 0, i64 0), i32 %gi) #6
  br label %8

; <label>:8                                       ; preds = %6, %3
  %retval.0 = phi i32 [ %5, %3 ], [ -1, %6 ]
  ret i32 %retval.0
}

; Function Attrs: optsize
declare i32 @CCTK_FirstVarIndexI(i32) #2

; Function Attrs: nounwind optsize ssp uwtable
define internal fastcc i32 @ApplyBndRobin(%struct.cGH* %GH, i32* readonly %stencil, double %finf, i32 %npow, i32 %first_var, i32 %num_vars) #1 {
  %doBC = alloca [6 x i32], align 16
  %coord_system_name = alloca [20 x i8], align 16
  %dist = alloca [8 x double], align 16
  %1 = bitcast [8 x double]* %dist to i8*
  call void @llvm.lifetime.start(i64 64, i8* %1) #4
  %2 = tail call i32 @CCTK_GroupIndexFromVarI(i32 %first_var) #6
  %3 = tail call i32 @CCTK_GroupDimI(i32 %2) #6
  %4 = tail call i32 @CCTK_VarTypeI(i32 %first_var) #6
  %5 = icmp sgt i32 %3, 3
  br i1 %5, label %6, label %8

; <label>:6                                       ; preds = %0
  %7 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 653, i8* getelementptr inbounds ([84 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str7, i64 0, i64 0), i32 %3) #6
  br label %.loopexit414

; <label>:8                                       ; preds = %0
  %9 = icmp eq i32* %stencil, null
  br i1 %9, label %12, label %.preheader415

.preheader415:                                    ; preds = %8
  %10 = icmp sgt i32 %3, 0
  br i1 %10, label %.lr.ph559, label %._crit_edge560

.lr.ph559:                                        ; preds = %.preheader415
  %11 = sext i32 %3 to i64
  br label %16

; <label>:12                                      ; preds = %8
  %13 = tail call i32 @CCTK_Warn(i32 1, i32 661, i8* getelementptr inbounds ([84 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([59 x i8]* @.str8, i64 0, i64 0)) #6
  br label %.loopexit414

; <label>:14                                      ; preds = %16
  %15 = icmp slt i64 %indvars.iv.next648, %11
  br i1 %15, label %16, label %._crit_edge560

; <label>:16                                      ; preds = %.lr.ph559, %14
  %indvars.iv647 = phi i64 [ 0, %.lr.ph559 ], [ %indvars.iv.next648, %14 ]
  %17 = getelementptr inbounds i32* %stencil, i64 %indvars.iv647
  %18 = load i32* %17, align 4, !tbaa !2
  %19 = icmp eq i32 %18, 1
  %indvars.iv.next648 = add nuw nsw i64 %indvars.iv647, 1
  br i1 %19, label %14, label %20

; <label>:20                                      ; preds = %16
  %21 = tail call i32 @CCTK_Warn(i32 1, i32 670, i8* getelementptr inbounds ([84 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([69 x i8]* @.str9, i64 0, i64 0)) #6
  br label %.loopexit414

._crit_edge560:                                   ; preds = %14, %.preheader415
  %22 = getelementptr inbounds [20 x i8]* %coord_system_name, i64 0, i64 0
  %23 = call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* %22, i32 0, i64 20, i8* getelementptr inbounds ([8 x i8]* @.str10, i64 0, i64 0), i32 %3) #6
  %24 = call i32 @CCTK_CoordSystemHandle(i8* %22) #6
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %28

; <label>:26                                      ; preds = %._crit_edge560
  %27 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 679, i8* getelementptr inbounds ([84 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([50 x i8]* @.str11, i64 0, i64 0), i8* %22) #6
  br label %.loopexit414

; <label>:28                                      ; preds = %._crit_edge560
  %29 = call i32 @CCTK_CoordIndex(i32 -1, i8* getelementptr inbounds ([2 x i8]* @.str12, i64 0, i64 0), i8* %22) #6
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17
  %32 = load i8**** %31, align 8, !tbaa !6
  %33 = getelementptr inbounds i8*** %32, i64 %30
  %34 = bitcast i8*** %33 to double***
  %35 = load double*** %34, align 8, !tbaa !10
  %36 = load double** %35, align 8, !tbaa !10
  %37 = call i32 @CCTK_CoordIndex(i32 -1, i8* getelementptr inbounds ([2 x i8]* @.str13, i64 0, i64 0), i8* %22) #6
  %38 = sext i32 %37 to i64
  %39 = load i8**** %31, align 8, !tbaa !6
  %40 = getelementptr inbounds i8*** %39, i64 %38
  %41 = bitcast i8*** %40 to double***
  %42 = load double*** %41, align 8, !tbaa !10
  %43 = load double** %42, align 8, !tbaa !10
  %44 = call i32 @CCTK_CoordIndex(i32 -1, i8* getelementptr inbounds ([2 x i8]* @.str14, i64 0, i64 0), i8* %22) #6
  %45 = sext i32 %44 to i64
  %46 = load i8**** %31, align 8, !tbaa !6
  %47 = getelementptr inbounds i8*** %46, i64 %45
  %48 = bitcast i8*** %47 to double***
  %49 = load double*** %48, align 8, !tbaa !10
  %50 = load double** %49, align 8, !tbaa !10
  %51 = call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* %22, i32 0, i64 20, i8* getelementptr inbounds ([9 x i8]* @.str15, i64 0, i64 0), i32 %3) #6
  %52 = call i32 @CCTK_CoordSystemHandle(i8* %22) #6
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %56

; <label>:54                                      ; preds = %28
  %55 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 691, i8* getelementptr inbounds ([84 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([50 x i8]* @.str11, i64 0, i64 0), i8* %22) #6
  br label %.loopexit414

; <label>:56                                      ; preds = %28
  %57 = call i32 @CCTK_CoordIndex(i32 -1, i8* getelementptr inbounds ([2 x i8]* @.str16, i64 0, i64 0), i8* %22) #6
  %58 = sext i32 %57 to i64
  %59 = load i8**** %31, align 8, !tbaa !6
  %60 = getelementptr inbounds i8*** %59, i64 %58
  %61 = bitcast i8*** %60 to double***
  %62 = load double*** %61, align 8, !tbaa !10
  %63 = load double** %62, align 8, !tbaa !10
  %64 = call i8* @CCTK_GHExtension(%struct.cGH* %GH, i8* getelementptr inbounds ([9 x i8]* @.str17, i64 0, i64 0)) #6
  %65 = sitofp i32 %npow to double
  %66 = getelementptr inbounds [8 x double]* %dist, i64 0, i64 0
  store double 0.000000e+00, double* %66, align 16, !tbaa !11
  %67 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 10
  %68 = bitcast double** %67 to i64**
  %69 = load i64** %68, align 8, !tbaa !12
  %70 = load i64* %69, align 8, !tbaa !11
  %71 = getelementptr inbounds [8 x double]* %dist, i64 0, i64 1
  %72 = bitcast double* %71 to i64*
  store i64 %70, i64* %72, align 8, !tbaa !11
  %73 = getelementptr inbounds i64* %69, i64 1
  %74 = bitcast i64* %73 to double*
  %75 = load double* %74, align 8, !tbaa !11
  %76 = getelementptr inbounds [8 x double]* %dist, i64 0, i64 2
  store double %75, double* %76, align 16, !tbaa !11
  %77 = bitcast i64 %70 to double
  %78 = fmul double %77, %77
  %79 = fmul double %75, %75
  %80 = fadd double %79, %78
  %81 = call double @sqrt(double %80) #8
  %82 = getelementptr inbounds [8 x double]* %dist, i64 0, i64 3
  store double %81, double* %82, align 8, !tbaa !11
  %83 = getelementptr inbounds i64* %69, i64 2
  %84 = bitcast i64* %83 to double*
  %85 = load double* %84, align 8, !tbaa !11
  %86 = getelementptr inbounds [8 x double]* %dist, i64 0, i64 4
  store double %85, double* %86, align 16, !tbaa !11
  %87 = fmul double %85, %85
  %88 = fadd double %87, %78
  %89 = call double @sqrt(double %88) #8
  %90 = getelementptr inbounds [8 x double]* %dist, i64 0, i64 5
  store double %89, double* %90, align 8, !tbaa !11
  %91 = fadd double %79, %87
  %92 = call double @sqrt(double %91) #8
  %93 = getelementptr inbounds [8 x double]* %dist, i64 0, i64 6
  store double %92, double* %93, align 16, !tbaa !11
  %94 = fadd double %80, %87
  %95 = call double @sqrt(double %94) #8
  %96 = getelementptr inbounds [8 x double]* %dist, i64 0, i64 7
  store double %95, double* %96, align 8, !tbaa !11
  %97 = add nsw i32 %num_vars, %first_var
  %98 = icmp sgt i32 %num_vars, 0
  br i1 %98, label %.lr.ph557, label %.loopexit414

.lr.ph557:                                        ; preds = %56
  %99 = bitcast [6 x i32]* %doBC to i8*
  %100 = icmp eq i8* %64, null
  %101 = icmp eq i32 %3, 3
  %102 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 3
  %103 = getelementptr inbounds [6 x i32]* %doBC, i64 0, i64 4
  %104 = getelementptr inbounds [6 x i32]* %doBC, i64 0, i64 5
  %105 = getelementptr inbounds [6 x i32]* %doBC, i64 0, i64 2
  %106 = getelementptr inbounds [6 x i32]* %doBC, i64 0, i64 3
  %107 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 12
  %108 = shl nsw i32 %3, 1
  %109 = bitcast i8* %64 to i32***
  %110 = sext i32 %108 to i64
  %111 = add i32 %3, -1
  %112 = sext i32 %first_var to i64
  br label %113

; <label>:113                                     ; preds = %.lr.ph557, %.loopexit395
  %indvars.iv645 = phi i64 [ %112, %.lr.ph557 ], [ %indvars.iv.next646, %.loopexit395 ]
  %var.0555 = phi i32 [ %first_var, %.lr.ph557 ], [ %2993, %.loopexit395 ]
  call void @llvm.memset.p0i8.i64(i8* %99, i8 1, i64 24, i32 16, i1 false)
  br i1 %100, label %.preheader412, label %.preheader413

.preheader413:                                    ; preds = %113
  br i1 %10, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader413
  %114 = load i32*** %109, align 8, !tbaa !13
  %115 = getelementptr inbounds i32** %114, i64 %indvars.iv645
  %116 = load i32** %115, align 8, !tbaa !10
  br label %118

.preheader412:                                    ; preds = %118, %113
  br i1 %10, label %.lr.ph428, label %._crit_edge

.lr.ph428:                                        ; preds = %.preheader412
  %117 = load i32** %102, align 8, !tbaa !15
  br label %126

; <label>:118                                     ; preds = %.lr.ph, %118
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %118 ]
  %119 = getelementptr inbounds i32* %116, i64 %indvars.iv
  %120 = load i32* %119, align 4, !tbaa !2
  %121 = and i32 %120, -2
  %122 = icmp eq i32 %121, -42
  %123 = zext i1 %122 to i32
  %124 = getelementptr inbounds [6 x i32]* %doBC, i64 0, i64 %indvars.iv
  store i32 %123, i32* %124, align 4, !tbaa !2
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %125 = icmp slt i64 %indvars.iv.next, %110
  br i1 %125, label %118, label %.preheader412

; <label>:126                                     ; preds = %149, %.lr.ph428
  %indvars.iv571 = phi i64 [ 0, %.lr.ph428 ], [ %indvars.iv.next572, %149 ]
  %127 = getelementptr inbounds i32* %117, i64 %indvars.iv571
  %128 = load i32* %127, align 4, !tbaa !2
  %129 = icmp sgt i32 %128, 1
  %130 = trunc i64 %indvars.iv571 to i32
  %131 = shl nsw i32 %130, 1
  %132 = sext i32 %131 to i64
  br i1 %129, label %134, label %._crit_edge673

._crit_edge673:                                   ; preds = %126
  %133 = getelementptr inbounds [6 x i32]* %doBC, i64 0, i64 %132
  store i32 0, i32* %133, align 8, !tbaa !2
  %.pre681 = or i32 %131, 1
  %.pre683 = sext i32 %.pre681 to i64
  br label %149

; <label>:134                                     ; preds = %126
  %135 = load i32** %107, align 8, !tbaa !16
  %136 = getelementptr inbounds i32* %135, i64 %132
  %137 = load i32* %136, align 4, !tbaa !2
  %138 = icmp ne i32 %137, 0
  %139 = zext i1 %138 to i32
  %140 = getelementptr inbounds [6 x i32]* %doBC, i64 0, i64 %132
  %141 = load i32* %140, align 8, !tbaa !2
  %142 = and i32 %141, %139
  store i32 %142, i32* %140, align 8, !tbaa !2
  %143 = or i32 %131, 1
  %144 = sext i32 %143 to i64
  %145 = load i32** %107, align 8, !tbaa !16
  %146 = getelementptr inbounds i32* %145, i64 %144
  %147 = load i32* %146, align 4, !tbaa !2
  %148 = icmp ne i32 %147, 0
  br label %149

; <label>:149                                     ; preds = %._crit_edge673, %134
  %.pre-phi684 = phi i64 [ %.pre683, %._crit_edge673 ], [ %144, %134 ]
  %150 = phi i1 [ false, %._crit_edge673 ], [ %148, %134 ]
  %151 = zext i1 %150 to i32
  %152 = getelementptr inbounds [6 x i32]* %doBC, i64 0, i64 %.pre-phi684
  %153 = load i32* %152, align 4, !tbaa !2
  %154 = and i32 %153, %151
  store i32 %154, i32* %152, align 4, !tbaa !2
  %indvars.iv.next572 = add nuw nsw i64 %indvars.iv571, 1
  %exitcond = icmp eq i32 %130, %111
  br i1 %exitcond, label %._crit_edge, label %126

._crit_edge:                                      ; preds = %149, %.preheader413, %.preheader412
  switch i32 %4, label %2988 [
    i32 1, label %155
    i32 2, label %485
    i32 6, label %805
    i32 3, label %1111
    i32 4, label %1423
    i32 5, label %1743
    i32 7, label %2055
    i32 8, label %2367
    i32 9, label %2673
  ]

; <label>:155                                     ; preds = %._crit_edge
  br i1 %101, label %.preheader, label %160

.preheader:                                       ; preds = %155
  %156 = load i32** %102, align 8, !tbaa !15
  %157 = getelementptr inbounds i32* %156, i64 2
  %158 = load i32* %157, align 4, !tbaa !2
  %159 = icmp sgt i32 %158, 0
  br i1 %159, label %.lr.ph554, label %.loopexit395

; <label>:160                                     ; preds = %155
  %161 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 740, i8* getelementptr inbounds ([84 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str18, i64 0, i64 0), i32 %3) #6
  br label %.loopexit414

.lr.ph554:                                        ; preds = %.preheader, %.loopexit386
  %162 = phi i32 [ %482, %.loopexit386 ], [ %158, %.preheader ]
  %163 = phi i32* [ %483, %.loopexit386 ], [ %156, %.preheader ]
  %indvars.iv639 = phi i32 [ %indvars.iv.next640, %.loopexit386 ], [ 0, %.preheader ]
  %164 = load i32* %103, align 16
  %165 = or i32 %indvars.iv639, %164
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %.loopexit386, label %167

; <label>:167                                     ; preds = %.lr.ph554
  %168 = add nsw i32 %162, -1
  %169 = icmp eq i32 %indvars.iv639, %168
  %170 = load i32* %104, align 4
  %171 = icmp eq i32 %170, 0
  %or.cond690 = and i1 %169, %171
  br i1 %or.cond690, label %.loopexit386, label %172

; <label>:172                                     ; preds = %167
  %173 = load i32* %103, align 16
  %notlhs806 = icmp eq i32 %indvars.iv639, 0
  %notrhs807 = icmp ne i32 %173, 0
  %or.cond692.not = and i1 %notrhs807, %notlhs806
  %.not693 = xor i1 %169, true
  %brmerge = or i1 %or.cond692.not, %.not693
  %.mux = zext i1 %or.cond692.not to i32
  br i1 %brmerge, label %176, label %174

; <label>:174                                     ; preds = %172
  %175 = load i32* %104, align 4, !tbaa !2
  %not.377 = icmp ne i32 %175, 0
  %.334 = sext i1 %not.377 to i32
  br label %176

; <label>:176                                     ; preds = %172, %174
  %dz.0 = phi i32 [ %.334, %174 ], [ %.mux, %172 ]
  %177 = getelementptr inbounds i32* %163, i64 1
  %178 = load i32* %177, align 4, !tbaa !2
  %179 = icmp sgt i32 %178, 0
  br i1 %179, label %.lr.ph550, label %.loopexit386

.lr.ph550:                                        ; preds = %176
  %180 = add i32 %dz.0, %indvars.iv639
  %ispos305 = icmp sgt i32 %dz.0, -1
  %neg306 = sub nsw i32 0, %dz.0
  %181 = select i1 %ispos305, i32 %dz.0, i32 %neg306
  %182 = shl nsw i32 %181, 2
  %183 = add nsw i32 %181, 1
  %184 = sitofp i32 %dz.0 to double
  br label %185

; <label>:185                                     ; preds = %.lr.ph550, %477
  %186 = phi i32 [ %178, %.lr.ph550 ], [ %480, %477 ]
  %187 = phi i32* [ %163, %.lr.ph550 ], [ %478, %477 ]
  %indvars.iv637 = phi i32 [ 0, %.lr.ph550 ], [ %indvars.iv.next638, %477 ]
  %188 = icmp ne i32 %indvars.iv637, 0
  %189 = load i32* %105, align 8
  %190 = icmp eq i32 %189, 0
  %or.cond695 = or i1 %188, %190
  br i1 %or.cond695, label %191, label %196

; <label>:191                                     ; preds = %185
  %192 = add nsw i32 %186, -1
  %193 = icmp eq i32 %indvars.iv637, %192
  br i1 %193, label %194, label %196

; <label>:194                                     ; preds = %191
  %195 = load i32* %106, align 4, !tbaa !2
  %not.376 = icmp ne i32 %195, 0
  %.335 = sext i1 %not.376 to i32
  br label %196

; <label>:196                                     ; preds = %185, %194, %191
  %dy.0 = phi i32 [ 0, %191 ], [ %.335, %194 ], [ 1, %185 ]
  %197 = bitcast [6 x i32]* %doBC to i64*
  %198 = load i64* %197, align 16
  %199 = trunc i64 %198 to i32
  %200 = icmp eq i32 %199, 0
  br i1 %200, label %286, label %201

; <label>:201                                     ; preds = %196
  %202 = load i32* %187, align 4, !tbaa !2
  %203 = mul nsw i32 %186, %indvars.iv639
  %204 = add nsw i32 %203, %indvars.iv637
  %205 = mul nsw i32 %204, %202
  %206 = add nsw i32 %dy.0, %indvars.iv637
  %207 = mul nsw i32 %186, %180
  %208 = add nsw i32 %206, %207
  %209 = mul nsw i32 %208, %202
  %210 = add nsw i32 %209, 1
  %ispos313 = icmp sgt i32 %dy.0, -1
  %neg314 = sub nsw i32 0, %dy.0
  %211 = select i1 %ispos313, i32 %dy.0, i32 %neg314
  %212 = shl nsw i32 %211, 1
  %213 = or i32 %212, 1
  %214 = add nsw i32 %213, %182
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds [8 x double]* %dist, i64 0, i64 %215
  %217 = load double* %216, align 8, !tbaa !11
  %218 = add nsw i32 %183, %211
  %219 = icmp eq i32 %218, 1
  %220 = sext i32 %205 to i64
  %221 = getelementptr inbounds double* %36, i64 %220
  %222 = load double* %221, align 8, !tbaa !11
  br i1 %219, label %223, label %229

; <label>:223                                     ; preds = %201
  %224 = call double @fabs(double %222) #8
  %225 = sext i32 %210 to i64
  %226 = getelementptr inbounds double* %36, i64 %225
  %227 = load double* %226, align 8, !tbaa !11
  %228 = call double @fabs(double %227) #8
  br label %258

; <label>:229                                     ; preds = %201
  %230 = fmul double %222, %222
  %231 = sitofp i32 %dy.0 to double
  %232 = getelementptr inbounds double* %43, i64 %220
  %233 = load double* %232, align 8, !tbaa !11
  %234 = fmul double %231, %233
  %235 = fmul double %234, %234
  %236 = fadd double %230, %235
  %237 = getelementptr inbounds double* %50, i64 %220
  %238 = load double* %237, align 8, !tbaa !11
  %239 = fmul double %184, %238
  %240 = fmul double %239, %239
  %241 = fadd double %236, %240
  %242 = call double @sqrt(double %241) #8
  %243 = sext i32 %210 to i64
  %244 = getelementptr inbounds double* %36, i64 %243
  %245 = load double* %244, align 8, !tbaa !11
  %246 = fmul double %245, %245
  %247 = getelementptr inbounds double* %43, i64 %243
  %248 = load double* %247, align 8, !tbaa !11
  %249 = fmul double %231, %248
  %250 = fmul double %249, %249
  %251 = fadd double %246, %250
  %252 = getelementptr inbounds double* %50, i64 %243
  %253 = load double* %252, align 8, !tbaa !11
  %254 = fmul double %184, %253
  %255 = fmul double %254, %254
  %256 = fadd double %251, %255
  %257 = call double @sqrt(double %256) #8
  br label %258

; <label>:258                                     ; preds = %229, %223
  %.pre-phi666 = phi i64 [ %243, %229 ], [ %225, %223 ]
  %u_dst.0 = phi double [ %242, %229 ], [ %224, %223 ]
  %u_src.0 = phi double [ %257, %229 ], [ %228, %223 ]
  %259 = fmul double %65, %217
  %260 = fadd double %u_dst.0, %u_src.0
  %261 = fmul double %259, %260
  %262 = getelementptr inbounds double* %63, i64 %.pre-phi666
  %263 = load double* %262, align 8, !tbaa !11
  %264 = getelementptr inbounds double* %63, i64 %220
  %265 = load double* %264, align 8, !tbaa !11
  %266 = fadd double %263, %265
  %267 = fmul double %266, %266
  %268 = fdiv double %261, %267
  %269 = load i8**** %31, align 8, !tbaa !6
  %270 = getelementptr inbounds i8*** %269, i64 %indvars.iv645
  %271 = load i8*** %270, align 8, !tbaa !10
  %272 = load i8** %271, align 8, !tbaa !10
  %273 = fmul double %268, 2.000000e+00
  %274 = fmul double %273, %finf
  %275 = getelementptr inbounds i8* %272, i64 %.pre-phi666
  %276 = load i8* %275, align 1, !tbaa !17
  %277 = zext i8 %276 to i32
  %278 = sitofp i32 %277 to double
  %279 = fsub double 1.000000e+00, %268
  %280 = fmul double %279, %278
  %281 = fadd double %274, %280
  %282 = fadd double %268, 1.000000e+00
  %283 = fdiv double %281, %282
  %284 = fptoui double %283 to i8
  %285 = getelementptr inbounds i8* %272, i64 %220
  store i8 %284, i8* %285, align 1, !tbaa !17
  br label %286

; <label>:286                                     ; preds = %196, %258
  %287 = icmp ne i32 %dy.0, 0
  %288 = or i32 %dy.0, %dz.0
  %289 = icmp eq i32 %288, 0
  br i1 %289, label %.loopexit, label %290

; <label>:290                                     ; preds = %286
  %291 = load i32** %102, align 8, !tbaa !15
  %292 = load i32* %291, align 4, !tbaa !2
  %293 = getelementptr inbounds i32* %291, i64 1
  %294 = load i32* %293, align 4, !tbaa !2
  %ispos307 = icmp sgt i32 %dy.0, -1
  %neg308 = sub nsw i32 0, %dy.0
  %295 = select i1 %ispos307, i32 %dy.0, i32 %neg308
  %296 = add nsw i32 %292, -1
  %297 = icmp sgt i32 %296, 1
  br i1 %297, label %.lr.ph547, label %.loopexit

.lr.ph547:                                        ; preds = %290
  %298 = shl nsw i32 %295, 1
  %299 = add nsw i32 %298, %182
  %300 = sext i32 %299 to i64
  %301 = getelementptr inbounds [8 x double]* %dist, i64 0, i64 %300
  %302 = load double* %301, align 16, !tbaa !11
  %303 = add nsw i32 %295, %181
  %304 = icmp eq i32 %303, 1
  %.336 = select i1 %287, double* %43, double* %50
  %305 = fmul double %65, %302
  %306 = sitofp i32 %dy.0 to double
  %307 = mul i32 %indvars.iv639, %294
  %308 = add i32 %indvars.iv637, %307
  %309 = mul i32 %292, %308
  %310 = sext i32 %309 to i64
  %311 = add i32 %dy.0, %indvars.iv637
  %312 = mul i32 %180, %294
  %313 = add i32 %311, %312
  %314 = mul i32 %292, %313
  %315 = sext i32 %314 to i64
  br label %316

; <label>:316                                     ; preds = %.lr.ph547, %353
  %indvars.iv643 = phi i64 [ %315, %.lr.ph547 ], [ %indvars.iv.next644, %353 ]
  %indvars.iv641 = phi i64 [ %310, %.lr.ph547 ], [ %indvars.iv.next642, %353 ]
  %i.0543 = phi i32 [ 1, %.lr.ph547 ], [ %380, %353 ]
  %indvars.iv.next644 = add i64 %indvars.iv643, 1
  %indvars.iv.next642 = add i64 %indvars.iv641, 1
  br i1 %304, label %317, label %322

; <label>:317                                     ; preds = %316
  %.in311 = getelementptr inbounds double* %.336, i64 %indvars.iv.next642
  %318 = load double* %.in311, align 8
  %319 = call double @fabs(double %318) #8
  %.in312 = getelementptr inbounds double* %.336, i64 %indvars.iv.next644
  %320 = load double* %.in312, align 8
  %321 = call double @fabs(double %320) #8
  br label %353

; <label>:322                                     ; preds = %316
  %323 = getelementptr inbounds double* %36, i64 %indvars.iv.next642
  %324 = load double* %323, align 8, !tbaa !11
  %325 = fmul double %324, 0.000000e+00
  %326 = fmul double %325, %325
  %327 = getelementptr inbounds double* %43, i64 %indvars.iv.next642
  %328 = load double* %327, align 8, !tbaa !11
  %329 = fmul double %306, %328
  %330 = fmul double %329, %329
  %331 = fadd double %326, %330
  %332 = getelementptr inbounds double* %50, i64 %indvars.iv.next642
  %333 = load double* %332, align 8, !tbaa !11
  %334 = fmul double %184, %333
  %335 = fmul double %334, %334
  %336 = fadd double %331, %335
  %337 = call double @sqrt(double %336) #8
  %338 = getelementptr inbounds double* %36, i64 %indvars.iv.next644
  %339 = load double* %338, align 8, !tbaa !11
  %340 = fmul double %339, 0.000000e+00
  %341 = fmul double %340, %340
  %342 = getelementptr inbounds double* %43, i64 %indvars.iv.next644
  %343 = load double* %342, align 8, !tbaa !11
  %344 = fmul double %306, %343
  %345 = fmul double %344, %344
  %346 = fadd double %341, %345
  %347 = getelementptr inbounds double* %50, i64 %indvars.iv.next644
  %348 = load double* %347, align 8, !tbaa !11
  %349 = fmul double %184, %348
  %350 = fmul double %349, %349
  %351 = fadd double %346, %350
  %352 = call double @sqrt(double %351) #8
  br label %353

; <label>:353                                     ; preds = %322, %317
  %u_dst3.0 = phi double [ %319, %317 ], [ %337, %322 ]
  %u_src2.0 = phi double [ %321, %317 ], [ %352, %322 ]
  %354 = fadd double %u_dst3.0, %u_src2.0
  %355 = fmul double %305, %354
  %356 = getelementptr inbounds double* %63, i64 %indvars.iv.next644
  %357 = load double* %356, align 8, !tbaa !11
  %358 = getelementptr inbounds double* %63, i64 %indvars.iv.next642
  %359 = load double* %358, align 8, !tbaa !11
  %360 = fadd double %357, %359
  %361 = fmul double %360, %360
  %362 = fdiv double %355, %361
  %363 = load i8**** %31, align 8, !tbaa !6
  %364 = getelementptr inbounds i8*** %363, i64 %indvars.iv645
  %365 = load i8*** %364, align 8, !tbaa !10
  %366 = load i8** %365, align 8, !tbaa !10
  %367 = fmul double %362, 2.000000e+00
  %368 = fmul double %367, %finf
  %369 = getelementptr inbounds i8* %366, i64 %indvars.iv.next644
  %370 = load i8* %369, align 1, !tbaa !17
  %371 = zext i8 %370 to i32
  %372 = sitofp i32 %371 to double
  %373 = fsub double 1.000000e+00, %362
  %374 = fmul double %373, %372
  %375 = fadd double %368, %374
  %376 = fadd double %362, 1.000000e+00
  %377 = fdiv double %375, %376
  %378 = fptoui double %377 to i8
  %379 = getelementptr inbounds i8* %366, i64 %indvars.iv.next642
  store i8 %378, i8* %379, align 1, !tbaa !17
  %380 = add nuw nsw i32 %i.0543, 1
  %381 = load i32** %102, align 8, !tbaa !15
  %382 = load i32* %381, align 4, !tbaa !2
  %383 = add nsw i32 %382, -1
  %384 = icmp slt i32 %380, %383
  br i1 %384, label %316, label %.loopexit

.loopexit:                                        ; preds = %353, %290, %286
  %385 = icmp ult i64 %198, 4294967296
  br i1 %385, label %477, label %386

; <label>:386                                     ; preds = %.loopexit
  %387 = load i32** %102, align 8, !tbaa !15
  %388 = load i32* %387, align 4, !tbaa !2
  %389 = add nsw i32 %388, -1
  %390 = getelementptr inbounds i32* %387, i64 1
  %391 = load i32* %390, align 4, !tbaa !2
  %392 = mul nsw i32 %391, %indvars.iv639
  %393 = add nsw i32 %392, %indvars.iv637
  %394 = mul nsw i32 %393, %388
  %395 = add nsw i32 %389, %394
  %396 = add nsw i32 %388, -2
  %397 = add nsw i32 %dy.0, %indvars.iv637
  %398 = mul nsw i32 %391, %180
  %399 = add nsw i32 %397, %398
  %400 = mul nsw i32 %399, %388
  %401 = add nsw i32 %396, %400
  %ispos303 = icmp sgt i32 %dy.0, -1
  %neg304 = sub nsw i32 0, %dy.0
  %402 = select i1 %ispos303, i32 %dy.0, i32 %neg304
  %403 = shl nsw i32 %402, 1
  %404 = or i32 %403, 1
  %405 = add nsw i32 %404, %182
  %406 = sext i32 %405 to i64
  %407 = getelementptr inbounds [8 x double]* %dist, i64 0, i64 %406
  %408 = load double* %407, align 8, !tbaa !11
  %409 = add nsw i32 %183, %402
  %410 = icmp eq i32 %409, 1
  %411 = sext i32 %395 to i64
  %412 = getelementptr inbounds double* %36, i64 %411
  %413 = load double* %412, align 8, !tbaa !11
  br i1 %410, label %414, label %420

; <label>:414                                     ; preds = %386
  %415 = call double @fabs(double %413) #8
  %416 = sext i32 %401 to i64
  %417 = getelementptr inbounds double* %36, i64 %416
  %418 = load double* %417, align 8, !tbaa !11
  %419 = call double @fabs(double %418) #8
  br label %449

; <label>:420                                     ; preds = %386
  %421 = fmul double %413, %413
  %422 = sitofp i32 %dy.0 to double
  %423 = getelementptr inbounds double* %43, i64 %411
  %424 = load double* %423, align 8, !tbaa !11
  %425 = fmul double %422, %424
  %426 = fmul double %425, %425
  %427 = fadd double %421, %426
  %428 = getelementptr inbounds double* %50, i64 %411
  %429 = load double* %428, align 8, !tbaa !11
  %430 = fmul double %184, %429
  %431 = fmul double %430, %430
  %432 = fadd double %427, %431
  %433 = call double @sqrt(double %432) #8
  %434 = sext i32 %401 to i64
  %435 = getelementptr inbounds double* %36, i64 %434
  %436 = load double* %435, align 8, !tbaa !11
  %437 = fmul double %436, %436
  %438 = getelementptr inbounds double* %43, i64 %434
  %439 = load double* %438, align 8, !tbaa !11
  %440 = fmul double %422, %439
  %441 = fmul double %440, %440
  %442 = fadd double %437, %441
  %443 = getelementptr inbounds double* %50, i64 %434
  %444 = load double* %443, align 8, !tbaa !11
  %445 = fmul double %184, %444
  %446 = fmul double %445, %445
  %447 = fadd double %442, %446
  %448 = call double @sqrt(double %447) #8
  br label %449

; <label>:449                                     ; preds = %420, %414
  %.pre-phi667 = phi i64 [ %434, %420 ], [ %416, %414 ]
  %u_dst7.0 = phi double [ %433, %420 ], [ %415, %414 ]
  %u_src6.0 = phi double [ %448, %420 ], [ %419, %414 ]
  %450 = fmul double %65, %408
  %451 = fadd double %u_dst7.0, %u_src6.0
  %452 = fmul double %450, %451
  %453 = getelementptr inbounds double* %63, i64 %.pre-phi667
  %454 = load double* %453, align 8, !tbaa !11
  %455 = getelementptr inbounds double* %63, i64 %411
  %456 = load double* %455, align 8, !tbaa !11
  %457 = fadd double %454, %456
  %458 = fmul double %457, %457
  %459 = fdiv double %452, %458
  %460 = load i8**** %31, align 8, !tbaa !6
  %461 = getelementptr inbounds i8*** %460, i64 %indvars.iv645
  %462 = load i8*** %461, align 8, !tbaa !10
  %463 = load i8** %462, align 8, !tbaa !10
  %464 = fmul double %459, 2.000000e+00
  %465 = fmul double %464, %finf
  %466 = getelementptr inbounds i8* %463, i64 %.pre-phi667
  %467 = load i8* %466, align 1, !tbaa !17
  %468 = zext i8 %467 to i32
  %469 = sitofp i32 %468 to double
  %470 = fsub double 1.000000e+00, %459
  %471 = fmul double %470, %469
  %472 = fadd double %465, %471
  %473 = fadd double %459, 1.000000e+00
  %474 = fdiv double %472, %473
  %475 = fptoui double %474 to i8
  %476 = getelementptr inbounds i8* %463, i64 %411
  store i8 %475, i8* %476, align 1, !tbaa !17
  br label %477

; <label>:477                                     ; preds = %.loopexit, %449
  %indvars.iv.next638 = add nuw nsw i32 %indvars.iv637, 1
  %478 = load i32** %102, align 8, !tbaa !15
  %479 = getelementptr inbounds i32* %478, i64 1
  %480 = load i32* %479, align 4, !tbaa !2
  %481 = icmp slt i32 %indvars.iv.next638, %480
  br i1 %481, label %185, label %..loopexit386_crit_edge

..loopexit386_crit_edge:                          ; preds = %477
  %.phi.trans.insert668.phi.trans.insert = getelementptr inbounds i32* %478, i64 2
  %.pre669.pre = load i32* %.phi.trans.insert668.phi.trans.insert, align 4, !tbaa !2
  br label %.loopexit386

.loopexit386:                                     ; preds = %167, %.lr.ph554, %176, %..loopexit386_crit_edge
  %482 = phi i32 [ %.pre669.pre, %..loopexit386_crit_edge ], [ %162, %176 ], [ %162, %.lr.ph554 ], [ %162, %167 ]
  %483 = phi i32* [ %478, %..loopexit386_crit_edge ], [ %163, %176 ], [ %163, %.lr.ph554 ], [ %163, %167 ]
  %indvars.iv.next640 = add nuw nsw i32 %indvars.iv639, 1
  %484 = icmp slt i32 %indvars.iv.next640, %482
  br i1 %484, label %.lr.ph554, label %.loopexit395

; <label>:485                                     ; preds = %._crit_edge
  br i1 %101, label %.preheader396, label %490

.preheader396:                                    ; preds = %485
  %486 = load i32** %102, align 8, !tbaa !15
  %487 = getelementptr inbounds i32* %486, i64 2
  %488 = load i32* %487, align 4, !tbaa !2
  %489 = icmp sgt i32 %488, 0
  br i1 %489, label %.lr.ph540, label %.loopexit395

; <label>:490                                     ; preds = %485
  %491 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 743, i8* getelementptr inbounds ([84 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str18, i64 0, i64 0), i32 %3) #6
  br label %.loopexit414

.lr.ph540:                                        ; preds = %.preheader396, %.loopexit387
  %492 = phi i32 [ %803, %.loopexit387 ], [ %488, %.preheader396 ]
  %indvars.iv631 = phi i32 [ %indvars.iv.next632, %.loopexit387 ], [ 0, %.preheader396 ]
  %493 = load i32* %103, align 16
  %494 = or i32 %indvars.iv631, %493
  %495 = icmp eq i32 %494, 0
  br i1 %495, label %.loopexit387, label %496

; <label>:496                                     ; preds = %.lr.ph540
  %497 = add nsw i32 %492, -1
  %498 = icmp eq i32 %indvars.iv631, %497
  %499 = load i32* %104, align 4
  %500 = icmp eq i32 %499, 0
  %or.cond699 = and i1 %498, %500
  br i1 %or.cond699, label %.loopexit387, label %501

; <label>:501                                     ; preds = %496
  %502 = load i32* %103, align 16
  %notlhs804 = icmp eq i32 %indvars.iv631, 0
  %notrhs805 = icmp ne i32 %502, 0
  %or.cond702.not = and i1 %notrhs805, %notlhs804
  %.not703 = xor i1 %498, true
  %brmerge704 = or i1 %or.cond702.not, %.not703
  %.mux705 = zext i1 %or.cond702.not to i32
  br i1 %brmerge704, label %505, label %503

; <label>:503                                     ; preds = %501
  %504 = load i32* %104, align 4, !tbaa !2
  %not.375 = icmp ne i32 %504, 0
  %.337 = sext i1 %not.375 to i32
  br label %505

; <label>:505                                     ; preds = %501, %503
  %dz14.0 = phi i32 [ %.337, %503 ], [ %.mux705, %501 ]
  %506 = getelementptr inbounds i32* %486, i64 1
  %507 = load i32* %506, align 4, !tbaa !2
  %508 = icmp sgt i32 %507, 0
  br i1 %508, label %.lr.ph536, label %.loopexit387

.lr.ph536:                                        ; preds = %505
  %509 = add i32 %dz14.0, %indvars.iv631
  %ispos291 = icmp sgt i32 %dz14.0, -1
  %neg292 = sub nsw i32 0, %dz14.0
  %510 = select i1 %ispos291, i32 %dz14.0, i32 %neg292
  %511 = shl nsw i32 %510, 2
  %512 = add nsw i32 %510, 1
  %513 = sitofp i32 %dz14.0 to double
  br label %514

; <label>:514                                     ; preds = %.lr.ph536, %800
  %515 = phi i32 [ %507, %.lr.ph536 ], [ %801, %800 ]
  %indvars.iv629 = phi i32 [ 0, %.lr.ph536 ], [ %indvars.iv.next630, %800 ]
  %516 = icmp ne i32 %indvars.iv629, 0
  %517 = load i32* %105, align 8
  %518 = icmp eq i32 %517, 0
  %or.cond707 = or i1 %516, %518
  br i1 %or.cond707, label %519, label %524

; <label>:519                                     ; preds = %514
  %520 = add nsw i32 %515, -1
  %521 = icmp eq i32 %indvars.iv629, %520
  br i1 %521, label %522, label %524

; <label>:522                                     ; preds = %519
  %523 = load i32* %106, align 4, !tbaa !2
  %not.374 = icmp ne i32 %523, 0
  %.338 = sext i1 %not.374 to i32
  br label %524

; <label>:524                                     ; preds = %514, %522, %519
  %dy13.0 = phi i32 [ 0, %519 ], [ %.338, %522 ], [ 1, %514 ]
  %525 = bitcast [6 x i32]* %doBC to i64*
  %526 = load i64* %525, align 16
  %527 = trunc i64 %526 to i32
  %528 = icmp eq i32 %527, 0
  br i1 %528, label %614, label %529

; <label>:529                                     ; preds = %524
  %530 = load i32* %486, align 4, !tbaa !2
  %531 = mul nsw i32 %515, %indvars.iv631
  %532 = add nsw i32 %531, %indvars.iv629
  %533 = mul nsw i32 %532, %530
  %534 = add nsw i32 %dy13.0, %indvars.iv629
  %535 = mul nsw i32 %515, %509
  %536 = add nsw i32 %534, %535
  %537 = mul nsw i32 %536, %530
  %538 = add nsw i32 %537, 1
  %ispos299 = icmp sgt i32 %dy13.0, -1
  %neg300 = sub nsw i32 0, %dy13.0
  %539 = select i1 %ispos299, i32 %dy13.0, i32 %neg300
  %540 = shl nsw i32 %539, 1
  %541 = or i32 %540, 1
  %542 = add nsw i32 %541, %511
  %543 = sext i32 %542 to i64
  %544 = getelementptr inbounds [8 x double]* %dist, i64 0, i64 %543
  %545 = load double* %544, align 8, !tbaa !11
  %546 = add nsw i32 %512, %539
  %547 = icmp eq i32 %546, 1
  %548 = sext i32 %533 to i64
  %549 = getelementptr inbounds double* %36, i64 %548
  %550 = load double* %549, align 8, !tbaa !11
  br i1 %547, label %551, label %557

; <label>:551                                     ; preds = %529
  %552 = call double @fabs(double %550) #8
  %553 = sext i32 %538 to i64
  %554 = getelementptr inbounds double* %36, i64 %553
  %555 = load double* %554, align 8, !tbaa !11
  %556 = call double @fabs(double %555) #8
  br label %586

; <label>:557                                     ; preds = %529
  %558 = fmul double %550, %550
  %559 = sitofp i32 %dy13.0 to double
  %560 = getelementptr inbounds double* %43, i64 %548
  %561 = load double* %560, align 8, !tbaa !11
  %562 = fmul double %559, %561
  %563 = fmul double %562, %562
  %564 = fadd double %558, %563
  %565 = getelementptr inbounds double* %50, i64 %548
  %566 = load double* %565, align 8, !tbaa !11
  %567 = fmul double %513, %566
  %568 = fmul double %567, %567
  %569 = fadd double %564, %568
  %570 = call double @sqrt(double %569) #8
  %571 = sext i32 %538 to i64
  %572 = getelementptr inbounds double* %36, i64 %571
  %573 = load double* %572, align 8, !tbaa !11
  %574 = fmul double %573, %573
  %575 = getelementptr inbounds double* %43, i64 %571
  %576 = load double* %575, align 8, !tbaa !11
  %577 = fmul double %559, %576
  %578 = fmul double %577, %577
  %579 = fadd double %574, %578
  %580 = getelementptr inbounds double* %50, i64 %571
  %581 = load double* %580, align 8, !tbaa !11
  %582 = fmul double %513, %581
  %583 = fmul double %582, %582
  %584 = fadd double %579, %583
  %585 = call double @sqrt(double %584) #8
  br label %586

; <label>:586                                     ; preds = %557, %551
  %.pre-phi662 = phi i64 [ %571, %557 ], [ %553, %551 ]
  %u_dst20.0 = phi double [ %570, %557 ], [ %552, %551 ]
  %u_src19.0 = phi double [ %585, %557 ], [ %556, %551 ]
  %587 = fmul double %65, %545
  %588 = fadd double %u_dst20.0, %u_src19.0
  %589 = fmul double %587, %588
  %590 = getelementptr inbounds double* %63, i64 %.pre-phi662
  %591 = load double* %590, align 8, !tbaa !11
  %592 = getelementptr inbounds double* %63, i64 %548
  %593 = load double* %592, align 8, !tbaa !11
  %594 = fadd double %591, %593
  %595 = fmul double %594, %594
  %596 = fdiv double %589, %595
  %597 = load i8**** %31, align 8, !tbaa !6
  %598 = getelementptr inbounds i8*** %597, i64 %indvars.iv645
  %599 = bitcast i8*** %598 to i32***
  %600 = load i32*** %599, align 8, !tbaa !10
  %601 = load i32** %600, align 8, !tbaa !10
  %602 = fmul double %596, 2.000000e+00
  %603 = fmul double %602, %finf
  %604 = getelementptr inbounds i32* %601, i64 %.pre-phi662
  %605 = load i32* %604, align 4, !tbaa !2
  %606 = sitofp i32 %605 to double
  %607 = fsub double 1.000000e+00, %596
  %608 = fmul double %607, %606
  %609 = fadd double %603, %608
  %610 = fadd double %596, 1.000000e+00
  %611 = fdiv double %609, %610
  %612 = fptosi double %611 to i32
  %613 = getelementptr inbounds i32* %601, i64 %548
  store i32 %612, i32* %613, align 4, !tbaa !2
  br label %614

; <label>:614                                     ; preds = %524, %586
  %615 = icmp ne i32 %dy13.0, 0
  %616 = or i32 %dy13.0, %dz14.0
  %617 = icmp eq i32 %616, 0
  br i1 %617, label %.loopexit378, label %618

; <label>:618                                     ; preds = %614
  %619 = load i32* %486, align 4, !tbaa !2
  %620 = load i32* %506, align 4, !tbaa !2
  %ispos293 = icmp sgt i32 %dy13.0, -1
  %neg294 = sub nsw i32 0, %dy13.0
  %621 = select i1 %ispos293, i32 %dy13.0, i32 %neg294
  %622 = add nsw i32 %619, -1
  %623 = icmp sgt i32 %622, 1
  br i1 %623, label %.lr.ph533, label %.loopexit378

.lr.ph533:                                        ; preds = %618
  %624 = shl nsw i32 %621, 1
  %625 = add nsw i32 %624, %511
  %626 = sext i32 %625 to i64
  %627 = getelementptr inbounds [8 x double]* %dist, i64 0, i64 %626
  %628 = load double* %627, align 16, !tbaa !11
  %629 = add nsw i32 %621, %510
  %630 = icmp eq i32 %629, 1
  %.339 = select i1 %615, double* %43, double* %50
  %631 = fmul double %65, %628
  %632 = sitofp i32 %dy13.0 to double
  %633 = mul i32 %indvars.iv631, %620
  %634 = add i32 %indvars.iv629, %633
  %635 = mul i32 %619, %634
  %636 = sext i32 %635 to i64
  %637 = add i32 %dy13.0, %indvars.iv629
  %638 = mul i32 %509, %620
  %639 = add i32 %637, %638
  %640 = mul i32 %619, %639
  %641 = sext i32 %640 to i64
  br label %642

; <label>:642                                     ; preds = %.lr.ph533, %679
  %indvars.iv635 = phi i64 [ %641, %.lr.ph533 ], [ %indvars.iv.next636, %679 ]
  %indvars.iv633 = phi i64 [ %636, %.lr.ph533 ], [ %indvars.iv.next634, %679 ]
  %i9.0529 = phi i32 [ 1, %.lr.ph533 ], [ %706, %679 ]
  %indvars.iv.next636 = add i64 %indvars.iv635, 1
  %indvars.iv.next634 = add i64 %indvars.iv633, 1
  br i1 %630, label %643, label %648

; <label>:643                                     ; preds = %642
  %.in297 = getelementptr inbounds double* %.339, i64 %indvars.iv.next634
  %644 = load double* %.in297, align 8
  %645 = call double @fabs(double %644) #8
  %.in298 = getelementptr inbounds double* %.339, i64 %indvars.iv.next636
  %646 = load double* %.in298, align 8
  %647 = call double @fabs(double %646) #8
  br label %679

; <label>:648                                     ; preds = %642
  %649 = getelementptr inbounds double* %36, i64 %indvars.iv.next634
  %650 = load double* %649, align 8, !tbaa !11
  %651 = fmul double %650, 0.000000e+00
  %652 = fmul double %651, %651
  %653 = getelementptr inbounds double* %43, i64 %indvars.iv.next634
  %654 = load double* %653, align 8, !tbaa !11
  %655 = fmul double %632, %654
  %656 = fmul double %655, %655
  %657 = fadd double %652, %656
  %658 = getelementptr inbounds double* %50, i64 %indvars.iv.next634
  %659 = load double* %658, align 8, !tbaa !11
  %660 = fmul double %513, %659
  %661 = fmul double %660, %660
  %662 = fadd double %657, %661
  %663 = call double @sqrt(double %662) #8
  %664 = getelementptr inbounds double* %36, i64 %indvars.iv.next636
  %665 = load double* %664, align 8, !tbaa !11
  %666 = fmul double %665, 0.000000e+00
  %667 = fmul double %666, %666
  %668 = getelementptr inbounds double* %43, i64 %indvars.iv.next636
  %669 = load double* %668, align 8, !tbaa !11
  %670 = fmul double %632, %669
  %671 = fmul double %670, %670
  %672 = fadd double %667, %671
  %673 = getelementptr inbounds double* %50, i64 %indvars.iv.next636
  %674 = load double* %673, align 8, !tbaa !11
  %675 = fmul double %513, %674
  %676 = fmul double %675, %675
  %677 = fadd double %672, %676
  %678 = call double @sqrt(double %677) #8
  br label %679

; <label>:679                                     ; preds = %648, %643
  %u_dst24.0 = phi double [ %645, %643 ], [ %663, %648 ]
  %u_src23.0 = phi double [ %647, %643 ], [ %678, %648 ]
  %680 = fadd double %u_dst24.0, %u_src23.0
  %681 = fmul double %631, %680
  %682 = getelementptr inbounds double* %63, i64 %indvars.iv.next636
  %683 = load double* %682, align 8, !tbaa !11
  %684 = getelementptr inbounds double* %63, i64 %indvars.iv.next634
  %685 = load double* %684, align 8, !tbaa !11
  %686 = fadd double %683, %685
  %687 = fmul double %686, %686
  %688 = fdiv double %681, %687
  %689 = load i8**** %31, align 8, !tbaa !6
  %690 = getelementptr inbounds i8*** %689, i64 %indvars.iv645
  %691 = bitcast i8*** %690 to i32***
  %692 = load i32*** %691, align 8, !tbaa !10
  %693 = load i32** %692, align 8, !tbaa !10
  %694 = fmul double %688, 2.000000e+00
  %695 = fmul double %694, %finf
  %696 = getelementptr inbounds i32* %693, i64 %indvars.iv.next636
  %697 = load i32* %696, align 4, !tbaa !2
  %698 = sitofp i32 %697 to double
  %699 = fsub double 1.000000e+00, %688
  %700 = fmul double %699, %698
  %701 = fadd double %695, %700
  %702 = fadd double %688, 1.000000e+00
  %703 = fdiv double %701, %702
  %704 = fptosi double %703 to i32
  %705 = getelementptr inbounds i32* %693, i64 %indvars.iv.next634
  store i32 %704, i32* %705, align 4, !tbaa !2
  %706 = add nuw nsw i32 %i9.0529, 1
  %707 = load i32* %486, align 4, !tbaa !2
  %708 = add nsw i32 %707, -1
  %709 = icmp slt i32 %706, %708
  br i1 %709, label %642, label %.loopexit378

.loopexit378:                                     ; preds = %679, %618, %614
  %710 = icmp ult i64 %526, 4294967296
  br i1 %710, label %800, label %711

; <label>:711                                     ; preds = %.loopexit378
  %712 = load i32* %486, align 4, !tbaa !2
  %713 = add nsw i32 %712, -1
  %714 = load i32* %506, align 4, !tbaa !2
  %715 = mul nsw i32 %714, %indvars.iv631
  %716 = add nsw i32 %715, %indvars.iv629
  %717 = mul nsw i32 %716, %712
  %718 = add nsw i32 %713, %717
  %719 = add nsw i32 %712, -2
  %720 = add nsw i32 %dy13.0, %indvars.iv629
  %721 = mul nsw i32 %714, %509
  %722 = add nsw i32 %720, %721
  %723 = mul nsw i32 %722, %712
  %724 = add nsw i32 %719, %723
  %ispos289 = icmp sgt i32 %dy13.0, -1
  %neg290 = sub nsw i32 0, %dy13.0
  %725 = select i1 %ispos289, i32 %dy13.0, i32 %neg290
  %726 = shl nsw i32 %725, 1
  %727 = or i32 %726, 1
  %728 = add nsw i32 %727, %511
  %729 = sext i32 %728 to i64
  %730 = getelementptr inbounds [8 x double]* %dist, i64 0, i64 %729
  %731 = load double* %730, align 8, !tbaa !11
  %732 = add nsw i32 %512, %725
  %733 = icmp eq i32 %732, 1
  %734 = sext i32 %718 to i64
  %735 = getelementptr inbounds double* %36, i64 %734
  %736 = load double* %735, align 8, !tbaa !11
  br i1 %733, label %737, label %743

; <label>:737                                     ; preds = %711
  %738 = call double @fabs(double %736) #8
  %739 = sext i32 %724 to i64
  %740 = getelementptr inbounds double* %36, i64 %739
  %741 = load double* %740, align 8, !tbaa !11
  %742 = call double @fabs(double %741) #8
  br label %772

; <label>:743                                     ; preds = %711
  %744 = fmul double %736, %736
  %745 = sitofp i32 %dy13.0 to double
  %746 = getelementptr inbounds double* %43, i64 %734
  %747 = load double* %746, align 8, !tbaa !11
  %748 = fmul double %745, %747
  %749 = fmul double %748, %748
  %750 = fadd double %744, %749
  %751 = getelementptr inbounds double* %50, i64 %734
  %752 = load double* %751, align 8, !tbaa !11
  %753 = fmul double %513, %752
  %754 = fmul double %753, %753
  %755 = fadd double %750, %754
  %756 = call double @sqrt(double %755) #8
  %757 = sext i32 %724 to i64
  %758 = getelementptr inbounds double* %36, i64 %757
  %759 = load double* %758, align 8, !tbaa !11
  %760 = fmul double %759, %759
  %761 = getelementptr inbounds double* %43, i64 %757
  %762 = load double* %761, align 8, !tbaa !11
  %763 = fmul double %745, %762
  %764 = fmul double %763, %763
  %765 = fadd double %760, %764
  %766 = getelementptr inbounds double* %50, i64 %757
  %767 = load double* %766, align 8, !tbaa !11
  %768 = fmul double %513, %767
  %769 = fmul double %768, %768
  %770 = fadd double %765, %769
  %771 = call double @sqrt(double %770) #8
  br label %772

; <label>:772                                     ; preds = %743, %737
  %.pre-phi663 = phi i64 [ %757, %743 ], [ %739, %737 ]
  %u_dst28.0 = phi double [ %756, %743 ], [ %738, %737 ]
  %u_src27.0 = phi double [ %771, %743 ], [ %742, %737 ]
  %773 = fmul double %65, %731
  %774 = fadd double %u_dst28.0, %u_src27.0
  %775 = fmul double %773, %774
  %776 = getelementptr inbounds double* %63, i64 %.pre-phi663
  %777 = load double* %776, align 8, !tbaa !11
  %778 = getelementptr inbounds double* %63, i64 %734
  %779 = load double* %778, align 8, !tbaa !11
  %780 = fadd double %777, %779
  %781 = fmul double %780, %780
  %782 = fdiv double %775, %781
  %783 = load i8**** %31, align 8, !tbaa !6
  %784 = getelementptr inbounds i8*** %783, i64 %indvars.iv645
  %785 = bitcast i8*** %784 to i32***
  %786 = load i32*** %785, align 8, !tbaa !10
  %787 = load i32** %786, align 8, !tbaa !10
  %788 = fmul double %782, 2.000000e+00
  %789 = fmul double %788, %finf
  %790 = getelementptr inbounds i32* %787, i64 %.pre-phi663
  %791 = load i32* %790, align 4, !tbaa !2
  %792 = sitofp i32 %791 to double
  %793 = fsub double 1.000000e+00, %782
  %794 = fmul double %793, %792
  %795 = fadd double %789, %794
  %796 = fadd double %782, 1.000000e+00
  %797 = fdiv double %795, %796
  %798 = fptosi double %797 to i32
  %799 = getelementptr inbounds i32* %787, i64 %734
  store i32 %798, i32* %799, align 4, !tbaa !2
  br label %800

; <label>:800                                     ; preds = %.loopexit378, %772
  %indvars.iv.next630 = add nuw nsw i32 %indvars.iv629, 1
  %801 = load i32* %506, align 4, !tbaa !2
  %802 = icmp slt i32 %indvars.iv.next630, %801
  br i1 %802, label %514, label %..loopexit387_crit_edge

..loopexit387_crit_edge:                          ; preds = %800
  %.pre665.pre = load i32* %487, align 4, !tbaa !2
  br label %.loopexit387

.loopexit387:                                     ; preds = %496, %.lr.ph540, %505, %..loopexit387_crit_edge
  %803 = phi i32 [ %.pre665.pre, %..loopexit387_crit_edge ], [ %492, %505 ], [ %492, %.lr.ph540 ], [ %492, %496 ]
  %indvars.iv.next632 = add nuw nsw i32 %indvars.iv631, 1
  %804 = icmp slt i32 %indvars.iv.next632, %803
  br i1 %804, label %.lr.ph540, label %.loopexit395

; <label>:805                                     ; preds = %._crit_edge
  br i1 %101, label %.preheader398, label %810

.preheader398:                                    ; preds = %805
  %806 = load i32** %102, align 8, !tbaa !15
  %807 = getelementptr inbounds i32* %806, i64 2
  %808 = load i32* %807, align 4, !tbaa !2
  %809 = icmp sgt i32 %808, 0
  br i1 %809, label %.lr.ph526, label %.loopexit395

; <label>:810                                     ; preds = %805
  %811 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 746, i8* getelementptr inbounds ([84 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str18, i64 0, i64 0), i32 %3) #6
  br label %.loopexit414

.lr.ph526:                                        ; preds = %.preheader398, %.loopexit388
  %indvars.iv623 = phi i32 [ %indvars.iv.next624, %.loopexit388 ], [ 0, %.preheader398 ]
  %812 = load i32* %103, align 16
  %813 = or i32 %indvars.iv623, %812
  %814 = icmp eq i32 %813, 0
  br i1 %814, label %.loopexit388, label %815

; <label>:815                                     ; preds = %.lr.ph526
  %816 = add nsw i32 %808, -1
  %817 = icmp eq i32 %indvars.iv623, %816
  %818 = load i32* %104, align 4
  %819 = icmp eq i32 %818, 0
  %or.cond711 = and i1 %817, %819
  br i1 %or.cond711, label %.loopexit388, label %820

; <label>:820                                     ; preds = %815
  %821 = load i32* %103, align 16
  %notlhs802 = icmp eq i32 %indvars.iv623, 0
  %notrhs803 = icmp ne i32 %821, 0
  %or.cond714.not = and i1 %notrhs803, %notlhs802
  %.not715 = xor i1 %817, true
  %brmerge716 = or i1 %or.cond714.not, %.not715
  %.mux717 = zext i1 %or.cond714.not to i32
  br i1 %brmerge716, label %824, label %822

; <label>:822                                     ; preds = %820
  %823 = load i32* %104, align 4, !tbaa !2
  %not.373 = icmp ne i32 %823, 0
  %.340 = sext i1 %not.373 to i32
  br label %824

; <label>:824                                     ; preds = %820, %822
  %dz35.0 = phi i32 [ %.340, %822 ], [ %.mux717, %820 ]
  %825 = getelementptr inbounds i32* %806, i64 1
  %826 = load i32* %825, align 4, !tbaa !2
  %827 = icmp sgt i32 %826, 0
  br i1 %827, label %.lr.ph522, label %.loopexit388

.lr.ph522:                                        ; preds = %824
  %828 = add i32 %dz35.0, %indvars.iv623
  %ispos277 = icmp sgt i32 %dz35.0, -1
  %neg278 = sub nsw i32 0, %dz35.0
  %829 = select i1 %ispos277, i32 %dz35.0, i32 %neg278
  %830 = shl nsw i32 %829, 2
  %831 = add nsw i32 %829, 1
  %832 = sitofp i32 %dz35.0 to double
  br label %833

; <label>:833                                     ; preds = %.lr.ph522, %1108
  %indvars.iv621 = phi i32 [ 0, %.lr.ph522 ], [ %indvars.iv.next622, %1108 ]
  %834 = icmp ne i32 %indvars.iv621, 0
  %835 = load i32* %105, align 8
  %836 = icmp eq i32 %835, 0
  %or.cond719 = or i1 %834, %836
  br i1 %or.cond719, label %837, label %842

; <label>:837                                     ; preds = %833
  %838 = add nsw i32 %826, -1
  %839 = icmp eq i32 %indvars.iv621, %838
  br i1 %839, label %840, label %842

; <label>:840                                     ; preds = %837
  %841 = load i32* %106, align 4, !tbaa !2
  %not.372 = icmp ne i32 %841, 0
  %.341 = sext i1 %not.372 to i32
  br label %842

; <label>:842                                     ; preds = %833, %840, %837
  %dy34.0 = phi i32 [ 0, %837 ], [ %.341, %840 ], [ 1, %833 ]
  %843 = bitcast [6 x i32]* %doBC to i64*
  %844 = load i64* %843, align 16
  %845 = trunc i64 %844 to i32
  %846 = icmp eq i32 %845, 0
  br i1 %846, label %930, label %847

; <label>:847                                     ; preds = %842
  %848 = load i32* %806, align 4, !tbaa !2
  %849 = mul nsw i32 %826, %indvars.iv623
  %850 = add nsw i32 %849, %indvars.iv621
  %851 = mul nsw i32 %850, %848
  %852 = add nsw i32 %dy34.0, %indvars.iv621
  %853 = mul nsw i32 %826, %828
  %854 = add nsw i32 %852, %853
  %855 = mul nsw i32 %854, %848
  %856 = add nsw i32 %855, 1
  %ispos285 = icmp sgt i32 %dy34.0, -1
  %neg286 = sub nsw i32 0, %dy34.0
  %857 = select i1 %ispos285, i32 %dy34.0, i32 %neg286
  %858 = shl nsw i32 %857, 1
  %859 = or i32 %858, 1
  %860 = add nsw i32 %859, %830
  %861 = sext i32 %860 to i64
  %862 = getelementptr inbounds [8 x double]* %dist, i64 0, i64 %861
  %863 = load double* %862, align 8, !tbaa !11
  %864 = add nsw i32 %831, %857
  %865 = icmp eq i32 %864, 1
  %866 = sext i32 %851 to i64
  %867 = getelementptr inbounds double* %36, i64 %866
  %868 = load double* %867, align 8, !tbaa !11
  br i1 %865, label %869, label %875

; <label>:869                                     ; preds = %847
  %870 = call double @fabs(double %868) #8
  %871 = sext i32 %856 to i64
  %872 = getelementptr inbounds double* %36, i64 %871
  %873 = load double* %872, align 8, !tbaa !11
  %874 = call double @fabs(double %873) #8
  br label %904

; <label>:875                                     ; preds = %847
  %876 = fmul double %868, %868
  %877 = sitofp i32 %dy34.0 to double
  %878 = getelementptr inbounds double* %43, i64 %866
  %879 = load double* %878, align 8, !tbaa !11
  %880 = fmul double %877, %879
  %881 = fmul double %880, %880
  %882 = fadd double %876, %881
  %883 = getelementptr inbounds double* %50, i64 %866
  %884 = load double* %883, align 8, !tbaa !11
  %885 = fmul double %832, %884
  %886 = fmul double %885, %885
  %887 = fadd double %882, %886
  %888 = call double @sqrt(double %887) #8
  %889 = sext i32 %856 to i64
  %890 = getelementptr inbounds double* %36, i64 %889
  %891 = load double* %890, align 8, !tbaa !11
  %892 = fmul double %891, %891
  %893 = getelementptr inbounds double* %43, i64 %889
  %894 = load double* %893, align 8, !tbaa !11
  %895 = fmul double %877, %894
  %896 = fmul double %895, %895
  %897 = fadd double %892, %896
  %898 = getelementptr inbounds double* %50, i64 %889
  %899 = load double* %898, align 8, !tbaa !11
  %900 = fmul double %832, %899
  %901 = fmul double %900, %900
  %902 = fadd double %897, %901
  %903 = call double @sqrt(double %902) #8
  br label %904

; <label>:904                                     ; preds = %875, %869
  %.pre-phi660 = phi i64 [ %889, %875 ], [ %871, %869 ]
  %u_src40.0 = phi double [ %903, %875 ], [ %874, %869 ]
  %u_dst41.0 = phi double [ %888, %875 ], [ %870, %869 ]
  %905 = fmul double %65, %863
  %906 = fadd double %u_src40.0, %u_dst41.0
  %907 = fmul double %905, %906
  %908 = getelementptr inbounds double* %63, i64 %.pre-phi660
  %909 = load double* %908, align 8, !tbaa !11
  %910 = getelementptr inbounds double* %63, i64 %866
  %911 = load double* %910, align 8, !tbaa !11
  %912 = fadd double %909, %911
  %913 = fmul double %912, %912
  %914 = fdiv double %907, %913
  %915 = load i8**** %31, align 8, !tbaa !6
  %916 = getelementptr inbounds i8*** %915, i64 %indvars.iv645
  %917 = bitcast i8*** %916 to double***
  %918 = load double*** %917, align 8, !tbaa !10
  %919 = load double** %918, align 8, !tbaa !10
  %920 = fmul double %914, 2.000000e+00
  %921 = fmul double %920, %finf
  %922 = getelementptr inbounds double* %919, i64 %.pre-phi660
  %923 = load double* %922, align 8, !tbaa !11
  %924 = fsub double 1.000000e+00, %914
  %925 = fmul double %924, %923
  %926 = fadd double %921, %925
  %927 = fadd double %914, 1.000000e+00
  %928 = fdiv double %926, %927
  %929 = getelementptr inbounds double* %919, i64 %866
  store double %928, double* %929, align 8, !tbaa !11
  br label %930

; <label>:930                                     ; preds = %842, %904
  %931 = icmp ne i32 %dy34.0, 0
  %932 = or i32 %dy34.0, %dz35.0
  %933 = icmp eq i32 %932, 0
  br i1 %933, label %.loopexit379, label %934

; <label>:934                                     ; preds = %930
  %935 = load i32* %806, align 4, !tbaa !2
  %ispos279 = icmp sgt i32 %dy34.0, -1
  %neg280 = sub nsw i32 0, %dy34.0
  %936 = select i1 %ispos279, i32 %dy34.0, i32 %neg280
  %937 = add nsw i32 %935, -1
  %938 = icmp sgt i32 %937, 1
  br i1 %938, label %.lr.ph519, label %.loopexit379

.lr.ph519:                                        ; preds = %934
  %939 = shl nsw i32 %936, 1
  %940 = add nsw i32 %939, %830
  %941 = sext i32 %940 to i64
  %942 = getelementptr inbounds [8 x double]* %dist, i64 0, i64 %941
  %943 = load double* %942, align 16, !tbaa !11
  %944 = add nsw i32 %936, %829
  %945 = icmp eq i32 %944, 1
  %.342 = select i1 %931, double* %43, double* %50
  %946 = fmul double %65, %943
  %947 = sitofp i32 %dy34.0 to double
  %948 = mul i32 %indvars.iv623, %826
  %949 = add i32 %indvars.iv621, %948
  %950 = mul i32 %935, %949
  %951 = sext i32 %950 to i64
  %952 = add i32 %dy34.0, %indvars.iv621
  %953 = mul i32 %828, %826
  %954 = add i32 %952, %953
  %955 = mul i32 %935, %954
  %956 = sext i32 %955 to i64
  br label %957

; <label>:957                                     ; preds = %.lr.ph519, %994
  %indvars.iv627 = phi i64 [ %956, %.lr.ph519 ], [ %indvars.iv.next628, %994 ]
  %indvars.iv625 = phi i64 [ %951, %.lr.ph519 ], [ %indvars.iv.next626, %994 ]
  %i30.0515 = phi i32 [ 1, %.lr.ph519 ], [ %1019, %994 ]
  %indvars.iv.next628 = add i64 %indvars.iv627, 1
  %indvars.iv.next626 = add i64 %indvars.iv625, 1
  br i1 %945, label %958, label %963

; <label>:958                                     ; preds = %957
  %.in283 = getelementptr inbounds double* %.342, i64 %indvars.iv.next626
  %959 = load double* %.in283, align 8
  %960 = call double @fabs(double %959) #8
  %.in284 = getelementptr inbounds double* %.342, i64 %indvars.iv.next628
  %961 = load double* %.in284, align 8
  %962 = call double @fabs(double %961) #8
  br label %994

; <label>:963                                     ; preds = %957
  %964 = getelementptr inbounds double* %36, i64 %indvars.iv.next626
  %965 = load double* %964, align 8, !tbaa !11
  %966 = fmul double %965, 0.000000e+00
  %967 = fmul double %966, %966
  %968 = getelementptr inbounds double* %43, i64 %indvars.iv.next626
  %969 = load double* %968, align 8, !tbaa !11
  %970 = fmul double %947, %969
  %971 = fmul double %970, %970
  %972 = fadd double %967, %971
  %973 = getelementptr inbounds double* %50, i64 %indvars.iv.next626
  %974 = load double* %973, align 8, !tbaa !11
  %975 = fmul double %832, %974
  %976 = fmul double %975, %975
  %977 = fadd double %972, %976
  %978 = call double @sqrt(double %977) #8
  %979 = getelementptr inbounds double* %36, i64 %indvars.iv.next628
  %980 = load double* %979, align 8, !tbaa !11
  %981 = fmul double %980, 0.000000e+00
  %982 = fmul double %981, %981
  %983 = getelementptr inbounds double* %43, i64 %indvars.iv.next628
  %984 = load double* %983, align 8, !tbaa !11
  %985 = fmul double %947, %984
  %986 = fmul double %985, %985
  %987 = fadd double %982, %986
  %988 = getelementptr inbounds double* %50, i64 %indvars.iv.next628
  %989 = load double* %988, align 8, !tbaa !11
  %990 = fmul double %832, %989
  %991 = fmul double %990, %990
  %992 = fadd double %987, %991
  %993 = call double @sqrt(double %992) #8
  br label %994

; <label>:994                                     ; preds = %963, %958
  %u_src44.0 = phi double [ %962, %958 ], [ %993, %963 ]
  %u_dst45.0 = phi double [ %960, %958 ], [ %978, %963 ]
  %995 = fadd double %u_src44.0, %u_dst45.0
  %996 = fmul double %946, %995
  %997 = getelementptr inbounds double* %63, i64 %indvars.iv.next628
  %998 = load double* %997, align 8, !tbaa !11
  %999 = getelementptr inbounds double* %63, i64 %indvars.iv.next626
  %1000 = load double* %999, align 8, !tbaa !11
  %1001 = fadd double %998, %1000
  %1002 = fmul double %1001, %1001
  %1003 = fdiv double %996, %1002
  %1004 = load i8**** %31, align 8, !tbaa !6
  %1005 = getelementptr inbounds i8*** %1004, i64 %indvars.iv645
  %1006 = bitcast i8*** %1005 to double***
  %1007 = load double*** %1006, align 8, !tbaa !10
  %1008 = load double** %1007, align 8, !tbaa !10
  %1009 = fmul double %1003, 2.000000e+00
  %1010 = fmul double %1009, %finf
  %1011 = getelementptr inbounds double* %1008, i64 %indvars.iv.next628
  %1012 = load double* %1011, align 8, !tbaa !11
  %1013 = fsub double 1.000000e+00, %1003
  %1014 = fmul double %1013, %1012
  %1015 = fadd double %1010, %1014
  %1016 = fadd double %1003, 1.000000e+00
  %1017 = fdiv double %1015, %1016
  %1018 = getelementptr inbounds double* %1008, i64 %indvars.iv.next626
  store double %1017, double* %1018, align 8, !tbaa !11
  %1019 = add nuw nsw i32 %i30.0515, 1
  %1020 = icmp slt i32 %1019, %937
  br i1 %1020, label %957, label %.loopexit379

.loopexit379:                                     ; preds = %994, %934, %930
  %1021 = icmp ult i64 %844, 4294967296
  br i1 %1021, label %1108, label %1022

; <label>:1022                                    ; preds = %.loopexit379
  %1023 = load i32* %806, align 4, !tbaa !2
  %1024 = add nsw i32 %1023, -1
  %1025 = mul nsw i32 %826, %indvars.iv623
  %1026 = add nsw i32 %1025, %indvars.iv621
  %1027 = mul nsw i32 %1026, %1023
  %1028 = add nsw i32 %1024, %1027
  %1029 = add nsw i32 %1023, -2
  %1030 = add nsw i32 %dy34.0, %indvars.iv621
  %1031 = mul nsw i32 %826, %828
  %1032 = add nsw i32 %1030, %1031
  %1033 = mul nsw i32 %1032, %1023
  %1034 = add nsw i32 %1029, %1033
  %ispos275 = icmp sgt i32 %dy34.0, -1
  %neg276 = sub nsw i32 0, %dy34.0
  %1035 = select i1 %ispos275, i32 %dy34.0, i32 %neg276
  %1036 = shl nsw i32 %1035, 1
  %1037 = or i32 %1036, 1
  %1038 = add nsw i32 %1037, %830
  %1039 = sext i32 %1038 to i64
  %1040 = getelementptr inbounds [8 x double]* %dist, i64 0, i64 %1039
  %1041 = load double* %1040, align 8, !tbaa !11
  %1042 = add nsw i32 %831, %1035
  %1043 = icmp eq i32 %1042, 1
  %1044 = sext i32 %1028 to i64
  %1045 = getelementptr inbounds double* %36, i64 %1044
  %1046 = load double* %1045, align 8, !tbaa !11
  br i1 %1043, label %1047, label %1053

; <label>:1047                                    ; preds = %1022
  %1048 = call double @fabs(double %1046) #8
  %1049 = sext i32 %1034 to i64
  %1050 = getelementptr inbounds double* %36, i64 %1049
  %1051 = load double* %1050, align 8, !tbaa !11
  %1052 = call double @fabs(double %1051) #8
  br label %1082

; <label>:1053                                    ; preds = %1022
  %1054 = fmul double %1046, %1046
  %1055 = sitofp i32 %dy34.0 to double
  %1056 = getelementptr inbounds double* %43, i64 %1044
  %1057 = load double* %1056, align 8, !tbaa !11
  %1058 = fmul double %1055, %1057
  %1059 = fmul double %1058, %1058
  %1060 = fadd double %1054, %1059
  %1061 = getelementptr inbounds double* %50, i64 %1044
  %1062 = load double* %1061, align 8, !tbaa !11
  %1063 = fmul double %832, %1062
  %1064 = fmul double %1063, %1063
  %1065 = fadd double %1060, %1064
  %1066 = call double @sqrt(double %1065) #8
  %1067 = sext i32 %1034 to i64
  %1068 = getelementptr inbounds double* %36, i64 %1067
  %1069 = load double* %1068, align 8, !tbaa !11
  %1070 = fmul double %1069, %1069
  %1071 = getelementptr inbounds double* %43, i64 %1067
  %1072 = load double* %1071, align 8, !tbaa !11
  %1073 = fmul double %1055, %1072
  %1074 = fmul double %1073, %1073
  %1075 = fadd double %1070, %1074
  %1076 = getelementptr inbounds double* %50, i64 %1067
  %1077 = load double* %1076, align 8, !tbaa !11
  %1078 = fmul double %832, %1077
  %1079 = fmul double %1078, %1078
  %1080 = fadd double %1075, %1079
  %1081 = call double @sqrt(double %1080) #8
  br label %1082

; <label>:1082                                    ; preds = %1053, %1047
  %.pre-phi661 = phi i64 [ %1067, %1053 ], [ %1049, %1047 ]
  %u_src48.0 = phi double [ %1081, %1053 ], [ %1052, %1047 ]
  %u_dst49.0 = phi double [ %1066, %1053 ], [ %1048, %1047 ]
  %1083 = fmul double %65, %1041
  %1084 = fadd double %u_src48.0, %u_dst49.0
  %1085 = fmul double %1083, %1084
  %1086 = getelementptr inbounds double* %63, i64 %.pre-phi661
  %1087 = load double* %1086, align 8, !tbaa !11
  %1088 = getelementptr inbounds double* %63, i64 %1044
  %1089 = load double* %1088, align 8, !tbaa !11
  %1090 = fadd double %1087, %1089
  %1091 = fmul double %1090, %1090
  %1092 = fdiv double %1085, %1091
  %1093 = load i8**** %31, align 8, !tbaa !6
  %1094 = getelementptr inbounds i8*** %1093, i64 %indvars.iv645
  %1095 = bitcast i8*** %1094 to double***
  %1096 = load double*** %1095, align 8, !tbaa !10
  %1097 = load double** %1096, align 8, !tbaa !10
  %1098 = fmul double %1092, 2.000000e+00
  %1099 = fmul double %1098, %finf
  %1100 = getelementptr inbounds double* %1097, i64 %.pre-phi661
  %1101 = load double* %1100, align 8, !tbaa !11
  %1102 = fsub double 1.000000e+00, %1092
  %1103 = fmul double %1102, %1101
  %1104 = fadd double %1099, %1103
  %1105 = fadd double %1092, 1.000000e+00
  %1106 = fdiv double %1104, %1105
  %1107 = getelementptr inbounds double* %1097, i64 %1044
  store double %1106, double* %1107, align 8, !tbaa !11
  br label %1108

; <label>:1108                                    ; preds = %.loopexit379, %1082
  %indvars.iv.next622 = add nuw nsw i32 %indvars.iv621, 1
  %1109 = icmp slt i32 %indvars.iv.next622, %826
  br i1 %1109, label %833, label %.loopexit388

.loopexit388:                                     ; preds = %1108, %815, %.lr.ph526, %824
  %indvars.iv.next624 = add nuw nsw i32 %indvars.iv623, 1
  %1110 = icmp slt i32 %indvars.iv.next624, %808
  br i1 %1110, label %.lr.ph526, label %.loopexit395

; <label>:1111                                    ; preds = %._crit_edge
  br i1 %101, label %.preheader400, label %1116

.preheader400:                                    ; preds = %1111
  %1112 = load i32** %102, align 8, !tbaa !15
  %1113 = getelementptr inbounds i32* %1112, i64 2
  %1114 = load i32* %1113, align 4, !tbaa !2
  %1115 = icmp sgt i32 %1114, 0
  br i1 %1115, label %.lr.ph512, label %.loopexit395

; <label>:1116                                    ; preds = %1111
  %1117 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 750, i8* getelementptr inbounds ([84 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str18, i64 0, i64 0), i32 %3) #6
  br label %.loopexit414

.lr.ph512:                                        ; preds = %.preheader400, %.loopexit389
  %indvars.iv615 = phi i32 [ %indvars.iv.next616, %.loopexit389 ], [ 0, %.preheader400 ]
  %1118 = load i32* %103, align 16
  %1119 = or i32 %indvars.iv615, %1118
  %1120 = icmp eq i32 %1119, 0
  br i1 %1120, label %.loopexit389, label %1121

; <label>:1121                                    ; preds = %.lr.ph512
  %1122 = add nsw i32 %1114, -1
  %1123 = icmp eq i32 %indvars.iv615, %1122
  %1124 = load i32* %104, align 4
  %1125 = icmp eq i32 %1124, 0
  %or.cond723 = and i1 %1123, %1125
  br i1 %or.cond723, label %.loopexit389, label %1126

; <label>:1126                                    ; preds = %1121
  %1127 = load i32* %103, align 16
  %notlhs800 = icmp eq i32 %indvars.iv615, 0
  %notrhs801 = icmp ne i32 %1127, 0
  %or.cond726.not = and i1 %notrhs801, %notlhs800
  %.not727 = xor i1 %1123, true
  %brmerge728 = or i1 %or.cond726.not, %.not727
  %.mux729 = zext i1 %or.cond726.not to i32
  br i1 %brmerge728, label %1130, label %1128

; <label>:1128                                    ; preds = %1126
  %1129 = load i32* %104, align 4, !tbaa !2
  %not.371 = icmp ne i32 %1129, 0
  %.343 = sext i1 %not.371 to i32
  br label %1130

; <label>:1130                                    ; preds = %1126, %1128
  %dz56.0 = phi i32 [ %.343, %1128 ], [ %.mux729, %1126 ]
  %1131 = getelementptr inbounds i32* %1112, i64 1
  %1132 = load i32* %1131, align 4, !tbaa !2
  %1133 = icmp sgt i32 %1132, 0
  br i1 %1133, label %.lr.ph508, label %.loopexit389

.lr.ph508:                                        ; preds = %1130
  %1134 = add i32 %dz56.0, %indvars.iv615
  %ispos263 = icmp sgt i32 %dz56.0, -1
  %neg264 = sub nsw i32 0, %dz56.0
  %1135 = select i1 %ispos263, i32 %dz56.0, i32 %neg264
  %1136 = shl nsw i32 %1135, 2
  %1137 = add nsw i32 %1135, 1
  %1138 = sitofp i32 %dz56.0 to double
  br label %1139

; <label>:1139                                    ; preds = %.lr.ph508, %1420
  %indvars.iv613 = phi i32 [ 0, %.lr.ph508 ], [ %indvars.iv.next614, %1420 ]
  %1140 = icmp ne i32 %indvars.iv613, 0
  %1141 = load i32* %105, align 8
  %1142 = icmp eq i32 %1141, 0
  %or.cond731 = or i1 %1140, %1142
  br i1 %or.cond731, label %1143, label %1148

; <label>:1143                                    ; preds = %1139
  %1144 = add nsw i32 %1132, -1
  %1145 = icmp eq i32 %indvars.iv613, %1144
  br i1 %1145, label %1146, label %1148

; <label>:1146                                    ; preds = %1143
  %1147 = load i32* %106, align 4, !tbaa !2
  %not.370 = icmp ne i32 %1147, 0
  %.344 = sext i1 %not.370 to i32
  br label %1148

; <label>:1148                                    ; preds = %1139, %1146, %1143
  %dy55.0 = phi i32 [ 0, %1143 ], [ %.344, %1146 ], [ 1, %1139 ]
  %1149 = bitcast [6 x i32]* %doBC to i64*
  %1150 = load i64* %1149, align 16
  %1151 = trunc i64 %1150 to i32
  %1152 = icmp eq i32 %1151, 0
  br i1 %1152, label %1238, label %1153

; <label>:1153                                    ; preds = %1148
  %1154 = load i32* %1112, align 4, !tbaa !2
  %1155 = mul nsw i32 %1132, %indvars.iv615
  %1156 = add nsw i32 %1155, %indvars.iv613
  %1157 = mul nsw i32 %1156, %1154
  %1158 = add nsw i32 %dy55.0, %indvars.iv613
  %1159 = mul nsw i32 %1132, %1134
  %1160 = add nsw i32 %1158, %1159
  %1161 = mul nsw i32 %1160, %1154
  %1162 = add nsw i32 %1161, 1
  %ispos271 = icmp sgt i32 %dy55.0, -1
  %neg272 = sub nsw i32 0, %dy55.0
  %1163 = select i1 %ispos271, i32 %dy55.0, i32 %neg272
  %1164 = shl nsw i32 %1163, 1
  %1165 = or i32 %1164, 1
  %1166 = add nsw i32 %1165, %1136
  %1167 = sext i32 %1166 to i64
  %1168 = getelementptr inbounds [8 x double]* %dist, i64 0, i64 %1167
  %1169 = load double* %1168, align 8, !tbaa !11
  %1170 = add nsw i32 %1137, %1163
  %1171 = icmp eq i32 %1170, 1
  %1172 = sext i32 %1157 to i64
  %1173 = getelementptr inbounds double* %36, i64 %1172
  %1174 = load double* %1173, align 8, !tbaa !11
  br i1 %1171, label %1175, label %1181

; <label>:1175                                    ; preds = %1153
  %1176 = call double @fabs(double %1174) #8
  %1177 = sext i32 %1162 to i64
  %1178 = getelementptr inbounds double* %36, i64 %1177
  %1179 = load double* %1178, align 8, !tbaa !11
  %1180 = call double @fabs(double %1179) #8
  br label %1210

; <label>:1181                                    ; preds = %1153
  %1182 = fmul double %1174, %1174
  %1183 = sitofp i32 %dy55.0 to double
  %1184 = getelementptr inbounds double* %43, i64 %1172
  %1185 = load double* %1184, align 8, !tbaa !11
  %1186 = fmul double %1183, %1185
  %1187 = fmul double %1186, %1186
  %1188 = fadd double %1182, %1187
  %1189 = getelementptr inbounds double* %50, i64 %1172
  %1190 = load double* %1189, align 8, !tbaa !11
  %1191 = fmul double %1138, %1190
  %1192 = fmul double %1191, %1191
  %1193 = fadd double %1188, %1192
  %1194 = call double @sqrt(double %1193) #8
  %1195 = sext i32 %1162 to i64
  %1196 = getelementptr inbounds double* %36, i64 %1195
  %1197 = load double* %1196, align 8, !tbaa !11
  %1198 = fmul double %1197, %1197
  %1199 = getelementptr inbounds double* %43, i64 %1195
  %1200 = load double* %1199, align 8, !tbaa !11
  %1201 = fmul double %1183, %1200
  %1202 = fmul double %1201, %1201
  %1203 = fadd double %1198, %1202
  %1204 = getelementptr inbounds double* %50, i64 %1195
  %1205 = load double* %1204, align 8, !tbaa !11
  %1206 = fmul double %1138, %1205
  %1207 = fmul double %1206, %1206
  %1208 = fadd double %1203, %1207
  %1209 = call double @sqrt(double %1208) #8
  br label %1210

; <label>:1210                                    ; preds = %1181, %1175
  %.pre-phi658 = phi i64 [ %1195, %1181 ], [ %1177, %1175 ]
  %u_src61.0 = phi double [ %1209, %1181 ], [ %1180, %1175 ]
  %u_dst62.0 = phi double [ %1194, %1181 ], [ %1176, %1175 ]
  %1211 = fmul double %65, %1169
  %1212 = fadd double %u_src61.0, %u_dst62.0
  %1213 = fmul double %1211, %1212
  %1214 = getelementptr inbounds double* %63, i64 %.pre-phi658
  %1215 = load double* %1214, align 8, !tbaa !11
  %1216 = getelementptr inbounds double* %63, i64 %1172
  %1217 = load double* %1216, align 8, !tbaa !11
  %1218 = fadd double %1215, %1217
  %1219 = fmul double %1218, %1218
  %1220 = fdiv double %1213, %1219
  %1221 = load i8**** %31, align 8, !tbaa !6
  %1222 = getelementptr inbounds i8*** %1221, i64 %indvars.iv645
  %1223 = bitcast i8*** %1222 to i16***
  %1224 = load i16*** %1223, align 8, !tbaa !10
  %1225 = load i16** %1224, align 8, !tbaa !10
  %1226 = fmul double %1220, 2.000000e+00
  %1227 = fmul double %1226, %finf
  %1228 = getelementptr inbounds i16* %1225, i64 %.pre-phi658
  %1229 = load i16* %1228, align 2, !tbaa !18
  %1230 = sitofp i16 %1229 to double
  %1231 = fsub double 1.000000e+00, %1220
  %1232 = fmul double %1231, %1230
  %1233 = fadd double %1227, %1232
  %1234 = fadd double %1220, 1.000000e+00
  %1235 = fdiv double %1233, %1234
  %1236 = fptosi double %1235 to i16
  %1237 = getelementptr inbounds i16* %1225, i64 %1172
  store i16 %1236, i16* %1237, align 2, !tbaa !18
  br label %1238

; <label>:1238                                    ; preds = %1148, %1210
  %1239 = icmp ne i32 %dy55.0, 0
  %1240 = or i32 %dy55.0, %dz56.0
  %1241 = icmp eq i32 %1240, 0
  br i1 %1241, label %.loopexit380, label %1242

; <label>:1242                                    ; preds = %1238
  %1243 = load i32* %1112, align 4, !tbaa !2
  %ispos265 = icmp sgt i32 %dy55.0, -1
  %neg266 = sub nsw i32 0, %dy55.0
  %1244 = select i1 %ispos265, i32 %dy55.0, i32 %neg266
  %1245 = add nsw i32 %1243, -1
  %1246 = icmp sgt i32 %1245, 1
  br i1 %1246, label %.lr.ph505, label %.loopexit380

.lr.ph505:                                        ; preds = %1242
  %1247 = shl nsw i32 %1244, 1
  %1248 = add nsw i32 %1247, %1136
  %1249 = sext i32 %1248 to i64
  %1250 = getelementptr inbounds [8 x double]* %dist, i64 0, i64 %1249
  %1251 = load double* %1250, align 16, !tbaa !11
  %1252 = add nsw i32 %1244, %1135
  %1253 = icmp eq i32 %1252, 1
  %.345 = select i1 %1239, double* %43, double* %50
  %1254 = fmul double %65, %1251
  %1255 = sitofp i32 %dy55.0 to double
  %1256 = add i32 %dy55.0, %indvars.iv613
  %1257 = mul i32 %1134, %1132
  %1258 = add i32 %1256, %1257
  %1259 = mul i32 %1243, %1258
  %1260 = sext i32 %1259 to i64
  %1261 = mul i32 %indvars.iv615, %1132
  %1262 = add i32 %indvars.iv613, %1261
  %1263 = mul i32 %1243, %1262
  %1264 = sext i32 %1263 to i64
  br label %1265

; <label>:1265                                    ; preds = %.lr.ph505, %1302
  %indvars.iv619 = phi i64 [ %1264, %.lr.ph505 ], [ %indvars.iv.next620, %1302 ]
  %indvars.iv617 = phi i64 [ %1260, %.lr.ph505 ], [ %indvars.iv.next618, %1302 ]
  %i51.0501 = phi i32 [ 1, %.lr.ph505 ], [ %1329, %1302 ]
  %indvars.iv.next620 = add i64 %indvars.iv619, 1
  %indvars.iv.next618 = add i64 %indvars.iv617, 1
  br i1 %1253, label %1266, label %1271

; <label>:1266                                    ; preds = %1265
  %.in269 = getelementptr inbounds double* %.345, i64 %indvars.iv.next620
  %1267 = load double* %.in269, align 8
  %1268 = call double @fabs(double %1267) #8
  %.in270 = getelementptr inbounds double* %.345, i64 %indvars.iv.next618
  %1269 = load double* %.in270, align 8
  %1270 = call double @fabs(double %1269) #8
  br label %1302

; <label>:1271                                    ; preds = %1265
  %1272 = getelementptr inbounds double* %36, i64 %indvars.iv.next620
  %1273 = load double* %1272, align 8, !tbaa !11
  %1274 = fmul double %1273, 0.000000e+00
  %1275 = fmul double %1274, %1274
  %1276 = getelementptr inbounds double* %43, i64 %indvars.iv.next620
  %1277 = load double* %1276, align 8, !tbaa !11
  %1278 = fmul double %1255, %1277
  %1279 = fmul double %1278, %1278
  %1280 = fadd double %1275, %1279
  %1281 = getelementptr inbounds double* %50, i64 %indvars.iv.next620
  %1282 = load double* %1281, align 8, !tbaa !11
  %1283 = fmul double %1138, %1282
  %1284 = fmul double %1283, %1283
  %1285 = fadd double %1280, %1284
  %1286 = call double @sqrt(double %1285) #8
  %1287 = getelementptr inbounds double* %36, i64 %indvars.iv.next618
  %1288 = load double* %1287, align 8, !tbaa !11
  %1289 = fmul double %1288, 0.000000e+00
  %1290 = fmul double %1289, %1289
  %1291 = getelementptr inbounds double* %43, i64 %indvars.iv.next618
  %1292 = load double* %1291, align 8, !tbaa !11
  %1293 = fmul double %1255, %1292
  %1294 = fmul double %1293, %1293
  %1295 = fadd double %1290, %1294
  %1296 = getelementptr inbounds double* %50, i64 %indvars.iv.next618
  %1297 = load double* %1296, align 8, !tbaa !11
  %1298 = fmul double %1138, %1297
  %1299 = fmul double %1298, %1298
  %1300 = fadd double %1295, %1299
  %1301 = call double @sqrt(double %1300) #8
  br label %1302

; <label>:1302                                    ; preds = %1271, %1266
  %u_src65.0 = phi double [ %1270, %1266 ], [ %1301, %1271 ]
  %u_dst66.0 = phi double [ %1268, %1266 ], [ %1286, %1271 ]
  %1303 = fadd double %u_src65.0, %u_dst66.0
  %1304 = fmul double %1254, %1303
  %1305 = getelementptr inbounds double* %63, i64 %indvars.iv.next618
  %1306 = load double* %1305, align 8, !tbaa !11
  %1307 = getelementptr inbounds double* %63, i64 %indvars.iv.next620
  %1308 = load double* %1307, align 8, !tbaa !11
  %1309 = fadd double %1306, %1308
  %1310 = fmul double %1309, %1309
  %1311 = fdiv double %1304, %1310
  %1312 = load i8**** %31, align 8, !tbaa !6
  %1313 = getelementptr inbounds i8*** %1312, i64 %indvars.iv645
  %1314 = bitcast i8*** %1313 to i16***
  %1315 = load i16*** %1314, align 8, !tbaa !10
  %1316 = load i16** %1315, align 8, !tbaa !10
  %1317 = fmul double %1311, 2.000000e+00
  %1318 = fmul double %1317, %finf
  %1319 = getelementptr inbounds i16* %1316, i64 %indvars.iv.next618
  %1320 = load i16* %1319, align 2, !tbaa !18
  %1321 = sitofp i16 %1320 to double
  %1322 = fsub double 1.000000e+00, %1311
  %1323 = fmul double %1322, %1321
  %1324 = fadd double %1318, %1323
  %1325 = fadd double %1311, 1.000000e+00
  %1326 = fdiv double %1324, %1325
  %1327 = fptosi double %1326 to i16
  %1328 = getelementptr inbounds i16* %1316, i64 %indvars.iv.next620
  store i16 %1327, i16* %1328, align 2, !tbaa !18
  %1329 = add nuw nsw i32 %i51.0501, 1
  %1330 = icmp slt i32 %1329, %1245
  br i1 %1330, label %1265, label %.loopexit380

.loopexit380:                                     ; preds = %1302, %1242, %1238
  %1331 = icmp ult i64 %1150, 4294967296
  br i1 %1331, label %1420, label %1332

; <label>:1332                                    ; preds = %.loopexit380
  %1333 = load i32* %1112, align 4, !tbaa !2
  %1334 = add nsw i32 %1333, -1
  %1335 = mul nsw i32 %1132, %indvars.iv615
  %1336 = add nsw i32 %1335, %indvars.iv613
  %1337 = mul nsw i32 %1336, %1333
  %1338 = add nsw i32 %1334, %1337
  %1339 = add nsw i32 %1333, -2
  %1340 = add nsw i32 %dy55.0, %indvars.iv613
  %1341 = mul nsw i32 %1132, %1134
  %1342 = add nsw i32 %1340, %1341
  %1343 = mul nsw i32 %1342, %1333
  %1344 = add nsw i32 %1339, %1343
  %ispos261 = icmp sgt i32 %dy55.0, -1
  %neg262 = sub nsw i32 0, %dy55.0
  %1345 = select i1 %ispos261, i32 %dy55.0, i32 %neg262
  %1346 = shl nsw i32 %1345, 1
  %1347 = or i32 %1346, 1
  %1348 = add nsw i32 %1347, %1136
  %1349 = sext i32 %1348 to i64
  %1350 = getelementptr inbounds [8 x double]* %dist, i64 0, i64 %1349
  %1351 = load double* %1350, align 8, !tbaa !11
  %1352 = add nsw i32 %1137, %1345
  %1353 = icmp eq i32 %1352, 1
  %1354 = sext i32 %1338 to i64
  %1355 = getelementptr inbounds double* %36, i64 %1354
  %1356 = load double* %1355, align 8, !tbaa !11
  br i1 %1353, label %1357, label %1363

; <label>:1357                                    ; preds = %1332
  %1358 = call double @fabs(double %1356) #8
  %1359 = sext i32 %1344 to i64
  %1360 = getelementptr inbounds double* %36, i64 %1359
  %1361 = load double* %1360, align 8, !tbaa !11
  %1362 = call double @fabs(double %1361) #8
  br label %1392

; <label>:1363                                    ; preds = %1332
  %1364 = fmul double %1356, %1356
  %1365 = sitofp i32 %dy55.0 to double
  %1366 = getelementptr inbounds double* %43, i64 %1354
  %1367 = load double* %1366, align 8, !tbaa !11
  %1368 = fmul double %1365, %1367
  %1369 = fmul double %1368, %1368
  %1370 = fadd double %1364, %1369
  %1371 = getelementptr inbounds double* %50, i64 %1354
  %1372 = load double* %1371, align 8, !tbaa !11
  %1373 = fmul double %1138, %1372
  %1374 = fmul double %1373, %1373
  %1375 = fadd double %1370, %1374
  %1376 = call double @sqrt(double %1375) #8
  %1377 = sext i32 %1344 to i64
  %1378 = getelementptr inbounds double* %36, i64 %1377
  %1379 = load double* %1378, align 8, !tbaa !11
  %1380 = fmul double %1379, %1379
  %1381 = getelementptr inbounds double* %43, i64 %1377
  %1382 = load double* %1381, align 8, !tbaa !11
  %1383 = fmul double %1365, %1382
  %1384 = fmul double %1383, %1383
  %1385 = fadd double %1380, %1384
  %1386 = getelementptr inbounds double* %50, i64 %1377
  %1387 = load double* %1386, align 8, !tbaa !11
  %1388 = fmul double %1138, %1387
  %1389 = fmul double %1388, %1388
  %1390 = fadd double %1385, %1389
  %1391 = call double @sqrt(double %1390) #8
  br label %1392

; <label>:1392                                    ; preds = %1363, %1357
  %.pre-phi659 = phi i64 [ %1377, %1363 ], [ %1359, %1357 ]
  %u_src69.0 = phi double [ %1391, %1363 ], [ %1362, %1357 ]
  %u_dst70.0 = phi double [ %1376, %1363 ], [ %1358, %1357 ]
  %1393 = fmul double %65, %1351
  %1394 = fadd double %u_src69.0, %u_dst70.0
  %1395 = fmul double %1393, %1394
  %1396 = getelementptr inbounds double* %63, i64 %.pre-phi659
  %1397 = load double* %1396, align 8, !tbaa !11
  %1398 = getelementptr inbounds double* %63, i64 %1354
  %1399 = load double* %1398, align 8, !tbaa !11
  %1400 = fadd double %1397, %1399
  %1401 = fmul double %1400, %1400
  %1402 = fdiv double %1395, %1401
  %1403 = load i8**** %31, align 8, !tbaa !6
  %1404 = getelementptr inbounds i8*** %1403, i64 %indvars.iv645
  %1405 = bitcast i8*** %1404 to i16***
  %1406 = load i16*** %1405, align 8, !tbaa !10
  %1407 = load i16** %1406, align 8, !tbaa !10
  %1408 = fmul double %1402, 2.000000e+00
  %1409 = fmul double %1408, %finf
  %1410 = getelementptr inbounds i16* %1407, i64 %.pre-phi659
  %1411 = load i16* %1410, align 2, !tbaa !18
  %1412 = sitofp i16 %1411 to double
  %1413 = fsub double 1.000000e+00, %1402
  %1414 = fmul double %1413, %1412
  %1415 = fadd double %1409, %1414
  %1416 = fadd double %1402, 1.000000e+00
  %1417 = fdiv double %1415, %1416
  %1418 = fptosi double %1417 to i16
  %1419 = getelementptr inbounds i16* %1407, i64 %1354
  store i16 %1418, i16* %1419, align 2, !tbaa !18
  br label %1420

; <label>:1420                                    ; preds = %.loopexit380, %1392
  %indvars.iv.next614 = add nuw nsw i32 %indvars.iv613, 1
  %1421 = icmp slt i32 %indvars.iv.next614, %1132
  br i1 %1421, label %1139, label %.loopexit389

.loopexit389:                                     ; preds = %1420, %1121, %.lr.ph512, %1130
  %indvars.iv.next616 = add nuw nsw i32 %indvars.iv615, 1
  %1422 = icmp slt i32 %indvars.iv.next616, %1114
  br i1 %1422, label %.lr.ph512, label %.loopexit395

; <label>:1423                                    ; preds = %._crit_edge
  br i1 %101, label %.preheader402, label %1428

.preheader402:                                    ; preds = %1423
  %1424 = load i32** %102, align 8, !tbaa !15
  %1425 = getelementptr inbounds i32* %1424, i64 2
  %1426 = load i32* %1425, align 4, !tbaa !2
  %1427 = icmp sgt i32 %1426, 0
  br i1 %1427, label %.lr.ph498, label %.loopexit395

; <label>:1428                                    ; preds = %1423
  %1429 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 755, i8* getelementptr inbounds ([84 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str18, i64 0, i64 0), i32 %3) #6
  br label %.loopexit414

.lr.ph498:                                        ; preds = %.preheader402, %.loopexit390
  %1430 = phi i32 [ %1741, %.loopexit390 ], [ %1426, %.preheader402 ]
  %indvars.iv607 = phi i32 [ %indvars.iv.next608, %.loopexit390 ], [ 0, %.preheader402 ]
  %1431 = load i32* %103, align 16
  %1432 = or i32 %indvars.iv607, %1431
  %1433 = icmp eq i32 %1432, 0
  br i1 %1433, label %.loopexit390, label %1434

; <label>:1434                                    ; preds = %.lr.ph498
  %1435 = add nsw i32 %1430, -1
  %1436 = icmp eq i32 %indvars.iv607, %1435
  %1437 = load i32* %104, align 4
  %1438 = icmp eq i32 %1437, 0
  %or.cond735 = and i1 %1436, %1438
  br i1 %or.cond735, label %.loopexit390, label %1439

; <label>:1439                                    ; preds = %1434
  %1440 = load i32* %103, align 16
  %notlhs798 = icmp eq i32 %indvars.iv607, 0
  %notrhs799 = icmp ne i32 %1440, 0
  %or.cond738.not = and i1 %notrhs799, %notlhs798
  %.not739 = xor i1 %1436, true
  %brmerge740 = or i1 %or.cond738.not, %.not739
  %.mux741 = zext i1 %or.cond738.not to i32
  br i1 %brmerge740, label %1443, label %1441

; <label>:1441                                    ; preds = %1439
  %1442 = load i32* %104, align 4, !tbaa !2
  %not.369 = icmp ne i32 %1442, 0
  %.346 = sext i1 %not.369 to i32
  br label %1443

; <label>:1443                                    ; preds = %1439, %1441
  %dz77.0 = phi i32 [ %.346, %1441 ], [ %.mux741, %1439 ]
  %1444 = getelementptr inbounds i32* %1424, i64 1
  %1445 = load i32* %1444, align 4, !tbaa !2
  %1446 = icmp sgt i32 %1445, 0
  br i1 %1446, label %.lr.ph494, label %.loopexit390

.lr.ph494:                                        ; preds = %1443
  %1447 = add i32 %dz77.0, %indvars.iv607
  %ispos249 = icmp sgt i32 %dz77.0, -1
  %neg250 = sub nsw i32 0, %dz77.0
  %1448 = select i1 %ispos249, i32 %dz77.0, i32 %neg250
  %1449 = shl nsw i32 %1448, 2
  %1450 = add nsw i32 %1448, 1
  %1451 = sitofp i32 %dz77.0 to double
  br label %1452

; <label>:1452                                    ; preds = %.lr.ph494, %1738
  %1453 = phi i32 [ %1445, %.lr.ph494 ], [ %1739, %1738 ]
  %indvars.iv605 = phi i32 [ 0, %.lr.ph494 ], [ %indvars.iv.next606, %1738 ]
  %1454 = icmp ne i32 %indvars.iv605, 0
  %1455 = load i32* %105, align 8
  %1456 = icmp eq i32 %1455, 0
  %or.cond743 = or i1 %1454, %1456
  br i1 %or.cond743, label %1457, label %1462

; <label>:1457                                    ; preds = %1452
  %1458 = add nsw i32 %1453, -1
  %1459 = icmp eq i32 %indvars.iv605, %1458
  br i1 %1459, label %1460, label %1462

; <label>:1460                                    ; preds = %1457
  %1461 = load i32* %106, align 4, !tbaa !2
  %not.368 = icmp ne i32 %1461, 0
  %.347 = sext i1 %not.368 to i32
  br label %1462

; <label>:1462                                    ; preds = %1452, %1460, %1457
  %dy76.0 = phi i32 [ 0, %1457 ], [ %.347, %1460 ], [ 1, %1452 ]
  %1463 = bitcast [6 x i32]* %doBC to i64*
  %1464 = load i64* %1463, align 16
  %1465 = trunc i64 %1464 to i32
  %1466 = icmp eq i32 %1465, 0
  br i1 %1466, label %1552, label %1467

; <label>:1467                                    ; preds = %1462
  %1468 = load i32* %1424, align 4, !tbaa !2
  %1469 = mul nsw i32 %1453, %indvars.iv607
  %1470 = add nsw i32 %1469, %indvars.iv605
  %1471 = mul nsw i32 %1470, %1468
  %1472 = add nsw i32 %dy76.0, %indvars.iv605
  %1473 = mul nsw i32 %1453, %1447
  %1474 = add nsw i32 %1472, %1473
  %1475 = mul nsw i32 %1474, %1468
  %1476 = add nsw i32 %1475, 1
  %ispos257 = icmp sgt i32 %dy76.0, -1
  %neg258 = sub nsw i32 0, %dy76.0
  %1477 = select i1 %ispos257, i32 %dy76.0, i32 %neg258
  %1478 = shl nsw i32 %1477, 1
  %1479 = or i32 %1478, 1
  %1480 = add nsw i32 %1479, %1449
  %1481 = sext i32 %1480 to i64
  %1482 = getelementptr inbounds [8 x double]* %dist, i64 0, i64 %1481
  %1483 = load double* %1482, align 8, !tbaa !11
  %1484 = add nsw i32 %1450, %1477
  %1485 = icmp eq i32 %1484, 1
  %1486 = sext i32 %1471 to i64
  %1487 = getelementptr inbounds double* %36, i64 %1486
  %1488 = load double* %1487, align 8, !tbaa !11
  br i1 %1485, label %1489, label %1495

; <label>:1489                                    ; preds = %1467
  %1490 = call double @fabs(double %1488) #8
  %1491 = sext i32 %1476 to i64
  %1492 = getelementptr inbounds double* %36, i64 %1491
  %1493 = load double* %1492, align 8, !tbaa !11
  %1494 = call double @fabs(double %1493) #8
  br label %1524

; <label>:1495                                    ; preds = %1467
  %1496 = fmul double %1488, %1488
  %1497 = sitofp i32 %dy76.0 to double
  %1498 = getelementptr inbounds double* %43, i64 %1486
  %1499 = load double* %1498, align 8, !tbaa !11
  %1500 = fmul double %1497, %1499
  %1501 = fmul double %1500, %1500
  %1502 = fadd double %1496, %1501
  %1503 = getelementptr inbounds double* %50, i64 %1486
  %1504 = load double* %1503, align 8, !tbaa !11
  %1505 = fmul double %1451, %1504
  %1506 = fmul double %1505, %1505
  %1507 = fadd double %1502, %1506
  %1508 = call double @sqrt(double %1507) #8
  %1509 = sext i32 %1476 to i64
  %1510 = getelementptr inbounds double* %36, i64 %1509
  %1511 = load double* %1510, align 8, !tbaa !11
  %1512 = fmul double %1511, %1511
  %1513 = getelementptr inbounds double* %43, i64 %1509
  %1514 = load double* %1513, align 8, !tbaa !11
  %1515 = fmul double %1497, %1514
  %1516 = fmul double %1515, %1515
  %1517 = fadd double %1512, %1516
  %1518 = getelementptr inbounds double* %50, i64 %1509
  %1519 = load double* %1518, align 8, !tbaa !11
  %1520 = fmul double %1451, %1519
  %1521 = fmul double %1520, %1520
  %1522 = fadd double %1517, %1521
  %1523 = call double @sqrt(double %1522) #8
  br label %1524

; <label>:1524                                    ; preds = %1495, %1489
  %.pre-phi656 = phi i64 [ %1509, %1495 ], [ %1491, %1489 ]
  %u_src82.0 = phi double [ %1523, %1495 ], [ %1494, %1489 ]
  %u_dst83.0 = phi double [ %1508, %1495 ], [ %1490, %1489 ]
  %1525 = fmul double %65, %1483
  %1526 = fadd double %u_src82.0, %u_dst83.0
  %1527 = fmul double %1525, %1526
  %1528 = getelementptr inbounds double* %63, i64 %.pre-phi656
  %1529 = load double* %1528, align 8, !tbaa !11
  %1530 = getelementptr inbounds double* %63, i64 %1486
  %1531 = load double* %1530, align 8, !tbaa !11
  %1532 = fadd double %1529, %1531
  %1533 = fmul double %1532, %1532
  %1534 = fdiv double %1527, %1533
  %1535 = load i8**** %31, align 8, !tbaa !6
  %1536 = getelementptr inbounds i8*** %1535, i64 %indvars.iv645
  %1537 = bitcast i8*** %1536 to i32***
  %1538 = load i32*** %1537, align 8, !tbaa !10
  %1539 = load i32** %1538, align 8, !tbaa !10
  %1540 = fmul double %1534, 2.000000e+00
  %1541 = fmul double %1540, %finf
  %1542 = getelementptr inbounds i32* %1539, i64 %.pre-phi656
  %1543 = load i32* %1542, align 4, !tbaa !2
  %1544 = sitofp i32 %1543 to double
  %1545 = fsub double 1.000000e+00, %1534
  %1546 = fmul double %1545, %1544
  %1547 = fadd double %1541, %1546
  %1548 = fadd double %1534, 1.000000e+00
  %1549 = fdiv double %1547, %1548
  %1550 = fptosi double %1549 to i32
  %1551 = getelementptr inbounds i32* %1539, i64 %1486
  store i32 %1550, i32* %1551, align 4, !tbaa !2
  br label %1552

; <label>:1552                                    ; preds = %1462, %1524
  %1553 = icmp ne i32 %dy76.0, 0
  %1554 = or i32 %dy76.0, %dz77.0
  %1555 = icmp eq i32 %1554, 0
  br i1 %1555, label %.loopexit381, label %1556

; <label>:1556                                    ; preds = %1552
  %1557 = load i32* %1424, align 4, !tbaa !2
  %1558 = load i32* %1444, align 4, !tbaa !2
  %ispos251 = icmp sgt i32 %dy76.0, -1
  %neg252 = sub nsw i32 0, %dy76.0
  %1559 = select i1 %ispos251, i32 %dy76.0, i32 %neg252
  %1560 = add nsw i32 %1557, -1
  %1561 = icmp sgt i32 %1560, 1
  br i1 %1561, label %.lr.ph491, label %.loopexit381

.lr.ph491:                                        ; preds = %1556
  %1562 = shl nsw i32 %1559, 1
  %1563 = add nsw i32 %1562, %1449
  %1564 = sext i32 %1563 to i64
  %1565 = getelementptr inbounds [8 x double]* %dist, i64 0, i64 %1564
  %1566 = load double* %1565, align 16, !tbaa !11
  %1567 = add nsw i32 %1559, %1448
  %1568 = icmp eq i32 %1567, 1
  %.348 = select i1 %1553, double* %43, double* %50
  %1569 = fmul double %65, %1566
  %1570 = sitofp i32 %dy76.0 to double
  %1571 = add i32 %dy76.0, %indvars.iv605
  %1572 = mul i32 %1447, %1558
  %1573 = add i32 %1571, %1572
  %1574 = mul i32 %1557, %1573
  %1575 = sext i32 %1574 to i64
  %1576 = mul i32 %indvars.iv607, %1558
  %1577 = add i32 %indvars.iv605, %1576
  %1578 = mul i32 %1557, %1577
  %1579 = sext i32 %1578 to i64
  br label %1580

; <label>:1580                                    ; preds = %.lr.ph491, %1617
  %indvars.iv611 = phi i64 [ %1579, %.lr.ph491 ], [ %indvars.iv.next612, %1617 ]
  %indvars.iv609 = phi i64 [ %1575, %.lr.ph491 ], [ %indvars.iv.next610, %1617 ]
  %i72.0487 = phi i32 [ 1, %.lr.ph491 ], [ %1644, %1617 ]
  %indvars.iv.next612 = add i64 %indvars.iv611, 1
  %indvars.iv.next610 = add i64 %indvars.iv609, 1
  br i1 %1568, label %1581, label %1586

; <label>:1581                                    ; preds = %1580
  %.in255 = getelementptr inbounds double* %.348, i64 %indvars.iv.next612
  %1582 = load double* %.in255, align 8
  %1583 = call double @fabs(double %1582) #8
  %.in256 = getelementptr inbounds double* %.348, i64 %indvars.iv.next610
  %1584 = load double* %.in256, align 8
  %1585 = call double @fabs(double %1584) #8
  br label %1617

; <label>:1586                                    ; preds = %1580
  %1587 = getelementptr inbounds double* %36, i64 %indvars.iv.next612
  %1588 = load double* %1587, align 8, !tbaa !11
  %1589 = fmul double %1588, 0.000000e+00
  %1590 = fmul double %1589, %1589
  %1591 = getelementptr inbounds double* %43, i64 %indvars.iv.next612
  %1592 = load double* %1591, align 8, !tbaa !11
  %1593 = fmul double %1570, %1592
  %1594 = fmul double %1593, %1593
  %1595 = fadd double %1590, %1594
  %1596 = getelementptr inbounds double* %50, i64 %indvars.iv.next612
  %1597 = load double* %1596, align 8, !tbaa !11
  %1598 = fmul double %1451, %1597
  %1599 = fmul double %1598, %1598
  %1600 = fadd double %1595, %1599
  %1601 = call double @sqrt(double %1600) #8
  %1602 = getelementptr inbounds double* %36, i64 %indvars.iv.next610
  %1603 = load double* %1602, align 8, !tbaa !11
  %1604 = fmul double %1603, 0.000000e+00
  %1605 = fmul double %1604, %1604
  %1606 = getelementptr inbounds double* %43, i64 %indvars.iv.next610
  %1607 = load double* %1606, align 8, !tbaa !11
  %1608 = fmul double %1570, %1607
  %1609 = fmul double %1608, %1608
  %1610 = fadd double %1605, %1609
  %1611 = getelementptr inbounds double* %50, i64 %indvars.iv.next610
  %1612 = load double* %1611, align 8, !tbaa !11
  %1613 = fmul double %1451, %1612
  %1614 = fmul double %1613, %1613
  %1615 = fadd double %1610, %1614
  %1616 = call double @sqrt(double %1615) #8
  br label %1617

; <label>:1617                                    ; preds = %1586, %1581
  %u_src86.0 = phi double [ %1585, %1581 ], [ %1616, %1586 ]
  %u_dst87.0 = phi double [ %1583, %1581 ], [ %1601, %1586 ]
  %1618 = fadd double %u_src86.0, %u_dst87.0
  %1619 = fmul double %1569, %1618
  %1620 = getelementptr inbounds double* %63, i64 %indvars.iv.next610
  %1621 = load double* %1620, align 8, !tbaa !11
  %1622 = getelementptr inbounds double* %63, i64 %indvars.iv.next612
  %1623 = load double* %1622, align 8, !tbaa !11
  %1624 = fadd double %1621, %1623
  %1625 = fmul double %1624, %1624
  %1626 = fdiv double %1619, %1625
  %1627 = load i8**** %31, align 8, !tbaa !6
  %1628 = getelementptr inbounds i8*** %1627, i64 %indvars.iv645
  %1629 = bitcast i8*** %1628 to i32***
  %1630 = load i32*** %1629, align 8, !tbaa !10
  %1631 = load i32** %1630, align 8, !tbaa !10
  %1632 = fmul double %1626, 2.000000e+00
  %1633 = fmul double %1632, %finf
  %1634 = getelementptr inbounds i32* %1631, i64 %indvars.iv.next610
  %1635 = load i32* %1634, align 4, !tbaa !2
  %1636 = sitofp i32 %1635 to double
  %1637 = fsub double 1.000000e+00, %1626
  %1638 = fmul double %1637, %1636
  %1639 = fadd double %1633, %1638
  %1640 = fadd double %1626, 1.000000e+00
  %1641 = fdiv double %1639, %1640
  %1642 = fptosi double %1641 to i32
  %1643 = getelementptr inbounds i32* %1631, i64 %indvars.iv.next612
  store i32 %1642, i32* %1643, align 4, !tbaa !2
  %1644 = add nuw nsw i32 %i72.0487, 1
  %1645 = load i32* %1424, align 4, !tbaa !2
  %1646 = add nsw i32 %1645, -1
  %1647 = icmp slt i32 %1644, %1646
  br i1 %1647, label %1580, label %.loopexit381

.loopexit381:                                     ; preds = %1617, %1556, %1552
  %1648 = icmp ult i64 %1464, 4294967296
  br i1 %1648, label %1738, label %1649

; <label>:1649                                    ; preds = %.loopexit381
  %1650 = load i32* %1424, align 4, !tbaa !2
  %1651 = add nsw i32 %1650, -1
  %1652 = load i32* %1444, align 4, !tbaa !2
  %1653 = mul nsw i32 %1652, %indvars.iv607
  %1654 = add nsw i32 %1653, %indvars.iv605
  %1655 = mul nsw i32 %1654, %1650
  %1656 = add nsw i32 %1651, %1655
  %1657 = add nsw i32 %1650, -2
  %1658 = add nsw i32 %dy76.0, %indvars.iv605
  %1659 = mul nsw i32 %1652, %1447
  %1660 = add nsw i32 %1658, %1659
  %1661 = mul nsw i32 %1660, %1650
  %1662 = add nsw i32 %1657, %1661
  %ispos247 = icmp sgt i32 %dy76.0, -1
  %neg248 = sub nsw i32 0, %dy76.0
  %1663 = select i1 %ispos247, i32 %dy76.0, i32 %neg248
  %1664 = shl nsw i32 %1663, 1
  %1665 = or i32 %1664, 1
  %1666 = add nsw i32 %1665, %1449
  %1667 = sext i32 %1666 to i64
  %1668 = getelementptr inbounds [8 x double]* %dist, i64 0, i64 %1667
  %1669 = load double* %1668, align 8, !tbaa !11
  %1670 = add nsw i32 %1450, %1663
  %1671 = icmp eq i32 %1670, 1
  %1672 = sext i32 %1656 to i64
  %1673 = getelementptr inbounds double* %36, i64 %1672
  %1674 = load double* %1673, align 8, !tbaa !11
  br i1 %1671, label %1675, label %1681

; <label>:1675                                    ; preds = %1649
  %1676 = call double @fabs(double %1674) #8
  %1677 = sext i32 %1662 to i64
  %1678 = getelementptr inbounds double* %36, i64 %1677
  %1679 = load double* %1678, align 8, !tbaa !11
  %1680 = call double @fabs(double %1679) #8
  br label %1710

; <label>:1681                                    ; preds = %1649
  %1682 = fmul double %1674, %1674
  %1683 = sitofp i32 %dy76.0 to double
  %1684 = getelementptr inbounds double* %43, i64 %1672
  %1685 = load double* %1684, align 8, !tbaa !11
  %1686 = fmul double %1683, %1685
  %1687 = fmul double %1686, %1686
  %1688 = fadd double %1682, %1687
  %1689 = getelementptr inbounds double* %50, i64 %1672
  %1690 = load double* %1689, align 8, !tbaa !11
  %1691 = fmul double %1451, %1690
  %1692 = fmul double %1691, %1691
  %1693 = fadd double %1688, %1692
  %1694 = call double @sqrt(double %1693) #8
  %1695 = sext i32 %1662 to i64
  %1696 = getelementptr inbounds double* %36, i64 %1695
  %1697 = load double* %1696, align 8, !tbaa !11
  %1698 = fmul double %1697, %1697
  %1699 = getelementptr inbounds double* %43, i64 %1695
  %1700 = load double* %1699, align 8, !tbaa !11
  %1701 = fmul double %1683, %1700
  %1702 = fmul double %1701, %1701
  %1703 = fadd double %1698, %1702
  %1704 = getelementptr inbounds double* %50, i64 %1695
  %1705 = load double* %1704, align 8, !tbaa !11
  %1706 = fmul double %1451, %1705
  %1707 = fmul double %1706, %1706
  %1708 = fadd double %1703, %1707
  %1709 = call double @sqrt(double %1708) #8
  br label %1710

; <label>:1710                                    ; preds = %1681, %1675
  %.pre-phi657 = phi i64 [ %1695, %1681 ], [ %1677, %1675 ]
  %u_src90.0 = phi double [ %1709, %1681 ], [ %1680, %1675 ]
  %u_dst91.0 = phi double [ %1694, %1681 ], [ %1676, %1675 ]
  %1711 = fmul double %65, %1669
  %1712 = fadd double %u_src90.0, %u_dst91.0
  %1713 = fmul double %1711, %1712
  %1714 = getelementptr inbounds double* %63, i64 %.pre-phi657
  %1715 = load double* %1714, align 8, !tbaa !11
  %1716 = getelementptr inbounds double* %63, i64 %1672
  %1717 = load double* %1716, align 8, !tbaa !11
  %1718 = fadd double %1715, %1717
  %1719 = fmul double %1718, %1718
  %1720 = fdiv double %1713, %1719
  %1721 = load i8**** %31, align 8, !tbaa !6
  %1722 = getelementptr inbounds i8*** %1721, i64 %indvars.iv645
  %1723 = bitcast i8*** %1722 to i32***
  %1724 = load i32*** %1723, align 8, !tbaa !10
  %1725 = load i32** %1724, align 8, !tbaa !10
  %1726 = fmul double %1720, 2.000000e+00
  %1727 = fmul double %1726, %finf
  %1728 = getelementptr inbounds i32* %1725, i64 %.pre-phi657
  %1729 = load i32* %1728, align 4, !tbaa !2
  %1730 = sitofp i32 %1729 to double
  %1731 = fsub double 1.000000e+00, %1720
  %1732 = fmul double %1731, %1730
  %1733 = fadd double %1727, %1732
  %1734 = fadd double %1720, 1.000000e+00
  %1735 = fdiv double %1733, %1734
  %1736 = fptosi double %1735 to i32
  %1737 = getelementptr inbounds i32* %1725, i64 %1672
  store i32 %1736, i32* %1737, align 4, !tbaa !2
  br label %1738

; <label>:1738                                    ; preds = %.loopexit381, %1710
  %indvars.iv.next606 = add nuw nsw i32 %indvars.iv605, 1
  %1739 = load i32* %1444, align 4, !tbaa !2
  %1740 = icmp slt i32 %indvars.iv.next606, %1739
  br i1 %1740, label %1452, label %..loopexit390_crit_edge

..loopexit390_crit_edge:                          ; preds = %1738
  %.pre.pre = load i32* %1425, align 4, !tbaa !2
  br label %.loopexit390

.loopexit390:                                     ; preds = %1434, %.lr.ph498, %1443, %..loopexit390_crit_edge
  %1741 = phi i32 [ %.pre.pre, %..loopexit390_crit_edge ], [ %1430, %1443 ], [ %1430, %.lr.ph498 ], [ %1430, %1434 ]
  %indvars.iv.next608 = add nuw nsw i32 %indvars.iv607, 1
  %1742 = icmp slt i32 %indvars.iv.next608, %1741
  br i1 %1742, label %.lr.ph498, label %.loopexit395

; <label>:1743                                    ; preds = %._crit_edge
  br i1 %101, label %.preheader404, label %1748

.preheader404:                                    ; preds = %1743
  %1744 = load i32** %102, align 8, !tbaa !15
  %1745 = getelementptr inbounds i32* %1744, i64 2
  %1746 = load i32* %1745, align 4, !tbaa !2
  %1747 = icmp sgt i32 %1746, 0
  br i1 %1747, label %.lr.ph484, label %.loopexit395

; <label>:1748                                    ; preds = %1743
  %1749 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 760, i8* getelementptr inbounds ([84 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str18, i64 0, i64 0), i32 %3) #6
  br label %.loopexit414

.lr.ph484:                                        ; preds = %.preheader404, %.loopexit391
  %indvars.iv599 = phi i32 [ %indvars.iv.next600, %.loopexit391 ], [ 0, %.preheader404 ]
  %1750 = load i32* %103, align 16
  %1751 = or i32 %indvars.iv599, %1750
  %1752 = icmp eq i32 %1751, 0
  br i1 %1752, label %.loopexit391, label %1753

; <label>:1753                                    ; preds = %.lr.ph484
  %1754 = add nsw i32 %1746, -1
  %1755 = icmp eq i32 %indvars.iv599, %1754
  %1756 = load i32* %104, align 4
  %1757 = icmp eq i32 %1756, 0
  %or.cond747 = and i1 %1755, %1757
  br i1 %or.cond747, label %.loopexit391, label %1758

; <label>:1758                                    ; preds = %1753
  %1759 = load i32* %103, align 16
  %notlhs796 = icmp eq i32 %indvars.iv599, 0
  %notrhs797 = icmp ne i32 %1759, 0
  %or.cond750.not = and i1 %notrhs797, %notlhs796
  %.not751 = xor i1 %1755, true
  %brmerge752 = or i1 %or.cond750.not, %.not751
  %.mux753 = zext i1 %or.cond750.not to i32
  br i1 %brmerge752, label %1762, label %1760

; <label>:1760                                    ; preds = %1758
  %1761 = load i32* %104, align 4, !tbaa !2
  %not.367 = icmp ne i32 %1761, 0
  %.349 = sext i1 %not.367 to i32
  br label %1762

; <label>:1762                                    ; preds = %1758, %1760
  %dz98.0 = phi i32 [ %.349, %1760 ], [ %.mux753, %1758 ]
  %1763 = getelementptr inbounds i32* %1744, i64 1
  %1764 = load i32* %1763, align 4, !tbaa !2
  %1765 = icmp sgt i32 %1764, 0
  br i1 %1765, label %.lr.ph480, label %.loopexit391

.lr.ph480:                                        ; preds = %1762
  %1766 = add i32 %dz98.0, %indvars.iv599
  %ispos235 = icmp sgt i32 %dz98.0, -1
  %neg236 = sub nsw i32 0, %dz98.0
  %1767 = select i1 %ispos235, i32 %dz98.0, i32 %neg236
  %1768 = shl nsw i32 %1767, 2
  %1769 = add nsw i32 %1767, 1
  %1770 = sitofp i32 %dz98.0 to double
  br label %1771

; <label>:1771                                    ; preds = %.lr.ph480, %2052
  %indvars.iv597 = phi i32 [ 0, %.lr.ph480 ], [ %indvars.iv.next598, %2052 ]
  %1772 = icmp ne i32 %indvars.iv597, 0
  %1773 = load i32* %105, align 8
  %1774 = icmp eq i32 %1773, 0
  %or.cond755 = or i1 %1772, %1774
  br i1 %or.cond755, label %1775, label %1780

; <label>:1775                                    ; preds = %1771
  %1776 = add nsw i32 %1764, -1
  %1777 = icmp eq i32 %indvars.iv597, %1776
  br i1 %1777, label %1778, label %1780

; <label>:1778                                    ; preds = %1775
  %1779 = load i32* %106, align 4, !tbaa !2
  %not.366 = icmp ne i32 %1779, 0
  %.350 = sext i1 %not.366 to i32
  br label %1780

; <label>:1780                                    ; preds = %1771, %1778, %1775
  %dy97.0 = phi i32 [ 0, %1775 ], [ %.350, %1778 ], [ 1, %1771 ]
  %1781 = bitcast [6 x i32]* %doBC to i64*
  %1782 = load i64* %1781, align 16
  %1783 = trunc i64 %1782 to i32
  %1784 = icmp eq i32 %1783, 0
  br i1 %1784, label %1870, label %1785

; <label>:1785                                    ; preds = %1780
  %1786 = load i32* %1744, align 4, !tbaa !2
  %1787 = mul nsw i32 %1764, %indvars.iv599
  %1788 = add nsw i32 %1787, %indvars.iv597
  %1789 = mul nsw i32 %1788, %1786
  %1790 = add nsw i32 %dy97.0, %indvars.iv597
  %1791 = mul nsw i32 %1764, %1766
  %1792 = add nsw i32 %1790, %1791
  %1793 = mul nsw i32 %1792, %1786
  %1794 = add nsw i32 %1793, 1
  %ispos243 = icmp sgt i32 %dy97.0, -1
  %neg244 = sub nsw i32 0, %dy97.0
  %1795 = select i1 %ispos243, i32 %dy97.0, i32 %neg244
  %1796 = shl nsw i32 %1795, 1
  %1797 = or i32 %1796, 1
  %1798 = add nsw i32 %1797, %1768
  %1799 = sext i32 %1798 to i64
  %1800 = getelementptr inbounds [8 x double]* %dist, i64 0, i64 %1799
  %1801 = load double* %1800, align 8, !tbaa !11
  %1802 = add nsw i32 %1769, %1795
  %1803 = icmp eq i32 %1802, 1
  %1804 = sext i32 %1789 to i64
  %1805 = getelementptr inbounds double* %36, i64 %1804
  %1806 = load double* %1805, align 8, !tbaa !11
  br i1 %1803, label %1807, label %1813

; <label>:1807                                    ; preds = %1785
  %1808 = call double @fabs(double %1806) #8
  %1809 = sext i32 %1794 to i64
  %1810 = getelementptr inbounds double* %36, i64 %1809
  %1811 = load double* %1810, align 8, !tbaa !11
  %1812 = call double @fabs(double %1811) #8
  br label %1842

; <label>:1813                                    ; preds = %1785
  %1814 = fmul double %1806, %1806
  %1815 = sitofp i32 %dy97.0 to double
  %1816 = getelementptr inbounds double* %43, i64 %1804
  %1817 = load double* %1816, align 8, !tbaa !11
  %1818 = fmul double %1815, %1817
  %1819 = fmul double %1818, %1818
  %1820 = fadd double %1814, %1819
  %1821 = getelementptr inbounds double* %50, i64 %1804
  %1822 = load double* %1821, align 8, !tbaa !11
  %1823 = fmul double %1770, %1822
  %1824 = fmul double %1823, %1823
  %1825 = fadd double %1820, %1824
  %1826 = call double @sqrt(double %1825) #8
  %1827 = sext i32 %1794 to i64
  %1828 = getelementptr inbounds double* %36, i64 %1827
  %1829 = load double* %1828, align 8, !tbaa !11
  %1830 = fmul double %1829, %1829
  %1831 = getelementptr inbounds double* %43, i64 %1827
  %1832 = load double* %1831, align 8, !tbaa !11
  %1833 = fmul double %1815, %1832
  %1834 = fmul double %1833, %1833
  %1835 = fadd double %1830, %1834
  %1836 = getelementptr inbounds double* %50, i64 %1827
  %1837 = load double* %1836, align 8, !tbaa !11
  %1838 = fmul double %1770, %1837
  %1839 = fmul double %1838, %1838
  %1840 = fadd double %1835, %1839
  %1841 = call double @sqrt(double %1840) #8
  br label %1842

; <label>:1842                                    ; preds = %1813, %1807
  %.pre-phi654 = phi i64 [ %1827, %1813 ], [ %1809, %1807 ]
  %u_src103.0 = phi double [ %1841, %1813 ], [ %1812, %1807 ]
  %u_dst104.0 = phi double [ %1826, %1813 ], [ %1808, %1807 ]
  %1843 = fmul double %65, %1801
  %1844 = fadd double %u_src103.0, %u_dst104.0
  %1845 = fmul double %1843, %1844
  %1846 = getelementptr inbounds double* %63, i64 %.pre-phi654
  %1847 = load double* %1846, align 8, !tbaa !11
  %1848 = getelementptr inbounds double* %63, i64 %1804
  %1849 = load double* %1848, align 8, !tbaa !11
  %1850 = fadd double %1847, %1849
  %1851 = fmul double %1850, %1850
  %1852 = fdiv double %1845, %1851
  %1853 = load i8**** %31, align 8, !tbaa !6
  %1854 = getelementptr inbounds i8*** %1853, i64 %indvars.iv645
  %1855 = bitcast i8*** %1854 to i64***
  %1856 = load i64*** %1855, align 8, !tbaa !10
  %1857 = load i64** %1856, align 8, !tbaa !10
  %1858 = fmul double %1852, 2.000000e+00
  %1859 = fmul double %1858, %finf
  %1860 = getelementptr inbounds i64* %1857, i64 %.pre-phi654
  %1861 = load i64* %1860, align 8, !tbaa !20
  %1862 = sitofp i64 %1861 to double
  %1863 = fsub double 1.000000e+00, %1852
  %1864 = fmul double %1863, %1862
  %1865 = fadd double %1859, %1864
  %1866 = fadd double %1852, 1.000000e+00
  %1867 = fdiv double %1865, %1866
  %1868 = fptosi double %1867 to i64
  %1869 = getelementptr inbounds i64* %1857, i64 %1804
  store i64 %1868, i64* %1869, align 8, !tbaa !20
  br label %1870

; <label>:1870                                    ; preds = %1780, %1842
  %1871 = icmp ne i32 %dy97.0, 0
  %1872 = or i32 %dy97.0, %dz98.0
  %1873 = icmp eq i32 %1872, 0
  br i1 %1873, label %.loopexit382, label %1874

; <label>:1874                                    ; preds = %1870
  %1875 = load i32* %1744, align 4, !tbaa !2
  %ispos237 = icmp sgt i32 %dy97.0, -1
  %neg238 = sub nsw i32 0, %dy97.0
  %1876 = select i1 %ispos237, i32 %dy97.0, i32 %neg238
  %1877 = add nsw i32 %1875, -1
  %1878 = icmp sgt i32 %1877, 1
  br i1 %1878, label %.lr.ph477, label %.loopexit382

.lr.ph477:                                        ; preds = %1874
  %1879 = shl nsw i32 %1876, 1
  %1880 = add nsw i32 %1879, %1768
  %1881 = sext i32 %1880 to i64
  %1882 = getelementptr inbounds [8 x double]* %dist, i64 0, i64 %1881
  %1883 = load double* %1882, align 16, !tbaa !11
  %1884 = add nsw i32 %1876, %1767
  %1885 = icmp eq i32 %1884, 1
  %.351 = select i1 %1871, double* %43, double* %50
  %1886 = fmul double %65, %1883
  %1887 = sitofp i32 %dy97.0 to double
  %1888 = add i32 %dy97.0, %indvars.iv597
  %1889 = mul i32 %1766, %1764
  %1890 = add i32 %1888, %1889
  %1891 = mul i32 %1875, %1890
  %1892 = sext i32 %1891 to i64
  %1893 = mul i32 %indvars.iv599, %1764
  %1894 = add i32 %indvars.iv597, %1893
  %1895 = mul i32 %1875, %1894
  %1896 = sext i32 %1895 to i64
  br label %1897

; <label>:1897                                    ; preds = %.lr.ph477, %1934
  %indvars.iv603 = phi i64 [ %1896, %.lr.ph477 ], [ %indvars.iv.next604, %1934 ]
  %indvars.iv601 = phi i64 [ %1892, %.lr.ph477 ], [ %indvars.iv.next602, %1934 ]
  %i93.0473 = phi i32 [ 1, %.lr.ph477 ], [ %1961, %1934 ]
  %indvars.iv.next604 = add i64 %indvars.iv603, 1
  %indvars.iv.next602 = add i64 %indvars.iv601, 1
  br i1 %1885, label %1898, label %1903

; <label>:1898                                    ; preds = %1897
  %.in241 = getelementptr inbounds double* %.351, i64 %indvars.iv.next604
  %1899 = load double* %.in241, align 8
  %1900 = call double @fabs(double %1899) #8
  %.in242 = getelementptr inbounds double* %.351, i64 %indvars.iv.next602
  %1901 = load double* %.in242, align 8
  %1902 = call double @fabs(double %1901) #8
  br label %1934

; <label>:1903                                    ; preds = %1897
  %1904 = getelementptr inbounds double* %36, i64 %indvars.iv.next604
  %1905 = load double* %1904, align 8, !tbaa !11
  %1906 = fmul double %1905, 0.000000e+00
  %1907 = fmul double %1906, %1906
  %1908 = getelementptr inbounds double* %43, i64 %indvars.iv.next604
  %1909 = load double* %1908, align 8, !tbaa !11
  %1910 = fmul double %1887, %1909
  %1911 = fmul double %1910, %1910
  %1912 = fadd double %1907, %1911
  %1913 = getelementptr inbounds double* %50, i64 %indvars.iv.next604
  %1914 = load double* %1913, align 8, !tbaa !11
  %1915 = fmul double %1770, %1914
  %1916 = fmul double %1915, %1915
  %1917 = fadd double %1912, %1916
  %1918 = call double @sqrt(double %1917) #8
  %1919 = getelementptr inbounds double* %36, i64 %indvars.iv.next602
  %1920 = load double* %1919, align 8, !tbaa !11
  %1921 = fmul double %1920, 0.000000e+00
  %1922 = fmul double %1921, %1921
  %1923 = getelementptr inbounds double* %43, i64 %indvars.iv.next602
  %1924 = load double* %1923, align 8, !tbaa !11
  %1925 = fmul double %1887, %1924
  %1926 = fmul double %1925, %1925
  %1927 = fadd double %1922, %1926
  %1928 = getelementptr inbounds double* %50, i64 %indvars.iv.next602
  %1929 = load double* %1928, align 8, !tbaa !11
  %1930 = fmul double %1770, %1929
  %1931 = fmul double %1930, %1930
  %1932 = fadd double %1927, %1931
  %1933 = call double @sqrt(double %1932) #8
  br label %1934

; <label>:1934                                    ; preds = %1903, %1898
  %u_src107.0 = phi double [ %1902, %1898 ], [ %1933, %1903 ]
  %u_dst108.0 = phi double [ %1900, %1898 ], [ %1918, %1903 ]
  %1935 = fadd double %u_src107.0, %u_dst108.0
  %1936 = fmul double %1886, %1935
  %1937 = getelementptr inbounds double* %63, i64 %indvars.iv.next602
  %1938 = load double* %1937, align 8, !tbaa !11
  %1939 = getelementptr inbounds double* %63, i64 %indvars.iv.next604
  %1940 = load double* %1939, align 8, !tbaa !11
  %1941 = fadd double %1938, %1940
  %1942 = fmul double %1941, %1941
  %1943 = fdiv double %1936, %1942
  %1944 = load i8**** %31, align 8, !tbaa !6
  %1945 = getelementptr inbounds i8*** %1944, i64 %indvars.iv645
  %1946 = bitcast i8*** %1945 to i64***
  %1947 = load i64*** %1946, align 8, !tbaa !10
  %1948 = load i64** %1947, align 8, !tbaa !10
  %1949 = fmul double %1943, 2.000000e+00
  %1950 = fmul double %1949, %finf
  %1951 = getelementptr inbounds i64* %1948, i64 %indvars.iv.next602
  %1952 = load i64* %1951, align 8, !tbaa !20
  %1953 = sitofp i64 %1952 to double
  %1954 = fsub double 1.000000e+00, %1943
  %1955 = fmul double %1954, %1953
  %1956 = fadd double %1950, %1955
  %1957 = fadd double %1943, 1.000000e+00
  %1958 = fdiv double %1956, %1957
  %1959 = fptosi double %1958 to i64
  %1960 = getelementptr inbounds i64* %1948, i64 %indvars.iv.next604
  store i64 %1959, i64* %1960, align 8, !tbaa !20
  %1961 = add nuw nsw i32 %i93.0473, 1
  %1962 = icmp slt i32 %1961, %1877
  br i1 %1962, label %1897, label %.loopexit382

.loopexit382:                                     ; preds = %1934, %1874, %1870
  %1963 = icmp ult i64 %1782, 4294967296
  br i1 %1963, label %2052, label %1964

; <label>:1964                                    ; preds = %.loopexit382
  %1965 = load i32* %1744, align 4, !tbaa !2
  %1966 = add nsw i32 %1965, -1
  %1967 = mul nsw i32 %1764, %indvars.iv599
  %1968 = add nsw i32 %1967, %indvars.iv597
  %1969 = mul nsw i32 %1968, %1965
  %1970 = add nsw i32 %1966, %1969
  %1971 = add nsw i32 %1965, -2
  %1972 = add nsw i32 %dy97.0, %indvars.iv597
  %1973 = mul nsw i32 %1764, %1766
  %1974 = add nsw i32 %1972, %1973
  %1975 = mul nsw i32 %1974, %1965
  %1976 = add nsw i32 %1971, %1975
  %ispos233 = icmp sgt i32 %dy97.0, -1
  %neg234 = sub nsw i32 0, %dy97.0
  %1977 = select i1 %ispos233, i32 %dy97.0, i32 %neg234
  %1978 = shl nsw i32 %1977, 1
  %1979 = or i32 %1978, 1
  %1980 = add nsw i32 %1979, %1768
  %1981 = sext i32 %1980 to i64
  %1982 = getelementptr inbounds [8 x double]* %dist, i64 0, i64 %1981
  %1983 = load double* %1982, align 8, !tbaa !11
  %1984 = add nsw i32 %1769, %1977
  %1985 = icmp eq i32 %1984, 1
  %1986 = sext i32 %1970 to i64
  %1987 = getelementptr inbounds double* %36, i64 %1986
  %1988 = load double* %1987, align 8, !tbaa !11
  br i1 %1985, label %1989, label %1995

; <label>:1989                                    ; preds = %1964
  %1990 = call double @fabs(double %1988) #8
  %1991 = sext i32 %1976 to i64
  %1992 = getelementptr inbounds double* %36, i64 %1991
  %1993 = load double* %1992, align 8, !tbaa !11
  %1994 = call double @fabs(double %1993) #8
  br label %2024

; <label>:1995                                    ; preds = %1964
  %1996 = fmul double %1988, %1988
  %1997 = sitofp i32 %dy97.0 to double
  %1998 = getelementptr inbounds double* %43, i64 %1986
  %1999 = load double* %1998, align 8, !tbaa !11
  %2000 = fmul double %1997, %1999
  %2001 = fmul double %2000, %2000
  %2002 = fadd double %1996, %2001
  %2003 = getelementptr inbounds double* %50, i64 %1986
  %2004 = load double* %2003, align 8, !tbaa !11
  %2005 = fmul double %1770, %2004
  %2006 = fmul double %2005, %2005
  %2007 = fadd double %2002, %2006
  %2008 = call double @sqrt(double %2007) #8
  %2009 = sext i32 %1976 to i64
  %2010 = getelementptr inbounds double* %36, i64 %2009
  %2011 = load double* %2010, align 8, !tbaa !11
  %2012 = fmul double %2011, %2011
  %2013 = getelementptr inbounds double* %43, i64 %2009
  %2014 = load double* %2013, align 8, !tbaa !11
  %2015 = fmul double %1997, %2014
  %2016 = fmul double %2015, %2015
  %2017 = fadd double %2012, %2016
  %2018 = getelementptr inbounds double* %50, i64 %2009
  %2019 = load double* %2018, align 8, !tbaa !11
  %2020 = fmul double %1770, %2019
  %2021 = fmul double %2020, %2020
  %2022 = fadd double %2017, %2021
  %2023 = call double @sqrt(double %2022) #8
  br label %2024

; <label>:2024                                    ; preds = %1995, %1989
  %.pre-phi655 = phi i64 [ %2009, %1995 ], [ %1991, %1989 ]
  %u_src111.0 = phi double [ %2023, %1995 ], [ %1994, %1989 ]
  %u_dst112.0 = phi double [ %2008, %1995 ], [ %1990, %1989 ]
  %2025 = fmul double %65, %1983
  %2026 = fadd double %u_src111.0, %u_dst112.0
  %2027 = fmul double %2025, %2026
  %2028 = getelementptr inbounds double* %63, i64 %.pre-phi655
  %2029 = load double* %2028, align 8, !tbaa !11
  %2030 = getelementptr inbounds double* %63, i64 %1986
  %2031 = load double* %2030, align 8, !tbaa !11
  %2032 = fadd double %2029, %2031
  %2033 = fmul double %2032, %2032
  %2034 = fdiv double %2027, %2033
  %2035 = load i8**** %31, align 8, !tbaa !6
  %2036 = getelementptr inbounds i8*** %2035, i64 %indvars.iv645
  %2037 = bitcast i8*** %2036 to i64***
  %2038 = load i64*** %2037, align 8, !tbaa !10
  %2039 = load i64** %2038, align 8, !tbaa !10
  %2040 = fmul double %2034, 2.000000e+00
  %2041 = fmul double %2040, %finf
  %2042 = getelementptr inbounds i64* %2039, i64 %.pre-phi655
  %2043 = load i64* %2042, align 8, !tbaa !20
  %2044 = sitofp i64 %2043 to double
  %2045 = fsub double 1.000000e+00, %2034
  %2046 = fmul double %2045, %2044
  %2047 = fadd double %2041, %2046
  %2048 = fadd double %2034, 1.000000e+00
  %2049 = fdiv double %2047, %2048
  %2050 = fptosi double %2049 to i64
  %2051 = getelementptr inbounds i64* %2039, i64 %1986
  store i64 %2050, i64* %2051, align 8, !tbaa !20
  br label %2052

; <label>:2052                                    ; preds = %.loopexit382, %2024
  %indvars.iv.next598 = add nuw nsw i32 %indvars.iv597, 1
  %2053 = icmp slt i32 %indvars.iv.next598, %1764
  br i1 %2053, label %1771, label %.loopexit391

.loopexit391:                                     ; preds = %2052, %1753, %.lr.ph484, %1762
  %indvars.iv.next600 = add nuw nsw i32 %indvars.iv599, 1
  %2054 = icmp slt i32 %indvars.iv.next600, %1746
  br i1 %2054, label %.lr.ph484, label %.loopexit395

; <label>:2055                                    ; preds = %._crit_edge
  br i1 %101, label %.preheader406, label %2060

.preheader406:                                    ; preds = %2055
  %2056 = load i32** %102, align 8, !tbaa !15
  %2057 = getelementptr inbounds i32* %2056, i64 2
  %2058 = load i32* %2057, align 4, !tbaa !2
  %2059 = icmp sgt i32 %2058, 0
  br i1 %2059, label %.lr.ph470, label %.loopexit395

; <label>:2060                                    ; preds = %2055
  %2061 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 765, i8* getelementptr inbounds ([84 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str18, i64 0, i64 0), i32 %3) #6
  br label %.loopexit414

.lr.ph470:                                        ; preds = %.preheader406, %.loopexit392
  %indvars.iv591 = phi i32 [ %indvars.iv.next592, %.loopexit392 ], [ 0, %.preheader406 ]
  %2062 = load i32* %103, align 16
  %2063 = or i32 %indvars.iv591, %2062
  %2064 = icmp eq i32 %2063, 0
  br i1 %2064, label %.loopexit392, label %2065

; <label>:2065                                    ; preds = %.lr.ph470
  %2066 = add nsw i32 %2058, -1
  %2067 = icmp eq i32 %indvars.iv591, %2066
  %2068 = load i32* %104, align 4
  %2069 = icmp eq i32 %2068, 0
  %or.cond759 = and i1 %2067, %2069
  br i1 %or.cond759, label %.loopexit392, label %2070

; <label>:2070                                    ; preds = %2065
  %2071 = load i32* %103, align 16
  %notlhs794 = icmp eq i32 %indvars.iv591, 0
  %notrhs795 = icmp ne i32 %2071, 0
  %or.cond762.not = and i1 %notrhs795, %notlhs794
  %.not763 = xor i1 %2067, true
  %brmerge764 = or i1 %or.cond762.not, %.not763
  %.mux765 = zext i1 %or.cond762.not to i32
  br i1 %brmerge764, label %2074, label %2072

; <label>:2072                                    ; preds = %2070
  %2073 = load i32* %104, align 4, !tbaa !2
  %not.365 = icmp ne i32 %2073, 0
  %.352 = sext i1 %not.365 to i32
  br label %2074

; <label>:2074                                    ; preds = %2070, %2072
  %dz119.0 = phi i32 [ %.352, %2072 ], [ %.mux765, %2070 ]
  %2075 = getelementptr inbounds i32* %2056, i64 1
  %2076 = load i32* %2075, align 4, !tbaa !2
  %2077 = icmp sgt i32 %2076, 0
  br i1 %2077, label %.lr.ph466, label %.loopexit392

.lr.ph466:                                        ; preds = %2074
  %2078 = add i32 %dz119.0, %indvars.iv591
  %ispos221 = icmp sgt i32 %dz119.0, -1
  %neg222 = sub nsw i32 0, %dz119.0
  %2079 = select i1 %ispos221, i32 %dz119.0, i32 %neg222
  %2080 = shl nsw i32 %2079, 2
  %2081 = add nsw i32 %2079, 1
  %2082 = sitofp i32 %dz119.0 to double
  br label %2083

; <label>:2083                                    ; preds = %.lr.ph466, %2364
  %indvars.iv589 = phi i32 [ 0, %.lr.ph466 ], [ %indvars.iv.next590, %2364 ]
  %2084 = icmp ne i32 %indvars.iv589, 0
  %2085 = load i32* %105, align 8
  %2086 = icmp eq i32 %2085, 0
  %or.cond767 = or i1 %2084, %2086
  br i1 %or.cond767, label %2087, label %2092

; <label>:2087                                    ; preds = %2083
  %2088 = add nsw i32 %2076, -1
  %2089 = icmp eq i32 %indvars.iv589, %2088
  br i1 %2089, label %2090, label %2092

; <label>:2090                                    ; preds = %2087
  %2091 = load i32* %106, align 4, !tbaa !2
  %not.364 = icmp ne i32 %2091, 0
  %.353 = sext i1 %not.364 to i32
  br label %2092

; <label>:2092                                    ; preds = %2083, %2090, %2087
  %dy118.0 = phi i32 [ 0, %2087 ], [ %.353, %2090 ], [ 1, %2083 ]
  %2093 = bitcast [6 x i32]* %doBC to i64*
  %2094 = load i64* %2093, align 16
  %2095 = trunc i64 %2094 to i32
  %2096 = icmp eq i32 %2095, 0
  br i1 %2096, label %2182, label %2097

; <label>:2097                                    ; preds = %2092
  %2098 = load i32* %2056, align 4, !tbaa !2
  %2099 = mul nsw i32 %2076, %indvars.iv591
  %2100 = add nsw i32 %2099, %indvars.iv589
  %2101 = mul nsw i32 %2100, %2098
  %2102 = add nsw i32 %dy118.0, %indvars.iv589
  %2103 = mul nsw i32 %2076, %2078
  %2104 = add nsw i32 %2102, %2103
  %2105 = mul nsw i32 %2104, %2098
  %2106 = add nsw i32 %2105, 1
  %ispos229 = icmp sgt i32 %dy118.0, -1
  %neg230 = sub nsw i32 0, %dy118.0
  %2107 = select i1 %ispos229, i32 %dy118.0, i32 %neg230
  %2108 = shl nsw i32 %2107, 1
  %2109 = or i32 %2108, 1
  %2110 = add nsw i32 %2109, %2080
  %2111 = sext i32 %2110 to i64
  %2112 = getelementptr inbounds [8 x double]* %dist, i64 0, i64 %2111
  %2113 = load double* %2112, align 8, !tbaa !11
  %2114 = add nsw i32 %2081, %2107
  %2115 = icmp eq i32 %2114, 1
  %2116 = sext i32 %2101 to i64
  %2117 = getelementptr inbounds double* %36, i64 %2116
  %2118 = load double* %2117, align 8, !tbaa !11
  br i1 %2115, label %2119, label %2125

; <label>:2119                                    ; preds = %2097
  %2120 = call double @fabs(double %2118) #8
  %2121 = sext i32 %2106 to i64
  %2122 = getelementptr inbounds double* %36, i64 %2121
  %2123 = load double* %2122, align 8, !tbaa !11
  %2124 = call double @fabs(double %2123) #8
  br label %2154

; <label>:2125                                    ; preds = %2097
  %2126 = fmul double %2118, %2118
  %2127 = sitofp i32 %dy118.0 to double
  %2128 = getelementptr inbounds double* %43, i64 %2116
  %2129 = load double* %2128, align 8, !tbaa !11
  %2130 = fmul double %2127, %2129
  %2131 = fmul double %2130, %2130
  %2132 = fadd double %2126, %2131
  %2133 = getelementptr inbounds double* %50, i64 %2116
  %2134 = load double* %2133, align 8, !tbaa !11
  %2135 = fmul double %2082, %2134
  %2136 = fmul double %2135, %2135
  %2137 = fadd double %2132, %2136
  %2138 = call double @sqrt(double %2137) #8
  %2139 = sext i32 %2106 to i64
  %2140 = getelementptr inbounds double* %36, i64 %2139
  %2141 = load double* %2140, align 8, !tbaa !11
  %2142 = fmul double %2141, %2141
  %2143 = getelementptr inbounds double* %43, i64 %2139
  %2144 = load double* %2143, align 8, !tbaa !11
  %2145 = fmul double %2127, %2144
  %2146 = fmul double %2145, %2145
  %2147 = fadd double %2142, %2146
  %2148 = getelementptr inbounds double* %50, i64 %2139
  %2149 = load double* %2148, align 8, !tbaa !11
  %2150 = fmul double %2082, %2149
  %2151 = fmul double %2150, %2150
  %2152 = fadd double %2147, %2151
  %2153 = call double @sqrt(double %2152) #8
  br label %2154

; <label>:2154                                    ; preds = %2125, %2119
  %.pre-phi652 = phi i64 [ %2139, %2125 ], [ %2121, %2119 ]
  %u_src124.0 = phi double [ %2153, %2125 ], [ %2124, %2119 ]
  %u_dst125.0 = phi double [ %2138, %2125 ], [ %2120, %2119 ]
  %2155 = fmul double %65, %2113
  %2156 = fadd double %u_src124.0, %u_dst125.0
  %2157 = fmul double %2155, %2156
  %2158 = getelementptr inbounds double* %63, i64 %.pre-phi652
  %2159 = load double* %2158, align 8, !tbaa !11
  %2160 = getelementptr inbounds double* %63, i64 %2116
  %2161 = load double* %2160, align 8, !tbaa !11
  %2162 = fadd double %2159, %2161
  %2163 = fmul double %2162, %2162
  %2164 = fdiv double %2157, %2163
  %2165 = load i8**** %31, align 8, !tbaa !6
  %2166 = getelementptr inbounds i8*** %2165, i64 %indvars.iv645
  %2167 = bitcast i8*** %2166 to float***
  %2168 = load float*** %2167, align 8, !tbaa !10
  %2169 = load float** %2168, align 8, !tbaa !10
  %2170 = fmul double %2164, 2.000000e+00
  %2171 = fmul double %2170, %finf
  %2172 = getelementptr inbounds float* %2169, i64 %.pre-phi652
  %2173 = load float* %2172, align 4, !tbaa !22
  %2174 = fpext float %2173 to double
  %2175 = fsub double 1.000000e+00, %2164
  %2176 = fmul double %2175, %2174
  %2177 = fadd double %2171, %2176
  %2178 = fadd double %2164, 1.000000e+00
  %2179 = fdiv double %2177, %2178
  %2180 = fptrunc double %2179 to float
  %2181 = getelementptr inbounds float* %2169, i64 %2116
  store float %2180, float* %2181, align 4, !tbaa !22
  br label %2182

; <label>:2182                                    ; preds = %2092, %2154
  %2183 = icmp ne i32 %dy118.0, 0
  %2184 = or i32 %dy118.0, %dz119.0
  %2185 = icmp eq i32 %2184, 0
  br i1 %2185, label %.loopexit383, label %2186

; <label>:2186                                    ; preds = %2182
  %2187 = load i32* %2056, align 4, !tbaa !2
  %ispos223 = icmp sgt i32 %dy118.0, -1
  %neg224 = sub nsw i32 0, %dy118.0
  %2188 = select i1 %ispos223, i32 %dy118.0, i32 %neg224
  %2189 = add nsw i32 %2187, -1
  %2190 = icmp sgt i32 %2189, 1
  br i1 %2190, label %.lr.ph463, label %.loopexit383

.lr.ph463:                                        ; preds = %2186
  %2191 = shl nsw i32 %2188, 1
  %2192 = add nsw i32 %2191, %2080
  %2193 = sext i32 %2192 to i64
  %2194 = getelementptr inbounds [8 x double]* %dist, i64 0, i64 %2193
  %2195 = load double* %2194, align 16, !tbaa !11
  %2196 = add nsw i32 %2188, %2079
  %2197 = icmp eq i32 %2196, 1
  %.354 = select i1 %2183, double* %43, double* %50
  %2198 = fmul double %65, %2195
  %2199 = sitofp i32 %dy118.0 to double
  %2200 = add i32 %dy118.0, %indvars.iv589
  %2201 = mul i32 %2078, %2076
  %2202 = add i32 %2200, %2201
  %2203 = mul i32 %2187, %2202
  %2204 = sext i32 %2203 to i64
  %2205 = mul i32 %indvars.iv591, %2076
  %2206 = add i32 %indvars.iv589, %2205
  %2207 = mul i32 %2187, %2206
  %2208 = sext i32 %2207 to i64
  br label %2209

; <label>:2209                                    ; preds = %.lr.ph463, %2246
  %indvars.iv595 = phi i64 [ %2208, %.lr.ph463 ], [ %indvars.iv.next596, %2246 ]
  %indvars.iv593 = phi i64 [ %2204, %.lr.ph463 ], [ %indvars.iv.next594, %2246 ]
  %i114.0459 = phi i32 [ 1, %.lr.ph463 ], [ %2273, %2246 ]
  %indvars.iv.next596 = add i64 %indvars.iv595, 1
  %indvars.iv.next594 = add i64 %indvars.iv593, 1
  br i1 %2197, label %2210, label %2215

; <label>:2210                                    ; preds = %2209
  %.in227 = getelementptr inbounds double* %.354, i64 %indvars.iv.next596
  %2211 = load double* %.in227, align 8
  %2212 = call double @fabs(double %2211) #8
  %.in228 = getelementptr inbounds double* %.354, i64 %indvars.iv.next594
  %2213 = load double* %.in228, align 8
  %2214 = call double @fabs(double %2213) #8
  br label %2246

; <label>:2215                                    ; preds = %2209
  %2216 = getelementptr inbounds double* %36, i64 %indvars.iv.next596
  %2217 = load double* %2216, align 8, !tbaa !11
  %2218 = fmul double %2217, 0.000000e+00
  %2219 = fmul double %2218, %2218
  %2220 = getelementptr inbounds double* %43, i64 %indvars.iv.next596
  %2221 = load double* %2220, align 8, !tbaa !11
  %2222 = fmul double %2199, %2221
  %2223 = fmul double %2222, %2222
  %2224 = fadd double %2219, %2223
  %2225 = getelementptr inbounds double* %50, i64 %indvars.iv.next596
  %2226 = load double* %2225, align 8, !tbaa !11
  %2227 = fmul double %2082, %2226
  %2228 = fmul double %2227, %2227
  %2229 = fadd double %2224, %2228
  %2230 = call double @sqrt(double %2229) #8
  %2231 = getelementptr inbounds double* %36, i64 %indvars.iv.next594
  %2232 = load double* %2231, align 8, !tbaa !11
  %2233 = fmul double %2232, 0.000000e+00
  %2234 = fmul double %2233, %2233
  %2235 = getelementptr inbounds double* %43, i64 %indvars.iv.next594
  %2236 = load double* %2235, align 8, !tbaa !11
  %2237 = fmul double %2199, %2236
  %2238 = fmul double %2237, %2237
  %2239 = fadd double %2234, %2238
  %2240 = getelementptr inbounds double* %50, i64 %indvars.iv.next594
  %2241 = load double* %2240, align 8, !tbaa !11
  %2242 = fmul double %2082, %2241
  %2243 = fmul double %2242, %2242
  %2244 = fadd double %2239, %2243
  %2245 = call double @sqrt(double %2244) #8
  br label %2246

; <label>:2246                                    ; preds = %2215, %2210
  %u_src128.0 = phi double [ %2214, %2210 ], [ %2245, %2215 ]
  %u_dst129.0 = phi double [ %2212, %2210 ], [ %2230, %2215 ]
  %2247 = fadd double %u_src128.0, %u_dst129.0
  %2248 = fmul double %2198, %2247
  %2249 = getelementptr inbounds double* %63, i64 %indvars.iv.next594
  %2250 = load double* %2249, align 8, !tbaa !11
  %2251 = getelementptr inbounds double* %63, i64 %indvars.iv.next596
  %2252 = load double* %2251, align 8, !tbaa !11
  %2253 = fadd double %2250, %2252
  %2254 = fmul double %2253, %2253
  %2255 = fdiv double %2248, %2254
  %2256 = load i8**** %31, align 8, !tbaa !6
  %2257 = getelementptr inbounds i8*** %2256, i64 %indvars.iv645
  %2258 = bitcast i8*** %2257 to float***
  %2259 = load float*** %2258, align 8, !tbaa !10
  %2260 = load float** %2259, align 8, !tbaa !10
  %2261 = fmul double %2255, 2.000000e+00
  %2262 = fmul double %2261, %finf
  %2263 = getelementptr inbounds float* %2260, i64 %indvars.iv.next594
  %2264 = load float* %2263, align 4, !tbaa !22
  %2265 = fpext float %2264 to double
  %2266 = fsub double 1.000000e+00, %2255
  %2267 = fmul double %2266, %2265
  %2268 = fadd double %2262, %2267
  %2269 = fadd double %2255, 1.000000e+00
  %2270 = fdiv double %2268, %2269
  %2271 = fptrunc double %2270 to float
  %2272 = getelementptr inbounds float* %2260, i64 %indvars.iv.next596
  store float %2271, float* %2272, align 4, !tbaa !22
  %2273 = add nuw nsw i32 %i114.0459, 1
  %2274 = icmp slt i32 %2273, %2189
  br i1 %2274, label %2209, label %.loopexit383

.loopexit383:                                     ; preds = %2246, %2186, %2182
  %2275 = icmp ult i64 %2094, 4294967296
  br i1 %2275, label %2364, label %2276

; <label>:2276                                    ; preds = %.loopexit383
  %2277 = load i32* %2056, align 4, !tbaa !2
  %2278 = add nsw i32 %2277, -1
  %2279 = mul nsw i32 %2076, %indvars.iv591
  %2280 = add nsw i32 %2279, %indvars.iv589
  %2281 = mul nsw i32 %2280, %2277
  %2282 = add nsw i32 %2278, %2281
  %2283 = add nsw i32 %2277, -2
  %2284 = add nsw i32 %dy118.0, %indvars.iv589
  %2285 = mul nsw i32 %2076, %2078
  %2286 = add nsw i32 %2284, %2285
  %2287 = mul nsw i32 %2286, %2277
  %2288 = add nsw i32 %2283, %2287
  %ispos219 = icmp sgt i32 %dy118.0, -1
  %neg220 = sub nsw i32 0, %dy118.0
  %2289 = select i1 %ispos219, i32 %dy118.0, i32 %neg220
  %2290 = shl nsw i32 %2289, 1
  %2291 = or i32 %2290, 1
  %2292 = add nsw i32 %2291, %2080
  %2293 = sext i32 %2292 to i64
  %2294 = getelementptr inbounds [8 x double]* %dist, i64 0, i64 %2293
  %2295 = load double* %2294, align 8, !tbaa !11
  %2296 = add nsw i32 %2081, %2289
  %2297 = icmp eq i32 %2296, 1
  %2298 = sext i32 %2282 to i64
  %2299 = getelementptr inbounds double* %36, i64 %2298
  %2300 = load double* %2299, align 8, !tbaa !11
  br i1 %2297, label %2301, label %2307

; <label>:2301                                    ; preds = %2276
  %2302 = call double @fabs(double %2300) #8
  %2303 = sext i32 %2288 to i64
  %2304 = getelementptr inbounds double* %36, i64 %2303
  %2305 = load double* %2304, align 8, !tbaa !11
  %2306 = call double @fabs(double %2305) #8
  br label %2336

; <label>:2307                                    ; preds = %2276
  %2308 = fmul double %2300, %2300
  %2309 = sitofp i32 %dy118.0 to double
  %2310 = getelementptr inbounds double* %43, i64 %2298
  %2311 = load double* %2310, align 8, !tbaa !11
  %2312 = fmul double %2309, %2311
  %2313 = fmul double %2312, %2312
  %2314 = fadd double %2308, %2313
  %2315 = getelementptr inbounds double* %50, i64 %2298
  %2316 = load double* %2315, align 8, !tbaa !11
  %2317 = fmul double %2082, %2316
  %2318 = fmul double %2317, %2317
  %2319 = fadd double %2314, %2318
  %2320 = call double @sqrt(double %2319) #8
  %2321 = sext i32 %2288 to i64
  %2322 = getelementptr inbounds double* %36, i64 %2321
  %2323 = load double* %2322, align 8, !tbaa !11
  %2324 = fmul double %2323, %2323
  %2325 = getelementptr inbounds double* %43, i64 %2321
  %2326 = load double* %2325, align 8, !tbaa !11
  %2327 = fmul double %2309, %2326
  %2328 = fmul double %2327, %2327
  %2329 = fadd double %2324, %2328
  %2330 = getelementptr inbounds double* %50, i64 %2321
  %2331 = load double* %2330, align 8, !tbaa !11
  %2332 = fmul double %2082, %2331
  %2333 = fmul double %2332, %2332
  %2334 = fadd double %2329, %2333
  %2335 = call double @sqrt(double %2334) #8
  br label %2336

; <label>:2336                                    ; preds = %2307, %2301
  %.pre-phi653 = phi i64 [ %2321, %2307 ], [ %2303, %2301 ]
  %u_src132.0 = phi double [ %2335, %2307 ], [ %2306, %2301 ]
  %u_dst133.0 = phi double [ %2320, %2307 ], [ %2302, %2301 ]
  %2337 = fmul double %65, %2295
  %2338 = fadd double %u_src132.0, %u_dst133.0
  %2339 = fmul double %2337, %2338
  %2340 = getelementptr inbounds double* %63, i64 %.pre-phi653
  %2341 = load double* %2340, align 8, !tbaa !11
  %2342 = getelementptr inbounds double* %63, i64 %2298
  %2343 = load double* %2342, align 8, !tbaa !11
  %2344 = fadd double %2341, %2343
  %2345 = fmul double %2344, %2344
  %2346 = fdiv double %2339, %2345
  %2347 = load i8**** %31, align 8, !tbaa !6
  %2348 = getelementptr inbounds i8*** %2347, i64 %indvars.iv645
  %2349 = bitcast i8*** %2348 to float***
  %2350 = load float*** %2349, align 8, !tbaa !10
  %2351 = load float** %2350, align 8, !tbaa !10
  %2352 = fmul double %2346, 2.000000e+00
  %2353 = fmul double %2352, %finf
  %2354 = getelementptr inbounds float* %2351, i64 %.pre-phi653
  %2355 = load float* %2354, align 4, !tbaa !22
  %2356 = fpext float %2355 to double
  %2357 = fsub double 1.000000e+00, %2346
  %2358 = fmul double %2357, %2356
  %2359 = fadd double %2353, %2358
  %2360 = fadd double %2346, 1.000000e+00
  %2361 = fdiv double %2359, %2360
  %2362 = fptrunc double %2361 to float
  %2363 = getelementptr inbounds float* %2351, i64 %2298
  store float %2362, float* %2363, align 4, !tbaa !22
  br label %2364

; <label>:2364                                    ; preds = %.loopexit383, %2336
  %indvars.iv.next590 = add nuw nsw i32 %indvars.iv589, 1
  %2365 = icmp slt i32 %indvars.iv.next590, %2076
  br i1 %2365, label %2083, label %.loopexit392

.loopexit392:                                     ; preds = %2364, %2065, %.lr.ph470, %2074
  %indvars.iv.next592 = add nuw nsw i32 %indvars.iv591, 1
  %2366 = icmp slt i32 %indvars.iv.next592, %2058
  br i1 %2366, label %.lr.ph470, label %.loopexit395

; <label>:2367                                    ; preds = %._crit_edge
  br i1 %101, label %.preheader408, label %2372

.preheader408:                                    ; preds = %2367
  %2368 = load i32** %102, align 8, !tbaa !15
  %2369 = getelementptr inbounds i32* %2368, i64 2
  %2370 = load i32* %2369, align 4, !tbaa !2
  %2371 = icmp sgt i32 %2370, 0
  br i1 %2371, label %.lr.ph456, label %.loopexit395

; <label>:2372                                    ; preds = %2367
  %2373 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 770, i8* getelementptr inbounds ([84 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str18, i64 0, i64 0), i32 %3) #6
  br label %.loopexit414

.lr.ph456:                                        ; preds = %.preheader408, %.loopexit393
  %indvars.iv583 = phi i32 [ %indvars.iv.next584, %.loopexit393 ], [ 0, %.preheader408 ]
  %2374 = load i32* %103, align 16
  %2375 = or i32 %indvars.iv583, %2374
  %2376 = icmp eq i32 %2375, 0
  br i1 %2376, label %.loopexit393, label %2377

; <label>:2377                                    ; preds = %.lr.ph456
  %2378 = add nsw i32 %2370, -1
  %2379 = icmp eq i32 %indvars.iv583, %2378
  %2380 = load i32* %104, align 4
  %2381 = icmp eq i32 %2380, 0
  %or.cond771 = and i1 %2379, %2381
  br i1 %or.cond771, label %.loopexit393, label %2382

; <label>:2382                                    ; preds = %2377
  %2383 = load i32* %103, align 16
  %notlhs792 = icmp eq i32 %indvars.iv583, 0
  %notrhs793 = icmp ne i32 %2383, 0
  %or.cond774.not = and i1 %notrhs793, %notlhs792
  %.not775 = xor i1 %2379, true
  %brmerge776 = or i1 %or.cond774.not, %.not775
  %.mux777 = zext i1 %or.cond774.not to i32
  br i1 %brmerge776, label %2386, label %2384

; <label>:2384                                    ; preds = %2382
  %2385 = load i32* %104, align 4, !tbaa !2
  %not.363 = icmp ne i32 %2385, 0
  %.355 = sext i1 %not.363 to i32
  br label %2386

; <label>:2386                                    ; preds = %2382, %2384
  %dz140.0 = phi i32 [ %.355, %2384 ], [ %.mux777, %2382 ]
  %2387 = getelementptr inbounds i32* %2368, i64 1
  %2388 = load i32* %2387, align 4, !tbaa !2
  %2389 = icmp sgt i32 %2388, 0
  br i1 %2389, label %.lr.ph452, label %.loopexit393

.lr.ph452:                                        ; preds = %2386
  %2390 = add i32 %dz140.0, %indvars.iv583
  %ispos207 = icmp sgt i32 %dz140.0, -1
  %neg208 = sub nsw i32 0, %dz140.0
  %2391 = select i1 %ispos207, i32 %dz140.0, i32 %neg208
  %2392 = shl nsw i32 %2391, 2
  %2393 = add nsw i32 %2391, 1
  %2394 = sitofp i32 %dz140.0 to double
  br label %2395

; <label>:2395                                    ; preds = %.lr.ph452, %2670
  %indvars.iv581 = phi i32 [ 0, %.lr.ph452 ], [ %indvars.iv.next582, %2670 ]
  %2396 = icmp ne i32 %indvars.iv581, 0
  %2397 = load i32* %105, align 8
  %2398 = icmp eq i32 %2397, 0
  %or.cond779 = or i1 %2396, %2398
  br i1 %or.cond779, label %2399, label %2404

; <label>:2399                                    ; preds = %2395
  %2400 = add nsw i32 %2388, -1
  %2401 = icmp eq i32 %indvars.iv581, %2400
  br i1 %2401, label %2402, label %2404

; <label>:2402                                    ; preds = %2399
  %2403 = load i32* %106, align 4, !tbaa !2
  %not.362 = icmp ne i32 %2403, 0
  %.356 = sext i1 %not.362 to i32
  br label %2404

; <label>:2404                                    ; preds = %2395, %2402, %2399
  %dy139.0 = phi i32 [ 0, %2399 ], [ %.356, %2402 ], [ 1, %2395 ]
  %2405 = bitcast [6 x i32]* %doBC to i64*
  %2406 = load i64* %2405, align 16
  %2407 = trunc i64 %2406 to i32
  %2408 = icmp eq i32 %2407, 0
  br i1 %2408, label %2492, label %2409

; <label>:2409                                    ; preds = %2404
  %2410 = load i32* %2368, align 4, !tbaa !2
  %2411 = mul nsw i32 %2388, %indvars.iv583
  %2412 = add nsw i32 %2411, %indvars.iv581
  %2413 = mul nsw i32 %2412, %2410
  %2414 = add nsw i32 %dy139.0, %indvars.iv581
  %2415 = mul nsw i32 %2388, %2390
  %2416 = add nsw i32 %2414, %2415
  %2417 = mul nsw i32 %2416, %2410
  %2418 = add nsw i32 %2417, 1
  %ispos215 = icmp sgt i32 %dy139.0, -1
  %neg216 = sub nsw i32 0, %dy139.0
  %2419 = select i1 %ispos215, i32 %dy139.0, i32 %neg216
  %2420 = shl nsw i32 %2419, 1
  %2421 = or i32 %2420, 1
  %2422 = add nsw i32 %2421, %2392
  %2423 = sext i32 %2422 to i64
  %2424 = getelementptr inbounds [8 x double]* %dist, i64 0, i64 %2423
  %2425 = load double* %2424, align 8, !tbaa !11
  %2426 = add nsw i32 %2393, %2419
  %2427 = icmp eq i32 %2426, 1
  %2428 = sext i32 %2413 to i64
  %2429 = getelementptr inbounds double* %36, i64 %2428
  %2430 = load double* %2429, align 8, !tbaa !11
  br i1 %2427, label %2431, label %2437

; <label>:2431                                    ; preds = %2409
  %2432 = call double @fabs(double %2430) #8
  %2433 = sext i32 %2418 to i64
  %2434 = getelementptr inbounds double* %36, i64 %2433
  %2435 = load double* %2434, align 8, !tbaa !11
  %2436 = call double @fabs(double %2435) #8
  br label %2466

; <label>:2437                                    ; preds = %2409
  %2438 = fmul double %2430, %2430
  %2439 = sitofp i32 %dy139.0 to double
  %2440 = getelementptr inbounds double* %43, i64 %2428
  %2441 = load double* %2440, align 8, !tbaa !11
  %2442 = fmul double %2439, %2441
  %2443 = fmul double %2442, %2442
  %2444 = fadd double %2438, %2443
  %2445 = getelementptr inbounds double* %50, i64 %2428
  %2446 = load double* %2445, align 8, !tbaa !11
  %2447 = fmul double %2394, %2446
  %2448 = fmul double %2447, %2447
  %2449 = fadd double %2444, %2448
  %2450 = call double @sqrt(double %2449) #8
  %2451 = sext i32 %2418 to i64
  %2452 = getelementptr inbounds double* %36, i64 %2451
  %2453 = load double* %2452, align 8, !tbaa !11
  %2454 = fmul double %2453, %2453
  %2455 = getelementptr inbounds double* %43, i64 %2451
  %2456 = load double* %2455, align 8, !tbaa !11
  %2457 = fmul double %2439, %2456
  %2458 = fmul double %2457, %2457
  %2459 = fadd double %2454, %2458
  %2460 = getelementptr inbounds double* %50, i64 %2451
  %2461 = load double* %2460, align 8, !tbaa !11
  %2462 = fmul double %2394, %2461
  %2463 = fmul double %2462, %2462
  %2464 = fadd double %2459, %2463
  %2465 = call double @sqrt(double %2464) #8
  br label %2466

; <label>:2466                                    ; preds = %2437, %2431
  %.pre-phi650 = phi i64 [ %2451, %2437 ], [ %2433, %2431 ]
  %u_src145.0 = phi double [ %2465, %2437 ], [ %2436, %2431 ]
  %u_dst146.0 = phi double [ %2450, %2437 ], [ %2432, %2431 ]
  %2467 = fmul double %65, %2425
  %2468 = fadd double %u_src145.0, %u_dst146.0
  %2469 = fmul double %2467, %2468
  %2470 = getelementptr inbounds double* %63, i64 %.pre-phi650
  %2471 = load double* %2470, align 8, !tbaa !11
  %2472 = getelementptr inbounds double* %63, i64 %2428
  %2473 = load double* %2472, align 8, !tbaa !11
  %2474 = fadd double %2471, %2473
  %2475 = fmul double %2474, %2474
  %2476 = fdiv double %2469, %2475
  %2477 = load i8**** %31, align 8, !tbaa !6
  %2478 = getelementptr inbounds i8*** %2477, i64 %indvars.iv645
  %2479 = bitcast i8*** %2478 to double***
  %2480 = load double*** %2479, align 8, !tbaa !10
  %2481 = load double** %2480, align 8, !tbaa !10
  %2482 = fmul double %2476, 2.000000e+00
  %2483 = fmul double %2482, %finf
  %2484 = getelementptr inbounds double* %2481, i64 %.pre-phi650
  %2485 = load double* %2484, align 8, !tbaa !11
  %2486 = fsub double 1.000000e+00, %2476
  %2487 = fmul double %2486, %2485
  %2488 = fadd double %2483, %2487
  %2489 = fadd double %2476, 1.000000e+00
  %2490 = fdiv double %2488, %2489
  %2491 = getelementptr inbounds double* %2481, i64 %2428
  store double %2490, double* %2491, align 8, !tbaa !11
  br label %2492

; <label>:2492                                    ; preds = %2404, %2466
  %2493 = icmp ne i32 %dy139.0, 0
  %2494 = or i32 %dy139.0, %dz140.0
  %2495 = icmp eq i32 %2494, 0
  br i1 %2495, label %.loopexit384, label %2496

; <label>:2496                                    ; preds = %2492
  %2497 = load i32* %2368, align 4, !tbaa !2
  %ispos209 = icmp sgt i32 %dy139.0, -1
  %neg210 = sub nsw i32 0, %dy139.0
  %2498 = select i1 %ispos209, i32 %dy139.0, i32 %neg210
  %2499 = add nsw i32 %2497, -1
  %2500 = icmp sgt i32 %2499, 1
  br i1 %2500, label %.lr.ph449, label %.loopexit384

.lr.ph449:                                        ; preds = %2496
  %2501 = shl nsw i32 %2498, 1
  %2502 = add nsw i32 %2501, %2392
  %2503 = sext i32 %2502 to i64
  %2504 = getelementptr inbounds [8 x double]* %dist, i64 0, i64 %2503
  %2505 = load double* %2504, align 16, !tbaa !11
  %2506 = add nsw i32 %2498, %2391
  %2507 = icmp eq i32 %2506, 1
  %.357 = select i1 %2493, double* %43, double* %50
  %2508 = fmul double %65, %2505
  %2509 = sitofp i32 %dy139.0 to double
  %2510 = add i32 %dy139.0, %indvars.iv581
  %2511 = mul i32 %2390, %2388
  %2512 = add i32 %2510, %2511
  %2513 = mul i32 %2497, %2512
  %2514 = sext i32 %2513 to i64
  %2515 = mul i32 %indvars.iv583, %2388
  %2516 = add i32 %indvars.iv581, %2515
  %2517 = mul i32 %2497, %2516
  %2518 = sext i32 %2517 to i64
  br label %2519

; <label>:2519                                    ; preds = %.lr.ph449, %2556
  %indvars.iv587 = phi i64 [ %2518, %.lr.ph449 ], [ %indvars.iv.next588, %2556 ]
  %indvars.iv585 = phi i64 [ %2514, %.lr.ph449 ], [ %indvars.iv.next586, %2556 ]
  %i135.0445 = phi i32 [ 1, %.lr.ph449 ], [ %2581, %2556 ]
  %indvars.iv.next588 = add i64 %indvars.iv587, 1
  %indvars.iv.next586 = add i64 %indvars.iv585, 1
  br i1 %2507, label %2520, label %2525

; <label>:2520                                    ; preds = %2519
  %.in213 = getelementptr inbounds double* %.357, i64 %indvars.iv.next588
  %2521 = load double* %.in213, align 8
  %2522 = call double @fabs(double %2521) #8
  %.in214 = getelementptr inbounds double* %.357, i64 %indvars.iv.next586
  %2523 = load double* %.in214, align 8
  %2524 = call double @fabs(double %2523) #8
  br label %2556

; <label>:2525                                    ; preds = %2519
  %2526 = getelementptr inbounds double* %36, i64 %indvars.iv.next588
  %2527 = load double* %2526, align 8, !tbaa !11
  %2528 = fmul double %2527, 0.000000e+00
  %2529 = fmul double %2528, %2528
  %2530 = getelementptr inbounds double* %43, i64 %indvars.iv.next588
  %2531 = load double* %2530, align 8, !tbaa !11
  %2532 = fmul double %2509, %2531
  %2533 = fmul double %2532, %2532
  %2534 = fadd double %2529, %2533
  %2535 = getelementptr inbounds double* %50, i64 %indvars.iv.next588
  %2536 = load double* %2535, align 8, !tbaa !11
  %2537 = fmul double %2394, %2536
  %2538 = fmul double %2537, %2537
  %2539 = fadd double %2534, %2538
  %2540 = call double @sqrt(double %2539) #8
  %2541 = getelementptr inbounds double* %36, i64 %indvars.iv.next586
  %2542 = load double* %2541, align 8, !tbaa !11
  %2543 = fmul double %2542, 0.000000e+00
  %2544 = fmul double %2543, %2543
  %2545 = getelementptr inbounds double* %43, i64 %indvars.iv.next586
  %2546 = load double* %2545, align 8, !tbaa !11
  %2547 = fmul double %2509, %2546
  %2548 = fmul double %2547, %2547
  %2549 = fadd double %2544, %2548
  %2550 = getelementptr inbounds double* %50, i64 %indvars.iv.next586
  %2551 = load double* %2550, align 8, !tbaa !11
  %2552 = fmul double %2394, %2551
  %2553 = fmul double %2552, %2552
  %2554 = fadd double %2549, %2553
  %2555 = call double @sqrt(double %2554) #8
  br label %2556

; <label>:2556                                    ; preds = %2525, %2520
  %u_src149.0 = phi double [ %2524, %2520 ], [ %2555, %2525 ]
  %u_dst150.0 = phi double [ %2522, %2520 ], [ %2540, %2525 ]
  %2557 = fadd double %u_src149.0, %u_dst150.0
  %2558 = fmul double %2508, %2557
  %2559 = getelementptr inbounds double* %63, i64 %indvars.iv.next586
  %2560 = load double* %2559, align 8, !tbaa !11
  %2561 = getelementptr inbounds double* %63, i64 %indvars.iv.next588
  %2562 = load double* %2561, align 8, !tbaa !11
  %2563 = fadd double %2560, %2562
  %2564 = fmul double %2563, %2563
  %2565 = fdiv double %2558, %2564
  %2566 = load i8**** %31, align 8, !tbaa !6
  %2567 = getelementptr inbounds i8*** %2566, i64 %indvars.iv645
  %2568 = bitcast i8*** %2567 to double***
  %2569 = load double*** %2568, align 8, !tbaa !10
  %2570 = load double** %2569, align 8, !tbaa !10
  %2571 = fmul double %2565, 2.000000e+00
  %2572 = fmul double %2571, %finf
  %2573 = getelementptr inbounds double* %2570, i64 %indvars.iv.next586
  %2574 = load double* %2573, align 8, !tbaa !11
  %2575 = fsub double 1.000000e+00, %2565
  %2576 = fmul double %2575, %2574
  %2577 = fadd double %2572, %2576
  %2578 = fadd double %2565, 1.000000e+00
  %2579 = fdiv double %2577, %2578
  %2580 = getelementptr inbounds double* %2570, i64 %indvars.iv.next588
  store double %2579, double* %2580, align 8, !tbaa !11
  %2581 = add nuw nsw i32 %i135.0445, 1
  %2582 = icmp slt i32 %2581, %2499
  br i1 %2582, label %2519, label %.loopexit384

.loopexit384:                                     ; preds = %2556, %2496, %2492
  %2583 = icmp ult i64 %2406, 4294967296
  br i1 %2583, label %2670, label %2584

; <label>:2584                                    ; preds = %.loopexit384
  %2585 = load i32* %2368, align 4, !tbaa !2
  %2586 = add nsw i32 %2585, -1
  %2587 = mul nsw i32 %2388, %indvars.iv583
  %2588 = add nsw i32 %2587, %indvars.iv581
  %2589 = mul nsw i32 %2588, %2585
  %2590 = add nsw i32 %2586, %2589
  %2591 = add nsw i32 %2585, -2
  %2592 = add nsw i32 %dy139.0, %indvars.iv581
  %2593 = mul nsw i32 %2388, %2390
  %2594 = add nsw i32 %2592, %2593
  %2595 = mul nsw i32 %2594, %2585
  %2596 = add nsw i32 %2591, %2595
  %ispos205 = icmp sgt i32 %dy139.0, -1
  %neg206 = sub nsw i32 0, %dy139.0
  %2597 = select i1 %ispos205, i32 %dy139.0, i32 %neg206
  %2598 = shl nsw i32 %2597, 1
  %2599 = or i32 %2598, 1
  %2600 = add nsw i32 %2599, %2392
  %2601 = sext i32 %2600 to i64
  %2602 = getelementptr inbounds [8 x double]* %dist, i64 0, i64 %2601
  %2603 = load double* %2602, align 8, !tbaa !11
  %2604 = add nsw i32 %2393, %2597
  %2605 = icmp eq i32 %2604, 1
  %2606 = sext i32 %2590 to i64
  %2607 = getelementptr inbounds double* %36, i64 %2606
  %2608 = load double* %2607, align 8, !tbaa !11
  br i1 %2605, label %2609, label %2615

; <label>:2609                                    ; preds = %2584
  %2610 = call double @fabs(double %2608) #8
  %2611 = sext i32 %2596 to i64
  %2612 = getelementptr inbounds double* %36, i64 %2611
  %2613 = load double* %2612, align 8, !tbaa !11
  %2614 = call double @fabs(double %2613) #8
  br label %2644

; <label>:2615                                    ; preds = %2584
  %2616 = fmul double %2608, %2608
  %2617 = sitofp i32 %dy139.0 to double
  %2618 = getelementptr inbounds double* %43, i64 %2606
  %2619 = load double* %2618, align 8, !tbaa !11
  %2620 = fmul double %2617, %2619
  %2621 = fmul double %2620, %2620
  %2622 = fadd double %2616, %2621
  %2623 = getelementptr inbounds double* %50, i64 %2606
  %2624 = load double* %2623, align 8, !tbaa !11
  %2625 = fmul double %2394, %2624
  %2626 = fmul double %2625, %2625
  %2627 = fadd double %2622, %2626
  %2628 = call double @sqrt(double %2627) #8
  %2629 = sext i32 %2596 to i64
  %2630 = getelementptr inbounds double* %36, i64 %2629
  %2631 = load double* %2630, align 8, !tbaa !11
  %2632 = fmul double %2631, %2631
  %2633 = getelementptr inbounds double* %43, i64 %2629
  %2634 = load double* %2633, align 8, !tbaa !11
  %2635 = fmul double %2617, %2634
  %2636 = fmul double %2635, %2635
  %2637 = fadd double %2632, %2636
  %2638 = getelementptr inbounds double* %50, i64 %2629
  %2639 = load double* %2638, align 8, !tbaa !11
  %2640 = fmul double %2394, %2639
  %2641 = fmul double %2640, %2640
  %2642 = fadd double %2637, %2641
  %2643 = call double @sqrt(double %2642) #8
  br label %2644

; <label>:2644                                    ; preds = %2615, %2609
  %.pre-phi651 = phi i64 [ %2629, %2615 ], [ %2611, %2609 ]
  %u_src153.0 = phi double [ %2643, %2615 ], [ %2614, %2609 ]
  %u_dst154.0 = phi double [ %2628, %2615 ], [ %2610, %2609 ]
  %2645 = fmul double %65, %2603
  %2646 = fadd double %u_src153.0, %u_dst154.0
  %2647 = fmul double %2645, %2646
  %2648 = getelementptr inbounds double* %63, i64 %.pre-phi651
  %2649 = load double* %2648, align 8, !tbaa !11
  %2650 = getelementptr inbounds double* %63, i64 %2606
  %2651 = load double* %2650, align 8, !tbaa !11
  %2652 = fadd double %2649, %2651
  %2653 = fmul double %2652, %2652
  %2654 = fdiv double %2647, %2653
  %2655 = load i8**** %31, align 8, !tbaa !6
  %2656 = getelementptr inbounds i8*** %2655, i64 %indvars.iv645
  %2657 = bitcast i8*** %2656 to double***
  %2658 = load double*** %2657, align 8, !tbaa !10
  %2659 = load double** %2658, align 8, !tbaa !10
  %2660 = fmul double %2654, 2.000000e+00
  %2661 = fmul double %2660, %finf
  %2662 = getelementptr inbounds double* %2659, i64 %.pre-phi651
  %2663 = load double* %2662, align 8, !tbaa !11
  %2664 = fsub double 1.000000e+00, %2654
  %2665 = fmul double %2664, %2663
  %2666 = fadd double %2661, %2665
  %2667 = fadd double %2654, 1.000000e+00
  %2668 = fdiv double %2666, %2667
  %2669 = getelementptr inbounds double* %2659, i64 %2606
  store double %2668, double* %2669, align 8, !tbaa !11
  br label %2670

; <label>:2670                                    ; preds = %.loopexit384, %2644
  %indvars.iv.next582 = add nuw nsw i32 %indvars.iv581, 1
  %2671 = icmp slt i32 %indvars.iv.next582, %2388
  br i1 %2671, label %2395, label %.loopexit393

.loopexit393:                                     ; preds = %2670, %2377, %.lr.ph456, %2386
  %indvars.iv.next584 = add nuw nsw i32 %indvars.iv583, 1
  %2672 = icmp slt i32 %indvars.iv.next584, %2370
  br i1 %2672, label %.lr.ph456, label %.loopexit395

; <label>:2673                                    ; preds = %._crit_edge
  br i1 %101, label %.preheader410, label %2678

.preheader410:                                    ; preds = %2673
  %2674 = load i32** %102, align 8, !tbaa !15
  %2675 = getelementptr inbounds i32* %2674, i64 2
  %2676 = load i32* %2675, align 4, !tbaa !2
  %2677 = icmp sgt i32 %2676, 0
  br i1 %2677, label %.lr.ph442, label %.loopexit395

; <label>:2678                                    ; preds = %2673
  %2679 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 775, i8* getelementptr inbounds ([84 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str18, i64 0, i64 0), i32 %3) #6
  br label %.loopexit414

.lr.ph442:                                        ; preds = %.preheader410, %.loopexit394
  %indvars.iv575 = phi i32 [ %indvars.iv.next576, %.loopexit394 ], [ 0, %.preheader410 ]
  %2680 = load i32* %103, align 16
  %2681 = or i32 %indvars.iv575, %2680
  %2682 = icmp eq i32 %2681, 0
  br i1 %2682, label %.loopexit394, label %2683

; <label>:2683                                    ; preds = %.lr.ph442
  %2684 = add nsw i32 %2676, -1
  %2685 = icmp eq i32 %indvars.iv575, %2684
  %2686 = load i32* %104, align 4
  %2687 = icmp eq i32 %2686, 0
  %or.cond783 = and i1 %2685, %2687
  br i1 %or.cond783, label %.loopexit394, label %2688

; <label>:2688                                    ; preds = %2683
  %2689 = load i32* %103, align 16
  %notlhs = icmp eq i32 %indvars.iv575, 0
  %notrhs = icmp ne i32 %2689, 0
  %or.cond786.not = and i1 %notrhs, %notlhs
  %.not787 = xor i1 %2685, true
  %brmerge788 = or i1 %or.cond786.not, %.not787
  %.mux789 = zext i1 %or.cond786.not to i32
  br i1 %brmerge788, label %2692, label %2690

; <label>:2690                                    ; preds = %2688
  %2691 = load i32* %104, align 4, !tbaa !2
  %not.361 = icmp ne i32 %2691, 0
  %.358 = sext i1 %not.361 to i32
  br label %2692

; <label>:2692                                    ; preds = %2688, %2690
  %dz161.0 = phi i32 [ %.358, %2690 ], [ %.mux789, %2688 ]
  %2693 = getelementptr inbounds i32* %2674, i64 1
  %2694 = load i32* %2693, align 4, !tbaa !2
  %2695 = icmp sgt i32 %2694, 0
  br i1 %2695, label %.lr.ph438, label %.loopexit394

.lr.ph438:                                        ; preds = %2692
  %2696 = add i32 %dz161.0, %indvars.iv575
  %ispos194 = icmp sgt i32 %dz161.0, -1
  %neg195 = sub nsw i32 0, %dz161.0
  %2697 = select i1 %ispos194, i32 %dz161.0, i32 %neg195
  %2698 = shl nsw i32 %2697, 2
  %2699 = add nsw i32 %2697, 1
  %2700 = sitofp i32 %dz161.0 to double
  br label %2701

; <label>:2701                                    ; preds = %.lr.ph438, %2985
  %indvars.iv573 = phi i32 [ 0, %.lr.ph438 ], [ %indvars.iv.next574, %2985 ]
  %2702 = icmp ne i32 %indvars.iv573, 0
  %2703 = load i32* %105, align 8
  %2704 = icmp eq i32 %2703, 0
  %or.cond791 = or i1 %2702, %2704
  br i1 %or.cond791, label %2705, label %2710

; <label>:2705                                    ; preds = %2701
  %2706 = add nsw i32 %2694, -1
  %2707 = icmp eq i32 %indvars.iv573, %2706
  br i1 %2707, label %2708, label %2710

; <label>:2708                                    ; preds = %2705
  %2709 = load i32* %106, align 4, !tbaa !2
  %not. = icmp ne i32 %2709, 0
  %.359 = sext i1 %not. to i32
  br label %2710

; <label>:2710                                    ; preds = %2701, %2708, %2705
  %dy160.0 = phi i32 [ 0, %2705 ], [ %.359, %2708 ], [ 1, %2701 ]
  %2711 = bitcast [6 x i32]* %doBC to i64*
  %2712 = load i64* %2711, align 16
  %2713 = trunc i64 %2712 to i32
  %2714 = icmp eq i32 %2713, 0
  br i1 %2714, label %2801, label %2715

; <label>:2715                                    ; preds = %2710
  %2716 = load i32* %2674, align 4, !tbaa !2
  %2717 = mul nsw i32 %2694, %indvars.iv575
  %2718 = add nsw i32 %2717, %indvars.iv573
  %2719 = mul nsw i32 %2718, %2716
  %2720 = add nsw i32 %dy160.0, %indvars.iv573
  %2721 = mul nsw i32 %2694, %2696
  %2722 = add nsw i32 %2720, %2721
  %2723 = mul nsw i32 %2722, %2716
  %2724 = add nsw i32 %2723, 1
  %ispos201 = icmp sgt i32 %dy160.0, -1
  %neg202 = sub nsw i32 0, %dy160.0
  %2725 = select i1 %ispos201, i32 %dy160.0, i32 %neg202
  %2726 = shl nsw i32 %2725, 1
  %2727 = or i32 %2726, 1
  %2728 = add nsw i32 %2727, %2698
  %2729 = sext i32 %2728 to i64
  %2730 = getelementptr inbounds [8 x double]* %dist, i64 0, i64 %2729
  %2731 = load double* %2730, align 8, !tbaa !11
  %2732 = add nsw i32 %2699, %2725
  %2733 = icmp eq i32 %2732, 1
  %2734 = sext i32 %2719 to i64
  %2735 = getelementptr inbounds double* %36, i64 %2734
  %2736 = load double* %2735, align 8, !tbaa !11
  br i1 %2733, label %2737, label %2743

; <label>:2737                                    ; preds = %2715
  %2738 = call double @fabs(double %2736) #8
  %2739 = sext i32 %2724 to i64
  %2740 = getelementptr inbounds double* %36, i64 %2739
  %2741 = load double* %2740, align 8, !tbaa !11
  %2742 = call double @fabs(double %2741) #8
  br label %2772

; <label>:2743                                    ; preds = %2715
  %2744 = fmul double %2736, %2736
  %2745 = sitofp i32 %dy160.0 to double
  %2746 = getelementptr inbounds double* %43, i64 %2734
  %2747 = load double* %2746, align 8, !tbaa !11
  %2748 = fmul double %2745, %2747
  %2749 = fmul double %2748, %2748
  %2750 = fadd double %2744, %2749
  %2751 = getelementptr inbounds double* %50, i64 %2734
  %2752 = load double* %2751, align 8, !tbaa !11
  %2753 = fmul double %2700, %2752
  %2754 = fmul double %2753, %2753
  %2755 = fadd double %2750, %2754
  %2756 = call double @sqrt(double %2755) #8
  %2757 = sext i32 %2724 to i64
  %2758 = getelementptr inbounds double* %36, i64 %2757
  %2759 = load double* %2758, align 8, !tbaa !11
  %2760 = fmul double %2759, %2759
  %2761 = getelementptr inbounds double* %43, i64 %2757
  %2762 = load double* %2761, align 8, !tbaa !11
  %2763 = fmul double %2745, %2762
  %2764 = fmul double %2763, %2763
  %2765 = fadd double %2760, %2764
  %2766 = getelementptr inbounds double* %50, i64 %2757
  %2767 = load double* %2766, align 8, !tbaa !11
  %2768 = fmul double %2700, %2767
  %2769 = fmul double %2768, %2768
  %2770 = fadd double %2765, %2769
  %2771 = call double @sqrt(double %2770) #8
  br label %2772

; <label>:2772                                    ; preds = %2743, %2737
  %.pre-phi = phi i64 [ %2757, %2743 ], [ %2739, %2737 ]
  %u_src166.0 = phi double [ %2771, %2743 ], [ %2742, %2737 ]
  %u_dst167.0 = phi double [ %2756, %2743 ], [ %2738, %2737 ]
  %2773 = fmul double %65, %2731
  %2774 = fadd double %u_src166.0, %u_dst167.0
  %2775 = fmul double %2773, %2774
  %2776 = getelementptr inbounds double* %63, i64 %.pre-phi
  %2777 = load double* %2776, align 8, !tbaa !11
  %2778 = getelementptr inbounds double* %63, i64 %2734
  %2779 = load double* %2778, align 8, !tbaa !11
  %2780 = fadd double %2777, %2779
  %2781 = fmul double %2780, %2780
  %2782 = fdiv double %2775, %2781
  %2783 = load i8**** %31, align 8, !tbaa !6
  %2784 = getelementptr inbounds i8*** %2783, i64 %indvars.iv645
  %2785 = bitcast i8*** %2784 to x86_fp80***
  %2786 = load x86_fp80*** %2785, align 8, !tbaa !10
  %2787 = load x86_fp80** %2786, align 8, !tbaa !10
  %2788 = fmul double %2782, 2.000000e+00
  %2789 = fmul double %2788, %finf
  %2790 = fpext double %2789 to x86_fp80
  %2791 = getelementptr inbounds x86_fp80* %2787, i64 %.pre-phi
  %2792 = load x86_fp80* %2791, align 16, !tbaa !24
  %2793 = fsub double 1.000000e+00, %2782
  %2794 = fpext double %2793 to x86_fp80
  %2795 = fmul x86_fp80 %2794, %2792
  %2796 = fadd x86_fp80 %2790, %2795
  %2797 = fadd double %2782, 1.000000e+00
  %2798 = fpext double %2797 to x86_fp80
  %2799 = fdiv x86_fp80 %2796, %2798
  %2800 = getelementptr inbounds x86_fp80* %2787, i64 %2734
  store x86_fp80 %2799, x86_fp80* %2800, align 16, !tbaa !24
  br label %2801

; <label>:2801                                    ; preds = %2710, %2772
  %2802 = icmp ne i32 %dy160.0, 0
  %2803 = or i32 %dy160.0, %dz161.0
  %2804 = icmp eq i32 %2803, 0
  br i1 %2804, label %.loopexit385, label %2805

; <label>:2805                                    ; preds = %2801
  %2806 = load i32* %2674, align 4, !tbaa !2
  %ispos196 = icmp sgt i32 %dy160.0, -1
  %neg197 = sub nsw i32 0, %dy160.0
  %2807 = select i1 %ispos196, i32 %dy160.0, i32 %neg197
  %2808 = add nsw i32 %2806, -1
  %2809 = icmp sgt i32 %2808, 1
  br i1 %2809, label %.lr.ph435, label %.loopexit385

.lr.ph435:                                        ; preds = %2805
  %2810 = shl nsw i32 %2807, 1
  %2811 = add nsw i32 %2810, %2698
  %2812 = sext i32 %2811 to i64
  %2813 = getelementptr inbounds [8 x double]* %dist, i64 0, i64 %2812
  %2814 = load double* %2813, align 16, !tbaa !11
  %2815 = add nsw i32 %2807, %2697
  %2816 = icmp eq i32 %2815, 1
  %.360 = select i1 %2802, double* %43, double* %50
  %2817 = fmul double %65, %2814
  %2818 = sitofp i32 %dy160.0 to double
  %2819 = add i32 %dy160.0, %indvars.iv573
  %2820 = mul i32 %2696, %2694
  %2821 = add i32 %2819, %2820
  %2822 = mul i32 %2806, %2821
  %2823 = sext i32 %2822 to i64
  %2824 = mul i32 %indvars.iv575, %2694
  %2825 = add i32 %indvars.iv573, %2824
  %2826 = mul i32 %2806, %2825
  %2827 = sext i32 %2826 to i64
  br label %2828

; <label>:2828                                    ; preds = %.lr.ph435, %2865
  %indvars.iv579 = phi i64 [ %2827, %.lr.ph435 ], [ %indvars.iv.next580, %2865 ]
  %indvars.iv577 = phi i64 [ %2823, %.lr.ph435 ], [ %indvars.iv.next578, %2865 ]
  %i156.0431 = phi i32 [ 1, %.lr.ph435 ], [ %2893, %2865 ]
  %indvars.iv.next580 = add i64 %indvars.iv579, 1
  %indvars.iv.next578 = add i64 %indvars.iv577, 1
  br i1 %2816, label %2829, label %2834

; <label>:2829                                    ; preds = %2828
  %.in = getelementptr inbounds double* %.360, i64 %indvars.iv.next580
  %2830 = load double* %.in, align 8
  %2831 = call double @fabs(double %2830) #8
  %.in200 = getelementptr inbounds double* %.360, i64 %indvars.iv.next578
  %2832 = load double* %.in200, align 8
  %2833 = call double @fabs(double %2832) #8
  br label %2865

; <label>:2834                                    ; preds = %2828
  %2835 = getelementptr inbounds double* %36, i64 %indvars.iv.next580
  %2836 = load double* %2835, align 8, !tbaa !11
  %2837 = fmul double %2836, 0.000000e+00
  %2838 = fmul double %2837, %2837
  %2839 = getelementptr inbounds double* %43, i64 %indvars.iv.next580
  %2840 = load double* %2839, align 8, !tbaa !11
  %2841 = fmul double %2818, %2840
  %2842 = fmul double %2841, %2841
  %2843 = fadd double %2838, %2842
  %2844 = getelementptr inbounds double* %50, i64 %indvars.iv.next580
  %2845 = load double* %2844, align 8, !tbaa !11
  %2846 = fmul double %2700, %2845
  %2847 = fmul double %2846, %2846
  %2848 = fadd double %2843, %2847
  %2849 = call double @sqrt(double %2848) #8
  %2850 = getelementptr inbounds double* %36, i64 %indvars.iv.next578
  %2851 = load double* %2850, align 8, !tbaa !11
  %2852 = fmul double %2851, 0.000000e+00
  %2853 = fmul double %2852, %2852
  %2854 = getelementptr inbounds double* %43, i64 %indvars.iv.next578
  %2855 = load double* %2854, align 8, !tbaa !11
  %2856 = fmul double %2818, %2855
  %2857 = fmul double %2856, %2856
  %2858 = fadd double %2853, %2857
  %2859 = getelementptr inbounds double* %50, i64 %indvars.iv.next578
  %2860 = load double* %2859, align 8, !tbaa !11
  %2861 = fmul double %2700, %2860
  %2862 = fmul double %2861, %2861
  %2863 = fadd double %2858, %2862
  %2864 = call double @sqrt(double %2863) #8
  br label %2865

; <label>:2865                                    ; preds = %2834, %2829
  %u_src170.0 = phi double [ %2833, %2829 ], [ %2864, %2834 ]
  %u_dst171.0 = phi double [ %2831, %2829 ], [ %2849, %2834 ]
  %2866 = fadd double %u_src170.0, %u_dst171.0
  %2867 = fmul double %2817, %2866
  %2868 = getelementptr inbounds double* %63, i64 %indvars.iv.next578
  %2869 = load double* %2868, align 8, !tbaa !11
  %2870 = getelementptr inbounds double* %63, i64 %indvars.iv.next580
  %2871 = load double* %2870, align 8, !tbaa !11
  %2872 = fadd double %2869, %2871
  %2873 = fmul double %2872, %2872
  %2874 = fdiv double %2867, %2873
  %2875 = load i8**** %31, align 8, !tbaa !6
  %2876 = getelementptr inbounds i8*** %2875, i64 %indvars.iv645
  %2877 = bitcast i8*** %2876 to x86_fp80***
  %2878 = load x86_fp80*** %2877, align 8, !tbaa !10
  %2879 = load x86_fp80** %2878, align 8, !tbaa !10
  %2880 = fmul double %2874, 2.000000e+00
  %2881 = fmul double %2880, %finf
  %2882 = fpext double %2881 to x86_fp80
  %2883 = getelementptr inbounds x86_fp80* %2879, i64 %indvars.iv.next578
  %2884 = load x86_fp80* %2883, align 16, !tbaa !24
  %2885 = fsub double 1.000000e+00, %2874
  %2886 = fpext double %2885 to x86_fp80
  %2887 = fmul x86_fp80 %2886, %2884
  %2888 = fadd x86_fp80 %2882, %2887
  %2889 = fadd double %2874, 1.000000e+00
  %2890 = fpext double %2889 to x86_fp80
  %2891 = fdiv x86_fp80 %2888, %2890
  %2892 = getelementptr inbounds x86_fp80* %2879, i64 %indvars.iv.next580
  store x86_fp80 %2891, x86_fp80* %2892, align 16, !tbaa !24
  %2893 = add nuw nsw i32 %i156.0431, 1
  %2894 = icmp slt i32 %2893, %2808
  br i1 %2894, label %2828, label %.loopexit385

.loopexit385:                                     ; preds = %2865, %2805, %2801
  %2895 = icmp ult i64 %2712, 4294967296
  br i1 %2895, label %2985, label %2896

; <label>:2896                                    ; preds = %.loopexit385
  %2897 = load i32* %2674, align 4, !tbaa !2
  %2898 = add nsw i32 %2897, -1
  %2899 = mul nsw i32 %2694, %indvars.iv575
  %2900 = add nsw i32 %2899, %indvars.iv573
  %2901 = mul nsw i32 %2900, %2897
  %2902 = add nsw i32 %2898, %2901
  %2903 = add nsw i32 %2897, -2
  %2904 = add nsw i32 %dy160.0, %indvars.iv573
  %2905 = mul nsw i32 %2694, %2696
  %2906 = add nsw i32 %2904, %2905
  %2907 = mul nsw i32 %2906, %2897
  %2908 = add nsw i32 %2903, %2907
  %ispos = icmp sgt i32 %dy160.0, -1
  %neg = sub nsw i32 0, %dy160.0
  %2909 = select i1 %ispos, i32 %dy160.0, i32 %neg
  %2910 = shl nsw i32 %2909, 1
  %2911 = or i32 %2910, 1
  %2912 = add nsw i32 %2911, %2698
  %2913 = sext i32 %2912 to i64
  %2914 = getelementptr inbounds [8 x double]* %dist, i64 0, i64 %2913
  %2915 = load double* %2914, align 8, !tbaa !11
  %2916 = add nsw i32 %2699, %2909
  %2917 = icmp eq i32 %2916, 1
  %2918 = sext i32 %2902 to i64
  %2919 = getelementptr inbounds double* %36, i64 %2918
  %2920 = load double* %2919, align 8, !tbaa !11
  br i1 %2917, label %2921, label %2927

; <label>:2921                                    ; preds = %2896
  %2922 = call double @fabs(double %2920) #8
  %2923 = sext i32 %2908 to i64
  %2924 = getelementptr inbounds double* %36, i64 %2923
  %2925 = load double* %2924, align 8, !tbaa !11
  %2926 = call double @fabs(double %2925) #8
  br label %2956

; <label>:2927                                    ; preds = %2896
  %2928 = fmul double %2920, %2920
  %2929 = sitofp i32 %dy160.0 to double
  %2930 = getelementptr inbounds double* %43, i64 %2918
  %2931 = load double* %2930, align 8, !tbaa !11
  %2932 = fmul double %2929, %2931
  %2933 = fmul double %2932, %2932
  %2934 = fadd double %2928, %2933
  %2935 = getelementptr inbounds double* %50, i64 %2918
  %2936 = load double* %2935, align 8, !tbaa !11
  %2937 = fmul double %2700, %2936
  %2938 = fmul double %2937, %2937
  %2939 = fadd double %2934, %2938
  %2940 = call double @sqrt(double %2939) #8
  %2941 = sext i32 %2908 to i64
  %2942 = getelementptr inbounds double* %36, i64 %2941
  %2943 = load double* %2942, align 8, !tbaa !11
  %2944 = fmul double %2943, %2943
  %2945 = getelementptr inbounds double* %43, i64 %2941
  %2946 = load double* %2945, align 8, !tbaa !11
  %2947 = fmul double %2929, %2946
  %2948 = fmul double %2947, %2947
  %2949 = fadd double %2944, %2948
  %2950 = getelementptr inbounds double* %50, i64 %2941
  %2951 = load double* %2950, align 8, !tbaa !11
  %2952 = fmul double %2700, %2951
  %2953 = fmul double %2952, %2952
  %2954 = fadd double %2949, %2953
  %2955 = call double @sqrt(double %2954) #8
  br label %2956

; <label>:2956                                    ; preds = %2927, %2921
  %.pre-phi649 = phi i64 [ %2941, %2927 ], [ %2923, %2921 ]
  %u_src174.0 = phi double [ %2955, %2927 ], [ %2926, %2921 ]
  %u_dst175.0 = phi double [ %2940, %2927 ], [ %2922, %2921 ]
  %2957 = fmul double %65, %2915
  %2958 = fadd double %u_src174.0, %u_dst175.0
  %2959 = fmul double %2957, %2958
  %2960 = getelementptr inbounds double* %63, i64 %.pre-phi649
  %2961 = load double* %2960, align 8, !tbaa !11
  %2962 = getelementptr inbounds double* %63, i64 %2918
  %2963 = load double* %2962, align 8, !tbaa !11
  %2964 = fadd double %2961, %2963
  %2965 = fmul double %2964, %2964
  %2966 = fdiv double %2959, %2965
  %2967 = load i8**** %31, align 8, !tbaa !6
  %2968 = getelementptr inbounds i8*** %2967, i64 %indvars.iv645
  %2969 = bitcast i8*** %2968 to x86_fp80***
  %2970 = load x86_fp80*** %2969, align 8, !tbaa !10
  %2971 = load x86_fp80** %2970, align 8, !tbaa !10
  %2972 = fmul double %2966, 2.000000e+00
  %2973 = fmul double %2972, %finf
  %2974 = fpext double %2973 to x86_fp80
  %2975 = getelementptr inbounds x86_fp80* %2971, i64 %.pre-phi649
  %2976 = load x86_fp80* %2975, align 16, !tbaa !24
  %2977 = fsub double 1.000000e+00, %2966
  %2978 = fpext double %2977 to x86_fp80
  %2979 = fmul x86_fp80 %2978, %2976
  %2980 = fadd x86_fp80 %2974, %2979
  %2981 = fadd double %2966, 1.000000e+00
  %2982 = fpext double %2981 to x86_fp80
  %2983 = fdiv x86_fp80 %2980, %2982
  %2984 = getelementptr inbounds x86_fp80* %2971, i64 %2918
  store x86_fp80 %2983, x86_fp80* %2984, align 16, !tbaa !24
  br label %2985

; <label>:2985                                    ; preds = %.loopexit385, %2956
  %indvars.iv.next574 = add nuw nsw i32 %indvars.iv573, 1
  %2986 = icmp slt i32 %indvars.iv.next574, %2694
  br i1 %2986, label %2701, label %.loopexit394

.loopexit394:                                     ; preds = %2985, %2683, %.lr.ph442, %2692
  %indvars.iv.next576 = add nuw nsw i32 %indvars.iv575, 1
  %2987 = icmp slt i32 %indvars.iv.next576, %2676
  br i1 %2987, label %.lr.ph442, label %.loopexit395

; <label>:2988                                    ; preds = %._crit_edge
  %2989 = trunc i64 %indvars.iv645 to i32
  %2990 = call i32 @CCTK_VarTypeI(i32 %2989) #6
  %2991 = call i8* @CCTK_VarName(i32 %2989) #6
  %2992 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 779, i8* getelementptr inbounds ([84 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([62 x i8]* @.str19, i64 0, i64 0), i32 %2990, i8* %2991) #6
  br label %.loopexit414

.loopexit395:                                     ; preds = %.loopexit394, %.loopexit393, %.loopexit392, %.loopexit391, %.loopexit390, %.loopexit389, %.loopexit388, %.loopexit387, %.loopexit386, %.preheader410, %.preheader408, %.preheader406, %.preheader404, %.preheader402, %.preheader400, %.preheader398, %.preheader396, %.preheader
  %2993 = add nsw i32 %var.0555, 1
  %2994 = icmp slt i32 %2993, %97
  %indvars.iv.next646 = add nsw i64 %indvars.iv645, 1
  br i1 %2994, label %113, label %.loopexit414

.loopexit414:                                     ; preds = %.loopexit395, %56, %2988, %2678, %2372, %2060, %1748, %1428, %1116, %810, %490, %160, %54, %26, %20, %12, %6
  %.0 = phi i32 [ -1, %6 ], [ -3, %20 ], [ -6, %26 ], [ -6, %54 ], [ -4, %2988 ], [ -5, %2678 ], [ -5, %2372 ], [ -5, %2060 ], [ -5, %1748 ], [ -5, %1428 ], [ -5, %1116 ], [ -5, %810 ], [ -5, %490 ], [ -5, %160 ], [ -2, %12 ], [ 0, %56 ], [ 0, %.loopexit395 ]
  call void @llvm.lifetime.end(i64 64, i8* %1) #4
  ret i32 %.0
}

; Function Attrs: optsize
declare i32 @CCTK_NumVarsInGroupI(i32) #2

; Function Attrs: optsize
declare i32 @CCTK_VWarn(i32, i32, i8*, i8*, i8*, ...) #2

; Function Attrs: nounwind optsize ssp uwtable
define void @bndrobingi_(i32* nocapture %ierr, %struct.cGH* %GH, i32* %stencil, double* nocapture readonly %finf, i32* nocapture readonly %npow, i32* nocapture readonly %gi) #1 {
  %1 = load double* %finf, align 8, !tbaa !11
  %2 = load i32* %npow, align 4, !tbaa !2
  %3 = load i32* %gi, align 4, !tbaa !2
  %4 = tail call i32 @BndRobinGI(%struct.cGH* %GH, i32* %stencil, double %1, i32 %2, i32 %3) #7
  store i32 %4, i32* %ierr, align 4, !tbaa !2
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @BndRobinGN(%struct.cGH* %GH, i32* readonly %stencil, double %finf, i32 %npow, i8* %gname) #1 {
  %1 = tail call i32 @CCTK_GroupIndex(i8* %gname) #6
  %2 = icmp sgt i32 %1, -1
  br i1 %2, label %3, label %5

; <label>:3                                       ; preds = %0
  %4 = tail call i32 @BndRobinGI(%struct.cGH* %GH, i32* %stencil, double %finf, i32 %npow, i32 %1) #7
  br label %7

; <label>:5                                       ; preds = %0
  %6 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 2, i32 216, i8* getelementptr inbounds ([84 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([38 x i8]* @.str3, i64 0, i64 0), i8* %gname) #6
  br label %7

; <label>:7                                       ; preds = %5, %3
  %retval.0 = phi i32 [ %4, %3 ], [ -1, %5 ]
  ret i32 %retval.0
}

; Function Attrs: optsize
declare i32 @CCTK_GroupIndex(i8*) #2

; Function Attrs: nounwind optsize ssp uwtable
define void @bndrobingn_(i32* nocapture %ierr, %struct.cGH* %GH, i32* %stencil, double* nocapture readonly %finf, i32* nocapture readonly %npow, i8* %cctk_str1, i32 %cctk_strlen1) #1 {
  %1 = tail call i8* @Util_NullTerminateString(i8* %cctk_str1, i32 %cctk_strlen1) #6
  %2 = load double* %finf, align 8, !tbaa !11
  %3 = load i32* %npow, align 4, !tbaa !2
  %4 = tail call i32 @BndRobinGN(%struct.cGH* %GH, i32* %stencil, double %2, i32 %3, i8* %1) #7
  store i32 %4, i32* %ierr, align 4, !tbaa !2
  tail call void @free(i8* %1) #7
  ret void
}

; Function Attrs: optsize
declare i8* @Util_NullTerminateString(i8*, i32) #2

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #3

; Function Attrs: nounwind optsize ssp uwtable
define i32 @BndRobinVI(%struct.cGH* %GH, i32* readonly %stencil, double %finf, i32 %npow, i32 %vi) #1 {
  %1 = icmp sgt i32 %vi, -1
  br i1 %1, label %2, label %7

; <label>:2                                       ; preds = %0
  %3 = tail call i32 @CCTK_NumVars() #6
  %4 = icmp sgt i32 %3, %vi
  br i1 %4, label %5, label %7

; <label>:5                                       ; preds = %2
  %6 = tail call fastcc i32 @ApplyBndRobin(%struct.cGH* %GH, i32* %stencil, double %finf, i32 %npow, i32 %vi, i32 1) #7
  br label %9

; <label>:7                                       ; preds = %2, %0
  %8 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 2, i32 294, i8* getelementptr inbounds ([84 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([38 x i8]* @.str4, i64 0, i64 0), i32 %vi) #6
  br label %9

; <label>:9                                       ; preds = %7, %5
  %retval.0 = phi i32 [ %6, %5 ], [ -1, %7 ]
  ret i32 %retval.0
}

; Function Attrs: optsize
declare i32 @CCTK_NumVars() #2

; Function Attrs: nounwind optsize ssp uwtable
define void @bndrobinvi_(i32* nocapture %ierr, %struct.cGH* %GH, i32* %stencil, double* nocapture readonly %finf, i32* nocapture readonly %npow, i32* nocapture readonly %vi) #1 {
  %1 = load double* %finf, align 8, !tbaa !11
  %2 = load i32* %npow, align 4, !tbaa !2
  %3 = load i32* %vi, align 4, !tbaa !2
  %4 = tail call i32 @BndRobinVI(%struct.cGH* %GH, i32* %stencil, double %1, i32 %2, i32 %3) #7
  store i32 %4, i32* %ierr, align 4, !tbaa !2
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @BndRobinVN(%struct.cGH* %GH, i32* readonly %stencil, double %finf, i32 %npow, i8* %vname) #1 {
  %1 = tail call i32 @CCTK_VarIndex(i8* %vname) #6
  %2 = icmp sgt i32 %1, -1
  br i1 %2, label %3, label %5

; <label>:3                                       ; preds = %0
  %4 = tail call i32 @BndRobinVI(%struct.cGH* %GH, i32* %stencil, double %finf, i32 %npow, i32 %1) #7
  br label %7

; <label>:5                                       ; preds = %0
  %6 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 2, i32 371, i8* getelementptr inbounds ([84 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([41 x i8]* @.str5, i64 0, i64 0), i8* %vname) #6
  br label %7

; <label>:7                                       ; preds = %5, %3
  %retval.0 = phi i32 [ %4, %3 ], [ -1, %5 ]
  ret i32 %retval.0
}

; Function Attrs: optsize
declare i32 @CCTK_VarIndex(i8*) #2

; Function Attrs: nounwind optsize ssp uwtable
define void @bndrobinvn_(i32* nocapture %ierr, %struct.cGH* %GH, i32* %stencil, double* nocapture readonly %finf, i32* nocapture readonly %npow, i8* %cctk_str1, i32 %cctk_strlen1) #1 {
  %1 = tail call i8* @Util_NullTerminateString(i8* %cctk_str1, i32 %cctk_strlen1) #6
  %2 = load double* %finf, align 8, !tbaa !11
  %3 = load i32* %npow, align 4, !tbaa !2
  %4 = tail call i32 @BndRobinVN(%struct.cGH* %GH, i32* %stencil, double %2, i32 %3, i8* %1) #7
  store i32 %4, i32* %ierr, align 4, !tbaa !2
  tail call void @free(i8* %1) #7
  ret void
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #4

; Function Attrs: optsize
declare i32 @CCTK_GroupDimI(i32) #2

; Function Attrs: optsize
declare i32 @CCTK_GroupIndexFromVarI(i32) #2

; Function Attrs: optsize
declare i32 @CCTK_VarTypeI(i32) #2

; Function Attrs: optsize
declare i32 @CCTK_Warn(i32, i32, i8*, i8*, i8*) #2

; Function Attrs: optsize
declare i32 @__sprintf_chk(i8*, i32, i64, i8*, ...) #2

; Function Attrs: optsize
declare i32 @CCTK_CoordSystemHandle(i8*) #2

; Function Attrs: optsize
declare i32 @CCTK_CoordIndex(i32, i8*, i8*) #2

; Function Attrs: optsize
declare i8* @CCTK_GHExtension(%struct.cGH*, i8*) #2

; Function Attrs: nounwind optsize readnone
declare double @sqrt(double) #5

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #4

; Function Attrs: nounwind optsize readnone
declare double @fabs(double) #5

; Function Attrs: optsize
declare i8* @CCTK_VarName(i32) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #4

attributes #0 = { nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind optsize }
attributes #7 = { optsize }
attributes #8 = { nounwind optsize readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!2 = !{!3, !3, i64 0}
!3 = !{!"int", !4, i64 0}
!4 = !{!"omnipotent char", !5, i64 0}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!7, !8, i64 128}
!7 = !{!"", !3, i64 0, !3, i64 4, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !8, i64 40, !8, i64 48, !8, i64 56, !9, i64 64, !8, i64 72, !8, i64 80, !8, i64 88, !8, i64 96, !3, i64 104, !8, i64 112, !9, i64 120, !8, i64 128, !8, i64 136, !8, i64 144}
!8 = !{!"any pointer", !4, i64 0}
!9 = !{!"double", !4, i64 0}
!10 = !{!8, !8, i64 0}
!11 = !{!9, !9, i64 0}
!12 = !{!7, !8, i64 72}
!13 = !{!14, !8, i64 0}
!14 = !{!"Symmetry", !8, i64 0}
!15 = !{!7, !8, i64 16}
!16 = !{!7, !8, i64 88}
!17 = !{!4, !4, i64 0}
!18 = !{!19, !19, i64 0}
!19 = !{!"short", !4, i64 0}
!20 = !{!21, !21, i64 0}
!21 = !{!"long", !4, i64 0}
!22 = !{!23, !23, i64 0}
!23 = !{!"float", !4, i64 0}
!24 = !{!25, !25, i64 0}
!25 = !{!"long double", !4, i64 0}
