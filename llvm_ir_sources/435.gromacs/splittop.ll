; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/splittop.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

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
%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct.t_idef = type { i32, i32, i32, i32*, %union.t_iparams*, [44 x %struct.t_ilist] }
%struct.t_ilist = type { i32, [256 x i32], i32* }
%struct.t_commrec = type { i32, i32, i32, i32, i32, i32 }
%struct.t_nsborder = type { i32, i32, i32, i32, i32, i32, i32, [256 x i32], [256 x i32], [256 x i32], [256 x i32] }
%struct.t_comm_dummies = type { i32, i32, i32*, i32*, i32, i32, i32*, i32* }
%struct.t_topology = type { i8**, %struct.t_idef, %struct.t_atoms, [3 x %struct.t_block], %struct.t_symtab }
%struct.t_atoms = type { i32, %struct.t_atom*, i8***, i8***, i8***, i32, i8***, i32, i8***, %struct.t_block, [9 x %struct.t_grps], %struct.t_pdbinfo* }
%struct.t_atom = type { float, float, float, float, i16, i16, i32, i32, [9 x i8], i8 }
%struct.t_block = type { [256 x i32], i32, i32*, i32, i32* }
%struct.t_grps = type { i32, i32* }
%struct.t_pdbinfo = type { i32, i32, i8, [6 x i8], float, float, i32, [6 x i32] }
%struct.t_symtab = type { i32, %struct.symbuf* }
%struct.symbuf = type { i32, i8**, %struct.symbuf* }

@.str = private unnamed_addr constant [8 x i8] c"newlist\00", align 1
@.str1 = private unnamed_addr constant [68 x i8] c"../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/splittop.c\00", align 1
@.str2 = private unnamed_addr constant [11 x i8] c"idxprevdum\00", align 1
@.str3 = private unnamed_addr constant [11 x i8] c"idxnextdum\00", align 1
@.str4 = private unnamed_addr constant [14 x i8] c"idxprevconstr\00", align 1
@.str5 = private unnamed_addr constant [14 x i8] c"idxnextconstr\00", align 1
@interaction_function = external global [44 x %struct.t_interaction_function]
@.str6 = private unnamed_addr constant [280 x i8] c"Dummy particle %d and its constructing atoms are not on the same or adjacent\0A nodes. This is necessary to avoid a lot\0A of extra communication. The easiest way to ensure this is to place dummies\0A close to the constructing atoms.\0A Sorry, but you will have to rework your topology!\0A\00", align 1
@.str7 = private unnamed_addr constant [113 x i8] c"Negative number of atoms (%d) on node %d\0AYou have probably not used the same value for -np with grompp and mdrun\00", align 1
@.str8 = private unnamed_addr constant [3 x i8] c"ia\00", align 1
@.str9 = private unnamed_addr constant [11 x i8] c"il->iatoms\00", align 1

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
  %16 = tail call i32 @__swbuf(i32 %_c, %struct.__sFILE* %_p) #4
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
define void @create_dummylist(i32 %nindex, i32* nocapture %list, i32* nocapture %targetn, i32** nocapture %listptr) #3 {
  %1 = icmp sgt i32 %nindex, 0
  br i1 %1, label %.lr.ph18, label %._crit_edge19.thread

