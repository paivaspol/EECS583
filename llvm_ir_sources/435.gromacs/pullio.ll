; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/pullio.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct.t_pull = type { %struct.t_pullgrps, %struct.t_pullgrps, %struct.t_pullgrps, i32, i32, [3 x float], [3 x float], float, float, [3 x i32], float, float, i32, float, float, float, i32, i32, i32, %struct.__sFILE*, float, float, float, i32, i32, i32 }
%struct.t_pullgrps = type { i32, i32**, float**, i32*, i8**, float*, [3 x float]**, [3 x float]**, [3 x float]*, [3 x float]*, [3 x float]*, [3 x float]*, [3 x float]*, [3 x float]*, [3 x float]*, float*, [3 x float]*, [3 x float]** }
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
%struct.t_inpfile = type { i32, i32, i8*, i8* }

@.str = private unnamed_addr constant [11 x i8] c"out_%d.gro\00", align 1
@.str1 = private unnamed_addr constant [50 x i8] c"grp1:%8.3f%8.3f%8.3f grp2:%8.3f%8.3f%8.3f t:%8.3f\00", align 1
@.str2 = private unnamed_addr constant [29 x i8] c"grp1:%8.3f%8.3f%8.3f t:%8.3f\00", align 1
@.str3 = private unnamed_addr constant [25 x i8] c"%d:%d x:%8.3f%8.3f%8.3f\0A\00", align 1
@.str4 = private unnamed_addr constant [24 x i8] c"%d:%d: f:%8.3f s:%8.3f\0A\00", align 1
@.str5 = private unnamed_addr constant [7 x i8] c"%8.3f\0A\00", align 1
@.str6 = private unnamed_addr constant [23 x i8] c"%d:%d ds:%e f:%e n:%d\0A\00", align 1
@.str7 = private unnamed_addr constant [4 x i8] c"%e \00", align 1
@.str9 = private unnamed_addr constant [136 x i8] c"eConstraint: step %d. Refgroup = dynamic (%f,%f\0AGroup %d (%s): ref. dist = %8.3f, unconstr. dist = %8.3f con. dist = %8.3f f_i = %8.3f\0A\00", align 1
@__stderrp = external global %struct.__sFILE*
@.str10 = private unnamed_addr constant [74 x i8] c"grp %d:ref (%8.3f,%8.3f,%8.3f) unc(%8.3f%8.3f%8.3f\0Acon (%8.3f%8.3f%8.3f)\0A\00", align 1
@.str11 = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str12 = private unnamed_addr constant [10 x i8] c"%e %e %e \00", align 1
@.str13 = private unnamed_addr constant [7 x i8] c"%e %e \00", align 1
@read_pullparams.runtypes = internal global [6 x i8*] [i8* getelementptr inbounds ([6 x i8]* @.str14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str15, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8]* @.str16, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @.str17, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str18, i32 0, i32 0), i8* null], align 16
@.str14 = private unnamed_addr constant [6 x i8] c"start\00", align 1
@.str15 = private unnamed_addr constant [4 x i8] c"afm\00", align 1
@.str16 = private unnamed_addr constant [11 x i8] c"constraint\00", align 1
@.str17 = private unnamed_addr constant [9 x i8] c"umbrella\00", align 1
@.str18 = private unnamed_addr constant [5 x i8] c"test\00", align 1
@read_pullparams.reftypes = internal global [5 x i8*] [i8* getelementptr inbounds ([4 x i8]* @.str19, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str20, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @.str21, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8]* @.str22, i32 0, i32 0), i8* null], align 16
@.str19 = private unnamed_addr constant [4 x i8] c"com\00", align 1
@.str20 = private unnamed_addr constant [7 x i8] c"com_t0\00", align 1
@.str21 = private unnamed_addr constant [8 x i8] c"dynamic\00", align 1
@.str22 = private unnamed_addr constant [11 x i8] c"dynamic_t0\00", align 1
@read_pullparams.reversetypes = internal global [3 x i8*] [i8* getelementptr inbounds ([15 x i8]* @.str23, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @.str24, i32 0, i32 0), i8* null], align 16
@.str23 = private unnamed_addr constant [15 x i8] c"from_reference\00", align 1
@.str24 = private unnamed_addr constant [13 x i8] c"to_reference\00", align 1
@read_pullparams.verbosetypes = internal global [5 x i8*] [i8* getelementptr inbounds ([3 x i8]* @.str25, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str26, i32 0, i32 0), i8* null, i8* null, i8* null], align 16
@.str25 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@.str26 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str27 = private unnamed_addr constant [27 x i8] c"Reading parameter file %s\0A\00", align 1
@.str28 = private unnamed_addr constant [10 x i8] c"; GENERAL\00", align 1
@.str29 = private unnamed_addr constant [8 x i8] c"verbose\00", align 1
@.str30 = private unnamed_addr constant [50 x i8] c"; Runtype: start, afm, constraint, umbrella, test\00", align 1
@.str31 = private unnamed_addr constant [8 x i8] c"runtype\00", align 1
@.str32 = private unnamed_addr constant [22 x i8] c"; Groups to be pulled\00", align 1
@.str33 = private unnamed_addr constant [8 x i8] c"group_1\00", align 1
@.str34 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str35 = private unnamed_addr constant [8 x i8] c"group_2\00", align 1
@.str36 = private unnamed_addr constant [8 x i8] c"group_3\00", align 1
@.str37 = private unnamed_addr constant [8 x i8] c"group_4\00", align 1
@.str38 = private unnamed_addr constant [36 x i8] c"; The group for the reaction force.\00", align 1
@.str39 = private unnamed_addr constant [16 x i8] c"reference_group\00", align 1
@.str40 = private unnamed_addr constant [46 x i8] c"; Ref. type: com, com_t0, dynamic, dynamic_t0\00", align 1
@.str41 = private unnamed_addr constant [8 x i8] c"reftype\00", align 1
@.str42 = private unnamed_addr constant [59 x i8] c"; Use running average for reflag steps for com calculation\00", align 1
@.str43 = private unnamed_addr constant [7 x i8] c"reflag\00", align 1
@.str44 = private unnamed_addr constant [59 x i8] c"; Select components for constraint vector. default: z-only\00", align 1
@.str45 = private unnamed_addr constant [10 x i8] c"direction\00", align 1
@.str46 = private unnamed_addr constant [12 x i8] c"0.0 0.0 1.0\00", align 1
@.str47 = private unnamed_addr constant [56 x i8] c"; Direction for start/afm: to_reference, from_reference\00", align 1
@.str48 = private unnamed_addr constant [8 x i8] c"reverse\00", align 1
@.str49 = private unnamed_addr constant [34 x i8] c"; DYNAMIC REFERENCE GROUP OPTIONS\00", align 1
@.str50 = private unnamed_addr constant [57 x i8] c"; Cylinder radius for dynamic reaction force groups (nm)\00", align 1
@.str51 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str52 = private unnamed_addr constant [56 x i8] c"; Switch from r to rc in case of dynamic reaction force\00", align 1
@.str53 = private unnamed_addr constant [3 x i8] c"rc\00", align 1
@.str54 = private unnamed_addr constant [56 x i8] c"; Update frequency for dynamic reference groups (steps)\00", align 1
@.str55 = private unnamed_addr constant [7 x i8] c"update\00", align 1
@.str56 = private unnamed_addr constant [26 x i8] c"\0A; CONSTRAINT RUN OPTIONS\00", align 1
@.str57 = private unnamed_addr constant [34 x i8] c"; Tolerance of constraints, in nm\00", align 1
@.str58 = private unnamed_addr constant [21 x i8] c"constraint_tolerance\00", align 1
@.str59 = private unnamed_addr constant [15 x i8] c"\0A; AFM OPTIONS\00", align 1
@.str60 = private unnamed_addr constant [27 x i8] c"; pull rate in nm/timestep\00", align 1
@.str61 = private unnamed_addr constant [9 x i8] c"pullrate\00", align 1
@.str62 = private unnamed_addr constant [33 x i8] c"; forceconstant in kJ/(mol*nm^2)\00", align 1
@.str63 = private unnamed_addr constant [14 x i8] c"forceconstant\00", align 1
@.str64 = private unnamed_addr constant [29 x i8] c"\0A; UMBRELLA SAMPLING OPTIONS\00", align 1
@.str65 = private unnamed_addr constant [56 x i8] c"; Width of umbrella sampling potential in kJ/(mol*nm^2)\00", align 1
@.str66 = private unnamed_addr constant [6 x i8] c"width\00", align 1
@.str67 = private unnamed_addr constant [30 x i8] c"\0A; STARTING STRUCTURE OPTIONS\00", align 1
@.str68 = private unnamed_addr constant [68 x i8] c"; Start coord. for making starting struct, rel. to ref. grp.: x y z\00", align 1
@.str69 = private unnamed_addr constant [10 x i8] c"r0_group1\00", align 1
@.str70 = private unnamed_addr constant [10 x i8] c"r0_group2\00", align 1
@.str71 = private unnamed_addr constant [10 x i8] c"tolerance\00", align 1
@.str72 = private unnamed_addr constant [50 x i8] c"; Rate of translation in all directions (nm/step)\00", align 1
@.str73 = private unnamed_addr constant [17 x i8] c"translation_rate\00", align 1
@.str74 = private unnamed_addr constant [56 x i8] c"; Write out structure every ndegr degrees, transstep nm\00", align 1
@.str75 = private unnamed_addr constant [6 x i8] c"ndegr\00", align 1
@.str76 = private unnamed_addr constant [10 x i8] c"transstep\00", align 1
@.str77 = private unnamed_addr constant [12 x i8] c"inp[i].name\00", align 1
@.str78 = private unnamed_addr constant [66 x i8] c"../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/pullio.c\00", align 1
@.str79 = private unnamed_addr constant [13 x i8] c"inp[i].value\00", align 1
@.str80 = private unnamed_addr constant [4 x i8] c"inp\00", align 1
@.str81 = private unnamed_addr constant [24 x i8] c"Groups: %s %s %s %s %s\0A\00", align 1
@.str82 = private unnamed_addr constant [53 x i8] c"Need to specify at least group_1 and reference_group\00", align 1
@.str83 = private unnamed_addr constant [22 x i8] c"Using %d pull groups\0A\00", align 1
@.str84 = private unnamed_addr constant [16 x i8] c"pull->pull.grps\00", align 1
@.str85 = private unnamed_addr constant [15 x i8] c"pull->ref.grps\00", align 1
@.str86 = private unnamed_addr constant [19 x i8] c"pull->pull.xtarget\00", align 1
@.str87 = private unnamed_addr constant [45 x i8] c"Using distance components %2.1f %2.1f %2.1f\0A\00", align 1

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
  %16 = tail call i32 @__swbuf(i32 %_c, %struct.__sFILE* %_p) #7
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
  %3 = tail call float @llvm.fabs.f32(float %__x) #8
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
  %3 = tail call double @llvm.fabs.f64(double %__x) #8
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
  %3 = tail call x86_fp80 @llvm.fabs.f80(x86_fp80 %__x) #8
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
  %1 = tail call float @llvm.fabs.f32(float %__x) #8
  %2 = fcmp oeq float %1, 0x7FF0000000000000
  %3 = zext i1 %2 to i32
  ret i32 %3
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isinfd(double %__x) #2 {
  %1 = tail call double @llvm.fabs.f64(double %__x) #8
  %2 = fcmp oeq double %1, 0x7FF0000000000000
  %3 = zext i1 %2 to i32
  ret i32 %3
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isinfl(x86_fp80 %__x) #2 {
  %1 = tail call x86_fp80 @llvm.fabs.f80(x86_fp80 %__x) #8
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
  %1 = tail call <2 x float> @__sincosf_stret(float %__x) #7
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
  %1 = tail call { double, double } @__sincos_stret(double %__x) #7
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
  %1 = tail call <2 x float> @__sincospif_stret(float %__x) #7
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
  %1 = tail call { double, double } @__sincospi_stret(double %__x) #7
  %2 = extractvalue { double, double } %1, 0
  %3 = extractvalue { double, double } %1, 1
  store double %2, double* %__sinp, align 8, !tbaa !16
  store double %3, double* %__cosp, align 8, !tbaa !16
  ret void
}

