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
  %0 = bitcast [256 x i32]* %in to i8*
  call void @llvm.lifetime.start(i64 1024, i8* %0) #1
  %1 = load %struct.t_bin** @global_stat.rb, align 8, !tbaa !0
  %cmp = icmp eq %struct.t_bin* %1, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call = call %struct.t_bin* @mk_bin() #5
  store %struct.t_bin* %call, %struct.t_bin** @global_stat.rb, align 8, !tbaa !0
  %ngtc = getelementptr inbounds %struct.t_grpopts* %opts, i64 0, i32 0
  %2 = load i32* %ngtc, align 4, !tbaa !3
  %call1 = call i8* @save_calloc(i8* getelementptr inbounds ([4 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([52 x i8]* @.str1, i64 0, i64 0), i32 76, i32 %2, i32 4) #5
  %3 = bitcast i8* %call1 to i32*
  store i32* %3, i32** @global_stat.itc, align 8, !tbaa !0
  br label %for.cond.preheader

if.else:                                          ; preds = %entry
  call void @reset_bin(%struct.t_bin* %1) #5
  br label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.else, %if.then
  %nnodes = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 1
  %4 = load i32* %nnodes, align 4, !tbaa !3
  %cmp2244 = icmp sgt i32 %4, 0
  br i1 %cmp2244, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond.preheader, %for.body
  %indvars.iv259 = phi i64 [ %indvars.iv.next260, %for.body ], [ 0, %for.cond.preheader ]
  %arrayidx = getelementptr inbounds %struct.t_nrnb* %nrnb, i64 %indvars.iv259
  call void @init_nrnb(%struct.t_nrnb* %arrayidx) #5
  %indvars.iv.next260 = add i64 %indvars.iv259, 1
  %5 = load i32* %nnodes, align 4, !tbaa !3
  %6 = trunc i64 %indvars.iv.next260 to i32
  %cmp2 = icmp slt i32 %6, %5
  br i1 %cmp2, label %for.body, label %for.end

for.end:                                          ; preds = %for.body, %for.cond.preheader
  %nodeid = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 0
  %7 = load i32* %nodeid, align 4, !tbaa !3
  %idxprom3 = sext i32 %7 to i64
  %arrayidx4 = getelementptr inbounds %struct.t_nrnb* %nrnb, i64 %idxprom3
  call void @cp_nrnb(%struct.t_nrnb* %arrayidx4, %struct.t_nrnb* %mynrnb) #5
  call void @_where(i8* getelementptr inbounds ([52 x i8]* @.str1, i64 0, i64 0), i32 89) #5
  %8 = load %struct.t_bin** @global_stat.rb, align 8, !tbaa !0
  %call5 = call i32 @add_binr(%struct._IO_FILE* %log, %struct.t_bin* %8, i32 44, float* %ener) #5
  call void @_where(i8* getelementptr inbounds ([52 x i8]* @.str1, i64 0, i64 0), i32 91) #5
  %9 = load %struct.t_bin** @global_stat.rb, align 8, !tbaa !0
  %arraydecay = getelementptr inbounds [3 x float]* %fvir, i64 0, i64 0
  %call7 = call i32 @add_binr(%struct._IO_FILE* %log, %struct.t_bin* %9, i32 9, float* %arraydecay) #5
  call void @_where(i8* getelementptr inbounds ([52 x i8]* @.str1, i64 0, i64 0), i32 93) #5
  %10 = load %struct.t_bin** @global_stat.rb, align 8, !tbaa !0
  %arraydecay9 = getelementptr inbounds [3 x float]* %svir, i64 0, i64 0
  %call10 = call i32 @add_binr(%struct._IO_FILE* %log, %struct.t_bin* %10, i32 9, float* %arraydecay9) #5
  call void @_where(i8* getelementptr inbounds ([52 x i8]* @.str1, i64 0, i64 0), i32 95) #5
  %11 = load i32* %nnodes, align 4, !tbaa !3
  %cmp13242 = icmp sgt i32 %11, 0
  br i1 %cmp13242, label %for.body14, label %for.end23

for.body14:                                       ; preds = %for.end, %for.body14
  %indvars.iv257 = phi i64 [ %indvars.iv.next258, %for.body14 ], [ 0, %for.end ]
  %12 = load %struct.t_bin** @global_stat.rb, align 8, !tbaa !0
  %arraydecay17 = getelementptr inbounds %struct.t_nrnb* %nrnb, i64 %indvars.iv257, i32 0, i64 0
  %call18 = call i32 @add_bind(%struct._IO_FILE* %log, %struct.t_bin* %12, i32 129, double* %arraydecay17) #5
  %arrayidx20 = getelementptr inbounds [256 x i32]* %in, i64 0, i64 %indvars.iv257
  store i32 %call18, i32* %arrayidx20, align 4, !tbaa !3
  %indvars.iv.next258 = add i64 %indvars.iv257, 1
  %13 = load i32* %nnodes, align 4, !tbaa !3
  %14 = trunc i64 %indvars.iv.next258 to i32
  %cmp13 = icmp slt i32 %14, %13
  br i1 %cmp13, label %for.body14, label %for.end23

for.end23:                                        ; preds = %for.body14, %for.end
  call void @_where(i8* getelementptr inbounds ([52 x i8]* @.str1, i64 0, i64 0), i32 98) #5
  %ngtc25 = getelementptr inbounds %struct.t_grpopts* %opts, i64 0, i32 0
  %15 = load i32* %ngtc25, align 4, !tbaa !3
  %cmp26240 = icmp sgt i32 %15, 0
  br i1 %cmp26240, label %for.body27.lr.ph, label %for.end37

for.body27.lr.ph:                                 ; preds = %for.end23
  %tcstat = getelementptr inbounds %struct.t_groups* %grps, i64 0, i32 1
  br label %for.body27

for.body27:                                       ; preds = %for.body27.lr.ph, %for.body27
  %indvars.iv255 = phi i64 [ 0, %for.body27.lr.ph ], [ %indvars.iv.next256, %for.body27 ]
  %16 = load %struct.t_bin** @global_stat.rb, align 8, !tbaa !0
  %17 = load %struct.t_grp_tcstat** %tcstat, align 8, !tbaa !0
  %arraydecay31 = getelementptr inbounds %struct.t_grp_tcstat* %17, i64 %indvars.iv255, i32 2, i64 0, i64 0
  %call32 = call i32 @add_binr(%struct._IO_FILE* %log, %struct.t_bin* %16, i32 9, float* %arraydecay31) #5
  %18 = load i32** @global_stat.itc, align 8, !tbaa !0
  %arrayidx34 = getelementptr inbounds i32* %18, i64 %indvars.iv255
  store i32 %call32, i32* %arrayidx34, align 4, !tbaa !3
  %indvars.iv.next256 = add i64 %indvars.iv255, 1
  %19 = load i32* %ngtc25, align 4, !tbaa !3
  %20 = trunc i64 %indvars.iv.next256 to i32
  %cmp26 = icmp slt i32 %20, %19
  br i1 %cmp26, label %for.body27, label %for.end37

for.end37:                                        ; preds = %for.body27, %for.end23
  call void @_where(i8* getelementptr inbounds ([52 x i8]* @.str1, i64 0, i64 0), i32 101) #5
  %nn = getelementptr inbounds %struct.t_groups* %grps, i64 0, i32 0, i32 0
  br label %for.body40

for.body40:                                       ; preds = %for.body40, %for.end37
  %indvars.iv251 = phi i64 [ 0, %for.end37 ], [ %indvars.iv.next252, %for.body40 ]
  %21 = load %struct.t_bin** @global_stat.rb, align 8, !tbaa !0
  %22 = load i32* %nn, align 4, !tbaa !3
  %arrayidx43 = getelementptr inbounds %struct.t_groups* %grps, i64 0, i32 0, i32 1, i64 %indvars.iv251
  %23 = load float** %arrayidx43, align 8, !tbaa !0
  %call44 = call i32 @add_binr(%struct._IO_FILE* %log, %struct.t_bin* %21, i32 %22, float* %23) #5
  %arrayidx46 = getelementptr inbounds [7 x i32]* %inn, i64 0, i64 %indvars.iv251
  store i32 %call44, i32* %arrayidx46, align 4, !tbaa !3
  %indvars.iv.next252 = add i64 %indvars.iv251, 1
  %lftr.wideiv253 = trunc i64 %indvars.iv.next252 to i32
  %exitcond254 = icmp eq i32 %lftr.wideiv253, 7
  br i1 %exitcond254, label %for.end49, label %for.body40

for.end49:                                        ; preds = %for.body40
  call void @_where(i8* getelementptr inbounds ([52 x i8]* @.str1, i64 0, i64 0), i32 104) #5
  %24 = load %struct.t_bin** @global_stat.rb, align 8, !tbaa !0
  %nr = getelementptr inbounds %struct.t_vcm* %vcm, i64 0, i32 0
  %25 = load i32* %nr, align 4, !tbaa !3
  %mul = mul nsw i32 %25, 3
  %group_p = getelementptr inbounds %struct.t_vcm* %vcm, i64 0, i32 2
  %26 = load [3 x float]** %group_p, align 8, !tbaa !0
  %arraydecay51 = getelementptr inbounds [3 x float]* %26, i64 0, i64 0
  %call52 = call i32 @add_binr(%struct._IO_FILE* %log, %struct.t_bin* %24, i32 %mul, float* %arraydecay51) #5
  call void @_where(i8* getelementptr inbounds ([52 x i8]* @.str1, i64 0, i64 0), i32 106) #5
  %27 = load %struct.t_bin** @global_stat.rb, align 8, !tbaa !0
  %28 = load i32* %nr, align 4, !tbaa !3
  %group_mass = getelementptr inbounds %struct.t_vcm* %vcm, i64 0, i32 8
  %29 = load float** %group_mass, align 8, !tbaa !0
  %call54 = call i32 @add_binr(%struct._IO_FILE* %log, %struct.t_bin* %27, i32 %28, float* %29) #5
  call void @_where(i8* getelementptr inbounds ([52 x i8]* @.str1, i64 0, i64 0), i32 108) #5
  %mode = getelementptr inbounds %struct.t_vcm* %vcm, i64 0, i32 1
  %30 = load i32* %mode, align 4, !tbaa !3
  %cmp55 = icmp eq i32 %30, 1
  br i1 %cmp55, label %if.then56, label %if.end73

if.then56:                                        ; preds = %for.end49
  %31 = load %struct.t_bin** @global_stat.rb, align 8, !tbaa !0
  %32 = load i32* %nr, align 4, !tbaa !3
  %mul58 = mul nsw i32 %32, 3
  %group_j = getelementptr inbounds %struct.t_vcm* %vcm, i64 0, i32 5
  %33 = load [3 x float]** %group_j, align 8, !tbaa !0
  %arraydecay60 = getelementptr inbounds [3 x float]* %33, i64 0, i64 0
  %call61 = call i32 @add_binr(%struct._IO_FILE* %log, %struct.t_bin* %31, i32 %mul58, float* %arraydecay60) #5
  call void @_where(i8* getelementptr inbounds ([52 x i8]* @.str1, i64 0, i64 0), i32 111) #5
  %34 = load %struct.t_bin** @global_stat.rb, align 8, !tbaa !0
  %35 = load i32* %nr, align 4, !tbaa !3
  %mul63 = mul nsw i32 %35, 3
  %group_x = getelementptr inbounds %struct.t_vcm* %vcm, i64 0, i32 4
  %36 = load [3 x float]** %group_x, align 8, !tbaa !0
  %arraydecay65 = getelementptr inbounds [3 x float]* %36, i64 0, i64 0
  %call66 = call i32 @add_binr(%struct._IO_FILE* %log, %struct.t_bin* %34, i32 %mul63, float* %arraydecay65) #5
  call void @_where(i8* getelementptr inbounds ([52 x i8]* @.str1, i64 0, i64 0), i32 113) #5
  %37 = load %struct.t_bin** @global_stat.rb, align 8, !tbaa !0
  %38 = load i32* %nr, align 4, !tbaa !3
  %mul68 = mul nsw i32 %38, 9
  %group_i = getelementptr inbounds %struct.t_vcm* %vcm, i64 0, i32 7
  %39 = load [3 x [3 x float]]** %group_i, align 8, !tbaa !0
  %arraydecay71 = getelementptr inbounds [3 x [3 x float]]* %39, i64 0, i64 0, i64 0
  %call72 = call i32 @add_binr(%struct._IO_FILE* %log, %struct.t_bin* %37, i32 %mul68, float* %arraydecay71) #5
  call void @_where(i8* getelementptr inbounds ([52 x i8]* @.str1, i64 0, i64 0), i32 115) #5
  br label %if.end73

if.end73:                                         ; preds = %if.then56, %for.end49
  %icj.0 = phi i32 [ %call61, %if.then56 ], [ -1, %for.end49 ]
  %ici.0 = phi i32 [ %call72, %if.then56 ], [ -1, %for.end49 ]
  %icx.0 = phi i32 [ %call66, %if.then56 ], [ -1, %for.end49 ]
  %40 = load %struct.t_bin** @global_stat.rb, align 8, !tbaa !0
  %mvcos = getelementptr inbounds %struct.t_groups* %grps, i64 0, i32 3, i32 1
  %call74 = call i32 @add_binr(%struct._IO_FILE* %log, %struct.t_bin* %40, i32 1, float* %mvcos) #5
  call void @_where(i8* getelementptr inbounds ([52 x i8]* @.str1, i64 0, i64 0), i32 118) #5
  %41 = load %struct.t_bin** @global_stat.rb, align 8, !tbaa !0
  %call75 = call i32 @add_binr(%struct._IO_FILE* %log, %struct.t_bin* %41, i32 1, float* %terminate) #5
  %42 = load %struct.t_bin** @global_stat.rb, align 8, !tbaa !0
  call void @sum_bin(%struct.t_bin* %42, %struct.t_commrec* %cr) #5
  call void @_where(i8* getelementptr inbounds ([52 x i8]* @.str1, i64 0, i64 0), i32 123) #5
  %43 = load %struct.t_bin** @global_stat.rb, align 8, !tbaa !0
  call void @extract_binr(%struct.t_bin* %43, i32 %call5, i32 44, float* %ener) #5
  %44 = load %struct.t_bin** @global_stat.rb, align 8, !tbaa !0
  call void @extract_binr(%struct.t_bin* %44, i32 %call7, i32 9, float* %arraydecay) #5
  %45 = load %struct.t_bin** @global_stat.rb, align 8, !tbaa !0
  call void @extract_binr(%struct.t_bin* %45, i32 %call10, i32 9, float* %arraydecay9) #5
  %46 = load i32* %nnodes, align 4, !tbaa !3
  %cmp82237 = icmp sgt i32 %46, 0
  br i1 %cmp82237, label %for.body83, label %for.cond93.preheader

for.cond93.preheader:                             ; preds = %for.body83, %if.end73
  %47 = load i32* %ngtc25, align 4, !tbaa !3
  %cmp95235 = icmp sgt i32 %47, 0
  br i1 %cmp95235, label %for.body96.lr.ph, label %for.cond108.preheader

for.body96.lr.ph:                                 ; preds = %for.cond93.preheader
  %tcstat100 = getelementptr inbounds %struct.t_groups* %grps, i64 0, i32 1
  br label %for.body96

for.body83:                                       ; preds = %if.end73, %for.body83
  %indvars.iv249 = phi i64 [ %indvars.iv.next250, %for.body83 ], [ 0, %if.end73 ]
  %48 = load %struct.t_bin** @global_stat.rb, align 8, !tbaa !0
  %arrayidx85 = getelementptr inbounds [256 x i32]* %in, i64 0, i64 %indvars.iv249
  %49 = load i32* %arrayidx85, align 4, !tbaa !3
  %arraydecay89 = getelementptr inbounds %struct.t_nrnb* %nrnb, i64 %indvars.iv249, i32 0, i64 0
  call void @extract_bind(%struct.t_bin* %48, i32 %49, i32 129, double* %arraydecay89) #5
  %indvars.iv.next250 = add i64 %indvars.iv249, 1
  %50 = load i32* %nnodes, align 4, !tbaa !3
  %51 = trunc i64 %indvars.iv.next250 to i32
  %cmp82 = icmp slt i32 %51, %50
  br i1 %cmp82, label %for.body83, label %for.cond93.preheader

for.cond108.preheader:                            ; preds = %for.body96, %for.cond93.preheader
  %52 = load %struct.t_bin** @global_stat.rb, align 8, !tbaa !0
  br label %for.body110

for.body96:                                       ; preds = %for.body96.lr.ph, %for.body96
  %indvars.iv247 = phi i64 [ 0, %for.body96.lr.ph ], [ %indvars.iv.next248, %for.body96 ]
  %53 = load %struct.t_bin** @global_stat.rb, align 8, !tbaa !0
  %54 = load i32** @global_stat.itc, align 8, !tbaa !0
  %arrayidx98 = getelementptr inbounds i32* %54, i64 %indvars.iv247
  %55 = load i32* %arrayidx98, align 4, !tbaa !3
  %56 = load %struct.t_grp_tcstat** %tcstat100, align 8, !tbaa !0
  %arraydecay104 = getelementptr inbounds %struct.t_grp_tcstat* %56, i64 %indvars.iv247, i32 2, i64 0, i64 0
  call void @extract_binr(%struct.t_bin* %53, i32 %55, i32 9, float* %arraydecay104) #5
  %indvars.iv.next248 = add i64 %indvars.iv247, 1
  %57 = load i32* %ngtc25, align 4, !tbaa !3
  %58 = trunc i64 %indvars.iv.next248 to i32
  %cmp95 = icmp slt i32 %58, %57
  br i1 %cmp95, label %for.body96, label %for.cond108.preheader

for.body110:                                      ; preds = %for.body110, %for.cond108.preheader
  %indvars.iv = phi i64 [ 0, %for.cond108.preheader ], [ %indvars.iv.next, %for.body110 ]
  %59 = phi %struct.t_bin* [ %52, %for.cond108.preheader ], [ %63, %for.body110 ]
  %arrayidx112 = getelementptr inbounds [7 x i32]* %inn, i64 0, i64 %indvars.iv
  %60 = load i32* %arrayidx112, align 4, !tbaa !3
  %61 = load i32* %nn, align 4, !tbaa !3
  %arrayidx118 = getelementptr inbounds %struct.t_groups* %grps, i64 0, i32 0, i32 1, i64 %indvars.iv
  %62 = load float** %arrayidx118, align 8, !tbaa !0
  call void @extract_binr(%struct.t_bin* %59, i32 %60, i32 %61, float* %62) #5
  %indvars.iv.next = add i64 %indvars.iv, 1
  %63 = load %struct.t_bin** @global_stat.rb, align 8, !tbaa !0
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 7
  br i1 %exitcond, label %for.end121, label %for.body110

for.end121:                                       ; preds = %for.body110
  %64 = load i32* %nr, align 4, !tbaa !3
  %mul123 = mul nsw i32 %64, 3
  %65 = load [3 x float]** %group_p, align 8, !tbaa !0
  %arraydecay126 = getelementptr inbounds [3 x float]* %65, i64 0, i64 0
  call void @extract_binr(%struct.t_bin* %63, i32 %call52, i32 %mul123, float* %arraydecay126) #5
  call void @_where(i8* getelementptr inbounds ([52 x i8]* @.str1, i64 0, i64 0), i32 136) #5
  %66 = load %struct.t_bin** @global_stat.rb, align 8, !tbaa !0
  %67 = load i32* %nr, align 4, !tbaa !3
  %68 = load float** %group_mass, align 8, !tbaa !0
  call void @extract_binr(%struct.t_bin* %66, i32 %call54, i32 %67, float* %68) #5
  call void @_where(i8* getelementptr inbounds ([52 x i8]* @.str1, i64 0, i64 0), i32 138) #5
  %69 = load i32* %mode, align 4, !tbaa !3
  %cmp130 = icmp eq i32 %69, 1
  br i1 %cmp130, label %if.then131, label %if.end148

if.then131:                                       ; preds = %for.end121
  %70 = load %struct.t_bin** @global_stat.rb, align 8, !tbaa !0
  %71 = load i32* %nr, align 4, !tbaa !3
  %mul133 = mul nsw i32 %71, 3
  %group_j134 = getelementptr inbounds %struct.t_vcm* %vcm, i64 0, i32 5
  %72 = load [3 x float]** %group_j134, align 8, !tbaa !0
  %arraydecay136 = getelementptr inbounds [3 x float]* %72, i64 0, i64 0
  call void @extract_binr(%struct.t_bin* %70, i32 %icj.0, i32 %mul133, float* %arraydecay136) #5
  call void @_where(i8* getelementptr inbounds ([52 x i8]* @.str1, i64 0, i64 0), i32 141) #5
  %73 = load %struct.t_bin** @global_stat.rb, align 8, !tbaa !0
  %74 = load i32* %nr, align 4, !tbaa !3
  %mul138 = mul nsw i32 %74, 3
  %group_x139 = getelementptr inbounds %struct.t_vcm* %vcm, i64 0, i32 4
  %75 = load [3 x float]** %group_x139, align 8, !tbaa !0
  %arraydecay141 = getelementptr inbounds [3 x float]* %75, i64 0, i64 0
  call void @extract_binr(%struct.t_bin* %73, i32 %icx.0, i32 %mul138, float* %arraydecay141) #5
  call void @_where(i8* getelementptr inbounds ([52 x i8]* @.str1, i64 0, i64 0), i32 143) #5
  %76 = load %struct.t_bin** @global_stat.rb, align 8, !tbaa !0
  %77 = load i32* %nr, align 4, !tbaa !3
  %mul143 = mul nsw i32 %77, 9
  %group_i144 = getelementptr inbounds %struct.t_vcm* %vcm, i64 0, i32 7
  %78 = load [3 x [3 x float]]** %group_i144, align 8, !tbaa !0
  %arraydecay147 = getelementptr inbounds [3 x [3 x float]]* %78, i64 0, i64 0, i64 0
  call void @extract_binr(%struct.t_bin* %76, i32 %ici.0, i32 %mul143, float* %arraydecay147) #5
  call void @_where(i8* getelementptr inbounds ([52 x i8]* @.str1, i64 0, i64 0), i32 145) #5
  br label %if.end148

if.end148:                                        ; preds = %if.then131, %for.end121
  %79 = load %struct.t_bin** @global_stat.rb, align 8, !tbaa !0
  call void @extract_binr(%struct.t_bin* %79, i32 %call74, i32 1, float* %mvcos) #5
  call void @_where(i8* getelementptr inbounds ([52 x i8]* @.str1, i64 0, i64 0), i32 148) #5
  %80 = load %struct.t_bin** @global_stat.rb, align 8, !tbaa !0
  call void @extract_binr(%struct.t_bin* %80, i32 %call75, i32 1, float* %terminate) #5
  call void @_where(i8* getelementptr inbounds ([52 x i8]* @.str1, i64 0, i64 0), i32 150) #5
  %81 = load i32* %nnodes, align 4, !tbaa !3
  %conv = sitofp i32 %81 to float
  %arrayidx152 = getelementptr inbounds float* %ener, i64 40
  %82 = load float* %arrayidx152, align 4, !tbaa !4
  %div = fdiv float %82, %conv
  store float %div, float* %arrayidx152, align 4, !tbaa !4
  call void @llvm.lifetime.end(i64 1024, i8* %0) #1
  ret void
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: optsize
declare %struct.t_bin* @mk_bin() #2

; Function Attrs: optsize
declare i8* @save_calloc(i8*, i8*, i32, i32, i32) #2

; Function Attrs: optsize
declare void @reset_bin(%struct.t_bin*) #2

; Function Attrs: optsize
declare void @init_nrnb(%struct.t_nrnb*) #2

; Function Attrs: optsize
declare void @cp_nrnb(%struct.t_nrnb*, %struct.t_nrnb*) #2

; Function Attrs: optsize
declare void @_where(i8*, i32) #2

; Function Attrs: optsize
declare i32 @add_binr(%struct._IO_FILE*, %struct.t_bin*, i32, float*) #2

; Function Attrs: optsize
declare i32 @add_bind(%struct._IO_FILE*, %struct.t_bin*, i32, double*) #2

; Function Attrs: optsize
declare void @sum_bin(%struct.t_bin*, %struct.t_commrec*) #2

; Function Attrs: optsize
declare void @extract_binr(%struct.t_bin*, i32, i32, float*) #2

; Function Attrs: optsize
declare void @extract_bind(%struct.t_bin*, i32, i32, double*) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind optsize readnone uwtable
define i32 @do_per_step(i32 %step, i32 %nstep) #3 {
entry:
  %cmp = icmp eq i32 %nstep, 0
  br i1 %cmp, label %return, label %if.then

if.then:                                          ; preds = %entry
  %rem = srem i32 %step, %nstep
  %cmp1 = icmp eq i32 %rem, 0
  %conv = zext i1 %cmp1 to i32
  br label %return

return:                                           ; preds = %entry, %if.then
  %retval.0 = phi i32 [ %conv, %if.then ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize uwtable
define i32 @write_traj(%struct._IO_FILE* %log, %struct.t_commrec* nocapture %cr, i8* %traj, %struct.t_nsborder* %nsb, i32 %step, float %t, float %lambda, %struct.t_nrnb* nocapture %nrnb, i32 %natoms, [3 x float]* %xx, [3 x float]* %vv, [3 x float]* %ff, [3 x float]* %box) #0 {
entry:
  %0 = load i32* @write_traj.fp, align 4, !tbaa !3
  %cmp = icmp eq i32 %0, -1
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %nodeid = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 0
  %1 = load i32* %nodeid, align 4, !tbaa !3
  %cmp1 = icmp eq i32 %1, 0
  br i1 %cmp1, label %land.lhs.true2, label %if.end

land.lhs.true2:                                   ; preds = %land.lhs.true
  %threadid = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 4
  %2 = load i32* %threadid, align 4, !tbaa !3
  %cmp3 = icmp eq i32 %2, 0
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true2
  %call = tail call i32 @open_trn(i8* %traj, i8* getelementptr inbounds ([2 x i8]* @.str2, i64 0, i64 0)) #5
  store i32 %call, i32* @write_traj.fp, align 4, !tbaa !3
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true2, %land.lhs.true, %entry
  %nnodes = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 1
  %3 = load i32* %nnodes, align 4, !tbaa !3
  %cmp4 = icmp sgt i32 %3, 1
  br i1 %cmp4, label %if.then5, label %if.end10

if.then5:                                         ; preds = %if.end
  %left = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 2
  %4 = load i32* %left, align 4, !tbaa !3
  %right = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 3
  %5 = load i32* %right, align 4, !tbaa !3
  tail call fastcc void @moveit(%struct._IO_FILE* %log, i32 %4, i32 %5, i8* getelementptr inbounds ([3 x i8]* @.str3, i64 0, i64 0), [3 x float]* %xx, %struct.t_nsborder* %nsb) #6
  %6 = load i32* %left, align 4, !tbaa !3
  %7 = load i32* %right, align 4, !tbaa !3
  tail call fastcc void @moveit(%struct._IO_FILE* %log, i32 %6, i32 %7, i8* getelementptr inbounds ([3 x i8]* @.str4, i64 0, i64 0), [3 x float]* %vv, %struct.t_nsborder* %nsb) #6
  %8 = load i32* %left, align 4, !tbaa !3
  %9 = load i32* %right, align 4, !tbaa !3
  tail call fastcc void @moveit(%struct._IO_FILE* %log, i32 %8, i32 %9, i8* getelementptr inbounds ([3 x i8]* @.str5, i64 0, i64 0), [3 x float]* %ff, %struct.t_nsborder* %nsb) #6
  br label %if.end10

if.end10:                                         ; preds = %if.then5, %if.end
  %tobool = icmp eq [3 x float]* %xx, null
  %tobool11 = icmp eq [3 x float]* %vv, null
  %or.cond = and i1 %tobool, %tobool11
  %tobool13 = icmp eq [3 x float]* %ff, null
  %or.cond42 = and i1 %or.cond, %tobool13
  br i1 %or.cond42, label %if.end21, label %land.lhs.true14

land.lhs.true14:                                  ; preds = %if.end10
  %nodeid15 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 0
  %10 = load i32* %nodeid15, align 4, !tbaa !3
  %cmp16 = icmp eq i32 %10, 0
  br i1 %cmp16, label %land.lhs.true17, label %if.end21

land.lhs.true17:                                  ; preds = %land.lhs.true14
  %threadid18 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 4
  %11 = load i32* %threadid18, align 4, !tbaa !3
  %cmp19 = icmp eq i32 %11, 0
  br i1 %cmp19, label %if.then20, label %if.end21

if.then20:                                        ; preds = %land.lhs.true17
  %12 = load i32* @write_traj.fp, align 4, !tbaa !3
  tail call void @fwrite_trn(i32 %12, i32 %step, float %t, float %lambda, [3 x float]* %box, i32 %natoms, [3 x float]* %xx, [3 x float]* %vv, [3 x float]* %ff) #5
  %13 = load i32* @write_traj.fp, align 4, !tbaa !3
  tail call void @gmx_fio_flush(i32 %13) #5
  br label %if.end21

if.end21:                                         ; preds = %land.lhs.true17, %land.lhs.true14, %if.end10, %if.then20
  %14 = load i32* @write_traj.fp, align 4, !tbaa !3
  ret i32 %14
}

; Function Attrs: optsize
declare i32 @open_trn(i8*, i8*) #2

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @moveit(%struct._IO_FILE* %log, i32 %left, i32 %right, i8* %s, [3 x float]* %xx, %struct.t_nsborder* %nsb) #0 {
entry:
  %tobool = icmp eq [3 x float]* %xx, null
  br i1 %tobool, label %return, label %if.end

if.end:                                           ; preds = %entry
  %nodeid = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 0
  %0 = load i32* %nodeid, align 4, !tbaa !3
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 8, i64 %idxprom
  %1 = load i32* %arrayidx, align 4, !tbaa !3
  %arrayidx4 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 7, i64 %idxprom
  %2 = load i32* %arrayidx4, align 4, !tbaa !3
  %call = tail call i8* @save_calloc(i8* getelementptr inbounds ([5 x i8]* @.str9, i64 0, i64 0), i8* getelementptr inbounds ([52 x i8]* @.str1, i64 0, i64 0), i32 179, i32 %2, i32 12) #5
  %3 = bitcast i8* %call to [3 x float]*
  %cmp116 = icmp sgt i32 %2, 0
  br i1 %cmp116, label %for.body.lr.ph, label %for.end69.critedge

for.body.lr.ph:                                   ; preds = %if.end
  %4 = sext i32 %1 to i64
  br label %for.body

for.body:                                         ; preds = %for.body, %for.body.lr.ph
  %indvars.iv124 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next125, %for.body ]
  %5 = add nsw i64 %indvars.iv124, %4
  %arraydecay = getelementptr inbounds [3 x float]* %xx, i64 %5, i64 0
  %arraydecay9 = getelementptr inbounds [3 x float]* %3, i64 %indvars.iv124, i64 0
  %6 = load float* %arraydecay, align 4, !tbaa !4
  store float %6, float* %arraydecay9, align 4, !tbaa !4
  %arrayidx2.i = getelementptr inbounds [3 x float]* %xx, i64 %5, i64 1
  %7 = load float* %arrayidx2.i, align 4, !tbaa !4
  %arrayidx3.i = getelementptr inbounds [3 x float]* %3, i64 %indvars.iv124, i64 1
  store float %7, float* %arrayidx3.i, align 4, !tbaa !4
  %arrayidx4.i = getelementptr inbounds [3 x float]* %xx, i64 %5, i64 2
  %8 = load float* %arrayidx4.i, align 4, !tbaa !4
  %arrayidx5.i = getelementptr inbounds [3 x float]* %3, i64 %indvars.iv124, i64 2
  store float %8, float* %arrayidx5.i, align 4, !tbaa !4
  %indvars.iv.next125 = add i64 %indvars.iv124, 1
  %lftr.wideiv127 = trunc i64 %indvars.iv.next125 to i32
  %exitcond128 = icmp eq i32 %lftr.wideiv127, %2
  br i1 %exitcond128, label %for.end, label %for.body

for.end:                                          ; preds = %for.body
  %nnodes = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 1
  %9 = load i32* %nnodes, align 4, !tbaa !3
  %sub = add nsw i32 %9, -1
  tail call void @move_rvecs(%struct._IO_FILE* %log, i32 0, i32 0, i32 %left, i32 %right, [3 x float]* %xx, [3 x float]* null, i32 %sub, %struct.t_nsborder* %nsb, %struct.t_nrnb* null) #5
  br i1 %cmp116, label %for.cond13.preheader.lr.ph, label %for.end69

for.cond13.preheader.lr.ph:                       ; preds = %for.end
  %tobool35 = icmp eq %struct._IO_FILE* %log, null
  %10 = sext i32 %1 to i64
  br label %for.cond13.preheader

for.cond13.preheader:                             ; preds = %for.inc67, %for.cond13.preheader.lr.ph
  %indvars.iv118 = phi i64 [ 0, %for.cond13.preheader.lr.ph ], [ %indvars.iv.next119, %for.inc67 ]
  %11 = add nsw i64 %indvars.iv118, %10
  br label %for.body15

for.body15:                                       ; preds = %for.body15, %for.cond13.preheader
  %indvars.iv = phi i64 [ 0, %for.cond13.preheader ], [ %indvars.iv.next, %for.body15 ]
  %bP.0112 = phi i32 [ 0, %for.cond13.preheader ], [ %bP.1, %for.body15 ]
  %arrayidx20 = getelementptr inbounds [3 x float]* %xx, i64 %11, i64 %indvars.iv
  %12 = load float* %arrayidx20, align 4, !tbaa !4
  %arrayidx24 = getelementptr inbounds [3 x float]* %3, i64 %indvars.iv118, i64 %indvars.iv
  %13 = load float* %arrayidx24, align 4, !tbaa !4
  %sub25 = fsub float %12, %13
  %fabsf = tail call float @fabsf(float %sub25) #7
  %14 = fpext float %fabsf to double
  %cmp27 = fcmp ogt double %14, 1.200000e-38
  %bP.1 = select i1 %cmp27, i32 1, i32 %bP.0112
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 3
  br i1 %exitcond, label %for.end33, label %for.body15

for.end33:                                        ; preds = %for.body15
  %tobool34 = icmp eq i32 %bP.1, 0
  %or.cond = or i1 %tobool34, %tobool35
  br i1 %or.cond, label %for.inc67, label %if.then36

if.then36:                                        ; preds = %for.end33
  %arrayidx40 = getelementptr inbounds [3 x float]* %3, i64 %indvars.iv118, i64 0
  %15 = load float* %arrayidx40, align 4, !tbaa !4
  %conv41 = fpext float %15 to double
  %arrayidx44 = getelementptr inbounds [3 x float]* %3, i64 %indvars.iv118, i64 1
  %16 = load float* %arrayidx44, align 4, !tbaa !4
  %conv45 = fpext float %16 to double
  %arrayidx48 = getelementptr inbounds [3 x float]* %3, i64 %indvars.iv118, i64 2
  %17 = load float* %arrayidx48, align 4, !tbaa !4
  %conv49 = fpext float %17 to double
  %arrayidx53 = getelementptr inbounds [3 x float]* %xx, i64 %11, i64 0
  %18 = load float* %arrayidx53, align 4, !tbaa !4
  %conv54 = fpext float %18 to double
  %arrayidx58 = getelementptr inbounds [3 x float]* %xx, i64 %11, i64 1
  %19 = load float* %arrayidx58, align 4, !tbaa !4
  %conv59 = fpext float %19 to double
  %arrayidx63 = getelementptr inbounds [3 x float]* %xx, i64 %11, i64 2
  %20 = load float* %arrayidx63, align 4, !tbaa !4
  %conv64 = fpext float %20 to double
  %21 = trunc i64 %11 to i32
  %call65 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %log, i8* getelementptr inbounds ([64 x i8]* @.str10, i64 0, i64 0), i8* %s, i32 %21, double %conv41, double %conv45, double %conv49, double %conv54, double %conv59, double %conv64) #5
  br label %for.inc67

