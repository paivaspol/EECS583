; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/Einstein/carttosphere.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.anon.0 = type { double, double, i8*, i32, i32 }
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
@einsteinpriv_ = external global %struct.anon.0
@.str53 = private unnamed_addr constant [99 x i8] c"$Header: /cactus/CactusEinstein/Einstein/src/carttosphere.c,v 1.12 2002/01/04 09:56:14 allen Exp $\00", align 1

; Function Attrs: nounwind optsize readnone ssp uwtable
define i8* @CCTKi_version_CactusEinstein_Einstein_carttosphere_c() #0 {
  ret i8* getelementptr inbounds ([99 x i8]* @.str53, i64 0, i64 0)
}

; Function Attrs: nounwind optsize ssp uwtable
define void @metric_carttosphere(%struct.cGH* nocapture readonly %cctkGH) #1 {
  %1 = getelementptr inbounds %struct.cGH* %cctkGH, i64 0, i32 3
  %2 = load i32** %1, align 8, !tbaa !2
  %3 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([15 x i8]* @.str, i64 0, i64 0)) #4
  %4 = getelementptr inbounds %struct.cGH* %cctkGH, i64 0, i32 17
  %5 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str1, i64 0, i64 0)) #4
  %6 = sext i32 %5 to i64
  %7 = load i8**** %4, align 8, !tbaa !9
  %8 = getelementptr inbounds i8*** %7, i64 %6
  %9 = bitcast i8*** %8 to double***
  %10 = load double*** %9, align 8, !tbaa !10
  %11 = load double** %10, align 8, !tbaa !10
  %12 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str2, i64 0, i64 0)) #4
  %13 = sext i32 %12 to i64
  %14 = load i8**** %4, align 8, !tbaa !9
  %15 = getelementptr inbounds i8*** %14, i64 %13
  %16 = bitcast i8*** %15 to double***
  %17 = load double*** %16, align 8, !tbaa !10
  %18 = load double** %17, align 8, !tbaa !10
  %19 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str3, i64 0, i64 0)) #4
  %20 = sext i32 %19 to i64
  %21 = load i8**** %4, align 8, !tbaa !9
  %22 = getelementptr inbounds i8*** %21, i64 %20
  %23 = bitcast i8*** %22 to double***
  %24 = load double*** %23, align 8, !tbaa !10
  %25 = load double** %24, align 8, !tbaa !10
  %26 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str4, i64 0, i64 0)) #4
  %27 = sext i32 %26 to i64
  %28 = load i8**** %4, align 8, !tbaa !9
  %29 = getelementptr inbounds i8*** %28, i64 %27
  %30 = bitcast i8*** %29 to double***
  %31 = load double*** %30, align 8, !tbaa !10
  %32 = load double** %31, align 8, !tbaa !10
  %33 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str5, i64 0, i64 0)) #4
  %34 = sext i32 %33 to i64
  %35 = load i8**** %4, align 8, !tbaa !9
  %36 = getelementptr inbounds i8*** %35, i64 %34
  %37 = bitcast i8*** %36 to double***
  %38 = load double*** %37, align 8, !tbaa !10
  %39 = load double** %38, align 8, !tbaa !10
  %40 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str6, i64 0, i64 0)) #4
  %41 = sext i32 %40 to i64
  %42 = load i8**** %4, align 8, !tbaa !9
  %43 = getelementptr inbounds i8*** %42, i64 %41
  %44 = bitcast i8*** %43 to double***
  %45 = load double*** %44, align 8, !tbaa !10
  %46 = load double** %45, align 8, !tbaa !10
  %47 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str7, i64 0, i64 0)) #4
  %48 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str8, i64 0, i64 0)) #4
  %49 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str9, i64 0, i64 0)) #4
  %50 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str10, i64 0, i64 0)) #4
  %51 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str11, i64 0, i64 0)) #4
  %52 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str12, i64 0, i64 0)) #4
  %53 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str13, i64 0, i64 0)) #4
  %54 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([32 x i8]* @.str14, i64 0, i64 0)) #4
  %55 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str15, i64 0, i64 0)) #4
  %56 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str16, i64 0, i64 0)) #4
  %57 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str17, i64 0, i64 0)) #4
  %58 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str18, i64 0, i64 0)) #4
  %59 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str19, i64 0, i64 0)) #4
  %60 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str20, i64 0, i64 0)) #4
  %61 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str21, i64 0, i64 0)) #4
  %62 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([26 x i8]* @.str22, i64 0, i64 0)) #4
  %63 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([23 x i8]* @.str23, i64 0, i64 0)) #4
  %64 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([25 x i8]* @.str24, i64 0, i64 0)) #4
  %65 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str25, i64 0, i64 0)) #4
  %66 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str26, i64 0, i64 0)) #4
  %67 = sext i32 %66 to i64
  %68 = load i8**** %4, align 8, !tbaa !9
  %69 = getelementptr inbounds i8*** %68, i64 %67
  %70 = bitcast i8*** %69 to double***
  %71 = load double*** %70, align 8, !tbaa !10
  %72 = load double** %71, align 8, !tbaa !10
  %73 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str27, i64 0, i64 0)) #4
  %74 = sext i32 %73 to i64
  %75 = load i8**** %4, align 8, !tbaa !9
  %76 = getelementptr inbounds i8*** %75, i64 %74
  %77 = bitcast i8*** %76 to double***
  %78 = load double*** %77, align 8, !tbaa !10
  %79 = load double** %78, align 8, !tbaa !10
  %80 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str28, i64 0, i64 0)) #4
  %81 = sext i32 %80 to i64
  %82 = load i8**** %4, align 8, !tbaa !9
  %83 = getelementptr inbounds i8*** %82, i64 %81
  %84 = bitcast i8*** %83 to double***
  %85 = load double*** %84, align 8, !tbaa !10
  %86 = load double** %85, align 8, !tbaa !10
  %87 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str29, i64 0, i64 0)) #4
  %88 = sext i32 %87 to i64
  %89 = load i8**** %4, align 8, !tbaa !9
  %90 = getelementptr inbounds i8*** %89, i64 %88
  %91 = bitcast i8*** %90 to double***
  %92 = load double*** %91, align 8, !tbaa !10
  %93 = load double** %92, align 8, !tbaa !10
  %94 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str30, i64 0, i64 0)) #4
  %95 = sext i32 %94 to i64
  %96 = load i8**** %4, align 8, !tbaa !9
  %97 = getelementptr inbounds i8*** %96, i64 %95
  %98 = bitcast i8*** %97 to double***
  %99 = load double*** %98, align 8, !tbaa !10
  %100 = load double** %99, align 8, !tbaa !10
  %101 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str31, i64 0, i64 0)) #4
  %102 = sext i32 %101 to i64
  %103 = load i8**** %4, align 8, !tbaa !9
  %104 = getelementptr inbounds i8*** %103, i64 %102
  %105 = bitcast i8*** %104 to double***
  %106 = load double*** %105, align 8, !tbaa !10
  %107 = load double** %106, align 8, !tbaa !10
  %108 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str32, i64 0, i64 0)) #4
  %109 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str33, i64 0, i64 0)) #4
  %110 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str34, i64 0, i64 0)) #4
  %111 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str35, i64 0, i64 0)) #4
  %112 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str36, i64 0, i64 0)) #4
  %113 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str37, i64 0, i64 0)) #4
  %114 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str38, i64 0, i64 0)) #4
  %115 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([15 x i8]* @.str39, i64 0, i64 0)) #4
  %116 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str40, i64 0, i64 0)) #4
  %117 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str41, i64 0, i64 0)) #4
  %118 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str42, i64 0, i64 0)) #4
  %119 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([15 x i8]* @.str43, i64 0, i64 0)) #4
  %120 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str44, i64 0, i64 0)) #4
  %121 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str45, i64 0, i64 0)) #4
  %122 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([15 x i8]* @.str46, i64 0, i64 0)) #4
  %123 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str47, i64 0, i64 0)) #4
  %124 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([8 x i8]* @.str48, i64 0, i64 0)) #4
  %125 = sext i32 %124 to i64
  %126 = load i8**** %4, align 8, !tbaa !9
  %127 = getelementptr inbounds i8*** %126, i64 %125
  %128 = bitcast i8*** %127 to double***
  %129 = load double*** %128, align 8, !tbaa !10
  %130 = load double** %129, align 8, !tbaa !10
  %131 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([22 x i8]* @.str49, i64 0, i64 0)) #4
  %132 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([8 x i8]* @.str50, i64 0, i64 0)) #4
  %133 = sext i32 %132 to i64
  %134 = load i8**** %4, align 8, !tbaa !9
  %135 = getelementptr inbounds i8*** %134, i64 %133
  %136 = bitcast i8*** %135 to double***
  %137 = load double*** %136, align 8, !tbaa !10
  %138 = load double** %137, align 8, !tbaa !10
  %139 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([8 x i8]* @.str51, i64 0, i64 0)) #4
  %140 = sext i32 %139 to i64
  %141 = load i8**** %4, align 8, !tbaa !9
  %142 = getelementptr inbounds i8*** %141, i64 %140
  %143 = bitcast i8*** %142 to double***
  %144 = load double*** %143, align 8, !tbaa !10
  %145 = load double** %144, align 8, !tbaa !10
  %146 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([8 x i8]* @.str52, i64 0, i64 0)) #4
  %147 = sext i32 %146 to i64
  %148 = load i8**** %4, align 8, !tbaa !9
  %149 = getelementptr inbounds i8*** %148, i64 %147
  %150 = bitcast i8*** %149 to double***
  %151 = load double*** %150, align 8, !tbaa !10
  %152 = load double** %151, align 8, !tbaa !10
  %153 = load i32* getelementptr inbounds (%struct.anon.0* @einsteinpriv_, i64 0, i32 4), align 4, !tbaa !11
  %154 = icmp eq i32 %153, 1
  %155 = load i32* %2, align 4, !tbaa !13
  %156 = getelementptr inbounds i32* %2, i64 1
  %157 = load i32* %156, align 4, !tbaa !13
  %158 = mul nsw i32 %157, %155
  %159 = getelementptr inbounds i32* %2, i64 2
  %160 = load i32* %159, align 4, !tbaa !13
  %161 = mul nsw i32 %158, %160
  %162 = icmp sgt i32 %161, 0
  br i1 %162, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %0
  %163 = sext i32 %161 to i64
  br label %164

