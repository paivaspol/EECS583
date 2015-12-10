; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/do_gct.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct.t_interaction_function = type { i8*, i8*, i32, i32, i32, i64, i32, float (i32, i32*, %union.t_iparams*, [3 x float]*, [3 x float]*, %struct.t_forcerec*, %struct.t_graph*, [3 x float]*, float, float*, %struct.t_mdatoms*, i32, float*, float*, %struct.t_fcdata*)* }
%union.t_iparams = type { %struct.anon.5 }
%struct.anon.5 = type { float, float, float, float, float, float }
%struct.t_forcerec = type { i32, float, float, float, float, float, float, i32, float, float, float, float, float, i32, i32, float, i32, float, float*, float*, float*, float*, float, float, float*, float, float, float, float, i32, float, float, i32, i32, i32, i32, i32, i32, i32, i32, [3 x float], i32, i32, i32, i32, i32*, i32*, [3 x float]*, [3 x float]*, [13 x %struct.t_nblist], [13 x %struct.t_nblist], i32, i32, [3 x float]*, [3 x float]*, [3 x float]*, i32, float, [3 x float]*, i32, i32*, float*, i32, i32, i32, float*, i32*, float }
%struct.t_nblist = type { i32, i32, i32, i32, i32, i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32, i32* }
%struct.t_graph = type { i32, i32, i32, i32, i32, i32*, i32**, [3 x i32]* }
%struct.t_mdatoms = type { float, i32, float*, float*, float*, float*, float*, float*, float*, i32*, i32*, i32*, i32*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16* }
%struct.t_fcdata = type { %struct.t_disresdata, %struct.t_oriresdata }
%struct.t_disresdata = type { i32, i32, float, float, float, float, float, i32, i32, float, float*, float*, float*, float*, float* }
%struct.t_oriresdata = type { float, float, float, float, i32, i32, i32, float, float*, [3 x float]*, [3 x float]*, [3 x [3 x float]], [3 x [3 x float]]*, [5 x float]*, [5 x float]*, [5 x float]*, float*, float*, float*, float, [5 x float]*, float*** }
%struct.t_coupl_rec = type { [14 x float], [14 x float], [14 x float], [14 x i32], i32, i32, i32, i32, %struct.t_coupl_LJ*, %struct.t_coupl_BU*, %struct.t_coupl_Q*, %struct.t_coupl_iparams*, i32, i32, i32 }
%struct.t_coupl_LJ = type { i32, i32, i32, i32, float, float, float, float }
%struct.t_coupl_BU = type { i32, i32, i32, i32, float, float, float, float, float, float }
%struct.t_coupl_Q = type { i32, i32, i32, float, float }
%struct.t_coupl_iparams = type { i32, i32, %union.t_iparams, %union.t_iparams }
%struct.t_filenm = type { i32, i8*, i8*, i64 }
%struct.t_commrec = type { i32, i32, i32, i32, i32, i32 }
%struct.t_idef = type { i32, i32, i32, i32*, %union.t_iparams*, [44 x %struct.t_ilist] }
%struct.t_ilist = type { i32, [256 x i32], i32* }
%struct.t_inputrec = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, float, float, float, i32, i32, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, i32, float, [3 x [3 x float]], [3 x [3 x float]], i32, float, float, i32, float, float, i32, float, float, float, i32, float, float, i32, float, float, float, float, float, i32, i32, i32, float, float, float, i32, float, float, i32, i32, i32, i32, i32, float, i32, float, float, i32, float, i32, i32, i32, i32, float, float, float, float, %struct.t_grpopts, [3 x %struct.t_cosines], [3 x %struct.t_cosines] }
%struct.t_grpopts = type { i32, i32, i32, i32, float*, float*, float*, [3 x float]*, [3 x i32]*, i32* }
%struct.t_cosines = type { i32, float*, float* }

@.str = private unnamed_addr constant [4 x i8] c"tcr\00", align 1
@.str1 = private unnamed_addr constant [66 x i8] c"../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/do_gct.c\00", align 1
@.str2 = private unnamed_addr constant [3 x i8] c"-j\00", align 1
@.str3 = private unnamed_addr constant [4 x i8] c"-jo\00", align 1
@gprod.nbuf = internal unnamed_addr global i32 0, align 4
@gprod.buf = internal unnamed_addr global [2 x float*] zeroinitializer, align 16
@.str4 = private unnamed_addr constant [9 x i8] c"buf[cur]\00", align 1
@.str5 = private unnamed_addr constant [10 x i8] c"buf[next]\00", align 1
@do_coupling.f6 = internal unnamed_addr global float* null, align 8
@do_coupling.f12 = internal unnamed_addr global float* null, align 8
@do_coupling.fa = internal unnamed_addr global float* null, align 8
@do_coupling.fb = internal unnamed_addr global float* null, align 8
@do_coupling.fc = internal unnamed_addr global float* null, align 8
@do_coupling.fq = internal unnamed_addr global float* null, align 8
@do_coupling.bFirst = internal unnamed_addr global i1 false
@.str6 = private unnamed_addr constant [23 x i8] c"GCT: this is parallel\0A\00", align 1
@.str7 = private unnamed_addr constant [27 x i8] c"GCT: this is not parallel\0A\00", align 1
@.str8 = private unnamed_addr constant [3 x i8] c"f6\00", align 1
@.str9 = private unnamed_addr constant [4 x i8] c"f12\00", align 1
@.str10 = private unnamed_addr constant [3 x i8] c"fa\00", align 1
@.str11 = private unnamed_addr constant [3 x i8] c"fb\00", align 1
@.str12 = private unnamed_addr constant [3 x i8] c"fc\00", align 1
@.str13 = private unnamed_addr constant [3 x i8] c"fq\00", align 1
@.str14 = private unnamed_addr constant [48 x i8] c"GCT: TTT = %g, nrdf = %d, vir0 = %g,  Vol = %g\0A\00", align 1
@.str15 = private unnamed_addr constant [58 x i8] c"GCT: mu_aver = %g(D), mu_ind = %g(D), Epol = %g (kJ/mol)\0A\00", align 1
@debug = external global %struct.__sFILE*
@.str16 = private unnamed_addr constant [38 x i8] c"mu_ind: %g (%g D) mu_aver: %g (%g D)\0A\00", align 1
@.str17 = private unnamed_addr constant [35 x i8] c"Eref %g Epol %g Erunav %g Eact %g\0A\00", align 1
@.str18 = private unnamed_addr constant [34 x i8] c"Hack code for this to work again \00", align 1
@.str19 = private unnamed_addr constant [47 x i8] c"Have computed derivatives: xiH = %g, xiS = %g\0A\00", align 1
@.str20 = private unnamed_addr constant [42 x i8] c"No H, no Shell, edit code at %s, line %d\0A\00", align 1
@.str21 = private unnamed_addr constant [52 x i8] c"tcr->tcLJ[%d].xi_6 = %g, xi_12 = %g deviation = %g\0A\00", align 1
@.str22 = private unnamed_addr constant [29 x i8] c"buck (type=%d) = %e, %e, %e\0A\00", align 1
@.str23 = private unnamed_addr constant [27 x i8] c"Coupling type %d not found\00", align 1
@calc_dist.bFirst = internal unnamed_addr global i1 false
@pr_ff.prop = internal unnamed_addr global %struct.__sFILE* null, align 8
@pr_ff.out = internal unnamed_addr global %struct.__sFILE** null, align 8
@pr_ff.qq = internal unnamed_addr global %struct.__sFILE** null, align 8
@pr_ff.ip = internal unnamed_addr global %struct.__sFILE** null, align 8
@.str27 = private unnamed_addr constant [4 x i8] c"C12\00", align 1
@.str28 = private unnamed_addr constant [3 x i8] c"C6\00", align 1
@pr_ff.leg = private unnamed_addr constant [2 x i8*] [i8* getelementptr inbounds ([4 x i8]* @.str27, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str28, i32 0, i32 0)], align 16
@.str29 = private unnamed_addr constant [2 x i8] c"A\00", align 1
@.str30 = private unnamed_addr constant [2 x i8] c"B\00", align 1
@.str31 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@pr_ff.bleg = private unnamed_addr constant [3 x i8*] [i8* getelementptr inbounds ([2 x i8]* @.str29, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @.str30, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @.str31, i32 0, i32 0)], align 16
@.str32 = private unnamed_addr constant [7 x i8] c"-runav\00", align 1
@.str33 = private unnamed_addr constant [32 x i8] c"Properties and Running Averages\00", align 1
@.str34 = private unnamed_addr constant [10 x i8] c"Time (ps)\00", align 1
@.str35 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str36 = private unnamed_addr constant [6 x i8] c"raleg\00", align 1
@eoNames = external global [17 x i8*]
@.str37 = private unnamed_addr constant [6 x i8] c"RA-%s\00", align 1
@.str38 = private unnamed_addr constant [9 x i8] c"raleg[i]\00", align 1
@.str39 = private unnamed_addr constant [4 x i8] c"out\00", align 1
@.str40 = private unnamed_addr constant [7 x i8] c"-ffout\00", align 1
@.str41 = private unnamed_addr constant [31 x i8] c"General Coupling Lennard Jones\00", align 1
@.str42 = private unnamed_addr constant [23 x i8] c"Force constant (units)\00", align 1
@.str43 = private unnamed_addr constant [50 x i8] c"@ subtitle \22Interaction between types %d and %d\22\0A\00", align 1
@.str44 = private unnamed_addr constant [28 x i8] c"General Coupling Buckingham\00", align 1
@.str45 = private unnamed_addr constant [3 x i8] c"qq\00", align 1
@.str46 = private unnamed_addr constant [24 x i8] c"General Coupling Charge\00", align 1
@.str47 = private unnamed_addr constant [11 x i8] c"Charge (e)\00", align 1
@.str48 = private unnamed_addr constant [22 x i8] c"@ subtitle \22Type %d\22\0A\00", align 1
@.str49 = private unnamed_addr constant [3 x i8] c"ip\00", align 1
@.str50 = private unnamed_addr constant [8 x i8] c"gctIP%d\00", align 1
@.str51 = private unnamed_addr constant [25 x i8] c"General Coupling iparams\00", align 1
@.str52 = private unnamed_addr constant [6 x i8] c"ip ()\00", align 1
@.str53 = private unnamed_addr constant [29 x i8] c"@ subtitle \22Coupling to %s\22\0A\00", align 1
@interaction_function = external global [44 x %struct.t_interaction_function]
@.str54 = private unnamed_addr constant [7 x i8] c"%10.3f\00", align 1
@.str55 = private unnamed_addr constant [17 x i8] c"  %10.3e  %10.3e\00", align 1
@.str57 = private unnamed_addr constant [24 x i8] c"%14.7e  %14.7e  %14.7e\0A\00", align 1
@.str58 = private unnamed_addr constant [32 x i8] c"%14.7e  %14.7e  %14.7e  %14.7e\0A\00", align 1
@.str59 = private unnamed_addr constant [16 x i8] c"%14.7e  %14.7e\0A\00", align 1
@.str60 = private unnamed_addr constant [7 x i8] c"%10g  \00", align 1
@.str61 = private unnamed_addr constant [12 x i8] c"%10g  %10g\0A\00", align 1
@mk_gct_nm.buf = internal global [256 x i8] zeroinitializer, align 16
@.str62 = private unnamed_addr constant [6 x i8] c"%d.%s\00", align 1
@.str63 = private unnamed_addr constant [9 x i8] c"%d_%d.%s\00", align 1
@pr_dev.fp = internal unnamed_addr global %struct.__sFILE* null, align 8
@.str64 = private unnamed_addr constant [8 x i8] c"-devout\00", align 1
@.str65 = private unnamed_addr constant [29 x i8] c"Deviations from target value\00", align 1
@.str66 = private unnamed_addr constant [4 x i8] c"ptr\00", align 1
@.str67 = private unnamed_addr constant [9 x i8] c"  %10.3e\00", align 1
@.memset_pattern = internal unnamed_addr constant [4 x float] [float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00], align 16

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
  %16 = tail call i32 @__swbuf(i32 %_c, %struct.__sFILE* %_p) #9
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
  %3 = tail call float @llvm.fabs.f32(float %__x) #10
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
  %3 = tail call double @llvm.fabs.f64(double %__x) #10
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
  %3 = tail call x86_fp80 @llvm.fabs.f80(x86_fp80 %__x) #10
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
  %1 = tail call float @llvm.fabs.f32(float %__x) #10
  %2 = fcmp oeq float %1, 0x7FF0000000000000
  %3 = zext i1 %2 to i32
  ret i32 %3
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isinfd(double %__x) #2 {
  %1 = tail call double @llvm.fabs.f64(double %__x) #10
  %2 = fcmp oeq double %1, 0x7FF0000000000000
  %3 = zext i1 %2 to i32
  ret i32 %3
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isinfl(x86_fp80 %__x) #2 {
  %1 = tail call x86_fp80 @llvm.fabs.f80(x86_fp80 %__x) #10
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
  %1 = tail call <2 x float> @__sincosf_stret(float %__x) #9
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
  %1 = tail call { double, double } @__sincos_stret(double %__x) #9
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
  %1 = tail call <2 x float> @__sincospif_stret(float %__x) #9
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
  %1 = tail call { double, double } @__sincospi_stret(double %__x) #9
  %2 = extractvalue { double, double } %1, 0
  %3 = extractvalue { double, double } %1, 1
  store double %2, double* %__sinp, align 8, !tbaa !16
  store double %3, double* %__cosp, align 8, !tbaa !16
  ret void
}

; Function Attrs: optsize
declare { double, double } @__sincospi_stret(double) #1

; Function Attrs: nounwind optsize ssp uwtable
define %struct.t_coupl_rec* @init_coupling(%struct.__sFILE* %log, i32 %nfile, %struct.t_filenm* %fnm, %struct.t_commrec* %cr, %struct.t_forcerec* %fr, %struct.t_mdatoms* %md, %struct.t_idef* %idef) #4 {
  %tcr = alloca %struct.t_coupl_rec*, align 8
  %1 = tail call i8* @save_calloc(i8* getelementptr inbounds ([4 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str1, i64 0, i64 0), i32 61, i32 1, i32 288) #9
  %2 = bitcast %struct.t_coupl_rec** %tcr to i8**
  store i8* %1, i8** %2, align 8, !tbaa !18
  %3 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 0
  %4 = load i32* %3, align 4, !tbaa !19
  %5 = icmp eq i32 %4, 0
  %6 = bitcast i8* %1 to %struct.t_coupl_rec*
  br i1 %5, label %7, label %14

; <label>:7                                       ; preds = %0
  %8 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 4
  %9 = load i32* %8, align 4, !tbaa !21
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %14

; <label>:11                                      ; preds = %7
  %12 = tail call i8* @opt2fn(i8* getelementptr inbounds ([3 x i8]* @.str2, i64 0, i64 0), i32 %nfile, %struct.t_filenm* %fnm) #9
  tail call void @read_gct(i8* %12, %struct.t_coupl_rec* %6) #9
  %13 = tail call i8* @opt2fn(i8* getelementptr inbounds ([4 x i8]* @.str3, i64 0, i64 0), i32 %nfile, %struct.t_filenm* %fnm) #9
  tail call void @write_gct(i8* %13, %struct.t_coupl_rec* %6, %struct.t_idef* %idef) #9
  br label %14

; <label>:14                                      ; preds = %11, %7, %0
  tail call void @copy_ff(%struct.t_coupl_rec* %6, %struct.t_forcerec* %fr, %struct.t_mdatoms* %md, %struct.t_idef* %idef) #9
  %15 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 1
  %16 = load i32* %15, align 4, !tbaa !22
  %17 = icmp sgt i32 %16, 1
  br i1 %17, label %22, label %18

; <label>:18                                      ; preds = %14
  %19 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 5
  %20 = load i32* %19, align 4, !tbaa !23
  %21 = icmp sgt i32 %20, 1
  br i1 %21, label %22, label %23

; <label>:22                                      ; preds = %18, %14
  call void @comm_tcr(%struct.__sFILE* %log, %struct.t_commrec* %cr, %struct.t_coupl_rec** %tcr) #9
  %.pre = load %struct.t_coupl_rec** %tcr, align 8, !tbaa !18
  br label %23

; <label>:23                                      ; preds = %22, %18
  %24 = phi %struct.t_coupl_rec* [ %.pre, %22 ], [ %6, %18 ]
  ret %struct.t_coupl_rec* %24
}

; Function Attrs: optsize
declare i8* @save_calloc(i8*, i8*, i32, i32, i32) #1

; Function Attrs: optsize
declare void @read_gct(i8*, %struct.t_coupl_rec*) #1

; Function Attrs: optsize
declare i8* @opt2fn(i8*, i32, %struct.t_filenm*) #1

; Function Attrs: optsize
declare void @write_gct(i8*, %struct.t_coupl_rec*, %struct.t_idef*) #1

; Function Attrs: optsize
declare void @copy_ff(%struct.t_coupl_rec*, %struct.t_forcerec*, %struct.t_mdatoms*, %struct.t_idef*) #1

; Function Attrs: optsize
declare void @comm_tcr(%struct.__sFILE*, %struct.t_commrec*, %struct.t_coupl_rec**) #1

; Function Attrs: nounwind optsize ssp uwtable
define void @gprod(%struct.t_commrec* nocapture readonly %cr, i32 %n, float* nocapture %f) #4 {
  %1 = load i32* @gprod.nbuf, align 4, !tbaa !24
  %2 = icmp slt i32 %1, %n
  br i1 %2, label %3, label %.preheader1

; <label>:3                                       ; preds = %0
  store i32 %n, i32* @gprod.nbuf, align 4, !tbaa !24
  %4 = load i8** bitcast ([2 x float*]* @gprod.buf to i8**), align 16, !tbaa !18
  %5 = shl i32 %n, 2
  %6 = tail call i8* @save_realloc(i8* getelementptr inbounds ([9 x i8]* @.str4, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str1, i64 0, i64 0), i32 292, i8* %4, i32 %5) #9
  store i8* %6, i8** bitcast ([2 x float*]* @gprod.buf to i8**), align 16, !tbaa !18
  %7 = load i8** bitcast (float** getelementptr inbounds ([2 x float*]* @gprod.buf, i64 0, i64 1) to i8**), align 8, !tbaa !18
  %8 = load i32* @gprod.nbuf, align 4, !tbaa !24
  %9 = shl i32 %8, 2
  %10 = tail call i8* @save_realloc(i8* getelementptr inbounds ([10 x i8]* @.str5, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str1, i64 0, i64 0), i32 293, i8* %7, i32 %9) #9
  store i8* %10, i8** bitcast (float** getelementptr inbounds ([2 x float*]* @gprod.buf, i64 0, i64 1) to i8**), align 8, !tbaa !18
  br label %.preheader1

