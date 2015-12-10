; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/nrama.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.t_topology = type { i8**, %struct.t_idef, %struct.t_atoms, [3 x %struct.t_block], %struct.t_symtab }
%struct.t_idef = type { i32, i32, i32, i32*, %union.t_iparams*, [44 x %struct.t_ilist] }
%union.t_iparams = type { %struct.anon.2 }
%struct.anon.2 = type { float, float, float, float, float, float }
%struct.t_ilist = type { i32, [256 x i32], i32* }
%struct.t_atoms = type { i32, %struct.t_atom*, i8***, i8***, i8***, i32, i8***, i32, i8***, %struct.t_block, [9 x %struct.t_grps], %struct.t_pdbinfo* }
%struct.t_atom = type { float, float, float, float, i16, i16, i32, i32, [9 x i8], i8 }
%struct.t_block = type { [256 x i32], i32, i32*, i32, i32* }
%struct.t_grps = type { i32, i32* }
%struct.t_pdbinfo = type { i32, i32, i8, [6 x i8], float, float, i32, [6 x i32] }
%struct.t_symtab = type { i32, %struct.symbuf* }
%struct.symbuf = type { i32, i8**, %struct.symbuf* }
%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct.t_interaction_function = type { i8*, i8*, i32, i32, i32, i64, i32, float (i32, i32*, %union.t_iparams*, [3 x float]*, [3 x float]*, %struct.t_forcerec*, %struct.t_graph*, [3 x float]*, float, float*, %struct.t_mdatoms*, i32, float*, float*, %struct.t_fcdata*)* }
%struct.t_forcerec = type { i32, float, float, float, float, float, float, i32, float, float, float, float, float, i32, i32, float, i32, float, float*, float*, float*, float*, float, float, float*, float, float, float, float, i32, float, float, i32, i32, i32, i32, i32, i32, i32, i32, [3 x float], i32, i32, i32, i32, i32*, i32*, [3 x float]*, [3 x float]*, [13 x %struct.t_nblist], [13 x %struct.t_nblist], i32, i32, [3 x float]*, [3 x float]*, [3 x float]*, i32, float, [3 x float]*, i32, i32*, float*, i32, i32, i32, float*, i32*, float }
%struct.t_nblist = type { i32, i32, i32, i32, i32, i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32, i32* }
%struct.t_graph = type { i32, i32, i32, i32, i32, i32*, i32**, [3 x i32]* }
%struct.t_mdatoms = type { float, i32, float*, float*, float*, float*, float*, float*, float*, i32*, i32*, i32*, i32*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16* }
%struct.t_fcdata = type { %struct.t_disresdata, %struct.t_oriresdata }
%struct.t_disresdata = type { i32, i32, float, float, float, float, float, i32, i32, float, float*, float*, float*, float*, float* }
%struct.t_oriresdata = type { float, float, float, float, i32, i32, i32, float, float*, [3 x float]*, [3 x float]*, [3 x [3 x float]], [3 x [3 x float]]*, [5 x float]*, [5 x float]*, [5 x float]*, float*, float*, float*, float, [5 x float]*, float*** }
%struct.t_xrama = type { i32, %struct.t_dih*, i32, %struct.t_phipsi*, i32, i32, i32, i32, float, [3 x float]*, [3 x [3 x float]], %struct.t_idef* }
%struct.t_dih = type { [4 x i32], i32, float, float }
%struct.t_phipsi = type { i32, i8*, i32, i32 }

@init_rama.top = internal unnamed_addr global %struct.t_topology* null, align 8
@pp_pat = internal unnamed_addr constant [5 x i8*] [i8* getelementptr inbounds ([2 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @.str2, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str3, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @.str2, i32 0, i32 0)], align 16
@__stderrp = external global %struct.__sFILE*
@.str = private unnamed_addr constant [31 x i8] c"Found %d phi-psi combinations\0A\00", align 1
@.str1 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str2 = private unnamed_addr constant [2 x i8] c"N\00", align 1
@.str3 = private unnamed_addr constant [3 x i8] c"CA\00", align 1
@.str4 = private unnamed_addr constant [8 x i8] c"xr->dih\00", align 1
@.str5 = private unnamed_addr constant [65 x i8] c"../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/nrama.c\00", align 1
@.str6 = private unnamed_addr constant [7 x i8] c"xr->pp\00", align 1
@.str7 = private unnamed_addr constant [6 x i8] c"%s-%d\00", align 1
@interaction_function = external global [44 x %struct.t_interaction_function]
@.str8 = private unnamed_addr constant [44 x i8] c"Dihedral around %d,%d not found in topology\00", align 1

; Function Attrs: alwaysinline nounwind optsize ssp uwtable
define i32 @__sputc(i32 %_c, %struct.__sFILE* %_p) #0 {
  tail call void @llvm.dbg.value(metadata i32 %_c, i64 0, metadata !141, metadata !508), !dbg !509
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %_p, i64 0, metadata !142, metadata !508), !dbg !510
  %1 = getelementptr inbounds %struct.__sFILE* %_p, i64 0, i32 2, !dbg !511
  %2 = load i32* %1, align 4, !dbg !513, !tbaa !514
  %3 = add nsw i32 %2, -1, !dbg !513
  store i32 %3, i32* %1, align 4, !dbg !513, !tbaa !514
  %4 = icmp sgt i32 %2, 0, !dbg !523
  br i1 %4, label %._crit_edge, label %5, !dbg !524

._crit_edge:                                      ; preds = %0
  %.pre = and i32 %_c, 255, !dbg !525
  br label %10, !dbg !524

; <label>:5                                       ; preds = %0
  %6 = getelementptr inbounds %struct.__sFILE* %_p, i64 0, i32 6, !dbg !526
  %7 = load i32* %6, align 4, !dbg !526, !tbaa !527
  %8 = icmp sle i32 %2, %7, !dbg !528
  %sext.mask = and i32 %_c, 255
  %9 = icmp eq i32 %sext.mask, 10, !dbg !529
  %or.cond = or i1 %9, %8, !dbg !530
  br i1 %or.cond, label %15, label %10, !dbg !530

; <label>:10                                      ; preds = %._crit_edge, %5
  %.pre-phi = phi i32 [ %.pre, %._crit_edge ], [ %sext.mask, %5 ], !dbg !525
  %11 = trunc i32 %_c to i8, !dbg !531
  %12 = getelementptr inbounds %struct.__sFILE* %_p, i64 0, i32 0, !dbg !532
  %13 = load i8** %12, align 8, !dbg !533, !tbaa !534
  %14 = getelementptr inbounds i8* %13, i64 1, !dbg !533
  store i8* %14, i8** %12, align 8, !dbg !533, !tbaa !534
  store i8 %11, i8* %13, align 1, !dbg !535, !tbaa !536
  br label %17, !dbg !537

; <label>:15                                      ; preds = %5
  %16 = tail call i32 @__swbuf(i32 %_c, %struct.__sFILE* %_p) #9, !dbg !538
  br label %17, !dbg !539

; <label>:17                                      ; preds = %15, %10
  %.0 = phi i32 [ %.pre-phi, %10 ], [ %16, %15 ]
  ret i32 %.0, !dbg !540
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: optsize
declare i32 @__swbuf(i32, %struct.__sFILE*) #2

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__sigbits(i32 %__signo) #3 {
  tail call void @llvm.dbg.value(metadata i32 %__signo, i64 0, metadata !148, metadata !508), !dbg !541
  %1 = icmp sgt i32 %__signo, 32, !dbg !542
  br i1 %1, label %5, label %2, !dbg !543

; <label>:2                                       ; preds = %0
  %3 = add nsw i32 %__signo, -1, !dbg !544
  %4 = shl i32 1, %3, !dbg !545
  br label %5, !dbg !543

; <label>:5                                       ; preds = %0, %2
  %6 = phi i32 [ %4, %2 ], [ 0, %0 ], !dbg !543
  ret i32 %6, !dbg !546
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @new_data(%struct.t_xrama* %xr) #4 {
  tail call void @llvm.dbg.value(metadata %struct.t_xrama* %xr, i64 0, metadata !320, metadata !508), !dbg !547
  %1 = getelementptr inbounds %struct.t_xrama* %xr, i64 0, i32 4, !dbg !548
  %2 = load i32* %1, align 4, !dbg !548, !tbaa !550
  %3 = getelementptr inbounds %struct.t_xrama* %xr, i64 0, i32 8, !dbg !553
  %4 = getelementptr inbounds %struct.t_xrama* %xr, i64 0, i32 5, !dbg !554
  %5 = load i32* %4, align 4, !dbg !554, !tbaa !555
  %6 = getelementptr inbounds %struct.t_xrama* %xr, i64 0, i32 9, !dbg !556
  %7 = load [3 x float]** %6, align 8, !dbg !556, !tbaa !557
  %8 = getelementptr inbounds %struct.t_xrama* %xr, i64 0, i32 10, i64 0, !dbg !558
  %9 = tail call i32 @read_next_x(i32 %2, float* %3, i32 %5, [3 x float]* %7, [3 x float]* %8) #9, !dbg !559
  %10 = icmp eq i32 %9, 0, !dbg !559
  br i1 %10, label %12, label %11, !dbg !560

; <label>:11                                      ; preds = %0
  tail call fastcc void @calc_dihs(%struct.t_xrama* %xr) #10, !dbg !561
  br label %12, !dbg !562

; <label>:12                                      ; preds = %0, %11
  %.0 = phi i32 [ 1, %11 ], [ 0, %0 ]
  ret i32 %.0, !dbg !563
}

; Function Attrs: optsize
declare i32 @read_next_x(i32, float*, i32, [3 x float]*, [3 x float]*) #2

; Function Attrs: nounwind optsize ssp uwtable
define internal fastcc void @calc_dihs(%struct.t_xrama* %xr) #4 {
  %r_ij = alloca [3 x float], align 4
  %r_kj = alloca [3 x float], align 4
  %r_kl = alloca [3 x float], align 4
  %m = alloca [3 x float], align 4
  %n = alloca [3 x float], align 4
  %cos_phi = alloca float, align 4
  %sign = alloca float, align 4
  tail call void @llvm.dbg.value(metadata %struct.t_xrama* %xr, i64 0, metadata !333, metadata !508), !dbg !564
  tail call void @llvm.dbg.declare(metadata [3 x float]* %r_ij, metadata !335, metadata !508), !dbg !565
  tail call void @llvm.dbg.declare(metadata [3 x float]* %r_kj, metadata !336, metadata !508), !dbg !566
  tail call void @llvm.dbg.declare(metadata [3 x float]* %r_kl, metadata !337, metadata !508), !dbg !567
  tail call void @llvm.dbg.declare(metadata [3 x float]* %m, metadata !338, metadata !508), !dbg !568
  tail call void @llvm.dbg.declare(metadata [3 x float]* %n, metadata !339, metadata !508), !dbg !569
  %1 = getelementptr inbounds %struct.t_xrama* %xr, i64 0, i32 11, !dbg !570
  %2 = load %struct.t_idef** %1, align 8, !dbg !570, !tbaa !571
  %3 = getelementptr inbounds %struct.t_xrama* %xr, i64 0, i32 5, !dbg !572
  %4 = load i32* %3, align 4, !dbg !572, !tbaa !555
  %5 = getelementptr inbounds %struct.t_xrama* %xr, i64 0, i32 10, i64 0, !dbg !573
  %6 = getelementptr inbounds %struct.t_xrama* %xr, i64 0, i32 9, !dbg !574
  %7 = load [3 x float]** %6, align 8, !dbg !574, !tbaa !557
  tail call void @rm_pbc(%struct.t_idef* %2, i32 %4, [3 x float]* %5, [3 x float]* %7, [3 x float]* %7) #9, !dbg !575
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !334, metadata !508), !dbg !576
  %8 = getelementptr inbounds %struct.t_xrama* %xr, i64 0, i32 0, !dbg !577
  %9 = load i32* %8, align 4, !dbg !577, !tbaa !580
  %10 = icmp sgt i32 %9, 0, !dbg !581
  br i1 %10, label %.lr.ph, label %._crit_edge, !dbg !582

.lr.ph:                                           ; preds = %0
  %11 = getelementptr inbounds %struct.t_xrama* %xr, i64 0, i32 1, !dbg !583
  %12 = getelementptr inbounds [3 x float]* %r_ij, i64 0, i64 0, !dbg !585
  %13 = getelementptr inbounds [3 x float]* %r_kj, i64 0, i64 0, !dbg !586
  %14 = getelementptr inbounds [3 x float]* %r_kl, i64 0, i64 0, !dbg !587
  %15 = getelementptr inbounds [3 x float]* %m, i64 0, i64 0, !dbg !588
  %16 = getelementptr inbounds [3 x float]* %n, i64 0, i64 0, !dbg !589
  br label %17, !dbg !582

; <label>:17                                      ; preds = %.lr.ph, %17
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %17 ]
  %18 = load %struct.t_dih** %11, align 8, !dbg !583, !tbaa !590
  %19 = getelementptr inbounds %struct.t_dih* %18, i64 %indvars.iv, i32 0, i64 0, !dbg !591
  %20 = load i32* %19, align 4, !dbg !591, !tbaa !592
  %21 = sext i32 %20 to i64, !dbg !593
  %22 = load [3 x float]** %6, align 8, !dbg !594, !tbaa !557
  %23 = getelementptr inbounds [3 x float]* %22, i64 %21, i64 0, !dbg !593
  %24 = getelementptr inbounds %struct.t_dih* %18, i64 %indvars.iv, i32 0, i64 1, !dbg !595
  %25 = load i32* %24, align 4, !dbg !595, !tbaa !592
  %26 = sext i32 %25 to i64, !dbg !596
  %27 = getelementptr inbounds [3 x float]* %22, i64 %26, i64 0, !dbg !596
  %28 = getelementptr inbounds %struct.t_dih* %18, i64 %indvars.iv, i32 0, i64 2, !dbg !597
  %29 = load i32* %28, align 4, !dbg !597, !tbaa !592
  %30 = sext i32 %29 to i64, !dbg !598
  %31 = getelementptr inbounds [3 x float]* %22, i64 %30, i64 0, !dbg !598
  %32 = getelementptr inbounds %struct.t_dih* %18, i64 %indvars.iv, i32 0, i64 3, !dbg !599
  %33 = load i32* %32, align 4, !dbg !599, !tbaa !592
  %34 = sext i32 %33 to i64, !dbg !600
  %35 = getelementptr inbounds [3 x float]* %22, i64 %34, i64 0, !dbg !600
  call void @llvm.dbg.value(metadata float* %cos_phi, i64 0, metadata !340, metadata !508), !dbg !601
  call void @llvm.dbg.value(metadata float* %sign, i64 0, metadata !341, metadata !508), !dbg !602
  %36 = call float @dih_angle([3 x float]* %5, float* %23, float* %27, float* %31, float* %35, float* %12, float* %13, float* %14, float* %15, float* %16, float* %cos_phi, float* %sign) #9, !dbg !603
  %37 = getelementptr inbounds %struct.t_dih* %18, i64 %indvars.iv, i32 3, !dbg !604
  store float %36, float* %37, align 4, !dbg !605, !tbaa !606
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !582
  %38 = load i32* %8, align 4, !dbg !577, !tbaa !580
  %39 = sext i32 %38 to i64, !dbg !581
  %40 = icmp slt i64 %indvars.iv.next, %39, !dbg !581
  br i1 %40, label %17, label %._crit_edge, !dbg !582

