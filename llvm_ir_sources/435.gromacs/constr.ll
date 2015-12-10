; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/constr.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
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
%struct.t_inputrec = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, float, float, float, i32, i32, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, i32, float, [3 x [3 x float]], [3 x [3 x float]], i32, float, float, i32, float, float, i32, float, float, float, i32, float, float, i32, float, float, float, float, float, i32, i32, i32, float, float, float, i32, float, float, i32, i32, i32, i32, i32, float, i32, float, float, i32, float, i32, i32, i32, i32, float, float, float, float, %struct.t_grpopts, [3 x %struct.t_cosines], [3 x %struct.t_cosines] }
%struct.t_grpopts = type { i32, i32, i32, i32, float*, float*, float*, [3 x float]*, [3 x i32]*, i32* }
%struct.t_cosines = type { i32, float*, float* }
%struct.t_mdatoms = type { float, i32, float*, float*, float*, float*, float*, float*, float*, i32*, i32*, i32*, i32*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16* }
%struct.t_nrnb = type { [129 x double] }
%struct.t_sortblock = type { [3 x i32], i32 }
%struct.t_commrec = type { i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [102 x i8] c"bonds that rotated more than %g degrees:\0A atom 1 atom 2  angle  previous, current, constraint length\0A\00", align 1
@__stderrp = external global %struct.__sFILE*
@stdlog = external global %struct.__sFILE*
@.str1 = private unnamed_addr constant [39 x i8] c" %6d %6d  %5.1f  %8.4f %8.4f    %8.4f\0A\00", align 1
@low_constrain.nblocks = internal global i32 0, align 4
@low_constrain.sblock = internal global i32* null, align 8
@low_constrain.nsettle = internal global i32 0, align 4
@low_constrain.settle_type = internal unnamed_addr global i32 0, align 4
@low_constrain.owptr = internal unnamed_addr global i32* null, align 8
@.str2 = private unnamed_addr constant [13 x i8] c"Berendsen84a\00", align 1
@.str3 = private unnamed_addr constant [6 x i8] c"owptr\00", align 1
@.str4 = private unnamed_addr constant [66 x i8] c"../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/constr.c\00", align 1
@.str5 = private unnamed_addr constant [38 x i8] c"More than one settle type (%d and %d)\00", align 1
@.str6 = private unnamed_addr constant [12 x i8] c"Miyamoto92a\00", align 1
@debug = external global %struct.__sFILE*
@.str7 = private unnamed_addr constant [36 x i8] c"ncons: %d, bstart: %d, nblocks: %d\0A\00", align 1
@.str8 = private unnamed_addr constant [3 x i8] c"sb\00", align 1
@.str9 = private unnamed_addr constant [15 x i8] c"Before sorting\00", align 1
@.str10 = private unnamed_addr constant [27 x i8] c"Going to sort constraints\0A\00", align 1
@.str11 = private unnamed_addr constant [26 x i8] c"I used %d calls to pcomp\0A\00", align 1
@pcount = internal unnamed_addr global i32 0, align 4
@.str12 = private unnamed_addr constant [14 x i8] c"After sorting\00", align 1
@.str13 = private unnamed_addr constant [7 x i8] c"sblock\00", align 1
@.str14 = private unnamed_addr constant [12 x i8] c"bstart: %d\0A\00", align 1
@.str15 = private unnamed_addr constant [31 x i8] c"j: %d, nblocks: %d, ncons: %d\0A\00", align 1
@.str16 = private unnamed_addr constant [28 x i8] c"i: %5d  sb[i].blocknr: %5u\0A\00", align 1
@.str17 = private unnamed_addr constant [17 x i8] c"sblock[%3d]=%5d\0A\00", align 1
@.str18 = private unnamed_addr constant [70 x i8] c"DEATH HORROR: top->blocks[ebSBLOCKS] does not match idef->il[F_SHAKE]\00", align 1
@.str19 = private unnamed_addr constant [11 x i8] c"inv_sblock\00", align 1
@.str20 = private unnamed_addr constant [8 x i8] c"Hess97a\00", align 1
@.str21 = private unnamed_addr constant [12 x i8] c"Ryckaert77a\00", align 1
@.str22 = private unnamed_addr constant [45 x i8] c"Constraint error in algorithm %s at step %d\0A\00", align 1
@eshake_names = external global [3 x i8*]
@.str23 = private unnamed_addr constant [120 x i8] c"\0At = %.3f ps: Water molecule starting at atom %d can not be settled.\0ACheck for bad contacts and/or reduce the timestep.\00", align 1
@.str24 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str25 = private unnamed_addr constant [44 x i8] c"i: %5d, iatom: (%5d %5d %5d), blocknr: %5d\0A\00", align 1
@constrain_lincs.bla1 = internal global i32* null, align 8
@constrain_lincs.bla2 = internal global i32* null, align 8
@constrain_lincs.blnr = internal global i32* null, align 8
@constrain_lincs.blbnb = internal global i32* null, align 8
@constrain_lincs.nrtot = internal global i32 0, align 4
@constrain_lincs.r = internal global [3 x float]* null, align 8
@constrain_lincs.bllen = internal global float* null, align 8
@constrain_lincs.blc = internal global float* null, align 8
@constrain_lincs.blcc = internal global float* null, align 8
@constrain_lincs.blm = internal global float* null, align 8
@constrain_lincs.tmp1 = internal global float* null, align 8
@constrain_lincs.tmp2 = internal global float* null, align 8
@constrain_lincs.tmp3 = internal global float* null, align 8
@constrain_lincs.lincslam = internal global float* null, align 8
@constrain_lincs.bllen0 = internal global float* null, align 8
@constrain_lincs.ddist = internal global float* null, align 8
@constrain_lincs.nc = internal global i32 0, align 4
@.str26 = private unnamed_addr constant [61 x i8] c"   Rel. Constraint Deviation:  Max    between atoms     RMS\0A\00", align 1
@.str27 = private unnamed_addr constant [49 x i8] c"       Before LINCS         %.6f %6d %6d   %.6f\0A\00", align 1
@.str28 = private unnamed_addr constant [50 x i8] c"        After LINCS         %.6f %6d %6d   %.6f\0A\0A\00", align 1
@.str29 = private unnamed_addr constant [126 x i8] c"\0AStep %d, time %g (ps)  LINCS WARNING\0Arelative constraint deviation after LINCS:\0Amax %.6f (between atoms %d and %d) rms %.6f\0A\00", align 1
@.str31 = private unnamed_addr constant [5 x i8] c"at_c\00", align 1
@.str32 = private unnamed_addr constant [6 x i8] c"at_cn\00", align 1
@.str33 = private unnamed_addr constant [6 x i8] c"at_cm\00", align 1
@.str34 = private unnamed_addr constant [9 x i8] c"at_c[a1]\00", align 1
@.str35 = private unnamed_addr constant [9 x i8] c"at_c[a2]\00", align 1
@.str36 = private unnamed_addr constant [3 x i8] c"*r\00", align 1
@.str37 = private unnamed_addr constant [6 x i8] c"*bla1\00", align 1
@.str38 = private unnamed_addr constant [6 x i8] c"*bla2\00", align 1
@.str39 = private unnamed_addr constant [6 x i8] c"*blnr\00", align 1
@.str40 = private unnamed_addr constant [7 x i8] c"*bllen\00", align 1
@.str41 = private unnamed_addr constant [5 x i8] c"*blc\00", align 1
@.str42 = private unnamed_addr constant [6 x i8] c"*tmp1\00", align 1
@.str43 = private unnamed_addr constant [6 x i8] c"*tmp2\00", align 1
@.str44 = private unnamed_addr constant [6 x i8] c"*tmp3\00", align 1
@.str45 = private unnamed_addr constant [10 x i8] c"*lincslam\00", align 1
@.str46 = private unnamed_addr constant [8 x i8] c"*bllen0\00", align 1
@.str47 = private unnamed_addr constant [7 x i8] c"*ddist\00", align 1
@.str48 = private unnamed_addr constant [7 x i8] c"*blbnb\00", align 1
@.str49 = private unnamed_addr constant [6 x i8] c"*blcc\00", align 1
@.str50 = private unnamed_addr constant [5 x i8] c"*blm\00", align 1
@.str51 = private unnamed_addr constant [88 x i8] c"It is not allowed to have a constraint length zero and non-zero in the A and B topology\00", align 1
@.str52 = private unnamed_addr constant [8 x i8] c"at_c[i]\00", align 1
@.str53 = private unnamed_addr constant [40 x i8] c"\0AInitializing LINear Constraint Solver\0A\00", align 1
@.str54 = private unnamed_addr constant [31 x i8] c"  number of constraints is %d\0A\00", align 1
@.str55 = private unnamed_addr constant [67 x i8] c"  average number of constraints coupled to one constraint is %.1f\0A\00", align 1
@.str56 = private unnamed_addr constant [41 x i8] c"  found %d constraints with zero length\0A\00", align 1
@.str58 = private unnamed_addr constant [11 x i8] c"step%d.pdb\00", align 1
@.str59 = private unnamed_addr constant [22 x i8] c"one step before crash\00", align 1
@.str60 = private unnamed_addr constant [8 x i8] c"crashed\00", align 1
@.str61 = private unnamed_addr constant [55 x i8] c"Wrote pdb files with previous and current coordinates\0A\00", align 1

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
define i32 @constrain(%struct.__sFILE* %log, %struct.t_topology* %top, %struct.t_inputrec* %ir, i32 %step, %struct.t_mdatoms* nocapture readonly %md, i32 %start, i32 %homenr, [3 x float]* %x, [3 x float]* %xprime, [3 x float]* %min_proj, [3 x float]* %box, float %lambda, float* %dvdlambda, %struct.t_nrnb* %nrnb, i32 %bCoordinates) #4 {
  %1 = tail call fastcc i32 @low_constrain(%struct.__sFILE* %log, %struct.t_topology* %top, %struct.t_inputrec* %ir, i32 %step, %struct.t_mdatoms* %md, i32 %start, i32 %homenr, [3 x float]* %x, [3 x float]* %xprime, [3 x float]* %min_proj, [3 x float]* %box, float %lambda, float* %dvdlambda, %struct.t_nrnb* %nrnb, i32 %bCoordinates, i32 0) #11
  ret i32 %1
}

; Function Attrs: nounwind optsize ssp uwtable
define internal fastcc i32 @low_constrain(%struct.__sFILE* %log, %struct.t_topology* %top, %struct.t_inputrec* %ir, i32 %step, %struct.t_mdatoms* nocapture readonly %md, i32 %start, i32 %homenr, [3 x float]* %x, [3 x float]* %xprime, [3 x float]* %min_proj, [3 x float]* %box, float %lambda, float* %dvdlambda, %struct.t_nrnb* %nrnb, i32 %bCoordinates, i32 %bInit) #4 {
  %buf.i = alloca [256 x i8], align 16
  %error = alloca i32, align 4
  %mO = alloca float, align 4
  %mH = alloca float, align 4
  %dOH = alloca float, align 4
  %dHH = alloca float, align 4
  %1 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 3, i64 2
  %2 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 1
  %3 = icmp eq i32 %bInit, 0
  br i1 %3, label %169, label %4

; <label>:4                                       ; preds = %0
  %5 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 27
  %6 = load i32* %5, align 4, !tbaa !18
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %12, label %8

; <label>:8                                       ; preds = %4
  %9 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 28
  %10 = load i32* %9, align 4, !tbaa !21
  %11 = icmp eq i32 %10, 1
  br i1 %11, label %12, label %13

; <label>:12                                      ; preds = %8, %4
  tail call void @please_cite(%struct.__sFILE* %log, i8* getelementptr inbounds ([13 x i8]* @.str2, i64 0, i64 0)) #9
  br label %13

; <label>:13                                      ; preds = %12, %8
  %14 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 1, i32 5, i64 29, i32 0
  %15 = load i32* %14, align 4, !tbaa !22
  %16 = sdiv i32 %15, 2
  store i32 %16, i32* @low_constrain.nsettle, align 4, !tbaa !24
  %17 = icmp sgt i32 %15, 1
  br i1 %17, label %18, label %47

; <label>:18                                      ; preds = %13
  %19 = tail call i8* @save_calloc(i8* getelementptr inbounds ([6 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str4, i64 0, i64 0), i32 461, i32 %16, i32 4) #9
  store i8* %19, i8** bitcast (i32** @low_constrain.owptr to i8**), align 8, !tbaa !25
  %20 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 1, i32 5, i64 29, i32 2
  %21 = load i32** %20, align 8, !tbaa !26
  %22 = load i32* %21, align 4, !tbaa !24
  store i32 %22, i32* @low_constrain.settle_type, align 4, !tbaa !24
  %23 = load i32* %14, align 4, !tbaa !22
  %24 = icmp sgt i32 %23, 0
  br i1 %24, label %.lr.ph37, label %._crit_edge38

.lr.ph37:                                         ; preds = %18
  %25 = bitcast i8* %19 to i32*
  br label %26

; <label>:26                                      ; preds = %._crit_edge55, %.lr.ph37
  %27 = phi i32* [ %25, %.lr.ph37 ], [ %35, %._crit_edge55 ]
  %28 = phi i32 [ %22, %.lr.ph37 ], [ %.pre, %._crit_edge55 ]
  %29 = phi i32* [ %21, %.lr.ph37 ], [ %36, %._crit_edge55 ]
  %indvars.iv53 = phi i64 [ 0, %.lr.ph37 ], [ %indvars.iv.next54, %._crit_edge55 ]
  %30 = getelementptr inbounds i32* %29, i64 %indvars.iv53
  %31 = load i32* %30, align 4, !tbaa !24
  %32 = icmp eq i32 %31, %28
  br i1 %32, label %34, label %33

; <label>:33                                      ; preds = %26
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([38 x i8]* @.str5, i64 0, i64 0), i32 %28, i32 %31) #9
  %.pre56 = load i32** %20, align 8, !tbaa !26
  %.pre57 = load i32** @low_constrain.owptr, align 8, !tbaa !25
  br label %34

; <label>:34                                      ; preds = %26, %33
  %35 = phi i32* [ %27, %26 ], [ %.pre57, %33 ]
  %36 = phi i32* [ %29, %26 ], [ %.pre56, %33 ]
  %37 = or i64 %indvars.iv53, 1
  %38 = getelementptr inbounds i32* %36, i64 %37
  %39 = load i32* %38, align 4, !tbaa !24
  %40 = trunc i64 %indvars.iv53 to i32
  %41 = sdiv i32 %40, 2
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32* %35, i64 %42
  store i32 %39, i32* %43, align 4, !tbaa !24
  %indvars.iv.next54 = add nsw i64 %indvars.iv53, 2
  %44 = load i32* %14, align 4, !tbaa !22
  %45 = sext i32 %44 to i64
  %46 = icmp slt i64 %indvars.iv.next54, %45
  br i1 %46, label %._crit_edge55, label %._crit_edge38

