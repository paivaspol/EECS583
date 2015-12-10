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
define i32 @new_data(%struct.t_xrama* %xr) #3 {
  %1 = getelementptr inbounds %struct.t_xrama* %xr, i64 0, i32 4
  %2 = load i32* %1, align 4, !tbaa !14
  %3 = getelementptr inbounds %struct.t_xrama* %xr, i64 0, i32 8
  %4 = getelementptr inbounds %struct.t_xrama* %xr, i64 0, i32 5
  %5 = load i32* %4, align 4, !tbaa !17
  %6 = getelementptr inbounds %struct.t_xrama* %xr, i64 0, i32 9
  %7 = load [3 x float]** %6, align 8, !tbaa !18
  %8 = getelementptr inbounds %struct.t_xrama* %xr, i64 0, i32 10, i64 0
  %9 = tail call i32 @read_next_x(i32 %2, float* %3, i32 %5, [3 x float]* %7, [3 x float]* %8) #8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %12, label %11

; <label>:11                                      ; preds = %0
  tail call fastcc void @calc_dihs(%struct.t_xrama* %xr) #9
  br label %12

; <label>:12                                      ; preds = %0, %11
  %.0 = phi i32 [ 1, %11 ], [ 0, %0 ]
  ret i32 %.0
}

; Function Attrs: optsize
declare i32 @read_next_x(i32, float*, i32, [3 x float]*, [3 x float]*) #1

; Function Attrs: nounwind optsize ssp uwtable
define internal fastcc void @calc_dihs(%struct.t_xrama* %xr) #3 {
  %r_ij = alloca [3 x float], align 4
  %r_kj = alloca [3 x float], align 4
  %r_kl = alloca [3 x float], align 4
  %m = alloca [3 x float], align 4
  %n = alloca [3 x float], align 4
  %cos_phi = alloca float, align 4
  %sign = alloca float, align 4
  %1 = getelementptr inbounds %struct.t_xrama* %xr, i64 0, i32 11
  %2 = load %struct.t_idef** %1, align 8, !tbaa !19
  %3 = getelementptr inbounds %struct.t_xrama* %xr, i64 0, i32 5
  %4 = load i32* %3, align 4, !tbaa !17
  %5 = getelementptr inbounds %struct.t_xrama* %xr, i64 0, i32 10, i64 0
  %6 = getelementptr inbounds %struct.t_xrama* %xr, i64 0, i32 9
  %7 = load [3 x float]** %6, align 8, !tbaa !18
  tail call void @rm_pbc(%struct.t_idef* %2, i32 %4, [3 x float]* %5, [3 x float]* %7, [3 x float]* %7) #8
  %8 = getelementptr inbounds %struct.t_xrama* %xr, i64 0, i32 0
  %9 = load i32* %8, align 4, !tbaa !20
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %0
  %11 = getelementptr inbounds %struct.t_xrama* %xr, i64 0, i32 1
  %12 = getelementptr inbounds [3 x float]* %r_ij, i64 0, i64 0
  %13 = getelementptr inbounds [3 x float]* %r_kj, i64 0, i64 0
  %14 = getelementptr inbounds [3 x float]* %r_kl, i64 0, i64 0
  %15 = getelementptr inbounds [3 x float]* %m, i64 0, i64 0
  %16 = getelementptr inbounds [3 x float]* %n, i64 0, i64 0
  br label %17

; <label>:17                                      ; preds = %.lr.ph, %17
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %17 ]
  %18 = load %struct.t_dih** %11, align 8, !tbaa !21
  %19 = getelementptr inbounds %struct.t_dih* %18, i64 %indvars.iv, i32 0, i64 0
  %20 = load i32* %19, align 4, !tbaa !22
  %21 = sext i32 %20 to i64
  %22 = load [3 x float]** %6, align 8, !tbaa !18
  %23 = getelementptr inbounds [3 x float]* %22, i64 %21, i64 0
  %24 = getelementptr inbounds %struct.t_dih* %18, i64 %indvars.iv, i32 0, i64 1
  %25 = load i32* %24, align 4, !tbaa !22
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [3 x float]* %22, i64 %26, i64 0
  %28 = getelementptr inbounds %struct.t_dih* %18, i64 %indvars.iv, i32 0, i64 2
  %29 = load i32* %28, align 4, !tbaa !22
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [3 x float]* %22, i64 %30, i64 0
  %32 = getelementptr inbounds %struct.t_dih* %18, i64 %indvars.iv, i32 0, i64 3
  %33 = load i32* %32, align 4, !tbaa !22
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [3 x float]* %22, i64 %34, i64 0
  %36 = call float @dih_angle([3 x float]* %5, float* %23, float* %27, float* %31, float* %35, float* %12, float* %13, float* %14, float* %15, float* %16, float* %cos_phi, float* %sign) #8
  %37 = getelementptr inbounds %struct.t_dih* %18, i64 %indvars.iv, i32 3
  store float %36, float* %37, align 4, !tbaa !23
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %38 = load i32* %8, align 4, !tbaa !20
  %39 = sext i32 %38 to i64
  %40 = icmp slt i64 %indvars.iv.next, %39
  br i1 %40, label %17, label %._crit_edge

