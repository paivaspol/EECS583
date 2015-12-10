; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/pullinit.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct.t_filenm = type { i32, i8*, i8*, i64 }
%struct.t_pull = type { %struct.t_pullgrps, %struct.t_pullgrps, %struct.t_pullgrps, i32, i32, [3 x float], [3 x float], float, float, [3 x i32], float, float, i32, float, float, float, i32, i32, i32, %struct.__sFILE*, float, float, float, i32, i32, i32 }
%struct.t_pullgrps = type { i32, i32**, float**, i32*, i8**, float*, [3 x float]**, [3 x float]**, [3 x float]*, [3 x float]*, [3 x float]*, [3 x float]*, [3 x float]*, [3 x float]*, [3 x float]*, float*, [3 x float]*, [3 x float]** }
%struct.t_mdatoms = type { float, i32, float*, float*, float*, float*, float*, float*, float*, i32*, i32*, i32*, i32*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16* }
%struct.t_block = type { [256 x i32], i32, i32*, i32, i32* }

@.str = private unnamed_addr constant [4 x i8] c"-pi\00", align 1
@.str1 = private unnamed_addr constant [4 x i8] c"-pd\00", align 1
@.str2 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str3 = private unnamed_addr constant [4 x i8] c"-po\00", align 1
@.str4 = private unnamed_addr constant [30 x i8] c"rc or r is too small or zero.\00", align 1
@.str5 = private unnamed_addr constant [4 x i8] c"-pn\00", align 1
@__stderrp = external global %struct.__sFILE*
@.str6 = private unnamed_addr constant [35 x i8] c"read_whole_index: %d groups total\0A\00", align 1
@.str7 = private unnamed_addr constant [27 x i8] c"group %i (%s) %d elements\0A\00", align 1
@.str8 = private unnamed_addr constant [16 x i8] c"pull->ref.x0[0]\00", align 1
@.str9 = private unnamed_addr constant [68 x i8] c"../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/pullinit.c\00", align 1
@.str10 = private unnamed_addr constant [16 x i8] c"pull->ref.xp[0]\00", align 1
@.str11 = private unnamed_addr constant [21 x i8] c"pull->ref.comhist[0]\00", align 1
@.str12 = private unnamed_addr constant [22 x i8] c"pull->dyna.comhist[i]\00", align 1
@.str13 = private unnamed_addr constant [105 x i8] c"Initializing pull groups. Mass of group %d: %8.3f\0AInitial coordinates center of mass: %8.3f %8.3f %8.3f\0A\00", align 1
@.str14 = private unnamed_addr constant [97 x i8] c"Initializing reference group. Mass: %8.3f\0AInitial coordinates center of mass: %8.3f %8.3f %8.3f\0A\00", align 1
@.str15 = private unnamed_addr constant [120 x i8] c"Initializing dynamic groups. %d atoms. Weighted massfor %d:%8.3f\0AInitial coordinates center of mass: %8.3f %8.3f %8.3f\0A\00", align 1
@.str16 = private unnamed_addr constant [55 x i8] c"\0APull rate: %e nm/step. Force constant: %e kJ/(mol nm)\00", align 1
@.str17 = private unnamed_addr constant [50 x i8] c"\0APull direction: %8.3f %8.3f %8.3f bReverse = %d\0A\00", align 1
@.str18 = private unnamed_addr constant [162 x i8] c"**************************************************\0A                      END   PULL INFO                    \0A**************************************************\0A\0A\00", align 1
@.str19 = private unnamed_addr constant [161 x i8] c"\0A**************************************************\0A                         PULL INFO                      \0A**************************************************\0A\00", align 1
@.str20 = private unnamed_addr constant [42 x i8] c"RUN TYPE: Generating Starting structures\0A\00", align 1
@.str21 = private unnamed_addr constant [15 x i8] c"RUN TYPE: Afm\0A\00", align 1
@.str22 = private unnamed_addr constant [22 x i8] c"RUN TYPE: Constraint\0A\00", align 1
@.str23 = private unnamed_addr constant [29 x i8] c"RUN TYPE: Umbrella sampling\0A\00", align 1
@.str24 = private unnamed_addr constant [20 x i8] c"RUN TYPE: Test run\0A\00", align 1
@.str25 = private unnamed_addr constant [56 x i8] c"RUN TYPE: WARNING! pullinit does not know this runtype\0A\00", align 1
@.str26 = private unnamed_addr constant [51 x i8] c"REFERENCE TYPE: center of mass of reference group\0A\00", align 1
@.str27 = private unnamed_addr constant [58 x i8] c"REFERENCE TYPE: center of mass of reference group at t=0\0A\00", align 1
@.str28 = private unnamed_addr constant [59 x i8] c"REFERENCE TYPE: center of mass of dynamically made groups\0A\00", align 1
@.str29 = private unnamed_addr constant [51 x i8] c"Using dynamic reference groups: r=%8.3f, rc=%8.3f\0A\00", align 1
@.str30 = private unnamed_addr constant [103 x i8] c"REFERENCE TYPE: center of mass of dynamically made groups,\0Abased on the positions of its atoms at t=0\0A\00", align 1
@.str31 = private unnamed_addr constant [49 x i8] c"REFERENCE TYPE: no clue! What did you do wrong?\0A\00", align 1
@.str32 = private unnamed_addr constant [10 x i8] c"pull->ngx\00", align 1
@.str33 = private unnamed_addr constant [12 x i8] c"pull->x_con\00", align 1
@.str34 = private unnamed_addr constant [12 x i8] c"pull->xprev\00", align 1
@.str35 = private unnamed_addr constant [12 x i8] c"pull->tmass\00", align 1
@.str36 = private unnamed_addr constant [10 x i8] c"pull->idx\00", align 1
@.str37 = private unnamed_addr constant [8 x i8] c"pull->f\00", align 1
@.str38 = private unnamed_addr constant [13 x i8] c"pull->spring\00", align 1
@.str39 = private unnamed_addr constant [10 x i8] c"pull->dir\00", align 1
@.str40 = private unnamed_addr constant [12 x i8] c"pull->x_unc\00", align 1
@.str41 = private unnamed_addr constant [12 x i8] c"pull->x_ref\00", align 1
@.str42 = private unnamed_addr constant [12 x i8] c"pull->d_ref\00", align 1
@.str43 = private unnamed_addr constant [9 x i8] c"pull->x0\00", align 1
@.str44 = private unnamed_addr constant [9 x i8] c"pull->xp\00", align 1
@.str45 = private unnamed_addr constant [14 x i8] c"pull->comhist\00", align 1
@.str46 = private unnamed_addr constant [24 x i8] c"No index file specified\00", align 1
@.str47 = private unnamed_addr constant [24 x i8] c"No groups in indexfile\0A\00", align 1
@.str48 = private unnamed_addr constant [7 x i8] c"*index\00", align 1
@.str49 = private unnamed_addr constant [10 x i8] c"*grpnames\00", align 1
@.str50 = private unnamed_addr constant [7 x i8] c"(*ngx)\00", align 1
@.str51 = private unnamed_addr constant [12 x i8] c"(*index)[i]\00", align 1
@.str52 = private unnamed_addr constant [10 x i8] c"gnames[i]\00", align 1
@.str53 = private unnamed_addr constant [7 x i8] c"gnames\00", align 1
@.str54 = private unnamed_addr constant [5 x i8] c"grps\00", align 1
@.str55 = private unnamed_addr constant [23 x i8] c"Looking for group %s: \00", align 1
@.str56 = private unnamed_addr constant [4 x i8] c"tmp\00", align 1
@.str57 = private unnamed_addr constant [40 x i8] c"found group %s: %d elements. First: %d\0A\00", align 1
@.str58 = private unnamed_addr constant [38 x i8] c"Can't find group %s in the index file\00", align 1

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
  %16 = tail call i32 @__swbuf(i32 %_c, %struct.__sFILE* %_p) #8
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
  %3 = tail call float @llvm.fabs.f32(float %__x) #9
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
  %3 = tail call double @llvm.fabs.f64(double %__x) #9
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
  %3 = tail call x86_fp80 @llvm.fabs.f80(x86_fp80 %__x) #9
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
  %1 = tail call float @llvm.fabs.f32(float %__x) #9
  %2 = fcmp oeq float %1, 0x7FF0000000000000
  %3 = zext i1 %2 to i32
  ret i32 %3
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isinfd(double %__x) #2 {
  %1 = tail call double @llvm.fabs.f64(double %__x) #9
  %2 = fcmp oeq double %1, 0x7FF0000000000000
  %3 = zext i1 %2 to i32
  ret i32 %3
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isinfl(x86_fp80 %__x) #2 {
  %1 = tail call x86_fp80 @llvm.fabs.f80(x86_fp80 %__x) #9
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
  %1 = tail call <2 x float> @__sincosf_stret(float %__x) #8
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
  %1 = tail call { double, double } @__sincos_stret(double %__x) #8
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
  %1 = tail call <2 x float> @__sincospif_stret(float %__x) #8
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
  %1 = tail call { double, double } @__sincospi_stret(double %__x) #8
  %2 = extractvalue { double, double } %1, 0
  %3 = extractvalue { double, double } %1, 1
  store double %2, double* %__sinp, align 8, !tbaa !16
  store double %3, double* %__cosp, align 8, !tbaa !16
  ret void
}

; Function Attrs: optsize
declare { double, double } @__sincospi_stret(double) #1

; Function Attrs: nounwind optsize ssp uwtable
define void @init_pull(%struct.__sFILE* %log, i32 %nfile, %struct.t_filenm* %fnm, %struct.t_pull* %pull, [3 x float]* %x, %struct.t_mdatoms* %md, [3 x float]* %box) #4 {
  %gnames.i = alloca i8**, align 8
  %tmp = alloca [3 x float], align 4
  %1 = tail call i32 @opt2bSet(i8* getelementptr inbounds ([4 x i8]* @.str, i64 0, i64 0), i32 %nfile, %struct.t_filenm* %fnm) #8
  %2 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 16
  store i32 %1, i32* %2, align 4, !tbaa !18
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %615, label %4

