; ModuleID = '../../SPEC/benchspec/CPU2006/435.gromacs/src/stat.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.t_bin = type { i32, i32, double* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.t_commrec = type { i32, i32, i32, i32, i32, i32 }
%struct.t_grpopts = type { i32, i32, i32, i32, float*, float*, float*, [3 x float]*, [3 x i32]*, i32* }
%struct.t_groups = type { %struct.t_grp_ener, %struct.t_grp_tcstat*, %struct.t_grp_acc*, %struct.t_cos_acc }
%struct.t_grp_ener = type { i32, [7 x float*] }
%struct.t_grp_tcstat = type { float, float, [3 x [3 x float]], float, float }
%struct.t_grp_acc = type { i32, i32*, float, [3 x float], [3 x float], [3 x float] }
%struct.t_cos_acc = type { float, float, float }
%struct.t_nrnb = type { [129 x double] }
%struct.t_vcm = type { i32, i32, [3 x float]*, [3 x float]*, [3 x float]*, [3 x float]*, [3 x float]*, [3 x [3 x float]]*, float*, i8**, i16* }
%struct.t_nsborder = type { i32, i32, i32, i32, i32, i32, i32, [256 x i32], [256 x i32], [256 x i32], [256 x i32] }
%struct.t_mdatoms = type { float, i32, float*, float*, float*, float*, float*, float*, float*, i32*, i32*, i32*, i32*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16* }

@global_stat.rb = internal unnamed_addr global %struct.t_bin* null, align 8
@global_stat.itc = internal unnamed_addr global i32* null, align 8
@.str = private unnamed_addr constant [4 x i8] c"itc\00", align 1
@.str1 = private unnamed_addr constant [52 x i8] c"../../SPEC/benchspec/CPU2006/435.gromacs/src/stat.c\00", align 1
@write_traj.fp = internal unnamed_addr global i32 -1, align 4
@.str2 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str3 = private unnamed_addr constant [3 x i8] c"xx\00", align 1
@.str4 = private unnamed_addr constant [3 x i8] c"vv\00", align 1
@.str5 = private unnamed_addr constant [3 x i8] c"ff\00", align 1
@write_xtc_traj.bFirst = internal unnamed_addr global i1 false
@write_xtc_traj.x_sel = internal unnamed_addr global [3 x float]* null, align 8
@write_xtc_traj.natoms = internal unnamed_addr global i32 0, align 4
@xd = internal unnamed_addr global i32 0, align 4
@.str6 = private unnamed_addr constant [49 x i8] c"There are %d atoms in your xtc output selection\0A\00", align 1
@.str7 = private unnamed_addr constant [6 x i8] c"x_sel\00", align 1
@.str8 = private unnamed_addr constant [10 x i8] c"XTC error\00", align 1
@.str9 = private unnamed_addr constant [5 x i8] c"temp\00", align 1
@.str10 = private unnamed_addr constant [64 x i8] c"%s[%5d] before: (%8.3f,%8.3f,%8.3f) After: (%8.3f,%8.3f,%8.3f)\0A\00", align 1

; Function Attrs: nounwind optsize uwtable
define void @global_stat(%struct._IO_FILE* %log, %struct.t_commrec* %cr, float* %ener, [3 x float]* %fvir, [3 x float]* %svir, %struct.t_grpopts* nocapture %opts, %struct.t_groups* %grps, %struct.t_nrnb* %mynrnb, %struct.t_nrnb* %nrnb, %struct.t_vcm* nocapture %vcm, float* %terminate) #0 {
entry:
  %in = alloca [256 x i32], align 16
  %inn = alloca [7 x i32], align 16
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %log}, i64 0, metadata !381), !dbg !540
  call void @llvm.dbg.value(metadata !{%struct.t_commrec* %cr}, i64 0, metadata !382), !dbg !541
  call void @llvm.dbg.value(metadata !{float* %ener}, i64 0, metadata !383), !dbg !541
  call void @llvm.dbg.value(metadata !{[3 x float]* %fvir}, i64 0, metadata !384), !dbg !542
  call void @llvm.dbg.value(metadata !{[3 x float]* %svir}, i64 0, metadata !385), !dbg !542
  call void @llvm.dbg.value(metadata !{%struct.t_grpopts* %opts}, i64 0, metadata !386), !dbg !543
  call void @llvm.dbg.value(metadata !{%struct.t_groups* %grps}, i64 0, metadata !387), !dbg !543
  call void @llvm.dbg.value(metadata !{%struct.t_nrnb* %mynrnb}, i64 0, metadata !388), !dbg !544
  call void @llvm.dbg.value(metadata !{%struct.t_nrnb* %nrnb}, i64 0, metadata !389), !dbg !544
  call void @llvm.dbg.value(metadata !{%struct.t_vcm* %vcm}, i64 0, metadata !390), !dbg !545
  call void @llvm.dbg.value(metadata !{float* %terminate}, i64 0, metadata !391), !dbg !545
  call void @llvm.dbg.value(metadata !546, i64 0, metadata !400), !dbg !547
  call void @llvm.dbg.value(metadata !546, i64 0, metadata !401), !dbg !547
  call void @llvm.dbg.value(metadata !546, i64 0, metadata !402), !dbg !547
  %0 = bitcast [256 x i32]* %in to i8*, !dbg !548
  call void @llvm.lifetime.start(i64 1024, i8* %0) #2, !dbg !548
  call void @llvm.dbg.declare(metadata !{[256 x i32]* %in}, metadata !403), !dbg !548
  call void @llvm.dbg.declare(metadata !{[7 x i32]* %inn}, metadata !407), !dbg !549
  %1 = load %struct.t_bin** @global_stat.rb, align 8, !dbg !550, !tbaa !551
  %cmp = icmp eq %struct.t_bin* %1, null, !dbg !550
  br i1 %cmp, label %if.then, label %if.else, !dbg !550

if.then:                                          ; preds = %entry
  %call = call %struct.t_bin* @mk_bin() #6, !dbg !554
  store %struct.t_bin* %call, %struct.t_bin** @global_stat.rb, align 8, !dbg !554, !tbaa !551
  %ngtc = getelementptr inbounds %struct.t_grpopts* %opts, i64 0, i32 0, !dbg !556
  %2 = load i32* %ngtc, align 4, !dbg !556, !tbaa !557
  %call1 = call i8* @save_calloc(i8* getelementptr inbounds ([4 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([52 x i8]* @.str1, i64 0, i64 0), i32 76, i32 %2, i32 4) #6, !dbg !556
  %3 = bitcast i8* %call1 to i32*, !dbg !556
  store i32* %3, i32** @global_stat.itc, align 8, !dbg !556, !tbaa !551
  br label %for.cond.preheader, !dbg !558

if.else:                                          ; preds = %entry
  call void @reset_bin(%struct.t_bin* %1) #6, !dbg !559
  br label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.else, %if.then
  %nnodes = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 1, !dbg !560
  %4 = load i32* %nnodes, align 4, !dbg !560, !tbaa !557
  %cmp2244 = icmp sgt i32 %4, 0, !dbg !560
  br i1 %cmp2244, label %for.body, label %for.end, !dbg !560

for.body:                                         ; preds = %for.cond.preheader, %for.body
  %indvars.iv259 = phi i64 [ %indvars.iv.next260, %for.body ], [ 0, %for.cond.preheader ]
  %arrayidx = getelementptr inbounds %struct.t_nrnb* %nrnb, i64 %indvars.iv259, !dbg !562
  call void @init_nrnb(%struct.t_nrnb* %arrayidx) #6, !dbg !562
  %indvars.iv.next260 = add i64 %indvars.iv259, 1, !dbg !560
  %5 = load i32* %nnodes, align 4, !dbg !560, !tbaa !557
  %6 = trunc i64 %indvars.iv.next260 to i32, !dbg !560
  %cmp2 = icmp slt i32 %6, %5, !dbg !560
  br i1 %cmp2, label %for.body, label %for.end, !dbg !560

for.end:                                          ; preds = %for.body, %for.cond.preheader
  %nodeid = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 0, !dbg !563
  %7 = load i32* %nodeid, align 4, !dbg !563, !tbaa !557
  %idxprom3 = sext i32 %7 to i64, !dbg !563
  %arrayidx4 = getelementptr inbounds %struct.t_nrnb* %nrnb, i64 %idxprom3, !dbg !563
  call void @cp_nrnb(%struct.t_nrnb* %arrayidx4, %struct.t_nrnb* %mynrnb) #6, !dbg !563
  call void @_where(i8* getelementptr inbounds ([52 x i8]* @.str1, i64 0, i64 0), i32 89) #6, !dbg !564
  %8 = load %struct.t_bin** @global_stat.rb, align 8, !dbg !565, !tbaa !551
  %call5 = call i32 @add_binr(%struct._IO_FILE* %log, %struct.t_bin* %8, i32 44, float* %ener) #6, !dbg !565
  call void @llvm.dbg.value(metadata !{i32 %call5}, i64 0, metadata !394), !dbg !565
  call void @_where(i8* getelementptr inbounds ([52 x i8]* @.str1, i64 0, i64 0), i32 91) #6, !dbg !566
  %9 = load %struct.t_bin** @global_stat.rb, align 8, !dbg !567, !tbaa !551
  %arraydecay = getelementptr inbounds [3 x float]* %fvir, i64 0, i64 0, !dbg !567
  %call7 = call i32 @add_binr(%struct._IO_FILE* %log, %struct.t_bin* %9, i32 9, float* %arraydecay) #6, !dbg !567
  call void @llvm.dbg.value(metadata !{i32 %call7}, i64 0, metadata !395), !dbg !567
  call void @_where(i8* getelementptr inbounds ([52 x i8]* @.str1, i64 0, i64 0), i32 93) #6, !dbg !568
  %10 = load %struct.t_bin** @global_stat.rb, align 8, !dbg !569, !tbaa !551
  %arraydecay9 = getelementptr inbounds [3 x float]* %svir, i64 0, i64 0, !dbg !569
  %call10 = call i32 @add_binr(%struct._IO_FILE* %log, %struct.t_bin* %10, i32 9, float* %arraydecay9) #6, !dbg !569
  call void @llvm.dbg.value(metadata !{i32 %call10}, i64 0, metadata !396), !dbg !569
  call void @_where(i8* getelementptr inbounds ([52 x i8]* @.str1, i64 0, i64 0), i32 95) #6, !dbg !570
  call void @llvm.dbg.value(metadata !203, i64 0, metadata !409), !dbg !571
  %11 = load i32* %nnodes, align 4, !dbg !571, !tbaa !557
  %cmp13242 = icmp sgt i32 %11, 0, !dbg !571
  br i1 %cmp13242, label %for.body14, label %for.end23, !dbg !571

for.body14:                                       ; preds = %for.end, %for.body14
  %indvars.iv257 = phi i64 [ %indvars.iv.next258, %for.body14 ], [ 0, %for.end ]
  %12 = load %struct.t_bin** @global_stat.rb, align 8, !dbg !573, !tbaa !551
  %arraydecay17 = getelementptr inbounds %struct.t_nrnb* %nrnb, i64 %indvars.iv257, i32 0, i64 0, !dbg !573
  %call18 = call i32 @add_bind(%struct._IO_FILE* %log, %struct.t_bin* %12, i32 129, double* %arraydecay17) #6, !dbg !573
  %arrayidx20 = getelementptr inbounds [256 x i32]* %in, i64 0, i64 %indvars.iv257, !dbg !573
  store i32 %call18, i32* %arrayidx20, align 4, !dbg !573, !tbaa !557
  %indvars.iv.next258 = add i64 %indvars.iv257, 1, !dbg !571
  %13 = load i32* %nnodes, align 4, !dbg !571, !tbaa !557
  %14 = trunc i64 %indvars.iv.next258 to i32, !dbg !571
  %cmp13 = icmp slt i32 %14, %13, !dbg !571
  br i1 %cmp13, label %for.body14, label %for.end23, !dbg !571

for.end23:                                        ; preds = %for.body14, %for.end
  call void @_where(i8* getelementptr inbounds ([52 x i8]* @.str1, i64 0, i64 0), i32 98) #6, !dbg !574
  call void @llvm.dbg.value(metadata !203, i64 0, metadata !409), !dbg !575
  %ngtc25 = getelementptr inbounds %struct.t_grpopts* %opts, i64 0, i32 0, !dbg !575
  %15 = load i32* %ngtc25, align 4, !dbg !575, !tbaa !557
  %cmp26240 = icmp sgt i32 %15, 0, !dbg !575
  br i1 %cmp26240, label %for.body27.lr.ph, label %for.end37, !dbg !575

for.body27.lr.ph:                                 ; preds = %for.end23
  %tcstat = getelementptr inbounds %struct.t_groups* %grps, i64 0, i32 1, !dbg !577
  br label %for.body27, !dbg !575

for.body27:                                       ; preds = %for.body27.lr.ph, %for.body27
  %indvars.iv255 = phi i64 [ 0, %for.body27.lr.ph ], [ %indvars.iv.next256, %for.body27 ]
  %16 = load %struct.t_bin** @global_stat.rb, align 8, !dbg !577, !tbaa !551
  %17 = load %struct.t_grp_tcstat** %tcstat, align 8, !dbg !577, !tbaa !551
  %arraydecay31 = getelementptr inbounds %struct.t_grp_tcstat* %17, i64 %indvars.iv255, i32 2, i64 0, i64 0, !dbg !577
  %call32 = call i32 @add_binr(%struct._IO_FILE* %log, %struct.t_bin* %16, i32 9, float* %arraydecay31) #6, !dbg !577
  %18 = load i32** @global_stat.itc, align 8, !dbg !577, !tbaa !551
  %arrayidx34 = getelementptr inbounds i32* %18, i64 %indvars.iv255, !dbg !577
  store i32 %call32, i32* %arrayidx34, align 4, !dbg !577, !tbaa !557
  %indvars.iv.next256 = add i64 %indvars.iv255, 1, !dbg !575
  %19 = load i32* %ngtc25, align 4, !dbg !575, !tbaa !557
  %20 = trunc i64 %indvars.iv.next256 to i32, !dbg !575
  %cmp26 = icmp slt i32 %20, %19, !dbg !575
  br i1 %cmp26, label %for.body27, label %for.end37, !dbg !575

for.end37:                                        ; preds = %for.body27, %for.end23
  call void @_where(i8* getelementptr inbounds ([52 x i8]* @.str1, i64 0, i64 0), i32 101) #6, !dbg !578
  call void @llvm.dbg.value(metadata !203, i64 0, metadata !409), !dbg !579
  %nn = getelementptr inbounds %struct.t_groups* %grps, i64 0, i32 0, i32 0, !dbg !581
  br label %for.body40, !dbg !579

for.body40:                                       ; preds = %for.body40, %for.end37
  %indvars.iv251 = phi i64 [ 0, %for.end37 ], [ %indvars.iv.next252, %for.body40 ]
  %21 = load %struct.t_bin** @global_stat.rb, align 8, !dbg !581, !tbaa !551
  %22 = load i32* %nn, align 4, !dbg !581, !tbaa !557
  %arrayidx43 = getelementptr inbounds %struct.t_groups* %grps, i64 0, i32 0, i32 1, i64 %indvars.iv251, !dbg !581
  %23 = load float** %arrayidx43, align 8, !dbg !581, !tbaa !551
  %call44 = call i32 @add_binr(%struct._IO_FILE* %log, %struct.t_bin* %21, i32 %22, float* %23) #6, !dbg !581
  %arrayidx46 = getelementptr inbounds [7 x i32]* %inn, i64 0, i64 %indvars.iv251, !dbg !581
  store i32 %call44, i32* %arrayidx46, align 4, !dbg !581, !tbaa !557
  %indvars.iv.next252 = add i64 %indvars.iv251, 1, !dbg !579
  %lftr.wideiv253 = trunc i64 %indvars.iv.next252 to i32, !dbg !579
  %exitcond254 = icmp eq i32 %lftr.wideiv253, 7, !dbg !579
  br i1 %exitcond254, label %for.end49, label %for.body40, !dbg !579

for.end49:                                        ; preds = %for.body40
  call void @_where(i8* getelementptr inbounds ([52 x i8]* @.str1, i64 0, i64 0), i32 104) #6, !dbg !582
  %24 = load %struct.t_bin** @global_stat.rb, align 8, !dbg !583, !tbaa !551
  %nr = getelementptr inbounds %struct.t_vcm* %vcm, i64 0, i32 0, !dbg !583
  %25 = load i32* %nr, align 4, !dbg !583, !tbaa !557
  %mul = mul nsw i32 %25, 3, !dbg !583
  %group_p = getelementptr inbounds %struct.t_vcm* %vcm, i64 0, i32 2, !dbg !583
  %26 = load [3 x float]** %group_p, align 8, !dbg !583, !tbaa !551
  %arraydecay51 = getelementptr inbounds [3 x float]* %26, i64 0, i64 0, !dbg !583
  %call52 = call i32 @add_binr(%struct._IO_FILE* %log, %struct.t_bin* %24, i32 %mul, float* %arraydecay51) #6, !dbg !583
  call void @llvm.dbg.value(metadata !{i32 %call52}, i64 0, metadata !397), !dbg !583
  call void @_where(i8* getelementptr inbounds ([52 x i8]* @.str1, i64 0, i64 0), i32 106) #6, !dbg !584
  %27 = load %struct.t_bin** @global_stat.rb, align 8, !dbg !585, !tbaa !551
  %28 = load i32* %nr, align 4, !dbg !585, !tbaa !557
  %group_mass = getelementptr inbounds %struct.t_vcm* %vcm, i64 0, i32 8, !dbg !585
  %29 = load float** %group_mass, align 8, !dbg !585, !tbaa !551
  %call54 = call i32 @add_binr(%struct._IO_FILE* %log, %struct.t_bin* %27, i32 %28, float* %29) #6, !dbg !585
  call void @llvm.dbg.value(metadata !{i32 %call54}, i64 0, metadata !398), !dbg !585
  call void @_where(i8* getelementptr inbounds ([52 x i8]* @.str1, i64 0, i64 0), i32 108) #6, !dbg !586
  %mode = getelementptr inbounds %struct.t_vcm* %vcm, i64 0, i32 1, !dbg !587
  %30 = load i32* %mode, align 4, !dbg !587, !tbaa !557
  %cmp55 = icmp eq i32 %30, 1, !dbg !587
  br i1 %cmp55, label %if.then56, label %if.end73, !dbg !587

if.then56:                                        ; preds = %for.end49
  %31 = load %struct.t_bin** @global_stat.rb, align 8, !dbg !588, !tbaa !551
  %32 = load i32* %nr, align 4, !dbg !588, !tbaa !557
  %mul58 = mul nsw i32 %32, 3, !dbg !588
  %group_j = getelementptr inbounds %struct.t_vcm* %vcm, i64 0, i32 5, !dbg !588
  %33 = load [3 x float]** %group_j, align 8, !dbg !588, !tbaa !551
  %arraydecay60 = getelementptr inbounds [3 x float]* %33, i64 0, i64 0, !dbg !588
  %call61 = call i32 @add_binr(%struct._IO_FILE* %log, %struct.t_bin* %31, i32 %mul58, float* %arraydecay60) #6, !dbg !588
  call void @llvm.dbg.value(metadata !{i32 %call61}, i64 0, metadata !400), !dbg !588
  call void @_where(i8* getelementptr inbounds ([52 x i8]* @.str1, i64 0, i64 0), i32 111) #6, !dbg !590
  %34 = load %struct.t_bin** @global_stat.rb, align 8, !dbg !591, !tbaa !551
  %35 = load i32* %nr, align 4, !dbg !591, !tbaa !557
  %mul63 = mul nsw i32 %35, 3, !dbg !591
  %group_x = getelementptr inbounds %struct.t_vcm* %vcm, i64 0, i32 4, !dbg !591
  %36 = load [3 x float]** %group_x, align 8, !dbg !591, !tbaa !551
  %arraydecay65 = getelementptr inbounds [3 x float]* %36, i64 0, i64 0, !dbg !591
  %call66 = call i32 @add_binr(%struct._IO_FILE* %log, %struct.t_bin* %34, i32 %mul63, float* %arraydecay65) #6, !dbg !591
  call void @llvm.dbg.value(metadata !{i32 %call66}, i64 0, metadata !402), !dbg !591
  call void @_where(i8* getelementptr inbounds ([52 x i8]* @.str1, i64 0, i64 0), i32 113) #6, !dbg !592
  %37 = load %struct.t_bin** @global_stat.rb, align 8, !dbg !593, !tbaa !551
  %38 = load i32* %nr, align 4, !dbg !593, !tbaa !557
  %mul68 = mul nsw i32 %38, 9, !dbg !593
  %group_i = getelementptr inbounds %struct.t_vcm* %vcm, i64 0, i32 7, !dbg !593
  %39 = load [3 x [3 x float]]** %group_i, align 8, !dbg !593, !tbaa !551
  %arraydecay71 = getelementptr inbounds [3 x [3 x float]]* %39, i64 0, i64 0, i64 0, !dbg !593
  %call72 = call i32 @add_binr(%struct._IO_FILE* %log, %struct.t_bin* %37, i32 %mul68, float* %arraydecay71) #6, !dbg !593
  call void @llvm.dbg.value(metadata !{i32 %call72}, i64 0, metadata !401), !dbg !593
  call void @_where(i8* getelementptr inbounds ([52 x i8]* @.str1, i64 0, i64 0), i32 115) #6, !dbg !594
  br label %if.end73, !dbg !595

if.end73:                                         ; preds = %if.then56, %for.end49
  %icj.0 = phi i32 [ %call61, %if.then56 ], [ -1, %for.end49 ]
  %ici.0 = phi i32 [ %call72, %if.then56 ], [ -1, %for.end49 ]
  %icx.0 = phi i32 [ %call66, %if.then56 ], [ -1, %for.end49 ]
  %40 = load %struct.t_bin** @global_stat.rb, align 8, !dbg !596, !tbaa !551
  %mvcos = getelementptr inbounds %struct.t_groups* %grps, i64 0, i32 3, i32 1, !dbg !596
  %call74 = call i32 @add_binr(%struct._IO_FILE* %log, %struct.t_bin* %40, i32 1, float* %mvcos) #6, !dbg !596
  call void @llvm.dbg.value(metadata !{i32 %call74}, i64 0, metadata !399), !dbg !596
  call void @_where(i8* getelementptr inbounds ([52 x i8]* @.str1, i64 0, i64 0), i32 118) #6, !dbg !597
  %41 = load %struct.t_bin** @global_stat.rb, align 8, !dbg !598, !tbaa !551
  %call75 = call i32 @add_binr(%struct._IO_FILE* %log, %struct.t_bin* %41, i32 1, float* %terminate) #6, !dbg !598
  call void @llvm.dbg.value(metadata !{i32 %call75}, i64 0, metadata !392), !dbg !598
  %42 = load %struct.t_bin** @global_stat.rb, align 8, !dbg !599, !tbaa !551
  call void @sum_bin(%struct.t_bin* %42, %struct.t_commrec* %cr) #6, !dbg !599
  call void @_where(i8* getelementptr inbounds ([52 x i8]* @.str1, i64 0, i64 0), i32 123) #6, !dbg !600
  %43 = load %struct.t_bin** @global_stat.rb, align 8, !dbg !601, !tbaa !551
  call void @extract_binr(%struct.t_bin* %43, i32 %call5, i32 44, float* %ener) #6, !dbg !601
  %44 = load %struct.t_bin** @global_stat.rb, align 8, !dbg !602, !tbaa !551
  call void @extract_binr(%struct.t_bin* %44, i32 %call7, i32 9, float* %arraydecay) #6, !dbg !602
  %45 = load %struct.t_bin** @global_stat.rb, align 8, !dbg !603, !tbaa !551
  call void @extract_binr(%struct.t_bin* %45, i32 %call10, i32 9, float* %arraydecay9) #6, !dbg !603
  call void @llvm.dbg.value(metadata !203, i64 0, metadata !409), !dbg !604
  %46 = load i32* %nnodes, align 4, !dbg !604, !tbaa !557
  %cmp82237 = icmp sgt i32 %46, 0, !dbg !604
  br i1 %cmp82237, label %for.body83, label %for.cond93.preheader, !dbg !604

for.cond93.preheader:                             ; preds = %for.body83, %if.end73
  %47 = load i32* %ngtc25, align 4, !dbg !606, !tbaa !557
  %cmp95235 = icmp sgt i32 %47, 0, !dbg !606
  br i1 %cmp95235, label %for.body96.lr.ph, label %for.cond108.preheader, !dbg !606

for.body96.lr.ph:                                 ; preds = %for.cond93.preheader
  %tcstat100 = getelementptr inbounds %struct.t_groups* %grps, i64 0, i32 1, !dbg !608
  br label %for.body96, !dbg !606

for.body83:                                       ; preds = %if.end73, %for.body83
  %indvars.iv249 = phi i64 [ %indvars.iv.next250, %for.body83 ], [ 0, %if.end73 ]
  %48 = load %struct.t_bin** @global_stat.rb, align 8, !dbg !609, !tbaa !551
  %arrayidx85 = getelementptr inbounds [256 x i32]* %in, i64 0, i64 %indvars.iv249, !dbg !609
  %49 = load i32* %arrayidx85, align 4, !dbg !609, !tbaa !557
  %arraydecay89 = getelementptr inbounds %struct.t_nrnb* %nrnb, i64 %indvars.iv249, i32 0, i64 0, !dbg !609
  call void @extract_bind(%struct.t_bin* %48, i32 %49, i32 129, double* %arraydecay89) #6, !dbg !609
  %indvars.iv.next250 = add i64 %indvars.iv249, 1, !dbg !604
  %50 = load i32* %nnodes, align 4, !dbg !604, !tbaa !557
  %51 = trunc i64 %indvars.iv.next250 to i32, !dbg !604
  %cmp82 = icmp slt i32 %51, %50, !dbg !604
  br i1 %cmp82, label %for.body83, label %for.cond93.preheader, !dbg !604

for.cond108.preheader:                            ; preds = %for.body96, %for.cond93.preheader
  %52 = load %struct.t_bin** @global_stat.rb, align 8, !dbg !610, !tbaa !551
  br label %for.body110, !dbg !612

for.body96:                                       ; preds = %for.body96.lr.ph, %for.body96
  %indvars.iv247 = phi i64 [ 0, %for.body96.lr.ph ], [ %indvars.iv.next248, %for.body96 ]
  %53 = load %struct.t_bin** @global_stat.rb, align 8, !dbg !608, !tbaa !551
  %54 = load i32** @global_stat.itc, align 8, !dbg !608, !tbaa !551
  %arrayidx98 = getelementptr inbounds i32* %54, i64 %indvars.iv247, !dbg !608
  %55 = load i32* %arrayidx98, align 4, !dbg !608, !tbaa !557
  %56 = load %struct.t_grp_tcstat** %tcstat100, align 8, !dbg !608, !tbaa !551
  %arraydecay104 = getelementptr inbounds %struct.t_grp_tcstat* %56, i64 %indvars.iv247, i32 2, i64 0, i64 0, !dbg !608
  call void @extract_binr(%struct.t_bin* %53, i32 %55, i32 9, float* %arraydecay104) #6, !dbg !608
  %indvars.iv.next248 = add i64 %indvars.iv247, 1, !dbg !606
  %57 = load i32* %ngtc25, align 4, !dbg !606, !tbaa !557
  %58 = trunc i64 %indvars.iv.next248 to i32, !dbg !606
  %cmp95 = icmp slt i32 %58, %57, !dbg !606
  br i1 %cmp95, label %for.body96, label %for.cond108.preheader, !dbg !606

for.body110:                                      ; preds = %for.body110, %for.cond108.preheader
  %indvars.iv = phi i64 [ 0, %for.cond108.preheader ], [ %indvars.iv.next, %for.body110 ]
  %59 = phi %struct.t_bin* [ %52, %for.cond108.preheader ], [ %63, %for.body110 ]
  %arrayidx112 = getelementptr inbounds [7 x i32]* %inn, i64 0, i64 %indvars.iv, !dbg !610
  %60 = load i32* %arrayidx112, align 4, !dbg !610, !tbaa !557
  %61 = load i32* %nn, align 4, !dbg !610, !tbaa !557
  %arrayidx118 = getelementptr inbounds %struct.t_groups* %grps, i64 0, i32 0, i32 1, i64 %indvars.iv, !dbg !610
  %62 = load float** %arrayidx118, align 8, !dbg !610, !tbaa !551
  call void @extract_binr(%struct.t_bin* %59, i32 %60, i32 %61, float* %62) #6, !dbg !610
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !612
  %63 = load %struct.t_bin** @global_stat.rb, align 8, !dbg !610, !tbaa !551
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !612
  %exitcond = icmp eq i32 %lftr.wideiv, 7, !dbg !612
  br i1 %exitcond, label %for.end121, label %for.body110, !dbg !612

for.end121:                                       ; preds = %for.body110
  %64 = load i32* %nr, align 4, !dbg !613, !tbaa !557
  %mul123 = mul nsw i32 %64, 3, !dbg !613
  %65 = load [3 x float]** %group_p, align 8, !dbg !613, !tbaa !551
  %arraydecay126 = getelementptr inbounds [3 x float]* %65, i64 0, i64 0, !dbg !613
  call void @extract_binr(%struct.t_bin* %63, i32 %call52, i32 %mul123, float* %arraydecay126) #6, !dbg !613
  call void @_where(i8* getelementptr inbounds ([52 x i8]* @.str1, i64 0, i64 0), i32 136) #6, !dbg !614
  %66 = load %struct.t_bin** @global_stat.rb, align 8, !dbg !615, !tbaa !551
  %67 = load i32* %nr, align 4, !dbg !615, !tbaa !557
  %68 = load float** %group_mass, align 8, !dbg !615, !tbaa !551
  call void @extract_binr(%struct.t_bin* %66, i32 %call54, i32 %67, float* %68) #6, !dbg !615
  call void @_where(i8* getelementptr inbounds ([52 x i8]* @.str1, i64 0, i64 0), i32 138) #6, !dbg !616
  %69 = load i32* %mode, align 4, !dbg !617, !tbaa !557
  %cmp130 = icmp eq i32 %69, 1, !dbg !617
  br i1 %cmp130, label %if.then131, label %if.end148, !dbg !617

if.then131:                                       ; preds = %for.end121
  %70 = load %struct.t_bin** @global_stat.rb, align 8, !dbg !618, !tbaa !551
  %71 = load i32* %nr, align 4, !dbg !618, !tbaa !557
  %mul133 = mul nsw i32 %71, 3, !dbg !618
  %group_j134 = getelementptr inbounds %struct.t_vcm* %vcm, i64 0, i32 5, !dbg !618
  %72 = load [3 x float]** %group_j134, align 8, !dbg !618, !tbaa !551
  %arraydecay136 = getelementptr inbounds [3 x float]* %72, i64 0, i64 0, !dbg !618
  call void @extract_binr(%struct.t_bin* %70, i32 %icj.0, i32 %mul133, float* %arraydecay136) #6, !dbg !618
  call void @_where(i8* getelementptr inbounds ([52 x i8]* @.str1, i64 0, i64 0), i32 141) #6, !dbg !620
  %73 = load %struct.t_bin** @global_stat.rb, align 8, !dbg !621, !tbaa !551
  %74 = load i32* %nr, align 4, !dbg !621, !tbaa !557
  %mul138 = mul nsw i32 %74, 3, !dbg !621
  %group_x139 = getelementptr inbounds %struct.t_vcm* %vcm, i64 0, i32 4, !dbg !621
  %75 = load [3 x float]** %group_x139, align 8, !dbg !621, !tbaa !551
  %arraydecay141 = getelementptr inbounds [3 x float]* %75, i64 0, i64 0, !dbg !621
  call void @extract_binr(%struct.t_bin* %73, i32 %icx.0, i32 %mul138, float* %arraydecay141) #6, !dbg !621
  call void @_where(i8* getelementptr inbounds ([52 x i8]* @.str1, i64 0, i64 0), i32 143) #6, !dbg !622
  %76 = load %struct.t_bin** @global_stat.rb, align 8, !dbg !623, !tbaa !551
  %77 = load i32* %nr, align 4, !dbg !623, !tbaa !557
  %mul143 = mul nsw i32 %77, 9, !dbg !623
  %group_i144 = getelementptr inbounds %struct.t_vcm* %vcm, i64 0, i32 7, !dbg !623
  %78 = load [3 x [3 x float]]** %group_i144, align 8, !dbg !623, !tbaa !551
  %arraydecay147 = getelementptr inbounds [3 x [3 x float]]* %78, i64 0, i64 0, i64 0, !dbg !623
  call void @extract_binr(%struct.t_bin* %76, i32 %ici.0, i32 %mul143, float* %arraydecay147) #6, !dbg !623
  call void @_where(i8* getelementptr inbounds ([52 x i8]* @.str1, i64 0, i64 0), i32 145) #6, !dbg !624
  br label %if.end148, !dbg !625

if.end148:                                        ; preds = %if.then131, %for.end121
  %79 = load %struct.t_bin** @global_stat.rb, align 8, !dbg !626, !tbaa !551
  call void @extract_binr(%struct.t_bin* %79, i32 %call74, i32 1, float* %mvcos) #6, !dbg !626
  call void @_where(i8* getelementptr inbounds ([52 x i8]* @.str1, i64 0, i64 0), i32 148) #6, !dbg !627
  %80 = load %struct.t_bin** @global_stat.rb, align 8, !dbg !628, !tbaa !551
  call void @extract_binr(%struct.t_bin* %80, i32 %call75, i32 1, float* %terminate) #6, !dbg !628
  call void @_where(i8* getelementptr inbounds ([52 x i8]* @.str1, i64 0, i64 0), i32 150) #6, !dbg !629
  %81 = load i32* %nnodes, align 4, !dbg !630, !tbaa !557
  %conv = sitofp i32 %81 to float, !dbg !630
  %arrayidx152 = getelementptr inbounds float* %ener, i64 40, !dbg !630
  %82 = load float* %arrayidx152, align 4, !dbg !630, !tbaa !631
  %div = fdiv float %82, %conv, !dbg !630
  store float %div, float* %arrayidx152, align 4, !dbg !630, !tbaa !631
  call void @llvm.lifetime.end(i64 1024, i8* %0) #2, !dbg !632
  ret void, !dbg !632
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

; Function Attrs: optsize
declare %struct.t_bin* @mk_bin() #3

; Function Attrs: optsize
declare i8* @save_calloc(i8*, i8*, i32, i32, i32) #3

; Function Attrs: optsize
declare void @reset_bin(%struct.t_bin*) #3

; Function Attrs: optsize
declare void @init_nrnb(%struct.t_nrnb*) #3

; Function Attrs: optsize
declare void @cp_nrnb(%struct.t_nrnb*, %struct.t_nrnb*) #3

; Function Attrs: optsize
declare void @_where(i8*, i32) #3

; Function Attrs: optsize
declare i32 @add_binr(%struct._IO_FILE*, %struct.t_bin*, i32, float*) #3

; Function Attrs: optsize
declare i32 @add_bind(%struct._IO_FILE*, %struct.t_bin*, i32, double*) #3

; Function Attrs: optsize
declare void @sum_bin(%struct.t_bin*, %struct.t_commrec*) #3

; Function Attrs: optsize
declare void @extract_binr(%struct.t_bin*, i32, i32, float*) #3

; Function Attrs: optsize
declare void @extract_bind(%struct.t_bin*, i32, i32, double*) #3

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

; Function Attrs: nounwind optsize readnone uwtable
define i32 @do_per_step(i32 %step, i32 %nstep) #4 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %step}, i64 0, metadata !414), !dbg !633
  tail call void @llvm.dbg.value(metadata !{i32 %nstep}, i64 0, metadata !415), !dbg !633
  %cmp = icmp eq i32 %nstep, 0, !dbg !634
  br i1 %cmp, label %return, label %if.then, !dbg !634

if.then:                                          ; preds = %entry
  %rem = srem i32 %step, %nstep, !dbg !635
  %cmp1 = icmp eq i32 %rem, 0, !dbg !635
  %conv = zext i1 %cmp1 to i32, !dbg !635
  br label %return, !dbg !635

return:                                           ; preds = %entry, %if.then
  %retval.0 = phi i32 [ %conv, %if.then ], [ 0, %entry ]
  ret i32 %retval.0, !dbg !636
}

; Function Attrs: nounwind optsize uwtable
define i32 @write_traj(%struct._IO_FILE* %log, %struct.t_commrec* nocapture %cr, i8* %traj, %struct.t_nsborder* %nsb, i32 %step, float %t, float %lambda, %struct.t_nrnb* nocapture %nrnb, i32 %natoms, [3 x float]* %xx, [3 x float]* %vv, [3 x float]* %ff, [3 x float]* %box) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %log}, i64 0, metadata !436), !dbg !637
  tail call void @llvm.dbg.value(metadata !{%struct.t_commrec* %cr}, i64 0, metadata !437), !dbg !637
  tail call void @llvm.dbg.value(metadata !{i8* %traj}, i64 0, metadata !438), !dbg !638
  tail call void @llvm.dbg.value(metadata !{%struct.t_nsborder* %nsb}, i64 0, metadata !439), !dbg !638
  tail call void @llvm.dbg.value(metadata !{i32 %step}, i64 0, metadata !440), !dbg !639
  tail call void @llvm.dbg.value(metadata !{float %t}, i64 0, metadata !441), !dbg !639
  tail call void @llvm.dbg.value(metadata !{float %lambda}, i64 0, metadata !442), !dbg !639
  tail call void @llvm.dbg.value(metadata !{%struct.t_nrnb* %nrnb}, i64 0, metadata !443), !dbg !639
  tail call void @llvm.dbg.value(metadata !{i32 %natoms}, i64 0, metadata !444), !dbg !640
  tail call void @llvm.dbg.value(metadata !{[3 x float]* %xx}, i64 0, metadata !445), !dbg !640
  tail call void @llvm.dbg.value(metadata !{[3 x float]* %vv}, i64 0, metadata !446), !dbg !640
  tail call void @llvm.dbg.value(metadata !{[3 x float]* %ff}, i64 0, metadata !447), !dbg !640
  tail call void @llvm.dbg.value(metadata !{[3 x float]* %box}, i64 0, metadata !448), !dbg !640
  %0 = load i32* @write_traj.fp, align 4, !dbg !641, !tbaa !557
  %cmp = icmp eq i32 %0, -1, !dbg !641
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !641