._crit_edge:                                      ; preds = %17, %0
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define void @init_rama(i8* %infile, i8* %topfile, %struct.t_xrama* %xr) #3 {
  %key.i = alloca %struct.t_dih, align 4
  %buf.i.i = alloca [12 x i8], align 1
  %ff.i = alloca [5 x i32], align 16
  %t = alloca float, align 4
  %1 = tail call %struct.t_topology* @read_top(i8* %topfile) #8
  store %struct.t_topology* %1, %struct.t_topology** @init_rama.top, align 8, !tbaa !25
  %2 = bitcast [5 x i32]* %ff.i to i8*
  call void @llvm.lifetime.start(i64 20, i8* %2)
  %3 = getelementptr inbounds %struct.t_topology* %1, i64 0, i32 2, i32 0
  %4 = load i32* %3, align 4, !tbaa !26
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %.preheader.lr.ph.i, label %._crit_edge21.i

._crit_edge21.i:                                  ; preds = %0
  %.pre.i = getelementptr inbounds %struct.t_xrama* %xr, i64 0, i32 2
  br label %get_dih.exit

.preheader.lr.ph.i:                               ; preds = %0
  %6 = getelementptr inbounds %struct.t_topology* %1, i64 0, i32 2, i32 2
  %7 = getelementptr inbounds [5 x i32]* %ff.i, i64 0, i64 0
  %8 = getelementptr inbounds [12 x i8]* %buf.i.i, i64 0, i64 0
  %9 = getelementptr inbounds %struct.t_xrama* %xr, i64 0, i32 1
  %10 = bitcast %struct.t_dih** %9 to i8**
  %11 = getelementptr inbounds %struct.t_xrama* %xr, i64 0, i32 0
  %12 = getelementptr inbounds %struct.t_xrama* %xr, i64 0, i32 3
  %13 = bitcast %struct.t_phipsi** %12 to i8**
  %14 = getelementptr inbounds %struct.t_xrama* %xr, i64 0, i32 2
  %15 = getelementptr inbounds [5 x i32]* %ff.i, i64 0, i64 1
  %16 = getelementptr inbounds %struct.t_topology* %1, i64 0, i32 2, i32 1
  %17 = getelementptr inbounds %struct.t_topology* %1, i64 0, i32 2, i32 6
  br label %.preheader.i

.preheader.i:                                     ; preds = %add_xr.exit.i, %.preheader.lr.ph.i
  %18 = phi i32 [ %4, %.preheader.lr.ph.i ], [ %99, %add_xr.exit.i ]
  %i.013.i = phi i32 [ 0, %.preheader.lr.ph.i ], [ %98, %add_xr.exit.i ]
  %19 = load i8**** %6, align 8, !tbaa !29
  %20 = sext i32 %18 to i64
  br label %21

; <label>:21                                      ; preds = %39, %.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.preheader.i ], [ %indvars.iv.next.i, %39 ]
  %j.012.i = phi i32 [ 0, %.preheader.i ], [ %41, %39 ]
  %found.011.i = phi i32 [ %i.013.i, %.preheader.i ], [ %40, %39 ]
  %22 = getelementptr inbounds [5 x i8*]* @pp_pat, i64 0, i64 %indvars.iv.i
  %23 = load i8** %22, align 8, !tbaa !25
  %24 = icmp slt i32 %found.011.i, %18
  br i1 %24, label %.lr.ph.i.i, label %find_atom.exit.thread.i