; <label>:4                                       ; preds = %0
  %5 = tail call i8* @opt2fn(i8* getelementptr inbounds ([4 x i8]* @.str1, i64 0, i64 0), i32 %nfile, %struct.t_filenm* %fnm) #8
  %6 = tail call %struct.__sFILE* @ffopen(i8* %5, i8* getelementptr inbounds ([2 x i8]* @.str2, i64 0, i64 0)) #8
  %7 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 19
  store %struct.__sFILE* %6, %struct.__sFILE** %7, align 8, !tbaa !21
  %8 = tail call i8* @opt2fn(i8* getelementptr inbounds ([4 x i8]* @.str, i64 0, i64 0), i32 %nfile, %struct.t_filenm* %fnm) #8
  %9 = tail call i8* @opt2fn(i8* getelementptr inbounds ([4 x i8]* @.str3, i64 0, i64 0), i32 %nfile, %struct.t_filenm* %fnm) #8
  tail call void @read_pullparams(%struct.t_pull* %pull, i8* %8, i8* %9) #8
  %10 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 1
  %11 = getelementptr inbounds %struct.t_pullgrps* %10, i64 0, i32 0
  %12 = load i32* %11, align 4, !tbaa !22
  %13 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 4
  %14 = load i32* %13, align 4, !tbaa !23
  %15 = and i32 %14, -2
  %switch = icmp eq i32 %15, 2
  %16 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 17
  br i1 %switch, label %17, label %.thread

.thread:                                          ; preds = %4
  store i32 0, i32* %16, align 4, !tbaa !24
  br label %28

; <label>:17                                      ; preds = %4
  store i32 1, i32* %16, align 4, !tbaa !24
  %18 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 8
  %19 = load float* %18, align 4, !tbaa !25
  %20 = fpext float %19 to double
  %21 = fcmp olt double %20, 1.000000e-02
  br i1 %21, label %27, label %22

; <label>:22                                      ; preds = %17
  %23 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 7
  %24 = load float* %23, align 4, !tbaa !26
  %25 = fpext float %24 to double
  %26 = fcmp olt double %25, 1.000000e-02
  br i1 %26, label %27, label %28

; <label>:27                                      ; preds = %22, %17
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([30 x i8]* @.str4, i64 0, i64 0)) #8
  br label %28

; <label>:28                                      ; preds = %.thread, %27, %22
  %29 = tail call i64 @fwrite(i8* getelementptr inbounds ([161 x i8]* @.str19, i64 0, i64 0), i64 160, i64 1, %struct.__sFILE* %log) #7
  %30 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 3
  %31 = load i32* %30, align 4, !tbaa !27
  switch i32 %31, label %42 [
    i32 0, label %32
    i32 1, label %34
    i32 2, label %36
    i32 3, label %38
    i32 4, label %40
  ]

; <label>:32                                      ; preds = %28
  %33 = tail call i64 @fwrite(i8* getelementptr inbounds ([42 x i8]* @.str20, i64 0, i64 0), i64 41, i64 1, %struct.__sFILE* %log) #7
  br label %44

; <label>:34                                      ; preds = %28
  %35 = tail call i64 @fwrite(i8* getelementptr inbounds ([15 x i8]* @.str21, i64 0, i64 0), i64 14, i64 1, %struct.__sFILE* %log) #7
  br label %44

; <label>:36                                      ; preds = %28
  %37 = tail call i64 @fwrite(i8* getelementptr inbounds ([22 x i8]* @.str22, i64 0, i64 0), i64 21, i64 1, %struct.__sFILE* %log) #7
  br label %44

; <label>:38                                      ; preds = %28
  %39 = tail call i64 @fwrite(i8* getelementptr inbounds ([29 x i8]* @.str23, i64 0, i64 0), i64 28, i64 1, %struct.__sFILE* %log) #7
  br label %44

; <label>:40                                      ; preds = %28
  %41 = tail call i64 @fwrite(i8* getelementptr inbounds ([20 x i8]* @.str24, i64 0, i64 0), i64 19, i64 1, %struct.__sFILE* %log) #7
  br label %44

; <label>:42                                      ; preds = %28
  %43 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8]* @.str25, i64 0, i64 0), i64 55, i64 1, %struct.__sFILE* %log) #7
  br label %44

; <label>:44                                      ; preds = %42, %40, %38, %36, %34, %32
  %45 = load i32* %30, align 4, !tbaa !27
  switch i32 %45, label %print_info.exit [
    i32 2, label %46
    i32 0, label %46
  ]

; <label>:46                                      ; preds = %44, %44
  %47 = load i32* %13, align 4, !tbaa !23
  switch i32 %47, label %70 [
    i32 0, label %48
    i32 1, label %50
    i32 2, label %52
    i32 3, label %61
  ]

; <label>:48                                      ; preds = %46
  %49 = tail call i64 @fwrite(i8* getelementptr inbounds ([51 x i8]* @.str26, i64 0, i64 0), i64 50, i64 1, %struct.__sFILE* %log) #7
  br label %print_info.exit

; <label>:50                                      ; preds = %46
  %51 = tail call i64 @fwrite(i8* getelementptr inbounds ([58 x i8]* @.str27, i64 0, i64 0), i64 57, i64 1, %struct.__sFILE* %log) #7
  br label %print_info.exit

; <label>:52                                      ; preds = %46
  %53 = tail call i64 @fwrite(i8* getelementptr inbounds ([59 x i8]* @.str28, i64 0, i64 0), i64 58, i64 1, %struct.__sFILE* %log) #7
  %54 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 7
  %55 = load float* %54, align 4, !tbaa !26
  %56 = fpext float %55 to double
  %57 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 8
  %58 = load float* %57, align 4, !tbaa !25
  %59 = fpext float %58 to double
  %60 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %log, i8* getelementptr inbounds ([51 x i8]* @.str29, i64 0, i64 0), double %56, double %59) #8
  br label %print_info.exit

; <label>:61                                      ; preds = %46
  %62 = tail call i64 @fwrite(i8* getelementptr inbounds ([103 x i8]* @.str30, i64 0, i64 0), i64 102, i64 1, %struct.__sFILE* %log) #7
  %63 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 7
  %64 = load float* %63, align 4, !tbaa !26
  %65 = fpext float %64 to double
  %66 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 8
  %67 = load float* %66, align 4, !tbaa !25
  %68 = fpext float %67 to double
  %69 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %log, i8* getelementptr inbounds ([51 x i8]* @.str29, i64 0, i64 0), double %65, double %68) #8
  br label %print_info.exit

; <label>:70                                      ; preds = %46
  %71 = tail call i64 @fwrite(i8* getelementptr inbounds ([49 x i8]* @.str31, i64 0, i64 0), i64 48, i64 1, %struct.__sFILE* %log) #7
  br label %print_info.exit

print_info.exit:                                  ; preds = %44, %48, %50, %52, %61, %70
  tail call fastcc void @get_pullmemory(%struct.t_pullgrps* %10, i32 %12) #10
  %72 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 0
  tail call fastcc void @get_pullmemory(%struct.t_pullgrps* %72, i32 %12) #10
  %73 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 2
  tail call fastcc void @get_pullmemory(%struct.t_pullgrps* %73, i32 1) #10
  %74 = tail call i8* @opt2fn(i8* getelementptr inbounds ([4 x i8]* @.str5, i64 0, i64 0), i32 %nfile, %struct.t_filenm* %fnm) #8
  %75 = bitcast i8*** %gnames.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %75)
  %76 = icmp eq i8* %74, null
  br i1 %76, label %77, label %78

; <label>:77                                      ; preds = %print_info.exit
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([24 x i8]* @.str46, i64 0, i64 0)) #8
  br label %78

; <label>:78                                      ; preds = %77, %print_info.exit
  %79 = call %struct.t_block* @init_index(i8* %74, i8*** %gnames.i) #8
  %80 = getelementptr inbounds %struct.t_block* %79, i64 0, i32 1
  %81 = load i32* %80, align 4, !tbaa !28
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %84

; <label>:83                                      ; preds = %78
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([24 x i8]* @.str47, i64 0, i64 0)) #8
  %.pre.i = load i32* %80, align 4, !tbaa !28
  br label %84

; <label>:84                                      ; preds = %83, %78
  %85 = phi i32 [ %.pre.i, %83 ], [ %81, %78 ]
  %86 = call i8* @save_calloc(i8* getelementptr inbounds ([7 x i8]* @.str48, i64 0, i64 0), i8* getelementptr inbounds ([68 x i8]* @.str9, i64 0, i64 0), i32 168, i32 %85, i32 8) #8
  %87 = bitcast i8* %86 to i32**
  %88 = load i32* %80, align 4, !tbaa !28
  %89 = call i8* @save_calloc(i8* getelementptr inbounds ([10 x i8]* @.str49, i64 0, i64 0), i8* getelementptr inbounds ([68 x i8]* @.str9, i64 0, i64 0), i32 169, i32 %88, i32 8) #8
  %90 = bitcast i8* %89 to i8**
  %91 = load i32* %80, align 4, !tbaa !28
  %92 = call i8* @save_calloc(i8* getelementptr inbounds ([7 x i8]* @.str50, i64 0, i64 0), i8* getelementptr inbounds ([68 x i8]* @.str9, i64 0, i64 0), i32 170, i32 %91, i32 4) #8
  %93 = bitcast i8* %92 to i32*
  %94 = icmp sgt i32 %85, 0
  br i1 %94, label %.lr.ph7.i, label %.preheader.i

.lr.ph7.i:                                        ; preds = %84
  %95 = getelementptr inbounds %struct.t_block* %79, i64 0, i32 2
  %96 = getelementptr inbounds %struct.t_block* %79, i64 0, i32 4
  %97 = sext i32 %85 to i64
  %98 = add nsw i64 %97, -1
  br label %101

.loopexit.i:                                      ; preds = %123, %101
  %exitcond65 = icmp eq i64 %indvars.iv10.i, %98
  br i1 %exitcond65, label %.preheader.i, label %101

.preheader.i:                                     ; preds = %.loopexit.i, %84
  %99 = load i32* %80, align 4, !tbaa !28
  %100 = icmp sgt i32 %99, 0
  br i1 %100, label %.lr.ph.i, label %read_whole_index.exit