._crit_edge55:                                    ; preds = %34
  %.pre = load i32* @low_constrain.settle_type, align 4, !tbaa !24
  br label %26

._crit_edge38:                                    ; preds = %34, %18
  tail call void @please_cite(%struct.__sFILE* %log, i8* getelementptr inbounds ([12 x i8]* @.str6, i64 0, i64 0)) #9
  br label %47

; <label>:47                                      ; preds = %._crit_edge38, %13
  %48 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 1, i32 5, i64 27, i32 0
  %49 = load i32* %48, align 4, !tbaa !22
  %50 = sdiv i32 %49, 3
  %51 = icmp sgt i32 %49, 2
  br i1 %51, label %52, label %157

; <label>:52                                      ; preds = %47
  %53 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 1, i32 1
  %54 = load i32* %53, align 4, !tbaa !27
  %55 = icmp sgt i32 %54, 0
  br i1 %55, label %56, label %61

; <label>:56                                      ; preds = %52
  %57 = add nsw i32 %54, -1
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 3, i64 2, i32 0, i64 %58
  %60 = load i32* %59, align 4, !tbaa !24
  br label %61

; <label>:61                                      ; preds = %52, %56
  %62 = phi i32 [ %60, %56 ], [ 0, %52 ]
  %63 = sext i32 %54 to i64
  %64 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 3, i64 2, i32 0, i64 %63
  %65 = load i32* %64, align 4, !tbaa !24
  %66 = sub nsw i32 %65, %62
  store i32 %66, i32* @low_constrain.nblocks, align 4, !tbaa !24
  %67 = load %struct.__sFILE** @debug, align 8, !tbaa !25
  %68 = icmp eq %struct.__sFILE* %67, null
  br i1 %68, label %.preheader16.lr.ph, label %69

; <label>:69                                      ; preds = %61
  %70 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %67, i8* getelementptr inbounds ([36 x i8]* @.str7, i64 0, i64 0), i32 %50, i32 %62, i32 %66) #9
  br label %.preheader16.lr.ph

.preheader16.lr.ph:                               ; preds = %69, %61
  %71 = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 1
  %72 = load i32* %71, align 4, !tbaa !29
  %73 = tail call i32* @make_invblock(%struct.t_block* %1, i32 %72) #9
  %74 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 1, i32 5, i64 27, i32 2
  %75 = load i32** %74, align 8, !tbaa !26
  %76 = tail call i8* @save_calloc(i8* getelementptr inbounds ([3 x i8]* @.str8, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str4, i64 0, i64 0), i32 499, i32 %50, i32 16) #9
  %77 = bitcast i8* %76 to %struct.t_sortblock*
  %78 = sext i32 %50 to i64
  br label %.preheader16

.preheader16:                                     ; preds = %.preheader16.lr.ph, %83
  %indvars.iv51 = phi i64 [ 0, %.preheader16.lr.ph ], [ %indvars.iv.next52, %83 ]
  %iatom.033 = phi i32* [ %75, %.preheader16.lr.ph ], [ %90, %83 ]
  br label %79

; <label>:79                                      ; preds = %79, %.preheader16
  %indvars.iv48 = phi i64 [ 0, %.preheader16 ], [ %indvars.iv.next49, %79 ]
  %80 = getelementptr inbounds i32* %iatom.033, i64 %indvars.iv48
  %81 = load i32* %80, align 4, !tbaa !24
  %82 = getelementptr inbounds %struct.t_sortblock* %77, i64 %indvars.iv51, i32 0, i64 %indvars.iv48
  store i32 %81, i32* %82, align 4, !tbaa !24
  %indvars.iv.next49 = add nuw nsw i64 %indvars.iv48, 1
  %exitcond50 = icmp eq i64 %indvars.iv.next49, 3
  br i1 %exitcond50, label %83, label %79

; <label>:83                                      ; preds = %79
  %84 = getelementptr inbounds i32* %iatom.033, i64 1
  %85 = load i32* %84, align 4, !tbaa !24
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32* %73, i64 %86
  %88 = load i32* %87, align 4, !tbaa !24
  %89 = getelementptr inbounds %struct.t_sortblock* %77, i64 %indvars.iv51, i32 1
  store i32 %88, i32* %89, align 4, !tbaa !31
  %indvars.iv.next52 = add nuw nsw i64 %indvars.iv51, 1
  %90 = getelementptr inbounds i32* %iatom.033, i64 3
  %91 = icmp slt i64 %indvars.iv.next52, %78
  br i1 %91, label %.preheader16, label %._crit_edge34

._crit_edge34:                                    ; preds = %83
  %92 = load %struct.__sFILE** @debug, align 8, !tbaa !25
  %93 = icmp eq %struct.__sFILE* %92, null
  br i1 %93, label %97, label %94

; <label>:94                                      ; preds = %._crit_edge34
  tail call fastcc void @pr_sortblock(%struct.__sFILE* %92, i8* getelementptr inbounds ([15 x i8]* @.str9, i64 0, i64 0), i32 %50, %struct.t_sortblock* %77) #11
  %95 = load %struct.__sFILE** @debug, align 8, !tbaa !25
  %96 = tail call i64 @fwrite(i8* getelementptr inbounds ([27 x i8]* @.str10, i64 0, i64 0), i64 26, i64 1, %struct.__sFILE* %95)
  br label %97

; <label>:97                                      ; preds = %._crit_edge34, %94
  %98 = sext i32 %50 to i64
  tail call void @qsort(i8* %76, i64 %98, i64 16, i32 (i8*, i8*)* @pcomp) #9
  %99 = load %struct.__sFILE** @debug, align 8, !tbaa !25
  %100 = icmp eq %struct.__sFILE* %99, null
  br i1 %100, label %.preheader15.lr.ph, label %101

; <label>:101                                     ; preds = %97
  %102 = load i32* @pcount, align 4, !tbaa !24
  %103 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %99, i8* getelementptr inbounds ([26 x i8]* @.str11, i64 0, i64 0), i32 %102) #9
  %104 = load %struct.__sFILE** @debug, align 8, !tbaa !25
  tail call fastcc void @pr_sortblock(%struct.__sFILE* %104, i8* getelementptr inbounds ([14 x i8]* @.str12, i64 0, i64 0), i32 %50, %struct.t_sortblock* %77) #11
  br label %.preheader15.lr.ph

.preheader15.lr.ph:                               ; preds = %101, %97
  %105 = load i32** %74, align 8, !tbaa !26
  br label %.preheader15

.preheader15:                                     ; preds = %.preheader15.lr.ph, %110
  %indvars.iv46 = phi i64 [ 0, %.preheader15.lr.ph ], [ %indvars.iv.next47, %110 ]
  %iatom.129 = phi i32* [ %105, %.preheader15.lr.ph ], [ %111, %110 ]
  br label %106

; <label>:106                                     ; preds = %106, %.preheader15
  %indvars.iv43 = phi i64 [ 0, %.preheader15 ], [ %indvars.iv.next44, %106 ]
  %107 = getelementptr inbounds %struct.t_sortblock* %77, i64 %indvars.iv46, i32 0, i64 %indvars.iv43
  %108 = load i32* %107, align 4, !tbaa !24
  %109 = getelementptr inbounds i32* %iatom.129, i64 %indvars.iv43
  store i32 %108, i32* %109, align 4, !tbaa !24
  %indvars.iv.next44 = add nuw nsw i64 %indvars.iv43, 1
  %exitcond = icmp eq i64 %indvars.iv.next44, 3
  br i1 %exitcond, label %110, label %106

; <label>:110                                     ; preds = %106
  %indvars.iv.next47 = add nuw nsw i64 %indvars.iv46, 1
  %111 = getelementptr inbounds i32* %iatom.129, i64 3
  %112 = icmp slt i64 %indvars.iv.next47, %98
  br i1 %112, label %.preheader15, label %.lr.ph25

.lr.ph25:                                         ; preds = %110
  %113 = load i32* @low_constrain.nblocks, align 4, !tbaa !24
  %114 = add nsw i32 %113, 1
  %115 = tail call i8* @save_calloc(i8* getelementptr inbounds ([7 x i8]* @.str13, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str4, i64 0, i64 0), i32 528, i32 %114, i32 4) #9
  store i8* %115, i8** bitcast (i32** @low_constrain.sblock to i8**), align 8, !tbaa !25
  %116 = bitcast i8* %115 to i32*
  br label %117

; <label>:117                                     ; preds = %.lr.ph25, %127
  %indvars.iv41 = phi i64 [ 0, %.lr.ph25 ], [ %indvars.iv.next42, %127 ]
  %j.122 = phi i32 [ 0, %.lr.ph25 ], [ %j.2, %127 ]
  %bnr.021 = phi i32 [ -2, %.lr.ph25 ], [ %bnr.1, %127 ]
  %118 = getelementptr inbounds %struct.t_sortblock* %77, i64 %indvars.iv41, i32 1
  %119 = load i32* %118, align 4, !tbaa !31
  %120 = icmp eq i32 %119, %bnr.021
  br i1 %120, label %127, label %121

; <label>:121                                     ; preds = %117
  %122 = mul nsw i64 %indvars.iv41, 3
  %123 = add nsw i32 %j.122, 1
  %124 = sext i32 %j.122 to i64
  %125 = getelementptr inbounds i32* %116, i64 %124
  %126 = trunc i64 %122 to i32
  store i32 %126, i32* %125, align 4, !tbaa !24
  br label %127

; <label>:127                                     ; preds = %117, %121
  %bnr.1 = phi i32 [ %119, %121 ], [ %bnr.021, %117 ]
  %j.2 = phi i32 [ %123, %121 ], [ %j.122, %117 ]
  %indvars.iv.next42 = add nuw nsw i64 %indvars.iv41, 1
  %128 = icmp slt i64 %indvars.iv.next42, %98
  br i1 %128, label %117, label %._crit_edge26

._crit_edge26:                                    ; preds = %127
  %129 = mul nsw i32 %50, 3
  %130 = sext i32 %j.2 to i64
  %131 = getelementptr inbounds i32* %116, i64 %130
  store i32 %129, i32* %131, align 4, !tbaa !24
  %132 = load i32* @low_constrain.nblocks, align 4, !tbaa !24
  %133 = icmp ne i32 %j.2, %132
  %134 = icmp ne %struct.__sFILE* %log, null
  %or.cond = and i1 %134, %133
  br i1 %or.cond, label %.lr.ph20, label %155

.lr.ph20:                                         ; preds = %._crit_edge26
  %135 = add nsw i32 %j.2, 1
  %136 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %log, i8* getelementptr inbounds ([12 x i8]* @.str14, i64 0, i64 0), i32 %62) #9
  %137 = load i32* @low_constrain.nblocks, align 4, !tbaa !24
  %138 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %log, i8* getelementptr inbounds ([31 x i8]* @.str15, i64 0, i64 0), i32 %135, i32 %137, i32 %50) #9
  br label %141

.preheader:                                       ; preds = %141
  %139 = load i32* @low_constrain.nblocks, align 4, !tbaa !24
  %140 = icmp slt i32 %139, 0
  br i1 %140, label %._crit_edge, label %.lr.ph

; <label>:141                                     ; preds = %.lr.ph20, %141
  %indvars.iv39 = phi i64 [ 0, %.lr.ph20 ], [ %indvars.iv.next40, %141 ]
  %142 = getelementptr inbounds %struct.t_sortblock* %77, i64 %indvars.iv39, i32 1
  %143 = load i32* %142, align 4, !tbaa !31
  %144 = trunc i64 %indvars.iv39 to i32
  %145 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %log, i8* getelementptr inbounds ([28 x i8]* @.str16, i64 0, i64 0), i32 %144, i32 %143) #9
  %indvars.iv.next40 = add nuw nsw i64 %indvars.iv39, 1
  %146 = icmp slt i64 %indvars.iv.next40, %98
  br i1 %146, label %141, label %.preheader

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %.preheader ]
  %147 = load i32** @low_constrain.sblock, align 8, !tbaa !25
  %148 = getelementptr inbounds i32* %147, i64 %indvars.iv
  %149 = load i32* %148, align 4, !tbaa !24
  %150 = trunc i64 %indvars.iv to i32
  %151 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %log, i8* getelementptr inbounds ([17 x i8]* @.str17, i64 0, i64 0), i32 %150, i32 %149) #9
  %indvars.iv.next = add nuw i64 %indvars.iv, 1
  %152 = load i32* @low_constrain.nblocks, align 4, !tbaa !24
  %153 = sext i32 %152 to i64
  %154 = icmp slt i64 %indvars.iv, %153
  br i1 %154, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %.preheader
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([70 x i8]* @.str18, i64 0, i64 0)) #9
  br label %155

; <label>:155                                     ; preds = %._crit_edge, %._crit_edge26
  tail call void @save_free(i8* getelementptr inbounds ([3 x i8]* @.str8, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str4, i64 0, i64 0), i32 550, i8* %76) #9
  %156 = bitcast i32* %73 to i8*
  tail call void @save_free(i8* getelementptr inbounds ([11 x i8]* @.str19, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str4, i64 0, i64 0), i32 551, i8* %156) #9
  %.pr = load i32* %48, align 4, !tbaa !22
  br label %157

; <label>:157                                     ; preds = %155, %47
  %158 = phi i32 [ %.pr, %155 ], [ %49, %47 ]
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %263, label %160

; <label>:160                                     ; preds = %157
  %161 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 64
  %162 = load i32* %161, align 4, !tbaa !33
  %163 = icmp ne i32 %162, 0
  %164 = icmp ne i32 %bCoordinates, 0
  %or.cond3 = and i1 %164, %163
  %165 = load %struct.__sFILE** @stdlog, align 8, !tbaa !25
  br i1 %or.cond3, label %168, label %166

; <label>:166                                     ; preds = %160
  tail call void @please_cite(%struct.__sFILE* %165, i8* getelementptr inbounds ([8 x i8]* @.str20, i64 0, i64 0)) #9
  %167 = tail call fastcc i32 @constrain_lincs(%struct.t_topology* %top, %struct.t_inputrec* %ir, i32 0, %struct.t_mdatoms* %md, i32 %start, i32 %homenr, [3 x float]* null, [3 x float]* null, [3 x float]* null, float 0.000000e+00, float* null, i32 %bCoordinates, i32 1, %struct.t_nrnb* %nrnb) #11
  br label %263

