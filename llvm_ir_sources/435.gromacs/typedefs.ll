; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/typedefs.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct.t_block = type { [256 x i32], i32, i32*, i32, i32* }
%struct.t_atoms = type { i32, %struct.t_atom*, i8***, i8***, i8***, i32, i8***, i32, i8***, %struct.t_block, [9 x %struct.t_grps], %struct.t_pdbinfo* }
%struct.t_atom = type { float, float, float, float, i16, i16, i32, i32, [9 x i8], i8 }
%struct.t_grps = type { i32, i32* }
%struct.t_pdbinfo = type { i32, i32, i8, [6 x i8], float, float, i32, [6 x i32] }
%struct.t_topology = type { i8**, %struct.t_idef, %struct.t_atoms, [3 x %struct.t_block], %struct.t_symtab }
%struct.t_idef = type { i32, i32, i32, i32*, %union.t_iparams*, [44 x %struct.t_ilist] }
%union.t_iparams = type { %struct.anon.2 }
%struct.anon.2 = type { float, float, float, float, float, float }
%struct.t_ilist = type { i32, [256 x i32], i32* }
%struct.t_symtab = type { i32, %struct.symbuf* }
%struct.symbuf = type { i32, i8**, %struct.symbuf* }
%struct.t_inputrec = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, float, float, float, i32, i32, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, i32, float, [3 x [3 x float]], [3 x [3 x float]], i32, float, float, i32, float, float, i32, float, float, float, i32, float, float, i32, float, float, float, float, float, i32, i32, i32, float, float, float, i32, float, float, i32, i32, i32, i32, i32, float, i32, float, float, i32, float, i32, i32, i32, i32, float, float, float, float, %struct.t_grpopts, [3 x %struct.t_cosines], [3 x %struct.t_cosines] }
%struct.t_grpopts = type { i32, i32, i32, i32, float*, float*, float*, [3 x float]*, [3 x i32]*, i32* }
%struct.t_cosines = type { i32, float*, float* }

@.str = private unnamed_addr constant [13 x i8] c"block->index\00", align 1
@.str1 = private unnamed_addr constant [68 x i8] c"../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/typedefs.c\00", align 1
@.str2 = private unnamed_addr constant [7 x i8] c"grp->a\00", align 1
@.str3 = private unnamed_addr constant [11 x i8] c"grp->index\00", align 1
@.str4 = private unnamed_addr constant [9 x i8] c"block->a\00", align 1
@.str5 = private unnamed_addr constant [9 x i8] c"at->atom\00", align 1
@.str6 = private unnamed_addr constant [12 x i8] c"at->resname\00", align 1
@.str7 = private unnamed_addr constant [13 x i8] c"at->atomname\00", align 1
@.str8 = private unnamed_addr constant [12 x i8] c"ir->ex[m].a\00", align 1
@.str9 = private unnamed_addr constant [14 x i8] c"ir->ex[m].phi\00", align 1
@.str10 = private unnamed_addr constant [12 x i8] c"ir->et[m].a\00", align 1
@.str11 = private unnamed_addr constant [14 x i8] c"ir->et[m].phi\00", align 1
@.str12 = private unnamed_addr constant [14 x i8] c"ir->opts.nrdf\00", align 1
@.str13 = private unnamed_addr constant [15 x i8] c"ir->opts.ref_t\00", align 1
@.str14 = private unnamed_addr constant [15 x i8] c"ir->opts.tau_t\00", align 1
@.str15 = private unnamed_addr constant [13 x i8] c"ir->opts.acc\00", align 1
@.str16 = private unnamed_addr constant [17 x i8] c"ir->opts.nFreeze\00", align 1
@.str17 = private unnamed_addr constant [16 x i8] c"atoms->atomname\00", align 1
@.str18 = private unnamed_addr constant [15 x i8] c"atoms->resname\00", align 1
@.str19 = private unnamed_addr constant [12 x i8] c"atoms->atom\00", align 1
@.str20 = private unnamed_addr constant [15 x i8] c"atoms->grpname\00", align 1
@.str21 = private unnamed_addr constant [15 x i8] c"atoms->pdbinfo\00", align 1
@.str22 = private unnamed_addr constant [20 x i8] c"*atoms->atomname[i]\00", align 1

; Function Attrs: alwaysinline nounwind optsize ssp uwtable
define i32 @__sputc(i32 %_c, %struct.__sFILE* %_p) #0 {
  tail call void @llvm.dbg.value(metadata i32 %_c, i64 0, metadata !97, metadata !518), !dbg !519
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %_p, i64 0, metadata !98, metadata !518), !dbg !520
  %1 = getelementptr inbounds %struct.__sFILE* %_p, i64 0, i32 2, !dbg !521
  %2 = load i32* %1, align 4, !dbg !523, !tbaa !524
  %3 = add nsw i32 %2, -1, !dbg !523
  store i32 %3, i32* %1, align 4, !dbg !523, !tbaa !524
  %4 = icmp sgt i32 %2, 0, !dbg !533
  br i1 %4, label %._crit_edge, label %5, !dbg !534

._crit_edge:                                      ; preds = %0
  %.pre = and i32 %_c, 255, !dbg !535
  br label %10, !dbg !534

; <label>:5                                       ; preds = %0
  %6 = getelementptr inbounds %struct.__sFILE* %_p, i64 0, i32 6, !dbg !536
  %7 = load i32* %6, align 4, !dbg !536, !tbaa !537
  %8 = icmp sle i32 %2, %7, !dbg !538
  %sext.mask = and i32 %_c, 255
  %9 = icmp eq i32 %sext.mask, 10, !dbg !539
  %or.cond = or i1 %9, %8, !dbg !540
  br i1 %or.cond, label %15, label %10, !dbg !540

; <label>:10                                      ; preds = %._crit_edge, %5
  %.pre-phi = phi i32 [ %.pre, %._crit_edge ], [ %sext.mask, %5 ], !dbg !535
  %11 = trunc i32 %_c to i8, !dbg !541
  %12 = getelementptr inbounds %struct.__sFILE* %_p, i64 0, i32 0, !dbg !542
  %13 = load i8** %12, align 8, !dbg !543, !tbaa !544
  %14 = getelementptr inbounds i8* %13, i64 1, !dbg !543
  store i8* %14, i8** %12, align 8, !dbg !543, !tbaa !544
  store i8 %11, i8* %13, align 1, !dbg !545, !tbaa !546
  br label %17, !dbg !547

; <label>:15                                      ; preds = %5
  %16 = tail call i32 @__swbuf(i32 %_c, %struct.__sFILE* %_p) #7, !dbg !548
  br label %17, !dbg !549

; <label>:17                                      ; preds = %15, %10
  %.0 = phi i32 [ %.pre-phi, %10 ], [ %16, %15 ]
  ret i32 %.0, !dbg !550
}

; Function Attrs: optsize
declare i32 @__swbuf(i32, %struct.__sFILE*) #1

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__sigbits(i32 %__signo) #2 {
  tail call void @llvm.dbg.value(metadata i32 %__signo, i64 0, metadata !104, metadata !518), !dbg !551
  %1 = icmp sgt i32 %__signo, 32, !dbg !552
  br i1 %1, label %5, label %2, !dbg !553

; <label>:2                                       ; preds = %0
  %3 = add nsw i32 %__signo, -1, !dbg !554
  %4 = shl i32 1, %3, !dbg !555
  br label %5, !dbg !553

; <label>:5                                       ; preds = %0, %2
  %6 = phi i32 [ %4, %2 ], [ 0, %0 ], !dbg !553
  ret i32 %6, !dbg !556
}

; Function Attrs: nounwind optsize ssp uwtable
define void @init_block(%struct.t_block* nocapture %block) #3 {
  tail call void @llvm.dbg.value(metadata %struct.t_block* %block, i64 0, metadata !125, metadata !518), !dbg !557
  %block2 = bitcast %struct.t_block* %block to i8*
  %1 = getelementptr inbounds %struct.t_block* %block, i64 0, i32 1, !dbg !558
  store i32 0, i32* %1, align 4, !dbg !559, !tbaa !560
  %2 = getelementptr inbounds %struct.t_block* %block, i64 0, i32 3, !dbg !562
  store i32 0, i32* %2, align 4, !dbg !563, !tbaa !564
  %3 = tail call i8* @save_calloc(i8* getelementptr inbounds ([13 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([68 x i8]* @.str1, i64 0, i64 0), i32 44, i32 1, i32 4) #7, !dbg !565
  %4 = bitcast i8* %3 to i32*, !dbg !565
  %5 = getelementptr inbounds %struct.t_block* %block, i64 0, i32 2, !dbg !565
  %6 = bitcast i32** %5 to i8**, !dbg !565
  store i8* %3, i8** %6, align 8, !dbg !565, !tbaa !566
  store i32 0, i32* %4, align 4, !dbg !567, !tbaa !568
  %7 = getelementptr inbounds %struct.t_block* %block, i64 0, i32 4, !dbg !569
  store i32* null, i32** %7, align 8, !dbg !570, !tbaa !571
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !126, metadata !518), !dbg !572
  call void @llvm.memset.p0i8.i64(i8* %block2, i8 0, i64 1024, i32 4, i1 false), !dbg !573
  ret void, !dbg !576
}

; Function Attrs: optsize
declare i8* @save_calloc(i8*, i8*, i32, i32, i32) #1

; Function Attrs: nounwind optsize ssp uwtable
define void @init_atom(%struct.t_atoms* nocapture %at) #3 {
  tail call void @llvm.dbg.value(metadata %struct.t_atoms* %at, i64 0, metadata !192, metadata !518), !dbg !577
  %1 = getelementptr inbounds %struct.t_atoms* %at, i64 0, i32 9, i32 1, !dbg !578
  store i32 0, i32* %1, align 4, !dbg !580, !tbaa !560
  %2 = getelementptr inbounds %struct.t_atoms* %at, i64 0, i32 9, i32 3, !dbg !581
  store i32 0, i32* %2, align 4, !dbg !582, !tbaa !564
  %3 = tail call i8* @save_calloc(i8* getelementptr inbounds ([13 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([68 x i8]* @.str1, i64 0, i64 0), i32 44, i32 1, i32 4) #7, !dbg !583
  %4 = bitcast i8* %3 to i32*, !dbg !583
  %5 = getelementptr inbounds %struct.t_atoms* %at, i64 0, i32 9, i32 2, !dbg !583
  %6 = bitcast i32** %5 to i8**, !dbg !583
  store i8* %3, i8** %6, align 8, !dbg !583, !tbaa !566
  store i32 0, i32* %4, align 4, !dbg !584, !tbaa !568
  %7 = getelementptr inbounds %struct.t_atoms* %at, i64 0, i32 9, i32 4, !dbg !585
  store i32* null, i32** %7, align 8, !dbg !586, !tbaa !571
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !126, metadata !518) #6, !dbg !587
  %8 = getelementptr inbounds %struct.t_atoms* %at, i64 0, i32 0, !dbg !588
  store i32 0, i32* %8, align 4, !dbg !589, !tbaa !590
  %9 = getelementptr inbounds %struct.t_atoms* %at, i64 0, i32 7, !dbg !592
  store i32 0, i32* %9, align 4, !dbg !593, !tbaa !594
  %10 = getelementptr inbounds %struct.t_atoms* %at, i64 0, i32 1, !dbg !595
  %11 = getelementptr inbounds %struct.t_atoms* %at, i64 0, i32 6, !dbg !596
  store i8*** null, i8**** %11, align 8, !dbg !597, !tbaa !598
  %12 = getelementptr inbounds %struct.t_atoms* %at, i64 0, i32 8, !dbg !599
  %13 = getelementptr inbounds %struct.t_atoms* %at, i64 0, i32 11, !dbg !600
  store %struct.t_pdbinfo* null, %struct.t_pdbinfo** %13, align 8, !dbg !601, !tbaa !602
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !193, metadata !518), !dbg !603
  %14 = bitcast %struct.t_atom** %10 to i8*, !dbg !604
  call void @llvm.memset.p0i8.i64(i8* %14, i8 0, i64 36, i32 8, i1 false), !dbg !606
  %15 = bitcast i8**** %12 to i8*, !dbg !604
  call void @llvm.memset.p0i8.i64(i8* %15, i8 0, i64 1032, i32 8, i1 false), !dbg !607
  br label %16, !dbg !604

; <label>:16                                      ; preds = %16, %0
  %indvars.iv = phi i64 [ 0, %0 ], [ %indvars.iv.next, %16 ]
  %17 = getelementptr inbounds %struct.t_atoms* %at, i64 0, i32 10, i64 %indvars.iv, i32 0, !dbg !608
  store i32 0, i32* %17, align 4, !dbg !611, !tbaa !612
  %18 = getelementptr inbounds %struct.t_atoms* %at, i64 0, i32 10, i64 %indvars.iv, i32 1, !dbg !614
  store i32* null, i32** %18, align 8, !dbg !615, !tbaa !616
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !604
  %exitcond = icmp eq i64 %indvars.iv.next, 9, !dbg !604
  br i1 %exitcond, label %19, label %16, !dbg !604

; <label>:19                                      ; preds = %16
  ret void, !dbg !617
}

; Function Attrs: nounwind optsize ssp uwtable
define void @init_top(%struct.t_topology* %top) #3 {
  tail call void @llvm.dbg.value(metadata %struct.t_topology* %top, i64 0, metadata !356, metadata !518), !dbg !618
  %1 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 0, !dbg !619
  store i8** null, i8*** %1, align 8, !dbg !620, !tbaa !621
  %2 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 4, !dbg !624
  tail call void @open_symtab(%struct.t_symtab* %2) #7, !dbg !625
  %3 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 2, !dbg !626
  tail call void @init_atom(%struct.t_atoms* %3) #8, !dbg !627
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !357, metadata !518), !dbg !628
  br label %4, !dbg !629

