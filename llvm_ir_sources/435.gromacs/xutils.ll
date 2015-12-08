; ModuleID = '../../SPEC/benchspec/CPU2006/435.gromacs/src/xutils.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.t_range = type { i32, i32, i32, float, float, float, float }
%struct.t_genalg = type { i32, i32, i32, i32, i32, i32, i32, float, float, float**, float**, float*, float*, float*, float*, float*, float* }
%struct.t_commrec = type { i32, i32, i32, i32, i32, i32 }
%struct.t_nsborder = type { i32, i32, i32, i32, i32, i32, i32, [256 x i32], [256 x i32], [256 x i32], [256 x i32] }
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
@debug = external global %struct._IO_FILE*
@.str = private unnamed_addr constant [21 x i8] c"type: %s, value: %g\0A\00", align 1
@esenm = internal unnamed_addr constant [5 x i8*] [i8* getelementptr inbounds ([4 x i8]* @.str39, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str40, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str41, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str42, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str43, i32 0, i32 0)], align 16
@update_forcefield.ntry = internal unnamed_addr global i32 0, align 4
@update_forcefield.ntried = internal unnamed_addr global i32 0, align 4
@nparm = internal global i32 0, align 4
@range = internal unnamed_addr global %struct.t_range* null, align 8
@.str1 = private unnamed_addr constant [32 x i8] c"No correct parameter info in %s\00", align 1
@.str2 = private unnamed_addr constant [10 x i8] c"param_val\00", align 1
@.str3 = private unnamed_addr constant [54 x i8] c"../../SPEC/benchspec/CPU2006/435.gromacs/src/xutils.c\00", align 1
@param_val = internal unnamed_addr global i32* null, align 8
@.str4 = private unnamed_addr constant [4 x i8] c"-ga\00", align 1
@ga = internal unnamed_addr global %struct.t_genalg* null, align 8
@stdlog = external global %struct._IO_FILE*
@.str5 = private unnamed_addr constant [57 x i8] c"Going to try %d different combinations of %d parameters\0A\00", align 1
@.str6 = private unnamed_addr constant [39 x i8] c"Finished with %d out of %d iterations\0A\00", align 1
@gmx_parallel = external global i32
@stderr = external global %struct._IO_FILE*
@print_grid.bFirst = internal unnamed_addr global i1 false
@print_grid.desc = internal unnamed_addr constant [5 x i8*] [i8* getelementptr inbounds ([73 x i8]* @.str8, i32 0, i32 0), i8* getelementptr inbounds ([69 x i8]* @.str9, i32 0, i32 0), i8* getelementptr inbounds ([73 x i8]* @.str10, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8]* @.str11, i32 0, i32 0), i8* getelementptr inbounds ([73 x i8]* @.str8, i32 0, i32 0)], align 16
@.str8 = private unnamed_addr constant [73 x i8] c"------------------------------------------------------------------------\00", align 1
@.str9 = private unnamed_addr constant [69 x i8] c"In the output from the forcefield scan we have the potential energy,\00", align 1
@.str10 = private unnamed_addr constant [73 x i8] c"then the root mean square force on the atoms, and finally the parameters\00", align 1
@.str11 = private unnamed_addr constant [44 x i8] c"in the order they appear in the input file.\00", align 1
@.str12 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str13 = private unnamed_addr constant [20 x i8] c"%8.3f  %8.3f  %8.3f\00", align 1
@.str14 = private unnamed_addr constant [9 x i8] c" %s %10g\00", align 1
@.str15 = private unnamed_addr constant [5 x i8] c" FF\0A\00", align 1
@update_ff.sigma = internal unnamed_addr global double* null, align 8
@update_ff.eps = internal unnamed_addr global double* null, align 8
@update_ff.c6 = internal unnamed_addr global double* null, align 8
@update_ff.cn = internal unnamed_addr global double* null, align 8
@update_ff.bhama = internal unnamed_addr global double* null, align 8
@update_ff.bhamb = internal unnamed_addr global double* null, align 8
@update_ff.bhamc = internal unnamed_addr global double* null, align 8
@.str16 = private unnamed_addr constant [6 x i8] c"bhama\00", align 1
@.str17 = private unnamed_addr constant [6 x i8] c"bhamb\00", align 1
@.str18 = private unnamed_addr constant [6 x i8] c"bhamc\00", align 1
@.str19 = private unnamed_addr constant [6 x i8] c"sigma\00", align 1
@.str20 = private unnamed_addr constant [4 x i8] c"eps\00", align 1
@.str21 = private unnamed_addr constant [3 x i8] c"c6\00", align 1
@.str22 = private unnamed_addr constant [3 x i8] c"cn\00", align 1
@.str23 = private unnamed_addr constant [14 x i8] c"Unknown ptype\00", align 1
@.str24 = private unnamed_addr constant [35 x i8] c"c6[%d] = %12.5e  c12[%d] = %12.5e\0A\00", align 1
@.str25 = private unnamed_addr constant [40 x i8] c"atnr = %2d  sigma = %8.4f  eps = %8.4f\0A\00", align 1
@.str26 = private unnamed_addr constant [52 x i8] c"i: %2d  j: %2d  A:  %10.5e  B:  %10.5e  C:  %10.5e\0A\00", align 1
@.str27 = private unnamed_addr constant [42 x i8] c"i: %2d  j: %2d  c6:  %10.5e  cn:  %10.5e\0A\00", align 1
@.str28 = private unnamed_addr constant [49 x i8] c"Value (%d) out of range for value_range (max %d)\00", align 1
@.str29 = private unnamed_addr constant [6 x i8] c"range\00", align 1
@.str30 = private unnamed_addr constant [13 x i8] c"%d%d%d%lf%lf\00", align 1
@.str31 = private unnamed_addr constant [71 x i8] c"When using logarithmic epsilon increments the minimumvalue must be > 0\00", align 1
@.str32 = private unnamed_addr constant [36 x i8] c"found %d variables to iterate over\0A\00", align 1
@.str33 = private unnamed_addr constant [10 x i8] c"lines[nr]\00", align 1
@.str34 = private unnamed_addr constant [6 x i8] c"lines\00", align 1
@.str35 = private unnamed_addr constant [22 x i8] c"rmin (%f) > rmax (%f)\00", align 1
@.str36 = private unnamed_addr constant [22 x i8] c"np (%d) should be > 0\00", align 1
@.str37 = private unnamed_addr constant [33 x i8] c"If rmax > rmin, np should be > 1\00", align 1
@.str38 = private unnamed_addr constant [26 x i8] c"ptype (%d) should be < %d\00", align 1
@.str39 = private unnamed_addr constant [4 x i8] c"SIG\00", align 1
@.str40 = private unnamed_addr constant [4 x i8] c"EPS\00", align 1
@.str41 = private unnamed_addr constant [6 x i8] c"BHAMA\00", align 1
@.str42 = private unnamed_addr constant [6 x i8] c"BHAMB\00", align 1
@.str43 = private unnamed_addr constant [6 x i8] c"BHAMC\00", align 1

; Function Attrs: nounwind optsize uwtable
define float @mol_dipole(i32 %k0, i32 %k1, i32* nocapture %ma, [3 x float]* nocapture %x, float* nocapture %q) #0 {
entry:
  %mu = alloca [3 x float], align 4
  %arraydecay = getelementptr inbounds [3 x float]* %mu, i64 0, i64 0
  store float 0.000000e+00, float* %arraydecay, align 4, !tbaa !0
  %arrayidx1.i = getelementptr inbounds [3 x float]* %mu, i64 0, i64 1
  store float 0.000000e+00, float* %arrayidx1.i, align 4, !tbaa !0
  %arrayidx2.i = getelementptr inbounds [3 x float]* %mu, i64 0, i64 2
  store float 0.000000e+00, float* %arrayidx2.i, align 4, !tbaa !0
  %cmp24 = icmp slt i32 %k0, %k1
  br i1 %cmp24, label %for.body.lr.ph, label %for.end14

for.body.lr.ph:                                   ; preds = %entry
  %0 = sext i32 %k0 to i64
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc12
  %indvars.iv26 = phi i64 [ %0, %for.body.lr.ph ], [ %indvars.iv.next27, %for.inc12 ]
  %arrayidx = getelementptr inbounds i32* %ma, i64 %indvars.iv26
  %1 = load i32* %arrayidx, align 4, !tbaa !3
  %idxprom4 = sext i32 %1 to i64
  %arrayidx5 = getelementptr inbounds float* %q, i64 %idxprom4
  %2 = load float* %arrayidx5, align 4, !tbaa !0
  br label %for.body3

for.body3:                                        ; preds = %for.body3, %for.body
  %indvars.iv = phi i64 [ 0, %for.body ], [ %indvars.iv.next, %for.body3 ]
  %arrayidx9 = getelementptr inbounds [3 x float]* %x, i64 %idxprom4, i64 %indvars.iv
  %3 = load float* %arrayidx9, align 4, !tbaa !0
  %mul = fmul float %2, %3
  %arrayidx11 = getelementptr inbounds [3 x float]* %mu, i64 0, i64 %indvars.iv
  %4 = load float* %arrayidx11, align 4, !tbaa !0
  %add = fadd float %4, %mul
  store float %add, float* %arrayidx11, align 4, !tbaa !0
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 3
  br i1 %exitcond, label %for.inc12, label %for.body3

for.inc12:                                        ; preds = %for.body3
  %indvars.iv.next27 = add i64 %indvars.iv26, 1
  %5 = trunc i64 %indvars.iv.next27 to i32
  %cmp = icmp slt i32 %5, %k1
  br i1 %cmp, label %for.body, label %for.cond.for.end14_crit_edge

for.cond.for.end14_crit_edge:                     ; preds = %for.inc12
  %.pre = load float* %arraydecay, align 4, !tbaa !0
  %.pre28 = load float* %arrayidx1.i, align 4, !tbaa !0
  %.pre29 = load float* %arrayidx2.i, align 4, !tbaa !0
  br label %for.end14

for.end14:                                        ; preds = %for.cond.for.end14_crit_edge, %entry
  %6 = phi float [ %.pre29, %for.cond.for.end14_crit_edge ], [ 0.000000e+00, %entry ]
  %7 = phi float [ %.pre28, %for.cond.for.end14_crit_edge ], [ 0.000000e+00, %entry ]
  %8 = phi float [ %.pre, %for.cond.for.end14_crit_edge ], [ 0.000000e+00, %entry ]
  %mul.i = fmul float %8, %8
  %mul4.i = fmul float %7, %7
  %add.i = fadd float %mul.i, %mul4.i
  %mul7.i = fmul float %6, %6
  %add8.i = fadd float %add.i, %mul7.i
  %conv9.i = call float @sqrtf(float %add8.i) #3
  ret float %conv9.i
}