.preheader1:                                      ; preds = %3, %0
  %11 = icmp sgt i32 %n, 0
  br i1 %11, label %.lr.ph8, label %.preheader

.lr.ph8:                                          ; preds = %.preheader1
  %12 = load float** getelementptr inbounds ([2 x float*]* @gprod.buf, i64 0, i64 0), align 16, !tbaa !18
  %13 = add i32 %n, -1
  br label %21

.preheader:                                       ; preds = %21, %.preheader1
  %14 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 1
  %15 = load i32* %14, align 4, !tbaa !22
  %16 = icmp sgt i32 %15, 1
  br i1 %16, label %.lr.ph5, label %._crit_edge6

.lr.ph5:                                          ; preds = %.preheader
  %17 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 2
  %18 = shl i32 %n, 2
  %19 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 3
  %20 = add i32 %n, -1
  br label %27

; <label>:21                                      ; preds = %21, %.lr.ph8
  %indvars.iv9 = phi i64 [ 0, %.lr.ph8 ], [ %indvars.iv.next10, %21 ]
  %22 = getelementptr inbounds float* %f, i64 %indvars.iv9
  %23 = bitcast float* %22 to i32*
  %24 = load i32* %23, align 4, !tbaa !14
  %25 = getelementptr inbounds float* %12, i64 %indvars.iv9
  %26 = bitcast float* %25 to i32*
  store i32 %24, i32* %26, align 4, !tbaa !14
  %indvars.iv.next10 = add nuw nsw i64 %indvars.iv9, 1
  %lftr.wideiv11 = trunc i64 %indvars.iv9 to i32
  %exitcond12 = icmp eq i32 %lftr.wideiv11, %13
  br i1 %exitcond12, label %.preheader, label %21

; <label>:27                                      ; preds = %.lr.ph5, %._crit_edge
  %cur.04 = phi i32 [ 0, %.lr.ph5 ], [ %34, %._crit_edge ]
  %i.03 = phi i32 [ 0, %.lr.ph5 ], [ %48, %._crit_edge ]
  %28 = load i32* %17, align 4, !tbaa !25
  %29 = sext i32 %cur.04 to i64
  %30 = getelementptr inbounds [2 x float*]* @gprod.buf, i64 0, i64 %29
  %31 = bitcast float** %30 to i8**
  %32 = load i8** %31, align 8, !tbaa !18
  tail call void @gmx_tx(i32 %28, i8* %32, i32 %18) #9
  %33 = load i32* %19, align 4, !tbaa !26
  %34 = sub nsw i32 1, %cur.04
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [2 x float*]* @gprod.buf, i64 0, i64 %35
  %37 = bitcast float** %36 to i8**
  %38 = load i8** %37, align 8, !tbaa !18
  tail call void @gmx_rx(i32 %33, i8* %38, i32 %18) #9
  %39 = load i32* %17, align 4, !tbaa !25
  %40 = load i32* %19, align 4, !tbaa !26
  tail call void @gmx_wait(i32 %39, i32 %40) #9
  br i1 %11, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %27
  %41 = load float** %36, align 8, !tbaa !18
  br label %42

; <label>:42                                      ; preds = %42, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %42 ]
  %43 = getelementptr inbounds float* %41, i64 %indvars.iv
  %44 = load float* %43, align 4, !tbaa !14
  %45 = getelementptr inbounds float* %f, i64 %indvars.iv
  %46 = load float* %45, align 4, !tbaa !14
  %47 = fmul float %44, %46
  store float %47, float* %45, align 4, !tbaa !14
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %20
  br i1 %exitcond, label %._crit_edge, label %42

._crit_edge:                                      ; preds = %42, %27
  %48 = add nuw nsw i32 %i.03, 1
  %49 = load i32* %14, align 4, !tbaa !22
  %50 = add nsw i32 %49, -1
  %51 = icmp slt i32 %48, %50
  br i1 %51, label %27, label %._crit_edge6

._crit_edge6:                                     ; preds = %._crit_edge, %.preheader
  ret void
}

; Function Attrs: optsize
declare i8* @save_realloc(i8*, i8*, i32, i8*, i32) #1

; Function Attrs: optsize
declare void @gmx_tx(i32, i8*, i32) #1

; Function Attrs: optsize
declare void @gmx_rx(i32, i8*, i32) #1

; Function Attrs: optsize
declare void @gmx_wait(i32, i32) #1

; Function Attrs: nounwind optsize readnone ssp uwtable
define float @run_aver(float %old, float %cur, i32 %step, i32 %nmem) #5 {
  %1 = icmp slt i32 %nmem, 1
  %2 = select i1 %1, i32 1, i32 %nmem
  %3 = add nsw i32 %2, -1
  %4 = sitofp i32 %3 to float
  %5 = fmul float %4, %old
  %6 = fadd float %5, %cur
  %7 = sitofp i32 %2 to float
  %8 = fdiv float %6, %7
  ret float %8
}

; Function Attrs: nounwind optsize ssp uwtable
define void @do_coupling(%struct.__sFILE* nocapture %log, i32 %nfile, %struct.t_filenm* %fnm, %struct.t_coupl_rec* %tcr, float %t, i32 %step, float* nocapture readonly %ener, %struct.t_forcerec* nocapture readonly %fr, %struct.t_inputrec* nocapture readonly %ir, i32 %bMaster, %struct.t_mdatoms* nocapture readonly %md, %struct.t_idef* nocapture readonly %idef, float %mu_aver, i32 %nmols, %struct.t_commrec* nocapture readonly %cr, [3 x float]* nocapture readonly %box, [3 x float]* nocapture readonly %virial, [3 x float]* nocapture readonly %pres, float* nocapture readonly %mu_tot, [3 x float]* nocapture readnone %x, [3 x float]* nocapture readnone %f, i32 %bDoIt) #4 {
  %buf.i = alloca [256 x i8], align 16
  %leg.i = alloca [2 x i8*], align 16
  %bleg.i = alloca [3 x i8*], align 16
  %deviation = alloca [14 x float], align 16
  %prdev = alloca [14 x float], align 16
  %1 = bitcast [14 x float]* %deviation to i8*
  call void @llvm.lifetime.start(i64 56, i8* %1) #6
  %2 = bitcast [14 x float]* %prdev to i8*
  call void @llvm.lifetime.start(i64 56, i8* %2) #6
  %3 = getelementptr inbounds %struct.t_idef* %idef, i64 0, i32 2
  %4 = load i32* %3, align 4, !tbaa !27
  %5 = mul nsw i32 %4, %4
  %.b = load i1* @do_coupling.bFirst, align 1
  br i1 %.b, label %101, label %6

; <label>:6                                       ; preds = %0
  %7 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 1
  %8 = load i32* %7, align 4, !tbaa !22
  %9 = icmp sgt i32 %8, 1
  br i1 %9, label %14, label %10

; <label>:10                                      ; preds = %6
  %11 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 5
  %12 = load i32* %11, align 4, !tbaa !23
  %13 = icmp sgt i32 %12, 1
  br i1 %13, label %14, label %16

; <label>:14                                      ; preds = %10, %6
  %15 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8]* @.str6, i64 0, i64 0), i64 22, i64 1, %struct.__sFILE* %log)
  br label %18

; <label>:16                                      ; preds = %10
  %17 = tail call i64 @fwrite(i8* getelementptr inbounds ([27 x i8]* @.str7, i64 0, i64 0), i64 26, i64 1, %struct.__sFILE* %log)
  br label %18

; <label>:18                                      ; preds = %16, %14
  %19 = tail call i32 @fflush(%struct.__sFILE* %log) #9
  %20 = tail call i8* @save_calloc(i8* getelementptr inbounds ([3 x i8]* @.str8, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str1, i64 0, i64 0), i32 458, i32 %5, i32 4) #9
  store i8* %20, i8** bitcast (float** @do_coupling.f6 to i8**), align 8, !tbaa !18
  %21 = tail call i8* @save_calloc(i8* getelementptr inbounds ([4 x i8]* @.str9, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str1, i64 0, i64 0), i32 459, i32 %5, i32 4) #9
  store i8* %21, i8** bitcast (float** @do_coupling.f12 to i8**), align 8, !tbaa !18
  %22 = tail call i8* @save_calloc(i8* getelementptr inbounds ([3 x i8]* @.str10, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str1, i64 0, i64 0), i32 460, i32 %5, i32 4) #9
  store i8* %22, i8** bitcast (float** @do_coupling.fa to i8**), align 8, !tbaa !18
  %23 = tail call i8* @save_calloc(i8* getelementptr inbounds ([3 x i8]* @.str11, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str1, i64 0, i64 0), i32 461, i32 %5, i32 4) #9
  store i8* %23, i8** bitcast (float** @do_coupling.fb to i8**), align 8, !tbaa !18
  %24 = tail call i8* @save_calloc(i8* getelementptr inbounds ([3 x i8]* @.str12, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str1, i64 0, i64 0), i32 462, i32 %5, i32 4) #9
  store i8* %24, i8** bitcast (float** @do_coupling.fc to i8**), align 8, !tbaa !18
  %25 = load i32* %3, align 4, !tbaa !27
  %26 = tail call i8* @save_calloc(i8* getelementptr inbounds ([3 x i8]* @.str13, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str1, i64 0, i64 0), i32 463, i32 %25, i32 4) #9
  store i8* %26, i8** bitcast (float** @do_coupling.fq to i8**), align 8, !tbaa !18
  %27 = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 14
  %28 = load i32* %27, align 4, !tbaa !29
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %100, label %30

; <label>:30                                      ; preds = %18
  %31 = getelementptr inbounds [3 x float]* %box, i64 0, i64 0
  %32 = load float* %31, align 4, !tbaa !14
  %33 = getelementptr inbounds [3 x float]* %box, i64 1, i64 1
  %34 = load float* %33, align 4, !tbaa !14
  %35 = getelementptr inbounds [3 x float]* %box, i64 2, i64 2
  %36 = load float* %35, align 4, !tbaa !14
  %37 = fmul float %34, %36
  %38 = getelementptr inbounds [3 x float]* %box, i64 2, i64 1
  %39 = load float* %38, align 4, !tbaa !14
  %40 = getelementptr inbounds [3 x float]* %box, i64 1, i64 2
  %41 = load float* %40, align 4, !tbaa !14
  %42 = fmul float %39, %41
  %43 = fsub float %37, %42
  %44 = fmul float %32, %43
  %45 = getelementptr inbounds [3 x float]* %box, i64 1, i64 0
  %46 = load float* %45, align 4, !tbaa !14
  %47 = getelementptr inbounds [3 x float]* %box, i64 0, i64 1
  %48 = load float* %47, align 4, !tbaa !14
  %49 = fmul float %36, %48
  %50 = getelementptr inbounds [3 x float]* %box, i64 0, i64 2
  %51 = load float* %50, align 4, !tbaa !14
  %52 = fmul float %39, %51
  %53 = fsub float %49, %52
  %54 = fmul float %46, %53
  %55 = fsub float %44, %54
  %56 = getelementptr inbounds [3 x float]* %box, i64 2, i64 0
  %57 = load float* %56, align 4, !tbaa !14
  %58 = fmul float %41, %48
  %59 = fmul float %34, %51
  %60 = fsub float %58, %59
  %61 = fmul float %57, %60
  %62 = fadd float %61, %55
  %63 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 80, i32 0
  %64 = load i32* %63, align 4, !tbaa !31
  %65 = icmp sgt i32 %64, 0
  br i1 %65, label %.lr.ph92, label %._crit_edge93

.lr.ph92:                                         ; preds = %30
  %66 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 80, i32 4
  %67 = load float** %66, align 8, !tbaa !34
  %68 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 80, i32 5
  %69 = load float** %68, align 8, !tbaa !35
  %70 = sext i32 %64 to i64
  br label %71

; <label>:71                                      ; preds = %.lr.ph92, %71
  %indvars.iv136 = phi i64 [ 0, %.lr.ph92 ], [ %indvars.iv.next137, %71 ]
  %TTT.089 = phi float [ 0.000000e+00, %.lr.ph92 ], [ %80, %71 ]
  %nrdf.088 = phi i32 [ 0, %.lr.ph92 ], [ %76, %71 ]
  %72 = getelementptr inbounds float* %67, i64 %indvars.iv136
  %73 = load float* %72, align 4, !tbaa !14
  %74 = sitofp i32 %nrdf.088 to float
  %75 = fadd float %74, %73
  %76 = fptosi float %75 to i32
  %77 = getelementptr inbounds float* %69, i64 %indvars.iv136
  %78 = load float* %77, align 4, !tbaa !14
  %79 = fmul float %73, %78
  %80 = fadd float %TTT.089, %79
  %indvars.iv.next137 = add nuw nsw i64 %indvars.iv136, 1
  %81 = icmp slt i64 %indvars.iv.next137, %70
  br i1 %81, label %71, label %._crit_edge93

._crit_edge93:                                    ; preds = %71, %30
  %TTT.0.lcssa = phi float [ 0.000000e+00, %30 ], [ %80, %71 ]
  %nrdf.0.lcssa = phi i32 [ 0, %30 ], [ %76, %71 ]
  %82 = sitofp i32 %nrdf.0.lcssa to float
  %83 = fdiv float %TTT.0.lcssa, %82
  %84 = sitofp i32 %nrdf.0.lcssa to double
  %85 = fmul double %84, 0x3F710732CDE67DC4
  %86 = fpext float %83 to double
  %87 = fmul double %85, %86
  %88 = fpext float %62 to double
  %89 = fmul double %88, 1.500000e+00
  %90 = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 2, i64 0
  %91 = load float* %90, align 4, !tbaa !14
  %92 = fpext float %91 to double
  %93 = fmul double %89, %92
  %94 = fsub double %87, %93
  %95 = fptrunc double %94 to float
  %96 = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 2, i64 2
  store float %95, float* %96, align 4, !tbaa !14
  %97 = fpext float %95 to double
  %98 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %log, i8* getelementptr inbounds ([48 x i8]* @.str14, i64 0, i64 0), double %86, i32 %nrdf.0.lcssa, double %97, double %88) #9
  %99 = tail call i32 @fflush(%struct.__sFILE* %log) #9
  br label %100

; <label>:100                                     ; preds = %18, %._crit_edge93
  store i1 true, i1* @do_coupling.bFirst, align 1
  br label %101

; <label>:101                                     ; preds = %0, %100
  %102 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 0
  %103 = load i32* %102, align 4, !tbaa !19
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %114

; <label>:105                                     ; preds = %101
  %106 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 4
  %107 = load i32* %106, align 4, !tbaa !21
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %114

; <label>:109                                     ; preds = %105
  %110 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 8
  %111 = load i32* %110, align 4, !tbaa !36
  %112 = tail call i32 @do_per_step(i32 %step, i32 %111) #9
  %113 = icmp ne i32 %112, 0
  br label %114

; <label>:114                                     ; preds = %109, %105, %101
  %115 = phi i1 [ false, %105 ], [ false, %101 ], [ %113, %109 ]
  %116 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 15
  %117 = load float* %116, align 4, !tbaa !37
  %118 = icmp eq i32 %step, 0
  br i1 %118, label %.preheader58, label %151

.preheader58:                                     ; preds = %114, %.preheader58
  %indvars.iv132 = phi i64 [ %indvars.iv.next133, %.preheader58 ], [ 0, %114 ]
  %119 = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 2, i64 %indvars.iv132
  %120 = bitcast float* %119 to i32*
  %121 = load i32* %120, align 4, !tbaa !14
  %122 = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 1, i64 %indvars.iv132
  %123 = bitcast float* %122 to i32*
  store i32 %121, i32* %123, align 4, !tbaa !14
  %indvars.iv.next133 = add nuw nsw i64 %indvars.iv132, 1
  %exitcond134 = icmp eq i64 %indvars.iv.next133, 14
  br i1 %exitcond134, label %124, label %.preheader58

; <label>:124                                     ; preds = %.preheader58
  %125 = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 2, i64 13
  %126 = load float* %125, align 4, !tbaa !14
  %fabsf4 = tail call float @fabsf(float %126) #11
  %127 = fpext float %fabsf4 to double
  %128 = fcmp ogt double %127, 1.200000e-38
  br i1 %128, label %129, label %151

; <label>:129                                     ; preds = %124
  %130 = fpext float %126 to double
  %131 = fpext float %mu_aver to double
  %132 = fdiv double %130, 4.803210e+01
  %133 = fsub double %131, %132
  %134 = fptrunc double %133 to float
  %135 = fmul float %134, %134
  %136 = fpext float %135 to double
  %137 = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 2, i64 12
  %138 = load float* %137, align 4, !tbaa !14
  %139 = fpext float %138 to double
  %140 = fmul double %139, 1.439520e-02
  %141 = fdiv double %136, %140
  %142 = fptrunc double %141 to float
  %143 = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 1, i64 1
  %144 = load float* %143, align 4, !tbaa !14
  %145 = fsub float %144, %142
  store float %145, float* %143, align 4, !tbaa !14
  %146 = fmul double %131, 4.803210e+01
  %147 = fpext float %134 to double
  %148 = fmul double %147, 4.803210e+01
  %149 = fpext float %142 to double
  %150 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %log, i8* getelementptr inbounds ([58 x i8]* @.str15, i64 0, i64 0), double %146, double %148, double %149) #9
  br label %151

; <label>:151                                     ; preds = %124, %129, %114
  %.b.i = load i1* @calc_dist.bFirst, align 1
  br i1 %.b.i, label %calc_dist.exit, label %152

; <label>:152                                     ; preds = %151
  store i1 true, i1* @calc_dist.bFirst, align 1
  br label %calc_dist.exit

calc_dist.exit:                                   ; preds = %151, %152
  %153 = load float* %mu_tot, align 4, !tbaa !14
  %154 = fmul float %153, %153
  %155 = getelementptr inbounds float* %mu_tot, i64 1
  %156 = load float* %155, align 4, !tbaa !14
  %157 = fmul float %156, %156
  %158 = fadd float %154, %157
  %159 = getelementptr inbounds float* %mu_tot, i64 2
  %160 = load float* %159, align 4, !tbaa !14
  %161 = fmul float %160, %160
  %162 = fadd float %158, %161
  %sqrtf.i = tail call float @sqrtf(float %162) #11
  %163 = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 13
  %164 = load i32* %163, align 4, !tbaa !38
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %178, label %166

; <label>:166                                     ; preds = %calc_dist.exit
  %167 = getelementptr inbounds float* %ener, i64 17
  %168 = load float* %167, align 4, !tbaa !14
  %169 = getelementptr inbounds float* %ener, i64 13
  %170 = load float* %169, align 4, !tbaa !14
  %171 = fadd float %168, %170
  %172 = getelementptr inbounds float* %ener, i64 18
  %173 = load float* %172, align 4, !tbaa !14
  %174 = fadd float %171, %173
  %175 = getelementptr inbounds float* %ener, i64 15
  %176 = load float* %175, align 4, !tbaa !14
  %177 = fadd float %174, %176
  br label %Ecouple.exit

