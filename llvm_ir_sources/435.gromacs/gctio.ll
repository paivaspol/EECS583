; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/gctio.c'
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
%struct.t_commrec = type { i32, i32, i32, i32, i32, i32 }
%struct.t_coupl_rec = type { [14 x float], [14 x float], [14 x float], [14 x i32], i32, i32, i32, i32, %struct.t_coupl_LJ*, %struct.t_coupl_BU*, %struct.t_coupl_Q*, %struct.t_coupl_iparams*, i32, i32, i32 }
%struct.t_coupl_LJ = type { i32, i32, i32, i32, float, float, float, float }
%struct.t_coupl_BU = type { i32, i32, i32, i32, float, float, float, float, float, float }
%struct.t_coupl_Q = type { i32, i32, i32, float, float }
%struct.t_coupl_iparams = type { i32, i32, %union.t_iparams, %union.t_iparams }
%struct.t_idef = type { i32, i32, i32, i32*, %union.t_iparams*, [44 x %struct.t_ilist] }
%struct.t_ilist = type { i32, [256 x i32], i32* }
%struct.t_inpfile = type { i32, i32, i8*, i8* }

@.str = private unnamed_addr constant [5 x i8] c"Pres\00", align 1
@.str1 = private unnamed_addr constant [5 x i8] c"Epot\00", align 1
@.str2 = private unnamed_addr constant [4 x i8] c"Vir\00", align 1
@.str3 = private unnamed_addr constant [5 x i8] c"Dist\00", align 1
@.str4 = private unnamed_addr constant [3 x i8] c"Mu\00", align 1
@.str5 = private unnamed_addr constant [6 x i8] c"Force\00", align 1
@.str6 = private unnamed_addr constant [3 x i8] c"Fx\00", align 1
@.str7 = private unnamed_addr constant [3 x i8] c"Fy\00", align 1
@.str8 = private unnamed_addr constant [3 x i8] c"Fz\00", align 1
@.str9 = private unnamed_addr constant [3 x i8] c"Px\00", align 1
@.str10 = private unnamed_addr constant [3 x i8] c"Py\00", align 1
@.str11 = private unnamed_addr constant [3 x i8] c"Pz\00", align 1
@.str12 = private unnamed_addr constant [15 x i8] c"Polarizability\00", align 1
@.str13 = private unnamed_addr constant [7 x i8] c"Dipole\00", align 1
@.str14 = private unnamed_addr constant [7 x i8] c"Memory\00", align 1
@.str15 = private unnamed_addr constant [10 x i8] c"UseEinter\00", align 1
@.str16 = private unnamed_addr constant [10 x i8] c"UseVirial\00", align 1
@eoNames = global [17 x i8*] [i8* getelementptr inbounds ([5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str3, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str4, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str5, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str6, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str7, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str8, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str9, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str10, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str11, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8]* @.str12, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str13, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str14, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @.str15, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @.str16, i32 0, i32 0)], align 16
@.str17 = private unnamed_addr constant [5 x i8] c"*tcr\00", align 1
@.str18 = private unnamed_addr constant [65 x i8] c"../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/gctio.c\00", align 1
@.str19 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str20 = private unnamed_addr constant [49 x i8] c"%-15s = %12g  ; Reference pressure for coupling\0A\00", align 1
@.str21 = private unnamed_addr constant [44 x i8] c"%-15s = %12g  ; Reference potential energy\0A\00", align 1
@.str22 = private unnamed_addr constant [36 x i8] c"%-15s = %12g  ; Reference distance\0A\00", align 1
@.str23 = private unnamed_addr constant [34 x i8] c"%-15s = %12g  ; Reference dipole\0A\00", align 1
@.str24 = private unnamed_addr constant [33 x i8] c"%-15s = %12g  ; Reference force\0A\00", align 1
@.str25 = private unnamed_addr constant [42 x i8] c"%-15s = %12g  ; Reference force in X dir\0A\00", align 1
@.str26 = private unnamed_addr constant [42 x i8] c"%-15s = %12g  ; Reference force in Y dir\0A\00", align 1
@.str27 = private unnamed_addr constant [42 x i8] c"%-15s = %12g  ; Reference force in Z dir\0A\00", align 1
@.str28 = private unnamed_addr constant [41 x i8] c"%-15s = %12g  ; Reference pres in X dir\0A\00", align 1
@.str29 = private unnamed_addr constant [41 x i8] c"%-15s = %12g  ; Reference pres in Y dir\0A\00", align 1
@.str30 = private unnamed_addr constant [41 x i8] c"%-15s = %12g  ; Reference pres in Z dir\0A\00", align 1
@.str31 = private unnamed_addr constant [61 x i8] c"%-15s = %12g  ; Polarizability used for the Epot correction\0A\00", align 1
@.str32 = private unnamed_addr constant [66 x i8] c"%-15s = %12g  ; Gas phase dipole moment used for Epot correction\0A\00", align 1
@.str33 = private unnamed_addr constant [64 x i8] c"%-15s = %12d  ; Memory for coupling. Makes it converge faster.\0A\00", align 1
@.str34 = private unnamed_addr constant [56 x i8] c"%-15s = %12s  ; Use intermolecular Epot only (LJ+Coul)\0A\00", align 1
@yesno_names = external global [3 x i8*]
@.str35 = private unnamed_addr constant [41 x i8] c"%-15s = %12s  ; Use virial iso pressure\0A\00", align 1
@.str36 = private unnamed_addr constant [27 x i8] c"\0A; Q-Coupling   %6s  %12s\0A\00", align 1
@.str37 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str38 = private unnamed_addr constant [3 x i8] c"xi\00", align 1
@.str39 = private unnamed_addr constant [23 x i8] c"%-8s = %8s  %6d  %12g\0A\00", align 1
@.str40 = private unnamed_addr constant [2 x i8] c"Q\00", align 1
@.str41 = private unnamed_addr constant [34 x i8] c"\0A; %8s %8s  %6s  %6s  %12s  %12s\0A\00", align 1
@.str42 = private unnamed_addr constant [7 x i8] c"Couple\00", align 1
@.str43 = private unnamed_addr constant [3 x i8] c"To\00", align 1
@.str44 = private unnamed_addr constant [7 x i8] c"i-type\00", align 1
@.str45 = private unnamed_addr constant [7 x i8] c"j-type\00", align 1
@.str46 = private unnamed_addr constant [6 x i8] c"xi-c6\00", align 1
@.str47 = private unnamed_addr constant [7 x i8] c"xi-c12\00", align 1
@.str48 = private unnamed_addr constant [52 x i8] c"; j-type == -1 means mixing rules will be applied!\0A\00", align 1
@.str49 = private unnamed_addr constant [34 x i8] c"%-8s = %8s  %6d  %6d  %12g  %12g\0A\00", align 1
@.str50 = private unnamed_addr constant [3 x i8] c"LJ\00", align 1
@.str51 = private unnamed_addr constant [40 x i8] c"\0A; %8s %8s  %6s  %6s  %12s  %12s  %12s\0A\00", align 1
@.str52 = private unnamed_addr constant [5 x i8] c"xi-A\00", align 1
@.str53 = private unnamed_addr constant [5 x i8] c"xi-B\00", align 1
@.str54 = private unnamed_addr constant [5 x i8] c"xi-C\00", align 1
@.str55 = private unnamed_addr constant [40 x i8] c"%-8s = %8s  %6d  %6d  %12g  %12g  %12g\0A\00", align 1
@.str56 = private unnamed_addr constant [3 x i8] c"BU\00", align 1
@.str57 = private unnamed_addr constant [18 x i8] c"\0A; More Coupling\0A\00", align 1
@.str58 = private unnamed_addr constant [31 x i8] c"%-15s = %-8s  %4d  %12g  %12g\0A\00", align 1
@.str59 = private unnamed_addr constant [6 x i8] c"Bonds\00", align 1
@__stderrp = external global %struct.__sFILE*
@.str60 = private unnamed_addr constant [30 x i8] c"ftype %s not supported (yet)\0A\00", align 1
@interaction_function = external global [44 x %struct.t_interaction_function]
@.str61 = private unnamed_addr constant [29 x i8] c"Wrong line in %s: '%s = %s'\0A\00", align 1
@.str62 = private unnamed_addr constant [4 x i8] c"inp\00", align 1
@.str63 = private unnamed_addr constant [10 x i8] c"tcr->tcLJ\00", align 1
@.str64 = private unnamed_addr constant [10 x i8] c"tcr->tcBU\00", align 1
@.str65 = private unnamed_addr constant [9 x i8] c"tcr->tcQ\00", align 1
@.str66 = private unnamed_addr constant [13 x i8] c"%s%d%d%lf%lf\00", align 1
@.str67 = private unnamed_addr constant [39 x i8] c"Invalid observable for LJ coupling: %s\00", align 1
@.str68 = private unnamed_addr constant [8 x i8] c"(*tcLJ)\00", align 1
@.str69 = private unnamed_addr constant [54 x i8] c"\0A*** WARNING: overwriting entry for LJ coupling '%s'\0A\00", align 1
@.str70 = private unnamed_addr constant [32 x i8] c"Coupling to observable %d (%s)\0A\00", align 1
@.str71 = private unnamed_addr constant [16 x i8] c"%s%d%d%lf%lf%lf\00", align 1
@.str72 = private unnamed_addr constant [39 x i8] c"Invalid observable for BU coupling: %s\00", align 1
@.str73 = private unnamed_addr constant [8 x i8] c"(*tcBU)\00", align 1
@.str74 = private unnamed_addr constant [54 x i8] c"\0A*** WARNING: overwriting entry for BU coupling '%s'\0A\00", align 1
@.str75 = private unnamed_addr constant [8 x i8] c"%s%d%lf\00", align 1
@.str76 = private unnamed_addr constant [7 x i8] c"(*tcQ)\00", align 1
@.str77 = private unnamed_addr constant [53 x i8] c"\0A*** WARNING: overwriting entry for Q coupling '%s'\0A\00", align 1
@.str78 = private unnamed_addr constant [38 x i8] c"Invalid observable for Q coupling: %s\00", align 1
@.str79 = private unnamed_addr constant [5 x i8] c"%s%d\00", align 1
@.str80 = private unnamed_addr constant [39 x i8] c"Invalid observable for IP coupling: %s\00", align 1
@.str81 = private unnamed_addr constant [44 x i8] c"*** WARNING: overwriting entry for type %d\0A\00", align 1
@.str82 = private unnamed_addr constant [7 x i8] c"(*tIP)\00", align 1
@.str83 = private unnamed_addr constant [11 x i8] c"%s%d%lf%lf\00", align 1

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
define void @comm_tcr(%struct.__sFILE* nocapture readnone %log, %struct.t_commrec* nocapture readonly %cr, %struct.t_coupl_rec** nocapture %tcr) #4 {
  %shit = alloca %struct.t_coupl_rec, align 8
  %1 = bitcast %struct.t_coupl_rec* %shit to i8*
  call void @llvm.lifetime.start(i64 288, i8* %1) #5
  %2 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 0
  %3 = load i32* %2, align 4, !tbaa !18
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %15

; <label>:5                                       ; preds = %0
  %6 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 4
  %7 = load i32* %6, align 4, !tbaa !20
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %15

; <label>:9                                       ; preds = %5
  %10 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 2
  %11 = load i32* %10, align 4, !tbaa !21
  %12 = load %struct.t_coupl_rec** %tcr, align 8, !tbaa !22
  tail call fastcc void @send_tcr(i32 %11, %struct.t_coupl_rec* %12) #11
  %13 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 3
  %14 = load i32* %13, align 4, !tbaa !23
  call fastcc void @rec_tcr(i32 %14, %struct.t_coupl_rec* %shit) #11
  br label %24

; <label>:15                                      ; preds = %5, %0
  %16 = tail call i8* @save_calloc(i8* getelementptr inbounds ([5 x i8]* @.str17, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str18, i64 0, i64 0), i32 108, i32 1, i32 288) #9
  %17 = bitcast i8* %16 to %struct.t_coupl_rec*
  %18 = bitcast %struct.t_coupl_rec** %tcr to i8**
  store i8* %16, i8** %18, align 8, !tbaa !22
  %19 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 3
  %20 = load i32* %19, align 4, !tbaa !23
  tail call fastcc void @rec_tcr(i32 %20, %struct.t_coupl_rec* %17) #11
  %21 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 2
  %22 = load i32* %21, align 4, !tbaa !21
  %23 = load %struct.t_coupl_rec** %tcr, align 8, !tbaa !22
  tail call fastcc void @send_tcr(i32 %22, %struct.t_coupl_rec* %23) #11
  br label %24

; <label>:24                                      ; preds = %15, %9
  call void @llvm.lifetime.end(i64 288, i8* %1) #5
  ret void
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #5

