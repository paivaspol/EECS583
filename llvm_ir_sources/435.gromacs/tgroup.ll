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
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %log}, i64 0, metadata !229), !dbg !390
  tail call void @llvm.dbg.value(metadata !{%struct.t_mdatoms* %md}, i64 0, metadata !230), !dbg !390
  tail call void @llvm.dbg.value(metadata !{%struct.t_grpopts* %opts}, i64 0, metadata !231), !dbg !390
  tail call void @llvm.dbg.value(metadata !{%struct.t_groups* %grps}, i64 0, metadata !232), !dbg !390
  %ngtc = getelementptr inbounds %struct.t_grpopts* %opts, i64 0, i32 0, !dbg !391
  %0 = load i32* %ngtc, align 4, !dbg !391, !tbaa !392
  %call = tail call i8* @save_calloc(i8* getelementptr inbounds ([13 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str1, i64 0, i64 0), i32 113, i32 %0, i32 52) #5, !dbg !391
  %1 = bitcast i8* %call to %struct.t_grp_tcstat*, !dbg !391
  %tcstat = getelementptr inbounds %struct.t_groups* %grps, i64 0, i32 1, !dbg !391
  store %struct.t_grp_tcstat* %1, %struct.t_grp_tcstat** %tcstat, align 8, !dbg !391, !tbaa !395
  %2 = load i32* %ngtc, align 4, !dbg !396, !tbaa !392
  tail call void @llvm.dbg.value(metadata !{i32 %2}, i64 0, metadata !397) #4, !dbg !398
  tail call void @llvm.dbg.value(metadata !{%struct.t_grp_tcstat* %1}, i64 0, metadata !399) #4, !dbg !398
  tail call void @llvm.dbg.value(metadata !62, i64 0, metadata !400) #4, !dbg !401
  %cmp15.i = icmp sgt i32 %2, 0, !dbg !401
  br i1 %cmp15.i, label %for.body.i, label %init_grptcstat.exit, !dbg !401

for.body.i:                                       ; preds = %entry, %for.body.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %for.body.i ], [ 0, %entry ]
  %T.i = getelementptr inbounds %struct.t_grp_tcstat* %1, i64 %indvars.iv.i, i32 0, !dbg !403
  store float 0.000000e+00, float* %T.i, align 4, !dbg !403, !tbaa !405
  %lambda.i = getelementptr inbounds %struct.t_grp_tcstat* %1, i64 %indvars.iv.i, i32 1, !dbg !406
  store float 1.000000e+00, float* %lambda.i, align 4, !dbg !406, !tbaa !405
  %arraydecay.i = getelementptr inbounds %struct.t_grp_tcstat* %1, i64 %indvars.iv.i, i32 2, i64 0, !dbg !407
  tail call void @llvm.dbg.value(metadata !{[3 x float]* %arraydecay.i}, i64 0, metadata !408) #4, !dbg !409
  tail call void @llvm.dbg.value(metadata !410, i64 0, metadata !411) #4, !dbg !412
  %indvars.iv.next.i = add i64 %indvars.iv.i, 1, !dbg !401
  %3 = bitcast [3 x float]* %arraydecay.i to i8*, !dbg !401
  tail call void @llvm.memset.p0i8.i64(i8* %3, i8 0, i64 40, i32 4, i1 false) #4, !dbg !413
  %lftr.wideiv30 = trunc i64 %indvars.iv.next.i to i32, !dbg !401
  %exitcond31 = icmp eq i32 %lftr.wideiv30, %2, !dbg !401
  br i1 %exitcond31, label %init_grptcstat.exit, label %for.body.i, !dbg !401

init_grptcstat.exit:                              ; preds = %for.body.i, %entry
  %ngacc = getelementptr inbounds %struct.t_grpopts* %opts, i64 0, i32 1, !dbg !414
  %4 = load i32* %ngacc, align 4, !dbg !414, !tbaa !392
  %call3 = tail call i8* @save_calloc(i8* getelementptr inbounds ([14 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str1, i64 0, i64 0), i32 116, i32 %4, i32 56) #5, !dbg !414
  %5 = bitcast i8* %call3 to %struct.t_grp_acc*, !dbg !414
  %grpstat = getelementptr inbounds %struct.t_groups* %grps, i64 0, i32 2, !dbg !414
  store %struct.t_grp_acc* %5, %struct.t_grp_acc** %grpstat, align 8, !dbg !414, !tbaa !395
  %6 = load i32* %ngacc, align 4, !dbg !415, !tbaa !392
  tail call void @llvm.dbg.value(metadata !416, i64 0, metadata !417) #4, !dbg !418
  %cmp.i = icmp sgt i32 %6, 0, !dbg !419
  br i1 %cmp.i, label %for.cond.preheader.i, label %init_grpstat.exit, !dbg !419

for.cond.preheader.i:                             ; preds = %init_grptcstat.exit
  %nr.i = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 1, !dbg !420
  %7 = load i32* %nr.i, align 4, !dbg !420, !tbaa !392
  %cmp15.i20 = icmp sgt i32 %7, 0, !dbg !420
  br i1 %cmp15.i20, label %for.body.lr.ph.i, label %for.body12.i, !dbg !420

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %cACC.i = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 16, !dbg !423
  %8 = load i16** %cACC.i, align 8, !dbg !423, !tbaa !395
  %massT.i = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 4, !dbg !425
  %9 = load float** %massT.i, align 8, !dbg !425, !tbaa !395
  br label %for.body.i22, !dbg !420

for.body.i22:                                     ; preds = %for.body.i22, %for.body.lr.ph.i
  %indvars.iv9.i = phi i64 [ 0, %for.body.lr.ph.i ], [ %indvars.iv.next10.i, %for.body.i22 ]
  %arrayidx.i21 = getelementptr inbounds i16* %8, i64 %indvars.iv9.i, !dbg !423
  %10 = load i16* %arrayidx.i21, align 2, !dbg !423, !tbaa !426
  %idxprom2.i = zext i16 %10 to i64, !dbg !427
  %nat.i = getelementptr inbounds %struct.t_grp_acc* %5, i64 %idxprom2.i, i32 0, !dbg !427
  %11 = load i32* %nat.i, align 4, !dbg !427, !tbaa !392
  %inc.i = add nsw i32 %11, 1, !dbg !427
  store i32 %inc.i, i32* %nat.i, align 4, !dbg !427, !tbaa !392
  %arrayidx5.i = getelementptr inbounds float* %9, i64 %indvars.iv9.i, !dbg !425
  %12 = load float* %arrayidx5.i, align 4, !dbg !425, !tbaa !405
  %M.i = getelementptr inbounds %struct.t_grp_acc* %5, i64 %idxprom2.i, i32 2, !dbg !425
  %13 = load float* %M.i, align 4, !dbg !425, !tbaa !405
  %add.i = fadd float %12, %13, !dbg !425
  store float %add.i, float* %M.i, align 4, !dbg !425, !tbaa !405
  %indvars.iv.next10.i = add i64 %indvars.iv9.i, 1, !dbg !420
  %14 = load i32* %nr.i, align 4, !dbg !420, !tbaa !392
  %15 = trunc i64 %indvars.iv.next10.i to i32, !dbg !420
  %cmp1.i = icmp slt i32 %15, %14, !dbg !420
  br i1 %cmp1.i, label %for.body.i22, label %for.body12.i, !dbg !420

for.cond24.preheader.i:                           ; preds = %for.body12.i
  %.pre.i = load i32* %nr.i, align 4, !dbg !428, !tbaa !392
  %cmp261.i = icmp sgt i32 %.pre.i, 0, !dbg !428
  br i1 %cmp261.i, label %for.body28.lr.ph.i, label %init_grpstat.exit, !dbg !428

for.body28.lr.ph.i:                               ; preds = %for.cond24.preheader.i
  %cACC30.i = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 16, !dbg !430
  %16 = load i16** %cACC30.i, align 8, !dbg !430, !tbaa !395
  br label %for.body28.i, !dbg !428

for.body12.i:                                     ; preds = %for.cond.preheader.i, %for.body.i22, %for.body12.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.body12.i ], [ 0, %for.body.i22 ], [ 0, %for.cond.preheader.i ]
  %nat15.i = getelementptr inbounds %struct.t_grp_acc* %5, i64 %indvars.iv7.i, i32 0, !dbg !432
  %17 = load i32* %nat15.i, align 4, !dbg !432, !tbaa !392
  %call.i23 = tail call i8* @save_calloc(i8* getelementptr inbounds ([13 x i8]* @.str5, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str1, i64 0, i64 0), i32 78, i32 %17, i32 4) #5, !dbg !432
  %18 = bitcast i8* %call.i23 to i32*, !dbg !432
  %aid.i = getelementptr inbounds %struct.t_grp_acc* %5, i64 %indvars.iv7.i, i32 1, !dbg !432
  store i32* %18, i32** %aid.i, align 8, !dbg !432, !tbaa !395
  store i32 0, i32* %nat15.i, align 4, !dbg !435, !tbaa !392
  %indvars.iv.next8.i = add i64 %indvars.iv7.i, 1, !dbg !436
  %lftr.wideiv28 = trunc i64 %indvars.iv.next8.i to i32, !dbg !436
  %exitcond29 = icmp eq i32 %lftr.wideiv28, %6, !dbg !436
  br i1 %exitcond29, label %for.cond24.preheader.i, label %for.body12.i, !dbg !436

for.body28.i:                                     ; preds = %for.body28.i, %for.body28.lr.ph.i
  %indvars.iv.i26 = phi i64 [ 0, %for.body28.lr.ph.i ], [ %indvars.iv.next.i27, %for.body28.i ]
  %arrayidx31.i = getelementptr inbounds i16* %16, i64 %indvars.iv.i26, !dbg !430
  %19 = load i16* %arrayidx31.i, align 2, !dbg !430, !tbaa !426
  %idxprom33.i = zext i16 %19 to i64, !dbg !437
  %nat35.i = getelementptr inbounds %struct.t_grp_acc* %5, i64 %idxprom33.i, i32 0, !dbg !437
  %20 = load i32* %nat35.i, align 4, !dbg !437, !tbaa !392
  %inc36.i = add nsw i32 %20, 1, !dbg !437
  store i32 %inc36.i, i32* %nat35.i, align 4, !dbg !437, !tbaa !392
  %idxprom37.i = sext i32 %20 to i64, !dbg !437
  %aid40.i = getelementptr inbounds %struct.t_grp_acc* %5, i64 %idxprom33.i, i32 1, !dbg !437
  %21 = load i32** %aid40.i, align 8, !dbg !437, !tbaa !395
  %arrayidx41.i = getelementptr inbounds i32* %21, i64 %idxprom37.i, !dbg !437
  %22 = trunc i64 %indvars.iv.i26 to i32, !dbg !437
  store i32 %22, i32* %arrayidx41.i, align 4, !dbg !437, !tbaa !392
  %indvars.iv.next.i27 = add i64 %indvars.iv.i26, 1, !dbg !428
  %23 = load i32* %nr.i, align 4, !dbg !428, !tbaa !392
  %24 = trunc i64 %indvars.iv.next.i27 to i32, !dbg !428
  %cmp26.i = icmp slt i32 %24, %23, !dbg !428
  br i1 %cmp26.i, label %for.body28.i, label %init_grpstat.exit, !dbg !428

init_grpstat.exit:                                ; preds = %for.body28.i, %init_grptcstat.exit, %for.cond24.preheader.i
  %ngener = getelementptr inbounds %struct.t_grpopts* %opts, i64 0, i32 3, !dbg !438
  %25 = load i32* %ngener, align 4, !dbg !438, !tbaa !392
  tail call void @llvm.dbg.value(metadata !416, i64 0, metadata !439) #4, !dbg !440
  %mul.i = mul nsw i32 %25, %25, !dbg !441
  tail call void @llvm.dbg.value(metadata !{i32 %mul.i}, i64 0, metadata !442) #4, !dbg !441
  %nn.i = getelementptr inbounds %struct.t_groups* %grps, i64 0, i32 0, i32 0, !dbg !443
  store i32 %mul.i, i32* %nn.i, align 4, !dbg !443, !tbaa !392
  tail call void @llvm.dbg.value(metadata !62, i64 0, metadata !444) #4, !dbg !445
  br label %for.body.i19, !dbg !445

for.body.i19:                                     ; preds = %for.body.i19, %init_grpstat.exit
  %indvars.iv.i15 = phi i64 [ 0, %init_grpstat.exit ], [ %indvars.iv.next.i16, %for.body.i19 ]
  %call.i = tail call i8* @save_calloc(i8* getelementptr inbounds ([13 x i8]* @.str4, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str1, i64 0, i64 0), i32 102, i32 %mul.i, i32 4) #5, !dbg !447
  %26 = bitcast i8* %call.i to float*, !dbg !447
  %arrayidx.i = getelementptr inbounds %struct.t_groups* %grps, i64 0, i32 0, i32 1, i64 %indvars.iv.i15, !dbg !447
  store float* %26, float** %arrayidx.i, align 8, !dbg !447, !tbaa !395
  %indvars.iv.next.i16 = add i64 %indvars.iv.i15, 1, !dbg !445
  %lftr.wideiv = trunc i64 %indvars.iv.next.i16 to i32, !dbg !445
  %exitcond = icmp eq i32 %lftr.wideiv, 7, !dbg !445
  br i1 %exitcond, label %init_grpener.exit, label %for.body.i19, !dbg !445

init_grpener.exit:                                ; preds = %for.body.i19
  ret void, !dbg !449
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: optsize
declare i8* @save_calloc(i8*, i8*, i32, i32, i32) #2

; Function Attrs: nounwind optsize uwtable
define void @dump_estat(%struct._IO_FILE* %log, %struct.t_grp_ener* nocapture %estat) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %log}, i64 0, metadata !239), !dbg !450
  tail call void @llvm.dbg.value(metadata !{%struct.t_grp_ener* %estat}, i64 0, metadata !240), !dbg !450
  %tobool = icmp eq %struct._IO_FILE* %log, null, !dbg !451
  br i1 %tobool, label %if.end, label %for.cond.preheader, !dbg !451

for.cond.preheader:                               ; preds = %entry
  %nn = getelementptr inbounds %struct.t_grp_ener* %estat, i64 0, i32 0, !dbg !452
  %0 = load i32* %nn, align 4, !dbg !452, !tbaa !392
  %cmp6 = icmp sgt i32 %0, 0, !dbg !452
  br i1 %cmp6, label %for.body.lr.ph, label %if.end, !dbg !452

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %arrayidx = getelementptr inbounds %struct.t_grp_ener* %estat, i64 0, i32 1, i64 1, !dbg !454
  br label %for.body, !dbg !452

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.body ]
  %1 = load float** %arrayidx, align 8, !dbg !454, !tbaa !395
  %arrayidx1 = getelementptr inbounds float* %1, i64 %indvars.iv, !dbg !454
  %2 = load float* %arrayidx1, align 4, !dbg !454, !tbaa !405
  %conv = fpext float %2 to double, !dbg !454
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %log, i8* getelementptr inbounds ([8 x i8]* @.str3, i64 0, i64 0), double %conv) #5, !dbg !454
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !452
  %3 = load i32* %nn, align 4, !dbg !452, !tbaa !392
  %4 = trunc i64 %indvars.iv.next to i32, !dbg !452
  %cmp = icmp slt i32 %4, %3, !dbg !452
  br i1 %cmp, label %for.body, label %if.end, !dbg !452

if.end:                                           ; preds = %for.cond.preheader, %for.body, %entry
  ret void, !dbg !456
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #3

; Function Attrs: nounwind optsize uwtable
define float @rms_ener(%struct.t_energy* nocapture %e, i32 %nsteps) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.t_energy* %e}, i64 0, metadata !256), !dbg !457
  tail call void @llvm.dbg.value(metadata !{i32 %nsteps}, i64 0, metadata !257), !dbg !457
  %e2sum = getelementptr inbounds %struct.t_energy* %e, i64 0, i32 3, !dbg !458
  %0 = load float* %e2sum, align 4, !dbg !458, !tbaa !405
  %conv = sitofp i32 %nsteps to float, !dbg !458
  %mul = fmul float %conv, %0, !dbg !458
  %conv1 = fpext float %mul to double, !dbg !458
  %esum = getelementptr inbounds %struct.t_energy* %e, i64 0, i32 2, !dbg !458
  %1 = load double* %esum, align 8, !dbg !458, !tbaa !459
  %mul3 = fmul double %1, %1, !dbg !458
  %sub = fsub double %conv1, %mul3, !dbg !458
  %conv4 = fptrunc double %sub to float, !dbg !458
  tail call void @llvm.dbg.value(metadata !{float %conv4}, i64 0, metadata !258), !dbg !458
  %cmp = fcmp ugt float %conv4, 0.000000e+00, !dbg !460
  br i1 %cmp, label %if.else, label %return, !dbg !460

if.else:                                          ; preds = %entry
  %conv6 = fpext float %conv4 to double, !dbg !461
  %call = tail call double @sqrt(double %conv6) #5, !dbg !461
  %conv7 = sitofp i32 %nsteps to double, !dbg !461
  %div = fdiv double %call, %conv7, !dbg !461
  %conv8 = fptrunc double %div to float, !dbg !461
  br label %return, !dbg !461

return:                                           ; preds = %entry, %if.else
  %retval.0 = phi float [ %conv8, %if.else ], [ 0.000000e+00, %entry ]
  ret float %retval.0, !dbg !462
}

; Function Attrs: nounwind optsize
declare double @sqrt(double) #3

; Function Attrs: nounwind optsize uwtable
define void @accumulate_u(%struct.t_commrec* %cr, %struct.t_grpopts* nocapture %opts, %struct.t_groups* nocapture %grps) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.t_commrec* %cr}, i64 0, metadata !274), !dbg !463
  tail call void @llvm.dbg.value(metadata !{%struct.t_grpopts* %opts}, i64 0, metadata !275), !dbg !463
  tail call void @llvm.dbg.value(metadata !{%struct.t_groups* %grps}, i64 0, metadata !276), !dbg !463
  %0 = load %struct.t_bin** @accumulate_u.rb, align 8, !dbg !464, !tbaa !395
  %cmp = icmp eq %struct.t_bin* %0, null, !dbg !464
  br i1 %cmp, label %if.then, label %if.else, !dbg !464

if.then:                                          ; preds = %entry
  %call = tail call %struct.t_bin* @mk_bin() #5, !dbg !465
  store %struct.t_bin* %call, %struct.t_bin** @accumulate_u.rb, align 8, !dbg !465, !tbaa !395
  br label %for.cond.preheader, !dbg !467

if.else:                                          ; preds = %entry
  tail call void @reset_bin(%struct.t_bin* %0) #5, !dbg !468
  br label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.else, %if.then
  %ngacc = getelementptr inbounds %struct.t_grpopts* %opts, i64 0, i32 1, !dbg !469
  %1 = load i32* %ngacc, align 4, !dbg !469, !tbaa !392
  %cmp125 = icmp sgt i32 %1, 0, !dbg !469
  br i1 %cmp125, label %for.body.lr.ph, label %for.end, !dbg !469

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %grpstat = getelementptr inbounds %struct.t_groups* %grps, i64 0, i32 2, !dbg !471
  br label %for.body, !dbg !469

for.body:                                         ; preds = %for.body, %for.body.lr.ph
  %indvars.iv27 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next28, %for.body ]
  %2 = load %struct._IO_FILE** @stdlog, align 8, !dbg !471, !tbaa !395
  %3 = load %struct.t_bin** @accumulate_u.rb, align 8, !dbg !471, !tbaa !395
  %4 = load %struct.t_grp_acc** %grpstat, align 8, !dbg !471, !tbaa !395
  %arraydecay = getelementptr inbounds %struct.t_grp_acc* %4, i64 %indvars.iv27, i32 3, i64 0, !dbg !471
  %call2 = tail call i32 @add_binr(%struct._IO_FILE* %2, %struct.t_bin* %3, i32 3, float* %arraydecay) #5, !dbg !471
  %indvars.iv.next28 = add i64 %indvars.iv27, 1, !dbg !469
  %5 = load i32* %ngacc, align 4, !dbg !469, !tbaa !392
  %6 = trunc i64 %indvars.iv.next28 to i32, !dbg !469
  %cmp1 = icmp slt i32 %6, %5, !dbg !469
  br i1 %cmp1, label %for.body, label %for.end, !dbg !469

