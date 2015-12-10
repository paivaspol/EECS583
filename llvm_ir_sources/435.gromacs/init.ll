; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/init.c'
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
%struct.t_parm = type { %struct.t_inputrec, [3 x [3 x float]], [3 x [3 x float]], [3 x [3 x float]], [3 x [3 x float]], [3 x [3 x float]] }
%struct.t_inputrec = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, float, float, float, i32, i32, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, i32, float, [3 x [3 x float]], [3 x [3 x float]], i32, float, float, i32, float, float, i32, float, float, float, i32, float, float, i32, float, float, float, float, float, i32, i32, i32, float, float, float, i32, float, float, i32, i32, i32, i32, i32, float, i32, float, float, i32, float, i32, i32, i32, i32, float, float, float, float, %struct.t_grpopts, [3 x %struct.t_cosines], [3 x %struct.t_cosines] }
%struct.t_grpopts = type { i32, i32, i32, i32, float*, float*, float*, [3 x float]*, [3 x i32]*, i32* }
%struct.t_cosines = type { i32, float*, float* }
%struct.t_mdatoms = type { float, i32, float*, float*, float*, float*, float*, float*, float*, i32*, i32*, i32*, i32*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16* }
%struct.t_nsborder = type { i32, i32, i32, i32, i32, i32, i32, [256 x i32], [256 x i32], [256 x i32], [256 x i32] }
%struct.t_tpxheader = type { i32, i32, i32, i32, i32, i32, i32, i32, float, float }
%struct.t_commrec = type { i32, i32, i32, i32, i32, i32 }
%struct.t_comm_dummies = type { i32, i32, i32*, i32*, i32, i32, i32*, i32* }

@.str = private unnamed_addr constant [95 x i8] c"run input file %s was made for %d nodes,\0A             while %s expected it to be for %d nodes.\00", align 1
@.str1 = private unnamed_addr constant [4 x i8] c"tpx\00", align 1
@.str2 = private unnamed_addr constant [64 x i8] c"../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/init.c\00", align 1
@.str3 = private unnamed_addr constant [3 x i8] c"*x\00", align 1
@.str4 = private unnamed_addr constant [3 x i8] c"*v\00", align 1
@.str5 = private unnamed_addr constant [17 x i8] c"Input Parameters\00", align 1
@.str6 = private unnamed_addr constant [23 x i8] c"Neighbor Search Blocks\00", align 1
@.str7 = private unnamed_addr constant [2 x i8] c"x\00", align 1
@.str8 = private unnamed_addr constant [2 x i8] c"v\00", align 1
@stdlog = external global %struct.__sFILE*
@.str9 = private unnamed_addr constant [16 x i8] c"Listing Scalars\00", align 1
@.str10 = private unnamed_addr constant [22 x i8] c"parameters of the run\00", align 1
@.str11 = private unnamed_addr constant [9 x i8] c"topology\00", align 1
@.str12 = private unnamed_addr constant [17 x i8] c"%s (nodeid=%d):\0A\00", align 1
@.str13 = private unnamed_addr constant [13 x i8] c"input record\00", align 1
@.str14 = private unnamed_addr constant [4 x i8] c"box\00", align 1
@.str15 = private unnamed_addr constant [5 x i8] c"ekin\00", align 1
@.str16 = private unnamed_addr constant [5 x i8] c"pres\00", align 1
@.str17 = private unnamed_addr constant [4 x i8] c"vir\00", align 1
@int_title.buf = internal global [256 x i8] zeroinitializer, align 16
@.str18 = private unnamed_addr constant [8 x i8] c"%s (%d)\00", align 1

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
  %3 = tail call float @llvm.fabs.f32(float %__x) #7
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
  %3 = tail call double @llvm.fabs.f64(double %__x) #7
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
  %3 = tail call x86_fp80 @llvm.fabs.f80(x86_fp80 %__x) #7
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
  %1 = tail call float @llvm.fabs.f32(float %__x) #7
  %2 = fcmp oeq float %1, 0x7FF0000000000000
  %3 = zext i1 %2 to i32
  ret i32 %3
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isinfd(double %__x) #0 {
  %1 = tail call double @llvm.fabs.f64(double %__x) #7
  %2 = fcmp oeq double %1, 0x7FF0000000000000
  %3 = zext i1 %2 to i32
  ret i32 %3
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isinfl(x86_fp80 %__x) #0 {
  %1 = tail call x86_fp80 @llvm.fabs.f80(x86_fp80 %__x) #7
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
  %1 = tail call <2 x float> @__sincosf_stret(float %__x) #8
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
  %1 = tail call { double, double } @__sincos_stret(double %__x) #8
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
  %1 = tail call <2 x float> @__sincospif_stret(float %__x) #8
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
  %1 = tail call { double, double } @__sincospi_stret(double %__x) #8
  %2 = extractvalue { double, double } %1, 0
  %3 = extractvalue { double, double } %1, 1
  store double %2, double* %__sinp, align 8, !tbaa !6
  store double %3, double* %__cosp, align 8, !tbaa !6
  ret void
}