; <label>:168                                     ; preds = %160
  tail call void @please_cite(%struct.__sFILE* %165, i8* getelementptr inbounds ([12 x i8]* @.str21, i64 0, i64 0)) #9
  br label %263

; <label>:169                                     ; preds = %0
  %170 = load i32* @low_constrain.nblocks, align 4, !tbaa !24
  %171 = icmp sgt i32 %170, 0
  br i1 %171, label %172, label %.thread

; <label>:172                                     ; preds = %169
  tail call void @_where(i8* getelementptr inbounds ([66 x i8]* @.str4, i64 0, i64 0), i32 568) #9
  %173 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 64
  %174 = load i32* %173, align 4, !tbaa !33
  switch i32 %174, label %.thread [
    i32 1, label %175
    i32 0, label %182
  ]

; <label>:175                                     ; preds = %172
  %176 = load %struct.__sFILE** @stdlog, align 8, !tbaa !25
  %177 = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 5
  %178 = load float** %177, align 8, !tbaa !34
  %179 = load i32* @low_constrain.nblocks, align 4, !tbaa !24
  %180 = load i32** @low_constrain.sblock, align 8, !tbaa !25
  %181 = tail call i32 @bshakef(%struct.__sFILE* %176, i32 %homenr, float* %178, i32 %179, i32* %180, %struct.t_idef* %2, %struct.t_inputrec* %ir, [3 x float]* %box, [3 x float]* %x, [3 x float]* %xprime, %struct.t_nrnb* %nrnb, float %lambda, float* %dvdlambda, i32 1) #9
  br label %184

; <label>:182                                     ; preds = %172
  %183 = tail call fastcc i32 @constrain_lincs(%struct.t_topology* %top, %struct.t_inputrec* %ir, i32 %step, %struct.t_mdatoms* %md, i32 %start, i32 %homenr, [3 x float]* %x, [3 x float]* %xprime, [3 x float]* %min_proj, float %lambda, float* %dvdlambda, i32 %bCoordinates, i32 0, %struct.t_nrnb* %nrnb) #11
  br label %184

; <label>:184                                     ; preds = %182, %175
  %bOK.0 = phi i32 [ %181, %175 ], [ %183, %182 ]
  %185 = icmp eq i32 %bOK.0, 0
  %186 = load %struct.__sFILE** @stdlog, align 8
  %187 = icmp ne %struct.__sFILE* %186, null
  %or.cond7 = and i1 %185, %187
  br i1 %or.cond7, label %188, label %.thread

; <label>:188                                     ; preds = %184
  %189 = load i32* %173, align 4, !tbaa !33
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds [3 x i8*]* @eshake_names, i64 0, i64 %190
  %192 = load i8** %191, align 8, !tbaa !25
  %193 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %186, i8* getelementptr inbounds ([45 x i8]* @.str22, i64 0, i64 0), i8* %192, i32 %step) #9
  br label %.thread

.thread:                                          ; preds = %172, %188, %184, %169
  %bOK.1 = phi i32 [ 0, %188 ], [ %bOK.0, %184 ], [ 1, %169 ], [ 1, %172 ]
  %194 = load i32* @low_constrain.nsettle, align 4, !tbaa !24
  %195 = icmp sgt i32 %194, 0
  br i1 %195, label %196, label %249

; <label>:196                                     ; preds = %.thread
  %197 = load i32** @low_constrain.owptr, align 8, !tbaa !25
  %198 = load i32* %197, align 4, !tbaa !24
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 2
  %201 = load float** %200, align 8, !tbaa !35
  %202 = getelementptr inbounds float* %201, i64 %199
  %203 = bitcast float* %202 to i32*
  %204 = load i32* %203, align 4, !tbaa !14
  %205 = bitcast float* %mO to i32*
  store i32 %204, i32* %205, align 4, !tbaa !14
  %206 = add nsw i32 %198, 1
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds float* %201, i64 %207
  %209 = bitcast float* %208 to i32*
  %210 = load i32* %209, align 4, !tbaa !14
  %211 = bitcast float* %mH to i32*
  store i32 %210, i32* %211, align 4, !tbaa !14
  %212 = load i32* @low_constrain.settle_type, align 4, !tbaa !24
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 1, i32 4
  %215 = load %union.t_iparams** %214, align 8, !tbaa !36
  %216 = getelementptr inbounds %union.t_iparams* %215, i64 %213, i32 0, i32 0
  %217 = bitcast float* %216 to i32*
  %218 = load i32* %217, align 4, !tbaa !41
  %219 = bitcast float* %dOH to i32*
  store i32 %218, i32* %219, align 4, !tbaa !14
  %220 = getelementptr inbounds %union.t_iparams* %215, i64 %213, i32 0, i32 1
  %221 = bitcast float* %220 to i32*
  %222 = load i32* %221, align 4, !tbaa !43
  %223 = bitcast float* %dHH to i32*
  store i32 %222, i32* %223, align 4, !tbaa !14
  %224 = getelementptr inbounds [3 x float]* %x, i64 0, i64 0
  %225 = getelementptr inbounds [3 x float]* %xprime, i64 0, i64 0
  call void @fsettle_(i32* @low_constrain.nsettle, i32* %197, float* %224, float* %225, float* %dOH, float* %dHH, float* %mO, float* %mH, i32* %error) #9
  %226 = load i32* @low_constrain.nsettle, align 4, !tbaa !24
  %227 = sitofp i32 %226 to double
  %228 = getelementptr inbounds %struct.t_nrnb* %nrnb, i64 0, i32 0, i64 119
  %229 = load double* %228, align 8, !tbaa !16
  %230 = fadd double %229, %227
  store double %230, double* %228, align 8, !tbaa !16
  %231 = load i32* %error, align 4, !tbaa !24
  %.lobit = lshr i32 %231, 31
  %232 = icmp eq i32 %.lobit, 0
  %233 = load %struct.__sFILE** @stdlog, align 8
  %234 = icmp ne %struct.__sFILE* %233, null
  %or.cond11 = and i1 %232, %234
  br i1 %or.cond11, label %.thread62, label %249

.thread62:                                        ; preds = %196
  %235 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 14
  %236 = load float* %235, align 4, !tbaa !44
  %237 = sitofp i32 %step to float
  %238 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 15
  %239 = load float* %238, align 4, !tbaa !45
  %240 = fmul float %237, %239
  %241 = fadd float %236, %240
  %242 = fpext float %241 to double
  %243 = sext i32 %231 to i64
  %244 = load i32** @low_constrain.owptr, align 8, !tbaa !25
  %245 = getelementptr inbounds i32* %244, i64 %243
  %246 = load i32* %245, align 4, !tbaa !24
  %247 = add nsw i32 %246, 1
  %248 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %233, i8* getelementptr inbounds ([120 x i8]* @.str23, i64 0, i64 0), double %242, i32 %247) #9
  br label %251

; <label>:249                                     ; preds = %196, %.thread
  %bOK.2 = phi i32 [ %.lobit, %196 ], [ %bOK.1, %.thread ]
  %250 = icmp eq i32 %bOK.2, 0
  br i1 %250, label %251, label %263

; <label>:251                                     ; preds = %.thread62, %249
  %252 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 2
  %253 = getelementptr inbounds [256 x i8]* %buf.i, i64 0, i64 0
  call void @llvm.lifetime.start(i64 256, i8* %253) #5
  %254 = add nsw i32 %step, -1
  %255 = call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* %253, i32 0, i64 256, i8* getelementptr inbounds ([11 x i8]* @.str58, i64 0, i64 0), i32 %254) #9
  call void @write_sto_conf(i8* %253, i8* getelementptr inbounds ([22 x i8]* @.str59, i64 0, i64 0), %struct.t_atoms* %252, [3 x float]* %x, [3 x float]* null, [3 x float]* %box) #9
  %256 = call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* %253, i32 0, i64 256, i8* getelementptr inbounds ([11 x i8]* @.str58, i64 0, i64 0), i32 %step) #9
  call void @write_sto_conf(i8* %253, i8* getelementptr inbounds ([8 x i8]* @.str60, i64 0, i64 0), %struct.t_atoms* %252, [3 x float]* %xprime, [3 x float]* null, [3 x float]* %box) #9
  %257 = load %struct.__sFILE** @stdlog, align 8, !tbaa !25
  %258 = icmp eq %struct.__sFILE* %257, null
  br i1 %258, label %dump_confs.exit, label %259

; <label>:259                                     ; preds = %251
  %260 = call i64 @fwrite(i8* getelementptr inbounds ([55 x i8]* @.str61, i64 0, i64 0), i64 54, i64 1, %struct.__sFILE* %257) #5
  br label %dump_confs.exit

dump_confs.exit:                                  ; preds = %251, %259
  %261 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !25
  %262 = call i64 @fwrite(i8* getelementptr inbounds ([55 x i8]* @.str61, i64 0, i64 0), i64 54, i64 1, %struct.__sFILE* %261) #5
  call void @llvm.lifetime.end(i64 256, i8* %253) #5
  br label %263

; <label>:263                                     ; preds = %157, %dump_confs.exit, %249, %168, %166
  %bOK.3 = phi i32 [ 1, %168 ], [ %167, %166 ], [ 1, %157 ], [ 0, %dump_confs.exit ], [ %bOK.2, %249 ]
  ret i32 %bOK.3
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @count_constraints(%struct.t_topology* nocapture readonly %top, %struct.t_commrec* %cr) #4 {
  %nc = alloca i32, align 4
  %1 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 1, i32 5, i64 29, i32 0
  %2 = load i32* %1, align 4, !tbaa !22
  %3 = mul nsw i32 %2, 3
  %4 = sdiv i32 %3, 2
  %5 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 1, i32 5, i64 27, i32 0
  %6 = load i32* %5, align 4, !tbaa !22
  %7 = sdiv i32 %6, 3
  %8 = add nsw i32 %7, %4
  store i32 %8, i32* %nc, align 4, !tbaa !24
  %9 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 1
  %10 = load i32* %9, align 4, !tbaa !46
  %11 = icmp sgt i32 %10, 1
  br i1 %11, label %16, label %12

; <label>:12                                      ; preds = %0
  %13 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 5
  %14 = load i32* %13, align 4, !tbaa !48
  %15 = icmp sgt i32 %14, 1
  br i1 %15, label %16, label %17

; <label>:16                                      ; preds = %12, %0
  call void @gmx_sumi(i32 1, i32* %nc, %struct.t_commrec* %cr) #9
  %.pre = load i32* %nc, align 4, !tbaa !24
  br label %17

; <label>:17                                      ; preds = %16, %12
  %18 = phi i32 [ %.pre, %16 ], [ %8, %12 ]
  ret i32 %18
}

; Function Attrs: optsize
declare void @gmx_sumi(i32, i32*, %struct.t_commrec*) #1

; Function Attrs: nounwind optsize ssp uwtable
define i32 @init_constraints(%struct.__sFILE* %log, %struct.t_topology* %top, %struct.t_inputrec* %ir, %struct.t_mdatoms* nocapture readonly %md, i32 %start, i32 %homenr, i32 %bOnlyCoords, %struct.t_commrec* %cr) #4 {
  %1 = tail call fastcc i32 @low_constrain(%struct.__sFILE* %log, %struct.t_topology* %top, %struct.t_inputrec* %ir, i32 0, %struct.t_mdatoms* %md, i32 %start, i32 %homenr, [3 x float]* null, [3 x float]* null, [3 x float]* null, [3 x float]* null, float 0.000000e+00, float* null, %struct.t_nrnb* null, i32 %bOnlyCoords, i32 1) #11
  %2 = tail call i32 @count_constraints(%struct.t_topology* %top, %struct.t_commrec* %cr) #11
  ret i32 %2
}

; Function Attrs: nounwind optsize ssp uwtable
define void @lincs_warning([3 x float]* nocapture readonly %x, [3 x float]* nocapture readonly %xprime, i32 %ncons, i32* nocapture readonly %bla1, i32* nocapture readonly %bla2, float* nocapture readonly %bllen, float %wangle) #4 {
  %buf = alloca [4096 x i8], align 16
  %1 = getelementptr inbounds [4096 x i8]* %buf, i64 0, i64 0
  call void @llvm.lifetime.start(i64 4096, i8* %1) #5
  %2 = fpext float %wangle to double
  %3 = fmul double %2, 0x3F91DF46A2529D39
  %4 = tail call double @cos(double %3) #12
  %5 = fptrunc double %4 to float
  %6 = call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* %1, i32 0, i64 4096, i8* getelementptr inbounds ([102 x i8]* @.str, i64 0, i64 0), double %2) #9
  %7 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !25
  %8 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %7, i8* %1) #9
  %9 = load %struct.__sFILE** @stdlog, align 8, !tbaa !25
  %10 = icmp eq %struct.__sFILE* %9, null
  br i1 %10, label %.preheader, label %11

; <label>:11                                      ; preds = %0
  %12 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %9, i8* %1) #9
  br label %.preheader

.preheader:                                       ; preds = %0, %11
  %13 = icmp sgt i32 %ncons, 0
  br i1 %13, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %14 = add i32 %ncons, -1
  br label %15

