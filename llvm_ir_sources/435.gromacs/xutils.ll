; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/xutils.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct.t_range = type { i32, i32, i32, float, float, float, float }
%struct.t_genalg = type { i32, i32, i32, i32, i32, i32, i32, float, float, float**, float**, float*, float*, float*, float*, float*, float* }
%struct.t_commrec = type { i32, i32, i32, i32, i32, i32 }
%struct.t_nsborder = type { i32, i32, i32, i32, i32, i32, i32, [256 x i32], [256 x i32], [256 x i32], [256 x i32] }
%struct.t_topology = type { i8**, %struct.t_idef, %struct.t_atoms, [3 x %struct.t_block], %struct.t_symtab }
%struct.t_idef = type { i32, i32, i32, i32*, %union.t_iparams*, [44 x %struct.t_ilist] }
%union.t_iparams = type { %struct.anon.5 }
%struct.anon.5 = type { float, float, float, float, float, float }
%struct.t_ilist = type { i32, [256 x i32], i32* }
%struct.t_atoms = type { i32, %struct.t_atom*, i8***, i8***, i8***, i32, i8***, i32, i8***, %struct.t_block, [9 x %struct.t_grps], %struct.t_pdbinfo* }
%struct.t_atom = type { float, float, float, float, i16, i16, i32, i32, [9 x i8], i8 }
%struct.t_block = type { [256 x i32], i32, i32*, i32, i32* }
%struct.t_grps = type { i32, i32* }
%struct.t_pdbinfo = type { i32, i32, i8, [6 x i8], float, float, i32, [6 x i32] }
%struct.t_symtab = type { i32, %struct.symbuf* }
%struct.symbuf = type { i32, i8**, %struct.symbuf* }
%struct.t_mdatoms = type { float, i32, float*, float*, float*, float*, float*, float*, float*, i32*, i32*, i32*, i32*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16* }
%struct.t_filenm = type { i32, i8*, i8*, i64 }
%struct.t_forcerec = type { i32, float, float, float, float, float, float, i32, float, float, float, float, float, i32, i32, float, i32, float, float*, float*, float*, float*, float, float, float*, float, float, float, float, i32, float, float, i32, i32, i32, i32, i32, i32, i32, i32, [3 x float], i32, i32, i32, i32, i32*, i32*, [3 x float]*, [3 x float]*, [13 x %struct.t_nblist], [13 x %struct.t_nblist], i32, i32, [3 x float]*, [3 x float]*, [3 x float]*, i32, float, [3 x float]*, i32, i32*, float*, i32, i32, i32, float*, i32*, float }
%struct.t_nblist = type { i32, i32, i32, i32, i32, i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32, i32* }

@tol = internal unnamed_addr global float 0x3FB99999A0000000, align 4
@epot = internal unnamed_addr global float 0.000000e+00, align 4
@npow = internal unnamed_addr global float 1.200000e+01, align 4
@forcemax = internal unnamed_addr global float 1.000000e+02, align 4
@ratio = internal unnamed_addr global float 0x3F847AE140000000, align 4
@bLogEps = internal unnamed_addr global i32 0, align 4
@debug = external global %struct.__sFILE*
@.str = private unnamed_addr constant [21 x i8] c"type: %s, value: %g\0A\00", align 1
@esenm = internal unnamed_addr constant [5 x i8*] [i8* getelementptr inbounds ([4 x i8]* @.str8, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str9, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str10, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str11, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str12, i32 0, i32 0)], align 16
@update_forcefield.ntry = internal unnamed_addr global i32 0, align 4
@update_forcefield.ntried = internal unnamed_addr global i32 0, align 4
@nparm = internal global i32 0, align 4
@range = internal unnamed_addr global %struct.t_range* null, align 8
@.str1 = private unnamed_addr constant [32 x i8] c"No correct parameter info in %s\00", align 1
@.str2 = private unnamed_addr constant [10 x i8] c"param_val\00", align 1
@.str3 = private unnamed_addr constant [66 x i8] c"../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/xutils.c\00", align 1
@param_val = internal unnamed_addr global i32* null, align 8
@.str4 = private unnamed_addr constant [4 x i8] c"-ga\00", align 1
@ga = internal unnamed_addr global %struct.t_genalg* null, align 8
@stdlog = external global %struct.__sFILE*
@.str5 = private unnamed_addr constant [57 x i8] c"Going to try %d different combinations of %d parameters\0A\00", align 1
@.str6 = private unnamed_addr constant [39 x i8] c"Finished with %d out of %d iterations\0A\00", align 1
@gmx_parallel = external global i32
@__stderrp = external global %struct.__sFILE*
@.str8 = private unnamed_addr constant [4 x i8] c"SIG\00", align 1
@.str9 = private unnamed_addr constant [4 x i8] c"EPS\00", align 1
@.str10 = private unnamed_addr constant [6 x i8] c"BHAMA\00", align 1
@.str11 = private unnamed_addr constant [6 x i8] c"BHAMB\00", align 1
@.str12 = private unnamed_addr constant [6 x i8] c"BHAMC\00", align 1
@.str13 = private unnamed_addr constant [6 x i8] c"range\00", align 1
@.str14 = private unnamed_addr constant [13 x i8] c"%d%d%d%lf%lf\00", align 1
@.str15 = private unnamed_addr constant [71 x i8] c"When using logarithmic epsilon increments the minimumvalue must be > 0\00", align 1
@.str16 = private unnamed_addr constant [36 x i8] c"found %d variables to iterate over\0A\00", align 1
@.str17 = private unnamed_addr constant [10 x i8] c"lines[nr]\00", align 1
@.str18 = private unnamed_addr constant [6 x i8] c"lines\00", align 1
@.str19 = private unnamed_addr constant [22 x i8] c"rmin (%f) > rmax (%f)\00", align 1
@.str20 = private unnamed_addr constant [22 x i8] c"np (%d) should be > 0\00", align 1
@.str21 = private unnamed_addr constant [33 x i8] c"If rmax > rmin, np should be > 1\00", align 1
@.str22 = private unnamed_addr constant [26 x i8] c"ptype (%d) should be < %d\00", align 1
@update_ff.sigma = internal unnamed_addr global double* null, align 8
@update_ff.eps = internal unnamed_addr global double* null, align 8
@update_ff.c6 = internal unnamed_addr global double* null, align 8
@update_ff.cn = internal unnamed_addr global double* null, align 8
@update_ff.bhama = internal unnamed_addr global double* null, align 8
@update_ff.bhamb = internal unnamed_addr global double* null, align 8
@update_ff.bhamc = internal unnamed_addr global double* null, align 8
@.str23 = private unnamed_addr constant [6 x i8] c"bhama\00", align 1
@.str24 = private unnamed_addr constant [6 x i8] c"bhamb\00", align 1
@.str25 = private unnamed_addr constant [6 x i8] c"bhamc\00", align 1
@.str26 = private unnamed_addr constant [6 x i8] c"sigma\00", align 1
@.str27 = private unnamed_addr constant [4 x i8] c"eps\00", align 1
@.str28 = private unnamed_addr constant [3 x i8] c"c6\00", align 1
@.str29 = private unnamed_addr constant [3 x i8] c"cn\00", align 1
@.str30 = private unnamed_addr constant [14 x i8] c"Unknown ptype\00", align 1
@.str31 = private unnamed_addr constant [35 x i8] c"c6[%d] = %12.5e  c12[%d] = %12.5e\0A\00", align 1
@.str32 = private unnamed_addr constant [40 x i8] c"atnr = %2d  sigma = %8.4f  eps = %8.4f\0A\00", align 1
@.str33 = private unnamed_addr constant [52 x i8] c"i: %2d  j: %2d  A:  %10.5e  B:  %10.5e  C:  %10.5e\0A\00", align 1
@.str34 = private unnamed_addr constant [42 x i8] c"i: %2d  j: %2d  c6:  %10.5e  cn:  %10.5e\0A\00", align 1
@.str35 = private unnamed_addr constant [49 x i8] c"Value (%d) out of range for value_range (max %d)\00", align 1
@print_grid.bFirst = internal unnamed_addr global i1 false
@print_grid.desc = internal unnamed_addr constant [5 x i8*] [i8* getelementptr inbounds ([73 x i8]* @.str36, i32 0, i32 0), i8* getelementptr inbounds ([69 x i8]* @.str37, i32 0, i32 0), i8* getelementptr inbounds ([73 x i8]* @.str38, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8]* @.str39, i32 0, i32 0), i8* getelementptr inbounds ([73 x i8]* @.str36, i32 0, i32 0)], align 16
@.str36 = private unnamed_addr constant [73 x i8] c"------------------------------------------------------------------------\00", align 1
@.str37 = private unnamed_addr constant [69 x i8] c"In the output from the forcefield scan we have the potential energy,\00", align 1
@.str38 = private unnamed_addr constant [73 x i8] c"then the root mean square force on the atoms, and finally the parameters\00", align 1
@.str39 = private unnamed_addr constant [44 x i8] c"in the order they appear in the input file.\00", align 1
@.str40 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str41 = private unnamed_addr constant [20 x i8] c"%8.3f  %8.3f  %8.3f\00", align 1
@.str42 = private unnamed_addr constant [9 x i8] c" %s %10g\00", align 1
@.str43 = private unnamed_addr constant [5 x i8] c" FF\0A\00", align 1

; Function Attrs: alwaysinline nounwind optsize ssp uwtable
define i32 @__sputc(i32 %_c, %struct.__sFILE* %_p) #0 {
  %1 = getelementptr inbounds %struct.__sFILE* %_p, i64 0, i32 2
  %2 = load i32* %1, align 4, !tbaa !2
  %3 = add nsw i32 %2, -1
  store i32 %3, i32* %1, align 4, !tbaa !2
  %4 = icmp sgt i32 %2, 0
  br i1 %4, label %._crit_edge, label %5

._crit_edge:                                      ; preds = %0
  %.pre = and i32 %_c, 255
  br label %10

; <label>:5                                       ; preds = %0
  %6 = getelementptr inbounds %struct.__sFILE* %_p, i64 0, i32 6
  %7 = load i32* %6, align 4, !tbaa !11
  %8 = icmp sle i32 %2, %7
  %sext.mask = and i32 %_c, 255
  %9 = icmp eq i32 %sext.mask, 10
  %or.cond = or i1 %9, %8
  br i1 %or.cond, label %15, label %10

; <label>:10                                      ; preds = %._crit_edge, %5
  %.pre-phi = phi i32 [ %.pre, %._crit_edge ], [ %sext.mask, %5 ]
  %11 = trunc i32 %_c to i8
  %12 = getelementptr inbounds %struct.__sFILE* %_p, i64 0, i32 0
  %13 = load i8** %12, align 8, !tbaa !12
  %14 = getelementptr inbounds i8* %13, i64 1
  store i8* %14, i8** %12, align 8, !tbaa !12
  store i8 %11, i8* %13, align 1, !tbaa !13
  br label %17

; <label>:15                                      ; preds = %5
  %16 = tail call i32 @__swbuf(i32 %_c, %struct.__sFILE* %_p) #10
  br label %17

; <label>:17                                      ; preds = %15, %10
  %.0 = phi i32 [ %.pre-phi, %10 ], [ %16, %15 ]
  ret i32 %.0
}