; Function Attrs: optsize
declare { double, double } @__sincospi_stret(double) #1

; Function Attrs: nounwind optsize ssp uwtable
define void @dump_conf(%struct.t_pull* nocapture readonly %pull, [3 x float]* %x, [3 x float]* %box, %struct.t_topology* %top, i32 %nout, float %time) #4 {
  %buf = alloca [128 x i8], align 16
  %buf2 = alloca [128 x i8], align 16
  %1 = getelementptr inbounds [128 x i8]* %buf, i64 0, i64 0
  call void @llvm.lifetime.start(i64 128, i8* %1) #5
  %2 = getelementptr inbounds [128 x i8]* %buf2, i64 0, i64 0
  call void @llvm.lifetime.start(i64 128, i8* %2) #5
  %3 = call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* %1, i32 0, i64 128, i8* getelementptr inbounds ([11 x i8]* @.str, i64 0, i64 0), i32 %nout) #7
  %4 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 1, i32 0
  %5 = load i32* %4, align 4, !tbaa !18
  %6 = icmp eq i32 %5, 2
  %7 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 1, i32 9
  %8 = load [3 x float]** %7, align 8, !tbaa !21
  %9 = getelementptr inbounds [3 x float]* %8, i64 0, i64 0
  %10 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 2, i32 9
  %11 = load [3 x float]** %10, align 8, !tbaa !22
  %12 = getelementptr inbounds [3 x float]* %11, i64 0, i64 0
  %13 = load float* %9, align 4, !tbaa !14
  %14 = load float* %12, align 4, !tbaa !14
  %15 = fsub float %13, %14
  %16 = getelementptr inbounds [3 x float]* %8, i64 0, i64 1
  %17 = load float* %16, align 4, !tbaa !14
  %18 = getelementptr inbounds [3 x float]* %11, i64 0, i64 1
  %19 = load float* %18, align 4, !tbaa !14
  %20 = fsub float %17, %19
  %21 = getelementptr inbounds [3 x float]* %8, i64 0, i64 2
  %22 = load float* %21, align 4, !tbaa !14
  %23 = getelementptr inbounds [3 x float]* %11, i64 0, i64 2
  %24 = load float* %23, align 4, !tbaa !14
  %25 = fsub float %22, %24
  br i1 %6, label %26, label %44

; <label>:26                                      ; preds = %0
  %27 = getelementptr inbounds [3 x float]* %8, i64 1, i64 0
  %28 = load float* %27, align 4, !tbaa !14
  %29 = fsub float %28, %14
  %30 = getelementptr inbounds [3 x float]* %8, i64 1, i64 1
  %31 = load float* %30, align 4, !tbaa !14
  %32 = fsub float %31, %19
  %33 = getelementptr inbounds [3 x float]* %8, i64 1, i64 2
  %34 = load float* %33, align 4, !tbaa !14
  %35 = fsub float %34, %24
  %36 = fpext float %15 to double
  %37 = fpext float %20 to double
  %38 = fpext float %25 to double
  %39 = fpext float %29 to double
  %40 = fpext float %32 to double
  %41 = fpext float %35 to double
  %42 = fpext float %time to double
  %43 = call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* %2, i32 0, i64 128, i8* getelementptr inbounds ([50 x i8]* @.str1, i64 0, i64 0), double %36, double %37, double %38, double %39, double %40, double %41, double %42) #7
  br label %50

; <label>:44                                      ; preds = %0
  %45 = fpext float %15 to double
  %46 = fpext float %20 to double
  %47 = fpext float %25 to double
  %48 = fpext float %time to double
  %49 = call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* %2, i32 0, i64 128, i8* getelementptr inbounds ([29 x i8]* @.str2, i64 0, i64 0), double %45, double %46, double %47, double %48) #7
  br label %50

; <label>:50                                      ; preds = %44, %26
  %51 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 2
  call void @write_sto_conf(i8* %1, i8* %2, %struct.t_atoms* %51, [3 x float]* %x, [3 x float]* null, [3 x float]* %box) #7
  call void @llvm.lifetime.end(i64 128, i8* %2) #5
  call void @llvm.lifetime.end(i64 128, i8* %1) #5
  ret void
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #5

; Function Attrs: optsize
declare i32 @__sprintf_chk(i8*, i32, i64, i8*, ...) #1

; Function Attrs: optsize
declare void @write_sto_conf(i8*, i8*, %struct.t_atoms*, [3 x float]*, [3 x float]*, [3 x float]*) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #5

; Function Attrs: nounwind optsize ssp uwtable
define void @print_start(%struct.t_pull* nocapture readonly %pull, i32 %step) #4 {
  %1 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 1, i32 0
  %2 = load i32* %1, align 4, !tbaa !18
  %3 = icmp sgt i32 %2, 0
  br i1 %3, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %0
  %4 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 19
  %5 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 1, i32 9
  br label %6

; <label>:6                                       ; preds = %.lr.ph, %6
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %6 ]
  %7 = load %struct.__sFILE** %4, align 8, !tbaa !23
  %8 = load [3 x float]** %5, align 8, !tbaa !21
  %9 = getelementptr inbounds [3 x float]* %8, i64 %indvars.iv, i64 0
  %10 = load float* %9, align 4, !tbaa !14
  %11 = fpext float %10 to double
  %12 = getelementptr inbounds [3 x float]* %8, i64 %indvars.iv, i64 1
  %13 = load float* %12, align 4, !tbaa !14
  %14 = fpext float %13 to double
  %15 = getelementptr inbounds [3 x float]* %8, i64 %indvars.iv, i64 2
  %16 = load float* %15, align 4, !tbaa !14
  %17 = fpext float %16 to double
  %18 = trunc i64 %indvars.iv to i32
  %19 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %7, i8* getelementptr inbounds ([25 x i8]* @.str3, i64 0, i64 0), i32 %step, i32 %18, double %11, double %14, double %17) #7
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %20 = load i32* %1, align 4, !tbaa !18
  %21 = sext i32 %20 to i64
  %22 = icmp slt i64 %indvars.iv.next, %21
  br i1 %22, label %6, label %._crit_edge

._crit_edge:                                      ; preds = %6, %0
  ret void
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct.__sFILE* nocapture, i8* nocapture readonly, ...) #6

; Function Attrs: nounwind optsize ssp uwtable
define void @print_afm(%struct.t_pull* nocapture readonly %pull, i32 %step) #4 {
  %1 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 1, i32 0
  %2 = load i32* %1, align 4, !tbaa !18
  %3 = icmp sgt i32 %2, 0
  br i1 %3, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %0
  %4 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 25
  %5 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 19
  %6 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 1, i32 12
  %7 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 1, i32 13
  br label %8

; <label>:8                                       ; preds = %.lr.ph, %25
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %25 ]
  %9 = load i32* %4, align 4, !tbaa !24
  %10 = icmp eq i32 %9, 0
  %11 = load %struct.__sFILE** %5, align 8, !tbaa !23
  %12 = load [3 x float]** %6, align 8, !tbaa !25
  %13 = getelementptr inbounds [3 x float]* %12, i64 %indvars.iv, i64 2
  %14 = load float* %13, align 4, !tbaa !14
  %15 = fpext float %14 to double
  br i1 %10, label %23, label %16

; <label>:16                                      ; preds = %8
  %17 = load [3 x float]** %7, align 8, !tbaa !26
  %18 = getelementptr inbounds [3 x float]* %17, i64 %indvars.iv, i64 2
  %19 = load float* %18, align 4, !tbaa !14
  %20 = fpext float %19 to double
  %21 = trunc i64 %indvars.iv to i32
  %22 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %11, i8* getelementptr inbounds ([24 x i8]* @.str4, i64 0, i64 0), i32 %step, i32 %21, double %15, double %20) #7
  br label %25

; <label>:23                                      ; preds = %8
  %24 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %11, i8* getelementptr inbounds ([7 x i8]* @.str5, i64 0, i64 0), double %15) #7
  br label %25

; <label>:25                                      ; preds = %16, %23
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %26 = load i32* %1, align 4, !tbaa !18
  %27 = sext i32 %26 to i64
  %28 = icmp slt i64 %indvars.iv.next, %27
  br i1 %28, label %8, label %._crit_edge