.lr.ph.i.i:                                       ; preds = %21
  %25 = sext i32 %found.011.i to i64
  br label %26

; <label>:26                                      ; preds = %32, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ %25, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %32 ]
  %27 = getelementptr inbounds i8*** %19, i64 %indvars.iv.i.i
  %28 = load i8*** %27, align 8, !tbaa !25
  %29 = load i8** %28, align 8, !tbaa !25
  %30 = call i32 @strcmp(i8* %23, i8* %29) #8
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %find_atom.exit.i, label %32

; <label>:32                                      ; preds = %26
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, 1
  %33 = icmp slt i64 %indvars.iv.next.i.i, %20
  br i1 %33, label %26, label %find_atom.exit.thread.i

find_atom.exit.thread.i:                          ; preds = %21, %32
  %j.01220.i = trunc i64 %indvars.iv.i to i32
  %34 = getelementptr inbounds [5 x i32]* %ff.i, i64 0, i64 %indvars.iv.i
  store i32 -1, i32* %34, align 4, !tbaa !22
  br label %.loopexit.i

find_atom.exit.i:                                 ; preds = %26
  %35 = trunc i64 %indvars.iv.i.i to i32
  %36 = getelementptr inbounds [5 x i32]* %ff.i, i64 0, i64 %indvars.iv.i
  store i32 %35, i32* %36, align 4, !tbaa !22
  %37 = icmp eq i32 %35, -1
  %38 = trunc i64 %indvars.iv.i to i32
  br i1 %37, label %.loopexit.i, label %39

; <label>:39                                      ; preds = %find_atom.exit.i
  %40 = add nsw i32 %35, 1
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %41 = add nuw nsw i32 %j.012.i, 1
  %42 = trunc i64 %indvars.iv.next.i to i32
  %43 = icmp ult i32 %42, 5
  br i1 %43, label %21, label %.loopexit.i

.loopexit.i:                                      ; preds = %39, %find_atom.exit.i, %find_atom.exit.thread.i
  %j.07.i = phi i32 [ %j.01220.i, %find_atom.exit.thread.i ], [ %41, %39 ], [ %38, %find_atom.exit.i ]
  %44 = icmp eq i32 %j.07.i, 5
  br i1 %44, label %45, label %get_dih.exit

; <label>:45                                      ; preds = %.loopexit.i
  call void @llvm.lifetime.start(i64 12, i8* %8) #7
  %46 = load i8** %10, align 8, !tbaa !21
  %47 = load i32* %11, align 4, !tbaa !20
  %48 = mul i32 %47, 28
  %49 = add i32 %48, 56
  %50 = call i8* @save_realloc(i8* getelementptr inbounds ([8 x i8]* @.str4, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str5, i64 0, i64 0), i32 109, i8* %46, i32 %49) #8
  store i8* %50, i8** %10, align 8, !tbaa !21
  %.cast.i.i = bitcast i8* %50 to %struct.t_dih*
  br label %51

; <label>:51                                      ; preds = %51, %45
  %indvars.iv3.i.i = phi i64 [ 0, %45 ], [ %indvars.iv.next4.i.i, %51 ]
  %52 = getelementptr inbounds [5 x i32]* %ff.i, i64 0, i64 %indvars.iv3.i.i
  %53 = load i32* %52, align 4, !tbaa !22
  %54 = load i32* %11, align 4, !tbaa !20
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.t_dih* %.cast.i.i, i64 %55, i32 0, i64 %indvars.iv3.i.i
  store i32 %53, i32* %56, align 4, !tbaa !22
  %indvars.iv.next4.i.i = add nuw nsw i64 %indvars.iv3.i.i, 1
  %exitcond5.i.i = icmp eq i64 %indvars.iv.next4.i.i, 4
  br i1 %exitcond5.i.i, label %.preheader.i.i, label %51

