; ModuleID = '../../SPEC/benchspec/CPU2006/435.gromacs/src/tgroup.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.t_bin = type { i32, i32, double* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.t_mdatoms = type { float, i32, float*, float*, float*, float*, float*, float*, float*, i32*, i32*, i32*, i32*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16* }
%struct.t_grpopts = type { i32, i32, i32, i32, float*, float*, float*, [3 x float]*, [3 x i32]*, i32* }
%struct.t_groups = type { %struct.t_grp_ener, %struct.t_grp_tcstat*, %struct.t_grp_acc*, %struct.t_cos_acc }
%struct.t_grp_ener = type { i32, [7 x float*] }
%struct.t_grp_tcstat = type { float, float, [3 x [3 x float]], float, float }
%struct.t_grp_acc = type { i32, i32*, float, [3 x float], [3 x float], [3 x float] }
%struct.t_cos_acc = type { float, float, float }
%struct.t_energy = type { float, double, double, float }
%struct.t_commrec = type { i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [13 x i8] c"grps->tcstat\00", align 1
@.str1 = private unnamed_addr constant [54 x i8] c"../../SPEC/benchspec/CPU2006/435.gromacs/src/tgroup.c\00", align 1
@.str2 = private unnamed_addr constant [14 x i8] c"grps->grpstat\00", align 1
@.str3 = private unnamed_addr constant [8 x i8] c"%12.5e\0A\00", align 1
@accumulate_u.rb = internal unnamed_addr global %struct.t_bin* null, align 8
@stdlog = external global %struct._IO_FILE*
@.str4 = private unnamed_addr constant [13 x i8] c"estat->ee[i]\00", align 1
@.str5 = private unnamed_addr constant [13 x i8] c"gstat[i].aid\00", align 1

; Function Attrs: nounwind optsize uwtable
define void @init_groups(%struct._IO_FILE* nocapture %log, %struct.t_mdatoms* nocapture %md, %struct.t_grpopts* nocapture %opts, %struct.t_groups* nocapture %grps) #0 {
entry:
  %ngtc = getelementptr inbounds %struct.t_grpopts* %opts, i64 0, i32 0
  %0 = load i32* %ngtc, align 4, !tbaa !0
  %call = tail call i8* @save_calloc(i8* getelementptr inbounds ([13 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str1, i64 0, i64 0), i32 113, i32 %0, i32 52) #4
  %1 = bitcast i8* %call to %struct.t_grp_tcstat*
  %tcstat = getelementptr inbounds %struct.t_groups* %grps, i64 0, i32 1
  store %struct.t_grp_tcstat* %1, %struct.t_grp_tcstat** %tcstat, align 8, !tbaa !3
  %2 = load i32* %ngtc, align 4, !tbaa !0
  %cmp15.i = icmp sgt i32 %2, 0
  br i1 %cmp15.i, label %for.body.i, label %init_grptcstat.exit

for.body.i:                                       ; preds = %entry, %for.body.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %for.body.i ], [ 0, %entry ]
  %T.i = getelementptr inbounds %struct.t_grp_tcstat* %1, i64 %indvars.iv.i, i32 0
  store float 0.000000e+00, float* %T.i, align 4, !tbaa !4
  %lambda.i = getelementptr inbounds %struct.t_grp_tcstat* %1, i64 %indvars.iv.i, i32 1
  store float 1.000000e+00, float* %lambda.i, align 4, !tbaa !4
  %arraydecay.i = getelementptr inbounds %struct.t_grp_tcstat* %1, i64 %indvars.iv.i, i32 2, i64 0
  %indvars.iv.next.i = add i64 %indvars.iv.i, 1
  %3 = bitcast [3 x float]* %arraydecay.i to i8*
  tail call void @llvm.memset.p0i8.i64(i8* %3, i8 0, i64 40, i32 4, i1 false) #3
  %lftr.wideiv30 = trunc i64 %indvars.iv.next.i to i32
  %exitcond31 = icmp eq i32 %lftr.wideiv30, %2
  br i1 %exitcond31, label %init_grptcstat.exit, label %for.body.i

init_grptcstat.exit:                              ; preds = %for.body.i, %entry
  %ngacc = getelementptr inbounds %struct.t_grpopts* %opts, i64 0, i32 1
  %4 = load i32* %ngacc, align 4, !tbaa !0
  %call3 = tail call i8* @save_calloc(i8* getelementptr inbounds ([14 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str1, i64 0, i64 0), i32 116, i32 %4, i32 56) #4
  %5 = bitcast i8* %call3 to %struct.t_grp_acc*
  %grpstat = getelementptr inbounds %struct.t_groups* %grps, i64 0, i32 2
  store %struct.t_grp_acc* %5, %struct.t_grp_acc** %grpstat, align 8, !tbaa !3
  %6 = load i32* %ngacc, align 4, !tbaa !0
  %cmp.i = icmp sgt i32 %6, 0
  br i1 %cmp.i, label %for.cond.preheader.i, label %init_grpstat.exit

for.cond.preheader.i:                             ; preds = %init_grptcstat.exit
  %nr.i = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 1
  %7 = load i32* %nr.i, align 4, !tbaa !0
  %cmp15.i20 = icmp sgt i32 %7, 0
  br i1 %cmp15.i20, label %for.body.lr.ph.i, label %for.body12.i

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %cACC.i = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 16
  %8 = load i16** %cACC.i, align 8, !tbaa !3
  %massT.i = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 4
  %9 = load float** %massT.i, align 8, !tbaa !3
  br label %for.body.i22

for.body.i22:                                     ; preds = %for.body.i22, %for.body.lr.ph.i
  %indvars.iv9.i = phi i64 [ 0, %for.body.lr.ph.i ], [ %indvars.iv.next10.i, %for.body.i22 ]
  %arrayidx.i21 = getelementptr inbounds i16* %8, i64 %indvars.iv9.i
  %10 = load i16* %arrayidx.i21, align 2, !tbaa !5
  %idxprom2.i = zext i16 %10 to i64
  %nat.i = getelementptr inbounds %struct.t_grp_acc* %5, i64 %idxprom2.i, i32 0
  %11 = load i32* %nat.i, align 4, !tbaa !0
  %inc.i = add nsw i32 %11, 1
  store i32 %inc.i, i32* %nat.i, align 4, !tbaa !0
  %arrayidx5.i = getelementptr inbounds float* %9, i64 %indvars.iv9.i
  %12 = load float* %arrayidx5.i, align 4, !tbaa !4
  %M.i = getelementptr inbounds %struct.t_grp_acc* %5, i64 %idxprom2.i, i32 2
  %13 = load float* %M.i, align 4, !tbaa !4
  %add.i = fadd float %12, %13
  store float %add.i, float* %M.i, align 4, !tbaa !4
  %indvars.iv.next10.i = add i64 %indvars.iv9.i, 1
  %14 = load i32* %nr.i, align 4, !tbaa !0
  %15 = trunc i64 %indvars.iv.next10.i to i32
  %cmp1.i = icmp slt i32 %15, %14
  br i1 %cmp1.i, label %for.body.i22, label %for.body12.i

for.cond24.preheader.i:                           ; preds = %for.body12.i
  %.pre.i = load i32* %nr.i, align 4, !tbaa !0
  %cmp261.i = icmp sgt i32 %.pre.i, 0
  br i1 %cmp261.i, label %for.body28.lr.ph.i, label %init_grpstat.exit

for.body28.lr.ph.i:                               ; preds = %for.cond24.preheader.i
  %cACC30.i = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 16
  %16 = load i16** %cACC30.i, align 8, !tbaa !3
  br label %for.body28.i

for.body12.i:                                     ; preds = %for.cond.preheader.i, %for.body.i22, %for.body12.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.body12.i ], [ 0, %for.body.i22 ], [ 0, %for.cond.preheader.i ]
  %nat15.i = getelementptr inbounds %struct.t_grp_acc* %5, i64 %indvars.iv7.i, i32 0
  %17 = load i32* %nat15.i, align 4, !tbaa !0
  %call.i23 = tail call i8* @save_calloc(i8* getelementptr inbounds ([13 x i8]* @.str5, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str1, i64 0, i64 0), i32 78, i32 %17, i32 4) #4
  %18 = bitcast i8* %call.i23 to i32*
  %aid.i = getelementptr inbounds %struct.t_grp_acc* %5, i64 %indvars.iv7.i, i32 1
  store i32* %18, i32** %aid.i, align 8, !tbaa !3
  store i32 0, i32* %nat15.i, align 4, !tbaa !0
  %indvars.iv.next8.i = add i64 %indvars.iv7.i, 1
  %lftr.wideiv28 = trunc i64 %indvars.iv.next8.i to i32
  %exitcond29 = icmp eq i32 %lftr.wideiv28, %6
  br i1 %exitcond29, label %for.cond24.preheader.i, label %for.body12.i

for.body28.i:                                     ; preds = %for.body28.i, %for.body28.lr.ph.i
  %indvars.iv.i26 = phi i64 [ 0, %for.body28.lr.ph.i ], [ %indvars.iv.next.i27, %for.body28.i ]
  %arrayidx31.i = getelementptr inbounds i16* %16, i64 %indvars.iv.i26
  %19 = load i16* %arrayidx31.i, align 2, !tbaa !5
  %idxprom33.i = zext i16 %19 to i64
  %nat35.i = getelementptr inbounds %struct.t_grp_acc* %5, i64 %idxprom33.i, i32 0
  %20 = load i32* %nat35.i, align 4, !tbaa !0
  %inc36.i = add nsw i32 %20, 1
  store i32 %inc36.i, i32* %nat35.i, align 4, !tbaa !0
  %idxprom37.i = sext i32 %20 to i64
  %aid40.i = getelementptr inbounds %struct.t_grp_acc* %5, i64 %idxprom33.i, i32 1
  %21 = load i32** %aid40.i, align 8, !tbaa !3
  %arrayidx41.i = getelementptr inbounds i32* %21, i64 %idxprom37.i
  %22 = trunc i64 %indvars.iv.i26 to i32
  store i32 %22, i32* %arrayidx41.i, align 4, !tbaa !0
  %indvars.iv.next.i27 = add i64 %indvars.iv.i26, 1
  %23 = load i32* %nr.i, align 4, !tbaa !0
  %24 = trunc i64 %indvars.iv.next.i27 to i32
  %cmp26.i = icmp slt i32 %24, %23
  br i1 %cmp26.i, label %for.body28.i, label %init_grpstat.exit

init_grpstat.exit:                                ; preds = %for.body28.i, %init_grptcstat.exit, %for.cond24.preheader.i
  %ngener = getelementptr inbounds %struct.t_grpopts* %opts, i64 0, i32 3
  %25 = load i32* %ngener, align 4, !tbaa !0
  %mul.i = mul nsw i32 %25, %25
  %nn.i = getelementptr inbounds %struct.t_groups* %grps, i64 0, i32 0, i32 0
  store i32 %mul.i, i32* %nn.i, align 4, !tbaa !0
  br label %for.body.i19

for.body.i19:                                     ; preds = %for.body.i19, %init_grpstat.exit
  %indvars.iv.i15 = phi i64 [ 0, %init_grpstat.exit ], [ %indvars.iv.next.i16, %for.body.i19 ]
  %call.i = tail call i8* @save_calloc(i8* getelementptr inbounds ([13 x i8]* @.str4, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str1, i64 0, i64 0), i32 102, i32 %mul.i, i32 4) #4
  %26 = bitcast i8* %call.i to float*
  %arrayidx.i = getelementptr inbounds %struct.t_groups* %grps, i64 0, i32 0, i32 1, i64 %indvars.iv.i15
  store float* %26, float** %arrayidx.i, align 8, !tbaa !3
  %indvars.iv.next.i16 = add i64 %indvars.iv.i15, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next.i16 to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 7
  br i1 %exitcond, label %init_grpener.exit, label %for.body.i19

init_grpener.exit:                                ; preds = %for.body.i19
  ret void
}

