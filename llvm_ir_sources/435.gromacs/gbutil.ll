; ModuleID = '../../SPEC/benchspec/CPU2006/435.gromacs/src/gbutil.c'
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
@.str = private unnamed_addr constant [26 x i8] c"Generating configuration\0A\00", align 1

; Function Attrs: nounwind optsize readonly uwtable
define float @distance_to_z(float* nocapture %x) #0 {
entry:
  %0 = load float* %x, align 4, !tbaa !0
  %mul.i = fmul float %0, %0
  %arrayidx1 = getelementptr inbounds float* %x, i64 1
  %1 = load float* %arrayidx1, align 4, !tbaa !0
  %mul.i4 = fmul float %1, %1
  %add = fadd float %mul.i, %mul.i4
  ret float %add
}

; Function Attrs: nounwind optsize uwtable
define void @rotate_conf(i32 %natom, [3 x float]* %x, [3 x float]* %v, float %alfa, float %beta, float %gamma) #1 {
entry:
  %tobool = icmp eq [3 x float]* %x, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call fastcc void @low_rotate_conf(i32 %natom, [3 x float]* %x, float %alfa, float %beta, float %gamma) #5
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %tobool1 = icmp eq [3 x float]* %v, null
  br i1 %tobool1, label %if.end3, label %if.then2

if.then2:                                         ; preds = %if.end
  tail call fastcc void @low_rotate_conf(i32 %natom, [3 x float]* %v, float %alfa, float %beta, float %gamma) #5
  br label %if.end3

if.end3:                                          ; preds = %if.end, %if.then2
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @low_rotate_conf(i32 %natom, [3 x float]* nocapture %x, float %alfa, float %beta, float %gamma) #1 {
entry:
  %cmp160 = icmp sgt i32 %natom, 0
  br i1 %cmp160, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %conv7 = fpext float %alfa to double
  %conv37 = fpext float %beta to double
  %conv75 = fpext float %gamma to double
  br label %for.body

for.body:                                         ; preds = %for.body, %for.body.lr.ph
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.body ]
  %arraydecay = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv, i64 0
  %arrayidx2.i = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv, i64 1
  %0 = load float* %arrayidx2.i, align 4, !tbaa !0
  %arrayidx4.i = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv, i64 2
  %1 = load float* %arrayidx4.i, align 4, !tbaa !0
  %conv = fpext float %0 to double
  %call = tail call double @cos(double %conv7) #6
  %mul = fmul double %conv, %call
  %conv9 = fpext float %1 to double
  %call11 = tail call double @sin(double %conv7) #6
  %mul12 = fmul double %conv9, %call11
  %add = fadd double %mul, %mul12
  %conv13 = fptrunc double %add to float
  store float %conv13, float* %arrayidx2.i, align 4, !tbaa !0
  %call20 = tail call double @cos(double %conv7) #6
  %mul21 = fmul double %conv9, %call20
  %call25 = tail call double @sin(double %conv7) #6
  %mul26 = fmul double %conv, %call25
  %sub = fsub double %mul21, %mul26
  %conv27 = fptrunc double %sub to float
  store float %conv27, float* %arrayidx4.i, align 4, !tbaa !0
  %2 = load float* %arraydecay, align 4, !tbaa !0
  %3 = load float* %arrayidx2.i, align 4, !tbaa !0
  %conv36 = fpext float %2 to double
  %call38 = tail call double @cos(double %conv37) #6
  %mul39 = fmul double %conv36, %call38
  %conv41 = fpext float %conv27 to double
  %call43 = tail call double @sin(double %conv37) #6
  %mul44 = fmul double %conv41, %call43
  %sub45 = fsub double %mul39, %mul44
  %conv46 = fptrunc double %sub45 to float
  store float %conv46, float* %arraydecay, align 4, !tbaa !0
  store float %3, float* %arrayidx2.i, align 4, !tbaa !0
  %call57 = tail call double @cos(double %conv37) #6
  %mul58 = fmul double %conv41, %call57
  %call62 = tail call double @sin(double %conv37) #6
  %mul63 = fmul double %conv36, %call62
  %add64 = fadd double %mul58, %mul63
  %conv65 = fptrunc double %add64 to float
  store float %conv65, float* %arrayidx4.i, align 4, !tbaa !0
  %4 = load float* %arraydecay, align 4, !tbaa !0
  %5 = load float* %arrayidx2.i, align 4, !tbaa !0
  %conv74 = fpext float %4 to double
  %call76 = tail call double @cos(double %conv75) #6
  %mul77 = fmul double %conv74, %call76
  %conv79 = fpext float %5 to double
  %call81 = tail call double @sin(double %conv75) #6
  %mul82 = fmul double %conv79, %call81
  %add83 = fadd double %mul77, %mul82
  %conv84 = fptrunc double %add83 to float
  store float %conv84, float* %arraydecay, align 4, !tbaa !0
  %call91 = tail call double @cos(double %conv75) #6
  %mul92 = fmul double %conv79, %call91
  %call96 = tail call double @sin(double %conv75) #6
  %mul97 = fmul double %conv74, %call96
  %sub98 = fsub double %mul92, %mul97
  %conv99 = fptrunc double %sub98 to float
  store float %conv99, float* %arrayidx2.i, align 4, !tbaa !0
  store float %conv65, float* %arrayidx4.i, align 4, !tbaa !0
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %natom
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %entry
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @orient(i32 %natom, [3 x float]* %x, [3 x float]* %v, float* nocapture %angle, [3 x float]* nocapture %box) #1 {
entry:
  %dx.i = alloca [3 x float], align 4
  %origin = alloca [3 x float], align 4
  %origin218 = bitcast [3 x float]* %origin to i8*
  %arraydecay = getelementptr inbounds [3 x float]* %x, i64 0, i64 0
  %arraydecay2 = getelementptr inbounds [3 x float]* %x, i64 1, i64 0
  %0 = bitcast [3 x float]* %dx.i to i8*
  call void @llvm.lifetime.start(i64 12, i8* %0) #4
  %arraydecay.i = getelementptr inbounds [3 x float]* %dx.i, i64 0, i64 0
  call void @pbc_dx(float* %arraydecay, float* %arraydecay2, float* %arraydecay.i) #6
  %1 = load float* %arraydecay.i, align 4, !tbaa !0
  %arrayidx2.i.i = getelementptr inbounds [3 x float]* %dx.i, i64 0, i64 1
  %2 = load float* %arrayidx2.i.i, align 4, !tbaa !0
  %arrayidx5.i.i = getelementptr inbounds [3 x float]* %dx.i, i64 0, i64 2
  %3 = load float* %arrayidx5.i.i, align 4, !tbaa !0
  call void @llvm.lifetime.end(i64 12, i8* %0) #4
  %cmp198 = icmp sgt i32 %natom, 0
  br i1 %cmp198, label %for.cond3.preheader.lr.ph, label %for.end15