.preheader.i.i:                                   ; preds = %51, %.preheader.i.i
  %indvars.iv.i1.i = phi i64 [ %indvars.iv.next.i2.i, %.preheader.i.i ], [ 0, %51 ]
  %indvars.iv.next.i2.i = add nuw nsw i64 %indvars.iv.i1.i, 1
  %57 = getelementptr inbounds [5 x i32]* %ff.i, i64 0, i64 %indvars.iv.next.i2.i
  %58 = load i32* %57, align 4, !tbaa !22
  %59 = load i32* %11, align 4, !tbaa !20
  %60 = add nsw i32 %59, 1
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.t_dih* %.cast.i.i, i64 %61, i32 0, i64 %indvars.iv.i1.i
  store i32 %58, i32* %62, align 4, !tbaa !22
  %exitcond.i.i = icmp eq i64 %indvars.iv.next.i2.i, 4
  br i1 %exitcond.i.i, label %add_xr.exit.i, label %.preheader.i.i

add_xr.exit.i:                                    ; preds = %.preheader.i.i
  %63 = load i32* %11, align 4, !tbaa !20
  %64 = add nsw i32 %63, 2
  store i32 %64, i32* %11, align 4, !tbaa !20
  %65 = load i8** %13, align 8, !tbaa !30
  %66 = load i32* %14, align 4, !tbaa !31
  %67 = mul i32 %66, 24
  %68 = add i32 %67, 24
  %69 = call i8* @save_realloc(i8* getelementptr inbounds ([7 x i8]* @.str6, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str5, i64 0, i64 0), i32 116, i8* %65, i32 %68) #8
  %70 = bitcast i8* %69 to %struct.t_phipsi*
  store i8* %69, i8** %13, align 8, !tbaa !30
  %71 = load i32* %11, align 4, !tbaa !20
  %72 = add nsw i32 %71, -2
  %73 = load i32* %14, align 4, !tbaa !31
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.t_phipsi* %70, i64 %74, i32 2
  store i32 %72, i32* %75, align 4, !tbaa !32
  %76 = add nsw i32 %71, -1
  %77 = getelementptr inbounds %struct.t_phipsi* %70, i64 %74, i32 3
  store i32 %76, i32* %77, align 4, !tbaa !34
  %78 = getelementptr inbounds %struct.t_phipsi* %70, i64 %74, i32 0
  store i32 0, i32* %78, align 4, !tbaa !35
  %79 = load i32* %15, align 4, !tbaa !22
  %80 = sext i32 %79 to i64
  %81 = load %struct.t_atom** %16, align 8, !tbaa !36
  %82 = getelementptr inbounds %struct.t_atom* %81, i64 %80, i32 7
  %83 = load i32* %82, align 4, !tbaa !37
  %84 = sext i32 %83 to i64
  %85 = load i8**** %17, align 8, !tbaa !39
  %86 = getelementptr inbounds i8*** %85, i64 %84
  %87 = load i8*** %86, align 8, !tbaa !25
  %88 = load i8** %87, align 8, !tbaa !25
  %89 = add nsw i32 %83, 1
  %90 = call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* %8, i32 0, i64 12, i8* getelementptr inbounds ([6 x i8]* @.str7, i64 0, i64 0), i8* %88, i32 %89) #8
  %91 = call i8* @strdup(i8* %8) #8
  %92 = load i32* %14, align 4, !tbaa !31
  %93 = sext i32 %92 to i64
  %94 = load %struct.t_phipsi** %12, align 8, !tbaa !30
  %95 = getelementptr inbounds %struct.t_phipsi* %94, i64 %93, i32 1
  store i8* %91, i8** %95, align 8, !tbaa !40
  %96 = add nsw i32 %92, 1
  store i32 %96, i32* %14, align 4, !tbaa !31
  call void @llvm.lifetime.end(i64 12, i8* %8) #7
  %97 = load i32* %7, align 16, !tbaa !22
  %98 = add nsw i32 %97, 1
  %99 = load i32* %3, align 4, !tbaa !26
  %100 = icmp slt i32 %98, %99
  br i1 %100, label %.preheader.i, label %get_dih.exit

get_dih.exit:                                     ; preds = %.loopexit.i, %add_xr.exit.i, %._crit_edge21.i
  %.pre-phi.i = phi i32* [ %.pre.i, %._crit_edge21.i ], [ %14, %add_xr.exit.i ], [ %14, %.loopexit.i ]
  %101 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !25
  %102 = load i32* %.pre-phi.i, align 4, !tbaa !31
  %103 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %101, i8* getelementptr inbounds ([31 x i8]* @.str, i64 0, i64 0), i32 %102) #8
  call void @llvm.lifetime.end(i64 20, i8* %2)
  %104 = load %struct.t_topology** @init_rama.top, align 8, !tbaa !25
  %105 = bitcast %struct.t_dih* %key.i to i8*
  call void @llvm.lifetime.start(i64 28, i8* %105)
  %106 = getelementptr inbounds %struct.t_topology* %104, i64 0, i32 1, i32 5, i64 8, i32 0
  %107 = load i32* %106, align 4, !tbaa !41
  %108 = icmp sgt i32 %107, 0
  br i1 %108, label %.lr.ph5.i, label %..preheader_crit_edge6.i

