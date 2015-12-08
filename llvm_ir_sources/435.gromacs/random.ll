; ModuleID = '../../SPEC/benchspec/CPU2006/435.gromacs/src/random.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.t_atoms = type { i32, %struct.t_atom*, i8***, i8***, i8***, i32, i8***, i32, i8***, %struct.t_block, [9 x %struct.t_grps], %struct.t_pdbinfo* }
%struct.t_atom = type { float, float, float, float, i16, i16, i32, i32, [9 x i8], i8 }
%struct.t_block = type { [256 x i32], i32, i32*, i32, i32* }
%struct.t_grps = type { i32, i32* }
%struct.t_pdbinfo = type { i32, i32, i8, [6 x i8], float, float, i32, [6 x i32] }

@stderr = external global %struct._IO_FILE*
@.str = private unnamed_addr constant [59 x i8] c"Velocities were taken from a Maxwell distribution at %g K\0A\00", align 1
@debug = external global %struct._IO_FILE*
@.str1 = private unnamed_addr constant [109 x i8] c"Velocities were taken from a Maxwell distribution\0AInitial generated temperature: %12.5e (scaled to: %12.5e)\0A\00", align 1
@.str2 = private unnamed_addr constant [48 x i8] c"Using random seed %d for generating velocities\0A\00", align 1
@.str3 = private unnamed_addr constant [6 x i8] c"dummy\00", align 1
@.str4 = private unnamed_addr constant [54 x i8] c"../../SPEC/benchspec/CPU2006/435.gromacs/src/random.c\00", align 1

; Function Attrs: nounwind optsize uwtable
define float @gauss(float %am, float %sd, i32* %ig) #0 {
entry:
  br label %for.body

for.body:                                         ; preds = %for.body, %entry
  %a.07 = phi float [ 0.000000e+00, %entry ], [ %add, %for.body ]
  %i.06 = phi i32 [ 0, %entry ], [ %inc, %for.body ]
  %call = tail call float @rando(i32* %ig) #4
  %add = fadd float %a.07, %call
  %inc = add nsw i32 %i.06, 1
  %exitcond = icmp eq i32 %inc, 12
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.body
  %conv = fpext float %add to double
  %sub = fadd double %conv, -6.000000e+00
  %conv1 = fpext float %sd to double
  %mul = fmul double %conv1, %sub
  %conv2 = fpext float %am to double
  %add3 = fadd double %conv2, %mul
  %conv4 = fptrunc double %add3 to float
  ret float %conv4
}

; Function Attrs: optsize
declare float @rando(i32*) #1

; Function Attrs: nounwind optsize uwtable
define void @low_mspeed(float %tempi, i32 %nrdf, i32 %seed, i32 %nat, i32* nocapture %a, %struct.t_atoms* nocapture %atoms, [3 x float]* nocapture %v) #0 {
entry:
  %ig = alloca i32, align 4
  store i32 %seed, i32* %ig, align 4, !tbaa !0
  %conv = fpext float %tempi to double
  %mul = fmul double %conv, 0x3F810732CDE67DC4
  %conv1 = fptrunc double %mul to float
  %cmp113 = icmp sgt i32 %nat, 0
  br i1 %cmp113, label %for.body.lr.ph, label %for.end37

for.body.lr.ph:                                   ; preds = %entry
  %atom = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc35, %for.body.lr.ph
  %indvars.iv124 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next125, %for.inc35 ]
  %ekin.0114 = phi float [ 0.000000e+00, %for.body.lr.ph ], [ %ekin.2, %for.inc35 ]
  %arrayidx = getelementptr inbounds i32* %a, i64 %indvars.iv124
  %0 = load i32* %arrayidx, align 4, !tbaa !0
  %idxprom3 = sext i32 %0 to i64
  %1 = load %struct.t_atom** %atom, align 8, !tbaa !3
  %m5 = getelementptr inbounds %struct.t_atom* %1, i64 %idxprom3, i32 0
  %2 = load float* %m5, align 4, !tbaa !4
  %cmp6 = fcmp ogt float %2, 0.000000e+00
  br i1 %cmp6, label %if.then, label %for.inc35

