; ModuleID = '../../SPEC/benchspec/CPU2006/435.gromacs/src/update.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.t_sdconst = type { float, float, float, float, float, float, float }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.t_edpar = type { i32, i32, i32, i32, i32, i32, i32, %struct.t_edx, %struct.t_edx, %struct.t_edvecs, float, %struct.t_edx, %struct.t_edx, i32, i32*, float*, float, i32, i32*, %struct._IO_FILE* }
%struct.t_edx = type { i32, i32*, [3 x float]*, [3 x [3 x float]] }
%struct.t_edvecs = type { %struct.t_eigvec, %struct.t_eigvec, %struct.t_eigvec, %struct.t_eigvec, %struct.t_eigvec, %struct.t_eigvec }
%struct.t_eigvec = type { i32, i32*, float*, [3 x float]**, float*, float*, float*, float*, float }
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
%struct.t_pull = type { %struct.t_pullgrps, %struct.t_pullgrps, %struct.t_pullgrps, i32, i32, [3 x float], [3 x float], float, float, [3 x i32], float, float, i32, float, float, float, i32, i32, i32, %struct._IO_FILE*, float, float, float, i32, i32, i32 }
%struct.t_pullgrps = type { i32, i32**, float**, i32*, i8**, float*, [3 x float]**, [3 x float]**, [3 x float]*, [3 x float]*, [3 x float]*, [3 x float]*, [3 x float]*, [3 x float]*, [3 x float]*, float*, [3 x float]*, [3 x float]** }

@im = constant i64 65535, align 8
@ia = constant i64 1093, align 8
@ic = constant i64 18257, align 8
@inv_im = constant float 0x3EF0001000000000, align 4
@.str = private unnamed_addr constant [4 x i8] c"sdc\00", align 1
@.str1 = private unnamed_addr constant [54 x i8] c"../../SPEC/benchspec/CPU2006/435.gromacs/src/update.c\00", align 1
@sdc = internal unnamed_addr global %struct.t_sdconst* null, align 8
@debug = external global %struct._IO_FILE*
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
@stdlog = external global %struct._IO_FILE*
@.str3 = private unnamed_addr constant [7 x i8] c"xprime\00", align 1
@.str4 = private unnamed_addr constant [6 x i8] c"x_unc\00", align 1
@.str5 = private unnamed_addr constant [5 x i8] c"lamb\00", align 1
@.str7 = private unnamed_addr constant [37 x i8] c"Don't know how to update coordinates\00", align 1
@.str12 = private unnamed_addr constant [6 x i8] c"dekin\00", align 1
@.str13 = private unnamed_addr constant [6 x i8] c" ekin\00", align 1
@.str14 = private unnamed_addr constant [50 x i8] c"dekin = %g, ekin = %g  vcm = (%8.4f %8.4f %8.4f)\0A\00", align 1
@.str15 = private unnamed_addr constant [26 x i8] c"mv = (%8.4f %8.4f %8.4f)\0A\00", align 1
@do_update_bd.rf = internal unnamed_addr global float* null, align 8
@.str16 = private unnamed_addr constant [3 x i8] c"rf\00", align 1
@do_update_sd.bFirst = internal unnamed_addr global i1 false
@do_update_sd.sig = internal unnamed_addr global %struct.t_sd_sigmas* null, align 8
@do_update_sd.X = internal unnamed_addr global [3 x float]* null, align 8
@do_update_sd.V = internal unnamed_addr global [3 x float]* null, align 8
@.str17 = private unnamed_addr constant [4 x i8] c"sig\00", align 1
@.str18 = private unnamed_addr constant [2 x i8] c"X\00", align 1
@.str19 = private unnamed_addr constant [2 x i8] c"V\00", align 1

; Function Attrs: nounwind optsize uwtable
define void @init_sd_consts(i32 %ngtc, float* nocapture %tau_t, float %dt) #0 {
entry:
  %call = tail call i8* @save_calloc(i8* getelementptr inbounds ([4 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str1, i64 0, i64 0), i32 258, i32 %ngtc, i32 28) #4
  %0 = bitcast i8* %call to %struct.t_sdconst*
  store %struct.t_sdconst* %0, %struct.t_sdconst** @sdc, align 8, !tbaa !0
  %cmp199 = icmp sgt i32 %ngtc, 0
  br i1 %cmp199, label %for.body, label %for.end

for.body:                                         ; preds = %entry, %for.inc.for.body_crit_edge
  %1 = phi %struct.t_sdconst* [ %.pre, %for.inc.for.body_crit_edge ], [ %0, %entry ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc.for.body_crit_edge ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds float* %tau_t, i64 %indvars.iv
  %2 = load float* %arrayidx, align 4, !tbaa !3
  %div = fdiv float %dt, %2
  %gdt = getelementptr inbounds %struct.t_sdconst* %1, i64 %indvars.iv, i32 0
  store float %div, float* %gdt, align 4, !tbaa !3
  %div6 = fmul float %div, 5.000000e-01
  %conv = fpext float %div6 to double
  %call7 = tail call double @exp(double %conv) #4
  %conv8 = fptrunc double %call7 to float
  %3 = load %struct.t_sdconst** @sdc, align 8, !tbaa !0
  %eph = getelementptr inbounds %struct.t_sdconst* %3, i64 %indvars.iv, i32 1
  store float %conv8, float* %eph, align 4, !tbaa !3
  %gdt13 = getelementptr inbounds %struct.t_sdconst* %3, i64 %indvars.iv, i32 0
  %4 = load float* %gdt13, align 4, !tbaa !3
  %div14 = fmul float %4, -5.000000e-01
  %conv15 = fpext float %div14 to double
  %call16 = tail call double @exp(double %conv15) #4
  %conv17 = fptrunc double %call16 to float
  %5 = load %struct.t_sdconst** @sdc, align 8, !tbaa !0
  %emh = getelementptr inbounds %struct.t_sdconst* %5, i64 %indvars.iv, i32 2
  store float %conv17, float* %emh, align 4, !tbaa !3
  %gdt22 = getelementptr inbounds %struct.t_sdconst* %5, i64 %indvars.iv, i32 0
  %6 = load float* %gdt22, align 4, !tbaa !3
  %sub23 = fsub float -0.000000e+00, %6
  %conv24 = fpext float %sub23 to double
  %call25 = tail call double @exp(double %conv24) #4
  %conv26 = fptrunc double %call25 to float
  %7 = load %struct.t_sdconst** @sdc, align 8, !tbaa !0
  %em = getelementptr inbounds %struct.t_sdconst* %7, i64 %indvars.iv, i32 3
  store float %conv26, float* %em, align 4, !tbaa !3
  %gdt31 = getelementptr inbounds %struct.t_sdconst* %7, i64 %indvars.iv, i32 0
  %8 = load float* %gdt31, align 4, !tbaa !3
  %conv32 = fpext float %8 to double
  %cmp33 = fcmp ult double %conv32, 1.000000e-01
  br i1 %cmp33, label %if.else, label %if.then

if.then:                                          ; preds = %for.body
  %eph40 = getelementptr inbounds %struct.t_sdconst* %7, i64 %indvars.iv, i32 1
  %9 = load float* %eph40, align 4, !tbaa !3
  %mul.i = fmul float %9, %9
  %sub42 = fadd float %mul.i, -1.000000e+00
  %mul = fmul float %8, %sub42
  %sub46 = fadd float %9, -1.000000e+00
  %mul.i198 = fmul float %sub46, %sub46
  %mul48 = fmul float %mul.i198, 4.000000e+00
  %sub49 = fsub float %mul, %mul48
  %b = getelementptr inbounds %struct.t_sdconst* %7, i64 %indvars.iv, i32 4
  store float %sub49, float* %b, align 4, !tbaa !3
  %sub55 = fadd float %8, -3.000000e+00
  %emh58 = getelementptr inbounds %struct.t_sdconst* %7, i64 %indvars.iv, i32 2
  %10 = load float* %emh58, align 4, !tbaa !3
  %mul59 = fmul float %10, 4.000000e+00
  %add = fadd float %sub55, %mul59
  %sub63 = fsub float %add, %conv26
  %c = getelementptr inbounds %struct.t_sdconst* %7, i64 %indvars.iv, i32 5
  store float %sub63, float* %c, align 4, !tbaa !3
  %sub69 = fsub float 2.000000e+00, %9
  %sub73 = fsub float %sub69, %10
  %d = getelementptr inbounds %struct.t_sdconst* %7, i64 %indvars.iv, i32 6
  store float %sub73, float* %d, align 4, !tbaa !3
  br label %if.end

if.else:                                          ; preds = %for.body
  %div79 = fmul float %8, 5.000000e-01
  %mul80 = fmul float %div79, %div79
  %mul81 = fmul float %div79, %mul80
  %mul82 = fmul float %div79, %mul81
  %conv83 = fpext float %mul82 to double
  %conv84 = fpext float %div79 to double
  %mul86 = fmul float %div79, 7.000000e+00
  %conv87 = fpext float %mul86 to double
  %div88 = fdiv double %conv87, 9.000000e+00
  %add89 = fadd double %div88, 0x3FC82D82D82D82D8
  %mul90 = fmul double %conv84, %add89
  %add91 = fadd double %mul90, 0x3FD5555555555555
  %mul92 = fmul double %conv84, %add91
  %add93 = fadd double %mul92, 0x3FD5555555555555
  %mul94 = fmul double %conv83, %add93
  %conv95 = fptrunc double %mul94 to float
  %b98 = getelementptr inbounds %struct.t_sdconst* %7, i64 %indvars.iv, i32 4
  store float %conv95, float* %b98, align 4, !tbaa !3
  %conv101 = fpext float %mul81 to double
  %mul105 = fmul float %div79, 3.100000e+01
  %conv106 = fpext float %mul105 to double
  %div107 = fdiv double %conv106, 1.260000e+03
  %add108 = fadd double %div107, 0xBFB5555555555555
  %mul109 = fmul double %conv84, %add108
  %add110 = fadd double %mul109, 0x3FCDDDDDDDDDDDDE
  %mul111 = fmul double %conv84, %add110
  %add112 = fadd double %mul111, -5.000000e-01
  %mul113 = fmul double %conv84, %add112
  %add114 = fadd double %mul113, 0x3FE5555555555555
  %mul115 = fmul double %conv101, %add114
  %conv116 = fptrunc double %mul115 to float
  %c119 = getelementptr inbounds %struct.t_sdconst* %7, i64 %indvars.iv, i32 5
  store float %conv116, float* %c119, align 4, !tbaa !3
  %conv121 = fpext float %mul80 to double
  %div126 = fdiv double %conv121, 3.600000e+02
  %sub127 = fsub double 0xBFB5555555555555, %div126
  %mul128 = fmul double %conv121, %sub127
  %add129 = fadd double %mul128, -1.000000e+00
  %mul130 = fmul double %conv121, %add129
  %conv131 = fptrunc double %mul130 to float
  %d134 = getelementptr inbounds %struct.t_sdconst* %7, i64 %indvars.iv, i32 6
  store float %conv131, float* %d134, align 4, !tbaa !3
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %11 = phi float [ %conv116, %if.else ], [ %sub63, %if.then ]
  %12 = phi float [ %conv95, %if.else ], [ %sub49, %if.then ]
  %13 = phi float [ %conv131, %if.else ], [ %sub73, %if.then ]
  %14 = load %struct._IO_FILE** @debug, align 8, !tbaa !0
  %tobool = icmp eq %struct._IO_FILE* %14, null
  br i1 %tobool, label %for.inc, label %if.then135

if.then135:                                       ; preds = %if.end
  %conv139 = fpext float %12 to double
  %conv143 = fpext float %11 to double
  %conv147 = fpext float %13 to double
  %15 = trunc i64 %indvars.iv to i32
  %call148 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %14, i8* getelementptr inbounds ([38 x i8]* @.str2, i64 0, i64 0), i32 %15, double %conv139, double %conv143, double %conv147) #4
  br label %for.inc

for.inc:                                          ; preds = %if.end, %if.then135
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %ngtc
  br i1 %exitcond, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  %.pre = load %struct.t_sdconst** @sdc, align 8, !tbaa !0
  br label %for.body

for.end:                                          ; preds = %for.inc, %entry
  ret void
}

; Function Attrs: optsize
declare i8* @save_calloc(i8*, i8*, i32, i32, i32) #1

; Function Attrs: nounwind optsize
declare double @exp(double) #2

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #2

; Function Attrs: nounwind optsize uwtable
define void @calc_ke_part(i32 %bFirstStep, i32 %bSD, i32 %start, i32 %homenr, [3 x float]* nocapture %vold, [3 x float]* nocapture %v, [3 x float]* nocapture %vt, %struct.t_grpopts* nocapture %opts, %struct.t_mdatoms* nocapture %md, %struct.t_groups* nocapture %grps, %struct.t_nrnb* nocapture %nrnb, float %lambda, float* %dvdlambda) #0 {
entry:
  %v_corrt = alloca [3 x float], align 4
  %tcstat1 = getelementptr inbounds %struct.t_groups* %grps, i64 0, i32 1
  %0 = load %struct.t_grp_tcstat** %tcstat1, align 8, !tbaa !0
  %grpstat2 = getelementptr inbounds %struct.t_groups* %grps, i64 0, i32 2
  %1 = load %struct.t_grp_acc** %grpstat2, align 8, !tbaa !0
  %ngtc = getelementptr inbounds %struct.t_grpopts* %opts, i64 0, i32 0
  %2 = load i32* %ngtc, align 4, !tbaa !4
  %cmp304 = icmp sgt i32 %2, 0
  br i1 %cmp304, label %for.body, label %for.end

for.body:                                         ; preds = %entry, %for.body.for.body_crit_edge
  %3 = phi %struct.t_grp_tcstat* [ %.pre329, %for.body.for.body_crit_edge ], [ %0, %entry ]
  %indvars.iv327 = phi i64 [ %indvars.iv.next328, %for.body.for.body_crit_edge ], [ 0, %entry ]
  %arraydecay = getelementptr inbounds %struct.t_grp_tcstat* %3, i64 %indvars.iv327, i32 2, i64 0
  %4 = bitcast [3 x float]* %arraydecay to i8*
  call void @llvm.memset.p0i8.i64(i8* %4, i8 0, i64 36, i32 4, i1 false) #3
  %indvars.iv.next328 = add i64 %indvars.iv327, 1
  %5 = load i32* %ngtc, align 4, !tbaa !4
  %6 = trunc i64 %indvars.iv.next328 to i32
  %cmp = icmp slt i32 %6, %5
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  %.pre329 = load %struct.t_grp_tcstat** %tcstat1, align 8, !tbaa !0
  br label %for.body

for.end:                                          ; preds = %for.body, %entry
  %tobool = icmp eq i32 %bFirstStep, 0
  br i1 %tobool, label %for.cond38.preheader, label %for.cond4.preheader

for.cond4.preheader:                              ; preds = %for.end
  %add = add nsw i32 %homenr, %start
  %cmp5302 = icmp sgt i32 %homenr, 0
  br i1 %cmp5302, label %for.body6.lr.ph, label %for.cond16.preheader

for.body6.lr.ph:                                  ; preds = %for.cond4.preheader
  %7 = sext i32 %start to i64
  br label %for.body6

for.cond38.preheader:                             ; preds = %for.end
  %ngacc39 = getelementptr inbounds %struct.t_grpopts* %opts, i64 0, i32 1
  %8 = load i32* %ngacc39, align 4, !tbaa !4
  %cmp40296 = icmp sgt i32 %8, 0
  br i1 %cmp40296, label %for.cond42.preheader.lr.ph, label %for.cond72.preheader.loopexit

for.cond42.preheader.lr.ph:                       ; preds = %for.cond38.preheader
  %9 = load %struct.t_grp_acc** %grpstat2, align 8, !tbaa !0
  br label %for.cond42.preheader

for.cond16.preheader:                             ; preds = %for.body6, %for.cond4.preheader
  %ngacc = getelementptr inbounds %struct.t_grpopts* %opts, i64 0, i32 1
  %10 = load i32* %ngacc, align 4, !tbaa !4
  %cmp17300 = icmp sgt i32 %10, 0
  br i1 %cmp17300, label %for.cond19.preheader.lr.ph, label %for.cond72.preheader

for.cond19.preheader.lr.ph:                       ; preds = %for.cond16.preheader
  %11 = load %struct.t_grp_acc** %grpstat2, align 8, !tbaa !0
  br label %for.cond19.preheader

for.body6:                                        ; preds = %for.body6.lr.ph, %for.body6
  %indvars.iv325 = phi i64 [ %7, %for.body6.lr.ph ], [ %indvars.iv.next326, %for.body6 ]
  %arraydecay9 = getelementptr inbounds [3 x float]* %v, i64 %indvars.iv325, i64 0
  %arraydecay12 = getelementptr inbounds [3 x float]* %vold, i64 %indvars.iv325, i64 0
  %12 = load float* %arraydecay9, align 4, !tbaa !3
  store float %12, float* %arraydecay12, align 4, !tbaa !3
  %arrayidx2.i287 = getelementptr inbounds [3 x float]* %v, i64 %indvars.iv325, i64 1
  %13 = load float* %arrayidx2.i287, align 4, !tbaa !3
  %arrayidx3.i288 = getelementptr inbounds [3 x float]* %vold, i64 %indvars.iv325, i64 1
  store float %13, float* %arrayidx3.i288, align 4, !tbaa !3
  %arrayidx4.i = getelementptr inbounds [3 x float]* %v, i64 %indvars.iv325, i64 2
  %14 = load float* %arrayidx4.i, align 4, !tbaa !3
  %arrayidx5.i289 = getelementptr inbounds [3 x float]* %vold, i64 %indvars.iv325, i64 2
  store float %14, float* %arrayidx5.i289, align 4, !tbaa !3
  %indvars.iv.next326 = add i64 %indvars.iv325, 1
  %15 = trunc i64 %indvars.iv.next326 to i32
  %cmp5 = icmp slt i32 %15, %add
  br i1 %cmp5, label %for.body6, label %for.cond16.preheader

for.cond19.preheader:                             ; preds = %for.cond19.preheader.lr.ph, %for.inc35
  %indvars.iv323 = phi i64 [ 0, %for.cond19.preheader.lr.ph ], [ %indvars.iv.next324, %for.inc35 ]
  br label %for.body21

for.cond72.preheader.loopexit:                    ; preds = %for.inc67, %for.cond38.preheader
  %add73.pre = add nsw i32 %homenr, %start
  br label %for.cond72.preheader

for.cond72.preheader:                             ; preds = %for.cond16.preheader, %for.inc35, %for.cond72.preheader.loopexit
  %add73.pre-phi = phi i32 [ %add73.pre, %for.cond72.preheader.loopexit ], [ %add, %for.inc35 ], [ %add, %for.cond16.preheader ]
  %cmp74292 = icmp sgt i32 %homenr, 0
  br i1 %cmp74292, label %for.body76.lr.ph, label %for.end196

for.body76.lr.ph:                                 ; preds = %for.cond72.preheader
  %cACC = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 16
  %16 = load i16** %cACC, align 8, !tbaa !0
  %cTC = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 14
  %17 = load i16** %cTC, align 8, !tbaa !0
  %massT = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 4
  %18 = load float** %massT, align 8, !tbaa !0
  %tobool88 = icmp eq i32 %bSD, 0
  %arrayidx133 = getelementptr inbounds [3 x float]* %v_corrt, i64 0, i64 0
  %arrayidx145 = getelementptr inbounds [3 x float]* %v_corrt, i64 0, i64 1
  %arrayidx157 = getelementptr inbounds [3 x float]* %v_corrt, i64 0, i64 2
  %cmp172 = icmp eq float* %dvdlambda, null
  %bPerturbed = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 9
  %massB = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 3
  %massA = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 2
  %19 = load %struct.t_sdconst** @sdc, align 8, !tbaa !0
  %20 = sext i32 %start to i64
  br label %for.body76

for.body21:                                       ; preds = %for.body21, %for.cond19.preheader
  %indvars.iv318 = phi i64 [ 0, %for.cond19.preheader ], [ %indvars.iv.next319, %for.body21 ]
  %arrayidx26 = getelementptr inbounds %struct.t_grp_acc* %11, i64 %indvars.iv323, i32 3, i64 %indvars.iv318
  %21 = load float* %arrayidx26, align 4, !tbaa !3
  %arrayidx31 = getelementptr inbounds %struct.t_grp_acc* %11, i64 %indvars.iv323, i32 5, i64 %indvars.iv318
  store float %21, float* %arrayidx31, align 4, !tbaa !3
  %indvars.iv.next319 = add i64 %indvars.iv318, 1
  %lftr.wideiv320 = trunc i64 %indvars.iv.next319 to i32
  %exitcond321 = icmp eq i32 %lftr.wideiv320, 3
  br i1 %exitcond321, label %for.inc35, label %for.body21

for.inc35:                                        ; preds = %for.body21
  %indvars.iv.next324 = add i64 %indvars.iv323, 1
  %22 = trunc i64 %indvars.iv.next324 to i32
  %cmp17 = icmp slt i32 %22, %10
  br i1 %cmp17, label %for.cond19.preheader, label %for.cond72.preheader

for.cond42.preheader:                             ; preds = %for.cond42.preheader.lr.ph, %for.inc67
  %indvars.iv316 = phi i64 [ 0, %for.cond42.preheader.lr.ph ], [ %indvars.iv.next317, %for.inc67 ]
  br label %for.body44

for.body44:                                       ; preds = %for.body44, %for.cond42.preheader
  %indvars.iv312 = phi i64 [ 0, %for.cond42.preheader ], [ %indvars.iv.next313, %for.body44 ]
  %arrayidx50 = getelementptr inbounds %struct.t_grp_acc* %9, i64 %indvars.iv316, i32 3, i64 %indvars.iv312
  %23 = load float* %arrayidx50, align 4, !tbaa !3
  %arrayidx55 = getelementptr inbounds %struct.t_grp_acc* %9, i64 %indvars.iv316, i32 4, i64 %indvars.iv312
  %24 = load float* %arrayidx55, align 4, !tbaa !3
  %add56 = fadd float %23, %24
  %conv57 = fmul float %add56, 5.000000e-01
  %arrayidx63 = getelementptr inbounds %struct.t_grp_acc* %9, i64 %indvars.iv316, i32 5, i64 %indvars.iv312
  store float %conv57, float* %arrayidx63, align 4, !tbaa !3
  %indvars.iv.next313 = add i64 %indvars.iv312, 1
  %lftr.wideiv314 = trunc i64 %indvars.iv.next313 to i32
  %exitcond315 = icmp eq i32 %lftr.wideiv314, 3
  br i1 %exitcond315, label %for.inc67, label %for.body44

for.inc67:                                        ; preds = %for.body44
  %indvars.iv.next317 = add i64 %indvars.iv316, 1
  %25 = trunc i64 %indvars.iv.next317 to i32
  %cmp40 = icmp slt i32 %25, %8
  br i1 %cmp40, label %for.cond42.preheader, label %for.cond72.preheader.loopexit

for.body76:                                       ; preds = %for.body76.lr.ph, %for.inc194
  %indvars.iv310 = phi i64 [ %20, %for.body76.lr.ph ], [ %indvars.iv.next311, %for.inc194 ]
  %dvdl.0294 = phi float [ 0.000000e+00, %for.body76.lr.ph ], [ %dvdl.1, %for.inc194 ]
  %arrayidx78 = getelementptr inbounds i16* %16, i64 %indvars.iv310
  %26 = load i16* %arrayidx78, align 2, !tbaa !5
  %arrayidx81 = getelementptr inbounds i16* %17, i64 %indvars.iv310
  %27 = load i16* %arrayidx81, align 2, !tbaa !5
  %arrayidx84 = getelementptr inbounds float* %18, i64 %indvars.iv310
  %28 = load float* %arrayidx84, align 4, !tbaa !3
  %conv87 = fmul float %28, 5.000000e-01
  br i1 %tobool88, label %if.end99, label %if.then89