; Function Attrs: optsize
declare i8* @save_calloc(i8*, i8*, i32, i32, i32) #1

; Function Attrs: nounwind optsize uwtable
define void @dump_estat(%struct._IO_FILE* %log, %struct.t_grp_ener* nocapture %estat) #0 {
entry:
  %tobool = icmp eq %struct._IO_FILE* %log, null
  br i1 %tobool, label %if.end, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %nn = getelementptr inbounds %struct.t_grp_ener* %estat, i64 0, i32 0
  %0 = load i32* %nn, align 4, !tbaa !0
  %cmp6 = icmp sgt i32 %0, 0
  br i1 %cmp6, label %for.body.lr.ph, label %if.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %arrayidx = getelementptr inbounds %struct.t_grp_ener* %estat, i64 0, i32 1, i64 1
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.body ]
  %1 = load float** %arrayidx, align 8, !tbaa !3
  %arrayidx1 = getelementptr inbounds float* %1, i64 %indvars.iv
  %2 = load float* %arrayidx1, align 4, !tbaa !4
  %conv = fpext float %2 to double
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %log, i8* getelementptr inbounds ([8 x i8]* @.str3, i64 0, i64 0), double %conv) #4
  %indvars.iv.next = add i64 %indvars.iv, 1
  %3 = load i32* %nn, align 4, !tbaa !0
  %4 = trunc i64 %indvars.iv.next to i32
  %cmp = icmp slt i32 %4, %3
  br i1 %cmp, label %for.body, label %if.end