if.then:                                          ; preds = %for.body
  %div = fdiv float %conv1, %2
  %conv9 = call float @sqrtf(float %div) #2
  %conv19 = fpext float %2 to double
  %mul20 = fmul double %conv19, 5.000000e-01
  br label %for.body13

for.body13:                                       ; preds = %for.body13, %if.then
  %indvars.iv120 = phi i64 [ 0, %if.then ], [ %indvars.iv.next121, %for.body13 ]
  %ekin.1111 = phi float [ %ekin.0114, %if.then ], [ %conv34, %for.body13 ]
  %call14 = call float @gauss(float 0.000000e+00, float %conv9, i32* %ig) #5
  %arrayidx18 = getelementptr inbounds [3 x float]* %v, i64 %idxprom3, i64 %indvars.iv120
  store float %call14, float* %arrayidx18, align 4, !tbaa !4
  %conv25 = fpext float %call14 to double
  %mul26 = fmul double %mul20, %conv25
  %mul32 = fmul double %conv25, %mul26
  %conv33 = fpext float %ekin.1111 to double
  %add = fadd double %conv33, %mul32
  %conv34 = fptrunc double %add to float
  %indvars.iv.next121 = add i64 %indvars.iv120, 1
  %lftr.wideiv122 = trunc i64 %indvars.iv.next121 to i32
  %exitcond123 = icmp eq i32 %lftr.wideiv122, 3
  br i1 %exitcond123, label %for.inc35, label %for.body13

for.inc35:                                        ; preds = %for.body13, %for.body
  %ekin.2 = phi float [ %ekin.0114, %for.body ], [ %conv34, %for.body13 ]
  %indvars.iv.next125 = add i64 %indvars.iv124, 1
  %lftr.wideiv126 = trunc i64 %indvars.iv.next125 to i32
  %exitcond127 = icmp eq i32 %lftr.wideiv126, %nat
  br i1 %exitcond127, label %for.end37, label %for.body

for.end37:                                        ; preds = %for.inc35, %entry
  %ekin.0.lcssa = phi float [ 0.000000e+00, %entry ], [ %ekin.2, %for.inc35 ]
  %conv38 = fpext float %ekin.0.lcssa to double
  %mul39 = fmul double %conv38, 2.000000e+00
  %conv40 = sitofp i32 %nrdf to double
  %mul41 = fmul double %conv40, 0x3F810732CDE67DC4
  %div42 = fdiv double %mul39, %mul41
  %conv43 = fptrunc double %div42 to float
  %cmp44 = fcmp ogt float %conv43, 0.000000e+00
  br i1 %cmp44, label %if.then46, label %if.end72

if.then46:                                        ; preds = %for.end37
  %div47 = fdiv float %tempi, %conv43
  %conv50 = call float @sqrtf(float %div47) #2
  br i1 %cmp113, label %for.cond55.preheader, label %if.end72

for.cond55.preheader:                             ; preds = %if.then46, %for.inc69
  %indvars.iv116 = phi i64 [ %indvars.iv.next117, %for.inc69 ], [ 0, %if.then46 ]
  %arrayidx61 = getelementptr inbounds i32* %a, i64 %indvars.iv116
  %3 = load i32* %arrayidx61, align 4, !tbaa !0
  %idxprom62 = sext i32 %3 to i64
  br label %for.body58

for.body58:                                       ; preds = %for.body58, %for.cond55.preheader
  %indvars.iv = phi i64 [ 0, %for.cond55.preheader ], [ %indvars.iv.next, %for.body58 ]
  %arrayidx64 = getelementptr inbounds [3 x float]* %v, i64 %idxprom62, i64 %indvars.iv
  %4 = load float* %arrayidx64, align 4, !tbaa !4
  %mul65 = fmul float %conv50, %4
  store float %mul65, float* %arrayidx64, align 4, !tbaa !4
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 3
  br i1 %exitcond, label %for.inc69, label %for.body58

