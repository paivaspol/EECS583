; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/fnbf.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct.t_commrec = type { i32, i32, i32, i32, i32, i32 }
%struct.t_forcerec = type { i32, float, float, float, float, float, float, i32, float, float, float, float, float, i32, i32, float, i32, float, float*, float*, float*, float*, float, float, float*, float, float, float, float, i32, float, float, i32, i32, i32, i32, i32, i32, i32, i32, [3 x float], i32, i32, i32, i32, i32*, i32*, [3 x float]*, [3 x float]*, [13 x %struct.t_nblist], [13 x %struct.t_nblist], i32, i32, [3 x float]*, [3 x float]*, [3 x float]*, i32, float, [3 x float]*, i32, i32*, float*, i32, i32, i32, float*, i32*, float }
%struct.t_nblist = type { i32, i32, i32, i32, i32, i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32, i32* }
%struct.t_mdatoms = type { float, i32, float*, float*, float*, float*, float*, float*, float*, i32*, i32*, i32*, i32*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16* }
%struct.t_nrnb = type { [129 x double] }
%union.t_iparams = type { %struct.anon.5 }
%struct.anon.5 = type { float, float, float, float, float, float }
%struct.t_graph = type { i32, i32, i32, i32, i32, i32*, i32**, [3 x i32]* }

@cpu_capabilities = global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"Can't do softcore with the SPEC benchmark version\00", align 1
@.str1 = private unnamed_addr constant [47 x i8] c"nrnb_ind is \22NONE\22, bad selection made in ns.c\00", align 1
@.str2 = private unnamed_addr constant [48 x i8] c"No function corresponding to %s in %s `line' %d\00", align 1
@.str3 = private unnamed_addr constant [64 x i8] c"../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/fnbf.c\00", align 1
@.str4 = private unnamed_addr constant [49 x i8] c"MFlops accounting wrong in %s, %d, nrnb_ind = %d\00", align 1
@do_14.nbfp14 = internal unnamed_addr global float* null, align 8
@do_14.bWarn = internal unnamed_addr global i1 false
@debug = external global %struct.__sFILE*
@.str5 = private unnamed_addr constant [7 x i8] c"nbfp14\00", align 1
@__stderrp = external global %struct.__sFILE*
@.str6 = private unnamed_addr constant [53 x i8] c"Warning: 1-4 interaction at distance larger than %g\0A\00", align 1
@.str7 = private unnamed_addr constant [86 x i8] c"These are ignored for the rest of the simulation\0Aturn on -debug for more information\0A\00", align 1
@.str8 = private unnamed_addr constant [82 x i8] c"%8f %8f %8f\0A%8f %8f %8f\0A1-4 (%d,%d) interaction not within cut-off! r=%g. Ignored\00", align 1
@.str9 = private unnamed_addr constant [5 x i8] c"nbfp\00", align 1
@.str10 = private unnamed_addr constant [126 x i8] c"Force field inconsistency: 1-4 interaction parameters for atoms %d-%d not the same as for other atoms with the same atom type\00", align 1

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__sigbits(i32 %__signo) #0 {
  %1 = icmp sgt i32 %__signo, 32
  br i1 %1, label %5, label %2

; <label>:2                                       ; preds = %0
  %3 = add nsw i32 %__signo, -1
  %4 = shl i32 1, %3
  br label %5

; <label>:5                                       ; preds = %0, %2
  %6 = phi i32 [ %4, %2 ], [ 0, %0 ]
  ret i32 %6
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isfinitef(float %__x) #0 {
  %1 = fcmp ord float %__x, 0.000000e+00
  br i1 %1, label %2, label %5

; <label>:2                                       ; preds = %0
  %3 = tail call float @llvm.fabs.f32(float %__x) #8
  %4 = fcmp une float %3, 0x7FF0000000000000
  br label %5

; <label>:5                                       ; preds = %2, %0
  %6 = phi i1 [ false, %0 ], [ %4, %2 ]
  %7 = zext i1 %6 to i32
  ret i32 %7
}

; Function Attrs: nounwind readnone
declare float @llvm.fabs.f32(float) #1

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isfinited(double %__x) #0 {
  %1 = fcmp ord double %__x, 0.000000e+00
  br i1 %1, label %2, label %5

; <label>:2                                       ; preds = %0
  %3 = tail call double @llvm.fabs.f64(double %__x) #8
  %4 = fcmp une double %3, 0x7FF0000000000000
  br label %5

; <label>:5                                       ; preds = %2, %0
  %6 = phi i1 [ false, %0 ], [ %4, %2 ]
  %7 = zext i1 %6 to i32
  ret i32 %7
}

; Function Attrs: nounwind readnone
declare double @llvm.fabs.f64(double) #1

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isfinitel(x86_fp80 %__x) #0 {
  %1 = fcmp ord x86_fp80 %__x, 0xK00000000000000000000
  br i1 %1, label %2, label %5

; <label>:2                                       ; preds = %0
  %3 = tail call x86_fp80 @llvm.fabs.f80(x86_fp80 %__x) #8
  %4 = fcmp une x86_fp80 %3, 0xK7FFF8000000000000000
  br label %5

; <label>:5                                       ; preds = %2, %0
  %6 = phi i1 [ false, %0 ], [ %4, %2 ]
  %7 = zext i1 %6 to i32
  ret i32 %7
}

; Function Attrs: nounwind readnone
declare x86_fp80 @llvm.fabs.f80(x86_fp80) #1

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isinff(float %__x) #0 {
  %1 = tail call float @llvm.fabs.f32(float %__x) #8
  %2 = fcmp oeq float %1, 0x7FF0000000000000
  %3 = zext i1 %2 to i32
  ret i32 %3
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isinfd(double %__x) #0 {
  %1 = tail call double @llvm.fabs.f64(double %__x) #8
  %2 = fcmp oeq double %1, 0x7FF0000000000000
  %3 = zext i1 %2 to i32
  ret i32 %3
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isinfl(x86_fp80 %__x) #0 {
  %1 = tail call x86_fp80 @llvm.fabs.f80(x86_fp80 %__x) #8
  %2 = fcmp oeq x86_fp80 %1, 0xK7FFF8000000000000000
  %3 = zext i1 %2 to i32
  ret i32 %3
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isnanf(float %__x) #0 {
  %1 = fcmp uno float %__x, 0.000000e+00
  %2 = zext i1 %1 to i32
  ret i32 %2
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isnand(double %__x) #0 {
  %1 = fcmp uno double %__x, 0.000000e+00
  %2 = zext i1 %1 to i32
  ret i32 %2
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isnanl(x86_fp80 %__x) #0 {
  %1 = fcmp uno x86_fp80 %__x, 0xK00000000000000000000
  %2 = zext i1 %1 to i32
  ret i32 %2
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_signbitf(float %__x) #0 {
  %1 = bitcast float %__x to i32
  %2 = lshr i32 %1, 31
  ret i32 %2
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_signbitd(double %__x) #0 {
  %1 = bitcast double %__x to i64
  %2 = lshr i64 %1, 63
  %3 = trunc i64 %2 to i32
  ret i32 %3
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_signbitl(x86_fp80 %__x) #0 {
  %1 = bitcast x86_fp80 %__x to i80
  %2 = lshr i80 %1, 79
  %3 = trunc i80 %2 to i32
  ret i32 %3
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isnormalf(float %__x) #0 {
  %1 = fcmp ord float %__x, 0.000000e+00
  %2 = tail call float @llvm.fabs.f32(float %__x) #1
  %3 = fcmp une float %2, 0x7FF0000000000000
  %or.cond = and i1 %1, %3
  br i1 %or.cond, label %4, label %.critedge

; <label>:4                                       ; preds = %0
  %5 = fcmp oge float %2, 0x3810000000000000
  br label %.critedge

.critedge:                                        ; preds = %0, %4
  %6 = phi i1 [ %5, %4 ], [ false, %0 ]
  %7 = zext i1 %6 to i32
  ret i32 %7
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isnormald(double %__x) #0 {
  %1 = fcmp ord double %__x, 0.000000e+00
  %2 = tail call double @llvm.fabs.f64(double %__x) #1
  %3 = fcmp une double %2, 0x7FF0000000000000
  %or.cond = and i1 %1, %3
  br i1 %or.cond, label %4, label %.critedge

; <label>:4                                       ; preds = %0
  %5 = fcmp oge double %2, 0x10000000000000
  br label %.critedge

.critedge:                                        ; preds = %0, %4
  %6 = phi i1 [ %5, %4 ], [ false, %0 ]
  %7 = zext i1 %6 to i32
  ret i32 %7
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isnormall(x86_fp80 %__x) #0 {
  %1 = fcmp ord x86_fp80 %__x, 0xK00000000000000000000
  %2 = tail call x86_fp80 @llvm.fabs.f80(x86_fp80 %__x) #1
  %3 = fcmp une x86_fp80 %2, 0xK7FFF8000000000000000
  %or.cond = and i1 %1, %3
  br i1 %or.cond, label %4, label %.critedge

; <label>:4                                       ; preds = %0
  %5 = fcmp oge x86_fp80 %2, 0xK00018000000000000000
  br label %.critedge

.critedge:                                        ; preds = %0, %4
  %6 = phi i1 [ %5, %4 ], [ false, %0 ]
  %7 = zext i1 %6 to i32
  ret i32 %7
}

; Function Attrs: alwaysinline nounwind optsize ssp uwtable
define void @__sincosf(float %__x, float* nocapture %__sinp, float* nocapture %__cosp) #2 {
  %1 = tail call <2 x float> @__sincosf_stret(float %__x) #9
  %2 = extractelement <2 x float> %1, i32 0
  store float %2, float* %__sinp, align 4, !tbaa !2
  %3 = extractelement <2 x float> %1, i32 1
  store float %3, float* %__cosp, align 4, !tbaa !2
  ret void
}

; Function Attrs: optsize
declare <2 x float> @__sincosf_stret(float) #3

; Function Attrs: alwaysinline nounwind optsize ssp uwtable
define void @__sincos(double %__x, double* nocapture %__sinp, double* nocapture %__cosp) #2 {
  %1 = tail call { double, double } @__sincos_stret(double %__x) #9
  %2 = extractvalue { double, double } %1, 0
  %3 = extractvalue { double, double } %1, 1
  store double %2, double* %__sinp, align 8, !tbaa !6
  store double %3, double* %__cosp, align 8, !tbaa !6
  ret void
}

; Function Attrs: optsize
declare { double, double } @__sincos_stret(double) #3

; Function Attrs: alwaysinline nounwind optsize ssp uwtable
define void @__sincospif(float %__x, float* nocapture %__sinp, float* nocapture %__cosp) #2 {
  %1 = tail call <2 x float> @__sincospif_stret(float %__x) #9
  %2 = extractelement <2 x float> %1, i32 0
  store float %2, float* %__sinp, align 4, !tbaa !2
  %3 = extractelement <2 x float> %1, i32 1
  store float %3, float* %__cosp, align 4, !tbaa !2
  ret void
}

; Function Attrs: optsize
declare <2 x float> @__sincospif_stret(float) #3

; Function Attrs: alwaysinline nounwind optsize ssp uwtable
define void @__sincospi(double %__x, double* nocapture %__sinp, double* nocapture %__cosp) #2 {
  %1 = tail call { double, double } @__sincospi_stret(double %__x) #9
  %2 = extractvalue { double, double } %1, 0
  %3 = extractvalue { double, double } %1, 1
  store double %2, double* %__sinp, align 8, !tbaa !6
  store double %3, double* %__cosp, align 8, !tbaa !6
  ret void
}

; Function Attrs: optsize
declare { double, double } @__sincospi_stret(double) #3

; Function Attrs: nounwind optsize ssp uwtable
define void @do_fnbf(%struct.__sFILE* nocapture readnone %log, %struct.t_commrec* nocapture readnone %cr, %struct.t_forcerec* %fr, [3 x float]* %x, [3 x float]* %f, %struct.t_mdatoms* %mdatoms, float* %egnb, float* %egcoul, float* nocapture readnone %box_size, %struct.t_nrnb* nocapture %nrnb, float %lambda, float* %dvdlambda, i32 %bLR, i32 %eNL) #4 {
  %1 = alloca float, align 4
  store float %lambda, float* %1, align 4, !tbaa !2
  %2 = icmp sgt i32 %eNL, -1
  %3 = add nsw i32 %eNL, 1
  %i0.0 = select i1 %2, i32 %eNL, i32 0
  %i1.0 = select i1 %2, i32 %3, i32 13
  %4 = icmp ne i32 %bLR, 0
  %5 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 54
  %6 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 58
  %.pn.in = select i1 %4, [3 x float]** %5, [3 x float]** %6
  %.pn = load [3 x float]** %.pn.in, align 8
  %fshift.0 = getelementptr inbounds [3 x float]* %.pn, i64 0, i64 0
  %7 = icmp slt i32 %i0.0, %i1.0
  br i1 %7, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %0
  %8 = getelementptr inbounds %struct.t_nrnb* %nrnb, i64 0, i32 0, i64 78
  %9 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 40, i64 0
  %10 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 48
  %11 = getelementptr inbounds [3 x float]* %x, i64 0, i64 0
  %12 = getelementptr inbounds [3 x float]* %f, i64 0, i64 0
  %13 = getelementptr inbounds %struct.t_mdatoms* %mdatoms, i64 0, i32 11
  %14 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 63
  %15 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 65
  %16 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 17
  %17 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 19
  %18 = getelementptr inbounds %struct.t_mdatoms* %mdatoms, i64 0, i32 12
  %19 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 28
  %20 = getelementptr inbounds %struct.t_mdatoms* %mdatoms, i64 0, i32 6
  %21 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 6
  %22 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 9
  %23 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 10
  %24 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 18
  %25 = getelementptr inbounds %struct.t_mdatoms* %mdatoms, i64 0, i32 7
  %26 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 20
  %27 = sext i32 %i0.0 to i64
  %28 = add i32 %i1.0, -1
  br label %29

; <label>:29                                      ; preds = %1354, %.lr.ph
  %indvars.iv = phi i64 [ %27, %.lr.ph ], [ %indvars.iv.next, %1354 ]
  br i1 %4, label %30, label %32

; <label>:30                                      ; preds = %29
  %31 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 50, i64 %indvars.iv
  br label %34

; <label>:32                                      ; preds = %29
  %33 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 49, i64 %indvars.iv
  br label %34

; <label>:34                                      ; preds = %32, %30
  %nlist.0 = phi %struct.t_nblist* [ %31, %30 ], [ %33, %32 ]
  %35 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 1
  %36 = load i32* %35, align 4, !tbaa !8
  %37 = icmp sgt i32 %36, 0
  br i1 %37, label %38, label %1354

; <label>:38                                      ; preds = %34
  %39 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 0
  %40 = load i32* %39, align 4, !tbaa !12
  switch i32 %40, label %1269 [
    i32 0, label %41
    i32 1, label %56
    i32 2, label %73
    i32 3, label %88
    i32 4, label %105
    i32 5, label %121
    i32 6, label %139
    i32 7, label %156
    i32 8, label %157
    i32 9, label %173
    i32 10, label %191
    i32 11, label %208
    i32 12, label %209
    i32 13, label %223
    i32 14, label %239
    i32 15, label %253
    i32 16, label %267
    i32 17, label %283
    i32 18, label %301
    i32 19, label %317
    i32 20, label %333
    i32 21, label %349
    i32 22, label %367
    i32 23, label %383
    i32 24, label %399
    i32 25, label %416
    i32 26, label %435
    i32 27, label %452
    i32 28, label %469
    i32 29, label %486
    i32 30, label %505
    i32 31, label %522
    i32 32, label %539
    i32 33, label %553
    i32 34, label %569
    i32 35, label %583
    i32 36, label %597
    i32 37, label %613
    i32 38, label %631
    i32 39, label %647
    i32 40, label %663
    i32 41, label %679
    i32 42, label %697
    i32 43, label %713
    i32 44, label %729
    i32 45, label %746
    i32 46, label %765
    i32 47, label %782
    i32 48, label %799
    i32 49, label %816
    i32 50, label %835
    i32 51, label %852
    i32 52, label %869
    i32 53, label %884
    i32 54, label %900
    i32 55, label %901
    i32 56, label %918
    i32 57, label %933
    i32 58, label %948
    i32 59, label %965
    i32 60, label %984
    i32 61, label %1001
    i32 62, label %1018
    i32 63, label %1035
    i32 64, label %1054
    i32 65, label %1071
    i32 66, label %1088
    i32 67, label %1105
    i32 68, label %1124
    i32 69, label %1125
    i32 70, label %1144
    i32 71, label %1161
    i32 72, label %1178
    i32 73, label %1195
    i32 74, label %1214
    i32 75, label %1215
    i32 76, label %1234
    i32 77, label %1251
    i32 -1, label %1268
  ]

; <label>:41                                      ; preds = %38
  %42 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 7
  %43 = load i32** %42, align 8, !tbaa !13
  %44 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 10
  %45 = load i32** %44, align 8, !tbaa !14
  %46 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 11
  %47 = load i32** %46, align 8, !tbaa !15
  %48 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 9
  %49 = load i32** %48, align 8, !tbaa !16
  %50 = load [3 x float]** %10, align 8, !tbaa !17
  %51 = getelementptr inbounds [3 x float]* %50, i64 0, i64 0
  %52 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 8
  %53 = load i32** %52, align 8, !tbaa !19
  %54 = load i32** %13, align 8, !tbaa !20
  %55 = load float** %15, align 8, !tbaa !22
  call void @inl0100_(i32* %35, i32* %43, i32* %45, i32* %47, i32* %49, float* %51, float* %fshift.0, i32* %53, float* %11, float* %12, i32* %54, i32* %14, float* %55, float* %egnb) #9
  br label %1271

; <label>:56                                      ; preds = %38
  %57 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 7
  %58 = load i32** %57, align 8, !tbaa !13
  %59 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 10
  %60 = load i32** %59, align 8, !tbaa !14
  %61 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 11
  %62 = load i32** %61, align 8, !tbaa !15
  %63 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 9
  %64 = load i32** %63, align 8, !tbaa !16
  %65 = load [3 x float]** %10, align 8, !tbaa !17
  %66 = getelementptr inbounds [3 x float]* %65, i64 0, i64 0
  %67 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 8
  %68 = load i32** %67, align 8, !tbaa !19
  %69 = load i32** %13, align 8, !tbaa !20
  %70 = load float** %15, align 8, !tbaa !22
  %71 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 12
  %72 = load i32** %71, align 8, !tbaa !23
  call void @inl0110_(i32* %35, i32* %58, i32* %60, i32* %62, i32* %64, float* %66, float* %fshift.0, i32* %68, float* %11, float* %12, i32* %69, i32* %14, float* %70, float* %egnb, i32* %72) #9
  br label %1271