._crit_edge:                                      ; preds = %17, %0
  ret void, !dbg !608
}

; Function Attrs: nounwind optsize ssp uwtable
define void @init_rama(i8* %infile, i8* %topfile, %struct.t_xrama* %xr) #4 {
  %key.i = alloca %struct.t_dih, align 4
  %buf.i.i = alloca [12 x i8], align 1
  %ff.i = alloca [5 x i32], align 16
  %t = alloca float, align 4
  tail call void @llvm.dbg.value(metadata i8* %infile, i64 0, metadata !325, metadata !508), !dbg !609
  tail call void @llvm.dbg.value(metadata i8* %topfile, i64 0, metadata !326, metadata !508), !dbg !610
  tail call void @llvm.dbg.value(metadata %struct.t_xrama* %xr, i64 0, metadata !327, metadata !508), !dbg !611
  %1 = tail call %struct.t_topology* @read_top(i8* %topfile) #9, !dbg !612
  store %struct.t_topology* %1, %struct.t_topology** @init_rama.top, align 8, !dbg !613, !tbaa !614
  %2 = bitcast [5 x i32]* %ff.i to i8*, !dbg !615
  call void @llvm.lifetime.start(i64 20, i8* %2), !dbg !615
  tail call void @llvm.dbg.value(metadata %struct.t_xrama* %xr, i64 0, metadata !415, metadata !508) #8, !dbg !615
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !422, metadata !508) #8, !dbg !617
  %3 = getelementptr inbounds %struct.t_topology* %1, i64 0, i32 2, i32 0, !dbg !618
  %4 = load i32* %3, align 4, !dbg !618, !tbaa !621
  %5 = icmp sgt i32 %4, 0, !dbg !624
  br i1 %5, label %.preheader.lr.ph.i, label %._crit_edge21.i, !dbg !625

._crit_edge21.i:                                  ; preds = %0
  %.pre.i = getelementptr inbounds %struct.t_xrama* %xr, i64 0, i32 2, !dbg !626
  br label %get_dih.exit, !dbg !625

.preheader.lr.ph.i:                               ; preds = %0
  %6 = getelementptr inbounds %struct.t_topology* %1, i64 0, i32 2, i32 2, !dbg !627
  %7 = getelementptr inbounds [5 x i32]* %ff.i, i64 0, i64 0, !dbg !633
  %8 = getelementptr inbounds [12 x i8]* %buf.i.i, i64 0, i64 0, !dbg !634
  %9 = getelementptr inbounds %struct.t_xrama* %xr, i64 0, i32 1, !dbg !636
  %10 = bitcast %struct.t_dih** %9 to i8**, !dbg !636
  %11 = getelementptr inbounds %struct.t_xrama* %xr, i64 0, i32 0, !dbg !636
  %12 = getelementptr inbounds %struct.t_xrama* %xr, i64 0, i32 3, !dbg !637
  %13 = bitcast %struct.t_phipsi** %12 to i8**, !dbg !637
  %14 = getelementptr inbounds %struct.t_xrama* %xr, i64 0, i32 2, !dbg !637
  %15 = getelementptr inbounds [5 x i32]* %ff.i, i64 0, i64 1, !dbg !638
  %16 = getelementptr inbounds %struct.t_topology* %1, i64 0, i32 2, i32 1, !dbg !638
  %17 = getelementptr inbounds %struct.t_topology* %1, i64 0, i32 2, i32 6, !dbg !638
  br label %.preheader.i, !dbg !625

.preheader.i:                                     ; preds = %add_xr.exit.i, %.preheader.lr.ph.i
  %18 = phi i32 [ %4, %.preheader.lr.ph.i ], [ %99, %add_xr.exit.i ], !dbg !639
  %i.013.i = phi i32 [ 0, %.preheader.lr.ph.i ], [ %98, %add_xr.exit.i ], !dbg !639
  %19 = load i8**** %6, align 8, !dbg !627, !tbaa !640
  %20 = sext i32 %18 to i64, !dbg !641
  br label %21, !dbg !644

; <label>:21                                      ; preds = %39, %.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.preheader.i ], [ %indvars.iv.next.i, %39 ], !dbg !639
  %j.012.i = phi i32 [ 0, %.preheader.i ], [ %41, %39 ], !dbg !639
  %found.011.i = phi i32 [ %i.013.i, %.preheader.i ], [ %40, %39 ], !dbg !639
  %22 = getelementptr inbounds [5 x i8*]* @pp_pat, i64 0, i64 %indvars.iv.i, !dbg !645
  %23 = load i8** %22, align 8, !dbg !645, !tbaa !614
  call void @llvm.dbg.value(metadata i8* %23, i64 0, metadata !428, metadata !508) #8, !dbg !646
  call void @llvm.dbg.value(metadata i8*** %19, i64 0, metadata !429, metadata !508) #8, !dbg !647
  call void @llvm.dbg.value(metadata i32 %18, i64 0, metadata !431, metadata !508) #8, !dbg !648
  %24 = icmp slt i32 %found.011.i, %18, !dbg !649
  br i1 %24, label %.lr.ph.i.i, label %find_atom.exit.thread.i, !dbg !641

.lr.ph.i.i:                                       ; preds = %21
  %25 = sext i32 %found.011.i to i64, !dbg !651
  br label %26, !dbg !641

; <label>:26                                      ; preds = %32, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ %25, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %32 ], !dbg !651
  %27 = getelementptr inbounds i8*** %19, i64 %indvars.iv.i.i, !dbg !652
  %28 = load i8*** %27, align 8, !dbg !652, !tbaa !614
  %29 = load i8** %28, align 8, !dbg !654, !tbaa !614
  %30 = call i32 @strcmp(i8* %23, i8* %29) #9, !dbg !655
  %31 = icmp eq i32 %30, 0, !dbg !656
  br i1 %31, label %find_atom.exit.i, label %32, !dbg !657

; <label>:32                                      ; preds = %26
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, 1, !dbg !641
  %33 = icmp slt i64 %indvars.iv.next.i.i, %20, !dbg !649
  br i1 %33, label %26, label %find_atom.exit.thread.i, !dbg !641

find_atom.exit.thread.i:                          ; preds = %21, %32
  %j.01220.i = trunc i64 %indvars.iv.i to i32, !dbg !639
  %34 = getelementptr inbounds [5 x i32]* %ff.i, i64 0, i64 %indvars.iv.i, !dbg !658
  store i32 -1, i32* %34, align 4, !dbg !659, !tbaa !592
  br label %.loopexit.i, !dbg !660

find_atom.exit.i:                                 ; preds = %26
  %35 = trunc i64 %indvars.iv.i.i to i32, !dbg !657
  %36 = getelementptr inbounds [5 x i32]* %ff.i, i64 0, i64 %indvars.iv.i, !dbg !658
  store i32 %35, i32* %36, align 4, !dbg !659, !tbaa !592
  %37 = icmp eq i32 %35, -1, !dbg !661
  %38 = trunc i64 %indvars.iv.i to i32, !dbg !660
  br i1 %37, label %.loopexit.i, label %39, !dbg !660

; <label>:39                                      ; preds = %find_atom.exit.i
  %40 = add nsw i32 %35, 1, !dbg !662
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1, !dbg !644
  %41 = add nuw nsw i32 %j.012.i, 1, !dbg !663
  call void @llvm.dbg.value(metadata i32 %41, i64 0, metadata !423, metadata !508) #8, !dbg !664
  %42 = trunc i64 %indvars.iv.next.i to i32, !dbg !665
  %43 = icmp ult i32 %42, 5, !dbg !665
  br i1 %43, label %21, label %.loopexit.i, !dbg !644

.loopexit.i:                                      ; preds = %39, %find_atom.exit.i, %find_atom.exit.thread.i
  %j.07.i = phi i32 [ %j.01220.i, %find_atom.exit.thread.i ], [ %41, %39 ], [ %38, %find_atom.exit.i ], !dbg !639
  %44 = icmp eq i32 %j.07.i, 5, !dbg !666
  br i1 %44, label %45, label %get_dih.exit, !dbg !668

; <label>:45                                      ; preds = %.loopexit.i
  call void @llvm.lifetime.start(i64 12, i8* %8) #8, !dbg !634
  call void @llvm.dbg.value(metadata %struct.t_xrama* %xr, i64 0, metadata !437, metadata !508) #8, !dbg !634
  call void @llvm.dbg.value(metadata i32* %7, i64 0, metadata !438, metadata !508) #8, !dbg !669
  %46 = load i8** %10, align 8, !dbg !636, !tbaa !590
  %47 = load i32* %11, align 4, !dbg !636, !tbaa !580
  %48 = mul i32 %47, 28, !dbg !636
  %49 = add i32 %48, 56, !dbg !636
  %50 = call i8* @save_realloc(i8* getelementptr inbounds ([8 x i8]* @.str4, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str5, i64 0, i64 0), i32 109, i8* %46, i32 %49) #9, !dbg !636
  store i8* %50, i8** %10, align 8, !dbg !636, !tbaa !590
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !444, metadata !508) #8, !dbg !670
  %.cast.i.i = bitcast i8* %50 to %struct.t_dih*, !dbg !671
  br label %51, !dbg !674

; <label>:51                                      ; preds = %51, %45
  %indvars.iv3.i.i = phi i64 [ 0, %45 ], [ %indvars.iv.next4.i.i, %51 ], !dbg !675
  %52 = getelementptr inbounds [5 x i32]* %ff.i, i64 0, i64 %indvars.iv3.i.i, !dbg !676
  %53 = load i32* %52, align 4, !dbg !676, !tbaa !592
  %54 = load i32* %11, align 4, !dbg !677, !tbaa !580
  %55 = sext i32 %54 to i64, !dbg !678
  %56 = getelementptr inbounds %struct.t_dih* %.cast.i.i, i64 %55, i32 0, i64 %indvars.iv3.i.i, !dbg !678
  store i32 %53, i32* %56, align 4, !dbg !679, !tbaa !592
  %indvars.iv.next4.i.i = add nuw nsw i64 %indvars.iv3.i.i, 1, !dbg !674
  %exitcond5.i.i = icmp eq i64 %indvars.iv.next4.i.i, 4, !dbg !674
  br i1 %exitcond5.i.i, label %.preheader.i.i, label %51, !dbg !674

.preheader.i.i:                                   ; preds = %51, %.preheader.i.i
  %indvars.iv.i1.i = phi i64 [ %indvars.iv.next.i2.i, %.preheader.i.i ], [ 0, %51 ], !dbg !675
  %indvars.iv.next.i2.i = add nuw nsw i64 %indvars.iv.i1.i, 1, !dbg !680
  %57 = getelementptr inbounds [5 x i32]* %ff.i, i64 0, i64 %indvars.iv.next.i2.i, !dbg !682
  %58 = load i32* %57, align 4, !dbg !682, !tbaa !592
  %59 = load i32* %11, align 4, !dbg !684, !tbaa !580
  %60 = add nsw i32 %59, 1, !dbg !685
  %61 = sext i32 %60 to i64, !dbg !686
  %62 = getelementptr inbounds %struct.t_dih* %.cast.i.i, i64 %61, i32 0, i64 %indvars.iv.i1.i, !dbg !686
  store i32 %58, i32* %62, align 4, !dbg !687, !tbaa !592
  %exitcond.i.i = icmp eq i64 %indvars.iv.next.i2.i, 4, !dbg !680
  br i1 %exitcond.i.i, label %add_xr.exit.i, label %.preheader.i.i, !dbg !680

add_xr.exit.i:                                    ; preds = %.preheader.i.i
  %63 = load i32* %11, align 4, !dbg !688, !tbaa !580
  %64 = add nsw i32 %63, 2, !dbg !688
  store i32 %64, i32* %11, align 4, !dbg !688, !tbaa !580
  %65 = load i8** %13, align 8, !dbg !637, !tbaa !689
  %66 = load i32* %14, align 4, !dbg !637, !tbaa !690
  %67 = mul i32 %66, 24, !dbg !637
  %68 = add i32 %67, 24, !dbg !637
  %69 = call i8* @save_realloc(i8* getelementptr inbounds ([7 x i8]* @.str6, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str5, i64 0, i64 0), i32 116, i8* %65, i32 %68) #9, !dbg !637
  %70 = bitcast i8* %69 to %struct.t_phipsi*, !dbg !637
  store i8* %69, i8** %13, align 8, !dbg !637, !tbaa !689
  %71 = load i32* %11, align 4, !dbg !691, !tbaa !580
  %72 = add nsw i32 %71, -2, !dbg !692
  %73 = load i32* %14, align 4, !dbg !693, !tbaa !690
  %74 = sext i32 %73 to i64, !dbg !694
  %75 = getelementptr inbounds %struct.t_phipsi* %70, i64 %74, i32 2, !dbg !695
  store i32 %72, i32* %75, align 4, !dbg !696, !tbaa !697
  %76 = add nsw i32 %71, -1, !dbg !699
  %77 = getelementptr inbounds %struct.t_phipsi* %70, i64 %74, i32 3, !dbg !700
  store i32 %76, i32* %77, align 4, !dbg !701, !tbaa !702
  %78 = getelementptr inbounds %struct.t_phipsi* %70, i64 %74, i32 0, !dbg !703
  store i32 0, i32* %78, align 4, !dbg !704, !tbaa !705
  %79 = load i32* %15, align 4, !dbg !638, !tbaa !592
  %80 = sext i32 %79 to i64, !dbg !638
  %81 = load %struct.t_atom** %16, align 8, !dbg !638, !tbaa !706
  %82 = getelementptr inbounds %struct.t_atom* %81, i64 %80, i32 7, !dbg !638
  %83 = load i32* %82, align 4, !dbg !638, !tbaa !707
  %84 = sext i32 %83 to i64, !dbg !638
  %85 = load i8**** %17, align 8, !dbg !638, !tbaa !709
  %86 = getelementptr inbounds i8*** %85, i64 %84, !dbg !638
  %87 = load i8*** %86, align 8, !dbg !638, !tbaa !614
  %88 = load i8** %87, align 8, !dbg !638, !tbaa !614
  %89 = add nsw i32 %83, 1, !dbg !638
  %90 = call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* %8, i32 0, i64 12, i8* getelementptr inbounds ([6 x i8]* @.str7, i64 0, i64 0), i8* %88, i32 %89) #9, !dbg !638
  %91 = call i8* @strdup(i8* %8) #9, !dbg !710
  %92 = load i32* %14, align 4, !dbg !711, !tbaa !690
  %93 = sext i32 %92 to i64, !dbg !712
  %94 = load %struct.t_phipsi** %12, align 8, !dbg !713, !tbaa !689
  %95 = getelementptr inbounds %struct.t_phipsi* %94, i64 %93, i32 1, !dbg !714
  store i8* %91, i8** %95, align 8, !dbg !715, !tbaa !716
  %96 = add nsw i32 %92, 1, !dbg !717
  store i32 %96, i32* %14, align 4, !dbg !717, !tbaa !690
  call void @llvm.lifetime.end(i64 12, i8* %8) #8, !dbg !718
  %97 = load i32* %7, align 16, !dbg !719, !tbaa !592
  %98 = add nsw i32 %97, 1, !dbg !720
  call void @llvm.dbg.value(metadata i32 %98, i64 0, metadata !422, metadata !508) #8, !dbg !617
  %99 = load i32* %3, align 4, !dbg !618, !tbaa !621
  %100 = icmp slt i32 %98, %99, !dbg !624
  br i1 %100, label %.preheader.i, label %get_dih.exit, !dbg !625