; Function Attrs: optsize
declare i32 @__swbuf(i32, %struct.__sFILE*) #1

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__sigbits(i32 %__signo) #2 {
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
define i32 @__inline_isfinitef(float %__x) #2 {
  %1 = fcmp ord float %__x, 0.000000e+00
  br i1 %1, label %2, label %5

; <label>:2                                       ; preds = %0
  %3 = tail call float @llvm.fabs.f32(float %__x) #11
  %4 = fcmp une float %3, 0x7FF0000000000000
  br label %5

; <label>:5                                       ; preds = %2, %0
  %6 = phi i1 [ false, %0 ], [ %4, %2 ]
  %7 = zext i1 %6 to i32
  ret i32 %7
}

; Function Attrs: nounwind readnone
declare float @llvm.fabs.f32(float) #3

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isfinited(double %__x) #2 {
  %1 = fcmp ord double %__x, 0.000000e+00
  br i1 %1, label %2, label %5

; <label>:2                                       ; preds = %0
  %3 = tail call double @llvm.fabs.f64(double %__x) #11
  %4 = fcmp une double %3, 0x7FF0000000000000
  br label %5

; <label>:5                                       ; preds = %2, %0
  %6 = phi i1 [ false, %0 ], [ %4, %2 ]
  %7 = zext i1 %6 to i32
  ret i32 %7
}

; Function Attrs: nounwind readnone
declare double @llvm.fabs.f64(double) #3

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isfinitel(x86_fp80 %__x) #2 {
  %1 = fcmp ord x86_fp80 %__x, 0xK00000000000000000000
  br i1 %1, label %2, label %5

; <label>:2                                       ; preds = %0
  %3 = tail call x86_fp80 @llvm.fabs.f80(x86_fp80 %__x) #11
  %4 = fcmp une x86_fp80 %3, 0xK7FFF8000000000000000
  br label %5

; <label>:5                                       ; preds = %2, %0
  %6 = phi i1 [ false, %0 ], [ %4, %2 ]
  %7 = zext i1 %6 to i32
  ret i32 %7
}

; Function Attrs: nounwind readnone
declare x86_fp80 @llvm.fabs.f80(x86_fp80) #3

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isinff(float %__x) #2 {
  %1 = tail call float @llvm.fabs.f32(float %__x) #11
  %2 = fcmp oeq float %1, 0x7FF0000000000000
  %3 = zext i1 %2 to i32
  ret i32 %3
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isinfd(double %__x) #2 {
  %1 = tail call double @llvm.fabs.f64(double %__x) #11
  %2 = fcmp oeq double %1, 0x7FF0000000000000
  %3 = zext i1 %2 to i32
  ret i32 %3
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isinfl(x86_fp80 %__x) #2 {
  %1 = tail call x86_fp80 @llvm.fabs.f80(x86_fp80 %__x) #11
  %2 = fcmp oeq x86_fp80 %1, 0xK7FFF8000000000000000
  %3 = zext i1 %2 to i32
  ret i32 %3
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isnanf(float %__x) #2 {
  %1 = fcmp uno float %__x, 0.000000e+00
  %2 = zext i1 %1 to i32
  ret i32 %2
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isnand(double %__x) #2 {
  %1 = fcmp uno double %__x, 0.000000e+00
  %2 = zext i1 %1 to i32
  ret i32 %2
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isnanl(x86_fp80 %__x) #2 {
  %1 = fcmp uno x86_fp80 %__x, 0xK00000000000000000000
  %2 = zext i1 %1 to i32
  ret i32 %2
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_signbitf(float %__x) #2 {
  %1 = bitcast float %__x to i32
  %2 = lshr i32 %1, 31
  ret i32 %2
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_signbitd(double %__x) #2 {
  %1 = bitcast double %__x to i64
  %2 = lshr i64 %1, 63
  %3 = trunc i64 %2 to i32
  ret i32 %3
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_signbitl(x86_fp80 %__x) #2 {
  %1 = bitcast x86_fp80 %__x to i80
  %2 = lshr i80 %1, 79
  %3 = trunc i80 %2 to i32
  ret i32 %3
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isnormalf(float %__x) #2 {
  %1 = fcmp ord float %__x, 0.000000e+00
  %2 = tail call float @llvm.fabs.f32(float %__x) #3
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
define i32 @__inline_isnormald(double %__x) #2 {
  %1 = fcmp ord double %__x, 0.000000e+00
  %2 = tail call double @llvm.fabs.f64(double %__x) #3
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
define i32 @__inline_isnormall(x86_fp80 %__x) #2 {
  %1 = fcmp ord x86_fp80 %__x, 0xK00000000000000000000
  %2 = tail call x86_fp80 @llvm.fabs.f80(x86_fp80 %__x) #3
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
define void @__sincosf(float %__x, float* nocapture %__sinp, float* nocapture %__cosp) #0 {
  %1 = tail call <2 x float> @__sincosf_stret(float %__x) #10
  %2 = extractelement <2 x float> %1, i32 0
  store float %2, float* %__sinp, align 4, !tbaa !14
  %3 = extractelement <2 x float> %1, i32 1
  store float %3, float* %__cosp, align 4, !tbaa !14
  ret void
}

; Function Attrs: optsize
declare <2 x float> @__sincosf_stret(float) #1

; Function Attrs: alwaysinline nounwind optsize ssp uwtable
define void @__sincos(double %__x, double* nocapture %__sinp, double* nocapture %__cosp) #0 {
  %1 = tail call { double, double } @__sincos_stret(double %__x) #10
  %2 = extractvalue { double, double } %1, 0
  %3 = extractvalue { double, double } %1, 1
  store double %2, double* %__sinp, align 8, !tbaa !16
  store double %3, double* %__cosp, align 8, !tbaa !16
  ret void
}

; Function Attrs: optsize
declare { double, double } @__sincos_stret(double) #1

; Function Attrs: alwaysinline nounwind optsize ssp uwtable
define void @__sincospif(float %__x, float* nocapture %__sinp, float* nocapture %__cosp) #0 {
  %1 = tail call <2 x float> @__sincospif_stret(float %__x) #10
  %2 = extractelement <2 x float> %1, i32 0
  store float %2, float* %__sinp, align 4, !tbaa !14
  %3 = extractelement <2 x float> %1, i32 1
  store float %3, float* %__cosp, align 4, !tbaa !14
  ret void
}

; Function Attrs: optsize
declare <2 x float> @__sincospif_stret(float) #1

; Function Attrs: alwaysinline nounwind optsize ssp uwtable
define void @__sincospi(double %__x, double* nocapture %__sinp, double* nocapture %__cosp) #0 {
  %1 = tail call { double, double } @__sincospi_stret(double %__x) #10
  %2 = extractvalue { double, double } %1, 0
  %3 = extractvalue { double, double } %1, 1
  store double %2, double* %__sinp, align 8, !tbaa !16
  store double %3, double* %__cosp, align 8, !tbaa !16
  ret void
}

; Function Attrs: optsize
declare { double, double } @__sincospi_stret(double) #1

; Function Attrs: nounwind optsize readonly ssp uwtable
define float @mol_dipole(i32 %k0, i32 %k1, i32* nocapture readonly %ma, [3 x float]* nocapture readonly %x, float* nocapture readonly %q) #4 {
  %mu = alloca [3 x float], align 4
  %1 = getelementptr inbounds [3 x float]* %mu, i64 0, i64 0
  store float 0.000000e+00, float* %1, align 4, !tbaa !14
  %2 = getelementptr inbounds [3 x float]* %mu, i64 0, i64 1
  store float 0.000000e+00, float* %2, align 4, !tbaa !14
  %3 = getelementptr inbounds [3 x float]* %mu, i64 0, i64 2
  store float 0.000000e+00, float* %3, align 4, !tbaa !14
  %4 = icmp slt i32 %k0, %k1
  br i1 %4, label %.lr.ph, label %21

.lr.ph:                                           ; preds = %0
  %5 = sext i32 %k0 to i64
  %6 = add i32 %k1, -1
  br label %7

; <label>:7                                       ; preds = %20, %.lr.ph
  %indvars.iv3 = phi i64 [ %5, %.lr.ph ], [ %indvars.iv.next4, %20 ]
  %8 = getelementptr inbounds i32* %ma, i64 %indvars.iv3
  %9 = load i32* %8, align 4, !tbaa !18
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds float* %q, i64 %10
  %12 = load float* %11, align 4, !tbaa !14
  br label %13

; <label>:13                                      ; preds = %13, %7
  %indvars.iv = phi i64 [ 0, %7 ], [ %indvars.iv.next, %13 ]
  %14 = getelementptr inbounds [3 x float]* %x, i64 %10, i64 %indvars.iv
  %15 = load float* %14, align 4, !tbaa !14
  %16 = fmul float %12, %15
  %17 = getelementptr inbounds [3 x float]* %mu, i64 0, i64 %indvars.iv
  %18 = load float* %17, align 4, !tbaa !14
  %19 = fadd float %18, %16
  store float %19, float* %17, align 4, !tbaa !14
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 3
  br i1 %exitcond, label %20, label %13

; <label>:20                                      ; preds = %13
  %indvars.iv.next4 = add nsw i64 %indvars.iv3, 1
  %lftr.wideiv = trunc i64 %indvars.iv3 to i32
  %exitcond5 = icmp eq i32 %lftr.wideiv, %6
  br i1 %exitcond5, label %._crit_edge, label %7

._crit_edge:                                      ; preds = %20
  %.pre = load float* %1, align 4, !tbaa !14
  %.pre6 = load float* %2, align 4, !tbaa !14
  %.pre7 = load float* %3, align 4, !tbaa !14
  br label %21

; <label>:21                                      ; preds = %._crit_edge, %0
  %22 = phi float [ %.pre7, %._crit_edge ], [ 0.000000e+00, %0 ]
  %23 = phi float [ %.pre6, %._crit_edge ], [ 0.000000e+00, %0 ]
  %24 = phi float [ %.pre, %._crit_edge ], [ 0.000000e+00, %0 ]
  %25 = fmul float %24, %24
  %26 = fmul float %23, %23
  %27 = fadd float %25, %26
  %28 = fmul float %22, %22
  %29 = fadd float %27, %28
  %sqrtf.i = tail call float @sqrtf(float %29) #6
  ret float %sqrtf.i
}

; Function Attrs: nounwind optsize readonly ssp uwtable
define float @calc_mu_aver(%struct.t_commrec* nocapture readnone %cr, %struct.t_nsborder* nocapture readnone %nsb, [3 x float]* nocapture readonly %x, float* nocapture readonly %q, float* nocapture readnone %mu, %struct.t_topology* nocapture readonly %top, %struct.t_mdatoms* nocapture readnone %md, i32 %gnx, i32* nocapture readonly %grpindex) #4 {
  %1 = icmp sgt i32 %gnx, 0
  br i1 %1, label %.lr.ph, label %21

.lr.ph:                                           ; preds = %0
  %2 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 3, i64 1, i32 2
  %3 = load i32** %2, align 8, !tbaa !19
  %4 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 3, i64 1, i32 4
  %5 = load i32** %4, align 8, !tbaa !21
  %6 = add i32 %gnx, -1
  br label %7