; <label>:101                                     ; preds = %.loopexit.i, %.lr.ph7.i
  %indvars.iv10.i = phi i64 [ 0, %.lr.ph7.i ], [ %indvars.iv.next11.i, %.loopexit.i ]
  %102 = load i8*** %gnames.i, align 8, !tbaa !30
  %103 = getelementptr inbounds i8** %102, i64 %indvars.iv10.i
  %104 = load i8** %103, align 8, !tbaa !30
  %105 = call i8* @strdup(i8* %104) #8
  %106 = getelementptr inbounds i8** %90, i64 %indvars.iv10.i
  store i8* %105, i8** %106, align 8, !tbaa !30
  %indvars.iv.next11.i = add nuw nsw i64 %indvars.iv10.i, 1
  %107 = load i32** %95, align 8, !tbaa !31
  %108 = getelementptr inbounds i32* %107, i64 %indvars.iv.next11.i
  %109 = load i32* %108, align 4, !tbaa !32
  %110 = getelementptr inbounds i32* %107, i64 %indvars.iv10.i
  %111 = load i32* %110, align 4, !tbaa !32
  %112 = sub nsw i32 %109, %111
  %113 = getelementptr inbounds i32* %93, i64 %indvars.iv10.i
  store i32 %112, i32* %113, align 4, !tbaa !32
  %114 = call i8* @save_calloc(i8* getelementptr inbounds ([12 x i8]* @.str51, i64 0, i64 0), i8* getelementptr inbounds ([68 x i8]* @.str9, i64 0, i64 0), i32 176, i32 %112, i32 4) #8
  %115 = getelementptr inbounds i32** %87, i64 %indvars.iv10.i
  %116 = bitcast i32** %115 to i8**
  store i8* %114, i8** %116, align 8, !tbaa !30
  %117 = load i32* %113, align 4, !tbaa !32
  %118 = icmp sgt i32 %117, 0
  %119 = bitcast i8* %114 to i32*
  br i1 %118, label %.lr.ph4.i, label %.loopexit.i

.lr.ph4.i:                                        ; preds = %101
  %120 = load i32** %95, align 8, !tbaa !31
  %121 = getelementptr inbounds i32* %120, i64 %indvars.iv10.i
  %122 = load i32** %96, align 8, !tbaa !33
  br label %123

; <label>:123                                     ; preds = %123, %.lr.ph4.i
  %indvars.iv8.i = phi i64 [ 0, %.lr.ph4.i ], [ %indvars.iv.next9.i, %123 ]
  %124 = load i32* %121, align 4, !tbaa !32
  %125 = trunc i64 %indvars.iv8.i to i32
  %126 = add nsw i32 %124, %125
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i32* %122, i64 %127
  %129 = load i32* %128, align 4, !tbaa !32
  %130 = getelementptr inbounds i32* %119, i64 %indvars.iv8.i
  store i32 %129, i32* %130, align 4, !tbaa !32
  %indvars.iv.next9.i = add nuw nsw i64 %indvars.iv8.i, 1
  %131 = load i32* %113, align 4, !tbaa !32
  %132 = sext i32 %131 to i64
  %133 = icmp slt i64 %indvars.iv.next9.i, %132
  br i1 %133, label %123, label %.loopexit.i

.lr.ph.i:                                         ; preds = %.preheader.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ 0, %.preheader.i ]
  %134 = load i8*** %gnames.i, align 8, !tbaa !30
  %135 = getelementptr inbounds i8** %134, i64 %indvars.iv.i
  %136 = load i8** %135, align 8, !tbaa !30
  call void @save_free(i8* getelementptr inbounds ([10 x i8]* @.str52, i64 0, i64 0), i8* getelementptr inbounds ([68 x i8]* @.str9, i64 0, i64 0), i32 182, i8* %136) #8
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %137 = load i32* %80, align 4, !tbaa !28
  %138 = sext i32 %137 to i64
  %139 = icmp slt i64 %indvars.iv.next.i, %138
  br i1 %139, label %.lr.ph.i, label %read_whole_index.exit

read_whole_index.exit:                            ; preds = %.lr.ph.i, %.preheader.i
  %140 = bitcast i8*** %gnames.i to i8**
  %141 = load i8** %140, align 8, !tbaa !30
  call void @save_free(i8* getelementptr inbounds ([7 x i8]* @.str53, i64 0, i64 0), i8* getelementptr inbounds ([68 x i8]* @.str9, i64 0, i64 0), i32 183, i8* %141) #8
  call void @done_block(%struct.t_block* %79) #8
  %142 = bitcast %struct.t_block* %79 to i8*
  call void @save_free(i8* getelementptr inbounds ([5 x i8]* @.str54, i64 0, i64 0), i8* getelementptr inbounds ([68 x i8]* @.str9, i64 0, i64 0), i32 185, i8* %142) #8
  call void @llvm.lifetime.end(i64 8, i8* %75)
  %143 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 25
  %144 = load i32* %143, align 4, !tbaa !34
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %.preheader5, label %146

; <label>:146                                     ; preds = %read_whole_index.exit
  %147 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !30
  %148 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %147, i8* getelementptr inbounds ([35 x i8]* @.str6, i64 0, i64 0), i32 %85) #8
  br i1 %94, label %.lr.ph35, label %.preheader5

.lr.ph35:                                         ; preds = %146
  %149 = add i32 %85, -1
  br label %155

.preheader5:                                      ; preds = %155, %146, %read_whole_index.exit
  %150 = load i32* %11, align 4, !tbaa !22
  %151 = icmp sgt i32 %150, 0
  br i1 %151, label %.lr.ph31, label %._crit_edge32

.lr.ph31:                                         ; preds = %.preheader5
  %152 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 1, i32 1
  %153 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 1, i32 3
  %154 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 1, i32 4
  br label %163

; <label>:155                                     ; preds = %155, %.lr.ph35
  %indvars.iv61 = phi i64 [ 0, %.lr.ph35 ], [ %indvars.iv.next62, %155 ]
  %156 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !30
  %157 = getelementptr inbounds i8** %90, i64 %indvars.iv61
  %158 = load i8** %157, align 8, !tbaa !30
  %159 = getelementptr inbounds i32* %93, i64 %indvars.iv61
  %160 = load i32* %159, align 4, !tbaa !32
  %161 = trunc i64 %indvars.iv61 to i32
  %162 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %156, i8* getelementptr inbounds ([27 x i8]* @.str7, i64 0, i64 0), i32 %161, i8* %158, i32 %160) #8
  %indvars.iv.next62 = add nuw nsw i64 %indvars.iv61, 1
  %exitcond64 = icmp eq i32 %161, %149
  br i1 %exitcond64, label %.preheader5, label %155

; <label>:163                                     ; preds = %.lr.ph31, %163
  %indvars.iv59 = phi i64 [ 0, %.lr.ph31 ], [ %indvars.iv.next60, %163 ]
  %164 = load i32*** %152, align 8, !tbaa !35
  %165 = getelementptr inbounds i32** %164, i64 %indvars.iv59
  %166 = load i32** %153, align 8, !tbaa !36
  %167 = getelementptr inbounds i32* %166, i64 %indvars.iv59
  %168 = load i8*** %154, align 8, !tbaa !37
  %169 = getelementptr inbounds i8** %168, i64 %indvars.iv59
  %170 = load i8** %169, align 8, !tbaa !30
  call fastcc void @get_named_indexgroup(%struct.__sFILE* %log, i32** %165, i32* %167, i8* %170, i32** %87, i32* %93, i8** %90, i32 %85) #10
  %indvars.iv.next60 = add nuw nsw i64 %indvars.iv59, 1
  %171 = load i32* %11, align 4, !tbaa !22
  %172 = sext i32 %171 to i64
  %173 = icmp slt i64 %indvars.iv.next60, %172
  br i1 %173, label %163, label %._crit_edge32

._crit_edge32:                                    ; preds = %163, %.preheader5
  %174 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 2, i32 1
  %175 = load i32*** %174, align 8, !tbaa !38
  %176 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 2, i32 3
  %177 = load i32** %176, align 8, !tbaa !39
  %178 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 2, i32 4
  %179 = load i8*** %178, align 8, !tbaa !40
  %180 = load i8** %179, align 8, !tbaa !30
  call fastcc void @get_named_indexgroup(%struct.__sFILE* %log, i32** %175, i32* %177, i8* %180, i32** %87, i32* %93, i8** %90, i32 %85) #10
  %181 = load i32** %176, align 8, !tbaa !39
  %182 = load i32* %181, align 4, !tbaa !32
  %183 = call i8* @save_calloc(i8* getelementptr inbounds ([16 x i8]* @.str8, i64 0, i64 0), i8* getelementptr inbounds ([68 x i8]* @.str9, i64 0, i64 0), i32 256, i32 %182, i32 12) #8
  %184 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 2, i32 6
  %185 = bitcast [3 x float]*** %184 to i8***
  %186 = load i8*** %185, align 8, !tbaa !41
  store i8* %183, i8** %186, align 8, !tbaa !30
  %187 = load i32** %176, align 8, !tbaa !39
  %188 = load i32* %187, align 4, !tbaa !32
  %189 = call i8* @save_calloc(i8* getelementptr inbounds ([16 x i8]* @.str10, i64 0, i64 0), i8* getelementptr inbounds ([68 x i8]* @.str9, i64 0, i64 0), i32 257, i32 %188, i32 12) #8
  %190 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 2, i32 7
  %191 = bitcast [3 x float]*** %190 to i8***
  %192 = load i8*** %191, align 8, !tbaa !42
  store i8* %189, i8** %192, align 8, !tbaa !30
  %193 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 24
  %194 = load i32* %193, align 4, !tbaa !43
  %195 = call i8* @save_calloc(i8* getelementptr inbounds ([21 x i8]* @.str11, i64 0, i64 0), i8* getelementptr inbounds ([68 x i8]* @.str9, i64 0, i64 0), i32 258, i32 %194, i32 12) #8
  %196 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 2, i32 17
  %197 = bitcast [3 x float]*** %196 to i8***
  %198 = load i8*** %197, align 8, !tbaa !44
  store i8* %195, i8** %198, align 8, !tbaa !30
  %199 = load i32* %11, align 4, !tbaa !22
  %200 = icmp sgt i32 %199, 0
  br i1 %200, label %.lr.ph29, label %.preheader4

.lr.ph29:                                         ; preds = %._crit_edge32
  %201 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 0, i32 17
  br label %217

.preheader4:                                      ; preds = %217, %._crit_edge32
  %202 = icmp sgt i32 %12, 0
  br i1 %202, label %.lr.ph25, label %.preheader4._crit_edge

.preheader4._crit_edge:                           ; preds = %.preheader4
  %.pre71 = getelementptr inbounds [3 x float]* %tmp, i64 0, i64 0
  %.pre72 = bitcast [3 x float]* %tmp to i32*
  %.pre74 = getelementptr inbounds [3 x float]* %tmp, i64 0, i64 1
  %.pre76 = bitcast float* %.pre74 to i32*
  %.pre78 = getelementptr inbounds [3 x float]* %tmp, i64 0, i64 2
  %.pre80 = bitcast float* %.pre78 to i32*
  br label %._crit_edge26