; <label>:15                                      ; preds = %88, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %88 ]
  %16 = getelementptr inbounds i32* %bla1, i64 %indvars.iv
  %17 = load i32* %16, align 4, !tbaa !24
  %18 = getelementptr inbounds i32* %bla2, i64 %indvars.iv
  %19 = load i32* %18, align 4, !tbaa !24
  %20 = sext i32 %17 to i64
  %21 = getelementptr inbounds [3 x float]* %x, i64 %20, i64 0
  %22 = sext i32 %19 to i64
  %23 = getelementptr inbounds [3 x float]* %x, i64 %22, i64 0
  %24 = load float* %21, align 4, !tbaa !14
  %25 = load float* %23, align 4, !tbaa !14
  %26 = fsub float %24, %25
  %27 = getelementptr inbounds [3 x float]* %x, i64 %20, i64 1
  %28 = load float* %27, align 4, !tbaa !14
  %29 = getelementptr inbounds [3 x float]* %x, i64 %22, i64 1
  %30 = load float* %29, align 4, !tbaa !14
  %31 = fsub float %28, %30
  %32 = getelementptr inbounds [3 x float]* %x, i64 %20, i64 2
  %33 = load float* %32, align 4, !tbaa !14
  %34 = getelementptr inbounds [3 x float]* %x, i64 %22, i64 2
  %35 = load float* %34, align 4, !tbaa !14
  %36 = fsub float %33, %35
  %37 = getelementptr inbounds [3 x float]* %xprime, i64 %20, i64 0
  %38 = getelementptr inbounds [3 x float]* %xprime, i64 %22, i64 0
  %39 = load float* %37, align 4, !tbaa !14
  %40 = load float* %38, align 4, !tbaa !14
  %41 = fsub float %39, %40
  %42 = getelementptr inbounds [3 x float]* %xprime, i64 %20, i64 1
  %43 = load float* %42, align 4, !tbaa !14
  %44 = getelementptr inbounds [3 x float]* %xprime, i64 %22, i64 1
  %45 = load float* %44, align 4, !tbaa !14
  %46 = fsub float %43, %45
  %47 = getelementptr inbounds [3 x float]* %xprime, i64 %20, i64 2
  %48 = load float* %47, align 4, !tbaa !14
  %49 = getelementptr inbounds [3 x float]* %xprime, i64 %22, i64 2
  %50 = load float* %49, align 4, !tbaa !14
  %51 = fsub float %48, %50
  %52 = fmul float %26, %26
  %53 = fmul float %31, %31
  %54 = fadd float %52, %53
  %55 = fmul float %36, %36
  %56 = fadd float %54, %55
  %sqrtf.i1 = call float @sqrtf(float %56) #6
  %57 = fmul float %41, %41
  %58 = fmul float %46, %46
  %59 = fadd float %57, %58
  %60 = fmul float %51, %51
  %61 = fadd float %59, %60
  %sqrtf.i = call float @sqrtf(float %61) #6
  %62 = fmul float %26, %41
  %63 = fmul float %31, %46
  %64 = fadd float %62, %63
  %65 = fmul float %36, %51
  %66 = fadd float %64, %65
  %67 = fmul float %sqrtf.i1, %sqrtf.i
  %68 = fdiv float %66, %67
  %69 = fcmp olt float %68, %5
  br i1 %69, label %70, label %88

; <label>:70                                      ; preds = %15
  %71 = add nsw i32 %17, 1
  %72 = add nsw i32 %19, 1
  %73 = fpext float %68 to double
  %74 = call double @acos(double %73) #12
  %75 = fmul double %74, 0x404CA5DC1A63C1F8
  %76 = fpext float %sqrtf.i1 to double
  %77 = fpext float %sqrtf.i to double
  %78 = getelementptr inbounds float* %bllen, i64 %indvars.iv
  %79 = load float* %78, align 4, !tbaa !14
  %80 = fpext float %79 to double
  %81 = call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* %1, i32 0, i64 4096, i8* getelementptr inbounds ([39 x i8]* @.str1, i64 0, i64 0), i32 %71, i32 %72, double %75, double %76, double %77, double %80) #9
  %82 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !25
  %83 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %82, i8* %1) #9
  %84 = load %struct.__sFILE** @stdlog, align 8, !tbaa !25
  %85 = icmp eq %struct.__sFILE* %84, null
  br i1 %85, label %88, label %86

; <label>:86                                      ; preds = %70
  %87 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %84, i8* %1) #9
  br label %88

; <label>:88                                      ; preds = %70, %15, %86
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %14
  br i1 %exitcond, label %._crit_edge, label %15

._crit_edge:                                      ; preds = %88, %.preheader
  call void @llvm.lifetime.end(i64 4096, i8* %1) #5
  ret void
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #5

; Function Attrs: nounwind optsize readnone
declare double @cos(double) #6

; Function Attrs: optsize
declare i32 @__sprintf_chk(i8*, i32, i64, i8*, ...) #1

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct.__sFILE* nocapture, i8* nocapture readonly, ...) #7

; Function Attrs: nounwind optsize readnone
declare double @acos(double) #6

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #5

; Function Attrs: nounwind optsize ssp uwtable
define void @cconerr(float* nocapture %max, float* nocapture %rms, i32* nocapture %imax, [3 x float]* nocapture readonly %xprime, i32 %ncons, i32* nocapture readonly %bla1, i32* nocapture readonly %bla2, float* nocapture readonly %bllen) #4 {
  %1 = icmp sgt i32 %ncons, 0
  br i1 %1, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %0
  %2 = add i32 %ncons, -1
  br label %3

; <label>:3                                       ; preds = %3, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %3 ]
  %im.05 = phi i32 [ 0, %.lr.ph ], [ %im.1, %3 ]
  %ma.04 = phi float [ 0.000000e+00, %.lr.ph ], [ %ma.1, %3 ]
  %ms.03 = phi float [ 0.000000e+00, %.lr.ph ], [ %37, %3 ]
  %4 = getelementptr inbounds i32* %bla1, i64 %indvars.iv
  %5 = load i32* %4, align 4, !tbaa !24
  %6 = getelementptr inbounds i32* %bla2, i64 %indvars.iv
  %7 = load i32* %6, align 4, !tbaa !24
  %8 = sext i32 %5 to i64
  %9 = getelementptr inbounds [3 x float]* %xprime, i64 %8, i64 0
  %10 = load float* %9, align 4, !tbaa !14
  %11 = sext i32 %7 to i64
  %12 = getelementptr inbounds [3 x float]* %xprime, i64 %11, i64 0
  %13 = load float* %12, align 4, !tbaa !14
  %14 = fsub float %10, %13
  %15 = getelementptr inbounds [3 x float]* %xprime, i64 %8, i64 1
  %16 = load float* %15, align 4, !tbaa !14
  %17 = getelementptr inbounds [3 x float]* %xprime, i64 %11, i64 1
  %18 = load float* %17, align 4, !tbaa !14
  %19 = fsub float %16, %18
  %20 = getelementptr inbounds [3 x float]* %xprime, i64 %8, i64 2
  %21 = load float* %20, align 4, !tbaa !14
  %22 = getelementptr inbounds [3 x float]* %xprime, i64 %11, i64 2
  %23 = load float* %22, align 4, !tbaa !14
  %24 = fsub float %21, %23
  %25 = fmul float %14, %14
  %26 = fmul float %19, %19
  %27 = fadd float %25, %26
  %28 = fmul float %24, %24
  %29 = fadd float %27, %28
  %sqrtf1 = tail call float @sqrtf(float %29) #6
  %30 = getelementptr inbounds float* %bllen, i64 %indvars.iv
  %31 = load float* %30, align 4, !tbaa !14
  %32 = fdiv float %sqrtf1, %31
  %33 = fadd float %32, -1.000000e+00
  %fabsf = tail call float @fabsf(float %33) #6
  %34 = fcmp ogt float %fabsf, %ma.04
  %ma.1 = select i1 %34, float %fabsf, float %ma.04
  %35 = trunc i64 %indvars.iv to i32
  %im.1 = select i1 %34, i32 %35, i32 %im.05
  %36 = fmul float %fabsf, %fabsf
  %37 = fadd float %ms.03, %36
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i32 %35, %2
  br i1 %exitcond, label %._crit_edge, label %3

._crit_edge:                                      ; preds = %3, %0
  %im.0.lcssa = phi i32 [ 0, %0 ], [ %im.1, %3 ]
  %ma.0.lcssa = phi float [ 0.000000e+00, %0 ], [ %ma.1, %3 ]
  %ms.0.lcssa = phi float [ 0.000000e+00, %0 ], [ %37, %3 ]
  store float %ma.0.lcssa, float* %max, align 4, !tbaa !14
  %38 = sitofp i32 %ncons to float
  %39 = fdiv float %ms.0.lcssa, %38
  %sqrtf = tail call float @sqrtf(float %39) #6
  store float %sqrtf, float* %rms, align 4, !tbaa !14
  store i32 %im.0.lcssa, i32* %imax, align 4, !tbaa !24
  ret void
}

; Function Attrs: nounwind optsize readnone
declare double @sqrt(double) #6

; Function Attrs: optsize
declare void @please_cite(%struct.__sFILE*, i8*) #1

; Function Attrs: optsize
declare i8* @save_calloc(i8*, i8*, i32, i32, i32) #1

; Function Attrs: optsize
declare void @fatal_error(i32, i8*, ...) #1

; Function Attrs: optsize
declare i32* @make_invblock(%struct.t_block*, i32) #1

; Function Attrs: nounwind optsize ssp uwtable
define internal fastcc void @pr_sortblock(%struct.__sFILE* %fp, i8* %title, i32 %nsb, %struct.t_sortblock* nocapture readonly %sb) #4 {
  %1 = icmp eq %struct.__sFILE* %fp, null
  br i1 %1, label %.loopexit, label %2

; <label>:2                                       ; preds = %0
  %3 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([4 x i8]* @.str24, i64 0, i64 0), i8* %title) #9
  %4 = icmp sgt i32 %nsb, 0
  br i1 %4, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %2
  %5 = add i32 %nsb, -1
  br label %6

; <label>:6                                       ; preds = %6, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %6 ]
  %7 = getelementptr inbounds %struct.t_sortblock* %sb, i64 %indvars.iv, i32 0, i64 0
  %8 = load i32* %7, align 4, !tbaa !24
  %9 = getelementptr inbounds %struct.t_sortblock* %sb, i64 %indvars.iv, i32 0, i64 1
  %10 = load i32* %9, align 4, !tbaa !24
  %11 = getelementptr inbounds %struct.t_sortblock* %sb, i64 %indvars.iv, i32 0, i64 2
  %12 = load i32* %11, align 4, !tbaa !24
  %13 = getelementptr inbounds %struct.t_sortblock* %sb, i64 %indvars.iv, i32 1
  %14 = load i32* %13, align 4, !tbaa !31
  %15 = trunc i64 %indvars.iv to i32
  %16 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([44 x i8]* @.str25, i64 0, i64 0), i32 %15, i32 %8, i32 %10, i32 %12, i32 %14) #9
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i32 %15, %5
  br i1 %exitcond, label %.loopexit, label %6

.loopexit:                                        ; preds = %6, %2, %0
  ret void
}

; Function Attrs: optsize
declare void @qsort(i8*, i64, i64, i32 (i8*, i8*)* nocapture) #1

; Function Attrs: nounwind optsize ssp uwtable
define internal i32 @pcomp(i8* nocapture readonly %p1, i8* nocapture readonly %p2) #4 {
  %1 = load i32* @pcount, align 4, !tbaa !24
  %2 = add nsw i32 %1, 1
  store i32 %2, i32* @pcount, align 4, !tbaa !24
  %3 = getelementptr inbounds i8* %p1, i64 12
  %4 = bitcast i8* %3 to i32*
  %5 = load i32* %4, align 4, !tbaa !31
  %6 = getelementptr inbounds i8* %p2, i64 12
  %7 = bitcast i8* %6 to i32*
  %8 = load i32* %7, align 4, !tbaa !31
  %9 = icmp eq i32 %5, %8
  br i1 %9, label %12, label %10

; <label>:10                                      ; preds = %0
  %11 = sub nsw i32 %5, %8
  br label %36

; <label>:12                                      ; preds = %0
  %13 = getelementptr inbounds i8* %p1, i64 4
  %14 = bitcast i8* %13 to i32*
  %15 = load i32* %14, align 4, !tbaa !24
  %16 = getelementptr inbounds i8* %p1, i64 8
  %17 = bitcast i8* %16 to i32*
  %18 = load i32* %17, align 4, !tbaa !24
  %19 = icmp slt i32 %15, %18
  %. = select i1 %19, i32 %15, i32 %18
  %20 = getelementptr inbounds i8* %p2, i64 4
  %21 = bitcast i8* %20 to i32*
  %22 = load i32* %21, align 4, !tbaa !24
  %23 = getelementptr inbounds i8* %p2, i64 8
  %24 = bitcast i8* %23 to i32*
  %25 = load i32* %24, align 4, !tbaa !24
  %26 = icmp slt i32 %22, %25
  %.1 = select i1 %26, i32 %22, i32 %25
  %27 = icmp eq i32 %., %.1
  br i1 %27, label %28, label %34

; <label>:28                                      ; preds = %12
  %29 = icmp sgt i32 %22, %25
  %30 = select i1 %29, i32 %22, i32 %25
  %31 = icmp sgt i32 %15, %18
  %32 = select i1 %31, i32 %15, i32 %18
  %33 = sub nsw i32 %32, %30
  br label %36

; <label>:34                                      ; preds = %12
  %35 = sub nsw i32 %., %.1
  br label %36

; <label>:36                                      ; preds = %34, %28, %10
  %.0 = phi i32 [ %11, %10 ], [ %33, %28 ], [ %35, %34 ]
  ret i32 %.0
}

; Function Attrs: optsize
declare void @save_free(i8*, i8*, i32, i8*) #1

; Function Attrs: nounwind optsize ssp uwtable
define internal fastcc i32 @constrain_lincs(%struct.t_topology* nocapture readonly %top, %struct.t_inputrec* %ir, i32 %step, %struct.t_mdatoms* nocapture readonly %md, i32 %start, i32 %homenr, [3 x float]* %x, [3 x float]* %xprime, [3 x float]* %min_proj, float %lambda, float* nocapture %dvdlambda, i32 %bCoordinates, i32 %bInit, %struct.t_nrnb* nocapture %nrnb) #4 {
  %buf = alloca [4096 x i8], align 16
  %nit = alloca i32, align 4
  %warn = alloca i32, align 4
  %p_imax = alloca i32, align 4
  %wang = alloca float, align 4
  %p_max = alloca float, align 4
  %p_rms = alloca float, align 4
  %1 = getelementptr inbounds [4096 x i8]* %buf, i64 0, i64 0
  call void @llvm.lifetime.start(i64 4096, i8* %1) #5
  %2 = icmp eq i32 %bInit, 0
  br i1 %2, label %290, label %3

; <label>:3                                       ; preds = %0
  %4 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 1, i32 5, i64 27, i32 0
  %5 = load i32* %4, align 4, !tbaa !22
  %6 = sdiv i32 %5, 3
  store i32 %6, i32* @constrain_lincs.nc, align 4, !tbaa !24
  %7 = load %struct.__sFILE** @stdlog, align 8, !tbaa !25
  %8 = load i32* %4, align 4, !tbaa !22
  %9 = sdiv i32 %8, 3
  store i32 0, i32* @constrain_lincs.nrtot, align 4, !tbaa !24
  %10 = icmp sgt i32 %8, 2
  br i1 %10, label %.lr.ph28.i, label %init_lincs.exit

