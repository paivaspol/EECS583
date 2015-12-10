; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/ns.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.t_grid = type { i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32*, i32*, i32* }
%struct.t_ns_buf = type { i32, i32, [1024 x i32] }
%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
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
@.str2 = private unnamed_addr constant [62 x i8] c"../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/ns.c\00", align 1
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
@.str10 = private unnamed_addr constant [11 x i8] c"slab_index\00", align 1
@debug = external global %struct.__sFILE*
@.str11 = private unnamed_addr constant [76 x i8] c"Will use DOMAIN DECOMPOSITION, from charge group index %d to %d on node %d\0A\00", align 1
@.str12 = private unnamed_addr constant [9 x i8] c"cg_index\00", align 1
@.str13 = private unnamed_addr constant [5 x i8] c"grid\00", align 1
@.str14 = private unnamed_addr constant [8 x i8] c"bHaveLJ\00", align 1
@.str15 = private unnamed_addr constant [7 x i8] c"ns_buf\00", align 1
@.str16 = private unnamed_addr constant [10 x i8] c"ns_buf[i]\00", align 1
@stdlog = external global %struct.__sFILE*
@.str17 = private unnamed_addr constant [25 x i8] c"Correcting invalid box:\0A\00", align 1
@.str18 = private unnamed_addr constant [8 x i8] c"old box\00", align 1
@.str19 = private unnamed_addr constant [8 x i8] c"new box\00", align 1
@.str20 = private unnamed_addr constant [65 x i8] c"Initiating neighbourlist type %d for %s with %d SR, %d LR atoms\0A\00", align 1
@.str21 = private unnamed_addr constant [10 x i8] c"UNDEFINED\00", align 1
@esolv_names = external global [5 x i8*]
@.str22 = private unnamed_addr constant [48 x i8] c"reallocating neigborlist il_code=%d, maxnri=%d\0A\00", align 1
@.str23 = private unnamed_addr constant [9 x i8] c"nl->iinr\00", align 1
@.str24 = private unnamed_addr constant [8 x i8] c"nl->gid\00", align 1
@.str25 = private unnamed_addr constant [10 x i8] c"nl->shift\00", align 1
@.str26 = private unnamed_addr constant [11 x i8] c"nl->jindex\00", align 1
@.str27 = private unnamed_addr constant [12 x i8] c"nl->nsatoms\00", align 1
@nbf_index.inloop = private unnamed_addr constant [20 x i32] [i32 -1, i32 0, i32 2, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 32, i32 36, i32 40, i32 44, i32 48, i32 52, i32 58, i32 62, i32 66, i32 72], align 16
@sptr = internal unnamed_addr global [3 x float]* null, align 8
@sdim = internal unnamed_addr global i32 0, align 4
@.str28 = private unnamed_addr constant [45 x i8] c"Just sorted the cg_cm array on dimension %d\0A\00", align 1
@.str29 = private unnamed_addr constant [30 x i8] c"Index:  Coordinates of cg_cm\0A\00", align 1
@.str30 = private unnamed_addr constant [23 x i8] c"%8d%10.3f%10.3f%10.3f\0A\00", align 1
@ns5_core.nl_lr_ljc = internal unnamed_addr global i32** null, align 8
@ns5_core.nl_lr_one = internal unnamed_addr global i32** null, align 8
@ns5_core.nl_sr = internal unnamed_addr global i32** null, align 8
@ns5_core.nlr_ljc = internal unnamed_addr global i32* null, align 8
@ns5_core.nlr_one = internal unnamed_addr global i32* null, align 8
@ns5_core.nsr = internal unnamed_addr global i32* null, align 8
@ns5_core.dcx2 = internal unnamed_addr global float* null, align 8
@ns5_core.dcy2 = internal unnamed_addr global float* null, align 8
@ns5_core.dcz2 = internal unnamed_addr global float* null, align 8
@.str31 = private unnamed_addr constant [6 x i8] c"nl_sr\00", align 1
@.str32 = private unnamed_addr constant [4 x i8] c"nsr\00", align 1
@.str33 = private unnamed_addr constant [8 x i8] c"nlr_ljc\00", align 1
@.str34 = private unnamed_addr constant [8 x i8] c"nlr_one\00", align 1
@.str35 = private unnamed_addr constant [10 x i8] c"nl_lr_ljc\00", align 1
@.str36 = private unnamed_addr constant [10 x i8] c"nl_lr_one\00", align 1
@.str37 = private unnamed_addr constant [9 x i8] c"nl_sr[j]\00", align 1
@.str38 = private unnamed_addr constant [13 x i8] c"nl_lr_ljc[j]\00", align 1
@.str39 = private unnamed_addr constant [13 x i8] c"nl_lr_one[j]\00", align 1
@.str40 = private unnamed_addr constant [52 x i8] c"ns5_core: rs2 = %g, rvdw2 = %g, rcoul2 = %g (nm^2)\0A\00", align 1
@.str41 = private unnamed_addr constant [5 x i8] c"dcx2\00", align 1
@.str42 = private unnamed_addr constant [5 x i8] c"dcy2\00", align 1
@.str43 = private unnamed_addr constant [5 x i8] c"dcz2\00", align 1
@.str44 = private unnamed_addr constant [38 x i8] c"icg = %d, iicg = %d, file %s, line %d\00", align 1
@.str45 = private unnamed_addr constant [38 x i8] c"Adding %5d J particles for nblist %s\0A\00", align 1
@interaction_function = external global [44 x %struct.t_interaction_function]
@.str46 = private unnamed_addr constant [12 x i8] c"nlist->jjnr\00", align 1
@ns_simple_core.aaj = internal unnamed_addr global i32* null, align 8
@.str47 = private unnamed_addr constant [4 x i8] c"aaj\00", align 1
@.str48 = private unnamed_addr constant [35 x i8] c"Dividing by zero, file %s, line %d\00", align 1

; Function Attrs: alwaysinline nounwind optsize ssp uwtable
define i32 @__sputc(i32 %_c, %struct.__sFILE* %_p) #0 {
  %1 = getelementptr inbounds %struct.__sFILE* %_p, i64 0, i32 2
  %2 = load i32* %1, align 4, !tbaa !2
  %3 = add nsw i32 %2, -1
  store i32 %3, i32* %1, align 4, !tbaa !2
  %4 = icmp sgt i32 %2, 0
  br i1 %4, label %._crit_edge, label %5

._crit_edge:                                      ; preds = %0
  %.pre = and i32 %_c, 255
  br label %10

; <label>:5                                       ; preds = %0
  %6 = getelementptr inbounds %struct.__sFILE* %_p, i64 0, i32 6
  %7 = load i32* %6, align 4, !tbaa !11
  %8 = icmp sle i32 %2, %7
  %sext.mask = and i32 %_c, 255
  %9 = icmp eq i32 %sext.mask, 10
  %or.cond = or i1 %9, %8
  br i1 %or.cond, label %15, label %10

; <label>:10                                      ; preds = %._crit_edge, %5
  %.pre-phi = phi i32 [ %.pre, %._crit_edge ], [ %sext.mask, %5 ]
  %11 = trunc i32 %_c to i8
  %12 = getelementptr inbounds %struct.__sFILE* %_p, i64 0, i32 0
  %13 = load i8** %12, align 8, !tbaa !12
  %14 = getelementptr inbounds i8* %13, i64 1
  store i8* %14, i8** %12, align 8, !tbaa !12
  store i8 %11, i8* %13, align 1, !tbaa !13
  br label %17

; <label>:15                                      ; preds = %5
  %16 = tail call i32 @__swbuf(i32 %_c, %struct.__sFILE* %_p) #8
  br label %17

; <label>:17                                      ; preds = %15, %10
  %.0 = phi i32 [ %.pre-phi, %10 ], [ %16, %15 ]
  ret i32 %.0
}

; Function Attrs: optsize
declare i32 @__swbuf(i32, %struct.__sFILE*) #1

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__sigbits(i32 %__signo) #2 {
  %1 = icmp sgt i32 %__signo, 32
  br i1 %1, label %5, label %2

; <label>:2                                       ; preds = %0
  %3 = add nsw i32 %__signo, -1
  %4 = shl i32 1, %3
  br label %5

; <label>:5                                       ; preds = %0, %2
  %6 = phi i32 [ %4, %2 ], [ 0, %0 ]
  ret i32 %6
}

; Function Attrs: nounwind optsize ssp uwtable
define void @correct_box([3 x float]* %box, %struct.t_forcerec* nocapture readonly %fr, %struct.t_graph* nocapture readonly %g) #3 {
  %1 = tail call fastcc i32 @correct_box_elem([3 x float]* %box, i32 2, i32 1) #9
  %2 = tail call fastcc i32 @correct_box_elem([3 x float]* %box, i32 2, i32 0) #9
  %3 = tail call fastcc i32 @correct_box_elem([3 x float]* %box, i32 1, i32 0) #9
  %4 = or i32 %2, %1
  %5 = or i32 %4, %3
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %.loopexit, label %.preheader9

.preheader9:                                      ; preds = %0
  %7 = getelementptr inbounds %struct.t_graph* %g, i64 0, i32 1
  %8 = load i32* %7, align 4, !tbaa !14
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %.lr.ph13, label %.preheader

.lr.ph13:                                         ; preds = %.preheader9
  %10 = getelementptr inbounds %struct.t_graph* %g, i64 0, i32 7
  %11 = load [3 x i32]** %10, align 8, !tbaa !16
  br label %12

; <label>:12                                      ; preds = %.lr.ph13, %12
  %indvars.iv16 = phi i64 [ 0, %.lr.ph13 ], [ %indvars.iv.next17, %12 ]
  %13 = getelementptr inbounds [3 x i32]* %11, i64 %indvars.iv16, i64 2
  %14 = load i32* %13, align 4, !tbaa !17
  %15 = mul nsw i32 %14, %1
  %16 = getelementptr inbounds [3 x i32]* %11, i64 %indvars.iv16, i64 1
  %17 = load i32* %16, align 4, !tbaa !17
  %18 = sub nsw i32 %17, %15
  store i32 %18, i32* %16, align 4, !tbaa !17
  %19 = mul nsw i32 %14, %2
  %20 = getelementptr inbounds [3 x i32]* %11, i64 %indvars.iv16, i64 0
  %21 = load i32* %20, align 4, !tbaa !17
  %22 = sub nsw i32 %21, %19
  %23 = mul nsw i32 %18, %3
  %24 = sub nsw i32 %22, %23
  store i32 %24, i32* %20, align 4, !tbaa !17
  %indvars.iv.next17 = add nuw nsw i64 %indvars.iv16, 1
  %25 = load i32* %7, align 4, !tbaa !14
  %26 = sext i32 %25 to i64
  %27 = icmp slt i64 %indvars.iv.next17, %26
  br i1 %27, label %12, label %.preheader

.preheader:                                       ; preds = %.preheader9, %12, %._crit_edge
  %indvars.iv14 = phi i64 [ %indvars.iv.next15, %._crit_edge ], [ 0, %12 ], [ 0, %.preheader9 ]
  %28 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 49, i64 %indvars.iv14, i32 1
  %29 = load i32* %28, align 4, !tbaa !18
  %30 = icmp sgt i32 %29, 0
  br i1 %30, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %31 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 49, i64 %indvars.iv14, i32 9
  %.pre = load i32** %31, align 8, !tbaa !20
  br label %32

; <label>:32                                      ; preds = %.lr.ph, %56
  %33 = phi i32* [ %.pre, %.lr.ph ], [ %57, %56 ]
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %56 ]
  %34 = getelementptr inbounds i32* %33, i64 %indvars.iv
  %35 = load i32* %34, align 4, !tbaa !17
  %36 = srem i32 %35, 3
  %37 = sdiv i32 %35, 3
  %38 = srem i32 %37, 3
  %39 = add nsw i32 %38, -1
  %40 = sdiv i32 %35, 9
  %41 = add nsw i32 %40, -1
  %42 = mul nsw i32 %41, %1
  %43 = sub i32 %39, %42
  %44 = mul nsw i32 %41, %2
  %45 = mul nsw i32 %43, %3
  %46 = mul nsw i32 %40, 3
  %47 = add nsw i32 %43, %46
  %48 = mul i32 %47, 3
  %49 = add nsw i32 %36, 2
  %50 = sub i32 %49, %44
  %51 = sub i32 %50, %45
  %52 = add i32 %51, %48
  %53 = add i32 %52, 1
  %54 = icmp ugt i32 %53, 26
  br i1 %54, label %55, label %56

; <label>:55                                      ; preds = %32
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([33 x i8]* @.str, i64 0, i64 0)) #8
  %.pre18 = load i32** %31, align 8, !tbaa !20
  br label %56

; <label>:56                                      ; preds = %32, %55
  %57 = phi i32* [ %33, %32 ], [ %.pre18, %55 ]
  %58 = getelementptr inbounds i32* %57, i64 %indvars.iv
  store i32 %53, i32* %58, align 4, !tbaa !17
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %59 = load i32* %28, align 4, !tbaa !18
  %60 = sext i32 %59 to i64
  %61 = icmp slt i64 %indvars.iv.next, %60
  br i1 %61, label %32, label %._crit_edge

._crit_edge:                                      ; preds = %56, %.preheader
  %indvars.iv.next15 = add nuw nsw i64 %indvars.iv14, 1
  %exitcond = icmp eq i64 %indvars.iv.next15, 13
  br i1 %exitcond, label %.loopexit, label %.preheader

.loopexit:                                        ; preds = %._crit_edge, %0
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define internal fastcc i32 @correct_box_elem([3 x float]* %box, i32 %v, i32 %d) #3 {
  %1 = sext i32 %d to i64
  %2 = sext i32 %v to i64
  %3 = getelementptr inbounds [3 x float]* %box, i64 %2
  %4 = getelementptr inbounds [3 x float]* %box, i64 %2, i64 %1
  %5 = load float* %4, align 4, !tbaa !21
  %6 = fpext float %5 to double
  %7 = getelementptr inbounds [3 x float]* %box, i64 %1
  %8 = getelementptr inbounds [3 x float]* %box, i64 %1, i64 %1
  %9 = load float* %8, align 4, !tbaa !21
  %10 = fpext float %9 to double
  %11 = fmul double %10, 5.001000e-01
  %12 = fcmp ogt double %6, %11
  br i1 %12, label %.lr.ph10, label %.preheader

.lr.ph10:                                         ; preds = %0
  %13 = getelementptr inbounds [3 x float]* %3, i64 0, i64 0
  %14 = getelementptr inbounds [3 x float]* %7, i64 0, i64 0
  %15 = getelementptr inbounds [3 x float]* %box, i64 %2, i64 1
  %16 = getelementptr inbounds [3 x float]* %box, i64 %1, i64 1
  %17 = getelementptr inbounds [3 x float]* %box, i64 %2, i64 2
  %18 = getelementptr inbounds [3 x float]* %box, i64 %1, i64 2
  br label %32

.preheader:                                       ; preds = %.backedge1, %0
  %19 = phi float [ %9, %0 ], [ %54, %.backedge1 ]
  %20 = phi float [ %5, %0 ], [ %52, %.backedge1 ]
  %shift.0.lcssa = phi i32 [ 0, %0 ], [ %49, %.backedge1 ]
  %21 = fsub float -0.000000e+00, %20
  %22 = fpext float %21 to double
  %23 = fpext float %19 to double
  %24 = fmul double %23, 5.001000e-01
  %25 = fcmp ogt double %22, %24
  br i1 %25, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %26 = getelementptr inbounds [3 x float]* %3, i64 0, i64 0
  %27 = getelementptr inbounds [3 x float]* %7, i64 0, i64 0
  %28 = getelementptr inbounds [3 x float]* %box, i64 %2, i64 1
  %29 = getelementptr inbounds [3 x float]* %box, i64 %1, i64 1
  %30 = getelementptr inbounds [3 x float]* %box, i64 %2, i64 2
  %31 = getelementptr inbounds [3 x float]* %box, i64 %1, i64 2
  br label %58

; <label>:32                                      ; preds = %.lr.ph10, %.backedge1
  %shift.08 = phi i32 [ 0, %.lr.ph10 ], [ %49, %.backedge1 ]
  %33 = load %struct.__sFILE** @stdlog, align 8, !tbaa !23
  %34 = icmp eq %struct.__sFILE* %33, null
  br i1 %34, label %38, label %35

; <label>:35                                      ; preds = %32
  %36 = tail call i64 @fwrite(i8* getelementptr inbounds ([25 x i8]* @.str17, i64 0, i64 0), i64 24, i64 1, %struct.__sFILE* %33)
  %37 = load %struct.__sFILE** @stdlog, align 8, !tbaa !23
  tail call void @pr_rvecs(%struct.__sFILE* %37, i32 0, i8* getelementptr inbounds ([8 x i8]* @.str18, i64 0, i64 0), [3 x float]* %box, i32 3) #8
  %.pre = load %struct.__sFILE** @stdlog, align 8, !tbaa !23
  br label %38

; <label>:38                                      ; preds = %32, %35
  %39 = phi %struct.__sFILE* [ null, %32 ], [ %.pre, %35 ]
  %40 = load float* %13, align 4, !tbaa !21
  %41 = load float* %14, align 4, !tbaa !21
  %42 = fsub float %40, %41
  %43 = load float* %15, align 4, !tbaa !21
  %44 = load float* %16, align 4, !tbaa !21
  %45 = fsub float %43, %44
  %46 = load float* %17, align 4, !tbaa !21
  %47 = load float* %18, align 4, !tbaa !21
  %48 = fsub float %46, %47
  store float %42, float* %13, align 4, !tbaa !21
  store float %45, float* %15, align 4, !tbaa !21
  store float %48, float* %17, align 4, !tbaa !21
  %49 = add nsw i32 %shift.08, -1
  %50 = icmp eq %struct.__sFILE* %39, null
  br i1 %50, label %.backedge1, label %51

; <label>:51                                      ; preds = %38
  tail call void @pr_rvecs(%struct.__sFILE* %39, i32 0, i8* getelementptr inbounds ([8 x i8]* @.str19, i64 0, i64 0), [3 x float]* %box, i32 3) #8
  br label %.backedge1

.backedge1:                                       ; preds = %51, %38
  %52 = load float* %4, align 4, !tbaa !21
  %53 = fpext float %52 to double
  %54 = load float* %8, align 4, !tbaa !21
  %55 = fpext float %54 to double
  %56 = fmul double %55, 5.001000e-01
  %57 = fcmp ogt double %53, %56
  br i1 %57, label %32, label %.preheader

; <label>:58                                      ; preds = %.lr.ph, %.backedge
  %shift.17 = phi i32 [ %shift.0.lcssa, %.lr.ph ], [ %75, %.backedge ]
  %59 = load %struct.__sFILE** @stdlog, align 8, !tbaa !23
  %60 = icmp eq %struct.__sFILE* %59, null
  br i1 %60, label %64, label %61

; <label>:61                                      ; preds = %58
  %62 = tail call i64 @fwrite(i8* getelementptr inbounds ([25 x i8]* @.str17, i64 0, i64 0), i64 24, i64 1, %struct.__sFILE* %59)
  %63 = load %struct.__sFILE** @stdlog, align 8, !tbaa !23
  tail call void @pr_rvecs(%struct.__sFILE* %63, i32 0, i8* getelementptr inbounds ([8 x i8]* @.str18, i64 0, i64 0), [3 x float]* %box, i32 3) #8
  %.pre19 = load %struct.__sFILE** @stdlog, align 8, !tbaa !23
  br label %64

; <label>:64                                      ; preds = %58, %61
  %65 = phi %struct.__sFILE* [ null, %58 ], [ %.pre19, %61 ]
  %66 = load float* %26, align 4, !tbaa !21
  %67 = load float* %27, align 4, !tbaa !21
  %68 = fadd float %66, %67
  %69 = load float* %28, align 4, !tbaa !21
  %70 = load float* %29, align 4, !tbaa !21
  %71 = fadd float %69, %70
  %72 = load float* %30, align 4, !tbaa !21
  %73 = load float* %31, align 4, !tbaa !21
  %74 = fadd float %72, %73
  store float %68, float* %26, align 4, !tbaa !21
  store float %71, float* %28, align 4, !tbaa !21
  store float %74, float* %30, align 4, !tbaa !21
  %75 = add nsw i32 %shift.17, 1
  %76 = icmp eq %struct.__sFILE* %65, null
  br i1 %76, label %.backedge, label %77

; <label>:77                                      ; preds = %64
  tail call void @pr_rvecs(%struct.__sFILE* %65, i32 0, i8* getelementptr inbounds ([8 x i8]* @.str19, i64 0, i64 0), [3 x float]* %box, i32 3) #8
  br label %.backedge

.backedge:                                        ; preds = %77, %64
  %78 = load float* %4, align 4, !tbaa !21
  %79 = fsub float -0.000000e+00, %78
  %80 = fpext float %79 to double
  %81 = load float* %8, align 4, !tbaa !21
  %82 = fpext float %81 to double
  %83 = fmul double %82, 5.001000e-01
  %84 = fcmp ogt double %80, %83
  br i1 %84, label %58, label %._crit_edge

._crit_edge:                                      ; preds = %.backedge, %.preheader
  %shift.1.lcssa = phi i32 [ %shift.0.lcssa, %.preheader ], [ %75, %.backedge ]
  ret i32 %shift.1.lcssa
}

; Function Attrs: optsize
declare void @fatal_error(i32, i8*, ...) #1

; Function Attrs: nounwind optsize ssp uwtable
define void @init_neighbor_list(%struct.__sFILE* nocapture readnone %log, %struct.t_forcerec* %fr, i32 %homenr) #3 {
  %1 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 41
  %2 = load i32* %1, align 4, !tbaa !24
  %3 = mul i32 %2, -3
  %4 = add i32 %3, %homenr
  %5 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 39
  %6 = load i32* %5, align 4, !tbaa !26
  %7 = sitofp i32 %6 to float
  %8 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 40, i64 0
  %9 = load float* %8, align 4, !tbaa !21
  %10 = fmul float %7, %9
  %11 = fptosi float %10 to i32
  %12 = sub i32 %4, %11
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %15

; <label>:14                                      ; preds = %0
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([87 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([62 x i8]* @.str2, i64 0, i64 0), i32 286) #8
  %.pre = load i32* %5, align 4, !tbaa !26
  %.pre10 = load i32* %1, align 4, !tbaa !24
  br label %15

; <label>:15                                      ; preds = %14, %0
  %16 = phi i32 [ %.pre10, %14 ], [ %2, %0 ]
  %17 = phi i32 [ %.pre, %14 ], [ %6, %0 ]
  %18 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 51
  %19 = load i32* %18, align 4, !tbaa !27
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %25, label %21

; <label>:21                                      ; preds = %15
  %22 = icmp slt i32 %17, 50
  %. = select i1 %22, i32 %17, i32 50
  %23 = icmp slt i32 %16, 50
  %24 = select i1 %23, i32 %16, i32 50
  br label %25

; <label>:25                                      ; preds = %15, %21
  %maxlr.0 = phi i32 [ 50, %21 ], [ 0, %15 ]
  %maxlr_mno.0 = phi i32 [ %., %21 ], [ 0, %15 ]
  %maxlr_wat.0 = phi i32 [ %24, %21 ], [ 0, %15 ]
  %26 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 49, i64 0
  %27 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 50, i64 0
  %28 = tail call fastcc i32 @nbf_index(%struct.t_forcerec* %fr, i32 1, i32 1, i32 0, i32 0) #9
  tail call fastcc void @init_nblist(%struct.t_nblist* %26, %struct.t_nblist* %27, i32 %12, i32 %maxlr.0, i32 0, i32 %28) #9
  %29 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 49, i64 1
  %30 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 50, i64 1
  %31 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 14
  %32 = load i32* %31, align 4, !tbaa !28
  %33 = icmp eq i32 %32, 0
  %34 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 64
  %35 = load i32* %34, align 4, !tbaa !29
  %36 = icmp eq i32 %35, 0
  br i1 %33, label %38, label %37

; <label>:37                                      ; preds = %25
  %.14.i = select i1 %36, i64 3, i64 4
  br label %nbf_index.exit

; <label>:38                                      ; preds = %25
  %.12.i = select i1 %36, i64 1, i64 2
  br label %nbf_index.exit

nbf_index.exit:                                   ; preds = %37, %38
  %ivdw.0.i = phi i64 [ %.12.i, %38 ], [ %.14.i, %37 ]
  %39 = getelementptr inbounds [20 x i32]* @nbf_index.inloop, i64 0, i64 %ivdw.0.i
  %40 = load i32* %39, align 4, !tbaa !17
  tail call fastcc void @init_nblist(%struct.t_nblist* %29, %struct.t_nblist* %30, i32 %12, i32 %maxlr.0, i32 0, i32 %40) #9
  %41 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 49, i64 2
  %42 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 50, i64 2
  %43 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 13
  %44 = load i32* %43, align 4, !tbaa !30
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %nbf_index.exit2

; <label>:46                                      ; preds = %nbf_index.exit
  %47 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 7
  %48 = load i32* %47, align 4, !tbaa !31
  %49 = icmp eq i32 %48, 0
  %phitmp9 = select i1 %49, i64 5, i64 10
  br label %nbf_index.exit2

nbf_index.exit2:                                  ; preds = %nbf_index.exit, %46
  %icoul.0.i = phi i64 [ 15, %nbf_index.exit ], [ %phitmp9, %46 ]
  %50 = getelementptr inbounds [20 x i32]* @nbf_index.inloop, i64 0, i64 %icoul.0.i
  %51 = load i32* %50, align 4, !tbaa !17
  tail call fastcc void @init_nblist(%struct.t_nblist* %41, %struct.t_nblist* %42, i32 %12, i32 %maxlr.0, i32 0, i32 %51) #9
  %52 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 49, i64 6
  %53 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 50, i64 6
  %54 = tail call fastcc i32 @nbf_index(%struct.t_forcerec* %fr, i32 1, i32 1, i32 0, i32 1) #9
  tail call fastcc void @init_nblist(%struct.t_nblist* %52, %struct.t_nblist* %53, i32 %17, i32 %maxlr_mno.0, i32 1, i32 %54) #9
  %55 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 49, i64 7
  %56 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 50, i64 7
  %57 = tail call fastcc i32 @nbf_index(%struct.t_forcerec* %fr, i32 1, i32 0, i32 0, i32 1) #9
  tail call fastcc void @init_nblist(%struct.t_nblist* %55, %struct.t_nblist* %56, i32 %17, i32 %maxlr_mno.0, i32 1, i32 %57) #9
  %58 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 49, i64 8
  %59 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 50, i64 8
  %60 = tail call fastcc i32 @nbf_index(%struct.t_forcerec* %fr, i32 0, i32 1, i32 0, i32 1) #9
  tail call fastcc void @init_nblist(%struct.t_nblist* %58, %struct.t_nblist* %59, i32 %17, i32 %maxlr_mno.0, i32 1, i32 %60) #9
  %61 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 49, i64 9
  %62 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 50, i64 9
  %63 = tail call fastcc i32 @nbf_index(%struct.t_forcerec* %fr, i32 1, i32 1, i32 0, i32 2) #9
  tail call fastcc void @init_nblist(%struct.t_nblist* %61, %struct.t_nblist* %62, i32 %16, i32 %maxlr_wat.0, i32 2, i32 %63) #9
  %64 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 49, i64 10
  %65 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 50, i64 10
  %66 = tail call fastcc i32 @nbf_index(%struct.t_forcerec* %fr, i32 0, i32 1, i32 0, i32 2) #9
  tail call fastcc void @init_nblist(%struct.t_nblist* %64, %struct.t_nblist* %65, i32 %16, i32 %maxlr_wat.0, i32 2, i32 %66) #9
  %67 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 49, i64 11
  %68 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 50, i64 11
  %69 = tail call fastcc i32 @nbf_index(%struct.t_forcerec* %fr, i32 1, i32 1, i32 0, i32 3) #9
  tail call fastcc void @init_nblist(%struct.t_nblist* %67, %struct.t_nblist* %68, i32 %16, i32 %maxlr_wat.0, i32 3, i32 %69) #9
  %70 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 49, i64 12
  %71 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 50, i64 12
  %72 = tail call fastcc i32 @nbf_index(%struct.t_forcerec* %fr, i32 0, i32 1, i32 0, i32 3) #9
  tail call fastcc void @init_nblist(%struct.t_nblist* %70, %struct.t_nblist* %71, i32 %16, i32 %maxlr_wat.0, i32 3, i32 %72) #9
  %73 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 29
  %74 = load i32* %73, align 4, !tbaa !32
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %99, label %76

; <label>:76                                      ; preds = %nbf_index.exit2
  %77 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 49, i64 3
  %78 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 50, i64 3
  %79 = tail call fastcc i32 @nbf_index(%struct.t_forcerec* %fr, i32 1, i32 1, i32 1, i32 0) #9
  tail call fastcc void @init_nblist(%struct.t_nblist* %77, %struct.t_nblist* %78, i32 %12, i32 %maxlr.0, i32 0, i32 %79) #9
  %80 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 49, i64 4
  %81 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 50, i64 4
  %82 = load i32* %34, align 4, !tbaa !29
  %83 = icmp eq i32 %82, 0
  %84 = select i1 %83, i64 3, i64 4
  %85 = getelementptr inbounds [20 x i32]* @nbf_index.inloop, i64 0, i64 %84
  %86 = load i32* %85, align 4, !tbaa !17
  %87 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 30
  %88 = load float* %87, align 4, !tbaa !33
  %fabsf.i8 = tail call float @fabsf(float %88) #10
  %89 = fpext float %fabsf.i8 to double
  %90 = fcmp olt double %89, 1.200000e-38
  %91 = select i1 %90, i32 1, i32 2
  %92 = add i32 %91, %86
  tail call fastcc void @init_nblist(%struct.t_nblist* %80, %struct.t_nblist* %81, i32 %12, i32 %maxlr.0, i32 0, i32 %92) #9
  %93 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 49, i64 5
  %94 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 50, i64 5
  %95 = load float* %87, align 4, !tbaa !33
  %fabsf.i = tail call float @fabsf(float %95) #10
  %96 = fpext float %fabsf.i to double
  %97 = fcmp olt double %96, 1.200000e-38
  %98 = select i1 %97, i32 53, i32 54
  tail call fastcc void @init_nblist(%struct.t_nblist* %93, %struct.t_nblist* %94, i32 %12, i32 %maxlr.0, i32 0, i32 %98) #9
  br label %99

; <label>:99                                      ; preds = %nbf_index.exit2, %76
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define internal fastcc void @init_nblist(%struct.t_nblist* nocapture %nl_sr, %struct.t_nblist* nocapture %nl_lr, i32 %maxsr, i32 %maxlr, i32 %solvent, i32 %il_code) #3 {
  %1 = load %struct.__sFILE** @debug, align 8, !tbaa !23
  %2 = icmp eq %struct.__sFILE* %1, null
  br i1 %2, label %.preheader, label %3

; <label>:3                                       ; preds = %0
  %4 = icmp ugt i32 %solvent, 3
  br i1 %4, label %9, label %5

; <label>:5                                       ; preds = %3
  %6 = sext i32 %solvent to i64
  %7 = getelementptr inbounds [5 x i8*]* @esolv_names, i64 0, i64 %6
  %8 = load i8** %7, align 8, !tbaa !23
  br label %9

; <label>:9                                       ; preds = %3, %5
  %10 = phi i8* [ %8, %5 ], [ getelementptr inbounds ([10 x i8]* @.str21, i64 0, i64 0), %3 ]
  %11 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %1, i8* getelementptr inbounds ([65 x i8]* @.str20, i64 0, i64 0), i32 %il_code, i8* %10, i32 %maxsr, i32 %maxlr) #8
  br label %.preheader

