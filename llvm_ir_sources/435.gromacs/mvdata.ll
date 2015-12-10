; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/mvdata.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct.t_parm = type { %struct.t_inputrec, [3 x [3 x float]], [3 x [3 x float]], [3 x [3 x float]], [3 x [3 x float]], [3 x [3 x float]] }
%struct.t_inputrec = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, float, float, float, i32, i32, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, i32, float, [3 x [3 x float]], [3 x [3 x float]], i32, float, float, i32, float, float, i32, float, float, float, i32, float, float, i32, float, float, float, float, float, i32, i32, i32, float, float, float, i32, float, float, i32, i32, i32, i32, i32, float, i32, float, float, i32, float, i32, i32, i32, i32, float, float, float, float, %struct.t_grpopts, [3 x %struct.t_cosines], [3 x %struct.t_cosines] }
%struct.t_grpopts = type { i32, i32, i32, i32, float*, float*, float*, [3 x float]*, [3 x i32]*, i32* }
%struct.t_cosines = type { i32, float*, float* }
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

@debug = external global %struct.__sFILE*
@stdlog = external global %struct.__sFILE*
@.str = private unnamed_addr constant [14 x i8] c"after ld_parm\00", align 1
@.str1 = private unnamed_addr constant [13 x i8] c"after ld_nsb\00", align 1
@.str2 = private unnamed_addr constant [16 x i8] c"after ld_symtab\00", align 1
@.str3 = private unnamed_addr constant [14 x i8] c"after ld_name\00", align 1
@.str4 = private unnamed_addr constant [15 x i8] c"after ld_atoms\00", align 1
@.str5 = private unnamed_addr constant [14 x i8] c"after ld_idef\00", align 1
@.str6 = private unnamed_addr constant [15 x i8] c"after ld_block\00", align 1
@.str7 = private unnamed_addr constant [3 x i8] c"*x\00", align 1
@.str8 = private unnamed_addr constant [66 x i8] c"../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/mvdata.c\00", align 1
@.str9 = private unnamed_addr constant [3 x i8] c"*v\00", align 1
@.str10 = private unnamed_addr constant [17 x i8] c"after ld_vectors\00", align 1
@.str11 = private unnamed_addr constant [8 x i8] c"g->nrdf\00", align 1
@.str12 = private unnamed_addr constant [9 x i8] c"g->tau_t\00", align 1
@.str13 = private unnamed_addr constant [9 x i8] c"g->ref_t\00", align 1
@.str14 = private unnamed_addr constant [7 x i8] c"g->acc\00", align 1
@.str15 = private unnamed_addr constant [11 x i8] c"g->nFreeze\00", align 1
@.str16 = private unnamed_addr constant [11 x i8] c"g->eg_excl\00", align 1
@.str17 = private unnamed_addr constant [6 x i8] c"cs->a\00", align 1
@.str18 = private unnamed_addr constant [8 x i8] c"cs->phi\00", align 1
@.str19 = private unnamed_addr constant [15 x i8] c"symtab->symbuf\00", align 1
@.str20 = private unnamed_addr constant [20 x i8] c"symtab->symbuf->buf\00", align 1
@.str21 = private unnamed_addr constant [23 x i8] c"symtab->symbuf->buf[i]\00", align 1
@.str22 = private unnamed_addr constant [12 x i8] c"atoms->atom\00", align 1
@.str23 = private unnamed_addr constant [7 x i8] c"handle\00", align 1
@.str24 = private unnamed_addr constant [4 x i8] c"*nm\00", align 1
@.str25 = private unnamed_addr constant [15 x i8] c"grps[i].nm_ind\00", align 1
@.str26 = private unnamed_addr constant [15 x i8] c"idef->functype\00", align 1
@.str27 = private unnamed_addr constant [14 x i8] c"idef->iparams\00", align 1
@.str28 = private unnamed_addr constant [14 x i8] c"ilist->iatoms\00", align 1

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
define void @ld_data(i32 %left, i32 %right, %struct.t_parm* %parm, %struct.t_nsborder* %nsb, %struct.t_topology* %top, [3 x float]** nocapture %x, [3 x float]** nocapture %v) #4 {
  %natoms.i = alloca i32, align 4
  %name.i = alloca i32, align 4
  %len.i = alloca i32, align 4
  %1 = bitcast %struct.t_parm* %parm to i8*
  tail call void @_blockrx(i32 %left, i32 1, i32 776, i8* %1) #7
  %2 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 80
  %3 = getelementptr inbounds %struct.t_grpopts* %2, i64 0, i32 0
  %4 = bitcast %struct.t_grpopts* %2 to i8*
  tail call void @_blockrx(i32 %left, i32 1, i32 4, i8* %4) #7
  %5 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 80, i32 1
  %6 = bitcast i32* %5 to i8*
  tail call void @_blockrx(i32 %left, i32 1, i32 4, i8* %6) #7
  %7 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 80, i32 2
  %8 = bitcast i32* %7 to i8*
  tail call void @_blockrx(i32 %left, i32 1, i32 4, i8* %8) #7
  %9 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 80, i32 3
  %10 = bitcast i32* %9 to i8*
  tail call void @_blockrx(i32 %left, i32 1, i32 4, i8* %10) #7
  %11 = load i32* %3, align 4, !tbaa !18
  %12 = tail call i8* @save_calloc(i8* getelementptr inbounds ([8 x i8]* @.str11, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str8, i64 0, i64 0), i32 172, i32 %11, i32 4) #7
  %13 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 80, i32 4
  %14 = bitcast float** %13 to i8**
  store i8* %12, i8** %14, align 8, !tbaa !20
  %15 = load i32* %3, align 4, !tbaa !18
  %16 = tail call i8* @save_calloc(i8* getelementptr inbounds ([9 x i8]* @.str12, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str8, i64 0, i64 0), i32 173, i32 %15, i32 4) #7
  %17 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 80, i32 6
  %18 = bitcast float** %17 to i8**
  store i8* %16, i8** %18, align 8, !tbaa !21
  %19 = load i32* %3, align 4, !tbaa !18
  %20 = tail call i8* @save_calloc(i8* getelementptr inbounds ([9 x i8]* @.str13, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str8, i64 0, i64 0), i32 174, i32 %19, i32 4) #7
  %21 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 80, i32 5
  %22 = bitcast float** %21 to i8**
  store i8* %20, i8** %22, align 8, !tbaa !22
  %23 = load i32* %5, align 4, !tbaa !23
  %24 = tail call i8* @save_calloc(i8* getelementptr inbounds ([7 x i8]* @.str14, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str8, i64 0, i64 0), i32 175, i32 %23, i32 12) #7
  %25 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 80, i32 7
  %26 = bitcast [3 x float]** %25 to i8**
  store i8* %24, i8** %26, align 8, !tbaa !24
  %27 = load i32* %7, align 4, !tbaa !25
  %28 = tail call i8* @save_calloc(i8* getelementptr inbounds ([11 x i8]* @.str15, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str8, i64 0, i64 0), i32 176, i32 %27, i32 12) #7
  %29 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 80, i32 8
  %30 = bitcast [3 x i32]** %29 to i8**
  store i8* %28, i8** %30, align 8, !tbaa !26
  %31 = load i32* %9, align 4, !tbaa !27
  %32 = mul nsw i32 %31, %31
  %33 = tail call i8* @save_calloc(i8* getelementptr inbounds ([11 x i8]* @.str16, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str8, i64 0, i64 0), i32 177, i32 %32, i32 4) #7
  %34 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 80, i32 9
  %35 = bitcast i32** %34 to i8**
  store i8* %33, i8** %35, align 8, !tbaa !28
  %36 = load i32* %3, align 4, !tbaa !18
  %37 = shl i32 %36, 2
  %38 = load i8** %14, align 8, !tbaa !20
  tail call void @_blockrx(i32 %left, i32 1, i32 %37, i8* %38) #7
  %39 = load i32* %3, align 4, !tbaa !18
  %40 = shl i32 %39, 2
  %41 = load i8** %18, align 8, !tbaa !21
  tail call void @_blockrx(i32 %left, i32 1, i32 %40, i8* %41) #7
  %42 = load i32* %3, align 4, !tbaa !18
  %43 = shl i32 %42, 2
  %44 = load i8** %22, align 8, !tbaa !22
  tail call void @_blockrx(i32 %left, i32 1, i32 %43, i8* %44) #7
  %45 = load i32* %5, align 4, !tbaa !23
  %46 = mul i32 %45, 12
  %47 = load i8** %26, align 8, !tbaa !24
  tail call void @_blockrx(i32 %left, i32 1, i32 %46, i8* %47) #7
  %48 = load i32* %7, align 4, !tbaa !25
  %49 = mul i32 %48, 12
  %50 = load i8** %30, align 8, !tbaa !26
  tail call void @_blockrx(i32 %left, i32 1, i32 %49, i8* %50) #7
  %51 = load i32* %9, align 4, !tbaa !27
  %52 = shl i32 %51, 2
  %53 = mul i32 %52, %51
  %54 = load i8** %35, align 8, !tbaa !28
  tail call void @_blockrx(i32 %left, i32 1, i32 %53, i8* %54) #7
  br label %55

