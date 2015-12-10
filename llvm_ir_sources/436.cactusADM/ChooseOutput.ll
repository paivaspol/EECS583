; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/IOASCII/ChooseOutput.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.anon = type { double, double, double, double, double, double, double, double, double, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.anon.0 = type { double, double, double, double, double, double, double, double, double, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.cGH = type { i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, double, double*, double*, i32*, i32*, i32, i32*, double, i8***, i8**, %struct.cGHGroupData* }
%struct.cGHGroupData = type { i8, i8 }

@ioasciipriv_ = external global %struct.anon
@iorest_ = external global %struct.anon.0
@.str = private unnamed_addr constant [15 x i8] c"out1D_xline_yi\00", align 1
@.str1 = private unnamed_addr constant [8 x i8] c"IOASCII\00", align 1
@.str2 = private unnamed_addr constant [13 x i8] c"out_xline_yi\00", align 1
@.str3 = private unnamed_addr constant [7 x i8] c"IOUtil\00", align 1
@.str4 = private unnamed_addr constant [14 x i8] c"out1D_xline_y\00", align 1
@.str5 = private unnamed_addr constant [15 x i8] c"out1D_xline_zi\00", align 1
@.str6 = private unnamed_addr constant [13 x i8] c"out_xline_zi\00", align 1
@.str7 = private unnamed_addr constant [14 x i8] c"out1D_xline_z\00", align 1
@.str8 = private unnamed_addr constant [15 x i8] c"out1D_yline_xi\00", align 1
@.str9 = private unnamed_addr constant [13 x i8] c"out_yline_xi\00", align 1
@.str10 = private unnamed_addr constant [14 x i8] c"out1D_yline_x\00", align 1
@.str11 = private unnamed_addr constant [15 x i8] c"out1D_yline_zi\00", align 1
@.str12 = private unnamed_addr constant [13 x i8] c"out_yline_zi\00", align 1
@.str13 = private unnamed_addr constant [14 x i8] c"out1D_yline_z\00", align 1
@.str14 = private unnamed_addr constant [15 x i8] c"out1D_zline_xi\00", align 1
@.str15 = private unnamed_addr constant [13 x i8] c"out_zline_xi\00", align 1
@.str16 = private unnamed_addr constant [14 x i8] c"out1D_zline_x\00", align 1
@.str17 = private unnamed_addr constant [15 x i8] c"out1D_zline_yi\00", align 1
@.str18 = private unnamed_addr constant [13 x i8] c"out_zline_yi\00", align 1
@.str19 = private unnamed_addr constant [14 x i8] c"out1D_zline_y\00", align 1
@.str20 = private unnamed_addr constant [17 x i8] c"out2D_xyplane_zi\00", align 1
@.str21 = private unnamed_addr constant [15 x i8] c"out_xyplane_zi\00", align 1
@.str22 = private unnamed_addr constant [16 x i8] c"out2D_xyplane_z\00", align 1
@.str23 = private unnamed_addr constant [17 x i8] c"out2D_xzplane_yi\00", align 1
@.str24 = private unnamed_addr constant [15 x i8] c"out_xzplane_yi\00", align 1
@.str25 = private unnamed_addr constant [16 x i8] c"out2D_xzplane_y\00", align 1
@.str26 = private unnamed_addr constant [17 x i8] c"out2D_yzplane_xi\00", align 1
@.str27 = private unnamed_addr constant [15 x i8] c"out_yzplane_xi\00", align 1
@.str28 = private unnamed_addr constant [16 x i8] c"out2D_yzplane_x\00", align 1
@.str29 = private unnamed_addr constant [95 x i8] c"$Header: /cactus/CactusBase/IOASCII/src/ChooseOutput.c,v 1.15 2001/12/13 12:08:36 tradke Exp $\00", align 1

; Function Attrs: nounwind optsize readnone ssp uwtable
define i8* @CCTKi_version_CactusBase_IOASCII_ChooseOutput_c() #0 {
  ret i8* getelementptr inbounds ([95 x i8]* @.str29, i64 0, i64 0)
}

; Function Attrs: nounwind optsize ssp uwtable
define void @IOASCII_Choose1D(%struct.cGH* %GH) #1 {
  %origin_index = alloca [3 x i32*], align 16
  %origin_phys = alloca [3 x double*], align 16
  %1 = load i64* bitcast (%struct.anon* @ioasciipriv_ to i64*), align 8, !tbaa !2
  %2 = load i64* bitcast (double* getelementptr inbounds (%struct.anon* @ioasciipriv_, i64 0, i32 1) to i64*), align 8, !tbaa !9
  %3 = load i64* bitcast (double* getelementptr inbounds (%struct.anon* @ioasciipriv_, i64 0, i32 2) to i64*), align 8, !tbaa !10
  %4 = load i64* bitcast (double* getelementptr inbounds (%struct.anon* @ioasciipriv_, i64 0, i32 3) to i64*), align 8, !tbaa !11
  %5 = load i64* bitcast (double* getelementptr inbounds (%struct.anon* @ioasciipriv_, i64 0, i32 4) to i64*), align 8, !tbaa !12
  %6 = load i64* bitcast (double* getelementptr inbounds (%struct.anon* @ioasciipriv_, i64 0, i32 5) to i64*), align 8, !tbaa !13
  %7 = load i32* getelementptr inbounds (%struct.anon* @ioasciipriv_, i64 0, i32 23), align 4, !tbaa !14
  %8 = load i32* getelementptr inbounds (%struct.anon* @ioasciipriv_, i64 0, i32 24), align 8, !tbaa !15
  %9 = load i64* bitcast (i32* getelementptr inbounds (%struct.anon* @ioasciipriv_, i64 0, i32 26) to i64*), align 8
  %10 = trunc i64 %9 to i32
  %11 = lshr i64 %9, 32
  %12 = trunc i64 %11 to i32
  %13 = load i32* getelementptr inbounds (%struct.anon* @ioasciipriv_, i64 0, i32 29), align 4, !tbaa !16
  %14 = load i32* getelementptr inbounds (%struct.anon* @ioasciipriv_, i64 0, i32 30), align 8, !tbaa !17
  %15 = load i64* bitcast (%struct.anon.0* @iorest_ to i64*), align 8, !tbaa !18
  %16 = load i64* bitcast (double* getelementptr inbounds (%struct.anon.0* @iorest_, i64 0, i32 1) to i64*), align 8, !tbaa !20
  %17 = load i64* bitcast (double* getelementptr inbounds (%struct.anon.0* @iorest_, i64 0, i32 4) to i64*), align 8, !tbaa !21
  %18 = load i64* bitcast (double* getelementptr inbounds (%struct.anon.0* @iorest_, i64 0, i32 5) to i64*), align 8, !tbaa !22
  %19 = load i64* bitcast (double* getelementptr inbounds (%struct.anon.0* @iorest_, i64 0, i32 7) to i64*), align 8, !tbaa !23
  %20 = load i64* bitcast (double* getelementptr inbounds (%struct.anon.0* @iorest_, i64 0, i32 8) to i64*), align 8, !tbaa !24
  %21 = load i32* getelementptr inbounds (%struct.anon.0* @iorest_, i64 0, i32 38), align 4, !tbaa !25
  %22 = load i32* getelementptr inbounds (%struct.anon.0* @iorest_, i64 0, i32 39), align 8, !tbaa !26
  %23 = load i32* getelementptr inbounds (%struct.anon.0* @iorest_, i64 0, i32 42), align 4, !tbaa !27
  %24 = load i32* getelementptr inbounds (%struct.anon.0* @iorest_, i64 0, i32 43), align 8, !tbaa !28
  %25 = load i64* bitcast (i32* getelementptr inbounds (%struct.anon.0* @iorest_, i64 0, i32 45) to i64*), align 8
  %26 = trunc i64 %25 to i32
  %27 = lshr i64 %25, 32
  %28 = trunc i64 %27 to i32
  %29 = tail call i8* @malloc(i64 72) #5
  %30 = getelementptr inbounds [3 x double*]* %origin_phys, i64 0, i64 0
  %31 = bitcast [3 x double*]* %origin_phys to i8**
  store i8* %29, i8** %31, align 16, !tbaa !29
  %32 = getelementptr inbounds i8* %29, i64 24
  %33 = getelementptr inbounds [3 x double*]* %origin_phys, i64 0, i64 1
  %34 = bitcast double** %33 to i8**
  store i8* %32, i8** %34, align 8, !tbaa !29
  %35 = getelementptr inbounds i8* %29, i64 48
  %36 = getelementptr inbounds [3 x double*]* %origin_phys, i64 0, i64 2
  %37 = bitcast double** %36 to i8**
  store i8* %35, i8** %37, align 16, !tbaa !29
  %38 = tail call i8* @malloc(i64 36) #5
  %39 = getelementptr inbounds [3 x i32*]* %origin_index, i64 0, i64 0
  %40 = bitcast [3 x i32*]* %origin_index to i8**
  store i8* %38, i8** %40, align 16, !tbaa !29
  %41 = getelementptr inbounds i8* %38, i64 12
  %42 = getelementptr inbounds [3 x i32*]* %origin_index, i64 0, i64 1
  %43 = bitcast i32** %42 to i8**
  store i8* %41, i8** %43, align 8, !tbaa !29
  %44 = getelementptr inbounds i8* %38, i64 24
  %45 = getelementptr inbounds [3 x i32*]* %origin_index, i64 0, i64 2
  %46 = bitcast i32** %45 to i8**
  store i8* %44, i8** %46, align 16, !tbaa !29
  %47 = getelementptr inbounds i8* %38, i64 4
  %48 = bitcast i8* %47 to i32*
  store i32 -1, i32* %48, align 4, !tbaa !30
  %49 = tail call i32 @CCTK_ParameterQueryTimesSet(i8* getelementptr inbounds ([15 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str1, i64 0, i64 0)) #5
  %50 = icmp sgt i32 %49, 0
  %51 = bitcast i8* %41 to i32*
  %52 = bitcast i8* %32 to i64*
  %53 = bitcast i8* %44 to i32*
  %54 = bitcast i8* %35 to i64*
  br i1 %50, label %55, label %58

; <label>:55                                      ; preds = %0
  %56 = getelementptr inbounds i8* %38, i64 4
  %57 = bitcast i8* %56 to i32*
  store i32 %7, i32* %57, align 4, !tbaa !30
  br label %71

; <label>:58                                      ; preds = %0
  %59 = tail call i32 @CCTK_ParameterQueryTimesSet(i8* getelementptr inbounds ([13 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str3, i64 0, i64 0)) #5
  %60 = icmp sgt i32 %59, 0
  br i1 %60, label %61, label %64

; <label>:61                                      ; preds = %58
  %62 = getelementptr inbounds i8* %38, i64 4
  %63 = bitcast i8* %62 to i32*
  store i32 %21, i32* %63, align 4, !tbaa !30
  br label %71

; <label>:64                                      ; preds = %58
  %65 = tail call i32 @CCTK_ParameterQueryTimesSet(i8* getelementptr inbounds ([14 x i8]* @.str4, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str1, i64 0, i64 0)) #5
  %66 = icmp sgt i32 %65, 0
  %67 = getelementptr inbounds i8* %29, i64 8
  %68 = bitcast i8* %67 to i64*
  br i1 %66, label %69, label %70

; <label>:69                                      ; preds = %64
  store i64 %1, i64* %68, align 8, !tbaa !31
  br label %71

; <label>:70                                      ; preds = %64
  store i64 %15, i64* %68, align 8, !tbaa !31
  br label %71

; <label>:71                                      ; preds = %61, %70, %69, %55
  %72 = getelementptr inbounds i8* %38, i64 8
  %73 = bitcast i8* %72 to i32*
  store i32 -1, i32* %73, align 4, !tbaa !30
  %74 = tail call i32 @CCTK_ParameterQueryTimesSet(i8* getelementptr inbounds ([15 x i8]* @.str5, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str1, i64 0, i64 0)) #5
  %75 = icmp sgt i32 %74, 0
  br i1 %75, label %76, label %77

; <label>:76                                      ; preds = %71
  store i32 %8, i32* %73, align 4, !tbaa !30
  br label %88

; <label>:77                                      ; preds = %71
  %78 = tail call i32 @CCTK_ParameterQueryTimesSet(i8* getelementptr inbounds ([13 x i8]* @.str6, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str3, i64 0, i64 0)) #5
  %79 = icmp sgt i32 %78, 0
  br i1 %79, label %80, label %81

; <label>:80                                      ; preds = %77
  store i32 %22, i32* %73, align 4, !tbaa !30
  br label %88

; <label>:81                                      ; preds = %77
  %82 = tail call i32 @CCTK_ParameterQueryTimesSet(i8* getelementptr inbounds ([14 x i8]* @.str7, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str1, i64 0, i64 0)) #5
  %83 = icmp sgt i32 %82, 0
  %84 = getelementptr inbounds i8* %29, i64 16
  %85 = bitcast i8* %84 to i64*
  br i1 %83, label %86, label %87

; <label>:86                                      ; preds = %81
  store i64 %2, i64* %85, align 8, !tbaa !31
  br label %88

; <label>:87                                      ; preds = %81
  store i64 %16, i64* %85, align 8, !tbaa !31
  br label %88

; <label>:88                                      ; preds = %80, %87, %86, %76
  store i32 -1, i32* %51, align 4, !tbaa !30
  %89 = tail call i32 @CCTK_ParameterQueryTimesSet(i8* getelementptr inbounds ([15 x i8]* @.str8, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str1, i64 0, i64 0)) #5
  %90 = icmp sgt i32 %89, 0
  br i1 %90, label %91, label %92

; <label>:91                                      ; preds = %88
  store i32 %10, i32* %51, align 4, !tbaa !30
  br label %101

; <label>:92                                      ; preds = %88
  %93 = tail call i32 @CCTK_ParameterQueryTimesSet(i8* getelementptr inbounds ([13 x i8]* @.str9, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str3, i64 0, i64 0)) #5
  %94 = icmp sgt i32 %93, 0
  br i1 %94, label %95, label %96

; <label>:95                                      ; preds = %92
  store i32 %23, i32* %51, align 4, !tbaa !30
  br label %101

; <label>:96                                      ; preds = %92
  %97 = tail call i32 @CCTK_ParameterQueryTimesSet(i8* getelementptr inbounds ([14 x i8]* @.str10, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str1, i64 0, i64 0)) #5
  %98 = icmp sgt i32 %97, 0
  br i1 %98, label %99, label %100

; <label>:99                                      ; preds = %96
  store i64 %3, i64* %52, align 8, !tbaa !31
  br label %101

; <label>:100                                     ; preds = %96
  store i64 %17, i64* %52, align 8, !tbaa !31
  br label %101

; <label>:101                                     ; preds = %95, %100, %99, %91
  %102 = getelementptr inbounds i8* %38, i64 20
  %103 = bitcast i8* %102 to i32*
  store i32 -1, i32* %103, align 4, !tbaa !30
  %104 = tail call i32 @CCTK_ParameterQueryTimesSet(i8* getelementptr inbounds ([15 x i8]* @.str11, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str1, i64 0, i64 0)) #5
  %105 = icmp sgt i32 %104, 0
  br i1 %105, label %106, label %107

; <label>:106                                     ; preds = %101
  store i32 %12, i32* %103, align 4, !tbaa !30
  br label %118

; <label>:107                                     ; preds = %101
  %108 = tail call i32 @CCTK_ParameterQueryTimesSet(i8* getelementptr inbounds ([13 x i8]* @.str12, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str3, i64 0, i64 0)) #5
  %109 = icmp sgt i32 %108, 0
  br i1 %109, label %110, label %111

; <label>:110                                     ; preds = %107
  store i32 %24, i32* %103, align 4, !tbaa !30
  br label %118

; <label>:111                                     ; preds = %107
  %112 = tail call i32 @CCTK_ParameterQueryTimesSet(i8* getelementptr inbounds ([14 x i8]* @.str13, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str1, i64 0, i64 0)) #5
  %113 = icmp sgt i32 %112, 0
  %114 = getelementptr inbounds i8* %29, i64 40
  %115 = bitcast i8* %114 to i64*
  br i1 %113, label %116, label %117

; <label>:116                                     ; preds = %111
  store i64 %4, i64* %115, align 8, !tbaa !31
  br label %118

; <label>:117                                     ; preds = %111
  store i64 %18, i64* %115, align 8, !tbaa !31
  br label %118

; <label>:118                                     ; preds = %110, %117, %116, %106
  store i32 -1, i32* %53, align 4, !tbaa !30
  %119 = tail call i32 @CCTK_ParameterQueryTimesSet(i8* getelementptr inbounds ([15 x i8]* @.str14, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str1, i64 0, i64 0)) #5
  %120 = icmp sgt i32 %119, 0
  br i1 %120, label %121, label %122

; <label>:121                                     ; preds = %118
  store i32 %13, i32* %53, align 4, !tbaa !30
  br label %131

; <label>:122                                     ; preds = %118
  %123 = tail call i32 @CCTK_ParameterQueryTimesSet(i8* getelementptr inbounds ([13 x i8]* @.str15, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str3, i64 0, i64 0)) #5
  %124 = icmp sgt i32 %123, 0
  br i1 %124, label %125, label %126

; <label>:125                                     ; preds = %122
  store i32 %26, i32* %53, align 4, !tbaa !30
  br label %131

; <label>:126                                     ; preds = %122
  %127 = tail call i32 @CCTK_ParameterQueryTimesSet(i8* getelementptr inbounds ([14 x i8]* @.str16, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str1, i64 0, i64 0)) #5
  %128 = icmp sgt i32 %127, 0
  br i1 %128, label %129, label %130

; <label>:129                                     ; preds = %126
  store i64 %5, i64* %54, align 8, !tbaa !31
  br label %131

; <label>:130                                     ; preds = %126
  store i64 %19, i64* %54, align 8, !tbaa !31
  br label %131

; <label>:131                                     ; preds = %125, %130, %129, %121
  %132 = getelementptr inbounds i8* %38, i64 28
  %133 = bitcast i8* %132 to i32*
  store i32 -1, i32* %133, align 4, !tbaa !30
  %134 = tail call i32 @CCTK_ParameterQueryTimesSet(i8* getelementptr inbounds ([15 x i8]* @.str17, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str1, i64 0, i64 0)) #5
  %135 = icmp sgt i32 %134, 0
  br i1 %135, label %136, label %137

; <label>:136                                     ; preds = %131
  store i32 %14, i32* %133, align 4, !tbaa !30
  br label %148

; <label>:137                                     ; preds = %131
  %138 = tail call i32 @CCTK_ParameterQueryTimesSet(i8* getelementptr inbounds ([13 x i8]* @.str18, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str3, i64 0, i64 0)) #5
  %139 = icmp sgt i32 %138, 0
  br i1 %139, label %140, label %141

; <label>:140                                     ; preds = %137
  store i32 %28, i32* %133, align 4, !tbaa !30
  br label %148

; <label>:141                                     ; preds = %137
  %142 = tail call i32 @CCTK_ParameterQueryTimesSet(i8* getelementptr inbounds ([14 x i8]* @.str19, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str1, i64 0, i64 0)) #5
  %143 = icmp sgt i32 %142, 0
  %144 = getelementptr inbounds i8* %29, i64 56
  %145 = bitcast i8* %144 to i64*
  br i1 %143, label %146, label %147

; <label>:146                                     ; preds = %141
  store i64 %6, i64* %145, align 8, !tbaa !31
  br label %148

; <label>:147                                     ; preds = %141
  store i64 %20, i64* %145, align 8, !tbaa !31
  br label %148

; <label>:148                                     ; preds = %140, %147, %146, %136
  %149 = tail call i8* @CCTK_GHExtension(%struct.cGH* %GH, i8* getelementptr inbounds ([8 x i8]* @.str1, i64 0, i64 0)) #5
  %150 = call i32 @CCTK_MaxDim() #5
  %151 = icmp slt i32 %150, 1
  br i1 %151, label %174, label %.lr.ph5

.lr.ph5:                                          ; preds = %148
  %152 = getelementptr inbounds i8* %149, i64 112
  %153 = bitcast i8* %152 to i32****
  br label %154

; <label>:154                                     ; preds = %.loopexit, %.lr.ph5
  %indvars.iv8 = phi i64 [ %indvars.iv.next9, %.loopexit ], [ 1, %.lr.ph5 ]
  %indvars.iv6 = phi i32 [ %indvars.iv.next7, %.loopexit ], [ 1, %.lr.ph5 ]
  %155 = icmp slt i64 %indvars.iv8, 4
  %156 = add nsw i64 %indvars.iv8, -1
  br i1 %155, label %157, label %.lr.ph

; <label>:157                                     ; preds = %154
  %158 = load i32**** %153, align 8, !tbaa !32
  %159 = getelementptr inbounds i32*** %158, i64 %156
  %160 = load i32*** %159, align 8, !tbaa !29
  %161 = trunc i64 %indvars.iv8 to i32
  %162 = call i32 @IOUtil_1DLines(%struct.cGH* %GH, i32 %161, i32** %39, double** %30, i32** %160) #5
  br label %.loopexit

.lr.ph:                                           ; preds = %154, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %154 ]
  %163 = load i32**** %153, align 8, !tbaa !32
  %164 = getelementptr inbounds i32*** %163, i64 %156
  %165 = load i32*** %164, align 8, !tbaa !29
  %166 = getelementptr inbounds i32** %165, i64 %indvars.iv
  %167 = bitcast i32** %166 to i8**
  %168 = load i8** %167, align 8, !tbaa !29
  %169 = call i64 @llvm.objectsize.i64.p0i8(i8* %168, i1 false)
  %170 = call i8* @__memset_chk(i8* %168, i32 0, i64 %indvars.iv8, i64 %169) #5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %indvars.iv6
  br i1 %exitcond, label %.loopexit, label %.lr.ph

.loopexit:                                        ; preds = %.lr.ph, %157
  %indvars.iv.next9 = add nuw nsw i64 %indvars.iv8, 1
  %indvars.iv.next7 = add nuw nsw i32 %indvars.iv6, 1
  %171 = call i32 @CCTK_MaxDim() #5
  %172 = sext i32 %171 to i64
  %173 = icmp slt i64 %indvars.iv8, %172
  br i1 %173, label %154, label %._crit_edge

._crit_edge:                                      ; preds = %.loopexit
  %.pre = load i8** %31, align 16, !tbaa !29
  br label %174

; <label>:174                                     ; preds = %._crit_edge, %148
  %175 = phi i8* [ %.pre, %._crit_edge ], [ %29, %148 ]
  call void @free(i8* %175) #6
  %176 = load i8** %40, align 16, !tbaa !29
  call void @free(i8* %176) #6
  ret void
}

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i64) #2