for.inc67:                                        ; preds = %for.end33, %if.then36
  %indvars.iv.next119 = add i64 %indvars.iv118, 1
  %lftr.wideiv122 = trunc i64 %indvars.iv.next119 to i32
  %exitcond123 = icmp eq i32 %lftr.wideiv122, %2
  br i1 %exitcond123, label %for.end69, label %for.cond13.preheader

for.end69.critedge:                               ; preds = %if.end
  %nnodes.c = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 1
  %22 = load i32* %nnodes.c, align 4, !tbaa !3
  %sub.c = add nsw i32 %22, -1
  tail call void @move_rvecs(%struct._IO_FILE* %log, i32 0, i32 0, i32 %left, i32 %right, [3 x float]* %xx, [3 x float]* null, i32 %sub.c, %struct.t_nsborder* %nsb, %struct.t_nrnb* null) #5
  br label %for.end69

for.end69:                                        ; preds = %for.end69.critedge, %for.inc67, %for.end
  tail call void @save_free(i8* getelementptr inbounds ([5 x i8]* @.str9, i64 0, i64 0), i8* getelementptr inbounds ([52 x i8]* @.str1, i64 0, i64 0), i32 196, i8* %call) #5
  br label %return

return:                                           ; preds = %entry, %for.end69
  ret void
}