.lr.ph28.i:                                       ; preds = %3
  %11 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 1, i32 5, i64 27, i32 2
  %12 = load i32** %11, align 8, !tbaa !26
  %13 = tail call i8* @save_calloc(i8* getelementptr inbounds ([5 x i8]* @.str31, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str4, i64 0, i64 0), i32 131, i32 %homenr, i32 8) #9
  %14 = bitcast i8* %13 to i32**
  %15 = tail call i8* @save_calloc(i8* getelementptr inbounds ([6 x i8]* @.str32, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str4, i64 0, i64 0), i32 132, i32 %homenr, i32 4) #9
  %16 = bitcast i8* %15 to i32*
  %17 = tail call i8* @save_calloc(i8* getelementptr inbounds ([6 x i8]* @.str33, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str4, i64 0, i64 0), i32 133, i32 %homenr, i32 4) #9
  %18 = bitcast i8* %17 to i32*
  %19 = sext i32 %9 to i64
  br label %20

; <label>:20                                      ; preds = %66, %.lr.ph28.i
  %indvars.iv42.i = phi i64 [ 0, %.lr.ph28.i ], [ %indvars.iv.next43.i, %66 ]
  %21 = mul nsw i64 %indvars.iv42.i, 3
  %22 = add nuw nsw i64 %21, 1
  %23 = getelementptr inbounds i32* %12, i64 %22
  %24 = load i32* %23, align 4, !tbaa !24
  %25 = sub nsw i32 %24, %start
  %26 = add nuw nsw i64 %21, 2
  %27 = getelementptr inbounds i32* %12, i64 %26
  %28 = load i32* %27, align 4, !tbaa !24
  %29 = sub nsw i32 %28, %start
  %30 = sext i32 %25 to i64
  %31 = getelementptr inbounds i32* %16, i64 %30
  %32 = load i32* %31, align 4, !tbaa !24
  %33 = getelementptr inbounds i32* %18, i64 %30
  %34 = load i32* %33, align 4, !tbaa !24
  %35 = icmp slt i32 %32, %34
  br i1 %35, label %._crit_edge45.i, label %36

._crit_edge45.i:                                  ; preds = %20
  %.phi.trans.insert.i = getelementptr inbounds i32** %14, i64 %30
  %.pre46.i = load i32** %.phi.trans.insert.i, align 8, !tbaa !25
  br label %44

; <label>:36                                      ; preds = %20
  %37 = add nsw i32 %34, 4
  store i32 %37, i32* %33, align 4, !tbaa !24
  %38 = getelementptr inbounds i32** %14, i64 %30
  %39 = bitcast i32** %38 to i8**
  %40 = load i8** %39, align 8, !tbaa !25
  %41 = shl i32 %37, 2
  %42 = tail call i8* @save_realloc(i8* getelementptr inbounds ([9 x i8]* @.str34, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str4, i64 0, i64 0), i32 140, i8* %40, i32 %41) #9
  store i8* %42, i8** %39, align 8, !tbaa !25
  %.pre.i = load i32* %31, align 4, !tbaa !24
  %43 = bitcast i8* %42 to i32*
  br label %44

; <label>:44                                      ; preds = %36, %._crit_edge45.i
  %45 = phi i32* [ %.pre46.i, %._crit_edge45.i ], [ %43, %36 ]
  %46 = phi i32 [ %32, %._crit_edge45.i ], [ %.pre.i, %36 ]
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32* %45, i64 %47
  %49 = trunc i64 %indvars.iv42.i to i32
  store i32 %49, i32* %48, align 4, !tbaa !24
  %50 = load i32* %31, align 4, !tbaa !24
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %31, align 4, !tbaa !24
  %52 = sext i32 %29 to i64
  %53 = getelementptr inbounds i32* %16, i64 %52
  %54 = load i32* %53, align 4, !tbaa !24
  %55 = getelementptr inbounds i32* %18, i64 %52
  %56 = load i32* %55, align 4, !tbaa !24
  %57 = icmp slt i32 %54, %56
  br i1 %57, label %._crit_edge48.i, label %58

._crit_edge48.i:                                  ; preds = %44
  %.phi.trans.insert49.i = getelementptr inbounds i32** %14, i64 %52
  %.pre50.i = load i32** %.phi.trans.insert49.i, align 8, !tbaa !25
  br label %66

; <label>:58                                      ; preds = %44
  %59 = add nsw i32 %56, 4
  store i32 %59, i32* %55, align 4, !tbaa !24
  %60 = getelementptr inbounds i32** %14, i64 %52
  %61 = bitcast i32** %60 to i8**
  %62 = load i8** %61, align 8, !tbaa !25
  %63 = shl i32 %59, 2
  %64 = tail call i8* @save_realloc(i8* getelementptr inbounds ([9 x i8]* @.str35, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str4, i64 0, i64 0), i32 146, i8* %62, i32 %63) #9
  store i8* %64, i8** %61, align 8, !tbaa !25
  %.pre47.i = load i32* %53, align 4, !tbaa !24
  %65 = bitcast i8* %64 to i32*
  br label %66

; <label>:66                                      ; preds = %58, %._crit_edge48.i
  %67 = phi i32* [ %.pre50.i, %._crit_edge48.i ], [ %65, %58 ]
  %68 = phi i32 [ %54, %._crit_edge48.i ], [ %.pre47.i, %58 ]
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32* %67, i64 %69
  store i32 %49, i32* %70, align 4, !tbaa !24
  %71 = load i32* %53, align 4, !tbaa !24
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %53, align 4, !tbaa !24
  %indvars.iv.next43.i = add nuw nsw i64 %indvars.iv42.i, 1
  %73 = icmp slt i64 %indvars.iv.next43.i, %19
  br i1 %73, label %20, label %.lr.ph24.i

.lr.ph24.i:                                       ; preds = %66
  tail call void @save_free(i8* getelementptr inbounds ([6 x i8]* @.str33, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str4, i64 0, i64 0), i32 151, i8* %17) #9
  %.pre52.i = load i32* @constrain_lincs.nrtot, align 4, !tbaa !24
  br label %74

; <label>:74                                      ; preds = %74, %.lr.ph24.i
  %75 = phi i32 [ %.pre52.i, %.lr.ph24.i ], [ %93, %74 ]
  %indvars.iv40.i = phi i64 [ 0, %.lr.ph24.i ], [ %indvars.iv.next41.i, %74 ]
  %76 = mul nsw i64 %indvars.iv40.i, 3
  %77 = add nuw nsw i64 %76, 1
  %78 = getelementptr inbounds i32* %12, i64 %77
  %79 = load i32* %78, align 4, !tbaa !24
  %80 = sub nsw i32 %79, %start
  %81 = add nuw nsw i64 %76, 2
  %82 = getelementptr inbounds i32* %12, i64 %81
  %83 = load i32* %82, align 4, !tbaa !24
  %84 = sub nsw i32 %83, %start
  %85 = sext i32 %80 to i64
  %86 = getelementptr inbounds i32* %16, i64 %85
  %87 = load i32* %86, align 4, !tbaa !24
  %88 = sext i32 %84 to i64
  %89 = getelementptr inbounds i32* %16, i64 %88
  %90 = load i32* %89, align 4, !tbaa !24
  %91 = add i32 %75, -2
  %92 = add i32 %91, %87
  %93 = add i32 %92, %90
  store i32 %93, i32* @constrain_lincs.nrtot, align 4, !tbaa !24
  %indvars.iv.next41.i = add nuw nsw i64 %indvars.iv40.i, 1
  %94 = icmp slt i64 %indvars.iv.next41.i, %19
  br i1 %94, label %74, label %.lr.ph19.i

.lr.ph19.i:                                       ; preds = %74
  %95 = tail call i8* @save_calloc(i8* getelementptr inbounds ([3 x i8]* @.str36, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str4, i64 0, i64 0), i32 159, i32 %9, i32 12) #9
  store i8* %95, i8** bitcast ([3 x float]** @constrain_lincs.r to i8**), align 8, !tbaa !25
  %96 = tail call i8* @save_calloc(i8* getelementptr inbounds ([6 x i8]* @.str37, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str4, i64 0, i64 0), i32 160, i32 %9, i32 4) #9
  store i8* %96, i8** bitcast (i32** @constrain_lincs.bla1 to i8**), align 8, !tbaa !25
  %97 = tail call i8* @save_calloc(i8* getelementptr inbounds ([6 x i8]* @.str38, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str4, i64 0, i64 0), i32 161, i32 %9, i32 4) #9
  store i8* %97, i8** bitcast (i32** @constrain_lincs.bla2 to i8**), align 8, !tbaa !25
  %98 = add nsw i32 %9, 1
  %99 = tail call i8* @save_calloc(i8* getelementptr inbounds ([6 x i8]* @.str39, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str4, i64 0, i64 0), i32 162, i32 %98, i32 4) #9
  store i8* %99, i8** bitcast (i32** @constrain_lincs.blnr to i8**), align 8, !tbaa !25
  %100 = tail call i8* @save_calloc(i8* getelementptr inbounds ([7 x i8]* @.str40, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str4, i64 0, i64 0), i32 163, i32 %9, i32 4) #9
  store i8* %100, i8** bitcast (float** @constrain_lincs.bllen to i8**), align 8, !tbaa !25
  %101 = tail call i8* @save_calloc(i8* getelementptr inbounds ([5 x i8]* @.str41, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str4, i64 0, i64 0), i32 164, i32 %9, i32 4) #9
  store i8* %101, i8** bitcast (float** @constrain_lincs.blc to i8**), align 8, !tbaa !25
  %102 = tail call i8* @save_calloc(i8* getelementptr inbounds ([6 x i8]* @.str42, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str4, i64 0, i64 0), i32 165, i32 %9, i32 4) #9
  store i8* %102, i8** bitcast (float** @constrain_lincs.tmp1 to i8**), align 8, !tbaa !25
  %103 = tail call i8* @save_calloc(i8* getelementptr inbounds ([6 x i8]* @.str43, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str4, i64 0, i64 0), i32 166, i32 %9, i32 4) #9
  store i8* %103, i8** bitcast (float** @constrain_lincs.tmp2 to i8**), align 8, !tbaa !25
  %104 = tail call i8* @save_calloc(i8* getelementptr inbounds ([6 x i8]* @.str44, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str4, i64 0, i64 0), i32 167, i32 %9, i32 4) #9
  store i8* %104, i8** bitcast (float** @constrain_lincs.tmp3 to i8**), align 8, !tbaa !25
  %105 = tail call i8* @save_calloc(i8* getelementptr inbounds ([10 x i8]* @.str45, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str4, i64 0, i64 0), i32 168, i32 %9, i32 4) #9
  store i8* %105, i8** bitcast (float** @constrain_lincs.lincslam to i8**), align 8, !tbaa !25
  %106 = tail call i8* @save_calloc(i8* getelementptr inbounds ([8 x i8]* @.str46, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str4, i64 0, i64 0), i32 169, i32 %9, i32 4) #9
  store i8* %106, i8** bitcast (float** @constrain_lincs.bllen0 to i8**), align 8, !tbaa !25
  %107 = tail call i8* @save_calloc(i8* getelementptr inbounds ([7 x i8]* @.str47, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str4, i64 0, i64 0), i32 170, i32 %9, i32 4) #9
  store i8* %107, i8** bitcast (float** @constrain_lincs.ddist to i8**), align 8, !tbaa !25
  %108 = load i32* @constrain_lincs.nrtot, align 4, !tbaa !24
  %109 = tail call i8* @save_calloc(i8* getelementptr inbounds ([7 x i8]* @.str48, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str4, i64 0, i64 0), i32 171, i32 %108, i32 4) #9
  store i8* %109, i8** bitcast (i32** @constrain_lincs.blbnb to i8**), align 8, !tbaa !25
  %110 = load i32* @constrain_lincs.nrtot, align 4, !tbaa !24
  %111 = tail call i8* @save_calloc(i8* getelementptr inbounds ([6 x i8]* @.str49, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str4, i64 0, i64 0), i32 172, i32 %110, i32 4) #9
  store i8* %111, i8** bitcast (float** @constrain_lincs.blcc to i8**), align 8, !tbaa !25
  %112 = load i32* @constrain_lincs.nrtot, align 4, !tbaa !24
  %113 = tail call i8* @save_calloc(i8* getelementptr inbounds ([5 x i8]* @.str50, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str4, i64 0, i64 0), i32 173, i32 %112, i32 4) #9
  store i8* %113, i8** bitcast (float** @constrain_lincs.blm to i8**), align 8, !tbaa !25
  %114 = load i32** @constrain_lincs.blnr, align 8, !tbaa !25
  store i32 0, i32* %114, align 4, !tbaa !24
  %115 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 1, i32 4
  %116 = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 5
  br label %117

; <label>:117                                     ; preds = %._crit_edge15.i, %.lr.ph19.i
  %indvars.iv38.i = phi i64 [ 0, %.lr.ph19.i ], [ %indvars.iv.next39.i, %._crit_edge15.i ]
  %nZeroLen.016.i = phi i32 [ 0, %.lr.ph19.i ], [ %nZeroLen.1.i, %._crit_edge15.i ]
  %118 = mul nsw i64 %indvars.iv38.i, 3
  %119 = add nuw nsw i64 %118, 1
  %120 = getelementptr inbounds i32* %12, i64 %119
  %121 = load i32* %120, align 4, !tbaa !24
  %122 = add nuw nsw i64 %118, 2
  %123 = getelementptr inbounds i32* %12, i64 %122
  %124 = load i32* %123, align 4, !tbaa !24
  %125 = getelementptr inbounds i32* %12, i64 %118
  %126 = load i32* %125, align 4, !tbaa !24
  %127 = sext i32 %126 to i64
  %128 = load %union.t_iparams** %115, align 8, !tbaa !49
  %129 = getelementptr inbounds %union.t_iparams* %128, i64 %127, i32 0, i32 0
  %130 = load float* %129, align 4, !tbaa !41
  %131 = getelementptr inbounds %union.t_iparams* %128, i64 %127, i32 0, i32 1
  %132 = load float* %131, align 4, !tbaa !43
  %133 = fpext float %130 to double
  %134 = fcmp olt double %133, 1.200000e-38
  %135 = fpext float %132 to double
  %136 = fcmp olt double %135, 1.200000e-38
  %or.cond.i = or i1 %134, %136
  %137 = fsub float %132, %130
  br i1 %or.cond.i, label %138, label %._crit_edge59.i

; <label>:138                                     ; preds = %117
  %fabsf.i = tail call float @fabsf(float %137) #6
  %139 = fpext float %fabsf.i to double
  %140 = fcmp ogt double %139, 1.200000e-38
  br i1 %140, label %141, label %._crit_edge59.i

; <label>:141                                     ; preds = %138
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([88 x i8]* @.str51, i64 0, i64 0)) #9
  br label %._crit_edge59.i

