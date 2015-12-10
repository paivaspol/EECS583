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
  call void @llvm.dbg.value(metadata !{i32 %n}, i64 0, metadata !41), !dbg !230
  call void @llvm.dbg.value(metadata !{i32* %index}, i64 0, metadata !42), !dbg !230
  call void @llvm.dbg.value(metadata !{%struct.t_atom* %atom}, i64 0, metadata !43), !dbg !230
  call void @llvm.dbg.value(metadata !{[3 x float]* %x}, i64 0, metadata !44), !dbg !230
  call void @llvm.dbg.value(metadata !{[3 x float]* %trans}, i64 0, metadata !45), !dbg !231
  call void @llvm.dbg.value(metadata !{float* %d}, i64 0, metadata !46), !dbg !231
  call void @llvm.dbg.declare(metadata !{i32* %nrot}, metadata !51), !dbg !232
  call void @llvm.dbg.declare(metadata !{[4 x double]* %dd}, metadata !60), !dbg !233
  call void @llvm.dbg.declare(metadata !{[4 x double]* %tvec}, metadata !64), !dbg !233
  %call = call i8* @save_calloc(i8* getelementptr inbounds ([6 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 96, i32 4, i32 8) #5, !dbg !234
  %0 = bitcast i8* %call to double**, !dbg !234
  call void @llvm.dbg.value(metadata !{double** %0}, i64 0, metadata !56), !dbg !234
  %call1 = call i8* @save_calloc(i8* getelementptr inbounds ([3 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 97, i32 4, i32 8) #5, !dbg !235
  %1 = bitcast i8* %call1 to double**, !dbg !235
  call void @llvm.dbg.value(metadata !{double** %1}, i64 0, metadata !65), !dbg !235
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !47), !dbg !236
  br label %for.body, !dbg !236

for.body:                                         ; preds = %for.body, %entry
  %indvars.iv518 = phi i64 [ 0, %entry ], [ %indvars.iv.next519, %for.body ]
  %call2 = call i8* @save_calloc(i8* getelementptr inbounds ([9 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 99, i32 4, i32 8) #5, !dbg !238
  %2 = bitcast i8* %call2 to double*, !dbg !238
  %arrayidx = getelementptr inbounds double** %0, i64 %indvars.iv518, !dbg !238
  store double* %2, double** %arrayidx, align 8, !dbg !238, !tbaa !240
  %call3 = call i8* @save_calloc(i8* getelementptr inbounds ([6 x i8]* @.str4, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 100, i32 4, i32 8) #5, !dbg !243
  %3 = bitcast i8* %call3 to double*, !dbg !243
  %arrayidx5 = getelementptr inbounds double** %1, i64 %indvars.iv518, !dbg !243
  store double* %3, double** %arrayidx5, align 8, !dbg !243, !tbaa !240
  %arrayidx7 = getelementptr inbounds [4 x double]* %dd, i64 0, i64 %indvars.iv518, !dbg !244
  store double 0.000000e+00, double* %arrayidx7, align 8, !dbg !244, !tbaa !245
  %indvars.iv.next519 = add i64 %indvars.iv518, 1, !dbg !236
  %lftr.wideiv520 = trunc i64 %indvars.iv.next519 to i32, !dbg !236
  %exitcond521 = icmp eq i32 %lftr.wideiv520, 4, !dbg !236
  br i1 %exitcond521, label %for.cond11.preheader, label %for.body, !dbg !236

for.cond11.preheader:                             ; preds = %for.body, %for.cond11.preheader
  %indvars.iv514 = phi i64 [ %indvars.iv.next515, %for.cond11.preheader ], [ 0, %for.body ]
  %arrayidx16 = getelementptr inbounds double** %0, i64 %indvars.iv514, !dbg !246
  %4 = load double** %arrayidx16, align 8, !dbg !246, !tbaa !240
  %5 = bitcast double* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* %5, i8 0, i64 32, i32 8, i1 false), !dbg !246
  %indvars.iv.next515 = add i64 %indvars.iv514, 1, !dbg !249
  %lftr.wideiv516 = trunc i64 %indvars.iv.next515 to i32, !dbg !249
  %exitcond517 = icmp eq i32 %lftr.wideiv516, 4, !dbg !249
  br i1 %exitcond517, label %for.cond24.preheader, label %for.cond11.preheader, !dbg !249

for.cond24.preheader:                             ; preds = %for.cond11.preheader
  %cmp25449 = icmp sgt i32 %n, 0, !dbg !250
  br i1 %cmp25449, label %for.body26.lr.ph, label %for.cond24.preheader.for.end81_crit_edge, !dbg !250

for.cond24.preheader.for.end81_crit_edge:         ; preds = %for.cond24.preheader
  %arrayidx82.phi.trans.insert = getelementptr inbounds i8* %call, i64 8
  %.phi.trans.insert = bitcast i8* %arrayidx82.phi.trans.insert to double**
  %.pre524 = load double** %.phi.trans.insert, align 8, !dbg !252, !tbaa !240
  %.pre525 = load double** %0, align 8, !dbg !252, !tbaa !240
  %arrayidx86.phi.trans.insert = getelementptr inbounds i8* %call, i64 16
  %.phi.trans.insert526 = bitcast i8* %arrayidx86.phi.trans.insert to double**
  %.pre527 = load double** %.phi.trans.insert526, align 8, !dbg !253, !tbaa !240
  br label %for.end81, !dbg !250

for.body26.lr.ph:                                 ; preds = %for.cond24.preheader
  %6 = load double** %0, align 8, !dbg !254, !tbaa !240
  %arrayidx51 = getelementptr inbounds i8* %call, i64 8, !dbg !256
  %7 = bitcast i8* %arrayidx51 to double**, !dbg !256
  %8 = load double** %7, align 8, !dbg !256, !tbaa !240
  %arrayidx52 = getelementptr inbounds double* %8, i64 1, !dbg !256
  %arrayidx59 = getelementptr inbounds i8* %call, i64 16, !dbg !257
  %9 = bitcast i8* %arrayidx59 to double**, !dbg !257
  %10 = load double** %9, align 8, !dbg !257, !tbaa !240
  %arrayidx60 = getelementptr inbounds double* %10, i64 2, !dbg !257
  %arrayidx77 = getelementptr inbounds double* %10, i64 1, !dbg !258
  br label %for.body26, !dbg !250

for.body26:                                       ; preds = %for.body26, %for.body26.lr.ph
  %indvars.iv506 = phi i64 [ 0, %for.body26.lr.ph ], [ %indvars.iv.next507, %for.body26 ]
  %arrayidx28 = getelementptr inbounds i32* %index, i64 %indvars.iv506, !dbg !259
  %11 = load i32* %arrayidx28, align 4, !dbg !259, !tbaa !260
  call void @llvm.dbg.value(metadata !{i32 %11}, i64 0, metadata !49), !dbg !259
  %idxprom29 = sext i32 %11 to i64, !dbg !261
  %m31 = getelementptr inbounds %struct.t_atom* %atom, i64 %idxprom29, i32 0, !dbg !261
  %12 = load float* %m31, align 4, !dbg !261, !tbaa !262
  call void @llvm.dbg.value(metadata !{float %12}, i64 0, metadata !52), !dbg !261
  %arrayidx34 = getelementptr inbounds [3 x float]* %x, i64 %idxprom29, i64 0, !dbg !263
  %13 = load float* %arrayidx34, align 4, !dbg !263, !tbaa !262
  call void @llvm.dbg.value(metadata !{float %13}, i64 0, metadata !53), !dbg !263
  %arrayidx37 = getelementptr inbounds [3 x float]* %x, i64 %idxprom29, i64 1, !dbg !264
  %14 = load float* %arrayidx37, align 4, !dbg !264, !tbaa !262
  call void @llvm.dbg.value(metadata !{float %14}, i64 0, metadata !54), !dbg !264
  %arrayidx40 = getelementptr inbounds [3 x float]* %x, i64 %idxprom29, i64 2, !dbg !265
  %15 = load float* %arrayidx40, align 4, !dbg !265, !tbaa !262
  call void @llvm.dbg.value(metadata !{float %15}, i64 0, metadata !55), !dbg !265
  tail call void @llvm.dbg.value(metadata !{float %14}, i64 0, metadata !266), !dbg !267
  %mul.i = fmul float %14, %14, !dbg !268
  tail call void @llvm.dbg.value(metadata !{float %15}, i64 0, metadata !266), !dbg !267
  %mul.i434 = fmul float %15, %15, !dbg !268
  %add = fadd float %mul.i, %mul.i434, !dbg !254
  %mul = fmul float %12, %add, !dbg !254
  %conv = fpext float %mul to double, !dbg !254
  %16 = load double* %6, align 8, !dbg !254, !tbaa !245
  %add45 = fadd double %16, %conv, !dbg !254
  store double %add45, double* %6, align 8, !dbg !254, !tbaa !245
  tail call void @llvm.dbg.value(metadata !{float %13}, i64 0, metadata !269), !dbg !270
  %mul.i433 = fmul float %13, %13, !dbg !271
  tail call void @llvm.dbg.value(metadata !{float %15}, i64 0, metadata !269), !dbg !270
  %add48 = fadd float %mul.i433, %mul.i434, !dbg !256
  %mul49 = fmul float %12, %add48, !dbg !256
  %conv50 = fpext float %mul49 to double, !dbg !256
  %17 = load double* %arrayidx52, align 8, !dbg !256, !tbaa !245
  %add53 = fadd double %17, %conv50, !dbg !256
  store double %add53, double* %arrayidx52, align 8, !dbg !256, !tbaa !245
  tail call void @llvm.dbg.value(metadata !{float %13}, i64 0, metadata !272), !dbg !273
  tail call void @llvm.dbg.value(metadata !{float %14}, i64 0, metadata !272), !dbg !273
  %add56 = fadd float %mul.i433, %mul.i, !dbg !257
  %mul57 = fmul float %12, %add56, !dbg !257
  %conv58 = fpext float %mul57 to double, !dbg !257
  %18 = load double* %arrayidx60, align 8, !dbg !257, !tbaa !245
  %add61 = fadd double %conv58, %18, !dbg !257
  store double %add61, double* %arrayidx60, align 8, !dbg !257, !tbaa !245
  %mul62 = fmul float %13, %14, !dbg !274
  %mul63 = fmul float %12, %mul62, !dbg !274
  %conv64 = fpext float %mul63 to double, !dbg !274
  %19 = load double* %8, align 8, !dbg !274, !tbaa !245
  %sub = fsub double %19, %conv64, !dbg !274
  store double %sub, double* %8, align 8, !dbg !274, !tbaa !245
  %mul67 = fmul float %13, %15, !dbg !275
  %mul68 = fmul float %12, %mul67, !dbg !275
  %conv69 = fpext float %mul68 to double, !dbg !275
  %20 = load double* %10, align 8, !dbg !275, !tbaa !245
  %sub72 = fsub double %20, %conv69, !dbg !275
  store double %sub72, double* %10, align 8, !dbg !275, !tbaa !245
  %mul73 = fmul float %14, %15, !dbg !258
  %mul74 = fmul float %12, %mul73, !dbg !258
  %conv75 = fpext float %mul74 to double, !dbg !258
  %21 = load double* %arrayidx77, align 8, !dbg !258, !tbaa !245
  %sub78 = fsub double %21, %conv75, !dbg !258
  store double %sub78, double* %arrayidx77, align 8, !dbg !258, !tbaa !245
  %indvars.iv.next507 = add i64 %indvars.iv506, 1, !dbg !250
  %lftr.wideiv508 = trunc i64 %indvars.iv.next507 to i32, !dbg !250
  %exitcond509 = icmp eq i32 %lftr.wideiv508, %n, !dbg !250
  br i1 %exitcond509, label %for.end81, label %for.body26, !dbg !250

for.end81:                                        ; preds = %for.body26, %for.cond24.preheader.for.end81_crit_edge
  %22 = phi double* [ %.pre527, %for.cond24.preheader.for.end81_crit_edge ], [ %10, %for.body26 ]
  %23 = phi double* [ %.pre525, %for.cond24.preheader.for.end81_crit_edge ], [ %6, %for.body26 ]
  %24 = phi double* [ %.pre524, %for.cond24.preheader.for.end81_crit_edge ], [ %8, %for.body26 ]
  %25 = load double* %24, align 8, !dbg !252, !tbaa !245
  %arrayidx85 = getelementptr inbounds double* %23, i64 1, !dbg !252
  store double %25, double* %arrayidx85, align 8, !dbg !252, !tbaa !245
  %26 = load double* %22, align 8, !dbg !253, !tbaa !245
  %arrayidx89 = getelementptr inbounds double* %23, i64 2, !dbg !253
  store double %26, double* %arrayidx89, align 8, !dbg !253, !tbaa !245
  %arrayidx91 = getelementptr inbounds double* %22, i64 1, !dbg !276
  %27 = load double* %arrayidx91, align 8, !dbg !276, !tbaa !245
  %arrayidx93 = getelementptr inbounds double* %24, i64 2, !dbg !276
  store double %27, double* %arrayidx93, align 8, !dbg !276, !tbaa !245
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !47), !dbg !277
  br label %for.cond98.preheader, !dbg !277

for.cond98.preheader:                             ; preds = %for.inc114.for.cond98.preheader_crit_edge, %for.end81
  %28 = phi double* [ %23, %for.end81 ], [ %.pre528, %for.inc114.for.cond98.preheader_crit_edge ]
  %indvars.iv502 = phi i64 [ 0, %for.end81 ], [ %indvars.iv.next503, %for.inc114.for.cond98.preheader_crit_edge ]
  br label %for.body101, !dbg !279

for.body101:                                      ; preds = %for.body101, %for.cond98.preheader
  %indvars.iv498 = phi i64 [ 0, %for.cond98.preheader ], [ %indvars.iv.next499, %for.body101 ]
  %arrayidx105 = getelementptr inbounds double* %28, i64 %indvars.iv498, !dbg !282
  %29 = load double* %arrayidx105, align 8, !dbg !282, !tbaa !245
  %conv106 = fptrunc double %29 to float, !dbg !282
  %arrayidx110 = getelementptr inbounds [3 x float]* %trans, i64 %indvars.iv502, i64 %indvars.iv498, !dbg !282
  store float %conv106, float* %arrayidx110, align 4, !dbg !282, !tbaa !262
  %indvars.iv.next499 = add i64 %indvars.iv498, 1, !dbg !279
  %lftr.wideiv500 = trunc i64 %indvars.iv.next499 to i32, !dbg !279
  %exitcond501 = icmp eq i32 %lftr.wideiv500, 3, !dbg !279
  br i1 %exitcond501, label %for.inc114, label %for.body101, !dbg !279

for.inc114:                                       ; preds = %for.body101
  %indvars.iv.next503 = add i64 %indvars.iv502, 1, !dbg !277
  %lftr.wideiv504 = trunc i64 %indvars.iv.next503 to i32, !dbg !277
  %exitcond505 = icmp eq i32 %lftr.wideiv504, 3, !dbg !277
  br i1 %exitcond505, label %for.end116, label %for.inc114.for.cond98.preheader_crit_edge, !dbg !277

for.inc114.for.cond98.preheader_crit_edge:        ; preds = %for.inc114
  %arrayidx104.phi.trans.insert = getelementptr inbounds double** %0, i64 %indvars.iv.next503
  %.pre528 = load double** %arrayidx104.phi.trans.insert, align 8, !dbg !282, !tbaa !240
  br label %for.cond98.preheader, !dbg !277

for.end116:                                       ; preds = %for.inc114
  %arraydecay = getelementptr inbounds [4 x double]* %dd, i64 0, i64 0, !dbg !283
  call void @jacobi(double** %0, i32 3, double* %arraydecay, double** %1, i32* %nrot) #5, !dbg !283
  %arrayidx117 = getelementptr inbounds [4 x double]* %dd, i64 0, i64 1, !dbg !284
  %30 = load double* %arrayidx117, align 8, !dbg !284, !tbaa !245
  %call118 = call double @fabs(double %30) #6, !dbg !284
  %31 = load double* %arraydecay, align 16, !dbg !284, !tbaa !245
  %call120 = call double @fabs(double %31) #6, !dbg !284
  %cmp121 = fcmp ogt double %call118, %call120, !dbg !284
  br i1 %cmp121, label %for.body128, label %if.end, !dbg !284

for.body128:                                      ; preds = %for.end116, %for.body128
  %indvars.iv494 = phi i64 [ %indvars.iv.next495, %for.body128 ], [ 0, %for.end116 ]
  %arrayidx130 = getelementptr inbounds double** %1, i64 %indvars.iv494, !dbg !285
  %32 = load double** %arrayidx130, align 8, !dbg !285, !tbaa !240
  %33 = load double* %32, align 8, !dbg !285, !tbaa !245
  %arrayidx133 = getelementptr inbounds [4 x double]* %tvec, i64 0, i64 %indvars.iv494, !dbg !285
  store double %33, double* %arrayidx133, align 8, !dbg !285, !tbaa !245
  %indvars.iv.next495 = add i64 %indvars.iv494, 1, !dbg !285
  %lftr.wideiv496 = trunc i64 %indvars.iv.next495 to i32, !dbg !285
  %exitcond497 = icmp eq i32 %lftr.wideiv496, 4, !dbg !285
  br i1 %exitcond497, label %for.end136, label %for.body128, !dbg !285

for.end136:                                       ; preds = %for.body128
  %conv124 = fptrunc double %31 to float, !dbg !288
  store double %30, double* %arraydecay, align 16, !dbg !288, !tbaa !245
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !48), !dbg !289
  br label %for.body142, !dbg !289

for.body142:                                      ; preds = %for.body142, %for.end136
  %indvars.iv490 = phi i64 [ 0, %for.end136 ], [ %indvars.iv.next491, %for.body142 ]
  %arrayidx144 = getelementptr inbounds double** %1, i64 %indvars.iv490, !dbg !289
  %34 = load double** %arrayidx144, align 8, !dbg !289, !tbaa !240
  %arrayidx145 = getelementptr inbounds double* %34, i64 1, !dbg !289
  %35 = load double* %arrayidx145, align 8, !dbg !289, !tbaa !245
  store double %35, double* %34, align 8, !dbg !289, !tbaa !245
  %indvars.iv.next491 = add i64 %indvars.iv490, 1, !dbg !289
  %lftr.wideiv492 = trunc i64 %indvars.iv.next491 to i32, !dbg !289
  %exitcond493 = icmp eq i32 %lftr.wideiv492, 4, !dbg !289
  br i1 %exitcond493, label %for.end151, label %for.body142, !dbg !289

for.end151:                                       ; preds = %for.body142
  %conv152 = fpext float %conv124 to double, !dbg !288
  store double %conv152, double* %arrayidx117, align 8, !dbg !288, !tbaa !245
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !48), !dbg !291
  br label %for.body157, !dbg !291

for.body157:                                      ; preds = %for.body157, %for.end151
  %indvars.iv486 = phi i64 [ 0, %for.end151 ], [ %indvars.iv.next487, %for.body157 ]
  %arrayidx159 = getelementptr inbounds [4 x double]* %tvec, i64 0, i64 %indvars.iv486, !dbg !291
  %36 = load double* %arrayidx159, align 8, !dbg !291, !tbaa !245
  %arrayidx161 = getelementptr inbounds double** %1, i64 %indvars.iv486, !dbg !291
  %37 = load double** %arrayidx161, align 8, !dbg !291, !tbaa !240
  %arrayidx162 = getelementptr inbounds double* %37, i64 1, !dbg !291
  store double %36, double* %arrayidx162, align 8, !dbg !291, !tbaa !245
  %indvars.iv.next487 = add i64 %indvars.iv486, 1, !dbg !291
  %lftr.wideiv488 = trunc i64 %indvars.iv.next487 to i32, !dbg !291
  %exitcond489 = icmp eq i32 %lftr.wideiv488, 4, !dbg !291
  br i1 %exitcond489, label %if.end.loopexit, label %for.body157, !dbg !291

if.end.loopexit:                                  ; preds = %for.body157
  %.pre = load double* %arrayidx117, align 8, !dbg !293, !tbaa !245
  br label %if.end

if.end:                                           ; preds = %if.end.loopexit, %for.end116
  %38 = phi double [ %.pre, %if.end.loopexit ], [ %30, %for.end116 ]
  %arrayidx166 = getelementptr inbounds [4 x double]* %dd, i64 0, i64 2, !dbg !293
  %39 = load double* %arrayidx166, align 16, !dbg !293, !tbaa !245
  %call167 = call double @fabs(double %39) #6, !dbg !293
  %call169 = call double @fabs(double %38) #6, !dbg !293
  %cmp170 = fcmp ogt double %call167, %call169, !dbg !293
  br i1 %cmp170, label %for.body178, label %if.end216, !dbg !293

for.body178:                                      ; preds = %if.end, %for.body178
  %indvars.iv482 = phi i64 [ %indvars.iv.next483, %for.body178 ], [ 0, %if.end ]
  %arrayidx180 = getelementptr inbounds double** %1, i64 %indvars.iv482, !dbg !294
  %40 = load double** %arrayidx180, align 8, !dbg !294, !tbaa !240
  %arrayidx181 = getelementptr inbounds double* %40, i64 1, !dbg !294
  %41 = load double* %arrayidx181, align 8, !dbg !294, !tbaa !245
  %arrayidx183 = getelementptr inbounds [4 x double]* %tvec, i64 0, i64 %indvars.iv482, !dbg !294
  store double %41, double* %arrayidx183, align 8, !dbg !294, !tbaa !245
  %indvars.iv.next483 = add i64 %indvars.iv482, 1, !dbg !294
  %lftr.wideiv484 = trunc i64 %indvars.iv.next483 to i32, !dbg !294
  %exitcond485 = icmp eq i32 %lftr.wideiv484, 4, !dbg !294
  br i1 %exitcond485, label %for.end186, label %for.body178, !dbg !294

for.end186:                                       ; preds = %for.body178
  %conv174 = fptrunc double %38 to float, !dbg !297
  store double %39, double* %arrayidx117, align 8, !dbg !297, !tbaa !245
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !48), !dbg !298
  br label %for.body192, !dbg !298

for.body192:                                      ; preds = %for.body192, %for.end186
  %indvars.iv478 = phi i64 [ 0, %for.end186 ], [ %indvars.iv.next479, %for.body192 ]
  %arrayidx194 = getelementptr inbounds double** %1, i64 %indvars.iv478, !dbg !298
  %42 = load double** %arrayidx194, align 8, !dbg !298, !tbaa !240
  %arrayidx195 = getelementptr inbounds double* %42, i64 2, !dbg !298
  %43 = load double* %arrayidx195, align 8, !dbg !298, !tbaa !245
  %arrayidx198 = getelementptr inbounds double* %42, i64 1, !dbg !298
  store double %43, double* %arrayidx198, align 8, !dbg !298, !tbaa !245
  %indvars.iv.next479 = add i64 %indvars.iv478, 1, !dbg !298
  %lftr.wideiv480 = trunc i64 %indvars.iv.next479 to i32, !dbg !298
  %exitcond481 = icmp eq i32 %lftr.wideiv480, 4, !dbg !298
  br i1 %exitcond481, label %for.end201, label %for.body192, !dbg !298

for.end201:                                       ; preds = %for.body192
  %conv202 = fpext float %conv174 to double, !dbg !297
  store double %conv202, double* %arrayidx166, align 16, !dbg !297, !tbaa !245
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !48), !dbg !300
  br label %for.body207, !dbg !300