for.end:                                          ; preds = %for.body, %for.cond.preheader
  %7 = load %struct.t_bin** @accumulate_u.rb, align 8, !dbg !472, !tbaa !395
  tail call void @sum_bin(%struct.t_bin* %7, %struct.t_commrec* %cr) #5, !dbg !472
  tail call void @llvm.dbg.value(metadata !62, i64 0, metadata !277), !dbg !473
  %8 = load i32* %ngacc, align 4, !dbg !473, !tbaa !392
  %cmp523 = icmp sgt i32 %8, 0, !dbg !473
  br i1 %cmp523, label %for.body6.lr.ph, label %for.end14, !dbg !473

for.body6.lr.ph:                                  ; preds = %for.end
  %grpstat8 = getelementptr inbounds %struct.t_groups* %grps, i64 0, i32 2, !dbg !475
  br label %for.body6, !dbg !473

for.body6:                                        ; preds = %for.body6.lr.ph, %for.body6
  %indvars.iv = phi i64 [ 0, %for.body6.lr.ph ], [ %indvars.iv.next, %for.body6 ]
  %9 = load %struct.t_bin** @accumulate_u.rb, align 8, !dbg !475, !tbaa !395
  %10 = trunc i64 %indvars.iv to i32, !dbg !475
  %mul = mul nsw i32 %10, 3, !dbg !475
  %11 = load %struct.t_grp_acc** %grpstat8, align 8, !dbg !475, !tbaa !395
  %arraydecay11 = getelementptr inbounds %struct.t_grp_acc* %11, i64 %indvars.iv, i32 3, i64 0, !dbg !475
  tail call void @extract_binr(%struct.t_bin* %9, i32 %mul, i32 3, float* %arraydecay11) #5, !dbg !475
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !473
  %12 = load i32* %ngacc, align 4, !dbg !473, !tbaa !392
  %13 = trunc i64 %indvars.iv.next to i32, !dbg !473
  %cmp5 = icmp slt i32 %13, %12, !dbg !473
  br i1 %cmp5, label %for.body6, label %for.end14, !dbg !473

for.end14:                                        ; preds = %for.body6, %for.end
  ret void, !dbg !476
}

; Function Attrs: optsize
declare %struct.t_bin* @mk_bin() #2

; Function Attrs: optsize
declare void @reset_bin(%struct.t_bin*) #2

; Function Attrs: optsize
declare i32 @add_binr(%struct._IO_FILE*, %struct.t_bin*, i32, float*) #2

; Function Attrs: optsize
declare void @sum_bin(%struct.t_bin*, %struct.t_commrec*) #2

; Function Attrs: optsize
declare void @extract_binr(%struct.t_bin*, i32, i32, float*) #2

; Function Attrs: nounwind optsize uwtable
define void @update_grps(i32 %start, i32 %homenr, %struct.t_groups* nocapture %grps, %struct.t_grpopts* nocapture %opts, [3 x float]* nocapture %v, %struct.t_mdatoms* nocapture %md, i32 %bNEMD) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %start}, i64 0, metadata !282), !dbg !477
  tail call void @llvm.dbg.value(metadata !{i32 %homenr}, i64 0, metadata !283), !dbg !477
  tail call void @llvm.dbg.value(metadata !{%struct.t_groups* %grps}, i64 0, metadata !284), !dbg !477
  tail call void @llvm.dbg.value(metadata !{%struct.t_grpopts* %opts}, i64 0, metadata !285), !dbg !478
  tail call void @llvm.dbg.value(metadata !{[3 x float]* %v}, i64 0, metadata !286), !dbg !478
  tail call void @llvm.dbg.value(metadata !{%struct.t_mdatoms* %md}, i64 0, metadata !287), !dbg !478
  tail call void @llvm.dbg.value(metadata !{i32 %bNEMD}, i64 0, metadata !288), !dbg !478
  tail call void @llvm.dbg.value(metadata !62, i64 0, metadata !290), !dbg !479
  %ngtc = getelementptr inbounds %struct.t_grpopts* %opts, i64 0, i32 0, !dbg !479
  %0 = load i32* %ngtc, align 4, !dbg !479, !tbaa !392
  %cmp95 = icmp sgt i32 %0, 0, !dbg !479
  br i1 %cmp95, label %for.body.lr.ph, label %for.end, !dbg !479

for.body.lr.ph:                                   ; preds = %entry
  %tcstat = getelementptr inbounds %struct.t_groups* %grps, i64 0, i32 1, !dbg !481
  %1 = load %struct.t_grp_tcstat** %tcstat, align 8, !dbg !481, !tbaa !395
  br label %for.body, !dbg !479

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %indvars.iv107 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next108, %for.body ]
  %T = getelementptr inbounds %struct.t_grp_tcstat* %1, i64 %indvars.iv107, i32 0, !dbg !481
  store float 0.000000e+00, float* %T, align 4, !dbg !481, !tbaa !405
  %indvars.iv.next108 = add i64 %indvars.iv107, 1, !dbg !479
  %2 = trunc i64 %indvars.iv.next108 to i32, !dbg !479
  %cmp = icmp slt i32 %2, %0, !dbg !479
  br i1 %cmp, label %for.body, label %for.end, !dbg !479

for.end:                                          ; preds = %for.body, %entry
  %tobool = icmp eq i32 %bNEMD, 0, !dbg !483
  br i1 %tobool, label %if.end, label %for.cond1.preheader, !dbg !483

for.cond1.preheader:                              ; preds = %for.end
  %ngacc = getelementptr inbounds %struct.t_grpopts* %opts, i64 0, i32 1, !dbg !484
  %3 = load i32* %ngacc, align 4, !dbg !484, !tbaa !392
  %cmp293 = icmp sgt i32 %3, 0, !dbg !484
  br i1 %cmp293, label %for.body3.lr.ph, label %for.cond9.preheader, !dbg !484

for.body3.lr.ph:                                  ; preds = %for.cond1.preheader
  %grpstat = getelementptr inbounds %struct.t_groups* %grps, i64 0, i32 2, !dbg !487
  %4 = load %struct.t_grp_acc** %grpstat, align 8, !dbg !487, !tbaa !395
  br label %for.body3, !dbg !484

for.cond9.preheader:                              ; preds = %for.body3, %for.cond1.preheader
  %add = add nsw i32 %homenr, %start, !dbg !488
  %cmp1091 = icmp sgt i32 %homenr, 0, !dbg !488
  br i1 %cmp1091, label %for.body11.lr.ph, label %for.cond37.preheader, !dbg !488

for.body11.lr.ph:                                 ; preds = %for.cond9.preheader
  %cACC = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 16, !dbg !490
  %5 = load i16** %cACC, align 8, !dbg !490, !tbaa !395
  %massT = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 4, !dbg !492
  %6 = load float** %massT, align 8, !dbg !492, !tbaa !395
  %grpstat26 = getelementptr inbounds %struct.t_groups* %grps, i64 0, i32 2, !dbg !495
  %7 = load %struct.t_grp_acc** %grpstat26, align 8, !dbg !495, !tbaa !395
  %8 = sext i32 %start to i64
  br label %for.body11, !dbg !488

for.body3:                                        ; preds = %for.body3.lr.ph, %for.body3
  %indvars.iv105 = phi i64 [ 0, %for.body3.lr.ph ], [ %indvars.iv.next106, %for.body3 ]
  %arraydecay = getelementptr inbounds %struct.t_grp_acc* %4, i64 %indvars.iv105, i32 3, i64 0, !dbg !487
  tail call void @llvm.dbg.value(metadata !{float* %arraydecay}, i64 0, metadata !496), !dbg !497
  store float 0.000000e+00, float* %arraydecay, align 4, !dbg !498, !tbaa !405
  %arrayidx1.i = getelementptr inbounds %struct.t_grp_acc* %4, i64 %indvars.iv105, i32 3, i64 1, !dbg !499
  store float 0.000000e+00, float* %arrayidx1.i, align 4, !dbg !499, !tbaa !405
  %arrayidx2.i = getelementptr inbounds %struct.t_grp_acc* %4, i64 %indvars.iv105, i32 3, i64 2, !dbg !500
  store float 0.000000e+00, float* %arrayidx2.i, align 4, !dbg !500, !tbaa !405
  %indvars.iv.next106 = add i64 %indvars.iv105, 1, !dbg !484
  %9 = trunc i64 %indvars.iv.next106 to i32, !dbg !484
  %cmp2 = icmp slt i32 %9, %3, !dbg !484
  br i1 %cmp2, label %for.body3, label %for.cond9.preheader, !dbg !484

for.cond37.preheader:                             ; preds = %for.inc34, %for.cond9.preheader
  br i1 %cmp293, label %for.cond42.preheader.lr.ph, label %if.end, !dbg !501

for.cond42.preheader.lr.ph:                       ; preds = %for.cond37.preheader
  %grpstat47 = getelementptr inbounds %struct.t_groups* %grps, i64 0, i32 2, !dbg !503
  %10 = load %struct.t_grp_acc** %grpstat47, align 8, !dbg !503, !tbaa !395
  br label %for.cond42.preheader, !dbg !501

for.body11:                                       ; preds = %for.body11.lr.ph, %for.inc34
  %indvars.iv103 = phi i64 [ %8, %for.body11.lr.ph ], [ %indvars.iv.next104, %for.inc34 ]
  %arrayidx13 = getelementptr inbounds i16* %5, i64 %indvars.iv103, !dbg !490
  %11 = load i16* %arrayidx13, align 2, !dbg !490, !tbaa !426
  tail call void @llvm.dbg.value(metadata !62, i64 0, metadata !289), !dbg !507
  %arrayidx19 = getelementptr inbounds float* %6, i64 %indvars.iv103, !dbg !492
  %idxprom25 = zext i16 %11 to i64, !dbg !495
  br label %for.body17, !dbg !507

for.body17:                                       ; preds = %for.body17, %for.body11
  %indvars.iv99 = phi i64 [ 0, %for.body11 ], [ %indvars.iv.next100, %for.body17 ]
  %12 = load float* %arrayidx19, align 4, !dbg !492, !tbaa !405
  %arrayidx23 = getelementptr inbounds [3 x float]* %v, i64 %indvars.iv103, i64 %indvars.iv99, !dbg !492
  %13 = load float* %arrayidx23, align 4, !dbg !492, !tbaa !405
  %mul = fmul float %12, %13, !dbg !492
  tail call void @llvm.dbg.value(metadata !{float %mul}, i64 0, metadata !292), !dbg !492
  %arrayidx29 = getelementptr inbounds %struct.t_grp_acc* %7, i64 %idxprom25, i32 3, i64 %indvars.iv99, !dbg !495
  %14 = load float* %arrayidx29, align 4, !dbg !495, !tbaa !405
  %add30 = fadd float %mul, %14, !dbg !495
  store float %add30, float* %arrayidx29, align 4, !dbg !495, !tbaa !405
  %indvars.iv.next100 = add i64 %indvars.iv99, 1, !dbg !507
  %lftr.wideiv101 = trunc i64 %indvars.iv.next100 to i32, !dbg !507
  %exitcond102 = icmp eq i32 %lftr.wideiv101, 3, !dbg !507
  br i1 %exitcond102, label %for.inc34, label %for.body17, !dbg !507

for.inc34:                                        ; preds = %for.body17
  %indvars.iv.next104 = add i64 %indvars.iv103, 1, !dbg !488
  %15 = trunc i64 %indvars.iv.next104 to i32, !dbg !488
  %cmp10 = icmp slt i32 %15, %add, !dbg !488
  br i1 %cmp10, label %for.body11, label %for.cond37.preheader, !dbg !488

for.cond42.preheader:                             ; preds = %for.cond42.preheader.lr.ph, %for.inc58
  %indvars.iv97 = phi i64 [ 0, %for.cond42.preheader.lr.ph ], [ %indvars.iv.next98, %for.inc58 ]
  %M = getelementptr inbounds %struct.t_grp_acc* %10, i64 %indvars.iv97, i32 2, !dbg !503
  br label %for.body45, !dbg !508

for.body45:                                       ; preds = %for.body45, %for.cond42.preheader
  %indvars.iv = phi i64 [ 0, %for.cond42.preheader ], [ %indvars.iv.next, %for.body45 ]
  %16 = load float* %M, align 4, !dbg !503, !tbaa !405
  %arrayidx54 = getelementptr inbounds %struct.t_grp_acc* %10, i64 %indvars.iv97, i32 3, i64 %indvars.iv, !dbg !503
  %17 = load float* %arrayidx54, align 4, !dbg !503, !tbaa !405
  %div = fdiv float %17, %16, !dbg !503
  store float %div, float* %arrayidx54, align 4, !dbg !503, !tbaa !405
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !508
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !508
  %exitcond = icmp eq i32 %lftr.wideiv, 3, !dbg !508
  br i1 %exitcond, label %for.inc58, label %for.body45, !dbg !508

for.inc58:                                        ; preds = %for.body45
  %indvars.iv.next98 = add i64 %indvars.iv97, 1, !dbg !501
  %18 = trunc i64 %indvars.iv.next98 to i32, !dbg !501
  %cmp39 = icmp slt i32 %18, %3, !dbg !501
  br i1 %cmp39, label %for.cond42.preheader, label %if.end, !dbg !501

if.end:                                           ; preds = %for.cond37.preheader, %for.inc58, %for.end
  ret void, !dbg !509
}

; Function Attrs: nounwind optsize uwtable
define float @sum_ekin(%struct.t_grpopts* nocapture %opts, %struct.t_groups* nocapture %grps, [3 x float]* nocapture %ekin, i32 %bTYZ) #0 {
entry:
  %tfac = alloca [3 x float], align 4
  call void @llvm.dbg.value(metadata !{%struct.t_grpopts* %opts}, i64 0, metadata !298), !dbg !510
  call void @llvm.dbg.value(metadata !{%struct.t_groups* %grps}, i64 0, metadata !299), !dbg !510
  call void @llvm.dbg.value(metadata !{[3 x float]* %ekin}, i64 0, metadata !300), !dbg !510
  call void @llvm.dbg.value(metadata !{i32 %bTYZ}, i64 0, metadata !301), !dbg !510
  call void @llvm.dbg.declare(metadata !{[3 x float]* %tfac}, metadata !308), !dbg !511
  %ngtc1 = getelementptr inbounds %struct.t_grpopts* %opts, i64 0, i32 0, !dbg !512
  %0 = load i32* %ngtc1, align 4, !dbg !512, !tbaa !392
  call void @llvm.dbg.value(metadata !{i32 %0}, i64 0, metadata !304), !dbg !512
  %tcstat2 = getelementptr inbounds %struct.t_groups* %grps, i64 0, i32 1, !dbg !513
  %1 = load %struct.t_grp_tcstat** %tcstat2, align 8, !dbg !513, !tbaa !395
  call void @llvm.dbg.value(metadata !{%struct.t_grp_tcstat* %1}, i64 0, metadata !309), !dbg !513
  %nrdf3 = getelementptr inbounds %struct.t_grpopts* %opts, i64 0, i32 4, !dbg !514
  %2 = load float** %nrdf3, align 8, !dbg !514, !tbaa !395
  call void @llvm.dbg.value(metadata !{float* %2}, i64 0, metadata !312), !dbg !514
  call void @llvm.dbg.value(metadata !{[3 x float]* %ekin}, i64 0, metadata !515) #4, !dbg !517
  call void @llvm.dbg.value(metadata !410, i64 0, metadata !518) #4, !dbg !519
  %3 = bitcast [3 x float]* %ekin to i8*, !dbg !520
  call void @llvm.memset.p0i8.i64(i8* %3, i8 0, i64 36, i32 4, i1 false) #4, !dbg !521
  call void @llvm.dbg.value(metadata !410, i64 0, metadata !305), !dbg !522
  call void @llvm.dbg.value(metadata !410, i64 0, metadata !310), !dbg !523
  %tobool = icmp eq i32 %bTYZ, 0, !dbg !524
  br i1 %tobool, label %if.else, label %if.then, !dbg !524

if.then:                                          ; preds = %entry
  %arrayidx = getelementptr inbounds [3 x float]* %tfac, i64 0, i64 0, !dbg !525
  store float 0.000000e+00, float* %arrayidx, align 4, !dbg !525, !tbaa !405
  %arrayidx4 = getelementptr inbounds [3 x float]* %tfac, i64 0, i64 2, !dbg !527
  store float 1.000000e+00, float* %arrayidx4, align 4, !dbg !527, !tbaa !405
  %arrayidx5 = getelementptr inbounds [3 x float]* %tfac, i64 0, i64 1, !dbg !527
  store float 1.000000e+00, float* %arrayidx5, align 4, !dbg !527, !tbaa !405
  call void @llvm.dbg.value(metadata !528, i64 0, metadata !306), !dbg !529
  br label %if.end, !dbg !530

if.else:                                          ; preds = %entry
  %arrayidx6 = getelementptr inbounds [3 x float]* %tfac, i64 0, i64 2, !dbg !531
  store float 1.000000e+00, float* %arrayidx6, align 4, !dbg !531, !tbaa !405
  %arrayidx7 = getelementptr inbounds [3 x float]* %tfac, i64 0, i64 1, !dbg !531
  store float 1.000000e+00, float* %arrayidx7, align 4, !dbg !531, !tbaa !405
  %arrayidx8 = getelementptr inbounds [3 x float]* %tfac, i64 0, i64 0, !dbg !531
  store float 1.000000e+00, float* %arrayidx8, align 4, !dbg !531, !tbaa !405
  call void @llvm.dbg.value(metadata !533, i64 0, metadata !306), !dbg !534
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %ndfac.0 = phi float [ 0x3FE5555560000000, %if.then ], [ 1.000000e+00, %if.else ]
  call void @llvm.dbg.value(metadata !62, i64 0, metadata !302), !dbg !535
  %cmp74 = icmp sgt i32 %0, 0, !dbg !535
  br i1 %cmp74, label %for.body.lr.ph, label %if.end47, !dbg !535

for.body.lr.ph:                                   ; preds = %if.end
  %arrayidx3.i = getelementptr inbounds [3 x float]* %ekin, i64 0, i64 0, !dbg !537
  %arrayidx9.i = getelementptr inbounds [3 x float]* %ekin, i64 0, i64 1, !dbg !542
  %arrayidx16.i = getelementptr inbounds [3 x float]* %ekin, i64 0, i64 2, !dbg !543
  %arrayidx23.i = getelementptr inbounds [3 x float]* %ekin, i64 1, i64 0, !dbg !544
  %arrayidx30.i = getelementptr inbounds [3 x float]* %ekin, i64 1, i64 1, !dbg !545
  %arrayidx37.i = getelementptr inbounds [3 x float]* %ekin, i64 1, i64 2, !dbg !546
  %arrayidx44.i = getelementptr inbounds [3 x float]* %ekin, i64 2, i64 0, !dbg !547
  %arrayidx51.i = getelementptr inbounds [3 x float]* %ekin, i64 2, i64 1, !dbg !548
  %arrayidx58.i = getelementptr inbounds [3 x float]* %ekin, i64 2, i64 2, !dbg !549
  br label %for.body, !dbg !535

for.body:                                         ; preds = %if.end35, %for.body.lr.ph
  %indvars.iv79 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next80, %if.end35 ]
  %nrdf.076 = phi float [ 0.000000e+00, %for.body.lr.ph ], [ %add41, %if.end35 ]
  %T.075 = phi float [ 0.000000e+00, %for.body.lr.ph ], [ %add40, %if.end35 ]
  %arrayidx9 = getelementptr inbounds float* %2, i64 %indvars.iv79, !dbg !550
  %4 = load float* %arrayidx9, align 4, !dbg !550, !tbaa !405
  %mul = fmul float %ndfac.0, %4, !dbg !550
  call void @llvm.dbg.value(metadata !{float %mul}, i64 0, metadata !311), !dbg !550
  %cmp10 = fcmp ogt float %mul, 0.000000e+00, !dbg !551
  %arrayidx13 = getelementptr inbounds %struct.t_grp_tcstat* %1, i64 %indvars.iv79, !dbg !539
  br i1 %cmp10, label %if.then11, label %if.else31, !dbg !551