.lr.ph25:                                         ; preds = %.preheader4
  %203 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 1, i32 3
  %204 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 1, i32 1
  %205 = getelementptr inbounds [3 x float]* %tmp, i64 0, i64 0
  %206 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 1, i32 10
  %207 = bitcast [3 x float]* %tmp to i32*
  %208 = getelementptr inbounds [3 x float]* %tmp, i64 0, i64 1
  %209 = bitcast float* %208 to i32*
  %210 = getelementptr inbounds [3 x float]* %tmp, i64 0, i64 2
  %211 = bitcast float* %210 to i32*
  %212 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 1, i32 9
  %213 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 1, i32 8
  %214 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 1, i32 13
  %215 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 1, i32 5
  %216 = add i32 %12, -1
  br label %226

; <label>:217                                     ; preds = %.lr.ph29, %217
  %indvars.iv57 = phi i64 [ 0, %.lr.ph29 ], [ %indvars.iv.next58, %217 ]
  %218 = load i32* %193, align 4, !tbaa !43
  %219 = call i8* @save_calloc(i8* getelementptr inbounds ([22 x i8]* @.str12, i64 0, i64 0), i8* getelementptr inbounds ([68 x i8]* @.str9, i64 0, i64 0), i32 260, i32 %218, i32 12) #8
  %220 = load [3 x float]*** %201, align 8, !tbaa !45
  %221 = getelementptr inbounds [3 x float]** %220, i64 %indvars.iv57
  %222 = bitcast [3 x float]** %221 to i8**
  store i8* %219, i8** %222, align 8, !tbaa !30
  %indvars.iv.next58 = add nuw nsw i64 %indvars.iv57, 1
  %223 = load i32* %11, align 4, !tbaa !22
  %224 = sext i32 %223 to i64
  %225 = icmp slt i64 %indvars.iv.next58, %224
  br i1 %225, label %217, label %.preheader4

; <label>:226                                     ; preds = %226, %.lr.ph25
  %indvars.iv53 = phi i64 [ 0, %.lr.ph25 ], [ %indvars.iv.next54, %226 ]
  %227 = load i32** %203, align 8, !tbaa !36
  %228 = getelementptr inbounds i32* %227, i64 %indvars.iv53
  %229 = load i32* %228, align 4, !tbaa !32
  %230 = load i32*** %204, align 8, !tbaa !35
  %231 = getelementptr inbounds i32** %230, i64 %indvars.iv53
  %232 = load i32** %231, align 8, !tbaa !30
  %233 = call float @calc_com([3 x float]* %x, i32 %229, i32* %232, %struct.t_mdatoms* %md, float* %205, [3 x float]* %box) #8
  %234 = load [3 x float]** %206, align 8, !tbaa !46
  %235 = getelementptr inbounds [3 x float]* %234, i64 %indvars.iv53, i64 0
  %236 = load i32* %207, align 4, !tbaa !14
  %237 = bitcast float* %235 to i32*
  store i32 %236, i32* %237, align 4, !tbaa !14
  %238 = load i32* %209, align 4, !tbaa !14
  %239 = getelementptr inbounds [3 x float]* %234, i64 %indvars.iv53, i64 1
  %240 = bitcast float* %239 to i32*
  store i32 %238, i32* %240, align 4, !tbaa !14
  %241 = load i32* %211, align 4, !tbaa !14
  %242 = getelementptr inbounds [3 x float]* %234, i64 %indvars.iv53, i64 2
  %243 = bitcast float* %242 to i32*
  store i32 %241, i32* %243, align 4, !tbaa !14
  %244 = load [3 x float]** %212, align 8, !tbaa !47
  %245 = getelementptr inbounds [3 x float]* %244, i64 %indvars.iv53, i64 0
  %246 = load i32* %207, align 4, !tbaa !14
  %247 = bitcast float* %245 to i32*
  store i32 %246, i32* %247, align 4, !tbaa !14
  %248 = load i32* %209, align 4, !tbaa !14
  %249 = getelementptr inbounds [3 x float]* %244, i64 %indvars.iv53, i64 1
  %250 = bitcast float* %249 to i32*
  store i32 %248, i32* %250, align 4, !tbaa !14
  %251 = load i32* %211, align 4, !tbaa !14
  %252 = getelementptr inbounds [3 x float]* %244, i64 %indvars.iv53, i64 2
  %253 = bitcast float* %252 to i32*
  store i32 %251, i32* %253, align 4, !tbaa !14
  %254 = load [3 x float]** %213, align 8, !tbaa !48
  %255 = getelementptr inbounds [3 x float]* %254, i64 %indvars.iv53, i64 0
  %256 = load i32* %207, align 4, !tbaa !14
  %257 = bitcast float* %255 to i32*
  store i32 %256, i32* %257, align 4, !tbaa !14
  %258 = load i32* %209, align 4, !tbaa !14
  %259 = getelementptr inbounds [3 x float]* %254, i64 %indvars.iv53, i64 1
  %260 = bitcast float* %259 to i32*
  store i32 %258, i32* %260, align 4, !tbaa !14
  %261 = load i32* %211, align 4, !tbaa !14
  %262 = getelementptr inbounds [3 x float]* %254, i64 %indvars.iv53, i64 2
  %263 = bitcast float* %262 to i32*
  store i32 %261, i32* %263, align 4, !tbaa !14
  %264 = load [3 x float]** %214, align 8, !tbaa !49
  %265 = getelementptr inbounds [3 x float]* %264, i64 %indvars.iv53, i64 0
  %266 = load i32* %207, align 4, !tbaa !14
  %267 = bitcast float* %265 to i32*
  store i32 %266, i32* %267, align 4, !tbaa !14
  %268 = load i32* %209, align 4, !tbaa !14
  %269 = getelementptr inbounds [3 x float]* %264, i64 %indvars.iv53, i64 1
  %270 = bitcast float* %269 to i32*
  store i32 %268, i32* %270, align 4, !tbaa !14
  %271 = load i32* %211, align 4, !tbaa !14
  %272 = getelementptr inbounds [3 x float]* %264, i64 %indvars.iv53, i64 2
  %273 = bitcast float* %272 to i32*
  store i32 %271, i32* %273, align 4, !tbaa !14
  %274 = fpext float %233 to double
  %275 = load float* %205, align 4, !tbaa !14
  %276 = fpext float %275 to double
  %277 = load float* %208, align 4, !tbaa !14
  %278 = fpext float %277 to double
  %279 = load float* %210, align 4, !tbaa !14
  %280 = fpext float %279 to double
  %281 = trunc i64 %indvars.iv53 to i32
  %282 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %log, i8* getelementptr inbounds ([105 x i8]* @.str13, i64 0, i64 0), i32 %281, double %274, double %276, double %278, double %280) #8
  %283 = load float** %215, align 8, !tbaa !50
  %284 = getelementptr inbounds float* %283, i64 %indvars.iv53
  store float %233, float* %284, align 4, !tbaa !14
  %indvars.iv.next54 = add nuw nsw i64 %indvars.iv53, 1
  %exitcond56 = icmp eq i32 %281, %216
  br i1 %exitcond56, label %._crit_edge26, label %226

._crit_edge26:                                    ; preds = %226, %.preheader4._crit_edge
  %.pre-phi81 = phi i32* [ %.pre80, %.preheader4._crit_edge ], [ %211, %226 ]
  %.pre-phi79 = phi float* [ %.pre78, %.preheader4._crit_edge ], [ %210, %226 ]
  %.pre-phi77 = phi i32* [ %.pre76, %.preheader4._crit_edge ], [ %209, %226 ]
  %.pre-phi75 = phi float* [ %.pre74, %.preheader4._crit_edge ], [ %208, %226 ]
  %.pre-phi73 = phi i32* [ %.pre72, %.preheader4._crit_edge ], [ %207, %226 ]
  %.pre-phi = phi float* [ %.pre71, %.preheader4._crit_edge ], [ %205, %226 ]
  %285 = load i32** %176, align 8, !tbaa !39
  %286 = load i32* %285, align 4, !tbaa !32
  %287 = load i32*** %174, align 8, !tbaa !38
  %288 = load i32** %287, align 8, !tbaa !30
  %289 = call float @calc_com([3 x float]* %x, i32 %286, i32* %288, %struct.t_mdatoms* %md, float* %.pre-phi, [3 x float]* %box) #8
  %290 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 2, i32 9
  %291 = load [3 x float]** %290, align 8, !tbaa !51
  %292 = load i32* %.pre-phi73, align 4, !tbaa !14
  %293 = bitcast [3 x float]* %291 to i32*
  store i32 %292, i32* %293, align 4, !tbaa !14
  %294 = load i32* %.pre-phi77, align 4, !tbaa !14
  %295 = getelementptr inbounds [3 x float]* %291, i64 0, i64 1
  %296 = bitcast float* %295 to i32*
  store i32 %294, i32* %296, align 4, !tbaa !14
  %297 = load i32* %.pre-phi81, align 4, !tbaa !14
  %298 = getelementptr inbounds [3 x float]* %291, i64 0, i64 2
  %299 = bitcast float* %298 to i32*
  store i32 %297, i32* %299, align 4, !tbaa !14
  %300 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 2, i32 10
  %301 = load [3 x float]** %300, align 8, !tbaa !52
  %302 = load i32* %.pre-phi73, align 4, !tbaa !14
  %303 = bitcast [3 x float]* %301 to i32*
  store i32 %302, i32* %303, align 4, !tbaa !14
  %304 = load i32* %.pre-phi77, align 4, !tbaa !14
  %305 = getelementptr inbounds [3 x float]* %301, i64 0, i64 1
  %306 = bitcast float* %305 to i32*
  store i32 %304, i32* %306, align 4, !tbaa !14
  %307 = load i32* %.pre-phi81, align 4, !tbaa !14
  %308 = getelementptr inbounds [3 x float]* %301, i64 0, i64 2
  %309 = bitcast float* %308 to i32*
  store i32 %307, i32* %309, align 4, !tbaa !14
  %310 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 2, i32 8
  %311 = load [3 x float]** %310, align 8, !tbaa !53
  %312 = load i32* %.pre-phi73, align 4, !tbaa !14
  %313 = bitcast [3 x float]* %311 to i32*
  store i32 %312, i32* %313, align 4, !tbaa !14
  %314 = load i32* %.pre-phi77, align 4, !tbaa !14
  %315 = getelementptr inbounds [3 x float]* %311, i64 0, i64 1
  %316 = bitcast float* %315 to i32*
  store i32 %314, i32* %316, align 4, !tbaa !14
  %317 = load i32* %.pre-phi81, align 4, !tbaa !14
  %318 = getelementptr inbounds [3 x float]* %311, i64 0, i64 2
  %319 = bitcast float* %318 to i32*
  store i32 %317, i32* %319, align 4, !tbaa !14
  %320 = load i32* %193, align 4, !tbaa !43
  %321 = icmp sgt i32 %320, 0
  br i1 %321, label %.lr.ph22, label %._crit_edge23