; <label>:55                                      ; preds = %55, %0
  %indvars.iv.i = phi i64 [ 0, %0 ], [ %indvars.iv.next.i, %55 ]
  %56 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 81, i64 %indvars.iv.i
  tail call fastcc void @ld_cosines(i32 %left, %struct.t_cosines* %56) #7
  %57 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 82, i64 %indvars.iv.i
  tail call fastcc void @ld_cosines(i32 %left, %struct.t_cosines* %57) #7
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %exitcond.i = icmp eq i64 %indvars.iv.next.i, 3
  br i1 %exitcond.i, label %ld_parm.exit, label %55

ld_parm.exit:                                     ; preds = %55
  %58 = load %struct.__sFILE** @debug, align 8, !tbaa !29
  %59 = icmp eq %struct.__sFILE* %58, null
  br i1 %59, label %63, label %60

; <label>:60                                      ; preds = %ld_parm.exit
  %61 = load %struct.__sFILE** @stdlog, align 8, !tbaa !29
  %62 = tail call i64 @fwrite(i8* getelementptr inbounds ([14 x i8]* @.str, i64 0, i64 0), i64 13, i64 1, %struct.__sFILE* %61)
  br label %63

; <label>:63                                      ; preds = %ld_parm.exit, %60
  %64 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 1
  %65 = bitcast i32* %64 to i8*
  tail call void @_blockrx(i32 %left, i32 1, i32 4, i8* %65) #7
  %66 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 5
  %67 = bitcast i32* %66 to i8*
  tail call void @_blockrx(i32 %left, i32 1, i32 4, i8* %67) #7
  %68 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 6
  %69 = bitcast i32* %68 to i8*
  tail call void @_blockrx(i32 %left, i32 1, i32 4, i8* %69) #7
  %70 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 4
  %71 = bitcast i32* %70 to i8*
  tail call void @_blockrx(i32 %left, i32 1, i32 4, i8* %71) #7
  %72 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 2
  %73 = bitcast i32* %72 to i8*
  tail call void @_blockrx(i32 %left, i32 1, i32 4, i8* %73) #7
  %74 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 3
  %75 = bitcast i32* %74 to i8*
  tail call void @_blockrx(i32 %left, i32 1, i32 4, i8* %75) #7
  %76 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 7, i64 0
  %77 = bitcast i32* %76 to i8*
  tail call void @_blockrx(i32 %left, i32 1, i32 1024, i8* %77) #7
  %78 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 8, i64 0
  %79 = bitcast i32* %78 to i8*
  tail call void @_blockrx(i32 %left, i32 1, i32 1024, i8* %79) #7
  %80 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 9, i64 0
  %81 = bitcast i32* %80 to i8*
  tail call void @_blockrx(i32 %left, i32 1, i32 1024, i8* %81) #7
  %82 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 10, i64 0
  %83 = bitcast i32* %82 to i8*
  tail call void @_blockrx(i32 %left, i32 1, i32 1024, i8* %83) #7
  %84 = load %struct.__sFILE** @debug, align 8, !tbaa !29
  %85 = icmp eq %struct.__sFILE* %84, null
  br i1 %85, label %89, label %86

; <label>:86                                      ; preds = %63
  %87 = load %struct.__sFILE** @stdlog, align 8, !tbaa !29
  %88 = tail call i64 @fwrite(i8* getelementptr inbounds ([13 x i8]* @.str1, i64 0, i64 0), i64 12, i64 1, %struct.__sFILE* %87)
  br label %89

; <label>:89                                      ; preds = %63, %86
  %90 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 4
  %91 = bitcast i32* %len.i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %91)
  %92 = getelementptr inbounds %struct.t_symtab* %90, i64 0, i32 0
  %93 = bitcast %struct.t_symtab* %90 to i8*
  tail call void @_blockrx(i32 %left, i32 1, i32 4, i8* %93) #7
  %94 = load i32* %92, align 4, !tbaa !30
  %95 = tail call i8* @save_calloc(i8* getelementptr inbounds ([15 x i8]* @.str19, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str8, i64 0, i64 0), i32 94, i32 1, i32 24) #7
  %96 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 4, i32 1
  %97 = bitcast %struct.symbuf** %96 to i8**
  store i8* %95, i8** %97, align 8, !tbaa !32
  %98 = bitcast i8* %95 to i32*
  store i32 %94, i32* %98, align 4, !tbaa !33
  %99 = tail call i8* @save_calloc(i8* getelementptr inbounds ([20 x i8]* @.str20, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str8, i64 0, i64 0), i32 96, i32 %94, i32 8) #7
  %100 = load %struct.symbuf** %96, align 8, !tbaa !32
  %101 = getelementptr inbounds %struct.symbuf* %100, i64 0, i32 1
  %102 = bitcast i8*** %101 to i8**
  store i8* %99, i8** %102, align 8, !tbaa !35
  %103 = icmp sgt i32 %94, 0
  br i1 %103, label %.lr.ph.i, label %ld_symtab.exit