if.then89:                                        ; preds = %for.body76
  %idxprom91 = zext i16 %27 to i64
  %em = getelementptr inbounds %struct.t_sdconst* %19, i64 %idxprom91, i32 3
  %29 = load float* %em, align 4, !tbaa !3
  %conv93 = fpext float %29 to double
  %mul94 = fmul double %conv93, 0xBFCA827980000000
  %add96 = fadd double %mul94, 0x3FE6A09E60000000
  %conv97 = fptrunc double %add96 to float
  br label %if.end99

if.end99:                                         ; preds = %for.body76, %if.then89
  %fac.0 = phi float [ %conv97, %if.then89 ], [ 5.000000e-01, %for.body76 ]
  %idxprom119 = zext i16 %26 to i64
  br label %for.body103

for.body103:                                      ; preds = %for.body103, %if.end99
  %indvars.iv = phi i64 [ 0, %if.end99 ], [ %indvars.iv.next, %for.body103 ]
  %arrayidx107 = getelementptr inbounds [3 x float]* %v, i64 %indvars.iv310, i64 %indvars.iv
  %30 = load float* %arrayidx107, align 4, !tbaa !3
  %arrayidx111 = getelementptr inbounds [3 x float]* %vold, i64 %indvars.iv310, i64 %indvars.iv
  %31 = load float* %arrayidx111, align 4, !tbaa !3
  %add112 = fadd float %30, %31
  %mul113 = fmul float %fac.0, %add112
  %arrayidx117 = getelementptr inbounds [3 x float]* %vt, i64 %indvars.iv310, i64 %indvars.iv
  store float %mul113, float* %arrayidx117, align 4, !tbaa !3
  %arrayidx122 = getelementptr inbounds %struct.t_grp_acc* %1, i64 %idxprom119, i32 5, i64 %indvars.iv
  %32 = load float* %arrayidx122, align 4, !tbaa !3
  %sub123 = fsub float %mul113, %32
  %arrayidx125 = getelementptr inbounds [3 x float]* %v_corrt, i64 0, i64 %indvars.iv
  store float %sub123, float* %arrayidx125, align 4, !tbaa !3
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 3
  br i1 %exitcond, label %for.cond129.loopexit, label %for.body103

for.cond129.loopexit:                             ; preds = %for.body103
  %33 = load float* %arrayidx133, align 4, !tbaa !3
  %mul134 = fmul float %conv87, %33
  %idxprom139 = zext i16 %27 to i64
  %34 = load float* %arrayidx145, align 4, !tbaa !3
  %mul146 = fmul float %conv87, %34
  %35 = load float* %arrayidx157, align 4, !tbaa !3
  %mul158 = fmul float %conv87, %35
  br label %for.body132

for.body132:                                      ; preds = %for.body132.for.body132_crit_edge, %for.cond129.loopexit
  %36 = phi float [ %33, %for.cond129.loopexit ], [ %.pre, %for.body132.for.body132_crit_edge ]
  %indvars.iv306 = phi i64 [ 0, %for.cond129.loopexit ], [ %indvars.iv.next307, %for.body132.for.body132_crit_edge ]
  %mul137 = fmul float %mul134, %36
  %arrayidx143 = getelementptr inbounds %struct.t_grp_tcstat* %0, i64 %idxprom139, i32 2, i64 0, i64 %indvars.iv306
  %37 = load float* %arrayidx143, align 4, !tbaa !3
  %add144 = fadd float %37, %mul137
  store float %add144, float* %arrayidx143, align 4, !tbaa !3
  %mul149 = fmul float %mul146, %36
  %arrayidx155 = getelementptr inbounds %struct.t_grp_tcstat* %0, i64 %idxprom139, i32 2, i64 1, i64 %indvars.iv306
  %38 = load float* %arrayidx155, align 4, !tbaa !3
  %add156 = fadd float %38, %mul149
  store float %add156, float* %arrayidx155, align 4, !tbaa !3
  %mul161 = fmul float %mul158, %36
  %arrayidx167 = getelementptr inbounds %struct.t_grp_tcstat* %0, i64 %idxprom139, i32 2, i64 2, i64 %indvars.iv306
  %39 = load float* %arrayidx167, align 4, !tbaa !3
  %add168 = fadd float %39, %mul161
  store float %add168, float* %arrayidx167, align 4, !tbaa !3
  %indvars.iv.next307 = add i64 %indvars.iv306, 1
  %lftr.wideiv308 = trunc i64 %indvars.iv.next307 to i32
  %exitcond309 = icmp eq i32 %lftr.wideiv308, 3
  br i1 %exitcond309, label %for.end171, label %for.body132.for.body132_crit_edge

for.body132.for.body132_crit_edge:                ; preds = %for.body132
  %arrayidx136.phi.trans.insert = getelementptr inbounds [3 x float]* %v_corrt, i64 0, i64 %indvars.iv.next307
  %.pre = load float* %arrayidx136.phi.trans.insert, align 4, !tbaa !3
  br label %for.body132

for.end171:                                       ; preds = %for.body132
  br i1 %cmp172, label %for.inc194, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.end171
  %40 = load i32** %bPerturbed, align 8, !tbaa !0
  %arrayidx175 = getelementptr inbounds i32* %40, i64 %indvars.iv310
  %41 = load i32* %arrayidx175, align 4, !tbaa !4
  %tobool176 = icmp eq i32 %41, 0
  br i1 %tobool176, label %for.inc194, label %if.then177

if.then177:                                       ; preds = %land.lhs.true
  %42 = load float** %massB, align 8, !tbaa !0
  %arrayidx179 = getelementptr inbounds float* %42, i64 %indvars.iv310
  %43 = load float* %arrayidx179, align 4, !tbaa !3
  %44 = load float** %massA, align 8, !tbaa !0
  %arrayidx181 = getelementptr inbounds float* %44, i64 %indvars.iv310
  %45 = load float* %arrayidx181, align 4, !tbaa !3
  %sub182 = fsub float %43, %45
  %conv183 = fpext float %sub182 to double
  %mul184 = fmul double %conv183, 5.000000e-01
  %mul.i = fmul float %33, %33
  %mul4.i = fmul float %34, %34
  %add.i = fadd float %mul.i, %mul4.i
  %mul7.i = fmul float %35, %35
  %add8.i = fadd float %add.i, %mul7.i
  %conv188 = fpext float %add8.i to double
  %mul189 = fmul double %mul184, %conv188
  %conv190 = fpext float %dvdl.0294 to double
  %sub191 = fsub double %conv190, %mul189
  %conv192 = fptrunc double %sub191 to float
  br label %for.inc194

for.inc194:                                       ; preds = %land.lhs.true, %for.end171, %if.then177
  %dvdl.1 = phi float [ %conv192, %if.then177 ], [ %dvdl.0294, %land.lhs.true ], [ %dvdl.0294, %for.end171 ]
  %indvars.iv.next311 = add i64 %indvars.iv310, 1
  %46 = trunc i64 %indvars.iv.next311 to i32
  %cmp74 = icmp slt i32 %46, %add73.pre-phi
  br i1 %cmp74, label %for.body76, label %for.end196

for.end196:                                       ; preds = %for.inc194, %for.cond72.preheader
  %dvdl.0.lcssa = phi float [ 0.000000e+00, %for.cond72.preheader ], [ %dvdl.1, %for.inc194 ]
  %cmp197 = icmp eq float* %dvdlambda, null
  br i1 %cmp197, label %if.end201, label %if.then199

if.then199:                                       ; preds = %for.end196
  %47 = load float* %dvdlambda, align 4, !tbaa !3
  %add200 = fadd float %dvdl.0.lcssa, %47
  store float %add200, float* %dvdlambda, align 4, !tbaa !3
  br label %if.end201

if.end201:                                        ; preds = %for.end196, %if.then199
  %conv202 = sitofp i32 %homenr to double
  %arrayidx204 = getelementptr inbounds %struct.t_nrnb* %nrnb, i64 0, i32 0, i64 112
  %48 = load double* %arrayidx204, align 8, !tbaa !6
  %add205 = fadd double %conv202, %48
  store double %add205, double* %arrayidx204, align 8, !tbaa !6
  ret void
}

; Function Attrs: nounwind optsize
declare double @sqrt(double) #2

; Function Attrs: nounwind optsize uwtable
define void @calc_ke_part_visc(i32 %bFirstStep, i32 %start, i32 %homenr, [3 x float]* nocapture %box, [3 x float]* nocapture %x, [3 x float]* nocapture %vold, [3 x float]* nocapture %v, [3 x float]* nocapture %vt, %struct.t_grpopts* nocapture %opts, %struct.t_mdatoms* nocapture %md, %struct.t_groups* nocapture %grps, %struct.t_nrnb* nocapture %nrnb, float %lambda, float* %dvdlambda) #0 {
entry:
  %v_corrt = alloca [3 x float], align 4
  %tcstat1 = getelementptr inbounds %struct.t_groups* %grps, i64 0, i32 1
  %0 = load %struct.t_grp_tcstat** %tcstat1, align 8, !tbaa !0
  %ngtc = getelementptr inbounds %struct.t_grpopts* %opts, i64 0, i32 0
  %1 = load i32* %ngtc, align 4, !tbaa !4
  %cmp225 = icmp sgt i32 %1, 0
  br i1 %cmp225, label %for.body, label %for.end

for.body:                                         ; preds = %entry, %for.body.for.body_crit_edge
  %2 = phi %struct.t_grp_tcstat* [ %.pre238, %for.body.for.body_crit_edge ], [ %0, %entry ]
  %indvars.iv235 = phi i64 [ %indvars.iv.next236, %for.body.for.body_crit_edge ], [ 0, %entry ]
  %arraydecay = getelementptr inbounds %struct.t_grp_tcstat* %2, i64 %indvars.iv235, i32 2, i64 0
  %3 = bitcast [3 x float]* %arraydecay to i8*
  call void @llvm.memset.p0i8.i64(i8* %3, i8 0, i64 36, i32 4, i1 false) #3
  %indvars.iv.next236 = add i64 %indvars.iv235, 1
  %4 = load i32* %ngtc, align 4, !tbaa !4
  %5 = trunc i64 %indvars.iv.next236 to i32
  %cmp = icmp slt i32 %5, %4
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  %.pre238 = load %struct.t_grp_tcstat** %tcstat1, align 8, !tbaa !0
  br label %for.body

for.end:                                          ; preds = %for.body, %entry
  %tobool = icmp eq i32 %bFirstStep, 0
  %add20.pre = add nsw i32 %homenr, %start
  br i1 %tobool, label %if.end, label %for.cond4.preheader

for.cond4.preheader:                              ; preds = %for.end
  %cmp5223 = icmp sgt i32 %homenr, 0
  br i1 %cmp5223, label %for.body6.lr.ph, label %for.end142

for.body6.lr.ph:                                  ; preds = %for.cond4.preheader
  %6 = sext i32 %start to i64
  br label %for.body6

for.body6:                                        ; preds = %for.body6.lr.ph, %for.body6
  %indvars.iv233 = phi i64 [ %6, %for.body6.lr.ph ], [ %indvars.iv.next234, %for.body6 ]
  %arraydecay9 = getelementptr inbounds [3 x float]* %v, i64 %indvars.iv233, i64 0
  %arraydecay12 = getelementptr inbounds [3 x float]* %vold, i64 %indvars.iv233, i64 0
  %7 = load float* %arraydecay9, align 4, !tbaa !3
  store float %7, float* %arraydecay12, align 4, !tbaa !3
  %arrayidx2.i213 = getelementptr inbounds [3 x float]* %v, i64 %indvars.iv233, i64 1
  %8 = load float* %arrayidx2.i213, align 4, !tbaa !3
  %arrayidx3.i214 = getelementptr inbounds [3 x float]* %vold, i64 %indvars.iv233, i64 1
  store float %8, float* %arrayidx3.i214, align 4, !tbaa !3
  %arrayidx4.i = getelementptr inbounds [3 x float]* %v, i64 %indvars.iv233, i64 2
  %9 = load float* %arrayidx4.i, align 4, !tbaa !3
  %arrayidx5.i215 = getelementptr inbounds [3 x float]* %vold, i64 %indvars.iv233, i64 2
  store float %9, float* %arrayidx5.i215, align 4, !tbaa !3
  %indvars.iv.next234 = add i64 %indvars.iv233, 1
  %10 = trunc i64 %indvars.iv.next234 to i32
  %cmp5 = icmp slt i32 %10, %add20.pre
  br i1 %cmp5, label %for.body6, label %if.end

if.end:                                           ; preds = %for.end, %for.body6
  %arrayidx17 = getelementptr inbounds [3 x float]* %box, i64 2, i64 2
  %11 = load float* %arrayidx17, align 4, !tbaa !3
  %conv = fpext float %11 to double
  %div = fdiv double 0x401921FB54442D18, %conv
  %conv18 = fptrunc double %div to float
  %cmp21218 = icmp sgt i32 %homenr, 0
  br i1 %cmp21218, label %for.body23.lr.ph, label %for.end142

for.body23.lr.ph:                                 ; preds = %if.end
  %cTC = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 14
  %massT = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 4
  %vcos = getelementptr inbounds %struct.t_groups* %grps, i64 0, i32 3, i32 2
  %arrayidx63 = getelementptr inbounds [3 x float]* %v_corrt, i64 0, i64 0
  %arrayidx91 = getelementptr inbounds [3 x float]* %v_corrt, i64 0, i64 1
  %arrayidx103 = getelementptr inbounds [3 x float]* %v_corrt, i64 0, i64 2
  %cmp118 = icmp eq float* %dvdlambda, null
  %bPerturbed = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 9
  %massB = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 3
  %massA = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 2
  %12 = sext i32 %start to i64
  %.pre = load float** %massT, align 8, !tbaa !0
  br label %for.body23

for.body23:                                       ; preds = %for.body23.lr.ph, %for.inc140
  %13 = phi float* [ %.pre, %for.body23.lr.ph ], [ %22, %for.inc140 ]
  %indvars.iv231 = phi i64 [ %12, %for.body23.lr.ph ], [ %indvars.iv.next232, %for.inc140 ]
  %mvcos.0221 = phi double [ 0.000000e+00, %for.body23.lr.ph ], [ %add74, %for.inc140 ]
  %dvdl.0220 = phi float [ 0.000000e+00, %for.body23.lr.ph ], [ %dvdl.1, %for.inc140 ]
  %14 = load i16** %cTC, align 8, !tbaa !0
  %arrayidx25 = getelementptr inbounds i16* %14, i64 %indvars.iv231
  %15 = load i16* %arrayidx25, align 2, !tbaa !5
  %arrayidx28 = getelementptr inbounds float* %13, i64 %indvars.iv231
  %16 = load float* %arrayidx28, align 4, !tbaa !3
  br label %for.body34

for.body34:                                       ; preds = %for.body34, %for.body23
  %indvars.iv = phi i64 [ 0, %for.body23 ], [ %indvars.iv.next, %for.body34 ]
  %arrayidx38 = getelementptr inbounds [3 x float]* %v, i64 %indvars.iv231, i64 %indvars.iv
  %17 = load float* %arrayidx38, align 4, !tbaa !3
  %arrayidx42 = getelementptr inbounds [3 x float]* %vold, i64 %indvars.iv231, i64 %indvars.iv
  %18 = load float* %arrayidx42, align 4, !tbaa !3
  %add43 = fadd float %17, %18
  %conv46 = fmul float %add43, 5.000000e-01
  %arrayidx50 = getelementptr inbounds [3 x float]* %vt, i64 %indvars.iv231, i64 %indvars.iv
  store float %conv46, float* %arrayidx50, align 4, !tbaa !3
  %arrayidx52 = getelementptr inbounds [3 x float]* %v_corrt, i64 0, i64 %indvars.iv
  store float %conv46, float* %arrayidx52, align 4, !tbaa !3
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 3
  br i1 %exitcond, label %for.end55, label %for.body34

for.end55:                                        ; preds = %for.body34
  %conv30 = fmul float %16, 5.000000e-01
  %arrayidx58 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv231, i64 2
  %19 = load float* %arrayidx58, align 4, !tbaa !3
  %mul59 = fmul float %conv18, %19
  %conv60 = fpext float %mul59 to double
  %call = call double @cos(double %conv60) #4
  %conv61 = fptrunc double %call to float
  %20 = load float* %vcos, align 4, !tbaa !3
  %mul62 = fmul float %conv61, %20
  %21 = load float* %arrayidx63, align 4, !tbaa !3
  %sub = fsub float %21, %mul62
  store float %sub, float* %arrayidx63, align 4, !tbaa !3
  %mul64 = fmul float %conv61, 2.000000e+00
  %22 = load float** %massT, align 8, !tbaa !0
  %arrayidx67 = getelementptr inbounds float* %22, i64 %indvars.iv231
  %23 = load float* %arrayidx67, align 4, !tbaa !3
  %mul68 = fmul float %mul64, %23
  %arrayidx71 = getelementptr inbounds [3 x float]* %v, i64 %indvars.iv231, i64 0
  %24 = load float* %arrayidx71, align 4, !tbaa !3
  %mul72 = fmul float %mul68, %24
  %conv73 = fpext float %mul72 to double
  %mul80 = fmul float %conv30, %sub
  %idxprom85 = zext i16 %15 to i64
  %25 = load float* %arrayidx91, align 4, !tbaa !3
  %mul92 = fmul float %conv30, %25
  %26 = load float* %arrayidx103, align 4, !tbaa !3
  %mul104 = fmul float %conv30, %26
  br label %for.body78

for.body78:                                       ; preds = %for.body78.for.body78_crit_edge, %for.end55
  %27 = phi float [ %sub, %for.end55 ], [ %.pre237, %for.body78.for.body78_crit_edge ]
  %indvars.iv227 = phi i64 [ 0, %for.end55 ], [ %indvars.iv.next228, %for.body78.for.body78_crit_edge ]
  %mul83 = fmul float %mul80, %27
  %arrayidx89 = getelementptr inbounds %struct.t_grp_tcstat* %0, i64 %idxprom85, i32 2, i64 0, i64 %indvars.iv227
  %28 = load float* %arrayidx89, align 4, !tbaa !3
  %add90 = fadd float %28, %mul83
  store float %add90, float* %arrayidx89, align 4, !tbaa !3
  %mul95 = fmul float %mul92, %27
  %arrayidx101 = getelementptr inbounds %struct.t_grp_tcstat* %0, i64 %idxprom85, i32 2, i64 1, i64 %indvars.iv227
  %29 = load float* %arrayidx101, align 4, !tbaa !3
  %add102 = fadd float %29, %mul95
  store float %add102, float* %arrayidx101, align 4, !tbaa !3
  %mul107 = fmul float %mul104, %27
  %arrayidx113 = getelementptr inbounds %struct.t_grp_tcstat* %0, i64 %idxprom85, i32 2, i64 2, i64 %indvars.iv227
  %30 = load float* %arrayidx113, align 4, !tbaa !3
  %add114 = fadd float %30, %mul107
  store float %add114, float* %arrayidx113, align 4, !tbaa !3
  %indvars.iv.next228 = add i64 %indvars.iv227, 1
  %lftr.wideiv229 = trunc i64 %indvars.iv.next228 to i32
  %exitcond230 = icmp eq i32 %lftr.wideiv229, 3
  br i1 %exitcond230, label %for.end117, label %for.body78.for.body78_crit_edge

for.body78.for.body78_crit_edge:                  ; preds = %for.body78
  %arrayidx82.phi.trans.insert = getelementptr inbounds [3 x float]* %v_corrt, i64 0, i64 %indvars.iv.next228
  %.pre237 = load float* %arrayidx82.phi.trans.insert, align 4, !tbaa !3
  br label %for.body78

for.end117:                                       ; preds = %for.body78
  %add74 = fadd double %mvcos.0221, %conv73
  br i1 %cmp118, label %for.inc140, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.end117
  %31 = load i32** %bPerturbed, align 8, !tbaa !0
  %arrayidx121 = getelementptr inbounds i32* %31, i64 %indvars.iv231
  %32 = load i32* %arrayidx121, align 4, !tbaa !4
  %tobool122 = icmp eq i32 %32, 0
  br i1 %tobool122, label %for.inc140, label %if.then123

if.then123:                                       ; preds = %land.lhs.true
  %33 = load float** %massB, align 8, !tbaa !0
  %arrayidx125 = getelementptr inbounds float* %33, i64 %indvars.iv231
  %34 = load float* %arrayidx125, align 4, !tbaa !3
  %35 = load float** %massA, align 8, !tbaa !0
  %arrayidx127 = getelementptr inbounds float* %35, i64 %indvars.iv231
  %36 = load float* %arrayidx127, align 4, !tbaa !3
  %sub128 = fsub float %34, %36
  %conv129 = fpext float %sub128 to double
  %mul130 = fmul double %conv129, 5.000000e-01
  %mul.i = fmul float %sub, %sub
  %mul4.i = fmul float %25, %25
  %add.i = fadd float %mul.i, %mul4.i
  %mul7.i = fmul float %26, %26
  %add8.i = fadd float %add.i, %mul7.i
  %conv134 = fpext float %add8.i to double
  %mul135 = fmul double %mul130, %conv134
  %conv136 = fpext float %dvdl.0220 to double
  %sub137 = fsub double %conv136, %mul135
  %conv138 = fptrunc double %sub137 to float
  br label %for.inc140

for.inc140:                                       ; preds = %land.lhs.true, %for.end117, %if.then123
  %dvdl.1 = phi float [ %conv138, %if.then123 ], [ %dvdl.0220, %land.lhs.true ], [ %dvdl.0220, %for.end117 ]
  %indvars.iv.next232 = add i64 %indvars.iv231, 1
  %37 = trunc i64 %indvars.iv.next232 to i32
  %cmp21 = icmp slt i32 %37, %add20.pre
  br i1 %cmp21, label %for.body23, label %for.cond19.for.end142_crit_edge

for.cond19.for.end142_crit_edge:                  ; preds = %for.inc140
  %phitmp = fptrunc double %add74 to float
  br label %for.end142

for.end142:                                       ; preds = %for.cond4.preheader, %for.cond19.for.end142_crit_edge, %if.end
  %mvcos.0.lcssa = phi float [ %phitmp, %for.cond19.for.end142_crit_edge ], [ 0.000000e+00, %if.end ], [ 0.000000e+00, %for.cond4.preheader ]
  %dvdl.0.lcssa = phi float [ %dvdl.1, %for.cond19.for.end142_crit_edge ], [ 0.000000e+00, %if.end ], [ 0.000000e+00, %for.cond4.preheader ]
  %cmp143 = icmp eq float* %dvdlambda, null
  br i1 %cmp143, label %if.end147, label %if.then145

if.then145:                                       ; preds = %for.end142
  %38 = load float* %dvdlambda, align 4, !tbaa !3
  %add146 = fadd float %dvdl.0.lcssa, %38
  store float %add146, float* %dvdlambda, align 4, !tbaa !3
  br label %if.end147

if.end147:                                        ; preds = %for.end142, %if.then145
  %mvcos149 = getelementptr inbounds %struct.t_groups* %grps, i64 0, i32 3, i32 1
  store float %mvcos.0.lcssa, float* %mvcos149, align 4, !tbaa !3
  %conv150 = sitofp i32 %homenr to double
  %arrayidx152 = getelementptr inbounds %struct.t_nrnb* %nrnb, i64 0, i32 0, i64 112
  %39 = load double* %arrayidx152, align 8, !tbaa !6
  %add153 = fadd double %conv150, %39
  store double %add153, double* %arrayidx152, align 8, !tbaa !6
  ret void
}