; Function Attrs: nounwind optsize ssp uwtable
define internal fastcc void @send_tcr(i32 %dest, %struct.t_coupl_rec* %tcr) #4 {
  %1 = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 2, i64 0
  %2 = bitcast float* %1 to i8*
  tail call void @_blocktx(i32 %dest, i32 1, i32 56, i8* %2) #9
  %3 = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 4
  %4 = bitcast i32* %3 to i8*
  tail call void @_blocktx(i32 %dest, i32 1, i32 4, i8* %4) #9
  %5 = load i32* %3, align 4, !tbaa !24
  %6 = shl i32 %5, 5
  %7 = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 8
  %8 = bitcast %struct.t_coupl_LJ** %7 to i8**
  %9 = load i8** %8, align 8, !tbaa !26
  tail call void @_blocktx(i32 %dest, i32 1, i32 %6, i8* %9) #9
  %10 = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 5
  %11 = bitcast i32* %10 to i8*
  tail call void @_blocktx(i32 %dest, i32 1, i32 4, i8* %11) #9
  %12 = load i32* %10, align 4, !tbaa !27
  %13 = mul i32 %12, 40
  %14 = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 9
  %15 = bitcast %struct.t_coupl_BU** %14 to i8**
  %16 = load i8** %15, align 8, !tbaa !28
  tail call void @_blocktx(i32 %dest, i32 1, i32 %13, i8* %16) #9
  %17 = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 6
  %18 = bitcast i32* %17 to i8*
  tail call void @_blocktx(i32 %dest, i32 1, i32 4, i8* %18) #9
  %19 = load i32* %17, align 4, !tbaa !29
  %20 = mul i32 %19, 20
  %21 = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 10
  %22 = bitcast %struct.t_coupl_Q** %21 to i8**
  %23 = load i8** %22, align 8, !tbaa !30
  tail call void @_blocktx(i32 %dest, i32 1, i32 %20, i8* %23) #9
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define internal fastcc void @rec_tcr(i32 %src, %struct.t_coupl_rec* %tcr) #4 {
  %1 = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 2, i64 0
  %2 = bitcast float* %1 to i8*
  tail call void @_blockrx(i32 %src, i32 1, i32 56, i8* %2) #9
  %3 = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 4
  %4 = bitcast i32* %3 to i8*
  tail call void @_blockrx(i32 %src, i32 1, i32 4, i8* %4) #9
  %5 = load i32* %3, align 4, !tbaa !24
  %6 = tail call i8* @save_calloc(i8* getelementptr inbounds ([10 x i8]* @.str63, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str18, i64 0, i64 0), i32 87, i32 %5, i32 32) #9
  %7 = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 8
  %8 = bitcast %struct.t_coupl_LJ** %7 to i8**
  store i8* %6, i8** %8, align 8, !tbaa !26
  %9 = load i32* %3, align 4, !tbaa !24
  %10 = shl i32 %9, 5
  tail call void @_blockrx(i32 %src, i32 1, i32 %10, i8* %6) #9
  %11 = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 5
  %12 = bitcast i32* %11 to i8*
  tail call void @_blockrx(i32 %src, i32 1, i32 4, i8* %12) #9
  %13 = load i32* %11, align 4, !tbaa !27
  %14 = tail call i8* @save_calloc(i8* getelementptr inbounds ([10 x i8]* @.str64, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str18, i64 0, i64 0), i32 91, i32 %13, i32 40) #9
  %15 = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 9
  %16 = bitcast %struct.t_coupl_BU** %15 to i8**
  store i8* %14, i8** %16, align 8, !tbaa !28
  %17 = load i32* %11, align 4, !tbaa !27
  %18 = mul i32 %17, 40
  tail call void @_blockrx(i32 %src, i32 1, i32 %18, i8* %14) #9
  %19 = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 6
  %20 = bitcast i32* %19 to i8*
  tail call void @_blockrx(i32 %src, i32 1, i32 4, i8* %20) #9
  %21 = load i32* %19, align 4, !tbaa !29
  %22 = tail call i8* @save_calloc(i8* getelementptr inbounds ([9 x i8]* @.str65, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str18, i64 0, i64 0), i32 95, i32 %21, i32 20) #9
  %23 = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 10
  %24 = bitcast %struct.t_coupl_Q** %23 to i8**
  store i8* %22, i8** %24, align 8, !tbaa !30
  %25 = load i32* %19, align 4, !tbaa !29
  %26 = mul i32 %25, 20
  tail call void @_blockrx(i32 %src, i32 1, i32 %26, i8* %22) #9
  ret void
}

; Function Attrs: optsize
declare i8* @save_calloc(i8*, i8*, i32, i32, i32) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #5

; Function Attrs: nounwind optsize ssp uwtable
define void @copy_ff(%struct.t_coupl_rec* nocapture readonly %tcr, %struct.t_forcerec* nocapture readonly %fr, %struct.t_mdatoms* nocapture readonly %md, %struct.t_idef* nocapture readonly %idef) #4 {
  %1 = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 4
  %2 = load i32* %1, align 4, !tbaa !24
  %3 = icmp sgt i32 %2, 0
  br i1 %3, label %.lr.ph14, label %.preheader3

.lr.ph14:                                         ; preds = %0
  %4 = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 8
  %5 = load %struct.t_coupl_LJ** %4, align 8, !tbaa !26
  %6 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 63
  %7 = load i32* %6, align 4, !tbaa !31
  %8 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 65
  %9 = load float** %8, align 8, !tbaa !33
  %10 = sext i32 %2 to i64
  br label %21

.preheader3:                                      ; preds = %21, %0
  %11 = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 5
  %12 = load i32* %11, align 4, !tbaa !27
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %.lr.ph11, label %.preheader2

.lr.ph11:                                         ; preds = %.preheader3
  %14 = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 9
  %15 = load %struct.t_coupl_BU** %14, align 8, !tbaa !28
  %16 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 63
  %17 = load i32* %16, align 4, !tbaa !31
  %18 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 65
  %19 = load float** %18, align 8, !tbaa !33
  %20 = sext i32 %12 to i64
  br label %55

; <label>:21                                      ; preds = %.lr.ph14, %21
  %indvars.iv22 = phi i64 [ 0, %.lr.ph14 ], [ %indvars.iv.next23, %21 ]
  %22 = getelementptr inbounds %struct.t_coupl_LJ* %5, i64 %indvars.iv22, i32 0
  %23 = load i32* %22, align 4, !tbaa !34
  %24 = getelementptr inbounds %struct.t_coupl_LJ* %5, i64 %indvars.iv22, i32 1
  %25 = load i32* %24, align 4, !tbaa !36
  %26 = icmp eq i32 %25, -1
  %. = select i1 %26, i32 %23, i32 %25
  %27 = mul nsw i32 %7, %23
  %28 = add nsw i32 %27, %.
  %29 = shl nsw i32 %28, 1
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds float* %9, i64 %30
  %32 = bitcast float* %31 to i32*
  %33 = load i32* %32, align 4, !tbaa !14
  %34 = getelementptr inbounds %struct.t_coupl_LJ* %5, i64 %indvars.iv22, i32 4
  %35 = bitcast float* %34 to i32*
  store i32 %33, i32* %35, align 4, !tbaa !37
  %36 = or i32 %29, 1
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds float* %9, i64 %37
  %39 = bitcast float* %38 to i32*
  %40 = load i32* %39, align 4, !tbaa !14
  %41 = getelementptr inbounds %struct.t_coupl_LJ* %5, i64 %indvars.iv22, i32 5
  %42 = bitcast float* %41 to i32*
  store i32 %40, i32* %42, align 4, !tbaa !38
  %indvars.iv.next23 = add nuw nsw i64 %indvars.iv22, 1
  %43 = icmp slt i64 %indvars.iv.next23, %10
  br i1 %43, label %21, label %.preheader3

.preheader2:                                      ; preds = %55, %.preheader3
  %44 = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 6
  %45 = load i32* %44, align 4, !tbaa !29
  %46 = icmp sgt i32 %45, 0
  br i1 %46, label %.lr.ph9, label %.preheader

.lr.ph9:                                          ; preds = %.preheader2
  %47 = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 10
  %48 = load %struct.t_coupl_Q** %47, align 8, !tbaa !30
  %49 = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 1
  %50 = load i32* %49, align 4, !tbaa !39
  %51 = icmp sgt i32 %50, 0
  %52 = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 11
  %53 = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 6
  %54 = sext i32 %45 to i64
  br label %90

; <label>:55                                      ; preds = %.lr.ph11, %55
  %indvars.iv20 = phi i64 [ 0, %.lr.ph11 ], [ %indvars.iv.next21, %55 ]
  %56 = getelementptr inbounds %struct.t_coupl_BU* %15, i64 %indvars.iv20, i32 0
  %57 = load i32* %56, align 4, !tbaa !41
  %58 = getelementptr inbounds %struct.t_coupl_BU* %15, i64 %indvars.iv20, i32 1
  %59 = load i32* %58, align 4, !tbaa !43
  %60 = icmp eq i32 %59, -1
  %.1 = select i1 %60, i32 %57, i32 %59
  %61 = mul nsw i32 %17, %57
  %62 = add nsw i32 %61, %.1
  %63 = mul nsw i32 %62, 3
  %64 = add nsw i32 %63, 1
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds float* %19, i64 %65
  %67 = bitcast float* %66 to i32*
  %68 = load i32* %67, align 4, !tbaa !14
  %69 = getelementptr inbounds %struct.t_coupl_BU* %15, i64 %indvars.iv20, i32 4
  %70 = bitcast float* %69 to i32*
  store i32 %68, i32* %70, align 4, !tbaa !44
  %71 = add nsw i32 %63, 2
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds float* %19, i64 %72
  %74 = bitcast float* %73 to i32*
  %75 = load i32* %74, align 4, !tbaa !14
  %76 = getelementptr inbounds %struct.t_coupl_BU* %15, i64 %indvars.iv20, i32 5
  %77 = bitcast float* %76 to i32*
  store i32 %75, i32* %77, align 4, !tbaa !45
  %78 = sext i32 %63 to i64
  %79 = getelementptr inbounds float* %19, i64 %78
  %80 = bitcast float* %79 to i32*
  %81 = load i32* %80, align 4, !tbaa !14
  %82 = getelementptr inbounds %struct.t_coupl_BU* %15, i64 %indvars.iv20, i32 6
  %83 = bitcast float* %82 to i32*
  store i32 %81, i32* %83, align 4, !tbaa !46
  %indvars.iv.next21 = add nuw nsw i64 %indvars.iv20, 1
  %84 = icmp slt i64 %indvars.iv.next21, %20
  br i1 %84, label %55, label %.preheader2

.preheader:                                       ; preds = %.loopexit, %.preheader2
  %85 = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 7
  %86 = load i32* %85, align 4, !tbaa !47
  %87 = icmp sgt i32 %86, 0
  br i1 %87, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %88 = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 11
  %89 = getelementptr inbounds %struct.t_idef* %idef, i64 0, i32 4
  br label %109

; <label>:90                                      ; preds = %.lr.ph9, %.loopexit
  %indvars.iv18 = phi i64 [ 0, %.lr.ph9 ], [ %indvars.iv.next19, %.loopexit ]
  br i1 %51, label %.lr.ph7, label %.loopexit

.lr.ph7:                                          ; preds = %90
  %91 = load i32** %52, align 8, !tbaa !48
  %92 = getelementptr inbounds %struct.t_coupl_Q* %48, i64 %indvars.iv18, i32 0
  %93 = load i32* %92, align 4, !tbaa !49
  br label %97

; <label>:94                                      ; preds = %97
  %95 = sext i32 %50 to i64
  %96 = icmp slt i64 %indvars.iv.next17, %95
  br i1 %96, label %97, label %.loopexit

; <label>:97                                      ; preds = %.lr.ph7, %94
  %indvars.iv16 = phi i64 [ 0, %.lr.ph7 ], [ %indvars.iv.next17, %94 ]
  %98 = getelementptr inbounds i32* %91, i64 %indvars.iv16
  %99 = load i32* %98, align 4, !tbaa !51
  %100 = icmp eq i32 %99, %93
  %indvars.iv.next17 = add nuw nsw i64 %indvars.iv16, 1
  br i1 %100, label %101, label %94

; <label>:101                                     ; preds = %97
  %102 = load float** %53, align 8, !tbaa !52
  %103 = getelementptr inbounds float* %102, i64 %indvars.iv16
  %104 = bitcast float* %103 to i32*
  %105 = load i32* %104, align 4, !tbaa !14
  %106 = getelementptr inbounds %struct.t_coupl_Q* %48, i64 %indvars.iv18, i32 3
  %107 = bitcast float* %106 to i32*
  store i32 %105, i32* %107, align 4, !tbaa !53
  br label %.loopexit

.loopexit:                                        ; preds = %94, %90, %101
  %indvars.iv.next19 = add nuw nsw i64 %indvars.iv18, 1
  %108 = icmp slt i64 %indvars.iv.next19, %54
  br i1 %108, label %90, label %.preheader

; <label>:109                                     ; preds = %.lr.ph, %109
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %109 ]
  %110 = load %struct.t_coupl_iparams** %88, align 8, !tbaa !54
  %111 = getelementptr inbounds %struct.t_coupl_iparams* %110, i64 %indvars.iv, i32 0
  %112 = load i32* %111, align 4, !tbaa !55
  %113 = getelementptr inbounds %struct.t_coupl_iparams* %110, i64 %indvars.iv, i32 3
  %114 = sext i32 %112 to i64
  %115 = load %union.t_iparams** %89, align 8, !tbaa !57
  %116 = getelementptr inbounds %union.t_iparams* %115, i64 %114
  %117 = bitcast %union.t_iparams* %113 to i8*
  %118 = bitcast %union.t_iparams* %116 to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %117, i8* %118, i64 24, i32 4, i1 false), !tbaa.struct !59
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %119 = load i32* %85, align 4, !tbaa !47
  %120 = sext i32 %119 to i64
  %121 = icmp slt i64 %indvars.iv.next, %120
  br i1 %121, label %109, label %._crit_edge

._crit_edge:                                      ; preds = %109, %.preheader
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #5