.lr.ph.i:                                         ; preds = %89
  %104 = add i32 %94, -1
  br label %105

; <label>:105                                     ; preds = %105, %.lr.ph.i
  %indvars.iv.i1 = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i2, %105 ]
  call void @_blockrx(i32 %left, i32 1, i32 4, i8* %91) #7
  %106 = load i32* %len.i, align 4, !tbaa !36
  %107 = call i8* @save_calloc(i8* getelementptr inbounds ([23 x i8]* @.str21, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str8, i64 0, i64 0), i32 100, i32 %106, i32 1) #7
  %108 = load %struct.symbuf** %96, align 8, !tbaa !32
  %109 = getelementptr inbounds %struct.symbuf* %108, i64 0, i32 1
  %110 = load i8*** %109, align 8, !tbaa !35
  %111 = getelementptr inbounds i8** %110, i64 %indvars.iv.i1
  store i8* %107, i8** %111, align 8, !tbaa !29
  %112 = load i32* %len.i, align 4, !tbaa !36
  %113 = load %struct.symbuf** %96, align 8, !tbaa !32
  %114 = getelementptr inbounds %struct.symbuf* %113, i64 0, i32 1
  %115 = load i8*** %114, align 8, !tbaa !35
  %116 = getelementptr inbounds i8** %115, i64 %indvars.iv.i1
  %117 = load i8** %116, align 8, !tbaa !29
  call void @_blockrx(i32 %left, i32 1, i32 %112, i8* %117) #7
  %indvars.iv.next.i2 = add nuw nsw i64 %indvars.iv.i1, 1
  %lftr.wideiv = trunc i64 %indvars.iv.i1 to i32
  %exitcond8 = icmp eq i32 %lftr.wideiv, %104
  br i1 %exitcond8, label %ld_symtab.exit, label %105

ld_symtab.exit:                                   ; preds = %105, %89
  call void @llvm.lifetime.end(i64 4, i8* %91)
  %118 = load %struct.__sFILE** @debug, align 8, !tbaa !29
  %119 = icmp eq %struct.__sFILE* %118, null
  br i1 %119, label %123, label %120

; <label>:120                                     ; preds = %ld_symtab.exit
  %121 = load %struct.__sFILE** @stdlog, align 8, !tbaa !29
  %122 = call i64 @fwrite(i8* getelementptr inbounds ([16 x i8]* @.str2, i64 0, i64 0), i64 15, i64 1, %struct.__sFILE* %121)
  br label %123

; <label>:123                                     ; preds = %ld_symtab.exit, %120
  %124 = bitcast i32* %name.i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %124)
  call void @_blockrx(i32 %left, i32 1, i32 4, i8* %124) #7
  %125 = load i32* %name.i, align 4, !tbaa !36
  %126 = call i8** @get_symtab_handle(%struct.t_symtab* %90, i32 %125) #7
  call void @llvm.lifetime.end(i64 4, i8* %124)
  %127 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 0
  store i8** %126, i8*** %127, align 8, !tbaa !37
  %128 = load %struct.__sFILE** @debug, align 8, !tbaa !29
  %129 = icmp eq %struct.__sFILE* %128, null
  br i1 %129, label %133, label %130

; <label>:130                                     ; preds = %123
  %131 = load %struct.__sFILE** @stdlog, align 8, !tbaa !29
  %132 = call i64 @fwrite(i8* getelementptr inbounds ([14 x i8]* @.str3, i64 0, i64 0), i64 13, i64 1, %struct.__sFILE* %131)
  br label %133

; <label>:133                                     ; preds = %123, %130
  %134 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 2
  %135 = getelementptr inbounds %struct.t_atoms* %134, i64 0, i32 0
  %136 = bitcast %struct.t_atoms* %134 to i8*
  call void @_blockrx(i32 %left, i32 1, i32 4, i8* %136) #7
  %137 = load i32* %135, align 4, !tbaa !42
  %138 = call i8* @save_calloc(i8* getelementptr inbounds ([12 x i8]* @.str22, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str8, i64 0, i64 0), i32 125, i32 %137, i32 40) #7
  %139 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 2, i32 1
  %140 = bitcast %struct.t_atom** %139 to i8**
  store i8* %138, i8** %140, align 8, !tbaa !43
  %141 = load i32* %135, align 4, !tbaa !42
  %142 = mul i32 %141, 40
  call void @_blockrx(i32 %left, i32 1, i32 %142, i8* %138) #7
  %143 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 2, i32 2
  %144 = call fastcc i32 @ld_strings(i32 %left, %struct.t_symtab* %90, i8**** %143) #7
  %145 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 2, i32 6
  %146 = call fastcc i32 @ld_strings(i32 %left, %struct.t_symtab* %90, i8**** %145) #7
  %147 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 2, i32 5
  store i32 %146, i32* %147, align 4, !tbaa !44
  %148 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 2, i32 8
  %149 = call fastcc i32 @ld_strings(i32 %left, %struct.t_symtab* %90, i8**** %148) #7
  %150 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 2, i32 7
  store i32 %149, i32* %150, align 4, !tbaa !45
  br label %151

; <label>:151                                     ; preds = %151, %133
  %indvars.iv3.i.i = phi i64 [ 0, %133 ], [ %indvars.iv.next4.i.i, %151 ]
  %152 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 2, i32 10, i64 %indvars.iv3.i.i
  %153 = getelementptr inbounds %struct.t_grps* %152, i64 0, i32 0
  %154 = bitcast %struct.t_grps* %152 to i8*
  call void @_blockrx(i32 %left, i32 1, i32 4, i8* %154) #7
  %155 = load i32* %153, align 4, !tbaa !30
  %156 = call i8* @save_calloc(i8* getelementptr inbounds ([15 x i8]* @.str25, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str8, i64 0, i64 0), i32 111, i32 %155, i32 4) #7
  %157 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 2, i32 10, i64 %indvars.iv3.i.i, i32 1
  %158 = bitcast i32** %157 to i8**
  store i8* %156, i8** %158, align 8, !tbaa !32
  %159 = load i32* %153, align 4, !tbaa !30
  %160 = shl i32 %159, 2
  call void @_blockrx(i32 %left, i32 1, i32 %160, i8* %156) #7
  %indvars.iv.next4.i.i = add nuw nsw i64 %indvars.iv3.i.i, 1
  %exitcond5.i.i = icmp eq i64 %indvars.iv.next4.i.i, 9
  br i1 %exitcond5.i.i, label %ld_atoms.exit, label %151

ld_atoms.exit:                                    ; preds = %151
  %161 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 2, i32 9
  call void @ld_block(i32 %left, %struct.t_block* %161) #7
  %162 = load %struct.__sFILE** @debug, align 8, !tbaa !29
  %163 = icmp eq %struct.__sFILE* %162, null
  br i1 %163, label %167, label %164