.preheader:                                       ; preds = %9, %0, %.preheader
  %i.02 = phi i32 [ %31, %.preheader ], [ 0, %0 ], [ 0, %9 ]
  %12 = icmp eq i32 %i.02, 0
  %13 = select i1 %12, %struct.t_nblist* %nl_sr, %struct.t_nblist* %nl_lr
  %14 = select i1 %12, i32 %maxsr, i32 %maxlr
  %15 = getelementptr inbounds %struct.t_nblist* %13, i64 0, i32 0
  store i32 %il_code, i32* %15, align 4, !tbaa !34
  %16 = shl nsw i32 %14, 2
  %17 = getelementptr inbounds %struct.t_nblist* %13, i64 0, i32 2
  store i32 %16, i32* %17, align 4, !tbaa !35
  %18 = getelementptr inbounds %struct.t_nblist* %13, i64 0, i32 4
  store i32 0, i32* %18, align 4, !tbaa !36
  %19 = getelementptr inbounds %struct.t_nblist* %13, i64 0, i32 5
  store i32 0, i32* %19, align 4, !tbaa !37
  %20 = getelementptr inbounds %struct.t_nblist* %13, i64 0, i32 1
  store i32 0, i32* %20, align 4, !tbaa !18
  %21 = getelementptr inbounds %struct.t_nblist* %13, i64 0, i32 3
  store i32 0, i32* %21, align 4, !tbaa !38
  %22 = getelementptr inbounds %struct.t_nblist* %13, i64 0, i32 7
  %23 = getelementptr inbounds %struct.t_nblist* %13, i64 0, i32 8
  %24 = getelementptr inbounds %struct.t_nblist* %13, i64 0, i32 10
  %25 = getelementptr inbounds %struct.t_nblist* %13, i64 0, i32 12
  store i32* null, i32** %25, align 8, !tbaa !39
  %26 = getelementptr inbounds %struct.t_nblist* %13, i64 0, i32 6
  %27 = bitcast i32** %22 to i8*
  call void @llvm.memset.p0i8.i64(i8* %27, i8 0, i64 32, i32 8, i1 false)
  store i32 %solvent, i32* %26, align 4, !tbaa !40
  tail call fastcc void @reallocate_nblist(%struct.t_nblist* %13) #9
  %28 = load i32** %24, align 8, !tbaa !41
  store i32 0, i32* %28, align 4, !tbaa !17
  %29 = getelementptr inbounds i32* %28, i64 1
  store i32 0, i32* %29, align 4, !tbaa !17
  %30 = load i32** %23, align 8, !tbaa !42
  store i32 -1, i32* %30, align 4, !tbaa !17
  %31 = add nuw nsw i32 %i.02, 1
  %exitcond = icmp eq i32 %31, 2
  br i1 %exitcond, label %32, label %.preheader

; <label>:32                                      ; preds = %.preheader
  ret void
}

; Function Attrs: nounwind optsize readonly ssp uwtable
define internal fastcc i32 @nbf_index(%struct.t_forcerec* nocapture readonly %fr, i32 %bvdw, i32 %bcoul, i32 %bFree, i32 %solopt) #4 {
  %1 = icmp eq i32 %bcoul, 0
  br i1 %1, label %11, label %2

; <label>:2                                       ; preds = %0
  %3 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 13
  %4 = load i32* %3, align 4, !tbaa !30
  %5 = or i32 %4, %bFree
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %11

; <label>:7                                       ; preds = %2
  %8 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 7
  %9 = load i32* %8, align 4, !tbaa !31
  %10 = icmp eq i32 %9, 0
  %. = select i1 %10, i32 1, i32 2
  br label %11

; <label>:11                                      ; preds = %0, %7, %2
  %icoul.0 = phi i32 [ 3, %2 ], [ %., %7 ], [ 0, %0 ]
  %12 = icmp eq i32 %bvdw, 0
  br i1 %12, label %23, label %13

; <label>:13                                      ; preds = %11
  %14 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 14
  %15 = load i32* %14, align 4, !tbaa !28
  %16 = or i32 %15, %bFree
  %17 = icmp eq i32 %16, 0
  %18 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 64
  %19 = load i32* %18, align 4, !tbaa !29
  %20 = icmp eq i32 %19, 0
  br i1 %17, label %22, label %21

; <label>:21                                      ; preds = %13
  %.14 = select i1 %20, i32 3, i32 4
  br label %23

; <label>:22                                      ; preds = %13
  %.12 = select i1 %20, i32 1, i32 2
  br label %23

; <label>:23                                      ; preds = %21, %11, %22
  %ivdw.0 = phi i32 [ %.12, %22 ], [ 0, %11 ], [ %.14, %21 ]
  %24 = mul nuw nsw i32 %icoul.0, 5
  %25 = add nuw nsw i32 %ivdw.0, %24
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds [20 x i32]* @nbf_index.inloop, i64 0, i64 %26
  %28 = load i32* %27, align 4, !tbaa !17
  %29 = icmp eq i32 %bFree, 0
  br i1 %29, label %37, label %30

; <label>:30                                      ; preds = %23
  %31 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 30
  %32 = load float* %31, align 4, !tbaa !33
  %fabsf = tail call float @fabsf(float %32) #10
  %33 = fpext float %fabsf to double
  %34 = fcmp olt double %33, 1.200000e-38
  %35 = select i1 %34, i32 1, i32 2
  %36 = add i32 %35, %28
  br label %47

; <label>:37                                      ; preds = %23
  %38 = add i32 %28, %solopt
  %39 = icmp sgt i32 %solopt, 0
  %40 = icmp eq i32 %icoul.0, 3
  %or.cond7 = and i1 %39, %40
  br i1 %or.cond7, label %41, label %47

; <label>:41                                      ; preds = %37
  %42 = icmp eq i32 %ivdw.0, 3
  %43 = and i32 %ivdw.0, 3
  %44 = icmp eq i32 %43, 0
  %45 = or i1 %42, %44
  %46 = add i32 %38, 2
  %.13 = select i1 %45, i32 %46, i32 %38
  ret i32 %.13

; <label>:47                                      ; preds = %37, %30
  %nn.0 = phi i32 [ %36, %30 ], [ %38, %37 ]
  ret i32 %nn.0
}

; Function Attrs: nounwind optsize readnone ssp uwtable
define i32 @calc_naaj(i32 %icg, i32 %cgtot) #5 {
  %1 = srem i32 %cgtot, 2
  %2 = icmp eq i32 %1, 1
  br i1 %2, label %3, label %6

; <label>:3                                       ; preds = %0
  %4 = sdiv i32 %cgtot, 2
  %5 = add nsw i32 %4, 1
  br label %23

; <label>:6                                       ; preds = %0
  %7 = and i32 %cgtot, 3
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %19

; <label>:9                                       ; preds = %6
  %10 = sdiv i32 %cgtot, 2
  %11 = icmp sgt i32 %10, %icg
  %12 = srem i32 %icg, 2
  br i1 %11, label %13, label %16

; <label>:13                                      ; preds = %9
  %14 = icmp eq i32 %12, 0
  %15 = zext i1 %14 to i32
  %. = add nsw i32 %15, %10
  ret i32 %.

; <label>:16                                      ; preds = %9
  %17 = icmp eq i32 %12, 1
  %18 = zext i1 %17 to i32
  %.1 = add nsw i32 %18, %10
  br label %23

; <label>:19                                      ; preds = %6
  %20 = and i32 %icg, 1
  %21 = sdiv i32 %cgtot, 2
  %22 = xor i32 %20, 1
  %.2 = add nsw i32 %21, %22
  br label %23

; <label>:23                                      ; preds = %19, %16, %3
  %naaj.0 = phi i32 [ %5, %3 ], [ %.1, %16 ], [ %.2, %19 ]
  ret i32 %naaj.0
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @search_neighbours(%struct.__sFILE* %log, %struct.t_forcerec* %fr, [3 x float]* %x, [3 x float]* %box, %struct.t_topology* nocapture readonly %top, %struct.t_groups* nocapture readonly %grps, %struct.t_commrec* %cr, %struct.t_nsborder* %nsb, %struct.t_nrnb* %nrnb, %struct.t_mdatoms* %md, float %lambda, float* %dvdlambda) #3 {
  %dx0.i = alloca i32, align 4
  %dx1.i = alloca i32, align 4
  %dy0.i = alloca i32, align 4
  %dy1.i = alloca i32, align 4
  %dz0.i = alloca i32, align 4
  %dz1.i = alloca i32, align 4
  %b_inv.i = alloca [3 x float], align 4
  %box_size = alloca [3 x float], align 4
  %1 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 43
  %2 = load i32* %1, align 4, !tbaa !43
  %3 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 2, i32 10, i64 1, i32 0
  %4 = load i32* %3, align 4, !tbaa !44
  br label %5

; <label>:5                                       ; preds = %5, %0
  %indvars.iv99 = phi i64 [ 0, %0 ], [ %indvars.iv.next100, %5 ]
  %6 = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv99, i64 %indvars.iv99
  %7 = bitcast float* %6 to i32*
  %8 = load i32* %7, align 4, !tbaa !21
  %9 = getelementptr inbounds [3 x float]* %box_size, i64 0, i64 %indvars.iv99
  %10 = bitcast float* %9 to i32*
  store i32 %8, i32* %10, align 4, !tbaa !21
  %indvars.iv.next100 = add nuw nsw i64 %indvars.iv99, 1
  %exitcond101 = icmp eq i64 %indvars.iv.next100, 3
  br i1 %exitcond101, label %11, label %5

; <label>:11                                      ; preds = %5
  %12 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 0
  %13 = load i32* %12, align 4, !tbaa !46
  %14 = icmp eq i32 %13, 1
  br i1 %14, label %79, label %15

; <label>:15                                      ; preds = %11
  %16 = icmp eq i32 %2, 0
  br i1 %16, label %64, label %17

; <label>:17                                      ; preds = %15
  %18 = getelementptr inbounds [3 x float]* %box, i64 0, i64 0
  %19 = load float* %18, align 4, !tbaa !21
  %20 = fmul float %19, %19
  %21 = getelementptr inbounds [3 x float]* %box, i64 0, i64 1
  %22 = load float* %21, align 4, !tbaa !21
  %23 = fmul float %22, %22
  %24 = fadd float %20, %23
  %25 = getelementptr inbounds [3 x float]* %box, i64 0, i64 2
  %26 = load float* %25, align 4, !tbaa !21
  %27 = fmul float %26, %26
  %28 = fadd float %24, %27
  %29 = getelementptr inbounds [3 x float]* %box, i64 1, i64 0
  %30 = load float* %29, align 4, !tbaa !21
  %31 = getelementptr inbounds [3 x float]* %box, i64 1, i64 1
  %32 = load float* %31, align 4, !tbaa !21
  %33 = getelementptr inbounds [3 x float]* %box, i64 1, i64 2
  %34 = load float* %33, align 4, !tbaa !21
  %35 = getelementptr inbounds [3 x float]* %box, i64 2, i64 0
  %36 = load float* %35, align 4, !tbaa !21
  %37 = insertelement <2 x float> undef, float %30, i32 0
  %38 = insertelement <2 x float> %37, float %36, i32 1
  %39 = fmul <2 x float> %38, %38
  %40 = getelementptr inbounds [3 x float]* %box, i64 2, i64 1
  %41 = load float* %40, align 4, !tbaa !21
  %42 = insertelement <2 x float> undef, float %32, i32 0
  %43 = insertelement <2 x float> %42, float %41, i32 1
  %44 = fmul <2 x float> %43, %43
  %45 = fadd <2 x float> %39, %44
  %46 = getelementptr inbounds [3 x float]* %box, i64 2, i64 2
  %47 = load float* %46, align 4, !tbaa !21
  %48 = insertelement <2 x float> undef, float %34, i32 0
  %49 = insertelement <2 x float> %48, float %47, i32 1
  %50 = fmul <2 x float> %49, %49
  %51 = fadd <2 x float> %45, %50
  %52 = extractelement <2 x float> %51, i32 0
  %53 = extractelement <2 x float> %51, i32 1
  %54 = fcmp olt float %52, %53
  %55 = select i1 %54, float %52, float %53
  %56 = fcmp olt float %28, %55
  %brmerge = or i1 %56, %54
  %.mux = select i1 %56, float %28, float %52
  %57 = select i1 %brmerge, float %.mux, float %53
  %58 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 2
  %59 = load float* %58, align 4, !tbaa !47
  %60 = fmul float %59, 2.000000e+00
  %61 = fmul float %60, %60
  %62 = fcmp ult float %61, %57
  br i1 %62, label %79, label %63

; <label>:63                                      ; preds = %17
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([73 x i8]* @.str3, i64 0, i64 0)) #8
  br label %79

; <label>:64                                      ; preds = %15
  %65 = getelementptr inbounds [3 x float]* %box_size, i64 0, i64 0
  %66 = load float* %65, align 4, !tbaa !21
  %67 = getelementptr inbounds [3 x float]* %box_size, i64 0, i64 1
  %68 = load float* %67, align 4, !tbaa !21
  %69 = getelementptr inbounds [3 x float]* %box_size, i64 0, i64 2
  %70 = load float* %69, align 4, !tbaa !21
  %71 = fcmp olt float %68, %70
  %. = select i1 %71, float %68, float %70
  %72 = fcmp olt float %66, %.
  %73 = select i1 %72, float %66, float %.
  %74 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 2
  %75 = load float* %74, align 4, !tbaa !47
  %76 = fmul float %75, 2.000000e+00
  %77 = fcmp ult float %76, %73
  br i1 %77, label %79, label %78

; <label>:78                                      ; preds = %64
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([73 x i8]* @.str4, i64 0, i64 0)) #8
  br label %79

; <label>:79                                      ; preds = %17, %64, %11, %63, %78
  %.b = load i1* @search_neighbours.bFirst, align 1
  br i1 %.b, label %.preheader.i13, label %.preheader34

.preheader34:                                     ; preds = %79
  %80 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 3, i64 0, i32 1
  %81 = load i32* %80, align 4, !tbaa !48
  %82 = icmp sgt i32 %81, 0
  br i1 %82, label %.lr.ph64, label %._crit_edge65.thread

.lr.ph64:                                         ; preds = %.preheader34
  %83 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 3, i64 0, i32 2
  %84 = load i32** %83, align 8, !tbaa !50
  %85 = sext i32 %81 to i64
  %.pre = load i32* %84, align 4, !tbaa !17
  br label %86

; <label>:86                                      ; preds = %.lr.ph64, %86
  %87 = phi i32 [ %.pre, %.lr.ph64 ], [ %89, %86 ]
  %indvars.iv97 = phi i64 [ 0, %.lr.ph64 ], [ %indvars.iv.next98, %86 ]
  %nr_in_cg.063 = phi i32 [ 1, %.lr.ph64 ], [ %nr_in_cg.0., %86 ]
  %indvars.iv.next98 = add nuw nsw i64 %indvars.iv97, 1
  %88 = getelementptr inbounds i32* %84, i64 %indvars.iv.next98
  %89 = load i32* %88, align 4, !tbaa !17
  %90 = sub nsw i32 %89, %87
  %91 = icmp sgt i32 %nr_in_cg.063, %90
  %nr_in_cg.0. = select i1 %91, i32 %nr_in_cg.063, i32 %90
  %92 = icmp slt i64 %indvars.iv.next98, %85
  br i1 %92, label %86, label %._crit_edge65

._crit_edge65:                                    ; preds = %86
  %93 = icmp sgt i32 %nr_in_cg.0., 64
  br i1 %93, label %94, label %._crit_edge65.thread

; <label>:94                                      ; preds = %._crit_edge65
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([39 x i8]* @.str5, i64 0, i64 0), i32 %nr_in_cg.0., i32 64) #8
  br label %._crit_edge65.thread

._crit_edge65.thread:                             ; preds = %.preheader34, %94, %._crit_edge65
  %95 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 3, i64 0, i32 3
  %96 = load i32* %95, align 4, !tbaa !51
  %97 = tail call i8* @save_calloc(i8* getelementptr inbounds ([6 x i8]* @.str6, i64 0, i64 0), i8* getelementptr inbounds ([62 x i8]* @.str2, i64 0, i64 0), i32 1708, i32 %96, i32 8) #8
  store i8* %97, i8** bitcast (i64** @search_neighbours.bexcl to i8**), align 8, !tbaa !23
  %98 = load i32* %80, align 4, !tbaa !48
  %99 = tail call i8* @save_calloc(i8* getelementptr inbounds ([14 x i8]* @.str7, i64 0, i64 0), i8* getelementptr inbounds ([62 x i8]* @.str2, i64 0, i64 0), i32 1711, i32 %98, i32 4) #8
  store i8* %99, i8** bitcast (i32** @search_neighbours.bExcludeAlleg to i8**), align 8, !tbaa !23
  %100 = load i32* %80, align 4, !tbaa !48
  %101 = icmp sgt i32 %100, 0
  %102 = bitcast i8* %99 to i32*
  br i1 %101, label %.lr.ph60, label %._crit_edge61

.lr.ph60:                                         ; preds = %._crit_edge65.thread
  %103 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 66
  %104 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 3, i64 0, i32 2
  %105 = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 15
  %106 = icmp sgt i32 %4, 0
  %107 = sext i32 %4 to i64
  %.pre102 = load i32** %103, align 8, !tbaa !52
  %.pre103 = load i32** %104, align 8, !tbaa !50
  %.pre104 = load i16** %105, align 8, !tbaa !53
  br label %108

; <label>:108                                     ; preds = %.lr.ph60, %.critedge
  %indvars.iv95 = phi i64 [ 0, %.lr.ph60 ], [ %indvars.iv.next96, %.critedge ]
  %109 = getelementptr inbounds i32* %.pre103, i64 %indvars.iv95
  %110 = load i32* %109, align 4, !tbaa !17
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i16* %.pre104, i64 %111
  %113 = load i16* %112, align 2, !tbaa !55
  %114 = zext i16 %113 to i32
  %115 = mul nsw i32 %114, %4
  %116 = sext i32 %115 to i64
  br i1 %106, label %.lr.ph56, label %.critedge

.lr.ph56:                                         ; preds = %108, %.lr.ph56
  %indvars.iv93 = phi i64 [ %indvars.iv.next94, %.lr.ph56 ], [ 0, %108 ]
  %allexcl.053 = phi i32 [ %.allexcl.0, %.lr.ph56 ], [ 1, %108 ]
  %.sum = add nsw i64 %indvars.iv93, %116
  %117 = getelementptr inbounds i32* %.pre102, i64 %.sum
  %118 = load i32* %117, align 4, !tbaa !17
  %119 = icmp eq i32 %118, 0
  %.allexcl.0 = select i1 %119, i32 0, i32 %allexcl.053
  %indvars.iv.next94 = add nuw nsw i64 %indvars.iv93, 1
  %120 = icmp slt i64 %indvars.iv.next94, %107
  %121 = icmp ne i32 %.allexcl.0, 0
  %or.cond = and i1 %121, %120
  br i1 %or.cond, label %.lr.ph56, label %.critedge

.critedge:                                        ; preds = %.lr.ph56, %108
  %allexcl.0.lcssa = phi i32 [ 1, %108 ], [ %.allexcl.0, %.lr.ph56 ]
  %122 = getelementptr inbounds i32* %102, i64 %indvars.iv95
  store i32 %allexcl.0.lcssa, i32* %122, align 4, !tbaa !17
  %indvars.iv.next96 = add nuw nsw i64 %indvars.iv95, 1
  %123 = load i32* %80, align 4, !tbaa !48
  %124 = sext i32 %123 to i64
  %125 = icmp slt i64 %indvars.iv.next96, %124
  br i1 %125, label %108, label %._crit_edge61

._crit_edge61:                                    ; preds = %.critedge, %._crit_edge65.thread
  %126 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 44
  %127 = load i32* %126, align 4, !tbaa !56
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %166, label %129

; <label>:129                                     ; preds = %._crit_edge61
  %130 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 1
  %131 = load i32* %130, align 4, !tbaa !57
  %132 = add nsw i32 %131, 1
  %133 = tail call i8* @save_calloc(i8* getelementptr inbounds ([11 x i8]* @.str10, i64 0, i64 0), i8* getelementptr inbounds ([62 x i8]* @.str2, i64 0, i64 0), i32 1747, i32 %132, i32 4) #8
  store i8* %133, i8** bitcast (i32** @search_neighbours.slab_index to i8**), align 8, !tbaa !23
  %134 = load i32* %130, align 4, !tbaa !57
  %135 = icmp slt i32 %134, 0
  %136 = bitcast i8* %133 to i32*
  br i1 %135, label %._crit_edge51, label %.lr.ph50

.lr.ph50:                                         ; preds = %129, %.lr.ph50
  %indvars.iv91 = phi i64 [ %indvars.iv.next92, %.lr.ph50 ], [ 0, %129 ]
  %137 = phi i32 [ %147, %.lr.ph50 ], [ %134, %129 ]
  %138 = trunc i64 %indvars.iv91 to i32
  %139 = sitofp i32 %138 to float
  %140 = load i32* %80, align 4, !tbaa !48
  %141 = sitofp i32 %140 to float
  %142 = sitofp i32 %137 to float
  %143 = fdiv float %141, %142
  %144 = fmul float %139, %143
  %145 = fptosi float %144 to i32
  %146 = getelementptr inbounds i32* %136, i64 %indvars.iv91
  store i32 %145, i32* %146, align 4, !tbaa !17
  %indvars.iv.next92 = add nuw i64 %indvars.iv91, 1
  %147 = load i32* %130, align 4, !tbaa !57
  %148 = sext i32 %147 to i64
  %149 = icmp slt i64 %indvars.iv91, %148
  br i1 %149, label %.lr.ph50, label %._crit_edge51

._crit_edge51:                                    ; preds = %.lr.ph50, %129
  %150 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 0
  %151 = load i32* %150, align 4, !tbaa !59
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i32* %136, i64 %152
  %154 = load i32* %153, align 4, !tbaa !17
  %155 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 35
  store i32 %154, i32* %155, align 4, !tbaa !60
  %156 = add nsw i32 %151, 1
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i32* %136, i64 %157
  %159 = load i32* %158, align 4, !tbaa !17
  %160 = sub nsw i32 %159, %154
  %161 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 36
  store i32 %160, i32* %161, align 4, !tbaa !61
  %162 = load %struct.__sFILE** @debug, align 8, !tbaa !23
  %163 = icmp eq %struct.__sFILE* %162, null
  br i1 %163, label %166, label %164

; <label>:164                                     ; preds = %._crit_edge51
  %165 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %162, i8* getelementptr inbounds ([76 x i8]* @.str11, i64 0, i64 0), i32 %154, i32 %159, i32 %151) #8
  br label %166

; <label>:166                                     ; preds = %._crit_edge51, %._crit_edge61, %164
  %167 = load i32* %80, align 4, !tbaa !48
  %168 = add nsw i32 %167, 1
  %169 = tail call i8* @save_calloc(i8* getelementptr inbounds ([9 x i8]* @.str12, i64 0, i64 0), i8* getelementptr inbounds ([62 x i8]* @.str2, i64 0, i64 0), i32 1757, i32 %168, i32 4) #8
  store i8* %169, i8** bitcast (i32** @search_neighbours.cg_index to i8**), align 8, !tbaa !23
  %170 = load i32* %80, align 4, !tbaa !48
  %171 = icmp slt i32 %170, 0
  %172 = bitcast i8* %169 to i32*
  br i1 %171, label %._crit_edge47, label %.lr.ph46

.lr.ph46:                                         ; preds = %166, %.lr.ph46
  %indvars.iv89 = phi i64 [ %indvars.iv.next90, %.lr.ph46 ], [ 0, %166 ]
  %173 = getelementptr inbounds i32* %172, i64 %indvars.iv89
  %174 = trunc i64 %indvars.iv89 to i32
  store i32 %174, i32* %173, align 4, !tbaa !17
  %indvars.iv.next90 = add nuw i64 %indvars.iv89, 1
  %175 = load i32* %80, align 4, !tbaa !48
  %176 = sext i32 %175 to i64
  %177 = icmp slt i64 %indvars.iv89, %176
  br i1 %177, label %.lr.ph46, label %._crit_edge47

._crit_edge47:                                    ; preds = %.lr.ph46, %166
  %178 = icmp eq i32 %2, 0
  br i1 %178, label %187, label %179

; <label>:179                                     ; preds = %._crit_edge47
  %180 = tail call i8* @save_calloc(i8* getelementptr inbounds ([5 x i8]* @.str13, i64 0, i64 0), i8* getelementptr inbounds ([62 x i8]* @.str2, i64 0, i64 0), i32 1762, i32 1, i32 64) #8
  %181 = bitcast i8* %180 to %struct.t_grid*
  store i8* %180, i8** bitcast (%struct.t_grid** @search_neighbours.grid to i8**), align 8, !tbaa !23
  %182 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 37
  %183 = load i32* %182, align 4, !tbaa !62
  %184 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 2
  %185 = load float* %184, align 4, !tbaa !47
  %186 = load i32* %80, align 4, !tbaa !48
  tail call void @init_grid(%struct.__sFILE* %log, %struct.t_grid* %181, i32 %183, [3 x float]* %box, float %185, i32 %186) #8
  br label %187

; <label>:187                                     ; preds = %._crit_edge47, %179
  %188 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 63
  %189 = load i32* %188, align 4, !tbaa !63
  %190 = tail call i8* @save_calloc(i8* getelementptr inbounds ([8 x i8]* @.str14, i64 0, i64 0), i8* getelementptr inbounds ([62 x i8]* @.str2, i64 0, i64 0), i32 1767, i32 %189, i32 4) #8
  store i8* %190, i8** bitcast (i32** @search_neighbours.bHaveLJ to i8**), align 8, !tbaa !23
  %191 = load i32* %188, align 4, !tbaa !63
  %192 = icmp sgt i32 %191, 0
  %193 = bitcast i8* %190 to i32*
  br i1 %192, label %.preheader.lr.ph, label %._crit_edge43

.preheader.lr.ph:                                 ; preds = %187
  %194 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 64
  %195 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 65
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge
  %196 = phi i32 [ %191, %.preheader.lr.ph ], [ %255, %._crit_edge ]
  %indvars.iv87 = phi i64 [ 0, %.preheader.lr.ph ], [ %indvars.iv.next88, %._crit_edge ]
  %197 = icmp sgt i32 %196, 0
  br i1 %197, label %.lr.ph40, label %._crit_edge

.lr.ph40:                                         ; preds = %.preheader
  %198 = getelementptr inbounds i32* %193, i64 %indvars.iv87
  %.pre105 = load i32* %198, align 4, !tbaa !17
  br label %199

; <label>:199                                     ; preds = %.lr.ph40, %250
  %200 = phi i32 [ %.pre105, %.lr.ph40 ], [ %251, %250 ]
  %201 = phi i32 [ %196, %.lr.ph40 ], [ %253, %250 ]
  %j.139 = phi i32 [ 0, %.lr.ph40 ], [ %252, %250 ]
  %202 = load i32* %194, align 4, !tbaa !29
  %203 = icmp eq i32 %202, 0
  %204 = icmp ne i32 %200, 0
  br i1 %203, label %231, label %205

; <label>:205                                     ; preds = %199
  br i1 %204, label %250, label %206

; <label>:206                                     ; preds = %205
  %207 = trunc i64 %indvars.iv87 to i32
  %208 = mul nsw i32 %201, %207
  %209 = add nsw i32 %208, %j.139
  %210 = mul nsw i32 %209, 3
  %211 = add nsw i32 %210, 1
  %212 = sext i32 %211 to i64
  %213 = load float** %195, align 8, !tbaa !64
  %214 = getelementptr inbounds float* %213, i64 %212
  %215 = load float* %214, align 4, !tbaa !21
  %fabsf3 = tail call float @fabsf(float %215) #10
  %216 = fpext float %fabsf3 to double
  %217 = fcmp ogt double %216, 1.200000e-38
  br i1 %217, label %250, label %218

; <label>:218                                     ; preds = %206
  %219 = add nsw i32 %210, 2
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds float* %213, i64 %220
  %222 = load float* %221, align 4, !tbaa !21
  %fabsf4 = tail call float @fabsf(float %222) #10
  %223 = fpext float %fabsf4 to double
  %224 = fcmp ogt double %223, 1.200000e-38
  br i1 %224, label %250, label %225

; <label>:225                                     ; preds = %218
  %226 = sext i32 %210 to i64
  %227 = getelementptr inbounds float* %213, i64 %226
  %228 = load float* %227, align 4, !tbaa !21
  %fabsf5 = tail call float @fabsf(float %228) #10
  %229 = fpext float %fabsf5 to double
  %230 = fcmp ogt double %229, 1.200000e-38
  br label %250

; <label>:231                                     ; preds = %199
  br i1 %204, label %250, label %232

; <label>:232                                     ; preds = %231
  %233 = trunc i64 %indvars.iv87 to i32
  %234 = mul nsw i32 %201, %233
  %235 = add nsw i32 %234, %j.139
  %236 = shl nsw i32 %235, 1
  %237 = sext i32 %236 to i64
  %238 = load float** %195, align 8, !tbaa !64
  %239 = getelementptr inbounds float* %238, i64 %237
  %240 = load float* %239, align 4, !tbaa !21
  %fabsf = tail call float @fabsf(float %240) #10
  %241 = fpext float %fabsf to double
  %242 = fcmp ogt double %241, 1.200000e-38
  br i1 %242, label %250, label %243

; <label>:243                                     ; preds = %232
  %244 = or i32 %236, 1
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds float* %238, i64 %245
  %247 = load float* %246, align 4, !tbaa !21
  %fabsf2 = tail call float @fabsf(float %247) #10
  %248 = fpext float %fabsf2 to double
  %249 = fcmp ogt double %248, 1.200000e-38
  br label %250

; <label>:250                                     ; preds = %205, %206, %218, %225, %231, %232, %243
  %.sink = phi i1 [ true, %232 ], [ true, %231 ], [ %249, %243 ], [ true, %218 ], [ true, %206 ], [ true, %205 ], [ %230, %225 ]
  %251 = zext i1 %.sink to i32
  store i32 %251, i32* %198, align 4, !tbaa !17
  %252 = add nuw nsw i32 %j.139, 1
  %253 = load i32* %188, align 4, !tbaa !63
  %254 = icmp slt i32 %252, %253
  br i1 %254, label %199, label %._crit_edge

._crit_edge:                                      ; preds = %250, %.preheader
  %255 = phi i32 [ %196, %.preheader ], [ %253, %250 ]
  %indvars.iv.next88 = add nuw nsw i64 %indvars.iv87, 1
  %256 = sext i32 %255 to i64
  %257 = icmp slt i64 %indvars.iv.next88, %256
  br i1 %257, label %.preheader, label %._crit_edge43

._crit_edge43:                                    ; preds = %._crit_edge, %187
  %.lcssa36 = phi i32 [ %191, %187 ], [ %255, %._crit_edge ]
  %258 = load %struct.__sFILE** @debug, align 8, !tbaa !23
  %259 = icmp eq %struct.__sFILE* %258, null
  br i1 %259, label %261, label %260

; <label>:260                                     ; preds = %._crit_edge43
  tail call void @pr_ivec(%struct.__sFILE* %258, i32 0, i8* getelementptr inbounds ([8 x i8]* @.str14, i64 0, i64 0), i32* %193, i32 %.lcssa36) #8
  br label %261

; <label>:261                                     ; preds = %._crit_edge43, %260
  store i1 true, i1* @search_neighbours.bFirst, align 1
  br label %.preheader.i13

.preheader.i13:                                   ; preds = %261, %79, %reset_nblist.exit
  %indvars.iv.i10 = phi i64 [ %indvars.iv.next.i11, %reset_nblist.exit ], [ 0, %79 ], [ 0, %261 ]
  %262 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 49, i64 %indvars.iv.i10, i32 1
  store i32 0, i32* %262, align 4, !tbaa !18
  %263 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 49, i64 %indvars.iv.i10, i32 3
  store i32 0, i32* %263, align 4, !tbaa !38
  %264 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 49, i64 %indvars.iv.i10, i32 5
  store i32 0, i32* %264, align 4, !tbaa !37
  %265 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 49, i64 %indvars.iv.i10, i32 2
  %266 = load i32* %265, align 4, !tbaa !35
  %267 = icmp sgt i32 %266, 0
  br i1 %267, label %268, label %reset_nblist.exit

; <label>:268                                     ; preds = %.preheader.i13
  %269 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 49, i64 %indvars.iv.i10, i32 8
  %270 = load i32** %269, align 8, !tbaa !42
  store i32 -1, i32* %270, align 4, !tbaa !17
  %271 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 49, i64 %indvars.iv.i10, i32 4
  %272 = load i32* %271, align 4, !tbaa !36
  %273 = icmp sgt i32 %272, 1
  br i1 %273, label %274, label %reset_nblist.exit

; <label>:274                                     ; preds = %268
  %275 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 49, i64 %indvars.iv.i10, i32 10
  %276 = load i32** %275, align 8, !tbaa !41
  store i32 0, i32* %276, align 4, !tbaa !17
  %277 = getelementptr inbounds i32* %276, i64 1
  store i32 0, i32* %277, align 4, !tbaa !17
  br label %reset_nblist.exit

reset_nblist.exit:                                ; preds = %.preheader.i13, %268, %274
  %indvars.iv.next.i11 = add nuw nsw i64 %indvars.iv.i10, 1
  %exitcond.i12 = icmp eq i64 %indvars.iv.next.i11, 13
  br i1 %exitcond.i12, label %reset_neighbor_list.exit, label %.preheader.i13

reset_neighbor_list.exit:                         ; preds = %reset_nblist.exit
  %278 = icmp eq i32 %2, 0
  br i1 %278, label %.critedge8, label %279