land.lhs.true:                                    ; preds = %entry
  %nodeid = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 0, !dbg !641
  %1 = load i32* %nodeid, align 4, !dbg !641, !tbaa !557
  %cmp1 = icmp eq i32 %1, 0, !dbg !641
  br i1 %cmp1, label %land.lhs.true2, label %if.end, !dbg !641

land.lhs.true2:                                   ; preds = %land.lhs.true
  %threadid = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 4, !dbg !641
  %2 = load i32* %threadid, align 4, !dbg !641, !tbaa !557
  %cmp3 = icmp eq i32 %2, 0, !dbg !641
  br i1 %cmp3, label %if.then, label %if.end, !dbg !641

if.then:                                          ; preds = %land.lhs.true2
  %call = tail call i32 @open_trn(i8* %traj, i8* getelementptr inbounds ([2 x i8]* @.str2, i64 0, i64 0)) #6, !dbg !642
  store i32 %call, i32* @write_traj.fp, align 4, !dbg !642, !tbaa !557
  br label %if.end, !dbg !644

if.end:                                           ; preds = %if.then, %land.lhs.true2, %land.lhs.true, %entry
  %nnodes = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 1, !dbg !645
  %3 = load i32* %nnodes, align 4, !dbg !645, !tbaa !557
  %cmp4 = icmp sgt i32 %3, 1, !dbg !645
  br i1 %cmp4, label %if.then5, label %if.end10, !dbg !645

if.then5:                                         ; preds = %if.end
  %left = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 2, !dbg !646
  %4 = load i32* %left, align 4, !dbg !646, !tbaa !557
  %right = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 3, !dbg !646
  %5 = load i32* %right, align 4, !dbg !646, !tbaa !557
  tail call fastcc void @moveit(%struct._IO_FILE* %log, i32 %4, i32 %5, i8* getelementptr inbounds ([3 x i8]* @.str3, i64 0, i64 0), [3 x float]* %xx, %struct.t_nsborder* %nsb) #7, !dbg !646
  %6 = load i32* %left, align 4, !dbg !648, !tbaa !557
  %7 = load i32* %right, align 4, !dbg !648, !tbaa !557
  tail call fastcc void @moveit(%struct._IO_FILE* %log, i32 %6, i32 %7, i8* getelementptr inbounds ([3 x i8]* @.str4, i64 0, i64 0), [3 x float]* %vv, %struct.t_nsborder* %nsb) #7, !dbg !648
  %8 = load i32* %left, align 4, !dbg !649, !tbaa !557
  %9 = load i32* %right, align 4, !dbg !649, !tbaa !557
  tail call fastcc void @moveit(%struct._IO_FILE* %log, i32 %8, i32 %9, i8* getelementptr inbounds ([3 x i8]* @.str5, i64 0, i64 0), [3 x float]* %ff, %struct.t_nsborder* %nsb) #7, !dbg !649
  br label %if.end10, !dbg !650

if.end10:                                         ; preds = %if.then5, %if.end
  %tobool = icmp eq [3 x float]* %xx, null, !dbg !651
  %tobool11 = icmp eq [3 x float]* %vv, null, !dbg !651
  %or.cond = and i1 %tobool, %tobool11, !dbg !651
  %tobool13 = icmp eq [3 x float]* %ff, null, !dbg !651
  %or.cond42 = and i1 %or.cond, %tobool13, !dbg !651
  br i1 %or.cond42, label %if.end21, label %land.lhs.true14, !dbg !651

land.lhs.true14:                                  ; preds = %if.end10
  %nodeid15 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 0, !dbg !651
  %10 = load i32* %nodeid15, align 4, !dbg !651, !tbaa !557
  %cmp16 = icmp eq i32 %10, 0, !dbg !651
  br i1 %cmp16, label %land.lhs.true17, label %if.end21, !dbg !651

land.lhs.true17:                                  ; preds = %land.lhs.true14
  %threadid18 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 4, !dbg !651
  %11 = load i32* %threadid18, align 4, !dbg !651, !tbaa !557
  %cmp19 = icmp eq i32 %11, 0, !dbg !651
  br i1 %cmp19, label %if.then20, label %if.end21, !dbg !651

if.then20:                                        ; preds = %land.lhs.true17
  %12 = load i32* @write_traj.fp, align 4, !dbg !652, !tbaa !557
  tail call void @fwrite_trn(i32 %12, i32 %step, float %t, float %lambda, [3 x float]* %box, i32 %natoms, [3 x float]* %xx, [3 x float]* %vv, [3 x float]* %ff) #6, !dbg !652
  %13 = load i32* @write_traj.fp, align 4, !dbg !654, !tbaa !557
  tail call void @gmx_fio_flush(i32 %13) #6, !dbg !654
  br label %if.end21, !dbg !655

if.end21:                                         ; preds = %land.lhs.true17, %land.lhs.true14, %if.end10, %if.then20
  %14 = load i32* @write_traj.fp, align 4, !dbg !656, !tbaa !557
  ret i32 %14, !dbg !656
}

; Function Attrs: optsize
declare i32 @open_trn(i8*, i8*) #3

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @moveit(%struct._IO_FILE* %log, i32 %left, i32 %right, i8* %s, [3 x float]* %xx, %struct.t_nsborder* %nsb) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %log}, i64 0, metadata !510), !dbg !657
  tail call void @llvm.dbg.value(metadata !{i32 %left}, i64 0, metadata !511), !dbg !658
  tail call void @llvm.dbg.value(metadata !{i32 %right}, i64 0, metadata !512), !dbg !658
  tail call void @llvm.dbg.value(metadata !{i8* %s}, i64 0, metadata !513), !dbg !658
  tail call void @llvm.dbg.value(metadata !{[3 x float]* %xx}, i64 0, metadata !514), !dbg !658
  tail call void @llvm.dbg.value(metadata !{%struct.t_nsborder* %nsb}, i64 0, metadata !515), !dbg !658
  %tobool = icmp eq [3 x float]* %xx, null, !dbg !659
  br i1 %tobool, label %return, label %if.end, !dbg !659

if.end:                                           ; preds = %entry
  %nodeid = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 0, !dbg !660
  %0 = load i32* %nodeid, align 4, !dbg !660, !tbaa !557
  %idxprom = sext i32 %0 to i64, !dbg !660
  %arrayidx = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 8, i64 %idxprom, !dbg !660
  %1 = load i32* %arrayidx, align 4, !dbg !660, !tbaa !557
  tail call void @llvm.dbg.value(metadata !{i32 %1}, i64 0, metadata !521), !dbg !660
  %arrayidx4 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 7, i64 %idxprom, !dbg !661
  %2 = load i32* %arrayidx4, align 4, !dbg !661, !tbaa !557
  tail call void @llvm.dbg.value(metadata !{i32 %2}, i64 0, metadata !522), !dbg !661
  %call = tail call i8* @save_calloc(i8* getelementptr inbounds ([5 x i8]* @.str9, i64 0, i64 0), i8* getelementptr inbounds ([52 x i8]* @.str1, i64 0, i64 0), i32 179, i32 %2, i32 12) #6, !dbg !662
  %3 = bitcast i8* %call to [3 x float]*, !dbg !662
  tail call void @llvm.dbg.value(metadata !{[3 x float]* %3}, i64 0, metadata !516), !dbg !662
  tail call void @llvm.dbg.value(metadata !203, i64 0, metadata !518), !dbg !663
  %cmp116 = icmp sgt i32 %2, 0, !dbg !663
  br i1 %cmp116, label %for.body.lr.ph, label %for.end69.critedge, !dbg !663