; <label>:164                                     ; preds = %ld_atoms.exit
  %165 = load %struct.__sFILE** @stdlog, align 8, !tbaa !29
  %166 = call i64 @fwrite(i8* getelementptr inbounds ([15 x i8]* @.str4, i64 0, i64 0), i64 14, i64 1, %struct.__sFILE* %165)
  br label %167

; <label>:167                                     ; preds = %ld_atoms.exit, %164
  %168 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 1
  %169 = getelementptr inbounds %struct.t_idef* %168, i64 0, i32 0
  %170 = bitcast %struct.t_idef* %168 to i8*
  call void @_blockrx(i32 %left, i32 1, i32 4, i8* %170) #7
  %171 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 1, i32 2
  %172 = bitcast i32* %171 to i8*
  call void @_blockrx(i32 %left, i32 1, i32 4, i8* %172) #7
  %173 = load i32* %169, align 4, !tbaa !46
  %174 = call i8* @save_calloc(i8* getelementptr inbounds ([15 x i8]* @.str26, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str8, i64 0, i64 0), i32 158, i32 %173, i32 4) #7
  %175 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 1, i32 3
  %176 = bitcast i32** %175 to i8**
  store i8* %174, i8** %176, align 8, !tbaa !47
  %177 = load i32* %169, align 4, !tbaa !46
  %178 = call i8* @save_calloc(i8* getelementptr inbounds ([14 x i8]* @.str27, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str8, i64 0, i64 0), i32 159, i32 %177, i32 24) #7
  %179 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 1, i32 4
  %180 = bitcast %union.t_iparams** %179 to i8**
  store i8* %178, i8** %180, align 8, !tbaa !48
  %181 = load i32* %169, align 4, !tbaa !46
  %182 = shl i32 %181, 2
  %183 = load i8** %176, align 8, !tbaa !47
  call void @_blockrx(i32 %left, i32 1, i32 %182, i8* %183) #7
  %184 = load i32* %169, align 4, !tbaa !46
  %185 = mul i32 %184, 24
  %186 = load i8** %180, align 8, !tbaa !48
  call void @_blockrx(i32 %left, i32 1, i32 %185, i8* %186) #7
  br label %187

; <label>:187                                     ; preds = %187, %167
  %indvars.iv.i4 = phi i64 [ 0, %167 ], [ %indvars.iv.next.i5, %187 ]
  %188 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 1, i32 5, i64 %indvars.iv.i4
  %189 = getelementptr inbounds %struct.t_ilist* %188, i64 0, i32 0
  %190 = bitcast %struct.t_ilist* %188 to i8*
  call void @_blockrx(i32 %left, i32 1, i32 4, i8* %190) #7
  %191 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 1, i32 5, i64 %indvars.iv.i4, i32 1, i64 0
  %192 = bitcast i32* %191 to i8*
  call void @_blockrx(i32 %left, i32 1, i32 1024, i8* %192) #7
  %193 = load i32* %189, align 4, !tbaa !49
  %194 = call i8* @save_calloc(i8* getelementptr inbounds ([14 x i8]* @.str28, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str8, i64 0, i64 0), i32 148, i32 %193, i32 4) #7
  %195 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 1, i32 5, i64 %indvars.iv.i4, i32 2
  %196 = bitcast i32** %195 to i8**
  store i8* %194, i8** %196, align 8, !tbaa !51
  %197 = load i32* %189, align 4, !tbaa !49
  %198 = shl i32 %197, 2
  call void @_blockrx(i32 %left, i32 1, i32 %198, i8* %194) #7
  %indvars.iv.next.i5 = add nuw nsw i64 %indvars.iv.i4, 1
  %exitcond.i6 = icmp eq i64 %indvars.iv.next.i5, 44
  br i1 %exitcond.i6, label %ld_idef.exit, label %187

ld_idef.exit:                                     ; preds = %187
  %199 = load %struct.__sFILE** @debug, align 8, !tbaa !29
  %200 = icmp eq %struct.__sFILE* %199, null
  br i1 %200, label %.preheader, label %201

; <label>:201                                     ; preds = %ld_idef.exit
  %202 = load %struct.__sFILE** @stdlog, align 8, !tbaa !29
  %203 = call i64 @fwrite(i8* getelementptr inbounds ([14 x i8]* @.str5, i64 0, i64 0), i64 13, i64 1, %struct.__sFILE* %202)
  br label %.preheader

.preheader:                                       ; preds = %201, %ld_idef.exit, %.preheader
  %indvars.iv = phi i64 [ %indvars.iv.next, %.preheader ], [ 0, %ld_idef.exit ], [ 0, %201 ]
  %204 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 3, i64 %indvars.iv
  call void @ld_block(i32 %left, %struct.t_block* %204) #7
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 3
  br i1 %exitcond, label %205, label %.preheader

; <label>:205                                     ; preds = %.preheader
  %206 = load %struct.__sFILE** @debug, align 8, !tbaa !29
  %207 = icmp eq %struct.__sFILE* %206, null
  br i1 %207, label %211, label %208

; <label>:208                                     ; preds = %205
  %209 = load %struct.__sFILE** @stdlog, align 8, !tbaa !29
  %210 = call i64 @fwrite(i8* getelementptr inbounds ([15 x i8]* @.str6, i64 0, i64 0), i64 14, i64 1, %struct.__sFILE* %209)
  br label %211

; <label>:211                                     ; preds = %205, %208
  %212 = load i32* %135, align 4, !tbaa !52
  %213 = call i8* @save_calloc(i8* getelementptr inbounds ([3 x i8]* @.str7, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str8, i64 0, i64 0), i32 229, i32 %212, i32 12) #7
  %214 = bitcast [3 x float]** %x to i8**
  store i8* %213, i8** %214, align 8, !tbaa !29
  %215 = load i32* %135, align 4, !tbaa !52
  %216 = call i8* @save_calloc(i8* getelementptr inbounds ([3 x i8]* @.str9, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str8, i64 0, i64 0), i32 230, i32 %215, i32 12) #7
  %217 = bitcast [3 x float]** %v to i8**
  store i8* %216, i8** %217, align 8, !tbaa !29
  %218 = load i8** %214, align 8, !tbaa !29
  %219 = bitcast i32* %natoms.i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %219)
  call void @_blockrx(i32 %left, i32 1, i32 4, i8* %219) #7
  %220 = load i32* %natoms.i, align 4, !tbaa !36
  %221 = mul i32 %220, 12
  call void @_blockrx(i32 %left, i32 1, i32 %221, i8* %218) #7
  %222 = load i32* %natoms.i, align 4, !tbaa !36
  %223 = mul i32 %222, 12
  call void @_blockrx(i32 %left, i32 1, i32 %223, i8* %216) #7
  call void @llvm.lifetime.end(i64 4, i8* %219)
  %224 = load %struct.__sFILE** @debug, align 8, !tbaa !29
  %225 = icmp eq %struct.__sFILE* %224, null
  br i1 %225, label %229, label %226