; <label>:178                                     ; preds = %calc_dist.exit
  %179 = getelementptr inbounds float* %ener, i64 37
  %180 = load float* %179, align 4, !tbaa !14
  br label %Ecouple.exit

Ecouple.exit:                                     ; preds = %166, %178
  %.0.i = phi float [ %177, %166 ], [ %180, %178 ]
  %181 = sitofp i32 %nmols to float
  %182 = fdiv float %.0.i, %181
  %183 = getelementptr inbounds [3 x float]* %virial, i64 0, i64 0
  %184 = load float* %183, align 4, !tbaa !14
  %185 = getelementptr inbounds [3 x float]* %virial, i64 1, i64 1
  %186 = load float* %185, align 4, !tbaa !14
  %187 = fadd float %184, %186
  %188 = getelementptr inbounds [3 x float]* %virial, i64 2, i64 2
  %189 = load float* %188, align 4, !tbaa !14
  %190 = fadd float %187, %189
  %191 = getelementptr inbounds float* %ener, i64 41
  %192 = load float* %191, align 4, !tbaa !14
  %193 = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 0, i64 0
  store float %192, float* %193, align 4, !tbaa !14
  %194 = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 1, i64 0
  %195 = load float* %194, align 4, !tbaa !14
  %196 = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 12
  %197 = load i32* %196, align 4, !tbaa !39
  %198 = icmp slt i32 %197, 1
  %199 = select i1 %198, i32 1, i32 %197
  %200 = add nsw i32 %199, -1
  %201 = sitofp i32 %200 to float
  %202 = fmul float %195, %201
  %203 = sitofp i32 %199 to float
  %204 = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 0, i64 1
  store float %182, float* %204, align 4, !tbaa !14
  %205 = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 1, i64 1
  %206 = load float* %205, align 4, !tbaa !14
  %207 = fmul float %206, %201
  %208 = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 0, i64 2
  store float %190, float* %208, align 4, !tbaa !14
  %209 = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 1, i64 2
  %210 = load float* %209, align 4, !tbaa !14
  %211 = fmul float %210, %201
  %212 = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 0, i64 3
  store float 0.000000e+00, float* %212, align 4, !tbaa !14
  %213 = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 1, i64 3
  %214 = load float* %213, align 4, !tbaa !14
  %215 = fmul float %214, %201
  %216 = insertelement <4 x float> undef, float %192, i32 0
  %217 = insertelement <4 x float> %216, float %182, i32 1
  %218 = insertelement <4 x float> %217, float %190, i32 2
  %219 = insertelement <4 x float> %218, float %215, i32 3
  %220 = insertelement <4 x float> undef, float %202, i32 0
  %221 = insertelement <4 x float> %220, float %207, i32 1
  %222 = insertelement <4 x float> %221, float %211, i32 2
  %223 = insertelement <4 x float> %222, float 0.000000e+00, i32 3
  %224 = fadd <4 x float> %219, %223
  %225 = insertelement <4 x float> undef, float %203, i32 0
  %226 = insertelement <4 x float> %225, float %203, i32 1
  %227 = insertelement <4 x float> %226, float %203, i32 2
  %228 = insertelement <4 x float> %227, float %203, i32 3
  %229 = fdiv <4 x float> %224, %228
  %230 = bitcast float* %194 to <4 x float>*
  store <4 x float> %229, <4 x float>* %230, align 4, !tbaa !14
  %231 = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 0, i64 4
  store float %sqrtf.i, float* %231, align 4, !tbaa !14
  %232 = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 1, i64 4
  %233 = load float* %232, align 4, !tbaa !14
  %234 = fmul float %233, %201
  %235 = fadd float %sqrtf.i, %234
  %236 = fdiv float %235, %203
  store float %236, float* %232, align 4, !tbaa !14
  %237 = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 0, i64 6
  store float 0.000000e+00, float* %237, align 4, !tbaa !14
  %238 = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 1, i64 6
  %239 = load float* %238, align 4, !tbaa !14
  %240 = fmul float %239, %201
  %241 = fadd float %240, 0.000000e+00
  %242 = fdiv float %241, %203
  store float %242, float* %238, align 4, !tbaa !14
  %243 = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 0, i64 7
  store float 0.000000e+00, float* %243, align 4, !tbaa !14
  %244 = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 1, i64 7
  %245 = load float* %244, align 4, !tbaa !14
  %246 = fmul float %245, %201
  %247 = fadd float %246, 0.000000e+00
  %248 = fdiv float %247, %203
  store float %248, float* %244, align 4, !tbaa !14
  %249 = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 0, i64 8
  store float 0.000000e+00, float* %249, align 4, !tbaa !14
  %250 = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 1, i64 8
  %251 = load float* %250, align 4, !tbaa !14
  %252 = fmul float %251, %201
  %253 = fadd float %252, 0.000000e+00
  %254 = fdiv float %253, %203
  store float %254, float* %250, align 4, !tbaa !14
  %255 = getelementptr inbounds [3 x float]* %pres, i64 0, i64 0
  %256 = load float* %255, align 4, !tbaa !14
  %257 = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 0, i64 9
  store float %256, float* %257, align 4, !tbaa !14
  %258 = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 1, i64 9
  %259 = load float* %258, align 4, !tbaa !14
  %260 = fmul float %259, %201
  %261 = fadd float %256, %260
  %262 = fdiv float %261, %203
  store float %262, float* %258, align 4, !tbaa !14
  %263 = getelementptr inbounds [3 x float]* %pres, i64 1, i64 1
  %264 = load float* %263, align 4, !tbaa !14
  %265 = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 0, i64 10
  store float %264, float* %265, align 4, !tbaa !14
  %266 = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 1, i64 10
  %267 = load float* %266, align 4, !tbaa !14
  %268 = fmul float %267, %201
  %269 = fadd float %264, %268
  %270 = fdiv float %269, %203
  store float %270, float* %266, align 4, !tbaa !14
  %271 = getelementptr inbounds [3 x float]* %pres, i64 2, i64 2
  %272 = load float* %271, align 4, !tbaa !14
  %273 = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 0, i64 11
  store float %272, float* %273, align 4, !tbaa !14
  %274 = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 1, i64 11
  %275 = load float* %274, align 4, !tbaa !14
  %276 = fmul float %275, %201
  %277 = fadd float %272, %276
  %278 = fdiv float %277, %203
  store float %278, float* %274, align 4, !tbaa !14
  %279 = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 2, i64 1
  %280 = load float* %279, align 4, !tbaa !14
  %281 = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 2, i64 13
  %282 = load float* %281, align 4, !tbaa !14
  %fabsf = tail call float @fabsf(float %282) #11
  %283 = fpext float %fabsf to double
  %284 = fcmp ogt double %283, 1.200000e-38
  br i1 %284, label %285, label %316

; <label>:285                                     ; preds = %Ecouple.exit
  %286 = fpext float %282 to double
  %287 = fpext float %mu_aver to double
  %288 = fdiv double %286, 4.803210e+01
  %289 = fsub double %287, %288
  %290 = fptrunc double %289 to float
  %291 = fmul float %290, %290
  %292 = fpext float %291 to double
  %293 = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 2, i64 12
  %294 = load float* %293, align 4, !tbaa !14
  %295 = fpext float %294 to double
  %296 = fmul double %295, 1.439520e-02
  %297 = fdiv double %292, %296
  %298 = fptrunc double %297 to float
  %299 = fsub float %280, %298
  %300 = load %struct.__sFILE** @debug, align 8, !tbaa !18
  %301 = icmp eq %struct.__sFILE* %300, null
  br i1 %301, label %316, label %302

; <label>:302                                     ; preds = %285
  %303 = fpext float %290 to double
  %304 = fmul double %303, 4.803210e+01
  %305 = fmul double %287, 4.803210e+01
  %306 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %300, i8* getelementptr inbounds ([38 x i8]* @.str16, i64 0, i64 0), double %303, double %304, double %287, double %305) #9
  %307 = load %struct.__sFILE** @debug, align 8, !tbaa !18
  %308 = load float* %279, align 4, !tbaa !14
  %309 = fpext float %308 to double
  %310 = fpext float %298 to double
  %311 = load float* %205, align 4, !tbaa !14
  %312 = fpext float %311 to double
  %313 = load float* %204, align 4, !tbaa !14
  %314 = fpext float %313 to double
  %315 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %307, i8* getelementptr inbounds ([35 x i8]* @.str17, i64 0, i64 0), double %309, double %310, double %312, double %314) #9
  br label %316

; <label>:316                                     ; preds = %285, %302, %Ecouple.exit
  %epot0.0 = phi float [ %299, %302 ], [ %299, %285 ], [ %280, %Ecouple.exit ]
  br i1 %115, label %317, label %.preheader56

; <label>:317                                     ; preds = %316
  %318 = bitcast [2 x i8*]* %leg.i to i8*
  call void @llvm.lifetime.start(i64 16, i8* %318)
  %319 = bitcast [3 x i8*]* %bleg.i to i8*
  call void @llvm.lifetime.start(i64 24, i8* %319)
  %320 = getelementptr inbounds [256 x i8]* %buf.i, i64 0, i64 0
  call void @llvm.lifetime.start(i64 256, i8* %320) #6
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %318, i8* bitcast ([2 x i8*]* @pr_ff.leg to i8*), i64 16, i32 16, i1 false) #6
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %319, i8* bitcast ([3 x i8*]* @pr_ff.bleg to i8*), i64 24, i32 16, i1 false) #6
  %321 = load %struct.__sFILE** @pr_ff.prop, align 8, !tbaa !18
  %322 = icmp eq %struct.__sFILE* %321, null
  %323 = load %struct.__sFILE*** @pr_ff.out, align 8
  %324 = icmp eq %struct.__sFILE** %323, null
  %or.cond.i = and i1 %322, %324
  %325 = load %struct.__sFILE*** @pr_ff.qq, align 8
  %326 = icmp eq %struct.__sFILE** %325, null
  %or.cond3.i = and i1 %or.cond.i, %326
  %327 = load %struct.__sFILE*** @pr_ff.ip, align 8
  %328 = icmp eq %struct.__sFILE** %327, null
  %or.cond5.i = and i1 %or.cond3.i, %328
  br i1 %or.cond5.i, label %329, label %514

; <label>:329                                     ; preds = %317
  %330 = tail call i8* @opt2fn(i8* getelementptr inbounds ([7 x i8]* @.str32, i64 0, i64 0), i32 %nfile, %struct.t_filenm* %fnm) #9
  %331 = tail call %struct.__sFILE* @xvgropen(i8* %330, i8* getelementptr inbounds ([32 x i8]* @.str33, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8]* @.str34, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str35, i64 0, i64 0)) #9
  store %struct.__sFILE* %331, %struct.__sFILE** @pr_ff.prop, align 8, !tbaa !18
  %332 = tail call i8* @save_calloc(i8* getelementptr inbounds ([6 x i8]* @.str36, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str1, i64 0, i64 0), i32 114, i32 28, i32 8) #9
  %333 = bitcast i8* %332 to i8**
  br label %334

; <label>:334                                     ; preds = %351, %329
  %indvars.iv52.i = phi i64 [ 0, %329 ], [ %indvars.iv.next53.i, %351 ]
  %j.032.i = phi i32 [ 0, %329 ], [ %j.1.i, %351 ]
  %335 = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 3, i64 %indvars.iv52.i
  %336 = load i32* %335, align 4, !tbaa !24
  %337 = icmp eq i32 %336, 0
  br i1 %337, label %351, label %338

; <label>:338                                     ; preds = %334
  %339 = getelementptr inbounds [17 x i8*]* @eoNames, i64 0, i64 %indvars.iv52.i
  %340 = load i8** %339, align 8, !tbaa !18
  %341 = call i8* @strdup(i8* %340) #9
  %342 = add nsw i32 %j.032.i, 1
  %343 = sext i32 %j.032.i to i64
  %344 = getelementptr inbounds i8** %333, i64 %343
  store i8* %341, i8** %344, align 8, !tbaa !18
  %345 = load i8** %339, align 8, !tbaa !18
  %346 = call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* %320, i32 0, i64 256, i8* getelementptr inbounds ([6 x i8]* @.str37, i64 0, i64 0), i8* %345) #9
  %347 = call i8* @strdup(i8* %320) #9
  %348 = add nsw i32 %j.032.i, 2
  %349 = sext i32 %342 to i64
  %350 = getelementptr inbounds i8** %333, i64 %349
  store i8* %347, i8** %350, align 8, !tbaa !18
  br label %351

; <label>:351                                     ; preds = %338, %334
  %j.1.i = phi i32 [ %348, %338 ], [ %j.032.i, %334 ]
  %indvars.iv.next53.i = add nuw nsw i64 %indvars.iv52.i, 1
  %exitcond54.i = icmp eq i64 %indvars.iv.next53.i, 14
  br i1 %exitcond54.i, label %352, label %334

; <label>:352                                     ; preds = %351
  %353 = load %struct.__sFILE** @pr_ff.prop, align 8, !tbaa !18
  call void @xvgr_legend(%struct.__sFILE* %353, i32 %j.1.i, i8** %333) #9
  %354 = icmp sgt i32 %j.1.i, 0
  br i1 %354, label %.lr.ph29.i, label %._crit_edge30.i

.lr.ph29.i:                                       ; preds = %352
  %355 = add i32 %j.1.i, -1
  br label %356

; <label>:356                                     ; preds = %356, %.lr.ph29.i
  %indvars.iv49.i = phi i64 [ 0, %.lr.ph29.i ], [ %indvars.iv.next50.i, %356 ]
  %357 = getelementptr inbounds i8** %333, i64 %indvars.iv49.i
  %358 = load i8** %357, align 8, !tbaa !18
  call void @save_free(i8* getelementptr inbounds ([9 x i8]* @.str38, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str1, i64 0, i64 0), i32 124, i8* %358) #9
  %indvars.iv.next50.i = add nuw nsw i64 %indvars.iv49.i, 1
  %lftr.wideiv130 = trunc i64 %indvars.iv49.i to i32
  %exitcond131 = icmp eq i32 %lftr.wideiv130, %355
  br i1 %exitcond131, label %._crit_edge30.i, label %356

._crit_edge30.i:                                  ; preds = %356, %352
  call void @save_free(i8* getelementptr inbounds ([6 x i8]* @.str36, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str1, i64 0, i64 0), i32 125, i8* %332) #9
  %359 = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 4
  %360 = load i32* %359, align 4, !tbaa !40
  %361 = icmp eq i32 %360, 0
  br i1 %361, label %400, label %362

; <label>:362                                     ; preds = %._crit_edge30.i
  %363 = call i8* @save_calloc(i8* getelementptr inbounds ([4 x i8]* @.str39, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str1, i64 0, i64 0), i32 128, i32 %360, i32 8) #9
  store i8* %363, i8** bitcast (%struct.__sFILE*** @pr_ff.out to i8**), align 8, !tbaa !18
  %364 = load i32* %359, align 4, !tbaa !40
  %365 = icmp sgt i32 %364, 0
  br i1 %365, label %.lr.ph26.i, label %.loopexit3.i

.lr.ph26.i:                                       ; preds = %362
  %366 = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 8
  %367 = getelementptr inbounds [2 x i8*]* %leg.i, i64 0, i64 0
  br label %368

; <label>:368                                     ; preds = %396, %.lr.ph26.i
  %369 = phi i32 [ %364, %.lr.ph26.i ], [ %397, %396 ]
  %indvars.iv47.i = phi i64 [ 0, %.lr.ph26.i ], [ %indvars.iv.next48.i, %396 ]
  %370 = load %struct.t_coupl_LJ** %366, align 8, !tbaa !41
  %371 = getelementptr inbounds %struct.t_coupl_LJ* %370, i64 %indvars.iv47.i, i32 3
  %372 = load i32* %371, align 4, !tbaa !42
  %373 = icmp eq i32 %372, 0
  br i1 %373, label %396, label %374

; <label>:374                                     ; preds = %368
  %375 = call i8* @opt2fn(i8* getelementptr inbounds ([7 x i8]* @.str40, i64 0, i64 0), i32 %nfile, %struct.t_filenm* %fnm) #9
  %376 = getelementptr inbounds %struct.t_coupl_LJ* %370, i64 %indvars.iv47.i, i32 0
  %377 = load i32* %376, align 4, !tbaa !44
  %378 = getelementptr inbounds %struct.t_coupl_LJ* %370, i64 %indvars.iv47.i, i32 1
  %379 = load i32* %378, align 4, !tbaa !45
  call fastcc void @mk_gct_nm(i8* %375, i32 %377, i32 %379) #9
  %380 = call %struct.__sFILE* @xvgropen(i8* getelementptr inbounds ([256 x i8]* @mk_gct_nm.buf, i64 0, i64 0), i8* getelementptr inbounds ([31 x i8]* @.str41, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8]* @.str34, i64 0, i64 0), i8* getelementptr inbounds ([23 x i8]* @.str42, i64 0, i64 0)) #9
  %381 = load %struct.__sFILE*** @pr_ff.out, align 8, !tbaa !18
  %382 = getelementptr inbounds %struct.__sFILE** %381, i64 %indvars.iv47.i
  store %struct.__sFILE* %380, %struct.__sFILE** %382, align 8, !tbaa !18
  %383 = load %struct.__sFILE*** @pr_ff.out, align 8, !tbaa !18
  %384 = getelementptr inbounds %struct.__sFILE** %383, i64 %indvars.iv47.i
  %385 = load %struct.__sFILE** %384, align 8, !tbaa !18
  %386 = load i32* %376, align 4, !tbaa !44
  %387 = load i32* %378, align 4, !tbaa !45
  %388 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %385, i8* getelementptr inbounds ([50 x i8]* @.str43, i64 0, i64 0), i32 %386, i32 %387) #9
  %389 = load %struct.__sFILE*** @pr_ff.out, align 8, !tbaa !18
  %390 = getelementptr inbounds %struct.__sFILE** %389, i64 %indvars.iv47.i
  %391 = load %struct.__sFILE** %390, align 8, !tbaa !18
  call void @xvgr_legend(%struct.__sFILE* %391, i32 2, i8** %367) #9
  %392 = load %struct.__sFILE*** @pr_ff.out, align 8, !tbaa !18
  %393 = getelementptr inbounds %struct.__sFILE** %392, i64 %indvars.iv47.i
  %394 = load %struct.__sFILE** %393, align 8, !tbaa !18
  %395 = call i32 @fflush(%struct.__sFILE* %394) #9
  %.pre.i = load i32* %359, align 4, !tbaa !40
  br label %396

