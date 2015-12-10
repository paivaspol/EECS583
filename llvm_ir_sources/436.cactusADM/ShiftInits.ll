; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/Einstein/ShiftInits.c'
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
@.str53 = private unnamed_addr constant [5 x i8] c"BrBr\00", align 1
@.str54 = private unnamed_addr constant [9 x i8] c"Einstein\00", align 1
@.str55 = private unnamed_addr constant [59 x i8] c"Attenuated corotation shift applied: puncture data is used\00", align 1
@.str56 = private unnamed_addr constant [5 x i8] c"bhm1\00", align 1
@.str57 = private unnamed_addr constant [13 x i8] c"BAM_Elliptic\00", align 1
@.str58 = private unnamed_addr constant [5 x i8] c"bhx1\00", align 1
@.str59 = private unnamed_addr constant [5 x i8] c"bhy1\00", align 1
@.str60 = private unnamed_addr constant [5 x i8] c"bhz1\00", align 1
@.str61 = private unnamed_addr constant [5 x i8] c"bhm2\00", align 1
@.str62 = private unnamed_addr constant [5 x i8] c"bhx2\00", align 1
@.str63 = private unnamed_addr constant [5 x i8] c"bhy2\00", align 1
@.str64 = private unnamed_addr constant [5 x i8] c"bhz2\00", align 1

; Function Attrs: nounwind optsize ssp uwtable
define void @ShiftZero(%struct.cGH* nocapture readonly %cctkGH) #0 {
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
  %12 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str8, i64 0, i64 0)) #4
  %13 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str9, i64 0, i64 0)) #4
  %14 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str10, i64 0, i64 0)) #4
  %15 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str11, i64 0, i64 0)) #4
  %16 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str12, i64 0, i64 0)) #4
  %17 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str13, i64 0, i64 0)) #4
  %18 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([32 x i8]* @.str14, i64 0, i64 0)) #4
  %19 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str15, i64 0, i64 0)) #4
  %20 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str16, i64 0, i64 0)) #4
  %21 = sext i32 %20 to i64
  %22 = load i8**** %4, align 8, !tbaa !9
  %23 = getelementptr inbounds i8*** %22, i64 %21
  %24 = bitcast i8*** %23 to double***
  %25 = load double*** %24, align 8, !tbaa !10
  %26 = load double** %25, align 8, !tbaa !10
  %27 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str17, i64 0, i64 0)) #4
  %28 = sext i32 %27 to i64
  %29 = load i8**** %4, align 8, !tbaa !9
  %30 = getelementptr inbounds i8*** %29, i64 %28
  %31 = bitcast i8*** %30 to double***
  %32 = load double*** %31, align 8, !tbaa !10
  %33 = load double** %32, align 8, !tbaa !10
  %34 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str18, i64 0, i64 0)) #4
  %35 = sext i32 %34 to i64
  %36 = load i8**** %4, align 8, !tbaa !9
  %37 = getelementptr inbounds i8*** %36, i64 %35
  %38 = bitcast i8*** %37 to double***
  %39 = load double*** %38, align 8, !tbaa !10
  %40 = load double** %39, align 8, !tbaa !10
  %41 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str19, i64 0, i64 0)) #4
  %42 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str20, i64 0, i64 0)) #4
  %43 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str21, i64 0, i64 0)) #4
  %44 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([26 x i8]* @.str22, i64 0, i64 0)) #4
  %45 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([23 x i8]* @.str23, i64 0, i64 0)) #4
  %46 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([25 x i8]* @.str24, i64 0, i64 0)) #4
  %47 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str25, i64 0, i64 0)) #4
  %48 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str26, i64 0, i64 0)) #4
  %49 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str27, i64 0, i64 0)) #4
  %50 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str28, i64 0, i64 0)) #4
  %51 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str29, i64 0, i64 0)) #4
  %52 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str30, i64 0, i64 0)) #4
  %53 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str31, i64 0, i64 0)) #4
  %54 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str32, i64 0, i64 0)) #4
  %55 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str33, i64 0, i64 0)) #4
  %56 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str34, i64 0, i64 0)) #4
  %57 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str35, i64 0, i64 0)) #4
  %58 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str36, i64 0, i64 0)) #4
  %59 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str37, i64 0, i64 0)) #4
  %60 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str38, i64 0, i64 0)) #4
  %61 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([15 x i8]* @.str39, i64 0, i64 0)) #4
  %62 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str40, i64 0, i64 0)) #4
  %63 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str41, i64 0, i64 0)) #4
  %64 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str42, i64 0, i64 0)) #4
  %65 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([15 x i8]* @.str43, i64 0, i64 0)) #4
  %66 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str44, i64 0, i64 0)) #4
  %67 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str45, i64 0, i64 0)) #4
  %68 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([15 x i8]* @.str46, i64 0, i64 0)) #4
  %69 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str47, i64 0, i64 0)) #4
  %70 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([8 x i8]* @.str48, i64 0, i64 0)) #4
  %71 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([22 x i8]* @.str49, i64 0, i64 0)) #4
  %72 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([8 x i8]* @.str50, i64 0, i64 0)) #4
  %73 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([8 x i8]* @.str51, i64 0, i64 0)) #4
  %74 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([8 x i8]* @.str52, i64 0, i64 0)) #4
  %75 = load i32* %2, align 4, !tbaa !11
  %76 = getelementptr inbounds i32* %2, i64 1
  %77 = load i32* %76, align 4, !tbaa !11
  %78 = getelementptr inbounds i32* %2, i64 2
  %79 = load i32* %78, align 4, !tbaa !11
  %80 = icmp sgt i32 %79, 0
  br i1 %80, label %.preheader1.lr.ph, label %._crit_edge7