; <label>:226                                     ; preds = %211
  %227 = load %struct.__sFILE** @stdlog, align 8, !tbaa !29
  %228 = call i64 @fwrite(i8* getelementptr inbounds ([17 x i8]* @.str10, i64 0, i64 0), i64 16, i64 1, %struct.__sFILE* %227)
  br label %229

; <label>:229                                     ; preds = %211, %226
  ret void
}

; Function Attrs: optsize
declare void @ld_block(i32, %struct.t_block*) #1

; Function Attrs: optsize
declare i8* @save_calloc(i8*, i8*, i32, i32, i32) #1

; Function Attrs: nounwind optsize ssp uwtable
define void @mv_data(i32 %left, i32 %right, %struct.t_parm* %parm, %struct.t_nsborder* %nsb, %struct.t_topology* %top, [3 x float]* %x, [3 x float]* %v) #4 {
  %1 = alloca i32, align 4
  %nr.i = alloca i32, align 4
  %handle.i = alloca i32, align 4
  %len.i = alloca i32, align 4
  %2 = bitcast %struct.t_parm* %parm to i8*
  tail call void @_blocktx(i32 %right, i32 1, i32 776, i8* %2) #7
  %3 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 80
  %4 = getelementptr inbounds %struct.t_grpopts* %3, i64 0, i32 0
  %5 = bitcast %struct.t_grpopts* %3 to i8*
  tail call void @_blocktx(i32 %right, i32 1, i32 4, i8* %5) #7
  %6 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 80, i32 1
  %7 = bitcast i32* %6 to i8*
  tail call void @_blocktx(i32 %right, i32 1, i32 4, i8* %7) #7
  %8 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 80, i32 2
  %9 = bitcast i32* %8 to i8*
  tail call void @_blocktx(i32 %right, i32 1, i32 4, i8* %9) #7
  %10 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 80, i32 3
  %11 = bitcast i32* %10 to i8*
  tail call void @_blocktx(i32 %right, i32 1, i32 4, i8* %11) #7
  %12 = load i32* %4, align 4, !tbaa !18
  %13 = shl i32 %12, 2
  %14 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 80, i32 4
  %15 = bitcast float** %14 to i8**
  %16 = load i8** %15, align 8, !tbaa !20
  tail call void @_blocktx(i32 %right, i32 1, i32 %13, i8* %16) #7
  %17 = load i32* %4, align 4, !tbaa !18
  %18 = shl i32 %17, 2
  %19 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 80, i32 6
  %20 = bitcast float** %19 to i8**
  %21 = load i8** %20, align 8, !tbaa !21
  tail call void @_blocktx(i32 %right, i32 1, i32 %18, i8* %21) #7
  %22 = load i32* %4, align 4, !tbaa !18
  %23 = shl i32 %22, 2
  %24 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 80, i32 5
  %25 = bitcast float** %24 to i8**
  %26 = load i8** %25, align 8, !tbaa !22
  tail call void @_blocktx(i32 %right, i32 1, i32 %23, i8* %26) #7
  %27 = load i32* %6, align 4, !tbaa !23
  %28 = mul i32 %27, 12
  %29 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 80, i32 7
  %30 = bitcast [3 x float]** %29 to i8**
  %31 = load i8** %30, align 8, !tbaa !24
  tail call void @_blocktx(i32 %right, i32 1, i32 %28, i8* %31) #7
  %32 = load i32* %8, align 4, !tbaa !25
  %33 = mul i32 %32, 12
  %34 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 80, i32 8
  %35 = bitcast [3 x i32]** %34 to i8**
  %36 = load i8** %35, align 8, !tbaa !26
  tail call void @_blocktx(i32 %right, i32 1, i32 %33, i8* %36) #7
  %37 = load i32* %10, align 4, !tbaa !27
  %38 = shl i32 %37, 2
  %39 = mul i32 %38, %37
  %40 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 80, i32 9
  %41 = bitcast i32** %40 to i8**
  %42 = load i8** %41, align 8, !tbaa !28
  tail call void @_blocktx(i32 %right, i32 1, i32 %39, i8* %42) #7
  br label %43

; <label>:43                                      ; preds = %43, %0
  %indvars.iv.i = phi i64 [ 0, %0 ], [ %indvars.iv.next.i, %43 ]
  %44 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 81, i64 %indvars.iv.i
  tail call fastcc void @mv_cosines(i32 %right, %struct.t_cosines* %44) #7
  %45 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 82, i64 %indvars.iv.i
  tail call fastcc void @mv_cosines(i32 %right, %struct.t_cosines* %45) #7
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %exitcond.i = icmp eq i64 %indvars.iv.next.i, 3
  br i1 %exitcond.i, label %mv_parm.exit, label %43

mv_parm.exit:                                     ; preds = %43
  %46 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 1
  %47 = bitcast i32* %46 to i8*
  tail call void @_blocktx(i32 %right, i32 1, i32 4, i8* %47) #7
  %48 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 5
  %49 = bitcast i32* %48 to i8*
  tail call void @_blocktx(i32 %right, i32 1, i32 4, i8* %49) #7
  %50 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 6
  %51 = bitcast i32* %50 to i8*
  tail call void @_blocktx(i32 %right, i32 1, i32 4, i8* %51) #7
  %52 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 4
  %53 = bitcast i32* %52 to i8*
  tail call void @_blocktx(i32 %right, i32 1, i32 4, i8* %53) #7
  %54 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 2
  %55 = bitcast i32* %54 to i8*
  tail call void @_blocktx(i32 %right, i32 1, i32 4, i8* %55) #7
  %56 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 3
  %57 = bitcast i32* %56 to i8*
  tail call void @_blocktx(i32 %right, i32 1, i32 4, i8* %57) #7
  %58 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 7, i64 0
  %59 = bitcast i32* %58 to i8*
  tail call void @_blocktx(i32 %right, i32 1, i32 1024, i8* %59) #7
  %60 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 8, i64 0
  %61 = bitcast i32* %60 to i8*
  tail call void @_blocktx(i32 %right, i32 1, i32 1024, i8* %61) #7
  %62 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 9, i64 0
  %63 = bitcast i32* %62 to i8*
  tail call void @_blocktx(i32 %right, i32 1, i32 1024, i8* %63) #7
  %64 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 10, i64 0
  %65 = bitcast i32* %64 to i8*
  tail call void @_blocktx(i32 %right, i32 1, i32 1024, i8* %65) #7
  %66 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 4
  %67 = bitcast i32* %len.i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %67)
  %68 = bitcast %struct.t_symtab* %66 to i8*
  tail call void @_blocktx(i32 %right, i32 1, i32 4, i8* %68) #7
  %69 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 4, i32 1
  %symbuf.03.i = load %struct.symbuf** %69, align 8
  %70 = icmp eq %struct.symbuf* %symbuf.03.i, null
  br i1 %70, label %mv_symtab.exit, label %.preheader.lr.ph.i

.preheader.lr.ph.i:                               ; preds = %mv_parm.exit
  %71 = getelementptr inbounds %struct.t_symtab* %66, i64 0, i32 0
  %72 = load i32* %71, align 4, !tbaa !30
  br label %.preheader.i

