; ModuleID = '../../SPEC/benchspec/CPU2006/435.gromacs/src/orires.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%union.t_iparams = type { %struct.anon.2 }
%struct.anon.2 = type { float, float, float, float, float, float }
%struct.t_mdatoms = type { float, i32, float*, float*, float*, float*, float*, float*, float*, i32*, i32*, i32*, i32*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16* }
%struct.t_inputrec = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, float, float, float, i32, i32, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, i32, float, [3 x [3 x float]], [3 x [3 x float]], i32, float, float, i32, float, float, i32, float, float, float, i32, float, float, i32, float, float, float, float, float, i32, i32, i32, float, float, float, i32, float, float, i32, i32, i32, i32, i32, float, i32, float, float, i32, float, i32, i32, i32, i32, float, float, float, float, %struct.t_grpopts, [3 x %struct.t_cosines], [3 x %struct.t_cosines] }
%struct.t_grpopts = type { i32, i32, i32, i32, float*, float*, float*, [3 x float]*, [3 x i32]*, i32* }
%struct.t_cosines = type { i32, float*, float* }
%struct.t_commrec = type { i32, i32, i32, i32, i32, i32 }
%struct.t_fcdata = type { %struct.t_disresdata, %struct.t_oriresdata }
%struct.t_disresdata = type { i32, i32, float, float, float, float, float, i32, i32, float, float*, float*, float*, float*, float* }
%struct.t_oriresdata = type { float, float, float, float, i32, i32, i32, float, float*, [3 x float]*, [3 x float]*, [3 x [3 x float]], [3 x [3 x float]]*, [5 x float]*, [5 x float]*, [5 x float]*, float*, float*, float*, float, [5 x float]*, float*** }
%struct.t_forcerec = type { i32, float, float, float, float, float, float, i32, float, float, float, float, float, i32, i32, float, i32, float, float*, float*, float*, float*, float, float, float*, float, float, float, float, i32, float, float, i32, i32, i32, i32, i32, i32, i32, i32, [3 x float], i32, i32, i32, i32, i32*, i32*, [3 x float]*, [3 x float]*, [13 x %struct.t_nblist], [13 x %struct.t_nblist], i32, i32, [3 x float]*, [3 x float]*, [3 x float]*, i32, float, [3 x float]*, i32, i32*, float*, i32, i32, i32, float*, i32*, float }
%struct.t_nblist = type { i32, i32, i32, i32, i32, i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32, i32* }
%struct.t_graph = type { i32, i32, i32, i32, i32, i32*, i32**, [3 x i32]* }

@.str = private unnamed_addr constant [6 x i8] c"nr_ex\00", align 1
@.str1 = private unnamed_addr constant [54 x i8] c"../../SPEC/benchspec/CPU2006/435.gromacs/src/orires.c\00", align 1
@.str2 = private unnamed_addr constant [6 x i8] c"od->S\00", align 1
@.str3 = private unnamed_addr constant [10 x i8] c"od->Dinsl\00", align 1
@.str4 = private unnamed_addr constant [9 x i8] c"od->Dins\00", align 1
@.str5 = private unnamed_addr constant [9 x i8] c"od->Dtav\00", align 1
@.str6 = private unnamed_addr constant [10 x i8] c"od->oinsl\00", align 1
@.str7 = private unnamed_addr constant [9 x i8] c"od->oins\00", align 1
@.str8 = private unnamed_addr constant [9 x i8] c"od->otav\00", align 1
@.str9 = private unnamed_addr constant [8 x i8] c"od->tmp\00", align 1
@.str10 = private unnamed_addr constant [8 x i8] c"od->TMP\00", align 1
@.str11 = private unnamed_addr constant [12 x i8] c"od->TMP[ex]\00", align 1
@.str12 = private unnamed_addr constant [15 x i8] c"od->TMP[ex][i]\00", align 1
@.str13 = private unnamed_addr constant [9 x i8] c"od->mref\00", align 1
@.str14 = private unnamed_addr constant [9 x i8] c"od->xref\00", align 1
@.str15 = private unnamed_addr constant [9 x i8] c"od->xtmp\00", align 1
@.str16 = private unnamed_addr constant [34 x i8] c"Found %d orientation experiments\0A\00", align 1
@.str17 = private unnamed_addr constant [35 x i8] c"  experiment %d has %d restraints\0A\00", align 1
@.str18 = private unnamed_addr constant [60 x i8] c"  the fit group consists of %d atoms and has total mass %g\0A\00", align 1
@.str19 = private unnamed_addr constant [68 x i8] c"  the orientation restraints are ensemble averaged over %d systems\0A\00", align 1
@.str20 = private unnamed_addr constant [37 x i8] c"the number of orientation restraints\00", align 1
@.str21 = private unnamed_addr constant [52 x i8] c"the number of fit atoms for orientation restraining\00", align 1
@print_orires_log.M = internal unnamed_addr global double** null, align 8
@print_orires_log.eig = internal unnamed_addr global double* null, align 8
@print_orires_log.v = internal unnamed_addr global double** null, align 8
@.str22 = private unnamed_addr constant [2 x i8] c"M\00", align 1
@.str23 = private unnamed_addr constant [5 x i8] c"M[i]\00", align 1
@.str24 = private unnamed_addr constant [4 x i8] c"eig\00", align 1
@.str25 = private unnamed_addr constant [2 x i8] c"v\00", align 1
@.str26 = private unnamed_addr constant [5 x i8] c"v[i]\00", align 1
@.str27 = private unnamed_addr constant [30 x i8] c"  Orientation experiment %d:\0A\00", align 1
@.str28 = private unnamed_addr constant [25 x i8] c"    order parameter: %g\0A\00", align 1
@.str29 = private unnamed_addr constant [36 x i8] c"    eig: %6.3f   %6.3f %6.3f %6.3f\0A\00", align 1

; Function Attrs: nounwind optsize uwtable
define void @init_orires(%struct._IO_FILE* %log, i32 %nfa, i32* nocapture %forceatoms, %union.t_iparams* nocapture %ip, [3 x float]* nocapture %xref, %struct.t_mdatoms* nocapture %md, %struct.t_inputrec* nocapture %ir, %struct.t_commrec* %mcr, %struct.t_fcdata* %fcd) #0 {
entry:
  %com = alloca [3 x float], align 4
  %orires_fc = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 56
  %0 = load float* %orires_fc, align 4, !tbaa !0
  %fc = getelementptr inbounds %struct.t_fcdata* %fcd, i64 0, i32 1, i32 0
  store float %0, float* %fc, align 4, !tbaa !0
  %nex = getelementptr inbounds %struct.t_fcdata* %fcd, i64 0, i32 1, i32 5
  store i32 0, i32* %nex, align 4, !tbaa !3
  %S = getelementptr inbounds %struct.t_fcdata* %fcd, i64 0, i32 1, i32 12
  store [3 x [3 x float]]* null, [3 x [3 x float]]** %S, align 8, !tbaa !4
  %orires_tau = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 57
  %1 = load float* %orires_tau, align 4, !tbaa !0
  %cmp = fcmp ogt float %1, 0.000000e+00
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %delta_t = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 15
  %2 = load float* %delta_t, align 4, !tbaa !0
  %sub = fsub float -0.000000e+00, %2
  %div = fdiv float %sub, %1
  %conv = fpext float %div to double
  %call = call double @exp(double %conv) #6
  %conv2 = fptrunc double %call to float
  %edt = getelementptr inbounds %struct.t_fcdata* %fcd, i64 0, i32 1, i32 1
  store float %conv2, float* %edt, align 4, !tbaa !0
  br label %if.end

if.else:                                          ; preds = %entry
  %edt3 = getelementptr inbounds %struct.t_fcdata* %fcd, i64 0, i32 1, i32 1
  store float 0.000000e+00, float* %edt3, align 4, !tbaa !0
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %3 = phi float [ 0.000000e+00, %if.else ], [ %conv2, %if.then ]
  %sub5 = fsub float 1.000000e+00, %3
  %edt1 = getelementptr inbounds %struct.t_fcdata* %fcd, i64 0, i32 1, i32 2
  store float %sub5, float* %edt1, align 4, !tbaa !0
  %exp_min_t_tau = getelementptr inbounds %struct.t_fcdata* %fcd, i64 0, i32 1, i32 3
  store float 1.000000e+00, float* %exp_min_t_tau, align 4, !tbaa !0
  %div6 = sdiv i32 %nfa, 3
  %nr7 = getelementptr inbounds %struct.t_fcdata* %fcd, i64 0, i32 1, i32 4
  store i32 %div6, i32* %nr7, align 4, !tbaa !3
  %nfa.off = add i32 %nfa, 2
  %4 = icmp ult i32 %nfa.off, 5
  br i1 %4, label %if.end263, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end
  %cmp13422 = icmp sgt i32 %nfa, 0
  br i1 %cmp13422, label %for.body, label %for.end42

for.body:                                         ; preds = %if.end36, %for.cond.preheader
  %indvars.iv442 = phi i64 [ 0, %for.cond.preheader ], [ %indvars.iv.next443, %if.end36 ]
  %nr_ex.0423 = phi i32* [ null, %for.cond.preheader ], [ %nr_ex.1, %if.end36 ]
  %arrayidx = getelementptr inbounds i32* %forceatoms, i64 %indvars.iv442
  %5 = load i32* %arrayidx, align 4, !tbaa !3
  %idxprom15 = sext i32 %5 to i64
  %arrayidx16 = getelementptr inbounds %union.t_iparams* %ip, i64 %idxprom15
  %ex18 = bitcast %union.t_iparams* %arrayidx16 to i32*
  %6 = load i32* %ex18, align 4, !tbaa !3
  %7 = load i32* %nex, align 4, !tbaa !3
  %cmp20 = icmp slt i32 %6, %7
  br i1 %cmp20, label %if.end36, label %if.then22