; <label>:7                                       ; preds = %7, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %7 ]
  %mu_ave.01 = phi float [ 0.000000e+00, %.lr.ph ], [ %18, %7 ]
  %8 = getelementptr inbounds i32* %grpindex, i64 %indvars.iv
  %9 = load i32* %8, align 4, !tbaa !18
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds i32* %3, i64 %10
  %12 = load i32* %11, align 4, !tbaa !18
  %13 = add nsw i32 %9, 1
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i32* %3, i64 %14
  %16 = load i32* %15, align 4, !tbaa !18
  %17 = tail call float @mol_dipole(i32 %12, i32 %16, i32* %5, [3 x float]* %x, float* %q) #12
  %18 = fadd float %mu_ave.01, %17
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %6
  br i1 %exitcond, label %._crit_edge, label %7

._crit_edge:                                      ; preds = %7
  %19 = sitofp i32 %gnx to float
  %20 = fdiv float %18, %19
  br label %21

; <label>:21                                      ; preds = %0, %._crit_edge
  %.0 = phi float [ %20, %._crit_edge ], [ 0.000000e+00, %0 ]
  ret float %.0
}

; Function Attrs: nounwind optsize ssp uwtable
define void @set_ffvars(float %ff_tol, float %ff_epot, float %ff_npow, i32 %ff_bComb, float %ff_fmax, i32 %ff_bLogEps, float %ff_ratio) #5 {
  store float %ff_tol, float* @tol, align 4, !tbaa !14
  store float %ff_epot, float* @epot, align 4, !tbaa !14
  store float %ff_npow, float* @npow, align 4, !tbaa !14
  store float %ff_fmax, float* @forcemax, align 4, !tbaa !14
  store float %ff_ratio, float* @ratio, align 4, !tbaa !14
  store i32 %ff_bLogEps, i32* @bLogEps, align 4, !tbaa !18
  ret void
}

; Function Attrs: nounwind optsize readonly ssp uwtable
define float @cost(float %rmsf, float %energy) #4 {
  %1 = load float* @ratio, align 4, !tbaa !14
  %2 = fmul float %1, %rmsf
  %3 = load float* @epot, align 4, !tbaa !14
  %4 = fsub float %energy, %3
  %fabsf = tail call float @fabsf(float %4) #6
  %5 = fadd float %2, %fabsf
  ret float %5
}

; Function Attrs: nounwind optsize ssp uwtable
define float @value_rand(%struct.t_range* nocapture %r, i32* %seed) #5 {
  %1 = getelementptr inbounds %struct.t_range* %r, i64 0, i32 0
  %2 = load i32* %1, align 4, !tbaa !22
  %3 = icmp eq i32 %2, 1
  br i1 %3, label %4, label %11

; <label>:4                                       ; preds = %0
  %5 = getelementptr inbounds %struct.t_range* %r, i64 0, i32 3
  %6 = bitcast float* %5 to i32*
  %7 = load i32* %6, align 4, !tbaa !24
  %8 = getelementptr inbounds %struct.t_range* %r, i64 0, i32 6
  %9 = bitcast float* %8 to i32*
  store i32 %7, i32* %9, align 4, !tbaa !25
  %10 = bitcast i32 %7 to float
  br label %41

; <label>:11                                      ; preds = %0
  %12 = tail call float @rando(i32* %seed) #10
  %13 = getelementptr inbounds %struct.t_range* %r, i64 0, i32 2
  %14 = load i32* %13, align 4, !tbaa !26
  %15 = icmp eq i32 %14, 1
  %16 = load i32* @bLogEps, align 4
  %17 = icmp ne i32 %16, 0
  %or.cond = and i1 %15, %17
  %18 = getelementptr inbounds %struct.t_range* %r, i64 0, i32 3
  %19 = load float* %18, align 4, !tbaa !24
  %20 = getelementptr inbounds %struct.t_range* %r, i64 0, i32 4
  %21 = load float* %20, align 4
  br i1 %or.cond, label %22, label %36

; <label>:22                                      ; preds = %11
  %23 = fpext float %19 to double
  %24 = tail call double @log(double %23) #13
  %25 = fptrunc double %24 to float
  %26 = fpext float %21 to double
  %27 = tail call double @log(double %26) #13
  %28 = fptrunc double %27 to float
  %29 = fsub float %28, %25
  %30 = fmul float %12, %29
  %31 = fadd float %25, %30
  %32 = fpext float %31 to double
  %33 = tail call double @exp(double %32) #13
  %34 = fptrunc double %33 to float
  %35 = getelementptr inbounds %struct.t_range* %r, i64 0, i32 6
  store float %34, float* %35, align 4, !tbaa !25
  br label %41

; <label>:36                                      ; preds = %11
  %37 = fsub float %21, %19
  %38 = fmul float %12, %37
  %39 = fadd float %19, %38
  %40 = getelementptr inbounds %struct.t_range* %r, i64 0, i32 6
  store float %39, float* %40, align 4, !tbaa !25
  br label %41

; <label>:41                                      ; preds = %22, %36, %4
  %42 = phi float [ %34, %22 ], [ %39, %36 ], [ %10, %4 ]
  %43 = load %struct.__sFILE** @debug, align 8, !tbaa !27
  %44 = icmp eq %struct.__sFILE* %43, null
  br i1 %44, label %._crit_edge, label %45

; <label>:45                                      ; preds = %41
  %46 = getelementptr inbounds %struct.t_range* %r, i64 0, i32 2
  %47 = load i32* %46, align 4, !tbaa !26
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [5 x i8*]* @esenm, i64 0, i64 %48
  %50 = load i8** %49, align 8, !tbaa !27
  %51 = getelementptr inbounds %struct.t_range* %r, i64 0, i32 6
  %52 = fpext float %42 to double
  %53 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %43, i8* getelementptr inbounds ([21 x i8]* @.str, i64 0, i64 0), i8* %50, double %52) #10
  %.pre = load float* %51, align 4, !tbaa !25
  br label %._crit_edge

._crit_edge:                                      ; preds = %41, %45
  %54 = phi float [ %.pre, %45 ], [ %42, %41 ]
  ret float %54
}

; Function Attrs: optsize
declare float @rando(i32*) #1

; Function Attrs: nounwind optsize readnone
declare double @log(double) #6

; Function Attrs: nounwind optsize readnone
declare double @exp(double) #6

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct.__sFILE* nocapture, i8* nocapture readonly, ...) #7

; Function Attrs: nounwind optsize ssp uwtable
define void @update_forcefield(i32 %nfile, %struct.t_filenm* %fnm, %struct.t_forcerec* nocapture readonly %fr) #5 {
  %np.i = alloca i32, align 4
  %lines.i = alloca i8**, align 8
  %atype.i = alloca i32, align 4
  %ptype.i = alloca i32, align 4
  %rmin.i = alloca double, align 8
  %rmax.i = alloca double, align 8
  %1 = load i32* @nparm, align 4, !tbaa !18
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %3, label %105

; <label>:3                                       ; preds = %0
  %4 = tail call i8* @ftp2fn(i32 33, i32 %nfile, %struct.t_filenm* %fnm) #10
  %5 = bitcast i32* %np.i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5)
  %6 = bitcast i8*** %lines.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6)
  %7 = bitcast i32* %atype.i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7)
  %8 = bitcast i32* %ptype.i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8)
  %9 = bitcast double* %rmin.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9)
  %10 = bitcast double* %rmax.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10)
  store i8** null, i8*** %lines.i, align 8, !tbaa !27
  %11 = call i32 @get_file(i8* %4, i8*** %lines.i) #10
  %12 = call i8* @save_calloc(i8* getelementptr inbounds ([6 x i8]* @.str13, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str3, i64 0, i64 0), i32 153, i32 %11, i32 28) #10
  %13 = bitcast i8* %12 to %struct.t_range*
  %14 = icmp sgt i32 %11, 0
  br i1 %14, label %.lr.ph5.i, label %._crit_edge6.thread.i

._crit_edge6.thread.i:                            ; preds = %3
  %15 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !27
  %16 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %15, i8* getelementptr inbounds ([36 x i8]* @.str16, i64 0, i64 0), i32 0) #10
  store i32 0, i32* @nparm, align 4, !tbaa !18
  br label %read_range.exit

.lr.ph5.i:                                        ; preds = %3
  %17 = add i32 %11, -1
  br label %18

; <label>:18                                      ; preds = %67, %.lr.ph5.i
  %indvars.iv7.i = phi i64 [ 0, %.lr.ph5.i ], [ %indvars.iv.next8.i, %67 ]
  %nr.03.i = phi i32 [ 0, %.lr.ph5.i ], [ %nr.1.i, %67 ]
  %19 = load i8*** %lines.i, align 8, !tbaa !27
  %20 = getelementptr inbounds i8** %19, i64 %indvars.iv7.i
  %21 = load i8** %20, align 8, !tbaa !27
  call void @strip_comment(i8* %21) #10
  %22 = load i8*** %lines.i, align 8, !tbaa !27
  %23 = getelementptr inbounds i8** %22, i64 %indvars.iv7.i
  %24 = load i8** %23, align 8, !tbaa !27
  %25 = call i32 (i8*, i8*, ...)* @sscanf(i8* %24, i8* getelementptr inbounds ([13 x i8]* @.str14, i64 0, i64 0), i32* %np.i, i32* %atype.i, i32* %ptype.i, double* %rmin.i, double* %rmax.i) #10
  %26 = icmp eq i32 %25, 5
  br i1 %26, label %27, label %67

; <label>:27                                      ; preds = %18
  %28 = load i32* @bLogEps, align 4, !tbaa !18
  %29 = icmp ne i32 %28, 0
  %30 = load i32* %ptype.i, align 4
  %31 = icmp eq i32 %30, 1
  %or.cond.i = and i1 %29, %31
  %32 = load double* %rmin.i, align 8
  %33 = fcmp ole double %32, 0.000000e+00
  %or.cond3.i = and i1 %or.cond.i, %33
  br i1 %or.cond3.i, label %34, label %35

; <label>:34                                      ; preds = %27
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([71 x i8]* @.str15, i64 0, i64 0)) #10
  %.pre.i = load i32* %ptype.i, align 4, !tbaa !18
  %.pre11.i = load double* %rmin.i, align 8, !tbaa !16
  br label %35

; <label>:35                                      ; preds = %34, %27
  %36 = phi double [ %.pre11.i, %34 ], [ %32, %27 ]
  %37 = phi i32 [ %.pre.i, %34 ], [ %30, %27 ]
  %38 = sext i32 %nr.03.i to i64
  %39 = load i32* %np.i, align 4, !tbaa !18
  %40 = load i32* %atype.i, align 4, !tbaa !18
  %41 = fptrunc double %36 to float
  %42 = load double* %rmax.i, align 8, !tbaa !16
  %43 = fptrunc double %42 to float
  %44 = fcmp ogt float %41, %43
  br i1 %44, label %45, label %48

; <label>:45                                      ; preds = %35
  %46 = fpext float %41 to double
  %47 = fpext float %43 to double
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([22 x i8]* @.str19, i64 0, i64 0), double %46, double %47) #10
  br label %48

; <label>:48                                      ; preds = %45, %35
  %49 = icmp slt i32 %39, 1
  br i1 %49, label %50, label %51

; <label>:50                                      ; preds = %48
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([22 x i8]* @.str20, i64 0, i64 0), i32 %39) #10
  br label %51

; <label>:51                                      ; preds = %50, %48
  %52 = fcmp ogt float %43, %41
  %53 = icmp slt i32 %39, 2
  %or.cond.i.i = and i1 %53, %52
  br i1 %or.cond.i.i, label %54, label %55

