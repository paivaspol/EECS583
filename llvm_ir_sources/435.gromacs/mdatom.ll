; ModuleID = '../../SPEC/benchspec/CPU2006/435.gromacs/src/mdatom.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.t_mdatoms = type { float, i32, float*, float*, float*, float*, float*, float*, float*, i32*, i32*, i32*, i32*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.t_atoms = type { i32, %struct.t_atom*, i8***, i8***, i8***, i32, i8***, i32, i8***, %struct.t_block, [9 x %struct.t_grps], %struct.t_pdbinfo* }
%struct.t_atom = type { float, float, float, float, i16, i16, i32, i32, [9 x i8], i8 }
%struct.t_block = type { [256 x i32], i32, i32*, i32, i32* }
%struct.t_grps = type { i32, i32* }
%struct.t_pdbinfo = type { i32, i32, i8, [6 x i8], float, float, i32, [6 x i32] }

@.str = private unnamed_addr constant [3 x i8] c"md\00", align 1
@.str1 = private unnamed_addr constant [54 x i8] c"../../SPEC/benchspec/CPU2006/435.gromacs/src/mdatom.c\00", align 1
@.str2 = private unnamed_addr constant [10 x i8] c"md->massA\00", align 1
@.str3 = private unnamed_addr constant [10 x i8] c"md->massB\00", align 1
@.str4 = private unnamed_addr constant [10 x i8] c"md->massT\00", align 1
@.str5 = private unnamed_addr constant [12 x i8] c"md->invmass\00", align 1
@.str6 = private unnamed_addr constant [12 x i8] c"md->chargeA\00", align 1
@.str7 = private unnamed_addr constant [12 x i8] c"md->chargeB\00", align 1
@.str8 = private unnamed_addr constant [12 x i8] c"md->chargeT\00", align 1
@.str9 = private unnamed_addr constant [10 x i8] c"md->resnr\00", align 1
@.str10 = private unnamed_addr constant [10 x i8] c"md->typeA\00", align 1
@.str11 = private unnamed_addr constant [10 x i8] c"md->typeB\00", align 1
@.str12 = private unnamed_addr constant [10 x i8] c"md->ptype\00", align 1
@.str13 = private unnamed_addr constant [8 x i8] c"md->cTC\00", align 1
@.str14 = private unnamed_addr constant [10 x i8] c"md->cENER\00", align 1
@.str15 = private unnamed_addr constant [9 x i8] c"md->cACC\00", align 1
@.str16 = private unnamed_addr constant [12 x i8] c"md->cFREEZE\00", align 1
@.str17 = private unnamed_addr constant [9 x i8] c"md->cXTC\00", align 1
@.str18 = private unnamed_addr constant [9 x i8] c"md->cVCM\00", align 1
@.str19 = private unnamed_addr constant [9 x i8] c"md->cORF\00", align 1
@.str20 = private unnamed_addr constant [15 x i8] c"md->bPerturbed\00", align 1
@.str21 = private unnamed_addr constant [8 x i8] c"md->cU1\00", align 1
@.str22 = private unnamed_addr constant [8 x i8] c"md->cU2\00", align 1
@.str23 = private unnamed_addr constant [12 x i8] c"atoms->atom\00", align 1
@.str24 = private unnamed_addr constant [49 x i8] c"There are %d atoms for free energy perturbation\0A\00", align 1
@init_mdatoms.lambda0 = internal unnamed_addr global float 0.000000e+00, align 4