for.body207:                                      ; preds = %for.body207, %for.end201
  %indvars.iv474 = phi i64 [ 0, %for.end201 ], [ %indvars.iv.next475, %for.body207 ]
  %arrayidx209 = getelementptr inbounds [4 x double]* %tvec, i64 0, i64 %indvars.iv474, !dbg !300
  %44 = load double* %arrayidx209, align 8, !dbg !300, !tbaa !245
  %arrayidx211 = getelementptr inbounds double** %1, i64 %indvars.iv474, !dbg !300
  %45 = load double** %arrayidx211, align 8, !dbg !300, !tbaa !240
  %arrayidx212 = getelementptr inbounds double* %45, i64 2, !dbg !300
  store double %44, double* %arrayidx212, align 8, !dbg !300, !tbaa !245
  %indvars.iv.next475 = add i64 %indvars.iv474, 1, !dbg !300
  %lftr.wideiv476 = trunc i64 %indvars.iv.next475 to i32, !dbg !300
  %exitcond477 = icmp eq i32 %lftr.wideiv476, 4, !dbg !300
  br i1 %exitcond477, label %if.end216.loopexit, label %for.body207, !dbg !300

if.end216.loopexit:                               ; preds = %for.body207
  %.pre523 = load double* %arrayidx117, align 8, !dbg !302, !tbaa !245
  br label %if.end216

if.end216:                                        ; preds = %if.end, %if.end216.loopexit
  %46 = phi double [ %.pre523, %if.end216.loopexit ], [ %38, %if.end ]
  %call218 = call double @fabs(double %46) #6, !dbg !302
  %47 = load double* %arraydecay, align 16, !dbg !302, !tbaa !245
  %call220 = call double @fabs(double %47) #6, !dbg !302
  %cmp221 = fcmp ogt double %call218, %call220, !dbg !302
  br i1 %cmp221, label %for.body229, label %for.body271, !dbg !302

for.body229:                                      ; preds = %if.end216, %for.body229
  %indvars.iv470 = phi i64 [ %indvars.iv.next471, %for.body229 ], [ 0, %if.end216 ]
  %arrayidx231 = getelementptr inbounds double** %1, i64 %indvars.iv470, !dbg !303
  %48 = load double** %arrayidx231, align 8, !dbg !303, !tbaa !240
  %49 = load double* %48, align 8, !dbg !303, !tbaa !245
  %arrayidx234 = getelementptr inbounds [4 x double]* %tvec, i64 0, i64 %indvars.iv470, !dbg !303
  store double %49, double* %arrayidx234, align 8, !dbg !303, !tbaa !245
  %indvars.iv.next471 = add i64 %indvars.iv470, 1, !dbg !303
  %lftr.wideiv472 = trunc i64 %indvars.iv.next471 to i32, !dbg !303
  %exitcond473 = icmp eq i32 %lftr.wideiv472, 4, !dbg !303
  br i1 %exitcond473, label %for.end237, label %for.body229, !dbg !303

for.end237:                                       ; preds = %for.body229
  %conv225 = fptrunc double %47 to float, !dbg !306
  store double %46, double* %arraydecay, align 16, !dbg !306, !tbaa !245
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !48), !dbg !307
  br label %for.body243, !dbg !307

for.body243:                                      ; preds = %for.body243, %for.end237
  %indvars.iv466 = phi i64 [ 0, %for.end237 ], [ %indvars.iv.next467, %for.body243 ]
  %arrayidx245 = getelementptr inbounds double** %1, i64 %indvars.iv466, !dbg !307
  %50 = load double** %arrayidx245, align 8, !dbg !307, !tbaa !240
  %arrayidx246 = getelementptr inbounds double* %50, i64 1, !dbg !307
  %51 = load double* %arrayidx246, align 8, !dbg !307, !tbaa !245
  store double %51, double* %50, align 8, !dbg !307, !tbaa !245
  %indvars.iv.next467 = add i64 %indvars.iv466, 1, !dbg !307
  %lftr.wideiv468 = trunc i64 %indvars.iv.next467 to i32, !dbg !307
  %exitcond469 = icmp eq i32 %lftr.wideiv468, 4, !dbg !307
  br i1 %exitcond469, label %for.end252, label %for.body243, !dbg !307

for.end252:                                       ; preds = %for.body243
  %conv253 = fpext float %conv225 to double, !dbg !306
  store double %conv253, double* %arrayidx117, align 8, !dbg !306, !tbaa !245
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !48), !dbg !309
  br label %for.body258, !dbg !309

for.body258:                                      ; preds = %for.body258, %for.end252
  %indvars.iv462 = phi i64 [ 0, %for.end252 ], [ %indvars.iv.next463, %for.body258 ]
  %arrayidx260 = getelementptr inbounds [4 x double]* %tvec, i64 0, i64 %indvars.iv462, !dbg !309
  %52 = load double* %arrayidx260, align 8, !dbg !309, !tbaa !245
  %arrayidx262 = getelementptr inbounds double** %1, i64 %indvars.iv462, !dbg !309
  %53 = load double** %arrayidx262, align 8, !dbg !309, !tbaa !240
  %arrayidx263 = getelementptr inbounds double* %53, i64 1, !dbg !309
  store double %52, double* %arrayidx263, align 8, !dbg !309, !tbaa !245
  %indvars.iv.next463 = add i64 %indvars.iv462, 1, !dbg !309
  %lftr.wideiv464 = trunc i64 %indvars.iv.next463 to i32, !dbg !309
  %exitcond465 = icmp eq i32 %lftr.wideiv464, 4, !dbg !309
  br i1 %exitcond465, label %for.body271, label %for.body258, !dbg !309

