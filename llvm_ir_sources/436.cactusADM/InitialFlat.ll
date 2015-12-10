; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/Einstein/InitialFlat.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.anon = type { double, double, double, double, double, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32 }
%struct.cGH = type { i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, double, double*, double*, i32*, i32*, i32, i32*, double, i8***, i8**, %struct.cGHGroupData* }
%struct.cGHGroupData = type { i8, i8 }

@.str = private unnamed_addr constant [15 x i8] c"Einstein::detg\00", align 1
@.str1 = private unnamed_addr constant [14 x i8] c"Einstein::gpp\00", align 1
@.str2 = private unnamed_addr constant [14 x i8] c"Einstein::gqp\00", align 1
@.str3 = private unnamed_addr constant [14 x i8] c"Einstein::gqq\00", align 1
@.str4 = private unnamed_addr constant [14 x i8] c"Einstein::grp\00", align 1
@.str5 = private unnamed_addr constant [14 x i8] c"Einstein::grq\00", align 1
@.str6 = private unnamed_addr constant [14 x i8] c"Einstein::grr\00", align 1
@.str7 = private unnamed_addr constant [14 x i8] c"Einstein::kpp\00", align 1
@.str8 = private unnamed_addr constant [14 x i8] c"Einstein::kqp\00", align 1
@.str9 = private unnamed_addr constant [14 x i8] c"Einstein::kqq\00", align 1
@.str10 = private unnamed_addr constant [14 x i8] c"Einstein::krp\00", align 1
@.str11 = private unnamed_addr constant [14 x i8] c"Einstein::krq\00", align 1
@.str12 = private unnamed_addr constant [14 x i8] c"Einstein::krr\00", align 1
@.str13 = private unnamed_addr constant [14 x i8] c"Einstein::trK\00", align 1
@.str14 = private unnamed_addr constant [32 x i8] c"einstein::active_slicing_handle\00", align 1
@.str15 = private unnamed_addr constant [14 x i8] c"einstein::alp\00", align 1
@.str16 = private unnamed_addr constant [16 x i8] c"einstein::betax\00", align 1
@.str17 = private unnamed_addr constant [16 x i8] c"einstein::betay\00", align 1
@.str18 = private unnamed_addr constant [16 x i8] c"einstein::betaz\00", align 1
@.str19 = private unnamed_addr constant [16 x i8] c"GRID::coarse_dx\00", align 1
@.str20 = private unnamed_addr constant [16 x i8] c"GRID::coarse_dy\00", align 1
@.str21 = private unnamed_addr constant [16 x i8] c"GRID::coarse_dz\00", align 1
@.str22 = private unnamed_addr constant [26 x i8] c"einstein::conformal_state\00", align 1
@.str23 = private unnamed_addr constant [23 x i8] c"TIME::courant_min_time\00", align 1
@.str24 = private unnamed_addr constant [25 x i8] c"TIME::courant_wave_speed\00", align 1
@.str25 = private unnamed_addr constant [16 x i8] c"einstein::emask\00", align 1
@.str26 = private unnamed_addr constant [14 x i8] c"einstein::gxx\00", align 1
@.str27 = private unnamed_addr constant [14 x i8] c"einstein::gxy\00", align 1
@.str28 = private unnamed_addr constant [14 x i8] c"einstein::gxz\00", align 1
@.str29 = private unnamed_addr constant [14 x i8] c"einstein::gyy\00", align 1
@.str30 = private unnamed_addr constant [14 x i8] c"einstein::gyz\00", align 1
@.str31 = private unnamed_addr constant [14 x i8] c"einstein::gzz\00", align 1
@.str32 = private unnamed_addr constant [14 x i8] c"einstein::kxx\00", align 1
@.str33 = private unnamed_addr constant [14 x i8] c"einstein::kxy\00", align 1
@.str34 = private unnamed_addr constant [14 x i8] c"einstein::kxz\00", align 1
@.str35 = private unnamed_addr constant [14 x i8] c"einstein::kyy\00", align 1
@.str36 = private unnamed_addr constant [14 x i8] c"einstein::kyz\00", align 1
@.str37 = private unnamed_addr constant [14 x i8] c"einstein::kzz\00", align 1
@.str38 = private unnamed_addr constant [14 x i8] c"einstein::psi\00", align 1
@.str39 = private unnamed_addr constant [15 x i8] c"einstein::psix\00", align 1
@.str40 = private unnamed_addr constant [16 x i8] c"einstein::psixx\00", align 1
@.str41 = private unnamed_addr constant [16 x i8] c"einstein::psixy\00", align 1
@.str42 = private unnamed_addr constant [16 x i8] c"einstein::psixz\00", align 1
@.str43 = private unnamed_addr constant [15 x i8] c"einstein::psiy\00", align 1
@.str44 = private unnamed_addr constant [16 x i8] c"einstein::psiyy\00", align 1
@.str45 = private unnamed_addr constant [16 x i8] c"einstein::psiyz\00", align 1
@.str46 = private unnamed_addr constant [15 x i8] c"einstein::psiz\00", align 1
@.str47 = private unnamed_addr constant [16 x i8] c"einstein::psizz\00", align 1
@.str48 = private unnamed_addr constant [8 x i8] c"GRID::r\00", align 1
@.str49 = private unnamed_addr constant [22 x i8] c"einstein::shift_state\00", align 1
@.str50 = private unnamed_addr constant [8 x i8] c"GRID::x\00", align 1
@.str51 = private unnamed_addr constant [8 x i8] c"GRID::y\00", align 1
@.str52 = private unnamed_addr constant [8 x i8] c"GRID::z\00", align 1
@einsteinrest_ = external global %struct.anon
@.str53 = private unnamed_addr constant [9 x i8] c"Einstein\00", align 1
@.str54 = private unnamed_addr constant [41 x i8] c"Setting flat Minkowski space in Einstein\00", align 1
@.str55 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str56 = private unnamed_addr constant [97 x i8] c"$Header: /cactus/CactusEinstein/Einstein/src/InitialFlat.c,v 1.8 2002/01/04 10:18:16 allen Exp $\00", align 1