; Function Attrs: nounwind optsize uwtable
define %struct.t_mdatoms* @atoms2md(%struct._IO_FILE* %fp, %struct.t_atoms* nocapture %atoms, [3 x i32]* nocapture %nFreeze, i32 %bBD, float %delta_t, float %fric, float* nocapture %tau_t, i32 %bPert, i32 %bFree) #0 {
entry:
  %call = tail call i8* @save_calloc(i8* getelementptr inbounds ([3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str1, i64 0, i64 0), i32 50, i32 1, i32 176) #4
  %0 = bitcast i8* %call to %struct.t_mdatoms*
  %nr = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 0
  %1 = load i32* %nr, align 4, !tbaa !0
  %nr1 = getelementptr inbounds i8* %call, i64 4
  %2 = bitcast i8* %nr1 to i32*
  store i32 %1, i32* %2, align 4, !tbaa !0
  %call3 = tail call i8* @save_calloc(i8* getelementptr inbounds ([10 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str1, i64 0, i64 0), i32 52, i32 %1, i32 4) #4
  %3 = bitcast i8* %call3 to float*
  %massA = getelementptr inbounds i8* %call, i64 8
  %4 = bitcast i8* %massA to float**
  store float* %3, float** %4, align 8, !tbaa !3
  %5 = load i32* %2, align 4, !tbaa !0
  %call5 = tail call i8* @save_calloc(i8* getelementptr inbounds ([10 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str1, i64 0, i64 0), i32 53, i32 %5, i32 4) #4
  %6 = bitcast i8* %call5 to float*
  %massB = getelementptr inbounds i8* %call, i64 16
  %7 = bitcast i8* %massB to float**
  store float* %6, float** %7, align 8, !tbaa !3
  %8 = load i32* %2, align 4, !tbaa !0
  %call7 = tail call i8* @save_calloc(i8* getelementptr inbounds ([10 x i8]* @.str4, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str1, i64 0, i64 0), i32 54, i32 %8, i32 4) #4
  %9 = bitcast i8* %call7 to float*
  %massT = getelementptr inbounds i8* %call, i64 24
  %10 = bitcast i8* %massT to float**
  store float* %9, float** %10, align 8, !tbaa !3
  %11 = load i32* %2, align 4, !tbaa !0
  %call9 = tail call i8* @save_calloc(i8* getelementptr inbounds ([12 x i8]* @.str5, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str1, i64 0, i64 0), i32 55, i32 %11, i32 4) #4
  %12 = bitcast i8* %call9 to float*
  %invmass = getelementptr inbounds i8* %call, i64 32
  %13 = bitcast i8* %invmass to float**
  store float* %12, float** %13, align 8, !tbaa !3
  %14 = load i32* %2, align 4, !tbaa !0
  %call11 = tail call i8* @save_calloc(i8* getelementptr inbounds ([12 x i8]* @.str6, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str1, i64 0, i64 0), i32 56, i32 %14, i32 4) #4
  %15 = bitcast i8* %call11 to float*
  %chargeA = getelementptr inbounds i8* %call, i64 40
  %16 = bitcast i8* %chargeA to float**
  store float* %15, float** %16, align 8, !tbaa !3
  %17 = load i32* %2, align 4, !tbaa !0
  %call13 = tail call i8* @save_calloc(i8* getelementptr inbounds ([12 x i8]* @.str7, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str1, i64 0, i64 0), i32 57, i32 %17, i32 4) #4
  %18 = bitcast i8* %call13 to float*
  %chargeB = getelementptr inbounds i8* %call, i64 48
  %19 = bitcast i8* %chargeB to float**
  store float* %18, float** %19, align 8, !tbaa !3
  %20 = load i32* %2, align 4, !tbaa !0
  %call15 = tail call i8* @save_calloc(i8* getelementptr inbounds ([12 x i8]* @.str8, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str1, i64 0, i64 0), i32 58, i32 %20, i32 4) #4
  %21 = bitcast i8* %call15 to float*
  %chargeT = getelementptr inbounds i8* %call, i64 56
  %22 = bitcast i8* %chargeT to float**
  store float* %21, float** %22, align 8, !tbaa !3
  %23 = load i32* %2, align 4, !tbaa !0
  %call17 = tail call i8* @save_calloc(i8* getelementptr inbounds ([10 x i8]* @.str9, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str1, i64 0, i64 0), i32 59, i32 %23, i32 4) #4
  %24 = bitcast i8* %call17 to i32*
  %resnr = getelementptr inbounds i8* %call, i64 72
  %25 = bitcast i8* %resnr to i32**
  store i32* %24, i32** %25, align 8, !tbaa !3
  %26 = load i32* %2, align 4, !tbaa !0
  %call19 = tail call i8* @save_calloc(i8* getelementptr inbounds ([10 x i8]* @.str10, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str1, i64 0, i64 0), i32 60, i32 %26, i32 4) #4
  %27 = bitcast i8* %call19 to i32*
  %typeA = getelementptr inbounds i8* %call, i64 80
  %28 = bitcast i8* %typeA to i32**
  store i32* %27, i32** %28, align 8, !tbaa !3
  %29 = load i32* %2, align 4, !tbaa !0
  %call21 = tail call i8* @save_calloc(i8* getelementptr inbounds ([10 x i8]* @.str11, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str1, i64 0, i64 0), i32 61, i32 %29, i32 4) #4
  %30 = bitcast i8* %call21 to i32*
  %typeB = getelementptr inbounds i8* %call, i64 88
  %31 = bitcast i8* %typeB to i32**
  store i32* %30, i32** %31, align 8, !tbaa !3
  %32 = load i32* %2, align 4, !tbaa !0
  %call23 = tail call i8* @save_calloc(i8* getelementptr inbounds ([10 x i8]* @.str12, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str1, i64 0, i64 0), i32 62, i32 %32, i32 2) #4
  %33 = bitcast i8* %call23 to i16*
  %ptype = getelementptr inbounds i8* %call, i64 96
  %34 = bitcast i8* %ptype to i16**
  store i16* %33, i16** %34, align 8, !tbaa !3
  %35 = load i32* %2, align 4, !tbaa !0
  %call25 = tail call i8* @save_calloc(i8* getelementptr inbounds ([8 x i8]* @.str13, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str1, i64 0, i64 0), i32 63, i32 %35, i32 2) #4
  %36 = bitcast i8* %call25 to i16*
  %cTC = getelementptr inbounds i8* %call, i64 104
  %37 = bitcast i8* %cTC to i16**
  store i16* %36, i16** %37, align 8, !tbaa !3
  %38 = load i32* %2, align 4, !tbaa !0
  %call27 = tail call i8* @save_calloc(i8* getelementptr inbounds ([10 x i8]* @.str14, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str1, i64 0, i64 0), i32 64, i32 %38, i32 2) #4
  %39 = bitcast i8* %call27 to i16*
  %cENER = getelementptr inbounds i8* %call, i64 112
  %40 = bitcast i8* %cENER to i16**
  store i16* %39, i16** %40, align 8, !tbaa !3
  %41 = load i32* %2, align 4, !tbaa !0
  %call29 = tail call i8* @save_calloc(i8* getelementptr inbounds ([9 x i8]* @.str15, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str1, i64 0, i64 0), i32 65, i32 %41, i32 2) #4
  %42 = bitcast i8* %call29 to i16*
  %cACC = getelementptr inbounds i8* %call, i64 120
  %43 = bitcast i8* %cACC to i16**
  store i16* %42, i16** %43, align 8, !tbaa !3
  %44 = load i32* %2, align 4, !tbaa !0
  %call31 = tail call i8* @save_calloc(i8* getelementptr inbounds ([12 x i8]* @.str16, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str1, i64 0, i64 0), i32 66, i32 %44, i32 2) #4
  %45 = bitcast i8* %call31 to i16*
  %cFREEZE = getelementptr inbounds i8* %call, i64 128
  %46 = bitcast i8* %cFREEZE to i16**
  store i16* %45, i16** %46, align 8, !tbaa !3
  %47 = load i32* %2, align 4, !tbaa !0
  %call33 = tail call i8* @save_calloc(i8* getelementptr inbounds ([9 x i8]* @.str17, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str1, i64 0, i64 0), i32 67, i32 %47, i32 2) #4
  %48 = bitcast i8* %call33 to i16*
  %cXTC = getelementptr inbounds i8* %call, i64 136
  %49 = bitcast i8* %cXTC to i16**
  store i16* %48, i16** %49, align 8, !tbaa !3
  %50 = load i32* %2, align 4, !tbaa !0
  %call35 = tail call i8* @save_calloc(i8* getelementptr inbounds ([9 x i8]* @.str18, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str1, i64 0, i64 0), i32 68, i32 %50, i32 2) #4
  %51 = bitcast i8* %call35 to i16*
  %cVCM = getelementptr inbounds i8* %call, i64 144
  %52 = bitcast i8* %cVCM to i16**
  store i16* %51, i16** %52, align 8, !tbaa !3
  %53 = load i32* %2, align 4, !tbaa !0
  %call37 = tail call i8* @save_calloc(i8* getelementptr inbounds ([9 x i8]* @.str19, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str1, i64 0, i64 0), i32 69, i32 %53, i32 2) #4
  %54 = bitcast i8* %call37 to i16*
  %cORF = getelementptr inbounds i8* %call, i64 168
  %55 = bitcast i8* %cORF to i16**
  store i16* %54, i16** %55, align 8, !tbaa !3
  %56 = load i32* %2, align 4, !tbaa !0
  %call39 = tail call i8* @save_calloc(i8* getelementptr inbounds ([15 x i8]* @.str20, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str1, i64 0, i64 0), i32 70, i32 %56, i32 4) #4
  %57 = bitcast i8* %call39 to i32*
  %bPerturbed = getelementptr inbounds i8* %call, i64 64
  %58 = bitcast i8* %bPerturbed to i32**
  store i32* %57, i32** %58, align 8, !tbaa !3
  %59 = load i32* %2, align 4, !tbaa !0
  %call41 = tail call i8* @save_calloc(i8* getelementptr inbounds ([8 x i8]* @.str21, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str1, i64 0, i64 0), i32 72, i32 %59, i32 2) #4
  %60 = bitcast i8* %call41 to i16*
  %cU1 = getelementptr inbounds i8* %call, i64 152
  %61 = bitcast i8* %cU1 to i16**
  store i16* %60, i16** %61, align 8, !tbaa !3
  %62 = load i32* %2, align 4, !tbaa !0
  %call43 = tail call i8* @save_calloc(i8* getelementptr inbounds ([8 x i8]* @.str22, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str1, i64 0, i64 0), i32 73, i32 %62, i32 2) #4
  %63 = bitcast i8* %call43 to i16*
  %cU2 = getelementptr inbounds i8* %call, i64 160
  %64 = bitcast i8* %cU2 to i16**
  store i16* %63, i16** %64, align 8, !tbaa !3
  %65 = load i32* %2, align 4, !tbaa !0
  %cmp519 = icmp sgt i32 %65, 0
  br i1 %cmp519, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %tobool = icmp eq i32 %bBD, 0
  %atom75 = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 1
  %tobool258 = icmp eq i32 %bPert, 0
  %mul = fmul float %delta_t, %fric
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %if.end309
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %if.end309 ]
  %tm.0521 = phi double [ 0.000000e+00, %for.body.lr.ph ], [ %tm.1, %if.end309 ]
  %np.0520 = phi i32 [ 0, %for.body.lr.ph ], [ %np.1, %if.end309 ]
  br i1 %tobool, label %if.else73, label %if.then

if.then:                                          ; preds = %for.body
  %fabsf518 = tail call float @fabsf(float %fric) #2
  %66 = fpext float %fabsf518 to double
  %cmp46 = fcmp ogt double %66, 1.200000e-38
  br i1 %cmp46, label %if.then48, label %if.else

if.then48:                                        ; preds = %if.then
  %67 = load float** %4, align 8, !tbaa !3
  %arrayidx = getelementptr inbounds float* %67, i64 %indvars.iv
  store float %mul, float* %arrayidx, align 4, !tbaa !4
  %68 = load float** %7, align 8, !tbaa !3
  %arrayidx53 = getelementptr inbounds float* %68, i64 %indvars.iv
  store float %mul, float* %arrayidx53, align 4, !tbaa !4
  %.pre = load %struct.t_atom** %atom75, align 8, !tbaa !3
  br label %if.end88

if.else:                                          ; preds = %if.then
  %69 = load %struct.t_atom** %atom75, align 8, !tbaa !3
  %arrayidx56 = getelementptr inbounds %struct.t_atom* %69, i64 %indvars.iv, i32 8, i64 0
  %70 = load i8* %arrayidx56, align 1, !tbaa !1
  %idxprom57 = zext i8 %70 to i64
  %arrayidx58 = getelementptr inbounds float* %tau_t, i64 %idxprom57
  %71 = load float* %arrayidx58, align 4, !tbaa !4
  %div = fdiv float %delta_t, %71
  %m = getelementptr inbounds %struct.t_atom* %69, i64 %indvars.iv, i32 0
  %72 = load float* %m, align 4, !tbaa !4
  %mul62 = fmul float %div, %72
  %73 = load float** %4, align 8, !tbaa !3
  %arrayidx65 = getelementptr inbounds float* %73, i64 %indvars.iv
  store float %mul62, float* %arrayidx65, align 4, !tbaa !4
  %mB = getelementptr inbounds %struct.t_atom* %69, i64 %indvars.iv, i32 2
  %74 = load float* %mB, align 4, !tbaa !4
  %mul69 = fmul float %div, %74
  %75 = load float** %7, align 8, !tbaa !3
  %arrayidx72 = getelementptr inbounds float* %75, i64 %indvars.iv
  store float %mul69, float* %arrayidx72, align 4, !tbaa !4
  br label %if.end88

if.else73:                                        ; preds = %for.body
  %76 = load %struct.t_atom** %atom75, align 8, !tbaa !3
  %m77 = getelementptr inbounds %struct.t_atom* %76, i64 %indvars.iv, i32 0
  %77 = load float* %m77, align 4, !tbaa !4
  %78 = load float** %4, align 8, !tbaa !3
  %arrayidx80 = getelementptr inbounds float* %78, i64 %indvars.iv
  store float %77, float* %arrayidx80, align 4, !tbaa !4
  %mB84 = getelementptr inbounds %struct.t_atom* %76, i64 %indvars.iv, i32 2
  %79 = load float* %mB84, align 4, !tbaa !4
  %80 = load float** %7, align 8, !tbaa !3
  %arrayidx87 = getelementptr inbounds float* %80, i64 %indvars.iv
  store float %79, float* %arrayidx87, align 4, !tbaa !4
  br label %if.end88

if.end88:                                         ; preds = %if.then48, %if.else, %if.else73
  %81 = phi %struct.t_atom* [ %.pre, %if.then48 ], [ %69, %if.else ], [ %76, %if.else73 ]
  %82 = phi float* [ %67, %if.then48 ], [ %73, %if.else ], [ %78, %if.else73 ]
  %arrayidx91 = getelementptr inbounds float* %82, i64 %indvars.iv
  %83 = load float* %arrayidx91, align 4, !tbaa !4
  %84 = load float** %10, align 8, !tbaa !3
  %arrayidx94 = getelementptr inbounds float* %84, i64 %indvars.iv
  store float %83, float* %arrayidx94, align 4, !tbaa !4
  %q = getelementptr inbounds %struct.t_atom* %81, i64 %indvars.iv, i32 1
  %85 = load float* %q, align 4, !tbaa !4
  %86 = load float** %16, align 8, !tbaa !3
  %arrayidx100 = getelementptr inbounds float* %86, i64 %indvars.iv
  store float %85, float* %arrayidx100, align 4, !tbaa !4
  %qB = getelementptr inbounds %struct.t_atom* %81, i64 %indvars.iv, i32 3
  %87 = load float* %qB, align 4, !tbaa !4
  %88 = load float** %19, align 8, !tbaa !3
  %arrayidx106 = getelementptr inbounds float* %88, i64 %indvars.iv
  store float %87, float* %arrayidx106, align 4, !tbaa !4
  %resnr110 = getelementptr inbounds %struct.t_atom* %81, i64 %indvars.iv, i32 7
  %89 = load i32* %resnr110, align 4, !tbaa !0
  %90 = load i32** %25, align 8, !tbaa !3
  %arrayidx113 = getelementptr inbounds i32* %90, i64 %indvars.iv
  store i32 %89, i32* %arrayidx113, align 4, !tbaa !0
  %type = getelementptr inbounds %struct.t_atom* %81, i64 %indvars.iv, i32 4
  %91 = load i16* %type, align 2, !tbaa !5
  %conv117 = zext i16 %91 to i32
  %92 = load i32** %28, align 8, !tbaa !3
  %arrayidx120 = getelementptr inbounds i32* %92, i64 %indvars.iv
  store i32 %conv117, i32* %arrayidx120, align 4, !tbaa !0
  %typeB124 = getelementptr inbounds %struct.t_atom* %81, i64 %indvars.iv, i32 5
  %93 = load i16* %typeB124, align 2, !tbaa !5
  %conv125 = zext i16 %93 to i32
  %94 = load i32** %31, align 8, !tbaa !3
  %arrayidx128 = getelementptr inbounds i32* %94, i64 %indvars.iv
  store i32 %conv125, i32* %arrayidx128, align 4, !tbaa !0
  %ptype132 = getelementptr inbounds %struct.t_atom* %81, i64 %indvars.iv, i32 6
  %95 = load i32* %ptype132, align 4, !tbaa !0
  %conv133 = trunc i32 %95 to i16
  %96 = load i16** %34, align 8, !tbaa !3
  %arrayidx136 = getelementptr inbounds i16* %96, i64 %indvars.iv
  store i16 %conv133, i16* %arrayidx136, align 2, !tbaa !5
  %arrayidx141 = getelementptr inbounds %struct.t_atom* %81, i64 %indvars.iv, i32 8, i64 0
  %97 = load i8* %arrayidx141, align 1, !tbaa !1
  %conv142 = zext i8 %97 to i16
  %98 = load i16** %37, align 8, !tbaa !3
  %arrayidx145 = getelementptr inbounds i16* %98, i64 %indvars.iv
  store i16 %conv142, i16* %arrayidx145, align 2, !tbaa !5
  %arrayidx150 = getelementptr inbounds %struct.t_atom* %81, i64 %indvars.iv, i32 8, i64 1
  %99 = load i8* %arrayidx150, align 1, !tbaa !1
  %conv151 = zext i8 %99 to i16
  %100 = load i16** %40, align 8, !tbaa !3
  %arrayidx154 = getelementptr inbounds i16* %100, i64 %indvars.iv
  store i16 %conv151, i16* %arrayidx154, align 2, !tbaa !5
  %arrayidx159 = getelementptr inbounds %struct.t_atom* %81, i64 %indvars.iv, i32 8, i64 2
  %101 = load i8* %arrayidx159, align 1, !tbaa !1
  %conv160 = zext i8 %101 to i16
  %102 = load i16** %43, align 8, !tbaa !3
  %arrayidx163 = getelementptr inbounds i16* %102, i64 %indvars.iv
  store i16 %conv160, i16* %arrayidx163, align 2, !tbaa !5
  %arrayidx168 = getelementptr inbounds %struct.t_atom* %81, i64 %indvars.iv, i32 8, i64 3
  %103 = load i8* %arrayidx168, align 1, !tbaa !1
  %conv169 = zext i8 %103 to i16
  %104 = load i16** %46, align 8, !tbaa !3
  %arrayidx172 = getelementptr inbounds i16* %104, i64 %indvars.iv
  store i16 %conv169, i16* %arrayidx172, align 2, !tbaa !5
  %arrayidx177 = getelementptr inbounds %struct.t_atom* %81, i64 %indvars.iv, i32 8, i64 7
  %105 = load i8* %arrayidx177, align 1, !tbaa !1
  %conv178 = zext i8 %105 to i16
  %106 = load i16** %49, align 8, !tbaa !3
  %arrayidx181 = getelementptr inbounds i16* %106, i64 %indvars.iv
  store i16 %conv178, i16* %arrayidx181, align 2, !tbaa !5
  %arrayidx186 = getelementptr inbounds %struct.t_atom* %81, i64 %indvars.iv, i32 8, i64 6
  %107 = load i8* %arrayidx186, align 1, !tbaa !1
  %conv187 = zext i8 %107 to i16
  %108 = load i16** %52, align 8, !tbaa !3
  %arrayidx190 = getelementptr inbounds i16* %108, i64 %indvars.iv
  store i16 %conv187, i16* %arrayidx190, align 2, !tbaa !5
  %arrayidx195 = getelementptr inbounds %struct.t_atom* %81, i64 %indvars.iv, i32 8, i64 8
  %109 = load i8* %arrayidx195, align 1, !tbaa !1
  %conv196 = zext i8 %109 to i16
  %110 = load i16** %55, align 8, !tbaa !3
  %arrayidx199 = getelementptr inbounds i16* %110, i64 %indvars.iv
  store i16 %conv196, i16* %arrayidx199, align 2, !tbaa !5
  %111 = load float* %arrayidx91, align 4, !tbaa !4
  %fabsf = tail call float @fabsf(float %111) #2
  %112 = fpext float %fabsf to double
  %cmp205 = fcmp ogt double %112, 1.200000e-38
  br i1 %cmp205, label %if.then207, label %if.end257

if.then207:                                       ; preds = %if.end88
  %113 = load float* %arrayidx94, align 4, !tbaa !4
  %conv211 = fpext float %113 to double
  %add = fadd double %tm.0521, %conv211
  %114 = load i16* %arrayidx172, align 2, !tbaa !5
  %idxprom216 = zext i16 %114 to i64
  %arrayidx218 = getelementptr inbounds [3 x i32]* %nFreeze, i64 %idxprom216, i64 0
  %115 = load i32* %arrayidx218, align 4, !tbaa !0
  %tobool219 = icmp eq i32 %115, 0
  br i1 %tobool219, label %if.else233, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then207
  %arrayidx222 = getelementptr inbounds [3 x i32]* %nFreeze, i64 %idxprom216, i64 1
  %116 = load i32* %arrayidx222, align 4, !tbaa !0
  %tobool223 = icmp eq i32 %116, 0
  br i1 %tobool223, label %if.else233, label %land.lhs.true224

land.lhs.true224:                                 ; preds = %land.lhs.true
  %arrayidx227 = getelementptr inbounds [3 x i32]* %nFreeze, i64 %idxprom216, i64 2
  %117 = load i32* %arrayidx227, align 4, !tbaa !0
  %tobool228 = icmp eq i32 %117, 0
  br i1 %tobool228, label %if.else233, label %if.then229

if.then229:                                       ; preds = %land.lhs.true224
  %118 = load float** %13, align 8, !tbaa !3
  %arrayidx232 = getelementptr inbounds float* %118, i64 %indvars.iv
  store float 0x39B4484C00000000, float* %arrayidx232, align 4, !tbaa !4
  br label %if.end257

if.else233:                                       ; preds = %land.lhs.true224, %land.lhs.true, %if.then207
  %fabsf517 = tail call float @fabsf(float %113) #2
  %119 = fpext float %fabsf517 to double
  %cmp239 = fcmp olt double %119, 1.200000e-38
  br i1 %cmp239, label %if.then241, label %if.else245

if.then241:                                       ; preds = %if.else233
  %120 = load float** %13, align 8, !tbaa !3
  %arrayidx244 = getelementptr inbounds float* %120, i64 %indvars.iv
  store float 0.000000e+00, float* %arrayidx244, align 4, !tbaa !4
  br label %if.end257

if.else245:                                       ; preds = %if.else233
  %conv251 = fdiv float 1.000000e+00, %113
  %121 = load float** %13, align 8, !tbaa !3
  %arrayidx254 = getelementptr inbounds float* %121, i64 %indvars.iv
  store float %conv251, float* %arrayidx254, align 4, !tbaa !4
  br label %if.end257

if.end257:                                        ; preds = %if.then229, %if.else245, %if.then241, %if.end88
  %tm.1 = phi double [ %add, %if.then229 ], [ %add, %if.then241 ], [ %add, %if.else245 ], [ %tm.0521, %if.end88 ]
  br i1 %tobool258, label %if.end309, label %if.then259

if.then259:                                       ; preds = %if.end257
  %mB263 = getelementptr inbounds %struct.t_atom* %81, i64 %indvars.iv, i32 2
  %122 = load float* %mB263, align 4, !tbaa !4
  %m267 = getelementptr inbounds %struct.t_atom* %81, i64 %indvars.iv, i32 0
  %123 = load float* %m267, align 4, !tbaa !4
  %sub = fsub float %122, %123
  %fabsf515 = tail call float @fabsf(float %sub) #2
  %124 = fpext float %fabsf515 to double
  %cmp270 = fcmp ogt double %124, 1.200000e-38
  br i1 %cmp270, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then259
  %125 = load float* %qB, align 4, !tbaa !4
  %126 = load float* %q, align 4, !tbaa !4
  %sub280 = fsub float %125, %126
  %fabsf516 = tail call float @fabsf(float %sub280) #2
  %127 = fpext float %fabsf516 to double
  %cmp283 = fcmp ogt double %127, 1.200000e-38
  br i1 %cmp283, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false
  %128 = load i16* %typeB124, align 2, !tbaa !5
  %conv289 = zext i16 %128 to i32
  %129 = load i16* %type, align 2, !tbaa !5
  %conv294 = zext i16 %129 to i32
  %sub295 = sub nsw i32 %conv289, %conv294
  %conv296 = sitofp i32 %sub295 to double
  %call297 = tail call double @fabs(double %conv296) #5
  %cmp298 = fcmp ogt double %call297, 1.200000e-38
  br label %lor.end

lor.end:                                          ; preds = %lor.lhs.false, %if.then259, %lor.rhs
  %130 = phi i1 [ %cmp298, %lor.rhs ], [ true, %if.then259 ], [ true, %lor.lhs.false ]
  %lor.ext = zext i1 %130 to i32
  %131 = load i32** %58, align 8, !tbaa !3
  %arrayidx302 = getelementptr inbounds i32* %131, i64 %indvars.iv
  store i32 %lor.ext, i32* %arrayidx302, align 4, !tbaa !0
  %np.0.inc = add nsw i32 %lor.ext, %np.0520
  br label %if.end309

if.end309:                                        ; preds = %if.end257, %lor.end
  %np.1 = phi i32 [ %np.0.inc, %lor.end ], [ %np.0520, %if.end257 ]
  %arrayidx314 = getelementptr inbounds %struct.t_atom* %81, i64 %indvars.iv, i32 8, i64 4
  %132 = load i8* %arrayidx314, align 1, !tbaa !1
  %conv315 = zext i8 %132 to i16
  %133 = load i16** %61, align 8, !tbaa !3
  %arrayidx318 = getelementptr inbounds i16* %133, i64 %indvars.iv
  store i16 %conv315, i16* %arrayidx318, align 2, !tbaa !5
  %arrayidx323 = getelementptr inbounds %struct.t_atom* %81, i64 %indvars.iv, i32 8, i64 5
  %134 = load i8* %arrayidx323, align 1, !tbaa !1
  %conv324 = zext i8 %134 to i16
  %arrayidx327 = getelementptr inbounds i16* %63, i64 %indvars.iv
  store i16 %conv324, i16* %arrayidx327, align 2, !tbaa !5
  %indvars.iv.next = add i64 %indvars.iv, 1
  %135 = load i32* %2, align 4, !tbaa !0
  %136 = trunc i64 %indvars.iv.next to i32
  %cmp = icmp slt i32 %136, %135
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %if.end309, %entry
  %tm.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %tm.1, %if.end309 ]
  %np.0.lcssa = phi i32 [ 0, %entry ], [ %np.1, %if.end309 ]
  %conv329 = fptrunc double %tm.0.lcssa to float
  %tmass = bitcast i8* %call to float*
  store float %conv329, float* %tmass, align 4, !tbaa !4
  %tobool330 = icmp eq i32 %bFree, 0
  br i1 %tobool330, label %if.end334, label %if.then331

if.then331:                                       ; preds = %for.end
  %atom332 = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 1
  %137 = load %struct.t_atom** %atom332, align 8, !tbaa !3
  %138 = bitcast %struct.t_atom* %137 to i8*
  tail call void @save_free(i8* getelementptr inbounds ([12 x i8]* @.str23, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str1, i64 0, i64 0), i32 133, i8* %138) #4
  store %struct.t_atom* null, %struct.t_atom** %atom332, align 8, !tbaa !3
  br label %if.end334

if.end334:                                        ; preds = %for.end, %if.then331
  %tobool335 = icmp eq %struct._IO_FILE* %fp, null
  br i1 %tobool335, label %if.end338, label %if.then336

if.then336:                                       ; preds = %if.end334
  %call337 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([49 x i8]* @.str24, i64 0, i64 0), i32 %np.0.lcssa) #4
  br label %if.end338