for.body.lr.ph:                                   ; preds = %if.end
  %4 = sext i32 %1 to i64, !dbg !663
  br label %for.body, !dbg !663

for.body:                                         ; preds = %for.body, %for.body.lr.ph
  %indvars.iv124 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next125, %for.body ]
  %5 = add nsw i64 %indvars.iv124, %4, !dbg !665
  %arraydecay = getelementptr inbounds [3 x float]* %xx, i64 %5, i64 0, !dbg !665
  %arraydecay9 = getelementptr inbounds [3 x float]* %3, i64 %indvars.iv124, i64 0, !dbg !665
  tail call void @llvm.dbg.value(metadata !{float* %arraydecay}, i64 0, metadata !666), !dbg !667
  tail call void @llvm.dbg.value(metadata !{float* %arraydecay9}, i64 0, metadata !668), !dbg !667
  %6 = load float* %arraydecay, align 4, !dbg !669, !tbaa !631
  store float %6, float* %arraydecay9, align 4, !dbg !669, !tbaa !631
  %arrayidx2.i = getelementptr inbounds [3 x float]* %xx, i64 %5, i64 1, !dbg !671
  %7 = load float* %arrayidx2.i, align 4, !dbg !671, !tbaa !631
  %arrayidx3.i = getelementptr inbounds [3 x float]* %3, i64 %indvars.iv124, i64 1, !dbg !671
  store float %7, float* %arrayidx3.i, align 4, !dbg !671, !tbaa !631
  %arrayidx4.i = getelementptr inbounds [3 x float]* %xx, i64 %5, i64 2, !dbg !672
  %8 = load float* %arrayidx4.i, align 4, !dbg !672, !tbaa !631
  %arrayidx5.i = getelementptr inbounds [3 x float]* %3, i64 %indvars.iv124, i64 2, !dbg !672
  store float %8, float* %arrayidx5.i, align 4, !dbg !672, !tbaa !631
  %indvars.iv.next125 = add i64 %indvars.iv124, 1, !dbg !663
  %lftr.wideiv127 = trunc i64 %indvars.iv.next125 to i32, !dbg !663
  %exitcond128 = icmp eq i32 %lftr.wideiv127, %2, !dbg !663
  br i1 %exitcond128, label %for.end, label %for.body, !dbg !663

for.end:                                          ; preds = %for.body
  %nnodes = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 1, !dbg !673
  %9 = load i32* %nnodes, align 4, !dbg !673, !tbaa !557
  %sub = add nsw i32 %9, -1, !dbg !673
  tail call void @move_rvecs(%struct._IO_FILE* %log, i32 0, i32 0, i32 %left, i32 %right, [3 x float]* %xx, [3 x float]* null, i32 %sub, %struct.t_nsborder* %nsb, %struct.t_nrnb* null) #6, !dbg !673
  tail call void @llvm.dbg.value(metadata !203, i64 0, metadata !518), !dbg !674
  br i1 %cmp116, label %for.cond13.preheader.lr.ph, label %for.end69, !dbg !674

for.cond13.preheader.lr.ph:                       ; preds = %for.end
  %tobool35 = icmp eq %struct._IO_FILE* %log, null, !dbg !676
  %10 = sext i32 %1 to i64, !dbg !674
  br label %for.cond13.preheader, !dbg !674

for.cond13.preheader:                             ; preds = %for.inc67, %for.cond13.preheader.lr.ph
  %indvars.iv118 = phi i64 [ 0, %for.cond13.preheader.lr.ph ], [ %indvars.iv.next119, %for.inc67 ]
  %11 = add nsw i64 %indvars.iv118, %10, !dbg !678
  br label %for.body15, !dbg !680

for.body15:                                       ; preds = %for.body15, %for.cond13.preheader
  %indvars.iv = phi i64 [ 0, %for.cond13.preheader ], [ %indvars.iv.next, %for.body15 ]
  %bP.0112 = phi i32 [ 0, %for.cond13.preheader ], [ %bP.1, %for.body15 ]
  %arrayidx20 = getelementptr inbounds [3 x float]* %xx, i64 %11, i64 %indvars.iv, !dbg !678
  %12 = load float* %arrayidx20, align 4, !dbg !678, !tbaa !631
  %arrayidx24 = getelementptr inbounds [3 x float]* %3, i64 %indvars.iv118, i64 %indvars.iv, !dbg !678
  %13 = load float* %arrayidx24, align 4, !dbg !678, !tbaa !631
  %sub25 = fsub float %12, %13, !dbg !678
  %fabsf = tail call float @fabsf(float %sub25) #8, !dbg !678
  %14 = fpext float %fabsf to double, !dbg !678
  %cmp27 = fcmp ogt double %14, 1.200000e-38, !dbg !678
  tail call void @llvm.dbg.value(metadata !681, i64 0, metadata !520), !dbg !682
  %bP.1 = select i1 %cmp27, i32 1, i32 %bP.0112, !dbg !678
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !680
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !680
  %exitcond = icmp eq i32 %lftr.wideiv, 3, !dbg !680
  br i1 %exitcond, label %for.end33, label %for.body15, !dbg !680

for.end33:                                        ; preds = %for.body15
  %tobool34 = icmp eq i32 %bP.1, 0, !dbg !676
  %or.cond = or i1 %tobool34, %tobool35, !dbg !676
  br i1 %or.cond, label %for.inc67, label %if.then36, !dbg !676

if.then36:                                        ; preds = %for.end33
  %arrayidx40 = getelementptr inbounds [3 x float]* %3, i64 %indvars.iv118, i64 0, !dbg !683
  %15 = load float* %arrayidx40, align 4, !dbg !683, !tbaa !631
  %conv41 = fpext float %15 to double, !dbg !683
  %arrayidx44 = getelementptr inbounds [3 x float]* %3, i64 %indvars.iv118, i64 1, !dbg !683
  %16 = load float* %arrayidx44, align 4, !dbg !683, !tbaa !631
  %conv45 = fpext float %16 to double, !dbg !683
  %arrayidx48 = getelementptr inbounds [3 x float]* %3, i64 %indvars.iv118, i64 2, !dbg !683
  %17 = load float* %arrayidx48, align 4, !dbg !683, !tbaa !631
  %conv49 = fpext float %17 to double, !dbg !683
  %arrayidx53 = getelementptr inbounds [3 x float]* %xx, i64 %11, i64 0, !dbg !683
  %18 = load float* %arrayidx53, align 4, !dbg !683, !tbaa !631
  %conv54 = fpext float %18 to double, !dbg !683
  %arrayidx58 = getelementptr inbounds [3 x float]* %xx, i64 %11, i64 1, !dbg !683
  %19 = load float* %arrayidx58, align 4, !dbg !683, !tbaa !631
  %conv59 = fpext float %19 to double, !dbg !683
  %arrayidx63 = getelementptr inbounds [3 x float]* %xx, i64 %11, i64 2, !dbg !683
  %20 = load float* %arrayidx63, align 4, !dbg !683, !tbaa !631
  %conv64 = fpext float %20 to double, !dbg !683
  %21 = trunc i64 %11 to i32, !dbg !683
  %call65 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %log, i8* getelementptr inbounds ([64 x i8]* @.str10, i64 0, i64 0), i8* %s, i32 %21, double %conv41, double %conv45, double %conv49, double %conv54, double %conv59, double %conv64) #6, !dbg !683
  br label %for.inc67, !dbg !683

for.inc67:                                        ; preds = %for.end33, %if.then36
  %indvars.iv.next119 = add i64 %indvars.iv118, 1, !dbg !674
  %lftr.wideiv122 = trunc i64 %indvars.iv.next119 to i32, !dbg !674
  %exitcond123 = icmp eq i32 %lftr.wideiv122, %2, !dbg !674
  br i1 %exitcond123, label %for.end69, label %for.cond13.preheader, !dbg !674

for.end69.critedge:                               ; preds = %if.end
  %nnodes.c = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 1, !dbg !673
  %22 = load i32* %nnodes.c, align 4, !dbg !673, !tbaa !557
  %sub.c = add nsw i32 %22, -1, !dbg !673
  tail call void @move_rvecs(%struct._IO_FILE* %log, i32 0, i32 0, i32 %left, i32 %right, [3 x float]* %xx, [3 x float]* null, i32 %sub.c, %struct.t_nsborder* %nsb, %struct.t_nrnb* null) #6, !dbg !673
  tail call void @llvm.dbg.value(metadata !203, i64 0, metadata !518), !dbg !674
  br label %for.end69

for.end69:                                        ; preds = %for.end69.critedge, %for.inc67, %for.end
  tail call void @save_free(i8* getelementptr inbounds ([5 x i8]* @.str9, i64 0, i64 0), i8* getelementptr inbounds ([52 x i8]* @.str1, i64 0, i64 0), i32 196, i8* %call) #6, !dbg !684
  br label %return, !dbg !684

return:                                           ; preds = %entry, %for.end69
  ret void, !dbg !684
}

; Function Attrs: optsize
declare void @fwrite_trn(i32, i32, float, float, [3 x float]*, i32, [3 x float]*, [3 x float]*, [3 x float]*) #3

; Function Attrs: optsize
declare void @gmx_fio_flush(i32) #3

; Function Attrs: nounwind optsize uwtable
define void @write_xtc_traj(%struct._IO_FILE* %log, %struct.t_commrec* nocapture %cr, i8* %xtc_traj, %struct.t_nsborder* %nsb, %struct.t_mdatoms* nocapture %md, i32 %step, float %t, [3 x float]* %xx, [3 x float]* %box, float %prec) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %log}, i64 0, metadata !481), !dbg !685
  tail call void @llvm.dbg.value(metadata !{%struct.t_commrec* %cr}, i64 0, metadata !482), !dbg !685
  tail call void @llvm.dbg.value(metadata !{i8* %xtc_traj}, i64 0, metadata !483), !dbg !686
  tail call void @llvm.dbg.value(metadata !{%struct.t_nsborder* %nsb}, i64 0, metadata !484), !dbg !686
  tail call void @llvm.dbg.value(metadata !{%struct.t_mdatoms* %md}, i64 0, metadata !485), !dbg !686
  tail call void @llvm.dbg.value(metadata !{i32 %step}, i64 0, metadata !486), !dbg !687
  tail call void @llvm.dbg.value(metadata !{float %t}, i64 0, metadata !487), !dbg !687
  tail call void @llvm.dbg.value(metadata !{[3 x float]* %xx}, i64 0, metadata !488), !dbg !687
  tail call void @llvm.dbg.value(metadata !{[3 x float]* %box}, i64 0, metadata !489), !dbg !687
  tail call void @llvm.dbg.value(metadata !{float %prec}, i64 0, metadata !490), !dbg !687
  %.b = load i1* @write_xtc_traj.bFirst, align 1
  br i1 %.b, label %if.end18, label %land.lhs.true, !dbg !688

land.lhs.true:                                    ; preds = %entry
  %nodeid = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 0, !dbg !688
  %0 = load i32* %nodeid, align 4, !dbg !688, !tbaa !557
  %cmp = icmp eq i32 %0, 0, !dbg !688
  br i1 %cmp, label %land.lhs.true1, label %if.end18, !dbg !688

land.lhs.true1:                                   ; preds = %land.lhs.true
  %threadid = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 4, !dbg !688
  %1 = load i32* %threadid, align 4, !dbg !688, !tbaa !557
  %cmp2 = icmp eq i32 %1, 0, !dbg !688
  br i1 %cmp2, label %if.then, label %if.end18, !dbg !688

if.then:                                          ; preds = %land.lhs.true1
  %call = tail call i32 @open_xtc(i8* %xtc_traj, i8* getelementptr inbounds ([2 x i8]* @.str2, i64 0, i64 0)) #6, !dbg !689
  store i32 %call, i32* @xd, align 4, !dbg !689, !tbaa !557
  store i32 0, i32* @write_xtc_traj.natoms, align 4, !dbg !691, !tbaa !557
  tail call void @llvm.dbg.value(metadata !203, i64 0, metadata !491), !dbg !692
  %nr = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 1, !dbg !692
  %2 = load i32* %nr, align 4, !dbg !692, !tbaa !557
  %cmp392 = icmp sgt i32 %2, 0, !dbg !692
  br i1 %cmp392, label %for.body.lr.ph, label %for.end, !dbg !692

for.body.lr.ph:                                   ; preds = %if.then
  %cXTC = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 18, !dbg !694
  %3 = load i16** %cXTC, align 8, !dbg !694, !tbaa !551
  br label %for.body, !dbg !692

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %4 = phi i32 [ %2, %for.body.lr.ph ], [ %7, %for.inc ]
  %5 = phi i32 [ 0, %for.body.lr.ph ], [ %8, %for.inc ]
  %indvars.iv94 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next95, %for.inc ]
  %arrayidx = getelementptr inbounds i16* %3, i64 %indvars.iv94, !dbg !694
  %6 = load i16* %arrayidx, align 2, !dbg !694, !tbaa !695
  %cmp4 = icmp eq i16 %6, 0, !dbg !694
  br i1 %cmp4, label %if.then6, label %for.inc, !dbg !694

if.then6:                                         ; preds = %for.body
  %inc = add nsw i32 %5, 1, !dbg !696
  store i32 %inc, i32* @write_xtc_traj.natoms, align 4, !dbg !696, !tbaa !557
  %.pre98 = load i32* %nr, align 4, !dbg !692, !tbaa !557
  br label %for.inc, !dbg !696

for.inc:                                          ; preds = %for.body, %if.then6
  %7 = phi i32 [ %4, %for.body ], [ %.pre98, %if.then6 ], !dbg !692
  %8 = phi i32 [ %5, %for.body ], [ %inc, %if.then6 ]
  %indvars.iv.next95 = add i64 %indvars.iv94, 1, !dbg !692
  %9 = trunc i64 %indvars.iv.next95 to i32, !dbg !692
  %cmp3 = icmp slt i32 %9, %7, !dbg !692
  br i1 %cmp3, label %for.body, label %for.end, !dbg !692

for.end:                                          ; preds = %for.inc, %if.then
  %10 = phi i32 [ %2, %if.then ], [ %7, %for.inc ]
  %11 = phi i32 [ 0, %if.then ], [ %8, %for.inc ]
  %tobool8 = icmp eq %struct._IO_FILE* %log, null, !dbg !697
  br i1 %tobool8, label %if.end11, label %if.then9, !dbg !697

if.then9:                                         ; preds = %for.end
  %call10 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %log, i8* getelementptr inbounds ([49 x i8]* @.str6, i64 0, i64 0), i32 %11) #6, !dbg !698
  %.pre96 = load i32* @write_xtc_traj.natoms, align 4, !dbg !699, !tbaa !557
  %.pre97 = load i32* %nr, align 4, !dbg !699, !tbaa !557
  br label %if.end11, !dbg !698

if.end11:                                         ; preds = %for.end, %if.then9
  %12 = phi i32 [ %10, %for.end ], [ %.pre97, %if.then9 ]
  %13 = phi i32 [ %11, %for.end ], [ %.pre96, %if.then9 ]
  %cmp13 = icmp eq i32 %13, %12, !dbg !699
  br i1 %cmp13, label %if.end17, label %if.then15, !dbg !699

if.then15:                                        ; preds = %if.end11
  %call16 = tail call i8* @save_calloc(i8* getelementptr inbounds ([6 x i8]* @.str7, i64 0, i64 0), i8* getelementptr inbounds ([52 x i8]* @.str1, i64 0, i64 0), i32 252, i32 %13, i32 12) #6, !dbg !700
  %14 = bitcast i8* %call16 to [3 x float]*, !dbg !700
  store [3 x float]* %14, [3 x float]** @write_xtc_traj.x_sel, align 8, !dbg !700, !tbaa !551
  br label %if.end17, !dbg !700

if.end17:                                         ; preds = %if.end11, %if.then15
  store i1 true, i1* @write_xtc_traj.bFirst, align 1
  br label %if.end18, !dbg !701

if.end18:                                         ; preds = %entry, %if.end17, %land.lhs.true1, %land.lhs.true
  %nnodes = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 1, !dbg !702
  %15 = load i32* %nnodes, align 4, !dbg !702, !tbaa !557
  %cmp19 = icmp sgt i32 %15, 1, !dbg !702
  br i1 %cmp19, label %if.then21, label %if.end22, !dbg !702

if.then21:                                        ; preds = %if.end18
  %left = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 2, !dbg !703
  %16 = load i32* %left, align 4, !dbg !703, !tbaa !557
  %right = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 3, !dbg !703
  %17 = load i32* %right, align 4, !dbg !703, !tbaa !557
  tail call fastcc void @moveit(%struct._IO_FILE* %log, i32 %16, i32 %17, i8* getelementptr inbounds ([3 x i8]* @.str3, i64 0, i64 0), [3 x float]* %xx, %struct.t_nsborder* %nsb) #7, !dbg !703
  br label %if.end22, !dbg !705

if.end22:                                         ; preds = %if.then21, %if.end18
  %tobool23 = icmp eq [3 x float]* %xx, null, !dbg !706
  br i1 %tobool23, label %if.end65, label %land.lhs.true24, !dbg !706

land.lhs.true24:                                  ; preds = %if.end22
  %nodeid25 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 0, !dbg !706
  %18 = load i32* %nodeid25, align 4, !dbg !706, !tbaa !557
  %cmp26 = icmp eq i32 %18, 0, !dbg !706
  br i1 %cmp26, label %land.lhs.true28, label %if.end65, !dbg !706

land.lhs.true28:                                  ; preds = %land.lhs.true24
  %threadid29 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 4, !dbg !706
  %19 = load i32* %threadid29, align 4, !dbg !706, !tbaa !557
  %cmp30 = icmp eq i32 %19, 0, !dbg !706
  br i1 %cmp30, label %if.then32, label %if.end65, !dbg !706

if.then32:                                        ; preds = %land.lhs.true28
  %20 = load i32* @write_xtc_traj.natoms, align 4, !dbg !707, !tbaa !557
  %nr33 = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 1, !dbg !707
  %21 = load i32* %nr33, align 4, !dbg !707, !tbaa !557
  %cmp34 = icmp eq i32 %20, %21, !dbg !707
  br i1 %cmp34, label %if.then36, label %for.cond37.preheader, !dbg !707

for.cond37.preheader:                             ; preds = %if.then32
  %cmp3989 = icmp sgt i32 %21, 0, !dbg !709
  br i1 %cmp3989, label %for.body41.lr.ph, label %for.cond37.preheader.if.end59.loopexit_crit_edge, !dbg !709

for.cond37.preheader.if.end59.loopexit_crit_edge: ; preds = %for.cond37.preheader
  %.pre.pre = load [3 x float]** @write_xtc_traj.x_sel, align 8, !dbg !712, !tbaa !551
  br label %if.end59, !dbg !709

for.body41.lr.ph:                                 ; preds = %for.cond37.preheader
  %cXTC43 = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 18, !dbg !713
  %22 = load i16** %cXTC43, align 8, !dbg !713, !tbaa !551
  %23 = load [3 x float]** @write_xtc_traj.x_sel, align 8, !dbg !715, !tbaa !551
  br label %for.body41, !dbg !709

if.then36:                                        ; preds = %if.then32
  store [3 x float]* %xx, [3 x float]** @write_xtc_traj.x_sel, align 8, !dbg !717, !tbaa !551
  br label %if.end59, !dbg !717

for.body41:                                       ; preds = %for.body41.lr.ph, %for.inc56
  %indvars.iv = phi i64 [ 0, %for.body41.lr.ph ], [ %indvars.iv.next, %for.inc56 ]
  %j.091 = phi i32 [ 0, %for.body41.lr.ph ], [ %j.1, %for.inc56 ]
  %arrayidx44 = getelementptr inbounds i16* %22, i64 %indvars.iv, !dbg !713
  %24 = load i16* %arrayidx44, align 2, !dbg !713, !tbaa !695
  %cmp46 = icmp eq i16 %24, 0, !dbg !713
  br i1 %cmp46, label %if.then48, label %for.inc56, !dbg !713

if.then48:                                        ; preds = %for.body41
  %arraydecay = getelementptr inbounds [3 x float]* %xx, i64 %indvars.iv, i64 0, !dbg !715
  %idxprom51 = sext i32 %j.091 to i64, !dbg !715
  %arraydecay53 = getelementptr inbounds [3 x float]* %23, i64 %idxprom51, i64 0, !dbg !715
  tail call void @llvm.dbg.value(metadata !{float* %arraydecay}, i64 0, metadata !718), !dbg !719
  tail call void @llvm.dbg.value(metadata !{float* %arraydecay53}, i64 0, metadata !720), !dbg !719
  %25 = load float* %arraydecay, align 4, !dbg !721, !tbaa !631
  store float %25, float* %arraydecay53, align 4, !dbg !721, !tbaa !631
  %arrayidx2.i = getelementptr inbounds [3 x float]* %xx, i64 %indvars.iv, i64 1, !dbg !722
  %26 = load float* %arrayidx2.i, align 4, !dbg !722, !tbaa !631
  %arrayidx3.i = getelementptr inbounds [3 x float]* %23, i64 %idxprom51, i64 1, !dbg !722
  store float %26, float* %arrayidx3.i, align 4, !dbg !722, !tbaa !631
  %arrayidx4.i = getelementptr inbounds [3 x float]* %xx, i64 %indvars.iv, i64 2, !dbg !723
  %27 = load float* %arrayidx4.i, align 4, !dbg !723, !tbaa !631
  %arrayidx5.i = getelementptr inbounds [3 x float]* %23, i64 %idxprom51, i64 2, !dbg !723
  store float %27, float* %arrayidx5.i, align 4, !dbg !723, !tbaa !631
  %inc54 = add nsw i32 %j.091, 1, !dbg !724
  tail call void @llvm.dbg.value(metadata !{i32 %inc54}, i64 0, metadata !492), !dbg !724
  br label %for.inc56, !dbg !725

for.inc56:                                        ; preds = %for.body41, %if.then48
  %j.1 = phi i32 [ %inc54, %if.then48 ], [ %j.091, %for.body41 ]
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !709
  %28 = trunc i64 %indvars.iv.next to i32, !dbg !709
  %cmp39 = icmp slt i32 %28, %21, !dbg !709
  br i1 %cmp39, label %for.body41, label %if.end59, !dbg !709