for.body271:                                      ; preds = %for.inc293, %if.end216, %for.body258
  %indvars.iv458 = phi i64 [ 0, %for.body258 ], [ 0, %if.end216 ], [ %indvars.iv.next459, %for.inc293 ]
  %arrayidx273 = getelementptr inbounds [4 x double]* %dd, i64 0, i64 %indvars.iv458, !dbg !311
  %54 = load double* %arrayidx273, align 8, !dbg !311, !tbaa !245
  %conv274 = fptrunc double %54 to float, !dbg !311
  %arrayidx276 = getelementptr inbounds float* %d, i64 %indvars.iv458, !dbg !311
  store float %conv274, float* %arrayidx276, align 4, !dbg !311, !tbaa !262
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !50), !dbg !314
  br label %for.body280, !dbg !314

for.body280:                                      ; preds = %for.body280, %for.body271
  %indvars.iv454 = phi i64 [ 0, %for.body271 ], [ %indvars.iv.next455, %for.body280 ]
  %arrayidx283 = getelementptr inbounds double** %1, i64 %indvars.iv454, !dbg !316
  %55 = load double** %arrayidx283, align 8, !dbg !316, !tbaa !240
  %arrayidx284 = getelementptr inbounds double* %55, i64 %indvars.iv458, !dbg !316
  %56 = load double* %arrayidx284, align 8, !dbg !316, !tbaa !245
  %conv285 = fptrunc double %56 to float, !dbg !316
  %arrayidx289 = getelementptr inbounds [3 x float]* %trans, i64 %indvars.iv458, i64 %indvars.iv454, !dbg !316
  store float %conv285, float* %arrayidx289, align 4, !dbg !316, !tbaa !262
  %indvars.iv.next455 = add i64 %indvars.iv454, 1, !dbg !314
  %lftr.wideiv456 = trunc i64 %indvars.iv.next455 to i32, !dbg !314
  %exitcond457 = icmp eq i32 %lftr.wideiv456, 3, !dbg !314
  br i1 %exitcond457, label %for.inc293, label %for.body280, !dbg !314

for.inc293:                                       ; preds = %for.body280
  %indvars.iv.next459 = add i64 %indvars.iv458, 1, !dbg !317
  %lftr.wideiv460 = trunc i64 %indvars.iv.next459 to i32, !dbg !317
  %exitcond461 = icmp eq i32 %lftr.wideiv460, 3, !dbg !317
  br i1 %exitcond461, label %for.body299, label %for.body271, !dbg !317

for.body299:                                      ; preds = %for.inc293, %for.body299
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body299 ], [ 0, %for.inc293 ]
  %arrayidx301 = getelementptr inbounds double** %0, i64 %indvars.iv, !dbg !318
  %57 = load double** %arrayidx301, align 8, !dbg !318, !tbaa !240
  %58 = bitcast double* %57 to i8*, !dbg !318
  call void @save_free(i8* getelementptr inbounds ([9 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 166, i8* %58) #5, !dbg !318
  %arrayidx303 = getelementptr inbounds double** %1, i64 %indvars.iv, !dbg !321
  %59 = load double** %arrayidx303, align 8, !dbg !321, !tbaa !240
  %60 = bitcast double* %59 to i8*, !dbg !321
  call void @save_free(i8* getelementptr inbounds ([6 x i8]* @.str4, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 167, i8* %60) #5, !dbg !321
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !322
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !322
  %exitcond = icmp eq i32 %lftr.wideiv, 4, !dbg !322
  br i1 %exitcond, label %for.end306, label %for.body299, !dbg !322

for.end306:                                       ; preds = %for.body299
  call void @save_free(i8* getelementptr inbounds ([6 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 169, i8* %call) #5, !dbg !323
  call void @save_free(i8* getelementptr inbounds ([3 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 170, i8* %call1) #5, !dbg !324
  ret void, !dbg !325
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: optsize
declare i8* @save_calloc(i8*, i8*, i32, i32, i32) #2

; Function Attrs: optsize
declare void @jacobi(double**, i32, double*, double**, i32*) #2

; Function Attrs: nounwind optsize readnone
declare double @fabs(double) #3

; Function Attrs: optsize
declare void @save_free(i8*, i8*, i32, i8*) #2

; Function Attrs: nounwind optsize uwtable
define void @rotate_atoms(i32 %gnx, i32* %index, [3 x float]* nocapture %x, [3 x float]* nocapture %trans) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %gnx}, i64 0, metadata !71), !dbg !326
  tail call void @llvm.dbg.value(metadata !{i32* %index}, i64 0, metadata !72), !dbg !326
  tail call void @llvm.dbg.value(metadata !{[3 x float]* %x}, i64 0, metadata !73), !dbg !326
  tail call void @llvm.dbg.value(metadata !{[3 x float]* %trans}, i64 0, metadata !74), !dbg !326
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !78), !dbg !327
  %cmp77 = icmp sgt i32 %gnx, 0, !dbg !327
  br i1 %cmp77, label %for.body.lr.ph, label %for.end, !dbg !327

for.body.lr.ph:                                   ; preds = %entry
  %tobool = icmp eq i32* %index, null, !dbg !329
  %arrayidx11 = getelementptr inbounds [3 x float]* %trans, i64 0, i64 0, !dbg !331
  %arrayidx13 = getelementptr inbounds [3 x float]* %trans, i64 0, i64 1, !dbg !331
  %arrayidx16 = getelementptr inbounds [3 x float]* %trans, i64 0, i64 2, !dbg !331
  %arrayidx23 = getelementptr inbounds [3 x float]* %trans, i64 1, i64 0, !dbg !332
  %arrayidx26 = getelementptr inbounds [3 x float]* %trans, i64 1, i64 1, !dbg !332
  %arrayidx30 = getelementptr inbounds [3 x float]* %trans, i64 1, i64 2, !dbg !332
  %arrayidx37 = getelementptr inbounds [3 x float]* %trans, i64 2, i64 0, !dbg !333
  %arrayidx40 = getelementptr inbounds [3 x float]* %trans, i64 2, i64 1, !dbg !333
  %arrayidx44 = getelementptr inbounds [3 x float]* %trans, i64 2, i64 2, !dbg !333
  br label %for.body, !dbg !327

for.body:                                         ; preds = %cond.end, %for.body.lr.ph
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %cond.end ]
  %0 = trunc i64 %indvars.iv to i32, !dbg !329
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !329

cond.true:                                        ; preds = %for.body
  %arrayidx = getelementptr inbounds i32* %index, i64 %indvars.iv, !dbg !329
  %1 = load i32* %arrayidx, align 4, !dbg !329, !tbaa !260
  br label %cond.end, !dbg !329

cond.end:                                         ; preds = %for.body, %cond.true
  %cond = phi i32 [ %1, %cond.true ], [ %0, %for.body ], !dbg !329
  tail call void @llvm.dbg.value(metadata !{i32 %cond}, i64 0, metadata !79), !dbg !329
  %idxprom1 = sext i32 %cond to i64, !dbg !334
  %arrayidx3 = getelementptr inbounds [3 x float]* %x, i64 %idxprom1, i64 0, !dbg !334
  %2 = load float* %arrayidx3, align 4, !dbg !334, !tbaa !262
  tail call void @llvm.dbg.value(metadata !{float %2}, i64 0, metadata !75), !dbg !334
  %arrayidx6 = getelementptr inbounds [3 x float]* %x, i64 %idxprom1, i64 1, !dbg !335
  %3 = load float* %arrayidx6, align 4, !dbg !335, !tbaa !262
  tail call void @llvm.dbg.value(metadata !{float %3}, i64 0, metadata !76), !dbg !335
  %arrayidx9 = getelementptr inbounds [3 x float]* %x, i64 %idxprom1, i64 2, !dbg !336
  %4 = load float* %arrayidx9, align 4, !dbg !336, !tbaa !262
  tail call void @llvm.dbg.value(metadata !{float %4}, i64 0, metadata !77), !dbg !336
  %5 = load float* %arrayidx11, align 4, !dbg !331, !tbaa !262
  %mul = fmul float %2, %5, !dbg !331
  %6 = load float* %arrayidx13, align 4, !dbg !331, !tbaa !262
  %mul14 = fmul float %3, %6, !dbg !331
  %add = fadd float %mul, %mul14, !dbg !331
  %7 = load float* %arrayidx16, align 4, !dbg !331, !tbaa !262
  %mul17 = fmul float %4, %7, !dbg !331
  %add18 = fadd float %add, %mul17, !dbg !331
  store float %add18, float* %arrayidx3, align 4, !dbg !331, !tbaa !262
  %8 = load float* %arrayidx23, align 4, !dbg !332, !tbaa !262
  %mul24 = fmul float %2, %8, !dbg !332
  %9 = load float* %arrayidx26, align 4, !dbg !332, !tbaa !262
  %mul27 = fmul float %3, %9, !dbg !332
  %add28 = fadd float %mul24, %mul27, !dbg !332
  %10 = load float* %arrayidx30, align 4, !dbg !332, !tbaa !262
  %mul31 = fmul float %4, %10, !dbg !332
  %add32 = fadd float %add28, %mul31, !dbg !332
  store float %add32, float* %arrayidx6, align 4, !dbg !332, !tbaa !262
  %11 = load float* %arrayidx37, align 4, !dbg !333, !tbaa !262
  %mul38 = fmul float %2, %11, !dbg !333
  %12 = load float* %arrayidx40, align 4, !dbg !333, !tbaa !262
  %mul41 = fmul float %3, %12, !dbg !333
  %add42 = fadd float %mul38, %mul41, !dbg !333
  %13 = load float* %arrayidx44, align 4, !dbg !333, !tbaa !262
  %mul45 = fmul float %4, %13, !dbg !333
  %add46 = fadd float %add42, %mul45, !dbg !333
  store float %add46, float* %arrayidx9, align 4, !dbg !333, !tbaa !262
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !327
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !327
  %exitcond = icmp eq i32 %lftr.wideiv, %gnx, !dbg !327
  br i1 %exitcond, label %for.end, label %for.body, !dbg !327

for.end:                                          ; preds = %cond.end, %entry
  ret void, !dbg !337
}

; Function Attrs: nounwind optsize uwtable
define float @calc_xcm([3 x float]* nocapture %x, i32 %gnx, i32* %index, %struct.t_atom* %atom, float* nocapture %xcm, i32 %bQ) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{[3 x float]* %x}, i64 0, metadata !84), !dbg !338
  tail call void @llvm.dbg.value(metadata !{i32 %gnx}, i64 0, metadata !85), !dbg !338
  tail call void @llvm.dbg.value(metadata !{i32* %index}, i64 0, metadata !86), !dbg !338
  tail call void @llvm.dbg.value(metadata !{%struct.t_atom* %atom}, i64 0, metadata !87), !dbg !338
  tail call void @llvm.dbg.value(metadata !{float* %xcm}, i64 0, metadata !88), !dbg !338
  tail call void @llvm.dbg.value(metadata !{i32 %bQ}, i64 0, metadata !89), !dbg !339
  tail call void @llvm.dbg.value(metadata !{float* %xcm}, i64 0, metadata !340), !dbg !342
  store float 0.000000e+00, float* %xcm, align 4, !dbg !343, !tbaa !262
  %arrayidx1.i = getelementptr inbounds float* %xcm, i64 1, !dbg !344
  store float 0.000000e+00, float* %arrayidx1.i, align 4, !dbg !344, !tbaa !262
  %arrayidx2.i = getelementptr inbounds float* %xcm, i64 2, !dbg !345
  store float 0.000000e+00, float* %arrayidx2.i, align 4, !dbg !345, !tbaa !262
  tail call void @llvm.dbg.value(metadata !346, i64 0, metadata !94), !dbg !347
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !90), !dbg !348
  %cmp52 = icmp sgt i32 %gnx, 0, !dbg !348
  br i1 %cmp52, label %for.body.lr.ph, label %for.cond26.preheader, !dbg !348

for.body.lr.ph:                                   ; preds = %entry
  %tobool = icmp eq i32* %index, null, !dbg !350
  %tobool1 = icmp eq %struct.t_atom* %atom, null, !dbg !352
  %tobool2 = icmp eq i32 %bQ, 0, !dbg !353
  br label %for.body, !dbg !348

for.cond26.preheader:                             ; preds = %for.inc23, %entry
  %tm.0.lcssa = phi float [ 0.000000e+00, %entry ], [ %add, %for.inc23 ]
  br label %for.body29, !dbg !355

for.body:                                         ; preds = %for.inc23, %for.body.lr.ph
  %indvars.iv59 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next60, %for.inc23 ]
  %tm.054 = phi float [ 0.000000e+00, %for.body.lr.ph ], [ %add, %for.inc23 ]
  %0 = trunc i64 %indvars.iv59 to i32, !dbg !350
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !350

cond.true:                                        ; preds = %for.body
  %arrayidx = getelementptr inbounds i32* %index, i64 %indvars.iv59, !dbg !350
  %1 = load i32* %arrayidx, align 4, !dbg !350, !tbaa !260
  br label %cond.end, !dbg !350

cond.end:                                         ; preds = %for.body, %cond.true
  %cond = phi i32 [ %1, %cond.true ], [ %0, %for.body ], !dbg !350
  tail call void @llvm.dbg.value(metadata !{i32 %cond}, i64 0, metadata !91), !dbg !350
  %idxprom17.pre = sext i32 %cond to i64, !dbg !357
  br i1 %tobool1, label %if.end11, label %if.then, !dbg !352

if.then:                                          ; preds = %cond.end
  br i1 %tobool2, label %if.else, label %if.then3, !dbg !353

if.then3:                                         ; preds = %if.then
  %q = getelementptr inbounds %struct.t_atom* %atom, i64 %idxprom17.pre, i32 1, !dbg !359
  %2 = load float* %q, align 4, !dbg !359, !tbaa !262
  %fabsf = tail call float @fabsf(float %2) #3, !dbg !359
  tail call void @llvm.dbg.value(metadata !{float %fabsf}, i64 0, metadata !93), !dbg !359
  br label %if.end11, !dbg !359

if.else:                                          ; preds = %if.then
  %m9 = getelementptr inbounds %struct.t_atom* %atom, i64 %idxprom17.pre, i32 0, !dbg !360
  %3 = load float* %m9, align 4, !dbg !360, !tbaa !262
  tail call void @llvm.dbg.value(metadata !{float %3}, i64 0, metadata !93), !dbg !360
  br label %if.end11

if.end11:                                         ; preds = %cond.end, %if.then3, %if.else
  %m0.0 = phi float [ %fabsf, %if.then3 ], [ %3, %if.else ], [ 1.000000e+00, %cond.end ]
  tail call void @llvm.dbg.value(metadata !{float %add}, i64 0, metadata !94), !dbg !361
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !92), !dbg !362
  br label %for.body15, !dbg !362