if.end:                                           ; preds = %for.cond.preheader, %for.body, %entry
  ret void
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #2

; Function Attrs: nounwind optsize uwtable
define float @rms_ener(%struct.t_energy* nocapture %e, i32 %nsteps) #0 {
entry:
  %e2sum = getelementptr inbounds %struct.t_energy* %e, i64 0, i32 3
  %0 = load float* %e2sum, align 4, !tbaa !4
  %conv = sitofp i32 %nsteps to float
  %mul = fmul float %conv, %0
  %conv1 = fpext float %mul to double
  %esum = getelementptr inbounds %struct.t_energy* %e, i64 0, i32 2
  %1 = load double* %esum, align 8, !tbaa !6
  %mul3 = fmul double %1, %1
  %sub = fsub double %conv1, %mul3
  %conv4 = fptrunc double %sub to float
  %cmp = fcmp ugt float %conv4, 0.000000e+00
  br i1 %cmp, label %if.else, label %return

if.else:                                          ; preds = %entry
  %conv6 = fpext float %conv4 to double
  %call = tail call double @sqrt(double %conv6) #4
  %conv7 = sitofp i32 %nsteps to double
  %div = fdiv double %call, %conv7
  %conv8 = fptrunc double %div to float
  br label %return

return:                                           ; preds = %entry, %if.else
  %retval.0 = phi float [ %conv8, %if.else ], [ 0.000000e+00, %entry ]
  ret float %retval.0
}

; Function Attrs: nounwind optsize
declare double @sqrt(double) #2

; Function Attrs: nounwind optsize uwtable
define void @accumulate_u(%struct.t_commrec* %cr, %struct.t_grpopts* nocapture %opts, %struct.t_groups* nocapture %grps) #0 {
entry:
  %0 = load %struct.t_bin** @accumulate_u.rb, align 8, !tbaa !3
  %cmp = icmp eq %struct.t_bin* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call = tail call %struct.t_bin* @mk_bin() #4
  store %struct.t_bin* %call, %struct.t_bin** @accumulate_u.rb, align 8, !tbaa !3
  br label %for.cond.preheader

if.else:                                          ; preds = %entry
  tail call void @reset_bin(%struct.t_bin* %0) #4
  br label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.else, %if.then
  %ngacc = getelementptr inbounds %struct.t_grpopts* %opts, i64 0, i32 1
  %1 = load i32* %ngacc, align 4, !tbaa !0
  %cmp125 = icmp sgt i32 %1, 0
  br i1 %cmp125, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %grpstat = getelementptr inbounds %struct.t_groups* %grps, i64 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.body, %for.body.lr.ph
  %indvars.iv27 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next28, %for.body ]
  %2 = load %struct._IO_FILE** @stdlog, align 8, !tbaa !3
  %3 = load %struct.t_bin** @accumulate_u.rb, align 8, !tbaa !3
  %4 = load %struct.t_grp_acc** %grpstat, align 8, !tbaa !3
  %arraydecay = getelementptr inbounds %struct.t_grp_acc* %4, i64 %indvars.iv27, i32 3, i64 0
  %call2 = tail call i32 @add_binr(%struct._IO_FILE* %2, %struct.t_bin* %3, i32 3, float* %arraydecay) #4
  %indvars.iv.next28 = add i64 %indvars.iv27, 1
  %5 = load i32* %ngacc, align 4, !tbaa !0
  %6 = trunc i64 %indvars.iv.next28 to i32
  %cmp1 = icmp slt i32 %6, %5
  br i1 %cmp1, label %for.body, label %for.end

for.end:                                          ; preds = %for.body, %for.cond.preheader
  %7 = load %struct.t_bin** @accumulate_u.rb, align 8, !tbaa !3
  tail call void @sum_bin(%struct.t_bin* %7, %struct.t_commrec* %cr) #4
  %8 = load i32* %ngacc, align 4, !tbaa !0
  %cmp523 = icmp sgt i32 %8, 0
  br i1 %cmp523, label %for.body6.lr.ph, label %for.end14

for.body6.lr.ph:                                  ; preds = %for.end
  %grpstat8 = getelementptr inbounds %struct.t_groups* %grps, i64 0, i32 2
  br label %for.body6

for.body6:                                        ; preds = %for.body6.lr.ph, %for.body6
  %indvars.iv = phi i64 [ 0, %for.body6.lr.ph ], [ %indvars.iv.next, %for.body6 ]
  %9 = load %struct.t_bin** @accumulate_u.rb, align 8, !tbaa !3
  %10 = trunc i64 %indvars.iv to i32
  %mul = mul nsw i32 %10, 3
  %11 = load %struct.t_grp_acc** %grpstat8, align 8, !tbaa !3
  %arraydecay11 = getelementptr inbounds %struct.t_grp_acc* %11, i64 %indvars.iv, i32 3, i64 0
  tail call void @extract_binr(%struct.t_bin* %9, i32 %mul, i32 3, float* %arraydecay11) #4
  %indvars.iv.next = add i64 %indvars.iv, 1
  %12 = load i32* %ngacc, align 4, !tbaa !0
  %13 = trunc i64 %indvars.iv.next to i32
  %cmp5 = icmp slt i32 %13, %12
  br i1 %cmp5, label %for.body6, label %for.end14

for.end14:                                        ; preds = %for.body6, %for.end
  ret void
}

; Function Attrs: optsize
declare %struct.t_bin* @mk_bin() #1

; Function Attrs: optsize
declare void @reset_bin(%struct.t_bin*) #1

; Function Attrs: optsize
declare i32 @add_binr(%struct._IO_FILE*, %struct.t_bin*, i32, float*) #1

; Function Attrs: optsize
declare void @sum_bin(%struct.t_bin*, %struct.t_commrec*) #1

; Function Attrs: optsize
declare void @extract_binr(%struct.t_bin*, i32, i32, float*) #1