for.cond3.preheader.lr.ph:                        ; preds = %entry
  %mul4.i.i = fmul float %2, %2
  %mul.i.i = fmul float %1, %1
  %mul7.i.i = fmul float %3, %3
  %add.i.i = fadd float %mul.i.i, %mul4.i.i
  %add8.i.i = fadd float %add.i.i, %mul7.i.i
  br label %for.body5.lr.ph

for.body5.lr.ph:                                  ; preds = %for.cond3.preheader.lr.ph, %for.inc13
  %indvars.iv224 = phi i64 [ 0, %for.cond3.preheader.lr.ph ], [ %indvars.iv.next225, %for.inc13 ]
  %longest.0203 = phi float [ %add8.i.i, %for.cond3.preheader.lr.ph ], [ %longest.2, %for.inc13 ]
  %max_j.0202 = phi i32 [ 0, %for.cond3.preheader.lr.ph ], [ %max_j.2, %for.inc13 ]
  %max_i.0201 = phi i32 [ 0, %for.cond3.preheader.lr.ph ], [ %max_i.2, %for.inc13 ]
  %arraydecay7 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv224, i64 0
  br label %for.body5

for.body5:                                        ; preds = %for.body5, %for.body5.lr.ph
  %indvars.iv220 = phi i64 [ 0, %for.body5.lr.ph ], [ %indvars.iv.next221, %for.body5 ]
  %longest.1194 = phi float [ %longest.0203, %for.body5.lr.ph ], [ %longest.2, %for.body5 ]
  %max_j.1193 = phi i32 [ %max_j.0202, %for.body5.lr.ph ], [ %max_j.2, %for.body5 ]
  %max_i.1192 = phi i32 [ %max_i.0201, %for.body5.lr.ph ], [ %max_i.2, %for.body5 ]
  %arraydecay10 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv220, i64 0
  call void @llvm.lifetime.start(i64 12, i8* %0) #4
  call void @pbc_dx(float* %arraydecay7, float* %arraydecay10, float* %arraydecay.i) #6
  %4 = load float* %arraydecay.i, align 4, !tbaa !0
  %mul.i.i170 = fmul float %4, %4
  %5 = load float* %arrayidx2.i.i, align 4, !tbaa !0
  %mul4.i.i172 = fmul float %5, %5
  %add.i.i173 = fadd float %mul.i.i170, %mul4.i.i172
  %6 = load float* %arrayidx5.i.i, align 4, !tbaa !0
  %mul7.i.i175 = fmul float %6, %6
  %add8.i.i176 = fadd float %add.i.i173, %mul7.i.i175
  call void @llvm.lifetime.end(i64 12, i8* %0) #4
  %cmp12 = fcmp ogt float %add8.i.i176, %longest.1194
  %7 = trunc i64 %indvars.iv224 to i32
  %max_i.2 = select i1 %cmp12, i32 %7, i32 %max_i.1192
  %8 = trunc i64 %indvars.iv220 to i32
  %max_j.2 = select i1 %cmp12, i32 %8, i32 %max_j.1193
  %longest.2 = select i1 %cmp12, float %add8.i.i176, float %longest.1194
  %indvars.iv.next221 = add i64 %indvars.iv220, 1
  %lftr.wideiv222 = trunc i64 %indvars.iv.next221 to i32
  %exitcond223 = icmp eq i32 %lftr.wideiv222, %natom
  br i1 %exitcond223, label %for.inc13, label %for.body5

for.inc13:                                        ; preds = %for.body5
  %indvars.iv.next225 = add i64 %indvars.iv224, 1
  %lftr.wideiv226 = trunc i64 %indvars.iv.next225 to i32
  %exitcond227 = icmp eq i32 %lftr.wideiv226, %natom
  br i1 %exitcond227, label %for.end15, label %for.body5.lr.ph