for.inc69:                                        ; preds = %for.body58
  %indvars.iv.next117 = add i64 %indvars.iv116, 1
  %lftr.wideiv118 = trunc i64 %indvars.iv.next117 to i32
  %exitcond119 = icmp eq i32 %lftr.wideiv118, %nat
  br i1 %exitcond119, label %if.end72, label %for.cond55.preheader

if.end72:                                         ; preds = %if.then46, %for.inc69, %for.end37
  %5 = load %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %call74 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([59 x i8]* @.str, i64 0, i64 0), double %conv) #4
  %6 = load %struct._IO_FILE** @debug, align 8, !tbaa !3
  %tobool = icmp eq %struct._IO_FILE* %6, null
  br i1 %tobool, label %if.end79, label %if.then75

if.then75:                                        ; preds = %if.end72
  %conv76 = fpext float %conv43 to double
  %call78 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([109 x i8]* @.str1, i64 0, i64 0), double %conv76, double %conv) #4
  br label %if.end79

if.end79:                                         ; preds = %if.end72, %if.then75
  ret void
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #2

; Function Attrs: nounwind optsize uwtable
define void @grp_maxwell(%struct.t_block* nocapture %grp, float* nocapture %tempi, i32* nocapture %nrdf, i32 %seed, %struct.t_atoms* nocapture %atoms, [3 x float]* nocapture %v) #0 {
entry:
  %nr = getelementptr inbounds %struct.t_block* %grp, i64 0, i32 1
  %0 = load i32* %nr, align 4, !tbaa !0
  %cmp19 = icmp sgt i32 %0, 0
  br i1 %cmp19, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %index = getelementptr inbounds %struct.t_block* %grp, i64 0, i32 2
  %a = getelementptr inbounds %struct.t_block* %grp, i64 0, i32 4
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.body ]
  %1 = load i32** %index, align 8, !tbaa !3
  %arrayidx = getelementptr inbounds i32* %1, i64 %indvars.iv
  %2 = load i32* %arrayidx, align 4, !tbaa !0
  %indvars.iv.next = add i64 %indvars.iv, 1
  %arrayidx3 = getelementptr inbounds i32* %1, i64 %indvars.iv.next
  %3 = load i32* %arrayidx3, align 4, !tbaa !0
  %sub = sub nsw i32 %3, %2
  %arrayidx5 = getelementptr inbounds float* %tempi, i64 %indvars.iv
  %4 = load float* %arrayidx5, align 4, !tbaa !4
  %arrayidx7 = getelementptr inbounds i32* %nrdf, i64 %indvars.iv
  %5 = load i32* %arrayidx7, align 4, !tbaa !0
  %idxprom8 = sext i32 %2 to i64
  %6 = load i32** %a, align 8, !tbaa !3
  %arrayidx9 = getelementptr inbounds i32* %6, i64 %idxprom8
  tail call void @low_mspeed(float %4, i32 %5, i32 %seed, i32 %sub, i32* %arrayidx9, %struct.t_atoms* %atoms, [3 x float]* %v) #5
  %7 = load i32* %nr, align 4, !tbaa !0
  %8 = trunc i64 %indvars.iv.next to i32
  %cmp = icmp slt i32 %8, %7
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %for.body, %entry
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @maxwell_speed(float %tempi, i32 %nrdf, i32 %seed, %struct.t_atoms* nocapture %atoms, [3 x float]* nocapture %v) #0 {
entry:
  %cmp = icmp eq i32 %seed, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = tail call i32 @make_seed() #4
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %call1 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([48 x i8]* @.str2, i64 0, i64 0), i32 %call) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %seed.addr.0 = phi i32 [ %call, %if.then ], [ %seed, %entry ]
  %nr = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 0
  %1 = load i32* %nr, align 4, !tbaa !0
  %call2 = tail call i8* @save_calloc(i8* getelementptr inbounds ([6 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str4, i64 0, i64 0), i32 143, i32 %1, i32 4) #4
  %2 = bitcast i8* %call2 to i32*
  %3 = load i32* %nr, align 4, !tbaa !0
  %cmp416 = icmp sgt i32 %3, 0
  br i1 %cmp416, label %for.body, label %for.end

for.body:                                         ; preds = %if.end, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %if.end ]
  %arrayidx = getelementptr inbounds i32* %2, i64 %indvars.iv
  %4 = trunc i64 %indvars.iv to i32
  store i32 %4, i32* %arrayidx, align 4, !tbaa !0
  %indvars.iv.next = add i64 %indvars.iv, 1
  %5 = load i32* %nr, align 4, !tbaa !0
  %6 = trunc i64 %indvars.iv.next to i32
  %cmp4 = icmp slt i32 %6, %5
  br i1 %cmp4, label %for.body, label %for.end