; Function Attrs: nounwind optsize ssp uwtable
define void @write_gct(i8* %fn, %struct.t_coupl_rec* %tcr, %struct.t_idef* nocapture readonly %idef) #4 {
  %1 = tail call %struct.__sFILE* @ffopen(i8* %fn, i8* getelementptr inbounds ([2 x i8]* @.str19, i64 0, i64 0)) #9
  tail call void @nice_header(%struct.__sFILE* %1, i8* %fn) #9
  %2 = load i8** getelementptr inbounds ([17 x i8*]* @eoNames, i64 0, i64 0), align 16, !tbaa !22
  %3 = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 2, i64 0
  %4 = load float* %3, align 4, !tbaa !14
  %5 = fpext float %4 to double
  %6 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %1, i8* getelementptr inbounds ([49 x i8]* @.str20, i64 0, i64 0), i8* %2, double %5) #9
  %7 = load i8** getelementptr inbounds ([17 x i8*]* @eoNames, i64 0, i64 1), align 8, !tbaa !22
  %8 = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 2, i64 1
  %9 = load float* %8, align 4, !tbaa !14
  %10 = fpext float %9 to double
  %11 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %1, i8* getelementptr inbounds ([44 x i8]* @.str21, i64 0, i64 0), i8* %7, double %10) #9
  %12 = load i8** getelementptr inbounds ([17 x i8*]* @eoNames, i64 0, i64 3), align 8, !tbaa !22
  %13 = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 2, i64 3
  %14 = load float* %13, align 4, !tbaa !14
  %15 = fpext float %14 to double
  %16 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %1, i8* getelementptr inbounds ([36 x i8]* @.str22, i64 0, i64 0), i8* %12, double %15) #9
  %17 = load i8** getelementptr inbounds ([17 x i8*]* @eoNames, i64 0, i64 4), align 16, !tbaa !22
  %18 = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 2, i64 4
  %19 = load float* %18, align 4, !tbaa !14
  %20 = fpext float %19 to double
  %21 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %1, i8* getelementptr inbounds ([34 x i8]* @.str23, i64 0, i64 0), i8* %17, double %20) #9
  %22 = load i8** getelementptr inbounds ([17 x i8*]* @eoNames, i64 0, i64 5), align 8, !tbaa !22
  %23 = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 2, i64 5
  %24 = load float* %23, align 4, !tbaa !14
  %25 = fpext float %24 to double
  %26 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %1, i8* getelementptr inbounds ([33 x i8]* @.str24, i64 0, i64 0), i8* %22, double %25) #9
  %27 = load i8** getelementptr inbounds ([17 x i8*]* @eoNames, i64 0, i64 6), align 16, !tbaa !22
  %28 = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 2, i64 6
  %29 = load float* %28, align 4, !tbaa !14
  %30 = fpext float %29 to double
  %31 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %1, i8* getelementptr inbounds ([42 x i8]* @.str25, i64 0, i64 0), i8* %27, double %30) #9
  %32 = load i8** getelementptr inbounds ([17 x i8*]* @eoNames, i64 0, i64 7), align 8, !tbaa !22
  %33 = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 2, i64 7
  %34 = load float* %33, align 4, !tbaa !14
  %35 = fpext float %34 to double
  %36 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %1, i8* getelementptr inbounds ([42 x i8]* @.str26, i64 0, i64 0), i8* %32, double %35) #9
  %37 = load i8** getelementptr inbounds ([17 x i8*]* @eoNames, i64 0, i64 8), align 16, !tbaa !22
  %38 = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 2, i64 8
  %39 = load float* %38, align 4, !tbaa !14
  %40 = fpext float %39 to double
  %41 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %1, i8* getelementptr inbounds ([42 x i8]* @.str27, i64 0, i64 0), i8* %37, double %40) #9
  %42 = load i8** getelementptr inbounds ([17 x i8*]* @eoNames, i64 0, i64 9), align 8, !tbaa !22
  %43 = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 2, i64 9
  %44 = load float* %43, align 4, !tbaa !14
  %45 = fpext float %44 to double
  %46 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %1, i8* getelementptr inbounds ([41 x i8]* @.str28, i64 0, i64 0), i8* %42, double %45) #9
  %47 = load i8** getelementptr inbounds ([17 x i8*]* @eoNames, i64 0, i64 10), align 16, !tbaa !22
  %48 = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 2, i64 10
  %49 = load float* %48, align 4, !tbaa !14
  %50 = fpext float %49 to double
  %51 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %1, i8* getelementptr inbounds ([41 x i8]* @.str29, i64 0, i64 0), i8* %47, double %50) #9
  %52 = load i8** getelementptr inbounds ([17 x i8*]* @eoNames, i64 0, i64 11), align 8, !tbaa !22
  %53 = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 2, i64 11
  %54 = load float* %53, align 4, !tbaa !14
  %55 = fpext float %54 to double
  %56 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %1, i8* getelementptr inbounds ([41 x i8]* @.str30, i64 0, i64 0), i8* %52, double %55) #9
  %57 = load i8** getelementptr inbounds ([17 x i8*]* @eoNames, i64 0, i64 12), align 16, !tbaa !22
  %58 = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 2, i64 12
  %59 = load float* %58, align 4, !tbaa !14
  %60 = fpext float %59 to double
  %61 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %1, i8* getelementptr inbounds ([61 x i8]* @.str31, i64 0, i64 0), i8* %57, double %60) #9
  %62 = load i8** getelementptr inbounds ([17 x i8*]* @eoNames, i64 0, i64 13), align 8, !tbaa !22
  %63 = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 2, i64 13
  %64 = load float* %63, align 4, !tbaa !14
  %65 = fpext float %64 to double
  %66 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %1, i8* getelementptr inbounds ([66 x i8]* @.str32, i64 0, i64 0), i8* %62, double %65) #9
  %67 = load i8** getelementptr inbounds ([17 x i8*]* @eoNames, i64 0, i64 14), align 16, !tbaa !22
  %68 = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 12
  %69 = load i32* %68, align 4, !tbaa !60
  %70 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %1, i8* getelementptr inbounds ([64 x i8]* @.str33, i64 0, i64 0), i8* %67, i32 %69) #9
  %71 = load i8** getelementptr inbounds ([17 x i8*]* @eoNames, i64 0, i64 15), align 8, !tbaa !22
  %72 = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 13
  %73 = load i32* %72, align 4, !tbaa !61
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds [3 x i8*]* @yesno_names, i64 0, i64 %74
  %76 = load i8** %75, align 8, !tbaa !22
  %77 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %1, i8* getelementptr inbounds ([56 x i8]* @.str34, i64 0, i64 0), i8* %71, i8* %76) #9
  %78 = load i8** getelementptr inbounds ([17 x i8*]* @eoNames, i64 0, i64 16), align 16, !tbaa !22
  %79 = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 14
  %80 = load i32* %79, align 4, !tbaa !62
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds [3 x i8*]* @yesno_names, i64 0, i64 %81
  %83 = load i8** %82, align 8, !tbaa !22
  %84 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %1, i8* getelementptr inbounds ([41 x i8]* @.str35, i64 0, i64 0), i8* %78, i8* %83) #9
  %85 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %1, i8* getelementptr inbounds ([27 x i8]* @.str36, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str37, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8]* @.str38, i64 0, i64 0)) #9
  %86 = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 6
  %87 = load i32* %86, align 4, !tbaa !29
  %88 = icmp sgt i32 %87, 0
  br i1 %88, label %.lr.ph12, label %._crit_edge13

.lr.ph12:                                         ; preds = %0
  %89 = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 10
  br label %90

; <label>:90                                      ; preds = %.lr.ph12, %90
  %indvars.iv18 = phi i64 [ 0, %.lr.ph12 ], [ %indvars.iv.next19, %90 ]
  %91 = load %struct.t_coupl_Q** %89, align 8, !tbaa !30
  %92 = getelementptr inbounds %struct.t_coupl_Q* %91, i64 %indvars.iv18, i32 1
  %93 = load i32* %92, align 4, !tbaa !63
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds [17 x i8*]* @eoNames, i64 0, i64 %94
  %96 = load i8** %95, align 8, !tbaa !22
  %97 = getelementptr inbounds %struct.t_coupl_Q* %91, i64 %indvars.iv18, i32 0
  %98 = load i32* %97, align 4, !tbaa !49
  %99 = getelementptr inbounds %struct.t_coupl_Q* %91, i64 %indvars.iv18, i32 4
  %100 = load float* %99, align 4, !tbaa !64
  %101 = fpext float %100 to double
  %102 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %1, i8* getelementptr inbounds ([23 x i8]* @.str39, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8]* @.str40, i64 0, i64 0), i8* %96, i32 %98, double %101) #9
  %indvars.iv.next19 = add nuw nsw i64 %indvars.iv18, 1
  %103 = load i32* %86, align 4, !tbaa !29
  %104 = sext i32 %103 to i64
  %105 = icmp slt i64 %indvars.iv.next19, %104
  br i1 %105, label %90, label %._crit_edge13

._crit_edge13:                                    ; preds = %90, %0
  %106 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %1, i8* getelementptr inbounds ([34 x i8]* @.str41, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str42, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8]* @.str43, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str44, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str45, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8]* @.str46, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str47, i64 0, i64 0)) #9
  %107 = tail call i64 @fwrite(i8* getelementptr inbounds ([52 x i8]* @.str48, i64 0, i64 0), i64 51, i64 1, %struct.__sFILE* %1)
  %108 = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 4
  %109 = load i32* %108, align 4, !tbaa !24
  %110 = icmp sgt i32 %109, 0
  br i1 %110, label %.lr.ph8, label %._crit_edge9

.lr.ph8:                                          ; preds = %._crit_edge13
  %111 = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 8
  br label %112

; <label>:112                                     ; preds = %.lr.ph8, %112
  %indvars.iv16 = phi i64 [ 0, %.lr.ph8 ], [ %indvars.iv.next17, %112 ]
  %113 = load %struct.t_coupl_LJ** %111, align 8, !tbaa !26
  %114 = getelementptr inbounds %struct.t_coupl_LJ* %113, i64 %indvars.iv16, i32 2
  %115 = load i32* %114, align 4, !tbaa !65
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds [17 x i8*]* @eoNames, i64 0, i64 %116
  %118 = load i8** %117, align 8, !tbaa !22
  %119 = getelementptr inbounds %struct.t_coupl_LJ* %113, i64 %indvars.iv16, i32 0
  %120 = load i32* %119, align 4, !tbaa !34
  %121 = getelementptr inbounds %struct.t_coupl_LJ* %113, i64 %indvars.iv16, i32 1
  %122 = load i32* %121, align 4, !tbaa !36
  %123 = getelementptr inbounds %struct.t_coupl_LJ* %113, i64 %indvars.iv16, i32 6
  %124 = load float* %123, align 4, !tbaa !66
  %125 = fpext float %124 to double
  %126 = getelementptr inbounds %struct.t_coupl_LJ* %113, i64 %indvars.iv16, i32 7
  %127 = load float* %126, align 4, !tbaa !67
  %128 = fpext float %127 to double
  %129 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %1, i8* getelementptr inbounds ([34 x i8]* @.str49, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8]* @.str50, i64 0, i64 0), i8* %118, i32 %120, i32 %122, double %125, double %128) #9
  %indvars.iv.next17 = add nuw nsw i64 %indvars.iv16, 1
  %130 = load i32* %108, align 4, !tbaa !24
  %131 = sext i32 %130 to i64
  %132 = icmp slt i64 %indvars.iv.next17, %131
  br i1 %132, label %112, label %._crit_edge9

._crit_edge9:                                     ; preds = %112, %._crit_edge13
  %133 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %1, i8* getelementptr inbounds ([40 x i8]* @.str51, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str42, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8]* @.str43, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str44, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str45, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str52, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str53, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str54, i64 0, i64 0)) #9
  %134 = tail call i64 @fwrite(i8* getelementptr inbounds ([52 x i8]* @.str48, i64 0, i64 0), i64 51, i64 1, %struct.__sFILE* %1)
  %135 = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 5
  %136 = load i32* %135, align 4, !tbaa !27
  %137 = icmp sgt i32 %136, 0
  br i1 %137, label %.lr.ph4, label %._crit_edge5

.lr.ph4:                                          ; preds = %._crit_edge9
  %138 = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 9
  br label %139

; <label>:139                                     ; preds = %.lr.ph4, %139
  %indvars.iv14 = phi i64 [ 0, %.lr.ph4 ], [ %indvars.iv.next15, %139 ]
  %140 = load %struct.t_coupl_BU** %138, align 8, !tbaa !28
  %141 = getelementptr inbounds %struct.t_coupl_BU* %140, i64 %indvars.iv14, i32 2
  %142 = load i32* %141, align 4, !tbaa !68
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds [17 x i8*]* @eoNames, i64 0, i64 %143
  %145 = load i8** %144, align 8, !tbaa !22
  %146 = getelementptr inbounds %struct.t_coupl_BU* %140, i64 %indvars.iv14, i32 0
  %147 = load i32* %146, align 4, !tbaa !41
  %148 = getelementptr inbounds %struct.t_coupl_BU* %140, i64 %indvars.iv14, i32 1
  %149 = load i32* %148, align 4, !tbaa !43
  %150 = getelementptr inbounds %struct.t_coupl_BU* %140, i64 %indvars.iv14, i32 7
  %151 = load float* %150, align 4, !tbaa !69
  %152 = fpext float %151 to double
  %153 = getelementptr inbounds %struct.t_coupl_BU* %140, i64 %indvars.iv14, i32 8
  %154 = load float* %153, align 4, !tbaa !70
  %155 = fpext float %154 to double
  %156 = getelementptr inbounds %struct.t_coupl_BU* %140, i64 %indvars.iv14, i32 9
  %157 = load float* %156, align 4, !tbaa !71
  %158 = fpext float %157 to double
  %159 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %1, i8* getelementptr inbounds ([40 x i8]* @.str55, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8]* @.str56, i64 0, i64 0), i8* %145, i32 %147, i32 %149, double %152, double %155, double %158) #9
  %indvars.iv.next15 = add nuw nsw i64 %indvars.iv14, 1
  %160 = load i32* %135, align 4, !tbaa !27
  %161 = sext i32 %160 to i64
  %162 = icmp slt i64 %indvars.iv.next15, %161
  br i1 %162, label %139, label %._crit_edge5