.preheader1.lr.ph:                                ; preds = %0
  %81 = icmp sgt i32 %77, 0
  %82 = icmp sgt i32 %75, 0
  %83 = add i32 %75, -1
  %84 = add i32 %77, -1
  %85 = add i32 %79, -1
  br label %.preheader1

.preheader1:                                      ; preds = %._crit_edge4, %.preheader1.lr.ph
  %k.05 = phi i32 [ 0, %.preheader1.lr.ph ], [ %100, %._crit_edge4 ]
  br i1 %81, label %.preheader, label %._crit_edge4

.preheader:                                       ; preds = %.preheader1, %._crit_edge
  %j.03 = phi i32 [ %99, %._crit_edge ], [ 0, %.preheader1 ]
  br i1 %82, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %86 = load i32** %1, align 8, !tbaa !2
  %87 = load i32* %86, align 4, !tbaa !11
  %88 = getelementptr inbounds i32* %86, i64 1
  %89 = load i32* %88, align 4, !tbaa !11
  %90 = mul nsw i32 %89, %k.05
  %91 = add nsw i32 %90, %j.03
  %92 = mul nsw i32 %91, %87
  %93 = sext i32 %92 to i64
  br label %94

; <label>:94                                      ; preds = %94, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %94 ]
  %95 = add nsw i64 %93, %indvars.iv
  %96 = getelementptr inbounds double* %26, i64 %95
  store double 0.000000e+00, double* %96, align 8, !tbaa !12
  %97 = getelementptr inbounds double* %33, i64 %95
  store double 0.000000e+00, double* %97, align 8, !tbaa !12
  %98 = getelementptr inbounds double* %40, i64 %95
  store double 0.000000e+00, double* %98, align 8, !tbaa !12
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %83
  br i1 %exitcond, label %._crit_edge, label %94

._crit_edge:                                      ; preds = %94, %.preheader
  %99 = add nuw nsw i32 %j.03, 1
  %exitcond11 = icmp eq i32 %j.03, %84
  br i1 %exitcond11, label %._crit_edge4, label %.preheader

