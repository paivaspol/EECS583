; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/update.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.t_sdconst = type { float, float, float, float, float, float, float }
%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct.t_edpar = type { i32, i32, i32, i32, i32, i32, i32, %struct.t_edx, %struct.t_edx, %struct.t_edvecs, float, %struct.t_edx, %struct.t_edx, i32, i32*, float*, float, i32, i32*, %struct.__sFILE* }
%struct.t_edvecs = type { %struct.t_eigvec, %struct.t_eigvec, %struct.t_eigvec, %struct.t_eigvec, %struct.t_eigvec, %struct.t_eigvec }
%struct.t_eigvec = type { i32, i32*, float*, [3 x float]**, float*, float*, float*, float*, float }
%struct.t_edx = type { i32, i32*, [3 x float]*, [3 x [3 x float]] }
%struct.t_sd_sigmas = type { float, float, float, float }
%struct.t_grpopts = type { i32, i32, i32, i32, float*, float*, float*, [3 x float]*, [3 x i32]*, i32* }
%struct.t_mdatoms = type { float, i32, float*, float*, float*, float*, float*, float*, float*, i32*, i32*, i32*, i32*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16* }
%struct.t_groups = type { %struct.t_grp_ener, %struct.t_grp_tcstat*, %struct.t_grp_acc*, %struct.t_cos_acc }
%struct.t_grp_ener = type { i32, [7 x float*] }
%struct.t_grp_tcstat = type { float, float, [3 x [3 x float]], float, float }
%struct.t_grp_acc = type { i32, i32*, float, [3 x float], [3 x float], [3 x float] }
%struct.t_cos_acc = type { float, float, float }
%struct.t_nrnb = type { [129 x double] }
%struct.t_parm = type { %struct.t_inputrec, [3 x [3 x float]], [3 x [3 x float]], [3 x [3 x float]], [3 x [3 x float]], [3 x [3 x float]] }
%struct.t_inputrec = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, float, float, float, i32, i32, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, i32, float, [3 x [3 x float]], [3 x [3 x float]], i32, float, float, i32, float, float, i32, float, float, float, i32, float, float, i32, float, float, float, float, float, i32, i32, i32, float, float, float, i32, float, float, i32, i32, i32, i32, i32, float, i32, float, float, i32, float, i32, i32, i32, i32, float, float, float, float, %struct.t_grpopts, [3 x %struct.t_cosines], [3 x %struct.t_cosines] }
%struct.t_cosines = type { i32, float*, float* }
%struct.t_graph = type { i32, i32, i32, i32, i32, i32*, i32**, [3 x i32]* }
%struct.t_topology = type { i8**, %struct.t_idef, %struct.t_atoms, [3 x %struct.t_block], %struct.t_symtab }
%struct.t_idef = type { i32, i32, i32, i32*, %union.t_iparams*, [44 x %struct.t_ilist] }
%union.t_iparams = type { %struct.anon.2 }
%struct.anon.2 = type { float, float, float, float, float, float }
%struct.t_ilist = type { i32, [256 x i32], i32* }
%struct.t_atoms = type { i32, %struct.t_atom*, i8***, i8***, i8***, i32, i8***, i32, i8***, %struct.t_block, [9 x %struct.t_grps], %struct.t_pdbinfo* }
%struct.t_atom = type { float, float, float, float, i16, i16, i32, i32, [9 x i8], i8 }
%struct.t_block = type { [256 x i32], i32, i32*, i32, i32* }
%struct.t_grps = type { i32, i32* }
%struct.t_pdbinfo = type { i32, i32, i8, [6 x i8], float, float, i32, [6 x i32] }
%struct.t_symtab = type { i32, %struct.symbuf* }
%struct.symbuf = type { i32, i8**, %struct.symbuf* }
%struct.t_commrec = type { i32, i32, i32, i32, i32, i32 }
%struct.t_edsamyn = type { i32, i8*, i8* }
%struct.t_pull = type { %struct.t_pullgrps, %struct.t_pullgrps, %struct.t_pullgrps, i32, i32, [3 x float], [3 x float], float, float, [3 x i32], float, float, i32, float, float, float, i32, i32, i32, %struct.__sFILE*, float, float, float, i32, i32, i32 }
%struct.t_pullgrps = type { i32, i32**, float**, i32*, i8**, float*, [3 x float]**, [3 x float]**, [3 x float]*, [3 x float]*, [3 x float]*, [3 x float]*, [3 x float]*, [3 x float]*, [3 x float]*, float*, [3 x float]*, [3 x float]** }

@im = constant i64 65535, align 8
@ia = constant i64 1093, align 8
@ic = constant i64 18257, align 8
@inv_im = constant float 0x3EF0001000000000, align 4
@.str = private unnamed_addr constant [4 x i8] c"sdc\00", align 1
@.str1 = private unnamed_addr constant [66 x i8] c"../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/update.c\00", align 1
@sdc = internal unnamed_addr global %struct.t_sdconst* null, align 8
@debug = external global %struct.__sFILE*
@.str2 = private unnamed_addr constant [38 x i8] c"SD const tc-grp %d: b %g  c %g  d %g\0A\00", align 1
@update.bFirst = internal unnamed_addr global i1 false
@update.xprime = internal unnamed_addr global [3 x float]* null, align 8
@update.x_unc = internal unnamed_addr global [3 x float]* null, align 8
@update.ngtc = internal unnamed_addr global i32 0, align 4
@update.ngacc = internal unnamed_addr global i32 0, align 4
@update.lamb = internal unnamed_addr global [3 x float]* null, align 8
@update.edpar = internal global %struct.t_edpar zeroinitializer, align 8
@update.bHaveConstr = internal unnamed_addr global i32 0, align 4
@update.bExtended = internal unnamed_addr global i32 0, align 4
@stdlog = external global %struct.__sFILE*
@.str3 = private unnamed_addr constant [7 x i8] c"xprime\00", align 1
@.str4 = private unnamed_addr constant [6 x i8] c"x_unc\00", align 1
@.str5 = private unnamed_addr constant [5 x i8] c"lamb\00", align 1
@.str7 = private unnamed_addr constant [37 x i8] c"Don't know how to update coordinates\00", align 1
@.str12 = private unnamed_addr constant [6 x i8] c"dekin\00", align 1
@.str13 = private unnamed_addr constant [6 x i8] c" ekin\00", align 1
@.str14 = private unnamed_addr constant [50 x i8] c"dekin = %g, ekin = %g  vcm = (%8.4f %8.4f %8.4f)\0A\00", align 1
@.str15 = private unnamed_addr constant [26 x i8] c"mv = (%8.4f %8.4f %8.4f)\0A\00", align 1
@do_update_sd.bFirst = internal unnamed_addr global i1 false
@do_update_sd.sig = internal unnamed_addr global %struct.t_sd_sigmas* null, align 8
@do_update_sd.X = internal unnamed_addr global [3 x float]* null, align 8
@do_update_sd.V = internal unnamed_addr global [3 x float]* null, align 8
@.str16 = private unnamed_addr constant [4 x i8] c"sig\00", align 1
@.str17 = private unnamed_addr constant [2 x i8] c"X\00", align 1
@.str18 = private unnamed_addr constant [2 x i8] c"V\00", align 1
@do_update_bd.rf = internal unnamed_addr global float* null, align 8
@.str19 = private unnamed_addr constant [3 x i8] c"rf\00", align 1

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

; Function Attrs: nounwind optsize ssp uwtable
define void @init_sd_consts(i32 %ngtc, float* nocapture readonly %tau_t, float %dt) #1 {
  %1 = tail call i8* @save_calloc(i8* getelementptr inbounds ([4 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str1, i64 0, i64 0), i32 258, i32 %ngtc, i32 28) #6
  store i8* %1, i8** bitcast (%struct.t_sdconst** @sdc to i8**), align 8, !tbaa !2
  %2 = icmp sgt i32 %ngtc, 0
  br i1 %2, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %0
  %3 = bitcast i8* %1 to %struct.t_sdconst*
  %4 = add i32 %ngtc, -1
  br label %5

; <label>:5                                       ; preds = %._crit_edge2, %.lr.ph
  %6 = phi %struct.t_sdconst* [ %3, %.lr.ph ], [ %.pre, %._crit_edge2 ]
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %._crit_edge2 ]
  %7 = getelementptr inbounds float* %tau_t, i64 %indvars.iv
  %8 = load float* %7, align 4, !tbaa !6
  %9 = fdiv float %dt, %8
  %10 = getelementptr inbounds %struct.t_sdconst* %6, i64 %indvars.iv, i32 0
  store float %9, float* %10, align 4, !tbaa !8
  %11 = fmul float %9, 5.000000e-01
  %12 = fpext float %11 to double
  %13 = tail call double @exp(double %12) #7
  %14 = fptrunc double %13 to float
  %15 = getelementptr inbounds %struct.t_sdconst* %6, i64 %indvars.iv, i32 1
  store float %14, float* %15, align 4, !tbaa !10
  %16 = getelementptr inbounds %struct.t_sdconst* %6, i64 %indvars.iv, i32 0
  %17 = load float* %16, align 4, !tbaa !8
  %18 = fmul float %17, -5.000000e-01
  %19 = fpext float %18 to double
  %20 = tail call double @exp(double %19) #7
  %21 = fptrunc double %20 to float
  %22 = getelementptr inbounds %struct.t_sdconst* %6, i64 %indvars.iv, i32 2
  store float %21, float* %22, align 4, !tbaa !11
  %23 = getelementptr inbounds %struct.t_sdconst* %6, i64 %indvars.iv, i32 0
  %24 = load float* %23, align 4, !tbaa !8
  %25 = fsub float -0.000000e+00, %24
  %26 = fpext float %25 to double
  %27 = tail call double @exp(double %26) #7
  %28 = fptrunc double %27 to float
  %29 = getelementptr inbounds %struct.t_sdconst* %6, i64 %indvars.iv, i32 3
  store float %28, float* %29, align 4, !tbaa !12
  %30 = getelementptr inbounds %struct.t_sdconst* %6, i64 %indvars.iv, i32 0
  %31 = load float* %30, align 4, !tbaa !8
  %32 = fpext float %31 to double
  %33 = fcmp ult double %32, 1.000000e-01
  br i1 %33, label %62, label %34

; <label>:34                                      ; preds = %5
  %35 = getelementptr inbounds %struct.t_sdconst* %6, i64 %indvars.iv, i32 1
  %36 = load float* %35, align 4, !tbaa !10
  %37 = fmul float %36, %36
  %38 = fadd float %37, -1.000000e+00
  %39 = fmul float %31, %38
  %40 = fadd float %36, -1.000000e+00
  %41 = fmul float %40, %40
  %42 = fmul float %41, 4.000000e+00
  %43 = fsub float %39, %42
  %44 = getelementptr inbounds %struct.t_sdconst* %6, i64 %indvars.iv, i32 0
  %45 = load float* %44, align 4, !tbaa !8
  %46 = fadd float %45, -3.000000e+00
  %47 = getelementptr inbounds %struct.t_sdconst* %6, i64 %indvars.iv, i32 2
  %48 = load float* %47, align 4, !tbaa !11
  %49 = fmul float %48, 4.000000e+00
  %50 = fadd float %46, %49
  %51 = getelementptr inbounds %struct.t_sdconst* %6, i64 %indvars.iv, i32 3
  %52 = load float* %51, align 4, !tbaa !12
  %53 = fsub float %50, %52
  %54 = getelementptr inbounds %struct.t_sdconst* %6, i64 %indvars.iv, i32 5
  store float %53, float* %54, align 4, !tbaa !13
  %55 = getelementptr inbounds %struct.t_sdconst* %6, i64 %indvars.iv, i32 1
  %56 = load float* %55, align 4, !tbaa !10
  %57 = fsub float 2.000000e+00, %56
  %58 = getelementptr inbounds %struct.t_sdconst* %6, i64 %indvars.iv, i32 2
  %59 = load float* %58, align 4, !tbaa !11
  %60 = fsub float %57, %59
  %61 = getelementptr inbounds %struct.t_sdconst* %6, i64 %indvars.iv, i32 6
  store float %60, float* %61, align 4, !tbaa !14
  br label %101

; <label>:62                                      ; preds = %5
  %63 = fmul float %31, 5.000000e-01
  %64 = fmul float %63, %63
  %65 = fmul float %63, %64
  %66 = fmul float %63, %65
  %67 = fpext float %66 to double
  %68 = fpext float %63 to double
  %69 = fmul float %63, 7.000000e+00
  %70 = fpext float %69 to double
  %71 = fdiv double %70, 9.000000e+00
  %72 = fadd double %71, 0x3FC82D82D82D82D8
  %73 = fmul double %68, %72
  %74 = fadd double %73, 0x3FD5555555555555
  %75 = fmul double %68, %74
  %76 = fadd double %75, 0x3FD5555555555555
  %77 = fmul double %67, %76
  %78 = fptrunc double %77 to float
  %79 = fpext float %65 to double
  %80 = fmul float %63, 3.100000e+01
  %81 = fpext float %80 to double
  %82 = fdiv double %81, 1.260000e+03
  %83 = fadd double %82, 0xBFB5555555555555
  %84 = fmul double %68, %83
  %85 = fadd double %84, 0x3FCDDDDDDDDDDDDE
  %86 = fmul double %68, %85
  %87 = fadd double %86, -5.000000e-01
  %88 = fmul double %68, %87
  %89 = fadd double %88, 0x3FE5555555555555
  %90 = fmul double %79, %89
  %91 = fptrunc double %90 to float
  %92 = getelementptr inbounds %struct.t_sdconst* %6, i64 %indvars.iv, i32 5
  store float %91, float* %92, align 4, !tbaa !13
  %93 = fpext float %64 to double
  %94 = fdiv double %93, 3.600000e+02
  %95 = fsub double 0xBFB5555555555555, %94
  %96 = fmul double %93, %95
  %97 = fadd double %96, -1.000000e+00
  %98 = fmul double %93, %97
  %99 = fptrunc double %98 to float
  %100 = getelementptr inbounds %struct.t_sdconst* %6, i64 %indvars.iv, i32 6
  store float %99, float* %100, align 4, !tbaa !14
  br label %101

; <label>:101                                     ; preds = %62, %34
  %.sink = phi float [ %78, %62 ], [ %43, %34 ]
  %102 = getelementptr inbounds %struct.t_sdconst* %6, i64 %indvars.iv, i32 4
  store float %.sink, float* %102, align 4
  %103 = load %struct.__sFILE** @debug, align 8, !tbaa !2
  %104 = icmp eq %struct.__sFILE* %103, null
  br i1 %104, label %._crit_edge3, label %105

._crit_edge3:                                     ; preds = %101
  %.pre4 = trunc i64 %indvars.iv to i32
  br label %118

; <label>:105                                     ; preds = %101
  %106 = load %struct.t_sdconst** @sdc, align 8, !tbaa !2
  %107 = getelementptr inbounds %struct.t_sdconst* %106, i64 %indvars.iv, i32 4
  %108 = load float* %107, align 4, !tbaa !15
  %109 = fpext float %108 to double
  %110 = getelementptr inbounds %struct.t_sdconst* %106, i64 %indvars.iv, i32 5
  %111 = load float* %110, align 4, !tbaa !13
  %112 = fpext float %111 to double
  %113 = getelementptr inbounds %struct.t_sdconst* %106, i64 %indvars.iv, i32 6
  %114 = load float* %113, align 4, !tbaa !14
  %115 = fpext float %114 to double
  %116 = trunc i64 %indvars.iv to i32
  %117 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %103, i8* getelementptr inbounds ([38 x i8]* @.str2, i64 0, i64 0), i32 %116, double %109, double %112, double %115) #6
  br label %118

; <label>:118                                     ; preds = %._crit_edge3, %105
  %lftr.wideiv.pre-phi = phi i32 [ %.pre4, %._crit_edge3 ], [ %116, %105 ]
  %exitcond = icmp eq i32 %lftr.wideiv.pre-phi, %4
  br i1 %exitcond, label %._crit_edge, label %._crit_edge2

._crit_edge2:                                     ; preds = %118
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %.pre = load %struct.t_sdconst** @sdc, align 8, !tbaa !2
  br label %5

._crit_edge:                                      ; preds = %118, %0
  ret void
}

; Function Attrs: optsize
declare i8* @save_calloc(i8*, i8*, i32, i32, i32) #2

; Function Attrs: nounwind optsize readnone
declare double @exp(double) #3

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct.__sFILE* nocapture, i8* nocapture readonly, ...) #4

; Function Attrs: nounwind optsize ssp uwtable
define void @calc_ke_part(i32 %bFirstStep, i32 %bSD, i32 %start, i32 %homenr, [3 x float]* nocapture %vold, [3 x float]* nocapture readonly %v, [3 x float]* nocapture %vt, %struct.t_grpopts* nocapture readonly %opts, %struct.t_mdatoms* nocapture readonly %md, %struct.t_groups* nocapture readonly %grps, %struct.t_nrnb* nocapture %nrnb, float %lambda, float* %dvdlambda) #1 {
  %v_corrt = alloca [3 x float], align 4
  %1 = getelementptr inbounds %struct.t_groups* %grps, i64 0, i32 1
  %2 = load %struct.t_grp_tcstat** %1, align 8, !tbaa !16
  %3 = getelementptr inbounds %struct.t_groups* %grps, i64 0, i32 2
  %4 = load %struct.t_grp_acc** %3, align 8, !tbaa !21
  %5 = getelementptr inbounds %struct.t_grpopts* %opts, i64 0, i32 0
  %6 = load i32* %5, align 4, !tbaa !22
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %.lr.ph20.preheader, label %._crit_edge21

.lr.ph20.preheader:                               ; preds = %0
  %8 = getelementptr inbounds %struct.t_grp_tcstat* %2, i64 0, i32 2, i64 0
  %9 = bitcast [3 x float]* %8 to i8*
  tail call void @llvm.memset.p0i8.i64(i8* %9, i8 0, i64 36, i32 4, i1 false) #5
  %10 = load i32* %5, align 4, !tbaa !22
  %11 = icmp sgt i32 %10, 1
  br i1 %11, label %._crit_edge42, label %._crit_edge21

._crit_edge42:                                    ; preds = %.lr.ph20.preheader, %._crit_edge42
  %indvars.iv.next4147 = phi i64 [ %indvars.iv.next41, %._crit_edge42 ], [ 1, %.lr.ph20.preheader ]
  %.pre = load %struct.t_grp_tcstat** %1, align 8, !tbaa !16
  %12 = getelementptr inbounds %struct.t_grp_tcstat* %.pre, i64 %indvars.iv.next4147, i32 2, i64 0
  %13 = bitcast [3 x float]* %12 to i8*
  tail call void @llvm.memset.p0i8.i64(i8* %13, i8 0, i64 36, i32 4, i1 false) #5
  %indvars.iv.next41 = add nuw nsw i64 %indvars.iv.next4147, 1
  %14 = load i32* %5, align 4, !tbaa !22
  %15 = sext i32 %14 to i64
  %16 = icmp slt i64 %indvars.iv.next41, %15
  br i1 %16, label %._crit_edge42, label %._crit_edge21

._crit_edge21:                                    ; preds = %.lr.ph20.preheader, %._crit_edge42, %0
  %17 = icmp eq i32 %bFirstStep, 0
  br i1 %17, label %.preheader3, label %.preheader7

.preheader7:                                      ; preds = %._crit_edge21
  %18 = add nsw i32 %homenr, %start
  %19 = icmp sgt i32 %homenr, 0
  br i1 %19, label %.lr.ph17, label %.preheader5

.lr.ph17:                                         ; preds = %.preheader7
  %20 = sext i32 %start to i64
  %21 = sext i32 %18 to i64
  br label %32

.preheader3:                                      ; preds = %._crit_edge21
  %22 = getelementptr inbounds %struct.t_grpopts* %opts, i64 0, i32 1
  %23 = load i32* %22, align 4, !tbaa !24
  %24 = icmp sgt i32 %23, 0
  br i1 %24, label %.preheader2.lr.ph, label %.preheader1.loopexit

.preheader2.lr.ph:                                ; preds = %.preheader3
  %25 = load %struct.t_grp_acc** %3, align 8, !tbaa !21
  %26 = sext i32 %23 to i64
  br label %.preheader2

.preheader5:                                      ; preds = %32, %.preheader7
  %27 = getelementptr inbounds %struct.t_grpopts* %opts, i64 0, i32 1
  %28 = load i32* %27, align 4, !tbaa !24
  %29 = icmp sgt i32 %28, 0
  br i1 %29, label %.preheader4.lr.ph, label %.preheader1

.preheader4.lr.ph:                                ; preds = %.preheader5
  %30 = load %struct.t_grp_acc** %3, align 8, !tbaa !21
  %31 = sext i32 %28 to i64
  br label %.preheader4

; <label>:32                                      ; preds = %.lr.ph17, %32
  %indvars.iv38 = phi i64 [ %20, %.lr.ph17 ], [ %indvars.iv.next39, %32 ]
  %33 = getelementptr inbounds [3 x float]* %v, i64 %indvars.iv38, i64 0
  %34 = getelementptr inbounds [3 x float]* %vold, i64 %indvars.iv38, i64 0
  %35 = bitcast float* %33 to i32*
  %36 = load i32* %35, align 4, !tbaa !6
  %37 = bitcast float* %34 to i32*
  store i32 %36, i32* %37, align 4, !tbaa !6
  %38 = getelementptr inbounds [3 x float]* %v, i64 %indvars.iv38, i64 1
  %39 = bitcast float* %38 to i32*
  %40 = load i32* %39, align 4, !tbaa !6
  %41 = getelementptr inbounds [3 x float]* %vold, i64 %indvars.iv38, i64 1
  %42 = bitcast float* %41 to i32*
  store i32 %40, i32* %42, align 4, !tbaa !6
  %43 = getelementptr inbounds [3 x float]* %v, i64 %indvars.iv38, i64 2
  %44 = bitcast float* %43 to i32*
  %45 = load i32* %44, align 4, !tbaa !6
  %46 = getelementptr inbounds [3 x float]* %vold, i64 %indvars.iv38, i64 2
  %47 = bitcast float* %46 to i32*
  store i32 %45, i32* %47, align 4, !tbaa !6
  %indvars.iv.next39 = add nsw i64 %indvars.iv38, 1
  %48 = icmp slt i64 %indvars.iv.next39, %21
  br i1 %48, label %32, label %.preheader5