; Function Attrs: optsize
declare void @fwrite_trn(i32, i32, float, float, [3 x float]*, i32, [3 x float]*, [3 x float]*, [3 x float]*) #2

; Function Attrs: optsize
declare void @gmx_fio_flush(i32) #2

; Function Attrs: nounwind optsize uwtable
define void @write_xtc_traj(%struct._IO_FILE* %log, %struct.t_commrec* nocapture %cr, i8* %xtc_traj, %struct.t_nsborder* %nsb, %struct.t_mdatoms* nocapture %md, i32 %step, float %t, [3 x float]* %xx, [3 x float]* %box, float %prec) #0 {
entry:
  %.b = load i1* @write_xtc_traj.bFirst, align 1
  br i1 %.b, label %if.end18, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %nodeid = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 0
  %0 = load i32* %nodeid, align 4, !tbaa !3
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %land.lhs.true1, label %if.end18

land.lhs.true1:                                   ; preds = %land.lhs.true
  %threadid = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 4
  %1 = load i32* %threadid, align 4, !tbaa !3
  %cmp2 = icmp eq i32 %1, 0
  br i1 %cmp2, label %if.then, label %if.end18

if.then:                                          ; preds = %land.lhs.true1
  %call = tail call i32 @open_xtc(i8* %xtc_traj, i8* getelementptr inbounds ([2 x i8]* @.str2, i64 0, i64 0)) #5
  store i32 %call, i32* @xd, align 4, !tbaa !3
  store i32 0, i32* @write_xtc_traj.natoms, align 4, !tbaa !3
  %nr = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 1
  %2 = load i32* %nr, align 4, !tbaa !3
  %cmp392 = icmp sgt i32 %2, 0
  br i1 %cmp392, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %if.then
  %cXTC = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 18
  %3 = load i16** %cXTC, align 8, !tbaa !0
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %4 = phi i32 [ %2, %for.body.lr.ph ], [ %7, %for.inc ]
  %5 = phi i32 [ 0, %for.body.lr.ph ], [ %8, %for.inc ]
  %indvars.iv94 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next95, %for.inc ]
  %arrayidx = getelementptr inbounds i16* %3, i64 %indvars.iv94
  %6 = load i16* %arrayidx, align 2, !tbaa !5
  %cmp4 = icmp eq i16 %6, 0
  br i1 %cmp4, label %if.then6, label %for.inc