; Function Attrs: nounwind optsize
declare double @cos(double) #2

; Function Attrs: nounwind optsize uwtable
define void @update(i32 %natoms, i32 %start, i32 %homenr, i32 %step, float %lambda, float* %dvdlambda, %struct.t_parm* %parm, float %SAfactor, %struct.t_mdatoms* %md, [3 x float]* %x, %struct.t_graph* %graph, [3 x float]* %force, [3 x float]* %delta_f, [3 x float]* nocapture %vold, [3 x float]* nocapture %vt, [3 x float]* %v, %struct.t_topology* %top, %struct.t_groups* %grps, [3 x float]* %vir_part, %struct.t_commrec* %cr, %struct.t_nrnb* %nrnb, i32 %bTYZ, i32 %bDoUpdate, %struct.t_edsamyn* %edyn, %struct.t_pull* %pulldata, i32 %bNEMD) #0 {
entry:
  %vrel.i = alloca [3 x float], align 4
  %M = alloca [3 x [3 x float]], align 16
  %0 = bitcast [3 x [3 x float]]* %M to i8*
  call void @llvm.lifetime.start(i64 36, i8* %0) #3
  %ir1 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0
  %.b = load i1* @update.bFirst, align 1
  br i1 %.b, label %if.end18, label %if.then

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE** @stdlog, align 8, !tbaa !0
  %eI = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 0
  %2 = load i32* %eI, align 4, !tbaa !4
  %cmp = icmp ne i32 %2, 1
  %conv = zext i1 %cmp to i32
  %call = call i32 @init_constraints(%struct._IO_FILE* %1, %struct.t_topology* %top, %struct.t_inputrec* %ir1, %struct.t_mdatoms* %md, i32 %start, i32 %homenr, i32 %conv, %struct.t_commrec* %cr) #4
  store i32 %call, i32* @update.bHaveConstr, align 4, !tbaa !4
  %tobool3 = icmp eq i32 %call, 0
  br i1 %tobool3, label %lor.rhs, label %lor.end

lor.rhs:                                          ; preds = %if.then
  %bPull = getelementptr inbounds %struct.t_pull* %pulldata, i64 0, i32 16
  %3 = load i32* %bPull, align 4, !tbaa !4
  %tobool4 = icmp ne i32 %3, 0
  br label %lor.end

lor.end:                                          ; preds = %if.then, %lor.rhs
  %4 = phi i1 [ true, %if.then ], [ %tobool4, %lor.rhs ]
  %lor.ext = zext i1 %4 to i32
  store i32 %lor.ext, i32* @update.bHaveConstr, align 4, !tbaa !4
  %etc = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 27
  %5 = load i32* %etc, align 4, !tbaa !4
  %cmp5 = icmp eq i32 %5, 2
  br i1 %cmp5, label %lor.end10, label %lor.rhs7

lor.rhs7:                                         ; preds = %lor.end
  %epc = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 28
  %6 = load i32* %epc, align 4, !tbaa !4
  %cmp8 = icmp eq i32 %6, 2
  br label %lor.end10

lor.end10:                                        ; preds = %lor.rhs7, %lor.end
  %7 = phi i1 [ true, %lor.end ], [ %cmp8, %lor.rhs7 ]
  %lor.ext11 = zext i1 %7 to i32
  store i32 %lor.ext11, i32* @update.bExtended, align 4, !tbaa !4
  %bEdsam = getelementptr inbounds %struct.t_edsamyn* %edyn, i64 0, i32 0
  %8 = load i32* %bEdsam, align 4, !tbaa !4
  %tobool12 = icmp eq i32 %8, 0
  br i1 %tobool12, label %if.end, label %if.then13

if.then13:                                        ; preds = %lor.end10
  %9 = load %struct._IO_FILE** @stdlog, align 8, !tbaa !0
  %arraydecay = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 1, i64 0
  call void @init_edsam(%struct._IO_FILE* %9, %struct.t_topology* %top, %struct.t_mdatoms* %md, i32 %start, i32 %homenr, [3 x float]* %x, [3 x float]* %arraydecay, %struct.t_edsamyn* %edyn, %struct.t_edpar* @update.edpar) #4
  br label %if.end

if.end:                                           ; preds = %lor.end10, %if.then13
  %call14 = call i8* @save_calloc(i8* getelementptr inbounds ([7 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str1, i64 0, i64 0), i32 633, i32 %natoms, i32 12) #4
  %10 = bitcast i8* %call14 to [3 x float]*
  store [3 x float]* %10, [3 x float]** @update.xprime, align 8, !tbaa !0
  %call15 = call i8* @save_calloc(i8* getelementptr inbounds ([6 x i8]* @.str4, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str1, i64 0, i64 0), i32 634, i32 %homenr, i32 12) #4
  %11 = bitcast i8* %call15 to [3 x float]*
  store [3 x float]* %11, [3 x float]** @update.x_unc, align 8, !tbaa !0
  %ngacc = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 80, i32 1
  %12 = load i32* %ngacc, align 4, !tbaa !4
  store i32 %12, i32* @update.ngacc, align 4, !tbaa !4
  %ngtc = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 80, i32 0
  %13 = load i32* %ngtc, align 4, !tbaa !4
  store i32 %13, i32* @update.ngtc, align 4, !tbaa !4
  %call17 = call i8* @save_calloc(i8* getelementptr inbounds ([5 x i8]* @.str5, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str1, i64 0, i64 0), i32 639, i32 %13, i32 12) #4
  %14 = bitcast i8* %call17 to [3 x float]*
  store [3 x float]* %14, [3 x float]** @update.lamb, align 8, !tbaa !0
  store i1 true, i1* @update.bFirst, align 1
  br label %if.end18

if.end18:                                         ; preds = %entry, %if.end
  %delta_t = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 15
  %15 = load float* %delta_t, align 4, !tbaa !3
  %conv19 = fpext float %15 to double
  %conv20 = fdiv float 1.000000e+00, %15
  %mul = fmul double %conv19, %conv19
  %div21 = fdiv double 1.000000e+00, %mul
  %conv22 = fptrunc double %div21 to float
  %16 = load i32* @update.ngtc, align 4, !tbaa !4
  %cmp23963 = icmp sgt i32 %16, 0
  br i1 %cmp23963, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %if.end18
  %tcstat = getelementptr inbounds %struct.t_groups* %grps, i64 0, i32 1
  %17 = load %struct.t_grp_tcstat** %tcstat, align 8, !tbaa !0
  %tobool26 = icmp eq i32 %bTYZ, 0
  %18 = load [3 x float]** @update.lamb, align 8, !tbaa !0
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %indvars.iv1010 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next1011, %for.body ]
  %lambda25 = getelementptr inbounds %struct.t_grp_tcstat* %17, i64 %indvars.iv1010, i32 1
  %19 = load float* %lambda25, align 4, !tbaa !3
  %arrayidx33 = getelementptr inbounds [3 x float]* %18, i64 %indvars.iv1010, i64 0
  %. = select i1 %tobool26, float %19, float 1.000000e+00
  store float %., float* %arrayidx33, align 4, !tbaa !3
  %arrayidx37 = getelementptr inbounds [3 x float]* %18, i64 %indvars.iv1010, i64 1
  store float %19, float* %arrayidx37, align 4, !tbaa !3
  %arrayidx40 = getelementptr inbounds [3 x float]* %18, i64 %indvars.iv1010, i64 2
  store float %19, float* %arrayidx40, align 4, !tbaa !3
  %indvars.iv.next1011 = add i64 %indvars.iv1010, 1
  %20 = trunc i64 %indvars.iv.next1011 to i32
  %cmp23 = icmp slt i32 %20, %16
  br i1 %cmp23, label %for.body, label %for.end

for.end:                                          ; preds = %for.body, %if.end18
  %tobool41 = icmp ne i32 %bDoUpdate, 0
  br i1 %tobool41, label %for.cond43.preheader, label %for.cond227.preheader

for.cond227.preheader:                            ; preds = %for.end
  %add228 = add nsw i32 %homenr, %start
  %cmp229961 = icmp sgt i32 %homenr, 0
  br i1 %cmp229961, label %for.body231.lr.ph, label %if.end241

for.body231.lr.ph:                                ; preds = %for.cond227.preheader
  %21 = load [3 x float]** @update.xprime, align 8, !tbaa !0
  %22 = sext i32 %start to i64
  br label %for.body231

for.cond43.preheader:                             ; preds = %for.end
  %23 = load i32* @update.ngacc, align 4, !tbaa !4
  %cmp44959 = icmp sgt i32 %23, 0
  br i1 %cmp44959, label %for.body46.lr.ph, label %for.end61

for.body46.lr.ph:                                 ; preds = %for.cond43.preheader
  %grpstat = getelementptr inbounds %struct.t_groups* %grps, i64 0, i32 2
  %24 = load %struct.t_grp_acc** %grpstat, align 8, !tbaa !0
  br label %for.body46

for.body46:                                       ; preds = %for.body46.lr.ph, %for.body46
  %indvars.iv1006 = phi i64 [ 0, %for.body46.lr.ph ], [ %indvars.iv.next1007, %for.body46 ]
  %arraydecay49 = getelementptr inbounds %struct.t_grp_acc* %24, i64 %indvars.iv1006, i32 3, i64 0
  %arraydecay53 = getelementptr inbounds %struct.t_grp_acc* %24, i64 %indvars.iv1006, i32 4, i64 0
  %25 = load float* %arraydecay49, align 4, !tbaa !3
  store float %25, float* %arraydecay53, align 4, !tbaa !3
  %arrayidx2.i = getelementptr inbounds %struct.t_grp_acc* %24, i64 %indvars.iv1006, i32 3, i64 1
  %26 = load float* %arrayidx2.i, align 4, !tbaa !3
  %arrayidx3.i = getelementptr inbounds %struct.t_grp_acc* %24, i64 %indvars.iv1006, i32 4, i64 1
  store float %26, float* %arrayidx3.i, align 4, !tbaa !3
  %arrayidx4.i = getelementptr inbounds %struct.t_grp_acc* %24, i64 %indvars.iv1006, i32 3, i64 2
  %27 = load float* %arrayidx4.i, align 4, !tbaa !3
  %arrayidx5.i = getelementptr inbounds %struct.t_grp_acc* %24, i64 %indvars.iv1006, i32 4, i64 2
  store float %27, float* %arrayidx5.i, align 4, !tbaa !3
  store float 0.000000e+00, float* %arraydecay49, align 4, !tbaa !3
  store float 0.000000e+00, float* %arrayidx2.i, align 4, !tbaa !3
  store float 0.000000e+00, float* %arrayidx4.i, align 4, !tbaa !3
  %indvars.iv.next1007 = add i64 %indvars.iv1006, 1
  %28 = trunc i64 %indvars.iv.next1007 to i32
  %cmp44 = icmp slt i32 %28, %23
  br i1 %cmp44, label %for.body46, label %for.end61

for.end61:                                        ; preds = %for.body46, %for.cond43.preheader
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 36, i32 16, i1 false) #3
  %epc63 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 28
  %29 = load i32* %epc63, align 4, !tbaa !4
  %cmp64 = icmp eq i32 %29, 2
  br i1 %cmp64, label %if.then66, label %if.end73

if.then66:                                        ; preds = %for.end61
  %arraydecay62 = getelementptr inbounds [3 x [3 x float]]* %M, i64 0, i64 0
  %arraydecay68 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 4, i64 0
  %arraydecay70 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 1, i64 0
  %arraydecay71 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 2, i64 0
  call void @parrinellorahman_pcoupl(%struct.t_inputrec* %ir1, i32 %step, [3 x float]* %arraydecay68, [3 x float]* %arraydecay70, [3 x float]* %arraydecay71, [3 x float]* %arraydecay62) #4
  br label %if.end73

if.end73:                                         ; preds = %if.then66, %for.end61
  call void @_where(i8* getelementptr inbounds ([54 x i8]* @.str1, i64 0, i64 0), i32 670) #4
  %eI77 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 0
  %30 = load i32* %eI77, align 4, !tbaa !4
  switch i32 %30, label %if.else213 [
    i32 0, label %if.then80
    i32 4, label %if.then107
    i32 3, label %if.then199
  ]

if.then80:                                        ; preds = %if.end73
  %cos_accel = getelementptr inbounds %struct.t_groups* %grps, i64 0, i32 3, i32 0
  %31 = load float* %cos_accel, align 4, !tbaa !3
  %fabsf845 = call float @fabsf(float %31) #5
  %32 = fpext float %fabsf845 to double
  %cmp83 = fcmp olt double %32, 1.200000e-38
  %33 = load [3 x float]** @update.lamb, align 8, !tbaa !0
  br i1 %cmp83, label %if.then85, label %if.else91

if.then85:                                        ; preds = %if.then80
  %grpstat86 = getelementptr inbounds %struct.t_groups* %grps, i64 0, i32 2
  %34 = load %struct.t_grp_acc** %grpstat86, align 8, !tbaa !0
  %tcstat87 = getelementptr inbounds %struct.t_groups* %grps, i64 0, i32 1
  %35 = load %struct.t_grp_tcstat** %tcstat87, align 8, !tbaa !0
  %acc = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 80, i32 7
  %36 = load [3 x float]** %acc, align 8, !tbaa !0
  %nFreeze = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 80, i32 8
  %37 = load [3 x i32]** %nFreeze, align 8, !tbaa !0
  %invmass = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 5
  %38 = load float** %invmass, align 8, !tbaa !0
  %ptype = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 13
  %39 = load i16** %ptype, align 8, !tbaa !0
  %cFREEZE = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 17
  %40 = load i16** %cFREEZE, align 8, !tbaa !0
  %cACC = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 16
  %41 = load i16** %cACC, align 8, !tbaa !0
  %cTC = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 14
  %42 = load i16** %cTC, align 8, !tbaa !0
  %43 = load [3 x float]** @update.xprime, align 8, !tbaa !0
  %44 = load i32* @update.bExtended, align 4, !tbaa !4
  %45 = bitcast [3 x float]* %vrel.i to i8*
  call void @llvm.lifetime.start(i64 12, i8* %45)
  %tobool.i = icmp eq i32 %44, 0
  %add122.i = add nsw i32 %homenr, %start
  %cmp123358.i = icmp sgt i32 %homenr, 0
  br i1 %tobool.i, label %for.cond121.preheader.i, label %for.cond.preheader.i867

for.cond.preheader.i867:                          ; preds = %if.then85
  br i1 %cmp123358.i, label %for.body.lr.ph.i, label %if.end216

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i867
  %arraydecay19.i = getelementptr inbounds [3 x float]* %vrel.i, i64 0, i64 0
  %arrayidx9.i.i = getelementptr inbounds [3 x float]* %vrel.i, i64 0, i64 1
  %arrayidx10.i.i = getelementptr inbounds [3 x float]* %vrel.i, i64 0, i64 2
  %46 = sext i32 %start to i64
  br label %for.body.i873

for.cond121.preheader.i:                          ; preds = %if.then85
  br i1 %cmp123358.i, label %for.body125.lr.ph.i, label %if.end216

for.body125.lr.ph.i:                              ; preds = %for.cond121.preheader.i
  %47 = sext i32 %start to i64
  br label %for.body125.i

for.body.i873:                                    ; preds = %for.inc117.i, %for.body.lr.ph.i
  %indvars.iv372.i = phi i64 [ %46, %for.body.lr.ph.i ], [ %indvars.iv.next373.i, %for.inc117.i ]
  %arrayidx.i868 = getelementptr inbounds float* %38, i64 %indvars.iv372.i
  %48 = load float* %arrayidx.i868, align 4, !tbaa !3
  %conv.i869 = fpext float %48 to double
  %arrayidx2.i870 = getelementptr inbounds i16* %40, i64 %indvars.iv372.i
  %49 = load i16* %arrayidx2.i870, align 2, !tbaa !5
  %arrayidx5.i871 = getelementptr inbounds i16* %41, i64 %indvars.iv372.i
  %50 = load i16* %arrayidx5.i871, align 2, !tbaa !5
  %arrayidx8.i = getelementptr inbounds i16* %42, i64 %indvars.iv372.i
  %51 = load i16* %arrayidx8.i, align 2, !tbaa !5
  %idxprom10.i = zext i16 %51 to i64
  %xi12.i = getelementptr inbounds %struct.t_grp_tcstat* %35, i64 %idxprom10.i, i32 3
  %52 = load float* %xi12.i, align 4, !tbaa !3
  %arraydecay.i = getelementptr inbounds [3 x float]* %v, i64 %indvars.iv372.i, i64 0
  %idxprom15.i = zext i16 %50 to i64
  %arraydecay18.i = getelementptr inbounds %struct.t_grp_acc* %34, i64 %idxprom15.i, i32 4, i64 0
  %53 = load float* %arraydecay.i, align 4, !tbaa !3
  %54 = load float* %arraydecay18.i, align 4, !tbaa !3
  %sub.i.i872 = fsub float %53, %54
  %arrayidx2.i.i = getelementptr inbounds [3 x float]* %v, i64 %indvars.iv372.i, i64 1
  %55 = load float* %arrayidx2.i.i, align 4, !tbaa !3
  %arrayidx3.i.i = getelementptr inbounds %struct.t_grp_acc* %34, i64 %idxprom15.i, i32 4, i64 1
  %56 = load float* %arrayidx3.i.i, align 4, !tbaa !3
  %sub4.i.i = fsub float %55, %56
  %arrayidx5.i.i = getelementptr inbounds [3 x float]* %v, i64 %indvars.iv372.i, i64 2
  %57 = load float* %arrayidx5.i.i, align 4, !tbaa !3
  %arrayidx6.i.i = getelementptr inbounds %struct.t_grp_acc* %34, i64 %idxprom15.i, i32 4, i64 2
  %58 = load float* %arrayidx6.i.i, align 4, !tbaa !3
  %sub7.i.i = fsub float %57, %58
  store float %sub.i.i872, float* %arraydecay19.i, align 4, !tbaa !3
  store float %sub4.i.i, float* %arrayidx9.i.i, align 4, !tbaa !3
  store float %sub7.i.i, float* %arrayidx10.i.i, align 4, !tbaa !3
  %arrayidx37.i = getelementptr inbounds i16* %39, i64 %indvars.iv372.i
  %59 = load i16* %arrayidx37.i, align 2, !tbaa !5
  %idxprom48.i = zext i16 %49 to i64
  br label %for.body23.i

for.body23.i:                                     ; preds = %for.inc.for.body23_crit_edge.i, %for.body.i873
  %60 = phi float [ %53, %for.body.i873 ], [ %.pre.i, %for.inc.for.body23_crit_edge.i ]
  %indvars.iv367.i = phi i64 [ 0, %for.body.i873 ], [ %indvars.iv.next368.i, %for.inc.for.body23_crit_edge.i ]
  %arrayidx27.i = getelementptr inbounds [3 x float]* %33, i64 %idxprom10.i, i64 %indvars.iv367.i
  %61 = load float* %arrayidx27.i, align 4, !tbaa !3
  %arrayidx31.i874 = getelementptr inbounds [3 x float]* %v, i64 %indvars.iv372.i, i64 %indvars.iv367.i
  %arrayidx35.i = getelementptr inbounds [3 x float]* %vold, i64 %indvars.iv372.i, i64 %indvars.iv367.i
  store float %60, float* %arrayidx35.i, align 4, !tbaa !3
  switch i16 %59, label %land.lhs.true46.i [
    i16 4, label %if.else.i
    i16 2, label %if.else.i
  ]

land.lhs.true46.i:                                ; preds = %for.body23.i
  %arrayidx50.i = getelementptr inbounds [3 x i32]* %37, i64 %idxprom48.i, i64 %indvars.iv367.i
  %62 = load i32* %arrayidx50.i, align 4, !tbaa !4
  %tobool51.i = icmp eq i32 %62, 0
  br i1 %tobool51.i, label %if.then52.i, label %if.else.i

if.then52.i:                                      ; preds = %land.lhs.true46.i
  %conv53.i = fpext float %61 to double
  %arrayidx55.i = getelementptr inbounds [3 x float]* %vrel.i, i64 0, i64 %indvars.iv367.i
  %63 = load float* %arrayidx55.i, align 4, !tbaa !3
  %conv56.i = fpext float %63 to double
  %arrayidx60.i = getelementptr inbounds [3 x float]* %force, i64 %indvars.iv372.i, i64 %indvars.iv367.i
  %64 = load float* %arrayidx60.i, align 4, !tbaa !3
  %conv61.i = fpext float %64 to double
  %mul.i875 = fmul double %conv.i869, %conv61.i
  %mul64.i = fmul float %52, %63
  %conv65.i = fpext float %mul64.i to double
  %sub.i = fsub double %mul.i875, %conv65.i
  %arraydecay68.i = getelementptr inbounds [3 x [3 x float]]* %M, i64 0, i64 %indvars.iv367.i, i64 0
  %65 = load float* %arraydecay68.i, align 4, !tbaa !3
  %mul.i.i876 = fmul float %sub.i.i872, %65
  %arrayidx2.i353.i = getelementptr inbounds [3 x [3 x float]]* %M, i64 0, i64 %indvars.iv367.i, i64 1
  %66 = load float* %arrayidx2.i353.i, align 4, !tbaa !3
  %mul4.i.i = fmul float %sub4.i.i, %66
  %add.i.i877 = fadd float %mul.i.i876, %mul4.i.i
  %arrayidx5.i355.i = getelementptr inbounds [3 x [3 x float]]* %M, i64 0, i64 %indvars.iv367.i, i64 2
  %67 = load float* %arrayidx5.i355.i, align 4, !tbaa !3
  %mul7.i.i = fmul float %sub7.i.i, %67
  %add8.i.i = fadd float %add.i.i877, %mul7.i.i
  %conv70.i = fpext float %add8.i.i to double
  %sub71.i = fsub double %sub.i, %conv70.i
  %mul72.i = fmul double %conv19, %sub71.i
  %add73.i = fadd double %conv56.i, %mul72.i
  %mul74.i = fmul double %conv53.i, %add73.i
  %conv75.i = fptrunc double %mul74.i to float
  %arrayidx80.i = getelementptr inbounds %struct.t_grp_acc* %34, i64 %idxprom15.i, i32 4, i64 %indvars.iv367.i
  %68 = load float* %arrayidx80.i, align 4, !tbaa !3
  %conv81.i = fpext float %68 to double
  %arrayidx85.i = getelementptr inbounds [3 x float]* %36, i64 %idxprom15.i, i64 %indvars.iv367.i
  %69 = load float* %arrayidx85.i, align 4, !tbaa !3
  %conv86.i = fpext float %69 to double
  %mul87.i = fmul double %conv19, %conv86.i
  %add88.i = fadd double %conv81.i, %mul87.i
  %conv89.i = fpext float %conv75.i to double
  %add90.i = fadd double %add88.i, %conv89.i
  %conv91.i878 = fptrunc double %add90.i to float
  store float %conv91.i878, float* %arrayidx31.i874, align 4, !tbaa !3
  %arrayidx99.i = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv372.i, i64 %indvars.iv367.i
  %70 = load float* %arrayidx99.i, align 4, !tbaa !3
  %conv100.i = fpext float %70 to double
  %conv101.i = fpext float %conv91.i878 to double
  %mul102.i = fmul double %conv19, %conv101.i
  %add103.i = fadd double %conv100.i, %mul102.i
  %conv104.i = fptrunc double %add103.i to float
  %arrayidx108.i = getelementptr inbounds [3 x float]* %43, i64 %indvars.iv372.i, i64 %indvars.iv367.i
  store float %conv104.i, float* %arrayidx108.i, align 4, !tbaa !3
  br label %for.inc.i