.preheader4:                                      ; preds = %.preheader4.lr.ph, %73
  %indvars.iv36 = phi i64 [ 0, %.preheader4.lr.ph ], [ %indvars.iv.next37, %73 ]
  br label %67

.preheader1.loopexit:                             ; preds = %83, %.preheader3
  %.pre45 = add nsw i32 %homenr, %start
  br label %.preheader1

.preheader1:                                      ; preds = %73, %.preheader5, %.preheader1.loopexit
  %.pre-phi = phi i32 [ %.pre45, %.preheader1.loopexit ], [ %18, %.preheader5 ], [ %18, %73 ]
  %49 = icmp sgt i32 %homenr, 0
  br i1 %49, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader1
  %50 = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 16
  %51 = load i16** %50, align 8, !tbaa !25
  %52 = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 14
  %53 = load i16** %52, align 8, !tbaa !27
  %54 = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 4
  %55 = load float** %54, align 8, !tbaa !28
  %56 = icmp eq i32 %bSD, 0
  %57 = getelementptr inbounds [3 x float]* %v_corrt, i64 0, i64 0
  %58 = getelementptr inbounds [3 x float]* %v_corrt, i64 0, i64 1
  %59 = getelementptr inbounds [3 x float]* %v_corrt, i64 0, i64 2
  %60 = icmp eq float* %dvdlambda, null
  %61 = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 9
  %62 = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 3
  %63 = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 2
  %64 = load %struct.t_sdconst** @sdc, align 8, !tbaa !2
  %65 = sext i32 %start to i64
  %66 = sext i32 %.pre-phi to i64
  br label %85

; <label>:67                                      ; preds = %67, %.preheader4
  %indvars.iv32 = phi i64 [ 0, %.preheader4 ], [ %indvars.iv.next33, %67 ]
  %68 = getelementptr inbounds %struct.t_grp_acc* %30, i64 %indvars.iv36, i32 3, i64 %indvars.iv32
  %69 = bitcast float* %68 to i32*
  %70 = load i32* %69, align 4, !tbaa !6
  %71 = getelementptr inbounds %struct.t_grp_acc* %30, i64 %indvars.iv36, i32 5, i64 %indvars.iv32
  %72 = bitcast float* %71 to i32*
  store i32 %70, i32* %72, align 4, !tbaa !6
  %indvars.iv.next33 = add nuw nsw i64 %indvars.iv32, 1
  %exitcond34 = icmp eq i64 %indvars.iv.next33, 3
  br i1 %exitcond34, label %73, label %67

; <label>:73                                      ; preds = %67
  %indvars.iv.next37 = add nuw nsw i64 %indvars.iv36, 1
  %74 = icmp slt i64 %indvars.iv.next37, %31
  br i1 %74, label %.preheader4, label %.preheader1

.preheader2:                                      ; preds = %.preheader2.lr.ph, %83
  %indvars.iv30 = phi i64 [ 0, %.preheader2.lr.ph ], [ %indvars.iv.next31, %83 ]
  br label %75

; <label>:75                                      ; preds = %75, %.preheader2
  %indvars.iv27 = phi i64 [ 0, %.preheader2 ], [ %indvars.iv.next28, %75 ]
  %76 = getelementptr inbounds %struct.t_grp_acc* %25, i64 %indvars.iv30, i32 3, i64 %indvars.iv27
  %77 = load float* %76, align 4, !tbaa !6
  %78 = getelementptr inbounds %struct.t_grp_acc* %25, i64 %indvars.iv30, i32 4, i64 %indvars.iv27
  %79 = load float* %78, align 4, !tbaa !6
  %80 = fadd float %77, %79
  %81 = fmul float %80, 5.000000e-01
  %82 = getelementptr inbounds %struct.t_grp_acc* %25, i64 %indvars.iv30, i32 5, i64 %indvars.iv27
  store float %81, float* %82, align 4, !tbaa !6
  %indvars.iv.next28 = add nuw nsw i64 %indvars.iv27, 1
  %exitcond29 = icmp eq i64 %indvars.iv.next28, 3
  br i1 %exitcond29, label %83, label %75

; <label>:83                                      ; preds = %75
  %indvars.iv.next31 = add nuw nsw i64 %indvars.iv30, 1
  %84 = icmp slt i64 %indvars.iv.next31, %26
  br i1 %84, label %.preheader2, label %.preheader1.loopexit

; <label>:85                                      ; preds = %.lr.ph, %162
  %indvars.iv25 = phi i64 [ %65, %.lr.ph ], [ %indvars.iv.next26, %162 ]
  %dvdl.011 = phi float [ 0.000000e+00, %.lr.ph ], [ %dvdl.1, %162 ]
  %86 = getelementptr inbounds i16* %51, i64 %indvars.iv25
  %87 = load i16* %86, align 2, !tbaa !29
  %88 = getelementptr inbounds i16* %53, i64 %indvars.iv25
  %89 = load i16* %88, align 2, !tbaa !29
  %90 = getelementptr inbounds float* %55, i64 %indvars.iv25
  %91 = load float* %90, align 4, !tbaa !6
  %92 = fmul float %91, 5.000000e-01
  br i1 %56, label %101, label %93

; <label>:93                                      ; preds = %85
  %94 = zext i16 %89 to i64
  %95 = getelementptr inbounds %struct.t_sdconst* %64, i64 %94, i32 3
  %96 = load float* %95, align 4, !tbaa !12
  %97 = fpext float %96 to double
  %98 = fmul double %97, 0x3FCA827980000000
  %99 = fsub double 0x3FE6A09E60000000, %98
  %100 = fptrunc double %99 to float
  br label %101

; <label>:101                                     ; preds = %85, %93
  %fac.0 = phi float [ %100, %93 ], [ 5.000000e-01, %85 ]
  %102 = zext i16 %87 to i64
  br label %110

.preheader:                                       ; preds = %110
  %103 = load float* %57, align 4, !tbaa !6
  %104 = fmul float %92, %103
  %105 = zext i16 %89 to i64
  %106 = load float* %58, align 4, !tbaa !6
  %107 = fmul float %92, %106
  %108 = load float* %59, align 4, !tbaa !6
  %109 = fmul float %92, %108
  br label %122

; <label>:110                                     ; preds = %110, %101
  %indvars.iv = phi i64 [ 0, %101 ], [ %indvars.iv.next, %110 ]
  %111 = getelementptr inbounds [3 x float]* %v, i64 %indvars.iv25, i64 %indvars.iv
  %112 = load float* %111, align 4, !tbaa !6
  %113 = getelementptr inbounds [3 x float]* %vold, i64 %indvars.iv25, i64 %indvars.iv
  %114 = load float* %113, align 4, !tbaa !6
  %115 = fadd float %112, %114
  %116 = fmul float %fac.0, %115
  %117 = getelementptr inbounds [3 x float]* %vt, i64 %indvars.iv25, i64 %indvars.iv
  store float %116, float* %117, align 4, !tbaa !6
  %118 = getelementptr inbounds %struct.t_grp_acc* %4, i64 %102, i32 5, i64 %indvars.iv
  %119 = load float* %118, align 4, !tbaa !6
  %120 = fsub float %116, %119
  %121 = getelementptr inbounds [3 x float]* %v_corrt, i64 0, i64 %indvars.iv
  store float %120, float* %121, align 4, !tbaa !6
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 3
  br i1 %exitcond, label %.preheader, label %110

; <label>:122                                     ; preds = %._crit_edge43, %.preheader
  %123 = phi float [ %103, %.preheader ], [ %.pre44, %._crit_edge43 ]
  %indvars.iv22 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next23, %._crit_edge43 ]
  %124 = fmul float %104, %123
  %125 = getelementptr inbounds %struct.t_grp_tcstat* %2, i64 %105, i32 2, i64 0, i64 %indvars.iv22
  %126 = load float* %125, align 4, !tbaa !6
  %127 = fadd float %126, %124
  store float %127, float* %125, align 4, !tbaa !6
  %128 = fmul float %107, %123
  %129 = getelementptr inbounds %struct.t_grp_tcstat* %2, i64 %105, i32 2, i64 1, i64 %indvars.iv22
  %130 = load float* %129, align 4, !tbaa !6
  %131 = fadd float %130, %128
  store float %131, float* %129, align 4, !tbaa !6
  %132 = fmul float %109, %123
  %133 = getelementptr inbounds %struct.t_grp_tcstat* %2, i64 %105, i32 2, i64 2, i64 %indvars.iv22
  %134 = load float* %133, align 4, !tbaa !6
  %135 = fadd float %134, %132
  store float %135, float* %133, align 4, !tbaa !6
  %indvars.iv.next23 = add nuw nsw i64 %indvars.iv22, 1
  %exitcond24 = icmp eq i64 %indvars.iv.next23, 3
  br i1 %exitcond24, label %136, label %._crit_edge43

._crit_edge43:                                    ; preds = %122
  %.phi.trans.insert = getelementptr inbounds [3 x float]* %v_corrt, i64 0, i64 %indvars.iv.next23
  %.pre44 = load float* %.phi.trans.insert, align 4, !tbaa !6
  br label %122

; <label>:136                                     ; preds = %122
  br i1 %60, label %162, label %137

; <label>:137                                     ; preds = %136
  %138 = load i32** %61, align 8, !tbaa !31
  %139 = getelementptr inbounds i32* %138, i64 %indvars.iv25
  %140 = load i32* %139, align 4, !tbaa !32
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %162, label %142

; <label>:142                                     ; preds = %137
  %143 = load float** %62, align 8, !tbaa !33
  %144 = getelementptr inbounds float* %143, i64 %indvars.iv25
  %145 = load float* %144, align 4, !tbaa !6
  %146 = load float** %63, align 8, !tbaa !34
  %147 = getelementptr inbounds float* %146, i64 %indvars.iv25
  %148 = load float* %147, align 4, !tbaa !6
  %149 = fsub float %145, %148
  %150 = fpext float %149 to double
  %151 = fmul double %150, 5.000000e-01
  %152 = fmul float %103, %103
  %153 = fmul float %106, %106
  %154 = fadd float %152, %153
  %155 = fmul float %108, %108
  %156 = fadd float %154, %155
  %157 = fpext float %156 to double
  %158 = fmul double %151, %157
  %159 = fpext float %dvdl.011 to double
  %160 = fsub double %159, %158
  %161 = fptrunc double %160 to float
  br label %162

; <label>:162                                     ; preds = %137, %136, %142
  %dvdl.1 = phi float [ %161, %142 ], [ %dvdl.011, %137 ], [ %dvdl.011, %136 ]
  %indvars.iv.next26 = add nsw i64 %indvars.iv25, 1
  %163 = icmp slt i64 %indvars.iv.next26, %66
  br i1 %163, label %85, label %._crit_edge

._crit_edge:                                      ; preds = %162, %.preheader1
  %dvdl.0.lcssa = phi float [ 0.000000e+00, %.preheader1 ], [ %dvdl.1, %162 ]
  %164 = icmp eq float* %dvdlambda, null
  br i1 %164, label %168, label %165

; <label>:165                                     ; preds = %._crit_edge
  %166 = load float* %dvdlambda, align 4, !tbaa !6
  %167 = fadd float %dvdl.0.lcssa, %166
  store float %167, float* %dvdlambda, align 4, !tbaa !6
  br label %168

; <label>:168                                     ; preds = %._crit_edge, %165
  %169 = sitofp i32 %homenr to double
  %170 = getelementptr inbounds %struct.t_nrnb* %nrnb, i64 0, i32 0, i64 112
  %171 = load double* %170, align 8, !tbaa !35
  %172 = fadd double %169, %171
  store double %172, double* %170, align 8, !tbaa !35
  ret void
}

; Function Attrs: nounwind optsize readnone
declare double @sqrt(double) #3

; Function Attrs: nounwind optsize ssp uwtable
define void @calc_ke_part_visc(i32 %bFirstStep, i32 %start, i32 %homenr, [3 x float]* nocapture readonly %box, [3 x float]* nocapture readonly %x, [3 x float]* nocapture %vold, [3 x float]* nocapture readonly %v, [3 x float]* nocapture %vt, %struct.t_grpopts* nocapture readonly %opts, %struct.t_mdatoms* nocapture readonly %md, %struct.t_groups* nocapture %grps, %struct.t_nrnb* nocapture %nrnb, float %lambda, float* %dvdlambda) #1 {
  %v_corrt = alloca [3 x float], align 4
  %1 = getelementptr inbounds %struct.t_groups* %grps, i64 0, i32 1
  %2 = load %struct.t_grp_tcstat** %1, align 8, !tbaa !16
  %3 = getelementptr inbounds %struct.t_grpopts* %opts, i64 0, i32 0
  %4 = load i32* %3, align 4, !tbaa !22
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %.lr.ph11.preheader, label %._crit_edge12

.lr.ph11.preheader:                               ; preds = %0
  %6 = getelementptr inbounds %struct.t_grp_tcstat* %2, i64 0, i32 2, i64 0
  %7 = bitcast [3 x float]* %6 to i8*
  tail call void @llvm.memset.p0i8.i64(i8* %7, i8 0, i64 36, i32 4, i1 false) #5
  %8 = load i32* %3, align 4, !tbaa !22
  %9 = icmp sgt i32 %8, 1
  br i1 %9, label %._crit_edge22, label %._crit_edge12

._crit_edge22:                                    ; preds = %.lr.ph11.preheader, %._crit_edge22
  %indvars.iv.next2127 = phi i64 [ %indvars.iv.next21, %._crit_edge22 ], [ 1, %.lr.ph11.preheader ]
  %.pre = load %struct.t_grp_tcstat** %1, align 8, !tbaa !16
  %10 = getelementptr inbounds %struct.t_grp_tcstat* %.pre, i64 %indvars.iv.next2127, i32 2, i64 0
  %11 = bitcast [3 x float]* %10 to i8*
  tail call void @llvm.memset.p0i8.i64(i8* %11, i8 0, i64 36, i32 4, i1 false) #5
  %indvars.iv.next21 = add nuw nsw i64 %indvars.iv.next2127, 1
  %12 = load i32* %3, align 4, !tbaa !22
  %13 = sext i32 %12 to i64
  %14 = icmp slt i64 %indvars.iv.next21, %13
  br i1 %14, label %._crit_edge22, label %._crit_edge12

._crit_edge12:                                    ; preds = %.lr.ph11.preheader, %._crit_edge22, %0
  %15 = icmp eq i32 %bFirstStep, 0
  %.pre26 = add nsw i32 %homenr, %start
  br i1 %15, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %._crit_edge12
  %16 = icmp sgt i32 %homenr, 0
  br i1 %16, label %.lr.ph8, label %.loopexit.thread

.lr.ph8:                                          ; preds = %.preheader
  %17 = sext i32 %start to i64
  %18 = sext i32 %.pre26 to i64
  br label %19

; <label>:19                                      ; preds = %.lr.ph8, %19
  %indvars.iv18 = phi i64 [ %17, %.lr.ph8 ], [ %indvars.iv.next19, %19 ]
  %20 = getelementptr inbounds [3 x float]* %v, i64 %indvars.iv18, i64 0
  %21 = getelementptr inbounds [3 x float]* %vold, i64 %indvars.iv18, i64 0
  %22 = bitcast float* %20 to i32*
  %23 = load i32* %22, align 4, !tbaa !6
  %24 = bitcast float* %21 to i32*
  store i32 %23, i32* %24, align 4, !tbaa !6
  %25 = getelementptr inbounds [3 x float]* %v, i64 %indvars.iv18, i64 1
  %26 = bitcast float* %25 to i32*
  %27 = load i32* %26, align 4, !tbaa !6
  %28 = getelementptr inbounds [3 x float]* %vold, i64 %indvars.iv18, i64 1
  %29 = bitcast float* %28 to i32*
  store i32 %27, i32* %29, align 4, !tbaa !6
  %30 = getelementptr inbounds [3 x float]* %v, i64 %indvars.iv18, i64 2
  %31 = bitcast float* %30 to i32*
  %32 = load i32* %31, align 4, !tbaa !6
  %33 = getelementptr inbounds [3 x float]* %vold, i64 %indvars.iv18, i64 2
  %34 = bitcast float* %33 to i32*
  store i32 %32, i32* %34, align 4, !tbaa !6
  %indvars.iv.next19 = add nsw i64 %indvars.iv18, 1
  %35 = icmp slt i64 %indvars.iv.next19, %18
  br i1 %35, label %19, label %.loopexit

.loopexit:                                        ; preds = %19, %._crit_edge12
  %36 = getelementptr inbounds [3 x float]* %box, i64 2, i64 2
  %37 = load float* %36, align 4, !tbaa !6
  %38 = fpext float %37 to double
  %39 = fdiv double 0x401921FB54442D18, %38
  %40 = fptrunc double %39 to float
  %41 = icmp sgt i32 %homenr, 0
  br i1 %41, label %.lr.ph, label %.loopexit.thread

.lr.ph:                                           ; preds = %.loopexit
  %42 = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 14
  %43 = load i16** %42, align 8, !tbaa !27
  %44 = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 4
  %45 = load float** %44, align 8, !tbaa !28
  %46 = getelementptr inbounds %struct.t_groups* %grps, i64 0, i32 3, i32 2
  %47 = getelementptr inbounds [3 x float]* %v_corrt, i64 0, i64 0
  %48 = getelementptr inbounds [3 x float]* %v_corrt, i64 0, i64 1
  %49 = getelementptr inbounds [3 x float]* %v_corrt, i64 0, i64 2
  %50 = icmp eq float* %dvdlambda, null
  %51 = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 9
  %52 = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 3
  %53 = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 2
  %54 = sext i32 %start to i64
  %55 = sext i32 %.pre26 to i64
  br label %56

; <label>:56                                      ; preds = %.lr.ph, %136
  %indvars.iv16 = phi i64 [ %54, %.lr.ph ], [ %indvars.iv.next17, %136 ]
  %mvcos.05 = phi double [ 0.000000e+00, %.lr.ph ], [ %110, %136 ]
  %dvdl.04 = phi float [ 0.000000e+00, %.lr.ph ], [ %dvdl.1, %136 ]
  %57 = getelementptr inbounds i16* %43, i64 %indvars.iv16
  %58 = load i16* %57, align 2, !tbaa !29
  %59 = getelementptr inbounds float* %45, i64 %indvars.iv16
  %60 = load float* %59, align 4, !tbaa !6
  br label %61

; <label>:61                                      ; preds = %61, %56
  %indvars.iv = phi i64 [ 0, %56 ], [ %indvars.iv.next, %61 ]
  %62 = getelementptr inbounds [3 x float]* %v, i64 %indvars.iv16, i64 %indvars.iv
  %63 = load float* %62, align 4, !tbaa !6
  %64 = getelementptr inbounds [3 x float]* %vold, i64 %indvars.iv16, i64 %indvars.iv
  %65 = load float* %64, align 4, !tbaa !6
  %66 = fadd float %63, %65
  %67 = fmul float %66, 5.000000e-01
  %68 = getelementptr inbounds [3 x float]* %vt, i64 %indvars.iv16, i64 %indvars.iv
  store float %67, float* %68, align 4, !tbaa !6
  %69 = getelementptr inbounds [3 x float]* %v_corrt, i64 0, i64 %indvars.iv
  store float %67, float* %69, align 4, !tbaa !6
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 3
  br i1 %exitcond, label %70, label %61

; <label>:70                                      ; preds = %61
  %71 = fmul float %60, 5.000000e-01
  %72 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv16, i64 2
  %73 = load float* %72, align 4, !tbaa !6
  %74 = fmul float %40, %73
  %75 = fpext float %74 to double
  %76 = tail call double @cos(double %75) #7
  %77 = fptrunc double %76 to float
  %78 = load float* %46, align 4, !tbaa !37
  %79 = fmul float %77, %78
  %80 = load float* %47, align 4, !tbaa !6
  %81 = fsub float %80, %79
  store float %81, float* %47, align 4, !tbaa !6
  %82 = fmul float %77, 2.000000e+00
  %83 = load float* %59, align 4, !tbaa !6
  %84 = fmul float %82, %83
  %85 = getelementptr inbounds [3 x float]* %v, i64 %indvars.iv16, i64 0
  %86 = load float* %85, align 4, !tbaa !6
  %87 = fmul float %84, %86
  %88 = fpext float %87 to double
  %89 = fmul float %71, %81
  %90 = zext i16 %58 to i64
  %91 = load float* %48, align 4, !tbaa !6
  %92 = fmul float %71, %91
  %93 = load float* %49, align 4, !tbaa !6
  %94 = fmul float %71, %93
  br label %95

; <label>:95                                      ; preds = %._crit_edge23, %70
  %96 = phi float [ %81, %70 ], [ %.pre24, %._crit_edge23 ]
  %indvars.iv13 = phi i64 [ 0, %70 ], [ %indvars.iv.next14, %._crit_edge23 ]
  %97 = fmul float %89, %96
  %98 = getelementptr inbounds %struct.t_grp_tcstat* %2, i64 %90, i32 2, i64 0, i64 %indvars.iv13
  %99 = load float* %98, align 4, !tbaa !6
  %100 = fadd float %99, %97
  store float %100, float* %98, align 4, !tbaa !6
  %101 = fmul float %92, %96
  %102 = getelementptr inbounds %struct.t_grp_tcstat* %2, i64 %90, i32 2, i64 1, i64 %indvars.iv13
  %103 = load float* %102, align 4, !tbaa !6
  %104 = fadd float %103, %101
  store float %104, float* %102, align 4, !tbaa !6
  %105 = fmul float %94, %96
  %106 = getelementptr inbounds %struct.t_grp_tcstat* %2, i64 %90, i32 2, i64 2, i64 %indvars.iv13
  %107 = load float* %106, align 4, !tbaa !6
  %108 = fadd float %107, %105
  store float %108, float* %106, align 4, !tbaa !6
  %indvars.iv.next14 = add nuw nsw i64 %indvars.iv13, 1
  %exitcond15 = icmp eq i64 %indvars.iv.next14, 3
  br i1 %exitcond15, label %109, label %._crit_edge23

