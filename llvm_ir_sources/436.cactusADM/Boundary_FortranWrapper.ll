; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/CactusBindings/Boundary_FortranWrapper.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.cGH = type { i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, double, double*, double*, i32*, i32*, i32, i32*, double, i8***, i8**, %struct.cGHGroupData* }
%struct.cGHGroupData = type { i8, i8 }

@CCTKi_BindingsFortranWrapperBoundary.CCTKARGNUM_coarse_dx = internal unnamed_addr global i32 -1, align 4
@CCTKi_BindingsFortranWrapperBoundary.CCTKGROUPNUM_gridspacings = internal unnamed_addr global i32 -1, align 4
@CCTKi_BindingsFortranWrapperBoundary.CCTKARGNUM_coarse_dy = internal unnamed_addr global i32 -1, align 4
@CCTKi_BindingsFortranWrapperBoundary.CCTKARGNUM_coarse_dz = internal unnamed_addr global i32 -1, align 4
@CCTKi_BindingsFortranWrapperBoundary.CCTKARGNUM_r = internal unnamed_addr global i32 -1, align 4
@CCTKi_BindingsFortranWrapperBoundary.CCTKGROUPNUM_coordinates = internal unnamed_addr global i32 -1, align 4
@CCTKi_BindingsFortranWrapperBoundary.CCTKARGNUM_x = internal unnamed_addr global i32 -1, align 4
@CCTKi_BindingsFortranWrapperBoundary.CCTKARGNUM_y = internal unnamed_addr global i32 -1, align 4
@CCTKi_BindingsFortranWrapperBoundary.CCTKARGNUM_z = internal unnamed_addr global i32 -1, align 4
@.str = private unnamed_addr constant [16 x i8] c"GRID::coarse_dx\00", align 1
@.str1 = private unnamed_addr constant [19 x i8] c"GRID::gridspacings\00", align 1
@.str2 = private unnamed_addr constant [16 x i8] c"GRID::coarse_dy\00", align 1
@.str3 = private unnamed_addr constant [16 x i8] c"GRID::coarse_dz\00", align 1
@.str4 = private unnamed_addr constant [8 x i8] c"GRID::r\00", align 1
@.str5 = private unnamed_addr constant [18 x i8] c"GRID::coordinates\00", align 1
@.str6 = private unnamed_addr constant [8 x i8] c"GRID::x\00", align 1
@.str7 = private unnamed_addr constant [8 x i8] c"GRID::y\00", align 1
@.str8 = private unnamed_addr constant [8 x i8] c"GRID::z\00", align 1
@_cctk_one = external global i32

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTKi_BindingsFortranWrapperBoundary(%struct.cGH* %GH, i8* nocapture %fpointer) #0 {
  tail call void @llvm.dbg.value(metadata %struct.cGH* %GH, i64 0, metadata !53, metadata !70), !dbg !71
  tail call void @llvm.dbg.value(metadata i8* %fpointer, i64 0, metadata !54, metadata !70), !dbg !72
  %1 = load i32* @CCTKi_BindingsFortranWrapperBoundary.CCTKARGNUM_coarse_dx, align 4, !dbg !73, !tbaa !75
  %2 = icmp eq i32 %1, -1, !dbg !73
  br i1 %2, label %3, label %5, !dbg !79

; <label>:3                                       ; preds = %0
  %4 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str, i64 0, i64 0)) #3, !dbg !73
  store i32 %4, i32* @CCTKi_BindingsFortranWrapperBoundary.CCTKARGNUM_coarse_dx, align 4, !dbg !73, !tbaa !75
  br label %5, !dbg !73

; <label>:5                                       ; preds = %3, %0
  %6 = load i32* @CCTKi_BindingsFortranWrapperBoundary.CCTKGROUPNUM_gridspacings, align 4, !dbg !80, !tbaa !75
  %7 = icmp eq i32 %6, -1, !dbg !80
  br i1 %7, label %8, label %10, !dbg !79

; <label>:8                                       ; preds = %5
  %9 = tail call i32 @CCTK_GroupIndex(i8* getelementptr inbounds ([19 x i8]* @.str1, i64 0, i64 0)) #3, !dbg !80
  store i32 %9, i32* @CCTKi_BindingsFortranWrapperBoundary.CCTKGROUPNUM_gridspacings, align 4, !dbg !80, !tbaa !75
  br label %10, !dbg !80