if.else.i:                                        ; preds = %land.lhs.true46.i, %for.body23.i, %for.body23.i
  %arrayidx112.i = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv372.i, i64 %indvars.iv367.i
  %71 = load float* %arrayidx112.i, align 4, !tbaa !3
  %arrayidx116.i = getelementptr inbounds [3 x float]* %43, i64 %indvars.iv372.i, i64 %indvars.iv367.i
  store float %71, float* %arrayidx116.i, align 4, !tbaa !3
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.else.i, %if.then52.i
  %indvars.iv.next368.i = add i64 %indvars.iv367.i, 1
  %lftr.wideiv369.i = trunc i64 %indvars.iv.next368.i to i32
  %exitcond370.i = icmp eq i32 %lftr.wideiv369.i, 3
  br i1 %exitcond370.i, label %for.inc117.i, label %for.inc.for.body23_crit_edge.i

for.inc.for.body23_crit_edge.i:                   ; preds = %for.inc.i
  %arrayidx31.phi.trans.insert.i = getelementptr inbounds [3 x float]* %v, i64 %indvars.iv372.i, i64 %indvars.iv.next368.i
  %.pre.i = load float* %arrayidx31.phi.trans.insert.i, align 4, !tbaa !3
  br label %for.body23.i

for.inc117.i:                                     ; preds = %for.inc.i
  %indvars.iv.next373.i = add i64 %indvars.iv372.i, 1
  %72 = trunc i64 %indvars.iv.next373.i to i32
  %cmp.i879 = icmp slt i32 %72, %add122.i
  br i1 %cmp.i879, label %for.body.i873, label %if.end216

for.body125.i:                                    ; preds = %for.inc239.i, %for.body125.lr.ph.i
  %indvars.iv365.i = phi i64 [ %47, %for.body125.lr.ph.i ], [ %indvars.iv.next366.i, %for.inc239.i ]
  %arrayidx127.i = getelementptr inbounds float* %38, i64 %indvars.iv365.i
  %73 = load float* %arrayidx127.i, align 4, !tbaa !3
  %conv128.i = fpext float %73 to double
  %mul129.i = fmul double %conv19, %conv128.i
  %arrayidx131.i = getelementptr inbounds i16* %40, i64 %indvars.iv365.i
  %74 = load i16* %arrayidx131.i, align 2, !tbaa !5
  %arrayidx134.i = getelementptr inbounds i16* %41, i64 %indvars.iv365.i
  %75 = load i16* %arrayidx134.i, align 2, !tbaa !5
  %arrayidx137.i = getelementptr inbounds i16* %42, i64 %indvars.iv365.i
  %76 = load i16* %arrayidx137.i, align 2, !tbaa !5
  %idxprom148.i = zext i16 %76 to i64
  %arrayidx156.i = getelementptr inbounds i16* %39, i64 %indvars.iv365.i
  %77 = load i16* %arrayidx156.i, align 2, !tbaa !5
  %idxprom168.i = zext i16 %74 to i64
  %idxprom185.i = zext i16 %75 to i64
  br label %for.body142.i

for.body142.i:                                    ; preds = %for.inc236.i, %for.body125.i
  %indvars.iv.i880 = phi i64 [ 0, %for.body125.i ], [ %indvars.iv.next.i881, %for.inc236.i ]
  %arrayidx146.i = getelementptr inbounds [3 x float]* %v, i64 %indvars.iv365.i, i64 %indvars.iv.i880
  %78 = load float* %arrayidx146.i, align 4, !tbaa !3
  %arrayidx150.i = getelementptr inbounds [3 x float]* %33, i64 %idxprom148.i, i64 %indvars.iv.i880
  %79 = load float* %arrayidx150.i, align 4, !tbaa !3
  %arrayidx154.i = getelementptr inbounds [3 x float]* %vold, i64 %indvars.iv365.i, i64 %indvars.iv.i880
  store float %78, float* %arrayidx154.i, align 4, !tbaa !3
  switch i16 %77, label %land.lhs.true166.i [
    i16 4, label %if.else222.i
    i16 2, label %if.else222.i
  ]

land.lhs.true166.i:                               ; preds = %for.body142.i
  %arrayidx170.i = getelementptr inbounds [3 x i32]* %37, i64 %idxprom168.i, i64 %indvars.iv.i880
  %80 = load i32* %arrayidx170.i, align 4, !tbaa !4
  %tobool171.i = icmp eq i32 %80, 0
  br i1 %tobool171.i, label %if.then172.i, label %if.else222.i

if.then172.i:                                     ; preds = %land.lhs.true166.i
  %conv173.i = fpext float %79 to double
  %conv174.i = fpext float %78 to double
  %arrayidx178.i = getelementptr inbounds [3 x float]* %force, i64 %indvars.iv365.i, i64 %indvars.iv.i880
  %81 = load float* %arrayidx178.i, align 4, !tbaa !3
  %conv179.i = fpext float %81 to double
  %mul180.i = fmul double %mul129.i, %conv179.i
  %add181.i = fadd double %conv174.i, %mul180.i
  %mul182.i = fmul double %conv173.i, %add181.i
  %conv183.i = fptrunc double %mul182.i to float
  %arrayidx188.i = getelementptr inbounds %struct.t_grp_acc* %34, i64 %idxprom185.i, i32 4, i64 %indvars.iv.i880
  %82 = load float* %arrayidx188.i, align 4, !tbaa !3
  %conv189.i = fpext float %conv183.i to double
  %arrayidx193.i = getelementptr inbounds [3 x float]* %36, i64 %idxprom185.i, i64 %indvars.iv.i880
  %83 = load float* %arrayidx193.i, align 4, !tbaa !3
  %conv194.i = fpext float %83 to double
  %mul195.i = fmul double %conv19, %conv194.i
  %add196.i = fadd double %mul195.i, %conv189.i
  %conv197.i = fptrunc double %add196.i to float
  %conv198.i = fpext float %conv197.i to double
  %sub200.i = fsub double 1.000000e+00, %conv173.i
  %conv201.i = fpext float %82 to double
  %mul202.i = fmul double %sub200.i, %conv201.i
  %add203.i = fadd double %mul202.i, %conv198.i
  %conv204.i = fptrunc double %add203.i to float
  store float %conv204.i, float* %arrayidx146.i, align 4, !tbaa !3
  %arrayidx212.i = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv365.i, i64 %indvars.iv.i880
  %84 = load float* %arrayidx212.i, align 4, !tbaa !3
  %conv213.i = fpext float %84 to double
  %conv214.i = fpext float %conv204.i to double
  %mul215.i = fmul double %conv19, %conv214.i
  %add216.i = fadd double %conv213.i, %mul215.i
  %conv217.i = fptrunc double %add216.i to float
  %arrayidx221.i = getelementptr inbounds [3 x float]* %43, i64 %indvars.iv365.i, i64 %indvars.iv.i880
  store float %conv217.i, float* %arrayidx221.i, align 4, !tbaa !3
  br label %for.inc236.i

if.else222.i:                                     ; preds = %land.lhs.true166.i, %for.body142.i, %for.body142.i
  store float 0.000000e+00, float* %arrayidx146.i, align 4, !tbaa !3
  %arrayidx230.i = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv365.i, i64 %indvars.iv.i880
  %85 = load float* %arrayidx230.i, align 4, !tbaa !3
  %arrayidx234.i = getelementptr inbounds [3 x float]* %43, i64 %indvars.iv365.i, i64 %indvars.iv.i880
  store float %85, float* %arrayidx234.i, align 4, !tbaa !3
  br label %for.inc236.i

for.inc236.i:                                     ; preds = %if.else222.i, %if.then172.i
  %indvars.iv.next.i881 = add i64 %indvars.iv.i880, 1
  %lftr.wideiv985 = trunc i64 %indvars.iv.next.i881 to i32
  %exitcond986 = icmp eq i32 %lftr.wideiv985, 3
  br i1 %exitcond986, label %for.inc239.i, label %for.body142.i

for.inc239.i:                                     ; preds = %for.inc236.i
  %indvars.iv.next366.i = add i64 %indvars.iv365.i, 1
  %86 = trunc i64 %indvars.iv.next366.i to i32
  %cmp123.i = icmp slt i32 %86, %add122.i
  br i1 %cmp123.i, label %for.body125.i, label %if.end216

if.else91:                                        ; preds = %if.then80
  %invmass92 = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 5
  %87 = load float** %invmass92, align 8, !tbaa !0
  %tcstat93 = getelementptr inbounds %struct.t_groups* %grps, i64 0, i32 1
  %88 = load %struct.t_grp_tcstat** %tcstat93, align 8, !tbaa !0
  %ptype94 = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 13
  %89 = load i16** %ptype94, align 8, !tbaa !0
  %cTC95 = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 14
  %90 = load i16** %cTC95, align 8, !tbaa !0
  %91 = load [3 x float]** @update.xprime, align 8, !tbaa !0
  %vcos = getelementptr inbounds %struct.t_groups* %grps, i64 0, i32 3, i32 2
  %92 = load float* %vcos, align 4, !tbaa !3
  %93 = load i32* @update.bExtended, align 4, !tbaa !4
  %94 = bitcast [3 x float]* %vrel.i to i8*
  call void @llvm.lifetime.start(i64 12, i8* %94) #3
  %arrayidx1.i885 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 1, i64 2, i64 2
  %95 = load float* %arrayidx1.i885, align 4, !tbaa !3
  %conv.i886 = fpext float %95 to double
  %div.i887 = fdiv double 0x401921FB54442D18, %conv.i886
  %conv2.i = fptrunc double %div.i887 to float
  %tobool.i888 = icmp eq i32 %93, 0
  %add120.i = add nsw i32 %homenr, %start
  %cmp121362.i = icmp sgt i32 %homenr, 0
  br i1 %tobool.i888, label %for.cond119.preheader.i, label %for.cond.preheader.i889

for.cond.preheader.i889:                          ; preds = %if.else91
  br i1 %cmp121362.i, label %for.body.lr.ph.i891, label %if.end216

for.body.lr.ph.i891:                              ; preds = %for.cond.preheader.i889
  %arraydecay22.i = getelementptr inbounds [3 x float]* %vrel.i, i64 0, i64 0
  %arrayidx3.i358.i = getelementptr inbounds [3 x float]* %vrel.i, i64 0, i64 1
  %arrayidx5.i360.i = getelementptr inbounds [3 x float]* %vrel.i, i64 0, i64 2
  %conv83.i890 = fpext float %31 to double
  %96 = sext i32 %start to i64
  br label %for.body.i904

for.cond119.preheader.i:                          ; preds = %if.else91
  br i1 %cmp121362.i, label %for.body123.lr.ph.i, label %if.end216

for.body123.lr.ph.i:                              ; preds = %for.cond119.preheader.i
  %conv186.i = fpext float %31 to double
  %97 = sext i32 %start to i64
  br label %for.body123.i

for.body.i904:                                    ; preds = %for.inc115.i, %for.body.lr.ph.i891
  %indvars.iv375.i = phi i64 [ %96, %for.body.lr.ph.i891 ], [ %indvars.iv.next376.i, %for.inc115.i ]
  %arrayidx4.i892 = getelementptr inbounds float* %87, i64 %indvars.iv375.i
  %98 = load float* %arrayidx4.i892, align 4, !tbaa !3
  %conv5.i = fpext float %98 to double
  %arrayidx7.i = getelementptr inbounds i16* %90, i64 %indvars.iv375.i
  %99 = load i16* %arrayidx7.i, align 2, !tbaa !5
  %arrayidx11.i = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv375.i, i64 2
  %100 = load float* %arrayidx11.i, align 4, !tbaa !3
  %mul.i893 = fmul float %conv2.i, %100
  %conv12.i = fpext float %mul.i893 to double
  %call.i = call double @cos(double %conv12.i) #4
  %conv13.i894 = fptrunc double %call.i to float
  %arraydecay.i895 = getelementptr inbounds [3 x float]* %v, i64 %indvars.iv375.i, i64 0
  %arraydecay18.i896 = getelementptr inbounds [3 x float]* %vold, i64 %indvars.iv375.i, i64 0
  %101 = load float* %arraydecay.i895, align 4, !tbaa !3
  store float %101, float* %arraydecay18.i896, align 4, !tbaa !3
  %arrayidx2.i.i897 = getelementptr inbounds [3 x float]* %v, i64 %indvars.iv375.i, i64 1
  %102 = load float* %arrayidx2.i.i897, align 4, !tbaa !3
  %arrayidx3.i.i898 = getelementptr inbounds [3 x float]* %vold, i64 %indvars.iv375.i, i64 1
  store float %102, float* %arrayidx3.i.i898, align 4, !tbaa !3
  %arrayidx4.i.i = getelementptr inbounds [3 x float]* %v, i64 %indvars.iv375.i, i64 2
  %103 = load float* %arrayidx4.i.i, align 4, !tbaa !3
  %arrayidx5.i.i899 = getelementptr inbounds [3 x float]* %vold, i64 %indvars.iv375.i, i64 2
  store float %103, float* %arrayidx5.i.i899, align 4, !tbaa !3
  %104 = load float* %arraydecay.i895, align 4, !tbaa !3
  %105 = load float* %arrayidx2.i.i897, align 4, !tbaa !3
  store float %105, float* %arrayidx3.i358.i, align 4, !tbaa !3
  %106 = load float* %arrayidx4.i.i, align 4, !tbaa !3
  store float %106, float* %arrayidx5.i360.i, align 4, !tbaa !3
  %mul23.i = fmul float %92, %conv13.i894
  %sub.i900 = fsub float %104, %mul23.i
  store float %sub.i900, float* %arraydecay22.i, align 4, !tbaa !3
  %idxprom25.i = zext i16 %99 to i64
  %xi27.i = getelementptr inbounds %struct.t_grp_tcstat* %88, i64 %idxprom25.i, i32 3
  %107 = load float* %xi27.i, align 4, !tbaa !3
  %arrayidx41.i = getelementptr inbounds i16* %89, i64 %indvars.iv375.i
  %108 = load i16* %arrayidx41.i, align 2, !tbaa !5
  %conv80.i = fpext float %mul23.i to double
  %conv81.i901 = fpext float %conv13.i894 to double
  %mul82.i902 = fmul double %conv19, %conv81.i901
  %mul84.i903 = fmul double %conv83.i890, %mul82.i902
  %add85.i = fadd double %conv80.i, %mul84.i903
  br label %for.body31.i

for.body31.i:                                     ; preds = %for.inc.i920, %for.body.i904
  %indvars.iv371.i = phi i64 [ 0, %for.body.i904 ], [ %indvars.iv.next372.i, %for.inc.i920 ]
  %arrayidx35.i905 = getelementptr inbounds [3 x float]* %v, i64 %indvars.iv375.i, i64 %indvars.iv371.i
  switch i16 %108, label %if.then50.i [
    i16 4, label %if.else.i919
    i16 2, label %if.else.i919
  ]

if.then50.i:                                      ; preds = %for.body31.i
  %arrayidx39.i = getelementptr inbounds [3 x float]* %33, i64 %idxprom25.i, i64 %indvars.iv371.i
  %109 = load float* %arrayidx39.i, align 4, !tbaa !3
  %conv51.i = fpext float %109 to double
  %arrayidx53.i = getelementptr inbounds [3 x float]* %vrel.i, i64 0, i64 %indvars.iv371.i
  %110 = load float* %arrayidx53.i, align 4, !tbaa !3
  %conv54.i = fpext float %110 to double
  %arrayidx58.i = getelementptr inbounds [3 x float]* %force, i64 %indvars.iv375.i, i64 %indvars.iv371.i
  %111 = load float* %arrayidx58.i, align 4, !tbaa !3
  %conv59.i = fpext float %111 to double
  %mul60.i = fmul double %conv5.i, %conv59.i
  %mul63.i = fmul float %107, %110
  %conv64.i = fpext float %mul63.i to double
  %sub65.i = fsub double %mul60.i, %conv64.i
  %arraydecay68.i906 = getelementptr inbounds [3 x [3 x float]]* %M, i64 0, i64 %indvars.iv371.i, i64 0
  %112 = load float* %arraydecay68.i906, align 4, !tbaa !3
  %mul.i.i907 = fmul float %sub.i900, %112
  %arrayidx2.i354.i = getelementptr inbounds [3 x [3 x float]]* %M, i64 0, i64 %indvars.iv371.i, i64 1
  %113 = load float* %arrayidx2.i354.i, align 4, !tbaa !3
  %mul4.i.i908 = fmul float %105, %113
  %add.i.i909 = fadd float %mul.i.i907, %mul4.i.i908
  %arrayidx5.i356.i = getelementptr inbounds [3 x [3 x float]]* %M, i64 0, i64 %indvars.iv371.i, i64 2
  %114 = load float* %arrayidx5.i356.i, align 4, !tbaa !3
  %mul7.i.i910 = fmul float %106, %114
  %add8.i.i911 = fadd float %add.i.i909, %mul7.i.i910
  %conv71.i = fpext float %add8.i.i911 to double
  %sub72.i = fsub double %sub65.i, %conv71.i
  %mul73.i912 = fmul double %conv19, %sub72.i
  %add74.i913 = fadd double %conv54.i, %mul73.i912
  %mul75.i = fmul double %conv51.i, %add74.i913
  %conv76.i = fptrunc double %mul75.i to float
  %115 = trunc i64 %indvars.iv371.i to i32
  %cmp77.i = icmp eq i32 %115, 0
  br i1 %cmp77.i, label %if.then79.i, label %if.end.i918

if.then79.i:                                      ; preds = %if.then50.i
  %conv86.i914 = fpext float %conv76.i to double
  %add87.i = fadd double %add85.i, %conv86.i914
  %conv88.i = fptrunc double %add87.i to float
  br label %if.end.i918

if.end.i918:                                      ; preds = %if.then79.i, %if.then50.i
  %vn.0.i915 = phi float [ %conv88.i, %if.then79.i ], [ %conv76.i, %if.then50.i ]
  store float %vn.0.i915, float* %arrayidx35.i905, align 4, !tbaa !3
  %arrayidx96.i = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv375.i, i64 %indvars.iv371.i
  %116 = load float* %arrayidx96.i, align 4, !tbaa !3
  %conv97.i916 = fpext float %116 to double
  %conv98.i = fpext float %vn.0.i915 to double
  %mul99.i = fmul double %conv19, %conv98.i
  %add100.i = fadd double %conv97.i916, %mul99.i
  %conv101.i917 = fptrunc double %add100.i to float
  %arrayidx105.i = getelementptr inbounds [3 x float]* %91, i64 %indvars.iv375.i, i64 %indvars.iv371.i
  store float %conv101.i917, float* %arrayidx105.i, align 4, !tbaa !3
  br label %for.inc.i920

if.else.i919:                                     ; preds = %for.body31.i, %for.body31.i
  %arrayidx109.i = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv375.i, i64 %indvars.iv371.i
  %117 = load float* %arrayidx109.i, align 4, !tbaa !3
  %arrayidx113.i = getelementptr inbounds [3 x float]* %91, i64 %indvars.iv375.i, i64 %indvars.iv371.i
  store float %117, float* %arrayidx113.i, align 4, !tbaa !3
  br label %for.inc.i920

for.inc.i920:                                     ; preds = %if.else.i919, %if.end.i918
  %indvars.iv.next372.i = add i64 %indvars.iv371.i, 1
  %lftr.wideiv991 = trunc i64 %indvars.iv.next372.i to i32
  %exitcond992 = icmp eq i32 %lftr.wideiv991, 3
  br i1 %exitcond992, label %for.inc115.i, label %for.body31.i

for.inc115.i:                                     ; preds = %for.inc.i920
  %indvars.iv.next376.i = add i64 %indvars.iv375.i, 1
  %118 = trunc i64 %indvars.iv.next376.i to i32
  %cmp.i921 = icmp slt i32 %118, %add120.i
  br i1 %cmp.i921, label %for.body.i904, label %if.end216

for.body123.i:                                    ; preds = %for.inc238.i, %for.body123.lr.ph.i
  %indvars.iv369.i = phi i64 [ %97, %for.body123.lr.ph.i ], [ %indvars.iv.next370.i, %for.inc238.i ]
  %arrayidx125.i = getelementptr inbounds float* %87, i64 %indvars.iv369.i
  %119 = load float* %arrayidx125.i, align 4, !tbaa !3
  %conv126.i = fpext float %119 to double
  %mul127.i = fmul double %conv19, %conv126.i
  %arrayidx129.i = getelementptr inbounds i16* %90, i64 %indvars.iv369.i
  %120 = load i16* %arrayidx129.i, align 2, !tbaa !5
  %arrayidx133.i = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv369.i, i64 2
  %121 = load float* %arrayidx133.i, align 4, !tbaa !3
  %mul134.i = fmul float %conv2.i, %121
  %conv135.i = fpext float %mul134.i to double
  %call136.i = call double @cos(double %conv135.i) #4
  %conv137.i = fptrunc double %call136.i to float
  %idxprom147.i = zext i16 %120 to i64
  %arrayidx155.i = getelementptr inbounds i16* %89, i64 %indvars.iv369.i
  %122 = load i16* %arrayidx155.i, align 2, !tbaa !5
  %mul169.i = fmul float %92, %conv137.i
  %conv170.i = fpext float %mul169.i to double
  %conv184.i = fpext float %conv137.i to double
  %mul185.i = fmul double %conv19, %conv184.i
  %mul187.i = fmul double %conv186.i, %mul185.i
  br label %for.body141.i

for.body141.i:                                    ; preds = %for.inc235.i, %for.body123.i
  %indvars.iv.i922 = phi i64 [ 0, %for.body123.i ], [ %indvars.iv.next.i927, %for.inc235.i ]
  %arrayidx145.i = getelementptr inbounds [3 x float]* %v, i64 %indvars.iv369.i, i64 %indvars.iv.i922
  %123 = load float* %arrayidx145.i, align 4, !tbaa !3
  %arrayidx149.i = getelementptr inbounds [3 x float]* %33, i64 %idxprom147.i, i64 %indvars.iv.i922
  %124 = load float* %arrayidx149.i, align 4, !tbaa !3
  %arrayidx153.i = getelementptr inbounds [3 x float]* %vold, i64 %indvars.iv369.i, i64 %indvars.iv.i922
  store float %123, float* %arrayidx153.i, align 4, !tbaa !3
  switch i16 %122, label %if.then165.i [
    i16 4, label %if.else221.i
    i16 2, label %if.else221.i
  ]

if.then165.i:                                     ; preds = %for.body141.i
  %125 = trunc i64 %indvars.iv.i922 to i32
  %cmp166.i = icmp eq i32 %125, 0
  %conv171.i = fpext float %124 to double
  br i1 %cmp166.i, label %if.then168.i, label %if.else191.i

if.then168.i:                                     ; preds = %if.then165.i
  %sub172.i = fsub float %123, %mul169.i
  %conv173.i923 = fpext float %sub172.i to double
  %arrayidx177.i = getelementptr inbounds [3 x float]* %force, i64 %indvars.iv369.i, i64 %indvars.iv.i922
  %126 = load float* %arrayidx177.i, align 4, !tbaa !3
  %conv178.i = fpext float %126 to double
  %mul179.i = fmul double %mul127.i, %conv178.i
  %add180.i = fadd double %conv173.i923, %mul179.i
  %mul181.i = fmul double %conv171.i, %add180.i
  %add182.i = fadd double %conv170.i, %mul181.i
  %conv183.i924 = fptrunc double %add182.i to float
  %conv188.i = fpext float %conv183.i924 to double
  %add189.i = fadd double %mul187.i, %conv188.i
  br label %if.end203.i

