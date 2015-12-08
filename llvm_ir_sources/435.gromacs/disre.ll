; ModuleID = '../../SPEC/benchspec/CPU2006/435.gromacs/src/disre.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.t_interaction_function = type { i8*, i8*, i32, i32, i32, i64, i32, float (i32, i32*, %union.t_iparams*, [3 x float]*, [3 x float]*, %struct.t_forcerec*, %struct.t_graph*, [3 x float]*, float, float*, %struct.t_mdatoms*, i32, float*, float*, %struct.t_fcdata*)* }
%union.t_iparams = type { %struct.anon.2 }
%struct.anon.2 = type { float, float, float, float, float, float }
%struct.t_forcerec = type { i32, float, float, float, float, float, float, i32, float, float, float, float, float, i32, i32, float, i32, float, float*, float*, float*, float*, float, float, float*, float, float, float, float, i32, float, float, i32, i32, i32, i32, i32, i32, i32, i32, [3 x float], i32, i32, i32, i32, i32*, i32*, [3 x float]*, [3 x float]*, [13 x %struct.t_nblist], [13 x %struct.t_nblist], i32, i32, [3 x float]*, [3 x float]*, [3 x float]*, i32, float, [3 x float]*, i32, i32*, float*, i32, i32, i32, float*, i32*, float }
%struct.t_nblist = type { i32, i32, i32, i32, i32, i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32, i32* }
%struct.t_graph = type { i32, i32, i32, i32, i32, i32*, i32**, [3 x i32]* }
%struct.t_mdatoms = type { float, i32, float*, float*, float*, float*, float*, float*, float*, i32*, i32*, i32*, i32*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16* }
%struct.t_fcdata = type { %struct.t_disresdata, %struct.t_oriresdata }
%struct.t_disresdata = type { i32, i32, float, float, float, float, float, i32, i32, float, float*, float*, float*, float*, float* }
%struct.t_oriresdata = type { float, float, float, float, i32, i32, i32, float, float*, [3 x float]*, [3 x float]*, [3 x [3 x float]], [3 x [3 x float]]*, [5 x float]*, [5 x float]*, [5 x float]*, float*, float*, float*, float, [5 x float]*, float*** }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.t_inputrec = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, float, float, float, i32, i32, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, i32, float, [3 x [3 x float]], [3 x [3 x float]], i32, float, float, i32, float, float, i32, float, float, float, i32, float, float, i32, float, float, float, float, float, i32, i32, i32, float, float, float, i32, float, float, i32, i32, i32, i32, i32, float, i32, float, float, i32, float, i32, i32, i32, i32, float, float, float, float, %struct.t_grpopts, [3 x %struct.t_cosines], [3 x %struct.t_cosines] }
%struct.t_grpopts = type { i32, i32, i32, i32, float*, float*, float*, [3 x float]*, [3 x i32]*, i32* }
%struct.t_cosines = type { i32, float*, float* }
%struct.t_commrec = type { i32, i32, i32, i32, i32, i32 }

@interaction_function = external global [44 x %struct.t_interaction_function]
@.str = private unnamed_addr constant [7 x i8] c"dd->rt\00", align 1
@.str1 = private unnamed_addr constant [53 x i8] c"../../SPEC/benchspec/CPU2006/435.gromacs/src/disre.c\00", align 1
@.str2 = private unnamed_addr constant [8 x i8] c"dd->rav\00", align 1
@.str3 = private unnamed_addr constant [9 x i8] c"dd->Rt_6\00", align 1
@.str4 = private unnamed_addr constant [10 x i8] c"dd->Rtl_6\00", align 1
@.str5 = private unnamed_addr constant [58 x i8] c"There are %d distance restraints involving %d atom pairs\0A\00", align 1
@.str6 = private unnamed_addr constant [34 x i8] c"the number of distance restraints\00", align 1
@.str7 = private unnamed_addr constant [9 x i8] c"Torda89a\00", align 1
@.str8 = private unnamed_addr constant [17 x i8] c"vtot is inf: %f\0A\00", align 1

; Function Attrs: nounwind optsize uwtable
define void @init_disres(%struct._IO_FILE* %log, i32 %nfa, i32* nocapture %forceatoms, %union.t_iparams* nocapture %ip, %struct.t_inputrec* nocapture %ir, %struct.t_commrec* %mcr, %struct.t_fcdata* nocapture %fcd) #0 {
entry:
  %eDisreWeighting = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 52
  %0 = load i32* %eDisreWeighting, align 4, !tbaa !0
  %dr_weighting = getelementptr inbounds %struct.t_fcdata* %fcd, i64 0, i32 0, i32 0
  store i32 %0, i32* %dr_weighting, align 4, !tbaa !0
  %dr_fc = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 51
  %1 = load float* %dr_fc, align 4, !tbaa !3
  %dr_fc1 = getelementptr inbounds %struct.t_fcdata* %fcd, i64 0, i32 0, i32 2
  store float %1, float* %dr_fc1, align 4, !tbaa !3
  %dr_tau = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 55
  %2 = load float* %dr_tau, align 4, !tbaa !3
  %dr_tau2 = getelementptr inbounds %struct.t_fcdata* %fcd, i64 0, i32 0, i32 3
  store float %2, float* %dr_tau2, align 4, !tbaa !3
  %fabsf = tail call float @fabsf(float %2) #3
  %3 = fpext float %fabsf to double
  %cmp = fcmp olt double %3, 1.200000e-38
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %dr_bMixed = getelementptr inbounds %struct.t_fcdata* %fcd, i64 0, i32 0, i32 1
  store i32 0, i32* %dr_bMixed, align 4, !tbaa !0
  %ETerm = getelementptr inbounds %struct.t_fcdata* %fcd, i64 0, i32 0, i32 4
  store float 0.000000e+00, float* %ETerm, align 4, !tbaa !3
  br label %if.end

if.else:                                          ; preds = %entry
  %bDisreMixed = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 53
  %4 = load i32* %bDisreMixed, align 4, !tbaa !0
  %dr_bMixed5 = getelementptr inbounds %struct.t_fcdata* %fcd, i64 0, i32 0, i32 1
  store i32 %4, i32* %dr_bMixed5, align 4, !tbaa !0
  %delta_t = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 15
  %5 = load float* %delta_t, align 4, !tbaa !3
  %6 = load float* %dr_tau, align 4, !tbaa !3
  %div = fdiv float %5, %6
  %sub = fsub float -0.000000e+00, %div
  %conv7 = fpext float %sub to double
  %call8 = tail call double @exp(double %conv7) #4
  %conv9 = fptrunc double %call8 to float
  %ETerm10 = getelementptr inbounds %struct.t_fcdata* %fcd, i64 0, i32 0, i32 4
  store float %conv9, float* %ETerm10, align 4, !tbaa !3
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %7 = phi float [ %conv9, %if.else ], [ 0.000000e+00, %if.then ]
  %conv14 = fsub float 1.000000e+00, %7
  %ETerm1 = getelementptr inbounds %struct.t_fcdata* %fcd, i64 0, i32 0, i32 5
  store float %conv14, float* %ETerm1, align 4, !tbaa !3
  %exp_min_t_tau = getelementptr inbounds %struct.t_fcdata* %fcd, i64 0, i32 0, i32 6
  store float 1.000000e+00, float* %exp_min_t_tau, align 4, !tbaa !3
  %nr = getelementptr inbounds %struct.t_fcdata* %fcd, i64 0, i32 0, i32 7
  store i32 0, i32* %nr, align 4, !tbaa !0
  %cmp15115 = icmp sgt i32 %nfa, 0
  br i1 %cmp15115, label %for.body, label %for.end