._crit_edge23:                                    ; preds = %95
  %.phi.trans.insert = getelementptr inbounds [3 x float]* %v_corrt, i64 0, i64 %indvars.iv.next14
  %.pre24 = load float* %.phi.trans.insert, align 4, !tbaa !6
  br label %95

; <label>:109                                     ; preds = %95
  %110 = fadd double %mvcos.05, %88
  br i1 %50, label %136, label %111

; <label>:111                                     ; preds = %109
  %112 = load i32** %51, align 8, !tbaa !31
  %113 = getelementptr inbounds i32* %112, i64 %indvars.iv16
  %114 = load i32* %113, align 4, !tbaa !32
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %136, label %116

; <label>:116                                     ; preds = %111
  %117 = load float** %52, align 8, !tbaa !33
  %118 = getelementptr inbounds float* %117, i64 %indvars.iv16
  %119 = load float* %118, align 4, !tbaa !6
  %120 = load float** %53, align 8, !tbaa !34
  %121 = getelementptr inbounds float* %120, i64 %indvars.iv16
  %122 = load float* %121, align 4, !tbaa !6
  %123 = fsub float %119, %122
  %124 = fpext float %123 to double
  %125 = fmul double %124, 5.000000e-01
  %126 = fmul float %81, %81
  %127 = fmul float %91, %91
  %128 = fadd float %126, %127
  %129 = fmul float %93, %93
  %130 = fadd float %128, %129
  %131 = fpext float %130 to double
  %132 = fmul double %125, %131
  %133 = fpext float %dvdl.04 to double
  %134 = fsub double %133, %132
  %135 = fptrunc double %134 to float
  br label %136

; <label>:136                                     ; preds = %111, %109, %116
  %dvdl.1 = phi float [ %135, %116 ], [ %dvdl.04, %111 ], [ %dvdl.04, %109 ]
  %indvars.iv.next17 = add nsw i64 %indvars.iv16, 1
  %137 = icmp slt i64 %indvars.iv.next17, %55
  br i1 %137, label %56, label %._crit_edge

._crit_edge:                                      ; preds = %136
  %phitmp = fptrunc double %110 to float
  br label %.loopexit.thread

.loopexit.thread:                                 ; preds = %.preheader, %._crit_edge, %.loopexit
  %mvcos.0.lcssa = phi float [ %phitmp, %._crit_edge ], [ 0.000000e+00, %.loopexit ], [ 0.000000e+00, %.preheader ]
  %dvdl.0.lcssa = phi float [ %dvdl.1, %._crit_edge ], [ 0.000000e+00, %.loopexit ], [ 0.000000e+00, %.preheader ]
  %138 = icmp eq float* %dvdlambda, null
  br i1 %138, label %142, label %139

; <label>:139                                     ; preds = %.loopexit.thread
  %140 = load float* %dvdlambda, align 4, !tbaa !6
  %141 = fadd float %dvdl.0.lcssa, %140
  store float %141, float* %dvdlambda, align 4, !tbaa !6
  br label %142

; <label>:142                                     ; preds = %.loopexit.thread, %139
  %143 = getelementptr inbounds %struct.t_groups* %grps, i64 0, i32 3, i32 1
  store float %mvcos.0.lcssa, float* %143, align 4, !tbaa !38
  %144 = sitofp i32 %homenr to double
  %145 = getelementptr inbounds %struct.t_nrnb* %nrnb, i64 0, i32 0, i64 112
  %146 = load double* %145, align 8, !tbaa !35
  %147 = fadd double %144, %146
  store double %147, double* %145, align 8, !tbaa !35
  ret void
}

; Function Attrs: nounwind optsize readnone
declare double @cos(double) #3

; Function Attrs: nounwind optsize ssp uwtable
define void @update(i32 %natoms, i32 %start, i32 %homenr, i32 %step, float %lambda, float* %dvdlambda, %struct.t_parm* %parm, float %SAfactor, %struct.t_mdatoms* %md, [3 x float]* %x, %struct.t_graph* %graph, [3 x float]* %force, [3 x float]* %delta_f, [3 x float]* nocapture %vold, [3 x float]* nocapture readnone %vt, [3 x float]* %v, %struct.t_topology* %top, %struct.t_groups* %grps, [3 x float]* %vir_part, %struct.t_commrec* %cr, %struct.t_nrnb* %nrnb, i32 %bTYZ, i32 %bDoUpdate, %struct.t_edsamyn* %edyn, %struct.t_pull* %pulldata, i32 %bNEMD) #1 {
  %vrel.i = alloca [3 x float], align 4
  %M = alloca [3 x [3 x float]], align 16
  %1 = bitcast [3 x [3 x float]]* %M to i8*
  call void @llvm.lifetime.start(i64 36, i8* %1) #5
  %2 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0
  %.b = load i1* @update.bFirst, align 1
  br i1 %.b, label %42, label %3

; <label>:3                                       ; preds = %0
  %4 = load %struct.__sFILE** @stdlog, align 8, !tbaa !2
  %5 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 0
  %6 = load i32* %5, align 4, !tbaa !39
  %7 = icmp ne i32 %6, 1
  %8 = zext i1 %7 to i32
  %9 = tail call i32 @init_constraints(%struct.__sFILE* %4, %struct.t_topology* %top, %struct.t_inputrec* %2, %struct.t_mdatoms* %md, i32 %start, i32 %homenr, i32 %8, %struct.t_commrec* %cr) #6
  store i32 %9, i32* @update.bHaveConstr, align 4, !tbaa !32
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %15

; <label>:11                                      ; preds = %3
  %12 = getelementptr inbounds %struct.t_pull* %pulldata, i64 0, i32 16
  %13 = load i32* %12, align 4, !tbaa !41
  %14 = icmp ne i32 %13, 0
  br label %15

; <label>:15                                      ; preds = %3, %11
  %16 = phi i1 [ true, %3 ], [ %14, %11 ]
  %17 = zext i1 %16 to i32
  store i32 %17, i32* @update.bHaveConstr, align 4, !tbaa !32
  %18 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 27
  %19 = load i32* %18, align 4, !tbaa !44
  %20 = icmp eq i32 %19, 2
  br i1 %20, label %25, label %21

; <label>:21                                      ; preds = %15
  %22 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 28
  %23 = load i32* %22, align 4, !tbaa !45
  %24 = icmp eq i32 %23, 2
  br label %25

; <label>:25                                      ; preds = %21, %15
  %26 = phi i1 [ true, %15 ], [ %24, %21 ]
  %27 = zext i1 %26 to i32
  store i32 %27, i32* @update.bExtended, align 4, !tbaa !32
  %28 = getelementptr inbounds %struct.t_edsamyn* %edyn, i64 0, i32 0
  %29 = load i32* %28, align 4, !tbaa !46
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %34, label %31

; <label>:31                                      ; preds = %25
  %32 = load %struct.__sFILE** @stdlog, align 8, !tbaa !2
  %33 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 1, i64 0
  tail call void @init_edsam(%struct.__sFILE* %32, %struct.t_topology* %top, %struct.t_mdatoms* %md, i32 %start, i32 %homenr, [3 x float]* %x, [3 x float]* %33, %struct.t_edsamyn* %edyn, %struct.t_edpar* @update.edpar) #6
  br label %34