; <label>:164                                     ; preds = %.lr.ph, %330
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %330 ]
  %165 = getelementptr inbounds double* %72, i64 %indvars.iv
  %166 = load double* %165, align 8, !tbaa !14
  %167 = getelementptr inbounds double* %79, i64 %indvars.iv
  %168 = load double* %167, align 8, !tbaa !14
  %169 = getelementptr inbounds double* %86, i64 %indvars.iv
  %170 = load double* %169, align 8, !tbaa !14
  %171 = getelementptr inbounds double* %93, i64 %indvars.iv
  %172 = load double* %171, align 8, !tbaa !14
  %173 = getelementptr inbounds double* %100, i64 %indvars.iv
  %174 = load double* %173, align 8, !tbaa !14
  %175 = getelementptr inbounds double* %107, i64 %indvars.iv
  %176 = load double* %175, align 8, !tbaa !14
  %177 = getelementptr inbounds double* %130, i64 %indvars.iv
  %178 = load double* %177, align 8, !tbaa !14
  %179 = getelementptr inbounds double* %138, i64 %indvars.iv
  %180 = load double* %179, align 8, !tbaa !14
  %181 = fmul double %180, %180
  %182 = getelementptr inbounds double* %145, i64 %indvars.iv
  %183 = load double* %182, align 8, !tbaa !14
  %184 = fmul double %183, %183
  %185 = fadd double %181, %184
  %186 = tail call double @sqrt(double %185) #5
  %187 = fcmp oeq double %178, 0.000000e+00
  %188 = fcmp oeq double %186, 0.000000e+00
  %or.cond = or i1 %187, %188
  br i1 %or.cond, label %196, label %189