for.body:                                         ; preds = %if.end, %for.inc
  %8 = phi i32 [ %17, %for.inc ], [ 0, %if.end ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %if.end ]
  %9 = trunc i64 %indvars.iv to i32
  %cmp17 = icmp eq i32 %9, 0
  br i1 %cmp17, label %if.then31, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %10 = add nsw i64 %indvars.iv, -3
  %arrayidx = getelementptr inbounds i32* %forceatoms, i64 %10
  %11 = load i32* %arrayidx, align 4, !tbaa !0
  %idxprom20 = sext i32 %11 to i64
  %label = getelementptr inbounds %union.t_iparams* %ip, i64 %idxprom20, i32 0, i32 5
  %12 = bitcast float* %label to i32*
  %13 = load i32* %12, align 4, !tbaa !0
  %arrayidx24 = getelementptr inbounds i32* %forceatoms, i64 %indvars.iv
  %14 = load i32* %arrayidx24, align 4, !tbaa !0
  %idxprom25 = sext i32 %14 to i64
  %label28 = getelementptr inbounds %union.t_iparams* %ip, i64 %idxprom25, i32 0, i32 5
  %15 = bitcast float* %label28 to i32*
  %16 = load i32* %15, align 4, !tbaa !0
  %cmp29 = icmp eq i32 %13, %16
  br i1 %cmp29, label %for.inc, label %if.then31

if.then31:                                        ; preds = %lor.lhs.false, %for.body
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %nr, align 4, !tbaa !0
  br label %for.inc

for.inc:                                          ; preds = %lor.lhs.false, %if.then31
  %17 = phi i32 [ %8, %lor.lhs.false ], [ %inc, %if.then31 ]
  %indvars.iv.next = add i64 %indvars.iv, 3
  %18 = trunc i64 %indvars.iv.next to i32
  %cmp15 = icmp slt i32 %18, %nfa
  br i1 %cmp15, label %for.body, label %for.end