._crit_edge4:                                     ; preds = %._crit_edge, %.preheader1
  %100 = add nuw nsw i32 %k.05, 1
  %exitcond12 = icmp eq i32 %k.05, %85
  br i1 %exitcond12, label %._crit_edge7, label %.preheader1

._crit_edge7:                                     ; preds = %._crit_edge4, %0
  ret void
}

; Function Attrs: optsize
declare i32 @CCTK_VarIndex(i8*) #1

; Function Attrs: nounwind optsize ssp uwtable
define void @ShiftRotation(%struct.cGH* nocapture readonly %cctkGH) #0 {
  %m1t = alloca i32, align 4
  %m2t = alloca i32, align 4
  %x1t = alloca i32, align 4
  %x2t = alloca i32, align 4
  %y1t = alloca i32, align 4
  %y2t = alloca i32, align 4
  %z1t = alloca i32, align 4
  %z2t = alloca i32, align 4
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
  %12 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str8, i64 0, i64 0)) #4
  %13 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str9, i64 0, i64 0)) #4
  %14 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str10, i64 0, i64 0)) #4
  %15 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str11, i64 0, i64 0)) #4
  %16 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str12, i64 0, i64 0)) #4
  %17 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str13, i64 0, i64 0)) #4
  %18 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([32 x i8]* @.str14, i64 0, i64 0)) #4
  %19 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str15, i64 0, i64 0)) #4
  %20 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str16, i64 0, i64 0)) #4
  %21 = sext i32 %20 to i64
  %22 = load i8**** %4, align 8, !tbaa !9
  %23 = getelementptr inbounds i8*** %22, i64 %21
  %24 = bitcast i8*** %23 to double***
  %25 = load double*** %24, align 8, !tbaa !10
  %26 = load double** %25, align 8, !tbaa !10
  %27 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str17, i64 0, i64 0)) #4
  %28 = sext i32 %27 to i64
  %29 = load i8**** %4, align 8, !tbaa !9
  %30 = getelementptr inbounds i8*** %29, i64 %28
  %31 = bitcast i8*** %30 to double***
  %32 = load double*** %31, align 8, !tbaa !10
  %33 = load double** %32, align 8, !tbaa !10
  %34 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str18, i64 0, i64 0)) #4
  %35 = sext i32 %34 to i64
  %36 = load i8**** %4, align 8, !tbaa !9
  %37 = getelementptr inbounds i8*** %36, i64 %35
  %38 = bitcast i8*** %37 to double***
  %39 = load double*** %38, align 8, !tbaa !10
  %40 = load double** %39, align 8, !tbaa !10
  %41 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str19, i64 0, i64 0)) #4
  %42 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str20, i64 0, i64 0)) #4
  %43 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str21, i64 0, i64 0)) #4
  %44 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([26 x i8]* @.str22, i64 0, i64 0)) #4
  %45 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([23 x i8]* @.str23, i64 0, i64 0)) #4
  %46 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([25 x i8]* @.str24, i64 0, i64 0)) #4
  %47 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str25, i64 0, i64 0)) #4
  %48 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str26, i64 0, i64 0)) #4
  %49 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str27, i64 0, i64 0)) #4
  %50 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str28, i64 0, i64 0)) #4
  %51 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str29, i64 0, i64 0)) #4
  %52 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str30, i64 0, i64 0)) #4
  %53 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str31, i64 0, i64 0)) #4
  %54 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str32, i64 0, i64 0)) #4
  %55 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str33, i64 0, i64 0)) #4
  %56 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str34, i64 0, i64 0)) #4
  %57 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str35, i64 0, i64 0)) #4
  %58 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str36, i64 0, i64 0)) #4
  %59 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str37, i64 0, i64 0)) #4
  %60 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([14 x i8]* @.str38, i64 0, i64 0)) #4
  %61 = sext i32 %60 to i64
  %62 = load i8**** %4, align 8, !tbaa !9
  %63 = getelementptr inbounds i8*** %62, i64 %61
  %64 = bitcast i8*** %63 to double***
  %65 = load double*** %64, align 8, !tbaa !10
  %66 = load double** %65, align 8, !tbaa !10
  %67 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([15 x i8]* @.str39, i64 0, i64 0)) #4
  %68 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str40, i64 0, i64 0)) #4
  %69 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str41, i64 0, i64 0)) #4
  %70 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str42, i64 0, i64 0)) #4
  %71 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([15 x i8]* @.str43, i64 0, i64 0)) #4
  %72 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str44, i64 0, i64 0)) #4
  %73 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str45, i64 0, i64 0)) #4
  %74 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([15 x i8]* @.str46, i64 0, i64 0)) #4
  %75 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str47, i64 0, i64 0)) #4
  %76 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([8 x i8]* @.str48, i64 0, i64 0)) #4
  %77 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([22 x i8]* @.str49, i64 0, i64 0)) #4
  %78 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([8 x i8]* @.str50, i64 0, i64 0)) #4
  %79 = sext i32 %78 to i64
  %80 = load i8**** %4, align 8, !tbaa !9
  %81 = getelementptr inbounds i8*** %80, i64 %79
  %82 = bitcast i8*** %81 to double***
  %83 = load double*** %82, align 8, !tbaa !10
  %84 = load double** %83, align 8, !tbaa !10
  %85 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([8 x i8]* @.str51, i64 0, i64 0)) #4
  %86 = sext i32 %85 to i64
  %87 = load i8**** %4, align 8, !tbaa !9
  %88 = getelementptr inbounds i8*** %87, i64 %86
  %89 = bitcast i8*** %88 to double***
  %90 = load double*** %89, align 8, !tbaa !10
  %91 = load double** %90, align 8, !tbaa !10
  %92 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([8 x i8]* @.str52, i64 0, i64 0)) #4
  %93 = sext i32 %92 to i64
  %94 = load i8**** %4, align 8, !tbaa !9
  %95 = getelementptr inbounds i8*** %94, i64 %93
  %96 = bitcast i8*** %95 to double***
  %97 = load double*** %96, align 8, !tbaa !10
  %98 = load double** %97, align 8, !tbaa !10
  %99 = load double* getelementptr inbounds (%struct.anon* @einsteinrest_, i64 0, i32 3), align 8, !tbaa !13
  %100 = load double* getelementptr inbounds (%struct.anon* @einsteinrest_, i64 0, i32 4), align 8, !tbaa !15
  %101 = load i32* getelementptr inbounds (%struct.anon* @einsteinrest_, i64 0, i32 15), align 4, !tbaa !16
  %102 = load i64* bitcast (i32* getelementptr inbounds (%struct.anon* @einsteinrest_, i64 0, i32 16) to i64*), align 8
  %103 = trunc i64 %102 to i32
  %104 = lshr i64 %102, 32
  %105 = trunc i64 %104 to i32
  %106 = load i32* %2, align 4, !tbaa !11
  %107 = getelementptr inbounds i32* %2, i64 1
  %108 = load i32* %107, align 4, !tbaa !11
  %109 = getelementptr inbounds i32* %2, i64 2
  %110 = load i32* %109, align 4, !tbaa !11
  %111 = icmp eq i32 %101, 0
  br i1 %111, label %140, label %112