._crit_edge5:                                     ; preds = %139, %._crit_edge9
  %163 = tail call i64 @fwrite(i8* getelementptr inbounds ([18 x i8]* @.str57, i64 0, i64 0), i64 17, i64 1, %struct.__sFILE* %1)
  %164 = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 7
  %165 = load i32* %164, align 4, !tbaa !47
  %166 = icmp sgt i32 %165, 0
  br i1 %166, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %._crit_edge5
  %167 = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 11
  %168 = getelementptr inbounds %struct.t_idef* %idef, i64 0, i32 3
  br label %169

; <label>:169                                     ; preds = %.lr.ph, %196
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %196 ]
  %170 = load %struct.t_coupl_iparams** %167, align 8, !tbaa !54
  %171 = getelementptr inbounds %struct.t_coupl_iparams* %170, i64 %indvars.iv, i32 0
  %172 = load i32* %171, align 4, !tbaa !55
  %173 = sext i32 %172 to i64
  %174 = load i32** %168, align 8, !tbaa !72
  %175 = getelementptr inbounds i32* %174, i64 %173
  %176 = load i32* %175, align 4, !tbaa !51
  %cond = icmp eq i32 %176, 0
  br i1 %cond, label %177, label %190

; <label>:177                                     ; preds = %169
  %178 = getelementptr inbounds %struct.t_coupl_iparams* %170, i64 %indvars.iv, i32 1
  %179 = load i32* %178, align 4, !tbaa !73
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds [17 x i8*]* @eoNames, i64 0, i64 %180
  %182 = load i8** %181, align 8, !tbaa !22
  %183 = getelementptr inbounds %struct.t_coupl_iparams* %170, i64 %indvars.iv, i32 2, i32 0, i32 1
  %184 = load float* %183, align 4, !tbaa !74
  %185 = fpext float %184 to double
  %186 = getelementptr inbounds %struct.t_coupl_iparams* %170, i64 %indvars.iv, i32 2, i32 0, i32 0
  %187 = load float* %186, align 4, !tbaa !76
  %188 = fpext float %187 to double
  %189 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %1, i8* getelementptr inbounds ([31 x i8]* @.str58, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8]* @.str59, i64 0, i64 0), i8* %182, i32 %172, double %185, double %188) #9
  br label %196

; <label>:190                                     ; preds = %169
  %191 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !22
  %192 = sext i32 %176 to i64
  %193 = getelementptr inbounds [44 x %struct.t_interaction_function]* @interaction_function, i64 0, i64 %192, i32 1
  %194 = load i8** %193, align 8, !tbaa !77
  %195 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %191, i8* getelementptr inbounds ([30 x i8]* @.str60, i64 0, i64 0), i8* %194) #9
  br label %196

; <label>:196                                     ; preds = %177, %190
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %197 = load i32* %164, align 4, !tbaa !47
  %198 = sext i32 %197 to i64
  %199 = icmp slt i64 %indvars.iv.next, %198
  br i1 %199, label %169, label %._crit_edge

._crit_edge:                                      ; preds = %196, %._crit_edge5
  tail call void @ffclose(%struct.__sFILE* %1) #9
  ret void
}

; Function Attrs: optsize
declare %struct.__sFILE* @ffopen(i8*, i8*) #1

; Function Attrs: optsize
declare void @nice_header(%struct.__sFILE*, i8*) #1

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct.__sFILE* nocapture, i8* nocapture readonly, ...) #6

; Function Attrs: optsize
declare void @ffclose(%struct.__sFILE*) #1

; Function Attrs: nounwind optsize ssp uwtable
define void @read_gct(i8* %fn, %struct.t_coupl_rec* nocapture %tcr) #4 {
  %type.i = alloca i32, align 4
  %kb.i = alloca double, align 8
  %b0.i = alloca double, align 8
  %ati.i14 = alloca i32, align 4
  %xiQ.i = alloca double, align 8
  %ati.i1 = alloca i32, align 4
  %atj.i2 = alloca i32, align 4
  %xia.i = alloca double, align 8
  %xib.i = alloca double, align 8
  %xic.i = alloca double, align 8
  %ati.i = alloca i32, align 4
  %atj.i = alloca i32, align 4
  %buf.i = alloca [256 x i8], align 16
  %xi6.i = alloca double, align 8
  %xi12.i = alloca double, align 8
  %inp = alloca %struct.t_inpfile*, align 8
  %ninp = alloca i32, align 4
  %1 = call %struct.t_inpfile* @read_inpfile(i8* %fn, i32* %ninp) #9
  store %struct.t_inpfile* %1, %struct.t_inpfile** %inp, align 8, !tbaa !22
  br label %2

; <label>:2                                       ; preds = %2, %0
  %indvars.iv98 = phi i64 [ 0, %0 ], [ %indvars.iv.next99, %2 ]
  %3 = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 3, i64 %indvars.iv98
  store i32 0, i32* %3, align 4, !tbaa !51
  %4 = getelementptr inbounds [17 x i8*]* @eoNames, i64 0, i64 %indvars.iv98
  %5 = load i8** %4, align 8, !tbaa !22
  %6 = call float @get_ereal(i32* %ninp, %struct.t_inpfile** %inp, i8* %5, float 0.000000e+00) #9
  %7 = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 2, i64 %indvars.iv98
  store float %6, float* %7, align 4, !tbaa !14
  %indvars.iv.next99 = add nuw nsw i64 %indvars.iv98, 1
  %exitcond100 = icmp eq i64 %indvars.iv.next99, 14
  br i1 %exitcond100, label %8, label %2

; <label>:8                                       ; preds = %2
  %9 = load i8** getelementptr inbounds ([17 x i8*]* @eoNames, i64 0, i64 14), align 16, !tbaa !22
  %10 = call i32 @get_eint(i32* %ninp, %struct.t_inpfile** %inp, i8* %9, i32 1) #9
  %11 = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 12
  store i32 %10, i32* %11, align 4, !tbaa !60
  %12 = load i8** getelementptr inbounds ([17 x i8*]* @eoNames, i64 0, i64 15), align 8, !tbaa !22
  %13 = call i32 @get_eenum(i32* %ninp, %struct.t_inpfile** %inp, i8* %12, i8** getelementptr inbounds ([3 x i8*]* @yesno_names, i64 0, i64 0)) #9
  %14 = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 13
  store i32 %13, i32* %14, align 4, !tbaa !61
  %15 = load i8** getelementptr inbounds ([17 x i8*]* @eoNames, i64 0, i64 16), align 16, !tbaa !22
  %16 = call i32 @get_eenum(i32* %ninp, %struct.t_inpfile** %inp, i8* %15, i8** getelementptr inbounds ([3 x i8*]* @yesno_names, i64 0, i64 0)) #9
  %17 = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 14
  store i32 %16, i32* %17, align 4, !tbaa !62
  %18 = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 8
  %19 = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 9
  %20 = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 10
  %21 = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 11
  %22 = bitcast %struct.t_coupl_LJ** %18 to i8*
  call void @llvm.memset.p0i8.i64(i8* %22, i8 0, i64 32, i32 8, i1 false)
  %23 = load i32* %ninp, align 4, !tbaa !51
  %24 = icmp sgt i32 %23, 0
  br i1 %24, label %.lr.ph57, label %._crit_edge46

.lr.ph57:                                         ; preds = %8
  %25 = bitcast i32* %ati.i to i8*
  %26 = bitcast i32* %atj.i to i8*
  %27 = bitcast double* %xi6.i to i8*
  %28 = bitcast double* %xi12.i to i8*
  %29 = getelementptr inbounds [256 x i8]* %buf.i, i64 0, i64 0
  %30 = bitcast %struct.t_coupl_LJ** %18 to i8**
  %31 = bitcast i32* %ati.i1 to i8*
  %32 = bitcast i32* %atj.i2 to i8*
  %33 = bitcast double* %xia.i to i8*
  %34 = bitcast double* %xib.i to i8*
  %35 = bitcast double* %xic.i to i8*
  %36 = bitcast %struct.t_coupl_BU** %19 to i8**
  %37 = bitcast i32* %ati.i14 to i8*
  %38 = bitcast double* %xiQ.i to i8*
  %39 = bitcast %struct.t_coupl_Q** %20 to i8**
  %40 = bitcast i32* %type.i to i8*
  %41 = bitcast double* %kb.i to i8*
  %42 = bitcast double* %b0.i to i8*
  %43 = bitcast %struct.t_coupl_iparams** %21 to i8**
  br label %46

.preheader36:                                     ; preds = %.thread
  %44 = icmp sgt i32 %358, 1
  br i1 %44, label %.preheader35.lr.ph, label %.preheader34

.preheader35.lr.ph:                               ; preds = %.preheader36
  %45 = add i32 %358, -1
  br label %.lr.ph52

; <label>:46                                      ; preds = %.lr.ph57, %.thread
  %indvars.iv96 = phi i64 [ 0, %.lr.ph57 ], [ %indvars.iv.next97, %.thread ]
  %47 = phi i32 [ 0, %.lr.ph57 ], [ %355, %.thread ]
  %48 = phi i32 [ 0, %.lr.ph57 ], [ %356, %.thread ]
  %49 = phi i32 [ 0, %.lr.ph57 ], [ %357, %.thread ]
  %50 = phi i32 [ 0, %.lr.ph57 ], [ %358, %.thread ]
  %51 = load %struct.t_inpfile** %inp, align 8, !tbaa !22
  %52 = getelementptr inbounds %struct.t_inpfile* %51, i64 %indvars.iv96, i32 2
  %53 = load i8** %52, align 8, !tbaa !80
  %54 = call i32 @strcasecmp(i8* %53, i8* getelementptr inbounds ([3 x i8]* @.str50, i64 0, i64 0)) #9
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %138

; <label>:56                                      ; preds = %46
  %57 = getelementptr inbounds %struct.t_inpfile* %51, i64 %indvars.iv96, i32 3
  %58 = load i8** %57, align 8, !tbaa !82
  call void @llvm.lifetime.start(i64 4, i8* %25)
  call void @llvm.lifetime.start(i64 4, i8* %26)
  call void @llvm.lifetime.start(i64 8, i8* %27)
  call void @llvm.lifetime.start(i64 8, i8* %28)
  call void @llvm.lifetime.start(i64 256, i8* %29) #5
  %59 = call i32 (i8*, i8*, ...)* @sscanf(i8* %58, i8* getelementptr inbounds ([13 x i8]* @.str66, i64 0, i64 0), i8* %29, i32* %ati.i, i32* %atj.i, double* %xi6.i, double* %xi12.i) #9
  %60 = icmp eq i32 %59, 5
  br i1 %60, label %61, label %add_lj.exit

; <label>:61                                      ; preds = %56
  %62 = call fastcc i32 @Name2eo(i8* %29) #9
  %63 = icmp eq i32 %62, -1
  br i1 %63, label %64, label %.preheader.i

; <label>:64                                      ; preds = %61
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([39 x i8]* @.str67, i64 0, i64 0), i8* %29) #9
  br label %.preheader.i

.preheader.i:                                     ; preds = %64, %61
  %65 = icmp sgt i32 %49, 0
  br i1 %65, label %.lr.ph.i, label %99

.lr.ph.i:                                         ; preds = %.preheader.i
  %66 = load %struct.t_coupl_LJ** %18, align 8, !tbaa !22
  %67 = load i32* %ati.i, align 4, !tbaa !51
  %68 = load i32* %atj.i, align 4, !tbaa !51
  %69 = sext i32 %49 to i64
  br label %70

; <label>:70                                      ; preds = %95, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %95 ]
  %71 = getelementptr inbounds %struct.t_coupl_LJ* %66, i64 %indvars.iv.i, i32 0
  %72 = load i32* %71, align 4, !tbaa !34
  %73 = icmp eq i32 %72, %67
  br i1 %73, label %74, label %95

; <label>:74                                      ; preds = %70
  %75 = getelementptr inbounds %struct.t_coupl_LJ* %66, i64 %indvars.iv.i, i32 1
  %76 = load i32* %75, align 4, !tbaa !36
  %77 = icmp eq i32 %76, %68
  br i1 %77, label %78, label %95

; <label>:78                                      ; preds = %74
  %79 = getelementptr inbounds %struct.t_coupl_LJ* %66, i64 %indvars.iv.i, i32 6
  %80 = load float* %79, align 4, !tbaa !66
  %fabsf.i = call float @fabsf(float %80) #8
  %81 = fpext float %fabsf.i to double
  %82 = fcmp ogt double %81, 1.200000e-38
  br i1 %82, label %88, label %83

; <label>:83                                      ; preds = %78
  %84 = getelementptr inbounds %struct.t_coupl_LJ* %66, i64 %indvars.iv.i, i32 7
  %85 = load float* %84, align 4, !tbaa !67
  %fabsf1.i = call float @fabsf(float %85) #8
  %86 = fpext float %fabsf1.i to double
  %87 = fcmp ogt double %86, 1.200000e-38
  br i1 %87, label %88, label %95