for.end15:                                        ; preds = %for.inc13, %entry
  %max_j.0.lcssa = phi i32 [ 0, %entry ], [ %max_j.2, %for.inc13 ]
  %max_i.0.lcssa = phi i32 [ 0, %entry ], [ %max_i.2, %for.inc13 ]
  %idxprom16 = sext i32 %max_i.0.lcssa to i64
  %arrayidx18 = getelementptr inbounds [3 x float]* %x, i64 %idxprom16, i64 2
  %9 = load float* %arrayidx18, align 4, !tbaa !0
  %idxprom19 = sext i32 %max_j.0.lcssa to i64
  %arrayidx21 = getelementptr inbounds [3 x float]* %x, i64 %idxprom19, i64 2
  %10 = load float* %arrayidx21, align 4, !tbaa !0
  %cmp22 = fcmp ogt float %9, %10
  %max_i.3 = select i1 %cmp22, i32 %max_j.0.lcssa, i32 %max_i.0.lcssa
  %11 = sext i32 %max_i.3 to i64
  %scevgep = getelementptr [3 x float]* %x, i64 %11, i64 0
  %scevgep219 = bitcast float* %scevgep to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %origin218, i8* %scevgep219, i64 12, i32 4, i1 false)
  %max_j.3 = select i1 %cmp22, i32 %max_i.0.lcssa, i32 %max_j.0.lcssa
  br i1 %cmp198, label %for.cond40.preheader, label %for.end54

for.cond40.preheader:                             ; preds = %for.end15, %for.inc52
  %indvars.iv210 = phi i64 [ %indvars.iv.next211, %for.inc52 ], [ 0, %for.end15 ]
  br label %for.body42

for.body42:                                       ; preds = %for.body42, %for.cond40.preheader
  %indvars.iv206 = phi i64 [ 0, %for.cond40.preheader ], [ %indvars.iv.next207, %for.body42 ]
  %arrayidx44 = getelementptr inbounds [3 x float]* %origin, i64 0, i64 %indvars.iv206
  %12 = load float* %arrayidx44, align 4, !tbaa !0
  %arrayidx48 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv210, i64 %indvars.iv206
  %13 = load float* %arrayidx48, align 4, !tbaa !0
  %sub = fsub float %13, %12
  store float %sub, float* %arrayidx48, align 4, !tbaa !0
  %indvars.iv.next207 = add i64 %indvars.iv206, 1
  %lftr.wideiv208 = trunc i64 %indvars.iv.next207 to i32
  %exitcond209 = icmp eq i32 %lftr.wideiv208, 3
  br i1 %exitcond209, label %for.inc52, label %for.body42

for.inc52:                                        ; preds = %for.body42
  %indvars.iv.next211 = add i64 %indvars.iv210, 1
  %lftr.wideiv212 = trunc i64 %indvars.iv.next211 to i32
  %exitcond213 = icmp eq i32 %lftr.wideiv212, %natom
  br i1 %exitcond213, label %for.end54, label %for.cond40.preheader

for.end54:                                        ; preds = %for.inc52, %for.end15
  %idxprom55 = sext i32 %max_j.3 to i64
  %arrayidx57 = getelementptr inbounds [3 x float]* %x, i64 %idxprom55, i64 2
  %14 = load float* %arrayidx57, align 4, !tbaa !0
  %arrayidx60 = getelementptr inbounds [3 x float]* %x, i64 %idxprom55, i64 1
  %15 = load float* %arrayidx60, align 4, !tbaa !0
  %div = fdiv float %14, %15
  %conv = fpext float %div to double
  %call61 = call double @atan(double %conv) #6
  %sub62 = fadd double %call61, 0xBFF921FB54442D18
  %conv63 = fptrunc double %sub62 to float
  %16 = load float* %arrayidx57, align 4, !tbaa !0
  %arrayidx69 = getelementptr inbounds [3 x float]* %x, i64 %idxprom55, i64 0
  %17 = load float* %arrayidx69, align 4, !tbaa !0
  %div70 = fdiv float %16, %17
  %conv71 = fpext float %div70 to double
  %call72 = call double @atan(double %conv71) #6
  %sub73 = fsub double 0x3FF921FB54442D18, %call72
  %conv74 = fptrunc double %sub73 to float
  call void @rotate_conf(i32 %natom, [3 x float]* %x, [3 x float]* %v, float %conv63, float %conv74, float 0.000000e+00) #5
  %18 = load float* %arraydecay, align 4, !tbaa !0
  %arrayidx1.i = getelementptr inbounds [3 x float]* %x, i64 0, i64 1
  %19 = load float* %arrayidx1.i, align 4, !tbaa !0
  %cmp79182 = icmp sgt i32 %natom, 1
  br i1 %cmp79182, label %for.body81.lr.ph, label %for.end92

for.body81.lr.ph:                                 ; preds = %for.end54
  %mul.i4.i = fmul float %19, %19
  %mul.i.i177 = fmul float %18, %18
  %add.i = fadd float %mul.i.i177, %mul.i4.i
  br label %for.body81