get_dih.exit:                                     ; preds = %.loopexit.i, %add_xr.exit.i, %._crit_edge21.i
  %.pre-phi.i = phi i32* [ %.pre.i, %._crit_edge21.i ], [ %14, %add_xr.exit.i ], [ %14, %.loopexit.i ], !dbg !626
  %101 = load %struct.__sFILE** @__stderrp, align 8, !dbg !721, !tbaa !614
  %102 = load i32* %.pre-phi.i, align 4, !dbg !626, !tbaa !690
  %103 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %101, i8* getelementptr inbounds ([31 x i8]* @.str, i64 0, i64 0), i32 %102) #9, !dbg !722
  call void @llvm.lifetime.end(i64 20, i8* %2), !dbg !723
  %104 = load %struct.t_topology** @init_rama.top, align 8, !dbg !724, !tbaa !614
  %105 = bitcast %struct.t_dih* %key.i to i8*, !dbg !725
  call void @llvm.lifetime.start(i64 28, i8* %105), !dbg !725
  call void @llvm.dbg.value(metadata %struct.t_xrama* %xr, i64 0, metadata !449, metadata !508) #8, !dbg !725
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !451, metadata !508) #8, !dbg !727
  %106 = getelementptr inbounds %struct.t_topology* %104, i64 0, i32 1, i32 5, i64 8, i32 0, !dbg !728
  %107 = load i32* %106, align 4, !dbg !728, !tbaa !731
  %108 = icmp sgt i32 %107, 0, !dbg !733
  br i1 %108, label %.lr.ph5.i, label %..preheader_crit_edge6.i, !dbg !734

..preheader_crit_edge6.i:                         ; preds = %get_dih.exit
  %.pre7.i = getelementptr inbounds %struct.t_xrama* %xr, i64 0, i32 0, !dbg !735
  br label %.preheader.i2, !dbg !734

.lr.ph5.i:                                        ; preds = %get_dih.exit
  %109 = getelementptr inbounds %struct.t_topology* %104, i64 0, i32 1, i32 5, i64 8, i32 2, !dbg !738
  %110 = load i32** %109, align 8, !dbg !738, !tbaa !739
  %111 = getelementptr inbounds %struct.t_topology* %104, i64 0, i32 1, i32 3, !dbg !740
  %112 = getelementptr inbounds %struct.t_dih* %key.i, i64 0, i32 0, i64 1, !dbg !742
  %113 = getelementptr inbounds %struct.t_dih* %key.i, i64 0, i32 0, i64 2, !dbg !743
  %114 = getelementptr inbounds %struct.t_xrama* %xr, i64 0, i32 1, !dbg !744
  %115 = bitcast %struct.t_dih** %114 to i8**, !dbg !744
  %116 = getelementptr inbounds %struct.t_xrama* %xr, i64 0, i32 0, !dbg !746
  %117 = getelementptr inbounds %struct.t_topology* %104, i64 0, i32 1, i32 4, !dbg !747
  br label %121, !dbg !734

.preheader.i2:                                    ; preds = %151, %..preheader_crit_edge6.i
  %.pre-phi.i1 = phi i32* [ %.pre7.i, %..preheader_crit_edge6.i ], [ %116, %151 ], !dbg !735
  %118 = load i32* %.pre-phi.i1, align 4, !dbg !735, !tbaa !580
  %119 = icmp sgt i32 %118, 0, !dbg !749
  br i1 %119, label %.lr.ph.i, label %get_dih_props.exit, !dbg !750

.lr.ph.i:                                         ; preds = %.preheader.i2
  %120 = getelementptr inbounds %struct.t_xrama* %xr, i64 0, i32 1, !dbg !751
  br label %158, !dbg !750

; <label>:121                                     ; preds = %151, %.lr.ph5.i
  %i.03.i = phi i32 [ 0, %.lr.ph5.i ], [ %153, %151 ], !dbg !753
  %ia.02.i = phi i32* [ %110, %.lr.ph5.i ], [ %155, %151 ], !dbg !753
  %122 = load i32* %ia.02.i, align 4, !dbg !754, !tbaa !592
  call void @llvm.dbg.value(metadata i32 %122, i64 0, metadata !452, metadata !508) #8, !dbg !755
  %123 = sext i32 %122 to i64, !dbg !756
  %124 = load i32** %111, align 8, !dbg !740, !tbaa !757
  %125 = getelementptr inbounds i32* %124, i64 %123, !dbg !756
  %126 = load i32* %125, align 4, !dbg !756, !tbaa !592
  call void @llvm.dbg.value(metadata i32 %126, i64 0, metadata !453, metadata !508) #8, !dbg !759
  %127 = sext i32 %126 to i64, !dbg !760
  %128 = getelementptr inbounds [44 x %struct.t_interaction_function]* @interaction_function, i64 0, i64 %127, i32 2, !dbg !761
  %129 = load i32* %128, align 8, !dbg !761, !tbaa !762
  call void @llvm.dbg.value(metadata i32 %129, i64 0, metadata !454, metadata !508) #8, !dbg !765
  %130 = getelementptr inbounds i32* %ia.02.i, i64 2, !dbg !766
  %131 = load i32* %130, align 4, !dbg !766, !tbaa !592
  store i32 %131, i32* %112, align 4, !dbg !767, !tbaa !592
  %132 = getelementptr inbounds i32* %ia.02.i, i64 3, !dbg !768
  %133 = load i32* %132, align 4, !dbg !768, !tbaa !592
  store i32 %133, i32* %113, align 4, !dbg !769, !tbaa !592
  %134 = load i8** %115, align 8, !dbg !744, !tbaa !590
  %135 = load i32* %116, align 4, !dbg !746, !tbaa !580
  %136 = sext i32 %135 to i64, !dbg !770
  %137 = call i8* @bsearch(i8* %105, i8* %134, i64 %136, i64 28, i32 (i8*, i8*)* @d_comp) #9, !dbg !771
  %138 = icmp eq i8* %137, null, !dbg !772
  br i1 %138, label %151, label %139, !dbg !773

; <label>:139                                     ; preds = %121
  %140 = load %union.t_iparams** %117, align 8, !dbg !747, !tbaa !774
  %141 = getelementptr inbounds %union.t_iparams* %140, i64 %123, i32 0, i32 2, !dbg !775
  %142 = bitcast float* %141 to i32*, !dbg !775
  %143 = load i32* %142, align 4, !dbg !775, !tbaa !776
  %144 = getelementptr inbounds i8* %137, i64 16, !dbg !778
  %145 = bitcast i8* %144 to i32*, !dbg !778
  store i32 %143, i32* %145, align 4, !dbg !779, !tbaa !780
  %146 = getelementptr inbounds %union.t_iparams* %140, i64 %123, i32 0, i32 0, !dbg !781
  %147 = bitcast float* %146 to i32*, !dbg !781
  %148 = load i32* %147, align 4, !dbg !781, !tbaa !782
  %149 = getelementptr inbounds i8* %137, i64 20, !dbg !783
  %150 = bitcast i8* %149 to i32*, !dbg !783
  store i32 %148, i32* %150, align 4, !dbg !783, !tbaa !784
  br label %151, !dbg !785

; <label>:151                                     ; preds = %139, %121
  %152 = add nsw i32 %129, 1, !dbg !786
  %153 = add nsw i32 %152, %i.03.i, !dbg !787
  call void @llvm.dbg.value(metadata i32 %153, i64 0, metadata !451, metadata !508) #8, !dbg !727
  %154 = sext i32 %152 to i64, !dbg !788
  %155 = getelementptr inbounds i32* %ia.02.i, i64 %154, !dbg !788
  call void @llvm.dbg.value(metadata i32* %155, i64 0, metadata !455, metadata !508) #8, !dbg !789
  %156 = load i32* %106, align 4, !dbg !728, !tbaa !731
  %157 = icmp slt i32 %153, %156, !dbg !733
  br i1 %157, label %121, label %.preheader.i2, !dbg !734

; <label>:158                                     ; preds = %169, %.lr.ph.i
  %159 = phi i32 [ %118, %.lr.ph.i ], [ %170, %169 ], !dbg !753
  %indvars.iv.i3 = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i5, %169 ], !dbg !753
  %160 = load %struct.t_dih** %120, align 8, !dbg !751, !tbaa !590
  %161 = getelementptr inbounds %struct.t_dih* %160, i64 %indvars.iv.i3, i32 1, !dbg !790
  %162 = load i32* %161, align 4, !dbg !790, !tbaa !780
  %163 = icmp eq i32 %162, 0, !dbg !791
  br i1 %163, label %164, label %169, !dbg !792

; <label>:164                                     ; preds = %158
  %165 = getelementptr inbounds %struct.t_dih* %160, i64 %indvars.iv.i3, i32 0, i64 1, !dbg !793
  %166 = load i32* %165, align 4, !dbg !793, !tbaa !592
  %167 = getelementptr inbounds %struct.t_dih* %160, i64 %indvars.iv.i3, i32 0, i64 2, !dbg !794
  %168 = load i32* %167, align 4, !dbg !794, !tbaa !592
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([44 x i8]* @.str8, i64 0, i64 0), i32 %166, i32 %168) #9, !dbg !795
  %.pre.i4 = load i32* %.pre-phi.i1, align 4, !dbg !735, !tbaa !580
  br label %169, !dbg !795

; <label>:169                                     ; preds = %164, %158
  %170 = phi i32 [ %159, %158 ], [ %.pre.i4, %164 ], !dbg !750
  %indvars.iv.next.i5 = add nuw nsw i64 %indvars.iv.i3, 1, !dbg !750
  %171 = sext i32 %170 to i64, !dbg !749
  %172 = icmp slt i64 %indvars.iv.next.i5, %171, !dbg !749
  br i1 %172, label %158, label %get_dih_props.exit, !dbg !750

get_dih_props.exit:                               ; preds = %169, %.preheader.i2
  call void @llvm.lifetime.end(i64 28, i8* %105), !dbg !796
  %173 = getelementptr inbounds %struct.t_xrama* %xr, i64 0, i32 4, !dbg !797
  %174 = getelementptr inbounds %struct.t_xrama* %xr, i64 0, i32 9, !dbg !798
  %175 = getelementptr inbounds %struct.t_xrama* %xr, i64 0, i32 10, i64 0, !dbg !799
  call void @llvm.dbg.value(metadata float* %t, i64 0, metadata !328, metadata !508), !dbg !800
  %176 = call i32 @read_first_x(i32* %173, i8* %infile, float* %t, [3 x float]** %174, [3 x float]* %175) #9, !dbg !801
  %177 = getelementptr inbounds %struct.t_xrama* %xr, i64 0, i32 5, !dbg !802
  store i32 %176, i32* %177, align 4, !dbg !803, !tbaa !555
  %178 = load %struct.t_topology** @init_rama.top, align 8, !dbg !804, !tbaa !614
  %179 = getelementptr inbounds %struct.t_topology* %178, i64 0, i32 1, !dbg !805
  %180 = getelementptr inbounds %struct.t_xrama* %xr, i64 0, i32 11, !dbg !806
  store %struct.t_idef* %179, %struct.t_idef** %180, align 8, !dbg !807, !tbaa !571
  tail call void @llvm.dbg.value(metadata %struct.t_xrama* %xr, i64 0, metadata !470, metadata !508), !dbg !808
  %181 = getelementptr inbounds %struct.t_xrama* %xr, i64 0, i32 6, !dbg !810
  store i32 %176, i32* %181, align 4, !dbg !811, !tbaa !812
  %182 = getelementptr inbounds %struct.t_xrama* %xr, i64 0, i32 7, !dbg !813
  store i32 0, i32* %182, align 4, !dbg !814, !tbaa !815
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !472, metadata !508), !dbg !816
  %183 = getelementptr inbounds %struct.t_xrama* %xr, i64 0, i32 0, !dbg !817
  %184 = load i32* %183, align 4, !dbg !817, !tbaa !580
  %185 = icmp sgt i32 %184, 0, !dbg !820
  br i1 %185, label %.preheader.lr.ph.i6, label %min_max.exit, !dbg !821

.preheader.lr.ph.i6:                              ; preds = %get_dih_props.exit
  %186 = getelementptr inbounds %struct.t_xrama* %xr, i64 0, i32 1, !dbg !822
  %187 = load %struct.t_dih** %186, align 8, !dbg !822, !tbaa !590
  %188 = sext i32 %184 to i64
  %189 = add nsw i64 %188, -1, !dbg !821
  br label %.preheader.i7, !dbg !821

.preheader.i7:                                    ; preds = %205, %.preheader.lr.ph.i6
  %190 = phi i32 [ 0, %.preheader.lr.ph.i6 ], [ %203, %205 ], !dbg !826
  %191 = phi i32 [ %176, %.preheader.lr.ph.i6 ], [ %204, %205 ], !dbg !826
  %indvars.iv3.i = phi i64 [ 0, %.preheader.lr.ph.i6 ], [ %indvars.iv.next4.i, %205 ], !dbg !826
  br label %192, !dbg !827

; <label>:192                                     ; preds = %202, %.preheader.i7
  %193 = phi i32 [ %190, %.preheader.i7 ], [ %203, %202 ], !dbg !826
  %194 = phi i32 [ %191, %.preheader.i7 ], [ %204, %202 ], !dbg !828
  %indvars.iv.i8 = phi i64 [ 0, %.preheader.i7 ], [ %indvars.iv.next.i9, %202 ], !dbg !826
  %195 = getelementptr inbounds %struct.t_dih* %187, i64 %indvars.iv3.i, i32 0, i64 %indvars.iv.i8, !dbg !828
  %196 = load i32* %195, align 4, !dbg !828, !tbaa !592
  tail call void @llvm.dbg.value(metadata i32 %196, i64 0, metadata !471, metadata !508), !dbg !829
  %197 = icmp slt i32 %196, %194, !dbg !830
  br i1 %197, label %198, label %199, !dbg !832

; <label>:198                                     ; preds = %192
  store i32 %196, i32* %181, align 4, !dbg !833, !tbaa !812
  br label %202, !dbg !834

; <label>:199                                     ; preds = %192
  %200 = icmp sgt i32 %196, %193, !dbg !835
  br i1 %200, label %201, label %202, !dbg !837

; <label>:201                                     ; preds = %199
  store i32 %196, i32* %182, align 4, !dbg !838, !tbaa !815
  br label %202, !dbg !839

; <label>:202                                     ; preds = %201, %199, %198
  %203 = phi i32 [ %193, %198 ], [ %196, %201 ], [ %193, %199 ], !dbg !826
  %204 = phi i32 [ %196, %198 ], [ %194, %201 ], [ %194, %199 ], !dbg !826
  %indvars.iv.next.i9 = add nuw nsw i64 %indvars.iv.i8, 1, !dbg !827
  %exitcond.i = icmp eq i64 %indvars.iv.next.i9, 4, !dbg !827
  br i1 %exitcond.i, label %205, label %192, !dbg !827