; Function Attrs: nounwind optsize uwtable
define void @update_grps(i32 %start, i32 %homenr, %struct.t_groups* nocapture %grps, %struct.t_grpopts* nocapture %opts, [3 x float]* nocapture %v, %struct.t_mdatoms* nocapture %md, i32 %bNEMD) #0 {
entry:
  %ngtc = getelementptr inbounds %struct.t_grpopts* %opts, i64 0, i32 0
  %0 = load i32* %ngtc, align 4, !tbaa !0
  %cmp95 = icmp sgt i32 %0, 0
  br i1 %cmp95, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %tcstat = getelementptr inbounds %struct.t_groups* %grps, i64 0, i32 1
  %1 = load %struct.t_grp_tcstat** %tcstat, align 8, !tbaa !3
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %indvars.iv107 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next108, %for.body ]
  %T = getelementptr inbounds %struct.t_grp_tcstat* %1, i64 %indvars.iv107, i32 0
  store float 0.000000e+00, float* %T, align 4, !tbaa !4
  %indvars.iv.next108 = add i64 %indvars.iv107, 1
  %2 = trunc i64 %indvars.iv.next108 to i32
  %cmp = icmp slt i32 %2, %0
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %for.body, %entry
  %tobool = icmp eq i32 %bNEMD, 0
  br i1 %tobool, label %if.end, label %for.cond1.preheader

for.cond1.preheader:                              ; preds = %for.end
  %ngacc = getelementptr inbounds %struct.t_grpopts* %opts, i64 0, i32 1
  %3 = load i32* %ngacc, align 4, !tbaa !0
  %cmp293 = icmp sgt i32 %3, 0
  br i1 %cmp293, label %for.body3.lr.ph, label %for.cond9.preheader

for.body3.lr.ph:                                  ; preds = %for.cond1.preheader
  %grpstat = getelementptr inbounds %struct.t_groups* %grps, i64 0, i32 2
  %4 = load %struct.t_grp_acc** %grpstat, align 8, !tbaa !3
  br label %for.body3

for.cond9.preheader:                              ; preds = %for.body3, %for.cond1.preheader
  %add = add nsw i32 %homenr, %start
  %cmp1091 = icmp sgt i32 %homenr, 0
  br i1 %cmp1091, label %for.body11.lr.ph, label %for.cond37.preheader

for.body11.lr.ph:                                 ; preds = %for.cond9.preheader
  %cACC = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 16
  %5 = load i16** %cACC, align 8, !tbaa !3
  %massT = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 4
  %6 = load float** %massT, align 8, !tbaa !3
  %grpstat26 = getelementptr inbounds %struct.t_groups* %grps, i64 0, i32 2
  %7 = load %struct.t_grp_acc** %grpstat26, align 8, !tbaa !3
  %8 = sext i32 %start to i64
  br label %for.body11

for.body3:                                        ; preds = %for.body3.lr.ph, %for.body3
  %indvars.iv105 = phi i64 [ 0, %for.body3.lr.ph ], [ %indvars.iv.next106, %for.body3 ]
  %arraydecay = getelementptr inbounds %struct.t_grp_acc* %4, i64 %indvars.iv105, i32 3, i64 0
  store float 0.000000e+00, float* %arraydecay, align 4, !tbaa !4
  %arrayidx1.i = getelementptr inbounds %struct.t_grp_acc* %4, i64 %indvars.iv105, i32 3, i64 1
  store float 0.000000e+00, float* %arrayidx1.i, align 4, !tbaa !4
  %arrayidx2.i = getelementptr inbounds %struct.t_grp_acc* %4, i64 %indvars.iv105, i32 3, i64 2
  store float 0.000000e+00, float* %arrayidx2.i, align 4, !tbaa !4
  %indvars.iv.next106 = add i64 %indvars.iv105, 1
  %9 = trunc i64 %indvars.iv.next106 to i32
  %cmp2 = icmp slt i32 %9, %3
  br i1 %cmp2, label %for.body3, label %for.cond9.preheader

for.cond37.preheader:                             ; preds = %for.inc34, %for.cond9.preheader
  br i1 %cmp293, label %for.cond42.preheader.lr.ph, label %if.end

for.cond42.preheader.lr.ph:                       ; preds = %for.cond37.preheader
  %grpstat47 = getelementptr inbounds %struct.t_groups* %grps, i64 0, i32 2
  %10 = load %struct.t_grp_acc** %grpstat47, align 8, !tbaa !3
  br label %for.cond42.preheader

for.body11:                                       ; preds = %for.body11.lr.ph, %for.inc34
  %indvars.iv103 = phi i64 [ %8, %for.body11.lr.ph ], [ %indvars.iv.next104, %for.inc34 ]
  %arrayidx13 = getelementptr inbounds i16* %5, i64 %indvars.iv103
  %11 = load i16* %arrayidx13, align 2, !tbaa !5
  %arrayidx19 = getelementptr inbounds float* %6, i64 %indvars.iv103
  %idxprom25 = zext i16 %11 to i64
  br label %for.body17

for.body17:                                       ; preds = %for.body17, %for.body11
  %indvars.iv99 = phi i64 [ 0, %for.body11 ], [ %indvars.iv.next100, %for.body17 ]
  %12 = load float* %arrayidx19, align 4, !tbaa !4
  %arrayidx23 = getelementptr inbounds [3 x float]* %v, i64 %indvars.iv103, i64 %indvars.iv99
  %13 = load float* %arrayidx23, align 4, !tbaa !4
  %mul = fmul float %12, %13
  %arrayidx29 = getelementptr inbounds %struct.t_grp_acc* %7, i64 %idxprom25, i32 3, i64 %indvars.iv99
  %14 = load float* %arrayidx29, align 4, !tbaa !4
  %add30 = fadd float %mul, %14
  store float %add30, float* %arrayidx29, align 4, !tbaa !4
  %indvars.iv.next100 = add i64 %indvars.iv99, 1
  %lftr.wideiv101 = trunc i64 %indvars.iv.next100 to i32
  %exitcond102 = icmp eq i32 %lftr.wideiv101, 3
  br i1 %exitcond102, label %for.inc34, label %for.body17

for.inc34:                                        ; preds = %for.body17
  %indvars.iv.next104 = add i64 %indvars.iv103, 1
  %15 = trunc i64 %indvars.iv.next104 to i32
  %cmp10 = icmp slt i32 %15, %add
  br i1 %cmp10, label %for.body11, label %for.cond37.preheader

for.cond42.preheader:                             ; preds = %for.cond42.preheader.lr.ph, %for.inc58
  %indvars.iv97 = phi i64 [ 0, %for.cond42.preheader.lr.ph ], [ %indvars.iv.next98, %for.inc58 ]
  %M = getelementptr inbounds %struct.t_grp_acc* %10, i64 %indvars.iv97, i32 2
  br label %for.body45