._crit_edge59.i:                                  ; preds = %141, %138, %117
  %142 = zext i1 %134 to i32
  %nZeroLen.1.i = add nsw i32 %142, %nZeroLen.016.i
  %143 = load i32** @constrain_lincs.bla1, align 8, !tbaa !25
  %144 = getelementptr inbounds i32* %143, i64 %indvars.iv38.i
  store i32 %121, i32* %144, align 4, !tbaa !24
  %145 = load i32** @constrain_lincs.bla2, align 8, !tbaa !25
  %146 = getelementptr inbounds i32* %145, i64 %indvars.iv38.i
  store i32 %124, i32* %146, align 4, !tbaa !24
  %147 = load float** @constrain_lincs.bllen, align 8, !tbaa !25
  %148 = getelementptr inbounds float* %147, i64 %indvars.iv38.i
  store float %130, float* %148, align 4, !tbaa !14
  %149 = load float** @constrain_lincs.bllen0, align 8, !tbaa !25
  %150 = getelementptr inbounds float* %149, i64 %indvars.iv38.i
  store float %130, float* %150, align 4, !tbaa !14
  %151 = load float** @constrain_lincs.ddist, align 8, !tbaa !25
  %152 = getelementptr inbounds float* %151, i64 %indvars.iv38.i
  store float %137, float* %152, align 4, !tbaa !14
  %153 = sext i32 %121 to i64
  %154 = load float** %116, align 8, !tbaa !34
  %155 = getelementptr inbounds float* %154, i64 %153
  %156 = load float* %155, align 4, !tbaa !14
  %157 = sext i32 %124 to i64
  %158 = getelementptr inbounds float* %154, i64 %157
  %159 = load float* %158, align 4, !tbaa !14
  %160 = fadd float %156, %159
  %161 = fpext float %160 to double
  %162 = tail call double @sqrt(double %161) #12
  %163 = fdiv double 1.000000e+00, %162
  %164 = fptrunc double %163 to float
  %165 = load float** @constrain_lincs.blc, align 8, !tbaa !25
  %166 = getelementptr inbounds float* %165, i64 %indvars.iv38.i
  store float %164, float* %166, align 4, !tbaa !14
  %167 = load i32** @constrain_lincs.blnr, align 8, !tbaa !25
  %168 = getelementptr inbounds i32* %167, i64 %indvars.iv38.i
  %169 = load i32* %168, align 4, !tbaa !24
  %indvars.iv.next39.i = add nuw nsw i64 %indvars.iv38.i, 1
  %170 = getelementptr inbounds i32* %167, i64 %indvars.iv.next39.i
  store i32 %169, i32* %170, align 4, !tbaa !24
  %171 = sub nsw i32 %121, %start
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds i32* %16, i64 %172
  %174 = load i32* %173, align 4, !tbaa !24
  %175 = icmp sgt i32 %174, 0
  br i1 %175, label %.lr.ph12.i, label %.preheader4.i

.lr.ph12.i:                                       ; preds = %._crit_edge59.i
  %176 = getelementptr inbounds i32** %14, i64 %172
  %177 = load i32** %176, align 8, !tbaa !25
  %178 = load i32** @constrain_lincs.blbnb, align 8, !tbaa !25
  %179 = trunc i64 %indvars.iv38.i to i32
  br label %189

.preheader4.i:                                    ; preds = %199, %._crit_edge59.i
  %180 = sub nsw i32 %124, %start
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds i32* %16, i64 %181
  %183 = load i32* %182, align 4, !tbaa !24
  %184 = icmp sgt i32 %183, 0
  br i1 %184, label %.lr.ph14.i, label %.preheader4._crit_edge.i

.preheader4._crit_edge.i:                         ; preds = %.preheader4.i
  %.pre56.i = load i32** @constrain_lincs.blbnb, align 8, !tbaa !25
  br label %._crit_edge15.i

.lr.ph14.i:                                       ; preds = %.preheader4.i
  %185 = getelementptr inbounds i32** %14, i64 %181
  %186 = load i32** %185, align 8, !tbaa !25
  %187 = load i32** @constrain_lincs.blbnb, align 8, !tbaa !25
  %188 = trunc i64 %indvars.iv38.i to i32
  br label %203

; <label>:189                                     ; preds = %199, %.lr.ph12.i
  %190 = phi i32 [ %174, %.lr.ph12.i ], [ %200, %199 ]
  %indvars.iv34.i = phi i64 [ 0, %.lr.ph12.i ], [ %indvars.iv.next35.i, %199 ]
  %191 = getelementptr inbounds i32* %177, i64 %indvars.iv34.i
  %192 = load i32* %191, align 4, !tbaa !24
  %193 = icmp eq i32 %192, %179
  br i1 %193, label %199, label %194

; <label>:194                                     ; preds = %189
  %195 = load i32* %170, align 4, !tbaa !24
  %196 = add nsw i32 %195, 1
  store i32 %196, i32* %170, align 4, !tbaa !24
  %197 = sext i32 %195 to i64
  %198 = getelementptr inbounds i32* %178, i64 %197
  store i32 %192, i32* %198, align 4, !tbaa !24
  %.pre54.i = load i32* %173, align 4, !tbaa !24
  br label %199

; <label>:199                                     ; preds = %194, %189
  %200 = phi i32 [ %190, %189 ], [ %.pre54.i, %194 ]
  %indvars.iv.next35.i = add nuw nsw i64 %indvars.iv34.i, 1
  %201 = sext i32 %200 to i64
  %202 = icmp slt i64 %indvars.iv.next35.i, %201
  br i1 %202, label %189, label %.preheader4.i

; <label>:203                                     ; preds = %213, %.lr.ph14.i
  %204 = phi i32 [ %183, %.lr.ph14.i ], [ %214, %213 ]
  %indvars.iv36.i = phi i64 [ 0, %.lr.ph14.i ], [ %indvars.iv.next37.i, %213 ]
  %205 = getelementptr inbounds i32* %186, i64 %indvars.iv36.i
  %206 = load i32* %205, align 4, !tbaa !24
  %207 = icmp eq i32 %206, %188
  br i1 %207, label %213, label %208

; <label>:208                                     ; preds = %203
  %209 = load i32* %170, align 4, !tbaa !24
  %210 = add nsw i32 %209, 1
  store i32 %210, i32* %170, align 4, !tbaa !24
  %211 = sext i32 %209 to i64
  %212 = getelementptr inbounds i32* %187, i64 %211
  store i32 %206, i32* %212, align 4, !tbaa !24
  %.pre55.i = load i32* %182, align 4, !tbaa !24
  br label %213

; <label>:213                                     ; preds = %208, %203
  %214 = phi i32 [ %204, %203 ], [ %.pre55.i, %208 ]
  %indvars.iv.next37.i = add nuw nsw i64 %indvars.iv36.i, 1
  %215 = sext i32 %214 to i64
  %216 = icmp slt i64 %indvars.iv.next37.i, %215
  br i1 %216, label %203, label %._crit_edge15.i

._crit_edge15.i:                                  ; preds = %213, %.preheader4._crit_edge.i
  %217 = phi i32* [ %.pre56.i, %.preheader4._crit_edge.i ], [ %187, %213 ]
  %218 = load i32* %168, align 4, !tbaa !24
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds i32* %217, i64 %219
  %221 = bitcast i32* %220 to i8*
  %222 = load i32* %170, align 4, !tbaa !24
  %223 = sub nsw i32 %222, %218
  %224 = sext i32 %223 to i64
  tail call void @qsort(i8* %221, i64 %224, i64 4, i32 (i8*, i8*)* @int_comp) #9
  %225 = icmp slt i64 %indvars.iv.next39.i, %19
  br i1 %225, label %117, label %._crit_edge20.i

._crit_edge20.i:                                  ; preds = %._crit_edge15.i
  tail call void @save_free(i8* getelementptr inbounds ([6 x i8]* @.str32, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str4, i64 0, i64 0), i32 213, i8* %15) #9
  %226 = icmp sgt i32 %homenr, 0
  br i1 %226, label %.lr.ph9.i, label %._crit_edge.i

.lr.ph9.i:                                        ; preds = %._crit_edge20.i
  %227 = add i32 %homenr, -1
  br label %228

; <label>:228                                     ; preds = %228, %.lr.ph9.i
  %indvars.iv32.i = phi i64 [ 0, %.lr.ph9.i ], [ %indvars.iv.next33.i, %228 ]
  %229 = getelementptr inbounds i32** %14, i64 %indvars.iv32.i
  %230 = bitcast i32** %229 to i8**
  %231 = load i8** %230, align 8, !tbaa !25
  tail call void @save_free(i8* getelementptr inbounds ([8 x i8]* @.str52, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str4, i64 0, i64 0), i32 215, i8* %231) #9
  %indvars.iv.next33.i = add nuw nsw i64 %indvars.iv32.i, 1
  %lftr.wideiv = trunc i64 %indvars.iv32.i to i32
  %exitcond19 = icmp eq i32 %lftr.wideiv, %227
  br i1 %exitcond19, label %._crit_edge.i, label %228

._crit_edge.i:                                    ; preds = %228, %._crit_edge20.i
  tail call void @save_free(i8* getelementptr inbounds ([5 x i8]* @.str31, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str4, i64 0, i64 0), i32 216, i8* %13) #9
  %232 = icmp eq %struct.__sFILE* %7, null
  br i1 %232, label %.lr.ph7.i, label %233

; <label>:233                                     ; preds = %._crit_edge.i
  %234 = tail call i64 @fwrite(i8* getelementptr inbounds ([40 x i8]* @.str53, i64 0, i64 0), i64 39, i64 1, %struct.__sFILE* %7) #5
  %235 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %7, i8* getelementptr inbounds ([31 x i8]* @.str54, i64 0, i64 0), i32 %9) #9
  %236 = load i32* @constrain_lincs.nrtot, align 4, !tbaa !24
  %237 = sitofp i32 %236 to float
  %238 = sitofp i32 %9 to float
  %239 = fdiv float %237, %238
  %240 = fpext float %239 to double
  %241 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %7, i8* getelementptr inbounds ([67 x i8]* @.str55, i64 0, i64 0), double %240) #9
  %242 = icmp eq i32 %nZeroLen.1.i, 0
  br i1 %242, label %245, label %243

; <label>:243                                     ; preds = %233
  %244 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %7, i8* getelementptr inbounds ([41 x i8]* @.str56, i64 0, i64 0), i32 %nZeroLen.1.i) #9
  br label %245

; <label>:245                                     ; preds = %243, %233
  %fputc.i = tail call i32 @fputc(i32 10, %struct.__sFILE* %7) #5
  %246 = tail call i32 @fflush(%struct.__sFILE* %7) #9
  br label %.lr.ph7.i

.lr.ph7.i:                                        ; preds = %245, %._crit_edge.i
  %247 = load i32** @constrain_lincs.bla1, align 8, !tbaa !25
  %248 = load i32** @constrain_lincs.bla2, align 8, !tbaa !25
  %249 = load i32** @constrain_lincs.blnr, align 8, !tbaa !25
  %250 = load i32** @constrain_lincs.blbnb, align 8, !tbaa !25
  %251 = load float** @constrain_lincs.blc, align 8, !tbaa !25
  %252 = load float** @constrain_lincs.blcc, align 8, !tbaa !25
  %.pre57.i = load i32* %249, align 4, !tbaa !24
  br label %254

.loopexit.i:                                      ; preds = %.thread.i, %254
  %253 = icmp slt i64 %indvars.iv.next31.i, %19
  br i1 %253, label %254, label %init_lincs.exit

; <label>:254                                     ; preds = %.loopexit.i, %.lr.ph7.i
  %255 = phi i32 [ %.pre57.i, %.lr.ph7.i ], [ %261, %.loopexit.i ]
  %indvars.iv30.i = phi i64 [ 0, %.lr.ph7.i ], [ %indvars.iv.next31.i, %.loopexit.i ]
  %256 = getelementptr inbounds i32* %247, i64 %indvars.iv30.i
  %257 = load i32* %256, align 4, !tbaa !24
  %258 = getelementptr inbounds i32* %248, i64 %indvars.iv30.i
  %259 = load i32* %258, align 4, !tbaa !24
  %indvars.iv.next31.i = add nuw nsw i64 %indvars.iv30.i, 1
  %260 = getelementptr inbounds i32* %249, i64 %indvars.iv.next31.i
  %261 = load i32* %260, align 4, !tbaa !24
  %262 = icmp slt i32 %255, %261
  br i1 %262, label %.lr.ph.i, label %.loopexit.i

.lr.ph.i:                                         ; preds = %254
  %263 = load float** %116, align 8, !tbaa !34
  %264 = getelementptr inbounds float* %251, i64 %indvars.iv30.i
  %265 = sext i32 %255 to i64
  %266 = sext i32 %261 to i64
  %267 = add nsw i64 %266, -1
  br label %268

; <label>:268                                     ; preds = %.thread.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %265, %.lr.ph.i ], [ %indvars.iv.next.i, %.thread.i ]
  %269 = getelementptr inbounds i32* %250, i64 %indvars.iv.i
  %270 = load i32* %269, align 4, !tbaa !24
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds i32* %247, i64 %271
  %273 = load i32* %272, align 4, !tbaa !24
  %274 = icmp eq i32 %257, %273
  br i1 %274, label %.thread.i, label %275

; <label>:275                                     ; preds = %268
  %276 = getelementptr inbounds i32* %248, i64 %271
  %277 = load i32* %276, align 4, !tbaa !24
  %278 = icmp eq i32 %259, %277
  %.64.i = select i1 %278, float -1.000000e+00, float 1.000000e+00
  %279 = icmp eq i32 %257, %277
  %.2.i = select i1 %279, i32 %257, i32 %259
  br label %.thread.i

.thread.i:                                        ; preds = %275, %268
  %sign.062.i = phi float [ %.64.i, %275 ], [ -1.000000e+00, %268 ]
  %cen.0.i = phi i32 [ %.2.i, %275 ], [ %257, %268 ]
  %280 = sext i32 %cen.0.i to i64
  %281 = getelementptr inbounds float* %263, i64 %280
  %282 = load float* %281, align 4, !tbaa !14
  %283 = fmul float %sign.062.i, %282
  %284 = load float* %264, align 4, !tbaa !14
  %285 = fmul float %283, %284
  %286 = getelementptr inbounds float* %251, i64 %271
  %287 = load float* %286, align 4, !tbaa !14
  %288 = fmul float %285, %287
  %289 = getelementptr inbounds float* %252, i64 %indvars.iv.i
  store float %288, float* %289, align 4, !tbaa !14
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1
  %exitcond = icmp eq i64 %indvars.iv.i, %267
  br i1 %exitcond, label %.loopexit.i, label %268