if.then6:                                         ; preds = %for.body
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* @write_xtc_traj.natoms, align 4, !tbaa !3
  %.pre98 = load i32* %nr, align 4, !tbaa !3
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then6
  %7 = phi i32 [ %4, %for.body ], [ %.pre98, %if.then6 ]
  %8 = phi i32 [ %5, %for.body ], [ %inc, %if.then6 ]
  %indvars.iv.next95 = add i64 %indvars.iv94, 1
  %9 = trunc i64 %indvars.iv.next95 to i32
  %cmp3 = icmp slt i32 %9, %7
  br i1 %cmp3, label %for.body, label %for.end

for.end:                                          ; preds = %for.inc, %if.then
  %10 = phi i32 [ %2, %if.then ], [ %7, %for.inc ]
  %11 = phi i32 [ 0, %if.then ], [ %8, %for.inc ]
  %tobool8 = icmp eq %struct._IO_FILE* %log, null
  br i1 %tobool8, label %if.end11, label %if.then9

if.then9:                                         ; preds = %for.end
  %call10 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %log, i8* getelementptr inbounds ([49 x i8]* @.str6, i64 0, i64 0), i32 %11) #5
  %.pre96 = load i32* @write_xtc_traj.natoms, align 4, !tbaa !3
  %.pre97 = load i32* %nr, align 4, !tbaa !3
  br label %if.end11