for.body15:                                       ; preds = %for.body15, %if.end11
  %indvars.iv55 = phi i64 [ 0, %if.end11 ], [ %indvars.iv.next56, %for.body15 ]
  %arrayidx19 = getelementptr inbounds [3 x float]* %x, i64 %idxprom17.pre, i64 %indvars.iv55, !dbg !357
  %4 = load float* %arrayidx19, align 4, !dbg !357, !tbaa !262
  %mul = fmul float %m0.0, %4, !dbg !357
  %arrayidx21 = getelementptr inbounds float* %xcm, i64 %indvars.iv55, !dbg !357
  %5 = load float* %arrayidx21, align 4, !dbg !357, !tbaa !262
  %add22 = fadd float %5, %mul, !dbg !357
  store float %add22, float* %arrayidx21, align 4, !dbg !357, !tbaa !262
  %indvars.iv.next56 = add i64 %indvars.iv55, 1, !dbg !362
  %lftr.wideiv57 = trunc i64 %indvars.iv.next56 to i32, !dbg !362
  %exitcond58 = icmp eq i32 %lftr.wideiv57, 3, !dbg !362
  br i1 %exitcond58, label %for.inc23, label %for.body15, !dbg !362

for.inc23:                                        ; preds = %for.body15
  %add = fadd float %tm.054, %m0.0, !dbg !361
  %indvars.iv.next60 = add i64 %indvars.iv59, 1, !dbg !348
  %lftr.wideiv61 = trunc i64 %indvars.iv.next60 to i32, !dbg !348
  %exitcond62 = icmp eq i32 %lftr.wideiv61, %gnx, !dbg !348
  br i1 %exitcond62, label %for.cond26.preheader, label %for.body, !dbg !348

for.body29:                                       ; preds = %for.body29, %for.cond26.preheader
  %indvars.iv = phi i64 [ 0, %for.cond26.preheader ], [ %indvars.iv.next, %for.body29 ]
  %arrayidx31 = getelementptr inbounds float* %xcm, i64 %indvars.iv, !dbg !363
  %6 = load float* %arrayidx31, align 4, !dbg !363, !tbaa !262
  %div = fdiv float %6, %tm.0.lcssa, !dbg !363
  store float %div, float* %arrayidx31, align 4, !dbg !363, !tbaa !262
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !355
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !355
  %exitcond = icmp eq i32 %lftr.wideiv, 3, !dbg !355
  br i1 %exitcond, label %for.end34, label %for.body29, !dbg !355

for.end34:                                        ; preds = %for.body29
  ret float %tm.0.lcssa, !dbg !364
}

; Function Attrs: nounwind optsize uwtable
define float @sub_xcm([3 x float]* nocapture %x, i32 %gnx, i32* %index, %struct.t_atom* %atom, float* nocapture %xcm, i32 %bQ) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{[3 x float]* %x}, i64 0, metadata !97), !dbg !365
  tail call void @llvm.dbg.value(metadata !{i32 %gnx}, i64 0, metadata !98), !dbg !365
  tail call void @llvm.dbg.value(metadata !{i32* %index}, i64 0, metadata !99), !dbg !365
  tail call void @llvm.dbg.value(metadata !{%struct.t_atom* %atom}, i64 0, metadata !100), !dbg !365
  tail call void @llvm.dbg.value(metadata !{float* %xcm}, i64 0, metadata !101), !dbg !365
  tail call void @llvm.dbg.value(metadata !{i32 %bQ}, i64 0, metadata !102), !dbg !366
  %call = tail call float @calc_xcm([3 x float]* %x, i32 %gnx, i32* %index, %struct.t_atom* %atom, float* %xcm, i32 %bQ) #7, !dbg !367
  tail call void @llvm.dbg.value(metadata !{float %call}, i64 0, metadata !105), !dbg !367
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !103), !dbg !368
  %cmp10 = icmp sgt i32 %gnx, 0, !dbg !368
  br i1 %cmp10, label %for.body.lr.ph, label %for.end, !dbg !368

for.body.lr.ph:                                   ; preds = %entry
  %tobool = icmp eq i32* %index, null, !dbg !370
  %arrayidx3.i = getelementptr inbounds float* %xcm, i64 1, !dbg !372
  %arrayidx6.i = getelementptr inbounds float* %xcm, i64 2, !dbg !374
  br label %for.body, !dbg !368

for.body:                                         ; preds = %cond.end, %for.body.lr.ph
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %cond.end ]
  %0 = trunc i64 %indvars.iv to i32, !dbg !370
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !370

cond.true:                                        ; preds = %for.body
  %arrayidx = getelementptr inbounds i32* %index, i64 %indvars.iv, !dbg !370
  %1 = load i32* %arrayidx, align 4, !dbg !370, !tbaa !260
  br label %cond.end, !dbg !370

cond.end:                                         ; preds = %for.body, %cond.true
  %cond = phi i32 [ %1, %cond.true ], [ %0, %for.body ], !dbg !370
  tail call void @llvm.dbg.value(metadata !{i32 %cond}, i64 0, metadata !104), !dbg !370
  %idxprom1 = sext i32 %cond to i64, !dbg !373
  %arraydecay = getelementptr inbounds [3 x float]* %x, i64 %idxprom1, i64 0, !dbg !373
  tail call void @llvm.dbg.value(metadata !{float* %arraydecay}, i64 0, metadata !375), !dbg !376
  tail call void @llvm.dbg.value(metadata !{float* %xcm}, i64 0, metadata !377), !dbg !376
  %2 = load float* %arraydecay, align 4, !dbg !378, !tbaa !262
  %3 = load float* %xcm, align 4, !dbg !378, !tbaa !262
  %sub.i = fsub float %2, %3, !dbg !378
  tail call void @llvm.dbg.value(metadata !{float %sub.i}, i64 0, metadata !379), !dbg !378
  %arrayidx2.i = getelementptr inbounds [3 x float]* %x, i64 %idxprom1, i64 1, !dbg !372
  %4 = load float* %arrayidx2.i, align 4, !dbg !372, !tbaa !262
  %5 = load float* %arrayidx3.i, align 4, !dbg !372, !tbaa !262
  %sub4.i = fsub float %4, %5, !dbg !372
  tail call void @llvm.dbg.value(metadata !{float %sub4.i}, i64 0, metadata !380), !dbg !372
  %arrayidx5.i = getelementptr inbounds [3 x float]* %x, i64 %idxprom1, i64 2, !dbg !374
  %6 = load float* %arrayidx5.i, align 4, !dbg !374, !tbaa !262
  %7 = load float* %arrayidx6.i, align 4, !dbg !374, !tbaa !262
  %sub7.i = fsub float %6, %7, !dbg !374
  tail call void @llvm.dbg.value(metadata !{float %sub7.i}, i64 0, metadata !381), !dbg !374
  store float %sub.i, float* %arraydecay, align 4, !dbg !382, !tbaa !262
  store float %sub4.i, float* %arrayidx2.i, align 4, !dbg !383, !tbaa !262
  store float %sub7.i, float* %arrayidx5.i, align 4, !dbg !384, !tbaa !262
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !368
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !368
  %exitcond = icmp eq i32 %lftr.wideiv, %gnx, !dbg !368
  br i1 %exitcond, label %for.end, label %for.body, !dbg !368

for.end:                                          ; preds = %cond.end, %entry
  ret float %call, !dbg !385
}

; Function Attrs: nounwind optsize uwtable
define void @add_xcm([3 x float]* nocapture %x, i32 %gnx, i32* %index, float* nocapture %xcm) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{[3 x float]* %x}, i64 0, metadata !110), !dbg !386
  tail call void @llvm.dbg.value(metadata !{i32 %gnx}, i64 0, metadata !111), !dbg !386
  tail call void @llvm.dbg.value(metadata !{i32* %index}, i64 0, metadata !112), !dbg !386
  tail call void @llvm.dbg.value(metadata !{float* %xcm}, i64 0, metadata !113), !dbg !386
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !114), !dbg !387
  %cmp6 = icmp sgt i32 %gnx, 0, !dbg !387
  br i1 %cmp6, label %for.body.lr.ph, label %for.end, !dbg !387

for.body.lr.ph:                                   ; preds = %entry
  %tobool = icmp eq i32* %index, null, !dbg !389
  %arrayidx3.i = getelementptr inbounds float* %xcm, i64 1, !dbg !391
  %arrayidx6.i = getelementptr inbounds float* %xcm, i64 2, !dbg !393
  br label %for.body, !dbg !387

for.body:                                         ; preds = %cond.end, %for.body.lr.ph
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %cond.end ]
  %0 = trunc i64 %indvars.iv to i32, !dbg !389
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !389

cond.true:                                        ; preds = %for.body
  %arrayidx = getelementptr inbounds i32* %index, i64 %indvars.iv, !dbg !389
  %1 = load i32* %arrayidx, align 4, !dbg !389, !tbaa !260
  br label %cond.end, !dbg !389

cond.end:                                         ; preds = %for.body, %cond.true
  %cond = phi i32 [ %1, %cond.true ], [ %0, %for.body ], !dbg !389
  tail call void @llvm.dbg.value(metadata !{i32 %cond}, i64 0, metadata !115), !dbg !389
  %idxprom1 = sext i32 %cond to i64, !dbg !392
  %arraydecay = getelementptr inbounds [3 x float]* %x, i64 %idxprom1, i64 0, !dbg !392
  tail call void @llvm.dbg.value(metadata !{float* %arraydecay}, i64 0, metadata !394), !dbg !395
  tail call void @llvm.dbg.value(metadata !{float* %xcm}, i64 0, metadata !396), !dbg !395
  %2 = load float* %arraydecay, align 4, !dbg !397, !tbaa !262
  %3 = load float* %xcm, align 4, !dbg !397, !tbaa !262
  %add.i = fadd float %2, %3, !dbg !397
  tail call void @llvm.dbg.value(metadata !{float %add.i}, i64 0, metadata !398), !dbg !397
  %arrayidx2.i = getelementptr inbounds [3 x float]* %x, i64 %idxprom1, i64 1, !dbg !391
  %4 = load float* %arrayidx2.i, align 4, !dbg !391, !tbaa !262
  %5 = load float* %arrayidx3.i, align 4, !dbg !391, !tbaa !262
  %add4.i = fadd float %4, %5, !dbg !391
  tail call void @llvm.dbg.value(metadata !{float %add4.i}, i64 0, metadata !399), !dbg !391
  %arrayidx5.i = getelementptr inbounds [3 x float]* %x, i64 %idxprom1, i64 2, !dbg !393
  %6 = load float* %arrayidx5.i, align 4, !dbg !393, !tbaa !262
  %7 = load float* %arrayidx6.i, align 4, !dbg !393, !tbaa !262
  %add7.i = fadd float %6, %7, !dbg !393
  tail call void @llvm.dbg.value(metadata !{float %add7.i}, i64 0, metadata !400), !dbg !393
  store float %add.i, float* %arraydecay, align 4, !dbg !401, !tbaa !262
  store float %add4.i, float* %arrayidx2.i, align 4, !dbg !402, !tbaa !262
  store float %add7.i, float* %arrayidx5.i, align 4, !dbg !403, !tbaa !262
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !387
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !387
  %exitcond = icmp eq i32 %lftr.wideiv, %gnx, !dbg !387
  br i1 %exitcond, label %for.end, label %for.body, !dbg !387

for.end:                                          ; preds = %cond.end, %entry
  ret void, !dbg !404
}

; Function Attrs: nounwind optsize uwtable
define void @orient_princ(%struct.t_atoms* nocapture %atoms, i32 %isize, i32* nocapture %index, i32 %natoms, [3 x float]* nocapture %x, [3 x float]* %v, float* %d) #0 {
entry:
  %xcm = alloca [3 x float], align 4
  %prcomp = alloca [3 x float], align 4
  %trans = alloca [3 x [3 x float]], align 16
  call void @llvm.dbg.value(metadata !{%struct.t_atoms* %atoms}, i64 0, metadata !175), !dbg !405
  call void @llvm.dbg.value(metadata !{i32 %isize}, i64 0, metadata !176), !dbg !405
  call void @llvm.dbg.value(metadata !{i32* %index}, i64 0, metadata !177), !dbg !405
  call void @llvm.dbg.value(metadata !{i32 %natoms}, i64 0, metadata !178), !dbg !406
  call void @llvm.dbg.value(metadata !{[3 x float]* %x}, i64 0, metadata !179), !dbg !406
  call void @llvm.dbg.value(metadata !{[3 x float]* %v}, i64 0, metadata !180), !dbg !406
  call void @llvm.dbg.value(metadata !{float* %d}, i64 0, metadata !181), !dbg !406
  call void @llvm.dbg.declare(metadata !{[3 x float]* %xcm}, metadata !183), !dbg !407
  call void @llvm.dbg.declare(metadata !{[3 x float]* %prcomp}, metadata !184), !dbg !407
  %0 = bitcast [3 x [3 x float]]* %trans to i8*, !dbg !408
  call void @llvm.lifetime.start(i64 36, i8* %0) #4, !dbg !408
  call void @llvm.dbg.declare(metadata !{[3 x [3 x float]]* %trans}, metadata !185), !dbg !408
  %atom = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 1, !dbg !409
  %1 = load %struct.t_atom** %atom, align 8, !dbg !409, !tbaa !240
  %arraydecay = getelementptr inbounds [3 x [3 x float]]* %trans, i64 0, i64 0, !dbg !409
  %arraydecay1 = getelementptr inbounds [3 x float]* %prcomp, i64 0, i64 0, !dbg !409
  call void @principal_comp(i32 %isize, i32* %index, %struct.t_atom* %1, [3 x float]* %x, [3 x float]* %arraydecay, float* %arraydecay1) #7, !dbg !409
  %tobool = icmp eq float* %d, null, !dbg !410
  br i1 %tobool, label %if.end, label %if.then, !dbg !410