._crit_edge:                                      ; preds = %25, %0
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define void @print_constraint(%struct.t_pull* %pull, [3 x float]* nocapture readnone %f, i32 %step, [3 x float]* nocapture readonly %box, i32 %niter) #4 {
  %tmp = alloca [3 x float], align 4
  %1 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 1, i32 0
  %2 = load i32* %1, align 4, !tbaa !18
  %3 = icmp sgt i32 %2, 0
  br i1 %3, label %.lr.ph4, label %._crit_edge13

._crit_edge13:                                    ; preds = %0
  %.pre14 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 25
  br label %._crit_edge

.lr.ph4:                                          ; preds = %0
  %4 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 17
  %5 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 1, i32 10
  %6 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 2, i32 10
  %7 = getelementptr inbounds [3 x float]* %tmp, i64 0, i64 0
  %8 = getelementptr inbounds [3 x float]* %tmp, i64 0, i64 1
  %9 = getelementptr inbounds [3 x float]* %tmp, i64 0, i64 2
  %10 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 0, i32 10
  %11 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 25
  %12 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 19
  %13 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 1, i32 12
  br label %14

; <label>:14                                      ; preds = %.lr.ph4, %124
  %indvars.iv7 = phi i64 [ 0, %.lr.ph4 ], [ %indvars.iv.next8, %124 ]
  %15 = load i32* %4, align 4, !tbaa !27
  %16 = icmp eq i32 %15, 0
  %17 = load [3 x float]** %5, align 8, !tbaa !28
  %18 = getelementptr inbounds [3 x float]* %17, i64 %indvars.iv7, i64 0
  br i1 %16, label %35, label %19

; <label>:19                                      ; preds = %14
  %20 = load [3 x float]** %10, align 8, !tbaa !29
  %21 = getelementptr inbounds [3 x float]* %20, i64 %indvars.iv7, i64 0
  %22 = load float* %18, align 4, !tbaa !14
  %23 = load float* %21, align 4, !tbaa !14
  %24 = fsub float %22, %23
  %25 = getelementptr inbounds [3 x float]* %17, i64 %indvars.iv7, i64 1
  %26 = load float* %25, align 4, !tbaa !14
  %27 = getelementptr inbounds [3 x float]* %20, i64 %indvars.iv7, i64 1
  %28 = load float* %27, align 4, !tbaa !14
  %29 = fsub float %26, %28
  %30 = getelementptr inbounds [3 x float]* %17, i64 %indvars.iv7, i64 2
  %31 = load float* %30, align 4, !tbaa !14
  %32 = getelementptr inbounds [3 x float]* %20, i64 %indvars.iv7, i64 2
  %33 = load float* %32, align 4, !tbaa !14
  %34 = fsub float %31, %33
  br label %.preheader

; <label>:35                                      ; preds = %14
  %36 = load [3 x float]** %6, align 8, !tbaa !30
  %37 = getelementptr inbounds [3 x float]* %36, i64 0, i64 0
  %38 = load float* %18, align 4, !tbaa !14
  %39 = load float* %37, align 4, !tbaa !14
  %40 = fsub float %38, %39
  %41 = getelementptr inbounds [3 x float]* %17, i64 %indvars.iv7, i64 1
  %42 = load float* %41, align 4, !tbaa !14
  %43 = getelementptr inbounds [3 x float]* %36, i64 0, i64 1
  %44 = load float* %43, align 4, !tbaa !14
  %45 = fsub float %42, %44
  %46 = getelementptr inbounds [3 x float]* %17, i64 %indvars.iv7, i64 2
  %47 = load float* %46, align 4, !tbaa !14
  %48 = getelementptr inbounds [3 x float]* %36, i64 0, i64 2
  %49 = load float* %48, align 4, !tbaa !14
  %50 = fsub float %47, %49
  br label %.preheader

.preheader:                                       ; preds = %35, %19
  %storemerge16 = phi float [ %24, %19 ], [ %40, %35 ]
  %storemerge15 = phi float [ %29, %19 ], [ %45, %35 ]
  %storemerge = phi float [ %34, %19 ], [ %50, %35 ]
  store float %storemerge16, float* %7, align 4, !tbaa !14
  store float %storemerge15, float* %8, align 4, !tbaa !14
  store float %storemerge, float* %9, align 4, !tbaa !14
  br label %51

; <label>:51                                      ; preds = %._crit_edge9, %.preheader
  %52 = phi float [ %storemerge, %.preheader ], [ %.pre, %._crit_edge9 ]
  %indvars.iv5 = phi i64 [ 2, %.preheader ], [ %indvars.iv.next6, %._crit_edge9 ]
  %53 = getelementptr inbounds [3 x float]* %tmp, i64 0, i64 %indvars.iv5
  %54 = fpext float %52 to double
  %55 = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv5
  %56 = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv5, i64 %indvars.iv5
  %57 = load float* %56, align 4, !tbaa !14
  %58 = fpext float %57 to double
  %59 = fmul double %58, -5.000000e-01
  %60 = fcmp olt double %54, %59
  br i1 %60, label %61, label %74

; <label>:61                                      ; preds = %51
  %62 = getelementptr inbounds [3 x float]* %55, i64 0, i64 0
  %63 = load float* %7, align 4, !tbaa !14
  %64 = load float* %62, align 4, !tbaa !14
  %65 = fadd float %63, %64
  %66 = load float* %8, align 4, !tbaa !14
  %67 = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv5, i64 1
  %68 = load float* %67, align 4, !tbaa !14
  %69 = fadd float %66, %68
  %70 = load float* %9, align 4, !tbaa !14
  %71 = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv5, i64 2
  %72 = load float* %71, align 4, !tbaa !14
  %73 = fadd float %70, %72
  store float %65, float* %7, align 4, !tbaa !14
  store float %69, float* %8, align 4, !tbaa !14
  store float %73, float* %9, align 4, !tbaa !14
  %.pre10 = load float* %53, align 4, !tbaa !14
  br label %74

; <label>:74                                      ; preds = %61, %51
  %75 = phi float [ %.pre10, %61 ], [ %52, %51 ]
  %76 = fpext float %75 to double
  %77 = fmul double %58, 5.000000e-01
  %78 = fcmp ogt double %76, %77
  br i1 %78, label %79, label %92

; <label>:79                                      ; preds = %74
  %80 = getelementptr inbounds [3 x float]* %55, i64 0, i64 0
  %81 = load float* %7, align 4, !tbaa !14
  %82 = load float* %80, align 4, !tbaa !14
  %83 = fsub float %81, %82
  %84 = load float* %8, align 4, !tbaa !14
  %85 = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv5, i64 1
  %86 = load float* %85, align 4, !tbaa !14
  %87 = fsub float %84, %86
  %88 = load float* %9, align 4, !tbaa !14
  %89 = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv5, i64 2
  %90 = load float* %89, align 4, !tbaa !14
  %91 = fsub float %88, %90
  store float %83, float* %7, align 4, !tbaa !14
  store float %87, float* %8, align 4, !tbaa !14
  store float %91, float* %9, align 4, !tbaa !14
  %.pre11 = load float* %53, align 4, !tbaa !14
  br label %92

; <label>:92                                      ; preds = %79, %74
  %93 = phi float [ %.pre11, %79 ], [ %75, %74 ]
  %94 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 5, i64 %indvars.iv5
  %95 = load float* %94, align 4, !tbaa !14
  %96 = fmul float %95, %93
  store float %96, float* %53, align 4, !tbaa !14
  %indvars.iv.next6 = add nsw i64 %indvars.iv5, -1
  %97 = icmp sgt i64 %indvars.iv5, 0
  br i1 %97, label %._crit_edge9, label %98

._crit_edge9:                                     ; preds = %92
  %.phi.trans.insert = getelementptr inbounds [3 x float]* %tmp, i64 0, i64 %indvars.iv.next6
  %.pre = load float* %.phi.trans.insert, align 4, !tbaa !14
  br label %51

; <label>:98                                      ; preds = %92
  %99 = load i32* %11, align 4, !tbaa !24
  %100 = icmp eq i32 %99, 0
  %101 = load %struct.__sFILE** %12, align 8, !tbaa !23
  br i1 %100, label %118, label %102

; <label>:102                                     ; preds = %98
  %103 = load float* %7, align 4, !tbaa !14
  %104 = fmul float %103, %103
  %105 = load float* %8, align 4, !tbaa !14
  %106 = fmul float %105, %105
  %107 = fadd float %104, %106
  %108 = load float* %9, align 4, !tbaa !14
  %109 = fmul float %108, %108
  %110 = fadd float %107, %109
  %sqrtf.i = tail call float @sqrtf(float %110) #9
  %111 = fpext float %sqrtf.i to double
  %112 = load [3 x float]** %13, align 8, !tbaa !25
  %113 = getelementptr inbounds [3 x float]* %112, i64 %indvars.iv7, i64 2
  %114 = load float* %113, align 4, !tbaa !14
  %115 = fpext float %114 to double
  %116 = trunc i64 %indvars.iv7 to i32
  %117 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %101, i8* getelementptr inbounds ([23 x i8]* @.str6, i64 0, i64 0), i32 %step, i32 %116, double %111, double %115, i32 %niter) #7
  br label %124

; <label>:118                                     ; preds = %98
  %119 = load [3 x float]** %13, align 8, !tbaa !25
  %120 = getelementptr inbounds [3 x float]* %119, i64 %indvars.iv7, i64 2
  %121 = load float* %120, align 4, !tbaa !14
  %122 = fpext float %121 to double
  %123 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %101, i8* getelementptr inbounds ([4 x i8]* @.str7, i64 0, i64 0), double %122) #7
  br label %124

; <label>:124                                     ; preds = %102, %118
  %indvars.iv.next8 = add nuw nsw i64 %indvars.iv7, 1
  %125 = load i32* %1, align 4, !tbaa !18
  %126 = sext i32 %125 to i64
  %127 = icmp slt i64 %indvars.iv.next8, %126
  br i1 %127, label %14, label %._crit_edge

._crit_edge:                                      ; preds = %124, %._crit_edge13
  %.pre-phi = phi i32* [ %.pre14, %._crit_edge13 ], [ %11, %124 ]
  %128 = phi i32 [ %2, %._crit_edge13 ], [ %125, %124 ]
  %129 = load i32* %.pre-phi, align 4, !tbaa !24
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %131, label %.thread.preheader