if.then22:                                        ; preds = %for.body
  %8 = bitcast i32* %nr_ex.0423 to i8*
  %add = add nsw i32 %6, 1
  %mul = shl i32 %add, 2
  %call25 = call i8* @save_realloc(i8* getelementptr inbounds ([6 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str1, i64 0, i64 0), i32 72, i8* %8, i32 %mul) #6
  %9 = bitcast i8* %call25 to i32*
  %10 = load i32* %nex, align 4, !tbaa !3
  %cmp29420 = icmp slt i32 %10, %add
  br i1 %cmp29420, label %for.body31.lr.ph, label %for.end

for.body31.lr.ph:                                 ; preds = %if.then22
  %11 = sext i32 %10 to i64
  %12 = shl nsw i64 %11, 2
  %scevgep = getelementptr i8* %call25, i64 %12
  %13 = sub i32 %6, %10
  %14 = zext i32 %13 to i64
  %15 = shl nuw nsw i64 %14, 2
  %16 = add i64 %15, 4
  call void @llvm.memset.p0i8.i64(i8* %scevgep, i8 0, i64 %16, i32 4, i1 false)
  br label %for.end

for.end:                                          ; preds = %for.body31.lr.ph, %if.then22
  store i32 %add, i32* %nex, align 4, !tbaa !3
  br label %if.end36

if.end36:                                         ; preds = %for.body, %for.end
  %nr_ex.1 = phi i32* [ %9, %for.end ], [ %nr_ex.0423, %for.body ]
  %idxprom37 = sext i32 %6 to i64
  %arrayidx38 = getelementptr inbounds i32* %nr_ex.1, i64 %idxprom37
  %17 = load i32* %arrayidx38, align 4, !tbaa !3
  %inc39 = add nsw i32 %17, 1
  store i32 %inc39, i32* %arrayidx38, align 4, !tbaa !3
  %indvars.iv.next443 = add i64 %indvars.iv442, 3
  %18 = trunc i64 %indvars.iv.next443 to i32
  %cmp13 = icmp slt i32 %18, %nfa
  br i1 %cmp13, label %for.body, label %for.end42

for.end42:                                        ; preds = %if.end36, %for.cond.preheader
  %nr_ex.0.lcssa = phi i32* [ null, %for.cond.preheader ], [ %nr_ex.1, %if.end36 ]
  %19 = load i32* %nex, align 4, !tbaa !3
  %call44 = call i8* @save_calloc(i8* getelementptr inbounds ([6 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str1, i64 0, i64 0), i32 79, i32 %19, i32 36) #6
  %20 = bitcast i8* %call44 to [3 x [3 x float]]*
  store [3 x [3 x float]]* %20, [3 x [3 x float]]** %S, align 8, !tbaa !4
  %21 = load i32* %nr7, align 4, !tbaa !3
  %call47 = call i8* @save_calloc(i8* getelementptr inbounds ([10 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str1, i64 0, i64 0), i32 83, i32 %21, i32 20) #6
  %22 = bitcast i8* %call47 to [5 x float]*
  %Dinsl = getelementptr inbounds %struct.t_fcdata* %fcd, i64 0, i32 1, i32 13
  store [5 x float]* %22, [5 x float]** %Dinsl, align 8, !tbaa !4
  %tobool = icmp ne %struct.t_commrec* %mcr, null
  br i1 %tobool, label %if.then48, label %if.else51

if.then48:                                        ; preds = %for.end42
  %23 = load i32* %nr7, align 4, !tbaa !3
  %call50 = call i8* @save_calloc(i8* getelementptr inbounds ([9 x i8]* @.str4, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str1, i64 0, i64 0), i32 85, i32 %23, i32 20) #6
  %24 = bitcast i8* %call50 to [5 x float]*
  %Dins = getelementptr inbounds %struct.t_fcdata* %fcd, i64 0, i32 1, i32 14
  store [5 x float]* %24, [5 x float]** %Dins, align 8, !tbaa !4
  br label %if.end54

if.else51:                                        ; preds = %for.end42
  %Dins53 = getelementptr inbounds %struct.t_fcdata* %fcd, i64 0, i32 1, i32 14
  store [5 x float]* %22, [5 x float]** %Dins53, align 8, !tbaa !4
  br label %if.end54

if.end54:                                         ; preds = %if.else51, %if.then48
  %25 = phi [5 x float]* [ %22, %if.else51 ], [ %24, %if.then48 ]
  %26 = load float* %orires_tau, align 4, !tbaa !0
  %fabsf = call float @fabsf(float %26) #3
  %27 = fpext float %fabsf to double
  %cmp58 = fcmp olt double %27, 1.200000e-38
  br i1 %cmp58, label %if.then60, label %if.else62

if.then60:                                        ; preds = %if.end54
  %Dtav = getelementptr inbounds %struct.t_fcdata* %fcd, i64 0, i32 1, i32 15
  store [5 x float]* %25, [5 x float]** %Dtav, align 8, !tbaa !4
  br label %if.end66

if.else62:                                        ; preds = %if.end54
  %28 = load i32* %nr7, align 4, !tbaa !3
  %call64 = call i8* @save_calloc(i8* getelementptr inbounds ([9 x i8]* @.str5, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str1, i64 0, i64 0), i32 91, i32 %28, i32 20) #6
  %29 = bitcast i8* %call64 to [5 x float]*
  %Dtav65 = getelementptr inbounds %struct.t_fcdata* %fcd, i64 0, i32 1, i32 15
  store [5 x float]* %29, [5 x float]** %Dtav65, align 8, !tbaa !4
  br label %if.end66

if.end66:                                         ; preds = %if.else62, %if.then60
  %30 = load i32* %nr7, align 4, !tbaa !3
  %call68 = call i8* @save_calloc(i8* getelementptr inbounds ([10 x i8]* @.str6, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str1, i64 0, i64 0), i32 92, i32 %30, i32 4) #6
  %31 = bitcast i8* %call68 to float*
  %oinsl = getelementptr inbounds %struct.t_fcdata* %fcd, i64 0, i32 1, i32 16
  store float* %31, float** %oinsl, align 8, !tbaa !4
  br i1 %tobool, label %if.then70, label %if.else73

if.then70:                                        ; preds = %if.end66
  %32 = load i32* %nr7, align 4, !tbaa !3
  %call72 = call i8* @save_calloc(i8* getelementptr inbounds ([9 x i8]* @.str7, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str1, i64 0, i64 0), i32 94, i32 %32, i32 4) #6
  %33 = bitcast i8* %call72 to float*
  %oins = getelementptr inbounds %struct.t_fcdata* %fcd, i64 0, i32 1, i32 17
  store float* %33, float** %oins, align 8, !tbaa !4
  br label %if.end76

if.else73:                                        ; preds = %if.end66
  %oins75 = getelementptr inbounds %struct.t_fcdata* %fcd, i64 0, i32 1, i32 17
  store float* %31, float** %oins75, align 8, !tbaa !4
  br label %if.end76

if.end76:                                         ; preds = %if.else73, %if.then70
  %34 = phi float* [ %31, %if.else73 ], [ %33, %if.then70 ]
  %35 = load float* %orires_tau, align 4, !tbaa !0
  %fabsf397 = call float @fabsf(float %35) #3
  %36 = fpext float %fabsf397 to double
  %cmp80 = fcmp olt double %36, 1.200000e-38
  br i1 %cmp80, label %if.then82, label %if.else84

if.then82:                                        ; preds = %if.end76
  %otav = getelementptr inbounds %struct.t_fcdata* %fcd, i64 0, i32 1, i32 18
  store float* %34, float** %otav, align 8, !tbaa !4
  br label %if.end88

if.else84:                                        ; preds = %if.end76
  %37 = load i32* %nr7, align 4, !tbaa !3
  %call86 = call i8* @save_calloc(i8* getelementptr inbounds ([9 x i8]* @.str8, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str1, i64 0, i64 0), i32 100, i32 %37, i32 4) #6
  %38 = bitcast i8* %call86 to float*
  %otav87 = getelementptr inbounds %struct.t_fcdata* %fcd, i64 0, i32 1, i32 18
  store float* %38, float** %otav87, align 8, !tbaa !4
  br label %if.end88

if.end88:                                         ; preds = %if.else84, %if.then82
  %39 = load i32* %nex, align 4, !tbaa !3
  %call90 = call i8* @save_calloc(i8* getelementptr inbounds ([8 x i8]* @.str9, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str1, i64 0, i64 0), i32 101, i32 %39, i32 20) #6
  %40 = bitcast i8* %call90 to [5 x float]*
  %tmp = getelementptr inbounds %struct.t_fcdata* %fcd, i64 0, i32 1, i32 20
  store [5 x float]* %40, [5 x float]** %tmp, align 8, !tbaa !4
  %41 = load i32* %nex, align 4, !tbaa !3
  %call92 = call i8* @save_calloc(i8* getelementptr inbounds ([8 x i8]* @.str10, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str1, i64 0, i64 0), i32 102, i32 %41, i32 8) #6
  %42 = bitcast i8* %call92 to float***
  %TMP = getelementptr inbounds %struct.t_fcdata* %fcd, i64 0, i32 1, i32 21
  store float*** %42, float**** %TMP, align 8, !tbaa !4
  %43 = load i32* %nex, align 4, !tbaa !3
  %cmp95418 = icmp sgt i32 %43, 0
  br i1 %cmp95418, label %for.body97, label %for.end117

for.body97:                                       ; preds = %if.end88, %for.inc115
  %indvars.iv438 = phi i64 [ %indvars.iv.next439, %for.inc115 ], [ 0, %if.end88 ]
  %call98 = call i8* @save_calloc(i8* getelementptr inbounds ([12 x i8]* @.str11, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str1, i64 0, i64 0), i32 104, i32 5, i32 8) #6
  %44 = bitcast i8* %call98 to float**
  %45 = load float**** %TMP, align 8, !tbaa !4
  %arrayidx101 = getelementptr inbounds float*** %45, i64 %indvars.iv438
  store float** %44, float*** %arrayidx101, align 8, !tbaa !4
  br label %for.body105

for.body105:                                      ; preds = %for.body105, %for.body97
  %indvars.iv434 = phi i64 [ 0, %for.body97 ], [ %indvars.iv.next435, %for.body105 ]
  %call106 = call i8* @save_calloc(i8* getelementptr inbounds ([15 x i8]* @.str12, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str1, i64 0, i64 0), i32 106, i32 5, i32 4) #6
  %46 = bitcast i8* %call106 to float*
  %47 = load float**** %TMP, align 8, !tbaa !4
  %arrayidx110 = getelementptr inbounds float*** %47, i64 %indvars.iv438
  %48 = load float*** %arrayidx110, align 8, !tbaa !4
  %arrayidx111 = getelementptr inbounds float** %48, i64 %indvars.iv434
  store float* %46, float** %arrayidx111, align 8, !tbaa !4
  %indvars.iv.next435 = add i64 %indvars.iv434, 1
  %lftr.wideiv436 = trunc i64 %indvars.iv.next435 to i32
  %exitcond437 = icmp eq i32 %lftr.wideiv436, 5
  br i1 %exitcond437, label %for.inc115, label %for.body105

for.inc115:                                       ; preds = %for.body105
  %indvars.iv.next439 = add i64 %indvars.iv438, 1
  %49 = load i32* %nex, align 4, !tbaa !3
  %50 = trunc i64 %indvars.iv.next439 to i32
  %cmp95 = icmp slt i32 %50, %49
  br i1 %cmp95, label %for.body97, label %for.end117

for.end117:                                       ; preds = %for.inc115, %if.end88
  %nref = getelementptr inbounds %struct.t_fcdata* %fcd, i64 0, i32 1, i32 6
  store i32 0, i32* %nref, align 4, !tbaa !3
  %nr119 = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 1
  %51 = load i32* %nr119, align 4, !tbaa !3
  %cmp120414 = icmp sgt i32 %51, 0
  br i1 %cmp120414, label %for.body122.lr.ph, label %for.end134

for.body122.lr.ph:                                ; preds = %for.end117
  %cORF = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 22
  %52 = load i16** %cORF, align 8, !tbaa !4
  br label %for.body122

for.body122:                                      ; preds = %for.body122.lr.ph, %for.inc132
  %53 = phi i32 [ %51, %for.body122.lr.ph ], [ %56, %for.inc132 ]
  %54 = phi i32 [ 0, %for.body122.lr.ph ], [ %57, %for.inc132 ]
  %indvars.iv432 = phi i64 [ 0, %for.body122.lr.ph ], [ %indvars.iv.next433, %for.inc132 ]
  %arrayidx124 = getelementptr inbounds i16* %52, i64 %indvars.iv432
  %55 = load i16* %arrayidx124, align 2, !tbaa !5
  %cmp126 = icmp eq i16 %55, 0
  br i1 %cmp126, label %if.then128, label %for.inc132

if.then128:                                       ; preds = %for.body122
  %inc130 = add nsw i32 %54, 1
  store i32 %inc130, i32* %nref, align 4, !tbaa !3
  %.pre446 = load i32* %nr119, align 4, !tbaa !3
  br label %for.inc132

for.inc132:                                       ; preds = %for.body122, %if.then128
  %56 = phi i32 [ %53, %for.body122 ], [ %.pre446, %if.then128 ]
  %57 = phi i32 [ %54, %for.body122 ], [ %inc130, %if.then128 ]
  %indvars.iv.next433 = add i64 %indvars.iv432, 1
  %58 = trunc i64 %indvars.iv.next433 to i32
  %cmp120 = icmp slt i32 %58, %56
  br i1 %cmp120, label %for.body122, label %for.end134

for.end134:                                       ; preds = %for.inc132, %for.end117
  %59 = phi i32 [ 0, %for.end117 ], [ %57, %for.inc132 ]
  %call136 = call i8* @save_calloc(i8* getelementptr inbounds ([9 x i8]* @.str13, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str1, i64 0, i64 0), i32 113, i32 %59, i32 4) #6
  %60 = bitcast i8* %call136 to float*
  %mref = getelementptr inbounds %struct.t_fcdata* %fcd, i64 0, i32 1, i32 8
  store float* %60, float** %mref, align 8, !tbaa !4
  %61 = load i32* %nref, align 4, !tbaa !3
  %call138 = call i8* @save_calloc(i8* getelementptr inbounds ([9 x i8]* @.str14, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str1, i64 0, i64 0), i32 114, i32 %61, i32 12) #6
  %62 = bitcast i8* %call138 to [3 x float]*
  %xref139 = getelementptr inbounds %struct.t_fcdata* %fcd, i64 0, i32 1, i32 9
  store [3 x float]* %62, [3 x float]** %xref139, align 8, !tbaa !4
  %63 = load i32* %nref, align 4, !tbaa !3
  %call141 = call i8* @save_calloc(i8* getelementptr inbounds ([9 x i8]* @.str15, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str1, i64 0, i64 0), i32 115, i32 %63, i32 12) #6
  %64 = bitcast i8* %call141 to [3 x float]*
  %xtmp = getelementptr inbounds %struct.t_fcdata* %fcd, i64 0, i32 1, i32 10
  store [3 x float]* %64, [3 x float]** %xtmp, align 8, !tbaa !4
  %arraydecay = getelementptr inbounds [3 x float]* %com, i64 0, i64 0
  store float 0.000000e+00, float* %arraydecay, align 4, !tbaa !0
  %arrayidx1.i = getelementptr inbounds [3 x float]* %com, i64 0, i64 1
  store float 0.000000e+00, float* %arrayidx1.i, align 4, !tbaa !0
  %arrayidx2.i = getelementptr inbounds [3 x float]* %com, i64 0, i64 2
  store float 0.000000e+00, float* %arrayidx2.i, align 4, !tbaa !0
  %65 = load i32* %nr119, align 4, !tbaa !3
  %cmp144410 = icmp sgt i32 %65, 0
  br i1 %cmp144410, label %for.body146.lr.ph, label %for.end200

for.body146.lr.ph:                                ; preds = %for.end134
  %cORF148 = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 22
  %66 = load i16** %cORF148, align 8, !tbaa !4
  %massT = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 4
  %cmp159 = icmp eq %struct.t_commrec* %mcr, null
  %nodeid = getelementptr inbounds %struct.t_commrec* %mcr, i64 0, i32 0
  %threadid = getelementptr inbounds %struct.t_commrec* %mcr, i64 0, i32 4
  br label %for.body146

for.body146:                                      ; preds = %for.body146.lr.ph, %for.inc198
  %indvars.iv430 = phi i64 [ 0, %for.body146.lr.ph ], [ %indvars.iv.next431, %for.inc198 ]
  %mtot.0412 = phi float [ 0.000000e+00, %for.body146.lr.ph ], [ %mtot.1, %for.inc198 ]
  %j.1411 = phi i32 [ 0, %for.body146.lr.ph ], [ %j.2, %for.inc198 ]
  %arrayidx149 = getelementptr inbounds i16* %66, i64 %indvars.iv430
  %67 = load i16* %arrayidx149, align 2, !tbaa !5
  %cmp151 = icmp eq i16 %67, 0
  br i1 %cmp151, label %if.then153, label %for.inc198

if.then153:                                       ; preds = %for.body146
  %68 = load float** %massT, align 8, !tbaa !4
  %arrayidx155 = getelementptr inbounds float* %68, i64 %indvars.iv430
  %69 = load float* %arrayidx155, align 4, !tbaa !0
  %idxprom156 = sext i32 %j.1411 to i64
  %70 = load float** %mref, align 8, !tbaa !4
  %arrayidx158 = getelementptr inbounds float* %70, i64 %idxprom156
  store float %69, float* %arrayidx158, align 4, !tbaa !0
  br i1 %cmp159, label %if.then165, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then153
  %71 = load i32* %nodeid, align 4, !tbaa !3
  %cmp161 = icmp eq i32 %71, 0
  br i1 %cmp161, label %land.lhs.true, label %if.end191

land.lhs.true:                                    ; preds = %lor.lhs.false
  %72 = load i32* %threadid, align 4, !tbaa !3
  %cmp163 = icmp eq i32 %72, 0
  br i1 %cmp163, label %if.then165, label %if.end191

if.then165:                                       ; preds = %land.lhs.true, %if.then153
  %arraydecay168 = getelementptr inbounds [3 x float]* %xref, i64 %indvars.iv430, i64 0
  %73 = load [3 x float]** %xref139, align 8, !tbaa !4
  %arraydecay172 = getelementptr inbounds [3 x float]* %73, i64 %idxprom156, i64 0
  %74 = load float* %arraydecay168, align 4, !tbaa !0
  store float %74, float* %arraydecay172, align 4, !tbaa !0
  %arrayidx2.i401 = getelementptr inbounds [3 x float]* %xref, i64 %indvars.iv430, i64 1
  %75 = load float* %arrayidx2.i401, align 4, !tbaa !0
  %arrayidx3.i402 = getelementptr inbounds [3 x float]* %73, i64 %idxprom156, i64 1
  store float %75, float* %arrayidx3.i402, align 4, !tbaa !0
  %arrayidx4.i403 = getelementptr inbounds [3 x float]* %xref, i64 %indvars.iv430, i64 2
  %76 = load float* %arrayidx4.i403, align 4, !tbaa !0
  %arrayidx5.i404 = getelementptr inbounds [3 x float]* %73, i64 %idxprom156, i64 2
  store float %76, float* %arrayidx5.i404, align 4, !tbaa !0
  %77 = load float* %arrayidx158, align 4, !tbaa !0
  br label %for.body176

for.body176:                                      ; preds = %for.body176, %if.then165
  %indvars.iv428 = phi i64 [ 0, %if.then165 ], [ %indvars.iv.next429, %for.body176 ]
  %arrayidx183 = getelementptr inbounds [3 x float]* %xref, i64 %indvars.iv430, i64 %indvars.iv428
  %78 = load float* %arrayidx183, align 4, !tbaa !0
  %mul184 = fmul float %77, %78
  %arrayidx186 = getelementptr inbounds [3 x float]* %com, i64 0, i64 %indvars.iv428
  %79 = load float* %arrayidx186, align 4, !tbaa !0
  %add187 = fadd float %79, %mul184
  store float %add187, float* %arrayidx186, align 4, !tbaa !0
  %indvars.iv.next429 = add i64 %indvars.iv428, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next429 to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 3
  br i1 %exitcond, label %if.end191, label %for.body176

if.end191:                                        ; preds = %for.body176, %land.lhs.true, %lor.lhs.false
  %80 = phi float [ %69, %land.lhs.true ], [ %69, %lor.lhs.false ], [ %77, %for.body176 ]
  %add195 = fadd float %mtot.0412, %80
  %inc196 = add nsw i32 %j.1411, 1
  br label %for.inc198

for.inc198:                                       ; preds = %for.body146, %if.end191
  %j.2 = phi i32 [ %inc196, %if.end191 ], [ %j.1411, %for.body146 ]
  %mtot.1 = phi float [ %add195, %if.end191 ], [ %mtot.0412, %for.body146 ]
  %indvars.iv.next431 = add i64 %indvars.iv430, 1
  %81 = trunc i64 %indvars.iv.next431 to i32
  %cmp144 = icmp slt i32 %81, %65
  br i1 %cmp144, label %for.body146, label %for.cond142.for.end200_crit_edge

for.cond142.for.end200_crit_edge:                 ; preds = %for.inc198
  %.pre = load float* %arraydecay, align 4, !tbaa !0
  %.pre444 = load float* %arrayidx1.i, align 4, !tbaa !0
  %.pre445 = load float* %arrayidx2.i, align 4, !tbaa !0
  br label %for.end200

for.end200:                                       ; preds = %for.cond142.for.end200_crit_edge, %for.end134
  %82 = phi float [ %.pre445, %for.cond142.for.end200_crit_edge ], [ 0.000000e+00, %for.end134 ]
  %83 = phi float [ %.pre444, %for.cond142.for.end200_crit_edge ], [ 0.000000e+00, %for.end134 ]
  %84 = phi float [ %.pre, %for.cond142.for.end200_crit_edge ], [ 0.000000e+00, %for.end134 ]
  %mtot.0.lcssa = phi float [ %mtot.1, %for.cond142.for.end200_crit_edge ], [ 0.000000e+00, %for.end134 ]
  %conv201 = fpext float %mtot.0.lcssa to double
  %conv203 = fdiv float 1.000000e+00, %mtot.0.lcssa
  %invmref = getelementptr inbounds %struct.t_fcdata* %fcd, i64 0, i32 1, i32 7
  store float %conv203, float* %invmref, align 4, !tbaa !0
  %mul.i = fmul float %conv203, %84
  store float %mul.i, float* %arraydecay, align 4, !tbaa !0
  %mul3.i = fmul float %conv203, %83
  store float %mul3.i, float* %arrayidx1.i, align 4, !tbaa !0
  %mul6.i = fmul float %conv203, %82
  store float %mul6.i, float* %arrayidx2.i, align 4, !tbaa !0
  %cmp207 = icmp eq %struct.t_commrec* %mcr, null
  br i1 %cmp207, label %for.cond218.preheader, label %lor.lhs.false209

lor.lhs.false209:                                 ; preds = %for.end200
  %nodeid210 = getelementptr inbounds %struct.t_commrec* %mcr, i64 0, i32 0
  %85 = load i32* %nodeid210, align 4, !tbaa !3
  %cmp211 = icmp eq i32 %85, 0
  br i1 %cmp211, label %land.lhs.true213, label %if.end231

land.lhs.true213:                                 ; preds = %lor.lhs.false209
  %threadid214 = getelementptr inbounds %struct.t_commrec* %mcr, i64 0, i32 4
  %86 = load i32* %threadid214, align 4, !tbaa !3
  %cmp215 = icmp eq i32 %86, 0
  br i1 %cmp215, label %for.cond218.preheader, label %if.end231

for.cond218.preheader:                            ; preds = %land.lhs.true213, %for.end200
  %87 = load i32* %nref, align 4, !tbaa !3
  %cmp220407 = icmp sgt i32 %87, 0
  br i1 %cmp220407, label %for.body222.lr.ph, label %if.end231

for.body222.lr.ph:                                ; preds = %for.cond218.preheader
  %88 = load [3 x float]** %xref139, align 8, !tbaa !4
  br label %for.body222

for.body222:                                      ; preds = %for.body222.lr.ph, %for.body222
  %indvars.iv426 = phi i64 [ 0, %for.body222.lr.ph ], [ %indvars.iv.next427, %for.body222 ]
  %arraydecay226 = getelementptr inbounds [3 x float]* %88, i64 %indvars.iv426, i64 0
  %89 = load float* %arraydecay226, align 4, !tbaa !0
  %sub.i = fsub float %89, %mul.i
  %arrayidx2.i398 = getelementptr inbounds [3 x float]* %88, i64 %indvars.iv426, i64 1
  %90 = load float* %arrayidx2.i398, align 4, !tbaa !0
  %sub4.i = fsub float %90, %mul3.i
  %arrayidx5.i = getelementptr inbounds [3 x float]* %88, i64 %indvars.iv426, i64 2
  %91 = load float* %arrayidx5.i, align 4, !tbaa !0
  %sub7.i = fsub float %91, %mul6.i
  store float %sub.i, float* %arraydecay226, align 4, !tbaa !0
  store float %sub4.i, float* %arrayidx2.i398, align 4, !tbaa !0
  store float %sub7.i, float* %arrayidx5.i, align 4, !tbaa !0
  %indvars.iv.next427 = add i64 %indvars.iv426, 1
  %92 = trunc i64 %indvars.iv.next427 to i32
  %cmp220 = icmp slt i32 %92, %87
  br i1 %cmp220, label %for.body222, label %if.end231

if.end231:                                        ; preds = %for.cond218.preheader, %for.body222, %land.lhs.true213, %lor.lhs.false209
  %93 = load i32* %nex, align 4, !tbaa !3
  %call233 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %log, i8* getelementptr inbounds ([34 x i8]* @.str16, i64 0, i64 0), i32 %93) #6
  %94 = load i32* %nex, align 4, !tbaa !3
  %cmp236405 = icmp sgt i32 %94, 0
  br i1 %cmp236405, label %for.body238, label %for.end245

for.body238:                                      ; preds = %if.end231, %for.body238
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body238 ], [ 0, %if.end231 ]
  %indvars.iv.next = add i64 %indvars.iv, 1
  %arrayidx241 = getelementptr inbounds i32* %nr_ex.0.lcssa, i64 %indvars.iv
  %95 = load i32* %arrayidx241, align 4, !tbaa !3
  %96 = trunc i64 %indvars.iv.next to i32
  %call242 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %log, i8* getelementptr inbounds ([35 x i8]* @.str17, i64 0, i64 0), i32 %96, i32 %95) #6
  %97 = load i32* %nex, align 4, !tbaa !3
  %cmp236 = icmp slt i32 %96, %97
  br i1 %cmp236, label %for.body238, label %for.end245

for.end245:                                       ; preds = %for.body238, %if.end231
  %98 = bitcast i32* %nr_ex.0.lcssa to i8*
  call void @save_free(i8* getelementptr inbounds ([6 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str1, i64 0, i64 0), i32 146, i8* %98) #6
  %99 = load i32* %nref, align 4, !tbaa !3
  %call248 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %log, i8* getelementptr inbounds ([60 x i8]* @.str18, i64 0, i64 0), i32 %99, double %conv201) #6
  br i1 %tobool, label %if.then250, label %if.end263

if.then250:                                       ; preds = %for.end245
  %nnodes = getelementptr inbounds %struct.t_commrec* %mcr, i64 0, i32 1
  %100 = load i32* %nnodes, align 4, !tbaa !3
  %call251 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %log, i8* getelementptr inbounds ([68 x i8]* @.str19, i64 0, i64 0), i32 %100) #6
  %101 = load i32* %nr7, align 4, !tbaa !3
  call void @check_multi_int(%struct._IO_FILE* %log, %struct.t_commrec* %mcr, i32 %101, i8* getelementptr inbounds ([37 x i8]* @.str20, i64 0, i64 0)) #6
  %102 = load i32* %nref, align 4, !tbaa !3
  call void @check_multi_int(%struct._IO_FILE* %log, %struct.t_commrec* %mcr, i32 %102, i8* getelementptr inbounds ([52 x i8]* @.str21, i64 0, i64 0)) #6
  %103 = load i32* %nref, align 4, !tbaa !3
  %mul258 = mul nsw i32 %103, 3
  %104 = load [3 x float]** %xref139, align 8, !tbaa !4
  %arraydecay262 = getelementptr inbounds [3 x float]* %104, i64 0, i64 0
  call void @gmx_sumf(i32 %mul258, float* %arraydecay262, %struct.t_commrec* %mcr) #6
  br label %if.end263

if.end263:                                        ; preds = %if.end, %if.then250, %for.end245
  ret void
}

; Function Attrs: nounwind optsize
declare double @exp(double) #1

; Function Attrs: optsize
declare i8* @save_realloc(i8*, i8*, i32, i8*, i32) #2

; Function Attrs: optsize
declare i8* @save_calloc(i8*, i8*, i32, i32, i32) #2

; Function Attrs: nounwind optsize readnone
declare double @fabs(double) #3

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #1

; Function Attrs: optsize
declare void @save_free(i8*, i8*, i32, i8*) #2

; Function Attrs: optsize
declare void @check_multi_int(%struct._IO_FILE*, %struct.t_commrec*, i32, i8*) #2

; Function Attrs: optsize
declare void @gmx_sumf(i32, float*, %struct.t_commrec*) #2

; Function Attrs: nounwind optsize uwtable
define void @print_orires_log(%struct._IO_FILE* nocapture %log, %struct.t_fcdata* nocapture %fcd) #0 {
entry:
  %nrot = alloca i32, align 4
  %S = alloca [3 x [3 x float]], align 16
  %TMP = alloca [3 x [3 x float]], align 16
  %0 = bitcast [3 x [3 x float]]* %S to i8*
  call void @llvm.lifetime.start(i64 36, i8* %0) #4
  %1 = bitcast [3 x [3 x float]]* %TMP to i8*
  call void @llvm.lifetime.start(i64 36, i8* %1) #4
  %2 = load double*** @print_orires_log.M, align 8, !tbaa !4
  %cmp = icmp eq double** %2, null
  br i1 %cmp, label %if.then, label %for.cond14.preheader