; <label>:112                                     ; preds = %0
  %113 = load i8** getelementptr inbounds (%struct.anon* @einsteinrest_, i64 0, i32 7), align 8, !tbaa !17
  %114 = tail call i32 @CCTK_Equals(i8* %113, i8* getelementptr inbounds ([5 x i8]* @.str53, i64 0, i64 0)) #4
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %140, label %116

; <label>:116                                     ; preds = %112
  %117 = tail call i32 @CCTK_Info(i8* getelementptr inbounds ([9 x i8]* @.str54, i64 0, i64 0), i8* getelementptr inbounds ([59 x i8]* @.str55, i64 0, i64 0)) #4
  %118 = call i8* @CCTK_ParameterGet(i8* getelementptr inbounds ([5 x i8]* @.str56, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8]* @.str57, i64 0, i64 0), i32* %m1t) #4
  %119 = bitcast i8* %118 to double*
  %120 = call i8* @CCTK_ParameterGet(i8* getelementptr inbounds ([5 x i8]* @.str58, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8]* @.str57, i64 0, i64 0), i32* %x1t) #4
  %121 = bitcast i8* %120 to double*
  %122 = call i8* @CCTK_ParameterGet(i8* getelementptr inbounds ([5 x i8]* @.str59, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8]* @.str57, i64 0, i64 0), i32* %y1t) #4
  %123 = bitcast i8* %122 to double*
  %124 = call i8* @CCTK_ParameterGet(i8* getelementptr inbounds ([5 x i8]* @.str60, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8]* @.str57, i64 0, i64 0), i32* %z1t) #4
  %125 = bitcast i8* %124 to double*
  %126 = call i8* @CCTK_ParameterGet(i8* getelementptr inbounds ([5 x i8]* @.str61, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8]* @.str57, i64 0, i64 0), i32* %m2t) #4
  %127 = bitcast i8* %126 to double*
  %128 = call i8* @CCTK_ParameterGet(i8* getelementptr inbounds ([5 x i8]* @.str62, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8]* @.str57, i64 0, i64 0), i32* %x2t) #4
  %129 = bitcast i8* %128 to double*
  %130 = call i8* @CCTK_ParameterGet(i8* getelementptr inbounds ([5 x i8]* @.str63, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8]* @.str57, i64 0, i64 0), i32* %y2t) #4
  %131 = bitcast i8* %130 to double*
  %132 = call i8* @CCTK_ParameterGet(i8* getelementptr inbounds ([5 x i8]* @.str64, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8]* @.str57, i64 0, i64 0), i32* %z2t) #4
  %133 = bitcast i8* %132 to double*
  %134 = load double* %119, align 8, !tbaa !12
  %135 = fcmp une double %134, 0.000000e+00
  %use_att.0 = zext i1 %135 to i32
  %136 = load double* %127, align 8, !tbaa !12
  %137 = fcmp une double %136, 0.000000e+00
  br i1 %137, label %138, label %140