for.end:                                          ; preds = %for.body, %if.end
  %.lcssa = phi i32 [ %3, %if.end ], [ %5, %for.body ]
  tail call void @low_mspeed(float %tempi, i32 %nrdf, i32 %seed.addr.0, i32 %.lcssa, i32* %2, %struct.t_atoms* %atoms, [3 x float]* %v) #5
  tail call void @save_free(i8* getelementptr inbounds ([6 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str4, i64 0, i64 0), i32 147, i8* %call2) #4
  ret void
}

; Function Attrs: optsize
declare i32 @make_seed() #1

; Function Attrs: optsize
declare i8* @save_calloc(i8*, i8*, i32, i32, i32) #1

; Function Attrs: optsize
declare void @save_free(i8*, i8*, i32, i8*) #1

; Function Attrs: nounwind optsize uwtable
define float @calc_cm(%struct._IO_FILE* nocapture %log, i32 %natoms, float* nocapture %mass, [3 x float]* nocapture %x, [3 x float]* nocapture %v, float* nocapture %xcm, float* nocapture %vcm, float* nocapture %acm, [3 x float]* nocapture %L) #0 {
entry:
  %dx = alloca [3 x float], align 4
  %a0 = alloca [3 x float], align 4
  store float 0.000000e+00, float* %xcm, align 4, !tbaa !4
  %arrayidx1.i = getelementptr inbounds float* %xcm, i64 1
  store float 0.000000e+00, float* %arrayidx1.i, align 4, !tbaa !4
  %arrayidx2.i = getelementptr inbounds float* %xcm, i64 2
  store float 0.000000e+00, float* %arrayidx2.i, align 4, !tbaa !4
  store float 0.000000e+00, float* %vcm, align 4, !tbaa !4
  %arrayidx1.i196 = getelementptr inbounds float* %vcm, i64 1
  store float 0.000000e+00, float* %arrayidx1.i196, align 4, !tbaa !4
  %arrayidx2.i197 = getelementptr inbounds float* %vcm, i64 2
  store float 0.000000e+00, float* %arrayidx2.i197, align 4, !tbaa !4
  store float 0.000000e+00, float* %acm, align 4, !tbaa !4
  %arrayidx1.i194 = getelementptr inbounds float* %acm, i64 1
  store float 0.000000e+00, float* %arrayidx1.i194, align 4, !tbaa !4
  %arrayidx2.i195 = getelementptr inbounds float* %acm, i64 2
  store float 0.000000e+00, float* %arrayidx2.i195, align 4, !tbaa !4
  %cmp203 = icmp sgt i32 %natoms, 0
  %arraydecay6 = getelementptr inbounds [3 x float]* %a0, i64 0, i64 0
  %arrayidx13.i189 = getelementptr inbounds [3 x float]* %a0, i64 0, i64 1
  %arrayidx21.i193 = getelementptr inbounds [3 x float]* %a0, i64 0, i64 2
  br i1 %cmp203, label %for.body, label %for.end33