for.cond14.preheader:                             ; preds = %for.body7, %entry
  %nex = getelementptr inbounds %struct.t_fcdata* %fcd, i64 0, i32 1, i32 5
  %3 = load i32* %nex, align 4, !tbaa !3
  %cmp15140 = icmp sgt i32 %3, 0
  br i1 %cmp15140, label %for.body16.lr.ph, label %for.end98

for.body16.lr.ph:                                 ; preds = %for.cond14.preheader
  %arraydecay = getelementptr inbounds %struct.t_fcdata* %fcd, i64 0, i32 1, i32 11, i64 0
  %S18 = getelementptr inbounds %struct.t_fcdata* %fcd, i64 0, i32 1, i32 12
  %arraydecay21 = getelementptr inbounds [3 x [3 x float]]* %TMP, i64 0, i64 0
  %arrayidx1.i = getelementptr inbounds [3 x [3 x float]]* %TMP, i64 0, i64 0, i64 0
  %arrayidx3.i = getelementptr inbounds [3 x float]* %arraydecay, i64 0, i64 0
  %arrayidx5.i = getelementptr inbounds [3 x [3 x float]]* %TMP, i64 0, i64 0, i64 1
  %arrayidx7.i = getelementptr inbounds %struct.t_fcdata* %fcd, i64 0, i32 1, i32 11, i64 0, i64 1
  %arrayidx10.i = getelementptr inbounds [3 x [3 x float]]* %TMP, i64 0, i64 0, i64 2
  %arrayidx12.i = getelementptr inbounds %struct.t_fcdata* %fcd, i64 0, i32 1, i32 11, i64 0, i64 2
  %arrayidx16.i = getelementptr inbounds [3 x [3 x float]]* %S, i64 0, i64 0, i64 0
  %arrayidx20.i = getelementptr inbounds %struct.t_fcdata* %fcd, i64 0, i32 1, i32 11, i64 1, i64 0
  %arrayidx25.i = getelementptr inbounds %struct.t_fcdata* %fcd, i64 0, i32 1, i32 11, i64 1, i64 1
  %arrayidx31.i = getelementptr inbounds %struct.t_fcdata* %fcd, i64 0, i32 1, i32 11, i64 1, i64 2
  %arrayidx35.i = getelementptr inbounds [3 x [3 x float]]* %S, i64 0, i64 0, i64 1
  %arrayidx39.i = getelementptr inbounds %struct.t_fcdata* %fcd, i64 0, i32 1, i32 11, i64 2, i64 0
  %arrayidx44.i = getelementptr inbounds %struct.t_fcdata* %fcd, i64 0, i32 1, i32 11, i64 2, i64 1
  %arrayidx50.i = getelementptr inbounds %struct.t_fcdata* %fcd, i64 0, i32 1, i32 11, i64 2, i64 2
  %arrayidx54.i = getelementptr inbounds [3 x [3 x float]]* %S, i64 0, i64 0, i64 2
  %arrayidx56.i = getelementptr inbounds [3 x [3 x float]]* %TMP, i64 0, i64 1, i64 0
  %arrayidx61.i = getelementptr inbounds [3 x [3 x float]]* %TMP, i64 0, i64 1, i64 1
  %arrayidx67.i = getelementptr inbounds [3 x [3 x float]]* %TMP, i64 0, i64 1, i64 2
  %arrayidx73.i = getelementptr inbounds [3 x [3 x float]]* %S, i64 0, i64 1, i64 0
  %arrayidx92.i = getelementptr inbounds [3 x [3 x float]]* %S, i64 0, i64 1, i64 1
  %arrayidx111.i = getelementptr inbounds [3 x [3 x float]]* %S, i64 0, i64 1, i64 2
  %arrayidx113.i = getelementptr inbounds [3 x [3 x float]]* %TMP, i64 0, i64 2, i64 0
  %arrayidx118.i = getelementptr inbounds [3 x [3 x float]]* %TMP, i64 0, i64 2, i64 1
  %arrayidx124.i = getelementptr inbounds [3 x [3 x float]]* %TMP, i64 0, i64 2, i64 2
  %arrayidx130.i = getelementptr inbounds [3 x [3 x float]]* %S, i64 0, i64 2, i64 0
  %arrayidx149.i = getelementptr inbounds [3 x [3 x float]]* %S, i64 0, i64 2, i64 1
  %arrayidx168.i = getelementptr inbounds [3 x [3 x float]]* %S, i64 0, i64 2, i64 2
  br label %for.body16

if.then:                                          ; preds = %entry
  %call = call i8* @save_calloc(i8* getelementptr inbounds ([2 x i8]* @.str22, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str1, i64 0, i64 0), i32 174, i32 3, i32 8) #6
  %4 = bitcast i8* %call to double**
  store double** %4, double*** @print_orires_log.M, align 8, !tbaa !4
  br label %for.body

for.body:                                         ; preds = %for.body, %if.then
  %indvars.iv162 = phi i64 [ 0, %if.then ], [ %indvars.iv.next163, %for.body ]
  %call2 = call i8* @save_calloc(i8* getelementptr inbounds ([5 x i8]* @.str23, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str1, i64 0, i64 0), i32 176, i32 3, i32 8) #6
  %5 = bitcast i8* %call2 to double*
  %6 = load double*** @print_orires_log.M, align 8, !tbaa !4
  %arrayidx = getelementptr inbounds double** %6, i64 %indvars.iv162
  store double* %5, double** %arrayidx, align 8, !tbaa !4
  %indvars.iv.next163 = add i64 %indvars.iv162, 1
  %lftr.wideiv164 = trunc i64 %indvars.iv.next163 to i32
  %exitcond165 = icmp eq i32 %lftr.wideiv164, 3
  br i1 %exitcond165, label %for.end, label %for.body

for.end:                                          ; preds = %for.body
  %call3 = call i8* @save_calloc(i8* getelementptr inbounds ([4 x i8]* @.str24, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str1, i64 0, i64 0), i32 177, i32 3, i32 8) #6
  %7 = bitcast i8* %call3 to double*
  store double* %7, double** @print_orires_log.eig, align 8, !tbaa !4
  %call4 = call i8* @save_calloc(i8* getelementptr inbounds ([2 x i8]* @.str25, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str1, i64 0, i64 0), i32 178, i32 3, i32 8) #6
  %8 = bitcast i8* %call4 to double**
  store double** %8, double*** @print_orires_log.v, align 8, !tbaa !4
  br label %for.body7

for.body7:                                        ; preds = %for.body7, %for.end
  %indvars.iv158 = phi i64 [ 0, %for.end ], [ %indvars.iv.next159, %for.body7 ]
  %call8 = call i8* @save_calloc(i8* getelementptr inbounds ([5 x i8]* @.str26, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str1, i64 0, i64 0), i32 180, i32 3, i32 8) #6
  %9 = bitcast i8* %call8 to double*
  %10 = load double*** @print_orires_log.v, align 8, !tbaa !4
  %arrayidx10 = getelementptr inbounds double** %10, i64 %indvars.iv158
  store double* %9, double** %arrayidx10, align 8, !tbaa !4
  %indvars.iv.next159 = add i64 %indvars.iv158, 1
  %lftr.wideiv160 = trunc i64 %indvars.iv.next159 to i32
  %exitcond161 = icmp eq i32 %lftr.wideiv160, 3
  br i1 %exitcond161, label %for.cond14.preheader, label %for.body7

for.body16:                                       ; preds = %for.body16.lr.ph, %for.end94
  %indvars.iv156 = phi i64 [ 0, %for.body16.lr.ph ], [ %indvars.iv.next157, %for.end94 ]
  %11 = load [3 x [3 x float]]** %S18, align 8, !tbaa !4
  %arraydecay20 = getelementptr inbounds [3 x [3 x float]]* %11, i64 %indvars.iv156, i64 0
  call fastcc void @mmul([3 x float]* %arraydecay, [3 x float]* %arraydecay20, [3 x float]* %arraydecay21) #7
  %12 = load float* %arrayidx1.i, align 16, !tbaa !0
  %13 = load float* %arrayidx3.i, align 4, !tbaa !0
  %mul.i = fmul float %12, %13
  %14 = load float* %arrayidx5.i, align 4, !tbaa !0
  %15 = load float* %arrayidx7.i, align 4, !tbaa !0
  %mul8.i = fmul float %14, %15
  %add.i = fadd float %mul.i, %mul8.i
  %16 = load float* %arrayidx10.i, align 8, !tbaa !0
  %17 = load float* %arrayidx12.i, align 4, !tbaa !0
  %mul13.i = fmul float %16, %17
  %add14.i = fadd float %add.i, %mul13.i
  store float %add14.i, float* %arrayidx16.i, align 16, !tbaa !0
  %18 = load float* %arrayidx20.i, align 4, !tbaa !0
  %mul21.i = fmul float %12, %18
  %19 = load float* %arrayidx25.i, align 4, !tbaa !0
  %mul26.i = fmul float %14, %19
  %add27.i = fadd float %mul21.i, %mul26.i
  %20 = load float* %arrayidx31.i, align 4, !tbaa !0
  %mul32.i = fmul float %16, %20
  %add33.i = fadd float %add27.i, %mul32.i
  store float %add33.i, float* %arrayidx35.i, align 4, !tbaa !0
  %21 = load float* %arrayidx39.i, align 4, !tbaa !0
  %mul40.i = fmul float %12, %21
  %22 = load float* %arrayidx44.i, align 4, !tbaa !0
  %mul45.i = fmul float %14, %22
  %add46.i = fadd float %mul40.i, %mul45.i
  %23 = load float* %arrayidx50.i, align 4, !tbaa !0
  %mul51.i = fmul float %16, %23
  %add52.i = fadd float %add46.i, %mul51.i
  store float %add52.i, float* %arrayidx54.i, align 8, !tbaa !0
  %24 = load float* %arrayidx56.i, align 4, !tbaa !0
  %mul59.i = fmul float %24, %13
  %25 = load float* %arrayidx61.i, align 4, !tbaa !0
  %mul64.i = fmul float %25, %15
  %add65.i = fadd float %mul59.i, %mul64.i
  %26 = load float* %arrayidx67.i, align 4, !tbaa !0
  %mul70.i = fmul float %26, %17
  %add71.i = fadd float %add65.i, %mul70.i
  store float %add71.i, float* %arrayidx73.i, align 4, !tbaa !0
  %mul78.i = fmul float %24, %18
  %mul83.i = fmul float %25, %19
  %add84.i = fadd float %mul78.i, %mul83.i
  %mul89.i = fmul float %26, %20
  %add90.i = fadd float %add84.i, %mul89.i
  store float %add90.i, float* %arrayidx92.i, align 4, !tbaa !0
  %mul97.i = fmul float %24, %21
  %mul102.i = fmul float %25, %22
  %add103.i = fadd float %mul97.i, %mul102.i
  %mul108.i = fmul float %26, %23
  %add109.i = fadd float %add103.i, %mul108.i
  store float %add109.i, float* %arrayidx111.i, align 4, !tbaa !0
  %27 = load float* %arrayidx113.i, align 8, !tbaa !0
  %mul116.i = fmul float %27, %13
  %28 = load float* %arrayidx118.i, align 4, !tbaa !0
  %mul121.i = fmul float %28, %15
  %add122.i = fadd float %mul116.i, %mul121.i
  %29 = load float* %arrayidx124.i, align 8, !tbaa !0
  %mul127.i = fmul float %29, %17
  %add128.i = fadd float %add122.i, %mul127.i
  store float %add128.i, float* %arrayidx130.i, align 8, !tbaa !0
  %mul135.i = fmul float %27, %18
  %mul140.i = fmul float %28, %19
  %add141.i = fadd float %mul135.i, %mul140.i
  %mul146.i = fmul float %29, %20
  %add147.i = fadd float %add141.i, %mul146.i
  store float %add147.i, float* %arrayidx149.i, align 4, !tbaa !0
  %mul154.i = fmul float %27, %21
  %mul159.i = fmul float %28, %22
  %add160.i = fadd float %mul154.i, %mul159.i
  %mul165.i = fmul float %29, %23
  %add166.i = fadd float %add160.i, %mul165.i
  store float %add166.i, float* %arrayidx168.i, align 8, !tbaa !0
  %30 = load double*** @print_orires_log.M, align 8, !tbaa !4
  br label %for.cond29.preheader

for.cond29.preheader:                             ; preds = %for.inc43, %for.body16
  %indvars.iv144 = phi i64 [ 0, %for.body16 ], [ %indvars.iv.next145, %for.inc43 ]
  %arrayidx38 = getelementptr inbounds double** %30, i64 %indvars.iv144
  %31 = load double** %arrayidx38, align 8, !tbaa !4
  br label %for.body31

for.body31:                                       ; preds = %for.body31, %for.cond29.preheader
  %indvars.iv = phi i64 [ 0, %for.cond29.preheader ], [ %indvars.iv.next, %for.body31 ]
  %arrayidx35 = getelementptr inbounds [3 x [3 x float]]* %S, i64 0, i64 %indvars.iv144, i64 %indvars.iv
  %32 = load float* %arrayidx35, align 4, !tbaa !0
  %conv = fpext float %32 to double
  %arrayidx39 = getelementptr inbounds double* %31, i64 %indvars.iv
  store double %conv, double* %arrayidx39, align 8, !tbaa !6
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 3
  br i1 %exitcond, label %for.inc43, label %for.body31

for.inc43:                                        ; preds = %for.body31
  %indvars.iv.next145 = add i64 %indvars.iv144, 1
  %lftr.wideiv146 = trunc i64 %indvars.iv.next145 to i32
  %exitcond147 = icmp eq i32 %lftr.wideiv146, 3
  br i1 %exitcond147, label %for.end45, label %for.cond29.preheader

for.end45:                                        ; preds = %for.inc43
  %33 = load double** @print_orires_log.eig, align 8, !tbaa !4
  %34 = load double*** @print_orires_log.v, align 8, !tbaa !4
  call void @jacobi(double** %30, i32 3, double* %33, double** %34, i32* %nrot) #6
  %35 = load double** @print_orires_log.eig, align 8, !tbaa !4
  br label %for.body49

for.body49:                                       ; preds = %for.body49, %for.end45
  %indvars.iv148 = phi i64 [ 1, %for.end45 ], [ %indvars.iv.next149, %for.body49 ]
  %j.1138 = phi i32 [ 0, %for.end45 ], [ %j.2, %for.body49 ]
  %arrayidx51 = getelementptr inbounds double* %35, i64 %indvars.iv148
  %36 = load double* %arrayidx51, align 8, !tbaa !6
  %conv52 = fptrunc double %36 to float
  %mul.i134 = fmul float %conv52, %conv52
  %idxprom54 = sext i32 %j.1138 to i64
  %arrayidx55 = getelementptr inbounds double* %35, i64 %idxprom54
  %37 = load double* %arrayidx55, align 8, !tbaa !6
  %conv56 = fptrunc double %37 to float
  %mul.i133 = fmul float %conv56, %conv56
  %cmp58 = fcmp ogt float %mul.i134, %mul.i133
  %38 = trunc i64 %indvars.iv148 to i32
  %j.2 = select i1 %cmp58, i32 %38, i32 %j.1138
  %indvars.iv.next149 = add i64 %indvars.iv148, 1
  %lftr.wideiv150 = trunc i64 %indvars.iv.next149 to i32
  %exitcond151 = icmp eq i32 %lftr.wideiv150, 3
  br i1 %exitcond151, label %for.end64, label %for.body49

for.end64:                                        ; preds = %for.body49
  %indvars.iv.next157 = add i64 %indvars.iv156, 1
  %39 = trunc i64 %indvars.iv.next157 to i32
  %call65 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %log, i8* getelementptr inbounds ([30 x i8]* @.str27, i64 0, i64 0), i32 %39) #6
  %idxprom66 = sext i32 %j.2 to i64
  %40 = load double** @print_orires_log.eig, align 8, !tbaa !4
  %arrayidx67 = getelementptr inbounds double* %40, i64 %idxprom66
  %41 = load double* %arrayidx67, align 8, !tbaa !6
  %call68 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %log, i8* getelementptr inbounds ([25 x i8]* @.str28, i64 0, i64 0), double %41) #6
  br label %for.body72

for.body72:                                       ; preds = %cond.end, %for.end64
  %indvars.iv152 = phi i64 [ 0, %for.end64 ], [ %indvars.iv.next153, %cond.end ]
  %42 = load double** @print_orires_log.eig, align 8, !tbaa !4
  %arrayidx74 = getelementptr inbounds double* %42, i64 %idxprom66
  %43 = load double* %arrayidx74, align 8, !tbaa !6
  %call75 = call double @fabs(double %43) #8
  %cmp76 = fcmp ogt double %call75, 1.200000e-38
  br i1 %cmp76, label %cond.true, label %cond.end

cond.true:                                        ; preds = %for.body72
  %arrayidx79 = getelementptr inbounds double* %42, i64 %indvars.iv152
  %44 = load double* %arrayidx79, align 8, !tbaa !6
  %div = fdiv double %44, %43
  br label %cond.end

cond.end:                                         ; preds = %for.body72, %cond.true
  %cond = phi double [ %div, %cond.true ], [ 0.000000e+00, %for.body72 ]
  %45 = load double*** @print_orires_log.v, align 8, !tbaa !4
  %46 = load double** %45, align 8, !tbaa !4
  %arrayidx84 = getelementptr inbounds double* %46, i64 %indvars.iv152
  %47 = load double* %arrayidx84, align 8, !tbaa !6
  %arrayidx86 = getelementptr inbounds double** %45, i64 1
  %48 = load double** %arrayidx86, align 8, !tbaa !4
  %arrayidx87 = getelementptr inbounds double* %48, i64 %indvars.iv152
  %49 = load double* %arrayidx87, align 8, !tbaa !6
  %arrayidx89 = getelementptr inbounds double** %45, i64 2
  %50 = load double** %arrayidx89, align 8, !tbaa !4
  %arrayidx90 = getelementptr inbounds double* %50, i64 %indvars.iv152
  %51 = load double* %arrayidx90, align 8, !tbaa !6
  %call91 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %log, i8* getelementptr inbounds ([36 x i8]* @.str29, i64 0, i64 0), double %cond, double %47, double %49, double %51) #6
  %indvars.iv.next153 = add i64 %indvars.iv152, 1
  %lftr.wideiv154 = trunc i64 %indvars.iv.next153 to i32
  %exitcond155 = icmp eq i32 %lftr.wideiv154, 3
  br i1 %exitcond155, label %for.end94, label %for.body72

for.end94:                                        ; preds = %cond.end
  %fputc = call i32 @fputc(i32 10, %struct._IO_FILE* %log)
  %52 = load i32* %nex, align 4, !tbaa !3
  %cmp15 = icmp slt i32 %39, %52
  br i1 %cmp15, label %for.body16, label %for.end98

for.end98:                                        ; preds = %for.end94, %for.cond14.preheader
  call void @llvm.lifetime.end(i64 36, i8* %1) #4
  call void @llvm.lifetime.end(i64 36, i8* %0) #4
  ret void
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #4