for.body81:                                       ; preds = %for.body81, %for.body81.lr.ph
  %indvars.iv = phi i64 [ 1, %for.body81.lr.ph ], [ %indvars.iv.next, %for.body81 ]
  %longest.3185 = phi float [ %add.i, %for.body81.lr.ph ], [ %longest.4, %for.body81 ]
  %max_i.4184 = phi i32 [ 0, %for.body81.lr.ph ], [ %max_i.5, %for.body81 ]
  %arraydecay84 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv, i64 0
  %20 = load float* %arraydecay84, align 4, !tbaa !0
  %mul.i.i178 = fmul float %20, %20
  %arrayidx1.i179 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv, i64 1
  %21 = load float* %arrayidx1.i179, align 4, !tbaa !0
  %mul.i4.i180 = fmul float %21, %21
  %add.i181 = fadd float %mul.i.i178, %mul.i4.i180
  %cmp86 = fcmp ogt float %add.i181, %longest.3185
  %22 = trunc i64 %indvars.iv to i32
  %max_i.5 = select i1 %cmp86, i32 %22, i32 %max_i.4184
  %longest.4 = select i1 %cmp86, float %add.i181, float %longest.3185
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %natom
  br i1 %exitcond, label %for.cond78.for.end92_crit_edge, label %for.body81

for.cond78.for.end92_crit_edge:                   ; preds = %for.body81
  %phitmp = sext i32 %max_i.5 to i64
  %arrayidx95.phi.trans.insert = getelementptr inbounds [3 x float]* %x, i64 %phitmp, i64 1
  %.pre = load float* %arrayidx95.phi.trans.insert, align 4, !tbaa !0
  %arrayidx98.phi.trans.insert = getelementptr inbounds [3 x float]* %x, i64 %phitmp, i64 0
  %.pre228 = load float* %arrayidx98.phi.trans.insert, align 4, !tbaa !0
  br label %for.end92

for.end92:                                        ; preds = %for.cond78.for.end92_crit_edge, %for.end54
  %23 = phi float [ %.pre228, %for.cond78.for.end92_crit_edge ], [ %18, %for.end54 ]
  %24 = phi float [ %.pre, %for.cond78.for.end92_crit_edge ], [ %19, %for.end54 ]
  %div99 = fdiv float %24, %23
  %conv100 = fpext float %div99 to double
  %call101 = call double @atan(double %conv100) #6
  %sub102 = fadd double %call101, 0xBFF921FB54442D18
  %conv103 = fptrunc double %sub102 to float
  call void @rotate_conf(i32 %natom, [3 x float]* %x, [3 x float]* %v, float 0.000000e+00, float 0.000000e+00, float %conv103) #5
  store float %conv63, float* %angle, align 4, !tbaa !0
  %arrayidx105 = getelementptr inbounds float* %angle, i64 1
  store float %conv74, float* %arrayidx105, align 4, !tbaa !0
  %arrayidx106 = getelementptr inbounds float* %angle, i64 2
  store float %conv103, float* %arrayidx106, align 4, !tbaa !0
  ret void
}

; Function Attrs: nounwind optsize
declare double @atan(double) #2

; Function Attrs: nounwind optsize uwtable
define void @genconf(%struct.t_atoms* nocapture %atoms, [3 x float]* nocapture %x, [3 x float]* %v, float* nocapture %r, [3 x float]* nocapture %box, i32* nocapture %n_box) #1 {
entry:
  %delta = alloca [3 x float], align 4
  %0 = load i32* %n_box, align 4, !tbaa !3
  %arrayidx1 = getelementptr inbounds i32* %n_box, i64 1
  %1 = load i32* %arrayidx1, align 4, !tbaa !3
  %mul = mul i32 %1, %0
  %arrayidx2 = getelementptr inbounds i32* %n_box, i64 2
  %2 = load i32* %arrayidx2, align 4, !tbaa !3
  %mul3 = mul i32 %mul, %2
  %3 = load %struct._IO_FILE** @stderr, align 8, !tbaa !4
  %4 = call i64 @fwrite(i8* getelementptr inbounds ([26 x i8]* @.str, i64 0, i64 0), i64 25, i64 1, %struct._IO_FILE* %3)
  %5 = load i32* %n_box, align 4, !tbaa !3
  %cmp247 = icmp sgt i32 %5, 0
  br i1 %cmp247, label %for.body.lr.ph, label %entry.for.cond83.preheader_crit_edge

entry.for.cond83.preheader_crit_edge:             ; preds = %entry
  %nr87.pre = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 0
  br label %for.cond83.preheader

for.body.lr.ph:                                   ; preds = %entry
  %arrayidx6 = getelementptr inbounds [3 x float]* %box, i64 0, i64 0
  %arrayidx8 = getelementptr inbounds [3 x float]* %delta, i64 0, i64 0
  %6 = load i32* %arrayidx1, align 4, !tbaa !3
  %cmp11243 = icmp sgt i32 %6, 0
  %arrayidx16 = getelementptr inbounds [3 x float]* %box, i64 1, i64 1
  %arrayidx18 = getelementptr inbounds [3 x float]* %delta, i64 0, i64 1
  %arrayidx26 = getelementptr inbounds [3 x float]* %box, i64 2, i64 2
  %arrayidx28 = getelementptr inbounds [3 x float]* %delta, i64 0, i64 2
  %nr = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 0
  %tobool = icmp eq [3 x float]* %v, null
  br label %for.body

for.cond83.preheader:                             ; preds = %for.inc80, %entry.for.cond83.preheader_crit_edge
  %nr87.pre-phi = phi i32* [ %nr87.pre, %entry.for.cond83.preheader_crit_edge ], [ %nr, %for.inc80 ]
  %cmp84232 = icmp sgt i32 %mul3, 1
  %7 = load i32* %nr87.pre-phi, align 4, !tbaa !3
  %nres = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 5
  br i1 %cmp84232, label %for.body86.lr.ph, label %for.end128

for.body86.lr.ph:                                 ; preds = %for.cond83.preheader
  %atomname = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 2
  %atom = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 1
  %resname = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 6
  br label %for.body86