; <label>:279                                     ; preds = %reset_neighbor_list.exit
  %280 = load %struct.t_grid** @search_neighbours.grid, align 8, !tbaa !23
  %281 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 2
  %282 = load float* %281, align 4, !tbaa !47
  tail call void @grid_first(%struct.__sFILE* %log, %struct.t_grid* %280, [3 x float]* %box, float %282) #8
  %283 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 3, i64 0, i32 1
  %284 = load i32* %283, align 4, !tbaa !48
  %285 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 44
  %286 = load i32* %285, align 4, !tbaa !56
  %287 = icmp eq i32 %286, 0
  br i1 %287, label %._crit_edge113, label %288

._crit_edge113:                                   ; preds = %279
  %.pre114 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 47
  %.pre115 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 1
  br label %325

; <label>:288                                     ; preds = %279
  %289 = load i32** @search_neighbours.cg_index, align 8, !tbaa !23
  %290 = load i32** @search_neighbours.slab_index, align 8, !tbaa !23
  %291 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 47
  %292 = load [3 x float]** %291, align 8, !tbaa !65
  %293 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 42
  %294 = load i32* %293, align 4, !tbaa !66
  %295 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 1
  %296 = load i32* %295, align 4, !tbaa !57
  %297 = sext i32 %296 to i64
  %298 = getelementptr inbounds i32* %290, i64 %297
  %299 = load i32* %298, align 4, !tbaa !17
  store [3 x float]* %292, [3 x float]** @sptr, align 8, !tbaa !23
  store i32 %294, i32* @sdim, align 4, !tbaa !17
  %300 = bitcast i32* %289 to i8*
  %301 = sext i32 %299 to i64
  tail call void @qsort(i8* %300, i64 %301, i64 4, i32 (i8*, i8*)* @rv_comp) #8
  %302 = load %struct.__sFILE** @debug, align 8, !tbaa !23
  %303 = icmp eq %struct.__sFILE* %302, null
  br i1 %303, label %sort_charge_groups.exit, label %304

; <label>:304                                     ; preds = %288
  %305 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %302, i8* getelementptr inbounds ([45 x i8]* @.str28, i64 0, i64 0), i32 %294) #8
  %306 = load %struct.__sFILE** @debug, align 8, !tbaa !23
  %307 = tail call i64 @fwrite(i8* getelementptr inbounds ([30 x i8]* @.str29, i64 0, i64 0), i64 29, i64 1, %struct.__sFILE* %306) #7
  %308 = icmp sgt i32 %299, 0
  br i1 %308, label %.lr.ph.i15, label %sort_charge_groups.exit

.lr.ph.i15:                                       ; preds = %304
  %309 = add i32 %299, -1
  br label %310

; <label>:310                                     ; preds = %310, %.lr.ph.i15
  %indvars.iv.i16 = phi i64 [ 0, %.lr.ph.i15 ], [ %indvars.iv.next.i17, %310 ]
  %311 = getelementptr inbounds i32* %289, i64 %indvars.iv.i16
  %312 = load i32* %311, align 4, !tbaa !17
  %313 = load %struct.__sFILE** @debug, align 8, !tbaa !23
  %314 = sext i32 %312 to i64
  %315 = getelementptr inbounds [3 x float]* %292, i64 %314, i64 0
  %316 = load float* %315, align 4, !tbaa !21
  %317 = fpext float %316 to double
  %318 = getelementptr inbounds [3 x float]* %292, i64 %314, i64 1
  %319 = load float* %318, align 4, !tbaa !21
  %320 = fpext float %319 to double
  %321 = getelementptr inbounds [3 x float]* %292, i64 %314, i64 2
  %322 = load float* %321, align 4, !tbaa !21
  %323 = fpext float %322 to double
  %324 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %313, i8* getelementptr inbounds ([23 x i8]* @.str30, i64 0, i64 0), i32 %312, double %317, double %320, double %323) #8
  %indvars.iv.next.i17 = add nuw nsw i64 %indvars.iv.i16, 1
  %lftr.wideiv85 = trunc i64 %indvars.iv.i16 to i32
  %exitcond86 = icmp eq i32 %lftr.wideiv85, %309
  br i1 %exitcond86, label %sort_charge_groups.exit, label %310

sort_charge_groups.exit:                          ; preds = %310, %288, %304
  store [3 x float]* null, [3 x float]** @sptr, align 8, !tbaa !23
  store i32 -1, i32* @sdim, align 4, !tbaa !17
  %.pre106 = load i32* %285, align 4, !tbaa !56
  %.pre107 = load i32* %283, align 4, !tbaa !48
  br label %325

; <label>:325                                     ; preds = %._crit_edge113, %sort_charge_groups.exit
  %.pre-phi116 = phi i32* [ %.pre115, %._crit_edge113 ], [ %295, %sort_charge_groups.exit ]
  %.pre-phi = phi [3 x float]** [ %.pre114, %._crit_edge113 ], [ %291, %sort_charge_groups.exit ]
  %326 = phi i32 [ %284, %._crit_edge113 ], [ %.pre107, %sort_charge_groups.exit ]
  %327 = phi i32 [ 0, %._crit_edge113 ], [ %.pre106, %sort_charge_groups.exit ]
  %328 = load i32** @search_neighbours.cg_index, align 8, !tbaa !23
  %329 = load %struct.t_grid** @search_neighbours.grid, align 8, !tbaa !23
  %330 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 35
  %331 = load i32* %330, align 4, !tbaa !60
  %332 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 36
  %333 = load i32* %332, align 4, !tbaa !61
  %334 = load [3 x float]** %.pre-phi, align 8, !tbaa !65
  tail call void @fill_grid(%struct.__sFILE* %log, i32 %327, i32* %328, %struct.t_grid* %329, [3 x float]* %box, i32 %326, i32 %331, i32 %333, [3 x float]* %334) #8
  %335 = load i32* %.pre-phi116, align 4, !tbaa !57
  %336 = icmp sgt i32 %335, 1
  br i1 %336, label %341, label %337

; <label>:337                                     ; preds = %325
  %338 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 5
  %339 = load i32* %338, align 4, !tbaa !67
  %340 = icmp sgt i32 %339, 1
  br i1 %340, label %341, label %346

; <label>:341                                     ; preds = %337, %325
  %342 = load i32* %285, align 4, !tbaa !56
  %343 = load i32** @search_neighbours.cg_index, align 8, !tbaa !23
  %344 = load %struct.t_grid** @search_neighbours.grid, align 8, !tbaa !23
  %345 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 10, i64 0
  tail call void @mv_grid(%struct.t_commrec* %cr, i32 %342, i32* %343, %struct.t_grid* %344, i32* %345) #8
  br label %346

; <label>:346                                     ; preds = %341, %337
  %347 = load i32* %285, align 4, !tbaa !56
  %348 = load i32** @search_neighbours.cg_index, align 8, !tbaa !23
  %349 = load %struct.t_grid** @search_neighbours.grid, align 8, !tbaa !23
  %350 = load i32* %283, align 4, !tbaa !48
  tail call void @calc_elemnr(%struct.__sFILE* %log, i32 %347, i32* %348, %struct.t_grid* %349, i32 0, i32 %284, i32 %350) #8
  %351 = load %struct.t_grid** @search_neighbours.grid, align 8, !tbaa !23
  tail call void @calc_ptrs(%struct.t_grid* %351) #8
  %352 = load i32* %285, align 4, !tbaa !56
  %353 = load i32** @search_neighbours.cg_index, align 8, !tbaa !23
  %354 = load %struct.t_grid** @search_neighbours.grid, align 8, !tbaa !23
  %355 = load i32* %283, align 4, !tbaa !48
  tail call void @grid_last(%struct.__sFILE* %log, i32 %352, i32* %353, %struct.t_grid* %354, i32 0, i32 %284, i32 %355) #8
  %356 = load %struct.__sFILE** @debug, align 8, !tbaa !23
  %357 = icmp eq %struct.__sFILE* %356, null
  br i1 %357, label %.critedge7, label %358

; <label>:358                                     ; preds = %346
  %359 = load %struct.t_grid** @search_neighbours.grid, align 8, !tbaa !23
  tail call void @check_grid(%struct.__sFILE* %356, %struct.t_grid* %359) #8
  %360 = load %struct.__sFILE** @debug, align 8, !tbaa !23
  %361 = load %struct.t_grid** @search_neighbours.grid, align 8, !tbaa !23
  %362 = load i32* %285, align 4, !tbaa !56
  %363 = load i32** @search_neighbours.cg_index, align 8, !tbaa !23
  tail call void @print_grid(%struct.__sFILE* %360, %struct.t_grid* %361, i32 %362, i32* %363) #8
  br label %.critedge7

.critedge7:                                       ; preds = %358, %346
  %364 = load i32** @search_neighbours.cg_index, align 8, !tbaa !23
  %365 = getelementptr inbounds [3 x float]* %box_size, i64 0, i64 0
  %366 = load %struct.t_grid** @search_neighbours.grid, align 8, !tbaa !23
  %367 = load i64** @search_neighbours.bexcl, align 8, !tbaa !23
  %368 = load i32** @search_neighbours.bExcludeAlleg, align 8, !tbaa !23
  %369 = load i32** @search_neighbours.bHaveLJ, align 8, !tbaa !23
  %370 = bitcast i32* %dx0.i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %370)
  %371 = bitcast i32* %dx1.i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %371)
  %372 = bitcast i32* %dy0.i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %372)
  %373 = bitcast i32* %dy1.i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %373)
  %374 = bitcast i32* %dz0.i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %374)
  %375 = bitcast i32* %dz1.i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %375)
  %376 = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 15
  %377 = load i16** %376, align 8, !tbaa !53
  %378 = load i32* %283, align 4, !tbaa !48
  %379 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 1
  %380 = load float* %379, align 4, !tbaa !68
  %381 = fmul float %380, %380
  %382 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 51
  %383 = load i32* %382, align 4, !tbaa !27
  %384 = icmp eq i32 %383, 0
  br i1 %384, label %392, label %385

; <label>:385                                     ; preds = %.critedge7
  %386 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 26
  %387 = load float* %386, align 4, !tbaa !69
  %388 = fmul float %387, %387
  %389 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 23
  %390 = load float* %389, align 4, !tbaa !70
  %391 = fmul float %390, %390
  br label %392

; <label>:392                                     ; preds = %385, %.critedge7
  %rvdw2.0.i = phi float [ %388, %385 ], [ %381, %.critedge7 ]
  %rcoul2.0.i = phi float [ %391, %385 ], [ %381, %.critedge7 ]
  %393 = fcmp olt float %rvdw2.0.i, %rcoul2.0.i
  %394 = select i1 %393, float %rvdw2.0.i, float %rcoul2.0.i
  %395 = fcmp ogt float %rvdw2.0.i, %rcoul2.0.i
  %396 = select i1 %395, float %rvdw2.0.i, float %rcoul2.0.i
  %397 = fcmp olt float %381, %394
  %398 = fcmp olt float %394, %396
  %399 = zext i1 %395 to i32
  %400 = xor i32 %399, 1
  %401 = load i32*** @ns5_core.nl_sr, align 8, !tbaa !23
  %402 = icmp eq i32** %401, null
  br i1 %402, label %403, label %439

; <label>:403                                     ; preds = %392
  %404 = tail call i8* @save_calloc(i8* getelementptr inbounds ([6 x i8]* @.str31, i64 0, i64 0), i8* getelementptr inbounds ([62 x i8]* @.str2, i64 0, i64 0), i32 1341, i32 %4, i32 8) #8
  store i8* %404, i8** bitcast (i32*** @ns5_core.nl_sr to i8**), align 8, !tbaa !23
  %405 = tail call i8* @save_calloc(i8* getelementptr inbounds ([4 x i8]* @.str32, i64 0, i64 0), i8* getelementptr inbounds ([62 x i8]* @.str2, i64 0, i64 0), i32 1343, i32 %4, i32 4) #8
  store i8* %405, i8** bitcast (i32** @ns5_core.nsr to i8**), align 8, !tbaa !23
  %406 = tail call i8* @save_calloc(i8* getelementptr inbounds ([8 x i8]* @.str33, i64 0, i64 0), i8* getelementptr inbounds ([62 x i8]* @.str2, i64 0, i64 0), i32 1344, i32 %4, i32 4) #8
  store i8* %406, i8** bitcast (i32** @ns5_core.nlr_ljc to i8**), align 8, !tbaa !23
  %407 = tail call i8* @save_calloc(i8* getelementptr inbounds ([8 x i8]* @.str34, i64 0, i64 0), i8* getelementptr inbounds ([62 x i8]* @.str2, i64 0, i64 0), i32 1345, i32 %4, i32 4) #8
  store i8* %407, i8** bitcast (i32** @ns5_core.nlr_one to i8**), align 8, !tbaa !23
  br i1 %397, label %408, label %410

; <label>:408                                     ; preds = %403
  %409 = tail call i8* @save_calloc(i8* getelementptr inbounds ([10 x i8]* @.str35, i64 0, i64 0), i8* getelementptr inbounds ([62 x i8]* @.str2, i64 0, i64 0), i32 1349, i32 %4, i32 8) #8
  store i8* %409, i8** bitcast (i32*** @ns5_core.nl_lr_ljc to i8**), align 8, !tbaa !23
  br label %410

; <label>:410                                     ; preds = %408, %403
  br i1 %398, label %411, label %.preheader10.i

; <label>:411                                     ; preds = %410
  %412 = tail call i8* @save_calloc(i8* getelementptr inbounds ([10 x i8]* @.str36, i64 0, i64 0), i8* getelementptr inbounds ([62 x i8]* @.str2, i64 0, i64 0), i32 1353, i32 %4, i32 8) #8
  store i8* %412, i8** bitcast (i32*** @ns5_core.nl_lr_one to i8**), align 8, !tbaa !23
  br label %.preheader10.i

.preheader10.i:                                   ; preds = %411, %410
  %413 = icmp sgt i32 %4, 0
  br i1 %413, label %.lr.ph54.i, label %._crit_edge55.i

.lr.ph54.i:                                       ; preds = %.preheader10.i
  %414 = add i32 %4, -1
  br label %415

; <label>:415                                     ; preds = %431, %.lr.ph54.i
  %indvars.iv79.i = phi i64 [ 0, %.lr.ph54.i ], [ %indvars.iv.next80.i, %431 ]
  %416 = tail call i8* @save_calloc(i8* getelementptr inbounds ([9 x i8]* @.str37, i64 0, i64 0), i8* getelementptr inbounds ([62 x i8]* @.str2, i64 0, i64 0), i32 1356, i32 1024, i32 4) #8
  %417 = load i32*** @ns5_core.nl_sr, align 8, !tbaa !23
  %418 = getelementptr inbounds i32** %417, i64 %indvars.iv79.i
  %419 = bitcast i32** %418 to i8**
  store i8* %416, i8** %419, align 8, !tbaa !23
  br i1 %397, label %420, label %425

; <label>:420                                     ; preds = %415
  %421 = tail call i8* @save_calloc(i8* getelementptr inbounds ([13 x i8]* @.str38, i64 0, i64 0), i8* getelementptr inbounds ([62 x i8]* @.str2, i64 0, i64 0), i32 1358, i32 1024, i32 4) #8
  %422 = load i32*** @ns5_core.nl_lr_ljc, align 8, !tbaa !23
  %423 = getelementptr inbounds i32** %422, i64 %indvars.iv79.i
  %424 = bitcast i32** %423 to i8**
  store i8* %421, i8** %424, align 8, !tbaa !23
  br label %425

; <label>:425                                     ; preds = %420, %415
  br i1 %398, label %426, label %431

; <label>:426                                     ; preds = %425
  %427 = tail call i8* @save_calloc(i8* getelementptr inbounds ([13 x i8]* @.str39, i64 0, i64 0), i8* getelementptr inbounds ([62 x i8]* @.str2, i64 0, i64 0), i32 1360, i32 1024, i32 4) #8
  %428 = load i32*** @ns5_core.nl_lr_one, align 8, !tbaa !23
  %429 = getelementptr inbounds i32** %428, i64 %indvars.iv79.i
  %430 = bitcast i32** %429 to i8**
  store i8* %427, i8** %430, align 8, !tbaa !23
  br label %431

; <label>:431                                     ; preds = %426, %425
  %indvars.iv.next80.i = add nuw nsw i64 %indvars.iv79.i, 1
  %lftr.wideiv73 = trunc i64 %indvars.iv79.i to i32
  %exitcond74 = icmp eq i32 %lftr.wideiv73, %414
  br i1 %exitcond74, label %._crit_edge55.i, label %415

._crit_edge55.i:                                  ; preds = %431, %.preheader10.i
  %432 = load %struct.__sFILE** @debug, align 8, !tbaa !23
  %433 = icmp eq %struct.__sFILE* %432, null
  br i1 %433, label %439, label %434

; <label>:434                                     ; preds = %._crit_edge55.i
  %435 = fpext float %381 to double
  %436 = fpext float %rvdw2.0.i to double
  %437 = fpext float %rcoul2.0.i to double
  %438 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %432, i8* getelementptr inbounds ([52 x i8]* @.str40, i64 0, i64 0), double %435, double %436, double %437) #8
  br label %439

; <label>:439                                     ; preds = %434, %._crit_edge55.i, %392
  %440 = load [3 x float]** %.pre-phi, align 8, !tbaa !65
  %441 = getelementptr inbounds %struct.t_grid* %366, i64 0, i32 1
  %442 = load i32* %441, align 4, !tbaa !71
  %443 = getelementptr inbounds %struct.t_grid* %366, i64 0, i32 2
  %444 = load i32* %443, align 4, !tbaa !73
  %445 = getelementptr inbounds %struct.t_grid* %366, i64 0, i32 3
  %446 = load i32* %445, align 4, !tbaa !74
  %447 = getelementptr inbounds %struct.t_grid* %366, i64 0, i32 11
  %448 = load i32** %447, align 8, !tbaa !75
  %449 = getelementptr inbounds %struct.t_grid* %366, i64 0, i32 9
  %450 = load i32** %449, align 8, !tbaa !76
  %451 = getelementptr inbounds %struct.t_grid* %366, i64 0, i32 10
  %452 = load i32** %451, align 8, !tbaa !77
  %453 = load float** @ns5_core.dcx2, align 8, !tbaa !23
  %454 = icmp eq float* %453, null
  br i1 %454, label %455, label %462

; <label>:455                                     ; preds = %439
  %456 = shl nsw i32 %442, 1
  %457 = tail call i8* @save_calloc(i8* getelementptr inbounds ([5 x i8]* @.str41, i64 0, i64 0), i8* getelementptr inbounds ([62 x i8]* @.str2, i64 0, i64 0), i32 1379, i32 %456, i32 4) #8
  store i8* %457, i8** bitcast (float** @ns5_core.dcx2 to i8**), align 8, !tbaa !23
  %458 = shl nsw i32 %444, 1
  %459 = tail call i8* @save_calloc(i8* getelementptr inbounds ([5 x i8]* @.str42, i64 0, i64 0), i8* getelementptr inbounds ([62 x i8]* @.str2, i64 0, i64 0), i32 1380, i32 %458, i32 4) #8
  store i8* %459, i8** bitcast (float** @ns5_core.dcy2 to i8**), align 8, !tbaa !23
  %460 = shl nsw i32 %446, 1
  %461 = tail call i8* @save_calloc(i8* getelementptr inbounds ([5 x i8]* @.str43, i64 0, i64 0), i8* getelementptr inbounds ([62 x i8]* @.str2, i64 0, i64 0), i32 1381, i32 %460, i32 4) #8
  store i8* %461, i8** bitcast (float** @ns5_core.dcz2 to i8**), align 8, !tbaa !23
  %.pre.i = load i32* %441, align 4, !tbaa !71
  %.pre83.i = load i32* %443, align 4, !tbaa !73
  %.pre84.i = load i32* %445, align 4, !tbaa !74
  br label %462

; <label>:462                                     ; preds = %455, %439
  %463 = phi i32 [ %.pre84.i, %455 ], [ %446, %439 ]
  %464 = phi i32 [ %.pre83.i, %455 ], [ %444, %439 ]
  %465 = phi i32 [ %.pre.i, %455 ], [ %442, %439 ]
  %466 = getelementptr inbounds [3 x float]* %box, i64 0, i64 0
  %467 = load float* %466, align 4, !tbaa !21
  %468 = sitofp i32 %465 to float
  %469 = fdiv float %467, %468
  %470 = getelementptr inbounds [3 x float]* %box, i64 1, i64 1
  %471 = load float* %470, align 4, !tbaa !21
  %472 = sitofp i32 %464 to float
  %473 = fdiv float %471, %472
  %474 = getelementptr inbounds [3 x float]* %box, i64 2, i64 2
  %475 = load float* %474, align 4, !tbaa !21
  %476 = sitofp i32 %463 to float
  %477 = fdiv float %475, %476
  %478 = fdiv float 1.000000e+00, %469
  %479 = fdiv float 1.000000e+00, %473
  %480 = fdiv float 1.000000e+00, %477
  %481 = load i32* %330, align 4, !tbaa !60
  %482 = load i32* %332, align 4, !tbaa !61
  %483 = icmp slt i32 %481, %482
  br i1 %483, label %.lr.ph49.i, label %.preheader.i21

.lr.ph49.i:                                       ; preds = %462
  %484 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 66
  %485 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 3, i64 0, i32 2
  %486 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 2, i32 9
  %487 = getelementptr inbounds [3 x float]* %box, i64 2, i64 1
  %488 = getelementptr inbounds [3 x float]* %box, i64 1, i64 0
  %489 = getelementptr inbounds [3 x float]* %box, i64 2, i64 0
  %490 = icmp sgt i32 %4, 0
  %491 = add i32 %4, -1
  %492 = sext i32 %481 to i64
  br label %495

.preheader.i21:                                   ; preds = %765, %462
  %shift.0.lcssa.i = phi i32 [ -1, %462 ], [ %shift.7.i, %765 ]
  %nns.0.lcssa.i = phi i32 [ 0, %462 ], [ %nns.14.i, %765 ]
  %icg.0.lcssa.i = phi i32 [ -1, %462 ], [ %497, %765 ]
  %493 = icmp sgt i32 %4, 0
  br i1 %493, label %.lr.ph.i22, label %.preheader.i.i31

.lr.ph.i22:                                       ; preds = %.preheader.i21
  %494 = add i32 %4, -1
  br label %769

; <label>:495                                     ; preds = %765, %.lr.ph49.i
  %indvars.iv77.i = phi i64 [ %492, %.lr.ph49.i ], [ %indvars.iv.next78.i, %765 ]
  %shift.047.i = phi i32 [ -1, %.lr.ph49.i ], [ %shift.7.i, %765 ]
  %nns.046.i = phi i32 [ 0, %.lr.ph49.i ], [ %nns.14.i, %765 ]
  %496 = getelementptr inbounds i32* %364, i64 %indvars.iv77.i
  %497 = load i32* %496, align 4, !tbaa !17
  %498 = trunc i64 %indvars.iv77.i to i32
  %499 = icmp eq i32 %497, %498
  br i1 %499, label %501, label %500

; <label>:500                                     ; preds = %495
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([38 x i8]* @.str44, i64 0, i64 0), i32 %497, i32 %498, i8* getelementptr inbounds ([62 x i8]* @.str2, i64 0, i64 0), i32 1408) #8
  br label %501

; <label>:501                                     ; preds = %500, %495
  %502 = sext i32 %497 to i64
  %503 = getelementptr inbounds i32* %368, i64 %502
  %504 = load i32* %503, align 4, !tbaa !17
  %505 = icmp eq i32 %504, 0
  br i1 %505, label %506, label %765

; <label>:506                                     ; preds = %501
  %507 = load i32** %484, align 8, !tbaa !52
  %508 = load i32** %485, align 8, !tbaa !50
  %509 = getelementptr inbounds i32* %508, i64 %502
  %510 = load i32* %509, align 4, !tbaa !17
  %511 = sext i32 %510 to i64
  %512 = getelementptr inbounds i16* %377, i64 %511
  %513 = load i16* %512, align 2, !tbaa !55
  %514 = zext i16 %513 to i32
  %515 = mul nsw i32 %514, %4
  %516 = sext i32 %515 to i64
  %517 = add nsw i32 %497, 1
  %518 = sext i32 %517 to i64
  %519 = getelementptr inbounds i32* %508, i64 %518
  %520 = load i32* %519, align 4, !tbaa !17
  call fastcc void @setexcl(i32 %510, i32 %520, %struct.t_block* %486, i32 1, i64* %367) #8
  %521 = call i32 @calc_naaj(i32 %497, i32 %378) #8
  %522 = add nsw i32 %521, %497
  %523 = sub nsw i32 %522, %378
  %524 = getelementptr inbounds [3 x float]* %440, i64 %502, i64 2
  %525 = getelementptr inbounds [3 x float]* %440, i64 %502, i64 1
  %526 = getelementptr inbounds [3 x float]* %440, i64 %502, i64 0
  br label %527

; <label>:527                                     ; preds = %.loopexit9.i, %506
  %tz.044.i = phi i32 [ -1, %506 ], [ %758, %.loopexit9.i ]
  %shift.143.i = phi i32 [ %shift.047.i, %506 ], [ %shift.6.i, %.loopexit9.i ]
  %nns.142.i = phi i32 [ %nns.046.i, %506 ], [ %nns.13.i, %.loopexit9.i ]
  %528 = load float* %524, align 4, !tbaa !21
  %529 = sitofp i32 %tz.044.i to float
  %530 = load float* %474, align 4, !tbaa !21
  %531 = fmul float %529, %530
  %532 = fadd float %528, %531
  %533 = load float** @ns5_core.dcz2, align 8, !tbaa !23
  call fastcc void @get_dx(i32 %446, float %477, float %480, float %rcoul2.0.i, float %532, i32* %dz0.i, i32* %dz1.i, float* %533) #8
  %534 = load i32* %dz0.i, align 4, !tbaa !17
  %535 = load i32* %dz1.i, align 4, !tbaa !17
  %536 = icmp sgt i32 %534, %535
  br i1 %536, label %.loopexit9.i, label %.preheader8.i

.preheader8.i:                                    ; preds = %527
  %537 = mul i32 %tz.044.i, 3
  %538 = add nsw i32 %537, 3
  %539 = sext i32 %534 to i64
  %540 = sext i32 %535 to i64
  br label %541

; <label>:541                                     ; preds = %.loopexit7.i, %.preheader8.i
  %ty.041.i = phi i32 [ -1, %.preheader8.i ], [ %757, %.loopexit7.i ]
  %shift.240.i = phi i32 [ %shift.143.i, %.preheader8.i ], [ %shift.5.i, %.loopexit7.i ]
  %nns.239.i = phi i32 [ %nns.142.i, %.preheader8.i ], [ %nns.12.i, %.loopexit7.i ]
  %542 = load float* %525, align 4, !tbaa !21
  %543 = sitofp i32 %ty.041.i to float
  %544 = load float* %470, align 4, !tbaa !21
  %545 = fmul float %543, %544
  %546 = fadd float %542, %545
  %547 = load float* %487, align 4, !tbaa !21
  %548 = fmul float %529, %547
  %549 = fadd float %546, %548
  %550 = load float** @ns5_core.dcy2, align 8, !tbaa !23
  call fastcc void @get_dx(i32 %444, float %473, float %479, float %rcoul2.0.i, float %549, i32* %dy0.i, i32* %dy1.i, float* %550) #8
  %551 = load i32* %dy0.i, align 4, !tbaa !17
  %552 = load i32* %dy1.i, align 4, !tbaa !17
  %553 = icmp sgt i32 %551, %552
  br i1 %553, label %.loopexit7.i, label %.preheader6.i

.preheader6.i:                                    ; preds = %541
  %554 = add nsw i32 %538, %ty.041.i
  %555 = mul i32 %554, 3
  %556 = add nsw i32 %555, 4
  %557 = sext i32 %551 to i64
  %558 = sext i32 %552 to i64
  br label %559

; <label>:559                                     ; preds = %.loopexit5.i, %.preheader6.i
  %tx.038.i = phi i32 [ -1, %.preheader6.i ], [ %756, %.loopexit5.i ]
  %shift.337.i = phi i32 [ %shift.240.i, %.preheader6.i ], [ %shift.4.i, %.loopexit5.i ]
  %nns.336.i = phi i32 [ %nns.239.i, %.preheader6.i ], [ %nns.11.i, %.loopexit5.i ]
  %560 = load float* %526, align 4, !tbaa !21
  %561 = sitofp i32 %tx.038.i to float
  %562 = load float* %466, align 4, !tbaa !21
  %563 = fmul float %561, %562
  %564 = fadd float %560, %563
  %565 = load float* %488, align 4, !tbaa !21
  %566 = fmul float %543, %565
  %567 = fadd float %564, %566
  %568 = load float* %489, align 4, !tbaa !21
  %569 = fmul float %529, %568
  %570 = fadd float %567, %569
  %571 = load float** @ns5_core.dcx2, align 8, !tbaa !23
  call fastcc void @get_dx(i32 %442, float %469, float %478, float %rcoul2.0.i, float %570, i32* %dx0.i, i32* %dx1.i, float* %571) #8
  %572 = load i32* %dx0.i, align 4, !tbaa !17
  %573 = load i32* %dx1.i, align 4, !tbaa !17
  %574 = icmp sgt i32 %572, %573
  br i1 %574, label %.loopexit5.i, label %575

; <label>:575                                     ; preds = %559
  %576 = add nsw i32 %556, %tx.038.i
  br i1 %490, label %.lr.ph13.i, label %.lr.ph32.i

.lr.ph13.i:                                       ; preds = %575
  %577 = load i32** @ns5_core.nsr, align 8, !tbaa !23
  %578 = load i32** @ns5_core.nlr_ljc, align 8, !tbaa !23
  %579 = load i32** @ns5_core.nlr_one, align 8, !tbaa !23
  br label %580

; <label>:580                                     ; preds = %580, %.lr.ph13.i
  %indvars.iv56.i = phi i64 [ 0, %.lr.ph13.i ], [ %indvars.iv.next57.i, %580 ]
  %581 = getelementptr inbounds i32* %577, i64 %indvars.iv56.i
  store i32 0, i32* %581, align 4, !tbaa !17
  %582 = getelementptr inbounds i32* %578, i64 %indvars.iv56.i
  store i32 0, i32* %582, align 4, !tbaa !17
  %583 = getelementptr inbounds i32* %579, i64 %indvars.iv56.i
  store i32 0, i32* %583, align 4, !tbaa !17
  %indvars.iv.next57.i = add nuw nsw i64 %indvars.iv56.i, 1
  %lftr.wideiv = trunc i64 %indvars.iv56.i to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %491
  br i1 %exitcond, label %.lr.ph32.i, label %580

.lr.ph32.i:                                       ; preds = %580, %575
  %584 = sext i32 %572 to i64
  %585 = sext i32 %573 to i64
  br label %.lr.ph26.i

.preheader4.i:                                    ; preds = %._crit_edge27.i
  br i1 %490, label %.lr.ph35.i, label %.loopexit5.i

.lr.ph26.i:                                       ; preds = %._crit_edge27.i, %.lr.ph32.i
  %indvars.iv68.i = phi i64 [ %indvars.iv.next69.i, %._crit_edge27.i ], [ %584, %.lr.ph32.i ]
  %nns.429.i = phi i32 [ %nns.10.i, %._crit_edge27.i ], [ %nns.336.i, %.lr.ph32.i ]
  %586 = load float** @ns5_core.dcx2, align 8, !tbaa !23
  %587 = getelementptr inbounds float* %586, i64 %indvars.iv68.i
  %588 = load float* %587, align 4, !tbaa !21
  %589 = fsub float %rcoul2.0.i, %588
  %590 = trunc i64 %indvars.iv68.i to i32
  %591 = mul i32 %590, %444
  br label %592

; <label>:592                                     ; preds = %.loopexit3.i, %.lr.ph26.i
  %indvars.iv66.i = phi i64 [ %indvars.iv.next67.i, %.loopexit3.i ], [ %557, %.lr.ph26.i ]
  %nns.523.i = phi i32 [ %nns.10.i, %.loopexit3.i ], [ %nns.429.i, %.lr.ph26.i ]
  %593 = load float** @ns5_core.dcy2, align 8, !tbaa !23
  %594 = getelementptr inbounds float* %593, i64 %indvars.iv66.i
  %595 = load float* %594, align 4, !tbaa !21
  %596 = fsub float %589, %595
  %597 = fcmp ogt float %596, 0.000000e+00
  br i1 %597, label %.lr.ph21.i, label %.loopexit3.i

.lr.ph21.i:                                       ; preds = %592
  %598 = trunc i64 %indvars.iv66.i to i32
  %tmp.i = add i32 %598, %591
  %tmp2.i = mul i32 %tmp.i, %446
  br label %599

; <label>:599                                     ; preds = %.loopexit.i24, %.lr.ph21.i
  %indvars.iv64.i = phi i64 [ %indvars.iv.next65.i, %.loopexit.i24 ], [ %539, %.lr.ph21.i ]
  %nns.618.i = phi i32 [ %nns.9.i, %.loopexit.i24 ], [ %nns.523.i, %.lr.ph21.i ]
  %600 = load float** @ns5_core.dcz2, align 8, !tbaa !23
  %601 = getelementptr inbounds float* %600, i64 %indvars.iv64.i
  %602 = load float* %601, align 4, !tbaa !21
  %603 = fcmp ogt float %596, %602
  br i1 %603, label %604, label %.loopexit.i24