if.end11:                                         ; preds = %for.end, %if.then9
  %12 = phi i32 [ %10, %for.end ], [ %.pre97, %if.then9 ]
  %13 = phi i32 [ %11, %for.end ], [ %.pre96, %if.then9 ]
  %cmp13 = icmp eq i32 %13, %12
  br i1 %cmp13, label %if.end17, label %if.then15

if.then15:                                        ; preds = %if.end11
  %call16 = tail call i8* @save_calloc(i8* getelementptr inbounds ([6 x i8]* @.str7, i64 0, i64 0), i8* getelementptr inbounds ([52 x i8]* @.str1, i64 0, i64 0), i32 252, i32 %13, i32 12) #5
  %14 = bitcast i8* %call16 to [3 x float]*
  store [3 x float]* %14, [3 x float]** @write_xtc_traj.x_sel, align 8, !tbaa !0
  br label %if.end17

if.end17:                                         ; preds = %if.end11, %if.then15
  store i1 true, i1* @write_xtc_traj.bFirst, align 1
  br label %if.end18

if.end18:                                         ; preds = %entry, %if.end17, %land.lhs.true1, %land.lhs.true
  %nnodes = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 1
  %15 = load i32* %nnodes, align 4, !tbaa !3
  %cmp19 = icmp sgt i32 %15, 1
  br i1 %cmp19, label %if.then21, label %if.end22