for.body:                                         ; preds = %for.inc80, %for.body.lr.ph
  %ix.0249 = phi i32 [ 0, %for.body.lr.ph ], [ %inc81, %for.inc80 ]
  %imol.0248 = phi i32 [ 0, %for.body.lr.ph ], [ %imol.1.lcssa, %for.inc80 ]
  %conv = sitofp i32 %ix.0249 to float
  %8 = load float* %arrayidx6, align 4, !tbaa !0
  %mul7 = fmul float %conv, %8
  store float %mul7, float* %arrayidx8, align 4, !tbaa !0
  br i1 %cmp11243, label %for.body13.lr.ph, label %for.inc80

for.body13.lr.ph:                                 ; preds = %for.body
  %9 = load i32* %arrayidx2, align 4, !tbaa !3
  %cmp21239 = icmp sgt i32 %9, 0
  br label %for.body13

for.body13:                                       ; preds = %for.inc77, %for.body13.lr.ph
  %iy.0245 = phi i32 [ 0, %for.body13.lr.ph ], [ %inc78, %for.inc77 ]
  %imol.1244 = phi i32 [ %imol.0248, %for.body13.lr.ph ], [ %imol.2.lcssa, %for.inc77 ]
  %conv14 = sitofp i32 %iy.0245 to float
  %10 = load float* %arrayidx16, align 4, !tbaa !0
  %mul17 = fmul float %conv14, %10
  store float %mul17, float* %arrayidx18, align 4, !tbaa !0
  br i1 %cmp21239, label %for.body23.lr.ph, label %for.inc77

for.body23.lr.ph:                                 ; preds = %for.body13
  %11 = load i32* %nr, align 4, !tbaa !3
  %cmp32237 = icmp sgt i32 %11, 0
  %12 = sext i32 %imol.1244 to i64
  %13 = icmp sgt i32 %9, 1
  %smax = select i1 %13, i32 %9, i32 1
  br label %for.body23

for.body23:                                       ; preds = %for.end72.for.body23_crit_edge, %for.body23.lr.ph
  %indvars.iv274 = phi i64 [ %12, %for.body23.lr.ph ], [ %indvars.iv.next275, %for.end72.for.body23_crit_edge ]
  %iz.0241 = phi i32 [ 0, %for.body23.lr.ph ], [ %inc75, %for.end72.for.body23_crit_edge ]
  %conv24 = sitofp i32 %iz.0241 to float
  %14 = load float* %arrayidx26, align 4, !tbaa !0
  %mul27 = fmul float %conv24, %14
  store float %mul27, float* %arrayidx28, align 4, !tbaa !0
  br i1 %cmp32237, label %for.cond35.preheader.lr.ph, label %for.end72

for.cond35.preheader.lr.ph:                       ; preds = %for.body23
  %15 = trunc i64 %indvars.iv274 to i32
  %mul29 = mul nsw i32 %11, %15
  %16 = sext i32 %mul29 to i64
  br label %for.cond35.preheader

for.cond35.preheader:                             ; preds = %for.cond35.preheader.lr.ph, %if.end
  %indvars.iv268 = phi i64 [ 0, %for.cond35.preheader.lr.ph ], [ %indvars.iv.next269, %if.end ]
  %17 = add nsw i64 %indvars.iv268, %16
  br label %for.body38

for.body38:                                       ; preds = %for.body38, %for.cond35.preheader
  %indvars.iv259 = phi i64 [ 0, %for.cond35.preheader ], [ %indvars.iv.next260, %for.body38 ]
  %arrayidx39 = getelementptr inbounds [3 x float]* %delta, i64 0, i64 %indvars.iv259
  %18 = load float* %arrayidx39, align 4, !tbaa !0
  %arrayidx43 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv268, i64 %indvars.iv259
  %19 = load float* %arrayidx43, align 4, !tbaa !0
  %add = fadd float %18, %19
  %arrayidx48 = getelementptr inbounds [3 x float]* %x, i64 %17, i64 %indvars.iv259
  store float %add, float* %arrayidx48, align 4, !tbaa !0
  %indvars.iv.next260 = add i64 %indvars.iv259, 1
  %lftr.wideiv261 = trunc i64 %indvars.iv.next260 to i32
  %exitcond262 = icmp eq i32 %lftr.wideiv261, 3
  br i1 %exitcond262, label %for.end, label %for.body38

for.end:                                          ; preds = %for.body38
  br i1 %tobool, label %if.end, label %for.body52

for.body52:                                       ; preds = %for.end, %for.body52
  %indvars.iv263 = phi i64 [ %indvars.iv.next264, %for.body52 ], [ 0, %for.end ]
  %arrayidx56 = getelementptr inbounds [3 x float]* %v, i64 %indvars.iv268, i64 %indvars.iv263
  %20 = load float* %arrayidx56, align 4, !tbaa !0
  %arrayidx61 = getelementptr inbounds [3 x float]* %v, i64 %17, i64 %indvars.iv263
  store float %20, float* %arrayidx61, align 4, !tbaa !0
  %indvars.iv.next264 = add i64 %indvars.iv263, 1
  %lftr.wideiv265 = trunc i64 %indvars.iv.next264 to i32
  %exitcond266 = icmp eq i32 %lftr.wideiv265, 3
  br i1 %exitcond266, label %if.end, label %for.body52