if.else191.i:                                     ; preds = %if.then165.i
  %conv193.i = fpext float %123 to double
  %arrayidx197.i = getelementptr inbounds [3 x float]* %force, i64 %indvars.iv369.i, i64 %indvars.iv.i922
  %127 = load float* %arrayidx197.i, align 4, !tbaa !3
  %conv198.i925 = fpext float %127 to double
  %mul199.i = fmul double %mul127.i, %conv198.i925
  %add200.i = fadd double %conv193.i, %mul199.i
  %mul201.i = fmul double %conv171.i, %add200.i
  br label %if.end203.i

if.end203.i:                                      ; preds = %if.else191.i, %if.then168.i
  %vv.0.in.i = phi double [ %add189.i, %if.then168.i ], [ %mul201.i, %if.else191.i ]
  %vv.0.i = fptrunc double %vv.0.in.i to float
  store float %vv.0.i, float* %arrayidx145.i, align 4, !tbaa !3
  %arrayidx211.i = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv369.i, i64 %indvars.iv.i922
  %128 = load float* %arrayidx211.i, align 4, !tbaa !3
  %conv212.i = fpext float %128 to double
  %conv213.i926 = fpext float %vv.0.i to double
  %mul214.i = fmul double %conv19, %conv213.i926
  %add215.i = fadd double %conv212.i, %mul214.i
  %conv216.i = fptrunc double %add215.i to float
  %arrayidx220.i = getelementptr inbounds [3 x float]* %91, i64 %indvars.iv369.i, i64 %indvars.iv.i922
  store float %conv216.i, float* %arrayidx220.i, align 4, !tbaa !3
  br label %for.inc235.i

if.else221.i:                                     ; preds = %for.body141.i, %for.body141.i
  store float 0.000000e+00, float* %arrayidx145.i, align 4, !tbaa !3
  %arrayidx229.i = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv369.i, i64 %indvars.iv.i922
  %129 = load float* %arrayidx229.i, align 4, !tbaa !3
  %arrayidx233.i = getelementptr inbounds [3 x float]* %91, i64 %indvars.iv369.i, i64 %indvars.iv.i922
  store float %129, float* %arrayidx233.i, align 4, !tbaa !3
  br label %for.inc235.i

for.inc235.i:                                     ; preds = %if.else221.i, %if.end203.i
  %indvars.iv.next.i927 = add i64 %indvars.iv.i922, 1
  %lftr.wideiv988 = trunc i64 %indvars.iv.next.i927 to i32
  %exitcond989 = icmp eq i32 %lftr.wideiv988, 3
  br i1 %exitcond989, label %for.inc238.i, label %for.body141.i

for.inc238.i:                                     ; preds = %for.inc235.i
  %indvars.iv.next370.i = add i64 %indvars.iv369.i, 1
  %130 = trunc i64 %indvars.iv.next370.i to i32
  %cmp121.i = icmp slt i32 %130, %add120.i
  br i1 %cmp121.i, label %for.body123.i, label %if.end216

if.then107:                                       ; preds = %if.end73
  %acc109 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 80, i32 7
  %131 = load [3 x float]** %acc109, align 8, !tbaa !0
  %nFreeze111 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 80, i32 8
  %132 = load [3 x i32]** %nFreeze111, align 8, !tbaa !0
  %invmass112 = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 5
  %133 = load float** %invmass112, align 8, !tbaa !0
  %ptype113 = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 13
  %134 = load i16** %ptype113, align 8, !tbaa !0
  %cFREEZE114 = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 17
  %135 = load i16** %cFREEZE114, align 8, !tbaa !0
  %cACC115 = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 16
  %136 = load i16** %cACC115, align 8, !tbaa !0
  %cTC116 = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 14
  %137 = load i16** %cTC116, align 8, !tbaa !0
  %138 = load [3 x float]** @update.xprime, align 8, !tbaa !0
  %ngtc118 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 80, i32 0
  %139 = load i32* %ngtc118, align 4, !tbaa !4
  %tau_t = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 80, i32 6
  %140 = load float** %tau_t, align 8, !tbaa !0
  %ref_t = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 80, i32 5
  %141 = load float** %ref_t, align 8, !tbaa !0
  %ld_seed = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 70
  call fastcc void @do_update_sd(i32 %start, i32 %homenr, [3 x float]* %131, [3 x i32]* %132, float* %133, i16* %134, i16* %135, i16* %136, i16* %137, float %SAfactor, [3 x float]* %x, [3 x float]* %138, [3 x float]* %v, [3 x float]* %vold, [3 x float]* %force, i32 %139, float* %140, float* %141, i32* %ld_seed, i32 1) #6
  %142 = load i32* @update.bHaveConstr, align 4, !tbaa !4
  %tobool121 = icmp eq i32 %142, 0
  br i1 %tobool121, label %if.end178, label %for.cond123.preheader

for.cond123.preheader:                            ; preds = %if.then107
  %add = add nsw i32 %homenr, %start
  %cmp124955 = icmp sgt i32 %homenr, 0
  %143 = load [3 x float]** @update.xprime, align 8, !tbaa !0
  br i1 %cmp124955, label %for.body126.lr.ph, label %for.end135.thread

for.end135.thread:                                ; preds = %for.cond123.preheader
  %144 = load %struct._IO_FILE** @stdlog, align 8, !tbaa !0
  %arraydecay1371012 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 1, i64 0
  %call1381013 = call i32 @constrain(%struct._IO_FILE* %144, %struct.t_topology* %top, %struct.t_inputrec* %ir1, i32 %step, %struct.t_mdatoms* %md, i32 %start, i32 %homenr, [3 x float]* %x, [3 x float]* %143, [3 x float]* null, [3 x float]* %arraydecay1371012, float %lambda, float* %dvdlambda, %struct.t_nrnb* %nrnb, i32 1) #4
  br label %if.end178

for.body126.lr.ph:                                ; preds = %for.cond123.preheader
  %145 = load [3 x float]** @update.x_unc, align 8, !tbaa !0
  %146 = sext i32 %start to i64
  br label %for.body126

for.body126:                                      ; preds = %for.body126.lr.ph, %for.body126
  %indvars.iv999 = phi i64 [ %146, %for.body126.lr.ph ], [ %indvars.iv.next1000, %for.body126 ]
  %arraydecay129 = getelementptr inbounds [3 x float]* %143, i64 %indvars.iv999, i64 0
  %147 = trunc i64 %indvars.iv999 to i32
  %sub = sub nsw i32 %147, %start
  %idxprom130 = sext i32 %sub to i64
  %arraydecay132 = getelementptr inbounds [3 x float]* %145, i64 %idxprom130, i64 0
  %148 = load float* %arraydecay129, align 4, !tbaa !3
  store float %148, float* %arraydecay132, align 4, !tbaa !3
  %arrayidx2.i930 = getelementptr inbounds [3 x float]* %143, i64 %indvars.iv999, i64 1
  %149 = load float* %arrayidx2.i930, align 4, !tbaa !3
  %arrayidx3.i931 = getelementptr inbounds [3 x float]* %145, i64 %idxprom130, i64 1
  store float %149, float* %arrayidx3.i931, align 4, !tbaa !3
  %arrayidx4.i932 = getelementptr inbounds [3 x float]* %143, i64 %indvars.iv999, i64 2
  %150 = load float* %arrayidx4.i932, align 4, !tbaa !3
  %arrayidx5.i933 = getelementptr inbounds [3 x float]* %145, i64 %idxprom130, i64 2
  store float %150, float* %arrayidx5.i933, align 4, !tbaa !3
  %indvars.iv.next1000 = add i64 %indvars.iv999, 1
  %151 = trunc i64 %indvars.iv.next1000 to i32
  %cmp124 = icmp slt i32 %151, %add
  br i1 %cmp124, label %for.body126, label %for.end135

for.end135:                                       ; preds = %for.body126
  %152 = load %struct._IO_FILE** @stdlog, align 8, !tbaa !0
  %arraydecay137 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 1, i64 0
  %call138 = call i32 @constrain(%struct._IO_FILE* %152, %struct.t_topology* %top, %struct.t_inputrec* %ir1, i32 %step, %struct.t_mdatoms* %md, i32 %start, i32 %homenr, [3 x float]* %x, [3 x float]* %143, [3 x float]* null, [3 x float]* %arraydecay137, float %lambda, float* %dvdlambda, %struct.t_nrnb* %nrnb, i32 1) #4
  br i1 %cmp124955, label %for.body143.lr.ph, label %if.end178

for.body143.lr.ph:                                ; preds = %for.end135
  %massT = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 4
  %153 = load float** %massT, align 8, !tbaa !0
  %154 = load i16** %cTC116, align 8, !tbaa !0
  %155 = load %struct.t_sdconst** @sdc, align 8, !tbaa !0
  %156 = load [3 x float]** @update.xprime, align 8, !tbaa !0
  %157 = load [3 x float]** @update.x_unc, align 8, !tbaa !0
  %158 = sext i32 %start to i64
  br label %for.body143

for.body143:                                      ; preds = %for.body143.lr.ph, %for.inc175
  %indvars.iv997 = phi i64 [ %158, %for.body143.lr.ph ], [ %indvars.iv.next998, %for.inc175 ]
  %arrayidx145 = getelementptr inbounds float* %153, i64 %indvars.iv997
  %159 = load float* %arrayidx145, align 4, !tbaa !3
  %mul146 = fmul float %conv22, %159
  %arrayidx149 = getelementptr inbounds i16* %154, i64 %indvars.iv997
  %160 = load i16* %arrayidx149, align 2, !tbaa !5
  %idxprom150 = zext i16 %160 to i64
  %eph = getelementptr inbounds %struct.t_sdconst* %155, i64 %idxprom150, i32 1
  %161 = load float* %eph, align 4, !tbaa !3
  %mul152 = fmul float %mul146, %161
  %162 = trunc i64 %indvars.iv997 to i32
  %sub162 = sub nsw i32 %162, %start
  %idxprom163 = sext i32 %sub162 to i64
  br label %for.body156

for.body156:                                      ; preds = %for.body156, %for.body143
  %indvars.iv993 = phi i64 [ 0, %for.body143 ], [ %indvars.iv.next994, %for.body156 ]
  %arrayidx160 = getelementptr inbounds [3 x float]* %156, i64 %indvars.iv997, i64 %indvars.iv993
  %163 = load float* %arrayidx160, align 4, !tbaa !3
  %arrayidx165 = getelementptr inbounds [3 x float]* %157, i64 %idxprom163, i64 %indvars.iv993
  %164 = load float* %arrayidx165, align 4, !tbaa !3
  %sub166 = fsub float %163, %164
  %mul167 = fmul float %mul152, %sub166
  %arrayidx171 = getelementptr inbounds [3 x float]* %delta_f, i64 %indvars.iv997, i64 %indvars.iv993
  store float %mul167, float* %arrayidx171, align 4, !tbaa !3
  %indvars.iv.next994 = add i64 %indvars.iv993, 1
  %lftr.wideiv995 = trunc i64 %indvars.iv.next994 to i32
  %exitcond996 = icmp eq i32 %lftr.wideiv995, 3
  br i1 %exitcond996, label %for.inc175, label %for.body156

for.inc175:                                       ; preds = %for.body156
  %indvars.iv.next998 = add i64 %indvars.iv997, 1
  %165 = trunc i64 %indvars.iv.next998 to i32
  %cmp141 = icmp slt i32 %165, %add
  br i1 %cmp141, label %for.body143, label %if.end178

if.end178:                                        ; preds = %for.end135, %for.end135.thread, %for.inc175, %if.then107
  %166 = load [3 x float]** %acc109, align 8, !tbaa !0
  %167 = load [3 x i32]** %nFreeze111, align 8, !tbaa !0
  %168 = load float** %invmass112, align 8, !tbaa !0
  %169 = load i16** %ptype113, align 8, !tbaa !0
  %170 = load i16** %cFREEZE114, align 8, !tbaa !0
  %171 = load i16** %cACC115, align 8, !tbaa !0
  %172 = load i16** %cTC116, align 8, !tbaa !0
  %173 = load [3 x float]** @update.xprime, align 8, !tbaa !0
  %174 = load i32* %ngtc118, align 4, !tbaa !4
  %175 = load float** %tau_t, align 8, !tbaa !0
  %176 = load float** %ref_t, align 8, !tbaa !0
  call fastcc void @do_update_sd(i32 %start, i32 %homenr, [3 x float]* %166, [3 x i32]* %167, float* %168, i16* %169, i16* %170, i16* %171, i16* %172, float %SAfactor, [3 x float]* %x, [3 x float]* %173, [3 x float]* %v, [3 x float]* %vold, [3 x float]* %force, i32 %174, float* %175, float* %176, i32* %ld_seed, i32 0) #6
  br label %if.end216

if.then199:                                       ; preds = %if.end73
  %nFreeze201 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 80, i32 8
  %177 = load [3 x i32]** %nFreeze201, align 8, !tbaa !0
  %invmass202 = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 5
  %178 = load float** %invmass202, align 8, !tbaa !0
  %ptype203 = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 13
  %179 = load i16** %ptype203, align 8, !tbaa !0
  %cFREEZE204 = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 17
  %180 = load i16** %cFREEZE204, align 8, !tbaa !0
  %cTC205 = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 14
  %181 = load i16** %cTC205, align 8, !tbaa !0
  %182 = load [3 x float]** @update.xprime, align 8, !tbaa !0
  %bd_temp = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 68
  %183 = load float* %bd_temp, align 4, !tbaa !3
  %bd_fric = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 69
  %184 = load float* %bd_fric, align 4, !tbaa !3
  %ngtc207 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 80, i32 0
  %185 = load i32* %ngtc207, align 4, !tbaa !4
  %ref_t211 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 80, i32 5
  %186 = load float** %ref_t211, align 8, !tbaa !0
  %ld_seed212 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 70
  %conv.i = fpext float %184 to double
  %fabsf.i = call float @fabsf(float %184) #5
  %187 = fpext float %fabsf.i to double
  %cmp.i = fcmp ogt double %187, 1.200000e-38
  %188 = load float** @do_update_bd.rf, align 8, !tbaa !0
  %cmp2.i = icmp eq float* %188, null
  br i1 %cmp2.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.then199
  %call4.i = call i8* @save_calloc(i8* getelementptr inbounds ([3 x i8]* @.str16, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str1, i64 0, i64 0), i32 399, i32 %185, i32 4) #4
  %189 = bitcast i8* %call4.i to float*
  store float* %189, float** @do_update_bd.rf, align 8, !tbaa !0
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.then199
  br i1 %cmp.i, label %if.then5.i, label %for.cond.preheader.i

for.cond.preheader.i:                             ; preds = %if.end.i
  %cmp1433.i = icmp sgt i32 %185, 0
  br i1 %cmp1433.i, label %for.body.i, label %if.end22.i

if.then5.i:                                       ; preds = %if.end.i
  %conv6.i = fpext float %183 to double
  %mul.i = fmul double %conv6.i, 0x3F910732CDE67DC4
  %mul8.i = fmul double %conv19, %conv.i
  %div.i = fdiv double %mul.i, %mul8.i
  %call9.i = call double @sqrt(double %div.i) #4
  %conv10.i = fptrunc double %call9.i to float
  %conv13.i = fdiv float 1.000000e+00, %184
  br label %if.end22.i

for.body.i:                                       ; preds = %for.cond.preheader.i, %for.body.i
  %indvars.iv38.i = phi i64 [ %indvars.iv.next39.i, %for.body.i ], [ 0, %for.cond.preheader.i ]
  %arrayidx.i = getelementptr inbounds float* %186, i64 %indvars.iv38.i
  %190 = load float* %arrayidx.i, align 4, !tbaa !3
  %conv16.i = fpext float %190 to double
  %mul17.i = fmul double %conv16.i, 0x3F910732CDE67DC4
  %call18.i = call double @sqrt(double %mul17.i) #4
  %conv19.i = fptrunc double %call18.i to float
  %191 = load float** @do_update_bd.rf, align 8, !tbaa !0
  %arrayidx21.i = getelementptr inbounds float* %191, i64 %indvars.iv38.i
  store float %conv19.i, float* %arrayidx21.i, align 4, !tbaa !3
  %indvars.iv.next39.i = add i64 %indvars.iv38.i, 1
  %lftr.wideiv1004 = trunc i64 %indvars.iv.next39.i to i32
  %exitcond1005 = icmp eq i32 %lftr.wideiv1004, %185
  br i1 %exitcond1005, label %if.end22.i, label %for.body.i

if.end22.i:                                       ; preds = %for.body.i, %if.then5.i, %for.cond.preheader.i
  %rfac.0.i = phi float [ %conv10.i, %if.then5.i ], [ 0.000000e+00, %for.cond.preheader.i ], [ 0.000000e+00, %for.body.i ]
  %invfr.0.i = phi float [ %conv13.i, %if.then5.i ], [ 0.000000e+00, %for.cond.preheader.i ], [ 0.000000e+00, %for.body.i ]
  %call23.i = call float @rando(i32* %ld_seed212) #4
  %add.i = add nsw i32 %homenr, %start
  %cmp2730.i = icmp sgt i32 %homenr, 0
  br i1 %cmp2730.i, label %for.body29.lr.ph.i, label %if.end216

for.body29.lr.ph.i:                               ; preds = %if.end22.i
  %mul24.i = fmul float %call23.i, 6.553500e+04
  %conv25.i = fptoui float %mul24.i to i64
  %192 = sext i32 %start to i64
  br label %for.body29.i

for.body29.i:                                     ; preds = %for.inc133.i, %for.body29.lr.ph.i
  %indvars.iv36.i = phi i64 [ %192, %for.body29.lr.ph.i ], [ %indvars.iv.next37.i, %for.inc133.i ]
  %and13.i172431.i = phi i64 [ %conv25.i, %for.body29.lr.ph.i ], [ %and13.i1726.i, %for.inc133.i ]
  %arrayidx31.i = getelementptr inbounds i16* %180, i64 %indvars.iv36.i
  %193 = load i16* %arrayidx31.i, align 2, !tbaa !5
  %arrayidx34.i = getelementptr inbounds i16* %181, i64 %indvars.iv36.i
  %194 = load i16* %arrayidx34.i, align 2, !tbaa !5
  %arrayidx49.i = getelementptr inbounds i16* %179, i64 %indvars.iv36.i
  %idxprom60.i = zext i16 %193 to i64
  %arrayidx77.i = getelementptr inbounds float* %178, i64 %indvars.iv36.i
  %idxprom89.i = zext i16 %194 to i64
  br label %for.body39.i

for.body39.i:                                     ; preds = %for.inc130.i, %for.body29.i
  %indvars.iv.i = phi i64 [ 0, %for.body29.i ], [ %indvars.iv.next.i, %for.inc130.i ]
  %and13.i172528.i = phi i64 [ %and13.i172431.i, %for.body29.i ], [ %and13.i1726.i, %for.inc130.i ]
  %arrayidx43.i = getelementptr inbounds [3 x float]* %v, i64 %indvars.iv36.i, i64 %indvars.iv.i
  %195 = load float* %arrayidx43.i, align 4, !tbaa !3
  %arrayidx47.i = getelementptr inbounds [3 x float]* %vold, i64 %indvars.iv36.i, i64 %indvars.iv.i
  store float %195, float* %arrayidx47.i, align 4, !tbaa !3
  %196 = load i16* %arrayidx49.i, align 2, !tbaa !5
  switch i16 %196, label %land.lhs.true58.i [
    i16 4, label %if.else116.i
    i16 2, label %if.else116.i
  ]

land.lhs.true58.i:                                ; preds = %for.body39.i
  %arrayidx62.i = getelementptr inbounds [3 x i32]* %177, i64 %idxprom60.i, i64 %indvars.iv.i
  %197 = load i32* %arrayidx62.i, align 4, !tbaa !4
  %tobool63.i = icmp eq i32 %197, 0
  br i1 %tobool63.i, label %if.then64.i, label %if.else116.i

if.then64.i:                                      ; preds = %land.lhs.true58.i
  br i1 %cmp.i, label %if.then66.i, label %if.else75.i

if.then66.i:                                      ; preds = %if.then64.i
  %arrayidx70.i = getelementptr inbounds [3 x float]* %force, i64 %indvars.iv36.i, i64 %indvars.iv.i
  %198 = load float* %arrayidx70.i, align 4, !tbaa !3
  %mul71.i = fmul float %invfr.0.i, %198
  %mul.i.i = mul i64 %and13.i172528.i, 1093
  %add.i.i = add i64 %mul.i.i, 18257
  %and.i.i = and i64 %add.i.i, 65535
  %conv.i.i = uitofp i64 %and.i.i to float
  %mul1.i.i = mul i64 %and.i.i, 1093
  %add2.i.i = add i64 %mul1.i.i, 18257
  %and3.i.i = and i64 %add2.i.i, 65535
  %conv4.i.i = uitofp i64 %and3.i.i to float
  %add5.i.i = fadd float %conv.i.i, %conv4.i.i
  %mul6.i.i = mul i64 %and3.i.i, 1093
  %add7.i.i = add i64 %mul6.i.i, 18257
  %and8.i.i = and i64 %add7.i.i, 65535
  %conv9.i.i = uitofp i64 %and8.i.i to float
  %add10.i.i = fadd float %add5.i.i, %conv9.i.i
  %mul11.i.i = mul i64 %and8.i.i, 1093
  %add12.i.i = add i64 %mul11.i.i, 18257
  %and13.i.i = and i64 %add12.i.i, 65535
  %conv14.i.i = uitofp i64 %and13.i.i to float
  %add15.i.i = fadd float %add10.i.i, %conv14.i.i
  %mul16.i.i = fmul float %add15.i.i, 0x3EF0001000000000
  %sub.i.i = fadd float %mul16.i.i, -2.000000e+00
  %mul17.i.i = fmul float %sub.i.i, 0x3FFBB67AE0000000
  %mul73.i = fmul float %rfac.0.i, %mul17.i.i
  %add74.i = fadd float %mul73.i, %mul71.i
  br label %if.end98.i

if.else75.i:                                      ; preds = %if.then64.i
  %199 = load float* %arrayidx77.i, align 4, !tbaa !3
  %arrayidx81.i = getelementptr inbounds [3 x float]* %force, i64 %indvars.iv36.i, i64 %indvars.iv.i
  %200 = load float* %arrayidx81.i, align 4, !tbaa !3
  %mul82.i = fmul float %199, %200
  %conv83.i = fpext float %mul82.i to double
  %mul84.i = fmul double %conv19, %conv83.i
  %conv87.i = fpext float %199 to double
  %call88.i = call double @sqrt(double %conv87.i) #4
  %201 = load float** @do_update_bd.rf, align 8, !tbaa !0
  %arrayidx90.i = getelementptr inbounds float* %201, i64 %idxprom89.i
  %202 = load float* %arrayidx90.i, align 4, !tbaa !3
  %conv91.i = fpext float %202 to double
  %mul92.i = fmul double %call88.i, %conv91.i
  %mul.i1.i = mul i64 %and13.i172528.i, 1093
  %add.i2.i = add i64 %mul.i1.i, 18257
  %and.i3.i = and i64 %add.i2.i, 65535
  %conv.i4.i = uitofp i64 %and.i3.i to float
  %mul1.i5.i = mul i64 %and.i3.i, 1093
  %add2.i6.i = add i64 %mul1.i5.i, 18257
  %and3.i7.i = and i64 %add2.i6.i, 65535
  %conv4.i8.i = uitofp i64 %and3.i7.i to float
  %add5.i9.i = fadd float %conv.i4.i, %conv4.i8.i
  %mul6.i10.i = mul i64 %and3.i7.i, 1093
  %add7.i11.i = add i64 %mul6.i10.i, 18257
  %and8.i12.i = and i64 %add7.i11.i, 65535
  %conv9.i13.i = uitofp i64 %and8.i12.i to float
  %add10.i14.i = fadd float %add5.i9.i, %conv9.i13.i
  %mul11.i15.i = mul i64 %and8.i12.i, 1093
  %add12.i16.i = add i64 %mul11.i15.i, 18257
  %and13.i17.i = and i64 %add12.i16.i, 65535
  %conv14.i18.i = uitofp i64 %and13.i17.i to float
  %add15.i19.i = fadd float %add10.i14.i, %conv14.i18.i
  %mul16.i20.i = fmul float %add15.i19.i, 0x3EF0001000000000
  %sub.i21.i = fadd float %mul16.i20.i, -2.000000e+00
  %mul17.i22.i = fmul float %sub.i21.i, 0x3FFBB67AE0000000
  %conv94.i = fpext float %mul17.i22.i to double
  %mul95.i = fmul double %conv94.i, %mul92.i
  %add96.i = fadd double %mul84.i, %mul95.i
  %conv97.i = fptrunc double %add96.i to float
  br label %if.end98.i