; <label>:396                                     ; preds = %374, %368
  %397 = phi i32 [ %369, %368 ], [ %.pre.i, %374 ]
  %indvars.iv.next48.i = add nuw nsw i64 %indvars.iv47.i, 1
  %398 = sext i32 %397 to i64
  %399 = icmp slt i64 %indvars.iv.next48.i, %398
  br i1 %399, label %368, label %.loopexit3.i

; <label>:400                                     ; preds = %._crit_edge30.i
  %401 = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 5
  %402 = load i32* %401, align 4, !tbaa !46
  %403 = icmp eq i32 %402, 0
  br i1 %403, label %.loopexit3.i, label %404

; <label>:404                                     ; preds = %400
  %405 = call i8* @save_calloc(i8* getelementptr inbounds ([4 x i8]* @.str39, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str1, i64 0, i64 0), i32 145, i32 %402, i32 8) #9
  store i8* %405, i8** bitcast (%struct.__sFILE*** @pr_ff.out to i8**), align 8, !tbaa !18
  %406 = load i32* %401, align 4, !tbaa !46
  %407 = icmp sgt i32 %406, 0
  br i1 %407, label %.lr.ph23.i, label %.loopexit3.i

.lr.ph23.i:                                       ; preds = %404
  %408 = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 9
  %409 = getelementptr inbounds [3 x i8*]* %bleg.i, i64 0, i64 0
  br label %410

; <label>:410                                     ; preds = %438, %.lr.ph23.i
  %411 = phi i32 [ %406, %.lr.ph23.i ], [ %439, %438 ]
  %indvars.iv45.i = phi i64 [ 0, %.lr.ph23.i ], [ %indvars.iv.next46.i, %438 ]
  %412 = load %struct.t_coupl_BU** %408, align 8, !tbaa !47
  %413 = getelementptr inbounds %struct.t_coupl_BU* %412, i64 %indvars.iv45.i, i32 3
  %414 = load i32* %413, align 4, !tbaa !48
  %415 = icmp eq i32 %414, 0
  br i1 %415, label %438, label %416

; <label>:416                                     ; preds = %410
  %417 = call i8* @opt2fn(i8* getelementptr inbounds ([7 x i8]* @.str40, i64 0, i64 0), i32 %nfile, %struct.t_filenm* %fnm) #9
  %418 = getelementptr inbounds %struct.t_coupl_BU* %412, i64 %indvars.iv45.i, i32 0
  %419 = load i32* %418, align 4, !tbaa !50
  %420 = getelementptr inbounds %struct.t_coupl_BU* %412, i64 %indvars.iv45.i, i32 1
  %421 = load i32* %420, align 4, !tbaa !51
  call fastcc void @mk_gct_nm(i8* %417, i32 %419, i32 %421) #9
  %422 = call %struct.__sFILE* @xvgropen(i8* getelementptr inbounds ([256 x i8]* @mk_gct_nm.buf, i64 0, i64 0), i8* getelementptr inbounds ([28 x i8]* @.str44, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8]* @.str34, i64 0, i64 0), i8* getelementptr inbounds ([23 x i8]* @.str42, i64 0, i64 0)) #9
  %423 = load %struct.__sFILE*** @pr_ff.out, align 8, !tbaa !18
  %424 = getelementptr inbounds %struct.__sFILE** %423, i64 %indvars.iv45.i
  store %struct.__sFILE* %422, %struct.__sFILE** %424, align 8, !tbaa !18
  %425 = load %struct.__sFILE*** @pr_ff.out, align 8, !tbaa !18
  %426 = getelementptr inbounds %struct.__sFILE** %425, i64 %indvars.iv45.i
  %427 = load %struct.__sFILE** %426, align 8, !tbaa !18
  %428 = load i32* %418, align 4, !tbaa !50
  %429 = load i32* %420, align 4, !tbaa !51
  %430 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %427, i8* getelementptr inbounds ([50 x i8]* @.str43, i64 0, i64 0), i32 %428, i32 %429) #9
  %431 = load %struct.__sFILE*** @pr_ff.out, align 8, !tbaa !18
  %432 = getelementptr inbounds %struct.__sFILE** %431, i64 %indvars.iv45.i
  %433 = load %struct.__sFILE** %432, align 8, !tbaa !18
  call void @xvgr_legend(%struct.__sFILE* %433, i32 3, i8** %409) #9
  %434 = load %struct.__sFILE*** @pr_ff.out, align 8, !tbaa !18
  %435 = getelementptr inbounds %struct.__sFILE** %434, i64 %indvars.iv45.i
  %436 = load %struct.__sFILE** %435, align 8, !tbaa !18
  %437 = call i32 @fflush(%struct.__sFILE* %436) #9
  %.pre55.i = load i32* %401, align 4, !tbaa !46
  br label %438

; <label>:438                                     ; preds = %416, %410
  %439 = phi i32 [ %411, %410 ], [ %.pre55.i, %416 ]
  %indvars.iv.next46.i = add nuw nsw i64 %indvars.iv45.i, 1
  %440 = sext i32 %439 to i64
  %441 = icmp slt i64 %indvars.iv.next46.i, %440
  br i1 %441, label %410, label %.loopexit3.i

.loopexit3.i:                                     ; preds = %396, %438, %404, %400, %362
  %442 = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 6
  %443 = load i32* %442, align 4, !tbaa !52
  %444 = call i8* @save_calloc(i8* getelementptr inbounds ([3 x i8]* @.str45, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str1, i64 0, i64 0), i32 161, i32 %443, i32 8) #9
  store i8* %444, i8** bitcast (%struct.__sFILE*** @pr_ff.qq to i8**), align 8, !tbaa !18
  %445 = load i32* %442, align 4, !tbaa !52
  %446 = icmp sgt i32 %445, 0
  br i1 %446, label %.lr.ph19.i, label %._crit_edge20.i

.lr.ph19.i:                                       ; preds = %.loopexit3.i
  %447 = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 10
  br label %448

; <label>:448                                     ; preds = %473, %.lr.ph19.i
  %449 = phi i32 [ %445, %.lr.ph19.i ], [ %474, %473 ]
  %indvars.iv43.i = phi i64 [ 0, %.lr.ph19.i ], [ %indvars.iv.next44.i, %473 ]
  %450 = load %struct.t_coupl_Q** %447, align 8, !tbaa !53
  %451 = getelementptr inbounds %struct.t_coupl_Q* %450, i64 %indvars.iv43.i, i32 2
  %452 = load i32* %451, align 4, !tbaa !54
  %453 = icmp eq i32 %452, 0
  br i1 %453, label %473, label %454

; <label>:454                                     ; preds = %448
  %455 = call i8* @opt2fn(i8* getelementptr inbounds ([7 x i8]* @.str40, i64 0, i64 0), i32 %nfile, %struct.t_filenm* %fnm) #9
  %456 = load %struct.t_coupl_Q** %447, align 8, !tbaa !53
  %457 = getelementptr inbounds %struct.t_coupl_Q* %456, i64 %indvars.iv43.i, i32 0
  %458 = load i32* %457, align 4, !tbaa !56
  call fastcc void @mk_gct_nm(i8* %455, i32 %458, i32 -1) #9
  %459 = call %struct.__sFILE* @xvgropen(i8* getelementptr inbounds ([256 x i8]* @mk_gct_nm.buf, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8]* @.str46, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8]* @.str34, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8]* @.str47, i64 0, i64 0)) #9
  %460 = load %struct.__sFILE*** @pr_ff.qq, align 8, !tbaa !18
  %461 = getelementptr inbounds %struct.__sFILE** %460, i64 %indvars.iv43.i
  store %struct.__sFILE* %459, %struct.__sFILE** %461, align 8, !tbaa !18
  %462 = load %struct.__sFILE*** @pr_ff.qq, align 8, !tbaa !18
  %463 = getelementptr inbounds %struct.__sFILE** %462, i64 %indvars.iv43.i
  %464 = load %struct.__sFILE** %463, align 8, !tbaa !18
  %465 = load %struct.t_coupl_Q** %447, align 8, !tbaa !53
  %466 = getelementptr inbounds %struct.t_coupl_Q* %465, i64 %indvars.iv43.i, i32 0
  %467 = load i32* %466, align 4, !tbaa !56
  %468 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %464, i8* getelementptr inbounds ([22 x i8]* @.str48, i64 0, i64 0), i32 %467) #9
  %469 = load %struct.__sFILE*** @pr_ff.qq, align 8, !tbaa !18
  %470 = getelementptr inbounds %struct.__sFILE** %469, i64 %indvars.iv43.i
  %471 = load %struct.__sFILE** %470, align 8, !tbaa !18
  %472 = call i32 @fflush(%struct.__sFILE* %471) #9
  %.pre56.i = load i32* %442, align 4, !tbaa !52
  br label %473

; <label>:473                                     ; preds = %454, %448
  %474 = phi i32 [ %449, %448 ], [ %.pre56.i, %454 ]
  %indvars.iv.next44.i = add nuw nsw i64 %indvars.iv43.i, 1
  %475 = sext i32 %474 to i64
  %476 = icmp slt i64 %indvars.iv.next44.i, %475
  br i1 %476, label %448, label %._crit_edge20.i

._crit_edge20.i:                                  ; preds = %473, %.loopexit3.i
  %477 = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 7
  %478 = load i32* %477, align 4, !tbaa !57
  %479 = call i8* @save_calloc(i8* getelementptr inbounds ([3 x i8]* @.str49, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str1, i64 0, i64 0), i32 171, i32 %478, i32 8) #9
  store i8* %479, i8** bitcast (%struct.__sFILE*** @pr_ff.ip to i8**), align 8, !tbaa !18
  %480 = load i32* %477, align 4, !tbaa !57
  %481 = icmp sgt i32 %480, 0
  br i1 %481, label %.lr.ph16.i, label %.loopexit.i

.lr.ph16.i:                                       ; preds = %._crit_edge20.i
  %482 = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 11
  %483 = getelementptr inbounds %struct.t_idef* %idef, i64 0, i32 3
  br label %484

; <label>:484                                     ; preds = %484, %.lr.ph16.i
  %indvars.iv41.i = phi i64 [ 0, %.lr.ph16.i ], [ %indvars.iv.next42.i, %484 ]
  %485 = load %struct.t_coupl_iparams** %482, align 8, !tbaa !58
  %486 = getelementptr inbounds %struct.t_coupl_iparams* %485, i64 %indvars.iv41.i, i32 0
  %487 = load i32* %486, align 4, !tbaa !59
  %488 = call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* %320, i32 0, i64 256, i8* getelementptr inbounds ([8 x i8]* @.str50, i64 0, i64 0), i32 %487) #9
  %489 = call i8* @opt2fn(i8* getelementptr inbounds ([7 x i8]* @.str40, i64 0, i64 0), i32 %nfile, %struct.t_filenm* %fnm) #9
  call fastcc void @mk_gct_nm(i8* %489, i32 0, i32 -1) #9
  %490 = call %struct.__sFILE* @xvgropen(i8* getelementptr inbounds ([256 x i8]* @mk_gct_nm.buf, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8]* @.str51, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8]* @.str34, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8]* @.str52, i64 0, i64 0)) #9
  %491 = load %struct.__sFILE*** @pr_ff.ip, align 8, !tbaa !18
  %492 = getelementptr inbounds %struct.__sFILE** %491, i64 %indvars.iv41.i
  store %struct.__sFILE* %490, %struct.__sFILE** %492, align 8, !tbaa !18
  %493 = load %struct.t_coupl_iparams** %482, align 8, !tbaa !58
  %494 = getelementptr inbounds %struct.t_coupl_iparams* %493, i64 %indvars.iv41.i, i32 0
  %495 = load i32* %494, align 4, !tbaa !59
  %496 = load %struct.__sFILE*** @pr_ff.ip, align 8, !tbaa !18
  %497 = getelementptr inbounds %struct.__sFILE** %496, i64 %indvars.iv41.i
  %498 = load %struct.__sFILE** %497, align 8, !tbaa !18
  %499 = sext i32 %495 to i64
  %500 = load i32** %483, align 8, !tbaa !61
  %501 = getelementptr inbounds i32* %500, i64 %499
  %502 = load i32* %501, align 4, !tbaa !24
  %503 = sext i32 %502 to i64
  %504 = getelementptr inbounds [44 x %struct.t_interaction_function]* @interaction_function, i64 0, i64 %503, i32 1
  %505 = load i8** %504, align 8, !tbaa !62
  %506 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %498, i8* getelementptr inbounds ([29 x i8]* @.str53, i64 0, i64 0), i8* %505) #9
  %507 = load %struct.__sFILE*** @pr_ff.ip, align 8, !tbaa !18
  %508 = getelementptr inbounds %struct.__sFILE** %507, i64 %indvars.iv41.i
  %509 = load %struct.__sFILE** %508, align 8, !tbaa !18
  %510 = call i32 @fflush(%struct.__sFILE* %509) #9
  %indvars.iv.next42.i = add nuw nsw i64 %indvars.iv41.i, 1
  %511 = load i32* %477, align 4, !tbaa !57
  %512 = sext i32 %511 to i64
  %513 = icmp slt i64 %indvars.iv.next42.i, %512
  br i1 %513, label %484, label %.loopexit.i

.loopexit.i:                                      ; preds = %484, %._crit_edge20.i
  %.pre57.i = load %struct.__sFILE** @pr_ff.prop, align 8, !tbaa !18
  br label %514

; <label>:514                                     ; preds = %.loopexit.i, %317
  %515 = phi %struct.__sFILE* [ %.pre57.i, %.loopexit.i ], [ %321, %317 ]
  %516 = fpext float %t to double
  %517 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %515, i8* getelementptr inbounds ([7 x i8]* @.str54, i64 0, i64 0), double %516) #9
  br label %518

; <label>:518                                     ; preds = %531, %514
  %indvars.iv39.i = phi i64 [ 0, %514 ], [ %indvars.iv.next40.i, %531 ]
  %519 = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 3, i64 %indvars.iv39.i
  %520 = load i32* %519, align 4, !tbaa !24
  %521 = icmp eq i32 %520, 0
  br i1 %521, label %531, label %522

; <label>:522                                     ; preds = %518
  %523 = load %struct.__sFILE** @pr_ff.prop, align 8, !tbaa !18
  %524 = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 0, i64 %indvars.iv39.i
  %525 = load float* %524, align 4, !tbaa !14
  %526 = fpext float %525 to double
  %527 = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 1, i64 %indvars.iv39.i
  %528 = load float* %527, align 4, !tbaa !14
  %529 = fpext float %528 to double
  %530 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %523, i8* getelementptr inbounds ([17 x i8]* @.str55, i64 0, i64 0), double %526, double %529) #9
  br label %531

; <label>:531                                     ; preds = %522, %518
  %indvars.iv.next40.i = add nuw nsw i64 %indvars.iv39.i, 1
  %exitcond.i28 = icmp eq i64 %indvars.iv.next40.i, 14
  br i1 %exitcond.i28, label %532, label %518

; <label>:532                                     ; preds = %531
  %533 = load %struct.__sFILE** @pr_ff.prop, align 8, !tbaa !18
  %fputc.i = call i32 @fputc(i32 10, %struct.__sFILE* %533) #6
  %534 = load %struct.__sFILE** @pr_ff.prop, align 8, !tbaa !18
  %535 = call i32 @fflush(%struct.__sFILE* %534) #9
  %536 = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 4
  %537 = load i32* %536, align 4, !tbaa !40
  %538 = icmp sgt i32 %537, 0
  br i1 %538, label %.lr.ph12.i, label %.preheader2.i

.lr.ph12.i:                                       ; preds = %532
  %539 = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 8
  br label %544

.preheader2.i:                                    ; preds = %565, %532
  %540 = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 5
  %541 = load i32* %540, align 4, !tbaa !46
  %542 = icmp sgt i32 %541, 0
  br i1 %542, label %.lr.ph9.i, label %.preheader1.i

.lr.ph9.i:                                        ; preds = %.preheader2.i
  %543 = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 9
  br label %573

; <label>:544                                     ; preds = %565, %.lr.ph12.i
  %545 = phi i32 [ %537, %.lr.ph12.i ], [ %566, %565 ]
  %indvars.iv37.i = phi i64 [ 0, %.lr.ph12.i ], [ %indvars.iv.next38.i, %565 ]
  %546 = load %struct.t_coupl_LJ** %539, align 8, !tbaa !41
  %547 = getelementptr inbounds %struct.t_coupl_LJ* %546, i64 %indvars.iv37.i, i32 3
  %548 = load i32* %547, align 4, !tbaa !42
  %549 = icmp eq i32 %548, 0
  br i1 %549, label %565, label %550

; <label>:550                                     ; preds = %544
  %551 = load %struct.__sFILE*** @pr_ff.out, align 8, !tbaa !18
  %552 = getelementptr inbounds %struct.__sFILE** %551, i64 %indvars.iv37.i
  %553 = load %struct.__sFILE** %552, align 8, !tbaa !18
  %554 = getelementptr inbounds %struct.t_coupl_LJ* %546, i64 %indvars.iv37.i, i32 5
  %555 = load float* %554, align 4, !tbaa !65
  %556 = fpext float %555 to double
  %557 = getelementptr inbounds %struct.t_coupl_LJ* %546, i64 %indvars.iv37.i, i32 4
  %558 = load float* %557, align 4, !tbaa !66
  %559 = fpext float %558 to double
  %560 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %553, i8* getelementptr inbounds ([24 x i8]* @.str57, i64 0, i64 0), double %516, double %556, double %559) #9
  %561 = load %struct.__sFILE*** @pr_ff.out, align 8, !tbaa !18
  %562 = getelementptr inbounds %struct.__sFILE** %561, i64 %indvars.iv37.i
  %563 = load %struct.__sFILE** %562, align 8, !tbaa !18
  %564 = call i32 @fflush(%struct.__sFILE* %563) #9
  %.pre58.i = load i32* %536, align 4, !tbaa !40
  br label %565

; <label>:565                                     ; preds = %550, %544
  %566 = phi i32 [ %545, %544 ], [ %.pre58.i, %550 ]
  %indvars.iv.next38.i = add nuw nsw i64 %indvars.iv37.i, 1
  %567 = sext i32 %566 to i64
  %568 = icmp slt i64 %indvars.iv.next38.i, %567
  br i1 %568, label %544, label %.preheader2.i

.preheader1.i:                                    ; preds = %597, %.preheader2.i
  %569 = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 6
  %570 = load i32* %569, align 4, !tbaa !52
  %571 = icmp sgt i32 %570, 0
  br i1 %571, label %.lr.ph7.i, label %.preheader.i

.lr.ph7.i:                                        ; preds = %.preheader1.i
  %572 = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 10
  br label %606