; <label>:34                                      ; preds = %25, %31
  %35 = tail call i8* @save_calloc(i8* getelementptr inbounds ([7 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str1, i64 0, i64 0), i32 633, i32 %natoms, i32 12) #6
  store i8* %35, i8** bitcast ([3 x float]** @update.xprime to i8**), align 8, !tbaa !2
  %36 = tail call i8* @save_calloc(i8* getelementptr inbounds ([6 x i8]* @.str4, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str1, i64 0, i64 0), i32 634, i32 %homenr, i32 12) #6
  store i8* %36, i8** bitcast ([3 x float]** @update.x_unc to i8**), align 8, !tbaa !2
  %37 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 80, i32 1
  %38 = load i32* %37, align 4, !tbaa !48
  store i32 %38, i32* @update.ngacc, align 4, !tbaa !32
  %39 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 80, i32 0
  %40 = load i32* %39, align 4, !tbaa !49
  store i32 %40, i32* @update.ngtc, align 4, !tbaa !32
  %41 = tail call i8* @save_calloc(i8* getelementptr inbounds ([5 x i8]* @.str5, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str1, i64 0, i64 0), i32 639, i32 %40, i32 12) #6
  store i8* %41, i8** bitcast ([3 x float]** @update.lamb to i8**), align 8, !tbaa !2
  store i1 true, i1* @update.bFirst, align 1
  br label %42

; <label>:42                                      ; preds = %0, %34
  %43 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 15
  %44 = load float* %43, align 4, !tbaa !50
  %45 = fpext float %44 to double
  %46 = fdiv float 1.000000e+00, %44
  %47 = fmul double %45, %45
  %48 = fdiv double 1.000000e+00, %47
  %49 = fptrunc double %48 to float
  %50 = load i32* @update.ngtc, align 4, !tbaa !32
  %51 = icmp sgt i32 %50, 0
  br i1 %51, label %.lr.ph74, label %._crit_edge75

.lr.ph74:                                         ; preds = %42
  %52 = getelementptr inbounds %struct.t_groups* %grps, i64 0, i32 1
  %53 = load %struct.t_grp_tcstat** %52, align 8, !tbaa !16
  %54 = icmp eq i32 %bTYZ, 0
  %55 = load [3 x float]** @update.lamb, align 8, !tbaa !2
  %56 = sext i32 %50 to i64
  br label %57

; <label>:57                                      ; preds = %.lr.ph74, %66
  %indvars.iv114 = phi i64 [ 0, %.lr.ph74 ], [ %indvars.iv.next115, %66 ]
  %58 = getelementptr inbounds %struct.t_grp_tcstat* %53, i64 %indvars.iv114, i32 1
  %59 = bitcast float* %58 to i32*
  %60 = load i32* %59, align 4, !tbaa !51
  br i1 %54, label %63, label %61

; <label>:61                                      ; preds = %57
  %62 = getelementptr inbounds [3 x float]* %55, i64 %indvars.iv114, i64 0
  store float 1.000000e+00, float* %62, align 4, !tbaa !6
  br label %66

; <label>:63                                      ; preds = %57
  %64 = getelementptr inbounds [3 x float]* %55, i64 %indvars.iv114
  %65 = bitcast [3 x float]* %64 to i32*
  store i32 %60, i32* %65, align 4, !tbaa !6
  br label %66

; <label>:66                                      ; preds = %63, %61
  %67 = getelementptr inbounds [3 x float]* %55, i64 %indvars.iv114, i64 1
  %68 = bitcast float* %67 to i32*
  store i32 %60, i32* %68, align 4, !tbaa !6
  %69 = getelementptr inbounds [3 x float]* %55, i64 %indvars.iv114, i64 2
  %70 = bitcast float* %69 to i32*
  store i32 %60, i32* %70, align 4, !tbaa !6
  %indvars.iv.next115 = add nuw nsw i64 %indvars.iv114, 1
  %71 = icmp slt i64 %indvars.iv.next115, %56
  br i1 %71, label %57, label %._crit_edge75

._crit_edge75:                                    ; preds = %66, %42
  %72 = icmp ne i32 %bDoUpdate, 0
  br i1 %72, label %.preheader38, label %.preheader39

.preheader39:                                     ; preds = %._crit_edge75
  %73 = icmp sgt i32 %homenr, 0
  br i1 %73, label %.lr.ph71, label %.loopexit40

.lr.ph71:                                         ; preds = %.preheader39
  %74 = add nsw i32 %homenr, %start
  %75 = load [3 x float]** @update.xprime, align 8, !tbaa !2
  %76 = sext i32 %start to i64
  %77 = sext i32 %74 to i64
  br label %790

.preheader38:                                     ; preds = %._crit_edge75
  %78 = load i32* @update.ngacc, align 4, !tbaa !32
  %79 = icmp sgt i32 %78, 0
  br i1 %79, label %.lr.ph68, label %._crit_edge69

.lr.ph68:                                         ; preds = %.preheader38
  %80 = getelementptr inbounds %struct.t_groups* %grps, i64 0, i32 2
  %81 = load %struct.t_grp_acc** %80, align 8, !tbaa !21
  %82 = sext i32 %78 to i64
  br label %83

; <label>:83                                      ; preds = %.lr.ph68, %83
  %indvars.iv110 = phi i64 [ 0, %.lr.ph68 ], [ %indvars.iv.next111, %83 ]
  %84 = getelementptr inbounds %struct.t_grp_acc* %81, i64 %indvars.iv110, i32 3, i64 0
  %85 = getelementptr inbounds %struct.t_grp_acc* %81, i64 %indvars.iv110, i32 4, i64 0
  %86 = bitcast float* %84 to i32*
  %87 = load i32* %86, align 4, !tbaa !6
  %88 = bitcast float* %85 to i32*
  store i32 %87, i32* %88, align 4, !tbaa !6
  %89 = getelementptr inbounds %struct.t_grp_acc* %81, i64 %indvars.iv110, i32 3, i64 1
  %90 = bitcast float* %89 to i32*
  %91 = load i32* %90, align 4, !tbaa !6
  %92 = getelementptr inbounds %struct.t_grp_acc* %81, i64 %indvars.iv110, i32 4, i64 1
  %93 = bitcast float* %92 to i32*
  store i32 %91, i32* %93, align 4, !tbaa !6
  %94 = getelementptr inbounds %struct.t_grp_acc* %81, i64 %indvars.iv110, i32 3, i64 2
  %95 = bitcast float* %94 to i32*
  %96 = load i32* %95, align 4, !tbaa !6
  %97 = getelementptr inbounds %struct.t_grp_acc* %81, i64 %indvars.iv110, i32 4, i64 2
  %98 = bitcast float* %97 to i32*
  store i32 %96, i32* %98, align 4, !tbaa !6
  store float 0.000000e+00, float* %84, align 4, !tbaa !6
  store float 0.000000e+00, float* %89, align 4, !tbaa !6
  store float 0.000000e+00, float* %94, align 4, !tbaa !6
  %indvars.iv.next111 = add nuw nsw i64 %indvars.iv110, 1
  %99 = icmp slt i64 %indvars.iv.next111, %82
  br i1 %99, label %83, label %._crit_edge69

._crit_edge69:                                    ; preds = %83, %.preheader38
  call void @llvm.memset.p0i8.i64(i8* %1, i8 0, i64 36, i32 16, i1 false) #5
  %100 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 28
  %101 = load i32* %100, align 4, !tbaa !45
  %102 = icmp eq i32 %101, 2
  br i1 %102, label %103, label %108

; <label>:103                                     ; preds = %._crit_edge69
  %104 = getelementptr inbounds [3 x [3 x float]]* %M, i64 0, i64 0
  %105 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 4, i64 0
  %106 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 1, i64 0
  %107 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 2, i64 0
  call void @parrinellorahman_pcoupl(%struct.t_inputrec* %2, i32 %step, [3 x float]* %105, [3 x float]* %106, [3 x float]* %107, [3 x float]* %104) #6
  br label %108

; <label>:108                                     ; preds = %103, %._crit_edge69
  call void @_where(i8* getelementptr inbounds ([66 x i8]* @.str1, i64 0, i64 0), i32 670) #6
  %109 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 0
  %110 = load i32* %109, align 4, !tbaa !39
  switch i32 %110, label %782 [
    i32 0, label %111
    i32 4, label %522
    i32 3, label %617
  ]

; <label>:111                                     ; preds = %108
  %112 = getelementptr inbounds %struct.t_groups* %grps, i64 0, i32 3, i32 0
  %113 = load float* %112, align 4, !tbaa !53
  %fabsf4 = call float @fabsf(float %113) #3
  %114 = fpext float %fabsf4 to double
  %115 = fcmp olt double %114, 1.200000e-38
  %116 = load [3 x float]** @update.lamb, align 8, !tbaa !2
  br i1 %115, label %117, label %319

; <label>:117                                     ; preds = %111
  %118 = getelementptr inbounds %struct.t_groups* %grps, i64 0, i32 2
  %119 = load %struct.t_grp_acc** %118, align 8, !tbaa !21
  %120 = getelementptr inbounds %struct.t_groups* %grps, i64 0, i32 1
  %121 = load %struct.t_grp_tcstat** %120, align 8, !tbaa !16
  %122 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 80, i32 7
  %123 = load [3 x float]** %122, align 8, !tbaa !54
  %124 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 80, i32 8
  %125 = load [3 x i32]** %124, align 8, !tbaa !55
  %126 = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 5
  %127 = load float** %126, align 8, !tbaa !56
  %128 = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 13
  %129 = load i16** %128, align 8, !tbaa !57
  %130 = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 17
  %131 = load i16** %130, align 8, !tbaa !58
  %132 = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 16
  %133 = load i16** %132, align 8, !tbaa !25
  %134 = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 14
  %135 = load i16** %134, align 8, !tbaa !27
  %136 = load [3 x float]** @update.xprime, align 8, !tbaa !2
  %137 = load i32* @update.bExtended, align 4, !tbaa !32
  %138 = bitcast [3 x float]* %vrel.i to i8*
  call void @llvm.lifetime.start(i64 12, i8* %138)
  %139 = icmp eq i32 %137, 0
  %140 = icmp sgt i32 %homenr, 0
  br i1 %139, label %.preheader.i5, label %.preheader1.i

.preheader1.i:                                    ; preds = %117
  br i1 %140, label %.lr.ph7.i, label %do_update_md.exit

.lr.ph7.i:                                        ; preds = %.preheader1.i
  %141 = add nsw i32 %homenr, %start
  %142 = getelementptr inbounds [3 x float]* %vrel.i, i64 0, i64 0
  %143 = getelementptr inbounds [3 x float]* %vrel.i, i64 0, i64 1
  %144 = getelementptr inbounds [3 x float]* %vrel.i, i64 0, i64 2
  %145 = sext i32 %start to i64
  %146 = sext i32 %141 to i64
  br label %150

.preheader.i5:                                    ; preds = %117
  br i1 %140, label %.lr.ph.i6, label %do_update_md.exit

.lr.ph.i6:                                        ; preds = %.preheader.i5
  %147 = add nsw i32 %homenr, %start
  %148 = sext i32 %start to i64
  %149 = sext i32 %147 to i64
  br label %251

; <label>:150                                     ; preds = %249, %.lr.ph7.i
  %indvars.iv15.i = phi i64 [ %145, %.lr.ph7.i ], [ %indvars.iv.next16.i, %249 ]
  %151 = getelementptr inbounds float* %127, i64 %indvars.iv15.i
  %152 = load float* %151, align 4, !tbaa !6
  %153 = fpext float %152 to double
  %154 = getelementptr inbounds i16* %131, i64 %indvars.iv15.i
  %155 = load i16* %154, align 2, !tbaa !29
  %156 = getelementptr inbounds i16* %133, i64 %indvars.iv15.i
  %157 = load i16* %156, align 2, !tbaa !29
  %158 = getelementptr inbounds i16* %135, i64 %indvars.iv15.i
  %159 = load i16* %158, align 2, !tbaa !29
  %160 = zext i16 %159 to i64
  %161 = getelementptr inbounds %struct.t_grp_tcstat* %121, i64 %160, i32 3
  %162 = load float* %161, align 4, !tbaa !59
  %163 = getelementptr inbounds [3 x float]* %v, i64 %indvars.iv15.i, i64 0
  %164 = zext i16 %157 to i64
  %165 = getelementptr inbounds %struct.t_grp_acc* %119, i64 %164, i32 4, i64 0
  %166 = load float* %163, align 4, !tbaa !6
  %167 = load float* %165, align 4, !tbaa !6
  %168 = fsub float %166, %167
  %169 = getelementptr inbounds [3 x float]* %v, i64 %indvars.iv15.i, i64 1
  %170 = load float* %169, align 4, !tbaa !6
  %171 = getelementptr inbounds %struct.t_grp_acc* %119, i64 %164, i32 4, i64 1
  %172 = load float* %171, align 4, !tbaa !6
  %173 = fsub float %170, %172
  %174 = getelementptr inbounds [3 x float]* %v, i64 %indvars.iv15.i, i64 2
  %175 = load float* %174, align 4, !tbaa !6
  %176 = getelementptr inbounds %struct.t_grp_acc* %119, i64 %164, i32 4, i64 2
  %177 = load float* %176, align 4, !tbaa !6
  %178 = fsub float %175, %177
  store float %168, float* %142, align 4, !tbaa !6
  store float %173, float* %143, align 4, !tbaa !6
  store float %178, float* %144, align 4, !tbaa !6
  %179 = getelementptr inbounds i16* %129, i64 %indvars.iv15.i
  %180 = load i16* %179, align 2, !tbaa !29
  %181 = zext i16 %155 to i64
  br label %182

; <label>:182                                     ; preds = %248, %150
  %indvars.iv11.i = phi i64 [ 0, %150 ], [ %indvars.iv.next12.i, %248 ]
  %183 = getelementptr inbounds [3 x float]* %116, i64 %160, i64 %indvars.iv11.i
  %184 = load float* %183, align 4, !tbaa !6
  %185 = getelementptr inbounds [3 x float]* %v, i64 %indvars.iv15.i, i64 %indvars.iv11.i
  %186 = bitcast float* %185 to i32*
  %187 = load i32* %186, align 4, !tbaa !6
  %188 = getelementptr inbounds [3 x float]* %vold, i64 %indvars.iv15.i, i64 %indvars.iv11.i
  %189 = bitcast float* %188 to i32*
  store i32 %187, i32* %189, align 4, !tbaa !6
  switch i16 %180, label %190 [
    i16 4, label %242
    i16 2, label %242
  ]

; <label>:190                                     ; preds = %182
  %191 = getelementptr inbounds [3 x i32]* %125, i64 %181, i64 %indvars.iv11.i
  %192 = load i32* %191, align 4, !tbaa !32
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %194, label %242

; <label>:194                                     ; preds = %190
  %195 = fpext float %184 to double
  %196 = getelementptr inbounds [3 x float]* %vrel.i, i64 0, i64 %indvars.iv11.i
  %197 = load float* %196, align 4, !tbaa !6
  %198 = fpext float %197 to double
  %199 = getelementptr inbounds [3 x float]* %force, i64 %indvars.iv15.i, i64 %indvars.iv11.i
  %200 = load float* %199, align 4, !tbaa !6
  %201 = fpext float %200 to double
  %202 = fmul double %153, %201
  %203 = fmul float %162, %197
  %204 = fpext float %203 to double
  %205 = fsub double %202, %204
  %206 = getelementptr inbounds [3 x [3 x float]]* %M, i64 0, i64 %indvars.iv11.i, i64 0
  %207 = load float* %206, align 4, !tbaa !6
  %208 = fmul float %168, %207
  %209 = getelementptr inbounds [3 x [3 x float]]* %M, i64 0, i64 %indvars.iv11.i, i64 1
  %210 = load float* %209, align 4, !tbaa !6
  %211 = fmul float %173, %210
  %212 = fadd float %208, %211
  %213 = getelementptr inbounds [3 x [3 x float]]* %M, i64 0, i64 %indvars.iv11.i, i64 2
  %214 = load float* %213, align 4, !tbaa !6
  %215 = fmul float %178, %214
  %216 = fadd float %212, %215
  %217 = fpext float %216 to double
  %218 = fsub double %205, %217
  %219 = fmul double %45, %218
  %220 = fadd double %198, %219
  %221 = fmul double %195, %220
  %222 = fptrunc double %221 to float
  %223 = getelementptr inbounds %struct.t_grp_acc* %119, i64 %164, i32 4, i64 %indvars.iv11.i
  %224 = load float* %223, align 4, !tbaa !6
  %225 = fpext float %224 to double
  %226 = getelementptr inbounds [3 x float]* %123, i64 %164, i64 %indvars.iv11.i
  %227 = load float* %226, align 4, !tbaa !6
  %228 = fpext float %227 to double
  %229 = fmul double %45, %228
  %230 = fadd double %225, %229
  %231 = fpext float %222 to double
  %232 = fadd double %230, %231
  %233 = fptrunc double %232 to float
  store float %233, float* %185, align 4, !tbaa !6
  %234 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv15.i, i64 %indvars.iv11.i
  %235 = load float* %234, align 4, !tbaa !6
  %236 = fpext float %235 to double
  %237 = fpext float %233 to double
  %238 = fmul double %45, %237
  %239 = fadd double %236, %238
  %240 = fptrunc double %239 to float
  %241 = getelementptr inbounds [3 x float]* %136, i64 %indvars.iv15.i, i64 %indvars.iv11.i
  store float %240, float* %241, align 4, !tbaa !6
  br label %248

; <label>:242                                     ; preds = %190, %182, %182
  %243 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv15.i, i64 %indvars.iv11.i
  %244 = bitcast float* %243 to i32*
  %245 = load i32* %244, align 4, !tbaa !6
  %246 = getelementptr inbounds [3 x float]* %136, i64 %indvars.iv15.i, i64 %indvars.iv11.i
  %247 = bitcast float* %246 to i32*
  store i32 %245, i32* %247, align 4, !tbaa !6
  br label %248

; <label>:248                                     ; preds = %242, %194
  %indvars.iv.next12.i = add nuw nsw i64 %indvars.iv11.i, 1
  %exitcond13.i = icmp eq i64 %indvars.iv.next12.i, 3
  br i1 %exitcond13.i, label %249, label %182

; <label>:249                                     ; preds = %248
  %indvars.iv.next16.i = add nsw i64 %indvars.iv15.i, 1
  %250 = icmp slt i64 %indvars.iv.next16.i, %146
  br i1 %250, label %150, label %do_update_md.exit

; <label>:251                                     ; preds = %317, %.lr.ph.i6
  %indvars.iv9.i = phi i64 [ %148, %.lr.ph.i6 ], [ %indvars.iv.next10.i, %317 ]
  %252 = getelementptr inbounds float* %127, i64 %indvars.iv9.i
  %253 = load float* %252, align 4, !tbaa !6
  %254 = fpext float %253 to double
  %255 = fmul double %45, %254
  %256 = getelementptr inbounds i16* %131, i64 %indvars.iv9.i
  %257 = load i16* %256, align 2, !tbaa !29
  %258 = getelementptr inbounds i16* %133, i64 %indvars.iv9.i
  %259 = load i16* %258, align 2, !tbaa !29
  %260 = getelementptr inbounds i16* %135, i64 %indvars.iv9.i
  %261 = load i16* %260, align 2, !tbaa !29
  %262 = zext i16 %261 to i64
  %263 = getelementptr inbounds i16* %129, i64 %indvars.iv9.i
  %264 = load i16* %263, align 2, !tbaa !29
  %265 = zext i16 %257 to i64
  %266 = zext i16 %259 to i64
  br label %267

; <label>:267                                     ; preds = %316, %251
  %indvars.iv.i7 = phi i64 [ 0, %251 ], [ %indvars.iv.next.i8, %316 ]
  %268 = getelementptr inbounds [3 x float]* %v, i64 %indvars.iv9.i, i64 %indvars.iv.i7
  %269 = load float* %268, align 4, !tbaa !6
  %270 = getelementptr inbounds [3 x float]* %116, i64 %262, i64 %indvars.iv.i7
  %271 = load float* %270, align 4, !tbaa !6
  %272 = getelementptr inbounds [3 x float]* %vold, i64 %indvars.iv9.i, i64 %indvars.iv.i7
  store float %269, float* %272, align 4, !tbaa !6
  switch i16 %264, label %273 [
    i16 4, label %310
    i16 2, label %310
  ]

; <label>:273                                     ; preds = %267
  %274 = getelementptr inbounds [3 x i32]* %125, i64 %265, i64 %indvars.iv.i7
  %275 = load i32* %274, align 4, !tbaa !32
  %276 = icmp eq i32 %275, 0
  br i1 %276, label %277, label %310

; <label>:277                                     ; preds = %273
  %278 = fpext float %271 to double
  %279 = fpext float %269 to double
  %280 = getelementptr inbounds [3 x float]* %force, i64 %indvars.iv9.i, i64 %indvars.iv.i7
  %281 = load float* %280, align 4, !tbaa !6
  %282 = fpext float %281 to double
  %283 = fmul double %255, %282
  %284 = fadd double %279, %283
  %285 = fmul double %278, %284
  %286 = fptrunc double %285 to float
  %287 = getelementptr inbounds %struct.t_grp_acc* %119, i64 %266, i32 4, i64 %indvars.iv.i7
  %288 = load float* %287, align 4, !tbaa !6
  %289 = fpext float %286 to double
  %290 = getelementptr inbounds [3 x float]* %123, i64 %266, i64 %indvars.iv.i7
  %291 = load float* %290, align 4, !tbaa !6
  %292 = fpext float %291 to double
  %293 = fmul double %45, %292
  %294 = fadd double %293, %289
  %295 = fptrunc double %294 to float
  %296 = fpext float %295 to double
  %297 = fsub double 1.000000e+00, %278
  %298 = fpext float %288 to double
  %299 = fmul double %297, %298
  %300 = fadd double %299, %296
  %301 = fptrunc double %300 to float
  store float %301, float* %268, align 4, !tbaa !6
  %302 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv9.i, i64 %indvars.iv.i7
  %303 = load float* %302, align 4, !tbaa !6
  %304 = fpext float %303 to double
  %305 = fpext float %301 to double
  %306 = fmul double %45, %305
  %307 = fadd double %304, %306
  %308 = fptrunc double %307 to float
  %309 = getelementptr inbounds [3 x float]* %136, i64 %indvars.iv9.i, i64 %indvars.iv.i7
  store float %308, float* %309, align 4, !tbaa !6
  br label %316

; <label>:310                                     ; preds = %273, %267, %267
  store float 0.000000e+00, float* %268, align 4, !tbaa !6
  %311 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv9.i, i64 %indvars.iv.i7
  %312 = bitcast float* %311 to i32*
  %313 = load i32* %312, align 4, !tbaa !6
  %314 = getelementptr inbounds [3 x float]* %136, i64 %indvars.iv9.i, i64 %indvars.iv.i7
  %315 = bitcast float* %314 to i32*
  store i32 %313, i32* %315, align 4, !tbaa !6
  br label %316

; <label>:316                                     ; preds = %310, %277
  %indvars.iv.next.i8 = add nuw nsw i64 %indvars.iv.i7, 1
  %exitcond.i9 = icmp eq i64 %indvars.iv.next.i8, 3
  br i1 %exitcond.i9, label %317, label %267

; <label>:317                                     ; preds = %316
  %indvars.iv.next10.i = add nsw i64 %indvars.iv9.i, 1
  %318 = icmp slt i64 %indvars.iv.next10.i, %149
  br i1 %318, label %251, label %do_update_md.exit

do_update_md.exit:                                ; preds = %249, %317, %.preheader1.i, %.preheader.i5
  call void @llvm.lifetime.end(i64 12, i8* %138)
  br label %do_update_bd.exit

; <label>:319                                     ; preds = %111
  %320 = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 5
  %321 = load float** %320, align 8, !tbaa !56
  %322 = getelementptr inbounds %struct.t_groups* %grps, i64 0, i32 1
  %323 = load %struct.t_grp_tcstat** %322, align 8, !tbaa !16
  %324 = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 13
  %325 = load i16** %324, align 8, !tbaa !57
  %326 = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 14
  %327 = load i16** %326, align 8, !tbaa !27
  %328 = load [3 x float]** @update.xprime, align 8, !tbaa !2
  %329 = getelementptr inbounds %struct.t_groups* %grps, i64 0, i32 3, i32 2
  %330 = load float* %329, align 4, !tbaa !60
  %331 = load i32* @update.bExtended, align 4, !tbaa !32
  %332 = bitcast [3 x float]* %vrel.i to i8*
  call void @llvm.lifetime.start(i64 12, i8* %332)
  %333 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 1, i64 2, i64 2
  %334 = load float* %333, align 4, !tbaa !6
  %335 = fpext float %334 to double
  %336 = fdiv double 0x401921FB54442D18, %335
  %337 = fptrunc double %336 to float
  %338 = icmp eq i32 %331, 0
  %339 = icmp sgt i32 %homenr, 0
  br i1 %338, label %.preheader.i14, label %.preheader1.i12

.preheader1.i12:                                  ; preds = %319
  br i1 %339, label %.lr.ph7.i13, label %do_update_visc.exit

.lr.ph7.i13:                                      ; preds = %.preheader1.i12
  %340 = add nsw i32 %homenr, %start
  %341 = getelementptr inbounds [3 x float]* %vrel.i, i64 0, i64 0
  %342 = getelementptr inbounds [3 x float]* %vrel.i, i64 0, i64 1
  %343 = bitcast float* %342 to i32*
  %344 = getelementptr inbounds [3 x float]* %vrel.i, i64 0, i64 2
  %345 = bitcast float* %344 to i32*
  %346 = fpext float %113 to double
  %347 = sext i32 %start to i64
  %348 = sext i32 %340 to i64
  br label %353

.preheader.i14:                                   ; preds = %319
  br i1 %339, label %.lr.ph.i15, label %do_update_visc.exit

.lr.ph.i15:                                       ; preds = %.preheader.i14
  %349 = add nsw i32 %homenr, %start
  %350 = fpext float %113 to double
  %351 = sext i32 %start to i64
  %352 = sext i32 %349 to i64
  br label %454

; <label>:353                                     ; preds = %452, %.lr.ph7.i13
  %indvars.iv14.i = phi i64 [ %347, %.lr.ph7.i13 ], [ %indvars.iv.next15.i, %452 ]
  %354 = getelementptr inbounds float* %321, i64 %indvars.iv14.i
  %355 = load float* %354, align 4, !tbaa !6
  %356 = fpext float %355 to double
  %357 = getelementptr inbounds i16* %327, i64 %indvars.iv14.i
  %358 = load i16* %357, align 2, !tbaa !29
  %359 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv14.i, i64 2
  %360 = load float* %359, align 4, !tbaa !6
  %361 = fmul float %337, %360
  %362 = fpext float %361 to double
  %363 = call double @cos(double %362) #7
  %364 = fptrunc double %363 to float
  %365 = getelementptr inbounds [3 x float]* %v, i64 %indvars.iv14.i, i64 0
  %366 = getelementptr inbounds [3 x float]* %vold, i64 %indvars.iv14.i, i64 0
  %367 = bitcast float* %365 to i32*
  %368 = load i32* %367, align 4, !tbaa !6
  %369 = bitcast float* %366 to i32*
  store i32 %368, i32* %369, align 4, !tbaa !6
  %370 = getelementptr inbounds [3 x float]* %v, i64 %indvars.iv14.i, i64 1
  %371 = bitcast float* %370 to i32*
  %372 = load i32* %371, align 4, !tbaa !6
  %373 = getelementptr inbounds [3 x float]* %vold, i64 %indvars.iv14.i, i64 1
  %374 = bitcast float* %373 to i32*
  store i32 %372, i32* %374, align 4, !tbaa !6
  %375 = getelementptr inbounds [3 x float]* %v, i64 %indvars.iv14.i, i64 2
  %376 = bitcast float* %375 to i32*
  %377 = load i32* %376, align 4, !tbaa !6
  %378 = getelementptr inbounds [3 x float]* %vold, i64 %indvars.iv14.i, i64 2
  %379 = bitcast float* %378 to i32*
  store i32 %377, i32* %379, align 4, !tbaa !6
  %380 = load float* %365, align 4, !tbaa !6
  %381 = load i32* %371, align 4, !tbaa !6
  store i32 %381, i32* %343, align 4, !tbaa !6
  %382 = load i32* %376, align 4, !tbaa !6
  store i32 %382, i32* %345, align 4, !tbaa !6
  %383 = fmul float %330, %364
  %384 = fsub float %380, %383
  store float %384, float* %341, align 4, !tbaa !6
  %385 = zext i16 %358 to i64
  %386 = getelementptr inbounds %struct.t_grp_tcstat* %323, i64 %385, i32 3
  %387 = load float* %386, align 4, !tbaa !59
  %388 = getelementptr inbounds i16* %325, i64 %indvars.iv14.i
  %389 = load i16* %388, align 2, !tbaa !29
  %390 = bitcast i32 %381 to float
  %391 = bitcast i32 %382 to float
  %392 = fpext float %383 to double
  %393 = fpext float %364 to double
  %394 = fmul double %45, %393
  %395 = fmul double %346, %394
  %396 = fadd double %392, %395
  br label %397

; <label>:397                                     ; preds = %451, %353
  %indvars.iv11.i16 = phi i64 [ 0, %353 ], [ %indvars.iv.next12.i18, %451 ]
  %398 = getelementptr inbounds [3 x float]* %v, i64 %indvars.iv14.i, i64 %indvars.iv11.i16
  switch i16 %389, label %399 [
    i16 4, label %445
    i16 2, label %445
  ]

; <label>:399                                     ; preds = %397
  %400 = getelementptr inbounds [3 x float]* %116, i64 %385, i64 %indvars.iv11.i16
  %401 = load float* %400, align 4, !tbaa !6
  %402 = fpext float %401 to double
  %403 = getelementptr inbounds [3 x float]* %vrel.i, i64 0, i64 %indvars.iv11.i16
  %404 = load float* %403, align 4, !tbaa !6
  %405 = fpext float %404 to double
  %406 = getelementptr inbounds [3 x float]* %force, i64 %indvars.iv14.i, i64 %indvars.iv11.i16
  %407 = load float* %406, align 4, !tbaa !6
  %408 = fpext float %407 to double
  %409 = fmul double %356, %408
  %410 = fmul float %387, %404
  %411 = fpext float %410 to double
  %412 = fsub double %409, %411
  %413 = getelementptr inbounds [3 x [3 x float]]* %M, i64 0, i64 %indvars.iv11.i16, i64 0
  %414 = load float* %413, align 4, !tbaa !6
  %415 = fmul float %384, %414
  %416 = getelementptr inbounds [3 x [3 x float]]* %M, i64 0, i64 %indvars.iv11.i16, i64 1
  %417 = load float* %416, align 4, !tbaa !6
  %418 = fmul float %390, %417
  %419 = fadd float %415, %418
  %420 = getelementptr inbounds [3 x [3 x float]]* %M, i64 0, i64 %indvars.iv11.i16, i64 2
  %421 = load float* %420, align 4, !tbaa !6
  %422 = fmul float %391, %421
  %423 = fadd float %419, %422
  %424 = fpext float %423 to double
  %425 = fsub double %412, %424
  %426 = fmul double %45, %425
  %427 = fadd double %405, %426
  %428 = fmul double %402, %427
  %429 = fptrunc double %428 to float
  %430 = trunc i64 %indvars.iv11.i16 to i32
  %431 = icmp eq i32 %430, 0
  br i1 %431, label %432, label %436

; <label>:432                                     ; preds = %399
  %433 = fpext float %429 to double
  %434 = fadd double %396, %433
  %435 = fptrunc double %434 to float
  br label %436

; <label>:436                                     ; preds = %432, %399
  %vn.0.i17 = phi float [ %435, %432 ], [ %429, %399 ]
  store float %vn.0.i17, float* %398, align 4, !tbaa !6
  %437 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv14.i, i64 %indvars.iv11.i16
  %438 = load float* %437, align 4, !tbaa !6
  %439 = fpext float %438 to double
  %440 = fpext float %vn.0.i17 to double
  %441 = fmul double %45, %440
  %442 = fadd double %439, %441
  %443 = fptrunc double %442 to float
  %444 = getelementptr inbounds [3 x float]* %328, i64 %indvars.iv14.i, i64 %indvars.iv11.i16
  store float %443, float* %444, align 4, !tbaa !6
  br label %451

; <label>:445                                     ; preds = %397, %397
  %446 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv14.i, i64 %indvars.iv11.i16
  %447 = bitcast float* %446 to i32*
  %448 = load i32* %447, align 4, !tbaa !6
  %449 = getelementptr inbounds [3 x float]* %328, i64 %indvars.iv14.i, i64 %indvars.iv11.i16
  %450 = bitcast float* %449 to i32*
  store i32 %448, i32* %450, align 4, !tbaa !6
  br label %451

; <label>:451                                     ; preds = %445, %436
  %indvars.iv.next12.i18 = add nuw nsw i64 %indvars.iv11.i16, 1
  %exitcond13.i19 = icmp eq i64 %indvars.iv.next12.i18, 3
  br i1 %exitcond13.i19, label %452, label %397

; <label>:452                                     ; preds = %451
  %indvars.iv.next15.i = add nsw i64 %indvars.iv14.i, 1
  %453 = icmp slt i64 %indvars.iv.next15.i, %348
  br i1 %453, label %353, label %do_update_visc.exit

; <label>:454                                     ; preds = %520, %.lr.ph.i15
  %indvars.iv9.i20 = phi i64 [ %351, %.lr.ph.i15 ], [ %indvars.iv.next10.i24, %520 ]
  %455 = getelementptr inbounds float* %321, i64 %indvars.iv9.i20
  %456 = load float* %455, align 4, !tbaa !6
  %457 = fpext float %456 to double
  %458 = fmul double %45, %457
  %459 = getelementptr inbounds i16* %327, i64 %indvars.iv9.i20
  %460 = load i16* %459, align 2, !tbaa !29
  %461 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv9.i20, i64 2
  %462 = load float* %461, align 4, !tbaa !6
  %463 = fmul float %337, %462
  %464 = fpext float %463 to double
  %465 = call double @cos(double %464) #7
  %466 = fptrunc double %465 to float
  %467 = zext i16 %460 to i64
  %468 = getelementptr inbounds i16* %325, i64 %indvars.iv9.i20
  %469 = load i16* %468, align 2, !tbaa !29
  %470 = fmul float %330, %466
  %471 = fpext float %470 to double
  %472 = fpext float %466 to double
  %473 = fmul double %45, %472
  %474 = fmul double %350, %473
  br label %475

; <label>:475                                     ; preds = %519, %454
  %indvars.iv.i21 = phi i64 [ 0, %454 ], [ %indvars.iv.next.i22, %519 ]
  %476 = getelementptr inbounds [3 x float]* %v, i64 %indvars.iv9.i20, i64 %indvars.iv.i21
  %477 = load float* %476, align 4, !tbaa !6
  %478 = getelementptr inbounds [3 x float]* %116, i64 %467, i64 %indvars.iv.i21
  %479 = load float* %478, align 4, !tbaa !6
  %480 = getelementptr inbounds [3 x float]* %vold, i64 %indvars.iv9.i20, i64 %indvars.iv.i21
  store float %477, float* %480, align 4, !tbaa !6
  switch i16 %469, label %481 [
    i16 4, label %513
    i16 2, label %513
  ]

; <label>:481                                     ; preds = %475
  %482 = trunc i64 %indvars.iv.i21 to i32
  %483 = icmp eq i32 %482, 0
  %484 = getelementptr inbounds [3 x float]* %force, i64 %indvars.iv9.i20, i64 %indvars.iv.i21
  %485 = load float* %484, align 4
  %486 = fpext float %479 to double
  br i1 %483, label %487, label %498

; <label>:487                                     ; preds = %481
  %488 = fsub float %477, %470
  %489 = fpext float %488 to double
  %490 = fpext float %485 to double
  %491 = fmul double %458, %490
  %492 = fadd double %489, %491
  %493 = fmul double %486, %492
  %494 = fadd double %471, %493
  %495 = fptrunc double %494 to float
  %496 = fpext float %495 to double
  %497 = fadd double %474, %496
  br label %504

; <label>:498                                     ; preds = %481
  %499 = fpext float %477 to double
  %500 = fpext float %485 to double
  %501 = fmul double %458, %500
  %502 = fadd double %499, %501
  %503 = fmul double %486, %502
  br label %504

; <label>:504                                     ; preds = %498, %487
  %vv.0.in.i = phi double [ %497, %487 ], [ %503, %498 ]
  %vv.0.i = fptrunc double %vv.0.in.i to float
  store float %vv.0.i, float* %476, align 4, !tbaa !6
  %505 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv9.i20, i64 %indvars.iv.i21
  %506 = load float* %505, align 4, !tbaa !6
  %507 = fpext float %506 to double
  %508 = fpext float %vv.0.i to double
  %509 = fmul double %45, %508
  %510 = fadd double %507, %509
  %511 = fptrunc double %510 to float
  %512 = getelementptr inbounds [3 x float]* %328, i64 %indvars.iv9.i20, i64 %indvars.iv.i21
  store float %511, float* %512, align 4, !tbaa !6
  br label %519

; <label>:513                                     ; preds = %475, %475
  store float 0.000000e+00, float* %476, align 4, !tbaa !6
  %514 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv9.i20, i64 %indvars.iv.i21
  %515 = bitcast float* %514 to i32*
  %516 = load i32* %515, align 4, !tbaa !6
  %517 = getelementptr inbounds [3 x float]* %328, i64 %indvars.iv9.i20, i64 %indvars.iv.i21
  %518 = bitcast float* %517 to i32*
  store i32 %516, i32* %518, align 4, !tbaa !6
  br label %519

; <label>:519                                     ; preds = %513, %504
  %indvars.iv.next.i22 = add nuw nsw i64 %indvars.iv.i21, 1
  %exitcond.i23 = icmp eq i64 %indvars.iv.next.i22, 3
  br i1 %exitcond.i23, label %520, label %475

; <label>:520                                     ; preds = %519
  %indvars.iv.next10.i24 = add nsw i64 %indvars.iv9.i20, 1
  %521 = icmp slt i64 %indvars.iv.next10.i24, %352
  br i1 %521, label %454, label %do_update_visc.exit

do_update_visc.exit:                              ; preds = %452, %520, %.preheader1.i12, %.preheader.i14
  call void @llvm.lifetime.end(i64 12, i8* %332)
  br label %do_update_bd.exit

; <label>:522                                     ; preds = %108
  %523 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 80, i32 7
  %524 = load [3 x float]** %523, align 8, !tbaa !54
  %525 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 80, i32 8
  %526 = load [3 x i32]** %525, align 8, !tbaa !55
  %527 = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 5
  %528 = load float** %527, align 8, !tbaa !56
  %529 = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 13
  %530 = load i16** %529, align 8, !tbaa !57
  %531 = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 17
  %532 = load i16** %531, align 8, !tbaa !58
  %533 = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 16
  %534 = load i16** %533, align 8, !tbaa !25
  %535 = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 14
  %536 = load i16** %535, align 8, !tbaa !27
  %537 = load [3 x float]** @update.xprime, align 8, !tbaa !2
  %538 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 80, i32 0
  %539 = load i32* %538, align 4, !tbaa !49
  %540 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 80, i32 6
  %541 = load float** %540, align 8, !tbaa !61
  %542 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 80, i32 5
  %543 = load float** %542, align 8, !tbaa !62
  %544 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 70
  call fastcc void @do_update_sd(i32 %start, i32 %homenr, [3 x float]* %524, [3 x i32]* %526, float* %528, i16* %530, i16* %532, i16* %534, i16* %536, float %SAfactor, [3 x float]* %x, [3 x float]* %537, [3 x float]* %v, [3 x float]* %vold, [3 x float]* %force, i32 %539, float* %541, float* %543, i32* %544, i32 1) #8
  %545 = load i32* @update.bHaveConstr, align 4, !tbaa !32
  %546 = icmp eq i32 %545, 0
  br i1 %546, label %.loopexit36, label %.preheader37

.preheader37:                                     ; preds = %522
  %547 = add nsw i32 %homenr, %start
  %548 = icmp sgt i32 %homenr, 0
  %549 = load [3 x float]** @update.xprime, align 8, !tbaa !2
  br i1 %548, label %.lr.ph64, label %._crit_edge65.thread

._crit_edge65.thread:                             ; preds = %.preheader37
  %550 = load %struct.__sFILE** @stdlog, align 8, !tbaa !2
  %551 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 1, i64 0
  %552 = call i32 @constrain(%struct.__sFILE* %550, %struct.t_topology* %top, %struct.t_inputrec* %2, i32 %step, %struct.t_mdatoms* %md, i32 %start, i32 %homenr, [3 x float]* %x, [3 x float]* %549, [3 x float]* null, [3 x float]* %551, float %lambda, float* %dvdlambda, %struct.t_nrnb* %nrnb, i32 1) #6
  br label %.loopexit36

.lr.ph64:                                         ; preds = %.preheader37
  %553 = load [3 x float]** @update.x_unc, align 8, !tbaa !2
  %554 = sext i32 %start to i64
  %555 = sext i32 %547 to i64
  br label %556

; <label>:556                                     ; preds = %.lr.ph64, %556
  %indvars.iv105 = phi i64 [ %554, %.lr.ph64 ], [ %indvars.iv.next106, %556 ]
  %557 = getelementptr inbounds [3 x float]* %549, i64 %indvars.iv105, i64 0
  %558 = sub nsw i64 %indvars.iv105, %554
  %559 = getelementptr inbounds [3 x float]* %553, i64 %558, i64 0
  %560 = bitcast float* %557 to i32*
  %561 = load i32* %560, align 4, !tbaa !6
  %562 = bitcast float* %559 to i32*
  store i32 %561, i32* %562, align 4, !tbaa !6
  %563 = getelementptr inbounds [3 x float]* %549, i64 %indvars.iv105, i64 1
  %564 = bitcast float* %563 to i32*
  %565 = load i32* %564, align 4, !tbaa !6
  %566 = getelementptr inbounds [3 x float]* %553, i64 %558, i64 1
  %567 = bitcast float* %566 to i32*
  store i32 %565, i32* %567, align 4, !tbaa !6
  %568 = getelementptr inbounds [3 x float]* %549, i64 %indvars.iv105, i64 2
  %569 = bitcast float* %568 to i32*
  %570 = load i32* %569, align 4, !tbaa !6
  %571 = getelementptr inbounds [3 x float]* %553, i64 %558, i64 2
  %572 = bitcast float* %571 to i32*
  store i32 %570, i32* %572, align 4, !tbaa !6
  %indvars.iv.next106 = add nsw i64 %indvars.iv105, 1
  %573 = icmp slt i64 %indvars.iv.next106, %555
  br i1 %573, label %556, label %._crit_edge65

._crit_edge65:                                    ; preds = %556
  %574 = load %struct.__sFILE** @stdlog, align 8, !tbaa !2
  %575 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 1, i64 0
  %576 = call i32 @constrain(%struct.__sFILE* %574, %struct.t_topology* %top, %struct.t_inputrec* %2, i32 %step, %struct.t_mdatoms* %md, i32 %start, i32 %homenr, [3 x float]* %x, [3 x float]* %549, [3 x float]* null, [3 x float]* %575, float %lambda, float* %dvdlambda, %struct.t_nrnb* %nrnb, i32 1) #6
  br i1 %548, label %.lr.ph62, label %.loopexit36

.lr.ph62:                                         ; preds = %._crit_edge65
  %577 = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 4
  %578 = load float** %577, align 8, !tbaa !28
  %579 = load i16** %535, align 8, !tbaa !27
  %580 = load %struct.t_sdconst** @sdc, align 8, !tbaa !2
  %581 = load [3 x float]** @update.xprime, align 8, !tbaa !2
  %582 = load [3 x float]** @update.x_unc, align 8, !tbaa !2
  %583 = sext i32 %start to i64
  %584 = sext i32 %547 to i64
  br label %585

; <label>:585                                     ; preds = %.lr.ph62, %604
  %indvars.iv103 = phi i64 [ %583, %.lr.ph62 ], [ %indvars.iv.next104, %604 ]
  %586 = getelementptr inbounds float* %578, i64 %indvars.iv103
  %587 = load float* %586, align 4, !tbaa !6
  %588 = fmul float %49, %587
  %589 = getelementptr inbounds i16* %579, i64 %indvars.iv103
  %590 = load i16* %589, align 2, !tbaa !29
  %591 = zext i16 %590 to i64
  %592 = getelementptr inbounds %struct.t_sdconst* %580, i64 %591, i32 1
  %593 = load float* %592, align 4, !tbaa !10
  %594 = fmul float %588, %593
  %595 = sub nsw i64 %indvars.iv103, %583
  br label %596

; <label>:596                                     ; preds = %596, %585
  %indvars.iv100 = phi i64 [ 0, %585 ], [ %indvars.iv.next101, %596 ]
  %597 = getelementptr inbounds [3 x float]* %581, i64 %indvars.iv103, i64 %indvars.iv100
  %598 = load float* %597, align 4, !tbaa !6
  %599 = getelementptr inbounds [3 x float]* %582, i64 %595, i64 %indvars.iv100
  %600 = load float* %599, align 4, !tbaa !6
  %601 = fsub float %598, %600
  %602 = fmul float %594, %601
  %603 = getelementptr inbounds [3 x float]* %delta_f, i64 %indvars.iv103, i64 %indvars.iv100
  store float %602, float* %603, align 4, !tbaa !6
  %indvars.iv.next101 = add nuw nsw i64 %indvars.iv100, 1
  %exitcond102 = icmp eq i64 %indvars.iv.next101, 3
  br i1 %exitcond102, label %604, label %596

; <label>:604                                     ; preds = %596
  %indvars.iv.next104 = add nsw i64 %indvars.iv103, 1
  %605 = icmp slt i64 %indvars.iv.next104, %584
  br i1 %605, label %585, label %.loopexit36

.loopexit36:                                      ; preds = %604, %._crit_edge65, %._crit_edge65.thread, %522
  %606 = load [3 x float]** %523, align 8, !tbaa !54
  %607 = load [3 x i32]** %525, align 8, !tbaa !55
  %608 = load float** %527, align 8, !tbaa !56
  %609 = load i16** %529, align 8, !tbaa !57
  %610 = load i16** %531, align 8, !tbaa !58
  %611 = load i16** %533, align 8, !tbaa !25
  %612 = load i16** %535, align 8, !tbaa !27
  %613 = load [3 x float]** @update.xprime, align 8, !tbaa !2
  %614 = load i32* %538, align 4, !tbaa !49
  %615 = load float** %540, align 8, !tbaa !61
  %616 = load float** %542, align 8, !tbaa !62
  call fastcc void @do_update_sd(i32 %start, i32 %homenr, [3 x float]* %606, [3 x i32]* %607, float* %608, i16* %609, i16* %610, i16* %611, i16* %612, float %SAfactor, [3 x float]* %x, [3 x float]* %613, [3 x float]* %v, [3 x float]* %vold, [3 x float]* %force, i32 %614, float* %615, float* %616, i32* %544, i32 0) #8
  br label %do_update_bd.exit

; <label>:617                                     ; preds = %108
  %618 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 80, i32 8
  %619 = load [3 x i32]** %618, align 8, !tbaa !55
  %620 = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 5
  %621 = load float** %620, align 8, !tbaa !56
  %622 = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 13
  %623 = load i16** %622, align 8, !tbaa !57
  %624 = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 17
  %625 = load i16** %624, align 8, !tbaa !58
  %626 = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 14
  %627 = load i16** %626, align 8, !tbaa !27
  %628 = load [3 x float]** @update.xprime, align 8, !tbaa !2
  %629 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 68
  %630 = load float* %629, align 4, !tbaa !63
  %631 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 69
  %632 = load float* %631, align 4, !tbaa !64
  %633 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 80, i32 0
  %634 = load i32* %633, align 4, !tbaa !49
  %635 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 80, i32 5
  %636 = load float** %635, align 8, !tbaa !62
  %637 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 70
  %638 = fpext float %632 to double
  %fabsf.i = call float @fabsf(float %632) #3
  %639 = fpext float %fabsf.i to double
  %640 = fcmp ogt double %639, 1.200000e-38
  %641 = load float** @do_update_bd.rf, align 8, !tbaa !2
  %642 = icmp eq float* %641, null
  br i1 %642, label %643, label %646

; <label>:643                                     ; preds = %617
  %644 = call i8* @save_calloc(i8* getelementptr inbounds ([3 x i8]* @.str19, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str1, i64 0, i64 0), i32 399, i32 %634, i32 4) #6
  store i8* %644, i8** bitcast (float** @do_update_bd.rf to i8**), align 8, !tbaa !2
  %645 = bitcast i8* %644 to float*
  br label %646

; <label>:646                                     ; preds = %643, %617
  %647 = phi float* [ %645, %643 ], [ %641, %617 ]
  br i1 %640, label %650, label %.preheader.i

.preheader.i:                                     ; preds = %646
  %648 = icmp sgt i32 %634, 0
  br i1 %648, label %.lr.ph4.i, label %.loopexit.i

.lr.ph4.i:                                        ; preds = %.preheader.i
  %649 = add i32 %634, -1
  br label %658

; <label>:650                                     ; preds = %646
  %651 = fpext float %630 to double
  %652 = fmul double %651, 0x3F910732CDE67DC4
  %653 = fmul double %45, %638
  %654 = fdiv double %652, %653
  %655 = call double @sqrt(double %654) #7
  %656 = fptrunc double %655 to float
  %657 = fdiv float 1.000000e+00, %632
  br label %.loopexit.i

; <label>:658                                     ; preds = %658, %.lr.ph4.i
  %indvars.iv8.i = phi i64 [ 0, %.lr.ph4.i ], [ %indvars.iv.next9.i, %658 ]
  %659 = getelementptr inbounds float* %636, i64 %indvars.iv8.i
  %660 = load float* %659, align 4, !tbaa !6
  %661 = fpext float %660 to double
  %662 = fmul double %661, 0x3F910732CDE67DC4
  %663 = call double @sqrt(double %662) #7
  %664 = fptrunc double %663 to float
  %665 = getelementptr inbounds float* %647, i64 %indvars.iv8.i
  store float %664, float* %665, align 4, !tbaa !6
  %indvars.iv.next9.i = add nuw nsw i64 %indvars.iv8.i, 1
  %lftr.wideiv108 = trunc i64 %indvars.iv8.i to i32
  %exitcond109 = icmp eq i32 %lftr.wideiv108, %649
  br i1 %exitcond109, label %.loopexit.i, label %658

.loopexit.i:                                      ; preds = %658, %650, %.preheader.i
  %rfac.0.i = phi float [ %656, %650 ], [ 0.000000e+00, %.preheader.i ], [ 0.000000e+00, %658 ]
  %invfr.0.i = phi float [ %657, %650 ], [ 0.000000e+00, %.preheader.i ], [ 0.000000e+00, %658 ]
  %666 = call float @rando(i32* %637) #6
  %667 = icmp sgt i32 %homenr, 0
  br i1 %667, label %.lr.ph.i, label %do_update_bd.exit

.lr.ph.i:                                         ; preds = %.loopexit.i
  %668 = add nsw i32 %homenr, %start
  %669 = fmul float %666, 6.553500e+04
  %670 = fptoui float %669 to i64
  %671 = load float** @do_update_bd.rf, align 8, !tbaa !2
  %672 = sext i32 %start to i64
  %673 = sext i32 %668 to i64
  br label %674

; <label>:674                                     ; preds = %780, %.lr.ph.i
  %indvars.iv6.i = phi i64 [ %672, %.lr.ph.i ], [ %indvars.iv.next7.i, %780 ]
  %675 = phi i64 [ %670, %.lr.ph.i ], [ %779, %780 ]
  %676 = getelementptr inbounds i16* %625, i64 %indvars.iv6.i
  %677 = load i16* %676, align 2, !tbaa !29
  %678 = getelementptr inbounds i16* %627, i64 %indvars.iv6.i
  %679 = load i16* %678, align 2, !tbaa !29
  %680 = getelementptr inbounds i16* %623, i64 %indvars.iv6.i
  %681 = load i16* %680, align 2, !tbaa !29
  %682 = zext i16 %677 to i64
  %683 = getelementptr inbounds float* %621, i64 %indvars.iv6.i
  %684 = zext i16 %679 to i64
  %685 = getelementptr inbounds float* %671, i64 %684
  br label %686

; <label>:686                                     ; preds = %778, %674
  %indvars.iv.i = phi i64 [ 0, %674 ], [ %indvars.iv.next.i, %778 ]
  %687 = phi i64 [ %675, %674 ], [ %779, %778 ]
  %688 = getelementptr inbounds [3 x float]* %v, i64 %indvars.iv6.i, i64 %indvars.iv.i
  %689 = bitcast float* %688 to i32*
  %690 = load i32* %689, align 4, !tbaa !6
  %691 = getelementptr inbounds [3 x float]* %vold, i64 %indvars.iv6.i, i64 %indvars.iv.i
  %692 = bitcast float* %691 to i32*
  store i32 %690, i32* %692, align 4, !tbaa !6
  switch i16 %681, label %693 [
    i16 4, label %772
    i16 2, label %772
  ]

; <label>:693                                     ; preds = %686
  %694 = getelementptr inbounds [3 x i32]* %619, i64 %682, i64 %indvars.iv.i
  %695 = load i32* %694, align 4, !tbaa !32
  %696 = icmp eq i32 %695, 0
  br i1 %696, label %697, label %772

; <label>:697                                     ; preds = %693
  %698 = getelementptr inbounds [3 x float]* %force, i64 %indvars.iv6.i, i64 %indvars.iv.i
  %699 = load float* %698, align 4
  br i1 %640, label %700, label %726

; <label>:700                                     ; preds = %697
  %701 = fmul float %invfr.0.i, %699
  %702 = mul i64 %687, 1093
  %703 = add i64 %702, 18257
  %704 = and i64 %703, 65535
  %705 = uitofp i64 %704 to float
  %706 = mul nuw nsw i64 %704, 1093
  %707 = add nuw nsw i64 %706, 18257
  %708 = and i64 %707, 65535
  %709 = uitofp i64 %708 to float
  %710 = fadd float %705, %709
  %711 = mul nuw nsw i64 %708, 1093
  %712 = add nuw nsw i64 %711, 18257
  %713 = and i64 %712, 65535
  %714 = uitofp i64 %713 to float
  %715 = fadd float %710, %714
  %716 = mul nuw nsw i64 %713, 1093
  %717 = add nuw nsw i64 %716, 18257
  %718 = and i64 %717, 65535
  %719 = uitofp i64 %718 to float
  %720 = fadd float %715, %719
  %721 = fmul float %720, 0x3EF0001000000000
  %722 = fadd float %721, -2.000000e+00
  %723 = fmul float %722, 0x3FFBB67AE0000000
  %724 = fmul float %rfac.0.i, %723
  %725 = fadd float %724, %701
  br label %762

; <label>:726                                     ; preds = %697
  %727 = load float* %683, align 4, !tbaa !6
  %728 = fmul float %699, %727
  %729 = fpext float %728 to double
  %730 = fmul double %45, %729
  %731 = fpext float %727 to double
  %732 = call double @sqrt(double %731) #7
  %733 = load float* %685, align 4, !tbaa !6
  %734 = fpext float %733 to double
  %735 = fmul double %732, %734
  %736 = mul i64 %687, 1093
  %737 = add i64 %736, 18257
  %738 = and i64 %737, 65535
  %739 = uitofp i64 %738 to float
  %740 = mul nuw nsw i64 %738, 1093
  %741 = add nuw nsw i64 %740, 18257
  %742 = and i64 %741, 65535
  %743 = uitofp i64 %742 to float
  %744 = fadd float %739, %743
  %745 = mul nuw nsw i64 %742, 1093
  %746 = add nuw nsw i64 %745, 18257
  %747 = and i64 %746, 65535
  %748 = uitofp i64 %747 to float
  %749 = fadd float %744, %748
  %750 = mul nuw nsw i64 %747, 1093
  %751 = add nuw nsw i64 %750, 18257
  %752 = and i64 %751, 65535
  %753 = uitofp i64 %752 to float
  %754 = fadd float %749, %753
  %755 = fmul float %754, 0x3EF0001000000000
  %756 = fadd float %755, -2.000000e+00
  %757 = fmul float %756, 0x3FFBB67AE0000000
  %758 = fpext float %757 to double
  %759 = fmul double %758, %735
  %760 = fadd double %730, %759
  %761 = fptrunc double %760 to float
  br label %762

; <label>:762                                     ; preds = %726, %700
  %763 = phi i64 [ %718, %700 ], [ %752, %726 ]
  %vn.0.i = phi float [ %725, %700 ], [ %761, %726 ]
  store float %vn.0.i, float* %688, align 4, !tbaa !6
  %764 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv6.i, i64 %indvars.iv.i
  %765 = load float* %764, align 4, !tbaa !6
  %766 = fpext float %765 to double
  %767 = fpext float %vn.0.i to double
  %768 = fmul double %45, %767
  %769 = fadd double %766, %768
  %770 = fptrunc double %769 to float
  %771 = getelementptr inbounds [3 x float]* %628, i64 %indvars.iv6.i, i64 %indvars.iv.i
  store float %770, float* %771, align 4, !tbaa !6
  br label %778

; <label>:772                                     ; preds = %693, %686, %686
  store float 0.000000e+00, float* %688, align 4, !tbaa !6
  %773 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv6.i, i64 %indvars.iv.i
  %774 = bitcast float* %773 to i32*
  %775 = load i32* %774, align 4, !tbaa !6
  %776 = getelementptr inbounds [3 x float]* %628, i64 %indvars.iv6.i, i64 %indvars.iv.i
  %777 = bitcast float* %776 to i32*
  store i32 %775, i32* %777, align 4, !tbaa !6
  br label %778

; <label>:778                                     ; preds = %772, %762
  %779 = phi i64 [ %763, %762 ], [ %687, %772 ]
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %exitcond.i = icmp eq i64 %indvars.iv.next.i, 3
  br i1 %exitcond.i, label %780, label %686

; <label>:780                                     ; preds = %778
  %indvars.iv.next7.i = add nsw i64 %indvars.iv6.i, 1
  %781 = icmp slt i64 %indvars.iv.next7.i, %673
  br i1 %781, label %674, label %do_update_bd.exit

; <label>:782                                     ; preds = %108
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([37 x i8]* @.str7, i64 0, i64 0)) #6
  br label %do_update_bd.exit