; Function Attrs: nounwind optsize uwtable
define float @calc_mu_aver(%struct.t_commrec* nocapture %cr, %struct.t_nsborder* nocapture %nsb, [3 x float]* nocapture %x, float* nocapture %q, float* nocapture %mu, %struct.t_topology* nocapture %top, %struct.t_mdatoms* nocapture %md, i32 %gnx, i32* nocapture %grpindex) #0 {
entry:
  %cmp = icmp sgt i32 %gnx, 0
  br i1 %cmp, label %for.body.lr.ph, label %return

for.body.lr.ph:                                   ; preds = %entry
  %index10 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 3, i64 1, i32 2
  %a = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 3, i64 1, i32 4
  br label %for.body

for.body:                                         ; preds = %for.body, %for.body.lr.ph
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.body ]
  %mu_ave.030 = phi float [ 0.000000e+00, %for.body.lr.ph ], [ %add16, %for.body ]
  %arrayidx8 = getelementptr inbounds i32* %grpindex, i64 %indvars.iv
  %0 = load i32* %arrayidx8, align 4, !tbaa !3
  %idxprom9 = sext i32 %0 to i64
  %1 = load i32** %index10, align 8, !tbaa !4
  %arrayidx11 = getelementptr inbounds i32* %1, i64 %idxprom9
  %2 = load i32* %arrayidx11, align 4, !tbaa !3
  %add12 = add nsw i32 %0, 1
  %idxprom13 = sext i32 %add12 to i64
  %arrayidx15 = getelementptr inbounds i32* %1, i64 %idxprom13
  %3 = load i32* %arrayidx15, align 4, !tbaa !3
  %4 = load i32** %a, align 8, !tbaa !4
  %call = tail call float @mol_dipole(i32 %2, i32 %3, i32* %4, [3 x float]* %x, float* %q) #6
  %add16 = fadd float %mu_ave.030, %call
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %gnx
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.body
  %conv = sitofp i32 %gnx to float
  %div = fdiv float %add16, %conv
  br label %return

return:                                           ; preds = %entry, %for.end
  %retval.0 = phi float [ %div, %for.end ], [ 0.000000e+00, %entry ]
  ret float %retval.0
}

; Function Attrs: nounwind optsize uwtable
define void @set_ffvars(float %ff_tol, float %ff_epot, float %ff_npow, i32 %ff_bComb, float %ff_fmax, i32 %ff_bLogEps, float %ff_ratio) #0 {
entry:
  store float %ff_tol, float* @tol, align 4, !tbaa !0
  store float %ff_epot, float* @epot, align 4, !tbaa !0
  store float %ff_npow, float* @npow, align 4, !tbaa !0
  store float %ff_fmax, float* @forcemax, align 4, !tbaa !0
  store float %ff_ratio, float* @ratio, align 4, !tbaa !0
  store i32 %ff_bLogEps, i32* @bLogEps, align 4, !tbaa !3
  ret void
}

; Function Attrs: nounwind optsize readonly uwtable
define float @cost(float %rmsf, float %energy) #1 {
entry:
  %0 = load float* @ratio, align 4, !tbaa !0
  %mul = fmul float %0, %rmsf
  %1 = load float* @epot, align 4, !tbaa !0
  %sub = fsub float %energy, %1
  %fabsf = tail call float @fabsf(float %sub) #7
  %conv2 = fadd float %mul, %fabsf
  ret float %conv2
}

; Function Attrs: nounwind optsize uwtable
define float @value_rand(%struct.t_range* nocapture %r, i32* %seed) #0 {
entry:
  %np = getelementptr inbounds %struct.t_range* %r, i64 0, i32 0
  %0 = load i32* %np, align 4, !tbaa !3
  %cmp = icmp eq i32 %0, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %rmin = getelementptr inbounds %struct.t_range* %r, i64 0, i32 3
  %1 = load float* %rmin, align 4, !tbaa !0
  %rval = getelementptr inbounds %struct.t_range* %r, i64 0, i32 6
  store float %1, float* %rval, align 4, !tbaa !0
  br label %if.end21

if.else:                                          ; preds = %entry
  %call = tail call float @rando(i32* %seed) #8
  %ptype = getelementptr inbounds %struct.t_range* %r, i64 0, i32 2
  %2 = load i32* %ptype, align 4, !tbaa !3
  %cmp1 = icmp eq i32 %2, 1
  %3 = load i32* @bLogEps, align 4, !tbaa !3
  %tobool = icmp ne i32 %3, 0
  %or.cond = and i1 %cmp1, %tobool
  %rmin3 = getelementptr inbounds %struct.t_range* %r, i64 0, i32 3
  %4 = load float* %rmin3, align 4, !tbaa !0
  br i1 %or.cond, label %if.then2, label %if.else13

if.then2:                                         ; preds = %if.else
  %conv = fpext float %4 to double
  %call4 = tail call double @log(double %conv) #8
  %conv5 = fptrunc double %call4 to float
  %rmax = getelementptr inbounds %struct.t_range* %r, i64 0, i32 4
  %5 = load float* %rmax, align 4, !tbaa !0
  %conv6 = fpext float %5 to double
  %call7 = tail call double @log(double %conv6) #8
  %conv8 = fptrunc double %call7 to float
  %sub = fsub float %conv8, %conv5
  %mul = fmul float %call, %sub
  %add = fadd float %conv5, %mul
  %conv9 = fpext float %add to double
  %call10 = tail call double @exp(double %conv9) #8
  %conv11 = fptrunc double %call10 to float
  %rval12 = getelementptr inbounds %struct.t_range* %r, i64 0, i32 6
  store float %conv11, float* %rval12, align 4, !tbaa !0
  br label %if.end21

if.else13:                                        ; preds = %if.else
  %rmax15 = getelementptr inbounds %struct.t_range* %r, i64 0, i32 4
  %6 = load float* %rmax15, align 4, !tbaa !0
  %sub17 = fsub float %6, %4
  %mul18 = fmul float %call, %sub17
  %add19 = fadd float %4, %mul18
  %rval20 = getelementptr inbounds %struct.t_range* %r, i64 0, i32 6
  store float %add19, float* %rval20, align 4, !tbaa !0
  br label %if.end21

if.end21:                                         ; preds = %if.then2, %if.else13, %if.then
  %7 = phi float [ %conv11, %if.then2 ], [ %add19, %if.else13 ], [ %1, %if.then ]
  %8 = load %struct._IO_FILE** @debug, align 8, !tbaa !4
  %tobool22 = icmp eq %struct._IO_FILE* %8, null
  br i1 %tobool22, label %if.end28, label %if.then23

if.then23:                                        ; preds = %if.end21
  %ptype24 = getelementptr inbounds %struct.t_range* %r, i64 0, i32 2
  %9 = load i32* %ptype24, align 4, !tbaa !3
  %idxprom = sext i32 %9 to i64
  %arrayidx = getelementptr inbounds [5 x i8*]* @esenm, i64 0, i64 %idxprom
  %10 = load i8** %arrayidx, align 8, !tbaa !4
  %rval25 = getelementptr inbounds %struct.t_range* %r, i64 0, i32 6
  %conv26 = fpext float %7 to double
  %call27 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([21 x i8]* @.str, i64 0, i64 0), i8* %10, double %conv26) #8
  %.pre = load float* %rval25, align 4, !tbaa !0
  br label %if.end28

if.end28:                                         ; preds = %if.end21, %if.then23
  %11 = phi float [ %.pre, %if.then23 ], [ %7, %if.end21 ]
  ret float %11
}

; Function Attrs: optsize
declare float @rando(i32*) #2

; Function Attrs: nounwind optsize
declare double @log(double) #3

; Function Attrs: nounwind optsize
declare double @exp(double) #3

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #3

; Function Attrs: nounwind optsize uwtable
define void @update_forcefield(i32 %nfile, %struct.t_filenm* %fnm, %struct.t_forcerec* nocapture %fr) #0 {
entry:
  %np.i = alloca i32, align 4
  %lines.i = alloca i8**, align 8
  %atype.i = alloca i32, align 4
  %ptype.i = alloca i32, align 4
  %rmin.i = alloca double, align 8
  %rmax.i = alloca double, align 8
  %0 = load i32* @nparm, align 4, !tbaa !3
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.else16

if.then:                                          ; preds = %entry
  %call = call i8* @ftp2fn(i32 33, i32 %nfile, %struct.t_filenm* %fnm) #8
  %1 = bitcast i32* %np.i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #5
  %2 = bitcast i8*** %lines.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #5
  %3 = bitcast i32* %atype.i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #5
  %4 = bitcast i32* %ptype.i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #5
  %5 = bitcast double* %rmin.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #5
  %6 = bitcast double* %rmax.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #5
  store i8** null, i8*** %lines.i, align 8, !tbaa !4
  %call.i = call i32 @get_file(i8* %call, i8*** %lines.i) #8
  %call1.i = call i8* @save_calloc(i8* getelementptr inbounds ([6 x i8]* @.str29, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str3, i64 0, i64 0), i32 153, i32 %call.i, i32 28) #8
  %7 = bitcast i8* %call1.i to %struct.t_range*
  %cmp3.i = icmp sgt i32 %call.i, 0
  br i1 %cmp3.i, label %for.body.i, label %for.end.thread.i

for.end.thread.i:                                 ; preds = %if.then
  %8 = load %struct._IO_FILE** @stderr, align 8, !tbaa !4
  %call1510.i = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([36 x i8]* @.str32, i64 0, i64 0), i32 0) #8
  store i32 0, i32* @nparm, align 4, !tbaa !3
  br label %read_range.exit

for.body.i:                                       ; preds = %if.then, %for.inc.i
  %indvars.iv6.i = phi i64 [ %indvars.iv.next7.i, %for.inc.i ], [ 0, %if.then ]
  %nr.05.i = phi i32 [ %nr.1.i, %for.inc.i ], [ 0, %if.then ]
  %9 = load i8*** %lines.i, align 8, !tbaa !4
  %arrayidx.i = getelementptr inbounds i8** %9, i64 %indvars.iv6.i
  %10 = load i8** %arrayidx.i, align 8, !tbaa !4
  call void @strip_comment(i8* %10) #8
  %11 = load i8*** %lines.i, align 8, !tbaa !4
  %arrayidx3.i = getelementptr inbounds i8** %11, i64 %indvars.iv6.i
  %12 = load i8** %arrayidx3.i, align 8, !tbaa !4
  %call4.i = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %12, i8* getelementptr inbounds ([13 x i8]* @.str30, i64 0, i64 0), i32* %np.i, i32* %atype.i, i32* %ptype.i, double* %rmin.i, double* %rmax.i) #8
  %cmp5.i = icmp eq i32 %call4.i, 5
  br i1 %cmp5.i, label %if.then.i, label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  %13 = load i32* @bLogEps, align 4, !tbaa !3
  %tobool.i = icmp eq i32 %13, 0
  br i1 %tobool.i, label %if.endthread-pre-split.i, label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %if.then.i
  %14 = load i32* %ptype.i, align 4, !tbaa !3
  %cmp6.i = icmp eq i32 %14, 1
  br i1 %cmp6.i, label %land.lhs.true7.i, label %if.end.i