; Function Attrs: optsize
declare i32 @CCTK_ParameterQueryTimesSet(i8*, i8*) #3

; Function Attrs: optsize
declare i8* @CCTK_GHExtension(%struct.cGH*, i8*) #3

; Function Attrs: optsize
declare i32 @CCTK_MaxDim() #3

; Function Attrs: optsize
declare i32 @IOUtil_1DLines(%struct.cGH*, i32, i32**, double**, i32**) #3

; Function Attrs: nounwind optsize
declare i8* @__memset_chk(i8*, i32, i64, i64) #2

; Function Attrs: nounwind readnone
declare i64 @llvm.objectsize.i64.p0i8(i8*, i1) #4

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #2

; Function Attrs: nounwind optsize ssp uwtable
define void @IOASCII_Choose2D(%struct.cGH* %GH) #1 {
  %origin_index = alloca [3 x i32], align 4
  %origin_phys = alloca [3 x double], align 16
  %1 = load i64* bitcast (double* getelementptr inbounds (%struct.anon* @ioasciipriv_, i64 0, i32 6) to i64*), align 8, !tbaa !34
  %2 = load i64* bitcast (double* getelementptr inbounds (%struct.anon* @ioasciipriv_, i64 0, i32 7) to i64*), align 8, !tbaa !35
  %3 = load i64* bitcast (double* getelementptr inbounds (%struct.anon* @ioasciipriv_, i64 0, i32 8) to i64*), align 8, !tbaa !36
  %4 = load i64* bitcast (i32* getelementptr inbounds (%struct.anon* @ioasciipriv_, i64 0, i32 32) to i64*), align 8
  %5 = lshr i64 %4, 32
  %6 = trunc i64 %5 to i32
  %7 = load i32* getelementptr inbounds (%struct.anon* @ioasciipriv_, i64 0, i32 34), align 8, !tbaa !37
  %8 = load i64* bitcast (double* getelementptr inbounds (%struct.anon.0* @iorest_, i64 0, i32 6) to i64*), align 8, !tbaa !38
  %9 = load i64* bitcast (double* getelementptr inbounds (%struct.anon.0* @iorest_, i64 0, i32 3) to i64*), align 8, !tbaa !39
  %10 = load i64* bitcast (double* getelementptr inbounds (%struct.anon.0* @iorest_, i64 0, i32 2) to i64*), align 8, !tbaa !40
  %11 = load i32* getelementptr inbounds (%struct.anon.0* @iorest_, i64 0, i32 40), align 4, !tbaa !41
  %12 = load i32* getelementptr inbounds (%struct.anon.0* @iorest_, i64 0, i32 41), align 8, !tbaa !42
  %13 = load i32* getelementptr inbounds (%struct.anon.0* @iorest_, i64 0, i32 44), align 4, !tbaa !43
  %14 = getelementptr inbounds [3 x i32]* %origin_index, i64 0, i64 0
  store i32 -1, i32* %14, align 4, !tbaa !30
  %15 = tail call i32 @CCTK_ParameterQueryTimesSet(i8* getelementptr inbounds ([17 x i8]* @.str20, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str1, i64 0, i64 0)) #5
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %17, label %19