; <label>:73                                      ; preds = %38
  %74 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 7
  %75 = load i32** %74, align 8, !tbaa !13
  %76 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 10
  %77 = load i32** %76, align 8, !tbaa !14
  %78 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 11
  %79 = load i32** %78, align 8, !tbaa !15
  %80 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 9
  %81 = load i32** %80, align 8, !tbaa !16
  %82 = load [3 x float]** %10, align 8, !tbaa !17
  %83 = getelementptr inbounds [3 x float]* %82, i64 0, i64 0
  %84 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 8
  %85 = load i32** %84, align 8, !tbaa !19
  %86 = load i32** %13, align 8, !tbaa !20
  %87 = load float** %15, align 8, !tbaa !22
  call void @inl0200_(i32* %35, i32* %75, i32* %77, i32* %79, i32* %81, float* %83, float* %fshift.0, i32* %85, float* %11, float* %12, i32* %86, i32* %14, float* %87, float* %egnb) #9
  br label %1271

; <label>:88                                      ; preds = %38
  %89 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 7
  %90 = load i32** %89, align 8, !tbaa !13
  %91 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 10
  %92 = load i32** %91, align 8, !tbaa !14
  %93 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 11
  %94 = load i32** %93, align 8, !tbaa !15
  %95 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 9
  %96 = load i32** %95, align 8, !tbaa !16
  %97 = load [3 x float]** %10, align 8, !tbaa !17
  %98 = getelementptr inbounds [3 x float]* %97, i64 0, i64 0
  %99 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 8
  %100 = load i32** %99, align 8, !tbaa !19
  %101 = load i32** %13, align 8, !tbaa !20
  %102 = load float** %15, align 8, !tbaa !22
  %103 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 12
  %104 = load i32** %103, align 8, !tbaa !23
  call void @inl0210_(i32* %35, i32* %90, i32* %92, i32* %94, i32* %96, float* %98, float* %fshift.0, i32* %100, float* %11, float* %12, i32* %101, i32* %14, float* %102, float* %egnb, i32* %104) #9
  br label %1271

; <label>:105                                     ; preds = %38
  %106 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 7
  %107 = load i32** %106, align 8, !tbaa !13
  %108 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 10
  %109 = load i32** %108, align 8, !tbaa !14
  %110 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 11
  %111 = load i32** %110, align 8, !tbaa !15
  %112 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 9
  %113 = load i32** %112, align 8, !tbaa !16
  %114 = load [3 x float]** %10, align 8, !tbaa !17
  %115 = getelementptr inbounds [3 x float]* %114, i64 0, i64 0
  %116 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 8
  %117 = load i32** %116, align 8, !tbaa !19
  %118 = load i32** %13, align 8, !tbaa !20
  %119 = load float** %15, align 8, !tbaa !22
  %120 = load float** %17, align 8, !tbaa !24
  call void @inl0300_(i32* %35, i32* %107, i32* %109, i32* %111, i32* %113, float* %115, float* %fshift.0, i32* %117, float* %11, float* %12, i32* %118, i32* %14, float* %119, float* %egnb, float* %16, float* %120) #9
  br label %1271

; <label>:121                                     ; preds = %38
  %122 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 7
  %123 = load i32** %122, align 8, !tbaa !13
  %124 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 10
  %125 = load i32** %124, align 8, !tbaa !14
  %126 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 11
  %127 = load i32** %126, align 8, !tbaa !15
  %128 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 9
  %129 = load i32** %128, align 8, !tbaa !16
  %130 = load [3 x float]** %10, align 8, !tbaa !17
  %131 = getelementptr inbounds [3 x float]* %130, i64 0, i64 0
  %132 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 8
  %133 = load i32** %132, align 8, !tbaa !19
  %134 = load i32** %13, align 8, !tbaa !20
  %135 = load float** %15, align 8, !tbaa !22
  %136 = load float** %17, align 8, !tbaa !24
  %137 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 12
  %138 = load i32** %137, align 8, !tbaa !23
  call void @inl0310_(i32* %35, i32* %123, i32* %125, i32* %127, i32* %129, float* %131, float* %fshift.0, i32* %133, float* %11, float* %12, i32* %134, i32* %14, float* %135, float* %egnb, float* %16, float* %136, i32* %138) #9
  br label %1271

; <label>:139                                     ; preds = %38
  %140 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 7
  %141 = load i32** %140, align 8, !tbaa !13
  %142 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 10
  %143 = load i32** %142, align 8, !tbaa !14
  %144 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 11
  %145 = load i32** %144, align 8, !tbaa !15
  %146 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 9
  %147 = load i32** %146, align 8, !tbaa !16
  %148 = load [3 x float]** %10, align 8, !tbaa !17
  %149 = getelementptr inbounds [3 x float]* %148, i64 0, i64 0
  %150 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 8
  %151 = load i32** %150, align 8, !tbaa !19
  %152 = load i32** %13, align 8, !tbaa !20
  %153 = load float** %15, align 8, !tbaa !22
  %154 = load float** %17, align 8, !tbaa !24
  %155 = load i32** %18, align 8, !tbaa !25
  call void @inl0301_(i32* %35, i32* %141, i32* %143, i32* %145, i32* %147, float* %149, float* %fshift.0, i32* %151, float* %11, float* %12, i32* %152, i32* %14, float* %153, float* %egnb, float* %16, float* %154, float* %1, float* %dvdlambda, i32* %155) #9
  br label %1271

; <label>:156                                     ; preds = %38
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([50 x i8]* @.str, i64 0, i64 0)) #9
  br label %1271

; <label>:157                                     ; preds = %38
  %158 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 7
  %159 = load i32** %158, align 8, !tbaa !13
  %160 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 10
  %161 = load i32** %160, align 8, !tbaa !14
  %162 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 11
  %163 = load i32** %162, align 8, !tbaa !15
  %164 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 9
  %165 = load i32** %164, align 8, !tbaa !16
  %166 = load [3 x float]** %10, align 8, !tbaa !17
  %167 = getelementptr inbounds [3 x float]* %166, i64 0, i64 0
  %168 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 8
  %169 = load i32** %168, align 8, !tbaa !19
  %170 = load i32** %13, align 8, !tbaa !20
  %171 = load float** %15, align 8, !tbaa !22
  %172 = load float** %17, align 8, !tbaa !24
  call void @inl0400_(i32* %35, i32* %159, i32* %161, i32* %163, i32* %165, float* %167, float* %fshift.0, i32* %169, float* %11, float* %12, i32* %170, i32* %14, float* %171, float* %egnb, float* %16, float* %172, float* %19) #9
  br label %1271

; <label>:173                                     ; preds = %38
  %174 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 7
  %175 = load i32** %174, align 8, !tbaa !13
  %176 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 10
  %177 = load i32** %176, align 8, !tbaa !14
  %178 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 11
  %179 = load i32** %178, align 8, !tbaa !15
  %180 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 9
  %181 = load i32** %180, align 8, !tbaa !16
  %182 = load [3 x float]** %10, align 8, !tbaa !17
  %183 = getelementptr inbounds [3 x float]* %182, i64 0, i64 0
  %184 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 8
  %185 = load i32** %184, align 8, !tbaa !19
  %186 = load i32** %13, align 8, !tbaa !20
  %187 = load float** %15, align 8, !tbaa !22
  %188 = load float** %17, align 8, !tbaa !24
  %189 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 12
  %190 = load i32** %189, align 8, !tbaa !23
  call void @inl0410_(i32* %35, i32* %175, i32* %177, i32* %179, i32* %181, float* %183, float* %fshift.0, i32* %185, float* %11, float* %12, i32* %186, i32* %14, float* %187, float* %egnb, float* %16, float* %188, float* %19, i32* %190) #9
  br label %1271

; <label>:191                                     ; preds = %38
  %192 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 7
  %193 = load i32** %192, align 8, !tbaa !13
  %194 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 10
  %195 = load i32** %194, align 8, !tbaa !14
  %196 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 11
  %197 = load i32** %196, align 8, !tbaa !15
  %198 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 9
  %199 = load i32** %198, align 8, !tbaa !16
  %200 = load [3 x float]** %10, align 8, !tbaa !17
  %201 = getelementptr inbounds [3 x float]* %200, i64 0, i64 0
  %202 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 8
  %203 = load i32** %202, align 8, !tbaa !19
  %204 = load i32** %13, align 8, !tbaa !20
  %205 = load float** %15, align 8, !tbaa !22
  %206 = load float** %17, align 8, !tbaa !24
  %207 = load i32** %18, align 8, !tbaa !25
  call void @inl0401_(i32* %35, i32* %193, i32* %195, i32* %197, i32* %199, float* %201, float* %fshift.0, i32* %203, float* %11, float* %12, i32* %204, i32* %14, float* %205, float* %egnb, float* %16, float* %206, float* %19, float* %1, float* %dvdlambda, i32* %207) #9
  br label %1271

; <label>:208                                     ; preds = %38
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([50 x i8]* @.str, i64 0, i64 0)) #9
  br label %1271

; <label>:209                                     ; preds = %38
  %210 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 7
  %211 = load i32** %210, align 8, !tbaa !13
  %212 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 10
  %213 = load i32** %212, align 8, !tbaa !14
  %214 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 11
  %215 = load i32** %214, align 8, !tbaa !15
  %216 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 9
  %217 = load i32** %216, align 8, !tbaa !16
  %218 = load [3 x float]** %10, align 8, !tbaa !17
  %219 = getelementptr inbounds [3 x float]* %218, i64 0, i64 0
  %220 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 8
  %221 = load i32** %220, align 8, !tbaa !19
  %222 = load float** %20, align 8, !tbaa !26
  call void @inl1000_(i32* %35, i32* %211, i32* %213, i32* %215, i32* %217, float* %219, float* %fshift.0, i32* %221, float* %11, float* %12, float* %222, float* %21, float* %egcoul) #9
  br label %1271

; <label>:223                                     ; preds = %38
  %224 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 7
  %225 = load i32** %224, align 8, !tbaa !13
  %226 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 10
  %227 = load i32** %226, align 8, !tbaa !14
  %228 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 11
  %229 = load i32** %228, align 8, !tbaa !15
  %230 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 9
  %231 = load i32** %230, align 8, !tbaa !16
  %232 = load [3 x float]** %10, align 8, !tbaa !17
  %233 = getelementptr inbounds [3 x float]* %232, i64 0, i64 0
  %234 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 8
  %235 = load i32** %234, align 8, !tbaa !19
  %236 = load float** %20, align 8, !tbaa !26
  %237 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 12
  %238 = load i32** %237, align 8, !tbaa !23
  call void @inl1010_(i32* %35, i32* %225, i32* %227, i32* %229, i32* %231, float* %233, float* %fshift.0, i32* %235, float* %11, float* %12, float* %236, float* %21, float* %egcoul, i32* %238) #9
  br label %1271

; <label>:239                                     ; preds = %38
  %240 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 7
  %241 = load i32** %240, align 8, !tbaa !13
  %242 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 10
  %243 = load i32** %242, align 8, !tbaa !14
  %244 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 11
  %245 = load i32** %244, align 8, !tbaa !15
  %246 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 9
  %247 = load i32** %246, align 8, !tbaa !16
  %248 = load [3 x float]** %10, align 8, !tbaa !17
  %249 = getelementptr inbounds [3 x float]* %248, i64 0, i64 0
  %250 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 8
  %251 = load i32** %250, align 8, !tbaa !19
  %252 = load float** %20, align 8, !tbaa !26
  call void @inl1020_(i32* %35, i32* %241, i32* %243, i32* %245, i32* %247, float* %249, float* %fshift.0, i32* %251, float* %11, float* %12, float* %252, float* %21, float* %egcoul) #9
  br label %1271

; <label>:253                                     ; preds = %38
  %254 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 7
  %255 = load i32** %254, align 8, !tbaa !13
  %256 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 10
  %257 = load i32** %256, align 8, !tbaa !14
  %258 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 11
  %259 = load i32** %258, align 8, !tbaa !15
  %260 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 9
  %261 = load i32** %260, align 8, !tbaa !16
  %262 = load [3 x float]** %10, align 8, !tbaa !17
  %263 = getelementptr inbounds [3 x float]* %262, i64 0, i64 0
  %264 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 8
  %265 = load i32** %264, align 8, !tbaa !19
  %266 = load float** %20, align 8, !tbaa !26
  call void @inl1030_(i32* %35, i32* %255, i32* %257, i32* %259, i32* %261, float* %263, float* %fshift.0, i32* %265, float* %11, float* %12, float* %266, float* %21, float* %egcoul) #9
  br label %1271

; <label>:267                                     ; preds = %38
  %268 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 7
  %269 = load i32** %268, align 8, !tbaa !13
  %270 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 10
  %271 = load i32** %270, align 8, !tbaa !14
  %272 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 11
  %273 = load i32** %272, align 8, !tbaa !15
  %274 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 9
  %275 = load i32** %274, align 8, !tbaa !16
  %276 = load [3 x float]** %10, align 8, !tbaa !17
  %277 = getelementptr inbounds [3 x float]* %276, i64 0, i64 0
  %278 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 8
  %279 = load i32** %278, align 8, !tbaa !19
  %280 = load float** %20, align 8, !tbaa !26
  %281 = load i32** %13, align 8, !tbaa !20
  %282 = load float** %15, align 8, !tbaa !22
  call void @inl1100_(i32* %35, i32* %269, i32* %271, i32* %273, i32* %275, float* %277, float* %fshift.0, i32* %279, float* %11, float* %12, float* %280, float* %21, float* %egcoul, i32* %281, i32* %14, float* %282, float* %egnb) #9
  br label %1271

; <label>:283                                     ; preds = %38
  %284 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 7
  %285 = load i32** %284, align 8, !tbaa !13
  %286 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 10
  %287 = load i32** %286, align 8, !tbaa !14
  %288 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 11
  %289 = load i32** %288, align 8, !tbaa !15
  %290 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 9
  %291 = load i32** %290, align 8, !tbaa !16
  %292 = load [3 x float]** %10, align 8, !tbaa !17
  %293 = getelementptr inbounds [3 x float]* %292, i64 0, i64 0
  %294 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 8
  %295 = load i32** %294, align 8, !tbaa !19
  %296 = load float** %20, align 8, !tbaa !26
  %297 = load i32** %13, align 8, !tbaa !20
  %298 = load float** %15, align 8, !tbaa !22
  %299 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 12
  %300 = load i32** %299, align 8, !tbaa !23
  call void @inl1110_(i32* %35, i32* %285, i32* %287, i32* %289, i32* %291, float* %293, float* %fshift.0, i32* %295, float* %11, float* %12, float* %296, float* %21, float* %egcoul, i32* %297, i32* %14, float* %298, float* %egnb, i32* %300) #9
  br label %1271

; <label>:301                                     ; preds = %38
  %302 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 7
  %303 = load i32** %302, align 8, !tbaa !13
  %304 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 10
  %305 = load i32** %304, align 8, !tbaa !14
  %306 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 11
  %307 = load i32** %306, align 8, !tbaa !15
  %308 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 9
  %309 = load i32** %308, align 8, !tbaa !16
  %310 = load [3 x float]** %10, align 8, !tbaa !17
  %311 = getelementptr inbounds [3 x float]* %310, i64 0, i64 0
  %312 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 8
  %313 = load i32** %312, align 8, !tbaa !19
  %314 = load float** %20, align 8, !tbaa !26
  %315 = load i32** %13, align 8, !tbaa !20
  %316 = load float** %15, align 8, !tbaa !22
  call void @inl1120_(i32* %35, i32* %303, i32* %305, i32* %307, i32* %309, float* %311, float* %fshift.0, i32* %313, float* %11, float* %12, float* %314, float* %21, float* %egcoul, i32* %315, i32* %14, float* %316, float* %egnb) #9
  br label %1271

; <label>:317                                     ; preds = %38
  %318 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 7
  %319 = load i32** %318, align 8, !tbaa !13
  %320 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 10
  %321 = load i32** %320, align 8, !tbaa !14
  %322 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 11
  %323 = load i32** %322, align 8, !tbaa !15
  %324 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 9
  %325 = load i32** %324, align 8, !tbaa !16
  %326 = load [3 x float]** %10, align 8, !tbaa !17
  %327 = getelementptr inbounds [3 x float]* %326, i64 0, i64 0
  %328 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 8
  %329 = load i32** %328, align 8, !tbaa !19
  %330 = load float** %20, align 8, !tbaa !26
  %331 = load i32** %13, align 8, !tbaa !20
  %332 = load float** %15, align 8, !tbaa !22
  call void @inl1130_(i32* %35, i32* %319, i32* %321, i32* %323, i32* %325, float* %327, float* %fshift.0, i32* %329, float* %11, float* %12, float* %330, float* %21, float* %egcoul, i32* %331, i32* %14, float* %332, float* %egnb) #9
  br label %1271

; <label>:333                                     ; preds = %38
  %334 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 7
  %335 = load i32** %334, align 8, !tbaa !13
  %336 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 10
  %337 = load i32** %336, align 8, !tbaa !14
  %338 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 11
  %339 = load i32** %338, align 8, !tbaa !15
  %340 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 9
  %341 = load i32** %340, align 8, !tbaa !16
  %342 = load [3 x float]** %10, align 8, !tbaa !17
  %343 = getelementptr inbounds [3 x float]* %342, i64 0, i64 0
  %344 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 8
  %345 = load i32** %344, align 8, !tbaa !19
  %346 = load float** %20, align 8, !tbaa !26
  %347 = load i32** %13, align 8, !tbaa !20
  %348 = load float** %15, align 8, !tbaa !22
  call void @inl1200_(i32* %35, i32* %335, i32* %337, i32* %339, i32* %341, float* %343, float* %fshift.0, i32* %345, float* %11, float* %12, float* %346, float* %21, float* %egcoul, i32* %347, i32* %14, float* %348, float* %egnb) #9
  br label %1271

; <label>:349                                     ; preds = %38
  %350 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 7
  %351 = load i32** %350, align 8, !tbaa !13
  %352 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 10
  %353 = load i32** %352, align 8, !tbaa !14
  %354 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 11
  %355 = load i32** %354, align 8, !tbaa !15
  %356 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 9
  %357 = load i32** %356, align 8, !tbaa !16
  %358 = load [3 x float]** %10, align 8, !tbaa !17
  %359 = getelementptr inbounds [3 x float]* %358, i64 0, i64 0
  %360 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 8
  %361 = load i32** %360, align 8, !tbaa !19
  %362 = load float** %20, align 8, !tbaa !26
  %363 = load i32** %13, align 8, !tbaa !20
  %364 = load float** %15, align 8, !tbaa !22
  %365 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 12
  %366 = load i32** %365, align 8, !tbaa !23
  call void @inl1210_(i32* %35, i32* %351, i32* %353, i32* %355, i32* %357, float* %359, float* %fshift.0, i32* %361, float* %11, float* %12, float* %362, float* %21, float* %egcoul, i32* %363, i32* %14, float* %364, float* %egnb, i32* %366) #9
  br label %1271