; Function Attrs: nounwind optsize readnone ssp uwtable
define i8* @CCTKi_version_CactusEinstein_Einstein_InitialFlat_c() #0 {
  ret i8* getelementptr inbounds ([97 x i8]* @.str56, i64 0, i64 0)
}

; Function Attrs: nounwind optsize ssp uwtable
define void @InitialFlat(%struct.cGH* readonly %cctkGH) #1 {
  %1 = getelementptr inbounds %struct.cGH* %cctkGH, i64 0, i32 3
  %2 = load i32** %1, align 8, !tbaa !2
  %3 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([15 x i8]* @.str, i64 0, i64 0)) #3
  %4 = getelementptr inbounds %struct.cGH* %cctkGH, i64 0, i32 17
  %5 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str1, i64 0, i64 0)) #3
  %6 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str2, i64 0, i64 0)) #3
  %7 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str3, i64 0, i64 0)) #3
  %8 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str4, i64 0, i64 0)) #3
  %9 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str5, i64 0, i64 0)) #3
  %10 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str6, i64 0, i64 0)) #3
  %11 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str7, i64 0, i64 0)) #3
  %12 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str8, i64 0, i64 0)) #3
  %13 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str9, i64 0, i64 0)) #3
  %14 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str10, i64 0, i64 0)) #3
  %15 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str11, i64 0, i64 0)) #3
  %16 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str12, i64 0, i64 0)) #3
  %17 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str13, i64 0, i64 0)) #3
  %18 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([32 x i8]* @.str14, i64 0, i64 0)) #3
  %19 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str15, i64 0, i64 0)) #3
  %20 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str16, i64 0, i64 0)) #3
  %21 = sext i32 %20 to i64
  %22 = load i8**** %4, align 8, !tbaa !9
  %23 = getelementptr inbounds i8*** %22, i64 %21
  %24 = bitcast i8*** %23 to double***
  %25 = load double*** %24, align 8, !tbaa !10
  %26 = load double** %25, align 8, !tbaa !10
  %27 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str17, i64 0, i64 0)) #3
  %28 = sext i32 %27 to i64
  %29 = load i8**** %4, align 8, !tbaa !9
  %30 = getelementptr inbounds i8*** %29, i64 %28
  %31 = bitcast i8*** %30 to double***
  %32 = load double*** %31, align 8, !tbaa !10
  %33 = load double** %32, align 8, !tbaa !10
  %34 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str18, i64 0, i64 0)) #3
  %35 = sext i32 %34 to i64
  %36 = load i8**** %4, align 8, !tbaa !9
  %37 = getelementptr inbounds i8*** %36, i64 %35
  %38 = bitcast i8*** %37 to double***
  %39 = load double*** %38, align 8, !tbaa !10
  %40 = load double** %39, align 8, !tbaa !10
  %41 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str19, i64 0, i64 0)) #3
  %42 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str20, i64 0, i64 0)) #3
  %43 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str21, i64 0, i64 0)) #3
  %44 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([26 x i8]* @.str22, i64 0, i64 0)) #3
  %45 = sext i32 %44 to i64
  %46 = load i8**** %4, align 8, !tbaa !9
  %47 = getelementptr inbounds i8*** %46, i64 %45
  %48 = bitcast i8*** %47 to i32***
  %49 = load i32*** %48, align 8, !tbaa !10
  %50 = load i32** %49, align 8, !tbaa !10
  %51 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([23 x i8]* @.str23, i64 0, i64 0)) #3
  %52 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([25 x i8]* @.str24, i64 0, i64 0)) #3
  %53 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str25, i64 0, i64 0)) #3
  %54 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str26, i64 0, i64 0)) #3
  %55 = sext i32 %54 to i64
  %56 = load i8**** %4, align 8, !tbaa !9
  %57 = getelementptr inbounds i8*** %56, i64 %55
  %58 = bitcast i8*** %57 to double***
  %59 = load double*** %58, align 8, !tbaa !10
  %60 = load double** %59, align 8, !tbaa !10
  %61 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str27, i64 0, i64 0)) #3
  %62 = sext i32 %61 to i64
  %63 = load i8**** %4, align 8, !tbaa !9
  %64 = getelementptr inbounds i8*** %63, i64 %62
  %65 = bitcast i8*** %64 to double***
  %66 = load double*** %65, align 8, !tbaa !10
  %67 = load double** %66, align 8, !tbaa !10
  %68 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str28, i64 0, i64 0)) #3
  %69 = sext i32 %68 to i64
  %70 = load i8**** %4, align 8, !tbaa !9
  %71 = getelementptr inbounds i8*** %70, i64 %69
  %72 = bitcast i8*** %71 to double***
  %73 = load double*** %72, align 8, !tbaa !10
  %74 = load double** %73, align 8, !tbaa !10
  %75 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str29, i64 0, i64 0)) #3
  %76 = sext i32 %75 to i64
  %77 = load i8**** %4, align 8, !tbaa !9
  %78 = getelementptr inbounds i8*** %77, i64 %76
  %79 = bitcast i8*** %78 to double***
  %80 = load double*** %79, align 8, !tbaa !10
  %81 = load double** %80, align 8, !tbaa !10
  %82 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str30, i64 0, i64 0)) #3
  %83 = sext i32 %82 to i64
  %84 = load i8**** %4, align 8, !tbaa !9
  %85 = getelementptr inbounds i8*** %84, i64 %83
  %86 = bitcast i8*** %85 to double***
  %87 = load double*** %86, align 8, !tbaa !10
  %88 = load double** %87, align 8, !tbaa !10
  %89 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str31, i64 0, i64 0)) #3
  %90 = sext i32 %89 to i64
  %91 = load i8**** %4, align 8, !tbaa !9
  %92 = getelementptr inbounds i8*** %91, i64 %90
  %93 = bitcast i8*** %92 to double***
  %94 = load double*** %93, align 8, !tbaa !10
  %95 = load double** %94, align 8, !tbaa !10
  %96 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str32, i64 0, i64 0)) #3
  %97 = sext i32 %96 to i64
  %98 = load i8**** %4, align 8, !tbaa !9
  %99 = getelementptr inbounds i8*** %98, i64 %97
  %100 = bitcast i8*** %99 to double***
  %101 = load double*** %100, align 8, !tbaa !10
  %102 = load double** %101, align 8, !tbaa !10
  %103 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str33, i64 0, i64 0)) #3
  %104 = sext i32 %103 to i64
  %105 = load i8**** %4, align 8, !tbaa !9
  %106 = getelementptr inbounds i8*** %105, i64 %104
  %107 = bitcast i8*** %106 to double***
  %108 = load double*** %107, align 8, !tbaa !10
  %109 = load double** %108, align 8, !tbaa !10
  %110 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str34, i64 0, i64 0)) #3
  %111 = sext i32 %110 to i64
  %112 = load i8**** %4, align 8, !tbaa !9
  %113 = getelementptr inbounds i8*** %112, i64 %111
  %114 = bitcast i8*** %113 to double***
  %115 = load double*** %114, align 8, !tbaa !10
  %116 = load double** %115, align 8, !tbaa !10
  %117 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str35, i64 0, i64 0)) #3
  %118 = sext i32 %117 to i64
  %119 = load i8**** %4, align 8, !tbaa !9
  %120 = getelementptr inbounds i8*** %119, i64 %118
  %121 = bitcast i8*** %120 to double***
  %122 = load double*** %121, align 8, !tbaa !10
  %123 = load double** %122, align 8, !tbaa !10
  %124 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str36, i64 0, i64 0)) #3
  %125 = sext i32 %124 to i64
  %126 = load i8**** %4, align 8, !tbaa !9
  %127 = getelementptr inbounds i8*** %126, i64 %125
  %128 = bitcast i8*** %127 to double***
  %129 = load double*** %128, align 8, !tbaa !10
  %130 = load double** %129, align 8, !tbaa !10
  %131 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str37, i64 0, i64 0)) #3
  %132 = sext i32 %131 to i64
  %133 = load i8**** %4, align 8, !tbaa !9
  %134 = getelementptr inbounds i8*** %133, i64 %132
  %135 = bitcast i8*** %134 to double***
  %136 = load double*** %135, align 8, !tbaa !10
  %137 = load double** %136, align 8, !tbaa !10
  %138 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str38, i64 0, i64 0)) #3
  %139 = sext i32 %138 to i64
  %140 = load i8**** %4, align 8, !tbaa !9
  %141 = getelementptr inbounds i8*** %140, i64 %139
  %142 = bitcast i8*** %141 to double***
  %143 = load double*** %142, align 8, !tbaa !10
  %144 = load double** %143, align 8, !tbaa !10
  %145 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([15 x i8]* @.str39, i64 0, i64 0)) #3
  %146 = sext i32 %145 to i64
  %147 = load i8**** %4, align 8, !tbaa !9
  %148 = getelementptr inbounds i8*** %147, i64 %146
  %149 = bitcast i8*** %148 to double***
  %150 = load double*** %149, align 8, !tbaa !10
  %151 = load double** %150, align 8, !tbaa !10
  %152 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str40, i64 0, i64 0)) #3
  %153 = sext i32 %152 to i64
  %154 = load i8**** %4, align 8, !tbaa !9
  %155 = getelementptr inbounds i8*** %154, i64 %153
  %156 = bitcast i8*** %155 to double***
  %157 = load double*** %156, align 8, !tbaa !10
  %158 = load double** %157, align 8, !tbaa !10
  %159 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str41, i64 0, i64 0)) #3
  %160 = sext i32 %159 to i64
  %161 = load i8**** %4, align 8, !tbaa !9
  %162 = getelementptr inbounds i8*** %161, i64 %160
  %163 = bitcast i8*** %162 to double***
  %164 = load double*** %163, align 8, !tbaa !10
  %165 = load double** %164, align 8, !tbaa !10
  %166 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str42, i64 0, i64 0)) #3
  %167 = sext i32 %166 to i64
  %168 = load i8**** %4, align 8, !tbaa !9
  %169 = getelementptr inbounds i8*** %168, i64 %167
  %170 = bitcast i8*** %169 to double***
  %171 = load double*** %170, align 8, !tbaa !10
  %172 = load double** %171, align 8, !tbaa !10
  %173 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([15 x i8]* @.str43, i64 0, i64 0)) #3
  %174 = sext i32 %173 to i64
  %175 = load i8**** %4, align 8, !tbaa !9
  %176 = getelementptr inbounds i8*** %175, i64 %174
  %177 = bitcast i8*** %176 to double***
  %178 = load double*** %177, align 8, !tbaa !10
  %179 = load double** %178, align 8, !tbaa !10
  %180 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str44, i64 0, i64 0)) #3
  %181 = sext i32 %180 to i64
  %182 = load i8**** %4, align 8, !tbaa !9
  %183 = getelementptr inbounds i8*** %182, i64 %181
  %184 = bitcast i8*** %183 to double***
  %185 = load double*** %184, align 8, !tbaa !10
  %186 = load double** %185, align 8, !tbaa !10
  %187 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str45, i64 0, i64 0)) #3
  %188 = sext i32 %187 to i64
  %189 = load i8**** %4, align 8, !tbaa !9
  %190 = getelementptr inbounds i8*** %189, i64 %188
  %191 = bitcast i8*** %190 to double***
  %192 = load double*** %191, align 8, !tbaa !10
  %193 = load double** %192, align 8, !tbaa !10
  %194 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([15 x i8]* @.str46, i64 0, i64 0)) #3
  %195 = sext i32 %194 to i64
  %196 = load i8**** %4, align 8, !tbaa !9
  %197 = getelementptr inbounds i8*** %196, i64 %195
  %198 = bitcast i8*** %197 to double***
  %199 = load double*** %198, align 8, !tbaa !10
  %200 = load double** %199, align 8, !tbaa !10
  %201 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str47, i64 0, i64 0)) #3
  %202 = sext i32 %201 to i64
  %203 = load i8**** %4, align 8, !tbaa !9
  %204 = getelementptr inbounds i8*** %203, i64 %202
  %205 = bitcast i8*** %204 to double***
  %206 = load double*** %205, align 8, !tbaa !10
  %207 = load double** %206, align 8, !tbaa !10
  %208 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([8 x i8]* @.str48, i64 0, i64 0)) #3
  %209 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([22 x i8]* @.str49, i64 0, i64 0)) #3
  %210 = sext i32 %209 to i64
  %211 = load i8**** %4, align 8, !tbaa !9
  %212 = getelementptr inbounds i8*** %211, i64 %210
  %213 = bitcast i8*** %212 to i32***
  %214 = load i32*** %213, align 8, !tbaa !10
  %215 = load i32** %214, align 8, !tbaa !10
  %216 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([8 x i8]* @.str50, i64 0, i64 0)) #3
  %217 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([8 x i8]* @.str51, i64 0, i64 0)) #3
  %218 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([8 x i8]* @.str52, i64 0, i64 0)) #3
  %219 = load i8** getelementptr inbounds (%struct.anon* @einsteinrest_, i64 0, i32 11), align 8, !tbaa !11
  %220 = load i32* getelementptr inbounds (%struct.anon* @einsteinrest_, i64 0, i32 18), align 8, !tbaa !13
  %221 = tail call i32 @CCTK_Info(i8* getelementptr inbounds ([9 x i8]* @.str53, i64 0, i64 0), i8* getelementptr inbounds ([41 x i8]* @.str54, i64 0, i64 0)) #3
  %222 = load i32* %2, align 4, !tbaa !14
  %223 = getelementptr inbounds i32* %2, i64 1
  %224 = load i32* %223, align 4, !tbaa !14
  %225 = getelementptr inbounds i32* %2, i64 2
  %226 = load i32* %225, align 4, !tbaa !14
  %227 = icmp sgt i32 %226, 0
  br i1 %227, label %.preheader1.lr.ph, label %._crit_edge8