; <label>:205                                     ; preds = %202
  %indvars.iv.next4.i = add nuw nsw i64 %indvars.iv3.i, 1, !dbg !821
  %exitcond = icmp eq i64 %indvars.iv3.i, %189, !dbg !821
  br i1 %exitcond, label %min_max.exit, label %.preheader.i7, !dbg !821

min_max.exit:                                     ; preds = %205, %get_dih_props.exit
  call fastcc void @calc_dihs(%struct.t_xrama* %xr) #10, !dbg !840
  call void @llvm.dbg.declare(metadata [12 x i8]* %buf.i.i, metadata !440, metadata !508), !dbg !841
  call void @llvm.dbg.declare(metadata [5 x i32]* %ff.i, metadata !418, metadata !508), !dbg !842
  ret void, !dbg !843
}

; Function Attrs: optsize
declare %struct.t_topology* @read_top(i8*) #2

; Function Attrs: optsize
declare i32 @read_first_x(i32*, i8*, float*, [3 x float]**, [3 x float]*) #2

; Function Attrs: optsize
declare void @rm_pbc(%struct.t_idef*, i32, [3 x float]*, [3 x float]*, [3 x float]*) #2

; Function Attrs: optsize
declare float @dih_angle([3 x float]*, float*, float*, float*, float*, float*, float*, float*, float*, float*, float*, float*) #2

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct.__sFILE* nocapture, i8* nocapture readonly, ...) #5

; Function Attrs: nounwind optsize readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) #6

; Function Attrs: optsize
declare i8* @save_realloc(i8*, i8*, i32, i8*, i32) #2

; Function Attrs: optsize
declare i32 @__sprintf_chk(i8*, i32, i64, i8*, ...) #2

; Function Attrs: nounwind optsize
declare noalias i8* @strdup(i8* nocapture readonly) #5

; Function Attrs: optsize
declare i8* @bsearch(i8*, i8*, i64, i64, i32 (i8*, i8*)*) #2

; Function Attrs: nounwind optsize readonly ssp uwtable
define internal i32 @d_comp(i8* nocapture readonly %a, i8* nocapture readonly %b) #7 {
  tail call void @llvm.dbg.value(metadata i8* %a, i64 0, metadata !464, metadata !508), !dbg !844
  tail call void @llvm.dbg.value(metadata i8* %b, i64 0, metadata !465, metadata !508), !dbg !845
  %1 = getelementptr inbounds i8* %a, i64 4, !dbg !846
  %2 = bitcast i8* %1 to i32*, !dbg !846
  %3 = load i32* %2, align 4, !dbg !846, !tbaa !592
  %4 = getelementptr inbounds i8* %b, i64 4, !dbg !848
  %5 = bitcast i8* %4 to i32*, !dbg !848
  %6 = load i32* %5, align 4, !dbg !848, !tbaa !592
  %7 = icmp slt i32 %3, %6, !dbg !849
  br i1 %7, label %18, label %8, !dbg !850

; <label>:8                                       ; preds = %0
  %9 = icmp eq i32 %3, %6, !dbg !851
  br i1 %9, label %10, label %18, !dbg !853

; <label>:10                                      ; preds = %8
  %11 = getelementptr inbounds i8* %a, i64 8, !dbg !854
  %12 = bitcast i8* %11 to i32*, !dbg !854
  %13 = load i32* %12, align 4, !dbg !854, !tbaa !592
  %14 = getelementptr inbounds i8* %b, i64 8, !dbg !855
  %15 = bitcast i8* %14 to i32*, !dbg !855
  %16 = load i32* %15, align 4, !dbg !855, !tbaa !592
  %17 = sub nsw i32 %13, %16, !dbg !856
  br label %18, !dbg !857

; <label>:18                                      ; preds = %8, %0, %10
  %.0 = phi i32 [ %17, %10 ], [ -1, %0 ], [ 1, %8 ]
  ret i32 %.0, !dbg !858
}

; Function Attrs: optsize
declare void @fatal_error(i32, i8*, ...) #2

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #8

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #8

