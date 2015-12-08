; ModuleID = '../../SPEC/benchspec/CPU2006/435.gromacs/src/ns.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.t_grid = type { i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32*, i32*, i32* }
%struct.t_ns_buf = type { i32, i32, [1024 x i32] }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
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
%struct.t_topology = type { i8**, %struct.t_idef, %struct.t_atoms, [3 x %struct.t_block], %struct.t_symtab }
%struct.t_idef = type { i32, i32, i32, i32*, %union.t_iparams*, [44 x %struct.t_ilist] }
%struct.t_ilist = type { i32, [256 x i32], i32* }
%struct.t_atoms = type { i32, %struct.t_atom*, i8***, i8***, i8***, i32, i8***, i32, i8***, %struct.t_block, [9 x %struct.t_grps], %struct.t_pdbinfo* }
%struct.t_atom = type { float, float, float, float, i16, i16, i32, i32, [9 x i8], i8 }
%struct.t_block = type { [256 x i32], i32, i32*, i32, i32* }
%struct.t_grps = type { i32, i32* }
%struct.t_pdbinfo = type { i32, i32, i8, [6 x i8], float, float, i32, [6 x i32] }
%struct.t_symtab = type { i32, %struct.symbuf* }
%struct.symbuf = type { i32, i8**, %struct.symbuf* }
%struct.t_groups = type { %struct.t_grp_ener, %struct.t_grp_tcstat*, %struct.t_grp_acc*, %struct.t_cos_acc }
%struct.t_grp_ener = type { i32, [7 x float*] }
%struct.t_grp_tcstat = type { float, float, [3 x [3 x float]], float, float }
%struct.t_grp_acc = type { i32, i32*, float, [3 x float], [3 x float], [3 x float] }
%struct.t_cos_acc = type { float, float, float }
%struct.t_commrec = type { i32, i32, i32, i32, i32, i32 }
%struct.t_nsborder = type { i32, i32, i32, i32, i32, i32, i32, [256 x i32], [256 x i32], [256 x i32], [256 x i32] }
%struct.t_nrnb = type { [129 x double] }

@.str = private unnamed_addr constant [33 x i8] c"Could not correct too skewed box\00", align 1
@.str1 = private unnamed_addr constant [87 x i8] c"%s, %d: Negative number of short range atoms.\0ACall your Gromacs dealer for assistance.\00", align 1
@.str2 = private unnamed_addr constant [50 x i8] c"../../SPEC/benchspec/CPU2006/435.gromacs/src/ns.c\00", align 1
@search_neighbours.bFirst = internal unnamed_addr global i1 false
@search_neighbours.grid = internal unnamed_addr global %struct.t_grid* null, align 8
@search_neighbours.bexcl = internal unnamed_addr global i64* null, align 8
@search_neighbours.bHaveLJ = internal unnamed_addr global i32* null, align 8
@search_neighbours.ns_buf = internal unnamed_addr global %struct.t_ns_buf** null, align 8
@search_neighbours.cg_index = internal unnamed_addr global i32* null, align 8
@search_neighbours.slab_index = internal unnamed_addr global i32* null, align 8
@search_neighbours.bExcludeAlleg = internal unnamed_addr global i32* null, align 8
@.str3 = private unnamed_addr constant [73 x i8] c"One of the box vectors has become shorter than twice the cut-off length.\00", align 1
@.str4 = private unnamed_addr constant [73 x i8] c"One of the box lengths has become smaller than twice the cut-off length.\00", align 1
@.str5 = private unnamed_addr constant [39 x i8] c"Max #atoms in a charge group: %d > %d\0A\00", align 1
@.str6 = private unnamed_addr constant [6 x i8] c"bexcl\00", align 1
@.str7 = private unnamed_addr constant [14 x i8] c"bExcludeAlleg\00", align 1
@NLJ_INC = internal global i32 16384, align 4
@.str10 = private unnamed_addr constant [11 x i8] c"slab_index\00", align 1
@debug = external global %struct._IO_FILE*
@.str11 = private unnamed_addr constant [76 x i8] c"Will use DOMAIN DECOMPOSITION, from charge group index %d to %d on node %d\0A\00", align 1
@.str12 = private unnamed_addr constant [9 x i8] c"cg_index\00", align 1
@.str13 = private unnamed_addr constant [5 x i8] c"grid\00", align 1
@.str14 = private unnamed_addr constant [8 x i8] c"bHaveLJ\00", align 1
@.str15 = private unnamed_addr constant [7 x i8] c"ns_buf\00", align 1
@.str16 = private unnamed_addr constant [10 x i8] c"ns_buf[i]\00", align 1
@ns_simple_core.aaj = internal unnamed_addr global i32* null, align 8
@.str17 = private unnamed_addr constant [4 x i8] c"aaj\00", align 1
@.str18 = private unnamed_addr constant [38 x i8] c"Adding %5d J particles for nblist %s\0A\00", align 1
@interaction_function = external global [44 x %struct.t_interaction_function]
@.str19 = private unnamed_addr constant [12 x i8] c"nlist->jjnr\00", align 1
@.str20 = private unnamed_addr constant [48 x i8] c"reallocating neigborlist il_code=%d, maxnri=%d\0A\00", align 1
@.str21 = private unnamed_addr constant [9 x i8] c"nl->iinr\00", align 1
@.str22 = private unnamed_addr constant [8 x i8] c"nl->gid\00", align 1
@.str23 = private unnamed_addr constant [10 x i8] c"nl->shift\00", align 1
@.str24 = private unnamed_addr constant [11 x i8] c"nl->jindex\00", align 1
@.str25 = private unnamed_addr constant [12 x i8] c"nl->nsatoms\00", align 1
@.str26 = private unnamed_addr constant [35 x i8] c"Dividing by zero, file %s, line %d\00", align 1
@ns5_core.nl_lr_ljc = internal unnamed_addr global i32** null, align 8
@ns5_core.nl_lr_one = internal unnamed_addr global i32** null, align 8
@ns5_core.nl_sr = internal unnamed_addr global i32** null, align 8
@ns5_core.nlr_ljc = internal unnamed_addr global i32* null, align 8
@ns5_core.nlr_one = internal unnamed_addr global i32* null, align 8
@ns5_core.nsr = internal unnamed_addr global i32* null, align 8
@ns5_core.dcx2 = internal unnamed_addr global float* null, align 8
@ns5_core.dcy2 = internal unnamed_addr global float* null, align 8
@ns5_core.dcz2 = internal unnamed_addr global float* null, align 8
@.str27 = private unnamed_addr constant [6 x i8] c"nl_sr\00", align 1
@.str28 = private unnamed_addr constant [4 x i8] c"nsr\00", align 1
@.str29 = private unnamed_addr constant [8 x i8] c"nlr_ljc\00", align 1
@.str30 = private unnamed_addr constant [8 x i8] c"nlr_one\00", align 1
@.str31 = private unnamed_addr constant [10 x i8] c"nl_lr_ljc\00", align 1
@.str32 = private unnamed_addr constant [10 x i8] c"nl_lr_one\00", align 1
@.str33 = private unnamed_addr constant [9 x i8] c"nl_sr[j]\00", align 1
@.str34 = private unnamed_addr constant [13 x i8] c"nl_lr_ljc[j]\00", align 1
@.str35 = private unnamed_addr constant [13 x i8] c"nl_lr_one[j]\00", align 1
@.str36 = private unnamed_addr constant [52 x i8] c"ns5_core: rs2 = %g, rvdw2 = %g, rcoul2 = %g (nm^2)\0A\00", align 1
@.str37 = private unnamed_addr constant [5 x i8] c"dcx2\00", align 1
@.str38 = private unnamed_addr constant [5 x i8] c"dcy2\00", align 1
@.str39 = private unnamed_addr constant [5 x i8] c"dcz2\00", align 1
@.str40 = private unnamed_addr constant [38 x i8] c"icg = %d, iicg = %d, file %s, line %d\00", align 1
@sptr = internal unnamed_addr global [3 x float]* null, align 8
@sdim = internal unnamed_addr global i32 0, align 4
@.str41 = private unnamed_addr constant [45 x i8] c"Just sorted the cg_cm array on dimension %d\0A\00", align 1
@.str42 = private unnamed_addr constant [30 x i8] c"Index:  Coordinates of cg_cm\0A\00", align 1
@.str43 = private unnamed_addr constant [23 x i8] c"%8d%10.3f%10.3f%10.3f\0A\00", align 1
@nbf_index.inloop = private unnamed_addr constant [20 x i32] [i32 -1, i32 0, i32 2, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 32, i32 36, i32 40, i32 44, i32 48, i32 52, i32 58, i32 62, i32 66, i32 72], align 16
@.str44 = private unnamed_addr constant [65 x i8] c"Initiating neighbourlist type %d for %s with %d SR, %d LR atoms\0A\00", align 1
@.str45 = private unnamed_addr constant [10 x i8] c"UNDEFINED\00", align 1
@esolv_names = external global [5 x i8*]
@stdlog = external global %struct._IO_FILE*
@.str46 = private unnamed_addr constant [25 x i8] c"Correcting invalid box:\0A\00", align 1
@.str47 = private unnamed_addr constant [8 x i8] c"old box\00", align 1
@.str48 = private unnamed_addr constant [8 x i8] c"new box\00", align 1

; Function Attrs: nounwind optsize uwtable
define void @correct_box([3 x float]* %box, %struct.t_forcerec* nocapture %fr, %struct.t_graph* nocapture %g) #0 {
entry:
  %call = tail call fastcc i32 @correct_box_elem([3 x float]* %box, i32 2, i32 1) #7
  %call1 = tail call fastcc i32 @correct_box_elem([3 x float]* %box, i32 2, i32 0) #7
  %call2 = tail call fastcc i32 @correct_box_elem([3 x float]* %box, i32 1, i32 0) #7
  %0 = or i32 %call1, %call
  %1 = or i32 %0, %call2
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %if.end78, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %nnodes = getelementptr inbounds %struct.t_graph* %g, i64 0, i32 1
  %3 = load i32* %nnodes, align 4, !tbaa !0
  %cmp126 = icmp sgt i32 %3, 0
  br i1 %cmp126, label %for.body.lr.ph, label %for.cond34.preheader

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %ishift = getelementptr inbounds %struct.t_graph* %g, i64 0, i32 7
  %4 = load [3 x i32]** %ishift, align 8, !tbaa !3
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %indvars.iv130 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next131, %for.body ]
  %arrayidx6 = getelementptr inbounds [3 x i32]* %4, i64 %indvars.iv130, i64 2
  %5 = load i32* %arrayidx6, align 4, !tbaa !0
  %mul = mul nsw i32 %5, %call
  %arrayidx10 = getelementptr inbounds [3 x i32]* %4, i64 %indvars.iv130, i64 1
  %6 = load i32* %arrayidx10, align 4, !tbaa !0
  %sub = sub nsw i32 %6, %mul
  store i32 %sub, i32* %arrayidx10, align 4, !tbaa !0
  %mul15 = mul nsw i32 %5, %call1
  %arrayidx19 = getelementptr inbounds [3 x i32]* %4, i64 %indvars.iv130, i64 0
  %7 = load i32* %arrayidx19, align 4, !tbaa !0
  %sub20 = sub nsw i32 %7, %mul15
  %mul25 = mul nsw i32 %sub, %call2
  %sub30 = sub nsw i32 %sub20, %mul25
  store i32 %sub30, i32* %arrayidx19, align 4, !tbaa !0
  %indvars.iv.next131 = add i64 %indvars.iv130, 1
  %8 = load i32* %nnodes, align 4, !tbaa !0
  %9 = trunc i64 %indvars.iv.next131 to i32
  %cmp = icmp slt i32 %9, %8
  br i1 %cmp, label %for.body, label %for.cond34.preheader

for.cond34.preheader:                             ; preds = %for.cond.preheader, %for.body, %for.inc75
  %indvars.iv128 = phi i64 [ %indvars.iv.next129, %for.inc75 ], [ 0, %for.body ], [ 0, %for.cond.preheader ]
  %nri = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 49, i64 %indvars.iv128, i32 1
  %10 = load i32* %nri, align 4, !tbaa !0
  %cmp37123 = icmp sgt i32 %10, 0
  br i1 %cmp37123, label %for.body38.lr.ph, label %for.inc75

for.body38.lr.ph:                                 ; preds = %for.cond34.preheader
  %shift43 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 49, i64 %indvars.iv128, i32 9
  %.pre = load i32** %shift43, align 8, !tbaa !3
  br label %for.body38

for.body38:                                       ; preds = %for.body38.lr.ph, %if.end
  %11 = phi i32* [ %.pre, %for.body38.lr.ph ], [ %14, %if.end ]
  %indvars.iv = phi i64 [ 0, %for.body38.lr.ph ], [ %indvars.iv.next, %if.end ]
  %arrayidx44 = getelementptr inbounds i32* %11, i64 %indvars.iv
  %12 = load i32* %arrayidx44, align 4, !tbaa !0
  %rem = srem i32 %12, 3
  %div = sdiv i32 %12, 3
  %rem46 = srem i32 %div, 3
  %sub47 = add nsw i32 %rem46, -1
  %div48 = sdiv i32 %12, 9
  %sub49 = add nsw i32 %div48, -1
  %mul50 = mul nsw i32 %sub49, %call
  %sub51 = sub i32 %sub47, %mul50
  %mul52 = mul nsw i32 %sub49, %call1
  %mul54 = mul nsw i32 %sub51, %call2
  %mul56 = mul nsw i32 %div48, 3
  %add57 = add nsw i32 %sub51, %mul56
  %13 = mul i32 %add57, 3
  %sub53 = add i32 %rem, 2
  %sub55 = sub i32 %sub53, %mul52
  %mul59 = sub i32 %sub55, %mul54
  %add60 = add i32 %mul59, %13
  %add61 = add nsw i32 %add60, 1
  %cmp62 = icmp slt i32 %add61, 0
  %cmp64 = icmp sgt i32 %add60, 25
  %or.cond = or i1 %cmp62, %cmp64
  br i1 %or.cond, label %if.then65, label %if.end

if.then65:                                        ; preds = %for.body38
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([33 x i8]* @.str, i64 0, i64 0)) #8
  %.pre132 = load i32** %shift43, align 8, !tbaa !3
  br label %if.end

if.end:                                           ; preds = %for.body38, %if.then65
  %14 = phi i32* [ %11, %for.body38 ], [ %.pre132, %if.then65 ]
  %arrayidx71 = getelementptr inbounds i32* %14, i64 %indvars.iv
  store i32 %add61, i32* %arrayidx71, align 4, !tbaa !0
  %indvars.iv.next = add i64 %indvars.iv, 1
  %15 = load i32* %nri, align 4, !tbaa !0
  %16 = trunc i64 %indvars.iv.next to i32
  %cmp37 = icmp slt i32 %16, %15
  br i1 %cmp37, label %for.body38, label %for.inc75

for.inc75:                                        ; preds = %if.end, %for.cond34.preheader
  %indvars.iv.next129 = add i64 %indvars.iv128, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next129 to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 13
  br i1 %exitcond, label %if.end78, label %for.cond34.preheader

if.end78:                                         ; preds = %for.inc75, %entry
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc i32 @correct_box_elem([3 x float]* %box, i32 %v, i32 %d) #0 {
entry:
  %idxprom = sext i32 %d to i64
  %idxprom1 = sext i32 %v to i64
  %arrayidx = getelementptr inbounds [3 x float]* %box, i64 %idxprom1
  %arrayidx2 = getelementptr inbounds [3 x float]* %box, i64 %idxprom1, i64 %idxprom
  %0 = load float* %arrayidx2, align 4, !tbaa !4
  %conv79 = fpext float %0 to double
  %arrayidx5 = getelementptr inbounds [3 x float]* %box, i64 %idxprom
  %arrayidx6 = getelementptr inbounds [3 x float]* %box, i64 %idxprom, i64 %idxprom
  %1 = load float* %arrayidx6, align 4, !tbaa !4
  %conv780 = fpext float %1 to double
  %mul81 = fmul double %conv780, 5.001000e-01
  %cmp82 = fcmp ogt double %conv79, %mul81
  br i1 %cmp82, label %while.body.lr.ph, label %while.cond17.preheader

while.body.lr.ph:                                 ; preds = %entry
  %arraydecay = getelementptr inbounds [3 x float]* %arrayidx, i64 0, i64 0
  %arraydecay13 = getelementptr inbounds [3 x float]* %arrayidx5, i64 0, i64 0
  %arrayidx2.i = getelementptr inbounds [3 x float]* %box, i64 %idxprom1, i64 1
  %arrayidx3.i = getelementptr inbounds [3 x float]* %box, i64 %idxprom, i64 1
  %arrayidx5.i = getelementptr inbounds [3 x float]* %box, i64 %idxprom1, i64 2
  %arrayidx6.i = getelementptr inbounds [3 x float]* %box, i64 %idxprom, i64 2
  br label %while.body

while.cond17.preheader:                           ; preds = %while.cond.backedge, %entry
  %2 = phi float [ %1, %entry ], [ %15, %while.cond.backedge ]
  %3 = phi float [ %0, %entry ], [ %14, %while.cond.backedge ]
  %shift.0.lcssa = phi i32 [ 0, %entry ], [ %shift.083, %while.cond.backedge ]
  %sub73 = fsub float -0.000000e+00, %3
  %conv2274 = fpext float %sub73 to double
  %conv2775 = fpext float %2 to double
  %mul2876 = fmul double %conv2775, 5.001000e-01
  %cmp2977 = fcmp ogt double %conv2274, %mul2876
  br i1 %cmp2977, label %while.body31.lr.ph, label %while.end45

while.body31.lr.ph:                               ; preds = %while.cond17.preheader
  %arraydecay38 = getelementptr inbounds [3 x float]* %arrayidx, i64 0, i64 0
  %arraydecay41 = getelementptr inbounds [3 x float]* %arrayidx5, i64 0, i64 0
  %arrayidx2.i69 = getelementptr inbounds [3 x float]* %box, i64 %idxprom1, i64 1
  %arrayidx3.i70 = getelementptr inbounds [3 x float]* %box, i64 %idxprom, i64 1
  %arrayidx5.i71 = getelementptr inbounds [3 x float]* %box, i64 %idxprom1, i64 2
  %arrayidx6.i72 = getelementptr inbounds [3 x float]* %box, i64 %idxprom, i64 2
  br label %while.body31

while.body:                                       ; preds = %while.cond.backedge.while.body_crit_edge, %while.body.lr.ph
  %shift.083 = phi i32 [ -1, %while.body.lr.ph ], [ %phitmp, %while.cond.backedge.while.body_crit_edge ]
  %4 = load %struct._IO_FILE** @stdlog, align 8, !tbaa !3
  %tobool = icmp eq %struct._IO_FILE* %4, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %while.body
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([25 x i8]* @.str46, i64 0, i64 0), i64 24, i64 1, %struct._IO_FILE* %4)
  %6 = load %struct._IO_FILE** @stdlog, align 8, !tbaa !3
  tail call void @pr_rvecs(%struct._IO_FILE* %6, i32 0, i8* getelementptr inbounds ([8 x i8]* @.str47, i64 0, i64 0), [3 x float]* %box, i32 3) #8
  %.pre91 = load %struct._IO_FILE** @stdlog, align 8, !tbaa !3
  br label %if.end

if.end:                                           ; preds = %while.body, %if.then
  %7 = phi %struct._IO_FILE* [ %.pre91, %if.then ], [ null, %while.body ]
  %8 = load float* %arraydecay, align 4, !tbaa !4
  %9 = load float* %arraydecay13, align 4, !tbaa !4
  %sub.i = fsub float %8, %9
  %10 = load float* %arrayidx2.i, align 4, !tbaa !4
  %11 = load float* %arrayidx3.i, align 4, !tbaa !4
  %sub4.i = fsub float %10, %11
  %12 = load float* %arrayidx5.i, align 4, !tbaa !4
  %13 = load float* %arrayidx6.i, align 4, !tbaa !4
  %sub7.i = fsub float %12, %13
  store float %sub.i, float* %arraydecay, align 4, !tbaa !4
  store float %sub4.i, float* %arrayidx2.i, align 4, !tbaa !4
  store float %sub7.i, float* %arrayidx5.i, align 4, !tbaa !4
  %tobool14 = icmp eq %struct._IO_FILE* %7, null
  br i1 %tobool14, label %while.cond.backedge, label %if.then15

if.then15:                                        ; preds = %if.end
  tail call void @pr_rvecs(%struct._IO_FILE* %7, i32 0, i8* getelementptr inbounds ([8 x i8]* @.str48, i64 0, i64 0), [3 x float]* %box, i32 3) #8
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.then15, %if.end
  %14 = load float* %arrayidx2, align 4, !tbaa !4
  %conv = fpext float %14 to double
  %15 = load float* %arrayidx6, align 4, !tbaa !4
  %conv7 = fpext float %15 to double
  %mul = fmul double %conv7, 5.001000e-01
  %cmp = fcmp ogt double %conv, %mul
  br i1 %cmp, label %while.cond.backedge.while.body_crit_edge, label %while.cond17.preheader

while.cond.backedge.while.body_crit_edge:         ; preds = %while.cond.backedge
  %phitmp = add i32 %shift.083, -1
  br label %while.body

while.body31:                                     ; preds = %while.cond17.backedge, %while.body31.lr.ph
  %shift.178 = phi i32 [ %shift.0.lcssa, %while.body31.lr.ph ], [ %inc, %while.cond17.backedge ]
  %16 = load %struct._IO_FILE** @stdlog, align 8, !tbaa !3
  %tobool32 = icmp eq %struct._IO_FILE* %16, null
  br i1 %tobool32, label %if.end35, label %if.then33

if.then33:                                        ; preds = %while.body31
  %17 = tail call i64 @fwrite(i8* getelementptr inbounds ([25 x i8]* @.str46, i64 0, i64 0), i64 24, i64 1, %struct._IO_FILE* %16)
  %18 = load %struct._IO_FILE** @stdlog, align 8, !tbaa !3
  tail call void @pr_rvecs(%struct._IO_FILE* %18, i32 0, i8* getelementptr inbounds ([8 x i8]* @.str47, i64 0, i64 0), [3 x float]* %box, i32 3) #8
  %.pre = load %struct._IO_FILE** @stdlog, align 8, !tbaa !3
  br label %if.end35

if.end35:                                         ; preds = %while.body31, %if.then33
  %19 = phi %struct._IO_FILE* [ %.pre, %if.then33 ], [ null, %while.body31 ]
  %20 = load float* %arraydecay38, align 4, !tbaa !4
  %21 = load float* %arraydecay41, align 4, !tbaa !4
  %add.i = fadd float %20, %21
  %22 = load float* %arrayidx2.i69, align 4, !tbaa !4
  %23 = load float* %arrayidx3.i70, align 4, !tbaa !4
  %add4.i = fadd float %22, %23
  %24 = load float* %arrayidx5.i71, align 4, !tbaa !4
  %25 = load float* %arrayidx6.i72, align 4, !tbaa !4
  %add7.i = fadd float %24, %25
  store float %add.i, float* %arraydecay38, align 4, !tbaa !4
  store float %add4.i, float* %arrayidx2.i69, align 4, !tbaa !4
  store float %add7.i, float* %arrayidx5.i71, align 4, !tbaa !4
  %inc = add nsw i32 %shift.178, 1
  %tobool42 = icmp eq %struct._IO_FILE* %19, null
  br i1 %tobool42, label %while.cond17.backedge, label %if.then43

if.then43:                                        ; preds = %if.end35
  tail call void @pr_rvecs(%struct._IO_FILE* %19, i32 0, i8* getelementptr inbounds ([8 x i8]* @.str48, i64 0, i64 0), [3 x float]* %box, i32 3) #8
  br label %while.cond17.backedge

while.cond17.backedge:                            ; preds = %if.then43, %if.end35
  %26 = load float* %arrayidx2, align 4, !tbaa !4
  %sub = fsub float -0.000000e+00, %26
  %conv22 = fpext float %sub to double
  %27 = load float* %arrayidx6, align 4, !tbaa !4
  %conv27 = fpext float %27 to double
  %mul28 = fmul double %conv27, 5.001000e-01
  %cmp29 = fcmp ogt double %conv22, %mul28
  br i1 %cmp29, label %while.body31, label %while.end45

while.end45:                                      ; preds = %while.cond17.backedge, %while.cond17.preheader
  %shift.1.lcssa = phi i32 [ %shift.0.lcssa, %while.cond17.preheader ], [ %inc, %while.cond17.backedge ]
  ret i32 %shift.1.lcssa
}

; Function Attrs: optsize
declare void @fatal_error(i32, i8*, ...) #1

; Function Attrs: nounwind optsize uwtable
define void @init_neighbor_list(%struct._IO_FILE* nocapture %log, %struct.t_forcerec* %fr, i32 %homenr) #0 {
entry:
  %nWatMol = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 41
  %0 = load i32* %nWatMol, align 4, !tbaa !0
  %1 = mul i32 %0, -3
  %sub = add i32 %1, %homenr
  %nMNOMol = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 39
  %2 = load i32* %nMNOMol, align 4, !tbaa !0
  %conv = sitofp i32 %2 to float
  %arrayidx = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 40, i64 0
  %3 = load float* %arrayidx, align 4, !tbaa !4
  %mul1 = fmul float %conv, %3
  %conv2 = fptosi float %mul1 to i32
  %sub3 = sub i32 %sub, %conv2
  %cmp = icmp slt i32 %sub3, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([87 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([50 x i8]* @.str2, i64 0, i64 0), i32 286) #8
  %.pre = load i32* %nMNOMol, align 4, !tbaa !0
  %.pre162 = load i32* %nWatMol, align 4, !tbaa !0
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = phi i32 [ %.pre162, %if.then ], [ %0, %entry ]
  %5 = phi i32 [ %.pre, %if.then ], [ %2, %entry ]
  %bTwinRange = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 51
  %6 = load i32* %bTwinRange, align 4, !tbaa !0
  %tobool = icmp eq i32 %6, 0
  br i1 %tobool, label %if.end20, label %if.then7

if.then7:                                         ; preds = %if.end
  %cmp9 = icmp slt i32 %5, 50
  %. = select i1 %cmp9, i32 %5, i32 50
  %cmp13 = icmp slt i32 %4, 50
  %cond19 = select i1 %cmp13, i32 %4, i32 50
  br label %if.end20

if.end20:                                         ; preds = %if.end, %if.then7
  %maxlr.0 = phi i32 [ 50, %if.then7 ], [ 0, %if.end ]
  %maxlr_mno.0 = phi i32 [ %., %if.then7 ], [ 0, %if.end ]
  %maxlr_wat.0 = phi i32 [ %cond19, %if.then7 ], [ 0, %if.end ]
  %arrayidx21 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 49, i64 0
  %arrayidx22 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 50, i64 0
  %call = tail call fastcc i32 @nbf_index(%struct.t_forcerec* %fr, i32 1, i32 1, i32 0, i32 0) #7
  tail call fastcc void @init_nblist(%struct.t_nblist* %arrayidx21, %struct.t_nblist* %arrayidx22, i32 %sub3, i32 %maxlr.0, i32 0, i32 %call) #7
  %arrayidx24 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 49, i64 1
  %arrayidx26 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 50, i64 1
  %call27 = tail call fastcc i32 @nbf_index(%struct.t_forcerec* %fr, i32 1, i32 0, i32 0, i32 0) #7
  tail call fastcc void @init_nblist(%struct.t_nblist* %arrayidx24, %struct.t_nblist* %arrayidx26, i32 %sub3, i32 %maxlr.0, i32 0, i32 %call27) #7
  %arrayidx29 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 49, i64 2
  %arrayidx31 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 50, i64 2
  %bcoultab.i = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 13
  %7 = load i32* %bcoultab.i, align 4, !tbaa !0
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %if.else.i, label %nbf_index.exit

if.else.i:                                        ; preds = %if.end20
  %bRF.i = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 7
  %9 = load i32* %bRF.i, align 4, !tbaa !0
  %tobool4.i = icmp eq i32 %9, 0
  %phitmp161 = select i1 %tobool4.i, i64 5, i64 10
  br label %nbf_index.exit

nbf_index.exit:                                   ; preds = %if.end20, %if.else.i
  %icoul.0.i = phi i64 [ 15, %if.end20 ], [ %phitmp161, %if.else.i ]
  %arrayidx.i = getelementptr inbounds [20 x i32]* @nbf_index.inloop, i64 0, i64 %icoul.0.i
  %10 = load i32* %arrayidx.i, align 4, !tbaa !0
  tail call fastcc void @init_nblist(%struct.t_nblist* %arrayidx29, %struct.t_nblist* %arrayidx31, i32 %sub3, i32 %maxlr.0, i32 0, i32 %10) #7
  %arrayidx34 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 49, i64 6
  %arrayidx36 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 50, i64 6
  %call37 = tail call fastcc i32 @nbf_index(%struct.t_forcerec* %fr, i32 1, i32 1, i32 0, i32 1) #7
  tail call fastcc void @init_nblist(%struct.t_nblist* %arrayidx34, %struct.t_nblist* %arrayidx36, i32 %5, i32 %maxlr_mno.0, i32 1, i32 %call37) #7
  %arrayidx39 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 49, i64 7
  %arrayidx41 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 50, i64 7
  %call42 = tail call fastcc i32 @nbf_index(%struct.t_forcerec* %fr, i32 1, i32 0, i32 0, i32 1) #7
  tail call fastcc void @init_nblist(%struct.t_nblist* %arrayidx39, %struct.t_nblist* %arrayidx41, i32 %5, i32 %maxlr_mno.0, i32 1, i32 %call42) #7
  %arrayidx44 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 49, i64 8
  %arrayidx46 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 50, i64 8
  %call47 = tail call fastcc i32 @nbf_index(%struct.t_forcerec* %fr, i32 0, i32 1, i32 0, i32 1) #7
  tail call fastcc void @init_nblist(%struct.t_nblist* %arrayidx44, %struct.t_nblist* %arrayidx46, i32 %5, i32 %maxlr_mno.0, i32 1, i32 %call47) #7
  %arrayidx49 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 49, i64 9
  %arrayidx51 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 50, i64 9
  %call52 = tail call fastcc i32 @nbf_index(%struct.t_forcerec* %fr, i32 1, i32 1, i32 0, i32 2) #7
  tail call fastcc void @init_nblist(%struct.t_nblist* %arrayidx49, %struct.t_nblist* %arrayidx51, i32 %4, i32 %maxlr_wat.0, i32 2, i32 %call52) #7
  %arrayidx54 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 49, i64 10
  %arrayidx56 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 50, i64 10
  %call57 = tail call fastcc i32 @nbf_index(%struct.t_forcerec* %fr, i32 0, i32 1, i32 0, i32 2) #7
  tail call fastcc void @init_nblist(%struct.t_nblist* %arrayidx54, %struct.t_nblist* %arrayidx56, i32 %4, i32 %maxlr_wat.0, i32 2, i32 %call57) #7
  %arrayidx59 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 49, i64 11
  %arrayidx61 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 50, i64 11
  %call62 = tail call fastcc i32 @nbf_index(%struct.t_forcerec* %fr, i32 1, i32 1, i32 0, i32 3) #7
  tail call fastcc void @init_nblist(%struct.t_nblist* %arrayidx59, %struct.t_nblist* %arrayidx61, i32 %4, i32 %maxlr_wat.0, i32 3, i32 %call62) #7
  %arrayidx64 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 49, i64 12
  %arrayidx66 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 50, i64 12
  %call67 = tail call fastcc i32 @nbf_index(%struct.t_forcerec* %fr, i32 0, i32 1, i32 0, i32 3) #7
  tail call fastcc void @init_nblist(%struct.t_nblist* %arrayidx64, %struct.t_nblist* %arrayidx66, i32 %4, i32 %maxlr_wat.0, i32 3, i32 %call67) #7
  %efep = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 29
  %11 = load i32* %efep, align 4, !tbaa !0
  %cmp68 = icmp eq i32 %11, 0
  br i1 %cmp68, label %if.end86, label %if.then70

if.then70:                                        ; preds = %nbf_index.exit
  %arrayidx72 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 49, i64 3
  %arrayidx74 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 50, i64 3
  %call75 = tail call fastcc i32 @nbf_index(%struct.t_forcerec* %fr, i32 1, i32 1, i32 1, i32 0) #7
  tail call fastcc void @init_nblist(%struct.t_nblist* %arrayidx72, %struct.t_nblist* %arrayidx74, i32 %sub3, i32 %maxlr.0, i32 0, i32 %call75) #7
  %arrayidx77 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 49, i64 4
  %arrayidx79 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 50, i64 4
  %call80 = tail call fastcc i32 @nbf_index(%struct.t_forcerec* %fr, i32 1, i32 0, i32 1, i32 0) #7
  tail call fastcc void @init_nblist(%struct.t_nblist* %arrayidx77, %struct.t_nblist* %arrayidx79, i32 %sub3, i32 %maxlr.0, i32 0, i32 %call80) #7
  %arrayidx82 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 49, i64 5
  %arrayidx84 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 50, i64 5
  %call85 = tail call fastcc i32 @nbf_index(%struct.t_forcerec* %fr, i32 0, i32 1, i32 1, i32 0) #7
  tail call fastcc void @init_nblist(%struct.t_nblist* %arrayidx82, %struct.t_nblist* %arrayidx84, i32 %sub3, i32 %maxlr.0, i32 0, i32 %call85) #7
  br label %if.end86

if.end86:                                         ; preds = %nbf_index.exit, %if.then70
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @init_nblist(%struct.t_nblist* nocapture %nl_sr, %struct.t_nblist* nocapture %nl_lr, i32 %maxsr, i32 %maxlr, i32 %solvent, i32 %il_code) #0 {
entry:
  %0 = load %struct._IO_FILE** @debug, align 8, !tbaa !3
  %tobool = icmp eq %struct._IO_FILE* %0, null
  br i1 %tobool, label %for.body, label %if.then

if.then:                                          ; preds = %entry
  %1 = icmp ugt i32 %solvent, 3
  br i1 %1, label %cond.end, label %cond.false

cond.false:                                       ; preds = %if.then
  %idxprom = sext i32 %solvent to i64
  %arrayidx = getelementptr inbounds [5 x i8*]* @esolv_names, i64 0, i64 %idxprom
  %2 = load i8** %arrayidx, align 8, !tbaa !3
  br label %cond.end

cond.end:                                         ; preds = %if.then, %cond.false
  %cond = phi i8* [ %2, %cond.false ], [ getelementptr inbounds ([10 x i8]* @.str45, i64 0, i64 0), %if.then ]
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([65 x i8]* @.str44, i64 0, i64 0), i32 %il_code, i8* %cond, i32 %maxsr, i32 %maxlr) #8
  br label %for.body

for.body:                                         ; preds = %cond.end, %entry, %for.body
  %i.045 = phi i32 [ %inc, %for.body ], [ 0, %entry ], [ 0, %cond.end ]
  %cmp3 = icmp eq i32 %i.045, 0
  %cond7 = select i1 %cmp3, %struct.t_nblist* %nl_sr, %struct.t_nblist* %nl_lr
  %cond12 = select i1 %cmp3, i32 %maxsr, i32 %maxlr
  %il_code13 = getelementptr inbounds %struct.t_nblist* %cond7, i64 0, i32 0
  store i32 %il_code, i32* %il_code13, align 4, !tbaa !0
  %mul = shl nsw i32 %cond12, 2
  %maxnri = getelementptr inbounds %struct.t_nblist* %cond7, i64 0, i32 2
  store i32 %mul, i32* %maxnri, align 4, !tbaa !0
  %maxnrj = getelementptr inbounds %struct.t_nblist* %cond7, i64 0, i32 4
  store i32 0, i32* %maxnrj, align 4, !tbaa !0
  %maxlen = getelementptr inbounds %struct.t_nblist* %cond7, i64 0, i32 5
  store i32 0, i32* %maxlen, align 4, !tbaa !0
  %nri = getelementptr inbounds %struct.t_nblist* %cond7, i64 0, i32 1
  store i32 0, i32* %nri, align 4, !tbaa !0
  %nrj = getelementptr inbounds %struct.t_nblist* %cond7, i64 0, i32 3
  store i32 0, i32* %nrj, align 4, !tbaa !0
  %iinr = getelementptr inbounds %struct.t_nblist* %cond7, i64 0, i32 7
  %gid = getelementptr inbounds %struct.t_nblist* %cond7, i64 0, i32 8
  %jindex = getelementptr inbounds %struct.t_nblist* %cond7, i64 0, i32 10
  %nsatoms = getelementptr inbounds %struct.t_nblist* %cond7, i64 0, i32 12
  store i32* null, i32** %nsatoms, align 8, !tbaa !3
  %solvent14 = getelementptr inbounds %struct.t_nblist* %cond7, i64 0, i32 6
  %3 = bitcast i32** %iinr to i8*
  call void @llvm.memset.p0i8.i64(i8* %3, i8 0, i64 32, i32 8, i1 false)
  store i32 %solvent, i32* %solvent14, align 4, !tbaa !0
  tail call fastcc void @reallocate_nblist(%struct.t_nblist* %cond7) #7
  %4 = load i32** %jindex, align 8, !tbaa !3
  store i32 0, i32* %4, align 4, !tbaa !0
  %arrayidx18 = getelementptr inbounds i32* %4, i64 1
  store i32 0, i32* %arrayidx18, align 4, !tbaa !0
  %5 = load i32** %gid, align 8, !tbaa !3
  store i32 -1, i32* %5, align 4, !tbaa !0
  %inc = add nsw i32 %i.045, 1
  %exitcond = icmp eq i32 %inc, 2
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.body
  ret void
}

; Function Attrs: nounwind optsize readonly uwtable
define internal fastcc i32 @nbf_index(%struct.t_forcerec* nocapture %fr, i32 %bvdw, i32 %bcoul, i32 %bFree, i32 %solopt) #2 {
entry:
  %tobool = icmp eq i32 %bcoul, 0
  br i1 %tobool, label %if.end9, label %if.then

if.then:                                          ; preds = %entry
  %bcoultab = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 13
  %0 = load i32* %bcoultab, align 4, !tbaa !0
  %1 = or i32 %0, %bFree
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %if.else, label %if.end9

if.else:                                          ; preds = %if.then
  %bRF = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 7
  %3 = load i32* %bRF, align 4, !tbaa !0
  %tobool4 = icmp eq i32 %3, 0
  %. = select i1 %tobool4, i32 1, i32 2
  br label %if.end9

if.end9:                                          ; preds = %entry, %if.else, %if.then
  %icoul.0 = phi i32 [ 3, %if.then ], [ %., %if.else ], [ 0, %entry ]
  %tobool10 = icmp eq i32 %bvdw, 0
  br i1 %tobool10, label %if.end32, label %if.then11

if.then11:                                        ; preds = %if.end9
  %bvdwtab = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 14
  %4 = load i32* %bvdwtab, align 4, !tbaa !0
  %5 = or i32 %4, %bFree
  %6 = icmp eq i32 %5, 0
  %bBHAM24 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 64
  %7 = load i32* %bBHAM24, align 4, !tbaa !0
  %tobool25 = icmp eq i32 %7, 0
  br i1 %6, label %if.else23, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then11
  %.81 = select i1 %tobool25, i32 3, i32 4
  br label %if.end32

if.else23:                                        ; preds = %if.then11
  %.78 = select i1 %tobool25, i32 1, i32 2
  br label %if.end32

if.end32:                                         ; preds = %land.lhs.true, %if.end9, %if.else23
  %ivdw.0 = phi i32 [ %.78, %if.else23 ], [ 0, %if.end9 ], [ %.81, %land.lhs.true ]
  %mul = mul i32 %icoul.0, 5
  %add = add i32 %ivdw.0, %mul
  %idxprom = zext i32 %add to i64
  %arrayidx = getelementptr inbounds [20 x i32]* @nbf_index.inloop, i64 0, i64 %idxprom
  %8 = load i32* %arrayidx, align 4, !tbaa !0
  %tobool33 = icmp eq i32 %bFree, 0
  br i1 %tobool33, label %if.else37, label %if.then34

if.then34:                                        ; preds = %if.end32
  %sc_alpha = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 30
  %9 = load float* %sc_alpha, align 4, !tbaa !4
  %fabsf = tail call float @fabsf(float %9) #9
  %10 = fpext float %fabsf to double
  %cmp = fcmp olt double %10, 1.200000e-38
  %cond = select i1 %cmp, i32 1, i32 2
  %add36 = add i32 %cond, %8
  br label %if.end56

if.else37:                                        ; preds = %if.end32
  %add38 = add i32 %8, %solopt
  %cmp39 = icmp sgt i32 %solopt, 0
  %cmp42 = icmp eq i32 %icoul.0, 3
  %or.cond79 = and i1 %cmp39, %cmp42
  br i1 %or.cond79, label %land.lhs.true44, label %if.end56

land.lhs.true44:                                  ; preds = %if.else37
  switch i32 %ivdw.0, label %if.end56 [
    i32 4, label %if.then53
    i32 3, label %if.then53
    i32 0, label %if.then53
  ]

if.then53:                                        ; preds = %land.lhs.true44, %land.lhs.true44, %land.lhs.true44
  %add54 = add i32 %add38, 2
  br label %if.end56

if.end56:                                         ; preds = %land.lhs.true44, %if.else37, %if.then53, %if.then34
  %nn.0 = phi i32 [ %add36, %if.then34 ], [ %add54, %if.then53 ], [ %add38, %land.lhs.true44 ], [ %add38, %if.else37 ]
  ret i32 %nn.0
}

; Function Attrs: nounwind optsize readnone uwtable
define i32 @calc_naaj(i32 %icg, i32 %cgtot) #3 {
entry:
  %rem = srem i32 %cgtot, 2
  %cmp = icmp eq i32 %rem, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %div = sdiv i32 %cgtot, 2
  %add = add nsw i32 %div, 1
  br label %if.end34

if.else:                                          ; preds = %entry
  %rem141 = and i32 %cgtot, 3
  %cmp2 = icmp eq i32 %rem141, 0
  br i1 %cmp2, label %if.then3, label %if.else24

if.then3:                                         ; preds = %if.else
  %div4 = sdiv i32 %cgtot, 2
  %cmp5 = icmp sgt i32 %div4, %icg
  %rem7 = srem i32 %icg, 2
  br i1 %cmp5, label %if.then6, label %if.else14

if.then6:                                         ; preds = %if.then3
  %cmp8 = icmp eq i32 %rem7, 0
  %add11 = zext i1 %cmp8 to i32
  %add11.div4 = add nsw i32 %add11, %div4
  ret i32 %add11.div4

if.else14:                                        ; preds = %if.then3
  %cmp16 = icmp eq i32 %rem7, 1
  %add19 = zext i1 %cmp16 to i32
  %add19.div4 = add nsw i32 %add19, %div4
  br label %if.end34

if.else24:                                        ; preds = %if.else
  %rem2542 = and i32 %icg, 1
  %div28 = sdiv i32 %cgtot, 2
  %0 = xor i32 %rem2542, 1
  %add29.div28 = add nsw i32 %div28, %0
  br label %if.end34

if.end34:                                         ; preds = %if.else24, %if.else14, %if.then
  %naaj.0 = phi i32 [ %add, %if.then ], [ %add19.div4, %if.else14 ], [ %add29.div28, %if.else24 ]
  ret i32 %naaj.0
}

; Function Attrs: nounwind optsize uwtable
define i32 @search_neighbours(%struct._IO_FILE* %log, %struct.t_forcerec* %fr, [3 x float]* %x, [3 x float]* %box, %struct.t_topology* nocapture %top, %struct.t_groups* nocapture %grps, %struct.t_commrec* %cr, %struct.t_nsborder* %nsb, %struct.t_nrnb* %nrnb, %struct.t_mdatoms* %md, float %lambda, float* %dvdlambda) #0 {
entry:
  %b_inv.i = alloca [3 x float], align 4
  %box_size = alloca [3 x float], align 4
  %bGrid1 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 43
  %0 = load i32* %bGrid1, align 4, !tbaa !0
  %nr = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 2, i32 10, i64 1, i32 0
  %1 = load i32* %nr, align 4, !tbaa !0
  br label %for.body

for.body:                                         ; preds = %for.body, %entry
  %indvars.iv757 = phi i64 [ 0, %entry ], [ %indvars.iv.next758, %for.body ]
  %arrayidx6 = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv757, i64 %indvars.iv757
  %2 = load float* %arrayidx6, align 4, !tbaa !4
  %arrayidx8 = getelementptr inbounds [3 x float]* %box_size, i64 0, i64 %indvars.iv757
  store float %2, float* %arrayidx8, align 4, !tbaa !4
  %indvars.iv.next758 = add i64 %indvars.iv757, 1
  %lftr.wideiv759 = trunc i64 %indvars.iv.next758 to i32
  %exitcond760 = icmp eq i32 %lftr.wideiv759, 3
  br i1 %exitcond760, label %for.end, label %for.body

for.end:                                          ; preds = %for.body
  %ePBC = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 0
  %3 = load i32* %ePBC, align 4, !tbaa !0
  %cmp9 = icmp eq i32 %3, 1
  br i1 %cmp9, label %if.end86, label %if.then

if.then:                                          ; preds = %for.end
  %tobool = icmp eq i32 %0, 0
  br i1 %tobool, label %if.else, label %if.then10

if.then10:                                        ; preds = %if.then
  %arraydecay = getelementptr inbounds [3 x float]* %box, i64 0, i64 0
  %4 = load float* %arraydecay, align 4, !tbaa !4
  %mul.i = fmul float %4, %4
  %arrayidx2.i = getelementptr inbounds [3 x float]* %box, i64 0, i64 1
  %5 = load float* %arrayidx2.i, align 4, !tbaa !4
  %mul4.i = fmul float %5, %5
  %add.i = fadd float %mul.i, %mul4.i
  %arrayidx5.i = getelementptr inbounds [3 x float]* %box, i64 0, i64 2
  %6 = load float* %arrayidx5.i, align 4, !tbaa !4
  %mul7.i = fmul float %6, %6
  %add8.i = fadd float %add.i, %mul7.i
  %arraydecay13 = getelementptr inbounds [3 x float]* %box, i64 1, i64 0
  %7 = load float* %arraydecay13, align 4, !tbaa !4
  %mul.i539 = fmul float %7, %7
  %arrayidx2.i540 = getelementptr inbounds [3 x float]* %box, i64 1, i64 1
  %8 = load float* %arrayidx2.i540, align 4, !tbaa !4
  %mul4.i541 = fmul float %8, %8
  %add.i542 = fadd float %mul.i539, %mul4.i541
  %arrayidx5.i543 = getelementptr inbounds [3 x float]* %box, i64 1, i64 2
  %9 = load float* %arrayidx5.i543, align 4, !tbaa !4
  %mul7.i544 = fmul float %9, %9
  %add8.i545 = fadd float %add.i542, %mul7.i544
  %arraydecay16 = getelementptr inbounds [3 x float]* %box, i64 2, i64 0
  %10 = load float* %arraydecay16, align 4, !tbaa !4
  %mul.i546 = fmul float %10, %10
  %arrayidx2.i547 = getelementptr inbounds [3 x float]* %box, i64 2, i64 1
  %11 = load float* %arrayidx2.i547, align 4, !tbaa !4
  %mul4.i548 = fmul float %11, %11
  %add.i549 = fadd float %mul.i546, %mul4.i548
  %arrayidx5.i550 = getelementptr inbounds [3 x float]* %box, i64 2, i64 2
  %12 = load float* %arrayidx5.i550, align 4, !tbaa !4
  %mul7.i551 = fmul float %12, %12
  %add8.i552 = fadd float %add.i549, %mul7.i551
  %cmp18 = fcmp olt float %add8.i545, %add8.i552
  %cond = select i1 %cmp18, float %add8.i545, float %add8.i552
  %cmp25 = fcmp olt float %add8.i, %cond
  %brmerge = or i1 %cmp25, %cmp18
  %add8.i.mux = select i1 %cmp25, float %add8.i, float %add8.i545
  %cond49 = select i1 %brmerge, float %add8.i.mux, float %add8.i552
  %rlistlong = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 2
  %13 = load float* %rlistlong, align 4, !tbaa !4
  %mul = fmul float %13, 2.000000e+00
  %mul52 = fmul float %mul, %mul
  %cmp53 = fcmp ult float %mul52, %cond49
  br i1 %cmp53, label %if.end86, label %if.then54

if.then54:                                        ; preds = %if.then10
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([73 x i8]* @.str3, i64 0, i64 0)) #8
  br label %if.end86

if.else:                                          ; preds = %if.then
  %arrayidx55 = getelementptr inbounds [3 x float]* %box_size, i64 0, i64 0
  %14 = load float* %arrayidx55, align 4, !tbaa !4
  %arrayidx56 = getelementptr inbounds [3 x float]* %box_size, i64 0, i64 1
  %15 = load float* %arrayidx56, align 4, !tbaa !4
  %arrayidx57 = getelementptr inbounds [3 x float]* %box_size, i64 0, i64 2
  %16 = load float* %arrayidx57, align 4, !tbaa !4
  %cmp58 = fcmp olt float %15, %16
  %. = select i1 %cmp58, float %15, float %16
  %cmp65 = fcmp olt float %14, %.
  %cond79 = select i1 %cmp65, float %14, float %.
  %rlistlong80 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 2
  %17 = load float* %rlistlong80, align 4, !tbaa !4
  %mul81 = fmul float %17, 2.000000e+00
  %cmp82 = fcmp ult float %mul81, %cond79
  br i1 %cmp82, label %if.end86, label %if.then83

if.then83:                                        ; preds = %if.else
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([73 x i8]* @.str4, i64 0, i64 0)) #8
  br label %if.end86

if.end86:                                         ; preds = %if.then10, %if.else, %for.end, %if.then54, %if.then83
  %.b = load i1* @search_neighbours.bFirst, align 1
  br i1 %.b, label %for.body.i607, label %for.cond89.preheader

for.cond89.preheader:                             ; preds = %if.end86
  %nr90 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 3, i64 0, i32 1
  %18 = load i32* %nr90, align 4, !tbaa !0
  %cmp91708 = icmp sgt i32 %18, 0
  br i1 %cmp91708, label %for.body92.lr.ph, label %if.end116

for.body92.lr.ph:                                 ; preds = %for.cond89.preheader
  %index = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 3, i64 0, i32 2
  %19 = load i32** %index, align 8, !tbaa !3
  %.pre764 = load i32* %19, align 4, !tbaa !0
  br label %for.body92

for.body92:                                       ; preds = %for.body92.lr.ph, %for.body92
  %20 = phi i32 [ %.pre764, %for.body92.lr.ph ], [ %21, %for.body92 ]
  %indvars.iv755 = phi i64 [ 0, %for.body92.lr.ph ], [ %indvars.iv.next756, %for.body92 ]
  %nr_in_cg.0710 = phi i32 [ 1, %for.body92.lr.ph ], [ %nr_in_cg.0.sub, %for.body92 ]
  %indvars.iv.next756 = add i64 %indvars.iv755, 1
  %arrayidx94 = getelementptr inbounds i32* %19, i64 %indvars.iv.next756
  %21 = load i32* %arrayidx94, align 4, !tbaa !0
  %sub = sub nsw i32 %21, %20
  %cmp98 = icmp sgt i32 %nr_in_cg.0710, %sub
  %nr_in_cg.0.sub = select i1 %cmp98, i32 %nr_in_cg.0710, i32 %sub
  %22 = trunc i64 %indvars.iv.next756 to i32
  %cmp91 = icmp slt i32 %22, %18
  br i1 %cmp91, label %for.body92, label %for.end113

for.end113:                                       ; preds = %for.body92
  %cmp114 = icmp sgt i32 %nr_in_cg.0.sub, 64
  br i1 %cmp114, label %if.then115, label %if.end116

if.then115:                                       ; preds = %for.end113
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([39 x i8]* @.str5, i64 0, i64 0), i32 %nr_in_cg.0.sub, i32 64) #8
  br label %if.end116

if.end116:                                        ; preds = %for.cond89.preheader, %if.then115, %for.end113
  %nra = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 3, i64 0, i32 3
  %23 = load i32* %nra, align 4, !tbaa !0
  %call117 = call i8* @save_calloc(i8* getelementptr inbounds ([6 x i8]* @.str6, i64 0, i64 0), i8* getelementptr inbounds ([50 x i8]* @.str2, i64 0, i64 0), i32 1708, i32 %23, i32 8) #8
  %24 = bitcast i8* %call117 to i64*
  store i64* %24, i64** @search_neighbours.bexcl, align 8, !tbaa !3
  %25 = load i32* %nr90, align 4, !tbaa !0
  %call119 = call i8* @save_calloc(i8* getelementptr inbounds ([14 x i8]* @.str7, i64 0, i64 0), i8* getelementptr inbounds ([50 x i8]* @.str2, i64 0, i64 0), i32 1711, i32 %25, i32 4) #8
  %26 = bitcast i8* %call119 to i32*
  store i32* %26, i32** @search_neighbours.bExcludeAlleg, align 8, !tbaa !3
  %27 = load i32* %nr90, align 4, !tbaa !0
  %cmp122705 = icmp sgt i32 %27, 0
  br i1 %cmp122705, label %for.body123.lr.ph, label %if.end156

for.body123.lr.ph:                                ; preds = %if.end116
  %eg_excl = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 66
  %28 = load i32** %eg_excl, align 8, !tbaa !3
  %index125 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 3, i64 0, i32 2
  %29 = load i32** %index125, align 8, !tbaa !3
  %cENER = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 15
  %30 = load i16** %cENER, align 8, !tbaa !3
  %cmp131700 = icmp slt i32 %1, 1
  br label %for.body123

for.body123:                                      ; preds = %for.body123.lr.ph, %for.end142
  %indvars.iv753 = phi i64 [ 0, %for.body123.lr.ph ], [ %indvars.iv.next754, %for.end142 ]
  %arrayidx126 = getelementptr inbounds i32* %29, i64 %indvars.iv753
  %31 = load i32* %arrayidx126, align 4, !tbaa !0
  %idxprom127 = sext i32 %31 to i64
  %arrayidx128 = getelementptr inbounds i16* %30, i64 %idxprom127
  %32 = load i16* %arrayidx128, align 2, !tbaa !5
  %conv = zext i16 %32 to i32
  %mul129 = mul nsw i32 %conv, %1
  %idx.ext = sext i32 %mul129 to i64
  br i1 %cmp131700, label %for.end142, label %for.body134

for.body134:                                      ; preds = %for.body123, %for.body134
  %indvars.iv751 = phi i64 [ %indvars.iv.next752, %for.body134 ], [ 0, %for.body123 ]
  %allexcl.0702 = phi i32 [ %.allexcl.0, %for.body134 ], [ 1, %for.body123 ]
  %add.ptr.sum = add i64 %indvars.iv751, %idx.ext
  %arrayidx136 = getelementptr inbounds i32* %28, i64 %add.ptr.sum
  %33 = load i32* %arrayidx136, align 4, !tbaa !0
  %tobool137 = icmp eq i32 %33, 0
  %.allexcl.0 = select i1 %tobool137, i32 0, i32 %allexcl.0702
  %indvars.iv.next752 = add i64 %indvars.iv751, 1
  %34 = trunc i64 %indvars.iv.next752 to i32
  %cmp131 = icmp sge i32 %34, %1
  %tobool133 = icmp eq i32 %.allexcl.0, 0
  %or.cond = or i1 %cmp131, %tobool133
  br i1 %or.cond, label %for.end142, label %for.body134

for.end142:                                       ; preds = %for.body134, %for.body123
  %allexcl.0.lcssa = phi i32 [ 1, %for.body123 ], [ %.allexcl.0, %for.body134 ]
  %arrayidx144 = getelementptr inbounds i32* %26, i64 %indvars.iv753
  store i32 %allexcl.0.lcssa, i32* %arrayidx144, align 4, !tbaa !0
  %indvars.iv.next754 = add i64 %indvars.iv753, 1
  %35 = load i32* %nr90, align 4, !tbaa !0
  %36 = trunc i64 %indvars.iv.next754 to i32
  %cmp122 = icmp slt i32 %36, %35
  br i1 %cmp122, label %for.body123, label %if.end156

if.end156:                                        ; preds = %for.end142, %if.end116
  %bDomDecomp = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 44
  %37 = load i32* %bDomDecomp, align 4, !tbaa !0
  %tobool157 = icmp eq i32 %37, 0
  br i1 %tobool157, label %if.end195, label %if.then158

if.then158:                                       ; preds = %if.end156
  %nnodes = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 1
  %38 = load i32* %nnodes, align 4, !tbaa !0
  %add159 = add nsw i32 %38, 1
  %call160 = call i8* @save_calloc(i8* getelementptr inbounds ([11 x i8]* @.str10, i64 0, i64 0), i8* getelementptr inbounds ([50 x i8]* @.str2, i64 0, i64 0), i32 1747, i32 %add159, i32 4) #8
  %39 = bitcast i8* %call160 to i32*
  store i32* %39, i32** @search_neighbours.slab_index, align 8, !tbaa !3
  %40 = load i32* %nnodes, align 4, !tbaa !0
  %cmp163698 = icmp slt i32 %40, 0
  br i1 %cmp163698, label %for.end177, label %for.body165

for.body165:                                      ; preds = %if.then158, %for.body165
  %indvars.iv749 = phi i64 [ %indvars.iv.next750, %for.body165 ], [ 0, %if.then158 ]
  %41 = phi i32 [ %44, %for.body165 ], [ %40, %if.then158 ]
  %42 = trunc i64 %indvars.iv749 to i32
  %conv166 = sitofp i32 %42 to float
  %43 = load i32* %nr90, align 4, !tbaa !0
  %conv168 = sitofp i32 %43 to float
  %conv170 = sitofp i32 %41 to float
  %div = fdiv float %conv168, %conv170
  %mul171 = fmul float %conv166, %div
  %conv172 = fptosi float %mul171 to i32
  %arrayidx174 = getelementptr inbounds i32* %39, i64 %indvars.iv749
  store i32 %conv172, i32* %arrayidx174, align 4, !tbaa !0
  %indvars.iv.next750 = add i64 %indvars.iv749, 1
  %44 = load i32* %nnodes, align 4, !tbaa !0
  %cmp163 = icmp slt i32 %42, %44
  br i1 %cmp163, label %for.body165, label %for.end177

for.end177:                                       ; preds = %for.body165, %if.then158
  %nodeid = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 0
  %45 = load i32* %nodeid, align 4, !tbaa !0
  %idxprom178 = sext i32 %45 to i64
  %arrayidx179 = getelementptr inbounds i32* %39, i64 %idxprom178
  %46 = load i32* %arrayidx179, align 4, !tbaa !0
  %cg0 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 35
  store i32 %46, i32* %cg0, align 4, !tbaa !0
  %47 = load i32* %nodeid, align 4, !tbaa !0
  %add181 = add nsw i32 %47, 1
  %idxprom182 = sext i32 %add181 to i64
  %arrayidx183 = getelementptr inbounds i32* %39, i64 %idxprom182
  %48 = load i32* %arrayidx183, align 4, !tbaa !0
  %sub185 = sub nsw i32 %48, %46
  %hcg = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 36
  store i32 %sub185, i32* %hcg, align 4, !tbaa !0
  %49 = load %struct._IO_FILE** @debug, align 8, !tbaa !3
  %tobool186 = icmp eq %struct._IO_FILE* %49, null
  br i1 %tobool186, label %if.end195, label %if.then187

if.then187:                                       ; preds = %for.end177
  %50 = load i32* %nodeid, align 4, !tbaa !0
  %call193 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %49, i8* getelementptr inbounds ([76 x i8]* @.str11, i64 0, i64 0), i32 %46, i32 %48, i32 %50) #8
  br label %if.end195

if.end195:                                        ; preds = %for.end177, %if.end156, %if.then187
  %51 = load i32* %nr90, align 4, !tbaa !0
  %add197 = add nsw i32 %51, 1
  %call198 = call i8* @save_calloc(i8* getelementptr inbounds ([9 x i8]* @.str12, i64 0, i64 0), i8* getelementptr inbounds ([50 x i8]* @.str2, i64 0, i64 0), i32 1757, i32 %add197, i32 4) #8
  %52 = bitcast i8* %call198 to i32*
  store i32* %52, i32** @search_neighbours.cg_index, align 8, !tbaa !3
  %53 = load i32* %nr90, align 4, !tbaa !0
  %cmp201696 = icmp slt i32 %53, 0
  br i1 %cmp201696, label %for.end208, label %for.body203

for.body203:                                      ; preds = %if.end195, %for.body203
  %indvars.iv747 = phi i64 [ %indvars.iv.next748, %for.body203 ], [ 0, %if.end195 ]
  %arrayidx205 = getelementptr inbounds i32* %52, i64 %indvars.iv747
  %54 = trunc i64 %indvars.iv747 to i32
  store i32 %54, i32* %arrayidx205, align 4, !tbaa !0
  %indvars.iv.next748 = add i64 %indvars.iv747, 1
  %55 = load i32* %nr90, align 4, !tbaa !0
  %cmp201 = icmp slt i32 %54, %55
  br i1 %cmp201, label %for.body203, label %for.end208

for.end208:                                       ; preds = %for.body203, %if.end195
  %tobool209 = icmp eq i32 %0, 0
  br i1 %tobool209, label %if.end214, label %if.then210

if.then210:                                       ; preds = %for.end208
  %call211 = call i8* @save_calloc(i8* getelementptr inbounds ([5 x i8]* @.str13, i64 0, i64 0), i8* getelementptr inbounds ([50 x i8]* @.str2, i64 0, i64 0), i32 1762, i32 1, i32 64) #8
  %56 = bitcast i8* %call211 to %struct.t_grid*
  store %struct.t_grid* %56, %struct.t_grid** @search_neighbours.grid, align 8, !tbaa !3
  %ndelta = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 37
  %57 = load i32* %ndelta, align 4, !tbaa !0
  %rlistlong212 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 2
  %58 = load float* %rlistlong212, align 4, !tbaa !4
  %59 = load i32* %nr90, align 4, !tbaa !0
  call void @init_grid(%struct._IO_FILE* %log, %struct.t_grid* %56, i32 %57, [3 x float]* %box, float %58, i32 %59) #8
  br label %if.end214

if.end214:                                        ; preds = %for.end208, %if.then210
  %ntype = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 63
  %60 = load i32* %ntype, align 4, !tbaa !0
  %call215 = call i8* @save_calloc(i8* getelementptr inbounds ([8 x i8]* @.str14, i64 0, i64 0), i8* getelementptr inbounds ([50 x i8]* @.str2, i64 0, i64 0), i32 1767, i32 %60, i32 4) #8
  %61 = bitcast i8* %call215 to i32*
  store i32* %61, i32** @search_neighbours.bHaveLJ, align 8, !tbaa !3
  %62 = load i32* %ntype, align 4, !tbaa !0
  %cmp218694 = icmp sgt i32 %62, 0
  br i1 %cmp218694, label %for.cond221.preheader.lr.ph, label %for.end307

for.cond221.preheader.lr.ph:                      ; preds = %if.end214
  %bBHAM = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 64
  %nbfp278 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 65
  br label %for.cond221.preheader

for.cond221.preheader:                            ; preds = %for.cond221.preheader.lr.ph, %for.inc305
  %63 = phi i32 [ %62, %for.cond221.preheader.lr.ph ], [ %82, %for.inc305 ]
  %indvars.iv745 = phi i64 [ 0, %for.cond221.preheader.lr.ph ], [ %indvars.iv.next746, %for.inc305 ]
  %cmp223691 = icmp sgt i32 %63, 0
  br i1 %cmp223691, label %for.body225.lr.ph, label %for.inc305

for.body225.lr.ph:                                ; preds = %for.cond221.preheader
  %arrayidx229 = getelementptr inbounds i32* %61, i64 %indvars.iv745
  %.pre763 = load i32* %arrayidx229, align 4, !tbaa !0
  br label %for.body225

for.body225:                                      ; preds = %for.body225.lr.ph, %for.inc302
  %64 = phi i32 [ %.pre763, %for.body225.lr.ph ], [ %lor.ext, %for.inc302 ]
  %65 = phi i32 [ %63, %for.body225.lr.ph ], [ %81, %for.inc302 ]
  %j.1692 = phi i32 [ 0, %for.body225.lr.ph ], [ %inc303, %for.inc302 ]
  %66 = load i32* %bBHAM, align 4, !tbaa !0
  %tobool226 = icmp eq i32 %66, 0
  %tobool230 = icmp ne i32 %64, 0
  br i1 %tobool226, label %if.else268, label %if.then227

if.then227:                                       ; preds = %for.body225
  br i1 %tobool230, label %for.inc302, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then227
  %67 = trunc i64 %indvars.iv745 to i32
  %mul232 = mul nsw i32 %65, %67
  %add233 = add nsw i32 %mul232, %j.1692
  %mul234 = mul nsw i32 %add233, 3
  %add235 = add nsw i32 %mul234, 1
  %idxprom236 = sext i32 %add235 to i64
  %68 = load float** %nbfp278, align 8, !tbaa !3
  %arrayidx237 = getelementptr inbounds float* %68, i64 %idxprom236
  %69 = load float* %arrayidx237, align 4, !tbaa !4
  %fabsf532 = call float @fabsf(float %69) #9
  %70 = fpext float %fabsf532 to double
  %cmp240 = fcmp ogt double %70, 1.200000e-38
  br i1 %cmp240, label %for.inc302, label %lor.lhs.false242

lor.lhs.false242:                                 ; preds = %lor.lhs.false
  %add247 = add nsw i32 %mul234, 2
  %idxprom248 = sext i32 %add247 to i64
  %arrayidx250 = getelementptr inbounds float* %68, i64 %idxprom248
  %71 = load float* %arrayidx250, align 4, !tbaa !4
  %fabsf533 = call float @fabsf(float %71) #9
  %72 = fpext float %fabsf533 to double
  %cmp253 = fcmp ogt double %72, 1.200000e-38
  br i1 %cmp253, label %for.inc302, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false242
  %idxprom259 = sext i32 %mul234 to i64
  %arrayidx261 = getelementptr inbounds float* %68, i64 %idxprom259
  %73 = load float* %arrayidx261, align 4, !tbaa !4
  %fabsf534 = call float @fabsf(float %73) #9
  %74 = fpext float %fabsf534 to double
  %cmp264 = fcmp ogt double %74, 1.200000e-38
  br label %for.inc302

if.else268:                                       ; preds = %for.body225
  br i1 %tobool230, label %for.inc302, label %lor.lhs.false272

lor.lhs.false272:                                 ; preds = %if.else268
  %75 = trunc i64 %indvars.iv745 to i32
  %mul274 = mul nsw i32 %65, %75
  %add275 = add nsw i32 %mul274, %j.1692
  %mul276 = shl nsw i32 %add275, 1
  %idxprom277 = sext i32 %mul276 to i64
  %76 = load float** %nbfp278, align 8, !tbaa !3
  %arrayidx279 = getelementptr inbounds float* %76, i64 %idxprom277
  %77 = load float* %arrayidx279, align 4, !tbaa !4
  %fabsf = call float @fabsf(float %77) #9
  %78 = fpext float %fabsf to double
  %cmp282 = fcmp ogt double %78, 1.200000e-38
  br i1 %cmp282, label %for.inc302, label %lor.rhs284

lor.rhs284:                                       ; preds = %lor.lhs.false272
  %add289530 = or i32 %mul276, 1
  %idxprom290 = sext i32 %add289530 to i64
  %arrayidx292 = getelementptr inbounds float* %76, i64 %idxprom290
  %79 = load float* %arrayidx292, align 4, !tbaa !4
  %fabsf531 = call float @fabsf(float %79) #9
  %80 = fpext float %fabsf531 to double
  %cmp295 = fcmp ogt double %80, 1.200000e-38
  br label %for.inc302

for.inc302:                                       ; preds = %if.then227, %lor.lhs.false, %lor.lhs.false242, %lor.rhs, %if.else268, %lor.lhs.false272, %lor.rhs284
  %.sink = phi i1 [ true, %lor.lhs.false272 ], [ true, %if.else268 ], [ %cmp295, %lor.rhs284 ], [ true, %lor.lhs.false242 ], [ true, %lor.lhs.false ], [ true, %if.then227 ], [ %cmp264, %lor.rhs ]
  %lor.ext = zext i1 %.sink to i32
  store i32 %lor.ext, i32* %arrayidx229, align 4, !tbaa !0
  %inc303 = add nsw i32 %j.1692, 1
  %81 = load i32* %ntype, align 4, !tbaa !0
  %cmp223 = icmp slt i32 %inc303, %81
  br i1 %cmp223, label %for.body225, label %for.inc305

for.inc305:                                       ; preds = %for.inc302, %for.cond221.preheader
  %82 = phi i32 [ %63, %for.cond221.preheader ], [ %81, %for.inc302 ]
  %indvars.iv.next746 = add i64 %indvars.iv745, 1
  %83 = trunc i64 %indvars.iv.next746 to i32
  %cmp218 = icmp slt i32 %83, %82
  br i1 %cmp218, label %for.cond221.preheader, label %for.end307

for.end307:                                       ; preds = %for.inc305, %if.end214
  %.lcssa693 = phi i32 [ %62, %if.end214 ], [ %82, %for.inc305 ]
  %84 = load %struct._IO_FILE** @debug, align 8, !tbaa !3
  %tobool308 = icmp eq %struct._IO_FILE* %84, null
  br i1 %tobool308, label %if.end311, label %if.then309

if.then309:                                       ; preds = %for.end307
  call void @pr_ivec(%struct._IO_FILE* %84, i32 0, i8* getelementptr inbounds ([8 x i8]* @.str14, i64 0, i64 0), i32* %61, i32 %.lcssa693) #8
  br label %if.end311

if.end311:                                        ; preds = %for.end307, %if.then309
  store i1 true, i1* @search_neighbours.bFirst, align 1
  br label %for.body.i607

for.body.i607:                                    ; preds = %if.end311, %if.end86, %reset_nblist.exit
  %indvars.iv.i602 = phi i64 [ %indvars.iv.next.i604, %reset_nblist.exit ], [ 0, %if.end86 ], [ 0, %if.end311 ]
  %nri.i = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 49, i64 %indvars.iv.i602, i32 1
  store i32 0, i32* %nri.i, align 4, !tbaa !0
  %nrj.i = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 49, i64 %indvars.iv.i602, i32 3
  store i32 0, i32* %nrj.i, align 4, !tbaa !0
  %maxlen.i = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 49, i64 %indvars.iv.i602, i32 5
  store i32 0, i32* %maxlen.i, align 4, !tbaa !0
  %maxnri.i = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 49, i64 %indvars.iv.i602, i32 2
  %85 = load i32* %maxnri.i, align 4, !tbaa !0
  %cmp.i609 = icmp sgt i32 %85, 0
  br i1 %cmp.i609, label %if.then.i610, label %reset_nblist.exit

if.then.i610:                                     ; preds = %for.body.i607
  %gid.i = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 49, i64 %indvars.iv.i602, i32 8
  %86 = load i32** %gid.i, align 8, !tbaa !3
  store i32 -1, i32* %86, align 4, !tbaa !0
  %maxnrj.i = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 49, i64 %indvars.iv.i602, i32 4
  %87 = load i32* %maxnrj.i, align 4, !tbaa !0
  %cmp1.i = icmp sgt i32 %87, 1
  br i1 %cmp1.i, label %if.then2.i, label %reset_nblist.exit

if.then2.i:                                       ; preds = %if.then.i610
  %jindex.i = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 49, i64 %indvars.iv.i602, i32 10
  %88 = load i32** %jindex.i, align 8, !tbaa !3
  store i32 0, i32* %88, align 4, !tbaa !0
  %arrayidx5.i611 = getelementptr inbounds i32* %88, i64 1
  store i32 0, i32* %arrayidx5.i611, align 4, !tbaa !0
  br label %reset_nblist.exit

reset_nblist.exit:                                ; preds = %for.body.i607, %if.then.i610, %if.then2.i
  %indvars.iv.next.i604 = add i64 %indvars.iv.i602, 1
  %lftr.wideiv742 = trunc i64 %indvars.iv.next.i604 to i32
  %exitcond743 = icmp eq i32 %lftr.wideiv742, 13
  br i1 %exitcond743, label %reset_neighbor_list.exit, label %for.body.i607

reset_neighbor_list.exit:                         ; preds = %reset_nblist.exit
  %tobool313 = icmp eq i32 %0, 0
  br i1 %tobool313, label %if.else352, label %if.then314

if.then314:                                       ; preds = %reset_neighbor_list.exit
  %89 = load %struct.t_grid** @search_neighbours.grid, align 8, !tbaa !3
  %rlistlong315 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 2
  %90 = load float* %rlistlong315, align 4, !tbaa !4
  call void @grid_first(%struct._IO_FILE* %log, %struct.t_grid* %89, [3 x float]* %box, float %90) #8
  %nr319 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 3, i64 0, i32 1
  %91 = load i32* %nr319, align 4, !tbaa !0
  %bDomDecomp320 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 44
  %92 = load i32* %bDomDecomp320, align 4, !tbaa !0
  %tobool321 = icmp eq i32 %92, 0
  br i1 %tobool321, label %if.then314.if.end323_crit_edge, label %if.then322

if.then314.if.end323_crit_edge:                   ; preds = %if.then314
  %cg_cm328.pre = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 47
  %nnodes329.pre = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 1
  br label %if.end323

if.then322:                                       ; preds = %if.then314
  %93 = load i32** @search_neighbours.cg_index, align 8, !tbaa !3
  %94 = load i32** @search_neighbours.slab_index, align 8, !tbaa !3
  %cg_cm = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 47
  %95 = load [3 x float]** %cg_cm, align 8, !tbaa !3
  %Dimension = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 42
  %96 = load i32* %Dimension, align 4, !tbaa !0
  %nnodes.i = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 1
  %97 = load i32* %nnodes.i, align 4, !tbaa !0
  %idxprom.i = sext i32 %97 to i64
  %arrayidx.i612 = getelementptr inbounds i32* %94, i64 %idxprom.i
  %98 = load i32* %arrayidx.i612, align 4, !tbaa !0
  store [3 x float]* %95, [3 x float]** @sptr, align 8, !tbaa !3
  store i32 %96, i32* @sdim, align 4, !tbaa !0
  %99 = bitcast i32* %93 to i8*
  %conv.i = sext i32 %98 to i64
  call void @qsort(i8* %99, i64 %conv.i, i64 4, i32 (i8*, i8*)* @rv_comp) #8
  %100 = load %struct._IO_FILE** @debug, align 8, !tbaa !3
  %tobool.i = icmp eq %struct._IO_FILE* %100, null
  br i1 %tobool.i, label %sort_charge_groups.exit, label %if.then.i614

if.then.i614:                                     ; preds = %if.then322
  %call.i613 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %100, i8* getelementptr inbounds ([45 x i8]* @.str41, i64 0, i64 0), i32 %96) #8
  %101 = load %struct._IO_FILE** @debug, align 8, !tbaa !3
  %102 = call i64 @fwrite(i8* getelementptr inbounds ([30 x i8]* @.str42, i64 0, i64 0), i64 29, i64 1, %struct._IO_FILE* %101) #6
  %cmp29.i = icmp sgt i32 %98, 0
  br i1 %cmp29.i, label %for.body.i621, label %sort_charge_groups.exit

for.body.i621:                                    ; preds = %if.then.i614, %for.body.i621
  %indvars.iv.i615 = phi i64 [ %indvars.iv.next.i618, %for.body.i621 ], [ 0, %if.then.i614 ]
  %arrayidx4.i616 = getelementptr inbounds i32* %93, i64 %indvars.iv.i615
  %103 = load i32* %arrayidx4.i616, align 4, !tbaa !0
  %104 = load %struct._IO_FILE** @debug, align 8, !tbaa !3
  %idxprom5.i = sext i32 %103 to i64
  %arrayidx7.i617 = getelementptr inbounds [3 x float]* %95, i64 %idxprom5.i, i64 0
  %105 = load float* %arrayidx7.i617, align 4, !tbaa !4
  %conv8.i = fpext float %105 to double
  %arrayidx11.i = getelementptr inbounds [3 x float]* %95, i64 %idxprom5.i, i64 1
  %106 = load float* %arrayidx11.i, align 4, !tbaa !4
  %conv12.i = fpext float %106 to double
  %arrayidx15.i = getelementptr inbounds [3 x float]* %95, i64 %idxprom5.i, i64 2
  %107 = load float* %arrayidx15.i, align 4, !tbaa !4
  %conv16.i = fpext float %107 to double
  %call17.i = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %104, i8* getelementptr inbounds ([23 x i8]* @.str43, i64 0, i64 0), i32 %103, double %conv8.i, double %conv12.i, double %conv16.i) #8
  %indvars.iv.next.i618 = add i64 %indvars.iv.i615, 1
  %lftr.wideiv740 = trunc i64 %indvars.iv.next.i618 to i32
  %exitcond741 = icmp eq i32 %lftr.wideiv740, %98
  br i1 %exitcond741, label %sort_charge_groups.exit, label %for.body.i621

sort_charge_groups.exit:                          ; preds = %for.body.i621, %if.then322, %if.then.i614
  store [3 x float]* null, [3 x float]** @sptr, align 8, !tbaa !3
  store i32 -1, i32* @sdim, align 4, !tbaa !0
  %.pre = load i32* %bDomDecomp320, align 4, !tbaa !0
  %.pre761 = load i32* %nr319, align 4, !tbaa !0
  br label %if.end323

if.end323:                                        ; preds = %if.then314.if.end323_crit_edge, %sort_charge_groups.exit
  %nnodes329.pre-phi = phi i32* [ %nnodes329.pre, %if.then314.if.end323_crit_edge ], [ %nnodes.i, %sort_charge_groups.exit ]
  %cg_cm328.pre-phi = phi [3 x float]** [ %cg_cm328.pre, %if.then314.if.end323_crit_edge ], [ %cg_cm, %sort_charge_groups.exit ]
  %108 = phi i32 [ %91, %if.then314.if.end323_crit_edge ], [ %.pre761, %sort_charge_groups.exit ]
  %109 = phi i32 [ 0, %if.then314.if.end323_crit_edge ], [ %.pre, %sort_charge_groups.exit ]
  %110 = load i32** @search_neighbours.cg_index, align 8, !tbaa !3
  %111 = load %struct.t_grid** @search_neighbours.grid, align 8, !tbaa !3
  %cg0326 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 35
  %112 = load i32* %cg0326, align 4, !tbaa !0
  %hcg327 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 36
  %113 = load i32* %hcg327, align 4, !tbaa !0
  %114 = load [3 x float]** %cg_cm328.pre-phi, align 8, !tbaa !3
  call void @fill_grid(%struct._IO_FILE* %log, i32 %109, i32* %110, %struct.t_grid* %111, [3 x float]* %box, i32 %108, i32 %112, i32 %113, [3 x float]* %114) #8
  %115 = load i32* %nnodes329.pre-phi, align 4, !tbaa !0
  %cmp330 = icmp sgt i32 %115, 1
  br i1 %cmp330, label %if.then335, label %lor.lhs.false332

lor.lhs.false332:                                 ; preds = %if.end323
  %nthreads = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 5
  %116 = load i32* %nthreads, align 4, !tbaa !0
  %cmp333 = icmp sgt i32 %116, 1
  br i1 %cmp333, label %if.then335, label %if.end338

if.then335:                                       ; preds = %lor.lhs.false332, %if.end323
  %117 = load i32* %bDomDecomp320, align 4, !tbaa !0
  %118 = load i32** @search_neighbours.cg_index, align 8, !tbaa !3
  %119 = load %struct.t_grid** @search_neighbours.grid, align 8, !tbaa !3
  %arraydecay337 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 10, i64 0
  call void @mv_grid(%struct.t_commrec* %cr, i32 %117, i32* %118, %struct.t_grid* %119, i32* %arraydecay337) #8
  br label %if.end338

if.end338:                                        ; preds = %if.then335, %lor.lhs.false332
  %120 = load i32* %bDomDecomp320, align 4, !tbaa !0
  %121 = load i32** @search_neighbours.cg_index, align 8, !tbaa !3
  %122 = load %struct.t_grid** @search_neighbours.grid, align 8, !tbaa !3
  %123 = load i32* %nr319, align 4, !tbaa !0
  call void @calc_elemnr(%struct._IO_FILE* %log, i32 %120, i32* %121, %struct.t_grid* %122, i32 0, i32 %91, i32 %123) #8
  %124 = load %struct.t_grid** @search_neighbours.grid, align 8, !tbaa !3
  call void @calc_ptrs(%struct.t_grid* %124) #8
  %125 = load i32* %bDomDecomp320, align 4, !tbaa !0
  %126 = load i32** @search_neighbours.cg_index, align 8, !tbaa !3
  %127 = load %struct.t_grid** @search_neighbours.grid, align 8, !tbaa !3
  %128 = load i32* %nr319, align 4, !tbaa !0
  call void @grid_last(%struct._IO_FILE* %log, i32 %125, i32* %126, %struct.t_grid* %127, i32 0, i32 %91, i32 %128) #8
  %129 = load %struct._IO_FILE** @debug, align 8, !tbaa !3
  %tobool343 = icmp eq %struct._IO_FILE* %129, null
  br i1 %tobool343, label %if.then349, label %if.then344

if.then344:                                       ; preds = %if.end338
  %130 = load %struct.t_grid** @search_neighbours.grid, align 8, !tbaa !3
  call void @check_grid(%struct._IO_FILE* %129, %struct.t_grid* %130) #8
  %131 = load %struct._IO_FILE** @debug, align 8, !tbaa !3
  %132 = load %struct.t_grid** @search_neighbours.grid, align 8, !tbaa !3
  %133 = load i32* %bDomDecomp320, align 4, !tbaa !0
  %134 = load i32** @search_neighbours.cg_index, align 8, !tbaa !3
  call void @print_grid(%struct._IO_FILE* %131, %struct.t_grid* %132, i32 %133, i32* %134) #8
  br label %if.then349

if.then349:                                       ; preds = %if.then344, %if.end338
  %135 = load i32** @search_neighbours.cg_index, align 8, !tbaa !3
  %arraydecay350 = getelementptr inbounds [3 x float]* %box_size, i64 0, i64 0
  %136 = load %struct.t_grid** @search_neighbours.grid, align 8, !tbaa !3
  %137 = load i64** @search_neighbours.bexcl, align 8, !tbaa !3
  %138 = load i32** @search_neighbours.bExcludeAlleg, align 8, !tbaa !3
  %139 = load i32** @search_neighbours.bHaveLJ, align 8, !tbaa !3
  %cENER.i623 = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 15
  %140 = load i16** %cENER.i623, align 8, !tbaa !3
  %141 = load i32* %nr319, align 4, !tbaa !0
  %rlist.i625 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 1
  %142 = load float* %rlist.i625, align 4, !tbaa !4
  %mul.i626 = fmul float %142, %142
  %bTwinRange.i = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 51
  %143 = load i32* %bTwinRange.i, align 4, !tbaa !0
  %tobool.i627 = icmp eq i32 %143, 0
  br i1 %tobool.i627, label %if.end.i632, label %if.then.i629

if.then.i629:                                     ; preds = %if.then349
  %rvdw.i = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 26
  %144 = load float* %rvdw.i, align 4, !tbaa !4
  %mul4.i628 = fmul float %144, %144
  %rcoulomb.i = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 23
  %145 = load float* %rcoulomb.i, align 4, !tbaa !4
  %mul6.i = fmul float %145, %145
  br label %if.end.i632

if.end.i632:                                      ; preds = %if.then.i629, %if.then349
  %rvdw2.0.i = phi float [ %mul4.i628, %if.then.i629 ], [ %mul.i626, %if.then349 ]
  %rcoul2.0.i = phi float [ %mul6.i, %if.then.i629 ], [ %mul.i626, %if.then349 ]
  %cmp.i630 = fcmp olt float %rvdw2.0.i, %rcoul2.0.i
  %cond.i = select i1 %cmp.i630, float %rvdw2.0.i, float %rcoul2.0.i
  %cmp7.i = fcmp ogt float %rvdw2.0.i, %rcoul2.0.i
  %cond11.i = select i1 %cmp7.i, float %rvdw2.0.i, float %rcoul2.0.i
  %cmp12.i = fcmp olt float %mul.i626, %cond.i
  %cmp13.i = fcmp olt float %cond.i, %cond11.i
  %conv16.i631 = zext i1 %cmp7.i to i32
  %lnot.ext.i = xor i32 %conv16.i631, 1
  %146 = load i32*** @ns5_core.nl_sr, align 8, !tbaa !3
  %cmp18.i = icmp eq i32** %146, null
  br i1 %cmp18.i, label %if.then20.i, label %if.end55.i

if.then20.i:                                      ; preds = %if.end.i632
  %call.i633 = call i8* @save_calloc(i8* getelementptr inbounds ([6 x i8]* @.str27, i64 0, i64 0), i8* getelementptr inbounds ([50 x i8]* @.str2, i64 0, i64 0), i32 1341, i32 %1, i32 8) #8
  %147 = bitcast i8* %call.i633 to i32**
  store i32** %147, i32*** @ns5_core.nl_sr, align 8, !tbaa !3
  %call21.i = call i8* @save_calloc(i8* getelementptr inbounds ([4 x i8]* @.str28, i64 0, i64 0), i8* getelementptr inbounds ([50 x i8]* @.str2, i64 0, i64 0), i32 1343, i32 %1, i32 4) #8
  %148 = bitcast i8* %call21.i to i32*
  store i32* %148, i32** @ns5_core.nsr, align 8, !tbaa !3
  %call22.i = call i8* @save_calloc(i8* getelementptr inbounds ([8 x i8]* @.str29, i64 0, i64 0), i8* getelementptr inbounds ([50 x i8]* @.str2, i64 0, i64 0), i32 1344, i32 %1, i32 4) #8
  %149 = bitcast i8* %call22.i to i32*
  store i32* %149, i32** @ns5_core.nlr_ljc, align 8, !tbaa !3
  %call23.i = call i8* @save_calloc(i8* getelementptr inbounds ([8 x i8]* @.str30, i64 0, i64 0), i8* getelementptr inbounds ([50 x i8]* @.str2, i64 0, i64 0), i32 1345, i32 %1, i32 4) #8
  %150 = bitcast i8* %call23.i to i32*
  store i32* %150, i32** @ns5_core.nlr_one, align 8, !tbaa !3
  br i1 %cmp12.i, label %if.then25.i, label %if.end27.i

if.then25.i:                                      ; preds = %if.then20.i
  %call26.i = call i8* @save_calloc(i8* getelementptr inbounds ([10 x i8]* @.str31, i64 0, i64 0), i8* getelementptr inbounds ([50 x i8]* @.str2, i64 0, i64 0), i32 1349, i32 %1, i32 8) #8
  %151 = bitcast i8* %call26.i to i32**
  store i32** %151, i32*** @ns5_core.nl_lr_ljc, align 8, !tbaa !3
  br label %if.end27.i

if.end27.i:                                       ; preds = %if.then25.i, %if.then20.i
  br i1 %cmp13.i, label %if.then29.i, label %for.cond.preheader.i

if.then29.i:                                      ; preds = %if.end27.i
  %call30.i = call i8* @save_calloc(i8* getelementptr inbounds ([10 x i8]* @.str32, i64 0, i64 0), i8* getelementptr inbounds ([50 x i8]* @.str2, i64 0, i64 0), i32 1353, i32 %1, i32 8) #8
  %152 = bitcast i8* %call30.i to i32**
  store i32** %152, i32*** @ns5_core.nl_lr_one, align 8, !tbaa !3
  br label %for.cond.preheader.i

for.cond.preheader.i:                             ; preds = %if.then29.i, %if.end27.i
  %cmp32920.i = icmp sgt i32 %1, 0
  br i1 %cmp32920.i, label %for.body.i634, label %for.end.i

for.body.i634:                                    ; preds = %for.cond.preheader.i, %for.inc.i
  %indvars.iv948.i = phi i64 [ %indvars.iv.next949.i, %for.inc.i ], [ 0, %for.cond.preheader.i ]
  %call34.i = call i8* @save_calloc(i8* getelementptr inbounds ([9 x i8]* @.str33, i64 0, i64 0), i8* getelementptr inbounds ([50 x i8]* @.str2, i64 0, i64 0), i32 1356, i32 1024, i32 4) #8
  %153 = bitcast i8* %call34.i to i32*
  %154 = load i32*** @ns5_core.nl_sr, align 8, !tbaa !3
  %arrayidx35.i = getelementptr inbounds i32** %154, i64 %indvars.iv948.i
  store i32* %153, i32** %arrayidx35.i, align 8, !tbaa !3
  br i1 %cmp12.i, label %if.then37.i, label %if.end41.i

if.then37.i:                                      ; preds = %for.body.i634
  %call38.i = call i8* @save_calloc(i8* getelementptr inbounds ([13 x i8]* @.str34, i64 0, i64 0), i8* getelementptr inbounds ([50 x i8]* @.str2, i64 0, i64 0), i32 1358, i32 1024, i32 4) #8
  %155 = bitcast i8* %call38.i to i32*
  %156 = load i32*** @ns5_core.nl_lr_ljc, align 8, !tbaa !3
  %arrayidx40.i = getelementptr inbounds i32** %156, i64 %indvars.iv948.i
  store i32* %155, i32** %arrayidx40.i, align 8, !tbaa !3
  br label %if.end41.i

if.end41.i:                                       ; preds = %if.then37.i, %for.body.i634
  br i1 %cmp13.i, label %if.then43.i, label %for.inc.i

if.then43.i:                                      ; preds = %if.end41.i
  %call44.i = call i8* @save_calloc(i8* getelementptr inbounds ([13 x i8]* @.str35, i64 0, i64 0), i8* getelementptr inbounds ([50 x i8]* @.str2, i64 0, i64 0), i32 1360, i32 1024, i32 4) #8
  %157 = bitcast i8* %call44.i to i32*
  %158 = load i32*** @ns5_core.nl_lr_one, align 8, !tbaa !3
  %arrayidx46.i = getelementptr inbounds i32** %158, i64 %indvars.iv948.i
  store i32* %157, i32** %arrayidx46.i, align 8, !tbaa !3
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then43.i, %if.end41.i
  %indvars.iv.next949.i = add i64 %indvars.iv948.i, 1
  %lftr.wideiv722 = trunc i64 %indvars.iv.next949.i to i32
  %exitcond723 = icmp eq i32 %lftr.wideiv722, %1
  br i1 %exitcond723, label %for.end.i, label %for.body.i634

for.end.i:                                        ; preds = %for.inc.i, %for.cond.preheader.i
  %159 = load %struct._IO_FILE** @debug, align 8, !tbaa !3
  %tobool48.i = icmp eq %struct._IO_FILE* %159, null
  br i1 %tobool48.i, label %if.end55.i, label %if.then49.i

if.then49.i:                                      ; preds = %for.end.i
  %conv50.i635 = fpext float %mul.i626 to double
  %conv51.i = fpext float %rvdw2.0.i to double
  %conv52.i = fpext float %rcoul2.0.i to double
  %call53.i = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %159, i8* getelementptr inbounds ([52 x i8]* @.str36, i64 0, i64 0), double %conv50.i635, double %conv51.i, double %conv52.i) #8
  br label %if.end55.i

if.end55.i:                                       ; preds = %if.then49.i, %for.end.i, %if.end.i632
  %160 = load [3 x float]** %cg_cm328.pre-phi, align 8, !tbaa !3
  %nrx.i = getelementptr inbounds %struct.t_grid* %136, i64 0, i32 1
  %161 = load i32* %nrx.i, align 4, !tbaa !0
  %nry.i = getelementptr inbounds %struct.t_grid* %136, i64 0, i32 2
  %162 = load i32* %nry.i, align 4, !tbaa !0
  %nrz.i = getelementptr inbounds %struct.t_grid* %136, i64 0, i32 3
  %163 = load i32* %nrz.i, align 4, !tbaa !0
  %a.i = getelementptr inbounds %struct.t_grid* %136, i64 0, i32 11
  %164 = load i32** %a.i, align 8, !tbaa !3
  %index.i637 = getelementptr inbounds %struct.t_grid* %136, i64 0, i32 9
  %165 = load i32** %index.i637, align 8, !tbaa !3
  %nra.i = getelementptr inbounds %struct.t_grid* %136, i64 0, i32 10
  %166 = load i32** %nra.i, align 8, !tbaa !3
  %167 = load float** @ns5_core.dcx2, align 8, !tbaa !3
  %cmp56.i = icmp eq float* %167, null
  br i1 %cmp56.i, label %if.then58.i, label %if.end65.i

if.then58.i:                                      ; preds = %if.end55.i
  %mul59.i = shl nsw i32 %161, 1
  %call60.i638 = call i8* @save_calloc(i8* getelementptr inbounds ([5 x i8]* @.str37, i64 0, i64 0), i8* getelementptr inbounds ([50 x i8]* @.str2, i64 0, i64 0), i32 1379, i32 %mul59.i, i32 4) #8
  %168 = bitcast i8* %call60.i638 to float*
  store float* %168, float** @ns5_core.dcx2, align 8, !tbaa !3
  %mul61.i = shl nsw i32 %162, 1
  %call62.i = call i8* @save_calloc(i8* getelementptr inbounds ([5 x i8]* @.str38, i64 0, i64 0), i8* getelementptr inbounds ([50 x i8]* @.str2, i64 0, i64 0), i32 1380, i32 %mul61.i, i32 4) #8
  %169 = bitcast i8* %call62.i to float*
  store float* %169, float** @ns5_core.dcy2, align 8, !tbaa !3
  %mul63.i = shl nsw i32 %163, 1
  %call64.i = call i8* @save_calloc(i8* getelementptr inbounds ([5 x i8]* @.str39, i64 0, i64 0), i8* getelementptr inbounds ([50 x i8]* @.str2, i64 0, i64 0), i32 1381, i32 %mul63.i, i32 4) #8
  %170 = bitcast i8* %call64.i to float*
  store float* %170, float** @ns5_core.dcz2, align 8, !tbaa !3
  %.pre.i = load i32* %nrx.i, align 4, !tbaa !0
  %.pre952.i = load i32* %nry.i, align 4, !tbaa !0
  %.pre953.i = load i32* %nrz.i, align 4, !tbaa !0
  br label %if.end65.i

if.end65.i:                                       ; preds = %if.then58.i, %if.end55.i
  %171 = phi i32 [ %.pre953.i, %if.then58.i ], [ %163, %if.end55.i ]
  %172 = phi i32 [ %.pre952.i, %if.then58.i ], [ %162, %if.end55.i ]
  %173 = phi i32 [ %.pre.i, %if.then58.i ], [ %161, %if.end55.i ]
  %arrayidx67.i = getelementptr inbounds [3 x float]* %box, i64 0, i64 0
  %174 = load float* %arrayidx67.i, align 4, !tbaa !4
  %conv69.i = sitofp i32 %173 to float
  %div.i = fdiv float %174, %conv69.i
  %arrayidx71.i = getelementptr inbounds [3 x float]* %box, i64 1, i64 1
  %175 = load float* %arrayidx71.i, align 4, !tbaa !4
  %conv73.i = sitofp i32 %172 to float
  %div74.i = fdiv float %175, %conv73.i
  %arrayidx76.i = getelementptr inbounds [3 x float]* %box, i64 2, i64 2
  %176 = load float* %arrayidx76.i, align 4, !tbaa !4
  %conv78.i = sitofp i32 %171 to float
  %div79.i = fdiv float %176, %conv78.i
  %div80.i = fdiv float 1.000000e+00, %div.i
  %div81.i = fdiv float 1.000000e+00, %div74.i
  %div82.i = fdiv float 1.000000e+00, %div79.i
  %177 = load i32* %cg0326, align 4, !tbaa !0
  %178 = load i32* %hcg327, align 4, !tbaa !0
  %cmp84913.i = icmp slt i32 %177, %178
  br i1 %cmp84913.i, label %for.body86.lr.ph.i, label %for.cond435.preheader.i

for.body86.lr.ph.i:                               ; preds = %if.end65.i
  %eg_excl.i641 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 66
  %index99.i = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 3, i64 0, i32 2
  %excl.i = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 2, i32 9
  %conv.i.i642 = sitofp i32 %163 to float
  %arrayidx143.i = getelementptr inbounds [3 x float]* %box, i64 2, i64 1
  %conv.i775.i = sitofp i32 %162 to float
  %arrayidx164.i = getelementptr inbounds [3 x float]* %box, i64 1, i64 0
  %arrayidx169.i = getelementptr inbounds [3 x float]* %box, i64 2, i64 0
  %conv.i823.i = sitofp i32 %161 to float
  %cmp184885.i = icmp sgt i32 %1, 0
  %sub10.i832.i = add nsw i32 %161, -1
  %sub10.i784.i = add nsw i32 %162, -1
  %sub10.i.i = add nsw i32 %163, -1
  %179 = sext i32 %177 to i64
  br label %for.body86.i

for.cond435.preheader.i:                          ; preds = %for.inc432.i, %if.end65.i
  %shift.0.lcssa.i = phi i32 [ -1, %if.end65.i ], [ %shift.7.i, %for.inc432.i ]
  %nns.0.lcssa.i = phi i32 [ 0, %if.end65.i ], [ %nns.14.i, %for.inc432.i ]
  %icg.0.lcssa.i = phi i32 [ -1, %if.end65.i ], [ %180, %for.inc432.i ]
  %cmp436878.i = icmp sgt i32 %1, 0
  br i1 %cmp436878.i, label %for.body438.i, label %for.body.i773.i

for.body86.i:                                     ; preds = %for.inc432.i, %for.body86.lr.ph.i
  %indvars.iv946.i = phi i64 [ %179, %for.body86.lr.ph.i ], [ %indvars.iv.next947.i, %for.inc432.i ]
  %shift.0916.i = phi i32 [ -1, %for.body86.lr.ph.i ], [ %shift.7.i, %for.inc432.i ]
  %nns.0915.i = phi i32 [ 0, %for.body86.lr.ph.i ], [ %nns.14.i, %for.inc432.i ]
  %arrayidx88.i = getelementptr inbounds i32* %135, i64 %indvars.iv946.i
  %180 = load i32* %arrayidx88.i, align 4, !tbaa !0
  %181 = trunc i64 %indvars.iv946.i to i32
  %cmp89.i = icmp eq i32 %180, %181
  br i1 %cmp89.i, label %if.end92.i, label %if.then91.i

if.then91.i:                                      ; preds = %for.body86.i
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([38 x i8]* @.str40, i64 0, i64 0), i32 %180, i32 %181, i8* getelementptr inbounds ([50 x i8]* @.str2, i64 0, i64 0), i32 1408) #8
  br label %if.end92.i

if.end92.i:                                       ; preds = %if.then91.i, %for.body86.i
  %idxprom93.i = sext i32 %180 to i64
  %arrayidx94.i = getelementptr inbounds i32* %138, i64 %idxprom93.i
  %182 = load i32* %arrayidx94.i, align 4, !tbaa !0
  %tobool95.i = icmp eq i32 %182, 0
  br i1 %tobool95.i, label %if.end97.i, label %for.inc432.i

if.end97.i:                                       ; preds = %if.end92.i
  %183 = load i32** %eg_excl.i641, align 8, !tbaa !3
  %184 = load i32** %index99.i, align 8, !tbaa !3
  %arrayidx100.i = getelementptr inbounds i32* %184, i64 %idxprom93.i
  %185 = load i32* %arrayidx100.i, align 4, !tbaa !0
  %idxprom101.i = sext i32 %185 to i64
  %arrayidx102.i643 = getelementptr inbounds i16* %140, i64 %idxprom101.i
  %186 = load i16* %arrayidx102.i643, align 2, !tbaa !5
  %conv103.i = zext i16 %186 to i32
  %mul104.i = mul nsw i32 %conv103.i, %1
  %idx.ext.i644 = sext i32 %mul104.i to i64
  %add.i645 = add nsw i32 %180, 1
  %idxprom108.i = sext i32 %add.i645 to i64
  %arrayidx110.i = getelementptr inbounds i32* %184, i64 %idxprom108.i
  %187 = load i32* %arrayidx110.i, align 4, !tbaa !0
  call fastcc void @setexcl(i32 %185, i32 %187, %struct.t_block* %excl.i, i32 1, i64* %137) #8
  %call111.i = call i32 @calc_naaj(i32 %180, i32 %141) #8
  %add112.i = add nsw i32 %call111.i, %180
  %sub.i = sub nsw i32 %add112.i, %141
  %arrayidx119.i = getelementptr inbounds [3 x float]* %160, i64 %idxprom93.i, i64 2
  %arrayidx135.i = getelementptr inbounds [3 x float]* %160, i64 %idxprom93.i, i64 1
  %arrayidx156.i = getelementptr inbounds [3 x float]* %160, i64 %idxprom93.i, i64 0
  br label %for.body116.i

for.body116.i:                                    ; preds = %for.inc420.i, %if.end97.i
  %tz.0912.i = phi i32 [ -1, %if.end97.i ], [ %inc421.i, %for.inc420.i ]
  %shift.1911.i = phi i32 [ %shift.0916.i, %if.end97.i ], [ %shift.6.i, %for.inc420.i ]
  %nns.1910.i = phi i32 [ %nns.0915.i, %if.end97.i ], [ %nns.13.i, %for.inc420.i ]
  %188 = load float* %arrayidx119.i, align 4, !tbaa !4
  %conv120.i = sitofp i32 %tz.0912.i to float
  %189 = load float* %arrayidx76.i, align 4, !tbaa !4
  %mul123.i = fmul float %conv120.i, %189
  %add124.i = fadd float %188, %mul123.i
  %190 = load float** @ns5_core.dcz2, align 8, !tbaa !3
  %mul.i.i646 = fmul float %div82.i, %add124.i
  %add.i.i647 = fadd float %conv.i.i642, %mul.i.i646
  %conv5.i.i = fptosi float %add.i.i647 to i32
  %sub.i.i648 = sub nsw i32 %conv5.i.i, %163
  %cmp.i.i649 = icmp slt i32 %sub.i.i648, 0
  br i1 %cmp.i.i649, label %for.cond29.preheader.i.i, label %if.else.i.i

if.else.i.i:                                      ; preds = %for.body116.i
  %cmp7.i.i = icmp slt i32 %sub.i.i648, %163
  br i1 %cmp7.i.i, label %if.else12.i.i, label %if.end15.i.i

if.else12.i.i:                                    ; preds = %if.else.i.i
  %idxprom.i.i = sext i32 %sub.i.i648 to i64
  %arrayidx.i.i650 = getelementptr inbounds float* %190, i64 %idxprom.i.i
  store float 0.000000e+00, float* %arrayidx.i.i650, align 4, !tbaa !4
  %sub13.i.i = add nsw i32 %sub.i.i648, -1
  %add14.i.i = add nsw i32 %sub.i.i648, 1
  br label %if.end15.i.i

if.end15.i.i:                                     ; preds = %if.else12.i.i, %if.else.i.i
  %191 = phi i32 [ %sub.i.i648, %if.else12.i.i ], [ %163, %if.else.i.i ]
  %192 = phi i32 [ %sub.i.i648, %if.else12.i.i ], [ %sub10.i.i, %if.else.i.i ]
  %xgi0.0.i.i = phi i32 [ %sub13.i.i, %if.else12.i.i ], [ %sub10.i.i, %if.else.i.i ]
  %xgi1.0.i.i = phi i32 [ %add14.i.i, %if.else12.i.i ], [ %163, %if.else.i.i ]
  %cmp1687.i.i = icmp sgt i32 %xgi0.0.i.i, -1
  br i1 %cmp1687.i.i, label %for.body.lr.ph.i.i651, label %for.cond29.preheader.i.i

for.body.lr.ph.i.i651:                            ; preds = %if.end15.i.i
  %193 = sext i32 %xgi0.0.i.i to i64
  br label %for.body.i.i652

for.cond29.preheader.i.i:                         ; preds = %if.end26.i.i, %for.body.i.i652, %if.end15.i.i, %for.body116.i
  %194 = phi i32 [ %191, %if.end15.i.i ], [ 0, %for.body116.i ], [ %200, %if.end26.i.i ], [ %197, %for.body.i.i652 ]
  %195 = phi i32 [ %192, %if.end15.i.i ], [ -1, %for.body116.i ], [ %192, %if.end26.i.i ], [ %192, %for.body.i.i652 ]
  %xgi1.093.i.i = phi i32 [ %xgi1.0.i.i, %if.end15.i.i ], [ 0, %for.body116.i ], [ %xgi1.0.i.i, %if.end26.i.i ], [ %xgi1.0.i.i, %for.body.i.i652 ]
  %cmp3085.i.i = icmp slt i32 %xgi1.093.i.i, %163
  br i1 %cmp3085.i.i, label %for.body32.lr.ph.i.i, label %get_dx.exit.i

for.body32.lr.ph.i.i:                             ; preds = %for.cond29.preheader.i.i
  %196 = sext i32 %xgi1.093.i.i to i64
  br label %for.body32.i.i

for.body.i.i652:                                  ; preds = %if.end26.i.i, %for.body.lr.ph.i.i651
  %197 = phi i32 [ %191, %for.body.lr.ph.i.i651 ], [ %200, %if.end26.i.i ]
  %indvars.iv89.i.i = phi i64 [ %193, %for.body.lr.ph.i.i651 ], [ %indvars.iv.next90.i.i, %if.end26.i.i ]
  %198 = add nsw i64 %indvars.iv89.i.i, 1
  %199 = trunc i64 %198 to i32
  %conv19.i.i = sitofp i32 %199 to float
  %mul20.i.i = fmul float %div79.i, %conv19.i.i
  %sub21.i.i = fsub float %mul20.i.i, %add124.i
  %mul22.i.i = fmul float %sub21.i.i, %sub21.i.i
  %cmp23.i.i = fcmp ult float %mul22.i.i, %rcoul2.0.i
  br i1 %cmp23.i.i, label %if.end26.i.i, label %for.cond29.preheader.i.i

if.end26.i.i:                                     ; preds = %for.body.i.i652
  %200 = trunc i64 %indvars.iv89.i.i to i32
  %arrayidx28.i.i = getelementptr inbounds float* %190, i64 %indvars.iv89.i.i
  store float %mul22.i.i, float* %arrayidx28.i.i, align 4, !tbaa !4
  %indvars.iv.next90.i.i = add i64 %indvars.iv89.i.i, -1
  %cmp16.i.i = icmp sgt i32 %200, 0
  br i1 %cmp16.i.i, label %for.body.i.i652, label %for.cond29.preheader.i.i

for.body32.i.i:                                   ; preds = %if.end40.i.i, %for.body32.lr.ph.i.i
  %201 = phi i32 [ %195, %for.body32.lr.ph.i.i ], [ %202, %if.end40.i.i ]
  %indvars.iv.i.i653 = phi i64 [ %196, %for.body32.lr.ph.i.i ], [ %indvars.iv.next.i.i654, %if.end40.i.i ]
  %202 = trunc i64 %indvars.iv.i.i653 to i32
  %conv33.i.i = sitofp i32 %202 to float
  %mul34.i.i = fmul float %div79.i, %conv33.i.i
  %sub35.i.i = fsub float %mul34.i.i, %add124.i
  %mul36.i.i = fmul float %sub35.i.i, %sub35.i.i
  %cmp37.i.i = fcmp ult float %mul36.i.i, %rcoul2.0.i
  br i1 %cmp37.i.i, label %if.end40.i.i, label %get_dx.exit.i

if.end40.i.i:                                     ; preds = %for.body32.i.i
  %arrayidx42.i.i = getelementptr inbounds float* %190, i64 %indvars.iv.i.i653
  store float %mul36.i.i, float* %arrayidx42.i.i, align 4, !tbaa !4
  %indvars.iv.next.i.i654 = add i64 %indvars.iv.i.i653, 1
  %203 = trunc i64 %indvars.iv.next.i.i654 to i32
  %cmp30.i.i = icmp slt i32 %203, %163
  br i1 %cmp30.i.i, label %for.body32.i.i, label %get_dx.exit.i

get_dx.exit.i:                                    ; preds = %if.end40.i.i, %for.body32.i.i, %for.cond29.preheader.i.i
  %204 = phi i32 [ %195, %for.cond29.preheader.i.i ], [ %202, %if.end40.i.i ], [ %201, %for.body32.i.i ]
  %cmp125.i = icmp sgt i32 %194, %204
  br i1 %cmp125.i, label %for.inc420.i, label %for.cond129.preheader.i

for.cond129.preheader.i:                          ; preds = %get_dx.exit.i
  %205 = mul i32 %tz.0912.i, 3
  %mul177.i = add i32 %205, 3
  %206 = sext i32 %194 to i64
  br label %for.body132.i

for.body132.i:                                    ; preds = %for.inc417.i, %for.cond129.preheader.i
  %ty.0909.i = phi i32 [ -1, %for.cond129.preheader.i ], [ %inc418.i, %for.inc417.i ]
  %shift.2908.i = phi i32 [ %shift.1911.i, %for.cond129.preheader.i ], [ %shift.5.i, %for.inc417.i ]
  %nns.2907.i = phi i32 [ %nns.1910.i, %for.cond129.preheader.i ], [ %nns.12.i, %for.inc417.i ]
  %207 = load float* %arrayidx135.i, align 4, !tbaa !4
  %conv136.i = sitofp i32 %ty.0909.i to float
  %208 = load float* %arrayidx71.i, align 4, !tbaa !4
  %mul139.i = fmul float %conv136.i, %208
  %add140.i = fadd float %207, %mul139.i
  %209 = load float* %arrayidx143.i, align 4, !tbaa !4
  %mul144.i = fmul float %conv120.i, %209
  %add145.i = fadd float %add140.i, %mul144.i
  %210 = load float** @ns5_core.dcy2, align 8, !tbaa !3
  %mul.i776.i = fmul float %div81.i, %add145.i
  %add.i777.i = fadd float %conv.i775.i, %mul.i776.i
  %conv5.i778.i = fptosi float %add.i777.i to i32
  %sub.i779.i = sub nsw i32 %conv5.i778.i, %162
  %cmp.i780.i = icmp slt i32 %sub.i779.i, 0
  br i1 %cmp.i780.i, label %for.cond29.preheader.i798.i, label %if.else.i783.i

if.else.i783.i:                                   ; preds = %for.body132.i
  %cmp7.i782.i = icmp slt i32 %sub.i779.i, %162
  br i1 %cmp7.i782.i, label %if.else12.i790.i, label %if.end15.i794.i

if.else12.i790.i:                                 ; preds = %if.else.i783.i
  %idxprom.i786.i = sext i32 %sub.i779.i to i64
  %arrayidx.i787.i = getelementptr inbounds float* %210, i64 %idxprom.i786.i
  store float 0.000000e+00, float* %arrayidx.i787.i, align 4, !tbaa !4
  %sub13.i788.i = add nsw i32 %sub.i779.i, -1
  %add14.i789.i = add nsw i32 %sub.i779.i, 1
  br label %if.end15.i794.i

if.end15.i794.i:                                  ; preds = %if.else12.i790.i, %if.else.i783.i
  %211 = phi i32 [ %sub.i779.i, %if.else12.i790.i ], [ %162, %if.else.i783.i ]
  %212 = phi i32 [ %sub.i779.i, %if.else12.i790.i ], [ %sub10.i784.i, %if.else.i783.i ]
  %xgi0.0.i791.i = phi i32 [ %sub13.i788.i, %if.else12.i790.i ], [ %sub10.i784.i, %if.else.i783.i ]
  %xgi1.0.i792.i = phi i32 [ %add14.i789.i, %if.else12.i790.i ], [ %162, %if.else.i783.i ]
  %cmp1687.i793.i = icmp sgt i32 %xgi0.0.i791.i, -1
  br i1 %cmp1687.i793.i, label %for.body.lr.ph.i795.i, label %for.cond29.preheader.i798.i

for.body.lr.ph.i795.i:                            ; preds = %if.end15.i794.i
  %213 = sext i32 %xgi0.0.i791.i to i64
  br label %for.body.i806.i

for.cond29.preheader.i798.i:                      ; preds = %if.end26.i810.i, %for.body.i806.i, %if.end15.i794.i, %for.body132.i
  %214 = phi i32 [ %211, %if.end15.i794.i ], [ 0, %for.body132.i ], [ %220, %if.end26.i810.i ], [ %217, %for.body.i806.i ]
  %215 = phi i32 [ %212, %if.end15.i794.i ], [ -1, %for.body132.i ], [ %212, %if.end26.i810.i ], [ %212, %for.body.i806.i ]
  %xgi1.093.i796.i = phi i32 [ %xgi1.0.i792.i, %if.end15.i794.i ], [ 0, %for.body132.i ], [ %xgi1.0.i792.i, %if.end26.i810.i ], [ %xgi1.0.i792.i, %for.body.i806.i ]
  %cmp3085.i797.i = icmp slt i32 %xgi1.093.i796.i, %162
  br i1 %cmp3085.i797.i, label %for.body32.lr.ph.i799.i, label %get_dx.exit822.i

for.body32.lr.ph.i799.i:                          ; preds = %for.cond29.preheader.i798.i
  %216 = sext i32 %xgi1.093.i796.i to i64
  br label %for.body32.i817.i

for.body.i806.i:                                  ; preds = %if.end26.i810.i, %for.body.lr.ph.i795.i
  %217 = phi i32 [ %211, %for.body.lr.ph.i795.i ], [ %220, %if.end26.i810.i ]
  %indvars.iv89.i800.i = phi i64 [ %213, %for.body.lr.ph.i795.i ], [ %indvars.iv.next90.i808.i, %if.end26.i810.i ]
  %218 = add nsw i64 %indvars.iv89.i800.i, 1
  %219 = trunc i64 %218 to i32
  %conv19.i801.i = sitofp i32 %219 to float
  %mul20.i802.i = fmul float %div74.i, %conv19.i801.i
  %sub21.i803.i = fsub float %mul20.i802.i, %add145.i
  %mul22.i804.i = fmul float %sub21.i803.i, %sub21.i803.i
  %cmp23.i805.i = fcmp ult float %mul22.i804.i, %rcoul2.0.i
  br i1 %cmp23.i805.i, label %if.end26.i810.i, label %for.cond29.preheader.i798.i

if.end26.i810.i:                                  ; preds = %for.body.i806.i
  %220 = trunc i64 %indvars.iv89.i800.i to i32
  %arrayidx28.i807.i = getelementptr inbounds float* %210, i64 %indvars.iv89.i800.i
  store float %mul22.i804.i, float* %arrayidx28.i807.i, align 4, !tbaa !4
  %indvars.iv.next90.i808.i = add i64 %indvars.iv89.i800.i, -1
  %cmp16.i809.i = icmp sgt i32 %220, 0
  br i1 %cmp16.i809.i, label %for.body.i806.i, label %for.cond29.preheader.i798.i

for.body32.i817.i:                                ; preds = %if.end40.i821.i, %for.body32.lr.ph.i799.i
  %221 = phi i32 [ %215, %for.body32.lr.ph.i799.i ], [ %222, %if.end40.i821.i ]
  %indvars.iv.i811.i = phi i64 [ %216, %for.body32.lr.ph.i799.i ], [ %indvars.iv.next.i819.i, %if.end40.i821.i ]
  %222 = trunc i64 %indvars.iv.i811.i to i32
  %conv33.i812.i = sitofp i32 %222 to float
  %mul34.i813.i = fmul float %div74.i, %conv33.i812.i
  %sub35.i814.i = fsub float %mul34.i813.i, %add145.i
  %mul36.i815.i = fmul float %sub35.i814.i, %sub35.i814.i
  %cmp37.i816.i = fcmp ult float %mul36.i815.i, %rcoul2.0.i
  br i1 %cmp37.i816.i, label %if.end40.i821.i, label %get_dx.exit822.i

if.end40.i821.i:                                  ; preds = %for.body32.i817.i
  %arrayidx42.i818.i = getelementptr inbounds float* %210, i64 %indvars.iv.i811.i
  store float %mul36.i815.i, float* %arrayidx42.i818.i, align 4, !tbaa !4
  %indvars.iv.next.i819.i = add i64 %indvars.iv.i811.i, 1
  %223 = trunc i64 %indvars.iv.next.i819.i to i32
  %cmp30.i820.i = icmp slt i32 %223, %162
  br i1 %cmp30.i820.i, label %for.body32.i817.i, label %get_dx.exit822.i

get_dx.exit822.i:                                 ; preds = %if.end40.i821.i, %for.body32.i817.i, %for.cond29.preheader.i798.i
  %224 = phi i32 [ %215, %for.cond29.preheader.i798.i ], [ %222, %if.end40.i821.i ], [ %221, %for.body32.i817.i ]
  %cmp146.i = icmp sgt i32 %214, %224
  br i1 %cmp146.i, label %for.inc417.i, label %for.cond150.preheader.i

for.cond150.preheader.i:                          ; preds = %get_dx.exit822.i
  %add178.i = add nsw i32 %mul177.i, %ty.0909.i
  %225 = mul i32 %add178.i, 3
  %add181.i = add i32 %225, 4
  %226 = sext i32 %214 to i64
  br label %for.body153.i

for.body153.i:                                    ; preds = %for.inc414.i, %for.cond150.preheader.i
  %tx.0906.i = phi i32 [ -1, %for.cond150.preheader.i ], [ %inc415.i, %for.inc414.i ]
  %shift.3905.i = phi i32 [ %shift.2908.i, %for.cond150.preheader.i ], [ %shift.4.i, %for.inc414.i ]
  %nns.3904.i = phi i32 [ %nns.2907.i, %for.cond150.preheader.i ], [ %nns.11.i, %for.inc414.i ]
  %227 = load float* %arrayidx156.i, align 4, !tbaa !4
  %conv157.i = sitofp i32 %tx.0906.i to float
  %228 = load float* %arrayidx67.i, align 4, !tbaa !4
  %mul160.i = fmul float %conv157.i, %228
  %add161.i = fadd float %227, %mul160.i
  %229 = load float* %arrayidx164.i, align 4, !tbaa !4
  %mul165.i = fmul float %conv136.i, %229
  %add166.i = fadd float %add161.i, %mul165.i
  %230 = load float* %arrayidx169.i, align 4, !tbaa !4
  %mul170.i = fmul float %conv120.i, %230
  %add171.i = fadd float %add166.i, %mul170.i
  %231 = load float** @ns5_core.dcx2, align 8, !tbaa !3
  %mul.i824.i = fmul float %div80.i, %add171.i
  %add.i825.i = fadd float %conv.i823.i, %mul.i824.i
  %conv5.i826.i = fptosi float %add.i825.i to i32
  %sub.i827.i = sub nsw i32 %conv5.i826.i, %161
  %cmp.i828.i = icmp slt i32 %sub.i827.i, 0
  br i1 %cmp.i828.i, label %for.cond29.preheader.i846.i, label %if.else.i831.i

if.else.i831.i:                                   ; preds = %for.body153.i
  %cmp7.i830.i = icmp slt i32 %sub.i827.i, %161
  br i1 %cmp7.i830.i, label %if.else12.i838.i, label %if.end15.i842.i

if.else12.i838.i:                                 ; preds = %if.else.i831.i
  %idxprom.i834.i = sext i32 %sub.i827.i to i64
  %arrayidx.i835.i = getelementptr inbounds float* %231, i64 %idxprom.i834.i
  store float 0.000000e+00, float* %arrayidx.i835.i, align 4, !tbaa !4
  %sub13.i836.i = add nsw i32 %sub.i827.i, -1
  %add14.i837.i = add nsw i32 %sub.i827.i, 1
  br label %if.end15.i842.i

if.end15.i842.i:                                  ; preds = %if.else12.i838.i, %if.else.i831.i
  %232 = phi i32 [ %sub.i827.i, %if.else12.i838.i ], [ %161, %if.else.i831.i ]
  %233 = phi i32 [ %sub.i827.i, %if.else12.i838.i ], [ %sub10.i832.i, %if.else.i831.i ]
  %xgi0.0.i839.i = phi i32 [ %sub13.i836.i, %if.else12.i838.i ], [ %sub10.i832.i, %if.else.i831.i ]
  %xgi1.0.i840.i = phi i32 [ %add14.i837.i, %if.else12.i838.i ], [ %161, %if.else.i831.i ]
  %cmp1687.i841.i = icmp sgt i32 %xgi0.0.i839.i, -1
  br i1 %cmp1687.i841.i, label %for.body.lr.ph.i843.i, label %for.cond29.preheader.i846.i

for.body.lr.ph.i843.i:                            ; preds = %if.end15.i842.i
  %234 = sext i32 %xgi0.0.i839.i to i64
  br label %for.body.i854.i

for.cond29.preheader.i846.i:                      ; preds = %if.end26.i858.i, %for.body.i854.i, %if.end15.i842.i, %for.body153.i
  %235 = phi i32 [ %232, %if.end15.i842.i ], [ 0, %for.body153.i ], [ %241, %if.end26.i858.i ], [ %238, %for.body.i854.i ]
  %236 = phi i32 [ %233, %if.end15.i842.i ], [ -1, %for.body153.i ], [ %233, %if.end26.i858.i ], [ %233, %for.body.i854.i ]
  %xgi1.093.i844.i = phi i32 [ %xgi1.0.i840.i, %if.end15.i842.i ], [ 0, %for.body153.i ], [ %xgi1.0.i840.i, %if.end26.i858.i ], [ %xgi1.0.i840.i, %for.body.i854.i ]
  %cmp3085.i845.i = icmp slt i32 %xgi1.093.i844.i, %161
  br i1 %cmp3085.i845.i, label %for.body32.lr.ph.i847.i, label %get_dx.exit870.i

for.body32.lr.ph.i847.i:                          ; preds = %for.cond29.preheader.i846.i
  %237 = sext i32 %xgi1.093.i844.i to i64
  br label %for.body32.i865.i

for.body.i854.i:                                  ; preds = %if.end26.i858.i, %for.body.lr.ph.i843.i
  %238 = phi i32 [ %232, %for.body.lr.ph.i843.i ], [ %241, %if.end26.i858.i ]
  %indvars.iv89.i848.i = phi i64 [ %234, %for.body.lr.ph.i843.i ], [ %indvars.iv.next90.i856.i, %if.end26.i858.i ]
  %239 = add nsw i64 %indvars.iv89.i848.i, 1
  %240 = trunc i64 %239 to i32
  %conv19.i849.i = sitofp i32 %240 to float
  %mul20.i850.i = fmul float %div.i, %conv19.i849.i
  %sub21.i851.i = fsub float %mul20.i850.i, %add171.i
  %mul22.i852.i = fmul float %sub21.i851.i, %sub21.i851.i
  %cmp23.i853.i = fcmp ult float %mul22.i852.i, %rcoul2.0.i
  br i1 %cmp23.i853.i, label %if.end26.i858.i, label %for.cond29.preheader.i846.i

if.end26.i858.i:                                  ; preds = %for.body.i854.i
  %241 = trunc i64 %indvars.iv89.i848.i to i32
  %arrayidx28.i855.i = getelementptr inbounds float* %231, i64 %indvars.iv89.i848.i
  store float %mul22.i852.i, float* %arrayidx28.i855.i, align 4, !tbaa !4
  %indvars.iv.next90.i856.i = add i64 %indvars.iv89.i848.i, -1
  %cmp16.i857.i = icmp sgt i32 %241, 0
  br i1 %cmp16.i857.i, label %for.body.i854.i, label %for.cond29.preheader.i846.i

for.body32.i865.i:                                ; preds = %if.end40.i869.i, %for.body32.lr.ph.i847.i
  %242 = phi i32 [ %236, %for.body32.lr.ph.i847.i ], [ %243, %if.end40.i869.i ]
  %indvars.iv.i859.i = phi i64 [ %237, %for.body32.lr.ph.i847.i ], [ %indvars.iv.next.i867.i, %if.end40.i869.i ]
  %243 = trunc i64 %indvars.iv.i859.i to i32
  %conv33.i860.i = sitofp i32 %243 to float
  %mul34.i861.i = fmul float %div.i, %conv33.i860.i
  %sub35.i862.i = fsub float %mul34.i861.i, %add171.i
  %mul36.i863.i = fmul float %sub35.i862.i, %sub35.i862.i
  %cmp37.i864.i = fcmp ult float %mul36.i863.i, %rcoul2.0.i
  br i1 %cmp37.i864.i, label %if.end40.i869.i, label %get_dx.exit870.i

if.end40.i869.i:                                  ; preds = %for.body32.i865.i
  %arrayidx42.i866.i = getelementptr inbounds float* %231, i64 %indvars.iv.i859.i
  store float %mul36.i863.i, float* %arrayidx42.i866.i, align 4, !tbaa !4
  %indvars.iv.next.i867.i = add i64 %indvars.iv.i859.i, 1
  %244 = trunc i64 %indvars.iv.next.i867.i to i32
  %cmp30.i868.i = icmp slt i32 %244, %161
  br i1 %cmp30.i868.i, label %for.body32.i865.i, label %get_dx.exit870.i

get_dx.exit870.i:                                 ; preds = %if.end40.i869.i, %for.body32.i865.i, %for.cond29.preheader.i846.i
  %245 = phi i32 [ %236, %for.cond29.preheader.i846.i ], [ %243, %if.end40.i869.i ], [ %242, %for.body32.i865.i ]
  %cmp172.i = icmp sgt i32 %235, %245
  br i1 %cmp172.i, label %for.inc414.i, label %if.end175.i

if.end175.i:                                      ; preds = %get_dx.exit870.i
  %add182.i = add i32 %add181.i, %tx.0906.i
  br i1 %cmp184885.i, label %for.body186.lr.ph.i, label %for.body199.lr.ph.i

for.body186.lr.ph.i:                              ; preds = %if.end175.i
  %246 = load i32** @ns5_core.nsr, align 8, !tbaa !3
  %247 = load i32** @ns5_core.nlr_ljc, align 8, !tbaa !3
  %248 = load i32** @ns5_core.nlr_one, align 8, !tbaa !3
  br label %for.body186.i

for.body186.i:                                    ; preds = %for.body186.i, %for.body186.lr.ph.i
  %indvars.iv924.i = phi i64 [ 0, %for.body186.lr.ph.i ], [ %indvars.iv.next925.i, %for.body186.i ]
  %arrayidx188.i = getelementptr inbounds i32* %246, i64 %indvars.iv924.i
  store i32 0, i32* %arrayidx188.i, align 4, !tbaa !0
  %arrayidx190.i = getelementptr inbounds i32* %247, i64 %indvars.iv924.i
  store i32 0, i32* %arrayidx190.i, align 4, !tbaa !0
  %arrayidx192.i = getelementptr inbounds i32* %248, i64 %indvars.iv924.i
  store i32 0, i32* %arrayidx192.i, align 4, !tbaa !0
  %indvars.iv.next925.i = add i64 %indvars.iv924.i, 1
  %lftr.wideiv716 = trunc i64 %indvars.iv.next925.i to i32
  %exitcond717 = icmp eq i32 %lftr.wideiv716, %1
  br i1 %exitcond717, label %for.body199.lr.ph.i, label %for.body186.i

for.body199.lr.ph.i:                              ; preds = %for.body186.i, %if.end175.i
  %249 = sext i32 %235 to i64
  br label %for.body206.lr.ph.i

for.body206.lr.ph.i:                              ; preds = %for.inc373.for.body199_crit_edge.i, %for.body199.lr.ph.i
  %250 = phi float* [ %.pre954.i, %for.inc373.for.body199_crit_edge.i ], [ %231, %for.body199.lr.ph.i ]
  %indvars.iv937.i = phi i64 [ %indvars.iv.next938.i, %for.inc373.for.body199_crit_edge.i ], [ %249, %for.body199.lr.ph.i ]
  %nns.4899.i = phi i32 [ %nns.10.i, %for.inc373.for.body199_crit_edge.i ], [ %nns.3904.i, %for.body199.lr.ph.i ]
  %arrayidx201.i = getelementptr inbounds float* %250, i64 %indvars.iv937.i
  %251 = load float* %arrayidx201.i, align 4, !tbaa !4
  %sub202.i = fsub float %rcoul2.0.i, %251
  %252 = trunc i64 %indvars.iv937.i to i32
  %mul223.i = mul i32 %252, %162
  br label %for.body206.i

for.body206.i:                                    ; preds = %for.inc370.i.for.body206.i_crit_edge, %for.body206.lr.ph.i
  %indvars.iv935.i = phi i64 [ %indvars.iv.next936.i, %for.inc370.i.for.body206.i_crit_edge ], [ %226, %for.body206.lr.ph.i ]
  %nns.5895.i = phi i32 [ %nns.10.i, %for.inc370.i.for.body206.i_crit_edge ], [ %nns.4899.i, %for.body206.lr.ph.i ]
  %253 = load float** @ns5_core.dcy2, align 8, !tbaa !3
  %arrayidx208.i = getelementptr inbounds float* %253, i64 %indvars.iv935.i
  %254 = load float* %arrayidx208.i, align 4, !tbaa !4
  %sub209.i = fsub float %sub202.i, %254
  %cmp210.i = fcmp ogt float %sub209.i, 0.000000e+00
  %255 = trunc i64 %indvars.iv935.i to i32
  br i1 %cmp210.i, label %for.body216.lr.ph.i, label %for.inc370.i

for.body216.lr.ph.i:                              ; preds = %for.body206.i
  %tmp.i = add i32 %255, %mul223.i
  %tmp877.i = mul i32 %tmp.i, %163
  br label %for.body216.i

for.body216.i:                                    ; preds = %for.inc366.i.for.body216.i_crit_edge, %for.body216.lr.ph.i
  %indvars.iv933.i = phi i64 [ %indvars.iv.next934.i, %for.inc366.i.for.body216.i_crit_edge ], [ %206, %for.body216.lr.ph.i ]
  %nns.6891.i = phi i32 [ %nns.9.i, %for.inc366.i.for.body216.i_crit_edge ], [ %nns.5895.i, %for.body216.lr.ph.i ]
  %256 = load float** @ns5_core.dcz2, align 8, !tbaa !3
  %arrayidx218.i = getelementptr inbounds float* %256, i64 %indvars.iv933.i
  %257 = load float* %arrayidx218.i, align 4, !tbaa !4
  %cmp219.i = fcmp ogt float %sub209.i, %257
  %258 = trunc i64 %indvars.iv933.i to i32
  br i1 %cmp219.i, label %if.then221.i, label %for.inc366.i

if.then221.i:                                     ; preds = %for.body216.i
  %add226.i = add i32 %258, %tmp877.i
  %idxprom227.i = sext i32 %add226.i to i64
  %arrayidx228.i = getelementptr inbounds i32* %166, i64 %idxprom227.i
  %259 = load i32* %arrayidx228.i, align 4, !tbaa !0
  %cmp232887.i = icmp sgt i32 %259, 0
  br i1 %cmp232887.i, label %for.body234.lr.ph.i, label %for.inc366.i

for.body234.lr.ph.i:                              ; preds = %if.then221.i
  %arrayidx230.i = getelementptr inbounds i32* %165, i64 %idxprom227.i
  %260 = load i32* %arrayidx230.i, align 4, !tbaa !0
  %261 = sext i32 %260 to i64
  br label %for.body234.i

for.body234.i:                                    ; preds = %for.inc362.i, %for.body234.lr.ph.i
  %indvars.iv928.i = phi i64 [ 0, %for.body234.lr.ph.i ], [ %indvars.iv.next929.i, %for.inc362.i ]
  %nns.7888.i = phi i32 [ %nns.6891.i, %for.body234.lr.ph.i ], [ %nns.8.i, %for.inc362.i ]
  %262 = add nsw i64 %indvars.iv928.i, %261
  %arrayidx237.i = getelementptr inbounds i32* %164, i64 %262
  %263 = load i32* %arrayidx237.i, align 4, !tbaa !0
  %cmp238.i = icmp sge i32 %263, %180
  %cmp240.i = icmp slt i32 %263, %add112.i
  %or.cond.i = and i1 %cmp238.i, %cmp240.i
  %cmp242.i = icmp slt i32 %263, %sub.i
  %or.cond771.i = or i1 %or.cond.i, %cmp242.i
  br i1 %or.cond771.i, label %if.then244.i, label %for.inc362.i

if.then244.i:                                     ; preds = %for.body234.i
  %idxprom245.i = sext i32 %263 to i64
  %arrayidx247.i = getelementptr inbounds [3 x float]* %160, i64 %idxprom245.i, i64 0
  %264 = load float* %arrayidx247.i, align 4, !tbaa !4
  %sub248.i = fsub float %add171.i, %264
  %mul253.i = fmul float %sub248.i, %sub248.i
  %arrayidx256.i = getelementptr inbounds [3 x float]* %160, i64 %idxprom245.i, i64 1
  %265 = load float* %arrayidx256.i, align 4, !tbaa !4
  %sub257.i = fsub float %add145.i, %265
  %mul262.i = fmul float %sub257.i, %sub257.i
  %add263.i = fadd float %mul253.i, %mul262.i
  %arrayidx266.i = getelementptr inbounds [3 x float]* %160, i64 %idxprom245.i, i64 2
  %266 = load float* %arrayidx266.i, align 4, !tbaa !4
  %sub267.i = fsub float %add124.i, %266
  %mul272.i = fmul float %sub267.i, %sub267.i
  %add273.i = fadd float %add263.i, %mul272.i
  %cmp274.i = fcmp olt float %add273.i, %cond11.i
  br i1 %cmp274.i, label %if.then276.i, label %if.end359.i

if.then276.i:                                     ; preds = %if.then244.i
  %267 = load i32** %index99.i, align 8, !tbaa !3
  %arrayidx279.i = getelementptr inbounds i32* %267, i64 %idxprom245.i
  %268 = load i32* %arrayidx279.i, align 4, !tbaa !0
  %idxprom280.i = sext i32 %268 to i64
  %arrayidx281.i = getelementptr inbounds i16* %140, i64 %idxprom280.i
  %269 = load i16* %arrayidx281.i, align 2, !tbaa !5
  %conv282.i = zext i16 %269 to i32
  %idxprom283.i = zext i16 %269 to i64
  %add.ptr.sum.i655 = add i64 %idxprom283.i, %idx.ext.i644
  %arrayidx284.i = getelementptr inbounds i32* %183, i64 %add.ptr.sum.i655
  %270 = load i32* %arrayidx284.i, align 4, !tbaa !0
  %tobool285.i = icmp eq i32 %270, 0
  br i1 %tobool285.i, label %if.then286.i, label %if.end359.i

if.then286.i:                                     ; preds = %if.then276.i
  %cmp287.i = fcmp olt float %add273.i, %mul.i626
  br i1 %cmp287.i, label %if.then289.i, label %if.else310.i

if.then289.i:                                     ; preds = %if.then286.i
  %271 = load i32** @ns5_core.nsr, align 8, !tbaa !3
  %arrayidx291.i = getelementptr inbounds i32* %271, i64 %idxprom283.i
  %272 = load i32* %arrayidx291.i, align 4, !tbaa !0
  %cmp292.i = icmp sgt i32 %272, 1023
  br i1 %cmp292.i, label %if.then294.i, label %if.end302.i

if.then294.i:                                     ; preds = %if.then289.i
  %273 = load i32*** @ns5_core.nl_sr, align 8, !tbaa !3
  %arrayidx298.i = getelementptr inbounds i32** %273, i64 %idxprom283.i
  %274 = load i32** %arrayidx298.i, align 8, !tbaa !3
  call fastcc void @put_in_list(i32* %139, i32 %1, %struct.t_mdatoms* %md, i32 %180, i32 %conv282.i, i32 %272, i32* %274, i32* %267, i64* %137, i32 %add182.i, %struct.t_forcerec* %fr, i32 0, i32 0, i32 0) #8
  %275 = load i32** @ns5_core.nsr, align 8, !tbaa !3
  %arrayidx301.i = getelementptr inbounds i32* %275, i64 %idxprom283.i
  store i32 0, i32* %arrayidx301.i, align 4, !tbaa !0
  br label %if.end302.i

if.end302.i:                                      ; preds = %if.then289.i, %if.then294.i
  %276 = phi i32 [ 0, %if.then294.i ], [ %272, %if.then289.i ]
  %277 = phi i32* [ %275, %if.then294.i ], [ %271, %if.then289.i ]
  %arrayidx304.i = getelementptr inbounds i32* %277, i64 %idxprom283.i
  %inc305.i = add nsw i32 %276, 1
  store i32 %inc305.i, i32* %arrayidx304.i, align 4, !tbaa !0
  %idxprom306.i = sext i32 %276 to i64
  %278 = load i32*** @ns5_core.nl_sr, align 8, !tbaa !3
  %arrayidx308.i = getelementptr inbounds i32** %278, i64 %idxprom283.i
  %279 = load i32** %arrayidx308.i, align 8, !tbaa !3
  %arrayidx309.i = getelementptr inbounds i32* %279, i64 %idxprom306.i
  store i32 %263, i32* %arrayidx309.i, align 4, !tbaa !0
  br label %if.end359.i

if.else310.i:                                     ; preds = %if.then286.i
  %cmp311.i = fcmp olt float %add273.i, %cond.i
  br i1 %cmp311.i, label %if.then313.i, label %if.else333.i

if.then313.i:                                     ; preds = %if.else310.i
  %280 = load i32** @ns5_core.nlr_ljc, align 8, !tbaa !3
  %arrayidx315.i = getelementptr inbounds i32* %280, i64 %idxprom283.i
  %281 = load i32* %arrayidx315.i, align 4, !tbaa !0
  %cmp316.i = icmp sgt i32 %281, 1023
  br i1 %cmp316.i, label %if.then318.i, label %if.end325.i

if.then318.i:                                     ; preds = %if.then313.i
  %282 = load i32*** @ns5_core.nl_lr_ljc, align 8, !tbaa !3
  %arrayidx322.i = getelementptr inbounds i32** %282, i64 %idxprom283.i
  %283 = load i32** %arrayidx322.i, align 8, !tbaa !3
  call fastcc void @do_longrange(%struct._IO_FILE* %log, %struct.t_commrec* %cr, %struct.t_topology* %top, %struct.t_forcerec* %fr, i32 %1, %struct.t_mdatoms* %md, i32 %180, i32 %conv282.i, i32 %281, i32* %283, i64* %137, i32 %add182.i, [3 x float]* %x, float* %arraydecay350, %struct.t_nrnb* %nrnb, float %lambda, float* %dvdlambda, %struct.t_groups* %grps, i32 0, i32 0, i32 0, i32* %139) #8
  %284 = load i32** @ns5_core.nlr_ljc, align 8, !tbaa !3
  %arrayidx324.i = getelementptr inbounds i32* %284, i64 %idxprom283.i
  store i32 0, i32* %arrayidx324.i, align 4, !tbaa !0
  br label %if.end325.i

if.end325.i:                                      ; preds = %if.then313.i, %if.then318.i
  %285 = phi i32 [ 0, %if.then318.i ], [ %281, %if.then313.i ]
  %286 = phi i32* [ %284, %if.then318.i ], [ %280, %if.then313.i ]
  %arrayidx327.i = getelementptr inbounds i32* %286, i64 %idxprom283.i
  %inc328.i = add nsw i32 %285, 1
  store i32 %inc328.i, i32* %arrayidx327.i, align 4, !tbaa !0
  %idxprom329.i = sext i32 %285 to i64
  %287 = load i32*** @ns5_core.nl_lr_ljc, align 8, !tbaa !3
  %arrayidx331.i = getelementptr inbounds i32** %287, i64 %idxprom283.i
  %288 = load i32** %arrayidx331.i, align 8, !tbaa !3
  %arrayidx332.i = getelementptr inbounds i32* %288, i64 %idxprom329.i
  store i32 %263, i32* %arrayidx332.i, align 4, !tbaa !0
  br label %if.end359.i

if.else333.i:                                     ; preds = %if.else310.i
  br i1 %cmp13.i, label %if.then335.i, label %if.end359.i

if.then335.i:                                     ; preds = %if.else333.i
  %289 = load i32** @ns5_core.nlr_one, align 8, !tbaa !3
  %arrayidx337.i = getelementptr inbounds i32* %289, i64 %idxprom283.i
  %290 = load i32* %arrayidx337.i, align 4, !tbaa !0
  %cmp338.i = icmp sgt i32 %290, 1023
  br i1 %cmp338.i, label %if.then340.i, label %if.end347.i

if.then340.i:                                     ; preds = %if.then335.i
  %291 = load i32*** @ns5_core.nl_lr_one, align 8, !tbaa !3
  %arrayidx344.i = getelementptr inbounds i32** %291, i64 %idxprom283.i
  %292 = load i32** %arrayidx344.i, align 8, !tbaa !3
  call fastcc void @do_longrange(%struct._IO_FILE* %log, %struct.t_commrec* %cr, %struct.t_topology* %top, %struct.t_forcerec* %fr, i32 %1, %struct.t_mdatoms* %md, i32 %180, i32 %conv282.i, i32 %290, i32* %292, i64* %137, i32 %add182.i, [3 x float]* %x, float* %arraydecay350, %struct.t_nrnb* %nrnb, float %lambda, float* %dvdlambda, %struct.t_groups* %grps, i32 %conv16.i631, i32 %lnot.ext.i, i32 0, i32* %139) #8
  %293 = load i32** @ns5_core.nlr_one, align 8, !tbaa !3
  %arrayidx346.i = getelementptr inbounds i32* %293, i64 %idxprom283.i
  store i32 0, i32* %arrayidx346.i, align 4, !tbaa !0
  br label %if.end347.i

if.end347.i:                                      ; preds = %if.then335.i, %if.then340.i
  %294 = phi i32 [ 0, %if.then340.i ], [ %290, %if.then335.i ]
  %295 = phi i32* [ %293, %if.then340.i ], [ %289, %if.then335.i ]
  %arrayidx349.i = getelementptr inbounds i32* %295, i64 %idxprom283.i
  %inc350.i = add nsw i32 %294, 1
  store i32 %inc350.i, i32* %arrayidx349.i, align 4, !tbaa !0
  %idxprom351.i = sext i32 %294 to i64
  %296 = load i32*** @ns5_core.nl_lr_one, align 8, !tbaa !3
  %arrayidx353.i = getelementptr inbounds i32** %296, i64 %idxprom283.i
  %297 = load i32** %arrayidx353.i, align 8, !tbaa !3
  %arrayidx354.i = getelementptr inbounds i32* %297, i64 %idxprom351.i
  store i32 %263, i32* %arrayidx354.i, align 4, !tbaa !0
  br label %if.end359.i

if.end359.i:                                      ; preds = %if.end347.i, %if.else333.i, %if.end325.i, %if.end302.i, %if.then276.i, %if.then244.i
  %inc360.i = add nsw i32 %nns.7888.i, 1
  br label %for.inc362.i

for.inc362.i:                                     ; preds = %if.end359.i, %for.body234.i
  %nns.8.i = phi i32 [ %inc360.i, %if.end359.i ], [ %nns.7888.i, %for.body234.i ]
  %indvars.iv.next929.i = add i64 %indvars.iv928.i, 1
  %lftr.wideiv718 = trunc i64 %indvars.iv.next929.i to i32
  %exitcond719 = icmp eq i32 %lftr.wideiv718, %259
  br i1 %exitcond719, label %for.inc366.i, label %for.body234.i

for.inc366.i:                                     ; preds = %for.inc362.i, %if.then221.i, %for.body216.i
  %nns.9.i = phi i32 [ %nns.6891.i, %if.then221.i ], [ %nns.6891.i, %for.body216.i ], [ %nns.8.i, %for.inc362.i ]
  %cmp214.i = icmp slt i32 %258, %204
  br i1 %cmp214.i, label %for.inc366.i.for.body216.i_crit_edge, label %for.inc370.i

for.inc366.i.for.body216.i_crit_edge:             ; preds = %for.inc366.i
  %indvars.iv.next934.i = add i64 %indvars.iv933.i, 1
  br label %for.body216.i

for.inc370.i:                                     ; preds = %for.body206.i, %for.inc366.i
  %nns.10.i = phi i32 [ %nns.9.i, %for.inc366.i ], [ %nns.5895.i, %for.body206.i ]
  %cmp204.i = icmp slt i32 %255, %224
  br i1 %cmp204.i, label %for.inc370.i.for.body206.i_crit_edge, label %for.inc373.i

for.inc370.i.for.body206.i_crit_edge:             ; preds = %for.inc370.i
  %indvars.iv.next936.i = add i64 %indvars.iv935.i, 1
  br label %for.body206.i

for.inc373.i:                                     ; preds = %for.inc370.i
  %cmp197.i = icmp slt i32 %252, %245
  br i1 %cmp197.i, label %for.inc373.for.body199_crit_edge.i, label %for.cond376.loopexit.i

for.inc373.for.body199_crit_edge.i:               ; preds = %for.inc373.i
  %indvars.iv.next938.i = add i64 %indvars.iv937.i, 1
  %.pre954.i = load float** @ns5_core.dcx2, align 8, !tbaa !3
  br label %for.body206.lr.ph.i

for.cond376.loopexit.i:                           ; preds = %for.inc373.i
  br i1 %cmp184885.i, label %for.body379.i, label %for.inc414.i

for.body379.i:                                    ; preds = %for.inc411.i, %for.cond376.loopexit.i
  %indvars.iv939.i = phi i64 [ 0, %for.cond376.loopexit.i ], [ %indvars.iv.next940.i, %for.inc411.i ]
  %298 = load i32** @ns5_core.nsr, align 8, !tbaa !3
  %arrayidx381.i = getelementptr inbounds i32* %298, i64 %indvars.iv939.i
  %299 = load i32* %arrayidx381.i, align 4, !tbaa !0
  %cmp382.i = icmp sgt i32 %299, 0
  br i1 %cmp382.i, label %if.then384.i, label %if.end390.i

if.then384.i:                                     ; preds = %for.body379.i
  %300 = load i32*** @ns5_core.nl_sr, align 8, !tbaa !3
  %arrayidx388.i = getelementptr inbounds i32** %300, i64 %indvars.iv939.i
  %301 = load i32** %arrayidx388.i, align 8, !tbaa !3
  %302 = load i32** %index99.i, align 8, !tbaa !3
  %303 = trunc i64 %indvars.iv939.i to i32
  call fastcc void @put_in_list(i32* %139, i32 %1, %struct.t_mdatoms* %md, i32 %180, i32 %303, i32 %299, i32* %301, i32* %302, i64* %137, i32 %add182.i, %struct.t_forcerec* %fr, i32 0, i32 0, i32 0) #8
  br label %if.end390.i

if.end390.i:                                      ; preds = %for.body379.i, %if.then384.i
  %304 = load i32** @ns5_core.nlr_ljc, align 8, !tbaa !3
  %arrayidx392.i = getelementptr inbounds i32* %304, i64 %indvars.iv939.i
  %305 = load i32* %arrayidx392.i, align 4, !tbaa !0
  %cmp393.i = icmp sgt i32 %305, 0
  br i1 %cmp393.i, label %if.then395.i, label %if.end400.i

if.then395.i:                                     ; preds = %if.end390.i
  %306 = load i32*** @ns5_core.nl_lr_ljc, align 8, !tbaa !3
  %arrayidx399.i = getelementptr inbounds i32** %306, i64 %indvars.iv939.i
  %307 = load i32** %arrayidx399.i, align 8, !tbaa !3
  %308 = trunc i64 %indvars.iv939.i to i32
  call fastcc void @do_longrange(%struct._IO_FILE* %log, %struct.t_commrec* %cr, %struct.t_topology* %top, %struct.t_forcerec* %fr, i32 %1, %struct.t_mdatoms* %md, i32 %180, i32 %308, i32 %305, i32* %307, i64* %137, i32 %add182.i, [3 x float]* %x, float* %arraydecay350, %struct.t_nrnb* %nrnb, float %lambda, float* %dvdlambda, %struct.t_groups* %grps, i32 0, i32 0, i32 0, i32* %139) #8
  br label %if.end400.i

if.end400.i:                                      ; preds = %if.end390.i, %if.then395.i
  %309 = load i32** @ns5_core.nlr_one, align 8, !tbaa !3
  %arrayidx402.i = getelementptr inbounds i32* %309, i64 %indvars.iv939.i
  %310 = load i32* %arrayidx402.i, align 4, !tbaa !0
  %cmp403.i = icmp sgt i32 %310, 0
  br i1 %cmp403.i, label %if.then405.i, label %for.inc411.i

if.then405.i:                                     ; preds = %if.end400.i
  %311 = load i32*** @ns5_core.nl_lr_one, align 8, !tbaa !3
  %arrayidx409.i = getelementptr inbounds i32** %311, i64 %indvars.iv939.i
  %312 = load i32** %arrayidx409.i, align 8, !tbaa !3
  %313 = trunc i64 %indvars.iv939.i to i32
  call fastcc void @do_longrange(%struct._IO_FILE* %log, %struct.t_commrec* %cr, %struct.t_topology* %top, %struct.t_forcerec* %fr, i32 %1, %struct.t_mdatoms* %md, i32 %180, i32 %313, i32 %310, i32* %312, i64* %137, i32 %add182.i, [3 x float]* %x, float* %arraydecay350, %struct.t_nrnb* %nrnb, float %lambda, float* %dvdlambda, %struct.t_groups* %grps, i32 %conv16.i631, i32 %lnot.ext.i, i32 0, i32* %139) #8
  br label %for.inc411.i

for.inc411.i:                                     ; preds = %if.then405.i, %if.end400.i
  %indvars.iv.next940.i = add i64 %indvars.iv939.i, 1
  %lftr.wideiv720 = trunc i64 %indvars.iv.next940.i to i32
  %exitcond721 = icmp eq i32 %lftr.wideiv720, %1
  br i1 %exitcond721, label %for.inc414.i, label %for.body379.i

for.inc414.i:                                     ; preds = %for.inc411.i, %for.cond376.loopexit.i, %get_dx.exit870.i
  %nns.11.i = phi i32 [ %nns.3904.i, %get_dx.exit870.i ], [ %nns.10.i, %for.cond376.loopexit.i ], [ %nns.10.i, %for.inc411.i ]
  %shift.4.i = phi i32 [ %shift.3905.i, %get_dx.exit870.i ], [ %add182.i, %for.cond376.loopexit.i ], [ %add182.i, %for.inc411.i ]
  %inc415.i = add nsw i32 %tx.0906.i, 1
  %exitcond943.i = icmp eq i32 %inc415.i, 2
  br i1 %exitcond943.i, label %for.inc417.i, label %for.body153.i

for.inc417.i:                                     ; preds = %for.inc414.i, %get_dx.exit822.i
  %nns.12.i = phi i32 [ %nns.2907.i, %get_dx.exit822.i ], [ %nns.11.i, %for.inc414.i ]
  %shift.5.i = phi i32 [ %shift.2908.i, %get_dx.exit822.i ], [ %shift.4.i, %for.inc414.i ]
  %inc418.i = add nsw i32 %ty.0909.i, 1
  %exitcond944.i = icmp eq i32 %inc418.i, 2
  br i1 %exitcond944.i, label %for.inc420.i, label %for.body132.i

for.inc420.i:                                     ; preds = %for.inc417.i, %get_dx.exit.i
  %nns.13.i = phi i32 [ %nns.1910.i, %get_dx.exit.i ], [ %nns.12.i, %for.inc417.i ]
  %shift.6.i = phi i32 [ %shift.1911.i, %get_dx.exit.i ], [ %shift.5.i, %for.inc417.i ]
  %inc421.i = add nsw i32 %tz.0912.i, 1
  %exitcond945.i = icmp eq i32 %inc421.i, 2
  br i1 %exitcond945.i, label %for.end422.i, label %for.body116.i

for.end422.i:                                     ; preds = %for.inc420.i
  %314 = load i32** %index99.i, align 8, !tbaa !3
  %arrayidx425.i = getelementptr inbounds i32* %314, i64 %idxprom93.i
  %315 = load i32* %arrayidx425.i, align 4, !tbaa !0
  %arrayidx429.i = getelementptr inbounds i32* %314, i64 %idxprom108.i
  %316 = load i32* %arrayidx429.i, align 4, !tbaa !0
  call fastcc void @setexcl(i32 %315, i32 %316, %struct.t_block* %excl.i, i32 0, i64* %137) #8
  br label %for.inc432.i

for.inc432.i:                                     ; preds = %if.end92.i, %for.end422.i
  %nns.14.i = phi i32 [ %nns.13.i, %for.end422.i ], [ %nns.0915.i, %if.end92.i ]
  %shift.7.i = phi i32 [ %shift.6.i, %for.end422.i ], [ %shift.0916.i, %if.end92.i ]
  %indvars.iv.next947.i = add i64 %indvars.iv946.i, 1
  %317 = load i32* %hcg327, align 4, !tbaa !0
  %318 = trunc i64 %indvars.iv.next947.i to i32
  %cmp84.i = icmp slt i32 %318, %317
  br i1 %cmp84.i, label %for.body86.i, label %for.cond435.preheader.i

for.body438.i:                                    ; preds = %for.cond435.preheader.i, %for.inc455.i
  %indvars.iv.i656 = phi i64 [ %indvars.iv.next.i657, %for.inc455.i ], [ 0, %for.cond435.preheader.i ]
  br i1 %cmp12.i, label %if.then441.i, label %if.end446.i

if.then441.i:                                     ; preds = %for.body438.i
  %319 = load i32** @ns5_core.nlr_ljc, align 8, !tbaa !3
  %arrayidx443.i = getelementptr inbounds i32* %319, i64 %indvars.iv.i656
  %320 = load i32* %arrayidx443.i, align 4, !tbaa !0
  %321 = load i32*** @ns5_core.nl_lr_ljc, align 8, !tbaa !3
  %arrayidx445.i = getelementptr inbounds i32** %321, i64 %indvars.iv.i656
  %322 = load i32** %arrayidx445.i, align 8, !tbaa !3
  %323 = trunc i64 %indvars.iv.i656 to i32
  call fastcc void @do_longrange(%struct._IO_FILE* %log, %struct.t_commrec* %cr, %struct.t_topology* %top, %struct.t_forcerec* %fr, i32 0, %struct.t_mdatoms* %md, i32 %icg.0.lcssa.i, i32 %323, i32 %320, i32* %322, i64* %137, i32 %shift.0.lcssa.i, [3 x float]* %x, float* %arraydecay350, %struct.t_nrnb* %nrnb, float %lambda, float* %dvdlambda, %struct.t_groups* %grps, i32 0, i32 0, i32 1, i32* %139) #8
  br label %if.end446.i

if.end446.i:                                      ; preds = %if.then441.i, %for.body438.i
  br i1 %cmp13.i, label %if.then449.i, label %for.inc455.i

if.then449.i:                                     ; preds = %if.end446.i
  %324 = load i32** @ns5_core.nlr_one, align 8, !tbaa !3
  %arrayidx451.i = getelementptr inbounds i32* %324, i64 %indvars.iv.i656
  %325 = load i32* %arrayidx451.i, align 4, !tbaa !0
  %326 = load i32*** @ns5_core.nl_lr_one, align 8, !tbaa !3
  %arrayidx453.i = getelementptr inbounds i32** %326, i64 %indvars.iv.i656
  %327 = load i32** %arrayidx453.i, align 8, !tbaa !3
  %328 = trunc i64 %indvars.iv.i656 to i32
  call fastcc void @do_longrange(%struct._IO_FILE* %log, %struct.t_commrec* %cr, %struct.t_topology* %top, %struct.t_forcerec* %fr, i32 0, %struct.t_mdatoms* %md, i32 %icg.0.lcssa.i, i32 %328, i32 %325, i32* %327, i64* %137, i32 %shift.0.lcssa.i, [3 x float]* %x, float* %arraydecay350, %struct.t_nrnb* %nrnb, float %lambda, float* %dvdlambda, %struct.t_groups* %grps, i32 %conv16.i631, i32 %lnot.ext.i, i32 1, i32* %139) #8
  br label %for.inc455.i

for.inc455.i:                                     ; preds = %if.then449.i, %if.end446.i
  %indvars.iv.next.i657 = add i64 %indvars.iv.i656, 1
  %lftr.wideiv714 = trunc i64 %indvars.iv.next.i657 to i32
  %exitcond715 = icmp eq i32 %lftr.wideiv714, %1
  br i1 %exitcond715, label %for.body.i773.i, label %for.body438.i

for.body.i773.i:                                  ; preds = %for.cond435.preheader.i, %for.inc455.i, %close_nblist.exit26.i.i680
  %indvars.iv.i772.i = phi i64 [ %indvars.iv.next.i774.i, %close_nblist.exit26.i.i680 ], [ 0, %for.inc455.i ], [ 0, %for.cond435.preheader.i ]
  %maxnri.i6.i.i658 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 49, i64 %indvars.iv.i772.i, i32 2
  %329 = load i32* %maxnri.i6.i.i658, align 4, !tbaa !0
  %cmp.i7.i.i659 = icmp sgt i32 %329, 0
  br i1 %cmp.i7.i.i659, label %if.then.i16.i.i668, label %close_nblist.exit26.i.i680

if.then.i16.i.i668:                               ; preds = %for.body.i773.i
  %nri1.i8.i.i660 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 49, i64 %indvars.iv.i772.i, i32 1
  %330 = load i32* %nri1.i8.i.i660, align 4, !tbaa !0
  %add.i9.i.i661 = add nsw i32 %330, 1
  %idxprom.i10.i.i662 = sext i32 %add.i9.i.i661 to i64
  %jindex.i11.i.i663 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 49, i64 %indvars.iv.i772.i, i32 10
  %331 = load i32** %jindex.i11.i.i663, align 8, !tbaa !3
  %arrayidx.i12.i.i664 = getelementptr inbounds i32* %331, i64 %idxprom.i10.i.i662
  %332 = load i32* %arrayidx.i12.i.i664, align 4, !tbaa !0
  %idxprom2.i13.i.i665 = sext i32 %330 to i64
  %arrayidx4.i14.i.i666 = getelementptr inbounds i32* %331, i64 %idxprom2.i13.i.i665
  %333 = load i32* %arrayidx4.i14.i.i666, align 4, !tbaa !0
  %cmp5.i15.i.i667 = icmp sgt i32 %332, %333
  br i1 %cmp5.i15.i.i667, label %land.lhs.true.i20.i.i672, label %close_nblist.exit26.i.i680

land.lhs.true.i20.i.i672:                         ; preds = %if.then.i16.i.i668
  %gid.i17.i.i669 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 49, i64 %indvars.iv.i772.i, i32 8
  %334 = load i32** %gid.i17.i.i669, align 8, !tbaa !3
  %arrayidx7.i18.i.i670 = getelementptr inbounds i32* %334, i64 %idxprom2.i13.i.i665
  %335 = load i32* %arrayidx7.i18.i.i670, align 4, !tbaa !0
  %cmp8.i19.i.i671 = icmp eq i32 %335, -1
  br i1 %cmp8.i19.i.i671, label %close_nblist.exit26.i.i680, label %if.then9.i25.i.i677

if.then9.i25.i.i677:                              ; preds = %land.lhs.true.i20.i.i672
  store i32 %add.i9.i.i661, i32* %nri1.i8.i.i660, align 4, !tbaa !0
  %nrj.i21.i.i673 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 49, i64 %indvars.iv.i772.i, i32 3
  %336 = load i32* %nrj.i21.i.i673, align 4, !tbaa !0
  %add11.i22.i.i674 = add nsw i32 %330, 2
  %idxprom12.i23.i.i675 = sext i32 %add11.i22.i.i674 to i64
  %arrayidx14.i24.i.i676 = getelementptr inbounds i32* %331, i64 %idxprom12.i23.i.i675
  store i32 %336, i32* %arrayidx14.i24.i.i676, align 4, !tbaa !0
  br label %close_nblist.exit26.i.i680

close_nblist.exit26.i.i680:                       ; preds = %if.then9.i25.i.i677, %land.lhs.true.i20.i.i672, %if.then.i16.i.i668, %for.body.i773.i
  %indvars.iv.next.i774.i = add i64 %indvars.iv.i772.i, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next.i774.i to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 13
  br i1 %exitcond, label %if.end370, label %for.body.i773.i

if.else352:                                       ; preds = %reset_neighbor_list.exit
  %337 = load %struct.t_ns_buf*** @search_neighbours.ns_buf, align 8, !tbaa !3
  %cmp353 = icmp eq %struct.t_ns_buf** %337, null
  br i1 %cmp353, label %if.then355, label %if.end367

if.then355:                                       ; preds = %if.else352
  %call356 = call i8* @save_calloc(i8* getelementptr inbounds ([7 x i8]* @.str15, i64 0, i64 0), i8* getelementptr inbounds ([50 x i8]* @.str2, i64 0, i64 0), i32 1841, i32 %1, i32 8) #8
  %338 = bitcast i8* %call356 to %struct.t_ns_buf**
  store %struct.t_ns_buf** %338, %struct.t_ns_buf*** @search_neighbours.ns_buf, align 8, !tbaa !3
  %cmp358689 = icmp sgt i32 %1, 0
  br i1 %cmp358689, label %for.body360, label %if.end367

for.body360:                                      ; preds = %if.then355, %for.body360
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body360 ], [ 0, %if.then355 ]
  %call361 = call i8* @save_calloc(i8* getelementptr inbounds ([10 x i8]* @.str16, i64 0, i64 0), i8* getelementptr inbounds ([50 x i8]* @.str2, i64 0, i64 0), i32 1843, i32 27, i32 4104) #8
  %339 = bitcast i8* %call361 to %struct.t_ns_buf*
  %340 = load %struct.t_ns_buf*** @search_neighbours.ns_buf, align 8, !tbaa !3
  %arrayidx363 = getelementptr inbounds %struct.t_ns_buf** %340, i64 %indvars.iv
  store %struct.t_ns_buf* %339, %struct.t_ns_buf** %arrayidx363, align 8, !tbaa !3
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv738 = trunc i64 %indvars.iv.next to i32
  %exitcond739 = icmp eq i32 %lftr.wideiv738, %1
  br i1 %exitcond739, label %for.cond357.if.end367.loopexit_crit_edge, label %for.body360

for.cond357.if.end367.loopexit_crit_edge:         ; preds = %for.body360
  %.pre762.pre = load %struct.t_ns_buf*** @search_neighbours.ns_buf, align 8, !tbaa !3
  br label %if.end367

if.end367:                                        ; preds = %if.then355, %for.cond357.if.end367.loopexit_crit_edge, %if.else352
  %341 = phi %struct.t_ns_buf** [ %337, %if.else352 ], [ %.pre762.pre, %for.cond357.if.end367.loopexit_crit_edge ], [ %338, %if.then355 ]
  %arraydecay368 = getelementptr inbounds [3 x float]* %box_size, i64 0, i64 0
  %342 = load i64** @search_neighbours.bexcl, align 8, !tbaa !3
  %343 = load i32** @search_neighbours.bHaveLJ, align 8, !tbaa !3
  %344 = bitcast [3 x float]* %b_inv.i to i8*
  call void @llvm.lifetime.start(i64 12, i8* %344) #6
  %arrayidx.i = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 3, i64 0
  %excl1.i = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 2, i32 9
  %345 = load i32** @ns_simple_core.aaj, align 8, !tbaa !3
  %cmp.i = icmp eq i32* %345, null
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.end367
  %nr.i = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 3, i64 0, i32 1
  %346 = load i32* %nr.i, align 4, !tbaa !0
  %mul.i537 = shl nsw i32 %346, 1
  %call.i = call i8* @save_calloc(i8* getelementptr inbounds ([4 x i8]* @.str17, i64 0, i64 0), i8* getelementptr inbounds ([50 x i8]* @.str2, i64 0, i64 0), i32 1138, i32 %mul.i537, i32 4) #8
  %347 = bitcast i8* %call.i to i32*
  store i32* %347, i32** @ns_simple_core.aaj, align 8, !tbaa !3
  %348 = load i32* %nr.i, align 4, !tbaa !0
  %cmp3237.i = icmp sgt i32 %348, 0
  br i1 %cmp3237.i, label %for.body.i, label %if.end.i

for.body.i:                                       ; preds = %if.then.i, %for.body.i
  %indvars.iv257.i = phi i64 [ %indvars.iv.next258.i, %for.body.i ], [ 0, %if.then.i ]
  %arrayidx4.i = getelementptr inbounds i32* %347, i64 %indvars.iv257.i
  %349 = trunc i64 %indvars.iv257.i to i32
  store i32 %349, i32* %arrayidx4.i, align 4, !tbaa !0
  %350 = load i32* %nr.i, align 4, !tbaa !0
  %add.i538 = add nsw i32 %350, %349
  %idxprom6.i = sext i32 %add.i538 to i64
  %arrayidx7.i = getelementptr inbounds i32* %347, i64 %idxprom6.i
  store i32 %349, i32* %arrayidx7.i, align 4, !tbaa !0
  %indvars.iv.next258.i = add i64 %indvars.iv257.i, 1
  %351 = load i32* %nr.i, align 4, !tbaa !0
  %352 = trunc i64 %indvars.iv.next258.i to i32
  %cmp3.i = icmp slt i32 %352, %351
  br i1 %cmp3.i, label %for.body.i, label %if.end.i

if.end.i:                                         ; preds = %for.body.i, %if.then.i, %if.end367
  %rlist.i = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 1
  %353 = load float* %rlist.i, align 4, !tbaa !4
  %mul.i.i = fmul float %353, %353
  %354 = load i32* %ePBC, align 4, !tbaa !0
  %cmp9.i = icmp ne i32 %354, 1
  br i1 %cmp9.i, label %for.body14.i, label %if.end23.i

for.body14.i:                                     ; preds = %_divide.exit.i, %if.end.i
  %indvars.iv253.i = phi i64 [ 0, %if.end.i ], [ %indvars.iv.next254.i, %_divide.exit.i ]
  %arrayidx16.i = getelementptr inbounds [3 x float]* %box_size, i64 0, i64 %indvars.iv253.i
  %355 = load float* %arrayidx16.i, align 4, !tbaa !4
  %conv.i.i = fpext float %355 to double
  %cmp.i.i = fcmp olt double %conv.i.i, 1.200000e-38
  br i1 %cmp.i.i, label %if.then.i.i, label %_divide.exit.i

if.then.i.i:                                      ; preds = %for.body14.i
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([35 x i8]* @.str26, i64 0, i64 0), i8* getelementptr inbounds ([50 x i8]* @.str2, i64 0, i64 0), i32 1149) #8
  br label %_divide.exit.i

_divide.exit.i:                                   ; preds = %if.then.i.i, %for.body14.i
  %div.i.i = fdiv float 1.000000e+00, %355
  %arrayidx19.i = getelementptr inbounds [3 x float]* %b_inv.i, i64 0, i64 %indvars.iv253.i
  store float %div.i.i, float* %arrayidx19.i, align 4, !tbaa !4
  %indvars.iv.next254.i = add i64 %indvars.iv253.i, 1
  %lftr.wideiv736 = trunc i64 %indvars.iv.next254.i to i32
  %exitcond737 = icmp eq i32 %lftr.wideiv736, 3
  br i1 %exitcond737, label %if.end23.i, label %for.body14.i

if.end23.i:                                       ; preds = %_divide.exit.i, %if.end.i
  %arrayidx25.i = getelementptr inbounds [3 x float]* %box, i64 1, i64 0
  %356 = load float* %arrayidx25.i, align 4, !tbaa !4
  %fabsf.i = call float @fabsf(float %356) #9
  %357 = fpext float %fabsf.i to double
  %cmp28.i = fcmp ogt double %357, 1.200000e-38
  br i1 %cmp28.i, label %lor.end.i, label %lor.lhs.false.i

lor.lhs.false.i:                                  ; preds = %if.end23.i
  %arrayidx31.i = getelementptr inbounds [3 x float]* %box, i64 2, i64 0
  %358 = load float* %arrayidx31.i, align 4, !tbaa !4
  %fabsf184.i = call float @fabsf(float %358) #9
  %359 = fpext float %fabsf184.i to double
  %cmp34.i = fcmp ogt double %359, 1.200000e-38
  br i1 %cmp34.i, label %lor.end.i, label %lor.rhs.i

lor.rhs.i:                                        ; preds = %lor.lhs.false.i
  %arrayidx37.i = getelementptr inbounds [3 x float]* %box, i64 2, i64 1
  %360 = load float* %arrayidx37.i, align 4, !tbaa !4
  %fabsf185.i = call float @fabsf(float %360) #9
  %361 = fpext float %fabsf185.i to double
  %cmp40.i = fcmp ogt double %361, 1.200000e-38
  br label %lor.end.i

lor.end.i:                                        ; preds = %lor.rhs.i, %lor.lhs.false.i, %if.end23.i
  %362 = phi i1 [ true, %lor.lhs.false.i ], [ true, %if.end23.i ], [ %cmp40.i, %lor.rhs.i ]
  %cg0.i = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 35
  %363 = load i32* %cg0.i, align 4, !tbaa !0
  %hcg.i = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 36
  %364 = load i32* %hcg.i, align 4, !tbaa !0
  %cmp43232.i = icmp slt i32 %363, %364
  br i1 %cmp43232.i, label %for.body45.lr.ph.i, label %for.body.i.preheader.i

for.body45.lr.ph.i:                               ; preds = %lor.end.i
  %eg_excl.i = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 66
  %index.i = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 3, i64 0, i32 2
  %cENER.i = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 15
  %nr59.i = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 3, i64 0, i32 1
  %cg_cm.i = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 47
  %arraydecay.i = getelementptr inbounds [3 x float]* %b_inv.i, i64 0, i64 0
  %arrayidx8.i.i.i = getelementptr inbounds [3 x float]* %b_inv.i, i64 0, i64 2
  %arrayidx12.i.i.i = getelementptr inbounds [3 x float]* %box, i64 2, i64 2
  %arrayidx17.i.i.i = getelementptr inbounds [3 x float]* %box, i64 2, i64 1
  %arrayidx22.i.i.i = getelementptr inbounds [3 x float]* %box, i64 2, i64 0
  %arrayidx25.i.i.i = getelementptr inbounds [3 x float]* %b_inv.i, i64 0, i64 1
  %arrayidx32.i.i.i = getelementptr inbounds [3 x float]* %box, i64 1, i64 1
  %arrayidx47.i.i.i = getelementptr inbounds [3 x float]* %box, i64 0, i64 0
  %365 = load float* %arrayidx8.i.i.i, align 4, !tbaa !4
  %366 = load float* %arrayidx25.i.i.i, align 4, !tbaa !4
  %367 = load float* %arraydecay.i, align 4, !tbaa !4
  %cmp74230.i = icmp sgt i32 %1, 0
  %arrayidx24.i.i.i = getelementptr inbounds [3 x float]* %box_size, i64 0, i64 1
  %arrayidx28.i.i.i = getelementptr inbounds [3 x float]* %box_size, i64 0, i64 2
  %conv37.i.i = fpext float %mul.i.i to double
  %cmp38.i.i = fcmp olt double %conv37.i.i, 1.200000e-38
  %368 = sext i32 %363 to i64
  br label %for.body45.i

for.body.i.preheader.i:                           ; preds = %for.end99.i, %lor.end.i
  %nsearch.0.lcssa.i = phi i32 [ 0, %lor.end.i ], [ %add72.i, %for.end99.i ]
  br label %for.body.i.i

for.body45.i:                                     ; preds = %for.end99.i, %for.body45.lr.ph.i
  %indvars.iv251.i = phi i64 [ %368, %for.body45.lr.ph.i ], [ %indvars.iv.next252.i, %for.end99.i ]
  %nsearch.0235.i = phi i32 [ 0, %for.body45.lr.ph.i ], [ %add72.i, %for.end99.i ]
  %369 = load i32** %eg_excl.i, align 8, !tbaa !3
  %370 = load i32** %index.i, align 8, !tbaa !3
  %arrayidx47.i = getelementptr inbounds i32* %370, i64 %indvars.iv251.i
  %371 = load i32* %arrayidx47.i, align 4, !tbaa !0
  %idxprom48.i = sext i32 %371 to i64
  %372 = load i16** %cENER.i, align 8, !tbaa !3
  %arrayidx49.i = getelementptr inbounds i16* %372, i64 %idxprom48.i
  %373 = load i16* %arrayidx49.i, align 2, !tbaa !5
  %conv50.i = zext i16 %373 to i32
  %mul51.i = mul nsw i32 %conv50.i, %1
  %idx.ext.i = sext i32 %mul51.i to i64
  %indvars.iv.next252.i = add i64 %indvars.iv251.i, 1
  %arrayidx58.i = getelementptr inbounds i32* %370, i64 %indvars.iv.next252.i
  %374 = load i32* %arrayidx58.i, align 4, !tbaa !0
  call fastcc void @setexcl(i32 %371, i32 %374, %struct.t_block* %excl1.i, i32 1, i64* %342) #8
  %375 = load i32* %nr59.i, align 4, !tbaa !0
  %376 = trunc i64 %indvars.iv251.i to i32
  %call60.i = call i32 @calc_naaj(i32 %376, i32 %375) #8
  %377 = load [3 x float]** %cg_cm.i, align 8, !tbaa !3
  %378 = load i32** @ns_simple_core.aaj, align 8, !tbaa !3
  %379 = load i16** %cENER.i, align 8, !tbaa !3
  %380 = load i32** %index.i, align 8, !tbaa !3
  %cmp36.i.i = icmp sgt i32 %call60.i, 0
  br i1 %362, label %if.then62.i, label %if.else.i

if.then62.i:                                      ; preds = %for.body45.i
  br i1 %cmp36.i.i, label %for.body.lr.ph.i.i, label %if.end71.i

for.body.lr.ph.i.i:                               ; preds = %if.then62.i
  %arraydecay.i.i = getelementptr inbounds [3 x float]* %377, i64 %indvars.iv251.i, i64 0
  %arrayidx1.i.i.i = getelementptr inbounds [3 x float]* %377, i64 %indvars.iv251.i, i64 2
  %arrayidx3.i.i.i = getelementptr inbounds [3 x float]* %377, i64 %indvars.iv251.i, i64 1
  br label %for.body.i187.i

for.body.i187.i:                                  ; preds = %for.inc.i.i, %for.body.lr.ph.i.i
  %indvars.iv.i186.i = phi i64 [ 0, %for.body.lr.ph.i.i ], [ %indvars.iv.next.i190.i, %for.inc.i.i ]
  %arrayidx64.sum225.i = add i64 %indvars.iv.i186.i, %indvars.iv251.i
  %arrayidx.i.i = getelementptr inbounds i32* %378, i64 %arrayidx64.sum225.i
  %381 = load i32* %arrayidx.i.i, align 4, !tbaa !0
  %add.i.i = add nsw i32 %381, 1
  %idxprom1.i.i = sext i32 %add.i.i to i64
  %arrayidx2.i.i = getelementptr inbounds i32* %380, i64 %idxprom1.i.i
  %382 = load i32* %arrayidx2.i.i, align 4, !tbaa !0
  %idxprom3.i.i = sext i32 %381 to i64
  %arrayidx4.i.i = getelementptr inbounds i32* %380, i64 %idxprom3.i.i
  %383 = load i32* %arrayidx4.i.i, align 4, !tbaa !0
  %sub.i.i = sub nsw i32 %382, %383
  %arraydecay9.i.i = getelementptr inbounds [3 x float]* %377, i64 %idxprom3.i.i, i64 0
  %arrayidx.i.i.i = getelementptr inbounds [3 x float]* %377, i64 %idxprom3.i.i, i64 2
  %384 = load float* %arrayidx.i.i.i, align 4, !tbaa !4
  %385 = load float* %arrayidx1.i.i.i, align 4, !tbaa !4
  %sub.i.i.i = fsub float %384, %385
  %arrayidx2.i.i.i = getelementptr inbounds [3 x float]* %377, i64 %idxprom3.i.i, i64 1
  %386 = load float* %arrayidx2.i.i.i, align 4, !tbaa !4
  %387 = load float* %arrayidx3.i.i.i, align 4, !tbaa !4
  %sub4.i.i.i = fsub float %386, %387
  %388 = load float* %arraydecay9.i.i, align 4, !tbaa !4
  %389 = load float* %arraydecay.i.i, align 4, !tbaa !4
  %sub7.i.i.i = fsub float %388, %389
  %mul.i.i.i = fmul float %365, %sub.i.i.i
  %add.i.i.i = fadd float %mul.i.i.i, 2.500000e+00
  %conv.i.i.i = fptosi float %add.i.i.i to i32
  %sub9.i.i.i = add nsw i32 %conv.i.i.i, -2
  %conv10.i.i.i = sitofp i32 %sub9.i.i.i to float
  %390 = load float* %arrayidx12.i.i.i, align 4, !tbaa !4
  %mul13.i.i.i = fmul float %390, %conv10.i.i.i
  %sub14.i.i.i = fsub float %sub.i.i.i, %mul13.i.i.i
  %391 = load float* %arrayidx17.i.i.i, align 4, !tbaa !4
  %mul18.i.i.i = fmul float %391, %conv10.i.i.i
  %sub19.i.i.i = fsub float %sub4.i.i.i, %mul18.i.i.i
  %392 = load float* %arrayidx22.i.i.i, align 4, !tbaa !4
  %mul23.i.i.i = fmul float %conv10.i.i.i, %392
  %sub24.i.i.i = fsub float %sub7.i.i.i, %mul23.i.i.i
  %mul26.i.i.i = fmul float %366, %sub19.i.i.i
  %add27.i.i.i = fadd float %mul26.i.i.i, 2.500000e+00
  %conv28.i.i.i = fptosi float %add27.i.i.i to i32
  %sub29.i.i.i = add nsw i32 %conv28.i.i.i, -2
  %conv30.i.i.i = sitofp i32 %sub29.i.i.i to float
  %393 = load float* %arrayidx32.i.i.i, align 4, !tbaa !4
  %mul33.i.i.i = fmul float %393, %conv30.i.i.i
  %sub34.i.i.i = fsub float %sub19.i.i.i, %mul33.i.i.i
  %394 = load float* %arrayidx25.i, align 4, !tbaa !4
  %mul38.i.i.i = fmul float %394, %conv30.i.i.i
  %sub39.i.i.i = fsub float %sub24.i.i.i, %mul38.i.i.i
  %mul41.i.i.i = fmul float %367, %sub39.i.i.i
  %add42.i.i.i = fadd float %mul41.i.i.i, 2.500000e+00
  %conv43.i.i.i = fptosi float %add42.i.i.i to i32
  %sub44.i.i.i = add nsw i32 %conv43.i.i.i, -2
  %conv45.i.i.i = sitofp i32 %sub44.i.i.i to float
  %395 = load float* %arrayidx47.i.i.i, align 4, !tbaa !4
  %mul48.i.i.i = fmul float %395, %conv45.i.i.i
  %sub49.i.i.i = fsub float %sub39.i.i.i, %mul48.i.i.i
  %mul50.i.i.i = fmul float %sub49.i.i.i, %sub49.i.i.i
  %mul51.i.i.i = fmul float %sub34.i.i.i, %sub34.i.i.i
  %add52.i.i.i = fadd float %mul51.i.i.i, %mul50.i.i.i
  %mul53.i.i.i = fmul float %sub14.i.i.i, %sub14.i.i.i
  %add54.i.i.i = fadd float %mul53.i.i.i, %add52.i.i.i
  %396 = mul i32 %conv.i.i.i, 3
  %mul56.i.i.i = add i32 %396, -3
  %add57.i.i.i = add nsw i32 %mul56.i.i.i, %sub29.i.i.i
  %397 = mul i32 %add57.i.i.i, 3
  %add60.i.i.i = add i32 %397, 4
  %add61.i.i.i = add i32 %add60.i.i.i, %sub44.i.i.i
  %cmp10.i.i = fcmp olt float %add54.i.i.i, %mul.i.i
  br i1 %cmp10.i.i, label %if.then.i188.i, label %for.inc.i.i

if.then.i188.i:                                   ; preds = %for.body.i187.i
  %idxprom13.i.i = sext i32 %383 to i64
  %arrayidx14.i.i = getelementptr inbounds i16* %379, i64 %idxprom13.i.i
  %398 = load i16* %arrayidx14.i.i, align 2, !tbaa !5
  %idxprom15.i.i = zext i16 %398 to i64
  %add.ptr.sum226.i = add i64 %idxprom15.i.i, %idx.ext.i
  %arrayidx16.i.i = getelementptr inbounds i32* %369, i64 %add.ptr.sum226.i
  %399 = load i32* %arrayidx16.i.i, align 4, !tbaa !0
  %tobool.i.i = icmp eq i32 %399, 0
  br i1 %tobool.i.i, label %if.then17.i.i, label %for.inc.i.i

if.then17.i.i:                                    ; preds = %if.then.i188.i
  %conv.i189.i = zext i16 %398 to i32
  %idxprom18.i.i = sext i32 %add61.i.i.i to i64
  %arrayidx20.i.i = getelementptr inbounds %struct.t_ns_buf** %341, i64 %idxprom15.i.i
  %400 = load %struct.t_ns_buf** %arrayidx20.i.i, align 8, !tbaa !3
  %arrayidx21.i.i = getelementptr inbounds %struct.t_ns_buf* %400, i64 %idxprom18.i.i
  call fastcc void @add_simple(%struct.t_ns_buf* %arrayidx21.i.i, i32 %sub.i.i, i32 %381, i32* %343, i32 %1, %struct.t_mdatoms* %md, i32 %376, i32 %conv.i189.i, %struct.t_block* %arrayidx.i, i64* %342, i32 %add61.i.i.i, %struct.t_forcerec* %fr) #8
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.then17.i.i, %if.then.i188.i, %for.body.i187.i
  %indvars.iv.next.i190.i = add i64 %indvars.iv.i186.i, 1
  %lftr.wideiv730 = trunc i64 %indvars.iv.next.i190.i to i32
  %exitcond731 = icmp eq i32 %lftr.wideiv730, %call60.i
  br i1 %exitcond731, label %if.end71.i, label %for.body.i187.i

if.else.i:                                        ; preds = %for.body45.i
  br i1 %cmp9.i, label %for.cond.preheader.i.i, label %for.cond25.preheader.i.i

for.cond.preheader.i.i:                           ; preds = %if.else.i
  br i1 %cmp36.i.i, label %for.body.lr.ph.i198.i, label %if.end71.i

for.body.lr.ph.i198.i:                            ; preds = %for.cond.preheader.i.i
  %arraydecay.i196.i = getelementptr inbounds [3 x float]* %377, i64 %indvars.iv251.i, i64 0
  %arrayidx3.i.i197.i = getelementptr inbounds [3 x float]* %377, i64 %indvars.iv251.i, i64 1
  %arrayidx6.i.i.i = getelementptr inbounds [3 x float]* %377, i64 %indvars.iv251.i, i64 2
  br label %for.body.i216.i

for.cond25.preheader.i.i:                         ; preds = %if.else.i
  br i1 %cmp36.i.i, label %for.body28.lr.ph.i.i, label %if.end71.i

for.body28.lr.ph.i.i:                             ; preds = %for.cond25.preheader.i.i
  %arraydecay42.i.i = getelementptr inbounds [3 x float]* %377, i64 %indvars.iv251.i, i64 0
  %arrayidx3.i115.i.i = getelementptr inbounds [3 x float]* %377, i64 %indvars.iv251.i, i64 1
  %arrayidx7.i.i.i = getelementptr inbounds [3 x float]* %377, i64 %indvars.iv251.i, i64 2
  br label %for.body28.i.i

for.body.i216.i:                                  ; preds = %for.inc.i218.i, %for.body.lr.ph.i198.i
  %indvars.iv124.i.i = phi i64 [ 0, %for.body.lr.ph.i198.i ], [ %indvars.iv.next125.i.i, %for.inc.i218.i ]
  %arrayidx64.sum.i = add i64 %indvars.iv124.i.i, %indvars.iv251.i
  %arrayidx.i199.i = getelementptr inbounds i32* %378, i64 %arrayidx64.sum.i
  %401 = load i32* %arrayidx.i199.i, align 4, !tbaa !0
  %add.i200.i = add nsw i32 %401, 1
  %idxprom1.i201.i = sext i32 %add.i200.i to i64
  %arrayidx2.i202.i = getelementptr inbounds i32* %380, i64 %idxprom1.i201.i
  %402 = load i32* %arrayidx2.i202.i, align 4, !tbaa !0
  %idxprom3.i203.i = sext i32 %401 to i64
  %arrayidx4.i204.i = getelementptr inbounds i32* %380, i64 %idxprom3.i203.i
  %403 = load i32* %arrayidx4.i204.i, align 4, !tbaa !0
  %sub.i205.i = sub nsw i32 %402, %403
  %arraydecay9.i206.i = getelementptr inbounds [3 x float]* %377, i64 %idxprom3.i203.i, i64 0
  %404 = load float* %arraydecay9.i206.i, align 4, !tbaa !4
  %405 = load float* %arraydecay.i196.i, align 4, !tbaa !4
  %sub.i.i207.i = fsub float %404, %405
  %arrayidx2.i.i208.i = getelementptr inbounds [3 x float]* %377, i64 %idxprom3.i203.i, i64 1
  %406 = load float* %arrayidx2.i.i208.i, align 4, !tbaa !4
  %407 = load float* %arrayidx3.i.i197.i, align 4, !tbaa !4
  %sub4.i.i209.i = fsub float %406, %407
  %arrayidx5.i.i.i = getelementptr inbounds [3 x float]* %377, i64 %idxprom3.i203.i, i64 2
  %408 = load float* %arrayidx5.i.i.i, align 4, !tbaa !4
  %409 = load float* %arrayidx6.i.i.i, align 4, !tbaa !4
  %sub7.i.i210.i = fsub float %408, %409
  %mul.i.i211.i = fmul float %367, %sub.i.i207.i
  %add.i.i212.i = fadd float %mul.i.i211.i, 1.500000e+00
  %conv.i.i213.i = fptosi float %add.i.i212.i to i32
  %mul10.i.i.i = fmul float %366, %sub4.i.i209.i
  %add11.i.i.i = fadd float %mul10.i.i.i, 1.500000e+00
  %conv12.i.i.i = fptosi float %add11.i.i.i to i32
  %mul14.i.i.i = fmul float %365, %sub7.i.i210.i
  %add15.i.i.i = fadd float %mul14.i.i.i, 1.500000e+00
  %conv16.i.i.i = fptosi float %add15.i.i.i to i32
  %dec.i.i.i = add nsw i32 %conv.i.i213.i, -1
  %dec17.i.i.i = add nsw i32 %conv12.i.i.i, -1
  %dec18.i.i.i = add nsw i32 %conv16.i.i.i, -1
  %conv19.i.i.i = sitofp i32 %dec.i.i.i to float
  %410 = load float* %arraydecay368, align 4, !tbaa !4
  %mul21.i.i.i = fmul float %410, %conv19.i.i.i
  %sub22.i.i.i = fsub float %mul21.i.i.i, %sub.i.i207.i
  %conv23.i.i.i = sitofp i32 %dec17.i.i.i to float
  %411 = load float* %arrayidx24.i.i.i, align 4, !tbaa !4
  %mul25.i.i.i = fmul float %411, %conv23.i.i.i
  %sub26.i.i.i = fsub float %mul25.i.i.i, %sub4.i.i209.i
  %conv27.i.i.i = sitofp i32 %dec18.i.i.i to float
  %412 = load float* %arrayidx28.i.i.i, align 4, !tbaa !4
  %mul29.i.i.i = fmul float %412, %conv27.i.i.i
  %sub30.i.i.i = fsub float %mul29.i.i.i, %sub7.i.i210.i
  %mul31.i.i.i = fmul float %sub22.i.i.i, %sub22.i.i.i
  %mul32.i.i.i = fmul float %sub26.i.i.i, %sub26.i.i.i
  %add33.i.i.i = fadd float %mul31.i.i.i, %mul32.i.i.i
  %mul34.i.i.i = fmul float %sub30.i.i.i, %sub30.i.i.i
  %add35.i.i.i = fadd float %add33.i.i.i, %mul34.i.i.i
  %mul37.i.i.i = mul nsw i32 %conv16.i.i.i, 3
  %add39.i.i.i = add i32 %mul37.i.i.i, %conv12.i.i.i
  %mul40.i.i.i = mul nsw i32 %add39.i.i.i, 3
  %add42.i.i214.i = add i32 %mul40.i.i.i, %conv.i.i213.i
  %cmp10.i215.i = fcmp olt float %add35.i.i.i, %mul.i.i
  br i1 %cmp10.i215.i, label %if.then11.i.i, label %for.inc.i218.i

if.then11.i.i:                                    ; preds = %for.body.i216.i
  %idxprom14.i.i = sext i32 %403 to i64
  %arrayidx15.i.i = getelementptr inbounds i16* %379, i64 %idxprom14.i.i
  %413 = load i16* %arrayidx15.i.i, align 2, !tbaa !5
  %idxprom16.i.i = zext i16 %413 to i64
  %add.ptr.sum.i = add i64 %idxprom16.i.i, %idx.ext.i
  %arrayidx17.i.i = getelementptr inbounds i32* %369, i64 %add.ptr.sum.i
  %414 = load i32* %arrayidx17.i.i, align 4, !tbaa !0
  %tobool18.i.i = icmp eq i32 %414, 0
  br i1 %tobool18.i.i, label %if.then19.i.i, label %for.inc.i218.i

if.then19.i.i:                                    ; preds = %if.then11.i.i
  %conv.i217.i = zext i16 %413 to i32
  %idxprom20.i.i = sext i32 %add42.i.i214.i to i64
  %arrayidx22.i.i = getelementptr inbounds %struct.t_ns_buf** %341, i64 %idxprom16.i.i
  %415 = load %struct.t_ns_buf** %arrayidx22.i.i, align 8, !tbaa !3
  %arrayidx23.i.i = getelementptr inbounds %struct.t_ns_buf* %415, i64 %idxprom20.i.i
  call fastcc void @add_simple(%struct.t_ns_buf* %arrayidx23.i.i, i32 %sub.i205.i, i32 %401, i32* %343, i32 %1, %struct.t_mdatoms* %md, i32 %376, i32 %conv.i217.i, %struct.t_block* %arrayidx.i, i64* %342, i32 %add42.i.i214.i, %struct.t_forcerec* %fr) #8
  br label %for.inc.i218.i

for.inc.i218.i:                                   ; preds = %if.then19.i.i, %if.then11.i.i, %for.body.i216.i
  %indvars.iv.next125.i.i = add i64 %indvars.iv124.i.i, 1
  %lftr.wideiv728 = trunc i64 %indvars.iv.next125.i.i to i32
  %exitcond729 = icmp eq i32 %lftr.wideiv728, %call60.i
  br i1 %exitcond729, label %if.end71.i, label %for.body.i216.i

for.body28.i.i:                                   ; preds = %for.inc64.i.i, %for.body28.lr.ph.i.i
  %indvars.iv.i219.i = phi i64 [ 0, %for.body28.lr.ph.i.i ], [ %indvars.iv.next.i220.i, %for.inc64.i.i ]
  %arrayidx64.sum223.i = add i64 %indvars.iv.i219.i, %indvars.iv251.i
  %arrayidx30.i.i = getelementptr inbounds i32* %378, i64 %arrayidx64.sum223.i
  %416 = load i32* %arrayidx30.i.i, align 4, !tbaa !0
  %add31.i.i = add nsw i32 %416, 1
  %idxprom32.i.i = sext i32 %add31.i.i to i64
  %arrayidx33.i.i = getelementptr inbounds i32* %380, i64 %idxprom32.i.i
  %417 = load i32* %arrayidx33.i.i, align 4, !tbaa !0
  %idxprom34.i.i = sext i32 %416 to i64
  %arrayidx35.i.i = getelementptr inbounds i32* %380, i64 %idxprom34.i.i
  %418 = load i32* %arrayidx35.i.i, align 4, !tbaa !0
  %sub36.i.i = sub nsw i32 %417, %418
  br i1 %cmp38.i.i, label %if.then49.i.i, label %lor.lhs.false.i.i

lor.lhs.false.i.i:                                ; preds = %for.body28.i.i
  %arraydecay45.i.i = getelementptr inbounds [3 x float]* %377, i64 %idxprom34.i.i, i64 0
  %419 = load float* %arraydecay45.i.i, align 4, !tbaa !4
  %420 = load float* %arraydecay42.i.i, align 4, !tbaa !4
  %sub.i113.i.i = fsub float %419, %420
  %mul.i.i.i.i = fmul float %sub.i113.i.i, %sub.i113.i.i
  %arrayidx2.i114.i.i = getelementptr inbounds [3 x float]* %377, i64 %idxprom34.i.i, i64 1
  %421 = load float* %arrayidx2.i114.i.i, align 4, !tbaa !4
  %422 = load float* %arrayidx3.i115.i.i, align 4, !tbaa !4
  %sub4.i116.i.i = fsub float %421, %422
  %mul.i16.i.i.i = fmul float %sub4.i116.i.i, %sub4.i116.i.i
  %add.i117.i.i = fadd float %mul.i.i.i.i, %mul.i16.i.i.i
  %arrayidx6.i118.i.i = getelementptr inbounds [3 x float]* %377, i64 %idxprom34.i.i, i64 2
  %423 = load float* %arrayidx6.i118.i.i, align 4, !tbaa !4
  %424 = load float* %arrayidx7.i.i.i, align 4, !tbaa !4
  %sub8.i.i.i = fsub float %423, %424
  %mul.i15.i.i.i = fmul float %sub8.i.i.i, %sub8.i.i.i
  %add10.i.i.i = fadd float %add.i117.i.i, %mul.i15.i.i.i
  %cmp47.i.i = fcmp olt float %add10.i.i.i, %mul.i.i
  br i1 %cmp47.i.i, label %if.then49.i.i, label %for.inc64.i.i

if.then49.i.i:                                    ; preds = %lor.lhs.false.i.i, %for.body28.i.i
  %idxprom52.i.i = sext i32 %418 to i64
  %arrayidx53.i.i = getelementptr inbounds i16* %379, i64 %idxprom52.i.i
  %425 = load i16* %arrayidx53.i.i, align 2, !tbaa !5
  %idxprom55.i.i = zext i16 %425 to i64
  %add.ptr.sum224.i = add i64 %idxprom55.i.i, %idx.ext.i
  %arrayidx56.i.i = getelementptr inbounds i32* %369, i64 %add.ptr.sum224.i
  %426 = load i32* %arrayidx56.i.i, align 4, !tbaa !0
  %tobool57.i.i = icmp eq i32 %426, 0
  br i1 %tobool57.i.i, label %if.then58.i.i, label %for.inc64.i.i

if.then58.i.i:                                    ; preds = %if.then49.i.i
  %conv54.i.i = zext i16 %425 to i32
  %arrayidx60.i.i = getelementptr inbounds %struct.t_ns_buf** %341, i64 %idxprom55.i.i
  %427 = load %struct.t_ns_buf** %arrayidx60.i.i, align 8, !tbaa !3
  %arrayidx61.i.i = getelementptr inbounds %struct.t_ns_buf* %427, i64 13
  call fastcc void @add_simple(%struct.t_ns_buf* %arrayidx61.i.i, i32 %sub36.i.i, i32 %416, i32* %343, i32 %1, %struct.t_mdatoms* %md, i32 %376, i32 %conv54.i.i, %struct.t_block* %arrayidx.i, i64* %342, i32 13, %struct.t_forcerec* %fr) #8
  br label %for.inc64.i.i

for.inc64.i.i:                                    ; preds = %if.then58.i.i, %if.then49.i.i, %lor.lhs.false.i.i
  %indvars.iv.next.i220.i = add i64 %indvars.iv.i219.i, 1
  %lftr.wideiv726 = trunc i64 %indvars.iv.next.i220.i to i32
  %exitcond727 = icmp eq i32 %lftr.wideiv726, %call60.i
  br i1 %exitcond727, label %if.end71.i, label %for.body28.i.i

if.end71.i:                                       ; preds = %for.inc.i.i, %for.inc.i218.i, %for.inc64.i.i, %for.cond25.preheader.i.i, %for.cond.preheader.i.i, %if.then62.i
  %add72.i = add nsw i32 %call60.i, %nsearch.0235.i
  br i1 %cmp74230.i, label %for.cond77.preheader.i, label %for.end99.i

for.cond77.preheader.i:                           ; preds = %if.end71.i, %for.inc97.i
  %indvars.iv247.i = phi i64 [ %indvars.iv.next248.i, %for.inc97.i ], [ 0, %if.end71.i ]
  %arrayidx83.i = getelementptr inbounds %struct.t_ns_buf** %341, i64 %indvars.iv247.i
  %428 = trunc i64 %indvars.iv247.i to i32
  br label %for.body80.i

for.body80.i:                                     ; preds = %for.inc94.i, %for.cond77.preheader.i
  %indvars.iv.i = phi i64 [ 0, %for.cond77.preheader.i ], [ %indvars.iv.next.i, %for.inc94.i ]
  %429 = load %struct.t_ns_buf** %arrayidx83.i, align 8, !tbaa !3
  %ncg.i = getelementptr inbounds %struct.t_ns_buf* %429, i64 %indvars.iv.i, i32 0
  %430 = load i32* %ncg.i, align 4, !tbaa !0
  %cmp85.i = icmp sgt i32 %430, 0
  br i1 %cmp85.i, label %if.then87.i, label %for.inc94.i

if.then87.i:                                      ; preds = %for.body80.i
  %arraydecay90.i = getelementptr inbounds %struct.t_ns_buf* %429, i64 %indvars.iv.i, i32 2, i64 0
  %431 = load i32** %index.i, align 8, !tbaa !3
  %432 = trunc i64 %indvars.iv.i to i32
  call fastcc void @put_in_list(i32* %343, i32 %1, %struct.t_mdatoms* %md, i32 %376, i32 %428, i32 %430, i32* %arraydecay90.i, i32* %431, i64* %342, i32 %432, %struct.t_forcerec* %fr, i32 0, i32 0, i32 0) #8
  %nj.i = getelementptr inbounds %struct.t_ns_buf* %429, i64 %indvars.iv.i, i32 1
  store i32 0, i32* %nj.i, align 4, !tbaa !0
  store i32 0, i32* %ncg.i, align 4, !tbaa !0
  br label %for.inc94.i

for.inc94.i:                                      ; preds = %if.then87.i, %for.body80.i
  %indvars.iv.next.i = add i64 %indvars.iv.i, 1
  %lftr.wideiv732 = trunc i64 %indvars.iv.next.i to i32
  %exitcond733 = icmp eq i32 %lftr.wideiv732, 27
  br i1 %exitcond733, label %for.inc97.i, label %for.body80.i

for.inc97.i:                                      ; preds = %for.inc94.i
  %indvars.iv.next248.i = add i64 %indvars.iv247.i, 1
  %lftr.wideiv734 = trunc i64 %indvars.iv.next248.i to i32
  %exitcond735 = icmp eq i32 %lftr.wideiv734, %1
  br i1 %exitcond735, label %for.end99.i, label %for.cond77.preheader.i

for.end99.i:                                      ; preds = %for.inc97.i, %if.end71.i
  %433 = load i32** %index.i, align 8, !tbaa !3
  %arrayidx102.i = getelementptr inbounds i32* %433, i64 %indvars.iv251.i
  %434 = load i32* %arrayidx102.i, align 4, !tbaa !0
  %arrayidx106.i = getelementptr inbounds i32* %433, i64 %indvars.iv.next252.i
  %435 = load i32* %arrayidx106.i, align 4, !tbaa !0
  call fastcc void @setexcl(i32 %434, i32 %435, %struct.t_block* %excl1.i, i32 0, i64* %342) #8
  %436 = load i32* %hcg.i, align 4, !tbaa !0
  %437 = trunc i64 %indvars.iv.next252.i to i32
  %cmp43.i = icmp slt i32 %437, %436
  br i1 %cmp43.i, label %for.body45.i, label %for.body.i.preheader.i

for.body.i.i:                                     ; preds = %close_nblist.exit26.i.i, %for.body.i.preheader.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %close_nblist.exit26.i.i ], [ 0, %for.body.i.preheader.i ]
  %maxnri.i6.i.i = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 49, i64 %indvars.iv.i.i, i32 2
  %438 = load i32* %maxnri.i6.i.i, align 4, !tbaa !0
  %cmp.i7.i.i = icmp sgt i32 %438, 0
  br i1 %cmp.i7.i.i, label %if.then.i16.i.i, label %close_nblist.exit26.i.i

if.then.i16.i.i:                                  ; preds = %for.body.i.i
  %nri1.i8.i.i = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 49, i64 %indvars.iv.i.i, i32 1
  %439 = load i32* %nri1.i8.i.i, align 4, !tbaa !0
  %add.i9.i.i = add nsw i32 %439, 1
  %idxprom.i10.i.i = sext i32 %add.i9.i.i to i64
  %jindex.i11.i.i = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 49, i64 %indvars.iv.i.i, i32 10
  %440 = load i32** %jindex.i11.i.i, align 8, !tbaa !3
  %arrayidx.i12.i.i = getelementptr inbounds i32* %440, i64 %idxprom.i10.i.i
  %441 = load i32* %arrayidx.i12.i.i, align 4, !tbaa !0
  %idxprom2.i13.i.i = sext i32 %439 to i64
  %arrayidx4.i14.i.i = getelementptr inbounds i32* %440, i64 %idxprom2.i13.i.i
  %442 = load i32* %arrayidx4.i14.i.i, align 4, !tbaa !0
  %cmp5.i15.i.i = icmp sgt i32 %441, %442
  br i1 %cmp5.i15.i.i, label %land.lhs.true.i20.i.i, label %close_nblist.exit26.i.i

land.lhs.true.i20.i.i:                            ; preds = %if.then.i16.i.i
  %gid.i17.i.i = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 49, i64 %indvars.iv.i.i, i32 8
  %443 = load i32** %gid.i17.i.i, align 8, !tbaa !3
  %arrayidx7.i18.i.i = getelementptr inbounds i32* %443, i64 %idxprom2.i13.i.i
  %444 = load i32* %arrayidx7.i18.i.i, align 4, !tbaa !0
  %cmp8.i19.i.i = icmp eq i32 %444, -1
  br i1 %cmp8.i19.i.i, label %close_nblist.exit26.i.i, label %if.then9.i25.i.i

if.then9.i25.i.i:                                 ; preds = %land.lhs.true.i20.i.i
  store i32 %add.i9.i.i, i32* %nri1.i8.i.i, align 4, !tbaa !0
  %nrj.i21.i.i = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 49, i64 %indvars.iv.i.i, i32 3
  %445 = load i32* %nrj.i21.i.i, align 4, !tbaa !0
  %add11.i22.i.i = add nsw i32 %439, 2
  %idxprom12.i23.i.i = sext i32 %add11.i22.i.i to i64
  %arrayidx14.i24.i.i = getelementptr inbounds i32* %440, i64 %idxprom12.i23.i.i
  store i32 %445, i32* %arrayidx14.i24.i.i, align 4, !tbaa !0
  br label %close_nblist.exit26.i.i

close_nblist.exit26.i.i:                          ; preds = %if.then9.i25.i.i, %land.lhs.true.i20.i.i, %if.then.i16.i.i, %for.body.i.i
  %indvars.iv.next.i.i = add i64 %indvars.iv.i.i, 1
  %lftr.wideiv724 = trunc i64 %indvars.iv.next.i.i to i32
  %exitcond725 = icmp eq i32 %lftr.wideiv724, 13
  br i1 %exitcond725, label %if.end370, label %for.body.i.i

if.end370:                                        ; preds = %close_nblist.exit26.i.i, %close_nblist.exit26.i.i680
  %nsearch.0 = phi i32 [ %nns.0.lcssa.i, %close_nblist.exit26.i.i680 ], [ %nsearch.0.lcssa.i, %close_nblist.exit26.i.i ]
  %conv371 = sitofp i32 %nsearch.0 to double
  %arrayidx372 = getelementptr inbounds %struct.t_nrnb* %nrnb, i64 0, i32 0, i64 87
  %446 = load double* %arrayidx372, align 8, !tbaa !6
  %add373 = fadd double %446, %conv371
  store double %add373, double* %arrayidx372, align 8, !tbaa !6
  ret i32 %nsearch.0
}

; Function Attrs: optsize
declare i8* @save_calloc(i8*, i8*, i32, i32, i32) #1

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #4

; Function Attrs: optsize
declare void @init_grid(%struct._IO_FILE*, %struct.t_grid*, i32, [3 x float]*, float, i32) #1

; Function Attrs: optsize
declare void @pr_ivec(%struct._IO_FILE*, i32, i8*, i32*, i32) #1

; Function Attrs: optsize
declare void @grid_first(%struct._IO_FILE*, %struct.t_grid*, [3 x float]*, float) #1

; Function Attrs: optsize
declare void @fill_grid(%struct._IO_FILE*, i32, i32*, %struct.t_grid*, [3 x float]*, i32, i32, i32, [3 x float]*) #1

; Function Attrs: optsize
declare void @mv_grid(%struct.t_commrec*, i32, i32*, %struct.t_grid*, i32*) #1

; Function Attrs: optsize
declare void @calc_elemnr(%struct._IO_FILE*, i32, i32*, %struct.t_grid*, i32, i32, i32) #1

; Function Attrs: optsize
declare void @calc_ptrs(%struct.t_grid*) #1

; Function Attrs: optsize
declare void @grid_last(%struct._IO_FILE*, i32, i32*, %struct.t_grid*, i32, i32, i32) #1

; Function Attrs: optsize
declare void @check_grid(%struct._IO_FILE*, %struct.t_grid*) #1

; Function Attrs: optsize
declare void @print_grid(%struct._IO_FILE*, %struct.t_grid*, i32, i32*) #1

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @setexcl(i32 %start, i32 %end, %struct.t_block* nocapture %excl, i32 %b, i64* nocapture %bexcl) #0 {
entry:
  %tobool = icmp eq i32 %b, 0
  %cmp1567 = icmp slt i32 %start, %end
  br i1 %tobool, label %for.cond14.preheader, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  br i1 %cmp1567, label %for.body.lr.ph, label %if.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %index = getelementptr inbounds %struct.t_block* %excl, i64 0, i32 2
  %0 = load i32** %index, align 8, !tbaa !3
  %a = getelementptr inbounds %struct.t_block* %excl, i64 0, i32 4
  %1 = sext i32 %start to i64
  %arrayidx.phi.trans.insert = getelementptr inbounds i32* %0, i64 %1
  %.pre82 = load i32* %arrayidx.phi.trans.insert, align 4, !tbaa !0
  br label %for.body

for.cond14.preheader:                             ; preds = %entry
  br i1 %cmp1567, label %for.body17.lr.ph, label %if.end

for.body17.lr.ph:                                 ; preds = %for.cond14.preheader
  %index19 = getelementptr inbounds %struct.t_block* %excl, i64 0, i32 2
  %2 = load i32** %index19, align 8, !tbaa !3
  %a33 = getelementptr inbounds %struct.t_block* %excl, i64 0, i32 4
  %3 = sext i32 %start to i64
  %arrayidx20.phi.trans.insert = getelementptr inbounds i32* %2, i64 %3
  %.pre = load i32* %arrayidx20.phi.trans.insert, align 4, !tbaa !0
  br label %for.body17

for.cond.loopexit:                                ; preds = %for.body6, %for.body
  %4 = trunc i64 %indvars.iv.next81 to i32
  %cmp = icmp slt i32 %4, %end
  br i1 %cmp, label %for.body, label %if.end

for.body:                                         ; preds = %for.body.lr.ph, %for.cond.loopexit
  %5 = phi i32 [ %.pre82, %for.body.lr.ph ], [ %6, %for.cond.loopexit ]
  %indvars.iv80 = phi i64 [ %1, %for.body.lr.ph ], [ %indvars.iv.next81, %for.cond.loopexit ]
  %indvars.iv.next81 = add i64 %indvars.iv80, 1
  %arrayidx469 = getelementptr inbounds i32* %0, i64 %indvars.iv.next81
  %6 = load i32* %arrayidx469, align 4, !tbaa !0
  %cmp570 = icmp slt i32 %5, %6
  br i1 %cmp570, label %for.body6.lr.ph, label %for.cond.loopexit

for.body6.lr.ph:                                  ; preds = %for.body
  %7 = trunc i64 %indvars.iv80 to i32
  %sub = sub nsw i32 %7, %start
  %shl = shl i32 1, %sub
  %conv = sext i32 %shl to i64
  %8 = load i32** %a, align 8, !tbaa !3
  %9 = sext i32 %5 to i64
  br label %for.body6

for.body6:                                        ; preds = %for.body6.lr.ph, %for.body6
  %indvars.iv78 = phi i64 [ %9, %for.body6.lr.ph ], [ %indvars.iv.next79, %for.body6 ]
  %arrayidx8 = getelementptr inbounds i32* %8, i64 %indvars.iv78
  %10 = load i32* %arrayidx8, align 4, !tbaa !0
  %idxprom9 = sext i32 %10 to i64
  %arrayidx10 = getelementptr inbounds i64* %bexcl, i64 %idxprom9
  %11 = load i64* %arrayidx10, align 8, !tbaa !7
  %or = or i64 %11, %conv
  store i64 %or, i64* %arrayidx10, align 8, !tbaa !7
  %indvars.iv.next79 = add i64 %indvars.iv78, 1
  %12 = trunc i64 %indvars.iv.next79 to i32
  %cmp5 = icmp slt i32 %12, %6
  br i1 %cmp5, label %for.body6, label %for.cond.loopexit

for.cond14.loopexit:                              ; preds = %for.body28, %for.body17
  %13 = trunc i64 %indvars.iv.next77 to i32
  %cmp15 = icmp slt i32 %13, %end
  br i1 %cmp15, label %for.body17, label %if.end

for.body17:                                       ; preds = %for.body17.lr.ph, %for.cond14.loopexit
  %14 = phi i32 [ %.pre, %for.body17.lr.ph ], [ %15, %for.cond14.loopexit ]
  %indvars.iv76 = phi i64 [ %3, %for.body17.lr.ph ], [ %indvars.iv.next77, %for.cond14.loopexit ]
  %indvars.iv.next77 = add i64 %indvars.iv76, 1
  %arrayidx2564 = getelementptr inbounds i32* %2, i64 %indvars.iv.next77
  %15 = load i32* %arrayidx2564, align 4, !tbaa !0
  %cmp2665 = icmp slt i32 %14, %15
  br i1 %cmp2665, label %for.body28.lr.ph, label %for.cond14.loopexit

for.body28.lr.ph:                                 ; preds = %for.body17
  %16 = trunc i64 %indvars.iv76 to i32
  %sub29 = sub nsw i32 %16, %start
  %shl30 = shl i32 1, %sub29
  %neg = xor i32 %shl30, -1
  %conv31 = sext i32 %neg to i64
  %17 = load i32** %a33, align 8, !tbaa !3
  %18 = sext i32 %14 to i64
  br label %for.body28

for.body28:                                       ; preds = %for.body28.lr.ph, %for.body28
  %indvars.iv = phi i64 [ %18, %for.body28.lr.ph ], [ %indvars.iv.next, %for.body28 ]
  %arrayidx34 = getelementptr inbounds i32* %17, i64 %indvars.iv
  %19 = load i32* %arrayidx34, align 4, !tbaa !0
  %idxprom35 = sext i32 %19 to i64
  %arrayidx36 = getelementptr inbounds i64* %bexcl, i64 %idxprom35
  %20 = load i64* %arrayidx36, align 8, !tbaa !7
  %and = and i64 %20, %conv31
  store i64 %and, i64* %arrayidx36, align 8, !tbaa !7
  %indvars.iv.next = add i64 %indvars.iv, 1
  %21 = trunc i64 %indvars.iv.next to i32
  %cmp26 = icmp slt i32 %21, %15
  br i1 %cmp26, label %for.body28, label %for.cond14.loopexit

if.end:                                           ; preds = %for.cond.preheader, %for.cond.loopexit, %for.cond14.preheader, %for.cond14.loopexit
  ret void
}

; Function Attrs: inlinehint nounwind optsize uwtable
define internal fastcc void @put_in_list(i32* nocapture %bHaveLJ, i32 %ngid, %struct.t_mdatoms* nocapture %md, i32 %icg, i32 %jgid, i32 %nj, i32* nocapture %jjcg, i32* nocapture %index, i64* nocapture %bExcl, i32 %shift, %struct.t_forcerec* %fr, i32 %bLR, i32 %bVDWOnly, i32 %bCoulOnly) #5 {
entry:
  %chargeA = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 6
  %0 = load float** %chargeA, align 8, !tbaa !3
  %chargeB1 = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 7
  %1 = load float** %chargeB1, align 8, !tbaa !3
  %typeA = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 11
  %2 = load i32** %typeA, align 8, !tbaa !3
  %typeB2 = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 12
  %3 = load i32** %typeB2, align 8, !tbaa !3
  %cENER3 = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 15
  %4 = load i16** %cENER3, align 8, !tbaa !3
  %bPerturbed = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 9
  %5 = load i32** %bPerturbed, align 8, !tbaa !3
  %idxprom = sext i32 %icg to i64
  %arrayidx = getelementptr inbounds i32* %index, i64 %idxprom
  %6 = load i32* %arrayidx, align 4, !tbaa !0
  %add = add nsw i32 %icg, 1
  %idxprom4 = sext i32 %add to i64
  %arrayidx5 = getelementptr inbounds i32* %index, i64 %idxprom4
  %7 = load i32* %arrayidx5, align 4, !tbaa !0
  %sub = sub i32 %7, %6
  %solvent_type = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 45
  %8 = load i32** %solvent_type, align 8, !tbaa !3
  %arrayidx7 = getelementptr inbounds i32* %8, i64 %idxprom
  %9 = load i32* %arrayidx7, align 4, !tbaa !0
  %cmp = icmp eq i32 %9, 2
  %cmp11 = icmp eq i32 %9, 1
  %tobool = icmp ne i32 %bLR, 0
  br i1 %tobool, label %if.then, label %if.else50

if.then:                                          ; preds = %entry
  br i1 %cmp, label %if.then14, label %if.else

if.then14:                                        ; preds = %if.then
  %arrayidx15 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 50, i64 9
  %arrayidx17 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 50, i64 1
  %arrayidx19 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 50, i64 10
  %arrayidx21 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 50, i64 11
  %arrayidx23 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 50, i64 12
  br label %if.end39

if.else:                                          ; preds = %if.then
  br i1 %cmp11, label %if.then25, label %if.else32

if.then25:                                        ; preds = %if.else
  %arrayidx27 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 50, i64 6
  %arrayidx29 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 50, i64 7
  %arrayidx31 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 50, i64 8
  br label %if.end39

if.else32:                                        ; preds = %if.else
  %arrayidx34 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 50, i64 0
  %arrayidx36 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 50, i64 1
  %arrayidx38 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 50, i64 2
  br label %if.end39

if.end39:                                         ; preds = %if.then25, %if.else32, %if.then14
  %coul_ww.0 = phi %struct.t_nblist* [ %arrayidx23, %if.then14 ], [ null, %if.then25 ], [ null, %if.else32 ]
  %vdwc_ww.0 = phi %struct.t_nblist* [ %arrayidx21, %if.then14 ], [ null, %if.then25 ], [ null, %if.else32 ]
  %coul.0 = phi %struct.t_nblist* [ %arrayidx19, %if.then14 ], [ %arrayidx31, %if.then25 ], [ %arrayidx38, %if.else32 ]
  %vdw.0 = phi %struct.t_nblist* [ %arrayidx17, %if.then14 ], [ %arrayidx29, %if.then25 ], [ %arrayidx36, %if.else32 ]
  %vdwc.0 = phi %struct.t_nblist* [ %arrayidx15, %if.then14 ], [ %arrayidx27, %if.then25 ], [ %arrayidx34, %if.else32 ]
  %efep = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 29
  %10 = load i32* %efep, align 4, !tbaa !0
  %cmp40 = icmp eq i32 %10, 0
  br i1 %cmp40, label %if.then95, label %if.then42

if.then42:                                        ; preds = %if.end39
  %arrayidx44 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 50, i64 3
  %arrayidx46 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 50, i64 4
  %arrayidx48 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 50, i64 5
  br label %for.cond495.preheader

if.else50:                                        ; preds = %entry
  br i1 %cmp, label %if.then52, label %if.else62

if.then52:                                        ; preds = %if.else50
  %arrayidx53 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 49, i64 9
  %arrayidx55 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 49, i64 1
  %arrayidx57 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 49, i64 10
  %arrayidx59 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 49, i64 11
  %arrayidx61 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 49, i64 12
  br label %if.end79

if.else62:                                        ; preds = %if.else50
  br i1 %cmp11, label %if.then64, label %if.else71

if.then64:                                        ; preds = %if.else62
  %arrayidx66 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 49, i64 6
  %arrayidx68 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 49, i64 7
  %arrayidx70 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 49, i64 8
  br label %if.end79

if.else71:                                        ; preds = %if.else62
  %arrayidx73 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 49, i64 0
  %arrayidx75 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 49, i64 1
  %arrayidx77 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 49, i64 2
  br label %if.end79

if.end79:                                         ; preds = %if.then64, %if.else71, %if.then52
  %coul_ww.1 = phi %struct.t_nblist* [ %arrayidx61, %if.then52 ], [ null, %if.then64 ], [ null, %if.else71 ]
  %vdwc_ww.1 = phi %struct.t_nblist* [ %arrayidx59, %if.then52 ], [ null, %if.then64 ], [ null, %if.else71 ]
  %coul.1 = phi %struct.t_nblist* [ %arrayidx57, %if.then52 ], [ %arrayidx70, %if.then64 ], [ %arrayidx77, %if.else71 ]
  %vdw.1 = phi %struct.t_nblist* [ %arrayidx55, %if.then52 ], [ %arrayidx68, %if.then64 ], [ %arrayidx75, %if.else71 ]
  %vdwc.1 = phi %struct.t_nblist* [ %arrayidx53, %if.then52 ], [ %arrayidx66, %if.then64 ], [ %arrayidx73, %if.else71 ]
  %efep80 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 29
  %11 = load i32* %efep80, align 4, !tbaa !0
  %cmp81 = icmp eq i32 %11, 0
  br i1 %cmp81, label %if.then95, label %if.then83

if.then83:                                        ; preds = %if.end79
  %arrayidx85 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 49, i64 3
  %arrayidx87 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 49, i64 4
  %arrayidx89 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 49, i64 5
  br label %for.cond495.preheader

for.cond495.preheader:                            ; preds = %if.then42, %if.then83
  %coul_free.0.ph = phi %struct.t_nblist* [ %arrayidx48, %if.then42 ], [ %arrayidx89, %if.then83 ]
  %vdw_free.0.ph = phi %struct.t_nblist* [ %arrayidx46, %if.then42 ], [ %arrayidx87, %if.then83 ]
  %vdwc_free.0.ph = phi %struct.t_nblist* [ %arrayidx44, %if.then42 ], [ %arrayidx85, %if.then83 ]
  %coul_ww.2.ph1770 = phi %struct.t_nblist* [ %coul_ww.0, %if.then42 ], [ %coul_ww.1, %if.then83 ]
  %vdwc_ww.2.ph1771 = phi %struct.t_nblist* [ %vdwc_ww.0, %if.then42 ], [ %vdwc_ww.1, %if.then83 ]
  %coul.2.ph1772 = phi %struct.t_nblist* [ %coul.0, %if.then42 ], [ %coul.1, %if.then83 ]
  %vdw.2.ph1773 = phi %struct.t_nblist* [ %vdw.0, %if.then42 ], [ %vdw.1, %if.then83 ]
  %vdwc.2.ph1774 = phi %struct.t_nblist* [ %vdwc.0, %if.then42 ], [ %vdwc.1, %if.then83 ]
  %cmp4961725 = icmp sgt i32 %sub, 0
  br i1 %cmp4961725, label %for.body498.lr.ph, label %if.end723

for.body498.lr.ph:                                ; preds = %for.cond495.preheader
  %tobool517 = icmp ne i32 %bCoulOnly, 0
  %tobool517.not = xor i1 %tobool517, true
  %tobool519 = icmp eq i32 %bVDWOnly, 0
  %or.cond1146 = and i1 %tobool519, %tobool517.not
  %cond522 = select i1 %tobool, i32 15, i32 13
  %mul525 = mul nsw i32 %icg, 3
  %idxprom526 = sext i32 %mul525 to i64
  %mno_index527 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 46
  %tobool547 = icmp ne i32 %bVDWOnly, 0
  %nri1.i1290 = getelementptr inbounds %struct.t_nblist* %vdw.2.ph1773, i64 0, i32 1
  %nrj.i1291 = getelementptr inbounds %struct.t_nblist* %vdw.2.ph1773, i64 0, i32 3
  %jindex.i1294 = getelementptr inbounds %struct.t_nblist* %vdw.2.ph1773, i64 0, i32 10
  %solvent.i1299 = getelementptr inbounds %struct.t_nblist* %vdw.2.ph1773, i64 0, i32 6
  %nsatoms.i1303 = getelementptr inbounds %struct.t_nblist* %vdw.2.ph1773, i64 0, i32 12
  %maxlen.i1308 = getelementptr inbounds %struct.t_nblist* %vdw.2.ph1773, i64 0, i32 5
  %nri1.i1267 = getelementptr inbounds %struct.t_nblist* %coul.2.ph1772, i64 0, i32 1
  %nrj.i1268 = getelementptr inbounds %struct.t_nblist* %coul.2.ph1772, i64 0, i32 3
  %jindex.i1271 = getelementptr inbounds %struct.t_nblist* %coul.2.ph1772, i64 0, i32 10
  %solvent.i1276 = getelementptr inbounds %struct.t_nblist* %coul.2.ph1772, i64 0, i32 6
  %nsatoms.i1280 = getelementptr inbounds %struct.t_nblist* %coul.2.ph1772, i64 0, i32 12
  %maxlen.i1285 = getelementptr inbounds %struct.t_nblist* %coul.2.ph1772, i64 0, i32 5
  %nri1.i1244 = getelementptr inbounds %struct.t_nblist* %vdwc.2.ph1774, i64 0, i32 1
  %nrj.i1245 = getelementptr inbounds %struct.t_nblist* %vdwc.2.ph1774, i64 0, i32 3
  %jindex.i1248 = getelementptr inbounds %struct.t_nblist* %vdwc.2.ph1774, i64 0, i32 10
  %solvent.i1253 = getelementptr inbounds %struct.t_nblist* %vdwc.2.ph1774, i64 0, i32 6
  %nsatoms.i1257 = getelementptr inbounds %struct.t_nblist* %vdwc.2.ph1774, i64 0, i32 12
  %maxlen.i1262 = getelementptr inbounds %struct.t_nblist* %vdwc.2.ph1774, i64 0, i32 5
  %nri1.i1221 = getelementptr inbounds %struct.t_nblist* %coul_ww.2.ph1770, i64 0, i32 1
  %nrj.i1222 = getelementptr inbounds %struct.t_nblist* %coul_ww.2.ph1770, i64 0, i32 3
  %jindex.i1225 = getelementptr inbounds %struct.t_nblist* %coul_ww.2.ph1770, i64 0, i32 10
  %solvent.i1230 = getelementptr inbounds %struct.t_nblist* %coul_ww.2.ph1770, i64 0, i32 6
  %nsatoms.i1234 = getelementptr inbounds %struct.t_nblist* %coul_ww.2.ph1770, i64 0, i32 12
  %maxlen.i1239 = getelementptr inbounds %struct.t_nblist* %coul_ww.2.ph1770, i64 0, i32 5
  %nri1.i1198 = getelementptr inbounds %struct.t_nblist* %vdwc_ww.2.ph1771, i64 0, i32 1
  %nrj.i1199 = getelementptr inbounds %struct.t_nblist* %vdwc_ww.2.ph1771, i64 0, i32 3
  %jindex.i1202 = getelementptr inbounds %struct.t_nblist* %vdwc_ww.2.ph1771, i64 0, i32 10
  %solvent.i1207 = getelementptr inbounds %struct.t_nblist* %vdwc_ww.2.ph1771, i64 0, i32 6
  %nsatoms.i1211 = getelementptr inbounds %struct.t_nblist* %vdwc_ww.2.ph1771, i64 0, i32 12
  %maxlen.i1216 = getelementptr inbounds %struct.t_nblist* %vdwc_ww.2.ph1771, i64 0, i32 5
  %nri1.i1175 = getelementptr inbounds %struct.t_nblist* %vdw_free.0.ph, i64 0, i32 1
  %nrj.i1176 = getelementptr inbounds %struct.t_nblist* %vdw_free.0.ph, i64 0, i32 3
  %jindex.i1179 = getelementptr inbounds %struct.t_nblist* %vdw_free.0.ph, i64 0, i32 10
  %solvent.i1184 = getelementptr inbounds %struct.t_nblist* %vdw_free.0.ph, i64 0, i32 6
  %nsatoms.i1188 = getelementptr inbounds %struct.t_nblist* %vdw_free.0.ph, i64 0, i32 12
  %maxlen.i1193 = getelementptr inbounds %struct.t_nblist* %vdw_free.0.ph, i64 0, i32 5
  %nri1.i1152 = getelementptr inbounds %struct.t_nblist* %coul_free.0.ph, i64 0, i32 1
  %nrj.i1153 = getelementptr inbounds %struct.t_nblist* %coul_free.0.ph, i64 0, i32 3
  %jindex.i1156 = getelementptr inbounds %struct.t_nblist* %coul_free.0.ph, i64 0, i32 10
  %solvent.i1161 = getelementptr inbounds %struct.t_nblist* %coul_free.0.ph, i64 0, i32 6
  %nsatoms.i1165 = getelementptr inbounds %struct.t_nblist* %coul_free.0.ph, i64 0, i32 12
  %maxlen.i1170 = getelementptr inbounds %struct.t_nblist* %coul_free.0.ph, i64 0, i32 5
  %nri1.i = getelementptr inbounds %struct.t_nblist* %vdwc_free.0.ph, i64 0, i32 1
  %nrj.i = getelementptr inbounds %struct.t_nblist* %vdwc_free.0.ph, i64 0, i32 3
  %jindex.i = getelementptr inbounds %struct.t_nblist* %vdwc_free.0.ph, i64 0, i32 10
  %solvent.i = getelementptr inbounds %struct.t_nblist* %vdwc_free.0.ph, i64 0, i32 6
  %nsatoms.i = getelementptr inbounds %struct.t_nblist* %vdwc_free.0.ph, i64 0, i32 12
  %maxlen.i = getelementptr inbounds %struct.t_nblist* %vdwc_free.0.ph, i64 0, i32 5
  %cond550 = select i1 %tobool, i32 18, i32 17
  %cmp5881722 = icmp sgt i32 %nj, 0
  %.off = add i32 %9, -1
  %brmerge.not = icmp ugt i32 %.off, 1
  %jjnr.i1350 = getelementptr inbounds %struct.t_nblist* %coul_free.0.ph, i64 0, i32 11
  %jjnr.i1345 = getelementptr inbounds %struct.t_nblist* %vdw_free.0.ph, i64 0, i32 11
  %jjnr.i1340 = getelementptr inbounds %struct.t_nblist* %vdwc_free.0.ph, i64 0, i32 11
  %jjnr.i1335 = getelementptr inbounds %struct.t_nblist* %coul.2.ph1772, i64 0, i32 11
  %jjnr.i1330 = getelementptr inbounds %struct.t_nblist* %vdw.2.ph1773, i64 0, i32 11
  %jjnr.i1325 = getelementptr inbounds %struct.t_nblist* %vdwc.2.ph1774, i64 0, i32 11
  %mul509 = mul nsw i32 %jgid, %ngid
  %12 = sext i32 %6 to i64
  br label %for.body498

if.then95:                                        ; preds = %if.end39, %if.end79
  %coul_ww.2.ph = phi %struct.t_nblist* [ %coul_ww.0, %if.end39 ], [ %coul_ww.1, %if.end79 ]
  %vdwc_ww.2.ph = phi %struct.t_nblist* [ %vdwc_ww.0, %if.end39 ], [ %vdwc_ww.1, %if.end79 ]
  %coul.2.ph = phi %struct.t_nblist* [ %coul.0, %if.end39 ], [ %coul.1, %if.end79 ]
  %vdw.2.ph = phi %struct.t_nblist* [ %vdw.0, %if.end39 ], [ %vdw.1, %if.end79 ]
  %vdwc.2.ph = phi %struct.t_nblist* [ %vdwc.0, %if.end39 ], [ %vdwc.1, %if.end79 ]
  br i1 %cmp, label %if.then97, label %if.else225

if.then97:                                        ; preds = %if.then95
  %idxprom98 = sext i32 %6 to i64
  %arrayidx99 = getelementptr inbounds i16* %4, i64 %idxprom98
  %13 = load i16* %arrayidx99, align 2, !tbaa !5
  %conv100 = zext i16 %13 to i32
  %cmp101 = icmp slt i32 %conv100, %jgid
  br i1 %cmp101, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then97
  %mul = mul nsw i32 %conv100, %ngid
  %add103 = add nsw i32 %mul, %jgid
  br label %cond.end

cond.false:                                       ; preds = %if.then97
  %mul104 = mul nsw i32 %jgid, %ngid
  %add105 = add nsw i32 %conv100, %mul104
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %add103, %cond.true ], [ %add105, %cond.false ]
  %tobool106 = icmp ne i32 %bCoulOnly, 0
  %tobool106.not = xor i1 %tobool106, true
  %tobool107 = icmp eq i32 %bVDWOnly, 0
  %or.cond = and i1 %tobool107, %tobool106.not
  br i1 %or.cond, label %if.then108, label %if.end113

if.then108:                                       ; preds = %cond.end
  %cond110 = select i1 %tobool, i32 15, i32 13
  tail call fastcc void @new_i_nblist(%struct.t_nblist* %vdwc.2.ph, i32 %cond110, i32 %6, i32 %shift, i32 %cond, i32* null) #7
  tail call fastcc void @new_i_nblist(%struct.t_nblist* %vdwc_ww.2.ph, i32 %cond110, i32 %6, i32 %shift, i32 %cond, i32* null) #7
  br label %if.end113

if.end113:                                        ; preds = %cond.end, %if.then108
  br i1 %tobool106, label %if.end118, label %if.then115

if.then115:                                       ; preds = %if.end113
  %cond117 = select i1 %tobool, i32 15, i32 13
  tail call fastcc void @new_i_nblist(%struct.t_nblist* %vdw.2.ph, i32 %cond117, i32 %6, i32 %shift, i32 %cond, i32* null) #7
  br label %if.end118

if.end118:                                        ; preds = %if.then115, %if.end113
  %tobool119 = icmp ne i32 %bVDWOnly, 0
  br i1 %tobool119, label %for.cond.preheader, label %if.then120

if.then120:                                       ; preds = %if.end118
  %cond122 = select i1 %tobool, i32 18, i32 17
  tail call fastcc void @new_i_nblist(%struct.t_nblist* %coul.2.ph, i32 %cond122, i32 %6, i32 %shift, i32 %cond, i32* null) #7
  tail call fastcc void @new_i_nblist(%struct.t_nblist* %coul_ww.2.ph, i32 %cond122, i32 %6, i32 %shift, i32 %cond, i32* null) #7
  br label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.then120, %if.end118
  %cmp1261704 = icmp sgt i32 %nj, 0
  %nrj1.i = getelementptr inbounds %struct.t_nblist* %vdw.2.ph, i64 0, i32 3
  br i1 %cmp1261704, label %for.body.lr.ph, label %for.end224

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %jjnr.i = getelementptr inbounds %struct.t_nblist* %vdw.2.ph, i64 0, i32 11
  %nrj1.i1353 = getelementptr inbounds %struct.t_nblist* %coul_ww.2.ph, i64 0, i32 3
  %jjnr.i1355 = getelementptr inbounds %struct.t_nblist* %coul_ww.2.ph, i64 0, i32 11
  %nrj1.i1358 = getelementptr inbounds %struct.t_nblist* %vdwc_ww.2.ph, i64 0, i32 3
  %jjnr.i1360 = getelementptr inbounds %struct.t_nblist* %vdwc_ww.2.ph, i64 0, i32 11
  %nrj1.i1383 = getelementptr inbounds %struct.t_nblist* %coul.2.ph, i64 0, i32 3
  %jjnr.i1385 = getelementptr inbounds %struct.t_nblist* %coul.2.ph, i64 0, i32 11
  %nrj1.i1373 = getelementptr inbounds %struct.t_nblist* %vdwc.2.ph, i64 0, i32 3
  %jjnr.i1375 = getelementptr inbounds %struct.t_nblist* %vdwc.2.ph, i64 0, i32 11
  br label %for.body

for.body:                                         ; preds = %for.inc222, %for.body.lr.ph
  %indvars.iv1731 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next1732, %for.inc222 ]
  %arrayidx129 = getelementptr inbounds i32* %jjcg, i64 %indvars.iv1731
  %14 = load i32* %arrayidx129, align 4, !tbaa !0
  %cmp130 = icmp eq i32 %14, %icg
  br i1 %cmp130, label %for.inc222, label %land.lhs.true137

land.lhs.true137:                                 ; preds = %for.body
  %idxprom134 = sext i32 %14 to i64
  %arrayidx135 = getelementptr inbounds i32* %index, i64 %idxprom134
  %15 = load i32* %arrayidx135, align 4, !tbaa !0
  %16 = load i32** %solvent_type, align 8, !tbaa !3
  %arrayidx140 = getelementptr inbounds i32* %16, i64 %idxprom134
  %17 = load i32* %arrayidx140, align 4, !tbaa !0
  %cmp141 = icmp eq i32 %17, 2
  br i1 %cmp141, label %if.then143, label %if.else152

if.then143:                                       ; preds = %land.lhs.true137
  br i1 %tobool119, label %if.then145, label %if.else146

if.then145:                                       ; preds = %if.then143
  %18 = load i32* %nrj1.i, align 4, !tbaa !0
  %idxprom.i = sext i32 %18 to i64
  %19 = load i32** %jjnr.i, align 8, !tbaa !3
  %arrayidx.i = getelementptr inbounds i32* %19, i64 %idxprom.i
  store i32 %15, i32* %arrayidx.i, align 4, !tbaa !0
  %20 = load i32* %nrj1.i, align 4, !tbaa !0
  %inc.i = add nsw i32 %20, 1
  store i32 %inc.i, i32* %nrj1.i, align 4, !tbaa !0
  br label %for.inc222

if.else146:                                       ; preds = %if.then143
  br i1 %tobool106, label %if.then148, label %if.else149

if.then148:                                       ; preds = %if.else146
  %21 = load i32* %nrj1.i1353, align 4, !tbaa !0
  %idxprom.i1354 = sext i32 %21 to i64
  %22 = load i32** %jjnr.i1355, align 8, !tbaa !3
  %arrayidx.i1356 = getelementptr inbounds i32* %22, i64 %idxprom.i1354
  store i32 %15, i32* %arrayidx.i1356, align 4, !tbaa !0
  %23 = load i32* %nrj1.i1353, align 4, !tbaa !0
  %inc.i1357 = add nsw i32 %23, 1
  store i32 %inc.i1357, i32* %nrj1.i1353, align 4, !tbaa !0
  br label %for.inc222

if.else149:                                       ; preds = %if.else146
  %24 = load i32* %nrj1.i1358, align 4, !tbaa !0
  %idxprom.i1359 = sext i32 %24 to i64
  %25 = load i32** %jjnr.i1360, align 8, !tbaa !3
  %arrayidx.i1361 = getelementptr inbounds i32* %25, i64 %idxprom.i1359
  store i32 %15, i32* %arrayidx.i1361, align 4, !tbaa !0
  %26 = load i32* %nrj1.i1358, align 4, !tbaa !0
  %inc.i1362 = add nsw i32 %26, 1
  store i32 %inc.i1362, i32* %nrj1.i1358, align 4, !tbaa !0
  br label %for.inc222

if.else152:                                       ; preds = %land.lhs.true137
  %add153 = add nsw i32 %14, 1
  %idxprom154 = sext i32 %add153 to i64
  %arrayidx155 = getelementptr inbounds i32* %index, i64 %idxprom154
  %27 = load i32* %arrayidx155, align 4, !tbaa !0
  %cmp1591702 = icmp slt i32 %15, %27
  br i1 %tobool106, label %for.cond158.preheader, label %if.else169

for.cond158.preheader:                            ; preds = %if.else152
  br i1 %cmp1591702, label %for.body161.lr.ph, label %for.inc222

for.body161.lr.ph:                                ; preds = %for.cond158.preheader
  %28 = sext i32 %15 to i64
  br label %for.body161

for.body161:                                      ; preds = %for.body161.lr.ph, %for.inc
  %indvars.iv1729 = phi i64 [ %28, %for.body161.lr.ph ], [ %indvars.iv.next1730, %for.inc ]
  %arrayidx163 = getelementptr inbounds float* %0, i64 %indvars.iv1729
  %29 = load float* %arrayidx163, align 4, !tbaa !4
  %fabsf1143 = tail call float @fabsf(float %29) #9
  %30 = fpext float %fabsf1143 to double
  %cmp165 = fcmp ogt double %30, 1.200000e-38
  br i1 %cmp165, label %if.then167, label %for.inc

if.then167:                                       ; preds = %for.body161
  %31 = load i32* %nrj1.i1383, align 4, !tbaa !0
  %idxprom.i1364 = sext i32 %31 to i64
  %32 = load i32** %jjnr.i1385, align 8, !tbaa !3
  %arrayidx.i1366 = getelementptr inbounds i32* %32, i64 %idxprom.i1364
  %33 = trunc i64 %indvars.iv1729 to i32
  store i32 %33, i32* %arrayidx.i1366, align 4, !tbaa !0
  %34 = load i32* %nrj1.i1383, align 4, !tbaa !0
  %inc.i1367 = add nsw i32 %34, 1
  store i32 %inc.i1367, i32* %nrj1.i1383, align 4, !tbaa !0
  br label %for.inc

for.inc:                                          ; preds = %for.body161, %if.then167
  %indvars.iv.next1730 = add i64 %indvars.iv1729, 1
  %35 = trunc i64 %indvars.iv.next1730 to i32
  %cmp159 = icmp slt i32 %35, %27
  br i1 %cmp159, label %for.body161, label %for.inc222

if.else169:                                       ; preds = %if.else152
  br i1 %tobool119, label %for.cond172.preheader, label %for.cond187.preheader

for.cond172.preheader:                            ; preds = %if.else169
  br i1 %cmp1591702, label %for.body175.lr.ph, label %for.inc222

for.body175.lr.ph:                                ; preds = %for.cond172.preheader
  %36 = sext i32 %15 to i64
  br label %for.body175

for.cond187.preheader:                            ; preds = %if.else169
  br i1 %cmp1591702, label %for.body190.lr.ph, label %for.inc222

for.body190.lr.ph:                                ; preds = %for.cond187.preheader
  %37 = sext i32 %15 to i64
  br label %for.body190

for.body175:                                      ; preds = %for.body175.lr.ph, %for.inc183
  %indvars.iv1727 = phi i64 [ %36, %for.body175.lr.ph ], [ %indvars.iv.next1728, %for.inc183 ]
  %arrayidx177 = getelementptr inbounds i32* %2, i64 %indvars.iv1727
  %38 = load i32* %arrayidx177, align 4, !tbaa !0
  %idxprom178 = sext i32 %38 to i64
  %arrayidx179 = getelementptr inbounds i32* %bHaveLJ, i64 %idxprom178
  %39 = load i32* %arrayidx179, align 4, !tbaa !0
  %tobool180 = icmp eq i32 %39, 0
  br i1 %tobool180, label %for.inc183, label %if.then181

if.then181:                                       ; preds = %for.body175
  %40 = load i32* %nrj1.i, align 4, !tbaa !0
  %idxprom.i1369 = sext i32 %40 to i64
  %41 = load i32** %jjnr.i, align 8, !tbaa !3
  %arrayidx.i1371 = getelementptr inbounds i32* %41, i64 %idxprom.i1369
  %42 = trunc i64 %indvars.iv1727 to i32
  store i32 %42, i32* %arrayidx.i1371, align 4, !tbaa !0
  %43 = load i32* %nrj1.i, align 4, !tbaa !0
  %inc.i1372 = add nsw i32 %43, 1
  store i32 %inc.i1372, i32* %nrj1.i, align 4, !tbaa !0
  br label %for.inc183

for.inc183:                                       ; preds = %for.body175, %if.then181
  %indvars.iv.next1728 = add i64 %indvars.iv1727, 1
  %44 = trunc i64 %indvars.iv.next1728 to i32
  %cmp173 = icmp slt i32 %44, %27
  br i1 %cmp173, label %for.body175, label %for.inc222

for.body190:                                      ; preds = %for.body190.lr.ph, %for.inc216
  %indvars.iv = phi i64 [ %37, %for.body190.lr.ph ], [ %indvars.iv.next, %for.inc216 ]
  %arrayidx192 = getelementptr inbounds i32* %2, i64 %indvars.iv
  %45 = load i32* %arrayidx192, align 4, !tbaa !0
  %idxprom193 = sext i32 %45 to i64
  %arrayidx194 = getelementptr inbounds i32* %bHaveLJ, i64 %idxprom193
  %46 = load i32* %arrayidx194, align 4, !tbaa !0
  %tobool195 = icmp eq i32 %46, 0
  %arrayidx198 = getelementptr inbounds float* %0, i64 %indvars.iv
  %47 = load float* %arrayidx198, align 4, !tbaa !4
  %fabsf1142 = tail call float @fabsf(float %47) #9
  %48 = fpext float %fabsf1142 to double
  %cmp201 = fcmp ogt double %48, 1.200000e-38
  br i1 %tobool195, label %if.else206, label %if.then196

if.then196:                                       ; preds = %for.body190
  br i1 %cmp201, label %if.then203, label %if.else204

if.then203:                                       ; preds = %if.then196
  %49 = load i32* %nrj1.i1373, align 4, !tbaa !0
  %idxprom.i1374 = sext i32 %49 to i64
  %50 = load i32** %jjnr.i1375, align 8, !tbaa !3
  %arrayidx.i1376 = getelementptr inbounds i32* %50, i64 %idxprom.i1374
  %51 = trunc i64 %indvars.iv to i32
  store i32 %51, i32* %arrayidx.i1376, align 4, !tbaa !0
  %52 = load i32* %nrj1.i1373, align 4, !tbaa !0
  %inc.i1377 = add nsw i32 %52, 1
  store i32 %inc.i1377, i32* %nrj1.i1373, align 4, !tbaa !0
  br label %for.inc216

if.else204:                                       ; preds = %if.then196
  %53 = load i32* %nrj1.i, align 4, !tbaa !0
  %idxprom.i1379 = sext i32 %53 to i64
  %54 = load i32** %jjnr.i, align 8, !tbaa !3
  %arrayidx.i1381 = getelementptr inbounds i32* %54, i64 %idxprom.i1379
  %55 = trunc i64 %indvars.iv to i32
  store i32 %55, i32* %arrayidx.i1381, align 4, !tbaa !0
  %56 = load i32* %nrj1.i, align 4, !tbaa !0
  %inc.i1382 = add nsw i32 %56, 1
  store i32 %inc.i1382, i32* %nrj1.i, align 4, !tbaa !0
  br label %for.inc216

if.else206:                                       ; preds = %for.body190
  br i1 %cmp201, label %if.then213, label %for.inc216

if.then213:                                       ; preds = %if.else206
  %57 = load i32* %nrj1.i1383, align 4, !tbaa !0
  %idxprom.i1384 = sext i32 %57 to i64
  %58 = load i32** %jjnr.i1385, align 8, !tbaa !3
  %arrayidx.i1386 = getelementptr inbounds i32* %58, i64 %idxprom.i1384
  %59 = trunc i64 %indvars.iv to i32
  store i32 %59, i32* %arrayidx.i1386, align 4, !tbaa !0
  %60 = load i32* %nrj1.i1383, align 4, !tbaa !0
  %inc.i1387 = add nsw i32 %60, 1
  store i32 %inc.i1387, i32* %nrj1.i1383, align 4, !tbaa !0
  br label %for.inc216

for.inc216:                                       ; preds = %if.else204, %if.then203, %if.then213, %if.else206
  %indvars.iv.next = add i64 %indvars.iv, 1
  %61 = trunc i64 %indvars.iv.next to i32
  %cmp188 = icmp slt i32 %61, %27
  br i1 %cmp188, label %for.body190, label %for.inc222

for.inc222:                                       ; preds = %for.cond158.preheader, %for.inc, %for.cond172.preheader, %for.inc183, %for.cond187.preheader, %for.inc216, %if.then148, %if.else149, %if.then145, %for.body
  %indvars.iv.next1732 = add i64 %indvars.iv1731, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next1732 to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %nj
  br i1 %exitcond, label %for.end224, label %for.body

for.end224:                                       ; preds = %for.cond.preheader, %for.inc222
  %nri1.i1388 = getelementptr inbounds %struct.t_nblist* %vdw.2.ph, i64 0, i32 1
  %62 = load i32* %nri1.i1388, align 4, !tbaa !0
  %63 = load i32* %nrj1.i, align 4, !tbaa !0
  %add.i1390 = add nsw i32 %62, 1
  %idxprom.i1391 = sext i32 %add.i1390 to i64
  %jindex.i1392 = getelementptr inbounds %struct.t_nblist* %vdw.2.ph, i64 0, i32 10
  %64 = load i32** %jindex.i1392, align 8, !tbaa !3
  %arrayidx.i1393 = getelementptr inbounds i32* %64, i64 %idxprom.i1391
  store i32 %63, i32* %arrayidx.i1393, align 4, !tbaa !0
  %65 = load i32* %nrj1.i, align 4, !tbaa !0
  %idxprom3.i1394 = sext i32 %62 to i64
  %arrayidx5.i1395 = getelementptr inbounds i32* %64, i64 %idxprom3.i1394
  %66 = load i32* %arrayidx5.i1395, align 4, !tbaa !0
  %sub.i1396 = sub nsw i32 %65, %66
  %solvent.i1397 = getelementptr inbounds %struct.t_nblist* %vdw.2.ph, i64 0, i32 6
  %67 = load i32* %solvent.i1397, align 4, !tbaa !0
  %cmp.i1398 = icmp eq i32 %67, 1
  br i1 %cmp.i1398, label %if.then.i1404, label %if.end.i1408

if.then.i1404:                                    ; preds = %for.end224
  %mul.i1399 = mul nsw i32 %62, 3
  %idxprom6.i1400 = sext i32 %mul.i1399 to i64
  %nsatoms.i1401 = getelementptr inbounds %struct.t_nblist* %vdw.2.ph, i64 0, i32 12
  %68 = load i32** %nsatoms.i1401, align 8, !tbaa !3
  %arrayidx7.i1402 = getelementptr inbounds i32* %68, i64 %idxprom6.i1400
  %69 = load i32* %arrayidx7.i1402, align 4, !tbaa !0
  %mul8.i1403 = mul nsw i32 %69, %sub.i1396
  br label %if.end.i1408

if.end.i1408:                                     ; preds = %if.then.i1404, %for.end224
  %len.0.i1405 = phi i32 [ %mul8.i1403, %if.then.i1404 ], [ %sub.i1396, %for.end224 ]
  %maxlen.i1406 = getelementptr inbounds %struct.t_nblist* %vdw.2.ph, i64 0, i32 5
  %70 = load i32* %maxlen.i1406, align 4, !tbaa !0
  %cmp9.i1407 = icmp sgt i32 %len.0.i1405, %70
  br i1 %cmp9.i1407, label %if.then10.i1409, label %close_i_nblist.exit1410

if.then10.i1409:                                  ; preds = %if.end.i1408
  store i32 %len.0.i1405, i32* %maxlen.i1406, align 4, !tbaa !0
  br label %close_i_nblist.exit1410

close_i_nblist.exit1410:                          ; preds = %if.end.i1408, %if.then10.i1409
  %nri1.i1411 = getelementptr inbounds %struct.t_nblist* %coul.2.ph, i64 0, i32 1
  %71 = load i32* %nri1.i1411, align 4, !tbaa !0
  %nrj.i1412 = getelementptr inbounds %struct.t_nblist* %coul.2.ph, i64 0, i32 3
  %72 = load i32* %nrj.i1412, align 4, !tbaa !0
  %add.i1413 = add nsw i32 %71, 1
  %idxprom.i1414 = sext i32 %add.i1413 to i64
  %jindex.i1415 = getelementptr inbounds %struct.t_nblist* %coul.2.ph, i64 0, i32 10
  %73 = load i32** %jindex.i1415, align 8, !tbaa !3
  %arrayidx.i1416 = getelementptr inbounds i32* %73, i64 %idxprom.i1414
  store i32 %72, i32* %arrayidx.i1416, align 4, !tbaa !0
  %74 = load i32* %nrj.i1412, align 4, !tbaa !0
  %idxprom3.i1417 = sext i32 %71 to i64
  %arrayidx5.i1418 = getelementptr inbounds i32* %73, i64 %idxprom3.i1417
  %75 = load i32* %arrayidx5.i1418, align 4, !tbaa !0
  %sub.i1419 = sub nsw i32 %74, %75
  %solvent.i1420 = getelementptr inbounds %struct.t_nblist* %coul.2.ph, i64 0, i32 6
  %76 = load i32* %solvent.i1420, align 4, !tbaa !0
  %cmp.i1421 = icmp eq i32 %76, 1
  br i1 %cmp.i1421, label %if.then.i1427, label %if.end.i1431

if.then.i1427:                                    ; preds = %close_i_nblist.exit1410
  %mul.i1422 = mul nsw i32 %71, 3
  %idxprom6.i1423 = sext i32 %mul.i1422 to i64
  %nsatoms.i1424 = getelementptr inbounds %struct.t_nblist* %coul.2.ph, i64 0, i32 12
  %77 = load i32** %nsatoms.i1424, align 8, !tbaa !3
  %arrayidx7.i1425 = getelementptr inbounds i32* %77, i64 %idxprom6.i1423
  %78 = load i32* %arrayidx7.i1425, align 4, !tbaa !0
  %mul8.i1426 = mul nsw i32 %78, %sub.i1419
  br label %if.end.i1431

if.end.i1431:                                     ; preds = %if.then.i1427, %close_i_nblist.exit1410
  %len.0.i1428 = phi i32 [ %mul8.i1426, %if.then.i1427 ], [ %sub.i1419, %close_i_nblist.exit1410 ]
  %maxlen.i1429 = getelementptr inbounds %struct.t_nblist* %coul.2.ph, i64 0, i32 5
  %79 = load i32* %maxlen.i1429, align 4, !tbaa !0
  %cmp9.i1430 = icmp sgt i32 %len.0.i1428, %79
  br i1 %cmp9.i1430, label %if.then10.i1432, label %close_i_nblist.exit1433

if.then10.i1432:                                  ; preds = %if.end.i1431
  store i32 %len.0.i1428, i32* %maxlen.i1429, align 4, !tbaa !0
  br label %close_i_nblist.exit1433

close_i_nblist.exit1433:                          ; preds = %if.end.i1431, %if.then10.i1432
  %nri1.i1528 = getelementptr inbounds %struct.t_nblist* %vdwc.2.ph, i64 0, i32 1
  %80 = load i32* %nri1.i1528, align 4, !tbaa !0
  %nrj.i1529 = getelementptr inbounds %struct.t_nblist* %vdwc.2.ph, i64 0, i32 3
  %81 = load i32* %nrj.i1529, align 4, !tbaa !0
  %add.i1530 = add nsw i32 %80, 1
  %idxprom.i1531 = sext i32 %add.i1530 to i64
  %jindex.i1532 = getelementptr inbounds %struct.t_nblist* %vdwc.2.ph, i64 0, i32 10
  %82 = load i32** %jindex.i1532, align 8, !tbaa !3
  %arrayidx.i1533 = getelementptr inbounds i32* %82, i64 %idxprom.i1531
  store i32 %81, i32* %arrayidx.i1533, align 4, !tbaa !0
  %83 = load i32* %nrj.i1529, align 4, !tbaa !0
  %idxprom3.i1534 = sext i32 %80 to i64
  %arrayidx5.i1535 = getelementptr inbounds i32* %82, i64 %idxprom3.i1534
  %84 = load i32* %arrayidx5.i1535, align 4, !tbaa !0
  %sub.i1536 = sub nsw i32 %83, %84
  %solvent.i1537 = getelementptr inbounds %struct.t_nblist* %vdwc.2.ph, i64 0, i32 6
  %85 = load i32* %solvent.i1537, align 4, !tbaa !0
  %cmp.i1538 = icmp eq i32 %85, 1
  br i1 %cmp.i1538, label %if.then.i1544, label %if.end.i1548

if.then.i1544:                                    ; preds = %close_i_nblist.exit1433
  %mul.i1539 = mul nsw i32 %80, 3
  %idxprom6.i1540 = sext i32 %mul.i1539 to i64
  %nsatoms.i1541 = getelementptr inbounds %struct.t_nblist* %vdwc.2.ph, i64 0, i32 12
  %86 = load i32** %nsatoms.i1541, align 8, !tbaa !3
  %arrayidx7.i1542 = getelementptr inbounds i32* %86, i64 %idxprom6.i1540
  %87 = load i32* %arrayidx7.i1542, align 4, !tbaa !0
  %mul8.i1543 = mul nsw i32 %87, %sub.i1536
  br label %if.end.i1548

if.end.i1548:                                     ; preds = %if.then.i1544, %close_i_nblist.exit1433
  %len.0.i1545 = phi i32 [ %mul8.i1543, %if.then.i1544 ], [ %sub.i1536, %close_i_nblist.exit1433 ]
  %maxlen.i1546 = getelementptr inbounds %struct.t_nblist* %vdwc.2.ph, i64 0, i32 5
  %88 = load i32* %maxlen.i1546, align 4, !tbaa !0
  %cmp9.i1547 = icmp sgt i32 %len.0.i1545, %88
  br i1 %cmp9.i1547, label %if.then10.i1549, label %close_i_nblist.exit1550

if.then10.i1549:                                  ; preds = %if.end.i1548
  store i32 %len.0.i1545, i32* %maxlen.i1546, align 4, !tbaa !0
  br label %close_i_nblist.exit1550

close_i_nblist.exit1550:                          ; preds = %if.end.i1548, %if.then10.i1549
  %nri1.i1551 = getelementptr inbounds %struct.t_nblist* %coul_ww.2.ph, i64 0, i32 1
  %89 = load i32* %nri1.i1551, align 4, !tbaa !0
  %nrj.i1552 = getelementptr inbounds %struct.t_nblist* %coul_ww.2.ph, i64 0, i32 3
  %90 = load i32* %nrj.i1552, align 4, !tbaa !0
  %add.i1553 = add nsw i32 %89, 1
  %idxprom.i1554 = sext i32 %add.i1553 to i64
  %jindex.i1555 = getelementptr inbounds %struct.t_nblist* %coul_ww.2.ph, i64 0, i32 10
  %91 = load i32** %jindex.i1555, align 8, !tbaa !3
  %arrayidx.i1556 = getelementptr inbounds i32* %91, i64 %idxprom.i1554
  store i32 %90, i32* %arrayidx.i1556, align 4, !tbaa !0
  %92 = load i32* %nrj.i1552, align 4, !tbaa !0
  %idxprom3.i1557 = sext i32 %89 to i64
  %arrayidx5.i1558 = getelementptr inbounds i32* %91, i64 %idxprom3.i1557
  %93 = load i32* %arrayidx5.i1558, align 4, !tbaa !0
  %sub.i1559 = sub nsw i32 %92, %93
  %solvent.i1560 = getelementptr inbounds %struct.t_nblist* %coul_ww.2.ph, i64 0, i32 6
  %94 = load i32* %solvent.i1560, align 4, !tbaa !0
  %cmp.i1561 = icmp eq i32 %94, 1
  br i1 %cmp.i1561, label %if.then.i1567, label %if.end.i1571

if.then.i1567:                                    ; preds = %close_i_nblist.exit1550
  %mul.i1562 = mul nsw i32 %89, 3
  %idxprom6.i1563 = sext i32 %mul.i1562 to i64
  %nsatoms.i1564 = getelementptr inbounds %struct.t_nblist* %coul_ww.2.ph, i64 0, i32 12
  %95 = load i32** %nsatoms.i1564, align 8, !tbaa !3
  %arrayidx7.i1565 = getelementptr inbounds i32* %95, i64 %idxprom6.i1563
  %96 = load i32* %arrayidx7.i1565, align 4, !tbaa !0
  %mul8.i1566 = mul nsw i32 %96, %sub.i1559
  br label %if.end.i1571

if.end.i1571:                                     ; preds = %if.then.i1567, %close_i_nblist.exit1550
  %len.0.i1568 = phi i32 [ %mul8.i1566, %if.then.i1567 ], [ %sub.i1559, %close_i_nblist.exit1550 ]
  %maxlen.i1569 = getelementptr inbounds %struct.t_nblist* %coul_ww.2.ph, i64 0, i32 5
  %97 = load i32* %maxlen.i1569, align 4, !tbaa !0
  %cmp9.i1570 = icmp sgt i32 %len.0.i1568, %97
  br i1 %cmp9.i1570, label %if.then10.i1572, label %close_i_nblist.exit1573

if.then10.i1572:                                  ; preds = %if.end.i1571
  store i32 %len.0.i1568, i32* %maxlen.i1569, align 4, !tbaa !0
  br label %close_i_nblist.exit1573

close_i_nblist.exit1573:                          ; preds = %if.end.i1571, %if.then10.i1572
  %nri1.i1574 = getelementptr inbounds %struct.t_nblist* %vdwc_ww.2.ph, i64 0, i32 1
  %98 = load i32* %nri1.i1574, align 4, !tbaa !0
  %nrj.i1575 = getelementptr inbounds %struct.t_nblist* %vdwc_ww.2.ph, i64 0, i32 3
  %99 = load i32* %nrj.i1575, align 4, !tbaa !0
  %add.i1576 = add nsw i32 %98, 1
  %idxprom.i1577 = sext i32 %add.i1576 to i64
  %jindex.i1578 = getelementptr inbounds %struct.t_nblist* %vdwc_ww.2.ph, i64 0, i32 10
  %100 = load i32** %jindex.i1578, align 8, !tbaa !3
  %arrayidx.i1579 = getelementptr inbounds i32* %100, i64 %idxprom.i1577
  store i32 %99, i32* %arrayidx.i1579, align 4, !tbaa !0
  %101 = load i32* %nrj.i1575, align 4, !tbaa !0
  %idxprom3.i1580 = sext i32 %98 to i64
  %arrayidx5.i1581 = getelementptr inbounds i32* %100, i64 %idxprom3.i1580
  %102 = load i32* %arrayidx5.i1581, align 4, !tbaa !0
  %sub.i1582 = sub nsw i32 %101, %102
  %solvent.i1583 = getelementptr inbounds %struct.t_nblist* %vdwc_ww.2.ph, i64 0, i32 6
  %103 = load i32* %solvent.i1583, align 4, !tbaa !0
  %cmp.i1584 = icmp eq i32 %103, 1
  br i1 %cmp.i1584, label %if.then.i1590, label %if.end.i1594

if.then.i1590:                                    ; preds = %close_i_nblist.exit1573
  %mul.i1585 = mul nsw i32 %98, 3
  %idxprom6.i1586 = sext i32 %mul.i1585 to i64
  %nsatoms.i1587 = getelementptr inbounds %struct.t_nblist* %vdwc_ww.2.ph, i64 0, i32 12
  %104 = load i32** %nsatoms.i1587, align 8, !tbaa !3
  %arrayidx7.i1588 = getelementptr inbounds i32* %104, i64 %idxprom6.i1586
  %105 = load i32* %arrayidx7.i1588, align 4, !tbaa !0
  %mul8.i1589 = mul nsw i32 %105, %sub.i1582
  br label %if.end.i1594

if.end.i1594:                                     ; preds = %if.then.i1590, %close_i_nblist.exit1573
  %len.0.i1591 = phi i32 [ %mul8.i1589, %if.then.i1590 ], [ %sub.i1582, %close_i_nblist.exit1573 ]
  %maxlen.i1592 = getelementptr inbounds %struct.t_nblist* %vdwc_ww.2.ph, i64 0, i32 5
  %106 = load i32* %maxlen.i1592, align 4, !tbaa !0
  %cmp9.i1593 = icmp sgt i32 %len.0.i1591, %106
  br i1 %cmp9.i1593, label %if.then10.i1595, label %if.end723

if.then10.i1595:                                  ; preds = %if.end.i1594
  store i32 %len.0.i1591, i32* %maxlen.i1592, align 4, !tbaa !0
  br label %if.end723

if.else225:                                       ; preds = %if.then95
  br i1 %cmp11, label %if.then227, label %for.cond343.preheader

for.cond343.preheader:                            ; preds = %if.else225
  %cmp3441716 = icmp sgt i32 %sub, 0
  br i1 %cmp3441716, label %for.body346.lr.ph, label %if.end723

for.body346.lr.ph:                                ; preds = %for.cond343.preheader
  %tobool363 = icmp ne i32 %bCoulOnly, 0
  %tobool363.not = xor i1 %tobool363, true
  %tobool365 = icmp eq i32 %bVDWOnly, 0
  %or.cond1145 = and i1 %tobool365, %tobool363.not
  %cond368 = select i1 %tobool, i32 15, i32 13
  %tobool375 = icmp ne i32 %bVDWOnly, 0
  %nri1.i1480 = getelementptr inbounds %struct.t_nblist* %vdw.2.ph, i64 0, i32 1
  %nrj.i1481 = getelementptr inbounds %struct.t_nblist* %vdw.2.ph, i64 0, i32 3
  %jindex.i1484 = getelementptr inbounds %struct.t_nblist* %vdw.2.ph, i64 0, i32 10
  %solvent.i1489 = getelementptr inbounds %struct.t_nblist* %vdw.2.ph, i64 0, i32 6
  %nsatoms.i1493 = getelementptr inbounds %struct.t_nblist* %vdw.2.ph, i64 0, i32 12
  %maxlen.i1498 = getelementptr inbounds %struct.t_nblist* %vdw.2.ph, i64 0, i32 5
  %nri1.i1457 = getelementptr inbounds %struct.t_nblist* %coul.2.ph, i64 0, i32 1
  %nrj.i1458 = getelementptr inbounds %struct.t_nblist* %coul.2.ph, i64 0, i32 3
  %jindex.i1461 = getelementptr inbounds %struct.t_nblist* %coul.2.ph, i64 0, i32 10
  %solvent.i1466 = getelementptr inbounds %struct.t_nblist* %coul.2.ph, i64 0, i32 6
  %nsatoms.i1470 = getelementptr inbounds %struct.t_nblist* %coul.2.ph, i64 0, i32 12
  %maxlen.i1475 = getelementptr inbounds %struct.t_nblist* %coul.2.ph, i64 0, i32 5
  %nri1.i1434 = getelementptr inbounds %struct.t_nblist* %vdwc.2.ph, i64 0, i32 1
  %nrj.i1435 = getelementptr inbounds %struct.t_nblist* %vdwc.2.ph, i64 0, i32 3
  %jindex.i1438 = getelementptr inbounds %struct.t_nblist* %vdwc.2.ph, i64 0, i32 10
  %solvent.i1443 = getelementptr inbounds %struct.t_nblist* %vdwc.2.ph, i64 0, i32 6
  %nsatoms.i1447 = getelementptr inbounds %struct.t_nblist* %vdwc.2.ph, i64 0, i32 12
  %maxlen.i1452 = getelementptr inbounds %struct.t_nblist* %vdwc.2.ph, i64 0, i32 5
  %cond378 = select i1 %tobool, i32 18, i32 17
  %cmp3951713 = icmp sgt i32 %nj, 0
  %jjnr.i1525 = getelementptr inbounds %struct.t_nblist* %coul.2.ph, i64 0, i32 11
  %jjnr.i1520 = getelementptr inbounds %struct.t_nblist* %vdw.2.ph, i64 0, i32 11
  %jjnr.i1515 = getelementptr inbounds %struct.t_nblist* %vdwc.2.ph, i64 0, i32 11
  %mul357 = mul nsw i32 %jgid, %ngid
  %107 = sext i32 %6 to i64
  br label %for.body346

if.then227:                                       ; preds = %if.else225
  %idxprom228 = sext i32 %6 to i64
  %arrayidx229 = getelementptr inbounds i16* %4, i64 %idxprom228
  %108 = load i16* %arrayidx229, align 2, !tbaa !5
  %conv230 = zext i16 %108 to i32
  %cmp231 = icmp slt i32 %conv230, %jgid
  br i1 %cmp231, label %cond.true233, label %cond.false236

cond.true233:                                     ; preds = %if.then227
  %mul234 = mul nsw i32 %conv230, %ngid
  %add235 = add nsw i32 %mul234, %jgid
  br label %cond.end239

cond.false236:                                    ; preds = %if.then227
  %mul237 = mul nsw i32 %jgid, %ngid
  %add238 = add nsw i32 %conv230, %mul237
  br label %cond.end239

cond.end239:                                      ; preds = %cond.false236, %cond.true233
  %cond240 = phi i32 [ %add235, %cond.true233 ], [ %add238, %cond.false236 ]
  %tobool241 = icmp ne i32 %bCoulOnly, 0
  %tobool241.not = xor i1 %tobool241, true
  %tobool243 = icmp eq i32 %bVDWOnly, 0
  %or.cond1144 = and i1 %tobool243, %tobool241.not
  br i1 %or.cond1144, label %if.then244, label %if.end250

if.then244:                                       ; preds = %cond.end239
  %cond246 = select i1 %tobool, i32 15, i32 13
  %mul247 = mul nsw i32 %icg, 3
  %idxprom248 = sext i32 %mul247 to i64
  %mno_index = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 46
  %109 = load i32** %mno_index, align 8, !tbaa !3
  %arrayidx249 = getelementptr inbounds i32* %109, i64 %idxprom248
  tail call fastcc void @new_i_nblist(%struct.t_nblist* %vdwc.2.ph, i32 %cond246, i32 %6, i32 %shift, i32 %cond240, i32* %arrayidx249) #7
  br label %if.end250

if.end250:                                        ; preds = %cond.end239, %if.then244
  br i1 %tobool241, label %if.end259, label %if.then252

if.then252:                                       ; preds = %if.end250
  %cond254 = select i1 %tobool, i32 18, i32 17
  %mul255 = mul nsw i32 %icg, 3
  %idxprom256 = sext i32 %mul255 to i64
  %mno_index257 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 46
  %110 = load i32** %mno_index257, align 8, !tbaa !3
  %arrayidx258 = getelementptr inbounds i32* %110, i64 %idxprom256
  tail call fastcc void @new_i_nblist(%struct.t_nblist* %vdw.2.ph, i32 %cond254, i32 %6, i32 %shift, i32 %cond240, i32* %arrayidx258) #7
  br label %if.end259

if.end259:                                        ; preds = %if.then252, %if.end250
  %tobool260 = icmp ne i32 %bVDWOnly, 0
  br i1 %tobool260, label %for.cond269.preheader, label %if.then261

if.then261:                                       ; preds = %if.end259
  %cond263 = select i1 %tobool, i32 18, i32 17
  %mul264 = mul nsw i32 %icg, 3
  %idxprom265 = sext i32 %mul264 to i64
  %mno_index266 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 46
  %111 = load i32** %mno_index266, align 8, !tbaa !3
  %arrayidx267 = getelementptr inbounds i32* %111, i64 %idxprom265
  tail call fastcc void @new_i_nblist(%struct.t_nblist* %coul.2.ph, i32 %cond263, i32 %6, i32 %shift, i32 %cond240, i32* %arrayidx267) #7
  br label %for.cond269.preheader

for.cond269.preheader:                            ; preds = %if.then261, %if.end259
  %cmp2701708 = icmp sgt i32 %nj, 0
  br i1 %cmp2701708, label %for.body272.lr.ph, label %if.end723

for.body272.lr.ph:                                ; preds = %for.cond269.preheader
  %nri1.i1643 = getelementptr inbounds %struct.t_nblist* %vdw.2.ph, i64 0, i32 1
  %nrj.i1644 = getelementptr inbounds %struct.t_nblist* %vdw.2.ph, i64 0, i32 3
  %jindex.i1647 = getelementptr inbounds %struct.t_nblist* %vdw.2.ph, i64 0, i32 10
  %solvent.i1652 = getelementptr inbounds %struct.t_nblist* %vdw.2.ph, i64 0, i32 6
  %nsatoms.i1656 = getelementptr inbounds %struct.t_nblist* %vdw.2.ph, i64 0, i32 12
  %maxlen.i1661 = getelementptr inbounds %struct.t_nblist* %vdw.2.ph, i64 0, i32 5
  %nri1.i1620 = getelementptr inbounds %struct.t_nblist* %coul.2.ph, i64 0, i32 1
  %nrj.i1621 = getelementptr inbounds %struct.t_nblist* %coul.2.ph, i64 0, i32 3
  %jindex.i1624 = getelementptr inbounds %struct.t_nblist* %coul.2.ph, i64 0, i32 10
  %solvent.i1629 = getelementptr inbounds %struct.t_nblist* %coul.2.ph, i64 0, i32 6
  %nsatoms.i1633 = getelementptr inbounds %struct.t_nblist* %coul.2.ph, i64 0, i32 12
  %maxlen.i1638 = getelementptr inbounds %struct.t_nblist* %coul.2.ph, i64 0, i32 5
  %nri1.i1597 = getelementptr inbounds %struct.t_nblist* %vdwc.2.ph, i64 0, i32 1
  %nrj.i1598 = getelementptr inbounds %struct.t_nblist* %vdwc.2.ph, i64 0, i32 3
  %jindex.i1601 = getelementptr inbounds %struct.t_nblist* %vdwc.2.ph, i64 0, i32 10
  %solvent.i1606 = getelementptr inbounds %struct.t_nblist* %vdwc.2.ph, i64 0, i32 6
  %nsatoms.i1610 = getelementptr inbounds %struct.t_nblist* %vdwc.2.ph, i64 0, i32 12
  %maxlen.i1615 = getelementptr inbounds %struct.t_nblist* %vdwc.2.ph, i64 0, i32 5
  %jjnr.i1688 = getelementptr inbounds %struct.t_nblist* %coul.2.ph, i64 0, i32 11
  %jjnr.i1683 = getelementptr inbounds %struct.t_nblist* %vdw.2.ph, i64 0, i32 11
  %jjnr.i1678 = getelementptr inbounds %struct.t_nblist* %vdwc.2.ph, i64 0, i32 11
  br label %for.body272

for.body272:                                      ; preds = %for.inc339, %for.body272.lr.ph
  %indvars.iv1735 = phi i64 [ 0, %for.body272.lr.ph ], [ %indvars.iv.next1736, %for.inc339 ]
  %arrayidx274 = getelementptr inbounds i32* %jjcg, i64 %indvars.iv1735
  %112 = load i32* %arrayidx274, align 4, !tbaa !0
  %cmp275 = icmp eq i32 %112, %icg
  br i1 %cmp275, label %for.inc339, label %if.end278

if.end278:                                        ; preds = %for.body272
  %idxprom279 = sext i32 %112 to i64
  %arrayidx280 = getelementptr inbounds i32* %index, i64 %idxprom279
  %113 = load i32* %arrayidx280, align 4, !tbaa !0
  %add281 = add nsw i32 %112, 1
  %idxprom282 = sext i32 %add281 to i64
  %arrayidx283 = getelementptr inbounds i32* %index, i64 %idxprom282
  %114 = load i32* %arrayidx283, align 4, !tbaa !0
  %cmp2851706 = icmp slt i32 %113, %114
  br i1 %cmp2851706, label %for.body287.lr.ph, label %for.end338

for.body287.lr.ph:                                ; preds = %if.end278
  %115 = sext i32 %113 to i64
  br label %for.body287

for.body287:                                      ; preds = %for.body287.lr.ph, %for.inc336
  %indvars.iv1733 = phi i64 [ %115, %for.body287.lr.ph ], [ %indvars.iv.next1734, %for.inc336 ]
  br i1 %tobool241, label %if.then289, label %if.else298

if.then289:                                       ; preds = %for.body287
  %arrayidx291 = getelementptr inbounds float* %0, i64 %indvars.iv1733
  %116 = load float* %arrayidx291, align 4, !tbaa !4
  %fabsf1141 = tail call float @fabsf(float %116) #9
  %117 = fpext float %fabsf1141 to double
  %cmp294 = fcmp ogt double %117, 1.200000e-38
  br i1 %cmp294, label %if.then296, label %for.inc336

if.then296:                                       ; preds = %if.then289
  %118 = load i32* %nrj.i1621, align 4, !tbaa !0
  %idxprom.i1687 = sext i32 %118 to i64
  %119 = load i32** %jjnr.i1688, align 8, !tbaa !3
  %arrayidx.i1689 = getelementptr inbounds i32* %119, i64 %idxprom.i1687
  %120 = trunc i64 %indvars.iv1733 to i32
  store i32 %120, i32* %arrayidx.i1689, align 4, !tbaa !0
  %121 = load i32* %nrj.i1621, align 4, !tbaa !0
  %inc.i1690 = add nsw i32 %121, 1
  store i32 %inc.i1690, i32* %nrj.i1621, align 4, !tbaa !0
  br label %for.inc336

if.else298:                                       ; preds = %for.body287
  %arrayidx302 = getelementptr inbounds i32* %2, i64 %indvars.iv1733
  %122 = load i32* %arrayidx302, align 4, !tbaa !0
  %idxprom303 = sext i32 %122 to i64
  %arrayidx304 = getelementptr inbounds i32* %bHaveLJ, i64 %idxprom303
  %123 = load i32* %arrayidx304, align 4, !tbaa !0
  %tobool305 = icmp ne i32 %123, 0
  br i1 %tobool260, label %if.then300, label %if.else308

if.then300:                                       ; preds = %if.else298
  br i1 %tobool305, label %if.then306, label %for.inc336

if.then306:                                       ; preds = %if.then300
  %124 = load i32* %nrj.i1644, align 4, !tbaa !0
  %idxprom.i1682 = sext i32 %124 to i64
  %125 = load i32** %jjnr.i1683, align 8, !tbaa !3
  %arrayidx.i1684 = getelementptr inbounds i32* %125, i64 %idxprom.i1682
  %126 = trunc i64 %indvars.iv1733 to i32
  store i32 %126, i32* %arrayidx.i1684, align 4, !tbaa !0
  %127 = load i32* %nrj.i1644, align 4, !tbaa !0
  %inc.i1685 = add nsw i32 %127, 1
  store i32 %inc.i1685, i32* %nrj.i1644, align 4, !tbaa !0
  br label %for.inc336

if.else308:                                       ; preds = %if.else298
  %arrayidx316 = getelementptr inbounds float* %0, i64 %indvars.iv1733
  %128 = load float* %arrayidx316, align 4, !tbaa !4
  %fabsf1140 = tail call float @fabsf(float %128) #9
  %129 = fpext float %fabsf1140 to double
  %cmp319 = fcmp ogt double %129, 1.200000e-38
  br i1 %tobool305, label %if.then314, label %if.else324

if.then314:                                       ; preds = %if.else308
  br i1 %cmp319, label %if.then321, label %if.else322

if.then321:                                       ; preds = %if.then314
  %130 = load i32* %nrj.i1598, align 4, !tbaa !0
  %idxprom.i1677 = sext i32 %130 to i64
  %131 = load i32** %jjnr.i1678, align 8, !tbaa !3
  %arrayidx.i1679 = getelementptr inbounds i32* %131, i64 %idxprom.i1677
  %132 = trunc i64 %indvars.iv1733 to i32
  store i32 %132, i32* %arrayidx.i1679, align 4, !tbaa !0
  %133 = load i32* %nrj.i1598, align 4, !tbaa !0
  %inc.i1680 = add nsw i32 %133, 1
  store i32 %inc.i1680, i32* %nrj.i1598, align 4, !tbaa !0
  br label %for.inc336

if.else322:                                       ; preds = %if.then314
  %134 = load i32* %nrj.i1644, align 4, !tbaa !0
  %idxprom.i1672 = sext i32 %134 to i64
  %135 = load i32** %jjnr.i1683, align 8, !tbaa !3
  %arrayidx.i1674 = getelementptr inbounds i32* %135, i64 %idxprom.i1672
  %136 = trunc i64 %indvars.iv1733 to i32
  store i32 %136, i32* %arrayidx.i1674, align 4, !tbaa !0
  %137 = load i32* %nrj.i1644, align 4, !tbaa !0
  %inc.i1675 = add nsw i32 %137, 1
  store i32 %inc.i1675, i32* %nrj.i1644, align 4, !tbaa !0
  br label %for.inc336

if.else324:                                       ; preds = %if.else308
  br i1 %cmp319, label %if.then331, label %for.inc336

if.then331:                                       ; preds = %if.else324
  %138 = load i32* %nrj.i1621, align 4, !tbaa !0
  %idxprom.i1667 = sext i32 %138 to i64
  %139 = load i32** %jjnr.i1688, align 8, !tbaa !3
  %arrayidx.i1669 = getelementptr inbounds i32* %139, i64 %idxprom.i1667
  %140 = trunc i64 %indvars.iv1733 to i32
  store i32 %140, i32* %arrayidx.i1669, align 4, !tbaa !0
  %141 = load i32* %nrj.i1621, align 4, !tbaa !0
  %inc.i1670 = add nsw i32 %141, 1
  store i32 %inc.i1670, i32* %nrj.i1621, align 4, !tbaa !0
  br label %for.inc336

for.inc336:                                       ; preds = %if.then296, %if.then289, %if.else322, %if.then321, %if.then331, %if.else324, %if.then300, %if.then306
  %indvars.iv.next1734 = add i64 %indvars.iv1733, 1
  %142 = trunc i64 %indvars.iv.next1734 to i32
  %cmp285 = icmp slt i32 %142, %114
  br i1 %cmp285, label %for.body287, label %for.end338

for.end338:                                       ; preds = %for.inc336, %if.end278
  %143 = load i32* %nri1.i1643, align 4, !tbaa !0
  %144 = load i32* %nrj.i1644, align 4, !tbaa !0
  %add.i1645 = add nsw i32 %143, 1
  %idxprom.i1646 = sext i32 %add.i1645 to i64
  %145 = load i32** %jindex.i1647, align 8, !tbaa !3
  %arrayidx.i1648 = getelementptr inbounds i32* %145, i64 %idxprom.i1646
  store i32 %144, i32* %arrayidx.i1648, align 4, !tbaa !0
  %146 = load i32* %nrj.i1644, align 4, !tbaa !0
  %idxprom3.i1649 = sext i32 %143 to i64
  %arrayidx5.i1650 = getelementptr inbounds i32* %145, i64 %idxprom3.i1649
  %147 = load i32* %arrayidx5.i1650, align 4, !tbaa !0
  %sub.i1651 = sub nsw i32 %146, %147
  %148 = load i32* %solvent.i1652, align 4, !tbaa !0
  %cmp.i1653 = icmp eq i32 %148, 1
  br i1 %cmp.i1653, label %if.then.i1659, label %if.end.i1663

if.then.i1659:                                    ; preds = %for.end338
  %mul.i1654 = mul nsw i32 %143, 3
  %idxprom6.i1655 = sext i32 %mul.i1654 to i64
  %149 = load i32** %nsatoms.i1656, align 8, !tbaa !3
  %arrayidx7.i1657 = getelementptr inbounds i32* %149, i64 %idxprom6.i1655
  %150 = load i32* %arrayidx7.i1657, align 4, !tbaa !0
  %mul8.i1658 = mul nsw i32 %150, %sub.i1651
  br label %if.end.i1663

if.end.i1663:                                     ; preds = %if.then.i1659, %for.end338
  %len.0.i1660 = phi i32 [ %mul8.i1658, %if.then.i1659 ], [ %sub.i1651, %for.end338 ]
  %151 = load i32* %maxlen.i1661, align 4, !tbaa !0
  %cmp9.i1662 = icmp sgt i32 %len.0.i1660, %151
  br i1 %cmp9.i1662, label %if.then10.i1664, label %close_i_nblist.exit1665

if.then10.i1664:                                  ; preds = %if.end.i1663
  store i32 %len.0.i1660, i32* %maxlen.i1661, align 4, !tbaa !0
  br label %close_i_nblist.exit1665

close_i_nblist.exit1665:                          ; preds = %if.end.i1663, %if.then10.i1664
  %152 = load i32* %nri1.i1620, align 4, !tbaa !0
  %153 = load i32* %nrj.i1621, align 4, !tbaa !0
  %add.i1622 = add nsw i32 %152, 1
  %idxprom.i1623 = sext i32 %add.i1622 to i64
  %154 = load i32** %jindex.i1624, align 8, !tbaa !3
  %arrayidx.i1625 = getelementptr inbounds i32* %154, i64 %idxprom.i1623
  store i32 %153, i32* %arrayidx.i1625, align 4, !tbaa !0
  %155 = load i32* %nrj.i1621, align 4, !tbaa !0
  %idxprom3.i1626 = sext i32 %152 to i64
  %arrayidx5.i1627 = getelementptr inbounds i32* %154, i64 %idxprom3.i1626
  %156 = load i32* %arrayidx5.i1627, align 4, !tbaa !0
  %sub.i1628 = sub nsw i32 %155, %156
  %157 = load i32* %solvent.i1629, align 4, !tbaa !0
  %cmp.i1630 = icmp eq i32 %157, 1
  br i1 %cmp.i1630, label %if.then.i1636, label %if.end.i1640

if.then.i1636:                                    ; preds = %close_i_nblist.exit1665
  %mul.i1631 = mul nsw i32 %152, 3
  %idxprom6.i1632 = sext i32 %mul.i1631 to i64
  %158 = load i32** %nsatoms.i1633, align 8, !tbaa !3
  %arrayidx7.i1634 = getelementptr inbounds i32* %158, i64 %idxprom6.i1632
  %159 = load i32* %arrayidx7.i1634, align 4, !tbaa !0
  %mul8.i1635 = mul nsw i32 %159, %sub.i1628
  br label %if.end.i1640

if.end.i1640:                                     ; preds = %if.then.i1636, %close_i_nblist.exit1665
  %len.0.i1637 = phi i32 [ %mul8.i1635, %if.then.i1636 ], [ %sub.i1628, %close_i_nblist.exit1665 ]
  %160 = load i32* %maxlen.i1638, align 4, !tbaa !0
  %cmp9.i1639 = icmp sgt i32 %len.0.i1637, %160
  br i1 %cmp9.i1639, label %if.then10.i1641, label %close_i_nblist.exit1642

if.then10.i1641:                                  ; preds = %if.end.i1640
  store i32 %len.0.i1637, i32* %maxlen.i1638, align 4, !tbaa !0
  br label %close_i_nblist.exit1642

close_i_nblist.exit1642:                          ; preds = %if.end.i1640, %if.then10.i1641
  %161 = load i32* %nri1.i1597, align 4, !tbaa !0
  %162 = load i32* %nrj.i1598, align 4, !tbaa !0
  %add.i1599 = add nsw i32 %161, 1
  %idxprom.i1600 = sext i32 %add.i1599 to i64
  %163 = load i32** %jindex.i1601, align 8, !tbaa !3
  %arrayidx.i1602 = getelementptr inbounds i32* %163, i64 %idxprom.i1600
  store i32 %162, i32* %arrayidx.i1602, align 4, !tbaa !0
  %164 = load i32* %nrj.i1598, align 4, !tbaa !0
  %idxprom3.i1603 = sext i32 %161 to i64
  %arrayidx5.i1604 = getelementptr inbounds i32* %163, i64 %idxprom3.i1603
  %165 = load i32* %arrayidx5.i1604, align 4, !tbaa !0
  %sub.i1605 = sub nsw i32 %164, %165
  %166 = load i32* %solvent.i1606, align 4, !tbaa !0
  %cmp.i1607 = icmp eq i32 %166, 1
  br i1 %cmp.i1607, label %if.then.i1613, label %if.end.i1617

if.then.i1613:                                    ; preds = %close_i_nblist.exit1642
  %mul.i1608 = mul nsw i32 %161, 3
  %idxprom6.i1609 = sext i32 %mul.i1608 to i64
  %167 = load i32** %nsatoms.i1610, align 8, !tbaa !3
  %arrayidx7.i1611 = getelementptr inbounds i32* %167, i64 %idxprom6.i1609
  %168 = load i32* %arrayidx7.i1611, align 4, !tbaa !0
  %mul8.i1612 = mul nsw i32 %168, %sub.i1605
  br label %if.end.i1617

if.end.i1617:                                     ; preds = %if.then.i1613, %close_i_nblist.exit1642
  %len.0.i1614 = phi i32 [ %mul8.i1612, %if.then.i1613 ], [ %sub.i1605, %close_i_nblist.exit1642 ]
  %169 = load i32* %maxlen.i1615, align 4, !tbaa !0
  %cmp9.i1616 = icmp sgt i32 %len.0.i1614, %169
  br i1 %cmp9.i1616, label %if.then10.i1618, label %for.inc339

if.then10.i1618:                                  ; preds = %if.end.i1617
  store i32 %len.0.i1614, i32* %maxlen.i1615, align 4, !tbaa !0
  br label %for.inc339

for.inc339:                                       ; preds = %if.then10.i1618, %if.end.i1617, %for.body272
  %indvars.iv.next1736 = add i64 %indvars.iv1735, 1
  %lftr.wideiv1737 = trunc i64 %indvars.iv.next1736 to i32
  %exitcond1738 = icmp eq i32 %lftr.wideiv1737, %nj
  br i1 %exitcond1738, label %if.end723, label %for.body272

for.body346:                                      ; preds = %close_i_nblist.exit1456, %for.body346.lr.ph
  %indvars.iv1745 = phi i64 [ 0, %for.body346.lr.ph ], [ %indvars.iv.next1746, %close_i_nblist.exit1456 ]
  %i.01717 = phi i32 [ 0, %for.body346.lr.ph ], [ %inc490, %close_i_nblist.exit1456 ]
  %170 = add nsw i64 %indvars.iv1745, %107
  %add347 = add nsw i32 %i.01717, %6
  %arrayidx349 = getelementptr inbounds i16* %4, i64 %170
  %171 = load i16* %arrayidx349, align 2, !tbaa !5
  %conv350 = zext i16 %171 to i32
  %cmp351 = icmp slt i32 %conv350, %jgid
  br i1 %cmp351, label %cond.true353, label %cond.false356

cond.true353:                                     ; preds = %for.body346
  %mul354 = mul nsw i32 %conv350, %ngid
  %add355 = add nsw i32 %mul354, %jgid
  br label %cond.end359

cond.false356:                                    ; preds = %for.body346
  %add358 = add nsw i32 %conv350, %mul357
  br label %cond.end359

cond.end359:                                      ; preds = %cond.false356, %cond.true353
  %cond360 = phi i32 [ %add355, %cond.true353 ], [ %add358, %cond.false356 ]
  %arrayidx362 = getelementptr inbounds float* %0, i64 %170
  %172 = load float* %arrayidx362, align 4, !tbaa !4
  br i1 %or.cond1145, label %if.then366, label %if.end369

if.then366:                                       ; preds = %cond.end359
  %173 = trunc i64 %170 to i32
  tail call fastcc void @new_i_nblist(%struct.t_nblist* %vdwc.2.ph, i32 %cond368, i32 %173, i32 %shift, i32 %cond360, i32* null) #7
  br label %if.end369

if.end369:                                        ; preds = %cond.end359, %if.then366
  br i1 %tobool363, label %if.end374, label %if.then371

if.then371:                                       ; preds = %if.end369
  %174 = trunc i64 %170 to i32
  tail call fastcc void @new_i_nblist(%struct.t_nblist* %vdw.2.ph, i32 %cond378, i32 %174, i32 %shift, i32 %cond360, i32* null) #7
  br label %if.end374

if.end374:                                        ; preds = %if.then371, %if.end369
  br i1 %tobool375, label %lor.lhs.false385, label %if.then376

if.then376:                                       ; preds = %if.end374
  %175 = trunc i64 %170 to i32
  tail call fastcc void @new_i_nblist(%struct.t_nblist* %coul.2.ph, i32 %cond378, i32 %175, i32 %shift, i32 %cond360, i32* null) #7
  %fabsf1134 = tail call float @fabsf(float %172) #9
  %176 = fpext float %fabsf1134 to double
  %cmp383 = fcmp olt double %176, 1.200000e-38
  br i1 %cmp383, label %lor.lhs.false385, label %for.cond394.preheader

lor.lhs.false385:                                 ; preds = %if.end374, %if.then376
  br i1 %tobool363, label %if.end488, label %lor.lhs.false387

lor.lhs.false387:                                 ; preds = %lor.lhs.false385
  %arrayidx389 = getelementptr inbounds i32* %2, i64 %170
  %177 = load i32* %arrayidx389, align 4, !tbaa !0
  %idxprom390 = sext i32 %177 to i64
  %arrayidx391 = getelementptr inbounds i32* %bHaveLJ, i64 %idxprom390
  %178 = load i32* %arrayidx391, align 4, !tbaa !0
  %tobool392 = icmp eq i32 %178, 0
  %cmp3951713.not = xor i1 %cmp3951713, true
  %brmerge = or i1 %tobool392, %cmp3951713.not
  br i1 %brmerge, label %if.end488, label %for.body397.lr.ph

for.cond394.preheader:                            ; preds = %if.then376
  br i1 %cmp3951713, label %for.body397.lr.ph, label %if.end488

for.body397.lr.ph:                                ; preds = %lor.lhs.false387, %for.cond394.preheader
  %add404 = add nsw i32 %add347, 1
  %shl = shl i64 1, %indvars.iv1745
  %conv4181135 = and i64 %shl, 4294967295
  br label %for.body397

for.body397:                                      ; preds = %for.inc485, %for.body397.lr.ph
  %indvars.iv1741 = phi i64 [ 0, %for.body397.lr.ph ], [ %indvars.iv.next1742, %for.inc485 ]
  %arrayidx399 = getelementptr inbounds i32* %jjcg, i64 %indvars.iv1741
  %179 = load i32* %arrayidx399, align 4, !tbaa !0
  %cmp400 = icmp eq i32 %179, %icg
  br i1 %cmp400, label %if.end408, label %if.else405

if.else405:                                       ; preds = %for.body397
  %idxprom406 = sext i32 %179 to i64
  %arrayidx407 = getelementptr inbounds i32* %index, i64 %idxprom406
  %180 = load i32* %arrayidx407, align 4, !tbaa !0
  br label %if.end408

if.end408:                                        ; preds = %for.body397, %if.else405
  %jj0.0 = phi i32 [ %180, %if.else405 ], [ %add404, %for.body397 ]
  %add409 = add nsw i32 %179, 1
  %idxprom410 = sext i32 %add409 to i64
  %arrayidx411 = getelementptr inbounds i32* %index, i64 %idxprom410
  %181 = load i32* %arrayidx411, align 4, !tbaa !0
  %cmp4131710 = icmp slt i32 %jj0.0, %181
  br i1 %cmp4131710, label %for.body415.lr.ph, label %for.inc485

for.body415.lr.ph:                                ; preds = %if.end408
  %182 = sext i32 %jj0.0 to i64
  br label %for.body415

for.body415:                                      ; preds = %for.body415.lr.ph, %for.inc482
  %indvars.iv1739 = phi i64 [ %182, %for.body415.lr.ph ], [ %indvars.iv.next1740, %for.inc482 ]
  %arrayidx417 = getelementptr inbounds i64* %bExcl, i64 %indvars.iv1739
  %183 = load i64* %arrayidx417, align 8, !tbaa !7
  %and = and i64 %183, %conv4181135
  %lnot = icmp eq i64 %and, 0
  br i1 %lnot, label %if.then422, label %for.inc482

if.then422:                                       ; preds = %for.body415
  br i1 %tobool363, label %if.then424, label %if.else433

if.then424:                                       ; preds = %if.then422
  %arrayidx426 = getelementptr inbounds float* %0, i64 %indvars.iv1739
  %184 = load float* %arrayidx426, align 4, !tbaa !4
  %fabsf1139 = tail call float @fabsf(float %184) #9
  %185 = fpext float %fabsf1139 to double
  %cmp429 = fcmp ogt double %185, 1.200000e-38
  br i1 %cmp429, label %if.then431, label %for.inc482

if.then431:                                       ; preds = %if.then424
  %186 = load i32* %nrj.i1458, align 4, !tbaa !0
  %idxprom.i1524 = sext i32 %186 to i64
  %187 = load i32** %jjnr.i1525, align 8, !tbaa !3
  %arrayidx.i1526 = getelementptr inbounds i32* %187, i64 %idxprom.i1524
  %188 = trunc i64 %indvars.iv1739 to i32
  store i32 %188, i32* %arrayidx.i1526, align 4, !tbaa !0
  %189 = load i32* %nrj.i1458, align 4, !tbaa !0
  %inc.i1527 = add nsw i32 %189, 1
  store i32 %inc.i1527, i32* %nrj.i1458, align 4, !tbaa !0
  br label %for.inc482

if.else433:                                       ; preds = %if.then422
  %arrayidx437 = getelementptr inbounds i32* %2, i64 %indvars.iv1739
  %190 = load i32* %arrayidx437, align 4, !tbaa !0
  %idxprom438 = sext i32 %190 to i64
  %arrayidx439 = getelementptr inbounds i32* %bHaveLJ, i64 %idxprom438
  %191 = load i32* %arrayidx439, align 4, !tbaa !0
  %tobool440 = icmp ne i32 %191, 0
  br i1 %tobool375, label %if.then435, label %if.else443

if.then435:                                       ; preds = %if.else433
  br i1 %tobool440, label %if.then441, label %for.inc482

if.then441:                                       ; preds = %if.then435
  %192 = load i32* %nrj.i1481, align 4, !tbaa !0
  %idxprom.i1519 = sext i32 %192 to i64
  %193 = load i32** %jjnr.i1520, align 8, !tbaa !3
  %arrayidx.i1521 = getelementptr inbounds i32* %193, i64 %idxprom.i1519
  %194 = trunc i64 %indvars.iv1739 to i32
  store i32 %194, i32* %arrayidx.i1521, align 4, !tbaa !0
  %195 = load i32* %nrj.i1481, align 4, !tbaa !0
  %inc.i1522 = add nsw i32 %195, 1
  store i32 %inc.i1522, i32* %nrj.i1481, align 4, !tbaa !0
  br label %for.inc482

if.else443:                                       ; preds = %if.else433
  %fabsf1136 = tail call float @fabsf(float %172) #9
  %196 = fpext float %fabsf1136 to double
  %cmp452 = fcmp ogt double %196, 1.200000e-38
  br i1 %tobool440, label %if.then449, label %if.else464

if.then449:                                       ; preds = %if.else443
  br i1 %cmp452, label %land.lhs.true454, label %if.else462

land.lhs.true454:                                 ; preds = %if.then449
  %arrayidx456 = getelementptr inbounds float* %0, i64 %indvars.iv1739
  %197 = load float* %arrayidx456, align 4, !tbaa !4
  %fabsf1138 = tail call float @fabsf(float %197) #9
  %198 = fpext float %fabsf1138 to double
  %cmp459 = fcmp ogt double %198, 1.200000e-38
  br i1 %cmp459, label %if.then461, label %if.else462

if.then461:                                       ; preds = %land.lhs.true454
  %199 = load i32* %nrj.i1435, align 4, !tbaa !0
  %idxprom.i1514 = sext i32 %199 to i64
  %200 = load i32** %jjnr.i1515, align 8, !tbaa !3
  %arrayidx.i1516 = getelementptr inbounds i32* %200, i64 %idxprom.i1514
  %201 = trunc i64 %indvars.iv1739 to i32
  store i32 %201, i32* %arrayidx.i1516, align 4, !tbaa !0
  %202 = load i32* %nrj.i1435, align 4, !tbaa !0
  %inc.i1517 = add nsw i32 %202, 1
  store i32 %inc.i1517, i32* %nrj.i1435, align 4, !tbaa !0
  br label %for.inc482

if.else462:                                       ; preds = %land.lhs.true454, %if.then449
  %203 = load i32* %nrj.i1481, align 4, !tbaa !0
  %idxprom.i1509 = sext i32 %203 to i64
  %204 = load i32** %jjnr.i1520, align 8, !tbaa !3
  %arrayidx.i1511 = getelementptr inbounds i32* %204, i64 %idxprom.i1509
  %205 = trunc i64 %indvars.iv1739 to i32
  store i32 %205, i32* %arrayidx.i1511, align 4, !tbaa !0
  %206 = load i32* %nrj.i1481, align 4, !tbaa !0
  %inc.i1512 = add nsw i32 %206, 1
  store i32 %inc.i1512, i32* %nrj.i1481, align 4, !tbaa !0
  br label %for.inc482

if.else464:                                       ; preds = %if.else443
  br i1 %cmp452, label %land.lhs.true469, label %for.inc482

land.lhs.true469:                                 ; preds = %if.else464
  %arrayidx471 = getelementptr inbounds float* %0, i64 %indvars.iv1739
  %207 = load float* %arrayidx471, align 4, !tbaa !4
  %fabsf1137 = tail call float @fabsf(float %207) #9
  %208 = fpext float %fabsf1137 to double
  %cmp474 = fcmp ogt double %208, 1.200000e-38
  br i1 %cmp474, label %if.then476, label %for.inc482

if.then476:                                       ; preds = %land.lhs.true469
  %209 = load i32* %nrj.i1458, align 4, !tbaa !0
  %idxprom.i1504 = sext i32 %209 to i64
  %210 = load i32** %jjnr.i1525, align 8, !tbaa !3
  %arrayidx.i1506 = getelementptr inbounds i32* %210, i64 %idxprom.i1504
  %211 = trunc i64 %indvars.iv1739 to i32
  store i32 %211, i32* %arrayidx.i1506, align 4, !tbaa !0
  %212 = load i32* %nrj.i1458, align 4, !tbaa !0
  %inc.i1507 = add nsw i32 %212, 1
  store i32 %inc.i1507, i32* %nrj.i1458, align 4, !tbaa !0
  br label %for.inc482

for.inc482:                                       ; preds = %for.body415, %if.then441, %if.then435, %if.else464, %land.lhs.true469, %if.then476, %if.then461, %if.else462, %if.then424, %if.then431
  %indvars.iv.next1740 = add i64 %indvars.iv1739, 1
  %213 = trunc i64 %indvars.iv.next1740 to i32
  %cmp413 = icmp slt i32 %213, %181
  br i1 %cmp413, label %for.body415, label %for.inc485

for.inc485:                                       ; preds = %for.inc482, %if.end408
  %indvars.iv.next1742 = add i64 %indvars.iv1741, 1
  %lftr.wideiv1743 = trunc i64 %indvars.iv.next1742 to i32
  %exitcond1744 = icmp eq i32 %lftr.wideiv1743, %nj
  br i1 %exitcond1744, label %if.end488, label %for.body397

if.end488:                                        ; preds = %lor.lhs.false387, %for.cond394.preheader, %for.inc485, %lor.lhs.false385
  %214 = load i32* %nri1.i1480, align 4, !tbaa !0
  %215 = load i32* %nrj.i1481, align 4, !tbaa !0
  %add.i1482 = add nsw i32 %214, 1
  %idxprom.i1483 = sext i32 %add.i1482 to i64
  %216 = load i32** %jindex.i1484, align 8, !tbaa !3
  %arrayidx.i1485 = getelementptr inbounds i32* %216, i64 %idxprom.i1483
  store i32 %215, i32* %arrayidx.i1485, align 4, !tbaa !0
  %217 = load i32* %nrj.i1481, align 4, !tbaa !0
  %idxprom3.i1486 = sext i32 %214 to i64
  %arrayidx5.i1487 = getelementptr inbounds i32* %216, i64 %idxprom3.i1486
  %218 = load i32* %arrayidx5.i1487, align 4, !tbaa !0
  %sub.i1488 = sub nsw i32 %217, %218
  %219 = load i32* %solvent.i1489, align 4, !tbaa !0
  %cmp.i1490 = icmp eq i32 %219, 1
  br i1 %cmp.i1490, label %if.then.i1496, label %if.end.i1500

if.then.i1496:                                    ; preds = %if.end488
  %mul.i1491 = mul nsw i32 %214, 3
  %idxprom6.i1492 = sext i32 %mul.i1491 to i64
  %220 = load i32** %nsatoms.i1493, align 8, !tbaa !3
  %arrayidx7.i1494 = getelementptr inbounds i32* %220, i64 %idxprom6.i1492
  %221 = load i32* %arrayidx7.i1494, align 4, !tbaa !0
  %mul8.i1495 = mul nsw i32 %221, %sub.i1488
  br label %if.end.i1500

if.end.i1500:                                     ; preds = %if.then.i1496, %if.end488
  %len.0.i1497 = phi i32 [ %mul8.i1495, %if.then.i1496 ], [ %sub.i1488, %if.end488 ]
  %222 = load i32* %maxlen.i1498, align 4, !tbaa !0
  %cmp9.i1499 = icmp sgt i32 %len.0.i1497, %222
  br i1 %cmp9.i1499, label %if.then10.i1501, label %close_i_nblist.exit1502

if.then10.i1501:                                  ; preds = %if.end.i1500
  store i32 %len.0.i1497, i32* %maxlen.i1498, align 4, !tbaa !0
  br label %close_i_nblist.exit1502

close_i_nblist.exit1502:                          ; preds = %if.end.i1500, %if.then10.i1501
  %223 = load i32* %nri1.i1457, align 4, !tbaa !0
  %224 = load i32* %nrj.i1458, align 4, !tbaa !0
  %add.i1459 = add nsw i32 %223, 1
  %idxprom.i1460 = sext i32 %add.i1459 to i64
  %225 = load i32** %jindex.i1461, align 8, !tbaa !3
  %arrayidx.i1462 = getelementptr inbounds i32* %225, i64 %idxprom.i1460
  store i32 %224, i32* %arrayidx.i1462, align 4, !tbaa !0
  %226 = load i32* %nrj.i1458, align 4, !tbaa !0
  %idxprom3.i1463 = sext i32 %223 to i64
  %arrayidx5.i1464 = getelementptr inbounds i32* %225, i64 %idxprom3.i1463
  %227 = load i32* %arrayidx5.i1464, align 4, !tbaa !0
  %sub.i1465 = sub nsw i32 %226, %227
  %228 = load i32* %solvent.i1466, align 4, !tbaa !0
  %cmp.i1467 = icmp eq i32 %228, 1
  br i1 %cmp.i1467, label %if.then.i1473, label %if.end.i1477

if.then.i1473:                                    ; preds = %close_i_nblist.exit1502
  %mul.i1468 = mul nsw i32 %223, 3
  %idxprom6.i1469 = sext i32 %mul.i1468 to i64
  %229 = load i32** %nsatoms.i1470, align 8, !tbaa !3
  %arrayidx7.i1471 = getelementptr inbounds i32* %229, i64 %idxprom6.i1469
  %230 = load i32* %arrayidx7.i1471, align 4, !tbaa !0
  %mul8.i1472 = mul nsw i32 %230, %sub.i1465
  br label %if.end.i1477

if.end.i1477:                                     ; preds = %if.then.i1473, %close_i_nblist.exit1502
  %len.0.i1474 = phi i32 [ %mul8.i1472, %if.then.i1473 ], [ %sub.i1465, %close_i_nblist.exit1502 ]
  %231 = load i32* %maxlen.i1475, align 4, !tbaa !0
  %cmp9.i1476 = icmp sgt i32 %len.0.i1474, %231
  br i1 %cmp9.i1476, label %if.then10.i1478, label %close_i_nblist.exit1479

if.then10.i1478:                                  ; preds = %if.end.i1477
  store i32 %len.0.i1474, i32* %maxlen.i1475, align 4, !tbaa !0
  br label %close_i_nblist.exit1479

close_i_nblist.exit1479:                          ; preds = %if.end.i1477, %if.then10.i1478
  %232 = load i32* %nri1.i1434, align 4, !tbaa !0
  %233 = load i32* %nrj.i1435, align 4, !tbaa !0
  %add.i1436 = add nsw i32 %232, 1
  %idxprom.i1437 = sext i32 %add.i1436 to i64
  %234 = load i32** %jindex.i1438, align 8, !tbaa !3
  %arrayidx.i1439 = getelementptr inbounds i32* %234, i64 %idxprom.i1437
  store i32 %233, i32* %arrayidx.i1439, align 4, !tbaa !0
  %235 = load i32* %nrj.i1435, align 4, !tbaa !0
  %idxprom3.i1440 = sext i32 %232 to i64
  %arrayidx5.i1441 = getelementptr inbounds i32* %234, i64 %idxprom3.i1440
  %236 = load i32* %arrayidx5.i1441, align 4, !tbaa !0
  %sub.i1442 = sub nsw i32 %235, %236
  %237 = load i32* %solvent.i1443, align 4, !tbaa !0
  %cmp.i1444 = icmp eq i32 %237, 1
  br i1 %cmp.i1444, label %if.then.i1450, label %if.end.i1454

if.then.i1450:                                    ; preds = %close_i_nblist.exit1479
  %mul.i1445 = mul nsw i32 %232, 3
  %idxprom6.i1446 = sext i32 %mul.i1445 to i64
  %238 = load i32** %nsatoms.i1447, align 8, !tbaa !3
  %arrayidx7.i1448 = getelementptr inbounds i32* %238, i64 %idxprom6.i1446
  %239 = load i32* %arrayidx7.i1448, align 4, !tbaa !0
  %mul8.i1449 = mul nsw i32 %239, %sub.i1442
  br label %if.end.i1454

if.end.i1454:                                     ; preds = %if.then.i1450, %close_i_nblist.exit1479
  %len.0.i1451 = phi i32 [ %mul8.i1449, %if.then.i1450 ], [ %sub.i1442, %close_i_nblist.exit1479 ]
  %240 = load i32* %maxlen.i1452, align 4, !tbaa !0
  %cmp9.i1453 = icmp sgt i32 %len.0.i1451, %240
  br i1 %cmp9.i1453, label %if.then10.i1455, label %close_i_nblist.exit1456

if.then10.i1455:                                  ; preds = %if.end.i1454
  store i32 %len.0.i1451, i32* %maxlen.i1452, align 4, !tbaa !0
  br label %close_i_nblist.exit1456

close_i_nblist.exit1456:                          ; preds = %if.end.i1454, %if.then10.i1455
  %indvars.iv.next1746 = add i64 %indvars.iv1745, 1
  %inc490 = add nsw i32 %i.01717, 1
  %lftr.wideiv1749 = trunc i64 %indvars.iv.next1746 to i32
  %exitcond1750 = icmp eq i32 %lftr.wideiv1749, %sub
  br i1 %exitcond1750, label %if.end723, label %for.body346

for.body498:                                      ; preds = %close_i_nblist.exit, %for.body498.lr.ph
  %indvars.iv1757 = phi i64 [ 0, %for.body498.lr.ph ], [ %indvars.iv.next1758, %close_i_nblist.exit ]
  %i.11726 = phi i32 [ 0, %for.body498.lr.ph ], [ %inc721, %close_i_nblist.exit ]
  %241 = add nsw i64 %indvars.iv1757, %12
  %add499 = add nsw i32 %i.11726, %6
  %arrayidx501 = getelementptr inbounds i16* %4, i64 %241
  %242 = load i16* %arrayidx501, align 2, !tbaa !5
  %conv502 = zext i16 %242 to i32
  %cmp503 = icmp slt i32 %conv502, %jgid
  br i1 %cmp503, label %cond.true505, label %cond.false508

cond.true505:                                     ; preds = %for.body498
  %mul506 = mul nsw i32 %conv502, %ngid
  %add507 = add nsw i32 %mul506, %jgid
  br label %cond.end511

cond.false508:                                    ; preds = %for.body498
  %add510 = add nsw i32 %conv502, %mul509
  br label %cond.end511

cond.end511:                                      ; preds = %cond.false508, %cond.true505
  %cond512 = phi i32 [ %add507, %cond.true505 ], [ %add510, %cond.false508 ]
  %arrayidx514 = getelementptr inbounds float* %0, i64 %241
  %243 = load float* %arrayidx514, align 4, !tbaa !4
  %arrayidx516 = getelementptr inbounds float* %1, i64 %241
  %244 = load float* %arrayidx516, align 4, !tbaa !4
  br i1 %or.cond1146, label %if.then520, label %if.end532

if.then520:                                       ; preds = %cond.end511
  br i1 %cmp11, label %cond.true524, label %cond.end530

cond.true524:                                     ; preds = %if.then520
  %245 = load i32** %mno_index527, align 8, !tbaa !3
  %arrayidx528 = getelementptr inbounds i32* %245, i64 %idxprom526
  br label %cond.end530

cond.end530:                                      ; preds = %if.then520, %cond.true524
  %cond531 = phi i32* [ %arrayidx528, %cond.true524 ], [ null, %if.then520 ]
  %246 = trunc i64 %241 to i32
  tail call fastcc void @new_i_nblist(%struct.t_nblist* %vdwc.2.ph1774, i32 %cond522, i32 %246, i32 %shift, i32 %cond512, i32* %cond531) #7
  br label %if.end532

if.end532:                                        ; preds = %cond.end511, %cond.end530
  br i1 %tobool517, label %if.end546, label %if.then534

if.then534:                                       ; preds = %if.end532
  br i1 %cmp11, label %cond.true538, label %cond.end544

cond.true538:                                     ; preds = %if.then534
  %247 = load i32** %mno_index527, align 8, !tbaa !3
  %arrayidx542 = getelementptr inbounds i32* %247, i64 %idxprom526
  br label %cond.end544

cond.end544:                                      ; preds = %if.then534, %cond.true538
  %cond545 = phi i32* [ %arrayidx542, %cond.true538 ], [ null, %if.then534 ]
  %248 = trunc i64 %241 to i32
  tail call fastcc void @new_i_nblist(%struct.t_nblist* %vdw.2.ph1773, i32 %cond550, i32 %248, i32 %shift, i32 %cond512, i32* %cond545) #7
  br label %if.end546

if.end546:                                        ; preds = %cond.end544, %if.end532
  br i1 %tobool547, label %lor.lhs.false572.critedge, label %if.then548

if.then548:                                       ; preds = %if.end546
  br i1 %cmp11, label %cond.true552, label %lor.lhs.false562

cond.true552:                                     ; preds = %if.then548
  %249 = load i32** %mno_index527, align 8, !tbaa !3
  %arrayidx556 = getelementptr inbounds i32* %249, i64 %idxprom526
  br label %lor.lhs.false562

lor.lhs.false562:                                 ; preds = %cond.true552, %if.then548
  %cond559 = phi i32* [ %arrayidx556, %cond.true552 ], [ null, %if.then548 ]
  %250 = trunc i64 %241 to i32
  tail call fastcc void @new_i_nblist(%struct.t_nblist* %coul.2.ph1772, i32 %cond550, i32 %250, i32 %shift, i32 %cond512, i32* %cond559) #7
  tail call fastcc void @new_i_nblist(%struct.t_nblist* %vdw_free.0.ph, i32 42, i32 %250, i32 %shift, i32 %cond512, i32* null) #7
  tail call fastcc void @new_i_nblist(%struct.t_nblist* %coul_free.0.ph, i32 42, i32 %250, i32 %shift, i32 %cond512, i32* null) #7
  tail call fastcc void @new_i_nblist(%struct.t_nblist* %vdwc_free.0.ph, i32 42, i32 %250, i32 %shift, i32 %cond512, i32* null) #7
  %fabsf = tail call float @fabsf(float %243) #9
  %251 = fpext float %fabsf to double
  %cmp565 = fcmp olt double %251, 1.200000e-38
  br i1 %cmp565, label %land.lhs.true567, label %for.cond587.preheader

land.lhs.true567:                                 ; preds = %lor.lhs.false562
  %fabsf1133 = tail call float @fabsf(float %244) #9
  %252 = fpext float %fabsf1133 to double
  %cmp570 = fcmp olt double %252, 1.200000e-38
  br i1 %cmp570, label %lor.lhs.false572, label %for.cond587.preheader

lor.lhs.false572.critedge:                        ; preds = %if.end546
  %253 = trunc i64 %241 to i32
  tail call fastcc void @new_i_nblist(%struct.t_nblist* %vdw_free.0.ph, i32 42, i32 %253, i32 %shift, i32 %cond512, i32* null) #7
  tail call fastcc void @new_i_nblist(%struct.t_nblist* %coul_free.0.ph, i32 42, i32 %253, i32 %shift, i32 %cond512, i32* null) #7
  tail call fastcc void @new_i_nblist(%struct.t_nblist* %vdwc_free.0.ph, i32 42, i32 %253, i32 %shift, i32 %cond512, i32* null) #7
  br label %lor.lhs.false572

lor.lhs.false572:                                 ; preds = %lor.lhs.false572.critedge, %land.lhs.true567
  br i1 %tobool517, label %if.end713, label %lor.lhs.false574

lor.lhs.false574:                                 ; preds = %lor.lhs.false572
  %arrayidx576 = getelementptr inbounds i32* %2, i64 %241
  %254 = load i32* %arrayidx576, align 4, !tbaa !0
  %idxprom577 = sext i32 %254 to i64
  %arrayidx578 = getelementptr inbounds i32* %bHaveLJ, i64 %idxprom577
  %255 = load i32* %arrayidx578, align 4, !tbaa !0
  %tobool579 = icmp eq i32 %255, 0
  br i1 %tobool579, label %land.lhs.true580, label %for.cond587.preheader

land.lhs.true580:                                 ; preds = %lor.lhs.false574
  %arrayidx582 = getelementptr inbounds i32* %3, i64 %241
  %256 = load i32* %arrayidx582, align 4, !tbaa !0
  %idxprom583 = sext i32 %256 to i64
  %arrayidx584 = getelementptr inbounds i32* %bHaveLJ, i64 %idxprom583
  %257 = load i32* %arrayidx584, align 4, !tbaa !0
  %tobool585 = icmp eq i32 %257, 0
  %cmp5881722.not = xor i1 %cmp5881722, true
  %brmerge1785 = or i1 %tobool585, %cmp5881722.not
  br i1 %brmerge1785, label %if.end713, label %for.body590.lr.ph

for.cond587.preheader:                            ; preds = %lor.lhs.false574, %land.lhs.true567, %lor.lhs.false562
  br i1 %cmp5881722, label %for.body590.lr.ph, label %if.end713

for.body590.lr.ph:                                ; preds = %land.lhs.true580, %for.cond587.preheader
  %add597 = add nsw i32 %add499, 1
  %arrayidx606 = getelementptr inbounds i32* %5, i64 %241
  %258 = trunc i64 %indvars.iv1757 to i32
  %cmp619 = icmp eq i32 %258, 0
  %or.cond1147 = or i1 %brmerge.not, %cmp619
  %shl626 = shl i64 1, %indvars.iv1757
  %conv6271128 = and i64 %shl626, 4294967295
  br label %for.body590

for.body590:                                      ; preds = %for.inc710, %for.body590.lr.ph
  %indvars.iv1753 = phi i64 [ 0, %for.body590.lr.ph ], [ %indvars.iv.next1754, %for.inc710 ]
  %arrayidx592 = getelementptr inbounds i32* %jjcg, i64 %indvars.iv1753
  %259 = load i32* %arrayidx592, align 4, !tbaa !0
  %cmp593 = icmp eq i32 %259, %icg
  br i1 %cmp593, label %if.end601, label %if.else598

if.else598:                                       ; preds = %for.body590
  %idxprom599 = sext i32 %259 to i64
  %arrayidx600 = getelementptr inbounds i32* %index, i64 %idxprom599
  %260 = load i32* %arrayidx600, align 4, !tbaa !0
  br label %if.end601

if.end601:                                        ; preds = %for.body590, %if.else598
  %jj0.1 = phi i32 [ %260, %if.else598 ], [ %add597, %for.body590 ]
  %add602 = add nsw i32 %259, 1
  %idxprom603 = sext i32 %add602 to i64
  %arrayidx604 = getelementptr inbounds i32* %index, i64 %idxprom603
  %261 = load i32* %arrayidx604, align 4, !tbaa !0
  %cmp6081719 = icmp slt i32 %jj0.1, %261
  br i1 %cmp6081719, label %for.body610.lr.ph, label %for.inc710

for.body610.lr.ph:                                ; preds = %if.end601
  %262 = load i32* %arrayidx606, align 4, !tbaa !0
  %tobool611 = icmp eq i32 %262, 0
  %263 = sext i32 %jj0.1 to i64
  br label %for.body610

for.body610:                                      ; preds = %for.body610.lr.ph, %for.inc707
  %indvars.iv1751 = phi i64 [ %263, %for.body610.lr.ph ], [ %indvars.iv.next1752, %for.inc707 ]
  br i1 %tobool611, label %lor.end, label %if.then623

lor.end:                                          ; preds = %for.body610
  %arrayidx613 = getelementptr inbounds i32* %5, i64 %indvars.iv1751
  %264 = load i32* %arrayidx613, align 4, !tbaa !0
  %tobool614 = icmp ne i32 %264, 0
  %brmerge1148 = or i1 %or.cond1147, %tobool614
  br i1 %brmerge1148, label %if.then623, label %for.inc707

if.then623:                                       ; preds = %for.body610, %lor.end
  %265 = phi i1 [ %tobool614, %lor.end ], [ true, %for.body610 ]
  %arrayidx625 = getelementptr inbounds i64* %bExcl, i64 %indvars.iv1751
  %266 = load i64* %arrayidx625, align 8, !tbaa !7
  %and628 = and i64 %266, %conv6271128
  %lnot631 = icmp eq i64 %and628, 0
  br i1 %lnot631, label %if.then634, label %for.inc707

if.then634:                                       ; preds = %if.then623
  br i1 %265, label %if.then636, label %if.else645

if.then636:                                       ; preds = %if.then634
  br i1 %tobool517, label %if.then638, label %if.else639

if.then638:                                       ; preds = %if.then636
  %267 = load i32* %nrj.i1153, align 4, !tbaa !0
  %idxprom.i1349 = sext i32 %267 to i64
  %268 = load i32** %jjnr.i1350, align 8, !tbaa !3
  %arrayidx.i1351 = getelementptr inbounds i32* %268, i64 %idxprom.i1349
  %269 = trunc i64 %indvars.iv1751 to i32
  store i32 %269, i32* %arrayidx.i1351, align 4, !tbaa !0
  %270 = load i32* %nrj.i1153, align 4, !tbaa !0
  %inc.i1352 = add nsw i32 %270, 1
  store i32 %inc.i1352, i32* %nrj.i1153, align 4, !tbaa !0
  br label %for.inc707

if.else639:                                       ; preds = %if.then636
  br i1 %tobool547, label %if.then641, label %if.else642

if.then641:                                       ; preds = %if.else639
  %271 = load i32* %nrj.i1176, align 4, !tbaa !0
  %idxprom.i1344 = sext i32 %271 to i64
  %272 = load i32** %jjnr.i1345, align 8, !tbaa !3
  %arrayidx.i1346 = getelementptr inbounds i32* %272, i64 %idxprom.i1344
  %273 = trunc i64 %indvars.iv1751 to i32
  store i32 %273, i32* %arrayidx.i1346, align 4, !tbaa !0
  %274 = load i32* %nrj.i1176, align 4, !tbaa !0
  %inc.i1347 = add nsw i32 %274, 1
  store i32 %inc.i1347, i32* %nrj.i1176, align 4, !tbaa !0
  br label %for.inc707

if.else642:                                       ; preds = %if.else639
  %275 = load i32* %nrj.i, align 4, !tbaa !0
  %idxprom.i1339 = sext i32 %275 to i64
  %276 = load i32** %jjnr.i1340, align 8, !tbaa !3
  %arrayidx.i1341 = getelementptr inbounds i32* %276, i64 %idxprom.i1339
  %277 = trunc i64 %indvars.iv1751 to i32
  store i32 %277, i32* %arrayidx.i1341, align 4, !tbaa !0
  %278 = load i32* %nrj.i, align 4, !tbaa !0
  %inc.i1342 = add nsw i32 %278, 1
  store i32 %inc.i1342, i32* %nrj.i, align 4, !tbaa !0
  br label %for.inc707

if.else645:                                       ; preds = %if.then634
  br i1 %tobool517, label %if.then647, label %if.else656

if.then647:                                       ; preds = %if.else645
  %arrayidx649 = getelementptr inbounds float* %0, i64 %indvars.iv1751
  %279 = load float* %arrayidx649, align 4, !tbaa !4
  %fabsf1132 = tail call float @fabsf(float %279) #9
  %280 = fpext float %fabsf1132 to double
  %cmp652 = fcmp ogt double %280, 1.200000e-38
  br i1 %cmp652, label %if.then654, label %for.inc707

if.then654:                                       ; preds = %if.then647
  %281 = load i32* %nrj.i1268, align 4, !tbaa !0
  %idxprom.i1334 = sext i32 %281 to i64
  %282 = load i32** %jjnr.i1335, align 8, !tbaa !3
  %arrayidx.i1336 = getelementptr inbounds i32* %282, i64 %idxprom.i1334
  %283 = trunc i64 %indvars.iv1751 to i32
  store i32 %283, i32* %arrayidx.i1336, align 4, !tbaa !0
  %284 = load i32* %nrj.i1268, align 4, !tbaa !0
  %inc.i1337 = add nsw i32 %284, 1
  store i32 %inc.i1337, i32* %nrj.i1268, align 4, !tbaa !0
  br label %for.inc707

if.else656:                                       ; preds = %if.else645
  %arrayidx660 = getelementptr inbounds i32* %2, i64 %indvars.iv1751
  %285 = load i32* %arrayidx660, align 4, !tbaa !0
  %idxprom661 = sext i32 %285 to i64
  %arrayidx662 = getelementptr inbounds i32* %bHaveLJ, i64 %idxprom661
  %286 = load i32* %arrayidx662, align 4, !tbaa !0
  %tobool663 = icmp ne i32 %286, 0
  br i1 %tobool547, label %if.then658, label %if.else666

if.then658:                                       ; preds = %if.else656
  br i1 %tobool663, label %if.then664, label %for.inc707

if.then664:                                       ; preds = %if.then658
  %287 = load i32* %nrj.i1291, align 4, !tbaa !0
  %idxprom.i1329 = sext i32 %287 to i64
  %288 = load i32** %jjnr.i1330, align 8, !tbaa !3
  %arrayidx.i1331 = getelementptr inbounds i32* %288, i64 %idxprom.i1329
  %289 = trunc i64 %indvars.iv1751 to i32
  store i32 %289, i32* %arrayidx.i1331, align 4, !tbaa !0
  %290 = load i32* %nrj.i1291, align 4, !tbaa !0
  %inc.i1332 = add nsw i32 %290, 1
  store i32 %inc.i1332, i32* %nrj.i1291, align 4, !tbaa !0
  br label %for.inc707

if.else666:                                       ; preds = %if.else656
  %fabsf1129 = tail call float @fabsf(float %243) #9
  %291 = fpext float %fabsf1129 to double
  %cmp675 = fcmp ogt double %291, 1.200000e-38
  br i1 %tobool663, label %if.then672, label %if.else687

if.then672:                                       ; preds = %if.else666
  br i1 %cmp675, label %land.lhs.true677, label %if.else685

land.lhs.true677:                                 ; preds = %if.then672
  %arrayidx679 = getelementptr inbounds float* %0, i64 %indvars.iv1751
  %292 = load float* %arrayidx679, align 4, !tbaa !4
  %fabsf1131 = tail call float @fabsf(float %292) #9
  %293 = fpext float %fabsf1131 to double
  %cmp682 = fcmp ogt double %293, 1.200000e-38
  br i1 %cmp682, label %if.then684, label %if.else685

if.then684:                                       ; preds = %land.lhs.true677
  %294 = load i32* %nrj.i1245, align 4, !tbaa !0
  %idxprom.i1324 = sext i32 %294 to i64
  %295 = load i32** %jjnr.i1325, align 8, !tbaa !3
  %arrayidx.i1326 = getelementptr inbounds i32* %295, i64 %idxprom.i1324
  %296 = trunc i64 %indvars.iv1751 to i32
  store i32 %296, i32* %arrayidx.i1326, align 4, !tbaa !0
  %297 = load i32* %nrj.i1245, align 4, !tbaa !0
  %inc.i1327 = add nsw i32 %297, 1
  store i32 %inc.i1327, i32* %nrj.i1245, align 4, !tbaa !0
  br label %for.inc707

if.else685:                                       ; preds = %land.lhs.true677, %if.then672
  %298 = load i32* %nrj.i1291, align 4, !tbaa !0
  %idxprom.i1319 = sext i32 %298 to i64
  %299 = load i32** %jjnr.i1330, align 8, !tbaa !3
  %arrayidx.i1321 = getelementptr inbounds i32* %299, i64 %idxprom.i1319
  %300 = trunc i64 %indvars.iv1751 to i32
  store i32 %300, i32* %arrayidx.i1321, align 4, !tbaa !0
  %301 = load i32* %nrj.i1291, align 4, !tbaa !0
  %inc.i1322 = add nsw i32 %301, 1
  store i32 %inc.i1322, i32* %nrj.i1291, align 4, !tbaa !0
  br label %for.inc707

if.else687:                                       ; preds = %if.else666
  br i1 %cmp675, label %land.lhs.true692, label %for.inc707

land.lhs.true692:                                 ; preds = %if.else687
  %arrayidx694 = getelementptr inbounds float* %0, i64 %indvars.iv1751
  %302 = load float* %arrayidx694, align 4, !tbaa !4
  %fabsf1130 = tail call float @fabsf(float %302) #9
  %303 = fpext float %fabsf1130 to double
  %cmp697 = fcmp ogt double %303, 1.200000e-38
  br i1 %cmp697, label %if.then699, label %for.inc707

if.then699:                                       ; preds = %land.lhs.true692
  %304 = load i32* %nrj.i1268, align 4, !tbaa !0
  %idxprom.i1314 = sext i32 %304 to i64
  %305 = load i32** %jjnr.i1335, align 8, !tbaa !3
  %arrayidx.i1316 = getelementptr inbounds i32* %305, i64 %idxprom.i1314
  %306 = trunc i64 %indvars.iv1751 to i32
  store i32 %306, i32* %arrayidx.i1316, align 4, !tbaa !0
  %307 = load i32* %nrj.i1268, align 4, !tbaa !0
  %inc.i1317 = add nsw i32 %307, 1
  store i32 %inc.i1317, i32* %nrj.i1268, align 4, !tbaa !0
  br label %for.inc707

for.inc707:                                       ; preds = %lor.end, %if.then641, %if.else642, %if.then638, %if.then664, %if.then658, %if.else687, %land.lhs.true692, %if.then699, %if.then684, %if.else685, %if.then647, %if.then654, %if.then623
  %indvars.iv.next1752 = add i64 %indvars.iv1751, 1
  %308 = trunc i64 %indvars.iv.next1752 to i32
  %cmp608 = icmp slt i32 %308, %261
  br i1 %cmp608, label %for.body610, label %for.inc710

for.inc710:                                       ; preds = %for.inc707, %if.end601
  %indvars.iv.next1754 = add i64 %indvars.iv1753, 1
  %lftr.wideiv1755 = trunc i64 %indvars.iv.next1754 to i32
  %exitcond1756 = icmp eq i32 %lftr.wideiv1755, %nj
  br i1 %exitcond1756, label %if.end713, label %for.body590

if.end713:                                        ; preds = %land.lhs.true580, %for.cond587.preheader, %for.inc710, %lor.lhs.false572
  %309 = load i32* %nri1.i1290, align 4, !tbaa !0
  %310 = load i32* %nrj.i1291, align 4, !tbaa !0
  %add.i1292 = add nsw i32 %309, 1
  %idxprom.i1293 = sext i32 %add.i1292 to i64
  %311 = load i32** %jindex.i1294, align 8, !tbaa !3
  %arrayidx.i1295 = getelementptr inbounds i32* %311, i64 %idxprom.i1293
  store i32 %310, i32* %arrayidx.i1295, align 4, !tbaa !0
  %312 = load i32* %nrj.i1291, align 4, !tbaa !0
  %idxprom3.i1296 = sext i32 %309 to i64
  %arrayidx5.i1297 = getelementptr inbounds i32* %311, i64 %idxprom3.i1296
  %313 = load i32* %arrayidx5.i1297, align 4, !tbaa !0
  %sub.i1298 = sub nsw i32 %312, %313
  %314 = load i32* %solvent.i1299, align 4, !tbaa !0
  %cmp.i1300 = icmp eq i32 %314, 1
  br i1 %cmp.i1300, label %if.then.i1306, label %if.end.i1310

if.then.i1306:                                    ; preds = %if.end713
  %mul.i1301 = mul nsw i32 %309, 3
  %idxprom6.i1302 = sext i32 %mul.i1301 to i64
  %315 = load i32** %nsatoms.i1303, align 8, !tbaa !3
  %arrayidx7.i1304 = getelementptr inbounds i32* %315, i64 %idxprom6.i1302
  %316 = load i32* %arrayidx7.i1304, align 4, !tbaa !0
  %mul8.i1305 = mul nsw i32 %316, %sub.i1298
  br label %if.end.i1310

if.end.i1310:                                     ; preds = %if.then.i1306, %if.end713
  %len.0.i1307 = phi i32 [ %mul8.i1305, %if.then.i1306 ], [ %sub.i1298, %if.end713 ]
  %317 = load i32* %maxlen.i1308, align 4, !tbaa !0
  %cmp9.i1309 = icmp sgt i32 %len.0.i1307, %317
  br i1 %cmp9.i1309, label %if.then10.i1311, label %close_i_nblist.exit1312

if.then10.i1311:                                  ; preds = %if.end.i1310
  store i32 %len.0.i1307, i32* %maxlen.i1308, align 4, !tbaa !0
  br label %close_i_nblist.exit1312

close_i_nblist.exit1312:                          ; preds = %if.end.i1310, %if.then10.i1311
  %318 = load i32* %nri1.i1267, align 4, !tbaa !0
  %319 = load i32* %nrj.i1268, align 4, !tbaa !0
  %add.i1269 = add nsw i32 %318, 1
  %idxprom.i1270 = sext i32 %add.i1269 to i64
  %320 = load i32** %jindex.i1271, align 8, !tbaa !3
  %arrayidx.i1272 = getelementptr inbounds i32* %320, i64 %idxprom.i1270
  store i32 %319, i32* %arrayidx.i1272, align 4, !tbaa !0
  %321 = load i32* %nrj.i1268, align 4, !tbaa !0
  %idxprom3.i1273 = sext i32 %318 to i64
  %arrayidx5.i1274 = getelementptr inbounds i32* %320, i64 %idxprom3.i1273
  %322 = load i32* %arrayidx5.i1274, align 4, !tbaa !0
  %sub.i1275 = sub nsw i32 %321, %322
  %323 = load i32* %solvent.i1276, align 4, !tbaa !0
  %cmp.i1277 = icmp eq i32 %323, 1
  br i1 %cmp.i1277, label %if.then.i1283, label %if.end.i1287

if.then.i1283:                                    ; preds = %close_i_nblist.exit1312
  %mul.i1278 = mul nsw i32 %318, 3
  %idxprom6.i1279 = sext i32 %mul.i1278 to i64
  %324 = load i32** %nsatoms.i1280, align 8, !tbaa !3
  %arrayidx7.i1281 = getelementptr inbounds i32* %324, i64 %idxprom6.i1279
  %325 = load i32* %arrayidx7.i1281, align 4, !tbaa !0
  %mul8.i1282 = mul nsw i32 %325, %sub.i1275
  br label %if.end.i1287

if.end.i1287:                                     ; preds = %if.then.i1283, %close_i_nblist.exit1312
  %len.0.i1284 = phi i32 [ %mul8.i1282, %if.then.i1283 ], [ %sub.i1275, %close_i_nblist.exit1312 ]
  %326 = load i32* %maxlen.i1285, align 4, !tbaa !0
  %cmp9.i1286 = icmp sgt i32 %len.0.i1284, %326
  br i1 %cmp9.i1286, label %if.then10.i1288, label %close_i_nblist.exit1289

if.then10.i1288:                                  ; preds = %if.end.i1287
  store i32 %len.0.i1284, i32* %maxlen.i1285, align 4, !tbaa !0
  br label %close_i_nblist.exit1289

close_i_nblist.exit1289:                          ; preds = %if.end.i1287, %if.then10.i1288
  %327 = load i32* %nri1.i1244, align 4, !tbaa !0
  %328 = load i32* %nrj.i1245, align 4, !tbaa !0
  %add.i1246 = add nsw i32 %327, 1
  %idxprom.i1247 = sext i32 %add.i1246 to i64
  %329 = load i32** %jindex.i1248, align 8, !tbaa !3
  %arrayidx.i1249 = getelementptr inbounds i32* %329, i64 %idxprom.i1247
  store i32 %328, i32* %arrayidx.i1249, align 4, !tbaa !0
  %330 = load i32* %nrj.i1245, align 4, !tbaa !0
  %idxprom3.i1250 = sext i32 %327 to i64
  %arrayidx5.i1251 = getelementptr inbounds i32* %329, i64 %idxprom3.i1250
  %331 = load i32* %arrayidx5.i1251, align 4, !tbaa !0
  %sub.i1252 = sub nsw i32 %330, %331
  %332 = load i32* %solvent.i1253, align 4, !tbaa !0
  %cmp.i1254 = icmp eq i32 %332, 1
  br i1 %cmp.i1254, label %if.then.i1260, label %if.end.i1264

if.then.i1260:                                    ; preds = %close_i_nblist.exit1289
  %mul.i1255 = mul nsw i32 %327, 3
  %idxprom6.i1256 = sext i32 %mul.i1255 to i64
  %333 = load i32** %nsatoms.i1257, align 8, !tbaa !3
  %arrayidx7.i1258 = getelementptr inbounds i32* %333, i64 %idxprom6.i1256
  %334 = load i32* %arrayidx7.i1258, align 4, !tbaa !0
  %mul8.i1259 = mul nsw i32 %334, %sub.i1252
  br label %if.end.i1264

if.end.i1264:                                     ; preds = %if.then.i1260, %close_i_nblist.exit1289
  %len.0.i1261 = phi i32 [ %mul8.i1259, %if.then.i1260 ], [ %sub.i1252, %close_i_nblist.exit1289 ]
  %335 = load i32* %maxlen.i1262, align 4, !tbaa !0
  %cmp9.i1263 = icmp sgt i32 %len.0.i1261, %335
  br i1 %cmp9.i1263, label %if.then10.i1265, label %close_i_nblist.exit1266

if.then10.i1265:                                  ; preds = %if.end.i1264
  store i32 %len.0.i1261, i32* %maxlen.i1262, align 4, !tbaa !0
  br label %close_i_nblist.exit1266

close_i_nblist.exit1266:                          ; preds = %if.end.i1264, %if.then10.i1265
  %336 = trunc i64 %indvars.iv1757 to i32
  %cmp716 = icmp eq i32 %336, 0
  %or.cond1149 = and i1 %cmp, %cmp716
  br i1 %or.cond1149, label %if.then718, label %if.end719

if.then718:                                       ; preds = %close_i_nblist.exit1266
  %337 = load i32* %nri1.i1221, align 4, !tbaa !0
  %338 = load i32* %nrj.i1222, align 4, !tbaa !0
  %add.i1223 = add nsw i32 %337, 1
  %idxprom.i1224 = sext i32 %add.i1223 to i64
  %339 = load i32** %jindex.i1225, align 8, !tbaa !3
  %arrayidx.i1226 = getelementptr inbounds i32* %339, i64 %idxprom.i1224
  store i32 %338, i32* %arrayidx.i1226, align 4, !tbaa !0
  %340 = load i32* %nrj.i1222, align 4, !tbaa !0
  %idxprom3.i1227 = sext i32 %337 to i64
  %arrayidx5.i1228 = getelementptr inbounds i32* %339, i64 %idxprom3.i1227
  %341 = load i32* %arrayidx5.i1228, align 4, !tbaa !0
  %sub.i1229 = sub nsw i32 %340, %341
  %342 = load i32* %solvent.i1230, align 4, !tbaa !0
  %cmp.i1231 = icmp eq i32 %342, 1
  br i1 %cmp.i1231, label %if.then.i1237, label %if.end.i1241

if.then.i1237:                                    ; preds = %if.then718
  %mul.i1232 = mul nsw i32 %337, 3
  %idxprom6.i1233 = sext i32 %mul.i1232 to i64
  %343 = load i32** %nsatoms.i1234, align 8, !tbaa !3
  %arrayidx7.i1235 = getelementptr inbounds i32* %343, i64 %idxprom6.i1233
  %344 = load i32* %arrayidx7.i1235, align 4, !tbaa !0
  %mul8.i1236 = mul nsw i32 %344, %sub.i1229
  br label %if.end.i1241

if.end.i1241:                                     ; preds = %if.then.i1237, %if.then718
  %len.0.i1238 = phi i32 [ %mul8.i1236, %if.then.i1237 ], [ %sub.i1229, %if.then718 ]
  %345 = load i32* %maxlen.i1239, align 4, !tbaa !0
  %cmp9.i1240 = icmp sgt i32 %len.0.i1238, %345
  br i1 %cmp9.i1240, label %if.then10.i1242, label %close_i_nblist.exit1243

if.then10.i1242:                                  ; preds = %if.end.i1241
  store i32 %len.0.i1238, i32* %maxlen.i1239, align 4, !tbaa !0
  br label %close_i_nblist.exit1243

close_i_nblist.exit1243:                          ; preds = %if.end.i1241, %if.then10.i1242
  %346 = load i32* %nri1.i1198, align 4, !tbaa !0
  %347 = load i32* %nrj.i1199, align 4, !tbaa !0
  %add.i1200 = add nsw i32 %346, 1
  %idxprom.i1201 = sext i32 %add.i1200 to i64
  %348 = load i32** %jindex.i1202, align 8, !tbaa !3
  %arrayidx.i1203 = getelementptr inbounds i32* %348, i64 %idxprom.i1201
  store i32 %347, i32* %arrayidx.i1203, align 4, !tbaa !0
  %349 = load i32* %nrj.i1199, align 4, !tbaa !0
  %idxprom3.i1204 = sext i32 %346 to i64
  %arrayidx5.i1205 = getelementptr inbounds i32* %348, i64 %idxprom3.i1204
  %350 = load i32* %arrayidx5.i1205, align 4, !tbaa !0
  %sub.i1206 = sub nsw i32 %349, %350
  %351 = load i32* %solvent.i1207, align 4, !tbaa !0
  %cmp.i1208 = icmp eq i32 %351, 1
  br i1 %cmp.i1208, label %if.then.i1214, label %if.end.i1218

if.then.i1214:                                    ; preds = %close_i_nblist.exit1243
  %mul.i1209 = mul nsw i32 %346, 3
  %idxprom6.i1210 = sext i32 %mul.i1209 to i64
  %352 = load i32** %nsatoms.i1211, align 8, !tbaa !3
  %arrayidx7.i1212 = getelementptr inbounds i32* %352, i64 %idxprom6.i1210
  %353 = load i32* %arrayidx7.i1212, align 4, !tbaa !0
  %mul8.i1213 = mul nsw i32 %353, %sub.i1206
  br label %if.end.i1218

if.end.i1218:                                     ; preds = %if.then.i1214, %close_i_nblist.exit1243
  %len.0.i1215 = phi i32 [ %mul8.i1213, %if.then.i1214 ], [ %sub.i1206, %close_i_nblist.exit1243 ]
  %354 = load i32* %maxlen.i1216, align 4, !tbaa !0
  %cmp9.i1217 = icmp sgt i32 %len.0.i1215, %354
  br i1 %cmp9.i1217, label %if.then10.i1219, label %if.end719

if.then10.i1219:                                  ; preds = %if.end.i1218
  store i32 %len.0.i1215, i32* %maxlen.i1216, align 4, !tbaa !0
  br label %if.end719

if.end719:                                        ; preds = %if.then10.i1219, %if.end.i1218, %close_i_nblist.exit1266
  %355 = load i32* %nri1.i1175, align 4, !tbaa !0
  %356 = load i32* %nrj.i1176, align 4, !tbaa !0
  %add.i1177 = add nsw i32 %355, 1
  %idxprom.i1178 = sext i32 %add.i1177 to i64
  %357 = load i32** %jindex.i1179, align 8, !tbaa !3
  %arrayidx.i1180 = getelementptr inbounds i32* %357, i64 %idxprom.i1178
  store i32 %356, i32* %arrayidx.i1180, align 4, !tbaa !0
  %358 = load i32* %nrj.i1176, align 4, !tbaa !0
  %idxprom3.i1181 = sext i32 %355 to i64
  %arrayidx5.i1182 = getelementptr inbounds i32* %357, i64 %idxprom3.i1181
  %359 = load i32* %arrayidx5.i1182, align 4, !tbaa !0
  %sub.i1183 = sub nsw i32 %358, %359
  %360 = load i32* %solvent.i1184, align 4, !tbaa !0
  %cmp.i1185 = icmp eq i32 %360, 1
  br i1 %cmp.i1185, label %if.then.i1191, label %if.end.i1195

if.then.i1191:                                    ; preds = %if.end719
  %mul.i1186 = mul nsw i32 %355, 3
  %idxprom6.i1187 = sext i32 %mul.i1186 to i64
  %361 = load i32** %nsatoms.i1188, align 8, !tbaa !3
  %arrayidx7.i1189 = getelementptr inbounds i32* %361, i64 %idxprom6.i1187
  %362 = load i32* %arrayidx7.i1189, align 4, !tbaa !0
  %mul8.i1190 = mul nsw i32 %362, %sub.i1183
  br label %if.end.i1195

if.end.i1195:                                     ; preds = %if.then.i1191, %if.end719
  %len.0.i1192 = phi i32 [ %mul8.i1190, %if.then.i1191 ], [ %sub.i1183, %if.end719 ]
  %363 = load i32* %maxlen.i1193, align 4, !tbaa !0
  %cmp9.i1194 = icmp sgt i32 %len.0.i1192, %363
  br i1 %cmp9.i1194, label %if.then10.i1196, label %close_i_nblist.exit1197

if.then10.i1196:                                  ; preds = %if.end.i1195
  store i32 %len.0.i1192, i32* %maxlen.i1193, align 4, !tbaa !0
  br label %close_i_nblist.exit1197

close_i_nblist.exit1197:                          ; preds = %if.end.i1195, %if.then10.i1196
  %364 = load i32* %nri1.i1152, align 4, !tbaa !0
  %365 = load i32* %nrj.i1153, align 4, !tbaa !0
  %add.i1154 = add nsw i32 %364, 1
  %idxprom.i1155 = sext i32 %add.i1154 to i64
  %366 = load i32** %jindex.i1156, align 8, !tbaa !3
  %arrayidx.i1157 = getelementptr inbounds i32* %366, i64 %idxprom.i1155
  store i32 %365, i32* %arrayidx.i1157, align 4, !tbaa !0
  %367 = load i32* %nrj.i1153, align 4, !tbaa !0
  %idxprom3.i1158 = sext i32 %364 to i64
  %arrayidx5.i1159 = getelementptr inbounds i32* %366, i64 %idxprom3.i1158
  %368 = load i32* %arrayidx5.i1159, align 4, !tbaa !0
  %sub.i1160 = sub nsw i32 %367, %368
  %369 = load i32* %solvent.i1161, align 4, !tbaa !0
  %cmp.i1162 = icmp eq i32 %369, 1
  br i1 %cmp.i1162, label %if.then.i1168, label %if.end.i1172

if.then.i1168:                                    ; preds = %close_i_nblist.exit1197
  %mul.i1163 = mul nsw i32 %364, 3
  %idxprom6.i1164 = sext i32 %mul.i1163 to i64
  %370 = load i32** %nsatoms.i1165, align 8, !tbaa !3
  %arrayidx7.i1166 = getelementptr inbounds i32* %370, i64 %idxprom6.i1164
  %371 = load i32* %arrayidx7.i1166, align 4, !tbaa !0
  %mul8.i1167 = mul nsw i32 %371, %sub.i1160
  br label %if.end.i1172

if.end.i1172:                                     ; preds = %if.then.i1168, %close_i_nblist.exit1197
  %len.0.i1169 = phi i32 [ %mul8.i1167, %if.then.i1168 ], [ %sub.i1160, %close_i_nblist.exit1197 ]
  %372 = load i32* %maxlen.i1170, align 4, !tbaa !0
  %cmp9.i1171 = icmp sgt i32 %len.0.i1169, %372
  br i1 %cmp9.i1171, label %if.then10.i1173, label %close_i_nblist.exit1174

if.then10.i1173:                                  ; preds = %if.end.i1172
  store i32 %len.0.i1169, i32* %maxlen.i1170, align 4, !tbaa !0
  br label %close_i_nblist.exit1174

close_i_nblist.exit1174:                          ; preds = %if.end.i1172, %if.then10.i1173
  %373 = load i32* %nri1.i, align 4, !tbaa !0
  %374 = load i32* %nrj.i, align 4, !tbaa !0
  %add.i = add nsw i32 %373, 1
  %idxprom.i1150 = sext i32 %add.i to i64
  %375 = load i32** %jindex.i, align 8, !tbaa !3
  %arrayidx.i1151 = getelementptr inbounds i32* %375, i64 %idxprom.i1150
  store i32 %374, i32* %arrayidx.i1151, align 4, !tbaa !0
  %376 = load i32* %nrj.i, align 4, !tbaa !0
  %idxprom3.i = sext i32 %373 to i64
  %arrayidx5.i = getelementptr inbounds i32* %375, i64 %idxprom3.i
  %377 = load i32* %arrayidx5.i, align 4, !tbaa !0
  %sub.i = sub nsw i32 %376, %377
  %378 = load i32* %solvent.i, align 4, !tbaa !0
  %cmp.i = icmp eq i32 %378, 1
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %close_i_nblist.exit1174
  %mul.i = mul nsw i32 %373, 3
  %idxprom6.i = sext i32 %mul.i to i64
  %379 = load i32** %nsatoms.i, align 8, !tbaa !3
  %arrayidx7.i = getelementptr inbounds i32* %379, i64 %idxprom6.i
  %380 = load i32* %arrayidx7.i, align 4, !tbaa !0
  %mul8.i = mul nsw i32 %380, %sub.i
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %close_i_nblist.exit1174
  %len.0.i = phi i32 [ %mul8.i, %if.then.i ], [ %sub.i, %close_i_nblist.exit1174 ]
  %381 = load i32* %maxlen.i, align 4, !tbaa !0
  %cmp9.i = icmp sgt i32 %len.0.i, %381
  br i1 %cmp9.i, label %if.then10.i, label %close_i_nblist.exit

if.then10.i:                                      ; preds = %if.end.i
  store i32 %len.0.i, i32* %maxlen.i, align 4, !tbaa !0
  br label %close_i_nblist.exit

close_i_nblist.exit:                              ; preds = %if.end.i, %if.then10.i
  %indvars.iv.next1758 = add i64 %indvars.iv1757, 1
  %inc721 = add nsw i32 %i.11726, 1
  %lftr.wideiv1761 = trunc i64 %indvars.iv.next1758 to i32
  %exitcond1762 = icmp eq i32 %lftr.wideiv1761, %sub
  br i1 %exitcond1762, label %if.end723, label %for.body498

if.end723:                                        ; preds = %for.cond495.preheader, %close_i_nblist.exit, %for.cond343.preheader, %close_i_nblist.exit1456, %for.cond269.preheader, %for.inc339, %if.then10.i1595, %if.end.i1594
  ret void
}

; Function Attrs: inlinehint nounwind optsize uwtable
define internal fastcc void @new_i_nblist(%struct.t_nblist* nocapture %nlist, i32 %ftype, i32 %i_atom, i32 %shift, i32 %gid, i32* %mno) #5 {
entry:
  %maxnrj = getelementptr inbounds %struct.t_nblist* %nlist, i64 0, i32 4
  %0 = load i32* %maxnrj, align 4, !tbaa !0
  %nrj = getelementptr inbounds %struct.t_nblist* %nlist, i64 0, i32 3
  %1 = load i32* %nrj, align 4, !tbaa !0
  %2 = load i32* @NLJ_INC, align 4, !tbaa !0
  %add = add i32 %1, -1
  %sub = add i32 %add, %2
  %cmp = icmp sgt i32 %0, %sub
  br i1 %cmp, label %if.end8, label %if.then

if.then:                                          ; preds = %entry
  %3 = load %struct._IO_FILE** @debug, align 8, !tbaa !3
  %tobool = icmp eq %struct._IO_FILE* %3, null
  br i1 %tobool, label %if.end, label %if.then1

if.then1:                                         ; preds = %if.then
  %idxprom = sext i32 %ftype to i64
  %longname = getelementptr inbounds [44 x %struct.t_interaction_function]* @interaction_function, i64 0, i64 %idxprom, i32 1
  %4 = load i8** %longname, align 8, !tbaa !3
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([38 x i8]* @.str18, i64 0, i64 0), i32 %2, i8* %4) #8
  %.pre125 = load i32* @NLJ_INC, align 4, !tbaa !0
  %.pre126 = load i32* %maxnrj, align 4, !tbaa !0
  br label %if.end

if.end:                                           ; preds = %if.then, %if.then1
  %5 = phi i32 [ %0, %if.then ], [ %.pre126, %if.then1 ]
  %6 = phi i32 [ %2, %if.then ], [ %.pre125, %if.then1 ]
  %add3 = add nsw i32 %5, %6
  store i32 %add3, i32* %maxnrj, align 4, !tbaa !0
  %jjnr = getelementptr inbounds %struct.t_nblist* %nlist, i64 0, i32 11
  %7 = load i32** %jjnr, align 8, !tbaa !3
  %8 = bitcast i32* %7 to i8*
  %mul = shl i32 %add3, 2
  %call6 = tail call i8* @save_realloc(i8* getelementptr inbounds ([12 x i8]* @.str19, i64 0, i64 0), i8* getelementptr inbounds ([50 x i8]* @.str2, i64 0, i64 0), i32 366, i8* %8, i32 %mul) #8
  %9 = bitcast i8* %call6 to i32*
  store i32* %9, i32** %jjnr, align 8, !tbaa !3
  br label %if.end8

if.end8:                                          ; preds = %entry, %if.end
  %nri9 = getelementptr inbounds %struct.t_nblist* %nlist, i64 0, i32 1
  %10 = load i32* %nri9, align 4, !tbaa !0
  %idxprom10 = sext i32 %10 to i64
  %iinr = getelementptr inbounds %struct.t_nblist* %nlist, i64 0, i32 7
  %11 = load i32** %iinr, align 8, !tbaa !3
  %arrayidx11 = getelementptr inbounds i32* %11, i64 %idxprom10
  %12 = load i32* %arrayidx11, align 4, !tbaa !0
  %cmp12 = icmp eq i32 %12, %i_atom
  br i1 %cmp12, label %lor.lhs.false, label %if.then25

lor.lhs.false:                                    ; preds = %if.end8
  %shift15 = getelementptr inbounds %struct.t_nblist* %nlist, i64 0, i32 9
  %13 = load i32** %shift15, align 8, !tbaa !3
  %arrayidx16 = getelementptr inbounds i32* %13, i64 %idxprom10
  %14 = load i32* %arrayidx16, align 4, !tbaa !0
  %cmp17 = icmp eq i32 %14, %shift
  br i1 %cmp17, label %lor.lhs.false19, label %if.then25

lor.lhs.false19:                                  ; preds = %lor.lhs.false
  %gid21 = getelementptr inbounds %struct.t_nblist* %nlist, i64 0, i32 8
  %15 = load i32** %gid21, align 8, !tbaa !3
  %arrayidx22 = getelementptr inbounds i32* %15, i64 %idxprom10
  %16 = load i32* %arrayidx22, align 4, !tbaa !0
  %cmp23 = icmp eq i32 %16, %gid
  br i1 %cmp23, label %if.end78, label %if.then25

if.then25:                                        ; preds = %lor.lhs.false19, %lor.lhs.false, %if.end8
  %add26 = add nsw i32 %10, 1
  %idxprom27 = sext i32 %add26 to i64
  %jindex = getelementptr inbounds %struct.t_nblist* %nlist, i64 0, i32 10
  %17 = load i32** %jindex, align 8, !tbaa !3
  %arrayidx28 = getelementptr inbounds i32* %17, i64 %idxprom27
  %18 = load i32* %arrayidx28, align 4, !tbaa !0
  %arrayidx31 = getelementptr inbounds i32* %17, i64 %idxprom10
  %19 = load i32* %arrayidx31, align 4, !tbaa !0
  %cmp32 = icmp sgt i32 %18, %19
  %gid35 = getelementptr inbounds %struct.t_nblist* %nlist, i64 0, i32 8
  br i1 %cmp32, label %land.lhs.true, label %if.end49

land.lhs.true:                                    ; preds = %if.then25
  %20 = load i32** %gid35, align 8, !tbaa !3
  %arrayidx36 = getelementptr inbounds i32* %20, i64 %idxprom10
  %21 = load i32* %arrayidx36, align 4, !tbaa !0
  %cmp37 = icmp eq i32 %21, -1
  br i1 %cmp37, label %if.end49, label %if.then39

if.then39:                                        ; preds = %land.lhs.true
  store i32 %add26, i32* %nri9, align 4, !tbaa !0
  %maxnri = getelementptr inbounds %struct.t_nblist* %nlist, i64 0, i32 2
  %22 = load i32* %maxnri, align 4, !tbaa !0
  %cmp43 = icmp slt i32 %add26, %22
  br i1 %cmp43, label %if.end49, label %if.then45

if.then45:                                        ; preds = %if.then39
  %add47 = add nsw i32 %22, 1000
  store i32 %add47, i32* %maxnri, align 4, !tbaa !0
  tail call fastcc void @reallocate_nblist(%struct.t_nblist* %nlist) #7
  %.pre = load i32** %jindex, align 8, !tbaa !3
  %.pre124 = load i32** %iinr, align 8, !tbaa !3
  br label %if.end49

if.end49:                                         ; preds = %if.then25, %if.then39, %land.lhs.true, %if.then45
  %23 = phi i32* [ %.pre124, %if.then45 ], [ %11, %land.lhs.true ], [ %11, %if.then39 ], [ %11, %if.then25 ]
  %24 = phi i32* [ %.pre, %if.then45 ], [ %17, %land.lhs.true ], [ %17, %if.then39 ], [ %17, %if.then25 ]
  %nri.0 = phi i32 [ %add26, %if.then45 ], [ %10, %land.lhs.true ], [ %add26, %if.then39 ], [ %10, %if.then25 ]
  %idxprom50 = sext i32 %nri.0 to i64
  %arrayidx52 = getelementptr inbounds i32* %24, i64 %idxprom50
  %25 = load i32* %arrayidx52, align 4, !tbaa !0
  %add53 = add nsw i32 %nri.0, 1
  %idxprom54 = sext i32 %add53 to i64
  %arrayidx56 = getelementptr inbounds i32* %24, i64 %idxprom54
  store i32 %25, i32* %arrayidx56, align 4, !tbaa !0
  %arrayidx59 = getelementptr inbounds i32* %23, i64 %idxprom50
  store i32 %i_atom, i32* %arrayidx59, align 4, !tbaa !0
  %26 = load i32** %gid35, align 8, !tbaa !3
  %arrayidx62 = getelementptr inbounds i32* %26, i64 %idxprom50
  store i32 %gid, i32* %arrayidx62, align 4, !tbaa !0
  %shift64 = getelementptr inbounds %struct.t_nblist* %nlist, i64 0, i32 9
  %27 = load i32** %shift64, align 8, !tbaa !3
  %arrayidx65 = getelementptr inbounds i32* %27, i64 %idxprom50
  store i32 %shift, i32* %arrayidx65, align 4, !tbaa !0
  %tobool66 = icmp eq i32* %mno, null
  br i1 %tobool66, label %if.end78, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end49
  %mul72 = mul nsw i32 %nri.0, 3
  %nsatoms = getelementptr inbounds %struct.t_nblist* %nlist, i64 0, i32 12
  %28 = load i32** %nsatoms, align 8, !tbaa !3
  %29 = sext i32 %mul72 to i64
  br label %for.body

for.body:                                         ; preds = %for.body, %for.cond.preheader
  %indvars.iv = phi i64 [ 0, %for.cond.preheader ], [ %indvars.iv.next, %for.body ]
  %arrayidx71 = getelementptr inbounds i32* %mno, i64 %indvars.iv
  %30 = load i32* %arrayidx71, align 4, !tbaa !0
  %31 = add nsw i64 %indvars.iv, %29
  %arrayidx75 = getelementptr inbounds i32* %28, i64 %31
  store i32 %30, i32* %arrayidx75, align 4, !tbaa !0
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 3
  br i1 %exitcond, label %if.end78, label %for.body

if.end78:                                         ; preds = %for.body, %if.end49, %lor.lhs.false19
  ret void
}

; Function Attrs: optsize
declare i8* @save_realloc(i8*, i8*, i32, i8*, i32) #1

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @reallocate_nblist(%struct.t_nblist* nocapture %nl) #0 {
entry:
  %0 = load %struct._IO_FILE** @debug, align 8, !tbaa !3
  %tobool = icmp eq %struct._IO_FILE* %0, null
  br i1 %tobool, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  %maxnri1.pre = getelementptr inbounds %struct.t_nblist* %nl, i64 0, i32 2
  br label %if.end

if.then:                                          ; preds = %entry
  %il_code = getelementptr inbounds %struct.t_nblist* %nl, i64 0, i32 0
  %1 = load i32* %il_code, align 4, !tbaa !0
  %maxnri = getelementptr inbounds %struct.t_nblist* %nl, i64 0, i32 2
  %2 = load i32* %maxnri, align 4, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([48 x i8]* @.str20, i64 0, i64 0), i32 %1, i32 %2) #8
  br label %if.end

if.end:                                           ; preds = %entry.if.end_crit_edge, %if.then
  %maxnri1.pre-phi = phi i32* [ %maxnri1.pre, %entry.if.end_crit_edge ], [ %maxnri, %if.then ]
  %iinr = getelementptr inbounds %struct.t_nblist* %nl, i64 0, i32 7
  %3 = load i32** %iinr, align 8, !tbaa !3
  %4 = bitcast i32* %3 to i8*
  %5 = load i32* %maxnri1.pre-phi, align 4, !tbaa !0
  %add = shl i32 %5, 2
  %mul = add i32 %add, 8
  %call3 = tail call i8* @save_realloc(i8* getelementptr inbounds ([9 x i8]* @.str21, i64 0, i64 0), i8* getelementptr inbounds ([50 x i8]* @.str2, i64 0, i64 0), i32 97, i8* %4, i32 %mul) #8
  %6 = bitcast i8* %call3 to i32*
  store i32* %6, i32** %iinr, align 8, !tbaa !3
  %gid = getelementptr inbounds %struct.t_nblist* %nl, i64 0, i32 8
  %7 = load i32** %gid, align 8, !tbaa !3
  %8 = bitcast i32* %7 to i8*
  %9 = load i32* %maxnri1.pre-phi, align 4, !tbaa !0
  %add6 = shl i32 %9, 2
  %mul8 = add i32 %add6, 8
  %call10 = tail call i8* @save_realloc(i8* getelementptr inbounds ([8 x i8]* @.str22, i64 0, i64 0), i8* getelementptr inbounds ([50 x i8]* @.str2, i64 0, i64 0), i32 98, i8* %8, i32 %mul8) #8
  %10 = bitcast i8* %call10 to i32*
  store i32* %10, i32** %gid, align 8, !tbaa !3
  %shift = getelementptr inbounds %struct.t_nblist* %nl, i64 0, i32 9
  %11 = load i32** %shift, align 8, !tbaa !3
  %12 = bitcast i32* %11 to i8*
  %13 = load i32* %maxnri1.pre-phi, align 4, !tbaa !0
  %add13 = shl i32 %13, 2
  %mul15 = add i32 %add13, 8
  %call17 = tail call i8* @save_realloc(i8* getelementptr inbounds ([10 x i8]* @.str23, i64 0, i64 0), i8* getelementptr inbounds ([50 x i8]* @.str2, i64 0, i64 0), i32 99, i8* %12, i32 %mul15) #8
  %14 = bitcast i8* %call17 to i32*
  store i32* %14, i32** %shift, align 8, !tbaa !3
  %jindex = getelementptr inbounds %struct.t_nblist* %nl, i64 0, i32 10
  %15 = load i32** %jindex, align 8, !tbaa !3
  %16 = bitcast i32* %15 to i8*
  %17 = load i32* %maxnri1.pre-phi, align 4, !tbaa !0
  %add20 = shl i32 %17, 2
  %mul22 = add i32 %add20, 8
  %call24 = tail call i8* @save_realloc(i8* getelementptr inbounds ([11 x i8]* @.str24, i64 0, i64 0), i8* getelementptr inbounds ([50 x i8]* @.str2, i64 0, i64 0), i32 100, i8* %16, i32 %mul22) #8
  %18 = bitcast i8* %call24 to i32*
  store i32* %18, i32** %jindex, align 8, !tbaa !3
  %solvent = getelementptr inbounds %struct.t_nblist* %nl, i64 0, i32 6
  %19 = load i32* %solvent, align 4, !tbaa !0
  %cmp = icmp eq i32 %19, 1
  br i1 %cmp, label %if.then27, label %if.end36

if.then27:                                        ; preds = %if.end
  %nsatoms = getelementptr inbounds %struct.t_nblist* %nl, i64 0, i32 12
  %20 = load i32** %nsatoms, align 8, !tbaa !3
  %21 = bitcast i32* %20 to i8*
  %22 = load i32* %maxnri1.pre-phi, align 4, !tbaa !0
  %mul30 = mul i32 %22, 12
  %mul32 = add i32 %mul30, 12
  %call34 = tail call i8* @save_realloc(i8* getelementptr inbounds ([12 x i8]* @.str25, i64 0, i64 0), i8* getelementptr inbounds ([50 x i8]* @.str2, i64 0, i64 0), i32 102, i8* %21, i32 %mul32) #8
  %23 = bitcast i8* %call34 to i32*
  store i32* %23, i32** %nsatoms, align 8, !tbaa !3
  br label %if.end36

if.end36:                                         ; preds = %if.then27, %if.end
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @add_simple(%struct.t_ns_buf* nocapture %nsbuf, i32 %nrj, i32 %cg_j, i32* nocapture %bHaveLJ, i32 %ngid, %struct.t_mdatoms* nocapture %md, i32 %icg, i32 %jgid, %struct.t_block* nocapture %cgs, i64* nocapture %bexcl, i32 %shift, %struct.t_forcerec* %fr) #0 {
entry:
  %ncg = getelementptr inbounds %struct.t_ns_buf* %nsbuf, i64 0, i32 0
  %0 = load i32* %ncg, align 4, !tbaa !0
  %cmp = icmp sgt i32 %0, 1023
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  %nj5.pre = getelementptr inbounds %struct.t_ns_buf* %nsbuf, i64 0, i32 1
  br label %if.end

if.then:                                          ; preds = %entry
  %arraydecay = getelementptr inbounds %struct.t_ns_buf* %nsbuf, i64 0, i32 2, i64 0
  %index = getelementptr inbounds %struct.t_block* %cgs, i64 0, i32 2
  %1 = load i32** %index, align 8, !tbaa !3
  tail call fastcc void @put_in_list(i32* %bHaveLJ, i32 %ngid, %struct.t_mdatoms* %md, i32 %icg, i32 %jgid, i32 %0, i32* %arraydecay, i32* %1, i64* %bexcl, i32 %shift, %struct.t_forcerec* %fr, i32 0, i32 0, i32 0) #7
  %nj = getelementptr inbounds %struct.t_ns_buf* %nsbuf, i64 0, i32 1
  store i32 0, i32* %nj, align 4, !tbaa !0
  store i32 0, i32* %ncg, align 4, !tbaa !0
  br label %if.end

if.end:                                           ; preds = %entry.if.end_crit_edge, %if.then
  %nj5.pre-phi = phi i32* [ %nj5.pre, %entry.if.end_crit_edge ], [ %nj, %if.then ]
  %2 = phi i32 [ %0, %entry.if.end_crit_edge ], [ 0, %if.then ]
  %inc = add nsw i32 %2, 1
  store i32 %inc, i32* %ncg, align 4, !tbaa !0
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds %struct.t_ns_buf* %nsbuf, i64 0, i32 2, i64 %idxprom
  store i32 %cg_j, i32* %arrayidx, align 4, !tbaa !0
  %3 = load i32* %nj5.pre-phi, align 4, !tbaa !0
  %add = add nsw i32 %3, %nrj
  store i32 %add, i32* %nj5.pre-phi, align 4, !tbaa !0
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @do_longrange(%struct._IO_FILE* %log, %struct.t_commrec* %cr, %struct.t_topology* nocapture %top, %struct.t_forcerec* %fr, i32 %ngid, %struct.t_mdatoms* %md, i32 %icg, i32 %jgid, i32 %nlr, i32* nocapture %lr, i64* nocapture %bexcl, i32 %shift, [3 x float]* %x, float* %box_size, %struct.t_nrnb* %nrnb, float %lambda, float* %dvdlambda, %struct.t_groups* nocapture %grps, i32 %bVDWOnly, i32 %bCoulOnly, i32 %bDoForces, i32* nocapture %bHaveLJ) #0 {
entry:
  %tobool = icmp eq i32 %bDoForces, 0
  %f_twin = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 53
  %arrayidx5 = getelementptr inbounds %struct.t_groups* %grps, i64 0, i32 0, i32 1, i64 4
  %arrayidx8 = getelementptr inbounds %struct.t_groups* %grps, i64 0, i32 0, i32 1, i64 3
  br label %for.body

for.body:                                         ; preds = %for.inc, %entry
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.inc ]
  %nri = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 50, i64 %indvars.iv, i32 1
  %0 = load i32* %nri, align 4, !tbaa !0
  %maxnri = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 50, i64 %indvars.iv, i32 2
  %1 = load i32* %maxnri, align 4, !tbaa !0
  %sub = add nsw i32 %1, -32
  %cmp4 = icmp sle i32 %0, %sub
  %or.cond = and i1 %cmp4, %tobool
  br i1 %or.cond, label %for.inc, label %if.then

if.then:                                          ; preds = %for.body
  %cmp.i.i = icmp sgt i32 %1, 0
  br i1 %cmp.i.i, label %if.then.i.i, label %close_neighbor_list.exit

if.then.i.i:                                      ; preds = %if.then
  %add.i.i = add nsw i32 %0, 1
  %idxprom.i.i = sext i32 %add.i.i to i64
  %jindex.i.i = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 50, i64 %indvars.iv, i32 10
  %2 = load i32** %jindex.i.i, align 8, !tbaa !3
  %arrayidx.i.i = getelementptr inbounds i32* %2, i64 %idxprom.i.i
  %3 = load i32* %arrayidx.i.i, align 4, !tbaa !0
  %idxprom2.i.i = sext i32 %0 to i64
  %arrayidx4.i.i = getelementptr inbounds i32* %2, i64 %idxprom2.i.i
  %4 = load i32* %arrayidx4.i.i, align 4, !tbaa !0
  %cmp5.i.i = icmp sgt i32 %3, %4
  br i1 %cmp5.i.i, label %land.lhs.true.i.i, label %close_neighbor_list.exit

land.lhs.true.i.i:                                ; preds = %if.then.i.i
  %gid.i.i = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 50, i64 %indvars.iv, i32 8
  %5 = load i32** %gid.i.i, align 8, !tbaa !3
  %arrayidx7.i.i = getelementptr inbounds i32* %5, i64 %idxprom2.i.i
  %6 = load i32* %arrayidx7.i.i, align 4, !tbaa !0
  %cmp8.i.i = icmp eq i32 %6, -1
  br i1 %cmp8.i.i, label %close_neighbor_list.exit, label %if.then9.i.i

if.then9.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 %add.i.i, i32* %nri, align 4, !tbaa !0
  %nrj.i.i = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 50, i64 %indvars.iv, i32 3
  %7 = load i32* %nrj.i.i, align 4, !tbaa !0
  %add11.i.i = add nsw i32 %0, 2
  %idxprom12.i.i = sext i32 %add11.i.i to i64
  %arrayidx14.i.i = getelementptr inbounds i32* %2, i64 %idxprom12.i.i
  store i32 %7, i32* %arrayidx14.i.i, align 4, !tbaa !0
  br label %close_neighbor_list.exit

close_neighbor_list.exit:                         ; preds = %if.then, %if.then.i.i, %land.lhs.true.i.i, %if.then9.i.i
  %8 = load [3 x float]** %f_twin, align 8, !tbaa !3
  %9 = load float** %arrayidx5, align 8, !tbaa !3
  %10 = load float** %arrayidx8, align 8, !tbaa !3
  %11 = trunc i64 %indvars.iv to i32
  tail call void @do_fnbf(%struct._IO_FILE* %log, %struct.t_commrec* %cr, %struct.t_forcerec* %fr, [3 x float]* %x, [3 x float]* %8, %struct.t_mdatoms* %md, float* %9, float* %10, float* %box_size, %struct.t_nrnb* %nrnb, float %lambda, float* %dvdlambda, i32 1, i32 %11) #8
  store i32 0, i32* %nri, align 4, !tbaa !0
  %nrj.i = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 50, i64 %indvars.iv, i32 3
  store i32 0, i32* %nrj.i, align 4, !tbaa !0
  %maxlen.i = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 50, i64 %indvars.iv, i32 5
  store i32 0, i32* %maxlen.i, align 4, !tbaa !0
  %12 = load i32* %maxnri, align 4, !tbaa !0
  %cmp.i = icmp sgt i32 %12, 0
  br i1 %cmp.i, label %if.then.i, label %for.inc

if.then.i:                                        ; preds = %close_neighbor_list.exit
  %gid.i = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 50, i64 %indvars.iv, i32 8
  %13 = load i32** %gid.i, align 8, !tbaa !3
  store i32 -1, i32* %13, align 4, !tbaa !0
  %maxnrj.i = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 50, i64 %indvars.iv, i32 4
  %14 = load i32* %maxnrj.i, align 4, !tbaa !0
  %cmp1.i = icmp sgt i32 %14, 1
  br i1 %cmp1.i, label %if.then2.i, label %for.inc

if.then2.i:                                       ; preds = %if.then.i
  %jindex.i = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 50, i64 %indvars.iv, i32 10
  %15 = load i32** %jindex.i, align 8, !tbaa !3
  store i32 0, i32* %15, align 4, !tbaa !0
  %arrayidx5.i = getelementptr inbounds i32* %15, i64 1
  store i32 0, i32* %arrayidx5.i, align 4, !tbaa !0
  br label %for.inc

for.inc:                                          ; preds = %if.then2.i, %if.then.i, %close_neighbor_list.exit, %for.body
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 13
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc
  br i1 %tobool, label %if.then10, label %if.end12

if.then10:                                        ; preds = %for.end
  %index = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 3, i64 0, i32 2
  %16 = load i32** %index, align 8, !tbaa !3
  tail call fastcc void @put_in_list(i32* %bHaveLJ, i32 %ngid, %struct.t_mdatoms* %md, i32 %icg, i32 %jgid, i32 %nlr, i32* %lr, i32* %16, i64* %bexcl, i32 %shift, %struct.t_forcerec* %fr, i32 1, i32 %bVDWOnly, i32 %bCoulOnly) #7
  br label %if.end12

if.end12:                                         ; preds = %for.end, %if.then10
  ret void
}

; Function Attrs: optsize
declare void @do_fnbf(%struct._IO_FILE*, %struct.t_commrec*, %struct.t_forcerec*, [3 x float]*, [3 x float]*, %struct.t_mdatoms*, float*, float*, float*, %struct.t_nrnb*, float, float*, i32, i32) #1

; Function Attrs: optsize
declare void @qsort(i8*, i64, i64, i32 (i8*, i8*)* nocapture) #1

; Function Attrs: nounwind optsize readonly uwtable
define internal i32 @rv_comp(i8* nocapture %a, i8* nocapture %b) #2 {
entry:
  %0 = bitcast i8* %a to i32*
  %1 = load i32* %0, align 4, !tbaa !0
  %2 = bitcast i8* %b to i32*
  %3 = load i32* %2, align 4, !tbaa !0
  %4 = load i32* @sdim, align 4, !tbaa !0
  %idxprom = sext i32 %4 to i64
  %idxprom1 = sext i32 %1 to i64
  %5 = load [3 x float]** @sptr, align 8, !tbaa !3
  %arrayidx2 = getelementptr inbounds [3 x float]* %5, i64 %idxprom1, i64 %idxprom
  %6 = load float* %arrayidx2, align 4, !tbaa !4
  %idxprom4 = sext i32 %3 to i64
  %arrayidx6 = getelementptr inbounds [3 x float]* %5, i64 %idxprom4, i64 %idxprom
  %7 = load float* %arrayidx6, align 4, !tbaa !4
  %sub = fsub float %6, %7
  %cmp = fcmp olt float %sub, 0.000000e+00
  br i1 %cmp, label %return, label %if.else

if.else:                                          ; preds = %entry
  %fabsf = tail call float @fabsf(float %sub) #9
  %8 = fpext float %fabsf to double
  %not.cmp7 = fcmp uge double %8, 1.200000e-38
  %. = zext i1 %not.cmp7 to i32
  br label %return

return:                                           ; preds = %if.else, %entry
  %retval.0 = phi i32 [ -1, %entry ], [ %., %if.else ]
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #6

; Function Attrs: optsize
declare void @pr_rvecs(%struct._IO_FILE*, i32, i8*, [3 x float]*, i32) #1

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #6

declare float @fabsf(float)

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #6

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize readonly uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize readnone uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { inlinehint nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { optsize }
attributes #8 = { nounwind optsize }
attributes #9 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }

!0 = metadata !{metadata !"int", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"any pointer", metadata !1}
!4 = metadata !{metadata !"float", metadata !1}
!5 = metadata !{metadata !"short", metadata !1}
!6 = metadata !{metadata !"double", metadata !1}
!7 = metadata !{metadata !"long", metadata !1}