for.body:                                         ; preds = %entry, %for.inc31
  %indvars.iv218 = phi i64 [ %indvars.iv.next219, %for.inc31 ], [ 0, %entry ]
  %tm.0204 = phi float [ %add, %for.inc31 ], [ 0.000000e+00, %entry ]
  %arrayidx = getelementptr inbounds float* %mass, i64 %indvars.iv218
  %0 = load float* %arrayidx, align 4, !tbaa !4
  %arraydecay = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv218, i64 0
  %arraydecay5 = getelementptr inbounds [3 x float]* %v, i64 %indvars.iv218, i64 0
  %arrayidx.i179 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv218, i64 1
  %1 = load float* %arrayidx.i179, align 4, !tbaa !4
  %arrayidx1.i180 = getelementptr inbounds [3 x float]* %v, i64 %indvars.iv218, i64 2
  %2 = load float* %arrayidx1.i180, align 4, !tbaa !4
  %mul.i181 = fmul float %1, %2
  %arrayidx2.i182 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv218, i64 2
  %3 = load float* %arrayidx2.i182, align 4, !tbaa !4
  %arrayidx3.i183 = getelementptr inbounds [3 x float]* %v, i64 %indvars.iv218, i64 1
  %4 = load float* %arrayidx3.i183, align 4, !tbaa !4
  %mul4.i184 = fmul float %3, %4
  %sub.i185 = fsub float %mul.i181, %mul4.i184
  store float %sub.i185, float* %arraydecay6, align 4, !tbaa !4
  %5 = load float* %arraydecay5, align 4, !tbaa !4
  %mul8.i186 = fmul float %3, %5
  %6 = load float* %arraydecay, align 4, !tbaa !4
  %mul11.i187 = fmul float %6, %2
  %sub12.i188 = fsub float %mul8.i186, %mul11.i187
  store float %sub12.i188, float* %arrayidx13.i189, align 4, !tbaa !4
  %mul16.i190 = fmul float %6, %4
  %mul19.i191 = fmul float %1, %5
  %sub20.i192 = fsub float %mul16.i190, %mul19.i191
  store float %sub20.i192, float* %arrayidx21.i193, align 4, !tbaa !4
  br label %for.body9

for.body9:                                        ; preds = %for.body9.for.body9_crit_edge, %for.body
  %7 = phi float [ %sub.i185, %for.body ], [ %.pre224, %for.body9.for.body9_crit_edge ]
  %8 = phi float [ %6, %for.body ], [ %.pre223, %for.body9.for.body9_crit_edge ]
  %indvars.iv214 = phi i64 [ 0, %for.body ], [ %indvars.iv.next215, %for.body9.for.body9_crit_edge ]
  %mul = fmul float %0, %8
  %arrayidx15 = getelementptr inbounds float* %xcm, i64 %indvars.iv214
  %9 = load float* %arrayidx15, align 4, !tbaa !4
  %add16 = fadd float %9, %mul
  store float %add16, float* %arrayidx15, align 4, !tbaa !4
  %arrayidx20 = getelementptr inbounds [3 x float]* %v, i64 %indvars.iv218, i64 %indvars.iv214
  %10 = load float* %arrayidx20, align 4, !tbaa !4
  %mul21 = fmul float %0, %10
  %arrayidx23 = getelementptr inbounds float* %vcm, i64 %indvars.iv214
  %11 = load float* %arrayidx23, align 4, !tbaa !4
  %add24 = fadd float %11, %mul21
  store float %add24, float* %arrayidx23, align 4, !tbaa !4
  %mul27 = fmul float %0, %7
  %arrayidx29 = getelementptr inbounds float* %acm, i64 %indvars.iv214
  %12 = load float* %arrayidx29, align 4, !tbaa !4
  %add30 = fadd float %12, %mul27
  store float %add30, float* %arrayidx29, align 4, !tbaa !4
  %indvars.iv.next215 = add i64 %indvars.iv214, 1
  %lftr.wideiv216 = trunc i64 %indvars.iv.next215 to i32
  %exitcond217 = icmp eq i32 %lftr.wideiv216, 3
  br i1 %exitcond217, label %for.inc31, label %for.body9.for.body9_crit_edge

for.body9.for.body9_crit_edge:                    ; preds = %for.body9
  %arrayidx13.phi.trans.insert = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv218, i64 %indvars.iv.next215
  %.pre223 = load float* %arrayidx13.phi.trans.insert, align 4, !tbaa !4
  %arrayidx26.phi.trans.insert = getelementptr inbounds [3 x float]* %a0, i64 0, i64 %indvars.iv.next215
  %.pre224 = load float* %arrayidx26.phi.trans.insert, align 4, !tbaa !4
  br label %for.body9