if.end59:                                         ; preds = %for.cond37.preheader.if.end59.loopexit_crit_edge, %for.inc56, %if.then36
  %29 = phi [3 x float]* [ %xx, %if.then36 ], [ %.pre.pre, %for.cond37.preheader.if.end59.loopexit_crit_edge ], [ %23, %for.inc56 ]
  %30 = load i32* @xd, align 4, !dbg !712, !tbaa !557
  %call60 = tail call i32 @write_xtc(i32 %30, i32 %20, i32 %step, float %t, [3 x float]* %box, [3 x float]* %29, float %prec) #6, !dbg !712
  %cmp61 = icmp eq i32 %call60, 0, !dbg !712
  br i1 %cmp61, label %if.then63, label %if.end65, !dbg !712

if.then63:                                        ; preds = %if.end59
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([10 x i8]* @.str8, i64 0, i64 0)) #6, !dbg !726
  br label %if.end65, !dbg !726

if.end65:                                         ; preds = %if.end22, %if.end59, %if.then63, %land.lhs.true28, %land.lhs.true24
  ret void, !dbg !727
}

; Function Attrs: optsize
declare i32 @open_xtc(i8*, i8*) #3

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #5

; Function Attrs: optsize
declare i32 @write_xtc(i32, i32, i32, float, [3 x float]*, [3 x float]*, float) #3

; Function Attrs: optsize
declare void @fatal_error(i32, i8*, ...) #3

; Function Attrs: nounwind optsize uwtable
define void @close_xtc_traj() #0 {
entry:
  %0 = load i32* @xd, align 4, !dbg !728, !tbaa !557
  tail call void @close_xtc(i32 %0) #6, !dbg !728
  ret void, !dbg !729
}

; Function Attrs: optsize
declare void @close_xtc(i32) #3

; Function Attrs: optsize
declare void @move_rvecs(%struct._IO_FILE*, i32, i32, i32, i32, [3 x float]*, [3 x float]*, i32, %struct.t_nsborder*, %struct.t_nrnb*) #3

; Function Attrs: optsize
declare void @save_free(i8*, i8*, i32, i8*) #3

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