; Function Attrs: optsize
declare { double, double } @__sincospi_stret(double) #3

; Function Attrs: nounwind optsize ssp uwtable
define void @check_nnodes_top(i8* %fn, %struct.t_topology* nocapture readonly %top, i32 %nnodes) #4 {
  br label %1

; <label>:1                                       ; preds = %0, %6
  %indvars.iv = phi i64 [ 255, %0 ], [ %indvars.iv.next, %6 ]
  %i.01 = phi i32 [ 255, %0 ], [ %7, %6 ]
  %2 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 3, i64 0, i32 0, i64 %indvars.iv
  %3 = load i32* %2, align 4, !tbaa !8
  %4 = icmp eq i32 %3, 0
  %5 = trunc i64 %indvars.iv to i32
  br i1 %4, label %6, label %.critedge

; <label>:6                                       ; preds = %1
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %7 = add nsw i32 %i.01, -1
  %8 = icmp sgt i64 %indvars.iv, 1
  br i1 %8, label %1, label %.critedge

.critedge:                                        ; preds = %6, %1
  %i.0.lcssa = phi i32 [ %7, %6 ], [ %5, %1 ]
  %9 = add nsw i32 %i.0.lcssa, 1
  %10 = icmp eq i32 %9, %nnodes
  br i1 %10, label %13, label %11

; <label>:11                                      ; preds = %.critedge
  %12 = tail call i8* @ShortProgram() #8
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([95 x i8]* @.str, i64 0, i64 0), i8* %fn, i32 %9, i8* %12, i32 %nnodes) #8
  br label %13

; <label>:13                                      ; preds = %.critedge, %11
  ret void
}

; Function Attrs: optsize
declare void @fatal_error(i32, i8*, ...) #3

; Function Attrs: optsize
declare i8* @ShortProgram() #3