; <label>:138                                     ; preds = %116
  %139 = select i1 %135, i32 2, i32 1
  br label %140

; <label>:140                                     ; preds = %112, %0, %138, %116
  %m2p.0 = phi double* [ %127, %138 ], [ %127, %116 ], [ undef, %112 ], [ undef, %0 ]
  %x1p.0 = phi double* [ %121, %138 ], [ %121, %116 ], [ undef, %112 ], [ undef, %0 ]
  %x2p.0 = phi double* [ %129, %138 ], [ %129, %116 ], [ undef, %112 ], [ undef, %0 ]
  %y1p.0 = phi double* [ %123, %138 ], [ %123, %116 ], [ undef, %112 ], [ undef, %0 ]
  %y2p.0 = phi double* [ %131, %138 ], [ %131, %116 ], [ undef, %112 ], [ undef, %0 ]
  %z1p.0 = phi double* [ %125, %138 ], [ %125, %116 ], [ undef, %112 ], [ undef, %0 ]
  %z2p.0 = phi double* [ %133, %138 ], [ %133, %116 ], [ undef, %112 ], [ undef, %0 ]
  %m1p.0 = phi double* [ %119, %138 ], [ %119, %116 ], [ undef, %112 ], [ undef, %0 ]
  %use_att.1 = phi i32 [ %139, %138 ], [ %use_att.0, %116 ], [ 0, %112 ], [ 0, %0 ]
  %141 = icmp sgt i32 %110, 0
  br i1 %141, label %.preheader8.lr.ph, label %._crit_edge14

