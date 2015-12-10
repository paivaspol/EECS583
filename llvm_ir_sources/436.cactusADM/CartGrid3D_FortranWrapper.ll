; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/CactusBindings/CartGrid3D_FortranWrapper.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.cGH = type { i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, double, double*, double*, i32*, i32*, i32, i32*, double, i8***, i8**, %struct.cGHGroupData* }
%struct.cGHGroupData = type { i8, i8 }

@CCTKi_BindingsFortranWrapperCartGrid3D.CCTKARGNUM_coarse_dx = internal unnamed_addr global i32 -1, align 4
@CCTKi_BindingsFortranWrapperCartGrid3D.CCTKGROUPNUM_gridspacings = internal unnamed_addr global i32 -1, align 4
@CCTKi_BindingsFortranWrapperCartGrid3D.CCTKARGNUM_coarse_dy = internal unnamed_addr global i32 -1, align 4
@CCTKi_BindingsFortranWrapperCartGrid3D.CCTKARGNUM_coarse_dz = internal unnamed_addr global i32 -1, align 4
@CCTKi_BindingsFortranWrapperCartGrid3D.CCTKARGNUM_r = internal unnamed_addr global i32 -1, align 4
@CCTKi_BindingsFortranWrapperCartGrid3D.CCTKGROUPNUM_coordinates = internal unnamed_addr global i32 -1, align 4
@CCTKi_BindingsFortranWrapperCartGrid3D.CCTKARGNUM_x = internal unnamed_addr global i32 -1, align 4
@CCTKi_BindingsFortranWrapperCartGrid3D.CCTKARGNUM_y = internal unnamed_addr global i32 -1, align 4
@CCTKi_BindingsFortranWrapperCartGrid3D.CCTKARGNUM_z = internal unnamed_addr global i32 -1, align 4
@.str = private unnamed_addr constant [16 x i8] c"grid::coarse_dx\00", align 1
@.str1 = private unnamed_addr constant [19 x i8] c"grid::gridspacings\00", align 1
@.str2 = private unnamed_addr constant [16 x i8] c"grid::coarse_dy\00", align 1
@.str3 = private unnamed_addr constant [16 x i8] c"grid::coarse_dz\00", align 1
@.str4 = private unnamed_addr constant [8 x i8] c"grid::r\00", align 1
@.str5 = private unnamed_addr constant [18 x i8] c"grid::coordinates\00", align 1
@.str6 = private unnamed_addr constant [8 x i8] c"grid::x\00", align 1
@.str7 = private unnamed_addr constant [8 x i8] c"grid::y\00", align 1
@.str8 = private unnamed_addr constant [8 x i8] c"grid::z\00", align 1
@_cctk_one = external global i32

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTKi_BindingsFortranWrapperCartGrid3D(%struct.cGH* %GH, i8* nocapture %fpointer) #0 {
  %1 = load i32* @CCTKi_BindingsFortranWrapperCartGrid3D.CCTKARGNUM_coarse_dx, align 4, !tbaa !2
  %2 = icmp eq i32 %1, -1
  br i1 %2, label %3, label %5

; <label>:3                                       ; preds = %0
  %4 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str, i64 0, i64 0)) #2
  store i32 %4, i32* @CCTKi_BindingsFortranWrapperCartGrid3D.CCTKARGNUM_coarse_dx, align 4, !tbaa !2
  br label %5

; <label>:5                                       ; preds = %3, %0
  %6 = load i32* @CCTKi_BindingsFortranWrapperCartGrid3D.CCTKGROUPNUM_gridspacings, align 4, !tbaa !2
  %7 = icmp eq i32 %6, -1
  br i1 %7, label %8, label %10

; <label>:8                                       ; preds = %5
  %9 = tail call i32 @CCTK_GroupIndex(i8* getelementptr inbounds ([19 x i8]* @.str1, i64 0, i64 0)) #2
  store i32 %9, i32* @CCTKi_BindingsFortranWrapperCartGrid3D.CCTKGROUPNUM_gridspacings, align 4, !tbaa !2
  br label %10