; <label>:290                                     ; preds = %0
  %291 = load i32* @constrain_lincs.nc, align 4, !tbaa !24
  %292 = icmp eq i32 %291, 0
  br i1 %292, label %init_lincs.exit, label %293

; <label>:293                                     ; preds = %290
  %294 = icmp eq i32 %bCoordinates, 0
  br i1 %294, label %519, label %295

; <label>:295                                     ; preds = %293
  %296 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 15
  %297 = load float* %296, align 4, !tbaa !45
  %298 = fmul float %297, %297
  %299 = fdiv float 1.000000e+00, %298
  %300 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 46
  %301 = load i32* %300, align 4, !tbaa !50
  %302 = icmp eq i32 %301, 0
  br i1 %302, label %.preheader2, label %.preheader3

.preheader3:                                      ; preds = %295
  %303 = icmp sgt i32 %291, 0
  br i1 %303, label %.lr.ph12, label %._crit_edge10

.lr.ph12:                                         ; preds = %.preheader3
  %304 = load float** @constrain_lincs.bllen0, align 8, !tbaa !25
  %305 = load float** @constrain_lincs.ddist, align 8, !tbaa !25
  %306 = load float** @constrain_lincs.bllen, align 8, !tbaa !25
  %307 = sext i32 %291 to i64
  br label %314

.preheader2:                                      ; preds = %314, %295
  %308 = icmp sgt i32 %291, 0
  br i1 %308, label %.lr.ph9, label %._crit_edge10

.lr.ph9:                                          ; preds = %.preheader2
  %309 = load float** @constrain_lincs.bllen0, align 8, !tbaa !25
  %310 = load i32** @constrain_lincs.bla1, align 8, !tbaa !25
  %311 = load i32** @constrain_lincs.bla2, align 8, !tbaa !25
  %312 = load float** @constrain_lincs.bllen, align 8, !tbaa !25
  %313 = sext i32 %291 to i64
  br label %323

; <label>:314                                     ; preds = %.lr.ph12, %314
  %indvars.iv17 = phi i64 [ 0, %.lr.ph12 ], [ %indvars.iv.next18, %314 ]
  %315 = getelementptr inbounds float* %304, i64 %indvars.iv17
  %316 = load float* %315, align 4, !tbaa !14
  %317 = getelementptr inbounds float* %305, i64 %indvars.iv17
  %318 = load float* %317, align 4, !tbaa !14
  %319 = fmul float %318, %lambda
  %320 = fadd float %316, %319
  %321 = getelementptr inbounds float* %306, i64 %indvars.iv17
  store float %320, float* %321, align 4, !tbaa !14
  %indvars.iv.next18 = add nuw nsw i64 %indvars.iv17, 1
  %322 = icmp slt i64 %indvars.iv.next18, %307
  br i1 %322, label %314, label %.preheader2

; <label>:323                                     ; preds = %.lr.ph9, %356
  %indvars.iv15 = phi i64 [ 0, %.lr.ph9 ], [ %indvars.iv.next16, %356 ]
  %324 = getelementptr inbounds float* %309, i64 %indvars.iv15
  %325 = load float* %324, align 4, !tbaa !14
  %326 = fpext float %325 to double
  %327 = fcmp olt double %326, 1.200000e-38
  br i1 %327, label %328, label %356

; <label>:328                                     ; preds = %323
  %329 = getelementptr inbounds i32* %310, i64 %indvars.iv15
  %330 = load i32* %329, align 4, !tbaa !24
  %331 = getelementptr inbounds i32* %311, i64 %indvars.iv15
  %332 = load i32* %331, align 4, !tbaa !24
  %333 = sext i32 %330 to i64
  %334 = getelementptr inbounds [3 x float]* %x, i64 %333, i64 0
  %335 = load float* %334, align 4, !tbaa !14
  %336 = sext i32 %332 to i64
  %337 = getelementptr inbounds [3 x float]* %x, i64 %336, i64 0
  %338 = load float* %337, align 4, !tbaa !14
  %339 = fsub float %335, %338
  %340 = fmul float %339, %339
  %341 = getelementptr inbounds [3 x float]* %x, i64 %333, i64 1
  %342 = load float* %341, align 4, !tbaa !14
  %343 = getelementptr inbounds [3 x float]* %x, i64 %336, i64 1
  %344 = load float* %343, align 4, !tbaa !14
  %345 = fsub float %342, %344
  %346 = fmul float %345, %345
  %347 = fadd float %340, %346
  %348 = getelementptr inbounds [3 x float]* %x, i64 %333, i64 2
  %349 = load float* %348, align 4, !tbaa !14
  %350 = getelementptr inbounds [3 x float]* %x, i64 %336, i64 2
  %351 = load float* %350, align 4, !tbaa !14
  %352 = fsub float %349, %351
  %353 = fmul float %352, %352
  %354 = fadd float %347, %353
  %sqrtf = tail call float @sqrtf(float %354) #6
  %355 = getelementptr inbounds float* %312, i64 %indvars.iv15
  store float %sqrtf, float* %355, align 4, !tbaa !14
  br label %356

; <label>:356                                     ; preds = %323, %328
  %indvars.iv.next16 = add nuw nsw i64 %indvars.iv15, 1
  %357 = icmp slt i64 %indvars.iv.next16, %313
  br i1 %357, label %323, label %._crit_edge10

._crit_edge10:                                    ; preds = %356, %.preheader3, %.preheader2
  %358 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 66
  %359 = bitcast float* %358 to i32*
  %360 = load i32* %359, align 4, !tbaa !51
  %361 = bitcast float* %wang to i32*
  store i32 %360, i32* %361, align 4, !tbaa !14
  %362 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 8
  %363 = load i32* %362, align 4, !tbaa !52
  %364 = tail call i32 @do_per_step(i32 %step, i32 %363) #9
  %365 = icmp ne i32 %364, 0
  %366 = icmp slt i32 %step, 0
  %or.cond = or i1 %366, %365
  br i1 %or.cond, label %367, label %372

; <label>:367                                     ; preds = %._crit_edge10
  %368 = load i32* @constrain_lincs.nc, align 4, !tbaa !24
  %369 = load i32** @constrain_lincs.bla1, align 8, !tbaa !25
  %370 = load i32** @constrain_lincs.bla2, align 8, !tbaa !25
  %371 = load float** @constrain_lincs.bllen, align 8, !tbaa !25
  call void @cconerr(float* %p_max, float* %p_rms, i32* %p_imax, [3 x float]* %xprime, i32 %368, i32* %369, i32* %370, float* %371) #11
  br label %372

; <label>:372                                     ; preds = %._crit_edge10, %367
  %373 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 0
  %374 = load i32* %373, align 4, !tbaa !53
  %.off = add i32 %374, -1
  %switch = icmp ult i32 %.off, 2
  %375 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 65
  br i1 %switch, label %376, label %._crit_edge22

; <label>:376                                     ; preds = %372
  %377 = load i32* %375, align 4, !tbaa !54
  br label %._crit_edge22

._crit_edge22:                                    ; preds = %372, %376
  %storemerge = phi i32 [ %377, %376 ], [ 1, %372 ]
  store i32 %storemerge, i32* %nit, align 4, !tbaa !24
  %378 = getelementptr inbounds [3 x float]* %x, i64 0, i64 0
  %379 = getelementptr inbounds [3 x float]* %xprime, i64 0, i64 0
  %380 = load i32** @constrain_lincs.bla1, align 8, !tbaa !25
  %381 = load i32** @constrain_lincs.bla2, align 8, !tbaa !25
  %382 = load i32** @constrain_lincs.blnr, align 8, !tbaa !25
  %383 = load i32** @constrain_lincs.blbnb, align 8, !tbaa !25
  %384 = load float** @constrain_lincs.bllen, align 8, !tbaa !25
  %385 = load float** @constrain_lincs.blc, align 8, !tbaa !25
  %386 = load float** @constrain_lincs.blcc, align 8, !tbaa !25
  %387 = load float** @constrain_lincs.blm, align 8, !tbaa !25
  %388 = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 5
  %389 = load float** %388, align 8, !tbaa !34
  %390 = load [3 x float]** @constrain_lincs.r, align 8, !tbaa !25
  %391 = getelementptr inbounds [3 x float]* %390, i64 0, i64 0
  %392 = load float** @constrain_lincs.tmp1, align 8, !tbaa !25
  %393 = load float** @constrain_lincs.tmp2, align 8, !tbaa !25
  %394 = load float** @constrain_lincs.tmp3, align 8, !tbaa !25
  %395 = load float** @constrain_lincs.lincslam, align 8, !tbaa !25
  call void @flincs_(float* %378, float* %379, i32* @constrain_lincs.nc, i32* %380, i32* %381, i32* %382, i32* %383, float* %384, float* %385, float* %386, float* %387, i32* %nit, i32* %375, float* %389, float* %391, float* %392, float* %393, float* %394, float* %wang, i32* %warn, float* %395) #9
  %396 = load i32* %300, align 4, !tbaa !50
  %397 = icmp eq i32 %396, 0
  br i1 %397, label %414, label %.preheader

.preheader:                                       ; preds = %._crit_edge22
  %398 = load i32* @constrain_lincs.nc, align 4, !tbaa !24
  %399 = icmp sgt i32 %398, 0
  br i1 %399, label %.lr.ph7, label %._crit_edge

.lr.ph7:                                          ; preds = %.preheader
  %400 = load float** @constrain_lincs.lincslam, align 8, !tbaa !25
  %401 = load float** @constrain_lincs.ddist, align 8, !tbaa !25
  %402 = sext i32 %398 to i64
  br label %403

; <label>:403                                     ; preds = %.lr.ph7, %403
  %indvars.iv13 = phi i64 [ 0, %.lr.ph7 ], [ %indvars.iv.next14, %403 ]
  %dvdl.06 = phi float [ 0.000000e+00, %.lr.ph7 ], [ %410, %403 ]
  %404 = getelementptr inbounds float* %400, i64 %indvars.iv13
  %405 = load float* %404, align 4, !tbaa !14
  %406 = fmul float %299, %405
  %407 = getelementptr inbounds float* %401, i64 %indvars.iv13
  %408 = load float* %407, align 4, !tbaa !14
  %409 = fmul float %406, %408
  %410 = fadd float %dvdl.06, %409
  %indvars.iv.next14 = add nuw nsw i64 %indvars.iv13, 1
  %411 = icmp slt i64 %indvars.iv.next14, %402
  br i1 %411, label %403, label %._crit_edge

._crit_edge:                                      ; preds = %403, %.preheader
  %dvdl.0.lcssa = phi float [ 0.000000e+00, %.preheader ], [ %410, %403 ]
  %412 = load float* %dvdlambda, align 4, !tbaa !14
  %413 = fadd float %dvdl.0.lcssa, %412
  store float %413, float* %dvdlambda, align 4, !tbaa !14
  br label %414

; <label>:414                                     ; preds = %._crit_edge22, %._crit_edge
  %415 = load %struct.__sFILE** @stdlog, align 8, !tbaa !25
  %416 = icmp eq %struct.__sFILE* %415, null
  br i1 %416, label %460, label %417

; <label>:417                                     ; preds = %414
  %418 = load i32* %362, align 4, !tbaa !52
  %419 = call i32 @do_per_step(i32 %step, i32 %418) #9
  %420 = icmp ne i32 %419, 0
  %or.cond5 = or i1 %366, %420
  br i1 %or.cond5, label %421, label %460

; <label>:421                                     ; preds = %417
  %422 = load %struct.__sFILE** @stdlog, align 8, !tbaa !25
  %423 = call i64 @fwrite(i8* getelementptr inbounds ([61 x i8]* @.str26, i64 0, i64 0), i64 60, i64 1, %struct.__sFILE* %422)
  %424 = load %struct.__sFILE** @stdlog, align 8, !tbaa !25
  %425 = load float* %p_max, align 4, !tbaa !14
  %426 = fpext float %425 to double
  %427 = load i32* %p_imax, align 4, !tbaa !24
  %428 = sext i32 %427 to i64
  %429 = load i32** @constrain_lincs.bla1, align 8, !tbaa !25
  %430 = getelementptr inbounds i32* %429, i64 %428
  %431 = load i32* %430, align 4, !tbaa !24
  %432 = add nsw i32 %431, 1
  %433 = load i32** @constrain_lincs.bla2, align 8, !tbaa !25
  %434 = getelementptr inbounds i32* %433, i64 %428
  %435 = load i32* %434, align 4, !tbaa !24
  %436 = add nsw i32 %435, 1
  %437 = load float* %p_rms, align 4, !tbaa !14
  %438 = fpext float %437 to double
  %439 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %424, i8* getelementptr inbounds ([49 x i8]* @.str27, i64 0, i64 0), double %426, i32 %432, i32 %436, double %438) #9
  %440 = load i32* @constrain_lincs.nc, align 4, !tbaa !24
  %441 = load i32** @constrain_lincs.bla1, align 8, !tbaa !25
  %442 = load i32** @constrain_lincs.bla2, align 8, !tbaa !25
  %443 = load float** @constrain_lincs.bllen, align 8, !tbaa !25
  call void @cconerr(float* %p_max, float* %p_rms, i32* %p_imax, [3 x float]* %xprime, i32 %440, i32* %441, i32* %442, float* %443) #11
  %444 = load %struct.__sFILE** @stdlog, align 8, !tbaa !25
  %445 = load float* %p_max, align 4, !tbaa !14
  %446 = fpext float %445 to double
  %447 = load i32* %p_imax, align 4, !tbaa !24
  %448 = sext i32 %447 to i64
  %449 = load i32** @constrain_lincs.bla1, align 8, !tbaa !25
  %450 = getelementptr inbounds i32* %449, i64 %448
  %451 = load i32* %450, align 4, !tbaa !24
  %452 = add nsw i32 %451, 1
  %453 = load i32** @constrain_lincs.bla2, align 8, !tbaa !25
  %454 = getelementptr inbounds i32* %453, i64 %448
  %455 = load i32* %454, align 4, !tbaa !24
  %456 = add nsw i32 %455, 1
  %457 = load float* %p_rms, align 4, !tbaa !14
  %458 = fpext float %457 to double
  %459 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %444, i8* getelementptr inbounds ([50 x i8]* @.str28, i64 0, i64 0), double %446, i32 %452, i32 %456, double %458) #9
  br label %460

; <label>:460                                     ; preds = %414, %421, %417
  %461 = load i32* %warn, align 4, !tbaa !24
  %462 = icmp sgt i32 %461, 0
  br i1 %462, label %463, label %504