for.body45:                                       ; preds = %for.body45, %for.cond42.preheader
  %indvars.iv = phi i64 [ 0, %for.cond42.preheader ], [ %indvars.iv.next, %for.body45 ]
  %16 = load float* %M, align 4, !tbaa !4
  %arrayidx54 = getelementptr inbounds %struct.t_grp_acc* %10, i64 %indvars.iv97, i32 3, i64 %indvars.iv
  %17 = load float* %arrayidx54, align 4, !tbaa !4
  %div = fdiv float %17, %16
  store float %div, float* %arrayidx54, align 4, !tbaa !4
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 3
  br i1 %exitcond, label %for.inc58, label %for.body45

for.inc58:                                        ; preds = %for.body45
  %indvars.iv.next98 = add i64 %indvars.iv97, 1
  %18 = trunc i64 %indvars.iv.next98 to i32
  %cmp39 = icmp slt i32 %18, %3
  br i1 %cmp39, label %for.cond42.preheader, label %if.end

if.end:                                           ; preds = %for.cond37.preheader, %for.inc58, %for.end
  ret void
}

; Function Attrs: nounwind optsize uwtable
define float @sum_ekin(%struct.t_grpopts* nocapture %opts, %struct.t_groups* nocapture %grps, [3 x float]* nocapture %ekin, i32 %bTYZ) #0 {
entry:
  %tfac = alloca [3 x float], align 4
  %ngtc1 = getelementptr inbounds %struct.t_grpopts* %opts, i64 0, i32 0
  %0 = load i32* %ngtc1, align 4, !tbaa !0
  %tcstat2 = getelementptr inbounds %struct.t_groups* %grps, i64 0, i32 1
  %1 = load %struct.t_grp_tcstat** %tcstat2, align 8, !tbaa !3
  %nrdf3 = getelementptr inbounds %struct.t_grpopts* %opts, i64 0, i32 4
  %2 = load float** %nrdf3, align 8, !tbaa !3
  %3 = bitcast [3 x float]* %ekin to i8*
  call void @llvm.memset.p0i8.i64(i8* %3, i8 0, i64 36, i32 4, i1 false) #3
  %tobool = icmp eq i32 %bTYZ, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %arrayidx = getelementptr inbounds [3 x float]* %tfac, i64 0, i64 0
  store float 0.000000e+00, float* %arrayidx, align 4, !tbaa !4
  %arrayidx4 = getelementptr inbounds [3 x float]* %tfac, i64 0, i64 2
  store float 1.000000e+00, float* %arrayidx4, align 4, !tbaa !4
  %arrayidx5 = getelementptr inbounds [3 x float]* %tfac, i64 0, i64 1
  store float 1.000000e+00, float* %arrayidx5, align 4, !tbaa !4
  br label %if.end

if.else:                                          ; preds = %entry
  %arrayidx6 = getelementptr inbounds [3 x float]* %tfac, i64 0, i64 2
  store float 1.000000e+00, float* %arrayidx6, align 4, !tbaa !4
  %arrayidx7 = getelementptr inbounds [3 x float]* %tfac, i64 0, i64 1
  store float 1.000000e+00, float* %arrayidx7, align 4, !tbaa !4
  %arrayidx8 = getelementptr inbounds [3 x float]* %tfac, i64 0, i64 0
  store float 1.000000e+00, float* %arrayidx8, align 4, !tbaa !4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %ndfac.0 = phi float [ 0x3FE5555560000000, %if.then ], [ 1.000000e+00, %if.else ]
  %cmp74 = icmp sgt i32 %0, 0
  br i1 %cmp74, label %for.body.lr.ph, label %if.end47

for.body.lr.ph:                                   ; preds = %if.end
  %arrayidx3.i = getelementptr inbounds [3 x float]* %ekin, i64 0, i64 0
  %arrayidx9.i = getelementptr inbounds [3 x float]* %ekin, i64 0, i64 1
  %arrayidx16.i = getelementptr inbounds [3 x float]* %ekin, i64 0, i64 2
  %arrayidx23.i = getelementptr inbounds [3 x float]* %ekin, i64 1, i64 0
  %arrayidx30.i = getelementptr inbounds [3 x float]* %ekin, i64 1, i64 1
  %arrayidx37.i = getelementptr inbounds [3 x float]* %ekin, i64 1, i64 2
  %arrayidx44.i = getelementptr inbounds [3 x float]* %ekin, i64 2, i64 0
  %arrayidx51.i = getelementptr inbounds [3 x float]* %ekin, i64 2, i64 1
  %arrayidx58.i = getelementptr inbounds [3 x float]* %ekin, i64 2, i64 2
  br label %for.body

for.body:                                         ; preds = %if.end35, %for.body.lr.ph
  %indvars.iv79 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next80, %if.end35 ]
  %nrdf.076 = phi float [ 0.000000e+00, %for.body.lr.ph ], [ %add41, %if.end35 ]
  %T.075 = phi float [ 0.000000e+00, %for.body.lr.ph ], [ %add40, %if.end35 ]
  %arrayidx9 = getelementptr inbounds float* %2, i64 %indvars.iv79
  %4 = load float* %arrayidx9, align 4, !tbaa !4
  %mul = fmul float %ndfac.0, %4
  %cmp10 = fcmp ogt float %mul, 0.000000e+00
  %arrayidx13 = getelementptr inbounds %struct.t_grp_tcstat* %1, i64 %indvars.iv79
  br i1 %cmp10, label %if.then11, label %if.else31