; <label>:10                                      ; preds = %8, %5
  %11 = load i32* @CCTKi_BindingsFortranWrapperBoundary.CCTKARGNUM_coarse_dy, align 4, !dbg !82, !tbaa !75
  %12 = icmp eq i32 %11, -1, !dbg !82
  br i1 %12, label %13, label %15, !dbg !79

; <label>:13                                      ; preds = %10
  %14 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str2, i64 0, i64 0)) #3, !dbg !82
  store i32 %14, i32* @CCTKi_BindingsFortranWrapperBoundary.CCTKARGNUM_coarse_dy, align 4, !dbg !82, !tbaa !75
  br label %15, !dbg !82

; <label>:15                                      ; preds = %13, %10
  %16 = load i32* @CCTKi_BindingsFortranWrapperBoundary.CCTKARGNUM_coarse_dz, align 4, !dbg !84, !tbaa !75
  %17 = icmp eq i32 %16, -1, !dbg !84
  br i1 %17, label %18, label %20, !dbg !79

; <label>:18                                      ; preds = %15
  %19 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str3, i64 0, i64 0)) #3, !dbg !84
  store i32 %19, i32* @CCTKi_BindingsFortranWrapperBoundary.CCTKARGNUM_coarse_dz, align 4, !dbg !84, !tbaa !75
  br label %20, !dbg !84

; <label>:20                                      ; preds = %18, %15
  %21 = load i32* @CCTKi_BindingsFortranWrapperBoundary.CCTKARGNUM_r, align 4, !dbg !86, !tbaa !75
  %22 = icmp eq i32 %21, -1, !dbg !86
  br i1 %22, label %23, label %25, !dbg !79

; <label>:23                                      ; preds = %20
  %24 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([8 x i8]* @.str4, i64 0, i64 0)) #3, !dbg !86
  store i32 %24, i32* @CCTKi_BindingsFortranWrapperBoundary.CCTKARGNUM_r, align 4, !dbg !86, !tbaa !75
  br label %25, !dbg !86

; <label>:25                                      ; preds = %23, %20
  %26 = load i32* @CCTKi_BindingsFortranWrapperBoundary.CCTKGROUPNUM_coordinates, align 4, !dbg !88, !tbaa !75
  %27 = icmp eq i32 %26, -1, !dbg !88
  br i1 %27, label %28, label %30, !dbg !79

; <label>:28                                      ; preds = %25
  %29 = tail call i32 @CCTK_GroupIndex(i8* getelementptr inbounds ([18 x i8]* @.str5, i64 0, i64 0)) #3, !dbg !88
  store i32 %29, i32* @CCTKi_BindingsFortranWrapperBoundary.CCTKGROUPNUM_coordinates, align 4, !dbg !88, !tbaa !75
  br label %30, !dbg !88

; <label>:30                                      ; preds = %28, %25
  %31 = load i32* @CCTKi_BindingsFortranWrapperBoundary.CCTKARGNUM_x, align 4, !dbg !90, !tbaa !75
  %32 = icmp eq i32 %31, -1, !dbg !90
  br i1 %32, label %33, label %35, !dbg !79

; <label>:33                                      ; preds = %30
  %34 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([8 x i8]* @.str6, i64 0, i64 0)) #3, !dbg !90
  store i32 %34, i32* @CCTKi_BindingsFortranWrapperBoundary.CCTKARGNUM_x, align 4, !dbg !90, !tbaa !75
  br label %35, !dbg !90

; <label>:35                                      ; preds = %33, %30
  %36 = load i32* @CCTKi_BindingsFortranWrapperBoundary.CCTKARGNUM_y, align 4, !dbg !92, !tbaa !75
  %37 = icmp eq i32 %36, -1, !dbg !92
  br i1 %37, label %38, label %40, !dbg !79

; <label>:38                                      ; preds = %35
  %39 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([8 x i8]* @.str7, i64 0, i64 0)) #3, !dbg !92
  store i32 %39, i32* @CCTKi_BindingsFortranWrapperBoundary.CCTKARGNUM_y, align 4, !dbg !92, !tbaa !75
  br label %40, !dbg !92