; <label>:131                                     ; preds = %._crit_edge
  %132 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 19
  %133 = load %struct.__sFILE** %132, align 8, !tbaa !23
  %fputc = tail call i32 @fputc(i32 10, %struct.__sFILE* %133)
  %.pr = load i32* %.pre-phi, align 4, !tbaa !24
  %134 = icmp eq i32 %.pr, 0
  br i1 %134, label %.loopexit, label %..thread.preheader_crit_edge

..thread.preheader_crit_edge:                     ; preds = %131
  %.pre12 = load i32* %1, align 4, !tbaa !18
  br label %.thread.preheader

.thread.preheader:                                ; preds = %..thread.preheader_crit_edge, %._crit_edge
  %135 = phi i32 [ %.pre12, %..thread.preheader_crit_edge ], [ %128, %._crit_edge ]
  %136 = icmp sgt i32 %135, 0
  br i1 %136, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.thread.preheader
  %137 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 17
  %138 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 2, i32 8
  %139 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 1, i32 8
  %140 = getelementptr inbounds [3 x float]* %tmp, i64 0, i64 0
  %141 = getelementptr inbounds [3 x float]* %tmp, i64 0, i64 1
  %142 = getelementptr inbounds [3 x float]* %tmp, i64 0, i64 2
  %143 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 2, i32 9
  %144 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 1, i32 9
  %145 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 2, i32 10
  %146 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 1, i32 10
  %147 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 19
  %148 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 7
  %149 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 8
  %150 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 1, i32 4
  %151 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 0, i32 8
  %152 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 0, i32 9
  %153 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 0, i32 10
  %154 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 1, i32 12
  br label %155

; <label>:155                                     ; preds = %.lr.ph, %.thread
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %.thread ]
  %156 = load i32* %137, align 4, !tbaa !27
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %197, label %158

; <label>:158                                     ; preds = %155
  %159 = load %struct.__sFILE** %147, align 8, !tbaa !23
  %160 = load float* %148, align 4, !tbaa !31
  %161 = fpext float %160 to double
  %162 = load float* %149, align 4, !tbaa !32
  %163 = fpext float %162 to double
  %164 = load i8*** %150, align 8, !tbaa !33
  %165 = getelementptr inbounds i8** %164, i64 %indvars.iv
  %166 = load i8** %165, align 8, !tbaa !34
  %167 = load [3 x float]** %151, align 8, !tbaa !35
  %168 = getelementptr inbounds [3 x float]* %167, i64 %indvars.iv, i64 2
  %169 = load float* %168, align 4, !tbaa !14
  %170 = load [3 x float]** %139, align 8, !tbaa !36
  %171 = getelementptr inbounds [3 x float]* %170, i64 %indvars.iv, i64 2
  %172 = load float* %171, align 4, !tbaa !14
  %173 = fsub float %169, %172
  %174 = fpext float %173 to double
  %175 = load [3 x float]** %152, align 8, !tbaa !37
  %176 = getelementptr inbounds [3 x float]* %175, i64 %indvars.iv, i64 2
  %177 = load float* %176, align 4, !tbaa !14
  %178 = load [3 x float]** %144, align 8, !tbaa !21
  %179 = getelementptr inbounds [3 x float]* %178, i64 %indvars.iv, i64 2
  %180 = load float* %179, align 4, !tbaa !14
  %181 = fsub float %177, %180
  %182 = fpext float %181 to double
  %183 = load [3 x float]** %153, align 8, !tbaa !29
  %184 = getelementptr inbounds [3 x float]* %183, i64 %indvars.iv, i64 2
  %185 = load float* %184, align 4, !tbaa !14
  %186 = load [3 x float]** %146, align 8, !tbaa !28
  %187 = getelementptr inbounds [3 x float]* %186, i64 %indvars.iv, i64 2
  %188 = load float* %187, align 4, !tbaa !14
  %189 = fsub float %185, %188
  %190 = fpext float %189 to double
  %191 = load [3 x float]** %154, align 8, !tbaa !25
  %192 = getelementptr inbounds [3 x float]* %191, i64 %indvars.iv, i64 2
  %193 = load float* %192, align 4, !tbaa !14
  %194 = fpext float %193 to double
  %195 = trunc i64 %indvars.iv to i32
  %196 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %159, i8* getelementptr inbounds ([136 x i8]* @.str9, i64 0, i64 0), i32 %step, double %161, double %163, i32 %195, i8* %166, double %174, double %182, double %190, double %194) #7
  br label %.thread

; <label>:197                                     ; preds = %155
  %198 = load [3 x float]** %138, align 8, !tbaa !38
  %199 = getelementptr inbounds [3 x float]* %198, i64 0, i64 0
  %200 = load [3 x float]** %139, align 8, !tbaa !36
  %201 = getelementptr inbounds [3 x float]* %200, i64 %indvars.iv, i64 0
  %202 = load float* %199, align 4, !tbaa !14
  %203 = load float* %201, align 4, !tbaa !14
  %204 = fsub float %202, %203
  %205 = getelementptr inbounds [3 x float]* %198, i64 0, i64 1
  %206 = load float* %205, align 4, !tbaa !14
  %207 = getelementptr inbounds [3 x float]* %200, i64 %indvars.iv, i64 1
  %208 = load float* %207, align 4, !tbaa !14
  %209 = fsub float %206, %208
  %210 = getelementptr inbounds [3 x float]* %198, i64 0, i64 2
  %211 = load float* %210, align 4, !tbaa !14
  %212 = getelementptr inbounds [3 x float]* %200, i64 %indvars.iv, i64 2
  %213 = load float* %212, align 4, !tbaa !14
  %214 = fsub float %211, %213
  store float %204, float* %140, align 4, !tbaa !14
  store float %209, float* %141, align 4, !tbaa !14
  store float %214, float* %142, align 4, !tbaa !14
  %215 = load [3 x float]** %143, align 8, !tbaa !22
  %216 = getelementptr inbounds [3 x float]* %215, i64 0, i64 0
  %217 = load [3 x float]** %144, align 8, !tbaa !21
  %218 = getelementptr inbounds [3 x float]* %217, i64 %indvars.iv, i64 0
  %219 = load float* %216, align 4, !tbaa !14
  %220 = load float* %218, align 4, !tbaa !14
  %221 = fsub float %219, %220
  %222 = getelementptr inbounds [3 x float]* %215, i64 0, i64 1
  %223 = load float* %222, align 4, !tbaa !14
  %224 = getelementptr inbounds [3 x float]* %217, i64 %indvars.iv, i64 1
  %225 = load float* %224, align 4, !tbaa !14
  %226 = fsub float %223, %225
  %227 = getelementptr inbounds [3 x float]* %215, i64 0, i64 2
  %228 = load float* %227, align 4, !tbaa !14
  %229 = getelementptr inbounds [3 x float]* %217, i64 %indvars.iv, i64 2
  %230 = load float* %229, align 4, !tbaa !14
  %231 = fsub float %228, %230
  %232 = load [3 x float]** %145, align 8, !tbaa !30
  %233 = getelementptr inbounds [3 x float]* %232, i64 0, i64 0
  %234 = load [3 x float]** %146, align 8, !tbaa !28
  %235 = getelementptr inbounds [3 x float]* %234, i64 %indvars.iv, i64 0
  %236 = load float* %233, align 4, !tbaa !14
  %237 = load float* %235, align 4, !tbaa !14
  %238 = fsub float %236, %237
  %239 = getelementptr inbounds [3 x float]* %232, i64 0, i64 1
  %240 = load float* %239, align 4, !tbaa !14
  %241 = getelementptr inbounds [3 x float]* %234, i64 %indvars.iv, i64 1
  %242 = load float* %241, align 4, !tbaa !14
  %243 = fsub float %240, %242
  %244 = getelementptr inbounds [3 x float]* %232, i64 0, i64 2
  %245 = load float* %244, align 4, !tbaa !14
  %246 = getelementptr inbounds [3 x float]* %234, i64 %indvars.iv, i64 2
  %247 = load float* %246, align 4, !tbaa !14
  %248 = fsub float %245, %247
  %249 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !34
  %250 = fpext float %204 to double
  %251 = fpext float %209 to double
  %252 = fpext float %214 to double
  %253 = fpext float %221 to double
  %254 = fpext float %226 to double
  %255 = fpext float %231 to double
  %256 = fpext float %238 to double
  %257 = fpext float %243 to double
  %258 = fpext float %248 to double
  %259 = trunc i64 %indvars.iv to i32
  %260 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %249, i8* getelementptr inbounds ([74 x i8]* @.str10, i64 0, i64 0), i32 %259, double %250, double %251, double %252, double %253, double %254, double %255, double %256, double %257, double %258) #7
  br label %.thread

.thread:                                          ; preds = %158, %197
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %261 = load i32* %1, align 4, !tbaa !18
  %262 = sext i32 %261 to i64
  %263 = icmp slt i64 %indvars.iv.next, %262
  br i1 %263, label %155, label %.loopexit

.loopexit:                                        ; preds = %.thread, %.thread.preheader, %131
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define void @print_umbrella(%struct.t_pull* nocapture readonly %pull, i32 %step) #4 {
  %1 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 25
  %2 = load i32* %1, align 4, !tbaa !24
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %.preheader5, label %10

.preheader5:                                      ; preds = %0
  %4 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 1, i32 0
  %5 = load i32* %4, align 4, !tbaa !18
  %6 = icmp sgt i32 %5, 0
  %7 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 19
  br i1 %6, label %.preheader.lr.ph, label %._crit_edge

.preheader.lr.ph:                                 ; preds = %.preheader5
  %8 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 1, i32 9
  %9 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 1, i32 12
  br label %.preheader

; <label>:10                                      ; preds = %0
  %11 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 19
  %12 = load %struct.__sFILE** %11, align 8, !tbaa !23
  %13 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %12, i8* getelementptr inbounds ([4 x i8]* @.str11, i64 0, i64 0), i32 %step) #7
  %14 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 1, i32 0
  %15 = load i32* %14, align 4, !tbaa !18
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %.preheader6.lr.ph, label %._crit_edge11