attributes #0 = { alwaysinline nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { alwaysinline nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind optsize readonly ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind }
attributes #9 = { nounwind optsize }
attributes #10 = { optsize }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!504, !505, !506}
!llvm.ident = !{!507}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !51, subprograms: !76, globals: !474, imports: !503)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/nrama.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 49, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/types/idef.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50}
!6 = !DIEnumerator(name: "F_BONDS", value: 0)
!7 = !DIEnumerator(name: "F_G96BONDS", value: 1)
!8 = !DIEnumerator(name: "F_MORSE", value: 2)
!9 = !DIEnumerator(name: "F_CUBICBONDS", value: 3)
!10 = !DIEnumerator(name: "F_CONNBONDS", value: 4)
!11 = !DIEnumerator(name: "F_HARMONIC", value: 5)
!12 = !DIEnumerator(name: "F_ANGLES", value: 6)
!13 = !DIEnumerator(name: "F_G96ANGLES", value: 7)
!14 = !DIEnumerator(name: "F_PDIHS", value: 8)
!15 = !DIEnumerator(name: "F_RBDIHS", value: 9)
!16 = !DIEnumerator(name: "F_IDIHS", value: 10)
!17 = !DIEnumerator(name: "F_LJ14", value: 11)
!18 = !DIEnumerator(name: "F_COUL14", value: 12)
!19 = !DIEnumerator(name: "F_LJ", value: 13)
!20 = !DIEnumerator(name: "F_BHAM", value: 14)
!21 = !DIEnumerator(name: "F_LJLR", value: 15)
!22 = !DIEnumerator(name: "F_DISPCORR", value: 16)
!23 = !DIEnumerator(name: "F_SR", value: 17)
!24 = !DIEnumerator(name: "F_LR", value: 18)
!25 = !DIEnumerator(name: "F_WPOL", value: 19)
!26 = !DIEnumerator(name: "F_POSRES", value: 20)
!27 = !DIEnumerator(name: "F_DISRES", value: 21)
!28 = !DIEnumerator(name: "F_DISRESVIOL", value: 22)
!29 = !DIEnumerator(name: "F_ORIRES", value: 23)
!30 = !DIEnumerator(name: "F_ORIRESDEV", value: 24)
!31 = !DIEnumerator(name: "F_ANGRES", value: 25)
!32 = !DIEnumerator(name: "F_ANGRESZ", value: 26)
!33 = !DIEnumerator(name: "F_SHAKE", value: 27)
!34 = !DIEnumerator(name: "F_SHAKENC", value: 28)
!35 = !DIEnumerator(name: "F_SETTLE", value: 29)
!36 = !DIEnumerator(name: "F_DUMMY2", value: 30)
!37 = !DIEnumerator(name: "F_DUMMY3", value: 31)
!38 = !DIEnumerator(name: "F_DUMMY3FD", value: 32)
!39 = !DIEnumerator(name: "F_DUMMY3FAD", value: 33)
!40 = !DIEnumerator(name: "F_DUMMY3OUT", value: 34)
!41 = !DIEnumerator(name: "F_DUMMY4FD", value: 35)
!42 = !DIEnumerator(name: "F_EQM", value: 36)
!43 = !DIEnumerator(name: "F_EPOT", value: 37)
!44 = !DIEnumerator(name: "F_EKIN", value: 38)
!45 = !DIEnumerator(name: "F_ETOT", value: 39)
!46 = !DIEnumerator(name: "F_TEMP", value: 40)
!47 = !DIEnumerator(name: "F_PRES", value: 41)
!48 = !DIEnumerator(name: "F_DVDL", value: 42)
!49 = !DIEnumerator(name: "F_DVDLKIN", value: 43)
!50 = !DIEnumerator(name: "F_NRE", value: 44)
!51 = !{!52, !53, !58, !59}
!52 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!53 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !54, line: 30, baseType: !55)
!54 = !DIFile(filename: "/usr/include/sys/_types/_size_t.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!55 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_size_t", file: !56, line: 92, baseType: !57)
!56 = !DIFile(filename: "/usr/include/i386/_types.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!57 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!59 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64, align: 64)
!60 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_dih", file: !61, line: 56, baseType: !62)
!61 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/nrama.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!62 = !DICompositeType(tag: DW_TAG_structure_type, file: !61, line: 51, size: 224, align: 32, elements: !63)
!63 = !{!64, !71, !72, !75}
!64 = !DIDerivedType(tag: DW_TAG_member, name: "ai", scope: !62, file: !61, line: 52, baseType: !65, size: 128, align: 32)
!65 = !DICompositeType(tag: DW_TAG_array_type, baseType: !66, size: 128, align: 32, elements: !69)
!66 = !DIDerivedType(tag: DW_TAG_typedef, name: "atom_id", file: !67, line: 73, baseType: !68)
!67 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/types/simple.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!68 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!69 = !{!70}
!70 = !DISubrange(count: 4)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "mult", scope: !62, file: !61, line: 53, baseType: !68, size: 32, align: 32, offset: 128)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "phi0", scope: !62, file: !61, line: 54, baseType: !73, size: 32, align: 32, offset: 160)
!73 = !DIDerivedType(tag: DW_TAG_typedef, name: "real", file: !67, line: 87, baseType: !74)
!74 = !DIBasicType(name: "float", size: 32, align: 32, encoding: DW_ATE_float)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "ang", scope: !62, file: !61, line: 55, baseType: !73, size: 32, align: 32, offset: 192)
!76 = !{!77, !143, !149, !321, !329, !343, !424, !433, !445, !458, !468}
!77 = !DISubprogram(name: "__sputc", scope: !78, file: !78, line: 348, type: !79, isLocal: false, isDefinition: true, scopeLine: 348, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32, %struct.__sFILE*)* @__sputc, variables: !140)
!78 = !DIFile(filename: "/usr/include/stdio.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!79 = !DISubroutineType(types: !80)
!80 = !{!68, !68, !81}
!81 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 64, align: 64)
!82 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !78, line: 153, baseType: !83)
!83 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !78, line: 122, size: 1216, align: 64, elements: !84)
!84 = !{!85, !88, !89, !90, !92, !93, !98, !99, !100, !104, !109, !118, !124, !125, !128, !129, !133, !137, !138, !139}
!85 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !83, file: !78, line: 123, baseType: !86, size: 64, align: 64)
!86 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64, align: 64)
!87 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !83, file: !78, line: 124, baseType: !68, size: 32, align: 32, offset: 64)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !83, file: !78, line: 125, baseType: !68, size: 32, align: 32, offset: 96)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !83, file: !78, line: 126, baseType: !91, size: 16, align: 16, offset: 128)
!91 = !DIBasicType(name: "short", size: 16, align: 16, encoding: DW_ATE_signed)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !83, file: !78, line: 127, baseType: !91, size: 16, align: 16, offset: 144)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !83, file: !78, line: 128, baseType: !94, size: 128, align: 64, offset: 192)
!94 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !78, line: 88, size: 128, align: 64, elements: !95)
!95 = !{!96, !97}
!96 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !94, file: !78, line: 89, baseType: !86, size: 64, align: 64)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !94, file: !78, line: 90, baseType: !68, size: 32, align: 32, offset: 64)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !83, file: !78, line: 129, baseType: !68, size: 32, align: 32, offset: 320)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !83, file: !78, line: 132, baseType: !58, size: 64, align: 64, offset: 384)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !83, file: !78, line: 133, baseType: !101, size: 64, align: 64, offset: 448)
!101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !102, size: 64, align: 64)
!102 = !DISubroutineType(types: !103)
!103 = !{!68, !58}
!104 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !83, file: !78, line: 134, baseType: !105, size: 64, align: 64, offset: 512)
!105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !106, size: 64, align: 64)
!106 = !DISubroutineType(types: !107)
!107 = !{!68, !58, !108, !68}
!108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64, align: 64)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !83, file: !78, line: 135, baseType: !110, size: 64, align: 64, offset: 576)
!110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !111, size: 64, align: 64)
!111 = !DISubroutineType(types: !112)
!112 = !{!113, !58, !113, !68}
!113 = !DIDerivedType(tag: DW_TAG_typedef, name: "fpos_t", file: !78, line: 77, baseType: !114)
!114 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_off_t", file: !115, line: 71, baseType: !116)
!115 = !DIFile(filename: "/usr/include/sys/_types.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!116 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !56, line: 46, baseType: !117)
!117 = !DIBasicType(name: "long long int", size: 64, align: 64, encoding: DW_ATE_signed)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !83, file: !78, line: 136, baseType: !119, size: 64, align: 64, offset: 640)
!119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !120, size: 64, align: 64)
!120 = !DISubroutineType(types: !121)
!121 = !{!68, !58, !122, !68}
!122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64, align: 64)
!123 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !52)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !83, file: !78, line: 139, baseType: !94, size: 128, align: 64, offset: 704)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "_extra", scope: !83, file: !78, line: 140, baseType: !126, size: 64, align: 64, offset: 832)
!126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !127, size: 64, align: 64)
!127 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILEX", file: !78, line: 94, flags: DIFlagFwdDecl)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !83, file: !78, line: 141, baseType: !68, size: 32, align: 32, offset: 896)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !83, file: !78, line: 144, baseType: !130, size: 24, align: 8, offset: 928)
!130 = !DICompositeType(tag: DW_TAG_array_type, baseType: !87, size: 24, align: 8, elements: !131)
!131 = !{!132}
!132 = !DISubrange(count: 3)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !83, file: !78, line: 145, baseType: !134, size: 8, align: 8, offset: 952)
!134 = !DICompositeType(tag: DW_TAG_array_type, baseType: !87, size: 8, align: 8, elements: !135)
!135 = !{!136}
!136 = !DISubrange(count: 1)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !83, file: !78, line: 148, baseType: !94, size: 128, align: 64, offset: 960)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !83, file: !78, line: 151, baseType: !68, size: 32, align: 32, offset: 1088)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !83, file: !78, line: 152, baseType: !113, size: 64, align: 64, offset: 1152)
!140 = !{!141, !142}
!141 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "_c", arg: 1, scope: !77, file: !78, line: 348, type: !68)
!142 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "_p", arg: 2, scope: !77, file: !78, line: 348, type: !81)
!143 = !DISubprogram(name: "__sigbits", scope: !144, file: !144, line: 114, type: !145, isLocal: false, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32)* @__sigbits, variables: !147)
!144 = !DIFile(filename: "/usr/include/signal.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!145 = !DISubroutineType(types: !146)
!146 = !{!68, !68}
!147 = !{!148}
!148 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__signo", arg: 1, scope: !143, file: !144, line: 114, type: !68)
!149 = !DISubprogram(name: "new_data", scope: !1, file: !1, line: 84, type: !150, isLocal: false, isDefinition: true, scopeLine: 85, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.t_xrama*)* @new_data, variables: !319)
!150 = !DISubroutineType(types: !151)
!151 = !{!68, !152}
!152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !153, size: 64, align: 64)
!153 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_xrama", file: !61, line: 70, baseType: !154)
!154 = !DICompositeType(tag: DW_TAG_structure_type, file: !61, line: 58, size: 896, align: 64, elements: !155)
!155 = !{!156, !157, !158, !159, !168, !169, !170, !171, !172, !173, !177, !181}
!156 = !DIDerivedType(tag: DW_TAG_member, name: "ndih", scope: !154, file: !61, line: 59, baseType: !68, size: 32, align: 32)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "dih", scope: !154, file: !61, line: 60, baseType: !59, size: 64, align: 64, offset: 64)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "npp", scope: !154, file: !61, line: 61, baseType: !68, size: 32, align: 32, offset: 128)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !154, file: !61, line: 62, baseType: !160, size: 64, align: 64, offset: 192)
!160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !161, size: 64, align: 64)
!161 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_phipsi", file: !61, line: 49, baseType: !162)
!162 = !DICompositeType(tag: DW_TAG_structure_type, file: !61, line: 45, size: 192, align: 64, elements: !163)
!163 = !{!164, !165, !166, !167}
!164 = !DIDerivedType(tag: DW_TAG_member, name: "bShow", scope: !162, file: !61, line: 46, baseType: !68, size: 32, align: 32)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "label", scope: !162, file: !61, line: 47, baseType: !108, size: 64, align: 64, offset: 64)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "iphi", scope: !162, file: !61, line: 48, baseType: !68, size: 32, align: 32, offset: 128)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "ipsi", scope: !162, file: !61, line: 48, baseType: !68, size: 32, align: 32, offset: 160)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "traj", scope: !154, file: !61, line: 63, baseType: !68, size: 32, align: 32, offset: 256)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "natoms", scope: !154, file: !61, line: 64, baseType: !68, size: 32, align: 32, offset: 288)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "amin", scope: !154, file: !61, line: 65, baseType: !68, size: 32, align: 32, offset: 320)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "amax", scope: !154, file: !61, line: 65, baseType: !68, size: 32, align: 32, offset: 352)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "t", scope: !154, file: !61, line: 66, baseType: !73, size: 32, align: 32, offset: 384)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !154, file: !61, line: 67, baseType: !174, size: 64, align: 64, offset: 448)
!174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !175, size: 64, align: 64)
!175 = !DIDerivedType(tag: DW_TAG_typedef, name: "rvec", file: !67, line: 101, baseType: !176)
!176 = !DICompositeType(tag: DW_TAG_array_type, baseType: !73, size: 96, align: 32, elements: !131)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "box", scope: !154, file: !61, line: 68, baseType: !178, size: 288, align: 32, offset: 512)
!178 = !DIDerivedType(tag: DW_TAG_typedef, name: "matrix", file: !67, line: 103, baseType: !179)
!179 = !DICompositeType(tag: DW_TAG_array_type, baseType: !73, size: 288, align: 32, elements: !180)
!180 = !{!132, !132}
!181 = !DIDerivedType(tag: DW_TAG_member, name: "idef", scope: !154, file: !61, line: 69, baseType: !182, size: 64, align: 64, offset: 832)
!182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !183, size: 64, align: 64)
!183 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_idef", file: !4, line: 188, baseType: !184)
!184 = !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 179, size: 366336, align: 64, elements: !185)
!185 = !{!186, !187, !188, !189, !192, !304}
!186 = !DIDerivedType(tag: DW_TAG_member, name: "ntypes", scope: !184, file: !4, line: 181, baseType: !68, size: 32, align: 32)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "nodeid", scope: !184, file: !4, line: 182, baseType: !68, size: 32, align: 32, offset: 32)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "atnr", scope: !184, file: !4, line: 183, baseType: !68, size: 32, align: 32, offset: 64)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "functype", scope: !184, file: !4, line: 184, baseType: !190, size: 64, align: 64, offset: 128)
!190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !191, size: 64, align: 64)
!191 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_functype", file: !4, line: 133, baseType: !68)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "iparams", scope: !184, file: !4, line: 185, baseType: !193, size: 64, align: 64, offset: 192)
!193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !194, size: 64, align: 64)
!194 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_iparams", file: !4, line: 131, baseType: !195)
!195 = !DICompositeType(tag: DW_TAG_union_type, file: !4, line: 97, size: 192, align: 32, elements: !196)
!196 = !{!197, !203, !210, !216, !225, !230, !237, !245, !250, !255, !261, !266, !273, !282, !291, !300}
!197 = !DIDerivedType(tag: DW_TAG_member, name: "bham", scope: !195, file: !4, line: 105, baseType: !198, size: 96, align: 32)
!198 = !DICompositeType(tag: DW_TAG_structure_type, scope: !195, file: !4, line: 105, size: 96, align: 32, elements: !199)
!199 = !{!200, !201, !202}
!200 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !198, file: !4, line: 105, baseType: !73, size: 32, align: 32)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !198, file: !4, line: 105, baseType: !73, size: 32, align: 32, offset: 32)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "c", scope: !198, file: !4, line: 105, baseType: !73, size: 32, align: 32, offset: 64)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "harmonic", scope: !195, file: !4, line: 106, baseType: !204, size: 128, align: 32)
!204 = !DICompositeType(tag: DW_TAG_structure_type, scope: !195, file: !4, line: 106, size: 128, align: 32, elements: !205)
!205 = !{!206, !207, !208, !209}
!206 = !DIDerivedType(tag: DW_TAG_member, name: "rA", scope: !204, file: !4, line: 106, baseType: !73, size: 32, align: 32)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "krA", scope: !204, file: !4, line: 106, baseType: !73, size: 32, align: 32, offset: 32)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "rB", scope: !204, file: !4, line: 106, baseType: !73, size: 32, align: 32, offset: 64)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "krB", scope: !204, file: !4, line: 106, baseType: !73, size: 32, align: 32, offset: 96)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "cubic", scope: !195, file: !4, line: 108, baseType: !211, size: 96, align: 32)
!211 = !DICompositeType(tag: DW_TAG_structure_type, scope: !195, file: !4, line: 108, size: 96, align: 32, elements: !212)
!212 = !{!213, !214, !215}
!213 = !DIDerivedType(tag: DW_TAG_member, name: "b0", scope: !211, file: !4, line: 108, baseType: !73, size: 32, align: 32)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "kb", scope: !211, file: !4, line: 108, baseType: !73, size: 32, align: 32, offset: 32)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "kcub", scope: !211, file: !4, line: 108, baseType: !73, size: 32, align: 32, offset: 64)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "wpol", scope: !195, file: !4, line: 110, baseType: !217, size: 192, align: 32)
!217 = !DICompositeType(tag: DW_TAG_structure_type, scope: !195, file: !4, line: 110, size: 192, align: 32, elements: !218)
!218 = !{!219, !220, !221, !222, !223, !224}
!219 = !DIDerivedType(tag: DW_TAG_member, name: "kx", scope: !217, file: !4, line: 110, baseType: !73, size: 32, align: 32)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "ky", scope: !217, file: !4, line: 110, baseType: !73, size: 32, align: 32, offset: 32)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "kz", scope: !217, file: !4, line: 110, baseType: !73, size: 32, align: 32, offset: 64)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "rOH", scope: !217, file: !4, line: 110, baseType: !73, size: 32, align: 32, offset: 96)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "rHH", scope: !217, file: !4, line: 110, baseType: !73, size: 32, align: 32, offset: 128)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "rOD", scope: !217, file: !4, line: 110, baseType: !73, size: 32, align: 32, offset: 160)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "lj", scope: !195, file: !4, line: 111, baseType: !226, size: 64, align: 32)
!226 = !DICompositeType(tag: DW_TAG_structure_type, scope: !195, file: !4, line: 111, size: 64, align: 32, elements: !227)
!227 = !{!228, !229}
!228 = !DIDerivedType(tag: DW_TAG_member, name: "c6", scope: !226, file: !4, line: 111, baseType: !73, size: 32, align: 32)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "c12", scope: !226, file: !4, line: 111, baseType: !73, size: 32, align: 32, offset: 32)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "lj14", scope: !195, file: !4, line: 112, baseType: !231, size: 128, align: 32)
!231 = !DICompositeType(tag: DW_TAG_structure_type, scope: !195, file: !4, line: 112, size: 128, align: 32, elements: !232)
!232 = !{!233, !234, !235, !236}
!233 = !DIDerivedType(tag: DW_TAG_member, name: "c6A", scope: !231, file: !4, line: 112, baseType: !73, size: 32, align: 32)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "c12A", scope: !231, file: !4, line: 112, baseType: !73, size: 32, align: 32, offset: 32)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "c6B", scope: !231, file: !4, line: 112, baseType: !73, size: 32, align: 32, offset: 64)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "c12B", scope: !231, file: !4, line: 112, baseType: !73, size: 32, align: 32, offset: 96)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "pdihs", scope: !195, file: !4, line: 117, baseType: !238, size: 160, align: 32)
!238 = !DICompositeType(tag: DW_TAG_structure_type, scope: !195, file: !4, line: 117, size: 160, align: 32, elements: !239)
!239 = !{!240, !241, !242, !243, !244}
!240 = !DIDerivedType(tag: DW_TAG_member, name: "phiA", scope: !238, file: !4, line: 117, baseType: !73, size: 32, align: 32)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "cpA", scope: !238, file: !4, line: 117, baseType: !73, size: 32, align: 32, offset: 32)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "mult", scope: !238, file: !4, line: 117, baseType: !68, size: 32, align: 32, offset: 64)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "phiB", scope: !238, file: !4, line: 117, baseType: !73, size: 32, align: 32, offset: 96)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "cpB", scope: !238, file: !4, line: 117, baseType: !73, size: 32, align: 32, offset: 128)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "shake", scope: !195, file: !4, line: 118, baseType: !246, size: 64, align: 32)
!246 = !DICompositeType(tag: DW_TAG_structure_type, scope: !195, file: !4, line: 118, size: 64, align: 32, elements: !247)
!247 = !{!248, !249}
!248 = !DIDerivedType(tag: DW_TAG_member, name: "dA", scope: !246, file: !4, line: 118, baseType: !73, size: 32, align: 32)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "dB", scope: !246, file: !4, line: 118, baseType: !73, size: 32, align: 32, offset: 32)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "settle", scope: !195, file: !4, line: 123, baseType: !251, size: 64, align: 32)
!251 = !DICompositeType(tag: DW_TAG_structure_type, scope: !195, file: !4, line: 123, size: 64, align: 32, elements: !252)
!252 = !{!253, !254}
!253 = !DIDerivedType(tag: DW_TAG_member, name: "doh", scope: !251, file: !4, line: 123, baseType: !73, size: 32, align: 32)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "dhh", scope: !251, file: !4, line: 123, baseType: !73, size: 32, align: 32, offset: 32)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "morse", scope: !195, file: !4, line: 124, baseType: !256, size: 96, align: 32)
!256 = !DICompositeType(tag: DW_TAG_structure_type, scope: !195, file: !4, line: 124, size: 96, align: 32, elements: !257)
!257 = !{!258, !259, !260}
!258 = !DIDerivedType(tag: DW_TAG_member, name: "b0", scope: !256, file: !4, line: 124, baseType: !73, size: 32, align: 32)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "cb", scope: !256, file: !4, line: 124, baseType: !73, size: 32, align: 32, offset: 32)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "beta", scope: !256, file: !4, line: 124, baseType: !73, size: 32, align: 32, offset: 64)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "posres", scope: !195, file: !4, line: 125, baseType: !262, size: 192, align: 32)
!262 = !DICompositeType(tag: DW_TAG_structure_type, scope: !195, file: !4, line: 125, size: 192, align: 32, elements: !263)
!263 = !{!264, !265}
!264 = !DIDerivedType(tag: DW_TAG_member, name: "pos0", scope: !262, file: !4, line: 125, baseType: !176, size: 96, align: 32)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "fc", scope: !262, file: !4, line: 125, baseType: !176, size: 96, align: 32, offset: 96)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "rbdihs", scope: !195, file: !4, line: 126, baseType: !267, size: 192, align: 32)
!267 = !DICompositeType(tag: DW_TAG_structure_type, scope: !195, file: !4, line: 126, size: 192, align: 32, elements: !268)
!268 = !{!269}
!269 = !DIDerivedType(tag: DW_TAG_member, name: "rbc", scope: !267, file: !4, line: 126, baseType: !270, size: 192, align: 32)
!270 = !DICompositeType(tag: DW_TAG_array_type, baseType: !73, size: 192, align: 32, elements: !271)
!271 = !{!272}
!272 = !DISubrange(count: 6)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "dummy", scope: !195, file: !4, line: 127, baseType: !274, size: 192, align: 32)
!274 = !DICompositeType(tag: DW_TAG_structure_type, scope: !195, file: !4, line: 127, size: 192, align: 32, elements: !275)
!275 = !{!276, !277, !278, !279, !280, !281}
!276 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !274, file: !4, line: 127, baseType: !73, size: 32, align: 32)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !274, file: !4, line: 127, baseType: !73, size: 32, align: 32, offset: 32)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "c", scope: !274, file: !4, line: 127, baseType: !73, size: 32, align: 32, offset: 64)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !274, file: !4, line: 127, baseType: !73, size: 32, align: 32, offset: 96)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "e", scope: !274, file: !4, line: 127, baseType: !73, size: 32, align: 32, offset: 128)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "f", scope: !274, file: !4, line: 127, baseType: !73, size: 32, align: 32, offset: 160)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "disres", scope: !195, file: !4, line: 128, baseType: !283, size: 192, align: 32)
!283 = !DICompositeType(tag: DW_TAG_structure_type, scope: !195, file: !4, line: 128, size: 192, align: 32, elements: !284)
!284 = !{!285, !286, !287, !288, !289, !290}
!285 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !283, file: !4, line: 128, baseType: !73, size: 32, align: 32)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "up1", scope: !283, file: !4, line: 128, baseType: !73, size: 32, align: 32, offset: 32)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "up2", scope: !283, file: !4, line: 128, baseType: !73, size: 32, align: 32, offset: 64)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "kfac", scope: !283, file: !4, line: 128, baseType: !73, size: 32, align: 32, offset: 96)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !283, file: !4, line: 128, baseType: !68, size: 32, align: 32, offset: 128)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "label", scope: !283, file: !4, line: 128, baseType: !68, size: 32, align: 32, offset: 160)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "orires", scope: !195, file: !4, line: 129, baseType: !292, size: 192, align: 32)
!292 = !DICompositeType(tag: DW_TAG_structure_type, scope: !195, file: !4, line: 129, size: 192, align: 32, elements: !293)
!293 = !{!294, !295, !296, !297, !298, !299}
!294 = !DIDerivedType(tag: DW_TAG_member, name: "ex", scope: !292, file: !4, line: 129, baseType: !68, size: 32, align: 32)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "pow", scope: !292, file: !4, line: 129, baseType: !68, size: 32, align: 32, offset: 32)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "label", scope: !292, file: !4, line: 129, baseType: !68, size: 32, align: 32, offset: 64)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "c", scope: !292, file: !4, line: 129, baseType: !73, size: 32, align: 32, offset: 96)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "obs", scope: !292, file: !4, line: 129, baseType: !73, size: 32, align: 32, offset: 128)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "kfac", scope: !292, file: !4, line: 129, baseType: !73, size: 32, align: 32, offset: 160)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "generic", scope: !195, file: !4, line: 130, baseType: !301, size: 192, align: 32)
!301 = !DICompositeType(tag: DW_TAG_structure_type, scope: !195, file: !4, line: 130, size: 192, align: 32, elements: !302)
!302 = !{!303}
!303 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !301, file: !4, line: 130, baseType: !270, size: 192, align: 32)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "il", scope: !184, file: !4, line: 187, baseType: !305, size: 366080, align: 64, offset: 256)
!305 = !DICompositeType(tag: DW_TAG_array_type, baseType: !306, size: 366080, align: 64, elements: !317)
!306 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_ilist", file: !4, line: 140, baseType: !307)
!307 = !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 135, size: 8320, align: 64, elements: !308)
!308 = !{!309, !310, !314}
!309 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !307, file: !4, line: 137, baseType: !68, size: 32, align: 32)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "multinr", scope: !307, file: !4, line: 138, baseType: !311, size: 8192, align: 32, offset: 32)
!311 = !DICompositeType(tag: DW_TAG_array_type, baseType: !68, size: 8192, align: 32, elements: !312)
!312 = !{!313}
!313 = !DISubrange(count: 256)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "iatoms", scope: !307, file: !4, line: 139, baseType: !315, size: 64, align: 64, offset: 8256)
!315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !316, size: 64, align: 64)
!316 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_iatom", file: !4, line: 45, baseType: !66)
!317 = !{!318}
!318 = !DISubrange(count: 44)
!319 = !{!320}
!320 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "xr", arg: 1, scope: !149, file: !1, line: 84, type: !152)
!321 = !DISubprogram(name: "init_rama", scope: !1, file: !1, line: 291, type: !322, isLocal: false, isDefinition: true, scopeLine: 292, flags: DIFlagPrototyped, isOptimized: true, function: void (i8*, i8*, %struct.t_xrama*)* @init_rama, variables: !324)
!322 = !DISubroutineType(types: !323)
!323 = !{null, !108, !108, !152}
!324 = !{!325, !326, !327, !328}
!325 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "infile", arg: 1, scope: !321, file: !1, line: 291, type: !108)
!326 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "topfile", arg: 2, scope: !321, file: !1, line: 291, type: !108)
!327 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "xr", arg: 3, scope: !321, file: !1, line: 291, type: !152)
!328 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "t", scope: !321, file: !1, line: 294, type: !73)
!329 = !DISubprogram(name: "calc_dihs", scope: !1, file: !1, line: 66, type: !330, isLocal: true, isDefinition: true, scopeLine: 67, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.t_xrama*)* @calc_dihs, variables: !332)
!330 = !DISubroutineType(types: !331)
!331 = !{null, !152}
!332 = !{!333, !334, !335, !336, !337, !338, !339, !340, !341, !342}
!333 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "xr", arg: 1, scope: !329, file: !1, line: 66, type: !152)
!334 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !329, file: !1, line: 68, type: !68)
!335 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "r_ij", scope: !329, file: !1, line: 69, type: !175)
!336 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "r_kj", scope: !329, file: !1, line: 69, type: !175)
!337 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "r_kl", scope: !329, file: !1, line: 69, type: !175)
!338 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "m", scope: !329, file: !1, line: 69, type: !175)
!339 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "n", scope: !329, file: !1, line: 69, type: !175)
!340 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cos_phi", scope: !329, file: !1, line: 70, type: !73)
!341 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "sign", scope: !329, file: !1, line: 70, type: !73)
!342 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "dd", scope: !329, file: !1, line: 71, type: !59)
!343 = !DISubprogram(name: "get_dih", scope: !1, file: !1, line: 126, type: !344, isLocal: true, isDefinition: true, scopeLine: 127, flags: DIFlagPrototyped, isOptimized: true, variables: !414)
!344 = !DISubroutineType(types: !345)
!345 = !{null, !152, !346}
!346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !347, size: 64, align: 64)
!347 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_atoms", file: !348, line: 94, baseType: !349)
!348 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/types/atoms.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!349 = !DICompositeType(tag: DW_TAG_structure_type, file: !348, line: 75, size: 10240, align: 64, elements: !350)
!350 = !{!351, !352, !371, !374, !375, !376, !377, !378, !379, !380, !391, !399}
!351 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !349, file: !348, line: 76, baseType: !68, size: 32, align: 32)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "atom", scope: !349, file: !348, line: 77, baseType: !353, size: 64, align: 64, offset: 64)
!353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !354, size: 64, align: 64)
!354 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_atom", file: !348, line: 57, baseType: !355)
!355 = !DICompositeType(tag: DW_TAG_structure_type, file: !348, line: 48, size: 320, align: 32, elements: !356)
!356 = !{!357, !358, !359, !360, !361, !363, !364, !365, !366, !370}
!357 = !DIDerivedType(tag: DW_TAG_member, name: "m", scope: !355, file: !348, line: 49, baseType: !73, size: 32, align: 32)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !355, file: !348, line: 49, baseType: !73, size: 32, align: 32, offset: 32)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "mB", scope: !355, file: !348, line: 50, baseType: !73, size: 32, align: 32, offset: 64)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "qB", scope: !355, file: !348, line: 50, baseType: !73, size: 32, align: 32, offset: 96)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !355, file: !348, line: 51, baseType: !362, size: 16, align: 16, offset: 128)
!362 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "typeB", scope: !355, file: !348, line: 52, baseType: !362, size: 16, align: 16, offset: 144)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "ptype", scope: !355, file: !348, line: 53, baseType: !68, size: 32, align: 32, offset: 160)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "resnr", scope: !355, file: !348, line: 54, baseType: !68, size: 32, align: 32, offset: 192)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "grpnr", scope: !355, file: !348, line: 55, baseType: !367, size: 72, align: 8, offset: 224)
!367 = !DICompositeType(tag: DW_TAG_array_type, baseType: !87, size: 72, align: 8, elements: !368)
!368 = !{!369}
!369 = !DISubrange(count: 9)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "chain", scope: !355, file: !348, line: 56, baseType: !87, size: 8, align: 8, offset: 296)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "atomname", scope: !349, file: !348, line: 80, baseType: !372, size: 64, align: 64, offset: 128)
!372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !373, size: 64, align: 64)
!373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 64, align: 64)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "atomtype", scope: !349, file: !348, line: 82, baseType: !372, size: 64, align: 64, offset: 192)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "atomtypeB", scope: !349, file: !348, line: 84, baseType: !372, size: 64, align: 64, offset: 256)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "nres", scope: !349, file: !348, line: 86, baseType: !68, size: 32, align: 32, offset: 320)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "resname", scope: !349, file: !348, line: 87, baseType: !372, size: 64, align: 64, offset: 384)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "ngrpname", scope: !349, file: !348, line: 89, baseType: !68, size: 32, align: 32, offset: 448)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "grpname", scope: !349, file: !348, line: 90, baseType: !372, size: 64, align: 64, offset: 512)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "excl", scope: !349, file: !348, line: 91, baseType: !381, size: 8448, align: 64, offset: 576)
!381 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_block", file: !382, line: 52, baseType: !383)
!382 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/types/block.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!383 = !DICompositeType(tag: DW_TAG_structure_type, file: !382, line: 36, size: 8448, align: 64, elements: !384)
!384 = !{!385, !386, !387, !389, !390}
!385 = !DIDerivedType(tag: DW_TAG_member, name: "multinr", scope: !383, file: !382, line: 37, baseType: !311, size: 8192, align: 32)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !383, file: !382, line: 43, baseType: !68, size: 32, align: 32, offset: 8192)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !383, file: !382, line: 44, baseType: !388, size: 64, align: 64, offset: 8256)
!388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64, align: 64)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "nra", scope: !383, file: !382, line: 45, baseType: !68, size: 32, align: 32, offset: 8320)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !383, file: !382, line: 46, baseType: !388, size: 64, align: 64, offset: 8384)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "grps", scope: !349, file: !348, line: 92, baseType: !392, size: 1152, align: 64, offset: 9024)
!392 = !DICompositeType(tag: DW_TAG_array_type, baseType: !393, size: 1152, align: 64, elements: !368)
!393 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_grps", file: !348, line: 73, baseType: !394)
!394 = !DICompositeType(tag: DW_TAG_structure_type, file: !348, line: 70, size: 128, align: 64, elements: !395)
!395 = !{!396, !397}
!396 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !394, file: !348, line: 71, baseType: !68, size: 32, align: 32)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "nm_ind", scope: !394, file: !348, line: 72, baseType: !398, size: 64, align: 64, offset: 64)
!398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64, align: 64)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "pdbinfo", scope: !349, file: !348, line: 93, baseType: !400, size: 64, align: 64, offset: 10176)
!400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !401, size: 64, align: 64)
!401 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_pdbinfo", file: !348, line: 68, baseType: !402)
!402 = !DICompositeType(tag: DW_TAG_structure_type, file: !348, line: 59, size: 416, align: 32, elements: !403)
!403 = !{!404, !405, !406, !407, !409, !410, !411, !412}
!404 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !402, file: !348, line: 60, baseType: !68, size: 32, align: 32)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "atomnr", scope: !402, file: !348, line: 61, baseType: !68, size: 32, align: 32, offset: 32)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "altloc", scope: !402, file: !348, line: 62, baseType: !52, size: 8, align: 8, offset: 64)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "pdbresnr", scope: !402, file: !348, line: 63, baseType: !408, size: 48, align: 8, offset: 72)
!408 = !DICompositeType(tag: DW_TAG_array_type, baseType: !52, size: 48, align: 8, elements: !271)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "occup", scope: !402, file: !348, line: 64, baseType: !73, size: 32, align: 32, offset: 128)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "bfac", scope: !402, file: !348, line: 65, baseType: !73, size: 32, align: 32, offset: 160)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "bAnisotropic", scope: !402, file: !348, line: 66, baseType: !68, size: 32, align: 32, offset: 192)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "uij", scope: !402, file: !348, line: 67, baseType: !413, size: 192, align: 32, offset: 224)
!413 = !DICompositeType(tag: DW_TAG_array_type, baseType: !68, size: 192, align: 32, elements: !271)
!414 = !{!415, !416, !417, !418, !422, !423}
!415 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "xr", arg: 1, scope: !343, file: !1, line: 126, type: !152)
!416 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "atoms", arg: 2, scope: !343, file: !1, line: 126, type: !346)
!417 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "found", scope: !343, file: !1, line: 128, type: !68)
!418 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ff", scope: !343, file: !1, line: 128, type: !419)
!419 = !DICompositeType(tag: DW_TAG_array_type, baseType: !68, size: 160, align: 32, elements: !420)
!420 = !{!421}
!421 = !DISubrange(count: 5)
!422 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !343, file: !1, line: 129, type: !68)
!423 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "j", scope: !343, file: !1, line: 129, type: !68)
!424 = !DISubprogram(name: "find_atom", scope: !1, file: !1, line: 94, type: !425, isLocal: true, isDefinition: true, scopeLine: 95, flags: DIFlagPrototyped, isOptimized: true, variables: !427)
!425 = !DISubroutineType(types: !426)
!426 = !{!68, !108, !372, !68, !68}
!427 = !{!428, !429, !430, !431, !432}
!428 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "find", arg: 1, scope: !424, file: !1, line: 94, type: !108)
!429 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "names", arg: 2, scope: !424, file: !1, line: 94, type: !372)
!430 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "start", arg: 3, scope: !424, file: !1, line: 94, type: !68)
!431 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nr", arg: 4, scope: !424, file: !1, line: 94, type: !68)
!432 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !424, file: !1, line: 96, type: !68)
!433 = !DISubprogram(name: "add_xr", scope: !1, file: !1, line: 104, type: !434, isLocal: true, isDefinition: true, scopeLine: 105, flags: DIFlagPrototyped, isOptimized: true, variables: !436)
!434 = !DISubroutineType(types: !435)
!435 = !{null, !152, !398, !346}
!436 = !{!437, !438, !439, !440, !444}
!437 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "xr", arg: 1, scope: !433, file: !1, line: 104, type: !152)
!438 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ff", arg: 2, scope: !433, file: !1, line: 104, type: !398)
!439 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "atoms", arg: 3, scope: !433, file: !1, line: 104, type: !346)
!440 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "buf", scope: !433, file: !1, line: 106, type: !441)
!441 = !DICompositeType(tag: DW_TAG_array_type, baseType: !52, size: 96, align: 8, elements: !442)
!442 = !{!443}
!443 = !DISubrange(count: 12)
!444 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !433, file: !1, line: 107, type: !68)
!445 = !DISubprogram(name: "get_dih_props", scope: !1, file: !1, line: 259, type: !446, isLocal: true, isDefinition: true, scopeLine: 260, flags: DIFlagPrototyped, isOptimized: true, variables: !448)
!446 = !DISubroutineType(types: !447)
!447 = !{null, !152, !182}
!448 = !{!449, !450, !451, !452, !453, !454, !455, !456, !457}
!449 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "xr", arg: 1, scope: !445, file: !1, line: 259, type: !152)
!450 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "idef", arg: 2, scope: !445, file: !1, line: 259, type: !182)
!451 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !445, file: !1, line: 261, type: !68)
!452 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ft", scope: !445, file: !1, line: 261, type: !68)
!453 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ftype", scope: !445, file: !1, line: 261, type: !68)
!454 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nra", scope: !445, file: !1, line: 261, type: !68)
!455 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ia", scope: !445, file: !1, line: 262, type: !315)
!456 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "dd", scope: !445, file: !1, line: 263, type: !59)
!457 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "key", scope: !445, file: !1, line: 263, type: !60)
!458 = !DISubprogram(name: "d_comp", scope: !1, file: !1, line: 50, type: !459, isLocal: true, isDefinition: true, scopeLine: 51, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i8*, i8*)* @d_comp, variables: !463)
!459 = !DISubroutineType(types: !460)
!460 = !{!68, !461, !461}
!461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !462, size: 64, align: 64)
!462 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!463 = !{!464, !465, !466, !467}
!464 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "a", arg: 1, scope: !458, file: !1, line: 50, type: !461)
!465 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "b", arg: 2, scope: !458, file: !1, line: 50, type: !461)
!466 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "da", scope: !458, file: !1, line: 52, type: !59)
!467 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "db", scope: !458, file: !1, line: 52, type: !59)
!468 = !DISubprogram(name: "min_max", scope: !1, file: !1, line: 243, type: !330, isLocal: true, isDefinition: true, scopeLine: 244, flags: DIFlagPrototyped, isOptimized: true, variables: !469)
!469 = !{!470, !471, !472, !473}
!470 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "xr", arg: 1, scope: !468, file: !1, line: 243, type: !152)
!471 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ai", scope: !468, file: !1, line: 245, type: !68)
!472 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !468, file: !1, line: 245, type: !68)
!473 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "j", scope: !468, file: !1, line: 245, type: !68)
!474 = !{!475, !501}
!475 = !DIGlobalVariable(name: "top", scope: !321, file: !1, line: 293, type: !476, isLocal: true, isDefinition: true, variable: %struct.t_topology** @init_rama.top)
!476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !477, size: 64, align: 64)
!477 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_topology", file: !478, line: 42, baseType: !479)
!478 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/types/topology.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!479 = !DICompositeType(tag: DW_TAG_structure_type, file: !478, line: 36, size: 402112, align: 64, elements: !480)
!480 = !{!481, !482, !483, !484, !486}
!481 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !479, file: !478, line: 37, baseType: !373, size: 64, align: 64)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "idef", scope: !479, file: !478, line: 38, baseType: !183, size: 366336, align: 64, offset: 64)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "atoms", scope: !479, file: !478, line: 39, baseType: !347, size: 10240, align: 64, offset: 366400)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !479, file: !478, line: 40, baseType: !485, size: 25344, align: 64, offset: 376640)
!485 = !DICompositeType(tag: DW_TAG_array_type, baseType: !381, size: 25344, align: 64, elements: !131)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !479, file: !478, line: 41, baseType: !487, size: 128, align: 64, offset: 401984)
!487 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_symtab", file: !488, line: 46, baseType: !489)
!488 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/types/symtab.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!489 = !DICompositeType(tag: DW_TAG_structure_type, file: !488, line: 42, size: 128, align: 64, elements: !490)
!490 = !{!491, !492}
!491 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !489, file: !488, line: 44, baseType: !68, size: 32, align: 32)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "symbuf", scope: !489, file: !488, line: 45, baseType: !493, size: 64, align: 64, offset: 64)
!493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !494, size: 64, align: 64)
!494 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_symbuf", file: !488, line: 40, baseType: !495)
!495 = !DICompositeType(tag: DW_TAG_structure_type, name: "symbuf", file: !488, line: 36, size: 192, align: 64, elements: !496)
!496 = !{!497, !498, !499}
!497 = !DIDerivedType(tag: DW_TAG_member, name: "bufsize", scope: !495, file: !488, line: 37, baseType: !68, size: 32, align: 32)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !495, file: !488, line: 38, baseType: !373, size: 64, align: 64, offset: 64)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !495, file: !488, line: 39, baseType: !500, size: 64, align: 64, offset: 128)
!500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !495, size: 64, align: 64)
!501 = !DIGlobalVariable(name: "pp_pat", scope: !0, file: !1, line: 47, type: !502, isLocal: true, isDefinition: true, variable: [5 x i8*]* @pp_pat)
!502 = !DICompositeType(tag: DW_TAG_array_type, baseType: !108, size: 320, align: 64, elements: !420)
!503 = !{}
!504 = !{i32 2, !"Dwarf Version", i32 2}
!505 = !{i32 2, !"Debug Info Version", i32 700000003}
!506 = !{i32 1, !"PIC Level", i32 2}
!507 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!508 = !DIExpression()
!509 = !DILocation(line: 348, column: 40, scope: !77)
!510 = !DILocation(line: 348, column: 50, scope: !77)
!511 = !DILocation(line: 349, column: 12, scope: !512)
!512 = distinct !DILexicalBlock(scope: !77, file: !78, line: 349, column: 6)
!513 = !DILocation(line: 349, column: 6, scope: !512)
!514 = !{!515, !519, i64 12}
!515 = !{!"__sFILE", !516, i64 0, !519, i64 8, !519, i64 12, !520, i64 16, !520, i64 18, !521, i64 24, !519, i64 40, !516, i64 48, !516, i64 56, !516, i64 64, !516, i64 72, !516, i64 80, !521, i64 88, !516, i64 104, !519, i64 112, !517, i64 116, !517, i64 119, !521, i64 120, !519, i64 136, !522, i64 144}
!516 = !{!"any pointer", !517, i64 0}
!517 = !{!"omnipotent char", !518, i64 0}
!518 = !{!"Simple C/C++ TBAA"}
!519 = !{!"int", !517, i64 0}
!520 = !{!"short", !517, i64 0}
!521 = !{!"__sbuf", !516, i64 0, !519, i64 8}
!522 = !{!"long long", !517, i64 0}
!523 = !DILocation(line: 349, column: 15, scope: !512)
!524 = !DILocation(line: 349, column: 20, scope: !512)
!525 = !DILocation(line: 350, column: 10, scope: !512)
!526 = !DILocation(line: 349, column: 38, scope: !512)
!527 = !{!515, !519, i64 40}
!528 = !DILocation(line: 349, column: 31, scope: !512)
!529 = !DILocation(line: 349, column: 59, scope: !512)
!530 = !DILocation(line: 349, column: 47, scope: !512)
!531 = !DILocation(line: 350, column: 23, scope: !512)
!532 = !DILocation(line: 350, column: 16, scope: !512)
!533 = !DILocation(line: 350, column: 18, scope: !512)
!534 = !{!515, !516, i64 0}
!535 = !DILocation(line: 350, column: 21, scope: !512)
!536 = !{!517, !517, i64 0}
!537 = !DILocation(line: 350, column: 3, scope: !512)
!538 = !DILocation(line: 352, column: 11, scope: !512)
!539 = !DILocation(line: 352, column: 3, scope: !512)
!540 = !DILocation(line: 353, column: 1, scope: !77)
!541 = !DILocation(line: 114, column: 15, scope: !143)
!542 = !DILocation(line: 116, column: 20, scope: !143)
!543 = !DILocation(line: 116, column: 12, scope: !143)
!544 = !DILocation(line: 116, column: 57, scope: !143)
!545 = !DILocation(line: 116, column: 45, scope: !143)
!546 = !DILocation(line: 116, column: 5, scope: !143)
!547 = !DILocation(line: 84, column: 24, scope: !149)
!548 = !DILocation(line: 86, column: 24, scope: !549)
!549 = distinct !DILexicalBlock(scope: !149, file: !1, line: 86, column: 7)
!550 = !{!551, !519, i64 32}
!551 = !{!"", !519, i64 0, !516, i64 8, !519, i64 16, !516, i64 24, !519, i64 32, !519, i64 36, !519, i64 40, !519, i64 44, !552, i64 48, !516, i64 56, !517, i64 64, !516, i64 104}
!552 = !{!"float", !517, i64 0}
!553 = !DILocation(line: 86, column: 34, scope: !549)
!554 = !DILocation(line: 86, column: 40, scope: !549)
!555 = !{!551, !519, i64 36}
!556 = !DILocation(line: 86, column: 51, scope: !549)
!557 = !{!551, !516, i64 56}
!558 = !DILocation(line: 86, column: 53, scope: !549)
!559 = !DILocation(line: 86, column: 8, scope: !549)
!560 = !DILocation(line: 86, column: 7, scope: !149)
!561 = !DILocation(line: 89, column: 3, scope: !149)
!562 = !DILocation(line: 91, column: 3, scope: !149)
!563 = !DILocation(line: 92, column: 1, scope: !149)
!564 = !DILocation(line: 66, column: 32, scope: !329)
!565 = !DILocation(line: 69, column: 10, scope: !329)
!566 = !DILocation(line: 69, column: 15, scope: !329)
!567 = !DILocation(line: 69, column: 20, scope: !329)
!568 = !DILocation(line: 69, column: 25, scope: !329)
!569 = !DILocation(line: 69, column: 27, scope: !329)
!570 = !DILocation(line: 73, column: 14, scope: !329)
!571 = !{!551, !516, i64 104}
!572 = !DILocation(line: 73, column: 23, scope: !329)
!573 = !DILocation(line: 73, column: 30, scope: !329)
!574 = !DILocation(line: 73, column: 42, scope: !329)
!575 = !DILocation(line: 73, column: 3, scope: !329)
!576 = !DILocation(line: 68, column: 10, scope: !329)
!577 = !DILocation(line: 75, column: 19, scope: !578)
!578 = distinct !DILexicalBlock(scope: !579, file: !1, line: 75, column: 3)
!579 = distinct !DILexicalBlock(scope: !329, file: !1, line: 75, column: 3)
!580 = !{!551, !519, i64 0}
!581 = !DILocation(line: 75, column: 14, scope: !578)
!582 = !DILocation(line: 75, column: 3, scope: !579)
!583 = !DILocation(line: 76, column: 14, scope: !584)
!584 = distinct !DILexicalBlock(scope: !578, file: !1, line: 75, column: 31)
!585 = !DILocation(line: 80, column: 9, scope: !584)
!586 = !DILocation(line: 80, column: 14, scope: !584)
!587 = !DILocation(line: 80, column: 19, scope: !584)
!588 = !DILocation(line: 80, column: 24, scope: !584)
!589 = !DILocation(line: 80, column: 26, scope: !584)
!590 = !{!551, !516, i64 8}
!591 = !DILocation(line: 78, column: 15, scope: !584)
!592 = !{!519, !519, i64 0}
!593 = !DILocation(line: 78, column: 9, scope: !584)
!594 = !DILocation(line: 78, column: 13, scope: !584)
!595 = !DILocation(line: 78, column: 32, scope: !584)
!596 = !DILocation(line: 78, column: 26, scope: !584)
!597 = !DILocation(line: 79, column: 15, scope: !584)
!598 = !DILocation(line: 79, column: 9, scope: !584)
!599 = !DILocation(line: 79, column: 32, scope: !584)
!600 = !DILocation(line: 79, column: 26, scope: !584)
!601 = !DILocation(line: 70, column: 10, scope: !329)
!602 = !DILocation(line: 70, column: 18, scope: !329)
!603 = !DILocation(line: 77, column: 13, scope: !584)
!604 = !DILocation(line: 77, column: 9, scope: !584)
!605 = !DILocation(line: 77, column: 12, scope: !584)
!606 = !{!607, !552, i64 24}
!607 = !{!"", !517, i64 0, !519, i64 16, !552, i64 20, !552, i64 24}
!608 = !DILocation(line: 82, column: 1, scope: !329)
!609 = !DILocation(line: 291, column: 22, scope: !321)
!610 = !DILocation(line: 291, column: 35, scope: !321)
!611 = !DILocation(line: 291, column: 52, scope: !321)
!612 = !DILocation(line: 296, column: 7, scope: !321)
!613 = !DILocation(line: 296, column: 6, scope: !321)
!614 = !{!516, !516, i64 0}
!615 = !DILocation(line: 126, column: 30, scope: !343, inlinedAt: !616)
!616 = distinct !DILocation(line: 299, column: 3, scope: !321)
!617 = !DILocation(line: 129, column: 7, scope: !343, inlinedAt: !616)
!618 = !DILocation(line: 131, column: 22, scope: !619, inlinedAt: !616)
!619 = distinct !DILexicalBlock(scope: !620, file: !1, line: 131, column: 3)
!620 = distinct !DILexicalBlock(scope: !343, file: !1, line: 131, column: 3)
!621 = !{!622, !519, i64 0}
!622 = !{!"", !519, i64 0, !516, i64 8, !516, i64 16, !516, i64 24, !516, i64 32, !519, i64 40, !516, i64 48, !519, i64 56, !516, i64 64, !623, i64 72, !517, i64 1128, !516, i64 1272}
!623 = !{!"", !517, i64 0, !519, i64 1024, !516, i64 1032, !519, i64 1040, !516, i64 1048}
!624 = !DILocation(line: 131, column: 14, scope: !619, inlinedAt: !616)
!625 = !DILocation(line: 131, column: 3, scope: !620, inlinedAt: !616)
!626 = !DILocation(line: 143, column: 56, scope: !343, inlinedAt: !616)
!627 = !DILocation(line: 134, column: 45, scope: !628, inlinedAt: !616)
!628 = distinct !DILexicalBlock(scope: !629, file: !1, line: 134, column: 11)
!629 = distinct !DILexicalBlock(scope: !630, file: !1, line: 133, column: 28)
!630 = distinct !DILexicalBlock(scope: !631, file: !1, line: 133, column: 5)
!631 = distinct !DILexicalBlock(scope: !632, file: !1, line: 133, column: 5)
!632 = distinct !DILexicalBlock(scope: !619, file: !1, line: 131, column: 29)
!633 = !DILocation(line: 140, column: 15, scope: !632, inlinedAt: !616)
!634 = !DILocation(line: 104, column: 29, scope: !433, inlinedAt: !635)
!635 = distinct !DILocation(line: 140, column: 5, scope: !632, inlinedAt: !616)
!636 = !DILocation(line: 109, column: 3, scope: !433, inlinedAt: !635)
!637 = !DILocation(line: 116, column: 3, scope: !433, inlinedAt: !635)
!638 = !DILocation(line: 120, column: 3, scope: !433, inlinedAt: !635)
!639 = !DILocation(line: 299, column: 3, scope: !321)
!640 = !{!622, !516, i64 16}
!641 = !DILocation(line: 98, column: 3, scope: !642, inlinedAt: !643)
!642 = distinct !DILexicalBlock(scope: !424, file: !1, line: 98, column: 3)
!643 = distinct !DILocation(line: 134, column: 18, scope: !628, inlinedAt: !616)
!644 = !DILocation(line: 133, column: 5, scope: !631, inlinedAt: !616)
!645 = !DILocation(line: 134, column: 28, scope: !628, inlinedAt: !616)
!646 = !DILocation(line: 94, column: 28, scope: !424, inlinedAt: !643)
!647 = !DILocation(line: 94, column: 41, scope: !424, inlinedAt: !643)
!648 = !DILocation(line: 94, column: 61, scope: !424, inlinedAt: !643)
!649 = !DILocation(line: 98, column: 18, scope: !650, inlinedAt: !643)
!650 = distinct !DILexicalBlock(scope: !642, file: !1, line: 98, column: 3)
!651 = !DILocation(line: 134, column: 18, scope: !628, inlinedAt: !616)
!652 = !DILocation(line: 99, column: 22, scope: !653, inlinedAt: !643)
!653 = distinct !DILexicalBlock(scope: !650, file: !1, line: 99, column: 9)
!654 = !DILocation(line: 99, column: 21, scope: !653, inlinedAt: !643)
!655 = !DILocation(line: 99, column: 9, scope: !653, inlinedAt: !643)
!656 = !DILocation(line: 99, column: 32, scope: !653, inlinedAt: !643)
!657 = !DILocation(line: 99, column: 9, scope: !650, inlinedAt: !643)
!658 = !DILocation(line: 134, column: 12, scope: !628, inlinedAt: !616)
!659 = !DILocation(line: 134, column: 17, scope: !628, inlinedAt: !616)
!660 = !DILocation(line: 134, column: 11, scope: !629, inlinedAt: !616)
!661 = !DILocation(line: 134, column: 72, scope: !628, inlinedAt: !616)
!662 = !DILocation(line: 136, column: 18, scope: !629, inlinedAt: !616)
!663 = !DILocation(line: 133, column: 24, scope: !630, inlinedAt: !616)
!664 = !DILocation(line: 129, column: 9, scope: !343, inlinedAt: !616)
!665 = !DILocation(line: 133, column: 16, scope: !630, inlinedAt: !616)
!666 = !DILocation(line: 138, column: 11, scope: !667, inlinedAt: !616)
!667 = distinct !DILexicalBlock(scope: !632, file: !1, line: 138, column: 9)
!668 = !DILocation(line: 138, column: 9, scope: !632, inlinedAt: !616)
!669 = !DILocation(line: 104, column: 36, scope: !433, inlinedAt: !635)
!670 = !DILocation(line: 107, column: 7, scope: !433, inlinedAt: !635)
!671 = !DILocation(line: 111, column: 9, scope: !672, inlinedAt: !635)
!672 = distinct !DILexicalBlock(scope: !673, file: !1, line: 110, column: 3)
!673 = distinct !DILexicalBlock(scope: !433, file: !1, line: 110, column: 3)
!674 = !DILocation(line: 110, column: 3, scope: !673, inlinedAt: !635)
!675 = !DILocation(line: 140, column: 5, scope: !632, inlinedAt: !616)
!676 = !DILocation(line: 111, column: 29, scope: !672, inlinedAt: !635)
!677 = !DILocation(line: 111, column: 17, scope: !672, inlinedAt: !635)
!678 = !DILocation(line: 111, column: 5, scope: !672, inlinedAt: !635)
!679 = !DILocation(line: 111, column: 28, scope: !672, inlinedAt: !635)
!680 = !DILocation(line: 112, column: 3, scope: !681, inlinedAt: !635)
!681 = distinct !DILexicalBlock(scope: !433, file: !1, line: 112, column: 3)
!682 = !DILocation(line: 113, column: 31, scope: !683, inlinedAt: !635)
!683 = distinct !DILexicalBlock(scope: !681, file: !1, line: 112, column: 3)
!684 = !DILocation(line: 113, column: 17, scope: !683, inlinedAt: !635)
!685 = !DILocation(line: 113, column: 21, scope: !683, inlinedAt: !635)
!686 = !DILocation(line: 113, column: 5, scope: !683, inlinedAt: !635)
!687 = !DILocation(line: 113, column: 30, scope: !683, inlinedAt: !635)
!688 = !DILocation(line: 114, column: 11, scope: !433, inlinedAt: !635)
!689 = !{!551, !516, i64 24}
!690 = !{!551, !519, i64 16}
!691 = !DILocation(line: 117, column: 28, scope: !433, inlinedAt: !635)
!692 = !DILocation(line: 117, column: 32, scope: !433, inlinedAt: !635)
!693 = !DILocation(line: 117, column: 14, scope: !433, inlinedAt: !635)
!694 = !DILocation(line: 117, column: 3, scope: !433, inlinedAt: !635)
!695 = !DILocation(line: 117, column: 19, scope: !433, inlinedAt: !635)
!696 = !DILocation(line: 117, column: 23, scope: !433, inlinedAt: !635)
!697 = !{!698, !519, i64 16}
!698 = !{!"", !519, i64 0, !516, i64 8, !519, i64 16, !519, i64 20}
!699 = !DILocation(line: 118, column: 32, scope: !433, inlinedAt: !635)
!700 = !DILocation(line: 118, column: 19, scope: !433, inlinedAt: !635)
!701 = !DILocation(line: 118, column: 23, scope: !433, inlinedAt: !635)
!702 = !{!698, !519, i64 20}
!703 = !DILocation(line: 119, column: 19, scope: !433, inlinedAt: !635)
!704 = !DILocation(line: 119, column: 24, scope: !433, inlinedAt: !635)
!705 = !{!698, !519, i64 0}
!706 = !{!622, !516, i64 8}
!707 = !{!708, !519, i64 24}
!708 = !{!"", !552, i64 0, !552, i64 4, !552, i64 8, !552, i64 12, !520, i64 16, !520, i64 18, !519, i64 20, !519, i64 24, !517, i64 28, !517, i64 37}
!709 = !{!622, !516, i64 48}
!710 = !DILocation(line: 122, column: 25, scope: !433, inlinedAt: !635)
!711 = !DILocation(line: 122, column: 14, scope: !433, inlinedAt: !635)
!712 = !DILocation(line: 122, column: 3, scope: !433, inlinedAt: !635)
!713 = !DILocation(line: 122, column: 7, scope: !433, inlinedAt: !635)
!714 = !DILocation(line: 122, column: 19, scope: !433, inlinedAt: !635)
!715 = !DILocation(line: 122, column: 24, scope: !433, inlinedAt: !635)
!716 = !{!698, !516, i64 8}
!717 = !DILocation(line: 123, column: 10, scope: !433, inlinedAt: !635)
!718 = !DILocation(line: 124, column: 1, scope: !433, inlinedAt: !635)
!719 = !DILocation(line: 141, column: 7, scope: !632, inlinedAt: !616)
!720 = !DILocation(line: 141, column: 12, scope: !632, inlinedAt: !616)
!721 = !DILocation(line: 143, column: 11, scope: !343, inlinedAt: !616)
!722 = !DILocation(line: 143, column: 3, scope: !343, inlinedAt: !616)
!723 = !DILocation(line: 144, column: 1, scope: !343, inlinedAt: !616)
!724 = !DILocation(line: 300, column: 22, scope: !321)
!725 = !DILocation(line: 259, column: 36, scope: !445, inlinedAt: !726)
!726 = distinct !DILocation(line: 300, column: 3, scope: !321)
!727 = !DILocation(line: 261, column: 11, scope: !445, inlinedAt: !726)
!728 = !DILocation(line: 266, column: 34, scope: !729, inlinedAt: !726)
!729 = distinct !DILexicalBlock(scope: !730, file: !1, line: 266, column: 3)
!730 = distinct !DILexicalBlock(scope: !445, file: !1, line: 266, column: 3)
!731 = !{!732, !519, i64 0}
!732 = !{!"", !519, i64 0, !517, i64 4, !516, i64 1032}
!733 = !DILocation(line: 266, column: 15, scope: !729, inlinedAt: !726)
!734 = !DILocation(line: 266, column: 3, scope: !730, inlinedAt: !726)
!735 = !DILocation(line: 285, column: 19, scope: !736, inlinedAt: !726)
!736 = distinct !DILexicalBlock(scope: !737, file: !1, line: 285, column: 3)
!737 = distinct !DILexicalBlock(scope: !445, file: !1, line: 285, column: 3)
!738 = !DILocation(line: 265, column: 24, scope: !445, inlinedAt: !726)
!739 = !{!732, !516, i64 1032}
!740 = !DILocation(line: 268, column: 17, scope: !741, inlinedAt: !726)
!741 = distinct !DILexicalBlock(scope: !729, file: !1, line: 266, column: 41)
!742 = !DILocation(line: 273, column: 5, scope: !741, inlinedAt: !726)
!743 = !DILocation(line: 274, column: 5, scope: !741, inlinedAt: !726)
!744 = !DILocation(line: 275, column: 32, scope: !745, inlinedAt: !726)
!745 = distinct !DILexicalBlock(scope: !741, file: !1, line: 275, column: 9)
!746 = !DILocation(line: 275, column: 40, scope: !745, inlinedAt: !726)
!747 = !DILocation(line: 277, column: 22, scope: !748, inlinedAt: !726)
!748 = distinct !DILexicalBlock(scope: !745, file: !1, line: 276, column: 11)
!749 = !DILocation(line: 285, column: 14, scope: !736, inlinedAt: !726)
!750 = !DILocation(line: 285, column: 3, scope: !737, inlinedAt: !726)
!751 = !DILocation(line: 286, column: 13, scope: !752, inlinedAt: !726)
!752 = distinct !DILexicalBlock(scope: !736, file: !1, line: 286, column: 9)
!753 = !DILocation(line: 300, column: 3, scope: !321)
!754 = !DILocation(line: 267, column: 8, scope: !741, inlinedAt: !726)
!755 = !DILocation(line: 261, column: 13, scope: !445, inlinedAt: !726)
!756 = !DILocation(line: 268, column: 11, scope: !741, inlinedAt: !726)
!757 = !{!758, !516, i64 16}
!758 = !{!"", !519, i64 0, !519, i64 4, !519, i64 8, !516, i64 16, !516, i64 24, !517, i64 32}
!759 = !DILocation(line: 261, column: 16, scope: !445, inlinedAt: !726)
!760 = !DILocation(line: 269, column: 9, scope: !741, inlinedAt: !726)
!761 = !DILocation(line: 269, column: 37, scope: !741, inlinedAt: !726)
!762 = !{!763, !519, i64 16}
!763 = !{!"", !516, i64 0, !516, i64 8, !519, i64 16, !519, i64 20, !519, i64 24, !764, i64 32, !519, i64 40, !516, i64 48}
!764 = !{!"long", !517, i64 0}
!765 = !DILocation(line: 261, column: 22, scope: !445, inlinedAt: !726)
!766 = !DILocation(line: 273, column: 15, scope: !741, inlinedAt: !726)
!767 = !DILocation(line: 273, column: 14, scope: !741, inlinedAt: !726)
!768 = !DILocation(line: 274, column: 15, scope: !741, inlinedAt: !726)
!769 = !DILocation(line: 274, column: 14, scope: !741, inlinedAt: !726)
!770 = !DILocation(line: 275, column: 36, scope: !745, inlinedAt: !726)
!771 = !DILocation(line: 275, column: 15, scope: !745, inlinedAt: !726)
!772 = !DILocation(line: 276, column: 2, scope: !745, inlinedAt: !726)
!773 = !DILocation(line: 275, column: 9, scope: !741, inlinedAt: !726)
!774 = !{!758, !516, i64 24}
!775 = !DILocation(line: 277, column: 40, scope: !748, inlinedAt: !726)
!776 = !{!777, !519, i64 8}
!777 = !{!"", !552, i64 0, !552, i64 4, !519, i64 8, !552, i64 12, !552, i64 16}
!778 = !DILocation(line: 277, column: 11, scope: !748, inlinedAt: !726)
!779 = !DILocation(line: 277, column: 15, scope: !748, inlinedAt: !726)
!780 = !{!607, !519, i64 16}
!781 = !DILocation(line: 278, column: 40, scope: !748, inlinedAt: !726)
!782 = !{!777, !552, i64 0}
!783 = !DILocation(line: 278, column: 15, scope: !748, inlinedAt: !726)
!784 = !{!607, !552, i64 20}
!785 = !DILocation(line: 279, column: 5, scope: !748, inlinedAt: !726)
!786 = !DILocation(line: 281, column: 11, scope: !741, inlinedAt: !726)
!787 = !DILocation(line: 281, column: 6, scope: !741, inlinedAt: !726)
!788 = !DILocation(line: 282, column: 7, scope: !741, inlinedAt: !726)
!789 = !DILocation(line: 262, column: 12, scope: !445, inlinedAt: !726)
!790 = !DILocation(line: 286, column: 20, scope: !752, inlinedAt: !726)
!791 = !DILocation(line: 286, column: 25, scope: !752, inlinedAt: !726)
!792 = !DILocation(line: 286, column: 9, scope: !736, inlinedAt: !726)
!793 = !DILocation(line: 288, column: 5, scope: !752, inlinedAt: !726)
!794 = !DILocation(line: 288, column: 22, scope: !752, inlinedAt: !726)
!795 = !DILocation(line: 287, column: 7, scope: !752, inlinedAt: !726)
!796 = !DILocation(line: 289, column: 1, scope: !445, inlinedAt: !726)
!797 = !DILocation(line: 301, column: 32, scope: !321)
!798 = !DILocation(line: 301, column: 53, scope: !321)
!799 = !DILocation(line: 301, column: 56, scope: !321)
!800 = !DILocation(line: 294, column: 10, scope: !321)
!801 = !DILocation(line: 301, column: 14, scope: !321)
!802 = !DILocation(line: 301, column: 7, scope: !321)
!803 = !DILocation(line: 301, column: 13, scope: !321)
!804 = !DILocation(line: 302, column: 14, scope: !321)
!805 = !DILocation(line: 302, column: 19, scope: !321)
!806 = !DILocation(line: 302, column: 7, scope: !321)
!807 = !DILocation(line: 302, column: 11, scope: !321)
!808 = !DILocation(line: 243, column: 30, scope: !468, inlinedAt: !809)
!809 = distinct !DILocation(line: 304, column: 3, scope: !321)
!810 = !DILocation(line: 247, column: 7, scope: !468, inlinedAt: !809)
!811 = !DILocation(line: 247, column: 11, scope: !468, inlinedAt: !809)
!812 = !{!551, !519, i64 40}
!813 = !DILocation(line: 248, column: 7, scope: !468, inlinedAt: !809)
!814 = !DILocation(line: 248, column: 11, scope: !468, inlinedAt: !809)
!815 = !{!551, !519, i64 44}
!816 = !DILocation(line: 245, column: 10, scope: !468, inlinedAt: !809)
!817 = !DILocation(line: 249, column: 19, scope: !818, inlinedAt: !809)
!818 = distinct !DILexicalBlock(scope: !819, file: !1, line: 249, column: 3)
!819 = distinct !DILexicalBlock(scope: !468, file: !1, line: 249, column: 3)
!820 = !DILocation(line: 249, column: 14, scope: !818, inlinedAt: !809)
!821 = !DILocation(line: 249, column: 3, scope: !819, inlinedAt: !809)
!822 = !DILocation(line: 251, column: 14, scope: !823, inlinedAt: !809)
!823 = distinct !DILexicalBlock(scope: !824, file: !1, line: 250, column: 26)
!824 = distinct !DILexicalBlock(scope: !825, file: !1, line: 250, column: 5)
!825 = distinct !DILexicalBlock(scope: !818, file: !1, line: 250, column: 5)
!826 = !DILocation(line: 304, column: 3, scope: !321)
!827 = !DILocation(line: 250, column: 5, scope: !825, inlinedAt: !809)
!828 = !DILocation(line: 251, column: 10, scope: !823, inlinedAt: !809)
!829 = !DILocation(line: 245, column: 7, scope: !468, inlinedAt: !809)
!830 = !DILocation(line: 252, column: 14, scope: !831, inlinedAt: !809)
!831 = distinct !DILexicalBlock(scope: !823, file: !1, line: 252, column: 11)
!832 = !DILocation(line: 252, column: 11, scope: !823, inlinedAt: !809)
!833 = !DILocation(line: 253, column: 11, scope: !831, inlinedAt: !809)
!834 = !DILocation(line: 253, column: 2, scope: !831, inlinedAt: !809)
!835 = !DILocation(line: 254, column: 19, scope: !836, inlinedAt: !809)
!836 = distinct !DILexicalBlock(scope: !831, file: !1, line: 254, column: 16)
!837 = !DILocation(line: 254, column: 16, scope: !831, inlinedAt: !809)
!838 = !DILocation(line: 255, column: 11, scope: !836, inlinedAt: !809)
!839 = !DILocation(line: 255, column: 2, scope: !836, inlinedAt: !809)
!840 = !DILocation(line: 305, column: 3, scope: !321)
!841 = !DILocation(line: 106, column: 8, scope: !433, inlinedAt: !635)
!842 = !DILocation(line: 128, column: 13, scope: !343, inlinedAt: !616)
!843 = !DILocation(line: 306, column: 1, scope: !321)
!844 = !DILocation(line: 50, column: 31, scope: !458)
!845 = !DILocation(line: 50, column: 45, scope: !458)
!846 = !DILocation(line: 57, column: 7, scope: !847)
!847 = distinct !DILexicalBlock(scope: !458, file: !1, line: 57, column: 7)
!848 = !DILocation(line: 57, column: 19, scope: !847)
!849 = !DILocation(line: 57, column: 17, scope: !847)
!850 = !DILocation(line: 57, column: 7, scope: !458)
!851 = !DILocation(line: 59, column: 22, scope: !852)
!852 = distinct !DILexicalBlock(scope: !847, file: !1, line: 59, column: 12)
!853 = !DILocation(line: 59, column: 12, scope: !847)
!854 = !DILocation(line: 60, column: 13, scope: !852)
!855 = !DILocation(line: 60, column: 25, scope: !852)
!856 = !DILocation(line: 60, column: 23, scope: !852)
!857 = !DILocation(line: 60, column: 5, scope: !852)
!858 = !DILocation(line: 63, column: 1, scope: !458)