; <label>:40                                      ; preds = %38, %35
  %41 = load i32* @CCTKi_BindingsFortranWrapperBoundary.CCTKARGNUM_z, align 4, !dbg !94, !tbaa !75
  %42 = icmp eq i32 %41, -1, !dbg !94
  br i1 %42, label %43, label %45, !dbg !79

; <label>:43                                      ; preds = %40
  %44 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([8 x i8]* @.str8, i64 0, i64 0)) #3, !dbg !94
  store i32 %44, i32* @CCTKi_BindingsFortranWrapperBoundary.CCTKARGNUM_z, align 4, !dbg !94, !tbaa !75
  br label %45, !dbg !94

; <label>:45                                      ; preds = %43, %40
  %46 = bitcast i8* %fpointer to void (i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, double*, double*, double*, double*, i32*, i32*, i32*, i32*, %struct.cGH*, i32*, i32*, i32*, double*, double*, double*, double*, double*, double*, double*)*, !dbg !96
  tail call void @llvm.dbg.value(metadata void (i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, double*, double*, double*, double*, i32*, i32*, i32*, i32*, %struct.cGH*, i32*, i32*, i32*, double*, double*, double*, double*, double*, double*, double*)* %46, i64 0, metadata !55, metadata !70), !dbg !97
  %47 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 0, !dbg !98
  %48 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 2, !dbg !98
  %49 = load i32** %48, align 8, !dbg !98, !tbaa !99
  %50 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 3, !dbg !98
  %51 = load i32** %50, align 8, !dbg !98, !tbaa !103
  %52 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 4, !dbg !98
  %53 = load i32** %52, align 8, !dbg !98, !tbaa !104
  %54 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 5, !dbg !98
  %55 = load i32** %54, align 8, !dbg !98, !tbaa !105
  %56 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 6, !dbg !98
  %57 = load i32** %56, align 8, !dbg !98, !tbaa !106
  %58 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 8, !dbg !98
  %59 = load i32** %58, align 8, !dbg !98, !tbaa !107
  %60 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 7, !dbg !98
  %61 = load i32** %60, align 8, !dbg !98, !tbaa !108
  %62 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 12, !dbg !98
  %63 = load i32** %62, align 8, !dbg !98, !tbaa !109
  %64 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 9, !dbg !98
  %65 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 16, !dbg !98
  %66 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 10, !dbg !98
  %67 = load double** %66, align 8, !dbg !98, !tbaa !110
  %68 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 11, !dbg !98
  %69 = load double** %68, align 8, !dbg !98, !tbaa !111
  %70 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 13, !dbg !98
  %71 = load i32** %70, align 8, !dbg !98, !tbaa !112
  %72 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 14, !dbg !98
  %73 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 15, !dbg !98
  %74 = load i32** %73, align 8, !dbg !98, !tbaa !113
  %75 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 1, !dbg !98
  %76 = load i32* @CCTKi_BindingsFortranWrapperBoundary.CCTKGROUPNUM_coordinates, align 4, !dbg !98, !tbaa !75
  %77 = icmp slt i32 %76, 0, !dbg !98
  br i1 %77, label %.thread4, label %78, !dbg !98

; <label>:78                                      ; preds = %45
  %79 = tail call i32 @CCTK_QueryGroupStorage(%struct.cGH* %GH, i8* getelementptr inbounds ([18 x i8]* @.str5, i64 0, i64 0)) #3, !dbg !98
  %80 = icmp eq i32 %79, 0, !dbg !98
  br i1 %80, label %83, label %81, !dbg !98

; <label>:81                                      ; preds = %78
  %82 = tail call i32* @CCTK_ArrayGroupSize(%struct.cGH* %GH, i32 0, i8* getelementptr inbounds ([18 x i8]* @.str5, i64 0, i64 0)) #3, !dbg !98
  br label %83, !dbg !98

; <label>:83                                      ; preds = %78, %81
  %.ph = phi i32* [ @_cctk_one, %78 ], [ %82, %81 ]
  %.pr = load i32* @CCTKi_BindingsFortranWrapperBoundary.CCTKGROUPNUM_coordinates, align 4, !dbg !98, !tbaa !75
  %84 = icmp slt i32 %.pr, 0, !dbg !98
  br i1 %84, label %.thread4, label %85, !dbg !98