; Function Attrs: inlinehint nounwind optsize uwtable
define internal fastcc void @mmul([3 x float]* nocapture %a, [3 x float]* nocapture %b, [3 x float]* nocapture %dest) #5 {
entry:
  %arrayidx1 = getelementptr inbounds [3 x float]* %a, i64 0, i64 0
  %0 = load float* %arrayidx1, align 4, !tbaa !0
  %arrayidx3 = getelementptr inbounds [3 x float]* %b, i64 0, i64 0
  %1 = load float* %arrayidx3, align 4, !tbaa !0
  %mul = fmul float %0, %1
  %arrayidx5 = getelementptr inbounds [3 x float]* %a, i64 0, i64 1
  %2 = load float* %arrayidx5, align 4, !tbaa !0
  %arrayidx7 = getelementptr inbounds [3 x float]* %b, i64 1, i64 0
  %3 = load float* %arrayidx7, align 4, !tbaa !0
  %mul8 = fmul float %2, %3
  %add = fadd float %mul, %mul8
  %arrayidx10 = getelementptr inbounds [3 x float]* %a, i64 0, i64 2
  %4 = load float* %arrayidx10, align 4, !tbaa !0
  %arrayidx12 = getelementptr inbounds [3 x float]* %b, i64 2, i64 0
  %5 = load float* %arrayidx12, align 4, !tbaa !0
  %mul13 = fmul float %4, %5
  %add14 = fadd float %add, %mul13
  %arrayidx16 = getelementptr inbounds [3 x float]* %dest, i64 0, i64 0
  store float %add14, float* %arrayidx16, align 4, !tbaa !0
  %arrayidx18 = getelementptr inbounds [3 x float]* %a, i64 1, i64 0
  %6 = load float* %arrayidx18, align 4, !tbaa !0
  %7 = load float* %arrayidx3, align 4, !tbaa !0
  %mul21 = fmul float %6, %7
  %arrayidx23 = getelementptr inbounds [3 x float]* %a, i64 1, i64 1
  %8 = load float* %arrayidx23, align 4, !tbaa !0
  %9 = load float* %arrayidx7, align 4, !tbaa !0
  %mul26 = fmul float %8, %9
  %add27 = fadd float %mul21, %mul26
  %arrayidx29 = getelementptr inbounds [3 x float]* %a, i64 1, i64 2
  %10 = load float* %arrayidx29, align 4, !tbaa !0
  %11 = load float* %arrayidx12, align 4, !tbaa !0
  %mul32 = fmul float %10, %11
  %add33 = fadd float %add27, %mul32
  %arrayidx35 = getelementptr inbounds [3 x float]* %dest, i64 1, i64 0
  store float %add33, float* %arrayidx35, align 4, !tbaa !0
  %arrayidx37 = getelementptr inbounds [3 x float]* %a, i64 2, i64 0
  %12 = load float* %arrayidx37, align 4, !tbaa !0
  %13 = load float* %arrayidx3, align 4, !tbaa !0
  %mul40 = fmul float %12, %13
  %arrayidx42 = getelementptr inbounds [3 x float]* %a, i64 2, i64 1
  %14 = load float* %arrayidx42, align 4, !tbaa !0
  %15 = load float* %arrayidx7, align 4, !tbaa !0
  %mul45 = fmul float %14, %15
  %add46 = fadd float %mul40, %mul45
  %arrayidx48 = getelementptr inbounds [3 x float]* %a, i64 2, i64 2
  %16 = load float* %arrayidx48, align 4, !tbaa !0
  %17 = load float* %arrayidx12, align 4, !tbaa !0
  %mul51 = fmul float %16, %17
  %add52 = fadd float %add46, %mul51
  %arrayidx54 = getelementptr inbounds [3 x float]* %dest, i64 2, i64 0
  store float %add52, float* %arrayidx54, align 4, !tbaa !0
  %18 = load float* %arrayidx1, align 4, !tbaa !0
  %arrayidx58 = getelementptr inbounds [3 x float]* %b, i64 0, i64 1
  %19 = load float* %arrayidx58, align 4, !tbaa !0
  %mul59 = fmul float %18, %19
  %20 = load float* %arrayidx5, align 4, !tbaa !0
  %arrayidx63 = getelementptr inbounds [3 x float]* %b, i64 1, i64 1
  %21 = load float* %arrayidx63, align 4, !tbaa !0
  %mul64 = fmul float %20, %21
  %add65 = fadd float %mul59, %mul64
  %22 = load float* %arrayidx10, align 4, !tbaa !0
  %arrayidx69 = getelementptr inbounds [3 x float]* %b, i64 2, i64 1
  %23 = load float* %arrayidx69, align 4, !tbaa !0
  %mul70 = fmul float %22, %23
  %add71 = fadd float %add65, %mul70
  %arrayidx73 = getelementptr inbounds [3 x float]* %dest, i64 0, i64 1
  store float %add71, float* %arrayidx73, align 4, !tbaa !0
  %24 = load float* %arrayidx18, align 4, !tbaa !0
  %25 = load float* %arrayidx58, align 4, !tbaa !0
  %mul78 = fmul float %24, %25
  %26 = load float* %arrayidx23, align 4, !tbaa !0
  %27 = load float* %arrayidx63, align 4, !tbaa !0
  %mul83 = fmul float %26, %27
  %add84 = fadd float %mul78, %mul83
  %28 = load float* %arrayidx29, align 4, !tbaa !0
  %29 = load float* %arrayidx69, align 4, !tbaa !0
  %mul89 = fmul float %28, %29
  %add90 = fadd float %add84, %mul89
  %arrayidx92 = getelementptr inbounds [3 x float]* %dest, i64 1, i64 1
  store float %add90, float* %arrayidx92, align 4, !tbaa !0
  %30 = load float* %arrayidx37, align 4, !tbaa !0
  %31 = load float* %arrayidx58, align 4, !tbaa !0
  %mul97 = fmul float %30, %31
  %32 = load float* %arrayidx42, align 4, !tbaa !0
  %33 = load float* %arrayidx63, align 4, !tbaa !0
  %mul102 = fmul float %32, %33
  %add103 = fadd float %mul97, %mul102
  %34 = load float* %arrayidx48, align 4, !tbaa !0
  %35 = load float* %arrayidx69, align 4, !tbaa !0
  %mul108 = fmul float %34, %35
  %add109 = fadd float %add103, %mul108
  %arrayidx111 = getelementptr inbounds [3 x float]* %dest, i64 2, i64 1
  store float %add109, float* %arrayidx111, align 4, !tbaa !0
  %36 = load float* %arrayidx1, align 4, !tbaa !0
  %arrayidx115 = getelementptr inbounds [3 x float]* %b, i64 0, i64 2
  %37 = load float* %arrayidx115, align 4, !tbaa !0
  %mul116 = fmul float %36, %37
  %38 = load float* %arrayidx5, align 4, !tbaa !0
  %arrayidx120 = getelementptr inbounds [3 x float]* %b, i64 1, i64 2
  %39 = load float* %arrayidx120, align 4, !tbaa !0
  %mul121 = fmul float %38, %39
  %add122 = fadd float %mul116, %mul121
  %40 = load float* %arrayidx10, align 4, !tbaa !0
  %arrayidx126 = getelementptr inbounds [3 x float]* %b, i64 2, i64 2
  %41 = load float* %arrayidx126, align 4, !tbaa !0
  %mul127 = fmul float %40, %41
  %add128 = fadd float %add122, %mul127
  %arrayidx130 = getelementptr inbounds [3 x float]* %dest, i64 0, i64 2
  store float %add128, float* %arrayidx130, align 4, !tbaa !0
  %42 = load float* %arrayidx18, align 4, !tbaa !0
  %43 = load float* %arrayidx115, align 4, !tbaa !0
  %mul135 = fmul float %42, %43
  %44 = load float* %arrayidx23, align 4, !tbaa !0
  %45 = load float* %arrayidx120, align 4, !tbaa !0
  %mul140 = fmul float %44, %45
  %add141 = fadd float %mul135, %mul140
  %46 = load float* %arrayidx29, align 4, !tbaa !0
  %47 = load float* %arrayidx126, align 4, !tbaa !0
  %mul146 = fmul float %46, %47
  %add147 = fadd float %add141, %mul146
  %arrayidx149 = getelementptr inbounds [3 x float]* %dest, i64 1, i64 2
  store float %add147, float* %arrayidx149, align 4, !tbaa !0
  %48 = load float* %arrayidx37, align 4, !tbaa !0
  %49 = load float* %arrayidx115, align 4, !tbaa !0
  %mul154 = fmul float %48, %49
  %50 = load float* %arrayidx42, align 4, !tbaa !0
  %51 = load float* %arrayidx120, align 4, !tbaa !0
  %mul159 = fmul float %50, %51
  %add160 = fadd float %mul154, %mul159
  %52 = load float* %arrayidx48, align 4, !tbaa !0
  %53 = load float* %arrayidx126, align 4, !tbaa !0
  %mul165 = fmul float %52, %53
  %add166 = fadd float %add160, %mul165
  %arrayidx168 = getelementptr inbounds [3 x float]* %dest, i64 2, i64 2
  store float %add166, float* %arrayidx168, align 4, !tbaa !0
  ret void
}

; Function Attrs: optsize
declare void @jacobi(double**, i32, double*, double**, i32*) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #4

; Function Attrs: nounwind optsize uwtable
define float @calc_orires_dev(%struct.t_commrec* %mcr, i32 %nfa, i32* nocapture %forceatoms, %union.t_iparams* nocapture %ip, %struct.t_mdatoms* nocapture %md, [3 x float]* nocapture %x, %struct.t_fcdata* %fcd) #0 {
entry:
  %R = alloca [3 x [3 x float]], align 16
  %com = alloca [3 x float], align 4
  %0 = bitcast [3 x [3 x float]]* %R to i8*
  call void @llvm.lifetime.start(i64 36, i8* %0) #4
  %edt2 = getelementptr inbounds %struct.t_fcdata* %fcd, i64 0, i32 1, i32 1
  %1 = load float* %edt2, align 4, !tbaa !0
  %fabsf = call float @fabsf(float %1) #3
  %2 = fpext float %fabsf to double
  %cmp = fcmp ogt double %2, 1.200000e-38
  %edt15 = getelementptr inbounds %struct.t_fcdata* %fcd, i64 0, i32 1, i32 2
  %3 = load float* %edt15, align 4, !tbaa !0
  %S6 = getelementptr inbounds %struct.t_fcdata* %fcd, i64 0, i32 1, i32 12
  %4 = load [3 x [3 x float]]** %S6, align 8, !tbaa !4
  %Dinsl7 = getelementptr inbounds %struct.t_fcdata* %fcd, i64 0, i32 1, i32 13
  %5 = load [5 x float]** %Dinsl7, align 8, !tbaa !4
  %Dins8 = getelementptr inbounds %struct.t_fcdata* %fcd, i64 0, i32 1, i32 14
  %6 = load [5 x float]** %Dins8, align 8, !tbaa !4
  %Dtav9 = getelementptr inbounds %struct.t_fcdata* %fcd, i64 0, i32 1, i32 15
  %7 = load [5 x float]** %Dtav9, align 8, !tbaa !4
  %TMP10 = getelementptr inbounds %struct.t_fcdata* %fcd, i64 0, i32 1, i32 21
  %8 = load float**** %TMP10, align 8, !tbaa !4
  %tmp = getelementptr inbounds %struct.t_fcdata* %fcd, i64 0, i32 1, i32 20
  %9 = load [5 x float]** %tmp, align 8, !tbaa !4
  %nref11 = getelementptr inbounds %struct.t_fcdata* %fcd, i64 0, i32 1, i32 6
  %10 = load i32* %nref11, align 4, !tbaa !3
  %mref12 = getelementptr inbounds %struct.t_fcdata* %fcd, i64 0, i32 1, i32 8
  %11 = load float** %mref12, align 8, !tbaa !4
  %xref13 = getelementptr inbounds %struct.t_fcdata* %fcd, i64 0, i32 1, i32 9
  %12 = load [3 x float]** %xref13, align 8, !tbaa !4
  %xtmp14 = getelementptr inbounds %struct.t_fcdata* %fcd, i64 0, i32 1, i32 10
  %13 = load [3 x float]** %xtmp14, align 8, !tbaa !4
  %exp_min_t_tau = getelementptr inbounds %struct.t_fcdata* %fcd, i64 0, i32 1, i32 3
  %14 = load float* %exp_min_t_tau, align 4, !tbaa !0
  %mul = fmul float %1, %14
  store float %mul, float* %exp_min_t_tau, align 4, !tbaa !0
  %tobool = icmp ne %struct.t_commrec* %mcr, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %nnodes = getelementptr inbounds %struct.t_commrec* %mcr, i64 0, i32 1
  %15 = load i32* %nnodes, align 4, !tbaa !3
  %conv15 = sitofp i32 %15 to double
  %div = fdiv double 1.000000e+00, %conv15
  %conv16 = fptrunc double %div to float
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %invn.0 = phi float [ %conv16, %if.then ], [ 1.000000e+00, %entry ]
  %nr = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 1
  %16 = load i32* %nr, align 4, !tbaa !3
  %cmp171249 = icmp sgt i32 %16, 0
  br i1 %cmp171249, label %for.body.lr.ph, label %if.end.for.end45_crit_edge

if.end.for.end45_crit_edge:                       ; preds = %if.end
  %arraydecay46.pre = getelementptr inbounds [3 x float]* %com, i64 0, i64 0
  %arrayidx2.i1163.pre = getelementptr inbounds [3 x float]* %com, i64 0, i64 1
  %arrayidx5.i1165.pre = getelementptr inbounds [3 x float]* %com, i64 0, i64 2
  br label %for.end45

for.body.lr.ph:                                   ; preds = %if.end
  %cORF = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 22
  %17 = load i16** %cORF, align 8, !tbaa !4
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc43
  %indvars.iv1319 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next1320, %for.inc43 ]
  %j.01250 = phi i32 [ 0, %for.body.lr.ph ], [ %j.1, %for.inc43 ]
  %arrayidx = getelementptr inbounds i16* %17, i64 %indvars.iv1319
  %18 = load i16* %arrayidx, align 2, !tbaa !5
  %cmp20 = icmp eq i16 %18, 0
  br i1 %cmp20, label %if.then22, label %for.inc43

if.then22:                                        ; preds = %for.body
  %arraydecay = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv1319, i64 0
  %idxprom25 = sext i32 %j.01250 to i64
  %arraydecay27 = getelementptr inbounds [3 x float]* %13, i64 %idxprom25, i64 0
  %19 = load float* %arraydecay, align 4, !tbaa !0
  store float %19, float* %arraydecay27, align 4, !tbaa !0
  %arrayidx2.i = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv1319, i64 1
  %20 = load float* %arrayidx2.i, align 4, !tbaa !0
  %arrayidx3.i = getelementptr inbounds [3 x float]* %13, i64 %idxprom25, i64 1
  store float %20, float* %arrayidx3.i, align 4, !tbaa !0
  %arrayidx4.i = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv1319, i64 2
  %21 = load float* %arrayidx4.i, align 4, !tbaa !0
  %arrayidx5.i = getelementptr inbounds [3 x float]* %13, i64 %idxprom25, i64 2
  store float %21, float* %arrayidx5.i, align 4, !tbaa !0
  %arrayidx33 = getelementptr inbounds float* %11, i64 %idxprom25
  %22 = load float* %arrayidx33, align 4, !tbaa !0
  br label %for.body31

for.body31:                                       ; preds = %for.body31, %if.then22
  %indvars.iv1315 = phi i64 [ 0, %if.then22 ], [ %indvars.iv.next1316, %for.body31 ]
  %arrayidx37 = getelementptr inbounds [3 x float]* %12, i64 %idxprom25, i64 %indvars.iv1315
  %23 = load float* %arrayidx37, align 4, !tbaa !0
  %mul38 = fmul float %22, %23
  %arrayidx40 = getelementptr inbounds [3 x float]* %com, i64 0, i64 %indvars.iv1315
  %24 = load float* %arrayidx40, align 4, !tbaa !0
  %add = fadd float %24, %mul38
  store float %add, float* %arrayidx40, align 4, !tbaa !0
  %indvars.iv.next1316 = add i64 %indvars.iv1315, 1
  %lftr.wideiv1317 = trunc i64 %indvars.iv.next1316 to i32
  %exitcond1318 = icmp eq i32 %lftr.wideiv1317, 3
  br i1 %exitcond1318, label %for.end, label %for.body31

for.end:                                          ; preds = %for.body31
  %inc41 = add nsw i32 %j.01250, 1
  br label %for.inc43

for.inc43:                                        ; preds = %for.body, %for.end
  %j.1 = phi i32 [ %inc41, %for.end ], [ %j.01250, %for.body ]
  %indvars.iv.next1320 = add i64 %indvars.iv1319, 1
  %25 = trunc i64 %indvars.iv.next1320 to i32
  %cmp17 = icmp slt i32 %25, %16
  br i1 %cmp17, label %for.body, label %for.cond.for.end45_crit_edge

for.cond.for.end45_crit_edge:                     ; preds = %for.inc43
  %arraydecay46.phi.trans.insert = getelementptr inbounds [3 x float]* %com, i64 0, i64 0
  %.pre = load float* %arraydecay46.phi.trans.insert, align 4, !tbaa !0
  %arrayidx2.i1163.phi.trans.insert = getelementptr inbounds [3 x float]* %com, i64 0, i64 1
  %.pre1321 = load float* %arrayidx2.i1163.phi.trans.insert, align 4, !tbaa !0
  %arrayidx5.i1165.phi.trans.insert = getelementptr inbounds [3 x float]* %com, i64 0, i64 2
  %.pre1322 = load float* %arrayidx5.i1165.phi.trans.insert, align 4, !tbaa !0
  br label %for.end45

for.end45:                                        ; preds = %if.end.for.end45_crit_edge, %for.cond.for.end45_crit_edge
  %arrayidx5.i1165.pre-phi = phi float* [ %arrayidx5.i1165.pre, %if.end.for.end45_crit_edge ], [ %arrayidx5.i1165.phi.trans.insert, %for.cond.for.end45_crit_edge ]
  %arrayidx2.i1163.pre-phi = phi float* [ %arrayidx2.i1163.pre, %if.end.for.end45_crit_edge ], [ %arrayidx2.i1163.phi.trans.insert, %for.cond.for.end45_crit_edge ]
  %arraydecay46.pre-phi = phi float* [ %arraydecay46.pre, %if.end.for.end45_crit_edge ], [ %arraydecay46.phi.trans.insert, %for.cond.for.end45_crit_edge ]
  %26 = phi float [ undef, %if.end.for.end45_crit_edge ], [ %.pre1322, %for.cond.for.end45_crit_edge ]
  %27 = phi float [ undef, %if.end.for.end45_crit_edge ], [ %.pre1321, %for.cond.for.end45_crit_edge ]
  %28 = phi float [ undef, %if.end.for.end45_crit_edge ], [ %.pre, %for.cond.for.end45_crit_edge ]
  %invmref = getelementptr inbounds %struct.t_fcdata* %fcd, i64 0, i32 1, i32 7
  %29 = load float* %invmref, align 4, !tbaa !0
  %mul.i1162 = fmul float %29, %28
  store float %mul.i1162, float* %arraydecay46.pre-phi, align 4, !tbaa !0
  %mul3.i = fmul float %29, %27
  store float %mul3.i, float* %arrayidx2.i1163.pre-phi, align 4, !tbaa !0
  %mul6.i1166 = fmul float %29, %26
  store float %mul6.i1166, float* %arrayidx5.i1165.pre-phi, align 4, !tbaa !0
  %cmp491246 = icmp sgt i32 %10, 0
  br i1 %cmp491246, label %for.body51, label %for.end58