for.end:                                          ; preds = %for.inc, %if.end
  %19 = load i32* getelementptr inbounds ([44 x %struct.t_interaction_function]* @interaction_function, i64 0, i64 21, i32 2), align 8, !tbaa !0
  %add34 = add nsw i32 %19, 1
  %div35 = sdiv i32 %nfa, %add34
  %npr = getelementptr inbounds %struct.t_fcdata* %fcd, i64 0, i32 0, i32 8
  store i32 %div35, i32* %npr, align 4, !tbaa !0
  %call37 = tail call i8* @save_calloc(i8* getelementptr inbounds ([7 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 74, i32 %div35, i32 4) #4
  %20 = bitcast i8* %call37 to float*
  %rt = getelementptr inbounds %struct.t_fcdata* %fcd, i64 0, i32 0, i32 10
  store float* %20, float** %rt, align 8, !tbaa !4
  %21 = load i32* %npr, align 4, !tbaa !0
  %call39 = tail call i8* @save_calloc(i8* getelementptr inbounds ([8 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 75, i32 %21, i32 4) #4
  %22 = bitcast i8* %call39 to float*
  %rav = getelementptr inbounds %struct.t_fcdata* %fcd, i64 0, i32 0, i32 11
  store float* %22, float** %rav, align 8, !tbaa !4
  %23 = load i32* %nr, align 4, !tbaa !0
  %mul = shl nsw i32 %23, 1
  %call41 = tail call i8* @save_calloc(i8* getelementptr inbounds ([9 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 79, i32 %mul, i32 4) #4
  %24 = bitcast i8* %call41 to float*
  %Rt_6 = getelementptr inbounds %struct.t_fcdata* %fcd, i64 0, i32 0, i32 13
  store float* %24, float** %Rt_6, align 8, !tbaa !4
  %25 = load i32* %nr, align 4, !tbaa !0
  %idxprom43 = sext i32 %25 to i64
  %arrayidx45 = getelementptr inbounds float* %24, i64 %idxprom43
  %Rav_6 = getelementptr inbounds %struct.t_fcdata* %fcd, i64 0, i32 0, i32 14
  store float* %arrayidx45, float** %Rav_6, align 8, !tbaa !4
  %tobool = icmp ne %struct.t_commrec* %mcr, null
  br i1 %tobool, label %if.then46, label %if.else49

if.then46:                                        ; preds = %for.end
  %call48 = tail call i8* @save_calloc(i8* getelementptr inbounds ([10 x i8]* @.str4, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 82, i32 %25, i32 4) #4
  %26 = bitcast i8* %call48 to float*
  %Rtl_6 = getelementptr inbounds %struct.t_fcdata* %fcd, i64 0, i32 0, i32 12
  store float* %26, float** %Rtl_6, align 8, !tbaa !4
  br label %if.end52

if.else49:                                        ; preds = %for.end
  %Rtl_651 = getelementptr inbounds %struct.t_fcdata* %fcd, i64 0, i32 0, i32 12
  store float* %24, float** %Rtl_651, align 8, !tbaa !4
  br label %if.end52

if.end52:                                         ; preds = %if.else49, %if.then46
  %27 = load i32* %npr, align 4, !tbaa !0
  %cmp54 = icmp sgt i32 %27, 0
  br i1 %cmp54, label %if.then56, label %if.end68

if.then56:                                        ; preds = %if.end52
  %tobool57 = icmp eq %struct._IO_FILE* %log, null
  br i1 %tobool57, label %if.end62, label %if.then58

if.then58:                                        ; preds = %if.then56
  %28 = load i32* %nr, align 4, !tbaa !0
  %call61 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %log, i8* getelementptr inbounds ([58 x i8]* @.str5, i64 0, i64 0), i32 %28, i32 %27) #4
  br label %if.end62

if.end62:                                         ; preds = %if.then56, %if.then58
  br i1 %tobool, label %if.then64, label %if.end67

if.then64:                                        ; preds = %if.end62
  %29 = load i32* %nr, align 4, !tbaa !0
  tail call void @check_multi_int(%struct._IO_FILE* %log, %struct.t_commrec* %mcr, i32 %29, i8* getelementptr inbounds ([34 x i8]* @.str6, i64 0, i64 0)) #4
  br label %if.end67

if.end67:                                         ; preds = %if.then64, %if.end62
  tail call void @please_cite(%struct._IO_FILE* %log, i8* getelementptr inbounds ([9 x i8]* @.str7, i64 0, i64 0)) #4
  br label %if.end68

if.end68:                                         ; preds = %if.end67, %if.end52
  ret void
}

; Function Attrs: nounwind optsize
declare double @exp(double) #1

; Function Attrs: optsize
declare i8* @save_calloc(i8*, i8*, i32, i32, i32) #2

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #1

; Function Attrs: optsize
declare void @check_multi_int(%struct._IO_FILE*, %struct.t_commrec*, i32, i8*) #2

; Function Attrs: optsize
declare void @please_cite(%struct._IO_FILE*, i8*) #2

; Function Attrs: nounwind optsize uwtable
define void @calc_disres_R_6(%struct.t_commrec* %mcr, i32 %nfa, i32* nocapture %forceatoms, %union.t_iparams* nocapture %ip, [3 x float]* nocapture %x, %struct.t_fcdata* nocapture %fcd) #0 {
entry:
  %ETerm3 = getelementptr inbounds %struct.t_fcdata* %fcd, i64 0, i32 0, i32 4
  %0 = load float* %ETerm3, align 4, !tbaa !3
  %ETerm14 = getelementptr inbounds %struct.t_fcdata* %fcd, i64 0, i32 0, i32 5
  %1 = load float* %ETerm14, align 4, !tbaa !3
  %rt5 = getelementptr inbounds %struct.t_fcdata* %fcd, i64 0, i32 0, i32 10
  %2 = load float** %rt5, align 8, !tbaa !4
  %rav6 = getelementptr inbounds %struct.t_fcdata* %fcd, i64 0, i32 0, i32 11
  %3 = load float** %rav6, align 8, !tbaa !4
  %Rtl_67 = getelementptr inbounds %struct.t_fcdata* %fcd, i64 0, i32 0, i32 12
  %4 = load float** %Rtl_67, align 8, !tbaa !4
  %Rt_68 = getelementptr inbounds %struct.t_fcdata* %fcd, i64 0, i32 0, i32 13
  %5 = load float** %Rt_68, align 8, !tbaa !4
  %Rav_69 = getelementptr inbounds %struct.t_fcdata* %fcd, i64 0, i32 0, i32 14
  %6 = load float** %Rav_69, align 8, !tbaa !4
  %exp_min_t_tau = getelementptr inbounds %struct.t_fcdata* %fcd, i64 0, i32 0, i32 6
  %7 = load float* %exp_min_t_tau, align 4, !tbaa !3
  %mul = fmul float %0, %7
  store float %mul, float* %exp_min_t_tau, align 4, !tbaa !3
  %conv = fpext float %mul to double
  %sub = fsub double 1.000000e+00, %conv
  %div = fdiv double 1.000000e+00, %sub
  %conv12 = fptrunc double %div to float
  %tobool = icmp ne %struct.t_commrec* %mcr, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %nnodes = getelementptr inbounds %struct.t_commrec* %mcr, i64 0, i32 1
  %8 = load i32* %nnodes, align 4, !tbaa !0
  %conv13 = sitofp i32 %8 to double
  %div14 = fdiv double 1.000000e+00, %conv13
  %conv15 = fptrunc double %div14 to float
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %invn.0 = phi float [ %conv15, %if.then ], [ 0.000000e+00, %entry ]
  %cmp169 = icmp sgt i32 %nfa, 0
  br i1 %cmp169, label %while.body.lr.ph, label %while.end93

while.body.lr.ph:                                 ; preds = %if.end
  %sub62 = fsub float %0, %mul
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %if.end92
  %indvars.iv175 = phi i64 [ 0, %while.body.lr.ph ], [ %indvars.iv.next176, %if.end92 ]
  %fa.0171 = phi i32 [ 0, %while.body.lr.ph ], [ %fa.1.lcssa, %if.end92 ]
  %idxprom = sext i32 %fa.0171 to i64
  %arrayidx = getelementptr inbounds i32* %forceatoms, i64 %idxprom
  %9 = load i32* %arrayidx, align 4, !tbaa !0
  %idxprom17 = sext i32 %9 to i64
  %label20 = getelementptr inbounds %union.t_iparams* %ip, i64 %idxprom17, i32 0, i32 5
  %10 = bitcast float* %label20 to i32*
  %11 = load i32* %10, align 4, !tbaa !0
  %arrayidx22 = getelementptr inbounds float* %6, i64 %indvars.iv175
  store float 0.000000e+00, float* %arrayidx22, align 4, !tbaa !3
  %arrayidx24 = getelementptr inbounds float* %5, i64 %indvars.iv175
  store float 0.000000e+00, float* %arrayidx24, align 4, !tbaa !3
  %cmp26167 = icmp slt i32 %fa.0171, %nfa
  br i1 %cmp26167, label %land.rhs, label %while.end

land.rhs:                                         ; preds = %while.body, %while.body36.land.rhs_crit_edge
  %12 = phi i32 [ %.pre177, %while.body36.land.rhs_crit_edge ], [ %11, %while.body ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %while.body36.land.rhs_crit_edge ], [ %idxprom, %while.body ]
  %fa.1168 = phi i32 [ %add79, %while.body36.land.rhs_crit_edge ], [ %fa.0171, %while.body ]
  %cmp34 = icmp eq i32 %12, %11
  br i1 %cmp34, label %while.body36, label %while.end

while.body36:                                     ; preds = %land.rhs
  %13 = trunc i64 %indvars.iv to i32
  %div37 = sdiv i32 %13, 3
  %14 = add nsw i64 %indvars.iv, 1
  %arrayidx39 = getelementptr inbounds i32* %forceatoms, i64 %14
  %15 = load i32* %arrayidx39, align 4, !tbaa !0
  %16 = add nsw i64 %indvars.iv, 2
  %arrayidx42 = getelementptr inbounds i32* %forceatoms, i64 %16
  %17 = load i32* %arrayidx42, align 4, !tbaa !0
  %idxprom43 = sext i32 %15 to i64
  %arraydecay = getelementptr inbounds [3 x float]* %x, i64 %idxprom43, i64 0
  %idxprom45 = sext i32 %17 to i64
  %arraydecay47 = getelementptr inbounds [3 x float]* %x, i64 %idxprom45, i64 0
  %18 = load float* %arraydecay, align 4, !tbaa !3
  %19 = load float* %arraydecay47, align 4, !tbaa !3
  %sub.i = fsub float %18, %19
  %arrayidx2.i = getelementptr inbounds [3 x float]* %x, i64 %idxprom43, i64 1
  %20 = load float* %arrayidx2.i, align 4, !tbaa !3
  %arrayidx3.i = getelementptr inbounds [3 x float]* %x, i64 %idxprom45, i64 1
  %21 = load float* %arrayidx3.i, align 4, !tbaa !3
  %sub4.i = fsub float %20, %21
  %arrayidx5.i = getelementptr inbounds [3 x float]* %x, i64 %idxprom43, i64 2
  %22 = load float* %arrayidx5.i, align 4, !tbaa !3
  %arrayidx6.i = getelementptr inbounds [3 x float]* %x, i64 %idxprom45, i64 2
  %23 = load float* %arrayidx6.i, align 4, !tbaa !3
  %sub7.i = fsub float %22, %23
  %mul.i = fmul float %sub.i, %sub.i
  %mul4.i = fmul float %sub4.i, %sub4.i
  %add.i = fadd float %mul.i, %mul4.i
  %mul7.i = fmul float %sub7.i, %sub7.i
  %add8.i = fadd float %add.i, %mul7.i
  %conv51 = fpext float %add8.i to double
  %call52 = tail call double @sqrt(double %conv51) #4
  %div53 = fdiv double 1.000000e+00, %call52
  %conv54 = fptrunc double %div53 to float
  %mul55 = fmul float %conv54, %conv54
  %mul56 = fmul float %conv54, %mul55
  %conv59 = tail call float @sqrtf(float %add8.i) #1
  %idxprom60 = sext i32 %div37 to i64
  %arrayidx61 = getelementptr inbounds float* %2, i64 %idxprom60
  store float %conv59, float* %arrayidx61, align 4, !tbaa !3
  %arrayidx64 = getelementptr inbounds float* %3, i64 %idxprom60
  %24 = load float* %arrayidx64, align 4, !tbaa !3
  %mul65 = fmul float %sub62, %24
  %mul66 = fmul float %1, %mul56
  %add67 = fadd float %mul65, %mul66
  %mul68 = fmul float %conv12, %add67
  store float %mul68, float* %arrayidx64, align 4, !tbaa !3
  %mul71 = fmul float %mul56, %mul56
  %25 = load float* %arrayidx24, align 4, !tbaa !3
  %add74 = fadd float %25, %mul71
  store float %add74, float* %arrayidx24, align 4, !tbaa !3
  %mul75 = fmul float %mul68, %mul68
  %26 = load float* %arrayidx22, align 4, !tbaa !3
  %add78 = fadd float %26, %mul75
  store float %add78, float* %arrayidx22, align 4, !tbaa !3
  %indvars.iv.next = add i64 %indvars.iv, 3
  %add79 = add nsw i32 %fa.1168, 3
  %27 = trunc i64 %indvars.iv.next to i32
  %cmp26 = icmp slt i32 %27, %nfa
  br i1 %cmp26, label %while.body36.land.rhs_crit_edge, label %while.end

while.body36.land.rhs_crit_edge:                  ; preds = %while.body36
  %arrayidx29.phi.trans.insert = getelementptr inbounds i32* %forceatoms, i64 %indvars.iv.next
  %.pre = load i32* %arrayidx29.phi.trans.insert, align 4, !tbaa !0
  %idxprom30.phi.trans.insert = sext i32 %.pre to i64
  %label33.phi.trans.insert = getelementptr inbounds %union.t_iparams* %ip, i64 %idxprom30.phi.trans.insert, i32 0, i32 5
  %.phi.trans.insert = bitcast float* %label33.phi.trans.insert to i32*
  %.pre177 = load i32* %.phi.trans.insert, align 4, !tbaa !0
  br label %land.rhs

while.end:                                        ; preds = %while.body36, %land.rhs, %while.body
  %fa.1.lcssa = phi i32 [ %fa.0171, %while.body ], [ %fa.1168, %land.rhs ], [ %add79, %while.body36 ]
  br i1 %tobool, label %if.then81, label %if.end92

if.then81:                                        ; preds = %while.end
  %28 = load float* %arrayidx24, align 4, !tbaa !3
  %arrayidx85 = getelementptr inbounds float* %4, i64 %indvars.iv175
  store float %28, float* %arrayidx85, align 4, !tbaa !3
  %29 = load float* %arrayidx24, align 4, !tbaa !3
  %mul88 = fmul float %invn.0, %29
  store float %mul88, float* %arrayidx24, align 4, !tbaa !3
  %30 = load float* %arrayidx22, align 4, !tbaa !3
  %mul91 = fmul float %invn.0, %30
  store float %mul91, float* %arrayidx22, align 4, !tbaa !3
  br label %if.end92

if.end92:                                         ; preds = %if.then81, %while.end
  %indvars.iv.next176 = add i64 %indvars.iv175, 1
  %cmp = icmp slt i32 %fa.1.lcssa, %nfa
  br i1 %cmp, label %while.body, label %while.end93

while.end93:                                      ; preds = %if.end92, %if.end
  br i1 %tobool, label %land.lhs.true, label %if.end102

land.lhs.true:                                    ; preds = %while.end93
  %nnodes95 = getelementptr inbounds %struct.t_commrec* %mcr, i64 0, i32 1
  %31 = load i32* %nnodes95, align 4, !tbaa !0
  %cmp96 = icmp sgt i32 %31, 1
  br i1 %cmp96, label %if.then100, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %nthreads = getelementptr inbounds %struct.t_commrec* %mcr, i64 0, i32 5
  %32 = load i32* %nthreads, align 4, !tbaa !0
  %cmp98 = icmp sgt i32 %32, 1
  br i1 %cmp98, label %if.then100, label %if.end102

if.then100:                                       ; preds = %lor.lhs.false, %land.lhs.true
  %nr = getelementptr inbounds %struct.t_fcdata* %fcd, i64 0, i32 0, i32 7
  %33 = load i32* %nr, align 4, !tbaa !0
  %mul101 = shl nsw i32 %33, 1
  tail call void @gmx_sumf(i32 %mul101, float* %5, %struct.t_commrec* %mcr) #4
  br label %if.end102

if.end102:                                        ; preds = %if.then100, %lor.lhs.false, %while.end93
  ret void
}

; Function Attrs: nounwind optsize
declare double @sqrt(double) #1

; Function Attrs: optsize
declare void @gmx_sumf(i32, float*, %struct.t_commrec*) #2

; Function Attrs: nounwind optsize uwtable
define float @ta_disres(i32 %nfa, i32* nocapture %forceatoms, %union.t_iparams* nocapture %ip, [3 x float]* nocapture %x, [3 x float]* nocapture %f, %struct.t_forcerec* nocapture %fr, %struct.t_graph* nocapture %g, [3 x float]* nocapture %box, float %lambda, float* nocapture %dvdlambda, %struct.t_mdatoms* nocapture %md, i32 %ngrp, float* nocapture %egnb, float* nocapture %egcoul, %struct.t_fcdata* nocapture %fcd) #0 {
entry:
  %dx = alloca [3 x float], align 4
  %dr_bMixed2 = getelementptr inbounds %struct.t_fcdata* %fcd, i64 0, i32 0, i32 1
  %0 = load i32* %dr_bMixed2, align 4, !tbaa !0
  %dr_fc3 = getelementptr inbounds %struct.t_fcdata* %fcd, i64 0, i32 0, i32 2
  %1 = load float* %dr_fc3, align 4, !tbaa !3
  %Rtl_64 = getelementptr inbounds %struct.t_fcdata* %fcd, i64 0, i32 0, i32 12
  %2 = load float** %Rtl_64, align 8, !tbaa !4
  %Rt_65 = getelementptr inbounds %struct.t_fcdata* %fcd, i64 0, i32 0, i32 13
  %3 = load float** %Rt_65, align 8, !tbaa !4
  %Rav_66 = getelementptr inbounds %struct.t_fcdata* %fcd, i64 0, i32 0, i32 14
  %4 = load float** %Rav_66, align 8, !tbaa !4
  %conv = fpext float %1 to double
  %exp_min_t_tau = getelementptr inbounds %struct.t_fcdata* %fcd, i64 0, i32 0, i32 6
  %5 = load float* %exp_min_t_tau, align 4, !tbaa !3
  %conv7 = fpext float %5 to double
  %sub = fsub double 1.000000e+00, %conv7
  %mul = fmul double %conv, %sub
  %conv8 = fptrunc double %mul to float
  %fshift9 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 58
  %6 = load [3 x float]** %fshift9, align 8, !tbaa !4
  %cmp480 = icmp sgt i32 %nfa, 0
  br i1 %cmp480, label %while.body.lr.ph, label %while.end303

while.body.lr.ph:                                 ; preds = %entry
  %dr_weighting1 = getelementptr inbounds %struct.t_fcdata* %fcd, i64 0, i32 0, i32 0
  %7 = load i32* %dr_weighting1, align 4, !tbaa !0
  %arraydecay204 = getelementptr inbounds [3 x float]* %dx, i64 0, i64 0
  %arrayidx9.i439 = getelementptr inbounds [3 x float]* %dx, i64 0, i64 1
  %arrayidx10.i440 = getelementptr inbounds [3 x float]* %dx, i64 0, i64 2
  %tobool214 = icmp eq i32 %0, 0
  %rav = getelementptr inbounds %struct.t_fcdata* %fcd, i64 0, i32 0, i32 11
  %rt = getelementptr inbounds %struct.t_fcdata* %fcd, i64 0, i32 0, i32 10
  %start = getelementptr inbounds %struct.t_graph* %g, i64 0, i32 3
  %ishift = getelementptr inbounds %struct.t_graph* %g, i64 0, i32 7
  %cmp52 = icmp eq i32 %7, 0
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %if.end301
  %indvars.iv504 = phi i64 [ 0, %while.body.lr.ph ], [ %indvars.iv.next505, %if.end301 ]
  %fa.0490 = phi i32 [ 0, %while.body.lr.ph ], [ %fa.2, %if.end301 ]
  %instant_viol_Rav7.0487 = phi float [ 0.000000e+00, %while.body.lr.ph ], [ %instant_viol_Rav7.2, %if.end301 ]
  %tav_viol_Rav7.0486 = phi float [ 0.000000e+00, %while.body.lr.ph ], [ %tav_viol_Rav7.2, %if.end301 ]
  %vtot.0485 = phi float [ 0.000000e+00, %while.body.lr.ph ], [ %vtot.1458, %if.end301 ]
  %violtot.0484 = phi float [ 0.000000e+00, %while.body.lr.ph ], [ %violtot.1457, %if.end301 ]
  %mixed_viol.0483 = phi float [ 0.000000e+00, %while.body.lr.ph ], [ %mixed_viol.1456, %if.end301 ]
  %instant_viol.0482 = phi float [ 0.000000e+00, %while.body.lr.ph ], [ %instant_viol.2455, %if.end301 ]
  %idxprom = sext i32 %fa.0490 to i64
  %arrayidx = getelementptr inbounds i32* %forceatoms, i64 %idxprom
  %8 = load i32* %arrayidx, align 4, !tbaa !0
  %idxprom11 = sext i32 %8 to i64
  %label14 = getelementptr inbounds %union.t_iparams* %ip, i64 %idxprom11, i32 0, i32 5
  %9 = bitcast float* %label14 to i32*
  %10 = load i32* %9, align 4, !tbaa !0
  %11 = getelementptr inbounds %union.t_iparams* %ip, i64 %idxprom11, i32 0, i32 1
  %12 = load float* %11, align 4, !tbaa !3
  %13 = getelementptr inbounds %union.t_iparams* %ip, i64 %idxprom11, i32 0, i32 2
  %14 = load float* %13, align 4, !tbaa !3
  %low26 = getelementptr inbounds %union.t_iparams* %ip, i64 %idxprom11, i32 0, i32 0
  %15 = load float* %low26, align 4, !tbaa !3
  %16 = getelementptr inbounds %union.t_iparams* %ip, i64 %idxprom11, i32 0, i32 3
  %17 = load float* %16, align 4, !tbaa !3
  %mul30 = fmul float %conv8, %17
  %add470 = add nsw i32 %fa.0490, 3
  %cmp33471 = icmp slt i32 %add470, %nfa
  br i1 %cmp33471, label %land.rhs, label %while.end

while.cond31:                                     ; preds = %land.rhs
  %18 = trunc i64 %indvars.iv.next to i32
  %mul32 = mul nsw i32 %18, 3
  %add = add nsw i32 %mul32, %fa.0490
  %cmp33 = icmp slt i32 %add, %nfa
  br i1 %cmp33, label %land.rhs, label %while.end

land.rhs:                                         ; preds = %while.body, %while.cond31
  %indvars.iv = phi i64 [ %indvars.iv.next, %while.cond31 ], [ 1, %while.body ]
  %add473 = phi i32 [ %add, %while.cond31 ], [ %add470, %while.body ]
  %npairs.0472 = phi i32 [ %inc, %while.cond31 ], [ 1, %while.body ]
  %idxprom37 = sext i32 %add473 to i64
  %arrayidx38 = getelementptr inbounds i32* %forceatoms, i64 %idxprom37
  %19 = load i32* %arrayidx38, align 4, !tbaa !0
  %idxprom39 = sext i32 %19 to i64
  %label42 = getelementptr inbounds %union.t_iparams* %ip, i64 %idxprom39, i32 0, i32 5
  %20 = bitcast float* %label42 to i32*
  %21 = load i32* %20, align 4, !tbaa !0
  %cmp43 = icmp eq i32 %21, %10
  %indvars.iv.next = add i64 %indvars.iv, 1
  %inc = add nsw i32 %npairs.0472, 1
  br i1 %cmp43, label %while.cond31, label %while.end

while.end:                                        ; preds = %while.cond31, %land.rhs, %while.body
  %add.lcssa = phi i32 [ %add470, %while.body ], [ %add473, %land.rhs ], [ %add, %while.cond31 ]
  %npairs.0.lcssa = phi i32 [ 1, %while.body ], [ %npairs.0472, %land.rhs ], [ %inc, %while.cond31 ]
  %type49 = getelementptr inbounds %union.t_iparams* %ip, i64 %idxprom11, i32 0, i32 4
  %22 = bitcast float* %type49 to i32*
  %23 = load i32* %22, align 4, !tbaa !0
  %cmp50 = icmp eq i32 %23, 2
  %cmp71 = icmp sgt i32 %npairs.0.lcssa, 1
  br i1 %cmp50, label %if.else, label %if.then

if.then:                                          ; preds = %while.end
  %cmp55. = and i1 %cmp52, %cmp71
  %land.ext = zext i1 %cmp55. to i32
  %arrayidx59 = getelementptr inbounds float* %3, i64 %indvars.iv504
  %24 = load float* %arrayidx59, align 4, !tbaa !3
  %conv60 = fpext float %24 to double
  %call = call double @pow(double %conv60, double 0xBFC5555560000000) #4
  %conv63 = fptrunc double %call to float
  %arrayidx65 = getelementptr inbounds float* %4, i64 %indvars.iv504
  %25 = load float* %arrayidx65, align 4, !tbaa !3
  %conv66 = fpext float %25 to double
  %call69 = call double @pow(double %conv66, double 0xBFC5555560000000) #4
  %conv70 = fptrunc double %call69 to float
  br label %if.end

if.else:                                          ; preds = %while.end
  %conv72 = zext i1 %cmp71 to i32
  %arrayidx74 = getelementptr inbounds float* %2, i64 %indvars.iv504
  %26 = load float* %arrayidx74, align 4, !tbaa !3
  %conv75 = fpext float %26 to double
  %call78 = call double @pow(double %conv75, double 0xBFC5555560000000) #4
  %conv79 = fptrunc double %call78 to float
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %Rav.0 = phi float [ %conv70, %if.then ], [ %conv79, %if.else ]
  %Rt.0 = phi float [ %conv63, %if.then ], [ %conv79, %if.else ]
  %bConservative.0 = phi i32 [ %land.ext, %if.then ], [ %conv72, %if.else ]
  %bMixed.0 = phi i32 [ %0, %if.then ], [ 0, %if.else ]
  %cmp80 = fcmp ogt float %Rav.0, %12
  br i1 %cmp80, label %if.then92, label %if.else84

if.else84:                                        ; preds = %if.end
  %cmp85 = fcmp olt float %Rav.0, %15
  br i1 %cmp85, label %if.then92, label %if.end301

if.then92:                                        ; preds = %if.end, %if.else84
  %.sink = phi float [ %15, %if.else84 ], [ %12, %if.end ]
  %sub83 = fsub float %Rav.0, %.sink
  %conv93 = fpext float %mul30 to double
  %mul94 = fmul double %conv93, 5.000000e-01
  %mul.i = fmul float %sub83, %sub83
  %conv96 = fpext float %mul.i to double
  %mul97 = fmul double %mul94, %conv96
  %conv98 = fpext float %vtot.0485 to double
  %add99 = fadd double %conv98, %mul97
  %conv100 = fptrunc double %add99 to float
  %div = fdiv float 1.000000e+00, %conv100
  %fabsf = call float @fabsf(float %div) #3
  %27 = fpext float %fabsf to double
  %cmp103 = fcmp olt double %27, 1.200000e-38
  br i1 %cmp103, label %if.then105, label %if.end108

if.then105:                                       ; preds = %if.then92
  %conv106 = fpext float %conv100 to double
  %call107 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([17 x i8]* @.str8, i64 0, i64 0), double %conv106) #4
  br label %if.end108

if.end108:                                        ; preds = %if.then105, %if.then92
  %tobool109 = icmp eq i32 %bMixed.0, 0
  br i1 %tobool109, label %if.then110, label %if.else118

if.then110:                                       ; preds = %if.end108
  %fabsf426 = call float @fabsf(float %sub83) #3
  br label %if.then154

if.else118:                                       ; preds = %if.end108
  %cmp119 = fcmp ogt float %Rt.0, %12
  br i1 %cmp119, label %if.then121, label %if.else128

if.then121:                                       ; preds = %if.else118
  %cmp122 = fcmp ogt float %sub83, 0.000000e+00
  br i1 %cmp122, label %if.then142, label %if.end301

if.else128:                                       ; preds = %if.else118
  %cmp129 = fcmp olt float %Rt.0, %15
  %cmp132 = fcmp olt float %sub83, 0.000000e+00
  %or.cond = and i1 %cmp129, %cmp132
  br i1 %or.cond, label %if.then142, label %if.end301

if.then142:                                       ; preds = %if.then121, %if.else128
  %.sink468 = phi float [ %15, %if.else128 ], [ %12, %if.then121 ]
  %sub125 = fsub float %Rt.0, %.sink468
  %mul143 = fmul float %sub83, %sub125
  %conv146 = call float @sqrtf(float %mul143) #1
  br label %if.then154

if.then154:                                       ; preds = %if.then142, %if.then110
  %fabsf426.sink = phi float [ %fabsf426, %if.then110 ], [ %conv146, %if.then142 ]
  %sub83.pn = phi float [ %sub83, %if.then110 ], [ %conv146, %if.then142 ]
  %instant_viol.2.ph = phi float [ %instant_viol.0482, %if.then110 ], [ %sub125, %if.then142 ]
  %mixed_viol.1.ph = phi float [ %mixed_viol.0483, %if.then110 ], [ %conv146, %if.then142 ]
  %.pn = fmul float %mul30, %sub83.pn
  %f_scal.1.ph = fsub float -0.000000e+00, %.pn
  %conv117 = fadd float %violtot.0484, %fabsf426.sink
  %sub156 = fsub float %14, %12
  %28 = fmul float %sub156, %mul30
  %mul157 = fsub float -0.000000e+00, %28
  %tobool158 = icmp ne i32 %bConservative.0, 0
  br i1 %tobool158, label %if.then159, label %if.else180

if.then159:                                       ; preds = %if.then154
  %cmp160 = fcmp olt float %.pn, %28
  %cond = select i1 %cmp160, float %f_scal.1.ph, float %mul157
  br i1 %tobool109, label %if.then163, label %if.else168

if.then163:                                       ; preds = %if.then159
  %arrayidx165 = getelementptr inbounds float* %4, i64 %indvars.iv504
  %29 = load float* %arrayidx165, align 4, !tbaa !3
  %div166 = fdiv float %Rav.0, %29
  %mul167 = fmul float %cond, %div166
  br label %if.end189

if.else168:                                       ; preds = %if.then159
  %mul169 = fmul float %mixed_viol.1.ph, 2.000000e+00
  %div170 = fdiv float %cond, %mul169
  %mul171 = fmul float %Rav.0, %sub83
  %arrayidx173 = getelementptr inbounds float* %4, i64 %indvars.iv504
  %30 = load float* %arrayidx173, align 4, !tbaa !3
  %div174 = fdiv float %mul171, %30
  %mul175 = fmul float %Rt.0, %instant_viol.2.ph
  %arrayidx177 = getelementptr inbounds float* %3, i64 %indvars.iv504
  %31 = load float* %arrayidx177, align 4, !tbaa !3
  %div178 = fdiv float %mul175, %31
  br label %if.end189

if.else180:                                       ; preds = %if.then154
  %conv181 = sitofp i32 %npairs.0.lcssa to float
  %div182 = fdiv float %f_scal.1.ph, %conv181
  %cmp183 = fcmp ogt float %div182, %mul157
  %cond188 = select i1 %cmp183, float %div182, float %mul157
  br label %if.end189

if.end189:                                        ; preds = %if.then163, %if.else168, %if.else180
  %f_scal.2 = phi float [ %div170, %if.else168 ], [ %mul167, %if.then163 ], [ %cond188, %if.else180 ]
  %tav_viol_Rav7.1 = phi float [ %div174, %if.else168 ], [ %tav_viol_Rav7.0486, %if.then163 ], [ %tav_viol_Rav7.0486, %if.else180 ]
  %instant_viol_Rav7.1 = phi float [ %div178, %if.else168 ], [ %instant_viol_Rav7.0487, %if.then163 ], [ %instant_viol_Rav7.0487, %if.else180 ]
  %cmp190476 = icmp sgt i32 %npairs.0.lcssa, 0
  br i1 %cmp190476, label %for.body.lr.ph, label %if.end301

for.body.lr.ph:                                   ; preds = %if.end189
  %conv225 = fpext float %tav_viol_Rav7.1 to double
  %conv233 = fpext float %instant_viol_Rav7.1 to double
  %32 = mul i32 %npairs.0.lcssa, 3
  br label %for.body

for.body:                                         ; preds = %for.end, %for.body.lr.ph
  %indvars.iv499 = phi i64 [ %idxprom, %for.body.lr.ph ], [ %indvars.iv.next500, %for.end ]
  %p.0477 = phi i32 [ 0, %for.body.lr.ph ], [ %inc296, %for.end ]
  %33 = add nsw i64 %indvars.iv499, 1
  %arrayidx195 = getelementptr inbounds i32* %forceatoms, i64 %33
  %34 = load i32* %arrayidx195, align 4, !tbaa !0
  %35 = add nsw i64 %indvars.iv499, 2
  %arrayidx198 = getelementptr inbounds i32* %forceatoms, i64 %35
  %36 = load i32* %arrayidx198, align 4, !tbaa !0
  %idxprom199 = sext i32 %34 to i64
  %arraydecay = getelementptr inbounds [3 x float]* %x, i64 %idxprom199, i64 0
  %idxprom201 = sext i32 %36 to i64
  %arraydecay203 = getelementptr inbounds [3 x float]* %x, i64 %idxprom201, i64 0
  %37 = load float* %arraydecay, align 4, !tbaa !3
  %38 = load float* %arraydecay203, align 4, !tbaa !3
  %sub.i432 = fsub float %37, %38
  %arrayidx2.i433 = getelementptr inbounds [3 x float]* %x, i64 %idxprom199, i64 1
  %39 = load float* %arrayidx2.i433, align 4, !tbaa !3
  %arrayidx3.i434 = getelementptr inbounds [3 x float]* %x, i64 %idxprom201, i64 1
  %40 = load float* %arrayidx3.i434, align 4, !tbaa !3
  %sub4.i435 = fsub float %39, %40
  %arrayidx5.i436 = getelementptr inbounds [3 x float]* %x, i64 %idxprom199, i64 2
  %41 = load float* %arrayidx5.i436, align 4, !tbaa !3
  %arrayidx6.i437 = getelementptr inbounds [3 x float]* %x, i64 %idxprom201, i64 2
  %42 = load float* %arrayidx6.i437, align 4, !tbaa !3
  %sub7.i438 = fsub float %41, %42
  store float %sub.i432, float* %arraydecay204, align 4, !tbaa !3
  store float %sub4.i435, float* %arrayidx9.i439, align 4, !tbaa !3
  store float %sub7.i438, float* %arrayidx10.i440, align 4, !tbaa !3
  %mul.i427 = fmul float %sub.i432, %sub.i432
  %mul4.i = fmul float %sub4.i435, %sub4.i435
  %add.i = fadd float %mul.i427, %mul4.i
  %mul7.i = fmul float %sub7.i438, %sub7.i438
  %add8.i = fadd float %mul7.i, %add.i
  %conv208 = fpext float %add8.i to double
  %call209 = call double @sqrt(double %conv208) #4
  %div210 = fdiv double 1.000000e+00, %call209
  %conv211 = fptrunc double %div210 to float
  br i1 %tobool158, label %if.then213, label %if.end244

if.then213:                                       ; preds = %for.body
  %43 = trunc i64 %indvars.iv499 to i32
  %div192 = sdiv i32 %43, 3
  %idxprom216 = sext i32 %div192 to i64
  %44 = load float** %rav, align 8, !tbaa !4
  %arrayidx217 = getelementptr inbounds float* %44, i64 %idxprom216
  %45 = load float* %arrayidx217, align 4, !tbaa !3
  %conv218 = fpext float %45 to double
  %call220 = call double @pow(double %conv218, double 0x4002AAAAA0000000) #4
  br i1 %tobool214, label %if.then215, label %if.else224

if.then215:                                       ; preds = %if.then213
  %conv221 = fpext float %conv211 to double
  %mul222 = fmul double %conv221, %call220
  %conv223 = fptrunc double %mul222 to float
  br label %if.end244

if.else224:                                       ; preds = %if.then213
  %mul232 = fmul double %conv225, %call220
  %46 = load float** %rt, align 8, !tbaa !4
  %arrayidx235 = getelementptr inbounds float* %46, i64 %idxprom216
  %47 = load float* %arrayidx235, align 4, !tbaa !3
  %conv236 = fpext float %47 to double
  %call237 = call double @pow(double %conv236, double -7.000000e+00) #4
  %mul238 = fmul double %conv233, %call237
  %add239 = fadd double %mul232, %mul238
  %conv240 = fpext float %conv211 to double
  %mul241 = fmul double %conv240, %add239
  %conv242 = fptrunc double %mul241 to float
  br label %if.end244

if.end244:                                        ; preds = %if.then215, %if.else224, %for.body
  %weight_rt_1.0 = phi float [ %conv242, %if.else224 ], [ %conv223, %if.then215 ], [ %conv211, %for.body ]
  %mul245 = fmul float %f_scal.2, %weight_rt_1.0
  %48 = load i32* %start, align 4, !tbaa !0
  %sub246 = sub nsw i32 %34, %48
  %idxprom247 = sext i32 %sub246 to i64
  %49 = load [3 x i32]** %ishift, align 8, !tbaa !4
  %arraydecay249 = getelementptr inbounds [3 x i32]* %49, i64 %idxprom247, i64 0
  %sub251 = sub nsw i32 %36, %48
  %idxprom252 = sext i32 %sub251 to i64
  %arraydecay255 = getelementptr inbounds [3 x i32]* %49, i64 %idxprom252, i64 0
  %50 = load i32* %arraydecay249, align 4, !tbaa !0
  %51 = load i32* %arraydecay255, align 4, !tbaa !0
  %arrayidx2.i = getelementptr inbounds [3 x i32]* %49, i64 %idxprom247, i64 1
  %52 = load i32* %arrayidx2.i, align 4, !tbaa !0
  %arrayidx3.i = getelementptr inbounds [3 x i32]* %49, i64 %idxprom252, i64 1
  %53 = load i32* %arrayidx3.i, align 4, !tbaa !0
  %arrayidx5.i = getelementptr inbounds [3 x i32]* %49, i64 %idxprom247, i64 2
  %54 = load i32* %arrayidx5.i, align 4, !tbaa !0
  %arrayidx6.i = getelementptr inbounds [3 x i32]* %49, i64 %idxprom252, i64 2
  %55 = load i32* %arrayidx6.i, align 4, !tbaa !0
  %sub7.i = sub nsw i32 %54, %55
  %56 = mul i32 %sub7.i, 3
  %sub4.i = add i32 %52, 3
  %mul259 = sub i32 %sub4.i, %53
  %add261 = add i32 %mul259, %56
  %57 = mul i32 %add261, 3
  %mul263 = add i32 %50, 4
  %add265 = sub i32 %mul263, %51
  %add266 = add i32 %add265, %57
  %idxprom285 = sext i32 %add266 to i64
  br label %for.body270

for.body270:                                      ; preds = %for.body270.for.body270_crit_edge, %if.end244
  %58 = phi float [ %sub.i432, %if.end244 ], [ %.pre, %for.body270.for.body270_crit_edge ]
  %indvars.iv497 = phi i64 [ 0, %if.end244 ], [ %indvars.iv.next498, %for.body270.for.body270_crit_edge ]
  %mul273 = fmul float %mul245, %58
  %arrayidx277 = getelementptr inbounds [3 x float]* %f, i64 %idxprom199, i64 %indvars.iv497
  %59 = load float* %arrayidx277, align 4, !tbaa !3
  %add278 = fadd float %59, %mul273
  store float %add278, float* %arrayidx277, align 4, !tbaa !3
  %arrayidx282 = getelementptr inbounds [3 x float]* %f, i64 %idxprom201, i64 %indvars.iv497
  %60 = load float* %arrayidx282, align 4, !tbaa !3
  %sub283 = fsub float %60, %mul273
  store float %sub283, float* %arrayidx282, align 4, !tbaa !3
  %arrayidx287 = getelementptr inbounds [3 x float]* %6, i64 %idxprom285, i64 %indvars.iv497
  %61 = load float* %arrayidx287, align 4, !tbaa !3
  %add288 = fadd float %mul273, %61
  store float %add288, float* %arrayidx287, align 4, !tbaa !3
  %arrayidx291 = getelementptr inbounds [3 x float]* %6, i64 13, i64 %indvars.iv497
  %62 = load float* %arrayidx291, align 4, !tbaa !3
  %sub292 = fsub float %62, %mul273
  store float %sub292, float* %arrayidx291, align 4, !tbaa !3
  %indvars.iv.next498 = add i64 %indvars.iv497, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next498 to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 3
  br i1 %exitcond, label %for.end, label %for.body270.for.body270_crit_edge

for.body270.for.body270_crit_edge:                ; preds = %for.body270
  %arrayidx272.phi.trans.insert = getelementptr inbounds [3 x float]* %dx, i64 0, i64 %indvars.iv.next498
  %.pre = load float* %arrayidx272.phi.trans.insert, align 4, !tbaa !3
  br label %for.body270

for.end:                                          ; preds = %for.body270
  %indvars.iv.next500 = add i64 %indvars.iv499, 3
  %inc296 = add nsw i32 %p.0477, 1
  %exitcond503 = icmp eq i32 %inc296, %npairs.0.lcssa
  br i1 %exitcond503, label %for.cond.if.end301.loopexit_crit_edge, label %for.body

for.cond.if.end301.loopexit_crit_edge:            ; preds = %for.end
  %63 = add i32 %fa.0490, %32
  br label %if.end301

if.end301:                                        ; preds = %if.end189, %for.cond.if.end301.loopexit_crit_edge, %if.else128, %if.then121, %if.else84
  %vtot.1458 = phi float [ %vtot.0485, %if.else84 ], [ %conv100, %if.then121 ], [ %conv100, %if.else128 ], [ %conv100, %for.cond.if.end301.loopexit_crit_edge ], [ %conv100, %if.end189 ]
  %violtot.1457 = phi float [ %violtot.0484, %if.else84 ], [ %violtot.0484, %if.then121 ], [ %violtot.0484, %if.else128 ], [ %conv117, %for.cond.if.end301.loopexit_crit_edge ], [ %conv117, %if.end189 ]
  %mixed_viol.1456 = phi float [ %mixed_viol.0483, %if.else84 ], [ %mixed_viol.0483, %if.then121 ], [ %mixed_viol.0483, %if.else128 ], [ %mixed_viol.1.ph, %for.cond.if.end301.loopexit_crit_edge ], [ %mixed_viol.1.ph, %if.end189 ]
  %instant_viol.2455 = phi float [ %instant_viol.0482, %if.else84 ], [ %instant_viol.0482, %if.then121 ], [ %instant_viol.0482, %if.else128 ], [ %instant_viol.2.ph, %for.cond.if.end301.loopexit_crit_edge ], [ %instant_viol.2.ph, %if.end189 ]
  %tav_viol_Rav7.2 = phi float [ %tav_viol_Rav7.0486, %if.else84 ], [ %tav_viol_Rav7.0486, %if.then121 ], [ %tav_viol_Rav7.0486, %if.else128 ], [ %tav_viol_Rav7.1, %for.cond.if.end301.loopexit_crit_edge ], [ %tav_viol_Rav7.1, %if.end189 ]
  %instant_viol_Rav7.2 = phi float [ %instant_viol_Rav7.0487, %if.else84 ], [ %instant_viol_Rav7.0487, %if.then121 ], [ %instant_viol_Rav7.0487, %if.else128 ], [ %instant_viol_Rav7.1, %for.cond.if.end301.loopexit_crit_edge ], [ %instant_viol_Rav7.1, %if.end189 ]
  %fa.2 = phi i32 [ %add.lcssa, %if.else84 ], [ %add.lcssa, %if.then121 ], [ %add.lcssa, %if.else128 ], [ %63, %for.cond.if.end301.loopexit_crit_edge ], [ %fa.0490, %if.end189 ]
  %indvars.iv.next505 = add i64 %indvars.iv504, 1
  %cmp = icmp slt i32 %fa.2, %nfa
  br i1 %cmp, label %while.body, label %while.end303

while.end303:                                     ; preds = %if.end301, %entry
  %vtot.0.lcssa = phi float [ 0.000000e+00, %entry ], [ %vtot.1458, %if.end301 ]
  %violtot.0.lcssa = phi float [ 0.000000e+00, %entry ], [ %violtot.1457, %if.end301 ]
  %sumviol = getelementptr inbounds %struct.t_fcdata* %fcd, i64 0, i32 0, i32 9
  store float %violtot.0.lcssa, float* %sumviol, align 4, !tbaa !3
  ret float %vtot.0.lcssa
}

; Function Attrs: nounwind optsize
declare double @pow(double, double) #1

; Function Attrs: nounwind optsize
declare i32 @printf(i8* nocapture, ...) #1

declare float @fabsf(float)

; Function Attrs: nounwind optsize
declare float @sqrtf(float) #1

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize }

!0 = metadata !{metadata !"int", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"float", metadata !1}
!4 = metadata !{metadata !"any pointer", metadata !1}