if.end:                                           ; preds = %for.body52, %for.end
  %arrayidx66 = getelementptr inbounds float* %r, i64 %indvars.iv268
  %21 = load float* %arrayidx66, align 4, !tbaa !0
  %arrayidx69 = getelementptr inbounds float* %r, i64 %17
  store float %21, float* %arrayidx69, align 4, !tbaa !0
  %indvars.iv.next269 = add i64 %indvars.iv268, 1
  %22 = trunc i64 %indvars.iv.next269 to i32
  %cmp32 = icmp slt i32 %22, %11
  br i1 %cmp32, label %for.cond35.preheader, label %for.end72

for.end72:                                        ; preds = %if.end, %for.body23
  %inc75 = add nsw i32 %iz.0241, 1
  %cmp21 = icmp slt i32 %inc75, %9
  br i1 %cmp21, label %for.end72.for.body23_crit_edge, label %for.cond19.for.inc77_crit_edge

for.end72.for.body23_crit_edge:                   ; preds = %for.end72
  %indvars.iv.next275 = add i64 %indvars.iv274, 1
  br label %for.body23

for.cond19.for.inc77_crit_edge:                   ; preds = %for.end72
  %23 = add i32 %imol.1244, %smax
  br label %for.inc77

for.inc77:                                        ; preds = %for.cond19.for.inc77_crit_edge, %for.body13
  %imol.2.lcssa = phi i32 [ %23, %for.cond19.for.inc77_crit_edge ], [ %imol.1244, %for.body13 ]
  %inc78 = add nsw i32 %iy.0245, 1
  %cmp11 = icmp slt i32 %inc78, %6
  br i1 %cmp11, label %for.body13, label %for.inc80

for.inc80:                                        ; preds = %for.inc77, %for.body
  %imol.1.lcssa = phi i32 [ %imol.0248, %for.body ], [ %imol.2.lcssa, %for.inc77 ]
  %inc81 = add nsw i32 %ix.0249, 1
  %cmp = icmp slt i32 %inc81, %5
  br i1 %cmp, label %for.body, label %for.cond83.preheader

for.body86:                                       ; preds = %for.inc126, %for.body86.lr.ph
  %24 = phi i32 [ %7, %for.body86.lr.ph ], [ %37, %for.inc126 ]
  %i.1233 = phi i32 [ 1, %for.body86.lr.ph ], [ %inc127, %for.inc126 ]
  %25 = load i32* %nres, align 4, !tbaa !3
  %mul89 = mul nsw i32 %25, %i.1233
  %cmp92230 = icmp sgt i32 %24, 0
  br i1 %cmp92230, label %for.body94.lr.ph, label %for.inc126

for.body94.lr.ph:                                 ; preds = %for.body86
  %mul88 = mul nsw i32 %24, %i.1233
  %26 = sext i32 %mul88 to i64
  br label %for.body94

for.body94:                                       ; preds = %for.body94.lr.ph, %for.body94
  %indvars.iv254 = phi i64 [ 0, %for.body94.lr.ph ], [ %indvars.iv.next255, %for.body94 ]
  %27 = load i8**** %atomname, align 8, !tbaa !4
  %arrayidx96 = getelementptr inbounds i8*** %27, i64 %indvars.iv254
  %28 = load i8*** %arrayidx96, align 8, !tbaa !4
  %29 = add nsw i64 %indvars.iv254, %26
  %arrayidx100 = getelementptr inbounds i8*** %27, i64 %29
  store i8** %28, i8*** %arrayidx100, align 8, !tbaa !4
  %30 = load %struct.t_atom** %atom, align 8, !tbaa !4
  %resnr = getelementptr inbounds %struct.t_atom* %30, i64 %indvars.iv254, i32 7
  %31 = load i32* %resnr, align 4, !tbaa !3
  %add103 = add nsw i32 %31, %mul89
  %resnr108 = getelementptr inbounds %struct.t_atom* %30, i64 %29, i32 7
  store i32 %add103, i32* %resnr108, align 4, !tbaa !3
  %32 = load i32* %resnr, align 4, !tbaa !3
  %idxprom113 = sext i32 %32 to i64
  %33 = load i8**** %resname, align 8, !tbaa !4
  %arrayidx114 = getelementptr inbounds i8*** %33, i64 %idxprom113
  %34 = load i8*** %arrayidx114, align 8, !tbaa !4
  %idxprom120 = sext i32 %add103 to i64
  %arrayidx122 = getelementptr inbounds i8*** %33, i64 %idxprom120
  store i8** %34, i8*** %arrayidx122, align 8, !tbaa !4
  %indvars.iv.next255 = add i64 %indvars.iv254, 1
  %35 = load i32* %nr87.pre-phi, align 4, !tbaa !3
  %36 = trunc i64 %indvars.iv.next255 to i32
  %cmp92 = icmp slt i32 %36, %35
  br i1 %cmp92, label %for.body94, label %for.inc126

for.inc126:                                       ; preds = %for.body94, %for.body86
  %37 = phi i32 [ %24, %for.body86 ], [ %35, %for.body94 ]
  %inc127 = add nsw i32 %i.1233, 1
  %exitcond258 = icmp eq i32 %inc127, %mul3
  br i1 %exitcond258, label %for.end128, label %for.body86