; <label>:367                                     ; preds = %38
  %368 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 7
  %369 = load i32** %368, align 8, !tbaa !13
  %370 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 10
  %371 = load i32** %370, align 8, !tbaa !14
  %372 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 11
  %373 = load i32** %372, align 8, !tbaa !15
  %374 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 9
  %375 = load i32** %374, align 8, !tbaa !16
  %376 = load [3 x float]** %10, align 8, !tbaa !17
  %377 = getelementptr inbounds [3 x float]* %376, i64 0, i64 0
  %378 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 8
  %379 = load i32** %378, align 8, !tbaa !19
  %380 = load float** %20, align 8, !tbaa !26
  %381 = load i32** %13, align 8, !tbaa !20
  %382 = load float** %15, align 8, !tbaa !22
  call void @inl1220_(i32* %35, i32* %369, i32* %371, i32* %373, i32* %375, float* %377, float* %fshift.0, i32* %379, float* %11, float* %12, float* %380, float* %21, float* %egcoul, i32* %381, i32* %14, float* %382, float* %egnb) #9
  br label %1271

; <label>:383                                     ; preds = %38
  %384 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 7
  %385 = load i32** %384, align 8, !tbaa !13
  %386 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 10
  %387 = load i32** %386, align 8, !tbaa !14
  %388 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 11
  %389 = load i32** %388, align 8, !tbaa !15
  %390 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 9
  %391 = load i32** %390, align 8, !tbaa !16
  %392 = load [3 x float]** %10, align 8, !tbaa !17
  %393 = getelementptr inbounds [3 x float]* %392, i64 0, i64 0
  %394 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 8
  %395 = load i32** %394, align 8, !tbaa !19
  %396 = load float** %20, align 8, !tbaa !26
  %397 = load i32** %13, align 8, !tbaa !20
  %398 = load float** %15, align 8, !tbaa !22
  call void @inl1230_(i32* %35, i32* %385, i32* %387, i32* %389, i32* %391, float* %393, float* %fshift.0, i32* %395, float* %11, float* %12, float* %396, float* %21, float* %egcoul, i32* %397, i32* %14, float* %398, float* %egnb) #9
  br label %1271

; <label>:399                                     ; preds = %38
  %400 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 7
  %401 = load i32** %400, align 8, !tbaa !13
  %402 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 10
  %403 = load i32** %402, align 8, !tbaa !14
  %404 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 11
  %405 = load i32** %404, align 8, !tbaa !15
  %406 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 9
  %407 = load i32** %406, align 8, !tbaa !16
  %408 = load [3 x float]** %10, align 8, !tbaa !17
  %409 = getelementptr inbounds [3 x float]* %408, i64 0, i64 0
  %410 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 8
  %411 = load i32** %410, align 8, !tbaa !19
  %412 = load float** %20, align 8, !tbaa !26
  %413 = load i32** %13, align 8, !tbaa !20
  %414 = load float** %15, align 8, !tbaa !22
  %415 = load float** %17, align 8, !tbaa !24
  call void @inl1300_(i32* %35, i32* %401, i32* %403, i32* %405, i32* %407, float* %409, float* %fshift.0, i32* %411, float* %11, float* %12, float* %412, float* %21, float* %egcoul, i32* %413, i32* %14, float* %414, float* %egnb, float* %16, float* %415) #9
  br label %1271

; <label>:416                                     ; preds = %38
  %417 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 7
  %418 = load i32** %417, align 8, !tbaa !13
  %419 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 10
  %420 = load i32** %419, align 8, !tbaa !14
  %421 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 11
  %422 = load i32** %421, align 8, !tbaa !15
  %423 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 9
  %424 = load i32** %423, align 8, !tbaa !16
  %425 = load [3 x float]** %10, align 8, !tbaa !17
  %426 = getelementptr inbounds [3 x float]* %425, i64 0, i64 0
  %427 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 8
  %428 = load i32** %427, align 8, !tbaa !19
  %429 = load float** %20, align 8, !tbaa !26
  %430 = load i32** %13, align 8, !tbaa !20
  %431 = load float** %15, align 8, !tbaa !22
  %432 = load float** %17, align 8, !tbaa !24
  %433 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 12
  %434 = load i32** %433, align 8, !tbaa !23
  call void @inl1310_(i32* %35, i32* %418, i32* %420, i32* %422, i32* %424, float* %426, float* %fshift.0, i32* %428, float* %11, float* %12, float* %429, float* %21, float* %egcoul, i32* %430, i32* %14, float* %431, float* %egnb, float* %16, float* %432, i32* %434) #9
  br label %1271

; <label>:435                                     ; preds = %38
  %436 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 7
  %437 = load i32** %436, align 8, !tbaa !13
  %438 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 10
  %439 = load i32** %438, align 8, !tbaa !14
  %440 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 11
  %441 = load i32** %440, align 8, !tbaa !15
  %442 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 9
  %443 = load i32** %442, align 8, !tbaa !16
  %444 = load [3 x float]** %10, align 8, !tbaa !17
  %445 = getelementptr inbounds [3 x float]* %444, i64 0, i64 0
  %446 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 8
  %447 = load i32** %446, align 8, !tbaa !19
  %448 = load float** %20, align 8, !tbaa !26
  %449 = load i32** %13, align 8, !tbaa !20
  %450 = load float** %15, align 8, !tbaa !22
  %451 = load float** %17, align 8, !tbaa !24
  call void @inl1320_(i32* %35, i32* %437, i32* %439, i32* %441, i32* %443, float* %445, float* %fshift.0, i32* %447, float* %11, float* %12, float* %448, float* %21, float* %egcoul, i32* %449, i32* %14, float* %450, float* %egnb, float* %16, float* %451) #9
  br label %1271

; <label>:452                                     ; preds = %38
  %453 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 7
  %454 = load i32** %453, align 8, !tbaa !13
  %455 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 10
  %456 = load i32** %455, align 8, !tbaa !14
  %457 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 11
  %458 = load i32** %457, align 8, !tbaa !15
  %459 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 9
  %460 = load i32** %459, align 8, !tbaa !16
  %461 = load [3 x float]** %10, align 8, !tbaa !17
  %462 = getelementptr inbounds [3 x float]* %461, i64 0, i64 0
  %463 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 8
  %464 = load i32** %463, align 8, !tbaa !19
  %465 = load float** %20, align 8, !tbaa !26
  %466 = load i32** %13, align 8, !tbaa !20
  %467 = load float** %15, align 8, !tbaa !22
  %468 = load float** %17, align 8, !tbaa !24
  call void @inl1330_(i32* %35, i32* %454, i32* %456, i32* %458, i32* %460, float* %462, float* %fshift.0, i32* %464, float* %11, float* %12, float* %465, float* %21, float* %egcoul, i32* %466, i32* %14, float* %467, float* %egnb, float* %16, float* %468) #9
  br label %1271

; <label>:469                                     ; preds = %38
  %470 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 7
  %471 = load i32** %470, align 8, !tbaa !13
  %472 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 10
  %473 = load i32** %472, align 8, !tbaa !14
  %474 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 11
  %475 = load i32** %474, align 8, !tbaa !15
  %476 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 9
  %477 = load i32** %476, align 8, !tbaa !16
  %478 = load [3 x float]** %10, align 8, !tbaa !17
  %479 = getelementptr inbounds [3 x float]* %478, i64 0, i64 0
  %480 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 8
  %481 = load i32** %480, align 8, !tbaa !19
  %482 = load float** %20, align 8, !tbaa !26
  %483 = load i32** %13, align 8, !tbaa !20
  %484 = load float** %15, align 8, !tbaa !22
  %485 = load float** %17, align 8, !tbaa !24
  call void @inl1400_(i32* %35, i32* %471, i32* %473, i32* %475, i32* %477, float* %479, float* %fshift.0, i32* %481, float* %11, float* %12, float* %482, float* %21, float* %egcoul, i32* %483, i32* %14, float* %484, float* %egnb, float* %16, float* %485, float* %19) #9
  br label %1271

; <label>:486                                     ; preds = %38
  %487 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 7
  %488 = load i32** %487, align 8, !tbaa !13
  %489 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 10
  %490 = load i32** %489, align 8, !tbaa !14
  %491 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 11
  %492 = load i32** %491, align 8, !tbaa !15
  %493 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 9
  %494 = load i32** %493, align 8, !tbaa !16
  %495 = load [3 x float]** %10, align 8, !tbaa !17
  %496 = getelementptr inbounds [3 x float]* %495, i64 0, i64 0
  %497 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 8
  %498 = load i32** %497, align 8, !tbaa !19
  %499 = load float** %20, align 8, !tbaa !26
  %500 = load i32** %13, align 8, !tbaa !20
  %501 = load float** %15, align 8, !tbaa !22
  %502 = load float** %17, align 8, !tbaa !24
  %503 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 12
  %504 = load i32** %503, align 8, !tbaa !23
  call void @inl1410_(i32* %35, i32* %488, i32* %490, i32* %492, i32* %494, float* %496, float* %fshift.0, i32* %498, float* %11, float* %12, float* %499, float* %21, float* %egcoul, i32* %500, i32* %14, float* %501, float* %egnb, float* %16, float* %502, float* %19, i32* %504) #9
  br label %1271

; <label>:505                                     ; preds = %38
  %506 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 7
  %507 = load i32** %506, align 8, !tbaa !13
  %508 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 10
  %509 = load i32** %508, align 8, !tbaa !14
  %510 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 11
  %511 = load i32** %510, align 8, !tbaa !15
  %512 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 9
  %513 = load i32** %512, align 8, !tbaa !16
  %514 = load [3 x float]** %10, align 8, !tbaa !17
  %515 = getelementptr inbounds [3 x float]* %514, i64 0, i64 0
  %516 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 8
  %517 = load i32** %516, align 8, !tbaa !19
  %518 = load float** %20, align 8, !tbaa !26
  %519 = load i32** %13, align 8, !tbaa !20
  %520 = load float** %15, align 8, !tbaa !22
  %521 = load float** %17, align 8, !tbaa !24
  call void @inl1420_(i32* %35, i32* %507, i32* %509, i32* %511, i32* %513, float* %515, float* %fshift.0, i32* %517, float* %11, float* %12, float* %518, float* %21, float* %egcoul, i32* %519, i32* %14, float* %520, float* %egnb, float* %16, float* %521, float* %19) #9
  br label %1271

; <label>:522                                     ; preds = %38
  %523 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 7
  %524 = load i32** %523, align 8, !tbaa !13
  %525 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 10
  %526 = load i32** %525, align 8, !tbaa !14
  %527 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 11
  %528 = load i32** %527, align 8, !tbaa !15
  %529 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 9
  %530 = load i32** %529, align 8, !tbaa !16
  %531 = load [3 x float]** %10, align 8, !tbaa !17
  %532 = getelementptr inbounds [3 x float]* %531, i64 0, i64 0
  %533 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 8
  %534 = load i32** %533, align 8, !tbaa !19
  %535 = load float** %20, align 8, !tbaa !26
  %536 = load i32** %13, align 8, !tbaa !20
  %537 = load float** %15, align 8, !tbaa !22
  %538 = load float** %17, align 8, !tbaa !24
  call void @inl1430_(i32* %35, i32* %524, i32* %526, i32* %528, i32* %530, float* %532, float* %fshift.0, i32* %534, float* %11, float* %12, float* %535, float* %21, float* %egcoul, i32* %536, i32* %14, float* %537, float* %egnb, float* %16, float* %538, float* %19) #9
  br label %1271

; <label>:539                                     ; preds = %38
  %540 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 7
  %541 = load i32** %540, align 8, !tbaa !13
  %542 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 10
  %543 = load i32** %542, align 8, !tbaa !14
  %544 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 11
  %545 = load i32** %544, align 8, !tbaa !15
  %546 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 9
  %547 = load i32** %546, align 8, !tbaa !16
  %548 = load [3 x float]** %10, align 8, !tbaa !17
  %549 = getelementptr inbounds [3 x float]* %548, i64 0, i64 0
  %550 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 8
  %551 = load i32** %550, align 8, !tbaa !19
  %552 = load float** %20, align 8, !tbaa !26
  call void @inl2000_(i32* %35, i32* %541, i32* %543, i32* %545, i32* %547, float* %549, float* %fshift.0, i32* %551, float* %11, float* %12, float* %552, float* %21, float* %egcoul, float* %22, float* %23) #9
  br label %1271

; <label>:553                                     ; preds = %38
  %554 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 7
  %555 = load i32** %554, align 8, !tbaa !13
  %556 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 10
  %557 = load i32** %556, align 8, !tbaa !14
  %558 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 11
  %559 = load i32** %558, align 8, !tbaa !15
  %560 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 9
  %561 = load i32** %560, align 8, !tbaa !16
  %562 = load [3 x float]** %10, align 8, !tbaa !17
  %563 = getelementptr inbounds [3 x float]* %562, i64 0, i64 0
  %564 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 8
  %565 = load i32** %564, align 8, !tbaa !19
  %566 = load float** %20, align 8, !tbaa !26
  %567 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 12
  %568 = load i32** %567, align 8, !tbaa !23
  call void @inl2010_(i32* %35, i32* %555, i32* %557, i32* %559, i32* %561, float* %563, float* %fshift.0, i32* %565, float* %11, float* %12, float* %566, float* %21, float* %egcoul, float* %22, float* %23, i32* %568) #9
  br label %1271

; <label>:569                                     ; preds = %38
  %570 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 7
  %571 = load i32** %570, align 8, !tbaa !13
  %572 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 10
  %573 = load i32** %572, align 8, !tbaa !14
  %574 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 11
  %575 = load i32** %574, align 8, !tbaa !15
  %576 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 9
  %577 = load i32** %576, align 8, !tbaa !16
  %578 = load [3 x float]** %10, align 8, !tbaa !17
  %579 = getelementptr inbounds [3 x float]* %578, i64 0, i64 0
  %580 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 8
  %581 = load i32** %580, align 8, !tbaa !19
  %582 = load float** %20, align 8, !tbaa !26
  call void @inl2020_(i32* %35, i32* %571, i32* %573, i32* %575, i32* %577, float* %579, float* %fshift.0, i32* %581, float* %11, float* %12, float* %582, float* %21, float* %egcoul, float* %22, float* %23) #9
  br label %1271

; <label>:583                                     ; preds = %38
  %584 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 7
  %585 = load i32** %584, align 8, !tbaa !13
  %586 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 10
  %587 = load i32** %586, align 8, !tbaa !14
  %588 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 11
  %589 = load i32** %588, align 8, !tbaa !15
  %590 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 9
  %591 = load i32** %590, align 8, !tbaa !16
  %592 = load [3 x float]** %10, align 8, !tbaa !17
  %593 = getelementptr inbounds [3 x float]* %592, i64 0, i64 0
  %594 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 8
  %595 = load i32** %594, align 8, !tbaa !19
  %596 = load float** %20, align 8, !tbaa !26
  call void @inl2030_(i32* %35, i32* %585, i32* %587, i32* %589, i32* %591, float* %593, float* %fshift.0, i32* %595, float* %11, float* %12, float* %596, float* %21, float* %egcoul, float* %22, float* %23) #9
  br label %1271

; <label>:597                                     ; preds = %38
  %598 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 7
  %599 = load i32** %598, align 8, !tbaa !13
  %600 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 10
  %601 = load i32** %600, align 8, !tbaa !14
  %602 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 11
  %603 = load i32** %602, align 8, !tbaa !15
  %604 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 9
  %605 = load i32** %604, align 8, !tbaa !16
  %606 = load [3 x float]** %10, align 8, !tbaa !17
  %607 = getelementptr inbounds [3 x float]* %606, i64 0, i64 0
  %608 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 8
  %609 = load i32** %608, align 8, !tbaa !19
  %610 = load float** %20, align 8, !tbaa !26
  %611 = load i32** %13, align 8, !tbaa !20
  %612 = load float** %15, align 8, !tbaa !22
  call void @inl2100_(i32* %35, i32* %599, i32* %601, i32* %603, i32* %605, float* %607, float* %fshift.0, i32* %609, float* %11, float* %12, float* %610, float* %21, float* %egcoul, float* %22, float* %23, i32* %611, i32* %14, float* %612, float* %egnb) #9
  br label %1271

; <label>:613                                     ; preds = %38
  %614 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 7
  %615 = load i32** %614, align 8, !tbaa !13
  %616 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 10
  %617 = load i32** %616, align 8, !tbaa !14
  %618 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 11
  %619 = load i32** %618, align 8, !tbaa !15
  %620 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 9
  %621 = load i32** %620, align 8, !tbaa !16
  %622 = load [3 x float]** %10, align 8, !tbaa !17
  %623 = getelementptr inbounds [3 x float]* %622, i64 0, i64 0
  %624 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 8
  %625 = load i32** %624, align 8, !tbaa !19
  %626 = load float** %20, align 8, !tbaa !26
  %627 = load i32** %13, align 8, !tbaa !20
  %628 = load float** %15, align 8, !tbaa !22
  %629 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 12
  %630 = load i32** %629, align 8, !tbaa !23
  call void @inl2110_(i32* %35, i32* %615, i32* %617, i32* %619, i32* %621, float* %623, float* %fshift.0, i32* %625, float* %11, float* %12, float* %626, float* %21, float* %egcoul, float* %22, float* %23, i32* %627, i32* %14, float* %628, float* %egnb, i32* %630) #9
  br label %1271

; <label>:631                                     ; preds = %38
  %632 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 7
  %633 = load i32** %632, align 8, !tbaa !13
  %634 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 10
  %635 = load i32** %634, align 8, !tbaa !14
  %636 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 11
  %637 = load i32** %636, align 8, !tbaa !15
  %638 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 9
  %639 = load i32** %638, align 8, !tbaa !16
  %640 = load [3 x float]** %10, align 8, !tbaa !17
  %641 = getelementptr inbounds [3 x float]* %640, i64 0, i64 0
  %642 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 8
  %643 = load i32** %642, align 8, !tbaa !19
  %644 = load float** %20, align 8, !tbaa !26
  %645 = load i32** %13, align 8, !tbaa !20
  %646 = load float** %15, align 8, !tbaa !22
  call void @inl2120_(i32* %35, i32* %633, i32* %635, i32* %637, i32* %639, float* %641, float* %fshift.0, i32* %643, float* %11, float* %12, float* %644, float* %21, float* %egcoul, float* %22, float* %23, i32* %645, i32* %14, float* %646, float* %egnb) #9
  br label %1271

; <label>:647                                     ; preds = %38
  %648 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 7
  %649 = load i32** %648, align 8, !tbaa !13
  %650 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 10
  %651 = load i32** %650, align 8, !tbaa !14
  %652 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 11
  %653 = load i32** %652, align 8, !tbaa !15
  %654 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 9
  %655 = load i32** %654, align 8, !tbaa !16
  %656 = load [3 x float]** %10, align 8, !tbaa !17
  %657 = getelementptr inbounds [3 x float]* %656, i64 0, i64 0
  %658 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 8
  %659 = load i32** %658, align 8, !tbaa !19
  %660 = load float** %20, align 8, !tbaa !26
  %661 = load i32** %13, align 8, !tbaa !20
  %662 = load float** %15, align 8, !tbaa !22
  call void @inl2130_(i32* %35, i32* %649, i32* %651, i32* %653, i32* %655, float* %657, float* %fshift.0, i32* %659, float* %11, float* %12, float* %660, float* %21, float* %egcoul, float* %22, float* %23, i32* %661, i32* %14, float* %662, float* %egnb) #9
  br label %1271