.lr.ph22:                                         ; preds = %._crit_edge26
  %322 = load [3 x float]*** %196, align 8, !tbaa !44
  %323 = load [3 x float]** %322, align 8, !tbaa !30
  %324 = sext i32 %320 to i64
  br label %325

; <label>:325                                     ; preds = %.lr.ph22, %325
  %indvars.iv51 = phi i64 [ 0, %.lr.ph22 ], [ %indvars.iv.next52, %325 ]
  %326 = getelementptr inbounds [3 x float]* %323, i64 %indvars.iv51, i64 0
  %327 = load i32* %293, align 4, !tbaa !14
  %328 = bitcast float* %326 to i32*
  store i32 %327, i32* %328, align 4, !tbaa !14
  %329 = load i32* %296, align 4, !tbaa !14
  %330 = getelementptr inbounds [3 x float]* %323, i64 %indvars.iv51, i64 1
  %331 = bitcast float* %330 to i32*
  store i32 %329, i32* %331, align 4, !tbaa !14
  %332 = load i32* %299, align 4, !tbaa !14
  %333 = getelementptr inbounds [3 x float]* %323, i64 %indvars.iv51, i64 2
  %334 = bitcast float* %333 to i32*
  store i32 %332, i32* %334, align 4, !tbaa !14
  %indvars.iv.next52 = add nuw nsw i64 %indvars.iv51, 1
  %335 = icmp slt i64 %indvars.iv.next52, %324
  br i1 %335, label %325, label %._crit_edge23

._crit_edge23:                                    ; preds = %325, %._crit_edge26
  %336 = fpext float %289 to double
  %337 = load float* %.pre-phi, align 4, !tbaa !14
  %338 = fpext float %337 to double
  %339 = load float* %.pre-phi75, align 4, !tbaa !14
  %340 = fpext float %339 to double
  %341 = load float* %.pre-phi79, align 4, !tbaa !14
  %342 = fpext float %341 to double
  %343 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %log, i8* getelementptr inbounds ([97 x i8]* @.str14, i64 0, i64 0), double %336, double %338, double %340, double %342) #8
  %344 = load i32** %176, align 8, !tbaa !39
  %345 = load i32* %344, align 4, !tbaa !32
  %346 = icmp sgt i32 %345, 0
  br i1 %346, label %.lr.ph18, label %._crit_edge19

.lr.ph18:                                         ; preds = %._crit_edge23
  %347 = load i32*** %174, align 8, !tbaa !38
  %348 = load i32** %347, align 8, !tbaa !30
  %349 = load [3 x float]*** %184, align 8, !tbaa !41
  %350 = load [3 x float]** %349, align 8, !tbaa !30
  %351 = load [3 x float]*** %190, align 8, !tbaa !42
  %352 = load [3 x float]** %351, align 8, !tbaa !30
  %353 = sext i32 %345 to i64
  br label %354

; <label>:354                                     ; preds = %.lr.ph18, %354
  %indvars.iv49 = phi i64 [ 0, %.lr.ph18 ], [ %indvars.iv.next50, %354 ]
  %355 = getelementptr inbounds i32* %348, i64 %indvars.iv49
  %356 = load i32* %355, align 4, !tbaa !32
  %357 = sext i32 %356 to i64
  %358 = getelementptr inbounds [3 x float]* %x, i64 %357, i64 0
  %359 = getelementptr inbounds [3 x float]* %350, i64 %indvars.iv49, i64 0
  %360 = bitcast float* %358 to i32*
  %361 = load i32* %360, align 4, !tbaa !14
  %362 = bitcast float* %359 to i32*
  store i32 %361, i32* %362, align 4, !tbaa !14
  %363 = getelementptr inbounds [3 x float]* %x, i64 %357, i64 1
  %364 = bitcast float* %363 to i32*
  %365 = load i32* %364, align 4, !tbaa !14
  %366 = getelementptr inbounds [3 x float]* %350, i64 %indvars.iv49, i64 1
  %367 = bitcast float* %366 to i32*
  store i32 %365, i32* %367, align 4, !tbaa !14
  %368 = getelementptr inbounds [3 x float]* %x, i64 %357, i64 2
  %369 = bitcast float* %368 to i32*
  %370 = load i32* %369, align 4, !tbaa !14
  %371 = getelementptr inbounds [3 x float]* %350, i64 %indvars.iv49, i64 2
  %372 = bitcast float* %371 to i32*
  store i32 %370, i32* %372, align 4, !tbaa !14
  %373 = getelementptr inbounds [3 x float]* %352, i64 %indvars.iv49, i64 0
  %374 = load i32* %360, align 4, !tbaa !14
  %375 = bitcast float* %373 to i32*
  store i32 %374, i32* %375, align 4, !tbaa !14
  %376 = load i32* %364, align 4, !tbaa !14
  %377 = getelementptr inbounds [3 x float]* %352, i64 %indvars.iv49, i64 1
  %378 = bitcast float* %377 to i32*
  store i32 %376, i32* %378, align 4, !tbaa !14
  %379 = load i32* %369, align 4, !tbaa !14
  %380 = getelementptr inbounds [3 x float]* %352, i64 %indvars.iv49, i64 2
  %381 = bitcast float* %380 to i32*
  store i32 %379, i32* %381, align 4, !tbaa !14
  %indvars.iv.next50 = add nuw nsw i64 %indvars.iv49, 1
  %382 = icmp slt i64 %indvars.iv.next50, %353
  br i1 %382, label %354, label %._crit_edge19

._crit_edge19:                                    ; preds = %354, %._crit_edge23
  %383 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 2, i32 5
  %384 = load float** %383, align 8, !tbaa !54
  store float %289, float* %384, align 4, !tbaa !14
  %385 = load i32* %16, align 4, !tbaa !24
  %386 = icmp eq i32 %385, 0
  br i1 %386, label %.preheader3, label %387

; <label>:387                                     ; preds = %._crit_edge19
  call void @make_refgrps(%struct.t_pull* %pull, [3 x float]* %x, %struct.t_mdatoms* %md) #8
  br i1 %202, label %.lr.ph15, label %._crit_edge

.lr.ph15:                                         ; preds = %387
  %388 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 0, i32 9
  %389 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 0, i32 10
  %390 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 0, i32 8
  %391 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 0, i32 3
  %392 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 0, i32 5
  %393 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 0, i32 17
  %394 = add i32 %12, -1
  br label %403

.preheader3:                                      ; preds = %451, %._crit_edge19
  br i1 %202, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader3
  %395 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 1, i32 8
  %396 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 0, i32 8
  %397 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 1, i32 15
  %398 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 1, i32 14
  %399 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 18
  %400 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 21
  %401 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 20
  %402 = add i32 %12, -1
  br label %467

; <label>:403                                     ; preds = %451, %.lr.ph15
  %indvars.iv45 = phi i64 [ 0, %.lr.ph15 ], [ %indvars.iv.next46, %451 ]
  %404 = load [3 x float]** %388, align 8, !tbaa !55
  %405 = getelementptr inbounds [3 x float]* %404, i64 %indvars.iv45, i64 0
  %406 = load [3 x float]** %389, align 8, !tbaa !56
  %407 = getelementptr inbounds [3 x float]* %406, i64 %indvars.iv45, i64 0
  %408 = bitcast float* %405 to i32*
  %409 = load i32* %408, align 4, !tbaa !14
  %410 = bitcast float* %407 to i32*
  store i32 %409, i32* %410, align 4, !tbaa !14
  %411 = getelementptr inbounds [3 x float]* %404, i64 %indvars.iv45, i64 1
  %412 = bitcast float* %411 to i32*
  %413 = load i32* %412, align 4, !tbaa !14
  %414 = getelementptr inbounds [3 x float]* %406, i64 %indvars.iv45, i64 1
  %415 = bitcast float* %414 to i32*
  store i32 %413, i32* %415, align 4, !tbaa !14
  %416 = getelementptr inbounds [3 x float]* %404, i64 %indvars.iv45, i64 2
  %417 = bitcast float* %416 to i32*
  %418 = load i32* %417, align 4, !tbaa !14
  %419 = getelementptr inbounds [3 x float]* %406, i64 %indvars.iv45, i64 2
  %420 = bitcast float* %419 to i32*
  store i32 %418, i32* %420, align 4, !tbaa !14
  %421 = load [3 x float]** %390, align 8, !tbaa !57
  %422 = getelementptr inbounds [3 x float]* %421, i64 %indvars.iv45, i64 0
  %423 = load i32* %408, align 4, !tbaa !14
  %424 = bitcast float* %422 to i32*
  store i32 %423, i32* %424, align 4, !tbaa !14
  %425 = load i32* %412, align 4, !tbaa !14
  %426 = getelementptr inbounds [3 x float]* %421, i64 %indvars.iv45, i64 1
  %427 = bitcast float* %426 to i32*
  store i32 %425, i32* %427, align 4, !tbaa !14
  %428 = load i32* %417, align 4, !tbaa !14
  %429 = getelementptr inbounds [3 x float]* %421, i64 %indvars.iv45, i64 2
  %430 = bitcast float* %429 to i32*
  store i32 %428, i32* %430, align 4, !tbaa !14
  %431 = load i32* %193, align 4, !tbaa !43
  %432 = icmp sgt i32 %431, 0
  %433 = bitcast i32 %423 to float
  %434 = bitcast i32 %425 to float
  %435 = bitcast i32 %428 to float
  br i1 %432, label %.lr.ph11, label %451

.lr.ph11:                                         ; preds = %403
  %436 = load [3 x float]*** %393, align 8, !tbaa !45
  %437 = getelementptr inbounds [3 x float]** %436, i64 %indvars.iv45
  %438 = load [3 x float]** %437, align 8, !tbaa !30
  %439 = sext i32 %431 to i64
  br label %440