; <label>:189                                     ; preds = %164
  %190 = getelementptr inbounds double* %152, i64 %indvars.iv
  %191 = load double* %190, align 8, !tbaa !14
  %192 = fdiv double %191, %178
  %193 = fdiv double %186, %178
  %194 = fdiv double %183, %186
  %195 = fdiv double %180, %186
  br label %196

; <label>:196                                     ; preds = %164, %189
  %cosp.0 = phi double [ %195, %189 ], [ 1.000000e+00, %164 ]
  %sinp.0 = phi double [ %194, %189 ], [ 0.000000e+00, %164 ]
  %sint.0 = phi double [ %193, %189 ], [ 0.000000e+00, %164 ]
  %cost.0 = phi double [ %192, %189 ], [ 1.000000e+00, %164 ]
  %197 = fmul double %sinp.0, %sinp.0
  %198 = fmul double %172, %197
  %199 = fmul double %sint.0, %sint.0
  %200 = fmul double %198, %199
  %201 = fmul double %cosp.0, 2.000000e+00
  %202 = fmul double %168, %201
  %203 = fmul double %sinp.0, %202
  %204 = fmul double %203, %199
  %205 = fadd double %200, %204
  %206 = fmul double %cosp.0, %cosp.0
  %207 = fmul double %166, %206
  %208 = fmul double %207, %199
  %209 = fadd double %208, %205
  %210 = fmul double %cost.0, 2.000000e+00
  %211 = fmul double %174, %210
  %212 = fmul double %sinp.0, %211
  %213 = fmul double %sint.0, %212
  %214 = fadd double %209, %213
  %215 = fmul double %201, %cost.0
  %216 = fmul double %170, %215
  %217 = fmul double %sint.0, %216
  %218 = fadd double %217, %214
  %219 = fmul double %cost.0, %cost.0
  %220 = fmul double %176, %219
  %221 = fadd double %220, %218
  %222 = getelementptr inbounds double* %46, i64 %indvars.iv
  store double %221, double* %222, align 8, !tbaa !14
  %223 = fmul double %176, %199
  %224 = fmul double %cost.0, -2.000000e+00
  %225 = fmul double %174, %224
  %226 = fmul double %sinp.0, %225
  %227 = fsub double %226, %216
  %228 = fmul double %sint.0, %227
  %229 = fadd double %223, %228
  %230 = fmul double %172, %219
  %231 = fmul double %197, %230
  %232 = fadd double %231, %229
  %233 = fmul double %201, %219
  %234 = fmul double %168, %233
  %235 = fmul double %sinp.0, %234
  %236 = fadd double %235, %232
  %237 = fmul double %206, %219
  %238 = fmul double %166, %237
  %239 = fadd double %238, %236
  %240 = getelementptr inbounds double* %25, i64 %indvars.iv
  store double %239, double* %240, align 8, !tbaa !14
  br i1 %154, label %247, label %241