for.body51:                                       ; preds = %for.end45, %for.body51
  %indvars.iv1311 = phi i64 [ %indvars.iv.next1312, %for.body51 ], [ 0, %for.end45 ]
  %arraydecay54 = getelementptr inbounds [3 x float]* %13, i64 %indvars.iv1311, i64 0
  %30 = load float* %arraydecay54, align 4, !tbaa !0
  %sub.i1155 = fsub float %30, %mul.i1162
  %arrayidx2.i1156 = getelementptr inbounds [3 x float]* %13, i64 %indvars.iv1311, i64 1
  %31 = load float* %arrayidx2.i1156, align 4, !tbaa !0
  %sub4.i1158 = fsub float %31, %mul3.i
  %arrayidx5.i1159 = getelementptr inbounds [3 x float]* %13, i64 %indvars.iv1311, i64 2
  %32 = load float* %arrayidx5.i1159, align 4, !tbaa !0
  %sub7.i1161 = fsub float %32, %mul6.i1166
  store float %sub.i1155, float* %arraydecay54, align 4, !tbaa !0
  store float %sub4.i1158, float* %arrayidx2.i1156, align 4, !tbaa !0
  store float %sub7.i1161, float* %arrayidx5.i1159, align 4, !tbaa !0
  %indvars.iv.next1312 = add i64 %indvars.iv1311, 1
  %lftr.wideiv1313 = trunc i64 %indvars.iv.next1312 to i32
  %exitcond1314 = icmp eq i32 %lftr.wideiv1313, %10
  br i1 %exitcond1314, label %for.end58, label %for.body51

for.end58:                                        ; preds = %for.body51, %for.end45
  %arraydecay59 = getelementptr inbounds [3 x [3 x float]]* %R, i64 0, i64 0
  call void @calc_fit_R(i32 %10, float* %11, [3 x float]* %12, [3 x float]* %13, [3 x float]* %arraydecay59) #6
  %arraydecay.i = getelementptr inbounds [3 x [3 x float]]* %R, i64 0, i64 0, i64 0
  %arraydecay2.i = getelementptr inbounds %struct.t_fcdata* %fcd, i64 0, i32 1, i32 11, i64 0, i64 0
  %33 = load float* %arraydecay.i, align 16, !tbaa !0
  store float %33, float* %arraydecay2.i, align 4, !tbaa !0
  %arrayidx2.i.i = getelementptr inbounds [3 x [3 x float]]* %R, i64 0, i64 0, i64 1
  %34 = load float* %arrayidx2.i.i, align 4, !tbaa !0
  %arrayidx3.i.i = getelementptr inbounds %struct.t_fcdata* %fcd, i64 0, i32 1, i32 11, i64 0, i64 1
  store float %34, float* %arrayidx3.i.i, align 4, !tbaa !0
  %arrayidx4.i.i = getelementptr inbounds [3 x [3 x float]]* %R, i64 0, i64 0, i64 2
  %35 = load float* %arrayidx4.i.i, align 8, !tbaa !0
  %arrayidx5.i.i = getelementptr inbounds %struct.t_fcdata* %fcd, i64 0, i32 1, i32 11, i64 0, i64 2
  store float %35, float* %arrayidx5.i.i, align 4, !tbaa !0
  %arraydecay4.i = getelementptr inbounds [3 x [3 x float]]* %R, i64 0, i64 1, i64 0
  %arraydecay6.i = getelementptr inbounds %struct.t_fcdata* %fcd, i64 0, i32 1, i32 11, i64 1, i64 0
  %36 = load float* %arraydecay4.i, align 4, !tbaa !0
  store float %36, float* %arraydecay6.i, align 4, !tbaa !0
  %arrayidx2.i19.i = getelementptr inbounds [3 x [3 x float]]* %R, i64 0, i64 1, i64 1
  %37 = load float* %arrayidx2.i19.i, align 4, !tbaa !0
  %arrayidx3.i20.i = getelementptr inbounds %struct.t_fcdata* %fcd, i64 0, i32 1, i32 11, i64 1, i64 1
  store float %37, float* %arrayidx3.i20.i, align 4, !tbaa !0
  %arrayidx4.i21.i = getelementptr inbounds [3 x [3 x float]]* %R, i64 0, i64 1, i64 2
  %38 = load float* %arrayidx4.i21.i, align 4, !tbaa !0
  %arrayidx5.i22.i = getelementptr inbounds %struct.t_fcdata* %fcd, i64 0, i32 1, i32 11, i64 1, i64 2
  store float %38, float* %arrayidx5.i22.i, align 4, !tbaa !0
  %arraydecay8.i = getelementptr inbounds [3 x [3 x float]]* %R, i64 0, i64 2, i64 0
  %arraydecay10.i = getelementptr inbounds %struct.t_fcdata* %fcd, i64 0, i32 1, i32 11, i64 2, i64 0
  %39 = load float* %arraydecay8.i, align 8, !tbaa !0
  store float %39, float* %arraydecay10.i, align 4, !tbaa !0
  %arrayidx2.i15.i = getelementptr inbounds [3 x [3 x float]]* %R, i64 0, i64 2, i64 1
  %40 = load float* %arrayidx2.i15.i, align 4, !tbaa !0
  %arrayidx3.i16.i = getelementptr inbounds %struct.t_fcdata* %fcd, i64 0, i32 1, i32 11, i64 2, i64 1
  store float %40, float* %arrayidx3.i16.i, align 4, !tbaa !0
  %arrayidx4.i17.i = getelementptr inbounds [3 x [3 x float]]* %R, i64 0, i64 2, i64 2
  %41 = load float* %arrayidx4.i17.i, align 8, !tbaa !0
  %arrayidx5.i18.i = getelementptr inbounds %struct.t_fcdata* %fcd, i64 0, i32 1, i32 11, i64 2, i64 2
  store float %41, float* %arrayidx5.i18.i, align 4, !tbaa !0
  %cmp641243 = icmp sgt i32 %nfa, 0
  br i1 %cmp641243, label %for.body66, label %for.end179

for.body66:                                       ; preds = %for.end58, %if.end175.for.body66_crit_edge
  %42 = phi float [ %.pre1332, %if.end175.for.body66_crit_edge ], [ %41, %for.end58 ]
  %43 = phi float [ %.pre1331, %if.end175.for.body66_crit_edge ], [ %40, %for.end58 ]
  %44 = phi float [ %.pre1330, %if.end175.for.body66_crit_edge ], [ %39, %for.end58 ]
  %45 = phi float [ %.pre1329, %if.end175.for.body66_crit_edge ], [ %38, %for.end58 ]
  %46 = phi float [ %.pre1328, %if.end175.for.body66_crit_edge ], [ %37, %for.end58 ]
  %47 = phi float [ %.pre1327, %if.end175.for.body66_crit_edge ], [ %36, %for.end58 ]
  %48 = phi float [ %.pre1326, %if.end175.for.body66_crit_edge ], [ %35, %for.end58 ]
  %49 = phi float [ %.pre1325, %if.end175.for.body66_crit_edge ], [ %34, %for.end58 ]
  %50 = phi float [ %.pre1324, %if.end175.for.body66_crit_edge ], [ %33, %for.end58 ]
  %indvars.iv1309 = phi i64 [ %indvars.iv.next1310, %if.end175.for.body66_crit_edge ], [ 0, %for.end58 ]
  %indvars.iv1305 = phi i64 [ %indvars.iv.next1306, %if.end175.for.body66_crit_edge ], [ 0, %for.end58 ]
  %arrayidx68 = getelementptr inbounds i32* %forceatoms, i64 %indvars.iv1305
  %51 = load i32* %arrayidx68, align 4, !tbaa !3
  %52 = add nsw i64 %indvars.iv1305, 1
  %arrayidx71 = getelementptr inbounds i32* %forceatoms, i64 %52
  %53 = load i32* %arrayidx71, align 4, !tbaa !3
  %idxprom72 = sext i32 %53 to i64
  %arraydecay74 = getelementptr inbounds [3 x float]* %x, i64 %idxprom72, i64 0
  %54 = add nsw i64 %indvars.iv1305, 2
  %arrayidx77 = getelementptr inbounds i32* %forceatoms, i64 %54
  %55 = load i32* %arrayidx77, align 4, !tbaa !3
  %idxprom78 = sext i32 %55 to i64
  %arraydecay80 = getelementptr inbounds [3 x float]* %x, i64 %idxprom78, i64 0
  %56 = load float* %arraydecay74, align 4, !tbaa !0
  %57 = load float* %arraydecay80, align 4, !tbaa !0
  %sub.i = fsub float %56, %57
  %arrayidx2.i1150 = getelementptr inbounds [3 x float]* %x, i64 %idxprom72, i64 1
  %58 = load float* %arrayidx2.i1150, align 4, !tbaa !0
  %arrayidx3.i1151 = getelementptr inbounds [3 x float]* %x, i64 %idxprom78, i64 1
  %59 = load float* %arrayidx3.i1151, align 4, !tbaa !0
  %sub4.i = fsub float %58, %59
  %arrayidx5.i1152 = getelementptr inbounds [3 x float]* %x, i64 %idxprom72, i64 2
  %60 = load float* %arrayidx5.i1152, align 4, !tbaa !0
  %arrayidx6.i = getelementptr inbounds [3 x float]* %x, i64 %idxprom78, i64 2
  %61 = load float* %arrayidx6.i, align 4, !tbaa !0
  %sub7.i = fsub float %60, %61
  %mul.i1141 = fmul float %sub.i, %50
  %mul6.i = fmul float %sub4.i, %49
  %add.i1144 = fadd float %mul.i1141, %mul6.i
  %mul10.i = fmul float %sub7.i, %48
  %add11.i = fadd float %add.i1144, %mul10.i
  %mul16.i = fmul float %sub.i, %47
  %mul20.i = fmul float %sub4.i, %46
  %add21.i = fadd float %mul16.i, %mul20.i
  %mul25.i = fmul float %sub7.i, %45
  %add26.i = fadd float %add21.i, %mul25.i
  %mul31.i = fmul float %sub.i, %44
  %mul35.i = fmul float %sub4.i, %43
  %add36.i = fadd float %mul31.i, %mul35.i
  %mul40.i1148 = fmul float %sub7.i, %42
  %add41.i = fadd float %add36.i, %mul40.i1148
  %mul.i1136 = fmul float %add11.i, %add11.i
  %mul4.i = fmul float %add26.i, %add26.i
  %add.i1138 = fadd float %mul.i1136, %mul4.i
  %mul7.i = fmul float %add41.i, %add41.i
  %add8.i = fadd float %add.i1138, %mul7.i
  %conv87 = fpext float %add8.i to double
  %call88 = call double @sqrt(double %conv87) #6
  %div89 = fdiv double 1.000000e+00, %call88
  %conv90 = fptrunc double %div89 to float
  %idxprom91 = sext i32 %51 to i64
  %62 = getelementptr inbounds %union.t_iparams* %ip, i64 %idxprom91, i32 0, i32 3
  %63 = load float* %62, align 4, !tbaa !0
  %mul94 = fmul float %63, %conv90
  %mul95 = fmul float %conv90, %mul94
  %mul96 = fmul float %mul95, 3.000000e+00
  %pow = getelementptr inbounds %union.t_iparams* %ip, i64 %idxprom91, i32 0, i32 1
  %64 = bitcast float* %pow to i32*
  %65 = load i32* %64, align 4, !tbaa !3
  %cmp1011238 = icmp sgt i32 %65, 0
  br i1 %cmp1011238, label %for.body103, label %for.end107

for.body103:                                      ; preds = %for.body66, %for.body103
  %i.11240 = phi i32 [ %inc106, %for.body103 ], [ 0, %for.body66 ]
  %pfac.01239 = phi float [ %mul104, %for.body103 ], [ %mul96, %for.body66 ]
  %mul104 = fmul float %conv90, %pfac.01239
  %inc106 = add nsw i32 %i.11240, 1
  %cmp101 = icmp slt i32 %inc106, %65
  br i1 %cmp101, label %for.body103, label %for.end107

for.end107:                                       ; preds = %for.body103, %for.body66
  %pfac.0.lcssa = phi float [ %mul96, %for.body66 ], [ %mul104, %for.body103 ]
  %mul109 = fmul float %add11.i, 2.000000e+00
  %mul111 = fmul float %add11.i, %mul109
  %add115 = fadd float %mul111, %mul4.i
  %sub = fsub float %add115, %add8.i
  %mul116 = fmul float %sub, %pfac.0.lcssa
  %arrayidx119 = getelementptr inbounds [5 x float]* %5, i64 %indvars.iv1309, i64 0
  store float %mul116, float* %arrayidx119, align 4, !tbaa !0
  %mul123 = fmul float %mul109, %add26.i
  %mul124 = fmul float %mul123, %pfac.0.lcssa
  %arrayidx127 = getelementptr inbounds [5 x float]* %5, i64 %indvars.iv1309, i64 1
  store float %mul124, float* %arrayidx127, align 4, !tbaa !0
  %mul131 = fmul float %mul109, %add41.i
  %mul132 = fmul float %mul131, %pfac.0.lcssa
  %arrayidx135 = getelementptr inbounds [5 x float]* %5, i64 %indvars.iv1309, i64 2
  store float %mul132, float* %arrayidx135, align 4, !tbaa !0
  %mul137 = fmul float %add26.i, 2.000000e+00
  %mul139 = fmul float %add26.i, %mul137
  %add143 = fadd float %mul.i1136, %mul139
  %sub144 = fsub float %add143, %add8.i
  %mul145 = fmul float %sub144, %pfac.0.lcssa
  %arrayidx148 = getelementptr inbounds [5 x float]* %5, i64 %indvars.iv1309, i64 3
  store float %mul145, float* %arrayidx148, align 4, !tbaa !0
  %mul152 = fmul float %mul137, %add41.i
  %mul153 = fmul float %mul152, %pfac.0.lcssa
  %arrayidx156 = getelementptr inbounds [5 x float]* %5, i64 %indvars.iv1309, i64 4
  store float %mul153, float* %arrayidx156, align 4, !tbaa !0
  br i1 %tobool, label %for.body162, label %if.end175

for.body162:                                      ; preds = %for.end107, %for.body162.for.body162_crit_edge
  %66 = phi float [ %.pre1333, %for.body162.for.body162_crit_edge ], [ %mul116, %for.end107 ]
  %indvars.iv1301 = phi i64 [ %indvars.iv.next1302, %for.body162.for.body162_crit_edge ], [ 0, %for.end107 ]
  %mul167 = fmul float %invn.0, %66
  %arrayidx171 = getelementptr inbounds [5 x float]* %6, i64 %indvars.iv1309, i64 %indvars.iv1301
  store float %mul167, float* %arrayidx171, align 4, !tbaa !0
  %indvars.iv.next1302 = add i64 %indvars.iv1301, 1
  %lftr.wideiv1303 = trunc i64 %indvars.iv.next1302 to i32
  %exitcond1304 = icmp eq i32 %lftr.wideiv1303, 5
  br i1 %exitcond1304, label %if.end175, label %for.body162.for.body162_crit_edge

for.body162.for.body162_crit_edge:                ; preds = %for.body162
  %arrayidx166.phi.trans.insert = getelementptr inbounds [5 x float]* %5, i64 %indvars.iv1309, i64 %indvars.iv.next1302
  %.pre1333 = load float* %arrayidx166.phi.trans.insert, align 4, !tbaa !0
  br label %for.body162

if.end175:                                        ; preds = %for.body162, %for.end107
  %indvars.iv.next1306 = add i64 %indvars.iv1305, 3
  %67 = trunc i64 %indvars.iv.next1306 to i32
  %cmp64 = icmp slt i32 %67, %nfa
  br i1 %cmp64, label %if.end175.for.body66_crit_edge, label %for.end179

if.end175.for.body66_crit_edge:                   ; preds = %if.end175
  %indvars.iv.next1310 = add i64 %indvars.iv1309, 1
  %.pre1324 = load float* %arraydecay.i, align 16, !tbaa !0
  %.pre1325 = load float* %arrayidx2.i.i, align 4, !tbaa !0
  %.pre1326 = load float* %arrayidx4.i.i, align 8, !tbaa !0
  %.pre1327 = load float* %arraydecay4.i, align 4, !tbaa !0
  %.pre1328 = load float* %arrayidx2.i19.i, align 4, !tbaa !0
  %.pre1329 = load float* %arrayidx4.i21.i, align 4, !tbaa !0
  %.pre1330 = load float* %arraydecay8.i, align 8, !tbaa !0
  %.pre1331 = load float* %arrayidx2.i15.i, align 4, !tbaa !0
  %.pre1332 = load float* %arrayidx4.i17.i, align 8, !tbaa !0
  br label %for.body66

for.end179:                                       ; preds = %if.end175, %for.end58
  br i1 %tobool, label %if.then181, label %if.end186

if.then181:                                       ; preds = %for.end179
  %nr182 = getelementptr inbounds %struct.t_fcdata* %fcd, i64 0, i32 1, i32 4
  %68 = load i32* %nr182, align 4, !tbaa !3
  %mul183 = mul nsw i32 %68, 5
  %arraydecay185 = getelementptr inbounds [5 x float]* %6, i64 0, i64 0
  call void @gmx_sumf(i32 %mul183, float* %arraydecay185, %struct.t_commrec* %mcr) #6
  br label %if.end186

if.end186:                                        ; preds = %if.then181, %for.end179
  %69 = load float* %exp_min_t_tau, align 4, !tbaa !0
  %conv188 = fpext float %69 to double
  %sub189 = fsub double 1.000000e+00, %conv188
  %div190 = fdiv double 1.000000e+00, %sub189
  %conv191 = fptrunc double %div190 to float
  %nex = getelementptr inbounds %struct.t_fcdata* %fcd, i64 0, i32 1, i32 5
  %70 = load i32* %nex, align 4, !tbaa !3
  %cmp1931235 = icmp sgt i32 %70, 0
  br i1 %cmp1931235, label %for.cond196.preheader, label %for.cond223.preheader

for.cond196.preheader:                            ; preds = %if.end186, %for.inc220
  %indvars.iv1299 = phi i64 [ %indvars.iv.next1300, %for.inc220 ], [ 0, %if.end186 ]
  %arrayidx211 = getelementptr inbounds float*** %8, i64 %indvars.iv1299
  br label %for.inc217

for.cond223.preheader:                            ; preds = %for.inc220, %if.end186
  br i1 %cmp641243, label %for.body226, label %for.cond310.preheader

for.inc217:                                       ; preds = %for.inc217, %for.cond196.preheader
  %indvars.iv1294 = phi i64 [ 0, %for.cond196.preheader ], [ %indvars.iv.next1295, %for.inc217 ]
  %arrayidx203 = getelementptr inbounds [5 x float]* %9, i64 %indvars.iv1299, i64 %indvars.iv1294
  store float 0.000000e+00, float* %arrayidx203, align 4, !tbaa !0
  %71 = shl i64 %indvars.iv1294, 2
  %72 = add i64 %71, 4
  %73 = load float*** %arrayidx211, align 8, !tbaa !4
  %arrayidx212 = getelementptr inbounds float** %73, i64 %indvars.iv1294
  %74 = load float** %arrayidx212, align 8, !tbaa !4
  %75 = bitcast float* %74 to i8*
  call void @llvm.memset.p0i8.i64(i8* %75, i8 0, i64 %72, i32 4, i1 false)
  %indvars.iv.next1295 = add i64 %indvars.iv1294, 1
  %lftr.wideiv1296 = trunc i64 %indvars.iv.next1295 to i32
  %exitcond1297 = icmp eq i32 %lftr.wideiv1296, 5
  br i1 %exitcond1297, label %for.inc220, label %for.inc217

for.inc220:                                       ; preds = %for.inc217
  %indvars.iv.next1300 = add i64 %indvars.iv1299, 1
  %76 = trunc i64 %indvars.iv.next1300 to i32
  %cmp193 = icmp slt i32 %76, %70
  br i1 %cmp193, label %for.cond196.preheader, label %for.cond223.preheader

for.cond310.preheader:                            ; preds = %for.end305, %for.cond223.preheader
  %77 = load i32* %nex, align 4, !tbaa !3
  %cmp3121223 = icmp sgt i32 %77, 0
  br i1 %cmp3121223, label %for.cond315.preheader.lr.ph, label %for.cond535.preheader