; <label>:85                                      ; preds = %83
  %86 = tail call i32 @CCTK_QueryGroupStorage(%struct.cGH* %GH, i8* getelementptr inbounds ([18 x i8]* @.str5, i64 0, i64 0)) #3, !dbg !98
  %87 = icmp eq i32 %86, 0, !dbg !98
  br i1 %87, label %.thread, label %88, !dbg !98

; <label>:88                                      ; preds = %85
  %89 = tail call i32* @CCTK_ArrayGroupSize(%struct.cGH* %GH, i32 1, i8* getelementptr inbounds ([18 x i8]* @.str5, i64 0, i64 0)) #3, !dbg !98
  br label %.thread, !dbg !98

.thread:                                          ; preds = %85, %88
  %.ph2.ph = phi i32* [ %89, %88 ], [ @_cctk_one, %85 ]
  %.pr3.pr = load i32* @CCTKi_BindingsFortranWrapperBoundary.CCTKGROUPNUM_coordinates, align 4, !dbg !98, !tbaa !75
  %90 = icmp slt i32 %.pr3.pr, 0, !dbg !98
  br i1 %90, label %.thread4, label %91, !dbg !98

; <label>:91                                      ; preds = %.thread
  %92 = tail call i32 @CCTK_QueryGroupStorage(%struct.cGH* %GH, i8* getelementptr inbounds ([18 x i8]* @.str5, i64 0, i64 0)) #3, !dbg !98
  %93 = icmp eq i32 %92, 0, !dbg !98
  br i1 %93, label %.thread4, label %94, !dbg !98

; <label>:94                                      ; preds = %91
  %95 = tail call i32* @CCTK_ArrayGroupSize(%struct.cGH* %GH, i32 2, i8* getelementptr inbounds ([18 x i8]* @.str5, i64 0, i64 0)) #3, !dbg !98
  br label %.thread4, !dbg !98

.thread4:                                         ; preds = %45, %83, %91, %94, %.thread
  %96 = phi i32* [ %.ph2.ph, %.thread ], [ %.ph2.ph, %94 ], [ %.ph2.ph, %91 ], [ @_cctk_one, %83 ], [ @_cctk_one, %45 ]
  %97 = phi i32* [ %.ph, %.thread ], [ %.ph, %94 ], [ %.ph, %91 ], [ %.ph, %83 ], [ @_cctk_one, %45 ]
  %98 = phi i32* [ @_cctk_one, %.thread ], [ %95, %94 ], [ @_cctk_one, %91 ], [ @_cctk_one, %83 ], [ @_cctk_one, %45 ], !dbg !98
  %99 = load i32* @CCTKi_BindingsFortranWrapperBoundary.CCTKARGNUM_coarse_dx, align 4, !dbg !98, !tbaa !75
  %100 = icmp slt i32 %99, 0, !dbg !98
  br i1 %100, label %109, label %101, !dbg !98

; <label>:101                                     ; preds = %.thread4
  %102 = sext i32 %99 to i64, !dbg !98
  %103 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17, !dbg !98
  %104 = load i8**** %103, align 8, !dbg !98, !tbaa !114
  %105 = getelementptr inbounds i8*** %104, i64 %102, !dbg !98
  %106 = bitcast i8*** %105 to double***, !dbg !98
  %107 = load double*** %106, align 8, !dbg !98, !tbaa !115
  %108 = load double** %107, align 8, !dbg !98, !tbaa !115
  br label %109, !dbg !98

; <label>:109                                     ; preds = %.thread4, %101
  %110 = phi double* [ %108, %101 ], [ null, %.thread4 ]
  %111 = load i32* @CCTKi_BindingsFortranWrapperBoundary.CCTKARGNUM_coarse_dy, align 4, !dbg !98, !tbaa !75
  %112 = icmp slt i32 %111, 0, !dbg !98
  br i1 %112, label %121, label %113, !dbg !98

; <label>:113                                     ; preds = %109
  %114 = sext i32 %111 to i64, !dbg !98
  %115 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17, !dbg !98
  %116 = load i8**** %115, align 8, !dbg !98, !tbaa !114
  %117 = getelementptr inbounds i8*** %116, i64 %114, !dbg !98
  %118 = bitcast i8*** %117 to double***, !dbg !98
  %119 = load double*** %118, align 8, !dbg !98, !tbaa !115
  %120 = load double** %119, align 8, !dbg !98, !tbaa !115
  br label %121, !dbg !98