; <label>:241                                     ; preds = %196
  %242 = fmul double %166, %197
  %243 = fsub double %242, %203
  %244 = fmul double %172, %206
  %245 = fadd double %244, %243
  %246 = getelementptr inbounds double* %11, i64 %indvars.iv
  store double %245, double* %246, align 8, !tbaa !14
  br label %260

; <label>:247                                     ; preds = %196
  %248 = load double* %177, align 8, !tbaa !14
  %249 = fmul double %248, %248
  %250 = fmul double %239, %249
  store double %250, double* %240, align 8, !tbaa !14
  %251 = fmul double %166, %197
  %252 = fsub double %251, %203
  %253 = fmul double %172, %206
  %254 = fadd double %253, %252
  %255 = getelementptr inbounds double* %11, i64 %indvars.iv
  store double %254, double* %255, align 8, !tbaa !14
  %256 = load double* %177, align 8, !tbaa !14
  %257 = fmul double %256, %256
  %258 = fmul double %254, %257
  %259 = fmul double %199, %258
  store double %259, double* %255, align 8, !tbaa !14
  br label %260

; <label>:260                                     ; preds = %241, %247
  %261 = fmul double %172, %cost.0
  %262 = fmul double %197, %261
  %263 = fmul double %sint.0, %262
  %264 = fmul double %168, %215
  %265 = fmul double %sinp.0, %264
  %266 = fmul double %sint.0, %265
  %267 = fadd double %263, %266
  %268 = fmul double %176, %cost.0
  %269 = fmul double %sint.0, %268
  %270 = fsub double %267, %269
  %271 = fmul double %206, %cost.0
  %272 = fmul double %166, %271
  %273 = fmul double %sint.0, %272
  %274 = fadd double %273, %270
  %275 = fmul double %219, 2.000000e+00
  %276 = fmul double %174, %275
  %277 = fmul double %sinp.0, %276
  %278 = fadd double %277, %274
  %279 = fmul double %174, %sinp.0
  %280 = fsub double %278, %279
  %281 = fmul double %170, %233
  %282 = fadd double %281, %280
  %283 = fmul double %170, %cosp.0
  %284 = fsub double %282, %283
  %285 = load double* %177, align 8, !tbaa !14
  %286 = fmul double %284, %285
  %287 = getelementptr inbounds double* %39, i64 %indvars.iv
  store double %286, double* %287, align 8, !tbaa !14
  br i1 %154, label %288, label %291

; <label>:288                                     ; preds = %260
  %289 = load double* %177, align 8, !tbaa !14
  %290 = fmul double %286, %289
  store double %290, double* %287, align 8, !tbaa !14
  br label %291

; <label>:291                                     ; preds = %288, %260
  %292 = fmul double %168, %197
  %293 = fmul double %172, %cosp.0
  %294 = fmul double %166, %cosp.0
  %295 = fsub double %293, %294
  %296 = fmul double %sinp.0, %295
  %297 = fsub double %296, %292
  %298 = fmul double %168, %206
  %299 = fadd double %298, %297
  %300 = fmul double %sint.0, %299
  %301 = fmul double %170, %cost.0
  %302 = fmul double %sinp.0, %301
  %303 = fsub double %300, %302
  %304 = fmul double %cosp.0, %cost.0
  %305 = fmul double %174, %304
  %306 = fadd double %305, %303
  %307 = getelementptr inbounds double* %32, i64 %indvars.iv
  store double %306, double* %307, align 8, !tbaa !14
  br i1 %154, label %308, label %312

; <label>:308                                     ; preds = %291
  %309 = load double* %177, align 8, !tbaa !14
  %310 = fmul double %306, %309
  %311 = fmul double %sint.0, %310
  store double %311, double* %307, align 8, !tbaa !14
  br label %312

; <label>:312                                     ; preds = %308, %291
  %313 = fmul double %170, %sinp.0
  %314 = fmul double %174, %cosp.0
  %315 = fsub double %313, %314
  %316 = fmul double %sint.0, %315
  %317 = fsub double %172, %166
  %318 = fmul double %317, %cosp.0
  %319 = fmul double %318, %sinp.0
  %320 = fsub double %319, %292
  %321 = fadd double %298, %320
  %322 = fmul double %cost.0, %321
  %323 = fadd double %316, %322
  %324 = getelementptr inbounds double* %18, i64 %indvars.iv
  store double %323, double* %324, align 8, !tbaa !14
  br i1 %154, label %325, label %330

; <label>:325                                     ; preds = %312
  %326 = load double* %177, align 8, !tbaa !14
  %327 = fmul double %326, %326
  %328 = fmul double %323, %327
  %329 = fmul double %sint.0, %328
  store double %329, double* %324, align 8, !tbaa !14
  br label %330

; <label>:330                                     ; preds = %312, %325
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %331 = icmp slt i64 %indvars.iv.next, %163
  br i1 %331, label %164, label %._crit_edge