; <label>:604                                     ; preds = %599
  %605 = trunc i64 %indvars.iv64.i to i32
  %606 = add i32 %605, %tmp2.i
  %607 = sext i32 %606 to i64
  %608 = getelementptr inbounds i32* %452, i64 %607
  %609 = load i32* %608, align 4, !tbaa !17
  %610 = icmp sgt i32 %609, 0
  br i1 %610, label %.lr.ph17.i, label %.loopexit.i24

.lr.ph17.i:                                       ; preds = %604
  %611 = getelementptr inbounds i32* %450, i64 %607
  %612 = load i32* %611, align 4, !tbaa !17
  %613 = sext i32 %612 to i64
  %614 = add i32 %609, -1
  br label %615

; <label>:615                                     ; preds = %721, %.lr.ph17.i
  %indvars.iv60.i = phi i64 [ 0, %.lr.ph17.i ], [ %indvars.iv.next61.i, %721 ]
  %nns.714.i = phi i32 [ %nns.618.i, %.lr.ph17.i ], [ %nns.8.i, %721 ]
  %616 = add nsw i64 %indvars.iv60.i, %613
  %617 = getelementptr inbounds i32* %448, i64 %616
  %618 = load i32* %617, align 4, !tbaa !17
  %619 = icmp sge i32 %618, %497
  %620 = icmp slt i32 %618, %522
  %or.cond.i = and i1 %619, %620
  %621 = icmp slt i32 %618, %523
  %or.cond1.i = or i1 %621, %or.cond.i
  br i1 %or.cond1.i, label %622, label %721

; <label>:622                                     ; preds = %615
  %623 = sext i32 %618 to i64
  %624 = getelementptr inbounds [3 x float]* %440, i64 %623, i64 0
  %625 = load float* %624, align 4, !tbaa !21
  %626 = fsub float %570, %625
  %627 = fmul float %626, %626
  %628 = getelementptr inbounds [3 x float]* %440, i64 %623, i64 1
  %629 = load float* %628, align 4, !tbaa !21
  %630 = fsub float %549, %629
  %631 = fmul float %630, %630
  %632 = fadd float %627, %631
  %633 = getelementptr inbounds [3 x float]* %440, i64 %623, i64 2
  %634 = load float* %633, align 4, !tbaa !21
  %635 = fsub float %532, %634
  %636 = fmul float %635, %635
  %637 = fadd float %632, %636
  %638 = fcmp olt float %637, %396
  br i1 %638, label %639, label %719

; <label>:639                                     ; preds = %622
  %640 = load i32** %485, align 8, !tbaa !50
  %641 = getelementptr inbounds i32* %640, i64 %623
  %642 = load i32* %641, align 4, !tbaa !17
  %643 = sext i32 %642 to i64
  %644 = getelementptr inbounds i16* %377, i64 %643
  %645 = load i16* %644, align 2, !tbaa !55
  %646 = zext i16 %645 to i32
  %647 = zext i16 %645 to i64
  %.sum.i23 = add nsw i64 %647, %516
  %648 = getelementptr inbounds i32* %507, i64 %.sum.i23
  %649 = load i32* %648, align 4, !tbaa !17
  %650 = icmp eq i32 %649, 0
  br i1 %650, label %651, label %719

; <label>:651                                     ; preds = %639
  %652 = fcmp olt float %637, %381
  br i1 %652, label %653, label %674

; <label>:653                                     ; preds = %651
  %654 = load i32** @ns5_core.nsr, align 8, !tbaa !23
  %655 = getelementptr inbounds i32* %654, i64 %647
  %656 = load i32* %655, align 4, !tbaa !17
  %657 = icmp sgt i32 %656, 1023
  br i1 %657, label %658, label %664

; <label>:658                                     ; preds = %653
  %659 = load i32*** @ns5_core.nl_sr, align 8, !tbaa !23
  %660 = getelementptr inbounds i32** %659, i64 %647
  %661 = load i32** %660, align 8, !tbaa !23
  call fastcc void @put_in_list(i32* %369, i32 %4, %struct.t_mdatoms* %md, i32 %497, i32 %646, i32 %656, i32* %661, i32* %640, i64* %367, i32 %576, %struct.t_forcerec* %fr, i32 0, i32 0, i32 0) #8
  %662 = load i32** @ns5_core.nsr, align 8, !tbaa !23
  %663 = getelementptr inbounds i32* %662, i64 %647
  store i32 0, i32* %663, align 4, !tbaa !17
  br label %664

; <label>:664                                     ; preds = %658, %653
  %665 = phi i32 [ 0, %658 ], [ %656, %653 ]
  %666 = phi i32* [ %662, %658 ], [ %654, %653 ]
  %667 = getelementptr inbounds i32* %666, i64 %647
  %668 = add nsw i32 %665, 1
  store i32 %668, i32* %667, align 4, !tbaa !17
  %669 = sext i32 %665 to i64
  %670 = load i32*** @ns5_core.nl_sr, align 8, !tbaa !23
  %671 = getelementptr inbounds i32** %670, i64 %647
  %672 = load i32** %671, align 8, !tbaa !23
  %673 = getelementptr inbounds i32* %672, i64 %669
  store i32 %618, i32* %673, align 4, !tbaa !17
  br label %719

; <label>:674                                     ; preds = %651
  %675 = fcmp olt float %637, %394
  br i1 %675, label %676, label %697

; <label>:676                                     ; preds = %674
  %677 = load i32** @ns5_core.nlr_ljc, align 8, !tbaa !23
  %678 = getelementptr inbounds i32* %677, i64 %647
  %679 = load i32* %678, align 4, !tbaa !17
  %680 = icmp sgt i32 %679, 1023
  br i1 %680, label %681, label %687

; <label>:681                                     ; preds = %676
  %682 = load i32*** @ns5_core.nl_lr_ljc, align 8, !tbaa !23
  %683 = getelementptr inbounds i32** %682, i64 %647
  %684 = load i32** %683, align 8, !tbaa !23
  call fastcc void @do_longrange(%struct.__sFILE* %log, %struct.t_commrec* %cr, %struct.t_topology* %top, %struct.t_forcerec* %fr, i32 %4, %struct.t_mdatoms* %md, i32 %497, i32 %646, i32 %679, i32* %684, i64* %367, i32 %576, [3 x float]* %x, float* %365, %struct.t_nrnb* %nrnb, float %lambda, float* %dvdlambda, %struct.t_groups* %grps, i32 0, i32 0, i32 0, i32* %369) #8
  %685 = load i32** @ns5_core.nlr_ljc, align 8, !tbaa !23
  %686 = getelementptr inbounds i32* %685, i64 %647
  store i32 0, i32* %686, align 4, !tbaa !17
  br label %687

; <label>:687                                     ; preds = %681, %676
  %688 = phi i32 [ 0, %681 ], [ %679, %676 ]
  %689 = phi i32* [ %685, %681 ], [ %677, %676 ]
  %690 = getelementptr inbounds i32* %689, i64 %647
  %691 = add nsw i32 %688, 1
  store i32 %691, i32* %690, align 4, !tbaa !17
  %692 = sext i32 %688 to i64
  %693 = load i32*** @ns5_core.nl_lr_ljc, align 8, !tbaa !23
  %694 = getelementptr inbounds i32** %693, i64 %647
  %695 = load i32** %694, align 8, !tbaa !23
  %696 = getelementptr inbounds i32* %695, i64 %692
  store i32 %618, i32* %696, align 4, !tbaa !17
  br label %719

; <label>:697                                     ; preds = %674
  br i1 %398, label %698, label %719

; <label>:698                                     ; preds = %697
  %699 = load i32** @ns5_core.nlr_one, align 8, !tbaa !23
  %700 = getelementptr inbounds i32* %699, i64 %647
  %701 = load i32* %700, align 4, !tbaa !17
  %702 = icmp sgt i32 %701, 1023
  br i1 %702, label %703, label %709

; <label>:703                                     ; preds = %698
  %704 = load i32*** @ns5_core.nl_lr_one, align 8, !tbaa !23
  %705 = getelementptr inbounds i32** %704, i64 %647
  %706 = load i32** %705, align 8, !tbaa !23
  call fastcc void @do_longrange(%struct.__sFILE* %log, %struct.t_commrec* %cr, %struct.t_topology* %top, %struct.t_forcerec* %fr, i32 %4, %struct.t_mdatoms* %md, i32 %497, i32 %646, i32 %701, i32* %706, i64* %367, i32 %576, [3 x float]* %x, float* %365, %struct.t_nrnb* %nrnb, float %lambda, float* %dvdlambda, %struct.t_groups* %grps, i32 %399, i32 %400, i32 0, i32* %369) #8
  %707 = load i32** @ns5_core.nlr_one, align 8, !tbaa !23
  %708 = getelementptr inbounds i32* %707, i64 %647
  store i32 0, i32* %708, align 4, !tbaa !17
  br label %709

; <label>:709                                     ; preds = %703, %698
  %710 = phi i32 [ 0, %703 ], [ %701, %698 ]
  %711 = phi i32* [ %707, %703 ], [ %699, %698 ]
  %712 = getelementptr inbounds i32* %711, i64 %647
  %713 = add nsw i32 %710, 1
  store i32 %713, i32* %712, align 4, !tbaa !17
  %714 = sext i32 %710 to i64
  %715 = load i32*** @ns5_core.nl_lr_one, align 8, !tbaa !23
  %716 = getelementptr inbounds i32** %715, i64 %647
  %717 = load i32** %716, align 8, !tbaa !23
  %718 = getelementptr inbounds i32* %717, i64 %714
  store i32 %618, i32* %718, align 4, !tbaa !17
  br label %719

; <label>:719                                     ; preds = %709, %697, %687, %664, %639, %622
  %720 = add nsw i32 %nns.714.i, 1
  br label %721

; <label>:721                                     ; preds = %719, %615
  %nns.8.i = phi i32 [ %720, %719 ], [ %nns.714.i, %615 ]
  %indvars.iv.next61.i = add nuw nsw i64 %indvars.iv60.i, 1
  %lftr.wideiv71 = trunc i64 %indvars.iv60.i to i32
  %exitcond72 = icmp eq i32 %lftr.wideiv71, %614
  br i1 %exitcond72, label %.loopexit.i24, label %615

.loopexit.i24:                                    ; preds = %721, %604, %599
  %nns.9.i = phi i32 [ %nns.618.i, %599 ], [ %nns.618.i, %604 ], [ %nns.8.i, %721 ]
  %indvars.iv.next65.i = add nsw i64 %indvars.iv64.i, 1
  %722 = icmp slt i64 %indvars.iv64.i, %540
  br i1 %722, label %599, label %.loopexit3.i

.loopexit3.i:                                     ; preds = %.loopexit.i24, %592
  %nns.10.i = phi i32 [ %nns.523.i, %592 ], [ %nns.9.i, %.loopexit.i24 ]
  %indvars.iv.next67.i = add nsw i64 %indvars.iv66.i, 1
  %723 = icmp slt i64 %indvars.iv66.i, %558
  br i1 %723, label %592, label %._crit_edge27.i

._crit_edge27.i:                                  ; preds = %.loopexit3.i
  %indvars.iv.next69.i = add nsw i64 %indvars.iv68.i, 1
  %724 = icmp slt i64 %indvars.iv68.i, %585
  br i1 %724, label %.lr.ph26.i, label %.preheader4.i

.lr.ph35.i:                                       ; preds = %.preheader4.i, %755
  %indvars.iv70.i = phi i64 [ %indvars.iv.next71.i, %755 ], [ 0, %.preheader4.i ]
  %725 = load i32** @ns5_core.nsr, align 8, !tbaa !23
  %726 = getelementptr inbounds i32* %725, i64 %indvars.iv70.i
  %727 = load i32* %726, align 4, !tbaa !17
  %728 = icmp sgt i32 %727, 0
  br i1 %728, label %729, label %735

; <label>:729                                     ; preds = %.lr.ph35.i
  %730 = load i32*** @ns5_core.nl_sr, align 8, !tbaa !23
  %731 = getelementptr inbounds i32** %730, i64 %indvars.iv70.i
  %732 = load i32** %731, align 8, !tbaa !23
  %733 = load i32** %485, align 8, !tbaa !50
  %734 = trunc i64 %indvars.iv70.i to i32
  call fastcc void @put_in_list(i32* %369, i32 %4, %struct.t_mdatoms* %md, i32 %497, i32 %734, i32 %727, i32* %732, i32* %733, i64* %367, i32 %576, %struct.t_forcerec* %fr, i32 0, i32 0, i32 0) #8
  br label %735

; <label>:735                                     ; preds = %729, %.lr.ph35.i
  %736 = load i32** @ns5_core.nlr_ljc, align 8, !tbaa !23
  %737 = getelementptr inbounds i32* %736, i64 %indvars.iv70.i
  %738 = load i32* %737, align 4, !tbaa !17
  %739 = icmp sgt i32 %738, 0
  br i1 %739, label %740, label %745

; <label>:740                                     ; preds = %735
  %741 = load i32*** @ns5_core.nl_lr_ljc, align 8, !tbaa !23
  %742 = getelementptr inbounds i32** %741, i64 %indvars.iv70.i
  %743 = load i32** %742, align 8, !tbaa !23
  %744 = trunc i64 %indvars.iv70.i to i32
  call fastcc void @do_longrange(%struct.__sFILE* %log, %struct.t_commrec* %cr, %struct.t_topology* %top, %struct.t_forcerec* %fr, i32 %4, %struct.t_mdatoms* %md, i32 %497, i32 %744, i32 %738, i32* %743, i64* %367, i32 %576, [3 x float]* %x, float* %365, %struct.t_nrnb* %nrnb, float %lambda, float* %dvdlambda, %struct.t_groups* %grps, i32 0, i32 0, i32 0, i32* %369) #8
  br label %745

; <label>:745                                     ; preds = %740, %735
  %746 = load i32** @ns5_core.nlr_one, align 8, !tbaa !23
  %747 = getelementptr inbounds i32* %746, i64 %indvars.iv70.i
  %748 = load i32* %747, align 4, !tbaa !17
  %749 = icmp sgt i32 %748, 0
  br i1 %749, label %750, label %._crit_edge88.i

._crit_edge88.i:                                  ; preds = %745
  %.pre91.i = trunc i64 %indvars.iv70.i to i32
  br label %755

; <label>:750                                     ; preds = %745
  %751 = load i32*** @ns5_core.nl_lr_one, align 8, !tbaa !23
  %752 = getelementptr inbounds i32** %751, i64 %indvars.iv70.i
  %753 = load i32** %752, align 8, !tbaa !23
  %754 = trunc i64 %indvars.iv70.i to i32
  call fastcc void @do_longrange(%struct.__sFILE* %log, %struct.t_commrec* %cr, %struct.t_topology* %top, %struct.t_forcerec* %fr, i32 %4, %struct.t_mdatoms* %md, i32 %497, i32 %754, i32 %748, i32* %753, i64* %367, i32 %576, [3 x float]* %x, float* %365, %struct.t_nrnb* %nrnb, float %lambda, float* %dvdlambda, %struct.t_groups* %grps, i32 %399, i32 %400, i32 0, i32* %369) #8
  br label %755

; <label>:755                                     ; preds = %750, %._crit_edge88.i
  %lftr.wideiv72.pre-phi.i = phi i32 [ %.pre91.i, %._crit_edge88.i ], [ %754, %750 ]
  %indvars.iv.next71.i = add nuw nsw i64 %indvars.iv70.i, 1
  %exitcond73.i = icmp eq i32 %lftr.wideiv72.pre-phi.i, %491
  br i1 %exitcond73.i, label %.loopexit5.i, label %.lr.ph35.i

.loopexit5.i:                                     ; preds = %755, %.preheader4.i, %559
  %nns.11.i = phi i32 [ %nns.336.i, %559 ], [ %nns.10.i, %.preheader4.i ], [ %nns.10.i, %755 ]
  %shift.4.i = phi i32 [ %shift.337.i, %559 ], [ %576, %.preheader4.i ], [ %576, %755 ]
  %756 = add nsw i32 %tx.038.i, 1
  %exitcond74.i = icmp eq i32 %756, 2
  br i1 %exitcond74.i, label %.loopexit7.i, label %559

.loopexit7.i:                                     ; preds = %.loopexit5.i, %541
  %nns.12.i = phi i32 [ %nns.239.i, %541 ], [ %nns.11.i, %.loopexit5.i ]
  %shift.5.i = phi i32 [ %shift.240.i, %541 ], [ %shift.4.i, %.loopexit5.i ]
  %757 = add nsw i32 %ty.041.i, 1
  %exitcond75.i = icmp eq i32 %757, 2
  br i1 %exitcond75.i, label %.loopexit9.i, label %541

.loopexit9.i:                                     ; preds = %.loopexit7.i, %527
  %nns.13.i = phi i32 [ %nns.142.i, %527 ], [ %nns.12.i, %.loopexit7.i ]
  %shift.6.i = phi i32 [ %shift.143.i, %527 ], [ %shift.5.i, %.loopexit7.i ]
  %758 = add nsw i32 %tz.044.i, 1
  %exitcond76.i = icmp eq i32 %758, 2
  br i1 %exitcond76.i, label %759, label %527

; <label>:759                                     ; preds = %.loopexit9.i
  %760 = load i32** %485, align 8, !tbaa !50
  %761 = getelementptr inbounds i32* %760, i64 %502
  %762 = load i32* %761, align 4, !tbaa !17
  %763 = getelementptr inbounds i32* %760, i64 %518
  %764 = load i32* %763, align 4, !tbaa !17
  call fastcc void @setexcl(i32 %762, i32 %764, %struct.t_block* %486, i32 0, i64* %367) #8
  br label %765

; <label>:765                                     ; preds = %759, %501
  %nns.14.i = phi i32 [ %nns.046.i, %501 ], [ %nns.13.i, %759 ]
  %shift.7.i = phi i32 [ %shift.047.i, %501 ], [ %shift.6.i, %759 ]
  %indvars.iv.next78.i = add nsw i64 %indvars.iv77.i, 1
  %766 = load i32* %332, align 4, !tbaa !61
  %767 = sext i32 %766 to i64
  %768 = icmp slt i64 %indvars.iv.next78.i, %767
  br i1 %768, label %495, label %.preheader.i21

; <label>:769                                     ; preds = %787, %.lr.ph.i22
  %indvars.iv.i25 = phi i64 [ 0, %.lr.ph.i22 ], [ %indvars.iv.next.i26, %787 ]
  br i1 %397, label %770, label %778

; <label>:770                                     ; preds = %769
  %771 = load i32** @ns5_core.nlr_ljc, align 8, !tbaa !23
  %772 = getelementptr inbounds i32* %771, i64 %indvars.iv.i25
  %773 = load i32* %772, align 4, !tbaa !17
  %774 = load i32*** @ns5_core.nl_lr_ljc, align 8, !tbaa !23
  %775 = getelementptr inbounds i32** %774, i64 %indvars.iv.i25
  %776 = load i32** %775, align 8, !tbaa !23
  %777 = trunc i64 %indvars.iv.i25 to i32
  call fastcc void @do_longrange(%struct.__sFILE* %log, %struct.t_commrec* %cr, %struct.t_topology* %top, %struct.t_forcerec* %fr, i32 0, %struct.t_mdatoms* %md, i32 %icg.0.lcssa.i, i32 %777, i32 %773, i32* %776, i64* %367, i32 %shift.0.lcssa.i, [3 x float]* %x, float* %365, %struct.t_nrnb* %nrnb, float %lambda, float* %dvdlambda, %struct.t_groups* %grps, i32 0, i32 0, i32 1, i32* %369) #8
  br label %778

; <label>:778                                     ; preds = %770, %769
  br i1 %398, label %779, label %._crit_edge89.i

._crit_edge89.i:                                  ; preds = %778
  %.pre90.i = trunc i64 %indvars.iv.i25 to i32
  br label %787

; <label>:779                                     ; preds = %778
  %780 = load i32** @ns5_core.nlr_one, align 8, !tbaa !23
  %781 = getelementptr inbounds i32* %780, i64 %indvars.iv.i25
  %782 = load i32* %781, align 4, !tbaa !17
  %783 = load i32*** @ns5_core.nl_lr_one, align 8, !tbaa !23
  %784 = getelementptr inbounds i32** %783, i64 %indvars.iv.i25
  %785 = load i32** %784, align 8, !tbaa !23
  %786 = trunc i64 %indvars.iv.i25 to i32
  call fastcc void @do_longrange(%struct.__sFILE* %log, %struct.t_commrec* %cr, %struct.t_topology* %top, %struct.t_forcerec* %fr, i32 0, %struct.t_mdatoms* %md, i32 %icg.0.lcssa.i, i32 %786, i32 %782, i32* %785, i64* %367, i32 %shift.0.lcssa.i, [3 x float]* %x, float* %365, %struct.t_nrnb* %nrnb, float %lambda, float* %dvdlambda, %struct.t_groups* %grps, i32 %399, i32 %400, i32 1, i32* %369) #8
  br label %787

; <label>:787                                     ; preds = %779, %._crit_edge89.i
  %lftr.wideiv.pre-phi.i = phi i32 [ %.pre90.i, %._crit_edge89.i ], [ %786, %779 ]
  %indvars.iv.next.i26 = add nuw nsw i64 %indvars.iv.i25, 1
  %exitcond.i27 = icmp eq i32 %lftr.wideiv.pre-phi.i, %494
  br i1 %exitcond.i27, label %.preheader.i.i31, label %769

.preheader.i.i31:                                 ; preds = %.preheader.i21, %787, %.preheader.i.i31
  %indvars.iv.i.i28 = phi i64 [ %indvars.iv.next.i.i29, %.preheader.i.i31 ], [ 0, %787 ], [ 0, %.preheader.i21 ]
  %788 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 49, i64 %indvars.iv.i.i28
  call fastcc void @close_nblist(%struct.t_nblist* %788) #8
  %indvars.iv.next.i.i29 = add nuw nsw i64 %indvars.iv.i.i28, 1
  %exitcond.i.i30 = icmp eq i64 %indvars.iv.next.i.i29, 13
  br i1 %exitcond.i.i30, label %ns5_core.exit, label %.preheader.i.i31

ns5_core.exit:                                    ; preds = %.preheader.i.i31
  call void @llvm.lifetime.end(i64 4, i8* %370)
  call void @llvm.lifetime.end(i64 4, i8* %371)
  call void @llvm.lifetime.end(i64 4, i8* %372)
  call void @llvm.lifetime.end(i64 4, i8* %373)
  call void @llvm.lifetime.end(i64 4, i8* %374)
  call void @llvm.lifetime.end(i64 4, i8* %375)
  br label %1139

.critedge8:                                       ; preds = %reset_neighbor_list.exit
  %789 = load %struct.t_ns_buf*** @search_neighbours.ns_buf, align 8, !tbaa !23
  %790 = icmp eq %struct.t_ns_buf** %789, null
  br i1 %790, label %791, label %.loopexit

; <label>:791                                     ; preds = %.critedge8
  %792 = tail call i8* @save_calloc(i8* getelementptr inbounds ([7 x i8]* @.str15, i64 0, i64 0), i8* getelementptr inbounds ([62 x i8]* @.str2, i64 0, i64 0), i32 1841, i32 %4, i32 8) #8
  store i8* %792, i8** bitcast (%struct.t_ns_buf*** @search_neighbours.ns_buf to i8**), align 8, !tbaa !23
  %793 = icmp sgt i32 %4, 0
  %794 = bitcast i8* %792 to %struct.t_ns_buf**
  br i1 %793, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %791
  %795 = add i32 %4, -1
  br label %796

; <label>:796                                     ; preds = %796, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %796 ]
  %797 = tail call i8* @save_calloc(i8* getelementptr inbounds ([10 x i8]* @.str16, i64 0, i64 0), i8* getelementptr inbounds ([62 x i8]* @.str2, i64 0, i64 0), i32 1843, i32 27, i32 4104) #8
  %798 = load %struct.t_ns_buf*** @search_neighbours.ns_buf, align 8, !tbaa !23
  %799 = getelementptr inbounds %struct.t_ns_buf** %798, i64 %indvars.iv
  %800 = bitcast %struct.t_ns_buf** %799 to i8**
  store i8* %797, i8** %800, align 8, !tbaa !23
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %lftr.wideiv83 = trunc i64 %indvars.iv to i32
  %exitcond84 = icmp eq i32 %lftr.wideiv83, %795
  br i1 %exitcond84, label %..loopexit_crit_edge, label %796

..loopexit_crit_edge:                             ; preds = %796
  %.pre108.pre = load %struct.t_ns_buf*** @search_neighbours.ns_buf, align 8, !tbaa !23
  br label %.loopexit

.loopexit:                                        ; preds = %791, %..loopexit_crit_edge, %.critedge8
  %801 = phi %struct.t_ns_buf** [ %789, %.critedge8 ], [ %.pre108.pre, %..loopexit_crit_edge ], [ %794, %791 ]
  %802 = getelementptr inbounds [3 x float]* %box_size, i64 0, i64 0
  %803 = load i64** @search_neighbours.bexcl, align 8, !tbaa !23
  %804 = load i32** @search_neighbours.bHaveLJ, align 8, !tbaa !23
  %805 = bitcast [3 x float]* %b_inv.i to i8*
  call void @llvm.lifetime.start(i64 12, i8* %805)
  %806 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 3, i64 0
  %807 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 2, i32 9
  %808 = load i32** @ns_simple_core.aaj, align 8, !tbaa !23
  %809 = icmp eq i32* %808, null
  br i1 %809, label %810, label %.loopexit20.i

; <label>:810                                     ; preds = %.loopexit
  %811 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 3, i64 0, i32 1
  %812 = load i32* %811, align 4, !tbaa !48
  %813 = shl nsw i32 %812, 1
  %814 = tail call i8* @save_calloc(i8* getelementptr inbounds ([4 x i8]* @.str47, i64 0, i64 0), i8* getelementptr inbounds ([62 x i8]* @.str2, i64 0, i64 0), i32 1138, i32 %813, i32 4) #8
  store i8* %814, i8** bitcast (i32** @ns_simple_core.aaj to i8**), align 8, !tbaa !23
  %815 = load i32* %811, align 4, !tbaa !48
  %816 = icmp sgt i32 %815, 0
  %817 = bitcast i8* %814 to i32*
  br i1 %816, label %.lr.ph30.i, label %.loopexit20.i

.lr.ph30.i:                                       ; preds = %810, %.lr.ph30.i
  %indvars.iv45.i = phi i64 [ %indvars.iv.next46.i, %.lr.ph30.i ], [ 0, %810 ]
  %818 = getelementptr inbounds i32* %817, i64 %indvars.iv45.i
  %819 = trunc i64 %indvars.iv45.i to i32
  store i32 %819, i32* %818, align 4, !tbaa !17
  %820 = load i32* %811, align 4, !tbaa !48
  %821 = add nsw i32 %820, %819
  %822 = sext i32 %821 to i64
  %823 = getelementptr inbounds i32* %817, i64 %822
  store i32 %819, i32* %823, align 4, !tbaa !17
  %indvars.iv.next46.i = add nuw nsw i64 %indvars.iv45.i, 1
  %824 = load i32* %811, align 4, !tbaa !48
  %825 = sext i32 %824 to i64
  %826 = icmp slt i64 %indvars.iv.next46.i, %825
  br i1 %826, label %.lr.ph30.i, label %.loopexit20.i

.loopexit20.i:                                    ; preds = %.lr.ph30.i, %810, %.loopexit
  %827 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 1
  %828 = load float* %827, align 4, !tbaa !68
  %829 = fmul float %828, %828
  %830 = load i32* %12, align 4, !tbaa !46
  %831 = icmp ne i32 %830, 1
  br i1 %831, label %.preheader19.i, label %.loopexit.i

.preheader19.i:                                   ; preds = %.loopexit20.i, %_divide.exit.i
  %indvars.iv42.i = phi i64 [ %indvars.iv.next43.i, %_divide.exit.i ], [ 0, %.loopexit20.i ]
  %832 = getelementptr inbounds [3 x float]* %box_size, i64 0, i64 %indvars.iv42.i
  %833 = load float* %832, align 4, !tbaa !21
  %834 = fpext float %833 to double
  %835 = fcmp olt double %834, 1.200000e-38
  br i1 %835, label %836, label %_divide.exit.i

; <label>:836                                     ; preds = %.preheader19.i
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([35 x i8]* @.str48, i64 0, i64 0), i8* getelementptr inbounds ([62 x i8]* @.str2, i64 0, i64 0), i32 1149) #8
  br label %_divide.exit.i

_divide.exit.i:                                   ; preds = %836, %.preheader19.i
  %837 = fdiv float 1.000000e+00, %833
  %838 = getelementptr inbounds [3 x float]* %b_inv.i, i64 0, i64 %indvars.iv42.i
  store float %837, float* %838, align 4, !tbaa !21
  %indvars.iv.next43.i = add nuw nsw i64 %indvars.iv42.i, 1
  %exitcond44.i = icmp eq i64 %indvars.iv.next43.i, 3
  br i1 %exitcond44.i, label %.loopexit.i, label %.preheader19.i

.loopexit.i:                                      ; preds = %_divide.exit.i, %.loopexit20.i
  %839 = getelementptr inbounds [3 x float]* %box, i64 1, i64 0
  %840 = load float* %839, align 4, !tbaa !21
  %fabsf.i = tail call float @fabsf(float %840) #10
  %841 = fpext float %fabsf.i to double
  %842 = fcmp ogt double %841, 1.200000e-38
  br i1 %842, label %853, label %843

; <label>:843                                     ; preds = %.loopexit.i
  %844 = getelementptr inbounds [3 x float]* %box, i64 2, i64 0
  %845 = load float* %844, align 4, !tbaa !21
  %fabsf1.i = tail call float @fabsf(float %845) #10
  %846 = fpext float %fabsf1.i to double
  %847 = fcmp ogt double %846, 1.200000e-38
  br i1 %847, label %853, label %848

; <label>:848                                     ; preds = %843
  %849 = getelementptr inbounds [3 x float]* %box, i64 2, i64 1
  %850 = load float* %849, align 4, !tbaa !21
  %fabsf2.i = tail call float @fabsf(float %850) #10
  %851 = fpext float %fabsf2.i to double
  %852 = fcmp ogt double %851, 1.200000e-38
  br label %853

; <label>:853                                     ; preds = %848, %843, %.loopexit.i
  %854 = phi i1 [ true, %843 ], [ true, %.loopexit.i ], [ %852, %848 ]
  %855 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 35
  %856 = load i32* %855, align 4, !tbaa !60
  %857 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 36
  %858 = load i32* %857, align 4, !tbaa !61
  %859 = icmp slt i32 %856, %858
  br i1 %859, label %.lr.ph.i, label %.preheader.i.preheader.i

.lr.ph.i:                                         ; preds = %853
  %860 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 66
  %861 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 3, i64 0, i32 2
  %862 = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 15
  %863 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 3, i64 0, i32 1
  %864 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 47
  %865 = getelementptr inbounds [3 x float]* %b_inv.i, i64 0, i64 0
  %866 = getelementptr inbounds [3 x float]* %b_inv.i, i64 0, i64 2
  %867 = getelementptr inbounds [3 x float]* %box, i64 2, i64 2
  %868 = getelementptr inbounds [3 x float]* %box, i64 2, i64 1
  %869 = getelementptr inbounds [3 x float]* %box, i64 2, i64 0
  %870 = getelementptr inbounds [3 x float]* %b_inv.i, i64 0, i64 1
  %871 = getelementptr inbounds [3 x float]* %box, i64 1, i64 1
  %872 = getelementptr inbounds [3 x float]* %box, i64 0, i64 0
  %873 = load float* %866, align 4, !tbaa !21
  %874 = load float* %870, align 4, !tbaa !21
  %875 = load float* %865, align 4, !tbaa !21
  %876 = icmp sgt i32 %4, 0
  %877 = getelementptr inbounds [3 x float]* %box_size, i64 0, i64 1
  %878 = getelementptr inbounds [3 x float]* %box_size, i64 0, i64 2
  %879 = fpext float %829 to double
  %880 = fcmp olt double %879, 1.200000e-38
  %881 = add i32 %4, -1
  %882 = sext i32 %856 to i64
  br label %883

.preheader.i.preheader.i:                         ; preds = %._crit_edge.i, %853
  %nsearch.0.lcssa.i = phi i32 [ 0, %853 ], [ %1115, %._crit_edge.i ]
  br label %.preheader.i.i