..preheader_crit_edge6.i:                         ; preds = %get_dih.exit
  %.pre7.i = getelementptr inbounds %struct.t_xrama* %xr, i64 0, i32 0
  br label %.preheader.i2

.lr.ph5.i:                                        ; preds = %get_dih.exit
  %109 = getelementptr inbounds %struct.t_topology* %104, i64 0, i32 1, i32 5, i64 8, i32 2
  %110 = load i32** %109, align 8, !tbaa !43
  %111 = getelementptr inbounds %struct.t_topology* %104, i64 0, i32 1, i32 3
  %112 = getelementptr inbounds %struct.t_dih* %key.i, i64 0, i32 0, i64 1
  %113 = getelementptr inbounds %struct.t_dih* %key.i, i64 0, i32 0, i64 2
  %114 = getelementptr inbounds %struct.t_xrama* %xr, i64 0, i32 1
  %115 = bitcast %struct.t_dih** %114 to i8**
  %116 = getelementptr inbounds %struct.t_xrama* %xr, i64 0, i32 0
  %117 = getelementptr inbounds %struct.t_topology* %104, i64 0, i32 1, i32 4
  br label %121

.preheader.i2:                                    ; preds = %151, %..preheader_crit_edge6.i
  %.pre-phi.i1 = phi i32* [ %.pre7.i, %..preheader_crit_edge6.i ], [ %116, %151 ]
  %118 = load i32* %.pre-phi.i1, align 4, !tbaa !20
  %119 = icmp sgt i32 %118, 0
  br i1 %119, label %.lr.ph.i, label %get_dih_props.exit

.lr.ph.i:                                         ; preds = %.preheader.i2
  %120 = getelementptr inbounds %struct.t_xrama* %xr, i64 0, i32 1
  br label %158

; <label>:121                                     ; preds = %151, %.lr.ph5.i
  %i.03.i = phi i32 [ 0, %.lr.ph5.i ], [ %153, %151 ]
  %ia.02.i = phi i32* [ %110, %.lr.ph5.i ], [ %155, %151 ]
  %122 = load i32* %ia.02.i, align 4, !tbaa !22
  %123 = sext i32 %122 to i64
  %124 = load i32** %111, align 8, !tbaa !44
  %125 = getelementptr inbounds i32* %124, i64 %123
  %126 = load i32* %125, align 4, !tbaa !22
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds [44 x %struct.t_interaction_function]* @interaction_function, i64 0, i64 %127, i32 2
  %129 = load i32* %128, align 8, !tbaa !46
  %130 = getelementptr inbounds i32* %ia.02.i, i64 2
  %131 = load i32* %130, align 4, !tbaa !22
  store i32 %131, i32* %112, align 4, !tbaa !22
  %132 = getelementptr inbounds i32* %ia.02.i, i64 3
  %133 = load i32* %132, align 4, !tbaa !22
  store i32 %133, i32* %113, align 4, !tbaa !22
  %134 = load i8** %115, align 8, !tbaa !21
  %135 = load i32* %116, align 4, !tbaa !20
  %136 = sext i32 %135 to i64
  %137 = call i8* @bsearch(i8* %105, i8* %134, i64 %136, i64 28, i32 (i8*, i8*)* @d_comp) #8
  %138 = icmp eq i8* %137, null
  br i1 %138, label %151, label %139

; <label>:139                                     ; preds = %121
  %140 = load %union.t_iparams** %117, align 8, !tbaa !49
  %141 = getelementptr inbounds %union.t_iparams* %140, i64 %123, i32 0, i32 2
  %142 = bitcast float* %141 to i32*
  %143 = load i32* %142, align 4, !tbaa !50
  %144 = getelementptr inbounds i8* %137, i64 16
  %145 = bitcast i8* %144 to i32*
  store i32 %143, i32* %145, align 4, !tbaa !52
  %146 = getelementptr inbounds %union.t_iparams* %140, i64 %123, i32 0, i32 0
  %147 = bitcast float* %146 to i32*
  %148 = load i32* %147, align 4, !tbaa !53
  %149 = getelementptr inbounds i8* %137, i64 20
  %150 = bitcast i8* %149 to i32*
  store i32 %148, i32* %150, align 4, !tbaa !54
  br label %151