; <label>:663                                     ; preds = %38
  %664 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 7
  %665 = load i32** %664, align 8, !tbaa !13
  %666 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 10
  %667 = load i32** %666, align 8, !tbaa !14
  %668 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 11
  %669 = load i32** %668, align 8, !tbaa !15
  %670 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 9
  %671 = load i32** %670, align 8, !tbaa !16
  %672 = load [3 x float]** %10, align 8, !tbaa !17
  %673 = getelementptr inbounds [3 x float]* %672, i64 0, i64 0
  %674 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 8
  %675 = load i32** %674, align 8, !tbaa !19
  %676 = load float** %20, align 8, !tbaa !26
  %677 = load i32** %13, align 8, !tbaa !20
  %678 = load float** %15, align 8, !tbaa !22
  call void @inl2200_(i32* %35, i32* %665, i32* %667, i32* %669, i32* %671, float* %673, float* %fshift.0, i32* %675, float* %11, float* %12, float* %676, float* %21, float* %egcoul, float* %22, float* %23, i32* %677, i32* %14, float* %678, float* %egnb) #9
  br label %1271

; <label>:679                                     ; preds = %38
  %680 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 7
  %681 = load i32** %680, align 8, !tbaa !13
  %682 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 10
  %683 = load i32** %682, align 8, !tbaa !14
  %684 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 11
  %685 = load i32** %684, align 8, !tbaa !15
  %686 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 9
  %687 = load i32** %686, align 8, !tbaa !16
  %688 = load [3 x float]** %10, align 8, !tbaa !17
  %689 = getelementptr inbounds [3 x float]* %688, i64 0, i64 0
  %690 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 8
  %691 = load i32** %690, align 8, !tbaa !19
  %692 = load float** %20, align 8, !tbaa !26
  %693 = load i32** %13, align 8, !tbaa !20
  %694 = load float** %15, align 8, !tbaa !22
  %695 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 12
  %696 = load i32** %695, align 8, !tbaa !23
  call void @inl2210_(i32* %35, i32* %681, i32* %683, i32* %685, i32* %687, float* %689, float* %fshift.0, i32* %691, float* %11, float* %12, float* %692, float* %21, float* %egcoul, float* %22, float* %23, i32* %693, i32* %14, float* %694, float* %egnb, i32* %696) #9
  br label %1271

; <label>:697                                     ; preds = %38
  %698 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 7
  %699 = load i32** %698, align 8, !tbaa !13
  %700 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 10
  %701 = load i32** %700, align 8, !tbaa !14
  %702 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 11
  %703 = load i32** %702, align 8, !tbaa !15
  %704 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 9
  %705 = load i32** %704, align 8, !tbaa !16
  %706 = load [3 x float]** %10, align 8, !tbaa !17
  %707 = getelementptr inbounds [3 x float]* %706, i64 0, i64 0
  %708 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 8
  %709 = load i32** %708, align 8, !tbaa !19
  %710 = load float** %20, align 8, !tbaa !26
  %711 = load i32** %13, align 8, !tbaa !20
  %712 = load float** %15, align 8, !tbaa !22
  call void @inl2220_(i32* %35, i32* %699, i32* %701, i32* %703, i32* %705, float* %707, float* %fshift.0, i32* %709, float* %11, float* %12, float* %710, float* %21, float* %egcoul, float* %22, float* %23, i32* %711, i32* %14, float* %712, float* %egnb) #9
  br label %1271

; <label>:713                                     ; preds = %38
  %714 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 7
  %715 = load i32** %714, align 8, !tbaa !13
  %716 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 10
  %717 = load i32** %716, align 8, !tbaa !14
  %718 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 11
  %719 = load i32** %718, align 8, !tbaa !15
  %720 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 9
  %721 = load i32** %720, align 8, !tbaa !16
  %722 = load [3 x float]** %10, align 8, !tbaa !17
  %723 = getelementptr inbounds [3 x float]* %722, i64 0, i64 0
  %724 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 8
  %725 = load i32** %724, align 8, !tbaa !19
  %726 = load float** %20, align 8, !tbaa !26
  %727 = load i32** %13, align 8, !tbaa !20
  %728 = load float** %15, align 8, !tbaa !22
  call void @inl2230_(i32* %35, i32* %715, i32* %717, i32* %719, i32* %721, float* %723, float* %fshift.0, i32* %725, float* %11, float* %12, float* %726, float* %21, float* %egcoul, float* %22, float* %23, i32* %727, i32* %14, float* %728, float* %egnb) #9
  br label %1271

; <label>:729                                     ; preds = %38
  %730 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 7
  %731 = load i32** %730, align 8, !tbaa !13
  %732 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 10
  %733 = load i32** %732, align 8, !tbaa !14
  %734 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 11
  %735 = load i32** %734, align 8, !tbaa !15
  %736 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 9
  %737 = load i32** %736, align 8, !tbaa !16
  %738 = load [3 x float]** %10, align 8, !tbaa !17
  %739 = getelementptr inbounds [3 x float]* %738, i64 0, i64 0
  %740 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 8
  %741 = load i32** %740, align 8, !tbaa !19
  %742 = load float** %20, align 8, !tbaa !26
  %743 = load i32** %13, align 8, !tbaa !20
  %744 = load float** %15, align 8, !tbaa !22
  %745 = load float** %17, align 8, !tbaa !24
  call void @inl2300_(i32* %35, i32* %731, i32* %733, i32* %735, i32* %737, float* %739, float* %fshift.0, i32* %741, float* %11, float* %12, float* %742, float* %21, float* %egcoul, float* %22, float* %23, i32* %743, i32* %14, float* %744, float* %egnb, float* %16, float* %745) #9
  br label %1271

; <label>:746                                     ; preds = %38
  %747 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 7
  %748 = load i32** %747, align 8, !tbaa !13
  %749 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 10
  %750 = load i32** %749, align 8, !tbaa !14
  %751 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 11
  %752 = load i32** %751, align 8, !tbaa !15
  %753 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 9
  %754 = load i32** %753, align 8, !tbaa !16
  %755 = load [3 x float]** %10, align 8, !tbaa !17
  %756 = getelementptr inbounds [3 x float]* %755, i64 0, i64 0
  %757 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 8
  %758 = load i32** %757, align 8, !tbaa !19
  %759 = load float** %20, align 8, !tbaa !26
  %760 = load i32** %13, align 8, !tbaa !20
  %761 = load float** %15, align 8, !tbaa !22
  %762 = load float** %17, align 8, !tbaa !24
  %763 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 12
  %764 = load i32** %763, align 8, !tbaa !23
  call void @inl2310_(i32* %35, i32* %748, i32* %750, i32* %752, i32* %754, float* %756, float* %fshift.0, i32* %758, float* %11, float* %12, float* %759, float* %21, float* %egcoul, float* %22, float* %23, i32* %760, i32* %14, float* %761, float* %egnb, float* %16, float* %762, i32* %764) #9
  br label %1271

; <label>:765                                     ; preds = %38
  %766 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 7
  %767 = load i32** %766, align 8, !tbaa !13
  %768 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 10
  %769 = load i32** %768, align 8, !tbaa !14
  %770 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 11
  %771 = load i32** %770, align 8, !tbaa !15
  %772 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 9
  %773 = load i32** %772, align 8, !tbaa !16
  %774 = load [3 x float]** %10, align 8, !tbaa !17
  %775 = getelementptr inbounds [3 x float]* %774, i64 0, i64 0
  %776 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 8
  %777 = load i32** %776, align 8, !tbaa !19
  %778 = load float** %20, align 8, !tbaa !26
  %779 = load i32** %13, align 8, !tbaa !20
  %780 = load float** %15, align 8, !tbaa !22
  %781 = load float** %17, align 8, !tbaa !24
  call void @inl2320_(i32* %35, i32* %767, i32* %769, i32* %771, i32* %773, float* %775, float* %fshift.0, i32* %777, float* %11, float* %12, float* %778, float* %21, float* %egcoul, float* %22, float* %23, i32* %779, i32* %14, float* %780, float* %egnb, float* %16, float* %781) #9
  br label %1271

; <label>:782                                     ; preds = %38
  %783 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 7
  %784 = load i32** %783, align 8, !tbaa !13
  %785 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 10
  %786 = load i32** %785, align 8, !tbaa !14
  %787 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 11
  %788 = load i32** %787, align 8, !tbaa !15
  %789 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 9
  %790 = load i32** %789, align 8, !tbaa !16
  %791 = load [3 x float]** %10, align 8, !tbaa !17
  %792 = getelementptr inbounds [3 x float]* %791, i64 0, i64 0
  %793 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 8
  %794 = load i32** %793, align 8, !tbaa !19
  %795 = load float** %20, align 8, !tbaa !26
  %796 = load i32** %13, align 8, !tbaa !20
  %797 = load float** %15, align 8, !tbaa !22
  %798 = load float** %17, align 8, !tbaa !24
  call void @inl2330_(i32* %35, i32* %784, i32* %786, i32* %788, i32* %790, float* %792, float* %fshift.0, i32* %794, float* %11, float* %12, float* %795, float* %21, float* %egcoul, float* %22, float* %23, i32* %796, i32* %14, float* %797, float* %egnb, float* %16, float* %798) #9
  br label %1271

; <label>:799                                     ; preds = %38
  %800 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 7
  %801 = load i32** %800, align 8, !tbaa !13
  %802 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 10
  %803 = load i32** %802, align 8, !tbaa !14
  %804 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 11
  %805 = load i32** %804, align 8, !tbaa !15
  %806 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 9
  %807 = load i32** %806, align 8, !tbaa !16
  %808 = load [3 x float]** %10, align 8, !tbaa !17
  %809 = getelementptr inbounds [3 x float]* %808, i64 0, i64 0
  %810 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 8
  %811 = load i32** %810, align 8, !tbaa !19
  %812 = load float** %20, align 8, !tbaa !26
  %813 = load i32** %13, align 8, !tbaa !20
  %814 = load float** %15, align 8, !tbaa !22
  %815 = load float** %17, align 8, !tbaa !24
  call void @inl2400_(i32* %35, i32* %801, i32* %803, i32* %805, i32* %807, float* %809, float* %fshift.0, i32* %811, float* %11, float* %12, float* %812, float* %21, float* %egcoul, float* %22, float* %23, i32* %813, i32* %14, float* %814, float* %egnb, float* %16, float* %815, float* %19) #9
  br label %1271

; <label>:816                                     ; preds = %38
  %817 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 7
  %818 = load i32** %817, align 8, !tbaa !13
  %819 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 10
  %820 = load i32** %819, align 8, !tbaa !14
  %821 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 11
  %822 = load i32** %821, align 8, !tbaa !15
  %823 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 9
  %824 = load i32** %823, align 8, !tbaa !16
  %825 = load [3 x float]** %10, align 8, !tbaa !17
  %826 = getelementptr inbounds [3 x float]* %825, i64 0, i64 0
  %827 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 8
  %828 = load i32** %827, align 8, !tbaa !19
  %829 = load float** %20, align 8, !tbaa !26
  %830 = load i32** %13, align 8, !tbaa !20
  %831 = load float** %15, align 8, !tbaa !22
  %832 = load float** %17, align 8, !tbaa !24
  %833 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 12
  %834 = load i32** %833, align 8, !tbaa !23
  call void @inl2410_(i32* %35, i32* %818, i32* %820, i32* %822, i32* %824, float* %826, float* %fshift.0, i32* %828, float* %11, float* %12, float* %829, float* %21, float* %egcoul, float* %22, float* %23, i32* %830, i32* %14, float* %831, float* %egnb, float* %16, float* %832, float* %19, i32* %834) #9
  br label %1271

; <label>:835                                     ; preds = %38
  %836 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 7
  %837 = load i32** %836, align 8, !tbaa !13
  %838 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 10
  %839 = load i32** %838, align 8, !tbaa !14
  %840 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 11
  %841 = load i32** %840, align 8, !tbaa !15
  %842 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 9
  %843 = load i32** %842, align 8, !tbaa !16
  %844 = load [3 x float]** %10, align 8, !tbaa !17
  %845 = getelementptr inbounds [3 x float]* %844, i64 0, i64 0
  %846 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 8
  %847 = load i32** %846, align 8, !tbaa !19
  %848 = load float** %20, align 8, !tbaa !26
  %849 = load i32** %13, align 8, !tbaa !20
  %850 = load float** %15, align 8, !tbaa !22
  %851 = load float** %17, align 8, !tbaa !24
  call void @inl2420_(i32* %35, i32* %837, i32* %839, i32* %841, i32* %843, float* %845, float* %fshift.0, i32* %847, float* %11, float* %12, float* %848, float* %21, float* %egcoul, float* %22, float* %23, i32* %849, i32* %14, float* %850, float* %egnb, float* %16, float* %851, float* %19) #9
  br label %1271

; <label>:852                                     ; preds = %38
  %853 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 7
  %854 = load i32** %853, align 8, !tbaa !13
  %855 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 10
  %856 = load i32** %855, align 8, !tbaa !14
  %857 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 11
  %858 = load i32** %857, align 8, !tbaa !15
  %859 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 9
  %860 = load i32** %859, align 8, !tbaa !16
  %861 = load [3 x float]** %10, align 8, !tbaa !17
  %862 = getelementptr inbounds [3 x float]* %861, i64 0, i64 0
  %863 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 8
  %864 = load i32** %863, align 8, !tbaa !19
  %865 = load float** %20, align 8, !tbaa !26
  %866 = load i32** %13, align 8, !tbaa !20
  %867 = load float** %15, align 8, !tbaa !22
  %868 = load float** %17, align 8, !tbaa !24
  call void @inl2430_(i32* %35, i32* %854, i32* %856, i32* %858, i32* %860, float* %862, float* %fshift.0, i32* %864, float* %11, float* %12, float* %865, float* %21, float* %egcoul, float* %22, float* %23, i32* %866, i32* %14, float* %867, float* %egnb, float* %16, float* %868, float* %19) #9
  br label %1271

; <label>:869                                     ; preds = %38
  %870 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 7
  %871 = load i32** %870, align 8, !tbaa !13
  %872 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 10
  %873 = load i32** %872, align 8, !tbaa !14
  %874 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 11
  %875 = load i32** %874, align 8, !tbaa !15
  %876 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 9
  %877 = load i32** %876, align 8, !tbaa !16
  %878 = load [3 x float]** %10, align 8, !tbaa !17
  %879 = getelementptr inbounds [3 x float]* %878, i64 0, i64 0
  %880 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 8
  %881 = load i32** %880, align 8, !tbaa !19
  %882 = load float** %20, align 8, !tbaa !26
  %883 = load float** %24, align 8, !tbaa !27
  call void @inl3000_(i32* %35, i32* %871, i32* %873, i32* %875, i32* %877, float* %879, float* %fshift.0, i32* %881, float* %11, float* %12, float* %882, float* %21, float* %egcoul, float* %16, float* %883) #9
  br label %1271

; <label>:884                                     ; preds = %38
  %885 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 7
  %886 = load i32** %885, align 8, !tbaa !13
  %887 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 10
  %888 = load i32** %887, align 8, !tbaa !14
  %889 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 11
  %890 = load i32** %889, align 8, !tbaa !15
  %891 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 9
  %892 = load i32** %891, align 8, !tbaa !16
  %893 = load [3 x float]** %10, align 8, !tbaa !17
  %894 = getelementptr inbounds [3 x float]* %893, i64 0, i64 0
  %895 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 8
  %896 = load i32** %895, align 8, !tbaa !19
  %897 = load float** %20, align 8, !tbaa !26
  %898 = load float** %24, align 8, !tbaa !27
  %899 = load float** %25, align 8, !tbaa !28
  call void @inl3001_(i32* %35, i32* %886, i32* %888, i32* %890, i32* %892, float* %894, float* %fshift.0, i32* %896, float* %11, float* %12, float* %897, float* %21, float* %egcoul, float* %16, float* %898, float* %1, float* %dvdlambda, float* %899) #9
  br label %1271

; <label>:900                                     ; preds = %38
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([50 x i8]* @.str, i64 0, i64 0)) #9
  br label %1271

; <label>:901                                     ; preds = %38
  %902 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 7
  %903 = load i32** %902, align 8, !tbaa !13
  %904 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 10
  %905 = load i32** %904, align 8, !tbaa !14
  %906 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 11
  %907 = load i32** %906, align 8, !tbaa !15
  %908 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 9
  %909 = load i32** %908, align 8, !tbaa !16
  %910 = load [3 x float]** %10, align 8, !tbaa !17
  %911 = getelementptr inbounds [3 x float]* %910, i64 0, i64 0
  %912 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 8
  %913 = load i32** %912, align 8, !tbaa !19
  %914 = load float** %20, align 8, !tbaa !26
  %915 = load float** %24, align 8, !tbaa !27
  %916 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 12
  %917 = load i32** %916, align 8, !tbaa !23
  call void @inl3010_(i32* %35, i32* %903, i32* %905, i32* %907, i32* %909, float* %911, float* %fshift.0, i32* %913, float* %11, float* %12, float* %914, float* %21, float* %egcoul, float* %16, float* %915, i32* %917) #9
  br label %1271

; <label>:918                                     ; preds = %38
  %919 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 7
  %920 = load i32** %919, align 8, !tbaa !13
  %921 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 10
  %922 = load i32** %921, align 8, !tbaa !14
  %923 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 11
  %924 = load i32** %923, align 8, !tbaa !15
  %925 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 9
  %926 = load i32** %925, align 8, !tbaa !16
  %927 = load [3 x float]** %10, align 8, !tbaa !17
  %928 = getelementptr inbounds [3 x float]* %927, i64 0, i64 0
  %929 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 8
  %930 = load i32** %929, align 8, !tbaa !19
  %931 = load float** %20, align 8, !tbaa !26
  %932 = load float** %24, align 8, !tbaa !27
  call void @inl3020_(i32* %35, i32* %920, i32* %922, i32* %924, i32* %926, float* %928, float* %fshift.0, i32* %930, float* %11, float* %12, float* %931, float* %21, float* %egcoul, float* %16, float* %932) #9
  br label %1271