; <label>:883                                     ; preds = %._crit_edge.i, %.lr.ph.i
  %indvars.iv40.i = phi i64 [ %882, %.lr.ph.i ], [ %indvars.iv.next41.i, %._crit_edge.i ]
  %nsearch.025.i = phi i32 [ 0, %.lr.ph.i ], [ %1115, %._crit_edge.i ]
  %884 = load i32** %860, align 8, !tbaa !52
  %885 = load i32** %861, align 8, !tbaa !50
  %886 = getelementptr inbounds i32* %885, i64 %indvars.iv40.i
  %887 = load i32* %886, align 4, !tbaa !17
  %888 = sext i32 %887 to i64
  %889 = load i16** %862, align 8, !tbaa !53
  %890 = getelementptr inbounds i16* %889, i64 %888
  %891 = load i16* %890, align 2, !tbaa !55
  %892 = zext i16 %891 to i32
  %893 = mul nsw i32 %892, %4
  %894 = sext i32 %893 to i64
  %indvars.iv.next41.i = add nsw i64 %indvars.iv40.i, 1
  %895 = getelementptr inbounds i32* %885, i64 %indvars.iv.next41.i
  %896 = load i32* %895, align 4, !tbaa !17
  tail call fastcc void @setexcl(i32 %887, i32 %896, %struct.t_block* %807, i32 1, i64* %803) #8
  %897 = load i32* %863, align 4, !tbaa !48
  %898 = trunc i64 %indvars.iv40.i to i32
  %899 = tail call i32 @calc_naaj(i32 %898, i32 %897) #8
  %900 = load [3 x float]** %864, align 8, !tbaa !65
  %901 = load i32** @ns_simple_core.aaj, align 8, !tbaa !23
  %902 = load i16** %862, align 8, !tbaa !53
  %903 = load i32** %861, align 8, !tbaa !50
  %904 = icmp sgt i32 %899, 0
  br i1 %854, label %905, label %993

; <label>:905                                     ; preds = %883
  br i1 %904, label %.lr.ph.i.i, label %ns_inner_tric.exit.i

.lr.ph.i.i:                                       ; preds = %905
  %906 = getelementptr inbounds [3 x float]* %900, i64 %indvars.iv40.i, i64 0
  %907 = getelementptr inbounds [3 x float]* %900, i64 %indvars.iv40.i, i64 2
  %908 = getelementptr inbounds [3 x float]* %900, i64 %indvars.iv40.i, i64 1
  %909 = add i32 %899, -1
  br label %910

; <label>:910                                     ; preds = %992, %.lr.ph.i.i
  %indvars.iv.i3.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i4.i, %992 ]
  %.sum15.i = add i64 %indvars.iv.i3.i, %indvars.iv40.i
  %911 = getelementptr inbounds i32* %901, i64 %.sum15.i
  %912 = load i32* %911, align 4, !tbaa !17
  %913 = add nsw i32 %912, 1
  %914 = sext i32 %913 to i64
  %915 = getelementptr inbounds i32* %903, i64 %914
  %916 = load i32* %915, align 4, !tbaa !17
  %917 = sext i32 %912 to i64
  %918 = getelementptr inbounds i32* %903, i64 %917
  %919 = load i32* %918, align 4, !tbaa !17
  %920 = sub nsw i32 %916, %919
  %921 = getelementptr inbounds [3 x float]* %900, i64 %917, i64 0
  %922 = getelementptr inbounds [3 x float]* %900, i64 %917, i64 2
  %923 = load float* %922, align 4, !tbaa !21
  %924 = load float* %907, align 4, !tbaa !21
  %925 = fsub float %923, %924
  %926 = getelementptr inbounds [3 x float]* %900, i64 %917, i64 1
  %927 = load float* %926, align 4, !tbaa !21
  %928 = load float* %908, align 4, !tbaa !21
  %929 = fsub float %927, %928
  %930 = load float* %921, align 4, !tbaa !21
  %931 = load float* %906, align 4, !tbaa !21
  %932 = fsub float %930, %931
  %933 = fmul float %873, %925
  %934 = fadd float %933, 2.500000e+00
  %935 = fptosi float %934 to i32
  %936 = add nsw i32 %935, -2
  %937 = sitofp i32 %936 to float
  %938 = load float* %867, align 4, !tbaa !21
  %939 = fmul float %938, %937
  %940 = fsub float %925, %939
  %941 = load float* %868, align 4, !tbaa !21
  %942 = fmul float %941, %937
  %943 = fsub float %929, %942
  %944 = load float* %869, align 4, !tbaa !21
  %945 = fmul float %937, %944
  %946 = fsub float %932, %945
  %947 = fmul float %874, %943
  %948 = fadd float %947, 2.500000e+00
  %949 = fptosi float %948 to i32
  %950 = add nsw i32 %949, -2
  %951 = sitofp i32 %950 to float
  %952 = load float* %871, align 4, !tbaa !21
  %953 = fmul float %952, %951
  %954 = fsub float %943, %953
  %955 = load float* %839, align 4, !tbaa !21
  %956 = fmul float %955, %951
  %957 = fsub float %946, %956
  %958 = fmul float %875, %957
  %959 = fadd float %958, 2.500000e+00
  %960 = fptosi float %959 to i32
  %961 = add nsw i32 %960, -2
  %962 = sitofp i32 %961 to float
  %963 = load float* %872, align 4, !tbaa !21
  %964 = fmul float %963, %962
  %965 = fsub float %957, %964
  %966 = fmul float %965, %965
  %967 = fmul float %954, %954
  %968 = fadd float %967, %966
  %969 = fmul float %940, %940
  %970 = fadd float %969, %968
  %971 = mul i32 %935, 3
  %972 = add i32 %971, -3
  %973 = add nsw i32 %972, %950
  %974 = mul i32 %973, 3
  %975 = add i32 %974, 4
  %976 = add i32 %975, %961
  %977 = fcmp olt float %970, %829
  br i1 %977, label %978, label %992

; <label>:978                                     ; preds = %910
  %979 = sext i32 %919 to i64
  %980 = getelementptr inbounds i16* %902, i64 %979
  %981 = load i16* %980, align 2, !tbaa !55
  %982 = zext i16 %981 to i64
  %.sum16.i = add nsw i64 %982, %894
  %983 = getelementptr inbounds i32* %884, i64 %.sum16.i
  %984 = load i32* %983, align 4, !tbaa !17
  %985 = icmp eq i32 %984, 0
  br i1 %985, label %986, label %992

; <label>:986                                     ; preds = %978
  %987 = zext i16 %981 to i32
  %988 = sext i32 %976 to i64
  %989 = getelementptr inbounds %struct.t_ns_buf** %801, i64 %982
  %990 = load %struct.t_ns_buf** %989, align 8, !tbaa !23
  %991 = getelementptr inbounds %struct.t_ns_buf* %990, i64 %988
  tail call fastcc void @add_simple(%struct.t_ns_buf* %991, i32 %920, i32 %912, i32* %804, i32 %4, %struct.t_mdatoms* %md, i32 %898, i32 %987, %struct.t_block* %806, i64* %803, i32 %976, %struct.t_forcerec* %fr) #8
  br label %992

; <label>:992                                     ; preds = %986, %978, %910
  %indvars.iv.next.i4.i = add nuw nsw i64 %indvars.iv.i3.i, 1
  %lftr.wideiv79 = trunc i64 %indvars.iv.i3.i to i32
  %exitcond80 = icmp eq i32 %lftr.wideiv79, %909
  br i1 %exitcond80, label %ns_inner_tric.exit.i, label %910

; <label>:993                                     ; preds = %883
  br i1 %831, label %.preheader1.i.i, label %.preheader.i6.i

.preheader1.i.i:                                  ; preds = %993
  br i1 %904, label %.lr.ph5.i.i, label %ns_inner_tric.exit.i

.lr.ph5.i.i:                                      ; preds = %.preheader1.i.i
  %994 = getelementptr inbounds [3 x float]* %900, i64 %indvars.iv40.i, i64 0
  %995 = getelementptr inbounds [3 x float]* %900, i64 %indvars.iv40.i, i64 1
  %996 = getelementptr inbounds [3 x float]* %900, i64 %indvars.iv40.i, i64 2
  %997 = add i32 %899, -1
  %.pre109 = load float* %802, align 4, !tbaa !21
  %.pre110 = load float* %877, align 4, !tbaa !21
  %.pre111 = load float* %878, align 4, !tbaa !21
  br label %1002

.preheader.i6.i:                                  ; preds = %993
  br i1 %904, label %.lr.ph.i7.i, label %ns_inner_tric.exit.i

.lr.ph.i7.i:                                      ; preds = %.preheader.i6.i
  %998 = getelementptr inbounds [3 x float]* %900, i64 %indvars.iv40.i, i64 0
  %999 = getelementptr inbounds [3 x float]* %900, i64 %indvars.iv40.i, i64 1
  %1000 = getelementptr inbounds [3 x float]* %900, i64 %indvars.iv40.i, i64 2
  %1001 = add i32 %899, -1
  br label %1071

; <label>:1002                                    ; preds = %1070, %.lr.ph5.i.i
  %indvars.iv6.i.i = phi i64 [ 0, %.lr.ph5.i.i ], [ %indvars.iv.next7.i.i, %1070 ]
  %.sum.i = add i64 %indvars.iv6.i.i, %indvars.iv40.i
  %1003 = getelementptr inbounds i32* %901, i64 %.sum.i
  %1004 = load i32* %1003, align 4, !tbaa !17
  %1005 = add nsw i32 %1004, 1
  %1006 = sext i32 %1005 to i64
  %1007 = getelementptr inbounds i32* %903, i64 %1006
  %1008 = load i32* %1007, align 4, !tbaa !17
  %1009 = sext i32 %1004 to i64
  %1010 = getelementptr inbounds i32* %903, i64 %1009
  %1011 = load i32* %1010, align 4, !tbaa !17
  %1012 = sub nsw i32 %1008, %1011
  %1013 = getelementptr inbounds [3 x float]* %900, i64 %1009, i64 0
  %1014 = load float* %1013, align 4, !tbaa !21
  %1015 = load float* %994, align 4, !tbaa !21
  %1016 = fsub float %1014, %1015
  %1017 = getelementptr inbounds [3 x float]* %900, i64 %1009, i64 1
  %1018 = load float* %1017, align 4, !tbaa !21
  %1019 = load float* %995, align 4, !tbaa !21
  %1020 = fsub float %1018, %1019
  %1021 = getelementptr inbounds [3 x float]* %900, i64 %1009, i64 2
  %1022 = load float* %1021, align 4, !tbaa !21
  %1023 = load float* %996, align 4, !tbaa !21
  %1024 = fsub float %1022, %1023
  %1025 = fmul float %875, %1016
  %1026 = fadd float %1025, 1.500000e+00
  %1027 = fptosi float %1026 to i32
  %1028 = fmul float %874, %1020
  %1029 = fadd float %1028, 1.500000e+00
  %1030 = fptosi float %1029 to i32
  %1031 = fmul float %873, %1024
  %1032 = fadd float %1031, 1.500000e+00
  %1033 = fptosi float %1032 to i32
  %1034 = add nsw i32 %1027, -1
  %1035 = add nsw i32 %1030, -1
  %1036 = add nsw i32 %1033, -1
  %1037 = sitofp i32 %1034 to float
  %1038 = fmul float %.pre109, %1037
  %1039 = fsub float %1038, %1016
  %1040 = sitofp i32 %1035 to float
  %1041 = fmul float %.pre110, %1040
  %1042 = fsub float %1041, %1020
  %1043 = sitofp i32 %1036 to float
  %1044 = fmul float %.pre111, %1043
  %1045 = fsub float %1044, %1024
  %1046 = fmul float %1039, %1039
  %1047 = fmul float %1042, %1042
  %1048 = fadd float %1046, %1047
  %1049 = fmul float %1045, %1045
  %1050 = fadd float %1048, %1049
  %1051 = mul nsw i32 %1033, 3
  %1052 = add i32 %1051, %1030
  %1053 = mul nsw i32 %1052, 3
  %1054 = add i32 %1053, %1027
  %1055 = fcmp olt float %1050, %829
  br i1 %1055, label %1056, label %1070

; <label>:1056                                    ; preds = %1002
  %1057 = sext i32 %1011 to i64
  %1058 = getelementptr inbounds i16* %902, i64 %1057
  %1059 = load i16* %1058, align 2, !tbaa !55
  %1060 = zext i16 %1059 to i64
  %.sum12.i = add nsw i64 %1060, %894
  %1061 = getelementptr inbounds i32* %884, i64 %.sum12.i
  %1062 = load i32* %1061, align 4, !tbaa !17
  %1063 = icmp eq i32 %1062, 0
  br i1 %1063, label %1064, label %1070

; <label>:1064                                    ; preds = %1056
  %1065 = zext i16 %1059 to i32
  %1066 = sext i32 %1054 to i64
  %1067 = getelementptr inbounds %struct.t_ns_buf** %801, i64 %1060
  %1068 = load %struct.t_ns_buf** %1067, align 8, !tbaa !23
  %1069 = getelementptr inbounds %struct.t_ns_buf* %1068, i64 %1066
  tail call fastcc void @add_simple(%struct.t_ns_buf* %1069, i32 %1012, i32 %1004, i32* %804, i32 %4, %struct.t_mdatoms* %md, i32 %898, i32 %1065, %struct.t_block* %806, i64* %803, i32 %1054, %struct.t_forcerec* %fr) #8
  br label %1070

; <label>:1070                                    ; preds = %1064, %1056, %1002
  %indvars.iv.next7.i.i = add nuw nsw i64 %indvars.iv6.i.i, 1
  %lftr.wideiv77 = trunc i64 %indvars.iv6.i.i to i32
  %exitcond78 = icmp eq i32 %lftr.wideiv77, %997
  br i1 %exitcond78, label %ns_inner_tric.exit.i, label %1002

; <label>:1071                                    ; preds = %1114, %.lr.ph.i7.i
  %indvars.iv.i8.i = phi i64 [ 0, %.lr.ph.i7.i ], [ %indvars.iv.next.i9.i, %1114 ]
  %.sum13.i = add i64 %indvars.iv.i8.i, %indvars.iv40.i
  %1072 = getelementptr inbounds i32* %901, i64 %.sum13.i
  %1073 = load i32* %1072, align 4, !tbaa !17
  %1074 = add nsw i32 %1073, 1
  %1075 = sext i32 %1074 to i64
  %1076 = getelementptr inbounds i32* %903, i64 %1075
  %1077 = load i32* %1076, align 4, !tbaa !17
  %1078 = sext i32 %1073 to i64
  %1079 = getelementptr inbounds i32* %903, i64 %1078
  %1080 = load i32* %1079, align 4, !tbaa !17
  %1081 = sub nsw i32 %1077, %1080
  br i1 %880, label %1101, label %1082

; <label>:1082                                    ; preds = %1071
  %1083 = getelementptr inbounds [3 x float]* %900, i64 %1078, i64 0
  %1084 = load float* %1083, align 4, !tbaa !21
  %1085 = load float* %998, align 4, !tbaa !21
  %1086 = fsub float %1084, %1085
  %1087 = fmul float %1086, %1086
  %1088 = getelementptr inbounds [3 x float]* %900, i64 %1078, i64 1
  %1089 = load float* %1088, align 4, !tbaa !21
  %1090 = load float* %999, align 4, !tbaa !21
  %1091 = fsub float %1089, %1090
  %1092 = fmul float %1091, %1091
  %1093 = fadd float %1087, %1092
  %1094 = getelementptr inbounds [3 x float]* %900, i64 %1078, i64 2
  %1095 = load float* %1094, align 4, !tbaa !21
  %1096 = load float* %1000, align 4, !tbaa !21
  %1097 = fsub float %1095, %1096
  %1098 = fmul float %1097, %1097
  %1099 = fadd float %1093, %1098
  %1100 = fcmp olt float %1099, %829
  br i1 %1100, label %1101, label %1114

; <label>:1101                                    ; preds = %1082, %1071
  %1102 = sext i32 %1080 to i64
  %1103 = getelementptr inbounds i16* %902, i64 %1102
  %1104 = load i16* %1103, align 2, !tbaa !55
  %1105 = zext i16 %1104 to i64
  %.sum14.i = add nsw i64 %1105, %894
  %1106 = getelementptr inbounds i32* %884, i64 %.sum14.i
  %1107 = load i32* %1106, align 4, !tbaa !17
  %1108 = icmp eq i32 %1107, 0
  br i1 %1108, label %1109, label %1114

; <label>:1109                                    ; preds = %1101
  %1110 = zext i16 %1104 to i32
  %1111 = getelementptr inbounds %struct.t_ns_buf** %801, i64 %1105
  %1112 = load %struct.t_ns_buf** %1111, align 8, !tbaa !23
  %1113 = getelementptr inbounds %struct.t_ns_buf* %1112, i64 13
  tail call fastcc void @add_simple(%struct.t_ns_buf* %1113, i32 %1081, i32 %1073, i32* %804, i32 %4, %struct.t_mdatoms* %md, i32 %898, i32 %1110, %struct.t_block* %806, i64* %803, i32 13, %struct.t_forcerec* %fr) #8
  br label %1114

; <label>:1114                                    ; preds = %1109, %1101, %1082
  %indvars.iv.next.i9.i = add nuw nsw i64 %indvars.iv.i8.i, 1
  %lftr.wideiv75 = trunc i64 %indvars.iv.i8.i to i32
  %exitcond76 = icmp eq i32 %lftr.wideiv75, %1001
  br i1 %exitcond76, label %ns_inner_tric.exit.i, label %1071

ns_inner_tric.exit.i:                             ; preds = %1114, %1070, %992, %.preheader.i6.i, %.preheader1.i.i, %905
  %1115 = add nsw i32 %899, %nsearch.025.i
  br i1 %876, label %.preheader.i, label %._crit_edge.i

.preheader.i:                                     ; preds = %ns_inner_tric.exit.i, %1129
  %indvars.iv36.i = phi i64 [ %indvars.iv.next37.i, %1129 ], [ 0, %ns_inner_tric.exit.i ]
  %1116 = getelementptr inbounds %struct.t_ns_buf** %801, i64 %indvars.iv36.i
  %1117 = trunc i64 %indvars.iv36.i to i32
  br label %1118

; <label>:1118                                    ; preds = %1128, %.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.preheader.i ], [ %indvars.iv.next.i, %1128 ]
  %1119 = load %struct.t_ns_buf** %1116, align 8, !tbaa !23
  %1120 = getelementptr inbounds %struct.t_ns_buf* %1119, i64 %indvars.iv.i, i32 0
  %1121 = load i32* %1120, align 4, !tbaa !78
  %1122 = icmp sgt i32 %1121, 0
  br i1 %1122, label %1123, label %1128

; <label>:1123                                    ; preds = %1118
  %1124 = getelementptr inbounds %struct.t_ns_buf* %1119, i64 %indvars.iv.i, i32 2, i64 0
  %1125 = load i32** %861, align 8, !tbaa !50
  %1126 = trunc i64 %indvars.iv.i to i32
  tail call fastcc void @put_in_list(i32* %804, i32 %4, %struct.t_mdatoms* %md, i32 %898, i32 %1117, i32 %1121, i32* %1124, i32* %1125, i64* %803, i32 %1126, %struct.t_forcerec* %fr, i32 0, i32 0, i32 0) #8
  %1127 = getelementptr inbounds %struct.t_ns_buf* %1119, i64 %indvars.iv.i, i32 1
  store i32 0, i32* %1127, align 4, !tbaa !80
  store i32 0, i32* %1120, align 4, !tbaa !78
  br label %1128

; <label>:1128                                    ; preds = %1123, %1118
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %exitcond35.i = icmp eq i64 %indvars.iv.next.i, 27
  br i1 %exitcond35.i, label %1129, label %1118

; <label>:1129                                    ; preds = %1128
  %indvars.iv.next37.i = add nuw nsw i64 %indvars.iv36.i, 1
  %exitcond82 = icmp eq i32 %1117, %881
  br i1 %exitcond82, label %._crit_edge.i, label %.preheader.i

._crit_edge.i:                                    ; preds = %1129, %ns_inner_tric.exit.i
  %1130 = load i32** %861, align 8, !tbaa !50
  %1131 = getelementptr inbounds i32* %1130, i64 %indvars.iv40.i
  %1132 = load i32* %1131, align 4, !tbaa !17
  %1133 = getelementptr inbounds i32* %1130, i64 %indvars.iv.next41.i
  %1134 = load i32* %1133, align 4, !tbaa !17
  tail call fastcc void @setexcl(i32 %1132, i32 %1134, %struct.t_block* %807, i32 0, i64* %803) #8
  %1135 = load i32* %857, align 4, !tbaa !61
  %1136 = sext i32 %1135 to i64
  %1137 = icmp slt i64 %indvars.iv.next41.i, %1136
  br i1 %1137, label %883, label %.preheader.i.preheader.i

.preheader.i.i:                                   ; preds = %.preheader.i.i, %.preheader.i.preheader.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %.preheader.i.i ], [ 0, %.preheader.i.preheader.i ]
  %1138 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 49, i64 %indvars.iv.i.i
  tail call fastcc void @close_nblist(%struct.t_nblist* %1138) #8
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1
  %exitcond.i.i = icmp eq i64 %indvars.iv.next.i.i, 13
  br i1 %exitcond.i.i, label %ns_simple_core.exit, label %.preheader.i.i

ns_simple_core.exit:                              ; preds = %.preheader.i.i
  call void @llvm.lifetime.end(i64 12, i8* %805)
  br label %1139

; <label>:1139                                    ; preds = %ns_simple_core.exit, %ns5_core.exit
  %nsearch.0 = phi i32 [ %nns.0.lcssa.i, %ns5_core.exit ], [ %nsearch.0.lcssa.i, %ns_simple_core.exit ]
  %1140 = sitofp i32 %nsearch.0 to double
  %1141 = getelementptr inbounds %struct.t_nrnb* %nrnb, i64 0, i32 0, i64 87
  %1142 = load double* %1141, align 8, !tbaa !81
  %1143 = fadd double %1142, %1140
  store double %1143, double* %1141, align 8, !tbaa !81
  ret i32 %nsearch.0
}

; Function Attrs: optsize
declare i8* @save_calloc(i8*, i8*, i32, i32, i32) #1

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct.__sFILE* nocapture, i8* nocapture readonly, ...) #6

; Function Attrs: optsize
declare void @init_grid(%struct.__sFILE*, %struct.t_grid*, i32, [3 x float]*, float, i32) #1

; Function Attrs: optsize
declare void @pr_ivec(%struct.__sFILE*, i32, i8*, i32*, i32) #1

; Function Attrs: optsize
declare void @grid_first(%struct.__sFILE*, %struct.t_grid*, [3 x float]*, float) #1

; Function Attrs: optsize
declare void @fill_grid(%struct.__sFILE*, i32, i32*, %struct.t_grid*, [3 x float]*, i32, i32, i32, [3 x float]*) #1

; Function Attrs: optsize
declare void @mv_grid(%struct.t_commrec*, i32, i32*, %struct.t_grid*, i32*) #1

; Function Attrs: optsize
declare void @calc_elemnr(%struct.__sFILE*, i32, i32*, %struct.t_grid*, i32, i32, i32) #1

; Function Attrs: optsize
declare void @calc_ptrs(%struct.t_grid*) #1

; Function Attrs: optsize
declare void @grid_last(%struct.__sFILE*, i32, i32*, %struct.t_grid*, i32, i32, i32) #1

; Function Attrs: optsize
declare void @check_grid(%struct.__sFILE*, %struct.t_grid*) #1

; Function Attrs: optsize
declare void @print_grid(%struct.__sFILE*, %struct.t_grid*, i32, i32*) #1

; Function Attrs: optsize
declare void @pr_rvecs(%struct.__sFILE*, i32, i8*, [3 x float]*, i32) #1

; Function Attrs: nounwind optsize ssp uwtable
define internal fastcc void @reallocate_nblist(%struct.t_nblist* nocapture %nl) #3 {
  %1 = load %struct.__sFILE** @debug, align 8, !tbaa !23
  %2 = icmp eq %struct.__sFILE* %1, null
  br i1 %2, label %._crit_edge, label %3

._crit_edge:                                      ; preds = %0
  %.pre = getelementptr inbounds %struct.t_nblist* %nl, i64 0, i32 2
  br label %9

; <label>:3                                       ; preds = %0
  %4 = getelementptr inbounds %struct.t_nblist* %nl, i64 0, i32 0
  %5 = load i32* %4, align 4, !tbaa !34
  %6 = getelementptr inbounds %struct.t_nblist* %nl, i64 0, i32 2
  %7 = load i32* %6, align 4, !tbaa !35
  %8 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %1, i8* getelementptr inbounds ([48 x i8]* @.str22, i64 0, i64 0), i32 %5, i32 %7) #8
  br label %9

; <label>:9                                       ; preds = %._crit_edge, %3
  %.pre-phi = phi i32* [ %.pre, %._crit_edge ], [ %6, %3 ]
  %10 = getelementptr inbounds %struct.t_nblist* %nl, i64 0, i32 7
  %11 = bitcast i32** %10 to i8**
  %12 = load i8** %11, align 8, !tbaa !83
  %13 = load i32* %.pre-phi, align 4, !tbaa !35
  %14 = shl i32 %13, 2
  %15 = add i32 %14, 8
  %16 = tail call i8* @save_realloc(i8* getelementptr inbounds ([9 x i8]* @.str23, i64 0, i64 0), i8* getelementptr inbounds ([62 x i8]* @.str2, i64 0, i64 0), i32 97, i8* %12, i32 %15) #8
  store i8* %16, i8** %11, align 8, !tbaa !83
  %17 = getelementptr inbounds %struct.t_nblist* %nl, i64 0, i32 8
  %18 = bitcast i32** %17 to i8**
  %19 = load i8** %18, align 8, !tbaa !42
  %20 = load i32* %.pre-phi, align 4, !tbaa !35
  %21 = shl i32 %20, 2
  %22 = add i32 %21, 8
  %23 = tail call i8* @save_realloc(i8* getelementptr inbounds ([8 x i8]* @.str24, i64 0, i64 0), i8* getelementptr inbounds ([62 x i8]* @.str2, i64 0, i64 0), i32 98, i8* %19, i32 %22) #8
  store i8* %23, i8** %18, align 8, !tbaa !42
  %24 = getelementptr inbounds %struct.t_nblist* %nl, i64 0, i32 9
  %25 = bitcast i32** %24 to i8**
  %26 = load i8** %25, align 8, !tbaa !20
  %27 = load i32* %.pre-phi, align 4, !tbaa !35
  %28 = shl i32 %27, 2
  %29 = add i32 %28, 8
  %30 = tail call i8* @save_realloc(i8* getelementptr inbounds ([10 x i8]* @.str25, i64 0, i64 0), i8* getelementptr inbounds ([62 x i8]* @.str2, i64 0, i64 0), i32 99, i8* %26, i32 %29) #8
  store i8* %30, i8** %25, align 8, !tbaa !20
  %31 = getelementptr inbounds %struct.t_nblist* %nl, i64 0, i32 10
  %32 = bitcast i32** %31 to i8**
  %33 = load i8** %32, align 8, !tbaa !41
  %34 = load i32* %.pre-phi, align 4, !tbaa !35
  %35 = shl i32 %34, 2
  %36 = add i32 %35, 8
  %37 = tail call i8* @save_realloc(i8* getelementptr inbounds ([11 x i8]* @.str26, i64 0, i64 0), i8* getelementptr inbounds ([62 x i8]* @.str2, i64 0, i64 0), i32 100, i8* %33, i32 %36) #8
  store i8* %37, i8** %32, align 8, !tbaa !41
  %38 = getelementptr inbounds %struct.t_nblist* %nl, i64 0, i32 6
  %39 = load i32* %38, align 4, !tbaa !40
  %40 = icmp eq i32 %39, 1
  br i1 %40, label %41, label %49

; <label>:41                                      ; preds = %9
  %42 = getelementptr inbounds %struct.t_nblist* %nl, i64 0, i32 12
  %43 = bitcast i32** %42 to i8**
  %44 = load i8** %43, align 8, !tbaa !39
  %45 = load i32* %.pre-phi, align 4, !tbaa !35
  %46 = mul i32 %45, 12
  %47 = add i32 %46, 12
  %48 = tail call i8* @save_realloc(i8* getelementptr inbounds ([12 x i8]* @.str27, i64 0, i64 0), i8* getelementptr inbounds ([62 x i8]* @.str2, i64 0, i64 0), i32 102, i8* %44, i32 %47) #8
  store i8* %48, i8** %43, align 8, !tbaa !39
  br label %49

; <label>:49                                      ; preds = %41, %9
  ret void
}

; Function Attrs: optsize
declare i8* @save_realloc(i8*, i8*, i32, i8*, i32) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #7

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #7

; Function Attrs: optsize
declare void @qsort(i8*, i64, i64, i32 (i8*, i8*)* nocapture) #1

; Function Attrs: nounwind optsize readonly ssp uwtable
define internal i32 @rv_comp(i8* nocapture readonly %a, i8* nocapture readonly %b) #4 {
  %1 = bitcast i8* %a to i32*
  %2 = load i32* %1, align 4, !tbaa !17
  %3 = bitcast i8* %b to i32*
  %4 = load i32* %3, align 4, !tbaa !17
  %5 = load i32* @sdim, align 4, !tbaa !17
  %6 = sext i32 %5 to i64
  %7 = sext i32 %2 to i64
  %8 = load [3 x float]** @sptr, align 8, !tbaa !23
  %9 = getelementptr inbounds [3 x float]* %8, i64 %7, i64 %6
  %10 = load float* %9, align 4, !tbaa !21
  %11 = sext i32 %4 to i64
  %12 = getelementptr inbounds [3 x float]* %8, i64 %11, i64 %6
  %13 = load float* %12, align 4, !tbaa !21
  %14 = fsub float %10, %13
  %15 = fcmp olt float %14, 0.000000e+00
  br i1 %15, label %18, label %16

; <label>:16                                      ; preds = %0
  %fabsf = tail call float @fabsf(float %14) #10
  %17 = fpext float %fabsf to double
  %not. = fcmp uge double %17, 1.200000e-38
  %. = zext i1 %not. to i32
  br label %18

; <label>:18                                      ; preds = %16, %0
  %.0 = phi i32 [ -1, %0 ], [ %., %16 ]
  ret i32 %.0
}

; Function Attrs: nounwind optsize ssp uwtable
define internal fastcc void @setexcl(i32 %start, i32 %end, %struct.t_block* nocapture readonly %excl, i32 %b, i64* nocapture %bexcl) #3 {
  %1 = icmp eq i32 %b, 0
  %2 = icmp slt i32 %start, %end
  br i1 %1, label %.preheader, label %.preheader3

.preheader3:                                      ; preds = %0
  br i1 %2, label %.lr.ph13, label %.loopexit1

.lr.ph13:                                         ; preds = %.preheader3
  %3 = getelementptr inbounds %struct.t_block* %excl, i64 0, i32 2
  %4 = load i32** %3, align 8, !tbaa !50
  %5 = getelementptr inbounds %struct.t_block* %excl, i64 0, i32 4
  %6 = sext i32 %start to i64
  %7 = add i32 %end, -1
  %.phi.trans.insert = getelementptr inbounds i32* %4, i64 %6
  %.pre = load i32* %.phi.trans.insert, align 4, !tbaa !17
  br label %13

.preheader:                                       ; preds = %0
  br i1 %2, label %.lr.ph8, label %.loopexit1

.lr.ph8:                                          ; preds = %.preheader
  %8 = getelementptr inbounds %struct.t_block* %excl, i64 0, i32 2
  %9 = load i32** %8, align 8, !tbaa !50
  %10 = getelementptr inbounds %struct.t_block* %excl, i64 0, i32 4
  %11 = sext i32 %start to i64
  %12 = add i32 %end, -1
  %.phi.trans.insert22 = getelementptr inbounds i32* %9, i64 %11
  %.pre23 = load i32* %.phi.trans.insert22, align 4, !tbaa !17
  br label %33

.loopexit2:                                       ; preds = %25, %13
  %lftr.wideiv20 = trunc i64 %indvars.iv18 to i32
  %exitcond21 = icmp eq i32 %lftr.wideiv20, %7
  br i1 %exitcond21, label %.loopexit1, label %13

; <label>:13                                      ; preds = %.loopexit2, %.lr.ph13
  %14 = phi i32 [ %.pre, %.lr.ph13 ], [ %16, %.loopexit2 ]
  %indvars.iv18 = phi i64 [ %6, %.lr.ph13 ], [ %indvars.iv.next19, %.loopexit2 ]
  %indvars.iv.next19 = add nsw i64 %indvars.iv18, 1
  %15 = getelementptr inbounds i32* %4, i64 %indvars.iv.next19
  %16 = load i32* %15, align 4, !tbaa !17
  %17 = icmp slt i32 %14, %16
  br i1 %17, label %.lr.ph10, label %.loopexit2