; <label>:10                                      ; preds = %8, %5
  %11 = load i32* @CCTKi_BindingsFortranWrapperCartGrid3D.CCTKARGNUM_coarse_dy, align 4, !tbaa !2
  %12 = icmp eq i32 %11, -1
  br i1 %12, label %13, label %15

; <label>:13                                      ; preds = %10
  %14 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str2, i64 0, i64 0)) #2
  store i32 %14, i32* @CCTKi_BindingsFortranWrapperCartGrid3D.CCTKARGNUM_coarse_dy, align 4, !tbaa !2
  br label %15

; <label>:15                                      ; preds = %13, %10
  %16 = load i32* @CCTKi_BindingsFortranWrapperCartGrid3D.CCTKARGNUM_coarse_dz, align 4, !tbaa !2
  %17 = icmp eq i32 %16, -1
  br i1 %17, label %18, label %20

; <label>:18                                      ; preds = %15
  %19 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str3, i64 0, i64 0)) #2
  store i32 %19, i32* @CCTKi_BindingsFortranWrapperCartGrid3D.CCTKARGNUM_coarse_dz, align 4, !tbaa !2
  br label %20

; <label>:20                                      ; preds = %18, %15
  %21 = load i32* @CCTKi_BindingsFortranWrapperCartGrid3D.CCTKARGNUM_r, align 4, !tbaa !2
  %22 = icmp eq i32 %21, -1
  br i1 %22, label %23, label %25

; <label>:23                                      ; preds = %20
  %24 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([8 x i8]* @.str4, i64 0, i64 0)) #2
  store i32 %24, i32* @CCTKi_BindingsFortranWrapperCartGrid3D.CCTKARGNUM_r, align 4, !tbaa !2
  br label %25

; <label>:25                                      ; preds = %23, %20
  %26 = load i32* @CCTKi_BindingsFortranWrapperCartGrid3D.CCTKGROUPNUM_coordinates, align 4, !tbaa !2
  %27 = icmp eq i32 %26, -1
  br i1 %27, label %28, label %30

; <label>:28                                      ; preds = %25
  %29 = tail call i32 @CCTK_GroupIndex(i8* getelementptr inbounds ([18 x i8]* @.str5, i64 0, i64 0)) #2
  store i32 %29, i32* @CCTKi_BindingsFortranWrapperCartGrid3D.CCTKGROUPNUM_coordinates, align 4, !tbaa !2
  br label %30

; <label>:30                                      ; preds = %28, %25
  %31 = load i32* @CCTKi_BindingsFortranWrapperCartGrid3D.CCTKARGNUM_x, align 4, !tbaa !2
  %32 = icmp eq i32 %31, -1
  br i1 %32, label %33, label %35

; <label>:33                                      ; preds = %30
  %34 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([8 x i8]* @.str6, i64 0, i64 0)) #2
  store i32 %34, i32* @CCTKi_BindingsFortranWrapperCartGrid3D.CCTKARGNUM_x, align 4, !tbaa !2
  br label %35

; <label>:35                                      ; preds = %33, %30
  %36 = load i32* @CCTKi_BindingsFortranWrapperCartGrid3D.CCTKARGNUM_y, align 4, !tbaa !2
  %37 = icmp eq i32 %36, -1
  br i1 %37, label %38, label %40

; <label>:38                                      ; preds = %35
  %39 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([8 x i8]* @.str7, i64 0, i64 0)) #2
  store i32 %39, i32* @CCTKi_BindingsFortranWrapperCartGrid3D.CCTKARGNUM_y, align 4, !tbaa !2
  br label %40

; <label>:40                                      ; preds = %38, %35
  %41 = load i32* @CCTKi_BindingsFortranWrapperCartGrid3D.CCTKARGNUM_z, align 4, !tbaa !2
  %42 = icmp eq i32 %41, -1
  br i1 %42, label %43, label %45

; <label>:43                                      ; preds = %40
  %44 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([8 x i8]* @.str8, i64 0, i64 0)) #2
  store i32 %44, i32* @CCTKi_BindingsFortranWrapperCartGrid3D.CCTKARGNUM_z, align 4, !tbaa !2
  br label %45