; <label>:54                                      ; preds = %51
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([33 x i8]* @.str21, i64 0, i64 0)) #10
  br label %55

; <label>:55                                      ; preds = %54, %51
  %56 = icmp ugt i32 %37, 4
  br i1 %56, label %57, label %init_range.exit.i

; <label>:57                                      ; preds = %55
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([26 x i8]* @.str22, i64 0, i64 0), i32 %37, i32 5) #10
  br label %init_range.exit.i

init_range.exit.i:                                ; preds = %57, %55
  %58 = getelementptr inbounds %struct.t_range* %13, i64 %38, i32 0
  store i32 %39, i32* %58, align 4, !tbaa !22
  %59 = getelementptr inbounds %struct.t_range* %13, i64 %38, i32 1
  store i32 %40, i32* %59, align 4, !tbaa !28
  %60 = getelementptr inbounds %struct.t_range* %13, i64 %38, i32 2
  store i32 %37, i32* %60, align 4, !tbaa !26
  %61 = getelementptr inbounds %struct.t_range* %13, i64 %38, i32 3
  store float %41, float* %61, align 4, !tbaa !24
  %62 = getelementptr inbounds %struct.t_range* %13, i64 %38, i32 4
  store float %43, float* %62, align 4, !tbaa !29
  %63 = getelementptr inbounds %struct.t_range* %13, i64 %38, i32 6
  store float %41, float* %63, align 4, !tbaa !25
  %64 = fsub float %43, %41
  %65 = getelementptr inbounds %struct.t_range* %13, i64 %38, i32 5
  store float %64, float* %65, align 4, !tbaa !30
  %66 = add nsw i32 %nr.03.i, 1
  br label %67

; <label>:67                                      ; preds = %init_range.exit.i, %18
  %nr.1.i = phi i32 [ %66, %init_range.exit.i ], [ %nr.03.i, %18 ]
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %lftr.wideiv43 = trunc i64 %indvars.iv7.i to i32
  %exitcond44 = icmp eq i32 %lftr.wideiv43, %17
  br i1 %exitcond44, label %.lr.ph.i.preheader, label %18

.lr.ph.i.preheader:                               ; preds = %67
  %68 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !27
  %69 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %68, i8* getelementptr inbounds ([36 x i8]* @.str16, i64 0, i64 0), i32 %nr.1.i) #10
  store i32 %nr.1.i, i32* @nparm, align 4, !tbaa !18
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ 0, %.lr.ph.i.preheader ]
  %70 = load i8*** %lines.i, align 8, !tbaa !27
  %71 = getelementptr inbounds i8** %70, i64 %indvars.iv.i
  %72 = load i8** %71, align 8, !tbaa !27
  call void @save_free(i8* getelementptr inbounds ([10 x i8]* @.str17, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str3, i64 0, i64 0), i32 171, i8* %72) #10
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %lftr.wideiv41 = trunc i64 %indvars.iv.i to i32
  %exitcond42 = icmp eq i32 %lftr.wideiv41, %17
  br i1 %exitcond42, label %read_range.exit, label %.lr.ph.i

read_range.exit:                                  ; preds = %.lr.ph.i, %._crit_edge6.thread.i
  %73 = bitcast i8*** %lines.i to i8**
  %74 = load i8** %73, align 8, !tbaa !27
  call void @save_free(i8* getelementptr inbounds ([6 x i8]* @.str18, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str3, i64 0, i64 0), i32 172, i8* %74) #10
  call void @llvm.lifetime.end(i64 4, i8* %5)
  call void @llvm.lifetime.end(i64 8, i8* %6)
  call void @llvm.lifetime.end(i64 4, i8* %7)
  call void @llvm.lifetime.end(i64 4, i8* %8)
  call void @llvm.lifetime.end(i64 8, i8* %9)
  call void @llvm.lifetime.end(i64 8, i8* %10)
  store i8* %12, i8** bitcast (%struct.t_range** @range to i8**), align 8, !tbaa !27
  %75 = load i32* @nparm, align 4, !tbaa !18
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %79

; <label>:77                                      ; preds = %read_range.exit
  %78 = call i8* @ftp2fn(i32 33, i32 %nfile, %struct.t_filenm* %fnm) #10
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([32 x i8]* @.str1, i64 0, i64 0), i8* %78) #10
  %.pre51 = load i32* @nparm, align 4, !tbaa !18
  br label %79

; <label>:79                                      ; preds = %77, %read_range.exit
  %80 = phi i32 [ %.pre51, %77 ], [ %75, %read_range.exit ]
  %81 = call i8* @save_calloc(i8* getelementptr inbounds ([10 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str3, i64 0, i64 0), i32 324, i32 %80, i32 4) #10
  store i8* %81, i8** bitcast (i32** @param_val to i8**), align 8, !tbaa !27
  %82 = call i32 @opt2bSet(i8* getelementptr inbounds ([4 x i8]* @.str4, i64 0, i64 0), i32 %nfile, %struct.t_filenm* %fnm) #10
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %89, label %84

; <label>:84                                      ; preds = %79
  %85 = call i8* @opt2fn(i8* getelementptr inbounds ([4 x i8]* @.str4, i64 0, i64 0), i32 %nfile, %struct.t_filenm* %fnm) #10
  %86 = load i32* @nparm, align 4, !tbaa !18
  %87 = load %struct.t_range** @range, align 8, !tbaa !27
  %88 = call %struct.t_genalg* @init_ga(i8* %85, i32 %86, %struct.t_range* %87) #10
  store %struct.t_genalg* %88, %struct.t_genalg** @ga, align 8, !tbaa !27
  br label %thread-pre-split

; <label>:89                                      ; preds = %79
  store i32 1, i32* @update_forcefield.ntry, align 4, !tbaa !18
  %90 = load i32* @nparm, align 4, !tbaa !18
  %91 = icmp sgt i32 %90, 0
  br i1 %91, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %89
  %92 = load %struct.t_range** @range, align 8, !tbaa !27
  br label %93

; <label>:93                                      ; preds = %.lr.ph, %93
  %94 = phi i32 [ 1, %.lr.ph ], [ %97, %93 ]
  %indvars.iv39 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next40, %93 ]
  %95 = getelementptr inbounds %struct.t_range* %92, i64 %indvars.iv39, i32 0
  %96 = load i32* %95, align 4, !tbaa !22
  %97 = mul nsw i32 %94, %96
  store i32 %97, i32* @update_forcefield.ntry, align 4, !tbaa !18
  %indvars.iv.next40 = add nuw nsw i64 %indvars.iv39, 1
  %98 = sext i32 %90 to i64
  %99 = icmp slt i64 %indvars.iv.next40, %98
  br i1 %99, label %93, label %._crit_edge

._crit_edge:                                      ; preds = %93, %89
  %100 = phi i32 [ 1, %89 ], [ %97, %93 ]
  store i32 0, i32* @update_forcefield.ntried, align 4, !tbaa !18
  %101 = load %struct.__sFILE** @stdlog, align 8, !tbaa !27
  %102 = icmp eq %struct.__sFILE* %101, null
  br i1 %102, label %thread-pre-split, label %103

; <label>:103                                     ; preds = %._crit_edge
  %104 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %101, i8* getelementptr inbounds ([57 x i8]* @.str5, i64 0, i64 0), i32 %100, i32 %90) #10
  br label %thread-pre-split

; <label>:105                                     ; preds = %0
  %106 = load %struct.t_genalg** @ga, align 8, !tbaa !27
  %107 = icmp eq %struct.t_genalg* %106, null
  br i1 %107, label %.preheader, label %112

.preheader:                                       ; preds = %105
  %108 = icmp sgt i32 %1, 0
  br i1 %108, label %.lr.ph19, label %.loopexit

.lr.ph19:                                         ; preds = %.preheader
  %109 = load i32** @param_val, align 8, !tbaa !27
  %110 = load %struct.t_range** @range, align 8, !tbaa !27
  %111 = sext i32 %1 to i64
  br label %115

; <label>:112                                     ; preds = %105
  %113 = load %struct.__sFILE** @stdlog, align 8, !tbaa !27
  %114 = load %struct.t_range** @range, align 8, !tbaa !27
  tail call void @update_ga(%struct.__sFILE* %113, %struct.t_range* %114, %struct.t_genalg* %106) #10
  br label %thread-pre-split

; <label>:115                                     ; preds = %.lr.ph19, %134
  %indvars.iv49 = phi i64 [ 0, %.lr.ph19 ], [ %indvars.iv.next50, %134 ]
  %116 = getelementptr inbounds i32* %109, i64 %indvars.iv49
  %117 = load i32* %116, align 4, !tbaa !18
  %118 = getelementptr inbounds %struct.t_range* %110, i64 %indvars.iv49, i32 0
  %119 = load i32* %118, align 4, !tbaa !22
  %120 = add nsw i32 %119, -1
  %121 = icmp slt i32 %117, %120
  br i1 %121, label %122, label %134

; <label>:122                                     ; preds = %115
  %123 = trunc i64 %indvars.iv49 to i32
  %124 = add nsw i32 %117, 1
  store i32 %124, i32* %116, align 4, !tbaa !18
  %125 = icmp sgt i32 %123, 0
  br i1 %125, label %.lr.ph16, label %131

.lr.ph16:                                         ; preds = %122
  %126 = bitcast i32* %109 to i8*
  %127 = shl i64 %indvars.iv49, 2
  %128 = add i64 %127, 17179869180
  %129 = and i64 %128, 17179869180
  %130 = add nuw nsw i64 %129, 4
  call void @llvm.memset.p0i8.i64(i8* %126, i8 0, i64 %130, i32 4, i1 false)
  br label %131

; <label>:131                                     ; preds = %.lr.ph16, %122
  %132 = load i32* @update_forcefield.ntried, align 4, !tbaa !18
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* @update_forcefield.ntried, align 4, !tbaa !18
  %.pre = load i32* @nparm, align 4, !tbaa !18
  br label %.loopexit

; <label>:134                                     ; preds = %115
  %indvars.iv.next50 = add nuw nsw i64 %indvars.iv49, 1
  %135 = icmp slt i64 %indvars.iv.next50, %111
  br i1 %135, label %115, label %..loopexit_crit_edge

..loopexit_crit_edge:                             ; preds = %134
  %136 = trunc i64 %indvars.iv.next50 to i32
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader, %..loopexit_crit_edge, %131
  %137 = phi i32 [ %.pre, %131 ], [ %1, %..loopexit_crit_edge ], [ %1, %.preheader ]
  %i.19 = phi i32 [ %123, %131 ], [ %136, %..loopexit_crit_edge ], [ 0, %.preheader ]
  %138 = icmp eq i32 %i.19, %137
  br i1 %138, label %139, label %152

; <label>:139                                     ; preds = %.loopexit
  %140 = load %struct.__sFILE** @stdlog, align 8, !tbaa !27
  %141 = icmp eq %struct.__sFILE* %140, null
  br i1 %141, label %147, label %142

; <label>:142                                     ; preds = %139
  %143 = load i32* @update_forcefield.ntried, align 4, !tbaa !18
  %144 = add nsw i32 %143, 1
  %145 = load i32* @update_forcefield.ntry, align 4, !tbaa !18
  %146 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %140, i8* getelementptr inbounds ([39 x i8]* @.str6, i64 0, i64 0), i32 %144, i32 %145) #10
  br label %147