.preheader6.lr.ph:                                ; preds = %10
  %17 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 1, i32 8
  %18 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 1, i32 9
  %19 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 1, i32 12
  br label %.preheader6

.preheader6:                                      ; preds = %.preheader6.lr.ph, %41
  %indvars.iv17 = phi i64 [ 0, %.preheader6.lr.ph ], [ %indvars.iv.next18, %41 ]
  br label %20

; <label>:20                                      ; preds = %40, %.preheader6
  %indvars.iv14 = phi i64 [ 0, %.preheader6 ], [ %indvars.iv.next15, %40 ]
  %21 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 5, i64 %indvars.iv14
  %22 = load float* %21, align 4, !tbaa !14
  %fabsf1 = tail call float @fabsf(float %22) #9
  %23 = fpext float %fabsf1 to double
  %24 = fcmp ogt double %23, 1.200000e-38
  br i1 %24, label %25, label %40

; <label>:25                                      ; preds = %20
  %26 = load %struct.__sFILE** %11, align 8, !tbaa !23
  %27 = load [3 x float]** %17, align 8, !tbaa !36
  %28 = getelementptr inbounds [3 x float]* %27, i64 %indvars.iv17, i64 %indvars.iv14
  %29 = load float* %28, align 4, !tbaa !14
  %30 = fpext float %29 to double
  %31 = load [3 x float]** %18, align 8, !tbaa !21
  %32 = getelementptr inbounds [3 x float]* %31, i64 %indvars.iv17, i64 %indvars.iv14
  %33 = load float* %32, align 4, !tbaa !14
  %34 = fpext float %33 to double
  %35 = load [3 x float]** %19, align 8, !tbaa !25
  %36 = getelementptr inbounds [3 x float]* %35, i64 %indvars.iv17, i64 %indvars.iv14
  %37 = load float* %36, align 4, !tbaa !14
  %38 = fpext float %37 to double
  %39 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %26, i8* getelementptr inbounds ([10 x i8]* @.str12, i64 0, i64 0), double %30, double %34, double %38) #7
  br label %40

; <label>:40                                      ; preds = %20, %25
  %indvars.iv.next15 = add nuw nsw i64 %indvars.iv14, 1
  %exitcond16 = icmp eq i64 %indvars.iv.next15, 3
  br i1 %exitcond16, label %41, label %20

; <label>:41                                      ; preds = %40
  %indvars.iv.next18 = add nuw nsw i64 %indvars.iv17, 1
  %42 = load i32* %14, align 4, !tbaa !18
  %43 = sext i32 %42 to i64
  %44 = icmp slt i64 %indvars.iv.next18, %43
  br i1 %44, label %.preheader6, label %._crit_edge11

._crit_edge11:                                    ; preds = %41, %10
  %45 = load %struct.__sFILE** %11, align 8, !tbaa !23
  %fputc = tail call i32 @fputc(i32 10, %struct.__sFILE* %45)
  br label %68

.preheader:                                       ; preds = %.preheader.lr.ph, %63
  %indvars.iv12 = phi i64 [ 0, %.preheader.lr.ph ], [ %indvars.iv.next13, %63 ]
  br label %46

; <label>:46                                      ; preds = %62, %.preheader
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %62 ]
  %47 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 5, i64 %indvars.iv
  %48 = load float* %47, align 4, !tbaa !14
  %fabsf = tail call float @fabsf(float %48) #9
  %49 = fpext float %fabsf to double
  %50 = fcmp ogt double %49, 1.200000e-38
  br i1 %50, label %51, label %62

; <label>:51                                      ; preds = %46
  %52 = load %struct.__sFILE** %7, align 8, !tbaa !23
  %53 = load [3 x float]** %8, align 8, !tbaa !21
  %54 = getelementptr inbounds [3 x float]* %53, i64 %indvars.iv12, i64 %indvars.iv
  %55 = load float* %54, align 4, !tbaa !14
  %56 = fpext float %55 to double
  %57 = load [3 x float]** %9, align 8, !tbaa !25
  %58 = getelementptr inbounds [3 x float]* %57, i64 %indvars.iv12, i64 %indvars.iv
  %59 = load float* %58, align 4, !tbaa !14
  %60 = fpext float %59 to double
  %61 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %52, i8* getelementptr inbounds ([7 x i8]* @.str13, i64 0, i64 0), double %56, double %60) #7
  br label %62

; <label>:62                                      ; preds = %46, %51
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 3
  br i1 %exitcond, label %63, label %46

; <label>:63                                      ; preds = %62
  %indvars.iv.next13 = add nuw nsw i64 %indvars.iv12, 1
  %64 = load i32* %4, align 4, !tbaa !18
  %65 = sext i32 %64 to i64
  %66 = icmp slt i64 %indvars.iv.next13, %65
  br i1 %66, label %.preheader, label %._crit_edge

._crit_edge:                                      ; preds = %63, %.preheader5
  %67 = load %struct.__sFILE** %7, align 8, !tbaa !23
  %fputc4 = tail call i32 @fputc(i32 10, %struct.__sFILE* %67)
  br label %68

; <label>:68                                      ; preds = %._crit_edge, %._crit_edge11
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define void @read_pullparams(%struct.t_pull* %pull, i8* %infile, i8* %outfile) #4 {
  %inp = alloca %struct.t_inpfile*, align 8
  %ninp = alloca i32, align 4
  %dummy = alloca [4096 x i8], align 16
  %grp1buf = alloca [4096 x i8], align 16
  %grp2buf = alloca [4096 x i8], align 16
  %grp3buf = alloca [4096 x i8], align 16
  %grp4buf = alloca [4096 x i8], align 16
  %grp5buf = alloca [4096 x i8], align 16
  %bf1 = alloca [4096 x i8], align 16
  %bf2 = alloca [4096 x i8], align 16
  %dir = alloca [4096 x i8], align 16
  %nerror = alloca i32, align 4
  %1 = getelementptr inbounds [4096 x i8]* %dummy, i64 0, i64 0
  call void @llvm.lifetime.start(i64 4096, i8* %1) #5
  %2 = getelementptr inbounds [4096 x i8]* %grp1buf, i64 0, i64 0
  call void @llvm.lifetime.start(i64 4096, i8* %2) #5
  %3 = getelementptr inbounds [4096 x i8]* %grp2buf, i64 0, i64 0
  call void @llvm.lifetime.start(i64 4096, i8* %3) #5
  %4 = getelementptr inbounds [4096 x i8]* %grp3buf, i64 0, i64 0
  call void @llvm.lifetime.start(i64 4096, i8* %4) #5
  %5 = getelementptr inbounds [4096 x i8]* %grp4buf, i64 0, i64 0
  call void @llvm.lifetime.start(i64 4096, i8* %5) #5
  %6 = getelementptr inbounds [4096 x i8]* %grp5buf, i64 0, i64 0
  call void @llvm.lifetime.start(i64 4096, i8* %6) #5
  %7 = getelementptr inbounds [4096 x i8]* %bf1, i64 0, i64 0
  call void @llvm.lifetime.start(i64 4096, i8* %7) #5
  %8 = getelementptr inbounds [4096 x i8]* %bf2, i64 0, i64 0
  call void @llvm.lifetime.start(i64 4096, i8* %8) #5
  %9 = getelementptr inbounds [4096 x i8]* %dir, i64 0, i64 0
  call void @llvm.lifetime.start(i64 4096, i8* %9) #5
  store i32 0, i32* %nerror, align 4, !tbaa !39
  %10 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !34
  %11 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %10, i8* getelementptr inbounds ([27 x i8]* @.str27, i64 0, i64 0), i8* %infile) #7
  %12 = call %struct.t_inpfile* @read_inpfile(i8* %infile, i32* %ninp) #7
  store %struct.t_inpfile* %12, %struct.t_inpfile** %inp, align 8, !tbaa !34
  %13 = call i8* @get_estr(i32* %ninp, %struct.t_inpfile** %inp, i8* getelementptr inbounds ([10 x i8]* @.str28, i64 0, i64 0), i8* null) #7
  %14 = icmp eq i8* %13, null
  br i1 %14, label %17, label %15

; <label>:15                                      ; preds = %0
  %16 = call i8* @__strcpy_chk(i8* %1, i8* %13, i64 4096) #7
  br label %17

; <label>:17                                      ; preds = %0, %15
  %18 = call i32 @get_eeenum(i32* %ninp, %struct.t_inpfile** %inp, i8* getelementptr inbounds ([8 x i8]* @.str29, i64 0, i64 0), i8** getelementptr inbounds ([5 x i8*]* @read_pullparams.verbosetypes, i64 0, i64 0), i32* %nerror, i32 1) #7
  %19 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 25
  store i32 %18, i32* %19, align 4, !tbaa !24
  %20 = call i8* @get_estr(i32* %ninp, %struct.t_inpfile** %inp, i8* getelementptr inbounds ([50 x i8]* @.str30, i64 0, i64 0), i8* null) #7
  %21 = icmp eq i8* %20, null
  br i1 %21, label %24, label %22

; <label>:22                                      ; preds = %17
  %23 = call i8* @__strcpy_chk(i8* %1, i8* %20, i64 4096) #7
  br label %24

; <label>:24                                      ; preds = %17, %22
  %25 = call i32 @get_eeenum(i32* %ninp, %struct.t_inpfile** %inp, i8* getelementptr inbounds ([8 x i8]* @.str31, i64 0, i64 0), i8** getelementptr inbounds ([6 x i8*]* @read_pullparams.runtypes, i64 0, i64 0), i32* %nerror, i32 1) #7
  %26 = call i8* @get_estr(i32* %ninp, %struct.t_inpfile** %inp, i8* getelementptr inbounds ([22 x i8]* @.str32, i64 0, i64 0), i8* null) #7
  %27 = icmp eq i8* %26, null
  br i1 %27, label %30, label %28

; <label>:28                                      ; preds = %24
  %29 = call i8* @__strcpy_chk(i8* %1, i8* %26, i64 4096) #7
  br label %30

; <label>:30                                      ; preds = %24, %28
  %31 = call i8* @get_estr(i32* %ninp, %struct.t_inpfile** %inp, i8* getelementptr inbounds ([8 x i8]* @.str33, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str34, i64 0, i64 0)) #7
  %32 = icmp eq i8* %31, null
  br i1 %32, label %35, label %33