land.lhs.true7.i:                                 ; preds = %land.lhs.true.i
  %15 = load double* %rmin.i, align 8, !tbaa !5
  %cmp8.i = fcmp ugt double %15, 0.000000e+00
  br i1 %cmp8.i, label %if.endthread-pre-split.i, label %if.then9.i

if.then9.i:                                       ; preds = %land.lhs.true7.i
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([71 x i8]* @.str31, i64 0, i64 0)) #8
  br label %if.endthread-pre-split.i

if.endthread-pre-split.i:                         ; preds = %if.then.i, %if.then9.i, %land.lhs.true7.i
  %.pr.i = load i32* %ptype.i, align 4, !tbaa !3
  br label %if.end.i

if.end.i:                                         ; preds = %land.lhs.true.i, %if.endthread-pre-split.i
  %16 = phi i32 [ %.pr.i, %if.endthread-pre-split.i ], [ %14, %land.lhs.true.i ]
  %idxprom10.i = sext i32 %nr.05.i to i64
  %17 = load i32* %np.i, align 4, !tbaa !3
  %18 = load i32* %atype.i, align 4, !tbaa !3
  %19 = load double* %rmin.i, align 8, !tbaa !5
  %conv.i = fptrunc double %19 to float
  %20 = load double* %rmax.i, align 8, !tbaa !5
  %conv12.i = fptrunc double %20 to float
  %cmp.i.i = fcmp ogt float %conv.i, %conv12.i
  br i1 %cmp.i.i, label %if.then.i.i, label %if.end.i.i

if.then.i.i:                                      ; preds = %if.end.i
  %conv.i.i = fpext float %conv.i to double
  %conv1.i.i = fpext float %conv12.i to double
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([22 x i8]* @.str35, i64 0, i64 0), double %conv.i.i, double %conv1.i.i) #8
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %if.end.i
  %cmp2.i.i = icmp slt i32 %17, 1
  br i1 %cmp2.i.i, label %if.then4.i.i, label %if.end5.i.i

if.then4.i.i:                                     ; preds = %if.end.i.i
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([22 x i8]* @.str36, i64 0, i64 0), i32 %17) #8
  br label %if.end5.i.i

if.end5.i.i:                                      ; preds = %if.then4.i.i, %if.end.i.i
  %cmp6.i.i = fcmp ogt float %conv12.i, %conv.i
  %cmp8.i.i = icmp slt i32 %17, 2
  %or.cond.i.i = and i1 %cmp6.i.i, %cmp8.i.i
  br i1 %or.cond.i.i, label %if.then10.i.i, label %if.end11.i.i

if.then10.i.i:                                    ; preds = %if.end5.i.i
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([33 x i8]* @.str37, i64 0, i64 0)) #8
  br label %if.end11.i.i

if.end11.i.i:                                     ; preds = %if.then10.i.i, %if.end5.i.i
  %21 = icmp ugt i32 %16, 4
  br i1 %21, label %if.then16.i.i, label %init_range.exit.i

if.then16.i.i:                                    ; preds = %if.end11.i.i
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([26 x i8]* @.str38, i64 0, i64 0), i32 %16, i32 5) #8
  br label %init_range.exit.i

init_range.exit.i:                                ; preds = %if.then16.i.i, %if.end11.i.i
  %np18.i.i = getelementptr inbounds %struct.t_range* %7, i64 %idxprom10.i, i32 0
  store i32 %17, i32* %np18.i.i, align 4, !tbaa !3
  %atype19.i.i = getelementptr inbounds %struct.t_range* %7, i64 %idxprom10.i, i32 1
  store i32 %18, i32* %atype19.i.i, align 4, !tbaa !3
  %ptype20.i.i = getelementptr inbounds %struct.t_range* %7, i64 %idxprom10.i, i32 2
  store i32 %16, i32* %ptype20.i.i, align 4, !tbaa !3
  %rmin21.i.i = getelementptr inbounds %struct.t_range* %7, i64 %idxprom10.i, i32 3
  store float %conv.i, float* %rmin21.i.i, align 4, !tbaa !0
  %rmax22.i.i = getelementptr inbounds %struct.t_range* %7, i64 %idxprom10.i, i32 4
  store float %conv12.i, float* %rmax22.i.i, align 4, !tbaa !0
  %rval.i.i = getelementptr inbounds %struct.t_range* %7, i64 %idxprom10.i, i32 6
  store float %conv.i, float* %rval.i.i, align 4, !tbaa !0
  %sub.i.i = fsub float %conv12.i, %conv.i
  %dr.i.i = getelementptr inbounds %struct.t_range* %7, i64 %idxprom10.i, i32 5
  store float %sub.i.i, float* %dr.i.i, align 4, !tbaa !0
  %inc.i = add nsw i32 %nr.05.i, 1
  br label %for.inc.i

for.inc.i:                                        ; preds = %init_range.exit.i, %for.body.i
  %nr.1.i = phi i32 [ %inc.i, %init_range.exit.i ], [ %nr.05.i, %for.body.i ]
  %indvars.iv.next7.i = add i64 %indvars.iv6.i, 1
  %lftr.wideiv132 = trunc i64 %indvars.iv.next7.i to i32
  %exitcond133 = icmp eq i32 %lftr.wideiv132, %call.i
  br i1 %exitcond133, label %for.body19.i.preheader, label %for.body.i

for.body19.i.preheader:                           ; preds = %for.inc.i
  %22 = load %struct._IO_FILE** @stderr, align 8, !tbaa !4
  %call15.i = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %22, i8* getelementptr inbounds ([36 x i8]* @.str32, i64 0, i64 0), i32 %nr.1.i) #8
  store i32 %nr.1.i, i32* @nparm, align 4, !tbaa !3
  br label %for.body19.i

for.body19.i:                                     ; preds = %for.body19.i.preheader, %for.body19.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %for.body19.i ], [ 0, %for.body19.i.preheader ]
  %23 = load i8*** %lines.i, align 8, !tbaa !4
  %arrayidx21.i = getelementptr inbounds i8** %23, i64 %indvars.iv.i
  %24 = load i8** %arrayidx21.i, align 8, !tbaa !4
  call void @save_free(i8* getelementptr inbounds ([10 x i8]* @.str33, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str3, i64 0, i64 0), i32 171, i8* %24) #8
  %indvars.iv.next.i = add i64 %indvars.iv.i, 1
  %lftr.wideiv130 = trunc i64 %indvars.iv.next.i to i32
  %exitcond131 = icmp eq i32 %lftr.wideiv130, %call.i
  br i1 %exitcond131, label %read_range.exit, label %for.body19.i

read_range.exit:                                  ; preds = %for.body19.i, %for.end.thread.i
  %25 = load i8*** %lines.i, align 8, !tbaa !4
  %26 = bitcast i8** %25 to i8*
  call void @save_free(i8* getelementptr inbounds ([6 x i8]* @.str34, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str3, i64 0, i64 0), i32 172, i8* %26) #8
  call void @llvm.lifetime.end(i64 4, i8* %1) #5
  call void @llvm.lifetime.end(i64 8, i8* %2) #5
  call void @llvm.lifetime.end(i64 4, i8* %3) #5
  call void @llvm.lifetime.end(i64 4, i8* %4) #5
  call void @llvm.lifetime.end(i64 8, i8* %5) #5
  call void @llvm.lifetime.end(i64 8, i8* %6) #5
  store %struct.t_range* %7, %struct.t_range** @range, align 8, !tbaa !4
  %27 = load i32* @nparm, align 4, !tbaa !3
  %cmp2 = icmp eq i32 %27, 0
  br i1 %cmp2, label %if.then3, label %if.end

if.then3:                                         ; preds = %read_range.exit
  %call4 = call i8* @ftp2fn(i32 33, i32 %nfile, %struct.t_filenm* %fnm) #8
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([32 x i8]* @.str1, i64 0, i64 0), i8* %call4) #8
  %.pre = load i32* @nparm, align 4, !tbaa !3
  br label %if.end

if.end:                                           ; preds = %if.then3, %read_range.exit
  %28 = phi i32 [ %.pre, %if.then3 ], [ %27, %read_range.exit ]
  %call5 = call i8* @save_calloc(i8* getelementptr inbounds ([10 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str3, i64 0, i64 0), i32 324, i32 %28, i32 4) #8
  %29 = bitcast i8* %call5 to i32*
  store i32* %29, i32** @param_val, align 8, !tbaa !4
  %call6 = call i32 @opt2bSet(i8* getelementptr inbounds ([4 x i8]* @.str4, i64 0, i64 0), i32 %nfile, %struct.t_filenm* %fnm) #8
  %tobool = icmp eq i32 %call6, 0
  br i1 %tobool, label %if.else, label %if.then7

if.then7:                                         ; preds = %if.end
  %call8 = call i8* @opt2fn(i8* getelementptr inbounds ([4 x i8]* @.str4, i64 0, i64 0), i32 %nfile, %struct.t_filenm* %fnm) #8
  %30 = load i32* @nparm, align 4, !tbaa !3
  %31 = load %struct.t_range** @range, align 8, !tbaa !4
  %call9 = call %struct.t_genalg* @init_ga(i8* %call8, i32 %30, %struct.t_range* %31) #8
  store %struct.t_genalg* %call9, %struct.t_genalg** @ga, align 8, !tbaa !4
  br label %if.end57thread-pre-split

if.else:                                          ; preds = %if.end
  store i32 1, i32* @update_forcefield.ntry, align 4, !tbaa !3
  %32 = load i32* @nparm, align 4, !tbaa !3
  %cmp10102 = icmp sgt i32 %32, 0
  br i1 %cmp10102, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %if.else
  %33 = load %struct.t_range** @range, align 8, !tbaa !4
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %34 = phi i32 [ 1, %for.body.lr.ph ], [ %mul, %for.body ]
  %indvars.iv128 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next129, %for.body ]
  %np = getelementptr inbounds %struct.t_range* %33, i64 %indvars.iv128, i32 0
  %35 = load i32* %np, align 4, !tbaa !3
  %mul = mul nsw i32 %34, %35
  store i32 %mul, i32* @update_forcefield.ntry, align 4, !tbaa !3
  %indvars.iv.next129 = add i64 %indvars.iv128, 1
  %36 = trunc i64 %indvars.iv.next129 to i32
  %cmp10 = icmp slt i32 %36, %32
  br i1 %cmp10, label %for.body, label %for.end

for.end:                                          ; preds = %for.body, %if.else
  %37 = phi i32 [ 1, %if.else ], [ %mul, %for.body ]
  store i32 0, i32* @update_forcefield.ntried, align 4, !tbaa !3
  %38 = load %struct._IO_FILE** @stdlog, align 8, !tbaa !4
  %tobool11 = icmp eq %struct._IO_FILE* %38, null
  br i1 %tobool11, label %if.end57thread-pre-split, label %if.then12