; <label>:121                                     ; preds = %109, %113
  %122 = phi double* [ %120, %113 ], [ null, %109 ]
  %123 = load i32* @CCTKi_BindingsFortranWrapperBoundary.CCTKARGNUM_coarse_dz, align 4, !dbg !98, !tbaa !75
  %124 = icmp slt i32 %123, 0, !dbg !98
  br i1 %124, label %133, label %125, !dbg !98

; <label>:125                                     ; preds = %121
  %126 = sext i32 %123 to i64, !dbg !98
  %127 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17, !dbg !98
  %128 = load i8**** %127, align 8, !dbg !98, !tbaa !114
  %129 = getelementptr inbounds i8*** %128, i64 %126, !dbg !98
  %130 = bitcast i8*** %129 to double***, !dbg !98
  %131 = load double*** %130, align 8, !dbg !98, !tbaa !115
  %132 = load double** %131, align 8, !dbg !98, !tbaa !115
  br label %133, !dbg !98

; <label>:133                                     ; preds = %121, %125
  %134 = phi double* [ %132, %125 ], [ null, %121 ]
  %135 = load i32* @CCTKi_BindingsFortranWrapperBoundary.CCTKARGNUM_r, align 4, !dbg !98, !tbaa !75
  %136 = icmp slt i32 %135, 0, !dbg !98
  br i1 %136, label %145, label %137, !dbg !98

; <label>:137                                     ; preds = %133
  %138 = sext i32 %135 to i64, !dbg !98
  %139 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17, !dbg !98
  %140 = load i8**** %139, align 8, !dbg !98, !tbaa !114
  %141 = getelementptr inbounds i8*** %140, i64 %138, !dbg !98
  %142 = bitcast i8*** %141 to double***, !dbg !98
  %143 = load double*** %142, align 8, !dbg !98, !tbaa !115
  %144 = load double** %143, align 8, !dbg !98, !tbaa !115
  br label %145, !dbg !98

; <label>:145                                     ; preds = %133, %137
  %146 = phi double* [ %144, %137 ], [ null, %133 ]
  %147 = load i32* @CCTKi_BindingsFortranWrapperBoundary.CCTKARGNUM_x, align 4, !dbg !98, !tbaa !75
  %148 = icmp slt i32 %147, 0, !dbg !98
  br i1 %148, label %157, label %149, !dbg !98

; <label>:149                                     ; preds = %145
  %150 = sext i32 %147 to i64, !dbg !98
  %151 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17, !dbg !98
  %152 = load i8**** %151, align 8, !dbg !98, !tbaa !114
  %153 = getelementptr inbounds i8*** %152, i64 %150, !dbg !98
  %154 = bitcast i8*** %153 to double***, !dbg !98
  %155 = load double*** %154, align 8, !dbg !98, !tbaa !115
  %156 = load double** %155, align 8, !dbg !98, !tbaa !115
  br label %157, !dbg !98

; <label>:157                                     ; preds = %145, %149
  %158 = phi double* [ %156, %149 ], [ null, %145 ]
  %159 = load i32* @CCTKi_BindingsFortranWrapperBoundary.CCTKARGNUM_y, align 4, !dbg !98, !tbaa !75
  %160 = icmp slt i32 %159, 0, !dbg !98
  br i1 %160, label %169, label %161, !dbg !98

; <label>:161                                     ; preds = %157
  %162 = sext i32 %159 to i64, !dbg !98
  %163 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17, !dbg !98
  %164 = load i8**** %163, align 8, !dbg !98, !tbaa !114
  %165 = getelementptr inbounds i8*** %164, i64 %162, !dbg !98
  %166 = bitcast i8*** %165 to double***, !dbg !98
  %167 = load double*** %166, align 8, !dbg !98, !tbaa !115
  %168 = load double** %167, align 8, !dbg !98, !tbaa !115
  br label %169, !dbg !98