; <label>:88                                      ; preds = %83, %78
  %89 = getelementptr inbounds %struct.t_coupl_LJ* %66, i64 %indvars.iv.i, i32 2
  %90 = load i32* %89, align 4, !tbaa !65
  %91 = sub nsw i32 %90, %62
  %92 = sitofp i32 %91 to double
  %93 = call double @fabs(double %92) #12
  %94 = fcmp olt double %93, 1.200000e-38
  br i1 %94, label %._crit_edge.i, label %95

; <label>:95                                      ; preds = %88, %83, %74, %70
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %96 = icmp slt i64 %indvars.iv.next.i, %69
  br i1 %96, label %70, label %._crit_edge4.i

._crit_edge.i:                                    ; preds = %88
  %97 = trunc i64 %indvars.iv.i to i32
  br label %99

._crit_edge4.i:                                   ; preds = %95
  %98 = trunc i64 %indvars.iv.next.i to i32
  br label %99

; <label>:99                                      ; preds = %._crit_edge4.i, %._crit_edge.i, %.preheader.i
  %j.0.lcssa.i = phi i32 [ %97, %._crit_edge.i ], [ %98, %._crit_edge4.i ], [ 0, %.preheader.i ]
  %100 = icmp eq i32 %j.0.lcssa.i, %49
  br i1 %100, label %101, label %107

; <label>:101                                     ; preds = %99
  %102 = add nsw i32 %49, 1
  %103 = load i8** %30, align 8, !tbaa !22
  %104 = shl i32 %102, 5
  %105 = call i8* @save_realloc(i8* getelementptr inbounds ([8 x i8]* @.str68, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str18, i64 0, i64 0), i32 299, i8* %103, i32 %104) #9
  store i8* %105, i8** %30, align 8, !tbaa !22
  %106 = bitcast i8* %105 to %struct.t_coupl_LJ*
  br label %110

; <label>:107                                     ; preds = %99
  %108 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !22
  %109 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %108, i8* getelementptr inbounds ([54 x i8]* @.str69, i64 0, i64 0), i8* %58) #9
  %.pre.i = load %struct.t_coupl_LJ** %18, align 8, !tbaa !22
  br label %110

; <label>:110                                     ; preds = %107, %101
  %111 = phi i32 [ %49, %107 ], [ %102, %101 ]
  %112 = phi %struct.t_coupl_LJ* [ %.pre.i, %107 ], [ %106, %101 ]
  %113 = sext i32 %j.0.lcssa.i to i64
  %114 = getelementptr inbounds %struct.t_coupl_LJ* %112, i64 %113, i32 0
  store i32 0, i32* %114, align 4, !tbaa !34
  %115 = getelementptr inbounds %struct.t_coupl_LJ* %112, i64 %113, i32 1
  store i32 0, i32* %115, align 4, !tbaa !36
  %116 = getelementptr inbounds %struct.t_coupl_LJ* %112, i64 %113, i32 2
  store i32 -1, i32* %116, align 4, !tbaa !65
  %117 = getelementptr inbounds %struct.t_coupl_LJ* %112, i64 %113, i32 3
  store i32 1, i32* %117, align 4, !tbaa !83
  %118 = getelementptr inbounds %struct.t_coupl_LJ* %112, i64 %113, i32 4
  %119 = bitcast float* %118 to i8*
  call void @llvm.memset.p0i8.i64(i8* %119, i8 0, i64 16, i32 4, i1 false) #5
  %120 = load %struct.t_coupl_LJ** %18, align 8, !tbaa !22
  %121 = getelementptr inbounds %struct.t_coupl_LJ* %120, i64 %113, i32 2
  store i32 %62, i32* %121, align 4, !tbaa !65
  br i1 %63, label %122, label %123

; <label>:122                                     ; preds = %110
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([39 x i8]* @.str67, i64 0, i64 0), i8* %29) #9
  %.pre7.i = load %struct.t_coupl_LJ** %18, align 8, !tbaa !22
  br label %123

; <label>:123                                     ; preds = %122, %110
  %124 = phi %struct.t_coupl_LJ* [ %.pre7.i, %122 ], [ %120, %110 ]
  %125 = load i32* %ati.i, align 4, !tbaa !51
  %126 = getelementptr inbounds %struct.t_coupl_LJ* %124, i64 %113, i32 0
  store i32 %125, i32* %126, align 4, !tbaa !34
  %127 = load i32* %atj.i, align 4, !tbaa !51
  %128 = getelementptr inbounds %struct.t_coupl_LJ* %124, i64 %113, i32 1
  store i32 %127, i32* %128, align 4, !tbaa !36
  %129 = load double* %xi6.i, align 8, !tbaa !16
  %130 = fptrunc double %129 to float
  %131 = getelementptr inbounds %struct.t_coupl_LJ* %124, i64 %113, i32 6
  store float %130, float* %131, align 4, !tbaa !66
  %132 = load double* %xi12.i, align 8, !tbaa !16
  %133 = fptrunc double %132 to float
  %134 = getelementptr inbounds %struct.t_coupl_LJ* %124, i64 %113, i32 7
  store float %133, float* %134, align 4, !tbaa !67
  %135 = sext i32 %62 to i64
  %136 = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 3, i64 %135
  store i32 1, i32* %136, align 4, !tbaa !51
  br label %add_lj.exit

add_lj.exit:                                      ; preds = %56, %123
  %137 = phi i32 [ %111, %123 ], [ %49, %56 ]
  %.0.i = phi i32 [ 0, %123 ], [ 1, %56 ]
  call void @llvm.lifetime.end(i64 256, i8* %29) #5
  call void @llvm.lifetime.end(i64 4, i8* %25)
  call void @llvm.lifetime.end(i64 4, i8* %26)
  call void @llvm.lifetime.end(i64 8, i8* %27)
  call void @llvm.lifetime.end(i64 8, i8* %28)
  br label %341

; <label>:138                                     ; preds = %46
  %139 = call i32 @strcasecmp(i8* %53, i8* getelementptr inbounds ([3 x i8]* @.str56, i64 0, i64 0)) #9
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %141, label %231

; <label>:141                                     ; preds = %138
  %142 = getelementptr inbounds %struct.t_inpfile* %51, i64 %indvars.iv96, i32 3
  %143 = load i8** %142, align 8, !tbaa !82
  call void @llvm.lifetime.start(i64 4, i8* %31)
  call void @llvm.lifetime.start(i64 4, i8* %32)
  call void @llvm.lifetime.start(i64 8, i8* %33)
  call void @llvm.lifetime.start(i64 8, i8* %34)
  call void @llvm.lifetime.start(i64 8, i8* %35)
  call void @llvm.lifetime.start(i64 256, i8* %29) #5
  %144 = call i32 (i8*, i8*, ...)* @sscanf(i8* %143, i8* getelementptr inbounds ([16 x i8]* @.str71, i64 0, i64 0), i8* %29, i32* %ati.i1, i32* %atj.i2, double* %xia.i, double* %xib.i, double* %xic.i) #9
  %145 = icmp eq i32 %144, 6
  br i1 %145, label %146, label %add_bu.exit

; <label>:146                                     ; preds = %141
  %147 = call fastcc i32 @Name2eo(i8* %29) #9
  %148 = icmp eq i32 %147, -1
  br i1 %148, label %149, label %.preheader.i4

; <label>:149                                     ; preds = %146
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([39 x i8]* @.str72, i64 0, i64 0), i8* %29) #9
  br label %.preheader.i4

.preheader.i4:                                    ; preds = %149, %146
  %150 = icmp sgt i32 %48, 0
  br i1 %150, label %.lr.ph.i5, label %189

.lr.ph.i5:                                        ; preds = %.preheader.i4
  %151 = load %struct.t_coupl_BU** %19, align 8, !tbaa !22
  %152 = load i32* %ati.i1, align 4, !tbaa !51
  %153 = load i32* %atj.i2, align 4, !tbaa !51
  %154 = sext i32 %48 to i64
  br label %155

; <label>:155                                     ; preds = %185, %.lr.ph.i5
  %indvars.iv.i6 = phi i64 [ 0, %.lr.ph.i5 ], [ %indvars.iv.next.i9, %185 ]
  %156 = getelementptr inbounds %struct.t_coupl_BU* %151, i64 %indvars.iv.i6, i32 0
  %157 = load i32* %156, align 4, !tbaa !41
  %158 = icmp eq i32 %157, %152
  br i1 %158, label %159, label %185

; <label>:159                                     ; preds = %155
  %160 = getelementptr inbounds %struct.t_coupl_BU* %151, i64 %indvars.iv.i6, i32 1
  %161 = load i32* %160, align 4, !tbaa !43
  %162 = icmp eq i32 %161, %153
  br i1 %162, label %163, label %185

; <label>:163                                     ; preds = %159
  %164 = getelementptr inbounds %struct.t_coupl_BU* %151, i64 %indvars.iv.i6, i32 7
  %165 = load float* %164, align 4, !tbaa !69
  %fabsf.i7 = call float @fabsf(float %165) #8
  %166 = fpext float %fabsf.i7 to double
  %167 = fcmp ogt double %166, 1.200000e-38
  br i1 %167, label %178, label %168

; <label>:168                                     ; preds = %163
  %169 = getelementptr inbounds %struct.t_coupl_BU* %151, i64 %indvars.iv.i6, i32 8
  %170 = load float* %169, align 4, !tbaa !70
  %fabsf1.i8 = call float @fabsf(float %170) #8
  %171 = fpext float %fabsf1.i8 to double
  %172 = fcmp ogt double %171, 1.200000e-38
  br i1 %172, label %178, label %173

; <label>:173                                     ; preds = %168
  %174 = getelementptr inbounds %struct.t_coupl_BU* %151, i64 %indvars.iv.i6, i32 9
  %175 = load float* %174, align 4, !tbaa !71
  %fabsf2.i = call float @fabsf(float %175) #8
  %176 = fpext float %fabsf2.i to double
  %177 = fcmp ogt double %176, 1.200000e-38
  br i1 %177, label %178, label %185

; <label>:178                                     ; preds = %173, %168, %163
  %179 = getelementptr inbounds %struct.t_coupl_BU* %151, i64 %indvars.iv.i6, i32 2
  %180 = load i32* %179, align 4, !tbaa !68
  %181 = sub nsw i32 %180, %147
  %182 = sitofp i32 %181 to double
  %183 = call double @fabs(double %182) #12
  %184 = fcmp olt double %183, 1.200000e-38
  br i1 %184, label %._crit_edge.i10, label %185

; <label>:185                                     ; preds = %178, %173, %159, %155
  %indvars.iv.next.i9 = add nuw nsw i64 %indvars.iv.i6, 1
  %186 = icmp slt i64 %indvars.iv.next.i9, %154
  br i1 %186, label %155, label %._crit_edge5.i

._crit_edge.i10:                                  ; preds = %178
  %187 = trunc i64 %indvars.iv.i6 to i32
  br label %189

._crit_edge5.i:                                   ; preds = %185
  %188 = trunc i64 %indvars.iv.next.i9 to i32
  br label %189

; <label>:189                                     ; preds = %._crit_edge5.i, %._crit_edge.i10, %.preheader.i4
  %j.0.lcssa.i11 = phi i32 [ %187, %._crit_edge.i10 ], [ %188, %._crit_edge5.i ], [ 0, %.preheader.i4 ]
  %190 = icmp eq i32 %j.0.lcssa.i11, %48
  br i1 %190, label %191, label %197

; <label>:191                                     ; preds = %189
  %192 = add nsw i32 %48, 1
  %193 = load i8** %36, align 8, !tbaa !22
  %194 = mul i32 %192, 40
  %195 = call i8* @save_realloc(i8* getelementptr inbounds ([8 x i8]* @.str73, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str18, i64 0, i64 0), i32 336, i8* %193, i32 %194) #9
  store i8* %195, i8** %36, align 8, !tbaa !22
  %196 = bitcast i8* %195 to %struct.t_coupl_BU*
  br label %200

; <label>:197                                     ; preds = %189
  %198 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !22
  %199 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %198, i8* getelementptr inbounds ([54 x i8]* @.str74, i64 0, i64 0), i8* %143) #9
  %.pre.i12 = load %struct.t_coupl_BU** %19, align 8, !tbaa !22
  br label %200

; <label>:200                                     ; preds = %197, %191
  %201 = phi i32 [ %48, %197 ], [ %192, %191 ]
  %202 = phi %struct.t_coupl_BU* [ %.pre.i12, %197 ], [ %196, %191 ]
  %203 = sext i32 %j.0.lcssa.i11 to i64
  %204 = getelementptr inbounds %struct.t_coupl_BU* %202, i64 %203, i32 0
  store i32 0, i32* %204, align 4, !tbaa !41
  %205 = getelementptr inbounds %struct.t_coupl_BU* %202, i64 %203, i32 1
  store i32 0, i32* %205, align 4, !tbaa !43
  %206 = getelementptr inbounds %struct.t_coupl_BU* %202, i64 %203, i32 2
  store i32 -1, i32* %206, align 4, !tbaa !68
  %207 = getelementptr inbounds %struct.t_coupl_BU* %202, i64 %203, i32 3
  store i32 1, i32* %207, align 4, !tbaa !84
  %208 = getelementptr inbounds %struct.t_coupl_BU* %202, i64 %203, i32 4
  %209 = bitcast float* %208 to i8*
  call void @llvm.memset.p0i8.i64(i8* %209, i8 0, i64 24, i32 4, i1 false) #5
  %210 = load %struct.t_coupl_BU** %19, align 8, !tbaa !22
  %211 = getelementptr inbounds %struct.t_coupl_BU* %210, i64 %203, i32 2
  store i32 %147, i32* %211, align 4, !tbaa !68
  br i1 %148, label %212, label %213