.preheader.i:                                     ; preds = %95, %.preheader.lr.ph.i
  %symbuf.06.i = phi %struct.symbuf* [ %symbuf.03.i, %.preheader.lr.ph.i ], [ %symbuf.0.i, %95 ]
  %nr.04.i = phi i32 [ %72, %.preheader.lr.ph.i ], [ %96, %95 ]
  %73 = getelementptr inbounds %struct.symbuf* %symbuf.06.i, i64 0, i32 0
  %74 = load i32* %73, align 4, !tbaa !33
  %75 = icmp sgt i32 %74, 0
  %76 = icmp sgt i32 %nr.04.i, 0
  %.1.i = and i1 %76, %75
  br i1 %.1.i, label %.lr.ph.i, label %95

.lr.ph.i:                                         ; preds = %.preheader.i
  %77 = getelementptr inbounds %struct.symbuf* %symbuf.06.i, i64 0, i32 1
  %78 = sext i32 %nr.04.i to i64
  br label %79

; <label>:79                                      ; preds = %79, %.lr.ph.i
  %indvars.iv.i1 = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i2, %79 ]
  %80 = load i8*** %77, align 8, !tbaa !35
  %81 = getelementptr inbounds i8** %80, i64 %indvars.iv.i1
  %82 = load i8** %81, align 8, !tbaa !29
  %83 = call i64 @strlen(i8* %82) #7
  %84 = add i64 %83, 1
  %85 = trunc i64 %84 to i32
  store i32 %85, i32* %len.i, align 4, !tbaa !36
  call void @_blocktx(i32 %right, i32 1, i32 4, i8* %67) #7
  %86 = load i32* %len.i, align 4, !tbaa !36
  %87 = load i8*** %77, align 8, !tbaa !35
  %88 = getelementptr inbounds i8** %87, i64 %indvars.iv.i1
  %89 = load i8** %88, align 8, !tbaa !29
  call void @_blocktx(i32 %right, i32 1, i32 %86, i8* %89) #7
  %indvars.iv.next.i2 = add nuw nsw i64 %indvars.iv.i1, 1
  %90 = load i32* %73, align 4, !tbaa !33
  %91 = sext i32 %90 to i64
  %92 = icmp slt i64 %indvars.iv.next.i2, %91
  %93 = icmp sgt i64 %78, %indvars.iv.next.i2
  %..i = and i1 %93, %92
  br i1 %..i, label %79, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %79
  %94 = trunc i64 %indvars.iv.next.i2 to i32
  br label %95

; <label>:95                                      ; preds = %._crit_edge.i, %.preheader.i
  %i.0.lcssa.i = phi i32 [ %94, %._crit_edge.i ], [ 0, %.preheader.i ]
  %96 = sub nsw i32 %nr.04.i, %i.0.lcssa.i
  %97 = getelementptr inbounds %struct.symbuf* %symbuf.06.i, i64 0, i32 2
  %symbuf.0.i = load %struct.symbuf** %97, align 8
  %98 = icmp eq %struct.symbuf* %symbuf.0.i, null
  br i1 %98, label %mv_symtab.exit, label %.preheader.i

mv_symtab.exit:                                   ; preds = %95, %mv_parm.exit
  call void @llvm.lifetime.end(i64 4, i8* %67)
  %99 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 0
  %100 = load i8*** %99, align 8, !tbaa !37
  %101 = bitcast i32* %handle.i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %101)
  %102 = call i32 @lookup_symtab(%struct.t_symtab* %66, i8** %100) #7
  store i32 %102, i32* %handle.i, align 4, !tbaa !36
  call void @_blocktx(i32 %right, i32 1, i32 4, i8* %101) #7
  call void @llvm.lifetime.end(i64 4, i8* %101)
  %103 = bitcast i32* %nr.i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %103)
  %104 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 2, i32 0
  %105 = load i32* %104, align 4, !tbaa !42
  store i32 %105, i32* %nr.i, align 4, !tbaa !36
  call void @_blocktx(i32 %right, i32 1, i32 4, i8* %103) #7
  %106 = load i32* %nr.i, align 4, !tbaa !36
  %107 = mul i32 %106, 40
  %108 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 2, i32 1
  %109 = bitcast %struct.t_atom** %108 to i8**
  %110 = load i8** %109, align 8, !tbaa !43
  call void @_blocktx(i32 %right, i32 1, i32 %107, i8* %110) #7
  %111 = load i32* %104, align 4, !tbaa !42
  %112 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 2, i32 2
  %113 = load i8**** %112, align 8, !tbaa !53
  call fastcc void @mv_strings(i32 %right, %struct.t_symtab* %66, i32 %111, i8*** %113) #7
  %114 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 2, i32 5
  %115 = load i32* %114, align 4, !tbaa !44
  %116 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 2, i32 6
  %117 = load i8**** %116, align 8, !tbaa !54
  call fastcc void @mv_strings(i32 %right, %struct.t_symtab* %66, i32 %115, i8*** %117) #7
  %118 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 2, i32 7
  %119 = load i32* %118, align 4, !tbaa !45
  %120 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 2, i32 8
  %121 = load i8**** %120, align 8, !tbaa !55
  call fastcc void @mv_strings(i32 %right, %struct.t_symtab* %66, i32 %119, i8*** %121) #7
  br label %122

; <label>:122                                     ; preds = %122, %mv_symtab.exit
  %indvars.iv.i.i = phi i64 [ 0, %mv_symtab.exit ], [ %indvars.iv.next.i.i, %122 ]
  %123 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 2, i32 10, i64 %indvars.iv.i.i
  %124 = getelementptr inbounds %struct.t_grps* %123, i64 0, i32 0
  %125 = bitcast %struct.t_grps* %123 to i8*
  call void @_blocktx(i32 %right, i32 1, i32 4, i8* %125) #7
  %126 = load i32* %124, align 4, !tbaa !30
  %127 = shl i32 %126, 2
  %128 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 2, i32 10, i64 %indvars.iv.i.i, i32 1
  %129 = bitcast i32** %128 to i8**
  %130 = load i8** %129, align 8, !tbaa !32
  call void @_blocktx(i32 %right, i32 1, i32 %127, i8* %130) #7
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1
  %exitcond.i.i = icmp eq i64 %indvars.iv.next.i.i, 9
  br i1 %exitcond.i.i, label %mv_atoms.exit, label %122