.preheader8.lr.ph:                                ; preds = %140
  %142 = icmp sgt i32 %108, 0
  %143 = icmp sgt i32 %106, 0
  %144 = icmp eq i32 %use_att.1, 0
  %145 = sitofp i32 %105 to double
  %pow27 = fmul double %99, %99
  %146 = sitofp i32 %103 to double
  %147 = add i32 %106, -1
  %148 = add i32 %108, -1
  %149 = add i32 %110, -1
  br label %.preheader8

.preheader8:                                      ; preds = %._crit_edge11, %.preheader8.lr.ph
  %k.012 = phi i32 [ 0, %.preheader8.lr.ph ], [ %225, %._crit_edge11 ]
  br i1 %142, label %.preheader, label %._crit_edge11

.preheader:                                       ; preds = %.preheader8, %._crit_edge
  %j.010 = phi i32 [ %224, %._crit_edge ], [ 0, %.preheader8 ]
  br i1 %143, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %150 = load i32** %1, align 8, !tbaa !2
  %151 = load i32* %150, align 4, !tbaa !11
  %152 = getelementptr inbounds i32* %150, i64 1
  %153 = load i32* %152, align 4, !tbaa !11
  %154 = mul nsw i32 %153, %k.012
  %155 = add nsw i32 %154, %j.010
  %156 = mul nsw i32 %155, %151
  %157 = sext i32 %156 to i64
  br label %158

; <label>:158                                     ; preds = %211, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %211 ]
  %159 = add nsw i64 %157, %indvars.iv
  br i1 %144, label %160, label %165

; <label>:160                                     ; preds = %158
  %161 = getelementptr inbounds double* %66, i64 %159
  %162 = load double* %161, align 8, !tbaa !12
  %163 = call double @llvm.pow.f64(double %162, double %145)
  %164 = fdiv double 1.000000e+00, %163
  br label %211

; <label>:165                                     ; preds = %158
  %166 = load double* %m1p.0, align 8, !tbaa !12
  %167 = fcmp une double %166, 0.000000e+00
  br i1 %167, label %168, label %188

; <label>:168                                     ; preds = %165
  %169 = getelementptr inbounds double* %84, i64 %159
  %170 = load double* %169, align 8, !tbaa !12
  %171 = load double* %x1p.0, align 8, !tbaa !12
  %172 = fsub double %170, %171
  %pow24 = fmul double %172, %172
  %173 = getelementptr inbounds double* %91, i64 %159
  %174 = load double* %173, align 8, !tbaa !12
  %175 = load double* %y1p.0, align 8, !tbaa !12
  %176 = fsub double %174, %175
  %pow25 = fmul double %176, %176
  %177 = fadd double %pow24, %pow25
  %178 = getelementptr inbounds double* %98, i64 %159
  %179 = load double* %178, align 8, !tbaa !12
  %180 = load double* %z1p.0, align 8, !tbaa !12
  %181 = fsub double %179, %180
  %pow26 = fmul double %181, %181
  %182 = fadd double %177, %pow26
  %183 = fdiv double %182, %pow27
  %184 = call double @llvm.pow.f64(double %183, double %146)
  %185 = fsub double -0.000000e+00, %184
  %186 = call double @exp(double %185) #5
  %187 = fsub double 1.000000e+00, %186
  br label %188

; <label>:188                                     ; preds = %168, %165
  %fac.0 = phi double [ %187, %168 ], [ 1.000000e+00, %165 ]
  %189 = load double* %m2p.0, align 8, !tbaa !12
  %190 = fcmp une double %189, 0.000000e+00
  br i1 %190, label %191, label %211

