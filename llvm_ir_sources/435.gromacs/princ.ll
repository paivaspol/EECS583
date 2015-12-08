; ModuleID = '../../SPEC/benchspec/CPU2006/435.gromacs/src/princ.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.t_atom = type { float, float, float, float, i16, i16, i32, i32, [9 x i8], i8 }
%struct.t_atoms = type { i32, %struct.t_atom*, i8***, i8***, i8***, i32, i8***, i32, i8***, %struct.t_block, [9 x %struct.t_grps], %struct.t_pdbinfo* }
%struct.t_block = type { [256 x i32], i32, i32*, i32, i32* }
%struct.t_grps = type { i32, i32* }
%struct.t_pdbinfo = type { i32, i32, i8, [6 x i8], float, float, i32, [6 x i32] }

@.str = private unnamed_addr constant [6 x i8] c"inten\00", align 1
@.str1 = private unnamed_addr constant [53 x i8] c"../../SPEC/benchspec/CPU2006/435.gromacs/src/princ.c\00", align 1
@.str2 = private unnamed_addr constant [3 x i8] c"ev\00", align 1
@.str3 = private unnamed_addr constant [9 x i8] c"inten[i]\00", align 1
@.str4 = private unnamed_addr constant [6 x i8] c"ev[i]\00", align 1