if.then:                                          ; preds = %entry
  tail call void @llvm.dbg.value(metadata !{float* %arraydecay1}, i64 0, metadata !411), !dbg !413
  tail call void @llvm.dbg.value(metadata !{float* %d}, i64 0, metadata !414), !dbg !413
  %2 = load float* %arraydecay1, align 4, !dbg !415, !tbaa !262
  store float %2, float* %d, align 4, !dbg !415, !tbaa !262
  %arrayidx2.i = getelementptr inbounds [3 x float]* %prcomp, i64 0, i64 1, !dbg !416
  %3 = load float* %arrayidx2.i, align 4, !dbg !416, !tbaa !262
  %arrayidx3.i = getelementptr inbounds float* %d, i64 1, !dbg !416
  store float %3, float* %arrayidx3.i, align 4, !dbg !416, !tbaa !262
  %arrayidx4.i = getelementptr inbounds [3 x float]* %prcomp, i64 0, i64 2, !dbg !417
  %4 = load float* %arrayidx4.i, align 4, !dbg !417, !tbaa !262
  %arrayidx5.i = getelementptr inbounds float* %d, i64 2, !dbg !417
  store float %4, float* %arrayidx5.i, align 4, !dbg !417, !tbaa !262
  br label %if.end, !dbg !412

if.end:                                           ; preds = %entry, %if.then
  tail call void @llvm.dbg.value(metadata !{[3 x float]* %arraydecay}, i64 0, metadata !418), !dbg !420
  %arrayidx1.i = getelementptr inbounds [3 x [3 x float]]* %trans, i64 0, i64 0, i64 0, !dbg !421
  %5 = load float* %arrayidx1.i, align 16, !dbg !421, !tbaa !262
  %arrayidx3.i26 = getelementptr inbounds [3 x [3 x float]]* %trans, i64 0, i64 1, i64 1, !dbg !421
  %6 = load float* %arrayidx3.i26, align 4, !dbg !421, !tbaa !262
  %arrayidx5.i27 = getelementptr inbounds [3 x [3 x float]]* %trans, i64 0, i64 2, i64 2, !dbg !421
  %7 = load float* %arrayidx5.i27, align 8, !dbg !421, !tbaa !262
  %mul.i = fmul float %6, %7, !dbg !421
  %arrayidx7.i = getelementptr inbounds [3 x [3 x float]]* %trans, i64 0, i64 2, i64 1, !dbg !421
  %8 = load float* %arrayidx7.i, align 4, !dbg !421, !tbaa !262
  %arrayidx9.i = getelementptr inbounds [3 x [3 x float]]* %trans, i64 0, i64 1, i64 2, !dbg !421
  %9 = load float* %arrayidx9.i, align 4, !dbg !421, !tbaa !262
  %mul10.i = fmul float %8, %9, !dbg !421
  %sub.i = fsub float %mul.i, %mul10.i, !dbg !421
  %mul11.i = fmul float %5, %sub.i, !dbg !421
  %arrayidx13.i = getelementptr inbounds [3 x [3 x float]]* %trans, i64 0, i64 1, i64 0, !dbg !421
  %10 = load float* %arrayidx13.i, align 4, !dbg !421, !tbaa !262
  %arrayidx15.i = getelementptr inbounds [3 x [3 x float]]* %trans, i64 0, i64 0, i64 1, !dbg !421
  %11 = load float* %arrayidx15.i, align 4, !dbg !421, !tbaa !262
  %mul18.i = fmul float %7, %11, !dbg !421
  %arrayidx22.i = getelementptr inbounds [3 x [3 x float]]* %trans, i64 0, i64 0, i64 2, !dbg !421
  %12 = load float* %arrayidx22.i, align 8, !dbg !421, !tbaa !262
  %mul23.i = fmul float %8, %12, !dbg !421
  %sub24.i = fsub float %mul18.i, %mul23.i, !dbg !421
  %mul25.i = fmul float %10, %sub24.i, !dbg !421
  %sub26.i = fsub float %mul11.i, %mul25.i, !dbg !421
  %arrayidx28.i = getelementptr inbounds [3 x [3 x float]]* %trans, i64 0, i64 2, i64 0, !dbg !421
  %13 = load float* %arrayidx28.i, align 8, !dbg !421, !tbaa !262
  %mul33.i = fmul float %9, %11, !dbg !421
  %mul38.i = fmul float %6, %12, !dbg !421
  %sub39.i = fsub float %mul33.i, %mul38.i, !dbg !421
  %mul40.i = fmul float %13, %sub39.i, !dbg !421
  %add.i = fadd float %mul40.i, %sub26.i, !dbg !421
  %cmp = fcmp olt float %add.i, 0.000000e+00, !dbg !419
  br i1 %cmp, label %for.body, label %if.end10, !dbg !419

for.body:                                         ; preds = %if.end, %for.body.for.body_crit_edge
  %14 = phi float [ %.pre, %for.body.for.body_crit_edge ], [ %13, %if.end ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body.for.body_crit_edge ], [ 0, %if.end ]
  %arrayidx6 = getelementptr inbounds [3 x [3 x float]]* %trans, i64 0, i64 2, i64 %indvars.iv, !dbg !423
  %sub = fsub float -0.000000e+00, %14, !dbg !423
  store float %sub, float* %arrayidx6, align 4, !dbg !423, !tbaa !262
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !426
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !426
  %exitcond = icmp eq i32 %lftr.wideiv, 3, !dbg !426
  br i1 %exitcond, label %if.end10, label %for.body.for.body_crit_edge, !dbg !426

for.body.for.body_crit_edge:                      ; preds = %for.body
  %arrayidx6.phi.trans.insert = getelementptr inbounds [3 x [3 x float]]* %trans, i64 0, i64 2, i64 %indvars.iv.next
  %.pre = load float* %arrayidx6.phi.trans.insert, align 4, !dbg !423, !tbaa !262
  br label %for.body, !dbg !426

if.end10:                                         ; preds = %for.body, %if.end
  call void @rotate_atoms(i32 %natoms, i32* null, [3 x float]* %x, [3 x float]* %arraydecay) #7, !dbg !427
  %tobool12 = icmp eq [3 x float]* %v, null, !dbg !428
  br i1 %tobool12, label %if.end15, label %if.then13, !dbg !428

if.then13:                                        ; preds = %if.end10
  call void @rotate_atoms(i32 %natoms, i32* null, [3 x float]* %v, [3 x float]* %arraydecay) #7, !dbg !428
  br label %if.end15, !dbg !428

if.end15:                                         ; preds = %if.end10, %if.then13
  %arraydecay16 = getelementptr inbounds [3 x float]* %xcm, i64 0, i64 0, !dbg !429
  call void @add_xcm([3 x float]* %x, i32 %natoms, i32* null, float* %arraydecay16) #7, !dbg !429
  call void @llvm.lifetime.end(i64 36, i8* %0) #4, !dbg !430
  ret void, !dbg !430
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #4

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #4

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