; <label>:147                                     ; preds = %139, %142
  %148 = load i32* @gmx_parallel, align 4, !tbaa !18
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %151, label %150

; <label>:150                                     ; preds = %147
  tail call void @gmx_finalize() #10
  br label %151

; <label>:151                                     ; preds = %147, %150
  tail call void @exit(i32 0) #14
  unreachable

thread-pre-split:                                 ; preds = %103, %84, %112, %._crit_edge
  %.pr = load i32* @nparm, align 4, !tbaa !18
  br label %152

; <label>:152                                     ; preds = %thread-pre-split, %.loopexit
  %153 = phi i32 [ %.pr, %thread-pre-split ], [ %137, %.loopexit ]
  %154 = load %struct.t_range** @range, align 8, !tbaa !27
  %155 = load i32** @param_val, align 8, !tbaa !27
  %156 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 63
  %157 = load i32* %156, align 4, !tbaa !31
  %158 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 65
  %159 = load float** %158, align 8, !tbaa !33
  %160 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 64
  %161 = load i32* %160, align 4, !tbaa !34
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %170, label %163

; <label>:163                                     ; preds = %152
  %164 = load double** @update_ff.bhama, align 8, !tbaa !27
  %165 = icmp eq double* %164, null
  br i1 %165, label %166, label %.preheader10.i

; <label>:166                                     ; preds = %163
  %167 = call i8* @save_calloc(i8* getelementptr inbounds ([6 x i8]* @.str23, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str3, i64 0, i64 0), i32 231, i32 %157, i32 8) #10
  store i8* %167, i8** bitcast (double** @update_ff.bhama to i8**), align 8, !tbaa !27
  %168 = call i8* @save_calloc(i8* getelementptr inbounds ([6 x i8]* @.str24, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str3, i64 0, i64 0), i32 232, i32 %157, i32 8) #10
  store i8* %168, i8** bitcast (double** @update_ff.bhamb to i8**), align 8, !tbaa !27
  %169 = call i8* @save_calloc(i8* getelementptr inbounds ([6 x i8]* @.str25, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str3, i64 0, i64 0), i32 233, i32 %157, i32 8) #10
  store i8* %169, i8** bitcast (double** @update_ff.bhamc to i8**), align 8, !tbaa !27
  br label %.preheader10.i

; <label>:170                                     ; preds = %152
  %171 = load double** @update_ff.sigma, align 8, !tbaa !27
  %172 = icmp eq double* %171, null
  br i1 %172, label %173, label %.preheader10.i

; <label>:173                                     ; preds = %170
  %174 = call i8* @save_calloc(i8* getelementptr inbounds ([6 x i8]* @.str26, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str3, i64 0, i64 0), i32 238, i32 %157, i32 8) #10
  store i8* %174, i8** bitcast (double** @update_ff.sigma to i8**), align 8, !tbaa !27
  %175 = call i8* @save_calloc(i8* getelementptr inbounds ([4 x i8]* @.str27, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str3, i64 0, i64 0), i32 239, i32 %157, i32 8) #10
  store i8* %175, i8** bitcast (double** @update_ff.eps to i8**), align 8, !tbaa !27
  %176 = call i8* @save_calloc(i8* getelementptr inbounds ([3 x i8]* @.str28, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str3, i64 0, i64 0), i32 240, i32 %157, i32 8) #10
  store i8* %176, i8** bitcast (double** @update_ff.c6 to i8**), align 8, !tbaa !27
  %177 = call i8* @save_calloc(i8* getelementptr inbounds ([3 x i8]* @.str29, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str3, i64 0, i64 0), i32 241, i32 %157, i32 8) #10
  store i8* %177, i8** bitcast (double** @update_ff.cn to i8**), align 8, !tbaa !27
  br label %.preheader10.i

.preheader10.i:                                   ; preds = %173, %170, %166, %163
  %178 = icmp sgt i32 %153, 0
  br i1 %178, label %.lr.ph28.i, label %._crit_edge29.i

.lr.ph28.i:                                       ; preds = %.preheader10.i
  %179 = add i32 %153, -1
  br label %180

; <label>:180                                     ; preds = %277, %.lr.ph28.i
  %indvars.iv62.i = phi i64 [ 0, %.lr.ph28.i ], [ %indvars.iv.next63.i, %277 ]
  %181 = load %struct.t_genalg** @ga, align 8, !tbaa !27
  %182 = icmp eq %struct.t_genalg* %181, null
  br i1 %182, label %186, label %183

; <label>:183                                     ; preds = %180
  %184 = getelementptr inbounds %struct.t_range* %154, i64 %indvars.iv62.i, i32 6
  %185 = load float* %184, align 4, !tbaa !25
  br label %value_range.exit.i

; <label>:186                                     ; preds = %180
  %187 = getelementptr inbounds i32* %155, i64 %indvars.iv62.i
  %188 = load i32* %187, align 4, !tbaa !18
  %189 = icmp slt i32 %188, 0
  %.phi.trans.insert.i.i = getelementptr inbounds %struct.t_range* %154, i64 %indvars.iv62.i, i32 0
  %.pre.i.i = load i32* %.phi.trans.insert.i.i, align 4, !tbaa !22
  %190 = icmp slt i32 %.pre.i.i, %188
  %or.cond6.i.i = or i1 %189, %190
  br i1 %or.cond6.i.i, label %._crit_edge.i.i, label %191

._crit_edge.i.i:                                  ; preds = %186
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([49 x i8]* @.str35, i64 0, i64 0), i32 %188, i32 %.pre.i.i) #10
  %.pre3.i.i = load i32* %.phi.trans.insert.i.i, align 4, !tbaa !22
  br label %191

; <label>:191                                     ; preds = %._crit_edge.i.i, %186
  %192 = phi i32 [ %.pre3.i.i, %._crit_edge.i.i ], [ %.pre.i.i, %186 ]
  %193 = icmp eq i32 %192, 1
  br i1 %193, label %194, label %201

; <label>:194                                     ; preds = %191
  %195 = getelementptr inbounds %struct.t_range* %154, i64 %indvars.iv62.i, i32 3
  %196 = bitcast float* %195 to i32*
  %197 = load i32* %196, align 4, !tbaa !24
  %198 = getelementptr inbounds %struct.t_range* %154, i64 %indvars.iv62.i, i32 6
  %199 = bitcast float* %198 to i32*
  store i32 %197, i32* %199, align 4, !tbaa !25
  %200 = bitcast i32 %197 to float
  br label %value_range.exit.i

; <label>:201                                     ; preds = %191
  %202 = getelementptr inbounds %struct.t_range* %154, i64 %indvars.iv62.i, i32 2
  %203 = load i32* %202, align 4, !tbaa !26
  %204 = icmp eq i32 %203, 1
  %205 = load i32* @bLogEps, align 4
  %206 = icmp ne i32 %205, 0
  %or.cond.i.i1 = and i1 %204, %206
  %207 = getelementptr inbounds %struct.t_range* %154, i64 %indvars.iv62.i, i32 3
  %208 = load float* %207, align 4, !tbaa !24
  br i1 %or.cond.i.i1, label %209, label %229

; <label>:209                                     ; preds = %201
  %210 = fpext float %208 to double
  %211 = call double @log(double %210) #13
  %212 = fptrunc double %211 to float
  %213 = getelementptr inbounds %struct.t_range* %154, i64 %indvars.iv62.i, i32 4
  %214 = load float* %213, align 4, !tbaa !29
  %215 = fpext float %214 to double
  %216 = call double @log(double %215) #13
  %217 = fptrunc double %216 to float
  %218 = sitofp i32 %188 to float
  %219 = fsub float %217, %212
  %220 = fmul float %218, %219
  %221 = add nsw i32 %192, -1
  %222 = sitofp i32 %221 to float
  %223 = fdiv float %220, %222
  %224 = fadd float %212, %223
  %225 = fpext float %224 to double
  %226 = call double @exp(double %225) #13
  %227 = fptrunc double %226 to float
  %228 = getelementptr inbounds %struct.t_range* %154, i64 %indvars.iv62.i, i32 6
  store float %227, float* %228, align 4, !tbaa !25
  br label %value_range.exit.i

; <label>:229                                     ; preds = %201
  %230 = sitofp i32 %188 to float
  %231 = getelementptr inbounds %struct.t_range* %154, i64 %indvars.iv62.i, i32 5
  %232 = load float* %231, align 4, !tbaa !30
  %233 = fmul float %230, %232
  %234 = add nsw i32 %192, -1
  %235 = sitofp i32 %234 to float
  %236 = fdiv float %233, %235
  %237 = fadd float %208, %236
  %238 = getelementptr inbounds %struct.t_range* %154, i64 %indvars.iv62.i, i32 6
  store float %237, float* %238, align 4, !tbaa !25
  br label %value_range.exit.i

value_range.exit.i:                               ; preds = %229, %209, %194, %183
  %val.0.i = phi float [ %185, %183 ], [ %227, %209 ], [ %237, %229 ], [ %200, %194 ]
  %239 = getelementptr inbounds %struct.t_range* %154, i64 %indvars.iv62.i, i32 2
  %240 = load i32* %239, align 4, !tbaa !26
  switch i32 %240, label %276 [
    i32 0, label %241
    i32 1, label %248
    i32 2, label %255
    i32 3, label %262
    i32 4, label %269
  ]

; <label>:241                                     ; preds = %value_range.exit.i
  %242 = fpext float %val.0.i to double
  %243 = getelementptr inbounds %struct.t_range* %154, i64 %indvars.iv62.i, i32 1
  %244 = load i32* %243, align 4, !tbaa !28
  %245 = sext i32 %244 to i64
  %246 = load double** @update_ff.sigma, align 8, !tbaa !27
  %247 = getelementptr inbounds double* %246, i64 %245
  store double %242, double* %247, align 8, !tbaa !16
  br label %277

; <label>:248                                     ; preds = %value_range.exit.i
  %249 = fpext float %val.0.i to double
  %250 = getelementptr inbounds %struct.t_range* %154, i64 %indvars.iv62.i, i32 1
  %251 = load i32* %250, align 4, !tbaa !28
  %252 = sext i32 %251 to i64
  %253 = load double** @update_ff.eps, align 8, !tbaa !27
  %254 = getelementptr inbounds double* %253, i64 %252
  store double %249, double* %254, align 8, !tbaa !16
  br label %277

; <label>:255                                     ; preds = %value_range.exit.i
  %256 = fpext float %val.0.i to double
  %257 = getelementptr inbounds %struct.t_range* %154, i64 %indvars.iv62.i, i32 1
  %258 = load i32* %257, align 4, !tbaa !28
  %259 = sext i32 %258 to i64
  %260 = load double** @update_ff.bhama, align 8, !tbaa !27
  %261 = getelementptr inbounds double* %260, i64 %259
  store double %256, double* %261, align 8, !tbaa !16
  br label %277

; <label>:262                                     ; preds = %value_range.exit.i
  %263 = fpext float %val.0.i to double
  %264 = getelementptr inbounds %struct.t_range* %154, i64 %indvars.iv62.i, i32 1
  %265 = load i32* %264, align 4, !tbaa !28
  %266 = sext i32 %265 to i64
  %267 = load double** @update_ff.bhamb, align 8, !tbaa !27
  %268 = getelementptr inbounds double* %267, i64 %266
  store double %263, double* %268, align 8, !tbaa !16
  br label %277