do_update_bd.exit:                                ; preds = %780, %.loopexit.i, %.loopexit36, %782, %do_update_md.exit, %do_update_visc.exit
  call void @_where(i8* getelementptr inbounds ([66 x i8]* @.str1, i64 0, i64 0), i32 727) #6
  %783 = sitofp i32 %homenr to double
  %784 = load i32* @update.bExtended, align 4, !tbaa !32
  %785 = icmp ne i32 %784, 0
  %786 = select i1 %785, i64 109, i64 108
  %787 = getelementptr inbounds %struct.t_nrnb* %nrnb, i64 0, i32 0, i64 %786
  %788 = load double* %787, align 8, !tbaa !35
  %789 = fadd double %783, %788
  store double %789, double* %787, align 8, !tbaa !35
  br label %.loopexit40

; <label>:790                                     ; preds = %.lr.ph71, %790
  %indvars.iv112 = phi i64 [ %76, %.lr.ph71 ], [ %indvars.iv.next113, %790 ]
  %791 = getelementptr inbounds [3 x float]* %v, i64 %indvars.iv112, i64 0
  %792 = getelementptr inbounds [3 x float]* %75, i64 %indvars.iv112, i64 0
  %793 = bitcast float* %791 to i32*
  %794 = load i32* %793, align 4, !tbaa !6
  %795 = bitcast float* %792 to i32*
  store i32 %794, i32* %795, align 4, !tbaa !6
  %796 = getelementptr inbounds [3 x float]* %v, i64 %indvars.iv112, i64 1
  %797 = bitcast float* %796 to i32*
  %798 = load i32* %797, align 4, !tbaa !6
  %799 = getelementptr inbounds [3 x float]* %75, i64 %indvars.iv112, i64 1
  %800 = bitcast float* %799 to i32*
  store i32 %798, i32* %800, align 4, !tbaa !6
  %801 = getelementptr inbounds [3 x float]* %v, i64 %indvars.iv112, i64 2
  %802 = bitcast float* %801 to i32*
  %803 = load i32* %802, align 4, !tbaa !6
  %804 = getelementptr inbounds [3 x float]* %75, i64 %indvars.iv112, i64 2
  %805 = bitcast float* %804 to i32*
  store i32 %803, i32* %805, align 4, !tbaa !6
  %indvars.iv.next113 = add nsw i64 %indvars.iv112, 1
  %806 = icmp slt i64 %indvars.iv.next113, %77
  br i1 %806, label %790, label %.loopexit40