declare float @fabsf(float)

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #4

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind optsize }
attributes #6 = { nounwind optsize readnone }
attributes #7 = { optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/princ.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/princ.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !67, metadata !80, metadata !95, metadata !106, metadata !116, metadata !189, metadata !196, metadata !204, metadata !213, metadata !220, metadata !225}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"principal_comp", metadata !"principal_comp", metadata !"", i32 85, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32, i32*, %struct.t_atom*, [3 x float]*, [3 x float]*, float*)* @principal_comp, null, null, metadata !40, i32 87} ; [ DW_TAG_subprogram ] [line 85] [def] [scope 87] [principal_comp]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/princ.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{null, metadata !8, metadata !9, metadata !11, metadata !33, metadata !38, metadata !39}
!8 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!9 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from atom_id]
!10 = metadata !{i32 786454, metadata !1, null, metadata !"atom_id", i32 73, i64 0, i64 0, i64 0, i32 0, metadata !8} ; [ DW_TAG_typedef ] [atom_id] [line 73, size 0, align 0, offset 0] [from int]
!11 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !12} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_atom]
!12 = metadata !{i32 786454, metadata !1, null, metadata !"t_atom", i32 57, i64 0, i64 0, i64 0, i32 0, metadata !13} ; [ DW_TAG_typedef ] [t_atom] [line 57, size 0, align 0, offset 0] [from ]
!13 = metadata !{i32 786451, metadata !14, null, metadata !"", i32 48, i64 320, i64 32, i32 0, i32 0, null, metadata !15, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 48, size 320, align 32, offset 0] [from ]
!14 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/types/atoms.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!15 = metadata !{metadata !16, metadata !19, metadata !20, metadata !21, metadata !22, metadata !24, metadata !25, metadata !26, metadata !27, metadata !32}
!16 = metadata !{i32 786445, metadata !14, metadata !13, metadata !"m", i32 49, i64 32, i64 32, i64 0, i32 0, metadata !17} ; [ DW_TAG_member ] [m] [line 49, size 32, align 32, offset 0] [from real]
!17 = metadata !{i32 786454, metadata !14, null, metadata !"real", i32 87, i64 0, i64 0, i64 0, i32 0, metadata !18} ; [ DW_TAG_typedef ] [real] [line 87, size 0, align 0, offset 0] [from float]
!18 = metadata !{i32 786468, null, null, metadata !"float", i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [float] [line 0, size 32, align 32, offset 0, enc DW_ATE_float]
!19 = metadata !{i32 786445, metadata !14, metadata !13, metadata !"q", i32 49, i64 32, i64 32, i64 32, i32 0, metadata !17} ; [ DW_TAG_member ] [q] [line 49, size 32, align 32, offset 32] [from real]
!20 = metadata !{i32 786445, metadata !14, metadata !13, metadata !"mB", i32 50, i64 32, i64 32, i64 64, i32 0, metadata !17} ; [ DW_TAG_member ] [mB] [line 50, size 32, align 32, offset 64] [from real]
!21 = metadata !{i32 786445, metadata !14, metadata !13, metadata !"qB", i32 50, i64 32, i64 32, i64 96, i32 0, metadata !17} ; [ DW_TAG_member ] [qB] [line 50, size 32, align 32, offset 96] [from real]
!22 = metadata !{i32 786445, metadata !14, metadata !13, metadata !"type", i32 51, i64 16, i64 16, i64 128, i32 0, metadata !23} ; [ DW_TAG_member ] [type] [line 51, size 16, align 16, offset 128] [from unsigned short]
!23 = metadata !{i32 786468, null, null, metadata !"unsigned short", i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned short] [line 0, size 16, align 16, offset 0, enc DW_ATE_unsigned]
!24 = metadata !{i32 786445, metadata !14, metadata !13, metadata !"typeB", i32 52, i64 16, i64 16, i64 144, i32 0, metadata !23} ; [ DW_TAG_member ] [typeB] [line 52, size 16, align 16, offset 144] [from unsigned short]
!25 = metadata !{i32 786445, metadata !14, metadata !13, metadata !"ptype", i32 53, i64 32, i64 32, i64 160, i32 0, metadata !8} ; [ DW_TAG_member ] [ptype] [line 53, size 32, align 32, offset 160] [from int]
!26 = metadata !{i32 786445, metadata !14, metadata !13, metadata !"resnr", i32 54, i64 32, i64 32, i64 192, i32 0, metadata !8} ; [ DW_TAG_member ] [resnr] [line 54, size 32, align 32, offset 192] [from int]
!27 = metadata !{i32 786445, metadata !14, metadata !13, metadata !"grpnr", i32 55, i64 72, i64 8, i64 224, i32 0, metadata !28} ; [ DW_TAG_member ] [grpnr] [line 55, size 72, align 8, offset 224] [from ]
!28 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 72, i64 8, i32 0, i32 0, metadata !29, metadata !30, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 72, align 8, offset 0] [from unsigned char]
!29 = metadata !{i32 786468, null, null, metadata !"unsigned char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ] [unsigned char] [line 0, size 8, align 8, offset 0, enc DW_ATE_unsigned_char]
!30 = metadata !{metadata !31}
!31 = metadata !{i32 786465, i64 0, i64 9}        ; [ DW_TAG_subrange_type ] [0, 8]
!32 = metadata !{i32 786445, metadata !14, metadata !13, metadata !"chain", i32 56, i64 8, i64 8, i64 296, i32 0, metadata !29} ; [ DW_TAG_member ] [chain] [line 56, size 8, align 8, offset 296] [from unsigned char]
!33 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !34} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from rvec]
!34 = metadata !{i32 786454, metadata !1, null, metadata !"rvec", i32 101, i64 0, i64 0, i64 0, i32 0, metadata !35} ; [ DW_TAG_typedef ] [rvec] [line 101, size 0, align 0, offset 0] [from ]
!35 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 96, i64 32, i32 0, i32 0, metadata !17, metadata !36, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 96, align 32, offset 0] [from real]
!36 = metadata !{metadata !37}
!37 = metadata !{i32 786465, i64 0, i64 3}        ; [ DW_TAG_subrange_type ] [0, 2]
!38 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !35} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!39 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !17} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from real]
!40 = metadata !{metadata !41, metadata !42, metadata !43, metadata !44, metadata !45, metadata !46, metadata !47, metadata !48, metadata !49, metadata !50, metadata !51, metadata !52, metadata !53, metadata !54, metadata !55, metadata !56, metadata !60, metadata !64, metadata !65, metadata !66}
!41 = metadata !{i32 786689, metadata !4, metadata !"n", metadata !5, i32 16777301, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n] [line 85]
!42 = metadata !{i32 786689, metadata !4, metadata !"index", metadata !5, i32 33554517, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [index] [line 85]
!43 = metadata !{i32 786689, metadata !4, metadata !"atom", metadata !5, i32 50331733, metadata !11, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [atom] [line 85]
!44 = metadata !{i32 786689, metadata !4, metadata !"x", metadata !5, i32 67108949, metadata !33, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x] [line 85]
!45 = metadata !{i32 786689, metadata !4, metadata !"trans", metadata !5, i32 83886166, metadata !38, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [trans] [line 86]
!46 = metadata !{i32 786689, metadata !4, metadata !"d", metadata !5, i32 100663382, metadata !39, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [d] [line 86]
!47 = metadata !{i32 786688, metadata !4, metadata !"i", metadata !5, i32 88, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 88]
!48 = metadata !{i32 786688, metadata !4, metadata !"j", metadata !5, i32 88, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 88]
!49 = metadata !{i32 786688, metadata !4, metadata !"ai", metadata !5, i32 88, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ai] [line 88]
!50 = metadata !{i32 786688, metadata !4, metadata !"m", metadata !5, i32 88, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [m] [line 88]
!51 = metadata !{i32 786688, metadata !4, metadata !"nrot", metadata !5, i32 88, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nrot] [line 88]
!52 = metadata !{i32 786688, metadata !4, metadata !"mm", metadata !5, i32 89, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [mm] [line 89]
!53 = metadata !{i32 786688, metadata !4, metadata !"rx", metadata !5, i32 89, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rx] [line 89]
!54 = metadata !{i32 786688, metadata !4, metadata !"ry", metadata !5, i32 89, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ry] [line 89]
!55 = metadata !{i32 786688, metadata !4, metadata !"rz", metadata !5, i32 89, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rz] [line 89]
!56 = metadata !{i32 786688, metadata !4, metadata !"inten", metadata !5, i32 90, metadata !57, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [inten] [line 90]
!57 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !58} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!58 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !59} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from double]
!59 = metadata !{i32 786468, null, null, metadata !"double", i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [double] [line 0, size 64, align 64, offset 0, enc DW_ATE_float]
!60 = metadata !{i32 786688, metadata !4, metadata !"dd", metadata !5, i32 90, metadata !61, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dd] [line 90]
!61 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 256, i64 64, i32 0, i32 0, metadata !59, metadata !62, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 256, align 64, offset 0] [from double]
!62 = metadata !{metadata !63}
!63 = metadata !{i32 786465, i64 0, i64 4}        ; [ DW_TAG_subrange_type ] [0, 3]
!64 = metadata !{i32 786688, metadata !4, metadata !"tvec", metadata !5, i32 90, metadata !61, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tvec] [line 90]
!65 = metadata !{i32 786688, metadata !4, metadata !"ev", metadata !5, i32 90, metadata !57, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ev] [line 90]
!66 = metadata !{i32 786688, metadata !4, metadata !"temp", metadata !5, i32 94, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [temp] [line 94]
!67 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"rotate_atoms", metadata !"rotate_atoms", metadata !"", i32 173, metadata !68, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32, i32*, [3 x float]*, [3 x float]*)* @rotate_atoms, null, null, metadata !70, i32 174} ; [ DW_TAG_subprogram ] [line 173] [def] [scope 174] [rotate_atoms]
!68 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !69, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!69 = metadata !{null, metadata !8, metadata !9, metadata !33, metadata !38}
!70 = metadata !{metadata !71, metadata !72, metadata !73, metadata !74, metadata !75, metadata !76, metadata !77, metadata !78, metadata !79}
!71 = metadata !{i32 786689, metadata !67, metadata !"gnx", metadata !5, i32 16777389, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [gnx] [line 173]
!72 = metadata !{i32 786689, metadata !67, metadata !"index", metadata !5, i32 33554605, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [index] [line 173]
!73 = metadata !{i32 786689, metadata !67, metadata !"x", metadata !5, i32 50331821, metadata !33, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x] [line 173]
!74 = metadata !{i32 786689, metadata !67, metadata !"trans", metadata !5, i32 67109037, metadata !38, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [trans] [line 173]
!75 = metadata !{i32 786688, metadata !67, metadata !"xt", metadata !5, i32 175, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xt] [line 175]
!76 = metadata !{i32 786688, metadata !67, metadata !"yt", metadata !5, i32 175, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [yt] [line 175]
!77 = metadata !{i32 786688, metadata !67, metadata !"zt", metadata !5, i32 175, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [zt] [line 175]
!78 = metadata !{i32 786688, metadata !67, metadata !"i", metadata !5, i32 176, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 176]
!79 = metadata !{i32 786688, metadata !67, metadata !"ii", metadata !5, i32 176, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ii] [line 176]
!80 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"calc_xcm", metadata !"calc_xcm", metadata !"", i32 189, metadata !81, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, float ([3 x float]*, i32, i32*, %struct.t_atom*, float*, i32)* @calc_xcm, null, null, metadata !83, i32 191} ; [ DW_TAG_subprogram ] [line 189] [def] [scope 191] [calc_xcm]
!81 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !82, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!82 = metadata !{metadata !17, metadata !33, metadata !8, metadata !9, metadata !11, metadata !39, metadata !8}
!83 = metadata !{metadata !84, metadata !85, metadata !86, metadata !87, metadata !88, metadata !89, metadata !90, metadata !91, metadata !92, metadata !93, metadata !94}
!84 = metadata !{i32 786689, metadata !80, metadata !"x", metadata !5, i32 16777405, metadata !33, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x] [line 189]
!85 = metadata !{i32 786689, metadata !80, metadata !"gnx", metadata !5, i32 33554621, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [gnx] [line 189]
!86 = metadata !{i32 786689, metadata !80, metadata !"index", metadata !5, i32 50331837, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [index] [line 189]
!87 = metadata !{i32 786689, metadata !80, metadata !"atom", metadata !5, i32 67109053, metadata !11, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [atom] [line 189]
!88 = metadata !{i32 786689, metadata !80, metadata !"xcm", metadata !5, i32 83886269, metadata !39, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [xcm] [line 189]
!89 = metadata !{i32 786689, metadata !80, metadata !"bQ", metadata !5, i32 100663486, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [bQ] [line 190]
!90 = metadata !{i32 786688, metadata !80, metadata !"i", metadata !5, i32 192, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 192]
!91 = metadata !{i32 786688, metadata !80, metadata !"ii", metadata !5, i32 192, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ii] [line 192]
!92 = metadata !{i32 786688, metadata !80, metadata !"m", metadata !5, i32 192, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [m] [line 192]
!93 = metadata !{i32 786688, metadata !80, metadata !"m0", metadata !5, i32 193, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [m0] [line 193]
!94 = metadata !{i32 786688, metadata !80, metadata !"tm", metadata !5, i32 193, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tm] [line 193]
!95 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"sub_xcm", metadata !"sub_xcm", metadata !"", i32 217, metadata !81, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, float ([3 x float]*, i32, i32*, %struct.t_atom*, float*, i32)* @sub_xcm, null, null, metadata !96, i32 219} ; [ DW_TAG_subprogram ] [line 217] [def] [scope 219] [sub_xcm]
!96 = metadata !{metadata !97, metadata !98, metadata !99, metadata !100, metadata !101, metadata !102, metadata !103, metadata !104, metadata !105}
!97 = metadata !{i32 786689, metadata !95, metadata !"x", metadata !5, i32 16777433, metadata !33, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x] [line 217]
!98 = metadata !{i32 786689, metadata !95, metadata !"gnx", metadata !5, i32 33554649, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [gnx] [line 217]
!99 = metadata !{i32 786689, metadata !95, metadata !"index", metadata !5, i32 50331865, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [index] [line 217]
!100 = metadata !{i32 786689, metadata !95, metadata !"atom", metadata !5, i32 67109081, metadata !11, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [atom] [line 217]
!101 = metadata !{i32 786689, metadata !95, metadata !"xcm", metadata !5, i32 83886297, metadata !39, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [xcm] [line 217]
!102 = metadata !{i32 786689, metadata !95, metadata !"bQ", metadata !5, i32 100663514, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [bQ] [line 218]
!103 = metadata !{i32 786688, metadata !95, metadata !"i", metadata !5, i32 220, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 220]
!104 = metadata !{i32 786688, metadata !95, metadata !"ii", metadata !5, i32 220, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ii] [line 220]
!105 = metadata !{i32 786688, metadata !95, metadata !"tm", metadata !5, i32 221, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tm] [line 221]
!106 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"add_xcm", metadata !"add_xcm", metadata !"", i32 231, metadata !107, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void ([3 x float]*, i32, i32*, float*)* @add_xcm, null, null, metadata !109, i32 232} ; [ DW_TAG_subprogram ] [line 231] [def] [scope 232] [add_xcm]
!107 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !108, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!108 = metadata !{null, metadata !33, metadata !8, metadata !9, metadata !39}
!109 = metadata !{metadata !110, metadata !111, metadata !112, metadata !113, metadata !114, metadata !115}
!110 = metadata !{i32 786689, metadata !106, metadata !"x", metadata !5, i32 16777447, metadata !33, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x] [line 231]
!111 = metadata !{i32 786689, metadata !106, metadata !"gnx", metadata !5, i32 33554663, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [gnx] [line 231]
!112 = metadata !{i32 786689, metadata !106, metadata !"index", metadata !5, i32 50331879, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [index] [line 231]
!113 = metadata !{i32 786689, metadata !106, metadata !"xcm", metadata !5, i32 67109095, metadata !39, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [xcm] [line 231]
!114 = metadata !{i32 786688, metadata !106, metadata !"i", metadata !5, i32 233, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 233]
!115 = metadata !{i32 786688, metadata !106, metadata !"ii", metadata !5, i32 233, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ii] [line 233]
!116 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"orient_princ", metadata !"orient_princ", metadata !"", i32 253, metadata !117, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.t_atoms*, i32, i32*, i32, [3 x float]*, [3 x float]*, float*)* @orient_princ, null, null, metadata !174, i32 255} ; [ DW_TAG_subprogram ] [line 253] [def] [scope 255] [orient_princ]
!117 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !118, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!118 = metadata !{null, metadata !119, metadata !8, metadata !9, metadata !8, metadata !33, metadata !33, metadata !39}
!119 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !120} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_atoms]
!120 = metadata !{i32 786454, metadata !1, null, metadata !"t_atoms", i32 94, i64 0, i64 0, i64 0, i32 0, metadata !121} ; [ DW_TAG_typedef ] [t_atoms] [line 94, size 0, align 0, offset 0] [from ]
!121 = metadata !{i32 786451, metadata !14, null, metadata !"", i32 75, i64 10240, i64 64, i32 0, i32 0, null, metadata !122, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 75, size 10240, align 64, offset 0] [from ]
!122 = metadata !{metadata !123, metadata !124, metadata !125, metadata !130, metadata !131, metadata !132, metadata !133, metadata !134, metadata !135, metadata !136, metadata !149, metadata !157}
!123 = metadata !{i32 786445, metadata !14, metadata !121, metadata !"nr", i32 76, i64 32, i64 32, i64 0, i32 0, metadata !8} ; [ DW_TAG_member ] [nr] [line 76, size 32, align 32, offset 0] [from int]
!124 = metadata !{i32 786445, metadata !14, metadata !121, metadata !"atom", i32 77, i64 64, i64 64, i64 64, i32 0, metadata !11} ; [ DW_TAG_member ] [atom] [line 77, size 64, align 64, offset 64] [from ]
!125 = metadata !{i32 786445, metadata !14, metadata !121, metadata !"atomname", i32 80, i64 64, i64 64, i64 128, i32 0, metadata !126} ; [ DW_TAG_member ] [atomname] [line 80, size 64, align 64, offset 128] [from ]
!126 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !127} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!127 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !128} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!128 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !129} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!129 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!130 = metadata !{i32 786445, metadata !14, metadata !121, metadata !"atomtype", i32 82, i64 64, i64 64, i64 192, i32 0, metadata !126} ; [ DW_TAG_member ] [atomtype] [line 82, size 64, align 64, offset 192] [from ]
!131 = metadata !{i32 786445, metadata !14, metadata !121, metadata !"atomtypeB", i32 84, i64 64, i64 64, i64 256, i32 0, metadata !126} ; [ DW_TAG_member ] [atomtypeB] [line 84, size 64, align 64, offset 256] [from ]
!132 = metadata !{i32 786445, metadata !14, metadata !121, metadata !"nres", i32 86, i64 32, i64 32, i64 320, i32 0, metadata !8} ; [ DW_TAG_member ] [nres] [line 86, size 32, align 32, offset 320] [from int]
!133 = metadata !{i32 786445, metadata !14, metadata !121, metadata !"resname", i32 87, i64 64, i64 64, i64 384, i32 0, metadata !126} ; [ DW_TAG_member ] [resname] [line 87, size 64, align 64, offset 384] [from ]
!134 = metadata !{i32 786445, metadata !14, metadata !121, metadata !"ngrpname", i32 89, i64 32, i64 32, i64 448, i32 0, metadata !8} ; [ DW_TAG_member ] [ngrpname] [line 89, size 32, align 32, offset 448] [from int]
!135 = metadata !{i32 786445, metadata !14, metadata !121, metadata !"grpname", i32 90, i64 64, i64 64, i64 512, i32 0, metadata !126} ; [ DW_TAG_member ] [grpname] [line 90, size 64, align 64, offset 512] [from ]
!136 = metadata !{i32 786445, metadata !14, metadata !121, metadata !"excl", i32 91, i64 8448, i64 64, i64 576, i32 0, metadata !137} ; [ DW_TAG_member ] [excl] [line 91, size 8448, align 64, offset 576] [from t_block]
!137 = metadata !{i32 786454, metadata !14, null, metadata !"t_block", i32 52, i64 0, i64 0, i64 0, i32 0, metadata !138} ; [ DW_TAG_typedef ] [t_block] [line 52, size 0, align 0, offset 0] [from ]
!138 = metadata !{i32 786451, metadata !139, null, metadata !"", i32 36, i64 8448, i64 64, i32 0, i32 0, null, metadata !140, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 36, size 8448, align 64, offset 0] [from ]
!139 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/types/block.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!140 = metadata !{metadata !141, metadata !145, metadata !146, metadata !147, metadata !148}
!141 = metadata !{i32 786445, metadata !139, metadata !138, metadata !"multinr", i32 37, i64 8192, i64 32, i64 0, i32 0, metadata !142} ; [ DW_TAG_member ] [multinr] [line 37, size 8192, align 32, offset 0] [from ]
!142 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 8192, i64 32, i32 0, i32 0, metadata !8, metadata !143, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 8192, align 32, offset 0] [from int]
!143 = metadata !{metadata !144}
!144 = metadata !{i32 786465, i64 0, i64 256}     ; [ DW_TAG_subrange_type ] [0, 255]
!145 = metadata !{i32 786445, metadata !139, metadata !138, metadata !"nr", i32 43, i64 32, i64 32, i64 8192, i32 0, metadata !8} ; [ DW_TAG_member ] [nr] [line 43, size 32, align 32, offset 8192] [from int]
!146 = metadata !{i32 786445, metadata !139, metadata !138, metadata !"index", i32 44, i64 64, i64 64, i64 8256, i32 0, metadata !9} ; [ DW_TAG_member ] [index] [line 44, size 64, align 64, offset 8256] [from ]
!147 = metadata !{i32 786445, metadata !139, metadata !138, metadata !"nra", i32 45, i64 32, i64 32, i64 8320, i32 0, metadata !8} ; [ DW_TAG_member ] [nra] [line 45, size 32, align 32, offset 8320] [from int]
!148 = metadata !{i32 786445, metadata !139, metadata !138, metadata !"a", i32 46, i64 64, i64 64, i64 8384, i32 0, metadata !9} ; [ DW_TAG_member ] [a] [line 46, size 64, align 64, offset 8384] [from ]
!149 = metadata !{i32 786445, metadata !14, metadata !121, metadata !"grps", i32 92, i64 1152, i64 64, i64 9024, i32 0, metadata !150} ; [ DW_TAG_member ] [grps] [line 92, size 1152, align 64, offset 9024] [from ]
!150 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 1152, i64 64, i32 0, i32 0, metadata !151, metadata !30, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 1152, align 64, offset 0] [from t_grps]
!151 = metadata !{i32 786454, metadata !14, null, metadata !"t_grps", i32 73, i64 0, i64 0, i64 0, i32 0, metadata !152} ; [ DW_TAG_typedef ] [t_grps] [line 73, size 0, align 0, offset 0] [from ]
!152 = metadata !{i32 786451, metadata !14, null, metadata !"", i32 70, i64 128, i64 64, i32 0, i32 0, null, metadata !153, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 70, size 128, align 64, offset 0] [from ]
!153 = metadata !{metadata !154, metadata !155}
!154 = metadata !{i32 786445, metadata !14, metadata !152, metadata !"nr", i32 71, i64 32, i64 32, i64 0, i32 0, metadata !8} ; [ DW_TAG_member ] [nr] [line 71, size 32, align 32, offset 0] [from int]
!155 = metadata !{i32 786445, metadata !14, metadata !152, metadata !"nm_ind", i32 72, i64 64, i64 64, i64 64, i32 0, metadata !156} ; [ DW_TAG_member ] [nm_ind] [line 72, size 64, align 64, offset 64] [from ]
!156 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !8} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!157 = metadata !{i32 786445, metadata !14, metadata !121, metadata !"pdbinfo", i32 93, i64 64, i64 64, i64 10176, i32 0, metadata !158} ; [ DW_TAG_member ] [pdbinfo] [line 93, size 64, align 64, offset 10176] [from ]
!158 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !159} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_pdbinfo]
!159 = metadata !{i32 786454, metadata !14, null, metadata !"t_pdbinfo", i32 68, i64 0, i64 0, i64 0, i32 0, metadata !160} ; [ DW_TAG_typedef ] [t_pdbinfo] [line 68, size 0, align 0, offset 0] [from ]
!160 = metadata !{i32 786451, metadata !14, null, metadata !"", i32 59, i64 416, i64 32, i32 0, i32 0, null, metadata !161, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 59, size 416, align 32, offset 0] [from ]
!161 = metadata !{metadata !162, metadata !163, metadata !164, metadata !165, metadata !169, metadata !170, metadata !171, metadata !172}
!162 = metadata !{i32 786445, metadata !14, metadata !160, metadata !"type", i32 60, i64 32, i64 32, i64 0, i32 0, metadata !8} ; [ DW_TAG_member ] [type] [line 60, size 32, align 32, offset 0] [from int]
!163 = metadata !{i32 786445, metadata !14, metadata !160, metadata !"atomnr", i32 61, i64 32, i64 32, i64 32, i32 0, metadata !8} ; [ DW_TAG_member ] [atomnr] [line 61, size 32, align 32, offset 32] [from int]
!164 = metadata !{i32 786445, metadata !14, metadata !160, metadata !"altloc", i32 62, i64 8, i64 8, i64 64, i32 0, metadata !129} ; [ DW_TAG_member ] [altloc] [line 62, size 8, align 8, offset 64] [from char]
!165 = metadata !{i32 786445, metadata !14, metadata !160, metadata !"pdbresnr", i32 63, i64 48, i64 8, i64 72, i32 0, metadata !166} ; [ DW_TAG_member ] [pdbresnr] [line 63, size 48, align 8, offset 72] [from ]
!166 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 48, i64 8, i32 0, i32 0, metadata !129, metadata !167, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 48, align 8, offset 0] [from char]
!167 = metadata !{metadata !168}
!168 = metadata !{i32 786465, i64 0, i64 6}       ; [ DW_TAG_subrange_type ] [0, 5]
!169 = metadata !{i32 786445, metadata !14, metadata !160, metadata !"occup", i32 64, i64 32, i64 32, i64 128, i32 0, metadata !17} ; [ DW_TAG_member ] [occup] [line 64, size 32, align 32, offset 128] [from real]
!170 = metadata !{i32 786445, metadata !14, metadata !160, metadata !"bfac", i32 65, i64 32, i64 32, i64 160, i32 0, metadata !17} ; [ DW_TAG_member ] [bfac] [line 65, size 32, align 32, offset 160] [from real]
!171 = metadata !{i32 786445, metadata !14, metadata !160, metadata !"bAnisotropic", i32 66, i64 32, i64 32, i64 192, i32 0, metadata !8} ; [ DW_TAG_member ] [bAnisotropic] [line 66, size 32, align 32, offset 192] [from int]
!172 = metadata !{i32 786445, metadata !14, metadata !160, metadata !"uij", i32 67, i64 192, i64 32, i64 224, i32 0, metadata !173} ; [ DW_TAG_member ] [uij] [line 67, size 192, align 32, offset 224] [from ]
!173 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 192, i64 32, i32 0, i32 0, metadata !8, metadata !167, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 192, align 32, offset 0] [from int]
!174 = metadata !{metadata !175, metadata !176, metadata !177, metadata !178, metadata !179, metadata !180, metadata !181, metadata !182, metadata !183, metadata !184, metadata !185}
!175 = metadata !{i32 786689, metadata !116, metadata !"atoms", metadata !5, i32 16777469, metadata !119, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [atoms] [line 253]
!176 = metadata !{i32 786689, metadata !116, metadata !"isize", metadata !5, i32 33554685, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [isize] [line 253]
!177 = metadata !{i32 786689, metadata !116, metadata !"index", metadata !5, i32 50331901, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [index] [line 253]
!178 = metadata !{i32 786689, metadata !116, metadata !"natoms", metadata !5, i32 67109118, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [natoms] [line 254]
!179 = metadata !{i32 786689, metadata !116, metadata !"x", metadata !5, i32 83886334, metadata !33, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x] [line 254]
!180 = metadata !{i32 786689, metadata !116, metadata !"v", metadata !5, i32 100663550, metadata !33, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [v] [line 254]
!181 = metadata !{i32 786689, metadata !116, metadata !"d", metadata !5, i32 117440766, metadata !39, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [d] [line 254]
!182 = metadata !{i32 786688, metadata !116, metadata !"m", metadata !5, i32 256, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [m] [line 256]
!183 = metadata !{i32 786688, metadata !116, metadata !"xcm", metadata !5, i32 257, metadata !34, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xcm] [line 257]
!184 = metadata !{i32 786688, metadata !116, metadata !"prcomp", metadata !5, i32 257, metadata !34, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [prcomp] [line 257]
!185 = metadata !{i32 786688, metadata !116, metadata !"trans", metadata !5, i32 258, metadata !186, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [trans] [line 258]
!186 = metadata !{i32 786454, metadata !1, null, metadata !"matrix", i32 103, i64 0, i64 0, i64 0, i32 0, metadata !187} ; [ DW_TAG_typedef ] [matrix] [line 103, size 0, align 0, offset 0] [from ]
!187 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 288, i64 32, i32 0, i32 0, metadata !17, metadata !188, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 288, align 32, offset 0] [from real]
!188 = metadata !{metadata !37, metadata !37}
!189 = metadata !{i32 786478, metadata !190, metadata !191, metadata !"det", metadata !"det", metadata !"", i32 478, metadata !192, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !194, i32 479} ; [ DW_TAG_subprogram ] [line 478] [local] [def] [scope 479] [det]
!190 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/vec.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!191 = metadata !{i32 786473, metadata !190}      ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/vec.h]
!192 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !193, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!193 = metadata !{metadata !17, metadata !38}
!194 = metadata !{metadata !195}
!195 = metadata !{i32 786689, metadata !189, metadata !"a", metadata !191, i32 16777694, metadata !38, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [a] [line 478]
!196 = metadata !{i32 786478, metadata !190, metadata !191, metadata !"copy_rvec", metadata !"copy_rvec", metadata !"", i32 270, metadata !197, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !201, i32 271} ; [ DW_TAG_subprogram ] [line 270] [local] [def] [scope 271] [copy_rvec]
!197 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !198, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!198 = metadata !{null, metadata !199, metadata !39}
!199 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !200} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!200 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !17} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from real]
!201 = metadata !{metadata !202, metadata !203}
!202 = metadata !{i32 786689, metadata !196, metadata !"a", metadata !191, i32 16777486, metadata !199, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [a] [line 270]
!203 = metadata !{i32 786689, metadata !196, metadata !"b", metadata !191, i32 33554702, metadata !39, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [b] [line 270]
!204 = metadata !{i32 786478, metadata !190, metadata !191, metadata !"rvec_inc", metadata !"rvec_inc", metadata !"", i32 231, metadata !205, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !207, i32 232} ; [ DW_TAG_subprogram ] [line 231] [local] [def] [scope 232] [rvec_inc]
!205 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !206, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!206 = metadata !{null, metadata !39, metadata !39}
!207 = metadata !{metadata !208, metadata !209, metadata !210, metadata !211, metadata !212}
!208 = metadata !{i32 786689, metadata !204, metadata !"a", metadata !191, i32 16777447, metadata !39, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [a] [line 231]
!209 = metadata !{i32 786689, metadata !204, metadata !"b", metadata !191, i32 33554663, metadata !39, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [b] [line 231]
!210 = metadata !{i32 786688, metadata !204, metadata !"x", metadata !191, i32 233, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x] [line 233]
!211 = metadata !{i32 786688, metadata !204, metadata !"y", metadata !191, i32 233, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [y] [line 233]
!212 = metadata !{i32 786688, metadata !204, metadata !"z", metadata !191, i32 233, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [z] [line 233]
!213 = metadata !{i32 786478, metadata !190, metadata !191, metadata !"rvec_dec", metadata !"rvec_dec", metadata !"", i32 257, metadata !205, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !214, i32 258} ; [ DW_TAG_subprogram ] [line 257] [local] [def] [scope 258] [rvec_dec]
!214 = metadata !{metadata !215, metadata !216, metadata !217, metadata !218, metadata !219}
!215 = metadata !{i32 786689, metadata !213, metadata !"a", metadata !191, i32 16777473, metadata !39, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [a] [line 257]
!216 = metadata !{i32 786689, metadata !213, metadata !"b", metadata !191, i32 33554689, metadata !39, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [b] [line 257]
!217 = metadata !{i32 786688, metadata !213, metadata !"x", metadata !191, i32 259, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x] [line 259]
!218 = metadata !{i32 786688, metadata !213, metadata !"y", metadata !191, i32 259, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [y] [line 259]
!219 = metadata !{i32 786688, metadata !213, metadata !"z", metadata !191, i32 259, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [z] [line 259]
!220 = metadata !{i32 786478, metadata !190, metadata !191, metadata !"clear_rvec", metadata !"clear_rvec", metadata !"", i32 316, metadata !221, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !223, i32 317} ; [ DW_TAG_subprogram ] [line 316] [local] [def] [scope 317] [clear_rvec]
!221 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !222, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!222 = metadata !{null, metadata !39}
!223 = metadata !{metadata !224}
!224 = metadata !{i32 786689, metadata !220, metadata !"a", metadata !191, i32 16777532, metadata !39, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [a] [line 316]
!225 = metadata !{i32 786478, metadata !190, metadata !191, metadata !"sqr", metadata !"sqr", metadata !"", i32 197, metadata !226, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !228, i32 198} ; [ DW_TAG_subprogram ] [line 197] [local] [def] [scope 198] [sqr]
!226 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !227, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!227 = metadata !{metadata !17, metadata !17}
!228 = metadata !{metadata !229}
!229 = metadata !{i32 786689, metadata !225, metadata !"x", metadata !191, i32 16777413, metadata !17, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x] [line 197]
!230 = metadata !{i32 85, i32 0, metadata !4, null}
!231 = metadata !{i32 86, i32 0, metadata !4, null}
!232 = metadata !{i32 88, i32 0, metadata !4, null}
!233 = metadata !{i32 90, i32 0, metadata !4, null}
!234 = metadata !{i32 96, i32 0, metadata !4, null}
!235 = metadata !{i32 97, i32 0, metadata !4, null}
!236 = metadata !{i32 98, i32 0, metadata !237, null}
!237 = metadata !{i32 786443, metadata !1, metadata !4, i32 98, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/princ.c]
!238 = metadata !{i32 99, i32 0, metadata !239, null}
!239 = metadata !{i32 786443, metadata !1, metadata !237, i32 98, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/princ.c]
!240 = metadata !{metadata !"any pointer", metadata !241}
!241 = metadata !{metadata !"omnipotent char", metadata !242}
!242 = metadata !{metadata !"Simple C/C++ TBAA"}
!243 = metadata !{i32 100, i32 0, metadata !239, null}
!244 = metadata !{i32 101, i32 0, metadata !239, null}
!245 = metadata !{metadata !"double", metadata !241}
!246 = metadata !{i32 109, i32 0, metadata !247, null}
!247 = metadata !{i32 786443, metadata !1, metadata !248, i32 108, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/princ.c]
!248 = metadata !{i32 786443, metadata !1, metadata !4, i32 107, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/princ.c]
!249 = metadata !{i32 107, i32 0, metadata !248, null}
!250 = metadata !{i32 110, i32 0, metadata !251, null}
!251 = metadata !{i32 786443, metadata !1, metadata !4, i32 110, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/princ.c]
!252 = metadata !{i32 123, i32 0, metadata !4, null}
!253 = metadata !{i32 124, i32 0, metadata !4, null}
!254 = metadata !{i32 116, i32 0, metadata !255, null}
!255 = metadata !{i32 786443, metadata !1, metadata !251, i32 110, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/princ.c]
!256 = metadata !{i32 117, i32 0, metadata !255, null}
!257 = metadata !{i32 118, i32 0, metadata !255, null}
!258 = metadata !{i32 121, i32 0, metadata !255, null}
!259 = metadata !{i32 111, i32 0, metadata !255, null}
!260 = metadata !{metadata !"int", metadata !241}
!261 = metadata !{i32 112, i32 0, metadata !255, null}
!262 = metadata !{metadata !"float", metadata !241}
!263 = metadata !{i32 113, i32 0, metadata !255, null}
!264 = metadata !{i32 114, i32 0, metadata !255, null}
!265 = metadata !{i32 115, i32 0, metadata !255, null}
!266 = metadata !{i32 786689, metadata !225, metadata !"x", metadata !191, i32 16777413, metadata !17, i32 0, metadata !254} ; [ DW_TAG_arg_variable ] [x] [line 197]
!267 = metadata !{i32 197, i32 0, metadata !225, metadata !254}
!268 = metadata !{i32 199, i32 0, metadata !225, metadata !254}
!269 = metadata !{i32 786689, metadata !225, metadata !"x", metadata !191, i32 16777413, metadata !17, i32 0, metadata !256} ; [ DW_TAG_arg_variable ] [x] [line 197]
!270 = metadata !{i32 197, i32 0, metadata !225, metadata !256}
!271 = metadata !{i32 199, i32 0, metadata !225, metadata !256}
!272 = metadata !{i32 786689, metadata !225, metadata !"x", metadata !191, i32 16777413, metadata !17, i32 0, metadata !257} ; [ DW_TAG_arg_variable ] [x] [line 197]
!273 = metadata !{i32 197, i32 0, metadata !225, metadata !257}
!274 = metadata !{i32 119, i32 0, metadata !255, null}
!275 = metadata !{i32 120, i32 0, metadata !255, null}
!276 = metadata !{i32 125, i32 0, metadata !4, null}
!277 = metadata !{i32 130, i32 0, metadata !278, null}
!278 = metadata !{i32 786443, metadata !1, metadata !4, i32 130, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/princ.c]
!279 = metadata !{i32 131, i32 0, metadata !280, null}
!280 = metadata !{i32 786443, metadata !1, metadata !281, i32 131, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/princ.c]
!281 = metadata !{i32 786443, metadata !1, metadata !278, i32 130, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/princ.c]
!282 = metadata !{i32 132, i32 0, metadata !280, null}
!283 = metadata !{i32 136, i32 0, metadata !4, null}
!284 = metadata !{i32 151, i32 0, metadata !4, null}
!285 = metadata !{i32 151, i32 0, metadata !286, null}
!286 = metadata !{i32 786443, metadata !1, metadata !287, i32 151, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/princ.c]
!287 = metadata !{i32 786443, metadata !1, metadata !4, i32 151, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/princ.c]
!288 = metadata !{i32 151, i32 0, metadata !287, null}
!289 = metadata !{i32 151, i32 0, metadata !290, null}
!290 = metadata !{i32 786443, metadata !1, metadata !287, i32 151, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/princ.c]
!291 = metadata !{i32 151, i32 0, metadata !292, null}
!292 = metadata !{i32 786443, metadata !1, metadata !287, i32 151, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/princ.c]
!293 = metadata !{i32 152, i32 0, metadata !4, null}
!294 = metadata !{i32 152, i32 0, metadata !295, null}
!295 = metadata !{i32 786443, metadata !1, metadata !296, i32 152, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/princ.c]
!296 = metadata !{i32 786443, metadata !1, metadata !4, i32 152, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/princ.c]
!297 = metadata !{i32 152, i32 0, metadata !296, null}
!298 = metadata !{i32 152, i32 0, metadata !299, null}
!299 = metadata !{i32 786443, metadata !1, metadata !296, i32 152, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/princ.c]
!300 = metadata !{i32 152, i32 0, metadata !301, null}
!301 = metadata !{i32 786443, metadata !1, metadata !296, i32 152, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/princ.c]
!302 = metadata !{i32 153, i32 0, metadata !4, null}
!303 = metadata !{i32 153, i32 0, metadata !304, null}
!304 = metadata !{i32 786443, metadata !1, metadata !305, i32 153, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/princ.c]
!305 = metadata !{i32 786443, metadata !1, metadata !4, i32 153, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/princ.c]
!306 = metadata !{i32 153, i32 0, metadata !305, null}
!307 = metadata !{i32 153, i32 0, metadata !308, null}
!308 = metadata !{i32 786443, metadata !1, metadata !305, i32 153, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/princ.c]
!309 = metadata !{i32 153, i32 0, metadata !310, null}
!310 = metadata !{i32 786443, metadata !1, metadata !305, i32 153, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/princ.c]
!311 = metadata !{i32 160, i32 0, metadata !312, null}
!312 = metadata !{i32 786443, metadata !1, metadata !313, i32 159, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/princ.c]
!313 = metadata !{i32 786443, metadata !1, metadata !4, i32 159, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/princ.c]
!314 = metadata !{i32 161, i32 0, metadata !315, null}
!315 = metadata !{i32 786443, metadata !1, metadata !312, i32 161, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/princ.c]
!316 = metadata !{i32 162, i32 0, metadata !315, null}
!317 = metadata !{i32 159, i32 0, metadata !313, null}
!318 = metadata !{i32 166, i32 0, metadata !319, null}
!319 = metadata !{i32 786443, metadata !1, metadata !320, i32 165, i32 0, i32 25} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/princ.c]
!320 = metadata !{i32 786443, metadata !1, metadata !4, i32 165, i32 0, i32 24} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/princ.c]
!321 = metadata !{i32 167, i32 0, metadata !319, null}
!322 = metadata !{i32 165, i32 0, metadata !320, null}
!323 = metadata !{i32 169, i32 0, metadata !4, null}
!324 = metadata !{i32 170, i32 0, metadata !4, null}
!325 = metadata !{i32 171, i32 0, metadata !4, null}
!326 = metadata !{i32 173, i32 0, metadata !67, null}
!327 = metadata !{i32 178, i32 0, metadata !328, null}
!328 = metadata !{i32 786443, metadata !1, metadata !67, i32 178, i32 0, i32 26} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/princ.c]
!329 = metadata !{i32 179, i32 0, metadata !330, null}
!330 = metadata !{i32 786443, metadata !1, metadata !328, i32 178, i32 0, i32 27} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/princ.c]
!331 = metadata !{i32 183, i32 0, metadata !330, null}
!332 = metadata !{i32 184, i32 0, metadata !330, null}
!333 = metadata !{i32 185, i32 0, metadata !330, null}
!334 = metadata !{i32 180, i32 0, metadata !330, null}
!335 = metadata !{i32 181, i32 0, metadata !330, null}
!336 = metadata !{i32 182, i32 0, metadata !330, null}
!337 = metadata !{i32 187, i32 0, metadata !67, null}
!338 = metadata !{i32 189, i32 0, metadata !80, null}
!339 = metadata !{i32 190, i32 0, metadata !80, null}
!340 = metadata !{i32 786689, metadata !220, metadata !"a", metadata !191, i32 16777532, metadata !39, i32 0, metadata !341} ; [ DW_TAG_arg_variable ] [a] [line 316]
!341 = metadata !{i32 195, i32 0, metadata !80, null}
!342 = metadata !{i32 316, i32 0, metadata !220, metadata !341}
!343 = metadata !{i32 321, i32 0, metadata !220, metadata !341}
!344 = metadata !{i32 322, i32 0, metadata !220, metadata !341}
!345 = metadata !{i32 323, i32 0, metadata !220, metadata !341}
!346 = metadata !{float 0.000000e+00}
!347 = metadata !{i32 196, i32 0, metadata !80, null}
!348 = metadata !{i32 197, i32 0, metadata !349, null}
!349 = metadata !{i32 786443, metadata !1, metadata !80, i32 197, i32 0, i32 28} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/princ.c]
!350 = metadata !{i32 198, i32 0, metadata !351, null}
!351 = metadata !{i32 786443, metadata !1, metadata !349, i32 197, i32 0, i32 29} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/princ.c]
!352 = metadata !{i32 199, i32 0, metadata !351, null}
!353 = metadata !{i32 200, i32 0, metadata !354, null}
!354 = metadata !{i32 786443, metadata !1, metadata !351, i32 199, i32 0, i32 30} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/princ.c]
!355 = metadata !{i32 211, i32 0, metadata !356, null}
!356 = metadata !{i32 786443, metadata !1, metadata !80, i32 211, i32 0, i32 32} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/princ.c]
!357 = metadata !{i32 209, i32 0, metadata !358, null}
!358 = metadata !{i32 786443, metadata !1, metadata !351, i32 208, i32 0, i32 31} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/princ.c]
!359 = metadata !{i32 201, i32 0, metadata !354, null}
!360 = metadata !{i32 203, i32 0, metadata !354, null}
!361 = metadata !{i32 207, i32 0, metadata !351, null}
!362 = metadata !{i32 208, i32 0, metadata !358, null}
!363 = metadata !{i32 212, i32 0, metadata !356, null}
!364 = metadata !{i32 214, i32 0, metadata !80, null}
!365 = metadata !{i32 217, i32 0, metadata !95, null}
!366 = metadata !{i32 218, i32 0, metadata !95, null}
!367 = metadata !{i32 223, i32 0, metadata !95, null}
!368 = metadata !{i32 224, i32 0, metadata !369, null}
!369 = metadata !{i32 786443, metadata !1, metadata !95, i32 224, i32 0, i32 33} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/princ.c]
!370 = metadata !{i32 225, i32 0, metadata !371, null}
!371 = metadata !{i32 786443, metadata !1, metadata !369, i32 224, i32 0, i32 34} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/princ.c]
!372 = metadata !{i32 262, i32 0, metadata !213, metadata !373}
!373 = metadata !{i32 226, i32 0, metadata !371, null}
!374 = metadata !{i32 263, i32 0, metadata !213, metadata !373}
!375 = metadata !{i32 786689, metadata !213, metadata !"a", metadata !191, i32 16777473, metadata !39, i32 0, metadata !373} ; [ DW_TAG_arg_variable ] [a] [line 257]
!376 = metadata !{i32 257, i32 0, metadata !213, metadata !373}
!377 = metadata !{i32 786689, metadata !213, metadata !"b", metadata !191, i32 33554689, metadata !39, i32 0, metadata !373} ; [ DW_TAG_arg_variable ] [b] [line 257]
!378 = metadata !{i32 261, i32 0, metadata !213, metadata !373}
!379 = metadata !{i32 786688, metadata !213, metadata !"x", metadata !191, i32 259, metadata !17, i32 0, metadata !373} ; [ DW_TAG_auto_variable ] [x] [line 259]
!380 = metadata !{i32 786688, metadata !213, metadata !"y", metadata !191, i32 259, metadata !17, i32 0, metadata !373} ; [ DW_TAG_auto_variable ] [y] [line 259]
!381 = metadata !{i32 786688, metadata !213, metadata !"z", metadata !191, i32 259, metadata !17, i32 0, metadata !373} ; [ DW_TAG_auto_variable ] [z] [line 259]
!382 = metadata !{i32 265, i32 0, metadata !213, metadata !373}
!383 = metadata !{i32 266, i32 0, metadata !213, metadata !373}
!384 = metadata !{i32 267, i32 0, metadata !213, metadata !373}
!385 = metadata !{i32 228, i32 0, metadata !95, null}
!386 = metadata !{i32 231, i32 0, metadata !106, null}
!387 = metadata !{i32 235, i32 0, metadata !388, null}
!388 = metadata !{i32 786443, metadata !1, metadata !106, i32 235, i32 0, i32 35} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/princ.c]
!389 = metadata !{i32 236, i32 0, metadata !390, null}
!390 = metadata !{i32 786443, metadata !1, metadata !388, i32 235, i32 0, i32 36} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/princ.c]
!391 = metadata !{i32 236, i32 0, metadata !204, metadata !392}
!392 = metadata !{i32 237, i32 0, metadata !390, null}
!393 = metadata !{i32 237, i32 0, metadata !204, metadata !392}
!394 = metadata !{i32 786689, metadata !204, metadata !"a", metadata !191, i32 16777447, metadata !39, i32 0, metadata !392} ; [ DW_TAG_arg_variable ] [a] [line 231]
!395 = metadata !{i32 231, i32 0, metadata !204, metadata !392}
!396 = metadata !{i32 786689, metadata !204, metadata !"b", metadata !191, i32 33554663, metadata !39, i32 0, metadata !392} ; [ DW_TAG_arg_variable ] [b] [line 231]
!397 = metadata !{i32 235, i32 0, metadata !204, metadata !392}
!398 = metadata !{i32 786688, metadata !204, metadata !"x", metadata !191, i32 233, metadata !17, i32 0, metadata !392} ; [ DW_TAG_auto_variable ] [x] [line 233]
!399 = metadata !{i32 786688, metadata !204, metadata !"y", metadata !191, i32 233, metadata !17, i32 0, metadata !392} ; [ DW_TAG_auto_variable ] [y] [line 233]
!400 = metadata !{i32 786688, metadata !204, metadata !"z", metadata !191, i32 233, metadata !17, i32 0, metadata !392} ; [ DW_TAG_auto_variable ] [z] [line 233]
!401 = metadata !{i32 239, i32 0, metadata !204, metadata !392}
!402 = metadata !{i32 240, i32 0, metadata !204, metadata !392}
!403 = metadata !{i32 241, i32 0, metadata !204, metadata !392}
!404 = metadata !{i32 239, i32 0, metadata !106, null}
!405 = metadata !{i32 253, i32 0, metadata !116, null}
!406 = metadata !{i32 254, i32 0, metadata !116, null}
!407 = metadata !{i32 257, i32 0, metadata !116, null}
!408 = metadata !{i32 258, i32 0, metadata !116, null}
!409 = metadata !{i32 260, i32 0, metadata !116, null}
!410 = metadata !{i32 261, i32 0, metadata !116, null}
!411 = metadata !{i32 786689, metadata !196, metadata !"a", metadata !191, i32 16777486, metadata !199, i32 0, metadata !412} ; [ DW_TAG_arg_variable ] [a] [line 270]
!412 = metadata !{i32 262, i32 0, metadata !116, null}
!413 = metadata !{i32 270, i32 0, metadata !196, metadata !412}
!414 = metadata !{i32 786689, metadata !196, metadata !"b", metadata !191, i32 33554702, metadata !39, i32 0, metadata !412} ; [ DW_TAG_arg_variable ] [b] [line 270]
!415 = metadata !{i32 272, i32 0, metadata !196, metadata !412}
!416 = metadata !{i32 273, i32 0, metadata !196, metadata !412}
!417 = metadata !{i32 274, i32 0, metadata !196, metadata !412}
!418 = metadata !{i32 786689, metadata !189, metadata !"a", metadata !191, i32 16777694, metadata !38, i32 0, metadata !419} ; [ DW_TAG_arg_variable ] [a] [line 478]
!419 = metadata !{i32 265, i32 0, metadata !116, null}
!420 = metadata !{i32 478, i32 0, metadata !189, metadata !419}
!421 = metadata !{i32 480, i32 0, metadata !422, metadata !419}
!422 = metadata !{i32 786443, metadata !190, metadata !189} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/vec.h]
!423 = metadata !{i32 267, i32 0, metadata !424, null}
!424 = metadata !{i32 786443, metadata !1, metadata !425, i32 266, i32 0, i32 38} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/princ.c]
!425 = metadata !{i32 786443, metadata !1, metadata !116, i32 265, i32 0, i32 37} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/princ.c]
!426 = metadata !{i32 266, i32 0, metadata !424, null}
!427 = metadata !{i32 269, i32 0, metadata !116, null}
!428 = metadata !{i32 270, i32 0, metadata !116, null}
!429 = metadata !{i32 272, i32 0, metadata !116, null}
!430 = metadata !{i32 273, i32 0, metadata !116, null}