; <label>:17                                      ; preds = %0
  %18 = trunc i64 %4 to i32
  store i32 %18, i32* %14, align 4, !tbaa !30
  br label %29

; <label>:19                                      ; preds = %0
  %20 = tail call i32 @CCTK_ParameterQueryTimesSet(i8* getelementptr inbounds ([15 x i8]* @.str21, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str3, i64 0, i64 0)) #5
  %21 = icmp sgt i32 %20, 0
  br i1 %21, label %22, label %23

; <label>:22                                      ; preds = %19
  store i32 %11, i32* %14, align 4, !tbaa !30
  br label %29

; <label>:23                                      ; preds = %19
  %24 = tail call i32 @CCTK_ParameterQueryTimesSet(i8* getelementptr inbounds ([16 x i8]* @.str22, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str1, i64 0, i64 0)) #5
  %25 = icmp sgt i32 %24, 0
  %26 = bitcast [3 x double]* %origin_phys to i64*
  br i1 %25, label %27, label %28

; <label>:27                                      ; preds = %23
  store i64 %1, i64* %26, align 16, !tbaa !31
  br label %29

; <label>:28                                      ; preds = %23
  store i64 %10, i64* %26, align 16, !tbaa !31
  br label %29

; <label>:29                                      ; preds = %22, %28, %27, %17
  %30 = getelementptr inbounds [3 x i32]* %origin_index, i64 0, i64 1
  store i32 -1, i32* %30, align 4, !tbaa !30
  %31 = tail call i32 @CCTK_ParameterQueryTimesSet(i8* getelementptr inbounds ([17 x i8]* @.str23, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str1, i64 0, i64 0)) #5
  %32 = icmp sgt i32 %31, 0
  br i1 %32, label %33, label %34