; <label>:212                                     ; preds = %200
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([39 x i8]* @.str72, i64 0, i64 0), i8* %29) #9
  %.pre8.i = load %struct.t_coupl_BU** %19, align 8, !tbaa !22
  br label %213

; <label>:213                                     ; preds = %212, %200
  %214 = phi %struct.t_coupl_BU* [ %.pre8.i, %212 ], [ %210, %200 ]
  %215 = load i32* %ati.i1, align 4, !tbaa !51
  %216 = getelementptr inbounds %struct.t_coupl_BU* %214, i64 %203, i32 0
  store i32 %215, i32* %216, align 4, !tbaa !41
  %217 = load i32* %atj.i2, align 4, !tbaa !51
  %218 = getelementptr inbounds %struct.t_coupl_BU* %214, i64 %203, i32 1
  store i32 %217, i32* %218, align 4, !tbaa !43
  %219 = load double* %xia.i, align 8, !tbaa !16
  %220 = fptrunc double %219 to float
  %221 = getelementptr inbounds %struct.t_coupl_BU* %214, i64 %203, i32 7
  store float %220, float* %221, align 4, !tbaa !69
  %222 = load double* %xib.i, align 8, !tbaa !16
  %223 = fptrunc double %222 to float
  %224 = getelementptr inbounds %struct.t_coupl_BU* %214, i64 %203, i32 8
  store float %223, float* %224, align 4, !tbaa !70
  %225 = load double* %xic.i, align 8, !tbaa !16
  %226 = fptrunc double %225 to float
  %227 = getelementptr inbounds %struct.t_coupl_BU* %214, i64 %203, i32 9
  store float %226, float* %227, align 4, !tbaa !71
  %228 = sext i32 %147 to i64
  %229 = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 3, i64 %228
  store i32 1, i32* %229, align 4, !tbaa !51
  br label %add_bu.exit

add_bu.exit:                                      ; preds = %141, %213
  %230 = phi i32 [ %201, %213 ], [ %48, %141 ]
  %.0.i13 = phi i32 [ 0, %213 ], [ 1, %141 ]
  call void @llvm.lifetime.end(i64 256, i8* %29) #5
  call void @llvm.lifetime.end(i64 4, i8* %31)
  call void @llvm.lifetime.end(i64 4, i8* %32)
  call void @llvm.lifetime.end(i64 8, i8* %33)
  call void @llvm.lifetime.end(i64 8, i8* %34)
  call void @llvm.lifetime.end(i64 8, i8* %35)
  br label %341

; <label>:231                                     ; preds = %138
  %232 = call i32 @strcasecmp(i8* %53, i8* getelementptr inbounds ([2 x i8]* @.str40, i64 0, i64 0)) #9
  %233 = icmp eq i32 %232, 0
  br i1 %233, label %234, label %286

; <label>:234                                     ; preds = %231
  %235 = getelementptr inbounds %struct.t_inpfile* %51, i64 %indvars.iv96, i32 3
  %236 = load i8** %235, align 8, !tbaa !82
  call void @llvm.lifetime.start(i64 4, i8* %37)
  call void @llvm.lifetime.start(i64 8, i8* %38)
  call void @llvm.lifetime.start(i64 256, i8* %29) #5
  %237 = call i32 (i8*, i8*, ...)* @sscanf(i8* %236, i8* getelementptr inbounds ([8 x i8]* @.str75, i64 0, i64 0), i8* %29, i32* %ati.i14, double* %xiQ.i) #9
  %238 = icmp eq i32 %237, 3
  br i1 %238, label %.preheader.i16, label %add_q.exit

.preheader.i16:                                   ; preds = %234
  %239 = icmp sgt i32 %50, 0
  br i1 %239, label %.lr.ph.i17, label %251

.lr.ph.i17:                                       ; preds = %.preheader.i16
  %240 = load %struct.t_coupl_Q** %20, align 8, !tbaa !22
  %241 = load i32* %ati.i14, align 4, !tbaa !51
  %242 = sext i32 %50 to i64
  br label %243

; <label>:243                                     ; preds = %247, %.lr.ph.i17
  %indvars.iv.i18 = phi i64 [ 0, %.lr.ph.i17 ], [ %indvars.iv.next.i19, %247 ]
  %244 = getelementptr inbounds %struct.t_coupl_Q* %240, i64 %indvars.iv.i18, i32 0
  %245 = load i32* %244, align 4, !tbaa !49
  %246 = icmp eq i32 %245, %241
  br i1 %246, label %._crit_edge.i20, label %247

; <label>:247                                     ; preds = %243
  %indvars.iv.next.i19 = add nuw nsw i64 %indvars.iv.i18, 1
  %248 = icmp slt i64 %indvars.iv.next.i19, %242
  br i1 %248, label %243, label %._crit_edge2.i

._crit_edge.i20:                                  ; preds = %243
  %249 = trunc i64 %indvars.iv.i18 to i32
  br label %251

._crit_edge2.i:                                   ; preds = %247
  %250 = trunc i64 %indvars.iv.next.i19 to i32
  br label %251

; <label>:251                                     ; preds = %._crit_edge2.i, %._crit_edge.i20, %.preheader.i16
  %j.0.lcssa.i21 = phi i32 [ %249, %._crit_edge.i20 ], [ %250, %._crit_edge2.i ], [ 0, %.preheader.i16 ]
  %252 = icmp eq i32 %j.0.lcssa.i21, %50
  br i1 %252, label %253, label %259

; <label>:253                                     ; preds = %251
  %254 = add nsw i32 %50, 1
  %255 = load i8** %39, align 8, !tbaa !22
  %256 = mul i32 %254, 20
  %257 = call i8* @save_realloc(i8* getelementptr inbounds ([7 x i8]* @.str76, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str18, i64 0, i64 0), i32 413, i8* %255, i32 %256) #9
  store i8* %257, i8** %39, align 8, !tbaa !22
  %258 = bitcast i8* %257 to %struct.t_coupl_Q*
  br label %262

; <label>:259                                     ; preds = %251
  %260 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !22
  %261 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %260, i8* getelementptr inbounds ([53 x i8]* @.str77, i64 0, i64 0), i8* %236) #9
  %.pre.i22 = load %struct.t_coupl_Q** %20, align 8, !tbaa !22
  br label %262

; <label>:262                                     ; preds = %259, %253
  %263 = phi i32 [ %50, %259 ], [ %254, %253 ]
  %264 = phi %struct.t_coupl_Q* [ %.pre.i22, %259 ], [ %258, %253 ]
  %265 = sext i32 %j.0.lcssa.i21 to i64
  %266 = getelementptr inbounds %struct.t_coupl_Q* %264, i64 %265, i32 0
  store i32 0, i32* %266, align 4, !tbaa !49
  %267 = getelementptr inbounds %struct.t_coupl_Q* %264, i64 %265, i32 1
  store i32 -1, i32* %267, align 4, !tbaa !63
  %268 = getelementptr inbounds %struct.t_coupl_Q* %264, i64 %265, i32 2
  store i32 1, i32* %268, align 4, !tbaa !85
  %269 = getelementptr inbounds %struct.t_coupl_Q* %264, i64 %265, i32 3
  store float 0.000000e+00, float* %269, align 4, !tbaa !53
  %270 = getelementptr inbounds %struct.t_coupl_Q* %264, i64 %265, i32 4
  store float 0.000000e+00, float* %270, align 4, !tbaa !64
  %271 = call fastcc i32 @Name2eo(i8* %29) #9
  %272 = load %struct.t_coupl_Q** %20, align 8, !tbaa !22
  %273 = getelementptr inbounds %struct.t_coupl_Q* %272, i64 %265, i32 1
  store i32 %271, i32* %273, align 4, !tbaa !63
  %274 = icmp eq i32 %271, -1
  br i1 %274, label %275, label %276

; <label>:275                                     ; preds = %262
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([38 x i8]* @.str78, i64 0, i64 0), i8* %29) #9
  %.pre5.i = load %struct.t_coupl_Q** %20, align 8, !tbaa !22
  br label %276

; <label>:276                                     ; preds = %275, %262
  %277 = phi %struct.t_coupl_Q* [ %.pre5.i, %275 ], [ %272, %262 ]
  %278 = load i32* %ati.i14, align 4, !tbaa !51
  %279 = getelementptr inbounds %struct.t_coupl_Q* %277, i64 %265, i32 0
  store i32 %278, i32* %279, align 4, !tbaa !49
  %280 = load double* %xiQ.i, align 8, !tbaa !16
  %281 = fptrunc double %280 to float
  %282 = getelementptr inbounds %struct.t_coupl_Q* %277, i64 %265, i32 4
  store float %281, float* %282, align 4, !tbaa !64
  %283 = sext i32 %271 to i64
  %284 = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 3, i64 %283
  store i32 1, i32* %284, align 4, !tbaa !51
  br label %add_q.exit

add_q.exit:                                       ; preds = %234, %276
  %285 = phi i32 [ %263, %276 ], [ %50, %234 ]
  %.0.i23 = phi i32 [ 0, %276 ], [ 1, %234 ]
  call void @llvm.lifetime.end(i64 256, i8* %29) #5
  call void @llvm.lifetime.end(i64 4, i8* %37)
  call void @llvm.lifetime.end(i64 8, i8* %38)
  br label %341

; <label>:286                                     ; preds = %231
  %287 = call i32 @strcasecmp(i8* %53, i8* getelementptr inbounds ([6 x i8]* @.str59, i64 0, i64 0)) #9
  %288 = icmp eq i32 %287, 0
  br i1 %288, label %289, label %.thread

; <label>:289                                     ; preds = %286
  %290 = getelementptr inbounds %struct.t_inpfile* %51, i64 %indvars.iv96, i32 3
  %291 = load i8** %290, align 8, !tbaa !82
  call void @llvm.lifetime.start(i64 4, i8* %40)
  call void @llvm.lifetime.start(i64 8, i8* %41)
  call void @llvm.lifetime.start(i64 8, i8* %42)
  call void @llvm.lifetime.start(i64 256, i8* %29) #5
  %292 = call i32 (i8*, i8*, ...)* @sscanf(i8* %291, i8* getelementptr inbounds ([5 x i8]* @.str79, i64 0, i64 0), i8* %29, i32* %type.i) #9
  %293 = icmp eq i32 %292, 2
  br i1 %293, label %294, label %add_ip.exit

; <label>:294                                     ; preds = %289
  %295 = call fastcc i32 @Name2eo(i8* %29) #9
  %296 = icmp eq i32 %295, -1
  br i1 %296, label %297, label %.preheader.i25

; <label>:297                                     ; preds = %294
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([39 x i8]* @.str80, i64 0, i64 0), i8* %29) #9
  br label %.preheader.i25

.preheader.i25:                                   ; preds = %297, %294
  %298 = icmp sgt i32 %47, 0
  br i1 %298, label %.lr.ph.i26, label %310

.lr.ph.i26:                                       ; preds = %.preheader.i25
  %299 = load %struct.t_coupl_iparams** %21, align 8, !tbaa !22
  %300 = load i32* %type.i, align 4, !tbaa !51
  %301 = sext i32 %47 to i64
  br label %302

; <label>:302                                     ; preds = %306, %.lr.ph.i26
  %indvars.iv.i27 = phi i64 [ 0, %.lr.ph.i26 ], [ %indvars.iv.next.i28, %306 ]
  %303 = getelementptr inbounds %struct.t_coupl_iparams* %299, i64 %indvars.iv.i27, i32 0
  %304 = load i32* %303, align 4, !tbaa !55
  %305 = icmp eq i32 %304, %300
  br i1 %305, label %._crit_edge.i29, label %306

; <label>:306                                     ; preds = %302
  %indvars.iv.next.i28 = add nuw nsw i64 %indvars.iv.i27, 1
  %307 = icmp slt i64 %indvars.iv.next.i28, %301
  br i1 %307, label %302, label %._crit_edge2.i30

._crit_edge.i29:                                  ; preds = %302
  %308 = trunc i64 %indvars.iv.i27 to i32
  br label %310

._crit_edge2.i30:                                 ; preds = %306
  %309 = trunc i64 %indvars.iv.next.i28 to i32
  br label %310

; <label>:310                                     ; preds = %._crit_edge2.i30, %._crit_edge.i29, %.preheader.i25
  %i.0.lcssa.i = phi i32 [ %308, %._crit_edge.i29 ], [ %309, %._crit_edge2.i30 ], [ 0, %.preheader.i25 ]
  %311 = icmp slt i32 %i.0.lcssa.i, %47
  br i1 %311, label %312, label %316

; <label>:312                                     ; preds = %310
  %313 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !22
  %314 = load i32* %type.i, align 4, !tbaa !51
  %315 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %313, i8* getelementptr inbounds ([44 x i8]* @.str81, i64 0, i64 0), i32 %314) #9
  br label %322

; <label>:316                                     ; preds = %310
  %317 = load i8** %43, align 8, !tbaa !22
  %318 = mul i32 %47, 56
  %319 = add i32 %318, 56
  %320 = call i8* @save_realloc(i8* getelementptr inbounds ([7 x i8]* @.str82, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str18, i64 0, i64 0), i32 379, i8* %317, i32 %319) #9
  store i8* %320, i8** %43, align 8, !tbaa !22
  %321 = add nsw i32 %47, 1
  br label %322