; Function Attrs: nounwind optsize ssp uwtable
define void @init_single(%struct.__sFILE* %log, %struct.t_parm* %parm, i8* %tpxfile, %struct.t_topology* %top, [3 x float]** nocapture %x, [3 x float]** nocapture %v, %struct.t_mdatoms** nocapture %mdatoms, %struct.t_nsborder* %nsb) #4 {
  %step = alloca i32, align 4
  %natoms = alloca i32, align 4
  %t = alloca float, align 4
  %lambda = alloca float, align 4
  %1 = tail call i8* @save_calloc(i8* getelementptr inbounds ([4 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([64 x i8]* @.str2, i64 0, i64 0), i32 110, i32 1, i32 40) #8
  %2 = bitcast i8* %1 to %struct.t_tpxheader*
  tail call void @read_tpxheader(i8* %tpxfile, %struct.t_tpxheader* %2) #8
  %3 = getelementptr inbounds i8* %1, i64 24
  %4 = bitcast i8* %3 to i32*
  %5 = load i32* %4, align 4, !tbaa !10
  %6 = tail call i8* @save_calloc(i8* getelementptr inbounds ([3 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([64 x i8]* @.str2, i64 0, i64 0), i32 113, i32 %5, i32 12) #8
  %7 = bitcast [3 x float]** %x to i8**
  store i8* %6, i8** %7, align 8, !tbaa !12
  %8 = load i32* %4, align 4, !tbaa !10
  %9 = tail call i8* @save_calloc(i8* getelementptr inbounds ([3 x i8]* @.str4, i64 0, i64 0), i8* getelementptr inbounds ([64 x i8]* @.str2, i64 0, i64 0), i32 114, i32 %8, i32 12) #8
  %10 = bitcast [3 x float]** %v to i8**
  store i8* %9, i8** %10, align 8, !tbaa !12
  tail call void @save_free(i8* getelementptr inbounds ([4 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([64 x i8]* @.str2, i64 0, i64 0), i32 116, i8* %1) #8
  %11 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0
  %12 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 1, i64 0
  %13 = load [3 x float]** %x, align 8, !tbaa !12
  %14 = load [3 x float]** %v, align 8, !tbaa !12
  call void @read_tpx(i8* %tpxfile, i32* %step, float* %t, float* %lambda, %struct.t_inputrec* %11, [3 x float]* %12, i32* %natoms, [3 x float]* %13, [3 x float]* %14, [3 x float]* null, %struct.t_topology* %top) #8
  call void @check_nnodes_top(i8* %tpxfile, %struct.t_topology* %top, i32 1) #9
  %15 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 2
  %16 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 80, i32 8
  %17 = load [3 x i32]** %16, align 8, !tbaa !14
  %18 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 0
  %19 = load i32* %18, align 4, !tbaa !18
  %20 = icmp eq i32 %19, 3
  %21 = zext i1 %20 to i32
  %22 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 15
  %23 = load float* %22, align 4, !tbaa !19
  %24 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 69
  %25 = load float* %24, align 4, !tbaa !20
  %26 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 80, i32 6
  %27 = load float** %26, align 8, !tbaa !21
  %28 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 46
  %29 = load i32* %28, align 4, !tbaa !22
  %30 = icmp ne i32 %29, 0
  %31 = zext i1 %30 to i32
  %32 = call %struct.t_mdatoms* @atoms2md(%struct.__sFILE* %log, %struct.t_atoms* %15, [3 x i32]* %17, i32 %21, float %23, float %25, float* %27, i32 %31, i32 0) #8
  store %struct.t_mdatoms* %32, %struct.t_mdatoms** %mdatoms, align 8, !tbaa !12
  %33 = icmp eq %struct.__sFILE* %log, null
  br i1 %33, label %.critedge, label %34

; <label>:34                                      ; preds = %0
  call void @pr_inputrec(%struct.__sFILE* %log, i32 0, i8* getelementptr inbounds ([17 x i8]* @.str5, i64 0, i64 0), %struct.t_inputrec* %11) #8
  %35 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 3, i64 0
  call void @calc_nsb(%struct.__sFILE* %log, %struct.t_block* %35, i32 1, %struct.t_nsborder* %nsb, i32 0) #8
  call void @print_nsb(%struct.__sFILE* %log, i8* getelementptr inbounds ([23 x i8]* @.str6, i64 0, i64 0), %struct.t_nsborder* %nsb) #8
  br label %37

.critedge:                                        ; preds = %0
  %36 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 3, i64 0
  call void @calc_nsb(%struct.__sFILE* null, %struct.t_block* %36, i32 1, %struct.t_nsborder* %nsb, i32 0) #8
  br label %37

; <label>:37                                      ; preds = %.critedge, %34
  ret void
}

; Function Attrs: optsize
declare i8* @save_calloc(i8*, i8*, i32, i32, i32) #3

; Function Attrs: optsize
declare void @read_tpxheader(i8*, %struct.t_tpxheader*) #3

; Function Attrs: optsize
declare void @save_free(i8*, i8*, i32, i8*) #3

; Function Attrs: optsize
declare void @read_tpx(i8*, i32*, float*, float*, %struct.t_inputrec*, [3 x float]*, i32*, [3 x float]*, [3 x float]*, [3 x float]*, %struct.t_topology*) #3

; Function Attrs: optsize
declare %struct.t_mdatoms* @atoms2md(%struct.__sFILE*, %struct.t_atoms*, [3 x i32]*, i32, float, float, float*, i32, i32) #3

; Function Attrs: optsize
declare void @pr_inputrec(%struct.__sFILE*, i32, i8*, %struct.t_inputrec*) #3

; Function Attrs: optsize
declare void @calc_nsb(%struct.__sFILE*, %struct.t_block*, i32, %struct.t_nsborder*, i32) #3

; Function Attrs: optsize
declare void @print_nsb(%struct.__sFILE*, i8*, %struct.t_nsborder*) #3

; Function Attrs: nounwind optsize ssp uwtable
define void @distribute_parts(i32 %left, i32 %right, i32 %nodeid, i32 %nnodes, %struct.t_parm* %parm, i8* %tpxfile, i32 %nstDlb) #4 {
  %natoms = alloca i32, align 4
  %step = alloca i32, align 4
  %t = alloca float, align 4
  %lambda = alloca float, align 4
  %tpx = alloca %struct.t_tpxheader, align 4
  %top = alloca %struct.t_topology, align 8
  %nsb = alloca %struct.t_nsborder, align 4
  %1 = bitcast %struct.t_tpxheader* %tpx to i8*
  call void @llvm.lifetime.start(i64 40, i8* %1) #5
  %2 = bitcast %struct.t_topology* %top to i8*
  call void @llvm.lifetime.start(i64 50264, i8* %2) #5
  %3 = bitcast %struct.t_nsborder* %nsb to i8*
  call void @llvm.lifetime.start(i64 4124, i8* %3) #5
  call void @read_tpxheader(i8* %tpxfile, %struct.t_tpxheader* %tpx) #8
  %4 = getelementptr inbounds %struct.t_tpxheader* %tpx, i64 0, i32 6
  %5 = load i32* %4, align 4, !tbaa !10
  %6 = call i8* @save_calloc(i8* getelementptr inbounds ([2 x i8]* @.str7, i64 0, i64 0), i8* getelementptr inbounds ([64 x i8]* @.str2, i64 0, i64 0), i32 147, i32 %5, i32 12) #8
  %7 = bitcast i8* %6 to [3 x float]*
  %8 = load i32* %4, align 4, !tbaa !10
  %9 = call i8* @save_calloc(i8* getelementptr inbounds ([2 x i8]* @.str8, i64 0, i64 0), i8* getelementptr inbounds ([64 x i8]* @.str2, i64 0, i64 0), i32 148, i32 %8, i32 12) #8
  %10 = bitcast i8* %9 to [3 x float]*
  %11 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0
  %12 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 1, i64 0
  call void @read_tpx(i8* %tpxfile, i32* %step, float* %t, float* %lambda, %struct.t_inputrec* %11, [3 x float]* %12, i32* %natoms, [3 x float]* %7, [3 x float]* %10, [3 x float]* null, %struct.t_topology* %top) #8
  call void @check_nnodes_top(i8* %tpxfile, %struct.t_topology* %top, i32 %nnodes) #9
  %13 = load %struct.__sFILE** @stdlog, align 8, !tbaa !12
  %14 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 3, i64 0
  call void @calc_nsb(%struct.__sFILE* %13, %struct.t_block* %14, i32 %nnodes, %struct.t_nsborder* %nsb, i32 %nstDlb) #8
  call void @mv_data(i32 %left, i32 %right, %struct.t_parm* %parm, %struct.t_nsborder* %nsb, %struct.t_topology* %top, [3 x float]* %7, [3 x float]* %10) #8
  call void @done_top(%struct.t_topology* %top) #8
  call void @save_free(i8* getelementptr inbounds ([2 x i8]* @.str7, i64 0, i64 0), i8* getelementptr inbounds ([64 x i8]* @.str2, i64 0, i64 0), i32 156, i8* %6) #8
  call void @save_free(i8* getelementptr inbounds ([2 x i8]* @.str8, i64 0, i64 0), i8* getelementptr inbounds ([64 x i8]* @.str2, i64 0, i64 0), i32 157, i8* %9) #8
  call void @llvm.lifetime.end(i64 4124, i8* %3) #5
  call void @llvm.lifetime.end(i64 50264, i8* %2) #5
  call void @llvm.lifetime.end(i64 40, i8* %1) #5
  ret void
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #5

; Function Attrs: optsize
declare void @mv_data(i32, i32, %struct.t_parm*, %struct.t_nsborder*, %struct.t_topology*, [3 x float]*, [3 x float]*) #3

; Function Attrs: optsize
declare void @done_top(%struct.t_topology*) #3

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #5

; Function Attrs: nounwind optsize ssp uwtable
define void @init_parts(%struct.__sFILE* %log, %struct.t_commrec* %cr, %struct.t_parm* %parm, %struct.t_topology* %top, [3 x float]** %x, [3 x float]** %v, %struct.t_mdatoms** nocapture %mdatoms, %struct.t_nsborder* %nsb, i32 %list, i32* %bParallelDummies, %struct.t_comm_dummies* %dummycomm) #4 {
  %1 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 2
  %2 = load i32* %1, align 4, !tbaa !23
  %3 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 3
  %4 = load i32* %3, align 4, !tbaa !25
  tail call void @ld_data(i32 %2, i32 %4, %struct.t_parm* %parm, %struct.t_nsborder* %nsb, %struct.t_topology* %top, [3 x float]** %x, [3 x float]** %v) #8
  %5 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 0
  %6 = load i32* %5, align 4, !tbaa !26
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %13, label %8

; <label>:8                                       ; preds = %0
  %9 = load i32* %1, align 4, !tbaa !23
  %10 = load i32* %3, align 4, !tbaa !25
  %11 = load [3 x float]** %x, align 8, !tbaa !12
  %12 = load [3 x float]** %v, align 8, !tbaa !12
  tail call void @mv_data(i32 %9, i32 %10, %struct.t_parm* %parm, %struct.t_nsborder* %nsb, %struct.t_topology* %top, [3 x float]* %11, [3 x float]* %12) #8
  %.pre = load i32* %5, align 4, !tbaa !26
  br label %13

; <label>:13                                      ; preds = %0, %8
  %14 = phi i32 [ 0, %0 ], [ %.pre, %8 ]
  %15 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 70
  %16 = load i32* %15, align 4, !tbaa !27
  %17 = add nsw i32 %16, %14
  store i32 %17, i32* %15, align 4, !tbaa !27
  tail call void @mdsplit_top(%struct.__sFILE* %log, %struct.t_topology* %top, %struct.t_commrec* %cr, %struct.t_nsborder* %nsb, i32* %bParallelDummies, %struct.t_comm_dummies* %dummycomm) #8
  %18 = icmp ne i32 %list, 0
  %19 = icmp ne %struct.__sFILE* %log, null
  %or.cond = and i1 %19, %18
  br i1 %or.cond, label %20, label %53

; <label>:20                                      ; preds = %13
  %21 = and i32 %list, 1
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %24, label %23

; <label>:23                                      ; preds = %20
  tail call void @print_nsb(%struct.__sFILE* %log, i8* getelementptr inbounds ([16 x i8]* @.str9, i64 0, i64 0), %struct.t_nsborder* %nsb) #8
  br label %24

; <label>:24                                      ; preds = %20, %23
  %25 = and i32 %list, 2
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %29, label %27

; <label>:27                                      ; preds = %24
  %28 = load i32* %5, align 4, !tbaa !26
  tail call void @write_parm(%struct.__sFILE* %log, i8* getelementptr inbounds ([22 x i8]* @.str10, i64 0, i64 0), i32 %28, %struct.t_parm* %parm) #9
  br label %29

; <label>:29                                      ; preds = %24, %27
  %30 = and i32 %list, 8
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %37, label %32

; <label>:32                                      ; preds = %29
  %33 = tail call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* getelementptr inbounds ([256 x i8]* @int_title.buf, i64 0, i64 0), i32 0, i64 256, i8* getelementptr inbounds ([8 x i8]* @.str18, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8]* @.str7, i64 0, i64 0), i32 0) #8
  %34 = load [3 x float]** %x, align 8, !tbaa !12
  %35 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 3
  %36 = load i32* %35, align 4, !tbaa !28
  tail call void @pr_rvecs(%struct.__sFILE* %log, i32 0, i8* getelementptr inbounds ([256 x i8]* @int_title.buf, i64 0, i64 0), [3 x float]* %34, i32 %36) #8
  br label %37

; <label>:37                                      ; preds = %29, %32
  %38 = and i32 %list, 16
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %45, label %40

; <label>:40                                      ; preds = %37
  %41 = tail call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* getelementptr inbounds ([256 x i8]* @int_title.buf, i64 0, i64 0), i32 0, i64 256, i8* getelementptr inbounds ([8 x i8]* @.str18, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8]* @.str8, i64 0, i64 0), i32 0) #8
  %42 = load [3 x float]** %v, align 8, !tbaa !12
  %43 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 3
  %44 = load i32* %43, align 4, !tbaa !28
  tail call void @pr_rvecs(%struct.__sFILE* %log, i32 0, i8* getelementptr inbounds ([256 x i8]* @int_title.buf, i64 0, i64 0), [3 x float]* %42, i32 %44) #8
  br label %45

; <label>:45                                      ; preds = %37, %40
  %46 = and i32 %list, 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %51, label %48

; <label>:48                                      ; preds = %45
  %49 = load i32* %5, align 4, !tbaa !26
  %50 = tail call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* getelementptr inbounds ([256 x i8]* @int_title.buf, i64 0, i64 0), i32 0, i64 256, i8* getelementptr inbounds ([8 x i8]* @.str18, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str11, i64 0, i64 0), i32 %49) #8
  tail call void @pr_top(%struct.__sFILE* %log, i32 0, i8* getelementptr inbounds ([256 x i8]* @int_title.buf, i64 0, i64 0), %struct.t_topology* %top) #8
  br label %51