if.then11:                                        ; preds = %for.body
  tail call void @llvm.dbg.value(metadata !{[3 x float]* %ekin}, i64 0, metadata !552), !dbg !553
  tail call void @llvm.dbg.value(metadata !{[3 x float]* %ekin}, i64 0, metadata !554), !dbg !553
  %arrayidx1.i = getelementptr inbounds %struct.t_grp_tcstat* %1, i64 %indvars.iv79, i32 2, i64 0, i64 0, !dbg !537
  %5 = load float* %arrayidx1.i, align 4, !dbg !537, !tbaa !405
  %6 = load float* %arrayidx3.i, align 4, !dbg !537, !tbaa !405
  %add.i = fadd float %5, %6, !dbg !537
  store float %add.i, float* %arrayidx3.i, align 4, !dbg !537, !tbaa !405
  %arrayidx7.i = getelementptr inbounds %struct.t_grp_tcstat* %1, i64 %indvars.iv79, i32 2, i64 0, i64 1, !dbg !542
  %7 = load float* %arrayidx7.i, align 4, !dbg !542, !tbaa !405
  %8 = load float* %arrayidx9.i, align 4, !dbg !542, !tbaa !405
  %add10.i = fadd float %7, %8, !dbg !542
  store float %add10.i, float* %arrayidx9.i, align 4, !dbg !542, !tbaa !405
  %arrayidx14.i = getelementptr inbounds %struct.t_grp_tcstat* %1, i64 %indvars.iv79, i32 2, i64 0, i64 2, !dbg !543
  %9 = load float* %arrayidx14.i, align 4, !dbg !543, !tbaa !405
  %10 = load float* %arrayidx16.i, align 4, !dbg !543, !tbaa !405
  %add17.i = fadd float %9, %10, !dbg !543
  store float %add17.i, float* %arrayidx16.i, align 4, !dbg !543, !tbaa !405
  %arrayidx21.i = getelementptr inbounds %struct.t_grp_tcstat* %1, i64 %indvars.iv79, i32 2, i64 1, i64 0, !dbg !544
  %11 = load float* %arrayidx21.i, align 4, !dbg !544, !tbaa !405
  %12 = load float* %arrayidx23.i, align 4, !dbg !544, !tbaa !405
  %add24.i = fadd float %11, %12, !dbg !544
  store float %add24.i, float* %arrayidx23.i, align 4, !dbg !544, !tbaa !405
  %arrayidx28.i = getelementptr inbounds %struct.t_grp_tcstat* %1, i64 %indvars.iv79, i32 2, i64 1, i64 1, !dbg !545
  %13 = load float* %arrayidx28.i, align 4, !dbg !545, !tbaa !405
  %14 = load float* %arrayidx30.i, align 4, !dbg !545, !tbaa !405
  %add31.i = fadd float %13, %14, !dbg !545
  store float %add31.i, float* %arrayidx30.i, align 4, !dbg !545, !tbaa !405
  %arrayidx35.i = getelementptr inbounds %struct.t_grp_tcstat* %1, i64 %indvars.iv79, i32 2, i64 1, i64 2, !dbg !546
  %15 = load float* %arrayidx35.i, align 4, !dbg !546, !tbaa !405
  %16 = load float* %arrayidx37.i, align 4, !dbg !546, !tbaa !405
  %add38.i = fadd float %15, %16, !dbg !546
  store float %add38.i, float* %arrayidx37.i, align 4, !dbg !546, !tbaa !405
  %arrayidx42.i = getelementptr inbounds %struct.t_grp_tcstat* %1, i64 %indvars.iv79, i32 2, i64 2, i64 0, !dbg !547
  %17 = load float* %arrayidx42.i, align 4, !dbg !547, !tbaa !405
  %18 = load float* %arrayidx44.i, align 4, !dbg !547, !tbaa !405
  %add45.i = fadd float %17, %18, !dbg !547
  store float %add45.i, float* %arrayidx44.i, align 4, !dbg !547, !tbaa !405
  %arrayidx49.i = getelementptr inbounds %struct.t_grp_tcstat* %1, i64 %indvars.iv79, i32 2, i64 2, i64 1, !dbg !548
  %19 = load float* %arrayidx49.i, align 4, !dbg !548, !tbaa !405
  %20 = load float* %arrayidx51.i, align 4, !dbg !548, !tbaa !405
  %add52.i = fadd float %19, %20, !dbg !548
  store float %add52.i, float* %arrayidx51.i, align 4, !dbg !548, !tbaa !405
  %arrayidx56.i = getelementptr inbounds %struct.t_grp_tcstat* %1, i64 %indvars.iv79, i32 2, i64 2, i64 2, !dbg !549
  %21 = load float* %arrayidx56.i, align 4, !dbg !549, !tbaa !405
  %22 = load float* %arrayidx58.i, align 4, !dbg !549, !tbaa !405
  %add59.i = fadd float %21, %22, !dbg !549
  store float %add59.i, float* %arrayidx58.i, align 4, !dbg !549, !tbaa !405
  call void @llvm.dbg.value(metadata !410, i64 0, metadata !307), !dbg !555
  call void @llvm.dbg.value(metadata !62, i64 0, metadata !303), !dbg !556
  br label %for.body17, !dbg !556

for.body17:                                       ; preds = %for.body17, %if.then11
  %indvars.iv = phi i64 [ 0, %if.then11 ], [ %indvars.iv.next, %for.body17 ]
  %ek.072 = phi float [ 0.000000e+00, %if.then11 ], [ %add, %for.body17 ]
  %arrayidx19 = getelementptr inbounds [3 x float]* %tfac, i64 0, i64 %indvars.iv, !dbg !558
  %23 = load float* %arrayidx19, align 4, !dbg !558, !tbaa !405
  %arrayidx26 = getelementptr inbounds %struct.t_grp_tcstat* %1, i64 %indvars.iv79, i32 2, i64 %indvars.iv, i64 %indvars.iv, !dbg !558
  %24 = load float* %arrayidx26, align 4, !dbg !558, !tbaa !405
  %mul27 = fmul float %23, %24, !dbg !558
  %add = fadd float %ek.072, %mul27, !dbg !558
  call void @llvm.dbg.value(metadata !{float %add}, i64 0, metadata !307), !dbg !558
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !556
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !556
  %exitcond = icmp eq i32 %lftr.wideiv, 3, !dbg !556
  br i1 %exitcond, label %for.end, label %for.body17, !dbg !556

for.end:                                          ; preds = %for.body17
  %call = call float @calc_temp(float %add, float %mul) #5, !dbg !559
  %T30 = getelementptr inbounds %struct.t_grp_tcstat* %arrayidx13, i64 0, i32 0, !dbg !559
  store float %call, float* %T30, align 4, !dbg !559, !tbaa !405
  br label %if.end35, !dbg !560

if.else31:                                        ; preds = %for.body
  %T34 = getelementptr inbounds %struct.t_grp_tcstat* %arrayidx13, i64 0, i32 0, !dbg !561
  store float 0.000000e+00, float* %T34, align 4, !dbg !561, !tbaa !405
  br label %if.end35

if.end35:                                         ; preds = %if.else31, %for.end
  %25 = phi float [ 0.000000e+00, %if.else31 ], [ %call, %for.end ]
  %mul39 = fmul float %mul, %25, !dbg !562
  %add40 = fadd float %T.075, %mul39, !dbg !562
  call void @llvm.dbg.value(metadata !{float %add40}, i64 0, metadata !305), !dbg !562
  %add41 = fadd float %nrdf.076, %mul, !dbg !563
  call void @llvm.dbg.value(metadata !{float %add41}, i64 0, metadata !310), !dbg !563
  %indvars.iv.next80 = add i64 %indvars.iv79, 1, !dbg !535
  %lftr.wideiv81 = trunc i64 %indvars.iv.next80 to i32, !dbg !535
  %exitcond82 = icmp eq i32 %lftr.wideiv81, %0, !dbg !535
  br i1 %exitcond82, label %for.end44, label %for.body, !dbg !535

for.end44:                                        ; preds = %if.end35
  %cmp45 = fcmp ogt float %add41, 0.000000e+00, !dbg !564
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !564

if.then46:                                        ; preds = %for.end44
  %div = fdiv float %add40, %add41, !dbg !565
  call void @llvm.dbg.value(metadata !{float %div}, i64 0, metadata !305), !dbg !565
  br label %if.end47, !dbg !565

if.end47:                                         ; preds = %if.end, %if.then46, %for.end44
  %T.1 = phi float [ %div, %if.then46 ], [ %add40, %for.end44 ], [ 0.000000e+00, %if.end ]
  ret float %T.1, !dbg !566
}

; Function Attrs: optsize
declare float @calc_temp(float, float) #2

; Function Attrs: nounwind optsize uwtable
define void @sum_epot(%struct.t_grpopts* nocapture %opts, %struct.t_groups* nocapture %grps, float* nocapture %epot) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.t_grpopts* %opts}, i64 0, metadata !317), !dbg !567
  tail call void @llvm.dbg.value(metadata !{%struct.t_groups* %grps}, i64 0, metadata !318), !dbg !567
  tail call void @llvm.dbg.value(metadata !{float* %epot}, i64 0, metadata !319), !dbg !567
  %nn = getelementptr inbounds %struct.t_groups* %grps, i64 0, i32 0, i32 0, !dbg !568
  %0 = load i32* %nn, align 4, !dbg !568, !tbaa !392
  %arrayidx = getelementptr inbounds %struct.t_groups* %grps, i64 0, i32 0, i32 1, i64 0, !dbg !568
  %1 = load float** %arrayidx, align 8, !dbg !568, !tbaa !395
  tail call void @llvm.dbg.value(metadata !{i32 %0}, i64 0, metadata !569), !dbg !570
  tail call void @llvm.dbg.value(metadata !{float* %1}, i64 0, metadata !571), !dbg !570
  tail call void @llvm.dbg.value(metadata !410, i64 0, metadata !572), !dbg !573
  tail call void @llvm.dbg.value(metadata !62, i64 0, metadata !574), !dbg !575
  %cmp3.i = icmp sgt i32 %0, 0, !dbg !575
  br i1 %cmp3.i, label %for.body.i, label %sum_v.exit.thread, !dbg !575

sum_v.exit.thread:                                ; preds = %entry
  %arrayidx2159 = getelementptr inbounds float* %epot, i64 17, !dbg !568
  store float 0.000000e+00, float* %arrayidx2159, align 4, !dbg !568, !tbaa !405
  tail call void @llvm.dbg.value(metadata !{i32 %0}, i64 0, metadata !577), !dbg !579
  tail call void @llvm.dbg.value(metadata !{float* %3}, i64 0, metadata !580), !dbg !579
  tail call void @llvm.dbg.value(metadata !410, i64 0, metadata !581), !dbg !582
  tail call void @llvm.dbg.value(metadata !62, i64 0, metadata !583), !dbg !584
  br label %sum_v.exit144.thread, !dbg !584

for.body.i:                                       ; preds = %entry, %for.body.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %for.body.i ], [ 0, %entry ]
  %t.04.i = phi float [ %add.i, %for.body.i ], [ 0.000000e+00, %entry ]
  %arrayidx.i = getelementptr inbounds float* %1, i64 %indvars.iv.i, !dbg !585
  %2 = load float* %arrayidx.i, align 4, !dbg !585, !tbaa !405
  %add.i = fadd float %t.04.i, %2, !dbg !585
  tail call void @llvm.dbg.value(metadata !{float %add.i}, i64 0, metadata !572), !dbg !585
  %indvars.iv.next.i = add i64 %indvars.iv.i, 1, !dbg !575
  %lftr.wideiv157 = trunc i64 %indvars.iv.next.i to i32, !dbg !575
  %exitcond158 = icmp eq i32 %lftr.wideiv157, %0, !dbg !575
  br i1 %exitcond158, label %sum_v.exit, label %for.body.i, !dbg !575

sum_v.exit:                                       ; preds = %for.body.i
  %arrayidx2 = getelementptr inbounds float* %epot, i64 17, !dbg !568
  store float %add.i, float* %arrayidx2, align 4, !dbg !568, !tbaa !405
  %arrayidx7 = getelementptr inbounds %struct.t_groups* %grps, i64 0, i32 0, i32 1, i64 1, !dbg !578
  %3 = load float** %arrayidx7, align 8, !dbg !578, !tbaa !395
  tail call void @llvm.dbg.value(metadata !{i32 %0}, i64 0, metadata !577), !dbg !579
  tail call void @llvm.dbg.value(metadata !{float* %3}, i64 0, metadata !580), !dbg !579
  tail call void @llvm.dbg.value(metadata !410, i64 0, metadata !581), !dbg !582
  tail call void @llvm.dbg.value(metadata !62, i64 0, metadata !583), !dbg !584
  br i1 %cmp3.i, label %for.body.i142, label %sum_v.exit144.thread, !dbg !584

for.body.i142:                                    ; preds = %sum_v.exit, %for.body.i142
  %indvars.iv.i135 = phi i64 [ %indvars.iv.next.i139, %for.body.i142 ], [ 0, %sum_v.exit ]
  %t.04.i136 = phi float [ %add.i138, %for.body.i142 ], [ 0.000000e+00, %sum_v.exit ]
  %arrayidx.i137 = getelementptr inbounds float* %3, i64 %indvars.iv.i135, !dbg !586
  %4 = load float* %arrayidx.i137, align 4, !dbg !586, !tbaa !405
  %add.i138 = fadd float %t.04.i136, %4, !dbg !586
  tail call void @llvm.dbg.value(metadata !{float %add.i138}, i64 0, metadata !581), !dbg !586
  %indvars.iv.next.i139 = add i64 %indvars.iv.i135, 1, !dbg !584
  %lftr.wideiv155 = trunc i64 %indvars.iv.next.i139 to i32, !dbg !584
  %exitcond156 = icmp eq i32 %lftr.wideiv155, %0, !dbg !584
  br i1 %exitcond156, label %sum_v.exit144, label %for.body.i142, !dbg !584

sum_v.exit144.thread:                             ; preds = %sum_v.exit.thread, %sum_v.exit
  %arrayidx9161 = getelementptr inbounds float* %epot, i64 13, !dbg !578
  store float 0.000000e+00, float* %arrayidx9161, align 4, !dbg !578, !tbaa !405
  tail call void @llvm.dbg.value(metadata !{i32 %0}, i64 0, metadata !587), !dbg !589
  tail call void @llvm.dbg.value(metadata !{float* %5}, i64 0, metadata !590), !dbg !589
  tail call void @llvm.dbg.value(metadata !410, i64 0, metadata !591), !dbg !592
  tail call void @llvm.dbg.value(metadata !62, i64 0, metadata !593), !dbg !594
  br label %sum_v.exit133, !dbg !594

sum_v.exit144:                                    ; preds = %for.body.i142
  %arrayidx9 = getelementptr inbounds float* %epot, i64 13, !dbg !578
  store float %add.i138, float* %arrayidx9, align 4, !dbg !578, !tbaa !405
  %arrayidx14 = getelementptr inbounds %struct.t_groups* %grps, i64 0, i32 0, i32 1, i64 6, !dbg !588
  %5 = load float** %arrayidx14, align 8, !dbg !588, !tbaa !395
  tail call void @llvm.dbg.value(metadata !{i32 %0}, i64 0, metadata !587), !dbg !589
  tail call void @llvm.dbg.value(metadata !{float* %5}, i64 0, metadata !590), !dbg !589
  tail call void @llvm.dbg.value(metadata !410, i64 0, metadata !591), !dbg !592
  tail call void @llvm.dbg.value(metadata !62, i64 0, metadata !593), !dbg !594
  br i1 %cmp3.i, label %for.body.i131, label %sum_v.exit133.thread, !dbg !594

sum_v.exit133.thread:                             ; preds = %sum_v.exit144
  %arrayidx16163 = getelementptr inbounds float* %epot, i64 11, !dbg !588
  store float 0.000000e+00, float* %arrayidx16163, align 4, !dbg !588, !tbaa !405
  tail call void @llvm.dbg.value(metadata !{i32 %0}, i64 0, metadata !595), !dbg !597
  tail call void @llvm.dbg.value(metadata !{float* %7}, i64 0, metadata !598), !dbg !597
  tail call void @llvm.dbg.value(metadata !410, i64 0, metadata !599), !dbg !600
  tail call void @llvm.dbg.value(metadata !62, i64 0, metadata !601), !dbg !602
  br label %sum_v.exit122.thread, !dbg !602

for.body.i131:                                    ; preds = %sum_v.exit144, %for.body.i131
  %indvars.iv.i124 = phi i64 [ %indvars.iv.next.i128, %for.body.i131 ], [ 0, %sum_v.exit144 ]
  %t.04.i125 = phi float [ %add.i127, %for.body.i131 ], [ 0.000000e+00, %sum_v.exit144 ]
  %arrayidx.i126 = getelementptr inbounds float* %5, i64 %indvars.iv.i124, !dbg !603
  %6 = load float* %arrayidx.i126, align 4, !dbg !603, !tbaa !405
  %add.i127 = fadd float %t.04.i125, %6, !dbg !603
  tail call void @llvm.dbg.value(metadata !{float %add.i127}, i64 0, metadata !591), !dbg !603
  %indvars.iv.next.i128 = add i64 %indvars.iv.i124, 1, !dbg !594
  %lftr.wideiv153 = trunc i64 %indvars.iv.next.i128 to i32, !dbg !594
  %exitcond154 = icmp eq i32 %lftr.wideiv153, %0, !dbg !594
  br i1 %exitcond154, label %sum_v.exit133, label %for.body.i131, !dbg !594

sum_v.exit133:                                    ; preds = %for.body.i131, %sum_v.exit144.thread
  %t.0.lcssa.i132 = phi float [ 0.000000e+00, %sum_v.exit144.thread ], [ %add.i127, %for.body.i131 ]
  %arrayidx16 = getelementptr inbounds float* %epot, i64 11, !dbg !588
  store float %t.0.lcssa.i132, float* %arrayidx16, align 4, !dbg !588, !tbaa !405
  %arrayidx21 = getelementptr inbounds %struct.t_groups* %grps, i64 0, i32 0, i32 1, i64 5, !dbg !596
  %7 = load float** %arrayidx21, align 8, !dbg !596, !tbaa !395
  tail call void @llvm.dbg.value(metadata !{i32 %0}, i64 0, metadata !595), !dbg !597
  tail call void @llvm.dbg.value(metadata !{float* %7}, i64 0, metadata !598), !dbg !597
  tail call void @llvm.dbg.value(metadata !410, i64 0, metadata !599), !dbg !600
  tail call void @llvm.dbg.value(metadata !62, i64 0, metadata !601), !dbg !602
  br i1 %cmp3.i, label %for.body.i120, label %sum_v.exit122.thread, !dbg !602

for.body.i120:                                    ; preds = %sum_v.exit133, %for.body.i120
  %indvars.iv.i113 = phi i64 [ %indvars.iv.next.i117, %for.body.i120 ], [ 0, %sum_v.exit133 ]
  %t.04.i114 = phi float [ %add.i116, %for.body.i120 ], [ 0.000000e+00, %sum_v.exit133 ]
  %arrayidx.i115 = getelementptr inbounds float* %7, i64 %indvars.iv.i113, !dbg !604
  %8 = load float* %arrayidx.i115, align 4, !dbg !604, !tbaa !405
  %add.i116 = fadd float %t.04.i114, %8, !dbg !604
  tail call void @llvm.dbg.value(metadata !{float %add.i116}, i64 0, metadata !599), !dbg !604
  %indvars.iv.next.i117 = add i64 %indvars.iv.i113, 1, !dbg !602
  %lftr.wideiv151 = trunc i64 %indvars.iv.next.i117 to i32, !dbg !602
  %exitcond152 = icmp eq i32 %lftr.wideiv151, %0, !dbg !602
  br i1 %exitcond152, label %sum_v.exit122, label %for.body.i120, !dbg !602

sum_v.exit122.thread:                             ; preds = %sum_v.exit133.thread, %sum_v.exit133
  %arrayidx23165 = getelementptr inbounds float* %epot, i64 12, !dbg !596
  store float 0.000000e+00, float* %arrayidx23165, align 4, !dbg !596, !tbaa !405
  tail call void @llvm.dbg.value(metadata !{i32 %0}, i64 0, metadata !605), !dbg !607
  tail call void @llvm.dbg.value(metadata !{float* %9}, i64 0, metadata !608), !dbg !607
  tail call void @llvm.dbg.value(metadata !410, i64 0, metadata !609), !dbg !610
  tail call void @llvm.dbg.value(metadata !62, i64 0, metadata !611), !dbg !612
  br label %sum_v.exit111, !dbg !612

sum_v.exit122:                                    ; preds = %for.body.i120
  %arrayidx23 = getelementptr inbounds float* %epot, i64 12, !dbg !596
  store float %add.i116, float* %arrayidx23, align 4, !dbg !596, !tbaa !405
  %arrayidx28 = getelementptr inbounds %struct.t_groups* %grps, i64 0, i32 0, i32 1, i64 3, !dbg !606
  %9 = load float** %arrayidx28, align 8, !dbg !606, !tbaa !395
  tail call void @llvm.dbg.value(metadata !{i32 %0}, i64 0, metadata !605), !dbg !607
  tail call void @llvm.dbg.value(metadata !{float* %9}, i64 0, metadata !608), !dbg !607
  tail call void @llvm.dbg.value(metadata !410, i64 0, metadata !609), !dbg !610
  tail call void @llvm.dbg.value(metadata !62, i64 0, metadata !611), !dbg !612
  br i1 %cmp3.i, label %for.body.i109, label %sum_v.exit111.thread, !dbg !612