; <label>:573                                     ; preds = %597, %.lr.ph9.i
  %574 = phi i32 [ %541, %.lr.ph9.i ], [ %598, %597 ]
  %indvars.iv35.i = phi i64 [ 0, %.lr.ph9.i ], [ %indvars.iv.next36.i, %597 ]
  %575 = load %struct.t_coupl_BU** %543, align 8, !tbaa !47
  %576 = getelementptr inbounds %struct.t_coupl_BU* %575, i64 %indvars.iv35.i, i32 3
  %577 = load i32* %576, align 4, !tbaa !48
  %578 = icmp eq i32 %577, 0
  br i1 %578, label %597, label %579

; <label>:579                                     ; preds = %573
  %580 = load %struct.__sFILE*** @pr_ff.out, align 8, !tbaa !18
  %581 = getelementptr inbounds %struct.__sFILE** %580, i64 %indvars.iv35.i
  %582 = load %struct.__sFILE** %581, align 8, !tbaa !18
  %583 = getelementptr inbounds %struct.t_coupl_BU* %575, i64 %indvars.iv35.i, i32 4
  %584 = load float* %583, align 4, !tbaa !67
  %585 = fpext float %584 to double
  %586 = getelementptr inbounds %struct.t_coupl_BU* %575, i64 %indvars.iv35.i, i32 5
  %587 = load float* %586, align 4, !tbaa !68
  %588 = fpext float %587 to double
  %589 = getelementptr inbounds %struct.t_coupl_BU* %575, i64 %indvars.iv35.i, i32 6
  %590 = load float* %589, align 4, !tbaa !69
  %591 = fpext float %590 to double
  %592 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %582, i8* getelementptr inbounds ([32 x i8]* @.str58, i64 0, i64 0), double %516, double %585, double %588, double %591) #9
  %593 = load %struct.__sFILE*** @pr_ff.out, align 8, !tbaa !18
  %594 = getelementptr inbounds %struct.__sFILE** %593, i64 %indvars.iv35.i
  %595 = load %struct.__sFILE** %594, align 8, !tbaa !18
  %596 = call i32 @fflush(%struct.__sFILE* %595) #9
  %.pre59.i = load i32* %540, align 4, !tbaa !46
  br label %597

; <label>:597                                     ; preds = %579, %573
  %598 = phi i32 [ %574, %573 ], [ %.pre59.i, %579 ]
  %indvars.iv.next36.i = add nuw nsw i64 %indvars.iv35.i, 1
  %599 = sext i32 %598 to i64
  %600 = icmp slt i64 %indvars.iv.next36.i, %599
  br i1 %600, label %573, label %.preheader1.i

.preheader.i:                                     ; preds = %624, %.preheader1.i
  %601 = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 7
  %602 = load i32* %601, align 4, !tbaa !57
  %603 = icmp sgt i32 %602, 0
  br i1 %603, label %.lr.ph.i29, label %pr_ff.exit

.lr.ph.i29:                                       ; preds = %.preheader.i
  %604 = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 11
  %605 = getelementptr inbounds %struct.t_idef* %idef, i64 0, i32 3
  br label %628

; <label>:606                                     ; preds = %624, %.lr.ph7.i
  %607 = phi i32 [ %570, %.lr.ph7.i ], [ %625, %624 ]
  %indvars.iv33.i = phi i64 [ 0, %.lr.ph7.i ], [ %indvars.iv.next34.i, %624 ]
  %608 = load %struct.t_coupl_Q** %572, align 8, !tbaa !53
  %609 = getelementptr inbounds %struct.t_coupl_Q* %608, i64 %indvars.iv33.i, i32 2
  %610 = load i32* %609, align 4, !tbaa !54
  %611 = icmp eq i32 %610, 0
  br i1 %611, label %624, label %612

; <label>:612                                     ; preds = %606
  %613 = load %struct.__sFILE*** @pr_ff.qq, align 8, !tbaa !18
  %614 = getelementptr inbounds %struct.__sFILE** %613, i64 %indvars.iv33.i
  %615 = load %struct.__sFILE** %614, align 8, !tbaa !18
  %616 = getelementptr inbounds %struct.t_coupl_Q* %608, i64 %indvars.iv33.i, i32 3
  %617 = load float* %616, align 4, !tbaa !70
  %618 = fpext float %617 to double
  %619 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %615, i8* getelementptr inbounds ([16 x i8]* @.str59, i64 0, i64 0), double %516, double %618) #9
  %620 = load %struct.__sFILE*** @pr_ff.qq, align 8, !tbaa !18
  %621 = getelementptr inbounds %struct.__sFILE** %620, i64 %indvars.iv33.i
  %622 = load %struct.__sFILE** %621, align 8, !tbaa !18
  %623 = call i32 @fflush(%struct.__sFILE* %622) #9
  %.pre60.i = load i32* %569, align 4, !tbaa !52
  br label %624

; <label>:624                                     ; preds = %612, %606
  %625 = phi i32 [ %607, %606 ], [ %.pre60.i, %612 ]
  %indvars.iv.next34.i = add nuw nsw i64 %indvars.iv33.i, 1
  %626 = sext i32 %625 to i64
  %627 = icmp slt i64 %indvars.iv.next34.i, %626
  br i1 %627, label %606, label %.preheader.i

; <label>:628                                     ; preds = %651, %.lr.ph.i29
  %indvars.iv.i30 = phi i64 [ 0, %.lr.ph.i29 ], [ %indvars.iv.next.i31, %651 ]
  %629 = load %struct.__sFILE*** @pr_ff.ip, align 8, !tbaa !18
  %630 = getelementptr inbounds %struct.__sFILE** %629, i64 %indvars.iv.i30
  %631 = load %struct.__sFILE** %630, align 8, !tbaa !18
  %632 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %631, i8* getelementptr inbounds ([7 x i8]* @.str60, i64 0, i64 0), double %516) #9
  %633 = load %struct.t_coupl_iparams** %604, align 8, !tbaa !58
  %634 = getelementptr inbounds %struct.t_coupl_iparams* %633, i64 %indvars.iv.i30, i32 0
  %635 = load i32* %634, align 4, !tbaa !59
  %636 = sext i32 %635 to i64
  %637 = load i32** %605, align 8, !tbaa !61
  %638 = getelementptr inbounds i32* %637, i64 %636
  %639 = load i32* %638, align 4, !tbaa !24
  %cond.i = icmp eq i32 %639, 0
  br i1 %cond.i, label %640, label %651

; <label>:640                                     ; preds = %628
  %641 = load %struct.__sFILE*** @pr_ff.ip, align 8, !tbaa !18
  %642 = getelementptr inbounds %struct.__sFILE** %641, i64 %indvars.iv.i30
  %643 = load %struct.__sFILE** %642, align 8, !tbaa !18
  %644 = getelementptr inbounds %struct.t_coupl_iparams* %633, i64 %indvars.iv.i30, i32 3, i32 0, i32 1
  %645 = load float* %644, align 4, !tbaa !71
  %646 = fpext float %645 to double
  %647 = getelementptr inbounds %struct.t_coupl_iparams* %633, i64 %indvars.iv.i30, i32 3, i32 0, i32 0
  %648 = load float* %647, align 4, !tbaa !73
  %649 = fpext float %648 to double
  %650 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %643, i8* getelementptr inbounds ([12 x i8]* @.str61, i64 0, i64 0), double %646, double %649) #9
  br label %651

; <label>:651                                     ; preds = %640, %628
  %652 = load %struct.__sFILE*** @pr_ff.ip, align 8, !tbaa !18
  %653 = getelementptr inbounds %struct.__sFILE** %652, i64 %indvars.iv.i30
  %654 = load %struct.__sFILE** %653, align 8, !tbaa !18
  %655 = call i32 @fflush(%struct.__sFILE* %654) #9
  %indvars.iv.next.i31 = add nuw nsw i64 %indvars.iv.i30, 1
  %656 = load i32* %601, align 4, !tbaa !57
  %657 = sext i32 %656 to i64
  %658 = icmp slt i64 %indvars.iv.next.i31, %657
  br i1 %658, label %628, label %pr_ff.exit

pr_ff.exit:                                       ; preds = %651, %.preheader.i
  call void @llvm.lifetime.end(i64 256, i8* %320) #6
  call void @llvm.lifetime.end(i64 16, i8* %318)
  call void @llvm.lifetime.end(i64 24, i8* %319)
  br label %.preheader56

.preheader56:                                     ; preds = %316, %pr_ff.exit, %.preheader56
  %indvars.iv127 = phi i64 [ %indvars.iv.next128, %.preheader56 ], [ 0, %pr_ff.exit ], [ 0, %316 ]
  %659 = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 1, i64 %indvars.iv127
  %660 = load float* %659, align 4, !tbaa !14
  %661 = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 0, i64 %indvars.iv127
  %662 = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 2, i64 %indvars.iv127
  %663 = load float* %662, align 4, !tbaa !14
  %664 = fsub float %663, %660
  %665 = getelementptr inbounds [14 x float]* %deviation, i64 0, i64 %indvars.iv127
  store float %664, float* %665, align 4, !tbaa !14
  %666 = load float* %661, align 4, !tbaa !14
  %667 = fsub float %663, %666
  %668 = getelementptr inbounds [14 x float]* %prdev, i64 0, i64 %indvars.iv127
  store float %667, float* %668, align 4, !tbaa !14
  %indvars.iv.next128 = add nuw nsw i64 %indvars.iv127, 1
  %exitcond129 = icmp eq i64 %indvars.iv.next128, 14
  br i1 %exitcond129, label %669, label %.preheader56

; <label>:669                                     ; preds = %.preheader56
  %670 = load float* %205, align 4, !tbaa !14
  %671 = fsub float %epot0.0, %670
  %672 = getelementptr inbounds [14 x float]* %deviation, i64 0, i64 1
  store float %671, float* %672, align 4, !tbaa !14
  %673 = load float* %204, align 4, !tbaa !14
  %674 = fsub float %epot0.0, %673
  %675 = getelementptr inbounds [14 x float]* %prdev, i64 0, i64 1
  store float %674, float* %675, align 4, !tbaa !14
  br i1 %115, label %676, label %.preheader55

; <label>:676                                     ; preds = %669
  %677 = load %struct.__sFILE** @pr_dev.fp, align 8, !tbaa !18
  %678 = icmp eq %struct.__sFILE* %677, null
  br i1 %678, label %679, label %699

; <label>:679                                     ; preds = %676
  %680 = call i8* @opt2fn(i8* getelementptr inbounds ([8 x i8]* @.str64, i64 0, i64 0), i32 %nfile, %struct.t_filenm* %fnm) #9
  %681 = call %struct.__sFILE* @xvgropen(i8* %680, i8* getelementptr inbounds ([29 x i8]* @.str65, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8]* @.str34, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str35, i64 0, i64 0)) #9
  store %struct.__sFILE* %681, %struct.__sFILE** @pr_dev.fp, align 8, !tbaa !18
  %682 = call i8* @save_calloc(i8* getelementptr inbounds ([4 x i8]* @.str66, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str1, i64 0, i64 0), i32 237, i32 14, i32 8) #9
  %683 = bitcast i8* %682 to i8**
  br label %684

; <label>:684                                     ; preds = %696, %679
  %indvars.iv4.i = phi i64 [ 0, %679 ], [ %indvars.iv.next5.i, %696 ]
  %j.03.i = phi i32 [ 0, %679 ], [ %j.1.i32, %696 ]
  %685 = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 3, i64 %indvars.iv4.i
  %686 = load i32* %685, align 4, !tbaa !24
  %687 = icmp eq i32 %686, 0
  br i1 %687, label %696, label %688

; <label>:688                                     ; preds = %684
  %689 = getelementptr inbounds [17 x i8*]* @eoNames, i64 0, i64 %indvars.iv4.i
  %690 = bitcast i8** %689 to i64*
  %691 = load i64* %690, align 8, !tbaa !18
  %692 = add nsw i32 %j.03.i, 1
  %693 = sext i32 %j.03.i to i64
  %694 = getelementptr inbounds i8** %683, i64 %693
  %695 = bitcast i8** %694 to i64*
  store i64 %691, i64* %695, align 8, !tbaa !18
  br label %696

; <label>:696                                     ; preds = %688, %684
  %j.1.i32 = phi i32 [ %692, %688 ], [ %j.03.i, %684 ]
  %indvars.iv.next5.i = add nuw nsw i64 %indvars.iv4.i, 1
  %exitcond6.i = icmp eq i64 %indvars.iv.next5.i, 14
  br i1 %exitcond6.i, label %697, label %684

; <label>:697                                     ; preds = %696
  %698 = load %struct.__sFILE** @pr_dev.fp, align 8, !tbaa !18
  call void @xvgr_legend(%struct.__sFILE* %698, i32 %j.1.i32, i8** %683) #9
  call void @save_free(i8* getelementptr inbounds ([4 x i8]* @.str66, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str1, i64 0, i64 0), i32 242, i8* %682) #9
  %.pre.i33 = load %struct.__sFILE** @pr_dev.fp, align 8, !tbaa !18
  br label %699

; <label>:699                                     ; preds = %697, %676
  %700 = phi %struct.__sFILE* [ %677, %676 ], [ %.pre.i33, %697 ]
  %701 = fpext float %t to double
  %702 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %700, i8* getelementptr inbounds ([7 x i8]* @.str54, i64 0, i64 0), double %701) #9
  br label %703

; <label>:703                                     ; preds = %713, %699
  %indvars.iv.i34 = phi i64 [ 0, %699 ], [ %indvars.iv.next.i35, %713 ]
  %704 = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 3, i64 %indvars.iv.i34
  %705 = load i32* %704, align 4, !tbaa !24
  %706 = icmp eq i32 %705, 0
  br i1 %706, label %713, label %707

; <label>:707                                     ; preds = %703
  %708 = load %struct.__sFILE** @pr_dev.fp, align 8, !tbaa !18
  %709 = getelementptr inbounds [14 x float]* %prdev, i64 0, i64 %indvars.iv.i34
  %710 = load float* %709, align 4, !tbaa !14
  %711 = fpext float %710 to double
  %712 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %708, i8* getelementptr inbounds ([9 x i8]* @.str67, i64 0, i64 0), double %711) #9
  br label %713

; <label>:713                                     ; preds = %707, %703
  %indvars.iv.next.i35 = add nuw nsw i64 %indvars.iv.i34, 1
  %exitcond.i36 = icmp eq i64 %indvars.iv.next.i35, 14
  br i1 %exitcond.i36, label %pr_dev.exit, label %703

pr_dev.exit:                                      ; preds = %713
  %714 = load %struct.__sFILE** @pr_dev.fp, align 8, !tbaa !18
  %fputc.i37 = call i32 @fputc(i32 10, %struct.__sFILE* %714) #6
  %715 = load %struct.__sFILE** @pr_dev.fp, align 8, !tbaa !18
  %716 = call i32 @fflush(%struct.__sFILE* %715) #9
  br label %.preheader55

.preheader55:                                     ; preds = %pr_dev.exit, %669
  %717 = icmp eq i32 %5, 0
  br i1 %717, label %.preheader54, label %.lr.ph85

.lr.ph85:                                         ; preds = %.preheader55
  %718 = load float** @do_coupling.fc, align 8, !tbaa !18
  %719 = load float** @do_coupling.fb, align 8, !tbaa !18
  %720 = load float** @do_coupling.fa, align 8, !tbaa !18
  %721 = load float** @do_coupling.f12, align 8, !tbaa !18
  %722 = load float** @do_coupling.f6, align 8, !tbaa !18
  %723 = zext i32 %5 to i64
  br label %730

.preheader54:                                     ; preds = %730, %.preheader55
  %724 = load i32* %3, align 4, !tbaa !27
  %725 = icmp sgt i32 %724, 0
  br i1 %725, label %.lr.ph82, label %737

.lr.ph82:                                         ; preds = %.preheader54
  %726 = load i8** bitcast (float** @do_coupling.fq to i8**), align 8, !tbaa !18
  %727 = icmp sgt i32 %724, 1
  %.op = add i32 %724, -1
  %728 = zext i32 %.op to i64
  %.op148 = shl nuw nsw i64 %728, 2
  %.op148.op = add nuw nsw i64 %.op148, 4
  %729 = select i1 %727, i64 %.op148.op, i64 4
  call void @memset_pattern16(i8* %726, i8* bitcast ([4 x float]* @.memset_pattern to i8*), i64 %729) #6
  br label %737

; <label>:730                                     ; preds = %.lr.ph85, %730
  %indvars.iv125 = phi i64 [ 0, %.lr.ph85 ], [ %indvars.iv.next126, %730 ]
  %731 = getelementptr inbounds float* %718, i64 %indvars.iv125
  store float 1.000000e+00, float* %731, align 4, !tbaa !14
  %732 = getelementptr inbounds float* %719, i64 %indvars.iv125
  store float 1.000000e+00, float* %732, align 4, !tbaa !14
  %733 = getelementptr inbounds float* %720, i64 %indvars.iv125
  store float 1.000000e+00, float* %733, align 4, !tbaa !14
  %734 = getelementptr inbounds float* %721, i64 %indvars.iv125
  store float 1.000000e+00, float* %734, align 4, !tbaa !14
  %735 = getelementptr inbounds float* %722, i64 %indvars.iv125
  store float 1.000000e+00, float* %735, align 4, !tbaa !14
  %indvars.iv.next126 = add nuw nsw i64 %indvars.iv125, 1
  %736 = icmp slt i64 %indvars.iv.next126, %723
  br i1 %736, label %730, label %.preheader54

; <label>:737                                     ; preds = %.lr.ph82, %.preheader54
  %738 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 64
  %739 = load i32* %738, align 4, !tbaa !74
  %740 = icmp eq i32 %739, 0
  %741 = icmp ne i32 %bDoIt, 0
  br i1 %740, label %742, label %887

; <label>:742                                     ; preds = %737
  br i1 %741, label %.preheader49, label %.loopexit50

.preheader49:                                     ; preds = %742
  %743 = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 4
  %744 = load i32* %743, align 4, !tbaa !40
  %745 = icmp sgt i32 %744, 0
  br i1 %745, label %.lr.ph76, label %.loopexit50

.lr.ph76:                                         ; preds = %.preheader49
  %746 = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 8
  br label %747

; <label>:747                                     ; preds = %.lr.ph76, %upd_f_value.exit43
  %indvars.iv113 = phi i64 [ 0, %.lr.ph76 ], [ %indvars.iv.next114, %upd_f_value.exit43 ]
  %748 = load %struct.t_coupl_LJ** %746, align 8, !tbaa !41
  %749 = getelementptr inbounds %struct.t_coupl_LJ* %748, i64 %indvars.iv113, i32 0
  %750 = load i32* %749, align 4, !tbaa !44
  %751 = getelementptr inbounds %struct.t_coupl_LJ* %748, i64 %indvars.iv113, i32 1
  %752 = load i32* %751, align 4, !tbaa !45
  %753 = getelementptr inbounds %struct.t_coupl_LJ* %748, i64 %indvars.iv113, i32 2
  %754 = load i32* %753, align 4, !tbaa !76
  %755 = icmp eq i32 %754, 5
  br i1 %755, label %756, label %770