; <label>:933                                     ; preds = %38
  %934 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 7
  %935 = load i32** %934, align 8, !tbaa !13
  %936 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 10
  %937 = load i32** %936, align 8, !tbaa !14
  %938 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 11
  %939 = load i32** %938, align 8, !tbaa !15
  %940 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 9
  %941 = load i32** %940, align 8, !tbaa !16
  %942 = load [3 x float]** %10, align 8, !tbaa !17
  %943 = getelementptr inbounds [3 x float]* %942, i64 0, i64 0
  %944 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 8
  %945 = load i32** %944, align 8, !tbaa !19
  %946 = load float** %20, align 8, !tbaa !26
  %947 = load float** %24, align 8, !tbaa !27
  call void @inl3030_(i32* %35, i32* %935, i32* %937, i32* %939, i32* %941, float* %943, float* %fshift.0, i32* %945, float* %11, float* %12, float* %946, float* %21, float* %egcoul, float* %16, float* %947) #9
  br label %1271

; <label>:948                                     ; preds = %38
  %949 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 7
  %950 = load i32** %949, align 8, !tbaa !13
  %951 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 10
  %952 = load i32** %951, align 8, !tbaa !14
  %953 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 11
  %954 = load i32** %953, align 8, !tbaa !15
  %955 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 9
  %956 = load i32** %955, align 8, !tbaa !16
  %957 = load [3 x float]** %10, align 8, !tbaa !17
  %958 = getelementptr inbounds [3 x float]* %957, i64 0, i64 0
  %959 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 8
  %960 = load i32** %959, align 8, !tbaa !19
  %961 = load float** %20, align 8, !tbaa !26
  %962 = load i32** %13, align 8, !tbaa !20
  %963 = load float** %15, align 8, !tbaa !22
  %964 = load float** %24, align 8, !tbaa !27
  call void @inl3100_(i32* %35, i32* %950, i32* %952, i32* %954, i32* %956, float* %958, float* %fshift.0, i32* %960, float* %11, float* %12, float* %961, float* %21, float* %egcoul, i32* %962, i32* %14, float* %963, float* %egnb, float* %16, float* %964) #9
  br label %1271

; <label>:965                                     ; preds = %38
  %966 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 7
  %967 = load i32** %966, align 8, !tbaa !13
  %968 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 10
  %969 = load i32** %968, align 8, !tbaa !14
  %970 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 11
  %971 = load i32** %970, align 8, !tbaa !15
  %972 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 9
  %973 = load i32** %972, align 8, !tbaa !16
  %974 = load [3 x float]** %10, align 8, !tbaa !17
  %975 = getelementptr inbounds [3 x float]* %974, i64 0, i64 0
  %976 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 8
  %977 = load i32** %976, align 8, !tbaa !19
  %978 = load float** %20, align 8, !tbaa !26
  %979 = load i32** %13, align 8, !tbaa !20
  %980 = load float** %15, align 8, !tbaa !22
  %981 = load float** %24, align 8, !tbaa !27
  %982 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 12
  %983 = load i32** %982, align 8, !tbaa !23
  call void @inl3110_(i32* %35, i32* %967, i32* %969, i32* %971, i32* %973, float* %975, float* %fshift.0, i32* %977, float* %11, float* %12, float* %978, float* %21, float* %egcoul, i32* %979, i32* %14, float* %980, float* %egnb, float* %16, float* %981, i32* %983) #9
  br label %1271

; <label>:984                                     ; preds = %38
  %985 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 7
  %986 = load i32** %985, align 8, !tbaa !13
  %987 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 10
  %988 = load i32** %987, align 8, !tbaa !14
  %989 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 11
  %990 = load i32** %989, align 8, !tbaa !15
  %991 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 9
  %992 = load i32** %991, align 8, !tbaa !16
  %993 = load [3 x float]** %10, align 8, !tbaa !17
  %994 = getelementptr inbounds [3 x float]* %993, i64 0, i64 0
  %995 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 8
  %996 = load i32** %995, align 8, !tbaa !19
  %997 = load float** %20, align 8, !tbaa !26
  %998 = load i32** %13, align 8, !tbaa !20
  %999 = load float** %15, align 8, !tbaa !22
  %1000 = load float** %24, align 8, !tbaa !27
  call void @inl3120_(i32* %35, i32* %986, i32* %988, i32* %990, i32* %992, float* %994, float* %fshift.0, i32* %996, float* %11, float* %12, float* %997, float* %21, float* %egcoul, i32* %998, i32* %14, float* %999, float* %egnb, float* %16, float* %1000) #9
  br label %1271

; <label>:1001                                    ; preds = %38
  %1002 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 7
  %1003 = load i32** %1002, align 8, !tbaa !13
  %1004 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 10
  %1005 = load i32** %1004, align 8, !tbaa !14
  %1006 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 11
  %1007 = load i32** %1006, align 8, !tbaa !15
  %1008 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 9
  %1009 = load i32** %1008, align 8, !tbaa !16
  %1010 = load [3 x float]** %10, align 8, !tbaa !17
  %1011 = getelementptr inbounds [3 x float]* %1010, i64 0, i64 0
  %1012 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 8
  %1013 = load i32** %1012, align 8, !tbaa !19
  %1014 = load float** %20, align 8, !tbaa !26
  %1015 = load i32** %13, align 8, !tbaa !20
  %1016 = load float** %15, align 8, !tbaa !22
  %1017 = load float** %24, align 8, !tbaa !27
  call void @inl3130_(i32* %35, i32* %1003, i32* %1005, i32* %1007, i32* %1009, float* %1011, float* %fshift.0, i32* %1013, float* %11, float* %12, float* %1014, float* %21, float* %egcoul, i32* %1015, i32* %14, float* %1016, float* %egnb, float* %16, float* %1017) #9
  br label %1271

; <label>:1018                                    ; preds = %38
  %1019 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 7
  %1020 = load i32** %1019, align 8, !tbaa !13
  %1021 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 10
  %1022 = load i32** %1021, align 8, !tbaa !14
  %1023 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 11
  %1024 = load i32** %1023, align 8, !tbaa !15
  %1025 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 9
  %1026 = load i32** %1025, align 8, !tbaa !16
  %1027 = load [3 x float]** %10, align 8, !tbaa !17
  %1028 = getelementptr inbounds [3 x float]* %1027, i64 0, i64 0
  %1029 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 8
  %1030 = load i32** %1029, align 8, !tbaa !19
  %1031 = load float** %20, align 8, !tbaa !26
  %1032 = load i32** %13, align 8, !tbaa !20
  %1033 = load float** %15, align 8, !tbaa !22
  %1034 = load float** %24, align 8, !tbaa !27
  call void @inl3200_(i32* %35, i32* %1020, i32* %1022, i32* %1024, i32* %1026, float* %1028, float* %fshift.0, i32* %1030, float* %11, float* %12, float* %1031, float* %21, float* %egcoul, i32* %1032, i32* %14, float* %1033, float* %egnb, float* %16, float* %1034) #9
  br label %1271

; <label>:1035                                    ; preds = %38
  %1036 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 7
  %1037 = load i32** %1036, align 8, !tbaa !13
  %1038 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 10
  %1039 = load i32** %1038, align 8, !tbaa !14
  %1040 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 11
  %1041 = load i32** %1040, align 8, !tbaa !15
  %1042 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 9
  %1043 = load i32** %1042, align 8, !tbaa !16
  %1044 = load [3 x float]** %10, align 8, !tbaa !17
  %1045 = getelementptr inbounds [3 x float]* %1044, i64 0, i64 0
  %1046 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 8
  %1047 = load i32** %1046, align 8, !tbaa !19
  %1048 = load float** %20, align 8, !tbaa !26
  %1049 = load i32** %13, align 8, !tbaa !20
  %1050 = load float** %15, align 8, !tbaa !22
  %1051 = load float** %24, align 8, !tbaa !27
  %1052 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 12
  %1053 = load i32** %1052, align 8, !tbaa !23
  call void @inl3210_(i32* %35, i32* %1037, i32* %1039, i32* %1041, i32* %1043, float* %1045, float* %fshift.0, i32* %1047, float* %11, float* %12, float* %1048, float* %21, float* %egcoul, i32* %1049, i32* %14, float* %1050, float* %egnb, float* %16, float* %1051, i32* %1053) #9
  br label %1271

; <label>:1054                                    ; preds = %38
  %1055 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 7
  %1056 = load i32** %1055, align 8, !tbaa !13
  %1057 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 10
  %1058 = load i32** %1057, align 8, !tbaa !14
  %1059 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 11
  %1060 = load i32** %1059, align 8, !tbaa !15
  %1061 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 9
  %1062 = load i32** %1061, align 8, !tbaa !16
  %1063 = load [3 x float]** %10, align 8, !tbaa !17
  %1064 = getelementptr inbounds [3 x float]* %1063, i64 0, i64 0
  %1065 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 8
  %1066 = load i32** %1065, align 8, !tbaa !19
  %1067 = load float** %20, align 8, !tbaa !26
  %1068 = load i32** %13, align 8, !tbaa !20
  %1069 = load float** %15, align 8, !tbaa !22
  %1070 = load float** %24, align 8, !tbaa !27
  call void @inl3220_(i32* %35, i32* %1056, i32* %1058, i32* %1060, i32* %1062, float* %1064, float* %fshift.0, i32* %1066, float* %11, float* %12, float* %1067, float* %21, float* %egcoul, i32* %1068, i32* %14, float* %1069, float* %egnb, float* %16, float* %1070) #9
  br label %1271

; <label>:1071                                    ; preds = %38
  %1072 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 7
  %1073 = load i32** %1072, align 8, !tbaa !13
  %1074 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 10
  %1075 = load i32** %1074, align 8, !tbaa !14
  %1076 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 11
  %1077 = load i32** %1076, align 8, !tbaa !15
  %1078 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 9
  %1079 = load i32** %1078, align 8, !tbaa !16
  %1080 = load [3 x float]** %10, align 8, !tbaa !17
  %1081 = getelementptr inbounds [3 x float]* %1080, i64 0, i64 0
  %1082 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 8
  %1083 = load i32** %1082, align 8, !tbaa !19
  %1084 = load float** %20, align 8, !tbaa !26
  %1085 = load i32** %13, align 8, !tbaa !20
  %1086 = load float** %15, align 8, !tbaa !22
  %1087 = load float** %24, align 8, !tbaa !27
  call void @inl3230_(i32* %35, i32* %1073, i32* %1075, i32* %1077, i32* %1079, float* %1081, float* %fshift.0, i32* %1083, float* %11, float* %12, float* %1084, float* %21, float* %egcoul, i32* %1085, i32* %14, float* %1086, float* %egnb, float* %16, float* %1087) #9
  br label %1271

; <label>:1088                                    ; preds = %38
  %1089 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 7
  %1090 = load i32** %1089, align 8, !tbaa !13
  %1091 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 10
  %1092 = load i32** %1091, align 8, !tbaa !14
  %1093 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 11
  %1094 = load i32** %1093, align 8, !tbaa !15
  %1095 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 9
  %1096 = load i32** %1095, align 8, !tbaa !16
  %1097 = load [3 x float]** %10, align 8, !tbaa !17
  %1098 = getelementptr inbounds [3 x float]* %1097, i64 0, i64 0
  %1099 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 8
  %1100 = load i32** %1099, align 8, !tbaa !19
  %1101 = load float** %20, align 8, !tbaa !26
  %1102 = load i32** %13, align 8, !tbaa !20
  %1103 = load float** %15, align 8, !tbaa !22
  %1104 = load float** %26, align 8, !tbaa !29
  call void @inl3300_(i32* %35, i32* %1090, i32* %1092, i32* %1094, i32* %1096, float* %1098, float* %fshift.0, i32* %1100, float* %11, float* %12, float* %1101, float* %21, float* %egcoul, i32* %1102, i32* %14, float* %1103, float* %egnb, float* %16, float* %1104) #9
  br label %1271

; <label>:1105                                    ; preds = %38
  %1106 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 7
  %1107 = load i32** %1106, align 8, !tbaa !13
  %1108 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 10
  %1109 = load i32** %1108, align 8, !tbaa !14
  %1110 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 11
  %1111 = load i32** %1110, align 8, !tbaa !15
  %1112 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 9
  %1113 = load i32** %1112, align 8, !tbaa !16
  %1114 = load [3 x float]** %10, align 8, !tbaa !17
  %1115 = getelementptr inbounds [3 x float]* %1114, i64 0, i64 0
  %1116 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 8
  %1117 = load i32** %1116, align 8, !tbaa !19
  %1118 = load float** %20, align 8, !tbaa !26
  %1119 = load i32** %13, align 8, !tbaa !20
  %1120 = load float** %15, align 8, !tbaa !22
  %1121 = load float** %26, align 8, !tbaa !29
  %1122 = load float** %25, align 8, !tbaa !28
  %1123 = load i32** %18, align 8, !tbaa !25
  call void @inl3301_(i32* %35, i32* %1107, i32* %1109, i32* %1111, i32* %1113, float* %1115, float* %fshift.0, i32* %1117, float* %11, float* %12, float* %1118, float* %21, float* %egcoul, i32* %1119, i32* %14, float* %1120, float* %egnb, float* %16, float* %1121, float* %1, float* %dvdlambda, float* %1122, i32* %1123) #9
  br label %1271

; <label>:1124                                    ; preds = %38
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([50 x i8]* @.str, i64 0, i64 0)) #9
  br label %1271

; <label>:1125                                    ; preds = %38
  %1126 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 7
  %1127 = load i32** %1126, align 8, !tbaa !13
  %1128 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 10
  %1129 = load i32** %1128, align 8, !tbaa !14
  %1130 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 11
  %1131 = load i32** %1130, align 8, !tbaa !15
  %1132 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 9
  %1133 = load i32** %1132, align 8, !tbaa !16
  %1134 = load [3 x float]** %10, align 8, !tbaa !17
  %1135 = getelementptr inbounds [3 x float]* %1134, i64 0, i64 0
  %1136 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 8
  %1137 = load i32** %1136, align 8, !tbaa !19
  %1138 = load float** %20, align 8, !tbaa !26
  %1139 = load i32** %13, align 8, !tbaa !20
  %1140 = load float** %15, align 8, !tbaa !22
  %1141 = load float** %26, align 8, !tbaa !29
  %1142 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 12
  %1143 = load i32** %1142, align 8, !tbaa !23
  call void @inl3310_(i32* %35, i32* %1127, i32* %1129, i32* %1131, i32* %1133, float* %1135, float* %fshift.0, i32* %1137, float* %11, float* %12, float* %1138, float* %21, float* %egcoul, i32* %1139, i32* %14, float* %1140, float* %egnb, float* %16, float* %1141, i32* %1143) #9
  br label %1271

; <label>:1144                                    ; preds = %38
  %1145 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 7
  %1146 = load i32** %1145, align 8, !tbaa !13
  %1147 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 10
  %1148 = load i32** %1147, align 8, !tbaa !14
  %1149 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 11
  %1150 = load i32** %1149, align 8, !tbaa !15
  %1151 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 9
  %1152 = load i32** %1151, align 8, !tbaa !16
  %1153 = load [3 x float]** %10, align 8, !tbaa !17
  %1154 = getelementptr inbounds [3 x float]* %1153, i64 0, i64 0
  %1155 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 8
  %1156 = load i32** %1155, align 8, !tbaa !19
  %1157 = load float** %20, align 8, !tbaa !26
  %1158 = load i32** %13, align 8, !tbaa !20
  %1159 = load float** %15, align 8, !tbaa !22
  %1160 = load float** %26, align 8, !tbaa !29
  call void @inl3320_(i32* %35, i32* %1146, i32* %1148, i32* %1150, i32* %1152, float* %1154, float* %fshift.0, i32* %1156, float* %11, float* %12, float* %1157, float* %21, float* %egcoul, i32* %1158, i32* %14, float* %1159, float* %egnb, float* %16, float* %1160) #9
  br label %1271

; <label>:1161                                    ; preds = %38
  %1162 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 7
  %1163 = load i32** %1162, align 8, !tbaa !13
  %1164 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 10
  %1165 = load i32** %1164, align 8, !tbaa !14
  %1166 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 11
  %1167 = load i32** %1166, align 8, !tbaa !15
  %1168 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 9
  %1169 = load i32** %1168, align 8, !tbaa !16
  %1170 = load [3 x float]** %10, align 8, !tbaa !17
  %1171 = getelementptr inbounds [3 x float]* %1170, i64 0, i64 0
  %1172 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 8
  %1173 = load i32** %1172, align 8, !tbaa !19
  %1174 = load float** %20, align 8, !tbaa !26
  %1175 = load i32** %13, align 8, !tbaa !20
  %1176 = load float** %15, align 8, !tbaa !22
  %1177 = load float** %26, align 8, !tbaa !29
  call void @inl3330_(i32* %35, i32* %1163, i32* %1165, i32* %1167, i32* %1169, float* %1171, float* %fshift.0, i32* %1173, float* %11, float* %12, float* %1174, float* %21, float* %egcoul, i32* %1175, i32* %14, float* %1176, float* %egnb, float* %16, float* %1177) #9
  br label %1271

; <label>:1178                                    ; preds = %38
  %1179 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 7
  %1180 = load i32** %1179, align 8, !tbaa !13
  %1181 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 10
  %1182 = load i32** %1181, align 8, !tbaa !14
  %1183 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 11
  %1184 = load i32** %1183, align 8, !tbaa !15
  %1185 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 9
  %1186 = load i32** %1185, align 8, !tbaa !16
  %1187 = load [3 x float]** %10, align 8, !tbaa !17
  %1188 = getelementptr inbounds [3 x float]* %1187, i64 0, i64 0
  %1189 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 8
  %1190 = load i32** %1189, align 8, !tbaa !19
  %1191 = load float** %20, align 8, !tbaa !26
  %1192 = load i32** %13, align 8, !tbaa !20
  %1193 = load float** %15, align 8, !tbaa !22
  %1194 = load float** %26, align 8, !tbaa !29
  call void @inl3400_(i32* %35, i32* %1180, i32* %1182, i32* %1184, i32* %1186, float* %1188, float* %fshift.0, i32* %1190, float* %11, float* %12, float* %1191, float* %21, float* %egcoul, i32* %1192, i32* %14, float* %1193, float* %egnb, float* %16, float* %1194, float* %19) #9
  br label %1271

; <label>:1195                                    ; preds = %38
  %1196 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 7
  %1197 = load i32** %1196, align 8, !tbaa !13
  %1198 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 10
  %1199 = load i32** %1198, align 8, !tbaa !14
  %1200 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 11
  %1201 = load i32** %1200, align 8, !tbaa !15
  %1202 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 9
  %1203 = load i32** %1202, align 8, !tbaa !16
  %1204 = load [3 x float]** %10, align 8, !tbaa !17
  %1205 = getelementptr inbounds [3 x float]* %1204, i64 0, i64 0
  %1206 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 8
  %1207 = load i32** %1206, align 8, !tbaa !19
  %1208 = load float** %20, align 8, !tbaa !26
  %1209 = load i32** %13, align 8, !tbaa !20
  %1210 = load float** %15, align 8, !tbaa !22
  %1211 = load float** %26, align 8, !tbaa !29
  %1212 = load float** %25, align 8, !tbaa !28
  %1213 = load i32** %18, align 8, !tbaa !25
  call void @inl3401_(i32* %35, i32* %1197, i32* %1199, i32* %1201, i32* %1203, float* %1205, float* %fshift.0, i32* %1207, float* %11, float* %12, float* %1208, float* %21, float* %egcoul, i32* %1209, i32* %14, float* %1210, float* %egnb, float* %16, float* %1211, float* %19, float* %1, float* %dvdlambda, float* %1212, i32* %1213) #9
  br label %1271