; <label>:51                                      ; preds = %45, %48
  %52 = tail call i32 @fflush(%struct.__sFILE* %log) #8
  br label %53

; <label>:53                                      ; preds = %51, %13
  %54 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 2
  %55 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 80, i32 8
  %56 = load [3 x i32]** %55, align 8, !tbaa !14
  %57 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 0
  %58 = load i32* %57, align 4, !tbaa !18
  %59 = icmp eq i32 %58, 3
  %60 = zext i1 %59 to i32
  %61 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 15
  %62 = load float* %61, align 4, !tbaa !19
  %63 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 69
  %64 = load float* %63, align 4, !tbaa !20
  %65 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 80, i32 6
  %66 = load float** %65, align 8, !tbaa !21
  %67 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 46
  %68 = load i32* %67, align 4, !tbaa !22
  %69 = icmp ne i32 %68, 0
  %70 = zext i1 %69 to i32
  %71 = tail call %struct.t_mdatoms* @atoms2md(%struct.__sFILE* %log, %struct.t_atoms* %54, [3 x i32]* %56, i32 %60, float %62, float %64, float* %66, i32 %70, i32 0) #8
  store %struct.t_mdatoms* %71, %struct.t_mdatoms** %mdatoms, align 8, !tbaa !12
  ret void
}