.lr.ph10:                                         ; preds = %13
  %18 = sub nsw i64 %indvars.iv18, %6
  %19 = trunc i64 %18 to i32
  %20 = shl i32 1, %19
  %21 = sext i32 %20 to i64
  %22 = load i32** %5, align 8, !tbaa !84
  %23 = sext i32 %14 to i64
  %24 = sext i32 %16 to i64
  br label %25

; <label>:25                                      ; preds = %.lr.ph10, %25
  %indvars.iv16 = phi i64 [ %23, %.lr.ph10 ], [ %indvars.iv.next17, %25 ]
  %26 = getelementptr inbounds i32* %22, i64 %indvars.iv16
  %27 = load i32* %26, align 4, !tbaa !17
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i64* %bexcl, i64 %28
  %30 = load i64* %29, align 8, !tbaa !85
  %31 = or i64 %30, %21
  store i64 %31, i64* %29, align 8, !tbaa !85
  %indvars.iv.next17 = add nsw i64 %indvars.iv16, 1
  %32 = icmp slt i64 %indvars.iv.next17, %24
  br i1 %32, label %25, label %.loopexit2

.loopexit:                                        ; preds = %46, %33
  %lftr.wideiv = trunc i64 %indvars.iv14 to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %12
  br i1 %exitcond, label %.loopexit1, label %33

; <label>:33                                      ; preds = %.loopexit, %.lr.ph8
  %34 = phi i32 [ %.pre23, %.lr.ph8 ], [ %36, %.loopexit ]
  %indvars.iv14 = phi i64 [ %11, %.lr.ph8 ], [ %indvars.iv.next15, %.loopexit ]
  %indvars.iv.next15 = add nsw i64 %indvars.iv14, 1
  %35 = getelementptr inbounds i32* %9, i64 %indvars.iv.next15
  %36 = load i32* %35, align 4, !tbaa !17
  %37 = icmp slt i32 %34, %36
  br i1 %37, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %33
  %38 = sub nsw i64 %indvars.iv14, %11
  %39 = trunc i64 %38 to i32
  %40 = shl i32 1, %39
  %41 = xor i32 %40, -1
  %42 = sext i32 %41 to i64
  %43 = load i32** %10, align 8, !tbaa !84
  %44 = sext i32 %34 to i64
  %45 = sext i32 %36 to i64
  br label %46

; <label>:46                                      ; preds = %.lr.ph, %46
  %indvars.iv = phi i64 [ %44, %.lr.ph ], [ %indvars.iv.next, %46 ]
  %47 = getelementptr inbounds i32* %43, i64 %indvars.iv
  %48 = load i32* %47, align 4, !tbaa !17
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i64* %bexcl, i64 %49
  %51 = load i64* %50, align 8, !tbaa !85
  %52 = and i64 %51, %42
  store i64 %52, i64* %50, align 8, !tbaa !85
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %53 = icmp slt i64 %indvars.iv.next, %45
  br i1 %53, label %46, label %.loopexit

.loopexit1:                                       ; preds = %.loopexit2, %.loopexit, %.preheader3, %.preheader
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define internal fastcc void @get_dx(i32 %Nx, float %gridx, float %grid_x, float %rc2, float %x, i32* nocapture %dx0, i32* nocapture %dx1, float* nocapture %dcx2) #3 {
  %1 = sitofp i32 %Nx to float
  %2 = fmul float %grid_x, %x
  %3 = fadd float %1, %2
  %4 = fptosi float %3 to i32
  %5 = sub nsw i32 %4, %Nx
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %.thread, label %7

.thread:                                          ; preds = %0
  store i32 0, i32* %dx0, align 4, !tbaa !17
  store i32 -1, i32* %dx1, align 4, !tbaa !17
  br label %.preheader

; <label>:7                                       ; preds = %0
  %8 = icmp slt i32 %5, %Nx
  br i1 %8, label %11, label %9

; <label>:9                                       ; preds = %7
  store i32 %Nx, i32* %dx0, align 4, !tbaa !17
  %10 = add nsw i32 %Nx, -1
  store i32 %10, i32* %dx1, align 4, !tbaa !17
  br label %16

; <label>:11                                      ; preds = %7
  %12 = sext i32 %5 to i64
  %13 = getelementptr inbounds float* %dcx2, i64 %12
  store float 0.000000e+00, float* %13, align 4, !tbaa !21
  store i32 %5, i32* %dx0, align 4, !tbaa !17
  %14 = add nsw i32 %5, -1
  store i32 %5, i32* %dx1, align 4, !tbaa !17
  %15 = add nsw i32 %5, 1
  br label %16

; <label>:16                                      ; preds = %9, %11
  %xgi0.0 = phi i32 [ %10, %9 ], [ %14, %11 ]
  %xgi1.0 = phi i32 [ %Nx, %9 ], [ %15, %11 ]
  %17 = icmp sgt i32 %xgi0.0, -1
  br i1 %17, label %.lr.ph5, label %.preheader

.lr.ph5:                                          ; preds = %16
  %18 = sext i32 %xgi0.0 to i64
  br label %22

.preheader:                                       ; preds = %30, %22, %.thread, %16
  %xgi1.09 = phi i32 [ 0, %.thread ], [ %xgi1.0, %16 ], [ %xgi1.0, %22 ], [ %xgi1.0, %30 ]
  %19 = icmp slt i32 %xgi1.09, %Nx
  br i1 %19, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %20 = sext i32 %xgi1.09 to i64
  %21 = sext i32 %Nx to i64
  br label %34

; <label>:22                                      ; preds = %.lr.ph5, %30
  %indvars.iv7 = phi i64 [ %18, %.lr.ph5 ], [ %indvars.iv.next8, %30 ]
  %23 = add nsw i64 %indvars.iv7, 1
  %24 = trunc i64 %23 to i32
  %25 = sitofp i32 %24 to float
  %26 = fmul float %25, %gridx
  %27 = fsub float %26, %x
  %28 = fmul float %27, %27
  %29 = fcmp ult float %28, %rc2
  br i1 %29, label %30, label %.preheader

; <label>:30                                      ; preds = %22
  %31 = trunc i64 %indvars.iv7 to i32
  store i32 %31, i32* %dx0, align 4, !tbaa !17
  %32 = getelementptr inbounds float* %dcx2, i64 %indvars.iv7
  store float %28, float* %32, align 4, !tbaa !21
  %indvars.iv.next8 = add nsw i64 %indvars.iv7, -1
  %33 = icmp sgt i64 %indvars.iv7, 0
  br i1 %33, label %22, label %.preheader

; <label>:34                                      ; preds = %.lr.ph, %41
  %indvars.iv = phi i64 [ %20, %.lr.ph ], [ %indvars.iv.next, %41 ]
  %35 = trunc i64 %indvars.iv to i32
  %36 = sitofp i32 %35 to float
  %37 = fmul float %36, %gridx
  %38 = fsub float %37, %x
  %39 = fmul float %38, %38
  %40 = fcmp ult float %39, %rc2
  br i1 %40, label %41, label %._crit_edge

; <label>:41                                      ; preds = %34
  store i32 %35, i32* %dx1, align 4, !tbaa !17
  %42 = getelementptr inbounds float* %dcx2, i64 %indvars.iv
  store float %39, float* %42, align 4, !tbaa !21
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %43 = icmp slt i64 %indvars.iv.next, %21
  br i1 %43, label %34, label %._crit_edge

._crit_edge:                                      ; preds = %41, %34, %.preheader
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define internal fastcc void @put_in_list(i32* nocapture readonly %bHaveLJ, i32 %ngid, %struct.t_mdatoms* nocapture readonly %md, i32 %icg, i32 %jgid, i32 %nj, i32* nocapture readonly %jjcg, i32* nocapture readonly %index, i64* nocapture readonly %bExcl, i32 %shift, %struct.t_forcerec* %fr, i32 %bLR, i32 %bVDWOnly, i32 %bCoulOnly) #3 {
  %1 = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 6
  %2 = load float** %1, align 8, !tbaa !87
  %3 = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 7
  %4 = load float** %3, align 8, !tbaa !88
  %5 = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 11
  %6 = load i32** %5, align 8, !tbaa !89
  %7 = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 12
  %8 = load i32** %7, align 8, !tbaa !90
  %9 = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 15
  %10 = load i16** %9, align 8, !tbaa !53
  %11 = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 9
  %12 = load i32** %11, align 8, !tbaa !91
  %13 = sext i32 %icg to i64
  %14 = getelementptr inbounds i32* %index, i64 %13
  %15 = load i32* %14, align 4, !tbaa !17
  %16 = add nsw i32 %icg, 1
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32* %index, i64 %17
  %19 = load i32* %18, align 4, !tbaa !17
  %20 = sub nsw i32 %19, %15
  %21 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 45
  %22 = load i32** %21, align 8, !tbaa !92
  %23 = getelementptr inbounds i32* %22, i64 %13
  %24 = load i32* %23, align 4, !tbaa !17
  %25 = icmp eq i32 %24, 2
  %26 = icmp eq i32 %24, 1
  %27 = icmp ne i32 %bLR, 0
  br i1 %27, label %28, label %52

; <label>:28                                      ; preds = %0
  br i1 %25, label %29, label %35

; <label>:29                                      ; preds = %28
  %30 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 50, i64 9
  %31 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 50, i64 1
  %32 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 50, i64 10
  %33 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 50, i64 11
  %34 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 50, i64 12
  br label %44

; <label>:35                                      ; preds = %28
  br i1 %26, label %36, label %40

; <label>:36                                      ; preds = %35
  %37 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 50, i64 6
  %38 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 50, i64 7
  %39 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 50, i64 8
  br label %44

; <label>:40                                      ; preds = %35
  %41 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 50, i64 0
  %42 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 50, i64 1
  %43 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 50, i64 2
  br label %44

; <label>:44                                      ; preds = %36, %40, %29
  %coul_ww.0 = phi %struct.t_nblist* [ %34, %29 ], [ null, %36 ], [ null, %40 ]
  %vdwc_ww.0 = phi %struct.t_nblist* [ %33, %29 ], [ null, %36 ], [ null, %40 ]
  %coul.0 = phi %struct.t_nblist* [ %32, %29 ], [ %39, %36 ], [ %43, %40 ]
  %vdw.0 = phi %struct.t_nblist* [ %31, %29 ], [ %38, %36 ], [ %42, %40 ]
  %vdwc.0 = phi %struct.t_nblist* [ %30, %29 ], [ %37, %36 ], [ %41, %40 ]
  %45 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 29
  %46 = load i32* %45, align 4, !tbaa !32
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %104, label %48

; <label>:48                                      ; preds = %44
  %49 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 50, i64 3
  %50 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 50, i64 4
  %51 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 50, i64 5
  br label %.preheader48

; <label>:52                                      ; preds = %0
  br i1 %25, label %53, label %59

; <label>:53                                      ; preds = %52
  %54 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 49, i64 9
  %55 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 49, i64 1
  %56 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 49, i64 10
  %57 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 49, i64 11
  %58 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 49, i64 12
  br label %68

; <label>:59                                      ; preds = %52
  br i1 %26, label %60, label %64

; <label>:60                                      ; preds = %59
  %61 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 49, i64 6
  %62 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 49, i64 7
  %63 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 49, i64 8
  br label %68

; <label>:64                                      ; preds = %59
  %65 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 49, i64 0
  %66 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 49, i64 1
  %67 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 49, i64 2
  br label %68

; <label>:68                                      ; preds = %60, %64, %53
  %coul_ww.1 = phi %struct.t_nblist* [ %58, %53 ], [ null, %60 ], [ null, %64 ]
  %vdwc_ww.1 = phi %struct.t_nblist* [ %57, %53 ], [ null, %60 ], [ null, %64 ]
  %coul.1 = phi %struct.t_nblist* [ %56, %53 ], [ %63, %60 ], [ %67, %64 ]
  %vdw.1 = phi %struct.t_nblist* [ %55, %53 ], [ %62, %60 ], [ %66, %64 ]
  %vdwc.1 = phi %struct.t_nblist* [ %54, %53 ], [ %61, %60 ], [ %65, %64 ]
  %69 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 29
  %70 = load i32* %69, align 4, !tbaa !32
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %104, label %72

; <label>:72                                      ; preds = %68
  %73 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 49, i64 3
  %74 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 49, i64 4
  %75 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 49, i64 5
  br label %.preheader48

.preheader48:                                     ; preds = %48, %72
  %coul_free.0.ph = phi %struct.t_nblist* [ %75, %72 ], [ %51, %48 ]
  %vdw_free.0.ph = phi %struct.t_nblist* [ %74, %72 ], [ %50, %48 ]
  %vdwc_free.0.ph = phi %struct.t_nblist* [ %73, %72 ], [ %49, %48 ]
  %coul_ww.2.ph140 = phi %struct.t_nblist* [ %coul_ww.1, %72 ], [ %coul_ww.0, %48 ]
  %vdwc_ww.2.ph141 = phi %struct.t_nblist* [ %vdwc_ww.1, %72 ], [ %vdwc_ww.0, %48 ]
  %coul.2.ph142 = phi %struct.t_nblist* [ %coul.1, %72 ], [ %coul.0, %48 ]
  %vdw.2.ph143 = phi %struct.t_nblist* [ %vdw.1, %72 ], [ %vdw.0, %48 ]
  %vdwc.2.ph144 = phi %struct.t_nblist* [ %vdwc.1, %72 ], [ %vdwc.0, %48 ]
  %76 = icmp sgt i32 %20, 0
  br i1 %76, label %.lr.ph82, label %.loopexit41

.lr.ph82:                                         ; preds = %.preheader48
  %77 = icmp ne i32 %bCoulOnly, 0
  %78 = icmp ne i32 %bVDWOnly, 0
  %79 = or i32 %bCoulOnly, %bVDWOnly
  %80 = icmp eq i32 %79, 0
  %81 = select i1 %27, i32 15, i32 13
  %82 = mul nsw i32 %icg, 3
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 46
  %85 = select i1 %27, i32 18, i32 17
  %86 = icmp sgt i32 %nj, 0
  %.off = add i32 %24, -1
  %or.cond9.not = icmp ugt i32 %.off, 1
  %87 = getelementptr inbounds %struct.t_nblist* %coul_free.0.ph, i64 0, i32 3
  %88 = getelementptr inbounds %struct.t_nblist* %coul_free.0.ph, i64 0, i32 11
  %89 = getelementptr inbounds %struct.t_nblist* %vdw_free.0.ph, i64 0, i32 3
  %90 = getelementptr inbounds %struct.t_nblist* %vdw_free.0.ph, i64 0, i32 11
  %91 = getelementptr inbounds %struct.t_nblist* %vdwc_free.0.ph, i64 0, i32 3
  %92 = getelementptr inbounds %struct.t_nblist* %vdwc_free.0.ph, i64 0, i32 11
  %93 = getelementptr inbounds %struct.t_nblist* %coul.2.ph142, i64 0, i32 3
  %94 = getelementptr inbounds %struct.t_nblist* %coul.2.ph142, i64 0, i32 11
  %95 = getelementptr inbounds %struct.t_nblist* %vdw.2.ph143, i64 0, i32 3
  %96 = getelementptr inbounds %struct.t_nblist* %vdw.2.ph143, i64 0, i32 11
  %97 = getelementptr inbounds %struct.t_nblist* %vdwc.2.ph144, i64 0, i32 3
  %98 = getelementptr inbounds %struct.t_nblist* %vdwc.2.ph144, i64 0, i32 11
  %99 = mul nsw i32 %jgid, %ngid
  %100 = add i32 %nj, -1
  %101 = sext i32 %15 to i64
  %102 = add i32 %19, -1
  %103 = sub i32 %102, %15
  br label %535

; <label>:104                                     ; preds = %44, %68
  %coul_ww.2.ph = phi %struct.t_nblist* [ %coul_ww.1, %68 ], [ %coul_ww.0, %44 ]
  %vdwc_ww.2.ph = phi %struct.t_nblist* [ %vdwc_ww.1, %68 ], [ %vdwc_ww.0, %44 ]
  %coul.2.ph = phi %struct.t_nblist* [ %coul.1, %68 ], [ %coul.0, %44 ]
  %vdw.2.ph = phi %struct.t_nblist* [ %vdw.1, %68 ], [ %vdw.0, %44 ]
  %vdwc.2.ph = phi %struct.t_nblist* [ %vdwc.1, %68 ], [ %vdwc.0, %44 ]
  br i1 %25, label %105, label %259

; <label>:105                                     ; preds = %104
  %106 = sext i32 %15 to i64
  %107 = getelementptr inbounds i16* %10, i64 %106
  %108 = load i16* %107, align 2, !tbaa !55
  %109 = zext i16 %108 to i32
  %110 = icmp slt i32 %109, %jgid
  br i1 %110, label %111, label %114

; <label>:111                                     ; preds = %105
  %112 = mul nsw i32 %109, %ngid
  %113 = add nsw i32 %112, %jgid
  br label %117

; <label>:114                                     ; preds = %105
  %115 = mul nsw i32 %jgid, %ngid
  %116 = add nsw i32 %109, %115
  br label %117

; <label>:117                                     ; preds = %114, %111
  %118 = phi i32 [ %113, %111 ], [ %116, %114 ]
  %119 = icmp ne i32 %bCoulOnly, 0
  %120 = icmp ne i32 %bVDWOnly, 0
  %121 = or i32 %bCoulOnly, %bVDWOnly
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %123, label %125

; <label>:123                                     ; preds = %117
  %124 = select i1 %27, i32 15, i32 13
  tail call fastcc void @new_i_nblist(%struct.t_nblist* %vdwc.2.ph, i32 %124, i32 %15, i32 %shift, i32 %118, i32* null) #9
  tail call fastcc void @new_i_nblist(%struct.t_nblist* %vdwc_ww.2.ph, i32 %124, i32 %15, i32 %shift, i32 %118, i32* null) #9
  br label %125

; <label>:125                                     ; preds = %117, %123
  br i1 %119, label %128, label %126

; <label>:126                                     ; preds = %125
  %127 = select i1 %27, i32 15, i32 13
  tail call fastcc void @new_i_nblist(%struct.t_nblist* %vdw.2.ph, i32 %127, i32 %15, i32 %shift, i32 %118, i32* null) #9
  br label %128

; <label>:128                                     ; preds = %126, %125
  br i1 %120, label %.preheader39, label %129

; <label>:129                                     ; preds = %128
  %130 = select i1 %27, i32 18, i32 17
  tail call fastcc void @new_i_nblist(%struct.t_nblist* %coul.2.ph, i32 %130, i32 %15, i32 %shift, i32 %118, i32* null) #9
  tail call fastcc void @new_i_nblist(%struct.t_nblist* %coul_ww.2.ph, i32 %130, i32 %15, i32 %shift, i32 %118, i32* null) #9
  br label %.preheader39

.preheader39:                                     ; preds = %129, %128
  %131 = icmp sgt i32 %nj, 0
  br i1 %131, label %.lr.ph56, label %._crit_edge

.lr.ph56:                                         ; preds = %.preheader39
  %132 = getelementptr inbounds %struct.t_nblist* %vdw.2.ph, i64 0, i32 3
  %133 = getelementptr inbounds %struct.t_nblist* %vdw.2.ph, i64 0, i32 11
  %134 = getelementptr inbounds %struct.t_nblist* %coul_ww.2.ph, i64 0, i32 3
  %135 = getelementptr inbounds %struct.t_nblist* %coul_ww.2.ph, i64 0, i32 11
  %136 = getelementptr inbounds %struct.t_nblist* %vdwc_ww.2.ph, i64 0, i32 3
  %137 = getelementptr inbounds %struct.t_nblist* %vdwc_ww.2.ph, i64 0, i32 11
  %138 = getelementptr inbounds %struct.t_nblist* %coul.2.ph, i64 0, i32 3
  %139 = getelementptr inbounds %struct.t_nblist* %coul.2.ph, i64 0, i32 11
  %140 = getelementptr inbounds %struct.t_nblist* %vdwc.2.ph, i64 0, i32 3
  %141 = getelementptr inbounds %struct.t_nblist* %vdwc.2.ph, i64 0, i32 11
  %142 = add i32 %nj, -1
  br label %143

; <label>:143                                     ; preds = %.loopexit, %.lr.ph56
  %indvars.iv91 = phi i64 [ 0, %.lr.ph56 ], [ %indvars.iv.next92, %.loopexit ]
  %144 = getelementptr inbounds i32* %jjcg, i64 %indvars.iv91
  %145 = load i32* %144, align 4, !tbaa !17
  %146 = icmp eq i32 %145, %icg
  br i1 %146, label %.loopexit, label %147

; <label>:147                                     ; preds = %143
  %148 = sext i32 %145 to i64
  %149 = getelementptr inbounds i32* %index, i64 %148
  %150 = load i32* %149, align 4, !tbaa !17
  %151 = load i32** %21, align 8, !tbaa !92
  %152 = getelementptr inbounds i32* %151, i64 %148
  %153 = load i32* %152, align 4, !tbaa !17
  %154 = icmp eq i32 %153, 2
  br i1 %154, label %155, label %178

; <label>:155                                     ; preds = %147
  br i1 %120, label %156, label %163

; <label>:156                                     ; preds = %155
  %157 = load i32* %132, align 4, !tbaa !38
  %158 = sext i32 %157 to i64
  %159 = load i32** %133, align 8, !tbaa !93
  %160 = getelementptr inbounds i32* %159, i64 %158
  store i32 %150, i32* %160, align 4, !tbaa !17
  %161 = load i32* %132, align 4, !tbaa !38
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %132, align 4, !tbaa !38
  br label %.loopexit

; <label>:163                                     ; preds = %155
  br i1 %119, label %164, label %171

; <label>:164                                     ; preds = %163
  %165 = load i32* %134, align 4, !tbaa !38
  %166 = sext i32 %165 to i64
  %167 = load i32** %135, align 8, !tbaa !93
  %168 = getelementptr inbounds i32* %167, i64 %166
  store i32 %150, i32* %168, align 4, !tbaa !17
  %169 = load i32* %134, align 4, !tbaa !38
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %134, align 4, !tbaa !38
  br label %.loopexit

; <label>:171                                     ; preds = %163
  %172 = load i32* %136, align 4, !tbaa !38
  %173 = sext i32 %172 to i64
  %174 = load i32** %137, align 8, !tbaa !93
  %175 = getelementptr inbounds i32* %174, i64 %173
  store i32 %150, i32* %175, align 4, !tbaa !17
  %176 = load i32* %136, align 4, !tbaa !38
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %136, align 4, !tbaa !38
  br label %.loopexit

; <label>:178                                     ; preds = %147
  %179 = add nsw i32 %145, 1
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds i32* %index, i64 %180
  %182 = load i32* %181, align 4, !tbaa !17
  %183 = icmp slt i32 %150, %182
  br i1 %119, label %.preheader, label %200

.preheader:                                       ; preds = %178
  br i1 %183, label %.lr.ph54, label %.loopexit

.lr.ph54:                                         ; preds = %.preheader
  %184 = sext i32 %150 to i64
  %185 = add i32 %182, -1
  br label %186

; <label>:186                                     ; preds = %199, %.lr.ph54
  %indvars.iv87 = phi i64 [ %184, %.lr.ph54 ], [ %indvars.iv.next88, %199 ]
  %187 = getelementptr inbounds float* %2, i64 %indvars.iv87
  %188 = load float* %187, align 4, !tbaa !21
  %fabsf29 = tail call float @fabsf(float %188) #10
  %189 = fpext float %fabsf29 to double
  %190 = fcmp ogt double %189, 1.200000e-38
  br i1 %190, label %191, label %._crit_edge130

._crit_edge130:                                   ; preds = %186
  %.pre = trunc i64 %indvars.iv87 to i32
  br label %199

; <label>:191                                     ; preds = %186
  %192 = load i32* %138, align 4, !tbaa !38
  %193 = sext i32 %192 to i64
  %194 = load i32** %139, align 8, !tbaa !93
  %195 = getelementptr inbounds i32* %194, i64 %193
  %196 = trunc i64 %indvars.iv87 to i32
  store i32 %196, i32* %195, align 4, !tbaa !17
  %197 = load i32* %138, align 4, !tbaa !38
  %198 = add nsw i32 %197, 1
  store i32 %198, i32* %138, align 4, !tbaa !38
  br label %199

; <label>:199                                     ; preds = %._crit_edge130, %191
  %lftr.wideiv89.pre-phi = phi i32 [ %.pre, %._crit_edge130 ], [ %196, %191 ]
  %indvars.iv.next88 = add nsw i64 %indvars.iv87, 1
  %exitcond90 = icmp eq i32 %lftr.wideiv89.pre-phi, %185
  br i1 %exitcond90, label %.loopexit, label %186

; <label>:200                                     ; preds = %178
  br i1 %120, label %.preheader35, label %.preheader37

.preheader37:                                     ; preds = %200
  br i1 %183, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader37
  %201 = sext i32 %150 to i64
  %202 = add i32 %182, -1
  br label %221

.preheader35:                                     ; preds = %200
  br i1 %183, label %.lr.ph52, label %.loopexit

.lr.ph52:                                         ; preds = %.preheader35
  %203 = sext i32 %150 to i64
  %204 = add i32 %182, -1
  br label %205

; <label>:205                                     ; preds = %220, %.lr.ph52
  %indvars.iv83 = phi i64 [ %203, %.lr.ph52 ], [ %indvars.iv.next84, %220 ]
  %206 = getelementptr inbounds i32* %6, i64 %indvars.iv83
  %207 = load i32* %206, align 4, !tbaa !17
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds i32* %bHaveLJ, i64 %208
  %210 = load i32* %209, align 4, !tbaa !17
  %211 = icmp eq i32 %210, 0
  br i1 %211, label %._crit_edge129, label %212

._crit_edge129:                                   ; preds = %205
  %.pre131 = trunc i64 %indvars.iv83 to i32
  br label %220

; <label>:212                                     ; preds = %205
  %213 = load i32* %132, align 4, !tbaa !38
  %214 = sext i32 %213 to i64
  %215 = load i32** %133, align 8, !tbaa !93
  %216 = getelementptr inbounds i32* %215, i64 %214
  %217 = trunc i64 %indvars.iv83 to i32
  store i32 %217, i32* %216, align 4, !tbaa !17
  %218 = load i32* %132, align 4, !tbaa !38
  %219 = add nsw i32 %218, 1
  store i32 %219, i32* %132, align 4, !tbaa !38
  br label %220

; <label>:220                                     ; preds = %._crit_edge129, %212
  %lftr.wideiv85.pre-phi = phi i32 [ %.pre131, %._crit_edge129 ], [ %217, %212 ]
  %indvars.iv.next84 = add nsw i64 %indvars.iv83, 1
  %exitcond86 = icmp eq i32 %lftr.wideiv85.pre-phi, %204
  br i1 %exitcond86, label %.loopexit, label %205

; <label>:221                                     ; preds = %258, %.lr.ph
  %indvars.iv = phi i64 [ %201, %.lr.ph ], [ %indvars.iv.next, %258 ]
  %222 = getelementptr inbounds i32* %6, i64 %indvars.iv
  %223 = load i32* %222, align 4, !tbaa !17
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds i32* %bHaveLJ, i64 %224
  %226 = load i32* %225, align 4, !tbaa !17
  %227 = icmp eq i32 %226, 0
  %228 = getelementptr inbounds float* %2, i64 %indvars.iv
  %229 = load float* %228, align 4, !tbaa !21
  %fabsf28 = tail call float @fabsf(float %229) #10
  %230 = fpext float %fabsf28 to double
  %231 = fcmp ogt double %230, 1.200000e-38
  br i1 %227, label %249, label %232

; <label>:232                                     ; preds = %221
  br i1 %231, label %233, label %241

; <label>:233                                     ; preds = %232
  %234 = load i32* %140, align 4, !tbaa !38
  %235 = sext i32 %234 to i64
  %236 = load i32** %141, align 8, !tbaa !93
  %237 = getelementptr inbounds i32* %236, i64 %235
  %238 = trunc i64 %indvars.iv to i32
  store i32 %238, i32* %237, align 4, !tbaa !17
  %239 = load i32* %140, align 4, !tbaa !38
  %240 = add nsw i32 %239, 1
  store i32 %240, i32* %140, align 4, !tbaa !38
  br label %258

; <label>:241                                     ; preds = %232
  %242 = load i32* %132, align 4, !tbaa !38
  %243 = sext i32 %242 to i64
  %244 = load i32** %133, align 8, !tbaa !93
  %245 = getelementptr inbounds i32* %244, i64 %243
  %246 = trunc i64 %indvars.iv to i32
  store i32 %246, i32* %245, align 4, !tbaa !17
  %247 = load i32* %132, align 4, !tbaa !38
  %248 = add nsw i32 %247, 1
  store i32 %248, i32* %132, align 4, !tbaa !38
  br label %258

; <label>:249                                     ; preds = %221
  br i1 %231, label %250, label %._crit_edge128

._crit_edge128:                                   ; preds = %249
  %.pre132 = trunc i64 %indvars.iv to i32
  br label %258

; <label>:250                                     ; preds = %249
  %251 = load i32* %138, align 4, !tbaa !38
  %252 = sext i32 %251 to i64
  %253 = load i32** %139, align 8, !tbaa !93
  %254 = getelementptr inbounds i32* %253, i64 %252
  %255 = trunc i64 %indvars.iv to i32
  store i32 %255, i32* %254, align 4, !tbaa !17
  %256 = load i32* %138, align 4, !tbaa !38
  %257 = add nsw i32 %256, 1
  store i32 %257, i32* %138, align 4, !tbaa !38
  br label %258

; <label>:258                                     ; preds = %._crit_edge128, %241, %233, %250
  %lftr.wideiv.pre-phi = phi i32 [ %.pre132, %._crit_edge128 ], [ %246, %241 ], [ %238, %233 ], [ %255, %250 ]
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i32 %lftr.wideiv.pre-phi, %202
  br i1 %exitcond, label %.loopexit, label %221

.loopexit:                                        ; preds = %258, %220, %199, %.preheader37, %.preheader35, %.preheader, %164, %171, %156, %143
  %indvars.iv.next92 = add nuw nsw i64 %indvars.iv91, 1
  %lftr.wideiv93 = trunc i64 %indvars.iv91 to i32
  %exitcond94 = icmp eq i32 %lftr.wideiv93, %142
  br i1 %exitcond94, label %._crit_edge, label %143

._crit_edge:                                      ; preds = %.loopexit, %.preheader39
  tail call fastcc void @close_i_nblist(%struct.t_nblist* %vdw.2.ph) #9
  tail call fastcc void @close_i_nblist(%struct.t_nblist* %coul.2.ph) #9
  tail call fastcc void @close_i_nblist(%struct.t_nblist* %vdwc.2.ph) #9
  tail call fastcc void @close_i_nblist(%struct.t_nblist* %coul_ww.2.ph) #9
  tail call fastcc void @close_i_nblist(%struct.t_nblist* %vdwc_ww.2.ph) #9
  br label %.loopexit41

; <label>:259                                     ; preds = %104
  br i1 %26, label %279, label %.preheader44

.preheader44:                                     ; preds = %259
  %260 = icmp sgt i32 %20, 0
  br i1 %260, label %.lr.ph72, label %.loopexit41

.lr.ph72:                                         ; preds = %.preheader44
  %261 = icmp ne i32 %bCoulOnly, 0
  %262 = icmp ne i32 %bVDWOnly, 0
  %263 = or i32 %bCoulOnly, %bVDWOnly
  %264 = icmp eq i32 %263, 0
  %265 = select i1 %27, i32 15, i32 13
  %266 = select i1 %27, i32 18, i32 17
  %267 = icmp sgt i32 %nj, 0
  %268 = getelementptr inbounds %struct.t_nblist* %coul.2.ph, i64 0, i32 3
  %269 = getelementptr inbounds %struct.t_nblist* %coul.2.ph, i64 0, i32 11
  %270 = getelementptr inbounds %struct.t_nblist* %vdw.2.ph, i64 0, i32 3
  %271 = getelementptr inbounds %struct.t_nblist* %vdw.2.ph, i64 0, i32 11
  %272 = getelementptr inbounds %struct.t_nblist* %vdwc.2.ph, i64 0, i32 3
  %273 = getelementptr inbounds %struct.t_nblist* %vdwc.2.ph, i64 0, i32 11
  %274 = mul nsw i32 %jgid, %ngid
  %275 = add i32 %nj, -1
  %276 = sext i32 %15 to i64
  %277 = add i32 %19, -1
  %278 = sub i32 %277, %15
  br label %406

; <label>:279                                     ; preds = %259
  %280 = sext i32 %15 to i64
  %281 = getelementptr inbounds i16* %10, i64 %280
  %282 = load i16* %281, align 2, !tbaa !55
  %283 = zext i16 %282 to i32
  %284 = icmp slt i32 %283, %jgid
  br i1 %284, label %285, label %288