; <label>:756                                     ; preds = %747
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([34 x i8]* @.str18, i64 0, i64 0)) #9
  %757 = load %struct.__sFILE** @debug, align 8, !tbaa !18
  %758 = icmp eq %struct.__sFILE* %757, null
  br i1 %758, label %761, label %759

; <label>:759                                     ; preds = %756
  %760 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %757, i8* getelementptr inbounds ([47 x i8]* @.str19, i64 0, i64 0), double -1.000000e+00, double -1.000000e+00) #9
  br label %761

; <label>:761                                     ; preds = %756, %759
  %.off = add i32 %750, -1
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %763, label %762

; <label>:762                                     ; preds = %761
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([42 x i8]* @.str20, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str1, i64 0, i64 0), i32 599) #9
  br label %763

; <label>:763                                     ; preds = %761, %762
  %ff12.0 = phi float [ 1.000000e+00, %762 ], [ 0.000000e+00, %761 ]
  %764 = load i32* %3, align 4, !tbaa !27
  %765 = load float** @do_coupling.f6, align 8, !tbaa !18
  call fastcc void @set_factor_matrix(i32 %764, float* %765, float 1.000000e+00, i32 %750, i32 %752) #12
  %766 = fcmp ogt float %ff12.0, 0.000000e+00
  br i1 %766, label %767, label %upd_f_value.exit43

; <label>:767                                     ; preds = %763
  %768 = load i32* %3, align 4, !tbaa !27
  %769 = load float** @do_coupling.f12, align 8, !tbaa !18
  %sqrtf = call float @sqrtf(float %ff12.0) #11
  call fastcc void @set_factor_matrix(i32 %768, float* %769, float %sqrtf, i32 %750, i32 %752) #12
  br label %upd_f_value.exit43

; <label>:770                                     ; preds = %747
  %771 = load %struct.__sFILE** @debug, align 8, !tbaa !18
  %772 = icmp eq %struct.__sFILE* %771, null
  %.pre147 = getelementptr inbounds %struct.t_coupl_LJ* %748, i64 %indvars.iv113, i32 6
  br i1 %772, label %._crit_edge146, label %773

; <label>:773                                     ; preds = %770
  %774 = load float* %.pre147, align 4, !tbaa !77
  %775 = fpext float %774 to double
  %776 = getelementptr inbounds %struct.t_coupl_LJ* %748, i64 %indvars.iv113, i32 7
  %777 = load float* %776, align 4, !tbaa !78
  %778 = fpext float %777 to double
  %779 = sext i32 %754 to i64
  %780 = getelementptr inbounds [14 x float]* %deviation, i64 0, i64 %779
  %781 = load float* %780, align 4, !tbaa !14
  %782 = fpext float %781 to double
  %783 = trunc i64 %indvars.iv113 to i32
  %784 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %771, i8* getelementptr inbounds ([52 x i8]* @.str21, i64 0, i64 0), i32 %783, double %775, double %778, double %782) #9
  %.pre141 = load i32* %753, align 4, !tbaa !76
  br label %._crit_edge146

._crit_edge146:                                   ; preds = %770, %773
  %785 = phi i32 [ %.pre141, %773 ], [ %754, %770 ]
  %786 = sext i32 %785 to i64
  %787 = getelementptr inbounds [14 x float]* %deviation, i64 0, i64 %786
  %788 = load float* %787, align 4, !tbaa !14
  %789 = load i32* %3, align 4, !tbaa !27
  %790 = load float* %.pre147, align 4, !tbaa !77
  %791 = load float** @do_coupling.f6, align 8, !tbaa !18
  %fabsf.i38 = call float @fabsf(float %790) #11
  %792 = fpext float %fabsf.i38 to double
  %793 = fcmp ogt double %792, 1.200000e-38
  br i1 %793, label %794, label %upd_f_value.exit40

; <label>:794                                     ; preds = %._crit_edge146
  %795 = fdiv float %117, %790
  %796 = fmul float %788, %795
  %797 = fadd float %796, 1.000000e+00
  %798 = fcmp ogt float %797, 0.000000e+00
  br i1 %798, label %799, label %upd_f_value.exit40

; <label>:799                                     ; preds = %794
  %sqrtf.i39 = call float @sqrtf(float %797) #11
  call fastcc void @set_factor_matrix(i32 %789, float* %791, float %sqrtf.i39, i32 %750, i32 %752) #9
  %.pre142 = load i32* %3, align 4, !tbaa !27
  br label %upd_f_value.exit40

upd_f_value.exit40:                               ; preds = %._crit_edge146, %794, %799
  %800 = phi i32 [ %789, %._crit_edge146 ], [ %789, %794 ], [ %.pre142, %799 ]
  %801 = getelementptr inbounds %struct.t_coupl_LJ* %748, i64 %indvars.iv113, i32 7
  %802 = load float* %801, align 4, !tbaa !78
  %803 = load float** @do_coupling.f12, align 8, !tbaa !18
  %fabsf.i41 = call float @fabsf(float %802) #11
  %804 = fpext float %fabsf.i41 to double
  %805 = fcmp ogt double %804, 1.200000e-38
  br i1 %805, label %806, label %upd_f_value.exit43

; <label>:806                                     ; preds = %upd_f_value.exit40
  %807 = fdiv float %117, %802
  %808 = fmul float %788, %807
  %809 = fadd float %808, 1.000000e+00
  %810 = fcmp ogt float %809, 0.000000e+00
  br i1 %810, label %811, label %upd_f_value.exit43

; <label>:811                                     ; preds = %806
  %sqrtf.i42 = call float @sqrtf(float %809) #11
  call fastcc void @set_factor_matrix(i32 %800, float* %803, float %sqrtf.i42, i32 %750, i32 %752) #9
  br label %upd_f_value.exit43

upd_f_value.exit43:                               ; preds = %811, %806, %upd_f_value.exit40, %767, %763
  %indvars.iv.next114 = add nuw nsw i64 %indvars.iv113, 1
  %812 = load i32* %743, align 4, !tbaa !40
  %813 = sext i32 %812 to i64
  %814 = icmp slt i64 %indvars.iv.next114, %813
  br i1 %814, label %747, label %.loopexit50

.loopexit50:                                      ; preds = %upd_f_value.exit43, %.preheader49, %742
  %815 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 1
  %816 = load i32* %815, align 4, !tbaa !22
  %817 = icmp sgt i32 %816, 1
  br i1 %817, label %822, label %818

; <label>:818                                     ; preds = %.loopexit50
  %819 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 5
  %820 = load i32* %819, align 4, !tbaa !23
  %821 = icmp sgt i32 %820, 1
  br i1 %821, label %822, label %825

; <label>:822                                     ; preds = %818, %.loopexit50
  %823 = load float** @do_coupling.f6, align 8, !tbaa !18
  call void @gprod(%struct.t_commrec* %cr, i32 %5, float* %823) #12
  %824 = load float** @do_coupling.f12, align 8, !tbaa !18
  call void @gprod(%struct.t_commrec* %cr, i32 %5, float* %824) #12
  br label %825

; <label>:825                                     ; preds = %822, %818
  %826 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 65
  %827 = load float** %826, align 8, !tbaa !79
  %828 = load i32* %3, align 4, !tbaa !27
  %829 = load float** @do_coupling.f6, align 8, !tbaa !18
  %830 = load float** @do_coupling.f12, align 8, !tbaa !18
  %831 = icmp sgt i32 %828, 0
  br i1 %831, label %.preheader.lr.ph.i13, label %upd_nbfplj.exit.preheader

.preheader.lr.ph.i13:                             ; preds = %825
  %832 = add i32 %828, -1
  %833 = zext i32 %832 to i64
  %834 = add nuw nsw i64 %833, 1
  %835 = sext i32 %828 to i64
  br label %.lr.ph.i17

.lr.ph.i17:                                       ; preds = %855, %.preheader.lr.ph.i13
  %indvars.iv8.i14 = phi i64 [ 0, %.preheader.lr.ph.i13 ], [ %indvars.iv.next9.i24, %855 ]
  %k.04.i15 = phi i64 [ 0, %.preheader.lr.ph.i13 ], [ %856, %855 ]
  %836 = mul nsw i64 %indvars.iv8.i14, %835
  %sext.i16 = shl i64 %k.04.i15, 32
  %837 = ashr exact i64 %sext.i16, 32
  br label %838

; <label>:838                                     ; preds = %838, %.lr.ph.i17
  %indvars.iv6.i18 = phi i64 [ 0, %.lr.ph.i17 ], [ %indvars.iv.next7.i20, %838 ]
  %indvars.iv.i19 = phi i64 [ %837, %.lr.ph.i17 ], [ %indvars.iv.next.i21, %838 ]
  %839 = getelementptr inbounds float* %829, i64 %indvars.iv.i19
  %840 = load float* %839, align 4, !tbaa !14
  %841 = add nsw i64 %indvars.iv6.i18, %836
  %842 = trunc i64 %841 to i32
  %843 = shl nsw i32 %842, 1
  %844 = sext i32 %843 to i64
  %845 = getelementptr inbounds float* %827, i64 %844
  %846 = load float* %845, align 4, !tbaa !14
  %847 = fmul float %840, %846
  store float %847, float* %845, align 4, !tbaa !14
  %848 = getelementptr inbounds float* %830, i64 %indvars.iv.i19
  %849 = load float* %848, align 4, !tbaa !14
  %850 = or i32 %843, 1
  %851 = sext i32 %850 to i64
  %852 = getelementptr inbounds float* %827, i64 %851
  %853 = load float* %852, align 4, !tbaa !14
  %854 = fmul float %849, %853
  store float %854, float* %852, align 4, !tbaa !14
  %indvars.iv.next7.i20 = add nuw nsw i64 %indvars.iv6.i18, 1
  %indvars.iv.next.i21 = add nsw i64 %indvars.iv.i19, 1
  %lftr.wideiv = trunc i64 %indvars.iv6.i18 to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %832
  br i1 %exitcond, label %855, label %838

; <label>:855                                     ; preds = %838
  %856 = add nsw i64 %834, %837
  %indvars.iv.next9.i24 = add nuw nsw i64 %indvars.iv8.i14, 1
  %lftr.wideiv111 = trunc i64 %indvars.iv8.i14 to i32
  %exitcond112 = icmp eq i32 %lftr.wideiv111, %832
  br i1 %exitcond112, label %upd_nbfplj.exit.preheader, label %.lr.ph.i17

upd_nbfplj.exit.preheader:                        ; preds = %855, %825
  %857 = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 4
  %858 = load i32* %857, align 4, !tbaa !40
  %859 = icmp sgt i32 %858, 0
  br i1 %859, label %.lr.ph74, label %.loopexit48

.lr.ph74:                                         ; preds = %upd_nbfplj.exit.preheader
  %860 = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 8
  %861 = load %struct.t_coupl_LJ** %860, align 8, !tbaa !41
  %862 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 63
  %863 = load i32* %862, align 4, !tbaa !80
  %864 = sext i32 %858 to i64
  br label %upd_nbfplj.exit

upd_nbfplj.exit:                                  ; preds = %.lr.ph74, %upd_nbfplj.exit
  %indvars.iv109 = phi i64 [ 0, %.lr.ph74 ], [ %indvars.iv.next110, %upd_nbfplj.exit ]
  %865 = getelementptr inbounds %struct.t_coupl_LJ* %861, i64 %indvars.iv109, i32 0
  %866 = load i32* %865, align 4, !tbaa !44
  %867 = getelementptr inbounds %struct.t_coupl_LJ* %861, i64 %indvars.iv109, i32 1
  %868 = load i32* %867, align 4, !tbaa !45
  %869 = icmp eq i32 %868, -1
  %. = select i1 %869, i32 %866, i32 %868
  %870 = mul nsw i32 %863, %866
  %871 = add nsw i32 %870, %.
  %872 = shl nsw i32 %871, 1
  %873 = sext i32 %872 to i64
  %874 = getelementptr inbounds float* %827, i64 %873
  %875 = bitcast float* %874 to i32*
  %876 = load i32* %875, align 4, !tbaa !14
  %877 = getelementptr inbounds %struct.t_coupl_LJ* %861, i64 %indvars.iv109, i32 4
  %878 = bitcast float* %877 to i32*
  store i32 %876, i32* %878, align 4, !tbaa !66
  %879 = or i32 %872, 1
  %880 = sext i32 %879 to i64
  %881 = getelementptr inbounds float* %827, i64 %880
  %882 = bitcast float* %881 to i32*
  %883 = load i32* %882, align 4, !tbaa !14
  %884 = getelementptr inbounds %struct.t_coupl_LJ* %861, i64 %indvars.iv109, i32 5
  %885 = bitcast float* %884 to i32*
  store i32 %883, i32* %885, align 4, !tbaa !65
  %indvars.iv.next110 = add nuw nsw i64 %indvars.iv109, 1
  %886 = icmp slt i64 %indvars.iv.next110, %864
  br i1 %886, label %upd_nbfplj.exit, label %.loopexit48

; <label>:887                                     ; preds = %737
  br i1 %741, label %.preheader52, label %.loopexit53

.preheader52:                                     ; preds = %887
  %888 = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 5
  %889 = load i32* %888, align 4, !tbaa !46
  %890 = icmp sgt i32 %889, 0
  br i1 %890, label %.lr.ph80, label %.loopexit53

.lr.ph80:                                         ; preds = %.preheader52
  %891 = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 9
  br label %892

; <label>:892                                     ; preds = %.lr.ph80, %upd_f_value.exit
  %indvars.iv121 = phi i64 [ 0, %.lr.ph80 ], [ %indvars.iv.next122, %upd_f_value.exit ]
  %893 = load %struct.t_coupl_BU** %891, align 8, !tbaa !47
  %894 = getelementptr inbounds %struct.t_coupl_BU* %893, i64 %indvars.iv121, i32 2
  %895 = load i32* %894, align 4, !tbaa !81
  %896 = sext i32 %895 to i64
  %897 = getelementptr inbounds [14 x float]* %deviation, i64 0, i64 %896
  %898 = load float* %897, align 4, !tbaa !14
  %899 = getelementptr inbounds %struct.t_coupl_BU* %893, i64 %indvars.iv121, i32 0
  %900 = load i32* %899, align 4, !tbaa !50
  %901 = getelementptr inbounds %struct.t_coupl_BU* %893, i64 %indvars.iv121, i32 1
  %902 = load i32* %901, align 4, !tbaa !51
  %903 = load i32* %3, align 4, !tbaa !27
  %904 = getelementptr inbounds %struct.t_coupl_BU* %893, i64 %indvars.iv121, i32 7
  %905 = load float* %904, align 4, !tbaa !82
  %906 = load float** @do_coupling.fa, align 8, !tbaa !18
  %fabsf.i10 = call float @fabsf(float %905) #11
  %907 = fpext float %fabsf.i10 to double
  %908 = fcmp ogt double %907, 1.200000e-38
  br i1 %908, label %909, label %upd_f_value.exit12

; <label>:909                                     ; preds = %892
  %910 = fdiv float %117, %905
  %911 = fmul float %898, %910
  %912 = fadd float %911, 1.000000e+00
  %913 = fcmp ogt float %912, 0.000000e+00
  br i1 %913, label %914, label %upd_f_value.exit12

; <label>:914                                     ; preds = %909
  %sqrtf.i11 = call float @sqrtf(float %912) #11
  call fastcc void @set_factor_matrix(i32 %903, float* %906, float %sqrtf.i11, i32 %900, i32 %902) #9
  %.pre = load i32* %3, align 4, !tbaa !27
  br label %upd_f_value.exit12

upd_f_value.exit12:                               ; preds = %892, %909, %914
  %915 = phi i32 [ %903, %892 ], [ %903, %909 ], [ %.pre, %914 ]
  %916 = getelementptr inbounds %struct.t_coupl_BU* %893, i64 %indvars.iv121, i32 8
  %917 = load float* %916, align 4, !tbaa !83
  %918 = load float** @do_coupling.fb, align 8, !tbaa !18
  %fabsf.i7 = call float @fabsf(float %917) #11
  %919 = fpext float %fabsf.i7 to double
  %920 = fcmp ogt double %919, 1.200000e-38
  br i1 %920, label %921, label %upd_f_value.exit9

; <label>:921                                     ; preds = %upd_f_value.exit12
  %922 = fdiv float %117, %917
  %923 = fmul float %898, %922
  %924 = fadd float %923, 1.000000e+00
  %925 = fcmp ogt float %924, 0.000000e+00
  br i1 %925, label %926, label %upd_f_value.exit9

; <label>:926                                     ; preds = %921
  %sqrtf.i8 = call float @sqrtf(float %924) #11
  call fastcc void @set_factor_matrix(i32 %915, float* %918, float %sqrtf.i8, i32 %900, i32 %902) #9
  %.pre138 = load i32* %3, align 4, !tbaa !27
  br label %upd_f_value.exit9

upd_f_value.exit9:                                ; preds = %upd_f_value.exit12, %921, %926
  %927 = phi i32 [ %915, %upd_f_value.exit12 ], [ %915, %921 ], [ %.pre138, %926 ]
  %928 = getelementptr inbounds %struct.t_coupl_BU* %893, i64 %indvars.iv121, i32 9
  %929 = load float* %928, align 4, !tbaa !84
  %930 = load float** @do_coupling.fc, align 8, !tbaa !18
  %fabsf.i = call float @fabsf(float %929) #11
  %931 = fpext float %fabsf.i to double
  %932 = fcmp ogt double %931, 1.200000e-38
  br i1 %932, label %933, label %upd_f_value.exit

; <label>:933                                     ; preds = %upd_f_value.exit9
  %934 = fdiv float %117, %929
  %935 = fmul float %898, %934
  %936 = fadd float %935, 1.000000e+00
  %937 = fcmp ogt float %936, 0.000000e+00
  br i1 %937, label %938, label %upd_f_value.exit

; <label>:938                                     ; preds = %933
  %sqrtf.i6 = call float @sqrtf(float %936) #11
  call fastcc void @set_factor_matrix(i32 %927, float* %930, float %sqrtf.i6, i32 %900, i32 %902) #9
  br label %upd_f_value.exit

upd_f_value.exit:                                 ; preds = %upd_f_value.exit9, %933, %938
  %indvars.iv.next122 = add nuw nsw i64 %indvars.iv121, 1
  %939 = load i32* %888, align 4, !tbaa !46
  %940 = sext i32 %939 to i64
  %941 = icmp slt i64 %indvars.iv.next122, %940
  br i1 %941, label %892, label %.loopexit53

.loopexit53:                                      ; preds = %upd_f_value.exit, %.preheader52, %887
  %942 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 1
  %943 = load i32* %942, align 4, !tbaa !22
  %944 = icmp sgt i32 %943, 1
  br i1 %944, label %949, label %945