declare float @fabsf(float)

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize readnone uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind optsize }
attributes #7 = { optsize }
attributes #8 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !203, metadata !204, metadata !523, metadata !203, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/stat.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/stat.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{metadata !3, metadata !51, metadata !185, metadata !196}
!3 = metadata !{i32 786436, metadata !4, null, metadata !"", i32 49, i64 32, i64 32, i32 0, i32 0, null, metadata !5, i32 0, i32 0} ; [ DW_TAG_enumeration_type ] [line 49, size 32, align 32, offset 0] [from ]
!4 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/types/idef.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!5 = metadata !{metadata !6, metadata !7, metadata !8, metadata !9, metadata !10, metadata !11, metadata !12, metadata !13, metadata !14, metadata !15, metadata !16, metadata !17, metadata !18, metadata !19, metadata !20, metadata !21, metadata !22, metadata !23, metadata !24, metadata !25, metadata !26, metadata !27, metadata !28, metadata !29, metadata !30, metadata !31, metadata !32, metadata !33, metadata !34, metadata !35, metadata !36, metadata !37, metadata !38, metadata !39, metadata !40, metadata !41, metadata !42, metadata !43, metadata !44, metadata !45, metadata !46, metadata !47, metadata !48, metadata !49, metadata !50}
!6 = metadata !{i32 786472, metadata !"F_BONDS", i64 0} ; [ DW_TAG_enumerator ] [F_BONDS :: 0]
!7 = metadata !{i32 786472, metadata !"F_G96BONDS", i64 1} ; [ DW_TAG_enumerator ] [F_G96BONDS :: 1]
!8 = metadata !{i32 786472, metadata !"F_MORSE", i64 2} ; [ DW_TAG_enumerator ] [F_MORSE :: 2]
!9 = metadata !{i32 786472, metadata !"F_CUBICBONDS", i64 3} ; [ DW_TAG_enumerator ] [F_CUBICBONDS :: 3]
!10 = metadata !{i32 786472, metadata !"F_CONNBONDS", i64 4} ; [ DW_TAG_enumerator ] [F_CONNBONDS :: 4]
!11 = metadata !{i32 786472, metadata !"F_HARMONIC", i64 5} ; [ DW_TAG_enumerator ] [F_HARMONIC :: 5]
!12 = metadata !{i32 786472, metadata !"F_ANGLES", i64 6} ; [ DW_TAG_enumerator ] [F_ANGLES :: 6]
!13 = metadata !{i32 786472, metadata !"F_G96ANGLES", i64 7} ; [ DW_TAG_enumerator ] [F_G96ANGLES :: 7]
!14 = metadata !{i32 786472, metadata !"F_PDIHS", i64 8} ; [ DW_TAG_enumerator ] [F_PDIHS :: 8]
!15 = metadata !{i32 786472, metadata !"F_RBDIHS", i64 9} ; [ DW_TAG_enumerator ] [F_RBDIHS :: 9]
!16 = metadata !{i32 786472, metadata !"F_IDIHS", i64 10} ; [ DW_TAG_enumerator ] [F_IDIHS :: 10]
!17 = metadata !{i32 786472, metadata !"F_LJ14", i64 11} ; [ DW_TAG_enumerator ] [F_LJ14 :: 11]
!18 = metadata !{i32 786472, metadata !"F_COUL14", i64 12} ; [ DW_TAG_enumerator ] [F_COUL14 :: 12]
!19 = metadata !{i32 786472, metadata !"F_LJ", i64 13} ; [ DW_TAG_enumerator ] [F_LJ :: 13]
!20 = metadata !{i32 786472, metadata !"F_BHAM", i64 14} ; [ DW_TAG_enumerator ] [F_BHAM :: 14]
!21 = metadata !{i32 786472, metadata !"F_LJLR", i64 15} ; [ DW_TAG_enumerator ] [F_LJLR :: 15]
!22 = metadata !{i32 786472, metadata !"F_DISPCORR", i64 16} ; [ DW_TAG_enumerator ] [F_DISPCORR :: 16]
!23 = metadata !{i32 786472, metadata !"F_SR", i64 17} ; [ DW_TAG_enumerator ] [F_SR :: 17]
!24 = metadata !{i32 786472, metadata !"F_LR", i64 18} ; [ DW_TAG_enumerator ] [F_LR :: 18]
!25 = metadata !{i32 786472, metadata !"F_WPOL", i64 19} ; [ DW_TAG_enumerator ] [F_WPOL :: 19]
!26 = metadata !{i32 786472, metadata !"F_POSRES", i64 20} ; [ DW_TAG_enumerator ] [F_POSRES :: 20]
!27 = metadata !{i32 786472, metadata !"F_DISRES", i64 21} ; [ DW_TAG_enumerator ] [F_DISRES :: 21]
!28 = metadata !{i32 786472, metadata !"F_DISRESVIOL", i64 22} ; [ DW_TAG_enumerator ] [F_DISRESVIOL :: 22]
!29 = metadata !{i32 786472, metadata !"F_ORIRES", i64 23} ; [ DW_TAG_enumerator ] [F_ORIRES :: 23]
!30 = metadata !{i32 786472, metadata !"F_ORIRESDEV", i64 24} ; [ DW_TAG_enumerator ] [F_ORIRESDEV :: 24]
!31 = metadata !{i32 786472, metadata !"F_ANGRES", i64 25} ; [ DW_TAG_enumerator ] [F_ANGRES :: 25]
!32 = metadata !{i32 786472, metadata !"F_ANGRESZ", i64 26} ; [ DW_TAG_enumerator ] [F_ANGRESZ :: 26]
!33 = metadata !{i32 786472, metadata !"F_SHAKE", i64 27} ; [ DW_TAG_enumerator ] [F_SHAKE :: 27]
!34 = metadata !{i32 786472, metadata !"F_SHAKENC", i64 28} ; [ DW_TAG_enumerator ] [F_SHAKENC :: 28]
!35 = metadata !{i32 786472, metadata !"F_SETTLE", i64 29} ; [ DW_TAG_enumerator ] [F_SETTLE :: 29]
!36 = metadata !{i32 786472, metadata !"F_DUMMY2", i64 30} ; [ DW_TAG_enumerator ] [F_DUMMY2 :: 30]
!37 = metadata !{i32 786472, metadata !"F_DUMMY3", i64 31} ; [ DW_TAG_enumerator ] [F_DUMMY3 :: 31]
!38 = metadata !{i32 786472, metadata !"F_DUMMY3FD", i64 32} ; [ DW_TAG_enumerator ] [F_DUMMY3FD :: 32]
!39 = metadata !{i32 786472, metadata !"F_DUMMY3FAD", i64 33} ; [ DW_TAG_enumerator ] [F_DUMMY3FAD :: 33]
!40 = metadata !{i32 786472, metadata !"F_DUMMY3OUT", i64 34} ; [ DW_TAG_enumerator ] [F_DUMMY3OUT :: 34]
!41 = metadata !{i32 786472, metadata !"F_DUMMY4FD", i64 35} ; [ DW_TAG_enumerator ] [F_DUMMY4FD :: 35]
!42 = metadata !{i32 786472, metadata !"F_EQM", i64 36} ; [ DW_TAG_enumerator ] [F_EQM :: 36]
!43 = metadata !{i32 786472, metadata !"F_EPOT", i64 37} ; [ DW_TAG_enumerator ] [F_EPOT :: 37]
!44 = metadata !{i32 786472, metadata !"F_EKIN", i64 38} ; [ DW_TAG_enumerator ] [F_EKIN :: 38]
!45 = metadata !{i32 786472, metadata !"F_ETOT", i64 39} ; [ DW_TAG_enumerator ] [F_ETOT :: 39]
!46 = metadata !{i32 786472, metadata !"F_TEMP", i64 40} ; [ DW_TAG_enumerator ] [F_TEMP :: 40]
!47 = metadata !{i32 786472, metadata !"F_PRES", i64 41} ; [ DW_TAG_enumerator ] [F_PRES :: 41]
!48 = metadata !{i32 786472, metadata !"F_DVDL", i64 42} ; [ DW_TAG_enumerator ] [F_DVDL :: 42]
!49 = metadata !{i32 786472, metadata !"F_DVDLKIN", i64 43} ; [ DW_TAG_enumerator ] [F_DVDLKIN :: 43]
!50 = metadata !{i32 786472, metadata !"F_NRE", i64 44} ; [ DW_TAG_enumerator ] [F_NRE :: 44]
!51 = metadata !{i32 786436, metadata !52, null, metadata !"", i32 51, i64 32, i64 32, i32 0, i32 0, null, metadata !53, i32 0, i32 0} ; [ DW_TAG_enumeration_type ] [line 51, size 32, align 32, offset 0] [from ]
!52 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/types/nrnb.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!53 = metadata !{metadata !54, metadata !55, metadata !56, metadata !57, metadata !58, metadata !59, metadata !60, metadata !61, metadata !62, metadata !63, metadata !64, metadata !65, metadata !66, metadata !67, metadata !68, metadata !69, metadata !70, metadata !71, metadata !72, metadata !73, metadata !74, metadata !75, metadata !76, metadata !77, metadata !78, metadata !79, metadata !80, metadata !81, metadata !82, metadata !83, metadata !84, metadata !85, metadata !86, metadata !87, metadata !88, metadata !89, metadata !90, metadata !91, metadata !92, metadata !93, metadata !94, metadata !95, metadata !96, metadata !97, metadata !98, metadata !99, metadata !100, metadata !101, metadata !102, metadata !103, metadata !104, metadata !105, metadata !106, metadata !107, metadata !108, metadata !109, metadata !110, metadata !111, metadata !112, metadata !113, metadata !114, metadata !115, metadata !116, metadata !117, metadata !118, metadata !119, metadata !120, metadata !121, metadata !122, metadata !123, metadata !124, metadata !125, metadata !126, metadata !127, metadata !128, metadata !129, metadata !130, metadata !131, metadata !132, metadata !133, metadata !134, metadata !135, metadata !136, metadata !137, metadata !138, metadata !139, metadata !140, metadata !141, metadata !142, metadata !143, metadata !144, metadata !145, metadata !146, metadata !147, metadata !148, metadata !149, metadata !150, metadata !151, metadata !152, metadata !153, metadata !154, metadata !155, metadata !156, metadata !157, metadata !158, metadata !159, metadata !160, metadata !161, metadata !162, metadata !163, metadata !164, metadata !165, metadata !166, metadata !167, metadata !168, metadata !169, metadata !170, metadata !171, metadata !172, metadata !173, metadata !174, metadata !175, metadata !176, metadata !177, metadata !178, metadata !179, metadata !180, metadata !181, metadata !182, metadata !183, metadata !184}
!54 = metadata !{i32 786472, metadata !"eNR_INL0100", i64 0} ; [ DW_TAG_enumerator ] [eNR_INL0100 :: 0]
!55 = metadata !{i32 786472, metadata !"eNR_INL0110", i64 1} ; [ DW_TAG_enumerator ] [eNR_INL0110 :: 1]
!56 = metadata !{i32 786472, metadata !"eNR_INL0200", i64 2} ; [ DW_TAG_enumerator ] [eNR_INL0200 :: 2]
!57 = metadata !{i32 786472, metadata !"eNR_INL0210", i64 3} ; [ DW_TAG_enumerator ] [eNR_INL0210 :: 3]
!58 = metadata !{i32 786472, metadata !"eNR_INL0300", i64 4} ; [ DW_TAG_enumerator ] [eNR_INL0300 :: 4]
!59 = metadata !{i32 786472, metadata !"eNR_INL0310", i64 5} ; [ DW_TAG_enumerator ] [eNR_INL0310 :: 5]
!60 = metadata !{i32 786472, metadata !"eNR_INL0301", i64 6} ; [ DW_TAG_enumerator ] [eNR_INL0301 :: 6]
!61 = metadata !{i32 786472, metadata !"eNR_INL0302", i64 7} ; [ DW_TAG_enumerator ] [eNR_INL0302 :: 7]
!62 = metadata !{i32 786472, metadata !"eNR_INL0400", i64 8} ; [ DW_TAG_enumerator ] [eNR_INL0400 :: 8]
!63 = metadata !{i32 786472, metadata !"eNR_INL0410", i64 9} ; [ DW_TAG_enumerator ] [eNR_INL0410 :: 9]
!64 = metadata !{i32 786472, metadata !"eNR_INL0401", i64 10} ; [ DW_TAG_enumerator ] [eNR_INL0401 :: 10]
!65 = metadata !{i32 786472, metadata !"eNR_INL0402", i64 11} ; [ DW_TAG_enumerator ] [eNR_INL0402 :: 11]
!66 = metadata !{i32 786472, metadata !"eNR_INL1000", i64 12} ; [ DW_TAG_enumerator ] [eNR_INL1000 :: 12]
!67 = metadata !{i32 786472, metadata !"eNR_INL1010", i64 13} ; [ DW_TAG_enumerator ] [eNR_INL1010 :: 13]
!68 = metadata !{i32 786472, metadata !"eNR_INL1020", i64 14} ; [ DW_TAG_enumerator ] [eNR_INL1020 :: 14]
!69 = metadata !{i32 786472, metadata !"eNR_INL1030", i64 15} ; [ DW_TAG_enumerator ] [eNR_INL1030 :: 15]
!70 = metadata !{i32 786472, metadata !"eNR_INL1100", i64 16} ; [ DW_TAG_enumerator ] [eNR_INL1100 :: 16]
!71 = metadata !{i32 786472, metadata !"eNR_INL1110", i64 17} ; [ DW_TAG_enumerator ] [eNR_INL1110 :: 17]
!72 = metadata !{i32 786472, metadata !"eNR_INL1120", i64 18} ; [ DW_TAG_enumerator ] [eNR_INL1120 :: 18]
!73 = metadata !{i32 786472, metadata !"eNR_INL1130", i64 19} ; [ DW_TAG_enumerator ] [eNR_INL1130 :: 19]
!74 = metadata !{i32 786472, metadata !"eNR_INL1200", i64 20} ; [ DW_TAG_enumerator ] [eNR_INL1200 :: 20]
!75 = metadata !{i32 786472, metadata !"eNR_INL1210", i64 21} ; [ DW_TAG_enumerator ] [eNR_INL1210 :: 21]
!76 = metadata !{i32 786472, metadata !"eNR_INL1220", i64 22} ; [ DW_TAG_enumerator ] [eNR_INL1220 :: 22]
!77 = metadata !{i32 786472, metadata !"eNR_INL1230", i64 23} ; [ DW_TAG_enumerator ] [eNR_INL1230 :: 23]
!78 = metadata !{i32 786472, metadata !"eNR_INL1300", i64 24} ; [ DW_TAG_enumerator ] [eNR_INL1300 :: 24]
!79 = metadata !{i32 786472, metadata !"eNR_INL1310", i64 25} ; [ DW_TAG_enumerator ] [eNR_INL1310 :: 25]
!80 = metadata !{i32 786472, metadata !"eNR_INL1320", i64 26} ; [ DW_TAG_enumerator ] [eNR_INL1320 :: 26]
!81 = metadata !{i32 786472, metadata !"eNR_INL1330", i64 27} ; [ DW_TAG_enumerator ] [eNR_INL1330 :: 27]
!82 = metadata !{i32 786472, metadata !"eNR_INL1400", i64 28} ; [ DW_TAG_enumerator ] [eNR_INL1400 :: 28]
!83 = metadata !{i32 786472, metadata !"eNR_INL1410", i64 29} ; [ DW_TAG_enumerator ] [eNR_INL1410 :: 29]
!84 = metadata !{i32 786472, metadata !"eNR_INL1420", i64 30} ; [ DW_TAG_enumerator ] [eNR_INL1420 :: 30]
!85 = metadata !{i32 786472, metadata !"eNR_INL1430", i64 31} ; [ DW_TAG_enumerator ] [eNR_INL1430 :: 31]
!86 = metadata !{i32 786472, metadata !"eNR_INL2000", i64 32} ; [ DW_TAG_enumerator ] [eNR_INL2000 :: 32]
!87 = metadata !{i32 786472, metadata !"eNR_INL2010", i64 33} ; [ DW_TAG_enumerator ] [eNR_INL2010 :: 33]
!88 = metadata !{i32 786472, metadata !"eNR_INL2020", i64 34} ; [ DW_TAG_enumerator ] [eNR_INL2020 :: 34]
!89 = metadata !{i32 786472, metadata !"eNR_INL2030", i64 35} ; [ DW_TAG_enumerator ] [eNR_INL2030 :: 35]
!90 = metadata !{i32 786472, metadata !"eNR_INL2100", i64 36} ; [ DW_TAG_enumerator ] [eNR_INL2100 :: 36]
!91 = metadata !{i32 786472, metadata !"eNR_INL2110", i64 37} ; [ DW_TAG_enumerator ] [eNR_INL2110 :: 37]
!92 = metadata !{i32 786472, metadata !"eNR_INL2120", i64 38} ; [ DW_TAG_enumerator ] [eNR_INL2120 :: 38]
!93 = metadata !{i32 786472, metadata !"eNR_INL2130", i64 39} ; [ DW_TAG_enumerator ] [eNR_INL2130 :: 39]
!94 = metadata !{i32 786472, metadata !"eNR_INL2200", i64 40} ; [ DW_TAG_enumerator ] [eNR_INL2200 :: 40]
!95 = metadata !{i32 786472, metadata !"eNR_INL2210", i64 41} ; [ DW_TAG_enumerator ] [eNR_INL2210 :: 41]
!96 = metadata !{i32 786472, metadata !"eNR_INL2220", i64 42} ; [ DW_TAG_enumerator ] [eNR_INL2220 :: 42]
!97 = metadata !{i32 786472, metadata !"eNR_INL2230", i64 43} ; [ DW_TAG_enumerator ] [eNR_INL2230 :: 43]
!98 = metadata !{i32 786472, metadata !"eNR_INL2300", i64 44} ; [ DW_TAG_enumerator ] [eNR_INL2300 :: 44]
!99 = metadata !{i32 786472, metadata !"eNR_INL2310", i64 45} ; [ DW_TAG_enumerator ] [eNR_INL2310 :: 45]
!100 = metadata !{i32 786472, metadata !"eNR_INL2320", i64 46} ; [ DW_TAG_enumerator ] [eNR_INL2320 :: 46]
!101 = metadata !{i32 786472, metadata !"eNR_INL2330", i64 47} ; [ DW_TAG_enumerator ] [eNR_INL2330 :: 47]
!102 = metadata !{i32 786472, metadata !"eNR_INL2400", i64 48} ; [ DW_TAG_enumerator ] [eNR_INL2400 :: 48]
!103 = metadata !{i32 786472, metadata !"eNR_INL2410", i64 49} ; [ DW_TAG_enumerator ] [eNR_INL2410 :: 49]
!104 = metadata !{i32 786472, metadata !"eNR_INL2420", i64 50} ; [ DW_TAG_enumerator ] [eNR_INL2420 :: 50]
!105 = metadata !{i32 786472, metadata !"eNR_INL2430", i64 51} ; [ DW_TAG_enumerator ] [eNR_INL2430 :: 51]
!106 = metadata !{i32 786472, metadata !"eNR_INL3000", i64 52} ; [ DW_TAG_enumerator ] [eNR_INL3000 :: 52]
!107 = metadata !{i32 786472, metadata !"eNR_INL3001", i64 53} ; [ DW_TAG_enumerator ] [eNR_INL3001 :: 53]
!108 = metadata !{i32 786472, metadata !"eNR_INL3002", i64 54} ; [ DW_TAG_enumerator ] [eNR_INL3002 :: 54]
!109 = metadata !{i32 786472, metadata !"eNR_INL3010", i64 55} ; [ DW_TAG_enumerator ] [eNR_INL3010 :: 55]
!110 = metadata !{i32 786472, metadata !"eNR_INL3020", i64 56} ; [ DW_TAG_enumerator ] [eNR_INL3020 :: 56]
!111 = metadata !{i32 786472, metadata !"eNR_INL3030", i64 57} ; [ DW_TAG_enumerator ] [eNR_INL3030 :: 57]
!112 = metadata !{i32 786472, metadata !"eNR_INL3100", i64 58} ; [ DW_TAG_enumerator ] [eNR_INL3100 :: 58]
!113 = metadata !{i32 786472, metadata !"eNR_INL3110", i64 59} ; [ DW_TAG_enumerator ] [eNR_INL3110 :: 59]
!114 = metadata !{i32 786472, metadata !"eNR_INL3120", i64 60} ; [ DW_TAG_enumerator ] [eNR_INL3120 :: 60]
!115 = metadata !{i32 786472, metadata !"eNR_INL3130", i64 61} ; [ DW_TAG_enumerator ] [eNR_INL3130 :: 61]
!116 = metadata !{i32 786472, metadata !"eNR_INL3200", i64 62} ; [ DW_TAG_enumerator ] [eNR_INL3200 :: 62]
!117 = metadata !{i32 786472, metadata !"eNR_INL3210", i64 63} ; [ DW_TAG_enumerator ] [eNR_INL3210 :: 63]
!118 = metadata !{i32 786472, metadata !"eNR_INL3220", i64 64} ; [ DW_TAG_enumerator ] [eNR_INL3220 :: 64]
!119 = metadata !{i32 786472, metadata !"eNR_INL3230", i64 65} ; [ DW_TAG_enumerator ] [eNR_INL3230 :: 65]
!120 = metadata !{i32 786472, metadata !"eNR_INL3300", i64 66} ; [ DW_TAG_enumerator ] [eNR_INL3300 :: 66]
!121 = metadata !{i32 786472, metadata !"eNR_INL3301", i64 67} ; [ DW_TAG_enumerator ] [eNR_INL3301 :: 67]
!122 = metadata !{i32 786472, metadata !"eNR_INL3302", i64 68} ; [ DW_TAG_enumerator ] [eNR_INL3302 :: 68]
!123 = metadata !{i32 786472, metadata !"eNR_INL3310", i64 69} ; [ DW_TAG_enumerator ] [eNR_INL3310 :: 69]
!124 = metadata !{i32 786472, metadata !"eNR_INL3320", i64 70} ; [ DW_TAG_enumerator ] [eNR_INL3320 :: 70]
!125 = metadata !{i32 786472, metadata !"eNR_INL3330", i64 71} ; [ DW_TAG_enumerator ] [eNR_INL3330 :: 71]
!126 = metadata !{i32 786472, metadata !"eNR_INL3400", i64 72} ; [ DW_TAG_enumerator ] [eNR_INL3400 :: 72]
!127 = metadata !{i32 786472, metadata !"eNR_INL3401", i64 73} ; [ DW_TAG_enumerator ] [eNR_INL3401 :: 73]
!128 = metadata !{i32 786472, metadata !"eNR_INL3402", i64 74} ; [ DW_TAG_enumerator ] [eNR_INL3402 :: 74]
!129 = metadata !{i32 786472, metadata !"eNR_INL3410", i64 75} ; [ DW_TAG_enumerator ] [eNR_INL3410 :: 75]
!130 = metadata !{i32 786472, metadata !"eNR_INL3420", i64 76} ; [ DW_TAG_enumerator ] [eNR_INL3420 :: 76]
!131 = metadata !{i32 786472, metadata !"eNR_INL3430", i64 77} ; [ DW_TAG_enumerator ] [eNR_INL3430 :: 77]
!132 = metadata !{i32 786472, metadata !"eNR_INLOOP", i64 78} ; [ DW_TAG_enumerator ] [eNR_INLOOP :: 78]
!133 = metadata !{i32 786472, metadata !"eNR_INL_IATOM", i64 78} ; [ DW_TAG_enumerator ] [eNR_INL_IATOM :: 78]
!134 = metadata !{i32 786472, metadata !"eNR_WEIGHTS", i64 79} ; [ DW_TAG_enumerator ] [eNR_WEIGHTS :: 79]
!135 = metadata !{i32 786472, metadata !"eNR_SPREADQ", i64 80} ; [ DW_TAG_enumerator ] [eNR_SPREADQ :: 80]
!136 = metadata !{i32 786472, metadata !"eNR_SPREADQBSP", i64 81} ; [ DW_TAG_enumerator ] [eNR_SPREADQBSP :: 81]
!137 = metadata !{i32 786472, metadata !"eNR_GATHERF", i64 82} ; [ DW_TAG_enumerator ] [eNR_GATHERF :: 82]
!138 = metadata !{i32 786472, metadata !"eNR_GATHERFBSP", i64 83} ; [ DW_TAG_enumerator ] [eNR_GATHERFBSP :: 83]
!139 = metadata !{i32 786472, metadata !"eNR_FFT", i64 84} ; [ DW_TAG_enumerator ] [eNR_FFT :: 84]
!140 = metadata !{i32 786472, metadata !"eNR_CONV", i64 85} ; [ DW_TAG_enumerator ] [eNR_CONV :: 85]
!141 = metadata !{i32 786472, metadata !"eNR_SOLVEPME", i64 86} ; [ DW_TAG_enumerator ] [eNR_SOLVEPME :: 86]
!142 = metadata !{i32 786472, metadata !"eNR_NS", i64 87} ; [ DW_TAG_enumerator ] [eNR_NS :: 87]
!143 = metadata !{i32 786472, metadata !"eNR_RESETX", i64 88} ; [ DW_TAG_enumerator ] [eNR_RESETX :: 88]
!144 = metadata !{i32 786472, metadata !"eNR_SHIFTX", i64 89} ; [ DW_TAG_enumerator ] [eNR_SHIFTX :: 89]
!145 = metadata !{i32 786472, metadata !"eNR_CGCM", i64 90} ; [ DW_TAG_enumerator ] [eNR_CGCM :: 90]
!146 = metadata !{i32 786472, metadata !"eNR_FSUM", i64 91} ; [ DW_TAG_enumerator ] [eNR_FSUM :: 91]
!147 = metadata !{i32 786472, metadata !"eNR_BONDS", i64 92} ; [ DW_TAG_enumerator ] [eNR_BONDS :: 92]
!148 = metadata !{i32 786472, metadata !"eNR_G96BONDS", i64 93} ; [ DW_TAG_enumerator ] [eNR_G96BONDS :: 93]
!149 = metadata !{i32 786472, metadata !"eNR_ANGLES", i64 94} ; [ DW_TAG_enumerator ] [eNR_ANGLES :: 94]
!150 = metadata !{i32 786472, metadata !"eNR_G96ANGLES", i64 95} ; [ DW_TAG_enumerator ] [eNR_G96ANGLES :: 95]
!151 = metadata !{i32 786472, metadata !"eNR_PROPER", i64 96} ; [ DW_TAG_enumerator ] [eNR_PROPER :: 96]
!152 = metadata !{i32 786472, metadata !"eNR_IMPROPER", i64 97} ; [ DW_TAG_enumerator ] [eNR_IMPROPER :: 97]
!153 = metadata !{i32 786472, metadata !"eNR_RB", i64 98} ; [ DW_TAG_enumerator ] [eNR_RB :: 98]
!154 = metadata !{i32 786472, metadata !"eNR_DISRES", i64 99} ; [ DW_TAG_enumerator ] [eNR_DISRES :: 99]
!155 = metadata !{i32 786472, metadata !"eNR_ORIRES", i64 100} ; [ DW_TAG_enumerator ] [eNR_ORIRES :: 100]
!156 = metadata !{i32 786472, metadata !"eNR_POSRES", i64 101} ; [ DW_TAG_enumerator ] [eNR_POSRES :: 101]
!157 = metadata !{i32 786472, metadata !"eNR_ANGRES", i64 102} ; [ DW_TAG_enumerator ] [eNR_ANGRES :: 102]
!158 = metadata !{i32 786472, metadata !"eNR_ANGRESZ", i64 103} ; [ DW_TAG_enumerator ] [eNR_ANGRESZ :: 103]
!159 = metadata !{i32 786472, metadata !"eNR_MORSE", i64 104} ; [ DW_TAG_enumerator ] [eNR_MORSE :: 104]
!160 = metadata !{i32 786472, metadata !"eNR_CUBICBONDS", i64 105} ; [ DW_TAG_enumerator ] [eNR_CUBICBONDS :: 105]
!161 = metadata !{i32 786472, metadata !"eNR_WPOL", i64 106} ; [ DW_TAG_enumerator ] [eNR_WPOL :: 106]
!162 = metadata !{i32 786472, metadata !"eNR_VIRIAL", i64 107} ; [ DW_TAG_enumerator ] [eNR_VIRIAL :: 107]
!163 = metadata !{i32 786472, metadata !"eNR_UPDATE", i64 108} ; [ DW_TAG_enumerator ] [eNR_UPDATE :: 108]
!164 = metadata !{i32 786472, metadata !"eNR_EXTUPDATE", i64 109} ; [ DW_TAG_enumerator ] [eNR_EXTUPDATE :: 109]
!165 = metadata !{i32 786472, metadata !"eNR_STOPCM", i64 110} ; [ DW_TAG_enumerator ] [eNR_STOPCM :: 110]
!166 = metadata !{i32 786472, metadata !"eNR_PCOUPL", i64 111} ; [ DW_TAG_enumerator ] [eNR_PCOUPL :: 111]
!167 = metadata !{i32 786472, metadata !"eNR_EKIN", i64 112} ; [ DW_TAG_enumerator ] [eNR_EKIN :: 112]
!168 = metadata !{i32 786472, metadata !"eNR_LINCS", i64 113} ; [ DW_TAG_enumerator ] [eNR_LINCS :: 113]
!169 = metadata !{i32 786472, metadata !"eNR_LINCSMAT", i64 114} ; [ DW_TAG_enumerator ] [eNR_LINCSMAT :: 114]
!170 = metadata !{i32 786472, metadata !"eNR_SHAKE", i64 115} ; [ DW_TAG_enumerator ] [eNR_SHAKE :: 115]
!171 = metadata !{i32 786472, metadata !"eNR_SHAKE_V", i64 116} ; [ DW_TAG_enumerator ] [eNR_SHAKE_V :: 116]
!172 = metadata !{i32 786472, metadata !"eNR_SHAKE_RIJ", i64 117} ; [ DW_TAG_enumerator ] [eNR_SHAKE_RIJ :: 117]
!173 = metadata !{i32 786472, metadata !"eNR_SHAKE_VIR", i64 118} ; [ DW_TAG_enumerator ] [eNR_SHAKE_VIR :: 118]
!174 = metadata !{i32 786472, metadata !"eNR_SETTLE", i64 119} ; [ DW_TAG_enumerator ] [eNR_SETTLE :: 119]
!175 = metadata !{i32 786472, metadata !"eNR_PSHAKEINITLD", i64 120} ; [ DW_TAG_enumerator ] [eNR_PSHAKEINITLD :: 120]
!176 = metadata !{i32 786472, metadata !"eNR_PSHAKEINITMD", i64 121} ; [ DW_TAG_enumerator ] [eNR_PSHAKEINITMD :: 121]
!177 = metadata !{i32 786472, metadata !"eNR_PSHAKE", i64 122} ; [ DW_TAG_enumerator ] [eNR_PSHAKE :: 122]
!178 = metadata !{i32 786472, metadata !"eNR_DUM2", i64 123} ; [ DW_TAG_enumerator ] [eNR_DUM2 :: 123]
!179 = metadata !{i32 786472, metadata !"eNR_DUM3", i64 124} ; [ DW_TAG_enumerator ] [eNR_DUM3 :: 124]
!180 = metadata !{i32 786472, metadata !"eNR_DUM3FD", i64 125} ; [ DW_TAG_enumerator ] [eNR_DUM3FD :: 125]
!181 = metadata !{i32 786472, metadata !"eNR_DUM3FAD", i64 126} ; [ DW_TAG_enumerator ] [eNR_DUM3FAD :: 126]
!182 = metadata !{i32 786472, metadata !"eNR_DUM3OUT", i64 127} ; [ DW_TAG_enumerator ] [eNR_DUM3OUT :: 127]
!183 = metadata !{i32 786472, metadata !"eNR_DUM4FD", i64 128} ; [ DW_TAG_enumerator ] [eNR_DUM4FD :: 128]
!184 = metadata !{i32 786472, metadata !"eNRNB", i64 129} ; [ DW_TAG_enumerator ] [eNRNB :: 129]
!185 = metadata !{i32 786436, metadata !186, null, metadata !"", i32 36, i64 32, i64 32, i32 0, i32 0, null, metadata !187, i32 0, i32 0} ; [ DW_TAG_enumeration_type ] [line 36, size 32, align 32, offset 0] [from ]
!186 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/types/group.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!187 = metadata !{metadata !188, metadata !189, metadata !190, metadata !191, metadata !192, metadata !193, metadata !194, metadata !195}
!188 = metadata !{i32 786472, metadata !"egCOUL", i64 0} ; [ DW_TAG_enumerator ] [egCOUL :: 0]
!189 = metadata !{i32 786472, metadata !"egLJ", i64 1} ; [ DW_TAG_enumerator ] [egLJ :: 1]
!190 = metadata !{i32 786472, metadata !"egBHAM", i64 2} ; [ DW_TAG_enumerator ] [egBHAM :: 2]
!191 = metadata !{i32 786472, metadata !"egLR", i64 3} ; [ DW_TAG_enumerator ] [egLR :: 3]
!192 = metadata !{i32 786472, metadata !"egLJLR", i64 4} ; [ DW_TAG_enumerator ] [egLJLR :: 4]
!193 = metadata !{i32 786472, metadata !"egCOUL14", i64 5} ; [ DW_TAG_enumerator ] [egCOUL14 :: 5]
!194 = metadata !{i32 786472, metadata !"egLJ14", i64 6} ; [ DW_TAG_enumerator ] [egLJ14 :: 6]
!195 = metadata !{i32 786472, metadata !"egNR", i64 7} ; [ DW_TAG_enumerator ] [egNR :: 7]
!196 = metadata !{i32 786436, metadata !197, null, metadata !"", i32 126, i64 32, i64 32, i32 0, i32 0, null, metadata !198, i32 0, i32 0} ; [ DW_TAG_enumeration_type ] [line 126, size 32, align 32, offset 0] [from ]
!197 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/types/enums.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!198 = metadata !{metadata !199, metadata !200, metadata !201, metadata !202}
!199 = metadata !{i32 786472, metadata !"ecmLINEAR", i64 0} ; [ DW_TAG_enumerator ] [ecmLINEAR :: 0]
!200 = metadata !{i32 786472, metadata !"ecmANGULAR", i64 1} ; [ DW_TAG_enumerator ] [ecmANGULAR :: 1]
!201 = metadata !{i32 786472, metadata !"ecmNO", i64 2} ; [ DW_TAG_enumerator ] [ecmNO :: 2]
!202 = metadata !{i32 786472, metadata !"ecmNR", i64 3} ; [ DW_TAG_enumerator ] [ecmNR :: 3]
!203 = metadata !{i32 0}
!204 = metadata !{metadata !205, metadata !410, metadata !416, metadata !449, metadata !493, metadata !496, metadata !506}
!205 = metadata !{i32 786478, metadata !1, metadata !206, metadata !"global_stat", metadata !"global_stat", metadata !"", i32 59, metadata !207, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._IO_FILE*, %struct.t_commrec*, float*, [3 x float]*, [3 x float]*, %struct.t_grpopts*, %struct.t_groups*, %struct.t_nrnb*, %struct.t_nrnb*, %struct.t_vcm*, float*)* @global_stat, null, null, metadata !380, i32 65} ; [ DW_TAG_subprogram ] [line 59] [def] [scope 65] [global_stat]
!206 = metadata !{i32 786473, metadata !1}        ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/stat.c]
!207 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !208, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!208 = metadata !{null, metadata !209, metadata !267, metadata !278, metadata !281, metadata !281, metadata !285, metadata !306, metadata !352, metadata !352, metadata !361, metadata !278}
!209 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !210} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from FILE]
!210 = metadata !{i32 786454, metadata !1, null, metadata !"FILE", i32 48, i64 0, i64 0, i64 0, i32 0, metadata !211} ; [ DW_TAG_typedef ] [FILE] [line 48, size 0, align 0, offset 0] [from _IO_FILE]
!211 = metadata !{i32 786451, metadata !212, null, metadata !"_IO_FILE", i32 245, i64 1728, i64 64, i32 0, i32 0, null, metadata !213, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IO_FILE] [line 245, size 1728, align 64, offset 0] [from ]
!212 = metadata !{metadata !"/usr/include/libio.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!213 = metadata !{metadata !214, metadata !216, metadata !219, metadata !220, metadata !221, metadata !222, metadata !223, metadata !224, metadata !225, metadata !226, metadata !227, metadata !228, metadata !229, metadata !237, metadata !238, metadata !239, metadata !240, metadata !243, metadata !245, metadata !247, metadata !251, metadata !253, metadata !255, metadata !256, metadata !257, metadata !258, metadata !259, metadata !262, metadata !263}
!214 = metadata !{i32 786445, metadata !212, metadata !211, metadata !"_flags", i32 246, i64 32, i64 32, i64 0, i32 0, metadata !215} ; [ DW_TAG_member ] [_flags] [line 246, size 32, align 32, offset 0] [from int]
!215 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!216 = metadata !{i32 786445, metadata !212, metadata !211, metadata !"_IO_read_ptr", i32 251, i64 64, i64 64, i64 64, i32 0, metadata !217} ; [ DW_TAG_member ] [_IO_read_ptr] [line 251, size 64, align 64, offset 64] [from ]
!217 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !218} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!218 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!219 = metadata !{i32 786445, metadata !212, metadata !211, metadata !"_IO_read_end", i32 252, i64 64, i64 64, i64 128, i32 0, metadata !217} ; [ DW_TAG_member ] [_IO_read_end] [line 252, size 64, align 64, offset 128] [from ]
!220 = metadata !{i32 786445, metadata !212, metadata !211, metadata !"_IO_read_base", i32 253, i64 64, i64 64, i64 192, i32 0, metadata !217} ; [ DW_TAG_member ] [_IO_read_base] [line 253, size 64, align 64, offset 192] [from ]
!221 = metadata !{i32 786445, metadata !212, metadata !211, metadata !"_IO_write_base", i32 254, i64 64, i64 64, i64 256, i32 0, metadata !217} ; [ DW_TAG_member ] [_IO_write_base] [line 254, size 64, align 64, offset 256] [from ]
!222 = metadata !{i32 786445, metadata !212, metadata !211, metadata !"_IO_write_ptr", i32 255, i64 64, i64 64, i64 320, i32 0, metadata !217} ; [ DW_TAG_member ] [_IO_write_ptr] [line 255, size 64, align 64, offset 320] [from ]
!223 = metadata !{i32 786445, metadata !212, metadata !211, metadata !"_IO_write_end", i32 256, i64 64, i64 64, i64 384, i32 0, metadata !217} ; [ DW_TAG_member ] [_IO_write_end] [line 256, size 64, align 64, offset 384] [from ]
!224 = metadata !{i32 786445, metadata !212, metadata !211, metadata !"_IO_buf_base", i32 257, i64 64, i64 64, i64 448, i32 0, metadata !217} ; [ DW_TAG_member ] [_IO_buf_base] [line 257, size 64, align 64, offset 448] [from ]
!225 = metadata !{i32 786445, metadata !212, metadata !211, metadata !"_IO_buf_end", i32 258, i64 64, i64 64, i64 512, i32 0, metadata !217} ; [ DW_TAG_member ] [_IO_buf_end] [line 258, size 64, align 64, offset 512] [from ]
!226 = metadata !{i32 786445, metadata !212, metadata !211, metadata !"_IO_save_base", i32 260, i64 64, i64 64, i64 576, i32 0, metadata !217} ; [ DW_TAG_member ] [_IO_save_base] [line 260, size 64, align 64, offset 576] [from ]
!227 = metadata !{i32 786445, metadata !212, metadata !211, metadata !"_IO_backup_base", i32 261, i64 64, i64 64, i64 640, i32 0, metadata !217} ; [ DW_TAG_member ] [_IO_backup_base] [line 261, size 64, align 64, offset 640] [from ]
!228 = metadata !{i32 786445, metadata !212, metadata !211, metadata !"_IO_save_end", i32 262, i64 64, i64 64, i64 704, i32 0, metadata !217} ; [ DW_TAG_member ] [_IO_save_end] [line 262, size 64, align 64, offset 704] [from ]
!229 = metadata !{i32 786445, metadata !212, metadata !211, metadata !"_markers", i32 264, i64 64, i64 64, i64 768, i32 0, metadata !230} ; [ DW_TAG_member ] [_markers] [line 264, size 64, align 64, offset 768] [from ]
!230 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !231} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_marker]
!231 = metadata !{i32 786451, metadata !212, null, metadata !"_IO_marker", i32 160, i64 192, i64 64, i32 0, i32 0, null, metadata !232, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IO_marker] [line 160, size 192, align 64, offset 0] [from ]
!232 = metadata !{metadata !233, metadata !234, metadata !236}
!233 = metadata !{i32 786445, metadata !212, metadata !231, metadata !"_next", i32 161, i64 64, i64 64, i64 0, i32 0, metadata !230} ; [ DW_TAG_member ] [_next] [line 161, size 64, align 64, offset 0] [from ]
!234 = metadata !{i32 786445, metadata !212, metadata !231, metadata !"_sbuf", i32 162, i64 64, i64 64, i64 64, i32 0, metadata !235} ; [ DW_TAG_member ] [_sbuf] [line 162, size 64, align 64, offset 64] [from ]
!235 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !211} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_FILE]
!236 = metadata !{i32 786445, metadata !212, metadata !231, metadata !"_pos", i32 166, i64 32, i64 32, i64 128, i32 0, metadata !215} ; [ DW_TAG_member ] [_pos] [line 166, size 32, align 32, offset 128] [from int]
!237 = metadata !{i32 786445, metadata !212, metadata !211, metadata !"_chain", i32 266, i64 64, i64 64, i64 832, i32 0, metadata !235} ; [ DW_TAG_member ] [_chain] [line 266, size 64, align 64, offset 832] [from ]
!238 = metadata !{i32 786445, metadata !212, metadata !211, metadata !"_fileno", i32 268, i64 32, i64 32, i64 896, i32 0, metadata !215} ; [ DW_TAG_member ] [_fileno] [line 268, size 32, align 32, offset 896] [from int]
!239 = metadata !{i32 786445, metadata !212, metadata !211, metadata !"_flags2", i32 272, i64 32, i64 32, i64 928, i32 0, metadata !215} ; [ DW_TAG_member ] [_flags2] [line 272, size 32, align 32, offset 928] [from int]
!240 = metadata !{i32 786445, metadata !212, metadata !211, metadata !"_old_offset", i32 274, i64 64, i64 64, i64 960, i32 0, metadata !241} ; [ DW_TAG_member ] [_old_offset] [line 274, size 64, align 64, offset 960] [from __off_t]
!241 = metadata !{i32 786454, metadata !212, null, metadata !"__off_t", i32 131, i64 0, i64 0, i64 0, i32 0, metadata !242} ; [ DW_TAG_typedef ] [__off_t] [line 131, size 0, align 0, offset 0] [from long int]
!242 = metadata !{i32 786468, null, null, metadata !"long int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [long int] [line 0, size 64, align 64, offset 0, enc DW_ATE_signed]
!243 = metadata !{i32 786445, metadata !212, metadata !211, metadata !"_cur_column", i32 278, i64 16, i64 16, i64 1024, i32 0, metadata !244} ; [ DW_TAG_member ] [_cur_column] [line 278, size 16, align 16, offset 1024] [from unsigned short]
!244 = metadata !{i32 786468, null, null, metadata !"unsigned short", i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned short] [line 0, size 16, align 16, offset 0, enc DW_ATE_unsigned]
!245 = metadata !{i32 786445, metadata !212, metadata !211, metadata !"_vtable_offset", i32 279, i64 8, i64 8, i64 1040, i32 0, metadata !246} ; [ DW_TAG_member ] [_vtable_offset] [line 279, size 8, align 8, offset 1040] [from signed char]
!246 = metadata !{i32 786468, null, null, metadata !"signed char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [signed char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!247 = metadata !{i32 786445, metadata !212, metadata !211, metadata !"_shortbuf", i32 280, i64 8, i64 8, i64 1048, i32 0, metadata !248} ; [ DW_TAG_member ] [_shortbuf] [line 280, size 8, align 8, offset 1048] [from ]
!248 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 8, i64 8, i32 0, i32 0, metadata !218, metadata !249, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 8, align 8, offset 0] [from char]
!249 = metadata !{metadata !250}
!250 = metadata !{i32 786465, i64 0, i64 1}       ; [ DW_TAG_subrange_type ] [0, 0]
!251 = metadata !{i32 786445, metadata !212, metadata !211, metadata !"_lock", i32 284, i64 64, i64 64, i64 1088, i32 0, metadata !252} ; [ DW_TAG_member ] [_lock] [line 284, size 64, align 64, offset 1088] [from ]
!252 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!253 = metadata !{i32 786445, metadata !212, metadata !211, metadata !"_offset", i32 293, i64 64, i64 64, i64 1152, i32 0, metadata !254} ; [ DW_TAG_member ] [_offset] [line 293, size 64, align 64, offset 1152] [from __off64_t]
!254 = metadata !{i32 786454, metadata !212, null, metadata !"__off64_t", i32 132, i64 0, i64 0, i64 0, i32 0, metadata !242} ; [ DW_TAG_typedef ] [__off64_t] [line 132, size 0, align 0, offset 0] [from long int]
!255 = metadata !{i32 786445, metadata !212, metadata !211, metadata !"__pad1", i32 302, i64 64, i64 64, i64 1216, i32 0, metadata !252} ; [ DW_TAG_member ] [__pad1] [line 302, size 64, align 64, offset 1216] [from ]
!256 = metadata !{i32 786445, metadata !212, metadata !211, metadata !"__pad2", i32 303, i64 64, i64 64, i64 1280, i32 0, metadata !252} ; [ DW_TAG_member ] [__pad2] [line 303, size 64, align 64, offset 1280] [from ]
!257 = metadata !{i32 786445, metadata !212, metadata !211, metadata !"__pad3", i32 304, i64 64, i64 64, i64 1344, i32 0, metadata !252} ; [ DW_TAG_member ] [__pad3] [line 304, size 64, align 64, offset 1344] [from ]
!258 = metadata !{i32 786445, metadata !212, metadata !211, metadata !"__pad4", i32 305, i64 64, i64 64, i64 1408, i32 0, metadata !252} ; [ DW_TAG_member ] [__pad4] [line 305, size 64, align 64, offset 1408] [from ]
!259 = metadata !{i32 786445, metadata !212, metadata !211, metadata !"__pad5", i32 306, i64 64, i64 64, i64 1472, i32 0, metadata !260} ; [ DW_TAG_member ] [__pad5] [line 306, size 64, align 64, offset 1472] [from size_t]
!260 = metadata !{i32 786454, metadata !212, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !261} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!261 = metadata !{i32 786468, null, null, metadata !"long unsigned int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long unsigned int] [line 0, size 64, align 64, offset 0, enc DW_ATE_unsigned]
!262 = metadata !{i32 786445, metadata !212, metadata !211, metadata !"_mode", i32 308, i64 32, i64 32, i64 1536, i32 0, metadata !215} ; [ DW_TAG_member ] [_mode] [line 308, size 32, align 32, offset 1536] [from int]
!263 = metadata !{i32 786445, metadata !212, metadata !211, metadata !"_unused2", i32 310, i64 160, i64 8, i64 1568, i32 0, metadata !264} ; [ DW_TAG_member ] [_unused2] [line 310, size 160, align 8, offset 1568] [from ]
!264 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 160, i64 8, i32 0, i32 0, metadata !218, metadata !265, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 160, align 8, offset 0] [from char]
!265 = metadata !{metadata !266}
!266 = metadata !{i32 786465, i64 0, i64 20}      ; [ DW_TAG_subrange_type ] [0, 19]
!267 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !268} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_commrec]
!268 = metadata !{i32 786454, metadata !1, null, metadata !"t_commrec", i32 40, i64 0, i64 0, i64 0, i32 0, metadata !269} ; [ DW_TAG_typedef ] [t_commrec] [line 40, size 0, align 0, offset 0] [from ]
!269 = metadata !{i32 786451, metadata !270, null, metadata !"", i32 36, i64 192, i64 32, i32 0, i32 0, null, metadata !271, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 36, size 192, align 32, offset 0] [from ]
!270 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/types/commrec.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!271 = metadata !{metadata !272, metadata !273, metadata !274, metadata !275, metadata !276, metadata !277}
!272 = metadata !{i32 786445, metadata !270, metadata !269, metadata !"nodeid", i32 37, i64 32, i64 32, i64 0, i32 0, metadata !215} ; [ DW_TAG_member ] [nodeid] [line 37, size 32, align 32, offset 0] [from int]
!273 = metadata !{i32 786445, metadata !270, metadata !269, metadata !"nnodes", i32 37, i64 32, i64 32, i64 32, i32 0, metadata !215} ; [ DW_TAG_member ] [nnodes] [line 37, size 32, align 32, offset 32] [from int]
!274 = metadata !{i32 786445, metadata !270, metadata !269, metadata !"left", i32 38, i64 32, i64 32, i64 64, i32 0, metadata !215} ; [ DW_TAG_member ] [left] [line 38, size 32, align 32, offset 64] [from int]
!275 = metadata !{i32 786445, metadata !270, metadata !269, metadata !"right", i32 38, i64 32, i64 32, i64 96, i32 0, metadata !215} ; [ DW_TAG_member ] [right] [line 38, size 32, align 32, offset 96] [from int]
!276 = metadata !{i32 786445, metadata !270, metadata !269, metadata !"threadid", i32 39, i64 32, i64 32, i64 128, i32 0, metadata !215} ; [ DW_TAG_member ] [threadid] [line 39, size 32, align 32, offset 128] [from int]
!277 = metadata !{i32 786445, metadata !270, metadata !269, metadata !"nthreads", i32 39, i64 32, i64 32, i64 160, i32 0, metadata !215} ; [ DW_TAG_member ] [nthreads] [line 39, size 32, align 32, offset 160] [from int]
!278 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !279} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from real]
!279 = metadata !{i32 786454, metadata !1, null, metadata !"real", i32 87, i64 0, i64 0, i64 0, i32 0, metadata !280} ; [ DW_TAG_typedef ] [real] [line 87, size 0, align 0, offset 0] [from float]
!280 = metadata !{i32 786468, null, null, metadata !"float", i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [float] [line 0, size 32, align 32, offset 0, enc DW_ATE_float]
!281 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !282} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!282 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 96, i64 32, i32 0, i32 0, metadata !279, metadata !283, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 96, align 32, offset 0] [from real]
!283 = metadata !{metadata !284}
!284 = metadata !{i32 786465, i64 0, i64 3}       ; [ DW_TAG_subrange_type ] [0, 2]
!285 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !286} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_grpopts]
!286 = metadata !{i32 786454, metadata !1, null, metadata !"t_grpopts", i32 53, i64 0, i64 0, i64 0, i32 0, metadata !287} ; [ DW_TAG_typedef ] [t_grpopts] [line 53, size 0, align 0, offset 0] [from ]
!287 = metadata !{i32 786451, metadata !288, null, metadata !"", i32 42, i64 512, i64 64, i32 0, i32 0, null, metadata !289, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 42, size 512, align 64, offset 0] [from ]
!288 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/types/inputrec.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!289 = metadata !{metadata !290, metadata !291, metadata !292, metadata !293, metadata !294, metadata !295, metadata !296, metadata !297, metadata !300, metadata !304}
!290 = metadata !{i32 786445, metadata !288, metadata !287, metadata !"ngtc", i32 43, i64 32, i64 32, i64 0, i32 0, metadata !215} ; [ DW_TAG_member ] [ngtc] [line 43, size 32, align 32, offset 0] [from int]
!291 = metadata !{i32 786445, metadata !288, metadata !287, metadata !"ngacc", i32 44, i64 32, i64 32, i64 32, i32 0, metadata !215} ; [ DW_TAG_member ] [ngacc] [line 44, size 32, align 32, offset 32] [from int]
!292 = metadata !{i32 786445, metadata !288, metadata !287, metadata !"ngfrz", i32 45, i64 32, i64 32, i64 64, i32 0, metadata !215} ; [ DW_TAG_member ] [ngfrz] [line 45, size 32, align 32, offset 64] [from int]
!293 = metadata !{i32 786445, metadata !288, metadata !287, metadata !"ngener", i32 46, i64 32, i64 32, i64 96, i32 0, metadata !215} ; [ DW_TAG_member ] [ngener] [line 46, size 32, align 32, offset 96] [from int]
!294 = metadata !{i32 786445, metadata !288, metadata !287, metadata !"nrdf", i32 47, i64 64, i64 64, i64 128, i32 0, metadata !278} ; [ DW_TAG_member ] [nrdf] [line 47, size 64, align 64, offset 128] [from ]
!295 = metadata !{i32 786445, metadata !288, metadata !287, metadata !"ref_t", i32 48, i64 64, i64 64, i64 192, i32 0, metadata !278} ; [ DW_TAG_member ] [ref_t] [line 48, size 64, align 64, offset 192] [from ]
!296 = metadata !{i32 786445, metadata !288, metadata !287, metadata !"tau_t", i32 49, i64 64, i64 64, i64 256, i32 0, metadata !278} ; [ DW_TAG_member ] [tau_t] [line 49, size 64, align 64, offset 256] [from ]
!297 = metadata !{i32 786445, metadata !288, metadata !287, metadata !"acc", i32 50, i64 64, i64 64, i64 320, i32 0, metadata !298} ; [ DW_TAG_member ] [acc] [line 50, size 64, align 64, offset 320] [from ]
!298 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !299} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from rvec]
!299 = metadata !{i32 786454, metadata !288, null, metadata !"rvec", i32 101, i64 0, i64 0, i64 0, i32 0, metadata !282} ; [ DW_TAG_typedef ] [rvec] [line 101, size 0, align 0, offset 0] [from ]
!300 = metadata !{i32 786445, metadata !288, metadata !287, metadata !"nFreeze", i32 51, i64 64, i64 64, i64 384, i32 0, metadata !301} ; [ DW_TAG_member ] [nFreeze] [line 51, size 64, align 64, offset 384] [from ]
!301 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !302} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ivec]
!302 = metadata !{i32 786454, metadata !288, null, metadata !"ivec", i32 107, i64 0, i64 0, i64 0, i32 0, metadata !303} ; [ DW_TAG_typedef ] [ivec] [line 107, size 0, align 0, offset 0] [from ]
!303 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 96, i64 32, i32 0, i32 0, metadata !215, metadata !283, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 96, align 32, offset 0] [from int]
!304 = metadata !{i32 786445, metadata !288, metadata !287, metadata !"eg_excl", i32 52, i64 64, i64 64, i64 448, i32 0, metadata !305} ; [ DW_TAG_member ] [eg_excl] [line 52, size 64, align 64, offset 448] [from ]
!305 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !215} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!306 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !307} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_groups]
!307 = metadata !{i32 786454, metadata !1, null, metadata !"t_groups", i32 72, i64 0, i64 0, i64 0, i32 0, metadata !308} ; [ DW_TAG_typedef ] [t_groups] [line 72, size 0, align 0, offset 0] [from ]
!308 = metadata !{i32 786451, metadata !186, null, metadata !"", i32 67, i64 768, i64 64, i32 0, i32 0, null, metadata !309, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 67, size 768, align 64, offset 0] [from ]
!309 = metadata !{metadata !310, metadata !319, metadata !332, metadata !345}
!310 = metadata !{i32 786445, metadata !186, metadata !308, metadata !"estat", i32 68, i64 512, i64 64, i64 0, i32 0, metadata !311} ; [ DW_TAG_member ] [estat] [line 68, size 512, align 64, offset 0] [from t_grp_ener]
!311 = metadata !{i32 786454, metadata !186, null, metadata !"t_grp_ener", i32 50, i64 0, i64 0, i64 0, i32 0, metadata !312} ; [ DW_TAG_typedef ] [t_grp_ener] [line 50, size 0, align 0, offset 0] [from ]
!312 = metadata !{i32 786451, metadata !186, null, metadata !"", i32 46, i64 512, i64 64, i32 0, i32 0, null, metadata !313, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 46, size 512, align 64, offset 0] [from ]
!313 = metadata !{metadata !314, metadata !315}
!314 = metadata !{i32 786445, metadata !186, metadata !312, metadata !"nn", i32 47, i64 32, i64 32, i64 0, i32 0, metadata !215} ; [ DW_TAG_member ] [nn] [line 47, size 32, align 32, offset 0] [from int]
!315 = metadata !{i32 786445, metadata !186, metadata !312, metadata !"ee", i32 48, i64 448, i64 64, i64 64, i32 0, metadata !316} ; [ DW_TAG_member ] [ee] [line 48, size 448, align 64, offset 64] [from ]
!316 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 448, i64 64, i32 0, i32 0, metadata !278, metadata !317, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 448, align 64, offset 0] [from ]
!317 = metadata !{metadata !318}
!318 = metadata !{i32 786465, i64 0, i64 7}       ; [ DW_TAG_subrange_type ] [0, 6]
!319 = metadata !{i32 786445, metadata !186, metadata !308, metadata !"tcstat", i32 69, i64 64, i64 64, i64 512, i32 0, metadata !320} ; [ DW_TAG_member ] [tcstat] [line 69, size 64, align 64, offset 512] [from ]
!320 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !321} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_grp_tcstat]
!321 = metadata !{i32 786454, metadata !186, null, metadata !"t_grp_tcstat", i32 44, i64 0, i64 0, i64 0, i32 0, metadata !322} ; [ DW_TAG_typedef ] [t_grp_tcstat] [line 44, size 0, align 0, offset 0] [from ]
!322 = metadata !{i32 786451, metadata !186, null, metadata !"", i32 38, i64 416, i64 32, i32 0, i32 0, null, metadata !323, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 38, size 416, align 32, offset 0] [from ]
!323 = metadata !{metadata !324, metadata !325, metadata !326, metadata !330, metadata !331}
!324 = metadata !{i32 786445, metadata !186, metadata !322, metadata !"T", i32 39, i64 32, i64 32, i64 0, i32 0, metadata !279} ; [ DW_TAG_member ] [T] [line 39, size 32, align 32, offset 0] [from real]
!325 = metadata !{i32 786445, metadata !186, metadata !322, metadata !"lambda", i32 40, i64 32, i64 32, i64 32, i32 0, metadata !279} ; [ DW_TAG_member ] [lambda] [line 40, size 32, align 32, offset 32] [from real]
!326 = metadata !{i32 786445, metadata !186, metadata !322, metadata !"ekin", i32 41, i64 288, i64 32, i64 64, i32 0, metadata !327} ; [ DW_TAG_member ] [ekin] [line 41, size 288, align 32, offset 64] [from tensor]
!327 = metadata !{i32 786454, metadata !186, null, metadata !"tensor", i32 105, i64 0, i64 0, i64 0, i32 0, metadata !328} ; [ DW_TAG_typedef ] [tensor] [line 105, size 0, align 0, offset 0] [from ]
!328 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 288, i64 32, i32 0, i32 0, metadata !279, metadata !329, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 288, align 32, offset 0] [from real]
!329 = metadata !{metadata !284, metadata !284}
!330 = metadata !{i32 786445, metadata !186, metadata !322, metadata !"xi", i32 42, i64 32, i64 32, i64 352, i32 0, metadata !279} ; [ DW_TAG_member ] [xi] [line 42, size 32, align 32, offset 352] [from real]
!331 = metadata !{i32 786445, metadata !186, metadata !322, metadata !"s", i32 43, i64 32, i64 32, i64 384, i32 0, metadata !279} ; [ DW_TAG_member ] [s] [line 43, size 32, align 32, offset 384] [from real]
!332 = metadata !{i32 786445, metadata !186, metadata !308, metadata !"grpstat", i32 70, i64 64, i64 64, i64 576, i32 0, metadata !333} ; [ DW_TAG_member ] [grpstat] [line 70, size 64, align 64, offset 576] [from ]
!333 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !334} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_grp_acc]
!334 = metadata !{i32 786454, metadata !186, null, metadata !"t_grp_acc", i32 59, i64 0, i64 0, i64 0, i32 0, metadata !335} ; [ DW_TAG_typedef ] [t_grp_acc] [line 59, size 0, align 0, offset 0] [from ]
!335 = metadata !{i32 786451, metadata !186, null, metadata !"", i32 52, i64 448, i64 64, i32 0, i32 0, null, metadata !336, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 52, size 448, align 64, offset 0] [from ]
!336 = metadata !{metadata !337, metadata !338, metadata !341, metadata !342, metadata !343, metadata !344}
!337 = metadata !{i32 786445, metadata !186, metadata !335, metadata !"nat", i32 53, i64 32, i64 32, i64 0, i32 0, metadata !215} ; [ DW_TAG_member ] [nat] [line 53, size 32, align 32, offset 0] [from int]
!338 = metadata !{i32 786445, metadata !186, metadata !335, metadata !"aid", i32 54, i64 64, i64 64, i64 64, i32 0, metadata !339} ; [ DW_TAG_member ] [aid] [line 54, size 64, align 64, offset 64] [from ]
!339 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !340} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from atom_id]
!340 = metadata !{i32 786454, metadata !186, null, metadata !"atom_id", i32 73, i64 0, i64 0, i64 0, i32 0, metadata !215} ; [ DW_TAG_typedef ] [atom_id] [line 73, size 0, align 0, offset 0] [from int]
!341 = metadata !{i32 786445, metadata !186, metadata !335, metadata !"M", i32 55, i64 32, i64 32, i64 128, i32 0, metadata !279} ; [ DW_TAG_member ] [M] [line 55, size 32, align 32, offset 128] [from real]
!342 = metadata !{i32 786445, metadata !186, metadata !335, metadata !"u", i32 56, i64 96, i64 32, i64 160, i32 0, metadata !299} ; [ DW_TAG_member ] [u] [line 56, size 96, align 32, offset 160] [from rvec]
!343 = metadata !{i32 786445, metadata !186, metadata !335, metadata !"uold", i32 57, i64 96, i64 32, i64 256, i32 0, metadata !299} ; [ DW_TAG_member ] [uold] [line 57, size 96, align 32, offset 256] [from rvec]
!344 = metadata !{i32 786445, metadata !186, metadata !335, metadata !"ut", i32 58, i64 96, i64 32, i64 352, i32 0, metadata !299} ; [ DW_TAG_member ] [ut] [line 58, size 96, align 32, offset 352] [from rvec]
!345 = metadata !{i32 786445, metadata !186, metadata !308, metadata !"cosacc", i32 71, i64 96, i64 32, i64 640, i32 0, metadata !346} ; [ DW_TAG_member ] [cosacc] [line 71, size 96, align 32, offset 640] [from t_cos_acc]
!346 = metadata !{i32 786454, metadata !186, null, metadata !"t_cos_acc", i32 65, i64 0, i64 0, i64 0, i32 0, metadata !347} ; [ DW_TAG_typedef ] [t_cos_acc] [line 65, size 0, align 0, offset 0] [from ]
!347 = metadata !{i32 786451, metadata !186, null, metadata !"", i32 61, i64 96, i64 32, i32 0, i32 0, null, metadata !348, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 61, size 96, align 32, offset 0] [from ]
!348 = metadata !{metadata !349, metadata !350, metadata !351}
!349 = metadata !{i32 786445, metadata !186, metadata !347, metadata !"cos_accel", i32 62, i64 32, i64 32, i64 0, i32 0, metadata !279} ; [ DW_TAG_member ] [cos_accel] [line 62, size 32, align 32, offset 0] [from real]
!350 = metadata !{i32 786445, metadata !186, metadata !347, metadata !"mvcos", i32 63, i64 32, i64 32, i64 32, i32 0, metadata !279} ; [ DW_TAG_member ] [mvcos] [line 63, size 32, align 32, offset 32] [from real]
!351 = metadata !{i32 786445, metadata !186, metadata !347, metadata !"vcos", i32 64, i64 32, i64 32, i64 64, i32 0, metadata !279} ; [ DW_TAG_member ] [vcos] [line 64, size 32, align 32, offset 64] [from real]
!352 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !353} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_nrnb]
!353 = metadata !{i32 786454, metadata !1, null, metadata !"t_nrnb", i32 95, i64 0, i64 0, i64 0, i32 0, metadata !354} ; [ DW_TAG_typedef ] [t_nrnb] [line 95, size 0, align 0, offset 0] [from ]
!354 = metadata !{i32 786451, metadata !52, null, metadata !"", i32 93, i64 8256, i64 64, i32 0, i32 0, null, metadata !355, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 93, size 8256, align 64, offset 0] [from ]
!355 = metadata !{metadata !356}
!356 = metadata !{i32 786445, metadata !52, metadata !354, metadata !"n", i32 94, i64 8256, i64 64, i64 0, i32 0, metadata !357} ; [ DW_TAG_member ] [n] [line 94, size 8256, align 64, offset 0] [from ]
!357 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 8256, i64 64, i32 0, i32 0, metadata !358, metadata !359, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 8256, align 64, offset 0] [from double]
!358 = metadata !{i32 786468, null, null, metadata !"double", i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [double] [line 0, size 64, align 64, offset 0, enc DW_ATE_float]
!359 = metadata !{metadata !360}
!360 = metadata !{i32 786465, i64 0, i64 129}     ; [ DW_TAG_subrange_type ] [0, 128]
!361 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !362} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_vcm]
!362 = metadata !{i32 786454, metadata !1, null, metadata !"t_vcm", i32 56, i64 0, i64 0, i64 0, i32 0, metadata !363} ; [ DW_TAG_typedef ] [t_vcm] [line 56, size 0, align 0, offset 0] [from ]
!363 = metadata !{i32 786451, metadata !364, null, metadata !"", i32 44, i64 640, i64 64, i32 0, i32 0, null, metadata !365, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 44, size 640, align 64, offset 0] [from ]
!364 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/vcm.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!365 = metadata !{metadata !366, metadata !367, metadata !368, metadata !369, metadata !370, metadata !371, metadata !372, metadata !373, metadata !375, metadata !376, metadata !378}
!366 = metadata !{i32 786445, metadata !364, metadata !363, metadata !"nr", i32 45, i64 32, i64 32, i64 0, i32 0, metadata !215} ; [ DW_TAG_member ] [nr] [line 45, size 32, align 32, offset 0] [from int]
!367 = metadata !{i32 786445, metadata !364, metadata !363, metadata !"mode", i32 46, i64 32, i64 32, i64 32, i32 0, metadata !215} ; [ DW_TAG_member ] [mode] [line 46, size 32, align 32, offset 32] [from int]
!368 = metadata !{i32 786445, metadata !364, metadata !363, metadata !"group_p", i32 47, i64 64, i64 64, i64 64, i32 0, metadata !298} ; [ DW_TAG_member ] [group_p] [line 47, size 64, align 64, offset 64] [from ]
!369 = metadata !{i32 786445, metadata !364, metadata !363, metadata !"group_v", i32 48, i64 64, i64 64, i64 128, i32 0, metadata !298} ; [ DW_TAG_member ] [group_v] [line 48, size 64, align 64, offset 128] [from ]
!370 = metadata !{i32 786445, metadata !364, metadata !363, metadata !"group_x", i32 49, i64 64, i64 64, i64 192, i32 0, metadata !298} ; [ DW_TAG_member ] [group_x] [line 49, size 64, align 64, offset 192] [from ]
!371 = metadata !{i32 786445, metadata !364, metadata !363, metadata !"group_j", i32 50, i64 64, i64 64, i64 256, i32 0, metadata !298} ; [ DW_TAG_member ] [group_j] [line 50, size 64, align 64, offset 256] [from ]
!372 = metadata !{i32 786445, metadata !364, metadata !363, metadata !"group_w", i32 51, i64 64, i64 64, i64 320, i32 0, metadata !298} ; [ DW_TAG_member ] [group_w] [line 51, size 64, align 64, offset 320] [from ]
!373 = metadata !{i32 786445, metadata !364, metadata !363, metadata !"group_i", i32 52, i64 64, i64 64, i64 384, i32 0, metadata !374} ; [ DW_TAG_member ] [group_i] [line 52, size 64, align 64, offset 384] [from ]
!374 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !327} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from tensor]
!375 = metadata !{i32 786445, metadata !364, metadata !363, metadata !"group_mass", i32 53, i64 64, i64 64, i64 448, i32 0, metadata !278} ; [ DW_TAG_member ] [group_mass] [line 53, size 64, align 64, offset 448] [from ]
!376 = metadata !{i32 786445, metadata !364, metadata !363, metadata !"group_name", i32 54, i64 64, i64 64, i64 512, i32 0, metadata !377} ; [ DW_TAG_member ] [group_name] [line 54, size 64, align 64, offset 512] [from ]
!377 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !217} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!378 = metadata !{i32 786445, metadata !364, metadata !363, metadata !"group_id", i32 55, i64 64, i64 64, i64 576, i32 0, metadata !379} ; [ DW_TAG_member ] [group_id] [line 55, size 64, align 64, offset 576] [from ]
!379 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !244} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from unsigned short]
!380 = metadata !{metadata !381, metadata !382, metadata !383, metadata !384, metadata !385, metadata !386, metadata !387, metadata !388, metadata !389, metadata !390, metadata !391, metadata !392, metadata !393, metadata !394, metadata !395, metadata !396, metadata !397, metadata !398, metadata !399, metadata !400, metadata !401, metadata !402, metadata !403, metadata !407, metadata !409}
!381 = metadata !{i32 786689, metadata !205, metadata !"log", metadata !206, i32 16777275, metadata !209, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [log] [line 59]
!382 = metadata !{i32 786689, metadata !205, metadata !"cr", metadata !206, i32 33554492, metadata !267, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cr] [line 60]
!383 = metadata !{i32 786689, metadata !205, metadata !"ener", metadata !206, i32 50331708, metadata !278, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ener] [line 60]
!384 = metadata !{i32 786689, metadata !205, metadata !"fvir", metadata !206, i32 67108925, metadata !281, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fvir] [line 61]
!385 = metadata !{i32 786689, metadata !205, metadata !"svir", metadata !206, i32 83886141, metadata !281, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [svir] [line 61]
!386 = metadata !{i32 786689, metadata !205, metadata !"opts", metadata !206, i32 100663358, metadata !285, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [opts] [line 62]
!387 = metadata !{i32 786689, metadata !205, metadata !"grps", metadata !206, i32 117440574, metadata !306, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [grps] [line 62]
!388 = metadata !{i32 786689, metadata !205, metadata !"mynrnb", metadata !206, i32 134217791, metadata !352, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mynrnb] [line 63]
!389 = metadata !{i32 786689, metadata !205, metadata !"nrnb", metadata !206, i32 150995007, metadata !352, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nrnb] [line 63]
!390 = metadata !{i32 786689, metadata !205, metadata !"vcm", metadata !206, i32 167772224, metadata !361, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [vcm] [line 64]
!391 = metadata !{i32 786689, metadata !205, metadata !"terminate", metadata !206, i32 184549440, metadata !278, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [terminate] [line 64]
!392 = metadata !{i32 786688, metadata !205, metadata !"iterminate", metadata !206, i32 68, metadata !215, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [iterminate] [line 68]
!393 = metadata !{i32 786688, metadata !205, metadata !"imu", metadata !206, i32 68, metadata !215, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [imu] [line 68]
!394 = metadata !{i32 786688, metadata !205, metadata !"ie", metadata !206, i32 68, metadata !215, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ie] [line 68]
!395 = metadata !{i32 786688, metadata !205, metadata !"ifv", metadata !206, i32 68, metadata !215, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ifv] [line 68]
!396 = metadata !{i32 786688, metadata !205, metadata !"isv", metadata !206, i32 68, metadata !215, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [isv] [line 68]
!397 = metadata !{i32 786688, metadata !205, metadata !"icm", metadata !206, i32 68, metadata !215, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [icm] [line 68]
!398 = metadata !{i32 786688, metadata !205, metadata !"imass", metadata !206, i32 68, metadata !215, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [imass] [line 68]
!399 = metadata !{i32 786688, metadata !205, metadata !"ica", metadata !206, i32 68, metadata !215, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ica] [line 68]
!400 = metadata !{i32 786688, metadata !205, metadata !"icj", metadata !206, i32 69, metadata !215, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [icj] [line 69]
!401 = metadata !{i32 786688, metadata !205, metadata !"ici", metadata !206, i32 69, metadata !215, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ici] [line 69]
!402 = metadata !{i32 786688, metadata !205, metadata !"icx", metadata !206, i32 69, metadata !215, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [icx] [line 69]
!403 = metadata !{i32 786688, metadata !205, metadata !"in", metadata !206, i32 70, metadata !404, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [in] [line 70]
!404 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 8192, i64 32, i32 0, i32 0, metadata !215, metadata !405, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 8192, align 32, offset 0] [from int]
!405 = metadata !{metadata !406}
!406 = metadata !{i32 786465, i64 0, i64 256}     ; [ DW_TAG_subrange_type ] [0, 255]
!407 = metadata !{i32 786688, metadata !205, metadata !"inn", metadata !206, i32 71, metadata !408, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [inn] [line 71]
!408 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 224, i64 32, i32 0, i32 0, metadata !215, metadata !317, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 224, align 32, offset 0] [from int]
!409 = metadata !{i32 786688, metadata !205, metadata !"j", metadata !206, i32 72, metadata !215, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 72]
!410 = metadata !{i32 786478, metadata !1, metadata !206, metadata !"do_per_step", metadata !"do_per_step", metadata !"", i32 156, metadata !411, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, i32)* @do_per_step, null, null, metadata !413, i32 157} ; [ DW_TAG_subprogram ] [line 156] [def] [scope 157] [do_per_step]
!411 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !412, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!412 = metadata !{metadata !215, metadata !215, metadata !215}
!413 = metadata !{metadata !414, metadata !415}
!414 = metadata !{i32 786689, metadata !410, metadata !"step", metadata !206, i32 16777372, metadata !215, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [step] [line 156]
!415 = metadata !{i32 786689, metadata !410, metadata !"nstep", metadata !206, i32 33554588, metadata !215, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nstep] [line 156]
!416 = metadata !{i32 786478, metadata !1, metadata !206, metadata !"write_traj", metadata !"write_traj", metadata !"", i32 199, metadata !417, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct._IO_FILE*, %struct.t_commrec*, i8*, %struct.t_nsborder*, i32, float, float, %struct.t_nrnb*, i32, [3 x float]*, [3 x float]*, [3 x float]*, [3 x float]*)* @write_traj, null, null, metadata !435, i32 203} ; [ DW_TAG_subprogram ] [line 199] [def] [scope 203] [write_traj]
!417 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !418, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!418 = metadata !{metadata !215, metadata !209, metadata !267, metadata !217, metadata !419, metadata !215, metadata !279, metadata !279, metadata !352, metadata !215, metadata !298, metadata !298, metadata !298, metadata !281}
!419 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !420} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_nsborder]
!420 = metadata !{i32 786454, metadata !1, null, metadata !"t_nsborder", i32 59, i64 0, i64 0, i64 0, i32 0, metadata !421} ; [ DW_TAG_typedef ] [t_nsborder] [line 59, size 0, align 0, offset 0] [from ]
!421 = metadata !{i32 786451, metadata !422, null, metadata !"", i32 36, i64 32992, i64 32, i32 0, i32 0, null, metadata !423, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 36, size 32992, align 32, offset 0] [from ]
!422 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/types/nsborder.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!423 = metadata !{metadata !424, metadata !425, metadata !426, metadata !427, metadata !428, metadata !429, metadata !430, metadata !431, metadata !432, metadata !433, metadata !434}
!424 = metadata !{i32 786445, metadata !422, metadata !421, metadata !"nodeid", i32 37, i64 32, i64 32, i64 0, i32 0, metadata !215} ; [ DW_TAG_member ] [nodeid] [line 37, size 32, align 32, offset 0] [from int]
!425 = metadata !{i32 786445, metadata !422, metadata !421, metadata !"nnodes", i32 38, i64 32, i64 32, i64 32, i32 0, metadata !215} ; [ DW_TAG_member ] [nnodes] [line 38, size 32, align 32, offset 32] [from int]
!426 = metadata !{i32 786445, metadata !422, metadata !421, metadata !"cgtotal", i32 39, i64 32, i64 32, i64 64, i32 0, metadata !215} ; [ DW_TAG_member ] [cgtotal] [line 39, size 32, align 32, offset 64] [from int]
!427 = metadata !{i32 786445, metadata !422, metadata !421, metadata !"natoms", i32 40, i64 32, i64 32, i64 96, i32 0, metadata !215} ; [ DW_TAG_member ] [natoms] [line 40, size 32, align 32, offset 96] [from int]
!428 = metadata !{i32 786445, metadata !422, metadata !421, metadata !"nstDlb", i32 41, i64 32, i64 32, i64 128, i32 0, metadata !215} ; [ DW_TAG_member ] [nstDlb] [line 41, size 32, align 32, offset 128] [from int]
!429 = metadata !{i32 786445, metadata !422, metadata !421, metadata !"shift", i32 43, i64 32, i64 32, i64 160, i32 0, metadata !215} ; [ DW_TAG_member ] [shift] [line 43, size 32, align 32, offset 160] [from int]
!430 = metadata !{i32 786445, metadata !422, metadata !421, metadata !"bshift", i32 43, i64 32, i64 32, i64 192, i32 0, metadata !215} ; [ DW_TAG_member ] [bshift] [line 43, size 32, align 32, offset 192] [from int]
!431 = metadata !{i32 786445, metadata !422, metadata !421, metadata !"homenr", i32 50, i64 8192, i64 32, i64 224, i32 0, metadata !404} ; [ DW_TAG_member ] [homenr] [line 50, size 8192, align 32, offset 224] [from ]
!432 = metadata !{i32 786445, metadata !422, metadata !421, metadata !"index", i32 51, i64 8192, i64 32, i64 8416, i32 0, metadata !404} ; [ DW_TAG_member ] [index] [line 51, size 8192, align 32, offset 8416] [from ]
!433 = metadata !{i32 786445, metadata !422, metadata !421, metadata !"cgload", i32 52, i64 8192, i64 32, i64 16608, i32 0, metadata !404} ; [ DW_TAG_member ] [cgload] [line 52, size 8192, align 32, offset 16608] [from ]
!434 = metadata !{i32 786445, metadata !422, metadata !421, metadata !"workload", i32 55, i64 8192, i64 32, i64 24800, i32 0, metadata !404} ; [ DW_TAG_member ] [workload] [line 55, size 8192, align 32, offset 24800] [from ]
!435 = metadata !{metadata !436, metadata !437, metadata !438, metadata !439, metadata !440, metadata !441, metadata !442, metadata !443, metadata !444, metadata !445, metadata !446, metadata !447, metadata !448}
!436 = metadata !{i32 786689, metadata !416, metadata !"log", metadata !206, i32 16777415, metadata !209, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [log] [line 199]
!437 = metadata !{i32 786689, metadata !416, metadata !"cr", metadata !206, i32 33554631, metadata !267, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cr] [line 199]
!438 = metadata !{i32 786689, metadata !416, metadata !"traj", metadata !206, i32 50331848, metadata !217, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [traj] [line 200]
!439 = metadata !{i32 786689, metadata !416, metadata !"nsb", metadata !206, i32 67109064, metadata !419, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nsb] [line 200]
!440 = metadata !{i32 786689, metadata !416, metadata !"step", metadata !206, i32 83886281, metadata !215, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [step] [line 201]
!441 = metadata !{i32 786689, metadata !416, metadata !"t", metadata !206, i32 100663497, metadata !279, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [t] [line 201]
!442 = metadata !{i32 786689, metadata !416, metadata !"lambda", metadata !206, i32 117440713, metadata !279, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [lambda] [line 201]
!443 = metadata !{i32 786689, metadata !416, metadata !"nrnb", metadata !206, i32 134217929, metadata !352, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nrnb] [line 201]
!444 = metadata !{i32 786689, metadata !416, metadata !"natoms", metadata !206, i32 150995146, metadata !215, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [natoms] [line 202]
!445 = metadata !{i32 786689, metadata !416, metadata !"xx", metadata !206, i32 167772362, metadata !298, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [xx] [line 202]
!446 = metadata !{i32 786689, metadata !416, metadata !"vv", metadata !206, i32 184549578, metadata !298, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [vv] [line 202]
!447 = metadata !{i32 786689, metadata !416, metadata !"ff", metadata !206, i32 201326794, metadata !298, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ff] [line 202]
!448 = metadata !{i32 786689, metadata !416, metadata !"box", metadata !206, i32 218104010, metadata !281, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [box] [line 202]
!449 = metadata !{i32 786478, metadata !1, metadata !206, metadata !"write_xtc_traj", metadata !"write_xtc_traj", metadata !"", i32 229, metadata !450, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._IO_FILE*, %struct.t_commrec*, i8*, %struct.t_nsborder*, %struct.t_mdatoms*, i32, float, [3 x float]*, [3 x float]*, float)* @write_xtc_traj, null, null, metadata !480, i32 232} ; [ DW_TAG_subprogram ] [line 229] [def] [scope 232] [write_xtc_traj]
!450 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !451, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!451 = metadata !{null, metadata !209, metadata !267, metadata !217, metadata !419, metadata !452, metadata !215, metadata !279, metadata !298, metadata !281, metadata !279}
!452 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !453} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_mdatoms]
!453 = metadata !{i32 786454, metadata !1, null, metadata !"t_mdatoms", i32 51, i64 0, i64 0, i64 0, i32 0, metadata !454} ; [ DW_TAG_typedef ] [t_mdatoms] [line 51, size 0, align 0, offset 0] [from ]
!454 = metadata !{i32 786451, metadata !455, null, metadata !"", i32 40, i64 1408, i64 64, i32 0, i32 0, null, metadata !456, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 40, size 1408, align 64, offset 0] [from ]
!455 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/types/mdatom.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!456 = metadata !{metadata !457, metadata !458, metadata !459, metadata !460, metadata !461, metadata !462, metadata !463, metadata !464, metadata !465, metadata !466, metadata !467, metadata !468, metadata !469, metadata !470, metadata !471, metadata !472, metadata !473, metadata !474, metadata !475, metadata !476, metadata !477, metadata !478, metadata !479}
!457 = metadata !{i32 786445, metadata !455, metadata !454, metadata !"tmass", i32 41, i64 32, i64 32, i64 0, i32 0, metadata !279} ; [ DW_TAG_member ] [tmass] [line 41, size 32, align 32, offset 0] [from real]
!458 = metadata !{i32 786445, metadata !455, metadata !454, metadata !"nr", i32 42, i64 32, i64 32, i64 32, i32 0, metadata !215} ; [ DW_TAG_member ] [nr] [line 42, size 32, align 32, offset 32] [from int]
!459 = metadata !{i32 786445, metadata !455, metadata !454, metadata !"massA", i32 43, i64 64, i64 64, i64 64, i32 0, metadata !278} ; [ DW_TAG_member ] [massA] [line 43, size 64, align 64, offset 64] [from ]
!460 = metadata !{i32 786445, metadata !455, metadata !454, metadata !"massB", i32 43, i64 64, i64 64, i64 128, i32 0, metadata !278} ; [ DW_TAG_member ] [massB] [line 43, size 64, align 64, offset 128] [from ]
!461 = metadata !{i32 786445, metadata !455, metadata !454, metadata !"massT", i32 43, i64 64, i64 64, i64 192, i32 0, metadata !278} ; [ DW_TAG_member ] [massT] [line 43, size 64, align 64, offset 192] [from ]
!462 = metadata !{i32 786445, metadata !455, metadata !454, metadata !"invmass", i32 43, i64 64, i64 64, i64 256, i32 0, metadata !278} ; [ DW_TAG_member ] [invmass] [line 43, size 64, align 64, offset 256] [from ]
!463 = metadata !{i32 786445, metadata !455, metadata !454, metadata !"chargeA", i32 44, i64 64, i64 64, i64 320, i32 0, metadata !278} ; [ DW_TAG_member ] [chargeA] [line 44, size 64, align 64, offset 320] [from ]
!464 = metadata !{i32 786445, metadata !455, metadata !454, metadata !"chargeB", i32 44, i64 64, i64 64, i64 384, i32 0, metadata !278} ; [ DW_TAG_member ] [chargeB] [line 44, size 64, align 64, offset 384] [from ]
!465 = metadata !{i32 786445, metadata !455, metadata !454, metadata !"chargeT", i32 44, i64 64, i64 64, i64 448, i32 0, metadata !278} ; [ DW_TAG_member ] [chargeT] [line 44, size 64, align 64, offset 448] [from ]
!466 = metadata !{i32 786445, metadata !455, metadata !454, metadata !"bPerturbed", i32 45, i64 64, i64 64, i64 512, i32 0, metadata !305} ; [ DW_TAG_member ] [bPerturbed] [line 45, size 64, align 64, offset 512] [from ]
!467 = metadata !{i32 786445, metadata !455, metadata !454, metadata !"resnr", i32 46, i64 64, i64 64, i64 576, i32 0, metadata !305} ; [ DW_TAG_member ] [resnr] [line 46, size 64, align 64, offset 576] [from ]
!468 = metadata !{i32 786445, metadata !455, metadata !454, metadata !"typeA", i32 47, i64 64, i64 64, i64 640, i32 0, metadata !305} ; [ DW_TAG_member ] [typeA] [line 47, size 64, align 64, offset 640] [from ]
!469 = metadata !{i32 786445, metadata !455, metadata !454, metadata !"typeB", i32 47, i64 64, i64 64, i64 704, i32 0, metadata !305} ; [ DW_TAG_member ] [typeB] [line 47, size 64, align 64, offset 704] [from ]
!470 = metadata !{i32 786445, metadata !455, metadata !454, metadata !"ptype", i32 48, i64 64, i64 64, i64 768, i32 0, metadata !379} ; [ DW_TAG_member ] [ptype] [line 48, size 64, align 64, offset 768] [from ]
!471 = metadata !{i32 786445, metadata !455, metadata !454, metadata !"cTC", i32 49, i64 64, i64 64, i64 832, i32 0, metadata !379} ; [ DW_TAG_member ] [cTC] [line 49, size 64, align 64, offset 832] [from ]
!472 = metadata !{i32 786445, metadata !455, metadata !454, metadata !"cENER", i32 49, i64 64, i64 64, i64 896, i32 0, metadata !379} ; [ DW_TAG_member ] [cENER] [line 49, size 64, align 64, offset 896] [from ]
!473 = metadata !{i32 786445, metadata !455, metadata !454, metadata !"cACC", i32 49, i64 64, i64 64, i64 960, i32 0, metadata !379} ; [ DW_TAG_member ] [cACC] [line 49, size 64, align 64, offset 960] [from ]
!474 = metadata !{i32 786445, metadata !455, metadata !454, metadata !"cFREEZE", i32 49, i64 64, i64 64, i64 1024, i32 0, metadata !379} ; [ DW_TAG_member ] [cFREEZE] [line 49, size 64, align 64, offset 1024] [from ]
!475 = metadata !{i32 786445, metadata !455, metadata !454, metadata !"cXTC", i32 49, i64 64, i64 64, i64 1088, i32 0, metadata !379} ; [ DW_TAG_member ] [cXTC] [line 49, size 64, align 64, offset 1088] [from ]
!476 = metadata !{i32 786445, metadata !455, metadata !454, metadata !"cVCM", i32 49, i64 64, i64 64, i64 1152, i32 0, metadata !379} ; [ DW_TAG_member ] [cVCM] [line 49, size 64, align 64, offset 1152] [from ]
!477 = metadata !{i32 786445, metadata !455, metadata !454, metadata !"cU1", i32 50, i64 64, i64 64, i64 1216, i32 0, metadata !379} ; [ DW_TAG_member ] [cU1] [line 50, size 64, align 64, offset 1216] [from ]
!478 = metadata !{i32 786445, metadata !455, metadata !454, metadata !"cU2", i32 50, i64 64, i64 64, i64 1280, i32 0, metadata !379} ; [ DW_TAG_member ] [cU2] [line 50, size 64, align 64, offset 1280] [from ]
!479 = metadata !{i32 786445, metadata !455, metadata !454, metadata !"cORF", i32 50, i64 64, i64 64, i64 1344, i32 0, metadata !379} ; [ DW_TAG_member ] [cORF] [line 50, size 64, align 64, offset 1344] [from ]
!480 = metadata !{metadata !481, metadata !482, metadata !483, metadata !484, metadata !485, metadata !486, metadata !487, metadata !488, metadata !489, metadata !490, metadata !491, metadata !492}
!481 = metadata !{i32 786689, metadata !449, metadata !"log", metadata !206, i32 16777445, metadata !209, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [log] [line 229]
!482 = metadata !{i32 786689, metadata !449, metadata !"cr", metadata !206, i32 33554661, metadata !267, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cr] [line 229]
!483 = metadata !{i32 786689, metadata !449, metadata !"xtc_traj", metadata !206, i32 50331878, metadata !217, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [xtc_traj] [line 230]
!484 = metadata !{i32 786689, metadata !449, metadata !"nsb", metadata !206, i32 67109094, metadata !419, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nsb] [line 230]
!485 = metadata !{i32 786689, metadata !449, metadata !"md", metadata !206, i32 83886310, metadata !452, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [md] [line 230]
!486 = metadata !{i32 786689, metadata !449, metadata !"step", metadata !206, i32 100663527, metadata !215, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [step] [line 231]
!487 = metadata !{i32 786689, metadata !449, metadata !"t", metadata !206, i32 117440743, metadata !279, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [t] [line 231]
!488 = metadata !{i32 786689, metadata !449, metadata !"xx", metadata !206, i32 134217959, metadata !298, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [xx] [line 231]
!489 = metadata !{i32 786689, metadata !449, metadata !"box", metadata !206, i32 150995175, metadata !281, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [box] [line 231]
!490 = metadata !{i32 786689, metadata !449, metadata !"prec", metadata !206, i32 167772391, metadata !279, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [prec] [line 231]
!491 = metadata !{i32 786688, metadata !449, metadata !"i", metadata !206, i32 236, metadata !215, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 236]
!492 = metadata !{i32 786688, metadata !449, metadata !"j", metadata !206, i32 236, metadata !215, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 236]
!493 = metadata !{i32 786478, metadata !1, metadata !206, metadata !"close_xtc_traj", metadata !"close_xtc_traj", metadata !"", i32 278, metadata !494, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void ()* @close_xtc_traj, null, null, metadata !203, i32 279} ; [ DW_TAG_subprogram ] [line 278] [def] [scope 279] [close_xtc_traj]
!494 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !495, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!495 = metadata !{null}
!496 = metadata !{i32 786478, metadata !497, metadata !498, metadata !"copy_rvec", metadata !"copy_rvec", metadata !"", i32 270, metadata !499, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !503, i32 271} ; [ DW_TAG_subprogram ] [line 270] [local] [def] [scope 271] [copy_rvec]
!497 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/vec.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!498 = metadata !{i32 786473, metadata !497}      ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/vec.h]
!499 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !500, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!500 = metadata !{null, metadata !501, metadata !278}
!501 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !502} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!502 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !279} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from real]
!503 = metadata !{metadata !504, metadata !505}
!504 = metadata !{i32 786689, metadata !496, metadata !"a", metadata !498, i32 16777486, metadata !501, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [a] [line 270]
!505 = metadata !{i32 786689, metadata !496, metadata !"b", metadata !498, i32 33554702, metadata !278, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [b] [line 270]
!506 = metadata !{i32 786478, metadata !1, metadata !206, metadata !"moveit", metadata !"moveit", metadata !"", i32 164, metadata !507, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._IO_FILE*, i32, i32, i8*, [3 x float]*, %struct.t_nsborder*)* @moveit, null, null, metadata !509, i32 166} ; [ DW_TAG_subprogram ] [line 164] [local] [def] [scope 166] [moveit]
!507 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !508, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!508 = metadata !{null, metadata !209, metadata !215, metadata !215, metadata !217, metadata !298, metadata !419}
!509 = metadata !{metadata !510, metadata !511, metadata !512, metadata !513, metadata !514, metadata !515, metadata !516, metadata !518, metadata !519, metadata !520, metadata !521, metadata !522}
!510 = metadata !{i32 786689, metadata !506, metadata !"log", metadata !206, i32 16777380, metadata !209, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [log] [line 164]
!511 = metadata !{i32 786689, metadata !506, metadata !"left", metadata !206, i32 33554597, metadata !215, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [left] [line 165]
!512 = metadata !{i32 786689, metadata !506, metadata !"right", metadata !206, i32 50331813, metadata !215, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [right] [line 165]
!513 = metadata !{i32 786689, metadata !506, metadata !"s", metadata !206, i32 67109029, metadata !217, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s] [line 165]
!514 = metadata !{i32 786689, metadata !506, metadata !"xx", metadata !206, i32 83886245, metadata !298, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [xx] [line 165]
!515 = metadata !{i32 786689, metadata !506, metadata !"nsb", metadata !206, i32 100663461, metadata !419, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nsb] [line 165]
!516 = metadata !{i32 786688, metadata !517, metadata !"temp", metadata !206, i32 167, metadata !298, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [temp] [line 167]
!517 = metadata !{i32 786443, metadata !1, metadata !506} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/stat.c]
!518 = metadata !{i32 786688, metadata !517, metadata !"i", metadata !206, i32 168, metadata !215, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 168]
!519 = metadata !{i32 786688, metadata !517, metadata !"m", metadata !206, i32 168, metadata !215, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [m] [line 168]
!520 = metadata !{i32 786688, metadata !517, metadata !"bP", metadata !206, i32 168, metadata !215, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bP] [line 168]
!521 = metadata !{i32 786688, metadata !517, metadata !"start", metadata !206, i32 168, metadata !215, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [start] [line 168]
!522 = metadata !{i32 786688, metadata !517, metadata !"homenr", metadata !206, i32 168, metadata !215, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [homenr] [line 168]
!523 = metadata !{metadata !524, metadata !534, metadata !535, metadata !536, metadata !537, metadata !538, metadata !539}
!524 = metadata !{i32 786484, i32 0, metadata !205, metadata !"rb", metadata !"rb", metadata !"", metadata !206, i32 66, metadata !525, i32 1, i32 1, %struct.t_bin** @global_stat.rb, null} ; [ DW_TAG_variable ] [rb] [line 66] [local] [def]
!525 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !526} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_bin]
!526 = metadata !{i32 786454, metadata !1, null, metadata !"t_bin", i32 49, i64 0, i64 0, i64 0, i32 0, metadata !527} ; [ DW_TAG_typedef ] [t_bin] [line 49, size 0, align 0, offset 0] [from ]
!527 = metadata !{i32 786451, metadata !528, null, metadata !"", i32 45, i64 128, i64 64, i32 0, i32 0, null, metadata !529, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 45, size 128, align 64, offset 0] [from ]
!528 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/rbin.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!529 = metadata !{metadata !530, metadata !531, metadata !532}
!530 = metadata !{i32 786445, metadata !528, metadata !527, metadata !"nreal", i32 46, i64 32, i64 32, i64 0, i32 0, metadata !215} ; [ DW_TAG_member ] [nreal] [line 46, size 32, align 32, offset 0] [from int]
!531 = metadata !{i32 786445, metadata !528, metadata !527, metadata !"maxreal", i32 47, i64 32, i64 32, i64 32, i32 0, metadata !215} ; [ DW_TAG_member ] [maxreal] [line 47, size 32, align 32, offset 32] [from int]
!532 = metadata !{i32 786445, metadata !528, metadata !527, metadata !"rbuf", i32 48, i64 64, i64 64, i64 64, i32 0, metadata !533} ; [ DW_TAG_member ] [rbuf] [line 48, size 64, align 64, offset 64] [from ]
!533 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !358} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from double]
!534 = metadata !{i32 786484, i32 0, metadata !205, metadata !"itc", metadata !"itc", metadata !"", metadata !206, i32 67, metadata !305, i32 1, i32 1, i32** @global_stat.itc, null} ; [ DW_TAG_variable ] [itc] [line 67] [local] [def]
!535 = metadata !{i32 786484, i32 0, metadata !416, metadata !"fp", metadata !"fp", metadata !"", metadata !206, i32 204, metadata !215, i32 1, i32 1, i32* @write_traj.fp, null} ; [ DW_TAG_variable ] [fp] [line 204] [local] [def]
!536 = metadata !{i32 786484, i32 0, metadata !449, metadata !"bFirst", metadata !"bFirst", metadata !"", metadata !206, i32 233, metadata !215, i32 1, i32 1, null, null}
!537 = metadata !{i32 786484, i32 0, metadata !449, metadata !"x_sel", metadata !"x_sel", metadata !"", metadata !206, i32 234, metadata !298, i32 1, i32 1, [3 x float]** @write_xtc_traj.x_sel, null} ; [ DW_TAG_variable ] [x_sel] [line 234] [local] [def]
!538 = metadata !{i32 786484, i32 0, metadata !449, metadata !"natoms", metadata !"natoms", metadata !"", metadata !206, i32 235, metadata !215, i32 1, i32 1, i32* @write_xtc_traj.natoms, null} ; [ DW_TAG_variable ] [natoms] [line 235] [local] [def]
!539 = metadata !{i32 786484, i32 0, null, metadata !"xd", metadata !"xd", metadata !"", metadata !206, i32 227, metadata !215, i32 1, i32 1, i32* @xd, null} ; [ DW_TAG_variable ] [xd] [line 227] [local] [def]
!540 = metadata !{i32 59, i32 0, metadata !205, null}
!541 = metadata !{i32 60, i32 0, metadata !205, null}
!542 = metadata !{i32 61, i32 0, metadata !205, null}
!543 = metadata !{i32 62, i32 0, metadata !205, null}
!544 = metadata !{i32 63, i32 0, metadata !205, null}
!545 = metadata !{i32 64, i32 0, metadata !205, null}
!546 = metadata !{i32 -1}
!547 = metadata !{i32 69, i32 0, metadata !205, null}
!548 = metadata !{i32 70, i32 0, metadata !205, null}
!549 = metadata !{i32 71, i32 0, metadata !205, null}
!550 = metadata !{i32 74, i32 0, metadata !205, null}
!551 = metadata !{metadata !"any pointer", metadata !552}
!552 = metadata !{metadata !"omnipotent char", metadata !553}
!553 = metadata !{metadata !"Simple C/C++ TBAA"}
!554 = metadata !{i32 75, i32 0, metadata !555, null}
!555 = metadata !{i32 786443, metadata !1, metadata !205, i32 74, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/stat.c]
!556 = metadata !{i32 76, i32 0, metadata !555, null}
!557 = metadata !{metadata !"int", metadata !552}
!558 = metadata !{i32 77, i32 0, metadata !555, null}
!559 = metadata !{i32 79, i32 0, metadata !205, null}
!560 = metadata !{i32 82, i32 0, metadata !561, null}
!561 = metadata !{i32 786443, metadata !1, metadata !205, i32 82, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/stat.c]
!562 = metadata !{i32 83, i32 0, metadata !561, null}
!563 = metadata !{i32 84, i32 0, metadata !205, null}
!564 = metadata !{i32 89, i32 0, metadata !205, null}
!565 = metadata !{i32 90, i32 0, metadata !205, null}
!566 = metadata !{i32 91, i32 0, metadata !205, null}
!567 = metadata !{i32 92, i32 0, metadata !205, null}
!568 = metadata !{i32 93, i32 0, metadata !205, null}
!569 = metadata !{i32 94, i32 0, metadata !205, null}
!570 = metadata !{i32 95, i32 0, metadata !205, null}
!571 = metadata !{i32 96, i32 0, metadata !572, null}
!572 = metadata !{i32 786443, metadata !1, metadata !205, i32 96, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/stat.c]
!573 = metadata !{i32 97, i32 0, metadata !572, null}
!574 = metadata !{i32 98, i32 0, metadata !205, null}
!575 = metadata !{i32 99, i32 0, metadata !576, null}
!576 = metadata !{i32 786443, metadata !1, metadata !205, i32 99, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/stat.c]
!577 = metadata !{i32 100, i32 0, metadata !576, null}
!578 = metadata !{i32 101, i32 0, metadata !205, null}
!579 = metadata !{i32 102, i32 0, metadata !580, null}
!580 = metadata !{i32 786443, metadata !1, metadata !205, i32 102, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/stat.c]
!581 = metadata !{i32 103, i32 0, metadata !580, null}
!582 = metadata !{i32 104, i32 0, metadata !205, null}
!583 = metadata !{i32 105, i32 0, metadata !205, null}
!584 = metadata !{i32 106, i32 0, metadata !205, null}
!585 = metadata !{i32 107, i32 0, metadata !205, null}
!586 = metadata !{i32 108, i32 0, metadata !205, null}
!587 = metadata !{i32 109, i32 0, metadata !205, null}
!588 = metadata !{i32 110, i32 0, metadata !589, null}
!589 = metadata !{i32 786443, metadata !1, metadata !205, i32 109, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/stat.c]
!590 = metadata !{i32 111, i32 0, metadata !589, null}
!591 = metadata !{i32 112, i32 0, metadata !589, null}
!592 = metadata !{i32 113, i32 0, metadata !589, null}
!593 = metadata !{i32 114, i32 0, metadata !589, null}
!594 = metadata !{i32 115, i32 0, metadata !589, null}
!595 = metadata !{i32 116, i32 0, metadata !589, null}
!596 = metadata !{i32 117, i32 0, metadata !205, null}
!597 = metadata !{i32 118, i32 0, metadata !205, null}
!598 = metadata !{i32 119, i32 0, metadata !205, null}
!599 = metadata !{i32 122, i32 0, metadata !205, null}
!600 = metadata !{i32 123, i32 0, metadata !205, null}
!601 = metadata !{i32 126, i32 0, metadata !205, null}
!602 = metadata !{i32 127, i32 0, metadata !205, null}
!603 = metadata !{i32 128, i32 0, metadata !205, null}
!604 = metadata !{i32 129, i32 0, metadata !605, null}
!605 = metadata !{i32 786443, metadata !1, metadata !205, i32 129, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/stat.c]
!606 = metadata !{i32 131, i32 0, metadata !607, null}
!607 = metadata !{i32 786443, metadata !1, metadata !205, i32 131, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/stat.c]
!608 = metadata !{i32 132, i32 0, metadata !607, null}
!609 = metadata !{i32 130, i32 0, metadata !605, null}
!610 = metadata !{i32 134, i32 0, metadata !611, null}
!611 = metadata !{i32 786443, metadata !1, metadata !205, i32 133, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/stat.c]
!612 = metadata !{i32 133, i32 0, metadata !611, null}
!613 = metadata !{i32 135, i32 0, metadata !205, null}
!614 = metadata !{i32 136, i32 0, metadata !205, null}
!615 = metadata !{i32 137, i32 0, metadata !205, null}
!616 = metadata !{i32 138, i32 0, metadata !205, null}
!617 = metadata !{i32 139, i32 0, metadata !205, null}
!618 = metadata !{i32 140, i32 0, metadata !619, null}
!619 = metadata !{i32 786443, metadata !1, metadata !205, i32 139, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/stat.c]
!620 = metadata !{i32 141, i32 0, metadata !619, null}
!621 = metadata !{i32 142, i32 0, metadata !619, null}
!622 = metadata !{i32 143, i32 0, metadata !619, null}
!623 = metadata !{i32 144, i32 0, metadata !619, null}
!624 = metadata !{i32 145, i32 0, metadata !619, null}
!625 = metadata !{i32 146, i32 0, metadata !619, null}
!626 = metadata !{i32 147, i32 0, metadata !205, null}
!627 = metadata !{i32 148, i32 0, metadata !205, null}
!628 = metadata !{i32 149, i32 0, metadata !205, null}
!629 = metadata !{i32 150, i32 0, metadata !205, null}
!630 = metadata !{i32 153, i32 0, metadata !205, null}
!631 = metadata !{metadata !"float", metadata !552}
!632 = metadata !{i32 154, i32 0, metadata !205, null}
!633 = metadata !{i32 156, i32 0, metadata !410, null}
!634 = metadata !{i32 158, i32 0, metadata !410, null}
!635 = metadata !{i32 159, i32 0, metadata !410, null}
!636 = metadata !{i32 162, i32 0, metadata !410, null}
!637 = metadata !{i32 199, i32 0, metadata !416, null}
!638 = metadata !{i32 200, i32 0, metadata !416, null}
!639 = metadata !{i32 201, i32 0, metadata !416, null}
!640 = metadata !{i32 202, i32 0, metadata !416, null}
!641 = metadata !{i32 206, i32 0, metadata !416, null}
!642 = metadata !{i32 210, i32 0, metadata !643, null}
!643 = metadata !{i32 786443, metadata !1, metadata !416, i32 206, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/stat.c]
!644 = metadata !{i32 211, i32 0, metadata !643, null}
!645 = metadata !{i32 214, i32 0, metadata !416, null}
!646 = metadata !{i32 215, i32 0, metadata !647, null}
!647 = metadata !{i32 786443, metadata !1, metadata !416, i32 214, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/stat.c]
!648 = metadata !{i32 216, i32 0, metadata !647, null}
!649 = metadata !{i32 217, i32 0, metadata !647, null}
!650 = metadata !{i32 218, i32 0, metadata !647, null}
!651 = metadata !{i32 219, i32 0, metadata !416, null}
!652 = metadata !{i32 220, i32 0, metadata !653, null}
!653 = metadata !{i32 786443, metadata !1, metadata !416, i32 219, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/stat.c]
!654 = metadata !{i32 221, i32 0, metadata !653, null}
!655 = metadata !{i32 222, i32 0, metadata !653, null}
!656 = metadata !{i32 223, i32 0, metadata !416, null}
!657 = metadata !{i32 164, i32 0, metadata !506, null}
!658 = metadata !{i32 165, i32 0, metadata !506, null}
!659 = metadata !{i32 170, i32 0, metadata !517, null}
!660 = metadata !{i32 173, i32 0, metadata !517, null}
!661 = metadata !{i32 174, i32 0, metadata !517, null}
!662 = metadata !{i32 179, i32 0, metadata !517, null}
!663 = metadata !{i32 180, i32 0, metadata !664, null}
!664 = metadata !{i32 786443, metadata !1, metadata !517, i32 180, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/stat.c]
!665 = metadata !{i32 181, i32 0, metadata !664, null}
!666 = metadata !{i32 786689, metadata !496, metadata !"a", metadata !498, i32 16777486, metadata !501, i32 0, metadata !665} ; [ DW_TAG_arg_variable ] [a] [line 270]
!667 = metadata !{i32 270, i32 0, metadata !496, metadata !665}
!668 = metadata !{i32 786689, metadata !496, metadata !"b", metadata !498, i32 33554702, metadata !278, i32 0, metadata !665} ; [ DW_TAG_arg_variable ] [b] [line 270]
!669 = metadata !{i32 272, i32 0, metadata !670, metadata !665}
!670 = metadata !{i32 786443, metadata !497, metadata !496} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/vec.h]
!671 = metadata !{i32 273, i32 0, metadata !670, metadata !665}
!672 = metadata !{i32 274, i32 0, metadata !670, metadata !665}
!673 = metadata !{i32 183, i32 0, metadata !517, null}
!674 = metadata !{i32 185, i32 0, metadata !675, null}
!675 = metadata !{i32 786443, metadata !1, metadata !517, i32 185, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/stat.c]
!676 = metadata !{i32 190, i32 0, metadata !677, null}
!677 = metadata !{i32 786443, metadata !1, metadata !675, i32 185, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/stat.c]
!678 = metadata !{i32 188, i32 0, metadata !679, null}
!679 = metadata !{i32 786443, metadata !1, metadata !677, i32 187, i32 0, i32 24} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/stat.c]
!680 = metadata !{i32 187, i32 0, metadata !679, null}
!681 = metadata !{i32 1}
!682 = metadata !{i32 189, i32 0, metadata !679, null}
!683 = metadata !{i32 191, i32 0, metadata !677, null}
!684 = metadata !{i32 196, i32 0, metadata !517, null}
!685 = metadata !{i32 229, i32 0, metadata !449, null}
!686 = metadata !{i32 230, i32 0, metadata !449, null}
!687 = metadata !{i32 231, i32 0, metadata !449, null}
!688 = metadata !{i32 238, i32 0, metadata !449, null}
!689 = metadata !{i32 242, i32 0, metadata !690, null}
!690 = metadata !{i32 786443, metadata !1, metadata !449, i32 238, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/stat.c]
!691 = metadata !{i32 245, i32 0, metadata !690, null}
!692 = metadata !{i32 246, i32 0, metadata !693, null}
!693 = metadata !{i32 786443, metadata !1, metadata !690, i32 246, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/stat.c]
!694 = metadata !{i32 247, i32 0, metadata !693, null}
!695 = metadata !{metadata !"short", metadata !552}
!696 = metadata !{i32 248, i32 0, metadata !693, null}
!697 = metadata !{i32 249, i32 0, metadata !690, null}
!698 = metadata !{i32 250, i32 0, metadata !690, null}
!699 = metadata !{i32 251, i32 0, metadata !690, null}
!700 = metadata !{i32 252, i32 0, metadata !690, null}
!701 = metadata !{i32 255, i32 0, metadata !690, null}
!702 = metadata !{i32 257, i32 0, metadata !449, null}
!703 = metadata !{i32 258, i32 0, metadata !704, null}
!704 = metadata !{i32 786443, metadata !1, metadata !449, i32 257, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/stat.c]
!705 = metadata !{i32 259, i32 0, metadata !704, null}
!706 = metadata !{i32 261, i32 0, metadata !449, null}
!707 = metadata !{i32 262, i32 0, metadata !708, null}
!708 = metadata !{i32 786443, metadata !1, metadata !449, i32 261, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/stat.c]
!709 = metadata !{i32 266, i32 0, metadata !710, null}
!710 = metadata !{i32 786443, metadata !1, metadata !711, i32 266, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/stat.c]
!711 = metadata !{i32 786443, metadata !1, metadata !708, i32 264, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/stat.c]
!712 = metadata !{i32 273, i32 0, metadata !708, null}
!713 = metadata !{i32 267, i32 0, metadata !714, null}
!714 = metadata !{i32 786443, metadata !1, metadata !710, i32 266, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/stat.c]
!715 = metadata !{i32 268, i32 0, metadata !716, null}
!716 = metadata !{i32 786443, metadata !1, metadata !714, i32 267, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/stat.c]
!717 = metadata !{i32 263, i32 0, metadata !708, null}
!718 = metadata !{i32 786689, metadata !496, metadata !"a", metadata !498, i32 16777486, metadata !501, i32 0, metadata !715} ; [ DW_TAG_arg_variable ] [a] [line 270]
!719 = metadata !{i32 270, i32 0, metadata !496, metadata !715}
!720 = metadata !{i32 786689, metadata !496, metadata !"b", metadata !498, i32 33554702, metadata !278, i32 0, metadata !715} ; [ DW_TAG_arg_variable ] [b] [line 270]
!721 = metadata !{i32 272, i32 0, metadata !670, metadata !715}
!722 = metadata !{i32 273, i32 0, metadata !670, metadata !715}
!723 = metadata !{i32 274, i32 0, metadata !670, metadata !715}
!724 = metadata !{i32 269, i32 0, metadata !716, null}
!725 = metadata !{i32 270, i32 0, metadata !716, null}
!726 = metadata !{i32 274, i32 0, metadata !708, null}
!727 = metadata !{i32 276, i32 0, metadata !449, null}
!728 = metadata !{i32 280, i32 0, metadata !493, null}
!729 = metadata !{i32 281, i32 0, metadata !493, null}