if.end98.i:                                       ; preds = %if.else75.i, %if.then66.i
  %and13.i1727.i = phi i64 [ %and13.i.i, %if.then66.i ], [ %and13.i17.i, %if.else75.i ]
  %vn.0.i = phi float [ %add74.i, %if.then66.i ], [ %conv97.i, %if.else75.i ]
  store float %vn.0.i, float* %arrayidx43.i, align 4, !tbaa !3
  %arrayidx106.i = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv36.i, i64 %indvars.iv.i
  %203 = load float* %arrayidx106.i, align 4, !tbaa !3
  %conv107.i = fpext float %203 to double
  %conv108.i = fpext float %vn.0.i to double
  %mul109.i = fmul double %conv19, %conv108.i
  %add110.i = fadd double %conv107.i, %mul109.i
  %conv111.i = fptrunc double %add110.i to float
  %arrayidx115.i = getelementptr inbounds [3 x float]* %182, i64 %indvars.iv36.i, i64 %indvars.iv.i
  store float %conv111.i, float* %arrayidx115.i, align 4, !tbaa !3
  br label %for.inc130.i

if.else116.i:                                     ; preds = %land.lhs.true58.i, %for.body39.i, %for.body39.i
  store float 0.000000e+00, float* %arrayidx43.i, align 4, !tbaa !3
  %arrayidx124.i = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv36.i, i64 %indvars.iv.i
  %204 = load float* %arrayidx124.i, align 4, !tbaa !3
  %arrayidx128.i = getelementptr inbounds [3 x float]* %182, i64 %indvars.iv36.i, i64 %indvars.iv.i
  store float %204, float* %arrayidx128.i, align 4, !tbaa !3
  br label %for.inc130.i

for.inc130.i:                                     ; preds = %if.else116.i, %if.end98.i
  %and13.i1726.i = phi i64 [ %and13.i1727.i, %if.end98.i ], [ %and13.i172528.i, %if.else116.i ]
  %indvars.iv.next.i = add i64 %indvars.iv.i, 1
  %lftr.wideiv1001 = trunc i64 %indvars.iv.next.i to i32
  %exitcond1002 = icmp eq i32 %lftr.wideiv1001, 3
  br i1 %exitcond1002, label %for.inc133.i, label %for.body39.i

for.inc133.i:                                     ; preds = %for.inc130.i
  %indvars.iv.next37.i = add i64 %indvars.iv36.i, 1
  %205 = trunc i64 %indvars.iv.next37.i to i32
  %cmp27.i = icmp slt i32 %205, %add.i
  br i1 %cmp27.i, label %for.body29.i, label %if.end216

if.else213:                                       ; preds = %if.end73
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([37 x i8]* @.str7, i64 0, i64 0)) #4
  br label %if.end216

if.end216:                                        ; preds = %for.inc133.i, %for.inc115.i, %for.inc238.i, %for.inc117.i, %for.inc239.i, %for.cond119.preheader.i, %for.cond.preheader.i889, %for.cond121.preheader.i, %for.cond.preheader.i867, %if.end22.i, %if.end178, %if.else213
  call void @_where(i8* getelementptr inbounds ([54 x i8]* @.str1, i64 0, i64 0), i32 727) #4
  %conv217 = sitofp i32 %homenr to double
  %206 = load i32* @update.bExtended, align 4, !tbaa !4
  %tobool218 = icmp ne i32 %206, 0
  %idxprom219 = select i1 %tobool218, i64 109, i64 108
  %arrayidx221 = getelementptr inbounds %struct.t_nrnb* %nrnb, i64 0, i32 0, i64 %idxprom219
  %207 = load double* %arrayidx221, align 8, !tbaa !6
  %add222 = fadd double %conv217, %207
  store double %add222, double* %arrayidx221, align 8, !tbaa !6
  br label %if.end241

for.body231:                                      ; preds = %for.body231.lr.ph, %for.body231
  %indvars.iv1008 = phi i64 [ %22, %for.body231.lr.ph ], [ %indvars.iv.next1009, %for.body231 ]
  %arraydecay234 = getelementptr inbounds [3 x float]* %v, i64 %indvars.iv1008, i64 0
  %arraydecay237 = getelementptr inbounds [3 x float]* %21, i64 %indvars.iv1008, i64 0
  %208 = load float* %arraydecay234, align 4, !tbaa !3
  store float %208, float* %arraydecay237, align 4, !tbaa !3
  %arrayidx2.i862 = getelementptr inbounds [3 x float]* %v, i64 %indvars.iv1008, i64 1
  %209 = load float* %arrayidx2.i862, align 4, !tbaa !3
  %arrayidx3.i863 = getelementptr inbounds [3 x float]* %21, i64 %indvars.iv1008, i64 1
  store float %209, float* %arrayidx3.i863, align 4, !tbaa !3
  %arrayidx4.i864 = getelementptr inbounds [3 x float]* %v, i64 %indvars.iv1008, i64 2
  %210 = load float* %arrayidx4.i864, align 4, !tbaa !3
  %arrayidx5.i865 = getelementptr inbounds [3 x float]* %21, i64 %indvars.iv1008, i64 2
  store float %210, float* %arrayidx5.i865, align 4, !tbaa !3
  %indvars.iv.next1009 = add i64 %indvars.iv1008, 1
  %211 = trunc i64 %indvars.iv.next1009 to i32
  %cmp229 = icmp slt i32 %211, %add228
  br i1 %cmp229, label %for.body231, label %if.end241

if.end241:                                        ; preds = %for.cond227.preheader, %for.body231, %if.end216
  %212 = load i32* @update.bHaveConstr, align 4, !tbaa !4
  %tobool242 = icmp eq i32 %212, 0
  br i1 %tobool242, label %if.end364, label %if.then243

if.then243:                                       ; preds = %if.end241
  %eI244 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 0
  %213 = load i32* %eI244, align 4, !tbaa !4
  %cmp245 = icmp eq i32 %213, 4
  br i1 %cmp245, label %if.end263, label %for.cond248.preheader

for.cond248.preheader:                            ; preds = %if.then243
  %add249 = add nsw i32 %homenr, %start
  %cmp250947 = icmp sgt i32 %homenr, 0
  br i1 %cmp250947, label %for.body252.lr.ph, label %if.end263

for.body252.lr.ph:                                ; preds = %for.cond248.preheader
  %214 = load [3 x float]** @update.xprime, align 8, !tbaa !0
  %215 = load [3 x float]** @update.x_unc, align 8, !tbaa !0
  %216 = sext i32 %start to i64
  br label %for.body252

for.body252:                                      ; preds = %for.body252.lr.ph, %for.body252
  %indvars.iv983 = phi i64 [ %216, %for.body252.lr.ph ], [ %indvars.iv.next984, %for.body252 ]
  %arraydecay255 = getelementptr inbounds [3 x float]* %214, i64 %indvars.iv983, i64 0
  %217 = trunc i64 %indvars.iv983 to i32
  %sub256 = sub nsw i32 %217, %start
  %idxprom257 = sext i32 %sub256 to i64
  %arraydecay259 = getelementptr inbounds [3 x float]* %215, i64 %idxprom257, i64 0
  %218 = load float* %arraydecay255, align 4, !tbaa !3
  store float %218, float* %arraydecay259, align 4, !tbaa !3
  %arrayidx2.i858 = getelementptr inbounds [3 x float]* %214, i64 %indvars.iv983, i64 1
  %219 = load float* %arrayidx2.i858, align 4, !tbaa !3
  %arrayidx3.i859 = getelementptr inbounds [3 x float]* %215, i64 %idxprom257, i64 1
  store float %219, float* %arrayidx3.i859, align 4, !tbaa !3
  %arrayidx4.i860 = getelementptr inbounds [3 x float]* %214, i64 %indvars.iv983, i64 2
  %220 = load float* %arrayidx4.i860, align 4, !tbaa !3
  %arrayidx5.i861 = getelementptr inbounds [3 x float]* %215, i64 %idxprom257, i64 2
  store float %220, float* %arrayidx5.i861, align 4, !tbaa !3
  %indvars.iv.next984 = add i64 %indvars.iv983, 1
  %221 = trunc i64 %indvars.iv.next984 to i32
  %cmp250 = icmp slt i32 %221, %add249
  br i1 %cmp250, label %for.body252, label %if.end263

if.end263:                                        ; preds = %for.cond248.preheader, %for.body252, %if.then243
  %222 = load %struct._IO_FILE** @stdlog, align 8, !tbaa !0
  %223 = load [3 x float]** @update.xprime, align 8, !tbaa !0
  %arraydecay265 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 1, i64 0
  %call266 = call i32 @constrain(%struct._IO_FILE* %222, %struct.t_topology* %top, %struct.t_inputrec* %ir1, i32 %step, %struct.t_mdatoms* %md, i32 %start, i32 %homenr, [3 x float]* %x, [3 x float]* %223, [3 x float]* null, [3 x float]* %arraydecay265, float %lambda, float* %dvdlambda, %struct.t_nrnb* %nrnb, i32 1) #4
  call void @_where(i8* getelementptr inbounds ([54 x i8]* @.str1, i64 0, i64 0), i32 762) #4
  %bEdsam270 = getelementptr inbounds %struct.t_edsamyn* %edyn, i64 0, i32 0
  %224 = load i32* %bEdsam270, align 4, !tbaa !4
  %tobool271 = icmp eq i32 %224, 0
  br i1 %tobool271, label %if.end275, label %if.then272

if.then272:                                       ; preds = %if.end263
  %225 = load %struct._IO_FILE** @stdlog, align 8, !tbaa !0
  %226 = load [3 x float]** @update.xprime, align 8, !tbaa !0
  %227 = load [3 x float]** @update.x_unc, align 8, !tbaa !0
  call void @do_edsam(%struct._IO_FILE* %225, %struct.t_topology* %top, %struct.t_inputrec* %ir1, i32 %step, %struct.t_mdatoms* %md, i32 %start, i32 %homenr, [3 x float]* %226, [3 x float]* %x, [3 x float]* %227, [3 x float]* %force, [3 x float]* %arraydecay265, %struct.t_edsamyn* %edyn, %struct.t_edpar* @update.edpar, i32 %bDoUpdate) #4
  br label %if.end275

if.end275:                                        ; preds = %if.end263, %if.then272
  %bPull276 = getelementptr inbounds %struct.t_pull* %pulldata, i64 0, i32 16
  %228 = load i32* %bPull276, align 4, !tbaa !4
  %tobool277 = icmp eq i32 %228, 0
  br i1 %tobool277, label %if.end292, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end275
  %runtype = getelementptr inbounds %struct.t_pull* %pulldata, i64 0, i32 3
  %229 = load i32* %runtype, align 4, !tbaa !1
  switch i32 %229, label %if.then288 [
    i32 1, label %if.end292
    i32 3, label %if.end292
    i32 4, label %if.end292
  ]

if.then288:                                       ; preds = %land.lhs.true
  %230 = load [3 x float]** @update.xprime, align 8, !tbaa !0
  call void @pull(%struct.t_pull* %pulldata, [3 x float]* %230, [3 x float]* %force, [3 x float]* %arraydecay265, %struct.t_topology* %top, float %15, i32 %step, i32 %homenr, %struct.t_mdatoms* %md) #4
  br label %if.end292

if.end292:                                        ; preds = %land.lhs.true, %land.lhs.true, %land.lhs.true, %if.end275, %if.then288
  call void @_where(i8* getelementptr inbounds ([54 x i8]* @.str1, i64 0, i64 0), i32 779) #4
  br i1 %tobool41, label %if.then294, label %if.end364

if.then294:                                       ; preds = %if.end292
  %231 = load i32* %eI244, align 4, !tbaa !4
  %cmp296 = icmp eq i32 %231, 4
  br i1 %cmp296, label %if.end347, label %for.cond299.preheader

for.cond299.preheader:                            ; preds = %if.then294
  %add300 = add nsw i32 %homenr, %start
  %cmp301945 = icmp sgt i32 %homenr, 0
  br i1 %cmp301945, label %for.body303.lr.ph, label %for.end346

for.body303.lr.ph:                                ; preds = %for.cond299.preheader
  %massT305 = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 4
  %232 = load float** %massT305, align 8, !tbaa !0
  %233 = load [3 x float]** @update.xprime, align 8, !tbaa !0
  %234 = load [3 x float]** @update.x_unc, align 8, !tbaa !0
  %235 = sext i32 %start to i64
  br label %for.body303

for.body303:                                      ; preds = %for.body303.lr.ph, %for.inc344
  %indvars.iv981 = phi i64 [ %235, %for.body303.lr.ph ], [ %indvars.iv.next982, %for.inc344 ]
  %arrayidx306 = getelementptr inbounds float* %232, i64 %indvars.iv981
  %236 = load float* %arrayidx306, align 4, !tbaa !3
  %mul307 = fmul float %conv22, %236
  %237 = trunc i64 %indvars.iv981 to i32
  %sub317 = sub nsw i32 %237, %start
  %idxprom318 = sext i32 %sub317 to i64
  br label %for.body311

for.body311:                                      ; preds = %for.body311, %for.body303
  %indvars.iv977 = phi i64 [ 0, %for.body303 ], [ %indvars.iv.next978, %for.body311 ]
  %arrayidx315 = getelementptr inbounds [3 x float]* %233, i64 %indvars.iv981, i64 %indvars.iv977
  %238 = load float* %arrayidx315, align 4, !tbaa !3
  %arrayidx320 = getelementptr inbounds [3 x float]* %234, i64 %idxprom318, i64 %indvars.iv977
  %239 = load float* %arrayidx320, align 4, !tbaa !3
  %sub321 = fsub float %238, %239
  %mul322 = fmul float %mul307, %sub321
  %arrayidx326 = getelementptr inbounds [3 x float]* %delta_f, i64 %indvars.iv981, i64 %indvars.iv977
  store float %mul322, float* %arrayidx326, align 4, !tbaa !3
  %240 = load float* %arrayidx315, align 4, !tbaa !3
  %arrayidx334 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv981, i64 %indvars.iv977
  %241 = load float* %arrayidx334, align 4, !tbaa !3
  %sub335 = fsub float %240, %241
  %mul336 = fmul float %conv20, %sub335
  %arrayidx340 = getelementptr inbounds [3 x float]* %v, i64 %indvars.iv981, i64 %indvars.iv977
  store float %mul336, float* %arrayidx340, align 4, !tbaa !3
  %indvars.iv.next978 = add i64 %indvars.iv977, 1
  %lftr.wideiv979 = trunc i64 %indvars.iv.next978 to i32
  %exitcond980 = icmp eq i32 %lftr.wideiv979, 3
  br i1 %exitcond980, label %for.inc344, label %for.body311

for.inc344:                                       ; preds = %for.body311
  %indvars.iv.next982 = add i64 %indvars.iv981, 1
  %242 = trunc i64 %indvars.iv.next982 to i32
  %cmp301 = icmp slt i32 %242, %add300
  br i1 %cmp301, label %for.body303, label %for.end346

for.end346:                                       ; preds = %for.inc344, %for.cond299.preheader
  call void @_where(i8* getelementptr inbounds ([54 x i8]* @.str1, i64 0, i64 0), i32 792) #4
  br label %if.end347

if.end347:                                        ; preds = %if.then294, %for.end346
  %conv348 = sitofp i32 %homenr to double
  %arrayidx350 = getelementptr inbounds %struct.t_nrnb* %nrnb, i64 0, i32 0, i64 116
  %243 = load double* %arrayidx350, align 8, !tbaa !6
  %add351 = fadd double %conv348, %243
  store double %add351, double* %arrayidx350, align 8, !tbaa !6
  call void @_where(i8* getelementptr inbounds ([54 x i8]* @.str1, i64 0, i64 0), i32 799) #4
  %244 = load %struct._IO_FILE** @stdlog, align 8, !tbaa !0
  %idxprom355 = sext i32 %start to i64
  %arrayidx356 = getelementptr inbounds [3 x float]* %x, i64 %idxprom355
  %arrayidx358 = getelementptr inbounds [3 x float]* %delta_f, i64 %idxprom355
  call void @calc_vir(%struct._IO_FILE* %244, i32 %homenr, [3 x float]* %arrayidx356, [3 x float]* %arrayidx358, [3 x float]* %vir_part) #4
  %arrayidx361 = getelementptr inbounds %struct.t_nrnb* %nrnb, i64 0, i32 0, i64 118
  %245 = load double* %arrayidx361, align 8, !tbaa !6
  %add362 = fadd double %conv348, %245
  store double %add362, double* %arrayidx361, align 8, !tbaa !6
  call void @_where(i8* getelementptr inbounds ([54 x i8]* @.str1, i64 0, i64 0), i32 804) #4
  br label %if.end364

if.end364:                                        ; preds = %if.end241, %if.end292, %if.end347
  call void @_where(i8* getelementptr inbounds ([54 x i8]* @.str1, i64 0, i64 0), i32 810) #4
  %nnodes = getelementptr inbounds %struct.t_graph* %graph, i64 0, i32 1
  %246 = load i32* %nnodes, align 4, !tbaa !4
  %cmp365.not = icmp slt i32 %246, 1
  %tobool41.not = xor i1 %tobool41, true
  %brmerge = or i1 %cmp365.not, %tobool41.not
  br i1 %brmerge, label %for.cond443.preheader, label %land.lhs.true369

land.lhs.true369:                                 ; preds = %if.end364
  %ePBC = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 25
  %247 = load i32* %ePBC, align 4, !tbaa !4
  %cmp370 = icmp eq i32 %247, 1
  br i1 %cmp370, label %for.cond443.preheader, label %if.then372

for.cond443.preheader:                            ; preds = %if.end364, %land.lhs.true369
  %add444 = add nsw i32 %homenr, %start
  %cmp445937 = icmp sgt i32 %homenr, 0
  br i1 %cmp445937, label %for.body447.lr.ph, label %if.end460

for.body447.lr.ph:                                ; preds = %for.cond443.preheader
  %248 = load [3 x float]** @update.xprime, align 8, !tbaa !0
  %249 = sext i32 %start to i64
  br label %for.body447

if.then372:                                       ; preds = %land.lhs.true369
  %arraydecay374 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 1, i64 0
  %250 = load [3 x float]** @update.xprime, align 8, !tbaa !0
  call void @unshift_x(%struct.t_graph* %graph, [3 x float]* %arraydecay374, [3 x float]* %x, [3 x float]* %250) #4
  %arrayidx377 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 1, i64 1, i64 0
  %251 = load float* %arrayidx377, align 4, !tbaa !3
  %fabsf = call float @fabsf(float %251) #5
  %252 = fpext float %fabsf to double
  %cmp380 = fcmp ogt double %252, 1.200000e-38
  br i1 %cmp380, label %if.then397, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then372
  %arrayidx384 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 1, i64 2, i64 0
  %253 = load float* %arrayidx384, align 4, !tbaa !3
  %fabsf843 = call float @fabsf(float %253) #5
  %254 = fpext float %fabsf843 to double
  %cmp387 = fcmp ogt double %254, 1.200000e-38
  br i1 %cmp387, label %if.then397, label %lor.lhs.false389

lor.lhs.false389:                                 ; preds = %lor.lhs.false
  %arrayidx392 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 1, i64 2, i64 1
  %255 = load float* %arrayidx392, align 4, !tbaa !3
  %fabsf844 = call float @fabsf(float %255) #5
  %256 = fpext float %fabsf844 to double
  %cmp395 = fcmp ogt double %256, 1.200000e-38
  br i1 %cmp395, label %if.then397, label %if.else404

if.then397:                                       ; preds = %lor.lhs.false389, %lor.lhs.false, %if.then372
  %257 = load i32* %nnodes, align 4, !tbaa !4
  %mul399 = shl nsw i32 %257, 1
  %conv400 = sitofp i32 %mul399 to double
  %arrayidx402 = getelementptr inbounds %struct.t_nrnb* %nrnb, i64 0, i32 0, i64 89
  %258 = load double* %arrayidx402, align 8, !tbaa !6
  %add403 = fadd double %258, %conv400
  store double %add403, double* %arrayidx402, align 8, !tbaa !6
  br label %for.cond411.preheader

if.else404:                                       ; preds = %lor.lhs.false389
  %259 = load i32* %nnodes, align 4, !tbaa !4
  %conv406 = sitofp i32 %259 to double
  %arrayidx408 = getelementptr inbounds %struct.t_nrnb* %nrnb, i64 0, i32 0, i64 89
  %260 = load double* %arrayidx408, align 8, !tbaa !6
  %add409 = fadd double %260, %conv406
  store double %add409, double* %arrayidx408, align 8, !tbaa !6
  br label %for.cond411.preheader

for.cond411.preheader:                            ; preds = %if.else404, %if.then397
  %261 = phi i32 [ %259, %if.else404 ], [ %257, %if.then397 ]
  %start412 = getelementptr inbounds %struct.t_graph* %graph, i64 0, i32 3
  %262 = load i32* %start412, align 4, !tbaa !4
  %cmp413942 = icmp sgt i32 %262, %start
  br i1 %cmp413942, label %for.body415.lr.ph, label %for.end424

for.body415.lr.ph:                                ; preds = %for.cond411.preheader
  %263 = load [3 x float]** @update.xprime, align 8, !tbaa !0
  %264 = sext i32 %start to i64
  br label %for.body415

for.body415:                                      ; preds = %for.body415.lr.ph, %for.body415
  %indvars.iv975 = phi i64 [ %264, %for.body415.lr.ph ], [ %indvars.iv.next976, %for.body415 ]
  %arraydecay418 = getelementptr inbounds [3 x float]* %263, i64 %indvars.iv975, i64 0
  %arraydecay421 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv975, i64 0
  %265 = load float* %arraydecay418, align 4, !tbaa !3
  store float %265, float* %arraydecay421, align 4, !tbaa !3
  %arrayidx2.i854 = getelementptr inbounds [3 x float]* %263, i64 %indvars.iv975, i64 1
  %266 = load float* %arrayidx2.i854, align 4, !tbaa !3
  %arrayidx3.i855 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv975, i64 1
  store float %266, float* %arrayidx3.i855, align 4, !tbaa !3
  %arrayidx4.i856 = getelementptr inbounds [3 x float]* %263, i64 %indvars.iv975, i64 2
  %267 = load float* %arrayidx4.i856, align 4, !tbaa !3
  %arrayidx5.i857 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv975, i64 2
  store float %267, float* %arrayidx5.i857, align 4, !tbaa !3
  %indvars.iv.next976 = add i64 %indvars.iv975, 1
  %268 = trunc i64 %indvars.iv.next976 to i32
  %cmp413 = icmp slt i32 %268, %262
  br i1 %cmp413, label %for.body415, label %for.end424