; <label>:945                                     ; preds = %.loopexit53
  %946 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 5
  %947 = load i32* %946, align 4, !tbaa !23
  %948 = icmp sgt i32 %947, 1
  br i1 %948, label %949, label %953

; <label>:949                                     ; preds = %945, %.loopexit53
  %950 = load float** @do_coupling.fa, align 8, !tbaa !18
  call void @gprod(%struct.t_commrec* %cr, i32 %5, float* %950) #12
  %951 = load float** @do_coupling.fb, align 8, !tbaa !18
  call void @gprod(%struct.t_commrec* %cr, i32 %5, float* %951) #12
  %952 = load float** @do_coupling.fc, align 8, !tbaa !18
  call void @gprod(%struct.t_commrec* %cr, i32 %5, float* %952) #12
  br label %953

; <label>:953                                     ; preds = %949, %945
  %954 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 65
  %955 = load float** %954, align 8, !tbaa !79
  %956 = load i32* %3, align 4, !tbaa !27
  %957 = load float** @do_coupling.fa, align 8, !tbaa !18
  %958 = load float** @do_coupling.fb, align 8, !tbaa !18
  %959 = load float** @do_coupling.fc, align 8, !tbaa !18
  %960 = icmp sgt i32 %956, 0
  br i1 %960, label %.preheader.lr.ph.i, label %upd_nbfpbu.exit.preheader

.preheader.lr.ph.i:                               ; preds = %953
  %961 = add i32 %956, -1
  %962 = zext i32 %961 to i64
  %963 = add nuw nsw i64 %962, 1
  %964 = sext i32 %956 to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %987, %.preheader.lr.ph.i
  %indvars.iv8.i = phi i64 [ 0, %.preheader.lr.ph.i ], [ %indvars.iv.next9.i, %987 ]
  %k.04.i = phi i64 [ 0, %.preheader.lr.ph.i ], [ %988, %987 ]
  %965 = mul nsw i64 %indvars.iv8.i, %964
  %sext.i = shl i64 %k.04.i, 32
  %966 = ashr exact i64 %sext.i, 32
  br label %967

; <label>:967                                     ; preds = %967, %.lr.ph.i
  %indvars.iv6.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next7.i, %967 ]
  %indvars.iv.i = phi i64 [ %966, %.lr.ph.i ], [ %indvars.iv.next.i, %967 ]
  %968 = getelementptr inbounds float* %957, i64 %indvars.iv.i
  %969 = load float* %968, align 4, !tbaa !14
  %970 = add nsw i64 %indvars.iv6.i, %965
  %971 = mul nsw i64 %970, 3
  %972 = add nsw i64 %971, 1
  %973 = getelementptr inbounds float* %955, i64 %972
  %974 = load float* %973, align 4, !tbaa !14
  %975 = fmul float %969, %974
  store float %975, float* %973, align 4, !tbaa !14
  %976 = getelementptr inbounds float* %958, i64 %indvars.iv.i
  %977 = load float* %976, align 4, !tbaa !14
  %978 = add nsw i64 %971, 2
  %979 = getelementptr inbounds float* %955, i64 %978
  %980 = load float* %979, align 4, !tbaa !14
  %981 = fmul float %977, %980
  store float %981, float* %979, align 4, !tbaa !14
  %982 = getelementptr inbounds float* %959, i64 %indvars.iv.i
  %983 = load float* %982, align 4, !tbaa !14
  %984 = getelementptr inbounds float* %955, i64 %971
  %985 = load float* %984, align 4, !tbaa !14
  %986 = fmul float %983, %985
  store float %986, float* %984, align 4, !tbaa !14
  %indvars.iv.next7.i = add nuw nsw i64 %indvars.iv6.i, 1
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1
  %lftr.wideiv117 = trunc i64 %indvars.iv6.i to i32
  %exitcond118 = icmp eq i32 %lftr.wideiv117, %961
  br i1 %exitcond118, label %987, label %967

; <label>:987                                     ; preds = %967
  %988 = add nsw i64 %963, %966
  %indvars.iv.next9.i = add nuw nsw i64 %indvars.iv8.i, 1
  %lftr.wideiv119 = trunc i64 %indvars.iv8.i to i32
  %exitcond120 = icmp eq i32 %lftr.wideiv119, %961
  br i1 %exitcond120, label %upd_nbfpbu.exit.preheader, label %.lr.ph.i

upd_nbfpbu.exit.preheader:                        ; preds = %987, %953
  %989 = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 5
  %990 = load i32* %989, align 4, !tbaa !46
  %991 = icmp sgt i32 %990, 0
  br i1 %991, label %.lr.ph78, label %.loopexit48

.lr.ph78:                                         ; preds = %upd_nbfpbu.exit.preheader
  %992 = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 9
  %993 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 63
  br label %994

; <label>:994                                     ; preds = %upd_nbfpbu.exit._crit_edge, %.lr.ph78
  %995 = phi i32 [ %990, %.lr.ph78 ], [ %1034, %upd_nbfpbu.exit._crit_edge ]
  %996 = phi float* [ %955, %.lr.ph78 ], [ %.pre139, %upd_nbfpbu.exit._crit_edge ]
  %indvars.iv115 = phi i64 [ 0, %.lr.ph78 ], [ %indvars.iv.next116, %upd_nbfpbu.exit._crit_edge ]
  %997 = load %struct.t_coupl_BU** %992, align 8, !tbaa !47
  %998 = getelementptr inbounds %struct.t_coupl_BU* %997, i64 %indvars.iv115, i32 0
  %999 = load i32* %998, align 4, !tbaa !50
  %1000 = getelementptr inbounds %struct.t_coupl_BU* %997, i64 %indvars.iv115, i32 1
  %1001 = load i32* %1000, align 4, !tbaa !51
  %1002 = icmp eq i32 %1001, -1
  %.5 = select i1 %1002, i32 %999, i32 %1001
  %1003 = load i32* %993, align 4, !tbaa !80
  %1004 = mul nsw i32 %1003, %999
  %1005 = add nsw i32 %1004, %.5
  %1006 = mul nsw i32 %1005, 3
  %1007 = add nsw i32 %1006, 1
  %1008 = sext i32 %1007 to i64
  %1009 = getelementptr inbounds float* %996, i64 %1008
  %1010 = bitcast float* %1009 to i32*
  %1011 = load i32* %1010, align 4, !tbaa !14
  %1012 = getelementptr inbounds %struct.t_coupl_BU* %997, i64 %indvars.iv115, i32 4
  %1013 = bitcast float* %1012 to i32*
  store i32 %1011, i32* %1013, align 4, !tbaa !67
  %1014 = add nsw i32 %1006, 2
  %1015 = sext i32 %1014 to i64
  %1016 = getelementptr inbounds float* %996, i64 %1015
  %1017 = bitcast float* %1016 to i32*
  %1018 = load i32* %1017, align 4, !tbaa !14
  %1019 = getelementptr inbounds %struct.t_coupl_BU* %997, i64 %indvars.iv115, i32 5
  %1020 = bitcast float* %1019 to i32*
  store i32 %1018, i32* %1020, align 4, !tbaa !68
  %1021 = sext i32 %1006 to i64
  %1022 = getelementptr inbounds float* %996, i64 %1021
  %1023 = load float* %1022, align 4, !tbaa !14
  %1024 = getelementptr inbounds %struct.t_coupl_BU* %997, i64 %indvars.iv115, i32 6
  store float %1023, float* %1024, align 4, !tbaa !69
  %1025 = load %struct.__sFILE** @debug, align 8, !tbaa !18
  %1026 = icmp eq %struct.__sFILE* %1025, null
  br i1 %1026, label %upd_nbfpbu.exit, label %1027

; <label>:1027                                    ; preds = %994
  %1028 = bitcast i32 %1018 to float
  %1029 = bitcast i32 %1011 to float
  %1030 = fpext float %1029 to double
  %1031 = fpext float %1028 to double
  %1032 = fpext float %1023 to double
  %1033 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %1025, i8* getelementptr inbounds ([29 x i8]* @.str22, i64 0, i64 0), i32 %999, double %1030, double %1031, double %1032) #9
  %.pre140 = load i32* %989, align 4, !tbaa !46
  br label %upd_nbfpbu.exit

upd_nbfpbu.exit:                                  ; preds = %994, %1027
  %1034 = phi i32 [ %995, %994 ], [ %.pre140, %1027 ]
  %indvars.iv.next116 = add nuw nsw i64 %indvars.iv115, 1
  %1035 = sext i32 %1034 to i64
  %1036 = icmp slt i64 %indvars.iv.next116, %1035
  br i1 %1036, label %upd_nbfpbu.exit._crit_edge, label %.loopexit48

upd_nbfpbu.exit._crit_edge:                       ; preds = %upd_nbfpbu.exit
  %.pre139 = load float** %954, align 8, !tbaa !79
  br label %994

.loopexit48:                                      ; preds = %upd_nbfpbu.exit, %upd_nbfplj.exit, %upd_nbfpbu.exit.preheader, %upd_nbfplj.exit.preheader
  br i1 %741, label %.preheader46, label %.loopexit47

.preheader46:                                     ; preds = %.loopexit48
  %1037 = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 6
  %1038 = load i32* %1037, align 4, !tbaa !52
  %1039 = icmp sgt i32 %1038, 0
  br i1 %1039, label %.lr.ph72, label %.loopexit47

.lr.ph72:                                         ; preds = %.preheader46
  %1040 = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 10
  %1041 = load %struct.t_coupl_Q** %1040, align 8, !tbaa !53
  %1042 = load float** @do_coupling.fq, align 8, !tbaa !18
  %1043 = sext i32 %1038 to i64
  br label %1044

; <label>:1044                                    ; preds = %.lr.ph72, %1058
  %indvars.iv107 = phi i64 [ 0, %.lr.ph72 ], [ %indvars.iv.next108, %1058 ]
  %1045 = getelementptr inbounds %struct.t_coupl_Q* %1041, i64 %indvars.iv107, i32 4
  %1046 = load float* %1045, align 4, !tbaa !85
  %fabsf3 = call float @fabsf(float %1046) #11
  %1047 = fpext float %fabsf3 to double
  %1048 = fcmp ogt double %1047, 1.200000e-38
  br i1 %1048, label %1049, label %1058

; <label>:1049                                    ; preds = %1044
  %1050 = fdiv float %117, %1046
  %1051 = getelementptr inbounds %struct.t_coupl_Q* %1041, i64 %indvars.iv107, i32 1
  %1052 = load i32* %1051, align 4, !tbaa !86
  %1053 = sext i32 %1052 to i64
  %1054 = getelementptr inbounds [14 x float]* %deviation, i64 0, i64 %1053
  %1055 = load float* %1054, align 4, !tbaa !14
  %1056 = fmul float %1050, %1055
  %1057 = fadd float %1056, 1.000000e+00
  br label %1058

; <label>:1058                                    ; preds = %1044, %1049
  %ffq.0 = phi float [ %1057, %1049 ], [ 1.000000e+00, %1044 ]
  %1059 = getelementptr inbounds %struct.t_coupl_Q* %1041, i64 %indvars.iv107, i32 0
  %1060 = load i32* %1059, align 4, !tbaa !56
  %1061 = sext i32 %1060 to i64
  %1062 = getelementptr inbounds float* %1042, i64 %1061
  %1063 = load float* %1062, align 4, !tbaa !14
  %1064 = fmul float %ffq.0, %1063
  store float %1064, float* %1062, align 4, !tbaa !14
  %indvars.iv.next108 = add nuw nsw i64 %indvars.iv107, 1
  %1065 = icmp slt i64 %indvars.iv.next108, %1043
  br i1 %1065, label %1044, label %.loopexit47

.loopexit47:                                      ; preds = %1058, %.preheader46, %.loopexit48
  %1066 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 1
  %1067 = load i32* %1066, align 4, !tbaa !22
  %1068 = icmp sgt i32 %1067, 1
  br i1 %1068, label %1073, label %1069

; <label>:1069                                    ; preds = %.loopexit47
  %1070 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 5
  %1071 = load i32* %1070, align 4, !tbaa !23
  %1072 = icmp sgt i32 %1071, 1
  br i1 %1072, label %1073, label %.preheader45

; <label>:1073                                    ; preds = %1069, %.loopexit47
  %1074 = load i32* %3, align 4, !tbaa !27
  %1075 = load float** @do_coupling.fq, align 8, !tbaa !18
  call void @gprod(%struct.t_commrec* %cr, i32 %1074, float* %1075) #12
  br label %.preheader45

.preheader45:                                     ; preds = %1073, %1069
  %1076 = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 1
  %1077 = load i32* %1076, align 4, !tbaa !87
  %1078 = icmp sgt i32 %1077, 0
  br i1 %1078, label %.lr.ph69, label %.preheader44

.lr.ph69:                                         ; preds = %.preheader45
  %1079 = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 11
  %1080 = load i32** %1079, align 8, !tbaa !89
  %1081 = load float** @do_coupling.fq, align 8, !tbaa !18
  %1082 = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 6
  %1083 = load float** %1082, align 8, !tbaa !90
  %1084 = sext i32 %1077 to i64
  br label %1091

.preheader44:                                     ; preds = %1091, %.preheader45
  %1085 = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 6
  %1086 = load i32* %1085, align 4, !tbaa !52
  %1087 = icmp sgt i32 %1086, 0
  br i1 %1087, label %.lr.ph67, label %.preheader

.lr.ph67:                                         ; preds = %.preheader44
  %1088 = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 10
  %1089 = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 11
  %1090 = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 6
  br label %1107

; <label>:1091                                    ; preds = %.lr.ph69, %1091
  %indvars.iv105 = phi i64 [ 0, %.lr.ph69 ], [ %indvars.iv.next106, %1091 ]
  %1092 = getelementptr inbounds i32* %1080, i64 %indvars.iv105
  %1093 = load i32* %1092, align 4, !tbaa !24
  %1094 = sext i32 %1093 to i64
  %1095 = getelementptr inbounds float* %1081, i64 %1094
  %1096 = load float* %1095, align 4, !tbaa !14
  %1097 = getelementptr inbounds float* %1083, i64 %indvars.iv105
  %1098 = load float* %1097, align 4, !tbaa !14
  %1099 = fmul float %1096, %1098
  store float %1099, float* %1097, align 4, !tbaa !14
  %indvars.iv.next106 = add nuw nsw i64 %indvars.iv105, 1
  %1100 = icmp slt i64 %indvars.iv.next106, %1084
  br i1 %1100, label %1091, label %.preheader44

.preheader:                                       ; preds = %1136, %.preheader44
  %1101 = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 7
  %1102 = load i32* %1101, align 4, !tbaa !57
  %1103 = icmp sgt i32 %1102, 0
  br i1 %1103, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %1104 = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 11
  %1105 = getelementptr inbounds %struct.t_idef* %idef, i64 0, i32 3
  %1106 = getelementptr inbounds %struct.t_idef* %idef, i64 0, i32 4
  br label %1140

; <label>:1107                                    ; preds = %._crit_edge143, %.lr.ph67
  %1108 = phi i32 [ %1086, %.lr.ph67 ], [ %1137, %._crit_edge143 ]
  %1109 = phi i32 [ %1077, %.lr.ph67 ], [ %.pre144, %._crit_edge143 ]
  %indvars.iv103 = phi i64 [ 0, %.lr.ph67 ], [ %indvars.iv.next104, %._crit_edge143 ]
  %1110 = load %struct.t_coupl_Q** %1088, align 8, !tbaa !53
  %1111 = getelementptr inbounds %struct.t_coupl_Q* %1110, i64 %indvars.iv103
  %1112 = icmp sgt i32 %1109, 0
  br i1 %1112, label %.lr.ph65, label %.loopexit

.lr.ph65:                                         ; preds = %1107
  %1113 = load i32** %1089, align 8, !tbaa !89
  %1114 = getelementptr inbounds %struct.t_coupl_Q* %1111, i64 0, i32 0
  %1115 = load i32* %1114, align 4, !tbaa !56
  br label %1116

; <label>:1116                                    ; preds = %.lr.ph65, %1128
  %indvars.iv101 = phi i64 [ 0, %.lr.ph65 ], [ %indvars.iv.next102, %1128 ]
  %1117 = getelementptr inbounds i32* %1113, i64 %indvars.iv101
  %1118 = load i32* %1117, align 4, !tbaa !24
  %1119 = icmp eq i32 %1118, %1115
  br i1 %1119, label %1120, label %1128

; <label>:1120                                    ; preds = %1116
  %1121 = trunc i64 %indvars.iv101 to i32
  %1122 = load float** %1090, align 8, !tbaa !90
  %1123 = getelementptr inbounds float* %1122, i64 %indvars.iv101
  %1124 = bitcast float* %1123 to i32*
  %1125 = load i32* %1124, align 4, !tbaa !14
  %1126 = getelementptr inbounds %struct.t_coupl_Q* %1110, i64 %indvars.iv103, i32 3
  %1127 = bitcast float* %1126 to i32*
  store i32 %1125, i32* %1127, align 4, !tbaa !70
  br label %.loopexit

; <label>:1128                                    ; preds = %1116
  %indvars.iv.next102 = add nuw nsw i64 %indvars.iv101, 1
  %1129 = sext i32 %1109 to i64
  %1130 = icmp slt i64 %indvars.iv.next102, %1129
  br i1 %1130, label %1116, label %..loopexit_crit_edge

..loopexit_crit_edge:                             ; preds = %1128
  %1131 = trunc i64 %indvars.iv.next102 to i32
  br label %.loopexit

.loopexit:                                        ; preds = %1107, %..loopexit_crit_edge, %1120
  %j.160 = phi i32 [ %1121, %1120 ], [ %1131, %..loopexit_crit_edge ], [ 0, %1107 ]
  %1132 = icmp eq i32 %j.160, %1109
  br i1 %1132, label %1133, label %1136

; <label>:1133                                    ; preds = %.loopexit
  %1134 = getelementptr inbounds %struct.t_coupl_Q* %1111, i64 0, i32 0
  %1135 = load i32* %1134, align 4, !tbaa !56
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([27 x i8]* @.str23, i64 0, i64 0), i32 %1135) #9
  %.pre145 = load i32* %1085, align 4, !tbaa !52
  br label %1136

; <label>:1136                                    ; preds = %.loopexit, %1133
  %1137 = phi i32 [ %1108, %.loopexit ], [ %.pre145, %1133 ]
  %indvars.iv.next104 = add nuw nsw i64 %indvars.iv103, 1
  %1138 = sext i32 %1137 to i64
  %1139 = icmp slt i64 %indvars.iv.next104, %1138
  br i1 %1139, label %._crit_edge143, label %.preheader

._crit_edge143:                                   ; preds = %1136
  %.pre144 = load i32* %1076, align 4, !tbaa !87
  br label %1107