if.then11:                                        ; preds = %for.body
  %arrayidx1.i = getelementptr inbounds %struct.t_grp_tcstat* %1, i64 %indvars.iv79, i32 2, i64 0, i64 0
  %5 = load float* %arrayidx1.i, align 4, !tbaa !4
  %6 = load float* %arrayidx3.i, align 4, !tbaa !4
  %add.i = fadd float %5, %6
  store float %add.i, float* %arrayidx3.i, align 4, !tbaa !4
  %arrayidx7.i = getelementptr inbounds %struct.t_grp_tcstat* %1, i64 %indvars.iv79, i32 2, i64 0, i64 1
  %7 = load float* %arrayidx7.i, align 4, !tbaa !4
  %8 = load float* %arrayidx9.i, align 4, !tbaa !4
  %add10.i = fadd float %7, %8
  store float %add10.i, float* %arrayidx9.i, align 4, !tbaa !4
  %arrayidx14.i = getelementptr inbounds %struct.t_grp_tcstat* %1, i64 %indvars.iv79, i32 2, i64 0, i64 2
  %9 = load float* %arrayidx14.i, align 4, !tbaa !4
  %10 = load float* %arrayidx16.i, align 4, !tbaa !4
  %add17.i = fadd float %9, %10
  store float %add17.i, float* %arrayidx16.i, align 4, !tbaa !4
  %arrayidx21.i = getelementptr inbounds %struct.t_grp_tcstat* %1, i64 %indvars.iv79, i32 2, i64 1, i64 0
  %11 = load float* %arrayidx21.i, align 4, !tbaa !4
  %12 = load float* %arrayidx23.i, align 4, !tbaa !4
  %add24.i = fadd float %11, %12
  store float %add24.i, float* %arrayidx23.i, align 4, !tbaa !4
  %arrayidx28.i = getelementptr inbounds %struct.t_grp_tcstat* %1, i64 %indvars.iv79, i32 2, i64 1, i64 1
  %13 = load float* %arrayidx28.i, align 4, !tbaa !4
  %14 = load float* %arrayidx30.i, align 4, !tbaa !4
  %add31.i = fadd float %13, %14
  store float %add31.i, float* %arrayidx30.i, align 4, !tbaa !4
  %arrayidx35.i = getelementptr inbounds %struct.t_grp_tcstat* %1, i64 %indvars.iv79, i32 2, i64 1, i64 2
  %15 = load float* %arrayidx35.i, align 4, !tbaa !4
  %16 = load float* %arrayidx37.i, align 4, !tbaa !4
  %add38.i = fadd float %15, %16
  store float %add38.i, float* %arrayidx37.i, align 4, !tbaa !4
  %arrayidx42.i = getelementptr inbounds %struct.t_grp_tcstat* %1, i64 %indvars.iv79, i32 2, i64 2, i64 0
  %17 = load float* %arrayidx42.i, align 4, !tbaa !4
  %18 = load float* %arrayidx44.i, align 4, !tbaa !4
  %add45.i = fadd float %17, %18
  store float %add45.i, float* %arrayidx44.i, align 4, !tbaa !4
  %arrayidx49.i = getelementptr inbounds %struct.t_grp_tcstat* %1, i64 %indvars.iv79, i32 2, i64 2, i64 1
  %19 = load float* %arrayidx49.i, align 4, !tbaa !4
  %20 = load float* %arrayidx51.i, align 4, !tbaa !4
  %add52.i = fadd float %19, %20
  store float %add52.i, float* %arrayidx51.i, align 4, !tbaa !4
  %arrayidx56.i = getelementptr inbounds %struct.t_grp_tcstat* %1, i64 %indvars.iv79, i32 2, i64 2, i64 2
  %21 = load float* %arrayidx56.i, align 4, !tbaa !4
  %22 = load float* %arrayidx58.i, align 4, !tbaa !4
  %add59.i = fadd float %21, %22
  store float %add59.i, float* %arrayidx58.i, align 4, !tbaa !4
  br label %for.body17

for.body17:                                       ; preds = %for.body17, %if.then11
  %indvars.iv = phi i64 [ 0, %if.then11 ], [ %indvars.iv.next, %for.body17 ]
  %ek.072 = phi float [ 0.000000e+00, %if.then11 ], [ %add, %for.body17 ]
  %arrayidx19 = getelementptr inbounds [3 x float]* %tfac, i64 0, i64 %indvars.iv
  %23 = load float* %arrayidx19, align 4, !tbaa !4
  %arrayidx26 = getelementptr inbounds %struct.t_grp_tcstat* %1, i64 %indvars.iv79, i32 2, i64 %indvars.iv, i64 %indvars.iv
  %24 = load float* %arrayidx26, align 4, !tbaa !4
  %mul27 = fmul float %23, %24
  %add = fadd float %ek.072, %mul27
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 3
  br i1 %exitcond, label %for.end, label %for.body17

for.end:                                          ; preds = %for.body17
  %call = call float @calc_temp(float %add, float %mul) #4
  %T30 = getelementptr inbounds %struct.t_grp_tcstat* %arrayidx13, i64 0, i32 0
  store float %call, float* %T30, align 4, !tbaa !4
  br label %if.end35

if.else31:                                        ; preds = %for.body
  %T34 = getelementptr inbounds %struct.t_grp_tcstat* %arrayidx13, i64 0, i32 0
  store float 0.000000e+00, float* %T34, align 4, !tbaa !4
  br label %if.end35

if.end35:                                         ; preds = %if.else31, %for.end
  %25 = phi float [ 0.000000e+00, %if.else31 ], [ %call, %for.end ]
  %mul39 = fmul float %mul, %25
  %add40 = fadd float %T.075, %mul39
  %add41 = fadd float %nrdf.076, %mul
  %indvars.iv.next80 = add i64 %indvars.iv79, 1
  %lftr.wideiv81 = trunc i64 %indvars.iv.next80 to i32
  %exitcond82 = icmp eq i32 %lftr.wideiv81, %0
  br i1 %exitcond82, label %for.end44, label %for.body

for.end44:                                        ; preds = %if.end35
  %cmp45 = fcmp ogt float %add41, 0.000000e+00
  br i1 %cmp45, label %if.then46, label %if.end47

if.then46:                                        ; preds = %for.end44
  %div = fdiv float %add40, %add41
  br label %if.end47

if.end47:                                         ; preds = %if.end, %if.then46, %for.end44
  %T.1 = phi float [ %div, %if.then46 ], [ %add40, %for.end44 ], [ 0.000000e+00, %if.end ]
  ret float %T.1
}

; Function Attrs: optsize
declare float @calc_temp(float, float) #1

; Function Attrs: nounwind optsize uwtable
define void @sum_epot(%struct.t_grpopts* nocapture %opts, %struct.t_groups* nocapture %grps, float* nocapture %epot) #0 {
entry:
  %nn = getelementptr inbounds %struct.t_groups* %grps, i64 0, i32 0, i32 0
  %0 = load i32* %nn, align 4, !tbaa !0
  %arrayidx = getelementptr inbounds %struct.t_groups* %grps, i64 0, i32 0, i32 1, i64 0
  %1 = load float** %arrayidx, align 8, !tbaa !3
  %cmp3.i = icmp sgt i32 %0, 0
  br i1 %cmp3.i, label %for.body.i, label %sum_v.exit.thread

sum_v.exit.thread:                                ; preds = %entry
  %arrayidx2159 = getelementptr inbounds float* %epot, i64 17
  store float 0.000000e+00, float* %arrayidx2159, align 4, !tbaa !4
  br label %sum_v.exit144.thread