for.cond315.preheader.lr.ph:                      ; preds = %for.cond310.preheader
  %mul.i1135 = fmul float %conv191, %conv191
  br label %for.cond315.preheader

for.body226:                                      ; preds = %for.cond223.preheader, %for.end305
  %indvars.iv1286 = phi i64 [ %indvars.iv.next1287, %for.end305 ], [ 0, %for.cond223.preheader ]
  %indvars.iv1284 = phi i64 [ %indvars.iv.next1285, %for.end305 ], [ 0, %for.cond223.preheader ]
  br i1 %cmp, label %for.body232, label %if.end251

for.body232:                                      ; preds = %for.body226, %for.body232
  %indvars.iv1270 = phi i64 [ %indvars.iv.next1271, %for.body232 ], [ 0, %for.body226 ]
  %arrayidx236 = getelementptr inbounds [5 x float]* %7, i64 %indvars.iv1286, i64 %indvars.iv1270
  %78 = load float* %arrayidx236, align 4, !tbaa !0
  %mul237 = fmul float %1, %78
  %arrayidx241 = getelementptr inbounds [5 x float]* %6, i64 %indvars.iv1286, i64 %indvars.iv1270
  %79 = load float* %arrayidx241, align 4, !tbaa !0
  %mul242 = fmul float %3, %79
  %add243 = fadd float %mul237, %mul242
  store float %add243, float* %arrayidx236, align 4, !tbaa !0
  %indvars.iv.next1271 = add i64 %indvars.iv1270, 1
  %lftr.wideiv1272 = trunc i64 %indvars.iv.next1271 to i32
  %exitcond1273 = icmp eq i32 %lftr.wideiv1272, 5
  br i1 %exitcond1273, label %if.end251, label %for.body232

if.end251:                                        ; preds = %for.body232, %for.body226
  %arrayidx253 = getelementptr inbounds i32* %forceatoms, i64 %indvars.iv1284
  %80 = load i32* %arrayidx253, align 4, !tbaa !3
  %idxprom254 = sext i32 %80 to i64
  %arrayidx255 = getelementptr inbounds %union.t_iparams* %ip, i64 %idxprom254
  %ex257 = bitcast %union.t_iparams* %arrayidx255 to i32*
  %81 = load i32* %ex257, align 4, !tbaa !3
  %82 = getelementptr inbounds %union.t_iparams* %ip, i64 %idxprom254, i32 0, i32 5
  %83 = load float* %82, align 4, !tbaa !0
  %84 = getelementptr inbounds %union.t_iparams* %ip, i64 %idxprom254, i32 0, i32 4
  %idxprom275 = sext i32 %81 to i64
  %arrayidx296 = getelementptr inbounds float*** %8, i64 %idxprom275
  br label %for.body282.lr.ph

for.body282.lr.ph:                                ; preds = %if.end251, %for.inc303
  %indvars.iv1280 = phi i64 [ 0, %if.end251 ], [ %indvars.iv.next1281, %for.inc303 ]
  %indvars.iv1276 = phi i32 [ 1, %if.end251 ], [ %indvars.iv.next1277, %for.inc303 ]
  %arrayidx268 = getelementptr inbounds [5 x float]* %7, i64 %indvars.iv1286, i64 %indvars.iv1280
  %85 = load float* %arrayidx268, align 4, !tbaa !0
  %86 = load float* %84, align 4, !tbaa !0
  %mul272 = fmul float %85, %86
  %mul273 = fmul float %83, %mul272
  %arrayidx277 = getelementptr inbounds [5 x float]* %9, i64 %idxprom275, i64 %indvars.iv1280
  %87 = load float* %arrayidx277, align 4, !tbaa !0
  %add278 = fadd float %87, %mul273
  store float %add278, float* %arrayidx277, align 4, !tbaa !0
  %88 = load float*** %arrayidx296, align 8, !tbaa !4
  %arrayidx297 = getelementptr inbounds float** %88, i64 %indvars.iv1280
  %89 = load float** %arrayidx297, align 8, !tbaa !4
  br label %for.body282

for.body282:                                      ; preds = %for.body282, %for.body282.lr.ph
  %indvars.iv1274 = phi i64 [ %indvars.iv.next1275, %for.body282 ], [ 0, %for.body282.lr.ph ]
  %90 = load float* %arrayidx268, align 4, !tbaa !0
  %arrayidx290 = getelementptr inbounds [5 x float]* %7, i64 %indvars.iv1286, i64 %indvars.iv1274
  %91 = load float* %arrayidx290, align 4, !tbaa !0
  %mul291 = fmul float %90, %91
  %mul292 = fmul float %83, %mul291
  %arrayidx298 = getelementptr inbounds float* %89, i64 %indvars.iv1274
  %92 = load float* %arrayidx298, align 4, !tbaa !0
  %add299 = fadd float %mul292, %92
  store float %add299, float* %arrayidx298, align 4, !tbaa !0
  %indvars.iv.next1275 = add i64 %indvars.iv1274, 1
  %lftr.wideiv1278 = trunc i64 %indvars.iv.next1275 to i32
  %exitcond1279 = icmp eq i32 %lftr.wideiv1278, %indvars.iv1276
  br i1 %exitcond1279, label %for.inc303, label %for.body282

for.inc303:                                       ; preds = %for.body282
  %indvars.iv.next1281 = add i64 %indvars.iv1280, 1
  %indvars.iv.next1277 = add i32 %indvars.iv1276, 1
  %lftr.wideiv1282 = trunc i64 %indvars.iv.next1281 to i32
  %exitcond1283 = icmp eq i32 %lftr.wideiv1282, 5
  br i1 %exitcond1283, label %for.end305, label %for.body282.lr.ph

for.end305:                                       ; preds = %for.inc303
  %indvars.iv.next1287 = add i64 %indvars.iv1286, 1
  %indvars.iv.next1285 = add i64 %indvars.iv1284, 3
  %93 = trunc i64 %indvars.iv.next1285 to i32
  %cmp224 = icmp slt i32 %93, %nfa
  br i1 %cmp224, label %for.body226, label %for.cond310.preheader

for.cond315.preheader:                            ; preds = %for.cond315.preheader.lr.ph, %for.end493
  %indvars.iv1268 = phi i64 [ 0, %for.cond315.preheader.lr.ph ], [ %indvars.iv.next1269, %for.end493 ]
  %arrayidx328 = getelementptr inbounds float*** %8, i64 %indvars.iv1268
  %94 = load float*** %arrayidx328, align 8, !tbaa !4
  br label %for.body318

for.cond535.preheader:                            ; preds = %for.end493, %for.cond310.preheader
  br i1 %cmp641243, label %for.body538.lr.ph, label %for.end716

for.body538.lr.ph:                                ; preds = %for.cond535.preheader
  %mul545 = fmul float %conv191, 0x3FE5555560000000
  %otav = getelementptr inbounds %struct.t_fcdata* %fcd, i64 0, i32 1, i32 18
  %95 = load float** %otav, align 8, !tbaa !4
  %oins = getelementptr inbounds %struct.t_fcdata* %fcd, i64 0, i32 1, i32 17
  %oinsl = getelementptr inbounds %struct.t_fcdata* %fcd, i64 0, i32 1, i32 16
  br label %for.body538

for.body318:                                      ; preds = %for.inc359, %for.cond315.preheader
  %indvars.iv1260 = phi i64 [ 0, %for.cond315.preheader ], [ %indvars.iv.next1261, %for.inc359 ]
  %indvars.iv1258 = phi i32 [ 0, %for.cond315.preheader ], [ %indvars.iv.next1259, %for.inc359 ]
  %arrayidx322 = getelementptr inbounds [5 x float]* %9, i64 %indvars.iv1268, i64 %indvars.iv1260
  %96 = load float* %arrayidx322, align 4, !tbaa !0
  %mul323 = fmul float %conv191, %96
  store float %mul323, float* %arrayidx322, align 4, !tbaa !0
  %arrayidx329 = getelementptr inbounds float** %94, i64 %indvars.iv1260
  %97 = load float** %arrayidx329, align 8, !tbaa !4
  %arrayidx330 = getelementptr inbounds float* %97, i64 %indvars.iv1260
  %98 = load float* %arrayidx330, align 4, !tbaa !0
  %mul331 = fmul float %mul.i1135, %98
  store float %mul331, float* %arrayidx330, align 4, !tbaa !0
  %99 = trunc i64 %indvars.iv1260 to i32
  %cmp3331219 = icmp sgt i32 %99, 0
  br i1 %cmp3331219, label %for.body335, label %for.inc359

for.body335:                                      ; preds = %for.body318, %for.body335
  %indvars.iv1256 = phi i64 [ %indvars.iv.next1257, %for.body335 ], [ 0, %for.body318 ]
  %arrayidx342 = getelementptr inbounds float* %97, i64 %indvars.iv1256
  %100 = load float* %arrayidx342, align 4, !tbaa !0
  %mul343 = fmul float %mul.i1135, %100
  store float %mul343, float* %arrayidx342, align 4, !tbaa !0
  %arrayidx354 = getelementptr inbounds float** %94, i64 %indvars.iv1256
  %101 = load float** %arrayidx354, align 8, !tbaa !4
  %arrayidx355 = getelementptr inbounds float* %101, i64 %indvars.iv1260
  store float %mul343, float* %arrayidx355, align 4, !tbaa !0
  %indvars.iv.next1257 = add i64 %indvars.iv1256, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next1257 to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %indvars.iv1258
  br i1 %exitcond, label %for.inc359, label %for.body335

for.inc359:                                       ; preds = %for.body335, %for.body318
  %indvars.iv.next1261 = add i64 %indvars.iv1260, 1
  %indvars.iv.next1259 = add i32 %indvars.iv1258, 1
  %lftr.wideiv1262 = trunc i64 %indvars.iv.next1261 to i32
  %exitcond1263 = icmp eq i32 %lftr.wideiv1262, 5
  br i1 %exitcond1263, label %for.end361, label %for.body318

for.end361:                                       ; preds = %for.inc359
  %call366 = call i32 @m_inv_gen(float** %94, i32 5, float** %94) #6
  %arrayidx370 = getelementptr inbounds [3 x [3 x float]]* %4, i64 %indvars.iv1268, i64 0, i64 0
  store float 0.000000e+00, float* %arrayidx370, align 4, !tbaa !0
  %arrayidx374 = getelementptr inbounds [3 x [3 x float]]* %4, i64 %indvars.iv1268, i64 0, i64 1
  store float 0.000000e+00, float* %arrayidx374, align 4, !tbaa !0
  %arrayidx378 = getelementptr inbounds [3 x [3 x float]]* %4, i64 %indvars.iv1268, i64 0, i64 2
  store float 0.000000e+00, float* %arrayidx378, align 4, !tbaa !0
  %arrayidx382 = getelementptr inbounds [3 x [3 x float]]* %4, i64 %indvars.iv1268, i64 1, i64 1
  store float 0.000000e+00, float* %arrayidx382, align 4, !tbaa !0
  %arrayidx386 = getelementptr inbounds [3 x [3 x float]]* %4, i64 %indvars.iv1268, i64 1, i64 2
  store float 0.000000e+00, float* %arrayidx386, align 4, !tbaa !0
  %102 = load float*** %arrayidx328, align 8, !tbaa !4
  %103 = load float** %102, align 8, !tbaa !4
  %arrayidx414 = getelementptr inbounds float** %102, i64 1
  %104 = load float** %arrayidx414, align 8, !tbaa !4
  %arrayidx434 = getelementptr inbounds float** %102, i64 2
  %105 = load float** %arrayidx434, align 8, !tbaa !4
  %arrayidx454 = getelementptr inbounds float** %102, i64 3
  %106 = load float** %arrayidx454, align 8, !tbaa !4
  %arrayidx474 = getelementptr inbounds float** %102, i64 4
  %107 = load float** %arrayidx474, align 8, !tbaa !4
  br label %for.body390

for.body390:                                      ; preds = %for.body390, %for.end361
  %108 = phi float [ 0.000000e+00, %for.end361 ], [ %conv490, %for.body390 ]
  %109 = phi float [ 0.000000e+00, %for.end361 ], [ %conv470, %for.body390 ]
  %110 = phi float [ 0.000000e+00, %for.end361 ], [ %conv450, %for.body390 ]
  %111 = phi float [ 0.000000e+00, %for.end361 ], [ %conv430, %for.body390 ]
  %112 = phi float [ 0.000000e+00, %for.end361 ], [ %conv410, %for.body390 ]
  %indvars.iv1264 = phi i64 [ 0, %for.end361 ], [ %indvars.iv.next1265, %for.body390 ]
  %arrayidx395 = getelementptr inbounds float* %103, i64 %indvars.iv1264
  %113 = load float* %arrayidx395, align 4, !tbaa !0
  %conv396 = fpext float %113 to double
  %mul397 = fmul double %conv396, 1.500000e+00
  %arrayidx401 = getelementptr inbounds [5 x float]* %9, i64 %indvars.iv1268, i64 %indvars.iv1264
  %114 = load float* %arrayidx401, align 4, !tbaa !0
  %conv402 = fpext float %114 to double
  %mul403 = fmul double %mul397, %conv402
  %conv408 = fpext float %112 to double
  %add409 = fadd double %conv408, %mul403
  %conv410 = fptrunc double %add409 to float
  store float %conv410, float* %arrayidx370, align 4, !tbaa !0
  %arrayidx415 = getelementptr inbounds float* %104, i64 %indvars.iv1264
  %115 = load float* %arrayidx415, align 4, !tbaa !0
  %conv416 = fpext float %115 to double
  %mul417 = fmul double %conv416, 1.500000e+00
  %116 = load float* %arrayidx401, align 4, !tbaa !0
  %conv422 = fpext float %116 to double
  %mul423 = fmul double %mul417, %conv422
  %conv428 = fpext float %111 to double
  %add429 = fadd double %conv428, %mul423
  %conv430 = fptrunc double %add429 to float
  store float %conv430, float* %arrayidx374, align 4, !tbaa !0
  %arrayidx435 = getelementptr inbounds float* %105, i64 %indvars.iv1264
  %117 = load float* %arrayidx435, align 4, !tbaa !0
  %conv436 = fpext float %117 to double
  %mul437 = fmul double %conv436, 1.500000e+00
  %118 = load float* %arrayidx401, align 4, !tbaa !0
  %conv442 = fpext float %118 to double
  %mul443 = fmul double %mul437, %conv442
  %conv448 = fpext float %110 to double
  %add449 = fadd double %conv448, %mul443
  %conv450 = fptrunc double %add449 to float
  store float %conv450, float* %arrayidx378, align 4, !tbaa !0
  %arrayidx455 = getelementptr inbounds float* %106, i64 %indvars.iv1264
  %119 = load float* %arrayidx455, align 4, !tbaa !0
  %conv456 = fpext float %119 to double
  %mul457 = fmul double %conv456, 1.500000e+00
  %120 = load float* %arrayidx401, align 4, !tbaa !0
  %conv462 = fpext float %120 to double
  %mul463 = fmul double %mul457, %conv462
  %conv468 = fpext float %109 to double
  %add469 = fadd double %conv468, %mul463
  %conv470 = fptrunc double %add469 to float
  store float %conv470, float* %arrayidx382, align 4, !tbaa !0
  %arrayidx475 = getelementptr inbounds float* %107, i64 %indvars.iv1264
  %121 = load float* %arrayidx475, align 4, !tbaa !0
  %conv476 = fpext float %121 to double
  %mul477 = fmul double %conv476, 1.500000e+00
  %122 = load float* %arrayidx401, align 4, !tbaa !0
  %conv482 = fpext float %122 to double
  %mul483 = fmul double %mul477, %conv482
  %conv488 = fpext float %108 to double
  %add489 = fadd double %conv488, %mul483
  %conv490 = fptrunc double %add489 to float
  store float %conv490, float* %arrayidx386, align 4, !tbaa !0
  %indvars.iv.next1265 = add i64 %indvars.iv1264, 1
  %lftr.wideiv1266 = trunc i64 %indvars.iv.next1265 to i32
  %exitcond1267 = icmp eq i32 %lftr.wideiv1266, 5
  br i1 %exitcond1267, label %for.end493, label %for.body390

for.end493:                                       ; preds = %for.body390
  %arrayidx501 = getelementptr inbounds [3 x [3 x float]]* %4, i64 %indvars.iv1268, i64 1, i64 0
  store float %conv430, float* %arrayidx501, align 4, !tbaa !0
  %arrayidx509 = getelementptr inbounds [3 x [3 x float]]* %4, i64 %indvars.iv1268, i64 2, i64 0
  store float %conv450, float* %arrayidx509, align 4, !tbaa !0
  %arrayidx517 = getelementptr inbounds [3 x [3 x float]]* %4, i64 %indvars.iv1268, i64 2, i64 1
  store float %conv490, float* %arrayidx517, align 4, !tbaa !0
  %sub522 = fsub float -0.000000e+00, %conv410
  %sub527 = fsub float %sub522, %conv470
  %arrayidx531 = getelementptr inbounds [3 x [3 x float]]* %4, i64 %indvars.iv1268, i64 2, i64 2
  store float %sub527, float* %arrayidx531, align 4, !tbaa !0
  %indvars.iv.next1269 = add i64 %indvars.iv1268, 1
  %123 = load i32* %nex, align 4, !tbaa !3
  %124 = trunc i64 %indvars.iv.next1269 to i32
  %cmp312 = icmp slt i32 %124, %123
  br i1 %cmp312, label %for.cond315.preheader, label %for.cond535.preheader

for.body538:                                      ; preds = %for.body538.lr.ph, %if.end692
  %indvars.iv1254 = phi i64 [ 0, %for.body538.lr.ph ], [ %indvars.iv.next1255, %if.end692 ]
  %indvars.iv1252 = phi i64 [ 0, %for.body538.lr.ph ], [ %indvars.iv.next1253, %if.end692 ]
  %wsv2.01215 = phi float [ 0.000000e+00, %for.body538.lr.ph ], [ %add707, %if.end692 ]
  %sw.01214 = phi float [ 0.000000e+00, %for.body538.lr.ph ], [ %add712, %if.end692 ]
  %arrayidx540 = getelementptr inbounds i32* %forceatoms, i64 %indvars.iv1252
  %125 = load i32* %arrayidx540, align 4, !tbaa !3
  %idxprom541 = sext i32 %125 to i64
  %arrayidx542 = getelementptr inbounds %union.t_iparams* %ip, i64 %idxprom541
  %ex544 = bitcast %union.t_iparams* %arrayidx542 to i32*
  %126 = load i32* %ex544, align 4, !tbaa !3
  %idxprom546 = sext i32 %126 to i64
  %arrayidx549 = getelementptr inbounds [3 x [3 x float]]* %4, i64 %idxprom546, i64 0, i64 0
  %127 = load float* %arrayidx549, align 4, !tbaa !0
  %arrayidx552 = getelementptr inbounds [5 x float]* %7, i64 %indvars.iv1254, i64 0
  %128 = load float* %arrayidx552, align 4, !tbaa !0
  %mul553 = fmul float %127, %128
  %arrayidx557 = getelementptr inbounds [3 x [3 x float]]* %4, i64 %idxprom546, i64 0, i64 1
  %129 = load float* %arrayidx557, align 4, !tbaa !0
  %arrayidx560 = getelementptr inbounds [5 x float]* %7, i64 %indvars.iv1254, i64 1
  %130 = load float* %arrayidx560, align 4, !tbaa !0
  %mul561 = fmul float %129, %130
  %add562 = fadd float %mul553, %mul561
  %arrayidx566 = getelementptr inbounds [3 x [3 x float]]* %4, i64 %idxprom546, i64 0, i64 2
  %131 = load float* %arrayidx566, align 4, !tbaa !0
  %arrayidx569 = getelementptr inbounds [5 x float]* %7, i64 %indvars.iv1254, i64 2
  %132 = load float* %arrayidx569, align 4, !tbaa !0
  %mul570 = fmul float %131, %132
  %add571 = fadd float %add562, %mul570
  %arrayidx575 = getelementptr inbounds [3 x [3 x float]]* %4, i64 %idxprom546, i64 1, i64 1
  %133 = load float* %arrayidx575, align 4, !tbaa !0
  %arrayidx578 = getelementptr inbounds [5 x float]* %7, i64 %indvars.iv1254, i64 3
  %134 = load float* %arrayidx578, align 4, !tbaa !0
  %mul579 = fmul float %133, %134
  %add580 = fadd float %add571, %mul579
  %arrayidx584 = getelementptr inbounds [3 x [3 x float]]* %4, i64 %idxprom546, i64 1, i64 2
  %135 = load float* %arrayidx584, align 4, !tbaa !0
  %arrayidx587 = getelementptr inbounds [5 x float]* %7, i64 %indvars.iv1254, i64 4
  %136 = load float* %arrayidx587, align 4, !tbaa !0
  %mul588 = fmul float %135, %136
  %add589 = fadd float %add580, %mul588
  %mul590 = fmul float %mul545, %add589
  %arrayidx592 = getelementptr inbounds float* %95, i64 %indvars.iv1254
  store float %mul590, float* %arrayidx592, align 4, !tbaa !0
  br i1 %cmp, label %if.then594, label %if.end642