.loopexit40:                                      ; preds = %790, %.preheader39, %do_update_bd.exit
  %807 = load i32* @update.bHaveConstr, align 4, !tbaa !32
  %808 = icmp eq i32 %807, 0
  br i1 %808, label %902, label %809

; <label>:809                                     ; preds = %.loopexit40
  %810 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 0
  %811 = load i32* %810, align 4, !tbaa !39
  %812 = icmp ne i32 %811, 4
  %813 = icmp sgt i32 %homenr, 0
  %or.cond116 = and i1 %812, %813
  br i1 %or.cond116, label %.lr.ph58, label %.loopexit33

.lr.ph58:                                         ; preds = %809
  %814 = add nsw i32 %homenr, %start
  %815 = load [3 x float]** @update.xprime, align 8, !tbaa !2
  %816 = load [3 x float]** @update.x_unc, align 8, !tbaa !2
  %817 = sext i32 %start to i64
  %818 = sext i32 %814 to i64
  br label %819

; <label>:819                                     ; preds = %.lr.ph58, %819
  %indvars.iv95 = phi i64 [ %817, %.lr.ph58 ], [ %indvars.iv.next96, %819 ]
  %820 = getelementptr inbounds [3 x float]* %815, i64 %indvars.iv95, i64 0
  %821 = sub nsw i64 %indvars.iv95, %817
  %822 = getelementptr inbounds [3 x float]* %816, i64 %821, i64 0
  %823 = bitcast float* %820 to i32*
  %824 = load i32* %823, align 4, !tbaa !6
  %825 = bitcast float* %822 to i32*
  store i32 %824, i32* %825, align 4, !tbaa !6
  %826 = getelementptr inbounds [3 x float]* %815, i64 %indvars.iv95, i64 1
  %827 = bitcast float* %826 to i32*
  %828 = load i32* %827, align 4, !tbaa !6
  %829 = getelementptr inbounds [3 x float]* %816, i64 %821, i64 1
  %830 = bitcast float* %829 to i32*
  store i32 %828, i32* %830, align 4, !tbaa !6
  %831 = getelementptr inbounds [3 x float]* %815, i64 %indvars.iv95, i64 2
  %832 = bitcast float* %831 to i32*
  %833 = load i32* %832, align 4, !tbaa !6
  %834 = getelementptr inbounds [3 x float]* %816, i64 %821, i64 2
  %835 = bitcast float* %834 to i32*
  store i32 %833, i32* %835, align 4, !tbaa !6
  %indvars.iv.next96 = add nsw i64 %indvars.iv95, 1
  %836 = icmp slt i64 %indvars.iv.next96, %818
  br i1 %836, label %819, label %.loopexit33

.loopexit33:                                      ; preds = %819, %809
  %837 = load %struct.__sFILE** @stdlog, align 8, !tbaa !2
  %838 = load [3 x float]** @update.xprime, align 8, !tbaa !2
  %839 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 1, i64 0
  %840 = call i32 @constrain(%struct.__sFILE* %837, %struct.t_topology* %top, %struct.t_inputrec* %2, i32 %step, %struct.t_mdatoms* %md, i32 %start, i32 %homenr, [3 x float]* %x, [3 x float]* %838, [3 x float]* null, [3 x float]* %839, float %lambda, float* %dvdlambda, %struct.t_nrnb* %nrnb, i32 1) #6
  call void @_where(i8* getelementptr inbounds ([66 x i8]* @.str1, i64 0, i64 0), i32 762) #6
  %841 = getelementptr inbounds %struct.t_edsamyn* %edyn, i64 0, i32 0
  %842 = load i32* %841, align 4, !tbaa !46
  %843 = icmp eq i32 %842, 0
  br i1 %843, label %848, label %844

; <label>:844                                     ; preds = %.loopexit33
  %845 = load %struct.__sFILE** @stdlog, align 8, !tbaa !2
  %846 = load [3 x float]** @update.xprime, align 8, !tbaa !2
  %847 = load [3 x float]** @update.x_unc, align 8, !tbaa !2
  call void @do_edsam(%struct.__sFILE* %845, %struct.t_topology* %top, %struct.t_inputrec* %2, i32 %step, %struct.t_mdatoms* %md, i32 %start, i32 %homenr, [3 x float]* %846, [3 x float]* %x, [3 x float]* %847, [3 x float]* %force, [3 x float]* %839, %struct.t_edsamyn* %edyn, %struct.t_edpar* @update.edpar, i32 %bDoUpdate) #6
  br label %848

; <label>:848                                     ; preds = %.loopexit33, %844
  %849 = getelementptr inbounds %struct.t_pull* %pulldata, i64 0, i32 16
  %850 = load i32* %849, align 4, !tbaa !41
  %851 = icmp eq i32 %850, 0
  br i1 %851, label %857, label %852

; <label>:852                                     ; preds = %848
  %853 = getelementptr inbounds %struct.t_pull* %pulldata, i64 0, i32 3
  %854 = load i32* %853, align 4, !tbaa !65
  switch i32 %854, label %855 [
    i32 1, label %857
    i32 3, label %857
    i32 4, label %857
  ]

; <label>:855                                     ; preds = %852
  %856 = load [3 x float]** @update.xprime, align 8, !tbaa !2
  call void @pull(%struct.t_pull* %pulldata, [3 x float]* %856, [3 x float]* %force, [3 x float]* %839, %struct.t_topology* %top, float %44, i32 %step, i32 %homenr, %struct.t_mdatoms* %md) #6
  br label %857

; <label>:857                                     ; preds = %852, %852, %852, %848, %855
  call void @_where(i8* getelementptr inbounds ([66 x i8]* @.str1, i64 0, i64 0), i32 779) #6
  br i1 %72, label %858, label %902

; <label>:858                                     ; preds = %857
  %859 = load i32* %810, align 4, !tbaa !39
  %860 = icmp eq i32 %859, 4
  br i1 %860, label %890, label %.preheader31

.preheader31:                                     ; preds = %858
  %861 = icmp sgt i32 %homenr, 0
  br i1 %861, label %.lr.ph55, label %._crit_edge56

.lr.ph55:                                         ; preds = %.preheader31
  %862 = add nsw i32 %homenr, %start
  %863 = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 4
  %864 = load float** %863, align 8, !tbaa !28
  %865 = load [3 x float]** @update.xprime, align 8, !tbaa !2
  %866 = load [3 x float]** @update.x_unc, align 8, !tbaa !2
  %867 = sext i32 %start to i64
  %868 = sext i32 %862 to i64
  br label %869

; <label>:869                                     ; preds = %.lr.ph55, %888
  %indvars.iv93 = phi i64 [ %867, %.lr.ph55 ], [ %indvars.iv.next94, %888 ]
  %870 = getelementptr inbounds float* %864, i64 %indvars.iv93
  %871 = load float* %870, align 4, !tbaa !6
  %872 = fmul float %49, %871
  %873 = sub nsw i64 %indvars.iv93, %867
  br label %874

; <label>:874                                     ; preds = %874, %869
  %indvars.iv90 = phi i64 [ 0, %869 ], [ %indvars.iv.next91, %874 ]
  %875 = getelementptr inbounds [3 x float]* %865, i64 %indvars.iv93, i64 %indvars.iv90
  %876 = load float* %875, align 4, !tbaa !6
  %877 = getelementptr inbounds [3 x float]* %866, i64 %873, i64 %indvars.iv90
  %878 = load float* %877, align 4, !tbaa !6
  %879 = fsub float %876, %878
  %880 = fmul float %872, %879
  %881 = getelementptr inbounds [3 x float]* %delta_f, i64 %indvars.iv93, i64 %indvars.iv90
  store float %880, float* %881, align 4, !tbaa !6
  %882 = load float* %875, align 4, !tbaa !6
  %883 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv93, i64 %indvars.iv90
  %884 = load float* %883, align 4, !tbaa !6
  %885 = fsub float %882, %884
  %886 = fmul float %46, %885
  %887 = getelementptr inbounds [3 x float]* %v, i64 %indvars.iv93, i64 %indvars.iv90
  store float %886, float* %887, align 4, !tbaa !6
  %indvars.iv.next91 = add nuw nsw i64 %indvars.iv90, 1
  %exitcond92 = icmp eq i64 %indvars.iv.next91, 3
  br i1 %exitcond92, label %888, label %874

; <label>:888                                     ; preds = %874
  %indvars.iv.next94 = add nsw i64 %indvars.iv93, 1
  %889 = icmp slt i64 %indvars.iv.next94, %868
  br i1 %889, label %869, label %._crit_edge56

._crit_edge56:                                    ; preds = %888, %.preheader31
  call void @_where(i8* getelementptr inbounds ([66 x i8]* @.str1, i64 0, i64 0), i32 792) #6
  br label %890

; <label>:890                                     ; preds = %858, %._crit_edge56
  %891 = sitofp i32 %homenr to double
  %892 = getelementptr inbounds %struct.t_nrnb* %nrnb, i64 0, i32 0, i64 116
  %893 = load double* %892, align 8, !tbaa !35
  %894 = fadd double %891, %893
  store double %894, double* %892, align 8, !tbaa !35
  call void @_where(i8* getelementptr inbounds ([66 x i8]* @.str1, i64 0, i64 0), i32 799) #6
  %895 = load %struct.__sFILE** @stdlog, align 8, !tbaa !2
  %896 = sext i32 %start to i64
  %897 = getelementptr inbounds [3 x float]* %x, i64 %896
  %898 = getelementptr inbounds [3 x float]* %delta_f, i64 %896
  call void @calc_vir(%struct.__sFILE* %895, i32 %homenr, [3 x float]* %897, [3 x float]* %898, [3 x float]* %vir_part) #6
  %899 = getelementptr inbounds %struct.t_nrnb* %nrnb, i64 0, i32 0, i64 118
  %900 = load double* %899, align 8, !tbaa !35
  %901 = fadd double %891, %900
  store double %901, double* %899, align 8, !tbaa !35
  call void @_where(i8* getelementptr inbounds ([66 x i8]* @.str1, i64 0, i64 0), i32 804) #6
  br label %902

; <label>:902                                     ; preds = %.loopexit40, %857, %890
  call void @_where(i8* getelementptr inbounds ([66 x i8]* @.str1, i64 0, i64 0), i32 810) #6
  %903 = getelementptr inbounds %struct.t_graph* %graph, i64 0, i32 1
  %904 = load i32* %903, align 4, !tbaa !66
  %905 = icmp sgt i32 %904, 0
  %or.cond = and i1 %72, %905
  br i1 %or.cond, label %911, label %.preheader27

.preheader27:                                     ; preds = %911, %902
  %906 = icmp sgt i32 %homenr, 0
  br i1 %906, label %.lr.ph46, label %.loopexit28

.lr.ph46:                                         ; preds = %.preheader27
  %907 = add nsw i32 %homenr, %start
  %908 = load [3 x float]** @update.xprime, align 8, !tbaa !2
  %909 = sext i32 %start to i64
  %910 = sext i32 %907 to i64
  br label %991

; <label>:911                                     ; preds = %902
  %912 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 25
  %913 = load i32* %912, align 4, !tbaa !68
  %914 = icmp eq i32 %913, 1
  br i1 %914, label %.preheader27, label %915

; <label>:915                                     ; preds = %911
  %916 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 1, i64 0
  %917 = load [3 x float]** @update.xprime, align 8, !tbaa !2
  call void @unshift_x(%struct.t_graph* %graph, [3 x float]* %916, [3 x float]* %x, [3 x float]* %917) #6
  %918 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 1, i64 1, i64 0
  %919 = load float* %918, align 4, !tbaa !6
  %fabsf = call float @fabsf(float %919) #3
  %920 = fpext float %fabsf to double
  %921 = fcmp ogt double %920, 1.200000e-38
  br i1 %921, label %932, label %922

; <label>:922                                     ; preds = %915
  %923 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 1, i64 2, i64 0
  %924 = load float* %923, align 4, !tbaa !6
  %fabsf2 = call float @fabsf(float %924) #3
  %925 = fpext float %fabsf2 to double
  %926 = fcmp ogt double %925, 1.200000e-38
  br i1 %926, label %932, label %927

; <label>:927                                     ; preds = %922
  %928 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 1, i64 2, i64 1
  %929 = load float* %928, align 4, !tbaa !6
  %fabsf3 = call float @fabsf(float %929) #3
  %930 = fpext float %fabsf3 to double
  %931 = fcmp ogt double %930, 1.200000e-38
  br i1 %931, label %932, label %939

; <label>:932                                     ; preds = %927, %922, %915
  %933 = load i32* %903, align 4, !tbaa !66
  %934 = shl nsw i32 %933, 1
  %935 = sitofp i32 %934 to double
  %936 = getelementptr inbounds %struct.t_nrnb* %nrnb, i64 0, i32 0, i64 89
  %937 = load double* %936, align 8, !tbaa !35
  %938 = fadd double %937, %935
  store double %938, double* %936, align 8, !tbaa !35
  br label %.preheader30

; <label>:939                                     ; preds = %927
  %940 = load i32* %903, align 4, !tbaa !66
  %941 = sitofp i32 %940 to double
  %942 = getelementptr inbounds %struct.t_nrnb* %nrnb, i64 0, i32 0, i64 89
  %943 = load double* %942, align 8, !tbaa !35
  %944 = fadd double %943, %941
  store double %944, double* %942, align 8, !tbaa !35
  br label %.preheader30

.preheader30:                                     ; preds = %939, %932
  %945 = phi i32 [ %940, %939 ], [ %933, %932 ]
  %946 = getelementptr inbounds %struct.t_graph* %graph, i64 0, i32 3
  %947 = load i32* %946, align 4, !tbaa !69
  %948 = icmp sgt i32 %947, %start
  br i1 %948, label %.lr.ph51, label %._crit_edge52

.lr.ph51:                                         ; preds = %.preheader30
  %949 = load [3 x float]** @update.xprime, align 8, !tbaa !2
  %950 = sext i32 %start to i64
  %951 = sext i32 %947 to i64
  br label %952

; <label>:952                                     ; preds = %.lr.ph51, %952
  %indvars.iv88 = phi i64 [ %950, %.lr.ph51 ], [ %indvars.iv.next89, %952 ]
  %953 = getelementptr inbounds [3 x float]* %949, i64 %indvars.iv88, i64 0
  %954 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv88, i64 0
  %955 = bitcast float* %953 to i32*
  %956 = load i32* %955, align 4, !tbaa !6
  %957 = bitcast float* %954 to i32*
  store i32 %956, i32* %957, align 4, !tbaa !6
  %958 = getelementptr inbounds [3 x float]* %949, i64 %indvars.iv88, i64 1
  %959 = bitcast float* %958 to i32*
  %960 = load i32* %959, align 4, !tbaa !6
  %961 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv88, i64 1
  %962 = bitcast float* %961 to i32*
  store i32 %960, i32* %962, align 4, !tbaa !6
  %963 = getelementptr inbounds [3 x float]* %949, i64 %indvars.iv88, i64 2
  %964 = bitcast float* %963 to i32*
  %965 = load i32* %964, align 4, !tbaa !6
  %966 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv88, i64 2
  %967 = bitcast float* %966 to i32*
  store i32 %965, i32* %967, align 4, !tbaa !6
  %indvars.iv.next89 = add nsw i64 %indvars.iv88, 1
  %968 = icmp slt i64 %indvars.iv.next89, %951
  br i1 %968, label %952, label %._crit_edge52

._crit_edge52:                                    ; preds = %952, %.preheader30
  %969 = add i32 %945, %947
  %970 = add i32 %homenr, %start
  %971 = icmp slt i32 %969, %970
  br i1 %971, label %.lr.ph49, label %.loopexit28

.lr.ph49:                                         ; preds = %._crit_edge52
  %972 = load [3 x float]** @update.xprime, align 8, !tbaa !2
  %973 = sext i32 %969 to i64
  %974 = add i32 %970, -1
  br label %975

; <label>:975                                     ; preds = %975, %.lr.ph49
  %indvars.iv84 = phi i64 [ %973, %.lr.ph49 ], [ %indvars.iv.next85, %975 ]
  %976 = getelementptr inbounds [3 x float]* %972, i64 %indvars.iv84, i64 0
  %977 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv84, i64 0
  %978 = bitcast float* %976 to i32*
  %979 = load i32* %978, align 4, !tbaa !6
  %980 = bitcast float* %977 to i32*
  store i32 %979, i32* %980, align 4, !tbaa !6
  %981 = getelementptr inbounds [3 x float]* %972, i64 %indvars.iv84, i64 1
  %982 = bitcast float* %981 to i32*
  %983 = load i32* %982, align 4, !tbaa !6
  %984 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv84, i64 1
  %985 = bitcast float* %984 to i32*
  store i32 %983, i32* %985, align 4, !tbaa !6
  %986 = getelementptr inbounds [3 x float]* %972, i64 %indvars.iv84, i64 2
  %987 = bitcast float* %986 to i32*
  %988 = load i32* %987, align 4, !tbaa !6
  %989 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv84, i64 2
  %990 = bitcast float* %989 to i32*
  store i32 %988, i32* %990, align 4, !tbaa !6
  %indvars.iv.next85 = add nsw i64 %indvars.iv84, 1
  %lftr.wideiv86 = trunc i64 %indvars.iv84 to i32
  %exitcond87 = icmp eq i32 %lftr.wideiv86, %974
  br i1 %exitcond87, label %.loopexit28, label %975

; <label>:991                                     ; preds = %.lr.ph46, %991
  %indvars.iv82 = phi i64 [ %909, %.lr.ph46 ], [ %indvars.iv.next83, %991 ]
  %992 = getelementptr inbounds [3 x float]* %908, i64 %indvars.iv82, i64 0
  %993 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv82, i64 0
  %994 = bitcast float* %992 to i32*
  %995 = load i32* %994, align 4, !tbaa !6
  %996 = bitcast float* %993 to i32*
  store i32 %995, i32* %996, align 4, !tbaa !6
  %997 = getelementptr inbounds [3 x float]* %908, i64 %indvars.iv82, i64 1
  %998 = bitcast float* %997 to i32*
  %999 = load i32* %998, align 4, !tbaa !6
  %1000 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv82, i64 1
  %1001 = bitcast float* %1000 to i32*
  store i32 %999, i32* %1001, align 4, !tbaa !6
  %1002 = getelementptr inbounds [3 x float]* %908, i64 %indvars.iv82, i64 2
  %1003 = bitcast float* %1002 to i32*
  %1004 = load i32* %1003, align 4, !tbaa !6
  %1005 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv82, i64 2
  %1006 = bitcast float* %1005 to i32*
  store i32 %1004, i32* %1006, align 4, !tbaa !6
  %indvars.iv.next83 = add nsw i64 %indvars.iv82, 1
  %1007 = icmp slt i64 %indvars.iv.next83, %910
  br i1 %1007, label %991, label %.loopexit28