for.end128:                                       ; preds = %for.cond83.preheader, %for.inc126
  %.lcssa = phi i32 [ %37, %for.inc126 ], [ %7, %for.cond83.preheader ]
  %mul130 = mul nsw i32 %.lcssa, %mul3
  store i32 %mul130, i32* %nr87.pre-phi, align 4, !tbaa !3
  %38 = load i32* %nres, align 4, !tbaa !3
  %mul132 = mul nsw i32 %38, %mul3
  store i32 %mul132, i32* %nres, align 4, !tbaa !3
  br label %for.cond137.preheader

for.cond137.preheader:                            ; preds = %for.inc152, %for.end128
  %indvars.iv250 = phi i64 [ 0, %for.end128 ], [ %indvars.iv.next251, %for.inc152 ]
  br label %for.body140

for.body140:                                      ; preds = %for.body140, %for.cond137.preheader
  %indvars.iv = phi i64 [ 0, %for.cond137.preheader ], [ %indvars.iv.next, %for.body140 ]
  %arrayidx142 = getelementptr inbounds i32* %n_box, i64 %indvars.iv
  %39 = load i32* %arrayidx142, align 4, !tbaa !3
  %conv143 = sitofp i32 %39 to float
  %arrayidx147 = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv, i64 %indvars.iv250
  %40 = load float* %arrayidx147, align 4, !tbaa !0
  %mul148 = fmul float %40, %conv143
  store float %mul148, float* %arrayidx147, align 4, !tbaa !0
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 3
  br i1 %exitcond, label %for.inc152, label %for.body140

for.inc152:                                       ; preds = %for.body140
  %indvars.iv.next251 = add i64 %indvars.iv250, 1
  %lftr.wideiv252 = trunc i64 %indvars.iv.next251 to i32
  %exitcond253 = icmp eq i32 %lftr.wideiv252, 3
  br i1 %exitcond253, label %for.end154, label %for.cond137.preheader

for.end154:                                       ; preds = %for.inc152
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @gen_box(i32 %NTB, i32 %natoms, [3 x float]* nocapture %x, [3 x float]* nocapture %box, float* nocapture %box_space, i32 %bCenter) #1 {
entry:
  %x231 = bitcast [3 x float]* %x to i8*
  %xmin = alloca [3 x float], align 4
  %xmin232 = bitcast [3 x float]* %xmin to i8*
  %xmax = alloca [3 x float], align 4
  %xmax230 = bitcast [3 x float]* %xmax to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %xmax230, i8* %x231, i64 12, i32 4, i1 false)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %xmin232, i8* %x231, i64 12, i32 4, i1 false)
  %cmp7199 = icmp sgt i32 %natoms, 1
  br i1 %cmp7199, label %for.cond9.preheader, label %for.body54

for.cond9.preheader:                              ; preds = %entry, %for.inc49
  %indvars.iv222 = phi i64 [ %indvars.iv.next223, %for.inc49 ], [ 1, %entry ]
  br label %for.body11

for.body11:                                       ; preds = %for.body11, %for.cond9.preheader
  %indvars.iv218 = phi i64 [ 0, %for.cond9.preheader ], [ %indvars.iv.next219, %for.body11 ]
  %arrayidx13 = getelementptr inbounds [3 x float]* %xmin, i64 0, i64 %indvars.iv218
  %0 = load float* %arrayidx13, align 4, !tbaa !0
  %arrayidx17 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv222, i64 %indvars.iv218
  %1 = load float* %arrayidx17, align 4, !tbaa !0
  %cmp18 = fcmp olt float %0, %1
  %. = select i1 %cmp18, float %0, float %1
  store float %., float* %arrayidx13, align 4, !tbaa !0
  %arrayidx28 = getelementptr inbounds [3 x float]* %xmax, i64 0, i64 %indvars.iv218
  %2 = load float* %arrayidx28, align 4, !tbaa !0
  %cmp33 = fcmp ogt float %2, %1
  %cond43 = select i1 %cmp33, float %2, float %1
  store float %cond43, float* %arrayidx28, align 4, !tbaa !0
  %indvars.iv.next219 = add i64 %indvars.iv218, 1
  %lftr.wideiv220 = trunc i64 %indvars.iv.next219 to i32
  %exitcond221 = icmp eq i32 %lftr.wideiv220, 3
  br i1 %exitcond221, label %for.inc49, label %for.body11

for.inc49:                                        ; preds = %for.body11
  %indvars.iv.next223 = add i64 %indvars.iv222, 1
  %lftr.wideiv224 = trunc i64 %indvars.iv.next223 to i32
  %exitcond225 = icmp eq i32 %lftr.wideiv224, %natoms
  br i1 %exitcond225, label %for.body54, label %for.cond9.preheader

for.body54:                                       ; preds = %entry, %for.inc49, %for.body54
  %indvars.iv214 = phi i64 [ %indvars.iv.next215, %for.body54 ], [ 0, %for.inc49 ], [ 0, %entry ]
  %arrayidx56 = getelementptr inbounds [3 x float]* %xmax, i64 0, i64 %indvars.iv214
  %3 = load float* %arrayidx56, align 4, !tbaa !0
  %arrayidx58 = getelementptr inbounds [3 x float]* %xmin, i64 0, i64 %indvars.iv214
  %4 = load float* %arrayidx58, align 4, !tbaa !0
  %sub = fsub float %3, %4
  %arrayidx60 = getelementptr inbounds float* %box_space, i64 %indvars.iv214
  %5 = load float* %arrayidx60, align 4, !tbaa !0
  %mul = fmul float %5, 2.000000e+00
  %add = fadd float %sub, %mul
  %arrayidx64 = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv214, i64 %indvars.iv214
  store float %add, float* %arrayidx64, align 4, !tbaa !0
  %indvars.iv.next215 = add i64 %indvars.iv214, 1
  %lftr.wideiv216 = trunc i64 %indvars.iv.next215 to i32
  %exitcond217 = icmp eq i32 %lftr.wideiv216, 3
  br i1 %exitcond217, label %for.end67, label %for.body54