; <label>:169                                     ; preds = %157, %161
  %170 = phi double* [ %168, %161 ], [ null, %157 ]
  %171 = load i32* @CCTKi_BindingsFortranWrapperBoundary.CCTKARGNUM_z, align 4, !dbg !98, !tbaa !75
  %172 = icmp slt i32 %171, 0, !dbg !98
  br i1 %172, label %181, label %173, !dbg !98

; <label>:173                                     ; preds = %169
  %174 = sext i32 %171 to i64, !dbg !98
  %175 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17, !dbg !98
  %176 = load i8**** %175, align 8, !dbg !98, !tbaa !114
  %177 = getelementptr inbounds i8*** %176, i64 %174, !dbg !98
  %178 = bitcast i8*** %177 to double***, !dbg !98
  %179 = load double*** %178, align 8, !dbg !98, !tbaa !115
  %180 = load double** %179, align 8, !dbg !98, !tbaa !115
  br label %181, !dbg !98

; <label>:181                                     ; preds = %169, %173
  %182 = phi double* [ %180, %173 ], [ null, %169 ]
  tail call void %46(i32* %47, i32* %49, i32* %51, i32* %53, i32* %55, i32* %57, i32* %59, i32* %61, i32* %63, double* %64, double* %65, double* %67, double* %69, i32* %71, i32* %72, i32* %74, i32* %75, %struct.cGH* %GH, i32* %97, i32* %96, i32* %98, double* %110, double* %122, double* %134, double* %146, double* %158, double* %170, double* %182) #3, !dbg !116
  ret i32 0, !dbg !117
}

; Function Attrs: optsize
declare i32 @CCTK_VarIndex(i8*) #1

; Function Attrs: optsize
declare i32 @CCTK_GroupIndex(i8*) #1

; Function Attrs: optsize
declare i32 @CCTK_QueryGroupStorage(%struct.cGH*, i8*) #1

; Function Attrs: optsize
declare i32* @CCTK_ArrayGroupSize(%struct.cGH*, i32, i8*) #1

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #2