for.end424:                                       ; preds = %for.body415, %for.cond411.preheader
  %add427 = add i32 %261, %262
  %add429 = add nsw i32 %homenr, %start
  %cmp430940 = icmp slt i32 %add427, %add429
  br i1 %cmp430940, label %for.body432.lr.ph, label %if.end460

for.body432.lr.ph:                                ; preds = %for.end424
  %269 = load [3 x float]** @update.xprime, align 8, !tbaa !0
  %270 = sext i32 %add427 to i64
  br label %for.body432

for.body432:                                      ; preds = %for.body432.lr.ph, %for.body432
  %indvars.iv973 = phi i64 [ %270, %for.body432.lr.ph ], [ %indvars.iv.next974, %for.body432 ]
  %arraydecay435 = getelementptr inbounds [3 x float]* %269, i64 %indvars.iv973, i64 0
  %arraydecay438 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv973, i64 0
  %271 = load float* %arraydecay435, align 4, !tbaa !3
  store float %271, float* %arraydecay438, align 4, !tbaa !3
  %arrayidx2.i850 = getelementptr inbounds [3 x float]* %269, i64 %indvars.iv973, i64 1
  %272 = load float* %arrayidx2.i850, align 4, !tbaa !3
  %arrayidx3.i851 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv973, i64 1
  store float %272, float* %arrayidx3.i851, align 4, !tbaa !3
  %arrayidx4.i852 = getelementptr inbounds [3 x float]* %269, i64 %indvars.iv973, i64 2
  %273 = load float* %arrayidx4.i852, align 4, !tbaa !3
  %arrayidx5.i853 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv973, i64 2
  store float %273, float* %arrayidx5.i853, align 4, !tbaa !3
  %indvars.iv.next974 = add i64 %indvars.iv973, 1
  %274 = trunc i64 %indvars.iv.next974 to i32
  %cmp430 = icmp slt i32 %274, %add429
  br i1 %cmp430, label %for.body432, label %if.end460

for.body447:                                      ; preds = %for.body447.lr.ph, %for.body447
  %indvars.iv971 = phi i64 [ %249, %for.body447.lr.ph ], [ %indvars.iv.next972, %for.body447 ]
  %arraydecay450 = getelementptr inbounds [3 x float]* %248, i64 %indvars.iv971, i64 0
  %arraydecay453 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv971, i64 0
  %275 = load float* %arraydecay450, align 4, !tbaa !3
  store float %275, float* %arraydecay453, align 4, !tbaa !3
  %arrayidx2.i846 = getelementptr inbounds [3 x float]* %248, i64 %indvars.iv971, i64 1
  %276 = load float* %arrayidx2.i846, align 4, !tbaa !3
  %arrayidx3.i847 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv971, i64 1
  store float %276, float* %arrayidx3.i847, align 4, !tbaa !3
  %arrayidx4.i848 = getelementptr inbounds [3 x float]* %248, i64 %indvars.iv971, i64 2
  %277 = load float* %arrayidx4.i848, align 4, !tbaa !3
  %arrayidx5.i849 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv971, i64 2
  store float %277, float* %arrayidx5.i849, align 4, !tbaa !3
  %indvars.iv.next972 = add i64 %indvars.iv971, 1
  %278 = trunc i64 %indvars.iv.next972 to i32
  %cmp445 = icmp slt i32 %278, %add444
  br i1 %cmp445, label %for.body447, label %if.end460

if.end460:                                        ; preds = %for.end424, %for.body432, %for.cond443.preheader, %for.body447
  call void @_where(i8* getelementptr inbounds ([54 x i8]* @.str1, i64 0, i64 0), i32 828) #4
  br i1 %tobool41, label %if.then462, label %if.end511

if.then462:                                       ; preds = %if.end460
  %opts463 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 80
  call void @update_grps(i32 %start, i32 %homenr, %struct.t_groups* %grps, %struct.t_grpopts* %opts463, [3 x float]* %v, %struct.t_mdatoms* %md, i32 %bNEMD) #4
  %epc464 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 28
  %279 = load i32* %epc464, align 4, !tbaa !4
  switch i32 %279, label %if.end510 [
    i32 1, label %if.then467
    i32 2, label %for.body487.lr.ph
  ]

if.then467:                                       ; preds = %if.then462
  %arraydecay469 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 4, i64 0
  %arraydecay471 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 1, i64 0
  %cFREEZE472 = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 17
  %280 = load i16** %cFREEZE472, align 8, !tbaa !0
  %nFreeze474 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 80, i32 8
  %281 = load [3 x i32]** %nFreeze474, align 8, !tbaa !0
  call void @berendsen_pcoupl(%struct.t_inputrec* %ir1, i32 %step, [3 x float]* %arraydecay469, [3 x float]* %arraydecay471, i32 %start, i32 %homenr, [3 x float]* %x, i16* %280, %struct.t_nrnb* %nrnb, [3 x i32]* %281) #4
  br label %if.end510

for.body487.lr.ph:                                ; preds = %for.inc506, %if.then462
  %indvars.iv967 = phi i64 [ %indvars.iv.next968, %for.inc506 ], [ 0, %if.then462 ]
  %indvars.iv965 = phi i32 [ %indvars.iv.next966, %for.inc506 ], [ 1, %if.then462 ]
  br label %for.body487

for.body487:                                      ; preds = %for.body487, %for.body487.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body487 ], [ 0, %for.body487.lr.ph ]
  %arrayidx492 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 2, i64 %indvars.iv967, i64 %indvars.iv
  %282 = load float* %arrayidx492, align 4, !tbaa !3
  %conv493 = fpext float %282 to double
  %mul494 = fmul double %conv19, %conv493
  %arrayidx499 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 1, i64 %indvars.iv967, i64 %indvars.iv
  %283 = load float* %arrayidx499, align 4, !tbaa !3
  %conv500 = fpext float %283 to double
  %add501 = fadd double %conv500, %mul494
  %conv502 = fptrunc double %add501 to float
  store float %conv502, float* %arrayidx499, align 4, !tbaa !3
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %indvars.iv965
  br i1 %exitcond, label %for.inc506, label %for.body487

for.inc506:                                       ; preds = %for.body487
  %indvars.iv.next968 = add i64 %indvars.iv967, 1
  %indvars.iv.next966 = add i32 %indvars.iv965, 1
  %lftr.wideiv969 = trunc i64 %indvars.iv.next968 to i32
  %exitcond970 = icmp eq i32 %lftr.wideiv969, 3
  br i1 %exitcond970, label %if.end510, label %for.body487.lr.ph

if.end510:                                        ; preds = %for.inc506, %if.then462, %if.then467
  call void @_where(i8* getelementptr inbounds ([54 x i8]* @.str1, i64 0, i64 0), i32 844) #4
  br label %if.end511

if.end511:                                        ; preds = %if.end510, %if.end460
  call void @llvm.lifetime.end(i64 36, i8* %0) #3
  ret void
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #3

; Function Attrs: optsize
declare i32 @init_constraints(%struct._IO_FILE*, %struct.t_topology*, %struct.t_inputrec*, %struct.t_mdatoms*, i32, i32, i32, %struct.t_commrec*) #1

; Function Attrs: optsize
declare void @init_edsam(%struct._IO_FILE*, %struct.t_topology*, %struct.t_mdatoms*, i32, i32, [3 x float]*, [3 x float]*, %struct.t_edsamyn*, %struct.t_edpar*) #1

; Function Attrs: optsize
declare void @parrinellorahman_pcoupl(%struct.t_inputrec*, i32, [3 x float]*, [3 x float]*, [3 x float]*, [3 x float]*) #1

; Function Attrs: optsize
declare void @_where(i8*, i32) #1

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @do_update_sd(i32 %start, i32 %homenr, [3 x float]* nocapture %accel, [3 x i32]* nocapture %nFreeze, float* nocapture %invmass, i16* nocapture %ptype, i16* nocapture %cFREEZE, i16* nocapture %cACC, i16* nocapture %cTC, float %SAfactor, [3 x float]* nocapture %x, [3 x float]* nocapture %xprime, [3 x float]* nocapture %v, [3 x float]* nocapture %vold, [3 x float]* nocapture %f, i32 %ngtc, float* nocapture %tau_t, float* nocapture %ref_t, i32* %seed, i32 %bFirstHalf) #0 {
entry:
  %0 = load %struct.t_sd_sigmas** @do_update_sd.sig, align 8, !tbaa !0
  %cmp = icmp eq %struct.t_sd_sigmas* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = tail call i8* @save_calloc(i8* getelementptr inbounds ([4 x i8]* @.str17, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str1, i64 0, i64 0), i32 309, i32 %ngtc, i32 16) #4
  %1 = bitcast i8* %call to %struct.t_sd_sigmas*
  store %struct.t_sd_sigmas* %1, %struct.t_sd_sigmas** @do_update_sd.sig, align 8, !tbaa !0
  %call1 = tail call i8* @save_calloc(i8* getelementptr inbounds ([2 x i8]* @.str18, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str1, i64 0, i64 0), i32 310, i32 %homenr, i32 12) #4
  %2 = bitcast i8* %call1 to [3 x float]*
  store [3 x float]* %2, [3 x float]** @do_update_sd.X, align 8, !tbaa !0
  %call2 = tail call i8* @save_calloc(i8* getelementptr inbounds ([2 x i8]* @.str19, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str1, i64 0, i64 0), i32 311, i32 %homenr, i32 12) #4
  %3 = bitcast i8* %call2 to [3 x float]*
  store [3 x float]* %3, [3 x float]** @do_update_sd.V, align 8, !tbaa !0
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %tobool = icmp ne i32 %bFirstHalf, 0
  %cmp4549 = icmp sgt i32 %ngtc, 0
  %or.cond = and i1 %tobool, %cmp4549
  br i1 %or.cond, label %for.body.lr.ph, label %if.end57

for.body.lr.ph:                                   ; preds = %if.end
  %conv = fpext float %SAfactor to double
  %mul = fmul double %conv, 0x3F810732CDE67DC4
  br label %for.body

for.body:                                         ; preds = %for.body, %for.body.lr.ph
  %indvars.iv553 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next554, %for.body ]
  %arrayidx = getelementptr inbounds float* %ref_t, i64 %indvars.iv553
  %4 = load float* %arrayidx, align 4, !tbaa !3
  %conv5 = fpext float %4 to double
  %mul6 = fmul double %mul, %conv5
  %conv7 = fptrunc double %mul6 to float
  %5 = load %struct.t_sdconst** @sdc, align 8, !tbaa !0
  %em = getelementptr inbounds %struct.t_sdconst* %5, i64 %indvars.iv553, i32 3
  %6 = load float* %em, align 4, !tbaa !3
  %sub = fsub float 1.000000e+00, %6
  %mul10 = fmul float %conv7, %sub
  %conv13 = tail call float @sqrtf(float %mul10) #2
  %7 = load %struct.t_sd_sigmas** @do_update_sd.sig, align 8, !tbaa !0
  %V = getelementptr inbounds %struct.t_sd_sigmas* %7, i64 %indvars.iv553, i32 0
  store float %conv13, float* %V, align 4, !tbaa !3
  %arrayidx17 = getelementptr inbounds float* %tau_t, i64 %indvars.iv553
  %8 = load float* %arrayidx17, align 4, !tbaa !3
  %mul.i = fmul float %8, %8
  %mul19 = fmul float %conv7, %mul.i
  %9 = load %struct.t_sdconst** @sdc, align 8, !tbaa !0
  %c = getelementptr inbounds %struct.t_sdconst* %9, i64 %indvars.iv553, i32 5
  %10 = load float* %c, align 4, !tbaa !3
  %mul22 = fmul float %mul19, %10
  %conv25 = tail call float @sqrtf(float %mul22) #2
  %11 = load %struct.t_sd_sigmas** @do_update_sd.sig, align 8, !tbaa !0
  %X = getelementptr inbounds %struct.t_sd_sigmas* %11, i64 %indvars.iv553, i32 1
  store float %conv25, float* %X, align 4, !tbaa !3
  %12 = load %struct.t_sdconst** @sdc, align 8, !tbaa !0
  %b = getelementptr inbounds %struct.t_sdconst* %12, i64 %indvars.iv553, i32 4
  %13 = load float* %b, align 4, !tbaa !3
  %mul30 = fmul float %conv7, %13
  %c33 = getelementptr inbounds %struct.t_sdconst* %12, i64 %indvars.iv553, i32 5
  %14 = load float* %c33, align 4, !tbaa !3
  %div = fdiv float %mul30, %14
  %conv36 = tail call float @sqrtf(float %div) #2
  %15 = load %struct.t_sd_sigmas** @do_update_sd.sig, align 8, !tbaa !0
  %Yv = getelementptr inbounds %struct.t_sd_sigmas* %15, i64 %indvars.iv553, i32 2
  store float %conv36, float* %Yv, align 4, !tbaa !3
  %16 = load float* %arrayidx17, align 4, !tbaa !3
  %mul.i533 = fmul float %16, %16
  %mul42 = fmul float %conv7, %mul.i533
  %17 = load %struct.t_sdconst** @sdc, align 8, !tbaa !0
  %b45 = getelementptr inbounds %struct.t_sdconst* %17, i64 %indvars.iv553, i32 4
  %18 = load float* %b45, align 4, !tbaa !3
  %mul46 = fmul float %mul42, %18
  %em49 = getelementptr inbounds %struct.t_sdconst* %17, i64 %indvars.iv553, i32 3
  %19 = load float* %em49, align 4, !tbaa !3
  %sub50 = fsub float 1.000000e+00, %19
  %div51 = fdiv float %mul46, %sub50
  %conv54 = tail call float @sqrtf(float %div51) #2
  %20 = load %struct.t_sd_sigmas** @do_update_sd.sig, align 8, !tbaa !0
  %Yx = getelementptr inbounds %struct.t_sd_sigmas* %20, i64 %indvars.iv553, i32 3
  store float %conv54, float* %Yx, align 4, !tbaa !3
  %indvars.iv.next554 = add i64 %indvars.iv553, 1
  %lftr.wideiv555 = trunc i64 %indvars.iv.next554 to i32
  %exitcond556 = icmp eq i32 %lftr.wideiv555, %ngtc
  br i1 %exitcond556, label %if.end57, label %for.body

if.end57:                                         ; preds = %for.body, %if.end
  %call58 = tail call float @rando(i32* %seed) #4
  %add = add nsw i32 %homenr, %start
  %cmp62545 = icmp sgt i32 %homenr, 0
  br i1 %cmp62545, label %for.body64.lr.ph, label %for.end316

for.body64.lr.ph:                                 ; preds = %if.end57
  %mul59 = fmul float %call58, 6.553500e+04
  %conv60 = fptoui float %mul59 to i64
  %21 = sext i32 %start to i64
  br label %for.body64

for.body64:                                       ; preds = %for.body64.lr.ph, %for.inc314
  %indvars.iv551 = phi i64 [ %21, %for.body64.lr.ph ], [ %indvars.iv.next552, %for.inc314 ]
  %vn.0547 = phi float [ 0.000000e+00, %for.body64.lr.ph ], [ %vn.2, %for.inc314 ]
  %and13.i527538546 = phi i64 [ %conv60, %for.body64.lr.ph ], [ %and13.i527540, %for.inc314 ]
  %arrayidx66 = getelementptr inbounds float* %invmass, i64 %indvars.iv551
  %22 = load float* %arrayidx66, align 4, !tbaa !3
  %conv69 = tail call float @sqrtf(float %22) #2
  %arrayidx71 = getelementptr inbounds i16* %cFREEZE, i64 %indvars.iv551
  %23 = load i16* %arrayidx71, align 2, !tbaa !5
  %arrayidx74 = getelementptr inbounds i16* %cACC, i64 %indvars.iv551
  %24 = load i16* %arrayidx74, align 2, !tbaa !5
  %arrayidx77 = getelementptr inbounds i16* %cTC, i64 %indvars.iv551
  %25 = load i16* %arrayidx77, align 2, !tbaa !5
  %arrayidx95 = getelementptr inbounds i16* %ptype, i64 %indvars.iv551
  %26 = load i16* %arrayidx95, align 2, !tbaa !5
  %idxprom106 = zext i16 %23 to i64
  %.b = load i1* @do_update_sd.bFirst, align 1
  %27 = trunc i64 %indvars.iv551 to i32
  %sub128 = sub nsw i32 %27, %start
  %idxprom129 = sext i32 %sub128 to i64
  %28 = load [3 x float]** @do_update_sd.X, align 8, !tbaa !0
  %idxprom132 = zext i16 %25 to i64
  %29 = load %struct.t_sdconst** @sdc, align 8, !tbaa !0
  %d134 = getelementptr inbounds %struct.t_sdconst* %29, i64 %idxprom132, i32 6
  %arrayidx137 = getelementptr inbounds float* %tau_t, i64 %idxprom132
  %c140 = getelementptr inbounds %struct.t_sdconst* %29, i64 %idxprom132, i32 5
  %30 = load %struct.t_sd_sigmas** @do_update_sd.sig, align 8, !tbaa !0
  %Yv145 = getelementptr inbounds %struct.t_sd_sigmas* %30, i64 %idxprom132, i32 2
  %V152 = getelementptr inbounds %struct.t_sd_sigmas* %30, i64 %idxprom132, i32 0
  %31 = load [3 x float]** @do_update_sd.V, align 8, !tbaa !0
  %em163 = getelementptr inbounds %struct.t_sdconst* %29, i64 %idxprom132, i32 3
  %idxprom173 = zext i16 %24 to i64
  %eph = getelementptr inbounds %struct.t_sdconst* %29, i64 %idxprom132, i32 1
  %emh = getelementptr inbounds %struct.t_sdconst* %29, i64 %idxprom132, i32 2
  %X117 = getelementptr inbounds %struct.t_sd_sigmas* %30, i64 %idxprom132, i32 1
  %Yx266 = getelementptr inbounds %struct.t_sd_sigmas* %30, i64 %idxprom132, i32 3
  br label %for.body82

for.body82:                                       ; preds = %for.inc311, %for.body64
  %indvars.iv = phi i64 [ 0, %for.body64 ], [ %indvars.iv.next, %for.inc311 ]
  %vn.1543 = phi float [ %vn.0547, %for.body64 ], [ %vn.2, %for.inc311 ]
  %and13.i527539542 = phi i64 [ %and13.i527538546, %for.body64 ], [ %and13.i527540, %for.inc311 ]
  br i1 %tobool, label %if.then84, label %if.end93

if.then84:                                        ; preds = %for.body82
  %arrayidx88 = getelementptr inbounds [3 x float]* %v, i64 %indvars.iv551, i64 %indvars.iv
  %32 = load float* %arrayidx88, align 4, !tbaa !3
  %arrayidx92 = getelementptr inbounds [3 x float]* %vold, i64 %indvars.iv551, i64 %indvars.iv
  store float %32, float* %arrayidx92, align 4, !tbaa !3
  br label %if.end93

if.end93:                                         ; preds = %if.then84, %for.body82
  %vn.2 = phi float [ %32, %if.then84 ], [ %vn.1543, %for.body82 ]
  switch i16 %26, label %land.lhs.true104 [
    i16 4, label %if.else294
    i16 2, label %if.else294
  ]

land.lhs.true104:                                 ; preds = %if.end93
  %arrayidx108 = getelementptr inbounds [3 x i32]* %nFreeze, i64 %idxprom106, i64 %indvars.iv
  %33 = load i32* %arrayidx108, align 4, !tbaa !4
  %tobool109 = icmp eq i32 %33, 0
  br i1 %tobool109, label %if.then110, label %if.else294

if.then110:                                       ; preds = %land.lhs.true104
  br i1 %tobool, label %if.then112, label %if.else

if.then112:                                       ; preds = %if.then110
  br i1 %.b, label %if.then112.if.end126_crit_edge, label %if.then114

if.then112.if.end126_crit_edge:                   ; preds = %if.then112
  %arrayidx131.phi.trans.insert = getelementptr inbounds [3 x float]* %28, i64 %idxprom129, i64 %indvars.iv
  %.pre = load float* %arrayidx131.phi.trans.insert, align 4, !tbaa !3
  br label %if.end126

if.then114:                                       ; preds = %if.then112
  %34 = load float* %X117, align 4, !tbaa !3
  %mul118 = fmul float %conv69, %34
  %mul.i511 = mul i64 %and13.i527539542, 1093
  %add.i512 = add i64 %mul.i511, 18257
  %and.i513 = and i64 %add.i512, 65535
  %conv.i514 = uitofp i64 %and.i513 to float
  %mul1.i515 = mul i64 %and.i513, 1093
  %add2.i516 = add i64 %mul1.i515, 18257
  %and3.i517 = and i64 %add2.i516, 65535
  %conv4.i518 = uitofp i64 %and3.i517 to float
  %add5.i519 = fadd float %conv.i514, %conv4.i518
  %mul6.i520 = mul i64 %and3.i517, 1093
  %add7.i521 = add i64 %mul6.i520, 18257
  %and8.i522 = and i64 %add7.i521, 65535
  %conv9.i523 = uitofp i64 %and8.i522 to float
  %add10.i524 = fadd float %add5.i519, %conv9.i523
  %mul11.i525 = mul i64 %and8.i522, 1093
  %add12.i526 = add i64 %mul11.i525, 18257
  %and13.i527 = and i64 %add12.i526, 65535
  %conv14.i528 = uitofp i64 %and13.i527 to float
  %add15.i529 = fadd float %add10.i524, %conv14.i528
  %mul16.i530 = fmul float %add15.i529, 0x3EF0001000000000
  %sub.i531 = fadd float %mul16.i530, -2.000000e+00
  %mul17.i532 = fmul float %sub.i531, 0x3FFBB67AE0000000
  %mul120 = fmul float %mul17.i532, %mul118
  %arrayidx125 = getelementptr inbounds [3 x float]* %28, i64 %idxprom129, i64 %indvars.iv
  store float %mul120, float* %arrayidx125, align 4, !tbaa !3
  br label %if.end126