; <label>:33                                      ; preds = %29
  store i32 %6, i32* %30, align 4, !tbaa !30
  br label %45

; <label>:34                                      ; preds = %29
  %35 = tail call i32 @CCTK_ParameterQueryTimesSet(i8* getelementptr inbounds ([15 x i8]* @.str24, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str3, i64 0, i64 0)) #5
  %36 = icmp sgt i32 %35, 0
  br i1 %36, label %37, label %38

; <label>:37                                      ; preds = %34
  store i32 %12, i32* %30, align 4, !tbaa !30
  br label %45

; <label>:38                                      ; preds = %34
  %39 = tail call i32 @CCTK_ParameterQueryTimesSet(i8* getelementptr inbounds ([16 x i8]* @.str25, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str1, i64 0, i64 0)) #5
  %40 = icmp sgt i32 %39, 0
  %41 = getelementptr inbounds [3 x double]* %origin_phys, i64 0, i64 1
  %42 = bitcast double* %41 to i64*
  br i1 %40, label %43, label %44

; <label>:43                                      ; preds = %38
  store i64 %2, i64* %42, align 8, !tbaa !31
  br label %45

; <label>:44                                      ; preds = %38
  store i64 %9, i64* %42, align 8, !tbaa !31
  br label %45

; <label>:45                                      ; preds = %37, %44, %43, %33
  %46 = getelementptr inbounds [3 x i32]* %origin_index, i64 0, i64 2
  store i32 -1, i32* %46, align 4, !tbaa !30
  %47 = tail call i32 @CCTK_ParameterQueryTimesSet(i8* getelementptr inbounds ([17 x i8]* @.str26, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str1, i64 0, i64 0)) #5
  %48 = icmp sgt i32 %47, 0
  br i1 %48, label %49, label %50