; <label>:440                                     ; preds = %.lr.ph11, %440
  %indvars.iv43 = phi i64 [ 0, %.lr.ph11 ], [ %indvars.iv.next44, %440 ]
  %441 = getelementptr inbounds [3 x float]* %438, i64 %indvars.iv43, i64 0
  %442 = load i32* %408, align 4, !tbaa !14
  %443 = bitcast float* %441 to i32*
  store i32 %442, i32* %443, align 4, !tbaa !14
  %444 = load i32* %412, align 4, !tbaa !14
  %445 = getelementptr inbounds [3 x float]* %438, i64 %indvars.iv43, i64 1
  %446 = bitcast float* %445 to i32*
  store i32 %444, i32* %446, align 4, !tbaa !14
  %447 = load i32* %417, align 4, !tbaa !14
  %448 = getelementptr inbounds [3 x float]* %438, i64 %indvars.iv43, i64 2
  %449 = bitcast float* %448 to i32*
  store i32 %447, i32* %449, align 4, !tbaa !14
  %indvars.iv.next44 = add nuw nsw i64 %indvars.iv43, 1
  %450 = icmp slt i64 %indvars.iv.next44, %439
  br i1 %450, label %440, label %._crit_edge12

._crit_edge12:                                    ; preds = %440
  %.pre = load float* %422, align 4, !tbaa !14
  %.pre66 = load float* %426, align 4, !tbaa !14
  %.pre67 = load float* %429, align 4, !tbaa !14
  br label %451

; <label>:451                                     ; preds = %._crit_edge12, %403
  %452 = phi float [ %.pre67, %._crit_edge12 ], [ %435, %403 ]
  %453 = phi float [ %.pre66, %._crit_edge12 ], [ %434, %403 ]
  %454 = phi float [ %.pre, %._crit_edge12 ], [ %433, %403 ]
  %455 = load i32** %391, align 8, !tbaa !58
  %456 = getelementptr inbounds i32* %455, i64 %indvars.iv45
  %457 = load i32* %456, align 4, !tbaa !32
  %458 = load float** %392, align 8, !tbaa !59
  %459 = getelementptr inbounds float* %458, i64 %indvars.iv45
  %460 = load float* %459, align 4, !tbaa !14
  %461 = fpext float %460 to double
  %462 = fpext float %454 to double
  %463 = fpext float %453 to double
  %464 = fpext float %452 to double
  %465 = trunc i64 %indvars.iv45 to i32
  %466 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %log, i8* getelementptr inbounds ([120 x i8]* @.str15, i64 0, i64 0), i32 %457, i32 %465, double %461, double %462, double %463, double %464) #8
  %indvars.iv.next46 = add nuw nsw i64 %indvars.iv45, 1
  %exitcond48 = icmp eq i32 %465, %394
  br i1 %exitcond48, label %.preheader3, label %403

; <label>:467                                     ; preds = %613, %.lr.ph
  %indvars.iv40 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next41, %613 ]
  %468 = load i32* %16, align 4, !tbaa !24
  %469 = icmp eq i32 %468, 0
  %470 = load [3 x float]** %395, align 8, !tbaa !48
  %471 = getelementptr inbounds [3 x float]* %470, i64 %indvars.iv40, i64 0
  br i1 %469, label %488, label %472

; <label>:472                                     ; preds = %467
  %473 = load [3 x float]** %396, align 8, !tbaa !57
  %474 = getelementptr inbounds [3 x float]* %473, i64 %indvars.iv40, i64 0
  %475 = load float* %471, align 4, !tbaa !14
  %476 = load float* %474, align 4, !tbaa !14
  %477 = fsub float %475, %476
  %478 = getelementptr inbounds [3 x float]* %470, i64 %indvars.iv40, i64 1
  %479 = load float* %478, align 4, !tbaa !14
  %480 = getelementptr inbounds [3 x float]* %473, i64 %indvars.iv40, i64 1
  %481 = load float* %480, align 4, !tbaa !14
  %482 = fsub float %479, %481
  %483 = getelementptr inbounds [3 x float]* %470, i64 %indvars.iv40, i64 2
  %484 = load float* %483, align 4, !tbaa !14
  %485 = getelementptr inbounds [3 x float]* %473, i64 %indvars.iv40, i64 2
  %486 = load float* %485, align 4, !tbaa !14
  %487 = fsub float %484, %486
  br label %.preheader

; <label>:488                                     ; preds = %467
  %489 = load [3 x float]** %310, align 8, !tbaa !53
  %490 = getelementptr inbounds [3 x float]* %489, i64 0, i64 0
  %491 = load float* %471, align 4, !tbaa !14
  %492 = load float* %490, align 4, !tbaa !14
  %493 = fsub float %491, %492
  %494 = getelementptr inbounds [3 x float]* %470, i64 %indvars.iv40, i64 1
  %495 = load float* %494, align 4, !tbaa !14
  %496 = getelementptr inbounds [3 x float]* %489, i64 0, i64 1
  %497 = load float* %496, align 4, !tbaa !14
  %498 = fsub float %495, %497
  %499 = getelementptr inbounds [3 x float]* %470, i64 %indvars.iv40, i64 2
  %500 = load float* %499, align 4, !tbaa !14
  %501 = getelementptr inbounds [3 x float]* %489, i64 0, i64 2
  %502 = load float* %501, align 4, !tbaa !14
  %503 = fsub float %500, %502
  br label %.preheader

.preheader:                                       ; preds = %488, %472
  %storemerge37 = phi float [ %477, %472 ], [ %493, %488 ]
  %storemerge36 = phi float [ %482, %472 ], [ %498, %488 ]
  %storemerge = phi float [ %487, %472 ], [ %503, %488 ]
  store float %storemerge37, float* %.pre-phi, align 4, !tbaa !14
  store float %storemerge36, float* %.pre-phi75, align 4, !tbaa !14
  store float %storemerge, float* %.pre-phi79, align 4, !tbaa !14
  br label %504

; <label>:504                                     ; preds = %._crit_edge68, %.preheader
  %505 = phi float [ %storemerge, %.preheader ], [ %546, %._crit_edge68 ]
  %506 = phi float [ %storemerge36, %.preheader ], [ %547, %._crit_edge68 ]
  %507 = phi float [ %storemerge37, %.preheader ], [ %548, %._crit_edge68 ]
  %508 = phi float [ %storemerge, %.preheader ], [ %.pre69, %._crit_edge68 ]
  %indvars.iv = phi i64 [ 2, %.preheader ], [ %indvars.iv.next, %._crit_edge68 ]
  %509 = fpext float %508 to double
  %510 = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv
  %511 = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv, i64 %indvars.iv
  %512 = load float* %511, align 4, !tbaa !14
  %513 = fpext float %512 to double
  %514 = fmul double %513, -5.000000e-01
  %515 = fcmp olt double %509, %514
  br i1 %515, label %516, label %527

; <label>:516                                     ; preds = %504
  %517 = getelementptr inbounds [3 x float]* %tmp, i64 0, i64 %indvars.iv
  %518 = getelementptr inbounds [3 x float]* %510, i64 0, i64 0
  %519 = load float* %518, align 4, !tbaa !14
  %520 = fadd float %507, %519
  %521 = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv, i64 1
  %522 = load float* %521, align 4, !tbaa !14
  %523 = fadd float %506, %522
  %524 = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv, i64 2
  %525 = load float* %524, align 4, !tbaa !14
  %526 = fadd float %505, %525
  store float %520, float* %.pre-phi, align 4, !tbaa !14
  store float %523, float* %.pre-phi75, align 4, !tbaa !14
  store float %526, float* %.pre-phi79, align 4, !tbaa !14
  %.pre70 = load float* %517, align 4, !tbaa !14
  br label %527

; <label>:527                                     ; preds = %516, %504
  %528 = phi float [ %.pre70, %516 ], [ %508, %504 ]
  %529 = phi float [ %526, %516 ], [ %505, %504 ]
  %530 = phi float [ %523, %516 ], [ %506, %504 ]
  %531 = phi float [ %520, %516 ], [ %507, %504 ]
  %532 = fpext float %528 to double
  %533 = fmul double %513, 5.000000e-01
  %534 = fcmp ogt double %532, %533
  br i1 %534, label %535, label %545

; <label>:535                                     ; preds = %527
  %536 = getelementptr inbounds [3 x float]* %510, i64 0, i64 0
  %537 = load float* %536, align 4, !tbaa !14
  %538 = fsub float %531, %537
  %539 = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv, i64 1
  %540 = load float* %539, align 4, !tbaa !14
  %541 = fsub float %530, %540
  %542 = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv, i64 2
  %543 = load float* %542, align 4, !tbaa !14
  %544 = fsub float %529, %543
  store float %538, float* %.pre-phi, align 4, !tbaa !14
  store float %541, float* %.pre-phi75, align 4, !tbaa !14
  store float %544, float* %.pre-phi79, align 4, !tbaa !14
  br label %545

; <label>:545                                     ; preds = %527, %535
  %546 = phi float [ %529, %527 ], [ %544, %535 ]
  %547 = phi float [ %530, %527 ], [ %541, %535 ]
  %548 = phi float [ %531, %527 ], [ %538, %535 ]
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %549 = icmp sgt i64 %indvars.iv, 0
  br i1 %549, label %._crit_edge68, label %550

._crit_edge68:                                    ; preds = %545
  %.phi.trans.insert = getelementptr inbounds [3 x float]* %tmp, i64 0, i64 %indvars.iv.next
  %.pre69 = load float* %.phi.trans.insert, align 4, !tbaa !14
  br label %504

; <label>:550                                     ; preds = %545
  %551 = fmul float %548, %548
  %552 = fmul float %547, %547
  %553 = fadd float %551, %552
  %554 = fmul float %546, %546
  %555 = fadd float %553, %554
  %sqrtf.i = call float @sqrtf(float %555) #11
  %556 = load float** %397, align 8, !tbaa !60
  %557 = getelementptr inbounds float* %556, i64 %indvars.iv40
  store float %sqrtf.i, float* %557, align 4, !tbaa !14
  br label %558

; <label>:558                                     ; preds = %558, %550
  %indvars.iv38 = phi i64 [ 0, %550 ], [ %indvars.iv.next39, %558 ]
  %559 = getelementptr inbounds [3 x float]* %tmp, i64 0, i64 %indvars.iv38
  %560 = load float* %559, align 4, !tbaa !14
  %561 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 5, i64 %indvars.iv38
  %562 = load float* %561, align 4, !tbaa !14
  %563 = fmul float %560, %562
  store float %563, float* %559, align 4, !tbaa !14
  %indvars.iv.next39 = add nuw nsw i64 %indvars.iv38, 1
  %exitcond = icmp eq i64 %indvars.iv.next39, 3
  br i1 %exitcond, label %564, label %558