; <label>:33                                      ; preds = %30
  %34 = call i8* @__strcpy_chk(i8* %2, i8* %31, i64 4096) #7
  br label %35

; <label>:35                                      ; preds = %30, %33
  %36 = call i8* @get_estr(i32* %ninp, %struct.t_inpfile** %inp, i8* getelementptr inbounds ([8 x i8]* @.str35, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str34, i64 0, i64 0)) #7
  %37 = icmp eq i8* %36, null
  br i1 %37, label %40, label %38

; <label>:38                                      ; preds = %35
  %39 = call i8* @__strcpy_chk(i8* %3, i8* %36, i64 4096) #7
  br label %40

; <label>:40                                      ; preds = %35, %38
  %41 = call i8* @get_estr(i32* %ninp, %struct.t_inpfile** %inp, i8* getelementptr inbounds ([8 x i8]* @.str36, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str34, i64 0, i64 0)) #7
  %42 = icmp eq i8* %41, null
  br i1 %42, label %45, label %43

; <label>:43                                      ; preds = %40
  %44 = call i8* @__strcpy_chk(i8* %4, i8* %41, i64 4096) #7
  br label %45

; <label>:45                                      ; preds = %40, %43
  %46 = call i8* @get_estr(i32* %ninp, %struct.t_inpfile** %inp, i8* getelementptr inbounds ([8 x i8]* @.str37, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str34, i64 0, i64 0)) #7
  %47 = icmp eq i8* %46, null
  br i1 %47, label %50, label %48

; <label>:48                                      ; preds = %45
  %49 = call i8* @__strcpy_chk(i8* %5, i8* %46, i64 4096) #7
  br label %50

; <label>:50                                      ; preds = %45, %48
  %51 = call i8* @get_estr(i32* %ninp, %struct.t_inpfile** %inp, i8* getelementptr inbounds ([36 x i8]* @.str38, i64 0, i64 0), i8* null) #7
  %52 = icmp eq i8* %51, null
  br i1 %52, label %55, label %53

; <label>:53                                      ; preds = %50
  %54 = call i8* @__strcpy_chk(i8* %1, i8* %51, i64 4096) #7
  br label %55

; <label>:55                                      ; preds = %50, %53
  %56 = call i8* @get_estr(i32* %ninp, %struct.t_inpfile** %inp, i8* getelementptr inbounds ([16 x i8]* @.str39, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str34, i64 0, i64 0)) #7
  %57 = icmp eq i8* %56, null
  br i1 %57, label %60, label %58

; <label>:58                                      ; preds = %55
  %59 = call i8* @__strcpy_chk(i8* %6, i8* %56, i64 4096) #7
  br label %60

; <label>:60                                      ; preds = %55, %58
  %61 = call i8* @get_estr(i32* %ninp, %struct.t_inpfile** %inp, i8* getelementptr inbounds ([46 x i8]* @.str40, i64 0, i64 0), i8* null) #7
  %62 = icmp eq i8* %61, null
  br i1 %62, label %65, label %63

; <label>:63                                      ; preds = %60
  %64 = call i8* @__strcpy_chk(i8* %1, i8* %61, i64 4096) #7
  br label %65

; <label>:65                                      ; preds = %60, %63
  %66 = call i32 @get_eeenum(i32* %ninp, %struct.t_inpfile** %inp, i8* getelementptr inbounds ([8 x i8]* @.str41, i64 0, i64 0), i8** getelementptr inbounds ([5 x i8*]* @read_pullparams.reftypes, i64 0, i64 0), i32* %nerror, i32 1) #7
  %67 = call i8* @get_estr(i32* %ninp, %struct.t_inpfile** %inp, i8* getelementptr inbounds ([59 x i8]* @.str42, i64 0, i64 0), i8* null) #7
  %68 = icmp eq i8* %67, null
  br i1 %68, label %71, label %69

; <label>:69                                      ; preds = %65
  %70 = call i8* @__strcpy_chk(i8* %1, i8* %67, i64 4096) #7
  br label %71

; <label>:71                                      ; preds = %65, %69
  %72 = call i32 @get_eint(i32* %ninp, %struct.t_inpfile** %inp, i8* getelementptr inbounds ([7 x i8]* @.str43, i64 0, i64 0), i32 1) #7
  %73 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 24
  store i32 %72, i32* %73, align 4, !tbaa !40
  %74 = call i8* @get_estr(i32* %ninp, %struct.t_inpfile** %inp, i8* getelementptr inbounds ([59 x i8]* @.str44, i64 0, i64 0), i8* null) #7
  %75 = icmp eq i8* %74, null
  br i1 %75, label %78, label %76

; <label>:76                                      ; preds = %71
  %77 = call i8* @__strcpy_chk(i8* %1, i8* %74, i64 4096) #7
  br label %78

; <label>:78                                      ; preds = %71, %76
  %79 = call i8* @get_estr(i32* %ninp, %struct.t_inpfile** %inp, i8* getelementptr inbounds ([10 x i8]* @.str45, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8]* @.str46, i64 0, i64 0)) #7
  %80 = icmp eq i8* %79, null
  br i1 %80, label %83, label %81

; <label>:81                                      ; preds = %78
  %82 = call i8* @__strcpy_chk(i8* %9, i8* %79, i64 4096) #7
  br label %83

; <label>:83                                      ; preds = %78, %81
  %84 = call i8* @get_estr(i32* %ninp, %struct.t_inpfile** %inp, i8* getelementptr inbounds ([56 x i8]* @.str47, i64 0, i64 0), i8* null) #7
  %85 = icmp eq i8* %84, null
  br i1 %85, label %88, label %86

; <label>:86                                      ; preds = %83
  %87 = call i8* @__strcpy_chk(i8* %1, i8* %84, i64 4096) #7
  br label %88

; <label>:88                                      ; preds = %83, %86
  %89 = call i32 @get_eeenum(i32* %ninp, %struct.t_inpfile** %inp, i8* getelementptr inbounds ([8 x i8]* @.str48, i64 0, i64 0), i8** getelementptr inbounds ([3 x i8*]* @read_pullparams.reversetypes, i64 0, i64 0), i32* %nerror, i32 1) #7
  %90 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 18
  store i32 %89, i32* %90, align 4, !tbaa !41
  %91 = call i8* @get_estr(i32* %ninp, %struct.t_inpfile** %inp, i8* getelementptr inbounds ([34 x i8]* @.str49, i64 0, i64 0), i8* null) #7
  %92 = icmp eq i8* %91, null
  br i1 %92, label %95, label %93

; <label>:93                                      ; preds = %88
  %94 = call i8* @__strcpy_chk(i8* %1, i8* %91, i64 4096) #7
  br label %95

; <label>:95                                      ; preds = %88, %93
  %96 = call i8* @get_estr(i32* %ninp, %struct.t_inpfile** %inp, i8* getelementptr inbounds ([57 x i8]* @.str50, i64 0, i64 0), i8* null) #7
  %97 = icmp eq i8* %96, null
  br i1 %97, label %100, label %98

; <label>:98                                      ; preds = %95
  %99 = call i8* @__strcpy_chk(i8* %1, i8* %96, i64 4096) #7
  br label %100

; <label>:100                                     ; preds = %95, %98
  %101 = call float @get_ereal(i32* %ninp, %struct.t_inpfile** %inp, i8* getelementptr inbounds ([2 x i8]* @.str51, i64 0, i64 0), float 0.000000e+00) #7
  %102 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 7
  store float %101, float* %102, align 4, !tbaa !31
  %103 = call i8* @get_estr(i32* %ninp, %struct.t_inpfile** %inp, i8* getelementptr inbounds ([56 x i8]* @.str52, i64 0, i64 0), i8* null) #7
  %104 = icmp eq i8* %103, null
  br i1 %104, label %107, label %105

; <label>:105                                     ; preds = %100
  %106 = call i8* @__strcpy_chk(i8* %1, i8* %103, i64 4096) #7
  br label %107

; <label>:107                                     ; preds = %100, %105
  %108 = call float @get_ereal(i32* %ninp, %struct.t_inpfile** %inp, i8* getelementptr inbounds ([3 x i8]* @.str53, i64 0, i64 0), float 0.000000e+00) #7
  %109 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 8
  store float %108, float* %109, align 4, !tbaa !32
  %110 = call i8* @get_estr(i32* %ninp, %struct.t_inpfile** %inp, i8* getelementptr inbounds ([56 x i8]* @.str54, i64 0, i64 0), i8* null) #7
  %111 = icmp eq i8* %110, null
  br i1 %111, label %114, label %112

; <label>:112                                     ; preds = %107
  %113 = call i8* @__strcpy_chk(i8* %1, i8* %110, i64 4096) #7
  br label %114

; <label>:114                                     ; preds = %107, %112
  %115 = call i32 @get_eint(i32* %ninp, %struct.t_inpfile** %inp, i8* getelementptr inbounds ([7 x i8]* @.str55, i64 0, i64 0), i32 1) #7
  %116 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 23
  store i32 %115, i32* %116, align 4, !tbaa !42
  %117 = call i8* @get_estr(i32* %ninp, %struct.t_inpfile** %inp, i8* getelementptr inbounds ([26 x i8]* @.str56, i64 0, i64 0), i8* null) #7
  %118 = icmp eq i8* %117, null
  br i1 %118, label %121, label %119

; <label>:119                                     ; preds = %114
  %120 = call i8* @__strcpy_chk(i8* %1, i8* %117, i64 4096) #7
  br label %121

; <label>:121                                     ; preds = %114, %119
  %122 = call i8* @get_estr(i32* %ninp, %struct.t_inpfile** %inp, i8* getelementptr inbounds ([34 x i8]* @.str57, i64 0, i64 0), i8* null) #7
  %123 = icmp eq i8* %122, null
  br i1 %123, label %126, label %124

; <label>:124                                     ; preds = %121
  %125 = call i8* @__strcpy_chk(i8* %1, i8* %122, i64 4096) #7
  br label %126