if.then12:                                        ; preds = %for.end
  %call13 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %38, i8* getelementptr inbounds ([57 x i8]* @.str5, i64 0, i64 0), i32 %37, i32 %32) #8
  br label %if.end57thread-pre-split

if.else16:                                        ; preds = %entry
  %39 = load %struct.t_genalg** @ga, align 8, !tbaa !4
  %tobool17 = icmp eq %struct.t_genalg* %39, null
  br i1 %tobool17, label %for.cond20.preheader, label %if.then18

for.cond20.preheader:                             ; preds = %if.else16
  %cmp21108 = icmp sgt i32 %0, 0
  br i1 %cmp21108, label %for.body22.lr.ph, label %for.end45

for.body22.lr.ph:                                 ; preds = %for.cond20.preheader
  %40 = load i32** @param_val, align 8, !tbaa !4
  %41 = load %struct.t_range** @range, align 8, !tbaa !4
  br label %for.body22

if.then18:                                        ; preds = %if.else16
  %42 = load %struct._IO_FILE** @stdlog, align 8, !tbaa !4
  %43 = load %struct.t_range** @range, align 8, !tbaa !4
  call void @update_ga(%struct._IO_FILE* %42, %struct.t_range* %43, %struct.t_genalg* %39) #8
  br label %if.end57thread-pre-split

for.cond20:                                       ; preds = %for.body22
  %44 = trunc i64 %indvars.iv.next146 to i32
  %cmp21 = icmp slt i32 %44, %0
  br i1 %cmp21, label %for.body22, label %for.end45

for.body22:                                       ; preds = %for.body22.lr.ph, %for.cond20
  %indvars.iv145 = phi i64 [ 0, %for.body22.lr.ph ], [ %indvars.iv.next146, %for.cond20 ]
  %indvars.iv136 = phi i32 [ 0, %for.body22.lr.ph ], [ %indvars.iv.next137, %for.cond20 ]
  %arrayidx24 = getelementptr inbounds i32* %40, i64 %indvars.iv145
  %45 = load i32* %arrayidx24, align 4, !tbaa !3
  %np27 = getelementptr inbounds %struct.t_range* %41, i64 %indvars.iv145, i32 0
  %46 = load i32* %np27, align 4, !tbaa !3
  %sub = add nsw i32 %46, -1
  %cmp28 = icmp slt i32 %45, %sub
  %indvars.iv.next146 = add i64 %indvars.iv145, 1
  %indvars.iv.next137 = add i32 %indvars.iv136, 1
  br i1 %cmp28, label %if.then29, label %for.cond20

if.then29:                                        ; preds = %for.body22
  %inc32 = add nsw i32 %45, 1
  store i32 %inc32, i32* %arrayidx24, align 4, !tbaa !3
  %cmp34104 = icmp sgt i32 %indvars.iv136, 0
  br i1 %cmp34104, label %for.body35.lr.ph, label %for.end40

for.body35.lr.ph:                                 ; preds = %if.then29
  %47 = bitcast i32* %40 to i8*
  %48 = add i32 %indvars.iv136, -1
  %49 = zext i32 %48 to i64
  %50 = shl nuw nsw i64 %49, 2
  %51 = add i64 %50, 4
  call void @llvm.memset.p0i8.i64(i8* %47, i8 0, i64 %51, i32 4, i1 false)
  br label %for.end40

for.end40:                                        ; preds = %for.body35.lr.ph, %if.then29
  %52 = load i32* @update_forcefield.ntried, align 4, !tbaa !3
  %inc41 = add nsw i32 %52, 1
  store i32 %inc41, i32* @update_forcefield.ntried, align 4, !tbaa !3
  %.pre147 = load i32* @nparm, align 4, !tbaa !3
  br label %for.end45

for.end45:                                        ; preds = %for.cond20.preheader, %for.cond20, %for.end40
  %53 = phi i32 [ %.pre147, %for.end40 ], [ %0, %for.cond20 ], [ %0, %for.cond20.preheader ]
  %i.1107 = phi i32 [ %indvars.iv136, %for.end40 ], [ %indvars.iv.next137, %for.cond20 ], [ 0, %for.cond20.preheader ]
  %cmp46 = icmp eq i32 %i.1107, %53
  br i1 %cmp46, label %if.then47, label %if.end57

if.then47:                                        ; preds = %for.end45
  %54 = load %struct._IO_FILE** @stdlog, align 8, !tbaa !4
  %tobool48 = icmp eq %struct._IO_FILE* %54, null
  br i1 %tobool48, label %if.end51, label %if.then49

if.then49:                                        ; preds = %if.then47
  %55 = load i32* @update_forcefield.ntried, align 4, !tbaa !3
  %add = add nsw i32 %55, 1
  %56 = load i32* @update_forcefield.ntry, align 4, !tbaa !3
  %call50 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %54, i8* getelementptr inbounds ([39 x i8]* @.str6, i64 0, i64 0), i32 %add, i32 %56) #8
  br label %if.end51

if.end51:                                         ; preds = %if.then47, %if.then49
  %57 = load i32* @gmx_parallel, align 4, !tbaa !3
  %tobool52 = icmp eq i32 %57, 0
  br i1 %tobool52, label %if.end54, label %if.then53

if.then53:                                        ; preds = %if.end51
  call void @gmx_finalize() #8
  br label %if.end54

if.end54:                                         ; preds = %if.end51, %if.then53
  call void @exit(i32 0) #9
  unreachable

if.end57thread-pre-split:                         ; preds = %if.then12, %if.then7, %if.then18, %for.end
  %.pr = load i32* @nparm, align 4, !tbaa !3
  br label %if.end57

if.end57:                                         ; preds = %for.end45, %if.end57thread-pre-split
  %58 = phi i32 [ %.pr, %if.end57thread-pre-split ], [ %53, %for.end45 ]
  %59 = load %struct.t_range** @range, align 8, !tbaa !4
  %60 = load i32** @param_val, align 8, !tbaa !4
  %ntype.i = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 63
  %61 = load i32* %ntype.i, align 4, !tbaa !3
  %nbfp1.i = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 65
  %62 = load float** %nbfp1.i, align 8, !tbaa !4
  %bBHAM.i = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 64
  %63 = load i32* %bBHAM.i, align 4, !tbaa !3
  %tobool.i74 = icmp eq i32 %63, 0
  br i1 %tobool.i74, label %if.else.i, label %if.then.i75

if.then.i75:                                      ; preds = %if.end57
  %64 = load double** @update_ff.bhama, align 8, !tbaa !4
  %cmp.i = icmp eq double* %64, null
  br i1 %cmp.i, label %if.then2.i, label %for.cond.preheader.i

if.then2.i:                                       ; preds = %if.then.i75
  %call.i76 = call i8* @save_calloc(i8* getelementptr inbounds ([6 x i8]* @.str16, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str3, i64 0, i64 0), i32 231, i32 %61, i32 8) #8
  %65 = bitcast i8* %call.i76 to double*
  store double* %65, double** @update_ff.bhama, align 8, !tbaa !4
  %call3.i = call i8* @save_calloc(i8* getelementptr inbounds ([6 x i8]* @.str17, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str3, i64 0, i64 0), i32 232, i32 %61, i32 8) #8
  %66 = bitcast i8* %call3.i to double*
  store double* %66, double** @update_ff.bhamb, align 8, !tbaa !4
  %call4.i77 = call i8* @save_calloc(i8* getelementptr inbounds ([6 x i8]* @.str18, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str3, i64 0, i64 0), i32 233, i32 %61, i32 8) #8
  %67 = bitcast i8* %call4.i77 to double*
  store double* %67, double** @update_ff.bhamc, align 8, !tbaa !4
  br label %for.cond.preheader.i

if.else.i:                                        ; preds = %if.end57
  %68 = load double** @update_ff.sigma, align 8, !tbaa !4
  %cmp5.i78 = icmp eq double* %68, null
  br i1 %cmp5.i78, label %if.then6.i, label %for.cond.preheader.i

if.then6.i:                                       ; preds = %if.else.i
  %call7.i = call i8* @save_calloc(i8* getelementptr inbounds ([6 x i8]* @.str19, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str3, i64 0, i64 0), i32 238, i32 %61, i32 8) #8
  %69 = bitcast i8* %call7.i to double*
  store double* %69, double** @update_ff.sigma, align 8, !tbaa !4
  %call8.i = call i8* @save_calloc(i8* getelementptr inbounds ([4 x i8]* @.str20, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str3, i64 0, i64 0), i32 239, i32 %61, i32 8) #8
  %70 = bitcast i8* %call8.i to double*
  store double* %70, double** @update_ff.eps, align 8, !tbaa !4
  %call9.i = call i8* @save_calloc(i8* getelementptr inbounds ([3 x i8]* @.str21, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str3, i64 0, i64 0), i32 240, i32 %61, i32 8) #8
  %71 = bitcast i8* %call9.i to double*
  store double* %71, double** @update_ff.c6, align 8, !tbaa !4
  %call10.i = call i8* @save_calloc(i8* getelementptr inbounds ([3 x i8]* @.str22, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str3, i64 0, i64 0), i32 241, i32 %61, i32 8) #8
  %72 = bitcast i8* %call10.i to double*
  store double* %72, double** @update_ff.cn, align 8, !tbaa !4
  br label %for.cond.preheader.i

for.cond.preheader.i:                             ; preds = %if.then6.i, %if.else.i, %if.then2.i, %if.then.i75
  %cmp13440.i = icmp sgt i32 %58, 0
  br i1 %cmp13440.i, label %for.body.i79, label %for.end.i93

for.body.i79:                                     ; preds = %for.inc.i92, %for.cond.preheader.i
  %indvars.iv477.i = phi i64 [ 0, %for.cond.preheader.i ], [ %indvars.iv.next478.i, %for.inc.i92 ]
  %73 = load %struct.t_genalg** @ga, align 8, !tbaa !4
  %tobool14.i = icmp eq %struct.t_genalg* %73, null
  br i1 %tobool14.i, label %if.else16.i, label %if.then15.i

if.then15.i:                                      ; preds = %for.body.i79
  %rval.i = getelementptr inbounds %struct.t_range* %59, i64 %indvars.iv477.i, i32 6
  %74 = load float* %rval.i, align 4, !tbaa !0
  br label %if.end22.i

if.else16.i:                                      ; preds = %for.body.i79
  %arrayidx20.i = getelementptr inbounds i32* %60, i64 %indvars.iv477.i
  %75 = load i32* %arrayidx20.i, align 4, !tbaa !3
  %cmp.i.i80 = icmp slt i32 %75, 0
  %np2.phi.trans.insert.i.i = getelementptr inbounds %struct.t_range* %59, i64 %indvars.iv477.i, i32 0
  %.pre51.i.i = load i32* %np2.phi.trans.insert.i.i, align 4, !tbaa !3
  %cmp1.i.i = icmp slt i32 %.pre51.i.i, %75
  %or.cond52.i.i = or i1 %cmp.i.i80, %cmp1.i.i
  br i1 %or.cond52.i.i, label %if.then.i.i81, label %if.end.i.i82