if.then21:                                        ; preds = %if.end18
  %left = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 2
  %16 = load i32* %left, align 4, !tbaa !3
  %right = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 3
  %17 = load i32* %right, align 4, !tbaa !3
  tail call fastcc void @moveit(%struct._IO_FILE* %log, i32 %16, i32 %17, i8* getelementptr inbounds ([3 x i8]* @.str3, i64 0, i64 0), [3 x float]* %xx, %struct.t_nsborder* %nsb) #6
  br label %if.end22

if.end22:                                         ; preds = %if.then21, %if.end18
  %tobool23 = icmp eq [3 x float]* %xx, null
  br i1 %tobool23, label %if.end65, label %land.lhs.true24

land.lhs.true24:                                  ; preds = %if.end22
  %nodeid25 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 0
  %18 = load i32* %nodeid25, align 4, !tbaa !3
  %cmp26 = icmp eq i32 %18, 0
  br i1 %cmp26, label %land.lhs.true28, label %if.end65

land.lhs.true28:                                  ; preds = %land.lhs.true24
  %threadid29 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 4
  %19 = load i32* %threadid29, align 4, !tbaa !3
  %cmp30 = icmp eq i32 %19, 0
  br i1 %cmp30, label %if.then32, label %if.end65

if.then32:                                        ; preds = %land.lhs.true28
  %20 = load i32* @write_xtc_traj.natoms, align 4, !tbaa !3
  %nr33 = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 1
  %21 = load i32* %nr33, align 4, !tbaa !3
  %cmp34 = icmp eq i32 %20, %21
  br i1 %cmp34, label %if.then36, label %for.cond37.preheader