; <label>:4                                       ; preds = %4, %0
  %indvars.iv = phi i64 [ 0, %0 ], [ %indvars.iv.next, %4 ]
  %5 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 3, i64 %indvars.iv, !dbg !631
  tail call void @llvm.dbg.value(metadata %struct.t_block* %5, i64 0, metadata !125, metadata !518) #6, !dbg !633
  %block2.i = bitcast %struct.t_block* %5 to i8*, !dbg !635
  %6 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 3, i64 %indvars.iv, i32 1, !dbg !636
  store i32 0, i32* %6, align 4, !dbg !637, !tbaa !560
  %7 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 3, i64 %indvars.iv, i32 3, !dbg !638
  store i32 0, i32* %7, align 4, !dbg !639, !tbaa !564
  %8 = tail call i8* @save_calloc(i8* getelementptr inbounds ([13 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([68 x i8]* @.str1, i64 0, i64 0), i32 44, i32 1, i32 4) #7, !dbg !640
  %9 = bitcast i8* %8 to i32*, !dbg !640
  %10 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 3, i64 %indvars.iv, i32 2, !dbg !640
  %11 = bitcast i32** %10 to i8**, !dbg !640
  store i8* %8, i8** %11, align 8, !dbg !640, !tbaa !566
  store i32 0, i32* %9, align 4, !dbg !641, !tbaa !568
  %12 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 3, i64 %indvars.iv, i32 4, !dbg !642
  store i32* null, i32** %12, align 8, !dbg !643, !tbaa !571
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !126, metadata !518) #6, !dbg !644
  tail call void @llvm.memset.p0i8.i64(i8* %block2.i, i8 0, i64 1024, i32 4, i1 false) #6, !dbg !645
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !629
  %exitcond = icmp eq i64 %indvars.iv.next, 3, !dbg !629
  br i1 %exitcond, label %13, label %4, !dbg !629

; <label>:13                                      ; preds = %4
  ret void, !dbg !646
}

; Function Attrs: optsize
declare void @open_symtab(%struct.t_symtab*) #1

; Function Attrs: nounwind optsize ssp uwtable
define void @init_inputrec(%struct.t_inputrec* %ir) #3 {
  tail call void @llvm.dbg.value(metadata %struct.t_inputrec* %ir, i64 0, metadata !479, metadata !518), !dbg !647
  %1 = bitcast %struct.t_inputrec* %ir to i8*, !dbg !648
  %2 = tail call i64 @llvm.objectsize.i64.p0i8(i8* %1, i1 false), !dbg !648
  %3 = tail call i8* @__memset_chk(i8* %1, i32 0, i64 592, i64 %2) #7, !dbg !648
  ret void, !dbg !649
}

; Function Attrs: nounwind optsize
declare i8* @__memset_chk(i8*, i32, i64, i64) #4

; Function Attrs: nounwind readnone
declare i64 @llvm.objectsize.i64.p0i8(i8*, i1) #5

; Function Attrs: nounwind optsize ssp uwtable
define void @stupid_fill(%struct.t_block* nocapture %grp, i32 %natom, i32 %bOneIndexGroup) #3 {
  tail call void @llvm.dbg.value(metadata %struct.t_block* %grp, i64 0, metadata !484, metadata !518), !dbg !650
  tail call void @llvm.dbg.value(metadata i32 %natom, i64 0, metadata !485, metadata !518), !dbg !651
  tail call void @llvm.dbg.value(metadata i32 %bOneIndexGroup, i64 0, metadata !486, metadata !518), !dbg !652
  %1 = tail call i8* @save_calloc(i8* getelementptr inbounds ([7 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([68 x i8]* @.str1, i64 0, i64 0), i32 92, i32 %natom, i32 4) #7, !dbg !653
  %2 = getelementptr inbounds %struct.t_block* %grp, i64 0, i32 4, !dbg !653
  %3 = bitcast i32** %2 to i8**, !dbg !653
  store i8* %1, i8** %3, align 8, !dbg !653, !tbaa !571
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !487, metadata !518), !dbg !654
  %4 = icmp sgt i32 %natom, 0, !dbg !655
  %5 = bitcast i8* %1 to i32*
  br i1 %4, label %.lr.ph4, label %._crit_edge5, !dbg !658

.lr.ph4:                                          ; preds = %0
  %6 = add i32 %natom, -1, !dbg !658
  br label %7, !dbg !658

; <label>:7                                       ; preds = %7, %.lr.ph4
  %indvars.iv6 = phi i64 [ 0, %.lr.ph4 ], [ %indvars.iv.next7, %7 ]
  %8 = getelementptr inbounds i32* %5, i64 %indvars.iv6, !dbg !659
  %9 = trunc i64 %indvars.iv6 to i32, !dbg !660
  store i32 %9, i32* %8, align 4, !dbg !660, !tbaa !568
  %indvars.iv.next7 = add nuw nsw i64 %indvars.iv6, 1, !dbg !658
  %exitcond9 = icmp eq i32 %9, %6, !dbg !658
  br i1 %exitcond9, label %._crit_edge5, label %7, !dbg !658

._crit_edge5:                                     ; preds = %7, %0
  %10 = getelementptr inbounds %struct.t_block* %grp, i64 0, i32 3, !dbg !661
  store i32 %natom, i32* %10, align 4, !dbg !662, !tbaa !564
  %11 = icmp eq i32 %bOneIndexGroup, 0, !dbg !663
  br i1 %11, label %20, label %12, !dbg !665

; <label>:12                                      ; preds = %._crit_edge5
  %13 = tail call i8* @save_calloc(i8* getelementptr inbounds ([11 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([68 x i8]* @.str1, i64 0, i64 0), i32 98, i32 2, i32 4) #7, !dbg !666
  %14 = bitcast i8* %13 to i32*, !dbg !666
  %15 = getelementptr inbounds %struct.t_block* %grp, i64 0, i32 2, !dbg !666
  %16 = bitcast i32** %15 to i8**, !dbg !666
  store i8* %13, i8** %16, align 8, !dbg !666, !tbaa !566
  store i32 0, i32* %14, align 4, !dbg !668, !tbaa !568
  %17 = getelementptr inbounds i8* %13, i64 4, !dbg !669
  %18 = bitcast i8* %17 to i32*, !dbg !669
  store i32 %natom, i32* %18, align 4, !dbg !670, !tbaa !568
  %19 = getelementptr inbounds %struct.t_block* %grp, i64 0, i32 1, !dbg !671
  store i32 1, i32* %19, align 4, !dbg !672, !tbaa !560
  br label %30, !dbg !673

; <label>:20                                      ; preds = %._crit_edge5
  %21 = add nsw i32 %natom, 1, !dbg !674
  %22 = tail call i8* @save_calloc(i8* getelementptr inbounds ([11 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([68 x i8]* @.str1, i64 0, i64 0), i32 104, i32 %21, i32 4) #7, !dbg !674
  %23 = getelementptr inbounds %struct.t_block* %grp, i64 0, i32 2, !dbg !674
  %24 = bitcast i32** %23 to i8**, !dbg !674
  store i8* %22, i8** %24, align 8, !dbg !674, !tbaa !566
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !487, metadata !518), !dbg !654
  %25 = icmp slt i32 %natom, 0, !dbg !676
  %26 = bitcast i8* %22 to i32*
  br i1 %25, label %._crit_edge, label %.lr.ph, !dbg !679

.lr.ph:                                           ; preds = %20, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %20 ]
  %27 = getelementptr inbounds i32* %26, i64 %indvars.iv, !dbg !680
  %28 = trunc i64 %indvars.iv to i32, !dbg !681
  store i32 %28, i32* %27, align 4, !dbg !681, !tbaa !568
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !679
  %exitcond = icmp eq i32 %28, %natom, !dbg !679
  br i1 %exitcond, label %._crit_edge, label %.lr.ph, !dbg !679

._crit_edge:                                      ; preds = %.lr.ph, %20
  %29 = getelementptr inbounds %struct.t_block* %grp, i64 0, i32 1, !dbg !682
  store i32 %natom, i32* %29, align 4, !dbg !683, !tbaa !560
  br label %30

; <label>:30                                      ; preds = %._crit_edge, %12
  %31 = add nsw i32 %natom, -1, !dbg !684
  %32 = getelementptr inbounds %struct.t_block* %grp, i64 0, i32 0, i64 0, !dbg !685
  store i32 %31, i32* %32, align 4, !dbg !686, !tbaa !568
  ret void, !dbg !687
}

; Function Attrs: nounwind optsize ssp uwtable
define void @done_block(%struct.t_block* nocapture %block) #3 {
  tail call void @llvm.dbg.value(metadata %struct.t_block* %block, i64 0, metadata !490, metadata !518), !dbg !688
  %1 = getelementptr inbounds %struct.t_block* %block, i64 0, i32 1, !dbg !689
  store i32 0, i32* %1, align 4, !dbg !690, !tbaa !560
  %2 = getelementptr inbounds %struct.t_block* %block, i64 0, i32 3, !dbg !691
  store i32 0, i32* %2, align 4, !dbg !692, !tbaa !564
  %3 = getelementptr inbounds %struct.t_block* %block, i64 0, i32 2, !dbg !693
  %4 = bitcast i32** %3 to i8**, !dbg !693
  %5 = load i8** %4, align 8, !dbg !693, !tbaa !566
  tail call void @save_free(i8* getelementptr inbounds ([13 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([68 x i8]* @.str1, i64 0, i64 0), i32 116, i8* %5) #7, !dbg !693
  %6 = getelementptr inbounds %struct.t_block* %block, i64 0, i32 4, !dbg !694
  %7 = bitcast i32** %6 to i8**, !dbg !694
  %8 = load i8** %7, align 8, !dbg !694, !tbaa !571
  tail call void @save_free(i8* getelementptr inbounds ([9 x i8]* @.str4, i64 0, i64 0), i8* getelementptr inbounds ([68 x i8]* @.str1, i64 0, i64 0), i32 117, i8* %8) #7, !dbg !694
  ret void, !dbg !695
}

; Function Attrs: optsize
declare void @save_free(i8*, i8*, i32, i8*) #1

; Function Attrs: nounwind optsize ssp uwtable
define void @done_atom(%struct.t_atoms* nocapture %at) #3 {
  tail call void @llvm.dbg.value(metadata %struct.t_atoms* %at, i64 0, metadata !493, metadata !518), !dbg !696
  %1 = getelementptr inbounds %struct.t_atoms* %at, i64 0, i32 9, !dbg !697
  tail call void @done_block(%struct.t_block* %1) #8, !dbg !698
  %2 = getelementptr inbounds %struct.t_atoms* %at, i64 0, i32 0, !dbg !699
  store i32 0, i32* %2, align 4, !dbg !700, !tbaa !590
  %3 = getelementptr inbounds %struct.t_atoms* %at, i64 0, i32 5, !dbg !701
  store i32 0, i32* %3, align 4, !dbg !702, !tbaa !703
  %4 = getelementptr inbounds %struct.t_atoms* %at, i64 0, i32 1, !dbg !704
  %5 = bitcast %struct.t_atom** %4 to i8**, !dbg !704
  %6 = load i8** %5, align 8, !dbg !704, !tbaa !705
  tail call void @save_free(i8* getelementptr inbounds ([9 x i8]* @.str5, i64 0, i64 0), i8* getelementptr inbounds ([68 x i8]* @.str1, i64 0, i64 0), i32 125, i8* %6) #7, !dbg !704
  %7 = getelementptr inbounds %struct.t_atoms* %at, i64 0, i32 6, !dbg !706
  %8 = bitcast i8**** %7 to i8**, !dbg !706
  %9 = load i8** %8, align 8, !dbg !706, !tbaa !598
  tail call void @save_free(i8* getelementptr inbounds ([12 x i8]* @.str6, i64 0, i64 0), i8* getelementptr inbounds ([68 x i8]* @.str1, i64 0, i64 0), i32 126, i8* %9) #7, !dbg !706
  %10 = getelementptr inbounds %struct.t_atoms* %at, i64 0, i32 2, !dbg !707
  %11 = bitcast i8**** %10 to i8**, !dbg !707
  %12 = load i8** %11, align 8, !dbg !707, !tbaa !708
  tail call void @save_free(i8* getelementptr inbounds ([13 x i8]* @.str7, i64 0, i64 0), i8* getelementptr inbounds ([68 x i8]* @.str1, i64 0, i64 0), i32 127, i8* %12) #7, !dbg !707
  ret void, !dbg !709
}

; Function Attrs: nounwind optsize ssp uwtable
define void @done_top(%struct.t_topology* %top) #3 {
  tail call void @llvm.dbg.value(metadata %struct.t_topology* %top, i64 0, metadata !496, metadata !518), !dbg !710
  %1 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 2, !dbg !711
  tail call void @done_atom(%struct.t_atoms* %1) #8, !dbg !712
  %2 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 4, !dbg !713
  tail call void @done_symtab(%struct.t_symtab* %2) #7, !dbg !714
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !497, metadata !518), !dbg !715
  br label %3, !dbg !716

; <label>:3                                       ; preds = %3, %0
  %indvars.iv = phi i64 [ 0, %0 ], [ %indvars.iv.next, %3 ]
  %4 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 3, i64 %indvars.iv, !dbg !718
  tail call void @done_block(%struct.t_block* %4) #8, !dbg !720
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !716
  %exitcond = icmp eq i64 %indvars.iv.next, 3, !dbg !716
  br i1 %exitcond, label %5, label %3, !dbg !716

; <label>:5                                       ; preds = %3
  ret void, !dbg !721
}

; Function Attrs: optsize
declare void @done_symtab(%struct.t_symtab*) #1

; Function Attrs: nounwind optsize ssp uwtable
define void @done_inputrec(%struct.t_inputrec* nocapture readonly %ir) #3 {
  tail call void @llvm.dbg.value(metadata %struct.t_inputrec* %ir, i64 0, metadata !500, metadata !518), !dbg !722
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !501, metadata !518), !dbg !723
  br label %1, !dbg !724

; <label>:1                                       ; preds = %25, %0
  %indvars.iv = phi i64 [ 0, %0 ], [ %indvars.iv.next, %25 ]
  %2 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 81, i64 %indvars.iv, i32 1, !dbg !726
  %3 = load float** %2, align 8, !dbg !726, !tbaa !730
  %4 = icmp eq float* %3, null, !dbg !732
  br i1 %4, label %7, label %5, !dbg !733

; <label>:5                                       ; preds = %1
  %6 = bitcast float* %3 to i8*, !dbg !734
  tail call void @save_free(i8* getelementptr inbounds ([12 x i8]* @.str8, i64 0, i64 0), i8* getelementptr inbounds ([68 x i8]* @.str1, i64 0, i64 0), i32 145, i8* %6) #7, !dbg !734
  br label %7, !dbg !734

; <label>:7                                       ; preds = %1, %5
  %8 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 81, i64 %indvars.iv, i32 2, !dbg !735
  %9 = load float** %8, align 8, !dbg !735, !tbaa !737
  %10 = icmp eq float* %9, null, !dbg !738
  br i1 %10, label %13, label %11, !dbg !739

; <label>:11                                      ; preds = %7
  %12 = bitcast float* %9 to i8*, !dbg !740
  tail call void @save_free(i8* getelementptr inbounds ([14 x i8]* @.str9, i64 0, i64 0), i8* getelementptr inbounds ([68 x i8]* @.str1, i64 0, i64 0), i32 146, i8* %12) #7, !dbg !740
  br label %13, !dbg !740