for.inc31:                                        ; preds = %for.body9
  %add = fadd float %tm.0204, %0
  %indvars.iv.next219 = add i64 %indvars.iv218, 1
  %lftr.wideiv220 = trunc i64 %indvars.iv.next219 to i32
  %exitcond221 = icmp eq i32 %lftr.wideiv220, %natoms
  br i1 %exitcond221, label %for.end33, label %for.body

for.end33:                                        ; preds = %entry, %for.inc31
  %tm.0.lcssa = phi float [ %add, %for.inc31 ], [ 0.000000e+00, %entry ]
  %13 = load float* %arrayidx1.i, align 4, !tbaa !4
  %14 = load float* %arrayidx2.i197, align 4, !tbaa !4
  %mul.i = fmul float %13, %14
  %15 = load float* %arrayidx2.i, align 4, !tbaa !4
  %16 = load float* %arrayidx1.i196, align 4, !tbaa !4
  %mul4.i = fmul float %15, %16
  %sub.i = fsub float %mul.i, %mul4.i
  store float %sub.i, float* %arraydecay6, align 4, !tbaa !4
  %17 = load float* %vcm, align 4, !tbaa !4
  %mul8.i = fmul float %15, %17
  %18 = load float* %xcm, align 4, !tbaa !4
  %mul11.i = fmul float %18, %14
  %sub12.i = fsub float %mul8.i, %mul11.i
  store float %sub12.i, float* %arrayidx13.i189, align 4, !tbaa !4
  %mul16.i = fmul float %18, %16
  %mul19.i = fmul float %13, %17
  %sub20.i = fsub float %mul16.i, %mul19.i
  store float %sub20.i, float* %arrayidx21.i193, align 4, !tbaa !4
  br label %for.body37

for.body37:                                       ; preds = %for.body37.for.body37_crit_edge, %for.end33
  %19 = phi float [ %sub.i, %for.end33 ], [ %.pre222, %for.body37.for.body37_crit_edge ]
  %20 = phi float [ %18, %for.end33 ], [ %.pre, %for.body37.for.body37_crit_edge ]
  %indvars.iv210 = phi i64 [ 0, %for.end33 ], [ %indvars.iv.next211, %for.body37.for.body37_crit_edge ]
  %arrayidx39 = getelementptr inbounds float* %xcm, i64 %indvars.iv210
  %div = fdiv float %20, %tm.0.lcssa
  store float %div, float* %arrayidx39, align 4, !tbaa !4
  %arrayidx41 = getelementptr inbounds float* %vcm, i64 %indvars.iv210
  %21 = load float* %arrayidx41, align 4, !tbaa !4
  %div42 = fdiv float %21, %tm.0.lcssa
  store float %div42, float* %arrayidx41, align 4, !tbaa !4
  %div45 = fdiv float %19, %tm.0.lcssa
  %arrayidx47 = getelementptr inbounds float* %acm, i64 %indvars.iv210
  %22 = load float* %arrayidx47, align 4, !tbaa !4
  %sub = fsub float %22, %div45
  store float %sub, float* %arrayidx47, align 4, !tbaa !4
  %indvars.iv.next211 = add i64 %indvars.iv210, 1
  %lftr.wideiv212 = trunc i64 %indvars.iv.next211 to i32
  %exitcond213 = icmp eq i32 %lftr.wideiv212, 3
  br i1 %exitcond213, label %for.end50, label %for.body37.for.body37_crit_edge

for.body37.for.body37_crit_edge:                  ; preds = %for.body37
  %arrayidx39.phi.trans.insert = getelementptr inbounds float* %xcm, i64 %indvars.iv.next211
  %.pre = load float* %arrayidx39.phi.trans.insert, align 4, !tbaa !4
  %arrayidx44.phi.trans.insert = getelementptr inbounds [3 x float]* %a0, i64 0, i64 %indvars.iv.next211
  %.pre222 = load float* %arrayidx44.phi.trans.insert, align 4, !tbaa !4
  br label %for.body37