; <label>:45                                      ; preds = %43, %40
  %46 = bitcast i8* %fpointer to void (i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, double*, double*, double*, double*, i32*, i32*, i32*, i32*, %struct.cGH*, i32*, i32*, i32*, double*, double*, double*, double*, double*, double*, double*)*
  %47 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 0
  %48 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 2
  %49 = load i32** %48, align 8, !tbaa !6
  %50 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 3
  %51 = load i32** %50, align 8, !tbaa !10
  %52 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 4
  %53 = load i32** %52, align 8, !tbaa !11
  %54 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 5
  %55 = load i32** %54, align 8, !tbaa !12
  %56 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 6
  %57 = load i32** %56, align 8, !tbaa !13
  %58 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 8
  %59 = load i32** %58, align 8, !tbaa !14
  %60 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 7
  %61 = load i32** %60, align 8, !tbaa !15
  %62 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 12
  %63 = load i32** %62, align 8, !tbaa !16
  %64 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 9
  %65 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 16
  %66 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 10
  %67 = load double** %66, align 8, !tbaa !17
  %68 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 11
  %69 = load double** %68, align 8, !tbaa !18
  %70 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 13
  %71 = load i32** %70, align 8, !tbaa !19
  %72 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 14
  %73 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 15
  %74 = load i32** %73, align 8, !tbaa !20
  %75 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 1
  %76 = load i32* @CCTKi_BindingsFortranWrapperCartGrid3D.CCTKGROUPNUM_coordinates, align 4, !tbaa !2
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %.thread4, label %78

; <label>:78                                      ; preds = %45
  %79 = tail call i32 @CCTK_QueryGroupStorage(%struct.cGH* %GH, i8* getelementptr inbounds ([18 x i8]* @.str5, i64 0, i64 0)) #2
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %83, label %81

; <label>:81                                      ; preds = %78
  %82 = tail call i32* @CCTK_ArrayGroupSize(%struct.cGH* %GH, i32 0, i8* getelementptr inbounds ([18 x i8]* @.str5, i64 0, i64 0)) #2
  br label %83

; <label>:83                                      ; preds = %78, %81
  %.ph = phi i32* [ @_cctk_one, %78 ], [ %82, %81 ]
  %.pr = load i32* @CCTKi_BindingsFortranWrapperCartGrid3D.CCTKGROUPNUM_coordinates, align 4, !tbaa !2
  %84 = icmp slt i32 %.pr, 0
  br i1 %84, label %.thread4, label %85

; <label>:85                                      ; preds = %83
  %86 = tail call i32 @CCTK_QueryGroupStorage(%struct.cGH* %GH, i8* getelementptr inbounds ([18 x i8]* @.str5, i64 0, i64 0)) #2
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %.thread, label %88

; <label>:88                                      ; preds = %85
  %89 = tail call i32* @CCTK_ArrayGroupSize(%struct.cGH* %GH, i32 1, i8* getelementptr inbounds ([18 x i8]* @.str5, i64 0, i64 0)) #2
  br label %.thread

.thread:                                          ; preds = %85, %88
  %.ph2.ph = phi i32* [ %89, %88 ], [ @_cctk_one, %85 ]
  %.pr3.pr = load i32* @CCTKi_BindingsFortranWrapperCartGrid3D.CCTKGROUPNUM_coordinates, align 4, !tbaa !2
  %90 = icmp slt i32 %.pr3.pr, 0
  br i1 %90, label %.thread4, label %91

; <label>:91                                      ; preds = %.thread
  %92 = tail call i32 @CCTK_QueryGroupStorage(%struct.cGH* %GH, i8* getelementptr inbounds ([18 x i8]* @.str5, i64 0, i64 0)) #2
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %.thread4, label %94

; <label>:94                                      ; preds = %91
  %95 = tail call i32* @CCTK_ArrayGroupSize(%struct.cGH* %GH, i32 2, i8* getelementptr inbounds ([18 x i8]* @.str5, i64 0, i64 0)) #2
  br label %.thread4