; <label>:322                                     ; preds = %316, %312
  %323 = phi i32 [ %47, %312 ], [ %321, %316 ]
  %i.1.i = phi i32 [ %i.0.lcssa.i, %312 ], [ %47, %316 ]
  %324 = call i32 (i8*, i8*, ...)* @sscanf(i8* %291, i8* getelementptr inbounds ([11 x i8]* @.str83, i64 0, i64 0), i8* %29, i32* %type.i, double* %kb.i, double* %b0.i) #9
  %325 = icmp eq i32 %324, 4
  br i1 %325, label %326, label %add_ip.exit

; <label>:326                                     ; preds = %322
  %327 = load i32* %type.i, align 4, !tbaa !51
  %328 = sext i32 %i.1.i to i64
  %329 = load %struct.t_coupl_iparams** %21, align 8, !tbaa !22
  %330 = getelementptr inbounds %struct.t_coupl_iparams* %329, i64 %328, i32 0
  store i32 %327, i32* %330, align 4, !tbaa !55
  %331 = getelementptr inbounds %struct.t_coupl_iparams* %329, i64 %328, i32 1
  store i32 %295, i32* %331, align 4, !tbaa !73
  %332 = load double* %kb.i, align 8, !tbaa !16
  %333 = fptrunc double %332 to float
  %334 = getelementptr inbounds %struct.t_coupl_iparams* %329, i64 %328, i32 2, i32 0, i32 1
  store float %333, float* %334, align 4, !tbaa !74
  %335 = load double* %b0.i, align 8, !tbaa !16
  %336 = fptrunc double %335 to float
  %337 = getelementptr inbounds %struct.t_coupl_iparams* %329, i64 %328, i32 2, i32 0, i32 0
  store float %336, float* %337, align 4, !tbaa !76
  %338 = sext i32 %295 to i64
  %339 = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 3, i64 %338
  store i32 1, i32* %339, align 4, !tbaa !51
  br label %add_ip.exit

add_ip.exit:                                      ; preds = %289, %322, %326
  %340 = phi i32 [ %323, %326 ], [ %47, %289 ], [ %323, %322 ]
  %.0.i31 = phi i32 [ 0, %326 ], [ 1, %289 ], [ 1, %322 ]
  call void @llvm.lifetime.end(i64 256, i8* %29) #5
  call void @llvm.lifetime.end(i64 4, i8* %40)
  call void @llvm.lifetime.end(i64 8, i8* %41)
  call void @llvm.lifetime.end(i64 8, i8* %42)
  br label %341

; <label>:341                                     ; preds = %add_bu.exit, %add_ip.exit, %add_q.exit, %add_lj.exit
  %342 = phi i32 [ %50, %add_lj.exit ], [ %50, %add_bu.exit ], [ %285, %add_q.exit ], [ %50, %add_ip.exit ]
  %343 = phi i32 [ %137, %add_lj.exit ], [ %49, %add_bu.exit ], [ %49, %add_q.exit ], [ %49, %add_ip.exit ]
  %344 = phi i32 [ %48, %add_lj.exit ], [ %230, %add_bu.exit ], [ %48, %add_q.exit ], [ %48, %add_ip.exit ]
  %345 = phi i32 [ %47, %add_lj.exit ], [ %47, %add_bu.exit ], [ %47, %add_q.exit ], [ %340, %add_ip.exit ]
  %bWrong.0 = phi i32 [ %.0.i, %add_lj.exit ], [ %.0.i13, %add_bu.exit ], [ %.0.i23, %add_q.exit ], [ %.0.i31, %add_ip.exit ]
  %346 = icmp eq i32 %bWrong.0, 0
  br i1 %346, label %.thread, label %347

; <label>:347                                     ; preds = %341
  %348 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !22
  %349 = load %struct.t_inpfile** %inp, align 8, !tbaa !22
  %350 = getelementptr inbounds %struct.t_inpfile* %349, i64 %indvars.iv96, i32 2
  %351 = load i8** %350, align 8, !tbaa !80
  %352 = getelementptr inbounds %struct.t_inpfile* %349, i64 %indvars.iv96, i32 3
  %353 = load i8** %352, align 8, !tbaa !82
  %354 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %348, i8* getelementptr inbounds ([29 x i8]* @.str61, i64 0, i64 0), i8* %fn, i8* %351, i8* %353) #9
  br label %.thread

.thread:                                          ; preds = %286, %341, %347
  %355 = phi i32 [ %345, %341 ], [ %345, %347 ], [ %47, %286 ]
  %356 = phi i32 [ %344, %341 ], [ %344, %347 ], [ %48, %286 ]
  %357 = phi i32 [ %343, %341 ], [ %343, %347 ], [ %49, %286 ]
  %358 = phi i32 [ %342, %341 ], [ %342, %347 ], [ %50, %286 ]
  %indvars.iv.next97 = add nuw nsw i64 %indvars.iv96, 1
  %359 = load i32* %ninp, align 4, !tbaa !51
  %360 = sext i32 %359 to i64
  %361 = icmp slt i64 %indvars.iv.next97, %360
  br i1 %361, label %46, label %.preheader36

.lr.ph52:                                         ; preds = %.preheader35.lr.ph, %._crit_edge53
  %indvars.iv92 = phi i64 [ 1, %.preheader35.lr.ph ], [ %indvars.iv.next93, %._crit_edge53 ]
  %indvars.iv88 = phi i32 [ 1, %.preheader35.lr.ph ], [ %indvars.iv.next89, %._crit_edge53 ]
  %362 = load %struct.t_coupl_Q** %20, align 8, !tbaa !30
  %363 = getelementptr inbounds %struct.t_coupl_Q* %362, i64 %indvars.iv92, i32 0
  %364 = load i32* %363, align 4, !tbaa !49
  br label %367

.preheader34:                                     ; preds = %._crit_edge53, %.preheader36
  %365 = icmp sgt i32 %357, 1
  br i1 %365, label %.preheader33.lr.ph, label %.preheader32

.preheader33.lr.ph:                               ; preds = %.preheader34
  %366 = add i32 %357, -1
  br label %.lr.ph48

; <label>:367                                     ; preds = %373, %.lr.ph52
  %indvars.iv86 = phi i64 [ 0, %.lr.ph52 ], [ %indvars.iv.next87, %373 ]
  %368 = getelementptr inbounds %struct.t_coupl_Q* %362, i64 %indvars.iv86, i32 0
  %369 = load i32* %368, align 4, !tbaa !49
  %370 = icmp eq i32 %364, %369
  br i1 %370, label %371, label %373

; <label>:371                                     ; preds = %367
  %372 = getelementptr inbounds %struct.t_coupl_Q* %362, i64 %indvars.iv86, i32 2
  store i32 0, i32* %372, align 4, !tbaa !85
  br label %373

; <label>:373                                     ; preds = %367, %371
  %indvars.iv.next87 = add nuw nsw i64 %indvars.iv86, 1
  %lftr.wideiv90 = trunc i64 %indvars.iv.next87 to i32
  %exitcond91 = icmp eq i32 %lftr.wideiv90, %indvars.iv88
  br i1 %exitcond91, label %._crit_edge53, label %367

._crit_edge53:                                    ; preds = %373
  %indvars.iv.next93 = add nuw nsw i64 %indvars.iv92, 1
  %indvars.iv.next89 = add nuw nsw i32 %indvars.iv88, 1
  %lftr.wideiv94 = trunc i64 %indvars.iv92 to i32
  %exitcond95 = icmp eq i32 %lftr.wideiv94, %45
  br i1 %exitcond95, label %.preheader34, label %.lr.ph52

.lr.ph48:                                         ; preds = %.preheader33.lr.ph, %._crit_edge49
  %indvars.iv82 = phi i64 [ 1, %.preheader33.lr.ph ], [ %indvars.iv.next83, %._crit_edge49 ]
  %indvars.iv78 = phi i32 [ 1, %.preheader33.lr.ph ], [ %indvars.iv.next79, %._crit_edge49 ]
  %374 = load %struct.t_coupl_LJ** %18, align 8, !tbaa !26
  %375 = getelementptr inbounds %struct.t_coupl_LJ* %374, i64 %indvars.iv82, i32 0
  %376 = load i32* %375, align 4, !tbaa !34
  %377 = getelementptr inbounds %struct.t_coupl_LJ* %374, i64 %indvars.iv82, i32 1
  br label %380

.preheader32:                                     ; preds = %._crit_edge49, %.preheader34
  %378 = icmp sgt i32 %356, 1
  br i1 %378, label %.preheader.lr.ph, label %._crit_edge46

.preheader.lr.ph:                                 ; preds = %.preheader32
  %379 = add i32 %356, -1
  br label %.lr.ph

; <label>:380                                     ; preds = %405, %.lr.ph48
  %indvars.iv76 = phi i64 [ 0, %.lr.ph48 ], [ %indvars.iv.next77, %405 ]
  %381 = getelementptr inbounds %struct.t_coupl_LJ* %374, i64 %indvars.iv76, i32 0
  %382 = load i32* %381, align 4, !tbaa !34
  %383 = icmp eq i32 %376, %382
  br i1 %383, label %384, label %389

; <label>:384                                     ; preds = %380
  %385 = load i32* %377, align 4, !tbaa !36
  %386 = getelementptr inbounds %struct.t_coupl_LJ* %374, i64 %indvars.iv76, i32 1
  %387 = load i32* %386, align 4, !tbaa !36
  %388 = icmp eq i32 %385, %387
  br i1 %388, label %._crit_edge102, label %389

._crit_edge102:                                   ; preds = %384
  %.pre = load %struct.t_coupl_LJ** %18, align 8, !tbaa !26
  br label %402

; <label>:389                                     ; preds = %384, %380
  %390 = load %struct.t_coupl_LJ** %18, align 8, !tbaa !26
  %391 = getelementptr inbounds %struct.t_coupl_LJ* %390, i64 %indvars.iv82, i32 0
  %392 = load i32* %391, align 4, !tbaa !34
  %393 = getelementptr inbounds %struct.t_coupl_LJ* %390, i64 %indvars.iv76, i32 1
  %394 = load i32* %393, align 4, !tbaa !36
  %395 = icmp eq i32 %392, %394
  br i1 %395, label %396, label %405

; <label>:396                                     ; preds = %389
  %397 = getelementptr inbounds %struct.t_coupl_LJ* %390, i64 %indvars.iv82, i32 1
  %398 = load i32* %397, align 4, !tbaa !36
  %399 = getelementptr inbounds %struct.t_coupl_LJ* %390, i64 %indvars.iv76, i32 0
  %400 = load i32* %399, align 4, !tbaa !34
  %401 = icmp eq i32 %398, %400
  br i1 %401, label %402, label %405

; <label>:402                                     ; preds = %._crit_edge102, %396
  %403 = phi %struct.t_coupl_LJ* [ %.pre, %._crit_edge102 ], [ %390, %396 ]
  %404 = getelementptr inbounds %struct.t_coupl_LJ* %403, i64 %indvars.iv76, i32 3
  store i32 0, i32* %404, align 4, !tbaa !83
  br label %405

; <label>:405                                     ; preds = %389, %396, %402
  %indvars.iv.next77 = add nuw nsw i64 %indvars.iv76, 1
  %lftr.wideiv80 = trunc i64 %indvars.iv.next77 to i32
  %exitcond81 = icmp eq i32 %lftr.wideiv80, %indvars.iv78
  br i1 %exitcond81, label %._crit_edge49, label %380

._crit_edge49:                                    ; preds = %405
  %indvars.iv.next83 = add nuw nsw i64 %indvars.iv82, 1
  %indvars.iv.next79 = add nuw nsw i32 %indvars.iv78, 1
  %lftr.wideiv84 = trunc i64 %indvars.iv82 to i32
  %exitcond85 = icmp eq i32 %lftr.wideiv84, %366
  br i1 %exitcond85, label %.preheader32, label %.lr.ph48

.lr.ph:                                           ; preds = %.preheader.lr.ph, %._crit_edge
  %indvars.iv72 = phi i64 [ 1, %.preheader.lr.ph ], [ %indvars.iv.next73, %._crit_edge ]
  %indvars.iv70 = phi i32 [ 1, %.preheader.lr.ph ], [ %indvars.iv.next71, %._crit_edge ]
  %406 = load %struct.t_coupl_BU** %19, align 8, !tbaa !28
  %407 = getelementptr inbounds %struct.t_coupl_BU* %406, i64 %indvars.iv72, i32 0
  %408 = load i32* %407, align 4, !tbaa !41
  %409 = getelementptr inbounds %struct.t_coupl_BU* %406, i64 %indvars.iv72, i32 1
  br label %410

; <label>:410                                     ; preds = %435, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %435 ]
  %411 = getelementptr inbounds %struct.t_coupl_BU* %406, i64 %indvars.iv, i32 0
  %412 = load i32* %411, align 4, !tbaa !41
  %413 = icmp eq i32 %408, %412
  br i1 %413, label %414, label %419

; <label>:414                                     ; preds = %410
  %415 = load i32* %409, align 4, !tbaa !43
  %416 = getelementptr inbounds %struct.t_coupl_BU* %406, i64 %indvars.iv, i32 1
  %417 = load i32* %416, align 4, !tbaa !43
  %418 = icmp eq i32 %415, %417
  br i1 %418, label %._crit_edge103, label %419