mv_atoms.exit:                                    ; preds = %122
  %131 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 2, i32 9
  call void @mv_block(i32 %right, %struct.t_block* %131) #7
  call void @llvm.lifetime.end(i64 4, i8* %103)
  %132 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 1
  %133 = getelementptr inbounds %struct.t_idef* %132, i64 0, i32 0
  %134 = bitcast %struct.t_idef* %132 to i8*
  call void @_blocktx(i32 %right, i32 1, i32 4, i8* %134) #7
  %135 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 1, i32 2
  %136 = bitcast i32* %135 to i8*
  call void @_blocktx(i32 %right, i32 1, i32 4, i8* %136) #7
  %137 = load i32* %133, align 4, !tbaa !46
  %138 = shl i32 %137, 2
  %139 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 1, i32 3
  %140 = bitcast i32** %139 to i8**
  %141 = load i8** %140, align 8, !tbaa !47
  call void @_blocktx(i32 %right, i32 1, i32 %138, i8* %141) #7
  %142 = load i32* %133, align 4, !tbaa !46
  %143 = mul i32 %142, 24
  %144 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 1, i32 4
  %145 = bitcast %union.t_iparams** %144 to i8**
  %146 = load i8** %145, align 8, !tbaa !48
  call void @_blocktx(i32 %right, i32 1, i32 %143, i8* %146) #7
  br label %147

; <label>:147                                     ; preds = %147, %mv_atoms.exit
  %indvars.iv.i3 = phi i64 [ 0, %mv_atoms.exit ], [ %indvars.iv.next.i4, %147 ]
  %148 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 1, i32 5, i64 %indvars.iv.i3
  %149 = getelementptr inbounds %struct.t_ilist* %148, i64 0, i32 0
  %150 = bitcast %struct.t_ilist* %148 to i8*
  call void @_blocktx(i32 %right, i32 1, i32 4, i8* %150) #7
  %151 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 1, i32 5, i64 %indvars.iv.i3, i32 1, i64 0
  %152 = bitcast i32* %151 to i8*
  call void @_blocktx(i32 %right, i32 1, i32 1024, i8* %152) #7
  %153 = load i32* %149, align 4, !tbaa !49
  %154 = shl i32 %153, 2
  %155 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 1, i32 5, i64 %indvars.iv.i3, i32 2
  %156 = bitcast i32** %155 to i8**
  %157 = load i8** %156, align 8, !tbaa !51
  call void @_blocktx(i32 %right, i32 1, i32 %154, i8* %157) #7
  %indvars.iv.next.i4 = add nuw nsw i64 %indvars.iv.i3, 1
  %exitcond.i5 = icmp eq i64 %indvars.iv.next.i4, 44
  br i1 %exitcond.i5, label %mv_idef.exit, label %147

mv_idef.exit:                                     ; preds = %147, %mv_idef.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %mv_idef.exit ], [ 0, %147 ]
  %158 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 3, i64 %indvars.iv
  call void @mv_block(i32 %right, %struct.t_block* %158) #7
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 3
  br i1 %exitcond, label %159, label %mv_idef.exit

; <label>:159                                     ; preds = %mv_idef.exit
  %160 = load i32* %104, align 4, !tbaa !52
  %161 = bitcast i32* %1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %161)
  store i32 %160, i32* %1, align 4, !tbaa !36
  call void @_blocktx(i32 %right, i32 1, i32 4, i8* %161) #7
  %162 = load i32* %1, align 4, !tbaa !36
  %163 = mul i32 %162, 12
  %164 = bitcast [3 x float]* %x to i8*
  call void @_blocktx(i32 %right, i32 1, i32 %163, i8* %164) #7
  %165 = load i32* %1, align 4, !tbaa !36
  %166 = mul i32 %165, 12
  %167 = bitcast [3 x float]* %v to i8*
  call void @_blocktx(i32 %right, i32 1, i32 %166, i8* %167) #7
  call void @llvm.lifetime.end(i64 4, i8* %161)
  ret void
}

; Function Attrs: optsize
declare void @mv_block(i32, %struct.t_block*) #1

; Function Attrs: optsize
declare void @_blockrx(i32, i32, i32, i8*) #1

; Function Attrs: nounwind optsize ssp uwtable
define internal fastcc void @ld_cosines(i32 %src, %struct.t_cosines* %cs) #4 {
  %1 = getelementptr inbounds %struct.t_cosines* %cs, i64 0, i32 0
  %2 = bitcast %struct.t_cosines* %cs to i8*
  tail call void @_blockrx(i32 %src, i32 1, i32 4, i8* %2) #7
  %3 = load i32* %1, align 4, !tbaa !56
  %4 = tail call i8* @save_calloc(i8* getelementptr inbounds ([6 x i8]* @.str17, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str8, i64 0, i64 0), i32 189, i32 %3, i32 4) #7
  %5 = getelementptr inbounds %struct.t_cosines* %cs, i64 0, i32 1
  %6 = bitcast float** %5 to i8**
  store i8* %4, i8** %6, align 8, !tbaa !58
  %7 = load i32* %1, align 4, !tbaa !56
  %8 = tail call i8* @save_calloc(i8* getelementptr inbounds ([8 x i8]* @.str18, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str8, i64 0, i64 0), i32 190, i32 %7, i32 4) #7
  %9 = getelementptr inbounds %struct.t_cosines* %cs, i64 0, i32 2
  %10 = bitcast float** %9 to i8**
  store i8* %8, i8** %10, align 8, !tbaa !59
  %11 = load i32* %1, align 4, !tbaa !56
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %19

; <label>:13                                      ; preds = %0
  %14 = shl i32 %11, 2
  %15 = load i8** %6, align 8, !tbaa !58
  tail call void @_blockrx(i32 %src, i32 1, i32 %14, i8* %15) #7
  %16 = load i32* %1, align 4, !tbaa !56
  %17 = shl i32 %16, 2
  %18 = load i8** %10, align 8, !tbaa !59
  tail call void @_blockrx(i32 %src, i32 1, i32 %17, i8* %18) #7
  br label %19

; <label>:19                                      ; preds = %13, %0
  ret void
}

; Function Attrs: optsize
declare i8** @get_symtab_handle(%struct.t_symtab*, i32) #1

; Function Attrs: nounwind optsize ssp uwtable
define internal fastcc i32 @ld_strings(i32 %src, %struct.t_symtab* %symtab, i8**** nocapture %nm) #4 {
  %nr = alloca i32, align 4
  %1 = bitcast i32* %nr to i8*
  call void @_blockrx(i32 %src, i32 1, i32 4, i8* %1) #7
  %2 = load i32* %nr, align 4, !tbaa !36
  %3 = call i8* @save_calloc(i8* getelementptr inbounds ([7 x i8]* @.str23, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str8, i64 0, i64 0), i32 76, i32 %2, i32 4) #7
  %4 = bitcast i8* %3 to i32*
  %5 = load i32* %nr, align 4, !tbaa !36
  %6 = shl i32 %5, 2
  call void @_blockrx(i32 %src, i32 1, i32 %6, i8* %3) #7
  %7 = load i32* %nr, align 4, !tbaa !36
  %8 = call i8* @save_calloc(i8* getelementptr inbounds ([4 x i8]* @.str24, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str8, i64 0, i64 0), i32 79, i32 %7, i32 8) #7
  %9 = bitcast i8* %8 to i8***
  %10 = bitcast i8**** %nm to i8**
  store i8* %8, i8** %10, align 8, !tbaa !29
  %11 = load i32* %nr, align 4, !tbaa !36
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %0, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %0 ]
  %13 = getelementptr inbounds i32* %4, i64 %indvars.iv
  %14 = load i32* %13, align 4, !tbaa !36
  %15 = call i8** @get_symtab_handle(%struct.t_symtab* %symtab, i32 %14) #7
  %16 = getelementptr inbounds i8*** %9, i64 %indvars.iv
  store i8** %15, i8*** %16, align 8, !tbaa !29
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %17 = load i32* %nr, align 4, !tbaa !36
  %18 = sext i32 %17 to i64
  %19 = icmp slt i64 %indvars.iv.next, %18
  br i1 %19, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %0
  call void @save_free(i8* getelementptr inbounds ([7 x i8]* @.str23, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str8, i64 0, i64 0), i32 83, i8* %3) #7
  %20 = load i32* %nr, align 4, !tbaa !36
  ret i32 %20
}