if.then.i.i81:                                    ; preds = %if.else16.i
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([49 x i8]* @.str28, i64 0, i64 0), i32 %75, i32 %.pre51.i.i) #8
  %.pre.i.i = load i32* %np2.phi.trans.insert.i.i, align 4, !tbaa !3
  br label %if.end.i.i82

if.end.i.i82:                                     ; preds = %if.then.i.i81, %if.else16.i
  %76 = phi i32 [ %.pre.i.i, %if.then.i.i81 ], [ %.pre51.i.i, %if.else16.i ]
  %cmp4.i.i = icmp eq i32 %76, 1
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.else.i.i

if.then5.i.i:                                     ; preds = %if.end.i.i82
  %rmin.i.i = getelementptr inbounds %struct.t_range* %59, i64 %indvars.iv477.i, i32 3
  %77 = load float* %rmin.i.i, align 4, !tbaa !0
  %rval.i.i83 = getelementptr inbounds %struct.t_range* %59, i64 %indvars.iv477.i, i32 6
  store float %77, float* %rval.i.i83, align 4, !tbaa !0
  br label %if.end22.i

if.else.i.i:                                      ; preds = %if.end.i.i82
  %ptype.i.i = getelementptr inbounds %struct.t_range* %59, i64 %indvars.iv477.i, i32 2
  %78 = load i32* %ptype.i.i, align 4, !tbaa !3
  %cmp6.i.i84 = icmp eq i32 %78, 1
  %79 = load i32* @bLogEps, align 4, !tbaa !3
  %tobool.i.i = icmp ne i32 %79, 0
  %or.cond.i.i85 = and i1 %cmp6.i.i84, %tobool.i.i
  %rmin8.i.i = getelementptr inbounds %struct.t_range* %59, i64 %indvars.iv477.i, i32 3
  %80 = load float* %rmin8.i.i, align 4, !tbaa !0
  br i1 %or.cond.i.i85, label %if.then7.i.i, label %if.else21.i.i

if.then7.i.i:                                     ; preds = %if.else.i.i
  %conv.i.i86 = fpext float %80 to double
  %call.i.i = call double @log(double %conv.i.i86) #8
  %conv9.i.i = fptrunc double %call.i.i to float
  %rmax.i.i = getelementptr inbounds %struct.t_range* %59, i64 %indvars.iv477.i, i32 4
  %81 = load float* %rmax.i.i, align 4, !tbaa !0
  %conv10.i.i = fpext float %81 to double
  %call11.i.i = call double @log(double %conv10.i.i) #8
  %conv12.i.i = fptrunc double %call11.i.i to float
  %conv13.i.i = sitofp i32 %75 to float
  %sub.i.i87 = fsub float %conv12.i.i, %conv9.i.i
  %mul.i.i = fmul float %conv13.i.i, %sub.i.i87
  %82 = load i32* %np2.phi.trans.insert.i.i, align 4, !tbaa !3
  %sub15.i.i = add nsw i32 %82, -1
  %conv16.i.i = sitofp i32 %sub15.i.i to float
  %div.i.i = fdiv float %mul.i.i, %conv16.i.i
  %add.i.i = fadd float %conv9.i.i, %div.i.i
  %conv17.i.i = fpext float %add.i.i to double
  %call18.i.i = call double @exp(double %conv17.i.i) #8
  %conv19.i.i = fptrunc double %call18.i.i to float
  %rval20.i.i = getelementptr inbounds %struct.t_range* %59, i64 %indvars.iv477.i, i32 6
  store float %conv19.i.i, float* %rval20.i.i, align 4, !tbaa !0
  br label %if.end22.i

if.else21.i.i:                                    ; preds = %if.else.i.i
  %conv23.i.i = sitofp i32 %75 to float
  %dr.i.i88 = getelementptr inbounds %struct.t_range* %59, i64 %indvars.iv477.i, i32 5
  %83 = load float* %dr.i.i88, align 4, !tbaa !0
  %mul24.i.i = fmul float %conv23.i.i, %83
  %sub26.i.i = add nsw i32 %76, -1
  %conv27.i.i = sitofp i32 %sub26.i.i to float
  %div28.i.i = fdiv float %mul24.i.i, %conv27.i.i
  %add29.i.i = fadd float %80, %div28.i.i
  %rval30.i.i = getelementptr inbounds %struct.t_range* %59, i64 %indvars.iv477.i, i32 6
  store float %add29.i.i, float* %rval30.i.i, align 4, !tbaa !0
  br label %if.end22.i

if.end22.i:                                       ; preds = %if.else21.i.i, %if.then7.i.i, %if.then5.i.i, %if.then15.i
  %val.0.i = phi float [ %74, %if.then15.i ], [ %conv19.i.i, %if.then7.i.i ], [ %add29.i.i, %if.else21.i.i ], [ %77, %if.then5.i.i ]
  %ptype.i89 = getelementptr inbounds %struct.t_range* %59, i64 %indvars.iv477.i, i32 2
  %84 = load i32* %ptype.i89, align 4, !tbaa !3
  switch i32 %84, label %sw.default.i [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb29.i
    i32 2, label %sw.bb36.i
    i32 3, label %sw.bb43.i
    i32 4, label %sw.bb50.i
  ]

sw.bb.i:                                          ; preds = %if.end22.i
  %conv.i90 = fpext float %val.0.i to double
  %atype.i91 = getelementptr inbounds %struct.t_range* %59, i64 %indvars.iv477.i, i32 1
  %85 = load i32* %atype.i91, align 4, !tbaa !3
  %idxprom27.i = sext i32 %85 to i64
  %86 = load double** @update_ff.sigma, align 8, !tbaa !4
  %arrayidx28.i = getelementptr inbounds double* %86, i64 %idxprom27.i
  store double %conv.i90, double* %arrayidx28.i, align 8, !tbaa !5
  br label %for.inc.i92

sw.bb29.i:                                        ; preds = %if.end22.i
  %conv30.i = fpext float %val.0.i to double
  %atype33.i = getelementptr inbounds %struct.t_range* %59, i64 %indvars.iv477.i, i32 1
  %87 = load i32* %atype33.i, align 4, !tbaa !3
  %idxprom34.i = sext i32 %87 to i64
  %88 = load double** @update_ff.eps, align 8, !tbaa !4
  %arrayidx35.i = getelementptr inbounds double* %88, i64 %idxprom34.i
  store double %conv30.i, double* %arrayidx35.i, align 8, !tbaa !5
  br label %for.inc.i92

sw.bb36.i:                                        ; preds = %if.end22.i
  %conv37.i = fpext float %val.0.i to double
  %atype40.i = getelementptr inbounds %struct.t_range* %59, i64 %indvars.iv477.i, i32 1
  %89 = load i32* %atype40.i, align 4, !tbaa !3
  %idxprom41.i = sext i32 %89 to i64
  %90 = load double** @update_ff.bhama, align 8, !tbaa !4
  %arrayidx42.i = getelementptr inbounds double* %90, i64 %idxprom41.i
  store double %conv37.i, double* %arrayidx42.i, align 8, !tbaa !5
  br label %for.inc.i92

sw.bb43.i:                                        ; preds = %if.end22.i
  %conv44.i = fpext float %val.0.i to double
  %atype47.i = getelementptr inbounds %struct.t_range* %59, i64 %indvars.iv477.i, i32 1
  %91 = load i32* %atype47.i, align 4, !tbaa !3
  %idxprom48.i = sext i32 %91 to i64
  %92 = load double** @update_ff.bhamb, align 8, !tbaa !4
  %arrayidx49.i = getelementptr inbounds double* %92, i64 %idxprom48.i
  store double %conv44.i, double* %arrayidx49.i, align 8, !tbaa !5
  br label %for.inc.i92

sw.bb50.i:                                        ; preds = %if.end22.i
  %conv51.i = fpext float %val.0.i to double
  %atype54.i = getelementptr inbounds %struct.t_range* %59, i64 %indvars.iv477.i, i32 1
  %93 = load i32* %atype54.i, align 4, !tbaa !3
  %idxprom55.i = sext i32 %93 to i64
  %94 = load double** @update_ff.bhamc, align 8, !tbaa !4
  %arrayidx56.i = getelementptr inbounds double* %94, i64 %idxprom55.i
  store double %conv51.i, double* %arrayidx56.i, align 8, !tbaa !5
  br label %for.inc.i92

sw.default.i:                                     ; preds = %if.end22.i
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([14 x i8]* @.str23, i64 0, i64 0)) #8
  br label %for.inc.i92

for.inc.i92:                                      ; preds = %sw.default.i, %sw.bb50.i, %sw.bb43.i, %sw.bb36.i, %sw.bb29.i, %sw.bb.i
  %indvars.iv.next478.i = add i64 %indvars.iv477.i, 1
  %lftr.wideiv126 = trunc i64 %indvars.iv.next478.i to i32
  %exitcond127 = icmp eq i32 %lftr.wideiv126, %58
  br i1 %exitcond127, label %for.end.i93, label %for.body.i79

for.end.i93:                                      ; preds = %for.inc.i92, %for.cond.preheader.i
  %95 = load i32* %bBHAM.i, align 4, !tbaa !3
  %tobool58.i = icmp eq i32 %95, 0
  %cmp129432.i = icmp sgt i32 %61, 0
  br i1 %tobool58.i, label %for.cond128.preheader.i, label %for.cond60.preheader.i

for.cond60.preheader.i:                           ; preds = %for.end.i93
  br i1 %cmp129432.i, label %for.body67.lr.ph.i, label %if.end212.i

for.cond128.preheader.i:                          ; preds = %for.end.i93
  br i1 %cmp129432.i, label %for.body131.i, label %if.end212.i

for.body67.lr.ph.i:                               ; preds = %for.cond60.preheader.i, %for.inc124.i
  %indvars.iv120 = phi i32 [ %indvars.iv.next121, %for.inc124.i ], [ 1, %for.cond60.preheader.i ]
  %indvars.iv473.i = phi i64 [ %indvars.iv.next474.i, %for.inc124.i ], [ 0, %for.cond60.preheader.i ]
  %96 = trunc i64 %indvars.iv473.i to i32
  %mul79.i = mul nsw i32 %96, %61
  %97 = zext i32 %mul79.i to i64
  br label %for.body67.i