; <label>:1214                                    ; preds = %38
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([50 x i8]* @.str, i64 0, i64 0)) #9
  br label %1271

; <label>:1215                                    ; preds = %38
  %1216 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 7
  %1217 = load i32** %1216, align 8, !tbaa !13
  %1218 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 10
  %1219 = load i32** %1218, align 8, !tbaa !14
  %1220 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 11
  %1221 = load i32** %1220, align 8, !tbaa !15
  %1222 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 9
  %1223 = load i32** %1222, align 8, !tbaa !16
  %1224 = load [3 x float]** %10, align 8, !tbaa !17
  %1225 = getelementptr inbounds [3 x float]* %1224, i64 0, i64 0
  %1226 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 8
  %1227 = load i32** %1226, align 8, !tbaa !19
  %1228 = load float** %20, align 8, !tbaa !26
  %1229 = load i32** %13, align 8, !tbaa !20
  %1230 = load float** %15, align 8, !tbaa !22
  %1231 = load float** %26, align 8, !tbaa !29
  %1232 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 12
  %1233 = load i32** %1232, align 8, !tbaa !23
  call void @inl3410_(i32* %35, i32* %1217, i32* %1219, i32* %1221, i32* %1223, float* %1225, float* %fshift.0, i32* %1227, float* %11, float* %12, float* %1228, float* %21, float* %egcoul, i32* %1229, i32* %14, float* %1230, float* %egnb, float* %16, float* %1231, float* %19, i32* %1233) #9
  br label %1271

; <label>:1234                                    ; preds = %38
  %1235 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 7
  %1236 = load i32** %1235, align 8, !tbaa !13
  %1237 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 10
  %1238 = load i32** %1237, align 8, !tbaa !14
  %1239 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 11
  %1240 = load i32** %1239, align 8, !tbaa !15
  %1241 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 9
  %1242 = load i32** %1241, align 8, !tbaa !16
  %1243 = load [3 x float]** %10, align 8, !tbaa !17
  %1244 = getelementptr inbounds [3 x float]* %1243, i64 0, i64 0
  %1245 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 8
  %1246 = load i32** %1245, align 8, !tbaa !19
  %1247 = load float** %20, align 8, !tbaa !26
  %1248 = load i32** %13, align 8, !tbaa !20
  %1249 = load float** %15, align 8, !tbaa !22
  %1250 = load float** %26, align 8, !tbaa !29
  call void @inl3420_(i32* %35, i32* %1236, i32* %1238, i32* %1240, i32* %1242, float* %1244, float* %fshift.0, i32* %1246, float* %11, float* %12, float* %1247, float* %21, float* %egcoul, i32* %1248, i32* %14, float* %1249, float* %egnb, float* %16, float* %1250, float* %19) #9
  br label %1271

; <label>:1251                                    ; preds = %38
  %1252 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 7
  %1253 = load i32** %1252, align 8, !tbaa !13
  %1254 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 10
  %1255 = load i32** %1254, align 8, !tbaa !14
  %1256 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 11
  %1257 = load i32** %1256, align 8, !tbaa !15
  %1258 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 9
  %1259 = load i32** %1258, align 8, !tbaa !16
  %1260 = load [3 x float]** %10, align 8, !tbaa !17
  %1261 = getelementptr inbounds [3 x float]* %1260, i64 0, i64 0
  %1262 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 8
  %1263 = load i32** %1262, align 8, !tbaa !19
  %1264 = load float** %20, align 8, !tbaa !26
  %1265 = load i32** %13, align 8, !tbaa !20
  %1266 = load float** %15, align 8, !tbaa !22
  %1267 = load float** %26, align 8, !tbaa !29
  call void @inl3430_(i32* %35, i32* %1253, i32* %1255, i32* %1257, i32* %1259, float* %1261, float* %fshift.0, i32* %1263, float* %11, float* %12, float* %1264, float* %21, float* %egcoul, i32* %1265, i32* %14, float* %1266, float* %egnb, float* %16, float* %1267, float* %19) #9
  br label %1271

; <label>:1268                                    ; preds = %38
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([47 x i8]* @.str1, i64 0, i64 0)) #9
  br label %1269

; <label>:1269                                    ; preds = %38, %1268
  %1270 = call i8* @nrnb_str(i32 %40) #9
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([48 x i8]* @.str2, i64 0, i64 0), i8* %1270, i8* getelementptr inbounds ([64 x i8]* @.str3, i64 0, i64 0), i32 882) #9
  br label %1271

; <label>:1271                                    ; preds = %1269, %1251, %1234, %1215, %1214, %1195, %1178, %1161, %1144, %1125, %1124, %1105, %1088, %1071, %1054, %1035, %1018, %1001, %984, %965, %948, %933, %918, %901, %900, %884, %869, %852, %835, %816, %799, %782, %765, %746, %729, %713, %697, %679, %663, %647, %631, %613, %597, %583, %569, %553, %539, %522, %505, %486, %469, %452, %435, %416, %399, %383, %367, %349, %333, %317, %301, %283, %267, %253, %239, %223, %209, %208, %191, %173, %157, %156, %139, %121, %105, %88, %73, %56, %41
  %1272 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 6
  %1273 = load i32* %1272, align 4, !tbaa !30
  switch i32 %1273, label %1286 [
    i32 2, label %1274
    i32 3, label %1280
  ]

; <label>:1274                                    ; preds = %1271
  %1275 = load i32* %35, align 4, !tbaa !8
  %1276 = mul nsw i32 %1275, 3
  %1277 = sitofp i32 %1276 to double
  %1278 = load double* %8, align 8, !tbaa !6
  %1279 = fadd double %1278, %1277
  store double %1279, double* %8, align 8, !tbaa !6
  br label %1346

; <label>:1280                                    ; preds = %1271
  %1281 = load i32* %35, align 4, !tbaa !8
  %1282 = mul nsw i32 %1281, 9
  %1283 = sitofp i32 %1282 to double
  %1284 = load double* %8, align 8, !tbaa !6
  %1285 = fadd double %1284, %1283
  store double %1285, double* %8, align 8, !tbaa !6
  br label %1346

; <label>:1286                                    ; preds = %1271
  %1287 = icmp eq i32 %1273, 1
  br i1 %1287, label %1293, label %1288

; <label>:1288                                    ; preds = %1286
  %1289 = load i32* %35, align 4, !tbaa !8
  %1290 = sitofp i32 %1289 to double
  %1291 = load double* %8, align 8, !tbaa !6
  %1292 = fadd double %1291, %1290
  store double %1292, double* %8, align 8, !tbaa !6
  br label %1346

; <label>:1293                                    ; preds = %1286
  switch i32 %40, label %1345 [
    i32 17, label %1294
    i32 21, label %1294
    i32 25, label %1294
    i32 29, label %1294
    i32 37, label %1294
    i32 41, label %1294
    i32 45, label %1294
    i32 49, label %1294
    i32 59, label %1294
    i32 63, label %1294
    i32 69, label %1294
    i32 75, label %1294
    i32 13, label %1311
    i32 33, label %1311
    i32 55, label %1311
    i32 1, label %1328
    i32 3, label %1328
    i32 5, label %1328
    i32 9, label %1328
  ]

; <label>:1294                                    ; preds = %1293, %1293, %1293, %1293, %1293, %1293, %1293, %1293, %1293, %1293, %1293, %1293
  %1295 = load float* %9, align 4, !tbaa !2
  %1296 = load i32* %35, align 4, !tbaa !8
  %1297 = sitofp i32 %1296 to float
  %1298 = fmul float %1295, %1297
  %1299 = fpext float %1298 to double
  %1300 = load double* %8, align 8, !tbaa !6
  %1301 = fadd double %1300, %1299
  store double %1301, double* %8, align 8, !tbaa !6
  %1302 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 3
  %1303 = load i32* %1302, align 4, !tbaa !31
  %1304 = sitofp i32 %1303 to float
  %1305 = fmul float %1295, %1304
  %1306 = fpext float %1305 to double
  %1307 = sext i32 %40 to i64
  %1308 = getelementptr inbounds %struct.t_nrnb* %nrnb, i64 0, i32 0, i64 %1307
  %1309 = load double* %1308, align 8, !tbaa !6
  %1310 = fadd double %1309, %1306
  store double %1310, double* %1308, align 8, !tbaa !6
  br label %1354

; <label>:1311                                    ; preds = %1293, %1293, %1293
  %1312 = load float* %9, align 4, !tbaa !2
  %1313 = load i32* %35, align 4, !tbaa !8
  %1314 = sitofp i32 %1313 to float
  %1315 = fmul float %1312, %1314
  %1316 = fpext float %1315 to double
  %1317 = load double* %8, align 8, !tbaa !6
  %1318 = fadd double %1317, %1316
  store double %1318, double* %8, align 8, !tbaa !6
  %1319 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 3
  %1320 = load i32* %1319, align 4, !tbaa !31
  %1321 = sitofp i32 %1320 to float
  %1322 = fmul float %1312, %1321
  %1323 = fpext float %1322 to double
  %1324 = sext i32 %40 to i64
  %1325 = getelementptr inbounds %struct.t_nrnb* %nrnb, i64 0, i32 0, i64 %1324
  %1326 = load double* %1325, align 8, !tbaa !6
  %1327 = fadd double %1326, %1323
  store double %1327, double* %1325, align 8, !tbaa !6
  br label %1354

; <label>:1328                                    ; preds = %1293, %1293, %1293, %1293
  %1329 = load float* %9, align 4, !tbaa !2
  %1330 = load i32* %35, align 4, !tbaa !8
  %1331 = sitofp i32 %1330 to float
  %1332 = fmul float %1329, %1331
  %1333 = fpext float %1332 to double
  %1334 = load double* %8, align 8, !tbaa !6
  %1335 = fadd double %1334, %1333
  store double %1335, double* %8, align 8, !tbaa !6
  %1336 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 3
  %1337 = load i32* %1336, align 4, !tbaa !31
  %1338 = sitofp i32 %1337 to float
  %1339 = fmul float %1329, %1338
  %1340 = fpext float %1339 to double
  %1341 = sext i32 %40 to i64
  %1342 = getelementptr inbounds %struct.t_nrnb* %nrnb, i64 0, i32 0, i64 %1341
  %1343 = load double* %1342, align 8, !tbaa !6
  %1344 = fadd double %1343, %1340
  store double %1344, double* %1342, align 8, !tbaa !6
  br label %1354

; <label>:1345                                    ; preds = %1293
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([49 x i8]* @.str4, i64 0, i64 0), i8* getelementptr inbounds ([64 x i8]* @.str3, i64 0, i64 0), i32 931, i32 %40) #9
  br label %1354

; <label>:1346                                    ; preds = %1280, %1288, %1274
  %1347 = getelementptr inbounds %struct.t_nblist* %nlist.0, i64 0, i32 3
  %1348 = load i32* %1347, align 4, !tbaa !31
  %1349 = sitofp i32 %1348 to double
  %1350 = sext i32 %40 to i64
  %1351 = getelementptr inbounds %struct.t_nrnb* %nrnb, i64 0, i32 0, i64 %1350
  %1352 = load double* %1351, align 8, !tbaa !6
  %1353 = fadd double %1352, %1349
  store double %1353, double* %1351, align 8, !tbaa !6
  br label %1354

; <label>:1354                                    ; preds = %34, %1294, %1311, %1328, %1345, %1346
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %28
  br i1 %exitcond, label %._crit_edge, label %29

._crit_edge:                                      ; preds = %1354, %0
  ret void
}

; Function Attrs: optsize
declare void @inl0100_(i32*, i32*, i32*, i32*, i32*, float*, float*, i32*, float*, float*, i32*, i32*, float*, float*) #3

; Function Attrs: optsize
declare void @inl0110_(i32*, i32*, i32*, i32*, i32*, float*, float*, i32*, float*, float*, i32*, i32*, float*, float*, i32*) #3

; Function Attrs: optsize
declare void @inl0200_(i32*, i32*, i32*, i32*, i32*, float*, float*, i32*, float*, float*, i32*, i32*, float*, float*) #3

; Function Attrs: optsize
declare void @inl0210_(i32*, i32*, i32*, i32*, i32*, float*, float*, i32*, float*, float*, i32*, i32*, float*, float*, i32*) #3

; Function Attrs: optsize
declare void @inl0300_(i32*, i32*, i32*, i32*, i32*, float*, float*, i32*, float*, float*, i32*, i32*, float*, float*, float*, float*) #3

; Function Attrs: optsize
declare void @inl0310_(i32*, i32*, i32*, i32*, i32*, float*, float*, i32*, float*, float*, i32*, i32*, float*, float*, float*, float*, i32*) #3

; Function Attrs: optsize
declare void @inl0301_(i32*, i32*, i32*, i32*, i32*, float*, float*, i32*, float*, float*, i32*, i32*, float*, float*, float*, float*, float*, float*, i32*) #3

; Function Attrs: optsize
declare void @fatal_error(i32, i8*, ...) #3

; Function Attrs: optsize
declare void @inl0400_(i32*, i32*, i32*, i32*, i32*, float*, float*, i32*, float*, float*, i32*, i32*, float*, float*, float*, float*, float*) #3

; Function Attrs: optsize
declare void @inl0410_(i32*, i32*, i32*, i32*, i32*, float*, float*, i32*, float*, float*, i32*, i32*, float*, float*, float*, float*, float*, i32*) #3

; Function Attrs: optsize
declare void @inl0401_(i32*, i32*, i32*, i32*, i32*, float*, float*, i32*, float*, float*, i32*, i32*, float*, float*, float*, float*, float*, float*, float*, i32*) #3

; Function Attrs: optsize
declare void @inl1000_(i32*, i32*, i32*, i32*, i32*, float*, float*, i32*, float*, float*, float*, float*, float*) #3

; Function Attrs: optsize
declare void @inl1010_(i32*, i32*, i32*, i32*, i32*, float*, float*, i32*, float*, float*, float*, float*, float*, i32*) #3

; Function Attrs: optsize
declare void @inl1020_(i32*, i32*, i32*, i32*, i32*, float*, float*, i32*, float*, float*, float*, float*, float*) #3

; Function Attrs: optsize
declare void @inl1030_(i32*, i32*, i32*, i32*, i32*, float*, float*, i32*, float*, float*, float*, float*, float*) #3

; Function Attrs: optsize
declare void @inl1100_(i32*, i32*, i32*, i32*, i32*, float*, float*, i32*, float*, float*, float*, float*, float*, i32*, i32*, float*, float*) #3

; Function Attrs: optsize
declare void @inl1110_(i32*, i32*, i32*, i32*, i32*, float*, float*, i32*, float*, float*, float*, float*, float*, i32*, i32*, float*, float*, i32*) #3

; Function Attrs: optsize
declare void @inl1120_(i32*, i32*, i32*, i32*, i32*, float*, float*, i32*, float*, float*, float*, float*, float*, i32*, i32*, float*, float*) #3

; Function Attrs: optsize
declare void @inl1130_(i32*, i32*, i32*, i32*, i32*, float*, float*, i32*, float*, float*, float*, float*, float*, i32*, i32*, float*, float*) #3

; Function Attrs: optsize
declare void @inl1200_(i32*, i32*, i32*, i32*, i32*, float*, float*, i32*, float*, float*, float*, float*, float*, i32*, i32*, float*, float*) #3

; Function Attrs: optsize
declare void @inl1210_(i32*, i32*, i32*, i32*, i32*, float*, float*, i32*, float*, float*, float*, float*, float*, i32*, i32*, float*, float*, i32*) #3

; Function Attrs: optsize
declare void @inl1220_(i32*, i32*, i32*, i32*, i32*, float*, float*, i32*, float*, float*, float*, float*, float*, i32*, i32*, float*, float*) #3

; Function Attrs: optsize
declare void @inl1230_(i32*, i32*, i32*, i32*, i32*, float*, float*, i32*, float*, float*, float*, float*, float*, i32*, i32*, float*, float*) #3

; Function Attrs: optsize
declare void @inl1300_(i32*, i32*, i32*, i32*, i32*, float*, float*, i32*, float*, float*, float*, float*, float*, i32*, i32*, float*, float*, float*, float*) #3

; Function Attrs: optsize
declare void @inl1310_(i32*, i32*, i32*, i32*, i32*, float*, float*, i32*, float*, float*, float*, float*, float*, i32*, i32*, float*, float*, float*, float*, i32*) #3

; Function Attrs: optsize
declare void @inl1320_(i32*, i32*, i32*, i32*, i32*, float*, float*, i32*, float*, float*, float*, float*, float*, i32*, i32*, float*, float*, float*, float*) #3

; Function Attrs: optsize
declare void @inl1330_(i32*, i32*, i32*, i32*, i32*, float*, float*, i32*, float*, float*, float*, float*, float*, i32*, i32*, float*, float*, float*, float*) #3

; Function Attrs: optsize
declare void @inl1400_(i32*, i32*, i32*, i32*, i32*, float*, float*, i32*, float*, float*, float*, float*, float*, i32*, i32*, float*, float*, float*, float*, float*) #3

; Function Attrs: optsize
declare void @inl1410_(i32*, i32*, i32*, i32*, i32*, float*, float*, i32*, float*, float*, float*, float*, float*, i32*, i32*, float*, float*, float*, float*, float*, i32*) #3

; Function Attrs: optsize
declare void @inl1420_(i32*, i32*, i32*, i32*, i32*, float*, float*, i32*, float*, float*, float*, float*, float*, i32*, i32*, float*, float*, float*, float*, float*) #3

; Function Attrs: optsize
declare void @inl1430_(i32*, i32*, i32*, i32*, i32*, float*, float*, i32*, float*, float*, float*, float*, float*, i32*, i32*, float*, float*, float*, float*, float*) #3

; Function Attrs: optsize
declare void @inl2000_(i32*, i32*, i32*, i32*, i32*, float*, float*, i32*, float*, float*, float*, float*, float*, float*, float*) #3

; Function Attrs: optsize
declare void @inl2010_(i32*, i32*, i32*, i32*, i32*, float*, float*, i32*, float*, float*, float*, float*, float*, float*, float*, i32*) #3

; Function Attrs: optsize
declare void @inl2020_(i32*, i32*, i32*, i32*, i32*, float*, float*, i32*, float*, float*, float*, float*, float*, float*, float*) #3

; Function Attrs: optsize
declare void @inl2030_(i32*, i32*, i32*, i32*, i32*, float*, float*, i32*, float*, float*, float*, float*, float*, float*, float*) #3

; Function Attrs: optsize
declare void @inl2100_(i32*, i32*, i32*, i32*, i32*, float*, float*, i32*, float*, float*, float*, float*, float*, float*, float*, i32*, i32*, float*, float*) #3