.preheader1.lr.ph:                                ; preds = %0
  %228 = icmp sgt i32 %224, 0
  %229 = icmp sgt i32 %222, 0
  %230 = icmp eq i32 %220, 0
  %231 = add i32 %222, -1
  %232 = add i32 %224, -1
  %233 = add i32 %226, -1
  br label %.preheader1

.preheader1:                                      ; preds = %._crit_edge5, %.preheader1.lr.ph
  %k.06 = phi i32 [ 0, %.preheader1.lr.ph ], [ %278, %._crit_edge5 ]
  br i1 %228, label %.preheader, label %._crit_edge5

.preheader:                                       ; preds = %.preheader1, %._crit_edge
  %j.03 = phi i32 [ %277, %._crit_edge ], [ 0, %.preheader1 ]
  br i1 %229, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader, %275
  %i.02 = phi i32 [ %276, %275 ], [ 0, %.preheader ]
  %234 = load i32** %1, align 8, !tbaa !2
  %235 = load i32* %234, align 4, !tbaa !14
  %236 = getelementptr inbounds i32* %234, i64 1
  %237 = load i32* %236, align 4, !tbaa !14
  %238 = mul nsw i32 %237, %k.06
  %239 = add nsw i32 %238, %j.03
  %240 = mul nsw i32 %239, %235
  %241 = add nsw i32 %240, %i.02
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds double* %60, i64 %242
  store double 1.000000e+00, double* %243, align 8, !tbaa !15
  %244 = getelementptr inbounds double* %81, i64 %242
  store double 1.000000e+00, double* %244, align 8, !tbaa !15
  %245 = getelementptr inbounds double* %95, i64 %242
  store double 1.000000e+00, double* %245, align 8, !tbaa !15
  %246 = getelementptr inbounds double* %67, i64 %242
  store double 0.000000e+00, double* %246, align 8, !tbaa !15
  %247 = getelementptr inbounds double* %74, i64 %242
  store double 0.000000e+00, double* %247, align 8, !tbaa !15
  %248 = getelementptr inbounds double* %88, i64 %242
  store double 0.000000e+00, double* %248, align 8, !tbaa !15
  %249 = getelementptr inbounds double* %102, i64 %242
  store double 0.000000e+00, double* %249, align 8, !tbaa !15
  %250 = getelementptr inbounds double* %109, i64 %242
  store double 0.000000e+00, double* %250, align 8, !tbaa !15
  %251 = getelementptr inbounds double* %116, i64 %242
  store double 0.000000e+00, double* %251, align 8, !tbaa !15
  %252 = getelementptr inbounds double* %123, i64 %242
  store double 0.000000e+00, double* %252, align 8, !tbaa !15
  %253 = getelementptr inbounds double* %130, i64 %242
  store double 0.000000e+00, double* %253, align 8, !tbaa !15
  %254 = getelementptr inbounds double* %137, i64 %242
  store double 0.000000e+00, double* %254, align 8, !tbaa !15
  %255 = tail call i32 @CCTK_Equals(i8* %219, i8* getelementptr inbounds ([5 x i8]* @.str55, i64 0, i64 0)) #3
  %256 = icmp eq i32 %255, 0
  br i1 %256, label %257, label %261