for.cond37.preheader:                             ; preds = %if.then32
  %cmp3989 = icmp sgt i32 %21, 0
  br i1 %cmp3989, label %for.body41.lr.ph, label %for.cond37.preheader.if.end59.loopexit_crit_edge

for.cond37.preheader.if.end59.loopexit_crit_edge: ; preds = %for.cond37.preheader
  %.pre.pre = load [3 x float]** @write_xtc_traj.x_sel, align 8, !tbaa !0
  br label %if.end59

for.body41.lr.ph:                                 ; preds = %for.cond37.preheader
  %cXTC43 = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 18
  %22 = load i16** %cXTC43, align 8, !tbaa !0
  %23 = load [3 x float]** @write_xtc_traj.x_sel, align 8, !tbaa !0
  br label %for.body41

if.then36:                                        ; preds = %if.then32
  store [3 x float]* %xx, [3 x float]** @write_xtc_traj.x_sel, align 8, !tbaa !0
  br label %if.end59

for.body41:                                       ; preds = %for.body41.lr.ph, %for.inc56
  %indvars.iv = phi i64 [ 0, %for.body41.lr.ph ], [ %indvars.iv.next, %for.inc56 ]
  %j.091 = phi i32 [ 0, %for.body41.lr.ph ], [ %j.1, %for.inc56 ]
  %arrayidx44 = getelementptr inbounds i16* %22, i64 %indvars.iv
  %24 = load i16* %arrayidx44, align 2, !tbaa !5
  %cmp46 = icmp eq i16 %24, 0
  br i1 %cmp46, label %if.then48, label %for.inc56