._crit_edge19.thread:                             ; preds = %0
  store i32 %nindex, i32* %targetn, align 4, !tbaa !14
  %2 = tail call i8* @save_calloc(i8* getelementptr inbounds ([8 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([68 x i8]* @.str1, i64 0, i64 0), i32 61, i32 %nindex, i32 4) #4
  br label %._crit_edge6

.loopexit2:                                       ; preds = %.loopexit, %.lr.ph18
  %.1.lcssa = phi i32 [ %.016, %.lr.ph18 ], [ %.2, %.loopexit ]
  %3 = sext i32 %.1.lcssa to i64
  %4 = icmp slt i64 %indvars.iv.next41, %3
  %indvars.iv.next37 = add nuw i64 %indvars.iv36, 1
  br i1 %4, label %.lr.ph18, label %._crit_edge19

.lr.ph18:                                         ; preds = %0, %.loopexit2
  %indvars.iv40 = phi i64 [ %indvars.iv.next41, %.loopexit2 ], [ 0, %0 ]
  %indvars.iv36 = phi i64 [ %indvars.iv.next37, %.loopexit2 ], [ 1, %0 ]
  %.016 = phi i32 [ %.1.lcssa, %.loopexit2 ], [ %nindex, %0 ]
  %5 = getelementptr inbounds i32* %list, i64 %indvars.iv40
  %6 = load i32* %5, align 4, !tbaa !14
  %indvars.iv.next41 = add nuw nsw i64 %indvars.iv40, 1
  %7 = sext i32 %.016 to i64
  %8 = icmp slt i64 %indvars.iv.next41, %7
  br i1 %8, label %.lr.ph13, label %.loopexit2

.lr.ph13:                                         ; preds = %.lr.ph18
  %9 = trunc i64 %indvars.iv.next41 to i32
  br label %10

; <label>:10                                      ; preds = %.lr.ph13, %.loopexit
  %indvars.iv38 = phi i64 [ %indvars.iv36, %.lr.ph13 ], [ %indvars.iv.next39, %.loopexit ]
  %.111 = phi i32 [ %.016, %.lr.ph13 ], [ %.2, %.loopexit ]
  %j.010 = phi i32 [ %9, %.lr.ph13 ], [ %24, %.loopexit ]
  %11 = getelementptr inbounds i32* %list, i64 %indvars.iv38
  %12 = load i32* %11, align 4, !tbaa !14
  %13 = icmp eq i32 %12, %6
  br i1 %13, label %.preheader1, label %.loopexit

.preheader1:                                      ; preds = %10
  %14 = add i32 %.111, -1
  %15 = sext i32 %14 to i64
  %16 = icmp slt i64 %indvars.iv38, %15
  br i1 %16, label %.lr.ph8, label %.loopexit

.lr.ph8:                                          ; preds = %.preheader1
  %17 = trunc i64 %indvars.iv38 to i32
  br label %18

; <label>:18                                      ; preds = %18, %.lr.ph8
  %indvars.iv29 = phi i64 [ %indvars.iv38, %.lr.ph8 ], [ %indvars.iv.next30, %18 ]
  %k.07 = phi i32 [ %17, %.lr.ph8 ], [ %19, %18 ]
  %19 = add nuw nsw i32 %k.07, 1
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32* %list, i64 %20
  %22 = load i32* %21, align 4, !tbaa !14
  %23 = getelementptr inbounds i32* %list, i64 %indvars.iv29
  store i32 %22, i32* %23, align 4, !tbaa !14
  %indvars.iv.next30 = add nuw i64 %indvars.iv29, 1
  %lftr.wideiv31 = trunc i64 %indvars.iv.next30 to i32
  %exitcond32 = icmp eq i32 %lftr.wideiv31, %14
  br i1 %exitcond32, label %.loopexit, label %18

.loopexit:                                        ; preds = %18, %.preheader1, %10
  %.2 = phi i32 [ %.111, %10 ], [ %14, %.preheader1 ], [ %14, %18 ]
  %24 = add nuw nsw i32 %j.010, 1
  %25 = icmp slt i32 %24, %.2
  %indvars.iv.next39 = add nuw i64 %indvars.iv38, 1
  br i1 %25, label %10, label %.loopexit2

._crit_edge19:                                    ; preds = %.loopexit2
  store i32 %.1.lcssa, i32* %targetn, align 4, !tbaa !14
  %26 = tail call i8* @save_calloc(i8* getelementptr inbounds ([8 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([68 x i8]* @.str1, i64 0, i64 0), i32 61, i32 %.1.lcssa, i32 4) #4
  %27 = bitcast i8* %26 to i32*
  %28 = icmp sgt i32 %.1.lcssa, 0
  br i1 %28, label %.preheader.lr.ph, label %._crit_edge6

.preheader.lr.ph:                                 ; preds = %._crit_edge19
  %29 = add i32 %.1.lcssa, -1
  br label %.lr.ph

.lr.ph:                                           ; preds = %.preheader.lr.ph, %._crit_edge
  %indvars.iv21 = phi i64 [ 0, %.preheader.lr.ph ], [ %indvars.iv.next22, %._crit_edge ]
  br label %30

; <label>:30                                      ; preds = %43, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %43 ]
  %inr.04 = phi i32 [ -1, %.lr.ph ], [ %inr.1, %43 ]
  %31 = getelementptr inbounds i32* %list, i64 %indvars.iv
  %32 = load i32* %31, align 4, !tbaa !14
  %33 = icmp sgt i32 %32, 0
  br i1 %33, label %34, label %43

; <label>:34                                      ; preds = %30
  %35 = icmp eq i32 %inr.04, -1
  br i1 %35, label %41, label %36

; <label>:36                                      ; preds = %34
  %37 = sext i32 %inr.04 to i64
  %38 = getelementptr inbounds i32* %list, i64 %37
  %39 = load i32* %38, align 4, !tbaa !14
  %40 = icmp slt i32 %32, %39
  br i1 %40, label %41, label %43

; <label>:41                                      ; preds = %36, %34
  %42 = trunc i64 %indvars.iv to i32
  br label %43

; <label>:43                                      ; preds = %30, %36, %41
  %inr.1 = phi i32 [ %42, %41 ], [ %inr.04, %36 ], [ %inr.04, %30 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %29
  br i1 %exitcond, label %._crit_edge, label %30

._crit_edge:                                      ; preds = %43
  %44 = sext i32 %inr.1 to i64
  %45 = getelementptr inbounds i32* %list, i64 %44
  %46 = load i32* %45, align 4, !tbaa !14
  %47 = getelementptr inbounds i32* %27, i64 %indvars.iv21
  store i32 %46, i32* %47, align 4, !tbaa !14
  store i32 -1, i32* %45, align 4, !tbaa !14
  %indvars.iv.next22 = add nuw nsw i64 %indvars.iv21, 1
  %lftr.wideiv23 = trunc i64 %indvars.iv21 to i32
  %exitcond24 = icmp eq i32 %lftr.wideiv23, %29
  br i1 %exitcond24, label %._crit_edge6, label %.lr.ph

._crit_edge6:                                     ; preds = %._crit_edge, %._crit_edge19.thread, %._crit_edge19
  %48 = phi i8* [ %2, %._crit_edge19.thread ], [ %26, %._crit_edge19 ], [ %26, %._crit_edge ]
  %49 = bitcast i32** %listptr to i8**
  store i8* %48, i8** %49, align 8, !tbaa !15
  ret void
}

; Function Attrs: optsize
declare i8* @save_calloc(i8*, i8*, i32, i32, i32) #1

; Function Attrs: nounwind optsize ssp uwtable
define i32 @setup_parallel_dummies(%struct.t_idef* nocapture readonly %idef, %struct.t_commrec* nocapture readonly %cr, %struct.t_nsborder* nocapture readonly %nsb, %struct.t_comm_dummies* nocapture %dummycomm) #3 {
  %1 = tail call i8* @save_calloc(i8* getelementptr inbounds ([11 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([68 x i8]* @.str1, i64 0, i64 0), i32 93, i32 100, i32 4) #4
  %2 = bitcast i8* %1 to i32*
  %3 = tail call i8* @save_calloc(i8* getelementptr inbounds ([11 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([68 x i8]* @.str1, i64 0, i64 0), i32 94, i32 100, i32 4) #4
  %4 = bitcast i8* %3 to i32*
  %5 = tail call i8* @save_calloc(i8* getelementptr inbounds ([14 x i8]* @.str4, i64 0, i64 0), i8* getelementptr inbounds ([68 x i8]* @.str1, i64 0, i64 0), i32 95, i32 100, i32 4) #4
  %6 = bitcast i8* %5 to i32*
  %7 = tail call i8* @save_calloc(i8* getelementptr inbounds ([14 x i8]* @.str5, i64 0, i64 0), i8* getelementptr inbounds ([68 x i8]* @.str1, i64 0, i64 0), i32 96, i32 100, i32 4) #4
  %8 = bitcast i8* %7 to i32*
  %9 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 0
  %10 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 1
  br label %11

; <label>:11                                      ; preds = %.loopexit11, %0
  %indvars.iv60 = phi i64 [ 0, %0 ], [ %indvars.iv.next61, %.loopexit11 ]
  %nnextconstr.051 = phi i32 [ 0, %0 ], [ %nnextconstr.5, %.loopexit11 ]
  %nprevconstr.050 = phi i32 [ 0, %0 ], [ %nprevconstr.5, %.loopexit11 ]
  %nnextdum.049 = phi i32 [ 0, %0 ], [ %nnextdum.4, %.loopexit11 ]
  %nprevdum.048 = phi i32 [ 0, %0 ], [ %nprevdum.4, %.loopexit11 ]
  %idxnextconstr.047 = phi i32* [ %8, %0 ], [ %idxnextconstr.6, %.loopexit11 ]
  %idxprevconstr.046 = phi i32* [ %6, %0 ], [ %idxprevconstr.6, %.loopexit11 ]
  %idxnextdum.045 = phi i32* [ %4, %0 ], [ %idxnextdum.5, %.loopexit11 ]
  %idxprevdum.044 = phi i32* [ %2, %0 ], [ %idxprevdum.5, %.loopexit11 ]
  %found.043 = phi i32 [ 0, %0 ], [ %found.9, %.loopexit11 ]
  %12 = getelementptr inbounds [44 x %struct.t_interaction_function]* @interaction_function, i64 0, i64 %indvars.iv60, i32 5
  %13 = load i64* %12, align 8, !tbaa !16
  %14 = and i64 %13, 2
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %.loopexit11, label %16

; <label>:16                                      ; preds = %11
  %17 = getelementptr inbounds %struct.t_idef* %idef, i64 0, i32 5, i64 %indvars.iv60, i32 0
  %18 = load i32* %17, align 4, !tbaa !19
  %19 = icmp sgt i32 %18, 0
  br i1 %19, label %.lr.ph, label %.loopexit11

.lr.ph:                                           ; preds = %16
  %20 = getelementptr inbounds %struct.t_idef* %idef, i64 0, i32 5, i64 %indvars.iv60, i32 2
  %21 = load i32** %20, align 8, !tbaa !21
  %22 = getelementptr inbounds [44 x %struct.t_interaction_function]* @interaction_function, i64 0, i64 %indvars.iv60, i32 2
  %23 = load i32* %22, align 8, !tbaa !22
  %24 = trunc i64 %indvars.iv60 to i32
  %switch.selectcmp = icmp eq i32 %24, 35
  %switch.selectcmp8 = icmp eq i32 %24, 30
  %25 = add nsw i32 %23, 1
  %26 = sext i32 %25 to i64
  %27 = select i1 %switch.selectcmp, i64 6, i64 5
  %28 = select i1 %switch.selectcmp8, i64 4, i64 %27
  br label %29

; <label>:29                                      ; preds = %.lr.ph, %.loopexit
  %nnextconstr.133 = phi i32 [ %nnextconstr.051, %.lr.ph ], [ %nnextconstr.4, %.loopexit ]
  %nprevconstr.132 = phi i32 [ %nprevconstr.050, %.lr.ph ], [ %nprevconstr.4, %.loopexit ]
  %nnextdum.131 = phi i32 [ %nnextdum.049, %.lr.ph ], [ %nnextdum.3, %.loopexit ]
  %nprevdum.130 = phi i32 [ %nprevdum.048, %.lr.ph ], [ %nprevdum.3, %.loopexit ]
  %idxnextconstr.129 = phi i32* [ %idxnextconstr.047, %.lr.ph ], [ %idxnextconstr.5, %.loopexit ]
  %idxprevconstr.128 = phi i32* [ %idxprevconstr.046, %.lr.ph ], [ %idxprevconstr.5, %.loopexit ]
  %idxnextdum.127 = phi i32* [ %idxnextdum.045, %.lr.ph ], [ %idxnextdum.4, %.loopexit ]
  %idxprevdum.126 = phi i32* [ %idxprevdum.044, %.lr.ph ], [ %idxprevdum.4, %.loopexit ]
  %ia.024 = phi i32* [ %21, %.lr.ph ], [ %175, %.loopexit ]
  %found.123 = phi i32 [ %found.043, %.lr.ph ], [ %found.8, %.loopexit ]
  %i.022 = phi i32 [ 0, %.lr.ph ], [ %174, %.loopexit ]
  %30 = getelementptr inbounds i32* %ia.024, i64 1
  %31 = load i32* %30, align 4, !tbaa !14
  br label %32

; <label>:32                                      ; preds = %29, %32
  %indvars.iv = phi i64 [ 2, %29 ], [ %indvars.iv.next, %32 ]
  %minidx.013 = phi i32 [ %31, %29 ], [ %.minidx.0, %32 ]
  %33 = getelementptr inbounds i32* %ia.024, i64 %indvars.iv
  %34 = load i32* %33, align 4, !tbaa !14
  %35 = icmp slt i32 %34, %minidx.013
  %.minidx.0 = select i1 %35, i32 %34, i32 %minidx.013
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %36 = icmp slt i64 %indvars.iv.next, %28
  br i1 %36, label %32, label %.preheader

.preheader:                                       ; preds = %32, %.preheader
  %indvars.iv52 = phi i64 [ %indvars.iv.next53, %.preheader ], [ 0, %32 ]
  %37 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 8, i64 %indvars.iv52
  %38 = load i32* %37, align 4, !tbaa !14
  %39 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 7, i64 %indvars.iv52
  %40 = load i32* %39, align 4, !tbaa !14
  %41 = add nsw i32 %40, %38
  %42 = icmp slt i32 %.minidx.0, %41
  %indvars.iv.next53 = add nuw i64 %indvars.iv52, 1
  br i1 %42, label %43, label %.preheader

; <label>:43                                      ; preds = %.preheader
  %44 = trunc i64 %indvars.iv52 to i32
  %45 = load i32* %9, align 4, !tbaa !23
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %111

; <label>:47                                      ; preds = %43
  %sext = shl i64 %indvars.iv52, 32
  %48 = ashr exact i64 %sext, 32
  %49 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 8, i64 %48
  %50 = load i32* %49, align 4, !tbaa !14
  %51 = icmp slt i32 %31, %50
  br i1 %51, label %57, label %52

; <label>:52                                      ; preds = %47
  %53 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 7, i64 %48
  %54 = load i32* %53, align 4, !tbaa !14
  %55 = add nsw i32 %54, %50
  %56 = icmp slt i32 %31, %55
  br i1 %56, label %72, label %57

; <label>:57                                      ; preds = %52, %47
  %58 = srem i32 %nnextdum.131, 100
  %59 = icmp eq i32 %58, 0
  %60 = icmp sgt i32 %nnextdum.131, 0
  %or.cond = and i1 %60, %59
  br i1 %or.cond, label %61, label %67

; <label>:61                                      ; preds = %57
  %62 = bitcast i32* %idxnextdum.127 to i8*
  %63 = shl i32 %nnextdum.131, 2
  %64 = add i32 %63, 400
  %65 = tail call i8* @save_realloc(i8* getelementptr inbounds ([11 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([68 x i8]* @.str1, i64 0, i64 0), i32 131, i8* %62, i32 %64) #4
  %66 = bitcast i8* %65 to i32*
  %.pre63 = load i32* %30, align 4, !tbaa !14
  br label %67

; <label>:67                                      ; preds = %61, %57
  %68 = phi i32 [ %.pre63, %61 ], [ %31, %57 ]
  %idxnextdum.2 = phi i32* [ %66, %61 ], [ %idxnextdum.127, %57 ]
  %69 = add nsw i32 %nnextdum.131, 1
  %70 = sext i32 %nnextdum.131 to i64
  %71 = getelementptr inbounds i32* %idxnextdum.2, i64 %70
  store i32 %68, i32* %71, align 4, !tbaa !14
  br label %72

; <label>:72                                      ; preds = %52, %67
  %found.2 = phi i32 [ 1, %67 ], [ %found.123, %52 ]
  %idxnextdum.3 = phi i32* [ %idxnextdum.2, %67 ], [ %idxnextdum.127, %52 ]
  %nnextdum.2 = phi i32 [ %69, %67 ], [ %nnextdum.131, %52 ]
  br label %73

; <label>:73                                      ; preds = %72, %109
  %indvars.iv58 = phi i64 [ 2, %72 ], [ %indvars.iv.next59, %109 ]
  %nnextconstr.221 = phi i32 [ %nnextconstr.133, %72 ], [ %nnextconstr.3, %109 ]
  %idxnextconstr.220 = phi i32* [ %idxnextconstr.129, %72 ], [ %idxnextconstr.4, %109 ]
  %found.319 = phi i32 [ %found.2, %72 ], [ %found.4, %109 ]
  %74 = getelementptr inbounds i32* %ia.024, i64 %indvars.iv58
  %75 = load i32* %74, align 4, !tbaa !14
  br label %76

; <label>:76                                      ; preds = %76, %73
  %indvars.iv56 = phi i64 [ %indvars.iv.next57, %76 ], [ 0, %73 ]
  %77 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 8, i64 %indvars.iv56
  %78 = load i32* %77, align 4, !tbaa !14
  %79 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 7, i64 %indvars.iv56
  %80 = load i32* %79, align 4, !tbaa !14
  %81 = add nsw i32 %80, %78
  %82 = icmp slt i32 %75, %81
  %indvars.iv.next57 = add nuw i64 %indvars.iv56, 1
  br i1 %82, label %83, label %76

; <label>:83                                      ; preds = %76
  %84 = trunc i64 %indvars.iv56 to i32
  %85 = load i32* %9, align 4, !tbaa !23
  %86 = add nsw i32 %85, 1
  %87 = icmp sgt i32 %84, %86
  br i1 %87, label %88, label %90

; <label>:88                                      ; preds = %83
  %89 = load i32* %30, align 4, !tbaa !14
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([280 x i8]* @.str6, i64 0, i64 0), i32 %89) #4
  br label %109

; <label>:90                                      ; preds = %83
  %91 = load i32* %10, align 4, !tbaa !25
  %92 = srem i32 %86, %91
  %93 = icmp eq i32 %84, %92
  br i1 %93, label %94, label %109

; <label>:94                                      ; preds = %90
  %95 = srem i32 %nnextconstr.221, 100
  %96 = icmp eq i32 %95, 0
  %97 = icmp sgt i32 %nnextconstr.221, 0
  %or.cond3 = and i1 %97, %96
  br i1 %or.cond3, label %98, label %104

; <label>:98                                      ; preds = %94
  %99 = bitcast i32* %idxnextconstr.220 to i8*
  %100 = shl i32 %nnextconstr.221, 2
  %101 = add i32 %100, 400
  %102 = tail call i8* @save_realloc(i8* getelementptr inbounds ([14 x i8]* @.str5, i64 0, i64 0), i8* getelementptr inbounds ([68 x i8]* @.str1, i64 0, i64 0), i32 151, i8* %99, i32 %101) #4
  %103 = bitcast i8* %102 to i32*
  %.pre64 = load i32* %74, align 4, !tbaa !14
  br label %104

; <label>:104                                     ; preds = %98, %94
  %105 = phi i32 [ %.pre64, %98 ], [ %75, %94 ]
  %idxnextconstr.3 = phi i32* [ %103, %98 ], [ %idxnextconstr.220, %94 ]
  %106 = add nsw i32 %nnextconstr.221, 1
  %107 = sext i32 %nnextconstr.221 to i64
  %108 = getelementptr inbounds i32* %idxnextconstr.3, i64 %107
  store i32 %105, i32* %108, align 4, !tbaa !14
  br label %109

; <label>:109                                     ; preds = %88, %104, %90
  %found.4 = phi i32 [ %found.319, %88 ], [ 1, %104 ], [ %found.319, %90 ]
  %idxnextconstr.4 = phi i32* [ %idxnextconstr.220, %88 ], [ %idxnextconstr.3, %104 ], [ %idxnextconstr.220, %90 ]
  %nnextconstr.3 = phi i32 [ %nnextconstr.221, %88 ], [ %106, %104 ], [ %nnextconstr.221, %90 ]
  %indvars.iv.next59 = add nuw nsw i64 %indvars.iv58, 1
  %110 = icmp slt i64 %indvars.iv.next59, %28
  br i1 %110, label %73, label %.loopexit

; <label>:111                                     ; preds = %43
  %112 = add nsw i32 %45, -1
  %113 = load i32* %10, align 4, !tbaa !25
  %114 = add nsw i32 %112, %113
  %115 = srem i32 %114, %113
  %116 = icmp eq i32 %44, %115
  br i1 %116, label %117, label %.loopexit

; <label>:117                                     ; preds = %111
  %118 = sext i32 %45 to i64
  %119 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 8, i64 %118
  %120 = load i32* %119, align 4, !tbaa !14
  %121 = icmp slt i32 %31, %120
  br i1 %121, label %142, label %122

; <label>:122                                     ; preds = %117
  %123 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 7, i64 %118
  %124 = load i32* %123, align 4, !tbaa !14
  %125 = add nsw i32 %124, %120
  %126 = icmp slt i32 %31, %125
  br i1 %126, label %127, label %142

; <label>:127                                     ; preds = %122
  %128 = srem i32 %nprevdum.130, 100
  %129 = icmp eq i32 %128, 0
  %130 = icmp sgt i32 %nprevdum.130, 0
  %or.cond5 = and i1 %130, %129
  br i1 %or.cond5, label %131, label %137

; <label>:131                                     ; preds = %127
  %132 = bitcast i32* %idxprevdum.126 to i8*
  %133 = shl i32 %nprevdum.130, 2
  %134 = add i32 %133, 400
  %135 = tail call i8* @save_realloc(i8* getelementptr inbounds ([11 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([68 x i8]* @.str1, i64 0, i64 0), i32 161, i8* %132, i32 %134) #4
  %136 = bitcast i8* %135 to i32*
  %.pre = load i32* %30, align 4, !tbaa !14
  br label %137

; <label>:137                                     ; preds = %131, %127
  %138 = phi i32 [ %.pre, %131 ], [ %31, %127 ]
  %idxprevdum.2 = phi i32* [ %136, %131 ], [ %idxprevdum.126, %127 ]
  %139 = add nsw i32 %nprevdum.130, 1
  %140 = sext i32 %nprevdum.130 to i64
  %141 = getelementptr inbounds i32* %idxprevdum.2, i64 %140
  store i32 %138, i32* %141, align 4, !tbaa !14
  br label %142

; <label>:142                                     ; preds = %117, %137, %122
  %found.5 = phi i32 [ 1, %137 ], [ %found.123, %122 ], [ %found.123, %117 ]
  %idxprevdum.3 = phi i32* [ %idxprevdum.2, %137 ], [ %idxprevdum.126, %122 ], [ %idxprevdum.126, %117 ]
  %nprevdum.2 = phi i32 [ %139, %137 ], [ %nprevdum.130, %122 ], [ %nprevdum.130, %117 ]
  br label %143

; <label>:143                                     ; preds = %142, %172
  %indvars.iv54 = phi i64 [ 2, %142 ], [ %indvars.iv.next55, %172 ]
  %nprevconstr.217 = phi i32 [ %nprevconstr.132, %142 ], [ %nprevconstr.3, %172 ]
  %idxprevconstr.216 = phi i32* [ %idxprevconstr.128, %142 ], [ %idxprevconstr.4, %172 ]
  %found.615 = phi i32 [ %found.5, %142 ], [ %found.7, %172 ]
  %144 = getelementptr inbounds i32* %ia.024, i64 %indvars.iv54
  %145 = load i32* %144, align 4, !tbaa !14
  %146 = load i32* %9, align 4, !tbaa !23
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 8, i64 %147
  %149 = load i32* %148, align 4, !tbaa !14
  %150 = icmp slt i32 %145, %149
  br i1 %150, label %172, label %151

; <label>:151                                     ; preds = %143
  %152 = load i32* %30, align 4, !tbaa !14
  %153 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 7, i64 %147
  %154 = load i32* %153, align 4, !tbaa !14
  %155 = add nsw i32 %154, %149
  %156 = icmp slt i32 %152, %155
  br i1 %156, label %157, label %172

; <label>:157                                     ; preds = %151
  %158 = srem i32 %nprevconstr.217, 100
  %159 = icmp eq i32 %158, 0
  %160 = icmp sgt i32 %nprevconstr.217, 0
  %or.cond7 = and i1 %160, %159
  br i1 %or.cond7, label %161, label %167

; <label>:161                                     ; preds = %157
  %162 = bitcast i32* %idxprevconstr.216 to i8*
  %163 = shl i32 %nprevconstr.217, 2
  %164 = add i32 %163, 400
  %165 = tail call i8* @save_realloc(i8* getelementptr inbounds ([14 x i8]* @.str4, i64 0, i64 0), i8* getelementptr inbounds ([68 x i8]* @.str1, i64 0, i64 0), i32 170, i8* %162, i32 %164) #4
  %166 = bitcast i8* %165 to i32*
  %.pre62 = load i32* %144, align 4, !tbaa !14
  br label %167

; <label>:167                                     ; preds = %161, %157
  %168 = phi i32 [ %.pre62, %161 ], [ %145, %157 ]
  %idxprevconstr.3 = phi i32* [ %166, %161 ], [ %idxprevconstr.216, %157 ]
  %169 = add nsw i32 %nprevconstr.217, 1
  %170 = sext i32 %nprevconstr.217 to i64
  %171 = getelementptr inbounds i32* %idxprevconstr.3, i64 %170
  store i32 %168, i32* %171, align 4, !tbaa !14
  br label %172

; <label>:172                                     ; preds = %143, %151, %167
  %found.7 = phi i32 [ 1, %167 ], [ %found.615, %151 ], [ %found.615, %143 ]
  %idxprevconstr.4 = phi i32* [ %idxprevconstr.3, %167 ], [ %idxprevconstr.216, %151 ], [ %idxprevconstr.216, %143 ]
  %nprevconstr.3 = phi i32 [ %169, %167 ], [ %nprevconstr.217, %151 ], [ %nprevconstr.217, %143 ]
  %indvars.iv.next55 = add nuw nsw i64 %indvars.iv54, 1
  %173 = icmp slt i64 %indvars.iv.next55, %28
  br i1 %173, label %143, label %.loopexit

.loopexit:                                        ; preds = %172, %109, %111
  %found.8 = phi i32 [ %found.123, %111 ], [ %found.4, %109 ], [ %found.7, %172 ]
  %idxprevdum.4 = phi i32* [ %idxprevdum.126, %111 ], [ %idxprevdum.126, %109 ], [ %idxprevdum.3, %172 ]
  %idxnextdum.4 = phi i32* [ %idxnextdum.127, %111 ], [ %idxnextdum.3, %109 ], [ %idxnextdum.127, %172 ]
  %idxprevconstr.5 = phi i32* [ %idxprevconstr.128, %111 ], [ %idxprevconstr.128, %109 ], [ %idxprevconstr.4, %172 ]
  %idxnextconstr.5 = phi i32* [ %idxnextconstr.129, %111 ], [ %idxnextconstr.4, %109 ], [ %idxnextconstr.129, %172 ]
  %nprevdum.3 = phi i32 [ %nprevdum.130, %111 ], [ %nprevdum.130, %109 ], [ %nprevdum.2, %172 ]
  %nnextdum.3 = phi i32 [ %nnextdum.131, %111 ], [ %nnextdum.2, %109 ], [ %nnextdum.131, %172 ]
  %nprevconstr.4 = phi i32 [ %nprevconstr.132, %111 ], [ %nprevconstr.132, %109 ], [ %nprevconstr.3, %172 ]
  %nnextconstr.4 = phi i32 [ %nnextconstr.133, %111 ], [ %nnextconstr.3, %109 ], [ %nnextconstr.133, %172 ]
  %174 = add nsw i32 %i.022, %25
  %175 = getelementptr inbounds i32* %ia.024, i64 %26
  %176 = icmp slt i32 %174, %18
  br i1 %176, label %29, label %.loopexit11

.loopexit11:                                      ; preds = %.loopexit, %16, %11
  %found.9 = phi i32 [ %found.043, %11 ], [ %found.043, %16 ], [ %found.8, %.loopexit ]
  %idxprevdum.5 = phi i32* [ %idxprevdum.044, %11 ], [ %idxprevdum.044, %16 ], [ %idxprevdum.4, %.loopexit ]
  %idxnextdum.5 = phi i32* [ %idxnextdum.045, %11 ], [ %idxnextdum.045, %16 ], [ %idxnextdum.4, %.loopexit ]
  %idxprevconstr.6 = phi i32* [ %idxprevconstr.046, %11 ], [ %idxprevconstr.046, %16 ], [ %idxprevconstr.5, %.loopexit ]
  %idxnextconstr.6 = phi i32* [ %idxnextconstr.047, %11 ], [ %idxnextconstr.047, %16 ], [ %idxnextconstr.5, %.loopexit ]
  %nprevdum.4 = phi i32 [ %nprevdum.048, %11 ], [ %nprevdum.048, %16 ], [ %nprevdum.3, %.loopexit ]
  %nnextdum.4 = phi i32 [ %nnextdum.049, %11 ], [ %nnextdum.049, %16 ], [ %nnextdum.3, %.loopexit ]
  %nprevconstr.5 = phi i32 [ %nprevconstr.050, %11 ], [ %nprevconstr.050, %16 ], [ %nprevconstr.4, %.loopexit ]
  %nnextconstr.5 = phi i32 [ %nnextconstr.051, %11 ], [ %nnextconstr.051, %16 ], [ %nnextconstr.4, %.loopexit ]
  %indvars.iv.next61 = add nuw nsw i64 %indvars.iv60, 1
  %exitcond = icmp eq i64 %indvars.iv.next61, 44
  br i1 %exitcond, label %177, label %11

; <label>:177                                     ; preds = %.loopexit11
  %178 = getelementptr inbounds %struct.t_comm_dummies* %dummycomm, i64 0, i32 0
  %179 = getelementptr inbounds %struct.t_comm_dummies* %dummycomm, i64 0, i32 2
  tail call void @create_dummylist(i32 %nprevdum.4, i32* %idxprevdum.5, i32* %178, i32** %179) #5
  %180 = getelementptr inbounds %struct.t_comm_dummies* %dummycomm, i64 0, i32 1
  %181 = getelementptr inbounds %struct.t_comm_dummies* %dummycomm, i64 0, i32 3
  tail call void @create_dummylist(i32 %nnextdum.4, i32* %idxnextdum.5, i32* %180, i32** %181) #5
  %182 = getelementptr inbounds %struct.t_comm_dummies* %dummycomm, i64 0, i32 4
  %183 = getelementptr inbounds %struct.t_comm_dummies* %dummycomm, i64 0, i32 6
  tail call void @create_dummylist(i32 %nprevconstr.5, i32* %idxprevconstr.6, i32* %182, i32** %183) #5
  %184 = getelementptr inbounds %struct.t_comm_dummies* %dummycomm, i64 0, i32 5
  %185 = getelementptr inbounds %struct.t_comm_dummies* %dummycomm, i64 0, i32 7
  tail call void @create_dummylist(i32 %nnextconstr.5, i32* %idxnextconstr.6, i32* %184, i32** %185) #5
  %186 = bitcast i32* %idxprevdum.5 to i8*
  tail call void @save_free(i8* getelementptr inbounds ([11 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([68 x i8]* @.str1, i64 0, i64 0), i32 192, i8* %186) #4
  %187 = bitcast i32* %idxnextdum.5 to i8*
  tail call void @save_free(i8* getelementptr inbounds ([11 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([68 x i8]* @.str1, i64 0, i64 0), i32 193, i8* %187) #4
  %188 = bitcast i32* %idxprevconstr.6 to i8*
  tail call void @save_free(i8* getelementptr inbounds ([14 x i8]* @.str4, i64 0, i64 0), i8* getelementptr inbounds ([68 x i8]* @.str1, i64 0, i64 0), i32 194, i8* %188) #4
  %189 = bitcast i32* %idxnextconstr.6 to i8*
  tail call void @save_free(i8* getelementptr inbounds ([14 x i8]* @.str5, i64 0, i64 0), i8* getelementptr inbounds ([68 x i8]* @.str1, i64 0, i64 0), i32 195, i8* %189) #4
  ret i32 %found.9
}

; Function Attrs: optsize
declare i8* @save_realloc(i8*, i8*, i32, i8*, i32) #1

; Function Attrs: optsize
declare void @fatal_error(i32, i8*, ...) #1

; Function Attrs: optsize
declare void @save_free(i8*, i8*, i32, i8*) #1

; Function Attrs: nounwind optsize ssp uwtable
define void @mdsplit_top(%struct.__sFILE* nocapture readnone %log, %struct.t_topology* nocapture %top, %struct.t_commrec* nocapture readonly %cr, %struct.t_nsborder* nocapture readonly %nsb, i32* nocapture %bParallelDummies, %struct.t_comm_dummies* nocapture %dummycomm) #3 {
  %1 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 1
  %2 = load i32* %1, align 4, !tbaa !25
  %3 = icmp slt i32 %2, 2
  br i1 %3, label %split_idef.exit, label %4

; <label>:4                                       ; preds = %0
  %5 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 1
  %6 = tail call i32 @setup_parallel_dummies(%struct.t_idef* %5, %struct.t_commrec* %cr, %struct.t_nsborder* %nsb, %struct.t_comm_dummies* %dummycomm) #5
  store i32 %6, i32* %bParallelDummies, align 4, !tbaa !14
  %7 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 0
  br label %8

; <label>:8                                       ; preds = %split_ilist.exit.i, %4
  %indvars.iv.i = phi i64 [ 0, %4 ], [ %indvars.iv.next.i, %split_ilist.exit.i ]
  %9 = load i32* %7, align 4, !tbaa !23
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %16, label %11

; <label>:11                                      ; preds = %8
  %12 = add nsw i32 %9, -1
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 1, i32 5, i64 %indvars.iv.i, i32 1, i64 %13
  %15 = load i32* %14, align 4, !tbaa !14
  br label %16

; <label>:16                                      ; preds = %11, %8
  %start.0.i.i = phi i32 [ %15, %11 ], [ 0, %8 ]
  %17 = sext i32 %9 to i64
  %18 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 1, i32 5, i64 %indvars.iv.i, i32 1, i64 %17
  %19 = load i32* %18, align 4, !tbaa !14
  %20 = sub nsw i32 %19, %start.0.i.i
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %.thread.i.i, label %23

.thread.i.i:                                      ; preds = %16
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([113 x i8]* @.str7, i64 0, i64 0), i32 %20, i32 %9) #4
  %22 = tail call i8* @save_calloc(i8* getelementptr inbounds ([3 x i8]* @.str8, i64 0, i64 0), i8* getelementptr inbounds ([68 x i8]* @.str1, i64 0, i64 0), i32 222, i32 %20, i32 4) #4
  br label %._crit_edge6.i.i

; <label>:23                                      ; preds = %16
  %24 = tail call i8* @save_calloc(i8* getelementptr inbounds ([3 x i8]* @.str8, i64 0, i64 0), i8* getelementptr inbounds ([68 x i8]* @.str1, i64 0, i64 0), i32 222, i32 %20, i32 4) #4
  %25 = bitcast i8* %24 to i32*
  %26 = icmp sgt i32 %20, 0
  br i1 %26, label %.lr.ph.i.i, label %._crit_edge6.i.i

._crit_edge6.i.i:                                 ; preds = %23, %.thread.i.i
  %27 = phi i8* [ %22, %.thread.i.i ], [ %24, %23 ]
  %.phi.trans.insert.i.i = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 1, i32 5, i64 %indvars.iv.i, i32 2
  %.phi.trans.insert7.i.i = bitcast i32** %.phi.trans.insert.i.i to i8**
  %.pre.i.i = load i8** %.phi.trans.insert7.i.i, align 8, !tbaa !21
  br label %overflow.checked

.lr.ph.i.i:                                       ; preds = %23
  %28 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 1, i32 5, i64 %indvars.iv.i, i32 2
  %29 = load i32** %28, align 8, !tbaa !21
  %30 = sext i32 %start.0.i.i to i64
  %31 = add i32 %19, -1
  %32 = sub i32 %31, %start.0.i.i
  br label %33

; <label>:33                                      ; preds = %33, %.lr.ph.i.i
  %indvars.iv3.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next4.i.i, %33 ]
  %34 = add nsw i64 %indvars.iv3.i.i, %30
  %35 = getelementptr inbounds i32* %29, i64 %34
  %36 = load i32* %35, align 4, !tbaa !14
  %37 = getelementptr inbounds i32* %25, i64 %indvars.iv3.i.i
  store i32 %36, i32* %37, align 4, !tbaa !14
  %indvars.iv.next4.i.i = add nuw nsw i64 %indvars.iv3.i.i, 1
  %lftr.wideiv = trunc i64 %indvars.iv3.i.i to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %32
  br i1 %exitcond, label %._crit_edge.i.i, label %33

._crit_edge.i.i:                                  ; preds = %33
  %38 = bitcast i32* %29 to i8*
  %.pre8.i.i = bitcast i32** %28 to i8**
  br label %overflow.checked

overflow.checked:                                 ; preds = %._crit_edge.i.i, %._crit_edge6.i.i
  %39 = phi i8* [ %27, %._crit_edge6.i.i ], [ %24, %._crit_edge.i.i ]
  %.pre-phi9.i.i = phi i8** [ %.phi.trans.insert7.i.i, %._crit_edge6.i.i ], [ %.pre8.i.i, %._crit_edge.i.i ]
  %40 = phi i8* [ %.pre.i.i, %._crit_edge6.i.i ], [ %38, %._crit_edge.i.i ]
  tail call void @save_free(i8* getelementptr inbounds ([11 x i8]* @.str9, i64 0, i64 0), i8* getelementptr inbounds ([68 x i8]* @.str1, i64 0, i64 0), i32 227, i8* %40) #4
  store i8* %39, i8** %.pre-phi9.i.i, align 8, !tbaa !21
  %broadcast.splatinsert1 = insertelement <4 x i32> undef, i32 %20, i32 0
  %broadcast.splat2 = shufflevector <4 x i32> %broadcast.splatinsert1, <4 x i32> undef, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %overflow.checked
  %index = phi i64 [ 0, %overflow.checked ], [ %index.next, %vector.body ]
  %41 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 1, i32 5, i64 %indvars.iv.i, i32 1, i64 %index
  %42 = bitcast i32* %41 to <4 x i32>*
  store <4 x i32> %broadcast.splat2, <4 x i32>* %42, align 4, !tbaa !14
  %index.next = add i64 %index, 4
  %43 = icmp eq i64 %index.next, 256
  br i1 %43, label %split_ilist.exit.i, label %vector.body, !llvm.loop !26

split_ilist.exit.i:                               ; preds = %vector.body
  %44 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 1, i32 5, i64 %indvars.iv.i, i32 0
  store i32 %20, i32* %44, align 4, !tbaa !19
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %exitcond2.i = icmp eq i64 %indvars.iv.next.i, 44
  br i1 %exitcond2.i, label %split_idef.exit, label %8

split_idef.exit:                                  ; preds = %split_ilist.exit.i, %0
  ret void
}

attributes #0 = { alwaysinline nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { alwaysinline nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize }
attributes #5 = { optsize }

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
!14 = !{!7, !7, i64 0}
!15 = !{!4, !4, i64 0}
!16 = !{!17, !18, i64 32}
!17 = !{!"", !4, i64 0, !4, i64 8, !7, i64 16, !7, i64 20, !7, i64 24, !18, i64 32, !7, i64 40, !4, i64 48}
!18 = !{!"long", !5, i64 0}
!19 = !{!20, !7, i64 0}
!20 = !{!"", !7, i64 0, !5, i64 4, !4, i64 1032}
!21 = !{!20, !4, i64 1032}
!22 = !{!17, !7, i64 16}
!23 = !{!24, !7, i64 0}
!24 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20}
!25 = !{!24, !7, i64 4}
!26 = distinct !{!26, !27, !28}
!27 = !{!"llvm.loop.vectorize.width", i32 1}
!28 = !{!"llvm.loop.interleave.count", i32 1}