if.then594:                                       ; preds = %for.body538
  %137 = load float* %arrayidx549, align 4, !tbaa !0
  %arrayidx601 = getelementptr inbounds [5 x float]* %6, i64 %indvars.iv1254, i64 0
  %138 = load float* %arrayidx601, align 4, !tbaa !0
  %mul602 = fmul float %137, %138
  %139 = load float* %arrayidx557, align 4, !tbaa !0
  %arrayidx609 = getelementptr inbounds [5 x float]* %6, i64 %indvars.iv1254, i64 1
  %140 = load float* %arrayidx609, align 4, !tbaa !0
  %mul610 = fmul float %139, %140
  %add611 = fadd float %mul602, %mul610
  %141 = load float* %arrayidx566, align 4, !tbaa !0
  %arrayidx618 = getelementptr inbounds [5 x float]* %6, i64 %indvars.iv1254, i64 2
  %142 = load float* %arrayidx618, align 4, !tbaa !0
  %mul619 = fmul float %141, %142
  %add620 = fadd float %add611, %mul619
  %143 = load float* %arrayidx575, align 4, !tbaa !0
  %arrayidx627 = getelementptr inbounds [5 x float]* %6, i64 %indvars.iv1254, i64 3
  %144 = load float* %arrayidx627, align 4, !tbaa !0
  %mul628 = fmul float %143, %144
  %add629 = fadd float %add620, %mul628
  %145 = load float* %arrayidx584, align 4, !tbaa !0
  %arrayidx636 = getelementptr inbounds [5 x float]* %6, i64 %indvars.iv1254, i64 4
  %146 = load float* %arrayidx636, align 4, !tbaa !0
  %mul637 = fmul float %145, %146
  %add638 = fadd float %add629, %mul637
  %mul639 = fmul float %add638, 0x3FE5555560000000
  %147 = load float** %oins, align 8, !tbaa !4
  %arrayidx641 = getelementptr inbounds float* %147, i64 %indvars.iv1254
  store float %mul639, float* %arrayidx641, align 4, !tbaa !0
  br label %if.end642

if.end642:                                        ; preds = %if.then594, %for.body538
  br i1 %tobool, label %if.then644, label %if.end692

if.then644:                                       ; preds = %if.end642
  %148 = load float* %arrayidx549, align 4, !tbaa !0
  %arrayidx651 = getelementptr inbounds [5 x float]* %5, i64 %indvars.iv1254, i64 0
  %149 = load float* %arrayidx651, align 4, !tbaa !0
  %mul652 = fmul float %148, %149
  %150 = load float* %arrayidx557, align 4, !tbaa !0
  %arrayidx659 = getelementptr inbounds [5 x float]* %5, i64 %indvars.iv1254, i64 1
  %151 = load float* %arrayidx659, align 4, !tbaa !0
  %mul660 = fmul float %150, %151
  %add661 = fadd float %mul652, %mul660
  %152 = load float* %arrayidx566, align 4, !tbaa !0
  %arrayidx668 = getelementptr inbounds [5 x float]* %5, i64 %indvars.iv1254, i64 2
  %153 = load float* %arrayidx668, align 4, !tbaa !0
  %mul669 = fmul float %152, %153
  %add670 = fadd float %add661, %mul669
  %154 = load float* %arrayidx575, align 4, !tbaa !0
  %arrayidx677 = getelementptr inbounds [5 x float]* %5, i64 %indvars.iv1254, i64 3
  %155 = load float* %arrayidx677, align 4, !tbaa !0
  %mul678 = fmul float %154, %155
  %add679 = fadd float %add670, %mul678
  %156 = load float* %arrayidx584, align 4, !tbaa !0
  %arrayidx686 = getelementptr inbounds [5 x float]* %5, i64 %indvars.iv1254, i64 4
  %157 = load float* %arrayidx686, align 4, !tbaa !0
  %mul687 = fmul float %156, %157
  %add688 = fadd float %add679, %mul687
  %mul689 = fmul float %add688, 0x3FE5555560000000
  %158 = load float** %oinsl, align 8, !tbaa !4
  %arrayidx691 = getelementptr inbounds float* %158, i64 %indvars.iv1254
  store float %mul689, float* %arrayidx691, align 4, !tbaa !0
  br label %if.end692

if.end692:                                        ; preds = %if.end642, %if.then644
  %159 = load float* %arrayidx592, align 4, !tbaa !0
  %160 = getelementptr inbounds %union.t_iparams* %ip, i64 %idxprom541, i32 0, i32 4
  %161 = load float* %160, align 4, !tbaa !0
  %sub700 = fsub float %159, %161
  %162 = getelementptr inbounds %union.t_iparams* %ip, i64 %idxprom541, i32 0, i32 5
  %163 = load float* %162, align 4, !tbaa !0
  %mul.i1133 = fmul float %sub700, %sub700
  %mul706 = fmul float %163, %mul.i1133
  %add707 = fadd float %wsv2.01215, %mul706
  %add712 = fadd float %sw.01214, %163
  %indvars.iv.next1255 = add i64 %indvars.iv1254, 1
  %indvars.iv.next1253 = add i64 %indvars.iv1252, 3
  %164 = trunc i64 %indvars.iv.next1253 to i32
  %cmp536 = icmp slt i32 %164, %nfa
  br i1 %cmp536, label %for.body538, label %for.end716

for.end716:                                       ; preds = %if.end692, %for.cond535.preheader
  %wsv2.0.lcssa = phi float [ 0.000000e+00, %for.cond535.preheader ], [ %add707, %if.end692 ]
  %sw.0.lcssa = phi float [ 0.000000e+00, %for.cond535.preheader ], [ %add712, %if.end692 ]
  %div717 = fdiv float %wsv2.0.lcssa, %sw.0.lcssa
  %conv720 = call float @sqrtf(float %div717) #1
  %rmsdev = getelementptr inbounds %struct.t_fcdata* %fcd, i64 0, i32 1, i32 19
  store float %conv720, float* %rmsdev, align 4, !tbaa !0
  %165 = load i32* %nex, align 4, !tbaa !3
  %cmp7231211 = icmp sgt i32 %165, 0
  br i1 %cmp7231211, label %for.body725, label %for.end738

for.body725:                                      ; preds = %for.end716, %for.body725
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body725 ], [ 0, %for.end716 ]
  %166 = load float* %arraydecay.i, align 16, !tbaa !0
  %arrayidx3.i1074 = getelementptr inbounds [3 x [3 x float]]* %4, i64 %indvars.iv, i64 0, i64 0
  %167 = load float* %arrayidx3.i1074, align 4, !tbaa !0
  %mul.i1075 = fmul float %166, %167
  %168 = load float* %arraydecay4.i, align 4, !tbaa !0
  %arrayidx7.i1077 = getelementptr inbounds [3 x [3 x float]]* %4, i64 %indvars.iv, i64 1, i64 0
  %169 = load float* %arrayidx7.i1077, align 4, !tbaa !0
  %mul8.i1078 = fmul float %168, %169
  %add.i1079 = fadd float %mul.i1075, %mul8.i1078
  %170 = load float* %arraydecay8.i, align 8, !tbaa !0
  %arrayidx12.i1081 = getelementptr inbounds [3 x [3 x float]]* %4, i64 %indvars.iv, i64 2, i64 0
  %171 = load float* %arrayidx12.i1081, align 4, !tbaa !0
  %mul13.i1082 = fmul float %170, %171
  %add14.i1083 = fadd float %add.i1079, %mul13.i1082
  %arrayidx20.i = getelementptr inbounds [3 x [3 x float]]* %4, i64 %indvars.iv, i64 0, i64 1
  %172 = load float* %arrayidx20.i, align 4, !tbaa !0
  %mul21.i1085 = fmul float %166, %172
  %arrayidx25.i = getelementptr inbounds [3 x [3 x float]]* %4, i64 %indvars.iv, i64 1, i64 1
  %173 = load float* %arrayidx25.i, align 4, !tbaa !0
  %mul26.i1086 = fmul float %168, %173
  %add27.i1087 = fadd float %mul21.i1085, %mul26.i1086
  %arrayidx31.i = getelementptr inbounds [3 x [3 x float]]* %4, i64 %indvars.iv, i64 2, i64 1
  %174 = load float* %arrayidx31.i, align 4, !tbaa !0
  %mul32.i1088 = fmul float %170, %174
  %add33.i1089 = fadd float %add27.i1087, %mul32.i1088
  %arrayidx39.i = getelementptr inbounds [3 x [3 x float]]* %4, i64 %indvars.iv, i64 0, i64 2
  %175 = load float* %arrayidx39.i, align 4, !tbaa !0
  %mul40.i1091 = fmul float %166, %175
  %arrayidx44.i = getelementptr inbounds [3 x [3 x float]]* %4, i64 %indvars.iv, i64 1, i64 2
  %176 = load float* %arrayidx44.i, align 4, !tbaa !0
  %mul45.i1092 = fmul float %168, %176
  %add46.i1093 = fadd float %mul40.i1091, %mul45.i1092
  %arrayidx50.i = getelementptr inbounds [3 x [3 x float]]* %4, i64 %indvars.iv, i64 2, i64 2
  %177 = load float* %arrayidx50.i, align 4, !tbaa !0
  %mul51.i1094 = fmul float %170, %177
  %add52.i1095 = fadd float %add46.i1093, %mul51.i1094
  %178 = load float* %arrayidx2.i.i, align 4, !tbaa !0
  %mul59.i1097 = fmul float %167, %178
  %179 = load float* %arrayidx2.i19.i, align 4, !tbaa !0
  %mul64.i1098 = fmul float %169, %179
  %add65.i1099 = fadd float %mul59.i1097, %mul64.i1098
  %180 = load float* %arrayidx2.i15.i, align 4, !tbaa !0
  %mul70.i1100 = fmul float %171, %180
  %add71.i1101 = fadd float %add65.i1099, %mul70.i1100
  %mul78.i1103 = fmul float %172, %178
  %mul83.i1104 = fmul float %173, %179
  %add84.i1105 = fadd float %mul78.i1103, %mul83.i1104
  %mul89.i1106 = fmul float %174, %180
  %add90.i1107 = fadd float %add84.i1105, %mul89.i1106
  %mul97.i1109 = fmul float %175, %178
  %mul102.i1110 = fmul float %176, %179
  %add103.i1111 = fadd float %mul97.i1109, %mul102.i1110
  %mul108.i1112 = fmul float %177, %180
  %add109.i1113 = fadd float %add103.i1111, %mul108.i1112
  %181 = load float* %arrayidx4.i.i, align 8, !tbaa !0
  %mul116.i1115 = fmul float %167, %181
  %182 = load float* %arrayidx4.i21.i, align 4, !tbaa !0
  %mul121.i1116 = fmul float %169, %182
  %add122.i1117 = fadd float %mul116.i1115, %mul121.i1116
  %183 = load float* %arrayidx4.i17.i, align 8, !tbaa !0
  %mul127.i1118 = fmul float %171, %183
  %add128.i1119 = fadd float %add122.i1117, %mul127.i1118
  %mul135.i1121 = fmul float %172, %181
  %mul140.i1122 = fmul float %173, %182
  %add141.i1123 = fadd float %mul135.i1121, %mul140.i1122
  %mul146.i1124 = fmul float %174, %183
  %add147.i1125 = fadd float %add141.i1123, %mul146.i1124
  %mul154.i1127 = fmul float %175, %181
  %mul159.i1128 = fmul float %176, %182
  %add160.i1129 = fadd float %mul154.i1127, %mul159.i1128
  %mul165.i1130 = fmul float %177, %183
  %add166.i1131 = fadd float %add160.i1129, %mul165.i1130
  %mul.i = fmul float %166, %add14.i1083
  %mul8.i = fmul float %168, %add33.i1089
  %add.i = fadd float %mul.i, %mul8.i
  %mul13.i = fmul float %170, %add52.i1095
  %add14.i = fadd float %add.i, %mul13.i
  store float %add14.i, float* %arrayidx3.i1074, align 4, !tbaa !0
  %184 = load float* %arraydecay.i, align 16, !tbaa !0
  %mul21.i = fmul float %add71.i1101, %184
  %185 = load float* %arraydecay4.i, align 4, !tbaa !0
  %mul26.i = fmul float %add90.i1107, %185
  %add27.i = fadd float %mul21.i, %mul26.i
  %186 = load float* %arraydecay8.i, align 8, !tbaa !0
  %mul32.i = fmul float %add109.i1113, %186
  %add33.i = fadd float %add27.i, %mul32.i
  store float %add33.i, float* %arrayidx7.i1077, align 4, !tbaa !0
  %187 = load float* %arraydecay.i, align 16, !tbaa !0
  %mul40.i = fmul float %add128.i1119, %187
  %188 = load float* %arraydecay4.i, align 4, !tbaa !0
  %mul45.i = fmul float %add147.i1125, %188
  %add46.i = fadd float %mul40.i, %mul45.i
  %189 = load float* %arraydecay8.i, align 8, !tbaa !0
  %mul51.i = fmul float %add166.i1131, %189
  %add52.i = fadd float %add46.i, %mul51.i
  store float %add52.i, float* %arrayidx12.i1081, align 4, !tbaa !0
  %190 = load float* %arrayidx2.i.i, align 4, !tbaa !0
  %mul59.i = fmul float %add14.i1083, %190
  %191 = load float* %arrayidx2.i19.i, align 4, !tbaa !0
  %mul64.i = fmul float %add33.i1089, %191
  %add65.i = fadd float %mul59.i, %mul64.i
  %192 = load float* %arrayidx2.i15.i, align 4, !tbaa !0
  %mul70.i = fmul float %add52.i1095, %192
  %add71.i = fadd float %add65.i, %mul70.i
  store float %add71.i, float* %arrayidx20.i, align 4, !tbaa !0
  %193 = load float* %arrayidx2.i.i, align 4, !tbaa !0
  %mul78.i = fmul float %add71.i1101, %193
  %194 = load float* %arrayidx2.i19.i, align 4, !tbaa !0
  %mul83.i = fmul float %add90.i1107, %194
  %add84.i = fadd float %mul78.i, %mul83.i
  %195 = load float* %arrayidx2.i15.i, align 4, !tbaa !0
  %mul89.i = fmul float %add109.i1113, %195
  %add90.i = fadd float %add84.i, %mul89.i
  store float %add90.i, float* %arrayidx25.i, align 4, !tbaa !0
  %196 = load float* %arrayidx2.i.i, align 4, !tbaa !0
  %mul97.i = fmul float %add128.i1119, %196
  %197 = load float* %arrayidx2.i19.i, align 4, !tbaa !0
  %mul102.i = fmul float %add147.i1125, %197
  %add103.i = fadd float %mul97.i, %mul102.i
  %198 = load float* %arrayidx2.i15.i, align 4, !tbaa !0
  %mul108.i = fmul float %add166.i1131, %198
  %add109.i = fadd float %add103.i, %mul108.i
  store float %add109.i, float* %arrayidx31.i, align 4, !tbaa !0
  %199 = load float* %arrayidx4.i.i, align 8, !tbaa !0
  %mul116.i = fmul float %add14.i1083, %199
  %200 = load float* %arrayidx4.i21.i, align 4, !tbaa !0
  %mul121.i = fmul float %add33.i1089, %200
  %add122.i = fadd float %mul116.i, %mul121.i
  %201 = load float* %arrayidx4.i17.i, align 8, !tbaa !0
  %mul127.i = fmul float %add52.i1095, %201
  %add128.i = fadd float %add122.i, %mul127.i
  store float %add128.i, float* %arrayidx39.i, align 4, !tbaa !0
  %202 = load float* %arrayidx4.i.i, align 8, !tbaa !0
  %mul135.i = fmul float %add71.i1101, %202
  %203 = load float* %arrayidx4.i21.i, align 4, !tbaa !0
  %mul140.i = fmul float %add90.i1107, %203
  %add141.i = fadd float %mul135.i, %mul140.i
  %204 = load float* %arrayidx4.i17.i, align 8, !tbaa !0
  %mul146.i = fmul float %add109.i1113, %204
  %add147.i = fadd float %add141.i, %mul146.i
  store float %add147.i, float* %arrayidx44.i, align 4, !tbaa !0
  %205 = load float* %arrayidx4.i.i, align 8, !tbaa !0
  %mul154.i = fmul float %add128.i1119, %205
  %206 = load float* %arrayidx4.i21.i, align 4, !tbaa !0
  %mul159.i = fmul float %add147.i1125, %206
  %add160.i = fadd float %mul154.i, %mul159.i
  %207 = load float* %arrayidx4.i17.i, align 8, !tbaa !0
  %mul165.i = fmul float %add166.i1131, %207
  %add166.i = fadd float %add160.i, %mul165.i
  store float %add166.i, float* %arrayidx50.i, align 4, !tbaa !0
  %indvars.iv.next = add i64 %indvars.iv, 1
  %208 = trunc i64 %indvars.iv.next to i32
  %cmp723 = icmp slt i32 %208, %165
  br i1 %cmp723, label %for.body725, label %for.cond721.for.end738_crit_edge

for.cond721.for.end738_crit_edge:                 ; preds = %for.body725
  %.pre1323 = load float* %rmsdev, align 4, !tbaa !0
  br label %for.end738

for.end738:                                       ; preds = %for.cond721.for.end738_crit_edge, %for.end716
  %209 = phi float [ %.pre1323, %for.cond721.for.end738_crit_edge ], [ %conv720, %for.end716 ]
  call void @llvm.lifetime.end(i64 36, i8* %0) #4
  ret float %209
}

; Function Attrs: optsize
declare void @calc_fit_R(i32, float*, [3 x float]*, [3 x float]*, [3 x float]*) #2

; Function Attrs: nounwind optsize
declare double @sqrt(double) #1

; Function Attrs: optsize
declare i32 @m_inv_gen(float**, i32, float**) #2

; Function Attrs: nounwind optsize uwtable
define float @orires(i32 %nfa, i32* nocapture %forceatoms, %union.t_iparams* nocapture %ip, [3 x float]* nocapture %x, [3 x float]* nocapture %f, %struct.t_forcerec* nocapture %fr, %struct.t_graph* nocapture %g, [3 x float]* nocapture %box, float %lambda, float* nocapture %dvdlambda, %struct.t_mdatoms* nocapture %md, i32 %ngrp, float* nocapture %egnb, float* nocapture %egcoul, %struct.t_fcdata* nocapture %fcd) #0 {
entry:
  %r = alloca [3 x float], align 4
  %Sr = alloca [3 x float], align 4
  %fij = alloca [3 x float], align 4
  %fc1 = getelementptr inbounds %struct.t_fcdata* %fcd, i64 0, i32 1, i32 0
  %0 = load float* %fc1, align 4, !tbaa !0
  %fabsf = call float @fabsf(float %0) #3
  %1 = fpext float %fabsf to double
  %cmp = fcmp ogt double %1, 1.200000e-38
  br i1 %cmp, label %if.then, label %if.end179