for.body67.i:                                     ; preds = %for.body67.i, %for.body67.lr.ph.i
  %indvars.iv466.i = phi i64 [ 0, %for.body67.lr.ph.i ], [ %indvars.iv.next467.i, %for.body67.i ]
  %98 = load double** @update_ff.bhama, align 8, !tbaa !4
  %arrayidx69.i = getelementptr inbounds double* %98, i64 %indvars.iv473.i
  %99 = load double* %arrayidx69.i, align 8, !tbaa !5
  %arrayidx71.i = getelementptr inbounds double* %98, i64 %indvars.iv466.i
  %100 = load double* %arrayidx71.i, align 8, !tbaa !5
  %mul.i = fmul double %99, %100
  %call72.i = call double @sqrt(double %mul.i) #8
  %conv73.i = fptrunc double %call72.i to float
  %101 = trunc i64 %indvars.iv466.i to i32
  %mul74.i = mul nsw i32 %101, %61
  %add.i = add nsw i32 %mul74.i, %96
  %mul75.i = mul nsw i32 %add.i, 3
  %add76.i = add nsw i32 %mul75.i, 1
  %idxprom77.i = sext i32 %add76.i to i64
  %arrayidx78.i = getelementptr inbounds float* %62, i64 %idxprom77.i
  store float %conv73.i, float* %arrayidx78.i, align 4, !tbaa !0
  %102 = add nsw i64 %indvars.iv466.i, %97
  %103 = trunc i64 %102 to i32
  %mul81.i = mul nsw i32 %103, 3
  %add82.i = add nsw i32 %mul81.i, 1
  %idxprom83.i = sext i32 %add82.i to i64
  %arrayidx84.i = getelementptr inbounds float* %62, i64 %idxprom83.i
  store float %conv73.i, float* %arrayidx84.i, align 4, !tbaa !0
  %104 = load double** @update_ff.bhamb, align 8, !tbaa !4
  %arrayidx86.i = getelementptr inbounds double* %104, i64 %indvars.iv473.i
  %105 = load double* %arrayidx86.i, align 8, !tbaa !5
  %arrayidx88.i = getelementptr inbounds double* %104, i64 %indvars.iv466.i
  %106 = load double* %arrayidx88.i, align 8, !tbaa !5
  %mul89.i = fmul double %105, %106
  %call90.i = call double @sqrt(double %mul89.i) #8
  %conv91.i = fptrunc double %call90.i to float
  %add95.i = add nsw i32 %mul75.i, 2
  %idxprom96.i = sext i32 %add95.i to i64
  %arrayidx97.i = getelementptr inbounds float* %62, i64 %idxprom96.i
  store float %conv91.i, float* %arrayidx97.i, align 4, !tbaa !0
  %add101.i = add nsw i32 %mul81.i, 2
  %idxprom102.i = sext i32 %add101.i to i64
  %arrayidx103.i = getelementptr inbounds float* %62, i64 %idxprom102.i
  store float %conv91.i, float* %arrayidx103.i, align 4, !tbaa !0
  %107 = load double** @update_ff.bhamc, align 8, !tbaa !4
  %arrayidx105.i = getelementptr inbounds double* %107, i64 %indvars.iv473.i
  %108 = load double* %arrayidx105.i, align 8, !tbaa !5
  %arrayidx107.i = getelementptr inbounds double* %107, i64 %indvars.iv466.i
  %109 = load double* %arrayidx107.i, align 8, !tbaa !5
  %mul108.i = fmul double %108, %109
  %call109.i = call double @sqrt(double %mul108.i) #8
  %conv110.i = fptrunc double %call109.i to float
  %idxprom114.i = sext i32 %mul75.i to i64
  %arrayidx115.i = getelementptr inbounds float* %62, i64 %idxprom114.i
  store float %conv110.i, float* %arrayidx115.i, align 4, !tbaa !0
  %idxprom119.i = sext i32 %mul81.i to i64
  %arrayidx120.i = getelementptr inbounds float* %62, i64 %idxprom119.i
  store float %conv110.i, float* %arrayidx120.i, align 4, !tbaa !0
  %indvars.iv.next467.i = add i64 %indvars.iv466.i, 1
  %lftr.wideiv122 = trunc i64 %indvars.iv.next467.i to i32
  %exitcond123 = icmp eq i32 %lftr.wideiv122, %indvars.iv120
  br i1 %exitcond123, label %for.inc124.i, label %for.body67.i

for.inc124.i:                                     ; preds = %for.body67.i
  %indvars.iv.next474.i = add i64 %indvars.iv473.i, 1
  %indvars.iv.next121 = add i32 %indvars.iv120, 1
  %lftr.wideiv124 = trunc i64 %indvars.iv.next474.i to i32
  %exitcond125 = icmp eq i32 %lftr.wideiv124, %61
  br i1 %exitcond125, label %if.end212.i, label %for.body67.lr.ph.i

for.body131.i:                                    ; preds = %for.inc159.i, %for.cond128.preheader.i
  %indvars.iv462.i = phi i64 [ 0, %for.cond128.preheader.i ], [ %indvars.iv.next463.i, %for.inc159.i ]
  %110 = load double** @update_ff.eps, align 8, !tbaa !4
  %arrayidx133.i = getelementptr inbounds double* %110, i64 %indvars.iv462.i
  %111 = load double* %arrayidx133.i, align 8, !tbaa !5
  %mul134.i = fmul double %111, 4.000000e+00
  %112 = load double** @update_ff.sigma, align 8, !tbaa !4
  %arrayidx136.i = getelementptr inbounds double* %112, i64 %indvars.iv462.i
  %113 = load double* %arrayidx136.i, align 8, !tbaa !5
  %call137.i = call double @pow(double %113, double 6.000000e+00) #8
  %mul138.i = fmul double %mul134.i, %call137.i
  %114 = load double** @update_ff.c6, align 8, !tbaa !4
  %arrayidx140.i = getelementptr inbounds double* %114, i64 %indvars.iv462.i
  store double %mul138.i, double* %arrayidx140.i, align 8, !tbaa !5
  %115 = load double** @update_ff.eps, align 8, !tbaa !4
  %arrayidx142.i = getelementptr inbounds double* %115, i64 %indvars.iv462.i
  %116 = load double* %arrayidx142.i, align 8, !tbaa !5
  %mul143.i = fmul double %116, 4.000000e+00
  %117 = load double** @update_ff.sigma, align 8, !tbaa !4
  %arrayidx145.i = getelementptr inbounds double* %117, i64 %indvars.iv462.i
  %118 = load double* %arrayidx145.i, align 8, !tbaa !5
  %119 = load float* @npow, align 4, !tbaa !0
  %conv146.i = fpext float %119 to double
  %call147.i = call double @pow(double %118, double %conv146.i) #8
  %mul148.i = fmul double %mul143.i, %call147.i
  %120 = load double** @update_ff.cn, align 8, !tbaa !4
  %arrayidx150.i = getelementptr inbounds double* %120, i64 %indvars.iv462.i
  store double %mul148.i, double* %arrayidx150.i, align 8, !tbaa !5
  %121 = load %struct._IO_FILE** @debug, align 8, !tbaa !4
  %tobool151.i = icmp eq %struct._IO_FILE* %121, null
  br i1 %tobool151.i, label %for.inc159.i, label %if.then152.i

if.then152.i:                                     ; preds = %for.body131.i
  %122 = load double** @update_ff.c6, align 8, !tbaa !4
  %arrayidx154.i = getelementptr inbounds double* %122, i64 %indvars.iv462.i
  %123 = load double* %arrayidx154.i, align 8, !tbaa !5
  %124 = trunc i64 %indvars.iv462.i to i32
  %call157.i = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %121, i8* getelementptr inbounds ([35 x i8]* @.str24, i64 0, i64 0), i32 %124, double %123, i32 %124, double %mul148.i) #8
  br label %for.inc159.i

for.inc159.i:                                     ; preds = %if.then152.i, %for.body131.i
  %indvars.iv.next463.i = add i64 %indvars.iv462.i, 1
  %lftr.wideiv118 = trunc i64 %indvars.iv.next463.i to i32
  %exitcond119 = icmp eq i32 %lftr.wideiv118, %61
  br i1 %exitcond119, label %for.body169.lr.ph.i, label %for.body131.i

for.body169.lr.ph.i:                              ; preds = %for.inc159.i, %for.inc209.i
  %indvars.iv = phi i32 [ %indvars.iv.next, %for.inc209.i ], [ 1, %for.inc159.i ]
  %indvars.iv458.i = phi i64 [ %indvars.iv.next459.i, %for.inc209.i ], [ 0, %for.inc159.i ]
  %125 = trunc i64 %indvars.iv458.i to i32
  %mul182.i = mul nsw i32 %125, %61
  %126 = zext i32 %mul182.i to i64
  br label %for.body169.i

for.body169.i:                                    ; preds = %for.body169.i, %for.body169.lr.ph.i
  %indvars.iv451.i = phi i64 [ %indvars.iv.next452.i, %for.body169.i ], [ 0, %for.body169.lr.ph.i ]
  %127 = load double** @update_ff.c6, align 8, !tbaa !4
  %arrayidx171.i = getelementptr inbounds double* %127, i64 %indvars.iv458.i
  %128 = load double* %arrayidx171.i, align 8, !tbaa !5
  %arrayidx173.i = getelementptr inbounds double* %127, i64 %indvars.iv451.i
  %129 = load double* %arrayidx173.i, align 8, !tbaa !5
  %mul174.i = fmul double %128, %129
  %call175.i = call double @sqrt(double %mul174.i) #8
  %conv176.i = fptrunc double %call175.i to float
  %130 = trunc i64 %indvars.iv451.i to i32
  %mul177.i = mul nsw i32 %130, %61
  %add178.i = add nsw i32 %mul177.i, %125
  %mul179.i = shl nsw i32 %add178.i, 1
  %idxprom180.i = sext i32 %mul179.i to i64
  %arrayidx181.i = getelementptr inbounds float* %62, i64 %idxprom180.i
  store float %conv176.i, float* %arrayidx181.i, align 4, !tbaa !0
  %131 = add nsw i64 %indvars.iv451.i, %126
  %132 = trunc i64 %131 to i32
  %mul184.i = shl nsw i32 %132, 1
  %idxprom185.i = sext i32 %mul184.i to i64
  %arrayidx186.i = getelementptr inbounds float* %62, i64 %idxprom185.i
  store float %conv176.i, float* %arrayidx186.i, align 4, !tbaa !0
  %133 = load double** @update_ff.cn, align 8, !tbaa !4
  %arrayidx188.i = getelementptr inbounds double* %133, i64 %indvars.iv458.i
  %134 = load double* %arrayidx188.i, align 8, !tbaa !5
  %arrayidx190.i = getelementptr inbounds double* %133, i64 %indvars.iv451.i
  %135 = load double* %arrayidx190.i, align 8, !tbaa !5
  %mul191.i = fmul double %134, %135
  %call192.i = call double @sqrt(double %mul191.i) #8
  %conv193.i = fptrunc double %call192.i to float
  %add197419.i = or i32 %mul179.i, 1
  %idxprom198.i = sext i32 %add197419.i to i64
  %arrayidx199.i = getelementptr inbounds float* %62, i64 %idxprom198.i
  store float %conv193.i, float* %arrayidx199.i, align 4, !tbaa !0
  %add203420.i = or i32 %mul184.i, 1
  %idxprom204.i = sext i32 %add203420.i to i64
  %arrayidx205.i = getelementptr inbounds float* %62, i64 %idxprom204.i
  store float %conv193.i, float* %arrayidx205.i, align 4, !tbaa !0
  %indvars.iv.next452.i = add i64 %indvars.iv451.i, 1
  %lftr.wideiv114 = trunc i64 %indvars.iv.next452.i to i32
  %exitcond115 = icmp eq i32 %lftr.wideiv114, %indvars.iv
  br i1 %exitcond115, label %for.inc209.i, label %for.body169.i