; <label>:463                                     ; preds = %460
  %464 = load %struct.__sFILE** @stdlog, align 8
  %465 = icmp eq %struct.__sFILE* %464, null
  br i1 %465, label %._crit_edge20, label %466

._crit_edge20:                                    ; preds = %463
  %.pre = load float* %p_max, align 4, !tbaa !14
  br label %500

; <label>:466                                     ; preds = %463
  %467 = load i32* @constrain_lincs.nc, align 4, !tbaa !24
  %468 = load i32** @constrain_lincs.bla1, align 8, !tbaa !25
  %469 = load i32** @constrain_lincs.bla2, align 8, !tbaa !25
  %470 = load float** @constrain_lincs.bllen, align 8, !tbaa !25
  call void @cconerr(float* %p_max, float* %p_rms, i32* %p_imax, [3 x float]* %xprime, i32 %467, i32* %468, i32* %469, float* %470) #11
  %471 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 14
  %472 = load float* %471, align 4, !tbaa !44
  %473 = sitofp i32 %step to float
  %474 = load float* %296, align 4, !tbaa !45
  %475 = fmul float %473, %474
  %476 = fadd float %472, %475
  %477 = fpext float %476 to double
  %478 = load float* %p_max, align 4, !tbaa !14
  %479 = fpext float %478 to double
  %480 = load i32* %p_imax, align 4, !tbaa !24
  %481 = sext i32 %480 to i64
  %482 = load i32** @constrain_lincs.bla1, align 8, !tbaa !25
  %483 = getelementptr inbounds i32* %482, i64 %481
  %484 = load i32* %483, align 4, !tbaa !24
  %485 = add nsw i32 %484, 1
  %486 = load i32** @constrain_lincs.bla2, align 8, !tbaa !25
  %487 = getelementptr inbounds i32* %486, i64 %481
  %488 = load i32* %487, align 4, !tbaa !24
  %489 = add nsw i32 %488, 1
  %490 = load float* %p_rms, align 4, !tbaa !14
  %491 = fpext float %490 to double
  %492 = call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* %1, i32 0, i64 4096, i8* getelementptr inbounds ([126 x i8]* @.str29, i64 0, i64 0), i32 %step, double %477, double %479, i32 %485, i32 %489, double %491) #9
  %493 = load %struct.__sFILE** @stdlog, align 8, !tbaa !25
  %fputs = call i32 @fputs(i8* %1, %struct.__sFILE* %493)
  %494 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !25
  %fputs1 = call i32 @fputs(i8* %1, %struct.__sFILE* %494)
  %495 = load i32* @constrain_lincs.nc, align 4, !tbaa !24
  %496 = load i32** @constrain_lincs.bla1, align 8, !tbaa !25
  %497 = load i32** @constrain_lincs.bla2, align 8, !tbaa !25
  %498 = load float** @constrain_lincs.bllen, align 8, !tbaa !25
  %499 = load float* %wang, align 4, !tbaa !14
  call void @lincs_warning([3 x float]* %x, [3 x float]* %xprime, i32 %495, i32* %496, i32* %497, float* %498, float %499) #11
  br label %500

; <label>:500                                     ; preds = %._crit_edge20, %466
  %501 = phi float [ %.pre, %._crit_edge20 ], [ %478, %466 ]
  %502 = fcmp olt float %501, 5.000000e-01
  %503 = zext i1 %502 to i32
  br label %504

; <label>:504                                     ; preds = %500, %460
  %bOK.0 = phi i32 [ %503, %500 ], [ 1, %460 ]
  %505 = load i32* @constrain_lincs.nc, align 4, !tbaa !24
  %506 = icmp sgt i32 %505, 0
  br i1 %506, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %504
  %507 = load float** @constrain_lincs.bllen0, align 8, !tbaa !25
  %508 = load float** @constrain_lincs.bllen, align 8, !tbaa !25
  %509 = sext i32 %505 to i64
  br label %510

; <label>:510                                     ; preds = %.lr.ph, %517
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %517 ]
  %511 = getelementptr inbounds float* %507, i64 %indvars.iv
  %512 = load float* %511, align 4, !tbaa !14
  %513 = fpext float %512 to double
  %514 = fcmp olt double %513, 1.200000e-38
  br i1 %514, label %515, label %517

; <label>:515                                     ; preds = %510
  %516 = getelementptr inbounds float* %508, i64 %indvars.iv
  store float 0.000000e+00, float* %516, align 4, !tbaa !14
  br label %517

; <label>:517                                     ; preds = %510, %515
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %518 = icmp slt i64 %indvars.iv.next, %509
  br i1 %518, label %510, label %.loopexit

; <label>:519                                     ; preds = %293
  %520 = getelementptr inbounds [3 x float]* %x, i64 0, i64 0
  %521 = getelementptr inbounds [3 x float]* %xprime, i64 0, i64 0
  %522 = getelementptr inbounds [3 x float]* %min_proj, i64 0, i64 0
  %523 = load i32** @constrain_lincs.bla1, align 8, !tbaa !25
  %524 = load i32** @constrain_lincs.bla2, align 8, !tbaa !25
  %525 = load i32** @constrain_lincs.blnr, align 8, !tbaa !25
  %526 = load i32** @constrain_lincs.blbnb, align 8, !tbaa !25
  %527 = load float** @constrain_lincs.blc, align 8, !tbaa !25
  %528 = load float** @constrain_lincs.blcc, align 8, !tbaa !25
  %529 = load float** @constrain_lincs.blm, align 8, !tbaa !25
  %530 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 65
  %531 = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 5
  %532 = load float** %531, align 8, !tbaa !34
  %533 = load [3 x float]** @constrain_lincs.r, align 8, !tbaa !25
  %534 = getelementptr inbounds [3 x float]* %533, i64 0, i64 0
  %535 = load float** @constrain_lincs.tmp1, align 8, !tbaa !25
  %536 = load float** @constrain_lincs.tmp2, align 8, !tbaa !25
  %537 = load float** @constrain_lincs.tmp3, align 8, !tbaa !25
  tail call void @flincsp_(float* %520, float* %521, float* %522, i32* @constrain_lincs.nc, i32* %523, i32* %524, i32* %525, i32* %526, float* %527, float* %528, float* %529, i32* %530, float* %532, float* %534, float* %535, float* %536, float* %537) #9
  %.pre21 = load i32* @constrain_lincs.nc, align 4, !tbaa !24
  br label %.loopexit

.loopexit:                                        ; preds = %517, %504, %519
  %.pre-phi = phi i32* [ %530, %519 ], [ %375, %504 ], [ %375, %517 ]
  %538 = phi i32 [ %.pre21, %519 ], [ %505, %504 ], [ %505, %517 ]
  %bOK.1 = phi i32 [ 1, %519 ], [ %bOK.0, %504 ], [ %bOK.0, %517 ]
  %539 = sitofp i32 %538 to double
  %540 = getelementptr inbounds %struct.t_nrnb* %nrnb, i64 0, i32 0, i64 113
  %541 = load double* %540, align 8, !tbaa !16
  %542 = fadd double %541, %539
  store double %542, double* %540, align 8, !tbaa !16
  %543 = load i32* %.pre-phi, align 4, !tbaa !54
  %544 = add nsw i32 %543, 2
  %545 = load i32* @constrain_lincs.nrtot, align 4, !tbaa !24
  %546 = mul nsw i32 %544, %545
  %547 = sitofp i32 %546 to double
  %548 = getelementptr inbounds %struct.t_nrnb* %nrnb, i64 0, i32 0, i64 114
  %549 = load double* %548, align 8, !tbaa !16
  %550 = fadd double %549, %547
  store double %550, double* %548, align 8, !tbaa !16
  br label %init_lincs.exit

init_lincs.exit:                                  ; preds = %.loopexit.i, %3, %290, %.loopexit
  %bOK.2 = phi i32 [ %bOK.1, %.loopexit ], [ 1, %290 ], [ 1, %3 ], [ 1, %.loopexit.i ]
  call void @llvm.lifetime.end(i64 4096, i8* %1) #5
  ret i32 %bOK.2
}

; Function Attrs: optsize
declare void @_where(i8*, i32) #1

; Function Attrs: optsize
declare i32 @bshakef(%struct.__sFILE*, i32, float*, i32, i32*, %struct.t_idef*, %struct.t_inputrec*, [3 x float]*, [3 x float]*, [3 x float]*, %struct.t_nrnb*, float, float*, i32) #1

; Function Attrs: optsize
declare void @fsettle_(i32*, i32*, float*, float*, float*, float*, float*, float*, i32*) #1

; Function Attrs: optsize
declare i32 @do_per_step(i32, i32) #1

; Function Attrs: optsize
declare void @flincs_(float*, float*, i32*, i32*, i32*, i32*, i32*, float*, float*, float*, float*, i32*, i32*, float*, float*, float*, float*, float*, float*, i32*, float*) #1

; Function Attrs: optsize
declare void @flincsp_(float*, float*, float*, i32*, i32*, i32*, i32*, i32*, float*, float*, float*, i32*, float*, float*, float*, float*, float*) #1

; Function Attrs: optsize
declare i8* @save_realloc(i8*, i8*, i32, i8*, i32) #1

; Function Attrs: nounwind optsize readonly ssp uwtable
define internal i32 @int_comp(i8* nocapture readonly %a, i8* nocapture readonly %b) #8 {
  %1 = bitcast i8* %a to i32*
  %2 = load i32* %1, align 4, !tbaa !24
  %3 = bitcast i8* %b to i32*
  %4 = load i32* %3, align 4, !tbaa !24
  %5 = sub nsw i32 %2, %4
  ret i32 %5
}

; Function Attrs: nounwind optsize
declare i32 @fflush(%struct.__sFILE* nocapture) #7

; Function Attrs: optsize
declare void @write_sto_conf(i8*, i8*, %struct.t_atoms*, [3 x float]*, [3 x float]*, [3 x float]*) #1

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct.__sFILE* nocapture) #5

declare float @sqrtf(float)

declare float @fabsf(float)

; Function Attrs: nounwind
declare i32 @fputs(i8* nocapture readonly, %struct.__sFILE* nocapture) #5

; Function Attrs: nounwind
declare i32 @fputc(i32, %struct.__sFILE* nocapture) #5

attributes #0 = { alwaysinline nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { alwaysinline nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }
attributes #4 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind optsize readonly ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { nounwind optsize }
attributes #10 = { readnone }
attributes #11 = { optsize }
attributes #12 = { nounwind optsize readnone }

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
!18 = !{!19, !7, i64 108}
!19 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !7, i64 24, !7, i64 28, !7, i64 32, !7, i64 36, !7, i64 40, !7, i64 44, !7, i64 48, !7, i64 52, !15, i64 56, !15, i64 60, !15, i64 64, !7, i64 68, !7, i64 72, !7, i64 76, !7, i64 80, !15, i64 84, !7, i64 88, !7, i64 92, !7, i64 96, !7, i64 100, !7, i64 104, !7, i64 108, !7, i64 112, !7, i64 116, !15, i64 120, !5, i64 124, !5, i64 160, !7, i64 196, !15, i64 200, !15, i64 204, !7, i64 208, !15, i64 212, !15, i64 216, !7, i64 220, !15, i64 224, !15, i64 228, !15, i64 232, !7, i64 236, !15, i64 240, !15, i64 244, !7, i64 248, !15, i64 252, !15, i64 256, !15, i64 260, !15, i64 264, !15, i64 268, !7, i64 272, !7, i64 276, !7, i64 280, !15, i64 284, !15, i64 288, !15, i64 292, !7, i64 296, !15, i64 300, !15, i64 304, !7, i64 308, !7, i64 312, !7, i64 316, !7, i64 320, !7, i64 324, !15, i64 328, !7, i64 332, !15, i64 336, !15, i64 340, !7, i64 344, !15, i64 348, !7, i64 352, !7, i64 356, !7, i64 360, !7, i64 364, !15, i64 368, !15, i64 372, !15, i64 376, !15, i64 380, !20, i64 384, !5, i64 448, !5, i64 520}
!20 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !4, i64 16, !4, i64 24, !4, i64 32, !4, i64 40, !4, i64 48, !4, i64 56}
!21 = !{!19, !7, i64 112}
!22 = !{!23, !7, i64 0}
!23 = !{!"", !7, i64 0, !5, i64 4, !4, i64 1032}
!24 = !{!7, !7, i64 0}
!25 = !{!4, !4, i64 0}
!26 = !{!23, !4, i64 1032}
!27 = !{!28, !7, i64 4}
!28 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8, !4, i64 16, !4, i64 24, !5, i64 32}
!29 = !{!30, !7, i64 4}
!30 = !{!"", !15, i64 0, !7, i64 4, !4, i64 8, !4, i64 16, !4, i64 24, !4, i64 32, !4, i64 40, !4, i64 48, !4, i64 56, !4, i64 64, !4, i64 72, !4, i64 80, !4, i64 88, !4, i64 96, !4, i64 104, !4, i64 112, !4, i64 120, !4, i64 128, !4, i64 136, !4, i64 144, !4, i64 152, !4, i64 160, !4, i64 168}
!31 = !{!32, !7, i64 12}
!32 = !{!"", !5, i64 0, !7, i64 12}
!33 = !{!19, !7, i64 320}
!34 = !{!30, !4, i64 32}
!35 = !{!30, !4, i64 8}
!36 = !{!37, !4, i64 32}
!37 = !{!"", !4, i64 0, !28, i64 8, !38, i64 45800, !5, i64 47080, !40, i64 50248}
!38 = !{!"", !7, i64 0, !4, i64 8, !4, i64 16, !4, i64 24, !4, i64 32, !7, i64 40, !4, i64 48, !7, i64 56, !4, i64 64, !39, i64 72, !5, i64 1128, !4, i64 1272}
!39 = !{!"", !5, i64 0, !7, i64 1024, !4, i64 1032, !7, i64 1040, !4, i64 1048}
!40 = !{!"", !7, i64 0, !4, i64 8}
!41 = !{!42, !15, i64 0}
!42 = !{!"", !15, i64 0, !15, i64 4}
!43 = !{!42, !15, i64 4}
!44 = !{!19, !15, i64 56}
!45 = !{!19, !15, i64 60}
!46 = !{!47, !7, i64 4}
!47 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20}
!48 = !{!47, !7, i64 20}
!49 = !{!28, !4, i64 24}
!50 = !{!19, !7, i64 248}
!51 = !{!19, !15, i64 328}
!52 = !{!19, !7, i64 32}
!53 = !{!19, !7, i64 0}
!54 = !{!19, !7, i64 324}