; <label>:13                                      ; preds = %7, %11
  %14 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 82, i64 %indvars.iv, i32 1, !dbg !741
  %15 = load float** %14, align 8, !dbg !741, !tbaa !730
  %16 = icmp eq float* %15, null, !dbg !743
  br i1 %16, label %19, label %17, !dbg !744

; <label>:17                                      ; preds = %13
  %18 = bitcast float* %15 to i8*, !dbg !745
  tail call void @save_free(i8* getelementptr inbounds ([12 x i8]* @.str10, i64 0, i64 0), i8* getelementptr inbounds ([68 x i8]* @.str1, i64 0, i64 0), i32 147, i8* %18) #7, !dbg !745
  br label %19, !dbg !745

; <label>:19                                      ; preds = %13, %17
  %20 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 82, i64 %indvars.iv, i32 2, !dbg !746
  %21 = load float** %20, align 8, !dbg !746, !tbaa !737
  %22 = icmp eq float* %21, null, !dbg !748
  br i1 %22, label %25, label %23, !dbg !749

; <label>:23                                      ; preds = %19
  %24 = bitcast float* %21 to i8*, !dbg !750
  tail call void @save_free(i8* getelementptr inbounds ([14 x i8]* @.str11, i64 0, i64 0), i8* getelementptr inbounds ([68 x i8]* @.str1, i64 0, i64 0), i32 148, i8* %24) #7, !dbg !750
  br label %25, !dbg !750

; <label>:25                                      ; preds = %19, %23
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !724
  %exitcond = icmp eq i64 %indvars.iv.next, 3, !dbg !724
  br i1 %exitcond, label %26, label %1, !dbg !724

; <label>:26                                      ; preds = %25
  %27 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 80, i32 4, !dbg !751
  %28 = load float** %27, align 8, !dbg !751, !tbaa !753
  %29 = icmp eq float* %28, null, !dbg !757
  br i1 %29, label %32, label %30, !dbg !758

; <label>:30                                      ; preds = %26
  %31 = bitcast float* %28 to i8*, !dbg !759
  tail call void @save_free(i8* getelementptr inbounds ([14 x i8]* @.str12, i64 0, i64 0), i8* getelementptr inbounds ([68 x i8]* @.str1, i64 0, i64 0), i32 150, i8* %31) #7, !dbg !759
  br label %32, !dbg !759

; <label>:32                                      ; preds = %26, %30
  %33 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 80, i32 5, !dbg !760
  %34 = load float** %33, align 8, !dbg !760, !tbaa !762
  %35 = icmp eq float* %34, null, !dbg !763
  br i1 %35, label %38, label %36, !dbg !764

; <label>:36                                      ; preds = %32
  %37 = bitcast float* %34 to i8*, !dbg !765
  tail call void @save_free(i8* getelementptr inbounds ([15 x i8]* @.str13, i64 0, i64 0), i8* getelementptr inbounds ([68 x i8]* @.str1, i64 0, i64 0), i32 151, i8* %37) #7, !dbg !765
  br label %38, !dbg !765

; <label>:38                                      ; preds = %32, %36
  %39 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 80, i32 6, !dbg !766
  %40 = load float** %39, align 8, !dbg !766, !tbaa !768
  %41 = icmp eq float* %40, null, !dbg !769
  br i1 %41, label %44, label %42, !dbg !770

; <label>:42                                      ; preds = %38
  %43 = bitcast float* %40 to i8*, !dbg !771
  tail call void @save_free(i8* getelementptr inbounds ([15 x i8]* @.str14, i64 0, i64 0), i8* getelementptr inbounds ([68 x i8]* @.str1, i64 0, i64 0), i32 152, i8* %43) #7, !dbg !771
  br label %44, !dbg !771

; <label>:44                                      ; preds = %38, %42
  %45 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 80, i32 7, !dbg !772
  %46 = load [3 x float]** %45, align 8, !dbg !772, !tbaa !774
  %47 = icmp eq [3 x float]* %46, null, !dbg !775
  br i1 %47, label %50, label %48, !dbg !776

; <label>:48                                      ; preds = %44
  %49 = bitcast [3 x float]* %46 to i8*, !dbg !777
  tail call void @save_free(i8* getelementptr inbounds ([13 x i8]* @.str15, i64 0, i64 0), i8* getelementptr inbounds ([68 x i8]* @.str1, i64 0, i64 0), i32 153, i8* %49) #7, !dbg !777
  br label %50, !dbg !777

; <label>:50                                      ; preds = %44, %48
  %51 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 80, i32 8, !dbg !778
  %52 = load [3 x i32]** %51, align 8, !dbg !778, !tbaa !780
  %53 = icmp eq [3 x i32]* %52, null, !dbg !781
  br i1 %53, label %56, label %54, !dbg !782

; <label>:54                                      ; preds = %50
  %55 = bitcast [3 x i32]* %52 to i8*, !dbg !783
  tail call void @save_free(i8* getelementptr inbounds ([17 x i8]* @.str16, i64 0, i64 0), i8* getelementptr inbounds ([68 x i8]* @.str1, i64 0, i64 0), i32 154, i8* %55) #7, !dbg !783
  br label %56, !dbg !783

; <label>:56                                      ; preds = %50, %54
  ret void, !dbg !784
}

; Function Attrs: nounwind optsize ssp uwtable
define void @init_t_atoms(%struct.t_atoms* nocapture %atoms, i32 %natoms, i32 %bPdbinfo) #3 {
  tail call void @llvm.dbg.value(metadata %struct.t_atoms* %atoms, i64 0, metadata !506, metadata !518), !dbg !785
  tail call void @llvm.dbg.value(metadata i32 %natoms, i64 0, metadata !507, metadata !518), !dbg !786
  tail call void @llvm.dbg.value(metadata i32 %bPdbinfo, i64 0, metadata !508, metadata !518), !dbg !787
  %1 = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 0, !dbg !788
  store i32 %natoms, i32* %1, align 4, !dbg !789, !tbaa !590
  %2 = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 5, !dbg !790
  store i32 0, i32* %2, align 4, !dbg !791, !tbaa !703
  %3 = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 7, !dbg !792
  store i32 0, i32* %3, align 4, !dbg !793, !tbaa !594
  %4 = tail call i8* @save_calloc(i8* getelementptr inbounds ([16 x i8]* @.str17, i64 0, i64 0), i8* getelementptr inbounds ([68 x i8]* @.str1, i64 0, i64 0), i32 162, i32 %natoms, i32 8) #7, !dbg !794
  %5 = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 2, !dbg !794
  %6 = bitcast i8**** %5 to i8**, !dbg !794
  store i8* %4, i8** %6, align 8, !dbg !794, !tbaa !708
  %7 = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 3, !dbg !795
  %8 = bitcast i8**** %7 to i8*, !dbg !796
  call void @llvm.memset.p0i8.i64(i8* %8, i8 0, i64 16, i32 8, i1 false), !dbg !797
  %9 = tail call i8* @save_calloc(i8* getelementptr inbounds ([15 x i8]* @.str18, i64 0, i64 0), i8* getelementptr inbounds ([68 x i8]* @.str1, i64 0, i64 0), i32 165, i32 %natoms, i32 8) #7, !dbg !796
  %10 = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 6, !dbg !796
  %11 = bitcast i8**** %10 to i8**, !dbg !796
  store i8* %9, i8** %11, align 8, !dbg !796, !tbaa !598
  %12 = tail call i8* @save_calloc(i8* getelementptr inbounds ([12 x i8]* @.str19, i64 0, i64 0), i8* getelementptr inbounds ([68 x i8]* @.str1, i64 0, i64 0), i32 166, i32 %natoms, i32 40) #7, !dbg !798
  %13 = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 1, !dbg !798
  %14 = bitcast %struct.t_atom** %13 to i8**, !dbg !798
  store i8* %12, i8** %14, align 8, !dbg !798, !tbaa !705
  %15 = tail call i8* @save_calloc(i8* getelementptr inbounds ([15 x i8]* @.str20, i64 0, i64 0), i8* getelementptr inbounds ([68 x i8]* @.str1, i64 0, i64 0), i32 167, i32 %natoms, i32 8) #7, !dbg !799
  %16 = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 8, !dbg !799
  %17 = bitcast i8**** %16 to i8**, !dbg !799
  store i8* %15, i8** %17, align 8, !dbg !799, !tbaa !800
  %18 = icmp eq i32 %bPdbinfo, 0, !dbg !801
  br i1 %18, label %23, label %19, !dbg !803

; <label>:19                                      ; preds = %0
  %20 = tail call i8* @save_calloc(i8* getelementptr inbounds ([15 x i8]* @.str21, i64 0, i64 0), i8* getelementptr inbounds ([68 x i8]* @.str1, i64 0, i64 0), i32 169, i32 %natoms, i32 52) #7, !dbg !804
  %21 = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 11, !dbg !804
  %22 = bitcast %struct.t_pdbinfo** %21 to i8**, !dbg !804
  store i8* %20, i8** %22, align 8, !dbg !804, !tbaa !602
  br label %25, !dbg !804

; <label>:23                                      ; preds = %0
  %24 = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 11, !dbg !805
  store %struct.t_pdbinfo* null, %struct.t_pdbinfo** %24, align 8, !dbg !806, !tbaa !602
  br label %25

; <label>:25                                      ; preds = %23, %19
  %26 = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 9, !dbg !807
  tail call void @llvm.dbg.value(metadata %struct.t_block* %26, i64 0, metadata !125, metadata !518) #6, !dbg !808
  %block2.i = bitcast %struct.t_block* %26 to i8*, !dbg !810
  %27 = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 9, i32 1, !dbg !811
  store i32 0, i32* %27, align 4, !dbg !812, !tbaa !560
  %28 = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 9, i32 3, !dbg !813
  store i32 0, i32* %28, align 4, !dbg !814, !tbaa !564
  %29 = tail call i8* @save_calloc(i8* getelementptr inbounds ([13 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([68 x i8]* @.str1, i64 0, i64 0), i32 44, i32 1, i32 4) #7, !dbg !815
  %30 = bitcast i8* %29 to i32*, !dbg !815
  %31 = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 9, i32 2, !dbg !815
  %32 = bitcast i32** %31 to i8**, !dbg !815
  store i8* %29, i8** %32, align 8, !dbg !815, !tbaa !566
  store i32 0, i32* %30, align 4, !dbg !816, !tbaa !568
  %33 = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 9, i32 4, !dbg !817
  store i32* null, i32** %33, align 8, !dbg !818, !tbaa !571
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !126, metadata !518) #6, !dbg !819
  tail call void @llvm.memset.p0i8.i64(i8* %block2.i, i8 0, i64 1024, i32 4, i1 false) #6, !dbg !820
  ret void, !dbg !821
}

; Function Attrs: nounwind optsize ssp uwtable
define void @free_t_atoms(%struct.t_atoms* nocapture %atoms) #3 {
  tail call void @llvm.dbg.value(metadata %struct.t_atoms* %atoms, i64 0, metadata !511, metadata !518), !dbg !822
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !512, metadata !518), !dbg !823
  %1 = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 0, !dbg !824
  %2 = load i32* %1, align 4, !dbg !824, !tbaa !590
  %3 = icmp sgt i32 %2, 0, !dbg !827
  %4 = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 2, !dbg !828
  br i1 %3, label %.lr.ph, label %._crit_edge, !dbg !830

.lr.ph:                                           ; preds = %0, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %0 ]
  %5 = load i8**** %4, align 8, !dbg !828, !tbaa !708
  %6 = getelementptr inbounds i8*** %5, i64 %indvars.iv, !dbg !828
  %7 = load i8*** %6, align 8, !dbg !828, !tbaa !831
  %8 = load i8** %7, align 8, !dbg !828, !tbaa !831
  tail call void @save_free(i8* getelementptr inbounds ([20 x i8]* @.str22, i64 0, i64 0), i8* getelementptr inbounds ([68 x i8]* @.str1, i64 0, i64 0), i32 180, i8* %8) #7, !dbg !828
  %9 = load i8**** %4, align 8, !dbg !832, !tbaa !708
  %10 = getelementptr inbounds i8*** %9, i64 %indvars.iv, !dbg !833
  %11 = load i8*** %10, align 8, !dbg !833, !tbaa !831
  store i8* null, i8** %11, align 8, !dbg !834, !tbaa !831
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !830
  %12 = load i32* %1, align 4, !dbg !824, !tbaa !590
  %13 = sext i32 %12 to i64, !dbg !827
  %14 = icmp slt i64 %indvars.iv.next, %13, !dbg !827
  br i1 %14, label %.lr.ph, label %._crit_edge, !dbg !830

._crit_edge:                                      ; preds = %.lr.ph, %0
  %15 = bitcast i8**** %4 to i8**, !dbg !835
  %16 = load i8** %15, align 8, !dbg !835, !tbaa !708
  tail call void @save_free(i8* getelementptr inbounds ([16 x i8]* @.str17, i64 0, i64 0), i8* getelementptr inbounds ([68 x i8]* @.str1, i64 0, i64 0), i32 183, i8* %16) #7, !dbg !835
  %17 = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 6, !dbg !836
  %18 = bitcast i8**** %17 to i8**, !dbg !836
  %19 = load i8** %18, align 8, !dbg !836, !tbaa !598
  tail call void @save_free(i8* getelementptr inbounds ([15 x i8]* @.str18, i64 0, i64 0), i8* getelementptr inbounds ([68 x i8]* @.str1, i64 0, i64 0), i32 185, i8* %19) #7, !dbg !836
  %20 = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 1, !dbg !837
  %21 = bitcast %struct.t_atom** %20 to i8**, !dbg !837
  %22 = load i8** %21, align 8, !dbg !837, !tbaa !705
  tail call void @save_free(i8* getelementptr inbounds ([12 x i8]* @.str19, i64 0, i64 0), i8* getelementptr inbounds ([68 x i8]* @.str1, i64 0, i64 0), i32 186, i8* %22) #7, !dbg !837
  %23 = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 11, !dbg !838
  %24 = load %struct.t_pdbinfo** %23, align 8, !dbg !838, !tbaa !602
  %25 = icmp eq %struct.t_pdbinfo* %24, null, !dbg !840
  br i1 %25, label %28, label %26, !dbg !841

; <label>:26                                      ; preds = %._crit_edge
  %27 = bitcast %struct.t_pdbinfo* %24 to i8*, !dbg !842
  tail call void @save_free(i8* getelementptr inbounds ([15 x i8]* @.str21, i64 0, i64 0), i8* getelementptr inbounds ([68 x i8]* @.str1, i64 0, i64 0), i32 188, i8* %27) #7, !dbg !842
  br label %28, !dbg !842