; <label>:257                                     ; preds = %.lr.ph
  store i32 1, i32* %215, align 4, !tbaa !14
  %258 = getelementptr inbounds double* %26, i64 %242
  store double 0.000000e+00, double* %258, align 8, !tbaa !15
  %259 = getelementptr inbounds double* %33, i64 %242
  store double 0.000000e+00, double* %259, align 8, !tbaa !15
  %260 = getelementptr inbounds double* %40, i64 %242
  store double 0.000000e+00, double* %260, align 8, !tbaa !15
  br label %262

; <label>:261                                     ; preds = %.lr.ph
  store i32 0, i32* %215, align 4, !tbaa !14
  br label %262

; <label>:262                                     ; preds = %261, %257
  br i1 %230, label %274, label %263

; <label>:263                                     ; preds = %262
  store i32 1, i32* %50, align 4, !tbaa !14
  %264 = getelementptr inbounds double* %144, i64 %242
  store double 1.000000e+00, double* %264, align 8, !tbaa !15
  %265 = getelementptr inbounds double* %151, i64 %242
  store double 0.000000e+00, double* %265, align 8, !tbaa !15
  %266 = getelementptr inbounds double* %179, i64 %242
  store double 0.000000e+00, double* %266, align 8, !tbaa !15
  %267 = getelementptr inbounds double* %200, i64 %242
  store double 0.000000e+00, double* %267, align 8, !tbaa !15
  %268 = getelementptr inbounds double* %165, i64 %242
  store double 0.000000e+00, double* %268, align 8, !tbaa !15
  %269 = getelementptr inbounds double* %172, i64 %242
  store double 0.000000e+00, double* %269, align 8, !tbaa !15
  %270 = getelementptr inbounds double* %193, i64 %242
  store double 0.000000e+00, double* %270, align 8, !tbaa !15
  %271 = getelementptr inbounds double* %158, i64 %242
  store double 0.000000e+00, double* %271, align 8, !tbaa !15
  %272 = getelementptr inbounds double* %186, i64 %242
  store double 0.000000e+00, double* %272, align 8, !tbaa !15
  %273 = getelementptr inbounds double* %207, i64 %242
  store double 0.000000e+00, double* %273, align 8, !tbaa !15
  br label %275