; <label>:269                                     ; preds = %value_range.exit.i
  %270 = fpext float %val.0.i to double
  %271 = getelementptr inbounds %struct.t_range* %154, i64 %indvars.iv62.i, i32 1
  %272 = load i32* %271, align 4, !tbaa !28
  %273 = sext i32 %272 to i64
  %274 = load double** @update_ff.bhamc, align 8, !tbaa !27
  %275 = getelementptr inbounds double* %274, i64 %273
  store double %270, double* %275, align 8, !tbaa !16
  br label %277

; <label>:276                                     ; preds = %value_range.exit.i
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([14 x i8]* @.str30, i64 0, i64 0)) #10
  br label %277

; <label>:277                                     ; preds = %276, %269, %262, %255, %248, %241
  %indvars.iv.next63.i = add nuw nsw i64 %indvars.iv62.i, 1
  %lftr.wideiv37 = trunc i64 %indvars.iv62.i to i32
  %exitcond38 = icmp eq i32 %lftr.wideiv37, %179
  br i1 %exitcond38, label %._crit_edge29.i, label %180

._crit_edge29.i:                                  ; preds = %277, %.preheader10.i
  %278 = load i32* %160, align 4, !tbaa !34
  %279 = icmp eq i32 %278, 0
  %280 = icmp sgt i32 %157, 0
  br i1 %279, label %.preheader6.i, label %.preheader8.i

.preheader8.i:                                    ; preds = %._crit_edge29.i
  br i1 %280, label %.preheader7.lr.ph.i, label %.loopexit5.i

.preheader7.lr.ph.i:                              ; preds = %.preheader8.i
  %281 = load double** @update_ff.bhama, align 8, !tbaa !27
  %282 = load double** @update_ff.bhamb, align 8, !tbaa !27
  %283 = load double** @update_ff.bhamc, align 8, !tbaa !27
  %284 = sext i32 %157 to i64
  %285 = add i32 %157, -1
  br label %.lr.ph23.i

.preheader6.i:                                    ; preds = %._crit_edge29.i
  br i1 %280, label %.lr.ph21.i, label %.loopexit5.i

.lr.ph21.i:                                       ; preds = %.preheader6.i
  %286 = add i32 %157, -1
  br label %328

.lr.ph23.i:                                       ; preds = %._crit_edge24.i, %.preheader7.lr.ph.i
  %indvars.iv31 = phi i32 [ %indvars.iv.next32, %._crit_edge24.i ], [ 0, %.preheader7.lr.ph.i ]
  %indvars.iv58.i = phi i64 [ %indvars.iv.next59.i, %._crit_edge24.i ], [ 0, %.preheader7.lr.ph.i ]
  %287 = getelementptr inbounds double* %281, i64 %indvars.iv58.i
  %288 = load double* %287, align 8, !tbaa !16
  %289 = mul nsw i64 %indvars.iv58.i, %284
  %290 = getelementptr inbounds double* %282, i64 %indvars.iv58.i
  %291 = load double* %290, align 8, !tbaa !16
  %292 = getelementptr inbounds double* %283, i64 %indvars.iv58.i
  %293 = load double* %292, align 8, !tbaa !16
  br label %294

; <label>:294                                     ; preds = %294, %.lr.ph23.i
  %indvars.iv52.i = phi i64 [ %indvars.iv.next53.i, %294 ], [ 0, %.lr.ph23.i ]
  %295 = getelementptr inbounds double* %281, i64 %indvars.iv52.i
  %296 = load double* %295, align 8, !tbaa !16
  %297 = fmul double %288, %296
  %298 = call double @sqrt(double %297) #13
  %299 = fptrunc double %298 to float
  %300 = mul nsw i64 %indvars.iv52.i, %284
  %301 = add nsw i64 %300, %indvars.iv58.i
  %302 = mul nsw i64 %301, 3
  %303 = add nsw i64 %302, 1
  %304 = getelementptr inbounds float* %159, i64 %303
  store float %299, float* %304, align 4, !tbaa !14
  %305 = add nsw i64 %indvars.iv52.i, %289
  %306 = mul nsw i64 %305, 3
  %307 = add nsw i64 %306, 1
  %308 = getelementptr inbounds float* %159, i64 %307
  store float %299, float* %308, align 4, !tbaa !14
  %309 = getelementptr inbounds double* %282, i64 %indvars.iv52.i
  %310 = load double* %309, align 8, !tbaa !16
  %311 = fmul double %291, %310
  %312 = call double @sqrt(double %311) #13
  %313 = fptrunc double %312 to float
  %314 = add nsw i64 %302, 2
  %315 = getelementptr inbounds float* %159, i64 %314
  store float %313, float* %315, align 4, !tbaa !14
  %316 = add nsw i64 %306, 2
  %317 = getelementptr inbounds float* %159, i64 %316
  store float %313, float* %317, align 4, !tbaa !14
  %318 = getelementptr inbounds double* %283, i64 %indvars.iv52.i
  %319 = load double* %318, align 8, !tbaa !16
  %320 = fmul double %293, %319
  %321 = call double @sqrt(double %320) #13
  %322 = fptrunc double %321 to float
  %323 = getelementptr inbounds float* %159, i64 %302
  store float %322, float* %323, align 4, !tbaa !14
  %324 = getelementptr inbounds float* %159, i64 %306
  store float %322, float* %324, align 4, !tbaa !14
  %indvars.iv.next53.i = add nuw nsw i64 %indvars.iv52.i, 1
  %lftr.wideiv33 = trunc i64 %indvars.iv52.i to i32
  %exitcond34 = icmp eq i32 %lftr.wideiv33, %indvars.iv31
  br i1 %exitcond34, label %._crit_edge24.i, label %294

._crit_edge24.i:                                  ; preds = %294
  %indvars.iv.next59.i = add nuw nsw i64 %indvars.iv58.i, 1
  %indvars.iv.next32 = add nuw i32 %indvars.iv31, 1
  %lftr.wideiv35 = trunc i64 %indvars.iv58.i to i32
  %exitcond36 = icmp eq i32 %lftr.wideiv35, %285
  br i1 %exitcond36, label %.loopexit5.i, label %.lr.ph23.i

.preheader3.lr.ph.i:                              ; preds = %355
  %325 = load double** @update_ff.c6, align 8, !tbaa !27
  %326 = load double** @update_ff.cn, align 8, !tbaa !27
  %327 = sext i32 %157 to i64
  br label %.lr.ph16.i

; <label>:328                                     ; preds = %355, %.lr.ph21.i
  %indvars.iv48.i = phi i64 [ 0, %.lr.ph21.i ], [ %indvars.iv.next49.i, %355 ]
  %329 = load double** @update_ff.eps, align 8, !tbaa !27
  %330 = getelementptr inbounds double* %329, i64 %indvars.iv48.i
  %331 = load double* %330, align 8, !tbaa !16
  %332 = fmul double %331, 4.000000e+00
  %333 = load double** @update_ff.sigma, align 8, !tbaa !27
  %334 = getelementptr inbounds double* %333, i64 %indvars.iv48.i
  %335 = load double* %334, align 8, !tbaa !16
  %336 = call double @llvm.pow.f64(double %335, double 6.000000e+00) #9
  %337 = fmul double %332, %336
  %338 = load double** @update_ff.c6, align 8, !tbaa !27
  %339 = getelementptr inbounds double* %338, i64 %indvars.iv48.i
  store double %337, double* %339, align 8, !tbaa !16
  %340 = load double* %330, align 8, !tbaa !16
  %341 = fmul double %340, 4.000000e+00
  %342 = load double* %334, align 8, !tbaa !16
  %343 = load float* @npow, align 4, !tbaa !14
  %344 = fpext float %343 to double
  %345 = call double @llvm.pow.f64(double %342, double %344) #9
  %346 = fmul double %341, %345
  %347 = load double** @update_ff.cn, align 8, !tbaa !27
  %348 = getelementptr inbounds double* %347, i64 %indvars.iv48.i
  store double %346, double* %348, align 8, !tbaa !16
  %349 = load %struct.__sFILE** @debug, align 8, !tbaa !27
  %350 = icmp eq %struct.__sFILE* %349, null
  br i1 %350, label %._crit_edge67.i, label %351

._crit_edge67.i:                                  ; preds = %328
  %.pre68.i = trunc i64 %indvars.iv48.i to i32
  br label %355

; <label>:351                                     ; preds = %328
  %352 = load double* %339, align 8, !tbaa !16
  %353 = trunc i64 %indvars.iv48.i to i32
  %354 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %349, i8* getelementptr inbounds ([35 x i8]* @.str31, i64 0, i64 0), i32 %353, double %352, i32 %353, double %346) #10
  br label %355

; <label>:355                                     ; preds = %351, %._crit_edge67.i
  %lftr.wideiv50.pre-phi.i = phi i32 [ %.pre68.i, %._crit_edge67.i ], [ %353, %351 ]
  %indvars.iv.next49.i = add nuw nsw i64 %indvars.iv48.i, 1
  %exitcond51.i = icmp eq i32 %lftr.wideiv50.pre-phi.i, %286
  br i1 %exitcond51.i, label %.preheader3.lr.ph.i, label %328

.lr.ph16.i:                                       ; preds = %._crit_edge17.i, %.preheader3.lr.ph.i
  %indvars.iv = phi i32 [ %indvars.iv.next, %._crit_edge17.i ], [ 0, %.preheader3.lr.ph.i ]
  %indvars.iv44.i = phi i64 [ %indvars.iv.next45.i, %._crit_edge17.i ], [ 0, %.preheader3.lr.ph.i ]
  %356 = getelementptr inbounds double* %325, i64 %indvars.iv44.i
  %357 = load double* %356, align 8, !tbaa !16
  %358 = mul nsw i64 %indvars.iv44.i, %327
  %359 = getelementptr inbounds double* %326, i64 %indvars.iv44.i
  %360 = load double* %359, align 8, !tbaa !16
  br label %361

; <label>:361                                     ; preds = %361, %.lr.ph16.i
  %indvars.iv38.i = phi i64 [ %indvars.iv.next39.i, %361 ], [ 0, %.lr.ph16.i ]
  %362 = getelementptr inbounds double* %325, i64 %indvars.iv38.i
  %363 = load double* %362, align 8, !tbaa !16
  %364 = fmul double %357, %363
  %365 = call double @sqrt(double %364) #13
  %366 = fptrunc double %365 to float
  %367 = mul nsw i64 %indvars.iv38.i, %327
  %368 = add nsw i64 %367, %indvars.iv44.i
  %369 = trunc i64 %368 to i32
  %370 = shl nsw i32 %369, 1
  %371 = sext i32 %370 to i64
  %372 = getelementptr inbounds float* %159, i64 %371
  store float %366, float* %372, align 4, !tbaa !14
  %373 = add nsw i64 %indvars.iv38.i, %358
  %374 = trunc i64 %373 to i32
  %375 = shl nsw i32 %374, 1
  %376 = sext i32 %375 to i64
  %377 = getelementptr inbounds float* %159, i64 %376
  store float %366, float* %377, align 4, !tbaa !14
  %378 = getelementptr inbounds double* %326, i64 %indvars.iv38.i
  %379 = load double* %378, align 8, !tbaa !16
  %380 = fmul double %360, %379
  %381 = call double @sqrt(double %380) #13
  %382 = fptrunc double %381 to float
  %383 = or i32 %370, 1
  %384 = sext i32 %383 to i64
  %385 = getelementptr inbounds float* %159, i64 %384
  store float %382, float* %385, align 4, !tbaa !14
  %386 = or i32 %375, 1
  %387 = sext i32 %386 to i64
  %388 = getelementptr inbounds float* %159, i64 %387
  store float %382, float* %388, align 4, !tbaa !14
  %indvars.iv.next39.i = add nuw nsw i64 %indvars.iv38.i, 1
  %lftr.wideiv27 = trunc i64 %indvars.iv38.i to i32
  %exitcond28 = icmp eq i32 %lftr.wideiv27, %indvars.iv
  br i1 %exitcond28, label %._crit_edge17.i, label %361