for.end67:                                        ; preds = %for.body54
  %cmp68 = icmp eq i32 %NTB, 1
  br i1 %cmp68, label %if.then, label %if.end

if.then:                                          ; preds = %for.end67
  %arrayidx70 = getelementptr inbounds [3 x float]* %box, i64 0, i64 0
  %6 = load float* %arrayidx70, align 4, !tbaa !0
  br label %for.body73

for.body73:                                       ; preds = %for.body73.for.body73_crit_edge, %if.then
  %7 = phi float [ %6, %if.then ], [ %.pre, %for.body73.for.body73_crit_edge ]
  %indvars.iv210 = phi i64 [ 1, %if.then ], [ %phitmp, %for.body73.for.body73_crit_edge ]
  %max_box.0196 = phi float [ %6, %if.then ], [ %max_box.0., %for.body73.for.body73_crit_edge ]
  %cmp78 = fcmp ogt float %max_box.0196, %7
  %max_box.0. = select i1 %cmp78, float %max_box.0196, float %7
  %lftr.wideiv212 = trunc i64 %indvars.iv210 to i32
  %exitcond213 = icmp eq i32 %lftr.wideiv212, 3
  br i1 %exitcond213, label %for.body92, label %for.body73.for.body73_crit_edge

for.body73.for.body73_crit_edge:                  ; preds = %for.body73
  %arrayidx77.phi.trans.insert = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv210, i64 %indvars.iv210
  %.pre = load float* %arrayidx77.phi.trans.insert, align 4, !tbaa !0
  %phitmp = add i64 %indvars.iv210, 1
  br label %for.body73

for.body92:                                       ; preds = %for.body73, %for.body92
  %indvars.iv206 = phi i64 [ %indvars.iv.next207, %for.body92 ], [ 0, %for.body73 ]
  %arrayidx96 = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv206, i64 %indvars.iv206
  store float %max_box.0., float* %arrayidx96, align 4, !tbaa !0
  %indvars.iv.next207 = add i64 %indvars.iv206, 1
  %lftr.wideiv208 = trunc i64 %indvars.iv.next207 to i32
  %exitcond209 = icmp eq i32 %lftr.wideiv208, 3
  br i1 %exitcond209, label %if.end, label %for.body92

if.end:                                           ; preds = %for.body92, %for.end67
  %tobool = icmp ne i32 %bCenter, 0
  %cmp102192 = icmp sgt i32 %natoms, 0
  %or.cond = and i1 %tobool, %cmp102192
  br i1 %or.cond, label %for.cond104.preheader, label %if.end131

for.cond104.preheader:                            ; preds = %if.end, %for.inc128
  %indvars.iv202 = phi i64 [ %indvars.iv.next203, %for.inc128 ], [ 0, %if.end ]
  br label %for.body106

for.body106:                                      ; preds = %for.body106, %for.cond104.preheader
  %indvars.iv = phi i64 [ 0, %for.cond104.preheader ], [ %indvars.iv.next, %for.body106 ]
  %arrayidx110 = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv, i64 %indvars.iv
  %8 = load float* %arrayidx110, align 4, !tbaa !0
  %arrayidx112 = getelementptr inbounds [3 x float]* %xmin, i64 0, i64 %indvars.iv
  %9 = load float* %arrayidx112, align 4, !tbaa !0
  %sub113 = fsub float %8, %9
  %arrayidx115 = getelementptr inbounds [3 x float]* %xmax, i64 0, i64 %indvars.iv
  %10 = load float* %arrayidx115, align 4, !tbaa !0
  %sub116 = fsub float %sub113, %10
  %conv = fpext float %sub116 to double
  %mul117 = fmul double %conv, 5.000000e-01
  %arrayidx121 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv202, i64 %indvars.iv
  %11 = load float* %arrayidx121, align 4, !tbaa !0
  %conv122 = fpext float %11 to double
  %add123 = fadd double %conv122, %mul117
  %conv124 = fptrunc double %add123 to float
  store float %conv124, float* %arrayidx121, align 4, !tbaa !0
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 3
  br i1 %exitcond, label %for.inc128, label %for.body106

for.inc128:                                       ; preds = %for.body106
  %indvars.iv.next203 = add i64 %indvars.iv202, 1
  %lftr.wideiv204 = trunc i64 %indvars.iv.next203 to i32
  %exitcond205 = icmp eq i32 %lftr.wideiv204, %natoms
  br i1 %exitcond205, label %if.end131, label %for.cond104.preheader

if.end131:                                        ; preds = %if.end, %for.inc128
  ret void
}

; Function Attrs: optsize
declare void @pbc_dx(float*, float*, float*) #3

; Function Attrs: nounwind optsize
declare double @cos(double) #2

; Function Attrs: nounwind optsize
declare double @sin(double) #2

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #4

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #4

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #4

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture, i64, i32, i1) #4

attributes #0 = { nounwind optsize readonly uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { optsize }
attributes #6 = { nounwind optsize }

!0 = metadata !{metadata !"float", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"int", metadata !1}
!4 = metadata !{metadata !"any pointer", metadata !1}