sum_v.exit111.thread:                             ; preds = %sum_v.exit122
  %arrayidx30167 = getelementptr inbounds float* %epot, i64 18, !dbg !606
  %10 = load float* %arrayidx30167, align 4, !dbg !606, !tbaa !405
  %add168 = fadd float %10, 0.000000e+00, !dbg !606
  store float %add168, float* %arrayidx30167, align 4, !dbg !606, !tbaa !405
  tail call void @llvm.dbg.value(metadata !{i32 %0}, i64 0, metadata !613), !dbg !615
  tail call void @llvm.dbg.value(metadata !{float* %13}, i64 0, metadata !616), !dbg !615
  tail call void @llvm.dbg.value(metadata !410, i64 0, metadata !617), !dbg !618
  tail call void @llvm.dbg.value(metadata !62, i64 0, metadata !619), !dbg !620
  br label %sum_v.exit100.thread, !dbg !620

for.body.i109:                                    ; preds = %sum_v.exit122, %for.body.i109
  %indvars.iv.i102 = phi i64 [ %indvars.iv.next.i106, %for.body.i109 ], [ 0, %sum_v.exit122 ]
  %t.04.i103 = phi float [ %add.i105, %for.body.i109 ], [ 0.000000e+00, %sum_v.exit122 ]
  %arrayidx.i104 = getelementptr inbounds float* %9, i64 %indvars.iv.i102, !dbg !621
  %11 = load float* %arrayidx.i104, align 4, !dbg !621, !tbaa !405
  %add.i105 = fadd float %t.04.i103, %11, !dbg !621
  tail call void @llvm.dbg.value(metadata !{float %add.i105}, i64 0, metadata !609), !dbg !621
  %indvars.iv.next.i106 = add i64 %indvars.iv.i102, 1, !dbg !612
  %lftr.wideiv149 = trunc i64 %indvars.iv.next.i106 to i32, !dbg !612
  %exitcond150 = icmp eq i32 %lftr.wideiv149, %0, !dbg !612
  br i1 %exitcond150, label %sum_v.exit111, label %for.body.i109, !dbg !612

sum_v.exit111:                                    ; preds = %for.body.i109, %sum_v.exit122.thread
  %t.0.lcssa.i110 = phi float [ 0.000000e+00, %sum_v.exit122.thread ], [ %add.i105, %for.body.i109 ]
  %arrayidx30 = getelementptr inbounds float* %epot, i64 18, !dbg !606
  %12 = load float* %arrayidx30, align 4, !dbg !606, !tbaa !405
  %add = fadd float %t.0.lcssa.i110, %12, !dbg !606
  store float %add, float* %arrayidx30, align 4, !dbg !606, !tbaa !405
  %arrayidx35 = getelementptr inbounds %struct.t_groups* %grps, i64 0, i32 0, i32 1, i64 4, !dbg !614
  %13 = load float** %arrayidx35, align 8, !dbg !614, !tbaa !395
  tail call void @llvm.dbg.value(metadata !{i32 %0}, i64 0, metadata !613), !dbg !615
  tail call void @llvm.dbg.value(metadata !{float* %13}, i64 0, metadata !616), !dbg !615
  tail call void @llvm.dbg.value(metadata !410, i64 0, metadata !617), !dbg !618
  tail call void @llvm.dbg.value(metadata !62, i64 0, metadata !619), !dbg !620
  br i1 %cmp3.i, label %for.body.i98, label %sum_v.exit100.thread, !dbg !620

for.body.i98:                                     ; preds = %sum_v.exit111, %for.body.i98
  %indvars.iv.i91 = phi i64 [ %indvars.iv.next.i95, %for.body.i98 ], [ 0, %sum_v.exit111 ]
  %t.04.i92 = phi float [ %add.i94, %for.body.i98 ], [ 0.000000e+00, %sum_v.exit111 ]
  %arrayidx.i93 = getelementptr inbounds float* %13, i64 %indvars.iv.i91, !dbg !622
  %14 = load float* %arrayidx.i93, align 4, !dbg !622, !tbaa !405
  %add.i94 = fadd float %t.04.i92, %14, !dbg !622
  tail call void @llvm.dbg.value(metadata !{float %add.i94}, i64 0, metadata !617), !dbg !622
  %indvars.iv.next.i95 = add i64 %indvars.iv.i91, 1, !dbg !620
  %lftr.wideiv147 = trunc i64 %indvars.iv.next.i95 to i32, !dbg !620
  %exitcond148 = icmp eq i32 %lftr.wideiv147, %0, !dbg !620
  br i1 %exitcond148, label %sum_v.exit100, label %for.body.i98, !dbg !620

sum_v.exit100.thread:                             ; preds = %sum_v.exit111.thread, %sum_v.exit111
  %arrayidx37170 = getelementptr inbounds float* %epot, i64 15, !dbg !614
  %15 = load float* %arrayidx37170, align 4, !dbg !614, !tbaa !405
  %add38171 = fadd float %15, 0.000000e+00, !dbg !614
  store float %add38171, float* %arrayidx37170, align 4, !dbg !614, !tbaa !405
  tail call void @llvm.dbg.value(metadata !{i32 %0}, i64 0, metadata !623), !dbg !625
  tail call void @llvm.dbg.value(metadata !{float* %17}, i64 0, metadata !626), !dbg !625
  tail call void @llvm.dbg.value(metadata !410, i64 0, metadata !627), !dbg !628
  tail call void @llvm.dbg.value(metadata !62, i64 0, metadata !629), !dbg !630
  br label %sum_v.exit89, !dbg !630

sum_v.exit100:                                    ; preds = %for.body.i98
  %arrayidx37 = getelementptr inbounds float* %epot, i64 15, !dbg !614
  %16 = load float* %arrayidx37, align 4, !dbg !614, !tbaa !405
  %add38 = fadd float %add.i94, %16, !dbg !614
  store float %add38, float* %arrayidx37, align 4, !dbg !614, !tbaa !405
  %arrayidx43 = getelementptr inbounds %struct.t_groups* %grps, i64 0, i32 0, i32 1, i64 2, !dbg !624
  %17 = load float** %arrayidx43, align 8, !dbg !624, !tbaa !395
  tail call void @llvm.dbg.value(metadata !{i32 %0}, i64 0, metadata !623), !dbg !625
  tail call void @llvm.dbg.value(metadata !{float* %17}, i64 0, metadata !626), !dbg !625
  tail call void @llvm.dbg.value(metadata !410, i64 0, metadata !627), !dbg !628
  tail call void @llvm.dbg.value(metadata !62, i64 0, metadata !629), !dbg !630
  br i1 %cmp3.i, label %for.body.i87, label %sum_v.exit89, !dbg !630

for.body.i87:                                     ; preds = %sum_v.exit100, %for.body.i87
  %indvars.iv.i80 = phi i64 [ %indvars.iv.next.i84, %for.body.i87 ], [ 0, %sum_v.exit100 ]
  %t.04.i81 = phi float [ %add.i83, %for.body.i87 ], [ 0.000000e+00, %sum_v.exit100 ]
  %arrayidx.i82 = getelementptr inbounds float* %17, i64 %indvars.iv.i80, !dbg !631
  %18 = load float* %arrayidx.i82, align 4, !dbg !631, !tbaa !405
  %add.i83 = fadd float %t.04.i81, %18, !dbg !631
  tail call void @llvm.dbg.value(metadata !{float %add.i83}, i64 0, metadata !627), !dbg !631
  %indvars.iv.next.i84 = add i64 %indvars.iv.i80, 1, !dbg !630
  %lftr.wideiv145 = trunc i64 %indvars.iv.next.i84 to i32, !dbg !630
  %exitcond146 = icmp eq i32 %lftr.wideiv145, %0, !dbg !630
  br i1 %exitcond146, label %sum_v.exit89, label %for.body.i87, !dbg !630

sum_v.exit89:                                     ; preds = %for.body.i87, %sum_v.exit100.thread, %sum_v.exit100
  %t.0.lcssa.i88 = phi float [ 0.000000e+00, %sum_v.exit100 ], [ 0.000000e+00, %sum_v.exit100.thread ], [ %add.i83, %for.body.i87 ]
  %arrayidx45 = getelementptr inbounds float* %epot, i64 14, !dbg !624
  store float %t.0.lcssa.i88, float* %arrayidx45, align 4, !dbg !624, !tbaa !405
  tail call void @llvm.dbg.value(metadata !632, i64 0, metadata !633), !dbg !635
  tail call void @llvm.dbg.value(metadata !{float* %epot}, i64 0, metadata !636), !dbg !635
  tail call void @llvm.dbg.value(metadata !410, i64 0, metadata !637), !dbg !638
  tail call void @llvm.dbg.value(metadata !62, i64 0, metadata !639), !dbg !640
  br label %for.body.i76

for.body.i76:                                     ; preds = %for.body.i76, %sum_v.exit89
  %indvars.iv.i69 = phi i64 [ %indvars.iv.next.i73, %for.body.i76 ], [ 0, %sum_v.exit89 ]
  %t.04.i70 = phi float [ %add.i72, %for.body.i76 ], [ 0.000000e+00, %sum_v.exit89 ]
  %arrayidx.i71 = getelementptr inbounds float* %epot, i64 %indvars.iv.i69, !dbg !641
  %19 = load float* %arrayidx.i71, align 4, !dbg !641, !tbaa !405
  %add.i72 = fadd float %t.04.i70, %19, !dbg !641
  tail call void @llvm.dbg.value(metadata !{float %add.i72}, i64 0, metadata !637), !dbg !641
  %indvars.iv.next.i73 = add i64 %indvars.iv.i69, 1, !dbg !640
  %lftr.wideiv = trunc i64 %indvars.iv.next.i73 to i32, !dbg !640
  %exitcond = icmp eq i32 %lftr.wideiv, 37, !dbg !640
  br i1 %exitcond, label %sum_v.exit78, label %for.body.i76, !dbg !640