._crit_edge17.i:                                  ; preds = %361
  %indvars.iv.next45.i = add nuw nsw i64 %indvars.iv44.i, 1
  %indvars.iv.next = add nuw i32 %indvars.iv, 1
  %lftr.wideiv29 = trunc i64 %indvars.iv44.i to i32
  %exitcond30 = icmp eq i32 %lftr.wideiv29, %286
  br i1 %exitcond30, label %.loopexit5.i, label %.lr.ph16.i

.loopexit5.i:                                     ; preds = %._crit_edge24.i, %._crit_edge17.i, %.preheader6.i, %.preheader8.i
  %389 = load %struct.__sFILE** @debug, align 8, !tbaa !27
  %390 = icmp eq %struct.__sFILE* %389, null
  br i1 %390, label %update_ff.exit, label %391

; <label>:391                                     ; preds = %.loopexit5.i
  %392 = load i32* %160, align 4, !tbaa !34
  %393 = icmp eq i32 %392, 0
  br i1 %393, label %.preheader2.i, label %.preheader1.i

.preheader2.i:                                    ; preds = %391
  br i1 %280, label %.lr.ph14.i, label %update_ff.exit

.lr.ph14.i:                                       ; preds = %.preheader2.i
  %394 = load double** @update_ff.sigma, align 8, !tbaa !27
  %395 = load double* %394, align 8, !tbaa !16
  %396 = load double** @update_ff.eps, align 8, !tbaa !27
  %397 = load double* %396, align 8, !tbaa !16
  %398 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %389, i8* getelementptr inbounds ([40 x i8]* @.str32, i64 0, i64 0), i32 0, double %395, double %397) #10
  %exitcond37.i11 = icmp eq i32 %157, 1
  br i1 %exitcond37.i11, label %.preheader.lr.ph.i, label %._crit_edge66.i.lr.ph

._crit_edge66.i.lr.ph:                            ; preds = %.lr.ph14.i
  %399 = add i32 %157, -2
  br label %._crit_edge66.i

.preheader1.i:                                    ; preds = %._crit_edge66.i, %391
  br i1 %280, label %.preheader.lr.ph.i, label %update_ff.exit

.preheader.lr.ph.i:                               ; preds = %.lr.ph14.i, %.preheader1.i
  %400 = add i32 %157, -1
  %401 = sext i32 %157 to i64
  br label %.lr.ph.i3

._crit_edge66.i:                                  ; preds = %._crit_edge66.i.lr.ph, %._crit_edge66.i
  %indvars.iv34.i12 = phi i64 [ 0, %._crit_edge66.i.lr.ph ], [ %indvars.iv.next35.i, %._crit_edge66.i ]
  %indvars.iv.next35.i = add nuw nsw i64 %indvars.iv34.i12, 1
  %.pre.i2 = load %struct.__sFILE** @debug, align 8, !tbaa !27
  %402 = load double** @update_ff.sigma, align 8, !tbaa !27
  %403 = getelementptr inbounds double* %402, i64 %indvars.iv.next35.i
  %404 = load double* %403, align 8, !tbaa !16
  %405 = load double** @update_ff.eps, align 8, !tbaa !27
  %406 = getelementptr inbounds double* %405, i64 %indvars.iv.next35.i
  %407 = load double* %406, align 8, !tbaa !16
  %408 = trunc i64 %indvars.iv.next35.i to i32
  %409 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %.pre.i2, i8* getelementptr inbounds ([40 x i8]* @.str32, i64 0, i64 0), i32 %408, double %404, double %407) #10
  %lftr.wideiv25 = trunc i64 %indvars.iv34.i12 to i32
  %exitcond26 = icmp eq i32 %lftr.wideiv25, %399
  br i1 %exitcond26, label %.preheader1.i, label %._crit_edge66.i

.lr.ph.i3:                                        ; preds = %._crit_edge.i, %.preheader.lr.ph.i
  %indvars.iv30.i = phi i64 [ 0, %.preheader.lr.ph.i ], [ %indvars.iv.next31.i, %._crit_edge.i ]
  %410 = mul nsw i64 %indvars.iv30.i, %401
  %411 = trunc i64 %indvars.iv30.i to i32
  br label %412

; <label>:412                                     ; preds = %446, %.lr.ph.i3
  %indvars.iv.i4 = phi i64 [ 0, %.lr.ph.i3 ], [ %indvars.iv.next.i5, %446 ]
  %413 = load i32* %160, align 4, !tbaa !34
  %414 = icmp eq i32 %413, 0
  %415 = load %struct.__sFILE** @debug, align 8, !tbaa !27
  %416 = add nsw i64 %indvars.iv.i4, %410
  br i1 %414, label %432, label %417

; <label>:417                                     ; preds = %412
  %418 = mul nsw i64 %416, 3
  %419 = add nsw i64 %418, 1
  %420 = getelementptr inbounds float* %159, i64 %419
  %421 = load float* %420, align 4, !tbaa !14
  %422 = fpext float %421 to double
  %423 = add nsw i64 %418, 2
  %424 = getelementptr inbounds float* %159, i64 %423
  %425 = load float* %424, align 4, !tbaa !14
  %426 = fpext float %425 to double
  %427 = getelementptr inbounds float* %159, i64 %418
  %428 = load float* %427, align 4, !tbaa !14
  %429 = fpext float %428 to double
  %430 = trunc i64 %indvars.iv.i4 to i32
  %431 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %415, i8* getelementptr inbounds ([52 x i8]* @.str33, i64 0, i64 0), i32 %411, i32 %430, double %422, double %426, double %429) #10
  br label %446

; <label>:432                                     ; preds = %412
  %433 = trunc i64 %416 to i32
  %434 = shl nsw i32 %433, 1
  %435 = sext i32 %434 to i64
  %436 = getelementptr inbounds float* %159, i64 %435
  %437 = load float* %436, align 4, !tbaa !14
  %438 = fpext float %437 to double
  %439 = or i32 %434, 1
  %440 = sext i32 %439 to i64
  %441 = getelementptr inbounds float* %159, i64 %440
  %442 = load float* %441, align 4, !tbaa !14
  %443 = fpext float %442 to double
  %444 = trunc i64 %indvars.iv.i4 to i32
  %445 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %415, i8* getelementptr inbounds ([42 x i8]* @.str34, i64 0, i64 0), i32 %411, i32 %444, double %438, double %443) #10
  br label %446

; <label>:446                                     ; preds = %432, %417
  %lftr.wideiv.pre-phi.i = phi i32 [ %430, %417 ], [ %444, %432 ]
  %indvars.iv.next.i5 = add nuw nsw i64 %indvars.iv.i4, 1
  %exitcond.i6 = icmp eq i32 %lftr.wideiv.pre-phi.i, %400
  br i1 %exitcond.i6, label %._crit_edge.i, label %412

._crit_edge.i:                                    ; preds = %446
  %indvars.iv.next31.i = add nuw nsw i64 %indvars.iv30.i, 1
  %exitcond = icmp eq i32 %411, %400
  br i1 %exitcond, label %update_ff.exit, label %.lr.ph.i3

update_ff.exit:                                   ; preds = %._crit_edge.i, %.loopexit5.i, %.preheader2.i, %.preheader1.i
  ret void
}

; Function Attrs: optsize
declare i8* @ftp2fn(i32, i32, %struct.t_filenm*) #1

; Function Attrs: optsize
declare void @fatal_error(i32, i8*, ...) #1

; Function Attrs: optsize
declare i8* @save_calloc(i8*, i8*, i32, i32, i32) #1

; Function Attrs: optsize
declare i32 @opt2bSet(i8*, i32, %struct.t_filenm*) #1

; Function Attrs: optsize
declare %struct.t_genalg* @init_ga(i8*, i32, %struct.t_range*) #1

; Function Attrs: optsize
declare i8* @opt2fn(i8*, i32, %struct.t_filenm*) #1

; Function Attrs: optsize
declare void @update_ga(%struct.__sFILE*, %struct.t_range*, %struct.t_genalg*) #1

; Function Attrs: optsize
declare void @gmx_finalize() #1

; Function Attrs: noreturn optsize
declare void @exit(i32) #8

; Function Attrs: nounwind optsize ssp uwtable
define void @print_forcefield(%struct.__sFILE* %fp, float %energy, i32 %natoms, [3 x float]* nocapture readonly %f, [3 x float]* nocapture readnone %fshake, [3 x float]* nocapture readnone %x, %struct.t_block* nocapture readnone %mols, float* nocapture readnone %mass) #5 {
  %1 = load %struct.t_genalg** @ga, align 8, !tbaa !27
  %2 = icmp eq %struct.t_genalg* %1, null
  br i1 %2, label %30, label %.preheader

.preheader:                                       ; preds = %0
  %3 = icmp sgt i32 %natoms, 0
  br i1 %3, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %4 = add i32 %natoms, -1
  br label %5

; <label>:5                                       ; preds = %5, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %5 ]
  %msf.01 = phi float [ 0.000000e+00, %.lr.ph ], [ %17, %5 ]
  %6 = getelementptr inbounds [3 x float]* %f, i64 %indvars.iv, i64 0
  %7 = load float* %6, align 4, !tbaa !14
  %8 = fmul float %7, %7
  %9 = getelementptr inbounds [3 x float]* %f, i64 %indvars.iv, i64 1
  %10 = bitcast float* %9 to <2 x float>*
  %11 = load <2 x float>* %10, align 4, !tbaa !14
  %12 = fmul <2 x float> %11, %11
  %13 = extractelement <2 x float> %12, i32 0
  %14 = fadd float %8, %13
  %15 = extractelement <2 x float> %12, i32 1
  %16 = fadd float %14, %15
  %17 = fadd float %msf.01, %16
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %lftr.wideiv4 = trunc i64 %indvars.iv to i32
  %exitcond5 = icmp eq i32 %lftr.wideiv4, %4
  br i1 %exitcond5, label %._crit_edge, label %5

._crit_edge:                                      ; preds = %5, %.preheader
  %msf.0.lcssa = phi float [ 0.000000e+00, %.preheader ], [ %17, %5 ]
  %18 = sitofp i32 %natoms to float
  %19 = fdiv float %msf.0.lcssa, %18
  %sqrtf = tail call float @sqrtf(float %19) #6
  %20 = load %struct.t_range** @range, align 8, !tbaa !27
  %21 = load float* @tol, align 4, !tbaa !14
  %22 = tail call i32 @print_ga(%struct.__sFILE* %fp, %struct.t_genalg* %1, float %sqrtf, float %energy, %struct.t_range* %20, float %21) #10
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %print_grid.exit, label %24