; <label>:151                                     ; preds = %139, %121
  %152 = add nsw i32 %129, 1
  %153 = add nsw i32 %152, %i.03.i
  %154 = sext i32 %152 to i64
  %155 = getelementptr inbounds i32* %ia.02.i, i64 %154
  %156 = load i32* %106, align 4, !tbaa !41
  %157 = icmp slt i32 %153, %156
  br i1 %157, label %121, label %.preheader.i2

; <label>:158                                     ; preds = %169, %.lr.ph.i
  %159 = phi i32 [ %118, %.lr.ph.i ], [ %170, %169 ]
  %indvars.iv.i3 = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i5, %169 ]
  %160 = load %struct.t_dih** %120, align 8, !tbaa !21
  %161 = getelementptr inbounds %struct.t_dih* %160, i64 %indvars.iv.i3, i32 1
  %162 = load i32* %161, align 4, !tbaa !52
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %164, label %169

; <label>:164                                     ; preds = %158
  %165 = getelementptr inbounds %struct.t_dih* %160, i64 %indvars.iv.i3, i32 0, i64 1
  %166 = load i32* %165, align 4, !tbaa !22
  %167 = getelementptr inbounds %struct.t_dih* %160, i64 %indvars.iv.i3, i32 0, i64 2
  %168 = load i32* %167, align 4, !tbaa !22
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([44 x i8]* @.str8, i64 0, i64 0), i32 %166, i32 %168) #8
  %.pre.i4 = load i32* %.pre-phi.i1, align 4, !tbaa !20
  br label %169

; <label>:169                                     ; preds = %164, %158
  %170 = phi i32 [ %159, %158 ], [ %.pre.i4, %164 ]
  %indvars.iv.next.i5 = add nuw nsw i64 %indvars.iv.i3, 1
  %171 = sext i32 %170 to i64
  %172 = icmp slt i64 %indvars.iv.next.i5, %171
  br i1 %172, label %158, label %get_dih_props.exit

get_dih_props.exit:                               ; preds = %169, %.preheader.i2
  call void @llvm.lifetime.end(i64 28, i8* %105)
  %173 = getelementptr inbounds %struct.t_xrama* %xr, i64 0, i32 4
  %174 = getelementptr inbounds %struct.t_xrama* %xr, i64 0, i32 9
  %175 = getelementptr inbounds %struct.t_xrama* %xr, i64 0, i32 10, i64 0
  %176 = call i32 @read_first_x(i32* %173, i8* %infile, float* %t, [3 x float]** %174, [3 x float]* %175) #8
  %177 = getelementptr inbounds %struct.t_xrama* %xr, i64 0, i32 5
  store i32 %176, i32* %177, align 4, !tbaa !17
  %178 = load %struct.t_topology** @init_rama.top, align 8, !tbaa !25
  %179 = getelementptr inbounds %struct.t_topology* %178, i64 0, i32 1
  %180 = getelementptr inbounds %struct.t_xrama* %xr, i64 0, i32 11
  store %struct.t_idef* %179, %struct.t_idef** %180, align 8, !tbaa !19
  %181 = getelementptr inbounds %struct.t_xrama* %xr, i64 0, i32 6
  store i32 %176, i32* %181, align 4, !tbaa !55
  %182 = getelementptr inbounds %struct.t_xrama* %xr, i64 0, i32 7
  store i32 0, i32* %182, align 4, !tbaa !56
  %183 = getelementptr inbounds %struct.t_xrama* %xr, i64 0, i32 0
  %184 = load i32* %183, align 4, !tbaa !20
  %185 = icmp sgt i32 %184, 0
  br i1 %185, label %.preheader.lr.ph.i6, label %min_max.exit