if.then:                                          ; preds = %entry
  %conv = fpext float %0 to double
  %edt = getelementptr inbounds %struct.t_fcdata* %fcd, i64 0, i32 1, i32 1
  %2 = load float* %edt, align 4, !tbaa !0
  %fabsf243 = call float @fabsf(float %2) #3
  %3 = fpext float %fabsf243 to double
  %cmp5 = fcmp ogt double %3, 1.200000e-38
  %exp_min_t_tau = getelementptr inbounds %struct.t_fcdata* %fcd, i64 0, i32 1, i32 3
  %4 = load float* %exp_min_t_tau, align 4, !tbaa !0
  %conv9 = fpext float %4 to double
  %sub = fsub double 1.000000e+00, %conv9
  %mul = fmul double %conv, %sub
  %conv10 = fptrunc double %mul to float
  %cmp11275 = icmp sgt i32 %nfa, 0
  br i1 %cmp11275, label %for.body.lr.ph, label %if.end179

for.body.lr.ph:                                   ; preds = %if.then
  %arraydecay23 = getelementptr inbounds [3 x float]* %r, i64 0, i64 0
  %arrayidx9.i = getelementptr inbounds [3 x float]* %r, i64 0, i64 1
  %arrayidx10.i = getelementptr inbounds [3 x float]* %r, i64 0, i64 2
  %otav = getelementptr inbounds %struct.t_fcdata* %fcd, i64 0, i32 1, i32 18
  %oins = getelementptr inbounds %struct.t_fcdata* %fcd, i64 0, i32 1, i32 17
  %S = getelementptr inbounds %struct.t_fcdata* %fcd, i64 0, i32 1, i32 12
  %arraydecay91 = getelementptr inbounds [3 x float]* %Sr, i64 0, i64 0
  %arrayidx27.i = getelementptr inbounds [3 x float]* %Sr, i64 0, i64 1
  %arrayidx42.i = getelementptr inbounds [3 x float]* %Sr, i64 0, i64 2
  %start = getelementptr inbounds %struct.t_graph* %g, i64 0, i32 3
  %ishift = getelementptr inbounds %struct.t_graph* %g, i64 0, i32 7
  %fshift = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 58
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.end174
  %indvars.iv289 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next290, %for.end174 ]
  %indvars.iv285 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next286, %for.end174 ]
  %vtot.0276 = phi float [ 0.000000e+00, %for.body.lr.ph ], [ %conv54, %for.end174 ]
  %arrayidx = getelementptr inbounds i32* %forceatoms, i64 %indvars.iv285
  %5 = load i32* %arrayidx, align 4, !tbaa !3
  %6 = add nsw i64 %indvars.iv285, 1
  %arrayidx14 = getelementptr inbounds i32* %forceatoms, i64 %6
  %7 = load i32* %arrayidx14, align 4, !tbaa !3
  %8 = add nsw i64 %indvars.iv285, 2
  %arrayidx17 = getelementptr inbounds i32* %forceatoms, i64 %8
  %9 = load i32* %arrayidx17, align 4, !tbaa !3
  %idxprom18 = sext i32 %7 to i64
  %arraydecay = getelementptr inbounds [3 x float]* %x, i64 %idxprom18, i64 0
  %idxprom20 = sext i32 %9 to i64
  %arraydecay22 = getelementptr inbounds [3 x float]* %x, i64 %idxprom20, i64 0
  %10 = load float* %arraydecay, align 4, !tbaa !0
  %11 = load float* %arraydecay22, align 4, !tbaa !0
  %sub.i = fsub float %10, %11
  %arrayidx2.i = getelementptr inbounds [3 x float]* %x, i64 %idxprom18, i64 1
  %12 = load float* %arrayidx2.i, align 4, !tbaa !0
  %arrayidx3.i = getelementptr inbounds [3 x float]* %x, i64 %idxprom20, i64 1
  %13 = load float* %arrayidx3.i, align 4, !tbaa !0
  %sub4.i = fsub float %12, %13
  %arrayidx5.i = getelementptr inbounds [3 x float]* %x, i64 %idxprom18, i64 2
  %14 = load float* %arrayidx5.i, align 4, !tbaa !0
  %arrayidx6.i = getelementptr inbounds [3 x float]* %x, i64 %idxprom20, i64 2
  %15 = load float* %arrayidx6.i, align 4, !tbaa !0
  %sub7.i = fsub float %14, %15
  store float %sub.i, float* %arraydecay23, align 4, !tbaa !0
  store float %sub4.i, float* %arrayidx9.i, align 4, !tbaa !0
  store float %sub7.i, float* %arrayidx10.i, align 4, !tbaa !0
  %mul.i262 = fmul float %sub.i, %sub.i
  %mul4.i264 = fmul float %sub4.i, %sub4.i
  %add.i265 = fadd float %mul.i262, %mul4.i264
  %mul7.i267 = fmul float %sub7.i, %sub7.i
  %add8.i268 = fadd float %mul7.i267, %add.i265
  %conv26 = fpext float %add8.i268 to double
  %call27 = call double @sqrt(double %conv26) #6
  %div = fdiv double 1.000000e+00, %call27
  %conv28 = fptrunc double %div to float
  %mul29 = fmul float %conv28, %conv28
  %idxprom30 = sext i32 %5 to i64
  %arrayidx31 = getelementptr inbounds %union.t_iparams* %ip, i64 %idxprom30
  %ex33 = bitcast %union.t_iparams* %arrayidx31 to i32*
  %16 = load i32* %ex33, align 4, !tbaa !3
  %pow = getelementptr inbounds %union.t_iparams* %ip, i64 %idxprom30, i32 0, i32 1
  %17 = bitcast float* %pow to i32*
  %18 = load i32* %17, align 4, !tbaa !3
  %19 = getelementptr inbounds %union.t_iparams* %ip, i64 %idxprom30, i32 0, i32 5
  %20 = load float* %19, align 4, !tbaa !0
  %mul40 = fmul float %conv10, %20
  %21 = load float** %otav, align 8, !tbaa !4
  %arrayidx42 = getelementptr inbounds float* %21, i64 %indvars.iv289
  %22 = load float* %arrayidx42, align 4, !tbaa !0
  %23 = getelementptr inbounds %union.t_iparams* %ip, i64 %idxprom30, i32 0, i32 4
  %24 = load float* %23, align 4, !tbaa !0
  %sub46 = fsub float %22, %24
  %conv47 = fpext float %mul40 to double
  %mul48 = fmul double %conv47, 5.000000e-01
  %mul.i261 = fmul float %sub46, %sub46
  %conv50 = fpext float %mul.i261 to double
  %mul51 = fmul double %mul48, %conv50
  %conv52 = fpext float %vtot.0276 to double
  %add53 = fadd double %conv52, %mul51
  %conv54 = fptrunc double %add53 to float
  br i1 %cmp5, label %if.then55, label %if.end76

if.then55:                                        ; preds = %for.body
  %25 = load float** %oins, align 8, !tbaa !4
  %arrayidx57 = getelementptr inbounds float* %25, i64 %indvars.iv289
  %26 = load float* %arrayidx57, align 4, !tbaa !0
  %sub62 = fsub float %26, %24
  %mul63 = fmul float %sub46, %sub62
  %cmp64 = fcmp ugt float %mul63, 0.000000e+00
  br i1 %cmp64, label %if.else, label %if.end76

if.else:                                          ; preds = %if.then55
  %conv70 = call float @sqrtf(float %mul63) #1
  %cmp71 = fcmp olt float %sub62, 0.000000e+00
  br i1 %cmp71, label %if.then73, label %if.end76

if.then73:                                        ; preds = %if.else
  %sub74 = fsub float -0.000000e+00, %conv70
  br label %if.end76

if.end76:                                         ; preds = %if.then55, %if.then73, %if.else, %for.body
  %dev.0 = phi float [ %sub74, %if.then73 ], [ %conv70, %if.else ], [ %sub46, %for.body ], [ 0.000000e+00, %if.then55 ]
  %27 = getelementptr inbounds %union.t_iparams* %ip, i64 %idxprom30, i32 0, i32 3
  %28 = load float* %27, align 4, !tbaa !0
  %mul80 = fmul float %mul40, %28
  %mul81 = fmul float %mul29, %mul80
  %cmp83270 = icmp sgt i32 %18, 0
  br i1 %cmp83270, label %for.body85, label %for.end

for.body85:                                       ; preds = %if.end76, %for.body85
  %pfac.0272 = phi float [ %mul86, %for.body85 ], [ %mul81, %if.end76 ]
  %i.0271 = phi i32 [ %inc, %for.body85 ], [ 0, %if.end76 ]
  %mul86 = fmul float %conv28, %pfac.0272
  %inc = add nsw i32 %i.0271, 1
  %exitcond = icmp eq i32 %inc, %18
  br i1 %exitcond, label %for.end, label %for.body85

for.end:                                          ; preds = %for.body85, %if.end76
  %pfac.0.lcssa = phi float [ %mul81, %if.end76 ], [ %mul86, %for.body85 ]
  %idxprom87 = sext i32 %16 to i64
  %29 = load [3 x [3 x float]]** %S, align 8, !tbaa !4
  %arrayidx1.i = getelementptr inbounds [3 x [3 x float]]* %29, i64 %idxprom87, i64 0, i64 0
  %30 = load float* %arrayidx1.i, align 4, !tbaa !0
  %mul.i257 = fmul float %30, %sub.i
  %arrayidx4.i = getelementptr inbounds [3 x [3 x float]]* %29, i64 %idxprom87, i64 0, i64 1
  %31 = load float* %arrayidx4.i, align 4, !tbaa !0
  %mul6.i = fmul float %31, %sub4.i
  %add.i259 = fadd float %mul.i257, %mul6.i
  %arrayidx8.i = getelementptr inbounds [3 x [3 x float]]* %29, i64 %idxprom87, i64 0, i64 2
  %32 = load float* %arrayidx8.i, align 4, !tbaa !0
  %mul10.i = fmul float %32, %sub7.i
  %add11.i = fadd float %add.i259, %mul10.i
  store float %add11.i, float* %arraydecay91, align 4, !tbaa !0
  %arrayidx14.i = getelementptr inbounds [3 x [3 x float]]* %29, i64 %idxprom87, i64 1, i64 0
  %33 = load float* %arrayidx14.i, align 4, !tbaa !0
  %mul16.i = fmul float %33, %sub.i
  %arrayidx18.i = getelementptr inbounds [3 x [3 x float]]* %29, i64 %idxprom87, i64 1, i64 1
  %34 = load float* %arrayidx18.i, align 4, !tbaa !0
  %mul20.i = fmul float %34, %sub4.i
  %add21.i = fadd float %mul16.i, %mul20.i
  %arrayidx23.i = getelementptr inbounds [3 x [3 x float]]* %29, i64 %idxprom87, i64 1, i64 2
  %35 = load float* %arrayidx23.i, align 4, !tbaa !0
  %mul25.i = fmul float %35, %sub7.i
  %add26.i = fadd float %add21.i, %mul25.i
  store float %add26.i, float* %arrayidx27.i, align 4, !tbaa !0
  %arrayidx29.i = getelementptr inbounds [3 x [3 x float]]* %29, i64 %idxprom87, i64 2, i64 0
  %36 = load float* %arrayidx29.i, align 4, !tbaa !0
  %mul31.i = fmul float %36, %sub.i
  %arrayidx33.i = getelementptr inbounds [3 x [3 x float]]* %29, i64 %idxprom87, i64 2, i64 1
  %37 = load float* %arrayidx33.i, align 4, !tbaa !0
  %mul35.i = fmul float %37, %sub4.i
  %add36.i = fadd float %mul31.i, %mul35.i
  %arrayidx38.i = getelementptr inbounds [3 x [3 x float]]* %29, i64 %idxprom87, i64 2, i64 2
  %38 = load float* %arrayidx38.i, align 4, !tbaa !0
  %mul40.i = fmul float %38, %sub7.i
  %add41.i = fadd float %add36.i, %mul40.i
  store float %add41.i, float* %arrayidx42.i, align 4, !tbaa !0
  %39 = fmul float %dev.0, %pfac.0.lcssa
  %add101 = shl i32 %18, 1
  %mul102 = add i32 %add101, 4
  %conv103 = sitofp i32 %mul102 to float
  %mul104 = fmul float %mul29, %conv103
  %mul.i = fmul float %add11.i, %sub.i
  %mul4.i = fmul float %add26.i, %sub4.i
  %add.i = fadd float %mul.i, %mul4.i
  %mul7.i = fmul float %add41.i, %sub7.i
  %add8.i = fadd float %add.i, %mul7.i
  %mul108 = fmul float %mul104, %add8.i
  br label %for.body95

for.body95:                                       ; preds = %for.body95.for.body95_crit_edge, %for.end
  %40 = phi float [ %sub.i, %for.end ], [ %.pre291, %for.body95.for.body95_crit_edge ]
  %41 = phi float [ %add11.i, %for.end ], [ %.pre, %for.body95.for.body95_crit_edge ]
  %indvars.iv = phi i64 [ 0, %for.end ], [ %indvars.iv.next, %for.body95.for.body95_crit_edge ]
  %mul100 = fmul float %41, 4.000000e+00
  %mul111 = fmul float %40, %mul108
  %sub112 = fsub float %mul100, %mul111
  %42 = fmul float %39, %sub112
  %mul113 = fsub float -0.000000e+00, %42
  %arrayidx115 = getelementptr inbounds [3 x float]* %fij, i64 0, i64 %indvars.iv
  store float %mul113, float* %arrayidx115, align 4, !tbaa !0
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond280 = icmp eq i32 %lftr.wideiv, 3
  br i1 %exitcond280, label %for.end118, label %for.body95.for.body95_crit_edge

for.body95.for.body95_crit_edge:                  ; preds = %for.body95
  %arrayidx99.phi.trans.insert = getelementptr inbounds [3 x float]* %Sr, i64 0, i64 %indvars.iv.next
  %.pre = load float* %arrayidx99.phi.trans.insert, align 4, !tbaa !0
  %arrayidx110.phi.trans.insert = getelementptr inbounds [3 x float]* %r, i64 0, i64 %indvars.iv.next
  %.pre291 = load float* %arrayidx110.phi.trans.insert, align 4, !tbaa !0
  br label %for.body95

for.end118:                                       ; preds = %for.body95
  %43 = load i32* %start, align 4, !tbaa !3
  %sub119 = sub nsw i32 %7, %43
  %idxprom120 = sext i32 %sub119 to i64
  %44 = load [3 x i32]** %ishift, align 8, !tbaa !4
  %arraydecay122 = getelementptr inbounds [3 x i32]* %44, i64 %idxprom120, i64 0
  %sub124 = sub nsw i32 %9, %43
  %idxprom125 = sext i32 %sub124 to i64
  %arraydecay128 = getelementptr inbounds [3 x i32]* %44, i64 %idxprom125, i64 0
  %45 = load i32* %arraydecay122, align 4, !tbaa !3
  %46 = load i32* %arraydecay128, align 4, !tbaa !3
  %arrayidx2.i245 = getelementptr inbounds [3 x i32]* %44, i64 %idxprom120, i64 1
  %47 = load i32* %arrayidx2.i245, align 4, !tbaa !3
  %arrayidx3.i246 = getelementptr inbounds [3 x i32]* %44, i64 %idxprom125, i64 1
  %48 = load i32* %arrayidx3.i246, align 4, !tbaa !3
  %arrayidx5.i248 = getelementptr inbounds [3 x i32]* %44, i64 %idxprom120, i64 2
  %49 = load i32* %arrayidx5.i248, align 4, !tbaa !3
  %arrayidx6.i249 = getelementptr inbounds [3 x i32]* %44, i64 %idxprom125, i64 2
  %50 = load i32* %arrayidx6.i249, align 4, !tbaa !3
  %sub7.i250 = sub nsw i32 %49, %50
  %51 = mul i32 %sub7.i250, 3
  %sub4.i247 = add i32 %47, 3
  %mul132 = sub i32 %sub4.i247, %48
  %add134 = add i32 %mul132, %51
  %52 = mul i32 %add134, 3
  %mul136 = add i32 %45, 4
  %add138 = sub i32 %mul136, %46
  %add139 = add i32 %add138, %52
  %idxprom161 = sext i32 %add139 to i64
  %53 = load [3 x float]** %fshift, align 8, !tbaa !4
  br label %for.body143

for.body143:                                      ; preds = %for.body143, %for.end118
  %indvars.iv281 = phi i64 [ 0, %for.end118 ], [ %indvars.iv.next282, %for.body143 ]
  %arrayidx145 = getelementptr inbounds [3 x float]* %fij, i64 0, i64 %indvars.iv281
  %54 = load float* %arrayidx145, align 4, !tbaa !0
  %arrayidx149 = getelementptr inbounds [3 x float]* %f, i64 %idxprom18, i64 %indvars.iv281
  %55 = load float* %arrayidx149, align 4, !tbaa !0
  %add150 = fadd float %54, %55
  store float %add150, float* %arrayidx149, align 4, !tbaa !0
  %arrayidx156 = getelementptr inbounds [3 x float]* %f, i64 %idxprom20, i64 %indvars.iv281
  %56 = load float* %arrayidx156, align 4, !tbaa !0
  %sub157 = fsub float %56, %54
  store float %sub157, float* %arrayidx156, align 4, !tbaa !0
  %arrayidx163 = getelementptr inbounds [3 x float]* %53, i64 %idxprom161, i64 %indvars.iv281
  %57 = load float* %arrayidx163, align 4, !tbaa !0
  %add164 = fadd float %54, %57
  store float %add164, float* %arrayidx163, align 4, !tbaa !0
  %arrayidx170 = getelementptr inbounds [3 x float]* %53, i64 13, i64 %indvars.iv281
  %58 = load float* %arrayidx170, align 4, !tbaa !0
  %sub171 = fsub float %58, %54
  store float %sub171, float* %arrayidx170, align 4, !tbaa !0
  %indvars.iv.next282 = add i64 %indvars.iv281, 1
  %lftr.wideiv283 = trunc i64 %indvars.iv.next282 to i32
  %exitcond284 = icmp eq i32 %lftr.wideiv283, 3
  br i1 %exitcond284, label %for.end174, label %for.body143

for.end174:                                       ; preds = %for.body143
  %indvars.iv.next290 = add i64 %indvars.iv289, 1
  %indvars.iv.next286 = add i64 %indvars.iv285, 3
  %59 = trunc i64 %indvars.iv.next286 to i32
  %cmp11 = icmp slt i32 %59, %nfa
  br i1 %cmp11, label %for.body, label %if.end179

if.end179:                                        ; preds = %if.then, %for.end174, %entry
  %vtot.1 = phi float [ 0.000000e+00, %entry ], [ 0.000000e+00, %if.then ], [ %conv54, %for.end174 ]
  ret float %vtot.1
}

declare float @fabsf(float)

; Function Attrs: nounwind
declare i32 @fputc(i32, %struct._IO_FILE* nocapture) #4

; Function Attrs: nounwind optsize
declare float @sqrtf(float) #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #4

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { inlinehint nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind optsize }
attributes #7 = { optsize }
attributes #8 = { nounwind optsize readnone }

!0 = metadata !{metadata !"float", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"int", metadata !1}
!4 = metadata !{metadata !"any pointer", metadata !1}
!5 = metadata !{metadata !"short", metadata !1}
!6 = metadata !{metadata !"double", metadata !1}