; <label>:285                                     ; preds = %279
  %286 = mul nsw i32 %283, %ngid
  %287 = add nsw i32 %286, %jgid
  br label %291

; <label>:288                                     ; preds = %279
  %289 = mul nsw i32 %jgid, %ngid
  %290 = add nsw i32 %283, %289
  br label %291

; <label>:291                                     ; preds = %288, %285
  %292 = phi i32 [ %287, %285 ], [ %290, %288 ]
  %293 = icmp ne i32 %bCoulOnly, 0
  %294 = icmp ne i32 %bVDWOnly, 0
  %295 = or i32 %bCoulOnly, %bVDWOnly
  %296 = icmp eq i32 %295, 0
  br i1 %296, label %297, label %304

; <label>:297                                     ; preds = %291
  %298 = select i1 %27, i32 15, i32 13
  %299 = mul nsw i32 %icg, 3
  %300 = sext i32 %299 to i64
  %301 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 46
  %302 = load i32** %301, align 8, !tbaa !94
  %303 = getelementptr inbounds i32* %302, i64 %300
  tail call fastcc void @new_i_nblist(%struct.t_nblist* %vdwc.2.ph, i32 %298, i32 %15, i32 %shift, i32 %292, i32* %303) #9
  br label %304

; <label>:304                                     ; preds = %291, %297
  br i1 %293, label %312, label %305

; <label>:305                                     ; preds = %304
  %306 = select i1 %27, i32 18, i32 17
  %307 = mul nsw i32 %icg, 3
  %308 = sext i32 %307 to i64
  %309 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 46
  %310 = load i32** %309, align 8, !tbaa !94
  %311 = getelementptr inbounds i32* %310, i64 %308
  tail call fastcc void @new_i_nblist(%struct.t_nblist* %vdw.2.ph, i32 %306, i32 %15, i32 %shift, i32 %292, i32* %311) #9
  br label %312

; <label>:312                                     ; preds = %305, %304
  br i1 %294, label %.preheader40, label %313

; <label>:313                                     ; preds = %312
  %314 = select i1 %27, i32 18, i32 17
  %315 = mul nsw i32 %icg, 3
  %316 = sext i32 %315 to i64
  %317 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 46
  %318 = load i32** %317, align 8, !tbaa !94
  %319 = getelementptr inbounds i32* %318, i64 %316
  tail call fastcc void @new_i_nblist(%struct.t_nblist* %coul.2.ph, i32 %314, i32 %15, i32 %shift, i32 %292, i32* %319) #9
  br label %.preheader40

.preheader40:                                     ; preds = %313, %312
  %320 = icmp sgt i32 %nj, 0
  br i1 %320, label %.lr.ph62, label %.loopexit41

.lr.ph62:                                         ; preds = %.preheader40
  %321 = getelementptr inbounds %struct.t_nblist* %coul.2.ph, i64 0, i32 3
  %322 = getelementptr inbounds %struct.t_nblist* %coul.2.ph, i64 0, i32 11
  %323 = getelementptr inbounds %struct.t_nblist* %vdw.2.ph, i64 0, i32 3
  %324 = getelementptr inbounds %struct.t_nblist* %vdw.2.ph, i64 0, i32 11
  %325 = getelementptr inbounds %struct.t_nblist* %vdwc.2.ph, i64 0, i32 3
  %326 = getelementptr inbounds %struct.t_nblist* %vdwc.2.ph, i64 0, i32 11
  %327 = add i32 %nj, -1
  br label %328

; <label>:328                                     ; preds = %405, %.lr.ph62
  %indvars.iv99 = phi i64 [ 0, %.lr.ph62 ], [ %indvars.iv.next100, %405 ]
  %329 = getelementptr inbounds i32* %jjcg, i64 %indvars.iv99
  %330 = load i32* %329, align 4, !tbaa !17
  %331 = icmp eq i32 %330, %icg
  br i1 %331, label %405, label %332

; <label>:332                                     ; preds = %328
  %333 = sext i32 %330 to i64
  %334 = getelementptr inbounds i32* %index, i64 %333
  %335 = load i32* %334, align 4, !tbaa !17
  %336 = add nsw i32 %330, 1
  %337 = sext i32 %336 to i64
  %338 = getelementptr inbounds i32* %index, i64 %337
  %339 = load i32* %338, align 4, !tbaa !17
  %340 = icmp slt i32 %335, %339
  br i1 %340, label %.lr.ph59, label %._crit_edge60

.lr.ph59:                                         ; preds = %332
  %341 = sext i32 %335 to i64
  %342 = add i32 %339, -1
  br label %343

; <label>:343                                     ; preds = %404, %.lr.ph59
  %indvars.iv95 = phi i64 [ %341, %.lr.ph59 ], [ %indvars.iv.next96, %404 ]
  br i1 %293, label %344, label %357

; <label>:344                                     ; preds = %343
  %345 = getelementptr inbounds float* %2, i64 %indvars.iv95
  %346 = load float* %345, align 4, !tbaa !21
  %fabsf27 = tail call float @fabsf(float %346) #10
  %347 = fpext float %fabsf27 to double
  %348 = fcmp ogt double %347, 1.200000e-38
  br i1 %348, label %349, label %404

; <label>:349                                     ; preds = %344
  %350 = load i32* %321, align 4, !tbaa !38
  %351 = sext i32 %350 to i64
  %352 = load i32** %322, align 8, !tbaa !93
  %353 = getelementptr inbounds i32* %352, i64 %351
  %354 = trunc i64 %indvars.iv95 to i32
  store i32 %354, i32* %353, align 4, !tbaa !17
  %355 = load i32* %321, align 4, !tbaa !38
  %356 = add nsw i32 %355, 1
  store i32 %356, i32* %321, align 4, !tbaa !38
  br label %404

; <label>:357                                     ; preds = %343
  %358 = getelementptr inbounds i32* %6, i64 %indvars.iv95
  %359 = load i32* %358, align 4, !tbaa !17
  %360 = sext i32 %359 to i64
  %361 = getelementptr inbounds i32* %bHaveLJ, i64 %360
  %362 = load i32* %361, align 4, !tbaa !17
  %363 = icmp ne i32 %362, 0
  br i1 %294, label %364, label %373

; <label>:364                                     ; preds = %357
  br i1 %363, label %365, label %404

; <label>:365                                     ; preds = %364
  %366 = load i32* %323, align 4, !tbaa !38
  %367 = sext i32 %366 to i64
  %368 = load i32** %324, align 8, !tbaa !93
  %369 = getelementptr inbounds i32* %368, i64 %367
  %370 = trunc i64 %indvars.iv95 to i32
  store i32 %370, i32* %369, align 4, !tbaa !17
  %371 = load i32* %323, align 4, !tbaa !38
  %372 = add nsw i32 %371, 1
  store i32 %372, i32* %323, align 4, !tbaa !38
  br label %404

; <label>:373                                     ; preds = %357
  %374 = getelementptr inbounds float* %2, i64 %indvars.iv95
  %375 = load float* %374, align 4, !tbaa !21
  %fabsf26 = tail call float @fabsf(float %375) #10
  %376 = fpext float %fabsf26 to double
  %377 = fcmp ogt double %376, 1.200000e-38
  br i1 %363, label %378, label %395

; <label>:378                                     ; preds = %373
  br i1 %377, label %379, label %387

; <label>:379                                     ; preds = %378
  %380 = load i32* %325, align 4, !tbaa !38
  %381 = sext i32 %380 to i64
  %382 = load i32** %326, align 8, !tbaa !93
  %383 = getelementptr inbounds i32* %382, i64 %381
  %384 = trunc i64 %indvars.iv95 to i32
  store i32 %384, i32* %383, align 4, !tbaa !17
  %385 = load i32* %325, align 4, !tbaa !38
  %386 = add nsw i32 %385, 1
  store i32 %386, i32* %325, align 4, !tbaa !38
  br label %404

; <label>:387                                     ; preds = %378
  %388 = load i32* %323, align 4, !tbaa !38
  %389 = sext i32 %388 to i64
  %390 = load i32** %324, align 8, !tbaa !93
  %391 = getelementptr inbounds i32* %390, i64 %389
  %392 = trunc i64 %indvars.iv95 to i32
  store i32 %392, i32* %391, align 4, !tbaa !17
  %393 = load i32* %323, align 4, !tbaa !38
  %394 = add nsw i32 %393, 1
  store i32 %394, i32* %323, align 4, !tbaa !38
  br label %404

; <label>:395                                     ; preds = %373
  br i1 %377, label %396, label %404

; <label>:396                                     ; preds = %395
  %397 = load i32* %321, align 4, !tbaa !38
  %398 = sext i32 %397 to i64
  %399 = load i32** %322, align 8, !tbaa !93
  %400 = getelementptr inbounds i32* %399, i64 %398
  %401 = trunc i64 %indvars.iv95 to i32
  store i32 %401, i32* %400, align 4, !tbaa !17
  %402 = load i32* %321, align 4, !tbaa !38
  %403 = add nsw i32 %402, 1
  store i32 %403, i32* %321, align 4, !tbaa !38
  br label %404

; <label>:404                                     ; preds = %349, %344, %387, %379, %396, %395, %364, %365
  %indvars.iv.next96 = add nsw i64 %indvars.iv95, 1
  %lftr.wideiv97 = trunc i64 %indvars.iv95 to i32
  %exitcond98 = icmp eq i32 %lftr.wideiv97, %342
  br i1 %exitcond98, label %._crit_edge60, label %343

._crit_edge60:                                    ; preds = %404, %332
  tail call fastcc void @close_i_nblist(%struct.t_nblist* %vdw.2.ph) #9
  tail call fastcc void @close_i_nblist(%struct.t_nblist* %coul.2.ph) #9
  tail call fastcc void @close_i_nblist(%struct.t_nblist* %vdwc.2.ph) #9
  br label %405

; <label>:405                                     ; preds = %328, %._crit_edge60
  %indvars.iv.next100 = add nuw nsw i64 %indvars.iv99, 1
  %lftr.wideiv101 = trunc i64 %indvars.iv99 to i32
  %exitcond102 = icmp eq i32 %lftr.wideiv101, %327
  br i1 %exitcond102, label %.loopexit41, label %328

; <label>:406                                     ; preds = %.loopexit43, %.lr.ph72
  %indvars.iv111 = phi i64 [ 0, %.lr.ph72 ], [ %indvars.iv.next112, %.loopexit43 ]
  %407 = add nsw i64 %indvars.iv111, %276
  %408 = getelementptr inbounds i16* %10, i64 %407
  %409 = load i16* %408, align 2, !tbaa !55
  %410 = zext i16 %409 to i32
  %411 = icmp slt i32 %410, %jgid
  br i1 %411, label %412, label %415

; <label>:412                                     ; preds = %406
  %413 = mul nsw i32 %410, %ngid
  %414 = add nsw i32 %413, %jgid
  br label %417

; <label>:415                                     ; preds = %406
  %416 = add nsw i32 %410, %274
  br label %417

; <label>:417                                     ; preds = %415, %412
  %418 = phi i32 [ %414, %412 ], [ %416, %415 ]
  %419 = getelementptr inbounds float* %2, i64 %407
  %420 = load float* %419, align 4, !tbaa !21
  br i1 %264, label %421, label %423

; <label>:421                                     ; preds = %417
  %422 = trunc i64 %407 to i32
  tail call fastcc void @new_i_nblist(%struct.t_nblist* %vdwc.2.ph, i32 %265, i32 %422, i32 %shift, i32 %418, i32* null) #9
  br label %423

; <label>:423                                     ; preds = %417, %421
  br i1 %261, label %426, label %424

; <label>:424                                     ; preds = %423
  %425 = trunc i64 %407 to i32
  tail call fastcc void @new_i_nblist(%struct.t_nblist* %vdw.2.ph, i32 %266, i32 %425, i32 %shift, i32 %418, i32* null) #9
  br label %426

; <label>:426                                     ; preds = %424, %423
  br i1 %262, label %.critedge, label %427

; <label>:427                                     ; preds = %426
  %428 = trunc i64 %407 to i32
  tail call fastcc void @new_i_nblist(%struct.t_nblist* %coul.2.ph, i32 %266, i32 %428, i32 %shift, i32 %418, i32* null) #9
  %fabsf21 = tail call float @fabsf(float %420) #10
  %429 = fpext float %fabsf21 to double
  %430 = fcmp olt double %429, 1.200000e-38
  br i1 %430, label %.critedge, label %.preheader42

.critedge:                                        ; preds = %426, %427
  br i1 %261, label %.loopexit43, label %431

; <label>:431                                     ; preds = %.critedge
  %432 = getelementptr inbounds i32* %6, i64 %407
  %433 = load i32* %432, align 4, !tbaa !17
  %434 = sext i32 %433 to i64
  %435 = getelementptr inbounds i32* %bHaveLJ, i64 %434
  %436 = load i32* %435, align 4, !tbaa !17
  %437 = icmp eq i32 %436, 0
  %.not = xor i1 %267, true
  %brmerge = or i1 %437, %.not
  br i1 %brmerge, label %.loopexit43, label %.lr.ph69

.preheader42:                                     ; preds = %427
  br i1 %267, label %.lr.ph69, label %.loopexit43

.lr.ph69:                                         ; preds = %431, %.preheader42
  %438 = add nsw i64 %407, 1
  %439 = trunc i64 %indvars.iv111 to i32
  %440 = shl i32 1, %439
  %441 = zext i32 %440 to i64
  br label %442

; <label>:442                                     ; preds = %._crit_edge67, %.lr.ph69
  %indvars.iv107 = phi i64 [ 0, %.lr.ph69 ], [ %indvars.iv.next108, %._crit_edge67 ]
  %443 = getelementptr inbounds i32* %jjcg, i64 %indvars.iv107
  %444 = load i32* %443, align 4, !tbaa !17
  %445 = icmp eq i32 %444, %icg
  br i1 %445, label %446, label %448

; <label>:446                                     ; preds = %442
  %447 = trunc i64 %438 to i32
  br label %452

; <label>:448                                     ; preds = %442
  %449 = sext i32 %444 to i64
  %450 = getelementptr inbounds i32* %index, i64 %449
  %451 = load i32* %450, align 4, !tbaa !17
  br label %452

; <label>:452                                     ; preds = %448, %446
  %jj0.0 = phi i32 [ %447, %446 ], [ %451, %448 ]
  %453 = add nsw i32 %444, 1
  %454 = sext i32 %453 to i64
  %455 = getelementptr inbounds i32* %index, i64 %454
  %456 = load i32* %455, align 4, !tbaa !17
  %457 = icmp slt i32 %jj0.0, %456
  br i1 %457, label %.lr.ph66, label %._crit_edge67

.lr.ph66:                                         ; preds = %452
  %458 = sext i32 %jj0.0 to i64
  %459 = add i32 %456, -1
  br label %460

; <label>:460                                     ; preds = %534, %.lr.ph66
  %indvars.iv103 = phi i64 [ %458, %.lr.ph66 ], [ %indvars.iv.next104, %534 ]
  %461 = getelementptr inbounds i64* %bExcl, i64 %indvars.iv103
  %462 = load i64* %461, align 8, !tbaa !85
  %463 = and i64 %462, %441
  %464 = icmp eq i64 %463, 0
  br i1 %464, label %465, label %534

; <label>:465                                     ; preds = %460
  br i1 %261, label %466, label %479

; <label>:466                                     ; preds = %465
  %467 = getelementptr inbounds float* %2, i64 %indvars.iv103
  %468 = load float* %467, align 4, !tbaa !21
  %fabsf25 = tail call float @fabsf(float %468) #10
  %469 = fpext float %fabsf25 to double
  %470 = fcmp ogt double %469, 1.200000e-38
  br i1 %470, label %471, label %534

; <label>:471                                     ; preds = %466
  %472 = load i32* %268, align 4, !tbaa !38
  %473 = sext i32 %472 to i64
  %474 = load i32** %269, align 8, !tbaa !93
  %475 = getelementptr inbounds i32* %474, i64 %473
  %476 = trunc i64 %indvars.iv103 to i32
  store i32 %476, i32* %475, align 4, !tbaa !17
  %477 = load i32* %268, align 4, !tbaa !38
  %478 = add nsw i32 %477, 1
  store i32 %478, i32* %268, align 4, !tbaa !38
  br label %534

; <label>:479                                     ; preds = %465
  %480 = getelementptr inbounds i32* %6, i64 %indvars.iv103
  %481 = load i32* %480, align 4, !tbaa !17
  %482 = sext i32 %481 to i64
  %483 = getelementptr inbounds i32* %bHaveLJ, i64 %482
  %484 = load i32* %483, align 4, !tbaa !17
  %485 = icmp ne i32 %484, 0
  br i1 %262, label %486, label %495

; <label>:486                                     ; preds = %479
  br i1 %485, label %487, label %534

; <label>:487                                     ; preds = %486
  %488 = load i32* %270, align 4, !tbaa !38
  %489 = sext i32 %488 to i64
  %490 = load i32** %271, align 8, !tbaa !93
  %491 = getelementptr inbounds i32* %490, i64 %489
  %492 = trunc i64 %indvars.iv103 to i32
  store i32 %492, i32* %491, align 4, !tbaa !17
  %493 = load i32* %270, align 4, !tbaa !38
  %494 = add nsw i32 %493, 1
  store i32 %494, i32* %270, align 4, !tbaa !38
  br label %534

; <label>:495                                     ; preds = %479
  %fabsf22 = tail call float @fabsf(float %420) #10
  %496 = fpext float %fabsf22 to double
  %497 = fcmp ogt double %496, 1.200000e-38
  br i1 %485, label %498, label %520

; <label>:498                                     ; preds = %495
  br i1 %497, label %499, label %512

; <label>:499                                     ; preds = %498
  %500 = getelementptr inbounds float* %2, i64 %indvars.iv103
  %501 = load float* %500, align 4, !tbaa !21
  %fabsf24 = tail call float @fabsf(float %501) #10
  %502 = fpext float %fabsf24 to double
  %503 = fcmp ogt double %502, 1.200000e-38
  br i1 %503, label %504, label %512

; <label>:504                                     ; preds = %499
  %505 = load i32* %272, align 4, !tbaa !38
  %506 = sext i32 %505 to i64
  %507 = load i32** %273, align 8, !tbaa !93
  %508 = getelementptr inbounds i32* %507, i64 %506
  %509 = trunc i64 %indvars.iv103 to i32
  store i32 %509, i32* %508, align 4, !tbaa !17
  %510 = load i32* %272, align 4, !tbaa !38
  %511 = add nsw i32 %510, 1
  store i32 %511, i32* %272, align 4, !tbaa !38
  br label %534

; <label>:512                                     ; preds = %499, %498
  %513 = load i32* %270, align 4, !tbaa !38
  %514 = sext i32 %513 to i64
  %515 = load i32** %271, align 8, !tbaa !93
  %516 = getelementptr inbounds i32* %515, i64 %514
  %517 = trunc i64 %indvars.iv103 to i32
  store i32 %517, i32* %516, align 4, !tbaa !17
  %518 = load i32* %270, align 4, !tbaa !38
  %519 = add nsw i32 %518, 1
  store i32 %519, i32* %270, align 4, !tbaa !38
  br label %534

; <label>:520                                     ; preds = %495
  br i1 %497, label %521, label %534

; <label>:521                                     ; preds = %520
  %522 = getelementptr inbounds float* %2, i64 %indvars.iv103
  %523 = load float* %522, align 4, !tbaa !21
  %fabsf23 = tail call float @fabsf(float %523) #10
  %524 = fpext float %fabsf23 to double
  %525 = fcmp ogt double %524, 1.200000e-38
  br i1 %525, label %526, label %534

; <label>:526                                     ; preds = %521
  %527 = load i32* %268, align 4, !tbaa !38
  %528 = sext i32 %527 to i64
  %529 = load i32** %269, align 8, !tbaa !93
  %530 = getelementptr inbounds i32* %529, i64 %528
  %531 = trunc i64 %indvars.iv103 to i32
  store i32 %531, i32* %530, align 4, !tbaa !17
  %532 = load i32* %268, align 4, !tbaa !38
  %533 = add nsw i32 %532, 1
  store i32 %533, i32* %268, align 4, !tbaa !38
  br label %534

; <label>:534                                     ; preds = %460, %487, %486, %520, %521, %526, %504, %512, %466, %471
  %indvars.iv.next104 = add nsw i64 %indvars.iv103, 1
  %lftr.wideiv105 = trunc i64 %indvars.iv103 to i32
  %exitcond106 = icmp eq i32 %lftr.wideiv105, %459
  br i1 %exitcond106, label %._crit_edge67, label %460

._crit_edge67:                                    ; preds = %534, %452
  %indvars.iv.next108 = add nuw nsw i64 %indvars.iv107, 1
  %lftr.wideiv109 = trunc i64 %indvars.iv107 to i32
  %exitcond110 = icmp eq i32 %lftr.wideiv109, %275
  br i1 %exitcond110, label %.loopexit43, label %442

.loopexit43:                                      ; preds = %._crit_edge67, %431, %.preheader42, %.critedge
  tail call fastcc void @close_i_nblist(%struct.t_nblist* %vdw.2.ph) #9
  tail call fastcc void @close_i_nblist(%struct.t_nblist* %coul.2.ph) #9
  tail call fastcc void @close_i_nblist(%struct.t_nblist* %vdwc.2.ph) #9
  %indvars.iv.next112 = add nuw nsw i64 %indvars.iv111, 1
  %lftr.wideiv113 = trunc i64 %indvars.iv111 to i32
  %exitcond114 = icmp eq i32 %lftr.wideiv113, %278
  br i1 %exitcond114, label %.loopexit41, label %406

; <label>:535                                     ; preds = %732, %.lr.ph82
  %indvars.iv123 = phi i64 [ 0, %.lr.ph82 ], [ %indvars.iv.next124, %732 ]
  %536 = add nsw i64 %indvars.iv123, %101
  %537 = getelementptr inbounds i16* %10, i64 %536
  %538 = load i16* %537, align 2, !tbaa !55
  %539 = zext i16 %538 to i32
  %540 = icmp slt i32 %539, %jgid
  br i1 %540, label %541, label %544

; <label>:541                                     ; preds = %535
  %542 = mul nsw i32 %539, %ngid
  %543 = add nsw i32 %542, %jgid
  br label %546

; <label>:544                                     ; preds = %535
  %545 = add nsw i32 %539, %99
  br label %546

; <label>:546                                     ; preds = %544, %541
  %547 = phi i32 [ %543, %541 ], [ %545, %544 ]
  %548 = getelementptr inbounds float* %2, i64 %536
  %549 = load float* %548, align 4, !tbaa !21
  %550 = getelementptr inbounds float* %4, i64 %536
  %551 = load float* %550, align 4, !tbaa !21
  br i1 %80, label %552, label %559

; <label>:552                                     ; preds = %546
  br i1 %26, label %553, label %556

; <label>:553                                     ; preds = %552
  %554 = load i32** %84, align 8, !tbaa !94
  %555 = getelementptr inbounds i32* %554, i64 %83
  br label %556

; <label>:556                                     ; preds = %552, %553
  %557 = phi i32* [ %555, %553 ], [ null, %552 ]
  %558 = trunc i64 %536 to i32
  tail call fastcc void @new_i_nblist(%struct.t_nblist* %vdwc.2.ph144, i32 %81, i32 %558, i32 %shift, i32 %547, i32* %557) #9
  br label %559

; <label>:559                                     ; preds = %546, %556
  br i1 %77, label %567, label %560

; <label>:560                                     ; preds = %559
  br i1 %26, label %561, label %564

; <label>:561                                     ; preds = %560
  %562 = load i32** %84, align 8, !tbaa !94
  %563 = getelementptr inbounds i32* %562, i64 %83
  br label %564

; <label>:564                                     ; preds = %560, %561
  %565 = phi i32* [ %563, %561 ], [ null, %560 ]
  %566 = trunc i64 %536 to i32
  tail call fastcc void @new_i_nblist(%struct.t_nblist* %vdw.2.ph143, i32 %85, i32 %566, i32 %shift, i32 %547, i32* %565) #9
  br label %567

; <label>:567                                     ; preds = %564, %559
  br i1 %78, label %.critedge30, label %568

; <label>:568                                     ; preds = %567
  br i1 %26, label %569, label %572

; <label>:569                                     ; preds = %568
  %570 = load i32** %84, align 8, !tbaa !94
  %571 = getelementptr inbounds i32* %570, i64 %83
  br label %572

; <label>:572                                     ; preds = %569, %568
  %573 = phi i32* [ %571, %569 ], [ null, %568 ]
  %574 = trunc i64 %536 to i32
  tail call fastcc void @new_i_nblist(%struct.t_nblist* %coul.2.ph142, i32 %85, i32 %574, i32 %shift, i32 %547, i32* %573) #9
  tail call fastcc void @new_i_nblist(%struct.t_nblist* %vdw_free.0.ph, i32 42, i32 %574, i32 %shift, i32 %547, i32* null) #9
  tail call fastcc void @new_i_nblist(%struct.t_nblist* %coul_free.0.ph, i32 42, i32 %574, i32 %shift, i32 %547, i32* null) #9
  tail call fastcc void @new_i_nblist(%struct.t_nblist* %vdwc_free.0.ph, i32 42, i32 %574, i32 %shift, i32 %547, i32* null) #9
  %fabsf = tail call float @fabsf(float %549) #10
  %575 = fpext float %fabsf to double
  %576 = fcmp olt double %575, 1.200000e-38
  br i1 %576, label %577, label %.preheader46

; <label>:577                                     ; preds = %572
  %fabsf20 = tail call float @fabsf(float %551) #10
  %578 = fpext float %fabsf20 to double
  %579 = fcmp olt double %578, 1.200000e-38
  br i1 %579, label %581, label %.preheader46

.critedge30:                                      ; preds = %567
  %580 = trunc i64 %536 to i32
  tail call fastcc void @new_i_nblist(%struct.t_nblist* %vdw_free.0.ph, i32 42, i32 %580, i32 %shift, i32 %547, i32* null) #9
  tail call fastcc void @new_i_nblist(%struct.t_nblist* %coul_free.0.ph, i32 42, i32 %580, i32 %shift, i32 %547, i32* null) #9
  tail call fastcc void @new_i_nblist(%struct.t_nblist* %vdwc_free.0.ph, i32 42, i32 %580, i32 %shift, i32 %547, i32* null) #9
  br label %581

; <label>:581                                     ; preds = %.critedge30, %577
  br i1 %77, label %.loopexit47, label %582

; <label>:582                                     ; preds = %581
  %583 = getelementptr inbounds i32* %6, i64 %536
  %584 = load i32* %583, align 4, !tbaa !17
  %585 = sext i32 %584 to i64
  %586 = getelementptr inbounds i32* %bHaveLJ, i64 %585
  %587 = load i32* %586, align 4, !tbaa !17
  %588 = icmp eq i32 %587, 0
  br i1 %588, label %589, label %.preheader46

; <label>:589                                     ; preds = %582
  %590 = getelementptr inbounds i32* %8, i64 %536
  %591 = load i32* %590, align 4, !tbaa !17
  %592 = sext i32 %591 to i64
  %593 = getelementptr inbounds i32* %bHaveLJ, i64 %592
  %594 = load i32* %593, align 4, !tbaa !17
  %595 = icmp eq i32 %594, 0
  %.not154 = xor i1 %86, true
  %brmerge155 = or i1 %595, %.not154
  br i1 %brmerge155, label %.loopexit47, label %.lr.ph79

.preheader46:                                     ; preds = %582, %577, %572
  br i1 %86, label %.lr.ph79, label %.loopexit47

.lr.ph79:                                         ; preds = %589, %.preheader46
  %596 = add nsw i64 %536, 1
  %597 = getelementptr inbounds i32* %12, i64 %536
  %598 = trunc i64 %indvars.iv123 to i32
  %599 = icmp eq i32 %598, 0
  %or.cond11 = or i1 %or.cond9.not, %599
  %600 = shl i32 1, %598
  %601 = zext i32 %600 to i64
  br label %602

; <label>:602                                     ; preds = %._crit_edge77, %.lr.ph79
  %indvars.iv119 = phi i64 [ 0, %.lr.ph79 ], [ %indvars.iv.next120, %._crit_edge77 ]
  %603 = getelementptr inbounds i32* %jjcg, i64 %indvars.iv119
  %604 = load i32* %603, align 4, !tbaa !17
  %605 = icmp eq i32 %604, %icg
  br i1 %605, label %606, label %608

; <label>:606                                     ; preds = %602
  %607 = trunc i64 %596 to i32
  br label %612

; <label>:608                                     ; preds = %602
  %609 = sext i32 %604 to i64
  %610 = getelementptr inbounds i32* %index, i64 %609
  %611 = load i32* %610, align 4, !tbaa !17
  br label %612

; <label>:612                                     ; preds = %608, %606
  %jj0.1 = phi i32 [ %607, %606 ], [ %611, %608 ]
  %613 = add nsw i32 %604, 1
  %614 = sext i32 %613 to i64
  %615 = getelementptr inbounds i32* %index, i64 %614
  %616 = load i32* %615, align 4, !tbaa !17
  %617 = icmp slt i32 %jj0.1, %616
  br i1 %617, label %.lr.ph76, label %._crit_edge77

.lr.ph76:                                         ; preds = %612
  %618 = load i32* %597, align 4, !tbaa !17
  %619 = icmp eq i32 %618, 0
  %620 = sext i32 %jj0.1 to i64
  %621 = add i32 %616, -1
  br label %622

; <label>:622                                     ; preds = %728, %.lr.ph76
  %indvars.iv115 = phi i64 [ %620, %.lr.ph76 ], [ %indvars.iv.next116, %728 ]
  br i1 %619, label %623, label %.thread

; <label>:623                                     ; preds = %622
  %624 = getelementptr inbounds i32* %12, i64 %indvars.iv115
  %625 = load i32* %624, align 4, !tbaa !17
  %626 = icmp ne i32 %625, 0
  %or.cond13 = or i1 %or.cond11, %626
  br i1 %or.cond13, label %.thread, label %728

.thread:                                          ; preds = %622, %623
  %627 = phi i1 [ %626, %623 ], [ true, %622 ]
  %628 = getelementptr inbounds i64* %bExcl, i64 %indvars.iv115
  %629 = load i64* %628, align 8, !tbaa !85
  %630 = and i64 %629, %601
  %631 = icmp eq i64 %630, 0
  br i1 %631, label %632, label %728

; <label>:632                                     ; preds = %.thread
  br i1 %627, label %633, label %659

; <label>:633                                     ; preds = %632
  br i1 %77, label %634, label %642

; <label>:634                                     ; preds = %633
  %635 = load i32* %87, align 4, !tbaa !38
  %636 = sext i32 %635 to i64
  %637 = load i32** %88, align 8, !tbaa !93
  %638 = getelementptr inbounds i32* %637, i64 %636
  %639 = trunc i64 %indvars.iv115 to i32
  store i32 %639, i32* %638, align 4, !tbaa !17
  %640 = load i32* %87, align 4, !tbaa !38
  %641 = add nsw i32 %640, 1
  store i32 %641, i32* %87, align 4, !tbaa !38
  br label %728

; <label>:642                                     ; preds = %633
  br i1 %78, label %643, label %651

; <label>:643                                     ; preds = %642
  %644 = load i32* %89, align 4, !tbaa !38
  %645 = sext i32 %644 to i64
  %646 = load i32** %90, align 8, !tbaa !93
  %647 = getelementptr inbounds i32* %646, i64 %645
  %648 = trunc i64 %indvars.iv115 to i32
  store i32 %648, i32* %647, align 4, !tbaa !17
  %649 = load i32* %89, align 4, !tbaa !38
  %650 = add nsw i32 %649, 1
  store i32 %650, i32* %89, align 4, !tbaa !38
  br label %728

; <label>:651                                     ; preds = %642
  %652 = load i32* %91, align 4, !tbaa !38
  %653 = sext i32 %652 to i64
  %654 = load i32** %92, align 8, !tbaa !93
  %655 = getelementptr inbounds i32* %654, i64 %653
  %656 = trunc i64 %indvars.iv115 to i32
  store i32 %656, i32* %655, align 4, !tbaa !17
  %657 = load i32* %91, align 4, !tbaa !38
  %658 = add nsw i32 %657, 1
  store i32 %658, i32* %91, align 4, !tbaa !38
  br label %728

; <label>:659                                     ; preds = %632
  br i1 %77, label %660, label %673

; <label>:660                                     ; preds = %659
  %661 = getelementptr inbounds float* %2, i64 %indvars.iv115
  %662 = load float* %661, align 4, !tbaa !21
  %fabsf19 = tail call float @fabsf(float %662) #10
  %663 = fpext float %fabsf19 to double
  %664 = fcmp ogt double %663, 1.200000e-38
  br i1 %664, label %665, label %728