._crit_edge:                                      ; preds = %330, %0
  ret void
}

; Function Attrs: optsize
declare i32 @CCTK_VarIndex(i8*) #2

; Function Attrs: nounwind optsize readnone
declare double @sqrt(double) #3

; Function Attrs: nounwind optsize ssp uwtable
define void @curv_carttosphere(%struct.cGH* nocapture readonly %cctkGH) #1 {
  %1 = getelementptr inbounds %struct.cGH* %cctkGH, i64 0, i32 3
  %2 = load i32** %1, align 8, !tbaa !2
  %3 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([15 x i8]* @.str, i64 0, i64 0)) #4
  %4 = getelementptr inbounds %struct.cGH* %cctkGH, i64 0, i32 17
  %5 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str1, i64 0, i64 0)) #4
  %6 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str2, i64 0, i64 0)) #4
  %7 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str3, i64 0, i64 0)) #4
  %8 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str4, i64 0, i64 0)) #4
  %9 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str5, i64 0, i64 0)) #4
  %10 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str6, i64 0, i64 0)) #4
  %11 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str7, i64 0, i64 0)) #4
  %12 = sext i32 %11 to i64
  %13 = load i8**** %4, align 8, !tbaa !9
  %14 = getelementptr inbounds i8*** %13, i64 %12
  %15 = bitcast i8*** %14 to double***
  %16 = load double*** %15, align 8, !tbaa !10
  %17 = load double** %16, align 8, !tbaa !10
  %18 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str8, i64 0, i64 0)) #4
  %19 = sext i32 %18 to i64
  %20 = load i8**** %4, align 8, !tbaa !9
  %21 = getelementptr inbounds i8*** %20, i64 %19
  %22 = bitcast i8*** %21 to double***
  %23 = load double*** %22, align 8, !tbaa !10
  %24 = load double** %23, align 8, !tbaa !10
  %25 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str9, i64 0, i64 0)) #4
  %26 = sext i32 %25 to i64
  %27 = load i8**** %4, align 8, !tbaa !9
  %28 = getelementptr inbounds i8*** %27, i64 %26
  %29 = bitcast i8*** %28 to double***
  %30 = load double*** %29, align 8, !tbaa !10
  %31 = load double** %30, align 8, !tbaa !10
  %32 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str10, i64 0, i64 0)) #4
  %33 = sext i32 %32 to i64
  %34 = load i8**** %4, align 8, !tbaa !9
  %35 = getelementptr inbounds i8*** %34, i64 %33
  %36 = bitcast i8*** %35 to double***
  %37 = load double*** %36, align 8, !tbaa !10
  %38 = load double** %37, align 8, !tbaa !10
  %39 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str11, i64 0, i64 0)) #4
  %40 = sext i32 %39 to i64
  %41 = load i8**** %4, align 8, !tbaa !9
  %42 = getelementptr inbounds i8*** %41, i64 %40
  %43 = bitcast i8*** %42 to double***
  %44 = load double*** %43, align 8, !tbaa !10
  %45 = load double** %44, align 8, !tbaa !10
  %46 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str12, i64 0, i64 0)) #4
  %47 = sext i32 %46 to i64
  %48 = load i8**** %4, align 8, !tbaa !9
  %49 = getelementptr inbounds i8*** %48, i64 %47
  %50 = bitcast i8*** %49 to double***
  %51 = load double*** %50, align 8, !tbaa !10
  %52 = load double** %51, align 8, !tbaa !10
  %53 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str13, i64 0, i64 0)) #4
  %54 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([32 x i8]* @.str14, i64 0, i64 0)) #4
  %55 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str15, i64 0, i64 0)) #4
  %56 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str16, i64 0, i64 0)) #4
  %57 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str17, i64 0, i64 0)) #4
  %58 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str18, i64 0, i64 0)) #4
  %59 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str19, i64 0, i64 0)) #4
  %60 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str20, i64 0, i64 0)) #4
  %61 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str21, i64 0, i64 0)) #4
  %62 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([26 x i8]* @.str22, i64 0, i64 0)) #4
  %63 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([23 x i8]* @.str23, i64 0, i64 0)) #4
  %64 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([25 x i8]* @.str24, i64 0, i64 0)) #4
  %65 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str25, i64 0, i64 0)) #4
  %66 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str26, i64 0, i64 0)) #4
  %67 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str27, i64 0, i64 0)) #4
  %68 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str28, i64 0, i64 0)) #4
  %69 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str29, i64 0, i64 0)) #4
  %70 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str30, i64 0, i64 0)) #4
  %71 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str31, i64 0, i64 0)) #4
  %72 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str32, i64 0, i64 0)) #4
  %73 = sext i32 %72 to i64
  %74 = load i8**** %4, align 8, !tbaa !9
  %75 = getelementptr inbounds i8*** %74, i64 %73
  %76 = bitcast i8*** %75 to double***
  %77 = load double*** %76, align 8, !tbaa !10
  %78 = load double** %77, align 8, !tbaa !10
  %79 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str33, i64 0, i64 0)) #4
  %80 = sext i32 %79 to i64
  %81 = load i8**** %4, align 8, !tbaa !9
  %82 = getelementptr inbounds i8*** %81, i64 %80
  %83 = bitcast i8*** %82 to double***
  %84 = load double*** %83, align 8, !tbaa !10
  %85 = load double** %84, align 8, !tbaa !10
  %86 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str34, i64 0, i64 0)) #4
  %87 = sext i32 %86 to i64
  %88 = load i8**** %4, align 8, !tbaa !9
  %89 = getelementptr inbounds i8*** %88, i64 %87
  %90 = bitcast i8*** %89 to double***
  %91 = load double*** %90, align 8, !tbaa !10
  %92 = load double** %91, align 8, !tbaa !10
  %93 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str35, i64 0, i64 0)) #4
  %94 = sext i32 %93 to i64
  %95 = load i8**** %4, align 8, !tbaa !9
  %96 = getelementptr inbounds i8*** %95, i64 %94
  %97 = bitcast i8*** %96 to double***
  %98 = load double*** %97, align 8, !tbaa !10
  %99 = load double** %98, align 8, !tbaa !10
  %100 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str36, i64 0, i64 0)) #4
  %101 = sext i32 %100 to i64
  %102 = load i8**** %4, align 8, !tbaa !9
  %103 = getelementptr inbounds i8*** %102, i64 %101
  %104 = bitcast i8*** %103 to double***
  %105 = load double*** %104, align 8, !tbaa !10
  %106 = load double** %105, align 8, !tbaa !10
  %107 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str37, i64 0, i64 0)) #4
  %108 = sext i32 %107 to i64
  %109 = load i8**** %4, align 8, !tbaa !9
  %110 = getelementptr inbounds i8*** %109, i64 %108
  %111 = bitcast i8*** %110 to double***
  %112 = load double*** %111, align 8, !tbaa !10
  %113 = load double** %112, align 8, !tbaa !10
  %114 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str38, i64 0, i64 0)) #4
  %115 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([15 x i8]* @.str39, i64 0, i64 0)) #4
  %116 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str40, i64 0, i64 0)) #4
  %117 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str41, i64 0, i64 0)) #4
  %118 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str42, i64 0, i64 0)) #4
  %119 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([15 x i8]* @.str43, i64 0, i64 0)) #4
  %120 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str44, i64 0, i64 0)) #4
  %121 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str45, i64 0, i64 0)) #4
  %122 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([15 x i8]* @.str46, i64 0, i64 0)) #4
  %123 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str47, i64 0, i64 0)) #4
  %124 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([8 x i8]* @.str48, i64 0, i64 0)) #4
  %125 = sext i32 %124 to i64
  %126 = load i8**** %4, align 8, !tbaa !9
  %127 = getelementptr inbounds i8*** %126, i64 %125
  %128 = bitcast i8*** %127 to double***
  %129 = load double*** %128, align 8, !tbaa !10
  %130 = load double** %129, align 8, !tbaa !10
  %131 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([22 x i8]* @.str49, i64 0, i64 0)) #4
  %132 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([8 x i8]* @.str50, i64 0, i64 0)) #4
  %133 = sext i32 %132 to i64
  %134 = load i8**** %4, align 8, !tbaa !9
  %135 = getelementptr inbounds i8*** %134, i64 %133
  %136 = bitcast i8*** %135 to double***
  %137 = load double*** %136, align 8, !tbaa !10
  %138 = load double** %137, align 8, !tbaa !10
  %139 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([8 x i8]* @.str51, i64 0, i64 0)) #4
  %140 = sext i32 %139 to i64
  %141 = load i8**** %4, align 8, !tbaa !9
  %142 = getelementptr inbounds i8*** %141, i64 %140
  %143 = bitcast i8*** %142 to double***
  %144 = load double*** %143, align 8, !tbaa !10
  %145 = load double** %144, align 8, !tbaa !10
  %146 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([8 x i8]* @.str52, i64 0, i64 0)) #4
  %147 = sext i32 %146 to i64
  %148 = load i8**** %4, align 8, !tbaa !9
  %149 = getelementptr inbounds i8*** %148, i64 %147
  %150 = bitcast i8*** %149 to double***
  %151 = load double*** %150, align 8, !tbaa !10
  %152 = load double** %151, align 8, !tbaa !10
  %153 = load i32* getelementptr inbounds (%struct.anon.0* @einsteinpriv_, i64 0, i32 4), align 4, !tbaa !11
  %154 = icmp eq i32 %153, 1
  %155 = load i32* %2, align 4, !tbaa !13
  %156 = getelementptr inbounds i32* %2, i64 1
  %157 = load i32* %156, align 4, !tbaa !13
  %158 = mul nsw i32 %157, %155
  %159 = getelementptr inbounds i32* %2, i64 2
  %160 = load i32* %159, align 4, !tbaa !13
  %161 = mul nsw i32 %158, %160
  %162 = icmp sgt i32 %161, 0
  br i1 %162, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %0
  %163 = sext i32 %161 to i64
  br label %164