; Function Attrs: optsize
declare void @inl2110_(i32*, i32*, i32*, i32*, i32*, float*, float*, i32*, float*, float*, float*, float*, float*, float*, float*, i32*, i32*, float*, float*, i32*) #3

; Function Attrs: optsize
declare void @inl2120_(i32*, i32*, i32*, i32*, i32*, float*, float*, i32*, float*, float*, float*, float*, float*, float*, float*, i32*, i32*, float*, float*) #3

; Function Attrs: optsize
declare void @inl2130_(i32*, i32*, i32*, i32*, i32*, float*, float*, i32*, float*, float*, float*, float*, float*, float*, float*, i32*, i32*, float*, float*) #3

; Function Attrs: optsize
declare void @inl2200_(i32*, i32*, i32*, i32*, i32*, float*, float*, i32*, float*, float*, float*, float*, float*, float*, float*, i32*, i32*, float*, float*) #3

; Function Attrs: optsize
declare void @inl2210_(i32*, i32*, i32*, i32*, i32*, float*, float*, i32*, float*, float*, float*, float*, float*, float*, float*, i32*, i32*, float*, float*, i32*) #3

; Function Attrs: optsize
declare void @inl2220_(i32*, i32*, i32*, i32*, i32*, float*, float*, i32*, float*, float*, float*, float*, float*, float*, float*, i32*, i32*, float*, float*) #3

; Function Attrs: optsize
declare void @inl2230_(i32*, i32*, i32*, i32*, i32*, float*, float*, i32*, float*, float*, float*, float*, float*, float*, float*, i32*, i32*, float*, float*) #3

; Function Attrs: optsize
declare void @inl2300_(i32*, i32*, i32*, i32*, i32*, float*, float*, i32*, float*, float*, float*, float*, float*, float*, float*, i32*, i32*, float*, float*, float*, float*) #3

; Function Attrs: optsize
declare void @inl2310_(i32*, i32*, i32*, i32*, i32*, float*, float*, i32*, float*, float*, float*, float*, float*, float*, float*, i32*, i32*, float*, float*, float*, float*, i32*) #3

; Function Attrs: optsize
declare void @inl2320_(i32*, i32*, i32*, i32*, i32*, float*, float*, i32*, float*, float*, float*, float*, float*, float*, float*, i32*, i32*, float*, float*, float*, float*) #3

; Function Attrs: optsize
declare void @inl2330_(i32*, i32*, i32*, i32*, i32*, float*, float*, i32*, float*, float*, float*, float*, float*, float*, float*, i32*, i32*, float*, float*, float*, float*) #3

; Function Attrs: optsize
declare void @inl2400_(i32*, i32*, i32*, i32*, i32*, float*, float*, i32*, float*, float*, float*, float*, float*, float*, float*, i32*, i32*, float*, float*, float*, float*, float*) #3

; Function Attrs: optsize
declare void @inl2410_(i32*, i32*, i32*, i32*, i32*, float*, float*, i32*, float*, float*, float*, float*, float*, float*, float*, i32*, i32*, float*, float*, float*, float*, float*, i32*) #3

; Function Attrs: optsize
declare void @inl2420_(i32*, i32*, i32*, i32*, i32*, float*, float*, i32*, float*, float*, float*, float*, float*, float*, float*, i32*, i32*, float*, float*, float*, float*, float*) #3

; Function Attrs: optsize
declare void @inl2430_(i32*, i32*, i32*, i32*, i32*, float*, float*, i32*, float*, float*, float*, float*, float*, float*, float*, i32*, i32*, float*, float*, float*, float*, float*) #3

; Function Attrs: optsize
declare void @inl3000_(i32*, i32*, i32*, i32*, i32*, float*, float*, i32*, float*, float*, float*, float*, float*, float*, float*) #3

; Function Attrs: optsize
declare void @inl3001_(i32*, i32*, i32*, i32*, i32*, float*, float*, i32*, float*, float*, float*, float*, float*, float*, float*, float*, float*, float*) #3

; Function Attrs: optsize
declare void @inl3010_(i32*, i32*, i32*, i32*, i32*, float*, float*, i32*, float*, float*, float*, float*, float*, float*, float*, i32*) #3

; Function Attrs: optsize
declare void @inl3020_(i32*, i32*, i32*, i32*, i32*, float*, float*, i32*, float*, float*, float*, float*, float*, float*, float*) #3

; Function Attrs: optsize
declare void @inl3030_(i32*, i32*, i32*, i32*, i32*, float*, float*, i32*, float*, float*, float*, float*, float*, float*, float*) #3

; Function Attrs: optsize
declare void @inl3100_(i32*, i32*, i32*, i32*, i32*, float*, float*, i32*, float*, float*, float*, float*, float*, i32*, i32*, float*, float*, float*, float*) #3

; Function Attrs: optsize
declare void @inl3110_(i32*, i32*, i32*, i32*, i32*, float*, float*, i32*, float*, float*, float*, float*, float*, i32*, i32*, float*, float*, float*, float*, i32*) #3

; Function Attrs: optsize
declare void @inl3120_(i32*, i32*, i32*, i32*, i32*, float*, float*, i32*, float*, float*, float*, float*, float*, i32*, i32*, float*, float*, float*, float*) #3

; Function Attrs: optsize
declare void @inl3130_(i32*, i32*, i32*, i32*, i32*, float*, float*, i32*, float*, float*, float*, float*, float*, i32*, i32*, float*, float*, float*, float*) #3

; Function Attrs: optsize
declare void @inl3200_(i32*, i32*, i32*, i32*, i32*, float*, float*, i32*, float*, float*, float*, float*, float*, i32*, i32*, float*, float*, float*, float*) #3

; Function Attrs: optsize
declare void @inl3210_(i32*, i32*, i32*, i32*, i32*, float*, float*, i32*, float*, float*, float*, float*, float*, i32*, i32*, float*, float*, float*, float*, i32*) #3

; Function Attrs: optsize
declare void @inl3220_(i32*, i32*, i32*, i32*, i32*, float*, float*, i32*, float*, float*, float*, float*, float*, i32*, i32*, float*, float*, float*, float*) #3

; Function Attrs: optsize
declare void @inl3230_(i32*, i32*, i32*, i32*, i32*, float*, float*, i32*, float*, float*, float*, float*, float*, i32*, i32*, float*, float*, float*, float*) #3

; Function Attrs: optsize
declare void @inl3300_(i32*, i32*, i32*, i32*, i32*, float*, float*, i32*, float*, float*, float*, float*, float*, i32*, i32*, float*, float*, float*, float*) #3

; Function Attrs: optsize
declare void @inl3301_(i32*, i32*, i32*, i32*, i32*, float*, float*, i32*, float*, float*, float*, float*, float*, i32*, i32*, float*, float*, float*, float*, float*, float*, float*, i32*) #3

; Function Attrs: optsize
declare void @inl3310_(i32*, i32*, i32*, i32*, i32*, float*, float*, i32*, float*, float*, float*, float*, float*, i32*, i32*, float*, float*, float*, float*, i32*) #3

; Function Attrs: optsize
declare void @inl3320_(i32*, i32*, i32*, i32*, i32*, float*, float*, i32*, float*, float*, float*, float*, float*, i32*, i32*, float*, float*, float*, float*) #3

; Function Attrs: optsize
declare void @inl3330_(i32*, i32*, i32*, i32*, i32*, float*, float*, i32*, float*, float*, float*, float*, float*, i32*, i32*, float*, float*, float*, float*) #3

; Function Attrs: optsize
declare void @inl3400_(i32*, i32*, i32*, i32*, i32*, float*, float*, i32*, float*, float*, float*, float*, float*, i32*, i32*, float*, float*, float*, float*, float*) #3

; Function Attrs: optsize
declare void @inl3401_(i32*, i32*, i32*, i32*, i32*, float*, float*, i32*, float*, float*, float*, float*, float*, i32*, i32*, float*, float*, float*, float*, float*, float*, float*, float*, i32*) #3

; Function Attrs: optsize
declare void @inl3410_(i32*, i32*, i32*, i32*, i32*, float*, float*, i32*, float*, float*, float*, float*, float*, i32*, i32*, float*, float*, float*, float*, float*, i32*) #3

; Function Attrs: optsize
declare void @inl3420_(i32*, i32*, i32*, i32*, i32*, float*, float*, i32*, float*, float*, float*, float*, float*, i32*, i32*, float*, float*, float*, float*, float*) #3

; Function Attrs: optsize
declare void @inl3430_(i32*, i32*, i32*, i32*, i32*, float*, float*, i32*, float*, float*, float*, float*, float*, i32*, i32*, float*, float*, float*, float*, float*) #3

; Function Attrs: optsize
declare i8* @nrnb_str(i32) #3

; Function Attrs: nounwind optsize ssp uwtable
define float @do_14(i32 %nbonds, i32* readonly %iatoms, %union.t_iparams* nocapture readonly %iparams, [3 x float]* %x, [3 x float]* %f, %struct.t_forcerec* %fr, %struct.t_graph* nocapture readonly %g, [3 x float]* nocapture readnone %box, float %lambda, float* %dvdlambda, %struct.t_mdatoms* nocapture readonly %md, i32 %ngrp, float* %egnb, float* %egcoul) #4 {
  %1 = alloca float, align 4
  %eps = alloca float, align 4
  %ai = alloca i32, align 4
  %aj = alloca i32, align 4
  %gid = alloca i32, align 4
  %shift14 = alloca i32, align 4
  %j_index = alloca i64, align 8
  %i1 = alloca i32, align 4
  %i3 = alloca i32, align 4
  %nbfp = alloca [18 x float], align 16
  store float %lambda, float* %1, align 4, !tbaa !2
  store i64 4294967296, i64* %j_index, align 8
  store i32 1, i32* %i1, align 4, !tbaa !32
  store i32 3, i32* %i3, align 4, !tbaa !32
  %2 = load float** @do_14.nbfp14, align 8, !tbaa !33
  %3 = icmp eq float* %2, null
  br i1 %3, label %4, label %74

; <label>:4                                       ; preds = %0
  %5 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 63
  %6 = load i32* %5, align 4, !tbaa !34
  %7 = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 11
  %8 = load i32** %7, align 8, !tbaa !20
  %9 = shl i32 %6, 1
  %10 = mul nsw i32 %9, %6
  %11 = tail call i8* @save_calloc(i8* getelementptr inbounds ([5 x i8]* @.str9, i64 0, i64 0), i8* getelementptr inbounds ([64 x i8]* @.str3, i64 0, i64 0), i32 959, i32 %10, i32 4) #9
  %12 = bitcast i8* %11 to float*
  %13 = icmp sgt i32 %nbonds, 0
  br i1 %13, label %.lr.ph.i, label %mk_14parm.exit

.lr.ph.i:                                         ; preds = %4
  %14 = sext i32 %nbonds to i64
  br label %15

; <label>:15                                      ; preds = %65, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %65 ]
  %16 = getelementptr inbounds i32* %iatoms, i64 %indvars.iv.i
  %17 = load i32* %16, align 4, !tbaa !32
  %18 = add nuw nsw i64 %indvars.iv.i, 1
  %19 = getelementptr inbounds i32* %iatoms, i64 %18
  %20 = load i32* %19, align 4, !tbaa !32
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32* %8, i64 %21
  %23 = load i32* %22, align 4, !tbaa !32
  %24 = add nuw nsw i64 %indvars.iv.i, 2
  %25 = getelementptr inbounds i32* %iatoms, i64 %24
  %26 = load i32* %25, align 4, !tbaa !32
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32* %8, i64 %27
  %29 = load i32* %28, align 4, !tbaa !32
  %30 = mul nsw i32 %23, %6
  %31 = add nsw i32 %29, %30
  %32 = shl nsw i32 %31, 1
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds float* %12, i64 %33
  %35 = load float* %34, align 4, !tbaa !2
  %36 = or i32 %32, 1
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds float* %12, i64 %37
  %39 = load float* %38, align 4, !tbaa !2
  %40 = sext i32 %17 to i64
  %41 = getelementptr inbounds %union.t_iparams* %iparams, i64 %40
  %42 = bitcast %union.t_iparams* %41 to i32*
  %43 = load i32* %42, align 4, !tbaa !35
  %44 = bitcast float* %34 to i32*
  store i32 %43, i32* %44, align 4, !tbaa !2
  %45 = getelementptr inbounds %union.t_iparams* %iparams, i64 %40, i32 0, i32 1
  %46 = bitcast float* %45 to i32*
  %47 = load i32* %46, align 4, !tbaa !37
  %48 = bitcast float* %38 to i32*
  store i32 %47, i32* %48, align 4, !tbaa !2
  %fabsf.i = tail call float @fabsf(float %35) #6
  %49 = fpext float %fabsf.i to double
  %50 = fcmp ogt double %49, 1.200000e-38
  %51 = bitcast i32 %43 to float
  %52 = bitcast i32 %47 to float
  br i1 %50, label %56, label %53

; <label>:53                                      ; preds = %15
  %fabsf1.i = tail call float @fabsf(float %39) #6
  %54 = fpext float %fabsf1.i to double
  %55 = fcmp ogt double %54, 1.200000e-38
  br i1 %55, label %56, label %65

; <label>:56                                      ; preds = %53, %15
  %57 = fsub float %35, %51
  %fabsf2.i = tail call float @fabsf(float %57) #6
  %58 = fpext float %fabsf2.i to double
  %59 = fcmp ogt double %58, 1.200000e-38
  br i1 %59, label %64, label %60

; <label>:60                                      ; preds = %56
  %61 = fsub float %39, %52
  %fabsf3.i = tail call float @fabsf(float %61) #6
  %62 = fpext float %fabsf3.i to double
  %63 = fcmp ogt double %62, 1.200000e-38
  br i1 %63, label %64, label %65

; <label>:64                                      ; preds = %60, %56
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([126 x i8]* @.str10, i64 0, i64 0), i32 %20, i32 %26) #9
  br label %65

; <label>:65                                      ; preds = %64, %60, %53
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 3
  %66 = icmp slt i64 %indvars.iv.next.i, %14
  br i1 %66, label %15, label %mk_14parm.exit

mk_14parm.exit:                                   ; preds = %65, %4
  store i8* %11, i8** bitcast (float** @do_14.nbfp14 to i8**), align 8, !tbaa !33
  %67 = load %struct.__sFILE** @debug, align 8, !tbaa !33
  %68 = icmp eq %struct.__sFILE* %67, null
  br i1 %68, label %74, label %69

; <label>:69                                      ; preds = %mk_14parm.exit
  %70 = load i32* %5, align 4, !tbaa !34
  %71 = sitofp i32 %70 to float
  %72 = fmul float %71, %71
  %73 = fptosi float %72 to i32
  tail call void @pr_rvec(%struct.__sFILE* %67, i32 0, i8* getelementptr inbounds ([7 x i8]* @.str5, i64 0, i64 0), float* %12, i32 %73) #9
  br label %74

; <label>:74                                      ; preds = %mk_14parm.exit, %69, %0
  store i32 13, i32* %shift14, align 4, !tbaa !32
  %75 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 6
  %76 = load float* %75, align 4, !tbaa !38
  %77 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 12
  %78 = load float* %77, align 4, !tbaa !39
  %79 = fmul float %76, %78
  store float %79, float* %eps, align 4, !tbaa !2
  %80 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 15
  %81 = load float* %80, align 4, !tbaa !40
  %82 = fmul float %81, %81
  %83 = sext i32 %nbonds to i64
  %84 = getelementptr inbounds i32* %iatoms, i64 %83
  %85 = icmp sgt i32 %nbonds, 0
  br i1 %85, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %74
  %86 = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 15
  %87 = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 9
  %88 = bitcast i64* %j_index to i32*
  %89 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 48
  %90 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 58
  %91 = getelementptr inbounds [3 x float]* %x, i64 0, i64 0
  %92 = getelementptr inbounds [3 x float]* %f, i64 0, i64 0
  %93 = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 6
  %94 = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 11
  %95 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 63
  %96 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 17
  %97 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 21
  %98 = getelementptr inbounds %struct.t_graph* %g, i64 0, i32 3
  %99 = getelementptr inbounds %struct.t_graph* %g, i64 0, i32 7
  %100 = bitcast [18 x float]* %nbfp to i8*
  %101 = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 12
  %102 = getelementptr inbounds [18 x float]* %nbfp, i64 0, i64 4
  %103 = bitcast float* %102 to i32*
  %104 = getelementptr inbounds [18 x float]* %nbfp, i64 0, i64 12
  %105 = bitcast float* %104 to i32*
  %106 = getelementptr inbounds [18 x float]* %nbfp, i64 0, i64 5
  %107 = bitcast float* %106 to i32*
  %108 = getelementptr inbounds [18 x float]* %nbfp, i64 0, i64 13
  %109 = bitcast float* %108 to i32*
  %110 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 30
  %111 = getelementptr inbounds [18 x float]* %nbfp, i64 0, i64 0
  %112 = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 7
  %113 = fpext float %82 to double
  br label %114

; <label>:114                                     ; preds = %.lr.ph, %339
  %iatom.02 = phi i32* [ %iatoms, %.lr.ph ], [ %340, %339 ]
  %115 = load i32* %iatom.02, align 4, !tbaa !32
  %116 = getelementptr inbounds i32* %iatom.02, i64 1
  %117 = load i32* %116, align 4, !tbaa !32
  store i32 %117, i32* %ai, align 4, !tbaa !32
  %118 = getelementptr inbounds i32* %iatom.02, i64 2
  %119 = load i32* %118, align 4, !tbaa !32
  store i32 %119, i32* %aj, align 4, !tbaa !32
  %120 = sext i32 %117 to i64
  %121 = getelementptr inbounds [3 x float]* %x, i64 %120, i64 0
  %122 = sext i32 %119 to i64
  %123 = getelementptr inbounds [3 x float]* %x, i64 %122, i64 0
  %124 = load float* %123, align 4, !tbaa !2
  %125 = load float* %121, align 4, !tbaa !2
  %126 = fsub float %124, %125
  %127 = fmul float %126, %126
  %128 = getelementptr inbounds [3 x float]* %x, i64 %122, i64 1
  %129 = load float* %128, align 4, !tbaa !2
  %130 = getelementptr inbounds [3 x float]* %x, i64 %120, i64 1
  %131 = load float* %130, align 4, !tbaa !2
  %132 = fsub float %129, %131
  %133 = fmul float %132, %132
  %134 = fadd float %127, %133
  %135 = getelementptr inbounds [3 x float]* %x, i64 %122, i64 2
  %136 = load float* %135, align 4, !tbaa !2
  %137 = getelementptr inbounds [3 x float]* %x, i64 %120, i64 2
  %138 = load float* %137, align 4, !tbaa !2
  %139 = fsub float %136, %138
  %140 = fmul float %139, %139
  %141 = fadd float %134, %140
  %142 = getelementptr inbounds [3 x float]* %f, i64 %120, i64 0
  %143 = load float* %142, align 4, !tbaa !2
  %144 = getelementptr inbounds [3 x float]* %f, i64 %120, i64 1
  %145 = load float* %144, align 4, !tbaa !2
  %146 = getelementptr inbounds [3 x float]* %f, i64 %120, i64 2
  %147 = load float* %146, align 4, !tbaa !2
  %148 = fcmp ult float %141, %82
  br i1 %148, label %186, label %149