.thread4:                                         ; preds = %45, %83, %91, %94, %.thread
  %96 = phi i32* [ %.ph2.ph, %.thread ], [ %.ph2.ph, %94 ], [ %.ph2.ph, %91 ], [ @_cctk_one, %83 ], [ @_cctk_one, %45 ]
  %97 = phi i32* [ %.ph, %.thread ], [ %.ph, %94 ], [ %.ph, %91 ], [ %.ph, %83 ], [ @_cctk_one, %45 ]
  %98 = phi i32* [ @_cctk_one, %.thread ], [ %95, %94 ], [ @_cctk_one, %91 ], [ @_cctk_one, %83 ], [ @_cctk_one, %45 ]
  %99 = load i32* @CCTKi_BindingsFortranWrapperCartGrid3D.CCTKARGNUM_coarse_dx, align 4, !tbaa !2
  %100 = icmp slt i32 %99, 0
  br i1 %100, label %109, label %101

; <label>:101                                     ; preds = %.thread4
  %102 = sext i32 %99 to i64
  %103 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17
  %104 = load i8**** %103, align 8, !tbaa !21
  %105 = getelementptr inbounds i8*** %104, i64 %102
  %106 = bitcast i8*** %105 to double***
  %107 = load double*** %106, align 8, !tbaa !22
  %108 = load double** %107, align 8, !tbaa !22
  br label %109

; <label>:109                                     ; preds = %.thread4, %101
  %110 = phi double* [ %108, %101 ], [ null, %.thread4 ]
  %111 = load i32* @CCTKi_BindingsFortranWrapperCartGrid3D.CCTKARGNUM_coarse_dy, align 4, !tbaa !2
  %112 = icmp slt i32 %111, 0
  br i1 %112, label %121, label %113

; <label>:113                                     ; preds = %109
  %114 = sext i32 %111 to i64
  %115 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17
  %116 = load i8**** %115, align 8, !tbaa !21
  %117 = getelementptr inbounds i8*** %116, i64 %114
  %118 = bitcast i8*** %117 to double***
  %119 = load double*** %118, align 8, !tbaa !22
  %120 = load double** %119, align 8, !tbaa !22
  br label %121

; <label>:121                                     ; preds = %109, %113
  %122 = phi double* [ %120, %113 ], [ null, %109 ]
  %123 = load i32* @CCTKi_BindingsFortranWrapperCartGrid3D.CCTKARGNUM_coarse_dz, align 4, !tbaa !2
  %124 = icmp slt i32 %123, 0
  br i1 %124, label %133, label %125

; <label>:125                                     ; preds = %121
  %126 = sext i32 %123 to i64
  %127 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17
  %128 = load i8**** %127, align 8, !tbaa !21
  %129 = getelementptr inbounds i8*** %128, i64 %126
  %130 = bitcast i8*** %129 to double***
  %131 = load double*** %130, align 8, !tbaa !22
  %132 = load double** %131, align 8, !tbaa !22
  br label %133

; <label>:133                                     ; preds = %121, %125
  %134 = phi double* [ %132, %125 ], [ null, %121 ]
  %135 = load i32* @CCTKi_BindingsFortranWrapperCartGrid3D.CCTKARGNUM_r, align 4, !tbaa !2
  %136 = icmp slt i32 %135, 0
  br i1 %136, label %145, label %137

; <label>:137                                     ; preds = %133
  %138 = sext i32 %135 to i64
  %139 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17
  %140 = load i8**** %139, align 8, !tbaa !21
  %141 = getelementptr inbounds i8*** %140, i64 %138
  %142 = bitcast i8*** %141 to double***
  %143 = load double*** %142, align 8, !tbaa !22
  %144 = load double** %143, align 8, !tbaa !22
  br label %145

; <label>:145                                     ; preds = %133, %137
  %146 = phi double* [ %144, %137 ], [ null, %133 ]
  %147 = load i32* @CCTKi_BindingsFortranWrapperCartGrid3D.CCTKARGNUM_x, align 4, !tbaa !2
  %148 = icmp slt i32 %147, 0
  br i1 %148, label %157, label %149

