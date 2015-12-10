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
  %16 = tail call i32 @__swbuf(i32 %_c, %struct.__sFILE* %_p) #7
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
define void @init_block(%struct.t_block* nocapture %block) #3 {
  %block2 = bitcast %struct.t_block* %block to i8*
  %1 = getelementptr inbounds %struct.t_block* %block, i64 0, i32 1
  store i32 0, i32* %1, align 4, !tbaa !14
  %2 = getelementptr inbounds %struct.t_block* %block, i64 0, i32 3
  store i32 0, i32* %2, align 4, !tbaa !16
  %3 = tail call i8* @save_calloc(i8* getelementptr inbounds ([13 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([68 x i8]* @.str1, i64 0, i64 0), i32 44, i32 1, i32 4) #7
  %4 = bitcast i8* %3 to i32*
  %5 = getelementptr inbounds %struct.t_block* %block, i64 0, i32 2
  %6 = bitcast i32** %5 to i8**
  store i8* %3, i8** %6, align 8, !tbaa !17
  store i32 0, i32* %4, align 4, !tbaa !18
  %7 = getelementptr inbounds %struct.t_block* %block, i64 0, i32 4
  store i32* null, i32** %7, align 8, !tbaa !19
  call void @llvm.memset.p0i8.i64(i8* %block2, i8 0, i64 1024, i32 4, i1 false)
  ret void
}

; Function Attrs: optsize
declare i8* @save_calloc(i8*, i8*, i32, i32, i32) #1

; Function Attrs: nounwind optsize ssp uwtable
define void @init_atom(%struct.t_atoms* nocapture %at) #3 {
  %1 = getelementptr inbounds %struct.t_atoms* %at, i64 0, i32 9, i32 1
  store i32 0, i32* %1, align 4, !tbaa !14
  %2 = getelementptr inbounds %struct.t_atoms* %at, i64 0, i32 9, i32 3
  store i32 0, i32* %2, align 4, !tbaa !16
  %3 = tail call i8* @save_calloc(i8* getelementptr inbounds ([13 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([68 x i8]* @.str1, i64 0, i64 0), i32 44, i32 1, i32 4) #7
  %4 = bitcast i8* %3 to i32*
  %5 = getelementptr inbounds %struct.t_atoms* %at, i64 0, i32 9, i32 2
  %6 = bitcast i32** %5 to i8**
  store i8* %3, i8** %6, align 8, !tbaa !17
  store i32 0, i32* %4, align 4, !tbaa !18
  %7 = getelementptr inbounds %struct.t_atoms* %at, i64 0, i32 9, i32 4
  store i32* null, i32** %7, align 8, !tbaa !19
  %8 = getelementptr inbounds %struct.t_atoms* %at, i64 0, i32 0
  store i32 0, i32* %8, align 4, !tbaa !20
  %9 = getelementptr inbounds %struct.t_atoms* %at, i64 0, i32 7
  store i32 0, i32* %9, align 4, !tbaa !22
  %10 = getelementptr inbounds %struct.t_atoms* %at, i64 0, i32 1
  %11 = getelementptr inbounds %struct.t_atoms* %at, i64 0, i32 6
  store i8*** null, i8**** %11, align 8, !tbaa !23
  %12 = getelementptr inbounds %struct.t_atoms* %at, i64 0, i32 8
  %13 = getelementptr inbounds %struct.t_atoms* %at, i64 0, i32 11
  store %struct.t_pdbinfo* null, %struct.t_pdbinfo** %13, align 8, !tbaa !24
  %14 = bitcast %struct.t_atom** %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* %14, i8 0, i64 36, i32 8, i1 false)
  %15 = bitcast i8**** %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* %15, i8 0, i64 1032, i32 8, i1 false)
  br label %16

; <label>:16                                      ; preds = %16, %0
  %indvars.iv = phi i64 [ 0, %0 ], [ %indvars.iv.next, %16 ]
  %17 = getelementptr inbounds %struct.t_atoms* %at, i64 0, i32 10, i64 %indvars.iv, i32 0
  store i32 0, i32* %17, align 4, !tbaa !25
  %18 = getelementptr inbounds %struct.t_atoms* %at, i64 0, i32 10, i64 %indvars.iv, i32 1
  store i32* null, i32** %18, align 8, !tbaa !27
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 9
  br i1 %exitcond, label %19, label %16

; <label>:19                                      ; preds = %16
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define void @init_top(%struct.t_topology* %top) #3 {
  %1 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 0
  store i8** null, i8*** %1, align 8, !tbaa !28
  %2 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 4
  tail call void @open_symtab(%struct.t_symtab* %2) #7
  %3 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 2
  tail call void @init_atom(%struct.t_atoms* %3) #8
  br label %4

; <label>:4                                       ; preds = %4, %0
  %indvars.iv = phi i64 [ 0, %0 ], [ %indvars.iv.next, %4 ]
  %5 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 3, i64 %indvars.iv
  %block2.i = bitcast %struct.t_block* %5 to i8*
  %6 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 3, i64 %indvars.iv, i32 1
  store i32 0, i32* %6, align 4, !tbaa !14
  %7 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 3, i64 %indvars.iv, i32 3
  store i32 0, i32* %7, align 4, !tbaa !16
  %8 = tail call i8* @save_calloc(i8* getelementptr inbounds ([13 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([68 x i8]* @.str1, i64 0, i64 0), i32 44, i32 1, i32 4) #7
  %9 = bitcast i8* %8 to i32*
  %10 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 3, i64 %indvars.iv, i32 2
  %11 = bitcast i32** %10 to i8**
  store i8* %8, i8** %11, align 8, !tbaa !17
  store i32 0, i32* %9, align 4, !tbaa !18
  %12 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 3, i64 %indvars.iv, i32 4
  store i32* null, i32** %12, align 8, !tbaa !19
  tail call void @llvm.memset.p0i8.i64(i8* %block2.i, i8 0, i64 1024, i32 4, i1 false) #6
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 3
  br i1 %exitcond, label %13, label %4

; <label>:13                                      ; preds = %4
  ret void
}

; Function Attrs: optsize
declare void @open_symtab(%struct.t_symtab*) #1

; Function Attrs: nounwind optsize ssp uwtable
define void @init_inputrec(%struct.t_inputrec* %ir) #3 {
  %1 = bitcast %struct.t_inputrec* %ir to i8*
  %2 = tail call i64 @llvm.objectsize.i64.p0i8(i8* %1, i1 false)
  %3 = tail call i8* @__memset_chk(i8* %1, i32 0, i64 592, i64 %2) #7
  ret void
}

; Function Attrs: nounwind optsize
declare i8* @__memset_chk(i8*, i32, i64, i64) #4

; Function Attrs: nounwind readnone
declare i64 @llvm.objectsize.i64.p0i8(i8*, i1) #5

; Function Attrs: nounwind optsize ssp uwtable
define void @stupid_fill(%struct.t_block* nocapture %grp, i32 %natom, i32 %bOneIndexGroup) #3 {
  %1 = tail call i8* @save_calloc(i8* getelementptr inbounds ([7 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([68 x i8]* @.str1, i64 0, i64 0), i32 92, i32 %natom, i32 4) #7
  %2 = getelementptr inbounds %struct.t_block* %grp, i64 0, i32 4
  %3 = bitcast i32** %2 to i8**
  store i8* %1, i8** %3, align 8, !tbaa !19
  %4 = icmp sgt i32 %natom, 0
  %5 = bitcast i8* %1 to i32*
  br i1 %4, label %.lr.ph4, label %._crit_edge5

.lr.ph4:                                          ; preds = %0
  %6 = add i32 %natom, -1
  br label %7

; <label>:7                                       ; preds = %7, %.lr.ph4
  %indvars.iv6 = phi i64 [ 0, %.lr.ph4 ], [ %indvars.iv.next7, %7 ]
  %8 = getelementptr inbounds i32* %5, i64 %indvars.iv6
  %9 = trunc i64 %indvars.iv6 to i32
  store i32 %9, i32* %8, align 4, !tbaa !18
  %indvars.iv.next7 = add nuw nsw i64 %indvars.iv6, 1
  %exitcond9 = icmp eq i32 %9, %6
  br i1 %exitcond9, label %._crit_edge5, label %7

._crit_edge5:                                     ; preds = %7, %0
  %10 = getelementptr inbounds %struct.t_block* %grp, i64 0, i32 3
  store i32 %natom, i32* %10, align 4, !tbaa !16
  %11 = icmp eq i32 %bOneIndexGroup, 0
  br i1 %11, label %20, label %12

; <label>:12                                      ; preds = %._crit_edge5
  %13 = tail call i8* @save_calloc(i8* getelementptr inbounds ([11 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([68 x i8]* @.str1, i64 0, i64 0), i32 98, i32 2, i32 4) #7
  %14 = bitcast i8* %13 to i32*
  %15 = getelementptr inbounds %struct.t_block* %grp, i64 0, i32 2
  %16 = bitcast i32** %15 to i8**
  store i8* %13, i8** %16, align 8, !tbaa !17
  store i32 0, i32* %14, align 4, !tbaa !18
  %17 = getelementptr inbounds i8* %13, i64 4
  %18 = bitcast i8* %17 to i32*
  store i32 %natom, i32* %18, align 4, !tbaa !18
  %19 = getelementptr inbounds %struct.t_block* %grp, i64 0, i32 1
  store i32 1, i32* %19, align 4, !tbaa !14
  br label %30

; <label>:20                                      ; preds = %._crit_edge5
  %21 = add nsw i32 %natom, 1
  %22 = tail call i8* @save_calloc(i8* getelementptr inbounds ([11 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([68 x i8]* @.str1, i64 0, i64 0), i32 104, i32 %21, i32 4) #7
  %23 = getelementptr inbounds %struct.t_block* %grp, i64 0, i32 2
  %24 = bitcast i32** %23 to i8**
  store i8* %22, i8** %24, align 8, !tbaa !17
  %25 = icmp slt i32 %natom, 0
  %26 = bitcast i8* %22 to i32*
  br i1 %25, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %20, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %20 ]
  %27 = getelementptr inbounds i32* %26, i64 %indvars.iv
  %28 = trunc i64 %indvars.iv to i32
  store i32 %28, i32* %27, align 4, !tbaa !18
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i32 %28, %natom
  br i1 %exitcond, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %20
  %29 = getelementptr inbounds %struct.t_block* %grp, i64 0, i32 1
  store i32 %natom, i32* %29, align 4, !tbaa !14
  br label %30

; <label>:30                                      ; preds = %._crit_edge, %12
  %31 = add nsw i32 %natom, -1
  %32 = getelementptr inbounds %struct.t_block* %grp, i64 0, i32 0, i64 0
  store i32 %31, i32* %32, align 4, !tbaa !18
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define void @done_block(%struct.t_block* nocapture %block) #3 {
  %1 = getelementptr inbounds %struct.t_block* %block, i64 0, i32 1
  store i32 0, i32* %1, align 4, !tbaa !14
  %2 = getelementptr inbounds %struct.t_block* %block, i64 0, i32 3
  store i32 0, i32* %2, align 4, !tbaa !16
  %3 = getelementptr inbounds %struct.t_block* %block, i64 0, i32 2
  %4 = bitcast i32** %3 to i8**
  %5 = load i8** %4, align 8, !tbaa !17
  tail call void @save_free(i8* getelementptr inbounds ([13 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([68 x i8]* @.str1, i64 0, i64 0), i32 116, i8* %5) #7
  %6 = getelementptr inbounds %struct.t_block* %block, i64 0, i32 4
  %7 = bitcast i32** %6 to i8**
  %8 = load i8** %7, align 8, !tbaa !19
  tail call void @save_free(i8* getelementptr inbounds ([9 x i8]* @.str4, i64 0, i64 0), i8* getelementptr inbounds ([68 x i8]* @.str1, i64 0, i64 0), i32 117, i8* %8) #7
  ret void
}

; Function Attrs: optsize
declare void @save_free(i8*, i8*, i32, i8*) #1

; Function Attrs: nounwind optsize ssp uwtable
define void @done_atom(%struct.t_atoms* nocapture %at) #3 {
  %1 = getelementptr inbounds %struct.t_atoms* %at, i64 0, i32 9
  tail call void @done_block(%struct.t_block* %1) #8
  %2 = getelementptr inbounds %struct.t_atoms* %at, i64 0, i32 0
  store i32 0, i32* %2, align 4, !tbaa !20
  %3 = getelementptr inbounds %struct.t_atoms* %at, i64 0, i32 5
  store i32 0, i32* %3, align 4, !tbaa !31
  %4 = getelementptr inbounds %struct.t_atoms* %at, i64 0, i32 1
  %5 = bitcast %struct.t_atom** %4 to i8**
  %6 = load i8** %5, align 8, !tbaa !32
  tail call void @save_free(i8* getelementptr inbounds ([9 x i8]* @.str5, i64 0, i64 0), i8* getelementptr inbounds ([68 x i8]* @.str1, i64 0, i64 0), i32 125, i8* %6) #7
  %7 = getelementptr inbounds %struct.t_atoms* %at, i64 0, i32 6
  %8 = bitcast i8**** %7 to i8**
  %9 = load i8** %8, align 8, !tbaa !23
  tail call void @save_free(i8* getelementptr inbounds ([12 x i8]* @.str6, i64 0, i64 0), i8* getelementptr inbounds ([68 x i8]* @.str1, i64 0, i64 0), i32 126, i8* %9) #7
  %10 = getelementptr inbounds %struct.t_atoms* %at, i64 0, i32 2
  %11 = bitcast i8**** %10 to i8**
  %12 = load i8** %11, align 8, !tbaa !33
  tail call void @save_free(i8* getelementptr inbounds ([13 x i8]* @.str7, i64 0, i64 0), i8* getelementptr inbounds ([68 x i8]* @.str1, i64 0, i64 0), i32 127, i8* %12) #7
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define void @done_top(%struct.t_topology* %top) #3 {
  %1 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 2
  tail call void @done_atom(%struct.t_atoms* %1) #8
  %2 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 4
  tail call void @done_symtab(%struct.t_symtab* %2) #7
  br label %3

; <label>:3                                       ; preds = %3, %0
  %indvars.iv = phi i64 [ 0, %0 ], [ %indvars.iv.next, %3 ]
  %4 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 3, i64 %indvars.iv
  tail call void @done_block(%struct.t_block* %4) #8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 3
  br i1 %exitcond, label %5, label %3

; <label>:5                                       ; preds = %3
  ret void
}

; Function Attrs: optsize
declare void @done_symtab(%struct.t_symtab*) #1

; Function Attrs: nounwind optsize ssp uwtable
define void @done_inputrec(%struct.t_inputrec* nocapture readonly %ir) #3 {
  br label %1

; <label>:1                                       ; preds = %25, %0
  %indvars.iv = phi i64 [ 0, %0 ], [ %indvars.iv.next, %25 ]
  %2 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 81, i64 %indvars.iv, i32 1
  %3 = load float** %2, align 8, !tbaa !34
  %4 = icmp eq float* %3, null
  br i1 %4, label %7, label %5

; <label>:5                                       ; preds = %1
  %6 = bitcast float* %3 to i8*
  tail call void @save_free(i8* getelementptr inbounds ([12 x i8]* @.str8, i64 0, i64 0), i8* getelementptr inbounds ([68 x i8]* @.str1, i64 0, i64 0), i32 145, i8* %6) #7
  br label %7

; <label>:7                                       ; preds = %1, %5
  %8 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 81, i64 %indvars.iv, i32 2
  %9 = load float** %8, align 8, !tbaa !36
  %10 = icmp eq float* %9, null
  br i1 %10, label %13, label %11

; <label>:11                                      ; preds = %7
  %12 = bitcast float* %9 to i8*
  tail call void @save_free(i8* getelementptr inbounds ([14 x i8]* @.str9, i64 0, i64 0), i8* getelementptr inbounds ([68 x i8]* @.str1, i64 0, i64 0), i32 146, i8* %12) #7
  br label %13

; <label>:13                                      ; preds = %7, %11
  %14 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 82, i64 %indvars.iv, i32 1
  %15 = load float** %14, align 8, !tbaa !34
  %16 = icmp eq float* %15, null
  br i1 %16, label %19, label %17

; <label>:17                                      ; preds = %13
  %18 = bitcast float* %15 to i8*
  tail call void @save_free(i8* getelementptr inbounds ([12 x i8]* @.str10, i64 0, i64 0), i8* getelementptr inbounds ([68 x i8]* @.str1, i64 0, i64 0), i32 147, i8* %18) #7
  br label %19

; <label>:19                                      ; preds = %13, %17
  %20 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 82, i64 %indvars.iv, i32 2
  %21 = load float** %20, align 8, !tbaa !36
  %22 = icmp eq float* %21, null
  br i1 %22, label %25, label %23

; <label>:23                                      ; preds = %19
  %24 = bitcast float* %21 to i8*
  tail call void @save_free(i8* getelementptr inbounds ([14 x i8]* @.str11, i64 0, i64 0), i8* getelementptr inbounds ([68 x i8]* @.str1, i64 0, i64 0), i32 148, i8* %24) #7
  br label %25

; <label>:25                                      ; preds = %19, %23
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 3
  br i1 %exitcond, label %26, label %1

; <label>:26                                      ; preds = %25
  %27 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 80, i32 4
  %28 = load float** %27, align 8, !tbaa !37
  %29 = icmp eq float* %28, null
  br i1 %29, label %32, label %30

; <label>:30                                      ; preds = %26
  %31 = bitcast float* %28 to i8*
  tail call void @save_free(i8* getelementptr inbounds ([14 x i8]* @.str12, i64 0, i64 0), i8* getelementptr inbounds ([68 x i8]* @.str1, i64 0, i64 0), i32 150, i8* %31) #7
  br label %32

; <label>:32                                      ; preds = %26, %30
  %33 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 80, i32 5
  %34 = load float** %33, align 8, !tbaa !41
  %35 = icmp eq float* %34, null
  br i1 %35, label %38, label %36

; <label>:36                                      ; preds = %32
  %37 = bitcast float* %34 to i8*
  tail call void @save_free(i8* getelementptr inbounds ([15 x i8]* @.str13, i64 0, i64 0), i8* getelementptr inbounds ([68 x i8]* @.str1, i64 0, i64 0), i32 151, i8* %37) #7
  br label %38

; <label>:38                                      ; preds = %32, %36
  %39 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 80, i32 6
  %40 = load float** %39, align 8, !tbaa !42
  %41 = icmp eq float* %40, null
  br i1 %41, label %44, label %42

; <label>:42                                      ; preds = %38
  %43 = bitcast float* %40 to i8*
  tail call void @save_free(i8* getelementptr inbounds ([15 x i8]* @.str14, i64 0, i64 0), i8* getelementptr inbounds ([68 x i8]* @.str1, i64 0, i64 0), i32 152, i8* %43) #7
  br label %44

; <label>:44                                      ; preds = %38, %42
  %45 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 80, i32 7
  %46 = load [3 x float]** %45, align 8, !tbaa !43
  %47 = icmp eq [3 x float]* %46, null
  br i1 %47, label %50, label %48

; <label>:48                                      ; preds = %44
  %49 = bitcast [3 x float]* %46 to i8*
  tail call void @save_free(i8* getelementptr inbounds ([13 x i8]* @.str15, i64 0, i64 0), i8* getelementptr inbounds ([68 x i8]* @.str1, i64 0, i64 0), i32 153, i8* %49) #7
  br label %50

; <label>:50                                      ; preds = %44, %48
  %51 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 80, i32 8
  %52 = load [3 x i32]** %51, align 8, !tbaa !44
  %53 = icmp eq [3 x i32]* %52, null
  br i1 %53, label %56, label %54

; <label>:54                                      ; preds = %50
  %55 = bitcast [3 x i32]* %52 to i8*
  tail call void @save_free(i8* getelementptr inbounds ([17 x i8]* @.str16, i64 0, i64 0), i8* getelementptr inbounds ([68 x i8]* @.str1, i64 0, i64 0), i32 154, i8* %55) #7
  br label %56

; <label>:56                                      ; preds = %50, %54
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define void @init_t_atoms(%struct.t_atoms* nocapture %atoms, i32 %natoms, i32 %bPdbinfo) #3 {
  %1 = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 0
  store i32 %natoms, i32* %1, align 4, !tbaa !20
  %2 = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 5
  store i32 0, i32* %2, align 4, !tbaa !31
  %3 = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 7
  store i32 0, i32* %3, align 4, !tbaa !22
  %4 = tail call i8* @save_calloc(i8* getelementptr inbounds ([16 x i8]* @.str17, i64 0, i64 0), i8* getelementptr inbounds ([68 x i8]* @.str1, i64 0, i64 0), i32 162, i32 %natoms, i32 8) #7
  %5 = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 2
  %6 = bitcast i8**** %5 to i8**
  store i8* %4, i8** %6, align 8, !tbaa !33
  %7 = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 3
  %8 = bitcast i8**** %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* %8, i8 0, i64 16, i32 8, i1 false)
  %9 = tail call i8* @save_calloc(i8* getelementptr inbounds ([15 x i8]* @.str18, i64 0, i64 0), i8* getelementptr inbounds ([68 x i8]* @.str1, i64 0, i64 0), i32 165, i32 %natoms, i32 8) #7
  %10 = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 6
  %11 = bitcast i8**** %10 to i8**
  store i8* %9, i8** %11, align 8, !tbaa !23
  %12 = tail call i8* @save_calloc(i8* getelementptr inbounds ([12 x i8]* @.str19, i64 0, i64 0), i8* getelementptr inbounds ([68 x i8]* @.str1, i64 0, i64 0), i32 166, i32 %natoms, i32 40) #7
  %13 = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 1
  %14 = bitcast %struct.t_atom** %13 to i8**
  store i8* %12, i8** %14, align 8, !tbaa !32
  %15 = tail call i8* @save_calloc(i8* getelementptr inbounds ([15 x i8]* @.str20, i64 0, i64 0), i8* getelementptr inbounds ([68 x i8]* @.str1, i64 0, i64 0), i32 167, i32 %natoms, i32 8) #7
  %16 = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 8
  %17 = bitcast i8**** %16 to i8**
  store i8* %15, i8** %17, align 8, !tbaa !45
  %18 = icmp eq i32 %bPdbinfo, 0
  br i1 %18, label %23, label %19

; <label>:19                                      ; preds = %0
  %20 = tail call i8* @save_calloc(i8* getelementptr inbounds ([15 x i8]* @.str21, i64 0, i64 0), i8* getelementptr inbounds ([68 x i8]* @.str1, i64 0, i64 0), i32 169, i32 %natoms, i32 52) #7
  %21 = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 11
  %22 = bitcast %struct.t_pdbinfo** %21 to i8**
  store i8* %20, i8** %22, align 8, !tbaa !24
  br label %25

; <label>:23                                      ; preds = %0
  %24 = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 11
  store %struct.t_pdbinfo* null, %struct.t_pdbinfo** %24, align 8, !tbaa !24
  br label %25

; <label>:25                                      ; preds = %23, %19
  %26 = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 9
  %block2.i = bitcast %struct.t_block* %26 to i8*
  %27 = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 9, i32 1
  store i32 0, i32* %27, align 4, !tbaa !14
  %28 = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 9, i32 3
  store i32 0, i32* %28, align 4, !tbaa !16
  %29 = tail call i8* @save_calloc(i8* getelementptr inbounds ([13 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([68 x i8]* @.str1, i64 0, i64 0), i32 44, i32 1, i32 4) #7
  %30 = bitcast i8* %29 to i32*
  %31 = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 9, i32 2
  %32 = bitcast i32** %31 to i8**
  store i8* %29, i8** %32, align 8, !tbaa !17
  store i32 0, i32* %30, align 4, !tbaa !18
  %33 = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 9, i32 4
  store i32* null, i32** %33, align 8, !tbaa !19
  tail call void @llvm.memset.p0i8.i64(i8* %block2.i, i8 0, i64 1024, i32 4, i1 false) #6
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define void @free_t_atoms(%struct.t_atoms* nocapture %atoms) #3 {
  %1 = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 0
  %2 = load i32* %1, align 4, !tbaa !20
  %3 = icmp sgt i32 %2, 0
  %4 = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 2
  br i1 %3, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %0, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %0 ]
  %5 = load i8**** %4, align 8, !tbaa !33
  %6 = getelementptr inbounds i8*** %5, i64 %indvars.iv
  %7 = load i8*** %6, align 8, !tbaa !46
  %8 = load i8** %7, align 8, !tbaa !46
  tail call void @save_free(i8* getelementptr inbounds ([20 x i8]* @.str22, i64 0, i64 0), i8* getelementptr inbounds ([68 x i8]* @.str1, i64 0, i64 0), i32 180, i8* %8) #7
  %9 = load i8**** %4, align 8, !tbaa !33
  %10 = getelementptr inbounds i8*** %9, i64 %indvars.iv
  %11 = load i8*** %10, align 8, !tbaa !46
  store i8* null, i8** %11, align 8, !tbaa !46
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %12 = load i32* %1, align 4, !tbaa !20
  %13 = sext i32 %12 to i64
  %14 = icmp slt i64 %indvars.iv.next, %13
  br i1 %14, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %0
  %15 = bitcast i8**** %4 to i8**
  %16 = load i8** %15, align 8, !tbaa !33
  tail call void @save_free(i8* getelementptr inbounds ([16 x i8]* @.str17, i64 0, i64 0), i8* getelementptr inbounds ([68 x i8]* @.str1, i64 0, i64 0), i32 183, i8* %16) #7
  %17 = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 6
  %18 = bitcast i8**** %17 to i8**
  %19 = load i8** %18, align 8, !tbaa !23
  tail call void @save_free(i8* getelementptr inbounds ([15 x i8]* @.str18, i64 0, i64 0), i8* getelementptr inbounds ([68 x i8]* @.str1, i64 0, i64 0), i32 185, i8* %19) #7
  %20 = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 1
  %21 = bitcast %struct.t_atom** %20 to i8**
  %22 = load i8** %21, align 8, !tbaa !32
  tail call void @save_free(i8* getelementptr inbounds ([12 x i8]* @.str19, i64 0, i64 0), i8* getelementptr inbounds ([68 x i8]* @.str1, i64 0, i64 0), i32 186, i8* %22) #7
  %23 = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 11
  %24 = load %struct.t_pdbinfo** %23, align 8, !tbaa !24
  %25 = icmp eq %struct.t_pdbinfo* %24, null
  br i1 %25, label %28, label %26

; <label>:26                                      ; preds = %._crit_edge
  %27 = bitcast %struct.t_pdbinfo* %24 to i8*
  tail call void @save_free(i8* getelementptr inbounds ([15 x i8]* @.str21, i64 0, i64 0), i8* getelementptr inbounds ([68 x i8]* @.str1, i64 0, i64 0), i32 188, i8* %27) #7
  br label %28

; <label>:28                                      ; preds = %._crit_edge, %26
  store i32 0, i32* %1, align 4, !tbaa !20
  %29 = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 5
  store i32 0, i32* %29, align 4, !tbaa !31
  %30 = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 9
  tail call void @done_block(%struct.t_block* %30) #8
  ret void
}

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
!14 = !{!15, !7, i64 1024}
!15 = !{!"", !5, i64 0, !7, i64 1024, !4, i64 1032, !7, i64 1040, !4, i64 1048}
!16 = !{!15, !7, i64 1040}
!17 = !{!15, !4, i64 1032}
!18 = !{!7, !7, i64 0}
!19 = !{!15, !4, i64 1048}
!20 = !{!21, !7, i64 0}
!21 = !{!"", !7, i64 0, !4, i64 8, !4, i64 16, !4, i64 24, !4, i64 32, !7, i64 40, !4, i64 48, !7, i64 56, !4, i64 64, !15, i64 72, !5, i64 1128, !4, i64 1272}
!22 = !{!21, !7, i64 56}
!23 = !{!21, !4, i64 48}
!24 = !{!21, !4, i64 1272}
!25 = !{!26, !7, i64 0}
!26 = !{!"", !7, i64 0, !4, i64 8}
!27 = !{!26, !4, i64 8}
!28 = !{!29, !4, i64 0}
!29 = !{!"", !4, i64 0, !30, i64 8, !21, i64 45800, !5, i64 47080, !26, i64 50248}
!30 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8, !4, i64 16, !4, i64 24, !5, i64 32}
!31 = !{!21, !7, i64 40}
!32 = !{!21, !4, i64 8}
!33 = !{!21, !4, i64 16}
!34 = !{!35, !4, i64 8}
!35 = !{!"", !7, i64 0, !4, i64 8, !4, i64 16}
!36 = !{!35, !4, i64 16}
!37 = !{!38, !4, i64 400}
!38 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !7, i64 24, !7, i64 28, !7, i64 32, !7, i64 36, !7, i64 40, !7, i64 44, !7, i64 48, !7, i64 52, !39, i64 56, !39, i64 60, !39, i64 64, !7, i64 68, !7, i64 72, !7, i64 76, !7, i64 80, !39, i64 84, !7, i64 88, !7, i64 92, !7, i64 96, !7, i64 100, !7, i64 104, !7, i64 108, !7, i64 112, !7, i64 116, !39, i64 120, !5, i64 124, !5, i64 160, !7, i64 196, !39, i64 200, !39, i64 204, !7, i64 208, !39, i64 212, !39, i64 216, !7, i64 220, !39, i64 224, !39, i64 228, !39, i64 232, !7, i64 236, !39, i64 240, !39, i64 244, !7, i64 248, !39, i64 252, !39, i64 256, !39, i64 260, !39, i64 264, !39, i64 268, !7, i64 272, !7, i64 276, !7, i64 280, !39, i64 284, !39, i64 288, !39, i64 292, !7, i64 296, !39, i64 300, !39, i64 304, !7, i64 308, !7, i64 312, !7, i64 316, !7, i64 320, !7, i64 324, !39, i64 328, !7, i64 332, !39, i64 336, !39, i64 340, !7, i64 344, !39, i64 348, !7, i64 352, !7, i64 356, !7, i64 360, !7, i64 364, !39, i64 368, !39, i64 372, !39, i64 376, !39, i64 380, !40, i64 384, !5, i64 448, !5, i64 520}
!39 = !{!"float", !5, i64 0}
!40 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !4, i64 16, !4, i64 24, !4, i64 32, !4, i64 40, !4, i64 48, !4, i64 56}
!41 = !{!38, !4, i64 408}
!42 = !{!38, !4, i64 416}
!43 = !{!38, !4, i64 424}
!44 = !{!38, !4, i64 432}
!45 = !{!21, !4, i64 64}
!46 = !{!4, !4, i64 0}