; <label>:164                                     ; preds = %.lr.ph, %330
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %330 ]
  %165 = getelementptr inbounds double* %78, i64 %indvars.iv
  %166 = load double* %165, align 8, !tbaa !14
  %167 = getelementptr inbounds double* %85, i64 %indvars.iv
  %168 = load double* %167, align 8, !tbaa !14
  %169 = getelementptr inbounds double* %92, i64 %indvars.iv
  %170 = load double* %169, align 8, !tbaa !14
  %171 = getelementptr inbounds double* %99, i64 %indvars.iv
  %172 = load double* %171, align 8, !tbaa !14
  %173 = getelementptr inbounds double* %106, i64 %indvars.iv
  %174 = load double* %173, align 8, !tbaa !14
  %175 = getelementptr inbounds double* %113, i64 %indvars.iv
  %176 = load double* %175, align 8, !tbaa !14
  %177 = getelementptr inbounds double* %130, i64 %indvars.iv
  %178 = load double* %177, align 8, !tbaa !14
  %179 = getelementptr inbounds double* %138, i64 %indvars.iv
  %180 = load double* %179, align 8, !tbaa !14
  %181 = fmul double %180, %180
  %182 = getelementptr inbounds double* %145, i64 %indvars.iv
  %183 = load double* %182, align 8, !tbaa !14
  %184 = fmul double %183, %183
  %185 = fadd double %181, %184
  %186 = tail call double @sqrt(double %185) #5
  %187 = fcmp oeq double %178, 0.000000e+00
  %188 = fcmp oeq double %186, 0.000000e+00
  %or.cond = or i1 %187, %188
  br i1 %or.cond, label %196, label %189