; <label>:49                                      ; preds = %45
  store i32 %7, i32* %46, align 4, !tbaa !30
  br label %61

; <label>:50                                      ; preds = %45
  %51 = tail call i32 @CCTK_ParameterQueryTimesSet(i8* getelementptr inbounds ([15 x i8]* @.str27, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str3, i64 0, i64 0)) #5
  %52 = icmp sgt i32 %51, 0
  br i1 %52, label %53, label %54

; <label>:53                                      ; preds = %50
  store i32 %13, i32* %46, align 4, !tbaa !30
  br label %61

; <label>:54                                      ; preds = %50
  %55 = tail call i32 @CCTK_ParameterQueryTimesSet(i8* getelementptr inbounds ([16 x i8]* @.str28, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str1, i64 0, i64 0)) #5
  %56 = icmp sgt i32 %55, 0
  %57 = getelementptr inbounds [3 x double]* %origin_phys, i64 0, i64 2
  %58 = bitcast double* %57 to i64*
  br i1 %56, label %59, label %60

; <label>:59                                      ; preds = %54
  store i64 %3, i64* %58, align 16, !tbaa !31
  br label %61

; <label>:60                                      ; preds = %54
  store i64 %8, i64* %58, align 16, !tbaa !31
  br label %61

; <label>:61                                      ; preds = %53, %60, %59, %49
  %62 = tail call i8* @CCTK_GHExtension(%struct.cGH* %GH, i8* getelementptr inbounds ([8 x i8]* @.str1, i64 0, i64 0)) #5
  %63 = call i32 @CCTK_MaxDim() #5
  %64 = icmp slt i32 %63, 1
  br i1 %64, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %61
  %65 = getelementptr inbounds [3 x double]* %origin_phys, i64 0, i64 0
  %66 = getelementptr inbounds i8* %62, i64 120
  %67 = bitcast i8* %66 to i32***
  br label %68