if.end338:                                        ; preds = %if.end334, %if.then336
  ret %struct.t_mdatoms* %0
}

; Function Attrs: optsize
declare i8* @save_calloc(i8*, i8*, i32, i32, i32) #1

; Function Attrs: nounwind optsize readnone
declare double @fabs(double) #2

; Function Attrs: optsize
declare void @save_free(i8*, i8*, i32, i8*) #1

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #3

; Function Attrs: nounwind optsize uwtable
define void @md2atoms(%struct.t_mdatoms* %md, %struct.t_atoms* nocapture %atoms, i32 %bFree) #0 {
entry:
  %nr = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 1
  %0 = load i32* %nr, align 4, !tbaa !0
  %call = tail call i8* @save_calloc(i8* getelementptr inbounds ([12 x i8]* @.str23, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str1, i64 0, i64 0), i32 147, i32 %0, i32 40) #4
  %1 = bitcast i8* %call to %struct.t_atom*
  %atom = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 1
  store %struct.t_atom* %1, %struct.t_atom** %atom, align 8, !tbaa !3
  %2 = load i32* %nr, align 4, !tbaa !0
  %cmp191 = icmp sgt i32 %2, 0
  br i1 %cmp191, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %massT = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 4
  %chargeT = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 8
  %resnr = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 10
  %typeA = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 11
  %ptype = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 13
  %cTC = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 14
  %cENER = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 15
  %cACC = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 16
  %cFREEZE = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 17
  %cVCM = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 19
  %cXTC = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 18
  %cORF = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 22
  %cU1 = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 20
  %cU2 = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 21
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %3 = phi %struct.t_atom* [ %1, %for.body.lr.ph ], [ %.pre, %for.body.for.body_crit_edge ]
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.body.for.body_crit_edge ]
  %4 = load float** %massT, align 8, !tbaa !3
  %arrayidx = getelementptr inbounds float* %4, i64 %indvars.iv
  %5 = load float* %arrayidx, align 4, !tbaa !4
  %m = getelementptr inbounds %struct.t_atom* %3, i64 %indvars.iv, i32 0
  store float %5, float* %m, align 4, !tbaa !4
  %6 = load float** %chargeT, align 8, !tbaa !3
  %arrayidx6 = getelementptr inbounds float* %6, i64 %indvars.iv
  %7 = load float* %arrayidx6, align 4, !tbaa !4
  %q = getelementptr inbounds %struct.t_atom* %3, i64 %indvars.iv, i32 1
  store float %7, float* %q, align 4, !tbaa !4
  %8 = load i32** %resnr, align 8, !tbaa !3
  %arrayidx11 = getelementptr inbounds i32* %8, i64 %indvars.iv
  %9 = load i32* %arrayidx11, align 4, !tbaa !0
  %resnr15 = getelementptr inbounds %struct.t_atom* %3, i64 %indvars.iv, i32 7
  store i32 %9, i32* %resnr15, align 4, !tbaa !0
  %10 = load i32** %typeA, align 8, !tbaa !3
  %arrayidx17 = getelementptr inbounds i32* %10, i64 %indvars.iv
  %11 = load i32* %arrayidx17, align 4, !tbaa !0
  %conv = trunc i32 %11 to i16
  %type = getelementptr inbounds %struct.t_atom* %3, i64 %indvars.iv, i32 4
  store i16 %conv, i16* %type, align 2, !tbaa !5
  %12 = load i16** %ptype, align 8, !tbaa !3
  %arrayidx22 = getelementptr inbounds i16* %12, i64 %indvars.iv
  %13 = load i16* %arrayidx22, align 2, !tbaa !5
  %conv23 = zext i16 %13 to i32
  %ptype27 = getelementptr inbounds %struct.t_atom* %3, i64 %indvars.iv, i32 6
  store i32 %conv23, i32* %ptype27, align 4, !tbaa !0
  %14 = load i16** %cTC, align 8, !tbaa !3
  %arrayidx29 = getelementptr inbounds i16* %14, i64 %indvars.iv
  %15 = load i16* %arrayidx29, align 2, !tbaa !5
  %conv30 = trunc i16 %15 to i8
  %arrayidx34 = getelementptr inbounds %struct.t_atom* %3, i64 %indvars.iv, i32 8, i64 0
  store i8 %conv30, i8* %arrayidx34, align 1, !tbaa !1
  %16 = load i16** %cENER, align 8, !tbaa !3
  %arrayidx36 = getelementptr inbounds i16* %16, i64 %indvars.iv
  %17 = load i16* %arrayidx36, align 2, !tbaa !5
  %conv37 = trunc i16 %17 to i8
  %18 = load %struct.t_atom** %atom, align 8, !tbaa !3
  %arrayidx42 = getelementptr inbounds %struct.t_atom* %18, i64 %indvars.iv, i32 8, i64 1
  store i8 %conv37, i8* %arrayidx42, align 1, !tbaa !1
  %19 = load i16** %cACC, align 8, !tbaa !3
  %arrayidx44 = getelementptr inbounds i16* %19, i64 %indvars.iv
  %20 = load i16* %arrayidx44, align 2, !tbaa !5
  %conv45 = trunc i16 %20 to i8
  %21 = load %struct.t_atom** %atom, align 8, !tbaa !3
  %arrayidx50 = getelementptr inbounds %struct.t_atom* %21, i64 %indvars.iv, i32 8, i64 2
  store i8 %conv45, i8* %arrayidx50, align 1, !tbaa !1
  %22 = load i16** %cFREEZE, align 8, !tbaa !3
  %arrayidx52 = getelementptr inbounds i16* %22, i64 %indvars.iv
  %23 = load i16* %arrayidx52, align 2, !tbaa !5
  %conv53 = trunc i16 %23 to i8
  %24 = load %struct.t_atom** %atom, align 8, !tbaa !3
  %arrayidx58 = getelementptr inbounds %struct.t_atom* %24, i64 %indvars.iv, i32 8, i64 3
  store i8 %conv53, i8* %arrayidx58, align 1, !tbaa !1
  %25 = load i16** %cVCM, align 8, !tbaa !3
  %arrayidx60 = getelementptr inbounds i16* %25, i64 %indvars.iv
  %26 = load i16* %arrayidx60, align 2, !tbaa !5
  %conv61 = trunc i16 %26 to i8
  %27 = load %struct.t_atom** %atom, align 8, !tbaa !3
  %arrayidx66 = getelementptr inbounds %struct.t_atom* %27, i64 %indvars.iv, i32 8, i64 6
  store i8 %conv61, i8* %arrayidx66, align 1, !tbaa !1
  %28 = load i16** %cXTC, align 8, !tbaa !3
  %arrayidx68 = getelementptr inbounds i16* %28, i64 %indvars.iv
  %29 = load i16* %arrayidx68, align 2, !tbaa !5
  %conv69 = trunc i16 %29 to i8
  %30 = load %struct.t_atom** %atom, align 8, !tbaa !3
  %arrayidx74 = getelementptr inbounds %struct.t_atom* %30, i64 %indvars.iv, i32 8, i64 7
  store i8 %conv69, i8* %arrayidx74, align 1, !tbaa !1
  %31 = load i16** %cORF, align 8, !tbaa !3
  %arrayidx76 = getelementptr inbounds i16* %31, i64 %indvars.iv
  %32 = load i16* %arrayidx76, align 2, !tbaa !5
  %conv77 = trunc i16 %32 to i8
  %33 = load %struct.t_atom** %atom, align 8, !tbaa !3
  %arrayidx82 = getelementptr inbounds %struct.t_atom* %33, i64 %indvars.iv, i32 8, i64 8
  store i8 %conv77, i8* %arrayidx82, align 1, !tbaa !1
  %34 = load i16** %cU1, align 8, !tbaa !3
  %arrayidx84 = getelementptr inbounds i16* %34, i64 %indvars.iv
  %35 = load i16* %arrayidx84, align 2, !tbaa !5
  %conv85 = trunc i16 %35 to i8
  %36 = load %struct.t_atom** %atom, align 8, !tbaa !3
  %arrayidx90 = getelementptr inbounds %struct.t_atom* %36, i64 %indvars.iv, i32 8, i64 4
  store i8 %conv85, i8* %arrayidx90, align 1, !tbaa !1
  %37 = load i16** %cU2, align 8, !tbaa !3
  %arrayidx92 = getelementptr inbounds i16* %37, i64 %indvars.iv
  %38 = load i16* %arrayidx92, align 2, !tbaa !5
  %conv93 = trunc i16 %38 to i8
  %39 = load %struct.t_atom** %atom, align 8, !tbaa !3
  %arrayidx98 = getelementptr inbounds %struct.t_atom* %39, i64 %indvars.iv, i32 8, i64 5
  store i8 %conv93, i8* %arrayidx98, align 1, !tbaa !1
  %indvars.iv.next = add i64 %indvars.iv, 1
  %40 = load i32* %nr, align 4, !tbaa !0
  %41 = trunc i64 %indvars.iv.next to i32
  %cmp = icmp slt i32 %41, %40
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  %.pre = load %struct.t_atom** %atom, align 8, !tbaa !3
  br label %for.body