; <label>:126                                     ; preds = %121, %124
  %127 = call float @get_ereal(i32* %ninp, %struct.t_inpfile** %inp, i8* getelementptr inbounds ([21 x i8]* @.str58, i64 0, i64 0), float 0x3EB0C6F7A0000000) #7
  %128 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 15
  store float %127, float* %128, align 4, !tbaa !43
  %129 = call i8* @get_estr(i32* %ninp, %struct.t_inpfile** %inp, i8* getelementptr inbounds ([15 x i8]* @.str59, i64 0, i64 0), i8* null) #7
  %130 = icmp eq i8* %129, null
  br i1 %130, label %133, label %131

; <label>:131                                     ; preds = %126
  %132 = call i8* @__strcpy_chk(i8* %1, i8* %129, i64 4096) #7
  br label %133

; <label>:133                                     ; preds = %126, %131
  %134 = call i8* @get_estr(i32* %ninp, %struct.t_inpfile** %inp, i8* getelementptr inbounds ([27 x i8]* @.str60, i64 0, i64 0), i8* null) #7
  %135 = icmp eq i8* %134, null
  br i1 %135, label %138, label %136

; <label>:136                                     ; preds = %133
  %137 = call i8* @__strcpy_chk(i8* %1, i8* %134, i64 4096) #7
  br label %138

; <label>:138                                     ; preds = %133, %136
  %139 = call float @get_ereal(i32* %ninp, %struct.t_inpfile** %inp, i8* getelementptr inbounds ([9 x i8]* @.str61, i64 0, i64 0), float 0.000000e+00) #7
  %140 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 21
  store float %139, float* %140, align 4, !tbaa !44
  %141 = call i8* @get_estr(i32* %ninp, %struct.t_inpfile** %inp, i8* getelementptr inbounds ([33 x i8]* @.str62, i64 0, i64 0), i8* null) #7
  %142 = icmp eq i8* %141, null
  br i1 %142, label %145, label %143

; <label>:143                                     ; preds = %138
  %144 = call i8* @__strcpy_chk(i8* %1, i8* %141, i64 4096) #7
  br label %145

; <label>:145                                     ; preds = %138, %143
  %146 = call float @get_ereal(i32* %ninp, %struct.t_inpfile** %inp, i8* getelementptr inbounds ([14 x i8]* @.str63, i64 0, i64 0), float 0.000000e+00) #7
  %147 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 20
  store float %146, float* %147, align 4, !tbaa !45
  %148 = call i8* @get_estr(i32* %ninp, %struct.t_inpfile** %inp, i8* getelementptr inbounds ([29 x i8]* @.str64, i64 0, i64 0), i8* null) #7
  %149 = icmp eq i8* %148, null
  br i1 %149, label %152, label %150

; <label>:150                                     ; preds = %145
  %151 = call i8* @__strcpy_chk(i8* %1, i8* %148, i64 4096) #7
  br label %152

; <label>:152                                     ; preds = %145, %150
  %153 = call i8* @get_estr(i32* %ninp, %struct.t_inpfile** %inp, i8* getelementptr inbounds ([56 x i8]* @.str65, i64 0, i64 0), i8* null) #7
  %154 = icmp eq i8* %153, null
  br i1 %154, label %157, label %155

; <label>:155                                     ; preds = %152
  %156 = call i8* @__strcpy_chk(i8* %1, i8* %153, i64 4096) #7
  br label %157

; <label>:157                                     ; preds = %152, %155
  %158 = call float @get_ereal(i32* %ninp, %struct.t_inpfile** %inp, i8* getelementptr inbounds ([6 x i8]* @.str66, i64 0, i64 0), float 0.000000e+00) #7
  %159 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 22
  store float %158, float* %159, align 4, !tbaa !46
  %160 = call i8* @get_estr(i32* %ninp, %struct.t_inpfile** %inp, i8* getelementptr inbounds ([30 x i8]* @.str67, i64 0, i64 0), i8* null) #7
  %161 = icmp eq i8* %160, null
  br i1 %161, label %164, label %162

; <label>:162                                     ; preds = %157
  %163 = call i8* @__strcpy_chk(i8* %1, i8* %160, i64 4096) #7
  br label %164

; <label>:164                                     ; preds = %157, %162
  %165 = call i8* @get_estr(i32* %ninp, %struct.t_inpfile** %inp, i8* getelementptr inbounds ([68 x i8]* @.str68, i64 0, i64 0), i8* null) #7
  %166 = icmp eq i8* %165, null
  br i1 %166, label %169, label %167

; <label>:167                                     ; preds = %164
  %168 = call i8* @__strcpy_chk(i8* %1, i8* %165, i64 4096) #7
  br label %169

; <label>:169                                     ; preds = %164, %167
  %170 = call i8* @get_estr(i32* %ninp, %struct.t_inpfile** %inp, i8* getelementptr inbounds ([10 x i8]* @.str69, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str34, i64 0, i64 0)) #7
  %171 = icmp eq i8* %170, null
  br i1 %171, label %174, label %172

; <label>:172                                     ; preds = %169
  %173 = call i8* @__strcpy_chk(i8* %7, i8* %170, i64 4096) #7
  br label %174

; <label>:174                                     ; preds = %169, %172
  %175 = call i8* @get_estr(i32* %ninp, %struct.t_inpfile** %inp, i8* getelementptr inbounds ([10 x i8]* @.str70, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str34, i64 0, i64 0)) #7
  %176 = icmp eq i8* %175, null
  br i1 %176, label %179, label %177

; <label>:177                                     ; preds = %174
  %178 = call i8* @__strcpy_chk(i8* %8, i8* %175, i64 4096) #7
  br label %179

; <label>:179                                     ; preds = %174, %177
  %180 = call float @get_ereal(i32* %ninp, %struct.t_inpfile** %inp, i8* getelementptr inbounds ([10 x i8]* @.str71, i64 0, i64 0), float 0x3FA99999A0000000) #7
  %181 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 14
  store float %180, float* %181, align 4, !tbaa !47
  %182 = call i8* @get_estr(i32* %ninp, %struct.t_inpfile** %inp, i8* getelementptr inbounds ([50 x i8]* @.str72, i64 0, i64 0), i8* null) #7
  %183 = icmp eq i8* %182, null
  br i1 %183, label %186, label %184

; <label>:184                                     ; preds = %179
  %185 = call i8* @__strcpy_chk(i8* %1, i8* %182, i64 4096) #7
  br label %186

; <label>:186                                     ; preds = %179, %184
  %187 = call float @get_ereal(i32* %ninp, %struct.t_inpfile** %inp, i8* getelementptr inbounds ([17 x i8]* @.str73, i64 0, i64 0), float 0.000000e+00) #7
  %188 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 11
  store float %187, float* %188, align 4, !tbaa !48
  %189 = call i8* @get_estr(i32* %ninp, %struct.t_inpfile** %inp, i8* getelementptr inbounds ([56 x i8]* @.str74, i64 0, i64 0), i8* null) #7
  %190 = icmp eq i8* %189, null
  br i1 %190, label %193, label %191

; <label>:191                                     ; preds = %186
  %192 = call i8* @__strcpy_chk(i8* %1, i8* %189, i64 4096) #7
  br label %193

; <label>:193                                     ; preds = %186, %191
  %194 = call i32 @get_eint(i32* %ninp, %struct.t_inpfile** %inp, i8* getelementptr inbounds ([6 x i8]* @.str75, i64 0, i64 0), i32 0) #7
  %195 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 12
  store i32 %194, i32* %195, align 4, !tbaa !49
  %196 = call float @get_ereal(i32* %ninp, %struct.t_inpfile** %inp, i8* getelementptr inbounds ([10 x i8]* @.str76, i64 0, i64 0), float 0x3F50624DE0000000) #7
  %197 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 13
  store float %196, float* %197, align 4, !tbaa !50
  %198 = load i32* %ninp, align 4, !tbaa !39
  %199 = load %struct.t_inpfile** %inp, align 8, !tbaa !34
  call void @write_inpfile(i8* %outfile, i32 %198, %struct.t_inpfile* %199) #7
  %200 = load i32* %ninp, align 4, !tbaa !39
  %201 = icmp sgt i32 %200, 0
  br i1 %201, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %193, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %193 ]
  %202 = load %struct.t_inpfile** %inp, align 8, !tbaa !34
  %203 = getelementptr inbounds %struct.t_inpfile* %202, i64 %indvars.iv, i32 2
  %204 = load i8** %203, align 8, !tbaa !51
  call void @save_free(i8* getelementptr inbounds ([12 x i8]* @.str77, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str78, i64 0, i64 0), i32 280, i8* %204) #7
  %205 = load %struct.t_inpfile** %inp, align 8, !tbaa !34
  %206 = getelementptr inbounds %struct.t_inpfile* %205, i64 %indvars.iv, i32 3
  %207 = load i8** %206, align 8, !tbaa !53
  call void @save_free(i8* getelementptr inbounds ([13 x i8]* @.str79, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str78, i64 0, i64 0), i32 281, i8* %207) #7
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %208 = load i32* %ninp, align 4, !tbaa !39
  %209 = sext i32 %208 to i64
  %210 = icmp slt i64 %indvars.iv.next, %209
  br i1 %210, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %193
  %211 = bitcast %struct.t_inpfile** %inp to i8**
  %212 = load i8** %211, align 8, !tbaa !34
  call void @save_free(i8* getelementptr inbounds ([4 x i8]* @.str80, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str78, i64 0, i64 0), i32 283, i8* %212) #7
  %213 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 3
  store i32 %25, i32* %213, align 4, !tbaa !54
  %214 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 4
  store i32 %66, i32* %214, align 4, !tbaa !55
  %215 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !34
  %216 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %215, i8* getelementptr inbounds ([24 x i8]* @.str81, i64 0, i64 0), i8* %2, i8* %3, i8* %4, i8* %5, i8* %5) #7
  %strcmpload = load i8* %2, align 16
  %217 = icmp eq i8 %strcmpload, 0
  %strcmpload4 = load i8* %6, align 16
  %218 = icmp eq i8 %strcmpload4, 0
  %or.cond = or i1 %217, %218
  br i1 %or.cond, label %219, label %220

; <label>:219                                     ; preds = %._crit_edge
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([53 x i8]* @.str82, i64 0, i64 0)) #7
  br label %220