; <label>:149                                     ; preds = %145
  %150 = sext i32 %147 to i64
  %151 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17
  %152 = load i8**** %151, align 8, !tbaa !21
  %153 = getelementptr inbounds i8*** %152, i64 %150
  %154 = bitcast i8*** %153 to double***
  %155 = load double*** %154, align 8, !tbaa !22
  %156 = load double** %155, align 8, !tbaa !22
  br label %157

; <label>:157                                     ; preds = %145, %149
  %158 = phi double* [ %156, %149 ], [ null, %145 ]
  %159 = load i32* @CCTKi_BindingsFortranWrapperCartGrid3D.CCTKARGNUM_y, align 4, !tbaa !2
  %160 = icmp slt i32 %159, 0
  br i1 %160, label %169, label %161

; <label>:161                                     ; preds = %157
  %162 = sext i32 %159 to i64
  %163 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17
  %164 = load i8**** %163, align 8, !tbaa !21
  %165 = getelementptr inbounds i8*** %164, i64 %162
  %166 = bitcast i8*** %165 to double***
  %167 = load double*** %166, align 8, !tbaa !22
  %168 = load double** %167, align 8, !tbaa !22
  br label %169

; <label>:169                                     ; preds = %157, %161
  %170 = phi double* [ %168, %161 ], [ null, %157 ]
  %171 = load i32* @CCTKi_BindingsFortranWrapperCartGrid3D.CCTKARGNUM_z, align 4, !tbaa !2
  %172 = icmp slt i32 %171, 0
  br i1 %172, label %181, label %173

; <label>:173                                     ; preds = %169
  %174 = sext i32 %171 to i64
  %175 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17
  %176 = load i8**** %175, align 8, !tbaa !21
  %177 = getelementptr inbounds i8*** %176, i64 %174
  %178 = bitcast i8*** %177 to double***
  %179 = load double*** %178, align 8, !tbaa !22
  %180 = load double** %179, align 8, !tbaa !22
  br label %181

; <label>:181                                     ; preds = %169, %173
  %182 = phi double* [ %180, %173 ], [ null, %169 ]
  tail call void %46(i32* %47, i32* %49, i32* %51, i32* %53, i32* %55, i32* %57, i32* %59, i32* %61, i32* %63, double* %64, double* %65, double* %67, double* %69, i32* %71, i32* %72, i32* %74, i32* %75, %struct.cGH* %GH, i32* %97, i32* %96, i32* %98, double* %110, double* %122, double* %134, double* %146, double* %158, double* %170, double* %182) #2
  ret i32 0
}

; Function Attrs: optsize
declare i32 @CCTK_VarIndex(i8*) #1

; Function Attrs: optsize
declare i32 @CCTK_GroupIndex(i8*) #1

; Function Attrs: optsize
declare i32 @CCTK_QueryGroupStorage(%struct.cGH*, i8*) #1

; Function Attrs: optsize
declare i32* @CCTK_ArrayGroupSize(%struct.cGH*, i32, i8*) #1

attributes #0 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!2 = !{!3, !3, i64 0}
!3 = !{!"int", !4, i64 0}
!4 = !{!"omnipotent char", !5, i64 0}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!7, !8, i64 8}
!7 = !{!"", !3, i64 0, !3, i64 4, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !8, i64 40, !8, i64 48, !8, i64 56, !9, i64 64, !8, i64 72, !8, i64 80, !8, i64 88, !8, i64 96, !3, i64 104, !8, i64 112, !9, i64 120, !8, i64 128, !8, i64 136, !8, i64 144}
!8 = !{!"any pointer", !4, i64 0}
!9 = !{!"double", !4, i64 0}
!10 = !{!7, !8, i64 16}
!11 = !{!7, !8, i64 24}
!12 = !{!7, !8, i64 32}
!13 = !{!7, !8, i64 40}
!14 = !{!7, !8, i64 56}
!15 = !{!7, !8, i64 48}
!16 = !{!7, !8, i64 88}
!17 = !{!7, !8, i64 72}
!18 = !{!7, !8, i64 80}
!19 = !{!7, !8, i64 96}
!20 = !{!7, !8, i64 112}
!21 = !{!7, !8, i64 128}
!22 = !{!8, !8, i64 0}