; Function Attrs: nounwind optsize uwtable
define void @principal_comp(i32 %n, i32* nocapture %index, %struct.t_atom* nocapture %atom, [3 x float]* nocapture %x, [3 x float]* nocapture %trans, float* nocapture %d) #0 {
entry:
  %nrot = alloca i32, align 4
  %dd = alloca [4 x double], align 16
  %tvec = alloca [4 x double], align 16
  %call = call i8* @save_calloc(i8* getelementptr inbounds ([6 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 96, i32 4, i32 8) #4
  %0 = bitcast i8* %call to double**
  %call1 = call i8* @save_calloc(i8* getelementptr inbounds ([3 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 97, i32 4, i32 8) #4
  %1 = bitcast i8* %call1 to double**
  br label %for.body

for.body:                                         ; preds = %for.body, %entry
  %indvars.iv518 = phi i64 [ 0, %entry ], [ %indvars.iv.next519, %for.body ]
  %call2 = call i8* @save_calloc(i8* getelementptr inbounds ([9 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 99, i32 4, i32 8) #4
  %2 = bitcast i8* %call2 to double*
  %arrayidx = getelementptr inbounds double** %0, i64 %indvars.iv518
  store double* %2, double** %arrayidx, align 8, !tbaa !0
  %call3 = call i8* @save_calloc(i8* getelementptr inbounds ([6 x i8]* @.str4, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 100, i32 4, i32 8) #4
  %3 = bitcast i8* %call3 to double*
  %arrayidx5 = getelementptr inbounds double** %1, i64 %indvars.iv518
  store double* %3, double** %arrayidx5, align 8, !tbaa !0
  %arrayidx7 = getelementptr inbounds [4 x double]* %dd, i64 0, i64 %indvars.iv518
  store double 0.000000e+00, double* %arrayidx7, align 8, !tbaa !3
  %indvars.iv.next519 = add i64 %indvars.iv518, 1
  %lftr.wideiv520 = trunc i64 %indvars.iv.next519 to i32
  %exitcond521 = icmp eq i32 %lftr.wideiv520, 4
  br i1 %exitcond521, label %for.cond11.preheader, label %for.body

for.cond11.preheader:                             ; preds = %for.body, %for.cond11.preheader
  %indvars.iv514 = phi i64 [ %indvars.iv.next515, %for.cond11.preheader ], [ 0, %for.body ]
  %arrayidx16 = getelementptr inbounds double** %0, i64 %indvars.iv514
  %4 = load double** %arrayidx16, align 8, !tbaa !0
  %5 = bitcast double* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* %5, i8 0, i64 32, i32 8, i1 false)
  %indvars.iv.next515 = add i64 %indvars.iv514, 1
  %lftr.wideiv516 = trunc i64 %indvars.iv.next515 to i32
  %exitcond517 = icmp eq i32 %lftr.wideiv516, 4
  br i1 %exitcond517, label %for.cond24.preheader, label %for.cond11.preheader

for.cond24.preheader:                             ; preds = %for.cond11.preheader
  %cmp25449 = icmp sgt i32 %n, 0
  br i1 %cmp25449, label %for.body26.lr.ph, label %for.cond24.preheader.for.end81_crit_edge

for.cond24.preheader.for.end81_crit_edge:         ; preds = %for.cond24.preheader
  %arrayidx82.phi.trans.insert = getelementptr inbounds i8* %call, i64 8
  %.phi.trans.insert = bitcast i8* %arrayidx82.phi.trans.insert to double**
  %.pre524 = load double** %.phi.trans.insert, align 8, !tbaa !0
  %.pre525 = load double** %0, align 8, !tbaa !0
  %arrayidx86.phi.trans.insert = getelementptr inbounds i8* %call, i64 16
  %.phi.trans.insert526 = bitcast i8* %arrayidx86.phi.trans.insert to double**
  %.pre527 = load double** %.phi.trans.insert526, align 8, !tbaa !0
  br label %for.end81

for.body26.lr.ph:                                 ; preds = %for.cond24.preheader
  %6 = load double** %0, align 8, !tbaa !0
  %arrayidx51 = getelementptr inbounds i8* %call, i64 8
  %7 = bitcast i8* %arrayidx51 to double**
  %8 = load double** %7, align 8, !tbaa !0
  %arrayidx52 = getelementptr inbounds double* %8, i64 1
  %arrayidx59 = getelementptr inbounds i8* %call, i64 16
  %9 = bitcast i8* %arrayidx59 to double**
  %10 = load double** %9, align 8, !tbaa !0
  %arrayidx60 = getelementptr inbounds double* %10, i64 2
  %arrayidx77 = getelementptr inbounds double* %10, i64 1
  br label %for.body26

for.body26:                                       ; preds = %for.body26, %for.body26.lr.ph
  %indvars.iv506 = phi i64 [ 0, %for.body26.lr.ph ], [ %indvars.iv.next507, %for.body26 ]
  %arrayidx28 = getelementptr inbounds i32* %index, i64 %indvars.iv506
  %11 = load i32* %arrayidx28, align 4, !tbaa !4
  %idxprom29 = sext i32 %11 to i64
  %m31 = getelementptr inbounds %struct.t_atom* %atom, i64 %idxprom29, i32 0
  %12 = load float* %m31, align 4, !tbaa !5
  %arrayidx34 = getelementptr inbounds [3 x float]* %x, i64 %idxprom29, i64 0
  %13 = load float* %arrayidx34, align 4, !tbaa !5
  %arrayidx37 = getelementptr inbounds [3 x float]* %x, i64 %idxprom29, i64 1
  %14 = load float* %arrayidx37, align 4, !tbaa !5
  %arrayidx40 = getelementptr inbounds [3 x float]* %x, i64 %idxprom29, i64 2
  %15 = load float* %arrayidx40, align 4, !tbaa !5
  %mul.i = fmul float %14, %14
  %mul.i434 = fmul float %15, %15
  %add = fadd float %mul.i, %mul.i434
  %mul = fmul float %12, %add
  %conv = fpext float %mul to double
  %16 = load double* %6, align 8, !tbaa !3
  %add45 = fadd double %16, %conv
  store double %add45, double* %6, align 8, !tbaa !3
  %mul.i433 = fmul float %13, %13
  %add48 = fadd float %mul.i433, %mul.i434
  %mul49 = fmul float %12, %add48
  %conv50 = fpext float %mul49 to double
  %17 = load double* %arrayidx52, align 8, !tbaa !3
  %add53 = fadd double %17, %conv50
  store double %add53, double* %arrayidx52, align 8, !tbaa !3
  %add56 = fadd float %mul.i433, %mul.i
  %mul57 = fmul float %12, %add56
  %conv58 = fpext float %mul57 to double
  %18 = load double* %arrayidx60, align 8, !tbaa !3
  %add61 = fadd double %conv58, %18
  store double %add61, double* %arrayidx60, align 8, !tbaa !3
  %mul62 = fmul float %13, %14
  %mul63 = fmul float %12, %mul62
  %conv64 = fpext float %mul63 to double
  %19 = load double* %8, align 8, !tbaa !3
  %sub = fsub double %19, %conv64
  store double %sub, double* %8, align 8, !tbaa !3
  %mul67 = fmul float %13, %15
  %mul68 = fmul float %12, %mul67
  %conv69 = fpext float %mul68 to double
  %20 = load double* %10, align 8, !tbaa !3
  %sub72 = fsub double %20, %conv69
  store double %sub72, double* %10, align 8, !tbaa !3
  %mul73 = fmul float %14, %15
  %mul74 = fmul float %12, %mul73
  %conv75 = fpext float %mul74 to double
  %21 = load double* %arrayidx77, align 8, !tbaa !3
  %sub78 = fsub double %21, %conv75
  store double %sub78, double* %arrayidx77, align 8, !tbaa !3
  %indvars.iv.next507 = add i64 %indvars.iv506, 1
  %lftr.wideiv508 = trunc i64 %indvars.iv.next507 to i32
  %exitcond509 = icmp eq i32 %lftr.wideiv508, %n
  br i1 %exitcond509, label %for.end81, label %for.body26

for.end81:                                        ; preds = %for.body26, %for.cond24.preheader.for.end81_crit_edge
  %22 = phi double* [ %.pre527, %for.cond24.preheader.for.end81_crit_edge ], [ %10, %for.body26 ]
  %23 = phi double* [ %.pre525, %for.cond24.preheader.for.end81_crit_edge ], [ %6, %for.body26 ]
  %24 = phi double* [ %.pre524, %for.cond24.preheader.for.end81_crit_edge ], [ %8, %for.body26 ]
  %25 = load double* %24, align 8, !tbaa !3
  %arrayidx85 = getelementptr inbounds double* %23, i64 1
  store double %25, double* %arrayidx85, align 8, !tbaa !3
  %26 = load double* %22, align 8, !tbaa !3
  %arrayidx89 = getelementptr inbounds double* %23, i64 2
  store double %26, double* %arrayidx89, align 8, !tbaa !3
  %arrayidx91 = getelementptr inbounds double* %22, i64 1
  %27 = load double* %arrayidx91, align 8, !tbaa !3
  %arrayidx93 = getelementptr inbounds double* %24, i64 2
  store double %27, double* %arrayidx93, align 8, !tbaa !3
  br label %for.cond98.preheader

for.cond98.preheader:                             ; preds = %for.inc114.for.cond98.preheader_crit_edge, %for.end81
  %28 = phi double* [ %23, %for.end81 ], [ %.pre528, %for.inc114.for.cond98.preheader_crit_edge ]
  %indvars.iv502 = phi i64 [ 0, %for.end81 ], [ %indvars.iv.next503, %for.inc114.for.cond98.preheader_crit_edge ]
  br label %for.body101

for.body101:                                      ; preds = %for.body101, %for.cond98.preheader
  %indvars.iv498 = phi i64 [ 0, %for.cond98.preheader ], [ %indvars.iv.next499, %for.body101 ]
  %arrayidx105 = getelementptr inbounds double* %28, i64 %indvars.iv498
  %29 = load double* %arrayidx105, align 8, !tbaa !3
  %conv106 = fptrunc double %29 to float
  %arrayidx110 = getelementptr inbounds [3 x float]* %trans, i64 %indvars.iv502, i64 %indvars.iv498
  store float %conv106, float* %arrayidx110, align 4, !tbaa !5
  %indvars.iv.next499 = add i64 %indvars.iv498, 1
  %lftr.wideiv500 = trunc i64 %indvars.iv.next499 to i32
  %exitcond501 = icmp eq i32 %lftr.wideiv500, 3
  br i1 %exitcond501, label %for.inc114, label %for.body101

for.inc114:                                       ; preds = %for.body101
  %indvars.iv.next503 = add i64 %indvars.iv502, 1
  %lftr.wideiv504 = trunc i64 %indvars.iv.next503 to i32
  %exitcond505 = icmp eq i32 %lftr.wideiv504, 3
  br i1 %exitcond505, label %for.end116, label %for.inc114.for.cond98.preheader_crit_edge

for.inc114.for.cond98.preheader_crit_edge:        ; preds = %for.inc114
  %arrayidx104.phi.trans.insert = getelementptr inbounds double** %0, i64 %indvars.iv.next503
  %.pre528 = load double** %arrayidx104.phi.trans.insert, align 8, !tbaa !0
  br label %for.cond98.preheader

for.end116:                                       ; preds = %for.inc114
  %arraydecay = getelementptr inbounds [4 x double]* %dd, i64 0, i64 0
  call void @jacobi(double** %0, i32 3, double* %arraydecay, double** %1, i32* %nrot) #4
  %arrayidx117 = getelementptr inbounds [4 x double]* %dd, i64 0, i64 1
  %30 = load double* %arrayidx117, align 8, !tbaa !3
  %call118 = call double @fabs(double %30) #5
  %31 = load double* %arraydecay, align 16, !tbaa !3
  %call120 = call double @fabs(double %31) #5
  %cmp121 = fcmp ogt double %call118, %call120
  br i1 %cmp121, label %for.body128, label %if.end

for.body128:                                      ; preds = %for.end116, %for.body128
  %indvars.iv494 = phi i64 [ %indvars.iv.next495, %for.body128 ], [ 0, %for.end116 ]
  %arrayidx130 = getelementptr inbounds double** %1, i64 %indvars.iv494
  %32 = load double** %arrayidx130, align 8, !tbaa !0
  %33 = load double* %32, align 8, !tbaa !3
  %arrayidx133 = getelementptr inbounds [4 x double]* %tvec, i64 0, i64 %indvars.iv494
  store double %33, double* %arrayidx133, align 8, !tbaa !3
  %indvars.iv.next495 = add i64 %indvars.iv494, 1
  %lftr.wideiv496 = trunc i64 %indvars.iv.next495 to i32
  %exitcond497 = icmp eq i32 %lftr.wideiv496, 4
  br i1 %exitcond497, label %for.end136, label %for.body128

for.end136:                                       ; preds = %for.body128
  %conv124 = fptrunc double %31 to float
  store double %30, double* %arraydecay, align 16, !tbaa !3
  br label %for.body142

for.body142:                                      ; preds = %for.body142, %for.end136
  %indvars.iv490 = phi i64 [ 0, %for.end136 ], [ %indvars.iv.next491, %for.body142 ]
  %arrayidx144 = getelementptr inbounds double** %1, i64 %indvars.iv490
  %34 = load double** %arrayidx144, align 8, !tbaa !0
  %arrayidx145 = getelementptr inbounds double* %34, i64 1
  %35 = load double* %arrayidx145, align 8, !tbaa !3
  store double %35, double* %34, align 8, !tbaa !3
  %indvars.iv.next491 = add i64 %indvars.iv490, 1
  %lftr.wideiv492 = trunc i64 %indvars.iv.next491 to i32
  %exitcond493 = icmp eq i32 %lftr.wideiv492, 4
  br i1 %exitcond493, label %for.end151, label %for.body142

for.end151:                                       ; preds = %for.body142
  %conv152 = fpext float %conv124 to double
  store double %conv152, double* %arrayidx117, align 8, !tbaa !3
  br label %for.body157

for.body157:                                      ; preds = %for.body157, %for.end151
  %indvars.iv486 = phi i64 [ 0, %for.end151 ], [ %indvars.iv.next487, %for.body157 ]
  %arrayidx159 = getelementptr inbounds [4 x double]* %tvec, i64 0, i64 %indvars.iv486
  %36 = load double* %arrayidx159, align 8, !tbaa !3
  %arrayidx161 = getelementptr inbounds double** %1, i64 %indvars.iv486
  %37 = load double** %arrayidx161, align 8, !tbaa !0
  %arrayidx162 = getelementptr inbounds double* %37, i64 1
  store double %36, double* %arrayidx162, align 8, !tbaa !3
  %indvars.iv.next487 = add i64 %indvars.iv486, 1
  %lftr.wideiv488 = trunc i64 %indvars.iv.next487 to i32
  %exitcond489 = icmp eq i32 %lftr.wideiv488, 4
  br i1 %exitcond489, label %if.end.loopexit, label %for.body157

if.end.loopexit:                                  ; preds = %for.body157
  %.pre = load double* %arrayidx117, align 8, !tbaa !3
  br label %if.end

if.end:                                           ; preds = %if.end.loopexit, %for.end116
  %38 = phi double [ %.pre, %if.end.loopexit ], [ %30, %for.end116 ]
  %arrayidx166 = getelementptr inbounds [4 x double]* %dd, i64 0, i64 2
  %39 = load double* %arrayidx166, align 16, !tbaa !3
  %call167 = call double @fabs(double %39) #5
  %call169 = call double @fabs(double %38) #5
  %cmp170 = fcmp ogt double %call167, %call169
  br i1 %cmp170, label %for.body178, label %if.end216

for.body178:                                      ; preds = %if.end, %for.body178
  %indvars.iv482 = phi i64 [ %indvars.iv.next483, %for.body178 ], [ 0, %if.end ]
  %arrayidx180 = getelementptr inbounds double** %1, i64 %indvars.iv482
  %40 = load double** %arrayidx180, align 8, !tbaa !0
  %arrayidx181 = getelementptr inbounds double* %40, i64 1
  %41 = load double* %arrayidx181, align 8, !tbaa !3
  %arrayidx183 = getelementptr inbounds [4 x double]* %tvec, i64 0, i64 %indvars.iv482
  store double %41, double* %arrayidx183, align 8, !tbaa !3
  %indvars.iv.next483 = add i64 %indvars.iv482, 1
  %lftr.wideiv484 = trunc i64 %indvars.iv.next483 to i32
  %exitcond485 = icmp eq i32 %lftr.wideiv484, 4
  br i1 %exitcond485, label %for.end186, label %for.body178

for.end186:                                       ; preds = %for.body178
  %conv174 = fptrunc double %38 to float
  store double %39, double* %arrayidx117, align 8, !tbaa !3
  br label %for.body192

for.body192:                                      ; preds = %for.body192, %for.end186
  %indvars.iv478 = phi i64 [ 0, %for.end186 ], [ %indvars.iv.next479, %for.body192 ]
  %arrayidx194 = getelementptr inbounds double** %1, i64 %indvars.iv478
  %42 = load double** %arrayidx194, align 8, !tbaa !0
  %arrayidx195 = getelementptr inbounds double* %42, i64 2
  %43 = load double* %arrayidx195, align 8, !tbaa !3
  %arrayidx198 = getelementptr inbounds double* %42, i64 1
  store double %43, double* %arrayidx198, align 8, !tbaa !3
  %indvars.iv.next479 = add i64 %indvars.iv478, 1
  %lftr.wideiv480 = trunc i64 %indvars.iv.next479 to i32
  %exitcond481 = icmp eq i32 %lftr.wideiv480, 4
  br i1 %exitcond481, label %for.end201, label %for.body192

for.end201:                                       ; preds = %for.body192
  %conv202 = fpext float %conv174 to double
  store double %conv202, double* %arrayidx166, align 16, !tbaa !3
  br label %for.body207

for.body207:                                      ; preds = %for.body207, %for.end201
  %indvars.iv474 = phi i64 [ 0, %for.end201 ], [ %indvars.iv.next475, %for.body207 ]
  %arrayidx209 = getelementptr inbounds [4 x double]* %tvec, i64 0, i64 %indvars.iv474
  %44 = load double* %arrayidx209, align 8, !tbaa !3
  %arrayidx211 = getelementptr inbounds double** %1, i64 %indvars.iv474
  %45 = load double** %arrayidx211, align 8, !tbaa !0
  %arrayidx212 = getelementptr inbounds double* %45, i64 2
  store double %44, double* %arrayidx212, align 8, !tbaa !3
  %indvars.iv.next475 = add i64 %indvars.iv474, 1
  %lftr.wideiv476 = trunc i64 %indvars.iv.next475 to i32
  %exitcond477 = icmp eq i32 %lftr.wideiv476, 4
  br i1 %exitcond477, label %if.end216.loopexit, label %for.body207

if.end216.loopexit:                               ; preds = %for.body207
  %.pre523 = load double* %arrayidx117, align 8, !tbaa !3
  br label %if.end216

if.end216:                                        ; preds = %if.end, %if.end216.loopexit
  %46 = phi double [ %.pre523, %if.end216.loopexit ], [ %38, %if.end ]
  %call218 = call double @fabs(double %46) #5
  %47 = load double* %arraydecay, align 16, !tbaa !3
  %call220 = call double @fabs(double %47) #5
  %cmp221 = fcmp ogt double %call218, %call220
  br i1 %cmp221, label %for.body229, label %for.body271

for.body229:                                      ; preds = %if.end216, %for.body229
  %indvars.iv470 = phi i64 [ %indvars.iv.next471, %for.body229 ], [ 0, %if.end216 ]
  %arrayidx231 = getelementptr inbounds double** %1, i64 %indvars.iv470
  %48 = load double** %arrayidx231, align 8, !tbaa !0
  %49 = load double* %48, align 8, !tbaa !3
  %arrayidx234 = getelementptr inbounds [4 x double]* %tvec, i64 0, i64 %indvars.iv470
  store double %49, double* %arrayidx234, align 8, !tbaa !3
  %indvars.iv.next471 = add i64 %indvars.iv470, 1
  %lftr.wideiv472 = trunc i64 %indvars.iv.next471 to i32
  %exitcond473 = icmp eq i32 %lftr.wideiv472, 4
  br i1 %exitcond473, label %for.end237, label %for.body229

for.end237:                                       ; preds = %for.body229
  %conv225 = fptrunc double %47 to float
  store double %46, double* %arraydecay, align 16, !tbaa !3
  br label %for.body243

for.body243:                                      ; preds = %for.body243, %for.end237
  %indvars.iv466 = phi i64 [ 0, %for.end237 ], [ %indvars.iv.next467, %for.body243 ]
  %arrayidx245 = getelementptr inbounds double** %1, i64 %indvars.iv466
  %50 = load double** %arrayidx245, align 8, !tbaa !0
  %arrayidx246 = getelementptr inbounds double* %50, i64 1
  %51 = load double* %arrayidx246, align 8, !tbaa !3
  store double %51, double* %50, align 8, !tbaa !3
  %indvars.iv.next467 = add i64 %indvars.iv466, 1
  %lftr.wideiv468 = trunc i64 %indvars.iv.next467 to i32
  %exitcond469 = icmp eq i32 %lftr.wideiv468, 4
  br i1 %exitcond469, label %for.end252, label %for.body243

for.end252:                                       ; preds = %for.body243
  %conv253 = fpext float %conv225 to double
  store double %conv253, double* %arrayidx117, align 8, !tbaa !3
  br label %for.body258

for.body258:                                      ; preds = %for.body258, %for.end252
  %indvars.iv462 = phi i64 [ 0, %for.end252 ], [ %indvars.iv.next463, %for.body258 ]
  %arrayidx260 = getelementptr inbounds [4 x double]* %tvec, i64 0, i64 %indvars.iv462
  %52 = load double* %arrayidx260, align 8, !tbaa !3
  %arrayidx262 = getelementptr inbounds double** %1, i64 %indvars.iv462
  %53 = load double** %arrayidx262, align 8, !tbaa !0
  %arrayidx263 = getelementptr inbounds double* %53, i64 1
  store double %52, double* %arrayidx263, align 8, !tbaa !3
  %indvars.iv.next463 = add i64 %indvars.iv462, 1
  %lftr.wideiv464 = trunc i64 %indvars.iv.next463 to i32
  %exitcond465 = icmp eq i32 %lftr.wideiv464, 4
  br i1 %exitcond465, label %for.body271, label %for.body258

for.body271:                                      ; preds = %for.inc293, %if.end216, %for.body258
  %indvars.iv458 = phi i64 [ 0, %for.body258 ], [ 0, %if.end216 ], [ %indvars.iv.next459, %for.inc293 ]
  %arrayidx273 = getelementptr inbounds [4 x double]* %dd, i64 0, i64 %indvars.iv458
  %54 = load double* %arrayidx273, align 8, !tbaa !3
  %conv274 = fptrunc double %54 to float
  %arrayidx276 = getelementptr inbounds float* %d, i64 %indvars.iv458
  store float %conv274, float* %arrayidx276, align 4, !tbaa !5
  br label %for.body280

for.body280:                                      ; preds = %for.body280, %for.body271
  %indvars.iv454 = phi i64 [ 0, %for.body271 ], [ %indvars.iv.next455, %for.body280 ]
  %arrayidx283 = getelementptr inbounds double** %1, i64 %indvars.iv454
  %55 = load double** %arrayidx283, align 8, !tbaa !0
  %arrayidx284 = getelementptr inbounds double* %55, i64 %indvars.iv458
  %56 = load double* %arrayidx284, align 8, !tbaa !3
  %conv285 = fptrunc double %56 to float
  %arrayidx289 = getelementptr inbounds [3 x float]* %trans, i64 %indvars.iv458, i64 %indvars.iv454
  store float %conv285, float* %arrayidx289, align 4, !tbaa !5
  %indvars.iv.next455 = add i64 %indvars.iv454, 1
  %lftr.wideiv456 = trunc i64 %indvars.iv.next455 to i32
  %exitcond457 = icmp eq i32 %lftr.wideiv456, 3
  br i1 %exitcond457, label %for.inc293, label %for.body280

for.inc293:                                       ; preds = %for.body280
  %indvars.iv.next459 = add i64 %indvars.iv458, 1
  %lftr.wideiv460 = trunc i64 %indvars.iv.next459 to i32
  %exitcond461 = icmp eq i32 %lftr.wideiv460, 3
  br i1 %exitcond461, label %for.body299, label %for.body271

for.body299:                                      ; preds = %for.inc293, %for.body299
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body299 ], [ 0, %for.inc293 ]
  %arrayidx301 = getelementptr inbounds double** %0, i64 %indvars.iv
  %57 = load double** %arrayidx301, align 8, !tbaa !0
  %58 = bitcast double* %57 to i8*
  call void @save_free(i8* getelementptr inbounds ([9 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 166, i8* %58) #4
  %arrayidx303 = getelementptr inbounds double** %1, i64 %indvars.iv
  %59 = load double** %arrayidx303, align 8, !tbaa !0
  %60 = bitcast double* %59 to i8*
  call void @save_free(i8* getelementptr inbounds ([6 x i8]* @.str4, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 167, i8* %60) #4
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 4
  br i1 %exitcond, label %for.end306, label %for.body299

for.end306:                                       ; preds = %for.body299
  call void @save_free(i8* getelementptr inbounds ([6 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 169, i8* %call) #4
  call void @save_free(i8* getelementptr inbounds ([3 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 170, i8* %call1) #4
  ret void
}

; Function Attrs: optsize
declare i8* @save_calloc(i8*, i8*, i32, i32, i32) #1

; Function Attrs: optsize
declare void @jacobi(double**, i32, double*, double**, i32*) #1

; Function Attrs: nounwind optsize readnone
declare double @fabs(double) #2

; Function Attrs: optsize
declare void @save_free(i8*, i8*, i32, i8*) #1

; Function Attrs: nounwind optsize uwtable
define void @rotate_atoms(i32 %gnx, i32* %index, [3 x float]* nocapture %x, [3 x float]* nocapture %trans) #0 {
entry:
  %cmp77 = icmp sgt i32 %gnx, 0
  br i1 %cmp77, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %tobool = icmp eq i32* %index, null
  %arrayidx11 = getelementptr inbounds [3 x float]* %trans, i64 0, i64 0
  %arrayidx13 = getelementptr inbounds [3 x float]* %trans, i64 0, i64 1
  %arrayidx16 = getelementptr inbounds [3 x float]* %trans, i64 0, i64 2
  %arrayidx23 = getelementptr inbounds [3 x float]* %trans, i64 1, i64 0
  %arrayidx26 = getelementptr inbounds [3 x float]* %trans, i64 1, i64 1
  %arrayidx30 = getelementptr inbounds [3 x float]* %trans, i64 1, i64 2
  %arrayidx37 = getelementptr inbounds [3 x float]* %trans, i64 2, i64 0
  %arrayidx40 = getelementptr inbounds [3 x float]* %trans, i64 2, i64 1
  %arrayidx44 = getelementptr inbounds [3 x float]* %trans, i64 2, i64 2
  br label %for.body

for.body:                                         ; preds = %cond.end, %for.body.lr.ph
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %cond.end ]
  %0 = trunc i64 %indvars.iv to i32
  br i1 %tobool, label %cond.end, label %cond.true

cond.true:                                        ; preds = %for.body
  %arrayidx = getelementptr inbounds i32* %index, i64 %indvars.iv
  %1 = load i32* %arrayidx, align 4, !tbaa !4
  br label %cond.end

cond.end:                                         ; preds = %for.body, %cond.true
  %cond = phi i32 [ %1, %cond.true ], [ %0, %for.body ]
  %idxprom1 = sext i32 %cond to i64
  %arrayidx3 = getelementptr inbounds [3 x float]* %x, i64 %idxprom1, i64 0
  %2 = load float* %arrayidx3, align 4, !tbaa !5
  %arrayidx6 = getelementptr inbounds [3 x float]* %x, i64 %idxprom1, i64 1
  %3 = load float* %arrayidx6, align 4, !tbaa !5
  %arrayidx9 = getelementptr inbounds [3 x float]* %x, i64 %idxprom1, i64 2
  %4 = load float* %arrayidx9, align 4, !tbaa !5
  %5 = load float* %arrayidx11, align 4, !tbaa !5
  %mul = fmul float %2, %5
  %6 = load float* %arrayidx13, align 4, !tbaa !5
  %mul14 = fmul float %3, %6
  %add = fadd float %mul, %mul14
  %7 = load float* %arrayidx16, align 4, !tbaa !5
  %mul17 = fmul float %4, %7
  %add18 = fadd float %add, %mul17
  store float %add18, float* %arrayidx3, align 4, !tbaa !5
  %8 = load float* %arrayidx23, align 4, !tbaa !5
  %mul24 = fmul float %2, %8
  %9 = load float* %arrayidx26, align 4, !tbaa !5
  %mul27 = fmul float %3, %9
  %add28 = fadd float %mul24, %mul27
  %10 = load float* %arrayidx30, align 4, !tbaa !5
  %mul31 = fmul float %4, %10
  %add32 = fadd float %add28, %mul31
  store float %add32, float* %arrayidx6, align 4, !tbaa !5
  %11 = load float* %arrayidx37, align 4, !tbaa !5
  %mul38 = fmul float %2, %11
  %12 = load float* %arrayidx40, align 4, !tbaa !5
  %mul41 = fmul float %3, %12
  %add42 = fadd float %mul38, %mul41
  %13 = load float* %arrayidx44, align 4, !tbaa !5
  %mul45 = fmul float %4, %13
  %add46 = fadd float %add42, %mul45
  store float %add46, float* %arrayidx9, align 4, !tbaa !5
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %gnx
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %cond.end, %entry
  ret void
}

; Function Attrs: nounwind optsize uwtable
define float @calc_xcm([3 x float]* nocapture %x, i32 %gnx, i32* %index, %struct.t_atom* %atom, float* nocapture %xcm, i32 %bQ) #0 {
entry:
  store float 0.000000e+00, float* %xcm, align 4, !tbaa !5
  %arrayidx1.i = getelementptr inbounds float* %xcm, i64 1
  store float 0.000000e+00, float* %arrayidx1.i, align 4, !tbaa !5
  %arrayidx2.i = getelementptr inbounds float* %xcm, i64 2
  store float 0.000000e+00, float* %arrayidx2.i, align 4, !tbaa !5
  %cmp52 = icmp sgt i32 %gnx, 0
  br i1 %cmp52, label %for.body.lr.ph, label %for.cond26.preheader

for.body.lr.ph:                                   ; preds = %entry
  %tobool = icmp eq i32* %index, null
  %tobool1 = icmp eq %struct.t_atom* %atom, null
  %tobool2 = icmp eq i32 %bQ, 0
  br label %for.body

for.cond26.preheader:                             ; preds = %for.inc23, %entry
  %tm.0.lcssa = phi float [ 0.000000e+00, %entry ], [ %add, %for.inc23 ]
  br label %for.body29

for.body:                                         ; preds = %for.inc23, %for.body.lr.ph
  %indvars.iv59 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next60, %for.inc23 ]
  %tm.054 = phi float [ 0.000000e+00, %for.body.lr.ph ], [ %add, %for.inc23 ]
  %0 = trunc i64 %indvars.iv59 to i32
  br i1 %tobool, label %cond.end, label %cond.true

cond.true:                                        ; preds = %for.body
  %arrayidx = getelementptr inbounds i32* %index, i64 %indvars.iv59
  %1 = load i32* %arrayidx, align 4, !tbaa !4
  br label %cond.end

cond.end:                                         ; preds = %for.body, %cond.true
  %cond = phi i32 [ %1, %cond.true ], [ %0, %for.body ]
  %idxprom17.pre = sext i32 %cond to i64
  br i1 %tobool1, label %if.end11, label %if.then

if.then:                                          ; preds = %cond.end
  br i1 %tobool2, label %if.else, label %if.then3

if.then3:                                         ; preds = %if.then
  %q = getelementptr inbounds %struct.t_atom* %atom, i64 %idxprom17.pre, i32 1
  %2 = load float* %q, align 4, !tbaa !5
  %fabsf = tail call float @fabsf(float %2) #2
  br label %if.end11

if.else:                                          ; preds = %if.then
  %m9 = getelementptr inbounds %struct.t_atom* %atom, i64 %idxprom17.pre, i32 0
  %3 = load float* %m9, align 4, !tbaa !5
  br label %if.end11

if.end11:                                         ; preds = %cond.end, %if.then3, %if.else
  %m0.0 = phi float [ %fabsf, %if.then3 ], [ %3, %if.else ], [ 1.000000e+00, %cond.end ]
  br label %for.body15

for.body15:                                       ; preds = %for.body15, %if.end11
  %indvars.iv55 = phi i64 [ 0, %if.end11 ], [ %indvars.iv.next56, %for.body15 ]
  %arrayidx19 = getelementptr inbounds [3 x float]* %x, i64 %idxprom17.pre, i64 %indvars.iv55
  %4 = load float* %arrayidx19, align 4, !tbaa !5
  %mul = fmul float %m0.0, %4
  %arrayidx21 = getelementptr inbounds float* %xcm, i64 %indvars.iv55
  %5 = load float* %arrayidx21, align 4, !tbaa !5
  %add22 = fadd float %5, %mul
  store float %add22, float* %arrayidx21, align 4, !tbaa !5
  %indvars.iv.next56 = add i64 %indvars.iv55, 1
  %lftr.wideiv57 = trunc i64 %indvars.iv.next56 to i32
  %exitcond58 = icmp eq i32 %lftr.wideiv57, 3
  br i1 %exitcond58, label %for.inc23, label %for.body15

for.inc23:                                        ; preds = %for.body15
  %add = fadd float %tm.054, %m0.0
  %indvars.iv.next60 = add i64 %indvars.iv59, 1
  %lftr.wideiv61 = trunc i64 %indvars.iv.next60 to i32
  %exitcond62 = icmp eq i32 %lftr.wideiv61, %gnx
  br i1 %exitcond62, label %for.cond26.preheader, label %for.body

for.body29:                                       ; preds = %for.body29, %for.cond26.preheader
  %indvars.iv = phi i64 [ 0, %for.cond26.preheader ], [ %indvars.iv.next, %for.body29 ]
  %arrayidx31 = getelementptr inbounds float* %xcm, i64 %indvars.iv
  %6 = load float* %arrayidx31, align 4, !tbaa !5
  %div = fdiv float %6, %tm.0.lcssa
  store float %div, float* %arrayidx31, align 4, !tbaa !5
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 3
  br i1 %exitcond, label %for.end34, label %for.body29

for.end34:                                        ; preds = %for.body29
  ret float %tm.0.lcssa
}

; Function Attrs: nounwind optsize uwtable
define float @sub_xcm([3 x float]* nocapture %x, i32 %gnx, i32* %index, %struct.t_atom* %atom, float* nocapture %xcm, i32 %bQ) #0 {
entry:
  %call = tail call float @calc_xcm([3 x float]* %x, i32 %gnx, i32* %index, %struct.t_atom* %atom, float* %xcm, i32 %bQ) #6
  %cmp10 = icmp sgt i32 %gnx, 0
  br i1 %cmp10, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %tobool = icmp eq i32* %index, null
  %arrayidx3.i = getelementptr inbounds float* %xcm, i64 1
  %arrayidx6.i = getelementptr inbounds float* %xcm, i64 2
  br label %for.body

for.body:                                         ; preds = %cond.end, %for.body.lr.ph
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %cond.end ]
  %0 = trunc i64 %indvars.iv to i32
  br i1 %tobool, label %cond.end, label %cond.true

cond.true:                                        ; preds = %for.body
  %arrayidx = getelementptr inbounds i32* %index, i64 %indvars.iv
  %1 = load i32* %arrayidx, align 4, !tbaa !4
  br label %cond.end

cond.end:                                         ; preds = %for.body, %cond.true
  %cond = phi i32 [ %1, %cond.true ], [ %0, %for.body ]
  %idxprom1 = sext i32 %cond to i64
  %arraydecay = getelementptr inbounds [3 x float]* %x, i64 %idxprom1, i64 0
  %2 = load float* %arraydecay, align 4, !tbaa !5
  %3 = load float* %xcm, align 4, !tbaa !5
  %sub.i = fsub float %2, %3
  %arrayidx2.i = getelementptr inbounds [3 x float]* %x, i64 %idxprom1, i64 1
  %4 = load float* %arrayidx2.i, align 4, !tbaa !5
  %5 = load float* %arrayidx3.i, align 4, !tbaa !5
  %sub4.i = fsub float %4, %5
  %arrayidx5.i = getelementptr inbounds [3 x float]* %x, i64 %idxprom1, i64 2
  %6 = load float* %arrayidx5.i, align 4, !tbaa !5
  %7 = load float* %arrayidx6.i, align 4, !tbaa !5
  %sub7.i = fsub float %6, %7
  store float %sub.i, float* %arraydecay, align 4, !tbaa !5
  store float %sub4.i, float* %arrayidx2.i, align 4, !tbaa !5
  store float %sub7.i, float* %arrayidx5.i, align 4, !tbaa !5
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %gnx
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %cond.end, %entry
  ret float %call
}

; Function Attrs: nounwind optsize uwtable
define void @add_xcm([3 x float]* nocapture %x, i32 %gnx, i32* %index, float* nocapture %xcm) #0 {
entry:
  %cmp6 = icmp sgt i32 %gnx, 0
  br i1 %cmp6, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %tobool = icmp eq i32* %index, null
  %arrayidx3.i = getelementptr inbounds float* %xcm, i64 1
  %arrayidx6.i = getelementptr inbounds float* %xcm, i64 2
  br label %for.body

for.body:                                         ; preds = %cond.end, %for.body.lr.ph
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %cond.end ]
  %0 = trunc i64 %indvars.iv to i32
  br i1 %tobool, label %cond.end, label %cond.true

cond.true:                                        ; preds = %for.body
  %arrayidx = getelementptr inbounds i32* %index, i64 %indvars.iv
  %1 = load i32* %arrayidx, align 4, !tbaa !4
  br label %cond.end

cond.end:                                         ; preds = %for.body, %cond.true
  %cond = phi i32 [ %1, %cond.true ], [ %0, %for.body ]
  %idxprom1 = sext i32 %cond to i64
  %arraydecay = getelementptr inbounds [3 x float]* %x, i64 %idxprom1, i64 0
  %2 = load float* %arraydecay, align 4, !tbaa !5
  %3 = load float* %xcm, align 4, !tbaa !5
  %add.i = fadd float %2, %3
  %arrayidx2.i = getelementptr inbounds [3 x float]* %x, i64 %idxprom1, i64 1
  %4 = load float* %arrayidx2.i, align 4, !tbaa !5
  %5 = load float* %arrayidx3.i, align 4, !tbaa !5
  %add4.i = fadd float %4, %5
  %arrayidx5.i = getelementptr inbounds [3 x float]* %x, i64 %idxprom1, i64 2
  %6 = load float* %arrayidx5.i, align 4, !tbaa !5
  %7 = load float* %arrayidx6.i, align 4, !tbaa !5
  %add7.i = fadd float %6, %7
  store float %add.i, float* %arraydecay, align 4, !tbaa !5
  store float %add4.i, float* %arrayidx2.i, align 4, !tbaa !5
  store float %add7.i, float* %arrayidx5.i, align 4, !tbaa !5
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %gnx
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %cond.end, %entry
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @orient_princ(%struct.t_atoms* nocapture %atoms, i32 %isize, i32* nocapture %index, i32 %natoms, [3 x float]* nocapture %x, [3 x float]* %v, float* %d) #0 {
entry:
  %xcm = alloca [3 x float], align 4
  %prcomp = alloca [3 x float], align 4
  %trans = alloca [3 x [3 x float]], align 16
  %0 = bitcast [3 x [3 x float]]* %trans to i8*
  call void @llvm.lifetime.start(i64 36, i8* %0) #3
  %atom = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 1
  %1 = load %struct.t_atom** %atom, align 8, !tbaa !0
  %arraydecay = getelementptr inbounds [3 x [3 x float]]* %trans, i64 0, i64 0
  %arraydecay1 = getelementptr inbounds [3 x float]* %prcomp, i64 0, i64 0
  call void @principal_comp(i32 %isize, i32* %index, %struct.t_atom* %1, [3 x float]* %x, [3 x float]* %arraydecay, float* %arraydecay1) #6
  %tobool = icmp eq float* %d, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %2 = load float* %arraydecay1, align 4, !tbaa !5
  store float %2, float* %d, align 4, !tbaa !5
  %arrayidx2.i = getelementptr inbounds [3 x float]* %prcomp, i64 0, i64 1
  %3 = load float* %arrayidx2.i, align 4, !tbaa !5
  %arrayidx3.i = getelementptr inbounds float* %d, i64 1
  store float %3, float* %arrayidx3.i, align 4, !tbaa !5
  %arrayidx4.i = getelementptr inbounds [3 x float]* %prcomp, i64 0, i64 2
  %4 = load float* %arrayidx4.i, align 4, !tbaa !5
  %arrayidx5.i = getelementptr inbounds float* %d, i64 2
  store float %4, float* %arrayidx5.i, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %arrayidx1.i = getelementptr inbounds [3 x [3 x float]]* %trans, i64 0, i64 0, i64 0
  %5 = load float* %arrayidx1.i, align 16, !tbaa !5
  %arrayidx3.i26 = getelementptr inbounds [3 x [3 x float]]* %trans, i64 0, i64 1, i64 1
  %6 = load float* %arrayidx3.i26, align 4, !tbaa !5
  %arrayidx5.i27 = getelementptr inbounds [3 x [3 x float]]* %trans, i64 0, i64 2, i64 2
  %7 = load float* %arrayidx5.i27, align 8, !tbaa !5
  %mul.i = fmul float %6, %7
  %arrayidx7.i = getelementptr inbounds [3 x [3 x float]]* %trans, i64 0, i64 2, i64 1
  %8 = load float* %arrayidx7.i, align 4, !tbaa !5
  %arrayidx9.i = getelementptr inbounds [3 x [3 x float]]* %trans, i64 0, i64 1, i64 2
  %9 = load float* %arrayidx9.i, align 4, !tbaa !5
  %mul10.i = fmul float %8, %9
  %sub.i = fsub float %mul.i, %mul10.i
  %mul11.i = fmul float %5, %sub.i
  %arrayidx13.i = getelementptr inbounds [3 x [3 x float]]* %trans, i64 0, i64 1, i64 0
  %10 = load float* %arrayidx13.i, align 4, !tbaa !5
  %arrayidx15.i = getelementptr inbounds [3 x [3 x float]]* %trans, i64 0, i64 0, i64 1
  %11 = load float* %arrayidx15.i, align 4, !tbaa !5
  %mul18.i = fmul float %7, %11
  %arrayidx22.i = getelementptr inbounds [3 x [3 x float]]* %trans, i64 0, i64 0, i64 2
  %12 = load float* %arrayidx22.i, align 8, !tbaa !5
  %mul23.i = fmul float %8, %12
  %sub24.i = fsub float %mul18.i, %mul23.i
  %mul25.i = fmul float %10, %sub24.i
  %sub26.i = fsub float %mul11.i, %mul25.i
  %arrayidx28.i = getelementptr inbounds [3 x [3 x float]]* %trans, i64 0, i64 2, i64 0
  %13 = load float* %arrayidx28.i, align 8, !tbaa !5
  %mul33.i = fmul float %9, %11
  %mul38.i = fmul float %6, %12
  %sub39.i = fsub float %mul33.i, %mul38.i
  %mul40.i = fmul float %13, %sub39.i
  %add.i = fadd float %mul40.i, %sub26.i
  %cmp = fcmp olt float %add.i, 0.000000e+00
  br i1 %cmp, label %for.body, label %if.end10

for.body:                                         ; preds = %if.end, %for.body.for.body_crit_edge
  %14 = phi float [ %.pre, %for.body.for.body_crit_edge ], [ %13, %if.end ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body.for.body_crit_edge ], [ 0, %if.end ]
  %arrayidx6 = getelementptr inbounds [3 x [3 x float]]* %trans, i64 0, i64 2, i64 %indvars.iv
  %sub = fsub float -0.000000e+00, %14
  store float %sub, float* %arrayidx6, align 4, !tbaa !5
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 3
  br i1 %exitcond, label %if.end10, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  %arrayidx6.phi.trans.insert = getelementptr inbounds [3 x [3 x float]]* %trans, i64 0, i64 2, i64 %indvars.iv.next
  %.pre = load float* %arrayidx6.phi.trans.insert, align 4, !tbaa !5
  br label %for.body

if.end10:                                         ; preds = %for.body, %if.end
  call void @rotate_atoms(i32 %natoms, i32* null, [3 x float]* %x, [3 x float]* %arraydecay) #6
  %tobool12 = icmp eq [3 x float]* %v, null
  br i1 %tobool12, label %if.end15, label %if.then13

if.then13:                                        ; preds = %if.end10
  call void @rotate_atoms(i32 %natoms, i32* null, [3 x float]* %v, [3 x float]* %arraydecay) #6
  br label %if.end15

if.end15:                                         ; preds = %if.end10, %if.then13
  %arraydecay16 = getelementptr inbounds [3 x float]* %xcm, i64 0, i64 0
  call void @add_xcm([3 x float]* %x, i32 %natoms, i32* null, float* %arraydecay16) #6
  call void @llvm.lifetime.end(i64 36, i8* %0) #3
  ret void
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #3

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #3

declare float @fabsf(float)

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #3

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { nounwind optsize }
attributes #5 = { nounwind optsize readnone }
attributes #6 = { optsize }

!0 = metadata !{metadata !"any pointer", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"double", metadata !1}
!4 = metadata !{metadata !"int", metadata !1}
!5 = metadata !{metadata !"float", metadata !1}