.loopexit28:                                      ; preds = %975, %991, %._crit_edge52, %.preheader27
  call void @_where(i8* getelementptr inbounds ([66 x i8]* @.str1, i64 0, i64 0), i32 828) #6
  br i1 %72, label %1008, label %1029

; <label>:1008                                    ; preds = %.loopexit28
  %1009 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 80
  call void @update_grps(i32 %start, i32 %homenr, %struct.t_groups* %grps, %struct.t_grpopts* %1009, [3 x float]* %v, %struct.t_mdatoms* %md, i32 %bNEMD) #6
  %1010 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 28
  %1011 = load i32* %1010, align 4, !tbaa !45
  switch i32 %1011, label %.loopexit [
    i32 1, label %1012
    i32 2, label %.lr.ph
  ]

; <label>:1012                                    ; preds = %1008
  %1013 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 4, i64 0
  %1014 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 1, i64 0
  %1015 = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 17
  %1016 = load i16** %1015, align 8, !tbaa !58
  %1017 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 80, i32 8
  %1018 = load [3 x i32]** %1017, align 8, !tbaa !55
  call void @berendsen_pcoupl(%struct.t_inputrec* %2, i32 %step, [3 x float]* %1013, [3 x float]* %1014, i32 %start, i32 %homenr, [3 x float]* %x, i16* %1016, %struct.t_nrnb* %nrnb, [3 x i32]* %1018) #6
  br label %.loopexit

.lr.ph:                                           ; preds = %1008, %._crit_edge
  %indvars.iv79 = phi i64 [ %indvars.iv.next80, %._crit_edge ], [ 0, %1008 ]
  %indvars.iv77 = phi i32 [ %indvars.iv.next78, %._crit_edge ], [ 1, %1008 ]
  br label %1019

; <label>:1019                                    ; preds = %1019, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %1019 ], [ 0, %.lr.ph ]
  %1020 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 2, i64 %indvars.iv79, i64 %indvars.iv
  %1021 = load float* %1020, align 4, !tbaa !6
  %1022 = fpext float %1021 to double
  %1023 = fmul double %45, %1022
  %1024 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 1, i64 %indvars.iv79, i64 %indvars.iv
  %1025 = load float* %1024, align 4, !tbaa !6
  %1026 = fpext float %1025 to double
  %1027 = fadd double %1026, %1023
  %1028 = fptrunc double %1027 to float
  store float %1028, float* %1024, align 4, !tbaa !6
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %indvars.iv77
  br i1 %exitcond, label %._crit_edge, label %1019

._crit_edge:                                      ; preds = %1019
  %indvars.iv.next80 = add nuw nsw i64 %indvars.iv79, 1
  %indvars.iv.next78 = add nuw nsw i32 %indvars.iv77, 1
  %exitcond81 = icmp eq i64 %indvars.iv.next80, 3
  br i1 %exitcond81, label %.loopexit, label %.lr.ph

.loopexit:                                        ; preds = %._crit_edge, %1008, %1012
  call void @_where(i8* getelementptr inbounds ([66 x i8]* @.str1, i64 0, i64 0), i32 844) #6
  br label %1029

; <label>:1029                                    ; preds = %.loopexit, %.loopexit28
  call void @llvm.lifetime.end(i64 36, i8* %1) #5
  ret void
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #5

; Function Attrs: optsize
declare i32 @init_constraints(%struct.__sFILE*, %struct.t_topology*, %struct.t_inputrec*, %struct.t_mdatoms*, i32, i32, i32, %struct.t_commrec*) #2

; Function Attrs: optsize
declare void @init_edsam(%struct.__sFILE*, %struct.t_topology*, %struct.t_mdatoms*, i32, i32, [3 x float]*, [3 x float]*, %struct.t_edsamyn*, %struct.t_edpar*) #2

; Function Attrs: optsize
declare void @parrinellorahman_pcoupl(%struct.t_inputrec*, i32, [3 x float]*, [3 x float]*, [3 x float]*, [3 x float]*) #2

; Function Attrs: optsize
declare void @_where(i8*, i32) #2

; Function Attrs: nounwind optsize ssp uwtable
define internal fastcc void @do_update_sd(i32 %start, i32 %homenr, [3 x float]* nocapture readonly %accel, [3 x i32]* nocapture readonly %nFreeze, float* nocapture readonly %invmass, i16* nocapture readonly %ptype, i16* nocapture readonly %cFREEZE, i16* nocapture readonly %cACC, i16* nocapture readonly %cTC, float %SAfactor, [3 x float]* nocapture readonly %x, [3 x float]* nocapture %xprime, [3 x float]* nocapture %v, [3 x float]* nocapture %vold, [3 x float]* nocapture readonly %f, i32 %ngtc, float* nocapture readonly %tau_t, float* nocapture readonly %ref_t, i32* %seed, i32 %bFirstHalf) #1 {
  %1 = load %struct.t_sd_sigmas** @do_update_sd.sig, align 8, !tbaa !2
  %2 = icmp eq %struct.t_sd_sigmas* %1, null
  br i1 %2, label %3, label %7

; <label>:3                                       ; preds = %0
  %4 = tail call i8* @save_calloc(i8* getelementptr inbounds ([4 x i8]* @.str16, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str1, i64 0, i64 0), i32 309, i32 %ngtc, i32 16) #6
  store i8* %4, i8** bitcast (%struct.t_sd_sigmas** @do_update_sd.sig to i8**), align 8, !tbaa !2
  %5 = tail call i8* @save_calloc(i8* getelementptr inbounds ([2 x i8]* @.str17, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str1, i64 0, i64 0), i32 310, i32 %homenr, i32 12) #6
  store i8* %5, i8** bitcast ([3 x float]** @do_update_sd.X to i8**), align 8, !tbaa !2
  %6 = tail call i8* @save_calloc(i8* getelementptr inbounds ([2 x i8]* @.str18, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str1, i64 0, i64 0), i32 311, i32 %homenr, i32 12) #6
  store i8* %6, i8** bitcast ([3 x float]** @do_update_sd.V to i8**), align 8, !tbaa !2
  br label %7

; <label>:7                                       ; preds = %3, %0
  %8 = icmp ne i32 %bFirstHalf, 0
  %9 = icmp sgt i32 %ngtc, 0
  %or.cond = and i1 %8, %9
  br i1 %or.cond, label %.lr.ph10, label %.loopexit

.lr.ph10:                                         ; preds = %7
  %10 = fpext float %SAfactor to double
  %11 = fmul double %10, 0x3F810732CDE67DC4
  %12 = load %struct.t_sdconst** @sdc, align 8, !tbaa !2
  %13 = load %struct.t_sd_sigmas** @do_update_sd.sig, align 8, !tbaa !2
  %14 = add i32 %ngtc, -1
  br label %15

; <label>:15                                      ; preds = %15, %.lr.ph10
  %indvars.iv13 = phi i64 [ 0, %.lr.ph10 ], [ %indvars.iv.next14, %15 ]
  %16 = getelementptr inbounds float* %ref_t, i64 %indvars.iv13
  %17 = load float* %16, align 4, !tbaa !6
  %18 = fpext float %17 to double
  %19 = fmul double %11, %18
  %20 = fptrunc double %19 to float
  %21 = getelementptr inbounds %struct.t_sdconst* %12, i64 %indvars.iv13, i32 3
  %22 = load float* %21, align 4, !tbaa !12
  %23 = fsub float 1.000000e+00, %22
  %24 = fmul float %20, %23
  %sqrtf1 = tail call float @sqrtf(float %24) #3
  %25 = getelementptr inbounds %struct.t_sd_sigmas* %13, i64 %indvars.iv13, i32 0
  store float %sqrtf1, float* %25, align 4, !tbaa !70
  %26 = getelementptr inbounds float* %tau_t, i64 %indvars.iv13
  %27 = load float* %26, align 4, !tbaa !6
  %28 = fmul float %27, %27
  %29 = fmul float %20, %28
  %30 = getelementptr inbounds %struct.t_sdconst* %12, i64 %indvars.iv13, i32 5
  %31 = load float* %30, align 4, !tbaa !13
  %32 = fmul float %29, %31
  %sqrtf2 = tail call float @sqrtf(float %32) #3
  %33 = getelementptr inbounds %struct.t_sd_sigmas* %13, i64 %indvars.iv13, i32 1
  store float %sqrtf2, float* %33, align 4, !tbaa !72
  %34 = getelementptr inbounds %struct.t_sdconst* %12, i64 %indvars.iv13, i32 4
  %35 = load float* %34, align 4, !tbaa !15
  %36 = fmul float %20, %35
  %37 = fdiv float %36, %31
  %sqrtf3 = tail call float @sqrtf(float %37) #3
  %38 = getelementptr inbounds %struct.t_sd_sigmas* %13, i64 %indvars.iv13, i32 2
  store float %sqrtf3, float* %38, align 4, !tbaa !73
  %39 = load float* %26, align 4, !tbaa !6
  %40 = fmul float %39, %39
  %41 = fmul float %20, %40
  %42 = fmul float %41, %35
  %43 = fdiv float %42, %23
  %sqrtf4 = tail call float @sqrtf(float %43) #3
  %44 = getelementptr inbounds %struct.t_sd_sigmas* %13, i64 %indvars.iv13, i32 3
  store float %sqrtf4, float* %44, align 4, !tbaa !74
  %indvars.iv.next14 = add nuw nsw i64 %indvars.iv13, 1
  %lftr.wideiv = trunc i64 %indvars.iv13 to i32
  %exitcond15 = icmp eq i32 %lftr.wideiv, %14
  br i1 %exitcond15, label %.loopexit, label %15

.loopexit:                                        ; preds = %15, %7
  %45 = tail call float @rando(i32* %seed) #6
  %46 = icmp sgt i32 %homenr, 0
  br i1 %46, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.loopexit
  %47 = add nsw i32 %homenr, %start
  %48 = fmul float %45, 6.553500e+04
  %49 = fptoui float %48 to i64
  %.b = load i1* @do_update_sd.bFirst, align 1
  %50 = load [3 x float]** @do_update_sd.X, align 8, !tbaa !2
  %51 = load %struct.t_sdconst** @sdc, align 8, !tbaa !2
  %52 = load %struct.t_sd_sigmas** @do_update_sd.sig, align 8, !tbaa !2
  %53 = load [3 x float]** @do_update_sd.V, align 8, !tbaa !2
  %54 = sext i32 %start to i64
  %55 = sext i32 %47 to i64
  br label %56

; <label>:56                                      ; preds = %.lr.ph, %298
  %indvars.iv11 = phi i64 [ %54, %.lr.ph ], [ %indvars.iv.next12, %298 ]
  %vn.07 = phi float [ 0.000000e+00, %.lr.ph ], [ %vn.2, %298 ]
  %57 = phi i64 [ %49, %.lr.ph ], [ %297, %298 ]
  %58 = getelementptr inbounds float* %invmass, i64 %indvars.iv11
  %59 = load float* %58, align 4, !tbaa !6
  %sqrtf = tail call float @sqrtf(float %59) #3
  %60 = getelementptr inbounds i16* %cFREEZE, i64 %indvars.iv11
  %61 = load i16* %60, align 2, !tbaa !29
  %62 = getelementptr inbounds i16* %cACC, i64 %indvars.iv11
  %63 = load i16* %62, align 2, !tbaa !29
  %64 = getelementptr inbounds i16* %cTC, i64 %indvars.iv11
  %65 = load i16* %64, align 2, !tbaa !29
  %66 = getelementptr inbounds i16* %ptype, i64 %indvars.iv11
  %67 = load i16* %66, align 2, !tbaa !29
  %68 = zext i16 %61 to i64
  %69 = sub nsw i64 %indvars.iv11, %54
  %70 = zext i16 %65 to i64
  %71 = getelementptr inbounds %struct.t_sdconst* %51, i64 %70, i32 6
  %72 = getelementptr inbounds float* %tau_t, i64 %70
  %73 = getelementptr inbounds %struct.t_sdconst* %51, i64 %70, i32 5
  %74 = getelementptr inbounds %struct.t_sd_sigmas* %52, i64 %70, i32 2
  %75 = getelementptr inbounds %struct.t_sd_sigmas* %52, i64 %70, i32 0
  %76 = getelementptr inbounds %struct.t_sdconst* %51, i64 %70, i32 3
  %77 = zext i16 %63 to i64
  %78 = getelementptr inbounds %struct.t_sdconst* %51, i64 %70, i32 1
  %79 = getelementptr inbounds %struct.t_sdconst* %51, i64 %70, i32 2
  %80 = getelementptr inbounds %struct.t_sd_sigmas* %52, i64 %70, i32 1
  %81 = getelementptr inbounds %struct.t_sd_sigmas* %52, i64 %70, i32 3
  br label %82

; <label>:82                                      ; preds = %296, %56
  %indvars.iv = phi i64 [ 0, %56 ], [ %indvars.iv.next, %296 ]
  %vn.15 = phi float [ %vn.07, %56 ], [ %vn.2, %296 ]
  %83 = phi i64 [ %57, %56 ], [ %297, %296 ]
  br i1 %8, label %84, label %88

; <label>:84                                      ; preds = %82
  %85 = getelementptr inbounds [3 x float]* %v, i64 %indvars.iv11, i64 %indvars.iv
  %86 = load float* %85, align 4, !tbaa !6
  %87 = getelementptr inbounds [3 x float]* %vold, i64 %indvars.iv11, i64 %indvars.iv
  store float %86, float* %87, align 4, !tbaa !6
  br label %88

; <label>:88                                      ; preds = %84, %82
  %vn.2 = phi float [ %86, %84 ], [ %vn.15, %82 ]
  switch i16 %67, label %89 [
    i16 4, label %288
    i16 2, label %288
  ]

; <label>:89                                      ; preds = %88
  %90 = getelementptr inbounds [3 x i32]* %nFreeze, i64 %68, i64 %indvars.iv
  %91 = load i32* %90, align 4, !tbaa !32
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %288

; <label>:93                                      ; preds = %89
  br i1 %8, label %94, label %211

; <label>:94                                      ; preds = %93
  br i1 %.b, label %._crit_edge16, label %95

._crit_edge16:                                    ; preds = %94
  %.phi.trans.insert = getelementptr inbounds [3 x float]* %50, i64 %69, i64 %indvars.iv
  %.pre = load float* %.phi.trans.insert, align 4, !tbaa !6
  br label %122

; <label>:95                                      ; preds = %94
  %96 = load float* %80, align 4, !tbaa !72
  %97 = fmul float %sqrtf, %96
  %98 = mul i64 %83, 1093
  %99 = add i64 %98, 18257
  %100 = and i64 %99, 65535
  %101 = uitofp i64 %100 to float
  %102 = mul nuw nsw i64 %100, 1093
  %103 = add nuw nsw i64 %102, 18257
  %104 = and i64 %103, 65535
  %105 = uitofp i64 %104 to float
  %106 = fadd float %101, %105
  %107 = mul nuw nsw i64 %104, 1093
  %108 = add nuw nsw i64 %107, 18257
  %109 = and i64 %108, 65535
  %110 = uitofp i64 %109 to float
  %111 = fadd float %106, %110
  %112 = mul nuw nsw i64 %109, 1093
  %113 = add nuw nsw i64 %112, 18257
  %114 = and i64 %113, 65535
  %115 = uitofp i64 %114 to float
  %116 = fadd float %111, %115
  %117 = fmul float %116, 0x3EF0001000000000
  %118 = fadd float %117, -2.000000e+00
  %119 = fmul float %118, 0x3FFBB67AE0000000
  %120 = fmul float %119, %97
  %121 = getelementptr inbounds [3 x float]* %50, i64 %69, i64 %indvars.iv
  store float %120, float* %121, align 4, !tbaa !6
  br label %122

; <label>:122                                     ; preds = %._crit_edge16, %95
  %123 = phi float [ %.pre, %._crit_edge16 ], [ %120, %95 ]
  %124 = phi i64 [ %83, %._crit_edge16 ], [ %114, %95 ]
  %125 = load float* %71, align 4, !tbaa !14
  %126 = fmul float %123, %125
  %127 = load float* %72, align 4, !tbaa !6
  %128 = load float* %73, align 4, !tbaa !13
  %129 = fmul float %127, %128
  %130 = fdiv float %126, %129
  %131 = load float* %74, align 4, !tbaa !73
  %132 = fmul float %sqrtf, %131
  %133 = mul i64 %124, 1093
  %134 = add i64 %133, 18257
  %135 = and i64 %134, 65535
  %136 = uitofp i64 %135 to float
  %137 = mul nuw nsw i64 %135, 1093
  %138 = add nuw nsw i64 %137, 18257
  %139 = and i64 %138, 65535
  %140 = uitofp i64 %139 to float
  %141 = fadd float %136, %140
  %142 = mul nuw nsw i64 %139, 1093
  %143 = add nuw nsw i64 %142, 18257
  %144 = and i64 %143, 65535
  %145 = uitofp i64 %144 to float
  %146 = fadd float %141, %145
  %147 = mul nuw nsw i64 %144, 1093
  %148 = add nuw nsw i64 %147, 18257
  %149 = and i64 %148, 65535
  %150 = uitofp i64 %149 to float
  %151 = fadd float %146, %150
  %152 = fmul float %151, 0x3EF0001000000000
  %153 = fadd float %152, -2.000000e+00
  %154 = fmul float %153, 0x3FFBB67AE0000000
  %155 = fmul float %132, %154
  %156 = fadd float %130, %155
  %157 = load float* %75, align 4, !tbaa !70
  %158 = fmul float %sqrtf, %157
  %159 = mul nuw nsw i64 %149, 1093
  %160 = add nuw nsw i64 %159, 18257
  %161 = and i64 %160, 65535
  %162 = uitofp i64 %161 to float
  %163 = mul nuw nsw i64 %161, 1093
  %164 = add nuw nsw i64 %163, 18257
  %165 = and i64 %164, 65535
  %166 = uitofp i64 %165 to float
  %167 = fadd float %162, %166
  %168 = mul nuw nsw i64 %165, 1093
  %169 = add nuw nsw i64 %168, 18257
  %170 = and i64 %169, 65535
  %171 = uitofp i64 %170 to float
  %172 = fadd float %167, %171
  %173 = mul nuw nsw i64 %170, 1093
  %174 = add nuw nsw i64 %173, 18257
  %175 = and i64 %174, 65535
  %176 = uitofp i64 %175 to float
  %177 = fadd float %172, %176
  %178 = fmul float %177, 0x3EF0001000000000
  %179 = fadd float %178, -2.000000e+00
  %180 = fmul float %179, 0x3FFBB67AE0000000
  %181 = fmul float %158, %180
  %182 = getelementptr inbounds [3 x float]* %53, i64 %69, i64 %indvars.iv
  store float %181, float* %182, align 4, !tbaa !6
  %183 = load float* %76, align 4, !tbaa !12
  %184 = fmul float %vn.2, %183
  %185 = load float* %58, align 4, !tbaa !6
  %186 = getelementptr inbounds [3 x float]* %f, i64 %indvars.iv11, i64 %indvars.iv
  %187 = load float* %186, align 4, !tbaa !6
  %188 = fmul float %185, %187
  %189 = getelementptr inbounds [3 x float]* %accel, i64 %77, i64 %indvars.iv
  %190 = load float* %189, align 4, !tbaa !6
  %191 = fadd float %188, %190
  %192 = load float* %72, align 4, !tbaa !6
  %193 = fmul float %191, %192
  %194 = fsub float 1.000000e+00, %183
  %195 = fmul float %194, %193
  %196 = fadd float %184, %195
  %197 = fadd float %181, %196
  %198 = fmul float %183, %156
  %199 = fsub float %197, %198
  %200 = getelementptr inbounds [3 x float]* %v, i64 %indvars.iv11, i64 %indvars.iv
  store float %199, float* %200, align 4, !tbaa !6
  %201 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv11, i64 %indvars.iv
  %202 = load float* %201, align 4, !tbaa !6
  %203 = load float* %72, align 4, !tbaa !6
  %204 = fmul float %203, %199
  %205 = load float* %78, align 4, !tbaa !10
  %206 = load float* %79, align 4, !tbaa !11
  %207 = fsub float %205, %206
  %208 = fmul float %204, %207
  %209 = fadd float %202, %208
  %210 = getelementptr inbounds [3 x float]* %xprime, i64 %indvars.iv11, i64 %indvars.iv
  store float %209, float* %210, align 4, !tbaa !6
  br label %296