; Function Attrs: optsize
declare void @ld_data(i32, i32, %struct.t_parm*, %struct.t_nsborder*, %struct.t_topology*, [3 x float]**, [3 x float]**) #3

; Function Attrs: optsize
declare void @mdsplit_top(%struct.__sFILE*, %struct.t_topology*, %struct.t_commrec*, %struct.t_nsborder*, i32*, %struct.t_comm_dummies*) #3

; Function Attrs: nounwind optsize ssp uwtable
define void @write_parm(%struct.__sFILE* %log, i8* %title, i32 %nodeid, %struct.t_parm* %parm) #4 {
  %1 = icmp eq %struct.__sFILE* %log, null
  br i1 %1, label %9, label %2

; <label>:2                                       ; preds = %0
  %3 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %log, i8* getelementptr inbounds ([17 x i8]* @.str12, i64 0, i64 0), i8* %title, i32 %nodeid) #8
  %4 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0
  tail call void @pr_inputrec(%struct.__sFILE* %log, i32 0, i8* getelementptr inbounds ([13 x i8]* @.str13, i64 0, i64 0), %struct.t_inputrec* %4) #8
  %5 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 1, i64 0
  tail call void @pr_rvecs(%struct.__sFILE* %log, i32 0, i8* getelementptr inbounds ([4 x i8]* @.str14, i64 0, i64 0), [3 x float]* %5, i32 3) #8
  %6 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 5, i64 0
  tail call void @pr_rvecs(%struct.__sFILE* %log, i32 0, i8* getelementptr inbounds ([5 x i8]* @.str15, i64 0, i64 0), [3 x float]* %6, i32 3) #8
  %7 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 4, i64 0
  tail call void @pr_rvecs(%struct.__sFILE* %log, i32 0, i8* getelementptr inbounds ([5 x i8]* @.str16, i64 0, i64 0), [3 x float]* %7, i32 3) #8
  %8 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 3, i64 0
  tail call void @pr_rvecs(%struct.__sFILE* %log, i32 0, i8* getelementptr inbounds ([4 x i8]* @.str17, i64 0, i64 0), [3 x float]* %8, i32 3) #8
  br label %9