; <label>:1140                                    ; preds = %.lr.ph, %1178
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %1178 ]
  %1141 = load %struct.t_coupl_iparams** %1104, align 8, !tbaa !58
  %1142 = getelementptr inbounds %struct.t_coupl_iparams* %1141, i64 %indvars.iv, i32 0
  %1143 = load i32* %1142, align 4, !tbaa !59
  %1144 = sext i32 %1143 to i64
  %1145 = load i32** %1105, align 8, !tbaa !61
  %1146 = getelementptr inbounds i32* %1145, i64 %1144
  %1147 = load i32* %1146, align 4, !tbaa !24
  %1148 = getelementptr inbounds %struct.t_coupl_iparams* %1141, i64 %indvars.iv, i32 1
  %1149 = load i32* %1148, align 4, !tbaa !91
  %1150 = sext i32 %1149 to i64
  %1151 = getelementptr inbounds [14 x float]* %deviation, i64 0, i64 %1150
  %1152 = load float* %1151, align 4, !tbaa !14
  %1153 = fmul float %117, %1152
  %cond = icmp eq i32 %1147, 0
  br i1 %cond, label %1154, label %1178

; <label>:1154                                    ; preds = %1140
  %1155 = getelementptr inbounds %struct.t_coupl_iparams* %1141, i64 %indvars.iv, i32 2, i32 0, i32 1
  %1156 = load float* %1155, align 4, !tbaa !71
  %fabsf1 = call float @fabsf(float %1156) #11
  %1157 = fpext float %fabsf1 to double
  %1158 = fcmp ogt double %1157, 1.200000e-38
  br i1 %1158, label %1159, label %1166

; <label>:1159                                    ; preds = %1154
  %1160 = fdiv float %1153, %1156
  %1161 = fadd float %1160, 1.000000e+00
  %1162 = load %union.t_iparams** %1106, align 8, !tbaa !92
  %1163 = getelementptr inbounds %union.t_iparams* %1162, i64 %1144, i32 0, i32 1
  %1164 = load float* %1163, align 4, !tbaa !71
  %1165 = fmul float %1161, %1164
  store float %1165, float* %1163, align 4, !tbaa !71
  br label %1166

; <label>:1166                                    ; preds = %1159, %1154
  %1167 = getelementptr inbounds %struct.t_coupl_iparams* %1141, i64 %indvars.iv, i32 2, i32 0, i32 0
  %1168 = load float* %1167, align 4, !tbaa !73
  %fabsf2 = call float @fabsf(float %1168) #11
  %1169 = fpext float %fabsf2 to double
  %1170 = fcmp ogt double %1169, 1.200000e-38
  br i1 %1170, label %1171, label %1178

; <label>:1171                                    ; preds = %1166
  %1172 = fdiv float %1153, %1168
  %1173 = fadd float %1172, 1.000000e+00
  %1174 = load %union.t_iparams** %1106, align 8, !tbaa !92
  %1175 = getelementptr inbounds %union.t_iparams* %1174, i64 %1144, i32 0, i32 0
  %1176 = load float* %1175, align 4, !tbaa !73
  %1177 = fmul float %1173, %1176
  store float %1177, float* %1175, align 4, !tbaa !73
  br label %1178

; <label>:1178                                    ; preds = %1140, %1166, %1171
  %1179 = getelementptr inbounds %struct.t_coupl_iparams* %1141, i64 %indvars.iv, i32 3
  %1180 = load %union.t_iparams** %1106, align 8, !tbaa !92
  %1181 = getelementptr inbounds %union.t_iparams* %1180, i64 %1144
  %1182 = bitcast %union.t_iparams* %1179 to i8*
  %1183 = bitcast %union.t_iparams* %1181 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1182, i8* %1183, i64 24, i32 4, i1 false), !tbaa.struct !93
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %1184 = load i32* %1101, align 4, !tbaa !57
  %1185 = sext i32 %1184 to i64
  %1186 = icmp slt i64 %indvars.iv.next, %1185
  br i1 %1186, label %1140, label %._crit_edge

._crit_edge:                                      ; preds = %1178, %.preheader
  call void @llvm.lifetime.end(i64 56, i8* %2) #6
  call void @llvm.lifetime.end(i64 56, i8* %1) #6
  ret void
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #6

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct.__sFILE* nocapture, i8* nocapture readonly, ...) #7

; Function Attrs: nounwind optsize
declare i32 @fflush(%struct.__sFILE* nocapture) #7

; Function Attrs: optsize
declare i32 @do_per_step(i32, i32) #1

; Function Attrs: optsize
declare void @fatal_error(i32, i8*, ...) #1

; Function Attrs: nounwind optsize ssp uwtable
define internal fastcc void @set_factor_matrix(i32 %ntypes, float* nocapture %f, float %fmult, i32 %ati, i32 %atj) #4 {
  %1 = fpext float %fmult to double
  %2 = fcmp olt double %1, 9.500000e-01
  br i1 %2, label %.critedge, label %3

; <label>:3                                       ; preds = %0
  %phitmp = fcmp ogt double %1, 1.050000e+00
  %.mux.fmult = select i1 %phitmp, float 0x3FF0CCCCC0000000, float %fmult
  br label %.critedge

.critedge:                                        ; preds = %3, %0
  %4 = phi float [ 0x3FEE666660000000, %0 ], [ %.mux.fmult, %3 ]
  %5 = icmp eq i32 %atj, -1
  br i1 %5, label %.preheader, label %12

.preheader:                                       ; preds = %.critedge
  %6 = icmp sgt i32 %ntypes, 0
  br i1 %6, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader
  %7 = mul nsw i32 %ati, %ntypes
  %8 = sext i32 %ntypes to i64
  %9 = sext i32 %ati to i64
  %10 = sext i32 %7 to i64
  %11 = add i32 %ntypes, -1
  br label %25

; <label>:12                                      ; preds = %.critedge
  %13 = mul nsw i32 %ati, %ntypes
  %14 = add nsw i32 %13, %atj
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds float* %f, i64 %15
  %17 = load float* %16, align 4, !tbaa !14
  %18 = fmul float %4, %17
  store float %18, float* %16, align 4, !tbaa !14
  %19 = mul nsw i32 %atj, %ntypes
  %20 = add nsw i32 %19, %ati
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds float* %f, i64 %21
  %23 = load float* %22, align 4, !tbaa !14
  %24 = fmul float %4, %23
  store float %24, float* %22, align 4, !tbaa !14
  br label %.loopexit

; <label>:25                                      ; preds = %25, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %25 ]
  %26 = add nsw i64 %indvars.iv, %10
  %27 = getelementptr inbounds float* %f, i64 %26
  %28 = load float* %27, align 4, !tbaa !14
  %29 = fmul float %4, %28
  store float %29, float* %27, align 4, !tbaa !14
  %30 = mul nsw i64 %indvars.iv, %8
  %31 = add nsw i64 %30, %9
  %32 = getelementptr inbounds float* %f, i64 %31
  %33 = load float* %32, align 4, !tbaa !14
  %34 = fmul float %4, %33
  store float %34, float* %32, align 4, !tbaa !14
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %11
  br i1 %exitcond, label %.loopexit, label %25

.loopexit:                                        ; preds = %25, %.preheader, %12
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #6

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #6

; Function Attrs: optsize
declare %struct.__sFILE* @xvgropen(i8*, i8*, i8*, i8*) #1

; Function Attrs: nounwind optsize
declare noalias i8* @strdup(i8* nocapture readonly) #7

; Function Attrs: optsize
declare i32 @__sprintf_chk(i8*, i32, i64, i8*, ...) #1

; Function Attrs: optsize
declare void @xvgr_legend(%struct.__sFILE*, i32, i8**) #1

; Function Attrs: optsize
declare void @save_free(i8*, i8*, i32, i8*) #1

; Function Attrs: nounwind optsize ssp uwtable
define internal fastcc void @mk_gct_nm(i8* %fn, i32 %ati, i32 %atj) #4 {
  %1 = tail call i8* @__strcpy_chk(i8* getelementptr inbounds ([256 x i8]* @mk_gct_nm.buf, i64 0, i64 0), i8* %fn, i64 256) #9
  %2 = icmp eq i32 %atj, -1
  %3 = tail call i64 @strlen(i8* %fn) #9
  %.sum = add i64 %3, -4
  %4 = getelementptr inbounds [256 x i8]* @mk_gct_nm.buf, i64 0, i64 %.sum
  %5 = tail call i8* @ftp2ext(i32 19) #9
  br i1 %2, label %6, label %8

; <label>:6                                       ; preds = %0
  %7 = tail call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* %4, i32 0, i64 -1, i8* getelementptr inbounds ([6 x i8]* @.str62, i64 0, i64 0), i32 %ati, i8* %5) #9
  br label %10

; <label>:8                                       ; preds = %0
  %9 = tail call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* %4, i32 0, i64 -1, i8* getelementptr inbounds ([9 x i8]* @.str63, i64 0, i64 0), i32 %ati, i32 %atj, i8* %5) #9
  br label %10

; <label>:10                                      ; preds = %8, %6
  ret void
}

; Function Attrs: nounwind optsize
declare i8* @__strcpy_chk(i8*, i8*, i64) #7

; Function Attrs: nounwind optsize readonly
declare i64 @strlen(i8* nocapture) #8

; Function Attrs: optsize
declare i8* @ftp2ext(i32) #1

declare float @fabsf(float)

declare float @sqrtf(float)

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct.__sFILE* nocapture) #6

; Function Attrs: nounwind
declare i32 @fputc(i32, %struct.__sFILE* nocapture) #6

declare void @memset_pattern16(i8*, i8*, i64)

attributes #0 = { alwaysinline nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { alwaysinline nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }
attributes #4 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { nounwind optsize }
attributes #10 = { readnone }
attributes #11 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #12 = { optsize }

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
!18 = !{!4, !4, i64 0}
!19 = !{!20, !7, i64 0}
!20 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20}
!21 = !{!20, !7, i64 16}
!22 = !{!20, !7, i64 4}
!23 = !{!20, !7, i64 20}
!24 = !{!7, !7, i64 0}
!25 = !{!20, !7, i64 8}
!26 = !{!20, !7, i64 12}
!27 = !{!28, !7, i64 8}
!28 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8, !4, i64 16, !4, i64 24, !5, i64 32}
!29 = !{!30, !7, i64 280}
!30 = !{!"", !5, i64 0, !5, i64 56, !5, i64 112, !5, i64 168, !7, i64 224, !7, i64 228, !7, i64 232, !7, i64 236, !4, i64 240, !4, i64 248, !4, i64 256, !4, i64 264, !7, i64 272, !7, i64 276, !7, i64 280}
!31 = !{!32, !7, i64 384}
!32 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !7, i64 24, !7, i64 28, !7, i64 32, !7, i64 36, !7, i64 40, !7, i64 44, !7, i64 48, !7, i64 52, !15, i64 56, !15, i64 60, !15, i64 64, !7, i64 68, !7, i64 72, !7, i64 76, !7, i64 80, !15, i64 84, !7, i64 88, !7, i64 92, !7, i64 96, !7, i64 100, !7, i64 104, !7, i64 108, !7, i64 112, !7, i64 116, !15, i64 120, !5, i64 124, !5, i64 160, !7, i64 196, !15, i64 200, !15, i64 204, !7, i64 208, !15, i64 212, !15, i64 216, !7, i64 220, !15, i64 224, !15, i64 228, !15, i64 232, !7, i64 236, !15, i64 240, !15, i64 244, !7, i64 248, !15, i64 252, !15, i64 256, !15, i64 260, !15, i64 264, !15, i64 268, !7, i64 272, !7, i64 276, !7, i64 280, !15, i64 284, !15, i64 288, !15, i64 292, !7, i64 296, !15, i64 300, !15, i64 304, !7, i64 308, !7, i64 312, !7, i64 316, !7, i64 320, !7, i64 324, !15, i64 328, !7, i64 332, !15, i64 336, !15, i64 340, !7, i64 344, !15, i64 348, !7, i64 352, !7, i64 356, !7, i64 360, !7, i64 364, !15, i64 368, !15, i64 372, !15, i64 376, !15, i64 380, !33, i64 384, !5, i64 448, !5, i64 520}
!33 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !4, i64 16, !4, i64 24, !4, i64 32, !4, i64 40, !4, i64 48, !4, i64 56}
!34 = !{!32, !4, i64 400}
!35 = !{!32, !4, i64 408}
!36 = !{!32, !7, i64 32}
!37 = !{!32, !15, i64 60}
!38 = !{!30, !7, i64 276}
!39 = !{!30, !7, i64 272}
!40 = !{!30, !7, i64 224}
!41 = !{!30, !4, i64 240}
!42 = !{!43, !7, i64 12}
!43 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !15, i64 16, !15, i64 20, !15, i64 24, !15, i64 28}
!44 = !{!43, !7, i64 0}
!45 = !{!43, !7, i64 4}
!46 = !{!30, !7, i64 228}
!47 = !{!30, !4, i64 248}
!48 = !{!49, !7, i64 12}
!49 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !15, i64 16, !15, i64 20, !15, i64 24, !15, i64 28, !15, i64 32, !15, i64 36}
!50 = !{!49, !7, i64 0}
!51 = !{!49, !7, i64 4}
!52 = !{!30, !7, i64 232}
!53 = !{!30, !4, i64 256}
!54 = !{!55, !7, i64 8}
!55 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8, !15, i64 12, !15, i64 16}
!56 = !{!55, !7, i64 0}
!57 = !{!30, !7, i64 236}
!58 = !{!30, !4, i64 264}
!59 = !{!60, !7, i64 0}
!60 = !{!"", !7, i64 0, !7, i64 4, !5, i64 8, !5, i64 32}
!61 = !{!28, !4, i64 16}
!62 = !{!63, !4, i64 8}
!63 = !{!"", !4, i64 0, !4, i64 8, !7, i64 16, !7, i64 20, !7, i64 24, !64, i64 32, !7, i64 40, !4, i64 48}
!64 = !{!"long", !5, i64 0}
!65 = !{!43, !15, i64 20}
!66 = !{!43, !15, i64 16}
!67 = !{!49, !15, i64 16}
!68 = !{!49, !15, i64 20}
!69 = !{!49, !15, i64 24}
!70 = !{!55, !15, i64 12}
!71 = !{!72, !15, i64 4}
!72 = !{!"", !15, i64 0, !15, i64 4, !15, i64 8, !15, i64 12}
!73 = !{!72, !15, i64 0}
!74 = !{!75, !7, i64 2816}
!75 = !{!"", !7, i64 0, !15, i64 4, !15, i64 8, !15, i64 12, !15, i64 16, !15, i64 20, !15, i64 24, !7, i64 28, !15, i64 32, !15, i64 36, !15, i64 40, !15, i64 44, !15, i64 48, !7, i64 52, !7, i64 56, !15, i64 60, !7, i64 64, !15, i64 68, !4, i64 72, !4, i64 80, !4, i64 88, !4, i64 96, !15, i64 104, !15, i64 108, !4, i64 112, !15, i64 120, !15, i64 124, !15, i64 128, !15, i64 132, !7, i64 136, !15, i64 140, !15, i64 144, !7, i64 148, !7, i64 152, !7, i64 156, !7, i64 160, !7, i64 164, !7, i64 168, !7, i64 172, !7, i64 176, !5, i64 180, !7, i64 192, !7, i64 196, !7, i64 200, !7, i64 204, !4, i64 208, !4, i64 216, !4, i64 224, !4, i64 232, !5, i64 240, !5, i64 1488, !7, i64 2736, !7, i64 2740, !4, i64 2744, !4, i64 2752, !4, i64 2760, !7, i64 2768, !15, i64 2772, !4, i64 2776, !7, i64 2784, !4, i64 2792, !4, i64 2800, !7, i64 2808, !7, i64 2812, !7, i64 2816, !4, i64 2824, !4, i64 2832, !15, i64 2840}
!76 = !{!43, !7, i64 8}
!77 = !{!43, !15, i64 24}
!78 = !{!43, !15, i64 28}
!79 = !{!75, !4, i64 2824}
!80 = !{!75, !7, i64 2812}
!81 = !{!49, !7, i64 8}
!82 = !{!49, !15, i64 28}
!83 = !{!49, !15, i64 32}
!84 = !{!49, !15, i64 36}
!85 = !{!55, !15, i64 16}
!86 = !{!55, !7, i64 4}
!87 = !{!88, !7, i64 4}
!88 = !{!"", !15, i64 0, !7, i64 4, !4, i64 8, !4, i64 16, !4, i64 24, !4, i64 32, !4, i64 40, !4, i64 48, !4, i64 56, !4, i64 64, !4, i64 72, !4, i64 80, !4, i64 88, !4, i64 96, !4, i64 104, !4, i64 112, !4, i64 120, !4, i64 128, !4, i64 136, !4, i64 144, !4, i64 152, !4, i64 160, !4, i64 168}
!89 = !{!88, !4, i64 80}
!90 = !{!88, !4, i64 40}
!91 = !{!60, !7, i64 4}
!92 = !{!28, !4, i64 24}
!93 = !{i64 0, i64 4, !14, i64 4, i64 4, !14, i64 8, i64 4, !14, i64 0, i64 4, !14, i64 4, i64 4, !14, i64 8, i64 4, !14, i64 12, i64 4, !14, i64 0, i64 4, !14, i64 4, i64 4, !14, i64 8, i64 4, !14, i64 0, i64 4, !14, i64 4, i64 4, !14, i64 8, i64 4, !14, i64 12, i64 4, !14, i64 16, i64 4, !14, i64 20, i64 4, !14, i64 0, i64 4, !14, i64 4, i64 4, !14, i64 0, i64 4, !14, i64 4, i64 4, !14, i64 8, i64 4, !14, i64 12, i64 4, !14, i64 0, i64 4, !14, i64 4, i64 4, !14, i64 8, i64 4, !24, i64 12, i64 4, !14, i64 16, i64 4, !14, i64 0, i64 4, !14, i64 4, i64 4, !14, i64 0, i64 4, !14, i64 4, i64 4, !14, i64 0, i64 4, !14, i64 4, i64 4, !14, i64 8, i64 4, !14, i64 0, i64 12, !13, i64 12, i64 12, !13, i64 0, i64 24, !13, i64 0, i64 4, !14, i64 4, i64 4, !14, i64 8, i64 4, !14, i64 12, i64 4, !14, i64 16, i64 4, !14, i64 20, i64 4, !14, i64 0, i64 4, !14, i64 4, i64 4, !14, i64 8, i64 4, !14, i64 12, i64 4, !14, i64 16, i64 4, !24, i64 20, i64 4, !24, i64 0, i64 4, !24, i64 4, i64 4, !24, i64 8, i64 4, !24, i64 12, i64 4, !14, i64 16, i64 4, !14, i64 20, i64 4, !14, i64 0, i64 24, !13}