sum_v.exit78:                                     ; preds = %for.body.i76
  %arrayidx47 = getelementptr inbounds float* %epot, i64 37, !dbg !634
  store float %add.i72, float* %arrayidx47, align 4, !dbg !634, !tbaa !405
  ret void, !dbg !642
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #4

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !62, metadata !63, metadata !378, metadata !62, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/tgroup.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/tgroup.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{metadata !3, metadata !14}
!3 = metadata !{i32 786436, metadata !4, null, metadata !"", i32 36, i64 32, i64 32, i32 0, i32 0, null, metadata !5, i32 0, i32 0} ; [ DW_TAG_enumeration_type ] [line 36, size 32, align 32, offset 0] [from ]
!4 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/types/group.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!5 = metadata !{metadata !6, metadata !7, metadata !8, metadata !9, metadata !10, metadata !11, metadata !12, metadata !13}
!6 = metadata !{i32 786472, metadata !"egCOUL", i64 0} ; [ DW_TAG_enumerator ] [egCOUL :: 0]
!7 = metadata !{i32 786472, metadata !"egLJ", i64 1} ; [ DW_TAG_enumerator ] [egLJ :: 1]
!8 = metadata !{i32 786472, metadata !"egBHAM", i64 2} ; [ DW_TAG_enumerator ] [egBHAM :: 2]
!9 = metadata !{i32 786472, metadata !"egLR", i64 3} ; [ DW_TAG_enumerator ] [egLR :: 3]
!10 = metadata !{i32 786472, metadata !"egLJLR", i64 4} ; [ DW_TAG_enumerator ] [egLJLR :: 4]
!11 = metadata !{i32 786472, metadata !"egCOUL14", i64 5} ; [ DW_TAG_enumerator ] [egCOUL14 :: 5]
!12 = metadata !{i32 786472, metadata !"egLJ14", i64 6} ; [ DW_TAG_enumerator ] [egLJ14 :: 6]
!13 = metadata !{i32 786472, metadata !"egNR", i64 7} ; [ DW_TAG_enumerator ] [egNR :: 7]
!14 = metadata !{i32 786436, metadata !15, null, metadata !"", i32 49, i64 32, i64 32, i32 0, i32 0, null, metadata !16, i32 0, i32 0} ; [ DW_TAG_enumeration_type ] [line 49, size 32, align 32, offset 0] [from ]
!15 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/types/idef.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!16 = metadata !{metadata !17, metadata !18, metadata !19, metadata !20, metadata !21, metadata !22, metadata !23, metadata !24, metadata !25, metadata !26, metadata !27, metadata !28, metadata !29, metadata !30, metadata !31, metadata !32, metadata !33, metadata !34, metadata !35, metadata !36, metadata !37, metadata !38, metadata !39, metadata !40, metadata !41, metadata !42, metadata !43, metadata !44, metadata !45, metadata !46, metadata !47, metadata !48, metadata !49, metadata !50, metadata !51, metadata !52, metadata !53, metadata !54, metadata !55, metadata !56, metadata !57, metadata !58, metadata !59, metadata !60, metadata !61}
!17 = metadata !{i32 786472, metadata !"F_BONDS", i64 0} ; [ DW_TAG_enumerator ] [F_BONDS :: 0]
!18 = metadata !{i32 786472, metadata !"F_G96BONDS", i64 1} ; [ DW_TAG_enumerator ] [F_G96BONDS :: 1]
!19 = metadata !{i32 786472, metadata !"F_MORSE", i64 2} ; [ DW_TAG_enumerator ] [F_MORSE :: 2]
!20 = metadata !{i32 786472, metadata !"F_CUBICBONDS", i64 3} ; [ DW_TAG_enumerator ] [F_CUBICBONDS :: 3]
!21 = metadata !{i32 786472, metadata !"F_CONNBONDS", i64 4} ; [ DW_TAG_enumerator ] [F_CONNBONDS :: 4]
!22 = metadata !{i32 786472, metadata !"F_HARMONIC", i64 5} ; [ DW_TAG_enumerator ] [F_HARMONIC :: 5]
!23 = metadata !{i32 786472, metadata !"F_ANGLES", i64 6} ; [ DW_TAG_enumerator ] [F_ANGLES :: 6]
!24 = metadata !{i32 786472, metadata !"F_G96ANGLES", i64 7} ; [ DW_TAG_enumerator ] [F_G96ANGLES :: 7]
!25 = metadata !{i32 786472, metadata !"F_PDIHS", i64 8} ; [ DW_TAG_enumerator ] [F_PDIHS :: 8]
!26 = metadata !{i32 786472, metadata !"F_RBDIHS", i64 9} ; [ DW_TAG_enumerator ] [F_RBDIHS :: 9]
!27 = metadata !{i32 786472, metadata !"F_IDIHS", i64 10} ; [ DW_TAG_enumerator ] [F_IDIHS :: 10]
!28 = metadata !{i32 786472, metadata !"F_LJ14", i64 11} ; [ DW_TAG_enumerator ] [F_LJ14 :: 11]
!29 = metadata !{i32 786472, metadata !"F_COUL14", i64 12} ; [ DW_TAG_enumerator ] [F_COUL14 :: 12]
!30 = metadata !{i32 786472, metadata !"F_LJ", i64 13} ; [ DW_TAG_enumerator ] [F_LJ :: 13]
!31 = metadata !{i32 786472, metadata !"F_BHAM", i64 14} ; [ DW_TAG_enumerator ] [F_BHAM :: 14]
!32 = metadata !{i32 786472, metadata !"F_LJLR", i64 15} ; [ DW_TAG_enumerator ] [F_LJLR :: 15]
!33 = metadata !{i32 786472, metadata !"F_DISPCORR", i64 16} ; [ DW_TAG_enumerator ] [F_DISPCORR :: 16]
!34 = metadata !{i32 786472, metadata !"F_SR", i64 17} ; [ DW_TAG_enumerator ] [F_SR :: 17]
!35 = metadata !{i32 786472, metadata !"F_LR", i64 18} ; [ DW_TAG_enumerator ] [F_LR :: 18]
!36 = metadata !{i32 786472, metadata !"F_WPOL", i64 19} ; [ DW_TAG_enumerator ] [F_WPOL :: 19]
!37 = metadata !{i32 786472, metadata !"F_POSRES", i64 20} ; [ DW_TAG_enumerator ] [F_POSRES :: 20]
!38 = metadata !{i32 786472, metadata !"F_DISRES", i64 21} ; [ DW_TAG_enumerator ] [F_DISRES :: 21]
!39 = metadata !{i32 786472, metadata !"F_DISRESVIOL", i64 22} ; [ DW_TAG_enumerator ] [F_DISRESVIOL :: 22]
!40 = metadata !{i32 786472, metadata !"F_ORIRES", i64 23} ; [ DW_TAG_enumerator ] [F_ORIRES :: 23]
!41 = metadata !{i32 786472, metadata !"F_ORIRESDEV", i64 24} ; [ DW_TAG_enumerator ] [F_ORIRESDEV :: 24]
!42 = metadata !{i32 786472, metadata !"F_ANGRES", i64 25} ; [ DW_TAG_enumerator ] [F_ANGRES :: 25]
!43 = metadata !{i32 786472, metadata !"F_ANGRESZ", i64 26} ; [ DW_TAG_enumerator ] [F_ANGRESZ :: 26]
!44 = metadata !{i32 786472, metadata !"F_SHAKE", i64 27} ; [ DW_TAG_enumerator ] [F_SHAKE :: 27]
!45 = metadata !{i32 786472, metadata !"F_SHAKENC", i64 28} ; [ DW_TAG_enumerator ] [F_SHAKENC :: 28]
!46 = metadata !{i32 786472, metadata !"F_SETTLE", i64 29} ; [ DW_TAG_enumerator ] [F_SETTLE :: 29]
!47 = metadata !{i32 786472, metadata !"F_DUMMY2", i64 30} ; [ DW_TAG_enumerator ] [F_DUMMY2 :: 30]
!48 = metadata !{i32 786472, metadata !"F_DUMMY3", i64 31} ; [ DW_TAG_enumerator ] [F_DUMMY3 :: 31]
!49 = metadata !{i32 786472, metadata !"F_DUMMY3FD", i64 32} ; [ DW_TAG_enumerator ] [F_DUMMY3FD :: 32]
!50 = metadata !{i32 786472, metadata !"F_DUMMY3FAD", i64 33} ; [ DW_TAG_enumerator ] [F_DUMMY3FAD :: 33]
!51 = metadata !{i32 786472, metadata !"F_DUMMY3OUT", i64 34} ; [ DW_TAG_enumerator ] [F_DUMMY3OUT :: 34]
!52 = metadata !{i32 786472, metadata !"F_DUMMY4FD", i64 35} ; [ DW_TAG_enumerator ] [F_DUMMY4FD :: 35]
!53 = metadata !{i32 786472, metadata !"F_EQM", i64 36} ; [ DW_TAG_enumerator ] [F_EQM :: 36]
!54 = metadata !{i32 786472, metadata !"F_EPOT", i64 37} ; [ DW_TAG_enumerator ] [F_EPOT :: 37]
!55 = metadata !{i32 786472, metadata !"F_EKIN", i64 38} ; [ DW_TAG_enumerator ] [F_EKIN :: 38]
!56 = metadata !{i32 786472, metadata !"F_ETOT", i64 39} ; [ DW_TAG_enumerator ] [F_ETOT :: 39]
!57 = metadata !{i32 786472, metadata !"F_TEMP", i64 40} ; [ DW_TAG_enumerator ] [F_TEMP :: 40]
!58 = metadata !{i32 786472, metadata !"F_PRES", i64 41} ; [ DW_TAG_enumerator ] [F_PRES :: 41]
!59 = metadata !{i32 786472, metadata !"F_DVDL", i64 42} ; [ DW_TAG_enumerator ] [F_DVDL :: 42]
!60 = metadata !{i32 786472, metadata !"F_DVDLKIN", i64 43} ; [ DW_TAG_enumerator ] [F_DVDLKIN :: 43]
!61 = metadata !{i32 786472, metadata !"F_NRE", i64 44} ; [ DW_TAG_enumerator ] [F_NRE :: 44]
!62 = metadata !{i32 0}
!63 = metadata !{metadata !64, metadata !234, metadata !242, metadata !259, metadata !278, metadata !293, metadata !313, metadata !320, metadata !328, metadata !337, metadata !344, metadata !349, metadata !359, metadata !370}
!64 = metadata !{i32 786478, metadata !1, metadata !65, metadata !"init_groups", metadata !"init_groups", metadata !"", i32 106, metadata !66, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._IO_FILE*, %struct.t_mdatoms*, %struct.t_grpopts*, %struct.t_groups*)* @init_groups, null, null, metadata !228, i32 107} ; [ DW_TAG_subprogram ] [line 106] [def] [scope 107] [init_groups]
!65 = metadata !{i32 786473, metadata !1}         ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/tgroup.c]
!66 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !67, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!67 = metadata !{null, metadata !68, metadata !126, metadata !159, metadata !182}
!68 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !69} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from FILE]
!69 = metadata !{i32 786454, metadata !1, null, metadata !"FILE", i32 48, i64 0, i64 0, i64 0, i32 0, metadata !70} ; [ DW_TAG_typedef ] [FILE] [line 48, size 0, align 0, offset 0] [from _IO_FILE]
!70 = metadata !{i32 786451, metadata !71, null, metadata !"_IO_FILE", i32 245, i64 1728, i64 64, i32 0, i32 0, null, metadata !72, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IO_FILE] [line 245, size 1728, align 64, offset 0] [from ]
!71 = metadata !{metadata !"/usr/include/libio.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!72 = metadata !{metadata !73, metadata !75, metadata !78, metadata !79, metadata !80, metadata !81, metadata !82, metadata !83, metadata !84, metadata !85, metadata !86, metadata !87, metadata !88, metadata !96, metadata !97, metadata !98, metadata !99, metadata !102, metadata !104, metadata !106, metadata !110, metadata !112, metadata !114, metadata !115, metadata !116, metadata !117, metadata !118, metadata !121, metadata !122}
!73 = metadata !{i32 786445, metadata !71, metadata !70, metadata !"_flags", i32 246, i64 32, i64 32, i64 0, i32 0, metadata !74} ; [ DW_TAG_member ] [_flags] [line 246, size 32, align 32, offset 0] [from int]
!74 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!75 = metadata !{i32 786445, metadata !71, metadata !70, metadata !"_IO_read_ptr", i32 251, i64 64, i64 64, i64 64, i32 0, metadata !76} ; [ DW_TAG_member ] [_IO_read_ptr] [line 251, size 64, align 64, offset 64] [from ]
!76 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !77} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!77 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!78 = metadata !{i32 786445, metadata !71, metadata !70, metadata !"_IO_read_end", i32 252, i64 64, i64 64, i64 128, i32 0, metadata !76} ; [ DW_TAG_member ] [_IO_read_end] [line 252, size 64, align 64, offset 128] [from ]
!79 = metadata !{i32 786445, metadata !71, metadata !70, metadata !"_IO_read_base", i32 253, i64 64, i64 64, i64 192, i32 0, metadata !76} ; [ DW_TAG_member ] [_IO_read_base] [line 253, size 64, align 64, offset 192] [from ]
!80 = metadata !{i32 786445, metadata !71, metadata !70, metadata !"_IO_write_base", i32 254, i64 64, i64 64, i64 256, i32 0, metadata !76} ; [ DW_TAG_member ] [_IO_write_base] [line 254, size 64, align 64, offset 256] [from ]
!81 = metadata !{i32 786445, metadata !71, metadata !70, metadata !"_IO_write_ptr", i32 255, i64 64, i64 64, i64 320, i32 0, metadata !76} ; [ DW_TAG_member ] [_IO_write_ptr] [line 255, size 64, align 64, offset 320] [from ]
!82 = metadata !{i32 786445, metadata !71, metadata !70, metadata !"_IO_write_end", i32 256, i64 64, i64 64, i64 384, i32 0, metadata !76} ; [ DW_TAG_member ] [_IO_write_end] [line 256, size 64, align 64, offset 384] [from ]
!83 = metadata !{i32 786445, metadata !71, metadata !70, metadata !"_IO_buf_base", i32 257, i64 64, i64 64, i64 448, i32 0, metadata !76} ; [ DW_TAG_member ] [_IO_buf_base] [line 257, size 64, align 64, offset 448] [from ]
!84 = metadata !{i32 786445, metadata !71, metadata !70, metadata !"_IO_buf_end", i32 258, i64 64, i64 64, i64 512, i32 0, metadata !76} ; [ DW_TAG_member ] [_IO_buf_end] [line 258, size 64, align 64, offset 512] [from ]
!85 = metadata !{i32 786445, metadata !71, metadata !70, metadata !"_IO_save_base", i32 260, i64 64, i64 64, i64 576, i32 0, metadata !76} ; [ DW_TAG_member ] [_IO_save_base] [line 260, size 64, align 64, offset 576] [from ]
!86 = metadata !{i32 786445, metadata !71, metadata !70, metadata !"_IO_backup_base", i32 261, i64 64, i64 64, i64 640, i32 0, metadata !76} ; [ DW_TAG_member ] [_IO_backup_base] [line 261, size 64, align 64, offset 640] [from ]
!87 = metadata !{i32 786445, metadata !71, metadata !70, metadata !"_IO_save_end", i32 262, i64 64, i64 64, i64 704, i32 0, metadata !76} ; [ DW_TAG_member ] [_IO_save_end] [line 262, size 64, align 64, offset 704] [from ]
!88 = metadata !{i32 786445, metadata !71, metadata !70, metadata !"_markers", i32 264, i64 64, i64 64, i64 768, i32 0, metadata !89} ; [ DW_TAG_member ] [_markers] [line 264, size 64, align 64, offset 768] [from ]
!89 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !90} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_marker]
!90 = metadata !{i32 786451, metadata !71, null, metadata !"_IO_marker", i32 160, i64 192, i64 64, i32 0, i32 0, null, metadata !91, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IO_marker] [line 160, size 192, align 64, offset 0] [from ]
!91 = metadata !{metadata !92, metadata !93, metadata !95}
!92 = metadata !{i32 786445, metadata !71, metadata !90, metadata !"_next", i32 161, i64 64, i64 64, i64 0, i32 0, metadata !89} ; [ DW_TAG_member ] [_next] [line 161, size 64, align 64, offset 0] [from ]
!93 = metadata !{i32 786445, metadata !71, metadata !90, metadata !"_sbuf", i32 162, i64 64, i64 64, i64 64, i32 0, metadata !94} ; [ DW_TAG_member ] [_sbuf] [line 162, size 64, align 64, offset 64] [from ]
!94 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !70} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_FILE]
!95 = metadata !{i32 786445, metadata !71, metadata !90, metadata !"_pos", i32 166, i64 32, i64 32, i64 128, i32 0, metadata !74} ; [ DW_TAG_member ] [_pos] [line 166, size 32, align 32, offset 128] [from int]
!96 = metadata !{i32 786445, metadata !71, metadata !70, metadata !"_chain", i32 266, i64 64, i64 64, i64 832, i32 0, metadata !94} ; [ DW_TAG_member ] [_chain] [line 266, size 64, align 64, offset 832] [from ]
!97 = metadata !{i32 786445, metadata !71, metadata !70, metadata !"_fileno", i32 268, i64 32, i64 32, i64 896, i32 0, metadata !74} ; [ DW_TAG_member ] [_fileno] [line 268, size 32, align 32, offset 896] [from int]
!98 = metadata !{i32 786445, metadata !71, metadata !70, metadata !"_flags2", i32 272, i64 32, i64 32, i64 928, i32 0, metadata !74} ; [ DW_TAG_member ] [_flags2] [line 272, size 32, align 32, offset 928] [from int]
!99 = metadata !{i32 786445, metadata !71, metadata !70, metadata !"_old_offset", i32 274, i64 64, i64 64, i64 960, i32 0, metadata !100} ; [ DW_TAG_member ] [_old_offset] [line 274, size 64, align 64, offset 960] [from __off_t]
!100 = metadata !{i32 786454, metadata !71, null, metadata !"__off_t", i32 131, i64 0, i64 0, i64 0, i32 0, metadata !101} ; [ DW_TAG_typedef ] [__off_t] [line 131, size 0, align 0, offset 0] [from long int]
!101 = metadata !{i32 786468, null, null, metadata !"long int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [long int] [line 0, size 64, align 64, offset 0, enc DW_ATE_signed]
!102 = metadata !{i32 786445, metadata !71, metadata !70, metadata !"_cur_column", i32 278, i64 16, i64 16, i64 1024, i32 0, metadata !103} ; [ DW_TAG_member ] [_cur_column] [line 278, size 16, align 16, offset 1024] [from unsigned short]
!103 = metadata !{i32 786468, null, null, metadata !"unsigned short", i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned short] [line 0, size 16, align 16, offset 0, enc DW_ATE_unsigned]
!104 = metadata !{i32 786445, metadata !71, metadata !70, metadata !"_vtable_offset", i32 279, i64 8, i64 8, i64 1040, i32 0, metadata !105} ; [ DW_TAG_member ] [_vtable_offset] [line 279, size 8, align 8, offset 1040] [from signed char]
!105 = metadata !{i32 786468, null, null, metadata !"signed char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [signed char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!106 = metadata !{i32 786445, metadata !71, metadata !70, metadata !"_shortbuf", i32 280, i64 8, i64 8, i64 1048, i32 0, metadata !107} ; [ DW_TAG_member ] [_shortbuf] [line 280, size 8, align 8, offset 1048] [from ]
!107 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 8, i64 8, i32 0, i32 0, metadata !77, metadata !108, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 8, align 8, offset 0] [from char]
!108 = metadata !{metadata !109}
!109 = metadata !{i32 786465, i64 0, i64 1}       ; [ DW_TAG_subrange_type ] [0, 0]
!110 = metadata !{i32 786445, metadata !71, metadata !70, metadata !"_lock", i32 284, i64 64, i64 64, i64 1088, i32 0, metadata !111} ; [ DW_TAG_member ] [_lock] [line 284, size 64, align 64, offset 1088] [from ]
!111 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!112 = metadata !{i32 786445, metadata !71, metadata !70, metadata !"_offset", i32 293, i64 64, i64 64, i64 1152, i32 0, metadata !113} ; [ DW_TAG_member ] [_offset] [line 293, size 64, align 64, offset 1152] [from __off64_t]
!113 = metadata !{i32 786454, metadata !71, null, metadata !"__off64_t", i32 132, i64 0, i64 0, i64 0, i32 0, metadata !101} ; [ DW_TAG_typedef ] [__off64_t] [line 132, size 0, align 0, offset 0] [from long int]
!114 = metadata !{i32 786445, metadata !71, metadata !70, metadata !"__pad1", i32 302, i64 64, i64 64, i64 1216, i32 0, metadata !111} ; [ DW_TAG_member ] [__pad1] [line 302, size 64, align 64, offset 1216] [from ]
!115 = metadata !{i32 786445, metadata !71, metadata !70, metadata !"__pad2", i32 303, i64 64, i64 64, i64 1280, i32 0, metadata !111} ; [ DW_TAG_member ] [__pad2] [line 303, size 64, align 64, offset 1280] [from ]
!116 = metadata !{i32 786445, metadata !71, metadata !70, metadata !"__pad3", i32 304, i64 64, i64 64, i64 1344, i32 0, metadata !111} ; [ DW_TAG_member ] [__pad3] [line 304, size 64, align 64, offset 1344] [from ]
!117 = metadata !{i32 786445, metadata !71, metadata !70, metadata !"__pad4", i32 305, i64 64, i64 64, i64 1408, i32 0, metadata !111} ; [ DW_TAG_member ] [__pad4] [line 305, size 64, align 64, offset 1408] [from ]
!118 = metadata !{i32 786445, metadata !71, metadata !70, metadata !"__pad5", i32 306, i64 64, i64 64, i64 1472, i32 0, metadata !119} ; [ DW_TAG_member ] [__pad5] [line 306, size 64, align 64, offset 1472] [from size_t]
!119 = metadata !{i32 786454, metadata !71, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !120} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!120 = metadata !{i32 786468, null, null, metadata !"long unsigned int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long unsigned int] [line 0, size 64, align 64, offset 0, enc DW_ATE_unsigned]
!121 = metadata !{i32 786445, metadata !71, metadata !70, metadata !"_mode", i32 308, i64 32, i64 32, i64 1536, i32 0, metadata !74} ; [ DW_TAG_member ] [_mode] [line 308, size 32, align 32, offset 1536] [from int]
!122 = metadata !{i32 786445, metadata !71, metadata !70, metadata !"_unused2", i32 310, i64 160, i64 8, i64 1568, i32 0, metadata !123} ; [ DW_TAG_member ] [_unused2] [line 310, size 160, align 8, offset 1568] [from ]
!123 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 160, i64 8, i32 0, i32 0, metadata !77, metadata !124, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 160, align 8, offset 0] [from char]
!124 = metadata !{metadata !125}
!125 = metadata !{i32 786465, i64 0, i64 20}      ; [ DW_TAG_subrange_type ] [0, 19]
!126 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !127} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_mdatoms]
!127 = metadata !{i32 786454, metadata !1, null, metadata !"t_mdatoms", i32 51, i64 0, i64 0, i64 0, i32 0, metadata !128} ; [ DW_TAG_typedef ] [t_mdatoms] [line 51, size 0, align 0, offset 0] [from ]
!128 = metadata !{i32 786451, metadata !129, null, metadata !"", i32 40, i64 1408, i64 64, i32 0, i32 0, null, metadata !130, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 40, size 1408, align 64, offset 0] [from ]
!129 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/types/mdatom.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!130 = metadata !{metadata !131, metadata !134, metadata !135, metadata !137, metadata !138, metadata !139, metadata !140, metadata !141, metadata !142, metadata !143, metadata !145, metadata !146, metadata !147, metadata !148, metadata !150, metadata !151, metadata !152, metadata !153, metadata !154, metadata !155, metadata !156, metadata !157, metadata !158}
!131 = metadata !{i32 786445, metadata !129, metadata !128, metadata !"tmass", i32 41, i64 32, i64 32, i64 0, i32 0, metadata !132} ; [ DW_TAG_member ] [tmass] [line 41, size 32, align 32, offset 0] [from real]
!132 = metadata !{i32 786454, metadata !129, null, metadata !"real", i32 87, i64 0, i64 0, i64 0, i32 0, metadata !133} ; [ DW_TAG_typedef ] [real] [line 87, size 0, align 0, offset 0] [from float]
!133 = metadata !{i32 786468, null, null, metadata !"float", i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [float] [line 0, size 32, align 32, offset 0, enc DW_ATE_float]
!134 = metadata !{i32 786445, metadata !129, metadata !128, metadata !"nr", i32 42, i64 32, i64 32, i64 32, i32 0, metadata !74} ; [ DW_TAG_member ] [nr] [line 42, size 32, align 32, offset 32] [from int]
!135 = metadata !{i32 786445, metadata !129, metadata !128, metadata !"massA", i32 43, i64 64, i64 64, i64 64, i32 0, metadata !136} ; [ DW_TAG_member ] [massA] [line 43, size 64, align 64, offset 64] [from ]
!136 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !132} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from real]
!137 = metadata !{i32 786445, metadata !129, metadata !128, metadata !"massB", i32 43, i64 64, i64 64, i64 128, i32 0, metadata !136} ; [ DW_TAG_member ] [massB] [line 43, size 64, align 64, offset 128] [from ]
!138 = metadata !{i32 786445, metadata !129, metadata !128, metadata !"massT", i32 43, i64 64, i64 64, i64 192, i32 0, metadata !136} ; [ DW_TAG_member ] [massT] [line 43, size 64, align 64, offset 192] [from ]
!139 = metadata !{i32 786445, metadata !129, metadata !128, metadata !"invmass", i32 43, i64 64, i64 64, i64 256, i32 0, metadata !136} ; [ DW_TAG_member ] [invmass] [line 43, size 64, align 64, offset 256] [from ]
!140 = metadata !{i32 786445, metadata !129, metadata !128, metadata !"chargeA", i32 44, i64 64, i64 64, i64 320, i32 0, metadata !136} ; [ DW_TAG_member ] [chargeA] [line 44, size 64, align 64, offset 320] [from ]
!141 = metadata !{i32 786445, metadata !129, metadata !128, metadata !"chargeB", i32 44, i64 64, i64 64, i64 384, i32 0, metadata !136} ; [ DW_TAG_member ] [chargeB] [line 44, size 64, align 64, offset 384] [from ]
!142 = metadata !{i32 786445, metadata !129, metadata !128, metadata !"chargeT", i32 44, i64 64, i64 64, i64 448, i32 0, metadata !136} ; [ DW_TAG_member ] [chargeT] [line 44, size 64, align 64, offset 448] [from ]
!143 = metadata !{i32 786445, metadata !129, metadata !128, metadata !"bPerturbed", i32 45, i64 64, i64 64, i64 512, i32 0, metadata !144} ; [ DW_TAG_member ] [bPerturbed] [line 45, size 64, align 64, offset 512] [from ]
!144 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !74} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!145 = metadata !{i32 786445, metadata !129, metadata !128, metadata !"resnr", i32 46, i64 64, i64 64, i64 576, i32 0, metadata !144} ; [ DW_TAG_member ] [resnr] [line 46, size 64, align 64, offset 576] [from ]
!146 = metadata !{i32 786445, metadata !129, metadata !128, metadata !"typeA", i32 47, i64 64, i64 64, i64 640, i32 0, metadata !144} ; [ DW_TAG_member ] [typeA] [line 47, size 64, align 64, offset 640] [from ]
!147 = metadata !{i32 786445, metadata !129, metadata !128, metadata !"typeB", i32 47, i64 64, i64 64, i64 704, i32 0, metadata !144} ; [ DW_TAG_member ] [typeB] [line 47, size 64, align 64, offset 704] [from ]
!148 = metadata !{i32 786445, metadata !129, metadata !128, metadata !"ptype", i32 48, i64 64, i64 64, i64 768, i32 0, metadata !149} ; [ DW_TAG_member ] [ptype] [line 48, size 64, align 64, offset 768] [from ]
!149 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !103} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from unsigned short]
!150 = metadata !{i32 786445, metadata !129, metadata !128, metadata !"cTC", i32 49, i64 64, i64 64, i64 832, i32 0, metadata !149} ; [ DW_TAG_member ] [cTC] [line 49, size 64, align 64, offset 832] [from ]
!151 = metadata !{i32 786445, metadata !129, metadata !128, metadata !"cENER", i32 49, i64 64, i64 64, i64 896, i32 0, metadata !149} ; [ DW_TAG_member ] [cENER] [line 49, size 64, align 64, offset 896] [from ]
!152 = metadata !{i32 786445, metadata !129, metadata !128, metadata !"cACC", i32 49, i64 64, i64 64, i64 960, i32 0, metadata !149} ; [ DW_TAG_member ] [cACC] [line 49, size 64, align 64, offset 960] [from ]
!153 = metadata !{i32 786445, metadata !129, metadata !128, metadata !"cFREEZE", i32 49, i64 64, i64 64, i64 1024, i32 0, metadata !149} ; [ DW_TAG_member ] [cFREEZE] [line 49, size 64, align 64, offset 1024] [from ]
!154 = metadata !{i32 786445, metadata !129, metadata !128, metadata !"cXTC", i32 49, i64 64, i64 64, i64 1088, i32 0, metadata !149} ; [ DW_TAG_member ] [cXTC] [line 49, size 64, align 64, offset 1088] [from ]
!155 = metadata !{i32 786445, metadata !129, metadata !128, metadata !"cVCM", i32 49, i64 64, i64 64, i64 1152, i32 0, metadata !149} ; [ DW_TAG_member ] [cVCM] [line 49, size 64, align 64, offset 1152] [from ]
!156 = metadata !{i32 786445, metadata !129, metadata !128, metadata !"cU1", i32 50, i64 64, i64 64, i64 1216, i32 0, metadata !149} ; [ DW_TAG_member ] [cU1] [line 50, size 64, align 64, offset 1216] [from ]
!157 = metadata !{i32 786445, metadata !129, metadata !128, metadata !"cU2", i32 50, i64 64, i64 64, i64 1280, i32 0, metadata !149} ; [ DW_TAG_member ] [cU2] [line 50, size 64, align 64, offset 1280] [from ]
!158 = metadata !{i32 786445, metadata !129, metadata !128, metadata !"cORF", i32 50, i64 64, i64 64, i64 1344, i32 0, metadata !149} ; [ DW_TAG_member ] [cORF] [line 50, size 64, align 64, offset 1344] [from ]
!159 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !160} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_grpopts]
!160 = metadata !{i32 786454, metadata !1, null, metadata !"t_grpopts", i32 53, i64 0, i64 0, i64 0, i32 0, metadata !161} ; [ DW_TAG_typedef ] [t_grpopts] [line 53, size 0, align 0, offset 0] [from ]
!161 = metadata !{i32 786451, metadata !162, null, metadata !"", i32 42, i64 512, i64 64, i32 0, i32 0, null, metadata !163, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 42, size 512, align 64, offset 0] [from ]
!162 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/types/inputrec.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!163 = metadata !{metadata !164, metadata !165, metadata !166, metadata !167, metadata !168, metadata !169, metadata !170, metadata !171, metadata !177, metadata !181}
!164 = metadata !{i32 786445, metadata !162, metadata !161, metadata !"ngtc", i32 43, i64 32, i64 32, i64 0, i32 0, metadata !74} ; [ DW_TAG_member ] [ngtc] [line 43, size 32, align 32, offset 0] [from int]
!165 = metadata !{i32 786445, metadata !162, metadata !161, metadata !"ngacc", i32 44, i64 32, i64 32, i64 32, i32 0, metadata !74} ; [ DW_TAG_member ] [ngacc] [line 44, size 32, align 32, offset 32] [from int]
!166 = metadata !{i32 786445, metadata !162, metadata !161, metadata !"ngfrz", i32 45, i64 32, i64 32, i64 64, i32 0, metadata !74} ; [ DW_TAG_member ] [ngfrz] [line 45, size 32, align 32, offset 64] [from int]
!167 = metadata !{i32 786445, metadata !162, metadata !161, metadata !"ngener", i32 46, i64 32, i64 32, i64 96, i32 0, metadata !74} ; [ DW_TAG_member ] [ngener] [line 46, size 32, align 32, offset 96] [from int]
!168 = metadata !{i32 786445, metadata !162, metadata !161, metadata !"nrdf", i32 47, i64 64, i64 64, i64 128, i32 0, metadata !136} ; [ DW_TAG_member ] [nrdf] [line 47, size 64, align 64, offset 128] [from ]
!169 = metadata !{i32 786445, metadata !162, metadata !161, metadata !"ref_t", i32 48, i64 64, i64 64, i64 192, i32 0, metadata !136} ; [ DW_TAG_member ] [ref_t] [line 48, size 64, align 64, offset 192] [from ]
!170 = metadata !{i32 786445, metadata !162, metadata !161, metadata !"tau_t", i32 49, i64 64, i64 64, i64 256, i32 0, metadata !136} ; [ DW_TAG_member ] [tau_t] [line 49, size 64, align 64, offset 256] [from ]
!171 = metadata !{i32 786445, metadata !162, metadata !161, metadata !"acc", i32 50, i64 64, i64 64, i64 320, i32 0, metadata !172} ; [ DW_TAG_member ] [acc] [line 50, size 64, align 64, offset 320] [from ]
!172 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !173} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from rvec]
!173 = metadata !{i32 786454, metadata !162, null, metadata !"rvec", i32 101, i64 0, i64 0, i64 0, i32 0, metadata !174} ; [ DW_TAG_typedef ] [rvec] [line 101, size 0, align 0, offset 0] [from ]
!174 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 96, i64 32, i32 0, i32 0, metadata !132, metadata !175, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 96, align 32, offset 0] [from real]
!175 = metadata !{metadata !176}
!176 = metadata !{i32 786465, i64 0, i64 3}       ; [ DW_TAG_subrange_type ] [0, 2]
!177 = metadata !{i32 786445, metadata !162, metadata !161, metadata !"nFreeze", i32 51, i64 64, i64 64, i64 384, i32 0, metadata !178} ; [ DW_TAG_member ] [nFreeze] [line 51, size 64, align 64, offset 384] [from ]
!178 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !179} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ivec]
!179 = metadata !{i32 786454, metadata !162, null, metadata !"ivec", i32 107, i64 0, i64 0, i64 0, i32 0, metadata !180} ; [ DW_TAG_typedef ] [ivec] [line 107, size 0, align 0, offset 0] [from ]
!180 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 96, i64 32, i32 0, i32 0, metadata !74, metadata !175, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 96, align 32, offset 0] [from int]
!181 = metadata !{i32 786445, metadata !162, metadata !161, metadata !"eg_excl", i32 52, i64 64, i64 64, i64 448, i32 0, metadata !144} ; [ DW_TAG_member ] [eg_excl] [line 52, size 64, align 64, offset 448] [from ]
!182 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !183} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_groups]
!183 = metadata !{i32 786454, metadata !1, null, metadata !"t_groups", i32 72, i64 0, i64 0, i64 0, i32 0, metadata !184} ; [ DW_TAG_typedef ] [t_groups] [line 72, size 0, align 0, offset 0] [from ]
!184 = metadata !{i32 786451, metadata !4, null, metadata !"", i32 67, i64 768, i64 64, i32 0, i32 0, null, metadata !185, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 67, size 768, align 64, offset 0] [from ]
!185 = metadata !{metadata !186, metadata !195, metadata !208, metadata !221}
!186 = metadata !{i32 786445, metadata !4, metadata !184, metadata !"estat", i32 68, i64 512, i64 64, i64 0, i32 0, metadata !187} ; [ DW_TAG_member ] [estat] [line 68, size 512, align 64, offset 0] [from t_grp_ener]
!187 = metadata !{i32 786454, metadata !4, null, metadata !"t_grp_ener", i32 50, i64 0, i64 0, i64 0, i32 0, metadata !188} ; [ DW_TAG_typedef ] [t_grp_ener] [line 50, size 0, align 0, offset 0] [from ]
!188 = metadata !{i32 786451, metadata !4, null, metadata !"", i32 46, i64 512, i64 64, i32 0, i32 0, null, metadata !189, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 46, size 512, align 64, offset 0] [from ]
!189 = metadata !{metadata !190, metadata !191}
!190 = metadata !{i32 786445, metadata !4, metadata !188, metadata !"nn", i32 47, i64 32, i64 32, i64 0, i32 0, metadata !74} ; [ DW_TAG_member ] [nn] [line 47, size 32, align 32, offset 0] [from int]
!191 = metadata !{i32 786445, metadata !4, metadata !188, metadata !"ee", i32 48, i64 448, i64 64, i64 64, i32 0, metadata !192} ; [ DW_TAG_member ] [ee] [line 48, size 448, align 64, offset 64] [from ]
!192 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 448, i64 64, i32 0, i32 0, metadata !136, metadata !193, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 448, align 64, offset 0] [from ]
!193 = metadata !{metadata !194}
!194 = metadata !{i32 786465, i64 0, i64 7}       ; [ DW_TAG_subrange_type ] [0, 6]
!195 = metadata !{i32 786445, metadata !4, metadata !184, metadata !"tcstat", i32 69, i64 64, i64 64, i64 512, i32 0, metadata !196} ; [ DW_TAG_member ] [tcstat] [line 69, size 64, align 64, offset 512] [from ]
!196 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !197} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_grp_tcstat]
!197 = metadata !{i32 786454, metadata !4, null, metadata !"t_grp_tcstat", i32 44, i64 0, i64 0, i64 0, i32 0, metadata !198} ; [ DW_TAG_typedef ] [t_grp_tcstat] [line 44, size 0, align 0, offset 0] [from ]
!198 = metadata !{i32 786451, metadata !4, null, metadata !"", i32 38, i64 416, i64 32, i32 0, i32 0, null, metadata !199, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 38, size 416, align 32, offset 0] [from ]
!199 = metadata !{metadata !200, metadata !201, metadata !202, metadata !206, metadata !207}
!200 = metadata !{i32 786445, metadata !4, metadata !198, metadata !"T", i32 39, i64 32, i64 32, i64 0, i32 0, metadata !132} ; [ DW_TAG_member ] [T] [line 39, size 32, align 32, offset 0] [from real]
!201 = metadata !{i32 786445, metadata !4, metadata !198, metadata !"lambda", i32 40, i64 32, i64 32, i64 32, i32 0, metadata !132} ; [ DW_TAG_member ] [lambda] [line 40, size 32, align 32, offset 32] [from real]
!202 = metadata !{i32 786445, metadata !4, metadata !198, metadata !"ekin", i32 41, i64 288, i64 32, i64 64, i32 0, metadata !203} ; [ DW_TAG_member ] [ekin] [line 41, size 288, align 32, offset 64] [from tensor]
!203 = metadata !{i32 786454, metadata !4, null, metadata !"tensor", i32 105, i64 0, i64 0, i64 0, i32 0, metadata !204} ; [ DW_TAG_typedef ] [tensor] [line 105, size 0, align 0, offset 0] [from ]
!204 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 288, i64 32, i32 0, i32 0, metadata !132, metadata !205, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 288, align 32, offset 0] [from real]
!205 = metadata !{metadata !176, metadata !176}
!206 = metadata !{i32 786445, metadata !4, metadata !198, metadata !"xi", i32 42, i64 32, i64 32, i64 352, i32 0, metadata !132} ; [ DW_TAG_member ] [xi] [line 42, size 32, align 32, offset 352] [from real]
!207 = metadata !{i32 786445, metadata !4, metadata !198, metadata !"s", i32 43, i64 32, i64 32, i64 384, i32 0, metadata !132} ; [ DW_TAG_member ] [s] [line 43, size 32, align 32, offset 384] [from real]
!208 = metadata !{i32 786445, metadata !4, metadata !184, metadata !"grpstat", i32 70, i64 64, i64 64, i64 576, i32 0, metadata !209} ; [ DW_TAG_member ] [grpstat] [line 70, size 64, align 64, offset 576] [from ]
!209 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !210} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_grp_acc]
!210 = metadata !{i32 786454, metadata !4, null, metadata !"t_grp_acc", i32 59, i64 0, i64 0, i64 0, i32 0, metadata !211} ; [ DW_TAG_typedef ] [t_grp_acc] [line 59, size 0, align 0, offset 0] [from ]
!211 = metadata !{i32 786451, metadata !4, null, metadata !"", i32 52, i64 448, i64 64, i32 0, i32 0, null, metadata !212, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 52, size 448, align 64, offset 0] [from ]
!212 = metadata !{metadata !213, metadata !214, metadata !217, metadata !218, metadata !219, metadata !220}
!213 = metadata !{i32 786445, metadata !4, metadata !211, metadata !"nat", i32 53, i64 32, i64 32, i64 0, i32 0, metadata !74} ; [ DW_TAG_member ] [nat] [line 53, size 32, align 32, offset 0] [from int]
!214 = metadata !{i32 786445, metadata !4, metadata !211, metadata !"aid", i32 54, i64 64, i64 64, i64 64, i32 0, metadata !215} ; [ DW_TAG_member ] [aid] [line 54, size 64, align 64, offset 64] [from ]
!215 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !216} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from atom_id]
!216 = metadata !{i32 786454, metadata !4, null, metadata !"atom_id", i32 73, i64 0, i64 0, i64 0, i32 0, metadata !74} ; [ DW_TAG_typedef ] [atom_id] [line 73, size 0, align 0, offset 0] [from int]
!217 = metadata !{i32 786445, metadata !4, metadata !211, metadata !"M", i32 55, i64 32, i64 32, i64 128, i32 0, metadata !132} ; [ DW_TAG_member ] [M] [line 55, size 32, align 32, offset 128] [from real]
!218 = metadata !{i32 786445, metadata !4, metadata !211, metadata !"u", i32 56, i64 96, i64 32, i64 160, i32 0, metadata !173} ; [ DW_TAG_member ] [u] [line 56, size 96, align 32, offset 160] [from rvec]
!219 = metadata !{i32 786445, metadata !4, metadata !211, metadata !"uold", i32 57, i64 96, i64 32, i64 256, i32 0, metadata !173} ; [ DW_TAG_member ] [uold] [line 57, size 96, align 32, offset 256] [from rvec]
!220 = metadata !{i32 786445, metadata !4, metadata !211, metadata !"ut", i32 58, i64 96, i64 32, i64 352, i32 0, metadata !173} ; [ DW_TAG_member ] [ut] [line 58, size 96, align 32, offset 352] [from rvec]
!221 = metadata !{i32 786445, metadata !4, metadata !184, metadata !"cosacc", i32 71, i64 96, i64 32, i64 640, i32 0, metadata !222} ; [ DW_TAG_member ] [cosacc] [line 71, size 96, align 32, offset 640] [from t_cos_acc]
!222 = metadata !{i32 786454, metadata !4, null, metadata !"t_cos_acc", i32 65, i64 0, i64 0, i64 0, i32 0, metadata !223} ; [ DW_TAG_typedef ] [t_cos_acc] [line 65, size 0, align 0, offset 0] [from ]
!223 = metadata !{i32 786451, metadata !4, null, metadata !"", i32 61, i64 96, i64 32, i32 0, i32 0, null, metadata !224, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 61, size 96, align 32, offset 0] [from ]
!224 = metadata !{metadata !225, metadata !226, metadata !227}
!225 = metadata !{i32 786445, metadata !4, metadata !223, metadata !"cos_accel", i32 62, i64 32, i64 32, i64 0, i32 0, metadata !132} ; [ DW_TAG_member ] [cos_accel] [line 62, size 32, align 32, offset 0] [from real]
!226 = metadata !{i32 786445, metadata !4, metadata !223, metadata !"mvcos", i32 63, i64 32, i64 32, i64 32, i32 0, metadata !132} ; [ DW_TAG_member ] [mvcos] [line 63, size 32, align 32, offset 32] [from real]
!227 = metadata !{i32 786445, metadata !4, metadata !223, metadata !"vcos", i32 64, i64 32, i64 32, i64 64, i32 0, metadata !132} ; [ DW_TAG_member ] [vcos] [line 64, size 32, align 32, offset 64] [from real]
!228 = metadata !{metadata !229, metadata !230, metadata !231, metadata !232, metadata !233}
!229 = metadata !{i32 786689, metadata !64, metadata !"log", metadata !65, i32 16777322, metadata !68, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [log] [line 106]
!230 = metadata !{i32 786689, metadata !64, metadata !"md", metadata !65, i32 33554538, metadata !126, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [md] [line 106]
!231 = metadata !{i32 786689, metadata !64, metadata !"opts", metadata !65, i32 50331754, metadata !159, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [opts] [line 106]
!232 = metadata !{i32 786689, metadata !64, metadata !"grps", metadata !65, i32 67108970, metadata !182, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [grps] [line 106]
!233 = metadata !{i32 786688, metadata !64, metadata !"i", metadata !65, i32 108, metadata !74, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 108]
!234 = metadata !{i32 786478, metadata !1, metadata !65, metadata !"dump_estat", metadata !"dump_estat", metadata !"", i32 122, metadata !235, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._IO_FILE*, %struct.t_grp_ener*)* @dump_estat, null, null, metadata !238, i32 123} ; [ DW_TAG_subprogram ] [line 122] [def] [scope 123] [dump_estat]
!235 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !236, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!236 = metadata !{null, metadata !68, metadata !237}
!237 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !187} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_grp_ener]
!238 = metadata !{metadata !239, metadata !240, metadata !241}
!239 = metadata !{i32 786689, metadata !234, metadata !"log", metadata !65, i32 16777338, metadata !68, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [log] [line 122]
!240 = metadata !{i32 786689, metadata !234, metadata !"estat", metadata !65, i32 33554554, metadata !237, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [estat] [line 122]
!241 = metadata !{i32 786688, metadata !234, metadata !"i", metadata !65, i32 124, metadata !74, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 124]
!242 = metadata !{i32 786478, metadata !1, metadata !65, metadata !"rms_ener", metadata !"rms_ener", metadata !"", i32 132, metadata !243, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, float (%struct.t_energy*, i32)* @rms_ener, null, null, metadata !255, i32 133} ; [ DW_TAG_subprogram ] [line 132] [def] [scope 133] [rms_ener]
!243 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !244, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!244 = metadata !{metadata !132, metadata !245, metadata !74}
!245 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !246} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_energy]
!246 = metadata !{i32 786454, metadata !1, null, metadata !"t_energy", i32 41, i64 0, i64 0, i64 0, i32 0, metadata !247} ; [ DW_TAG_typedef ] [t_energy] [line 41, size 0, align 0, offset 0] [from ]
!247 = metadata !{i32 786451, metadata !248, null, metadata !"", i32 36, i64 256, i64 64, i32 0, i32 0, null, metadata !249, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 36, size 256, align 64, offset 0] [from ]
!248 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/types/energy.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!249 = metadata !{metadata !250, metadata !251, metadata !253, metadata !254}
!250 = metadata !{i32 786445, metadata !248, metadata !247, metadata !"e", i32 37, i64 32, i64 32, i64 0, i32 0, metadata !132} ; [ DW_TAG_member ] [e] [line 37, size 32, align 32, offset 0] [from real]
!251 = metadata !{i32 786445, metadata !248, metadata !247, metadata !"eav", i32 38, i64 64, i64 64, i64 64, i32 0, metadata !252} ; [ DW_TAG_member ] [eav] [line 38, size 64, align 64, offset 64] [from double]
!252 = metadata !{i32 786468, null, null, metadata !"double", i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [double] [line 0, size 64, align 64, offset 0, enc DW_ATE_float]
!253 = metadata !{i32 786445, metadata !248, metadata !247, metadata !"esum", i32 39, i64 64, i64 64, i64 128, i32 0, metadata !252} ; [ DW_TAG_member ] [esum] [line 39, size 64, align 64, offset 128] [from double]
!254 = metadata !{i32 786445, metadata !248, metadata !247, metadata !"e2sum", i32 40, i64 32, i64 32, i64 192, i32 0, metadata !132} ; [ DW_TAG_member ] [e2sum] [line 40, size 32, align 32, offset 192] [from real]
!255 = metadata !{metadata !256, metadata !257, metadata !258}
!256 = metadata !{i32 786689, metadata !242, metadata !"e", metadata !65, i32 16777348, metadata !245, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [e] [line 132]
!257 = metadata !{i32 786689, metadata !242, metadata !"nsteps", metadata !65, i32 33554564, metadata !74, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nsteps] [line 132]
!258 = metadata !{i32 786688, metadata !242, metadata !"erms2", metadata !65, i32 134, metadata !132, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [erms2] [line 134]
!259 = metadata !{i32 786478, metadata !1, metadata !65, metadata !"accumulate_u", metadata !"accumulate_u", metadata !"", i32 143, metadata !260, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.t_commrec*, %struct.t_grpopts*, %struct.t_groups*)* @accumulate_u, null, null, metadata !273, i32 144} ; [ DW_TAG_subprogram ] [line 143] [def] [scope 144] [accumulate_u]
!260 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !261, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!261 = metadata !{null, metadata !262, metadata !159, metadata !182}
!262 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !263} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_commrec]
!263 = metadata !{i32 786454, metadata !1, null, metadata !"t_commrec", i32 40, i64 0, i64 0, i64 0, i32 0, metadata !264} ; [ DW_TAG_typedef ] [t_commrec] [line 40, size 0, align 0, offset 0] [from ]
!264 = metadata !{i32 786451, metadata !265, null, metadata !"", i32 36, i64 192, i64 32, i32 0, i32 0, null, metadata !266, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 36, size 192, align 32, offset 0] [from ]
!265 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/types/commrec.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!266 = metadata !{metadata !267, metadata !268, metadata !269, metadata !270, metadata !271, metadata !272}
!267 = metadata !{i32 786445, metadata !265, metadata !264, metadata !"nodeid", i32 37, i64 32, i64 32, i64 0, i32 0, metadata !74} ; [ DW_TAG_member ] [nodeid] [line 37, size 32, align 32, offset 0] [from int]
!268 = metadata !{i32 786445, metadata !265, metadata !264, metadata !"nnodes", i32 37, i64 32, i64 32, i64 32, i32 0, metadata !74} ; [ DW_TAG_member ] [nnodes] [line 37, size 32, align 32, offset 32] [from int]
!269 = metadata !{i32 786445, metadata !265, metadata !264, metadata !"left", i32 38, i64 32, i64 32, i64 64, i32 0, metadata !74} ; [ DW_TAG_member ] [left] [line 38, size 32, align 32, offset 64] [from int]
!270 = metadata !{i32 786445, metadata !265, metadata !264, metadata !"right", i32 38, i64 32, i64 32, i64 96, i32 0, metadata !74} ; [ DW_TAG_member ] [right] [line 38, size 32, align 32, offset 96] [from int]
!271 = metadata !{i32 786445, metadata !265, metadata !264, metadata !"threadid", i32 39, i64 32, i64 32, i64 128, i32 0, metadata !74} ; [ DW_TAG_member ] [threadid] [line 39, size 32, align 32, offset 128] [from int]
!272 = metadata !{i32 786445, metadata !265, metadata !264, metadata !"nthreads", i32 39, i64 32, i64 32, i64 160, i32 0, metadata !74} ; [ DW_TAG_member ] [nthreads] [line 39, size 32, align 32, offset 160] [from int]
!273 = metadata !{metadata !274, metadata !275, metadata !276, metadata !277}
!274 = metadata !{i32 786689, metadata !259, metadata !"cr", metadata !65, i32 16777359, metadata !262, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cr] [line 143]
!275 = metadata !{i32 786689, metadata !259, metadata !"opts", metadata !65, i32 33554575, metadata !159, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [opts] [line 143]
!276 = metadata !{i32 786689, metadata !259, metadata !"grps", metadata !65, i32 50331791, metadata !182, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [grps] [line 143]
!277 = metadata !{i32 786688, metadata !259, metadata !"g", metadata !65, i32 147, metadata !74, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [g] [line 147]
!278 = metadata !{i32 786478, metadata !1, metadata !65, metadata !"update_grps", metadata !"update_grps", metadata !"", i32 173, metadata !279, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32, i32, %struct.t_groups*, %struct.t_grpopts*, [3 x float]*, %struct.t_mdatoms*, i32)* @update_grps, null, null, metadata !281, i32 175} ; [ DW_TAG_subprogram ] [line 173] [def] [scope 175] [update_grps]
!279 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !280, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!280 = metadata !{null, metadata !74, metadata !74, metadata !182, metadata !159, metadata !172, metadata !126, metadata !74}
!281 = metadata !{metadata !282, metadata !283, metadata !284, metadata !285, metadata !286, metadata !287, metadata !288, metadata !289, metadata !290, metadata !291, metadata !292}
!282 = metadata !{i32 786689, metadata !278, metadata !"start", metadata !65, i32 16777389, metadata !74, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [start] [line 173]
!283 = metadata !{i32 786689, metadata !278, metadata !"homenr", metadata !65, i32 33554605, metadata !74, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [homenr] [line 173]
!284 = metadata !{i32 786689, metadata !278, metadata !"grps", metadata !65, i32 50331821, metadata !182, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [grps] [line 173]
!285 = metadata !{i32 786689, metadata !278, metadata !"opts", metadata !65, i32 67109038, metadata !159, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [opts] [line 174]
!286 = metadata !{i32 786689, metadata !278, metadata !"v", metadata !65, i32 83886254, metadata !172, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [v] [line 174]
!287 = metadata !{i32 786689, metadata !278, metadata !"md", metadata !65, i32 100663470, metadata !126, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [md] [line 174]
!288 = metadata !{i32 786689, metadata !278, metadata !"bNEMD", metadata !65, i32 117440686, metadata !74, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [bNEMD] [line 174]
!289 = metadata !{i32 786688, metadata !278, metadata !"d", metadata !65, i32 176, metadata !74, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [d] [line 176]
!290 = metadata !{i32 786688, metadata !278, metadata !"g", metadata !65, i32 176, metadata !74, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [g] [line 176]
!291 = metadata !{i32 786688, metadata !278, metadata !"n", metadata !65, i32 176, metadata !74, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n] [line 176]
!292 = metadata !{i32 786688, metadata !278, metadata !"mv", metadata !65, i32 177, metadata !132, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [mv] [line 177]
!293 = metadata !{i32 786478, metadata !1, metadata !65, metadata !"sum_ekin", metadata !"sum_ekin", metadata !"", i32 204, metadata !294, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, float (%struct.t_grpopts*, %struct.t_groups*, [3 x float]*, i32)* @sum_ekin, null, null, metadata !297, i32 205} ; [ DW_TAG_subprogram ] [line 204] [def] [scope 205] [sum_ekin]
!294 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !295, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!295 = metadata !{metadata !132, metadata !159, metadata !182, metadata !296, metadata !74}
!296 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !174} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!297 = metadata !{metadata !298, metadata !299, metadata !300, metadata !301, metadata !302, metadata !303, metadata !304, metadata !305, metadata !306, metadata !307, metadata !308, metadata !309, metadata !310, metadata !311, metadata !312}
!298 = metadata !{i32 786689, metadata !293, metadata !"opts", metadata !65, i32 16777420, metadata !159, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [opts] [line 204]
!299 = metadata !{i32 786689, metadata !293, metadata !"grps", metadata !65, i32 33554636, metadata !182, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [grps] [line 204]
!300 = metadata !{i32 786689, metadata !293, metadata !"ekin", metadata !65, i32 50331852, metadata !296, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ekin] [line 204]
!301 = metadata !{i32 786689, metadata !293, metadata !"bTYZ", metadata !65, i32 67109068, metadata !74, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [bTYZ] [line 204]
!302 = metadata !{i32 786688, metadata !293, metadata !"i", metadata !65, i32 206, metadata !74, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 206]
!303 = metadata !{i32 786688, metadata !293, metadata !"m", metadata !65, i32 206, metadata !74, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [m] [line 206]
!304 = metadata !{i32 786688, metadata !293, metadata !"ngtc", metadata !65, i32 206, metadata !74, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ngtc] [line 206]
!305 = metadata !{i32 786688, metadata !293, metadata !"T", metadata !65, i32 207, metadata !132, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [T] [line 207]
!306 = metadata !{i32 786688, metadata !293, metadata !"ndfac", metadata !65, i32 207, metadata !132, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ndfac] [line 207]
!307 = metadata !{i32 786688, metadata !293, metadata !"ek", metadata !65, i32 207, metadata !132, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ek] [line 207]
!308 = metadata !{i32 786688, metadata !293, metadata !"tfac", metadata !65, i32 208, metadata !173, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tfac] [line 208]
!309 = metadata !{i32 786688, metadata !293, metadata !"tcstat", metadata !65, i32 209, metadata !196, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tcstat] [line 209]
!310 = metadata !{i32 786688, metadata !293, metadata !"nrdf", metadata !65, i32 210, metadata !132, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nrdf] [line 210]
!311 = metadata !{i32 786688, metadata !293, metadata !"nd", metadata !65, i32 210, metadata !132, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nd] [line 210]
!312 = metadata !{i32 786688, metadata !293, metadata !"ndf", metadata !65, i32 210, metadata !136, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ndf] [line 210]
!313 = metadata !{i32 786478, metadata !1, metadata !65, metadata !"sum_epot", metadata !"sum_epot", metadata !"", i32 269, metadata !314, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.t_grpopts*, %struct.t_groups*, float*)* @sum_epot, null, null, metadata !316, i32 270} ; [ DW_TAG_subprogram ] [line 269] [def] [scope 270] [sum_epot]
!314 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !315, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!315 = metadata !{null, metadata !159, metadata !182, metadata !136}
!316 = metadata !{metadata !317, metadata !318, metadata !319}
!317 = metadata !{i32 786689, metadata !313, metadata !"opts", metadata !65, i32 16777485, metadata !159, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [opts] [line 269]
!318 = metadata !{i32 786689, metadata !313, metadata !"grps", metadata !65, i32 33554701, metadata !182, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [grps] [line 269]
!319 = metadata !{i32 786689, metadata !313, metadata !"epot", metadata !65, i32 50331917, metadata !136, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [epot] [line 269]
!320 = metadata !{i32 786478, metadata !1, metadata !65, metadata !"sum_v", metadata !"sum_v", metadata !"", i32 256, metadata !321, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !323, i32 257} ; [ DW_TAG_subprogram ] [line 256] [local] [def] [scope 257] [sum_v]
!321 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !322, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!322 = metadata !{metadata !132, metadata !74, metadata !136}
!323 = metadata !{metadata !324, metadata !325, metadata !326, metadata !327}
!324 = metadata !{i32 786689, metadata !320, metadata !"n", metadata !65, i32 16777472, metadata !74, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n] [line 256]
!325 = metadata !{i32 786689, metadata !320, metadata !"v", metadata !65, i32 33554688, metadata !136, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [v] [line 256]
!326 = metadata !{i32 786688, metadata !320, metadata !"t", metadata !65, i32 258, metadata !132, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [t] [line 258]
!327 = metadata !{i32 786688, metadata !320, metadata !"i", metadata !65, i32 259, metadata !74, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 259]
!328 = metadata !{i32 786478, metadata !329, metadata !330, metadata !"m_add", metadata !"m_add", metadata !"", i32 485, metadata !331, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !333, i32 486} ; [ DW_TAG_subprogram ] [line 485] [local] [def] [scope 486] [m_add]
!329 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/vec.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!330 = metadata !{i32 786473, metadata !329}      ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/vec.h]
!331 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !332, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!332 = metadata !{null, metadata !296, metadata !296, metadata !296}
!333 = metadata !{metadata !334, metadata !335, metadata !336}
!334 = metadata !{i32 786689, metadata !328, metadata !"a", metadata !330, i32 16777701, metadata !296, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [a] [line 485]
!335 = metadata !{i32 786689, metadata !328, metadata !"b", metadata !330, i32 33554917, metadata !296, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [b] [line 485]
!336 = metadata !{i32 786689, metadata !328, metadata !"dest", metadata !330, i32 50332133, metadata !296, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dest] [line 485]
!337 = metadata !{i32 786478, metadata !329, metadata !330, metadata !"clear_mat", metadata !"clear_mat", metadata !"", i32 334, metadata !338, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !340, i32 335} ; [ DW_TAG_subprogram ] [line 334] [local] [def] [scope 335] [clear_mat]
!338 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !339, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!339 = metadata !{null, metadata !296}
!340 = metadata !{metadata !341, metadata !342}
!341 = metadata !{i32 786689, metadata !337, metadata !"a", metadata !330, i32 16777550, metadata !296, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [a] [line 334]
!342 = metadata !{i32 786688, metadata !337, metadata !"nul", metadata !330, i32 336, metadata !343, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nul] [line 336]
!343 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !132} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from real]
!344 = metadata !{i32 786478, metadata !329, metadata !330, metadata !"clear_rvec", metadata !"clear_rvec", metadata !"", i32 316, metadata !345, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !347, i32 317} ; [ DW_TAG_subprogram ] [line 316] [local] [def] [scope 317] [clear_rvec]
!345 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !346, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!346 = metadata !{null, metadata !136}
!347 = metadata !{metadata !348}
!348 = metadata !{i32 786689, metadata !344, metadata !"a", metadata !330, i32 16777532, metadata !136, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [a] [line 316]
!349 = metadata !{i32 786478, metadata !1, metadata !65, metadata !"init_grpener", metadata !"init_grpener", metadata !"", i32 92, metadata !350, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !352, i32 93} ; [ DW_TAG_subprogram ] [line 92] [local] [def] [scope 93] [init_grpener]
!350 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !351, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!351 = metadata !{null, metadata !68, metadata !74, metadata !237}
!352 = metadata !{metadata !353, metadata !354, metadata !355, metadata !356, metadata !358}
!353 = metadata !{i32 786689, metadata !349, metadata !"log", metadata !65, i32 16777308, metadata !68, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [log] [line 92]
!354 = metadata !{i32 786689, metadata !349, metadata !"ngener", metadata !65, i32 33554524, metadata !74, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ngener] [line 92]
!355 = metadata !{i32 786689, metadata !349, metadata !"estat", metadata !65, i32 50331740, metadata !237, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [estat] [line 92]
!356 = metadata !{i32 786688, metadata !357, metadata !"i", metadata !65, i32 94, metadata !74, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 94]
!357 = metadata !{i32 786443, metadata !1, metadata !349} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/tgroup.c]
!358 = metadata !{i32 786688, metadata !357, metadata !"n2", metadata !65, i32 94, metadata !74, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n2] [line 94]
!359 = metadata !{i32 786478, metadata !1, metadata !65, metadata !"init_grpstat", metadata !"init_grpstat", metadata !"", i32 59, metadata !360, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !362, i32 61} ; [ DW_TAG_subprogram ] [line 59] [local] [def] [scope 61] [init_grpstat]
!360 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !361, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!361 = metadata !{null, metadata !68, metadata !126, metadata !74, metadata !209}
!362 = metadata !{metadata !363, metadata !364, metadata !365, metadata !366, metadata !367, metadata !368, metadata !369}
!363 = metadata !{i32 786689, metadata !359, metadata !"log", metadata !65, i32 16777275, metadata !68, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [log] [line 59]
!364 = metadata !{i32 786689, metadata !359, metadata !"md", metadata !65, i32 33554492, metadata !126, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [md] [line 60]
!365 = metadata !{i32 786689, metadata !359, metadata !"ngacc", metadata !65, i32 50331708, metadata !74, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ngacc] [line 60]
!366 = metadata !{i32 786689, metadata !359, metadata !"gstat", metadata !65, i32 67108924, metadata !209, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [gstat] [line 60]
!367 = metadata !{i32 786688, metadata !359, metadata !"i", metadata !65, i32 62, metadata !74, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 62]
!368 = metadata !{i32 786688, metadata !359, metadata !"j", metadata !65, i32 62, metadata !74, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 62]
!369 = metadata !{i32 786688, metadata !359, metadata !"grp", metadata !65, i32 62, metadata !74, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [grp] [line 62]
!370 = metadata !{i32 786478, metadata !1, metadata !65, metadata !"init_grptcstat", metadata !"init_grptcstat", metadata !"", i32 47, metadata !371, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !373, i32 48} ; [ DW_TAG_subprogram ] [line 47] [local] [def] [scope 48] [init_grptcstat]
!371 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !372, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!372 = metadata !{null, metadata !74, metadata !196}
!373 = metadata !{metadata !374, metadata !375, metadata !376, metadata !377}
!374 = metadata !{i32 786689, metadata !370, metadata !"ngtc", metadata !65, i32 16777263, metadata !74, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ngtc] [line 47]
!375 = metadata !{i32 786689, metadata !370, metadata !"tcstat", metadata !65, i32 33554479, metadata !196, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [tcstat] [line 47]
!376 = metadata !{i32 786688, metadata !370, metadata !"i", metadata !65, i32 49, metadata !74, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 49]
!377 = metadata !{i32 786688, metadata !370, metadata !"j", metadata !65, i32 49, metadata !74, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 49]
!378 = metadata !{metadata !379, metadata !389, metadata !389, metadata !389}
!379 = metadata !{i32 786484, i32 0, metadata !259, metadata !"rb", metadata !"rb", metadata !"", metadata !65, i32 146, metadata !380, i32 1, i32 1, %struct.t_bin** @accumulate_u.rb, null} ; [ DW_TAG_variable ] [rb] [line 146] [local] [def]
!380 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !381} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_bin]
!381 = metadata !{i32 786454, metadata !1, null, metadata !"t_bin", i32 49, i64 0, i64 0, i64 0, i32 0, metadata !382} ; [ DW_TAG_typedef ] [t_bin] [line 49, size 0, align 0, offset 0] [from ]
!382 = metadata !{i32 786451, metadata !383, null, metadata !"", i32 45, i64 128, i64 64, i32 0, i32 0, null, metadata !384, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 45, size 128, align 64, offset 0] [from ]
!383 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/rbin.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!384 = metadata !{metadata !385, metadata !386, metadata !387}
!385 = metadata !{i32 786445, metadata !383, metadata !382, metadata !"nreal", i32 46, i64 32, i64 32, i64 0, i32 0, metadata !74} ; [ DW_TAG_member ] [nreal] [line 46, size 32, align 32, offset 0] [from int]
!386 = metadata !{i32 786445, metadata !383, metadata !382, metadata !"maxreal", i32 47, i64 32, i64 32, i64 32, i32 0, metadata !74} ; [ DW_TAG_member ] [maxreal] [line 47, size 32, align 32, offset 32] [from int]
!387 = metadata !{i32 786445, metadata !383, metadata !382, metadata !"rbuf", i32 48, i64 64, i64 64, i64 64, i32 0, metadata !388} ; [ DW_TAG_member ] [rbuf] [line 48, size 64, align 64, offset 64] [from ]
!388 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !252} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from double]
!389 = metadata !{i32 786484, i32 0, metadata !330, metadata !"nul", metadata !"nul", metadata !"nul", metadata !330, i32 336, metadata !343, i32 1, i32 1, float 0.000000e+00, null} ; [ DW_TAG_variable ] [nul] [line 336] [local] [def]
!390 = metadata !{i32 106, i32 0, metadata !64, null}
!391 = metadata !{i32 113, i32 0, metadata !64, null}
!392 = metadata !{metadata !"int", metadata !393}
!393 = metadata !{metadata !"omnipotent char", metadata !394}
!394 = metadata !{metadata !"Simple C/C++ TBAA"}
!395 = metadata !{metadata !"any pointer", metadata !393}
!396 = metadata !{i32 114, i32 0, metadata !64, null}
!397 = metadata !{i32 786689, metadata !370, metadata !"ngtc", metadata !65, i32 16777263, metadata !74, i32 0, metadata !396} ; [ DW_TAG_arg_variable ] [ngtc] [line 47]
!398 = metadata !{i32 47, i32 0, metadata !370, metadata !396}
!399 = metadata !{i32 786689, metadata !370, metadata !"tcstat", metadata !65, i32 33554479, metadata !196, i32 0, metadata !396} ; [ DW_TAG_arg_variable ] [tcstat] [line 47]
!400 = metadata !{i32 786688, metadata !370, metadata !"i", metadata !65, i32 49, metadata !74, i32 0, metadata !396} ; [ DW_TAG_auto_variable ] [i] [line 49]
!401 = metadata !{i32 51, i32 0, metadata !402, metadata !396}
!402 = metadata !{i32 786443, metadata !1, metadata !370, i32 51, i32 0, i32 33} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/tgroup.c]
!403 = metadata !{i32 52, i32 0, metadata !404, metadata !396}
!404 = metadata !{i32 786443, metadata !1, metadata !402, i32 51, i32 0, i32 34} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/tgroup.c]
!405 = metadata !{metadata !"float", metadata !393}
!406 = metadata !{i32 53, i32 0, metadata !404, metadata !396}
!407 = metadata !{i32 54, i32 0, metadata !404, metadata !396}
!408 = metadata !{i32 786689, metadata !337, metadata !"a", metadata !330, i32 16777550, metadata !296, i32 0, metadata !407} ; [ DW_TAG_arg_variable ] [a] [line 334]
!409 = metadata !{i32 334, i32 0, metadata !337, metadata !407}
!410 = metadata !{float 0.000000e+00}
!411 = metadata !{i32 786688, metadata !337, metadata !"nul", metadata !330, i32 336, metadata !343, i32 0, metadata !407} ; [ DW_TAG_auto_variable ] [nul] [line 336]
!412 = metadata !{i32 336, i32 0, metadata !337, metadata !407}
!413 = metadata !{i32 55, i32 0, metadata !404, metadata !396}
!414 = metadata !{i32 116, i32 0, metadata !64, null}
!415 = metadata !{i32 117, i32 0, metadata !64, null}
!416 = metadata !{%struct._IO_FILE* null}
!417 = metadata !{i32 786689, metadata !359, metadata !"log", metadata !65, i32 16777275, metadata !68, i32 0, metadata !415} ; [ DW_TAG_arg_variable ] [log] [line 59]
!418 = metadata !{i32 59, i32 0, metadata !359, metadata !415}
!419 = metadata !{i32 65, i32 0, metadata !359, metadata !415}
!420 = metadata !{i32 66, i32 0, metadata !421, metadata !415}
!421 = metadata !{i32 786443, metadata !1, metadata !422, i32 66, i32 0, i32 27} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/tgroup.c]
!422 = metadata !{i32 786443, metadata !1, metadata !359, i32 65, i32 0, i32 26} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/tgroup.c]
!423 = metadata !{i32 67, i32 0, metadata !424, metadata !415}
!424 = metadata !{i32 786443, metadata !1, metadata !421, i32 66, i32 0, i32 28} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/tgroup.c]
!425 = metadata !{i32 70, i32 0, metadata !424, metadata !415}
!426 = metadata !{metadata !"short", metadata !393}
!427 = metadata !{i32 69, i32 0, metadata !424, metadata !415}
!428 = metadata !{i32 81, i32 0, metadata !429, metadata !415}
!429 = metadata !{i32 786443, metadata !1, metadata !422, i32 81, i32 0, i32 31} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/tgroup.c]
!430 = metadata !{i32 82, i32 0, metadata !431, metadata !415}
!431 = metadata !{i32 786443, metadata !1, metadata !429, i32 81, i32 0, i32 32} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/tgroup.c]
!432 = metadata !{i32 78, i32 0, metadata !433, metadata !415}
!433 = metadata !{i32 786443, metadata !1, metadata !434, i32 73, i32 0, i32 30} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/tgroup.c]
!434 = metadata !{i32 786443, metadata !1, metadata !422, i32 73, i32 0, i32 29} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/tgroup.c]
!435 = metadata !{i32 79, i32 0, metadata !433, metadata !415}
!436 = metadata !{i32 73, i32 0, metadata !434, metadata !415}
!437 = metadata !{i32 83, i32 0, metadata !431, metadata !415}
!438 = metadata !{i32 119, i32 0, metadata !64, null}
!439 = metadata !{i32 786689, metadata !349, metadata !"log", metadata !65, i32 16777308, metadata !68, i32 0, metadata !438} ; [ DW_TAG_arg_variable ] [log] [line 92]
!440 = metadata !{i32 92, i32 0, metadata !349, metadata !438}
!441 = metadata !{i32 96, i32 0, metadata !357, metadata !438}
!442 = metadata !{i32 786688, metadata !357, metadata !"n2", metadata !65, i32 94, metadata !74, i32 0, metadata !438} ; [ DW_TAG_auto_variable ] [n2] [line 94]
!443 = metadata !{i32 100, i32 0, metadata !357, metadata !438}
!444 = metadata !{i32 786688, metadata !357, metadata !"i", metadata !65, i32 94, metadata !74, i32 0, metadata !438} ; [ DW_TAG_auto_variable ] [i] [line 94]
!445 = metadata !{i32 101, i32 0, metadata !446, metadata !438}
!446 = metadata !{i32 786443, metadata !1, metadata !357, i32 101, i32 0, i32 24} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/tgroup.c]
!447 = metadata !{i32 102, i32 0, metadata !448, metadata !438}
!448 = metadata !{i32 786443, metadata !1, metadata !446, i32 101, i32 0, i32 25} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/tgroup.c]
!449 = metadata !{i32 120, i32 0, metadata !64, null}
!450 = metadata !{i32 122, i32 0, metadata !234, null}
!451 = metadata !{i32 126, i32 0, metadata !234, null}
!452 = metadata !{i32 127, i32 0, metadata !453, null}
!453 = metadata !{i32 786443, metadata !1, metadata !234, i32 127, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/tgroup.c]
!454 = metadata !{i32 128, i32 0, metadata !455, null}
!455 = metadata !{i32 786443, metadata !1, metadata !453, i32 127, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/tgroup.c]
!456 = metadata !{i32 130, i32 0, metadata !234, null}
!457 = metadata !{i32 132, i32 0, metadata !242, null}
!458 = metadata !{i32 136, i32 0, metadata !242, null}
!459 = metadata !{metadata !"double", metadata !393}
!460 = metadata !{i32 137, i32 0, metadata !242, null}
!461 = metadata !{i32 140, i32 0, metadata !242, null}
!462 = metadata !{i32 141, i32 0, metadata !242, null}
!463 = metadata !{i32 143, i32 0, metadata !259, null}
!464 = metadata !{i32 149, i32 0, metadata !259, null}
!465 = metadata !{i32 150, i32 0, metadata !466, null}
!466 = metadata !{i32 786443, metadata !1, metadata !259, i32 149, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/tgroup.c]
!467 = metadata !{i32 151, i32 0, metadata !466, null}
!468 = metadata !{i32 153, i32 0, metadata !259, null}
!469 = metadata !{i32 155, i32 0, metadata !470, null}
!470 = metadata !{i32 786443, metadata !1, metadata !259, i32 155, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/tgroup.c]
!471 = metadata !{i32 156, i32 0, metadata !470, null}
!472 = metadata !{i32 158, i32 0, metadata !259, null}
!473 = metadata !{i32 160, i32 0, metadata !474, null}
!474 = metadata !{i32 786443, metadata !1, metadata !259, i32 160, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/tgroup.c]
!475 = metadata !{i32 161, i32 0, metadata !474, null}
!476 = metadata !{i32 162, i32 0, metadata !259, null}
!477 = metadata !{i32 173, i32 0, metadata !278, null}
!478 = metadata !{i32 174, i32 0, metadata !278, null}
!479 = metadata !{i32 180, i32 0, metadata !480, null}
!480 = metadata !{i32 786443, metadata !1, metadata !278, i32 180, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/tgroup.c]
!481 = metadata !{i32 181, i32 0, metadata !482, null}
!482 = metadata !{i32 786443, metadata !1, metadata !480, i32 180, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/tgroup.c]
!483 = metadata !{i32 184, i32 0, metadata !278, null}
!484 = metadata !{i32 185, i32 0, metadata !485, null}
!485 = metadata !{i32 786443, metadata !1, metadata !486, i32 185, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/tgroup.c]
!486 = metadata !{i32 786443, metadata !1, metadata !278, i32 184, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/tgroup.c]
!487 = metadata !{i32 186, i32 0, metadata !485, null}
!488 = metadata !{i32 188, i32 0, metadata !489, null}
!489 = metadata !{i32 786443, metadata !1, metadata !486, i32 188, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/tgroup.c]
!490 = metadata !{i32 189, i32 0, metadata !491, null}
!491 = metadata !{i32 786443, metadata !1, metadata !489, i32 188, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/tgroup.c]
!492 = metadata !{i32 191, i32 0, metadata !493, null}
!493 = metadata !{i32 786443, metadata !1, metadata !494, i32 190, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/tgroup.c]
!494 = metadata !{i32 786443, metadata !1, metadata !491, i32 190, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/tgroup.c]
!495 = metadata !{i32 192, i32 0, metadata !493, null}
!496 = metadata !{i32 786689, metadata !344, metadata !"a", metadata !330, i32 16777532, metadata !136, i32 0, metadata !487} ; [ DW_TAG_arg_variable ] [a] [line 316]
!497 = metadata !{i32 316, i32 0, metadata !344, metadata !487}
!498 = metadata !{i32 321, i32 0, metadata !344, metadata !487}
!499 = metadata !{i32 322, i32 0, metadata !344, metadata !487}
!500 = metadata !{i32 323, i32 0, metadata !344, metadata !487}
!501 = metadata !{i32 196, i32 0, metadata !502, null}
!502 = metadata !{i32 786443, metadata !1, metadata !486, i32 196, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/tgroup.c]
!503 = metadata !{i32 198, i32 0, metadata !504, null}
!504 = metadata !{i32 786443, metadata !1, metadata !505, i32 197, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/tgroup.c]
!505 = metadata !{i32 786443, metadata !1, metadata !506, i32 197, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/tgroup.c]
!506 = metadata !{i32 786443, metadata !1, metadata !502, i32 196, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/tgroup.c]
!507 = metadata !{i32 190, i32 0, metadata !494, null}
!508 = metadata !{i32 197, i32 0, metadata !505, null}
!509 = metadata !{i32 202, i32 0, metadata !278, null}
!510 = metadata !{i32 204, i32 0, metadata !293, null}
!511 = metadata !{i32 208, i32 0, metadata !293, null}
!512 = metadata !{i32 212, i32 0, metadata !293, null}
!513 = metadata !{i32 213, i32 0, metadata !293, null}
!514 = metadata !{i32 214, i32 0, metadata !293, null}
!515 = metadata !{i32 786689, metadata !337, metadata !"a", metadata !330, i32 16777550, metadata !296, i32 0, metadata !516} ; [ DW_TAG_arg_variable ] [a] [line 334]
!516 = metadata !{i32 216, i32 0, metadata !293, null}
!517 = metadata !{i32 334, i32 0, metadata !337, metadata !516}
!518 = metadata !{i32 786688, metadata !337, metadata !"nul", metadata !330, i32 336, metadata !343, i32 0, metadata !516} ; [ DW_TAG_auto_variable ] [nul] [line 336]
!519 = metadata !{i32 336, i32 0, metadata !337, metadata !516}
!520 = metadata !{i32 341, i32 0, metadata !337, metadata !516}
!521 = metadata !{i32 338, i32 0, metadata !337, metadata !516}
!522 = metadata !{i32 218, i32 0, metadata !293, null}
!523 = metadata !{i32 219, i32 0, metadata !293, null}
!524 = metadata !{i32 220, i32 0, metadata !293, null}
!525 = metadata !{i32 221, i32 0, metadata !526, null}
!526 = metadata !{i32 786443, metadata !1, metadata !293, i32 220, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/tgroup.c]
!527 = metadata !{i32 222, i32 0, metadata !526, null}
!528 = metadata !{float 0x3FE5555560000000}
!529 = metadata !{i32 223, i32 0, metadata !526, null}
!530 = metadata !{i32 224, i32 0, metadata !526, null}
!531 = metadata !{i32 226, i32 0, metadata !532, null}
!532 = metadata !{i32 786443, metadata !1, metadata !293, i32 225, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/tgroup.c]
!533 = metadata !{float 1.000000e+00}
!534 = metadata !{i32 227, i32 0, metadata !532, null}
!535 = metadata !{i32 230, i32 0, metadata !536, null}
!536 = metadata !{i32 786443, metadata !1, metadata !293, i32 230, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/tgroup.c]
!537 = metadata !{i32 487, i32 0, metadata !538, metadata !539}
!538 = metadata !{i32 786443, metadata !329, metadata !328} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/vec.h]
!539 = metadata !{i32 238, i32 0, metadata !540, null}
!540 = metadata !{i32 786443, metadata !1, metadata !541, i32 237, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/tgroup.c]
!541 = metadata !{i32 786443, metadata !1, metadata !536, i32 230, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/tgroup.c]
!542 = metadata !{i32 488, i32 0, metadata !538, metadata !539}
!543 = metadata !{i32 489, i32 0, metadata !538, metadata !539}
!544 = metadata !{i32 490, i32 0, metadata !538, metadata !539}
!545 = metadata !{i32 491, i32 0, metadata !538, metadata !539}
!546 = metadata !{i32 492, i32 0, metadata !538, metadata !539}
!547 = metadata !{i32 493, i32 0, metadata !538, metadata !539}
!548 = metadata !{i32 494, i32 0, metadata !538, metadata !539}
!549 = metadata !{i32 495, i32 0, metadata !538, metadata !539}
!550 = metadata !{i32 231, i32 0, metadata !541, null}
!551 = metadata !{i32 237, i32 0, metadata !541, null}
!552 = metadata !{i32 786689, metadata !328, metadata !"b", metadata !330, i32 33554917, metadata !296, i32 0, metadata !539} ; [ DW_TAG_arg_variable ] [b] [line 485]
!553 = metadata !{i32 485, i32 0, metadata !328, metadata !539}
!554 = metadata !{i32 786689, metadata !328, metadata !"dest", metadata !330, i32 50332133, metadata !296, i32 0, metadata !539} ; [ DW_TAG_arg_variable ] [dest] [line 485]
!555 = metadata !{i32 239, i32 0, metadata !540, null}
!556 = metadata !{i32 240, i32 0, metadata !557, null}
!557 = metadata !{i32 786443, metadata !1, metadata !540, i32 240, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/tgroup.c]
!558 = metadata !{i32 241, i32 0, metadata !557, null}
!559 = metadata !{i32 242, i32 0, metadata !540, null}
!560 = metadata !{i32 243, i32 0, metadata !540, null}
!561 = metadata !{i32 245, i32 0, metadata !541, null}
!562 = metadata !{i32 247, i32 0, metadata !541, null}
!563 = metadata !{i32 248, i32 0, metadata !541, null}
!564 = metadata !{i32 250, i32 0, metadata !293, null}
!565 = metadata !{i32 251, i32 0, metadata !293, null}
!566 = metadata !{i32 253, i32 0, metadata !293, null}
!567 = metadata !{i32 269, i32 0, metadata !313, null}
!568 = metadata !{i32 272, i32 0, metadata !313, null}
!569 = metadata !{i32 786689, metadata !320, metadata !"n", metadata !65, i32 16777472, metadata !74, i32 0, metadata !568} ; [ DW_TAG_arg_variable ] [n] [line 256]
!570 = metadata !{i32 256, i32 0, metadata !320, metadata !568}
!571 = metadata !{i32 786689, metadata !320, metadata !"v", metadata !65, i32 33554688, metadata !136, i32 0, metadata !568} ; [ DW_TAG_arg_variable ] [v] [line 256]
!572 = metadata !{i32 786688, metadata !320, metadata !"t", metadata !65, i32 258, metadata !132, i32 0, metadata !568} ; [ DW_TAG_auto_variable ] [t] [line 258]
!573 = metadata !{i32 261, i32 0, metadata !320, metadata !568}
!574 = metadata !{i32 786688, metadata !320, metadata !"i", metadata !65, i32 259, metadata !74, i32 0, metadata !568} ; [ DW_TAG_auto_variable ] [i] [line 259]
!575 = metadata !{i32 263, i32 0, metadata !576, metadata !568}
!576 = metadata !{i32 786443, metadata !1, metadata !320, i32 263, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/tgroup.c]
!577 = metadata !{i32 786689, metadata !320, metadata !"n", metadata !65, i32 16777472, metadata !74, i32 0, metadata !578} ; [ DW_TAG_arg_variable ] [n] [line 256]
!578 = metadata !{i32 273, i32 0, metadata !313, null}
!579 = metadata !{i32 256, i32 0, metadata !320, metadata !578}
!580 = metadata !{i32 786689, metadata !320, metadata !"v", metadata !65, i32 33554688, metadata !136, i32 0, metadata !578} ; [ DW_TAG_arg_variable ] [v] [line 256]
!581 = metadata !{i32 786688, metadata !320, metadata !"t", metadata !65, i32 258, metadata !132, i32 0, metadata !578} ; [ DW_TAG_auto_variable ] [t] [line 258]
!582 = metadata !{i32 261, i32 0, metadata !320, metadata !578}
!583 = metadata !{i32 786688, metadata !320, metadata !"i", metadata !65, i32 259, metadata !74, i32 0, metadata !578} ; [ DW_TAG_auto_variable ] [i] [line 259]
!584 = metadata !{i32 263, i32 0, metadata !576, metadata !578}
!585 = metadata !{i32 264, i32 0, metadata !576, metadata !568}
!586 = metadata !{i32 264, i32 0, metadata !576, metadata !578}
!587 = metadata !{i32 786689, metadata !320, metadata !"n", metadata !65, i32 16777472, metadata !74, i32 0, metadata !588} ; [ DW_TAG_arg_variable ] [n] [line 256]
!588 = metadata !{i32 274, i32 0, metadata !313, null}
!589 = metadata !{i32 256, i32 0, metadata !320, metadata !588}
!590 = metadata !{i32 786689, metadata !320, metadata !"v", metadata !65, i32 33554688, metadata !136, i32 0, metadata !588} ; [ DW_TAG_arg_variable ] [v] [line 256]
!591 = metadata !{i32 786688, metadata !320, metadata !"t", metadata !65, i32 258, metadata !132, i32 0, metadata !588} ; [ DW_TAG_auto_variable ] [t] [line 258]
!592 = metadata !{i32 261, i32 0, metadata !320, metadata !588}
!593 = metadata !{i32 786688, metadata !320, metadata !"i", metadata !65, i32 259, metadata !74, i32 0, metadata !588} ; [ DW_TAG_auto_variable ] [i] [line 259]
!594 = metadata !{i32 263, i32 0, metadata !576, metadata !588}
!595 = metadata !{i32 786689, metadata !320, metadata !"n", metadata !65, i32 16777472, metadata !74, i32 0, metadata !596} ; [ DW_TAG_arg_variable ] [n] [line 256]
!596 = metadata !{i32 275, i32 0, metadata !313, null}
!597 = metadata !{i32 256, i32 0, metadata !320, metadata !596}
!598 = metadata !{i32 786689, metadata !320, metadata !"v", metadata !65, i32 33554688, metadata !136, i32 0, metadata !596} ; [ DW_TAG_arg_variable ] [v] [line 256]
!599 = metadata !{i32 786688, metadata !320, metadata !"t", metadata !65, i32 258, metadata !132, i32 0, metadata !596} ; [ DW_TAG_auto_variable ] [t] [line 258]
!600 = metadata !{i32 261, i32 0, metadata !320, metadata !596}
!601 = metadata !{i32 786688, metadata !320, metadata !"i", metadata !65, i32 259, metadata !74, i32 0, metadata !596} ; [ DW_TAG_auto_variable ] [i] [line 259]
!602 = metadata !{i32 263, i32 0, metadata !576, metadata !596}
!603 = metadata !{i32 264, i32 0, metadata !576, metadata !588}
!604 = metadata !{i32 264, i32 0, metadata !576, metadata !596}
!605 = metadata !{i32 786689, metadata !320, metadata !"n", metadata !65, i32 16777472, metadata !74, i32 0, metadata !606} ; [ DW_TAG_arg_variable ] [n] [line 256]
!606 = metadata !{i32 276, i32 0, metadata !313, null}
!607 = metadata !{i32 256, i32 0, metadata !320, metadata !606}
!608 = metadata !{i32 786689, metadata !320, metadata !"v", metadata !65, i32 33554688, metadata !136, i32 0, metadata !606} ; [ DW_TAG_arg_variable ] [v] [line 256]
!609 = metadata !{i32 786688, metadata !320, metadata !"t", metadata !65, i32 258, metadata !132, i32 0, metadata !606} ; [ DW_TAG_auto_variable ] [t] [line 258]
!610 = metadata !{i32 261, i32 0, metadata !320, metadata !606}
!611 = metadata !{i32 786688, metadata !320, metadata !"i", metadata !65, i32 259, metadata !74, i32 0, metadata !606} ; [ DW_TAG_auto_variable ] [i] [line 259]
!612 = metadata !{i32 263, i32 0, metadata !576, metadata !606}
!613 = metadata !{i32 786689, metadata !320, metadata !"n", metadata !65, i32 16777472, metadata !74, i32 0, metadata !614} ; [ DW_TAG_arg_variable ] [n] [line 256]
!614 = metadata !{i32 277, i32 0, metadata !313, null}
!615 = metadata !{i32 256, i32 0, metadata !320, metadata !614}
!616 = metadata !{i32 786689, metadata !320, metadata !"v", metadata !65, i32 33554688, metadata !136, i32 0, metadata !614} ; [ DW_TAG_arg_variable ] [v] [line 256]
!617 = metadata !{i32 786688, metadata !320, metadata !"t", metadata !65, i32 258, metadata !132, i32 0, metadata !614} ; [ DW_TAG_auto_variable ] [t] [line 258]
!618 = metadata !{i32 261, i32 0, metadata !320, metadata !614}
!619 = metadata !{i32 786688, metadata !320, metadata !"i", metadata !65, i32 259, metadata !74, i32 0, metadata !614} ; [ DW_TAG_auto_variable ] [i] [line 259]
!620 = metadata !{i32 263, i32 0, metadata !576, metadata !614}
!621 = metadata !{i32 264, i32 0, metadata !576, metadata !606}
!622 = metadata !{i32 264, i32 0, metadata !576, metadata !614}
!623 = metadata !{i32 786689, metadata !320, metadata !"n", metadata !65, i32 16777472, metadata !74, i32 0, metadata !624} ; [ DW_TAG_arg_variable ] [n] [line 256]
!624 = metadata !{i32 281, i32 0, metadata !313, null}
!625 = metadata !{i32 256, i32 0, metadata !320, metadata !624}
!626 = metadata !{i32 786689, metadata !320, metadata !"v", metadata !65, i32 33554688, metadata !136, i32 0, metadata !624} ; [ DW_TAG_arg_variable ] [v] [line 256]
!627 = metadata !{i32 786688, metadata !320, metadata !"t", metadata !65, i32 258, metadata !132, i32 0, metadata !624} ; [ DW_TAG_auto_variable ] [t] [line 258]
!628 = metadata !{i32 261, i32 0, metadata !320, metadata !624}
!629 = metadata !{i32 786688, metadata !320, metadata !"i", metadata !65, i32 259, metadata !74, i32 0, metadata !624} ; [ DW_TAG_auto_variable ] [i] [line 259]
!630 = metadata !{i32 263, i32 0, metadata !576, metadata !624}
!631 = metadata !{i32 264, i32 0, metadata !576, metadata !624}
!632 = metadata !{i32 37}
!633 = metadata !{i32 786689, metadata !320, metadata !"n", metadata !65, i32 16777472, metadata !74, i32 0, metadata !634} ; [ DW_TAG_arg_variable ] [n] [line 256]
!634 = metadata !{i32 282, i32 0, metadata !313, null}
!635 = metadata !{i32 256, i32 0, metadata !320, metadata !634}
!636 = metadata !{i32 786689, metadata !320, metadata !"v", metadata !65, i32 33554688, metadata !136, i32 0, metadata !634} ; [ DW_TAG_arg_variable ] [v] [line 256]
!637 = metadata !{i32 786688, metadata !320, metadata !"t", metadata !65, i32 258, metadata !132, i32 0, metadata !634} ; [ DW_TAG_auto_variable ] [t] [line 258]
!638 = metadata !{i32 261, i32 0, metadata !320, metadata !634}
!639 = metadata !{i32 786688, metadata !320, metadata !"i", metadata !65, i32 259, metadata !74, i32 0, metadata !634} ; [ DW_TAG_auto_variable ] [i] [line 259]
!640 = metadata !{i32 263, i32 0, metadata !576, metadata !634}
!641 = metadata !{i32 264, i32 0, metadata !576, metadata !634}
!642 = metadata !{i32 283, i32 0, metadata !313, null}