for.end50:                                        ; preds = %for.body37
  %23 = bitcast [3 x float]* %L to i8*
  call void @llvm.memset.p0i8.i64(i8* %23, i8 0, i64 36, i32 4, i1 false) #3
  br i1 %cmp203, label %for.body53.lr.ph, label %for.end115

for.body53.lr.ph:                                 ; preds = %for.end50
  %arrayidx71 = getelementptr inbounds [3 x float]* %dx, i64 0, i64 0
  %arrayidx76 = getelementptr inbounds [3 x float]* %L, i64 0, i64 0
  %arrayidx79 = getelementptr inbounds [3 x float]* %dx, i64 0, i64 1
  %arrayidx83 = getelementptr inbounds [3 x float]* %L, i64 0, i64 1
  %arrayidx86 = getelementptr inbounds [3 x float]* %dx, i64 0, i64 2
  %arrayidx90 = getelementptr inbounds [3 x float]* %L, i64 0, i64 2
  %arrayidx97 = getelementptr inbounds [3 x float]* %L, i64 1, i64 1
  %arrayidx104 = getelementptr inbounds [3 x float]* %L, i64 1, i64 2
  %arrayidx111 = getelementptr inbounds [3 x float]* %L, i64 2, i64 2
  br label %for.body53

for.body53:                                       ; preds = %for.end70, %for.body53.lr.ph
  %24 = phi float [ 0.000000e+00, %for.body53.lr.ph ], [ %add112, %for.end70 ]
  %25 = phi float [ 0.000000e+00, %for.body53.lr.ph ], [ %add105, %for.end70 ]
  %26 = phi float [ 0.000000e+00, %for.body53.lr.ph ], [ %add98, %for.end70 ]
  %27 = phi float [ 0.000000e+00, %for.body53.lr.ph ], [ %add91, %for.end70 ]
  %28 = phi float [ 0.000000e+00, %for.body53.lr.ph ], [ %add84, %for.end70 ]
  %29 = phi float [ 0.000000e+00, %for.body53.lr.ph ], [ %add77, %for.end70 ]
  %indvars.iv206 = phi i64 [ 0, %for.body53.lr.ph ], [ %indvars.iv.next207, %for.end70 ]
  %arrayidx55 = getelementptr inbounds float* %mass, i64 %indvars.iv206
  %30 = load float* %arrayidx55, align 4, !tbaa !4
  br label %for.body58

for.body58:                                       ; preds = %for.body58, %for.body53
  %indvars.iv = phi i64 [ 0, %for.body53 ], [ %indvars.iv.next, %for.body58 ]
  %arrayidx62 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv206, i64 %indvars.iv
  %31 = load float* %arrayidx62, align 4, !tbaa !4
  %arrayidx64 = getelementptr inbounds float* %xcm, i64 %indvars.iv
  %32 = load float* %arrayidx64, align 4, !tbaa !4
  %sub65 = fsub float %31, %32
  %arrayidx67 = getelementptr inbounds [3 x float]* %dx, i64 0, i64 %indvars.iv
  store float %sub65, float* %arrayidx67, align 4, !tbaa !4
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 3
  br i1 %exitcond, label %for.end70, label %for.body58

for.end70:                                        ; preds = %for.body58
  %33 = load float* %arrayidx71, align 4, !tbaa !4
  %mul73 = fmul float %33, %33
  %mul74 = fmul float %30, %mul73
  %add77 = fadd float %29, %mul74
  store float %add77, float* %arrayidx76, align 4, !tbaa !4
  %34 = load float* %arrayidx79, align 4, !tbaa !4
  %mul80 = fmul float %33, %34
  %mul81 = fmul float %30, %mul80
  %add84 = fadd float %28, %mul81
  store float %add84, float* %arrayidx83, align 4, !tbaa !4
  %35 = load float* %arrayidx86, align 4, !tbaa !4
  %mul87 = fmul float %33, %35
  %mul88 = fmul float %30, %mul87
  %add91 = fadd float %27, %mul88
  store float %add91, float* %arrayidx90, align 4, !tbaa !4
  %mul94 = fmul float %34, %34
  %mul95 = fmul float %30, %mul94
  %add98 = fadd float %26, %mul95
  store float %add98, float* %arrayidx97, align 4, !tbaa !4
  %mul101 = fmul float %34, %35
  %mul102 = fmul float %30, %mul101
  %add105 = fadd float %25, %mul102
  store float %add105, float* %arrayidx104, align 4, !tbaa !4
  %mul108 = fmul float %35, %35
  %mul109 = fmul float %30, %mul108
  %add112 = fadd float %24, %mul109
  store float %add112, float* %arrayidx111, align 4, !tbaa !4
  %indvars.iv.next207 = add i64 %indvars.iv206, 1
  %lftr.wideiv208 = trunc i64 %indvars.iv.next207 to i32
  %exitcond209 = icmp eq i32 %lftr.wideiv208, %natoms
  br i1 %exitcond209, label %for.end115, label %for.body53