; <label>:564                                     ; preds = %558
  %565 = load float* %.pre-phi, align 4, !tbaa !14
  %566 = fmul float %565, %565
  %567 = load float* %.pre-phi75, align 4, !tbaa !14
  %568 = fmul float %567, %567
  %569 = fadd float %566, %568
  %570 = load float* %.pre-phi79, align 4, !tbaa !14
  %571 = fmul float %570, %570
  %572 = fadd float %569, %571
  %sqrtf.i2 = call float @sqrtf(float %572) #11
  %573 = fdiv float 1.000000e+00, %sqrtf.i2
  %574 = load [3 x float]** %398, align 8, !tbaa !61
  %575 = getelementptr inbounds [3 x float]* %574, i64 %indvars.iv40, i64 0
  %576 = fmul float %565, %573
  store float %576, float* %575, align 4, !tbaa !14
  %577 = load float* %.pre-phi75, align 4, !tbaa !14
  %578 = fmul float %573, %577
  %579 = getelementptr inbounds [3 x float]* %574, i64 %indvars.iv40, i64 1
  store float %578, float* %579, align 4, !tbaa !14
  %580 = load float* %.pre-phi79, align 4, !tbaa !14
  %581 = fmul float %573, %580
  %582 = getelementptr inbounds [3 x float]* %574, i64 %indvars.iv40, i64 2
  store float %581, float* %582, align 4, !tbaa !14
  %583 = load i32* %399, align 4, !tbaa !62
  %584 = icmp eq i32 %583, 0
  br i1 %584, label %589, label %585

; <label>:585                                     ; preds = %564
  %586 = fsub float -0.000000e+00, %576
  store float %586, float* %575, align 4, !tbaa !14
  %587 = fsub float -0.000000e+00, %578
  store float %587, float* %579, align 4, !tbaa !14
  %588 = fsub float -0.000000e+00, %581
  store float %588, float* %582, align 4, !tbaa !14
  br label %589

; <label>:589                                     ; preds = %564, %585
  %590 = load i32* %30, align 4, !tbaa !27
  %591 = icmp eq i32 %590, 1
  br i1 %591, label %592, label %598

; <label>:592                                     ; preds = %589
  %593 = load float* %400, align 4, !tbaa !63
  %594 = fpext float %593 to double
  %595 = load float* %401, align 4, !tbaa !64
  %596 = fpext float %595 to double
  %597 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %log, i8* getelementptr inbounds ([55 x i8]* @.str16, i64 0, i64 0), double %594, double %596) #8
  %.pr = load i32* %30, align 4, !tbaa !27
  br label %598

; <label>:598                                     ; preds = %592, %589
  %599 = phi i32 [ %.pr, %592 ], [ %590, %589 ]
  %switch1 = icmp ult i32 %599, 2
  br i1 %switch1, label %600, label %613

; <label>:600                                     ; preds = %598
  %601 = load [3 x float]** %398, align 8, !tbaa !61
  %602 = getelementptr inbounds [3 x float]* %601, i64 %indvars.iv40, i64 0
  %603 = load float* %602, align 4, !tbaa !14
  %604 = fpext float %603 to double
  %605 = getelementptr inbounds [3 x float]* %601, i64 %indvars.iv40, i64 1
  %606 = load float* %605, align 4, !tbaa !14
  %607 = fpext float %606 to double
  %608 = getelementptr inbounds [3 x float]* %601, i64 %indvars.iv40, i64 2
  %609 = load float* %608, align 4, !tbaa !14
  %610 = fpext float %609 to double
  %611 = load i32* %399, align 4, !tbaa !62
  %612 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %log, i8* getelementptr inbounds ([50 x i8]* @.str17, i64 0, i64 0), double %604, double %607, double %610, i32 %611) #8
  br label %613

; <label>:613                                     ; preds = %598, %600
  %indvars.iv.next41 = add nuw nsw i64 %indvars.iv40, 1
  %lftr.wideiv = trunc i64 %indvars.iv40 to i32
  %exitcond42 = icmp eq i32 %lftr.wideiv, %402
  br i1 %exitcond42, label %._crit_edge, label %467

._crit_edge:                                      ; preds = %613, %387, %.preheader3
  %614 = call i64 @fwrite(i8* getelementptr inbounds ([162 x i8]* @.str18, i64 0, i64 0), i64 161, i64 1, %struct.__sFILE* %log)
  br label %615

; <label>:615                                     ; preds = %0, %._crit_edge
  ret void
}

; Function Attrs: optsize
declare i32 @opt2bSet(i8*, i32, %struct.t_filenm*) #1

; Function Attrs: optsize
declare %struct.__sFILE* @ffopen(i8*, i8*) #1

; Function Attrs: optsize
declare i8* @opt2fn(i8*, i32, %struct.t_filenm*) #1

; Function Attrs: optsize
declare void @read_pullparams(%struct.t_pull*, i8*, i8*) #1

; Function Attrs: optsize
declare void @fatal_error(i32, i8*, ...) #1

; Function Attrs: nounwind optsize ssp uwtable
define internal fastcc void @get_pullmemory(%struct.t_pullgrps* nocapture %pull, i32 %ngrps) #4 {
  %1 = tail call i8* @save_calloc(i8* getelementptr inbounds ([10 x i8]* @.str32, i64 0, i64 0), i8* getelementptr inbounds ([68 x i8]* @.str9, i64 0, i64 0), i32 56, i32 %ngrps, i32 4) #8
  %2 = getelementptr inbounds %struct.t_pullgrps* %pull, i64 0, i32 3
  %3 = bitcast i32** %2 to i8**
  store i8* %1, i8** %3, align 8, !tbaa !65
  %4 = tail call i8* @save_calloc(i8* getelementptr inbounds ([12 x i8]* @.str33, i64 0, i64 0), i8* getelementptr inbounds ([68 x i8]* @.str9, i64 0, i64 0), i32 57, i32 %ngrps, i32 12) #8
  %5 = getelementptr inbounds %struct.t_pullgrps* %pull, i64 0, i32 10
  %6 = bitcast [3 x float]** %5 to i8**
  store i8* %4, i8** %6, align 8, !tbaa !66
  %7 = tail call i8* @save_calloc(i8* getelementptr inbounds ([12 x i8]* @.str34, i64 0, i64 0), i8* getelementptr inbounds ([68 x i8]* @.str9, i64 0, i64 0), i32 58, i32 %ngrps, i32 12) #8
  %8 = getelementptr inbounds %struct.t_pullgrps* %pull, i64 0, i32 11
  %9 = bitcast [3 x float]** %8 to i8**
  store i8* %7, i8** %9, align 8, !tbaa !67
  %10 = tail call i8* @save_calloc(i8* getelementptr inbounds ([12 x i8]* @.str35, i64 0, i64 0), i8* getelementptr inbounds ([68 x i8]* @.str9, i64 0, i64 0), i32 59, i32 %ngrps, i32 4) #8
  %11 = getelementptr inbounds %struct.t_pullgrps* %pull, i64 0, i32 5
  %12 = bitcast float** %11 to i8**
  store i8* %10, i8** %12, align 8, !tbaa !68
  %13 = tail call i8* @save_calloc(i8* getelementptr inbounds ([10 x i8]* @.str36, i64 0, i64 0), i8* getelementptr inbounds ([68 x i8]* @.str9, i64 0, i64 0), i32 60, i32 %ngrps, i32 8) #8
  %14 = getelementptr inbounds %struct.t_pullgrps* %pull, i64 0, i32 1
  %15 = bitcast i32*** %14 to i8**
  store i8* %13, i8** %15, align 8, !tbaa !69
  %16 = tail call i8* @save_calloc(i8* getelementptr inbounds ([8 x i8]* @.str37, i64 0, i64 0), i8* getelementptr inbounds ([68 x i8]* @.str9, i64 0, i64 0), i32 61, i32 %ngrps, i32 12) #8
  %17 = getelementptr inbounds %struct.t_pullgrps* %pull, i64 0, i32 12
  %18 = bitcast [3 x float]** %17 to i8**
  store i8* %16, i8** %18, align 8, !tbaa !70
  %19 = tail call i8* @save_calloc(i8* getelementptr inbounds ([13 x i8]* @.str38, i64 0, i64 0), i8* getelementptr inbounds ([68 x i8]* @.str9, i64 0, i64 0), i32 62, i32 %ngrps, i32 12) #8
  %20 = getelementptr inbounds %struct.t_pullgrps* %pull, i64 0, i32 13
  %21 = bitcast [3 x float]** %20 to i8**
  store i8* %19, i8** %21, align 8, !tbaa !71
  %22 = tail call i8* @save_calloc(i8* getelementptr inbounds ([10 x i8]* @.str39, i64 0, i64 0), i8* getelementptr inbounds ([68 x i8]* @.str9, i64 0, i64 0), i32 63, i32 %ngrps, i32 12) #8
  %23 = getelementptr inbounds %struct.t_pullgrps* %pull, i64 0, i32 14
  %24 = bitcast [3 x float]** %23 to i8**
  store i8* %22, i8** %24, align 8, !tbaa !72
  %25 = tail call i8* @save_calloc(i8* getelementptr inbounds ([12 x i8]* @.str40, i64 0, i64 0), i8* getelementptr inbounds ([68 x i8]* @.str9, i64 0, i64 0), i32 64, i32 %ngrps, i32 12) #8
  %26 = getelementptr inbounds %struct.t_pullgrps* %pull, i64 0, i32 9
  %27 = bitcast [3 x float]** %26 to i8**
  store i8* %25, i8** %27, align 8, !tbaa !73
  %28 = tail call i8* @save_calloc(i8* getelementptr inbounds ([12 x i8]* @.str41, i64 0, i64 0), i8* getelementptr inbounds ([68 x i8]* @.str9, i64 0, i64 0), i32 65, i32 %ngrps, i32 12) #8
  %29 = getelementptr inbounds %struct.t_pullgrps* %pull, i64 0, i32 8
  %30 = bitcast [3 x float]** %29 to i8**
  store i8* %28, i8** %30, align 8, !tbaa !74
  %31 = tail call i8* @save_calloc(i8* getelementptr inbounds ([12 x i8]* @.str42, i64 0, i64 0), i8* getelementptr inbounds ([68 x i8]* @.str9, i64 0, i64 0), i32 66, i32 %ngrps, i32 4) #8
  %32 = getelementptr inbounds %struct.t_pullgrps* %pull, i64 0, i32 15
  %33 = bitcast float** %32 to i8**
  store i8* %31, i8** %33, align 8, !tbaa !75
  %34 = tail call i8* @save_calloc(i8* getelementptr inbounds ([9 x i8]* @.str43, i64 0, i64 0), i8* getelementptr inbounds ([68 x i8]* @.str9, i64 0, i64 0), i32 67, i32 %ngrps, i32 8) #8
  %35 = getelementptr inbounds %struct.t_pullgrps* %pull, i64 0, i32 6
  %36 = bitcast [3 x float]*** %35 to i8**
  store i8* %34, i8** %36, align 8, !tbaa !76
  %37 = tail call i8* @save_calloc(i8* getelementptr inbounds ([9 x i8]* @.str44, i64 0, i64 0), i8* getelementptr inbounds ([68 x i8]* @.str9, i64 0, i64 0), i32 68, i32 %ngrps, i32 8) #8
  %38 = getelementptr inbounds %struct.t_pullgrps* %pull, i64 0, i32 7
  %39 = bitcast [3 x float]*** %38 to i8**
  store i8* %37, i8** %39, align 8, !tbaa !77
  %40 = tail call i8* @save_calloc(i8* getelementptr inbounds ([14 x i8]* @.str45, i64 0, i64 0), i8* getelementptr inbounds ([68 x i8]* @.str9, i64 0, i64 0), i32 69, i32 %ngrps, i32 8) #8
  %41 = getelementptr inbounds %struct.t_pullgrps* %pull, i64 0, i32 17
  %42 = bitcast [3 x float]*** %41 to i8**
  store i8* %40, i8** %42, align 8, !tbaa !78
  ret void
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct.__sFILE* nocapture, i8* nocapture readonly, ...) #5