if.end126:                                        ; preds = %if.then112.if.end126_crit_edge, %if.then114
  %35 = phi float [ %.pre, %if.then112.if.end126_crit_edge ], [ %mul120, %if.then114 ]
  %and13.i527541 = phi i64 [ %and13.i527539542, %if.then112.if.end126_crit_edge ], [ %and13.i527, %if.then114 ]
  %36 = load float* %d134, align 4, !tbaa !3
  %mul135 = fmul float %35, %36
  %37 = load float* %arrayidx137, align 4, !tbaa !3
  %38 = load float* %c140, align 4, !tbaa !3
  %mul141 = fmul float %37, %38
  %div142 = fdiv float %mul135, %mul141
  %39 = load float* %Yv145, align 4, !tbaa !3
  %mul146 = fmul float %conv69, %39
  %mul.i489 = mul i64 %and13.i527541, 1093
  %add.i490 = add i64 %mul.i489, 18257
  %and.i491 = and i64 %add.i490, 65535
  %conv.i492 = uitofp i64 %and.i491 to float
  %mul1.i493 = mul i64 %and.i491, 1093
  %add2.i494 = add i64 %mul1.i493, 18257
  %and3.i495 = and i64 %add2.i494, 65535
  %conv4.i496 = uitofp i64 %and3.i495 to float
  %add5.i497 = fadd float %conv.i492, %conv4.i496
  %mul6.i498 = mul i64 %and3.i495, 1093
  %add7.i499 = add i64 %mul6.i498, 18257
  %and8.i500 = and i64 %add7.i499, 65535
  %conv9.i501 = uitofp i64 %and8.i500 to float
  %add10.i502 = fadd float %add5.i497, %conv9.i501
  %mul11.i503 = mul i64 %and8.i500, 1093
  %add12.i504 = add i64 %mul11.i503, 18257
  %and13.i505 = and i64 %add12.i504, 65535
  %conv14.i506 = uitofp i64 %and13.i505 to float
  %add15.i507 = fadd float %add10.i502, %conv14.i506
  %mul16.i508 = fmul float %add15.i507, 0x3EF0001000000000
  %sub.i509 = fadd float %mul16.i508, -2.000000e+00
  %mul17.i510 = fmul float %sub.i509, 0x3FFBB67AE0000000
  %mul148 = fmul float %mul146, %mul17.i510
  %add149 = fadd float %div142, %mul148
  %40 = load float* %V152, align 4, !tbaa !3
  %mul153 = fmul float %conv69, %40
  %mul.i467 = mul i64 %and13.i505, 1093
  %add.i468 = add i64 %mul.i467, 18257
  %and.i469 = and i64 %add.i468, 65535
  %conv.i470 = uitofp i64 %and.i469 to float
  %mul1.i471 = mul i64 %and.i469, 1093
  %add2.i472 = add i64 %mul1.i471, 18257
  %and3.i473 = and i64 %add2.i472, 65535
  %conv4.i474 = uitofp i64 %and3.i473 to float
  %add5.i475 = fadd float %conv.i470, %conv4.i474
  %mul6.i476 = mul i64 %and3.i473, 1093
  %add7.i477 = add i64 %mul6.i476, 18257
  %and8.i478 = and i64 %add7.i477, 65535
  %conv9.i479 = uitofp i64 %and8.i478 to float
  %add10.i480 = fadd float %add5.i475, %conv9.i479
  %mul11.i481 = mul i64 %and8.i478, 1093
  %add12.i482 = add i64 %mul11.i481, 18257
  %and13.i483 = and i64 %add12.i482, 65535
  %conv14.i484 = uitofp i64 %and13.i483 to float
  %add15.i485 = fadd float %add10.i480, %conv14.i484
  %mul16.i486 = fmul float %add15.i485, 0x3EF0001000000000
  %sub.i487 = fadd float %mul16.i486, -2.000000e+00
  %mul17.i488 = fmul float %sub.i487, 0x3FFBB67AE0000000
  %mul155 = fmul float %mul153, %mul17.i488
  %arrayidx160 = getelementptr inbounds [3 x float]* %31, i64 %idxprom129, i64 %indvars.iv
  store float %mul155, float* %arrayidx160, align 4, !tbaa !3
  %41 = load float* %em163, align 4, !tbaa !3
  %mul164 = fmul float %vn.2, %41
  %42 = load float* %arrayidx66, align 4, !tbaa !3
  %arrayidx170 = getelementptr inbounds [3 x float]* %f, i64 %indvars.iv551, i64 %indvars.iv
  %43 = load float* %arrayidx170, align 4, !tbaa !3
  %mul171 = fmul float %42, %43
  %arrayidx175 = getelementptr inbounds [3 x float]* %accel, i64 %idxprom173, i64 %indvars.iv
  %44 = load float* %arrayidx175, align 4, !tbaa !3
  %add176 = fadd float %mul171, %44
  %45 = load float* %arrayidx137, align 4, !tbaa !3
  %mul179 = fmul float %add176, %45
  %sub183 = fsub float 1.000000e+00, %41
  %mul184 = fmul float %sub183, %mul179
  %add185 = fadd float %mul164, %mul184
  %add191 = fadd float %mul155, %add185
  %mul195 = fmul float %41, %add149
  %sub196 = fsub float %add191, %mul195
  %arrayidx200 = getelementptr inbounds [3 x float]* %v, i64 %indvars.iv551, i64 %indvars.iv
  store float %sub196, float* %arrayidx200, align 4, !tbaa !3
  %arrayidx204 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv551, i64 %indvars.iv
  %46 = load float* %arrayidx204, align 4, !tbaa !3
  %47 = load float* %arrayidx137, align 4, !tbaa !3
  %mul211 = fmul float %47, %sub196
  %48 = load float* %eph, align 4, !tbaa !3
  %49 = load float* %emh, align 4, !tbaa !3
  %sub216 = fsub float %48, %49
  %mul217 = fmul float %mul211, %sub216
  %add218 = fadd float %46, %mul217
  %arrayidx222 = getelementptr inbounds [3 x float]* %xprime, i64 %indvars.iv551, i64 %indvars.iv
  store float %add218, float* %arrayidx222, align 4, !tbaa !3
  br label %for.inc311

if.else:                                          ; preds = %if.then110
  %arrayidx226 = getelementptr inbounds [3 x float]* %xprime, i64 %indvars.iv551, i64 %indvars.iv
  %50 = load float* %arrayidx226, align 4, !tbaa !3
  %arrayidx230 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv551, i64 %indvars.iv
  %51 = load float* %arrayidx230, align 4, !tbaa !3
  %sub231 = fsub float %50, %51
  %52 = load float* %arrayidx137, align 4, !tbaa !3
  %53 = load float* %eph, align 4, !tbaa !3
  %54 = load float* %emh, align 4, !tbaa !3
  %sub240 = fsub float %53, %54
  %mul241 = fmul float %52, %sub240
  %div242 = fdiv float %sub231, %mul241
  %arrayidx246 = getelementptr inbounds [3 x float]* %v, i64 %indvars.iv551, i64 %indvars.iv
  store float %div242, float* %arrayidx246, align 4, !tbaa !3
  %arrayidx251 = getelementptr inbounds [3 x float]* %31, i64 %idxprom129, i64 %indvars.iv
  %55 = load float* %arrayidx251, align 4, !tbaa !3
  %56 = load float* %arrayidx137, align 4, !tbaa !3
  %mul254 = fmul float %55, %56
  %57 = load float* %d134, align 4, !tbaa !3
  %mul258 = fmul float %mul254, %57
  %58 = load float* %em163, align 4, !tbaa !3
  %sub262 = fadd float %58, -1.000000e+00
  %div263 = fdiv float %mul258, %sub262
  %59 = load float* %Yx266, align 4, !tbaa !3
  %mul267 = fmul float %conv69, %59
  %mul.i445 = mul i64 %and13.i527539542, 1093
  %add.i446 = add i64 %mul.i445, 18257
  %and.i447 = and i64 %add.i446, 65535
  %conv.i448 = uitofp i64 %and.i447 to float
  %mul1.i449 = mul i64 %and.i447, 1093
  %add2.i450 = add i64 %mul1.i449, 18257
  %and3.i451 = and i64 %add2.i450, 65535
  %conv4.i452 = uitofp i64 %and3.i451 to float
  %add5.i453 = fadd float %conv.i448, %conv4.i452
  %mul6.i454 = mul i64 %and3.i451, 1093
  %add7.i455 = add i64 %mul6.i454, 18257
  %and8.i456 = and i64 %add7.i455, 65535
  %conv9.i457 = uitofp i64 %and8.i456 to float
  %add10.i458 = fadd float %add5.i453, %conv9.i457
  %mul11.i459 = mul i64 %and8.i456, 1093
  %add12.i460 = add i64 %mul11.i459, 18257
  %and13.i461 = and i64 %add12.i460, 65535
  %conv14.i462 = uitofp i64 %and13.i461 to float
  %add15.i463 = fadd float %add10.i458, %conv14.i462
  %mul16.i464 = fmul float %add15.i463, 0x3EF0001000000000
  %sub.i465 = fadd float %mul16.i464, -2.000000e+00
  %mul17.i466 = fmul float %sub.i465, 0x3FFBB67AE0000000
  %mul269 = fmul float %mul17.i466, %mul267
  %add270 = fadd float %div263, %mul269
  %60 = load float* %X117, align 4, !tbaa !3
  %mul274 = fmul float %conv69, %60
  %mul.i444 = mul i64 %and13.i461, 1093
  %add.i = add i64 %mul.i444, 18257
  %and.i = and i64 %add.i, 65535
  %conv.i = uitofp i64 %and.i to float
  %mul1.i = mul i64 %and.i, 1093
  %add2.i = add i64 %mul1.i, 18257
  %and3.i = and i64 %add2.i, 65535
  %conv4.i = uitofp i64 %and3.i to float
  %add5.i = fadd float %conv.i, %conv4.i
  %mul6.i = mul i64 %and3.i, 1093
  %add7.i = add i64 %mul6.i, 18257
  %and8.i = and i64 %add7.i, 65535
  %conv9.i = uitofp i64 %and8.i to float
  %add10.i = fadd float %add5.i, %conv9.i
  %mul11.i = mul i64 %and8.i, 1093
  %add12.i = add i64 %mul11.i, 18257
  %and13.i = and i64 %add12.i, 65535
  %conv14.i = uitofp i64 %and13.i to float
  %add15.i = fadd float %add10.i, %conv14.i
  %mul16.i = fmul float %add15.i, 0x3EF0001000000000
  %sub.i = fadd float %mul16.i, -2.000000e+00
  %mul17.i = fmul float %sub.i, 0x3FFBB67AE0000000
  %mul276 = fmul float %mul17.i, %mul274
  %arrayidx281 = getelementptr inbounds [3 x float]* %28, i64 %idxprom129, i64 %indvars.iv
  store float %mul276, float* %arrayidx281, align 4, !tbaa !3
  %sub287 = fsub float %mul276, %add270
  %61 = load float* %arrayidx226, align 4, !tbaa !3
  %add292 = fadd float %61, %sub287
  store float %add292, float* %arrayidx226, align 4, !tbaa !3
  br label %for.inc311

if.else294:                                       ; preds = %if.end93, %if.end93, %land.lhs.true104
  br i1 %tobool, label %if.then296, label %for.inc311

if.then296:                                       ; preds = %if.else294
  %arrayidx300 = getelementptr inbounds [3 x float]* %v, i64 %indvars.iv551, i64 %indvars.iv
  store float 0.000000e+00, float* %arrayidx300, align 4, !tbaa !3
  %arrayidx304 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv551, i64 %indvars.iv
  %62 = load float* %arrayidx304, align 4, !tbaa !3
  %arrayidx308 = getelementptr inbounds [3 x float]* %xprime, i64 %indvars.iv551, i64 %indvars.iv
  store float %62, float* %arrayidx308, align 4, !tbaa !3
  br label %for.inc311

for.inc311:                                       ; preds = %if.else, %if.end126, %if.then296, %if.else294
  %and13.i527540 = phi i64 [ %and13.i, %if.else ], [ %and13.i483, %if.end126 ], [ %and13.i527539542, %if.then296 ], [ %and13.i527539542, %if.else294 ]
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 3
  br i1 %exitcond, label %for.inc314, label %for.body82

for.inc314:                                       ; preds = %for.inc311
  %indvars.iv.next552 = add i64 %indvars.iv551, 1
  %63 = trunc i64 %indvars.iv.next552 to i32
  %cmp62 = icmp slt i32 %63, %add
  br i1 %cmp62, label %for.body64, label %for.end316

for.end316:                                       ; preds = %for.inc314, %if.end57
  store i1 true, i1* @do_update_sd.bFirst, align 1
  ret void
}

; Function Attrs: optsize
declare i32 @constrain(%struct._IO_FILE*, %struct.t_topology*, %struct.t_inputrec*, i32, %struct.t_mdatoms*, i32, i32, [3 x float]*, [3 x float]*, [3 x float]*, [3 x float]*, float, float*, %struct.t_nrnb*, i32) #1

; Function Attrs: optsize
declare void @fatal_error(i32, i8*, ...) #1

; Function Attrs: optsize
declare void @do_edsam(%struct._IO_FILE*, %struct.t_topology*, %struct.t_inputrec*, i32, %struct.t_mdatoms*, i32, i32, [3 x float]*, [3 x float]*, [3 x float]*, [3 x float]*, [3 x float]*, %struct.t_edsamyn*, %struct.t_edpar*, i32) #1

; Function Attrs: optsize
declare void @pull(%struct.t_pull*, [3 x float]*, [3 x float]*, [3 x float]*, %struct.t_topology*, float, i32, i32, %struct.t_mdatoms*) #1

; Function Attrs: optsize
declare void @calc_vir(%struct._IO_FILE*, i32, [3 x float]*, [3 x float]*, [3 x float]*) #1

; Function Attrs: optsize
declare void @unshift_x(%struct.t_graph*, [3 x float]*, [3 x float]*, [3 x float]*) #1

; Function Attrs: optsize
declare void @update_grps(i32, i32, %struct.t_groups*, %struct.t_grpopts*, [3 x float]*, %struct.t_mdatoms*, i32) #1

; Function Attrs: optsize
declare void @berendsen_pcoupl(%struct.t_inputrec*, i32, [3 x float]*, [3 x float]*, i32, i32, [3 x float]*, i16*, %struct.t_nrnb*, [3 x i32]*) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #3

; Function Attrs: nounwind optsize uwtable
define void @correct_ekin(%struct._IO_FILE* %log, i32 %start, i32 %end, [3 x float]* nocapture %v, float* nocapture %vcm, float* nocapture %mass, float %tmass, [3 x float]* %ekin) #0 {
entry:
  %hvcm = alloca [3 x float], align 4
  %mv = alloca [3 x float], align 4
  %dekin = alloca [3 x [3 x float]], align 16
  %0 = bitcast [3 x [3 x float]]* %dekin to i8*
  call void @llvm.lifetime.start(i64 36, i8* %0) #3
  %arraydecay = getelementptr inbounds [3 x float]* %mv, i64 0, i64 0
  store float 0.000000e+00, float* %arraydecay, align 4, !tbaa !3
  %arrayidx1.i = getelementptr inbounds [3 x float]* %mv, i64 0, i64 1
  store float 0.000000e+00, float* %arrayidx1.i, align 4, !tbaa !3
  %arrayidx2.i = getelementptr inbounds [3 x float]* %mv, i64 0, i64 2
  store float 0.000000e+00, float* %arrayidx2.i, align 4, !tbaa !3
  %cmp104 = icmp slt i32 %start, %end
  br i1 %cmp104, label %for.body.lr.ph, label %for.end13

for.body.lr.ph:                                   ; preds = %entry
  %1 = sext i32 %start to i64
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc11
  %indvars.iv115 = phi i64 [ %1, %for.body.lr.ph ], [ %indvars.iv.next116, %for.inc11 ]
  %tm.0106 = phi float [ 0.000000e+00, %for.body.lr.ph ], [ %add, %for.inc11 ]
  %arrayidx = getelementptr inbounds float* %mass, i64 %indvars.iv115
  %2 = load float* %arrayidx, align 4, !tbaa !3
  br label %for.body3

for.body3:                                        ; preds = %for.body3, %for.body
  %indvars.iv111 = phi i64 [ 0, %for.body ], [ %indvars.iv.next112, %for.body3 ]
  %arrayidx7 = getelementptr inbounds [3 x float]* %v, i64 %indvars.iv115, i64 %indvars.iv111
  %3 = load float* %arrayidx7, align 4, !tbaa !3
  %mul = fmul float %2, %3
  %arrayidx9 = getelementptr inbounds [3 x float]* %mv, i64 0, i64 %indvars.iv111
  %4 = load float* %arrayidx9, align 4, !tbaa !3
  %add10 = fadd float %4, %mul
  store float %add10, float* %arrayidx9, align 4, !tbaa !3
  %indvars.iv.next112 = add i64 %indvars.iv111, 1
  %lftr.wideiv113 = trunc i64 %indvars.iv.next112 to i32
  %exitcond114 = icmp eq i32 %lftr.wideiv113, 3
  br i1 %exitcond114, label %for.inc11, label %for.body3

for.inc11:                                        ; preds = %for.body3
  %add = fadd float %tm.0106, %2
  %indvars.iv.next116 = add i64 %indvars.iv115, 1
  %5 = trunc i64 %indvars.iv.next116 to i32
  %cmp = icmp slt i32 %5, %end
  br i1 %cmp, label %for.body, label %for.end13

for.end13:                                        ; preds = %for.inc11, %entry
  %tm.0.lcssa = phi float [ 0.000000e+00, %entry ], [ %add, %for.inc11 ]
  %div = fdiv float 1.000000e+00, %tmass
  %6 = load float* %vcm, align 4, !tbaa !3
  %mul.i94 = fmul float %div, %6
  store float %mul.i94, float* %vcm, align 4, !tbaa !3
  %arrayidx2.i95 = getelementptr inbounds float* %vcm, i64 1
  %7 = load float* %arrayidx2.i95, align 4, !tbaa !3
  %mul3.i96 = fmul float %div, %7
  store float %mul3.i96, float* %arrayidx2.i95, align 4, !tbaa !3
  %arrayidx5.i98 = getelementptr inbounds float* %vcm, i64 2
  %8 = load float* %arrayidx5.i98, align 4, !tbaa !3
  %mul6.i99 = fmul float %div, %8
  store float %mul6.i99, float* %arrayidx5.i98, align 4, !tbaa !3
  %arraydecay14 = getelementptr inbounds [3 x float]* %hvcm, i64 0, i64 0
  %mul.i = fmul float %mul.i94, 5.000000e-01
  store float %mul.i, float* %arraydecay14, align 4, !tbaa !3
  %mul3.i = fmul float %mul3.i96, 5.000000e-01
  %arrayidx4.i = getelementptr inbounds [3 x float]* %hvcm, i64 0, i64 1
  store float %mul3.i, float* %arrayidx4.i, align 4, !tbaa !3
  %mul6.i = fmul float %mul6.i99, 5.000000e-01
  %arrayidx7.i = getelementptr inbounds [3 x float]* %hvcm, i64 0, i64 2
  store float %mul6.i, float* %arrayidx7.i, align 4, !tbaa !3
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 36, i32 16, i1 false) #3
  br label %for.cond19.preheader

for.cond19.preheader:                             ; preds = %for.inc38.for.cond19.preheader_crit_edge, %for.end13
  %9 = phi float [ %mul.i, %for.end13 ], [ %.pre, %for.inc38.for.cond19.preheader_crit_edge ]
  %indvars.iv107 = phi i64 [ 0, %for.end13 ], [ %indvars.iv.next108, %for.inc38.for.cond19.preheader_crit_edge ]
  %mul26 = fmul float %tm.0.lcssa, %9
  %arrayidx28 = getelementptr inbounds [3 x float]* %mv, i64 0, i64 %indvars.iv107
  %10 = load float* %arrayidx28, align 4, !tbaa !3
  %sub = fsub float %mul26, %10
  br label %for.body21

for.body21:                                       ; preds = %for.body21, %for.cond19.preheader
  %indvars.iv = phi i64 [ 0, %for.cond19.preheader ], [ %indvars.iv.next, %for.body21 ]
  %arrayidx23 = getelementptr inbounds float* %vcm, i64 %indvars.iv
  %11 = load float* %arrayidx23, align 4, !tbaa !3
  %mul29 = fmul float %11, %sub
  %arrayidx33 = getelementptr inbounds [3 x [3 x float]]* %dekin, i64 0, i64 %indvars.iv107, i64 %indvars.iv
  %12 = load float* %arrayidx33, align 4, !tbaa !3
  %add34 = fadd float %12, %mul29
  store float %add34, float* %arrayidx33, align 4, !tbaa !3
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 3
  br i1 %exitcond, label %for.inc38, label %for.body21

for.inc38:                                        ; preds = %for.body21
  %indvars.iv.next108 = add i64 %indvars.iv107, 1
  %lftr.wideiv109 = trunc i64 %indvars.iv.next108 to i32
  %exitcond110 = icmp eq i32 %lftr.wideiv109, 3
  br i1 %exitcond110, label %for.end40, label %for.inc38.for.cond19.preheader_crit_edge

for.inc38.for.cond19.preheader_crit_edge:         ; preds = %for.inc38
  %arrayidx25.phi.trans.insert = getelementptr inbounds [3 x float]* %hvcm, i64 0, i64 %indvars.iv.next108
  %.pre = load float* %arrayidx25.phi.trans.insert, align 4, !tbaa !3
  br label %for.cond19.preheader

for.end40:                                        ; preds = %for.inc38
  %arraydecay15 = getelementptr inbounds [3 x [3 x float]]* %dekin, i64 0, i64 0
  call void @pr_rvecs(%struct._IO_FILE* %log, i32 0, i8* getelementptr inbounds ([6 x i8]* @.str12, i64 0, i64 0), [3 x float]* %arraydecay15, i32 3) #4
  call void @pr_rvecs(%struct._IO_FILE* %log, i32 0, i8* getelementptr inbounds ([6 x i8]* @.str13, i64 0, i64 0), [3 x float]* %ekin, i32 3) #4
  %tobool = icmp eq %struct._IO_FILE* %log, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %for.end40
  %arrayidx1.i87 = getelementptr inbounds [3 x [3 x float]]* %dekin, i64 0, i64 0, i64 0
  %13 = load float* %arrayidx1.i87, align 16, !tbaa !3
  %arrayidx3.i88 = getelementptr inbounds [3 x [3 x float]]* %dekin, i64 0, i64 1, i64 1
  %14 = load float* %arrayidx3.i88, align 4, !tbaa !3
  %add.i89 = fadd float %13, %14
  %arrayidx5.i90 = getelementptr inbounds [3 x [3 x float]]* %dekin, i64 0, i64 2, i64 2
  %15 = load float* %arrayidx5.i90, align 8, !tbaa !3
  %add6.i91 = fadd float %add.i89, %15
  %conv = fpext float %add6.i91 to double
  %arrayidx1.i86 = getelementptr inbounds [3 x float]* %ekin, i64 0, i64 0
  %16 = load float* %arrayidx1.i86, align 4, !tbaa !3
  %arrayidx3.i = getelementptr inbounds [3 x float]* %ekin, i64 1, i64 1
  %17 = load float* %arrayidx3.i, align 4, !tbaa !3
  %add.i = fadd float %16, %17
  %arrayidx5.i = getelementptr inbounds [3 x float]* %ekin, i64 2, i64 2
  %18 = load float* %arrayidx5.i, align 4, !tbaa !3
  %add6.i = fadd float %add.i, %18
  %conv44 = fpext float %add6.i to double
  %19 = load float* %vcm, align 4, !tbaa !3
  %conv46 = fpext float %19 to double
  %20 = load float* %arrayidx2.i95, align 4, !tbaa !3
  %conv48 = fpext float %20 to double
  %21 = load float* %arrayidx5.i98, align 4, !tbaa !3
  %conv50 = fpext float %21 to double
  %call51 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %log, i8* getelementptr inbounds ([50 x i8]* @.str14, i64 0, i64 0), double %conv, double %conv44, double %conv46, double %conv48, double %conv50) #4
  %22 = load float* %arraydecay, align 4, !tbaa !3
  %conv53 = fpext float %22 to double
  %23 = load float* %arrayidx1.i, align 4, !tbaa !3
  %conv55 = fpext float %23 to double
  %24 = load float* %arrayidx2.i, align 4, !tbaa !3
  %conv57 = fpext float %24 to double
  %call58 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %log, i8* getelementptr inbounds ([26 x i8]* @.str15, i64 0, i64 0), double %conv53, double %conv55, double %conv57) #4
  br label %if.end

if.end:                                           ; preds = %for.end40, %if.then
  call void @llvm.lifetime.end(i64 36, i8* %0) #3
  ret void
}

; Function Attrs: optsize
declare void @pr_rvecs(%struct._IO_FILE*, i32, i8*, [3 x float]*, i32) #1

; Function Attrs: optsize
declare float @rando(i32*) #1

declare float @fabsf(float)

; Function Attrs: nounwind optsize
declare float @sqrtf(float) #2

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #3

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { nounwind optsize }
attributes #5 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { optsize }

!0 = metadata !{metadata !"any pointer", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"float", metadata !1}
!4 = metadata !{metadata !"int", metadata !1}
!5 = metadata !{metadata !"short", metadata !1}
!6 = metadata !{metadata !"double", metadata !1}