; <label>:68                                      ; preds = %84, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %84 ], [ 1, %.lr.ph ]
  %69 = trunc i64 %indvars.iv to i32
  %70 = and i32 %69, -2
  %71 = icmp eq i32 %70, 2
  %72 = add nsw i64 %indvars.iv, -1
  %73 = load i32*** %67, align 8, !tbaa !44
  %74 = getelementptr inbounds i32** %73, i64 %72
  br i1 %71, label %75, label %78

; <label>:75                                      ; preds = %68
  %76 = load i32** %74, align 8, !tbaa !29
  %77 = call i32 @IOUtil_2DPlanes(%struct.cGH* %GH, i32 %69, i32* %14, double* %65, i32* %76) #5
  br label %84

; <label>:78                                      ; preds = %68
  %79 = bitcast i32** %74 to i8**
  %80 = load i8** %79, align 8, !tbaa !29
  %81 = shl nsw i64 %indvars.iv, 2
  %82 = call i64 @llvm.objectsize.i64.p0i8(i8* %80, i1 false)
  %83 = call i8* @__memset_chk(i8* %80, i32 0, i64 %81, i64 %82) #5
  br label %84

; <label>:84                                      ; preds = %75, %78
  %indvars.iv.next = add nuw i64 %indvars.iv, 1
  %85 = call i32 @CCTK_MaxDim() #5
  %86 = sext i32 %85 to i64
  %87 = icmp slt i64 %indvars.iv, %86
  br i1 %87, label %68, label %._crit_edge