; Function Attrs: nounwind optsize ssp uwtable
define internal fastcc void @get_named_indexgroup(%struct.__sFILE* nocapture %log, i32** nocapture %target, i32* nocapture %isize, i8* %name, i32** nocapture readonly %index, i32* nocapture readonly %ngx, i8** nocapture readonly %grpnames, i32 %ngrps) #4 {
  %1 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %log, i8* getelementptr inbounds ([23 x i8]* @.str55, i64 0, i64 0), i8* %name) #8
  %2 = icmp sgt i32 %ngrps, 0
  br i1 %2, label %.lr.ph6, label %._crit_edge7.thread

._crit_edge7.thread:                              ; preds = %0
  store i32* null, i32** %target, align 8, !tbaa !30
  br label %30

.lr.ph6:                                          ; preds = %0
  %3 = add i32 %ngrps, -1
  br label %4

; <label>:4                                       ; preds = %28, %.lr.ph6
  %indvars.iv11 = phi i64 [ 0, %.lr.ph6 ], [ %indvars.iv.next12, %28 ]
  %tmp.04 = phi i32* [ null, %.lr.ph6 ], [ %tmp.1, %28 ]
  %bFound.03 = phi i32 [ 0, %.lr.ph6 ], [ %bFound.1, %28 ]
  %5 = getelementptr inbounds i8** %grpnames, i64 %indvars.iv11
  %6 = load i8** %5, align 8, !tbaa !30
  %7 = tail call i32 @strcmp(i8* %name, i8* %6) #8
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %28

; <label>:9                                       ; preds = %4
  %10 = getelementptr inbounds i32* %ngx, i64 %indvars.iv11
  %11 = load i32* %10, align 4, !tbaa !32
  %12 = tail call i8* @save_calloc(i8* getelementptr inbounds ([4 x i8]* @.str56, i64 0, i64 0), i8* getelementptr inbounds ([68 x i8]* @.str9, i64 0, i64 0), i32 138, i32 %11, i32 4) #8
  %13 = bitcast i8* %12 to i32*
  %14 = load i32* %10, align 4, !tbaa !32
  %15 = icmp sgt i32 %14, 0
  br i1 %15, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %9
  %16 = getelementptr inbounds i32** %index, i64 %indvars.iv11
  %17 = load i32** %16, align 8, !tbaa !30
  br label %18

; <label>:18                                      ; preds = %.lr.ph, %18
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %18 ]
  %19 = getelementptr inbounds i32* %17, i64 %indvars.iv
  %20 = load i32* %19, align 4, !tbaa !32
  %21 = getelementptr inbounds i32* %13, i64 %indvars.iv
  store i32 %20, i32* %21, align 4, !tbaa !32
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %22 = load i32* %10, align 4, !tbaa !32
  %23 = sext i32 %22 to i64
  %24 = icmp slt i64 %indvars.iv.next, %23
  br i1 %24, label %18, label %._crit_edge

._crit_edge:                                      ; preds = %18, %9
  %.lcssa = phi i32 [ %14, %9 ], [ %22, %18 ]
  store i32 %.lcssa, i32* %isize, align 4, !tbaa !32
  %25 = load i32* %10, align 4, !tbaa !32
  %26 = load i32* %13, align 4, !tbaa !32
  %27 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %log, i8* getelementptr inbounds ([40 x i8]* @.str57, i64 0, i64 0), i8* %name, i32 %25, i32 %26) #8
  br label %28

; <label>:28                                      ; preds = %4, %._crit_edge
  %bFound.1 = phi i32 [ %bFound.03, %4 ], [ 1, %._crit_edge ]
  %tmp.1 = phi i32* [ %tmp.04, %4 ], [ %13, %._crit_edge ]
  %indvars.iv.next12 = add nuw nsw i64 %indvars.iv11, 1
  %lftr.wideiv = trunc i64 %indvars.iv11 to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %3
  br i1 %exitcond, label %._crit_edge7, label %4

._crit_edge7:                                     ; preds = %28
  store i32* %tmp.1, i32** %target, align 8, !tbaa !30
  %29 = icmp eq i32 %bFound.1, 0
  br i1 %29, label %30, label %31

; <label>:30                                      ; preds = %._crit_edge7.thread, %._crit_edge7
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([38 x i8]* @.str58, i64 0, i64 0), i8* %name) #8
  br label %31

; <label>:31                                      ; preds = %._crit_edge7, %30
  ret void
}

; Function Attrs: optsize
declare i8* @save_calloc(i8*, i8*, i32, i32, i32) #1

; Function Attrs: optsize
declare float @calc_com([3 x float]*, i32, i32*, %struct.t_mdatoms*, float*, [3 x float]*) #1

; Function Attrs: optsize
declare void @make_refgrps(%struct.t_pull*, [3 x float]*, %struct.t_mdatoms*) #1

; Function Attrs: optsize
declare %struct.t_block* @init_index(i8*, i8***) #1

; Function Attrs: nounwind optsize
declare noalias i8* @strdup(i8* nocapture readonly) #5

; Function Attrs: optsize
declare void @save_free(i8*, i8*, i32, i8*) #1

; Function Attrs: optsize
declare void @done_block(%struct.t_block*) #1

; Function Attrs: nounwind optsize readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) #6

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct.__sFILE* nocapture) #7

declare float @sqrtf(float)

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #7

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #7

attributes #0 = { alwaysinline nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { alwaysinline nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }
attributes #4 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind }
attributes #8 = { nounwind optsize }
attributes #9 = { readnone }
attributes #10 = { optsize }
attributes #11 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }

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
!18 = !{!19, !7, i64 508}
!19 = !{!"", !20, i64 0, !20, i64 144, !20, i64 288, !5, i64 432, !5, i64 436, !5, i64 440, !5, i64 452, !15, i64 464, !15, i64 468, !5, i64 472, !15, i64 484, !15, i64 488, !7, i64 492, !15, i64 496, !15, i64 500, !15, i64 504, !7, i64 508, !7, i64 512, !7, i64 516, !4, i64 520, !15, i64 528, !15, i64 532, !15, i64 536, !7, i64 540, !7, i64 544, !7, i64 548}
!20 = !{!"", !7, i64 0, !4, i64 8, !4, i64 16, !4, i64 24, !4, i64 32, !4, i64 40, !4, i64 48, !4, i64 56, !4, i64 64, !4, i64 72, !4, i64 80, !4, i64 88, !4, i64 96, !4, i64 104, !4, i64 112, !4, i64 120, !4, i64 128, !4, i64 136}
!21 = !{!19, !4, i64 520}
!22 = !{!19, !7, i64 144}
!23 = !{!19, !5, i64 436}
!24 = !{!19, !7, i64 512}
!25 = !{!19, !15, i64 468}
!26 = !{!19, !15, i64 464}
!27 = !{!19, !5, i64 432}
!28 = !{!29, !7, i64 1024}
!29 = !{!"", !5, i64 0, !7, i64 1024, !4, i64 1032, !7, i64 1040, !4, i64 1048}
!30 = !{!4, !4, i64 0}
!31 = !{!29, !4, i64 1032}
!32 = !{!7, !7, i64 0}
!33 = !{!29, !4, i64 1048}
!34 = !{!19, !7, i64 548}
!35 = !{!19, !4, i64 152}
!36 = !{!19, !4, i64 168}
!37 = !{!19, !4, i64 176}
!38 = !{!19, !4, i64 296}
!39 = !{!19, !4, i64 312}
!40 = !{!19, !4, i64 320}
!41 = !{!19, !4, i64 336}
!42 = !{!19, !4, i64 344}
!43 = !{!19, !7, i64 544}
!44 = !{!19, !4, i64 424}
!45 = !{!19, !4, i64 136}
!46 = !{!19, !4, i64 224}
!47 = !{!19, !4, i64 216}
!48 = !{!19, !4, i64 208}
!49 = !{!19, !4, i64 248}
!50 = !{!19, !4, i64 184}
!51 = !{!19, !4, i64 360}
!52 = !{!19, !4, i64 368}
!53 = !{!19, !4, i64 352}
!54 = !{!19, !4, i64 328}
!55 = !{!19, !4, i64 72}
!56 = !{!19, !4, i64 80}
!57 = !{!19, !4, i64 64}
!58 = !{!19, !4, i64 24}
!59 = !{!19, !4, i64 40}
!60 = !{!19, !4, i64 264}
!61 = !{!19, !4, i64 256}
!62 = !{!19, !7, i64 516}
!63 = !{!19, !15, i64 532}
!64 = !{!19, !15, i64 528}
!65 = !{!20, !4, i64 24}
!66 = !{!20, !4, i64 80}
!67 = !{!20, !4, i64 88}
!68 = !{!20, !4, i64 40}
!69 = !{!20, !4, i64 8}
!70 = !{!20, !4, i64 96}
!71 = !{!20, !4, i64 104}
!72 = !{!20, !4, i64 112}
!73 = !{!20, !4, i64 72}
!74 = !{!20, !4, i64 64}
!75 = !{!20, !4, i64 120}
!76 = !{!20, !4, i64 48}
!77 = !{!20, !4, i64 56}
!78 = !{!20, !4, i64 136}