for.inc209.i:                                     ; preds = %for.body169.i
  %indvars.iv.next459.i = add i64 %indvars.iv458.i, 1
  %indvars.iv.next = add i32 %indvars.iv, 1
  %lftr.wideiv116 = trunc i64 %indvars.iv.next459.i to i32
  %exitcond117 = icmp eq i32 %lftr.wideiv116, %61
  br i1 %exitcond117, label %if.end212.i, label %for.body169.lr.ph.i

if.end212.i:                                      ; preds = %for.inc124.i, %for.inc209.i, %for.cond128.preheader.i, %for.cond60.preheader.i
  %136 = load %struct._IO_FILE** @debug, align 8, !tbaa !4
  %tobool213.i = icmp eq %struct._IO_FILE* %136, null
  br i1 %tobool213.i, label %update_ff.exit, label %if.then214.i

if.then214.i:                                     ; preds = %if.end212.i
  %137 = load i32* %bBHAM.i, align 4, !tbaa !3
  %tobool216.i = icmp eq i32 %137, 0
  br i1 %tobool216.i, label %for.cond218.preheader.i, label %for.cond231.preheader.i

for.cond218.preheader.i:                          ; preds = %if.then214.i
  br i1 %cmp129432.i, label %for.body221.i.preheader, label %update_ff.exit

for.body221.i.preheader:                          ; preds = %for.cond218.preheader.i
  %138 = load double** @update_ff.sigma, align 8, !tbaa !4
  %139 = load double* %138, align 8, !tbaa !5
  %140 = load double** @update_ff.eps, align 8, !tbaa !4
  %141 = load double* %140, align 8, !tbaa !5
  %call226.i98 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %136, i8* getelementptr inbounds ([40 x i8]* @.str25, i64 0, i64 0), i32 0, double %139, double %141) #8
  %exitcond450.i99 = icmp eq i32 %61, 1
  br i1 %exitcond450.i99, label %for.body238.lr.ph.i, label %for.body221.for.body221_crit_edge.i

for.cond231.preheader.i:                          ; preds = %for.body221.for.body221_crit_edge.i, %if.then214.i
  br i1 %cmp129432.i, label %for.body238.lr.ph.i, label %update_ff.exit

for.body221.for.body221_crit_edge.i:              ; preds = %for.body221.i.preheader, %for.body221.for.body221_crit_edge.i
  %indvars.iv.next448.i100 = phi i64 [ %indvars.iv.next448.i, %for.body221.for.body221_crit_edge.i ], [ 1, %for.body221.i.preheader ]
  %.pre.i = load %struct._IO_FILE** @debug, align 8, !tbaa !4
  %142 = load double** @update_ff.sigma, align 8, !tbaa !4
  %arrayidx223.i = getelementptr inbounds double* %142, i64 %indvars.iv.next448.i100
  %143 = load double* %arrayidx223.i, align 8, !tbaa !5
  %144 = load double** @update_ff.eps, align 8, !tbaa !4
  %arrayidx225.i = getelementptr inbounds double* %144, i64 %indvars.iv.next448.i100
  %145 = load double* %arrayidx225.i, align 8, !tbaa !5
  %146 = trunc i64 %indvars.iv.next448.i100 to i32
  %call226.i = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %.pre.i, i8* getelementptr inbounds ([40 x i8]* @.str25, i64 0, i64 0), i32 %146, double %143, double %145) #8
  %indvars.iv.next448.i = add i64 %indvars.iv.next448.i100, 1
  %lftr.wideiv112 = trunc i64 %indvars.iv.next448.i to i32
  %exitcond113 = icmp eq i32 %lftr.wideiv112, %61
  br i1 %exitcond113, label %for.cond231.preheader.i, label %for.body221.for.body221_crit_edge.i

for.body238.lr.ph.i:                              ; preds = %for.body221.i.preheader, %for.cond231.preheader.i, %for.inc282.i
  %indvars.iv443.i = phi i64 [ %indvars.iv.next444.i, %for.inc282.i ], [ 0, %for.cond231.preheader.i ], [ 0, %for.body221.i.preheader ]
  %147 = trunc i64 %indvars.iv443.i to i32
  %mul242.i = mul nsw i32 %147, %61
  %148 = zext i32 %mul242.i to i64
  br label %for.body238.i

for.body238.i:                                    ; preds = %for.inc279.i, %for.body238.lr.ph.i
  %indvars.iv.i94 = phi i64 [ 0, %for.body238.lr.ph.i ], [ %indvars.iv.next.i95, %for.inc279.i ]
  %149 = load i32* %bBHAM.i, align 4, !tbaa !3
  %tobool240.i = icmp eq i32 %149, 0
  %150 = load %struct._IO_FILE** @debug, align 8, !tbaa !4
  %151 = add nsw i64 %indvars.iv.i94, %148
  %152 = trunc i64 %151 to i32
  br i1 %tobool240.i, label %if.else263.i, label %if.then241.i

if.then241.i:                                     ; preds = %for.body238.i
  %mul244.i = mul nsw i32 %152, 3
  %add245.i = add nsw i32 %mul244.i, 1
  %idxprom246.i = sext i32 %add245.i to i64
  %arrayidx247.i = getelementptr inbounds float* %62, i64 %idxprom246.i
  %153 = load float* %arrayidx247.i, align 4, !tbaa !0
  %conv248.i = fpext float %153 to double
  %add252.i = add nsw i32 %mul244.i, 2
  %idxprom253.i = sext i32 %add252.i to i64
  %arrayidx254.i = getelementptr inbounds float* %62, i64 %idxprom253.i
  %154 = load float* %arrayidx254.i, align 4, !tbaa !0
  %conv255.i = fpext float %154 to double
  %idxprom259.i = sext i32 %mul244.i to i64
  %arrayidx260.i = getelementptr inbounds float* %62, i64 %idxprom259.i
  %155 = load float* %arrayidx260.i, align 4, !tbaa !0
  %conv261.i = fpext float %155 to double
  %156 = trunc i64 %indvars.iv.i94 to i32
  %call262.i = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %150, i8* getelementptr inbounds ([52 x i8]* @.str26, i64 0, i64 0), i32 %147, i32 %156, double %conv248.i, double %conv255.i, double %conv261.i) #8
  br label %for.inc279.i

if.else263.i:                                     ; preds = %for.body238.i
  %mul266.i = shl nsw i32 %152, 1
  %idxprom267.i = sext i32 %mul266.i to i64
  %arrayidx268.i = getelementptr inbounds float* %62, i64 %idxprom267.i
  %157 = load float* %arrayidx268.i, align 4, !tbaa !0
  %conv269.i = fpext float %157 to double
  %add273418.i = or i32 %mul266.i, 1
  %idxprom274.i = sext i32 %add273418.i to i64
  %arrayidx275.i = getelementptr inbounds float* %62, i64 %idxprom274.i
  %158 = load float* %arrayidx275.i, align 4, !tbaa !0
  %conv276.i = fpext float %158 to double
  %159 = trunc i64 %indvars.iv.i94 to i32
  %call277.i = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %150, i8* getelementptr inbounds ([42 x i8]* @.str27, i64 0, i64 0), i32 %147, i32 %159, double %conv269.i, double %conv276.i) #8
  br label %for.inc279.i

for.inc279.i:                                     ; preds = %if.else263.i, %if.then241.i
  %indvars.iv.next.i95 = add i64 %indvars.iv.i94, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next.i95 to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %61
  br i1 %exitcond, label %for.inc282.i, label %for.body238.i

for.inc282.i:                                     ; preds = %for.inc279.i
  %indvars.iv.next444.i = add i64 %indvars.iv443.i, 1
  %lftr.wideiv110 = trunc i64 %indvars.iv.next444.i to i32
  %exitcond111 = icmp eq i32 %lftr.wideiv110, %61
  br i1 %exitcond111, label %update_ff.exit, label %for.body238.lr.ph.i

update_ff.exit:                                   ; preds = %for.inc282.i, %if.end212.i, %for.cond218.preheader.i, %for.cond231.preheader.i
  ret void
}

; Function Attrs: optsize
declare i8* @ftp2fn(i32, i32, %struct.t_filenm*) #2

; Function Attrs: optsize
declare void @fatal_error(i32, i8*, ...) #2

; Function Attrs: optsize
declare i8* @save_calloc(i8*, i8*, i32, i32, i32) #2

; Function Attrs: optsize
declare i32 @opt2bSet(i8*, i32, %struct.t_filenm*) #2

; Function Attrs: optsize
declare %struct.t_genalg* @init_ga(i8*, i32, %struct.t_range*) #2

; Function Attrs: optsize
declare i8* @opt2fn(i8*, i32, %struct.t_filenm*) #2

; Function Attrs: optsize
declare void @update_ga(%struct._IO_FILE*, %struct.t_range*, %struct.t_genalg*) #2

; Function Attrs: optsize
declare void @gmx_finalize() #2

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #4

; Function Attrs: nounwind optsize uwtable
define void @print_forcefield(%struct._IO_FILE* %fp, float %energy, i32 %natoms, [3 x float]* nocapture %f, [3 x float]* nocapture %fshake, [3 x float]* nocapture %x, %struct.t_block* nocapture %mols, float* nocapture %mass) #0 {
entry:
  %0 = load %struct.t_genalg** @ga, align 8, !tbaa !4
  %tobool = icmp eq %struct.t_genalg* %0, null
  br i1 %tobool, label %if.else, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %cmp26 = icmp sgt i32 %natoms, 0
  br i1 %cmp26, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond.preheader, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %for.cond.preheader ]
  %msf.027 = phi float [ %add, %for.body ], [ 0.000000e+00, %for.cond.preheader ]
  %arraydecay = getelementptr inbounds [3 x float]* %f, i64 %indvars.iv, i64 0
  %1 = load float* %arraydecay, align 4, !tbaa !0
  %mul.i = fmul float %1, %1
  %arrayidx2.i = getelementptr inbounds [3 x float]* %f, i64 %indvars.iv, i64 1
  %2 = load float* %arrayidx2.i, align 4, !tbaa !0
  %mul4.i = fmul float %2, %2
  %add.i = fadd float %mul.i, %mul4.i
  %arrayidx5.i = getelementptr inbounds [3 x float]* %f, i64 %indvars.iv, i64 2
  %3 = load float* %arrayidx5.i, align 4, !tbaa !0
  %mul7.i = fmul float %3, %3
  %add8.i = fadd float %add.i, %mul7.i
  %add = fadd float %msf.027, %add8.i
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv31 = trunc i64 %indvars.iv.next to i32
  %exitcond32 = icmp eq i32 %lftr.wideiv31, %natoms
  br i1 %exitcond32, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %for.cond.preheader
  %msf.0.lcssa = phi float [ 0.000000e+00, %for.cond.preheader ], [ %add, %for.body ]
  %conv = sitofp i32 %natoms to float
  %div = fdiv float %msf.0.lcssa, %conv
  %conv6 = tail call float @sqrtf(float %div) #3
  %4 = load %struct.t_genalg** @ga, align 8, !tbaa !4
  %5 = load %struct.t_range** @range, align 8, !tbaa !4
  %6 = load float* @tol, align 4, !tbaa !0
  %call7 = tail call i32 @print_ga(%struct._IO_FILE* %fp, %struct.t_genalg* %4, float %conv6, float %energy, %struct.t_range* %5, float %6) #8
  %tobool8 = icmp eq i32 %call7, 0
  br i1 %tobool8, label %if.end14, label %if.then9