; Function Attrs: optsize
declare void @save_free(i8*, i8*, i32, i8*) #1

; Function Attrs: optsize
declare void @_blocktx(i32, i32, i32, i8*) #1

; Function Attrs: nounwind optsize ssp uwtable
define internal fastcc void @mv_cosines(i32 %dest, %struct.t_cosines* %cs) #4 {
  %1 = getelementptr inbounds %struct.t_cosines* %cs, i64 0, i32 0
  %2 = bitcast %struct.t_cosines* %cs to i8*
  tail call void @_blocktx(i32 %dest, i32 1, i32 4, i8* %2) #7
  %3 = load i32* %1, align 4, !tbaa !56
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %15

; <label>:5                                       ; preds = %0
  %6 = shl i32 %3, 2
  %7 = getelementptr inbounds %struct.t_cosines* %cs, i64 0, i32 1
  %8 = bitcast float** %7 to i8**
  %9 = load i8** %8, align 8, !tbaa !58
  tail call void @_blocktx(i32 %dest, i32 1, i32 %6, i8* %9) #7
  %10 = load i32* %1, align 4, !tbaa !56
  %11 = shl i32 %10, 2
  %12 = getelementptr inbounds %struct.t_cosines* %cs, i64 0, i32 2
  %13 = bitcast float** %12 to i8**
  %14 = load i8** %13, align 8, !tbaa !59
  tail call void @_blocktx(i32 %dest, i32 1, i32 %11, i8* %14) #7
  br label %15

; <label>:15                                      ; preds = %5, %0
  ret void
}

; Function Attrs: nounwind optsize readonly
declare i64 @strlen(i8* nocapture) #5

; Function Attrs: optsize
declare i32 @lookup_symtab(%struct.t_symtab*, i8**) #1

; Function Attrs: nounwind optsize ssp uwtable
define internal fastcc void @mv_strings(i32 %dest, %struct.t_symtab* %symtab, i32 %nr, i8*** nocapture readonly %nm) #4 {
  %1 = alloca i32, align 4
  store i32 %nr, i32* %1, align 4, !tbaa !36
  %2 = tail call i8* @save_calloc(i8* getelementptr inbounds ([7 x i8]* @.str23, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str8, i64 0, i64 0), i32 298, i32 %nr, i32 4) #7
  %3 = bitcast i8* %2 to i32*
  %4 = icmp sgt i32 %nr, 0
  br i1 %4, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %0, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %0 ]
  %5 = getelementptr inbounds i8*** %nm, i64 %indvars.iv
  %6 = load i8*** %5, align 8, !tbaa !29
  %7 = tail call i32 @lookup_symtab(%struct.t_symtab* %symtab, i8** %6) #7
  %8 = getelementptr inbounds i32* %3, i64 %indvars.iv
  store i32 %7, i32* %8, align 4, !tbaa !36
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %9 = load i32* %1, align 4, !tbaa !36
  %10 = sext i32 %9 to i64
  %11 = icmp slt i64 %indvars.iv.next, %10
  br i1 %11, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %0
  %12 = bitcast i32* %1 to i8*
  call void @_blocktx(i32 %dest, i32 1, i32 4, i8* %12) #7
  %13 = load i32* %1, align 4, !tbaa !36
  %14 = shl i32 %13, 2
  call void @_blocktx(i32 %dest, i32 1, i32 %14, i8* %2) #7
  call void @save_free(i8* getelementptr inbounds ([7 x i8]* @.str23, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str8, i64 0, i64 0), i32 303, i8* %2) #7
  ret void
}

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct.__sFILE* nocapture) #6

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #6

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #6

attributes #0 = { alwaysinline nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { alwaysinline nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }
attributes #4 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { nounwind optsize }
attributes #8 = { readnone }

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
!19 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !4, i64 16, !4, i64 24, !4, i64 32, !4, i64 40, !4, i64 48, !4, i64 56}
!20 = !{!19, !4, i64 16}
!21 = !{!19, !4, i64 32}
!22 = !{!19, !4, i64 24}
!23 = !{!19, !7, i64 4}
!24 = !{!19, !4, i64 40}
!25 = !{!19, !7, i64 8}
!26 = !{!19, !4, i64 48}
!27 = !{!19, !7, i64 12}
!28 = !{!19, !4, i64 56}
!29 = !{!4, !4, i64 0}
!30 = !{!31, !7, i64 0}
!31 = !{!"", !7, i64 0, !4, i64 8}
!32 = !{!31, !4, i64 8}
!33 = !{!34, !7, i64 0}
!34 = !{!"symbuf", !7, i64 0, !4, i64 8, !4, i64 16}
!35 = !{!34, !4, i64 8}
!36 = !{!7, !7, i64 0}
!37 = !{!38, !4, i64 0}
!38 = !{!"", !4, i64 0, !39, i64 8, !40, i64 45800, !5, i64 47080, !31, i64 50248}
!39 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8, !4, i64 16, !4, i64 24, !5, i64 32}
!40 = !{!"", !7, i64 0, !4, i64 8, !4, i64 16, !4, i64 24, !4, i64 32, !7, i64 40, !4, i64 48, !7, i64 56, !4, i64 64, !41, i64 72, !5, i64 1128, !4, i64 1272}
!41 = !{!"", !5, i64 0, !7, i64 1024, !4, i64 1032, !7, i64 1040, !4, i64 1048}
!42 = !{!40, !7, i64 0}
!43 = !{!40, !4, i64 8}
!44 = !{!40, !7, i64 40}
!45 = !{!40, !7, i64 56}
!46 = !{!39, !7, i64 0}
!47 = !{!39, !4, i64 16}
!48 = !{!39, !4, i64 24}
!49 = !{!50, !7, i64 0}
!50 = !{!"", !7, i64 0, !5, i64 4, !4, i64 1032}
!51 = !{!50, !4, i64 1032}
!52 = !{!38, !7, i64 45800}
!53 = !{!40, !4, i64 16}
!54 = !{!40, !4, i64 48}
!55 = !{!40, !4, i64 64}
!56 = !{!57, !7, i64 0}
!57 = !{!"", !7, i64 0, !4, i64 8, !4, i64 16}
!58 = !{!57, !4, i64 8}
!59 = !{!57, !4, i64 16}