; <label>:191                                     ; preds = %188
  %192 = getelementptr inbounds double* %84, i64 %159
  %193 = load double* %192, align 8, !tbaa !12
  %194 = load double* %x2p.0, align 8, !tbaa !12
  %195 = fsub double %193, %194
  %pow2 = fmul double %195, %195
  %196 = getelementptr inbounds double* %91, i64 %159
  %197 = load double* %196, align 8, !tbaa !12
  %198 = load double* %y2p.0, align 8, !tbaa !12
  %199 = fsub double %197, %198
  %pow21 = fmul double %199, %199
  %200 = fadd double %pow2, %pow21
  %201 = getelementptr inbounds double* %98, i64 %159
  %202 = load double* %201, align 8, !tbaa !12
  %203 = load double* %z2p.0, align 8, !tbaa !12
  %204 = fsub double %202, %203
  %pow22 = fmul double %204, %204
  %205 = fadd double %200, %pow22
  %206 = fdiv double %205, %pow27
  %207 = call double @llvm.pow.f64(double %206, double %146)
  %208 = fsub double -0.000000e+00, %207
  %209 = call double @exp(double %208) #5
  %210 = fsub double %fac.0, %209
  br label %211

; <label>:211                                     ; preds = %188, %191, %160
  %fac.1 = phi double [ %164, %160 ], [ %210, %191 ], [ %fac.0, %188 ]
  %212 = getelementptr inbounds double* %91, i64 %159
  %213 = load double* %212, align 8, !tbaa !12
  %214 = fmul double %100, %213
  %215 = fmul double %fac.1, %214
  %216 = fsub double -0.000000e+00, %215
  %217 = getelementptr inbounds double* %26, i64 %159
  store double %216, double* %217, align 8, !tbaa !12
  %218 = getelementptr inbounds double* %84, i64 %159
  %219 = load double* %218, align 8, !tbaa !12
  %220 = fmul double %100, %219
  %221 = fmul double %fac.1, %220
  %222 = getelementptr inbounds double* %33, i64 %159
  store double %221, double* %222, align 8, !tbaa !12
  %223 = getelementptr inbounds double* %40, i64 %159
  store double 0.000000e+00, double* %223, align 8, !tbaa !12
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %147
  br i1 %exitcond, label %._crit_edge, label %158

._crit_edge:                                      ; preds = %211, %.preheader
  %224 = add nuw nsw i32 %j.010, 1
  %exitcond16 = icmp eq i32 %j.010, %148
  br i1 %exitcond16, label %._crit_edge11, label %.preheader

._crit_edge11:                                    ; preds = %._crit_edge, %.preheader8
  %225 = add nuw nsw i32 %k.012, 1
  %exitcond17 = icmp eq i32 %k.012, %149
  br i1 %exitcond17, label %._crit_edge14, label %.preheader8

._crit_edge14:                                    ; preds = %._crit_edge11, %140
  ret void
}

; Function Attrs: optsize
declare i32 @CCTK_Equals(i8*, i8*) #1

; Function Attrs: optsize
declare i32 @CCTK_Info(i8*, i8*) #1

; Function Attrs: optsize
declare i8* @CCTK_ParameterGet(i8*, i8*, i32*) #1

; Function Attrs: nounwind readnone
declare double @llvm.pow.f64(double, double) #2

; Function Attrs: nounwind optsize readnone
declare double @exp(double) #3

attributes #0 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }
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
!11 = !{!4, !4, i64 0}
!12 = !{!8, !8, i64 0}
!13 = !{!14, !8, i64 24}
!14 = !{!"", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !7, i64 88, !7, i64 96, !7, i64 104, !4, i64 112, !4, i64 116, !4, i64 120, !4, i64 124, !4, i64 128, !4, i64 132, !4, i64 136}
!15 = !{!14, !8, i64 32}
!16 = !{!14, !4, i64 116}
!17 = !{!14, !7, i64 56}