if.then9:                                         ; preds = %for.end
  %7 = load i32* @gmx_parallel, align 4, !tbaa !3
  %tobool10 = icmp eq i32 %7, 0
  br i1 %tobool10, label %if.end, label %if.then11

if.then11:                                        ; preds = %if.then9
  tail call void @gmx_finalize() #8
  br label %if.end

if.end:                                           ; preds = %if.then9, %if.then11
  %8 = load %struct._IO_FILE** @stderr, align 8, !tbaa !4
  %fputc = tail call i32 @fputc(i32 10, %struct._IO_FILE* %8)
  tail call void @exit(i32 0) #9
  unreachable

if.else:                                          ; preds = %entry
  %.b.i = load i1* @print_grid.bFirst, align 1
  br i1 %.b.i, label %if.end.i, label %for.body.i

for.body.i:                                       ; preds = %if.else, %for.body.i
  %indvars.iv9.i = phi i64 [ %indvars.iv.next10.i, %for.body.i ], [ 0, %if.else ]
  %arrayidx.i = getelementptr inbounds [5 x i8*]* @print_grid.desc, i64 0, i64 %indvars.iv9.i
  %9 = load i8** %arrayidx.i, align 8, !tbaa !4
  %call.i = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([4 x i8]* @.str12, i64 0, i64 0), i8* %9) #8
  %indvars.iv.next10.i = add i64 %indvars.iv9.i, 1
  %lftr.wideiv29 = trunc i64 %indvars.iv.next10.i to i32
  %exitcond30 = icmp eq i32 %lftr.wideiv29, 5
  br i1 %exitcond30, label %for.end.i, label %for.body.i

for.end.i:                                        ; preds = %for.body.i
  %call2.i = tail call i32 @fflush(%struct._IO_FILE* %fp) #8
  store i1 true, i1* @print_grid.bFirst, align 1
  br label %if.end.i

if.end.i:                                         ; preds = %for.end.i, %if.else
  %10 = load float* @tol, align 4, !tbaa !0
  %fabsf.i = tail call float @fabsf(float %10) #7
  %11 = fpext float %fabsf.i to double
  %cmp5.i = fcmp olt double %11, 1.200000e-38
  br i1 %cmp5.i, label %for.cond13.preheader.i, label %lor.lhs.false.i

lor.lhs.false.i:                                  ; preds = %if.end.i
  %12 = load float* @epot, align 4, !tbaa !0
  %sub.i = fsub float %energy, %12
  %fabsf1.i = tail call float @fabsf(float %sub.i) #7
  %cmp10.i = fcmp olt float %fabsf1.i, %10
  br i1 %cmp10.i, label %for.cond13.preheader.i, label %if.end14

for.cond13.preheader.i:                           ; preds = %lor.lhs.false.i, %if.end.i
  %cmp145.i = icmp sgt i32 %natoms, 0
  br i1 %cmp145.i, label %for.body16.i, label %for.end25.i

for.body16.i:                                     ; preds = %for.cond13.preheader.i, %for.body16.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %for.body16.i ], [ 0, %for.cond13.preheader.i ]
  %msf.06.i = phi float [ %add.i25, %for.body16.i ], [ 0.000000e+00, %for.cond13.preheader.i ]
  %arraydecay.i = getelementptr inbounds [3 x float]* %f, i64 %indvars.iv.i, i64 0
  %13 = load float* %arraydecay.i, align 4, !tbaa !0
  %mul.i.i = fmul float %13, %13
  %arrayidx2.i.i = getelementptr inbounds [3 x float]* %f, i64 %indvars.iv.i, i64 1
  %14 = load float* %arrayidx2.i.i, align 4, !tbaa !0
  %mul4.i.i = fmul float %14, %14
  %add.i.i = fadd float %mul.i.i, %mul4.i.i
  %arrayidx5.i.i = getelementptr inbounds [3 x float]* %f, i64 %indvars.iv.i, i64 2
  %15 = load float* %arrayidx5.i.i, align 4, !tbaa !0
  %mul7.i.i = fmul float %15, %15
  %add8.i.i = fadd float %add.i.i, %mul7.i.i
  %add.i25 = fadd float %msf.06.i, %add8.i.i
  %indvars.iv.next.i = add i64 %indvars.iv.i, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next.i to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %natoms
  br i1 %exitcond, label %for.end25.i, label %for.body16.i

for.end25.i:                                      ; preds = %for.body16.i, %for.cond13.preheader.i
  %msf.0.lcssa.i = phi float [ 0.000000e+00, %for.cond13.preheader.i ], [ %add.i25, %for.body16.i ]
  %conv26.i = sitofp i32 %natoms to float
  %div.i = fdiv float %msf.0.lcssa.i, %conv26.i
  %conv29.i = tail call float @sqrtf(float %div.i) #3
  %16 = load float* @forcemax, align 4, !tbaa !0
  %fabsf2.i = tail call float @fabsf(float %16) #7
  %17 = fpext float %fabsf2.i to double
  %notlhs.i = fcmp uge double %17, 1.200000e-38
  %notrhs.i = fcmp uge float %conv29.i, %16
  %or.cond.not.i = and i1 %notrhs.i, %notlhs.i
  %tobool.i.i = icmp eq %struct._IO_FILE* %fp, null
  %or.cond4.i = or i1 %or.cond.not.i, %tobool.i.i
  br i1 %or.cond4.i, label %if.end14, label %if.then.i.i

if.then.i.i:                                      ; preds = %for.end25.i
  %18 = load float* @ratio, align 4, !tbaa !0
  %mul.i.i.i = fmul float %conv29.i, %18
  %19 = load float* @epot, align 4, !tbaa !0
  %sub.i.i.i = fsub float %energy, %19
  %fabsf.i.i.i = tail call float @fabsf(float %sub.i.i.i) #7
  %conv2.i.i.i = fadd float %mul.i.i.i, %fabsf.i.i.i
  %conv.i.i = fpext float %conv2.i.i.i to double
  %conv1.i.i = fpext float %conv29.i to double
  %conv2.i.i = fpext float %energy to double
  %call3.i.i = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([20 x i8]* @.str13, i64 0, i64 0), double %conv.i.i, double %conv1.i.i, double %conv2.i.i) #8
  %20 = load i32* @nparm, align 4, !tbaa !3
  %cmp21.i.i = icmp sgt i32 %20, 0
  br i1 %cmp21.i.i, label %for.body.i.i, label %for.end.i.i

for.body.i.i:                                     ; preds = %if.then.i.i, %for.body.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %for.body.i.i ], [ 0, %if.then.i.i ]
  %21 = load %struct.t_range** @range, align 8, !tbaa !4
  %ptype.i.i = getelementptr inbounds %struct.t_range* %21, i64 %indvars.iv.i.i, i32 2
  %22 = load i32* %ptype.i.i, align 4, !tbaa !3
  %idxprom5.i.i = sext i32 %22 to i64
  %arrayidx6.i3.i = getelementptr inbounds [5 x i8*]* @esenm, i64 0, i64 %idxprom5.i.i
  %23 = load i8** %arrayidx6.i3.i, align 8, !tbaa !4
  %rval.i.i = getelementptr inbounds %struct.t_range* %21, i64 %indvars.iv.i.i, i32 6
  %24 = load float* %rval.i.i, align 4, !tbaa !0
  %conv9.i.i = fpext float %24 to double
  %call10.i.i = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([9 x i8]* @.str14, i64 0, i64 0), i8* %23, double %conv9.i.i) #8
  %indvars.iv.next.i.i = add i64 %indvars.iv.i.i, 1
  %25 = load i32* @nparm, align 4, !tbaa !3
  %26 = trunc i64 %indvars.iv.next.i.i to i32
  %cmp.i.i = icmp slt i32 %26, %25
  br i1 %cmp.i.i, label %for.body.i.i, label %for.end.i.i

for.end.i.i:                                      ; preds = %for.body.i.i, %if.then.i.i
  %27 = tail call i64 @fwrite(i8* getelementptr inbounds ([5 x i8]* @.str15, i64 0, i64 0), i64 4, i64 1, %struct._IO_FILE* %fp) #5
  %call12.i.i = tail call i32 @fflush(%struct._IO_FILE* %fp) #8
  br label %if.end14

if.end14:                                         ; preds = %for.end.i.i, %for.end25.i, %lor.lhs.false.i, %for.end
  ret void
}

; Function Attrs: nounwind optsize
declare double @sqrt(double) #3

; Function Attrs: optsize
declare i32 @print_ga(%struct._IO_FILE*, %struct.t_genalg*, float, float, %struct.t_range*, float) #2

; Function Attrs: nounwind optsize
declare i32 @fflush(%struct._IO_FILE* nocapture) #3

; Function Attrs: nounwind optsize
declare double @pow(double, double) #3

; Function Attrs: optsize
declare i32 @get_file(i8*, i8***) #2

; Function Attrs: optsize
declare void @strip_comment(i8*) #2

; Function Attrs: nounwind optsize
declare i32 @__isoc99_sscanf(i8* nocapture, i8* nocapture, ...) #3

; Function Attrs: optsize
declare void @save_free(i8*, i8*, i32, i8*) #2

; Function Attrs: nounwind optsize
declare float @sqrtf(float) #3

declare float @fabsf(float)

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #5

; Function Attrs: nounwind
declare i32 @fputc(i32, %struct._IO_FILE* nocapture) #5

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #5

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #5

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #5

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize readonly uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { optsize }
attributes #7 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind optsize }
attributes #9 = { noreturn nounwind optsize }

!0 = metadata !{metadata !"float", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"int", metadata !1}
!4 = metadata !{metadata !"any pointer", metadata !1}
!5 = metadata !{metadata !"double", metadata !1}