; <label>:189                                     ; preds = %164
  %190 = getelementptr inbounds double* %152, i64 %indvars.iv
  %191 = load double* %190, align 8, !tbaa !14
  %192 = fdiv double %191, %178
  %193 = fdiv double %186, %178
  %194 = fdiv double %183, %186
  %195 = fdiv double %180, %186
  br label %196

; <label>:196                                     ; preds = %164, %189
  %cosp.0 = phi double [ %195, %189 ], [ 1.000000e+00, %164 ]
  %sinp.0 = phi double [ %194, %189 ], [ 0.000000e+00, %164 ]
  %sint.0 = phi double [ %193, %189 ], [ 0.000000e+00, %164 ]
  %cost.0 = phi double [ %192, %189 ], [ 1.000000e+00, %164 ]
  %197 = fmul double %sinp.0, %sinp.0
  %198 = fmul double %172, %197
  %199 = fmul double %sint.0, %sint.0
  %200 = fmul double %198, %199
  %201 = fmul double %cosp.0, 2.000000e+00
  %202 = fmul double %168, %201
  %203 = fmul double %sinp.0, %202
  %204 = fmul double %203, %199
  %205 = fadd double %200, %204
  %206 = fmul double %cosp.0, %cosp.0
  %207 = fmul double %166, %206
  %208 = fmul double %207, %199
  %209 = fadd double %208, %205
  %210 = fmul double %cost.0, 2.000000e+00
  %211 = fmul double %174, %210
  %212 = fmul double %sinp.0, %211
  %213 = fmul double %sint.0, %212
  %214 = fadd double %209, %213
  %215 = fmul double %201, %cost.0
  %216 = fmul double %170, %215
  %217 = fmul double %sint.0, %216
  %218 = fadd double %217, %214
  %219 = fmul double %cost.0, %cost.0
  %220 = fmul double %176, %219
  %221 = fadd double %220, %218
  %222 = getelementptr inbounds double* %52, i64 %indvars.iv
  store double %221, double* %222, align 8, !tbaa !14
  %223 = fmul double %176, %199
  %224 = fmul double %cost.0, -2.000000e+00
  %225 = fmul double %174, %224
  %226 = fmul double %sinp.0, %225
  %227 = fsub double %226, %216
  %228 = fmul double %sint.0, %227
  %229 = fadd double %223, %228
  %230 = fmul double %172, %219
  %231 = fmul double %197, %230
  %232 = fadd double %231, %229
  %233 = fmul double %201, %219
  %234 = fmul double %168, %233
  %235 = fmul double %sinp.0, %234
  %236 = fadd double %235, %232
  %237 = fmul double %206, %219
  %238 = fmul double %166, %237
  %239 = fadd double %238, %236
  %240 = getelementptr inbounds double* %31, i64 %indvars.iv
  store double %239, double* %240, align 8, !tbaa !14
  br i1 %154, label %247, label %241

; <label>:241                                     ; preds = %196
  %242 = fmul double %166, %197
  %243 = fsub double %242, %203
  %244 = fmul double %172, %206
  %245 = fadd double %244, %243
  %246 = getelementptr inbounds double* %17, i64 %indvars.iv
  store double %245, double* %246, align 8, !tbaa !14
  br label %260