; <label>:211                                     ; preds = %93
  %212 = getelementptr inbounds [3 x float]* %xprime, i64 %indvars.iv11, i64 %indvars.iv
  %213 = load float* %212, align 4, !tbaa !6
  %214 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv11, i64 %indvars.iv
  %215 = load float* %214, align 4, !tbaa !6
  %216 = fsub float %213, %215
  %217 = load float* %72, align 4, !tbaa !6
  %218 = load float* %78, align 4, !tbaa !10
  %219 = load float* %79, align 4, !tbaa !11
  %220 = fsub float %218, %219
  %221 = fmul float %217, %220
  %222 = fdiv float %216, %221
  %223 = getelementptr inbounds [3 x float]* %v, i64 %indvars.iv11, i64 %indvars.iv
  store float %222, float* %223, align 4, !tbaa !6
  %224 = getelementptr inbounds [3 x float]* %53, i64 %69, i64 %indvars.iv
  %225 = load float* %224, align 4, !tbaa !6
  %226 = load float* %72, align 4, !tbaa !6
  %227 = fmul float %225, %226
  %228 = load float* %71, align 4, !tbaa !14
  %229 = fmul float %227, %228
  %230 = load float* %76, align 4, !tbaa !12
  %231 = fadd float %230, -1.000000e+00
  %232 = fdiv float %229, %231
  %233 = load float* %81, align 4, !tbaa !74
  %234 = fmul float %sqrtf, %233
  %235 = mul i64 %83, 1093
  %236 = add i64 %235, 18257
  %237 = and i64 %236, 65535
  %238 = uitofp i64 %237 to float
  %239 = mul nuw nsw i64 %237, 1093
  %240 = add nuw nsw i64 %239, 18257
  %241 = and i64 %240, 65535
  %242 = uitofp i64 %241 to float
  %243 = fadd float %238, %242
  %244 = mul nuw nsw i64 %241, 1093
  %245 = add nuw nsw i64 %244, 18257
  %246 = and i64 %245, 65535
  %247 = uitofp i64 %246 to float
  %248 = fadd float %243, %247
  %249 = mul nuw nsw i64 %246, 1093
  %250 = add nuw nsw i64 %249, 18257
  %251 = and i64 %250, 65535
  %252 = uitofp i64 %251 to float
  %253 = fadd float %248, %252
  %254 = fmul float %253, 0x3EF0001000000000
  %255 = fadd float %254, -2.000000e+00
  %256 = fmul float %255, 0x3FFBB67AE0000000
  %257 = fmul float %256, %234
  %258 = fadd float %232, %257
  %259 = load float* %80, align 4, !tbaa !72
  %260 = fmul float %sqrtf, %259
  %261 = mul nuw nsw i64 %251, 1093
  %262 = add nuw nsw i64 %261, 18257
  %263 = and i64 %262, 65535
  %264 = uitofp i64 %263 to float
  %265 = mul nuw nsw i64 %263, 1093
  %266 = add nuw nsw i64 %265, 18257
  %267 = and i64 %266, 65535
  %268 = uitofp i64 %267 to float
  %269 = fadd float %264, %268
  %270 = mul nuw nsw i64 %267, 1093
  %271 = add nuw nsw i64 %270, 18257
  %272 = and i64 %271, 65535
  %273 = uitofp i64 %272 to float
  %274 = fadd float %269, %273
  %275 = mul nuw nsw i64 %272, 1093
  %276 = add nuw nsw i64 %275, 18257
  %277 = and i64 %276, 65535
  %278 = uitofp i64 %277 to float
  %279 = fadd float %274, %278
  %280 = fmul float %279, 0x3EF0001000000000
  %281 = fadd float %280, -2.000000e+00
  %282 = fmul float %281, 0x3FFBB67AE0000000
  %283 = fmul float %282, %260
  %284 = getelementptr inbounds [3 x float]* %50, i64 %69, i64 %indvars.iv
  store float %283, float* %284, align 4, !tbaa !6
  %285 = fsub float %283, %258
  %286 = load float* %212, align 4, !tbaa !6
  %287 = fadd float %286, %285
  store float %287, float* %212, align 4, !tbaa !6
  br label %296

; <label>:288                                     ; preds = %88, %88, %89
  br i1 %8, label %289, label %296

; <label>:289                                     ; preds = %288
  %290 = getelementptr inbounds [3 x float]* %v, i64 %indvars.iv11, i64 %indvars.iv
  store float 0.000000e+00, float* %290, align 4, !tbaa !6
  %291 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv11, i64 %indvars.iv
  %292 = bitcast float* %291 to i32*
  %293 = load i32* %292, align 4, !tbaa !6
  %294 = getelementptr inbounds [3 x float]* %xprime, i64 %indvars.iv11, i64 %indvars.iv
  %295 = bitcast float* %294 to i32*
  store i32 %293, i32* %295, align 4, !tbaa !6
  br label %296

; <label>:296                                     ; preds = %211, %122, %289, %288
  %297 = phi i64 [ %277, %211 ], [ %175, %122 ], [ %83, %289 ], [ %83, %288 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 3
  br i1 %exitcond, label %298, label %82

; <label>:298                                     ; preds = %296
  %indvars.iv.next12 = add nsw i64 %indvars.iv11, 1
  %299 = icmp slt i64 %indvars.iv.next12, %55
  br i1 %299, label %56, label %._crit_edge

._crit_edge:                                      ; preds = %298, %.loopexit
  store i1 true, i1* @do_update_sd.bFirst, align 1
  ret void
}

; Function Attrs: optsize
declare i32 @constrain(%struct.__sFILE*, %struct.t_topology*, %struct.t_inputrec*, i32, %struct.t_mdatoms*, i32, i32, [3 x float]*, [3 x float]*, [3 x float]*, [3 x float]*, float, float*, %struct.t_nrnb*, i32) #2

; Function Attrs: optsize
declare void @fatal_error(i32, i8*, ...) #2

; Function Attrs: optsize
declare void @do_edsam(%struct.__sFILE*, %struct.t_topology*, %struct.t_inputrec*, i32, %struct.t_mdatoms*, i32, i32, [3 x float]*, [3 x float]*, [3 x float]*, [3 x float]*, [3 x float]*, %struct.t_edsamyn*, %struct.t_edpar*, i32) #2

; Function Attrs: optsize
declare void @pull(%struct.t_pull*, [3 x float]*, [3 x float]*, [3 x float]*, %struct.t_topology*, float, i32, i32, %struct.t_mdatoms*) #2

; Function Attrs: optsize
declare void @calc_vir(%struct.__sFILE*, i32, [3 x float]*, [3 x float]*, [3 x float]*) #2

; Function Attrs: optsize
declare void @unshift_x(%struct.t_graph*, [3 x float]*, [3 x float]*, [3 x float]*) #2

; Function Attrs: optsize
declare void @update_grps(i32, i32, %struct.t_groups*, %struct.t_grpopts*, [3 x float]*, %struct.t_mdatoms*, i32) #2

; Function Attrs: optsize
declare void @berendsen_pcoupl(%struct.t_inputrec*, i32, [3 x float]*, [3 x float]*, i32, i32, [3 x float]*, i16*, %struct.t_nrnb*, [3 x i32]*) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #5

; Function Attrs: nounwind optsize ssp uwtable
define void @correct_ekin(%struct.__sFILE* %log, i32 %start, i32 %end, [3 x float]* nocapture readonly %v, float* nocapture %vcm, float* nocapture readonly %mass, float %tmass, [3 x float]* %ekin) #1 {
  %hvcm = alloca [3 x float], align 4
  %mv = alloca [3 x float], align 4
  %dekin = alloca [3 x [3 x float]], align 16
  %1 = bitcast [3 x [3 x float]]* %dekin to i8*
  call void @llvm.lifetime.start(i64 36, i8* %1) #5
  %2 = getelementptr inbounds [3 x float]* %mv, i64 0, i64 0
  store float 0.000000e+00, float* %2, align 4, !tbaa !6
  %3 = getelementptr inbounds [3 x float]* %mv, i64 0, i64 1
  store float 0.000000e+00, float* %3, align 4, !tbaa !6
  %4 = getelementptr inbounds [3 x float]* %mv, i64 0, i64 2
  store float 0.000000e+00, float* %4, align 4, !tbaa !6
  %5 = icmp slt i32 %start, %end
  br i1 %5, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %0
  %6 = sext i32 %start to i64
  %7 = add i32 %end, -1
  br label %8

; <label>:8                                       ; preds = %18, %.lr.ph
  %indvars.iv12 = phi i64 [ %6, %.lr.ph ], [ %indvars.iv.next13, %18 ]
  %tm.05 = phi float [ 0.000000e+00, %.lr.ph ], [ %19, %18 ]
  %9 = getelementptr inbounds float* %mass, i64 %indvars.iv12
  %10 = load float* %9, align 4, !tbaa !6
  br label %11

; <label>:11                                      ; preds = %11, %8
  %indvars.iv9 = phi i64 [ 0, %8 ], [ %indvars.iv.next10, %11 ]
  %12 = getelementptr inbounds [3 x float]* %v, i64 %indvars.iv12, i64 %indvars.iv9
  %13 = load float* %12, align 4, !tbaa !6
  %14 = fmul float %10, %13
  %15 = getelementptr inbounds [3 x float]* %mv, i64 0, i64 %indvars.iv9
  %16 = load float* %15, align 4, !tbaa !6
  %17 = fadd float %16, %14
  store float %17, float* %15, align 4, !tbaa !6
  %indvars.iv.next10 = add nuw nsw i64 %indvars.iv9, 1
  %exitcond11 = icmp eq i64 %indvars.iv.next10, 3
  br i1 %exitcond11, label %18, label %11

; <label>:18                                      ; preds = %11
  %19 = fadd float %tm.05, %10
  %indvars.iv.next13 = add nsw i64 %indvars.iv12, 1
  %lftr.wideiv = trunc i64 %indvars.iv12 to i32
  %exitcond14 = icmp eq i32 %lftr.wideiv, %7
  br i1 %exitcond14, label %._crit_edge, label %8

._crit_edge:                                      ; preds = %18, %0
  %tm.0.lcssa = phi float [ 0.000000e+00, %0 ], [ %19, %18 ]
  %20 = fdiv float 1.000000e+00, %tmass
  %21 = load float* %vcm, align 4, !tbaa !6
  %22 = fmul float %20, %21
  store float %22, float* %vcm, align 4, !tbaa !6
  %23 = getelementptr inbounds float* %vcm, i64 1
  %24 = load float* %23, align 4, !tbaa !6
  %25 = fmul float %20, %24
  store float %25, float* %23, align 4, !tbaa !6
  %26 = getelementptr inbounds float* %vcm, i64 2
  %27 = load float* %26, align 4, !tbaa !6
  %28 = fmul float %20, %27
  store float %28, float* %26, align 4, !tbaa !6
  %29 = getelementptr inbounds [3 x float]* %hvcm, i64 0, i64 0
  %30 = fmul float %22, 5.000000e-01
  store float %30, float* %29, align 4, !tbaa !6
  %31 = fmul float %25, 5.000000e-01
  %32 = getelementptr inbounds [3 x float]* %hvcm, i64 0, i64 1
  store float %31, float* %32, align 4, !tbaa !6
  %33 = fmul float %28, 5.000000e-01
  %34 = getelementptr inbounds [3 x float]* %hvcm, i64 0, i64 2
  store float %33, float* %34, align 4, !tbaa !6
  call void @llvm.memset.p0i8.i64(i8* %1, i8 0, i64 36, i32 16, i1 false) #5
  br label %.preheader

.preheader:                                       ; preds = %..preheader_crit_edge, %._crit_edge
  %35 = phi float [ %30, %._crit_edge ], [ %.pre, %..preheader_crit_edge ]
  %indvars.iv6 = phi i64 [ 0, %._crit_edge ], [ %indvars.iv.next7, %..preheader_crit_edge ]
  %36 = fmul float %tm.0.lcssa, %35
  %37 = getelementptr inbounds [3 x float]* %mv, i64 0, i64 %indvars.iv6
  %38 = load float* %37, align 4, !tbaa !6
  %39 = fsub float %36, %38
  br label %40

; <label>:40                                      ; preds = %40, %.preheader
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %40 ]
  %41 = getelementptr inbounds float* %vcm, i64 %indvars.iv
  %42 = load float* %41, align 4, !tbaa !6
  %43 = fmul float %42, %39
  %44 = getelementptr inbounds [3 x [3 x float]]* %dekin, i64 0, i64 %indvars.iv6, i64 %indvars.iv
  %45 = load float* %44, align 4, !tbaa !6
  %46 = fadd float %45, %43
  store float %46, float* %44, align 4, !tbaa !6
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 3
  br i1 %exitcond, label %47, label %40

; <label>:47                                      ; preds = %40
  %indvars.iv.next7 = add nuw nsw i64 %indvars.iv6, 1
  %exitcond8 = icmp eq i64 %indvars.iv.next7, 3
  br i1 %exitcond8, label %48, label %..preheader_crit_edge

..preheader_crit_edge:                            ; preds = %47
  %.phi.trans.insert = getelementptr inbounds [3 x float]* %hvcm, i64 0, i64 %indvars.iv.next7
  %.pre = load float* %.phi.trans.insert, align 4, !tbaa !6
  br label %.preheader

; <label>:48                                      ; preds = %47
  %49 = getelementptr inbounds [3 x [3 x float]]* %dekin, i64 0, i64 0
  call void @pr_rvecs(%struct.__sFILE* %log, i32 0, i8* getelementptr inbounds ([6 x i8]* @.str12, i64 0, i64 0), [3 x float]* %49, i32 3) #6
  call void @pr_rvecs(%struct.__sFILE* %log, i32 0, i8* getelementptr inbounds ([6 x i8]* @.str13, i64 0, i64 0), [3 x float]* %ekin, i32 3) #6
  %50 = icmp eq %struct.__sFILE* %log, null
  br i1 %50, label %84, label %51

; <label>:51                                      ; preds = %48
  %52 = getelementptr inbounds [3 x [3 x float]]* %dekin, i64 0, i64 0, i64 0
  %53 = load float* %52, align 16, !tbaa !6
  %54 = getelementptr inbounds [3 x [3 x float]]* %dekin, i64 0, i64 1, i64 1
  %55 = load float* %54, align 4, !tbaa !6
  %56 = fadd float %53, %55
  %57 = getelementptr inbounds [3 x [3 x float]]* %dekin, i64 0, i64 2, i64 2
  %58 = load float* %57, align 8, !tbaa !6
  %59 = fadd float %56, %58
  %60 = fpext float %59 to double
  %61 = getelementptr inbounds [3 x float]* %ekin, i64 0, i64 0
  %62 = load float* %61, align 4, !tbaa !6
  %63 = getelementptr inbounds [3 x float]* %ekin, i64 1, i64 1
  %64 = load float* %63, align 4, !tbaa !6
  %65 = fadd float %62, %64
  %66 = getelementptr inbounds [3 x float]* %ekin, i64 2, i64 2
  %67 = load float* %66, align 4, !tbaa !6
  %68 = fadd float %65, %67
  %69 = fpext float %68 to double
  %70 = load float* %vcm, align 4, !tbaa !6
  %71 = fpext float %70 to double
  %72 = load float* %23, align 4, !tbaa !6
  %73 = fpext float %72 to double
  %74 = load float* %26, align 4, !tbaa !6
  %75 = fpext float %74 to double
  %76 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %log, i8* getelementptr inbounds ([50 x i8]* @.str14, i64 0, i64 0), double %60, double %69, double %71, double %73, double %75) #6
  %77 = load float* %2, align 4, !tbaa !6
  %78 = fpext float %77 to double
  %79 = load float* %3, align 4, !tbaa !6
  %80 = fpext float %79 to double
  %81 = load float* %4, align 4, !tbaa !6
  %82 = fpext float %81 to double
  %83 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %log, i8* getelementptr inbounds ([26 x i8]* @.str15, i64 0, i64 0), double %78, double %80, double %82) #6
  br label %84

; <label>:84                                      ; preds = %48, %51
  call void @llvm.lifetime.end(i64 36, i8* %1) #5
  ret void
}

; Function Attrs: optsize
declare void @pr_rvecs(%struct.__sFILE*, i32, i8*, [3 x float]*, i32) #2

; Function Attrs: optsize
declare float @rando(i32*) #2

declare float @fabsf(float)

declare float @sqrtf(float)

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #5

attributes #0 = { alwaysinline nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind optsize }
attributes #7 = { nounwind optsize readnone }
attributes #8 = { optsize }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!2 = !{!3, !3, i64 0}
!3 = !{!"any pointer", !4, i64 0}
!4 = !{!"omnipotent char", !5, i64 0}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!7, !7, i64 0}
!7 = !{!"float", !4, i64 0}
!8 = !{!9, !7, i64 0}
!9 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !7, i64 24}
!10 = !{!9, !7, i64 4}
!11 = !{!9, !7, i64 8}
!12 = !{!9, !7, i64 12}
!13 = !{!9, !7, i64 20}
!14 = !{!9, !7, i64 24}
!15 = !{!9, !7, i64 16}
!16 = !{!17, !3, i64 64}
!17 = !{!"", !18, i64 0, !3, i64 64, !3, i64 72, !20, i64 80}
!18 = !{!"", !19, i64 0, !4, i64 8}
!19 = !{!"int", !4, i64 0}
!20 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8}
!21 = !{!17, !3, i64 72}
!22 = !{!23, !19, i64 0}
!23 = !{!"", !19, i64 0, !19, i64 4, !19, i64 8, !19, i64 12, !3, i64 16, !3, i64 24, !3, i64 32, !3, i64 40, !3, i64 48, !3, i64 56}
!24 = !{!23, !19, i64 4}
!25 = !{!26, !3, i64 120}
!26 = !{!"", !7, i64 0, !19, i64 4, !3, i64 8, !3, i64 16, !3, i64 24, !3, i64 32, !3, i64 40, !3, i64 48, !3, i64 56, !3, i64 64, !3, i64 72, !3, i64 80, !3, i64 88, !3, i64 96, !3, i64 104, !3, i64 112, !3, i64 120, !3, i64 128, !3, i64 136, !3, i64 144, !3, i64 152, !3, i64 160, !3, i64 168}
!27 = !{!26, !3, i64 104}
!28 = !{!26, !3, i64 24}
!29 = !{!30, !30, i64 0}
!30 = !{!"short", !4, i64 0}
!31 = !{!26, !3, i64 64}
!32 = !{!19, !19, i64 0}
!33 = !{!26, !3, i64 16}
!34 = !{!26, !3, i64 8}
!35 = !{!36, !36, i64 0}
!36 = !{!"double", !4, i64 0}
!37 = !{!20, !7, i64 8}
!38 = !{!20, !7, i64 4}
!39 = !{!40, !19, i64 0}
!40 = !{!"", !19, i64 0, !19, i64 4, !19, i64 8, !19, i64 12, !19, i64 16, !19, i64 20, !19, i64 24, !19, i64 28, !19, i64 32, !19, i64 36, !19, i64 40, !19, i64 44, !19, i64 48, !19, i64 52, !7, i64 56, !7, i64 60, !7, i64 64, !19, i64 68, !19, i64 72, !19, i64 76, !19, i64 80, !7, i64 84, !19, i64 88, !19, i64 92, !19, i64 96, !19, i64 100, !19, i64 104, !19, i64 108, !19, i64 112, !19, i64 116, !7, i64 120, !4, i64 124, !4, i64 160, !19, i64 196, !7, i64 200, !7, i64 204, !19, i64 208, !7, i64 212, !7, i64 216, !19, i64 220, !7, i64 224, !7, i64 228, !7, i64 232, !19, i64 236, !7, i64 240, !7, i64 244, !19, i64 248, !7, i64 252, !7, i64 256, !7, i64 260, !7, i64 264, !7, i64 268, !19, i64 272, !19, i64 276, !19, i64 280, !7, i64 284, !7, i64 288, !7, i64 292, !19, i64 296, !7, i64 300, !7, i64 304, !19, i64 308, !19, i64 312, !19, i64 316, !19, i64 320, !19, i64 324, !7, i64 328, !19, i64 332, !7, i64 336, !7, i64 340, !19, i64 344, !7, i64 348, !19, i64 352, !19, i64 356, !19, i64 360, !19, i64 364, !7, i64 368, !7, i64 372, !7, i64 376, !7, i64 380, !23, i64 384, !4, i64 448, !4, i64 520}
!41 = !{!42, !19, i64 508}
!42 = !{!"", !43, i64 0, !43, i64 144, !43, i64 288, !4, i64 432, !4, i64 436, !4, i64 440, !4, i64 452, !7, i64 464, !7, i64 468, !4, i64 472, !7, i64 484, !7, i64 488, !19, i64 492, !7, i64 496, !7, i64 500, !7, i64 504, !19, i64 508, !19, i64 512, !19, i64 516, !3, i64 520, !7, i64 528, !7, i64 532, !7, i64 536, !19, i64 540, !19, i64 544, !19, i64 548}
!43 = !{!"", !19, i64 0, !3, i64 8, !3, i64 16, !3, i64 24, !3, i64 32, !3, i64 40, !3, i64 48, !3, i64 56, !3, i64 64, !3, i64 72, !3, i64 80, !3, i64 88, !3, i64 96, !3, i64 104, !3, i64 112, !3, i64 120, !3, i64 128, !3, i64 136}
!44 = !{!40, !19, i64 108}
!45 = !{!40, !19, i64 112}
!46 = !{!47, !19, i64 0}
!47 = !{!"", !19, i64 0, !3, i64 8, !3, i64 16}
!48 = !{!40, !19, i64 388}
!49 = !{!40, !19, i64 384}
!50 = !{!40, !7, i64 60}
!51 = !{!52, !7, i64 4}
!52 = !{!"", !7, i64 0, !7, i64 4, !4, i64 8, !7, i64 44, !7, i64 48}
!53 = !{!17, !7, i64 80}
!54 = !{!40, !3, i64 424}
!55 = !{!40, !3, i64 432}
!56 = !{!26, !3, i64 32}
!57 = !{!26, !3, i64 96}
!58 = !{!26, !3, i64 128}
!59 = !{!52, !7, i64 44}
!60 = !{!17, !7, i64 88}
!61 = !{!40, !3, i64 416}
!62 = !{!40, !3, i64 408}
!63 = !{!40, !7, i64 336}
!64 = !{!40, !7, i64 340}
!65 = !{!42, !4, i64 432}
!66 = !{!67, !19, i64 4}
!67 = !{!"", !19, i64 0, !19, i64 4, !19, i64 8, !19, i64 12, !19, i64 16, !3, i64 24, !3, i64 32, !3, i64 40}
!68 = !{!40, !19, i64 100}
!69 = !{!67, !19, i64 12}
!70 = !{!71, !7, i64 0}
!71 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12}
!72 = !{!71, !7, i64 4}
!73 = !{!71, !7, i64 8}
!74 = !{!71, !7, i64 12}