for.body.i:                                       ; preds = %entry, %for.body.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %for.body.i ], [ 0, %entry ]
  %t.04.i = phi float [ %add.i, %for.body.i ], [ 0.000000e+00, %entry ]
  %arrayidx.i = getelementptr inbounds float* %1, i64 %indvars.iv.i
  %2 = load float* %arrayidx.i, align 4, !tbaa !4
  %add.i = fadd float %t.04.i, %2
  %indvars.iv.next.i = add i64 %indvars.iv.i, 1
  %lftr.wideiv157 = trunc i64 %indvars.iv.next.i to i32
  %exitcond158 = icmp eq i32 %lftr.wideiv157, %0
  br i1 %exitcond158, label %sum_v.exit, label %for.body.i

sum_v.exit:                                       ; preds = %for.body.i
  %arrayidx2 = getelementptr inbounds float* %epot, i64 17
  store float %add.i, float* %arrayidx2, align 4, !tbaa !4
  %arrayidx7 = getelementptr inbounds %struct.t_groups* %grps, i64 0, i32 0, i32 1, i64 1
  %3 = load float** %arrayidx7, align 8, !tbaa !3
  br i1 %cmp3.i, label %for.body.i142, label %sum_v.exit144.thread

for.body.i142:                                    ; preds = %sum_v.exit, %for.body.i142
  %indvars.iv.i135 = phi i64 [ %indvars.iv.next.i139, %for.body.i142 ], [ 0, %sum_v.exit ]
  %t.04.i136 = phi float [ %add.i138, %for.body.i142 ], [ 0.000000e+00, %sum_v.exit ]
  %arrayidx.i137 = getelementptr inbounds float* %3, i64 %indvars.iv.i135
  %4 = load float* %arrayidx.i137, align 4, !tbaa !4
  %add.i138 = fadd float %t.04.i136, %4
  %indvars.iv.next.i139 = add i64 %indvars.iv.i135, 1
  %lftr.wideiv155 = trunc i64 %indvars.iv.next.i139 to i32
  %exitcond156 = icmp eq i32 %lftr.wideiv155, %0
  br i1 %exitcond156, label %sum_v.exit144, label %for.body.i142

sum_v.exit144.thread:                             ; preds = %sum_v.exit.thread, %sum_v.exit
  %arrayidx9161 = getelementptr inbounds float* %epot, i64 13
  store float 0.000000e+00, float* %arrayidx9161, align 4, !tbaa !4
  br label %sum_v.exit133

sum_v.exit144:                                    ; preds = %for.body.i142
  %arrayidx9 = getelementptr inbounds float* %epot, i64 13
  store float %add.i138, float* %arrayidx9, align 4, !tbaa !4
  %arrayidx14 = getelementptr inbounds %struct.t_groups* %grps, i64 0, i32 0, i32 1, i64 6
  %5 = load float** %arrayidx14, align 8, !tbaa !3
  br i1 %cmp3.i, label %for.body.i131, label %sum_v.exit133.thread

sum_v.exit133.thread:                             ; preds = %sum_v.exit144
  %arrayidx16163 = getelementptr inbounds float* %epot, i64 11
  store float 0.000000e+00, float* %arrayidx16163, align 4, !tbaa !4
  br label %sum_v.exit122.thread

for.body.i131:                                    ; preds = %sum_v.exit144, %for.body.i131
  %indvars.iv.i124 = phi i64 [ %indvars.iv.next.i128, %for.body.i131 ], [ 0, %sum_v.exit144 ]
  %t.04.i125 = phi float [ %add.i127, %for.body.i131 ], [ 0.000000e+00, %sum_v.exit144 ]
  %arrayidx.i126 = getelementptr inbounds float* %5, i64 %indvars.iv.i124
  %6 = load float* %arrayidx.i126, align 4, !tbaa !4
  %add.i127 = fadd float %t.04.i125, %6
  %indvars.iv.next.i128 = add i64 %indvars.iv.i124, 1
  %lftr.wideiv153 = trunc i64 %indvars.iv.next.i128 to i32
  %exitcond154 = icmp eq i32 %lftr.wideiv153, %0
  br i1 %exitcond154, label %sum_v.exit133, label %for.body.i131

sum_v.exit133:                                    ; preds = %for.body.i131, %sum_v.exit144.thread
  %t.0.lcssa.i132 = phi float [ 0.000000e+00, %sum_v.exit144.thread ], [ %add.i127, %for.body.i131 ]
  %arrayidx16 = getelementptr inbounds float* %epot, i64 11
  store float %t.0.lcssa.i132, float* %arrayidx16, align 4, !tbaa !4
  %arrayidx21 = getelementptr inbounds %struct.t_groups* %grps, i64 0, i32 0, i32 1, i64 5
  %7 = load float** %arrayidx21, align 8, !tbaa !3
  br i1 %cmp3.i, label %for.body.i120, label %sum_v.exit122.thread

for.body.i120:                                    ; preds = %sum_v.exit133, %for.body.i120
  %indvars.iv.i113 = phi i64 [ %indvars.iv.next.i117, %for.body.i120 ], [ 0, %sum_v.exit133 ]
  %t.04.i114 = phi float [ %add.i116, %for.body.i120 ], [ 0.000000e+00, %sum_v.exit133 ]
  %arrayidx.i115 = getelementptr inbounds float* %7, i64 %indvars.iv.i113
  %8 = load float* %arrayidx.i115, align 4, !tbaa !4
  %add.i116 = fadd float %t.04.i114, %8
  %indvars.iv.next.i117 = add i64 %indvars.iv.i113, 1
  %lftr.wideiv151 = trunc i64 %indvars.iv.next.i117 to i32
  %exitcond152 = icmp eq i32 %lftr.wideiv151, %0
  br i1 %exitcond152, label %sum_v.exit122, label %for.body.i120

sum_v.exit122.thread:                             ; preds = %sum_v.exit133.thread, %sum_v.exit133
  %arrayidx23165 = getelementptr inbounds float* %epot, i64 12
  store float 0.000000e+00, float* %arrayidx23165, align 4, !tbaa !4
  br label %sum_v.exit111

sum_v.exit122:                                    ; preds = %for.body.i120
  %arrayidx23 = getelementptr inbounds float* %epot, i64 12
  store float %add.i116, float* %arrayidx23, align 4, !tbaa !4
  %arrayidx28 = getelementptr inbounds %struct.t_groups* %grps, i64 0, i32 0, i32 1, i64 3
  %9 = load float** %arrayidx28, align 8, !tbaa !3
  br i1 %cmp3.i, label %for.body.i109, label %sum_v.exit111.thread

sum_v.exit111.thread:                             ; preds = %sum_v.exit122
  %arrayidx30167 = getelementptr inbounds float* %epot, i64 18
  %10 = load float* %arrayidx30167, align 4, !tbaa !4
  %add168 = fadd float %10, 0.000000e+00
  store float %add168, float* %arrayidx30167, align 4, !tbaa !4
  br label %sum_v.exit100.thread