; <label>:220                                     ; preds = %._crit_edge, %219
  %221 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 1, i32 0
  %strcmpload1 = load i8* %3, align 16
  %222 = icmp eq i8 %strcmpload1, 0
  %.6 = select i1 %222, i32 1, i32 2
  store i32 %.6, i32* %221, align 4, !tbaa !18
  %strcmpload2 = load i8* %4, align 16
  %223 = icmp eq i8 %strcmpload2, 0
  br i1 %223, label %226, label %224

; <label>:224                                     ; preds = %220
  %225 = add nuw nsw i32 %.6, 1
  store i32 %225, i32* %221, align 4, !tbaa !18
  br label %226

; <label>:226                                     ; preds = %220, %224
  %227 = phi i32 [ %.6, %220 ], [ %225, %224 ]
  %strcmpload3 = load i8* %5, align 16
  %228 = icmp eq i8 %strcmpload3, 0
  br i1 %228, label %231, label %229

; <label>:229                                     ; preds = %226
  %230 = add nsw i32 %227, 1
  store i32 %230, i32* %221, align 4, !tbaa !18
  br label %231

; <label>:231                                     ; preds = %226, %229
  %232 = phi i32 [ %227, %226 ], [ %230, %229 ]
  %233 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !34
  %234 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %233, i8* getelementptr inbounds ([22 x i8]* @.str83, i64 0, i64 0), i32 %232) #7
  %235 = load i32* %221, align 4, !tbaa !18
  %236 = call i8* @save_calloc(i8* getelementptr inbounds ([16 x i8]* @.str84, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str78, i64 0, i64 0), i32 305, i32 %235, i32 8) #7
  %237 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 1, i32 4
  %238 = bitcast i8*** %237 to i8**
  store i8* %236, i8** %238, align 8, !tbaa !33
  %239 = call i8* @save_calloc(i8* getelementptr inbounds ([15 x i8]* @.str85, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str78, i64 0, i64 0), i32 306, i32 1, i32 8) #7
  %240 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 2, i32 4
  %241 = bitcast i8*** %240 to i8**
  store i8* %239, i8** %241, align 8, !tbaa !56
  %242 = call i8* @strdup(i8* %2) #7
  %243 = load i8*** %237, align 8, !tbaa !33
  store i8* %242, i8** %243, align 8, !tbaa !34
  %244 = call i8* @strdup(i8* %3) #7
  %245 = load i8*** %237, align 8, !tbaa !33
  %246 = getelementptr inbounds i8** %245, i64 1
  store i8* %244, i8** %246, align 8, !tbaa !34
  %247 = call i8* @strdup(i8* %4) #7
  %248 = load i8*** %237, align 8, !tbaa !33
  %249 = getelementptr inbounds i8** %248, i64 2
  store i8* %247, i8** %249, align 8, !tbaa !34
  %250 = call i8* @strdup(i8* %5) #7
  %251 = load i8*** %237, align 8, !tbaa !33
  %252 = getelementptr inbounds i8** %251, i64 3
  store i8* %250, i8** %252, align 8, !tbaa !34
  %253 = call i8* @strdup(i8* %6) #7
  %254 = load i8*** %240, align 8, !tbaa !56
  store i8* %253, i8** %254, align 8, !tbaa !34
  %255 = load i32* %213, align 4, !tbaa !54
  %256 = icmp eq i32 %255, 0
  br i1 %256, label %257, label %268

; <label>:257                                     ; preds = %231
  %258 = load i32* %221, align 4, !tbaa !18
  %259 = call i8* @save_calloc(i8* getelementptr inbounds ([19 x i8]* @.str86, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str78, i64 0, i64 0), i32 314, i32 %258, i32 12) #7
  %260 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 1, i32 16
  %261 = bitcast [3 x float]** %260 to i8**
  store i8* %259, i8** %261, align 8, !tbaa !57
  %262 = bitcast i8* %259 to float*
  call void @string2rvec(i8* %7, float* %262) #7
  %263 = load i32* %221, align 4, !tbaa !18
  %264 = icmp eq i32 %263, 2
  br i1 %264, label %265, label %268

; <label>:265                                     ; preds = %257
  %266 = load [3 x float]** %260, align 8, !tbaa !57
  %267 = getelementptr inbounds [3 x float]* %266, i64 1, i64 0
  call void @string2rvec(i8* %8, float* %267) #7
  br label %268

; <label>:268                                     ; preds = %257, %265, %231
  %269 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 5, i64 0
  call void @string2rvec(i8* %9, float* %269) #7
  %270 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !34
  %271 = load float* %269, align 4, !tbaa !14
  %272 = fpext float %271 to double
  %273 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 5, i64 1
  %274 = load float* %273, align 4, !tbaa !14
  %275 = fpext float %274 to double
  %276 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 5, i64 2
  %277 = load float* %276, align 4, !tbaa !14
  %278 = fpext float %277 to double
  %279 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %270, i8* getelementptr inbounds ([45 x i8]* @.str87, i64 0, i64 0), double %272, double %275, double %278) #7
  %280 = load float* %102, align 4, !tbaa !31
  %281 = fpext float %280 to double
  %282 = fcmp ogt double %281, 1.000000e-03
  %283 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 17
  %. = zext i1 %282 to i32
  store i32 %., i32* %283, align 4, !tbaa !27
  call void @llvm.lifetime.end(i64 4096, i8* %9) #5
  call void @llvm.lifetime.end(i64 4096, i8* %8) #5
  call void @llvm.lifetime.end(i64 4096, i8* %7) #5
  call void @llvm.lifetime.end(i64 4096, i8* %6) #5
  call void @llvm.lifetime.end(i64 4096, i8* %5) #5
  call void @llvm.lifetime.end(i64 4096, i8* %4) #5
  call void @llvm.lifetime.end(i64 4096, i8* %3) #5
  call void @llvm.lifetime.end(i64 4096, i8* %2) #5
  call void @llvm.lifetime.end(i64 4096, i8* %1) #5
  ret void
}

; Function Attrs: optsize
declare %struct.t_inpfile* @read_inpfile(i8*, i32*) #1

; Function Attrs: optsize
declare i8* @get_estr(i32*, %struct.t_inpfile**, i8*, i8*) #1

; Function Attrs: nounwind optsize
declare i8* @__strcpy_chk(i8*, i8*, i64) #6

; Function Attrs: optsize
declare i32 @get_eeenum(i32*, %struct.t_inpfile**, i8*, i8**, i32*, i32) #1

; Function Attrs: optsize
declare i32 @get_eint(i32*, %struct.t_inpfile**, i8*, i32) #1

; Function Attrs: optsize
declare float @get_ereal(i32*, %struct.t_inpfile**, i8*, float) #1

; Function Attrs: optsize
declare void @write_inpfile(i8*, i32, %struct.t_inpfile*) #1

; Function Attrs: optsize
declare void @save_free(i8*, i8*, i32, i8*) #1

; Function Attrs: optsize
declare void @fatal_error(i32, i8*, ...) #1

; Function Attrs: optsize
declare i8* @save_calloc(i8*, i8*, i32, i32, i32) #1

; Function Attrs: nounwind optsize
declare noalias i8* @strdup(i8* nocapture readonly) #6

; Function Attrs: optsize
declare void @string2rvec(i8*, float*) #1

; Function Attrs: nounwind
declare i32 @fputc(i32, %struct.__sFILE* nocapture) #5

declare float @sqrtf(float)

declare float @fabsf(float)

attributes #0 = { alwaysinline nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { alwaysinline nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }
attributes #4 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind optsize }
attributes #8 = { readnone }
attributes #9 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }

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
!18 = !{!19, !7, i64 144}
!19 = !{!"", !20, i64 0, !20, i64 144, !20, i64 288, !5, i64 432, !5, i64 436, !5, i64 440, !5, i64 452, !15, i64 464, !15, i64 468, !5, i64 472, !15, i64 484, !15, i64 488, !7, i64 492, !15, i64 496, !15, i64 500, !15, i64 504, !7, i64 508, !7, i64 512, !7, i64 516, !4, i64 520, !15, i64 528, !15, i64 532, !15, i64 536, !7, i64 540, !7, i64 544, !7, i64 548}
!20 = !{!"", !7, i64 0, !4, i64 8, !4, i64 16, !4, i64 24, !4, i64 32, !4, i64 40, !4, i64 48, !4, i64 56, !4, i64 64, !4, i64 72, !4, i64 80, !4, i64 88, !4, i64 96, !4, i64 104, !4, i64 112, !4, i64 120, !4, i64 128, !4, i64 136}
!21 = !{!19, !4, i64 216}
!22 = !{!19, !4, i64 360}
!23 = !{!19, !4, i64 520}
!24 = !{!19, !7, i64 548}
!25 = !{!19, !4, i64 240}
!26 = !{!19, !4, i64 248}
!27 = !{!19, !7, i64 512}
!28 = !{!19, !4, i64 224}
!29 = !{!19, !4, i64 80}
!30 = !{!19, !4, i64 368}
!31 = !{!19, !15, i64 464}
!32 = !{!19, !15, i64 468}
!33 = !{!19, !4, i64 176}
!34 = !{!4, !4, i64 0}
!35 = !{!19, !4, i64 64}
!36 = !{!19, !4, i64 208}
!37 = !{!19, !4, i64 72}
!38 = !{!19, !4, i64 352}
!39 = !{!7, !7, i64 0}
!40 = !{!19, !7, i64 544}
!41 = !{!19, !7, i64 516}
!42 = !{!19, !7, i64 540}
!43 = !{!19, !15, i64 504}
!44 = !{!19, !15, i64 532}
!45 = !{!19, !15, i64 528}
!46 = !{!19, !15, i64 536}
!47 = !{!19, !15, i64 500}
!48 = !{!19, !15, i64 488}
!49 = !{!19, !7, i64 492}
!50 = !{!19, !15, i64 496}
!51 = !{!52, !4, i64 8}
!52 = !{!"", !7, i64 0, !7, i64 4, !4, i64 8, !4, i64 16}
!53 = !{!52, !4, i64 16}
!54 = !{!19, !5, i64 432}
!55 = !{!19, !5, i64 436}
!56 = !{!19, !4, i64 320}
!57 = !{!19, !4, i64 272}