; <label>:149                                     ; preds = %114
  %.b = load i1* @do_14.bWarn, align 1
  br i1 %.b, label %155, label %150

; <label>:150                                     ; preds = %149
  %151 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !33
  %152 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %151, i8* getelementptr inbounds ([53 x i8]* @.str6, i64 0, i64 0), double %113) #9
  %153 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !33
  %154 = call i64 @fwrite(i8* getelementptr inbounds ([86 x i8]* @.str7, i64 0, i64 0), i64 85, i64 1, %struct.__sFILE* %153)
  store i1 true, i1* @do_14.bWarn, align 1
  br label %155

; <label>:155                                     ; preds = %150, %149
  %156 = load %struct.__sFILE** @debug, align 8, !tbaa !33
  %157 = icmp eq %struct.__sFILE* %156, null
  br i1 %157, label %339, label %158

; <label>:158                                     ; preds = %155
  %159 = load i32* %ai, align 4, !tbaa !32
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds [3 x float]* %x, i64 %160, i64 0
  %162 = load float* %161, align 4, !tbaa !2
  %163 = fpext float %162 to double
  %164 = getelementptr inbounds [3 x float]* %x, i64 %160, i64 1
  %165 = load float* %164, align 4, !tbaa !2
  %166 = fpext float %165 to double
  %167 = getelementptr inbounds [3 x float]* %x, i64 %160, i64 2
  %168 = load float* %167, align 4, !tbaa !2
  %169 = fpext float %168 to double
  %170 = load i32* %aj, align 4, !tbaa !32
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds [3 x float]* %x, i64 %171, i64 0
  %173 = load float* %172, align 4, !tbaa !2
  %174 = fpext float %173 to double
  %175 = getelementptr inbounds [3 x float]* %x, i64 %171, i64 1
  %176 = load float* %175, align 4, !tbaa !2
  %177 = fpext float %176 to double
  %178 = getelementptr inbounds [3 x float]* %x, i64 %171, i64 2
  %179 = load float* %178, align 4, !tbaa !2
  %180 = fpext float %179 to double
  %181 = add nsw i32 %159, 1
  %182 = add nsw i32 %170, 1
  %183 = fpext float %141 to double
  %184 = call double @sqrt(double %183) #10
  %185 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %156, i8* getelementptr inbounds ([82 x i8]* @.str8, i64 0, i64 0), double %163, double %166, double %169, double %174, double %177, double %180, i32 %181, i32 %182, double %184) #9
  br label %339

; <label>:186                                     ; preds = %114
  %187 = load i16** %86, align 8, !tbaa !41
  %188 = getelementptr inbounds i16* %187, i64 %120
  %189 = load i16* %188, align 2, !tbaa !42
  %190 = zext i16 %189 to i32
  %191 = getelementptr inbounds i16* %187, i64 %122
  %192 = load i16* %191, align 2, !tbaa !42
  %193 = zext i16 %192 to i32
  %194 = icmp ult i16 %189, %192
  br i1 %194, label %195, label %198

; <label>:195                                     ; preds = %186
  %196 = mul nsw i32 %190, %ngrp
  %197 = add nsw i32 %196, %193
  br label %201

; <label>:198                                     ; preds = %186
  %199 = mul nsw i32 %193, %ngrp
  %200 = add nsw i32 %199, %190
  br label %201

; <label>:201                                     ; preds = %198, %195
  %202 = phi i32 [ %197, %195 ], [ %200, %198 ]
  store i32 %202, i32* %gid, align 4, !tbaa !32
  %203 = load i32** %87, align 8, !tbaa !44
  %204 = getelementptr inbounds i32* %203, i64 %120
  %205 = load i32* %204, align 4, !tbaa !32
  %206 = icmp eq i32 %205, 0
  br i1 %206, label %207, label %211

; <label>:207                                     ; preds = %201
  %208 = getelementptr inbounds i32* %203, i64 %122
  %209 = load i32* %208, align 4, !tbaa !32
  %210 = icmp eq i32 %209, 0
  br i1 %210, label %270, label %211

; <label>:211                                     ; preds = %207, %201
  call void @llvm.lifetime.start(i64 72, i8* %100) #7
  %212 = load i32** %94, align 8, !tbaa !20
  %213 = getelementptr inbounds i32* %212, i64 %120
  %214 = load i32* %213, align 4, !tbaa !32
  %215 = load i32** %101, align 8, !tbaa !25
  %216 = getelementptr inbounds i32* %215, i64 %120
  %217 = load i32* %216, align 4, !tbaa !32
  %218 = getelementptr inbounds i32* %212, i64 %122
  %219 = load i32* %218, align 4, !tbaa !32
  %220 = getelementptr inbounds i32* %215, i64 %122
  %221 = load i32* %220, align 4, !tbaa !32
  store i32 0, i32* %213, align 4, !tbaa !32
  %222 = load i32* %ai, align 4, !tbaa !32
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds i32* %215, i64 %223
  store i32 1, i32* %224, align 4, !tbaa !32
  %225 = load i32* %aj, align 4, !tbaa !32
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds i32* %212, i64 %226
  store i32 2, i32* %227, align 4, !tbaa !32
  %228 = load i32* %aj, align 4, !tbaa !32
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds i32* %215, i64 %229
  store i32 3, i32* %230, align 4, !tbaa !32
  %231 = sext i32 %115 to i64
  %232 = getelementptr inbounds %union.t_iparams* %iparams, i64 %231
  %233 = bitcast %union.t_iparams* %232 to i32*
  %234 = load i32* %233, align 4, !tbaa !35
  store i32 %234, i32* %103, align 16, !tbaa !2
  %235 = getelementptr inbounds %union.t_iparams* %iparams, i64 %231, i32 0, i32 2
  %236 = bitcast float* %235 to i32*
  %237 = load i32* %236, align 4, !tbaa !45
  store i32 %237, i32* %105, align 16, !tbaa !2
  %238 = getelementptr inbounds %union.t_iparams* %iparams, i64 %231, i32 0, i32 1
  %239 = bitcast float* %238 to i32*
  %240 = load i32* %239, align 4, !tbaa !37
  store i32 %240, i32* %107, align 4, !tbaa !2
  %241 = getelementptr inbounds %union.t_iparams* %iparams, i64 %231, i32 0, i32 3
  %242 = bitcast float* %241 to i32*
  %243 = load i32* %242, align 4, !tbaa !46
  store i32 %243, i32* %109, align 4, !tbaa !2
  %244 = load float* %110, align 4, !tbaa !47
  %245 = fcmp ogt float %244, 0.000000e+00
  br i1 %245, label %246, label %247

; <label>:246                                     ; preds = %211
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([50 x i8]* @.str, i64 0, i64 0)) #9
  br label %255

; <label>:247                                     ; preds = %211
  %248 = load [3 x float]** %89, align 8, !tbaa !17
  %249 = getelementptr inbounds [3 x float]* %248, i64 0, i64 0
  %250 = load [3 x float]** %90, align 8, !tbaa !48
  %251 = getelementptr inbounds [3 x float]* %250, i64 0, i64 0
  %252 = load float** %93, align 8, !tbaa !26
  %253 = load float** %97, align 8, !tbaa !49
  %254 = load float** %112, align 8, !tbaa !28
  call void @inl3301_(i32* %i1, i32* %ai, i32* %88, i32* %aj, i32* %shift14, float* %249, float* %251, i32* %gid, float* %91, float* %92, float* %252, float* %eps, float* %egcoul, i32* %212, i32* %i3, float* %111, float* %egnb, float* %96, float* %253, float* %1, float* %dvdlambda, float* %254, i32* %215) #9
  br label %255

; <label>:255                                     ; preds = %247, %246
  %256 = load i32* %ai, align 4, !tbaa !32
  %257 = sext i32 %256 to i64
  %258 = load i32** %94, align 8, !tbaa !20
  %259 = getelementptr inbounds i32* %258, i64 %257
  store i32 %214, i32* %259, align 4, !tbaa !32
  %260 = load i32* %ai, align 4, !tbaa !32
  %261 = sext i32 %260 to i64
  %262 = load i32** %101, align 8, !tbaa !25
  %263 = getelementptr inbounds i32* %262, i64 %261
  store i32 %217, i32* %263, align 4, !tbaa !32
  %264 = load i32* %aj, align 4, !tbaa !32
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds i32* %258, i64 %265
  store i32 %219, i32* %266, align 4, !tbaa !32
  %267 = load i32* %aj, align 4, !tbaa !32
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds i32* %262, i64 %268
  store i32 %221, i32* %269, align 4, !tbaa !32
  call void @llvm.lifetime.end(i64 72, i8* %100) #7
  br label %279

; <label>:270                                     ; preds = %207
  %271 = load [3 x float]** %89, align 8, !tbaa !17
  %272 = getelementptr inbounds [3 x float]* %271, i64 0, i64 0
  %273 = load [3 x float]** %90, align 8, !tbaa !48
  %274 = getelementptr inbounds [3 x float]* %273, i64 0, i64 0
  %275 = load float** %93, align 8, !tbaa !26
  %276 = load i32** %94, align 8, !tbaa !20
  %277 = load float** @do_14.nbfp14, align 8, !tbaa !33
  %278 = load float** %97, align 8, !tbaa !49
  call void @inl3300_(i32* %i1, i32* %ai, i32* %88, i32* %aj, i32* %shift14, float* %272, float* %274, i32* %gid, float* %91, float* %92, float* %275, float* %eps, float* %egcoul, i32* %276, i32* %95, float* %277, float* %egnb, float* %96, float* %278) #9
  br label %279

; <label>:279                                     ; preds = %270, %255
  %280 = load i32* %ai, align 4, !tbaa !32
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds [3 x float]* %f, i64 %281, i64 0
  %283 = load float* %282, align 4, !tbaa !2
  %284 = fsub float %283, %143
  %285 = getelementptr inbounds [3 x float]* %f, i64 %281, i64 1
  %286 = load float* %285, align 4, !tbaa !2
  %287 = fsub float %286, %145
  %288 = getelementptr inbounds [3 x float]* %f, i64 %281, i64 2
  %289 = load float* %288, align 4, !tbaa !2
  %290 = fsub float %289, %147
  %291 = load i32* %98, align 4, !tbaa !50
  %292 = sub nsw i32 %280, %291
  %293 = sext i32 %292 to i64
  %294 = load [3 x i32]** %99, align 8, !tbaa !52
  %295 = getelementptr inbounds [3 x i32]* %294, i64 %293, i64 0
  %296 = load i32* %aj, align 4, !tbaa !32
  %297 = sub nsw i32 %296, %291
  %298 = sext i32 %297 to i64
  %299 = getelementptr inbounds [3 x i32]* %294, i64 %298, i64 0
  %300 = load i32* %295, align 4, !tbaa !32
  %301 = load i32* %299, align 4, !tbaa !32
  %302 = getelementptr inbounds [3 x i32]* %294, i64 %293, i64 1
  %303 = load i32* %302, align 4, !tbaa !32
  %304 = getelementptr inbounds [3 x i32]* %294, i64 %298, i64 1
  %305 = load i32* %304, align 4, !tbaa !32
  %306 = getelementptr inbounds [3 x i32]* %294, i64 %293, i64 2
  %307 = load i32* %306, align 4, !tbaa !32
  %308 = getelementptr inbounds [3 x i32]* %294, i64 %298, i64 2
  %309 = load i32* %308, align 4, !tbaa !32
  %310 = sub nsw i32 %307, %309
  %311 = mul i32 %310, 3
  %312 = add i32 %303, 3
  %313 = sub i32 %312, %305
  %314 = add i32 %313, %311
  %315 = mul i32 %314, 3
  %316 = add i32 %300, 4
  %317 = sub i32 %316, %301
  %318 = add i32 %317, %315
  %319 = sext i32 %318 to i64
  %320 = load [3 x float]** %90, align 8, !tbaa !48
  %321 = getelementptr inbounds [3 x float]* %320, i64 %319, i64 0
  %322 = load float* %321, align 4, !tbaa !2
  %323 = fadd float %284, %322
  %324 = getelementptr inbounds [3 x float]* %320, i64 %319, i64 1
  %325 = load float* %324, align 4, !tbaa !2
  %326 = fadd float %287, %325
  %327 = getelementptr inbounds [3 x float]* %320, i64 %319, i64 2
  %328 = load float* %327, align 4, !tbaa !2
  %329 = fadd float %290, %328
  store float %323, float* %321, align 4, !tbaa !2
  store float %326, float* %324, align 4, !tbaa !2
  store float %329, float* %327, align 4, !tbaa !2
  %330 = getelementptr inbounds [3 x float]* %320, i64 13, i64 0
  %331 = load float* %330, align 4, !tbaa !2
  %332 = fsub float %331, %284
  %333 = getelementptr inbounds [3 x float]* %320, i64 13, i64 1
  %334 = load float* %333, align 4, !tbaa !2
  %335 = fsub float %334, %287
  %336 = getelementptr inbounds [3 x float]* %320, i64 13, i64 2
  %337 = load float* %336, align 4, !tbaa !2
  %338 = fsub float %337, %290
  store float %332, float* %330, align 4, !tbaa !2
  store float %335, float* %333, align 4, !tbaa !2
  store float %338, float* %336, align 4, !tbaa !2
  br label %339

; <label>:339                                     ; preds = %155, %279, %158
  %340 = getelementptr inbounds i32* %iatom.02, i64 3
  %341 = icmp ult i32* %340, %84
  br i1 %341, label %114, label %._crit_edge

._crit_edge:                                      ; preds = %339, %74
  ret float 0.000000e+00
}

; Function Attrs: optsize
declare void @pr_rvec(%struct.__sFILE*, i32, i8*, float*, i32) #3

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct.__sFILE* nocapture, i8* nocapture readonly, ...) #5

; Function Attrs: nounwind optsize readnone
declare double @sqrt(double) #6

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #7

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #7

; Function Attrs: optsize
declare i8* @save_calloc(i8*, i8*, i32, i32, i32) #3

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct.__sFILE* nocapture) #7

declare float @fabsf(float)

attributes #0 = { alwaysinline nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { alwaysinline nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind }
attributes #8 = { readnone }
attributes #9 = { nounwind optsize }
attributes #10 = { nounwind optsize readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!2 = !{!3, !3, i64 0}
!3 = !{!"float", !4, i64 0}
!4 = !{!"omnipotent char", !5, i64 0}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!7, !7, i64 0}
!7 = !{!"double", !4, i64 0}
!8 = !{!9, !10, i64 4}
!9 = !{!"", !10, i64 0, !10, i64 4, !10, i64 8, !10, i64 12, !10, i64 16, !10, i64 20, !10, i64 24, !11, i64 32, !11, i64 40, !11, i64 48, !11, i64 56, !11, i64 64, !11, i64 72, !10, i64 80, !11, i64 88}
!10 = !{!"int", !4, i64 0}
!11 = !{!"any pointer", !4, i64 0}
!12 = !{!9, !10, i64 0}
!13 = !{!9, !11, i64 32}
!14 = !{!9, !11, i64 56}
!15 = !{!9, !11, i64 64}
!16 = !{!9, !11, i64 48}
!17 = !{!18, !11, i64 232}
!18 = !{!"", !10, i64 0, !3, i64 4, !3, i64 8, !3, i64 12, !3, i64 16, !3, i64 20, !3, i64 24, !10, i64 28, !3, i64 32, !3, i64 36, !3, i64 40, !3, i64 44, !3, i64 48, !10, i64 52, !10, i64 56, !3, i64 60, !10, i64 64, !3, i64 68, !11, i64 72, !11, i64 80, !11, i64 88, !11, i64 96, !3, i64 104, !3, i64 108, !11, i64 112, !3, i64 120, !3, i64 124, !3, i64 128, !3, i64 132, !10, i64 136, !3, i64 140, !3, i64 144, !10, i64 148, !10, i64 152, !10, i64 156, !10, i64 160, !10, i64 164, !10, i64 168, !10, i64 172, !10, i64 176, !4, i64 180, !10, i64 192, !10, i64 196, !10, i64 200, !10, i64 204, !11, i64 208, !11, i64 216, !11, i64 224, !11, i64 232, !4, i64 240, !4, i64 1488, !10, i64 2736, !10, i64 2740, !11, i64 2744, !11, i64 2752, !11, i64 2760, !10, i64 2768, !3, i64 2772, !11, i64 2776, !10, i64 2784, !11, i64 2792, !11, i64 2800, !10, i64 2808, !10, i64 2812, !10, i64 2816, !11, i64 2824, !11, i64 2832, !3, i64 2840}
!19 = !{!9, !11, i64 40}
!20 = !{!21, !11, i64 80}
!21 = !{!"", !3, i64 0, !10, i64 4, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !11, i64 48, !11, i64 56, !11, i64 64, !11, i64 72, !11, i64 80, !11, i64 88, !11, i64 96, !11, i64 104, !11, i64 112, !11, i64 120, !11, i64 128, !11, i64 136, !11, i64 144, !11, i64 152, !11, i64 160, !11, i64 168}
!22 = !{!18, !11, i64 2824}
!23 = !{!9, !11, i64 72}
!24 = !{!18, !11, i64 80}
!25 = !{!21, !11, i64 88}
!26 = !{!21, !11, i64 40}
!27 = !{!18, !11, i64 72}
!28 = !{!21, !11, i64 48}
!29 = !{!18, !11, i64 88}
!30 = !{!9, !10, i64 24}
!31 = !{!9, !10, i64 12}
!32 = !{!10, !10, i64 0}
!33 = !{!11, !11, i64 0}
!34 = !{!18, !10, i64 2812}
!35 = !{!36, !3, i64 0}
!36 = !{!"", !3, i64 0, !3, i64 4, !3, i64 8, !3, i64 12}
!37 = !{!36, !3, i64 4}
!38 = !{!18, !3, i64 24}
!39 = !{!18, !3, i64 48}
!40 = !{!18, !3, i64 60}
!41 = !{!21, !11, i64 112}
!42 = !{!43, !43, i64 0}
!43 = !{!"short", !4, i64 0}
!44 = !{!21, !11, i64 64}
!45 = !{!36, !3, i64 8}
!46 = !{!36, !3, i64 12}
!47 = !{!18, !3, i64 140}
!48 = !{!18, !11, i64 2776}
!49 = !{!18, !11, i64 96}
!50 = !{!51, !10, i64 12}
!51 = !{!"", !10, i64 0, !10, i64 4, !10, i64 8, !10, i64 12, !10, i64 16, !11, i64 24, !11, i64 32, !11, i64 40}
!52 = !{!51, !11, i64 40}