; <label>:28                                      ; preds = %._crit_edge, %26
  store i32 0, i32* %1, align 4, !dbg !843, !tbaa !590
  %29 = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 5, !dbg !844
  store i32 0, i32* %29, align 4, !dbg !845, !tbaa !703
  %30 = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 9, !dbg !846
  tail call void @done_block(%struct.t_block* %30) #8, !dbg !847
  ret void, !dbg !848
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #5

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #6

attributes #0 = { alwaysinline nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { alwaysinline nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone }
attributes #6 = { nounwind }
attributes #7 = { nounwind optsize }
attributes #8 = { optsize }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!514, !515, !516}
!llvm.ident = !{!517}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !23, subprograms: !30, globals: !513, imports: !513)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/typedefs.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{!3, !16}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 41, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/types/atoms.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15}
!6 = !DIEnumerator(name: "egcTC", value: 0)
!7 = !DIEnumerator(name: "egcENER", value: 1)
!8 = !DIEnumerator(name: "egcACC", value: 2)
!9 = !DIEnumerator(name: "egcFREEZE", value: 3)
!10 = !DIEnumerator(name: "egcUser1", value: 4)
!11 = !DIEnumerator(name: "egcUser2", value: 5)
!12 = !DIEnumerator(name: "egcVCM", value: 6)
!13 = !DIEnumerator(name: "egcXTC", value: 7)
!14 = !DIEnumerator(name: "egcORFIT", value: 8)
!15 = !DIEnumerator(name: "egcNR", value: 9)
!16 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !17, line: 38, size: 32, align: 32, elements: !18)
!17 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/types/enums.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!18 = !{!19, !20, !21, !22}
!19 = !DIEnumerator(name: "ebCGS", value: 0)
!20 = !DIEnumerator(name: "ebMOLS", value: 1)
!21 = !DIEnumerator(name: "ebSBLOCKS", value: 2)
!22 = !DIEnumerator(name: "ebNR", value: 3)
!23 = !{!24, !25}
!24 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !26, line: 30, baseType: !27)
!26 = !DIFile(filename: "/usr/include/sys/_types/_size_t.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_size_t", file: !28, line: 92, baseType: !29)
!28 = !DIFile(filename: "/usr/include/i386/_types.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!29 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!30 = !{!31, !99, !105, !127, !194, !358, !480, !488, !491, !494, !498, !502, !509}
!31 = !DISubprogram(name: "__sputc", scope: !32, file: !32, line: 348, type: !33, isLocal: false, isDefinition: true, scopeLine: 348, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32, %struct.__sFILE*)* @__sputc, variables: !96)
!32 = !DIFile(filename: "/usr/include/stdio.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!33 = !DISubroutineType(types: !34)
!34 = !{!35, !35, !36}
!35 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64, align: 64)
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !32, line: 153, baseType: !38)
!38 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !32, line: 122, size: 1216, align: 64, elements: !39)
!39 = !{!40, !43, !44, !45, !47, !48, !53, !54, !56, !60, !65, !74, !80, !81, !84, !85, !89, !93, !94, !95}
!40 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !38, file: !32, line: 123, baseType: !41, size: 64, align: 64)
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64, align: 64)
!42 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !38, file: !32, line: 124, baseType: !35, size: 32, align: 32, offset: 64)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !38, file: !32, line: 125, baseType: !35, size: 32, align: 32, offset: 96)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !38, file: !32, line: 126, baseType: !46, size: 16, align: 16, offset: 128)
!46 = !DIBasicType(name: "short", size: 16, align: 16, encoding: DW_ATE_signed)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !38, file: !32, line: 127, baseType: !46, size: 16, align: 16, offset: 144)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !38, file: !32, line: 128, baseType: !49, size: 128, align: 64, offset: 192)
!49 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !32, line: 88, size: 128, align: 64, elements: !50)
!50 = !{!51, !52}
!51 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !49, file: !32, line: 89, baseType: !41, size: 64, align: 64)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !49, file: !32, line: 90, baseType: !35, size: 32, align: 32, offset: 64)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !38, file: !32, line: 129, baseType: !35, size: 32, align: 32, offset: 320)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !38, file: !32, line: 132, baseType: !55, size: 64, align: 64, offset: 384)
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !38, file: !32, line: 133, baseType: !57, size: 64, align: 64, offset: 448)
!57 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64, align: 64)
!58 = !DISubroutineType(types: !59)
!59 = !{!35, !55}
!60 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !38, file: !32, line: 134, baseType: !61, size: 64, align: 64, offset: 512)
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64, align: 64)
!62 = !DISubroutineType(types: !63)
!63 = !{!35, !55, !64, !35}
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64, align: 64)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !38, file: !32, line: 135, baseType: !66, size: 64, align: 64, offset: 576)
!66 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64, align: 64)
!67 = !DISubroutineType(types: !68)
!68 = !{!69, !55, !69, !35}
!69 = !DIDerivedType(tag: DW_TAG_typedef, name: "fpos_t", file: !32, line: 77, baseType: !70)
!70 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_off_t", file: !71, line: 71, baseType: !72)
!71 = !DIFile(filename: "/usr/include/sys/_types.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!72 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !28, line: 46, baseType: !73)
!73 = !DIBasicType(name: "long long int", size: 64, align: 64, encoding: DW_ATE_signed)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !38, file: !32, line: 136, baseType: !75, size: 64, align: 64, offset: 640)
!75 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 64, align: 64)
!76 = !DISubroutineType(types: !77)
!77 = !{!35, !55, !78, !35}
!78 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64, align: 64)
!79 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !24)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !38, file: !32, line: 139, baseType: !49, size: 128, align: 64, offset: 704)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "_extra", scope: !38, file: !32, line: 140, baseType: !82, size: 64, align: 64, offset: 832)
!82 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !83, size: 64, align: 64)
!83 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILEX", file: !32, line: 94, flags: DIFlagFwdDecl)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !38, file: !32, line: 141, baseType: !35, size: 32, align: 32, offset: 896)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !38, file: !32, line: 144, baseType: !86, size: 24, align: 8, offset: 928)
!86 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 24, align: 8, elements: !87)
!87 = !{!88}
!88 = !DISubrange(count: 3)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !38, file: !32, line: 145, baseType: !90, size: 8, align: 8, offset: 952)
!90 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 8, align: 8, elements: !91)
!91 = !{!92}
!92 = !DISubrange(count: 1)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !38, file: !32, line: 148, baseType: !49, size: 128, align: 64, offset: 960)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !38, file: !32, line: 151, baseType: !35, size: 32, align: 32, offset: 1088)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !38, file: !32, line: 152, baseType: !69, size: 64, align: 64, offset: 1152)
!96 = !{!97, !98}
!97 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "_c", arg: 1, scope: !31, file: !32, line: 348, type: !35)
!98 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "_p", arg: 2, scope: !31, file: !32, line: 348, type: !36)
!99 = !DISubprogram(name: "__sigbits", scope: !100, file: !100, line: 114, type: !101, isLocal: false, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32)* @__sigbits, variables: !103)
!100 = !DIFile(filename: "/usr/include/signal.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!101 = !DISubroutineType(types: !102)
!102 = !{!35, !35}
!103 = !{!104}
!104 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__signo", arg: 1, scope: !99, file: !100, line: 114, type: !35)
!105 = !DISubprogram(name: "init_block", scope: !1, file: !1, line: 38, type: !106, isLocal: false, isDefinition: true, scopeLine: 39, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.t_block*)* @init_block, variables: !124)
!106 = !DISubroutineType(types: !107)
!107 = !{null, !108}
!108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64, align: 64)
!109 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_block", file: !110, line: 52, baseType: !111)
!110 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/types/block.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!111 = !DICompositeType(tag: DW_TAG_structure_type, file: !110, line: 36, size: 8448, align: 64, elements: !112)
!112 = !{!113, !117, !118, !122, !123}
!113 = !DIDerivedType(tag: DW_TAG_member, name: "multinr", scope: !111, file: !110, line: 37, baseType: !114, size: 8192, align: 32)
!114 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 8192, align: 32, elements: !115)
!115 = !{!116}
!116 = !DISubrange(count: 256)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !111, file: !110, line: 43, baseType: !35, size: 32, align: 32, offset: 8192)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !111, file: !110, line: 44, baseType: !119, size: 64, align: 64, offset: 8256)
!119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !120, size: 64, align: 64)
!120 = !DIDerivedType(tag: DW_TAG_typedef, name: "atom_id", file: !121, line: 73, baseType: !35)
!121 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/types/simple.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!122 = !DIDerivedType(tag: DW_TAG_member, name: "nra", scope: !111, file: !110, line: 45, baseType: !35, size: 32, align: 32, offset: 8320)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !111, file: !110, line: 46, baseType: !119, size: 64, align: 64, offset: 8384)
!124 = !{!125, !126}
!125 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "block", arg: 1, scope: !105, file: !1, line: 38, type: !108)
!126 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !105, file: !1, line: 40, type: !35)
!127 = !DISubprogram(name: "init_atom", scope: !1, file: !1, line: 51, type: !128, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.t_atoms*)* @init_atom, variables: !191)
!128 = !DISubroutineType(types: !129)
!129 = !{null, !130}
!130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 64, align: 64)
!131 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_atoms", file: !4, line: 94, baseType: !132)
!132 = !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 75, size: 10240, align: 64, elements: !133)
!133 = !{!134, !135, !156, !159, !160, !161, !162, !163, !164, !165, !166, !174}
!134 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !132, file: !4, line: 76, baseType: !35, size: 32, align: 32)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "atom", scope: !132, file: !4, line: 77, baseType: !136, size: 64, align: 64, offset: 64)
!136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 64, align: 64)
!137 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_atom", file: !4, line: 57, baseType: !138)
!138 = !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 48, size: 320, align: 32, elements: !139)
!139 = !{!140, !143, !144, !145, !146, !148, !149, !150, !151, !155}
!140 = !DIDerivedType(tag: DW_TAG_member, name: "m", scope: !138, file: !4, line: 49, baseType: !141, size: 32, align: 32)
!141 = !DIDerivedType(tag: DW_TAG_typedef, name: "real", file: !121, line: 87, baseType: !142)
!142 = !DIBasicType(name: "float", size: 32, align: 32, encoding: DW_ATE_float)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !138, file: !4, line: 49, baseType: !141, size: 32, align: 32, offset: 32)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "mB", scope: !138, file: !4, line: 50, baseType: !141, size: 32, align: 32, offset: 64)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "qB", scope: !138, file: !4, line: 50, baseType: !141, size: 32, align: 32, offset: 96)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !138, file: !4, line: 51, baseType: !147, size: 16, align: 16, offset: 128)
!147 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "typeB", scope: !138, file: !4, line: 52, baseType: !147, size: 16, align: 16, offset: 144)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "ptype", scope: !138, file: !4, line: 53, baseType: !35, size: 32, align: 32, offset: 160)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "resnr", scope: !138, file: !4, line: 54, baseType: !35, size: 32, align: 32, offset: 192)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "grpnr", scope: !138, file: !4, line: 55, baseType: !152, size: 72, align: 8, offset: 224)
!152 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 72, align: 8, elements: !153)
!153 = !{!154}
!154 = !DISubrange(count: 9)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "chain", scope: !138, file: !4, line: 56, baseType: !42, size: 8, align: 8, offset: 296)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "atomname", scope: !132, file: !4, line: 80, baseType: !157, size: 64, align: 64, offset: 128)
!157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !158, size: 64, align: 64)
!158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64, align: 64)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "atomtype", scope: !132, file: !4, line: 82, baseType: !157, size: 64, align: 64, offset: 192)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "atomtypeB", scope: !132, file: !4, line: 84, baseType: !157, size: 64, align: 64, offset: 256)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "nres", scope: !132, file: !4, line: 86, baseType: !35, size: 32, align: 32, offset: 320)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "resname", scope: !132, file: !4, line: 87, baseType: !157, size: 64, align: 64, offset: 384)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "ngrpname", scope: !132, file: !4, line: 89, baseType: !35, size: 32, align: 32, offset: 448)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "grpname", scope: !132, file: !4, line: 90, baseType: !157, size: 64, align: 64, offset: 512)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "excl", scope: !132, file: !4, line: 91, baseType: !109, size: 8448, align: 64, offset: 576)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "grps", scope: !132, file: !4, line: 92, baseType: !167, size: 1152, align: 64, offset: 9024)
!167 = !DICompositeType(tag: DW_TAG_array_type, baseType: !168, size: 1152, align: 64, elements: !153)
!168 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_grps", file: !4, line: 73, baseType: !169)
!169 = !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 70, size: 128, align: 64, elements: !170)
!170 = !{!171, !172}
!171 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !169, file: !4, line: 71, baseType: !35, size: 32, align: 32)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "nm_ind", scope: !169, file: !4, line: 72, baseType: !173, size: 64, align: 64, offset: 64)
!173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64, align: 64)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "pdbinfo", scope: !132, file: !4, line: 93, baseType: !175, size: 64, align: 64, offset: 10176)
!175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !176, size: 64, align: 64)
!176 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_pdbinfo", file: !4, line: 68, baseType: !177)
!177 = !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 59, size: 416, align: 32, elements: !178)
!178 = !{!179, !180, !181, !182, !186, !187, !188, !189}
!179 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !177, file: !4, line: 60, baseType: !35, size: 32, align: 32)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "atomnr", scope: !177, file: !4, line: 61, baseType: !35, size: 32, align: 32, offset: 32)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "altloc", scope: !177, file: !4, line: 62, baseType: !24, size: 8, align: 8, offset: 64)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "pdbresnr", scope: !177, file: !4, line: 63, baseType: !183, size: 48, align: 8, offset: 72)
!183 = !DICompositeType(tag: DW_TAG_array_type, baseType: !24, size: 48, align: 8, elements: !184)
!184 = !{!185}
!185 = !DISubrange(count: 6)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "occup", scope: !177, file: !4, line: 64, baseType: !141, size: 32, align: 32, offset: 128)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "bfac", scope: !177, file: !4, line: 65, baseType: !141, size: 32, align: 32, offset: 160)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "bAnisotropic", scope: !177, file: !4, line: 66, baseType: !35, size: 32, align: 32, offset: 192)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "uij", scope: !177, file: !4, line: 67, baseType: !190, size: 192, align: 32, offset: 224)
!190 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 192, align: 32, elements: !184)
!191 = !{!192, !193}
!192 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "at", arg: 1, scope: !127, file: !1, line: 51, type: !130)
!193 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !127, file: !1, line: 53, type: !35)
!194 = !DISubprogram(name: "init_top", scope: !1, file: !1, line: 72, type: !195, isLocal: false, isDefinition: true, scopeLine: 73, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.t_topology*)* @init_top, variables: !355)
!195 = !DISubroutineType(types: !196)
!196 = !{null, !197}
!197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !198, size: 64, align: 64)
!198 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_topology", file: !199, line: 42, baseType: !200)
!199 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/types/topology.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!200 = !DICompositeType(tag: DW_TAG_structure_type, file: !199, line: 36, size: 402112, align: 64, elements: !201)
!201 = !{!202, !203, !337, !338, !340}
!202 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !200, file: !199, line: 37, baseType: !158, size: 64, align: 64)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "idef", scope: !200, file: !199, line: 38, baseType: !204, size: 366336, align: 64, offset: 64)
!204 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_idef", file: !205, line: 188, baseType: !206)
!205 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/types/idef.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!206 = !DICompositeType(tag: DW_TAG_structure_type, file: !205, line: 179, size: 366336, align: 64, elements: !207)
!207 = !{!208, !209, !210, !211, !214, !325}
!208 = !DIDerivedType(tag: DW_TAG_member, name: "ntypes", scope: !206, file: !205, line: 181, baseType: !35, size: 32, align: 32)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "nodeid", scope: !206, file: !205, line: 182, baseType: !35, size: 32, align: 32, offset: 32)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "atnr", scope: !206, file: !205, line: 183, baseType: !35, size: 32, align: 32, offset: 64)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "functype", scope: !206, file: !205, line: 184, baseType: !212, size: 64, align: 64, offset: 128)
!212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !213, size: 64, align: 64)
!213 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_functype", file: !205, line: 133, baseType: !35)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "iparams", scope: !206, file: !205, line: 185, baseType: !215, size: 64, align: 64, offset: 192)
!215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !216, size: 64, align: 64)
!216 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_iparams", file: !205, line: 131, baseType: !217)
!217 = !DICompositeType(tag: DW_TAG_union_type, file: !205, line: 97, size: 192, align: 32, elements: !218)
!218 = !{!219, !225, !232, !238, !247, !252, !259, !267, !272, !277, !283, !289, !294, !303, !312, !321}
!219 = !DIDerivedType(tag: DW_TAG_member, name: "bham", scope: !217, file: !205, line: 105, baseType: !220, size: 96, align: 32)
!220 = !DICompositeType(tag: DW_TAG_structure_type, scope: !217, file: !205, line: 105, size: 96, align: 32, elements: !221)
!221 = !{!222, !223, !224}
!222 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !220, file: !205, line: 105, baseType: !141, size: 32, align: 32)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !220, file: !205, line: 105, baseType: !141, size: 32, align: 32, offset: 32)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "c", scope: !220, file: !205, line: 105, baseType: !141, size: 32, align: 32, offset: 64)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "harmonic", scope: !217, file: !205, line: 106, baseType: !226, size: 128, align: 32)
!226 = !DICompositeType(tag: DW_TAG_structure_type, scope: !217, file: !205, line: 106, size: 128, align: 32, elements: !227)
!227 = !{!228, !229, !230, !231}
!228 = !DIDerivedType(tag: DW_TAG_member, name: "rA", scope: !226, file: !205, line: 106, baseType: !141, size: 32, align: 32)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "krA", scope: !226, file: !205, line: 106, baseType: !141, size: 32, align: 32, offset: 32)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "rB", scope: !226, file: !205, line: 106, baseType: !141, size: 32, align: 32, offset: 64)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "krB", scope: !226, file: !205, line: 106, baseType: !141, size: 32, align: 32, offset: 96)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "cubic", scope: !217, file: !205, line: 108, baseType: !233, size: 96, align: 32)
!233 = !DICompositeType(tag: DW_TAG_structure_type, scope: !217, file: !205, line: 108, size: 96, align: 32, elements: !234)
!234 = !{!235, !236, !237}
!235 = !DIDerivedType(tag: DW_TAG_member, name: "b0", scope: !233, file: !205, line: 108, baseType: !141, size: 32, align: 32)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "kb", scope: !233, file: !205, line: 108, baseType: !141, size: 32, align: 32, offset: 32)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "kcub", scope: !233, file: !205, line: 108, baseType: !141, size: 32, align: 32, offset: 64)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "wpol", scope: !217, file: !205, line: 110, baseType: !239, size: 192, align: 32)
!239 = !DICompositeType(tag: DW_TAG_structure_type, scope: !217, file: !205, line: 110, size: 192, align: 32, elements: !240)
!240 = !{!241, !242, !243, !244, !245, !246}
!241 = !DIDerivedType(tag: DW_TAG_member, name: "kx", scope: !239, file: !205, line: 110, baseType: !141, size: 32, align: 32)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "ky", scope: !239, file: !205, line: 110, baseType: !141, size: 32, align: 32, offset: 32)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "kz", scope: !239, file: !205, line: 110, baseType: !141, size: 32, align: 32, offset: 64)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "rOH", scope: !239, file: !205, line: 110, baseType: !141, size: 32, align: 32, offset: 96)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "rHH", scope: !239, file: !205, line: 110, baseType: !141, size: 32, align: 32, offset: 128)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "rOD", scope: !239, file: !205, line: 110, baseType: !141, size: 32, align: 32, offset: 160)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "lj", scope: !217, file: !205, line: 111, baseType: !248, size: 64, align: 32)
!248 = !DICompositeType(tag: DW_TAG_structure_type, scope: !217, file: !205, line: 111, size: 64, align: 32, elements: !249)
!249 = !{!250, !251}
!250 = !DIDerivedType(tag: DW_TAG_member, name: "c6", scope: !248, file: !205, line: 111, baseType: !141, size: 32, align: 32)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "c12", scope: !248, file: !205, line: 111, baseType: !141, size: 32, align: 32, offset: 32)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "lj14", scope: !217, file: !205, line: 112, baseType: !253, size: 128, align: 32)
!253 = !DICompositeType(tag: DW_TAG_structure_type, scope: !217, file: !205, line: 112, size: 128, align: 32, elements: !254)
!254 = !{!255, !256, !257, !258}
!255 = !DIDerivedType(tag: DW_TAG_member, name: "c6A", scope: !253, file: !205, line: 112, baseType: !141, size: 32, align: 32)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "c12A", scope: !253, file: !205, line: 112, baseType: !141, size: 32, align: 32, offset: 32)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "c6B", scope: !253, file: !205, line: 112, baseType: !141, size: 32, align: 32, offset: 64)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "c12B", scope: !253, file: !205, line: 112, baseType: !141, size: 32, align: 32, offset: 96)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "pdihs", scope: !217, file: !205, line: 117, baseType: !260, size: 160, align: 32)
!260 = !DICompositeType(tag: DW_TAG_structure_type, scope: !217, file: !205, line: 117, size: 160, align: 32, elements: !261)
!261 = !{!262, !263, !264, !265, !266}
!262 = !DIDerivedType(tag: DW_TAG_member, name: "phiA", scope: !260, file: !205, line: 117, baseType: !141, size: 32, align: 32)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "cpA", scope: !260, file: !205, line: 117, baseType: !141, size: 32, align: 32, offset: 32)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "mult", scope: !260, file: !205, line: 117, baseType: !35, size: 32, align: 32, offset: 64)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "phiB", scope: !260, file: !205, line: 117, baseType: !141, size: 32, align: 32, offset: 96)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "cpB", scope: !260, file: !205, line: 117, baseType: !141, size: 32, align: 32, offset: 128)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "shake", scope: !217, file: !205, line: 118, baseType: !268, size: 64, align: 32)
!268 = !DICompositeType(tag: DW_TAG_structure_type, scope: !217, file: !205, line: 118, size: 64, align: 32, elements: !269)
!269 = !{!270, !271}
!270 = !DIDerivedType(tag: DW_TAG_member, name: "dA", scope: !268, file: !205, line: 118, baseType: !141, size: 32, align: 32)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "dB", scope: !268, file: !205, line: 118, baseType: !141, size: 32, align: 32, offset: 32)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "settle", scope: !217, file: !205, line: 123, baseType: !273, size: 64, align: 32)
!273 = !DICompositeType(tag: DW_TAG_structure_type, scope: !217, file: !205, line: 123, size: 64, align: 32, elements: !274)
!274 = !{!275, !276}
!275 = !DIDerivedType(tag: DW_TAG_member, name: "doh", scope: !273, file: !205, line: 123, baseType: !141, size: 32, align: 32)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "dhh", scope: !273, file: !205, line: 123, baseType: !141, size: 32, align: 32, offset: 32)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "morse", scope: !217, file: !205, line: 124, baseType: !278, size: 96, align: 32)
!278 = !DICompositeType(tag: DW_TAG_structure_type, scope: !217, file: !205, line: 124, size: 96, align: 32, elements: !279)
!279 = !{!280, !281, !282}
!280 = !DIDerivedType(tag: DW_TAG_member, name: "b0", scope: !278, file: !205, line: 124, baseType: !141, size: 32, align: 32)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "cb", scope: !278, file: !205, line: 124, baseType: !141, size: 32, align: 32, offset: 32)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "beta", scope: !278, file: !205, line: 124, baseType: !141, size: 32, align: 32, offset: 64)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "posres", scope: !217, file: !205, line: 125, baseType: !284, size: 192, align: 32)
!284 = !DICompositeType(tag: DW_TAG_structure_type, scope: !217, file: !205, line: 125, size: 192, align: 32, elements: !285)
!285 = !{!286, !288}
!286 = !DIDerivedType(tag: DW_TAG_member, name: "pos0", scope: !284, file: !205, line: 125, baseType: !287, size: 96, align: 32)
!287 = !DICompositeType(tag: DW_TAG_array_type, baseType: !141, size: 96, align: 32, elements: !87)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "fc", scope: !284, file: !205, line: 125, baseType: !287, size: 96, align: 32, offset: 96)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "rbdihs", scope: !217, file: !205, line: 126, baseType: !290, size: 192, align: 32)
!290 = !DICompositeType(tag: DW_TAG_structure_type, scope: !217, file: !205, line: 126, size: 192, align: 32, elements: !291)
!291 = !{!292}
!292 = !DIDerivedType(tag: DW_TAG_member, name: "rbc", scope: !290, file: !205, line: 126, baseType: !293, size: 192, align: 32)
!293 = !DICompositeType(tag: DW_TAG_array_type, baseType: !141, size: 192, align: 32, elements: !184)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "dummy", scope: !217, file: !205, line: 127, baseType: !295, size: 192, align: 32)
!295 = !DICompositeType(tag: DW_TAG_structure_type, scope: !217, file: !205, line: 127, size: 192, align: 32, elements: !296)
!296 = !{!297, !298, !299, !300, !301, !302}
!297 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !295, file: !205, line: 127, baseType: !141, size: 32, align: 32)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !295, file: !205, line: 127, baseType: !141, size: 32, align: 32, offset: 32)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "c", scope: !295, file: !205, line: 127, baseType: !141, size: 32, align: 32, offset: 64)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !295, file: !205, line: 127, baseType: !141, size: 32, align: 32, offset: 96)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "e", scope: !295, file: !205, line: 127, baseType: !141, size: 32, align: 32, offset: 128)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "f", scope: !295, file: !205, line: 127, baseType: !141, size: 32, align: 32, offset: 160)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "disres", scope: !217, file: !205, line: 128, baseType: !304, size: 192, align: 32)
!304 = !DICompositeType(tag: DW_TAG_structure_type, scope: !217, file: !205, line: 128, size: 192, align: 32, elements: !305)
!305 = !{!306, !307, !308, !309, !310, !311}
!306 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !304, file: !205, line: 128, baseType: !141, size: 32, align: 32)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "up1", scope: !304, file: !205, line: 128, baseType: !141, size: 32, align: 32, offset: 32)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "up2", scope: !304, file: !205, line: 128, baseType: !141, size: 32, align: 32, offset: 64)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "kfac", scope: !304, file: !205, line: 128, baseType: !141, size: 32, align: 32, offset: 96)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !304, file: !205, line: 128, baseType: !35, size: 32, align: 32, offset: 128)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "label", scope: !304, file: !205, line: 128, baseType: !35, size: 32, align: 32, offset: 160)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "orires", scope: !217, file: !205, line: 129, baseType: !313, size: 192, align: 32)
!313 = !DICompositeType(tag: DW_TAG_structure_type, scope: !217, file: !205, line: 129, size: 192, align: 32, elements: !314)
!314 = !{!315, !316, !317, !318, !319, !320}
!315 = !DIDerivedType(tag: DW_TAG_member, name: "ex", scope: !313, file: !205, line: 129, baseType: !35, size: 32, align: 32)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "pow", scope: !313, file: !205, line: 129, baseType: !35, size: 32, align: 32, offset: 32)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "label", scope: !313, file: !205, line: 129, baseType: !35, size: 32, align: 32, offset: 64)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "c", scope: !313, file: !205, line: 129, baseType: !141, size: 32, align: 32, offset: 96)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "obs", scope: !313, file: !205, line: 129, baseType: !141, size: 32, align: 32, offset: 128)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "kfac", scope: !313, file: !205, line: 129, baseType: !141, size: 32, align: 32, offset: 160)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "generic", scope: !217, file: !205, line: 130, baseType: !322, size: 192, align: 32)
!322 = !DICompositeType(tag: DW_TAG_structure_type, scope: !217, file: !205, line: 130, size: 192, align: 32, elements: !323)
!323 = !{!324}
!324 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !322, file: !205, line: 130, baseType: !293, size: 192, align: 32)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "il", scope: !206, file: !205, line: 187, baseType: !326, size: 366080, align: 64, offset: 256)
!326 = !DICompositeType(tag: DW_TAG_array_type, baseType: !327, size: 366080, align: 64, elements: !335)
!327 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_ilist", file: !205, line: 140, baseType: !328)
!328 = !DICompositeType(tag: DW_TAG_structure_type, file: !205, line: 135, size: 8320, align: 64, elements: !329)
!329 = !{!330, !331, !332}
!330 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !328, file: !205, line: 137, baseType: !35, size: 32, align: 32)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "multinr", scope: !328, file: !205, line: 138, baseType: !114, size: 8192, align: 32, offset: 32)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "iatoms", scope: !328, file: !205, line: 139, baseType: !333, size: 64, align: 64, offset: 8256)
!333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !334, size: 64, align: 64)
!334 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_iatom", file: !205, line: 45, baseType: !120)
!335 = !{!336}
!336 = !DISubrange(count: 44)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "atoms", scope: !200, file: !199, line: 39, baseType: !131, size: 10240, align: 64, offset: 366400)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !200, file: !199, line: 40, baseType: !339, size: 25344, align: 64, offset: 376640)
!339 = !DICompositeType(tag: DW_TAG_array_type, baseType: !109, size: 25344, align: 64, elements: !87)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !200, file: !199, line: 41, baseType: !341, size: 128, align: 64, offset: 401984)
!341 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_symtab", file: !342, line: 46, baseType: !343)
!342 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/types/symtab.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!343 = !DICompositeType(tag: DW_TAG_structure_type, file: !342, line: 42, size: 128, align: 64, elements: !344)
!344 = !{!345, !346}
!345 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !343, file: !342, line: 44, baseType: !35, size: 32, align: 32)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "symbuf", scope: !343, file: !342, line: 45, baseType: !347, size: 64, align: 64, offset: 64)
!347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !348, size: 64, align: 64)
!348 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_symbuf", file: !342, line: 40, baseType: !349)
!349 = !DICompositeType(tag: DW_TAG_structure_type, name: "symbuf", file: !342, line: 36, size: 192, align: 64, elements: !350)
!350 = !{!351, !352, !353}
!351 = !DIDerivedType(tag: DW_TAG_member, name: "bufsize", scope: !349, file: !342, line: 37, baseType: !35, size: 32, align: 32)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !349, file: !342, line: 38, baseType: !158, size: 64, align: 64, offset: 64)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !349, file: !342, line: 39, baseType: !354, size: 64, align: 64, offset: 128)
!354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !349, size: 64, align: 64)
!355 = !{!356, !357}
!356 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "top", arg: 1, scope: !194, file: !1, line: 72, type: !197)
!357 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !194, file: !1, line: 74, type: !35)
!358 = !DISubprogram(name: "init_inputrec", scope: !1, file: !1, line: 83, type: !359, isLocal: false, isDefinition: true, scopeLine: 84, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.t_inputrec*)* @init_inputrec, variables: !478)
!359 = !DISubroutineType(types: !360)
!360 = !{null, !361}
!361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !362, size: 64, align: 64)
!362 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_inputrec", file: !363, line: 143, baseType: !364)
!363 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/types/inputrec.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!364 = !DICompositeType(tag: DW_TAG_structure_type, file: !363, line: 55, size: 4736, align: 64, elements: !365)
!365 = !{!366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !469, !477}
!366 = !DIDerivedType(tag: DW_TAG_member, name: "eI", scope: !364, file: !363, line: 56, baseType: !35, size: 32, align: 32)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "nsteps", scope: !364, file: !363, line: 57, baseType: !35, size: 32, align: 32, offset: 32)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !364, file: !363, line: 58, baseType: !35, size: 32, align: 32, offset: 64)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "nstlist", scope: !364, file: !363, line: 59, baseType: !35, size: 32, align: 32, offset: 96)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "ndelta", scope: !364, file: !363, line: 60, baseType: !35, size: 32, align: 32, offset: 128)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "bDomDecomp", scope: !364, file: !363, line: 61, baseType: !35, size: 32, align: 32, offset: 160)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "decomp_dir", scope: !364, file: !363, line: 62, baseType: !35, size: 32, align: 32, offset: 192)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "nstcomm", scope: !364, file: !363, line: 63, baseType: !35, size: 32, align: 32, offset: 224)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "nstlog", scope: !364, file: !363, line: 65, baseType: !35, size: 32, align: 32, offset: 256)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "nstxout", scope: !364, file: !363, line: 66, baseType: !35, size: 32, align: 32, offset: 288)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "nstvout", scope: !364, file: !363, line: 67, baseType: !35, size: 32, align: 32, offset: 320)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "nstfout", scope: !364, file: !363, line: 68, baseType: !35, size: 32, align: 32, offset: 352)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "nstenergy", scope: !364, file: !363, line: 69, baseType: !35, size: 32, align: 32, offset: 384)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "nstxtcout", scope: !364, file: !363, line: 70, baseType: !35, size: 32, align: 32, offset: 416)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "init_t", scope: !364, file: !363, line: 71, baseType: !141, size: 32, align: 32, offset: 448)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "delta_t", scope: !364, file: !363, line: 72, baseType: !141, size: 32, align: 32, offset: 480)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "xtcprec", scope: !364, file: !363, line: 73, baseType: !141, size: 32, align: 32, offset: 512)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "nkx", scope: !364, file: !363, line: 74, baseType: !35, size: 32, align: 32, offset: 544)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "nky", scope: !364, file: !363, line: 74, baseType: !35, size: 32, align: 32, offset: 576)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "nkz", scope: !364, file: !363, line: 74, baseType: !35, size: 32, align: 32, offset: 608)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "pme_order", scope: !364, file: !363, line: 76, baseType: !35, size: 32, align: 32, offset: 640)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "ewald_rtol", scope: !364, file: !363, line: 77, baseType: !141, size: 32, align: 32, offset: 672)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "ewald_geometry", scope: !364, file: !363, line: 79, baseType: !35, size: 32, align: 32, offset: 704)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "epsilon_surface", scope: !364, file: !363, line: 80, baseType: !35, size: 32, align: 32, offset: 736)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "bOptFFT", scope: !364, file: !363, line: 81, baseType: !35, size: 32, align: 32, offset: 768)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "ePBC", scope: !364, file: !363, line: 82, baseType: !35, size: 32, align: 32, offset: 800)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "bUncStart", scope: !364, file: !363, line: 83, baseType: !35, size: 32, align: 32, offset: 832)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "etc", scope: !364, file: !363, line: 84, baseType: !35, size: 32, align: 32, offset: 864)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "epc", scope: !364, file: !363, line: 85, baseType: !35, size: 32, align: 32, offset: 896)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "epct", scope: !364, file: !363, line: 86, baseType: !35, size: 32, align: 32, offset: 928)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "tau_p", scope: !364, file: !363, line: 87, baseType: !141, size: 32, align: 32, offset: 960)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "ref_p", scope: !364, file: !363, line: 88, baseType: !398, size: 288, align: 32, offset: 992)
!398 = !DIDerivedType(tag: DW_TAG_typedef, name: "tensor", file: !121, line: 105, baseType: !399)
!399 = !DICompositeType(tag: DW_TAG_array_type, baseType: !141, size: 288, align: 32, elements: !400)
!400 = !{!88, !88}
!401 = !DIDerivedType(tag: DW_TAG_member, name: "compress", scope: !364, file: !363, line: 89, baseType: !398, size: 288, align: 32, offset: 1280)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "bSimAnn", scope: !364, file: !363, line: 90, baseType: !35, size: 32, align: 32, offset: 1568)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "zero_temp_time", scope: !364, file: !363, line: 91, baseType: !141, size: 32, align: 32, offset: 1600)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "rlist", scope: !364, file: !363, line: 92, baseType: !141, size: 32, align: 32, offset: 1632)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "coulombtype", scope: !364, file: !363, line: 93, baseType: !35, size: 32, align: 32, offset: 1664)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "rcoulomb_switch", scope: !364, file: !363, line: 94, baseType: !141, size: 32, align: 32, offset: 1696)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "rcoulomb", scope: !364, file: !363, line: 95, baseType: !141, size: 32, align: 32, offset: 1728)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "vdwtype", scope: !364, file: !363, line: 96, baseType: !35, size: 32, align: 32, offset: 1760)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "rvdw_switch", scope: !364, file: !363, line: 97, baseType: !141, size: 32, align: 32, offset: 1792)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "rvdw", scope: !364, file: !363, line: 98, baseType: !141, size: 32, align: 32, offset: 1824)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "epsilon_r", scope: !364, file: !363, line: 99, baseType: !141, size: 32, align: 32, offset: 1856)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "eDispCorr", scope: !364, file: !363, line: 100, baseType: !35, size: 32, align: 32, offset: 1888)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "shake_tol", scope: !364, file: !363, line: 101, baseType: !141, size: 32, align: 32, offset: 1920)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "fudgeQQ", scope: !364, file: !363, line: 102, baseType: !141, size: 32, align: 32, offset: 1952)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "efep", scope: !364, file: !363, line: 103, baseType: !35, size: 32, align: 32, offset: 1984)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "init_lambda", scope: !364, file: !363, line: 104, baseType: !141, size: 32, align: 32, offset: 2016)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "delta_lambda", scope: !364, file: !363, line: 105, baseType: !141, size: 32, align: 32, offset: 2048)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "sc_alpha", scope: !364, file: !363, line: 106, baseType: !141, size: 32, align: 32, offset: 2080)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "sc_sigma", scope: !364, file: !363, line: 107, baseType: !141, size: 32, align: 32, offset: 2112)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "dr_fc", scope: !364, file: !363, line: 108, baseType: !141, size: 32, align: 32, offset: 2144)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "eDisreWeighting", scope: !364, file: !363, line: 109, baseType: !35, size: 32, align: 32, offset: 2176)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "bDisreMixed", scope: !364, file: !363, line: 110, baseType: !35, size: 32, align: 32, offset: 2208)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "nstdisreout", scope: !364, file: !363, line: 111, baseType: !35, size: 32, align: 32, offset: 2240)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "dr_tau", scope: !364, file: !363, line: 112, baseType: !141, size: 32, align: 32, offset: 2272)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "orires_fc", scope: !364, file: !363, line: 113, baseType: !141, size: 32, align: 32, offset: 2304)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "orires_tau", scope: !364, file: !363, line: 114, baseType: !141, size: 32, align: 32, offset: 2336)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "nstorireout", scope: !364, file: !363, line: 115, baseType: !35, size: 32, align: 32, offset: 2368)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "em_stepsize", scope: !364, file: !363, line: 116, baseType: !141, size: 32, align: 32, offset: 2400)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "em_tol", scope: !364, file: !363, line: 117, baseType: !141, size: 32, align: 32, offset: 2432)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "niter", scope: !364, file: !363, line: 118, baseType: !35, size: 32, align: 32, offset: 2464)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "fc_stepsize", scope: !364, file: !363, line: 120, baseType: !35, size: 32, align: 32, offset: 2496)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "nstcgsteep", scope: !364, file: !363, line: 122, baseType: !35, size: 32, align: 32, offset: 2528)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "eConstrAlg", scope: !364, file: !363, line: 124, baseType: !35, size: 32, align: 32, offset: 2560)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "nProjOrder", scope: !364, file: !363, line: 125, baseType: !35, size: 32, align: 32, offset: 2592)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "LincsWarnAngle", scope: !364, file: !363, line: 126, baseType: !141, size: 32, align: 32, offset: 2624)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "bShakeSOR", scope: !364, file: !363, line: 127, baseType: !35, size: 32, align: 32, offset: 2656)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "bd_temp", scope: !364, file: !363, line: 128, baseType: !141, size: 32, align: 32, offset: 2688)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "bd_fric", scope: !364, file: !363, line: 129, baseType: !141, size: 32, align: 32, offset: 2720)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "ld_seed", scope: !364, file: !363, line: 130, baseType: !35, size: 32, align: 32, offset: 2752)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "cos_accel", scope: !364, file: !363, line: 131, baseType: !141, size: 32, align: 32, offset: 2784)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "userint1", scope: !364, file: !363, line: 132, baseType: !35, size: 32, align: 32, offset: 2816)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "userint2", scope: !364, file: !363, line: 133, baseType: !35, size: 32, align: 32, offset: 2848)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "userint3", scope: !364, file: !363, line: 134, baseType: !35, size: 32, align: 32, offset: 2880)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "userint4", scope: !364, file: !363, line: 135, baseType: !35, size: 32, align: 32, offset: 2912)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "userreal1", scope: !364, file: !363, line: 136, baseType: !141, size: 32, align: 32, offset: 2944)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "userreal2", scope: !364, file: !363, line: 137, baseType: !141, size: 32, align: 32, offset: 2976)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "userreal3", scope: !364, file: !363, line: 138, baseType: !141, size: 32, align: 32, offset: 3008)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "userreal4", scope: !364, file: !363, line: 139, baseType: !141, size: 32, align: 32, offset: 3040)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !364, file: !363, line: 140, baseType: !450, size: 512, align: 64, offset: 3072)
!450 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_grpopts", file: !363, line: 53, baseType: !451)
!451 = !DICompositeType(tag: DW_TAG_structure_type, file: !363, line: 42, size: 512, align: 64, elements: !452)
!452 = !{!453, !454, !455, !456, !457, !459, !460, !461, !464, !468}
!453 = !DIDerivedType(tag: DW_TAG_member, name: "ngtc", scope: !451, file: !363, line: 43, baseType: !35, size: 32, align: 32)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "ngacc", scope: !451, file: !363, line: 44, baseType: !35, size: 32, align: 32, offset: 32)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "ngfrz", scope: !451, file: !363, line: 45, baseType: !35, size: 32, align: 32, offset: 64)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "ngener", scope: !451, file: !363, line: 46, baseType: !35, size: 32, align: 32, offset: 96)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "nrdf", scope: !451, file: !363, line: 47, baseType: !458, size: 64, align: 64, offset: 128)
!458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !141, size: 64, align: 64)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "ref_t", scope: !451, file: !363, line: 48, baseType: !458, size: 64, align: 64, offset: 192)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "tau_t", scope: !451, file: !363, line: 49, baseType: !458, size: 64, align: 64, offset: 256)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "acc", scope: !451, file: !363, line: 50, baseType: !462, size: 64, align: 64, offset: 320)
!462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !463, size: 64, align: 64)
!463 = !DIDerivedType(tag: DW_TAG_typedef, name: "rvec", file: !121, line: 101, baseType: !287)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "nFreeze", scope: !451, file: !363, line: 51, baseType: !465, size: 64, align: 64, offset: 384)
!465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !466, size: 64, align: 64)
!466 = !DIDerivedType(tag: DW_TAG_typedef, name: "ivec", file: !121, line: 107, baseType: !467)
!467 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 96, align: 32, elements: !87)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "eg_excl", scope: !451, file: !363, line: 52, baseType: !173, size: 64, align: 64, offset: 448)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "ex", scope: !364, file: !363, line: 141, baseType: !470, size: 576, align: 64, offset: 3584)
!470 = !DICompositeType(tag: DW_TAG_array_type, baseType: !471, size: 576, align: 64, elements: !87)
!471 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_cosines", file: !363, line: 40, baseType: !472)
!472 = !DICompositeType(tag: DW_TAG_structure_type, file: !363, line: 36, size: 192, align: 64, elements: !473)
!473 = !{!474, !475, !476}
!474 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !472, file: !363, line: 37, baseType: !35, size: 32, align: 32)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !472, file: !363, line: 38, baseType: !458, size: 64, align: 64, offset: 64)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "phi", scope: !472, file: !363, line: 39, baseType: !458, size: 64, align: 64, offset: 128)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "et", scope: !364, file: !363, line: 142, baseType: !470, size: 576, align: 64, offset: 4160)
!478 = !{!479}
!479 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ir", arg: 1, scope: !358, file: !1, line: 83, type: !361)
!480 = !DISubprogram(name: "stupid_fill", scope: !1, file: !1, line: 88, type: !481, isLocal: false, isDefinition: true, scopeLine: 89, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.t_block*, i32, i32)* @stupid_fill, variables: !483)
!481 = !DISubroutineType(types: !482)
!482 = !{null, !108, !35, !35}
!483 = !{!484, !485, !486, !487}
!484 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "grp", arg: 1, scope: !480, file: !1, line: 88, type: !108)
!485 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "natom", arg: 2, scope: !480, file: !1, line: 88, type: !35)
!486 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "bOneIndexGroup", arg: 3, scope: !480, file: !1, line: 88, type: !35)
!487 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !480, file: !1, line: 90, type: !35)
!488 = !DISubprogram(name: "done_block", scope: !1, file: !1, line: 112, type: !106, isLocal: false, isDefinition: true, scopeLine: 113, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.t_block*)* @done_block, variables: !489)
!489 = !{!490}
!490 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "block", arg: 1, scope: !488, file: !1, line: 112, type: !108)
!491 = !DISubprogram(name: "done_atom", scope: !1, file: !1, line: 120, type: !128, isLocal: false, isDefinition: true, scopeLine: 121, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.t_atoms*)* @done_atom, variables: !492)
!492 = !{!493}
!493 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "at", arg: 1, scope: !491, file: !1, line: 120, type: !130)
!494 = !DISubprogram(name: "done_top", scope: !1, file: !1, line: 130, type: !195, isLocal: false, isDefinition: true, scopeLine: 131, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.t_topology*)* @done_top, variables: !495)
!495 = !{!496, !497}
!496 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "top", arg: 1, scope: !494, file: !1, line: 130, type: !197)
!497 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !494, file: !1, line: 132, type: !35)
!498 = !DISubprogram(name: "done_inputrec", scope: !1, file: !1, line: 140, type: !359, isLocal: false, isDefinition: true, scopeLine: 141, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.t_inputrec*)* @done_inputrec, variables: !499)
!499 = !{!500, !501}
!500 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ir", arg: 1, scope: !498, file: !1, line: 140, type: !361)
!501 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "m", scope: !498, file: !1, line: 142, type: !35)
!502 = !DISubprogram(name: "init_t_atoms", scope: !1, file: !1, line: 157, type: !503, isLocal: false, isDefinition: true, scopeLine: 158, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.t_atoms*, i32, i32)* @init_t_atoms, variables: !505)
!503 = !DISubroutineType(types: !504)
!504 = !{null, !130, !35, !35}
!505 = !{!506, !507, !508}
!506 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "atoms", arg: 1, scope: !502, file: !1, line: 157, type: !130)
!507 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "natoms", arg: 2, scope: !502, file: !1, line: 157, type: !35)
!508 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "bPdbinfo", arg: 3, scope: !502, file: !1, line: 157, type: !35)
!509 = !DISubprogram(name: "free_t_atoms", scope: !1, file: !1, line: 175, type: !128, isLocal: false, isDefinition: true, scopeLine: 176, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.t_atoms*)* @free_t_atoms, variables: !510)
!510 = !{!511, !512}
!511 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "atoms", arg: 1, scope: !509, file: !1, line: 175, type: !130)
!512 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !509, file: !1, line: 177, type: !35)
!513 = !{}
!514 = !{i32 2, !"Dwarf Version", i32 2}
!515 = !{i32 2, !"Debug Info Version", i32 700000003}
!516 = !{i32 1, !"PIC Level", i32 2}
!517 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!518 = !DIExpression()
!519 = !DILocation(line: 348, column: 40, scope: !31)
!520 = !DILocation(line: 348, column: 50, scope: !31)
!521 = !DILocation(line: 349, column: 12, scope: !522)
!522 = distinct !DILexicalBlock(scope: !31, file: !32, line: 349, column: 6)
!523 = !DILocation(line: 349, column: 6, scope: !522)
!524 = !{!525, !529, i64 12}
!525 = !{!"__sFILE", !526, i64 0, !529, i64 8, !529, i64 12, !530, i64 16, !530, i64 18, !531, i64 24, !529, i64 40, !526, i64 48, !526, i64 56, !526, i64 64, !526, i64 72, !526, i64 80, !531, i64 88, !526, i64 104, !529, i64 112, !527, i64 116, !527, i64 119, !531, i64 120, !529, i64 136, !532, i64 144}
!526 = !{!"any pointer", !527, i64 0}
!527 = !{!"omnipotent char", !528, i64 0}
!528 = !{!"Simple C/C++ TBAA"}
!529 = !{!"int", !527, i64 0}
!530 = !{!"short", !527, i64 0}
!531 = !{!"__sbuf", !526, i64 0, !529, i64 8}
!532 = !{!"long long", !527, i64 0}
!533 = !DILocation(line: 349, column: 15, scope: !522)
!534 = !DILocation(line: 349, column: 20, scope: !522)
!535 = !DILocation(line: 350, column: 10, scope: !522)
!536 = !DILocation(line: 349, column: 38, scope: !522)
!537 = !{!525, !529, i64 40}
!538 = !DILocation(line: 349, column: 31, scope: !522)
!539 = !DILocation(line: 349, column: 59, scope: !522)
!540 = !DILocation(line: 349, column: 47, scope: !522)
!541 = !DILocation(line: 350, column: 23, scope: !522)
!542 = !DILocation(line: 350, column: 16, scope: !522)
!543 = !DILocation(line: 350, column: 18, scope: !522)
!544 = !{!525, !526, i64 0}
!545 = !DILocation(line: 350, column: 21, scope: !522)
!546 = !{!527, !527, i64 0}
!547 = !DILocation(line: 350, column: 3, scope: !522)
!548 = !DILocation(line: 352, column: 11, scope: !522)
!549 = !DILocation(line: 352, column: 3, scope: !522)
!550 = !DILocation(line: 353, column: 1, scope: !31)
!551 = !DILocation(line: 114, column: 15, scope: !99)
!552 = !DILocation(line: 116, column: 20, scope: !99)
!553 = !DILocation(line: 116, column: 12, scope: !99)
!554 = !DILocation(line: 116, column: 57, scope: !99)
!555 = !DILocation(line: 116, column: 45, scope: !99)
!556 = !DILocation(line: 116, column: 5, scope: !99)
!557 = !DILocation(line: 38, column: 26, scope: !105)
!558 = !DILocation(line: 42, column: 10, scope: !105)
!559 = !DILocation(line: 42, column: 16, scope: !105)
!560 = !{!561, !529, i64 1024}
!561 = !{!"", !527, i64 0, !529, i64 1024, !526, i64 1032, !529, i64 1040, !526, i64 1048}
!562 = !DILocation(line: 43, column: 10, scope: !105)
!563 = !DILocation(line: 43, column: 16, scope: !105)
!564 = !{!561, !529, i64 1040}
!565 = !DILocation(line: 44, column: 3, scope: !105)
!566 = !{!561, !526, i64 1032}
!567 = !DILocation(line: 45, column: 19, scope: !105)
!568 = !{!529, !529, i64 0}
!569 = !DILocation(line: 46, column: 10, scope: !105)
!570 = !DILocation(line: 46, column: 16, scope: !105)
!571 = !{!561, !526, i64 1048}
!572 = !DILocation(line: 40, column: 7, scope: !105)
!573 = !DILocation(line: 48, column: 22, scope: !574)
!574 = distinct !DILexicalBlock(scope: !575, file: !1, line: 47, column: 3)
!575 = distinct !DILexicalBlock(scope: !105, file: !1, line: 47, column: 3)
!576 = !DILocation(line: 49, column: 1, scope: !105)
!577 = !DILocation(line: 51, column: 25, scope: !127)
!578 = !DILocation(line: 42, column: 10, scope: !105, inlinedAt: !579)
!579 = distinct !DILocation(line: 55, column: 3, scope: !127)
!580 = !DILocation(line: 42, column: 16, scope: !105, inlinedAt: !579)
!581 = !DILocation(line: 43, column: 10, scope: !105, inlinedAt: !579)
!582 = !DILocation(line: 43, column: 16, scope: !105, inlinedAt: !579)
!583 = !DILocation(line: 44, column: 3, scope: !105, inlinedAt: !579)
!584 = !DILocation(line: 45, column: 19, scope: !105, inlinedAt: !579)
!585 = !DILocation(line: 46, column: 10, scope: !105, inlinedAt: !579)
!586 = !DILocation(line: 46, column: 16, scope: !105, inlinedAt: !579)
!587 = !DILocation(line: 40, column: 7, scope: !105, inlinedAt: !579)
!588 = !DILocation(line: 56, column: 7, scope: !127)
!589 = !DILocation(line: 56, column: 16, scope: !127)
!590 = !{!591, !529, i64 0}
!591 = !{!"", !529, i64 0, !526, i64 8, !526, i64 16, !526, i64 24, !526, i64 32, !529, i64 40, !526, i64 48, !529, i64 56, !526, i64 64, !561, i64 72, !527, i64 1128, !526, i64 1272}
!592 = !DILocation(line: 58, column: 7, scope: !127)
!593 = !DILocation(line: 58, column: 16, scope: !127)
!594 = !{!591, !529, i64 56}
!595 = !DILocation(line: 59, column: 7, scope: !127)
!596 = !DILocation(line: 60, column: 7, scope: !127)
!597 = !DILocation(line: 60, column: 16, scope: !127)
!598 = !{!591, !526, i64 48}
!599 = !DILocation(line: 64, column: 7, scope: !127)
!600 = !DILocation(line: 65, column: 7, scope: !127)
!601 = !DILocation(line: 65, column: 16, scope: !127)
!602 = !{!591, !526, i64 1272}
!603 = !DILocation(line: 53, column: 7, scope: !127)
!604 = !DILocation(line: 66, column: 3, scope: !605)
!605 = distinct !DILexicalBlock(scope: !127, file: !1, line: 66, column: 3)
!606 = !DILocation(line: 59, column: 16, scope: !127)
!607 = !DILocation(line: 48, column: 22, scope: !574, inlinedAt: !579)
!608 = !DILocation(line: 67, column: 17, scope: !609)
!609 = distinct !DILexicalBlock(scope: !610, file: !1, line: 66, column: 28)
!610 = distinct !DILexicalBlock(scope: !605, file: !1, line: 66, column: 3)
!611 = !DILocation(line: 67, column: 19, scope: !609)
!612 = !{!613, !529, i64 0}
!613 = !{!"", !529, i64 0, !526, i64 8}
!614 = !DILocation(line: 68, column: 17, scope: !609)
!615 = !DILocation(line: 68, column: 23, scope: !609)
!616 = !{!613, !526, i64 8}
!617 = !DILocation(line: 70, column: 1, scope: !127)
!618 = !DILocation(line: 72, column: 28, scope: !194)
!619 = !DILocation(line: 76, column: 8, scope: !194)
!620 = !DILocation(line: 76, column: 13, scope: !194)
!621 = !{!622, !526, i64 0}
!622 = !{!"", !526, i64 0, !623, i64 8, !591, i64 45800, !527, i64 47080, !613, i64 50248}
!623 = !{!"", !529, i64 0, !529, i64 4, !529, i64 8, !526, i64 16, !526, i64 24, !527, i64 32}
!624 = !DILocation(line: 77, column: 21, scope: !194)
!625 = !DILocation(line: 77, column: 3, scope: !194)
!626 = !DILocation(line: 78, column: 21, scope: !194)
!627 = !DILocation(line: 78, column: 3, scope: !194)
!628 = !DILocation(line: 74, column: 7, scope: !194)
!629 = !DILocation(line: 79, column: 3, scope: !630)
!630 = distinct !DILexicalBlock(scope: !194, file: !1, line: 79, column: 3)
!631 = !DILocation(line: 80, column: 18, scope: !632)
!632 = distinct !DILexicalBlock(scope: !630, file: !1, line: 79, column: 3)
!633 = !DILocation(line: 38, column: 26, scope: !105, inlinedAt: !634)
!634 = distinct !DILocation(line: 80, column: 5, scope: !632)
!635 = !DILocation(line: 80, column: 5, scope: !632)
!636 = !DILocation(line: 42, column: 10, scope: !105, inlinedAt: !634)
!637 = !DILocation(line: 42, column: 16, scope: !105, inlinedAt: !634)
!638 = !DILocation(line: 43, column: 10, scope: !105, inlinedAt: !634)
!639 = !DILocation(line: 43, column: 16, scope: !105, inlinedAt: !634)
!640 = !DILocation(line: 44, column: 3, scope: !105, inlinedAt: !634)
!641 = !DILocation(line: 45, column: 19, scope: !105, inlinedAt: !634)
!642 = !DILocation(line: 46, column: 10, scope: !105, inlinedAt: !634)
!643 = !DILocation(line: 46, column: 16, scope: !105, inlinedAt: !634)
!644 = !DILocation(line: 40, column: 7, scope: !105, inlinedAt: !634)
!645 = !DILocation(line: 48, column: 22, scope: !574, inlinedAt: !634)
!646 = !DILocation(line: 81, column: 1, scope: !194)
!647 = !DILocation(line: 83, column: 32, scope: !358)
!648 = !DILocation(line: 85, column: 3, scope: !358)
!649 = !DILocation(line: 86, column: 1, scope: !358)
!650 = !DILocation(line: 88, column: 27, scope: !480)
!651 = !DILocation(line: 88, column: 35, scope: !480)
!652 = !DILocation(line: 88, column: 46, scope: !480)
!653 = !DILocation(line: 92, column: 3, scope: !480)
!654 = !DILocation(line: 90, column: 7, scope: !480)
!655 = !DILocation(line: 93, column: 14, scope: !656)
!656 = distinct !DILexicalBlock(scope: !657, file: !1, line: 93, column: 3)
!657 = distinct !DILexicalBlock(scope: !480, file: !1, line: 93, column: 3)
!658 = !DILocation(line: 93, column: 3, scope: !657)
!659 = !DILocation(line: 94, column: 5, scope: !656)
!660 = !DILocation(line: 94, column: 14, scope: !656)
!661 = !DILocation(line: 95, column: 8, scope: !480)
!662 = !DILocation(line: 95, column: 11, scope: !480)
!663 = !DILocation(line: 97, column: 7, scope: !664)
!664 = distinct !DILexicalBlock(scope: !480, file: !1, line: 97, column: 7)
!665 = !DILocation(line: 97, column: 7, scope: !480)
!666 = !DILocation(line: 98, column: 5, scope: !667)
!667 = distinct !DILexicalBlock(scope: !664, file: !1, line: 97, column: 23)
!668 = !DILocation(line: 99, column: 18, scope: !667)
!669 = !DILocation(line: 100, column: 5, scope: !667)
!670 = !DILocation(line: 100, column: 18, scope: !667)
!671 = !DILocation(line: 101, column: 10, scope: !667)
!672 = !DILocation(line: 101, column: 12, scope: !667)
!673 = !DILocation(line: 102, column: 3, scope: !667)
!674 = !DILocation(line: 104, column: 5, scope: !675)
!675 = distinct !DILexicalBlock(scope: !664, file: !1, line: 103, column: 8)
!676 = !DILocation(line: 105, column: 16, scope: !677)
!677 = distinct !DILexicalBlock(scope: !678, file: !1, line: 105, column: 5)
!678 = distinct !DILexicalBlock(scope: !675, file: !1, line: 105, column: 5)
!679 = !DILocation(line: 105, column: 5, scope: !678)
!680 = !DILocation(line: 106, column: 7, scope: !677)
!681 = !DILocation(line: 106, column: 20, scope: !677)
!682 = !DILocation(line: 107, column: 10, scope: !675)
!683 = !DILocation(line: 107, column: 12, scope: !675)
!684 = !DILocation(line: 109, column: 26, scope: !480)
!685 = !DILocation(line: 109, column: 3, scope: !480)
!686 = !DILocation(line: 109, column: 19, scope: !480)
!687 = !DILocation(line: 110, column: 1, scope: !480)
!688 = !DILocation(line: 112, column: 26, scope: !488)
!689 = !DILocation(line: 114, column: 10, scope: !488)
!690 = !DILocation(line: 114, column: 16, scope: !488)
!691 = !DILocation(line: 115, column: 10, scope: !488)
!692 = !DILocation(line: 115, column: 16, scope: !488)
!693 = !DILocation(line: 116, column: 3, scope: !488)
!694 = !DILocation(line: 117, column: 3, scope: !488)
!695 = !DILocation(line: 118, column: 1, scope: !488)
!696 = !DILocation(line: 120, column: 26, scope: !491)
!697 = !DILocation(line: 122, column: 20, scope: !491)
!698 = !DILocation(line: 122, column: 3, scope: !491)
!699 = !DILocation(line: 123, column: 7, scope: !491)
!700 = !DILocation(line: 123, column: 16, scope: !491)
!701 = !DILocation(line: 124, column: 7, scope: !491)
!702 = !DILocation(line: 124, column: 16, scope: !491)
!703 = !{!591, !529, i64 40}
!704 = !DILocation(line: 125, column: 3, scope: !491)
!705 = !{!591, !526, i64 8}
!706 = !DILocation(line: 126, column: 3, scope: !491)
!707 = !DILocation(line: 127, column: 3, scope: !491)
!708 = !{!591, !526, i64 16}
!709 = !DILocation(line: 128, column: 1, scope: !491)
!710 = !DILocation(line: 130, column: 27, scope: !494)
!711 = !DILocation(line: 134, column: 21, scope: !494)
!712 = !DILocation(line: 134, column: 3, scope: !494)
!713 = !DILocation(line: 135, column: 22, scope: !494)
!714 = !DILocation(line: 135, column: 3, scope: !494)
!715 = !DILocation(line: 132, column: 7, scope: !494)
!716 = !DILocation(line: 136, column: 3, scope: !717)
!717 = distinct !DILexicalBlock(scope: !494, file: !1, line: 136, column: 3)
!718 = !DILocation(line: 137, column: 18, scope: !719)
!719 = distinct !DILexicalBlock(scope: !717, file: !1, line: 136, column: 3)
!720 = !DILocation(line: 137, column: 5, scope: !719)
!721 = !DILocation(line: 138, column: 1, scope: !494)
!722 = !DILocation(line: 140, column: 32, scope: !498)
!723 = !DILocation(line: 142, column: 7, scope: !498)
!724 = !DILocation(line: 144, column: 3, scope: !725)
!725 = distinct !DILexicalBlock(scope: !498, file: !1, line: 144, column: 3)
!726 = !DILocation(line: 145, column: 19, scope: !727)
!727 = distinct !DILexicalBlock(scope: !728, file: !1, line: 145, column: 9)
!728 = distinct !DILexicalBlock(scope: !729, file: !1, line: 144, column: 26)
!729 = distinct !DILexicalBlock(scope: !725, file: !1, line: 144, column: 3)
!730 = !{!731, !526, i64 8}
!731 = !{!"", !529, i64 0, !526, i64 8, !526, i64 16}
!732 = !DILocation(line: 145, column: 9, scope: !727)
!733 = !DILocation(line: 145, column: 9, scope: !728)
!734 = !DILocation(line: 145, column: 24, scope: !727)
!735 = !DILocation(line: 146, column: 19, scope: !736)
!736 = distinct !DILexicalBlock(scope: !728, file: !1, line: 146, column: 9)
!737 = !{!731, !526, i64 16}
!738 = !DILocation(line: 146, column: 9, scope: !736)
!739 = !DILocation(line: 146, column: 9, scope: !728)
!740 = !DILocation(line: 146, column: 24, scope: !736)
!741 = !DILocation(line: 147, column: 19, scope: !742)
!742 = distinct !DILexicalBlock(scope: !728, file: !1, line: 147, column: 9)
!743 = !DILocation(line: 147, column: 9, scope: !742)
!744 = !DILocation(line: 147, column: 9, scope: !728)
!745 = !DILocation(line: 147, column: 24, scope: !742)
!746 = !DILocation(line: 148, column: 19, scope: !747)
!747 = distinct !DILexicalBlock(scope: !728, file: !1, line: 148, column: 9)
!748 = !DILocation(line: 148, column: 9, scope: !747)
!749 = !DILocation(line: 148, column: 9, scope: !728)
!750 = !DILocation(line: 148, column: 24, scope: !747)
!751 = !DILocation(line: 150, column: 16, scope: !752)
!752 = distinct !DILexicalBlock(scope: !498, file: !1, line: 150, column: 7)
!753 = !{!754, !526, i64 400}
!754 = !{!"", !529, i64 0, !529, i64 4, !529, i64 8, !529, i64 12, !529, i64 16, !529, i64 20, !529, i64 24, !529, i64 28, !529, i64 32, !529, i64 36, !529, i64 40, !529, i64 44, !529, i64 48, !529, i64 52, !755, i64 56, !755, i64 60, !755, i64 64, !529, i64 68, !529, i64 72, !529, i64 76, !529, i64 80, !755, i64 84, !529, i64 88, !529, i64 92, !529, i64 96, !529, i64 100, !529, i64 104, !529, i64 108, !529, i64 112, !529, i64 116, !755, i64 120, !527, i64 124, !527, i64 160, !529, i64 196, !755, i64 200, !755, i64 204, !529, i64 208, !755, i64 212, !755, i64 216, !529, i64 220, !755, i64 224, !755, i64 228, !755, i64 232, !529, i64 236, !755, i64 240, !755, i64 244, !529, i64 248, !755, i64 252, !755, i64 256, !755, i64 260, !755, i64 264, !755, i64 268, !529, i64 272, !529, i64 276, !529, i64 280, !755, i64 284, !755, i64 288, !755, i64 292, !529, i64 296, !755, i64 300, !755, i64 304, !529, i64 308, !529, i64 312, !529, i64 316, !529, i64 320, !529, i64 324, !755, i64 328, !529, i64 332, !755, i64 336, !755, i64 340, !529, i64 344, !755, i64 348, !529, i64 352, !529, i64 356, !529, i64 360, !529, i64 364, !755, i64 368, !755, i64 372, !755, i64 376, !755, i64 380, !756, i64 384, !527, i64 448, !527, i64 520}
!755 = !{!"float", !527, i64 0}
!756 = !{!"", !529, i64 0, !529, i64 4, !529, i64 8, !529, i64 12, !526, i64 16, !526, i64 24, !526, i64 32, !526, i64 40, !526, i64 48, !526, i64 56}
!757 = !DILocation(line: 150, column: 7, scope: !752)
!758 = !DILocation(line: 150, column: 7, scope: !498)
!759 = !DILocation(line: 150, column: 25, scope: !752)
!760 = !DILocation(line: 151, column: 16, scope: !761)
!761 = distinct !DILexicalBlock(scope: !498, file: !1, line: 151, column: 7)
!762 = !{!754, !526, i64 408}
!763 = !DILocation(line: 151, column: 7, scope: !761)
!764 = !DILocation(line: 151, column: 7, scope: !498)
!765 = !DILocation(line: 151, column: 25, scope: !761)
!766 = !DILocation(line: 152, column: 16, scope: !767)
!767 = distinct !DILexicalBlock(scope: !498, file: !1, line: 152, column: 7)
!768 = !{!754, !526, i64 416}
!769 = !DILocation(line: 152, column: 7, scope: !767)
!770 = !DILocation(line: 152, column: 7, scope: !498)
!771 = !DILocation(line: 152, column: 25, scope: !767)
!772 = !DILocation(line: 153, column: 16, scope: !773)
!773 = distinct !DILexicalBlock(scope: !498, file: !1, line: 153, column: 7)
!774 = !{!754, !526, i64 424}
!775 = !DILocation(line: 153, column: 7, scope: !773)
!776 = !DILocation(line: 153, column: 7, scope: !498)
!777 = !DILocation(line: 153, column: 25, scope: !773)
!778 = !DILocation(line: 154, column: 16, scope: !779)
!779 = distinct !DILexicalBlock(scope: !498, file: !1, line: 154, column: 7)
!780 = !{!754, !526, i64 432}
!781 = !DILocation(line: 154, column: 7, scope: !779)
!782 = !DILocation(line: 154, column: 7, scope: !498)
!783 = !DILocation(line: 154, column: 25, scope: !779)
!784 = !DILocation(line: 155, column: 1, scope: !498)
!785 = !DILocation(line: 157, column: 28, scope: !502)
!786 = !DILocation(line: 157, column: 39, scope: !502)
!787 = !DILocation(line: 157, column: 52, scope: !502)
!788 = !DILocation(line: 159, column: 10, scope: !502)
!789 = !DILocation(line: 159, column: 12, scope: !502)
!790 = !DILocation(line: 160, column: 10, scope: !502)
!791 = !DILocation(line: 160, column: 14, scope: !502)
!792 = !DILocation(line: 161, column: 10, scope: !502)
!793 = !DILocation(line: 161, column: 18, scope: !502)
!794 = !DILocation(line: 162, column: 3, scope: !502)
!795 = !DILocation(line: 163, column: 10, scope: !502)
!796 = !DILocation(line: 165, column: 3, scope: !502)
!797 = !DILocation(line: 164, column: 19, scope: !502)
!798 = !DILocation(line: 166, column: 3, scope: !502)
!799 = !DILocation(line: 167, column: 3, scope: !502)
!800 = !{!591, !526, i64 64}
!801 = !DILocation(line: 168, column: 7, scope: !802)
!802 = distinct !DILexicalBlock(scope: !502, file: !1, line: 168, column: 7)
!803 = !DILocation(line: 168, column: 7, scope: !502)
!804 = !DILocation(line: 169, column: 5, scope: !802)
!805 = !DILocation(line: 171, column: 12, scope: !802)
!806 = !DILocation(line: 171, column: 19, scope: !802)
!807 = !DILocation(line: 172, column: 22, scope: !502)
!808 = !DILocation(line: 38, column: 26, scope: !105, inlinedAt: !809)
!809 = distinct !DILocation(line: 172, column: 3, scope: !502)
!810 = !DILocation(line: 172, column: 3, scope: !502)
!811 = !DILocation(line: 42, column: 10, scope: !105, inlinedAt: !809)
!812 = !DILocation(line: 42, column: 16, scope: !105, inlinedAt: !809)
!813 = !DILocation(line: 43, column: 10, scope: !105, inlinedAt: !809)
!814 = !DILocation(line: 43, column: 16, scope: !105, inlinedAt: !809)
!815 = !DILocation(line: 44, column: 3, scope: !105, inlinedAt: !809)
!816 = !DILocation(line: 45, column: 19, scope: !105, inlinedAt: !809)
!817 = !DILocation(line: 46, column: 10, scope: !105, inlinedAt: !809)
!818 = !DILocation(line: 46, column: 16, scope: !105, inlinedAt: !809)
!819 = !DILocation(line: 40, column: 7, scope: !105, inlinedAt: !809)
!820 = !DILocation(line: 48, column: 22, scope: !574, inlinedAt: !809)
!821 = !DILocation(line: 173, column: 1, scope: !502)
!822 = !DILocation(line: 175, column: 28, scope: !509)
!823 = !DILocation(line: 177, column: 7, scope: !509)
!824 = !DILocation(line: 179, column: 21, scope: !825)
!825 = distinct !DILexicalBlock(scope: !826, file: !1, line: 179, column: 3)
!826 = distinct !DILexicalBlock(scope: !509, file: !1, line: 179, column: 3)
!827 = !DILocation(line: 179, column: 13, scope: !825)
!828 = !DILocation(line: 180, column: 5, scope: !829)
!829 = distinct !DILexicalBlock(scope: !825, file: !1, line: 179, column: 30)
!830 = !DILocation(line: 179, column: 3, scope: !826)
!831 = !{!526, !526, i64 0}
!832 = !DILocation(line: 181, column: 13, scope: !829)
!833 = !DILocation(line: 181, column: 6, scope: !829)
!834 = !DILocation(line: 181, column: 24, scope: !829)
!835 = !DILocation(line: 183, column: 3, scope: !509)
!836 = !DILocation(line: 185, column: 3, scope: !509)
!837 = !DILocation(line: 186, column: 3, scope: !509)
!838 = !DILocation(line: 187, column: 14, scope: !839)
!839 = distinct !DILexicalBlock(scope: !509, file: !1, line: 187, column: 7)
!840 = !DILocation(line: 187, column: 7, scope: !839)
!841 = !DILocation(line: 187, column: 7, scope: !509)
!842 = !DILocation(line: 188, column: 5, scope: !839)
!843 = !DILocation(line: 189, column: 12, scope: !509)
!844 = !DILocation(line: 190, column: 10, scope: !509)
!845 = !DILocation(line: 190, column: 14, scope: !509)
!846 = !DILocation(line: 191, column: 22, scope: !509)
!847 = !DILocation(line: 191, column: 3, scope: !509)
!848 = !DILocation(line: 192, column: 1, scope: !509)