for.end115:                                       ; preds = %for.end70, %for.end50
  ret float %tm.0.lcssa
}

; Function Attrs: nounwind optsize uwtable
define void @stop_cm(%struct._IO_FILE* nocapture %log, i32 %natoms, float* nocapture %mass, [3 x float]* nocapture %x, [3 x float]* nocapture %v) #0 {
entry:
  %xcm = alloca [3 x float], align 4
  %vcm = alloca [3 x float], align 4
  %acm = alloca [3 x float], align 4
  %L = alloca [3 x [3 x float]], align 16
  %0 = bitcast [3 x [3 x float]]* %L to i8*
  call void @llvm.lifetime.start(i64 36, i8* %0) #3
  %arraydecay = getelementptr inbounds [3 x float]* %xcm, i64 0, i64 0
  %arraydecay1 = getelementptr inbounds [3 x float]* %vcm, i64 0, i64 0
  %arraydecay2 = getelementptr inbounds [3 x float]* %acm, i64 0, i64 0
  %arraydecay3 = getelementptr inbounds [3 x [3 x float]]* %L, i64 0, i64 0
  %call = call float @calc_cm(%struct._IO_FILE* undef, i32 %natoms, float* %mass, [3 x float]* %x, [3 x float]* %v, float* %arraydecay, float* %arraydecay1, float* %arraydecay2, [3 x float]* %arraydecay3) #5
  %cmp22 = icmp sgt i32 %natoms, 0
  br i1 %cmp22, label %for.cond4.preheader, label %for.end13

for.cond4.preheader:                              ; preds = %entry, %for.inc11
  %indvars.iv24 = phi i64 [ %indvars.iv.next25, %for.inc11 ], [ 0, %entry ]
  br label %for.body6

for.body6:                                        ; preds = %for.body6, %for.cond4.preheader
  %indvars.iv = phi i64 [ 0, %for.cond4.preheader ], [ %indvars.iv.next, %for.body6 ]
  %arrayidx = getelementptr inbounds [3 x float]* %vcm, i64 0, i64 %indvars.iv
  %1 = load float* %arrayidx, align 4, !tbaa !4
  %arrayidx10 = getelementptr inbounds [3 x float]* %v, i64 %indvars.iv24, i64 %indvars.iv
  %2 = load float* %arrayidx10, align 4, !tbaa !4
  %sub = fsub float %2, %1
  store float %sub, float* %arrayidx10, align 4, !tbaa !4
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 3
  br i1 %exitcond, label %for.inc11, label %for.body6

for.inc11:                                        ; preds = %for.body6
  %indvars.iv.next25 = add i64 %indvars.iv24, 1
  %lftr.wideiv26 = trunc i64 %indvars.iv.next25 to i32
  %exitcond27 = icmp eq i32 %lftr.wideiv26, %natoms
  br i1 %exitcond27, label %for.end13, label %for.cond4.preheader

for.end13:                                        ; preds = %for.inc11, %entry
  call void @llvm.lifetime.end(i64 36, i8* %0) #3
  ret void
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #3

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #3

; Function Attrs: nounwind optsize
declare float @sqrtf(float) #2

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #3

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { nounwind optsize }
attributes #5 = { optsize }

!0 = metadata !{metadata !"int", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"any pointer", metadata !1}
!4 = metadata !{metadata !"float", metadata !1}