._crit_edge103:                                   ; preds = %414
  %.pre104 = load %struct.t_coupl_BU** %19, align 8, !tbaa !28
  br label %432

; <label>:419                                     ; preds = %414, %410
  %420 = load %struct.t_coupl_BU** %19, align 8, !tbaa !28
  %421 = getelementptr inbounds %struct.t_coupl_BU* %420, i64 %indvars.iv72, i32 0
  %422 = load i32* %421, align 4, !tbaa !41
  %423 = getelementptr inbounds %struct.t_coupl_BU* %420, i64 %indvars.iv, i32 1
  %424 = load i32* %423, align 4, !tbaa !43
  %425 = icmp eq i32 %422, %424
  br i1 %425, label %426, label %435

; <label>:426                                     ; preds = %419
  %427 = getelementptr inbounds %struct.t_coupl_BU* %420, i64 %indvars.iv72, i32 1
  %428 = load i32* %427, align 4, !tbaa !43
  %429 = getelementptr inbounds %struct.t_coupl_BU* %420, i64 %indvars.iv, i32 0
  %430 = load i32* %429, align 4, !tbaa !41
  %431 = icmp eq i32 %428, %430
  br i1 %431, label %432, label %435

; <label>:432                                     ; preds = %._crit_edge103, %426
  %433 = phi %struct.t_coupl_BU* [ %.pre104, %._crit_edge103 ], [ %420, %426 ]
  %434 = getelementptr inbounds %struct.t_coupl_BU* %433, i64 %indvars.iv, i32 3
  store i32 0, i32* %434, align 4, !tbaa !84
  br label %435

; <label>:435                                     ; preds = %419, %426, %432
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %indvars.iv70
  br i1 %exitcond, label %._crit_edge, label %410

._crit_edge:                                      ; preds = %435
  %indvars.iv.next73 = add nuw nsw i64 %indvars.iv72, 1
  %indvars.iv.next71 = add nuw nsw i32 %indvars.iv70, 1
  %lftr.wideiv74 = trunc i64 %indvars.iv72 to i32
  %exitcond75 = icmp eq i32 %lftr.wideiv74, %379
  br i1 %exitcond75, label %._crit_edge46, label %.lr.ph

._crit_edge46:                                    ; preds = %._crit_edge, %8, %.preheader32
  %.lcssa108109116 = phi i32 [ %358, %.preheader32 ], [ 0, %8 ], [ %358, %._crit_edge ]
  %.lcssa41107110115 = phi i32 [ %357, %.preheader32 ], [ 0, %8 ], [ %357, %._crit_edge ]
  %.lcssa42106111114 = phi i32 [ %356, %.preheader32 ], [ 0, %8 ], [ %356, %._crit_edge ]
  %.lcssa43105112113 = phi i32 [ %355, %.preheader32 ], [ 0, %8 ], [ %355, %._crit_edge ]
  %436 = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 6
  store i32 %.lcssa108109116, i32* %436, align 4, !tbaa !29
  %437 = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 4
  store i32 %.lcssa41107110115, i32* %437, align 4, !tbaa !24
  %438 = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 5
  store i32 %.lcssa42106111114, i32* %438, align 4, !tbaa !27
  %439 = getelementptr inbounds %struct.t_coupl_rec* %tcr, i64 0, i32 7
  store i32 %.lcssa43105112113, i32* %439, align 4, !tbaa !47
  %440 = bitcast %struct.t_inpfile** %inp to i8**
  %441 = load i8** %440, align 8, !tbaa !22
  call void @save_free(i8* getelementptr inbounds ([4 x i8]* @.str62, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str18, i64 0, i64 0), i32 497, i8* %441) #9
  ret void
}

; Function Attrs: optsize
declare %struct.t_inpfile* @read_inpfile(i8*, i32*) #1

; Function Attrs: optsize
declare float @get_ereal(i32*, %struct.t_inpfile**, i8*, float) #1

; Function Attrs: optsize
declare i32 @get_eint(i32*, %struct.t_inpfile**, i8*, i32) #1

; Function Attrs: optsize
declare i32 @get_eenum(i32*, %struct.t_inpfile**, i8*, i8**) #1

; Function Attrs: nounwind optsize readonly
declare i32 @strcasecmp(i8* nocapture, i8* nocapture) #7

; Function Attrs: optsize
declare void @save_free(i8*, i8*, i32, i8*) #1

; Function Attrs: optsize
declare void @_blocktx(i32, i32, i32, i8*) #1

; Function Attrs: optsize
declare void @_blockrx(i32, i32, i32, i8*) #1

; Function Attrs: nounwind optsize
declare i32 @sscanf(i8* nocapture readonly, i8* nocapture readonly, ...) #6

; Function Attrs: nounwind optsize ssp uwtable
define internal fastcc i32 @Name2eo(i8* nocapture readonly %s) #4 {
  br label %1

; <label>:1                                       ; preds = %0, %10
  %indvars.iv = phi i64 [ 0, %0 ], [ %indvars.iv.next, %10 ]
  %2 = getelementptr inbounds [17 x i8*]* @eoNames, i64 0, i64 %indvars.iv
  %3 = load i8** %2, align 8, !tbaa !22
  %4 = tail call i32 @strcasecmp(i8* %s, i8* %3) #9
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %10

; <label>:6                                       ; preds = %1
  %7 = trunc i64 %indvars.iv to i32
  %8 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !22
  %9 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %8, i8* getelementptr inbounds ([32 x i8]* @.str70, i64 0, i64 0), i32 %7, i8* %3) #9
  br label %.loopexit

; <label>:10                                      ; preds = %1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %11 = icmp slt i64 %indvars.iv.next, 17
  br i1 %11, label %1, label %.loopexit

.loopexit:                                        ; preds = %10, %6
  %res.0 = phi i32 [ %7, %6 ], [ -1, %10 ]
  ret i32 %res.0
}

; Function Attrs: optsize
declare void @fatal_error(i32, i8*, ...) #1

; Function Attrs: nounwind optsize readnone
declare double @fabs(double) #8

; Function Attrs: optsize
declare i8* @save_realloc(i8*, i8*, i32, i8*, i32) #1

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct.__sFILE* nocapture) #5

declare float @fabsf(float)

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #5

attributes #0 = { alwaysinline nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { alwaysinline nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }
attributes #4 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
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
!18 = !{!19, !7, i64 0}
!19 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20}
!20 = !{!19, !7, i64 16}
!21 = !{!19, !7, i64 8}
!22 = !{!4, !4, i64 0}
!23 = !{!19, !7, i64 12}
!24 = !{!25, !7, i64 224}
!25 = !{!"", !5, i64 0, !5, i64 56, !5, i64 112, !5, i64 168, !7, i64 224, !7, i64 228, !7, i64 232, !7, i64 236, !4, i64 240, !4, i64 248, !4, i64 256, !4, i64 264, !7, i64 272, !7, i64 276, !7, i64 280}
!26 = !{!25, !4, i64 240}
!27 = !{!25, !7, i64 228}
!28 = !{!25, !4, i64 248}
!29 = !{!25, !7, i64 232}
!30 = !{!25, !4, i64 256}
!31 = !{!32, !7, i64 2812}
!32 = !{!"", !7, i64 0, !15, i64 4, !15, i64 8, !15, i64 12, !15, i64 16, !15, i64 20, !15, i64 24, !7, i64 28, !15, i64 32, !15, i64 36, !15, i64 40, !15, i64 44, !15, i64 48, !7, i64 52, !7, i64 56, !15, i64 60, !7, i64 64, !15, i64 68, !4, i64 72, !4, i64 80, !4, i64 88, !4, i64 96, !15, i64 104, !15, i64 108, !4, i64 112, !15, i64 120, !15, i64 124, !15, i64 128, !15, i64 132, !7, i64 136, !15, i64 140, !15, i64 144, !7, i64 148, !7, i64 152, !7, i64 156, !7, i64 160, !7, i64 164, !7, i64 168, !7, i64 172, !7, i64 176, !5, i64 180, !7, i64 192, !7, i64 196, !7, i64 200, !7, i64 204, !4, i64 208, !4, i64 216, !4, i64 224, !4, i64 232, !5, i64 240, !5, i64 1488, !7, i64 2736, !7, i64 2740, !4, i64 2744, !4, i64 2752, !4, i64 2760, !7, i64 2768, !15, i64 2772, !4, i64 2776, !7, i64 2784, !4, i64 2792, !4, i64 2800, !7, i64 2808, !7, i64 2812, !7, i64 2816, !4, i64 2824, !4, i64 2832, !15, i64 2840}
!33 = !{!32, !4, i64 2824}
!34 = !{!35, !7, i64 0}
!35 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !15, i64 16, !15, i64 20, !15, i64 24, !15, i64 28}
!36 = !{!35, !7, i64 4}
!37 = !{!35, !15, i64 16}
!38 = !{!35, !15, i64 20}
!39 = !{!40, !7, i64 4}
!40 = !{!"", !15, i64 0, !7, i64 4, !4, i64 8, !4, i64 16, !4, i64 24, !4, i64 32, !4, i64 40, !4, i64 48, !4, i64 56, !4, i64 64, !4, i64 72, !4, i64 80, !4, i64 88, !4, i64 96, !4, i64 104, !4, i64 112, !4, i64 120, !4, i64 128, !4, i64 136, !4, i64 144, !4, i64 152, !4, i64 160, !4, i64 168}
!41 = !{!42, !7, i64 0}
!42 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !15, i64 16, !15, i64 20, !15, i64 24, !15, i64 28, !15, i64 32, !15, i64 36}
!43 = !{!42, !7, i64 4}
!44 = !{!42, !15, i64 16}
!45 = !{!42, !15, i64 20}
!46 = !{!42, !15, i64 24}
!47 = !{!25, !7, i64 236}
!48 = !{!40, !4, i64 80}
!49 = !{!50, !7, i64 0}
!50 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8, !15, i64 12, !15, i64 16}
!51 = !{!7, !7, i64 0}
!52 = !{!40, !4, i64 40}
!53 = !{!50, !15, i64 12}
!54 = !{!25, !4, i64 264}
!55 = !{!56, !7, i64 0}
!56 = !{!"", !7, i64 0, !7, i64 4, !5, i64 8, !5, i64 32}
!57 = !{!58, !4, i64 24}
!58 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8, !4, i64 16, !4, i64 24, !5, i64 32}
!59 = !{i64 0, i64 4, !14, i64 4, i64 4, !14, i64 8, i64 4, !14, i64 0, i64 4, !14, i64 4, i64 4, !14, i64 8, i64 4, !14, i64 12, i64 4, !14, i64 0, i64 4, !14, i64 4, i64 4, !14, i64 8, i64 4, !14, i64 0, i64 4, !14, i64 4, i64 4, !14, i64 8, i64 4, !14, i64 12, i64 4, !14, i64 16, i64 4, !14, i64 20, i64 4, !14, i64 0, i64 4, !14, i64 4, i64 4, !14, i64 0, i64 4, !14, i64 4, i64 4, !14, i64 8, i64 4, !14, i64 12, i64 4, !14, i64 0, i64 4, !14, i64 4, i64 4, !14, i64 8, i64 4, !51, i64 12, i64 4, !14, i64 16, i64 4, !14, i64 0, i64 4, !14, i64 4, i64 4, !14, i64 0, i64 4, !14, i64 4, i64 4, !14, i64 0, i64 4, !14, i64 4, i64 4, !14, i64 8, i64 4, !14, i64 0, i64 12, !13, i64 12, i64 12, !13, i64 0, i64 24, !13, i64 0, i64 4, !14, i64 4, i64 4, !14, i64 8, i64 4, !14, i64 12, i64 4, !14, i64 16, i64 4, !14, i64 20, i64 4, !14, i64 0, i64 4, !14, i64 4, i64 4, !14, i64 8, i64 4, !14, i64 12, i64 4, !14, i64 16, i64 4, !51, i64 20, i64 4, !51, i64 0, i64 4, !51, i64 4, i64 4, !51, i64 8, i64 4, !51, i64 12, i64 4, !14, i64 16, i64 4, !14, i64 20, i64 4, !14, i64 0, i64 24, !13}
!60 = !{!25, !7, i64 272}
!61 = !{!25, !7, i64 276}
!62 = !{!25, !7, i64 280}
!63 = !{!50, !7, i64 4}
!64 = !{!50, !15, i64 16}
!65 = !{!35, !7, i64 8}
!66 = !{!35, !15, i64 24}
!67 = !{!35, !15, i64 28}
!68 = !{!42, !7, i64 8}
!69 = !{!42, !15, i64 28}
!70 = !{!42, !15, i64 32}
!71 = !{!42, !15, i64 36}
!72 = !{!58, !4, i64 16}
!73 = !{!56, !7, i64 4}
!74 = !{!75, !15, i64 4}
!75 = !{!"", !15, i64 0, !15, i64 4, !15, i64 8, !15, i64 12}
!76 = !{!75, !15, i64 0}
!77 = !{!78, !4, i64 8}
!78 = !{!"", !4, i64 0, !4, i64 8, !7, i64 16, !7, i64 20, !7, i64 24, !79, i64 32, !7, i64 40, !4, i64 48}
!79 = !{!"long", !5, i64 0}
!80 = !{!81, !4, i64 8}
!81 = !{!"", !7, i64 0, !7, i64 4, !4, i64 8, !4, i64 16}
!82 = !{!81, !4, i64 16}
!83 = !{!35, !7, i64 12}
!84 = !{!42, !7, i64 12}
!85 = !{!50, !7, i64 8}