for.body.i109:                                    ; preds = %sum_v.exit122, %for.body.i109
  %indvars.iv.i102 = phi i64 [ %indvars.iv.next.i106, %for.body.i109 ], [ 0, %sum_v.exit122 ]
  %t.04.i103 = phi float [ %add.i105, %for.body.i109 ], [ 0.000000e+00, %sum_v.exit122 ]
  %arrayidx.i104 = getelementptr inbounds float* %9, i64 %indvars.iv.i102
  %11 = load float* %arrayidx.i104, align 4, !tbaa !4
  %add.i105 = fadd float %t.04.i103, %11
  %indvars.iv.next.i106 = add i64 %indvars.iv.i102, 1
  %lftr.wideiv149 = trunc i64 %indvars.iv.next.i106 to i32
  %exitcond150 = icmp eq i32 %lftr.wideiv149, %0
  br i1 %exitcond150, label %sum_v.exit111, label %for.body.i109

sum_v.exit111:                                    ; preds = %for.body.i109, %sum_v.exit122.thread
  %t.0.lcssa.i110 = phi float [ 0.000000e+00, %sum_v.exit122.thread ], [ %add.i105, %for.body.i109 ]
  %arrayidx30 = getelementptr inbounds float* %epot, i64 18
  %12 = load float* %arrayidx30, align 4, !tbaa !4
  %add = fadd float %t.0.lcssa.i110, %12
  store float %add, float* %arrayidx30, align 4, !tbaa !4
  %arrayidx35 = getelementptr inbounds %struct.t_groups* %grps, i64 0, i32 0, i32 1, i64 4
  %13 = load float** %arrayidx35, align 8, !tbaa !3
  br i1 %cmp3.i, label %for.body.i98, label %sum_v.exit100.thread

for.body.i98:                                     ; preds = %sum_v.exit111, %for.body.i98
  %indvars.iv.i91 = phi i64 [ %indvars.iv.next.i95, %for.body.i98 ], [ 0, %sum_v.exit111 ]
  %t.04.i92 = phi float [ %add.i94, %for.body.i98 ], [ 0.000000e+00, %sum_v.exit111 ]
  %arrayidx.i93 = getelementptr inbounds float* %13, i64 %indvars.iv.i91
  %14 = load float* %arrayidx.i93, align 4, !tbaa !4
  %add.i94 = fadd float %t.04.i92, %14
  %indvars.iv.next.i95 = add i64 %indvars.iv.i91, 1
  %lftr.wideiv147 = trunc i64 %indvars.iv.next.i95 to i32
  %exitcond148 = icmp eq i32 %lftr.wideiv147, %0
  br i1 %exitcond148, label %sum_v.exit100, label %for.body.i98

sum_v.exit100.thread:                             ; preds = %sum_v.exit111.thread, %sum_v.exit111
  %arrayidx37170 = getelementptr inbounds float* %epot, i64 15
  %15 = load float* %arrayidx37170, align 4, !tbaa !4
  %add38171 = fadd float %15, 0.000000e+00
  store float %add38171, float* %arrayidx37170, align 4, !tbaa !4
  br label %sum_v.exit89

sum_v.exit100:                                    ; preds = %for.body.i98
  %arrayidx37 = getelementptr inbounds float* %epot, i64 15
  %16 = load float* %arrayidx37, align 4, !tbaa !4
  %add38 = fadd float %add.i94, %16
  store float %add38, float* %arrayidx37, align 4, !tbaa !4
  %arrayidx43 = getelementptr inbounds %struct.t_groups* %grps, i64 0, i32 0, i32 1, i64 2
  %17 = load float** %arrayidx43, align 8, !tbaa !3
  br i1 %cmp3.i, label %for.body.i87, label %sum_v.exit89

for.body.i87:                                     ; preds = %sum_v.exit100, %for.body.i87
  %indvars.iv.i80 = phi i64 [ %indvars.iv.next.i84, %for.body.i87 ], [ 0, %sum_v.exit100 ]
  %t.04.i81 = phi float [ %add.i83, %for.body.i87 ], [ 0.000000e+00, %sum_v.exit100 ]
  %arrayidx.i82 = getelementptr inbounds float* %17, i64 %indvars.iv.i80
  %18 = load float* %arrayidx.i82, align 4, !tbaa !4
  %add.i83 = fadd float %t.04.i81, %18
  %indvars.iv.next.i84 = add i64 %indvars.iv.i80, 1
  %lftr.wideiv145 = trunc i64 %indvars.iv.next.i84 to i32
  %exitcond146 = icmp eq i32 %lftr.wideiv145, %0
  br i1 %exitcond146, label %sum_v.exit89, label %for.body.i87

sum_v.exit89:                                     ; preds = %for.body.i87, %sum_v.exit100.thread, %sum_v.exit100
  %t.0.lcssa.i88 = phi float [ 0.000000e+00, %sum_v.exit100 ], [ 0.000000e+00, %sum_v.exit100.thread ], [ %add.i83, %for.body.i87 ]
  %arrayidx45 = getelementptr inbounds float* %epot, i64 14
  store float %t.0.lcssa.i88, float* %arrayidx45, align 4, !tbaa !4
  br label %for.body.i76

for.body.i76:                                     ; preds = %for.body.i76, %sum_v.exit89
  %indvars.iv.i69 = phi i64 [ %indvars.iv.next.i73, %for.body.i76 ], [ 0, %sum_v.exit89 ]
  %t.04.i70 = phi float [ %add.i72, %for.body.i76 ], [ 0.000000e+00, %sum_v.exit89 ]
  %arrayidx.i71 = getelementptr inbounds float* %epot, i64 %indvars.iv.i69
  %19 = load float* %arrayidx.i71, align 4, !tbaa !4
  %add.i72 = fadd float %t.04.i70, %19
  %indvars.iv.next.i73 = add i64 %indvars.iv.i69, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next.i73 to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 37
  br i1 %exitcond, label %sum_v.exit78, label %for.body.i76

sum_v.exit78:                                     ; preds = %for.body.i76
  %arrayidx47 = getelementptr inbounds float* %epot, i64 37
  store float %add.i72, float* %arrayidx47, align 4, !tbaa !4
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #3

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { nounwind optsize }

!0 = metadata !{metadata !"int", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"any pointer", metadata !1}
!4 = metadata !{metadata !"float", metadata !1}
!5 = metadata !{metadata !"short", metadata !1}
!6 = metadata !{metadata !"double", metadata !1}