; <label>:274                                     ; preds = %262
  store i32 0, i32* %50, align 4, !tbaa !14
  br label %275

; <label>:275                                     ; preds = %263, %274
  %276 = add nuw nsw i32 %i.02, 1
  %exitcond = icmp eq i32 %i.02, %231
  br i1 %exitcond, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %275, %.preheader
  %277 = add nuw nsw i32 %j.03, 1
  %exitcond9 = icmp eq i32 %j.03, %232
  br i1 %exitcond9, label %._crit_edge5, label %.preheader

._crit_edge5:                                     ; preds = %._crit_edge, %.preheader1
  %278 = add nuw nsw i32 %k.06, 1
  %exitcond10 = icmp eq i32 %k.06, %233
  br i1 %exitcond10, label %._crit_edge8, label %.preheader1

._crit_edge8:                                     ; preds = %._crit_edge5, %0
  ret void
}

; Function Attrs: optsize
declare i32 @CCTK_VarIndex(i8*) #2

; Function Attrs: optsize
declare i32 @CCTK_Info(i8*, i8*) #2

; Function Attrs: optsize
declare i32 @CCTK_Equals(i8*, i8*) #2

attributes #0 = { nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!2 = !{!3, !7, i64 16}
!3 = !{!"", !4, i64 0, !4, i64 4, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !8, i64 64, !7, i64 72, !7, i64 80, !7, i64 88, !7, i64 96, !4, i64 104, !7, i64 112, !8, i64 120, !7, i64 128, !7, i64 136, !7, i64 144}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!"any pointer", !5, i64 0}
!8 = !{!"double", !5, i64 0}
!9 = !{!3, !7, i64 128}
!10 = !{!7, !7, i64 0}
!11 = !{!12, !7, i64 88}
!12 = !{!"", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !7, i64 88, !7, i64 96, !7, i64 104, !4, i64 112, !4, i64 116, !4, i64 120, !4, i64 124, !4, i64 128, !4, i64 132, !4, i64 136}
!13 = !{!12, !4, i64 128}
!14 = !{!4, !4, i64 0}
!15 = !{!8, !8, i64 0}