; <label>:9                                       ; preds = %0, %2
  ret void
}

; Function Attrs: optsize
declare void @pr_rvecs(%struct.__sFILE*, i32, i8*, [3 x float]*, i32) #3

; Function Attrs: optsize
declare void @pr_top(%struct.__sFILE*, i32, i8*, %struct.t_topology*) #3

; Function Attrs: nounwind optsize
declare i32 @fflush(%struct.__sFILE* nocapture) #6

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct.__sFILE* nocapture, i8* nocapture readonly, ...) #6

; Function Attrs: optsize
declare i32 @__sprintf_chk(i8*, i32, i64, i8*, ...) #3

attributes #0 = { alwaysinline nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { alwaysinline nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { readnone }
attributes #8 = { nounwind optsize }
attributes #9 = { optsize }

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
!8 = !{!9, !9, i64 0}
!9 = !{!"int", !4, i64 0}
!10 = !{!11, !9, i64 24}
!11 = !{!"", !9, i64 0, !9, i64 4, !9, i64 8, !9, i64 12, !9, i64 16, !9, i64 20, !9, i64 24, !9, i64 28, !3, i64 32, !3, i64 36}
!12 = !{!13, !13, i64 0}
!13 = !{!"any pointer", !4, i64 0}
!14 = !{!15, !13, i64 432}
!15 = !{!"", !16, i64 0, !4, i64 592, !4, i64 628, !4, i64 664, !4, i64 700, !4, i64 736}
!16 = !{!"", !9, i64 0, !9, i64 4, !9, i64 8, !9, i64 12, !9, i64 16, !9, i64 20, !9, i64 24, !9, i64 28, !9, i64 32, !9, i64 36, !9, i64 40, !9, i64 44, !9, i64 48, !9, i64 52, !3, i64 56, !3, i64 60, !3, i64 64, !9, i64 68, !9, i64 72, !9, i64 76, !9, i64 80, !3, i64 84, !9, i64 88, !9, i64 92, !9, i64 96, !9, i64 100, !9, i64 104, !9, i64 108, !9, i64 112, !9, i64 116, !3, i64 120, !4, i64 124, !4, i64 160, !9, i64 196, !3, i64 200, !3, i64 204, !9, i64 208, !3, i64 212, !3, i64 216, !9, i64 220, !3, i64 224, !3, i64 228, !3, i64 232, !9, i64 236, !3, i64 240, !3, i64 244, !9, i64 248, !3, i64 252, !3, i64 256, !3, i64 260, !3, i64 264, !3, i64 268, !9, i64 272, !9, i64 276, !9, i64 280, !3, i64 284, !3, i64 288, !3, i64 292, !9, i64 296, !3, i64 300, !3, i64 304, !9, i64 308, !9, i64 312, !9, i64 316, !9, i64 320, !9, i64 324, !3, i64 328, !9, i64 332, !3, i64 336, !3, i64 340, !9, i64 344, !3, i64 348, !9, i64 352, !9, i64 356, !9, i64 360, !9, i64 364, !3, i64 368, !3, i64 372, !3, i64 376, !3, i64 380, !17, i64 384, !4, i64 448, !4, i64 520}
!17 = !{!"", !9, i64 0, !9, i64 4, !9, i64 8, !9, i64 12, !13, i64 16, !13, i64 24, !13, i64 32, !13, i64 40, !13, i64 48, !13, i64 56}
!18 = !{!15, !9, i64 0}
!19 = !{!15, !3, i64 60}
!20 = !{!15, !3, i64 340}
!21 = !{!15, !13, i64 416}
!22 = !{!15, !9, i64 248}
!23 = !{!24, !9, i64 8}
!24 = !{!"", !9, i64 0, !9, i64 4, !9, i64 8, !9, i64 12, !9, i64 16, !9, i64 20}
!25 = !{!24, !9, i64 12}
!26 = !{!24, !9, i64 0}
!27 = !{!15, !9, i64 344}
!28 = !{!29, !9, i64 12}
!29 = !{!"", !9, i64 0, !9, i64 4, !9, i64 8, !9, i64 12, !9, i64 16, !9, i64 20, !9, i64 24, !4, i64 28, !4, i64 1052, !4, i64 2076, !4, i64 3100}