attributes #0 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }
attributes #3 = { nounwind optsize }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!66, !67, !68}
!llvm.ident = !{!69}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !48, globals: !56, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/CactusBindings/Boundary_FortranWrapper.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4, !46, !9, !36}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64, align: 64)
!5 = !DISubroutineType(types: !6)
!6 = !{null, !7, !7, !7, !7, !7, !7, !7, !7, !7, !9, !9, !9, !9, !7, !7, !7, !7, !11, !46, !46, !46, !9, !9, !9, !9, !9, !9, !9}
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64, align: 64)
!8 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64, align: 64)
!10 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64, align: 64)
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "cGH", file: !13, line: 75, baseType: !14)
!13 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/CactusBindings/../include/cGH.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!14 = !DICompositeType(tag: DW_TAG_structure_type, file: !13, line: 24, size: 1216, align: 64, elements: !15)
!15 = !{!16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !37, !38}
!16 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_dim", scope: !14, file: !13, line: 26, baseType: !8, size: 32, align: 32)
!17 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_iteration", scope: !14, file: !13, line: 27, baseType: !8, size: 32, align: 32, offset: 32)
!18 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_gsh", scope: !14, file: !13, line: 30, baseType: !7, size: 64, align: 64, offset: 64)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_lsh", scope: !14, file: !13, line: 31, baseType: !7, size: 64, align: 64, offset: 128)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_lbnd", scope: !14, file: !13, line: 32, baseType: !7, size: 64, align: 64, offset: 192)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_ubnd", scope: !14, file: !13, line: 33, baseType: !7, size: 64, align: 64, offset: 256)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_lssh", scope: !14, file: !13, line: 36, baseType: !7, size: 64, align: 64, offset: 320)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_to", scope: !14, file: !13, line: 39, baseType: !7, size: 64, align: 64, offset: 384)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_from", scope: !14, file: !13, line: 40, baseType: !7, size: 64, align: 64, offset: 448)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_delta_time", scope: !14, file: !13, line: 43, baseType: !10, size: 64, align: 64, offset: 512)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_delta_space", scope: !14, file: !13, line: 44, baseType: !9, size: 64, align: 64, offset: 576)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_origin_space", scope: !14, file: !13, line: 47, baseType: !9, size: 64, align: 64, offset: 640)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_bbox", scope: !14, file: !13, line: 51, baseType: !7, size: 64, align: 64, offset: 704)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_levfac", scope: !14, file: !13, line: 54, baseType: !7, size: 64, align: 64, offset: 768)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_convlevel", scope: !14, file: !13, line: 57, baseType: !8, size: 32, align: 32, offset: 832)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_nghostzones", scope: !14, file: !13, line: 60, baseType: !7, size: 64, align: 64, offset: 896)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_time", scope: !14, file: !13, line: 63, baseType: !10, size: 64, align: 64, offset: 960)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !14, file: !13, line: 67, baseType: !34, size: 64, align: 64, offset: 1024)
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64, align: 64)
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64, align: 64)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "extensions", scope: !14, file: !13, line: 70, baseType: !35, size: 64, align: 64, offset: 1088)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "GroupData", scope: !14, file: !13, line: 73, baseType: !39, size: 64, align: 64, offset: 1152)
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64, align: 64)
!40 = !DIDerivedType(tag: DW_TAG_typedef, name: "cGHGroupData", file: !13, line: 22, baseType: !41)
!41 = !DICompositeType(tag: DW_TAG_structure_type, file: !13, line: 18, size: 16, align: 8, elements: !42)
!42 = !{!43, !45}
!43 = !DIDerivedType(tag: DW_TAG_member, name: "storage", scope: !41, file: !13, line: 20, baseType: !44, size: 8, align: 8)
!44 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !41, file: !13, line: 21, baseType: !44, size: 8, align: 8, offset: 8)
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64, align: 64)
!47 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !8)
!48 = !{!49}
!49 = !DISubprogram(name: "CCTKi_BindingsFortranWrapperBoundary", scope: !1, file: !1, line: 13, type: !50, isLocal: false, isDefinition: true, scopeLine: 14, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.cGH*, i8*)* @CCTKi_BindingsFortranWrapperBoundary, variables: !52)
!50 = !DISubroutineType(types: !51)
!51 = !{!8, !11, !36}
!52 = !{!53, !54, !55}
!53 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "GH", arg: 1, scope: !49, file: !1, line: 13, type: !11)
!54 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fpointer", arg: 2, scope: !49, file: !1, line: 13, type: !36)
!55 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "function", scope: !49, file: !1, line: 15, type: !4)
!56 = !{!57, !58, !59, !60, !61, !62, !63, !64, !65}
!57 = !DIGlobalVariable(name: "CCTKARGNUM_coarse_dx", scope: !49, file: !1, line: 17, type: !8, isLocal: true, isDefinition: true, variable: i32* @CCTKi_BindingsFortranWrapperBoundary.CCTKARGNUM_coarse_dx)
!58 = !DIGlobalVariable(name: "CCTKGROUPNUM_gridspacings", scope: !49, file: !1, line: 17, type: !8, isLocal: true, isDefinition: true, variable: i32* @CCTKi_BindingsFortranWrapperBoundary.CCTKGROUPNUM_gridspacings)
!59 = !DIGlobalVariable(name: "CCTKARGNUM_coarse_dy", scope: !49, file: !1, line: 17, type: !8, isLocal: true, isDefinition: true, variable: i32* @CCTKi_BindingsFortranWrapperBoundary.CCTKARGNUM_coarse_dy)
!60 = !DIGlobalVariable(name: "CCTKARGNUM_coarse_dz", scope: !49, file: !1, line: 17, type: !8, isLocal: true, isDefinition: true, variable: i32* @CCTKi_BindingsFortranWrapperBoundary.CCTKARGNUM_coarse_dz)
!61 = !DIGlobalVariable(name: "CCTKARGNUM_r", scope: !49, file: !1, line: 17, type: !8, isLocal: true, isDefinition: true, variable: i32* @CCTKi_BindingsFortranWrapperBoundary.CCTKARGNUM_r)
!62 = !DIGlobalVariable(name: "CCTKGROUPNUM_coordinates", scope: !49, file: !1, line: 17, type: !8, isLocal: true, isDefinition: true, variable: i32* @CCTKi_BindingsFortranWrapperBoundary.CCTKGROUPNUM_coordinates)
!63 = !DIGlobalVariable(name: "CCTKARGNUM_x", scope: !49, file: !1, line: 17, type: !8, isLocal: true, isDefinition: true, variable: i32* @CCTKi_BindingsFortranWrapperBoundary.CCTKARGNUM_x)
!64 = !DIGlobalVariable(name: "CCTKARGNUM_y", scope: !49, file: !1, line: 17, type: !8, isLocal: true, isDefinition: true, variable: i32* @CCTKi_BindingsFortranWrapperBoundary.CCTKARGNUM_y)
!65 = !DIGlobalVariable(name: "CCTKARGNUM_z", scope: !49, file: !1, line: 17, type: !8, isLocal: true, isDefinition: true, variable: i32* @CCTKi_BindingsFortranWrapperBoundary.CCTKARGNUM_z)
!66 = !{i32 2, !"Dwarf Version", i32 2}
!67 = !{i32 2, !"Debug Info Version", i32 700000003}
!68 = !{i32 1, !"PIC Level", i32 2}
!69 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!70 = !DIExpression()
!71 = !DILocation(line: 13, column: 47, scope: !49)
!72 = !DILocation(line: 13, column: 57, scope: !49)
!73 = !DILocation(line: 18, column: 3, scope: !74)
!74 = distinct !DILexicalBlock(scope: !49, file: !1, line: 18, column: 3)
!75 = !{!76, !76, i64 0}
!76 = !{!"int", !77, i64 0}
!77 = !{!"omnipotent char", !78, i64 0}
!78 = !{!"Simple C/C++ TBAA"}
!79 = !DILocation(line: 18, column: 3, scope: !49)
!80 = !DILocation(line: 18, column: 3, scope: !81)
!81 = distinct !DILexicalBlock(scope: !49, file: !1, line: 18, column: 3)
!82 = !DILocation(line: 18, column: 3, scope: !83)
!83 = distinct !DILexicalBlock(scope: !49, file: !1, line: 18, column: 3)
!84 = !DILocation(line: 18, column: 3, scope: !85)
!85 = distinct !DILexicalBlock(scope: !49, file: !1, line: 18, column: 3)
!86 = !DILocation(line: 18, column: 3, scope: !87)
!87 = distinct !DILexicalBlock(scope: !49, file: !1, line: 18, column: 3)
!88 = !DILocation(line: 18, column: 3, scope: !89)
!89 = distinct !DILexicalBlock(scope: !49, file: !1, line: 18, column: 3)
!90 = !DILocation(line: 18, column: 3, scope: !91)
!91 = distinct !DILexicalBlock(scope: !49, file: !1, line: 18, column: 3)
!92 = !DILocation(line: 18, column: 3, scope: !93)
!93 = distinct !DILexicalBlock(scope: !49, file: !1, line: 18, column: 3)
!94 = !DILocation(line: 18, column: 3, scope: !95)
!95 = distinct !DILexicalBlock(scope: !49, file: !1, line: 18, column: 3)
!96 = !DILocation(line: 20, column: 14, scope: !49)
!97 = !DILocation(line: 15, column: 10, scope: !49)
!98 = !DILocation(line: 22, column: 12, scope: !49)
!99 = !{!100, !101, i64 8}
!100 = !{!"", !76, i64 0, !76, i64 4, !101, i64 8, !101, i64 16, !101, i64 24, !101, i64 32, !101, i64 40, !101, i64 48, !101, i64 56, !102, i64 64, !101, i64 72, !101, i64 80, !101, i64 88, !101, i64 96, !76, i64 104, !101, i64 112, !102, i64 120, !101, i64 128, !101, i64 136, !101, i64 144}
!101 = !{!"any pointer", !77, i64 0}
!102 = !{!"double", !77, i64 0}
!103 = !{!100, !101, i64 16}
!104 = !{!100, !101, i64 24}
!105 = !{!100, !101, i64 32}
!106 = !{!100, !101, i64 40}
!107 = !{!100, !101, i64 56}
!108 = !{!100, !101, i64 48}
!109 = !{!100, !101, i64 88}
!110 = !{!100, !101, i64 72}
!111 = !{!100, !101, i64 80}
!112 = !{!100, !101, i64 96}
!113 = !{!100, !101, i64 112}
!114 = !{!100, !101, i64 128}
!115 = !{!101, !101, i64 0}
!116 = !DILocation(line: 22, column: 3, scope: !49)
!117 = !DILocation(line: 24, column: 3, scope: !49)