; <label>:665                                     ; preds = %660
  %666 = load i32* %93, align 4, !tbaa !38
  %667 = sext i32 %666 to i64
  %668 = load i32** %94, align 8, !tbaa !93
  %669 = getelementptr inbounds i32* %668, i64 %667
  %670 = trunc i64 %indvars.iv115 to i32
  store i32 %670, i32* %669, align 4, !tbaa !17
  %671 = load i32* %93, align 4, !tbaa !38
  %672 = add nsw i32 %671, 1
  store i32 %672, i32* %93, align 4, !tbaa !38
  br label %728

; <label>:673                                     ; preds = %659
  %674 = getelementptr inbounds i32* %6, i64 %indvars.iv115
  %675 = load i32* %674, align 4, !tbaa !17
  %676 = sext i32 %675 to i64
  %677 = getelementptr inbounds i32* %bHaveLJ, i64 %676
  %678 = load i32* %677, align 4, !tbaa !17
  %679 = icmp ne i32 %678, 0
  br i1 %78, label %680, label %689

; <label>:680                                     ; preds = %673
  br i1 %679, label %681, label %728

; <label>:681                                     ; preds = %680
  %682 = load i32* %95, align 4, !tbaa !38
  %683 = sext i32 %682 to i64
  %684 = load i32** %96, align 8, !tbaa !93
  %685 = getelementptr inbounds i32* %684, i64 %683
  %686 = trunc i64 %indvars.iv115 to i32
  store i32 %686, i32* %685, align 4, !tbaa !17
  %687 = load i32* %95, align 4, !tbaa !38
  %688 = add nsw i32 %687, 1
  store i32 %688, i32* %95, align 4, !tbaa !38
  br label %728

; <label>:689                                     ; preds = %673
  %fabsf16 = tail call float @fabsf(float %549) #10
  %690 = fpext float %fabsf16 to double
  %691 = fcmp ogt double %690, 1.200000e-38
  br i1 %679, label %692, label %714

; <label>:692                                     ; preds = %689
  br i1 %691, label %693, label %706

; <label>:693                                     ; preds = %692
  %694 = getelementptr inbounds float* %2, i64 %indvars.iv115
  %695 = load float* %694, align 4, !tbaa !21
  %fabsf18 = tail call float @fabsf(float %695) #10
  %696 = fpext float %fabsf18 to double
  %697 = fcmp ogt double %696, 1.200000e-38
  br i1 %697, label %698, label %706

; <label>:698                                     ; preds = %693
  %699 = load i32* %97, align 4, !tbaa !38
  %700 = sext i32 %699 to i64
  %701 = load i32** %98, align 8, !tbaa !93
  %702 = getelementptr inbounds i32* %701, i64 %700
  %703 = trunc i64 %indvars.iv115 to i32
  store i32 %703, i32* %702, align 4, !tbaa !17
  %704 = load i32* %97, align 4, !tbaa !38
  %705 = add nsw i32 %704, 1
  store i32 %705, i32* %97, align 4, !tbaa !38
  br label %728

; <label>:706                                     ; preds = %693, %692
  %707 = load i32* %95, align 4, !tbaa !38
  %708 = sext i32 %707 to i64
  %709 = load i32** %96, align 8, !tbaa !93
  %710 = getelementptr inbounds i32* %709, i64 %708
  %711 = trunc i64 %indvars.iv115 to i32
  store i32 %711, i32* %710, align 4, !tbaa !17
  %712 = load i32* %95, align 4, !tbaa !38
  %713 = add nsw i32 %712, 1
  store i32 %713, i32* %95, align 4, !tbaa !38
  br label %728

; <label>:714                                     ; preds = %689
  br i1 %691, label %715, label %728

; <label>:715                                     ; preds = %714
  %716 = getelementptr inbounds float* %2, i64 %indvars.iv115
  %717 = load float* %716, align 4, !tbaa !21
  %fabsf17 = tail call float @fabsf(float %717) #10
  %718 = fpext float %fabsf17 to double
  %719 = fcmp ogt double %718, 1.200000e-38
  br i1 %719, label %720, label %728

; <label>:720                                     ; preds = %715
  %721 = load i32* %93, align 4, !tbaa !38
  %722 = sext i32 %721 to i64
  %723 = load i32** %94, align 8, !tbaa !93
  %724 = getelementptr inbounds i32* %723, i64 %722
  %725 = trunc i64 %indvars.iv115 to i32
  store i32 %725, i32* %724, align 4, !tbaa !17
  %726 = load i32* %93, align 4, !tbaa !38
  %727 = add nsw i32 %726, 1
  store i32 %727, i32* %93, align 4, !tbaa !38
  br label %728

; <label>:728                                     ; preds = %623, %643, %651, %634, %681, %680, %714, %715, %720, %698, %706, %660, %665, %.thread
  %indvars.iv.next116 = add nsw i64 %indvars.iv115, 1
  %lftr.wideiv117 = trunc i64 %indvars.iv115 to i32
  %exitcond118 = icmp eq i32 %lftr.wideiv117, %621
  br i1 %exitcond118, label %._crit_edge77, label %622

._crit_edge77:                                    ; preds = %728, %612
  %indvars.iv.next120 = add nuw nsw i64 %indvars.iv119, 1
  %lftr.wideiv121 = trunc i64 %indvars.iv119 to i32
  %exitcond122 = icmp eq i32 %lftr.wideiv121, %100
  br i1 %exitcond122, label %.loopexit47, label %602

.loopexit47:                                      ; preds = %._crit_edge77, %589, %.preheader46, %581
  tail call fastcc void @close_i_nblist(%struct.t_nblist* %vdw.2.ph143) #9
  tail call fastcc void @close_i_nblist(%struct.t_nblist* %coul.2.ph142) #9
  tail call fastcc void @close_i_nblist(%struct.t_nblist* %vdwc.2.ph144) #9
  %729 = trunc i64 %indvars.iv123 to i32
  %730 = icmp eq i32 %729, 0
  %or.cond15 = and i1 %25, %730
  br i1 %or.cond15, label %731, label %732

; <label>:731                                     ; preds = %.loopexit47
  tail call fastcc void @close_i_nblist(%struct.t_nblist* %coul_ww.2.ph140) #9
  tail call fastcc void @close_i_nblist(%struct.t_nblist* %vdwc_ww.2.ph141) #9
  br label %732

; <label>:732                                     ; preds = %731, %.loopexit47
  tail call fastcc void @close_i_nblist(%struct.t_nblist* %vdw_free.0.ph) #9
  tail call fastcc void @close_i_nblist(%struct.t_nblist* %coul_free.0.ph) #9
  tail call fastcc void @close_i_nblist(%struct.t_nblist* %vdwc_free.0.ph) #9
  %indvars.iv.next124 = add nuw nsw i64 %indvars.iv123, 1
  %exitcond126 = icmp eq i32 %729, %103
  br i1 %exitcond126, label %.loopexit41, label %535

.loopexit41:                                      ; preds = %732, %.loopexit43, %405, %.preheader48, %.preheader44, %.preheader40, %._crit_edge
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define internal fastcc void @do_longrange(%struct.__sFILE* %log, %struct.t_commrec* %cr, %struct.t_topology* nocapture readonly %top, %struct.t_forcerec* %fr, i32 %ngid, %struct.t_mdatoms* %md, i32 %icg, i32 %jgid, i32 %nlr, i32* nocapture readonly %lr, i64* nocapture readonly %bexcl, i32 %shift, [3 x float]* %x, float* %box_size, %struct.t_nrnb* %nrnb, float %lambda, float* %dvdlambda, %struct.t_groups* nocapture readonly %grps, i32 %bVDWOnly, i32 %bCoulOnly, i32 %bDoForces, i32* nocapture readonly %bHaveLJ) #3 {
  %1 = icmp ne i32 %bDoForces, 0
  %2 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 53
  %3 = getelementptr inbounds %struct.t_groups* %grps, i64 0, i32 0, i32 1, i64 4
  %4 = getelementptr inbounds %struct.t_groups* %grps, i64 0, i32 0, i32 1, i64 3
  br label %5

; <label>:5                                       ; preds = %reset_nblist.exit, %0
  %indvars.iv = phi i64 [ 0, %0 ], [ %indvars.iv.next, %reset_nblist.exit ]
  %6 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 50, i64 %indvars.iv, i32 1
  %7 = load i32* %6, align 4, !tbaa !18
  %8 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 50, i64 %indvars.iv, i32 2
  %9 = load i32* %8, align 4, !tbaa !35
  %10 = add nsw i32 %9, -32
  %11 = icmp sgt i32 %7, %10
  %or.cond = or i1 %1, %11
  br i1 %or.cond, label %12, label %reset_nblist.exit

; <label>:12                                      ; preds = %5
  %13 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 50, i64 %indvars.iv
  tail call fastcc void @close_nblist(%struct.t_nblist* %13) #8
  %14 = load [3 x float]** %2, align 8, !tbaa !95
  %15 = load float** %3, align 8, !tbaa !23
  %16 = load float** %4, align 8, !tbaa !23
  %17 = trunc i64 %indvars.iv to i32
  tail call void @do_fnbf(%struct.__sFILE* %log, %struct.t_commrec* %cr, %struct.t_forcerec* %fr, [3 x float]* %x, [3 x float]* %14, %struct.t_mdatoms* %md, float* %15, float* %16, float* %box_size, %struct.t_nrnb* %nrnb, float %lambda, float* %dvdlambda, i32 1, i32 %17) #8
  store i32 0, i32* %6, align 4, !tbaa !18
  %18 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 50, i64 %indvars.iv, i32 3
  store i32 0, i32* %18, align 4, !tbaa !38
  %19 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 50, i64 %indvars.iv, i32 5
  store i32 0, i32* %19, align 4, !tbaa !37
  %20 = load i32* %8, align 4, !tbaa !35
  %21 = icmp sgt i32 %20, 0
  br i1 %21, label %22, label %reset_nblist.exit

; <label>:22                                      ; preds = %12
  %23 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 50, i64 %indvars.iv, i32 8
  %24 = load i32** %23, align 8, !tbaa !42
  store i32 -1, i32* %24, align 4, !tbaa !17
  %25 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 50, i64 %indvars.iv, i32 4
  %26 = load i32* %25, align 4, !tbaa !36
  %27 = icmp sgt i32 %26, 1
  br i1 %27, label %28, label %reset_nblist.exit

; <label>:28                                      ; preds = %22
  %29 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 50, i64 %indvars.iv, i32 10
  %30 = load i32** %29, align 8, !tbaa !41
  store i32 0, i32* %30, align 4, !tbaa !17
  %31 = getelementptr inbounds i32* %30, i64 1
  store i32 0, i32* %31, align 4, !tbaa !17
  br label %reset_nblist.exit

reset_nblist.exit:                                ; preds = %28, %22, %12, %5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 13
  br i1 %exitcond, label %32, label %5

; <label>:32                                      ; preds = %reset_nblist.exit
  %33 = icmp eq i32 %bDoForces, 0
  br i1 %33, label %34, label %37

; <label>:34                                      ; preds = %32
  %35 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 3, i64 0, i32 2
  %36 = load i32** %35, align 8, !tbaa !50
  tail call fastcc void @put_in_list(i32* %bHaveLJ, i32 %ngid, %struct.t_mdatoms* %md, i32 %icg, i32 %jgid, i32 %nlr, i32* %lr, i32* %36, i64* %bexcl, i32 %shift, %struct.t_forcerec* %fr, i32 1, i32 %bVDWOnly, i32 %bCoulOnly) #9
  br label %37

; <label>:37                                      ; preds = %32, %34
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define internal fastcc void @new_i_nblist(%struct.t_nblist* nocapture %nlist, i32 %ftype, i32 %i_atom, i32 %shift, i32 %gid, i32* readonly %mno) #3 {
  %1 = getelementptr inbounds %struct.t_nblist* %nlist, i64 0, i32 4
  %2 = load i32* %1, align 4, !tbaa !36
  %3 = getelementptr inbounds %struct.t_nblist* %nlist, i64 0, i32 3
  %4 = load i32* %3, align 4, !tbaa !38
  %5 = add nsw i32 %4, 16383
  %6 = icmp sgt i32 %2, %5
  br i1 %6, label %23, label %7

; <label>:7                                       ; preds = %0
  %8 = load %struct.__sFILE** @debug, align 8, !tbaa !23
  %9 = icmp eq %struct.__sFILE* %8, null
  br i1 %9, label %15, label %10

; <label>:10                                      ; preds = %7
  %11 = sext i32 %ftype to i64
  %12 = getelementptr inbounds [44 x %struct.t_interaction_function]* @interaction_function, i64 0, i64 %11, i32 1
  %13 = load i8** %12, align 8, !tbaa !96
  %14 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %8, i8* getelementptr inbounds ([38 x i8]* @.str45, i64 0, i64 0), i32 16384, i8* %13) #8
  %.pre = load i32* %1, align 4, !tbaa !36
  br label %15

; <label>:15                                      ; preds = %7, %10
  %16 = phi i32 [ %2, %7 ], [ %.pre, %10 ]
  %17 = add nsw i32 %16, 16384
  store i32 %17, i32* %1, align 4, !tbaa !36
  %18 = getelementptr inbounds %struct.t_nblist* %nlist, i64 0, i32 11
  %19 = bitcast i32** %18 to i8**
  %20 = load i8** %19, align 8, !tbaa !93
  %21 = shl i32 %17, 2
  %22 = tail call i8* @save_realloc(i8* getelementptr inbounds ([12 x i8]* @.str46, i64 0, i64 0), i8* getelementptr inbounds ([62 x i8]* @.str2, i64 0, i64 0), i32 366, i8* %20, i32 %21) #8
  store i8* %22, i8** %19, align 8, !tbaa !93
  br label %23

; <label>:23                                      ; preds = %0, %15
  %24 = getelementptr inbounds %struct.t_nblist* %nlist, i64 0, i32 1
  %25 = load i32* %24, align 4, !tbaa !18
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.t_nblist* %nlist, i64 0, i32 7
  %28 = load i32** %27, align 8, !tbaa !83
  %29 = getelementptr inbounds i32* %28, i64 %26
  %30 = load i32* %29, align 4, !tbaa !17
  %31 = icmp eq i32 %30, %i_atom
  br i1 %31, label %32, label %44

; <label>:32                                      ; preds = %23
  %33 = getelementptr inbounds %struct.t_nblist* %nlist, i64 0, i32 9
  %34 = load i32** %33, align 8, !tbaa !20
  %35 = getelementptr inbounds i32* %34, i64 %26
  %36 = load i32* %35, align 4, !tbaa !17
  %37 = icmp eq i32 %36, %shift
  br i1 %37, label %38, label %44

; <label>:38                                      ; preds = %32
  %39 = getelementptr inbounds %struct.t_nblist* %nlist, i64 0, i32 8
  %40 = load i32** %39, align 8, !tbaa !42
  %41 = getelementptr inbounds i32* %40, i64 %26
  %42 = load i32* %41, align 4, !tbaa !17
  %43 = icmp eq i32 %42, %gid
  br i1 %43, label %.loopexit, label %44

; <label>:44                                      ; preds = %38, %32, %23
  %45 = add nsw i32 %25, 1
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.t_nblist* %nlist, i64 0, i32 10
  %48 = load i32** %47, align 8, !tbaa !41
  %49 = getelementptr inbounds i32* %48, i64 %46
  %50 = load i32* %49, align 4, !tbaa !17
  %51 = getelementptr inbounds i32* %48, i64 %26
  %52 = load i32* %51, align 4, !tbaa !17
  %53 = icmp sgt i32 %50, %52
  %54 = getelementptr inbounds %struct.t_nblist* %nlist, i64 0, i32 8
  br i1 %53, label %55, label %._crit_edge

; <label>:55                                      ; preds = %44
  %56 = load i32** %54, align 8, !tbaa !42
  %57 = getelementptr inbounds i32* %56, i64 %26
  %58 = load i32* %57, align 4, !tbaa !17
  %59 = icmp eq i32 %58, -1
  br i1 %59, label %._crit_edge, label %60

; <label>:60                                      ; preds = %55
  store i32 %45, i32* %24, align 4, !tbaa !18
  %61 = getelementptr inbounds %struct.t_nblist* %nlist, i64 0, i32 2
  %62 = load i32* %61, align 4, !tbaa !35
  %63 = icmp slt i32 %45, %62
  br i1 %63, label %._crit_edge, label %64

; <label>:64                                      ; preds = %60
  %65 = add nsw i32 %62, 1000
  store i32 %65, i32* %61, align 4, !tbaa !35
  tail call fastcc void @reallocate_nblist(%struct.t_nblist* %nlist) #9
  %.pre3 = load i32** %47, align 8, !tbaa !41
  %.pre4 = load i32** %27, align 8, !tbaa !83
  br label %._crit_edge

._crit_edge:                                      ; preds = %44, %60, %55, %64
  %66 = phi i32* [ %28, %60 ], [ %28, %55 ], [ %.pre4, %64 ], [ %28, %44 ]
  %67 = phi i32* [ %48, %60 ], [ %48, %55 ], [ %.pre3, %64 ], [ %48, %44 ]
  %nri.0 = phi i32 [ %45, %60 ], [ %25, %55 ], [ %45, %64 ], [ %25, %44 ]
  %68 = sext i32 %nri.0 to i64
  %69 = getelementptr inbounds i32* %67, i64 %68
  %70 = load i32* %69, align 4, !tbaa !17
  %71 = add nsw i32 %nri.0, 1
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32* %67, i64 %72
  store i32 %70, i32* %73, align 4, !tbaa !17
  %74 = getelementptr inbounds i32* %66, i64 %68
  store i32 %i_atom, i32* %74, align 4, !tbaa !17
  %75 = load i32** %54, align 8, !tbaa !42
  %76 = getelementptr inbounds i32* %75, i64 %68
  store i32 %gid, i32* %76, align 4, !tbaa !17
  %77 = getelementptr inbounds %struct.t_nblist* %nlist, i64 0, i32 9
  %78 = load i32** %77, align 8, !tbaa !20
  %79 = getelementptr inbounds i32* %78, i64 %68
  store i32 %shift, i32* %79, align 4, !tbaa !17
  %80 = icmp eq i32* %mno, null
  br i1 %80, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %._crit_edge
  %81 = mul nsw i32 %nri.0, 3
  %82 = getelementptr inbounds %struct.t_nblist* %nlist, i64 0, i32 12
  %83 = load i32** %82, align 8, !tbaa !39
  %84 = sext i32 %81 to i64
  br label %85

; <label>:85                                      ; preds = %85, %.preheader
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %85 ]
  %86 = getelementptr inbounds i32* %mno, i64 %indvars.iv
  %87 = load i32* %86, align 4, !tbaa !17
  %88 = add nsw i64 %indvars.iv, %84
  %89 = getelementptr inbounds i32* %83, i64 %88
  store i32 %87, i32* %89, align 4, !tbaa !17
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 3
  br i1 %exitcond, label %.loopexit, label %85

.loopexit:                                        ; preds = %85, %._crit_edge, %38
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define internal fastcc void @close_i_nblist(%struct.t_nblist* nocapture %nlist) #3 {
  %1 = getelementptr inbounds %struct.t_nblist* %nlist, i64 0, i32 1
  %2 = load i32* %1, align 4, !tbaa !18
  %3 = getelementptr inbounds %struct.t_nblist* %nlist, i64 0, i32 3
  %4 = load i32* %3, align 4, !tbaa !38
  %5 = add nsw i32 %2, 1
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds %struct.t_nblist* %nlist, i64 0, i32 10
  %8 = load i32** %7, align 8, !tbaa !41
  %9 = getelementptr inbounds i32* %8, i64 %6
  store i32 %4, i32* %9, align 4, !tbaa !17
  %10 = load i32* %3, align 4, !tbaa !38
  %11 = sext i32 %2 to i64
  %12 = getelementptr inbounds i32* %8, i64 %11
  %13 = load i32* %12, align 4, !tbaa !17
  %14 = sub nsw i32 %10, %13
  %15 = getelementptr inbounds %struct.t_nblist* %nlist, i64 0, i32 6
  %16 = load i32* %15, align 4, !tbaa !40
  %17 = icmp eq i32 %16, 1
  br i1 %17, label %18, label %26

; <label>:18                                      ; preds = %0
  %19 = mul nsw i32 %2, 3
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.t_nblist* %nlist, i64 0, i32 12
  %22 = load i32** %21, align 8, !tbaa !39
  %23 = getelementptr inbounds i32* %22, i64 %20
  %24 = load i32* %23, align 4, !tbaa !17
  %25 = mul nsw i32 %24, %14
  br label %26

; <label>:26                                      ; preds = %18, %0
  %len.0 = phi i32 [ %25, %18 ], [ %14, %0 ]
  %27 = getelementptr inbounds %struct.t_nblist* %nlist, i64 0, i32 5
  %28 = load i32* %27, align 4, !tbaa !37
  %29 = icmp sgt i32 %len.0, %28
  br i1 %29, label %30, label %31

; <label>:30                                      ; preds = %26
  store i32 %len.0, i32* %27, align 4, !tbaa !37
  br label %31

; <label>:31                                      ; preds = %30, %26
  ret void
}

; Function Attrs: optsize
declare void @do_fnbf(%struct.__sFILE*, %struct.t_commrec*, %struct.t_forcerec*, [3 x float]*, [3 x float]*, %struct.t_mdatoms*, float*, float*, float*, %struct.t_nrnb*, float, float*, i32, i32) #1

; Function Attrs: nounwind optsize ssp uwtable
define internal fastcc void @close_nblist(%struct.t_nblist* nocapture %nlist) #3 {
  %1 = getelementptr inbounds %struct.t_nblist* %nlist, i64 0, i32 2
  %2 = load i32* %1, align 4, !tbaa !35
  %3 = icmp sgt i32 %2, 0
  br i1 %3, label %4, label %29

; <label>:4                                       ; preds = %0
  %5 = getelementptr inbounds %struct.t_nblist* %nlist, i64 0, i32 1
  %6 = load i32* %5, align 4, !tbaa !18
  %7 = add nsw i32 %6, 1
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds %struct.t_nblist* %nlist, i64 0, i32 10
  %10 = load i32** %9, align 8, !tbaa !41
  %11 = getelementptr inbounds i32* %10, i64 %8
  %12 = load i32* %11, align 4, !tbaa !17
  %13 = sext i32 %6 to i64
  %14 = getelementptr inbounds i32* %10, i64 %13
  %15 = load i32* %14, align 4, !tbaa !17
  %16 = icmp sgt i32 %12, %15
  br i1 %16, label %17, label %29

; <label>:17                                      ; preds = %4
  %18 = getelementptr inbounds %struct.t_nblist* %nlist, i64 0, i32 8
  %19 = load i32** %18, align 8, !tbaa !42
  %20 = getelementptr inbounds i32* %19, i64 %13
  %21 = load i32* %20, align 4, !tbaa !17
  %22 = icmp eq i32 %21, -1
  br i1 %22, label %29, label %23

; <label>:23                                      ; preds = %17
  store i32 %7, i32* %5, align 4, !tbaa !18
  %24 = getelementptr inbounds %struct.t_nblist* %nlist, i64 0, i32 3
  %25 = load i32* %24, align 4, !tbaa !38
  %26 = add nsw i32 %6, 2
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32* %10, i64 %27
  store i32 %25, i32* %28, align 4, !tbaa !17
  br label %29

; <label>:29                                      ; preds = %17, %4, %23, %0
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define internal fastcc void @add_simple(%struct.t_ns_buf* nocapture %nsbuf, i32 %nrj, i32 %cg_j, i32* nocapture readonly %bHaveLJ, i32 %ngid, %struct.t_mdatoms* nocapture readonly %md, i32 %icg, i32 %jgid, %struct.t_block* nocapture readonly %cgs, i64* nocapture readonly %bexcl, i32 %shift, %struct.t_forcerec* %fr) #3 {
  %1 = getelementptr inbounds %struct.t_ns_buf* %nsbuf, i64 0, i32 0
  %2 = load i32* %1, align 4, !tbaa !78
  %3 = icmp sgt i32 %2, 1023
  br i1 %3, label %4, label %._crit_edge

._crit_edge:                                      ; preds = %0
  %.pre = getelementptr inbounds %struct.t_ns_buf* %nsbuf, i64 0, i32 1
  br label %9

; <label>:4                                       ; preds = %0
  %5 = getelementptr inbounds %struct.t_ns_buf* %nsbuf, i64 0, i32 2, i64 0
  %6 = getelementptr inbounds %struct.t_block* %cgs, i64 0, i32 2
  %7 = load i32** %6, align 8, !tbaa !50
  tail call fastcc void @put_in_list(i32* %bHaveLJ, i32 %ngid, %struct.t_mdatoms* %md, i32 %icg, i32 %jgid, i32 %2, i32* %5, i32* %7, i64* %bexcl, i32 %shift, %struct.t_forcerec* %fr, i32 0, i32 0, i32 0) #9
  %8 = getelementptr inbounds %struct.t_ns_buf* %nsbuf, i64 0, i32 1
  store i32 0, i32* %8, align 4, !tbaa !80
  store i32 0, i32* %1, align 4, !tbaa !78
  br label %9

; <label>:9                                       ; preds = %._crit_edge, %4
  %.pre-phi = phi i32* [ %.pre, %._crit_edge ], [ %8, %4 ]
  %10 = phi i32 [ %2, %._crit_edge ], [ 0, %4 ]
  %11 = add nsw i32 %10, 1
  store i32 %11, i32* %1, align 4, !tbaa !78
  %12 = sext i32 %10 to i64
  %13 = getelementptr inbounds %struct.t_ns_buf* %nsbuf, i64 0, i32 2, i64 %12
  store i32 %cg_j, i32* %13, align 4, !tbaa !17
  %14 = load i32* %.pre-phi, align 4, !tbaa !80
  %15 = add nsw i32 %14, %nrj
  store i32 %15, i32* %.pre-phi, align 4, !tbaa !80
  ret void
}

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct.__sFILE* nocapture) #7

declare float @fabsf(float)

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #7

attributes #0 = { alwaysinline nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { alwaysinline nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize readonly ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind }
attributes #8 = { nounwind optsize }
attributes #9 = { optsize }
attributes #10 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!2 = !{!3, !7, i64 12}
!3 = !{!"__sFILE", !4, i64 0, !7, i64 8, !7, i64 12, !8, i64 16, !8, i64 18, !9, i64 24, !7, i64 40, !4, i64 48, !4, i64 56, !4, i64 64, !4, i64 72, !4, i64 80, !9, i64 88, !4, i64 104, !7, i64 112, !5, i64 116, !5, i64 119, !9, i64 120, !7, i64 136, !10, i64 144}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!"int", !5, i64 0}
!8 = !{!"short", !5, i64 0}
!9 = !{!"__sbuf", !4, i64 0, !7, i64 8}
!10 = !{!"long long", !5, i64 0}
!11 = !{!3, !7, i64 40}
!12 = !{!3, !4, i64 0}
!13 = !{!5, !5, i64 0}
!14 = !{!15, !7, i64 4}
!15 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !4, i64 24, !4, i64 32, !4, i64 40}
!16 = !{!15, !4, i64 40}
!17 = !{!7, !7, i64 0}
!18 = !{!19, !7, i64 4}
!19 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !7, i64 24, !4, i64 32, !4, i64 40, !4, i64 48, !4, i64 56, !4, i64 64, !4, i64 72, !7, i64 80, !4, i64 88}
!20 = !{!19, !4, i64 48}
!21 = !{!22, !22, i64 0}
!22 = !{!"float", !5, i64 0}
!23 = !{!4, !4, i64 0}
!24 = !{!25, !7, i64 192}
!25 = !{!"", !7, i64 0, !22, i64 4, !22, i64 8, !22, i64 12, !22, i64 16, !22, i64 20, !22, i64 24, !7, i64 28, !22, i64 32, !22, i64 36, !22, i64 40, !22, i64 44, !22, i64 48, !7, i64 52, !7, i64 56, !22, i64 60, !7, i64 64, !22, i64 68, !4, i64 72, !4, i64 80, !4, i64 88, !4, i64 96, !22, i64 104, !22, i64 108, !4, i64 112, !22, i64 120, !22, i64 124, !22, i64 128, !22, i64 132, !7, i64 136, !22, i64 140, !22, i64 144, !7, i64 148, !7, i64 152, !7, i64 156, !7, i64 160, !7, i64 164, !7, i64 168, !7, i64 172, !7, i64 176, !5, i64 180, !7, i64 192, !7, i64 196, !7, i64 200, !7, i64 204, !4, i64 208, !4, i64 216, !4, i64 224, !4, i64 232, !5, i64 240, !5, i64 1488, !7, i64 2736, !7, i64 2740, !4, i64 2744, !4, i64 2752, !4, i64 2760, !7, i64 2768, !22, i64 2772, !4, i64 2776, !7, i64 2784, !4, i64 2792, !4, i64 2800, !7, i64 2808, !7, i64 2812, !7, i64 2816, !4, i64 2824, !4, i64 2832, !22, i64 2840}
!26 = !{!25, !7, i64 176}
!27 = !{!25, !7, i64 2736}
!28 = !{!25, !7, i64 56}
!29 = !{!25, !7, i64 2816}
!30 = !{!25, !7, i64 52}
!31 = !{!25, !7, i64 28}
!32 = !{!25, !7, i64 136}
!33 = !{!25, !22, i64 140}
!34 = !{!19, !7, i64 0}
!35 = !{!19, !7, i64 8}
!36 = !{!19, !7, i64 16}
!37 = !{!19, !7, i64 20}
!38 = !{!19, !7, i64 12}
!39 = !{!19, !4, i64 72}
!40 = !{!19, !7, i64 24}
!41 = !{!19, !4, i64 56}
!42 = !{!19, !4, i64 40}
!43 = !{!25, !7, i64 200}
!44 = !{!45, !7, i64 0}
!45 = !{!"", !7, i64 0, !4, i64 8}
!46 = !{!25, !7, i64 0}
!47 = !{!25, !22, i64 8}
!48 = !{!49, !7, i64 1024}
!49 = !{!"", !5, i64 0, !7, i64 1024, !4, i64 1032, !7, i64 1040, !4, i64 1048}
!50 = !{!49, !4, i64 1032}
!51 = !{!49, !7, i64 1040}
!52 = !{!25, !4, i64 2832}
!53 = !{!54, !4, i64 112}
!54 = !{!"", !22, i64 0, !7, i64 4, !4, i64 8, !4, i64 16, !4, i64 24, !4, i64 32, !4, i64 40, !4, i64 48, !4, i64 56, !4, i64 64, !4, i64 72, !4, i64 80, !4, i64 88, !4, i64 96, !4, i64 104, !4, i64 112, !4, i64 120, !4, i64 128, !4, i64 136, !4, i64 144, !4, i64 152, !4, i64 160, !4, i64 168}
!55 = !{!8, !8, i64 0}
!56 = !{!25, !7, i64 204}
!57 = !{!58, !7, i64 4}
!58 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20}
!59 = !{!58, !7, i64 0}
!60 = !{!25, !7, i64 160}
!61 = !{!25, !7, i64 164}
!62 = !{!25, !7, i64 168}
!63 = !{!25, !7, i64 2812}
!64 = !{!25, !4, i64 2824}
!65 = !{!25, !4, i64 224}
!66 = !{!25, !7, i64 196}
!67 = !{!58, !7, i64 20}
!68 = !{!25, !22, i64 4}
!69 = !{!25, !22, i64 124}
!70 = !{!25, !22, i64 108}
!71 = !{!72, !7, i64 4}
!72 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !7, i64 24, !7, i64 28, !4, i64 32, !4, i64 40, !4, i64 48, !4, i64 56}
!73 = !{!72, !7, i64 8}
!74 = !{!72, !7, i64 12}
!75 = !{!72, !4, i64 56}
!76 = !{!72, !4, i64 40}
!77 = !{!72, !4, i64 48}
!78 = !{!79, !7, i64 0}
!79 = !{!"", !7, i64 0, !7, i64 4, !5, i64 8}
!80 = !{!79, !7, i64 4}
!81 = !{!82, !82, i64 0}
!82 = !{!"double", !5, i64 0}
!83 = !{!19, !4, i64 32}
!84 = !{!49, !4, i64 1048}
!85 = !{!86, !86, i64 0}
!86 = !{!"long", !5, i64 0}
!87 = !{!54, !4, i64 40}
!88 = !{!54, !4, i64 48}
!89 = !{!54, !4, i64 80}
!90 = !{!54, !4, i64 88}
!91 = !{!54, !4, i64 64}
!92 = !{!25, !4, i64 208}
!93 = !{!19, !4, i64 64}
!94 = !{!25, !4, i64 216}
!95 = !{!25, !4, i64 2744}
!96 = !{!97, !4, i64 8}
!97 = !{!"", !4, i64 0, !4, i64 8, !7, i64 16, !7, i64 20, !7, i64 24, !86, i64 32, !7, i64 40, !4, i64 48}