.preheader.lr.ph.i6:                              ; preds = %get_dih_props.exit
  %186 = getelementptr inbounds %struct.t_xrama* %xr, i64 0, i32 1
  %187 = load %struct.t_dih** %186, align 8, !tbaa !21
  %188 = sext i32 %184 to i64
  %189 = add nsw i64 %188, -1
  br label %.preheader.i7

.preheader.i7:                                    ; preds = %205, %.preheader.lr.ph.i6
  %190 = phi i32 [ 0, %.preheader.lr.ph.i6 ], [ %203, %205 ]
  %191 = phi i32 [ %176, %.preheader.lr.ph.i6 ], [ %204, %205 ]
  %indvars.iv3.i = phi i64 [ 0, %.preheader.lr.ph.i6 ], [ %indvars.iv.next4.i, %205 ]
  br label %192

; <label>:192                                     ; preds = %202, %.preheader.i7
  %193 = phi i32 [ %190, %.preheader.i7 ], [ %203, %202 ]
  %194 = phi i32 [ %191, %.preheader.i7 ], [ %204, %202 ]
  %indvars.iv.i8 = phi i64 [ 0, %.preheader.i7 ], [ %indvars.iv.next.i9, %202 ]
  %195 = getelementptr inbounds %struct.t_dih* %187, i64 %indvars.iv3.i, i32 0, i64 %indvars.iv.i8
  %196 = load i32* %195, align 4, !tbaa !22
  %197 = icmp slt i32 %196, %194
  br i1 %197, label %198, label %199

; <label>:198                                     ; preds = %192
  store i32 %196, i32* %181, align 4, !tbaa !55
  br label %202

; <label>:199                                     ; preds = %192
  %200 = icmp sgt i32 %196, %193
  br i1 %200, label %201, label %202

; <label>:201                                     ; preds = %199
  store i32 %196, i32* %182, align 4, !tbaa !56
  br label %202

; <label>:202                                     ; preds = %201, %199, %198
  %203 = phi i32 [ %193, %198 ], [ %196, %201 ], [ %193, %199 ]
  %204 = phi i32 [ %196, %198 ], [ %194, %201 ], [ %194, %199 ]
  %indvars.iv.next.i9 = add nuw nsw i64 %indvars.iv.i8, 1
  %exitcond.i = icmp eq i64 %indvars.iv.next.i9, 4
  br i1 %exitcond.i, label %205, label %192

; <label>:205                                     ; preds = %202
  %indvars.iv.next4.i = add nuw nsw i64 %indvars.iv3.i, 1
  %exitcond = icmp eq i64 %indvars.iv3.i, %189
  br i1 %exitcond, label %min_max.exit, label %.preheader.i7

min_max.exit:                                     ; preds = %205, %get_dih_props.exit
  call fastcc void @calc_dihs(%struct.t_xrama* %xr) #9
  ret void
}

; Function Attrs: optsize
declare %struct.t_topology* @read_top(i8*) #1

; Function Attrs: optsize
declare i32 @read_first_x(i32*, i8*, float*, [3 x float]**, [3 x float]*) #1

; Function Attrs: optsize
declare void @rm_pbc(%struct.t_idef*, i32, [3 x float]*, [3 x float]*, [3 x float]*) #1

; Function Attrs: optsize
declare float @dih_angle([3 x float]*, float*, float*, float*, float*, float*, float*, float*, float*, float*, float*, float*) #1

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct.__sFILE* nocapture, i8* nocapture readonly, ...) #4

; Function Attrs: nounwind optsize readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) #5

; Function Attrs: optsize
declare i8* @save_realloc(i8*, i8*, i32, i8*, i32) #1

; Function Attrs: optsize
declare i32 @__sprintf_chk(i8*, i32, i64, i8*, ...) #1

; Function Attrs: nounwind optsize
declare noalias i8* @strdup(i8* nocapture readonly) #4

; Function Attrs: optsize
declare i8* @bsearch(i8*, i8*, i64, i64, i32 (i8*, i8*)*) #1

; Function Attrs: nounwind optsize readonly ssp uwtable
define internal i32 @d_comp(i8* nocapture readonly %a, i8* nocapture readonly %b) #6 {
  %1 = getelementptr inbounds i8* %a, i64 4
  %2 = bitcast i8* %1 to i32*
  %3 = load i32* %2, align 4, !tbaa !22
  %4 = getelementptr inbounds i8* %b, i64 4
  %5 = bitcast i8* %4 to i32*
  %6 = load i32* %5, align 4, !tbaa !22
  %7 = icmp slt i32 %3, %6
  br i1 %7, label %18, label %8