; <label>:24                                      ; preds = %._crit_edge
  %25 = load i32* @gmx_parallel, align 4, !tbaa !18
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %28, label %27

; <label>:27                                      ; preds = %24
  tail call void @gmx_finalize() #10
  br label %28

; <label>:28                                      ; preds = %24, %27
  %29 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !27
  %fputc = tail call i32 @fputc(i32 10, %struct.__sFILE* %29)
  tail call void @exit(i32 0) #14
  unreachable

; <label>:30                                      ; preds = %0
  %.b.i = load i1* @print_grid.bFirst, align 1
  br i1 %.b.i, label %36, label %.preheader4.i

.preheader4.i:                                    ; preds = %30, %.preheader4.i
  %indvars.iv8.i = phi i64 [ %indvars.iv.next9.i, %.preheader4.i ], [ 0, %30 ]
  %31 = getelementptr inbounds [5 x i8*]* @print_grid.desc, i64 0, i64 %indvars.iv8.i
  %32 = load i8** %31, align 8, !tbaa !27
  %33 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([4 x i8]* @.str40, i64 0, i64 0), i8* %32) #10
  %indvars.iv.next9.i = add nuw nsw i64 %indvars.iv8.i, 1
  %exitcond10.i = icmp eq i64 %indvars.iv.next9.i, 5
  br i1 %exitcond10.i, label %34, label %.preheader4.i

; <label>:34                                      ; preds = %.preheader4.i
  %35 = tail call i32 @fflush(%struct.__sFILE* %fp) #10
  store i1 true, i1* @print_grid.bFirst, align 1
  br label %36

; <label>:36                                      ; preds = %34, %30
  %37 = load float* @tol, align 4, !tbaa !14
  %fabsf.i = tail call float @fabsf(float %37) #6
  %38 = fpext float %fabsf.i to double
  %39 = fcmp olt double %38, 1.200000e-38
  br i1 %39, label %.preheader.i, label %40

; <label>:40                                      ; preds = %36
  %41 = load float* @epot, align 4, !tbaa !14
  %42 = fsub float %energy, %41
  %fabsf1.i = tail call float @fabsf(float %42) #6
  %43 = fcmp olt float %fabsf1.i, %37
  br i1 %43, label %.preheader.i, label %print_grid.exit

.preheader.i:                                     ; preds = %40, %36
  %44 = icmp sgt i32 %natoms, 0
  br i1 %44, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %45 = add i32 %natoms, -1
  br label %46

; <label>:46                                      ; preds = %46, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %46 ]
  %msf.05.i = phi float [ 0.000000e+00, %.lr.ph.i ], [ %58, %46 ]
  %47 = getelementptr inbounds [3 x float]* %f, i64 %indvars.iv.i, i64 0
  %48 = load float* %47, align 4, !tbaa !14
  %49 = fmul float %48, %48
  %50 = getelementptr inbounds [3 x float]* %f, i64 %indvars.iv.i, i64 1
  %51 = bitcast float* %50 to <2 x float>*
  %52 = load <2 x float>* %51, align 4, !tbaa !14
  %53 = fmul <2 x float> %52, %52
  %54 = extractelement <2 x float> %53, i32 0
  %55 = fadd float %49, %54
  %56 = extractelement <2 x float> %53, i32 1
  %57 = fadd float %55, %56
  %58 = fadd float %msf.05.i, %57
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %lftr.wideiv = trunc i64 %indvars.iv.i to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %45
  br i1 %exitcond, label %._crit_edge.i, label %46

._crit_edge.i:                                    ; preds = %46, %.preheader.i
  %msf.0.lcssa.i = phi float [ 0.000000e+00, %.preheader.i ], [ %58, %46 ]
  %59 = sitofp i32 %natoms to float
  %60 = fdiv float %msf.0.lcssa.i, %59
  %sqrtf.i = tail call float @sqrtf(float %60) #6
  %61 = load float* @forcemax, align 4, !tbaa !14
  %fabsf2.i = tail call float @fabsf(float %61) #6
  %62 = fpext float %fabsf2.i to double
  %notlhs.i = fcmp uge double %62, 1.200000e-38
  %notrhs.i = fcmp uge float %sqrtf.i, %61
  %or.cond.not.i = and i1 %notrhs.i, %notlhs.i
  %63 = icmp eq %struct.__sFILE* %fp, null
  %or.cond3.i = or i1 %63, %or.cond.not.i
  br i1 %or.cond3.i, label %print_grid.exit, label %64

; <label>:64                                      ; preds = %._crit_edge.i
  %65 = load float* @ratio, align 4, !tbaa !14
  %66 = fmul float %sqrtf.i, %65
  %67 = load float* @epot, align 4, !tbaa !14
  %68 = fsub float %energy, %67
  %fabsf.i.i.i = tail call float @fabsf(float %68) #6
  %69 = fadd float %66, %fabsf.i.i.i
  %70 = fpext float %69 to double
  %71 = fpext float %sqrtf.i to double
  %72 = fpext float %energy to double
  %73 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([20 x i8]* @.str41, i64 0, i64 0), double %70, double %71, double %72) #10
  %74 = load i32* @nparm, align 4, !tbaa !18
  %75 = icmp sgt i32 %74, 0
  br i1 %75, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %64, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %.lr.ph.i.i ], [ 0, %64 ]
  %76 = load %struct.t_range** @range, align 8, !tbaa !27
  %77 = getelementptr inbounds %struct.t_range* %76, i64 %indvars.iv.i.i, i32 2
  %78 = load i32* %77, align 4, !tbaa !26
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds [5 x i8*]* @esenm, i64 0, i64 %79
  %81 = load i8** %80, align 8, !tbaa !27
  %82 = getelementptr inbounds %struct.t_range* %76, i64 %indvars.iv.i.i, i32 6
  %83 = load float* %82, align 4, !tbaa !25
  %84 = fpext float %83 to double
  %85 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([9 x i8]* @.str42, i64 0, i64 0), i8* %81, double %84) #10
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1
  %86 = load i32* @nparm, align 4, !tbaa !18
  %87 = sext i32 %86 to i64
  %88 = icmp slt i64 %indvars.iv.next.i.i, %87
  br i1 %88, label %.lr.ph.i.i, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %64
  %89 = tail call i64 @fwrite(i8* getelementptr inbounds ([5 x i8]* @.str43, i64 0, i64 0), i64 4, i64 1, %struct.__sFILE* %fp) #9
  %90 = tail call i32 @fflush(%struct.__sFILE* %fp) #10
  br label %print_grid.exit

print_grid.exit:                                  ; preds = %._crit_edge.i.i, %._crit_edge.i, %40, %._crit_edge
  ret void
}

; Function Attrs: nounwind optsize readnone
declare double @sqrt(double) #6

; Function Attrs: optsize
declare i32 @print_ga(%struct.__sFILE*, %struct.t_genalg*, float, float, %struct.t_range*, float) #1

; Function Attrs: optsize
declare i32 @get_file(i8*, i8***) #1

; Function Attrs: optsize
declare void @strip_comment(i8*) #1

; Function Attrs: nounwind optsize
declare i32 @sscanf(i8* nocapture readonly, i8* nocapture readonly, ...) #7

; Function Attrs: optsize
declare void @save_free(i8*, i8*, i32, i8*) #1

; Function Attrs: nounwind readnone
declare double @llvm.pow.f64(double, double) #3

; Function Attrs: nounwind optsize
declare i32 @fflush(%struct.__sFILE* nocapture) #7

declare float @sqrtf(float)

declare float @fabsf(float)

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct.__sFILE* nocapture) #9

; Function Attrs: nounwind
declare i32 @fputc(i32, %struct.__sFILE* nocapture) #9

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #9

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #9

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #9

attributes #0 = { alwaysinline nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { alwaysinline nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }
attributes #4 = { nounwind optsize readonly ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { noreturn optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { nounwind }
attributes #10 = { nounwind optsize }
attributes #11 = { readnone }
attributes #12 = { optsize }
attributes #13 = { nounwind optsize readnone }
attributes #14 = { noreturn nounwind optsize }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!2 = !{!3, !7, i64 12}
!3 = !{!"__sFILE", !4, i64 0, !7, i64 8, !7, i64 12, !8, i64 16, !8, i64 18, !9, i64 24, !7, i64 40, !4, i64 48, !4, i64 56, !4, i64 64, !4, i64 72, !4, i64 80, !9, i64 88, !4, i64 104, !7, i64 112, !5, i64 116, !5, i64 119, !9, i64 120, !7, i64 136, !10, i64 144}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!"int", !5, i64 0}
!8 = !{!"short", !5, i64 0}
!9 = !{!"__sbuf", !4, i64 0, !7, i64 8}
!10 = !{!"long long", !5, i64 0}
!11 = !{!3, !7, i64 40}
!12 = !{!3, !4, i64 0}
!13 = !{!5, !5, i64 0}
!14 = !{!15, !15, i64 0}
!15 = !{!"float", !5, i64 0}
!16 = !{!17, !17, i64 0}
!17 = !{!"double", !5, i64 0}
!18 = !{!7, !7, i64 0}
!19 = !{!20, !4, i64 1032}
!20 = !{!"", !5, i64 0, !7, i64 1024, !4, i64 1032, !7, i64 1040, !4, i64 1048}
!21 = !{!20, !4, i64 1048}
!22 = !{!23, !7, i64 0}
!23 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8, !15, i64 12, !15, i64 16, !15, i64 20, !15, i64 24}
!24 = !{!23, !15, i64 12}
!25 = !{!23, !15, i64 24}
!26 = !{!23, !7, i64 8}
!27 = !{!4, !4, i64 0}
!28 = !{!23, !7, i64 4}
!29 = !{!23, !15, i64 16}
!30 = !{!23, !15, i64 20}
!31 = !{!32, !7, i64 2812}
!32 = !{!"", !7, i64 0, !15, i64 4, !15, i64 8, !15, i64 12, !15, i64 16, !15, i64 20, !15, i64 24, !7, i64 28, !15, i64 32, !15, i64 36, !15, i64 40, !15, i64 44, !15, i64 48, !7, i64 52, !7, i64 56, !15, i64 60, !7, i64 64, !15, i64 68, !4, i64 72, !4, i64 80, !4, i64 88, !4, i64 96, !15, i64 104, !15, i64 108, !4, i64 112, !15, i64 120, !15, i64 124, !15, i64 128, !15, i64 132, !7, i64 136, !15, i64 140, !15, i64 144, !7, i64 148, !7, i64 152, !7, i64 156, !7, i64 160, !7, i64 164, !7, i64 168, !7, i64 172, !7, i64 176, !5, i64 180, !7, i64 192, !7, i64 196, !7, i64 200, !7, i64 204, !4, i64 208, !4, i64 216, !4, i64 224, !4, i64 232, !5, i64 240, !5, i64 1488, !7, i64 2736, !7, i64 2740, !4, i64 2744, !4, i64 2752, !4, i64 2760, !7, i64 2768, !15, i64 2772, !4, i64 2776, !7, i64 2784, !4, i64 2792, !4, i64 2800, !7, i64 2808, !7, i64 2812, !7, i64 2816, !4, i64 2824, !4, i64 2832, !15, i64 2840}
!33 = !{!32, !4, i64 2824}
!34 = !{!32, !7, i64 2816}