for.end:                                          ; preds = %for.body, %entry
  %tobool = icmp eq i32 %bFree, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %for.end
  %massA = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 2
  %42 = load float** %massA, align 8, !tbaa !3
  %43 = bitcast float* %42 to i8*
  tail call void @save_free(i8* getelementptr inbounds ([10 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str1, i64 0, i64 0), i32 167, i8* %43) #4
  %massB = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 3
  %44 = load float** %massB, align 8, !tbaa !3
  %45 = bitcast float* %44 to i8*
  tail call void @save_free(i8* getelementptr inbounds ([10 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str1, i64 0, i64 0), i32 168, i8* %45) #4
  %massT99 = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 4
  %46 = load float** %massT99, align 8, !tbaa !3
  %47 = bitcast float* %46 to i8*
  tail call void @save_free(i8* getelementptr inbounds ([10 x i8]* @.str4, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str1, i64 0, i64 0), i32 169, i8* %47) #4
  %invmass = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 5
  %48 = load float** %invmass, align 8, !tbaa !3
  %49 = bitcast float* %48 to i8*
  tail call void @save_free(i8* getelementptr inbounds ([12 x i8]* @.str5, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str1, i64 0, i64 0), i32 170, i8* %49) #4
  %chargeA = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 6
  %50 = load float** %chargeA, align 8, !tbaa !3
  %51 = bitcast float* %50 to i8*
  tail call void @save_free(i8* getelementptr inbounds ([12 x i8]* @.str6, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str1, i64 0, i64 0), i32 171, i8* %51) #4
  %chargeB = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 7
  %52 = load float** %chargeB, align 8, !tbaa !3
  %53 = bitcast float* %52 to i8*
  tail call void @save_free(i8* getelementptr inbounds ([12 x i8]* @.str7, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str1, i64 0, i64 0), i32 172, i8* %53) #4
  %chargeT100 = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 8
  %54 = load float** %chargeT100, align 8, !tbaa !3
  %55 = bitcast float* %54 to i8*
  tail call void @save_free(i8* getelementptr inbounds ([12 x i8]* @.str8, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str1, i64 0, i64 0), i32 173, i8* %55) #4
  %resnr101 = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 10
  %56 = load i32** %resnr101, align 8, !tbaa !3
  %57 = bitcast i32* %56 to i8*
  tail call void @save_free(i8* getelementptr inbounds ([10 x i8]* @.str9, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str1, i64 0, i64 0), i32 174, i8* %57) #4
  %typeA102 = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 11
  %58 = load i32** %typeA102, align 8, !tbaa !3
  %59 = bitcast i32* %58 to i8*
  tail call void @save_free(i8* getelementptr inbounds ([10 x i8]* @.str10, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str1, i64 0, i64 0), i32 175, i8* %59) #4
  %typeB = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 12
  %60 = load i32** %typeB, align 8, !tbaa !3
  %61 = bitcast i32* %60 to i8*
  tail call void @save_free(i8* getelementptr inbounds ([10 x i8]* @.str11, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str1, i64 0, i64 0), i32 176, i8* %61) #4
  %ptype103 = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 13
  %62 = load i16** %ptype103, align 8, !tbaa !3
  %63 = bitcast i16* %62 to i8*
  tail call void @save_free(i8* getelementptr inbounds ([10 x i8]* @.str12, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str1, i64 0, i64 0), i32 177, i8* %63) #4
  %cTC104 = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 14
  %64 = load i16** %cTC104, align 8, !tbaa !3
  %65 = bitcast i16* %64 to i8*
  tail call void @save_free(i8* getelementptr inbounds ([8 x i8]* @.str13, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str1, i64 0, i64 0), i32 178, i8* %65) #4
  %cENER105 = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 15
  %66 = load i16** %cENER105, align 8, !tbaa !3
  %67 = bitcast i16* %66 to i8*
  tail call void @save_free(i8* getelementptr inbounds ([10 x i8]* @.str14, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str1, i64 0, i64 0), i32 179, i8* %67) #4
  %cACC106 = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 16
  %68 = load i16** %cACC106, align 8, !tbaa !3
  %69 = bitcast i16* %68 to i8*
  tail call void @save_free(i8* getelementptr inbounds ([9 x i8]* @.str15, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str1, i64 0, i64 0), i32 180, i8* %69) #4
  %cFREEZE107 = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 17
  %70 = load i16** %cFREEZE107, align 8, !tbaa !3
  %71 = bitcast i16* %70 to i8*
  tail call void @save_free(i8* getelementptr inbounds ([12 x i8]* @.str16, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str1, i64 0, i64 0), i32 181, i8* %71) #4
  %cVCM108 = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 19
  %72 = load i16** %cVCM108, align 8, !tbaa !3
  %73 = bitcast i16* %72 to i8*
  tail call void @save_free(i8* getelementptr inbounds ([9 x i8]* @.str18, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str1, i64 0, i64 0), i32 182, i8* %73) #4
  %cXTC109 = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 18
  %74 = load i16** %cXTC109, align 8, !tbaa !3
  %75 = bitcast i16* %74 to i8*
  tail call void @save_free(i8* getelementptr inbounds ([9 x i8]* @.str17, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str1, i64 0, i64 0), i32 183, i8* %75) #4
  %cORF110 = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 22
  %76 = load i16** %cORF110, align 8, !tbaa !3
  %77 = bitcast i16* %76 to i8*
  tail call void @save_free(i8* getelementptr inbounds ([9 x i8]* @.str19, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str1, i64 0, i64 0), i32 184, i8* %77) #4
  %cU1111 = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 20
  %78 = load i16** %cU1111, align 8, !tbaa !3
  %79 = bitcast i16* %78 to i8*
  tail call void @save_free(i8* getelementptr inbounds ([8 x i8]* @.str21, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str1, i64 0, i64 0), i32 186, i8* %79) #4
  %cU2112 = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 21
  %80 = load i16** %cU2112, align 8, !tbaa !3
  %81 = bitcast i16* %80 to i8*
  tail call void @save_free(i8* getelementptr inbounds ([8 x i8]* @.str22, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str1, i64 0, i64 0), i32 187, i8* %81) #4
  br label %if.end

if.end:                                           ; preds = %for.end, %if.then
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @init_mdatoms(%struct.t_mdatoms* nocapture %md, float %lambda, i32 %bFirst) #0 {
entry:
  %conv1 = fsub float 1.000000e+00, %lambda
  %tobool = icmp eq i32 %bFirst, 0
  br i1 %tobool, label %lor.lhs.false, label %if.end.thread

if.end.thread:                                    ; preds = %entry
  store float %lambda, float* @init_mdatoms.lambda0, align 4, !tbaa !4
  br label %for.cond.preheader

lor.lhs.false:                                    ; preds = %entry
  %0 = load float* @init_mdatoms.lambda0, align 4, !tbaa !4
  %sub3 = fsub float %0, %lambda
  %fabsf = tail call float @fabsf(float %sub3) #2
  %1 = fpext float %fabsf to double
  %cmp = fcmp ogt double %1, 1.200000e-38
  br i1 %cmp, label %for.cond.preheader, label %if.end45

for.cond.preheader:                               ; preds = %lor.lhs.false, %if.end.thread
  %.ph.in = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 1
  %.ph = load i32* %.ph.in, align 4
  %cmp776 = icmp sgt i32 %.ph, 0
  br i1 %cmp776, label %for.body.lr.ph, label %if.end45

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %bPerturbed = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 9
  %2 = load i32** %bPerturbed, align 8, !tbaa !3
  %massA = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 2
  %massB = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 3
  %massT = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 4
  %invmass = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 5
  %chargeA = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 6
  %chargeB = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 7
  %chargeT = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 8
  br label %for.body

for.body:                                         ; preds = %for.inc, %for.body.lr.ph
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.inc ]
  %arrayidx = getelementptr inbounds i32* %2, i64 %indvars.iv
  %3 = load i32* %arrayidx, align 4, !tbaa !0
  %4 = or i32 %3, %bFirst
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %for.inc, label %if.then12

if.then12:                                        ; preds = %for.body
  %6 = load float** %massA, align 8, !tbaa !3
  %arrayidx14 = getelementptr inbounds float* %6, i64 %indvars.iv
  %7 = load float* %arrayidx14, align 4, !tbaa !4
  %mul = fmul float %conv1, %7
  %8 = load float** %massB, align 8, !tbaa !3
  %arrayidx16 = getelementptr inbounds float* %8, i64 %indvars.iv
  %9 = load float* %arrayidx16, align 4, !tbaa !4
  %mul17 = fmul float %9, %lambda
  %add = fadd float %mul, %mul17
  %10 = load float** %massT, align 8, !tbaa !3
  %arrayidx19 = getelementptr inbounds float* %10, i64 %indvars.iv
  store float %add, float* %arrayidx19, align 4, !tbaa !4
  %11 = load float** %invmass, align 8, !tbaa !3
  %arrayidx21 = getelementptr inbounds float* %11, i64 %indvars.iv
  %12 = load float* %arrayidx21, align 4, !tbaa !4
  %conv22 = fpext float %12 to double
  %cmp23 = fcmp ogt double %conv22, 0x39B64F86CB9CEFB1
  br i1 %cmp23, label %if.then25, label %if.end34

if.then25:                                        ; preds = %if.then12
  %conv30 = fdiv float 1.000000e+00, %add
  store float %conv30, float* %arrayidx21, align 4, !tbaa !4
  br label %if.end34

if.end34:                                         ; preds = %if.then12, %if.then25
  %13 = load float** %chargeA, align 8, !tbaa !3
  %arrayidx36 = getelementptr inbounds float* %13, i64 %indvars.iv
  %14 = load float* %arrayidx36, align 4, !tbaa !4
  %mul37 = fmul float %conv1, %14
  %15 = load float** %chargeB, align 8, !tbaa !3
  %arrayidx39 = getelementptr inbounds float* %15, i64 %indvars.iv
  %16 = load float* %arrayidx39, align 4, !tbaa !4
  %mul40 = fmul float %16, %lambda
  %add41 = fadd float %mul37, %mul40
  %17 = load float** %chargeT, align 8, !tbaa !3
  %arrayidx43 = getelementptr inbounds float* %17, i64 %indvars.iv
  store float %add41, float* %arrayidx43, align 4, !tbaa !4
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.end34
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %.ph
  br i1 %exitcond, label %if.end45, label %for.body

if.end45:                                         ; preds = %for.cond.preheader, %for.inc, %lor.lhs.false
  store float %lambda, float* @init_mdatoms.lambda0, align 4, !tbaa !4
  ret void
}

declare float @fabsf(float)

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize }
attributes #5 = { nounwind optsize readnone }

!0 = metadata !{metadata !"int", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"any pointer", metadata !1}
!4 = metadata !{metadata !"float", metadata !1}
!5 = metadata !{metadata !"short", metadata !1}