if.then48:                                        ; preds = %for.body41
  %arraydecay = getelementptr inbounds [3 x float]* %xx, i64 %indvars.iv, i64 0
  %idxprom51 = sext i32 %j.091 to i64
  %arraydecay53 = getelementptr inbounds [3 x float]* %23, i64 %idxprom51, i64 0
  %25 = load float* %arraydecay, align 4, !tbaa !4
  store float %25, float* %arraydecay53, align 4, !tbaa !4
  %arrayidx2.i = getelementptr inbounds [3 x float]* %xx, i64 %indvars.iv, i64 1
  %26 = load float* %arrayidx2.i, align 4, !tbaa !4
  %arrayidx3.i = getelementptr inbounds [3 x float]* %23, i64 %idxprom51, i64 1
  store float %26, float* %arrayidx3.i, align 4, !tbaa !4
  %arrayidx4.i = getelementptr inbounds [3 x float]* %xx, i64 %indvars.iv, i64 2
  %27 = load float* %arrayidx4.i, align 4, !tbaa !4
  %arrayidx5.i = getelementptr inbounds [3 x float]* %23, i64 %idxprom51, i64 2
  store float %27, float* %arrayidx5.i, align 4, !tbaa !4
  %inc54 = add nsw i32 %j.091, 1
  br label %for.inc56

for.inc56:                                        ; preds = %for.body41, %if.then48
  %j.1 = phi i32 [ %inc54, %if.then48 ], [ %j.091, %for.body41 ]
  %indvars.iv.next = add i64 %indvars.iv, 1
  %28 = trunc i64 %indvars.iv.next to i32
  %cmp39 = icmp slt i32 %28, %21
  br i1 %cmp39, label %for.body41, label %if.end59

if.end59:                                         ; preds = %for.cond37.preheader.if.end59.loopexit_crit_edge, %for.inc56, %if.then36
  %29 = phi [3 x float]* [ %xx, %if.then36 ], [ %.pre.pre, %for.cond37.preheader.if.end59.loopexit_crit_edge ], [ %23, %for.inc56 ]
  %30 = load i32* @xd, align 4, !tbaa !3
  %call60 = tail call i32 @write_xtc(i32 %30, i32 %20, i32 %step, float %t, [3 x float]* %box, [3 x float]* %29, float %prec) #5
  %cmp61 = icmp eq i32 %call60, 0
  br i1 %cmp61, label %if.then63, label %if.end65

if.then63:                                        ; preds = %if.end59
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([10 x i8]* @.str8, i64 0, i64 0)) #5
  br label %if.end65

if.end65:                                         ; preds = %if.end22, %if.end59, %if.then63, %land.lhs.true28, %land.lhs.true24
  ret void
}

; Function Attrs: optsize
declare i32 @open_xtc(i8*, i8*) #2

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #4

; Function Attrs: optsize
declare i32 @write_xtc(i32, i32, i32, float, [3 x float]*, [3 x float]*, float) #2

; Function Attrs: optsize
declare void @fatal_error(i32, i8*, ...) #2

; Function Attrs: nounwind optsize uwtable
define void @close_xtc_traj() #0 {
entry:
  %0 = load i32* @xd, align 4, !tbaa !3
  tail call void @close_xtc(i32 %0) #5
  ret void
}

; Function Attrs: optsize
declare void @close_xtc(i32) #2

; Function Attrs: optsize
declare void @move_rvecs(%struct._IO_FILE*, i32, i32, i32, i32, [3 x float]*, [3 x float]*, i32, %struct.t_nsborder*, %struct.t_nrnb*) #2

; Function Attrs: optsize
declare void @save_free(i8*, i8*, i32, i8*) #2

declare float @fabsf(float)

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize readnone uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize }
attributes #6 = { optsize }
attributes #7 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }

!0 = metadata !{metadata !"any pointer", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"int", metadata !1}
!4 = metadata !{metadata !"float", metadata !1}
!5 = metadata !{metadata !"short", metadata !1}