; <label>:8                                       ; preds = %0
  %9 = icmp eq i32 %3, %6
  br i1 %9, label %10, label %18

; <label>:10                                      ; preds = %8
  %11 = getelementptr inbounds i8* %a, i64 8
  %12 = bitcast i8* %11 to i32*
  %13 = load i32* %12, align 4, !tbaa !22
  %14 = getelementptr inbounds i8* %b, i64 8
  %15 = bitcast i8* %14 to i32*
  %16 = load i32* %15, align 4, !tbaa !22
  %17 = sub nsw i32 %13, %16
  br label %18

; <label>:18                                      ; preds = %8, %0, %10
  %.0 = phi i32 [ %17, %10 ], [ -1, %0 ], [ 1, %8 ]
  ret i32 %.0
}

; Function Attrs: optsize
declare void @fatal_error(i32, i8*, ...) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #7

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #7

attributes #0 = { alwaysinline nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { alwaysinline nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind optsize readonly ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind }
attributes #8 = { nounwind optsize }
attributes #9 = { optsize }

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
!14 = !{!15, !7, i64 32}
!15 = !{!"", !7, i64 0, !4, i64 8, !7, i64 16, !4, i64 24, !7, i64 32, !7, i64 36, !7, i64 40, !7, i64 44, !16, i64 48, !4, i64 56, !5, i64 64, !4, i64 104}
!16 = !{!"float", !5, i64 0}
!17 = !{!15, !7, i64 36}
!18 = !{!15, !4, i64 56}
!19 = !{!15, !4, i64 104}
!20 = !{!15, !7, i64 0}
!21 = !{!15, !4, i64 8}
!22 = !{!7, !7, i64 0}
!23 = !{!24, !16, i64 24}
!24 = !{!"", !5, i64 0, !7, i64 16, !16, i64 20, !16, i64 24}
!25 = !{!4, !4, i64 0}
!26 = !{!27, !7, i64 0}
!27 = !{!"", !7, i64 0, !4, i64 8, !4, i64 16, !4, i64 24, !4, i64 32, !7, i64 40, !4, i64 48, !7, i64 56, !4, i64 64, !28, i64 72, !5, i64 1128, !4, i64 1272}
!28 = !{!"", !5, i64 0, !7, i64 1024, !4, i64 1032, !7, i64 1040, !4, i64 1048}
!29 = !{!27, !4, i64 16}
!30 = !{!15, !4, i64 24}
!31 = !{!15, !7, i64 16}
!32 = !{!33, !7, i64 16}
!33 = !{!"", !7, i64 0, !4, i64 8, !7, i64 16, !7, i64 20}
!34 = !{!33, !7, i64 20}
!35 = !{!33, !7, i64 0}
!36 = !{!27, !4, i64 8}
!37 = !{!38, !7, i64 24}
!38 = !{!"", !16, i64 0, !16, i64 4, !16, i64 8, !16, i64 12, !8, i64 16, !8, i64 18, !7, i64 20, !7, i64 24, !5, i64 28, !5, i64 37}
!39 = !{!27, !4, i64 48}
!40 = !{!33, !4, i64 8}
!41 = !{!42, !7, i64 0}
!42 = !{!"", !7, i64 0, !5, i64 4, !4, i64 1032}
!43 = !{!42, !4, i64 1032}
!44 = !{!45, !4, i64 16}
!45 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8, !4, i64 16, !4, i64 24, !5, i64 32}
!46 = !{!47, !7, i64 16}
!47 = !{!"", !4, i64 0, !4, i64 8, !7, i64 16, !7, i64 20, !7, i64 24, !48, i64 32, !7, i64 40, !4, i64 48}
!48 = !{!"long", !5, i64 0}
!49 = !{!45, !4, i64 24}
!50 = !{!51, !7, i64 8}
!51 = !{!"", !16, i64 0, !16, i64 4, !7, i64 8, !16, i64 12, !16, i64 16}
!52 = !{!24, !7, i64 16}
!53 = !{!51, !16, i64 0}
!54 = !{!24, !16, i64 20}
!55 = !{!15, !7, i64 40}
!56 = !{!15, !7, i64 44}