._crit_edge:                                      ; preds = %84, %61
  ret void
}

; Function Attrs: optsize
declare i32 @IOUtil_2DPlanes(%struct.cGH*, i32, i32*, double*, i32*) #3

attributes #0 = { nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind optsize }
attributes #6 = { optsize }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!2 = !{!3, !4, i64 0}
!3 = !{!"", !4, i64 0, !4, i64 8, !4, i64 16, !4, i64 24, !4, i64 32, !4, i64 40, !4, i64 48, !4, i64 56, !4, i64 64, !7, i64 72, !7, i64 80, !7, i64 88, !7, i64 96, !7, i64 104, !7, i64 112, !7, i64 120, !7, i64 128, !7, i64 136, !7, i64 144, !7, i64 152, !8, i64 160, !8, i64 164, !8, i64 168, !8, i64 172, !8, i64 176, !8, i64 180, !8, i64 184, !8, i64 188, !8, i64 192, !8, i64 196, !8, i64 200, !8, i64 204, !8, i64 208, !8, i64 212, !8, i64 216, !8, i64 220}
!4 = !{!"double", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!"any pointer", !5, i64 0}
!8 = !{!"int", !5, i64 0}
!9 = !{!3, !4, i64 8}
!10 = !{!3, !4, i64 16}
!11 = !{!3, !4, i64 24}
!12 = !{!3, !4, i64 32}
!13 = !{!3, !4, i64 40}
!14 = !{!3, !8, i64 172}
!15 = !{!3, !8, i64 176}
!16 = !{!3, !8, i64 196}
!17 = !{!3, !8, i64 200}
!18 = !{!19, !4, i64 0}
!19 = !{!"", !4, i64 0, !4, i64 8, !4, i64 16, !4, i64 24, !4, i64 32, !4, i64 40, !4, i64 48, !4, i64 56, !4, i64 64, !7, i64 72, !7, i64 80, !7, i64 88, !7, i64 96, !7, i64 104, !7, i64 112, !7, i64 120, !7, i64 128, !7, i64 136, !7, i64 144, !7, i64 152, !7, i64 160, !7, i64 168, !7, i64 176, !8, i64 184, !8, i64 188, !8, i64 192, !8, i64 196, !8, i64 200, !8, i64 204, !8, i64 208, !8, i64 212, !8, i64 216, !8, i64 220, !8, i64 224, !8, i64 228, !8, i64 232, !8, i64 236, !8, i64 240, !8, i64 244, !8, i64 248, !8, i64 252, !8, i64 256, !8, i64 260, !8, i64 264, !8, i64 268, !8, i64 272, !8, i64 276, !8, i64 280, !8, i64 284, !8, i64 288, !8, i64 292}
!20 = !{!19, !4, i64 8}
!21 = !{!19, !4, i64 32}
!22 = !{!19, !4, i64 40}
!23 = !{!19, !4, i64 56}
!24 = !{!19, !4, i64 64}
!25 = !{!19, !8, i64 244}
!26 = !{!19, !8, i64 248}
!27 = !{!19, !8, i64 260}
!28 = !{!19, !8, i64 264}
!29 = !{!7, !7, i64 0}
!30 = !{!8, !8, i64 0}
!31 = !{!4, !4, i64 0}
!32 = !{!33, !7, i64 112}
!33 = !{!"IOASCIIGH", !8, i64 0, !8, i64 4, !8, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !7, i64 88, !7, i64 96, !7, i64 104, !7, i64 112, !7, i64 120}
!34 = !{!3, !4, i64 48}
!35 = !{!3, !4, i64 56}
!36 = !{!3, !4, i64 64}
!37 = !{!3, !8, i64 216}
!38 = !{!19, !4, i64 48}
!39 = !{!19, !4, i64 24}
!40 = !{!19, !4, i64 16}
!41 = !{!19, !8, i64 252}
!42 = !{!19, !8, i64 256}
!43 = !{!19, !8, i64 268}
!44 = !{!33, !7, i64 120}