; <label>:247                                     ; preds = %196
  %248 = load double* %177, align 8, !tbaa !14
  %249 = fmul double %248, %248
  %250 = fmul double %239, %249
  store double %250, double* %240, align 8, !tbaa !14
  %251 = fmul double %166, %197
  %252 = fsub double %251, %203
  %253 = fmul double %172, %206
  %254 = fadd double %253, %252
  %255 = getelementptr inbounds double* %17, i64 %indvars.iv
  store double %254, double* %255, align 8, !tbaa !14
  %256 = load double* %177, align 8, !tbaa !14
  %257 = fmul double %256, %256
  %258 = fmul double %254, %257
  %259 = fmul double %199, %258
  store double %259, double* %255, align 8, !tbaa !14
  br label %260

; <label>:260                                     ; preds = %241, %247
  %261 = fmul double %172, %cost.0
  %262 = fmul double %197, %261
  %263 = fmul double %sint.0, %262
  %264 = fmul double %168, %215
  %265 = fmul double %sinp.0, %264
  %266 = fmul double %sint.0, %265
  %267 = fadd double %263, %266
  %268 = fmul double %176, %cost.0
  %269 = fmul double %sint.0, %268
  %270 = fsub double %267, %269
  %271 = fmul double %206, %cost.0
  %272 = fmul double %166, %271
  %273 = fmul double %sint.0, %272
  %274 = fadd double %273, %270
  %275 = fmul double %219, 2.000000e+00
  %276 = fmul double %174, %275
  %277 = fmul double %sinp.0, %276
  %278 = fadd double %277, %274
  %279 = fmul double %174, %sinp.0
  %280 = fsub double %278, %279
  %281 = fmul double %170, %233
  %282 = fadd double %281, %280
  %283 = fmul double %170, %cosp.0
  %284 = fsub double %282, %283
  %285 = load double* %177, align 8, !tbaa !14
  %286 = fmul double %284, %285
  %287 = getelementptr inbounds double* %45, i64 %indvars.iv
  store double %286, double* %287, align 8, !tbaa !14
  br i1 %154, label %288, label %291

; <label>:288                                     ; preds = %260
  %289 = load double* %177, align 8, !tbaa !14
  %290 = fmul double %286, %289
  store double %290, double* %287, align 8, !tbaa !14
  br label %291

; <label>:291                                     ; preds = %288, %260
  %292 = fmul double %168, %197
  %293 = fmul double %172, %cosp.0
  %294 = fmul double %166, %cosp.0
  %295 = fsub double %293, %294
  %296 = fmul double %sinp.0, %295
  %297 = fsub double %296, %292
  %298 = fmul double %168, %206
  %299 = fadd double %298, %297
  %300 = fmul double %sint.0, %299
  %301 = fmul double %170, %cost.0
  %302 = fmul double %sinp.0, %301
  %303 = fsub double %300, %302
  %304 = fmul double %cosp.0, %cost.0
  %305 = fmul double %174, %304
  %306 = fadd double %305, %303
  %307 = getelementptr inbounds double* %38, i64 %indvars.iv
  store double %306, double* %307, align 8, !tbaa !14
  br i1 %154, label %308, label %312

; <label>:308                                     ; preds = %291
  %309 = load double* %177, align 8, !tbaa !14
  %310 = fmul double %306, %309
  %311 = fmul double %sint.0, %310
  store double %311, double* %307, align 8, !tbaa !14
  br label %312

; <label>:312                                     ; preds = %308, %291
  %313 = fmul double %170, %sinp.0
  %314 = fmul double %174, %cosp.0
  %315 = fsub double %313, %314
  %316 = fmul double %sint.0, %315
  %317 = fsub double %172, %166
  %318 = fmul double %317, %cosp.0
  %319 = fmul double %318, %sinp.0
  %320 = fsub double %319, %292
  %321 = fadd double %298, %320
  %322 = fmul double %cost.0, %321
  %323 = fadd double %316, %322
  %324 = getelementptr inbounds double* %24, i64 %indvars.iv
  store double %323, double* %324, align 8, !tbaa !14
  br i1 %154, label %325, label %330

; <label>:325                                     ; preds = %312
  %326 = load double* %177, align 8, !tbaa !14
  %327 = fmul double %326, %326
  %328 = fmul double %323, %327
  %329 = fmul double %sint.0, %328
  store double %329, double* %324, align 8, !tbaa !14
  br label %330

; <label>:330                                     ; preds = %312, %325
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %331 = icmp slt i64 %indvars.iv.next, %163
  br i1 %331, label %164, label %._crit_edge

._crit_edge:                                      ; preds = %330, %0
  ret void
}

attributes #0 = { nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize }
attributes #5 = { nounwind optsize readnone }

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
!11 = !{!12, !4, i64 28}
!12 = !{!"", !8, i64 0, !8, i64 8, !7, i64 16, !4, i64 24, !4, i64 28}
!13 = !{!4, !4, i64 0}
!14 = !{!8, !8, i64 0}
